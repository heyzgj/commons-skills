---
name: tech-organic-biotech
description: Biotech skincare brand design language — biomorphic blob images, dual-temperature OKLCH palette (warm sage/cool blue-gray), INCI nomenclature labeling, split botanical/clinical sections, SVG annotation overlays, and glass panels over photography. For ingredient-first brands that publish clinical evidence.
version: 1.0.0
tags:
  - biotech
  - skincare
  - botanical
  - clinical
  - ingredient-first
  - biomorphic
  - split-layout
  - annotation
  - evidence-based
  - oklch
category: marketing
---

# Tech-Organic Biotech Fusion

A design skill for evidence-based botanical brands where clinical data and organic photography coexist in the same interface. Every ingredient has a Latin name. Every image is a living amoeba shape. The laboratory and the garden share a desk.

## What This Skill Does

Generates ingredient-first marketing pages for biotech skincare or botanical wellness brands. The system produces:

- A hero section with full-bleed photography behind a frosted glass data panel
- Ingredient-forward product formulary with biomorphic blob images that morph on hover
- A split-temperature section: warm botanical photography (sage) facing cold clinical data (blue-gray)
- An annotated ingredient matrix table with INCI nomenclature, molecular weights, and origin badges
- A clinical Lab Notes section (inverted dark panel) with study methodology and findings
- A Botanical Garden section mapping ingredient origins with annotation pins
- An AM/PM routine protocol builder

The system uses three fonts simultaneously: Fraunces (variable serif, organic), Atkinson Hyperlegible (accessible body), IBM Plex Mono (all data/labels/INCI). The OKLCH palette maintains dual color temperature throughout — warm for nature, cool for science.

## When to use

- Biotech skincare brands that publish ingredient concentrations and clinical data
- Supplement or nutraceutical brands with botanical sourcing stories
- Precision wellness brands targeting consumers who read INCI labels
- Brands positioning against clean beauty aesthetics (more science-forward)
- Marketing pages for a small focused product line (3–8 SKUs maximum)
- Any brand with a nature-meets-science narrative to tell

## When not to use

- Generic clean beauty or natural cosmetics brands (design looks incongruous)
- Large product catalogs (ingredient-first hierarchy doesn't scale past ~8 products)
- Purely clinical/pharmaceutical contexts (design is too warm and organic)
- SaaS or productivity products (no botanical narrative)
- Luxury fragrance (needs different atmosphere)
- Children's products or playful aesthetics

## Default Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/tech-organic-biotech/raw/design-language` for full visual system, pattern rules, and component states
2. **Load image kit** — read `https://joincommons.cc/api/items/tech-organic-biotech/raw/image-kit` for verified Unsplash URLs and treatment rules
3. **Build the exhibit** — implement the product content using the design system below; follow the Canonical Product Slices in `https://joincommons.cc/api/items/tech-organic-biotech/raw/design-language` as structural templates
4. **Self-critique** — run the 5-question self-critique from `https://joincommons.cc/api/items/tech-organic-biotech/raw/anti-patterns`; check Universal AI Slop Checklist; verify INCI completeness

## Supporting Files

- `https://joincommons.cc/api/items/tech-organic-biotech/raw/design-language` — full design language: color system, typography scale, all 9 canonical sections, component states, pattern rules, motion spec, accessibility requirements, and implementation invariants
- `https://joincommons.cc/api/items/tech-organic-biotech/raw/design-language` — extracted design tokens with material names, layout patterns per section, blob shape values, motion timing table
- `https://joincommons.cc/api/items/tech-organic-biotech/raw/image-kit` — four verified Unsplash URLs with placement rules and treatment instructions
- `https://joincommons.cc/api/items/tech-organic-biotech/raw/anti-patterns` — 8 topic-specific failure modes + universal AI slop checklist + 5-question self-critique protocol
- `assets/tokens.dtcg.json` — all design tokens in DTCG format for implementation
- `assets/exhibit.html` — reference implementation (BIOLUX brand)

## Output Expectations

A correctly executed output should:
- Feel like a beautifully designed scientific journal about ethnobotany — NOT like a Shopify beauty brand
- Show at least two images with asymmetric biomorphic blob shapes (8-value border-radius)
- Have one section visually split between warm botanical (sage) and cool clinical (blue-gray)
- Include SVG line-art annotation overlays on at least one section
- Show glass panels with backdrop-filter blur floating over photography
- Label every ingredient with both its common name AND its full INCI/Latin name
- Display concentrations, molecular weights, and study data as prominent content (not footnotes)
- Use all three font families in their designated roles

## Reuse and Adaptation Guidance

**Changing the product domain**: The system works for any botanical ingredient brand — adapting to herbal supplements, functional beverages, or professional cosmetics requires only changing the product content and updating the INCI names and clinical data. The visual system is domain-agnostic within the nature/science duality.

**Reducing sections**: For a landing page (not a full brand site), use: Hero + Formulary + Split Section. Drop Routine Builder, Lab Notes, and Botanical Garden. The minimum viable version is Hero + two content sections.

**Color adaptation**: The dual-temperature structure (warm sage / cool blue-gray) is load-bearing — don't replace both with the same hue family. If adapting the palette, maintain one warm botanical hue and one cool clinical hue. The amber accent can shift to another warm bridge color (terracotta, warm ochre) without breaking the system.

**Photography replacement**: Follow the guidance in `https://joincommons.cc/api/items/tech-organic-biotech/raw/image-kit`. Key rule: hero/split section photography goes behind glass or luminosity blend; product photography goes inside blob containers with multiply blend-mode.

**Removing INCI data**: Do not remove INCI names. They are load-bearing to the design's identity. If the brand doesn't publish INCI names, this design skill is the wrong choice.

## Non-negotiables

1. Biomorphic blob shapes MUST use asymmetric 8-value border-radius — never circles, never symmetrical pill shapes
2. Every ingredient must show both common name (display font) and INCI/Latin name (mono italic) simultaneously
3. The split section MUST maintain warm/cool temperature contrast — botanical side sage, clinical side blue-gray
4. Glass panels ONLY over photography — never over solid color backgrounds
5. IBM Plex Mono is the exclusive font for ALL data: concentrations, molecular weights, INCI names, section eyebrows, stat labels, nav links, annotation text
6. The Lab Notes section MUST invert to the dark `var(--data)` background — it's the design's one dramatic reversal
7. Conic gradient motifs must stay at ≤15% opacity — atmospheric, not decorative

## Common Failure Modes

1. **Using `border-radius: 50%`** — immediately reads as a circle crop, not a biomorphic form. Always use the 8-value asymmetric values from `https://joincommons.cc/api/items/tech-organic-biotech/raw/design-language`.
2. **Clean beauty trap** — lots of white space, single sage accent, rounded corners, standard hero layout. This happens when the clinical data is omitted. Force yourself to show molecular weights and study sizes prominently.
3. **Glass on solid background** — glassmorphism without photography beneath it looks like a semi-transparent box with no purpose. Always ensure a photograph sits behind any glass panel.
4. **Product-first hierarchy** — putting the SKU product name larger than the ingredient name signals a standard e-commerce site. The ingredient always leads.
5. **Symmetric split section** — if both sides of the split section use similar color temperatures, the design's central thesis evaporates. Warm left, cool right, always.
6. **Decorative botanicals** — using a leaf SVG as a bullet point or section divider makes the design look like a lifestyle wellness brand. SVG botanicals in this system are annotation layers at low opacity, never standalone illustrations.
