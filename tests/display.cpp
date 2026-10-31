// The court: every frame valid; outlines follow the device's drawing rules (SDK
// docs/display.md, "Drawing on the device": distinct points 1/8 px apart, a
// closing edge of at least 1/4 px, no turn within 2.5 degrees of straight back,
// area enclosed) across sweeps of every control and every pair of controls; keys
// change whenever points do; every control changes the picture; the redraw stays
// near 20 nodes a frame while playing and 0 at rest (docs/ux.md, Screens); reset
// and track changes never fabricate a note; reduced motion shows the end state.
#include "../display.cpp"
#include "check.h"

typedef medievalwind::Frame Frame;

static long long area(const Frame::path_type& path) {
    long long twice = 0;
    for (unsigned i = 0; i < Frame::point_count; ++i) {
        const auto& a = path.points[i];
        const auto& b = path.points[(i + 1) % Frame::point_count];
        twice += static_cast<long long>(a.x) * b.y - static_cast<long long>(b.x) * a.y;
    }
    return twice < 0 ? -twice : twice;
}

static void check_outlines(const Frame& frame) {
    const double unit = opxy::draw::unit;
    for (unsigned p = 0; p < Frame::path_count; ++p) {
        const auto& path = frame.paths[p];
        require(path.key != 0, "outline without a key");
        require(area(path) > 4LL * opxy::draw::unit * opxy::draw::unit, "outline encloses no area");
        for (unsigned i = 0; i < Frame::point_count; ++i)
            for (unsigned j = i + 1; j < Frame::point_count; ++j)
                require(path.points[i].x != path.points[j].x || path.points[i].y != path.points[j].y,
                        "outline repeats a point; the device would merge it");
        const unsigned n = Frame::point_count;
        for (unsigned i = 0; i < n; ++i) {
            const auto& a = path.points[(i + n - 1) % n];
            const auto& b = path.points[i];
            const auto& c = path.points[(i + 1) % n];
            const double ux = (b.x - a.x) / unit, uy = (b.y - a.y) / unit, vx = (c.x - b.x) / unit, vy = (c.y - b.y) / unit;
            const double lu = std::sqrt(ux * ux + uy * uy), lv = std::sqrt(vx * vx + vy * vy);
            if (lv < 0.125) std::fprintf(stderr, "outline %u points %u-%u are %.3f px apart\n", p, i, (i + 1) % n, lv);
            require(lv >= 0.125, "neighbouring points closer than 1/8 px: the device merges them");
            if (i + 1 == n) require(lv >= 0.25, "closing edge under 1/4 px: the device draws a sliver");
            const double turn = std::acos(std::fmax(-1.0, std::fmin(1.0, (ux * vx + uy * vy) / (lu * lv)))) * 180 / 3.14159265358979;
            if (turn > 177.5) std::fprintf(stderr, "outline %u turns %.2f degrees at point %u\n", p, turn, i);
            require(turn <= 177.5, "a turn within 2.5 degrees of straight back: the device can draw a streak");
        }
    }
}

// Nodes and outlines that differ from the previous frame: the device's redraw.
static unsigned changed(const Frame& a, const Frame& b) {
    unsigned n = 0;
    for (unsigned p = 0; p < Frame::path_count; ++p) n += a.paths[p].key != b.paths[p].key;
    for (unsigned i = 0; i < Frame::node_count; ++i)
        n += std::memcmp(&a.nodes[i], &b.nodes[i], sizeof(a.nodes[i])) != 0 && (i >= Frame::path_count || a.paths[i].key == b.paths[i].key);
    return n;
}

// Visible nodes stay inside the 480 x 220 screen below the header.
static void check_on_screen(const Frame& frame) {
    for (unsigned i = 12; i < Frame::node_count; ++i) {
        const auto& n = frame.nodes[i];
        if (n.x == opxy::draw::hidden_x * opxy::draw::unit && n.y == opxy::draw::hidden_y * opxy::draw::unit) continue;
        if (!(n.x >= 0 && n.x <= 480 * opxy::draw::unit && n.y >= 38 * opxy::draw::unit && n.y <= 220 * opxy::draw::unit))
            std::fprintf(stderr, "node %u at %d, %d\n", i, n.x / opxy::draw::unit, n.y / opxy::draw::unit);
        require(n.x >= 0 && n.x <= 480 * opxy::draw::unit && n.y >= 38 * opxy::draw::unit && n.y <= 220 * opxy::draw::unit,
                "an element leaves the screen");
    }
}

