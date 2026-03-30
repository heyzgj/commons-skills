---
name: glass-terrarium-folio
description: Greenhouse specimen-shelf portfolio with 8 distinct CSS glass container shapes, CSS-only botanical elements encoding project health, Tenor Sans / system-ui dual type stack, cool OKLCH palette, wooden shelf surfaces, prismatic refraction edges, mouse-tracking specular highlights, and staggered spring-eased scroll reveals.
---

# Glass Terrarium Folio

## What This Skill Does

Produces a personal portfolio page styled as a greenhouse specimen shelf. Each project lives inside a distinct CSS glass container (bell jar, cloche, geodesic, geometric, open, tall bell, round, tiny) with refraction physics, CSS-only botanical elements encoding project health, and condensation dots signaling activity. Containers sit on wooden shelf surfaces with gradient and double box-shadow. Typography splits between Tenor Sans (display, 400) and system-ui (body). The palette is cool OKLCH with hue-200 backgrounds and a moss-green accent.

## When to use

- Interaction designer personal portfolio
- Developer side-project showcase
- Creative technologist folio
- Open-source project gallery
- Personal experiment archive
- Nordic/Scandinavian design portfolio

## When not to use

- E-commerce product pages needing pricing and CTAs
- SaaS dashboards needing data density
- Agency multi-person sites needing team grids
- Content-heavy blogs needing reading rhythm
- Photography portfolios where glass containers fight full-bleed imagery

## Default Workflow

1. Read `https://joincommons.cc/api/items/glass-terrarium-folio/raw/design-language` to internalize the 8 glass shapes, 6 botanical types, full OKLCH palette, typography scale, and implementation invariants.
2. Read `tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Read `https://joincommons.cc/api/items/glass-terrarium-folio/raw/design-language` for the complete glass container shape table, CSS botanical construction specs, and motion details.
4. Read `https://joincommons.cc/api/items/glass-terrarium-folio/raw/image-kit` — this exhibit uses zero photographs; all visuals are CSS-only constructions.
5. Build the page: header, 4 shelf rows of 2 terrariums each, about section, footer. Each terrarium needs a unique glass shape, appropriate botanical elements, refraction edges, and condensation dots.
6. Inspect `exhibit.html` as the proof surface if any detail is ambiguous.
7. Self-critique against `https://joincommons.cc/api/items/glass-terrarium-folio/raw/anti-patterns` and the non-negotiables below.

## Supporting Files

- `https://joincommons.cc/api/items/glass-terrarium-folio/raw/design-language`: Full design language with color system, typography, layout patterns, glass container shapes, CSS botanical specs, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, shadows, font families, font sizes, durations, easing, and spacing.
- `exhibit.html`: Proof surface showing the complete system with 8 terrariums across 4 shelf rows.
- `evidence/blueprints.json`: Blueprint coverage across product slices (when available).
- `evidence/component-matrix.json`: Component and state coverage (when available).

## Supporting References

- `https://joincommons.cc/api/items/glass-terrarium-folio/raw/design-language`: Extended design system with glass shape table, CSS botanical element construction specs, refraction edge details, shelf surface specs, and motion definitions.
- `https://joincommons.cc/api/items/glass-terrarium-folio/raw/image-kit`: Documents the zero-photography approach and CSS visual element library.
- `https://joincommons.cc/api/items/glass-terrarium-folio/raw/anti-patterns`: Eight topic-specific failure modes with universal AI slop checklist and self-critique protocol.

## Output Expectations

A single-page HTML portfolio with:
- Header: left-aligned Tenor Sans name, role subtitle, italic moss-green quote, glass-edge gradient bottom border
- 4 shelf rows: each containing a 2-col terrarium grid + wooden shelf surface bar
- 8 terrarium cards: each with a unique glass shape, 2-3 refraction edges (left, top, highlight), condensation dots (density = activity), soil layer, CSS botanical elements (species = maturity), and content (name, description, version tag, tended date)
- About section: shelf divider, tracked uppercase label, 2-col grid (bio + contact)
- Footer: glass-edge top border, muted secondary text
- Sunlight radial gradients on body::before (fixed)
- IntersectionObserver staggered reveal with data-delay
- Mouse-tracking parallax on refraction highlights
- Full `prefers-reduced-motion: reduce` support

## Reuse and Adaptation Guidance

The glass container shapes can be remixed for different project counts. Map botanical elements to your own project statuses: lush fern = mature, seedling = new, dried botanical = archived. When adapting for a side-project gallery, map version tags to semver releases and tended dates to last-commit dates. The shelf row structure scales to any number of rows. Photos can replace CSS botanicals for domains that genuinely need photography — place them inside the glass container shapes.

## Non-negotiables

1. Eight distinct glass shapes. No two terrariums share the same border-radius or clip-path.
2. CSS-only botanical elements. No imported SVGs, icon libraries, or plant images.
3. Wooden shelf surfaces with gradient + double box-shadow + top highlight. Never a flat border.
4. Refraction edges (left prismatic, top rainbow, specular highlight) on every glass container.
5. All colors OKLCH. No hex, rgb, rgba, or hsl anywhere.
6. Tenor Sans at weight 400 only. Hierarchy via size and color, not weight.
7. Spring easing `cubic-bezier(0.16, 1, 0.3, 1)` for all reveals and hovers.
8. Light theme only. The design is architecturally dependent on sunlight radials and translucent glass.

## Common Failure Modes

1. **Uniform glass shapes** — Copy-pasting one border-radius across terrariums. A curated collection requires variety.
2. **Frosted-glass rectangles** — Using `backdrop-filter: blur()` on rectangles instead of shaped containers. That is glassmorphism, not terrariums.
3. **Imported plant illustrations** — Using SVG or image files for botanicals. The CSS-only construction is the craft signal.
4. **Missing shelf surfaces** — Without wooden shelf bars, terrariums float and the greenhouse metaphor collapses.
5. **Dark background** — Translucent glass on dark reads as empty, not clear. Refraction and condensation become invisible.
6. **Wrong condensation logic** — Active projects need more dots; archived projects need none. Random dots remove the information layer.
7. **Generic easing** — Using `ease` or `ease-in-out` instead of the spring curve makes reveals feel mechanical.
8. **Missing refraction physics** — Without left-edge prismatic gradient, top-edge rainbow, and mouse-tracking highlight, glass looks like a tinted card.
