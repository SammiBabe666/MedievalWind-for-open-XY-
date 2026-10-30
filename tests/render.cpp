// Medieval Wind's exact output: a fixed workload of random and extreme controls,
// pitch steps and bends, retriggers and steals, hashed. Integer DSP makes it
// bit-exact on every compiler. Any change to the sound fails here until the
// new hash is recorded.
#include "../engine.cpp"
#include "check.h"

int main() {
    using namespace medievalwind;
    unsigned seed = 12345, hash = 2166136261u;
    static Voice voice;
    Shared shared;
    for (int scene = 0; scene < 200; ++scene) {
        initialize(voice, shared, static_cast<u32>(scene % 9 + 1));
        start(voice, shared, static_cast<u32>(scene % 9 + 1));
        i32 p[8];
        for (int c = 0; c < 8; ++c) {
            seed = seed * 1664525u + 1013904223u;
            p[c] = scene % 5 == 0 ? static_cast<i32>(seed & 0x7fffffff) * static_cast<i32>((seed >> 3) & 1)
                                  : static_cast<i32>(seed >> 1);
        }
        if (scene % 7 == 0)
            for (int c = 0; c < 8; ++c) p[c] = (c * 17 + scene) % 3 == 0 ? 0 : 0x7fffffff;
        const u32 base = 4000000u + static_cast<u32>(scene * 2654435761u % 300000000u);
        for (int block = 0; block < 80; ++block) {
            u32 pitch[64];
            i32 out[64];
            for (int i = 0; i < 64; ++i)
                pitch[i] = base + (scene % 3 == 0 ? static_cast<u32>(block * 20000) : 0u);
            if (block == 40 && scene % 4 == 0) start(voice, shared, 1);
            if (block % 20 == 10)
                for (int c = 0; c < 8; ++c) p[c] ^= 0x15555555;
            render(voice, shared, 0, out, p, pitch);
            for (int i = 0; i < 64; ++i) {
                hash ^= static_cast<unsigned>(out[i]);
                hash *= 16777619u;
            }
        }
    }
    std::printf("render hash 0x%08x\n", hash);
    require(hash == 0x6fc11dc5u, "render output changed");
    return 0;
}
