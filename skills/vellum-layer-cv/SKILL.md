---
name: vellum-layer-cv
description: A single-page CV rendered as stacked tracing paper — Sora at five weights on cool OKLCH grey, backdrop-filter blur panels at varied alpha, overlapping sections with uneven negative margins, a 32px dot-grid cutting mat texture, and ambient floating sheets with mouse-follow parallax.
metadata: design-skill
---

# Vellum Layer CV

## What This Skill Does

Routes a translucent-layer visual system into a single-page CV or professional biography. The design creates depth through overlapping panels with backdrop-filter blur, where each section sits atop the previous like tracing paper on a cutting mat. Sora and JetBrains Mono carry the type hierarchy, while varied negative margins, four pill-tag translucency variants, and ambient floating sheets with mouse-follow parallax establish spatial depth without color or imagery.

## When to use

- Best for design engineer CVs, creative technologist portfolios, developer about pages
- Best for studio team bios and architecture/spatial design portfolios
- Use when you need architectural precision and spatial depth
- Use when the page itself should demonstrate translucent layering sensibility
- Use when you want cool-neutral achromatic tone with zero photography

## When not to use

- Avoid for data-heavy dashboards because the layered single-column layout cannot accommodate dense data
- Avoid for e-commerce or SaaS landing pages because there are minimal interactive components
- Avoid for warm or cozy brand identities — the palette is intentionally cool and achromatic
- Avoid for anything requiring photography or saturated color — this is a pure CSS geometry system
- Avoid for multi-page applications — this is a single-sheet document

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/vellum-layer-cv/raw/design-language` when you need the full design language, pattern rules, adaptive behavior, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check `references/` files when you need extended design language, image guidance, or anti-patterns.

## Supporting Files

- `https://joincommons.cc/api/items/vellum-layer-cv/raw/design-language`: canonical design language — OKLCH color system (hue 240 throughout), Sora/JetBrains Mono typography, spacing scale, layout patterns, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, letter-spacing, line-heights, spacing, border-radius, animation durations, easing curves, and backdrop-filter blur values.
- `exhibit.html`: the full proof-of-concept page — a fictional design engineer CV rendered as stacked translucent vellum panels on a dot-grid cutting mat.
- `https://joincommons.cc/api/items/vellum-layer-cv/raw/design-language`: extended design system — pill variants, ambient sheet specs, hover formulas, background composition.
- `https://joincommons.cc/api/items/vellum-layer-cv/raw/image-kit`: image guidance (this skill uses zero photography, pure CSS texture).
- `https://joincommons.cc/api/items/vellum-layer-cv/raw/anti-patterns`: seven topic-specific traps, universal AI slop checklist, and self-critique protocol.
- `evidence/blueprints.json`: layout blueprint coverage (if present).
- `evidence/component-matrix.json`: component and state coverage (if present).

## Supporting References

- Reference sites (linear.app, vercel.com/design, rauno.me) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document, not isolated component cards.
- Preserve the translucent panel system, cool OKLCH palette (hue 240), backdrop-filter blur, and varied stack overlap exactly as specified.
- Include the dot-grid cutting mat texture on `body::before`.
- Include ambient floating sheets with mouse-follow parallax for desktop.
- Include responsive behavior: hide ambient sheets and hero layers below 768px, stack entries single-column, reduce panel padding.
- Include `prefers-reduced-motion` fallback: all durations to 0.01ms.

## Reuse and Adaptation Guidance

- Keep these traits stable: Sora + JetBrains Mono, cool OKLCH palette (hue 240, chroma < 0.01), backdrop-filter blur on panels, varied negative stack margins, 2px border-radius, dot-grid on body::before, inverse hover blur (decrease from 20px to 8px).
- Safe variation knobs: number of sections, content (names, titles, dates, descriptions), specific negative margin values (within -20px to -36px), ambient sheet dimensions, panel padding.
- Do not add color accents, photography, icons, border-radius above 2px, or uniform stack margins.

## Non-negotiables

- Hover blur DECREASES (20px to 8px), never increases — this is the signature inversion.
- Panel alpha stays between 0.42 and 0.88 — going above 0.9 kills the translucency.
- Stack negative margins must VARY per section — uniform spacing reads as a grid system.
- Hero name splits light/bold (300/700) across two lines — never all-bold.
- All colors use OKLCH hue 240 with chroma below 0.01 — no warm tones, no saturated accents.
- The dot grid lives on `body::before`, never on panels.
- Keep bundle claims truthful — this is a light-only, airy, single-page CV system.

## Common Failure Modes

- Increasing blur on hover instead of decreasing — produces generic glassmorphism instead of the inverse lift effect.
- Using uniform negative margins on the stack — looks like a CSS bug, not hand-placed sheets.
- Setting panel alpha above 0.9 — destroys the translucency that defines the entire design.
- Adding border-radius above 2px — tracing paper has cut edges, not iOS widget corners.
- Placing the dot grid on panels instead of body::before — simulates graph paper, not a cutting mat.
- Mixing font family roles — Sora for dates or JetBrains Mono for pill labels breaks the information hierarchy.
- Making the hero name all weight 700 — the light/bold split (300/700) mirrors the translucent-to-opaque principle.
- Omitting ambient floating sheets — they establish the z-axis depth that makes panel stacking meaningful.
