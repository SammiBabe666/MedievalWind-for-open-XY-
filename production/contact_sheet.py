"""Contact sheet of the real screen (SDK docs/ux.md, "Before you submit"): every
control at 0, 50 and 100 with the others at the default preset, at the screen's
own size (1:1), drawn by display.cpp in the SDK's browser renderer.

    python production/contact_sheet.py --sdk ../open-xy --work ../mw-sheet-work

Writes media/contact-sheet.png. The browser's fonts stand in for the device's
Univers Next Pro Light in the header.
"""
import argparse, json, shutil, subprocess, sys, time
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
definition = json.loads((ROOT / 'definition.json').read_text())
IDS = [p['id'] for p in definition['parameters']]
LABELS = [p['label'] for p in definition['parameters']]
DEFAULT = [definition['presets']['Court Shawm'][i] for i in IDS]
LEVELS = (0.0, 0.5, 1.0)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--sdk', default=str(ROOT.parent / 'open-xy'))
    parser.add_argument('--work', default=str(ROOT.parent / 'mw-sheet-work'))
    parser.add_argument('--port', default='8983')
    args = parser.parse_args()
    work, sdk = Path(args.work).resolve(), Path(args.sdk).resolve()
    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)
    subprocess.run([sys.executable, 'sdk.py', 'preview', '--source', str(ROOT), '--out', str(work / 'preview')],
                   cwd=sdk, check=True, capture_output=True)
    server = subprocess.Popen([sys.executable, 'tools/serve_harness.py', '--preview', str(work / 'preview'),
                               '--port', args.port], cwd=sdk, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    try:
        time.sleep(3)
        frames = []
        for k in range(8):
            for level in LEVELS:
                c = list(DEFAULT)
                c[k] = level
                # Each setting from a fresh baseline: a settled frame, no note.
                for _ in range(8):
                    frames.append({'c': c, 'page': 1 if k >= 4 else 0, 'on': 0, 'held': 0, 'off': 0})
        (work / 'timeline.json').write_text(json.dumps({'fps': 30, 'frames': frames}))
        subprocess.run(['node', str(ROOT / 'production/capture_screens.mjs'), str(work / 'timeline.json'),
                        str(work / 'screens'), args.port, '1'], check=True)
    finally:
        server.terminate()
    index = json.loads((work / 'screens/index.json').read_text())['frames']
    font = ImageFont.truetype('/usr/share/fonts/opentype/inter/Inter-Light.otf', 15)
    pad, label_w, top = 12, 90, 34
    W, H = label_w + 3 * (480 + pad) + pad, top + 8 * (220 + pad) + pad
    sheet = Image.new('RGB', (W, H), (18, 18, 18))
    d = ImageDraw.Draw(sheet)
    for j, level in enumerate(LEVELS):
        d.text((label_w + pad + j * (480 + pad) + 240, 18), '%d' % round(level * 100), font=font, fill=(200, 200, 200), anchor='mm')
    for k in range(8):
        y = top + k * (220 + pad)
        d.text((pad, y + 110), LABELS[k], font=font, fill=(220, 220, 220), anchor='lm')
        for j in range(3):
            shot = index[(k * 3 + j) * 8 + 7]
            sheet.paste(Image.open(work / 'screens' / ('screen-%d.png' % shot)).convert('RGB'),
                        (label_w + pad + j * (480 + pad), y))
    sheet.save(ROOT / 'media/contact-sheet.png', optimize=True)
    print('media/contact-sheet.png', sheet.size)


if __name__ == '__main__':
    main()
