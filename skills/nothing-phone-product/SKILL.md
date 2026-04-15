---
name: nothing-phone-product
description: Dark, product-centric transparent consumer tech hardware brand. Warm-tinted near-black palette (oklch hue 60), warm red-orange accent (hue 25). Syne 400-800 + JetBrains Mono. Product photography as hero visual, Glyph Interface LED simulation, 1px-gap product lineup grid, structured spec sheet, materials breakdown, design philosophy manifesto. Zero border-radius. Built for design-conscious tech enthusiasts.
metadata: design-skill
---

# Void Phone Product

<design-system>

## Identity
Void makes consumer electronics for people who refuse to carry invisible objects. Phones, earbuds, wearables -- all with transparent backs that expose circuitry, charging coils, and antenna lines. The flagship is the Phone (3a) with a 961-LED "Glyph Interface" that turns the back panel into a notification light sculpture. Users are design-conscious tech enthusiasts aged 20-35 who follow MKBHD, appreciate Dieter Rams, and buy Teenage Engineering, Analogue, and Nothing products. They see their phone as self-expression -- they pull it out and people notice. The vibe is nothing.tech (dark, product-centric, the product IS the visual) meets teenage.engineering (playful-technical, orange accents, industrial-yet-fun).

**Core principle**: The product IS the design -- transparent engineering as visual identity, with zero decoration between the viewer and the object.

**Visual vibe**: Tactile, distinctive, transparent, engineered, industrial-warm, precise, confident, editorial, hardware-forward, anti-invisible.

**Domain conventions**: Specs use exact sensor names (Sony IMX890, Samsung JN1), real chip names (Snapdragon 8 Gen 3), precise measurements (162.1 x 76.4 x 8.6mm). Battery in mAh, charge speed in watts, display in nits. LED counts are real (961, not "hundreds"). Materials are specific (Gorilla Glass 5, recycled aluminum, bio-based polyamide).

## Signature Moves
1. **Product as hero, literally**: The phone photo is centered at ~40vw width with a subtle radial accent glow behind it. No text overlay on the product. The product IS the entire visual
2. **1px-gap grids for product lineup**: Cards separated by border-color gaps, not margins. Hover fills individual cells. Control-panel feel
3. **Glyph dot-matrix simulation**: CSS dots with cascade animation on hover, simulating the real LED interface. Interactive, not decorative
4. **Zero border-radius**: Sharp rectangles everywhere. Buttons, cards, images, nav CTA. Angular like the phone's industrial design
5. **Numbered items everywhere**: Features 01-03, materials 01-04, principles 01-05. Sequential numbering implies methodology and completeness
6. **Warm dark, not cold dark**: Background hue 60 (warm) not 250 (cold). This is a physical product you hold, not software
7. **Spec cells as design content**: Technical specs in a structured grid with monospace detail lines. The spec sheet IS a section, not an afterthought
8. **Photography treatment: almost none**: Slight brightness/contrast boost only. The product is visually rich enough unfiltered

## Hard Constraints
1. Near-black warm-tinted background: page body must be `oklch(0.04 0.005 60)` -- never cold blue (hue 250), never pure black (chroma 0)
2. Warm red-orange accent `oklch(0.65 0.20 25)` for CTAs, labels, logo dot. Not neon, not fire-engine red, not cold blue
3. Syne 400-800 for all display/headings. JetBrains Mono 300-600 for specs, labels, nav, pricing. Never swap these roles
4. Zero border-radius on every element -- buttons, cards, images, nav CTA, spec cells. Not even 2px
5. Product photography must show transparent back or distinctive hardware features. No lifestyle shots, no hands, no people
6. Spec data must be real -- existing sensor names, real chip architectures, valid material names. This audience verifies
7. All neutrals tinted hue 60 (warm) -- no dead grays, no cold tints
8. Syne 800 reserved for hero headline only. Section titles use 700, card titles use 600

## Anti-Patterns
- NOT Apple-minimal (Apple hides everything; Void reveals everything)
- NOT cyberpunk/neon aesthetic (real technology through glass, not imagined futures)
- NOT Samsung generic Android marketing (carrier logos, comparison tables, trade-in calculators)
- NOT SaaS landing page template (hero-features-pricing-CTA is for software, not hardware)
- NOT lifestyle photography (no hands holding phones, no coffee shop, no desk setups)
- NOT decorated (no illustrations, patterns, gradient blobs, or abstract art around products)
- NOT friendly/cute (confident and slightly austere, like a design museum)
- NOT heavy photo filtering (no desaturation, no film grain, no vintage effects)
- NOT gradient text or gradient accents

