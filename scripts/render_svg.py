#!/usr/bin/env python3
"""Render palettes.svg (the README hero) from the palette JSONs.

One row per palette: bg, fg, then every accent — so the picture can never
drift from the source of truth. Rerun after touching any palette.
"""

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ORDER = ["box-uk-contrast", "solarized-osaka", "cyberpunk-lucy", "night-city-mix"]
W, ROW_H, HEAD_H, PAD = 1080, 118, 26, 8


def luminance(h):
    r, g, b = (int(h[i:i + 2], 16) / 255 for i in (1, 3, 5))
    return 0.2126 * r + 0.7152 * g + 0.0722 * b


rows = []
for slug in ORDER:
    p = json.loads((ROOT / "palettes" / f"{slug}.json").read_text())
    cells = [("bg", p["background"]["bg"]), ("fg", p["foreground"]["fg"])] + list(p["accents"].items())
    rows.append((p["name"], cells))

H = len(rows) * (HEAD_H + ROW_H)
out = [
    f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}" font-family="SF Mono,Menlo,monospace">',
    f'<rect width="{W}" height="{H}" fill="#0d1114"/>',
]
y = 0
for name, cells in rows:
    out.append(f'<text x="{PAD}" y="{y + 18}" fill="#c8d6f0" font-size="13" font-weight="700">{name}</text>')
    cw = W / len(cells)
    for i, (label, hexv) in enumerate(cells):
        x = i * cw
        fill = "#0d1114" if luminance(hexv) > 0.45 else "#e8f0ff"
        out.append(f'<rect x="{x:.1f}" y="{y + HEAD_H}" width="{cw:.1f}" height="{ROW_H}" fill="{hexv}"/>')
        cx = x + cw / 2
        out.append(f'<text x="{cx:.1f}" y="{y + HEAD_H + ROW_H / 2 - 4:.1f}" fill="{fill}" font-size="11" font-weight="700" text-anchor="middle">{label}</text>')
        out.append(f'<text x="{cx:.1f}" y="{y + HEAD_H + ROW_H / 2 + 12:.1f}" fill="{fill}" font-size="9" text-anchor="middle" opacity="0.9">{hexv}</text>')
    y += HEAD_H + ROW_H
out.append("</svg>")

(ROOT / "palettes.svg").write_text("\n".join(out) + "\n")
print(f"palettes.svg rendered: {W}x{H}, rows: " + ", ".join(f"{n} ({len(c)} cells)" for n, c in rows))
