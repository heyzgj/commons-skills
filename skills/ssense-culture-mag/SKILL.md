---
name: ssense-culture-mag
slug: ssense-culture-mag
description: Bold digital culture magazine with extreme typographic scale, ink-on-paper contrast, and a single electric vermillion accent. Cormorant Garamond at viewport-width, Archivo grotesque, asymmetric poster grids, video heroes.
category: editorial
version: 1.0.0
---

# VOLUME Culture Magazine -- Design Skill

A design skill for bold digital culture magazines where editorial ambition meets typographic extremism -- fashion, music, art, and ideas presented with the conviction that culture deserves better than a blog.

<design-system>

## Product World
- **Who**: Culturally engaged 20-somethings in creative industries. They follow fashion shows and read philosophy. They're on Are.na, not Pinterest. They read Granta, watch A24 films, own vintage Margiela, and have opinions about Brutalist architecture. They judge publications by ambition.
- **What**: A digital culture magazine covering fashion, music, art, and ideas with sharp editorial voice and extreme typographic confidence
- **Vibe**: SSENSE Everything meets Dazed Digital -- huge serif headlines, stark contrast, photography used at scale, cerebral but never boring
- **Domain conventions**: Issue numbers, cover stories, bylines with reading time, category tags (FASHION, MUSIC, ART, IDEAS), pull quotes with attribution, photo credits, masthead navigation, contributor pitching

## Core Principle
Every page is a poster. The typography is so large it becomes architecture -- the headline IS the design, the whitespace IS the statement, and the photography IS the argument.

## Identity
An editorial art director who believes every page should be a poster -- typography at architectural scale, photography used singular and large, chromatic restraint as editorial authority. The magazine speaks through its headlines, not through decoration.

## Visual Vibe
Editorial gravitas, typographic extremism, intellectual provocation, fashion-forward, SSENSE stark contrast, Dazed confidence, A24 restraint-meets-ambition, magazine-as-object, serif authority, cultural weight

## What It's NOT
- NOT a collage/zine aesthetic (no rotated photos, no halftone dots, no punk noise -- this is editorial precision)
- NOT quiet minimalism (Kinfolk, Cereal -- this is LOUD through scale, not through chaos)
- NOT a blog with a grid of thumbnails (each article is a poster, not a list item)
- NOT dark-mode-first neon tech (the base is warm paper white, black ink, one electric accent)
- NOT a Squarespace template (no equal-height card grids, no icon-above-heading patterns)
- NOT decorative (no gradients, no glassmorphism, no film grain -- the content IS the decoration)

## Signature Moves
1. **Hero headline at 12vw serif** -- the title is physically massive, readable from across a room. This IS the brand statement.
2. **Asymmetric poster grid (1.3fr / 1fr)** -- the featured article dominates; sidebar articles are subordinate. Never equal.
3. **Single accent color (vermillion)** at high chroma -- used only for category tags, marked quote words, and kickers. The restraint makes it electric.
4. **Pull quote section at display-lg scale** with ghost quotation mark at 20rem -- the quote becomes an architectural element.
5. **Numbered dispatch items with ghost numerals** (4rem, 6% opacity) -- editorial convention turned typographic rhythm.
6. **Vertical "VOLUME" ghost text** in manifesto section -- the brand name as structural element, not logo placement.
7. **1px grid dividers instead of cards** -- content separated by negative space and hairline rules, not containers.
8. **Mono metadata register** -- every timestamp, reading time, byline, and credit uses JetBrains Mono, creating a consistent "infrastructure" layer beneath the editorial content.

## Hard Constraints
- One accent color only (vermillion oklch 0.62 0.24 28) -- restraint creates impact
- Zero border-radius -- editorial geometry is always sharp
- Serif for content, sans for infrastructure, mono for metadata -- never mix registers
- Video is atmosphere behind gradient overlay -- remove it and the design still works
- Article grids must be asymmetric -- equal columns produce blogs, not magazines
- Pull quotes must be attributed to real cultural figures with real titles

## Anti-Patterns
- Using rotated/tilted photos or collage-style overlapping (this is precision, not punk)
- Adding a second accent color beyond vermillion
- Equal-height card grids for articles (must be asymmetric)
- Generic SaaS structure (hero > features > metrics > CTA)
- Rounded corners on any element
- Glassmorphism or decorative gradients
- Listicle-style article titles ("Top 10 Trends") instead of provocative editorial headlines
- Infinite scroll (this is a finite issue with editorial pacing)

## Section Archetypes
- **Cover story hero**: Full-bleed video/photography with massive serif headline overlaid. ONE dominant visual, headline at viewport-width scale, byline as supporting whisper. This is the magazine cover.
- **Masthead strip**: Black bar with publication name at display weight, category ticker, tagline in italic serif. Anchors the brand between cover and content.
- **Poster feed**: Asymmetric article grid (1.3fr / 1fr). Featured piece spans two rows. Each article presented poster-style: large image, serif headline, excerpt, mono metadata. Never equal columns.
- **Pull quote interstitial**: Full-width black section with massive italic serif quote. Single marked words in accent color. Attribution with em-dash line.
- **Interview feature**: Split-screen -- photography left, editorial content right on warm paper. Kicker, headline, subject name in sans caps, bordered excerpt in italic serif, arrow CTA.
- **Culture dispatch**: Numbered 4-column grid with 1px dividers. Category tag, serif title, author/time. This is the rapid-fire culture radar.
- **Manifesto/about**: Dark section with vertical ghost typography. Statement in serif with accent-colored emphasis words. Email subscribe form.

