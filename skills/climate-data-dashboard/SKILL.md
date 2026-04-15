---
name: climate-data-dashboard
description: Bloomberg-grade climate intelligence platform for CSOs and ESG analysts. Deep navy-tinted dark surfaces with warm amber accent. Data-as-hero approach -- atmospheric CO2 (424.8 ppm) and temperature anomaly (+1.45C) in monospace as the focal point. Bitter serif display, Instrument Sans body, Fira Code mono for all numeric data. Traffic-light status system, scope 1/2/3 breakdowns, reduction scenarios, carbon credit marketplace, ESG report generator.
metadata: design-skill
---

# Canopy Climate Intelligence

<design-system>

## Identity
A climate intelligence platform that treats environmental data with the same rigor as financial data. Bloomberg Terminal for carbon -- dense, authoritative, no fluff. Pull up a company's emissions dashboard and see scope 1/2/3 broken down by facility, compared to targets, with trend lines. Generate a board-ready report in ten minutes. Every number sourced, every methodology transparent.

## Product World
- **Who**: Chief Sustainability Officers and ESG analysts at Fortune 500 companies. They present to boards and investors. They need unimpeachable data -- sourced, cited, methodologically sound. They use Bloomberg terminals, SAP, and Excel. They hate greenwashing and vague commitments. They admire organizations like IPCC and Our World in Data for rigor.
- **What**: Climate intelligence platform -- track carbon emissions, model reduction scenarios, purchase verified carbon credits, generate ESG reports.
- **Vibe**: Our World in Data (academic rigor, clean visualization, data authority) meets Bloomberg Green (professional urgency, dark data-dense interfaces). The data IS the product.
- **Domain conventions**: GHG Protocol scopes (1/2/3), SBTi targets, TCFD/GRI/SASB/CDP frameworks, tCO2e units, emission factors, verification standards (ISO 14064-3, Verra VCS, Gold Standard), vintage years for credits, GICS sector codes.

## Signature Moves
1. **Data-as-hero**: No imagery in the hero. Four vital sign cards with monospace numbers, trend arrows, and sparklines. The platform's first impression is real atmospheric data (424.8 ppm CO2, +1.45C anomaly).
2. **1px gap grids**: Vital signs and methodology bar use 1px gap with background color showing through -- creates cell separators without borders, like a Bloomberg terminal.
3. **Traffic-light status system**: On Track / At Risk / Off Track badges with colored dots -- the exact visual language CSOs use in board presentations.
4. **Monospace for all numbers**: Every data value uses Fira Code with tabular-nums. Numbers are first-class citizens, not styled as afterthoughts.
5. **Methodology as trust architecture**: The bottom bar cites protocol, emission factors, verification standard, and data freshness. Not hidden in a footer link -- visible as a structural element.
6. **Framework tags as badges**: TCFD, GRI, SASB, CDP shown as monospace tags -- regulatory frameworks as design elements, understood instantly by the target audience.

## Hard Constraints
1. Dark mode only -- navy-tinted surfaces (oklch hue 250), never pure black, never light mode
2. Three fonts with strict role separation: Bitter serif for display/headlines, Instrument Sans for body/UI, Fira Code for ALL numeric data
3. All data values must use monospace with font-variant-numeric: tabular-nums
4. Zero decorative elements -- no gradients, glow effects, illustrations, or stock photography
5. Status colors follow traffic-light convention: green (on-track), amber (at-risk), red (off-track) -- never inverted
6. Every emission value must include units (tCO2e), every CO2 reading must include ppm, every temperature must include reference baseline

## Anti-Patterns
- NOT a green-washed marketing page with stock photos of trees and windmills
- NOT a consumer sustainability app with gamified progress and confetti
- NOT a dark-mode dashboard with neon glowing charts and gradient decorations
- NOT a generic SaaS landing page with hero/features/pricing/CTA structure
- NOT an activist campaign site with emotional imagery and urgent red buttons
- NOT a data visualization portfolio with beautiful-but-impractical charts
- NOT a minimalist climate blog with large photography and prose

