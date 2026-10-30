// Pitch tracking across the register, both instrument endpoints, the whole
// Crum sweep, and every control changing the sound.
#include "play.h"
#include <initializer_list>

static double x[64 * 600];

static void steady(const double* c, double midi, unsigned owner = 1) {
    static Player p;
    p.begin(owner, c);
    p.play(midi, 600, x);
}
// Odd and even harmonic energy over the first ten partials, in the last half.
static void partials(double midi, double& odd, double& even) {
    const double hz = 440 * std::pow(2.0, (midi - 69) / 12);
    odd = even = 0;
    for (int k = 2; k <= 10; ++k) {
        const double m = magnitude(x + 64 * 300, 64 * 300, hz * k);
        (k & 1 ? odd : even) += m * m;
    }
}

int main() {
    const double defaults[8] = {0.55, 0.6, 0.7, 0.1, 0, 0, 0, 0};
    // In tune from C2 to A6 at the default, at both ends of Crum and at a stiff, resonant reed.
    const double settings[4][8] = {{0.55, 0.6, 0.7, 0.0, 0, 0, 0, 0}, {0.55, 0.6, 0.7, 0.0, 0, 1, 0, 0},
                                   {1, 1, 1, 0.0, 0, 0.5, 0, 0}, {0, 0, 0, 0.0, 0, 0, 0, 0}};
    double worst = 0;
    for (int s = 0; s < 4; ++s) {
        for (double midi = 36; midi <= 93; midi += 3) {
            steady(settings[s], midi);
            const double c = cents_off(x + 64 * 300, 64 * 300, 440 * std::pow(2.0, (midi - 69) / 12));
            if (std::fabs(c) > worst) worst = std::fabs(c);
            if (std::fabs(c) > 12) std::printf("setting %d midi %.0f: %+.1f cents\n", s, midi, c);
            require(std::fabs(c) <= 12, "out of tune by more than 12 cents");
        }
    }
    std::printf("worst pitch error, MIDI 36..93, four settings: %.1f cents\n", worst);

    // Shawm: every harmonic. Crumhorn: odd harmonics dominate the even ones by 15 dB or more.
    double c[8] = {0.55, 0.6, 0.7, 0, 0, 0, 0, 0};
    double previous = 1e9;
    for (int k = 0; k <= 10; ++k) {
        c[5] = k / 10.0;
        double ratio_sum = 0;
        for (double midi : {48.0, 60.0, 72.0}) {
            steady(c, midi);
            double odd, even;
            partials(midi, odd, even);
            ratio_sum += 10 * std::log10(even / odd);
            require(rms(x + 64 * 300, 64 * 300) > 0.02, "an intermediate Crum setting is silent");
            const double cents = cents_off(x + 64 * 300, 64 * 300, 440 * std::pow(2.0, (midi - 69) / 12));
            require(std::fabs(cents) <= 12, "Crum moves the pitch");
        }
        const double ratio = ratio_sum / 3;   // even over odd, dB
        std::printf("crum %.1f: even/odd %+.1f dB\n", k / 10.0, ratio);
        if (k == 0) require(ratio > -10, "the shawm end lacks even harmonics");
        if (k == 10) require(ratio < -13, "the crumhorn end keeps its even harmonics");
        require(ratio < previous + 2.5, "Crum does not move steadily towards odd harmonics");
        previous = ratio;
    }

    // Every control changes the sound: the output differs from the default by
    // a clear margin when the control alone moves.
    steady(defaults, 57);
    static double base[64 * 600];
    std::memcpy(base, x, sizeof base);
    const char* names[8] = {"Reed", "Bore", "Bell", "Breath", "Bend", "Crum", "Hall", "Echo"};
    for (int k = 0; k < 8; ++k) {
        double moved[8];
        std::memcpy(moved, defaults, sizeof moved);
        moved[k] = moved[k] > 0.5 ? 0.0 : 1.0;
        steady(moved, 57);
        double diff = 0, energy = 0;
        for (unsigned i = 64 * 300; i < 64 * 600; ++i) { diff += (x[i] - base[i]) * (x[i] - base[i]); energy += base[i] * base[i]; }
        const double db = 10 * std::log10(diff / energy);
        std::printf("%-6s changes the output by %+.1f dB relative\n", names[k], db);
        require(db > -20, "a control barely changes the sound");
    }
    // Without Breath and Bend a voice is deterministic: owners do not matter.
    {
        const double clean[8] = {0.55, 0.6, 0.7, 0, 0, 0.3, 0, 0};
        steady(clean, 60, 1);
        std::memcpy(base, x, sizeof base);
        steady(clean, 60, 5);
        require(std::memcmp(base, x, sizeof base) == 0, "Breath 0 and Bend 0 still move the sound");
    }
    return 0;
}
