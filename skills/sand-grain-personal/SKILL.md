---
name: sand-grain-personal
description: A personal portfolio rendered as a desert landscape -- vast OKLCH sand voids between sparse typographic landmarks, Anybody variable font at condensed stretch, fixed SVG fractalNoise grain, a single horizon rule, and opacity-fade interactions.
metadata: design-skill
---

# Sand Grain Personal

## What This Skill Does

Routes a desert-landscape visual system into a single-scroll personal portfolio. The design communicates taste through extreme negative space -- massive vh-based voids separate sparse typographic landmarks on a 300vh warm sand surface. Anybody variable font at condensed stretch, a fixed SVG fractalNoise grain overlay, a single 1px horizon rule, and opacity-fade hovers create a page that scrolls like crossing dunes.

## When to use

- Best for designer personal portfolios and creative freelancer about pages
- Best for architect personal sites and photographer landing pages
- Use when you need atmospheric restraint and landscape-scale negative space
- Use when the emptiness between sections should communicate more than the content

## When not to use

- Avoid for data-heavy dashboards because the ultra-sparse layout cannot accommodate dense data
- Avoid for e-commerce or SaaS landing pages because there are zero interactive components beyond links
- Avoid for content-rich blogs or multi-section marketing sites because the design depends on minimal content
- Avoid for anything requiring complex navigation -- this is a single-scroll page with no nav

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/sand-grain-personal/raw/design-language` when you need the full design language, pattern rules, adaptive behavior, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check evidence files when you need blueprint/component coverage, not before.

## Supporting Files

- `https://joincommons.cc/api/items/sand-grain-personal/raw/design-language`: canonical design language -- OKLCH color system (sand, charcoal, dune), Anybody variable font axes, vh-based void layout, SVG grain texture, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, stretch, letter-spacing, line-heights, spacing, animation durations, and opacity values.
- `exhibit.html`: the full proof-of-concept page -- a fictional product designer's personal portfolio rendered as a desert landscape scroll.
- `evidence/blueprints.json`: layout blueprint coverage (if present).
- `evidence/component-matrix.json`: component and state coverage (if present).
- `https://joincommons.cc/api/items/sand-grain-personal/raw/design-language`: extended design system documentation with full extraction from exhibit.
- `https://joincommons.cc/api/items/sand-grain-personal/raw/image-kit`: image guidance (this skill uses zero photography).
- `https://joincommons.cc/api/items/sand-grain-personal/raw/anti-patterns`: seven topic-specific traps and a universal AI slop checklist.

## Supporting References

- Reference sites (maxim-aginsky.com, adriencoquet.com, calmaria.app) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document, not isolated component cards.
- Preserve the warm OKLCH sand palette (hue 60-75), vh-based void layout, and SVG grain texture exactly as specified.
- Include reduced-motion styles that disable all animations.
- Include responsive behavior for narrow screens (< 640px margin and void height adjustments).

## Reuse and Adaptation Guidance

- Keep these traits stable: Anybody font only, warm OKLCH palette (hue 60-75), vh-based voids, fixed SVG grain at 0.035 opacity, left-aligned asymmetric layout, 300vh minimum page height.
- Safe variation knobs: content (names, roles, project titles, venues), number of project links, void heights (minimum 15vh each), mobile breakpoint thresholds.
- Do not add second fonts, photography, icons, centered layout, link underlines, or decorative elements.

## Non-negotiables

- Preserve the three-color warm OKLCH system (sand hue 75, charcoal hue 60, dune hue 70).
- Keep bundle claims truthful -- this is a light-only, ultra-sparse, single-scroll portfolio system.
- Use progressive disclosure: do not load or quote deeper files unless the task needs them.
- Anybody is the only permitted typeface. Use weight and stretch axes for hierarchy.
- All section voids must use vh units to maintain viewport-relative landscape proportions.

## Common Failure Modes

- Filling the void sections with content -- the emptiness IS the design.
- Adding a second typeface for "contrast" -- the single-family variable font discipline IS the aesthetic.
- Centering content instead of left-aligning at margin-left: max(14vw, 2.5rem).
- Using cool greys or pure white instead of warm OKLCH hue 60-75.
- Increasing grain opacity above 0.035 -- the texture should be subliminal.
- Using fixed px for void sections instead of vh -- breaks the landscape proportions.
- Reading `https://joincommons.cc/api/items/sand-grain-personal/raw/design-language` before deciding whether the system fits the brief.
