---
name: wise-transfer
slug: wise-transfer
description: International money transfer landing page inspired by Wise (formerly TransferWise). Billboard-weight Instrument Sans typography, lime green CTA accent, ring-shadow-only depth, and confrontational transparency that names competitors and shows exact fees.
metadata: design-skill
---

# Wise Transfer

<design-system>

## Identity
The anti-bank money transfer. Wise sends money abroad at the mid-market exchange rate with a transparent, upfront fee -- no hidden markup. The design language is billboard-bold type on a clean white canvas, with Wise Green (#9fe870) reserved for buttons only. This is Wise.com's confidence meets Monzo's challenger energy. The interface communicates transparency through visibility: fees, rates, competitor comparisons, and delivery times are all laid bare. Nothing is hidden because there's nothing to hide.

## Product World
- **Who**: Expats sending money home, freelancers receiving international payments, small business owners paying overseas suppliers, travelers who need local currency. They HATE hidden bank fees. They check the mid-market rate on Google and notice the gap. They're financially literate, price-sensitive, and tired of being ripped off.
- **What**: The cheapest, fastest way to send money internationally -- mid-market exchange rate with a transparent, upfront fee.
- **Vibe**: Wise.com meets Monzo -- billboard confidence of a fintech disruptor crossed with ruthless transparency. Not a bank. The anti-bank.
- **Domain conventions**: Currency pairs (GBP/EUR, USD/INR), ISO currency codes, mid-market rate, fee percentages, delivery time ranges, FCA regulation. Numbers always use locale formatting (1,000.00) and tabular-nums for column alignment.

## Signature Moves
1. **Billboard type at 0.85 line-height** -- Instrument Sans weight 800 display text so tightly set that letters nearly overlap vertically. The density feels stamped, physical, urgent -- like a protest sign against bank fees.
2. **Ring shadows only** -- `rgba(14,15,12,0.12) 0 0 0 1px`. Zero drop shadows anywhere. Depth from green accent against white canvas, not simulated elevation.
3. **scale(1.05) hover / scale(0.95) active on ALL buttons** -- physical, tactile interaction. Buttons grow and compress. No color-shift hovers.
4. **Named competitor confrontation** -- comparison table names PayPal, Barclays, HSBC, Western Union by name, shows their hidden costs in red. Most fintechs say "traditional bank." Wise names names.
5. **Dark-green-on-green CTA** -- #163300 text on #9fe870 background. Nature-inspired pairing unique to Wise.
6. **Pill everything** -- 9999px border-radius on all buttons, badges, selectors. 30-40px on cards. Soft geometry countering aggressive typography.
7. **Currency converter as centerpiece** -- the converter with full fee/rate/delivery transparency IS the product. It appears early and prominently on every page.
8. **`font-feature-settings: "calt"` globally** -- contextual alternates on all text, improving letterform connections.

## Hard Constraints
1. White background (#ffffff) for primary canvas -- transparency = nothing to hide. Never warm cream.
2. Wise Green (#9fe870) for buttons and small accents ONLY -- never as section backgrounds or text color. Scarcity creates power.
3. Instrument Sans weight 700-800 for display, IBM Plex Sans weight 400-600 for body. Inter is banned. No third font.
4. Ring shadows only -- no drop shadows. Single exception: debit card green glow.
5. Near-black text (#0e0f0c) with green undertone -- never pure black.
6. Pill radius (9999px) on all interactive elements. Large radius (30-40px) on cards and tables.
7. All financial data uses `font-variant-numeric: tabular-nums` for column alignment.
8. Competitor names are real and specific (PayPal, Barclays, HSBC) -- never anonymized to "other providers."

## Anti-Patterns
1. Traditional bank aesthetic -- navy blue, gold accents, serif crests, marble textures. Wise was founded to disrupt this.
2. Crypto exchange patterns -- dark mode with neon charts, price tickers, FOMO urgency. Wise is stability, not speculation.
3. Drop shadows -- ring shadows only. Drop shadows create artificial depth that contradicts flat transparent brand.
4. Wise Green as background -- green on surfaces kills CTA power. It's for buttons only.
5. Vague fee language -- "low fees" or "competitive rates" instead of "0.43% -- that's all. 4.30 GBP."
6. Feature grid with icons -- show product UI (converter, comparison table), not abstract icon+heading+text grids.
7. Corporate finance photography -- no suits, handshakes, office environments, boardrooms.
8. Generic SaaS hero -- no floating UI mockups, no illustration with abstract shapes.

## Visual Vibe
Billboard-bold, nature-fresh, anti-corporate, direct, confident, clean-edge, lime-bright, unapologetic, accessible, borderless

## Section Archetypes
- **Currency converter**: Live-feel conversion card showing exact send amount, receive amount, fee breakdown, exchange rate, and delivery estimate. The transparency IS the design.
- **Provider comparison table**: Side-by-side cost comparison naming real competitors. Shows exchange rate markups as "hidden fees." Wise's most distinctive section.
- **Transfer speed routes**: Currency corridor cards showing delivery times per route (GBP to EUR: 12h, USD to INR: 20s). Data-as-visual with progress bars.
- **Debit card showcase**: CSS-rendered card visualization on dark background. Feature list with green dot bullets.
- **Multi-currency account**: Currency pill grid with flag emojis, ISO codes, and live rates. Visual breadth (80+ currencies).
- **Trust metrics**: Customer count, monthly volume, currency count, Trustpilot rating. Real testimonials from specific user types (expat, freelancer, CFO, traveler) with currency corridors.

## Hero Archetype
**Video-typography.** Ambient nature/globe video at 0.45 opacity on the right half, billboard-weight typography on the left. The video connects Wise's green brand to growth and nature rather than corporate finance. Ultra-bold "Money without borders." anchors the message. The converter section immediately below delivers on the promise.

## Asset Direction
- **Photography**: Minimal globes, abstract nature textures, aerial views. Fresh and borderless, not corporate.
- **Data-as-visual**: Comparison table IS the visual. Real rates, fees, competitor names. Currency pairs with flag emojis.
- **Video**: Nature/abstract green footage at 0.4-0.5 opacity as atmospheric backdrop. Never content to watch.
- **Typography-as-art**: Oversized step numbers (96px, 0.25 opacity). Billboard headlines ARE the primary visual.
- **What NOT to show**: No people with phones, no world maps with connection lines, no floating currency symbols, no handshakes.

## Typography
- **Instrument Sans** (display, 700-800) -- geometric boldness signals disruption and confidence. Line-height 0.85-0.88 creates billboard density.
- **IBM Plex Sans** (body, 400-600) -- engineered precision for financial data. Weight 600 as confident UI default. Tabular numerics mandatory.

## Color
| Token | Value | Meaning |
|-------|-------|---------|
| bg | oklch(1.0 0 0) | Clean white canvas |
| text | oklch(0.13 0.01 120) | Green-undertoned near-black |
| text-body | oklch(0.22 0.01 120) | Body text |
| text-secondary | oklch(0.34 0.005 120) | Descriptions |
| text-muted | oklch(0.58 0.002 90) | Captions, labels |
| wise-green | oklch(0.84 0.18 130) | CTA accent -- buttons only |
| dark-green | oklch(0.22 0.08 128) | Button text on green |
| mint | oklch(0.94 0.04 130) | Soft green surface |
| positive | oklch(0.34 0.08 155) | Good fee, savings |
| negative | oklch(0.52 0.18 22) | Bad fee, competitor markup |
| surface | oklch(0.92 0.01 110) | Table headers, dividers |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/wise-transfer/raw/design-language` | Full visual system: color palette, type scale, spacing, motion, component patterns, layout grids |
| `references/asset-direction.md` | Asset sourcing guidance: photography mood, video direction, data-as-visual patterns, starter URLs |
| `https://joincommons.cc/api/items/wise-transfer/raw/anti-patterns` | 20 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (fee-good/fee-bad, speed-bar, star-rating), typography composites |
| `assets/exhibit.html` | Reference implementation -- self-contained HTML exhibit at ~41KB |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>
