"""Generates panel.svg.fragment: Medieval Wind's woodcut court, keeping the SDK's
two-page header block. Run from the repository root:

    python generators/panel.py .

Bound elements (display.cpp moves, reshapes and repaints them) are authored at
rest; mutable outlines are unfilled, as the SDK requires, so pale underlays
knock the court's arches out behind the instrument.
"""
import math, re, sys

root = sys.argv[1] if len(sys.argv) > 1 else '.'
P = 'medievalwind'
old = open(root + '/panel.svg.fragment').read().splitlines()
header = []
for line in old[1:]:
    header.append(line)
    if P + '_text_15' in line:
        break
# The scaffold's header bars are nodes 2..9; here they follow four outlines (4..11).
if not any(P + '_node_11"' in l for l in header):
    header = [re.sub(P + r'_node_(\d+)', lambda m: P + '_node_%d' % (int(m.group(1)) + 2), l) for l in header]


def n(v):
    s = ('%.4f' % v).rstrip('0').rstrip('.')
    return '0' if s in ('-0', '') else s


def d(points, close=True):
    return 'M' + ' L'.join('%s,%s' % (n(x), n(y)) for x, y in points) + (' Z' if close else '')


def mat(x, y):
    return 'matrix(1 0 0 1 %s %s)' % (n(x), n(y))


INK = '#EDEDED'      # white-line engraving: the lines are white
PAPER = '#000000'    # on a black ground
# Palette: white lines at three weights, greys from bright to faint, the black ground,
# dark wood fills, wind, the cap, white, black.
palette = [(INK, INK, 1.0), (INK, INK, 0.6), (INK, INK, 1.5), ('#C4C4C4', '#C4C4C4', 0.8),
           ('#9A9A9A', '#9A9A9A', 0.8), ('#737373', '#737373', 0.8), ('#4D4D4D', '#4D4D4D', 0.8),
           (PAPER, PAPER, 0.8), ('#0A0A0A', INK, 0.8), ('#2E2E2E', INK, 0.8), ('#1A1A1A', INK, 0.8),
           ('#050505', INK, 0.9), ('#242424', '#FFFFFF', 0.7), ('#5A5A5A', INK, 1.0), ('#FFFFFF', '#FFFFFF', 0.8),
           ('#000000', '#000000', 0.5)]

out = ['<g id="%s_panel">' % P] + header
add = out.append
CY = 112

# The black ground, a double white rule, and the court's floor.
add('<path d="M6,42 L474,42 L474,216 L6,216 Z" fill="%s" stroke="%s" stroke-width="1.2"/>' % (PAPER, INK))
add('<path d="M9.5,45.5 L470.5,45.5 L470.5,212.5 L9.5,212.5 Z" fill="none" stroke="%s" stroke-width="0.5"/>' % INK)


def ribbon(points, width):
    """A thin closed line: out along the points, back a fraction of a pixel away."""
    back = []
    for i in range(len(points) - 1, -1, -1):
        x, y = points[i]
        a = points[max(i - 1, 0)]
        b = points[min(i + 1, len(points) - 1)]
        dx, dy = b[0] - a[0], b[1] - a[1]
        length = math.hypot(dx, dy) or 1
        back.append((x - dy / length * width, y + dx / length * width))
    return points + back


# Hall: four concentric pointed (two-centred) arches springing from the floor
# (bound, nodes 53..56). Each side is an arc of radius 1.1 W centred on the far
# side of the springing line, meeting at the apex.
arches = [(112, 30), (96, 28), (80, 26), (64, 24)]
for k, (W, S) in enumerate(arches):
    r = 1.1 * W
    cx = -W + r                                   # left side's centre, on the springing line
    h = math.sqrt(r * r - cx * cx)                # apex height above the springing line
    a0, a1 = math.pi, math.atan2(-h, -cx) + 2 * math.pi
    left = [(-W, 0), (-W, -S * 0.5)]
    for i in range(21):
        a = a0 + (a1 - a0) * i / 20
        left.append((cx + r * math.cos(a), -S + r * math.sin(a)))
    apex = left.pop()
    line = left + [apex] + [(-x, y) for x, y in reversed(left)]
    add('<path id="%s_node_%d" transform="%s" d="%s" fill="%s" stroke="%s" stroke-width="0.4"/>' %
        (P, 53 + k, mat(240, 203), d(ribbon(line, 0.9)), INK, INK))
