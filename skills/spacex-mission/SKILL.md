---
name: spacex-mission
slug: spacex-mission
description: Cinematic full-viewport aerospace experience where photography IS the design. Pure black canvas with spectral white industrial typography, full-bleed rocket launch imagery, zero UI chrome, and documentary-style scroll-snap pacing. Barlow (DIN-heritage) in universal uppercase.
metadata: design-skill
---

# SpaceX Mission

<design-system>

## Identity
A cinematic aerospace experience where the interface disappears behind full-viewport photography of rockets, flame, and the void. This is spacex.com's visual philosophy: pure black canvas, spectral white industrial typography in universal uppercase, full-bleed photography at every section, and zero UI chrome. The page is a documentary film, not a website. Each section is a scene. Each scroll-snap is a cut. The photography IS the design.

## Product World
- **Who**: Space enthusiasts who set alarms for 3am launches. Aerospace engineers who dream of Mars architecture. Students studying orbital mechanics. Government program managers evaluating launch providers. Investors tracking commercial space economics. They share one trait: AWE at engineering that makes the impossible routine.
- **What**: SpaceX builds rockets that land themselves, spacecraft that carry astronauts, and Starship -- the vehicle designed to make humanity multiplanetary.
- **Vibe**: IMAX space documentary meets German industrial signage -- spacex.com crossed with a mission control briefing room.
- **Domain conventions**: Mission designations (CRS-31, Crew-12, Starlink Group 12-5), vehicle nomenclature (Falcon 9, Falcon Heavy, Starship, Dragon, Super Heavy), orbital parameters (LEO, GTO, SSO, MEO), payload mass in metric tons, launch cadence as annual count.

## Signature Moves
1. **Zero containers** -- no cards, no panels, no boxes. Text floats directly on photography. The absence of UI chrome IS the design.
2. **Universal uppercase** -- every text element uses text-transform: uppercase. Communication reads like mission briefing documentation stenciled on a hull.
3. **Positive letter-spacing everywhere** -- 0.06em on display, 0.09em on nav, 0.1em on micro labels. The tracked-out stencil connects to DIN's heritage as a German engineering standard.
4. **Scroll-snap cinematic pacing** -- each section is exactly 100vh, snapping into place like frames in a documentary. You advance through scenes.
5. **One button variant** -- the ghost button is the only interactive element. Transparent bg, spectral border, 32px radius. Floats like a heads-up display over imagery.
6. **Photography at natural visibility** -- images at full opacity with only gradient overlays where text needs legibility. No dimming, no filters.
7. **Stats as typography-as-art** -- large numbers (330+, 150t, 4M+) in bold industrial type become visual anchors as powerful as the photography.

