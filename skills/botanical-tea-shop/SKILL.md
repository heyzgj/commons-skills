# Botanical Tea Shop — Design Skill

## Design Context

**Brand:** STEEPWELL — Ritual Herbal Teas (small-batch, certified organic, est. 2018)

**Target audience:** Wellness-oriented consumers aged 28–50, primarily women, who value intentional living, slow rituals, and provenance-forward food products. They shop at Cuyana, buy from small farms, and take morning routines seriously.

**Use cases:** Herbal tea e-commerce, botanical wellness brands, subscription box shops, apothecary stores, organic skincare, artisan food markets, slow-living editorial sites.

**Brand personality:** Quiet luxury. Unhurried. Deeply grounded. Every word and visual choice signals that slowing down is the point — not a feature, the entire philosophy. Organic, earthy, sophisticated without being cold.

---

## Design Direction

**Tone:** Hushed reverence for nature. Not rustic-farmhouse, not clinical wellness. Somewhere between a Japanese herbalist's study and a Nordic slow-living magazine. The word "ritual" recurs intentionally — elevates routine to ceremony.

**The ONE memorable thing:** Organic warmth held within restrained modernism. The palette is earth — cream, sage, clay, terracotta, forest green — but the typography is confident Playfair Display with generous whitespace that prevents it from feeling dusty or nostalgic.

**The arch motif:** Arched image containers (`border-radius: 200px 200px 24px 24px`) appear on the main garden and gift images — this single shape encodes "organic, living" without resorting to illustration.

**Reference sites:** byredo.com (restrained product storytelling), studionicolholmberg.com (typography-first craft), libertylondon.com (botanical richness without clutter), matcha.com (herbal wellness brand positioning).

**What makes it unforgettable:** The staggered 4-column product grid where even columns drop `margin-top: 36px`, creating an organic falling rhythm. Combined with card hover that lifts `translateY(-8px)` and the subtle sepia filter on every photo, the whole page feels like something discovered rather than designed.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/botanical-tea-shop/raw/design-language` in full before writing any markup. Every color, spacing value, radius, and animation rule is specified. Do not deviate or invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/botanical-tea-shop/raw/image-kit`. All Unsplash URLs are pre-verified. Use them in the placements specified. Apply the sepia/saturation filter (`filter: sepia(12%) saturate(85%)`) to every product and editorial image to unify the palette.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. Nav (fixed, frosted-glass, logo left / links right / pill CTA)
2. Hero (full-viewport, photography background with gradient overlay, bottom-anchored headline)
3. Collection grid (4-col staggered, `.tea-card` pattern with arch or card radius, number label + name + italic tagline + ingredients + price + circular add button)
4. Brewing guide (dark forest-green section, 3-column grid panel, large numeric stats)
5. Garden/About (2-col layout, arched image with floating accent, values list with sage dot markers)
6. Gift/Subscription (cream background, option rows with slide-right hover, arched image)
7. Testimonial (centered italic Playfair quote, large stone-colored quotation mark)
8. Newsletter strip (clay background, horizontal layout, pill-shaped email form)
9. Footer (dark background, 4-col grid, sage column labels)

Include: grain texture overlay (JS canvas), scroll-reveal (IntersectionObserver), hero parallax (rAF scroll listener).

**Step 4 — Self-critique**
Read the output back and check:
- Does every image have `filter: sepia(12%) saturate(85%)`?
- Is the hero headline in italic sage for the poetic word (e.g., `<em>ritual</em>`)?
- Are even-column product cards offset `margin-top: 36px`?
- Does the add-to-cart button rotate 90° on hover?
- Is the grain layer `opacity: 0.028` (barely visible)?
- Are all font sizes using `clamp()` for fluid scaling at headline scale?
- Does the brew guide section use `var(--dark-bg)` (#2D3A31), not black?
- Do arched images use `border-radius: 200px 200px 24px 24px`?

---

## Gotchas

1. **Wrong dark color.** The "dark" section (`brewing`, `footer`) uses `--dark-bg: #2D3A31` — forest green, not #000 or #1a1a1a. Using generic black destroys the botanical warmth and makes it look like a generic dark-mode template.

2. **Convergent fonts.** This design explicitly uses Playfair Display + Source Sans 3. Do not substitute Inter, Lato, Raleway, or any other pairing — they will kill the editorial tension that makes this work.

3. **Sepia filter omission.** Every photograph must receive `filter: sepia(12%) saturate(85%)` (or a close variant). Raw Unsplash photos are too saturated and too diverse in color temperature — they will fight the earth-tone palette.

4. **Missing stagger.** The 4-column product grid requires `margin-top: 36px` on `.tea-card:nth-child(4n+2)` and `.tea-card:nth-child(4n+4)`. Without this, the grid looks mechanical and loses its signature organic rhythm.

5. **Grain too heavy or missing.** The grain overlay is `opacity: 0.028` — barely perceptible. Grain above 0.06 makes it look like a film grain effect; grain at 0 makes the flat backgrounds feel lifeless. Get the value exactly right.

6. **Arch shape applied wrong.** `border-radius: 200px 200px 24px 24px` means top-left, top-right, bottom-right, bottom-left — pointed bottom, arched top. Do not apply it as a uniform pill. It is used specifically on portrait-orientation images (aspect-ratio 3/4 or 4/5).

7. **CTA hover color.** The primary CTA button background transitions from `--sage` (#8C9A84) to `--terracotta` (#C27B66) on hover — not to a darker sage, not to black. Terracotta is the warm punctuation color; use it consistently for hover states across the nav CTA and the add-to-cart button.

8. **Over-decorating the brewing section.** The brewing guide achieves its richness through large Playfair Display numerals (42px `brew-val`) and the `brew-grid` panel treatment (2px gap, low-opacity background tiles). Adding extra decorative elements — icons beyond the minimal SVG outlines, borders, or colored backgrounds — ruins the austere quality of this section.
