---
name: revolut-finance
slug: revolut-finance
description: Financial super-app design system inspired by Revolut. Billboard-scale Urbanist headlines, zero-shadow flat surfaces, universal pill buttons (9999px radius), and semantic gain/loss finance colors. Alternating dark/light sections with data-as-visual patterns for exchange rates, trading tickers, and spend analytics.
metadata: design-skill
---

# Revolut Finance

<design-system>

## Product World
- **Who**: Young professionals 25-40 who hate traditional banking. Digital nomads managing money across currencies. Crypto-curious investors who want stocks and Bitcoin in one place. Budget-conscious millennials who track every pound spent. They live on their phones, split bills over dinner, and send money to friends in different countries weekly.
- **What**: The financial super-app -- banking, crypto, trading, budgeting, and international transfers in one app for 40M+ customers across 38 countries.
- **Vibe**: Revolut's physical card confidence meets Bloomberg mobile's data density. Think N26's cleanliness at Monzo's boldness, but scaled to 40M users.
- **Domain conventions**: ISO 4217 currency codes (GBP, EUR, USD, JPY), interbank exchange rates with percentage deltas, IBAN/SWIFT for transfers, FCA regulatory language, tiered plan pricing (Standard/Plus/Premium/Metal/Ultra), spend categorisation (Groceries, Transport, Restaurants), savings vaults with goal tracking, tabular-nums for all financial figures.

## Identity
Financial confidence through flatness. Zero shadows, billboard typography, universal pill buttons, and semantic finance colors. The product shows you everything -- balances, rates, analytics, trading prices -- with data as the visual, not decoration around data.

## Visual Vibe
Confident, flat, bold, accessible, clean, high-contrast, pill-shaped, data-rich, trustworthy, modern-banking

## Anti-Patterns
- NOT a crypto bro dashboard with neon green charts on black backgrounds -- this is mainstream banking, not a trading terminal
- NOT a traditional bank with navy blue, serif fonts, and stock photos of handshakes -- Revolut is the anti-bank
- NOT a SaaS product page with feature grids and testimonial carousels -- this is a financial product where data IS the feature
- NOT a minimalist fintech that hides complexity -- Revolut shows you everything with confidence
- NOT glassmorphic with frosted cards and glow borders -- Revolut is deliberately flat with zero shadows
- NOT a dark-mode-first crypto exchange -- the primary surface is white with dark section alternation

## Section Archetypes
- **Live exchange rate feed**: Currency pairs with real-time rates, percentage deltas (green up/red down), flag indicators
- **Trading ticker grid**: Asset cards with symbol, price, sparkline chart, percentage change badge
- **Spend analytics dashboard**: Horizontal bar chart by category with amounts, budget tracking stats, month-over-month comparisons
- **Savings vault progress**: Circular progress ring with goal percentage, vault details (balance, goal, round-ups, interest earned)
- **Transfer demo**: Interactive-looking send money UI with currency selectors, swap button, recipient card, live rate conversion
- **Plan comparison strip**: Side-by-side plan cards separated by 2px gaps (not shadows), feature checklists with semantic check marks
- **Stat row**: Three key metrics with large display numbers and compact labels, separated by a top border

## Hero Archetype
**Video-atmosphere + billboard typography.** Consumer fintech needs energy -- the video layer (financial/neon footage at 0.55 opacity) creates motion and modernity while the massive `clamp(56px, 9vw, 136px)` headline in Urbanist weight 500 delivers the confident "One app. All things money." promise. The video is atmospheric, not content -- it sets mood, not product demo. Below the headline: two pill CTAs and a stat row anchoring the hero with real numbers (40M+, 38 countries, 28+ currencies).

## Asset Direction
- **Photography**: Financial cards, mobile devices showing app screens, currency/money imagery. High contrast, slightly cool-toned. Avoid sterile corporate stock; prefer editorial-grade shots.
- **Data-as-visual**: Exchange rate feeds, spend bar charts, trading sparklines, savings progress rings. The data itself IS the visual.
- **Video**: Abstract financial/neon footage for hero atmosphere. 0.5-0.6 opacity with gradient overlay. Purpose is energy, not product demo.
- **What NOT to show**: No photos of people smiling at phones. No stock photos of coins/cash. No complex financial charts with axes. No generic city skylines.

