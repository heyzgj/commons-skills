---
name: motion-designer-reel
description: Cinematic dark portfolio for freelance motion designers built on video-as-content. Full-screen autoplaying showreel as hero, project breakdowns with video-on-hover, inline detail accordion, client ticker, awards table. Warm charcoal ground (oklch 0.10 hue 60), Schibsted Grotesk display + Karla body. For creative directors at agencies and in-house brand teams who evaluate portfolios in 15 seconds.
metadata: design-skill
---

# Motion Designer Reel

<design-system>

## Identity

A screening room rendered as a website where the showreel IS the hero — no gate, no intro, just moving images filling the viewport the moment you land. Dark warm-charcoal palette with amber accents. Full-screen autoplaying reel, project breakdowns with video-on-hover and inline detail expansion, client ticker as continuously scrolling typography, awards as a structured table. Built for creative directors at top agencies (Wieden+Kennedy, Droga5, Mother) and in-house brand teams (Apple, Nike, Spotify) who evaluate 50 portfolios a week and give each 15 seconds. The reel grabs them or they leave. Inspired by buck.tv (work fills every pixel, site disappears behind content) and gmunk.com (cinematic personal brand, dark, immersive). Domain conventions: showreel autoplays, projects organized by type (title sequence, brand film, music video, installation), each project shows brief/approach/tools. Industry terminology: cel animation, procedural motion, compositing, flocking simulations, easing curves, render pipelines.

## Core Design Language

- **Colors**: Warm-tinted OKLCH dark neutrals (hue 55-65). Background oklch(0.10 0.008 60) warm charcoal, elevated oklch(0.14 0.010 60), hover oklch(0.18 0.012 55), text oklch(0.93 0.005 80) warm off-white, muted text oklch(0.58 0.010 65), faint text oklch(0.40 0.008 60), accent oklch(0.72 0.14 55) amber, dim accent oklch(0.55 0.10 55), border oklch(0.22 0.008 60). Category semantics: amber (brand), violet oklch(0.70 0.12 290) (title sequences), rose oklch(0.68 0.14 340) (music videos), teal oklch(0.70 0.10 170) (installations). No pure black, no pure white, no cold blue-tinted blacks.
- **Typography**: Schibsted Grotesk 400-900 for display — hero name, project titles, process numbers, headings, nav. Karla 300-700 for body — descriptions, labels, bio text, tool tags. Two fonts, strict roles. Display uses negative letter-spacing at large sizes, positive at small. Body line-height 1.65-1.75 for dark bg readability.
- **Spacing**: 4px base grid. Section padding 96px vertical, 32px horizontal. Section labels 48px above content. Border-top dividers between all major sections. Hero bleeds to edges with no padding.
- **Radius**: 0px everywhere. Square edges. Cinematic precision. Only exception: 2px on micro category pills.
- **Motion**: ease-out-quart (0.25,1,0.5,1) for reveals and entrances, 800ms. ease-out-expo (0.16,1,0.3,1) for snappy interactions. 120ms hover feedback, 280ms state changes, 500ms layout changes. Transform + opacity only. Full reduced-motion support.

## Signature Moves

1. **Full-screen reel as hero** — The showreel autoplays immediately. No click gate, no intro text, no hero headline blocking the footage. Video fills the viewport. A scrim gradient at the bottom anchors the name. The visitor walks into a screening already in progress.
2. **Nav invisible on landing** — Fades in with backdrop-blur only after scrolling past 70% of the hero. The first viewport is 100% video content.
3. **Projects play video on hover** — Still images are the resting state, slightly desaturated (grayscale 0.15, brightness 0.85). Hovering triggers a looping video preview and the image brightens to full color. The portfolio literally moves when you engage with it.
4. **Cinematic aspect ratios** — Featured projects use 2.35:1 (anamorphic widescreen), standard projects use 16:9. This signals film literacy and distinguishes from standard web layouts.
5. **Project detail accordion** — Click a project card to expand brief, approach, and tools inline. No modal, no page navigation. The viewing experience is continuous, like scrubbing a timeline.
6. **Client ticker** — Continuously scrolling bold display typography instead of a static logo grid. Pauses on hover. Motion on a motion designer's site — the ticker is a design statement.
7. **Warm-tinted blacks** — Every neutral carries hue 55-65 (brown/amber tint). This creates the warmth of a cinema, not the coldness of a tech product.
8. **Scroll-pulse** — The scroll hint is an amber line pulse traveling down a 1px rule. A micro piece of motion design on the motion designer's site.