# Paving: a floor line with stone joints.
add('<path d="M10,203 L470,203 L470,203.8 L10,203.8 Z" fill="%s" stroke="%s" stroke-width="0.3"/>' % (INK, INK))
for i, x in enumerate(range(22, 470, 26)):
    y0, y1 = (203.8, 212.5) if i % 2 else (203.8, 208)
    add('<path d="M%s,%s L%s,%s L%s,%s L%s,%s Z" fill="%s" stroke="%s" stroke-width="0.3"/>' %
        (n(x), n(y0), n(x + 0.7), n(y0), n(x + 0.7), n(y1), n(x), n(y1), INK, INK))
add('<path d="M10,208 L470,208 L470,208.5 L10,208.5 Z" fill="%s" stroke="%s" stroke-width="0.2"/>' % ('#737373', '#737373'))

# Echo strokes (bound, 48..52): a wave ribbon along x.
wave = [(x, 2.6 * math.sin(2 * math.pi * x / 30)) for x in [(-30 + 60 * i / 29) for i in range(30)]]
for k in range(5):
    add('<path id="%s_node_%d" transform="%s" d="%s" fill="#C4C4C4" stroke="#C4C4C4" stroke-width="0.5"/>' %
        (P, 48 + k, mat(640, 320), d(ribbon(wave, 0.9))))
# Bell rays (bound, 27..35): fine wedges pointing along +x from the mouth.
for k in range(9):
    add('<path id="%s_node_%d" transform="%s" d="M5,-0.75 L36,0 L5,0.75 Z" fill="%s" stroke="%s" stroke-width="0.6"/>' %
        (P, 27 + k, mat(640, 320), INK, INK))


def ellipse(rx, ry, count, start=0.0):
    return [(rx * math.cos(start + 2 * math.pi * i / count), ry * math.sin(start + 2 * math.pi * i / count))
            for i in range(count)]


# The gust (mutable outline 2), at rest beyond the bell.
add('<path id="%s_node_2" transform="%s" d="%s" fill="none" stroke="%s" stroke-width="0.9" stroke-linejoin="round"/>' %
    (P, mat(410, CY), d(ellipse(58, 9, 64)), INK))
# Breath flecks (bound, 36..47): small curved dashes.
fleck = [(-2.6, -0.4), (0, -1.0), (2.6, -0.4), (2.6, 0.35), (0, -0.15), (-2.6, 0.35)]
for k in range(12):
    add('<path id="%s_node_%d" transform="%s" d="%s" fill="%s" stroke="%s" stroke-width="0.6"/>' %
        (P, 36 + k, mat(640, 320), d(fleck), INK, INK))
# The note puff (bound, 57).
add('<circle id="%s_node_57" transform="%s" cx="0" cy="0" r="8" fill="none" stroke="#737373" stroke-width="0.8"/>' %
    (P, mat(640, 320)))

# Pale underlays: the widest shawm and the crumhorn's crook, so the arches pass behind.
shawm = []
for i in range(40):
    t = i / 39
    shawm.append((48 + 242 * t, CY - (3 + 7.5 * t) - 1.5))
for i in range(30):
    s = i / 29
    shawm.append((290 + 54 * s, CY - (10.5 + 19 * s ** 3) - 1.5))
