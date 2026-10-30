// The court: every frame valid; outlines keep 64 distinct points, enclose area
// and change their key whenever their points change; every control changes the
// picture; reset and track changes never fabricate a note; an idle screen stays
// still; reduced motion shows the end state at once.
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
    for (unsigned p = 0; p < Frame::path_count; ++p) {
        const auto& path = frame.paths[p];
        require(path.key != 0, "outline without a key");
        require(area(path) > 4LL * opxy::draw::unit * opxy::draw::unit, "outline encloses no area");
        for (unsigned i = 0; i < Frame::point_count; ++i)
            for (unsigned j = i + 1; j < Frame::point_count; ++j)
                require(path.points[i].x != path.points[j].x || path.points[i].y != path.points[j].y,
                        "outline repeats a point; the device would merge it");
    }
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
