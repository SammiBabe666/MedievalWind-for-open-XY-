"""Makes the sound and screen tour (media/medievalwind-tour.mp4), its poster and
the screen capture (media/screen.png) from the machine's own code. Run from the
repository root with the Open-XY SDK beside it:

    python production/make_tour.py --sdk ../open-xy --work ../mw-tour-work

1. Builds the browser preview with `sdk.py preview` and serves it locally.
2. Compiles production/render.cc (which includes engine.cpp) and renders the
   score below through the real engine, one voice per note, with a simple amp
   envelope standing in for the OP-XY's. No samples, no outside effects.
3. Steps display.cpp through the same timeline in the SDK's browser renderer
   (production/capture_screens.mjs) to capture every screen.
4. Composes 1920 x 1080 frames and encodes H.264 + AAC with ffmpeg.

Needs Python 3 with Pillow and NumPy, Node 22 with Playwright's Chromium
(NODE_PATH set to the global modules), g++, ffmpeg with libx264 and aac, the
Inter fonts (OFL) and the SDK's preview requirements.
"""
import argparse, importlib.util, json, math, os, shutil, subprocess, sys, time, wave
from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
FPS, W, H = 30, 1920, 1080
definition = json.loads((ROOT / 'definition.json').read_text())
IDS = [p['id'] for p in definition['parameters']]
LABELS = [p['label'] for p in definition['parameters']]
PRESETS = {name: [v[i] for i in IDS] for name, v in definition['presets'].items()}
spec = importlib.util.spec_from_file_location('presets_generator', ROOT / 'generators' / 'presets.py')
generator = importlib.util.module_from_spec(spec)
saved = sys.argv
sys.argv = ['presets.py', str(ROOT)]
spec.loader.exec_module(generator)  # also rewrites presets/ (no change when current)
sys.argv = saved
ENVELOPES = {name: (a, r) for name, (_, a, r, _) in generator.PRESETS.items()}
CHARACTER = {name: c for name, (_, _, _, c) in generator.PRESETS.items()}
SHOWN = dict(generator.DISPLAY)


def seconds(stock):
    """The demo's own reading of a stock envelope time (0..32767): 8 (v/32767)^2 s."""
    return 8 * (stock / 32767) ** 2


# ------------------------------------------------------------------ phrases
def phrase(notes, bpm, start=0.0, gate=0.88):
    out, t, beat = [], start, 60 / bpm
    for midi, beats in notes:
        if midi:
            out.append((t, beats * beat * gate, midi))
        t += beats * beat
    return out


# The song: after "Veni, veni, Emmanuel", the 15th-century French Franciscan
# processional (public domain), in E Dorian/Aeolian, phrase by phrase. The whole
# tour plays it through, each segment taking the next phrase.
SONG = [
    [(64, 1), (67, 1), (71, 1), (71, 1), (71, 1), (69, 1), (72, 1), (71, 1), (69, 1), (67, 3)],   # O come, O come, Emmanuel
    [(69, 1), (71, 1), (67, 1), (64, 1), (67, 1), (69, 1), (66, 1), (64, 1), (62, 1), (64, 3)],   # and ransom captive Israel
    [(67, 1), (69, 1), (71, 1), (71, 1), (71, 1), (69, 1), (72, 1), (71, 1), (69, 1), (67, 3)],   # that mourns in lonely exile here
    [(69, 1), (71, 1), (67, 1), (64, 1), (67, 1), (69, 1), (66, 1), (64, 1), (62, 1), (64, 3)],   # until the Son of God appear
    [(74, 1), (74, 3), (71, 1), (71, 1), (71, 1), (69, 1), (67, 1), (69, 3)],                     # Rejoice! Rejoice! Emmanuel
    [(67, 1), (69, 1), (71, 1), (67, 1), (64, 1), (67, 1), (69, 1), (66, 1), (64, 1), (62, 1), (64, 3)],  # shall come to thee, O Israel
]
cursor = [0]


def song(length, bpm, octave=0, start=0.4):
    """The next phrases of the song that fit in a segment of `length` seconds."""
    notes, t = [], start
    while True:
        line = SONG[cursor[0] % len(SONG)]
        beats = sum(b for _, b in line)
        if notes and t + beats * 60 / bpm > length - 0.6:
            break
        notes += phrase([(m + octave, b) for m, b in line], bpm, t)
        t += beats * 60 / bpm + 0.25
        cursor[0] += 1
        if t + 4 * 60 / bpm > length - 0.6:
            break
    return notes