## Typography
- **Urbanist** (display): Geometric sans-serif mirroring Revolut's Aeonik Pro proportions. Weight 500 for display, tight tracking (-0.02em to -0.03em) for billboard-scale authority. Weight 600-700 for UI emphasis only.
- **IBM Plex Sans** (body): Technical credibility without coldness. Positive letter-spacing (+0.01em) for airy readability. Weight 400 for reading, 500-600 for data values.

## Color
- **Background white** `oklch(0.995 0.002 260)` -- Near-white with cool-blue micro-tint
- **Near-black** `oklch(0.14 0.02 260)` -- Display text and dark sections, blue-tinted
- **Brand blue** `oklch(0.45 0.2 270)` -- Eyebrows, accent elements, brand CTA buttons
- **Gain green** `oklch(0.58 0.17 155)` -- Positive financial movement: rate up, savings on-track
- **Loss red** `oklch(0.55 0.2 25)` -- Negative financial movement: rate down, overspend
- **Warning amber** `oklch(0.68 0.16 70)` -- Attention states, budget caution
- **Teal** `oklch(0.6 0.14 175)` -- Success/progress: vault completion, transfers
- **Surface gray** `oklch(0.965 0.005 260)` -- Alternate section backgrounds

## Signature Moves
1. **Zero shadows, ever.** Depth from dark/light section alternation and 2px-gap separators, never box-shadow.
2. **Universal pill buttons.** Every button is 9999px radius. Four variants (dark/outline/ghost/blue), generous 14px 32px padding.
3. **Billboard display type.** Hero scales 56px to 136px via clamp(). Weight 500, tight tracking. Read at a glance like airport signage.
4. **Semantic finance colors.** Green/red always mean gain/loss. Color tells you direction before you read the number.
5. **2px gap grid separators.** Plan cards and trading cells use `gap: 2px; background: var(--bd)` as hairline dividers.
6. **Tabular numbers everywhere.** `font-variant-numeric: tabular-nums` on all financial figures.
7. **Dark/light section rhythm.** Alternating near-white and near-black sections as natural visual chapters.

## Hard Constraints
- ZERO box-shadows on any element -- the entire identity depends on this
- ALL buttons must be 9999px radius (full pill) -- no rounded rectangles
- Urbanist display at weight 500 only -- never 700 for headings
- Gain green and loss red are SEMANTIC -- never use decoratively
- Financial figures must use tabular-nums
- Currency codes must be ISO 4217 three-letter format
- Plan tiers must be Standard/Plus/Premium/Metal -- the Revolut naming

## Supporting Files
- `https://joincommons.cc/api/items/revolut-finance/raw/design-language` -- Full visual system: OKLCH palette, typography scale, spacing, motion, all component patterns
- `references/asset-direction.md` -- Photography/video sourcing guidance and data-as-visual patterns
- `https://joincommons.cc/api/items/revolut-finance/raw/anti-patterns` -- Domain-specific traps across visual, structural, content, and UX categories
- `assets/tokens.dtcg.json` -- DTCG design tokens with color, semantic (gain/loss/warning/progress), and typography groups
- `assets/exhibit.html` -- Reference implementation: self-contained HTML exhibit demonstrating the complete design system
- `assets/design-skill.json` -- V4 manifest with metadata, signatures, coverage, and discovery fields

## Workflow
1. Read `https://joincommons.cc/api/items/revolut-finance/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography/video sourcing and data-as-visual patterns
3. Build following the product world above -- every financial figure uses tabular-nums, every button is a pill, zero shadows
4. Self-critique against `https://joincommons.cc/api/items/revolut-finance/raw/anti-patterns`

## Gotchas
1. **Shadow creep**: Adding even one box-shadow breaks the Revolut identity. Use dark/light sections, borders, or 2px gap grids instead.
2. **Rounded vs pill**: Cards = 20px radius. Buttons = 9999px (pill). Never mix these.
3. **Color as meaning**: Never use gain-green or loss-red decoratively. Green = financial positive.
4. **Weight discipline**: Urbanist display = weight 500, never 700. Authority from SIZE + TRACKING.
5. **Currency data authenticity**: Real-looking rates (GBP/EUR 1.1647, not 1.5000). Real ISO 4217 codes.
6. **Plan naming**: Standard (free) / Plus / Premium / Metal -- non-negotiable for authenticity.

</design-system>
