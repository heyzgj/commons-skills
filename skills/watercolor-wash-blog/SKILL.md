# Watercolor Wash Blog — Design Skill

## Design Context

**Brand archetype:** A watercolor artist and art therapist based in Provence — someone whose entire practice is about letting go of control and trusting the medium.

**Target audience:** Artists, therapists, writers, art educators, creative practitioners who value process over product. People who read Maria Popova, keep handwritten journals, and distrust anything that looks "designed."

**Use cases:** Artist portfolio blog, art therapist practice site, creative writing journal, workshop/retreat landing page, gallery exhibition companion, personal essay blog for makers.

**Brand personality:** Intimate, contemplative, unhurried. The page should feel like opening someone's watercolor sketchbook, not browsing a website. Soft, organic, handmade — but not amateur.

---

## Design Direction

**Tone extreme:** A painting made of web pages. Every element — backgrounds, images, containers, transitions — borrows from watercolor behavior: pigment pooling, wet-on-wet bleeding, paper grain, organic edges.

**The ONE memorable thing:** Section backgrounds built from 3-layer radial-gradient compositions that simulate watercolor washes pooling on wet paper, with blurred bleeding-edge dividers between them. No section has a flat color. Every background looks painted.

**What makes it unforgettable:** Photos are not placed ON the page — they are pressed INTO it via `mix-blend-mode: multiply` + desaturation + blob-shaped masks. They look like watercolor transfers, not digital images.

**Reference sites:** byredo.com (restrained beauty), kafrfruits.com (organic warmth), chfrfruits.com (painted textures), aesop.com (quiet type + generous whitespace).

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/watercolor-wash-blog/raw/design-language` completely. Every OKLCH color, font size (all `clamp()`), border-radius (all asymmetric), animation curve (`cubic-bezier(0.16, 1, 0.3, 1)`), and image treatment is specified. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/watercolor-wash-blog/raw/image-kit`. Four pre-verified Unsplash URLs. Apply the watercolor treatment to ALL: `filter: saturate(0.85) contrast(0.95) brightness(1.05); opacity: 0.85; mix-blend-mode: multiply; border-radius: 35% 50% 40% 55% / 50% 40% 55% 45%`.

**Step 3 — Build**
Single self-contained HTML file. Required sections in order:
1. **Hero** (rose wash) — full-viewport, Italianno script name, subtitle, location, quote, float-right image
2. **Journal** (teal wash) — 2-col blog grid, `.featured` post spans full width, post dates in uppercase tracking, Italianno post titles, pigment-pool pull quote
3. **Palette** (amber wash) — centered supplies image, 8 pigment swatch blobs with organic radius + hover scale/rotate
4. **About** (lavender wash) — float-left studio image, bio text, credential pill tags
5. **Exhibitions** (rose wash return) — float-right gallery image, workshop/exhibition prose
6. **Contact** (lavender-teal mixed wash) — centered email link, closing pigment-pool quote
7. **Footer** — minimal text, faint paper gradient

Between every section: zero-height bleeding-edge divider with `blur(30px)` gradient blending adjacent wash colors through an intermediate hue.

Include: SVG feTurbulence paper grain (`body::before`, fixed, `opacity: 0.035`), scroll-reveal (IntersectionObserver, `threshold: 0.12`), fixed nav dots with scroll spy, water stain ring decorations with gentle parallax.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/watercolor-wash-blog/raw/anti-patterns` and run through every check. Key questions:
- Does every section background use 3+ radial-gradient layers (not flat color)?
- Are ALL images multiply-blended with blob radius (no rectangles)?
- Do bleeding edges exist between every section pair?
- Is paper grain present at exactly `opacity: 0.035`?
- Does `prefers-reduced-motion` disable all animation?
- Are there ZERO box-shadows and ZERO visible borders?

---

## Gotchas

1. **Flat section backgrounds.** Each wash is 3 overlapping `radial-gradient(ellipse ...)` layers at different positions + `var(--paper-white)` base. Using `background: var(--wash-rose)` as a solid fill destroys the watercolor illusion.

2. **Missing multiply blend on images.** Without `mix-blend-mode: multiply` + reduced opacity + desaturation, photos look pasted on. The blend literally makes the image ink absorb into the paper-white background.

3. **Symmetric border-radius.** Every container uses 4 different values (e.g., `28px 42px 32px 48px` for blog posts). Symmetric radius like `border-radius: 24px` looks mechanical. Watercolor edges are never symmetrical.

4. **No bleeding edges.** The blurred gradient dividers between sections are what make this feel like a continuous painting. Without them, it is just colored rectangles stacked vertically.

5. **Wrong font substitution.** Italianno is the only display font. It is a flowing cursive script, not a serif. Substituting Playfair Display, Georgia, or any serif fundamentally changes the character from handwritten sketchbook to editorial magazine.

6. **Paper grain too heavy.** The SVG noise overlay must be `opacity: 0.035`. At 0.06+ it becomes a visible film-grain effect. At 0 the backgrounds feel flat and digital.

7. **Adding dark mode.** This is light-only by design. Watercolor washes depend on paper-white transparency. Dark backgrounds invert the medium metaphor — paint does not pool on black paper.

8. **Box shadows or visible borders.** This design uses exactly zero of both. Card elevation comes from `backdrop-filter: blur(2px)` and translucent backgrounds, not shadow depth.
