"""Medieval Wind's hero artwork: an original, procedural white-line engraving
(seeded, so every run draws the same picture). Writes an SVG; render it with
production/render_svg.mjs.

    python production/hero.py out.svg [width height]

A shawm lies across a vaulted court; a gust of wind pours from its bell in
fine engraved streams that curl and scatter. White lines on black, no fills
beyond black and white, no gradients.
"""
import math, random, sys

out = sys.argv[1]
W = int(sys.argv[2]) if len(sys.argv) > 2 else 2560
H = int(sys.argv[3]) if len(sys.argv) > 3 else 1280
s = W / 2560
rng = random.Random(1347)
INK = '#F2F2F2'
parts = []


def n(v):
    return ('%.2f' % v).rstrip('0').rstrip('.')


def poly(points, width, close=False, fill='none', colour=INK, opacity=1):
    d = 'M' + ' L'.join('%s,%s' % (n(x * s), n(y * s)) for x, y in points) + (' Z' if close else '')
    parts.append('<path d="%s" fill="%s" stroke="%s" stroke-width="%s" stroke-opacity="%s" '
                 'stroke-linecap="round" stroke-linejoin="round"/>' % (d, fill, colour, n(width * s), n(opacity)))


# ---------------------------------------------------------------- the court
cx, floor = 1280, 1190
for k in range(8):
    w = 1060 - k * 105
    spring = 360 - k * 22
    r = 1.1 * w
    c = -w + r
    h = math.sqrt(r * r - c * c)
    pts = [(cx - w, floor), (cx - w, floor - spring)]
    a0, a1 = math.pi, math.atan2(-h, -c) + 2 * math.pi
    left = [(cx + c + r * math.cos(a0 + (a1 - a0) * i / 60), floor - spring + r * math.sin(a0 + (a1 - a0) * i / 60))
            for i in range(61)]
    pts += left + [(2 * cx - x, y) for x, y in reversed(left[:-1])] + [(cx + w, floor - spring), (cx + w, floor)]
    poly(pts, 2.2 if k == 0 else 1.2, opacity=0.55 - k * 0.05)
# Voussoirs on the outer arch: short radial strokes.
for i in range(1, 60):
    t = i / 60
    w, spring = 1060, 360
    r = 1.1 * w
    c = -w + r
    h = math.sqrt(r * r - c * c)
    side = -1 if t < 0.5 else 1
    u = t * 2 if t < 0.5 else (1 - t) * 2
    a0, a1 = math.pi, math.atan2(-h, -c) + 2 * math.pi
    a = a0 + (a1 - a0) * u
    x, y = c + r * math.cos(a), -spring + r * math.sin(a)
    dx, dy = math.cos(a), math.sin(a)
    if side > 0:
        x, dx = -x, -dx
    poly([(cx + x, floor + y), (cx + x - dx * 36, floor + y - dy * 36)], 1.0, opacity=0.35)
# Stone floor: courses and joints receding.
for row in range(5):
    y = floor + row * 18
    poly([(60, y), (W / s - 60, y)], 1.4 - row * 0.2, opacity=0.6 - row * 0.1)
    for j in range(40):
        x = 60 + (j + (row % 2) * 0.5) * 62
        if x < W / s - 60:
            poly([(x, y), (x + 2, y + 18)], 0.8, opacity=0.4)
# Stars in the vault, sparse.
for _ in range(140):
    x, y = rng.uniform(90, 2470), rng.uniform(60, 760)
    if (x - cx) ** 2 / 1200 ** 2 + (y - floor) ** 2 / 1100 ** 2 < 1 and y > 200:
        continue
    r = rng.choice((1.2, 1.6, 2.4))
    poly([(x - r, y), (x + r, y)], 0.9, opacity=0.7)
    poly([(x, y - r), (x, y + r)], 0.9, opacity=0.7)

# ---------------------------------------------------------------- the shawm
angle = math.radians(-7)
ox, oy = 150, 770


def at(u, v):
    """Instrument coordinates (u along, v across) to the picture."""
    return (ox + u * math.cos(angle) - v * math.sin(angle), oy + u * math.sin(angle) + v * math.cos(angle))


def half(u):
    """The shawm's half-width along its length: reed, pirouette, cone, bell."""
    if u < 120:
        return 4 + u * 0.06
    if u < 175:
        return 34
    if u < 1400:
        return 16 + (u - 175) * 0.022
    t = (u - 1400) / 300
    return 43 + 230 * t ** 2.6


L = 1700
# Body outline, both edges.
for side in (-1, 1):
    poly([at(u, side * half(u)) for u in range(175, L + 1, 6)], 3.2)
