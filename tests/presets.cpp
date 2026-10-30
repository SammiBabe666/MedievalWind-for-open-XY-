// The ten shipped presets: audible, bounded, free of DC, played as eight-voice
// chords with stolen voices and pitch bends, and different from one another.
// Keep in step with definition.json (tests/check_release.py compares them).
#include "play.h"

struct Preset { const char* name; double values[8]; };
static const unsigned preset_count = 10;
static const Preset presets[preset_count] = {
    {"Court Shawm", {0.55, 0.6, 0.7, 0.1, 0.0, 0.0, 0.0, 0.0}},
    {"Blackwood", {0.4, 0.45, 0.12, 0.15, 0.1, 0.2, 0.15, 0.0}},
    {"Hollow Procession", {0.9, 0.85, 0.95, 0.1, 0.05, 0.0, 0.3, 0.25}},
    {"Chapel Reed", {0.5, 0.7, 0.5, 0.2, 0.3, 0.15, 0.8, 0.0}},
    {"The Crumhorn", {0.7, 0.6, 0.3, 0.05, 0.0, 1.0, 0.1, 0.0}},
    {"The Kings Fool", {1.0, 0.5, 0.8, 0.3, 0.75, 0.45, 0.1, 0.3}},
    {"Moth in the Belfry", {0.2, 0.35, 0.35, 0.85, 0.5, 0.55, 0.75, 0.45}},
    {"The Black Court", {0.85, 1.0, 0.25, 0.25, 0.2, 0.75, 0.55, 0.2}},
    {"Pilgrims Drone", {0.35, 0.8, 0.2, 0.3, 0.1, 0.65, 0.45, 0.0}},
    {"Last Light Through Stone", {0.45, 0.55, 0.45, 0.6, 0.6, 0.3, 1.0, 0.55}},
};

// A few features of each preset's sound: level, brightness, even/odd balance, noise.
struct Features { double rms, centroid, evenodd, noise; };

int main() {
    static medievalwind::Voice voices[8];
    static medievalwind::Shared shared;
    static double solo[64 * 500];
    Features f[preset_count];
    for (unsigned k = 0; k < preset_count; ++k) {
        opxy::i32 parameters[8], output[64];
        opxy::u32 pitch[64];
        for (unsigned c = 0; c < 8; ++c) parameters[c] = q31(presets[k].values[c]);
        std::memset(voices, 0, sizeof voices);
        for (unsigned v = 0; v < 8; ++v) { medievalwind::initialize(voices[v], shared, v + 1); medievalwind::start(voices[v], shared, v + 1); }
        double sum = 0, energy = 0;
        unsigned count = 0;
        for (unsigned block = 0; block < 1200; ++block) {
            if (block % 150 == 75) {   // a stolen voice starts again for its new owner
                const unsigned v = (block / 150) & 7;
                medievalwind::initialize(voices[v], shared, 20 + block);
                medievalwind::start(voices[v], shared, 20 + block);
            }
            for (unsigned v = 0; v < 8; ++v) {
                const opxy::u32 base = increment(45 + 4 * v);
                for (unsigned i = 0; i < 64; ++i) pitch[i] = block >= 800 ? base + ((block * 131u + i * 977u) & 0x7ffffu) : base;
                medievalwind::render(voices[v], shared, v + 1, output, parameters, pitch);
                for (unsigned i = 0; i < 64; ++i) {
                    require(output[i] >= -peak && output[i] <= peak, "a preset exceeds the declared peak");
                    if (block > 60) { sum += output[i]; energy += static_cast<double>(output[i]) * output[i]; ++count; }
                }
            }
        }
        const double level = std::sqrt(energy / count) / peak, dc = sum / count / peak;
        require(level > 0.03, "a preset is too quiet");
        require(std::fabs(dc) < 0.01, "a preset carries DC");
        // One voice alone at A3 for its features.
        static Player p;
        p.begin(1, presets[k].values);
        p.play(57, 500, solo);
        const double* s = solo + 64 * 250;
        const unsigned n = 64 * 250;
        double num = 0, den = 0, odd = 0, even = 0;
        for (int h = 1; h <= 16; ++h) {
            const double m = magnitude(s, n, 220.0 * h);
            num += h * m;
            den += m;
            if (h > 1) (h & 1 ? odd : even) += m * m;
        }
        const double between = magnitude(s, n, 220.0 * 7.5) + magnitude(s, n, 220.0 * 11.5) + magnitude(s, n, 220.0 * 15.5);
        f[k].rms = rms(s, n);
        f[k].centroid = num / den;
        f[k].evenodd = 10 * std::log10(even / odd);
        f[k].noise = 20 * std::log10(between / den + 1e-9);
        std::printf("%-26s chord rms %.3f dc %+.4f | solo rms %.3f, centroid h%.2f, even/odd %+5.1f dB, air %+5.1f dB\n",
                    presets[k].name, level, dc, f[k].rms, f[k].centroid, f[k].evenodd, f[k].noise);
    }
    // No two presets sound alike: they differ clearly in at least one feature.
    for (unsigned a = 0; a < preset_count; ++a)
        for (unsigned b = a + 1; b < preset_count; ++b) {
            const double d = std::fabs(f[a].centroid - f[b].centroid) / 0.4 + std::fabs(f[a].evenodd - f[b].evenodd) / 6 +
                             std::fabs(f[a].noise - f[b].noise) / 6 + std::fabs(20 * std::log10(f[a].rms / f[b].rms)) / 4;
            if (d < 1) std::printf("too alike: %s and %s (%.2f)\n", presets[a].name, presets[b].name, d);
            require(d >= 1, "two presets sound alike");
        }
    return 0;
}
