---
name: illustrated-eco-brand
description: Hand-drawn SVG illustration-driven eco-sustainability brand with Fraunces / Nunito / Kalam, warm OKLCH paper-and-earth palette, feTurbulence wobble filters, paper-grain texture, naive-art garden scenes, and handwritten margin annotations. Zero photographs.
metadata: design-skill
---

# Illustrated Eco Brand

## What This Skill Does

Routes a hand-drawn SVG illustration system into an eco-sustainability brand. Every visual is an inline SVG with intentional wobble via feTurbulence filters — zero photographs. Warm OKLCH paper-and-earth palette, Fraunces + Nunito + Kalam font trio, paper-grain texture overlay, naive-art garden scenes with ambient animation, and Kalam handwriting annotations woven into text flow. The page feels like a beautifully illustrated seed catalog, not a corporate sustainability website.

## When to Use

- Eco-sustainability product brand or e-commerce site
- Seed catalog or gardening supply shop
- Community garden or CSA membership platform
- Organic food brand or farm-to-table marketplace
- Environmental non-profit or conservation landing page
- Artisan food or handmade goods store where illustration is the identity

## When Not to Use

- Photography-driven portfolios or galleries (this uses zero photographs)
- Corporate B2B dashboards or enterprise SaaS tools
- Dark-theme applications or night-mode interfaces
- Data-dense admin panels or analytics tools
- Luxury fashion or high-end minimalist brands
- Technical documentation or developer tools

## Default Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/illustrated-eco-brand/raw/design-language` for the full OKLCH color table, Fraunces + Nunito + Kalam typography, SVG wobble filter definitions, layout patterns, animation specs, and drawing conventions.
2. **Load tokens** -- read `tokens.dtcg.json` for concrete color, spacing, font, border, and animation values.
3. **Build** -- produce a single HTML. All visuals are inline hand-drawn SVG with `filter="url(#wobble)"`. Include paper-grain texture overlay, three Google Fonts, scroll-reveal via IntersectionObserver, and subtle SVG ambient animations.
4. **Self-critique** -- check `https://joincommons.cc/api/items/illustrated-eco-brand/raw/anti-patterns`: Are ALL visuals SVG? Does every drawn element use the wobble filter? Are illustrations woven into text flow? Does Kalam handwriting appear alongside Nunito body copy?

## Supporting Files

| File | Purpose | When to read |
|---|---|---|
| `https://joincommons.cc/api/items/illustrated-eco-brand/raw/design-language` | Full design language -- color, typography, layout, SVG filters, motion, principles, invariants | Always -- primary reference |
| `tokens.dtcg.json` | DTCG format tokens for color, spacing, font, border, animation values | When implementing -- concrete values |
| `exhibit.html` | Proof surface showing the illustrated system with real brand content | When auditing -- the truthful reference |
| `https://joincommons.cc/api/items/illustrated-eco-brand/raw/design-language` | Extended design system with detailed SVG conventions and illustration inventory | When building complex scenes |
| `https://joincommons.cc/api/items/illustrated-eco-brand/raw/image-kit` | SVG illustration patterns and drawing conventions (no photos) | When creating new illustrations |
| `https://joincommons.cc/api/items/illustrated-eco-brand/raw/anti-patterns` | Topic-specific traps and self-critique protocol | Before shipping -- quality gate |

## Supporting References

This design draws on reference sources from illustration-led brands:
- Oatly packaging -- illustration as primary brand language, hand-drawn typography, playful irreverence
- Oliver Jeffers children's book illustrations -- naive proportions, warm colors, charming imperfection
- Farm-stand chalkboard signs -- handwritten labels, earthy produce drawings, community feeling
- The 2026 "wonky is the new polished" design trend on Godly and Behance

## Output Expectations

- Single self-contained HTML file, light theme only
- All visuals are inline hand-drawn SVG -- zero `<img>` tags, zero photographs
- Every drawn SVG element uses `filter="url(#wobble)"` (feTurbulence displacement)
- Paper-grain texture overlay via fixed body::before with SVG fractalNoise
- Three Google Fonts: Fraunces (display), Nunito (body), Kalam (handwriting)
- OKLCH color values throughout -- warm off-white paper base, earthy palette
- 5+ unique multi-element SVG illustrations (not just icons)
- At least one full illustrated scene (garden, community, market)
- Kalam handwriting annotations at slight rotations beside clean body copy
- IntersectionObserver scroll-reveal with staggered fade-up
- Subtle SVG ambient animations (plant sway, water drops, butterfly wings)
- prefers-reduced-motion respected

## Reuse and Adaptation Guidance

**Safe to vary**: brand name, product categories, journey steps, impact statistics, seasonal content, newsletter copy, color hue shifts within OKLCH warm range, number of categories (3-6), illustration subjects matching your product domain.

**Do not change**: the wobble filter technique, paper-grain texture overlay, three-font system (display serif + body sans + handwriting), OKLCH warm palette approach, inline illustration integration, handwriting annotation pattern, ambient SVG animation approach.

**Illustration adaptation**: draw subjects from YOUR product domain. A bakery draws bread and ovens. A nursery draws pots and flowers. A craft supply store draws yarn and needles. The naive hand-drawn style and wobble filter remain constant -- only the subjects change.

## Non-negotiables

- Zero photographs -- all visuals are inline hand-drawn SVG
- `filter="url(#wobble)"` on every drawn `<path>`, `<circle>`, `<ellipse>`, `<rect>`, `<line>`
- Three fonts: Fraunces + Nunito + Kalam (all three required)
- Warm off-white paper background `oklch(0.95 0.02 80)` with grain overlay
- No pure black (#000) or pure white (#fff) -- all neutrals warm-tinted toward hue 60-80
- Illustrations woven INTO text flow, not isolated in image containers
- SVG ambient animations with `<animate>` and `<animateTransform>` (not CSS)
- `prefers-reduced-motion: reduce` disabling all animation

## Common Failure Modes

1. **Stock photography** -- adding even one Unsplash image breaks the entire illustrated-world conceit
2. **Icon library icons** -- Heroicons/Lucide are geometrically perfect and destroy the handmade feeling
3. **Missing wobble filter** -- without feTurbulence displacement, SVG paths look vector-perfect and cold
4. **Flat illustration style** -- Slack/Mailchimp corporate blobs instead of naive children's-book charm
5. **Dark mode** -- neon green-on-black palette is corporate greenwashing aesthetic, not handmade warmth
6. **Missing Kalam** -- omitting the handwriting font removes the personal-notebook feeling
7. **Isolated illustrations** -- putting SVGs in separate containers instead of weaving into text flow
8. **Flat background** -- skipping paper-grain texture makes the page feel digital, not printed
