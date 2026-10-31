// Medieval Wind's screen: a woodcut shawm in a stone court, wind leaving its bell.
//
//   Reed    the double reed's blades lengthen or pinch; held notes make the tip flutter
//   Bore    rings inside the body: more of them, darker, as the bore rings stronger
//   Bell    the bell flares wider and throws more, longer harmonic rays
//   Breath  the gust's edges roughen and loose flecks of air scatter around it
//   Bend    the gust's path wavers; while a note is held the waver travels
//   Crum    the conical body narrows to a cylinder, the bell curls into a crook,
//           a wind cap closes over the reed and the gust turns and shortens
//   Hall    the arches of the court expand and darken
//   Echo    repeated wind strokes trail beside the gust
//
// A note throws a puff from the bell; held notes keep the wind moving. An idle
// screen stays still, and reduced motion shows the end state at once.
#include "display.h"
#include <opxy/q31.hpp>

namespace medievalwind {
namespace {
using opxy::i32;
using opxy::u32;
using namespace opxy::draw;

enum : u32 {
    body_node = 0, bell_node = 1, gust_node = 2, reed_node = 3,
    bar_node = 4,
    cap_node = 12,
    ring_first = 13, ring_count = 14,
    ray_first = 27, ray_count = 9,
    fleck_first = 36, fleck_count = 12,
    echo_first = 48, echo_count = 5,
    arch_first = 53, arch_count = 4,
    puff_node = 57,
};

// Palette entries (panel.svg.fragment, generators/panel.py).
enum : u32 {
    ink = 0, fine_ink = 1, bold_ink = 2, grey_dark = 3, grey = 4, grey_mid = 5, grey_light = 6,
    paper = 7, wood_pale = 8, wood_dark = 9, wood_mid = 10, wind = 11, wind_bright = 12,
    cap_dark = 13, white = 14, black = 15,
};

// Sine and turns, kept file-local (static): the native build defines an inline SDK
// helper kept out of line once per file that uses it, so another machine in the
// same firmware using opxy::draw::sine could fail to link (SDK docs/toolchain.md).
// Same table and arithmetic as opxy::draw::sine.
const opxy::u16 sine_table[91] = {
    0, 18, 36, 54, 71, 89, 107, 125, 143, 160, 178, 195, 213, 230, 248, 265, 282, 299, 316, 333, 350, 367, 384,
    400, 416, 433, 449, 465, 481, 496, 512, 527, 543, 558, 573, 587, 602, 616, 630, 644, 658, 672, 685, 698, 711,
    724, 737, 749, 761, 773, 784, 796, 807, 818, 828, 839, 849, 859, 868, 878, 887, 896, 904, 912, 920, 928, 935,
    943, 949, 956, 962, 968, 974, 979, 984, 989, 994, 998, 1002, 1005, 1008, 1011, 1014, 1016, 1018, 1020, 1022,
    1023, 1023, 1024, 1024};
static inline i32 sin10(i32 tenths) {        // sin of tenths of a degree, Q10
    tenths %= 3600;
    if (tenths < 0) tenths += 3600;
    const i32 sign = tenths >= 1800 ? -1 : 1;
    tenths %= 1800;
    if (tenths > 900) tenths = 1800 - tenths;
    const i32 degree = tenths / 10, part = tenths % 10;
    const i32 low = sine_table[degree], high = sine_table[degree < 90 ? degree + 1 : 90];
    return sign * (low + (high - low) * part / 10);
}
static inline Turn turn_to(i32 tenths) {
    const Turn t = {sin10(tenths + 900), sin10(tenths)};
    return t;
}

const i32 expired = 4096;                        // 4 s, Q10: no pulse
const i32 centre_y = 112;                        // the instrument's axis, pixels
const i32 body_left = 48, body_length = 242;     // body from the pirouette to the bell joint
const i32 bell_x0 = 290;                         // bell joint
const i32 reed_x0 = 40;                          // reed staple
const i32 arch_x = 240, arch_y = 203;            // arches spring from the floor centre

inline i32 fraction(i32 value) { return clamp(value, 0, opxy::q31::maximum) >> 21; }  // Q31 -> 0..1023
inline i32 lerp(i32 a, i32 b, i32 t) { return a + ((b - a) * t >> 10); }             // t 0..1024
// Fading in through the greys instead of appearing at once (SDK docs/ux.md,
// Screens): t from 0 (just appeared, faintest) to 1024 (full). The ramp runs
// grey_light, grey_mid, grey, grey_dark, then the element's own shade.
inline u32 fade(i32 t, u32 full) {
    static_assert(grey_light == 6 && grey_dark == 3, "palette order: greys from faint to bright");
    if (t >= 1024) return full;
    const u32 step = static_cast<u32>(clamp(t, 0, 1023) >> 8);               // 0..3
    return grey_light - step;
}
// How far an element is through its fade-in window, 0..1024.
inline i32 through(i32 level, i32 start, i32 width) { return clamp((level - start) * 1024 / width, 0, 1024); }

inline u32 hash(u32 k) { return (k * 2654435761u) >> 24; }                           // 0..255

// Body half-width at t (Q10 0..1) for a Crum fraction c, Q10 pixels:
// a cone from 3 to 10.5 px (shawm) or a cylinder from 4.6 to 5.2 px (crumhorn).
inline i32 body_width(i32 t, i32 c) {
    return lerp(3 * unit + (t * 15 >> 1), 4710 + (t * 614 >> 10), c);
}

// The bell's centreline: Crum bends it by up to 95 degrees and lengthens it
// from 54 to 60 px. Returns the point and heading at step i of 31.
struct Centre { i32 x, y, heading; };
inline Centre bell_centre(u32 steps, i32 c) {
    const i32 turn = c * 950 >> 10;                       // tenths of a degree at the mouth
    const i32 step = lerp(54 * unit, 60 * unit, c) / 31;  // Q10 px per step
    Centre at = {0, 0, 0};
    for (u32 i = 0; i < steps; ++i) {
        const i32 heading = turn * static_cast<i32>(2 * i + 1) / 62;
        at.x += step * sin10(heading + 900) >> 10;
        at.y += step * sin10(heading) >> 10;
    }
    at.heading = turn * static_cast<i32>(steps) / 31;
    return at;
}

// Bell half-width at s (Q10): the shawm flares by 4..19 px as s^3, the crumhorn's
// crook stays narrow with a small lip.
inline i32 bell_width(i32 s, i32 c, i32 b) {
    const i32 s3 = (((s * s) >> 10) * s) >> 10;
    const i32 flare = 4 * unit + b * 15;                   // Bell
    const i32 shawm = 10752 + (flare * s3 >> 10);
    const i32 s4 = (s3 * s) >> 10;
    const i32 crook = 5325 + (1229 * s4 >> 10);
    return lerp(shawm, crook, c);
}

inline void draw_body(Frame::path_type& path, i32 c) {
    const u32 key = 1u + static_cast<u32>(c >> 4);
    if (path.key == key) return;
    const i32 q = (c >> 4) << 4;
    // Drawn at scale 2 about the body's centre: local units are half pixels.
    for (u32 i = 0; i < 32; ++i) {
        const i32 t = static_cast<i32>(i) * 1024 / 31;
        const i32 x = (body_length * t) / 2 - body_length * unit / 4;   // -60.5 .. 60.5 px local
        const i32 w = body_width(t, q) / 2;
        path.points[i].x = x;
        path.points[i].y = -w;
        path.points[63 - i].x = x;
        path.points[63 - i].y = w;
    }
    path.key = key;
}

inline void draw_bell(Frame::path_type& path, i32 c, i32 b) {
    const u32 key = 1u + static_cast<u32>(c >> 4) + 64u * static_cast<u32>(b >> 4);
    if (path.key == key) return;
    const i32 qc = (c >> 4) << 4, qb = (b >> 4) << 4;
    for (u32 i = 0; i < 32; ++i) {
        const Centre at = bell_centre(i, qc);
        const i32 s = static_cast<i32>(i) * 1024 / 31;
        const i32 w = bell_width(s, qc, qb);
        const i32 nx = -sin10(at.heading), ny = sin10(at.heading + 900);   // the left-hand normal
        path.points[i].x = at.x - (w * nx >> 10);
        path.points[i].y = at.y - (w * ny >> 10);
        path.points[63 - i].x = at.x + (w * nx >> 10);
        path.points[63 - i].y = at.y + (w * ny >> 10);
    }
    path.key = key;
}

// The reed: a staple and two blades. Reed shortens the blades and closes the
// tip; the crumhorn pinches it a little more; held notes flutter the tip.
inline void draw_reed(Frame::path_type& path, i32 r, i32 c, i32 flutter_step) {
    const u32 key = 1u + static_cast<u32>(r >> 4) + 64u * static_cast<u32>(c >> 4) + 4096u * static_cast<u32>(flutter_step);
    if (path.key == key) return;
    const i32 qr = (r >> 4) << 4, qc = (c >> 4) << 4;
    // Reed is the most audible control: its drawing moves the most of the small parts.
    const i32 blade = 18 * unit - qr * 9;                                 // 18 .. 9 px
    const i32 tip = 5632 - qr * 46 / 10 - (qc * 8 / 10) + sin10(flutter_step * 225) / 2;  // ~5.5 .. 0.8 px
    for (u32 i = 0; i < 32; ++i) {
        const i32 s = static_cast<i32>(i) * 1024 / 31;
        i32 x, w;
        if (i < 6) {                                                     // the staple
            x = -(8 * unit) * static_cast<i32>(i) / 6;
            w = 1434;
        } else {                                                         // the blades widen to the tip
            const i32 u = (s - 203) * 1024 / 821;
            x = -8 * unit - (blade * u >> 10);
            w = 1843 + ((clamp(tip, 820, 6 * unit) - 1843) * u >> 10);
            if (i == 31) w -= 410;                                       // rounded tip
        }
        path.points[i].x = x;
        path.points[i].y = -w;
        path.points[63 - i].x = x - (i == 31 ? 300 : 0);
        path.points[63 - i].y = w;
    }
    path.key = key;
}

// The gust leaving the bell, drawn along +x from the mouth (local -60..60 px).
// Bend makes it waver, Breath roughens its edges, Crum shortens it (by scale).
struct Gust { i32 b, w, breath, phase, curl; };
inline i32 gust_half(i32 s, const Gust& g) {
    return ((g.w * (1024 - s)) >> 10) + ((2560 + g.breath * 2) * s >> 10);
}
inline i32 gust_centre(i32 s, const Gust& g) {
    const i32 amplitude = 1229 + g.b * 10;                                // 1.2 .. 11 px
    const i32 wave = (amplitude * sin10(g.phase + (s * 5400 >> 10)) >> 10) * s >> 10;
    const i32 s4 = (((s * s) >> 10) * ((s * s) >> 10)) >> 10;
    return wave - (g.curl * s4 >> 10);
}
inline void draw_gust(Frame::path_type& path, const Gust& g, u32 key) {
    if (path.key == key) return;
    for (u32 i = 0; i < 32; ++i) {
        const i32 s = static_cast<i32>(i) * 1024 / 31;
        const i32 x = -60 * unit + 120 * s;
        const i32 c = gust_centre(s, g), h = gust_half(s, g);
        // Turbulence: outward only, so the edges never cross.
        const i32 rough = g.breath * 7 / 2 * static_cast<i32>(hash(i * 7 + static_cast<u32>(g.phase / 300) * 131) & 255) >> 8;
        const i32 rough2 = g.breath * 7 / 2 * static_cast<i32>(hash(i * 13 + 5 + static_cast<u32>(g.phase / 300) * 71) & 255) >> 8;
        path.points[i].x = x;
        path.points[i].y = c - h - rough * s / 1024;
        path.points[63 - i].x = x + 200;                                // keeps the two edges' points distinct at the tip
        path.points[63 - i].y = c + h + rough2 * s / 1024;
    }
    path.key = key;
}

// Hall decay in tenths of a second, as engine.cpp's decay gain sets it, for the
// header: 0.7 s at the first touch to 3.0 s at full turn; "off" at zero.
const u32 hall_tenths[9] = {7, 8, 9, 10, 12, 14, 17, 22, 30};
// The bell's rays: their order of appearance (centre first) and where each appears.
const i32 ray_order[9] = {0, -1, 1, -2, 2, -3, 3, -4, 4};
const i32 ray_start[9] = {0, 80, 80, 330, 330, 580, 580, 830, 830};
// The bore rings' fixed places along the body (14 slots), revealed in this order
// so any count spreads evenly and no ring moves when another appears.
const u32 ring_reveal[14] = {4, 9, 1, 12, 6, 2, 11, 7, 0, 13, 5, 10, 3, 8};

inline void hall_caption(char* out, u32 capacity, i32 value) {
    if (value <= 0) { copy(out, capacity, "off"); return; }
    const u32 at = static_cast<u32>(clamp(value, 0, opxy::q31::maximum)) >> 15;   // 0..65535
    const u32 i = at >> 13, part = at & 8191;
    const u32 n = i >= 8 ? hall_tenths[8] : (hall_tenths[i] * (8192 - part) + hall_tenths[i + 1] * part + 4096) >> 13;
    char text[6];
    u32 k = 0;
    text[k++] = static_cast<char>('0' + n / 10);
    text[k++] = '.';
    text[k++] = static_cast<char>('0' + n % 10);
    text[k++] = 's';
    text[k] = 0;
    copy(out, capacity, text);
}

// Inside the vellum (6..474, 42..216), with a margin for the element's size.
inline bool on_vellum(i32 x, i32 y) {
    return x >= 10 * unit && x <= 470 * unit && y >= 46 * unit && y <= 212 * unit;
}

// Screen position of a point given in gust coordinates (u along, v across, Q10 px).
inline void gust_point(const DisplayState& s, i32 u, i32 v, i32& x, i32& y) {
    const i32 c = sin10(s.bell_angle + 900), n = sin10(s.bell_angle);
    x = s.bell_x + ((u * c - v * n) >> 10);
    y = s.bell_y + ((u * n + v * c) >> 10);
}
} // namespace

inline void display_reset(DisplayState& state) {
    state.header.reset();
    state.track = 0;
    state.previous_serial = 0;
    state.initialized = 0;
    state.pulse_age = expired;
    state.flow = 0;
    state.flutter = 0;
    state.drift = 0;
    state.held_time = 0;
    state.bell_x = state.bell_y = 0;
    state.bell_angle = 0;
}

// Only screen work: no audio reads, device calls, allocation or wall-clock API.
inline void display(DisplayState& state, const opxy::draw::Input& input, Frame& frame) {
    const char* const titles[8] = {"Reed", "Bore", "Bell", "Breath", "Bend", "Crum", "Hall", "Echo"};
    char values[8][header_capacity] = {};
    for (u32 i = 0; i < 8; ++i) header_amount(values[i], header_capacity, input.slots[i]);
    hall_caption(values[6], header_capacity, input.slots[6]);
    const opxy::u8 pages[2][4] = {{0, 1, 2, 3}, {4, 5, 6, 7}};
    page_header(state.header, input, frame, titles, values, bar_node, pages);

    const i32 reed = fraction(input.slots[0]), bore = fraction(input.slots[1]);
    const i32 bell = fraction(input.slots[2]), breath = fraction(input.slots[3]);
    const i32 bend = fraction(input.slots[4]), crum = fraction(input.slots[5]);
    const i32 hall = fraction(input.slots[6]), echo = fraction(input.slots[7]);
    const bool still = input.reduced_motion != 0;
    const i32 elapsed = clamp(input.elapsed, 0, 102);   // late frames advance at most 0.1 s

    // Note activity. A reset or track change is a baseline, never a note.
    const bool snapshot = !state.initialized || state.track != input.track;
    if (snapshot || still) {
        state.pulse_age = expired;
    } else {
        state.pulse_age = clamp(state.pulse_age + elapsed, 0, expired);
        if (input.note_serial != state.previous_serial) state.pulse_age = 0;
    }
    state.previous_serial = input.note_serial;
    state.track = input.track;
    state.initialized = 1;
    const bool held = input.held_notes != 0 && input.held_notes <= 128;
    if (held && !still) {
        state.held_time = (state.held_time + elapsed) & 0xfffff;
        state.flow = (state.flow + (elapsed * 450 >> 10)) % 3600;          // 1.25 waves a second
        state.flutter = (state.flutter + (elapsed * 16 * 5 >> 10)) % 16;   // the reed tip, 5 Hz
        state.drift = (state.drift + elapsed * 24) % (108 * unit);         // flecks travel 24 px/s
    }
    const i32 pulse = clamp(1024 - state.pulse_age * 2, 0, 1024);         // fades in 0.5 s
    const i32 flow = still ? 0 : state.flow;
    const i32 flutter = still || !held ? 0 : state.flutter;
    const i32 drift = still ? 0 : state.drift;

    // Crum: the body narrows from a cone to a cylinder, the bell becomes a crook.
    draw_body(frame.paths[body_node], crum);
    const u32 wood = crum < 341 ? wood_pale : crum < 682 ? wood_mid : wood_dark;
    place(frame, body_node, (body_left * unit + body_length * unit / 2), centre_y * unit, 2 * unit, wood, fill_and_stroke);
    draw_bell(frame.paths[bell_node], crum, bell);
    place(frame, bell_node, bell_x0 * unit, centre_y * unit, unit, wood, fill_and_stroke);

    // The bell mouth and its heading (quantized as the outline is).
    const i32 qc = (crum >> 4) << 4, qb = (bell >> 4) << 4;
    const Centre mouth = bell_centre(31, qc);
    state.bell_x = bell_x0 * unit + mouth.x;
    state.bell_y = centre_y * unit + mouth.y;
    state.bell_angle = mouth.heading;
    const i32 mouth_half = bell_width(1024, qc, qb);

    // Reed and the crumhorn's wind cap.
    draw_reed(frame.paths[reed_node], reed, crum, flutter);
    place(frame, reed_node, reed_x0 * unit, centre_y * unit, unit, crum > 700 ? fine_ink : ink, fill_and_stroke);
    // The wind cap grows out of the pirouette as Crum passes 12%, and darkens.
    if (crum < 120) {
        hide(frame, cap_node);
    } else {
        const i32 grow = through(crum, 120, 280);
        place(frame, cap_node, 30 * unit, centre_y * unit, 512 + (grow >> 1) + (crum * 144 >> 11),
              crum < 400 ? wood_pale : crum < 750 ? wood_mid : cap_dark, fill_and_stroke);
    }

    // Bore: rings inside the body, 3 to 14 of them, brighter as the bore rings.
    // Each has a fixed place; a new one fades in rather than appearing.
    const i32 ring_level = 3 * 1024 + bore * 11;                         // rings x 1024
    const u32 ring_full = fade(bore, ink);                               // the whole set brightens with Bore
    for (u32 k = 0; k < ring_count; ++k) {
        const u32 node = ring_first + ring_reveal[k];
        const i32 t = clamp(ring_level - static_cast<i32>(k) * 1024, 0, 1024);
        if (t == 0) { hide(frame, node); continue; }
        const u32 own = fade(t, ring_full);
        const u32 shade = own > ring_full ? own : ring_full;            // the fainter of the two
        const i32 at = (static_cast<i32>(2 * ring_reveal[k] + 1) * 1024) / (2 * ring_count);
        const i32 x = body_left * unit + body_length * at;
        const i32 w = body_width(at, qc);
        place(frame, node, x, centre_y * unit, clamp(w * 82 / 1000, 200, 2 * unit), k < 3 ? ring_full : shade, stroke);
    }

    // Bell: harmonic rays fan from the mouth: more, longer and wider with Bell,
    // shorter on the crumhorn. Each new pair fades in.
    const i32 ray_scale = clamp(((358 + bell * 1178 / 1024) * (1024 - (crum * 460 >> 10))) >> 10, 128, 2 * unit);
    const i32 spread = 90 + (bell * 45 >> 10);
    for (u32 k = 0; k < ray_count; ++k) {
        const u32 node = ray_first + k;
        if (k && bell <= ray_start[k]) { hide(frame, node); continue; }
        const u32 shade = k == 0 ? ink : fade(through(bell, ray_start[k], 200), fine_ink);
        place(frame, node, state.bell_x, state.bell_y, ray_scale, shade, fill_and_stroke);
        turn(frame, node, turn_to(state.bell_angle + ray_order[k] * spread));
    }

    // The gust: from the bell mouth, wavering with Bend, rough with Breath.
    Gust g;
    g.b = (bend >> 4) << 4;
    g.breath = (breath >> 4) << 4;
    g.w = clamp(mouth_half * 820 >> 10, 3 * unit, 24 * unit);
    g.phase = (flow / 30) * 30;
    g.curl = 10 * unit - (qc * 6);
    const u32 gust_key = 1u + static_cast<u32>(g.b >> 4) + (static_cast<u32>(g.breath >> 4) << 6) +
                         (static_cast<u32>(qc >> 4) << 12) + (static_cast<u32>(qb >> 4) << 18) +
                         (static_cast<u32>(g.phase / 30) << 24);
    draw_gust(frame.paths[gust_node], g, gust_key);
    const i32 gust_scale = 1075 - (crum * 614 >> 10);                       // 1.05 .. 0.45: the crook throws a short gust
    {
        i32 x, y;
        gust_point(state, 60 * gust_scale, 0, x, y);
        place(frame, gust_node, x, y, gust_scale, pulse > 400 ? wind_bright : wind, fill_and_stroke);
        turn(frame, gust_node, turn_to(state.bell_angle));
    }

    // Breath: loose flecks of air beside the gust, drifting while notes are held.
    for (u32 k = 0; k < fleck_count; ++k) {
        const u32 node = fleck_first + k;
        const i32 start = static_cast<i32>(k) * 1024 / 12;                // fleck k appears at k/12 of Breath
        if (breath <= start) { hide(frame, node); continue; }
        const u32 h = hash(k + 17);
        const i32 along = ((static_cast<i32>(k) * 9 * unit + drift) % (108 * unit)) + 6 * unit;   // 6..114 px
        const i32 s = clamp(along / 120, 0, 1024);
        const i32 side = (k & 1) ? 1 : -1;
        const i32 across = side * (gust_half(s, g) + 3 * unit + static_cast<i32>(h & 7) * 512) + gust_centre(s, g);
        i32 x, y;
        gust_point(state, along * gust_scale >> 10, across * gust_scale >> 10, x, y);
        if (!on_vellum(x, y)) { hide(frame, node); continue; }
        place(frame, node, x, y, unit, fade(through(breath, start, 85), fine_ink), fill_and_stroke);
        turn(frame, node, turn_to(state.bell_angle + static_cast<i32>(h & 63) * 10 - 300));
    }

    // Echo: repeated wind strokes trailing beside the gust.
    for (u32 k = 0; k < echo_count; ++k) {
        const u32 node = echo_first + k;
        const i32 start = static_cast<i32>(k) * 1024 / 5;                 // stroke k appears at k/5 of Echo
        if (echo <= start) { hide(frame, node); continue; }
        const i32 side = (k & 1) ? 1 : -1;
        const i32 across = side * (18 + 7 * static_cast<i32>(k)) * unit;
        const i32 along = (40 + 12 * static_cast<i32>(k)) * unit;
        i32 x, y;
        gust_point(state, along * gust_scale >> 10, across * gust_scale >> 10, x, y);
        if (!on_vellum(x, y)) { hide(frame, node); continue; }
        const i32 scale = ((1024 - static_cast<i32>(k) * 82) * (717 + (echo * 307 >> 10))) >> 10;
        const u32 own = grey_dark + (k * 3 >> 2);                          // further strokes are fainter
        const u32 faded = fade(through(echo, start, 205), own);
        place(frame, node, x, y, clamp(scale * gust_scale >> 10, 128, 2 * unit), faded > own ? faded : own, fill_and_stroke);
        turn(frame, node, turn_to(state.bell_angle));
    }

    // Hall: the court's arches expand from 80% and brighten; more fade in.
    const i32 arch_scale = 820 + (hall * 204 >> 10);
    for (u32 k = 0; k < arch_count; ++k) {
        const u32 node = arch_first + k;
        const i32 start = static_cast<i32>(k) * 256;                      // arch k fades in from k/4 of Hall
        if (k && hall <= start) { hide(frame, node); continue; }
        const u32 own = k == 0 ? fade(hall, ink) : grey_dark + k - 1;     // the outer arch brightens with Hall
        const u32 faded = k == 0 ? own : fade(through(hall, start, 256), own);
        place(frame, node, arch_x * unit, arch_y * unit, arch_scale, faded > own ? faded : own, fill_and_stroke);
    }

    // A note throws a puff from the bell, fading in half a second.
    if (pulse > 0) {
        place(frame, puff_node, state.bell_x, state.bell_y, 512 + ((1024 - pulse) * 1434 >> 10), pulse > 512 ? fine_ink : grey_mid, stroke);
    } else {
        hide(frame, puff_node);
    }
}
} // namespace medievalwind