int main() {
    using medievalwind::DisplayState;
    using medievalwind::display;
    using medievalwind::display_reset;
    static DisplayState state;
    static Frame frame, previous;
    opxy::draw::Input input = {};
    input.elapsed = 17;
    input.track = 1;
    input.note_serial = 42;
    for (unsigned i = 0; i < 8; ++i) input.slots[i] = 0x40000000;
    for (unsigned i = 0; i < 4; ++i) { input.parameters[i] = input.slots[i]; input.shown[i] = static_cast<opxy::u8>(i); }

    display_reset(state);
    display(state, input, frame);
    require(opxy::draw::valid(frame), "invalid first frame");
    require(state.pulse_age >= 4096, "reset fabricated a note");
    check_outlines(frame);
    check_on_screen(frame);

    for (unsigned step = 0; step < 50; ++step) {
        previous = frame;
        display(state, input, frame);
        require(std::memcmp(&previous, &frame, sizeof(frame)) == 0, "idle screen moves");
    }
    ++input.track;
    ++input.note_serial;
    display(state, input, frame);
    require(state.pulse_age >= 4096, "track change fabricated a note");

    // Each control, alone from 0 to full, changes the picture below the header.
    for (unsigned c = 0; c < 8; ++c) {
        for (unsigned i = 0; i < 8; ++i) input.slots[i] = 0x40000000;
        input.slots[c] = 0;
        display_reset(state);
        display(state, input, frame);
        previous = frame;
        input.slots[c] = 0x7fffffff;
        display(state, input, frame);
        require(opxy::draw::valid(frame), "invalid frame at a control's end");
        bool changed = false;
        for (unsigned p = 0; p < Frame::path_count; ++p) changed = changed || previous.paths[p].key != frame.paths[p].key;
        for (unsigned n = 12; n < Frame::node_count; ++n)
            changed = changed || std::memcmp(&previous.nodes[n], &frame.nodes[n], sizeof(frame.nodes[n])) != 0;
        require(changed, "a control does not change the artwork");
        check_outlines(frame);
        check_on_screen(frame);
    }

    // Every control and every pair of controls through 0, 0.5 and 1 (with the
    // rest at the middle), held and animating: a control can switch on the
    // drawing that faults, so pairs are swept too.
    {
        const opxy::i32 levels[3] = {0, 0x40000000, 0x7fffffff};
        input.held_notes = 1;
        input.reduced_motion = 0;
        input.elapsed = 33;
        unsigned frames = 0;
        for (unsigned a = 0; a < 8; ++a)
            for (unsigned b = a; b < 8; ++b)
                for (unsigned la = 0; la < 3; ++la)
                    for (unsigned lb = 0; lb < 3; ++lb) {
                        for (unsigned i = 0; i < 8; ++i) input.slots[i] = 0x40000000;
                        input.slots[a] = levels[la];
                        input.slots[b] = levels[lb];
                        for (unsigned step = 0; step < 6; ++step) {
                            display(state, input, frame);
                            require(opxy::draw::valid(frame), "invalid frame in a control sweep");
                            check_outlines(frame);
                            check_on_screen(frame);
                            ++frames;
                        }
                    }
        std::printf("drawing rules hold over %u frames: every control and every pair at 0, 0.5, 1\n", frames);
    }

    // The redraw: at the heaviest setting (every control full) with a note held,
    // about 20 changed nodes a frame on average at 30 frames a second; none at rest.
    {
        for (unsigned i = 0; i < 8; ++i) input.slots[i] = 0x7fffffff;
        input.held_notes = 1;
        input.elapsed = 34;
        display(state, input, frame);
        unsigned total = 0, peak = 0;
        const unsigned count = 900;
        for (unsigned step = 0; step < count; ++step) {
            previous = frame;
            if (step % 45 == 0) ++input.note_serial;    // a new note every 1.5 s
            display(state, input, frame);
            const unsigned c = changed(previous, frame);
            total += c;
            if (c > peak) peak = c;
        }
        std::printf("redraw while playing at full settings: %.1f nodes a frame on average, %u at most\n",
                    static_cast<double>(total) / count, peak);
        require(total <= 20 * count, "the redraw while playing is above about 20 nodes a frame");
        input.held_notes = 0;
        for (unsigned step = 0; step < 40; ++step) display(state, input, frame);   // let the last puff fade
        previous = frame;
        display(state, input, frame);
        require(changed(previous, frame) == 0, "the screen redraws at rest");
    }

    // Random play: controls, notes, holds, late and negative frame times.
    opxy::u32 seed = 7;
    for (unsigned step = 0; step < 20000; ++step) {
        seed = seed * 1664525u + 1013904223u;
        input.elapsed = step % 13 == 0 ? -5 : step % 17 == 0 ? 100000 : 17;
        if (step % 3 == 0)
            for (unsigned i = 0; i < 8; ++i) input.slots[i] = static_cast<opxy::i32>((seed ^ (i * 0x9e3779b9u)) & 0x7fffffffu);
        if (step % 19 == 0) ++input.note_serial;
        input.held_notes = (step / 40) & 1 ? 1 + (seed & 3) : 0;
        if (step % 997 == 0) input.held_notes = opxy::draw::notes_unavailable;
        for (unsigned i = 0; i < 4; ++i) input.shown[i] = static_cast<opxy::u8>(step & 64 ? i + 4 : i);
        if (step % 2111 == 0) ++input.track;
        input.reduced_motion = step % 500 < 20;
        const Frame before = frame;
        display(state, input, frame);
        require(opxy::draw::valid(frame), "invalid animated frame");
        check_outlines(frame);
        check_on_screen(frame);
        for (unsigned p = 0; p < Frame::path_count; ++p)
            if (before.paths[p].key == frame.paths[p].key)
                require(std::memcmp(&before.paths[p], &frame.paths[p], sizeof(frame.paths[p])) == 0,
                        "points changed without a new key");
    }

    // Held notes move the wind; a long hold (about 20 minutes) stays valid.
    input.reduced_motion = 0;
    input.held_notes = 1;
    input.elapsed = 102;
    for (unsigned i = 0; i < 8; ++i) input.slots[i] = 0x7fffffff;
    display(state, input, frame);
    previous = frame;
    display(state, input, frame);
    require(previous.paths[2].key != frame.paths[2].key, "held notes do not move the wind");
    for (unsigned step = 0; step < 12000; ++step) {
        display(state, input, frame);
        require(opxy::draw::valid(frame), "invalid frame during a long hold");
    }
    check_outlines(frame);

    // Reduced motion: held notes and new notes leave the frame unchanged.
    input.reduced_motion = 1;
    display(state, input, frame);
    for (unsigned step = 0; step < 20; ++step) {
        previous = frame;
        ++input.note_serial;
        display(state, input, frame);
        require(std::memcmp(&previous, &frame, sizeof(frame)) == 0, "reduced motion animates");
    }
    return 0;
}
