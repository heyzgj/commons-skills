---
name: playbill-portfolio
description: A career portfolio rendered as a theater program -- Abril Fatface on warm OKLCH cream paper with a double-rule burgundy border, gold florette corner ornaments, Unicode ornamental dividers, and act-structured chronology.
metadata: design-skill
---

# Playbill Portfolio

## What This Skill Does

Routes a theater-program visual system into a single-page portfolio or professional biography. The design treats a career as a three-act play -- printed on cream stock with burgundy ink and gold foil ornaments. Four typefaces carry strict roles: Abril Fatface for display, Crimson Text for body prose, Josefin Sans for uppercase labels, and IBM Plex Mono for metadata. Zero images, zero shadows, zero gradients.

## When to Use

- Stage director, dramaturg, or performer career portfolio
- Theater company season programme or about page
- Playwright, creative writer, or arts administrator biography
- Cultural institution fellowship or residency application
- Any portfolio where the content has a chronological narrative arc

## When Not to Use

- Data-heavy dashboards -- the centered single-column layout cannot display dense data
- E-commerce or product catalogs -- no interactive components, no grid layouts
- Photography portfolios -- the design is pure typography with zero images
- SaaS landing pages -- no CTAs, pricing tables, or feature grids

## Design Direction

**Tone extreme:** A career as printed ephemera. This is a document you find in an archive, pressed flat in a book of programs from a lifetime in the theater.

**The ONE memorable thing:** The double-rule border with gold corner florettes makes every page look like it was printed by a theater company in 1962 and handed to the audience.

**Reference sites:** nationaltheatre.org.uk (programme design), roundabouttheatre.org (season branding), steppenwolf.org (editorial tone).

## Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/playbill-portfolio/raw/design-language` for the full color system (5 OKLCH tokens), four-font hierarchy, layout patterns, motion specs, and spacing rhythm.
2. **Load image kit** -- read `https://joincommons.cc/api/items/playbill-portfolio/raw/image-kit`. This design uses zero photography. All visual texture comes from borders, ornaments, and typographic weight contrast.
3. **Build** -- construct the page as a centered `.program` wrapper containing a `.program-border` with inner rules and corner ornaments. Organize content into acts (career phases), each with productions (work items). Use the established divider hierarchy between sections.
4. **Self-critique** -- read `https://joincommons.cc/api/items/playbill-portfolio/raw/anti-patterns` and verify against the universal AI slop checklist and self-critique protocol.

## Color Palette (5 tokens only)

| Token        | OKLCH                    | Role                    |
| ------------ | ------------------------ | ----------------------- |
| `--cream`    | `0.97 0.008 80`         | Page background         |
| `--black`    | `0.12 0 0`              | Display + body text     |
| `--burgundy` | `0.45 0.12 30`          | Borders, labels, accent |
| `--gold`     | `0.72 0.04 80`          | Ornaments, dividers     |
| `--muted`    | `0.55 0.02 80`          | Venue lines, metadata   |

## Typography (4 fonts, strict roles)

- **Abril Fatface** -- display titles only (hero, section, production)
- **Crimson Text** -- body prose, reviews (regular + italic)
- **Josefin Sans** -- uppercase tracked labels, act numbers, colophon
- **IBM Plex Mono** -- venue lines, dates, metadata

## Key Structural Rules

- All text center-aligned. Body constrained to 38ch, production notes to 36ch.
- Double-rule border: 2px outer + 1px inner offset 8px, with Unicode florette corners.
- Ornamental dividers in three sizes (sm/standard/lg) plus rule-with-ornament variant.
- Act structure: act number + poetic section title + year range + production listings.
- Each production: display title + mono venue line + body description + optional italic review.
- Scroll reveal: translateY(12px), 600ms ease-out-quart, staggered 80ms.

## Supporting Files

- `https://joincommons.cc/api/items/playbill-portfolio/raw/design-language`: full design system -- colors, typography, layout, motion, signatures.
- `https://joincommons.cc/api/items/playbill-portfolio/raw/image-kit`: confirms zero-image approach, guidance for edge cases.
- `https://joincommons.cc/api/items/playbill-portfolio/raw/anti-patterns`: 7 traps, AI slop checklist, self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for all colors, sizes, weights, spacing, animation.
- `assets/exhibit.html`: proof-of-concept -- a fictional stage director career portfolio.

## Gotchas

1. **Do not break center alignment.** The centered composition is the core metaphor -- this is a printed programme, not a blog.
2. **Do not add shadows or gradients.** Theater programs are flat printed matter. Depth comes from borders and type weight.
3. **Do not cross font-family roles.** Abril Fatface for display, Crimson Text for body, Josefin Sans for labels, IBM Plex Mono for metadata. No exceptions.
4. **Do not use emoji for ornaments.** The dividers use specific Unicode typographic characters (florettes, asterisms, tricolon). Emoji breaks the print metaphor.
5. **Do not skip the act structure.** Without acts, this is a generic timeline. The three-act narrative arc is the entire conceit.
6. **Do not add colors beyond the five tokens.** Two inks (burgundy + black) plus gold foil on cream stock. That is the constraint.
7. **Do not forget print styles.** Theater programs are printed. Include `@media print` rules.

## Reuse and Adaptation

- **Keep stable:** four-font system, center alignment, double-rule border, corner ornaments, act structure, five-color palette, zero images.
- **Safe to vary:** number of acts, number of productions per act, section titles, content (names, titles, venues, dates), divider placement, colophon text.
- **Do not vary:** font families, color values, border widths, ornament characters, alignment, the presence of the program border.

## Non-negotiables

- Preserve the double-rule border with gold corner florettes.
- Keep all four Google Fonts loaded (Abril Fatface, Crimson Text, Josefin Sans, IBM Plex Mono).
- All colors in OKLCH.
- Include `prefers-reduced-motion` support.
- Include `@media print` styles.
