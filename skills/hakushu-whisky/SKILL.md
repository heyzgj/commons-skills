---
name: hakushu-whisky
description: Japanese single malt whisky distillery experience built on ma (間) -- empty space as active design element. Cormorant Garamond 300 at 9rem kanji hero in vast cream emptiness, IBM Plex Sans body, warm cream and amber OKLCH palette, one element per viewport, full-bleed provenance photography at full visibility, oversized age numbers as architecture, inverted tasting notes section. For whisky connoisseurs who value provenance, time, and craft.
metadata: design-skill
---

# Hakushu Whisky

<design-system>

## Identity
A Japanese single malt whisky distillery experience that communicates through absence. The design language is ma (間) — the Japanese concept of negative space as an active, meaningful presence. Every viewport contains exactly ONE element — one photograph, one paragraph, one number — and the vast cream emptiness between them IS the design. Warm amber and deep brown reference aged wood and whisky in glass. Cormorant Garamond at whisper-light 300 weight bridges Western serif elegance with Japanese calligraphic restraint.

## Product World
- **Who**: Whisky connoisseurs who care about provenance and process. Collectors of aged single malts. Japanese cocktail bar professionals. Gift-givers seeking meaning over brand recognition. They read about terroir, they know Mizunara from American white oak, they understand that a 25-year expression means someone decided to wait a generation.
- **What**: A premium Japanese single malt whisky distillery in the Southern Alps of Japan, defined by time, water, and rare wood.
- **Vibe**: Suntory heritage meets Aesop editorial restraint — unhurried craft storytelling through photography and typographic silence.
- **Domain conventions**: Age statements (12/18/25), tasting note vocabulary (nose/palate/finish), cask types (Mizunara, American white oak, sherry), altitude and water source as provenance markers, ABV percentages, distillation methods (pot still vs. column).

## Core Principle
Empty space is not absence — it is the most important ingredient. Ma (間) governs everything.

## Visual Vibe
Wabi-sabi, unhurried, reverent, warm amber, forest silence, handcraft patience, asymmetric balance, vast emptiness, editorial restraint, paper-and-wood warmth.

## Section Archetypes
- **Kanji identity opening**: The name in Japanese calligraphy as the entire viewport — no headline, no tagline, just presence
- **Full-bleed provenance photography**: Single photograph consuming the entire viewport — the water source, the cask warehouse, the copper stills
- **Single-paragraph craft story**: One thought about one element of the process, surrounded by vast cream emptiness
- **Large-number age typography**: The year count as oversized display type — 12, 18, 25 — numbers as art
- **Inverted tasting notes**: Dark background section with italic serif tasting vocabulary
- **Expression lineup**: The age expressions presented as typographic rhythm, not product cards
- **Closing meditation**: A single sentence about time and patience, then one quiet link

## Hero Archetype
**Typography-as-void** — the distillery name in small serif + the kanji character (白州) centered in vast empty cream space. No image, no video, no tagline. The emptiness IS the hero. WHY: Japanese craft culture communicates through restraint. The absence of visual noise signals confidence, heritage, and the patience that defines the whisky itself.

## Asset Direction
- **Photography**: Warm amber warehouse interiors, oak barrel textures with Japanese calligraphy, copper still details, mountain forest landscapes. Always at FULL visibility — no filters, no desaturation. The warm amber tones of aged wood ARE the color palette.
- **Video**: Process footage of distillation, barrel-making, or forest/water — warm, slow, meditative. Used as a single atmospheric section, not a hero background. Minimal overlay — the warmth of the footage contributes to the overall palette.
- **Typography-as-art**: Age numbers (12, 18, 25) rendered as oversized display type. Kanji characters as identity marks. Tasting note vocabulary in italic serif.
- **What NOT to show**: No cocktail preparation, no lifestyle/party imagery, no people drinking, no product shots with marketing staging. The process — water, wood, time — not the consumption.

## Typography
- **Cormorant Garamond** (display, 300/400 weight) — an elegant serif with calligraphic DNA that bridges Western typography and Japanese editorial restraint. Its thin strokes echo the delicacy of Japanese brush calligraphy. Used at whisper-light 300 weight for maximum elegance.
- **IBM Plex Sans** (body, 300/400/500 weight) — precise, clean, with humanist warmth. Provides legibility without coldness. Its subtle personality complements rather than competes with the serif display type.

