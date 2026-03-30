---
name: stage-door-resume
description: A performing-arts resume rendered as a backstage callboard -- index cards pinned to cork board with show posters, handwritten annotations, colored pushpins, and a waveform voice reel player.
metadata: design-skill
---

# Stage Door Resume

## What This Skill Does

Routes a backstage-callboard visual system into a performing-arts resume or creative-industry portfolio. The design treats career credits as index cards and show posters pinned to a cork board with colored pushpins. Three typographic voices -- Libre Caslon (display/body), Caveat (handwritten annotations), and Overpass (metadata labels) -- create the feeling of a working actor's personal callboard: organized chaos with real personality. No photography; all texture comes from layered CSS gradients simulating cork grain.

## When to Use

- Actor, singer, or voice artist resume / CV
- Theater company cast announcement board
- Performing-arts portfolio with credits, training, and press
- Creative freelancer resume where personality matters more than corporate polish
- Any resume where the content is a list of roles, productions, and skills

## When Not to Use

- Corporate or enterprise job applications -- the casual, handwritten tone reads unprofessional
- Data-heavy dashboards or analytics -- no grid system for dense data
- Photography or visual-art portfolios -- the design is card-based, not image-centric
- Long-form editorial or blog content -- the card metaphor breaks with paragraphs

## Design Direction

**Tone extreme:** The backstage door of a West End theater. You are looking at a working callboard where the stage manager pins call sheets, the director scrawls notes, and someone stuck a review clipping next to a show poster.

**The ONE memorable thing:** Colored pushpins with drop shadows hold slightly-rotated cards on textured cork. Every card has a different tilt. Handwritten annotations in Caveat appear to have been scribbled in pen by the performer themselves.

**Reference sites:** spotlight.com (actor profiles), nationaltheatre.org.uk (backstage culture), youngvic.org (contemporary UK theater).

## Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/stage-door-resume/raw/design-language` for the full OKLCH cork/card palette, three-font hierarchy, card rotation system, and pin placement rules.
2. **Load image kit** -- read `https://joincommons.cc/api/items/stage-door-resume/raw/image-kit`. This design uses zero photography. All texture is CSS-generated cork grain and colored pushpins.
3. **Build** -- construct a `.callboard` wrapper with a `.callboard-layout` CSS grid. Place content in card types: `.index-card` for credits, `.show-poster` for featured productions, `.training-card` for education, `.review-strip` for press, `.now-playing-card` for current work, `.business-card` for contact.
4. **Self-critique** -- read `https://joincommons.cc/api/items/stage-door-resume/raw/anti-patterns` and verify against the checklist.

## Color Palette (OKLCH)

| Token              | Value                  | Role                          |
| ------------------ | ---------------------- | ----------------------------- |
| `--cork`           | `0.45 0.06 60`        | Board background              |
| `--card-cream`     | `0.96 0.01 85`        | Index card / poster paper     |
| `--pin-red`        | `0.55 0.22 25`        | Primary pin, accent border    |
| `--pin-yellow`     | `0.85 0.15 90`        | Secondary pin                 |
| `--pin-green`      | `0.55 0.15 150`       | Past-production pin           |
| `--pin-blue`       | `0.55 0.15 250`       | Review/award pin              |
| `--poster-dark`    | `0.20 0.03 30`        | Dark poster background        |
| `--poster-wine`    | `0.28 0.08 15`        | Wine poster background        |
| `--poster-navy`    | `0.22 0.05 260`       | Navy poster background        |
| `--text-dark`      | `0.18 0.02 40`        | Primary card text             |
| `--handwriting-blue` | `0.25 0.08 250`     | Handwritten annotation ink    |
| `--handwriting-red`  | `0.40 0.18 25`      | Handwritten annotation ink    |

## Typography (3 families, strict roles)

- **Libre Caslon Display** -- display titles only (name, show titles on posters)
- **Libre Caslon Text** -- body text on cards (character names, quotes, descriptions)
- **Caveat** -- handwritten annotations, section labels on cork, scribbled notes
- **Overpass** -- metadata (venues, dates, subtitles, contact details, uppercase labels)

## Key Structural Rules

- Cork board background via layered `repeating-conic-gradient` + `radial-gradient` on `body::before`.
- Wooden frame border: fixed `div` with `border` + `inset box-shadow`.
- Every card rotated -2deg to +2deg with slight negative margins for overlap.
- Pushpins: 8-10px circles with `border-radius: 50%`, positioned at top-center of cards, with `box-shadow` for depth.
- Show posters: dark backgrounds (navy/wine/charcoal), corner pins, large serif titles.
- Section labels: Caveat on cork, not on cards. Rotated, text-shadow for readability.
- Pin-drop entrance animation: `translateY(-30px)` to `0`, `cubic-bezier(0.22, 1, 0.36, 1)`, staggered 60ms.
- Handwritten annotations: `scribble` keyframe, delayed 1.6s, appear after cards land.
- Voice reel waveform: 48 bars with `waveform-pulse` animation, pausable.
- Responsive: 4-col desktop, 2-col tablet, 1-col mobile. Cards lose overlap margins on mobile.

## Supporting Files

- `https://joincommons.cc/api/items/stage-door-resume/raw/design-language`: full design system -- colors, typography, layout, motion, signatures.
- `https://joincommons.cc/api/items/stage-door-resume/raw/image-kit`: confirms zero-image approach, CSS texture strategy.
- `https://joincommons.cc/api/items/stage-door-resume/raw/anti-patterns`: 7 traps, AI slop checklist, self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for all colors, sizes, weights, spacing, animation.
- `assets/exhibit.html`: proof-of-concept -- a fictional London actor's callboard resume.

## Gotchas

1. **Do not flatten the rotations.** Every card MUST have a unique rotation between -2deg and +2deg. Aligned cards destroy the callboard metaphor.
2. **Do not skip pushpins.** Every card needs a colored pin at top-center. Without pins, cards look pasted, not pinned.
3. **Do not use photographs.** All texture is CSS. Cork grain = layered gradients. Adding photos breaks the handmade feel.
4. **Do not cross font roles.** Caveat is ONLY for handwritten notes and section labels. Overpass is ONLY for metadata. Libre Caslon is ONLY for titles and body.
5. **Do not make cards uniform.** Vary rotation, margin offsets, pin colors, and card types. A real callboard is messy.
6. **Do not forget `prefers-reduced-motion`.** Pin-drop and waveform animations must respect the media query.
7. **Do not remove the cork texture.** A flat brown background is not a callboard. The layered gradient system is essential.

## Non-negotiables

- Preserve cork-grain texture via layered CSS gradients.
- Keep all three Google Fonts loaded (Libre Caslon Display + Text, Caveat, Overpass).
- All colors in OKLCH.
- Every card has a pushpin, a unique rotation, and a box-shadow.
- Include `prefers-reduced-motion` support.
- Responsive grid: 4-col to 2-col to 1-col.