# ------------------------------------------------------------------ the score
# Segments: kind, title, text, length (s), base controls, sweep (index, from, to) or None, notes, page, release.
segments = []
CS = PRESETS['Court Shawm']
segments.append(('intro', 'Medieval Wind', 'Developed for Open-XY  ·  a modelled shawm that turns into a crumhorn',
                 9.0, CS, None, song(9.0, 112, 0, 0.8), 0, 'Court Shawm'))
CONTROL_TEXT = [
    ('Reed', 'Reed stiffness: soft and round, to stiff, beating and buzzing.'),
    ('Bore', 'How resonant the bore is: damped, to ringing with every mode.'),
    ('Bell', 'Projection: muffled wood, to a piercing, radiating bell.'),
    ('Breath', 'Air turbulence in the blowing pressure, and its hiss.'),
    ('Bend', 'The player: a wander, a vibrato that blooms, a scoop into each note.'),
    ('Crum', 'Shawm to crumhorn: the bore closes, the even harmonics fall away. Same pitch.'),
    ('Hall', 'A stone hall inside the voice, from off to a three-second decay.'),
    ('Echo', 'A dark echo at 278.6 ms, more and longer as it turns up.'),
]
for k, (name, text) in enumerate(CONTROL_TEXT):
    base = list(CS)
    if name in ('Hall', 'Echo'):
        base[3] = 0.15
    segments.append(('control', name, text, 8.5, base, (k, 0, 1), song(8.5, 108, -12 if name == 'Crum' else 0, 0.3), 1 if k >= 4 else 0,
                     'Chapel Reed' if name in ('Hall', 'Echo') else 'Court Shawm'))
# Tempo and octave for each preset: the tenors and the drones sit an octave down.
PRESET_PLAY = {
    'Court Shawm': (112, 0), 'Blackwood': (96, -12), 'Hollow Procession': (100, 0), 'Chapel Reed': (84, 0),
    'The Crumhorn': (112, -12), 'The Kings Fool': (138, 0), 'Moth in the Belfry': (80, 0), 'The Black Court': (88, -12),
    'Pilgrims Drone': (84, 0), 'Last Light Through Stone': (84, 0),
}
DRONES = {'Pilgrims Drone': 52, 'The Black Court': 40, 'Hollow Procession': 52}   # E3, E2, E3 held beneath
for name, values in PRESETS.items():
    bpm, octave = PRESET_PLAY[name]
    played = song(10.5, bpm, octave)
    if name in DRONES:
        played = [(0.3, 9.8, DRONES[name])] + played
    segments.append(('preset', SHOWN.get(name, name), CHARACTER[name], 10.5, values, None, played, 0, name))
segments.append(('outro', 'Medieval Wind', 'Developed for Open-XY  ·  github.com/SammiBabe666/MedievalWind-for-open-XY-', 7.0, CS, None, [], 0, 'Court Shawm'))
TOTAL = sum(s[3] for s in segments)


def controls_at(segment, t):
    _, _, _, length, base, sweep, _, _, _ = segment
    c = list(base)
    if sweep:
        k, a, b = sweep
        hold = 0.6                                    # the sweep starts after a short look at its start
        u = min(1.0, max(0.0, (t - hold) / (length - 2 * hold)))
        c[k] = a + (b - a) * u
    return c


def build_score():
    lines, events, start = [], [], 0.0
    for seg in segments:
        kind, _, _, length, base, sweep, notes, _, preset = seg
        attack, release = ENVELOPES[preset]
        lines.append('release %.3f' % max(0.06, seconds(release) / 3))
        for t, dur, midi in notes:
            dur = min(dur, length - t - 0.05)
            if dur <= 0.05:
                continue
            c0, c1 = controls_at(seg, t), controls_at(seg, t + dur)
            ramp = ''
            if sweep:
                ramp = ' ramp %d %.4f' % (sweep[0], c1[sweep[0]])
            lines.append('note %.4f %.4f %d %s%s' % (start + t, dur, midi, ' '.join('%.4f' % v for v in c0), ramp))
            events.append((start + t, start + t + dur))
        start += length
    return lines, events


