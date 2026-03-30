---
name: dreamcore-sleep-journal
description: Ethereal near-white dreamcore aesthetic for dream journal and sleep tracking interfaces featuring Gaussian blur atmosphere, drifting pastel blobs, SVG grain overlay, colored box-shadows, mask-image dissolving photography, and underwater-slow ambient animations.
version: 1.0.0
author: commons
tags:
  - dreamcore
  - sleep
  - journal
  - ethereal
  - blur
  - glass
  - atmospheric
  - lucid-dreaming
---

# Dreamcore Sleep Journal

## What This Skill Does

Provides a complete dreamcore design system for building dream journal, sleep tracking, and lucid dreaming interfaces. Every surface dissolves through Gaussian blur, shadows glow pink and lavender, photos emerge from fog via mask-image gradients, and animations move at underwater speed (8-20s cycles). The aesthetic captures the hypnagogic state between waking and sleeping.

## When to use

- Dream journal and sleep diary applications
- Lucid dreaming practice and training platforms
- Sleep quality trackers and stage visualizers
- Meditation, mindfulness, and relaxation tools
- Dream interpretation and symbol dictionaries
- ASMR and hypnotherapy interfaces

## When not to use

- High-contrast data-dense dashboards
- E-commerce with sharp product photography
- Corporate enterprise or financial tools
- Clinical health/fitness platforms requiring WCAG AAA
- Any interface where sharp edges and high text contrast are essential

## Default Workflow

1. **Load design language** — Read `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/design-language` for all oklch colors, typography, layout patterns, motion rules, and signature visual elements.
2. **Load image kit** — Read `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/image-kit` for verified Unsplash URLs and dissolving-photo treatment rules.
3. **Build** — Produce a single self-contained HTML with 5 mandatory atmospheric layers: SVG grain, drifting blobs, body saturation filter, backdrop-filter glass panels, colored shadows.
4. **Self-critique** — Read `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/anti-patterns` and check every item: gray shadows, hard photo edges, fast animations, dark backgrounds.

## Supporting Files

| File | Purpose |
|---|---|
| `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/design-language` | Full color system, typography, layout patterns, motion, signature moves |
| `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/image-kit` | Verified Unsplash URLs with placement and treatment rules |
| `https://joincommons.cc/api/items/dreamcore-sleep-journal/raw/anti-patterns` | Topic-specific traps, AI slop checklist, self-critique protocol |
| `tokens.dtcg.json` | DTCG format design tokens extracted from exhibit CSS |
| `exhibit.html` | Reference implementation — the standard to match |

## Output Expectations

- Single self-contained HTML file, ~45KB, 1280px viewport
- Light theme only (body oklch L > 0.92)
- 5-7 content sections, all dream/sleep domain-specific
- Fonts: Cormorant Infant (display), Quicksand (body), IBM Plex Mono (data)
- All oklch colors with LOW chroma, all colored shadows, zero gray
- SVG feTurbulence grain mandatory, backdrop-filter blur on every glass surface
- All photos dissolve via mask-image radial-gradient, no hard rectangular crops
- Content voice: surreal fragments, ellipses, incomplete sentences, dream non-sequiturs

## Reuse and Adaptation Guidance

**Adaptable:** Section count, specific dream entries, symbol choices, calendar month, technique selection, form fields. Typography sizes can scale with `clamp()`. Blob count (3-5) and colors within the low-chroma oklch range.

**Invariant:** The 5 atmospheric layers (grain, blobs, body filter, glass blur, colored shadows), the dissolving photo treatment, the colored-only shadow rule, the light-theme requirement (L > 0.92), the font trio, and the underwater animation speeds.

## Non-negotiables

1. Body `filter: saturate(0.8) brightness(1.1)` for washed-out overexposure
2. SVG feTurbulence grain overlay at opacity 0.03-0.05 covering full viewport
3. ALL box-shadows use colored oklch values — zero gray shadows anywhere
4. ALL photos use mask-image radial-gradient dissolve — zero hard rectangular crops
5. ALL glass panels use `backdrop-filter: blur(30px)` — no opaque cards
6. Background oklch L > 0.92 — this is NOT dark mode
7. Animations minimum 8s ambient cycles, 0.6s hover transitions — nothing fast

## Common Failure Modes

1. **Dark mode instinct.** Sleep = night = dark backgrounds. Wrong. Dreamcore is ethereal near-white, overexposed, luminous. Making it dark destroys the entire aesthetic.
2. **Gray shadows.** The single most common failure. Every `box-shadow` must use colored oklch (pink/lavender/mint). Search your output for `rgba(0,0,0` — if found, replace.
3. **Hard photo edges.** Forgetting `mask-image` on even one image breaks the illusion. Photos must dissolve into the page like memories surfacing through fog.
4. **Decorative blur vs atmospheric blur.** Applying `backdrop-filter` to one card but not others makes it a CSS effect, not an atmosphere. Apply to EVERY glass surface.
5. **Fast animations.** The instinct to make hover transitions 200-300ms. In dreamcore, everything moves underwater: 0.6-0.8s minimum for interactions, 8-20s for ambient.
6. **Clinical sleep data.** Turning the sleep stage visualizer into a Fitbit chart with axes and gridlines. The data should feel like flowing colored bands of consciousness, not metrics.
7. **Structured dream text.** Writing complete sentences with proper grammar. Dream entries are fragments that trail off mid-thought: "The floor was warm like skin. Someone was calling my name..."
8. **Emoji or polished icons.** Dream symbols need hand-drawn SVG line art: `stroke-width: 1`, `fill: none`, low opacity. Not Material Icons, not Lucide, not emoji.