## Hard Constraints
1. Dark mode only -- pure black background, spectral white text. No light theme exists or should exist. Two colors only: space black (#000000) and spectral white (#f0f0fa) -- photography provides all chromatic color
2. Universal uppercase with positive letter-spacing -- no sentence case, no lowercase, no exceptions
3. Every section exactly 100vh -- full-viewport photography at every scroll snap
4. Zero containers, zero shadows, zero cards -- text on photography is the only surface relationship
5. Barlow (DIN-heritage) as the single font family, weights 400 and 700 only
6. Photography at minimum 0.7 opacity (video) or natural visibility (stills) -- gradient overlays only where text sits
7. Ghost button as sole interactive element: rgba(240,240,250,0.1) bg, rgba(240,240,250,0.35) border, 32px radius
8. All content references real SpaceX domain data: real mission designations, real vehicle names, real orbital parameters

## Anti-Patterns
1. **Sci-fi UI** -- no cyan/teal neon, no holographic effects, no terminal green, no grid-line backgrounds. SpaceX is real engineering, not a movie prop.
2. **NASA heritage** -- no red/white/blue, no serif fonts, no retro "space age" swooshes or vintage mission patch illustrations.
3. **Color accents** -- no orange for flame, no blue for sky, no green for "go." The photography provides all color. Any UI color makes it a startup, not SpaceX.
4. **Dimmed photography** -- setting images to 15-30% opacity as texture kills the design. If you cant see the photo clearly, its too dim.
5. **SaaS structure** -- no hero with screenshot, no feature grid with icons, no pricing table, no testimonials carousel. This is a cinematic experience.
6. **Cards or containers** -- wrapping content in panels destroys the photographic plane. Text on photography, always.
7. **Lowercase text** -- one sentence-case heading breaks the industrial voice. Everything uppercase.
8. **Decorative elements** -- no icons, no badges, no divider flourishes, no particles. Photography + type + one button.

## Visual Vibe
Cinematic, industrial, mission-critical, monolithic, awe-inspiring, void-black, stenciled, reductive, documentary, unapologetic.
Real-world references: IMAX space films, Dieter Rams industrial objects, NASA mission patches, DIN engineering standards, A24's minimal film posters.

## Section Archetypes
- **Vehicle profile**: Full-viewport photo, vehicle name as headline, operational stats (launches/landings/reflights), single ghost CTA
- **Mission manifest**: Grid of upcoming mission designations with orbit type and timeline -- reads like a launch schedule board
- **Capability showcase**: One vehicle, one stat cluster (payload, dimensions, engine count) -- engineering specs, not marketing
- **Constellation status**: Satellite count, subscriber count, coverage -- operational telemetry, not product marketing
- **Hero scene**: Full-bleed launch video with mission statement typography -- the opening shot of a documentary

## Hero Archetype
**Video + industrial typography.** A rocket launch video fills the entire viewport -- not as ambient wallpaper but as hero content. Typography overlays directly on the footage. WHY: SpaceX's product IS the spectacle of a rocket launching. Nothing communicates this better than footage of fire pushing metal into orbit. The video is not decoration -- it IS what SpaceX does.

## Asset Direction
- **Photography**: Real aerospace photography -- rockets in flight, launch plumes, night launches with ocean reflections. Subjects are always the HARDWARE and the FLAME, not people or interiors.
- **Video**: Launch footage, full sequence from ignition through ascent. Full-bleed hero bg. Minimum 0.7 opacity.
- **Data-as-visual**: Mission designations, payload specs, orbital parameters, launch cadence. Large stat clusters in industrial type are visual elements.
- **What NOT to show**: Astronaut portraits, Earth-from-space overviews, CGI renders, corporate headshots, factory interiors.

## Typography
**Barlow** (Google Fonts) -- DIN-heritage geometric sans-serif capturing the German industrial standard aesthetic. SpaceX uses D-DIN (proprietary); Barlow is the closest open-source equivalent. ALL text uppercase with positive letter-spacing creates the stenciled feel of text printed on spacecraft hulls. Two weights only: 700 headlines, 400 body. WHY: aerospace engineering communicates in labels and specifications, never in prose.

## Color
Two values only -- everything else is opacity:

| Token | Value | Meaning |
|-------|-------|---------|
| space-black | oklch(0% 0 0) / #000000 | Void canvas, background |
| spectral-white | oklch(95.5% 0.015 280) / #f0f0fa | All text, blue-violet starlight tint |
| ghost-surface | spectral at 10% | Button background |
| ghost-border | spectral at 35% | Button border, HUD edges |
| overlay | black at 50% | Text legibility gradient |
| text-secondary | spectral at 75% | Subline text |
| text-label | spectral at 60% | Section labels |
| text-micro | spectral at 45% | Manifest details, stat labels |
| text-footer | spectral at 35% | Footer, lowest hierarchy |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/spacex-mission/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing, motion, component patterns, layout |
| `references/asset-direction.md` | Asset sourcing: photography subjects, video direction, data-as-visual, verified starter URLs |
| `https://joincommons.cc/api/items/spacex-mission/raw/anti-patterns` | 20 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (opacity hierarchy, status), typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit with 6 full-viewport scenes |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>
