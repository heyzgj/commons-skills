---
name: type-foundry-specimen
description: Independent type foundry specimen page. Warm cream ground, enormous glyph hero, cascading size tests, weight spectrum grid, paragraph setting with roman/italic comparison, OpenType feature demonstrations, interactive type tester, glyph map, technical specifications, and structured license tiers. Three-font system — Fraunces (specimen display), Instrument Sans (UI/meta), IBM Plex Mono (specs/data). Zero images. The typeface IS the visual.
metadata: design-skill
---

# Type Foundry Specimen

<design-system>

## Identity
A testing ground for professional type evaluation. Every pixel exists to prove the typeface works — at poster scale, at body copy, at micro captions, in every weight, in every language. The design language is warm-paper editorial severity: cream ground, 1px structural borders, zero radius, monospace annotations alongside serif specimens. This is a tool for art directors, not a marketing page for consumers.

## Product World
- **Who**: Art directors and brand designers choosing typefaces for high-profile projects — museum identities, luxury packaging, editorial publications. They evaluate fonts by testing them at every size, in every context. They'll spend 30 minutes on a specimen page before buying an €800 license. They use InDesign, Figma, and Illustrator daily. They care about kerning, hinting, and OpenType features. They hate marketing speak, fake specimens, and any foundry that shows the typeface at only one size.
- **What**: A type specimen page that lets professionals test-drive a typeface across every possible use case — display, headline, body, caption, micro. The specimen doesn't sell. It proves.
- **Vibe**: commercialtype.com (restrained authority, the type speaks for itself) meets klim.co.nz (comprehensive testing, every weight at every size). Clean, warm, paper-like.
- **Domain conventions**: Optical sizes (Display 72pt+, Text 12-24pt, Micro <10pt). OpenType feature tags (onum, tnum, smcp, frac, case, ss01). Glyph counts (684+). Language support expressed as script coverage. License tiers by use case (Desktop, Web, App, Enterprise). Variable font axes (wght, opsz). File formats (OTF, WOFF2, Variable).

## Core Principle
The typeface IS the content. Every section exists to answer a specific question: "Can this font carry a poster? A novel? A mobile app? A data table?"

## Visual Vibe
Restrained, warm, paper-like, editorial, authoritative, precise, typographic, unhurried, confident, scholarly.

## What It's NOT
1. NOT a SaaS landing page — no hero/features/pricing/CTA template
2. NOT dark mode — type specimens live on warm cream paper, never void
3. NOT photography-driven — zero images. The letterforms ARE the visual richness
4. NOT a marketing page — no adjective-heavy copy about "revolutionary design." Show, don't tell
5. NOT a monospace-dominated page — this is a serif specimen, the serif dominates 80%+ of visual space
6. NOT rounded or playful — zero border-radius on containers, no pill shapes, no bouncy animations

## Section Archetypes
- **Glyph hero**: A single massive glyph pair (Ag, Rg, Qq) that fills the viewport and proves the typeface at poster scale
- **Size cascade**: The typeface shown at every size from Display (96px) down to Micro (9px), each row answering "does it work here?"
- **Weight spectrum**: All weights shown on the same glyph pair, demonstrating the full range of expression
- **Paragraph setting**: Roman and italic side-by-side at body size, with typographic settings (size/leading, weight, tracking, measure) shown as metadata
- **OpenType features**: Before/after demonstrations of each feature (onum, tnum, smcp, frac, case, ss01) with CSS property syntax
- **Glyph map**: Full character grid showing Latin, Latin Extended, Cyrillic, and special characters
- **Type tester**: Interactive input where visitors type their own text and adjust size, weight, tracking, and style
- **Language support**: The typeface in six languages proving script coverage
- **Technical specifications**: Format, coverage, script support, and OpenType features in a data table
- **License tiers**: Structured pricing by use case with scope and inclusions

## Hero Archetype
Typography-as-art. A single enormous glyph pair ("Ag") at 35vw fills the viewport. Below it: the typeface name, a single-paragraph description, and four technical tags. No images, no video, no illustration. The glyph IS the hero. WHY: Art directors evaluate a typeface by its most characteristic glyphs at extreme scale. The hero answers their first question instantly.

## Asset Direction
**Zero photography.** The typeface provides all visual richness through:
- **Glyphs at extreme scale**: Display-size letterforms as the primary visual element
- **Typography as texture**: Cascading size tests create visual rhythm through type alone
- **Data as layout**: OpenType feature comparisons, spec tables, license grids — structured information IS the visual
- **Typographic metadata**: Size/weight/tracking annotations in monospace as secondary visual texture
- **White space as structure**: Generous cream-tinted margins let the type breathe and command attention

## Typography
Fraunces (specimen display, all headings and tested content) — a transitional serif with high contrast, optical size axis, and personality that bridges brutalism and warmth. WHY: It's the "foundry's typeface" being showcased. It must be beautiful at 300px and legible at 9px.

Instrument Sans (UI/meta, navigation, descriptions) — clean modern sans that stays completely invisible against the serif. WHY: The UI framework must not compete with the specimen content.

IBM Plex Mono (specs, labels, technical metadata) — technical credibility for size annotations, OpenType tags, and spec data. WHY: Monospace for technical data is a type-industry convention.

