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
const i32 output_peak = 0x40000000;          // definition.json outputPeakQ31: half scale, the platform's limit
// Output: Q14 times 2^16 (a shift), the soft knee in loud() keeping it under the
// declared peak. The makeup gain (x0.83 on top of the shift) rides on the bell's
// coefficients, so the extra loudness costs nothing per sample.
const i32 knee = 9830;                       // 60% of the peak, in Q14 output units
const i32 ceiling_q14 = 16383;               // just under the peak (2^30 = 16384 << 16)
const i32 makeup = 27197;                    // x0.83, folded into the bell's coefficients (Q15)
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

// The output word: a soft knee for the bell's brief spikes (4:1 above 60% of
// the peak), then a shift to Q31. It replaces a plain clamp: no extra multiply.
inline i32 loud(i32 y) {
    i32 a = y < 0 ? -y : y;
    if (a > knee) {
        a = knee + ((a - knee) >> 2);
        if (a > ceiling_q14) a = ceiling_q14;
    }
    return (y < 0 ? -a : a) * 65536;
}

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
    // While the pitch glides (bends, portamento) it is refreshed every fourth block,
    // or at once for a jump of more than 3%, so a bend never makes every block heavy.
    const u32 moved = omega > v.lag_omega ? omega - v.lag_omega : v.lag_omega - omega;
    if (keys != v.lag_keys || !v.initialized || moved > (v.lag_omega >> 5) || (moved && (v.age & 3) == 0)) {
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
    b.air = mul15(mul15(mul15(breath, breath), 900) + mul15(breath, 250), makeup);  // up to 0.03 of hiss

    // Bell: radiation. The bell passes the bore's pressure and, rising with
    // frequency, its slope: 0.4 to 8 times the difference, half that on the crumhorn.
    // Both carry the output's makeup gain (x0.83), as do the formant and the hiss.
    b.shelf = mul15(mul15(1638 + mul15(bell, 31130), 32768 - mul15(crum, 16384)), makeup);  // Q12
    b.body = mul15(32767 - mul15(bell, 13107), makeup);               // (1 .. 0.6) x 0.83, Q15
    // A nasal formant: about 2.3 kHz on the shawm sliding to 1.1 kHz on the crumhorn.
    // Chamberlin coefficient 2 sin(pi f / fs): 0.326 .. 0.157.
    b.formant_f = 10690 - mul15(crum, 5530);
    b.formant_q = 16384 - mul15(crum, 6554);                          // damping 0.5 .. 0.3
    b.formant_mix = mul15(9830 + mul15(crum, 16384), makeup);         // (0.3 .. 0.8) x 0.83

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
//
// Specialised so the loop holds only what it needs (the Blackfin has eight data
// registers): Taps is 1 (the long tap alone: Crum 0), 2 (the short tap alone:
// Crum full) or 3 (both); Glide is false for a steady pitch, when each tap's
// fraction is the same for the whole block and its position only counts up.
// Every variant computes exactly what the general one did.
template <int Taps, bool Glide>
inline void bore_pass(Voice& v, const Block& b, i32* __restrict io) {
    const u32 mask = bore_length - 1;
    u32 write = v.write;
    i32 low = v.low, leak = v.leak;
    const i32 gl = b.gain_long, gs = b.gain_short, k = b.loss_k, kd = b.leak_k;
    const i32 offset = b.offset, slope = b.slope;
    u32 dl = static_cast<u32>(b.tap_long), ds = static_cast<u32>(b.tap_short);
    const u32 sl = static_cast<u32>(b.step_long), ss = static_cast<u32>(b.step_short);
    // Steady pitch: the read positions and fractions once per block.
    u32 rl = ((write << 16) - dl) >> 16, rs = ((write << 16) - ds) >> 16;
    const i32 fl0 = static_cast<i32>((((write << 16) - dl) >> 1) & 0x7fff);
    const i32 fs0 = static_cast<i32>((((write << 16) - ds) >> 1) & 0x7fff);
    i16* const bore = v.bore;
    for (unsigned i = 0; i != opxy::block_frames; ++i) {
        i32 returning = 0;
        if (Glide) {
            // Fractional taps: linear interpolation between neighbours.
            const u32 pl = (write << 16) - dl, ps = (write << 16) - ds;
            dl += sl;
            ds += ss;
            if (Taps & 1) {
                const i32 l0 = bore[(pl >> 16) & mask], l1 = bore[((pl >> 16) + 1) & mask];
                returning += mul15(l0 + mul15(l1 - l0, static_cast<i32>((pl >> 1) & 0x7fff)), gl);
            }
            if (Taps & 2) {
                const i32 s0 = bore[(ps >> 16) & mask], s1 = bore[((ps >> 16) + 1) & mask];
                returning -= mul15(s0 + mul15(s1 - s0, static_cast<i32>((ps >> 1) & 0x7fff)), gs);
            }
        } else {
            if (Taps & 1) {
                const i32 l0 = bore[rl & mask], l1 = bore[(rl + 1) & mask];
                returning += mul15(l0 + mul15(l1 - l0, fl0), gl);
                ++rl;
            }
            if (Taps & 2) {
                const i32 s0 = bore[rs & mask], s1 = bore[(rs + 1) & mask];
                returning -= mul15(s0 + mul15(s1 - s0, fs0), gs);
                ++rs;
            }
        }
        low += mul15(returning - low, k);                             // bore losses
        leak += mul15(low - leak, kd);                                // no DC in the loop
        const i32 p = io[i];
        const i32 dp = clamp(low - leak - p, -40000, 40000);          // across the reed
        const i32 r = clamp(offset + ((slope * dp) >> 14), -32768, 32767);  // the reed's reflection
        const i32 j = clamp(p + ((dp * r) >> 15), -limit, limit);
        bore[write & mask] = static_cast<i16>(j);
        io[i] = j;
        ++write;
    }
    v.write = write & mask;
    v.low = low;
    v.leak = leak;
}

template <int Taps>
inline void bore_pass(Voice& v, const Block& b, i32* __restrict io) {
    if (b.step_long | b.step_short) bore_pass<Taps, true>(v, b, io);
    else bore_pass<Taps, false>(v, b, io);
}

inline void bore_pass(Voice& v, const Block& b, i32* __restrict io) {
    if (b.gain_short == 0) bore_pass<1>(v, b, io);
    else if (b.gain_long == 0) bore_pass<2>(v, b, io);
    else bore_pass<3>(v, b, io);
}

// Pass 3: the bell. Radiation for projection, a nasal formant and the air, in
// three short loops (each holds only its own state; same arithmetic, same order).
template <bool airy>
inline void bell_pass(Voice& v, const Block& b, i32* __restrict io) {
    {   // Radiation: the pressure (less its DC: the mouth's steady pressure stays in
        // the instrument, a blocker at ~7 Hz) plus its slope.
        i32 previous = v.tone_low, dc = v.radiated_dc;
        const i32 shelf = b.shelf, body = b.body;
        for (unsigned i = 0; i != opxy::block_frames; ++i) {
            const i32 x = io[i];
            dc += x - (dc >> 10);
            const i32 ac = x - (dc >> 10);
            io[i] = mul15(ac, body) + (((x - previous) * shelf) >> 12);
            previous = x;
        }
        v.tone_low = previous;
        v.radiated_dc = dc;
    }
    {   // The nasal formant: a Chamberlin state-variable bandpass, input halved for headroom.
        i32 lo = v.nasal_low, band = v.nasal_band;
        const i32 f = b.formant_f, q = b.formant_q, mix = b.formant_mix;
        for (unsigned i = 0; i != opxy::block_frames; ++i) {
            const i32 shaped = io[i];
            lo += mul15(band, f);
            const i32 high = (shaped >> 1) - lo - mul15(band, q) * 2;
            band = clamp(band + mul15(high, f), -40000, 40000);
            const i32 y = shaped + mul15(band, mix);
            io[i] = airy ? y : clamp(y >> 1, -2 * one, 2 * one);
        }
        v.nasal_low = lo;
        v.nasal_band = band;
    }
    if (airy) {   // The air: white noise's bright, airy band.
        i32 air = v.air;
        u32 noise = v.noise ^ 0x5bd1e995u;
        const i32 hiss = b.air;
        for (unsigned i = 0; i != opxy::block_frames; ++i) {
            noise = noise * 1664525u + 1013904223u;
            const i32 n = static_cast<i32>(noise) >> 18;              // Q14 white
            io[i] = clamp((io[i] + mul15(n - air, hiss)) >> 1, -2 * one, 2 * one);
            air = n;
        }
        v.air = air;
    }
}

// Echo: feedback 0.2..0.7 through a dark lowpass (about 1 kHz), wet up to 0.55.
// Adds its wet signal to wet and to signal (the hall hears the echoes).
inline void echo_step(Voice& v, const Block& b, i32* __restrict signal, i32* __restrict wet) {
    const i32 feedback = 6554 + mul15(b.echo, 16384), mix = mul15(b.echo, 18022);
    i16* const line = v.echo;
    u32 at = v.echo_write;
    i32 low = v.echo_low;
    for (unsigned f = 0; f != opxy::block_frames / 4; ++f) {
        const i32 back = line[at];
        low += mul15(back - low, 18000);
        line[at] = static_cast<i16>(clamp(signal[f] + mul15(low, feedback), -limit, limit));
        at = at + 1 == echo_length ? 0 : at + 1;
        const i32 echoed = mul15(back, mix);
        wet[f] += echoed;
        signal[f] += echoed;
    }
    v.echo_write = at;
    v.echo_low = low;
}

// One allpass diffuser (g = 0.6) over the block, in place.
inline void diffuse(i16* __restrict line, u32 length, u32& index, i32* __restrict x) {
    u32 at = index;
    for (unsigned f = 0; f != opxy::block_frames / 4; ++f) {
        const i32 a = line[at];
        const i32 u = clamp(x[f] + mul15(a, 19661), -limit, limit);
        line[at] = static_cast<i16>(u);
        x[f] = a - mul15(u, 19661);
        at = at + 1 == length ? 0 : at + 1;
    }
    index = at;
}

// Reads a Hall line's block of outputs, damps them into damped, and adds the
// line's share of the wet output (its sign in the output mix) to sum.
template <int Sign>
inline void hall_read(const i16* __restrict line, u32 length, u32 index, i32& damp, i32 damping,
                      i32* __restrict damped, i32* __restrict sum) {
    u32 at = index;
    i32 d = damp;
    for (unsigned f = 0; f != opxy::block_frames / 4; ++f) {
        const i32 x = line[at];
        d += mul15(x - d, damping);
        damped[f] = d;
        sum[f] += Sign * x;
        at = at + 1 == length ? 0 : at + 1;
    }
    damp = d;
}

// Writes a Hall line: the diffused input plus its row of the Hadamard mix of the
// damped outputs (rows: ++++, +-+-, ++--, +--+), times the decay gain.
template <int B, int C, int D>
inline void hall_write(i16* __restrict line, u32 length, u32& index, const i32* __restrict in, i32 decay,
                       const i32* __restrict d0, const i32* __restrict d1, const i32* __restrict d2,
                       const i32* __restrict d3) {
    u32 at = index;
    for (unsigned f = 0; f != opxy::block_frames / 4; ++f) {
        const i32 mixed = (d0[f] + B * d1[f] + C * d2[f] + D * d3[f]) >> 1;
        line[at] = static_cast<i16>(clamp(in[f] + mul15(mixed, decay), -limit, limit));
        at = at + 1 == length ? 0 : at + 1;
    }
    index = at;
}

// Hall: two diffusers into four lines mixed by a Hadamard matrix. Decay gain
// 0.70..0.92 (about 0.7 to 3 s), damping in every line, wet up to 0.75.
inline void hall_step(Voice& v, const Block& b, const i32* __restrict signal, i32* __restrict wet) {
    const unsigned frames = opxy::block_frames / 4;
    const i32 decay = 22938 + mul15(b.hall, 7209), mix = mul15(b.hall, 24576);
    const i32 damping = 21299 - mul15(b.hall, 6554);                  // brighter when short, darker when long
    i16* const l0 = v.hall;
    i16* const l1 = l0 + 293;
    i16* const l2 = l1 + 359;
    i16* const l3 = l2 + 431;
    i16* const a0 = l3 + 499;
    i16* const a1 = a0 + 61;
    i32 in[frames], sum[frames], d0[frames], d1[frames], d2[frames], d3[frames];
    for (unsigned f = 0; f != frames; ++f) { in[f] = signal[f] >> 1; sum[f] = 0; }
    diffuse(a0, 61, v.hall_index[4], in);
    diffuse(a1, 97, v.hall_index[5], in);
    hall_read<1>(l0, 293, v.hall_index[0], v.damp[0], damping, d0, sum);
    hall_read<1>(l1, 359, v.hall_index[1], v.damp[1], damping, d1, sum);
    hall_read<-1>(l2, 431, v.hall_index[2], v.damp[2], damping, d2, sum);
    hall_read<1>(l3, 499, v.hall_index[3], v.damp[3], damping, d3, sum);
    hall_write<1, 1, 1>(l0, 293, v.hall_index[0], in, decay, d0, d1, d2, d3);     // s + u
    hall_write<-1, 1, -1>(l1, 359, v.hall_index[1], in, decay, d0, d1, d2, d3);   // t + w
    hall_write<1, -1, -1>(l2, 431, v.hall_index[2], in, decay, d0, d1, d2, d3);   // s - u
    hall_write<-1, -1, 1>(l3, 499, v.hall_index[3], in, decay, d0, d1, d2, d3);   // t - w
    for (unsigned f = 0; f != frames; ++f) wet[f] += mul15(sum[f] >> 1, mix);
}

// Pass 4: Echo and Hall at a quarter of the audio rate, then the output.
// Zero on either is a true bypass: its line is neither read nor written.
const u32 clear_steps = 8;
inline void space_pass(Voice& v, const Block& b, const i32* __restrict dry, opxy::Output output) {
    // A line coming into use starts silent rather than replaying an old tail. It is
    // cleared an eighth per block (at most 602 words a block, never the whole line at
    // once) and the effect joins when it is clean: 11.6 ms after it is turned up.
    if (b.echo > 0) {
        if (v.echo_used < clear_steps) {
            const u32 from = v.echo_used * (echo_length / clear_steps);
            for (u32 i = from; i < from + echo_length / clear_steps; ++i) v.echo[i] = 0;
            v.echo_low = 0;
            ++v.echo_used;
        }
    } else {
        v.echo_used = 0;
    }
    if (b.hall > 0) {
        if (v.hall_used < clear_steps) {
            const u32 chunk = (hall_total + clear_steps - 1) / clear_steps;
            const u32 from = v.hall_used * chunk, to = from + chunk < hall_total ? from + chunk : hall_total;
            for (u32 i = from; i < to; ++i) v.hall[i] = 0;
            for (u32 l = 0; l < hall_lines; ++l) v.damp[l] = 0;
            ++v.hall_used;
        }
    } else {
        v.hall_used = 0;
    }
    const bool echo_on = v.echo_used == clear_steps, hall_on = v.hall_used == clear_steps;
    if (!echo_on && !hall_on) {
        v.wet = 0;
        for (unsigned i = 0; i != opxy::block_frames; ++i) output[i] = loud(dry[i]);
        return;
    }

    const unsigned frames = opxy::block_frames / 4;
    // Each step below is its own short loop over the block's 16 quarter-rate
    // frames, holding only its own state: one loop doing everything at once kept
    // too many values for the Blackfin's registers. Every line is longer than a
    // block, so a block's reads never see its own writes: the result is exactly
    // that of the frame-by-frame loop.
    i32 signal[frames], wet_now[frames];
    for (unsigned f = 0; f != frames; ++f) {
        signal[f] = (dry[4 * f] + dry[4 * f + 1] + dry[4 * f + 2] + dry[4 * f + 3]) >> 2;
        wet_now[f] = 0;
    }
    if (echo_on) echo_step(v, b, signal, wet_now);
    if (hall_on) hall_step(v, b, signal, wet_now);
    // Back to the audio rate: a straight line from the previous wet sample.
    i32 wet = v.wet;
    for (unsigned f = 0; f != frames; ++f) {
        const i32 now = wet_now[f];
        for (unsigned k = 0; k != 4; ++k) {
            const i32 y = dry[4 * f + k] + wet + (((now - wet) * static_cast<i32>(k + 1)) >> 2);
            output[4 * f + k] = loud(y);
        }
        wet = now;
    }
    v.wet = wet;
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
