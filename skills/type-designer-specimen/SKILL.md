---
name: type-designer-specimen
description: A type specimen website for an independent type designer's serif family (18 styles, 3 optical sizes). The typeface IS the entire visual -- no photography, no illustration. Every section tests the font at a different scale and context. Warm parchment palette (OKLCH hue 75), Cormorant Garamond + Literata + JetBrains Mono, zero border-radius. Built for creative directors evaluating a $200-2,000 typeface purchase.
metadata: design-skill
---

# Strale Type Specimen

<design-system>

## Identity

A warm, restrained type specimen for an independent Swedish type designer's premium serif family. This is not a portfolio or a marketing page -- it is a precision evaluation tool where every section exists to TEST the typeface at a different scale and context. Creative directors and design leads visit to compare weights, check kerning, evaluate OpenType features, and assess readability before committing $200-2,000 on a license. The aesthetic draws from klim.co.nz (type IS the entire page) meets grillitype.com (Swiss precision, austere warmth). Warm parchment surfaces simulate high-quality uncoated paper stock. The typeface IS the only visual content -- zero photography, zero illustration. The letterforms provide all richness.

## Core Design Language

- **Colors**: Warm parchment OKLCH palette (all neutrals tinted hue 75). Page surface `oklch(0.97 0.008 75)`, alternate sections `oklch(0.94 0.012 75)`, dark sections `oklch(0.14 0.008 75)`, primary text `oklch(0.16 0.012 75)`, secondary text `oklch(0.42 0.015 75)`, single accent amber `oklch(0.62 0.12 55)` for OpenType feature tags only.
- **Typography**: Cormorant Garamond 300-700 (Display optical size stand-in) for specimens and headlines. Literata 300-700 (Text/Caption stand-in) for reading tests and body. JetBrains Mono 400-500 for all technical metadata (size labels, Unicode codes, kern values, feature tags). Fluid display type via clamp(), fixed body sizes.
- **Spacing**: 4pt base system (4, 8, 16, 24, 48, 80, 120px). Section padding 120px vertical desktop, 80px mobile. Component gaps 16-24px.
- **Radius**: Zero everywhere. No border-radius. Type specimens are precision instruments -- rounded corners would introduce visual softness inappropriate for evaluation.
- **Motion**: Subtle entrance reveals only (600ms fadeUp with ease-out-expo on section intersection). Hover transitions 200ms ease-out-quart. No animation on type -- letterforms must be evaluatable at rest. Reduced motion supported.

## Signature Moves

1. **Giant glyph hero at 40vw+**: "Rg" fills the viewport. R shows curve quality and stroke contrast, g shows terminal style and counter shape. The two letters demonstrate more about the typeface than any hero image could.
2. **Waterfall with optical size transitions**: The waterfall visibly shifts from Display (Cormorant Garamond at 96-36px) to Text (Literata at 14-12px) to Caption (Literata at 10px) -- demonstrating how the family's optical corrections work across sizes.
3. **Contextual test panels as product demos**: Magazine editorial (drop cap + byline), UI components (buttons + inputs + labels), data tables (tabular figures), and caption tests (12/10/8px) prove the font works in real contexts, not just specimen isolation.
4. **Kerning pairs with numerical kern values**: "AV -85", "To -72", "Wa -68" -- creative directors want to SEE the kern quality quantified. This communicates professional attention to detail.
5. **Character map on dark background with Unicode codepoints**: 680+ glyphs in a dense auto-fill grid, each with its U+XXXX code. This IS the product inventory, displayed as a beautiful grid.
6. **Alternating warm/dark sections**: Tests the typeface against both warm parchment (light) and near-black (dark) surfaces, proving it works on paper and screen.
7. **1px border grids with zero shadows**: All multi-item layouts (alphabet, weights, OpenType, licensing, kerning, charmap) use shared 1px solid borders creating a precise, architectural grid. Never card shadows.
8. **Mono metadata layer**: JetBrains Mono at 0.625-0.6875rem for all technical annotations, creating a clear visual separation between the typeface being evaluated and the measurement apparatus.

## Hard Constraints

- Never add photography, illustration, or decorative elements -- the typeface IS the entire visual
- Never use border-radius -- zero everywhere, precision grid only
- Never use shadows -- depth comes from surface color alternation and 1px borders
- Never use pure black (#000) or pure white (#fff) -- all values warm-tinted toward hue 75
- Primary text must be `oklch(0.16 0.012 75)` -- warm near-black, never cold
- Page surface must be `oklch(0.97 0.008 75)` -- warm parchment, never cool white
- The only non-neutral color is the accent amber `oklch(0.62 0.12 55)` for feature tags
- Data tables must use `font-variant-numeric: tabular-nums` -- misaligned numbers are unacceptable
- Waterfall size labels must be exact pixel values (96px, 72px, 48px...)
- Kern values must be plausible negative units (-30 to -90 range)
- Section headers always use the pattern: mono number (left) + uppercase tracked title (right) + bottom border

## Anti-Patterns

- **SaaS landing page structure** (Hero/Features/Pricing/CTA) -- this is an evaluation tool with specimen-native sections
- **Dark mode as default** -- type specimens need warm paper surfaces for reading tests; dark sections complement but never dominate
- **Photography of studios, designers, or letterpress** -- cliched and competes with the letterforms
- **Marketing copy or testimonials** -- the specimen demonstrates, never persuades; zero "trusted by" or "revolutionary"
- **Gradient text or glow effects** -- letterforms must be evaluated for their inherent stroke quality, unadorned
- **Font marketplace UI** (star ratings, "similar fonts", comparison shopping) -- this is one designer's one family, intimate and focused
- **Auto-playing type animations** (morphing weights, scrolljacking transforms) -- prevents careful study
- **Rounded corners or card-based layouts** -- contradicts the precision grid aesthetic
- **Colored section backgrounds** (blue, green, coral) -- only warm parchment and near-black; color distracts from the type

</design-system>

## Supporting Files

- Read `https://joincommons.cc/api/items/type-designer-specimen/raw/design-language` for the full visual system (typography scale, color palette, spacing, motion, component patterns)
- Read `references/asset-direction.md` for typography-as-art direction and data-as-visual patterns
- Read `https://joincommons.cc/api/items/type-designer-specimen/raw/anti-patterns` for domain-specific traps to avoid
- Load `assets/tokens.dtcg.json` when generating code tokens (includes semantic metrics diagram colors)
- Inspect `assets/exhibit.html` as the reference implementation