## Color
OKLCH palette on warm cream ground:
- **Background**: oklch(0.98 0.005 80) — warm cream, like high-quality uncoated paper
- **Background warm**: oklch(0.95 0.01 75) — slightly deeper cream for alternating sections
- **Background inset**: oklch(0.93 0.012 75) — spec section background
- **Text primary**: oklch(0.12 0.01 60) — near-black with warm tint, never pure black
- **Text secondary**: oklch(0.35 0.01 60) — descriptions and supporting copy
- **Text tertiary**: oklch(0.52 0.008 60) — labels and meta
- **Text faint**: oklch(0.68 0.006 60) — annotations and hints
- **Accent**: oklch(0.45 0.18 25) — warm red for featured license tier and hover states
- **Border**: oklch(0.85 0.008 70) — soft structural lines
- **OpenType section**: Inverted — primary text color as background, cream as text. Dramatic inversion proves the typeface works on dark ground.

## Signature Moves
1. **Enormous hero glyph (Ag) at 35vw**: Just two letters filling the viewport — proves the typeface at poster scale with zero supporting visuals
2. **Size cascade with monospace annotations**: Each row tests a specific optical size (Display 96 → Micro 9) with technical metadata alongside, creating a secondary rhythm in monospace
3. **Weight spectrum grid**: Same glyph pair (Rg) in every weight from Thin 100 to Black 900, creating a grayscale progression made of letterforms
4. **Roman/italic paragraph side-by-side**: Literary prose proving the typeface does real work, with settings (17/28, 400, 62 chars/line) shown as metadata
5. **Inverted OpenType section**: Dark background breaks the warm paper flow, proves the typeface works in both modes, feature comparisons with strikethrough → active
6. **Interactive type tester**: Visitors type their own words and adjust size/weight/tracking/italic via range sliders in real-time

## Hard Constraints
1. Warm cream background oklch(0.98 0.005 80) — never pure white, never gray, never dark
2. Zero border-radius on all rectangular elements — only slider thumbs are rounded
3. Three fonts with strict role separation: Fraunces specimen only, Instrument Sans UI only, IBM Plex Mono technical only
4. Zero images — no photography, no illustration, no SVG, no video. The typeface IS the visual
5. Serif typeface (Fraunces) must account for 80%+ of visible text on the page
6. Maximum one inverted (dark) section. All other sections on cream ground
7. All OpenType feature tags must be real and correctly named (onum, tnum, smcp, frac, case, ss01)

## Anti-Patterns
1. SaaS landing page structure (hero/features/metrics/testimonials/CTA) — this is a specimen, not a product pitch
2. Dark mode as default — type specimens live on warm paper, never void
3. Photography of any kind — letterpress blocks and type drawers are nostalgia tourism
4. Marketing superlatives — "revolutionary" and "breathtaking" destroy credibility instantly
5. Rounded corners on containers — softens the architectural precision that professionals expect

## Bold Choices
1. **Glyph hero at 35vw**: The typeface at poster scale, no supporting visuals, just two letters proving everything
2. **Zero images**: No photography, no illustration, no SVG. The letterforms provide all visual richness
3. **Warm cream not white**: oklch(0.98 0.005 80) — paper-like ground that makes type feel physical
4. **Inverted OpenType section**: Dark background breaks the warm flow and proves the typeface works in both modes
5. **Roman/Italic paragraph side-by-side**: Shows the typeface doing real work, not just display tricks
6. **Interactive type tester**: Visitors type their own words and adjust size/weight/tracking/italic in real-time
7. **Typographic metadata everywhere**: Size annotations (96px, 64px, 40px) alongside each specimen create a secondary rhythm in monospace
8. **1px structural borders, zero radius**: Wire-frame precision. Every container is sharp. The geometry reinforces the foundry's obsessive attention to detail

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/type-foundry-specimen/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: typography-only approach, data-as-visual, what NOT to show |
| `https://joincommons.cc/api/items/type-foundry-specimen/raw/anti-patterns` | 19 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (optical sizes, license, OT features), and typography composites |
| `assets/exhibit.html` | Reference implementation — single-file self-contained exhibit |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

## Workflow
1. Read `https://joincommons.cc/api/items/type-foundry-specimen/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance (typography-only approach)
3. Build following the product world, section archetypes, and hard constraints above
4. Self-critique against `https://joincommons.cc/api/items/type-foundry-specimen/raw/anti-patterns`
5. Validate tokens against `assets/tokens.dtcg.json`

## Gotchas
1. **The specimen font must dominate.** If more than 20% of visible text is in the UI font, the balance is wrong.
2. **Every section must answer a question.** "Can it headline? Can it set body copy? Does it have tabular figures?" If a section doesn't test the typeface, it doesn't belong.
3. **No marketing copy.** Type professionals detect and dismiss superlatives instantly. Show the font working, don't tell them it's good.
4. **Warm cream, never white.** Pure white (oklch 1.0 0 0) looks clinical and cheap. Paper has a temperature.
5. **Zero border-radius on containers.** Rounded corners soften the architectural precision that type professionals expect.
6. **The inverted section must be earned.** One dark section maximum. More than that and the warm paper identity collapses.
7. **Technical data must be correct.** Art directors know what onum, tnum, and smcp mean. Getting OpenType tags wrong destroys all credibility.

</design-system>
