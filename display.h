#pragma once
#include <opxy/page_header.hpp>

namespace medievalwind {
// Matches resources.display in definition.json: paths, points, nodes, texts, palette.
// Four outlines (the body, the bell end, the gust and the reed), the two-page
// header's eight bars, and the engraving's wind cap, bore rings, rays, breath
// flecks, echo strokes, hall arches and the note puff.
using Frame = opxy::draw::Frame<4, 64, 58, 16, 16>;
struct DisplayState {
    opxy::draw::PageHeader header;   // 20 bytes
    opxy::u32 track;
    opxy::u32 previous_serial;
    opxy::u32 initialized;
    opxy::i32 pulse_age;             // Q10 seconds since the last note, saturating
    opxy::i32 flow;                  // wind travel while notes are held, tenths of a degree
    opxy::i32 flutter;               // reed flutter while notes are held, tenths of a degree
    opxy::i32 drift;                 // breath flecks' travel while held, Q10 pixels
    opxy::i32 held_time;             // Q10 seconds held, wrapping
    opxy::i32 bell_x, bell_y;        // bell mouth, Q10 pixels (from the last bell outline)
    opxy::i32 bell_angle;            // its direction, tenths of a degree
};
}