# Bell lip, ellipse of the mouth.
mouth = []
for i in range(73):
    a = 2 * math.pi * i / 72
    mouth.append(at(L + 22 * math.cos(a), 273 * math.sin(a)))
poly(mouth, 3.0)
for i in range(1, 14):
    k = i / 14
    poly([at(L + 22 * k * math.cos(2 * math.pi * j / 72), 273 * k * math.sin(2 * math.pi * j / 72)) for j in range(73)],
         0.8, opacity=0.35)
# Engraved shading: lines along the body, dense on the lower half.
for j in range(16):
    v = -0.85 + j * 0.115
    if v < -0.2 and j % 2:
        continue
    poly([at(u, v * half(u)) for u in range(185, L - 10, 10)], 0.9 if v > 0.3 else 0.6, opacity=0.8 if v > 0.3 else 0.45)
# Turned rings and ferrules.
for u in (175, 190, 420, 432, 900, 912, 1390, 1402, 1414):
    w = half(u)
    poly([at(u, -w), at(u, w)], 2.4)
# Finger holes: seven on the front, and a thumb hole's shadow.
for u in (560, 640, 720, 860, 940, 1020, 1160):
    w = half(u) * 0.36
    poly([at(u + w * math.cos(2 * math.pi * i / 24), -half(u) * 0.15 + w * 0.7 * math.sin(2 * math.pi * i / 24))
          for i in range(25)], 2.2)
# Pirouette and reed.
poly([at(120, -34), at(175, -34), at(175, 34), at(120, 34), at(120, -34)], 3.0)
for i in range(1, 6):
    poly([at(120 + i * 9, -34), at(120 + i * 9, 34)], 0.8, opacity=0.6)
poly([at(0, -9), at(120, -4), at(120, 4), at(0, 9), at(-6, 0), at(0, -9)], 2.6)
poly([at(10, 0), at(115, 0)], 0.8, opacity=0.7)

# ---------------------------------------------------------------- the wind
bell = at(L + 10, 0)
for k in range(46):
    v0 = (k / 45 - 0.5) * 2 * 250                         # leaves across the bell mouth
    spread = 1 + rng.uniform(0.2, 0.9)
    phase = rng.uniform(0, 2 * math.pi)
    length = rng.uniform(380, 640)
    wave = rng.uniform(10, 28)
    pts = []
    for i in range(80):
        t = i / 79
        u = L + 20 + length * t
        v = v0 * (1 + t * (spread - 1)) + wave * t * math.sin(phase + t * 7)
        if t > 0.7:                                       # the end curls back on itself
            c = (t - 0.7) / 0.3
            u -= 90 * c * c
            v += (1 if v0 >= 0 else -1) * 120 * c * c
        pts.append(at(u, v))
    poly(pts, rng.choice((0.8, 1.1, 1.5, 2.2)), opacity=rng.uniform(0.55, 1.0))
# Flecks of air beyond the streams.
for _ in range(120):
    u = L + rng.uniform(80, 760)
    v = rng.gauss(0, 260)
    a = rng.uniform(-0.6, 0.6)
    x, y = at(u, v)
    lng = rng.uniform(6, 22)
    poly([(x, y), (x + lng * math.cos(a), y + lng * math.sin(a))], 1.2, opacity=rng.uniform(0.4, 0.9))
# Echoes of the gust, fainter and further.
for e in range(3):
    pts = [at(L + 700 + e * 90 + 260 * i / 59, (e - 1) * 160 + 30 * math.sin(i / 59 * 9 + e)) for i in range(60)]
    poly(pts, 1.4, opacity=0.5 - e * 0.12)

# ---------------------------------------------------------------- frame
poly([(28, 28), (W / s - 28, 28), (W / s - 28, H / s - 28), (28, H / s - 28)], 2.4, close=True)
poly([(42, 42), (W / s - 42, 42), (W / s - 42, H / s - 42), (42, H / s - 42)], 1.0, close=True, opacity=0.7)

frame = parts[-2:]
inside = parts[:-2]
clip = '<clipPath id="inside"><rect x="%s" y="%s" width="%s" height="%s"/></clipPath>' % (
    n(29 * s), n(29 * s), n(W - 58 * s), n(H - 58 * s))
svg = ('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">'
       '<rect width="%d" height="%d" fill="#000000"/><defs>%s</defs><g clip-path="url(#inside)">%s</g>%s</svg>'
       % (W, H, W, H, W, H, clip, ''.join(inside), ''.join(frame)))
open(out, 'w').write(svg)
print(out, len(parts), 'strokes')
