---
name: kinetic-editorial-agency
description: Cinematic creative agency landing page with oversized Instrument Serif headlines in mix-blend-mode difference over full-bleed photography, scroll-driven stagger reveals, parallax depth layering, 70vh breather sections, and a warm-white editorial canvas.
---

# Kinetic Editorial Agency

## What This Skill Does

Produces a creative agency landing page that treats every viewport as a cinematic frame. Full-bleed photography fills the hero at 100vh, oversized Instrument Serif headlines crash across images in `mix-blend-mode: difference`, and content staggers into view with choreographed timing via IntersectionObserver. The page alternates between dense editorial sections and 70vh breather voids. Typography is split between Instrument Serif (display), Inter at weight 300 (body), and Space Mono (metadata). The palette is near-monochrome warm-white — photography provides all chromatic variety.

## When to use

- Creative agency landing page
- Brand studio portfolio
- Design consultancy homepage
- Motion studio showcase
- Independent creative director site
- Cultural institution project page

## When not to use

- SaaS product landing pages needing feature cards and pricing
- E-commerce storefronts needing product grids and cart
- Data-heavy dashboards needing tables and charts
- Documentation sites needing sidebar navigation
- Personal blogs needing reading-optimized typography

## Default Workflow

1. Read `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/design-language` to internalize the 8 OKLCH color tokens, three-font system, section pacing rules, scroll-reveal vocabulary, and all implementation invariants.
2. Read `tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Read `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/image-kit` for verified Unsplash URLs and photography placement rules.
4. Build the page: full-bleed hero with blend-mode type, breather section, editorial project flow, full-bleed image break, philosophy, ruled services list, text client logos, contact CTA, footer.
5. Inspect `exhibit.html` as the proof surface if any detail is ambiguous.
6. Self-critique against the non-negotiables and `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/anti-patterns` before shipping.

## Supporting Files

- `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/design-language`: Full design language with color system, typography scale, pattern rules, component states, adaptive behavior, motion system, accessibility requirements, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font families/weights, spacing scale, easing curves, and animation durations.
- `exhibit.html`: Proof surface showing the complete system under real agency homepage pressure.

## Supporting References

- `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/design-language`: Extended design system documentation with detailed per-section layout specifications.
- `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/image-kit`: Verified Unsplash URLs with placement rules and photography direction guidance.
- `https://joincommons.cc/api/items/kinetic-editorial-agency/raw/anti-patterns`: Eight topic-specific failure modes, AI slop checklist, and self-critique protocol.

## Output Expectations

A single-page HTML agency homepage with:
- Full-bleed 100vh hero with `mix-blend-mode: difference` serif type, parallax, and scroll cue
- Navigation hidden by default, revealed via IntersectionObserver after scrolling past hero
- 70vh breather section with single italic serif statement
- 3-4 projects in editorial flow (alternating image/content sides, ruled dividers, not card grid)
- Full-bleed 80vh image break with blend-mode overlay text
- Philosophy section (2-column on desktop: serif statement left, body right)
- Ruled services list on warm canvas background (serif name + mono descriptor, hover indent)
- Text-based client logos in serif, centered flex-wrap
- Massive display heading CTA with italic accent word
- Staggered scroll reveals with 100ms timing offsets via IntersectionObserver
- Full responsive behavior (mobile single-column, desktop 2-column projects/philosophy)
- Complete `prefers-reduced-motion: reduce` support

## Reuse and Adaptation Guidance

Photography should be replaced with actual project work when adapting for a real agency. Maintain full-bleed aspect ratios and ensure sufficient tonal contrast for blend-mode overlays. The three-font system (Instrument Serif / Inter / Space Mono) is the design identity and should not be substituted. When adapting for a studio portfolio, remove services and client sections, expand project descriptions, but keep the editorial flow pattern with alternating sides and ruled dividers.

## Non-negotiables

1. Hero fills 100vh with zero visible UI chrome above the fold.
2. At least one headline uses `mix-blend-mode: difference` over photography.
3. Scroll reveals must be staggered (100ms steps), never simultaneous.
4. At least two sections use full-bleed photography.
5. No card grids — content flows editorially with ruled dividers.
6. Body text: Inter weight 300. Never 400.
7. Navigation hidden until hero exits viewport.
8. At least one 70vh+ breather section between content blocks.

## Common Failure Modes

1. Placing projects in a card grid or thumbnail gallery — this destroys the editorial DNA.
2. Showing a navbar over the hero image — this kills the cinematic first impression.
3. Using gradient overlays instead of `mix-blend-mode: difference` — gradients are a SaaS pattern.
4. Making all sections the same height or padding — without pacing variation, the page feels corporate.
5. Using Inter weight 400 for body text — this loses the editorial lightness that distinguishes the design.
6. Adding feature cards with icons for services — this is an agency, not a SaaS product.
7. Using dark mode with neon accents — this design is light editorial by conviction.
8. Allowing all scroll reveals to fire simultaneously — the stagger choreography is the point.
