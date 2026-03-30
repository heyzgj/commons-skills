---
name: blueprint-grid-cv
description: A single-page CV rendered as an engineering blueprint — Tektur + Courier New on deep OKLCH blue with a four-layer CSS grid overlay, dimension-line skill bars, circled section markers, annotation leaders, and an ISO 7200 title block.
metadata: design-skill
---

# Blueprint Grid CV

## What This Skill Does

Routes an engineering blueprint visual system into a single-page CV or professional biography. The design presents career data as a technical drawing: deep blue background with white-line grid paper, dimension-line skill bars, lettered section markers in circles, annotation leader callouts, and an ISO 7200 title block. Two typefaces — Tektur for display headings, Courier New for all annotations and data.

## When to Use

- Architect, engineer, or computational designer CVs
- Technical creative professional biography pages
- CAD/BIM specialist or parametric designer portfolio about pages
- Engineering studio team pages
- Any resume where the candidate's domain IS technical drawing

## When Not to Use

- Anything requiring a light background — the blueprint blue IS the identity
- Photography-heavy portfolios — this is a zero-image, pure CSS system
- E-commerce or SaaS landing pages — no interactive components beyond scroll
- Multi-page applications — this is a single-sheet document
- Dashboards requiring color coding — the palette is restricted to two hues

## Design Context

**Audience**: Hiring managers at architecture firms, engineering studios, tech companies seeking technical creatives. People who recognize engineering drawing conventions.
**Personality**: Precise, technical, quietly confident. The page itself demonstrates the candidate's domain fluency — presenting career data in the visual language of their craft.
**The ONE memorable thing**: Skill proficiency shown as architectural dimension lines (arrow endpoints + tick marks + thin fill), not generic progress bars.

## Design Direction

Push the engineering drawing metaphor to full commitment: a fixed grid overlay behind all content, a double-line drawing border frame, circled section markers (A, B, C...) with trailing rules, annotation leader callouts (dot + border-left + horizontal line), and a proper title block with drawing number, scale, date, revision, and status. It should feel like unrolling a blueprint on a drafting table.

**Tone extreme**: This is a technical drawing that happens to contain career data. NOT a dark-themed web page with grid lines.

## Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/blueprint-grid-cv/raw/design-language` for the full OKLCH color table, two-family typography rules, layout patterns, motion specs, and signature moves.
2. **Load image kit** — read `https://joincommons.cc/api/items/blueprint-grid-cv/raw/image-kit`. This is a zero-photography skill. All texture comes from CSS grid lines, borders, and dashed separators.
3. **Build** — produce a single HTML document. Preserve: deep blue background, four-layer grid overlay at 0.35 opacity, Tektur + Courier New font pairing, dimension-line skill bars, circled section markers, annotation leaders, title block, drawing border frame.
4. **Self-critique** — read `https://joincommons.cc/api/items/blueprint-grid-cv/raw/anti-patterns` and verify against all 7 traps + the AI slop checklist. Ask: does this look like an engineering drawing or a web page?

## Stable Traits (do not change)

- Deep blueprint blue background `oklch(0.22 0.08 250)`
- Four-layer CSS grid at 20px/100px intervals, opacity 0.35
- Tektur for headings + Courier New for annotations — no third font
- Two-hue palette: blue 220-250 structural, amber 60 for markers only
- Zero border-radius on any element
- Dimension-line skill bars with arrow endpoints and tick marks
- ISO 7200 title block at bottom-right
- Section markers: circled letters with trailing leader lines
- Drawing border: fixed double-line frame at inset 12px

## Safe Variation Knobs

- Number of sections (A through N)
- Content (names, titles, dates, project descriptions, skill list)
- Section order and which sections to include
- Title block metadata values
- Stagger animation timing
- Drawing sheet max-width (900-1400px)
- Drawing number string and revision code

## Gotchas

1. **Light background kills the metaphor.** The cyanotype blue is non-negotiable. No light theme variant.
2. **Proportional fonts in annotations break alignment.** Courier New is monospace for a reason — dimensions and specifications must align character-by-character.
3. **Grid opacity above 0.5 competes with content.** The grid is background reference, not foreground decoration.
4. **Rounded progress bars destroy the engineering vocabulary.** Skill bars MUST use 1px line + arrow endpoints + tick marks.
5. **Omitting the title block removes the central metaphor.** It is the most recognizable element of any engineering drawing.
6. **Adding more than two hues (blue + amber) breaks the restricted palette.** No green, red, or purple accents.
7. **Collapsible sections break the single-sheet metaphor.** All sections visible, scroll only.

## Supporting Files

- `https://joincommons.cc/api/items/blueprint-grid-cv/raw/design-language`: OKLCH color system, typography scale, layout patterns, motion, signature moves, responsive behavior.
- `https://joincommons.cc/api/items/blueprint-grid-cv/raw/image-kit`: confirms zero photography, lists all CSS texture sources.
- `https://joincommons.cc/api/items/blueprint-grid-cv/raw/anti-patterns`: 7 topic-specific traps + universal AI slop checklist + self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for all colors, sizes, weights, spacing, animation, and easing.
- `assets/exhibit.html`: full proof-of-concept — a fictional architect CV rendered as a blueprint drawing.

## Output Expectations

- Single full-page HTML document with inline CSS and minimal JS
- Deep blue background with visible engineering grid
- All text in Tektur or Courier New, no other fonts
- Dimension-line skill bars, not generic progress bars
- Title block with real metadata (drawing number, scale, date, revision, status)
- Responsive behavior: single-column on mobile, grid hidden on narrow screens
- Scroll-triggered animations for section reveals and skill bar fills
