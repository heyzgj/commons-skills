---
name: aesop-retail
description: Premium botanical skincare with editorial video hero and radical restraint. Warm amber OKLCH palette, Lora serif editorial, Barlow sans labels. Hero opens with an editorial brand film -- warm, sensory, unhurried -- then transitions to product photography and editorial prose. Like walking into an Aesop store.
metadata: design-skill
---

# Vessel -- Botanical Skincare

## What This Skill Does

Routes an Aesop-inspired editorial restraint into any premium skincare or botanical product page. The signature move is the hero: an editorial product video plays as the primary content -- warm, slow, sensory -- like a short brand film showing the ritual of application, product textures, and botanical ingredients. After the film, the page flows into large editorial product photography paired with ingredient stories. This mirrors how aesop.com opens: video IS content, not decoration.

## When to use

- Premium skincare or botanical product brand pages
- Luxury retail editorial where formulation and sourcing ARE the identity
- Products where photography and video should feel tactile and material
- Brands with physical stores that function as architectural statements
- Any product page that should read like a printed magazine

## When not to use

- E-commerce with "Add to cart" checkout flows
- Clinical/medical skincare with percentage claims
- Fashion editorial with models and high-contrast photography
- Dark-themed or cool-toned products
- SaaS or technology landing pages

<design-system>

## Product World
- **Who**: Design-conscious consumers aged 28-50 who treat personal care as a considered practice, not impulse shopping. They recognize quality by formulation, not packaging claims. They curate their bathroom shelf the way others curate bookshelves.
- **What**: Premium botanical skincare brand built on formulation integrity and material honesty.
- **Vibe**: Aesop's warm editorial restraint meets a Cereal Magazine spread -- photography-led, video-enhanced, never loud.
- **Domain conventions**: Product names reference botanical ingredients (Parsley Seed, Camellia Nut, Geranium Leaf). Volume in mL. Ritual language, not "routine." No clinical claims, no percentages.

## Core Principle
The product IS the design. An editorial video hero establishes the sensory world, then photography, ingredients, and editorial prose provide all the richness -- adding decorative elements subtracts from it.

## Visual Vibe
Warm amber glass. Aged paper. Stone countertops. Botanical specimens. Melbourne apothecary. Printed magazine. Unhurried. Material. Sensory film.

## What It's NOT
- NOT a SaaS landing page (no hero -> features -> pricing -> CTA)
- NOT a Sephora product grid (this is considered curation, not commerce)
- NOT ambient video wallpaper (the video is CONTENT -- an editorial brand film, not a background wash)
- NOT white or cool (warm amber tones throughout)
- NOT decorated (no gradients, no glassmorphism, no decorative SVGs)
- NOT loud (no big headlines, no urgency, no exclamation marks)

## Section Archetypes
- **Video hero**: Full-viewport editorial brand film. Warm, slow, showing product ritual. Minimal text overlay. The video dominates -- it IS the opening impression.
- **Featured product plinth**: Large product photo + name + ingredient story. Like encountering a product on a plinth after walking through the store entrance.
- **Collection editorial**: Asymmetric layout (one large + two stacked), not equal grid.
- **Ingredient philosophy**: Full-bleed botanical photography + editorial prose about sourcing origins.
- **The ritual**: Morning/evening described as prose sequences, not numbered steps.
- **Stores**: City names in a list. No map, no photos, no descriptions.

## Hero Archetype
**Video-typography (editorial film)**: The page opens with a full-viewport editorial video playing as the primary hero content. This is NOT ambient background video -- it's an editorial product film showing the ritual of skincare, product textures, and botanical ingredients. A subtle gradient overlay preserves text legibility for the minimal tagline. The video is warm, slow, sensory -- like walking into an Aesop store and seeing their in-store film. This mirrors how the real aesop.com operates.

## Asset Direction
- **Hero video**: Warm editorial product film. Skincare ritual, application, textures, botanicals. The video IS content (brand film), not atmosphere. CSS filter: `saturate(1.1) brightness(0.88) contrast(1.05)`.
- **Photography**: Warm editorial product shots. Amber glass against stone/wood/botanicals. Never clinical white backgrounds. Never people.
- **Botanical ingredients**: Honeycomb, dried herbs, raw botanicals in warm light. Editorial, not decorative.
- **What NOT to show**: People, hands applying product, before/after, clinical environments, white backgrounds.

## Typography
- **Lora** (serif, body + headings) -- warm editorial serif. Italic cut for ingredient names.
- **Barlow 300/400** (sans, nav + labels) -- understated, almost invisible. High letter-spacing, always receding.

## Color
Warm amber OKLCH, hue 52-65. No pure grays.
- **Background**: oklch(0.935 0.022 65) -- warm cream, not white
- **Hero dark**: oklch(0.12 0.025 52) -- warm dark for video section
- **Text**: oklch(0.18 0.02 52) headings, oklch(0.28 0.025 52) body
- **Light text**: oklch(0.92 0.015 65) on dark hero
- **Amber accent**: oklch(0.55 0.12 55) -- glass bottle color, used sparingly
- **Botanical green**: oklch(0.40 0.06 148) -- almost never used, just present
- **Rules**: oklch(0.84 0.02 62) -- warm, never gray

## Bold Choices
1. **Editorial video hero** -- a warm brand film, not ambient wallpaper
2. **Nav transitions from transparent (on hero) to warm cream (on scroll)**
3. **Featured product plinth after the film** -- large photo + editorial story
4. **Asymmetric collection layout** -- one large spanning two rows, two stacked beside
5. **No CTA buttons** -- only understated "Explore" text links
6. **Editorial ingredient prose** -- sourcing origins as magazine journalism
7. **Stores as city list** -- just names, the restraint says more than a map
8. **Warm background throughout** -- no section uses white

## Workflow
1. Read `https://joincommons.cc/api/items/aesop-retail/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography and video guidance
3. Build following the product world above
4. Self-critique against `https://joincommons.cc/api/items/aesop-retail/raw/anti-patterns`

## Gotchas
1. The video is CONTENT (editorial brand film), not an ambient background wash. It should feel like watching a short Aesop film.
2. Nav must transition: transparent with light text on the video hero, then warm cream backdrop on scroll.
3. Do not use CTA buttons. Use understated text links.
4. Do not make the collection a 3-equal-column grid. Use asymmetric layout.
5. Do not use white backgrounds anywhere. Every surface carries amber warmth.
6. Do not write marketing copy. Write like a magazine editor.

</design-system>

## Supporting Files

- `https://joincommons.cc/api/items/aesop-retail/raw/design-language` -- full visual system (colors, type, spacing, motion, components)
- `references/asset-direction.md` -- photography and video direction with verified starter assets
- `https://joincommons.cc/api/items/aesop-retail/raw/anti-patterns` -- domain-specific traps to avoid
- `assets/tokens.dtcg.json` -- DTCG tokens with color, semantic, typography groups
- `assets/exhibit.html` -- reference implementation (editorial video hero)
