---
name: letterpress-cv
description: A single-page CV rendered as fine stationery — EB Garamond on warm OKLCH cotton paper with debossed text-shadows, dual fractal-noise textures, 0.5px hairline rules, and a settle-down entrance animation.
metadata: design-skill
---

# Letterpress CV

## What This Skill Does

Routes a letterpress-stationery visual system into a single-page CV or professional biography. The design makes type appear physically pressed into warm cotton paper using a debossed text-shadow technique, dual SVG noise textures, and 0.5px hairline rules. One typeface (EB Garamond) carries the entire hierarchy through weight, style, and size.

## When to use

- Best for creative director CVs, designer portfolios, typographer personal sites
- Best for studio team bios and fellowship applications
- Use when you need quiet authority, material honesty, and editorial restraint
- Use when the page itself should demonstrate typographic taste

## When not to use

- Avoid for data-heavy dashboards because the sparse single-column layout cannot accommodate dense data
- Avoid for e-commerce or SaaS landing pages because there are zero interactive components beyond links
- Avoid for anything requiring photography — this is a pure typography system
- Avoid for multi-page applications — this is a single-sheet document

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/letterpress-cv/raw/design-language` when you need the full design language, pattern rules, adaptive behavior, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check evidence files when you need blueprint/component coverage, not before.

## Supporting Files

- `https://joincommons.cc/api/items/letterpress-cv/raw/design-language`: canonical design language — OKLCH color system, deboss shadow formulas, paper texture SVG filters, typography scale, layout patterns, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, letter-spacing, line-heights, spacing, animation durations, and opacity values.
- `exhibit.html`: the full proof-of-concept page — a fictional creative director CV rendered as a letterpress-printed cotton sheet.
- `evidence/blueprints.json`: layout blueprint coverage (if present).
- `evidence/component-matrix.json`: component and state coverage (if present).
- `https://joincommons.cc/api/items/letterpress-cv/raw/design-language`: extended design system documentation.
- `https://joincommons.cc/api/items/letterpress-cv/raw/image-kit`: image guidance (this skill uses zero photography).
- `https://joincommons.cc/api/items/letterpress-cv/raw/anti-patterns`: seven topic-specific traps and a universal AI slop checklist.

## Supporting References

- Reference sites (pentagram.com/about, studiolin.com, experimental-jetset.nl/cv) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document, not isolated component cards.
- Preserve the debossed text-shadow system, warm OKLCH palette, and paper texture exactly as specified.
- Include print styles that remove screen affordances.
- Include responsive behavior for narrow screens (< 520px entry header stacking).

## Reuse and Adaptation Guidance

- Keep these traits stable: EB Garamond only, warm OKLCH palette (hue 50-80), deboss text-shadows, 0.5px hairline rules, settle-down animation, max-width 680px page sheet.
- Safe variation knobs: number of sections, content (names, titles, dates, descriptions), page padding values, animation stagger timing, colophon text.
- Do not add sans-serif or monospace fonts, photography, icons, border-radius, or box-shadows on elements other than `.page`.

## Non-negotiables

- Preserve the debossed text-shadow system (both `--deboss-lo` AND `--deboss-hi` layers).
- Keep bundle claims truthful — this is a light-only, sparse, single-page CV system.
- Use progressive disclosure: do not load or quote deeper files unless the task needs them.
- EB Garamond is the only permitted typeface.
- All colors must use OKLCH with warm hue values.

## Common Failure Modes

- Adding a second typeface for "contrast" — the single-family discipline IS the aesthetic.
- Using cool or neutral greys instead of warm OKLCH hue 50-80.
- Making rules 1px instead of 0.5px — doubles the visual weight.
- Reversing the settle animation to fade-up instead of the correct press-down direction.
- Placing paper texture pseudo-elements on `body` instead of `.page`.
- Omitting one layer of the deboss shadow, producing a drop-shadow instead of a pressed impression.
- Reading `https://joincommons.cc/api/items/letterpress-cv/raw/design-language` before deciding whether the system fits the brief.
