---
name: bmw-performance
slug: bmw-performance
description: Dark showroom automotive design inspired by BMW's CI2020 identity. Full-bleed night photography alternates with clinical white spec sheets. Weight-300 uppercase Barlow display, zero border-radius, BMW Blue for interactive elements only. Data-driven sections with real automotive specifications.
metadata: design-skill
---

# BMW M Performance

<design-system>

## Identity
A dark showroom automotive experience where full-bleed night photography alternates with clinical white specification sections. This is BMW's CI2020 visual philosophy transferred to the web: weight-300 uppercase Barlow display typography that whispers engineering authority, zero border-radius on every element (the most angular system possible), and BMW Blue (#1c69d4) used exclusively for interactive elements. The page reads like walking through a dark dealership at night — spotlights hitting polished carbon fiber, each model revealed in its own pool of light, then stepping into bright white rooms to study the engineering data. Photography carries all emotion. Typography carries all authority. Data IS the content.

## Product World
- **Who**: Affluent car enthusiasts 35-55 who research obsessively before buying. They compare 0-60 times, study engine specs, watch track lap videos, and read long-form engineering breakdowns. They know what a closed-deck block is. They care about weight distribution ratios. Driving is emotional and visceral, not just transportation.
- **What**: BMW M Performance vehicles — track-bred luxury performance cars where engineering precision meets driving pleasure.
- **Vibe**: BMW.com meets Porsche Engineering — dark showroom photography alternating with clinical white spec sheets. The feeling of standing in a dark dealership at night, spotlights hitting polished carbon fiber, the low growl of a straight-six echoing off tile.
- **Domain conventions**: Horsepower, torque (lb-ft), 0-60 times, Nurburgring lap times, engine codes (S58, B58), drivetrain abbreviations (xDrive, eDrive), weight in lbs, price in USD starting-at format, driving modes (Comfort/Sport/Sport+).

## Signature Moves
1. **Zero border-radius everywhere** — every button, card, container, image is a sharp rectangle. This is the most angular design system in the catalog. No exceptions.
2. **Weight 300 uppercase display** — headlines whisper authority rather than shouting it. The lightness creates monumental, architectural quality at large scale.
3. **Weight extremes only: 300/400/700/900** — no medium weights. The tension between 300 display and 900 navigation IS the signature typographic move.
4. **Dark/white alternation rhythm** — full-viewport dark photography sections alternate with white content sections, creating showroom pacing.
5. **BMW Blue scarcity** — the brand's signature blue appears only on interactive elements (3-5 per page). Its rarity gives every link and button significance.
6. **1px hairline dividers for all structure** — thin rules at low opacity create hierarchy in model cards, spec rows, parts catalogs. No cards, no containers, no shadows.
7. **Typography-as-data** — performance statistics (lap times, horsepower, 0-60) rendered as oversized weight-300 numerals become the primary visual in white sections.
8. **Tabular numerals** — all spec values, prices, and performance numbers use font-variant-numeric: tabular-nums for perfect column alignment.

