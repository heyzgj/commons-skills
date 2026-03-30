---
name: velvet-curtain-folio
description: A cinematographer portfolio styled as a velvet-curtained screening room -- Sorts Mill Goudy display, Source Serif 4 body, Josefin Sans labels, dark OKLCH surfaces with gold accents, animated curtain entrance, poster-card filmography grid, and scroll-reveal sections.
metadata: design-skill
---

# Velvet Curtain Folio

## What This Skill Does

Routes a cinema-screening-room visual system into a single-page portfolio for filmmakers, cinematographers, and visual storytellers. The design treats the browser as a darkened theater -- velvet curtains part on load to reveal the work. Dark surfaces, warm gold accents, and cinematic photography establish the tone. Three typefaces carry strict roles: Sorts Mill Goudy for display, Source Serif 4 for body prose, Josefin Sans for uppercase tracked labels.

## When to Use

- Cinematographer, director of photography, or editor portfolio
- Film festival submission portfolio or screening invitation
- Independent filmmaker or video artist showcase
- Production company about page or talent reel
- Documentary filmmaker biography

## When Not to Use

- Light-theme or corporate dashboards -- the dark palette will not adapt
- E-commerce or product catalogs -- no cart or interactive commerce patterns
- Text-heavy editorial or blog -- body sections are sparse, image-driven
- SaaS landing pages -- no pricing tables, feature grids, or CTA funnels

## Design Direction

**Tone extreme:** A private screening in a velvet-draped theater. You are handed a program in the dark, and the projector flickers on.

**The ONE memorable thing:** The velvet curtain entrance animation -- two crimson panels slide apart with a valance lifting overhead, revealing the portfolio like a film premiere.

**Reference sites:** mubi.com (editorial tone), criterion.com (film-centric hierarchy), rogerdeakins.com (cinematographer portfolio structure).

## Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/velvet-curtain-folio/raw/design-language` for the full color system (12 OKLCH tokens), three-font hierarchy, layout patterns, motion specs, and signature moves.
2. **Load image kit** -- read `https://joincommons.cc/api/items/velvet-curtain-folio/raw/image-kit` for verified Unsplash URLs, usage rules per image, and guidance on when to use photography vs CSS/SVG.
3. **Build** -- construct a single-page layout: curtain overlay entrance, hero with overline/name/tagline/CTA, poster-card filmography grid (3:4 aspect), statement quote, about section with image + bio, credits stack, lobby footer with sconce lights.
4. **Self-critique** -- read `https://joincommons.cc/api/items/velvet-curtain-folio/raw/anti-patterns` and verify against the checklist.

## Color Palette (12 tokens)

| Token               | OKLCH                          | Role                     |
| ------------------- | ------------------------------ | ------------------------ |
| `--deep-bg`         | `0.15 0.02 30`                | Page background          |
| `--surface`         | `0.20 0.02 30`                | Card / section surfaces  |
| `--velvet-red`      | `0.35 0.15 20`                | Curtain fabric           |
| `--velvet-dark`     | `0.25 0.12 20`                | Curtain shadow / valance |
| `--gold`            | `0.70 0.12 80`                | Primary accent           |
| `--gold-light`      | `0.85 0.10 85`                | Light accent, sconces    |
| `--warm-glow`       | `0.80 0.12 75 / 0.3`         | Ambient footlight glow   |
| `--warm-glow-strong`| `0.80 0.12 75 / 0.55`         | Hover-state glow         |
| `--text-primary`    | `0.92 0.01 80`                | Headings, body text      |
| `--text-secondary`  | `0.70 0.02 80`                | Taglines, meta text      |
| `--brass-dark`      | `0.55 0.10 75`                | Credential bullets       |
| `--brass-light`     | `0.78 0.11 82`                | Sconce gradient end      |

## Typography (3 fonts, strict roles)

- **Sorts Mill Goudy** -- display headings, poster titles, hero name, section titles (regular + italic)
- **Source Serif 4** -- body prose, about paragraphs, lobby contact (weight 300-400)
- **Josefin Sans** -- uppercase tracked labels, overlines, laurel badges, credit roles, format tags (weight 300-400)

## Key Structural Rules

- Dark theme only. Background `oklch(0.15 0.02 30)`, no light mode.
- Curtain entrance: two halves slide out + valance lifts, `cubic-bezier(0.22, 1, 0.36, 1)`, 2.2s.
- Poster grid: `auto-fill, minmax(280px, 1fr)`, 3:4 aspect ratio images, gold border on hover.
- Footlight glow: radial gradient beneath hero and cards, warm gold ambient light.
- Section dividers: centered 1px gold gradient lines (`transparent -> gold -> transparent`).
- Scroll reveal: `translateY(24px)`, 0.8s, `cubic-bezier(0.22, 1, 0.36, 1)`, staggered 0.1s increments.
- All images desaturated + dimmed by default (`brightness(0.85) saturate(0.9)`), lift on hover.

## Supporting Files

- `https://joincommons.cc/api/items/velvet-curtain-folio/raw/design-language`: full design system -- colors, typography, layout, motion, signatures.
- `https://joincommons.cc/api/items/velvet-curtain-folio/raw/image-kit`: 6 verified Unsplash URLs with usage notes.
- `https://joincommons.cc/api/items/velvet-curtain-folio/raw/anti-patterns`: 7 traps, AI slop checklist, self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for colors, sizes, weights, spacing, animation.
- `assets/exhibit.html`: proof-of-concept -- a fictional cinematographer portfolio.

## Gotchas

1. **Do not skip the curtain entrance.** The parting-curtain animation is the signature moment. Without it, this is a generic dark portfolio.
2. **Do not brighten the images.** The desaturated, dimmed treatment is intentional -- it mimics film projected in a dark room. Hover lifts brightness slightly.
3. **Do not add a light theme.** The metaphor is a darkened screening room. Light backgrounds break the immersion entirely.
4. **Do not use more than 3 font families.** Sorts Mill Goudy, Source Serif 4, Josefin Sans. No fourth font.
5. **Do not replace gold accents with white or neutral gray.** The warm gold is the only relief from the dark palette -- it represents stage lighting and brass fixtures.
6. **Do not flatten the hover states.** Cards must lift (`translateY(-4px)`), borders must transition to gold, and the footlight glow must intensify. Static cards feel dead.
7. **Do not forget to remove the curtain from the DOM.** After the animation completes (~4s), remove the overlay elements so they don't block interaction.

## Reuse and Adaptation

- **Keep stable:** curtain entrance, dark palette, three-font system, poster-card grid with 3:4 images, gold accent system, footlight glow, scroll reveal.
- **Safe to vary:** number of poster cards, section order after hero, content (names/titles/festivals), credential list, CTA wording.
- **Do not vary:** font families, color token values, curtain animation timing, image filter treatment, the presence of the curtain entrance.

## Non-negotiables

- Preserve the velvet curtain entrance animation with curtain-left, curtain-right, and valance.
- Keep all three Google Fonts loaded (Sorts Mill Goudy, Source Serif 4, Josefin Sans).
- All colors in OKLCH.
- Include `prefers-reduced-motion` support (skip curtain, disable scroll reveals).
- Images must use `loading="lazy"`.
