---
name: typographic-hero-saas
description: Product analytics SaaS where typography IS the data visualization -- Syne 800 at 8rem hero with weight contrast, Instrument Sans for body, deep indigo OKLCH base, electric violet accent, oversized metric numbers as design elements, funnel visualizations, retention cohort heat maps, live event streams, A/B experiment cards. For product teams who live in funnels and retention curves.
metadata: design-skill
---

# Typographic Hero SaaS

<design-system>

## Identity
A product analytics platform where every number is displayed typographically at editorial scale. Numbers ARE the design -- not charted, not graphed, but rendered as massive typography that commands attention. The design language treats metrics (847K DAU, 34.2% activation, 18ms latency) as visual spectacle, using Syne's dramatic weight axis (400 to 800) against a deep indigo void with a single electric violet accent. This is for data-obsessed product teams who find beauty in conversion funnels and retention curves.

## Product World
- **Who**: Product managers who obsess over conversion funnels. Growth engineers who A/B test everything. Data analysts who build dashboards for stakeholders. They live in metrics -- DAU/MAU, retention curves, conversion rates, p-values, cohort tables.
- **What**: A product analytics platform that makes numbers feel like editorial design -- funnels, retention, experimentation, real-time event streams.
- **Vibe**: Stripe's typographic confidence meets PostHog's data-native interface -- massive numbers that feel designed, not charted.
- **Domain conventions**: Event-based tracking, funnel step terminology (landing > signup > activation > conversion), cohort retention tables, A/B test confidence intervals (p-values, lift percentages), real-time event streams with user IDs and properties.

## Signature Moves
1. **Hero weight contrast within Syne**: "Every" at 400 weight, "user tells a story" at 800 -- the drama is in the weight axis, not in multiple fonts
2. **Metric cells with ambient bars**: Background bars at 6% accent opacity rise to 12% on hover -- data visualization without a charting library
3. **Retention table OKLCH heat mapping**: Inline alpha values (0.17 to 0.58) on accent color create a retention heat map with pure CSS
4. **Video break typographic spectacle**: "4.2x" at 12rem over atmospheric video -- a single metric as full-viewport statement
5. **Funnel gradient encoding**: Five-step funnel uses OKLCH lightness cascade (0.68 down to 0.44) to visually encode conversion decay
6. **Photo breaks as typographic canvas**: Dimmed, desaturated photos serve only as backdrop for editorial quotes in Syne 800
7. **Event stream as raw data table**: Timestamps, event names, properties, user IDs -- treats the audience as data-literate
8. **Scrolling company ticker**: Continuous horizontal scroll of company names replaces static logo rows

## Hard Constraints
1. Numbers displayed as typography (3-12rem), never as chart.js or SVG chart visualizations
2. Zero border-radius on all elements -- architectural precision
3. Two fonts with strict role separation: Syne for display/numbers/headings, Instrument Sans for body/labels/UI
4. Deep indigo-tinted OKLCH neutrals (hue 275), never pure gray or warm tones
5. Single accent hue: electric violet at oklch(0.68 0.24 290) -- no secondary or tertiary accents
6. Photos always dimmed (brightness 0.55) and desaturated (saturate 0.7) -- typography stays dominant
7. All metric data must be plausible for a product analytics platform (realistic DAU ranges, retention decay, p-values)

## Anti-Patterns
1. Chart libraries (chart.js, D3, Recharts) -- numbers at editorial scale replace all charts
2. Gradient text on headlines -- solid accent color on one word only
3. Icon + title + description feature cards -- metrics lead with oversized numbers, not icons
4. Centered hero layout -- left-aligned creates editorial asymmetry
5. Generic buzzword headlines ("Transform Your Analytics") -- specific and editorial instead
6. Bright or warm photography -- all photos subdued to serve as typographic canvas
7. Dashboard UI widgets on a marketing page -- this shows what the product does, it is not the product itself

## Visual Vibe
Authoritative, data-native, precise, editorial, dark, typographic, confident, disciplined, vast, quiet power. The precision of a Bloomberg terminal expressed through the editorial confidence of Stripe's typography.