## Hard Constraints
1. Zero border-radius on every element — buttons, inputs, images, containers, badges. No exceptions.
2. BMW Blue (#1c69d4) for interactive elements ONLY — links, CTAs, focus rings. Never as background, gradient, or decoration.
3. Weight extremes only: 300 (display), 400 (body), 700 (buttons/values), 900 (nav/labels). No 500 or 600.
4. ALL display text, labels, navigation, and buttons are uppercase. Body text is sentence case.
5. Barlow (DIN-heritage geometric) as the single font family, four weights loaded.
6. No shadows anywhere — depth from dark/white section contrast and photography lighting only.
7. Dark sections use full-bleed photography with gradient overlays; white sections use hairline-border data layouts.
8. All content references real BMW domain data: real engine codes, real specifications, real model names.

## Anti-Patterns
1. **BMW Blue as decoration** — using the brand blue as a background, gradient ingredient, or decorative accent. It appears on maybe 3-5 interactive elements total.
2. **Border-radius of any kind** — even 2px radius breaks the angular identity. Zero everywhere, including focus rings (use outline-offset).
3. **Medium font weights (500-600)** — creates visual mush without enough contrast for hierarchy. Use the extremes.
4. **Shadows for depth** — no box-shadow, drop-shadow, or text-shadow. Depth from dark/white alternation only.
5. **Generic SaaS structure** — NOT hero/features/pricing/testimonials/CTA. Sections are model specs, engine blueprints, driving modes, track records, parts catalogs.
6. **Lifestyle photography** — no people in cars, no road trip scenes, no families. The machine is the subject. Engineering details only.
7. **Gradient text or gradient backgrounds** — no gradients except image overlays for text legibility.
8. **Cards or containers** — use 1px hairline borders for structure, not floating cards with shadows.

## Visual Vibe
Showroom darkness, polished carbon fiber, headlight glare on wet asphalt, precision machined aluminum, leather grain texture, clinical white spec sheets, angular geometry, monumental lightness.
Real-world references: BMW.com CI2020, Porsche Engineering microsites, DIN engineering standards, German industrial design (Braun, Dieter Rams).

## Section Archetypes
- **Model specification card**: Engine code, horsepower, 0-60, top speed, transmission, starting price — tabular data with clear labels and 1px dividers
- **Full-bleed dark photography scene**: Car photography as full-viewport background with overlaid headline + stats, showroom lighting feel
- **Driving mode comparison**: Three driving characters (Comfort/Sport/Sport+) with intensity indicators and behavioral descriptions
- **Engine blueprint spec sheet**: Technical specifications in a 2-column grid — configuration, peak power with RPM, torque, compression ratio
- **Heritage timeline**: Motorsport statistics (Le Mans victories, DTM wins, founding year) as oversized weight-300 numerals in a split layout
- **M Performance parts catalog**: Individual parts with descriptions, weight savings, and pricing, separated by 1px top borders
- **Configurator call-to-action**: Dark centered section with headline and BMW Blue primary CTA

## Hero Archetype
**Video + typography.** Full-bleed automotive video at high visibility (overlay center < 0.3 opacity) as showroom reveal — the car emerges from darkness. Overlaid with weight-300 uppercase display headline at bottom-left. WHY: BMW's product IS the car in the showroom. The video captures what stills cannot: polished metal catching light, wheels turning, headlights sweeping through darkness. The video is not atmosphere — it IS the product experience.

## Asset Direction
- **Photography**: Dark automotive photography — cars shot at night or in dark studios, headlights and tail lights as primary light sources, motion blur on wheels, wet asphalt reflections. The car is always the subject, never a person.
- **Video**: Driving footage — slow panning around vehicles in dark environments, or cars in motion on winding roads at night.
- **Data-as-visual**: Engine specs, lap times, horsepower figures, weight savings — displayed as oversized weight-300 typography.
- **What NOT to show**: No lifestyle imagery, no people, no bright daylight, no interior passenger shots. The machine is the subject.

## Typography
**Barlow** (Google Fonts, DIN-heritage geometric) — BMW uses proprietary BMWTypeNextLatin; Barlow shares the same DIN-heritage DNA: condensed proportions, industrial character, German engineering aesthetic. Weight 300 for display creates the same "whispered authority" as BMW's Light display weight. ALL display text uppercase with 0.04em letter-spacing.

## Color

| Token | Value | Meaning |
|-------|-------|---------|
| white | oklch(100% 0 0) | Primary surface — clinical white content sections |
| near-black | oklch(18% 0.005 250) | Primary text on light surfaces |
| meta-gray | oklch(51% 0 0) | Secondary text, spec labels, metadata |
| silver | oklch(77% 0 0) | Tertiary text, footer, muted elements |
| bmw-blue | oklch(48% 0.18 255) | Interactive accent ONLY — links, CTAs, focus |
| bmw-focus | oklch(40% 0.16 255) | Hover/active for blue interactive elements |
| surface-dark | oklch(8% 0.005 250) | Dark section backgrounds |
| surface-darker | oklch(5% 0.003 250) | Hero and deepest backgrounds |
| overlay-hero | black at 30% | Hero video overlay — car stays visible |
| divider-light | near-black at 12% | Hairline dividers on white surfaces |
| divider-dark | white at 12% | Hairline dividers on dark surfaces |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/bmw-performance/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing, motion, component patterns, layout grids |
| `references/asset-direction.md` | Asset sourcing: photography subjects, video direction, data-as-visual patterns, verified starter URLs |
| `https://joincommons.cc/api/items/bmw-performance/raw/anti-patterns` | 20+ domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color palette, semantic domain tokens, typography composites |
| `assets/exhibit.html` | Reference implementation — single-file exhibit with video hero, model specs, driving modes, engine blueprint, heritage, parts catalog |
| `assets/design-skill.json` | V1 manifest with coverage blueprints, component inventory, discovery metadata |

</design-system>
