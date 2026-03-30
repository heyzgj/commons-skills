---
name: pressed-botanical-folio
description: Museum-archival botanical illustration portfolio styled as a Victorian herbarium folio. Cormorant Infant / Courier Prime pairing, warm cream OKLCH palette, double-border specimen frames with L-shaped corner mounting tapes, inline SVG hairline botanical drawings, and feTurbulence paper grain.
---

# Pressed Botanical Folio

## What This Skill Does

Produces a botanical illustration portfolio styled as a scientific herbarium folio. Specimens appear as inline SVG line drawings mounted in double-border frames with L-shaped corner tapes, classified with binomial nomenclature and collection metadata. Typography pairs Cormorant Infant (display serif) with Courier Prime (specimen labels). The warm cream OKLCH background simulates archival Fabriano paper with barely-visible SVG noise grain.

## When to use

- Botanical illustration portfolio or catalog
- Herbarium digital archive or specimen collection
- Natural history museum exhibit pages
- Scientific illustration showcase
- Pressed-flower or nature journaling portfolio
- Field guide or plant taxonomy layout

## When not to use

- E-commerce or product pages requiring CTAs and pricing
- SaaS dashboards or data-dense applications
- Photography portfolios (this design is anti-photography by intent)
- Blog or editorial content sites requiring reading rhythm
- Anything requiring dark mode (cream paper is the material premise)

## Default Workflow

1. Read `https://joincommons.cc/api/items/pressed-botanical-folio/raw/design-language` to internalize the OKLCH palette, two-font system, spacing scale, double-border frame rules, and all implementation invariants.
2. Read `tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Build the page: masthead, biome navigation, biome sections with specimen grids (double-border frames, SVG illustrations, classification labels), technique notes, colophon, footer.
4. Inspect `exhibit.html` as the proof surface if any frame nesting, SVG style, or label treatment is ambiguous.
5. Self-critique against the non-negotiables and `https://joincommons.cc/api/items/pressed-botanical-folio/raw/anti-patterns` before shipping.

## Supporting Files

- `https://joincommons.cc/api/items/pressed-botanical-folio/raw/design-language`: Full design language — OKLCH color system, typography scale, layout patterns, component states, adaptive behavior, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, fonts, spacing, and animation values.
- `exhibit.html`: Proof surface with 12 botanically distinct SVG specimens across 3 biome sections.
- `evidence/blueprints.json`: Blueprint coverage across product slices (when available).
- `evidence/component-matrix.json`: Component and state coverage (when available).

## Supporting References

- `https://joincommons.cc/api/items/pressed-botanical-folio/raw/design-language`: Extended design system reference documentation with full color, typography, layout, motion, and signature move details.
- `https://joincommons.cc/api/items/pressed-botanical-folio/raw/image-kit`: Documents the SVG-only illustration approach and provides the full specimen inventory. Official reference for when to use photos vs SVG.
- `https://joincommons.cc/api/items/pressed-botanical-folio/raw/anti-patterns`: Eight topic-specific failure modes, universal AI slop checklist, and five-question self-critique protocol.

## Output Expectations

A single-page HTML botanical folio with:
- Masthead with Cormorant Infant hero title, inset border, SVG corner botanicals at opacity 0.12
- Biome navigation bar with Courier Prime uppercase links and underline-on-hover
- 3 biome sections each with section header, field note dashed box, and specimen grid
- Specimen cards: double-border frame, L-shaped corner tapes, SVG illustration, classification label
- Technique notes section (centered prose, max-width 52ch)
- Colophon with double-border frame, artist bio, publication list
- SVG feTurbulence paper grain at opacity 0.03
- Scroll-reveal via IntersectionObserver with 120ms stagger per card
- Full `prefers-reduced-motion: reduce` support
- Responsive behavior at 768px and 480px breakpoints

## Reuse and Adaptation Guidance

The biome grouping can be replaced with any taxonomic or geographic organization. Specimen card content (binomial, common name, family, region, date, medium) can be adapted to any classification system. SVG illustrations must remain morphologically distinct per species. When adapting for a museum archive, add accession numbers to metadata rows. The double-border frame and corner tape treatment must be preserved — they are the design identity.

## Non-negotiables

1. Double-border specimen frame: outer 1px + 8px gap + inner 1px + L-shaped corner tapes. Never single border.
2. SVG illustrations only. No photography, no raster images, no icon libraries.
3. Cormorant Infant weight 300 for titles, 400 for prose, 500 for binomials. No other weights.
4. Courier Prime for labels and metadata only. Never for headings or body text.
5. OKLCH tinted neutrals (hue 82 cream, hue 50 brown, hue 150 green). Never flat hex greys.
6. Paper grain: feTurbulence at opacity 0.03 exactly. Not higher.
7. No dark mode. The cream paper background is the entire material premise.
8. No border-radius, no box-shadow anywhere.

## Common Failure Modes

1. Using photography instead of SVG line illustrations — destroys the herbarium specimen character.
2. Wrong green: vivid emerald or teal instead of muted fern `oklch(0.45 0.08 150)` — makes it look like a gardening app.
3. Single border on specimen cards instead of double-border with corner tapes — loses the museum mounting metaphor.
4. Paper grain too heavy (above 0.06) — becomes a visible filter effect instead of subliminal paper texture.
5. Applying Courier Prime to headings or body — should feel like typewritten specimen labels, not a code terminal.
6. Adding hover animations to SVGs beyond subtle `scale(1.02)` — illustrations should feel pressed and still.
7. Treating the design as a garden center website with bright CTAs and "Shop Now" buttons.
