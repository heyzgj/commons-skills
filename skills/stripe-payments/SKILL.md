---
name: stripe-payments
description: Institutional payment infrastructure design system. Whisper-weight 300 typography, blue-tinted multi-layer shadows, conservative 4px radius, code-as-hero with real API snippets, financial dashboard mocks with tabular-nums, deep indigo dark sections. Instrument Sans display with Source Code Pro monospace.
---

<design-system>

## Identity
Stripe Payments is a design system for developer-facing payment infrastructure -- products where millions of businesses integrate APIs to accept payments, send payouts, and manage financial operations. The design language communicates institutional authority through whisper-weight typography, blue-tinted shadows, real API code, and financial data rendered with precision. Every element radiates trust: money is serious, and the design proves the product handles it.

**Target users**: Developers integrating payments (7 lines of code), CTOs choosing infrastructure that scales to $1B GMV, startup founders who need to accept money today, finance teams managing revenue dashboards and payout schedules. They're builders who evaluate tools by shipping speed and API elegance.

**Vibe**: Apple Developer documentation meets Bloomberg Terminal -- whisper-weight authority with dense financial data rendered beautifully.

**Domain conventions**: Payment intents (`pi_` prefix), API keys (`sk_test_`, `pk_live_`), webhook events, idempotency keys, Stripe object IDs, ISO currency codes, basis-point pricing, interchange++, PCI compliance, 3D Secure.

**Core principle**: Complexity made invisible. The most sophisticated financial infrastructure in the world should feel like copying a curl command.

