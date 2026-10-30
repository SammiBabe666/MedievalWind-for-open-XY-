// Notes: a new note speaks within a few milliseconds; retriggers and legato
// changes do not click; a stolen voice starts clean; the voice pool fits the
// declared memory and capacity.
#include "play.h"

static Player p;
static double x[64 * 800];

// Largest step between neighbouring samples, relative to the signal's RMS.
static double largest_step(const double* s, unsigned n) {
    double worst = 0;
    for (unsigned i = 1; i < n; ++i) worst = std::fmax(worst, std::fabs(s[i] - s[i - 1]));
    return worst;
}

int main() {
    const double c[8] = {0.55, 0.6, 0.7, 0.1, 0.2, 0.3, 0.3, 0.2};
    // Speaks: within 60 ms the note is at least a third of its steady level.
    p.begin(1, c);
    p.play(60, 400, x);
    const double steady = rms(x + 64 * 200, 64 * 200);
    require(rms(x + 2205, 441) > steady / 3, "a note is slow to speak");
    require(rms(x, 64) < steady, "a note starts at full level: it would click");
    // The steady tone's own largest step sets the bar for retriggers and legato.
    const double own = largest_step(x + 64 * 200, 64 * 200);
    medievalwind::start(p.voice, p.shared, 1);           // retrigger the same note
    p.play(60, 100, x);
    require(largest_step(x, 64 * 20) < own * 1.6, "a retrigger clicks");
    p.play(67, 100, x);                                 // legato to another note
    require(largest_step(x, 64 * 20) < own * 1.6, "a legato change clicks");
    medievalwind::start(p.voice, p.shared, 1);
    p.play(48, 200, x);                                 // retrigger a different note
    require(largest_step(x, 64 * 20) < own * 1.6, "a retrigger to a new note clicks");
    require(rms(x + 64 * 100, 64 * 100) > steady / 3, "a retriggered note does not sound");
    // A stolen voice is initialised for its new owner: it starts clean, from silence.
    medievalwind::initialize(p.voice, p.shared, 9);
    medievalwind::start(p.voice, p.shared, 9);
    p.play(72, 1, x);
    double first = 0;
    for (unsigned i = 0; i < 64; ++i) first = std::fmax(first, std::fabs(x[i]));
    bool empty = true;
    for (unsigned i = 0; i < medievalwind::bore_length; ++i) empty = empty && std::abs(p.voice.bore[i]) < 2000;
    require(first < steady / 2 && empty, "a stolen voice carries its old note");
    // Overlapping notes: eight voices at once, each its own state, all sounding.
    static Player chord[8];
    for (unsigned v = 0; v < 8; ++v) chord[v].begin(v + 1, c);
    for (unsigned b = 0; b < 4; ++b)
        for (unsigned v = 0; v < 8; ++v) chord[v].play(48 + 3 * v, 100, x);
    for (unsigned v = 0; v < 8; ++v) {
        chord[v].play(48 + 3 * v, 100, x);
        require(rms(x, 6400) > 0.02, "a chord voice is silent");
    }
    // Memory: the pool is voiceBytes x (capacity + 1) = 9 voices; keep it under 128 KiB.
    const unsigned pool = sizeof(medievalwind::Voice) * 9;
    std::printf("voice %u bytes, pool of 9 %u bytes (%.1f KiB)\n", static_cast<unsigned>(sizeof(medievalwind::Voice)), pool, pool / 1024.0);
    require(sizeof(medievalwind::Voice) % 4 == 0 && alignof(medievalwind::Voice) == 4, "voice size or alignment");
    require(pool <= 128 * 1024, "the voice pool is too large");
    require(__is_empty(medievalwind::Shared), "voices share state");
    return 0;
}