## Section Archetypes
- **Type-forward hero with atmospheric video**: Massive headline (8rem+) with Syne weight contrast, ambient dark video at low opacity, stat row with display numbers
- **Metrics showcase**: 4-cell grid, each dominated by oversized number (5rem) with unit label, change indicator, and background bar
- **Photo-break testimonial**: Full-width dimmed photo with editorial quote in display type
- **Conversion funnel**: Horizontal bars with step labels, percentages, drop indicators, diagnostic detail panel
- **Retention cohort table**: Data table with OKLCH alpha heat mapping, insight cards below
- **Live event stream**: Real-time feed table with timestamp, event name, properties, user ID
- **Experimentation engine**: Experiment cards with hypothesis, control/variant results, confidence intervals
- **Video section break**: Full-width video with centered oversized metric (12rem)

## Hero Archetype
Typography + atmospheric video. Syne headline at `clamp(3.5rem, 9vw, 8rem)` with weight contrast (thin "Every" at 400 vs heavy "user tells a story" at 800). One accent word in electric violet. Dark abstract video behind at 35% opacity, heavily desaturated and dimmed. Stat row below with three display numbers (2.4B, 18ms, 4,200+) as credibility anchors.

## Asset Direction
- **Photography**: Abstract dark technology -- server rooms, data visualization screens, mathematical textures. Always dimmed and desaturated as canvas for overlaid type
- **Video**: Dark abstract particle/data motion at 0.35-0.45 opacity. Atmospheric, never content
- **Typography-as-art**: Numbers at 5-12rem as primary visual elements across sections
- **Data-as-visual**: Funnel percentages, retention cohort heat maps, event stream rows, A/B confidence intervals
- **What NOT to show**: Chart library output, product screenshots, SVG illustrations, icons, bright photography

## Typography
**Syne 400/500/600/700/800** -- display font. Geometric with distinctive character, sharp at extreme sizes. Weight axis from 400 to 800 creates dramatic editorial contrast. Chosen for personality that avoids the generic feel of banned fonts while maintaining technical precision at 8rem+.

**Instrument Sans 400/500/600/700** -- body font. Clean, contemporary, excellent legibility at small sizes. Provides calm readability against Syne's geometric drama. A fresh alternative outside the banned Inter/DM Sans corridor.

## Color
Deep indigo-tinted OKLCH system with electric violet accent:
- `--bg-abyss: oklch(0.04 0.02 275)` -- deepest background, page base
- `--bg: oklch(0.065 0.018 275)` -- section backgrounds
- `--bg-raised: oklch(0.09 0.015 275)` -- cards, elevated surfaces
- `--accent: oklch(0.68 0.24 290)` -- electric violet, primary action
- `--text-primary: oklch(0.94 0.006 275)` -- headlines, metric numbers
- `--text-secondary: oklch(0.68 0.012 275)` -- body text
- Semantic: `--metric-positive: oklch(0.72 0.19 155)` = growth, `--metric-negative: oklch(0.65 0.2 25)` = decline, `--metric-warning: oklch(0.78 0.17 85)` = caution
- Funnel gradient: 5 steps from accent to muted (L from 0.68 to 0.44)
- Retention heat: accent at alpha 0.17-0.58 for cohort cells

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/typographic-hero-saas/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing, motion, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: photography direction, video treatment, data-as-visual patterns |
| `https://joincommons.cc/api/items/typographic-hero-saas/raw/anti-patterns` | 20 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (metrics, funnels, events, experiments), typography |
| `assets/exhibit.html` | Reference implementation -- self-contained exhibit with all section archetypes |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

## Workflow
1. Read `https://joincommons.cc/api/items/typographic-hero-saas/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world, section archetypes, and hard constraints above
4. Self-critique against `https://joincommons.cc/api/items/typographic-hero-saas/raw/anti-patterns`
5. Validate tokens against `assets/tokens.dtcg.json`

## Gotchas
1. **Font is Syne + Instrument Sans.** NOT Outfit, NOT IBM Plex Mono. The weight contrast within Syne (400 to 800) IS the hero treatment.
2. **Numbers are typography, not charts.** Every metric must be rendered as oversized type (3-12rem), never as a chart library visualization.
3. **Photos are canvas, not content.** Always dimmed (brightness 0.55) and desaturated (saturate 0.7). If the photo draws more attention than the text on top, it's too bright.
4. **Metric semantic colors are separate from accent.** Green for growth, red for decline, yellow for warning. Never use the violet accent for metric status.
5. **Left-aligned hero.** Centering massive type at 8rem creates symmetry that kills the editorial tension.
6. **Realistic analytics data.** Retention should decay (68% week-1, not 95%). P-values should be below 0.05. DAU should be in realistic ranges. Fake-looking data destroys credibility.
7. **Zero border-radius.** Every element sharp-cornered. This is a design decision for precision, not an omission.

</design-system>