## Hero Archetype
Video-typography. The hero uses a full-bleed looping fashion video with heavy gradient overlay (0.92 opacity at bottom fading to 0.05 at top). The serif headline at 12vw IS the hero -- the video provides atmosphere and movement, the typography provides the statement. This is an SSENSE editorial cover, not a SaaS landing page.

## Asset Direction
- **Photography**: Editorial fashion and street culture. Confident poses, strong compositions, not posed commercial shots. Pexels editorial-style works; avoid headshots and stock corporate imagery.
- **Video**: Fashion/culture mood footage used as cover-story atmosphere with gradient overlay, never as a content piece.
- **Typography-as-art**: The primary visual asset. Headlines at 12vw, dispatch numbers at 4rem as ghost numerals, vertical publication name as architectural element.
- **Data patterns**: Issue numbers (Issue 037), reading times (22 min), section counts (12 essays this week), ISSN numbers.
- **What NOT to show**: Stock photography of people at laptops, posed group shots, flat-lay product photos, AI-generated illustrations.

## Typography
- **Cormorant Garamond 400/600/700 + italic**: Editorial serif display. High-contrast letterforms. Used at extreme sizes (12vw hero, 3.5rem features, 5.5rem quotes). WHY: Intellectual weight without stuffiness; reads as "magazine," not "newspaper."
- **Archivo 400-900**: Geometric grotesque for navigation, labels, section headers, and body. WHY: Wide weight range (400 body to 900 masthead) creates hierarchy within a single family.
- **JetBrains Mono 400/500**: Metadata, tags, timestamps, credits. WHY: Monospace signals editorial infrastructure -- category tags, reading times, and bylines all belong to the institutional register.

## Color
- `oklch(0.08 0.01 50)` -- **ink**: near-black with warm tint. Text, mastheads, dark sections. NOT pure black.
- `oklch(0.97 0.005 85)` -- **paper**: warm near-white base. The canvas everything sits on.
- `oklch(0.94 0.01 75)` -- **paper-warm**: slightly warmer for interview backgrounds, hover states.
- `oklch(0.62 0.24 28)` -- **vermillion**: the single electric accent. Category tags, marked words in quotes, kicker lines, hover states. High chroma, warm red-orange. Used sparingly -- 5% of the page.
- `oklch(0.25 0.01 50)` -- **ink-soft**: secondary text, excerpts.
- `oklch(0.45 0.01 50)` -- **ink-muted**: metadata, timestamps, captions.
- `oklch(0.92 0.015 80)` -- **ivory**: subtle surface variation.

## Workflow
1. Read `https://joincommons.cc/api/items/ssense-culture-mag/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Read `assets/tokens.dtcg.json` for exact OKLCH values and type tokens
4. Study `assets/exhibit.html` as the reference implementation
5. Build following the product world and design system above
6. Self-critique against `https://joincommons.cc/api/items/ssense-culture-mag/raw/anti-patterns`

## Supporting Files
- `https://joincommons.cc/api/items/ssense-culture-mag/raw/design-language` -- Complete visual system (colors, type scale, spacing, motion, components, layout patterns)
- `references/asset-direction.md` -- Photography/video sourcing direction and verified starter assets
- `https://joincommons.cc/api/items/ssense-culture-mag/raw/anti-patterns` -- Domain-specific traps across visual, structural, content, and UX dimensions
- `assets/tokens.dtcg.json` -- DTCG design tokens (color, semantic, typography)
- `assets/exhibit.html` -- Reference implementation (self-contained, ~32KB)
- `assets/design-skill.json` -- Machine-readable manifest

## Gotchas
1. **Scale is non-negotiable** -- if your hero headline isn't at least 10vw, you're playing it too safe. This design ONLY works at extreme typographic scale. Moderate sizes produce a generic blog.
2. **One accent color, max** -- the vermillion works BECAUSE it's the only color. Add a second accent and the whole palette collapses into a generic multi-color scheme.
3. **Never equal-column article grids** -- the moment all articles are the same size, you've built a blog. The asymmetry IS the editorial hierarchy.
4. **Video is atmosphere, not content** -- the video in the hero could be removed and the design still works. If removing the video breaks the page, you've made it too important.
5. **Serif for content, sans for infrastructure** -- Cormorant Garamond is for headlines, quotes, and article titles. Archivo is for navigation, labels, and body. JetBrains Mono is for metadata. Mixing these registers creates confusion.
6. **Pull quotes must be REAL voices** -- attributed to real cultural figures with real titles. Not marketing copy dressed as wisdom.

</design-system>