## Section Archetypes
- **Planetary vital signs**: Real-time atmospheric data (CO2 ppm, temperature anomaly) as the hero -- numbers with deltas, trend arrows, sparklines
- **Emissions breakdown**: Scope 1/2/3 bars + facility-level table with status indicators (on track / at risk / off track)
- **Reduction scenario modeler**: Side-by-side pathway comparison cards with investment, timeline, carbon price exposure metrics
- **Carbon credit marketplace**: Verified credit listings with methodology, vintage, registry IDs, per-tonne pricing
- **ESG report generator**: Document preview with table of contents + framework-aligned export options
- **Methodology bar**: Protocol, emission factors source, verification standard, data freshness -- a trust footer

## Hero Archetype
Data-as-hero + typography. No photos, no videos. The atmospheric CO2 measurement (424.8 ppm) and temperature anomaly (+1.45C) ARE the hero. Oversized monospace numbers with trend deltas. This is the Bloomberg approach -- the number IS what matters.

## Asset Direction
Photography is NOT the primary asset for this product. The data itself is visual:
- Real atmospheric measurements (CO2 ppm, temperature anomaly in degrees C)
- Facility emissions tables with scope breakdowns and status indicators
- Carbon credit listings with registry IDs, methodologies, vintage years
- Reduction pathway charts showing investment vs timeline tradeoffs
- Framework tags (TCFD, GRI, SASB, CDP) as credibility signals
- If photography is needed: satellite imagery of Earth only, NOT stock photos of nature

## Typography
- **Bitter** (display/headlines) -- editorial serif with enough weight for authority. Recalls financial reports and academic publications. The serif signals institutional credibility that sans-serif alone cannot.
- **Instrument Sans** (body/UI) -- clean geometric sans with contemporary precision. Not as sterile as Inter but equally readable at small sizes. Pairs naturally with a serif.
- **Fira Code** (data/mono) -- tabular numerals are essential when every column of numbers must align. Used for all emission values, prices, percentages, and delta indicators.

## Color
OKLCH palette on deep navy-tinted dark surfaces (not pure black):
- **Surface 0-4**: oklch(0.10-0.25, 0.01-0.02, hue 250) -- navy-tinted dark scale
- **Text**: oklch(0.94/0.70/0.52) with subtle blue tint -- three-tier hierarchy
- **Accent (amber)**: oklch(0.78 0.16 75) -- warm urgency without alarm
- **Status on-track**: oklch(0.72 0.17 155) -- green, targets being met
- **Status at-risk**: oklch(0.78 0.16 75) -- amber, targets threatened
- **Status off-track**: oklch(0.65 0.20 25) -- warm red, targets missed
- **Scope 1/2/3**: Three distinct hues (25/55/280) to separate emission scopes

## Supporting Files
- `https://joincommons.cc/api/items/climate-data-dashboard/raw/design-language` -- Full visual system: OKLCH palette, type scale, spacing, motion, components
- `references/asset-direction.md` -- Data-as-visual patterns, domain data examples, photography direction
- `https://joincommons.cc/api/items/climate-data-dashboard/raw/anti-patterns` -- Greenwashing traps, structural mistakes, content errors
- `assets/tokens.dtcg.json` -- DTCG tokens: surface/text/border/accent/semantic/scope/typography
- `assets/exhibit.html` -- Reference implementation (~48KB, self-contained)

## Workflow
1. Read `https://joincommons.cc/api/items/climate-data-dashboard/raw/design-language` for the full color, type, and spacing system
2. Read `references/asset-direction.md` for data patterns and content guidance
3. Build with data density as the primary constraint -- every section should feel like it contains real, actionable information
4. Self-critique against `https://joincommons.cc/api/items/climate-data-dashboard/raw/anti-patterns` -- especially the greenwashing and decoration traps

## Gotchas
- **Fake data kills credibility instantly**: CSOs know real emission factors. Use real values (2.3 kg CO2/kWh coal, 0.04 solar) or don't show them.
- **Do not mix scope 3 with scope 1/2 casually**: Scope 3 is the hardest to measure and always the largest. Show it visually separated.
- **Carbon credits have real registries**: Always include Verra VCS or Gold Standard IDs. Made-up registry numbers destroy trust.
- **Temperature anomaly is relative to pre-industrial baseline**: Always state the reference period.
- **OKLCH chroma must decrease at extremes**: Light text (0.94 lightness) needs very low chroma (0.008).
- **Do not use stock photos of nature**: This is a data platform, not an environmental charity.

</design-system>