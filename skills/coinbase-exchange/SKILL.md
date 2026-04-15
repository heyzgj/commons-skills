---
name: coinbase-exchange
description: Institutional crypto exchange landing page. Coinbase Blue (oklch 0.48 0.22 264) as singular functional accent, Satoshi 900 display with ultra-tight 1.0 line-height, IBM Plex Sans body with tabular-nums on all financial data. Asymmetric hero with atmospheric video right and text-first left. Live price ticker, embedded buy-flow demo card, portfolio allocation bars, staking APY table, cold storage security vault, Base L2 developer code block. Dark/light section alternation, 56px pill CTAs, lowercase button labels. Trust is the product.
metadata: design-skill
---

# Coinbase Exchange

<design-system>

## Identity
Coinbase is the most trusted crypto exchange -- buy, sell, stake, and store 250+ cryptocurrencies on a publicly traded, SOC 2 certified platform that holds 98% of assets in cold storage. Built for crypto newcomers making their first $100 BTC purchase, active traders watching BTC/ETH on lunch breaks, institutional treasury VPs allocating corporate balance sheets to digital assets, and developers building dApps on Base L2. Ages 22-55, skewing toward people who trust banks but distrust crypto exchanges -- Coinbase must win them with clarity, not hype. The vibe is "Chase Private Client meets Bloomberg Terminal" -- institutional trust paired with real-time financial data density, simplified for anyone who can use Venmo.

**Core principle**: Trust is the product. Every pixel communicates "we are the adults in the room" -- clean, precise, unhurried.

**Visual vibe**: Institutional trust, clean authority, financial precision, unhurried confidence, blue-chip reliability, transparent simplicity, quiet competence, regulated warmth, accessible professionalism, data-first clarity.

**Domain conventions**: Ticker symbols (BTC, ETH, SOL), tabular-nums for all financial figures, green/red for price direction (never decorative), APY percentages, market cap abbreviations ($1.34T), trading pair notation (BTC/USD), cold storage terminology.

## Signature Moves
1. **Asymmetric hero with video atmosphere**: Atmospheric video on the right (55% width, 0.5 opacity) with gradient fade, text-first headline on the left. Trust metrics anchored below as a border-top row -- not floating metric cards
2. **Live price ticker table**: 5-column grid (asset icon+name, price, change, market cap, trade CTA) with tabular-nums throughout and inline "Trade" pill buttons per row
3. **Embedded buy-flow product demo**: The actual purchase interface as a dark-surface card -- tabs (Buy/Sell/Convert), amount input, quick-select denominations, asset selector, full-width CTA. The interface IS the marketing
4. **Dark/light section alternation for depth**: No shadows anywhere. Elevation from surface color contrast -- white, border-top white, dark, white, gray, dark, white, blue, dark
5. **56px pill CTAs with lowercase labels**: "get started", "buy bitcoin", "start staking" -- maximum pill radius signals friendliness, lowercase creates approachability. Coinbase's actual signature
6. **Portfolio allocation bar**: Flex segments (BTC gold, ETH indigo, SOL purple, Other gray) with legend. Data as the primary visual
7. **Security vault with large metrics**: Satoshi 900 at 2.5rem (98%, $320B+, 2FA) on semi-transparent dark cards with backdrop blur over background photography
8. **Developer code block with real deployment**: TypeScript using viem library deploying to Base L2. Traffic-light dot header, syntax highlighting, actual chain libraries

## Hard Constraints
1. Coinbase Blue `oklch(0.48 0.22 264)` for CTAs, links, active states ONLY. Never as background, never decorative. Its power comes from restraint
2. All neutrals carry hue 264 (blue tint) -- from white at 0.002 chroma to borders at 0.012. No dead grays, no warm tints
3. Satoshi 900 for hero (1.0 line-height), 700 for section headings. IBM Plex Sans 400-600 for body/UI. `font-variant-numeric: tabular-nums` on ALL financial data
4. Green `oklch(0.62 0.17 155)` and red `oklch(0.58 0.18 25)` are SEMANTIC only -- gain and loss. Never decorative
5. No shadows for depth. Use dark/light section alternation and 1px borders. Backdrop-filter glass on nav only
6. 56px border-radius on all CTA buttons. 16-24px on cards. Never mix pill and square in same button context
7. Only real cryptocurrency tickers (BTC, ETH, SOL, ADA, DOT, AVAX, MATIC, LINK). Current-era prices ($60-70K BTC, $3-4K ETH)
8. Video at 0.45-0.5 opacity with gradient overlays. Never full opacity, never as primary content

## Anti-Patterns
- NOT a DeFi degen dashboard with neon gradients, dark mode glow effects, and "to the moon" energy
- NOT a crypto gambling platform with live candlestick animations, PnL tickers, and dopamine-inducing green flashes
- NOT a Web3 marketing page with abstract 3D renders, mesh gradients, and "decentralized future" rhetoric
- NOT a fintech startup with playful illustrations, rounded corners everywhere, and pastel gradients
- NOT a generic SaaS landing page with hero-features-pricing-testimonials-CTA template structure
- NOT intimidating -- no order books, depth charts, or margin trading UI on the landing page
- NOT decorative with Coinbase Blue -- it is functional accent ONLY, never gradient backgrounds
- NOT using physical gold Bitcoin coins, rocket ships, or "crypto bro" imagery
- NOT testimonial-driven -- "110M+ verified users" beats "Sarah, Crypto Enthusiast"

