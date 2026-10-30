// Hall and Echo: zero is a true bypass, both really process audio (they carry
// an old note on after the pitch changes), Echo repeats at its 278.6 ms, and
// full feedback stays bounded and steady.
#include "play.h"

static Player p;
static double x[64 * 900];

// Energy of the old pitch after a legato change of note, in a window of ms.
static double lingering(double hall, double echo, double from_ms, double to_ms) {
    const double c[8] = {0.55, 0.6, 0.7, 0, 0, 0, hall, echo};
    p.begin(1, c);
    p.play(57, 400, x);             // A3
    p.play(64, 500, x + 64 * 400);  // E4, same voice, no new note: the bore follows at once
    const unsigned at = 64 * 400 + static_cast<unsigned>(from_ms * 44.1);
    const unsigned n = static_cast<unsigned>((to_ms - from_ms) * 44.1);
    const double old = magnitude(x + at, n, 220.0), now = magnitude(x + 64 * 600, 64 * 200, 329.63);
    return 20 * std::log10(old / now);
}

int main() {
    // True bypass: at zero neither line is touched.
    {
        const double c[8] = {0.55, 0.6, 0.7, 0.3, 0.3, 0.5, 0, 0};
        p.begin(1, c);
        p.play(60, 300);
        bool clean = !p.voice.echo_used && !p.voice.hall_used;
        for (unsigned i = 0; i < medievalwind::echo_length; ++i) clean = clean && p.voice.echo[i] == 0;
        for (unsigned i = 0; i < medievalwind::hall_total; ++i) clean = clean && p.voice.hall[i] == 0;
        require(clean, "Hall 0 and Echo 0 still run their lines");
    }
    // The old note is carried on by Hall; Echo holds it until its delay has
    // passed, then repeats it once more, quieter (feedback 0.34 at Echo 0.4).
    const double dry = lingering(0, 0, 60, 250);
    const double hall = lingering(1, 0, 60, 250);
    const double echo_held = lingering(0, 0.4, 150, 260);
    const double echo_repeat = lingering(0, 0.4, 300, 540);
    std::printf("old note 60-250 ms after the change: dry %.1f dB, hall %.1f dB\n", dry, hall);
    std::printf("echo 0.4: 150-260 ms %.1f dB, after its delay 300-540 ms %.1f dB\n", echo_held, echo_repeat);
    require(hall > dry + 12, "Hall does not carry sound on");
    require(echo_held > dry + 12, "Echo does not carry sound on");
    require(echo_held > echo_repeat + 5, "Echo's repeat is not at its delay");
    require(echo_repeat > dry + 6, "Echo does not feed back");

    // Full Hall and Echo on the loudest setting for a minute: bounded (checked
    // in play) and steady, not growing.
    {
        const double c[8] = {1, 1, 1, 1, 1, 0.3, 1, 1};
        p.begin(4, c);
        double first = 0, last = 0;
        for (unsigned chunk = 0; chunk < 46; ++chunk) {   // 46 x 900 blocks: about 60 s
            p.play(chunk % 3 ? 52 : 59, 900, x);
            const double r = rms(x, 64 * 900);
            if (chunk == 1) first = r;
            if (chunk == 45) last = r;
        }
        std::printf("full Hall and Echo for a minute: rms %.3f then %.3f\n", first, last);
        require(last < first * 1.5, "the effects build up");
    }
    // Turning an effect off and on again starts its line clean: no old tail.
    {
        double c[8] = {0.55, 0.6, 0.7, 0, 0, 0, 1, 1};
        p.begin(2, c);
        p.play(48, 400);
        c[6] = c[7] = 0;
        p.set(c);
        p.play(48, 40);
        require(!p.voice.echo_used && !p.voice.hall_used, "an effect at zero keeps running");
        c[6] = c[7] = 1;
        p.set(c);
        p.play(48, 8);   // cleared an eighth a block; the effects join on the eighth
        unsigned written = 0;   // only the block just rendered may be in the line: 16 quarter-rate samples
        for (unsigned i = 0; i < medievalwind::echo_length; ++i) written += p.voice.echo[i] != 0;
        const bool cleared = written <= 16;
        require(cleared && p.voice.echo_used == 8 && p.voice.hall_used == 8, "an effect does not restart");
    }
    return 0;
}