shawm += [(x, 2 * CY - y) for x, y in reversed(shawm)]
add('<path d="%s" fill="%s" stroke="%s" stroke-width="0.3"/>' % (d(shawm), PAPER, PAPER))
crook = []
for side in (1, -1):
    pts = []
    x = y = 0.0
    for i in range(32):
        h = math.radians(95 * (2 * i + 1) / 62)
        if i:
            x += 60 / 31 * math.cos(h)
            y += 60 / 31 * math.sin(h)
        w = 5.2 + 1.2 * (i / 31) ** 4 + 1.5
        pts.append((290 + x - side * w * -math.sin(h), CY + y - side * w * math.cos(h)))
    crook += pts if side == 1 else list(reversed(pts))
add('<path d="%s" fill="%s" stroke="%s" stroke-width="0.3"/>' % (d(crook), PAPER, PAPER))

# The body (mutable outline 0, drawn at scale 2) and the bell end (outline 1).
body = [(-60.5 + 121 * i / 31, -(3 + 7.5 * i / 31) / 2) for i in range(32)]
body += [(x, -y) for x, y in reversed(body)]
add('<path id="%s_node_0" transform="%s" d="%s" fill="none" stroke="%s" stroke-width="1.2" stroke-linejoin="round"/>' %
    (P, mat(169, CY), d(body), INK))
bell = [(54 * i / 31, -(10.5 + 14 * (i / 31) ** 3)) for i in range(32)]
bell += [(x, -y) for x, y in reversed(bell)]
add('<path id="%s_node_1" transform="%s" d="%s" fill="none" stroke="%s" stroke-width="1.2" stroke-linejoin="round"/>' %
    (P, mat(290, CY), d(bell), INK))
# Finger holes: seven on the front, engraved deep.
for x in (122, 140, 158, 182, 200, 218, 244):
    add('<circle cx="%s" cy="%s" r="1.9" fill="%s" stroke="%s" stroke-width="0.4"/>' % (n(x), n(CY), INK, INK))
# Bore rings (bound, 13..26): thin ellipses inside the body.
for k in range(14):
    add('<path id="%s_node_%d" transform="%s" d="%s" fill="none" stroke="%s" stroke-width="0.6"/>' %
        (P, 13 + k, mat(640, 320), d(ellipse(1.3, 10, 24)), INK))
# The pirouette: the lip rest around the staple.
add('<path d="M40,104.5 L44,103 L48,104.8 L48,119.2 L44,121 L40,119.5 Z" fill="#1A1A1A" stroke="%s" stroke-width="1"/>' % INK)
add('<path d="M43.6,103.4 L44.4,103.4 L44.4,120.6 L43.6,120.6 Z" fill="%s" stroke="%s" stroke-width="0.3"/>' % (INK, INK))
# The reed (mutable outline 3).
reed = [(-24 * i / 31, -(1.4 + 2.8 * i / 31)) for i in range(32)]
reed += [(x - 0.2, -y) for x, y in reversed(reed)]
add('<path id="%s_node_3" transform="%s" d="%s" fill="none" stroke="%s" stroke-width="1" stroke-linejoin="round"/>' %
    (P, mat(40, CY), d(reed), INK))
# The crumhorn's wind cap (bound, 12), over the reed.
cap = [(-18 + 9 * math.cos(a), 9 * math.sin(a)) for a in [math.pi / 2 + math.pi * i / 16 for i in range(17)]]
cap += [(4, -9), (12, -7.5), (16, -6.2), (16, 6.2), (12, 7.5), (4, 9)]
add('<path id="%s_node_12" transform="%s" d="%s" fill="#1A1A1A" stroke="%s" stroke-width="1.2" stroke-linejoin="round"/>' %
    (P, mat(640, 320), d(cap), INK))

for i, (fill, stroke, width) in enumerate(palette):
    add('<circle id="%s_palette_%d" cx="640" cy="0" r="1" fill="%s" stroke="%s" stroke-width="%s"/>' %
        (P, i, fill, stroke, n(width)))
add('</g>')
open(root + '/panel.svg.fragment', 'w').write('\n'.join(out) + '\n')
print(len(out), 'lines')
