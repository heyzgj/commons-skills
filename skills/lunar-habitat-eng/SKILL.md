---
name: lunar-habitat-eng
description: Aerospace engineering aesthetic for lunar habitat construction using in-situ resource utilization. Regolith-tinted dark palette, Instrument Serif + Geist Mono, NASA photography hero, engineering data tables, structural test grids, mission timeline, mass economics. spacex.com scale meets jpl.nasa.gov precision.
---

<design-system>

## Identity
Artemis Structures builds habitats for permanent human presence on the Moon by sintering regolith into structural bricks using in-situ resource utilization (ISRU). The design communicates engineering confidence through real data -- composition tables, structural test results, sintering parameters, mission timelines -- presented with the austere beauty of the lunar surface itself.

**Target users**: Space agency mission planners (NASA Artemis, ESA Moon Village), aerospace prime contractors (Lockheed Martin, Northrop Grumman), private lunar economy companies (SpaceX, Blue Origin, ispace). They evaluate structural solutions by material specifications, mission mass budgets, and TRL levels. They read test reports, not marketing copy.

**Vibe**: spacex.com (cinematic scale, engineering confidence, images do the talking) meets jpl.nasa.gov (scientific authority, mission-grade data precision)

**Domain conventions**: TRL levels (1-9), NASA STD-5001B structural requirements, regolith composition in weight-percent oxides, sintering temperatures in Celsius, compressive strength in MPa, radiation dosage in mSv/yr, mission phases with real year ranges

**Core principle**: The engineering is the spectacle -- real structural data, real mineral compositions, real mission timelines presented with the gravity of building on another world.

**Visual vibe**: Vast, silent, silver-gray, precise, monumental, scientific, cinematic, austere, confident, lunar

## Signature Moves
1. **NASA lunar photography as full-bleed hero** -- the surface they're building on IS the dominant visual. Dimmed to 50%, gradient overlay, serif heading at bottom-left.
2. **Data tables as primary visual content** -- composition tables, test result grids, sintering parameters. Aerospace buyers read specs first. Data IS the design.
3. **Serif display + monospace data contrast** -- Instrument Serif for editorial gravitas, Geist Mono for mission-control precision. The font switch signals "reading mode" vs. "data mode."
4. **1px gap grids** -- stat bar and process pipeline use 1px gap with background showing through, creating hairline separators that feel like instrument panels.
5. **Regolith-tinted neutrals (hue 75-80)** -- every surface carries a whisper of warm lunar soil color, so the palette feels material rather than generic dark mode.
6. **Oversized serif step numerals** -- 01/02/03/04 at 3-4.5rem in surface-dust color, barely visible monumental background anchors.
7. **Radiation comparison with semantic color coding** -- three bars (unshielded/1m wall/2m sintered) with danger/caution/safe colors tell the shielding story at a glance.
8. **TRL badge in navigation + ITAR notice in footer** -- real aerospace domain markers that signal authenticity to mission planners.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L < 0.20, hue 75-80 (warm regolith-tinted).
2. Instrument Serif for display. Libre Franklin for body. Geist Mono for all engineering data (oxide formulas, test values, TRL badges, spec parameters).
3. Accent colors carry semantic meaning: amber (75) = mission-active, steel blue (210) = engineering data, green (145) = structural pass, yellow (60) = caution. Never decorative.
4. All engineering data must be realistic -- real regolith compositions, plausible structural test results, authentic NASA terminology.
5. Zero border-radius on all rectangular elements. Only circles for timeline phase dots.
6. No ambient animation -- the lunar surface is perfectly still. Entrance reveals only.
7. NASA/Apollo photography only for photo assets. No CGI renders, no artist impressions, no sci-fi imagery.

## Anti-Patterns
- NOT a sci-fi movie poster -- no glowing blue structures, ringed planets, nebula backgrounds, or dramatic lens flares
- NOT dark-mode-neon with cyan accents -- aerospace is amber and steel blue with semantic meaning, not cyberpunk
- NOT a startup landing page -- no gradient CTAs, no "Join the waitlist," no hero-features-pricing-CTA flow
- NOT decoration-heavy -- no glassmorphism, no gradient text, no glow effects. The Moon is vast and empty.
- NOT consumer-friendly language -- don't simplify "uniaxial compression" to "how strong it is." The audience ARE the experts.
- NOT soft or curved edges -- sharp 0px radius communicates precision and instrumentation
- NOT animated backgrounds -- no floating particles, no star field animations. The Moon is still.

