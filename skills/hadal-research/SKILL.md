---
name: hadal-research
slug: hadal-research
description: Deep-sea exploration and oceanographic research institute. Cold navy backgrounds with bioluminescent cyan accents, scientific data density, depth-descent narrative structure, and real marine biology taxonomy. Instrument Sans display + IBM Plex Mono data readouts.
metadata: design-skill
---

# Hadal Research Institute

<design-system>

## Identity

### Product World
- **Who**: Marine biologists studying extremophiles, oceanographers mapping bathymetric data, documentary filmmakers capturing deep-sea footage, environmental scientists tracking deep-sea pollution. They use CTD rosettes, multibeam sonar, ROV telemetry feeds. They care about data accuracy, species taxonomy, and peer-reviewed credibility. They hate sensationalized "sea monster" framing and inaccurate depth data.
- **What**: Deep-sea exploration and oceanographic research institute operating ROVs to 11,000m depth
- **Vibe**: NOAA Ocean Explorer meets Bloomberg Terminal -- scientific rigor wrapped in the cold alien beauty of the deep ocean
- **Domain conventions**: Metric depths in meters, pressure in atmospheres, temperatures in Celsius, species in binomial Latin nomenclature, expedition dates in ISO-adjacent format (YYYY.MM.DD), oxygen saturation in ml/L, salinity in PSU

### Core Principle
The interface descends with you -- the deeper you scroll, the deeper you go, and the design grows darker, denser, and more alien.

### Visual Vibe
Abyssal, bioluminescent, cold, scientific, pressurized, alien, precise, vast, dark-adapted, data-rich

### Typography
**Instrument Sans** (display/body): Clean, geometric, slightly narrow -- evokes scientific instrumentation and precision without being cold or sterile. Weights 400-700.

**IBM Plex Mono** (data/labels): The standard for scientific and technical readouts. Tabular figures for aligned data columns. Weights 400-600. Used for depth counters, environmental readings, timestamps, spec tables.

### Color
All OKLCH, all COOL (hue 200-245):
- **Abyss** `oklch(0.08 0.03 235)` -- deepest background, like 11,000m darkness
- **Deep** `oklch(0.11 0.035 240)` -- elevated surfaces, dashboard backgrounds
- **Surface** `oklch(0.12 0.03 240)` -- card backgrounds
- **Twilight** `oklch(0.18 0.025 235)` -- subtle depth labels, zone markers
- **Cyan glow** `oklch(0.78 0.16 200)` -- bioluminescent primary accent, active states, CTAs
- **Cyan dim** `oklch(0.55 0.1 200)` -- secondary accent, data values, timeline dots
- **Teal accent** `oklch(0.72 0.14 175)` -- operational status "active", positive indicators
- **Pressure blue** `oklch(0.45 0.1 245)` -- mid-depth surfaces, depth zone fills
- **Warning amber** `oklch(0.72 0.15 75)` -- maintenance status, the ONLY warm tone (emergency signaling)
- **Text primary** `oklch(0.93 0.015 230)` -- blue-tinted near-white
- **Text secondary** `oklch(0.72 0.02 235)` -- descriptions, body copy
- **Text tertiary** `oklch(0.52 0.02 240)` -- labels, timestamps
- **Text faint** `oklch(0.38 0.015 240)` -- monospace labels, column headers

### Section Archetypes
- **Depth zone profile**: Environmental readings (temp, pressure, light, O2) + organism data cards for a specific ocean layer
- **Expedition log**: Timeline of research missions with dates, ROV assignments, and findings
- **Species database**: Organism cards with Latin binomial, depth range, size, bioluminescence type
- **ROV fleet status**: Vehicle cards with operational status (deployed/maintenance/transit), specs, and capability data
- **Live telemetry dashboard**: Real-time operational metrics -- active ROVs, dive hours, samples collected
- **Depth visualization**: Horizontal bar chart showing ocean zones from epipelagic to hadal
- **Photo break with quote**: Full-bleed underwater photography with scientist attribution

### Hero Archetype
**Video-typography**: Dark underwater video as full-bleed background at high opacity (0.6+). The ocean's darkness IS the design -- the video should be dark, blue, showing bioluminescent organisms drifting through black water. Typography overlaid with a bottom-heavy gradient that lets the video breathe at top while ensuring text readability at bottom. Depth counter animates from 0 to 10,928m.

### Asset Direction
- **Photography**: Dark underwater shots -- jellyfish, deep-sea creatures, ROV operations. Cool blue dominant color. Avoid tropical reef photography (too warm, too bright).
- **Video**: Dark bioluminescent footage -- organisms drifting in black water. Video darkness matches the site background so it bleeds seamlessly into the design.
- **Data-as-visual**: Environmental readings are the strongest visual -- "1,086 atm" pressure, "0.00% light" in midnight zone, species data with Latin names.
- **Typography-as-art**: Oversized depth numbers (64px+) as section anchors -- "200m", "1,000m", "11,034m"
- **What NOT to show**: Tropical fish, coral reefs, beach scenes, scuba divers in shallow water, cartoon sea creatures

## Signature Moves

