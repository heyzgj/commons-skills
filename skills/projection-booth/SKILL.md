---
name: projection-booth
description: A motion designer portfolio styled as a 16mm film projector screening -- Oswald display, Alegreya serif body, Overpass Mono edge labels, dark OKLCH screening-room palette with warm splice-tape accents, countdown leader entrance, horizontal film-strip scroll with sprocket holes, splice-tape dividers, projector beam with dust particles, film grain overlay, and scroll-reveal sections.
metadata: design-skill
---

# Projection Booth

## What This Skill Does

Routes a 16mm film projector visual system into a single-page portfolio for motion designers, animators, and experimental filmmakers. The browser becomes a darkened screening room -- a countdown leader ticks down before the content "projects" onto the page. Film grain shimmers over everything. A projector beam cuts diagonally with dust particles drifting through it. Projects scroll horizontally as film frames with sprocket holes. Splice tape dividers separate sections like physical film edits.

Three typefaces carry strict roles: Oswald for display and section titles, Alegreya for body prose and statements, Overpass Mono for edge numbers and technical labels.

## When to Use

- Motion designer, animator, or experimental filmmaker portfolio
- Film festival submission reel or screening invitation page
- Title designer or VFX artist showcase
- Stop-motion or hand-drawn animation artist portfolio
- Film school graduate portfolio or personal reel page

## When Not to Use

- Light-theme or corporate dashboards -- the dark screening room will not adapt
- E-commerce or product catalogs -- no commerce patterns
- Text-heavy editorial or blog -- sections are sparse, image/art-driven
- SaaS landing pages -- no pricing tables, feature grids, or CTA funnels

## Design Direction

**Tone extreme:** You are sitting in a darkened screening room. The projector rattles behind you, dust drifts through the beam, and a countdown leader ticks 5-4-3-2 before the first frame appears on screen.

**The ONE memorable thing:** The countdown leader entrance -- concentric circles, crosshairs, a rotating sweep hand, and numbers flash 5-4-3-2 before the overlay fades and the portfolio content is "projected."

**Reference sites:** mubi.com (editorial film tone), criterion.com (cinephile hierarchy), shorts.tv (short film showcases).

## Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/projection-booth/raw/design-language` for the full color system (9 OKLCH tokens), three-font hierarchy, layout patterns, motion specs, and signature moves.
2. **Load image kit** -- read `https://joincommons.cc/api/items/projection-booth/raw/image-kit` for guidance on CSS art vs photography and how each film frame uses generated visuals.
3. **Build** -- construct a single-page layout: countdown leader entrance, hero with eyebrow/title/subtitle/meta, horizontal film strip with sprocket-hole frames, splice-tape dividers, director's statement, reel section with disc SVG, credentials grid, contact/end-leader section, tail leader footer.
4. **Self-critique** -- read `https://joincommons.cc/api/items/projection-booth/raw/anti-patterns` and verify against the checklist.

## Color Palette (9 tokens)

| Token                | OKLCH                   | Role                         |
| -------------------- | ----------------------- | ---------------------------- |
| `--screening-room`   | `0.10 0.01 30`          | Page background              |
| `--projected-light`  | `0.92 0.03 80`          | Primary text, body           |
| `--film-edge`        | `0.20 0.02 40`          | Card/frame surfaces          |
| `--splice-tape`      | `0.65 0.08 70`          | Primary accent, labels       |
| `--sprocket-hole`    | `0.08 0 0`              | Sprocket cutouts             |
| `--edge-numbers`     | `0.45 0.03 60`          | Secondary text, meta         |
| `--title-card`       | `0.95 0 0`              | Display headings, hero       |
| `--grain-tint`       | `0.80 0.05 75 / 0.04`   | Film grain tint              |
| `--mid-warm`         | `0.35 0.03 50`          | Splice mark lines            |

## Typography (3 fonts, strict roles)

- **Oswald** (400-700) -- display headings, hero title, section titles, countdown numbers, frame titles
- **Alegreya** (400-500, italic) -- body prose, director's statement, hero meta, credential items
- **Overpass Mono** (400) -- edge numbers, eyebrow labels, frame types, contact links, technical metadata

## Key Structural Rules

- Dark theme only. Background `oklch(0.10 0.01 30)`, no light mode.
- Countdown leader: concentric circles + crosshairs + sweep arm, numbers flash 5-4-3-2, `count-flash` 1s ease, overlay fades out in 0.6s.
- Film strip: horizontal scroll with `cursor: grab`, drag-to-scroll, frames 280px wide, sprocket holes on left/right columns.
- Splice-tape dividers: dashed repeating-linear-gradient line at slight angle (-0.8deg), translucent tape bar with mono label.
- Projector beam: fixed conic-gradient from upper-right, 60vw wide, near-invisible warm light.
- Dust particles: fixed, 18 spawned, random size/position/drift, `dust-float` animation with variable opacity.
- Film grain: fixed overlay, SVG feTurbulence noise, 0.45 opacity, `mix-blend-mode: overlay`, shifting every 0.5s.
- Vignette: fixed radial-gradient darkening edges, `z-index: 8`.
- Edge numbers: fixed left column, vertical text, scroll-synced offset.
- Scroll reveal: `translateY(20px)`, 0.8s, `cubic-bezier(0.16, 1, 0.3, 1)`, IntersectionObserver threshold 0.15.
- All project visuals are CSS art (gradients, patterns, clip-paths) -- no external images needed.

## Supporting Files

- `https://joincommons.cc/api/items/projection-booth/raw/design-language`: full design system -- colors, typography, layout, motion, signatures.
- `https://joincommons.cc/api/items/projection-booth/raw/image-kit`: CSS art guidance per frame, photography direction.
- `https://joincommons.cc/api/items/projection-booth/raw/anti-patterns`: 7 traps, AI slop checklist, self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for colors, sizes, weights, spacing, animation.
- `assets/exhibit.html`: proof-of-concept -- a fictional motion designer portfolio.

## Gotchas

1. **Do not skip the countdown leader.** The 5-4-3-2 countdown is the signature entrance. Without it, this is a generic dark portfolio.
2. **Do not remove the film grain.** The feTurbulence grain overlay is what makes the page feel like projected film. Removing it kills the metaphor.
3. **Do not brighten the background.** The `oklch(0.10 0.01 30)` screening room darkness is essential. Anything above 0.15 lightness breaks immersion.
4. **Do not replace CSS art with stock photos.** Each film frame uses hand-crafted CSS gradients and patterns. Generic stock images would destroy the handmade quality.
5. **Do not add a fourth font.** Oswald, Alegreya, Overpass Mono. No exceptions.
6. **Do not flatten the film strip.** The horizontal scroll with sprocket holes is a core structural metaphor. Vertical card grids lose the filmstrip feel.
7. **Do not forget splice-tape dividers.** The angled dashed lines with translucent tape simulate physical film splices between sections.