## Section Archetypes
- **Material composition table**: Regolith oxide percentages (SiO2, Al2O3, FeO...) with inline bar visualizations
- **Sintering parameters card**: Temperature, hold duration, ramp rate, atmosphere, compaction pressure, grain size, energy source
- **ISRU process pipeline**: 4-stage grid: Excavation -> Beneficiation -> Sintering -> Fabrication with throughput specs
- **Structural test results**: 4-column grid: test case / measured result / threshold / pass-fail status badge
- **Radiation shielding comparison**: Horizontal bars comparing unshielded/1m wall/2m sintered/ISS reference with dose values
- **Mission timeline**: Vertical timeline with completed/active/future phases, year ranges, TRL targets
- **Mass economics**: Scale bar visualization comparing earth-launch ($120B) vs ISRU ($6.8B) + production unit specs

## Hero Archetype
Photo-typography. A real NASA/Apollo lunar surface photograph as the dominant visual -- full-bleed, `brightness(0.5) contrast(1.1)`, gradient overlay from surface-void at bottom to transparent at top. One oversized italic serif heading at bottom-left with mono eyebrow label. The photograph IS the product context (they're building on that surface). No video -- the stillness of the lunar landscape is the point.

## Typography
- **Instrument Serif** (display) -- editorial gravitas without pretension. Italic adds cinematic quality to the hero. Serif communicates institutional authority (NASA mission patches, JPL reports).
- **Libre Franklin** (body) -- clean, slightly humanist sans-serif. Lightweight (300) for body text creates space and calm. Not as cold as a pure geometric sans.
- **Geist Mono** (data) -- all engineering data: oxide formulas, test values, TRL badges, spec parameters, navigation. Monospace is correct for tabular data and technical notation.

## Color
All OKLCH. Dark mode only. Surfaces warm-tinted (hue 75-80, the color of lunar regolith). Void `oklch(0.08 0.005 80)`, Regolith `oklch(0.12 0.008 80)`, Dust `oklch(0.16 0.01 75)`. Semantic accents: Mission amber `oklch(0.72 0.12 75)`, Spec blue `oklch(0.65 0.08 210)`, Structural pass `oklch(0.70 0.14 145)`, Caution `oklch(0.75 0.15 60)`. All neutrals carry trace chroma at hue 75-80 -- no pure grays.

## Supporting Files
- `https://joincommons.cc/api/items/lunar-habitat-eng/raw/design-language` -- full OKLCH palette, type scale, spacing system, motion patterns, component library
- `references/asset-direction.md` -- NASA photography sourcing, data-as-visual patterns, what NOT to show
- `https://joincommons.cc/api/items/lunar-habitat-eng/raw/anti-patterns` -- detailed visual, structural, content, and UX anti-patterns for the aerospace domain
- `assets/tokens.dtcg.json` -- DTCG tokens with semantic domain tokens (mission-active, engineering-data, structural-pass, radiation-danger)
- `assets/exhibit.html` -- reference implementation: 39KB self-contained landing page with composition table, ISRU process pipeline, structural test grid, radiation comparison, mission timeline, mass economics
- `assets/design-skill.json` -- manifest with V4 discovery fields

## Workflow
1. Read `https://joincommons.cc/api/items/lunar-habitat-eng/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography sourcing and data presentation patterns
3. Build data-first: composition tables, test results, process specs before any decorative elements
4. Every page type (technology overview, mission briefing, partner page, publications) should feel like the same engineering organization
5. Self-critique against `https://joincommons.cc/api/items/lunar-habitat-eng/raw/anti-patterns`

## Gotchas
- **Don't invent data** -- use real regolith compositions, real structural test standards, real mission dates. Aerospace professionals spot fake numbers instantly.
- **Don't skip units** -- every value needs units: 34.2 MPa, 1,100 C, 380 mSv/yr. Units are as important as numbers.
- **Don't add color for visual interest** -- amber and blue have specific semantic roles. Using them decoratively breaks meaning.
- **Don't add ambient motion** -- entrance reveals only. No particles, no kinetic backgrounds. The Moon is still.
- **Don't scale down data on mobile** -- simplify columns rather than shrink text below 12px. The data must remain readable.

</design-system>