def timeline(events):
    frames, start = [], 0.0
    bounds = []
    for seg in segments:
        bounds.append((start, start + seg[3], seg))
        start += seg[3]
    for f in range(int(TOTAL * FPS)):
        t = f / FPS
        seg = next(s for a, b, s in bounds if a <= t < b)
        a = next(a for a, b, s in bounds if s is seg)
        c = controls_at(seg, t - a)
        on = sum(1 for s, e in events if s <= t)
        off = sum(1 for s, e in events if e <= t)
        held = sum(1 for s, e in events if s <= t < e)
        frames.append({'c': [round(v, 5) for v in c], 'page': seg[7], 'on': on, 'held': min(held, 128), 'off': off})
    return frames


def font(size, weight='Light', display=True):
    family = 'InterDisplay' if display else 'Inter'
    return ImageFont.truetype('/usr/share/fonts/opentype/inter/%s-%s.otf' % (family, weight), size)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--sdk', default=str(ROOT.parent / 'open-xy'))
    parser.add_argument('--work', default=str(ROOT.parent / 'mw-tour-work'))
    parser.add_argument('--port', default='8977')
    parser.add_argument('--compose-only', action='store_true', help='reuse the work folder\'s audio and screens')
    args = parser.parse_args()
    work = Path(args.work).resolve()
    sdk = Path(args.sdk).resolve()
    if args.compose_only:
        lines, events = build_score()
        frames = timeline(events)
        return compose(work, frames)
    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)

    print('1. preview build')
    subprocess.run([sys.executable, 'sdk.py', 'preview', '--source', str(ROOT), '--out', str(work / 'preview')],
                   cwd=sdk, check=True)
    server = subprocess.Popen([sys.executable, 'tools/serve_harness.py', '--preview', str(work / 'preview'),
                               '--port', args.port], cwd=sdk, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    try:
        time.sleep(3)
        print('2. audio through engine.cpp')
        lines, events = build_score()
        (work / 'score.txt').write_text('\n'.join(lines) + '\n')
        subprocess.run(['g++', '-std=c++11', '-O2', '-I' + str(sdk / 'sdk/include'), '-I' + str(ROOT),
                        str(ROOT / 'production/render.cc'), '-o', str(work / 'render')], check=True)
        probe = subprocess.run([str(work / 'render'), str(work / 'score.txt'), str(work / 'probe.wav'), '1'],
                               check=True, capture_output=True, text=True).stdout
        top = float(probe.split('peak before gain')[1].split()[0])
        gain = 0.89 / top                                  # the whole film peaks at -1 dBFS
        subprocess.run([str(work / 'render'), str(work / 'score.txt'), str(work / 'tour.wav'), '%.6f' % gain], check=True,
                       capture_output=True)
        w = wave.open(str(work / 'tour.wav'))
        audio = np.frombuffer(w.readframes(w.getnframes()), dtype=np.int16).astype(float) / 32768
        start = 0.0
        for seg in segments:
            a, b = int(start * 44100), int((start + seg[3]) * 44100)
            print('   %-26s rms %.3f peak %.3f' % (seg[1], np.sqrt(np.mean(audio[a:b] ** 2)), np.abs(audio[a:b]).max()))
            start += seg[3]

        print('3. screens through display.cpp in the SDK renderer')
        frames = timeline(events)
        (work / 'timeline.json').write_text(json.dumps({'fps': FPS, 'frames': frames}))
        subprocess.run(['node', str(ROOT / 'production/capture_screens.mjs'), str(work / 'timeline.json'),
                        str(work / 'screens'), args.port, '2.5'], check=True)
    finally:
        server.terminate()
    compose(work, frames)


def compose(work, frames):
    index = json.loads((work / 'screens/index.json').read_text())['frames']

    print('4. compose and encode')
    hero = Image.open(ROOT / 'media/hero.png').convert('RGB').resize((W, W // 2), Image.LANCZOS)
    big, mid, small, tiny = font(84), font(40), font(30, 'Light', False), font(22, 'Light', False)
    footer = ('Music: after \u201cVeni, veni, Emmanuel\u201d, a 15th-century processional.',
              'Sound: engine.cpp rendered offline, simple amp envelope.   Screen: display.cpp in the Open-XY SDK renderer.   '
              'Not filmed on a device.')
    bounds, start = [], 0.0
    for seg in segments:
        bounds.append((start, start + seg[3], seg))
        start += seg[3]
    cache = {}
    encoder = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'warning', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', '%dx%d' % (W, H),
                                '-r', str(FPS), '-i', '-', '-i', str(work / 'tour.wav'), '-c:v', 'libx264', '-preset', 'veryfast',
                                '-crf', '20', '-pix_fmt', 'yuv420p', '-af', 'apad', '-t', '%.3f' % (len(index) / FPS), '-c:a', 'aac', '-b:a', '192k',
                                '-movflags', '+faststart', str(work / 'tour.mp4')], stdin=subprocess.PIPE, stderr=open(work / 'ffmpeg.log', 'w'))
    poster = None
    for f, k in enumerate(index):
        t = f / FPS
        a, b, seg = next(x for x in bounds if x[0] <= t < x[1])
        kind, title, text = seg[0], seg[1], seg[2]
        img = Image.new('RGB', (W, H), 'black')
        d = ImageDraw.Draw(img)
        if kind in ('intro', 'outro'):
            img.paste(hero, (0, (H - W // 2) // 2 - 60))
            fade = min(1.0, (t - a) / 1.0, (b - t) / 0.8)
            shade = int(235 * max(0.0, fade))
            d.text((W // 2, 905), title.upper(), font=big, fill=(shade,) * 3, anchor='mm')
            d.text((W // 2, 985), text, font=small, fill=(int(shade * 0.7),) * 3, anchor='mm')
        else:
            if k not in cache:
                cache.clear()
                cache[k] = Image.open(work / 'screens' / ('screen-%d.png' % k)).convert('RGB')
            img.paste(cache[k], ((W - 1200) // 2, 190))
            d.rectangle(((W - 1200) // 2 - 2, 188, (W + 1200) // 2 + 1, 190 + 550 + 1), outline=(70, 70, 70))
            label = 'CONTROL' if kind == 'control' else 'PRESET'
            d.text((W // 2, 70), label + ('  ·  page %d' % (seg[7] + 1) if kind == 'control' else ''), font=tiny,
                   fill=(140, 140, 140), anchor='mm')
            d.text((W // 2, 128), title, font=mid, fill=(235, 235, 235), anchor='mm')
            d.text((W // 2, 800), text, font=small, fill=(200, 200, 200), anchor='mm')
            c = controls_at(seg, t - a)
            row = '    '.join('%s %d' % (LABELS[i].lower(), round(c[i] * 100)) for i in range(8))
            d.text((W // 2, 860), row, font=tiny, fill=(130, 130, 130), anchor='mm')
            if kind == 'control':
                i, lo, hi = seg[5]
                x0, x1, y = W // 2 - 400, W // 2 + 400, 910
                d.line((x0, y, x1, y), fill=(80, 80, 80), width=2)
                x = x0 + (x1 - x0) * c[i]
                d.ellipse((x - 8, y - 8, x + 8, y + 8), fill=(235, 235, 235))
            if title == 'Court Shawm' and poster is None and t - a > 4:
                poster = img.copy()
        d.text((W // 2, 1028), footer[0], font=tiny, fill=(120, 120, 120), anchor='mm')
        d.text((W // 2, 1058), footer[1], font=tiny, fill=(95, 95, 95), anchor='mm')
        if kind not in ('intro', 'outro'):
            d.text((60, 52), 'MEDIEVAL WIND', font=tiny, fill=(170, 170, 170), anchor='lm')
            d.text((60, 82), 'Developed for Open-XY', font=tiny, fill=(110, 110, 110), anchor='lm')
        try:
            encoder.stdin.write(img.tobytes())
        except BrokenPipeError:
            raise SystemExit('ffmpeg stopped (exit %s) at frame %d: see %s' % (encoder.wait(), f, work / 'ffmpeg.log'))
    encoder.stdin.close()
    encoder.wait()
    media = ROOT / 'media'
    shutil.copy(work / 'tour.mp4', media / 'medievalwind-tour.mp4')
    if poster:
        poster.save(media / 'medievalwind-tour-poster.png', optimize=True)
    # The device screenshot: Court Shawm with a note held, at the screen's own size x2.
    shot = next(i for i, fr in enumerate(frames) if fr['held'] and fr['c'] == [round(v, 5) for v in PRESETS['Court Shawm']]
                and i / FPS > bounds[-11][0] + 3)
    Image.open(work / 'screens' / ('screen-%d.png' % index[shot])).convert('RGB').resize((960, 440), Image.LANCZOS).save(
        media / 'screen.png', optimize=True)
    print(subprocess.run(['ffprobe', '-v', 'error', '-show_entries', 'format=duration:stream=codec_name,width,height',
                          '-of', 'compact', str(media / 'medievalwind-tour.mp4')], capture_output=True, text=True).stdout)


if __name__ == '__main__':
    main()
