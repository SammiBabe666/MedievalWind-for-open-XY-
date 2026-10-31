"""Release checks the C++ tests cannot make. Run from the repository root:
    python tests/check_release.py
- definition.json has exactly eight controls and ten presets, each with all eight values in [0, 1];
- presets/ holds exactly the generated files (rerunning generators/presets.py changes nothing),
  each a version 4 OP-XY preset of this machine with the definition's values;
- tests/presets.cpp plays the same ten presets with the same values;
- every artwork path follows the device's drawing rules (one subpath, at most 64 points,
  points 1/8 px apart, closing edge 1/4 px, no near-reversing turn);
- no firmware or stock content is in the repository."""
import json, os, re, subprocess, sys, tempfile, shutil, filecmp
root = os.path.abspath(sys.argv[1] if len(sys.argv) > 1 else '.')
fail = []
d = json.load(open(os.path.join(root, 'definition.json')))
ids = [p['id'] for p in d['parameters']]
if ids != ['reed', 'bore', 'bell', 'breath', 'bend', 'crum', 'hall', 'echo']:
    fail.append('controls are not the eight promised, in order: %s' % ids)
if len(d['presets']) != 10:
    fail.append('expected ten presets, found %d' % len(d['presets']))
for name, values in d['presets'].items():
    if sorted(values) != sorted(ids) or not all(0 <= v <= 1 for v in values.values()):
        fail.append('preset %s does not set all eight controls within 0..1' % name)
# Generated presets are current and deterministic.
with tempfile.TemporaryDirectory() as tmp:
    for f in ('definition.json',):
        shutil.copy(os.path.join(root, f), tmp)
    os.makedirs(os.path.join(tmp, 'generators'))
    shutil.copy(os.path.join(root, 'generators', 'presets.py'), os.path.join(tmp, 'generators'))
    for run in (1, 2):
        subprocess.run([sys.executable, os.path.join(tmp, 'generators', 'presets.py'), tmp], check=True, capture_output=True)
        if run == 1:
            first = {f: open(os.path.join(tmp, 'presets', f), 'rb').read() for f in os.listdir(os.path.join(tmp, 'presets'))}
    second = {f: open(os.path.join(tmp, 'presets', f), 'rb').read() for f in os.listdir(os.path.join(tmp, 'presets'))}
    if first != second:
        fail.append('preset generation is not deterministic')
    shipped = sorted(os.listdir(os.path.join(root, 'presets')))
    if shipped != sorted(second):
        fail.append('presets/ differs from the generated set: %s' % shipped)
    for f in second:
        if open(os.path.join(root, 'presets', f), 'rb').read() != second[f]:
            fail.append('presets/%s is stale: rerun generators/presets.py' % f)
names = [f for f in os.listdir(os.path.join(root, 'presets')) if f.endswith('.json')]
if len(names) != 10:
    fail.append('presets/ should hold ten presets, found %d' % len(names))
values = list(d['presets'].values())
for f in names:
    p = json.load(open(os.path.join(root, 'presets', f)))
    if p.get('type') != d['id'] or p.get('version') != 4 or p.get('regions') != [] or len(p['engine']['params']) != 8:
        fail.append('presets/%s is not a version 4 %s preset' % (f, d['id']))
    if not re.fullmatch(r'[a-z0-9_-]{1,24}\.json', f):
        fail.append('preset file name %s breaks the builder rule' % f)
    params = p['engine']['params']
    if not any(params == [round(v[i] * 32767) for i in ids] for v in values):
        fail.append('presets/%s does not match any definition.json preset' % f)
# tests/presets.cpp plays the same presets.
src = open(os.path.join(root, 'tests', 'presets.cpp')).read()
table = re.findall(r'\{"([^"]+)", \{([^}]+)\}\}', src)
if [n for n, _ in table] != list(d['presets']):
    fail.append('tests/presets.cpp names differ from definition.json')
for (n, nums), (name, v) in zip(table, d['presets'].items()):
    if [float(x) for x in nums.split(',')] != [v[i] for i in ids]:
        fail.append('tests/presets.cpp values differ for %s' % n)
# Artwork follows the device's drawing rules (SDK docs/display.md, "Drawing on the
# device"): every path one subpath of at most 64 points, neighbouring points at
# least 1/8 px apart, a closing edge of at least 1/4 px, no turn within 2.5 degrees
# of straight back.
import math
art = open(os.path.join(root, 'panel.svg.fragment')).read()
for m in re.finditer(r'<path([^>]*?)\sd="([^"]*)"', art):
    name = (re.search(r'id="([^"]+)"', m.group(1)) or re.search(r'(.{0,40})', m.group(2))).group(1)
    path = m.group(2)
    if path.count('M') != 1:
        fail.append('%s: more than one subpath' % name)
    pts = [tuple(map(float, xy)) for xy in re.findall(r'(-?\d+(?:\.\d+)?)[ ,](-?\d+(?:\.\d+)?)', path)]
    if len(pts) > 64:
        fail.append('%s: %d points, more than 64' % (name, len(pts)))
    closed = path.strip().endswith('Z')
    n = len(pts)
    for i in range(n if closed else n - 1):
        a, b = pts[i], pts[(i + 1) % n]
        gap = math.hypot(b[0] - a[0], b[1] - a[1])
        if gap < (0.25 if i == n - 1 else 0.125):
            fail.append('%s: points %d and %d only %.3f px apart' % (name, i, (i + 1) % n, gap))
    for i in range(n if closed else 1, n if closed else n - 1):
        a, b, c = pts[i - 1], pts[i], pts[(i + 1) % n]
        u, v = (b[0] - a[0], b[1] - a[1]), (c[0] - b[0], c[1] - b[1])
        lu, lv = math.hypot(*u), math.hypot(*v)
        if lu and lv:
            turn = math.degrees(math.acos(max(-1, min(1, (u[0] * v[0] + u[1] * v[1]) / (lu * lv)))))
            if turn > 177.5:
                fail.append('%s: turns %.2f degrees at point %d' % (name, turn, i))
# No firmware or stock content in the repository.
for dirpath, dirs, files in os.walk(root):
    dirs[:] = [x for x in dirs if x != '.git']
    for f in files:
        if f.endswith(('.ldr', '.tfw')) or f == 'op1_factory.json':
            fail.append('firmware or stock content in the repository: ' + os.path.join(dirpath, f))
if fail:
    print('\n'.join('FAIL ' + f for f in fail))
    sys.exit(1)
print('PASS: eight controls, ten presets (definition, files, manifest and tests agree), deterministic generation, '
      'artwork within the device drawing rules, no firmware')