## Hard Constraints

- Dark mode only — warm charcoal is load-bearing atmosphere, not a theme toggle
- No reel gate — video autoplays immediately with `muted` + `playsinline` attributes
- No modals — project details expand inline as accordion
- Schibsted Grotesk for display, Karla for body — no role mixing
- All project preview videos use `preload="none"` to prevent 50MB+ initial page load
- Nav invisible on load — fades in only after scrolling past 70% of hero height
- No border-radius on major elements — square edges throughout
- No shadows — depth via surface color shifts only

## Anti-Patterns

- NOT a Behance/Dribbble gallery grid with thumbnails and like counts — this is a screening room
- NOT a creative agency website with "Our Services" and "Our Team" sections
- NOT bright or colorful — the only color comes from the work itself and category indicators
- NOT gated behind a "Watch Reel" button or splash screen
- NOT glassmorphic or glossy — matte, physical, warm
- NOT blue-black or cold — warm brown-tinted blacks only
- NOT over-animated on the page itself — the WORK provides motion, the site is a calm frame
- NOT generic creative copy like "passionate creator" or "where art meets technology"

## Section Archetypes

1. **Full-screen reel** — Autoplay, muted, looping showreel with video progress bar and click-to-pause
2. **Project breakdowns** — Cards with video-on-hover, category pills, inline detail expansion
3. **Process narrative** — Three domain-specific steps (understand the feeling, design in motion, deliver the system)
4. **Client ticker** — Scrolling typography as social proof and visual rhythm
5. **About** — Photo + bio + stats (years, projects, awards)
6. **Awards table** — Structured rows: award name, project, year
7. **Contact invitation** — "Let's make something move." Email CTA. Current availability.

## Supporting Files

- `https://joincommons.cc/api/items/motion-designer-reel/raw/design-language` — Complete visual system: full OKLCH palette, typography scale, spacing, motion tokens, component patterns, layout grid
- `references/asset-direction.md` — Video sourcing (showreel, preview clips), photography direction (production stills), typography-as-art patterns, verified starter assets
- `https://joincommons.cc/api/items/motion-designer-reel/raw/anti-patterns` — Domain-specific traps across visual, structural, content, and UX categories
- `assets/tokens.dtcg.json` — DTCG format tokens: color (base palette), semantic (category colors, progress, states), typography (all type roles)
- `assets/exhibit.html` — Reference implementation: self-contained HTML with full-screen video hero, 5 project cards, process section, client ticker, about, awards, contact
- `assets/design-skill.json` — V1 manifest with discovery, coaching, and style identity metadata

## Workflow

1. Read `https://joincommons.cc/api/items/motion-designer-reel/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for video sourcing and photography direction
3. Build the reel-first experience — video must autoplay before anything else loads
4. Self-critique against `https://joincommons.cc/api/items/motion-designer-reel/raw/anti-patterns`

## Gotchas

- Video autoplay requires `muted` and `playsinline` attributes — browsers block unmuted autoplay
- Dark themes need increased line-height on body text (add +0.1 to normal) for readability
- The nav transition from invisible to visible must be smooth — jarring appearance breaks the cinematic feel
- Project hover videos need `preload="none"` to avoid loading all videos on page load
- Client ticker needs duplicated content for seamless loop — one copy isn't enough
- Awards table must use `font-variant-numeric: tabular-nums` for year column alignment
- The hero scrim gradient must be subtle enough not to obscure the video but strong enough to make the name readable

</design-system>
