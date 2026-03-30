# Ceramic Studio Folio — Design Skill

## Design Context

**Brand archetype:** A solo ceramicist's portfolio site — museum-catalog precision meets artisan warmth. Think Sofia Morales, not Crate & Barrel.

**Target audience:** Collectors, gallery curators, design journalists, and commission clients who expect craft to be presented with the same rigor as fine art. They visit Zona Maco and Design Miami, read Cereal Magazine, and buy objects with provenance stories.

**Use cases:** Ceramic artist portfolio, potter studio site, gallery exhibition page, artisan craft catalog, handmade goods folio, sculpture studio, glassblower portfolio, any maker who presents individual pieces as named specimens with technical data.

**Brand personality:** Quiet authority. Material honesty. The voice is declarative and unhurried — clay teaches patience, and the site reflects that patience. The aesthetic sits between a Japanese ceramics exhibition catalog and a Oaxacan craft gallery.

---

## Design Direction

**Tone extreme:** Museum specimen catalog crossed with a working studio's warmth. Clinical documentation (monospace data grids, Roman numeral series headers, SVG technical illustrations) placed inside organic shapes (blob containers, asymmetric radii, paper-grain texture). The tension between precision and irregularity IS the design.

**The ONE memorable thing:** Organic blob-shaped image containers. Every photo and illustration lives inside an asymmetric `border-radius` frame that echoes the irregular forms of thrown ceramic vessels. No two blobs are the same. This single device makes the entire page unmistakable.

**Reference sites:** byredo.com (restrained product grid), rfraga.com (artisan portfolio), cefrancisceramics.com (specimen documentation), aesop.com (material honesty, quiet palette).

**What makes it unforgettable:** SVG vessel silhouettes as product illustrations (not photos), each filled with the named glaze color. The timeline gradient that represents kiln temperature. Tenmoku-tinted shadows that carry the glaze palette into every depth layer.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/ceramic-studio-folio/raw/design-language` in full. Every OKLCH color, blob radius, font size, easing curve, and layout specification is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/ceramic-studio-folio/raw/image-kit`. All 6 Unsplash photo IDs are pre-verified. Use photos only for environmental shots (studio, process, gallery). Individual specimen pieces use inline SVG silhouettes — never photos.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **Nav** — fixed, frosted-glass (`backdrop-filter: blur(12px)`), wordmark left (Fira Mono 11px tracked), nav links right
2. **Hero** — full-vh, 2-col grid, headline + subtitle + dual CTA left, blob-framed photo right, scroll-hint with animated celadon bar
3. **Philosophy** — `--kiln-paper` bg, 3-col grid with decorative numerals (01/02/03) in `--bisque-line`
4. **Process** — horizontal 5-step timeline with gradient bar (`shino → iron-red → celadon`), individually colored dots, 2-col blob-framed process images below
5. **Collections** — Roman-numeral series headers, specimen grids with card shapes matching vessel proportions (tall/medium/wide), SVG vessel silhouettes, monospace data cards
6. **Featured piece** — 2-col, portrait blob-framed photo left, Gilda Display blockquote with celadon left border right
7. **Gallery row** — 3-col asymmetric blob grid (1fr 1.5fr 1fr)
8. **Exhibitions** — dark `--tenmoku` section, ruled list with large year numerals, hover indent
9. **Contact** — `--kiln-paper` bg, 2-col, heading + CTA left, detail lines right
10. **Footer** — single centered line, monospace, `--slip-gray`

Include: paper-grain SVG texture on body (`opacity: 0.025`), IntersectionObserver scroll reveal, `prefers-reduced-motion` support.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/ceramic-studio-folio/raw/anti-patterns` and check every item. Then verify:
- All blob radii are unique asymmetric percentages?
- SVG fills use named glaze colors, not generic fills?
- All shadows use `oklch(0.25 0.03 50 / x)`, not `rgba(0,0,0,x)`?
- Gilda Display at weight 400 only?
- Dark section is `--tenmoku`, not #000?
- Paper grain is `opacity: 0.025`, not heavier?

---

## Gotchas

1. **Rectangular images.** Every image container must be an organic blob with asymmetric `border-radius` percentages. Rectangles or uniform radii destroy the core metaphor.

2. **Photos instead of SVGs for specimens.** Individual pieces are SVG silhouettes with glaze-colored fills. Environmental/studio shots use photos. Mixing these roles produces visual confusion.

3. **Wrong dark color.** The exhibitions section uses `--tenmoku` (`oklch(0.25 0.03 50)`) — warm brown-dark, not black. Pure black kills the material warmth.

4. **Generic shadows.** All shadows are tenmoku-tinted: `oklch(0.25 0.03 50 / 0.06-0.12)`. Using `rgba(0,0,0,x)` introduces a cold neutral that fights the warm OKLCH palette.

5. **Bold headings.** Gilda Display is used at weight 400 everywhere. Its letterforms carry inherent visual weight. Bolding it makes it heavy and loses the delicate quality.

6. **Uniform blob shapes.** Each blob must have different radius values. Copy-pasting one `border-radius` defeats the organic metaphor — thrown ceramics are never identical.

7. **Missing specimen data.** Each piece needs a monospace data grid (dimensions, glaze type, temperature, year). Without this, the museum-catalog language is lost and the page becomes a generic gallery.

8. **Timeline without gradient.** The process timeline bar must use `linear-gradient(to right, var(--shino), var(--iron-red), var(--celadon))` — it represents the kiln's heat journey. A flat gray line removes the domain-specific meaning.
