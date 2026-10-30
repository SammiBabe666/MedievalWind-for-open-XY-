// Renders one voice into a buffer of doubles (normalised to the declared peak).
#pragma once
#include "../engine.cpp"
#include "check.h"

struct Player {
    medievalwind::Voice voice;
    medievalwind::Shared shared;
    opxy::i32 parameters[8];
    void begin(unsigned owner, const double* controls) {
        std::memset(&voice, 0, sizeof voice);
        medievalwind::initialize(voice, shared, owner);
        medievalwind::start(voice, shared, owner);
        set(controls);
    }
    void set(const double* controls) {
        for (int c = 0; c < 8; ++c) parameters[c] = q31(controls[c]);
    }
    // Renders blocks at one pitch; writes samples to out (if given) and checks the peak.
    void play(double midi, unsigned blocks, double* out = 0) {
        opxy::u32 pitch[opxy::block_frames];
        opxy::i32 buffer[opxy::block_frames];
        const opxy::u32 inc = increment(midi);
        for (unsigned i = 0; i < opxy::block_frames; ++i) pitch[i] = inc;
        for (unsigned b = 0; b < blocks; ++b) {
            medievalwind::render(voice, shared, 1, buffer, parameters, pitch);
            for (unsigned i = 0; i < opxy::block_frames; ++i) {
                require(buffer[i] >= -peak && buffer[i] <= peak, "output above the declared peak");
                if (out) out[b * opxy::block_frames + i] = static_cast<double>(buffer[i]) / peak;
            }
        }
    }
};
