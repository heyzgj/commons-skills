---
name: collage-maximalist-culture
description: Culture/arts magazine built as a physical collage — four typefaces crashing together, torn-edge clip-paths, rotated elements, halftone textures, and three OKLCH accent colors screaming from every section. More Is More.
metadata: design-skill
---

# Collage Maximalist Culture

## What This Skill Does

Routes an experimental collage-maximalism visual system into culture and arts editorial products. Every section looks like a different page torn from a different magazine, assembled on a studio floor. Typography collides (Bebas Neue / Playfair Display / Work Sans / Space Mono). Sections bleed into each other via torn clip-paths and negative-margin overlaps. The color logic is adversarial — pink next to yellow next to teal, each fighting for dominance.

## When to use

- Best for culture magazines, arts publications, gallery announcement pages, music festival sites
- Best for editorial projects where visual anarchy is the brand statement
- Use when you need the interface to feel like a physical zine, not a CMS template
- Use when the audience reads Frieze, attends biennales, and would mock a Squarespace layout

## When not to use

- Avoid for SaaS, dashboards, or corporate products — this aesthetic communicates chaos, not trust
- Avoid for e-commerce requiring clear product hierarchy — the collage format obscures scanning
- Avoid for accessibility-critical products — the rotated and overlapping elements require extra care
- Avoid for anything that must feel calm, authoritative, or neutral

## Default Workflow

1. Read this `SKILL.md` first to decide whether collage maximalism fits the product pressure.
2. Read `https://joincommons.cc/api/items/collage-maximalist-culture/raw/design-language` when you need the full design language — color semantics, typeface roles, torn-edge clip-path patterns, halftone formulas, and motion constraints.
3. Use `tokens.dtcg.json` when mapping the system into code.
4. Inspect `exhibit.html` as the living proof surface — the PASTICHE magazine exhibit shows every pattern in use.
5. Check `https://joincommons.cc/api/items/collage-maximalist-culture/raw/anti-patterns` if the output starts to feel like a Squarespace template.

## Supporting Files

- `https://joincommons.cc/api/items/collage-maximalist-culture/raw/design-language`: canonical design language — OKLCH palette, four-font collision system, torn-edge polygons, halftone textures, rotated element rules, section anatomy.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, fonts, spacing, animation, and opacity.
- `exhibit.html`: full proof-of-concept — PASTICHE culture magazine, Issue 47, with all sections.
- `https://joincommons.cc/api/items/collage-maximalist-culture/raw/design-language`: extended system docs with per-section layout patterns.
- `https://joincommons.cc/api/items/collage-maximalist-culture/raw/image-kit`: verified Unsplash URLs and photography placement rules.
- `https://joincommons.cc/api/items/collage-maximalist-culture/raw/anti-patterns`: topic-specific failure modes and AI slop checklist.

## Non-negotiables

- Four typefaces must be present on the same page simultaneously.
- At minimum 3 elements must use `transform: rotate()` between 3–15 degrees.
- At minimum 2 sections or images must use torn-edge `clip-path: polygon()` values.
- At least 3 different OKLCH accent colors (pink, yellow, teal/orange) must be visible at once.
- Pull quotes must cross section boundaries using absolute positioning or negative margins.
- No two sections may share the same layout structure.

## Output Expectations

- Produce a single full-page HTML document, not isolated component cards.
- Include all four typefaces (Bebas Neue, Playfair Display, Work Sans, Space Mono) on the same page.
- Each section must use a different background color and layout structure.
- Include at minimum: hero, features grid, editorial section, events, and a subscription CTA.
- Apply `:focus-visible` outlines on all interactive elements for keyboard accessibility.
- Wrap all entrance animations in `@media (prefers-reduced-motion: no-preference)`.

## Reuse and Adaptation Guidance

- Keep these traits stable: four-font system, torn polygon clip-paths, OKLCH newsprint palette, per-section color variety, rotated elements.
- Safe variation knobs: content (articles, events, contributors), number of sections, specific rotation angles, specific torn-edge polygon coordinates.
- Do not add: dark mode, harmonious color palette, rounded corners on section containers, single-font system, glassmorphism, smooth clip-paths.

## Supporting References

- Reference publications (Frieze, Artforum, Ray Gun, The Face) are inspirational references only.
- `https://joincommons.cc/api/items/collage-maximalist-culture/raw/design-language`, `https://joincommons.cc/api/items/collage-maximalist-culture/raw/image-kit`, and `https://joincommons.cc/api/items/collage-maximalist-culture/raw/anti-patterns` are the authoritative bundle-local references.
- No external dependencies required to produce output in this style.

## Common Failure Modes

- Single typeface with "creative" weights — collage maximalism requires 4 genuinely different fonts clashing.
- Harmonious color palette — the colors must not feel like they belong together; tension is the point.
- Smooth clip-paths using border-radius or ellipses instead of jagged polygon() torn edges.
- Every element rotated by the same angle — variety (3deg, 7deg, -2deg, 15deg) creates collage feel.
- Clean white space between sections — if there's empty space, fill it with texture, color, or overlap.
- Using dark mode — this system is warm newsprint-base with bright pops; dark mode kills it.
- Symmetric layouts — if it feels centered, rotate it 3 degrees.
