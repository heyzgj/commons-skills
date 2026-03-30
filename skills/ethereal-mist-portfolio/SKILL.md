---
name: ethereal-mist-portfolio
description: A white-fog landscape photography portfolio where every photograph dissolves into layered mist via CSS mask-image radial gradients — Cormorant + Karla on a nearly achromatic fog background with animated depth layers, ghost images, and vast negative space.
metadata: design-skill
---

# Ethereal Mist Portfolio

## What This Skill Does

Routes a white-fog visual system into a landscape photographer's portfolio. Photographs have no edges — they dissolve into layered mist via CSS mask-image radial gradients. The page is a continuous scroll through animated fog with images emerging one at a time. Nearly achromatic palette, vast negative space, whispered captions, ghost images at half opacity that clarify on hover.

## When to Use

- Landscape or fine-art photographer portfolio
- Gallery or exhibition sites that prioritize visual contemplation
- Art-directed personal sites for visual artists, architects, or designers
- Any portfolio where restraint and negative space are the design statement
- Nordic, nature, or environmental photography showcases

## When Not to Use

- E-commerce or product pages (no CTAs, pricing, or interactivity)
- Dark-theme portfolios — this is exclusively white fog, body oklch L > 0.95
- Grid-based image galleries (masonry, Pinterest, card layouts)
- Content-heavy sites requiring readable body text (caption contrast is deliberately low)
- Photography that is high-contrast, colorful, or urban — fights the fog
- Multi-page applications with navigation requirements

## Default Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/ethereal-mist-portfolio/raw/design-language` for the full OKLCH color table, Cormorant + Karla typography, layout patterns, fog animation specs, and signature dissolve moves.
2. **Load tokens** — read `tokens.dtcg.json` for concrete color, spacing, motion, and mask values.
3. **Build** — produce a single HTML document. A continuous scroll through animated fog with photographs emerging via mask-image dissolve. No grid, no cards, no navigation chrome.
4. **Self-critique** — verify against anti-patterns: can you see where any photograph ends? Is negative space 200px+? Any borders or frames? Does text whisper or shout?

## Supporting Files

| File | Purpose | When to read |
|---|---|---|
| `https://joincommons.cc/api/items/ethereal-mist-portfolio/raw/design-language` | Full design language — color, typography, layout, motion, principles, invariants | Always — primary reference |
| `tokens.dtcg.json` | DTCG format tokens for color, spacing, motion, effects | When implementing — concrete values |
| `exhibit.html` | Proof surface showing the system under real product pressure | When auditing — the truthful reference |

## Supporting References

This design draws on reference sources from fine-art photography:
- Hiroshi Sugimoto's seascape series — horizon lines dissolving into infinity, the boundary between sea and sky erased
- Nordic landscape photography traditions — fog, first light, long exposures, vast negative space
- Gallery exhibition design — single works presented with contemplative spacing, minimal labels

These references informed the dissolve technique, achromatic palette, and vast negative space. Consult the official docs and imagery from these sources when adapting the skill to a new photographer or visual artist.

## Output Expectations

- Single self-contained HTML file, 1280px viewport, target ~40KB
- Light theme: body oklch L > 0.95 (cool white fog)
- 5-7 photograph sections with 200px+ negative space between them
- Every photograph uses mask-image radial gradient — no visible edges
- At least one ghost image at opacity 0.5 with hover clarification
- Animated fog background layers on 30s+ cycles
- SVG feTurbulence grain overlay
- IntersectionObserver scroll-reveal for all photographs
- Cormorant 300 for display + Karla 300 for captions — no other fonts
- All text weight 300, captions at 11px in pencil-gray

## Reuse and Adaptation Guidance

**Safe to vary**: photographer name, locations, number of photographs (5-10), Unsplash URLs (must be fog/mist/landscape), bio text, client names, contact email.

**Do not change**: fog dissolve mask technique, nearly-achromatic palette, vast negative space, whispered text weight, lack of navigation chrome, animated fog background, grain texture, scroll-reveal behavior.

**Photography replacement**: choose landscape/nature images with fog, mist, low clouds, or overexposed highlights. At least 2 images must work as ghost images (reduced opacity). The hero must dissolve into white background convincingly.

## Non-negotiables

- `mask-image` with `-webkit-mask-image` on every photograph — no visible edges, ever
- Body oklch L > 0.95 — white fog, not dark
- 200px+ effective negative space between photograph sections
- All text weight 300 — no bold, no medium, no regular
- No navigation bar, hamburger, sidebar, or footer navigation
- SVG grain overlay (feTurbulence baseFrequency 0.03) and image filter (saturate + brightness)
- Fog animation cycles 30s+ — faster animation breaks the contemplative feel
- Images appear one or two at a time — never in a grid, gallery, or card layout

## Common Failure Modes

1. **Photography grid** — building a masonry/Pinterest/card grid instead of one image at a time in fog
2. **Dark and moody** — using dark backgrounds; this is WHITE fog, bright and overexposed
3. **Visible image edges** — forgetting mask-image or using weak masks that show rectangular crops
4. **Conventional page structure** — hero then about then gallery then contact instead of continuous fog scroll
5. **Bold text** — using medium or bold weights, large headings, or high-contrast labels
6. **Flat white background** — using `#ffffff` instead of layered animated fog gradients
7. **Image borders or frames** — adding any border, box-shadow, or frame to photographs
