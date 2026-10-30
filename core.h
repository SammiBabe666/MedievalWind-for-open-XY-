#pragma once
#include <opxy/audio.hpp>

namespace medievalwind {
using opxy::i16;
using opxy::i32;
using opxy::u32;

const u32 control_count = 8;
// The bore: one delay line read at two taps. 1024 samples holds a full period
// down to 43 Hz; lower notes fold up an octave.
const u32 bore_length = 1024;
// Effects run at a quarter of the audio rate (11.025 kHz): dark, cheap and small.
const u32 echo_length = 3072;            // 278.6 ms
const u32 hall_lines = 4;
const u32 hall_length[hall_lines] = {293, 359, 431, 499};   // 26.6..45.3 ms, primes
const u32 diffuser_length[2] = {61, 97};
const u32 hall_total = 293 + 359 + 431 + 499 + 61 + 97;    // 1740

// Only sound state. The SDK owns firmware headers, slot padding and allocation.
struct Voice {
    i16 bore[bore_length];       // pressure waves in the bore, Q14
    i16 echo[echo_length];       // Echo line, quarter rate, Q14
    i16 hall[hall_total];        // four feedback lines then two diffusers, quarter rate, Q14
    u32 write;                   // bore write position
    u32 echo_write;              // Echo write position
    u32 hall_index[hall_lines + 2];  // each Hall line's and diffuser's position
    i32 delay;                   // smoothed bore period, Q16 samples
    i32 tap_long, tap_short;     // the taps in use at the end of the last block, Q16 samples
    i32 radiated_dc;             // the output DC blocker, Q14 << 10
    i32 low, leak;               // bore loss lowpass and DC leak, Q14
    i32 pressure;                // breath pressure in the mouthpiece, Q22
    i32 tone_low;                // Bell: the previous bore sample, Q14
    i32 nasal_low, nasal_band;   // Crum: formant resonator (state-variable), Q14
    i32 air;                     // last breath-noise sample, for its high band
    u32 noise;                   // breath turbulence generator
    i32 control[control_count];  // block-smoothed controls, Q15
    i32 echo_low;                // Echo feedback lowpass, Q14
    i32 damp[hall_lines];        // Hall line damping lowpasses, Q14
    i32 wet;                     // previous quarter-rate wet sample, Q14
    i32 wander, wander_target;   // Bend: slow breath wander, Q15
    u32 wander_clock;            // blocks to the next wander target
    u32 vibrato_phase;           // Bend: the player's vibrato
    u32 age;                     // blocks since the note started, saturating
    i32 scoop;                   // Bend: attack pitch scoop, Q15 of full depth
    u32 echo_used, hall_used;    // blocks of clearing done (8: the line is clean and in use)
    u32 lag_omega;               // filter_lag's inputs last block, so a steady note skips it
    i32 lag_keys, lag;
    u32 seed;
    u32 initialized;
};
// Voices share nothing.
struct Shared {};
}
