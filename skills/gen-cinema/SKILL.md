---
name: gen-cinema
slug: gen-cinema
description: Cinematic AI video generation studio for filmmakers. Warm amber-on-dark palette with Syne display and Newsreader serif body, zero border-radius, video-as-content hero with generation prompt typewriter demo. Filmmaker-native terminology throughout.
metadata: design-skill
---

# Gen Cinema

<design-system>

## Identity
- **Who**: Independent filmmakers who can't afford helicopter shots. Music video directors pitching 30 visual concepts before label approval. Agency creative directors building AI sizzle reels. Documentary editors who need B-roll of places they can't revisit. They think in shots, cuts, camera angles, and color grades — not prompts.
- **What**: AI video generation studio that takes text descriptions and outputs cinema-grade 4K video with precise camera motion control, consistent character identity, and photorealistic physics.
- **Vibe**: Runway's confidence (dark, cinematic, outputs ARE the marketing) meets Apple product reveals ("shot on iPhone" energy — letting the output speak)
- **Core Principle**: The page should feel like the output of the tool itself — cinematic, moving, directed — not a website about a video tool.
- **Visual Vibe**: Projection-room warmth, amber light on dark surfaces, screening-room intimacy, editorial confidence, auteur credibility, dramatic scale, tactile film grain, unhurried pacing
- **Domain conventions**: Shot types (dolly, crane, steadicam, orbit), lens language (anamorphic, 35mm, 85mm), color temperature in Kelvin, frame rates (24/30/60/120fps), export formats (ProRes, EXR, H.265), color science (ACES), film stocks (Kodak 5219, Fuji Eterna)

## Signature Moves
1. **Typewriter prompt**: The generation prompt types out character-by-character when scrolled into view — the interaction IS the product demo
2. **Video-as-hero content**: The hero video is treated as generated output, not ambient background — positioned as "this is what we made"
3. **Warm amber palette**: Projection-room warmth instead of the expected dark-blue tech aesthetic — immediately differentiates from Runway/Pika/Sora
4. **Filmmaker-native language**: Every label uses real cinematography terminology (dolly, crane, anamorphic, ACES AP1) — no simplification for non-filmmakers
5. **Infinite reel scroll**: Community outputs scroll horizontally with their generation prompts as italic captions — combining portfolio and social proof
6. **No border-radius anywhere**: Sharp 0px radius on all containers, buttons, cards, badges — echoes the geometric precision of film frames and viewfinders
7. **Serif body text**: Newsreader italic for descriptions creates a film journal editorial feel unique in the catalog
8. **Camera motion controls as keyboard shortcuts**: Technical list of physical camera paths, not feature cards — speaks directly to filmmakers

## Hard Constraints
- Zero border-radius on all elements. Only circular status dots (border-radius: 50%) are exempt. One rounded button breaks the entire system.
- All neutrals warm-tinted toward hue 55-75. Never use chroma-0 pure gray or cool-tinted neutrals.
- Video at full visibility. Never reduce video opacity below 1.0. Gradient overlays for text legibility only, not atmosphere.
- Syne for display/labels/buttons. Newsreader for body/descriptions/prompts. Never swap or substitute.
- All filmmaking terminology must be real. Kodak 5219, ACES AP1, ProRes 4444 are real standards. Inventing fake terms destroys credibility.

## Anti-Patterns
- NOT cyan/blue/purple neon-on-dark — the generic AI palette; filmmakers distrust Silicon Valley aesthetics
- NOT glassmorphism or glow borders — decorative frost without purpose
- NOT video as ambient wallpaper at low opacity — video is CONTENT representing generated output
- NOT generic SaaS hero > features > pricing > CTA structure — sections must be product-native
- NOT simplified terminology — "Forward camera movement" instead of "Dolly" destroys credibility
- NOT AI-generated human faces — uncanny valley destroys filmmaker trust
- NOT a video editing timeline or NLE interface — this is generation, not post-production
- NOT stock footage marketplace — these are generated shots, not clips for sale

