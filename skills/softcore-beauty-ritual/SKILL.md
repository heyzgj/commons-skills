# Softcore Beauty Ritual — Design Skill

## Design Context

**Audience:** Gen Z women 18–28 who document skincare routines on TikTok, know the difference between niacinamide and hyaluronic acid, own 15+ products, follow Hyram and Doctorly, practice the Korean 7-step routine.

**Use cases:** Skincare routine builders, product shelf trackers, ingredient checkers, skin diary logs, glow progress trackers, K-beauty product discovery pages, beauty community apps.

**Brand personality:** Pearlescent, dewy, dreamcore. This is K-beauty ritual as sensory experience — everything shimmers, glows through steam, and feels like opening a luxury skincare app in a warm bathroom. Soft but never clinical.

---

## Design Direction

**Tone:** Dreamcore K-beauty — iridescent surfaces, frosted glass panels, steam drifting behind content, pink-lavender glow on everything. Every surface looks wet.

**The ONE memorable thing:** Real iridescent shimmer — color that shifts on hover/animation like a soap bubble. Not a static gradient. The page must shimmer.

**Reference sites to absorb:**
- Glossier (glossier.com) — soft pink, product photography through haze
- Laneige (laneige.com) — dewy glass-skin aesthetic, pearlescent surfaces
- Drunk Elephant (drunkelephant.com) — playful product presentation
- Byredo (byredo.com) — restrained luxury with atmospheric photography

**Typography signal:** Belleza for display (elegant, tall, fashion-magazine). Lexend for body (modern readability). IBM Plex Mono for data/ingredients. All light-weight.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/softcore-beauty-ritual/raw/design-language` in full. Internalize the OKLCH color palette, all three typefaces, the frosted-glass pattern, steam animation, iridescent gradient, and water-droplet accents.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/softcore-beauty-ritual/raw/image-kit`. Use only verified Unsplash URLs listed there. Every image must use mask-image gradient dissolve + slight blur (1–2px) to feel seen through steam.

**Step 3 — Build**
Construct as single HTML with embedded CSS and minimal vanilla JS. Required elements: steam mist blobs drifting upward (15–25s loops), frosted glass panels (backdrop-filter blur 30px+), iridescent animated gradient on at least one surface, water droplet CSS accents near products, SVG feTurbulence grain overlay, pill-shaped buttons, zero sharp corners (border-radius 20px minimum). Body filter: `saturate(0.82) brightness(1.08)`.

**Step 4 — Self-critique**
Read back the file. Ask: Is the iridescent shimmer actually shifting colors or just a static gradient? Does steam move? Are frosted panels genuinely blurred or just semi-transparent? Any sharp corners? Any gray shadows? Do photos dissolve or sit in rectangles? Does the routine builder feel like a RITUAL or a task list?

---

## Gotchas — Failure Modes

1. **The Ordinary trap.** Clinical white grids with product data tables. This is RITUAL, not catalog. Products float in mist, not rows.

2. **Missing iridescence.** A static pink gradient is not iridescent. The color must shift across pink → blue → violet over time or on hover. Use `background-size: 300% 300%` with animated `background-position`.

3. **Dead frosted glass.** Semi-transparent white panels without `backdrop-filter: blur()` look flat. Genuine frosted glass needs 30px+ blur with content bleeding through as smeared color.

4. **Gray shadows anywhere.** Every shadow must use pink/lavender OKLCH values. `box-shadow: 0 8px 40px oklch(0.88 0.10 340 / 0.3)`. Zero neutral grays.

5. **Sharp corners.** Every container, button, image area must have border-radius 20px+. Buttons are pills (100px). The physical world of skincare is round bottles, jars, tubes — the UI mirrors this.

6. **Photos in rectangles.** Every image needs mask-image gradient dissolve so edges fade into the pearlescent background. Plus a slight blur filter to feel seen through bathroom steam.

7. **Listing ingredients as bullet lists.** Ingredients should be visual — flowing pill tags, hoverable bubbles, or tagged badges. Never plain text lists.

8. **Using green for "natural."** Stay in the pink–lavender–iridescent spectrum. The only non-pink color is mint for ingredient tags, used sparingly.
