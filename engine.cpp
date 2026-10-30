// Medieval Wind: a medieval shawm that turns into a crumhorn.
//
// A double reed (a pressure-controlled valve with a bounded, clipped reflection
// curve) blows into a waveguide bore. The bore is one delay line read at two
// taps: a whole period P, positive, and half a period P/2, inverted.
//
//   loop = (1 - c) z^-P - c z^-P/2
//
// At harmonic k the half tap is (-1)^k, so the loop gives odd harmonics a gain
// of 1 and even ones 1 - 2c: c = 0 is an open, conical-sounding bore with every
// harmonic (shawm), c = 1 a closed cylinder that keeps only odd ones (crumhorn),
// and the pitch stays put for every c in between. Crum moves that blend and,
// with it, the reed's pinch, the bore losses, the bell and a nasal formant.
//
// The bore loss lowpass and a DC leak track the note, so the tone holds its
// shape across the register; their phase delay at the fundamental is computed
// once per block and taken off both taps, so the reed sounds in tune.
//
// Hall (a four-line feedback delay network) and Echo (a dark feedback delay)
// run inside the voice at a quarter of the audio rate.
//
// Fixed point: signals Q14 in 32-bit words (|x| <= 2), coefficients Q15. No
// floating point and no 64-bit arithmetic (opxy::q31::multiply is a single
// instruction on the device). A few divisions per block, none per sample.
#include "core.h"
#include <opxy/q31.hpp>

