---
name: linen-thread-journal
description: A personal essay journal styled as a hand-stitched folio. Single typeface (Newsreader), warm OKLCH cream paper with SVG noise, dashed spine stitch, asymmetric folio margins. No photography — identity from typography and bookbinding conventions.
---

# Linen Thread Journal

## What This Skill Does

Provides a complete design system for rendering long-form personal essays as a hand-bound journal. The page feels like a physical notebook — warm cream paper, visible spine stitching, asymmetric book margins, and a single serif typeface handling all hierarchy through weight, style, and caps variants.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/linen-thread-journal/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Personal essay collections and design criticism journals
- Literary blogs and reading logs
- Studio notes and chapbook-style micro-publications
- Any long-form writing platform where reading comfort and material warmth matter more than features

## When not to use

- E-commerce, dashboards, or SaaS products
- Marketing landing pages or conversion-focused pages
- Image-heavy portfolios or galleries
- Multi-page applications requiring navigation between views
- Content that needs dark mode (the cream paper IS the identity)

## Default Workflow

1. **Read `https://joincommons.cc/api/items/linen-thread-journal/raw/design-language`** — internalize the single-typeface system (Newsreader only), the OKLCH warm palette (hues 30-80), the asymmetric folio margins, and all component patterns.
2. **Read `tokens.dtcg.json`** — extract concrete values for colors, font sizes, weights, spacing, and motion.
3. **Build** — structure: `.folio` wrapper (spine stitch via `::before`/`::after`) → `.journal-header` → `.content` column (36em) → essay articles (date → title → reading time → lead small-caps → prose) → asterism breaks → `.colophon` footer. Add SVG noise texture on body. Add entrance animations with staggered delays.
4. **Self-critique against `https://joincommons.cc/api/items/linen-thread-journal/raw/design-language` > Implementation Invariants`** — verify single font, warm colors, asymmetric margins, paper texture, spine stitch, column width, prose weight 370, hanging punctuation, 0.5px borders, no cards.

## Supporting Files

| File                   | Purpose                                                |
|------------------------|--------------------------------------------------------|
| `https://joincommons.cc/api/items/linen-thread-journal/raw/design-language`            | Full design language with 14 sections — colors, type, layout, patterns, states, motion, accessibility |
| `tokens.dtcg.json`     | DTCG tokens: OKLCH colors, Newsreader type scale, spacing, borders, opacity, transitions |
| `exhibit.html`         | Proof surface — 8 essays with full typography, spine stitch, paper texture, entrance animation |
| `evidence/blueprints.json` | Blueprint coverage (optional) |
| `evidence/component-matrix.json` | Component coverage matrix (optional) |

## Supporting References

This skill draws from the editorial tradition of serious literary journals and personal essay publications. Consult these upstream references for taste calibration:

- **granta.com** — typography and spacing for long-form literary essays
- **nplusonemag.com** — editorial hierarchy and reading-focused layout
- **craigmod.com** — personal essay journals with bookbinding sensibility
- **robinrendle.com** — single-typeface editorial blogs
- **theparisreview.org** — literary magazine conventions (asterisms, small-caps, reading rhythm)

## Output Expectations

A single-page HTML document that reads like a hand-stitched notebook. Specifically:
- Warm cream background with SVG noise grain
- Fixed dashed spine stitch along the left margin
- Asymmetric margins (narrow spine, wide outer)
- All text in Newsreader (no other fonts)
- Metadata in all-small-caps, body at weight 370, titles at weight 500
- Lead paragraphs with `::first-line` small-caps
- Asterism breaks (`*  *  *`) between entries
- Staggered entrance animation with `prefers-reduced-motion` fallback
- Mobile-responsive margins and spine repositioning

## Reuse and Adaptation Guidance

**Safe to adapt:** Number of essays, essay content, author name/bio, specific date formatting, colophon structure, entrance animation timing.

**Adapt with care:** Column width (36em is optimized for ~60 chars at 17px — changing font size requires recalculating), margin ratios (asymmetry must be preserved), spine stitch opacity (stay under 0.6).

**Do not change:** The single-font constraint (Newsreader only), the warm OKLCH hue range (30-80), the paper texture technique, the asterism convention, the 0.5px border weight, the 370 body weight.

## Non-negotiables

- Newsreader is the only font. No sans-serif, monospace, or display fonts anywhere. Hierarchy comes from weight (300-500), style (italic/roman), size, and `font-variant-caps` only.
- All colors warm-toned: OKLCH hue axis 30-80. No cool grays, blues, or saturated accents.
- Folio margins asymmetric: spine margin (left) must be narrower than outer margin (right).
- SVG noise texture on body background at opacity 0.018.
- Spine stitch `position: fixed` with opacity under 0.6.
- Reading column max-width 36em. Body prose weight 370. Line-height 1.85.
- Preserve the token contract from `tokens.dtcg.json` — do not improvise off-system colors, weights, or spacing.

## Common Failure Modes

1. **Adding a second font.** Sans-serif labels or monospace metadata immediately breaks the single-thread metaphor. Use Newsreader weight/style/caps variants.
2. **Centering the layout.** Symmetric margins lose the folio identity. Keep spine narrow, outer wide.
3. **Wrapping essays in cards.** The cream background IS the paper. Cards with borders/shadows create a container/content split that signals "app."
4. **Using pure white background.** Must be warm cream `oklch(0.95 0.018 80)`. White reads clinical.
5. **Making spine stitch prominent.** Over 0.6 opacity turns a material detail into a gimmick.
6. **Skipping paper texture.** Without SVG noise, cream reads as flat CSS color.
7. **Adding navigation or interactive features.** This is a folio, not a site. Single vertical flow only.
