<design-system>

## Product World
- **Who**: People planning life projects — brides curating wedding aesthetics, home renovators collecting kitchen ideas, fashion enthusiasts building capsule wardrobes, crafters hunting DIY tutorials. They SAVE and ORGANIZE, not scroll and forget.
- **What**: Visual discovery engine — a search engine where every result is a beautiful image you can save to themed boards.
- **Vibe**: "Instagram's visual richness meets Google's utility" — warm, approachable, endlessly browsable.
- **Domain conventions**: Pins (saved images), Boards (collections), Masonry grid layout, Save button as primary action, category pills for filtering, search-first navigation.

## Core Principle
The content IS the interface — every pixel of screen real estate shows discoverable visual ideas, not marketing copy about discovering visual ideas.

## Visual Vibe
Warm, inviting, colorful, browsable, cozy, curated, aspirational, tactile, magazine-like, endlessly scrollable.

## What It's NOT
- NOT a social media feed with likes/comments/shares as primary actions — saving is king
- NOT a dark-mode developer tool — warmth and color are essential
- NOT a minimalist portfolio with white space — density is the point
- NOT a SaaS landing page with hero/features/pricing — the grid IS the page
- NOT an e-commerce store with "Add to Cart" — this is inspiration, not shopping
- NOT a news feed with text-heavy cards — photography dominates, text is secondary

## Section Archetypes
- **Search bar + category pills**: The entry point — always visible, always inviting exploration
- **Masonry pin grid**: Variable-height cards in 4-5 columns, the core experience
- **Pin card**: Photo (variable aspect ratio) + title + avatar + save button overlay on hover
- **Video pin**: Inline video that plays on hover within the grid, badge indicator
- **Minimal footer**: Simple links + sign-up CTA — the grid does the selling

## Hero Archetype
**No hero.** The masonry grid starts immediately below the search bar. This is the defining structural choice — Pinterest trusts its content to be the marketing. No headline needed. No value proposition copy. The waterfall of beautiful pins IS the pitch.

## Asset Direction
- **Photography subjects**: Interior design (kitchens, living rooms, reading nooks), food/recipes, fashion/outfits, travel destinations, DIY/crafts, plants, wedding details, art prints, ceramics
- **Photo mood**: Warm, aspirational, lifestyle-oriented, high-quality editorial feel. Mix of close-ups and styled scenes
- **Data-as-visual patterns**: Pin count badges, board names, category pills with real topic labels
- **Video direction**: Craft tutorials, design process, lifestyle moments — plays inline within the grid, not as a background
- **What NOT to show**: Dark/moody photography, corporate stock, people at laptops, abstract tech visuals

## Typography
**Urbanist** (400-800) — Warm, rounded geometric sans-serif that matches Pinterest's friendly, approachable personality. Negative letter-spacing on headings creates that tight, modern feel. The roundness of the letterforms echoes the rounded card corners throughout the UI.

## Color
- **Background**: `oklch(0.985 0.005 80)` — warm white, not sterile
- **Card surface**: `oklch(0.995 0.003 80)` — slightly brighter than bg for subtle lift
- **Text primary**: `oklch(0.15 0.01 60)` — warm near-black, never pure black
- **Text secondary**: `oklch(0.45 0.015 60)` — warm gray for metadata
- **Pinterest Red**: `oklch(0.55 0.22 25)` — the singular accent, used ONLY for save actions and brand mark
- **Border**: `oklch(0.88 0.01 70)` — warm subtle divider
- Semantic meaning: Red = save/action, warm neutrals = trust/comfort, no other accent colors needed

## Bold Choices
1. **No hero section** — grid starts immediately, trusting content to sell the product
2. **Variable-height masonry** — cards have different heights creating organic, magazine-like visual rhythm
3. **Pinterest Red as sole accent** — one color, one action (save), maximum clarity
4. **Hover-to-reveal overlay** — save button and actions only appear on hover, keeping the grid clean
5. **Video plays inline on hover** — no modal, no lightbox, video lives in the grid as a first-class pin
6. **Warm-tinted everything** — backgrounds, shadows, borders all carry a subtle warm hue toward the brand
7. **16px border-radius universally** — very rounded cards create the soft, friendly feel that defines Pinterest
8. **Staggered entrance animation** — pins cascade in with offset delays, mimicking the waterfall metaphor

## Workflow
1. Read `https://joincommons.cc/api/items/pinterest-discovery/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography and content sourcing
3. Build following the masonry-first, no-hero structure
4. Self-critique against `https://joincommons.cc/api/items/pinterest-discovery/raw/anti-patterns`

## Gotchas
- Never add a traditional hero section — the grid IS the hero
- Pin cards must have VARIABLE heights — uniform grids lose the Pinterest feel entirely
- Pinterest Red is for save buttons ONLY — using it for headings, borders, or decorative elements cheapens the brand
- Don't reduce photo opacity or add grayscale filters — Pinterest is maximally colorful
- Don't use dark backgrounds — warmth and light are core to the browsing experience
- Category pills are horizontal scrollable, not wrapped — they represent infinite exploration

</design-system>
