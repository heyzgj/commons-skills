# Type Specimen Folio — Design Skill

## Design Context

**Audience:** Type designers, font foundries, lettering studios, typographic exhibition
curators, creative directors who treat letterforms as primary material.

**Use cases:** Type designer portfolio, font specimen catalog, design studio folio,
typographic exhibition microsite, creative CV for lettering artists.

**Brand personality:** Rigorous, monochrome, specimen-sheet precise. Typography is not
decoration — it is the subject. Every element on the page exists to showcase glyph forms,
weight variation, and typographic craft. The mood is a pristine print specimen sheet
translated to screen.

---

## Design Direction

**Purpose:** A portfolio that functions as a specimen catalog. Each section demonstrates a
different typographic capability — weight range, kerning precision, compression, variable
animation — so the page itself proves the designer's craft.

**Tone:** Clinical authority. Museum-quiet. The confidence of a type specimen that needs no
explanation beyond the glyphs themselves. Achromatic palette forces the eye to read form
rather than color.

**The ONE memorable thing:** An 8-card specimen grid where every card has a completely
different typographic treatment (weight ramp, compressed stack, inverted code, massive glyph,
overlapping opacity cascade, ultra-thin hairline, stencil cuts, variable wave animation).
The grid IS the portfolio.

**What makes it unforgettable:**
- Hero name at `clamp(80px, 14vw, 220px)` with `line-height: 0.88` — fills the viewport
- Weight ramp strip showing the same word stepping through 7 weights inline
- Kerning pairs with metric annotations and baseline markers — real type tooling on display
- Registration marks in all 4 corners, barely visible, referencing print proofing sheets
- One inverted dark card (Monoline) breaking the light grid rhythm with a code sample
- Variable wave animation cycling `font-weight 200–800` per glyph with staggered delay

**Reference sites to absorb:**
- https://klim.co.nz — specimen-first type foundry, clinical precision
- https://abcdinamo.com — variable font specimens with interactive axes
- https://ohnotype.co — personality within strict typographic framework
- https://typewolf.com — editorial type curation at portfolio scale

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/type-specimen-folio/raw/design-language` completely. The achromatic OKLCH palette (7 grays,
zero chroma), two-font system (Bricolage Grotesque display + Space Mono labels), and
card anatomy are all specified. Do not add colors. Do not add fonts.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/type-specimen-folio/raw/image-kit`. This design uses zero photography — all visual material
comes from glyph forms, CSS pseudo-elements, and opacity variation. Do not add images.

**Step 3 — Build**
- Load Bricolage Grotesque (opsz 12–96, wght 200–800) and Space Mono (400, 700) from
  Google Fonts.
- Hero name: `font-weight: 800`, `font-size: clamp(80px, 14vw, 220px)`, `line-height: 0.88`,
  `letter-spacing: -0.03em`. Must visually dominate the viewport.
- Weight ramp strip: 7 items at weights 200–800 in a flex row, bordered top and bottom.
- Kerning pairs: 4–5 pairs with glyph display (72px), centerline marker via `::after`,
  metric annotation below.
- Specimen grid: 2-column CSS grid. 8 cards, each with unique treatment:
  (1) weight ramp, (2) compressed stack via `scaleX(0.42)`, (3) inverted dark with code,
  (4) massive background glyph at 8% opacity, (5) overlapping glyphs cascading opacity,
  (6) ultra-thin at 220px, (7) stencil cuts via `::after`, (8) variable wave animation.
- Card anatomy: header (title + brief + number) → specimen area → annotation footer with
  metric pairs.
- Registration marks: 4 fixed-position crosshairs at corners, `opacity: 0.15`.
- Scroll reveal: IntersectionObserver, `translateY(24px)` → 0, `opacity 0.7s` with
  `cubic-bezier(0.16, 1, 0.3, 1)`.
- Always include `@media (prefers-reduced-motion: reduce)` — disable all animations.

**Step 4 — Self-critique gate**
Before shipping, answer:
1. Does the hero name feel massive (viewport-filling at display scale)?
2. Are all 8 specimen cards visually distinct from each other?
3. Is the palette strictly monochrome (zero chroma in every OKLCH value)?
4. Does every card have structured annotations (label + value metric pairs)?
5. Does reduced motion work (all reveals instant, wave frozen, cursor static)?
If any answer is NO, fix before shipping.

---

## Gotchas

1. **Color is forbidden.** Not "minimal color" — literally zero chroma. The palette is
   achromatic OKLCH only. Adding a blue link or warm tint breaks the specimen sheet purity.

2. **Two fonts, no more.** Bricolage Grotesque for everything expressive. Space Mono for
   all metadata. A third font destroys the two-voice clarity.

3. **Cards must differ.** The specimen grid's power comes from 8 distinct treatments. If
   cards converge to "big centered text," the catalog metaphor collapses.

4. **Sharp corners everywhere.** Zero border-radius on every element. The only curves are
   the glyph forms themselves. This is a print specimen reference, not a SaaS dashboard.

5. **Annotations are structural.** Every card needs its metric footer (axes, weight, glyph
   count, year). These turn art-project cards into authoritative specimen entries.

6. **The inverted card matters.** Card 3 (Monoline) uses dark background. This single
   inversion creates rhythm in the grid. Don't remove it or make all cards uniform.

7. **Variable wave needs stagger.** Per-glyph `animationDelay = i * 0.18s` creates the
   ripple effect. Without stagger, all glyphs animate in unison and the wave disappears.