1. **Scroll-driven depth counter**: Navigation shows current "depth" based on scroll position -- 0m at top, 11,034m at bottom
2. **Descent narrative structure**: Page organized by ocean depth zones (200m to 1,000m to 11,034m), not by content type
3. **Oversized depth numbers as section anchors**: 64px monospace numbers ("11,034m") serve as both data and typography-as-art
4. **Environmental readings grid**: 1px-gap grid cells with dark backgrounds create a telemetry console feel
5. **ROV status with live pulse**: Active ROVs get a pulsing teal dot with glow shadow -- the only animated accent
6. **Zero warm colors**: The ONLY warm tone is amber for maintenance/warning status -- everything else is hue 175-245
7. **Photo breaks as depth transitions**: Full-bleed underwater photography between zones, with scientist quotes
8. **Monospace data density**: IBM Plex Mono for ALL data -- species taxonomy, depth ranges, environmental readings -- creating a research instrument aesthetic

## Hard Constraints

1. Background must be `oklch(0.08 0.03 235)` (blue-tinted near-black), NEVER pure black or warm-tinted dark
2. ALL neutrals must be cool-tinted: hue 220-250, chroma 0.01-0.03. Zero pure grays, zero warm grays
3. Warning amber `oklch(0.72 0.15 75)` is the ONLY warm color -- used exclusively for maintenance/warning status
4. Species names must use correct Latin binomial nomenclature -- no invented organism names
5. Pressure values must be consistent: ~1 atm per 10m depth. 11,000m = ~1,100 atm
6. Ocean zone boundaries must be accurate: epipelagic 0-200m, mesopelagic 200-1000m, bathypelagic 1000-4000m, abyssopelagic 4000-6000m, hadal 6000-11000m
7. Border radius: 2-3px cards and images. Scientific precision, not rounded warmth
8. All underwater photography must be filtered cool: `saturate(0.8-0.85) brightness(0.85-0.95)`
9. Instrument Sans + IBM Plex Mono only -- no Inter, no Roboto, no system defaults
10. Video hero must be clearly visible (0.6+ effective opacity) -- the ocean darkness IS the design

## Anti-Patterns

### Visual
- NOT warm in any way -- no cream, amber, beige, coral anywhere except maintenance status
- NOT tropical or shallow-water ocean -- no turquoise, coral reefs, bright underwater scenes
- NOT neon sci-fi -- bioluminescence is subtle and organic, not Tron or cyberpunk
- NOT glassmorphism -- scientific instruments have solid surfaces with clear data
- NOT gradient text -- depth numbers and metrics must be solid color for scientific credibility

### Structural
- NOT a SaaS landing page -- no hero/features/pricing/testimonials/CTA conversion funnel
- NOT a magazine feature -- data density matters more than editorial whitespace
- NOT uniform card grids -- each data type (organisms, ROVs, readings) has its own density
- NOT a single-section page -- depth narrative requires distinct zones that feel progressively deeper

### Content
- NOT made-up species -- "Architeuthis dux" is real; "Luminaris phantasma" destroys credibility
- NOT hand-wavy about pressure -- wrong depth/pressure relationships are instantly noticeable
- NOT inspirational ocean copy -- "the sea is calling" is tourism; use specific data points
- NOT mixing ocean zone names -- zones have specific names and depth ranges, no invention

### UX
- NOT playful or gamified -- no achievement badges, no discovery popups; delight comes from data precision
- NOT hiding data behind interactions -- scientists want information visible immediately
- NOT using video as invisible wallpaper -- underwater footage must be clearly visible
- NOT using bounce easing -- deep-sea organisms drift smoothly; exponential ease-out only

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/hadal-research/raw/design-language` | Complete visual system: full OKLCH palette, typography scale, spacing, motion, component patterns, layout grids |
| `references/asset-direction.md` | Photography direction, data-as-visual patterns, video treatment, verified starter assets |
| `https://joincommons.cc/api/items/hadal-research/raw/anti-patterns` | Detailed domain-specific traps across visual, structural, content, and UX dimensions |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (depth-zone, rov-status, data-metric), typography |
| `assets/exhibit.html` | Reference implementation -- self-contained HTML with depth zones, expedition timeline, ROV fleet, species database |
| `assets/design-skill.json` | V4 manifest with section archetypes, style signatures, coverage blueprints |

## Workflow
1. Read `https://joincommons.cc/api/items/hadal-research/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/hadal-research/raw/anti-patterns`

## Gotchas
1. **Color temperature drift**: LLMs default to warm. Every neutral MUST be cool-tinted (hue 220-250). If any background looks creamy, it's wrong.
2. **Tropical ocean confusion**: "Ocean" triggers turquoise/tropical associations. This is the DEEP ocean -- dark navy, near-black, bioluminescent blue-cyan.
3. **Fake species data**: Real organism names with correct Latin binomial nomenclature only. Marine biologists will notice.
4. **Pressure miscalculation**: ~1 atm per 10m. At 11,000m that's ~1,100 atm. Wrong math destroys scientific credibility.
5. **Generic ocean content**: Use specific data -- "76% of organisms at 200m produce bioluminescence." Numbers and specificity signal credibility.
6. **Bright photography**: Any photo that's brightly lit or shows shallow water breaks the deep-sea immersion. Filter toward cool/dark.

</design-system>
