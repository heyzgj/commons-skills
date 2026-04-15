---
name: airbnb-stays
slug: airbnb-stays
description: Warm, photography-forward travel marketplace design inspired by Airbnb. Pure white canvas, singular Rausch Red accent, three-layer card shadows, generous rounded corners, and listing-grid browsing that makes unique homes feel aspirational and accessible.
metadata: design-skill
---

# Airbnb Stays

<design-system>

## Identity

### Product World
- **Who**: Travelers seeking authentic local experiences over hotel chains -- families planning vacations, couples looking for weekend getaways, digital nomads booking month-long stays. Also hosts: homeowners sharing their spaces.
- **What**: A visual marketplace for unique stays -- from treehouses to Tuscan villas -- where photography sells the experience and trust comes from reviews and Superhost badges.
- **Vibe**: "Travel magazine meets warm e-commerce" -- Airbnb.com meets Cereal magazine. Photography-first with a warm white canvas that lets the images do the talking.
- **Domain conventions**: Nightly pricing ($127/night), star ratings (4.92), guest counts, Superhost badges, "Guest favourite" and "Rare find" labels, listing categories (Beachfront, A-frames, Treehouses, Cabins, Luxe), date ranges (Apr 12--17).

### Core Principle
The photos ARE the product -- every design decision exists to make listing photography feel immersive, warm, and aspirational, on a clean white canvas with a single red accent.

### Visual Vibe
Warm, inviting, aspirational, magazine-quality, photography-forward, approachable, trustworthy, browseable, tactile, belonging

### Typography
Urbanist (Google Fonts) -- rounded geometric sans-serif echoing Airbnb Cereal warmth. Weights 400-700. Negative letter-spacing on headings (-0.2px to -1.2px) creates intimate, cozy hierarchy. The roundedness says "warm and human."

### Color
- **Background**: Pure white (oklch 0.99) -- clean canvas for photography
- **Text**: Warm near-black (oklch 0.20 0.015 55) -- never pure black, always warm
- **Secondary text**: oklch 0.45 0.012 55 -- warm medium gray for descriptions
- **Rausch Red**: oklch 0.62 0.24 15 -- singular brand accent. CTAs, logo, liked hearts. Nothing else.
- **Borders**: oklch 0.88 0.006 55 -- barely-there warm gray
- **Card shadows**: Three-layer system (ring 0.02 + soft 0.04 + medium 0.10) -- natural warm lift
- **Semantic meaning**: Red = brand/love/action. White = trust/openness. Warm gray = structure.

### Hero Archetype
Video background (travel/home footage) at 0.55 opacity with warm gradient overlay, bottom-aligned text, and a single Rausch Red CTA. Represents the FEELING of arriving at a beautiful place.

### Section Archetypes
- **Category pill bar**: Sticky horizontal scroll with icon+label columns, underline-active state
- **Listing grid**: 4-column square-image cards with heart overlay, carousel dots, badge labels, structured details
- **Photo break**: Full-width aspirational photography with gradient overlay + editorial copy
- **Destination cards**: Compact horizontal cards (rounded image + city + drive time)
- **Experience type grid**: 3-column overlay image cards with gradient text
- **Hosting CTA**: Banner with background image, centered headline + action button
- **Rare find showcase**: Asymmetric 1.4fr/1fr grid with featured listing + stacked side cards

### Asset Direction
- **Photography**: Warm interiors, mountain views through windows, unique architecture. Natural light is critical.
- **Video**: Slow travel footage -- countryside, approaching homes, changing light. 0.5+ opacity with warm gradient.
- **Data-as-visual**: Listing data ($127/night, 4.92 stars, Superhost) as trust signals.
- **What NOT to show**: No tourist stock photos, no drone shots, no hotel staging, no city skylines.

