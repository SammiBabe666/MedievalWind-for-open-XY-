// Offline audition: renders a score through the real engine to a 16-bit WAV.
// Host only (never part of the machine build). Stands in for the OP-XY's amp
// envelope with a short attack and an exponential release; no stock filter or FX.
//
//   g++ -std=c++11 -O2 -I../open-xy/sdk/include -I. production/render.cc -o render
//   ./render score.txt out.wav [gain]
//
// Score lines (seconds, MIDI note, eight controls 0..1):
//   note <start> <length> <midi> <reed> <bore> <bell> <breath> <bend> <crum> <hall> <echo> [ramp <index> <to>]
//   release <seconds>          release time constant for the following notes
// A ramp moves one control linearly from its value to <to> over the note's length.
#include "../engine.cpp"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

struct Note { double start, length, midi; double values[8]; int ramp; double to; double release; };

int main(int argc, char** argv) {
    if (argc < 3) { std::fprintf(stderr, "usage: render score.txt out.wav [gain]\n"); return 2; }
    const double gain = argc > 3 ? std::atof(argv[3]) : 2.2;
    std::FILE* in = std::fopen(argv[1], "r");
    if (!in) { std::perror(argv[1]); return 2; }
    std::vector<Note> notes;
    double release = 0.25, end = 0;
    char line[512];
    while (std::fgets(line, sizeof line, in)) {
        char word[32];
        if (std::sscanf(line, "%31s", word) != 1 || word[0] == '#') continue;
        if (!std::strcmp(word, "release")) { std::sscanf(line, "%*s %lf", &release); continue; }
        if (std::strcmp(word, "note")) continue;
        Note n = {};
        n.ramp = -1;
        int used = 0;
        const int got = std::sscanf(line, "%*s %lf %lf %lf %lf %lf %lf %lf %lf %lf %lf %lf%n", &n.start, &n.length, &n.midi,
                                    &n.values[0], &n.values[1], &n.values[2], &n.values[3], &n.values[4], &n.values[5],
                                    &n.values[6], &n.values[7], &used);
        if (got != 11) { std::fprintf(stderr, "bad note line: %s", line); return 2; }
        std::sscanf(line + used, " ramp %d %lf", &n.ramp, &n.to);
        n.release = release;
        notes.push_back(n);
        const double tail = n.start + n.length + release * 7;
        if (tail > end) end = tail;
    }
    std::fclose(in);
    const unsigned rate = 44100, blocks = static_cast<unsigned>(end * rate / 64) + 1;
    std::vector<float> mix(blocks * 64, 0.0f);
    static medievalwind::Voice voice;
    medievalwind::Shared shared;
    for (size_t k = 0; k < notes.size(); ++k) {
        const Note& n = notes[k];
        std::memset(&voice, 0, sizeof voice);
        medievalwind::initialize(voice, shared, static_cast<opxy::u32>(k % 8 + 1));
        medievalwind::start(voice, shared, static_cast<opxy::u32>(k % 8 + 1));
        const unsigned first = static_cast<unsigned>(n.start * rate / 64);
        const unsigned gate = static_cast<unsigned>(n.length * rate / 64);
        const unsigned last = gate + static_cast<unsigned>(n.release * 7 * rate / 64);
        const double hz = 440.0 * std::pow(2.0, (n.midi - 69) / 12);
        const opxy::u32 inc = static_cast<opxy::u32>(std::llrint(hz / rate * 4294967296.0));
        double level = 0;
        for (unsigned b = 0; b < last && first + b < blocks; ++b) {
            opxy::i32 p[8];
            const double t = gate ? std::fmin(1.0, static_cast<double>(b) / gate) : 1.0;
            for (int c = 0; c < 8; ++c) {
                double value = n.values[c];
                if (c == n.ramp) value += (n.to - value) * t;
                p[c] = static_cast<opxy::i32>(std::lrint(std::fmin(1, std::fmax(0, value)) * 2147483647.0));
            }
            opxy::u32 pitch[64];
            opxy::i32 out[64];
            for (int i = 0; i < 64; ++i) pitch[i] = inc;
            medievalwind::render(voice, shared, 1, out, p, pitch);
            for (int i = 0; i < 64; ++i) {
                const bool held = b < gate;
                if (held) level += (1.0 - level) * (1.0 / (0.006 * rate));
                else level -= level * (1.0 / (n.release * rate));
                mix[(first + b) * 64 + i] += static_cast<float>(out[i] / 2147483648.0 * level);
            }
        }
    }
    // Gain: the engine peaks at a quarter of full scale; mixes of notes add.
    float top = 0;
    for (size_t i = 0; i < mix.size(); ++i) top = std::fmax(top, std::fabs(mix[i]));
    std::printf("peak before gain %.4f\n", top);
    std::FILE* out = std::fopen(argv[2], "wb");
    if (!out) { std::perror(argv[2]); return 2; }
    const unsigned count = static_cast<unsigned>(mix.size()), bytes = count * 2;
    const unsigned char header[44] = {'R', 'I', 'F', 'F', 0, 0, 0, 0, 'W', 'A', 'V', 'E', 'f', 'm', 't', ' ', 16, 0, 0, 0, 1, 0, 1, 0,
                                      0x44, 0xac, 0, 0, 0x88, 0x58, 1, 0, 2, 0, 16, 0, 'd', 'a', 't', 'a', 0, 0, 0, 0};
    unsigned char h[44];
    std::memcpy(h, header, 44);
    const unsigned riff = 36 + bytes;
    for (int i = 0; i < 4; ++i) { h[4 + i] = (riff >> (8 * i)) & 255; h[40 + i] = (bytes >> (8 * i)) & 255; }
    std::fwrite(h, 1, 44, out);
    for (unsigned i = 0; i < count; ++i) {
        const double v = std::fmax(-1.0, std::fmin(1.0, mix[i] * gain));
        const short s = static_cast<short>(std::lrint(v * 32767));
        std::fwrite(&s, 2, 1, out);
    }
    std::fclose(out);
    std::printf("%s: %.2f s\n", argv[2], count / 44100.0);
    return 0;
}
