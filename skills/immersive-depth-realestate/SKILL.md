---
name: immersive-depth-realestate
description: Editorial luxury real estate platform with video walkthrough hero, warm cream OKLCH palette (hue 50-68), Cormorant Garamond weight-300 serif + Libre Franklin sans body. Property photography on every section, listing cards with real photos, asymmetric gallery, architectural spec tables. Like walking through a sunlit penthouse with a private broker -- the property IS the interface.
metadata: design-skill
---

# Maison -- Luxury Real Estate

<design-system>

## Identity

A curated luxury real estate platform that presents properties as editorial experiences, not listings. Warm cream palette rooted in natural materials -- linen, marble, walnut, brass. Cormorant Garamond at weight 300 for headlines that feel carved in stone, Libre Franklin at weight 300 for body text that disappears. Full-bleed video walkthrough hero because real estate is the most visual-dependent product category -- the property IS the first impression. Built for affluent buyers browsing $2M+ properties remotely, luxury agents curating private showings, and investors evaluating coastal California assets. They use Compass and Sotheby's International Realty. They care about discretion, provenance, and architectural pedigree. They hate urgency tactics, stock photography, and anything that feels like Zillow. Vibe: Sotheby's International Realty meets Cereal Magazine.

## Core Design Language

- **Colors**: Warm cream OKLCH palette (hue 50-68). Background oklch(0.955 0.015 65), warm section oklch(0.940 0.020 60), dark CTA oklch(0.12 0.015 50). Text oklch(0.15 0.015 50) primary, oklch(0.30 0.012 50) body, oklch(0.55 0.008 58) captions. Gold accent oklch(0.58 0.10 70) for CTAs and eyebrows -- brass hardware, not gilded frames.
- **Typography**: Cormorant Garamond 300/400/500 for display -- high-contrast serif signaling old-world taste. Libre Franklin 300/400/500 for body/UI -- clean neo-grotesque at weight 300 becomes invisible. Uppercase + wide tracking (0.12-0.25em) for all labels and navigation.
- **Spacing**: Sections clamp(80px, 10vh, 140px) vertical, clamp(32px, 5vw, 80px) horizontal. Content max-width 1200px. Gallery/listings 1320px. Feature grid 1px gaps as separators.
- **Radius**: Zero everywhere. Sharp architectural edges throughout -- like cut stone.
- **Motion**: ease-out-quart (0.25,1,0.5,1) for all transitions. Hero staggered fadeUp 700-800ms. Reveal elements 600ms translateY(24px). Full reduced-motion support.

## Signature Moves

1. **Video walkthrough hero** -- full-bleed property video at 100vh with gradient overlay (heavier at bottom for text, transparent in middle where property shows). The property IS the first impression.
2. **Asymmetric gallery** -- two images at different aspect ratios (3:4 + 4:3) in a 1.15fr/1fr grid. Never a uniform gallery grid.
3. **Listing cards with real photography** -- 3-column property cards, each with unique photo at 16:10 aspect ratio, location badge, specs, and price. Every card has a visible property photograph.
4. **1px rule separators** -- feature grid uses hairline rules as structural devices, not card containers. Background shows through 1px gaps.
5. **Price as architectural element** -- asking price displayed in hero bottom-right corner with serif typography (2rem, weight 300), treated as part of the composition, not a UI badge.
6. **Drop-cap on neighborhood editorial** -- serif initial cap (3.5rem) on the first paragraph signals editorial writing, not marketing copy.
7. **Sticky sidebar on neighborhood** -- location name stays pinned while editorial text scrolls, creating a magazine-like reading experience.
8. **Architectural quote break** -- photo background with translucent gradient overlay and serif italic pull quote between sections.

## Hard Constraints

1. Property photography is mandatory -- any page without 4+ visible property photos fails. Real estate without photography is a contradiction.
2. Video must show the actual property -- walkthrough, drone approach, or exterior reveal. Never abstract b-roll or lifestyle footage.
3. Zero border-radius -- rectangular everywhere. No rounded corners on any element.
4. Warm light palette for main content -- dark sections reserved exclusively for CTA and footer.
5. Gold accent stays scarce -- eyebrow labels, CTAs, and focus rings only. Never more than 10% of visual surface.
6. Spec data must use real brands -- Gaggenau, Sub-Zero, Schuco, Waterworks, Crestron. Real measurements, real architect names.
7. No urgency patterns -- no countdown timers, no scarcity messaging. The tone is "by appointment only."

## Anti-Patterns

1. **Zillow search interface** -- no map widgets, no filter bars, no "sort by price" dropdowns, no "hot homes" badges. This is editorial presentation, not a search engine.
2. **Dark mode for main content** -- luxury real estate lives in warm sunlit tones. A dark-themed property listing feels like a nightclub, not a residence.
3. **SaaS landing page structure** -- hero -> features grid -> metrics -> testimonials -> pricing -> CTA. This follows property visit flow: arrive -> understand -> see -> learn -> explore -> feel -> discover -> read -> act.
4. **Marketing copy** -- "The ultimate dream home" is marketing. "A cantilevered walnut staircase connects three levels without touching the walls" is editorial. Describe what EXISTS.
5. **Lifestyle photography** -- no people lounging by pools. Architecture is the subject. The buyer imagines themselves in the space.

</design-system>

## Supporting Files

- Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language` for the full design system (typography scale, OKLCH color palette, spacing, motion, component patterns, layout grids)
- Read `references/asset-direction.md` for photography direction, video walkthrough guidance, data-as-visual patterns, and verified starter assets
- Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/anti-patterns` for domain-specific failure modes across visual, structural, content, and UX categories
- Load `assets/tokens.dtcg.json` when generating code -- contains all OKLCH color tokens, semantic tokens (material colors, listing states), and typography composites
- Inspect `assets/exhibit.html` as the reference implementation -- ~38KB, video hero + 7 photos + 10 sections

## Default Workflow

1. Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language` to internalize the warm cream palette, two-font system, zero-radius policy, and component patterns.
2. Read `references/asset-direction.md` to understand photography subjects, video direction, and data-as-visual patterns for real estate.
3. Load `assets/tokens.dtcg.json` for exact token values when writing CSS custom properties.
4. Build: video hero with property -> intro -> gallery -> specs -> listing cards -> interior photo -> features -> quote break -> neighborhood -> inquiry -> footer.
5. Self-critique against hard constraints and `https://joincommons.cc/api/items/immersive-depth-realestate/raw/anti-patterns` before shipping.

## When to Use

- Luxury real estate property listing
- High-end property portfolio website
- Architectural showcase or virtual tour landing
- Boutique real estate agency website
- Editorial property magazine layout
- Private estate sales platform

## When Not to Use

- MLS/Zillow-style search-first property search
- Affordable housing or rental listing platform
- Commercial real estate with data tables and analytics
- Property management dashboard
- Real estate agent team page with headshots