## Section Archetypes
- **Live price ticker**: Tabular asset rows with icon, name, ticker, price, 24h change, market cap, inline trade CTA. This IS the product
- **Buy flow demo**: Interactive product card showing the actual buy experience -- amount input, quick-select denominations ($50/$100/$500/$1,000), asset selector with live price
- **Portfolio allocation**: Visual breakdowns with allocation bars, asset distribution, automated features (recurring buys, DCA), vault protection
- **Staking rates table**: Asset-by-asset APY comparison with asset icon, name, and green APY value. Financial data formatted precisely
- **Security vault**: Cold storage percentages, platform assets under custody, authentication layers. Trust through specificity, not vague claims
- **Developer platform (Base L2)**: Code blocks with real TypeScript deployment examples, chain statistics (<$0.01 gas, 2s block time, 40M+ txn/month)

## Hero Archetype
Video-typography with asymmetric split. Atmospheric video (blockchain/finance imagery) on the right at 0.5 opacity with left-to-right and bottom gradient overlays. Strong left-aligned headline (Satoshi 900, fluid 2.75-5rem) with trust badge ("Markets open 24/7" with pulsing green dot), CTA row, and trust metrics row (110M+ users, $330B+ volume, 100+ countries). Text authority first, visual atmosphere second -- mirrors how financial institutions present.

## Asset Direction
- **Photography**: Abstract digital finance, data on screens, server infrastructure. Cool, technological, trustworthy. Used as background at 10-15% opacity on dark sections, never foreground
- **Data-as-visual**: Live prices, allocation bars, APY tables, market cap figures ARE the visual. Financial data is the most compelling asset
- **Video**: Atmospheric blockchain/digital finance footage as hero background. 720p, 7-8s loop, autoplay muted. 0.45-0.5 opacity with gradient overlays
- **Code blocks**: TypeScript deployment examples using viem, ethers.js. Syntax highlighted. Real chain libraries and addresses
- **What NOT to show**: Gold Bitcoin physical coins, rocket ships, candlestick charts, stock photos of people at screens, abstract 3D renders

## Typography
- **Satoshi** (display): Geometric sans with personality avoiding Inter/DM Sans blandness while maintaining financial precision. Ultra-tight 1.0 line-height on hero creates authority. 900 for hero, 700 for sections
- **IBM Plex Sans** (body/UI): IBM's enterprise interface typeface. Institutional credibility with humanist touches. tabular-nums variant essential for price column alignment

## Color
OKLCH palette with blue-tinted neutrals (hue 264):
- `oklch(0.48 0.22 264)` -- Coinbase Blue: CTAs, links, active states. Functional accent ONLY
- `oklch(0.58 0.16 264)` -- Blue hover: lighter, desaturated feedback
- `oklch(0.72 0.1 264)` -- Blue light: labels on dark backgrounds
- `oklch(0.99 0.002 264)` -- White: primary light surface (blue-tinted)
- `oklch(0.15 0.01 264)` -- Near-black: text + dark section backgrounds
- `oklch(0.95 0.008 264)` -- Cool gray: secondary surface, button fills
- `oklch(0.62 0.17 155)` -- Positive: price increase, staking APY, live status (SEMANTIC: gain)
- `oklch(0.58 0.18 25)` -- Negative: price decrease (SEMANTIC: loss)
- `oklch(0.75 0.15 85)` -- Warning: pending, verification needed

## Workflow
1. Read `https://joincommons.cc/api/items/coinbase-exchange/raw/design-language` for the full visual system (every OKLCH value, font size, spacing token)
2. Read `references/asset-direction.md` for photography/video sourcing direction + verified starter URLs
3. Build following the product world above -- trust, clarity, financial precision
4. Self-critique against `https://joincommons.cc/api/items/coinbase-exchange/raw/anti-patterns` -- check for crypto cliches and DeFi aesthetic leakage

## Gotchas
1. Using green/red decoratively instead of semantically -- these colors ONLY mean financial gain/loss
2. Making the price table feel like a dashboard instead of a clean data display
3. Using Coinbase Blue as a background color -- it is functional accent ONLY
4. Adding candlestick charts or order book UI to a landing page -- wrong audience, save for trading app
5. Using shadows for depth -- Coinbase uses surface color alternation, not elevation shadows
6. Over-decorating the buy card -- it should feel like the real product, not a marketing mockup
7. Forgetting tabular-nums on financial data -- misaligned decimal points destroy credibility

</design-system>

## Supporting Files

- `https://joincommons.cc/api/items/coinbase-exchange/raw/design-language`: canonical design language -- full OKLCH color palette with asset identity colors, typography scale (every element with exact sizes/weights/line-heights), spacing system, border radius scale, motion patterns (easing, entrance animations, reduced motion), component patterns (nav, pill buttons, price table, buy card, portfolio cards, staking rows, security cards, code blocks), and layout grids.
- `references/asset-direction.md`: hero video implementation, photography direction (cool/technological, never gold coins), data-as-visual patterns (price data, allocation bars, staking APY, trust metrics), video direction (atmospheric, 0.5 opacity), code block direction (TypeScript, viem library), and verified starter asset URLs.
- `https://joincommons.cc/api/items/coinbase-exchange/raw/anti-patterns`: domain-specific traps across visual (no DeFi neon, no shadows, no decorative green/red), structural (no generic SaaS template, no features grid, no testimonials), content (real tickers only, current-era prices, specific security claims), and UX (no order books on landing page, no hover-dependent info, no animated financial data).
- `assets/tokens.dtcg.json`: DTCG-format tokens for brand colors (Coinbase Blue system), surface colors, text hierarchy, semantic tokens (price-up/down, warning, 8 asset identity colors, syntax highlighting), and typography composites (hero through security-metric).
- `assets/exhibit.html`: reference implementation -- asymmetric video hero, live price ticker table, dark buy-flow demo card, portfolio feature grid with allocation bar, staking rate rows, security vault with large metrics, Base L2 developer code block, blue CTA section, dark footer.
- `assets/design-skill.json`: manifest with V4 schema fields for Commons discovery and curation.
