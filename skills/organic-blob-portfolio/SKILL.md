---
name: organic-blob-portfolio
description: Biomorphic creative portfolio where everything breathes — animated blob containers, warm cream earth palette, SVG paper texture, and asymmetric layout that feels handmade and alive.
version: 1.0.0
---

# Organic Blob Portfolio

## What This Skill Does

Produces a warm, living creative portfolio where every shape breathes and no container has a hard edge. The signature move is animated 8-value `border-radius` blob containers that slowly morph between organic forms. The palette is warm cream + earth tones (terracotta, sage, sand, lavender, blush) — entirely OKLCH, never cold or digital. Four ambient blobs drift as atmospheric background weather. SVG feTurbulence paper texture makes the page feel like handmade paper.

Use this when the client wants their work to feel grown, not built.

## When to use

- Creative designer, art director, or illustrator portfolio
- Design studio or brand agency website
- Packaging or craft-focused maker portfolio
- Any creative presenting organic/natural work that should feel tactile and warm

## When not to use

- SaaS products, dev tools, or dashboards
- Dark-theme interfaces
- Dense data products or financial services
- Corporate or enterprise contexts where organic warmth reads as unprofessional

## Default Workflow

1. Read `https://joincommons.cc/api/items/organic-blob-portfolio/raw/design-language` for the complete design language — color tokens, blob keyframes, typography scale, layout patterns, and animation spec.
2. Read `tokens.dtcg.json` when you need concrete token values for color, type scale, or motion.
3. Inspect `exhibit.html` as the proof surface — it shows every pattern in context: hero blob image, about section, 12-col project grid, services list, contact form with morphed inputs.
4. Read anti-patterns in `https://joincommons.cc/api/items/organic-blob-portfolio/raw/design-language` (Examples section) before finalizing to avoid blob-monoculture and cold-palette drift.

## Supporting Files

- `https://joincommons.cc/api/items/organic-blob-portfolio/raw/design-language`: canonical design language — blob morph keyframes, OKLCH palette, typography, section layouts, adaptive behavior, accessibility notes, pattern rules.
- `tokens.dtcg.json`: DTCG token source for color, typography scale, motion durations, and layout values.
- `exhibit.html`: full-page proof surface showing all 8 sections and blob patterns under real portfolio content.
- `evidence/blueprints.json`: blueprint coverage across section types.
- `evidence/component-matrix.json`: component/state coverage matrix.

## Output Expectations

- Full-page single-file HTML, self-contained with all CSS and JS inline
- 8 sections: nav, hero, about, work grid, services, clients, contact, footer
- Every major container has animated blob `border-radius` (8-value shorthand)
- All photos inside blob containers with `overflow: hidden`
- 4 fixed ambient background blobs drifting at 20–32s
- SVG feTurbulence paper grain overlay on body
- Warm cream palette throughout — no `#fff`, no `#000`
- IntersectionObserver scroll reveal with staggered delays
- Responsive breakpoint at 900px (collapses to single-column)

## Reuse and Adaptation Guidance

**For ceramics/craft:** Combine blob containers with SVG vessel silhouettes (see ceramic-studio-folio). Add specimen data cards with monospace type.

**For editorial/fashion:** Reduce blob sizes for more refined feel; emphasize Fraunces italic/bold heading contrast; use sand and lavender rather than terracotta as dominant accent.

**For illustration:** Keep blob containers but use actual illustration crops inside them rather than abstract color fills for project thumbnails.

**Adapting the palette:** Replace terracotta with any warm OKLCH hue at ~0.65 lightness and ~0.10–0.14 chroma. Keep the base cream at high lightness (0.94+) and always tinted (never neutral-gray).

**Adapting the layout:** The 12-column asymmetric project grid is the core rhythm device. If you change it to a regular grid, you lose the organic irregularity. Keep at least 3 different column spans across 6 cards.

## Non-negotiables

1. No rectangular images — every `<img>` must be inside an `overflow: hidden` blob container
2. No `#fff`, `#000`, or cold-gray neutrals — all palette values are warm OKLCH
3. Background blobs must drift at 20s minimum — fast blobs break the slow-breath atmosphere
4. Three distinct blob morph keyframes (a, b, c) on different containers — never the same keyframe on adjacent elements
5. SVG feTurbulence paper texture present — omitting it makes blobs look digitally flat
6. Fraunces italic weight-300 paired with upright weight-700 in same heading — this contrast is the typographic DNA

## Common Failure Modes

- **Blob monoculture:** Using blob-morph-a on every container makes them synchronize visually. Three keyframes at different durations are required.
- **Fast drift:** Ambient background blobs at under 15s feel agitated. Slow is the point.
- **Rectangular image leak:** Any `<img>` outside a blob container breaks the biomorphic metaphor. Check in DevTools.
- **Cold palette:** Adding `rgba(0,0,0,x)` shadows or gray text colors introduces digital coldness that fights the OKLCH warmth. Replace with `oklch(0.65 0.03 60 / 0.2)` for borders and `oklch(0.42 0.04 60)` for soft text.
- **Reading `tokens.dtcg.json` before `https://joincommons.cc/api/items/organic-blob-portfolio/raw/design-language`:** Tokens give you values without context. Always load `https://joincommons.cc/api/items/organic-blob-portfolio/raw/design-language` first to understand which patterns and principles drive those values.

## Supporting References

This skill draws on established references for organic/biomorphic web design and warm editorial aesthetics:

- **byredo.com** — restrained warm-palette product presentation, no hard grid edges
- **aesop.com** — material honesty, earthy palette, typographic refinement
- **noguchi.org** — organic sculptural forms as layout inspiration

These are upstream taste references, not technical dependencies. Consult them to calibrate whether the output reads as organically warm or accidentally generic.
