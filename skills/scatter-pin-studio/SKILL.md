---
name: scatter-pin-studio
description: Exploratory pin-board studio portfolio with scattered rotated cards, CSS pin marks and tape strips, sticky-note colored backgrounds, irregular clip-path image masks, hover-reveal hidden details, and handwritten Caveat annotations. Organized chaos over a 12-column grid backbone.
---

# Scatter Pin Studio

## What This Skill Does

Provides a complete design system for building an exploratory pin-board portfolio that feels like leaning over a designer's desk. Cards scatter at unique rotations with CSS pin marks and tape strips, photos use irregular clip-path masks, hover straightens chaos to reveal hidden details. The underlying 12-column grid keeps everything responsive while the visual read is hand-placed disorder.

## When to use

- Design studio portfolio or creative agency site
- Art director personal folio or branding firm showcase
- Collage-style lookbook or experimental studio landing
- Any creative practice presenting work as exploration rather than polished case studies
- Light-theme, warm, playful, tactile aesthetics

## When not to use

- SaaS landing pages, corporate dashboards, or e-commerce stores
- Data-dense interfaces or documentation sites
- Dark-theme products
- Anything requiring uniform card grids or mathematical precision

## Default Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/scatter-pin-studio/raw/design-language` in full. Every OKLCH color, rotation angle, clip-path polygon, font weight, and shadow depth is extracted from the exhibit.
2. **Load image kit** — read `https://joincommons.cc/api/items/scatter-pin-studio/raw/image-kit`. Both Unsplash photo IDs are pre-verified. Use photos for environmental studio/team shots only. Project thumbnails use colored card backgrounds.
3. **Build** — produce a single self-contained HTML file following the section order in `https://joincommons.cc/api/items/scatter-pin-studio/raw/design-language`: header (100vh, studio name, tagline on yellow card, hero photo with clip-path), projects (12-col scatter, 5-6 cards at mixed scales), manifesto (headline + blockquote + collage), team (flex-wrap scatter), contact (centered yellow pinned note), footer.
4. **Self-critique** — read `https://joincommons.cc/api/items/scatter-pin-studio/raw/anti-patterns` and check every item. Verify overlaps, unique rotations, irregular clip-paths, hover reveals, pin marks, and scale variation.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/scatter-pin-studio/raw/design-language` | Full design language — colors, typography, layout, motion, signature moves |
| `SKILL.md` | This file — workflow, constraints, failure modes |
| `tokens.dtcg.json` | DTCG-format design tokens extracted from exhibit CSS |
| `exhibit.html` | Reference implementation |
| `https://joincommons.cc/api/items/scatter-pin-studio/raw/design-language` | Extended design system documentation |
| `https://joincommons.cc/api/items/scatter-pin-studio/raw/image-kit` | Verified Unsplash URLs with usage guidance |
| `https://joincommons.cc/api/items/scatter-pin-studio/raw/anti-patterns` | Topic-specific traps and self-critique protocol |

## Output Expectations

- Single self-contained HTML file with inline CSS and minimal JS (IntersectionObserver)
- Fonts loaded from Google Fonts: Syne (400-800), Work Sans (300-500), Caveat (400-700)
- Paper grain SVG texture via `feTurbulence` at opacity 0.03
- All images from verified Unsplash URLs with `clip-path: polygon()`
- `prefers-reduced-motion` support for all transitions and animations
- Semantic HTML: header, section, article, footer with descriptive alt text

## Reuse and Adaptation Guidance

**Adaptable:** Project names, client industries, team members, manifesto copy, studio name, location, contact details. Number of projects (4-8). Specific rotation angles within the -3 to +3 degree range. Clip-path polygon coordinates. Sticky-note color assignments per card.

**Fixed:** The scatter-rotation paradigm, pin/tape physical metaphors, light warm paper palette, Syne/Work Sans/Caveat font stack, hover-reveal interaction pattern, 12-column grid backbone, ink-tinted OKLCH shadows.

## Non-negotiables

1. Every card has a unique rotation between -3deg and +3deg, alternating direction
2. At least 3 elements visually overlap via negative margins and z-index layering
3. Photos use irregular `clip-path: polygon()` — never rectangles
4. Hover straightens rotation to 0deg AND reveals hidden content
5. Scale ratio between largest and smallest card is at least 3:1
6. Pin marks and tape strips appear on at least 5 elements
7. Background is warm paper `oklch(0.96 0.01 80)` — no dark mode
8. All shadows use ink-tinted OKLCH values, never `rgba(0,0,0,x)`

## Common Failure Modes

1. **Visible grid alignment.** If cards align to columns or rows, the scatter is too weak. Cards must overlap, nudge into neighbors' space, and break the visual grid.
2. **Same rotation everywhere.** Rotations must alternate direction AND vary in magnitude. Pattern: -1.8, +2.5, -0.8, +3, -1.2, +1.8.
3. **Dark theme.** This is a light design — warm off-white paper. Going dark kills the desk/paper/pin metaphor.
4. **Stock photos as project thumbnails.** Projects use colored card backgrounds (yellow/pink/blue) with text. Only environmental shots use photography.
5. **Hover without reveal.** Hover must straighten rotation AND expand hidden details. Scale-only hover is insufficient.
6. **Missing physical metaphors.** Without pin marks, tape strips, and paper shadows, scattered cards look broken rather than intentionally pinned.
7. **Saturated colors.** Sticky-note colors must feel sun-bleached — chroma under 0.08. Saturated Post-it colors look cheap.
8. **Heavy font weights.** Syne 800 is only for studio name and manifesto headline. Project titles use 700. Body uses Work Sans 300.