## Signature Moves
1. **Three-layer card shadows** -- ring (0.02) + soft blur (0.04) + lift (0.10) create depth like natural light
2. **Singular accent** -- Rausch Red is the ONLY color beyond warm white/gray. Discipline IS the brand.
3. **Square listing images** -- 1:1 aspect ratio creates magazine-like browsing; uniform grid lets photography shine
4. **Heart wishlisting on images** -- fill red on click, emotional micro-interaction makes browsing personal
5. **Sticky category pills** -- always one tap from filtering. Icons + labels, underline active state
6. **Generous border radius** -- 8px buttons, 14px badges, 20px cards, 50% circular controls. Roundedness IS warmth.
7. **Near-black, never pure black** -- oklch 0.20 0.015 55 throughout. Warm near-black feels human.
8. **Photography zoom on hover** -- subtle 1.03x scale on card images creates tactile browsing sensation

## Hard Constraints
- Rausch Red for CTAs, logo, and liked hearts ONLY. No other use.
- Text always warm near-black (oklch 0.20), never pure black (#000000).
- Light mode only. No dark mode, no dark backgrounds for cards.
- Three-layer shadow on all elevated surfaces. No single-layer shadows.
- Minimum 8px border-radius on all interactive elements. 20px on cards.
- Photography must be warm, lived-in interiors -- never staged hotel shots.
- No more than 2 badges per listing card (overuse kills trust signals).

## Anti-Patterns
- **NOT a Booking.com search page** -- information-dense, utilitarian, blue. Airbnb is photography-forward, warm, white.
- **NOT a SaaS landing page** -- no hero/features/metrics/testimonials/pricing structure. This is a MARKETPLACE.
- **NOT dark mode** -- kills photography-forward feel; listing images need bright white canvas.
- **NOT multi-accent colors** -- no blue links, green success, orange warnings. Only Rausch Red.
- **NOT feature-first** -- no "Features" section with icon cards. The LISTINGS are the product.
- **NOT pure black anywhere** -- even footer uses warm near-black. Pure black breaks the warmth.
- **NOT tight corners** -- anything below 8px radius feels wrong. Generous rounding IS warmth.
- **NOT heavy shadows** -- three-layer system is subtle. If shadows are obviously visible, too strong.

## Workflow
1. Read `https://joincommons.cc/api/items/airbnb-stays/raw/design-language` for full visual system (shadows, radius, typography scale)
2. Read `references/asset-direction.md` for photography sourcing guidance
3. Review `assets/tokens.dtcg.json` for exact OKLCH values and shadow tokens
4. Study `assets/exhibit.html` as the reference implementation
5. Start with white canvas. Let photography provide color. Rausch Red for CTAs only.
6. Build listing cards first -- they are the heart of the product
7. Self-critique against `https://joincommons.cc/api/items/airbnb-stays/raw/anti-patterns`

## Gotchas
- **Rausch Red overuse**: If red appears beyond CTAs/logo/hearts, you've overused it.
- **Pure black anywhere**: Even in footer, use warm near-black. Pure black breaks warmth.
- **Dark mode instinct**: Airbnb is warm white. Dark mode kills photography feel.
- **Feature grid syndrome**: NOT a SaaS product. No icon-above-heading feature cards.
- **Stock photography**: Generic travel stock ruins authenticity. Show interiors, not tourists.
- **Missing three-layer shadows**: Single box-shadow looks flat. Three-layer stack is core.
- **Low radius**: Below 8px radius feels like a different product entirely.

</design-system>

## Supporting Files
- `https://joincommons.cc/api/items/airbnb-stays/raw/design-language` -- Complete visual system: color palette, typography scale, spacing, motion, component patterns
- `references/asset-direction.md` -- Photography and video sourcing guidance with verified starter assets
- `https://joincommons.cc/api/items/airbnb-stays/raw/anti-patterns` -- Domain-specific visual, structural, content, and UX traps to avoid
- `assets/tokens.dtcg.json` -- DTCG design tokens: color, semantic (listing/shadow), typography
- `assets/exhibit.html` -- Reference implementation: self-contained HTML exhibit
- `assets/design-skill.json` -- V4 manifest with product archetype, coverage, and discovery metadata
