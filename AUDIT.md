# Medieval Wind: design and validation record

Validated against Open-XY SDK `staging` at `8d4bb49de8a2d72453f0ca247fecbb0aeb0daf27`
(29 October 2026; release 0.0.3, machine format SDK 1.6, OS 1.2.1), the commit
pinned in CI and in the Mac CPU test, the same one Fujara's hardware kit uses.
Reference read: Daath at `a45cbe6`, Fujara at `2143eff`.

**Hardware status: not verified on an OP-XY.** No device audition or CPU
readout exists yet. Everything below is host evidence unless it says otherwise.

A profiling test OS exists: the *Profiling module* workflow (run
41121286241) compiled commit `5de4454` with the pinned Windows tools, and
`tools/profiling/finish_package.py` patched it into the owner's stock OS 1.2.1
off-repository (the SDK's assembler verified byte-for-byte reconstruction of
the stock image). It holds Medieval Wind alone and 83 benchmark cases. The
firmware stays private; only its readout belongs here.

## 1. What was read first

In the SDK: `docs/api.md`, `ux.md`, `display.md`, `preview.md`, `build.md`,
`toolchain.md`, `profiling.md`, `sdk/include/opxy/*.hpp`, the native artwork
validator (`tooling/native.py`), the CPU estimator and the firmware assembler.
In Daath: README, AGENTS, AUDIT, definition, machine.json, core.h, engine.cpp,
display, generators, tests and CI. In Fujara: its hardware tools (Mac kit,
profiling scripts, CI module build) and production scripts.

Taken from them as engineering patterns: fixed-point Q formats, per-block
coefficients, short render passes sized for the Blackfin's eight data
registers (Daath's first release dropped audio when one loop carried ~13 state
values), block-smoothed controls, the SDK two-page header, generators checked
in CI, a bit-exact render hash, sanitizer runs, Fujara's hardware kit and
screen capture through the SDK's own renderer. Not taken: any DSP, mapping,
preset, palette or artwork.

## 2. Synthesis model

See README "How it makes sound". In short: a memoryless clipped reed
(pressure-controlled valve) coupled to a one-line waveguide bore read at P and
an inverted P/2. The tap blend is the shawm-to-crumhorn axis and leaves the
pitch unchanged. Pitch-tracking loss and DC-leak filters keep the timbre
consistent over the register; their phase is computed per block and
compensated. A measured correction removes the beating reed's flattening.

Prototyped first in floating point (tuning the reed curve, the operating
pressure and the tap blend), then written in fixed point. Two reed regimes
were found and handled: below about 1.15 small-signal gain the reed does not
start; blowing past the closing point shuts it for good. The engine computes
the blowing pressure that puts the reed at 97% shut for every Reed/Crum
setting, caps Bend's breath sway at 98.5%, and tongues each note (12 ms of
30% extra pressure) so marginal notes start.

## 3. Host results

All on Linux x86_64, GCC 13 and Clang 18, `-O2`; and again with
`-O1 -fsanitize=undefined,address -Wall -Wextra -Werror` (as CI runs them).

| Check | Result |
| --- | --- |
| `sdk.py test --machine .` | PASS: definition, artwork, preview build, the SDK's ABI, fixed-memory, input-ownership, declared-peak, voice-lifecycle and drawing smoke checks, 7 host tests |
| `tests/check_release.py` | PASS: eight controls in order, ten presets agreeing across definition.json, presets/, the manifest and tests/presets.cpp; deterministic generation; no firmware in the repository |
| Pitch, MIDI 36..93, four settings (default, crumhorn, stiff/resonant, all zero) | Worst error 6.6 cents |
| Crum sweep 0..1 in tenths, MIDI 48/60/72 | Even/odd harmonic balance +11.3 dB (shawm) falling to −15.8 dB (crumhorn); every step sounds and stays in tune |
| Each control alone, default vs moved | Output changes by −9.0 (Reed), −3.4 (Bore), −0.7 (Bell), −4.2 (Breath), +2.4 (Bend), +2.6 (Crum), −3.0 (Hall), −5.1 (Echo) dB relative difference energy |
| Hall/Echo at 0 | Lines never touched (true bypass); re-enabling clears them |
| Hall/Echo process audio | An old note 60–250 ms after a legato change: −39.5 dB dry, −10.9 dB with Hall; Echo holds it to its 278.6 ms delay and repeats it quieter |
| Full Hall + Echo for 60 s | Bounded; RMS 0.144 then 0.130 (no build-up) |
| 256 control corners × 5 pitches (C1..A6), with restarts | Bounded by the declared peak, every one sounding |
| 6,000 blocks of hostile control words and pitches | Bounded |
| 10-minute sustained note at the most driven setting | Keeps sounding, bounded, DC −0.0016 |
| Ten presets as 8-voice chords with steals and bends | Bounded, audible (RMS 0.13–0.21 of the half-scale peak), DC < 0.0004; pairwise distinct |
| Notes | Speak within 50 ms; retriggers, legato and retriggers to a new note don't click; stolen voices start clean |
| Display, 20,000 random frames and a 20-minute hold | Every frame valid; outlines keep 64 distinct points and enclose area; keys change with points; every control changes the artwork; idle and reduced motion still; on screen |
| Bit-exact render | Hash `0x6fc11dc5` on GCC and Clang |

