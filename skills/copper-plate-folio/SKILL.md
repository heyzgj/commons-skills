---
name: copper-plate-folio
description: A printmaker's portfolio catalog built from inline SVG engravings (hatching, stipple, drypoint strokes), CSS hatching textures, plate-mark inset shadows, cartouche borders, warm OKLCH paper at hue 82, verdigris patina accent, and Spectral + Inconsolata typography.
metadata: design-skill
---

# Copper Plate Folio

## What This Skill Does

Routes an intaglio-printmaking visual system into a portfolio catalog for fine art prints. Every artwork is an inline SVG rendered in a five-class engraving stroke vocabulary (main-line, hatch-line, accent-line, stipple-dot, stipple-dot-light). The page uses warm dampened-paper tones, plate-mark inset shadows, hatching CSS textures, a cartouche double-border for the statement, and Spectral + Inconsolata typography.

## When to use

- Best for fine art printmaker portfolios and edition catalogs
- Best for gallery exhibition online catalogs and print fair presentations
- Use when all visuals should be hand-drawn SVG, not photography
- Use when the page must feel like a printed catalog on archival paper

## When not to use

- Avoid for photography-heavy portfolios because this system uses zero images
- Avoid for SaaS dashboards or data-dense interfaces because the layout is sparse and archival
- Avoid for anything requiring soft geometry, gradients, or modern UI patterns
- Avoid for e-commerce with product photos because the SVG-only approach cannot display products

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/copper-plate-folio/raw/design-language` when you need the full design language, pattern rules, adaptive behavior, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check reference files when you need extended design documentation.

## Supporting Files

- `https://joincommons.cc/api/items/copper-plate-folio/raw/design-language`: canonical design language — OKLCH color system, SVG stroke vocabulary, hatching patterns, plate-mark shadows, cartouche borders, typography, layout, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font families, sizes, weights, spacing, letter-spacing, line-heights, durations, and easing.
- `exhibit.html`: the full proof-of-concept page — a fictional intaglio printmaker's catalog with eight SVG plates, artist statement, exhibitions, and colophon.
- `evidence/blueprints.json`: layout blueprint coverage (if present).
- `evidence/component-matrix.json`: component and state coverage (if present).
- `https://joincommons.cc/api/items/copper-plate-folio/raw/design-language`: extended design system with hatching pattern formulas and SVG class reference.
- `https://joincommons.cc/api/items/copper-plate-folio/raw/image-kit`: image guidance (this skill uses zero photography — all visuals are inline SVG).
- `https://joincommons.cc/api/items/copper-plate-folio/raw/anti-patterns`: eight topic-specific traps and a universal AI slop checklist.

## Supporting References

- Reference sites (printshoparchive.com, british-museum.ac.uk/collection/prints) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document with inline SVG illustrations, not component cards.
- Preserve the five-class SVG stroke vocabulary, warm OKLCH palette, plate-mark inset shadows, and hatching textures exactly as specified.
- Include responsive behavior (640px grid collapse, 768px padding reduction).
- Include `prefers-reduced-motion` support for staggered entry animations.

## Reuse and Adaptation Guidance

- Keep these traits stable: Spectral + Inconsolata only, warm OKLCH palette (neutrals hue 50-82, accent hue 165), five SVG stroke classes, plate-mark inset shadows, zero border-radius, cartouche used once only.
- Safe variation knobs: number of catalog entries, SVG subjects (architecture, botany, anatomy, cartography, etc.), exhibition list length, statement content, edition numbering, spacing values.
- Do not add photography, sans-serif fonts, border-radius, gradient backgrounds, or box-shadows on elements other than `.plate-mark`.

## Non-negotiables

- All artwork visuals must be inline SVG using the five-class stroke system (main-line, hatch-line, accent-line, stipple-dot, stipple-dot-light).
- Keep bundle claims truthful — this is a light-only, warm-paper, SVG-illustration portfolio system.
- Zero border-radius on every element.
- Patina accent chroma must stay at 0.10 or below (desaturated verdigris, not vivid green).
- Plate-mark inset box-shadow is mandatory on all artwork containers.

## Common Failure Modes

- Using photographs instead of inline SVG illustrations — breaks the engraving medium metaphor.
- Making the patina accent too saturated (chroma > 0.10) — turns a printmaker's folio into a tech landing page.
- Adding a sans-serif font — the Spectral + Inconsolata pairing is the catalog convention (serif body + monospace data).
- Removing plate-mark inset shadows — the most recognizable artifact of intaglio printing.
- Adding border-radius anywhere — copper plates and paper are always square-cut.
- Overusing the cartouche border — it belongs on the artist statement only, not on every section.
- Making hatching lines thicker than 0.5px — destroys the subliminal engraved-tonal quality.
