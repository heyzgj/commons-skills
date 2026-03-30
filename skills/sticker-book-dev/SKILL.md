# Sticker Book Dev — Design Skill

## Design Context

**Brand archetype:** A developer's personal portfolio disguised as a physical sticker collection page. Think laptop-lid culture meets graph-paper notebook — not a corporate resume.

**Target audience:** Developers, hiring managers, and OSS collaborators who appreciate craft and personality. They have sticker-covered laptops, attend JSConf, contribute to open source, and judge portfolios by taste not templates.

**Use cases:** Developer portfolio, personal site, open-source showcase, conference speaker page, side-project gallery, contribution tracker, any maker who ships things and wants to show them as collectible trophies.

**Brand personality:** Playful precision. The voice is informal and proud — every shipped project earns a sticker. The aesthetic sits between a DevRel swag table and a carefully curated notebook page.

---

## Design Direction

**Tone extreme:** Physical sticker collection on graph paper. Die-cut vinyl shapes (hexagons, circles, stars, rounded-rects) placed at random rotations on a 24px grid. Masking-tape section labels. Click-to-flip 3D reveals. The page IS a sticker book page — not a page themed like one.

**The ONE memorable thing:** Sticker shapes as portfolio cards. Every project, contribution, and achievement is a die-cut sticker with a vinyl white border, a unique rotation, and a 3D flip to reveal details on cross-hatched backing paper. No rectangles. No card grids. Stickers.

**Reference sites:** hexb.in (hex sticker gallery), laptop sticker walls at conferences, Scratch-and-Sniff sticker sheets from the 80s, dev.to badge systems.

**What makes it unforgettable:** The holographic star sticker with mouse-tracked conic-gradient shimmer. The masking-tape section labels with torn-edge texture. The staggered entrance animation where stickers appear one by one as if being placed on the page.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/sticker-book-dev/raw/design-language` in full. Every OKLCH color, sticker shape, font weight, easing curve, and layout pattern is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/sticker-book-dev/raw/image-kit`. This exhibit uses zero photos. All visuals are CSS shapes, gradients, and textures. Add photos only if the adapted domain genuinely requires them.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **Header** — site name in Fira Code mono (`> BRAND.DEV`), collection title in Rubik 900 with one highlighted word (marker background), italic subtitle, bio line in mono
2. **Click hint** — `"click any sticker to flip it"` in Fira Code, fades in after stickers load
3. **Shipped** — tape label + subtitle, flex-wrap sticker grid of hex stickers (projects)
4. **Patches** — tape label + subtitle, circle stickers (contributions with PR counts)
5. **Rare Finds** — tape label + subtitle, mixed shapes: holographic star (conference), gold badge (milestone), RC-rect (residency/program)
6. **Trading** — tape label + subtitle, rounded-rect bumper stickers (looking-for / collab asks) with peel-corner hover
7. **Contact** — address label with dashed border, slight rotation, "PEEL HERE" label, mono links
8. **Footer** — centered mono tagline

Include: graph-paper background on body, staggered entrance animation (80ms per sticker), 3D flip interaction, holographic mouse-tracking JS, keyboard accessibility (tabindex + Enter/Space to flip), `prefers-reduced-motion` support.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/sticker-book-dev/raw/anti-patterns` and check every item. Then verify:
- Every sticker has a unique `--rotate` value?
- All stickers flip with 3D rotateY + perspective?
- Vinyl white border on every shape (4-5px)?
- Tape labels have rotation, stripe edges, and mask-image?
- Holographic star tracks mouse position?
- Entrance animation staggers correctly via `--i` index?

---

## Gotchas

1. **Rectangular cards.** Every portfolio item must be a sticker shape (hex, circle, star, rounded-rect). Standard card layouts destroy the metaphor entirely.

2. **No rotation.** Stickers placed at 0deg on a grid look like a spreadsheet. Each sticker needs a unique `--rotate` value between -2.5deg and +2.5deg.

3. **Missing vinyl border.** The thick white ring (4-5px) is what makes shapes look like die-cut stickers. Without it, they are just colored blobs.

4. **Tape labels without torn edges.** Plain colored bars are not tape. The diagonal-stripe pseudo-elements and mask-image edge fade are essential.

5. **Static holographic.** The conic-gradient on the star sticker must track the mouse cursor via JS. A static rainbow gradient has none of the physical delight.

6. **Flat background.** The 24px graph-paper grid on `--paper` IS the sticker book page. Without it, stickers lose their physical context.

7. **Missing flip backs.** Every sticker must flip to reveal a back side with cross-hatch texture, title, description, and tech stack. Front-only stickers are just badges.