## 4. CPU and memory

**Compiled Blackfin loops** (disassembly from the CI's pinned compile, inner
loops of `render`; instructions per iteration, a bundle counts once; not cycles):

| Build | Largest inner loop | Stack accesses in it | Notes |
| --- | --- | --- | --- |
| `5de4454` (first) | Hall/Echo frame loop, ~430 per quarter-rate frame | ~95 | One loop held both effects; the reed/bore loop was 101 per sample with 4 stack accesses, the bell 70 with 3 |
| `9cd3e4e` (now) | 100 per sample (the two-tap reed/bore loop) | 2 | No inner loop has more than 3 stack accesses; the effect loops are 4 to 28 instructions per frame |

The rewrite changed no output sample (render hash unchanged across it).
Turning an effect on now clears its line over eight blocks (at most 602
words per block), and the pitch-compensation arithmetic refreshes at most every
fourth block while the pitch moves, so no block carries a one-off spike.

- Host-timed estimate (`sdk.py test`): 11,500 to 15,200 Blackfin instructions
  per voice block at the heaviest setting across runs (aim 15,000). A host
  timing scaled by a reference loop, not a device measurement; it does not see
  register pressure, which is why the disassembly is checked as well.
- Memory: 11,860 bytes per voice; 104.2 KiB for 8 voices plus the spare.
- Level: output peak is the platform's half scale; makeup gain rides on the
  bell's per-block coefficients and a 4:1 soft knee replaces the output clamp,
  so the +10.4 dB costs no per-sample work.
- **Pending:** the hardware CPU readout. `voiceCapacity` stays 8 until it is known.

## 5. Design guidance (open-xy PR #260)

Checked against the SDK guidance proposed in
[etcetc000/open-xy#260](https://github.com/etcetc000/open-xy/pull/260)
(docs on design principles, the screen budget and device pitfalls; open, based
on the pinned `8d4bb49`).

| Guidance | Status here |
| --- | --- |
| Outlines enclose area; no turn within 2.5° of straight back; points ≥ 1/8 px apart; closing edge ≥ 1/4 px | `tests/display.cpp` checks every mutable outline across every control and every pair of controls at 0/0.5/1 (1,944 frames) and 20,000 random frames; `tests/check_release.py` checks every authored path. The bell rays' needle tips now end flat |
| Fills only from the artwork | Solid parts are authored with fills; the four mutable outlines are hollow |
| One subpath, at most 64 points per path | Fixed: the arches had 90 points and an underlay 140 (with two repeated points); now at most 64, checked in CI |
| Parts that meet share an outline or a pivot | Partly: the body (scale 2) and bell (scale 1) cannot share an origin within the ±64 px outline extent; both close on the joint, so a sub-pixel offset draws as a turned ring rather than a gap. To confirm on device photos |
| Every control reads; motion scaled to the sound; fades, not jumps | Elements now fade in through the greys (bore rings in fixed places, rays, breath flecks, echo strokes, arches; the wind cap grows from the pirouette). Reed's drawing travel was doubled (the most audible control); it is still the smallest change on the sheet. [media/contact-sheet.png](media/contact-sheet.png): every control at 0, 50, 100 at 1:1 |
| Redraw ≈ 20 changed nodes a frame while playing, 0 at rest | Measured on the host by diffing `display()` frames at the heaviest setting with a note held: 13.9 on average, 15 at most; 0 at rest (tested) |
| Captions measured in the device font | Not measured: Univers Next Pro Light isn't available here. The widest caption is `3.0s` (four characters at 20 px) against about 53 px; check on the device |
| One definition for shared code | `display.cpp` keeps file-local `static` copies of the sine and turn helpers instead of the SDK's out-of-line-able inline ones; function-local static tables moved to file scope; unused header tables removed. CI's Blackfin job now also compiles Medieval Wind together with Daath and Fujara |
| No 64-bit or clz helpers; unused functions; includes | None used; tests build with `-Wall -Wextra -Werror` on GCC and Clang |
| Restart the OP-XY before every benchmark run after the first | Fixed in the Mac kit (it asks for a restart between runs) and in the test-kit instructions |
| Skip a voice's work once its tail is silent | Not applicable as written: the reed keeps sounding until the stock envelope ends (a synth gets no note-off), so the release blocks the benchmark counts are real work |
| Host estimates swing under parallel load | Seen here too (11,500 to 15,200 between runs); time one machine at a time |
| Photos of the screen on a device; CPU from the hardware readout | Pending: needs the OP-XY |

## 6. Known limitations and remaining work

- Hardware: install the test OS, listen, and the CPU readout (three runs of
  the Chrome test page, or `tools/mac`), then `sdk.py profile report`.
- Hall and Echo are per voice and fade with the stock amp release (see README).
- The Blackfin compile itself is checked by CI's Windows job, not here; the
  compiled loops have not yet been inspected for register spills.
- The browser preview's fonts stand in for the device's in the header.
