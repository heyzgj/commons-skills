---
name: holographic-glass-store
description: A digital product storefront rendered as a crystal prism. Animated prismatic conic-gradient borders on transparent glass cards, spectral multi-hue box-shadows, tilt-shift 3D hover, light-band section dividers. Rainbow lives exclusively on edges and borders. Crystal-cool OKLCH near-white base, Syne + Lexend + IBM Plex Mono.
---

# Holographic Glass Store

## What This Skill Does

Provides a complete design system for building a digital product storefront that feels like browsing inside a crystal prism. The store IS a hologram — every surface refracts spectral light on its edges, cards are genuine glass panes you can see through, and hovering triggers perspective shifts like tilting a holographic trading card. Rainbow lives on borders and edges, never flooding surfaces.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/holographic-glass-store/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Digital product storefronts, template marketplaces, design asset directories
- Indie maker shops and curated creative tool catalogs
- Premium download stores where packaging matters as much as content
- Creative product landing pages targeting design-forward audiences
- Any storefront where the aesthetic IS the brand differentiator

## When not to use

- Dark-mode applications (prismatic glass requires a crystal-clear light base)
- Photography-heavy e-commerce (physical products need photos, not CSS effects)
- Content-heavy blogs or documentation sites
- SaaS dashboards or data-dense enterprise tools
- Products requiring warm or neutral color tones (this is crystal-cool only)

## Default Workflow

1. **Read `https://joincommons.cc/api/items/holographic-glass-store/raw/design-language`** — internalize the crystal glass surface formulas, prismatic gradient definitions, spectral shadow system, tilt-shift hover pattern, and light band divider conventions.
2. **Read `tokens.dtcg.json`** — extract concrete OKLCH values for the base palette, prismatic spectrum stops, glass opacity levels, font assignments, animation timing, and easing curves.
3. **Build** — structure: prismatic background field (3 radial-gradient ellipses fixed) → grain overlay → sticky nav with glass bg → hero (asymmetric grid, spectral heading, CSS prism with spectrum rays) → light band divider → product sections (asymmetric grids, glass cards with prismatic borders + spectral shadows + tilt-shift hover) → maker profiles → pricing tiers (Pro card with prismatic glow halo) → reviews → footer. All text in cool neutral except spectral headings.
4. **Self-critique against `https://joincommons.cc/api/items/holographic-glass-store/raw/anti-patterns`** — verify rainbow on edges only, glass genuinely transparent, spectral shadows not gray, tilt-shift hover not plain lift, no 3-equal-card grids, body text stays neutral.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/holographic-glass-store/raw/design-language` | Full design language — colors, typography, layout, motion, components, states, accessibility |
| `https://joincommons.cc/api/items/holographic-glass-store/raw/design-language` | Detailed visual system with glass surface formulas, prismatic gradient specs, spectral shadow patterns |
| `https://joincommons.cc/api/items/holographic-glass-store/raw/image-kit` | Photography guidance (no photos — prismatic CSS IS the visual) |
| `https://joincommons.cc/api/items/holographic-glass-store/raw/anti-patterns` | Topic-specific failure modes + self-critique protocol |
| `tokens.dtcg.json` | DTCG tokens: OKLCH colors, glass values, prismatic spectrum stops, fonts, animation timing |
| `exhibit.html` | Proof surface — complete storefront with 8 products, 3 makers, pricing, reviews |

## Output Expectations

A single-page HTML storefront that feels like browsing products inside a crystal. Specifically:
- Crystal-cool near-white base (`oklch(0.97 0.005 250)`), never warm or cream
- Glass cards at 7% opacity with 30px backdrop-filter blur — see-through
- Animated prismatic conic-gradient borders via mask-composite on card `::before`
- Spectral multi-hue box-shadows (3 spectrum colors), no gray shadows
- Tilt-shift hover with `perspective(800px) rotateY(2deg) rotateX(1deg)`
- Light band dividers (2px full-spectrum gradient with shimmer + pulse)
- Spectral text (conic-gradient + background-clip: text) on headings ONLY
- Body text in cool neutral oklch, never spectral
- SVG feTurbulence grain at 0.02 opacity
- `prefers-reduced-motion` fallback disabling all animations and transforms

## Reuse and Adaptation Guidance

**Safe to adapt:** Product names and prices, creator profiles, review quotes, pricing tiers, section ordering, number of products, grid column ratios (keep asymmetric).

**Adapt with care:** Glass opacity (0.05-0.12 range — lower = more transparent), blur radius (24-36px — lower = sharper glass), animation durations (keep ambient loops 8s+), card padding (keep generous 24-36px), prismatic gradient chroma (0.10-0.20 range).

**Do not change:** The prismatic-on-edges-only rule, the crystal-cool base hue (250-260), the three-font assignment (Syne/Lexend/IBM Plex Mono), the spectral shadow system (3 spectrum hues, never gray), the tilt-shift hover (must include perspective rotation), the mask-composite border technique.

## Non-negotiables

- Rainbow MUST live on edges/borders only — never on surface fills
- Card opacity MUST be 0.07 or lower — glass is transparent, not frosted plastic
- All shadows MUST use 3+ spectrum hues — zero gray shadows ever
- Hover MUST include perspective rotation — not just translateY lift
- Base MUST be crystal-cool near-white (oklch L ~0.97, hue ~250)
- Body text stays cool neutral — spectral treatment on headings ONLY
- Fonts: Syne (display 600-800), Lexend (body 300-500), IBM Plex Mono (data 400-500)

## Common Failure Modes

1. **Rainbow gradient fills.** Rainbow on a card background or section background = Technicolor chaos. It MUST live on the 1.5px border edge, divider bands, and heading text only.
2. **Opaque "glass" cards.** At 50%+ opacity, glass becomes plastic. The prismatic background field must be visible through every card. Keep it at 7%.
3. **Gray drop shadows.** `rgba(0,0,0,0.1)` shadow on a crystal surface looks dirty. Use spectral multi-hue shadows in oklch at low opacity.
4. **Plain hover lift.** `translateY(-4px)` alone is generic. The holographic tilt requires `perspective(800px) rotateY(2deg) rotateX(1deg)` combined with shadow intensification.
5. **Warm or neutral base.** Cream, beige, or warm white kills the crystal illusion. The base must be cool-tinted with blue-violet hue 250.
6. **Spectral body text.** Shimmering body copy is unreadable and gaudy. Only display headings get the conic-gradient + background-clip treatment.
7. **Equal-column grids.** Every product section should use different asymmetric column ratios to prevent template feel.
