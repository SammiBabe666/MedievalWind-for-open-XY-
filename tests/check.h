// Shared helpers for Medieval Wind's host tests. Tests use require(), never assert.
#pragma once
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

static inline void require(bool ok, const char* message) {
    if (!ok) {
        std::fprintf(stderr, "FAIL %s\n", message);
        std::exit(1);
    }
}

static const int peak = 1073741824;  // definition.json outputPeakQ31

// Q31 control word for a normalised value.
static inline int q31(double value) { return static_cast<int>(std::lrint(value * 2147483647.0)); }

// Phase increment for a MIDI note at 44.1 kHz.
static inline unsigned increment(double midi) {
    return static_cast<unsigned>(std::llrint(440.0 * std::pow(2.0, (midi - 69) / 12) / 44100 * 4294967296.0));
}

// Goertzel magnitude of one frequency over a buffer of doubles.
static inline double magnitude(const double* x, unsigned n, double hz) {
    const double w = 2 * 3.14159265358979323846 * hz / 44100, c = 2 * std::cos(w);
    double s1 = 0, s2 = 0;
    for (unsigned i = 0; i < n; ++i) {
        const double s0 = x[i] + c * s1 - s2;
        s2 = s1;
        s1 = s0;
    }
    return std::sqrt(std::fabs(s1 * s1 + s2 * s2 - c * s1 * s2)) / n;
}

// Fundamental estimate: the strongest Goertzel bin within +-60 cents of the
// expected pitch, refined to 0.1 cent.
static inline double cents_off(const double* x, unsigned n, double hz) {
    double best = -1, at = 0;
    for (double c = -60; c <= 60; c += 0.5) {
        const double m = magnitude(x, n, hz * std::pow(2.0, c / 1200));
        if (m > best) { best = m; at = c; }
    }
    for (double c = at - 0.5; c <= at + 0.5; c += 0.05) {
        const double m = magnitude(x, n, hz * std::pow(2.0, c / 1200));
        if (m > best) { best = m; at = c; }
    }
    return at;
}

static inline double rms(const double* x, unsigned n) {
    double e = 0, mean = 0;
    for (unsigned i = 0; i < n; ++i) mean += x[i];
    mean /= n;
    for (unsigned i = 0; i < n; ++i) e += (x[i] - mean) * (x[i] - mean);
    return std::sqrt(e / n);
}
