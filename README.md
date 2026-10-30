# Medieval Wind

A medieval double reed for the OP-XY, built on the
[Open-XY SDK](https://github.com/etcetc000/open-xy) (OS 1.2.1, machine format SDK 1.6,
validated at SDK `staging` commit `8d4bb49`). A modelled reed blows into a
modelled bore: a bright Renaissance shawm that turns, continuously, into a
hollow, nasal crumhorn. The screen is a white-line engraving on black that
every control redraws.

Everything is synthesised in real time in fixed point. There are no samples,
wavetables or recordings anywhere in the engine.

**Status: host-tested, not yet verified on an OP-XY.** The preview, all host
tests and sanitizer runs pass. No hardware audition or CPU readout exists yet;
[tools/mac](tools/mac) builds the test firmware and measures it.

## Controls

Two pages; pressing any encoder switches both rows.

| Encoder | Page 1 | Page 2 |
| --- | --- | --- |
| Blue | **Reed**: the reed's stiffness. Soft is sweet and round; stiff steepens the reed curve and lowers its rest point, so it beats harder and buzzes | **Bend**: the player's instability: a breath wander, a vibrato that blooms after the attack and a scoop up into each note (up to about 26, 22 and 45 cents). 0 is perfectly steady |
| Green | **Bore**: how resonant the bore is. Low is damped and soft-edged; high keeps more harmonics in the loop and rings stronger | **Crum**: the shawm-to-crumhorn transformation (below). Every position in between plays |
| White | **Bell**: projection. The bell radiates the bore's pressure and, rising with frequency, its slope: 0.4 to 8 times. Low is muffled wood, high is piercing | **Hall**: a stone hall inside the voice: decay 0.7 to 3.0 s and its level. The header shows the decay; `off` is a true bypass |
| Orange | **Breath**: air turbulence in the blowing pressure (up to 40%) and a little audible hiss | **Echo**: a dark feedback echo at 278.6 ms, feedback 0.2 to 0.7, level up to 0.55. 0 is a true bypass |

Amounts show 0 to 100. Colouring controls (Bend, Hall, Echo) default to off.
The OP-XY's own envelopes, filter, LFOs and FX work after the engine as usual.

## How it makes sound

```
breath ──► mouth pressure ──► REED (clipped pressure-controlled valve) ──► bell: radiation + nasal formant + air ──► echo ──► hall
              ▲                    │
              │                    ▼
              └── loss filter ◄── BORE: one delay line read at P and at P/2 (inverted)
```

- **Reed.** The reed is a pressure-controlled valve: its reflection
  `r = offset + slope × Δp`, clipped to ±1 (shut, wide open), where Δp is the
  difference between the mouth and the wave returning from the bore. The
  junction writes `p + Δp × r` back into the bore. The player blows to the
  edge of beating (the reed at rest is 97% shut; one division a block works out
  that pressure for every Reed and Crum setting), so the oscillation starts by
  itself and the reed's clipping makes the buzz.
- **Bore.** One 1024-sample delay line, read at two taps: a whole period P and
  half a period P/2, inverted. The loop is `(1 − c)·z^−P − c·z^−P/2`. At
  harmonic k the half tap is (−1)^k, so odd harmonics keep a gain of 1 and
  even harmonics get 1 − 2c: c = 0 is an open, conical-sounding bore with
  every harmonic (the shawm), c = 1 a closed cylinder with odd harmonics only
  (the crumhorn), **and the pitch is the same for every c**. That makes the
  morph continuous and in tune.
- **Losses.** A one-pole lowpass whose cutoff tracks the note (3 to 21
  harmonics, from Bore and Bell) and a DC leak a seventh of the fundamental.
  Their phase lag at the fundamental is computed once per block (series sine
  and cosine, a fixed-point arctangent, recomputed only when the note or the
  filters move) and taken off both taps. A measured correction for the
  beating reed's pull (it flattens a stiff reed in a resonant bore by up to
  30 cents) is taken off too.
- **Crum** moves, together: the tap blend; the reed's pinch (lower rest point,
  steeper curve: the wind cap); fewer harmonics in the bore loss; half the
  bell's radiation; and a nasal formant that slides from about 2.3 kHz to
  1.1 kHz while it grows.