namespace medievalwind {
namespace {

using opxy::q31::multiply;

const i32 one = 1 << 14;                     // Q14 unity
const i32 limit = 31000;                     // |bore wave| < 1.9: fits i16
const i32 output_peak = 0x20000000;          // definition.json outputPeakQ31
const i32 half_pi = 51472;                   // Q15 radians

inline i32 clamp(i32 v, i32 lo, i32 hi) { return v < lo ? lo : v > hi ? hi : v; }
inline i32 mul15(i32 a, i32 b) { return (a * b) >> 15; }   // both within 16 bits

// atan(t), t in Q15 0..1, Q15 radians; within 0.0015 rad.
inline i32 atan_unit(i32 t) {
    // pi/4 t + t (1 - t) (0.2447 + 0.0663 t)
    const i32 base = mul15(t, 25736);
    const i32 bend = mul15(mul15(t, 32768 - t), 8018 + mul15(t, 2173));
    return base + bend;
}

// atan(y / x) for y, x >= 0, Q15 radians, x and y in any common scale.
inline i32 atan_ratio(u32 y, u32 x) {
    while (y >= 65536u || x >= 65536u) { y >>= 1; x >>= 1; }   // at most 16 turns, per block
    if (x == 0) return half_pi;
    if (y <= x) return atan_unit(static_cast<i32>((y << 15) / x));
    return half_pi - atan_unit(static_cast<i32>((x << 15) / y));
}

// Per-block coefficients. Everything here changes once a block.
struct Block {
    i32 tap_long, tap_short;     // tap delays at the block's start, Q16 samples
    i32 step_long, step_short;   // their change per sample
    i32 gain_long, gain_short;   // tap gains with the bore loss, Q15
    i32 loss_k, leak_k;          // loss lowpass and DC leak coefficients, Q15
    i32 offset, slope;           // reed reflection: r = offset + slope * dp, Q15
    i32 mouth;                   // mouth pressure target, Q22
    i32 rise;                    // its one-pole rate, as a shift
    i32 turbulence;              // breath noise in the pressure, Q15
    i32 air;                     // breath noise at the output, Q15
    i32 shelf;                   // Bell: radiated slope gain, Q12
    i32 body;                    // Bell: radiated pressure gain, Q15
    i32 formant_f, formant_q;    // Crum: nasal resonator tuning and damping, Q15
    i32 formant_mix;             // Q15
    i32 hall, echo;              // smoothed effect amounts, Q15
};

// Phase delay of the loss lowpass and the DC leak at the fundamental, in Q8
// samples (positive: the filters lag). omega is Q24 radians per sample.
inline i32 filter_lag(u32 omega_q24, i32 loss_k, i32 leak_k) {
    // sin w and 1 - cos w by their series, Q30; w <= 1.2 keeps them within 0.1%.
    const i32 w = static_cast<i32>(omega_q24 << 6);                 // Q30
    const i32 w2 = multiply(w, w) * 2;                               // Q30
    const i32 w3 = multiply(w2, w) * 2;
    const i32 w4 = multiply(w2, w2) * 2;
    const i32 s = w - multiply(w3, 357913941) + multiply(multiply(w3, w2) * 2, 17895697);  // w - w^3/6 + w^5/120
    const i32 v = (w2 >> 1) - multiply(w4, 89478485) + multiply(multiply(w4, w2) * 2, 2982616);  // w^2/2 - w^4/24 + w^6/720
    // A one-pole y += k (x - y) lags by atan((1-k) sin w / (k + (1-k)(1 - cos w))).
    const i32 keep_lp = (32768 - loss_k) << 16, keep_dc = (32768 - leak_k) << 16;  // Q31
    const i32 lag = atan_ratio(static_cast<u32>(multiply(keep_lp, s)),
                               static_cast<u32>((loss_k << 15) + multiply(keep_lp, v)));
    // The leak (x minus a one-pole of x) leads by pi/2 - w/2 - that angle.
    const i32 lead = half_pi - static_cast<i32>(omega_q24 >> 10) -
                     atan_ratio(static_cast<u32>(multiply(keep_dc, s)),
                                static_cast<u32>((leak_k << 15) + multiply(keep_dc, v)));
    const i32 phase = lag - lead;                                     // Q15 radians
    const u32 magnitude = static_cast<u32>(phase < 0 ? -phase : phase);
    const i32 samples = static_cast<i32>((magnitude << 16) / ((omega_q24 >> 1) | 1u));  // Q8
    return phase < 0 ? -samples : samples;
}

// Linear 2^(-cents/1200) for |cents| < 100, Q15 multiplier of the period:
// 1 + cents * ln2 / 1200 (bends of the period, not the pitch: positive is flat).
inline i32 period_bend(i32 cents_q8) { return 32768 + ((cents_q8 * 19) >> 8); }  // 2^15 ln2/1200 = 18.9

inline u32 random(u32& seed) { return seed = seed * 1664525u + 1013904223u; }

inline void prepare(Voice& v, const i32* parameters, u32 increment, Block& b) {
    // Controls: Q31 in, Q15 smoothed per block (a quarter of the way each block, ~5 ms).
    for (u32 c = 0; c < control_count; ++c) {
        const i32 target = clamp(parameters[c], 0, 0x7fffffff) >> 16;
        if (!v.initialized) v.control[c] = target;
        else {
            const i32 gap = target - v.control[c];
            v.control[c] = gap > -4 && gap < 4 ? target : v.control[c] + (gap >> 2);   // lands exactly, so 0 is 0
        }
    }
    const i32 reed = v.control[0], bore = v.control[1], bell = v.control[2], breath = v.control[3];
    const i32 bend = v.control[4], crum = v.control[5];

    // Bend: a slow wander of the breath, a vibrato that blooms after the attack
    // and a scoop up into each note. Zero is no movement at all.
    if (v.age < 0xffff) ++v.age;
    if (v.wander_clock == 0) {
        v.wander_clock = 60 + (random(v.seed) >> 26);                 // 87..178 ms
        v.wander_target = static_cast<i32>(random(v.seed) >> 17) - 16384;  // -0.5..0.5, Q15
    } else {
        --v.wander_clock;
    }
    v.wander += (v.wander_target - v.wander) >> 5;
    v.vibrato_phase += 21660000u + ((v.seed >> 12) & 0x3ffffu);         // about 5.2 Hz
    const i32 bloom = v.age > 400 ? 32767 : static_cast<i32>(v.age) * 81;  // vibrato fades in over 0.6 s
    v.scoop -= v.scoop >> 5;                                           // decays in about 46 ms
    i32 sway = 0, breath_sway = 0;
    if (bend) {
        const u32 phase = v.vibrato_phase;                              // triangle vibrato, Q15
        const i32 tri = static_cast<i32>((phase & 0x80000000u ? ~phase : phase) >> 15) - 32768;
        const i32 vib = mul15(tri, bloom);
        // Up to 22 cents of vibrato, 26 of wander, 45 of scoop, in Q8 cents.
        sway = mul15(bend, (vib * 22 + v.wander * 52 - v.scoop * 45) >> 7);
        breath_sway = mul15(bend, (vib >> 4) + (v.wander >> 3));      // up to ~12% pressure
    }

    // The bore period. Fold notes below 43 Hz up by octaves to fit the line.
    u32 inc = increment < 2000u ? 2000u : increment;
    while (inc < 4200000u) inc <<= 1;                                 // 43.1 Hz
    if (inc > 400000000u) inc = 400000000u;                           // 4.1 kHz: w <= 0.59
    const u32 omega = (inc >> 8) * 201u >> 5;                         // Q24 radians per sample
    // Pitch-tracking bore loss: Bore and Bell keep more harmonics, Crum fewer.
    const i32 harmonics = 768 + 15 * (bore >> 7) + 3 * (bell >> 7) - (crum * 4 >> 7);  // Q8: 3..21, Crum takes 4
    b.loss_k = clamp(static_cast<i32>(((omega >> 9) * static_cast<u32>(clamp(harmonics, 768, 5400))) >> 8), 64, 30000);
    b.leak_k = clamp(static_cast<i32>((omega >> 9) * 38u >> 8), 8, 4000);  // a seventh of the fundamental
    // Their phase at the fundamental: recomputed only when the note or the filters move.
    const i32 keys = (b.loss_k << 16) | b.leak_k;
    if (omega != v.lag_omega || keys != v.lag_keys || !v.initialized) {
        v.lag = filter_lag(omega, b.loss_k, b.leak_k);
        v.lag_omega = omega;
        v.lag_keys = keys;
    }
    const i32 lag = v.lag;                                            // Q8 samples
    const i32 period = static_cast<i32>((0xffffffffu / (inc >> 8)) << 8);  // Q16: 2^32 / inc
    // The beating reed pulls the bore flat, most with a stiff reed in a resonant
    // bore, more still on the crumhorn: measured offline (production/render.cc)
    // and taken off here, in Q8 cents: 1.2 + bore (4.5 + 13 reed)(1 + 0.65 crum^3).
    const i32 pull = mul15(1152 + mul15(reed, 3328), bore);
    const i32 crum3 = mul15(mul15(crum, crum), crum);
    // A bright bell on a short bore with a stiff reed adds about 7.5 cents more.
    const i32 edge = mul15(mul15(mul15(bell, reed), 32767 - bore), 32767 - crum);
    const i32 flat = 307 + pull + mul15(pull, mul15(crum3, 21299)) + mul15(edge, 1920);
    const i32 target = period + (((period >> 8) * (period_bend(sway - flat) - 32768)) >> 7);
    if (!v.initialized || v.delay == 0) v.delay = target;
    else v.delay += (target - v.delay) >> 1;                          // glides over a few blocks
    // Both taps glide across the block, sample by sample, so a new pitch never
    // makes the bore jump.
    const i32 tap_long = clamp(v.delay - lag * 256, 2 << 16, static_cast<i32>(bore_length - 4) << 16);
    const i32 tap_short = clamp((v.delay >> 1) - lag * 256, 2 << 16, static_cast<i32>(bore_length - 4) << 16);
    if (!v.initialized || v.tap_long == 0) { v.tap_long = tap_long; v.tap_short = tap_short; }
    b.tap_long = v.tap_long;
    b.tap_short = v.tap_short;
    b.step_long = (tap_long - v.tap_long) >> 6;
    b.step_short = (tap_short - v.tap_short) >> 6;
    v.tap_long += b.step_long * 64;
    v.tap_short += b.step_short * 64;

    // Crum: the blend of the two taps, with the bore loss on both.
    const i32 loss = 31949 + (bore * 753 >> 15);                      // 0.975..0.998
    b.gain_long = mul15(loss, 32767 - crum);
    b.gain_short = mul15(loss, crum);

    // Reed: r = offset + slope * dp, clipped to +-1 (shut and wide open).
    // Stiffer turns steepen the curve and lower its rest point: more gain, more
    // beating, more buzz. The crumhorn's wind cap pinches it a little further.
    b.offset = 21299 - mul15(reed, 13107) - mul15(crum, 1638);        // 0.65 - 0.40 reed - 0.05 crum
    const i32 steep = 13107 + mul15(reed, 31130) + mul15(crum, 4915); // 0.40 + 0.95 reed + 0.15 crum, Q15
    b.slope = -steep;
    // The player blows to the edge of beating: the reed at rest is 97% shut.
    // One division a block: (0.97 - offset) / |slope|, Q14.
    const i32 blow = static_cast<i32>((static_cast<u32>(31785 - b.offset) << 14) / static_cast<u32>(steep));
    // Tonguing: each note starts with a short push of 30% more pressure that
    // releases the tongue's hold on the reed, so even a marginal note speaks.
    // Bend's sway never pushes past 98.5% shut, where the reed would close and stay closed.
    const i32 ceiling = static_cast<i32>((static_cast<u32>(32276 - b.offset) << 14) / static_cast<u32>(steep));
    const i32 swayed = blow + mul15(blow, breath_sway);
    const i32 mouth = (swayed > ceiling ? ceiling : swayed) + (v.age <= 8 ? mul15(blow, 9830) : 0);
    b.mouth = mouth << 8;                                             // Q22
    b.rise = v.age <= 8 ? 6 : v.age < 24 ? 8 : 10;                    // 1.5 ms, 6 ms, then 23 ms
    b.turbulence = mul15(breath, 13107);                              // up to 40% pressure noise
    b.air = mul15(mul15(breath, breath), 900) + mul15(breath, 250);   // up to 0.035 of hiss

    // Bell: radiation. The bell passes the bore's pressure and, rising with
    // frequency, its slope: 0.4 to 8 times the difference, half that on the crumhorn.
    b.shelf = mul15(1638 + mul15(bell, 31130), 32768 - mul15(crum, 16384));  // Q12
    b.body = 32767 - mul15(bell, 13107);                              // 1 .. 0.6, Q15
    // A nasal formant: about 2.3 kHz on the shawm sliding to 1.1 kHz on the crumhorn.
    // Chamberlin coefficient 2 sin(pi f / fs): 0.326 .. 0.157.
    b.formant_f = 10690 - mul15(crum, 5530);
    b.formant_q = 16384 - mul15(crum, 6554);                          // damping 0.5 .. 0.3
    b.formant_mix = 9830 + mul15(crum, 16384);                        // 0.3 .. 0.8

    b.hall = v.control[6];
    b.echo = v.control[7];
    v.initialized = 1;
}

// Pass 1: the mouth. Breath pressure with its turbulence, into the buffer.
// Without Breath the pressure is clean and the noise generator rests.
inline void mouth_pass(Voice& v, const Block& b, i32* __restrict out) {
    i32 pressure = v.pressure;
    const i32 mouth = b.mouth, rise = b.rise, turbulence = b.turbulence;
    if (turbulence == 0) {
        for (unsigned i = 0; i != opxy::block_frames; ++i) {
            pressure += (mouth - pressure) >> rise;
            out[i] = pressure >> 8;
        }
        v.pressure = pressure;
        return;
    }
    u32 noise = v.noise;
    for (unsigned i = 0; i != opxy::block_frames; ++i) {
        pressure += (mouth - pressure) >> rise;
        noise = noise * 1664525u + 1013904223u;
        const i32 n = static_cast<i32>(noise) >> 17;                  // Q15 white, -1..1
        const i32 p = pressure >> 8;
        out[i] = p + mul15(mul15(p, n), turbulence);
    }
    v.pressure = pressure;
    v.noise = noise;
}

// Pass 2: reed and bore. The reed meets the wave returning from the bore and
// writes what it lets through back into it.
inline void bore_pass(Voice& v, const Block& b, i32* __restrict io) {
    const u32 mask = bore_length - 1;
    u32 write = v.write;
    i32 low = v.low, leak = v.leak;
    const i32 gl = b.gain_long, gs = b.gain_short, k = b.loss_k, kd = b.leak_k;
    const i32 offset = b.offset, slope = b.slope;
    u32 dl = static_cast<u32>(b.tap_long), ds = static_cast<u32>(b.tap_short);
    const u32 sl = static_cast<u32>(b.step_long), ss = static_cast<u32>(b.step_short);
    for (unsigned i = 0; i != opxy::block_frames; ++i) {
        // Fractional taps: linear interpolation between neighbours.
        const u32 pl = (write << 16) - dl, ps = (write << 16) - ds;
        dl += sl;
        ds += ss;
        const i32 l0 = v.bore[(pl >> 16) & mask], l1 = v.bore[((pl >> 16) + 1) & mask];
        const i32 s0 = v.bore[(ps >> 16) & mask], s1 = v.bore[((ps >> 16) + 1) & mask];
        const i32 fl = static_cast<i32>((pl >> 1) & 0x7fff), fs = static_cast<i32>((ps >> 1) & 0x7fff);
        const i32 tl = l0 + mul15(l1 - l0, fl), ts = s0 + mul15(s1 - s0, fs);
        const i32 returning = mul15(tl, gl) - mul15(ts, gs);
        low += mul15(returning - low, k);                             // bore losses
        leak += mul15(low - leak, kd);                                // no DC in the loop
        const i32 p = io[i];
        const i32 dp = clamp(low - leak - p, -40000, 40000);          // across the reed
        const i32 r = clamp(offset + ((slope * dp) >> 14), -32768, 32767);  // the reed's reflection
        const i32 j = clamp(p + ((dp * r) >> 15), -limit, limit);
        v.bore[write & mask] = static_cast<i16>(j);
        io[i] = j;
        ++write;
    }
    v.write = write & mask;
    v.low = low;
    v.leak = leak;
}

// Pass 3: the bell. Radiation for projection, a nasal formant and the air.
template <bool airy>
inline void bell_pass(Voice& v, const Block& b, i32* __restrict io) {
    i32 previous = v.tone_low, lo = v.nasal_low, band = v.nasal_band, air = v.air, dc = v.radiated_dc;
    u32 noise = v.noise ^ 0x5bd1e995u;
    const i32 shelf = b.shelf, body = b.body, f = b.formant_f, q = b.formant_q, mix = b.formant_mix, hiss = b.air;
    for (unsigned i = 0; i != opxy::block_frames; ++i) {
        const i32 x = io[i];
        // The mouth's steady pressure stays in the instrument: a DC blocker (~7 Hz).
        dc += x - (dc >> 10);
        const i32 ac = x - (dc >> 10);
        const i32 shaped = mul15(ac, body) + (((x - previous) * shelf) >> 12);
        previous = x;
        // Chamberlin state-variable bandpass, input halved for headroom.
        lo += mul15(band, f);
        const i32 high = (shaped >> 1) - lo - mul15(band, q) * 2;
        band = clamp(band + mul15(high, f), -40000, 40000);
        i32 y = shaped + mul15(band, mix);
        if (airy) {
            noise = noise * 1664525u + 1013904223u;
            const i32 n = static_cast<i32>(noise) >> 18;              // Q14 white
            y += mul15(n - air, hiss);                                 // its bright, airy band
            air = n;
        }
        io[i] = clamp(y >> 1, -2 * one, 2 * one);
    }
    v.tone_low = previous;
    v.radiated_dc = dc;
    v.nasal_low = lo;
    v.nasal_band = band;
    v.air = air;
}

// Pass 4: Echo and Hall at a quarter of the audio rate, then the output.
// Zero on either is a true bypass: its line is neither read nor written.
inline void space_pass(Voice& v, const Block& b, const i32* __restrict dry, opxy::Output output) {
    const bool echo_on = b.echo > 0, hall_on = b.hall > 0;
    if (!echo_on && !hall_on) {
        v.wet = 0;
        v.echo_used = v.hall_used = 0;   // the next use starts from a clean line
        for (unsigned i = 0; i != opxy::block_frames; ++i) output[i] = dry[i] * 16384;
        return;
    }
    // A line coming back into use starts silent rather than replaying an old tail.
    if (echo_on && !v.echo_used) { for (u32 i = 0; i < echo_length; ++i) v.echo[i] = 0; v.echo_low = 0; v.echo_used = 1; }
    if (hall_on && !v.hall_used) {
        for (u32 i = 0; i < hall_total; ++i) v.hall[i] = 0;
        for (u32 l = 0; l < hall_lines; ++l) v.damp[l] = 0;
        v.hall_used = 1;
    }
    if (!echo_on) v.echo_used = 0;
    if (!hall_on) v.hall_used = 0;

    // Echo: feedback 0.2..0.7 through a dark lowpass, wet up to 0.55.
    const i32 feedback = 6554 + mul15(b.echo, 16384), echo_mix = mul15(b.echo, 18022);
    // Hall: decay gain 0.70..0.92 (about 0.7 to 3 s), damping and wet up to 0.75.
    const i32 decay = 22938 + mul15(b.hall, 7209), hall_mix = mul15(b.hall, 24576);
    const i32 damping = 21299 - mul15(b.hall, 6554);                  // brighter when short, darker when long
    i32 wet = v.wet;
    u32 ew = v.echo_write;
    i16* const l0 = v.hall;
    i16* const l1 = l0 + 293;
    i16* const l2 = l1 + 359;
    i16* const l3 = l2 + 431;
    i16* const d0 = l3 + 499;
    i16* const d1 = d0 + 61;
    u32 at0 = v.hall_index[0], at1 = v.hall_index[1], at2 = v.hall_index[2], at3 = v.hall_index[3];
    u32 at4 = v.hall_index[4], at5 = v.hall_index[5];
    i32 damp0 = v.damp[0], damp1 = v.damp[1], damp2 = v.damp[2], damp3 = v.damp[3];
    for (unsigned f = 0; f != opxy::block_frames / 4; ++f) {
        const i32 x = (dry[4 * f] + dry[4 * f + 1] + dry[4 * f + 2] + dry[4 * f + 3]) >> 2;
        i32 echoed = 0, signal = x;
        if (echo_on) {
            const i32 back = v.echo[ew];
            v.echo_low += mul15(back - v.echo_low, 18000);             // about 1 kHz
            v.echo[ew] = static_cast<i16>(clamp(x + mul15(v.echo_low, feedback), -limit, limit));
            ew = ew + 1 == echo_length ? 0 : ew + 1;
            echoed = mul15(back, echo_mix);
            signal += echoed;
        }
        i32 halled = 0;
        if (hall_on) {
            // Two diffusers (allpass, g = 0.6), then four lines mixed by a Hadamard matrix.
            i32 in = signal >> 1;
            const i32 a0 = d0[at4];
            const i32 u0 = clamp(in + mul15(a0, 19661), -limit, limit);
            d0[at4] = static_cast<i16>(u0);
            in = a0 - mul15(u0, 19661);
            const i32 a1 = d1[at5];
            const i32 u1 = clamp(in + mul15(a1, 19661), -limit, limit);
            d1[at5] = static_cast<i16>(u1);
            in = a1 - mul15(u1, 19661);
            const i32 x0 = l0[at0], x1 = l1[at1], x2 = l2[at2], x3 = l3[at3];
            damp0 += mul15(x0 - damp0, damping);
            damp1 += mul15(x1 - damp1, damping);
            damp2 += mul15(x2 - damp2, damping);
            damp3 += mul15(x3 - damp3, damping);
            const i32 s = damp0 + damp1, t = damp0 - damp1, u = damp2 + damp3, w = damp2 - damp3;
            l0[at0] = static_cast<i16>(clamp(in + mul15((s + u) >> 1, decay), -limit, limit));
            l1[at1] = static_cast<i16>(clamp(in + mul15((t + w) >> 1, decay), -limit, limit));
            l2[at2] = static_cast<i16>(clamp(in + mul15((s - u) >> 1, decay), -limit, limit));
            l3[at3] = static_cast<i16>(clamp(in + mul15((t - w) >> 1, decay), -limit, limit));
            at0 = at0 + 1 == 293u ? 0 : at0 + 1;
            at1 = at1 + 1 == 359u ? 0 : at1 + 1;
            at2 = at2 + 1 == 431u ? 0 : at2 + 1;
            at3 = at3 + 1 == 499u ? 0 : at3 + 1;
            at4 = at4 + 1 == 61u ? 0 : at4 + 1;
            at5 = at5 + 1 == 97u ? 0 : at5 + 1;
            halled = mul15((x0 + x1 - x2 + x3) >> 1, hall_mix);
        }
        const i32 now = echoed + halled;
        // Back to the audio rate: a straight line from the previous wet sample.
        for (unsigned k = 0; k != 4; ++k) {
            const i32 y = dry[4 * f + k] + wet + (((now - wet) * static_cast<i32>(k + 1)) >> 2);
            output[4 * f + k] = clamp(y, -2 * one, 2 * one) * 16384;
        }
        wet = now;
    }
    v.wet = wet;
    v.echo_write = ew;
    v.hall_index[0] = at0; v.hall_index[1] = at1; v.hall_index[2] = at2; v.hall_index[3] = at3;
    v.hall_index[4] = at4; v.hall_index[5] = at5;
    v.damp[0] = damp0; v.damp[1] = damp1; v.damp[2] = damp2; v.damp[3] = damp3;
}
} // namespace

inline void initialize(Voice& voice, Shared&, u32 owner) {
    for (u32 i = 0; i < bore_length; ++i) voice.bore[i] = 0;
    voice.write = 0;
    voice.echo_write = 0;
    for (u32 l = 0; l < hall_lines + 2; ++l) voice.hall_index[l] = 0;
    voice.delay = 0;
    voice.tap_long = voice.tap_short = 0;
    voice.radiated_dc = 0;
    voice.low = voice.leak = voice.pressure = 0;
    voice.tone_low = voice.nasal_low = voice.nasal_band = voice.air = 0;
    voice.seed = owner * 2654435761u + 0x9e3779b9u;
    voice.noise = voice.seed ^ 0xa5a5a5a5u;
    for (u32 c = 0; c < control_count; ++c) voice.control[c] = 0;
    voice.echo_low = 0;
    for (u32 l = 0; l < hall_lines; ++l) voice.damp[l] = 0;
    voice.wet = 0;
    voice.wander = voice.wander_target = 0;
    voice.wander_clock = 0;
    voice.vibrato_phase = voice.seed;
    voice.age = 0;
    voice.scoop = 32767;
    voice.echo_used = voice.hall_used = 0;   // lines are cleared when first used
    voice.initialized = 0;
}

// Each note: the player breathes again and scoops into the pitch. The bore keeps
// ringing, so legato lines and retriggers never click; the stock amplitude
// envelope shapes the attack and release.
inline void start(Voice& voice, Shared&, u32) {
    voice.age = 0;
    voice.scoop = 32767;
    voice.vibrato_phase = voice.seed;
    voice.pressure -= voice.pressure >> 2;
}
inline void destroy(Voice&, Shared&, u32) {}

inline void render(Voice& voice, Shared&, u32, opxy::Output output,
                   opxy::Parameters parameters, opxy::Pitch pitch) {
    Block b;
    prepare(voice, parameters, pitch[0], b);
    i32 work[opxy::block_frames];
    mouth_pass(voice, b, work);
    bore_pass(voice, b, work);
    if (b.air) bell_pass<true>(voice, b, work);
    else bell_pass<false>(voice, b, work);
    space_pass(voice, b, work, output);
}

} // namespace medievalwind