## Color
- **Cream** `oklch(97.5% 0.01 80)` — warm paper background, like aged washi. The canvas that makes emptiness feel intentional.
- **Deep brown** `oklch(20% 0.02 55)` — primary text, the color of aged Mizunara oak heartwood. Never pure black.
- **Amber** `oklch(67% 0.14 70)` — the color of 18-year whisky catching light. Used only for accents and emphasis — rare and precious.
- **Muted brown** `oklch(52% 0.03 55)` — secondary text, metadata, navigation. Recedes without disappearing.
- **Paper** `oklch(92% 0.015 75)` — dividers, subtle separations. Warmer than cream, like the edge of an aged page.

## Signature Moves
1. **One element per viewport** — each scroll position reveals exactly one thing: one photo, one paragraph, one number. Nothing competes.
2. **Zero border-radius** — every edge is sharp, like a wooden box joint or the corner of a cask.
3. **No shadows anywhere** — depth comes from photography and the contrast between warm cream emptiness and full-bleed images.
4. **Kanji as identity** — 白州 appears as oversized display type in the hero, replacing any Western-style headline or tagline.
5. **Vertical scroll indicator** — square dots (not circles) on the right edge, with amber highlight for active section. The only persistent UI element.
6. **Inverted tasting section** — the single dark section in an otherwise cream page, using deep brown background with cream text and amber accents. The palette inversion signals "now taste."
7. **Writing-mode vertical text** — labels rendered vertically (writing-mode: vertical-lr) echoing Japanese vertical text traditions.
8. **Age numbers as architecture** — 12, 18, 25 rendered at viewport-scale typography, treated as sculptural elements rather than data.

## Hard Constraints
- border-radius: 0 on ALL elements — no rounded corners, ever
- No shadows or elevation — depth from photography and typographic scale contrast only
- Maximum one visual element per viewport — never two competing items
- All photography at 100% visibility — no desaturation, no grayscale, no heavy overlays
- Cormorant Garamond never exceeds weight 400 — the whisper-light 300 is the signature
- Single CTA at the very end of the page — no persistent sticky bars, no mid-page conversions
- Text blocks never exceed 3-4 sentences — if it reads like a paragraph, split it

## Anti-Patterns
- NOT a spirits e-commerce product grid with "Add to Cart" buttons and pricing tiers
- NOT a dark moody bar atmosphere with neon accents and nightlife energy
- NOT a Western minimalism aesthetic (Linear/Vercel clean-tech) — Japanese ma is warm and organic, not cold and geometric
- NOT a whisky comparison tool with ratings, scores, and data tables
- NOT a magazine feature with dense editorial columns and pull quotes competing for attention
- NOT an Instagram-aesthetic lifestyle brand with influencer imagery and aspirational copy
- NOT gold-and-black luxury branding — amber is earned (literal whisky color), not applied as luxury signaling

## Workflow
1. Read `https://joincommons.cc/api/items/hakushu-whisky/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/hakushu-whisky/raw/anti-patterns`

## Supporting Files
- `https://joincommons.cc/api/items/hakushu-whisky/raw/design-language` — Full visual system: OKLCH palette, typography scale, spacing, motion, component patterns
- `references/asset-direction.md` — Photography and video sourcing guidance with verified starter assets
- `https://joincommons.cc/api/items/hakushu-whisky/raw/anti-patterns` — Domain-specific traps across visual, structural, content, and UX categories
- `assets/tokens.dtcg.json` — DTCG design tokens (color, semantic, typography)
- `assets/exhibit.html` — Reference implementation (self-contained, ~22KB)

## Gotchas
1. **Western minimalism is not Japanese ma** — Linear-style clean spacing feels cold and technical. Ma is warm, organic, and asymmetric. The page should feel like a temple garden, not a SaaS dashboard.
2. **Amber must stay rare** — if amber appears in more than 3-4 elements, it loses its preciousness. It should feel like light catching a glass, not a brand color splashed everywhere.
3. **Don't fill the emptiness** — the instinct to add decorative elements (lines, patterns, illustrations) to vast white space destroys the design. The emptiness IS the design.
4. **Photography must be warm** — cool-toned, blue-cast, or desaturated photography breaks the palette. Every image should feel like it was lit by amber lamplight in a wooden warehouse.
5. **Avoid tasting note cliches** — "smooth and balanced" says nothing. Use specific sensory language: smoke, hinoki, green apple, white pepper. Real connoisseurs speak in precise descriptors.
6. **Don't show the bottle too early** — the journey is water, wood, time. The bottle is the conclusion, not the opening. Product-first placement feels like marketing.
7. **Text must breathe** — no paragraph should exceed 3-4 sentences. If it feels like a block of copy, it's too dense for this design language.

</design-system>