## Signature Moves
1. **Code-as-hero with ambient video** -- a real curl command creating a payment intent with its JSON response in a terminal window, paired with a subtle abstract gradient video (purple-blue, ~7% opacity) providing ambient motion behind the hero. The API call IS the product; the video adds atmospheric depth without competing.
2. **Whisper-weight 300 display type** -- headlines at the thinnest usable weight. Confidence through restraint -- the opposite of bold hero text. Progressive negative letter-spacing at larger sizes.
3. **Blue-tinted multi-layer shadows** -- every elevated card uses `rgba(50,50,93,0.25) + rgba(0,0,0,0.1)`. Stripe's signature. Never plain gray shadows.
4. **Financial dashboard mock** -- real-time revenue data ($42,651.80 gross volume), transaction table with status badges, area chart. The dashboard IS a section.
5. **Transaction status micro-badges** -- tiny indicators with colored dots + label (succeeded = green, pending = amber). Dashboard visual language on a marketing page.
6. **Conservative 4-8px radius** -- institutional seriousness. Buttons, cards, inputs capped at 8px max. No pill shapes, no 12px+.
7. **Tabular financial numbers** -- `font-variant-numeric: tabular-nums` on every monetary value and percentage for proper column alignment.
8. **Light/dark section alternation** -- white > light gray > deep indigo (#1c1e54) > white. The rhythm of a financial report.
9. **Product photography as context** -- payment terminal close-ups and NFC interaction shots ground the abstract API world in physical reality. Photos serve as section dividers and contextual anchors, never hero elements.
10. **Abstract gradient imagery** -- purple-blue gradient photography/video matching Stripe's brand palette for dark sections and accent breaks. Represents the scale and fluidity of global payment flows.

## Hard Constraints
- Border-radius NEVER exceeds 8px (4px standard, 6-8px cards). Pill shapes are forbidden.
- Display headings use weight 300 only. Bold weights (500+) reserved for labels, nav, and UI chrome.
- All shadows are blue-tinted first layer: `rgba(50,50,93,...)`. Never `rgba(0,0,0,...)` alone.
- Dark sections use deep indigo (#1c1e54), NEVER pure black (#000 or #111).
- Financial numbers use `tabular-nums`. No gradient text on metrics.
- Code snippets use real Stripe API endpoints, parameters, and object ID formats.
- No stock photography of people at desks or in meetings. Product photography (payment terminals, NFC interactions) is acceptable. Abstract gradient imagery in Stripe palette is encouraged for atmosphere.

## Anti-Patterns
- NOT a fintech startup with neon gradients and dark mode glow -- Stripe is infrastructure, not a consumer app
- NOT a generic SaaS landing page with "Trusted by 10,000+ companies" hero badges and testimonial carousels
- NOT a crypto/web3 aesthetic with glassmorphism, neon accents, or dark-mode-first
- NOT playful or whimsical -- money is serious, the design radiates institutional trust
- NOT heavy with lifestyle photography of people at laptops -- product/hardware photography and abstract gradients are fine, but code and data remain the primary visual assets
- NOT built with rounded pill buttons and bubbly type
- NOT using gradient text on revenue figures -- fintech-startup tell, not infrastructure

## Section Archetypes
- **API code demo**: A real curl command creating a payment intent with its JSON response. Terminal window with syntax highlighting in macOS chrome frame.
- **Global payment methods grid**: Cards, wallets, bank transfers, BNPL, local methods -- showing worldwide coverage as tiled grid with icons and regional specifics.
- **Revenue dashboard mock**: Gross volume with deltas, transaction feed with status badges, area chart, payment method indicators (Visa/MC/Amex mini-cards).
- **Developer experience showcase**: Multi-language SDK tabs (Node, Python, Ruby, cURL) with real checkout session code. Feature list emphasizing integration speed and uptime.
- **In-person payment photo break**: Full-bleed NFC/terminal photography with text overlay -- bridges digital and physical payment worlds. Gradient overlay for text readability.
- **Scale proof metrics**: $1T+ volume, 99.999% uptime, 100+ payment methods as oversized tabular numbers with animated progress bars.
- **Transparent pricing**: 2.9% + 30c per-transaction with feature comparison. Two cards, not a comparison table.

## Typography
- **Instrument Sans** at weight 300 for display headlines -- whisper-light authority matching Stripe's sohne-var. Letter-spacing: -0.035em at hero, -0.025em at sections.
- **Instrument Sans** at weight 400-600 for body, labels, navigation.
- **Source Code Pro** at 400-500 for all code blocks, API keys, transaction IDs, financial figures. The monospace is as important as the display font.
- WHY: Stripe's identity is the contrast between whisper-thin headlines and dense, precise code. Instrument Sans delivers geometric confidence via Google Fonts. Source Code Pro is the developer documentation standard.

## Color
- **White (#ffffff / oklch(1 0 0))**: Primary background. Institutional, trustworthy.
- **Deep navy (#0a1628 / oklch(0.15 0.04 250))**: Headings. NOT black -- navy implies financial depth.
- **Slate (#64748d / oklch(0.55 0.02 250))**: Body text. Cool-toned institutional feel.
- **Stripe purple (#533afd / oklch(0.45 0.28 280))**: Brand accent. CTAs, links, charts. The ONLY saturated color on white sections.
- **Success (#15be53 / oklch(0.65 0.2 145))**: Transaction succeeded, positive deltas, checkmarks.
- **Ruby (#ea2261 / oklch(0.55 0.22 10))**: Declined, negative deltas, errors.
- **Amber (#f5a623 / oklch(0.72 0.16 75))**: Pending transactions.
- **Deep indigo (#1c1e54 / oklch(0.2 0.08 275))**: Dark sections. NOT black.
- **Blue border (#e5edf5 / oklch(0.93 0.01 250))**: All borders. Blue-tinted, never gray.

## Supporting Files
- `https://joincommons.cc/api/items/stripe-payments/raw/design-language` -- Complete visual system: full OKLCH palette, typography scale, spacing, shadows, motion, component patterns
- `references/asset-direction.md` -- Code block direction, data-as-visual patterns, dashboard mock guidance, what NOT to show
- `https://joincommons.cc/api/items/stripe-payments/raw/anti-patterns` -- Domain-specific traps across visual, structural, content, and UX dimensions
- `assets/tokens.dtcg.json` -- DTCG tokens with color, semantic (transaction status, delta, code syntax), and typography groups
- `assets/exhibit.html` -- Reference implementation: complete landing page with API demo, payment methods, dashboard mock, SDK tabs, metrics, pricing

## Workflow
1. Read `https://joincommons.cc/api/items/stripe-payments/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for code, data, and dashboard guidance
3. Build following the product world above -- ask "what would Stripe show here?"
4. Self-critique against `https://joincommons.cc/api/items/stripe-payments/raw/anti-patterns`

## Gotchas
- **Round numbers break trust**: Use $42,651.80, not $42,000. Real financial data has cents. Payment counts are odd numbers (1,247 not 1,000).
- **Gray shadows are wrong**: Every shadow must be blue-tinted (rgba(50,50,93,...)). Plain gray shadows instantly feel un-Stripe.
- **Don't darken with black**: Dark sections use #1c1e54, never #000 or #111. Pure black has no brand warmth.
- **Code must be real**: API snippets must use actual Stripe endpoints, parameter names, and object ID formats (pi_, sk_test_, price_).
- **Border radius ceiling is 8px**: Going above 8px shifts from institutional to consumer app.
- **Weight 300 is the signature**: Using 500+ for display headings loses the whisper-authority identity.

</design-system>