## Section Archetypes
- **Generation prompt demo**: Live typewriter prompt that materializes into video — the core product interaction
- **Style preset library**: Cinematic style cards with real photographic references — Golden Hour Aerial, Neon Trails, Tungsten Interior, etc.
- **Camera motion controls**: Technical list of physical camera paths (dolly, crane, steadicam, orbit) with keyboard shortcuts
- **Community reel**: Horizontal scrolling strip of generated outputs with their prompts as captions
- **Technical specs**: Resolution, framerate, generation time, character consistency — the numbers filmmakers care about
- **Filmmaker workflow**: Three-step process in filmmaking language (write the scene, direct the camera, export and cut)

## Hero Archetype
Video as CONTENT — a dramatic aerial landscape video represents what the tool generates. The hero IS an example output. The video plays full-bleed behind bold typography. Not ambient wallpaper at low opacity — actual cinematic footage that demonstrates the product's capability.

## Asset Direction
- **Video**: Dramatic landscapes, aerial cinematography, sweeping natural motion — representing what the AI generates
- **Photography**: Cinematic landscapes for style preset cards (golden hour aerials, ocean aerials, neon cityscapes, moody interiors, mountain roads)
- **Data-as-visual**: Generation prompts in filmmaker language. Technical specs (4K, 120fps, 3.2s, 97% consistency).
- **Typography-as-art**: Syne 800 at poster scale for hero and CTAs
- **What NOT to show**: No editing timelines. No stock photos of people at computers. No AI-generated faces.

## Typography
- **Syne** (display, 400-800): Geometric, bold, poster-weight. WHY: filmmakers are visual thinkers — the type needs to feel like a movie poster, not a SaaS landing page.
- **Newsreader** (body, 300-500 + italic): Optical-size serif. WHY: filmmakers read long-form (treatments, scripts). A serif creates editorial gravitas while the italic serves cinematic descriptions naturally.

## Color
- `oklch(0.10 0.015 55)` — deep warm black (bg) — projection room darkness
- `oklch(0.14 0.012 55)` — surface — panels, terminal backgrounds
- `oklch(0.78 0.15 75)` — amber accent — projector light, CTAs, key values
- `oklch(0.55 0.1 75)` — dim amber — labels, eyebrows
- `oklch(0.92 0.015 70)` — warm white text — tinted toward amber
- `oklch(0.65 0.02 60)` — secondary text — warm gray
- `oklch(0.7 0.14 145)` — generation active — status indicators
- `oklch(0.72 0.1 140)` — fps badge — technical spec color

## Supporting Files
- `https://joincommons.cc/api/items/gen-cinema/raw/design-language` — Full visual system: colors, typography scale, spacing, motion, component patterns
- `references/asset-direction.md` — Photography and video sourcing direction with verified starter asset URLs
- `https://joincommons.cc/api/items/gen-cinema/raw/anti-patterns` — Domain-specific visual, structural, content, and UX traps to avoid
- `assets/tokens.dtcg.json` — DTCG design tokens with color, semantic, and typography groups
- `assets/exhibit.html` — Reference implementation (self-contained HTML with all sections)

## Workflow
1. Read `https://joincommons.cc/api/items/gen-cinema/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Read `assets/tokens.dtcg.json` for exact token values
4. Study `assets/exhibit.html` as the reference implementation
5. Build following the product world and design system above
6. Self-critique against `https://joincommons.cc/api/items/gen-cinema/raw/anti-patterns`

## Gotchas
- Never use cool-tinted blues or purples — a single blue element breaks the projection-room atmosphere
- Don't show AI-generated human faces — show landscapes, abstracts, light, and motion instead
- The typewriter prompt must use real filmmaking terminology — "golden hour tracking shot" not "beautiful sunset video"
- Video must be treated as CONTENT (what the tool generates), never as ambient decoration at low opacity
- Avoid generic SaaS metrics (users, revenue, growth) — use filmmaker metrics: resolution, framerate, generation speed, character consistency
- Body text is serif (Newsreader), not sans-serif — swapping to a sans body kills the editorial gravitas

</design-system>
