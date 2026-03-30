---
name: white-cube-folio
description: Hushed gallery-white portfolio for designers who let work speak. Warm OKLCH neutrals, Bodoni Moda at weight 400, solid color rectangles for projects, and a 40vh opening void that functions as a gallery entrance.
---

# White Cube Folio

## What This Skill Does

Produces a minimalist portfolio page styled as a white-cube gallery exhibition. Projects appear as solid OKLCH color rectangles with serif titles. The page begins with 40vh of empty space (the gallery threshold) before any content. Typography is split between Bodoni Moda (display, weight 400) and Hanken Grotesk (body, weight 300). The overall atmosphere is hushed Scandinavian restraint.

## When to use

- Graphic designer personal portfolio
- Art director folio site
- Brand identity or editorial design showcase
- Packaging designer personal site
- Any creative portfolio where the work should speak without decoration

## When not to use

- E-commerce product pages needing CTAs and pricing
- SaaS dashboards needing information density
- Content-heavy blogs needing reading rhythm
- Agency sites with team bios and testimonials
- Data-driven applications needing tables and interactive controls

## Default Workflow

1. Read `https://joincommons.cc/api/items/white-cube-folio/raw/design-language` to internalize the four OKLCH color tokens, two-font system, spacing rhythm, and all implementation invariants.
2. Read `tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Build the page: fixed nav, 40vh void, project sequence (color rectangles + titles + meta), colophon, footer.
4. Inspect `exhibit.html` as the proof surface if any detail is ambiguous.
5. Self-critique against the non-negotiables below before shipping.

## Supporting Files

- `https://joincommons.cc/api/items/white-cube-folio/raw/design-language`: Full design language with color system, typography scale, pattern rules, component states, adaptive behavior, accessibility requirements, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, spacing, and animation values.
- `exhibit.html`: Proof surface showing the complete system under real portfolio pressure.
- `evidence/blueprints.json`: Blueprint coverage across product slices (when available).
- `evidence/component-matrix.json`: Component and state coverage (when available).

## Supporting References

- `https://joincommons.cc/api/items/white-cube-folio/raw/design-language`: Extended design system documentation with brand identity details.
- `https://joincommons.cc/api/items/white-cube-folio/raw/image-kit`: Documents the no-photography approach and OKLCH color rectangle palette.
- `https://joincommons.cc/api/items/white-cube-folio/raw/anti-patterns`: Eight topic-specific failure modes with self-critique protocol.

## Output Expectations

A single-page HTML portfolio with:
- Fixed nav (name left, link right, no background)
- 40vh opening void terminated by a 1px rule
- 4-8 project cards: full-width OKLCH color rectangle + Bodoni Moda title + uppercase meta
- Colophon with bio (max-width 480px) and contact email
- Footer with year and location at 11px opacity 0.6
- Scroll-reveal animation via IntersectionObserver
- Full responsive behavior across mobile, default, and desktop breakpoints
- Complete `prefers-reduced-motion: reduce` support

## Reuse and Adaptation Guidance

The color rectangles can be replaced with project-specific OKLCH values. The title font (Bodoni Moda) and body font (Hanken Grotesk) are the system identity and should not be substituted. When adapting for a studio landing page, keep the vertical rhythm and add a second metadata field (client name) but do not add team photos or testimonials.

## Non-negotiables

1. Opening void: 40vh of empty space before any content. No hero, no headline, no image.
2. Bodoni Moda weight 400 for titles. Never bold.
3. Hanken Grotesk weight 300 for all body text. No exceptions.
4. OKLCH tinted neutrals (hue 90 warm, hue 260 cool). Never flat hex greys.
5. No `box-shadow`, no `border-radius` (except 3px meta-dot), no gradients.
6. No hover effects on project cards. Only the contact link has a hover state.
7. No dark mode. The white cube is the concept.

## Common Failure Modes

1. Filling the opening void with a hero headline or tagline — this destroys the gallery threshold.
2. Using bold Bodoni (weight 700) — this loses the hairline serifs that define the aesthetic.
3. Adding hover transforms to project cards — in a gallery, art does not move when you approach.
4. Replacing OKLCH color rectangles with photography or gradients — the flat color field is intentional.
5. Using flat grey hex values instead of OKLCH tinted neutrals — this kills the warmth.
6. Center-aligning the bio or letting it span full width — the narrow left-aligned column mimics a gallery information card.
