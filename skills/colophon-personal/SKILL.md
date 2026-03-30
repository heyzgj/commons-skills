---
name: colophon-personal
description: A self-documenting personal site where the colophon IS the content — Fira Code + Charter on near-white OKLCH paper, key-value pairs, 24px accent rules, and scroll-reveal entrance animations.
metadata: design-skill
---

# Colophon Personal

## What This Skill Does

Routes a self-documenting colophon aesthetic into a personal website. The design treats meta-information as content: the typefaces listed are the typefaces you read, the colors documented are the colors you see, the performance metrics are measured from the page itself. Monospace data (Fira Code) contrasts with serif prose (Charter) across key-value pair rows, color swatch displays, typography specimens, and changelog entries.

## When to use

- Personal sites for frontend engineers, design systems leads, and technical designers
- Developer portfolio pages that emphasize craft over decoration
- Technical about pages where the build itself is the statement
- Any page where meta-information (tools, stack, specs) is the primary content

## When not to use

- Avoid for photography-heavy portfolios because this system uses zero images
- Avoid for multi-page applications because the single-column layout documents one page
- Avoid for e-commerce or SaaS landing pages because there are no CTAs or interactive components
- Avoid for dark-mode-required contexts because this is light-only by design

## Design Direction

**Tone extreme:** Technical transparency pushed to self-referential art. The page is its own documentation.

**The ONE memorable thing:** The content describes the container. Every section is simultaneously functional content and technical specification. The colophon is the entire website.

**Reference touchpoints:** minimal personal sites where the medium is the message -- craftsperson portfolios, type specimen pages, changelog-as-homepage approaches.

## Default Workflow

1. Load `https://joincommons.cc/api/items/colophon-personal/raw/design-language` for the full color, typography, layout, and motion system.
2. Load `https://joincommons.cc/api/items/colophon-personal/raw/image-kit` to confirm zero photography -- all visual texture comes from CSS.
3. Build the page using key-value pair rows as the primary layout primitive. Each section documents an aspect of the page itself.
4. Self-critique against `https://joincommons.cc/api/items/colophon-personal/raw/anti-patterns` before shipping.

## Supporting Files

- `https://joincommons.cc/api/items/colophon-personal/raw/design-language`: OKLCH color system, dual-font hierarchy, key-value layout patterns, spacing, motion, and signature moves.
- `https://joincommons.cc/api/items/colophon-personal/raw/image-kit`: confirms zero photography; all texture from typography and CSS rules.
- `https://joincommons.cc/api/items/colophon-personal/raw/anti-patterns`: seven topic-specific traps and the self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for all colors, fonts, sizes, spacing, and animation values.
- `assets/exhibit.html`: the full proof-of-concept page -- Nina Zhao, frontend engineer colophon site.
- `assets/design-skill.json`: manifest with metadata, tags, and discovery fields.

## Reuse and Adaptation Guidance

- **Keep stable:** Fira Code + Charter dual-font system, near-white OKLCH background (0.985), 4-color palette, key-value pair layout, 24px accent rules, 740px max-width, scroll-reveal entrance.
- **Safe variation knobs:** section content (any technical specification), number of sections, person's name/title/bio, changelog entries, key-value pairs, section order.
- **Do not add:** photography, dark mode, a third typeface, gradients, border-radius beyond 3px (swatches only), decorative illustrations, JavaScript beyond the reveal observer.

## Non-negotiables

- Fira Code for headings, data, labels, and key-value values. Charter for prose paragraphs only.
- All four OKLCH colors must be present: background (0.985 0 0), foreground (0.15 0 0), muted (0.55 0 0), accent (0.55 0.15 250).
- Section headings are 0.72rem, 500 weight, uppercase, 0.15em tracking, muted color.
- The 24px accent rule (1px height, accent color) separates heading from content in every section.
- Key-value rows use flex with space-between alignment and 1px dividers at 0.06 opacity.
- Light theme only. No dark mode. The absence of dark mode is a design decision.

## Common Failure Modes

1. **Using Fira Code for prose** -- Charter carries all paragraph text. Fira Code in long sentences is unreadable.
2. **Adding a third font** -- the monospace/serif tension is the entire typographic identity.
3. **Making section headings large** -- they are 0.72rem small-caps labels, not display headings.
4. **Skipping the 24px accent rule** -- this is the signature visual separator; without it sections blur together.
5. **Using hex or hsl colors** -- all values must be OKLCH to maintain the achromatic neutrals with a single accent hue.
6. **Adding decorative elements** -- icons, illustrations, gradients, or ornamental rules contradict the self-documenting premise.
7. **Making the page wider than 740px** -- the narrow column is essential to the single-document, reading-width aesthetic.
