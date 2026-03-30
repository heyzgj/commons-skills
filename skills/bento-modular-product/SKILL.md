---
name: bento-modular-product
description: A premium hardware product page built as an asymmetric CSS Grid bento layout — each card reveals one product truth, the grid composition IS the narrative. Features intentional col/row spanning, Apple-style oversized stat numbers, full-bleed photo cards, a CSS-rendered material swatch, and a restrained single-accent palette.
---

# Bento Modular Product

## What This Skill Does

Provides a complete design system for building a premium hardware product page as an asymmetric bento grid. Each card in the grid communicates exactly one product truth — a hero photograph, a single oversized spec number, a material swatch, a display spec sheet — and the spatial composition of those cards IS the product narrative. No prose connects them. The layout IS the argument.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/bento-modular-product/raw/design-language` for the full visual system and component patterns, `tokens.dtcg.json` for implementation values, `https://joincommons.cc/api/items/bento-modular-product/raw/image-kit` for verified photography, and inspect `exhibit.html` for the proof surface (GridForm Ultra ultrabook).

## When to Use

- Premium hardware product pages (laptops, cameras, audio equipment, wearables)
- Consumer electronics launches where each specification is a selling point
- Brand-forward tech showcases where gallery-quality visual restraint signals premium
- Product pages where the buyer wants to discover features spatially, not read through a list

## When Not to Use

- SaaS feature comparison grids — bento asymmetry reads wrong for parity tables
- Services/consulting sites — bento needs physical product photography to anchor it
- Content-heavy editorial pages — bento is spatial discovery, not linear reading
- Dark-mode first interfaces — the design system is explicitly light-mode only

## Default Workflow

1. **Read `https://joincommons.cc/api/items/bento-modular-product/raw/design-language`** — internalize the 4-column grid system, card span patterns (2×2 hero, 1×2 towers, 2×1 banners, 1×1 gems), the blue-tinted oklch palette, stat number typography (52–76px/700 weight), material gradient card construction, and the non-negotiables list.
2. **Read `tokens.dtcg.json`** — extract concrete oklch values for all card surfaces, borders, text hierarchy, accent, shadow, radius, animation easing, and grid gap.
3. **Load `https://joincommons.cc/api/items/bento-modular-product/raw/image-kit`** — get verified Unsplash URLs for the hero product photo and ecosystem shot. Confirm both return 200 before building.
4. **Build** — structure: sticky frosted nav → product header (eyebrow + display-weight name + tagline) → 4-column bento grid with asymmetric card spans → staggered entrance animation → performance bars on `scaleX`. Hero and photo cards are image-only, full-bleed, no text. Stat cards show one oversized numeral. CTA card is dark and bottom-anchored.
5. **Self-critique against `https://joincommons.cc/api/items/bento-modular-product/raw/anti-patterns`** — verify: hero is ≥2×2, gap ≥24px, no text on photo cards, stat numbers ≥48px, only one accent color, 18px radius consistent, reduced-motion handled.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/bento-modular-product/raw/design-language` | Full design language — colors, typography, grid layout, component patterns, motion, accessibility, invariants |
| `https://joincommons.cc/api/items/bento-modular-product/raw/design-language` | Detailed visual system: complete token table, grid layout blueprint, all card variant specs |
| `https://joincommons.cc/api/items/bento-modular-product/raw/image-kit` | Verified Unsplash URLs, placement rules, guidance on CSS vs photo choice |
| `https://joincommons.cc/api/items/bento-modular-product/raw/anti-patterns` | 8 topic-specific failure modes + universal AI slop checklist + 5-question self-critique |
| `tokens.dtcg.json` | DTCG tokens: all oklch colors, spacing, radius, shadow, typography scale, motion timing |
| `exhibit.html` | Proof surface — GridForm Ultra ultrabook page with 13-card bento grid |

## Output Expectations

A single-page HTML document that feels like opening apple.com/macbook-pro. Specifically:
- Near-white background `oklch(0.98 0.003 250)` — cooler than cream, never warm
- 4-column CSS grid with at least one 2×2 card (hero) and mixed spans
- Gap ≥24px between every card (28px standard)
- At least one photo card: full-bleed, zero text overlay, `object-fit: cover`
- At least one stat card: numeral ≥48px (target 52–76px), tiny inline unit, uppercase label
- Consistent 18px border-radius on every card
- Single accent color (blueprint blue `oklch(0.58 0.15 255)`) on ≤2 surfaces
- One dark card (near-black `oklch(0.15 0.01 250)`) as CTA anchor, placed at or near grid bottom
- Staggered card entrance animation (500ms, ease-out-quart, 40ms stagger)
- `prefers-reduced-motion` disables animations
- Semantic `<article aria-label>` for each card, descriptive `alt` text on all images

## Reuse and Adaptation Guidance

**Safe to adapt:** Product name and specs, number of stat cards, photography (use image-kit guidance), card copy, connectivity specs, sustainability metrics, pricing.

**Adapt with care:** Column count (4 is canonical — 3 works at small viewports but loses span variety), card count (12–14 is optimal — adding more cards reduces the premium restraint), gap size (never below 24px).

**Do not change:** The light mode (dark backgrounds break product photography), the single-accent rule (every additional accent color dilutes the premium signal), the photo-card-no-text rule (text overlay instantly turns bento into a hero banner), the border-radius consistency (different radii on different cards fragments the grid unity), the stat number size (below 48px the spec reads as data, not achievement).

## Non-negotiables

- Grid MUST use `grid-template-columns: repeat(4, 1fr)` with explicit span classes
- Gap between cards must be ≥24px — never collapse to create space
- Photo cards may contain no text whatsoever — not a headline, caption, or badge overlay
- One accent hue only: `oklch(0.58 0.15 255)` — reject all additional colors
- Border-radius must be identical (18px) across every single card surface
- Stat numbers must be ≥48px (target 52–76px) — if space forces them smaller, remove the card
- Light mode only — the single dark CTA card is the only exception
- Material card uses CSS gradient, not a photo — `linear-gradient(135deg)` on oklch gray ramp

## Common Failure Modes

1. **Equal-sized card grid.** The SaaS feature grid pattern — every card the same size, same content structure. There's no hierarchy, no architectural composition. Fix: sketch the grid first, assign spans deliberately.
2. **Text on the hero photo.** Placing the product name or a headline over the hero photograph turns the page into a hero banner. The photo card must be pure visual. Fix: product name goes in the page header above the grid, not inside any card.
3. **Stat numbers shrunk under layout pressure.** When the grid has too many cards, stats shrink to 32–40px to fit. At that size they read like paragraph numbers. Fix: remove a card rather than shrinking the number.
4. **Multiple accent colors.** Adding green for sustainability, orange for a limited edition — each concept getting its own color. The restraint breaks instantly. Fix: one blue. The sustainability card uses a muted green stat as a domain exception, but it's not a new "accent color" — it appears once with no repeats.
5. **Material card with a stock photo.** An Unsplash aluminum texture looks like clipart. Fix: build the material swatch in CSS — `linear-gradient(135deg)` across the gray oklch ramp plus two `radial-gradient` overlays for the light simulation.
6. **Dark mode bento.** White text on dark cards, glowing accents. The product photography loses all impact on dark backgrounds. Fix: this design system is light-mode only, full stop.
7. **Too many cards.** 18+ cards because every feature got its own card. The grid becomes a wall of tiles. Fix: curate to 12–14. Features that don't earn a dedicated card become spec rows inside an existing card.