- **Bell.** The radiated sound is the bore pressure plus 0.4 to 8 times its
  first difference (a +6 dB/octave slope, like a bell's radiation), through a
  state-variable formant, plus breath hiss, and a DC blocker so the mouth's
  steady pressure stays in the instrument.
- **Notes.** Each note is tongued: a 30% push of pressure for 12 ms that
  releases the reed, so even marginal notes speak. Retriggers and legato keep
  the bore ringing; both taps glide sample by sample to a new pitch, so
  nothing clicks. Notes below 43 Hz fold up an octave to fit the bore.
- **Hall and Echo** run inside each voice at a quarter of the audio rate
  (11.025 kHz: dark, cheap, small). Hall is two allpass diffusers into a
  four-line feedback delay network (lines of 26.6 to 45.3 ms, a Hadamard mix,
  damping in every line). Echo is a 3,072-sample line with a lowpass in its
  feedback. Their outputs return to the audio rate by linear interpolation.

### Compromises

- **The effects live in the voice.** A synth on the OP-XY renders per voice
  and the stock amp envelope follows the engine; there is no synth-level
  effects bus in the SDK. So Hall and Echo ring within a note and through its
  amp release, and fade with it: a tail cannot outlast the voice. The
  reverberant presets ship with long amp releases for that reason. For tails
  across a whole track, use the OP-XY's send FX as well.
- **The reed has no memory** (no reed mass or resonance) and the bore is one
  delay line: no tone holes, no register key, no conical-bore reflection
  filter. The two-tap blend gives the shawm/crumhorn spectra and stable tuning
  at a fraction of a research model's cost.
- **Linear interpolation** in the bore darkens the highest notes a little.
- **Register.** Tested from C1 to A6 (MIDI 24 to 93); in tune within ±7 cents
  over C2 to A6 on the tested settings. Above A6, stiff short settings may
  fail to speak.

## Presets

Ten presets ship with the engine and install with the builder (Court Shawm is
the init preset). Values are 0 to 100; full table with amp envelopes:
[presets/MANIFEST.md](presets/MANIFEST.md).

| Preset | Reed | Bore | Bell | Breath | Bend | Crum | Hall | Echo | Character |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Court Shawm** (default) | 55 | 60 | 70 | 10 | 0 | 0 | 0 | 0 | Bright, direct, unmistakably reedy |
| **Blackwood** | 40 | 45 | 12 | 15 | 10 | 20 | 15 | 0 | Darker, woody, restrained upper harmonics |
| **Hollow Procession** | 90 | 85 | 95 | 10 | 5 | 0 | 30 | 25 | Powerful, projecting ceremonial tone |
| **Chapel Reed** | 50 | 70 | 50 | 20 | 30 | 15 | 80 | 0 | Sustained melody in a spacious hall |
| **The Crumhorn** | 70 | 60 | 30 | 5 | 0 | 100 | 10 | 0 | Nasal, pinched, dark: odd harmonics |
| **The King’s Fool** | 100 | 50 | 80 | 30 | 75 | 45 | 10 | 30 | Characterful, cutting, slightly unstable |
| **Moth in the Belfry** | 20 | 35 | 35 | 85 | 50 | 55 | 75 | 45 | Breathy, fragile, haunting |
| **The Black Court** | 85 | 100 | 25 | 25 | 20 | 75 | 55 | 20 | Dark, dense, harmonically rich |
| **Pilgrim’s Drone** | 35 | 80 | 20 | 30 | 10 | 65 | 45 | 0 | Restrained, sustained, hollow |
| **Last Light Through Stone** | 45 | 55 | 45 | 60 | 60 | 30 | 100 | 55 | Expressive, breathy, reverberant |

`tests/presets.cpp` checks that no two presets are alike by level, brightness,
even/odd balance and breath noise (measured on one voice at A3).

## The screen

A shawm in a stone court, wind leaving its bell, drawn as white lines on black.

| Control | On the screen |
| --- | --- |
| Reed | The double reed's blades lengthen or pinch; a held note makes the tip flutter |
| Bore | Rings inside the body: 3 to 14 of them, brighter as the bore rings stronger |
| Bell | The bell flares wider and throws up to nine harmonic rays, longer and wider |
| Breath | The gust's edges roughen and up to twelve flecks of air scatter around it |
| Bend | The gust's path wavers more; while a note is held the waver travels |
| Crum | The cone narrows to a cylinder, the bell curls into a crook, a wind cap closes over the reed, and the gust turns and shortens |
| Hall | The court's arches grow from 80% to full size, brighten, and more appear |
| Echo | Up to five repeated wind strokes trail beside the gust |

Each note throws a puff from the bell; held notes keep the wind moving. An
idle screen stays still and reduced motion shows the end state at once. The
header shows Hall's decay in seconds (`off` at zero) and the rest as 0 to 100.

## CPU and memory

| Measure | Value | How it was measured |
| --- | --- | --- |
| Voice state | 11,860 bytes (bore 2 KiB, Echo 6 KiB, Hall 3.4 KiB) | `sizeof`, checked by the SDK build |
| Voice pool | 104.2 KiB for `voiceCapacity` 8 (8 + the stock spare) of the shared 2,032 KiB module region | Computed per docs/api.md |
| Per voice block | about 11,500 to 14,400 Blackfin instructions, median about 12,100, at the heaviest setting | SDK host-timed estimate, five runs. **Not a device measurement**; aim ≤ 15,000 |
| On the OP-XY | **Not measured yet** | Use [tools/mac](tools/mac) |

The render is split into four short passes (mouth, reed and bore, bell,
space) so each loop's state fits the Blackfin's eight data registers, the
lesson of Daath's first release. There is no division, floating point or
64-bit arithmetic per sample. Per block: one division for the period, one for
the blowing pressure and one for its ceiling, and the filter-lag arithmetic
only when the note or the filters move. Breath at 0 skips both noise
generators; Hall and Echo at 0 skip their passes entirely.

`voiceCapacity` is 8, stock's per-track limit, as in Daath. Daath's 8 is not
assumed to be affordable here: the hardware readout decides. If it comes in
above the SDK's recommended 3.5% of the audio block per voice, lowering
capacity or the effects' cost is the next step.

## Build, preview, test

Check out the SDK beside this repository at the pinned commit:

```sh
git clone https://github.com/etcetc000/open-xy ../open-xy
git -C ../open-xy checkout 8d4bb49de8a2d72453f0ca247fecbb0aeb0daf27
python ../open-xy/sdk.py test --machine . --host-cxx g++     # SDK checks, preview build, 7 host tests, CPU estimate
python tests/check_release.py .                                # controls, presets, generators, no firmware
python ../open-xy/sdk.py preview --source . --out ../mw-preview
python ../open-xy/tools/serve_harness.py --preview ../mw-preview   # open http://127.0.0.1:8917/
```

Offline audition through the real engine (no OP-XY needed):

```sh
g++ -std=c++11 -O2 -I../open-xy/sdk/include -I. production/render.cc -o render
./render score.txt out.wav      # score format in production/render.cc
```

| File | Owns |
| --- | --- |
| [definition.json](definition.json), [machine.json](machine.json) | Controls, presets, resources, drawing budget |
| [core.h](core.h), [engine.cpp](engine.cpp) | Voice state and the integer DSP |
| [display.h](display.h), [display.cpp](display.cpp), [panel.svg.fragment](panel.svg.fragment) | The engraving and the two-row header |
| [presets/](presets) | Generated device presets and their manifest |
| [generators/](generators) | Regenerate presets and artwork |
| [tests/](tests) | Host tests and release checks |
| [production/](production) | Offline renderer, screen capture and the demo |
| [tools/](tools) | Hardware CPU test: Mac kit and profiling-build scripts |
| [AUDIT.md](AUDIT.md) | Design, validation record and what remains |

## Install

Add this folder as a machine in an Open-XY build (the SDK's
[build guide](https://github.com/etcetc000/open-xy/blob/staging/docs/build.md),
`--machine` pointing here). The builder installs the ten presets.

## Licence

MIT; see [LICENSE](LICENSE). The profiling scripts in `tools/` and the screen
capture script come from Fujara (same author, MIT).
