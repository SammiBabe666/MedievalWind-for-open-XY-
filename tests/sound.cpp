// Bounds and stability: every control corner at pitches across the register,
// hostile control words, controls moved every block, and a long sustained note.
#include "play.h"

int main() {
    static Player p;
    static double x[64 * 400];
    // All 256 corners of the eight controls at five pitches, restarted midway:
    // bounded by the declared peak (checked in play) and sounding.
    const double notes[] = {24, 43, 60, 79, 93};   // C1 to A6, the playable register
    for (unsigned corner = 0; corner < 256; ++corner) {
        double c[8];
        for (unsigned k = 0; k < 8; ++k) c[k] = (corner >> k) & 1 ? 1.0 : 0.0;
        for (unsigned n = 0; n < 5; ++n) {
            p.begin(1 + corner % 9, c);
            p.play(notes[n], 60, x);
            medievalwind::start(p.voice, p.shared, 1);
            p.play(notes[n], 60, x + 64 * 60);
            if (rms(x + 64 * 70, 64 * 50) <= 0.005) std::fprintf(stderr, "corner %u note %.0f rms %.4f\n", corner, notes[n], rms(x + 64 * 70, 64 * 50));
            require(rms(x + 64 * 70, 64 * 50) > 0.005, "a corner is silent");
        }
    }
    // Hostile control words (negative and full scale) and pitches, changed every block.
    {
        medievalwind::Voice& v = p.voice;
        std::memset(&v, 0, sizeof v);
        medievalwind::initialize(v, p.shared, 7);
        opxy::u32 seed = 1;
        opxy::i32 out[64];
        opxy::u32 pitch[64];
        for (unsigned block = 0; block < 6000; ++block) {
            for (unsigned c = 0; c < 8; ++c) p.parameters[c] = static_cast<opxy::i32>(seed = seed * 1664525u + 1013904223u);
            for (unsigned i = 0; i < 64; ++i) pitch[i] = (seed >> (block % 3)) + i * 997u;
            if (block % 97 == 0) medievalwind::start(v, p.shared, 7);
            medievalwind::render(v, p.shared, 7, out, p.parameters, pitch);
            for (unsigned i = 0; i < 64; ++i) require(out[i] >= -peak && out[i] <= peak, "hostile controls exceed the peak");
        }
    }
    // A sustained note at the most resonant, most driven setting for ten
    // minutes: it keeps sounding, stays bounded and carries no DC.
    {
        const double c[8] = {1, 1, 1, 1, 1, 0.5, 1, 1};
        p.begin(3, c);
        double total = 0, energy = 0;
        unsigned count = 0;
        for (unsigned chunk = 0; chunk < 1033; ++chunk) {   // 1033 x 400 blocks = 10 minutes
            p.play(chunk & 1 ? 45 : 57, 400, x);
            for (unsigned i = 0; i < 64 * 400; ++i) { total += x[i]; energy += x[i] * x[i]; ++count; }
            require(rms(x, 64 * 400) > 0.02, "a sustained note faded out");
        }
        require(std::fabs(total / count) < 0.01, "a sustained note drifted to DC");
        std::printf("sustained 10 min: rms %.3f dc %+.5f\n", std::sqrt(energy / count), total / count);
    }
    // Controls swept quickly during playback: bounded, still sounding.
    {
        double c[8] = {0.5, 0.5, 0.5, 0.2, 0.3, 0.0, 0.3, 0.3};
        p.begin(2, c);
        for (unsigned step = 0; step < 2000; ++step) {
            for (unsigned k = 0; k < 8; ++k) c[k] = 0.5 + 0.5 * std::sin(step * (0.01 + 0.013 * k) + k);
            p.set(c);
            p.play(55 + (step / 200) % 12, 2, x);
        }
        p.play(55, 100, x);
        require(rms(x + 64 * 50, 64 * 50) > 0.02, "silent after a control sweep");
    }
    return 0;
}
