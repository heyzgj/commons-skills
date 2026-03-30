# Pop Art Persona — Design Skill

## Design Context

**Audience:** Creative directors, brand strategists, art directors, graphic designers, illustrators — anyone whose personal brand IS their visual identity.

**Use cases:** Creative portfolio, personal brand site, art-print shop, creative studio landing, freelance creative's homepage.

**Brand personality:** Loud, graphic, unapologetically bold. Treats personal branding like a print run — every element references offset printing craft (CMYK color separations, halftone dots, registration marks, plate wipes). Zero subtlety, zero gradients, zero stock photos. Pure flat color, hard borders, and typographic punch on warm paper stock.

---

## Design Direction

**Tone:** EXTREME graphic energy. This is a screen-printed poster that became a website. Every pixel reads like ink on paper — heavy black borders, solid CMYK color fills that collide (never blend), and halftone dot textures on everything.

**The ONE memorable thing:** A 2x2 CSS-only self-portrait grid where each cell is a different color separation (magenta, cyan, yellow, black) of the same geometric face, with deliberate misregistration offsets (1-3px translate per cell) simulating imperfect plate alignment from real offset printing.

**Reference sites to absorb:**
- andywarholmuseum.org — color separation portraits as identity
- sagmeisterwalsh.com — graphic boldness, type-as-visual
- pentagram.com — portfolio card layouts with heavy type
- hfrframing.com — print-production craft as aesthetic

**What makes it unforgettable:** The combination of three halftone dot densities (sparse 12px, standard 8px, dense 5px) as section textures, color plate-wipe dividers that animate from left on scroll, registration marks that parallax, and a comic-book speech bubble with a CSS triangle tail. No other portfolio system uses print-production mechanics as its entire visual language.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/pop-art-persona/raw/design-language` completely. Every color is OKLCH, every border is 4-5px solid black, every font has a specific role (Anton = headlines, Bangers = editorial accents, Righteous = sub-display, Barlow = body). Do not invent values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/pop-art-persona/raw/image-kit`. This exhibit uses ZERO photography. All visuals are CSS geometry, solid color fields, and halftone textures. Do not add stock photos.

**Step 3 — Build**
Implement sections in order: fixed header → hero with 2x2 portrait grid → marquee strip → color plate wipe → prints gallery → speech-bubble quote → gallery shows (magenta bg) → bio (black bg with halftone) → commission CTA (circle bubble) → footer.

Key construction rules:
- **Palette:** `--bg: oklch(0.97 0.01 90)`, `--magenta: oklch(0.60 0.25 350)`, `--cyan: oklch(0.65 0.20 230)`, `--yellow: oklch(0.90 0.18 95)`, `--black: oklch(0.15 0 0)`, `--halftone: oklch(0.20 0.02 350)`
- **Borders:** 4-5px solid black on everything — cards, header, marquee, bubbles, portrait cells
- **Shadows:** Hard offset only (`4px 4px` via separate div), zero blur. Hover extends to `6px 6px` while card translates `-3px/-3px`
- **Halftone dots:** `radial-gradient(circle, var(--halftone) Npx, transparent Npx)` — sparse (0.8px at 12px), standard (1px at 8px), dense (1.5px at 5px)
- **Registration marks:** Crosshair + circle at section corners, parallax on scroll (±0.02 scroll multiplier)
- **Portrait grid:** 2x2 grid, CSS geometric face (oval head + rectangular glasses + triangular goatee), four CMYK colors, each cell offset 1-3px
- **Plate wipes:** 64px tall, 4 equal color bars, `scaleX(0→1)` on scroll with 80ms stagger
- **Marquee:** Yellow bg, duplicated content, `translateX(-50%)` at 20s linear infinite
- **Entrance easing:** `cubic-bezier(0.16, 1, 0.3, 1)` for all entrance animations
- **Scroll reveals:** `.reveal` class with `translateY(30px)→0`, 0.6s, staggered 50ms

**Step 4 — Self-critique gate**
Read `https://joincommons.cc/api/items/pop-art-persona/raw/anti-patterns` and answer:
1. Does every section have halftone dots at the correct density?
2. Are registration marks present at section corners?
3. Does the 2x2 portrait grid show four CMYK colors with misregistration offsets?
4. Do plate-wipe dividers animate from left on scroll with staggered timing?
5. Are all four font families present (Anton, Bangers, Righteous, Barlow)?
6. Are ALL shadows hard offset with zero blur?
7. Is there zero photography — only CSS shapes, color fields, and type?
If any answer is no, fix before delivering.

---

## Gotchas

1. **Soft shadows or blur anywhere** — All shadows are hard offset blocks (4px/4px via a shadow div). Any `box-shadow` with blur or `border-radius` on cards breaks the print-production aesthetic.

2. **Colors blending or gradients** — Magenta, cyan, yellow, black are used as SOLID fills on discrete elements. They collide, they never blend. No gradients, no color transitions, no opacity blending between palette colors.

3. **Missing halftone density variation** — Three distinct dot sizes must appear. Using one uniform halftone across the whole page flattens the texture hierarchy.

4. **Portrait grid without misregistration** — Each cell needs a different translate offset (1-3px). Without it, the four cells are just colored squares — the print-craft illusion dies.

5. **Photographs instead of CSS geometry** — This is a no-photo design system. The portrait is CSS shapes. Print-card visuals are solid color + centered type. Adding real images destroys the graphic flatness.

6. **Font substitution** — Anton / Bangers / Righteous / Barlow. Do not substitute Inter, Geist, Space Grotesk, or any sans-serif default. The four-font system creates the display/accent/sub-display/body hierarchy.

7. **Static plate wipes** — The color bars must animate `scaleX(0→1)` from left on scroll. Without the animation and stagger, they look like static colored rectangles.