## Section Archetypes
- **Product hero**: Single product photo dominating the viewport. Typography below, never competing. Subtle radial accent glow behind the product
- **Glyph Interface demo**: Two-column with video+dot-matrix left, numbered features right. The LED system shown as interactive element with pattern animations
- **Product lineup**: Three-column 1px-gap grid (phone, earbuds, band). Each card: image, monospace tag, title, description, price
- **Materials breakdown**: Asymmetric two-column (1.3fr/1fr) with close-up photo and numbered material callouts
- **Specification sheet**: Two-column 1px-gap grid of spec cells. Monospace labels, bold values, multi-line detail
- **Design philosophy**: Two-column split with manifesto statement/body text and numbered design principles

## Hero Archetype
Photo-typography: centered product photograph at clamp(280px-440px) with radial accent glow behind it. Below: monospace category label, Syne 800 headline, subtitle, two CTAs. No video background, no decorative overlay. The transparent phone back is visually rich enough to carry the entire hero.

## Asset Direction
- **Photography is everything**: Product shots showing transparent back, visible circuits, charging coil. Close-up edge details. Flat lays. No lifestyle, no people
- **Treatment**: Minimal -- brightness(1.05) contrast(1.05). Never desaturate, never add film grain
- **Glyph patterns**: CSS dot-matrix simulation with cascade hover animation. White dots with glow box-shadow
- **Data as visual**: Spec sheets with real sensor names, chip architectures, precise measurements in monospace grids
- **Video**: Atmospheric texture for Glyph section only, opacity 0.4, heavy filter. Not content -- environment
- **What NOT to show**: Lifestyle shots, hands holding phones, people, office/coffee shop contexts, stock device images

## Typography
- **Syne 400-800** (display + headings): Geometric with character. Distinctive letterforms give personality without being decorative. Weight 800 for hero, 700 for sections, 600 for cards. Says "this brand has a design point of view."
- **JetBrains Mono 300-600** (data + labels + nav + specs): Distinctive characters with excellent small-size legibility. Used for all specs, navigation, pricing, metadata. Says "we know you read code."

## Color
OKLCH palette with warm-tinted dark base (hue 60):
- `oklch(0.04 0.005 60)` -- page background (near-black, warm-tinted)
- `oklch(0.08 0.005 60)` -- surface (glyph section, spec sheet)
- `oklch(0.10 0.005 60)` -- card interiors, spec cells
- `oklch(0.12 0.006 60)` -- elevated/hover states
- `oklch(0.65 0.20 25)` -- accent (warm red-orange: CTAs, labels, logo dot)
- `oklch(0.55 0.14 25)` -- accent dim (hover states)
- `oklch(0.95 0.005 60)` -- primary text
- `oklch(0.68 0.008 60)` -- secondary text
- `oklch(0.42 0.006 60)` -- tertiary text (labels, metadata)
- `oklch(0.96 0.003 60)` -- glyph white (LED dot simulation)
- `oklch(0.16 0.005 60)` -- borders
- `oklch(0.12 0.004 60)` -- subtle borders

## Workflow
1. Read `https://joincommons.cc/api/items/nothing-phone-product/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/nothing-phone-product/raw/anti-patterns`

## Gotchas
1. Product photography is non-negotiable -- without real product shots, the entire design collapses. This isn't a SaaS where typography can carry a page
2. The accent is warm red-orange (oklch 0.65 0.20 25), not fire-engine red. Push chroma past 0.22 and it looks like a gaming brand
3. Specs must be real -- Snapdragon 8 Gen 3 is 4nm TSMC, Sony IMX890 is a 1/1.56" sensor, Gorilla Glass 5 exists. Inventing specs destroys credibility
4. No lifestyle photography -- a hand holding the phone or a coffee shop background makes it generic smartphone marketing
5. Zero border-radius is mandatory -- even 4px shifts the entire feel toward consumer-friendly SaaS
6. The Glyph Interface has specific features (Essential Notifications, Ringtone Composer, Progress Timer) -- don't reduce it to a decorative flourish
7. Font weight discipline: Syne 800 for hero only, 700 for sections, 600 for cards. Using 800 everywhere dilutes hierarchy

</design-system>

## Supporting Files

- `https://joincommons.cc/api/items/nothing-phone-product/raw/design-language`: canonical design language -- full OKLCH color palette, typography scale, spacing system, motion patterns, component patterns, and layout grids.
- `references/asset-direction.md`: photography direction, Glyph Interface simulation patterns, data-as-visual patterns, video direction, and verified starter assets.
- `https://joincommons.cc/api/items/nothing-phone-product/raw/anti-patterns`: domain-specific traps across visual, structural, content, and UX categories.
- `assets/tokens.dtcg.json`: DTCG-format tokens for colors, semantic tokens (glyph-white, spec/price/material tokens), and typography composites.
- `assets/exhibit.html`: reference implementation -- product hero, Glyph Interface demo, product lineup, materials breakdown, spec sheet, design philosophy, and CTA.
- `assets/design-skill.json`: manifest with V4 schema fields for Commons discovery and curation.
