# Postcard Rack — Design Skill

## Design Context

**Brand archetype:** A digital nomad product designer's personal site, structured as a collection of postcards from cities they have lived and worked in. Think Marco Silva, not Dribbble portfolio.

**Target audience:** Hiring managers, startup founders, and fellow designers who appreciate personality over polish. They skim portfolios on phones in cafes and remember the ones that made them smile. They value lived experience and cultural fluency as design credentials.

**Use cases:** Digital nomad portfolio, travel-themed personal site, freelance designer folio, remote worker about page, location-based project showcase, city-hopping creative resume, any personal site where geography IS the narrative.

**Brand personality:** Warm, well-traveled, unpretentious. The voice is handwritten and personal — like getting a real postcard from a friend. The aesthetic sits between a spinning postcard rack in a Lisbon gift shop and a stamped passport page.

---

## Design Direction

**Tone extreme:** Physical postcard metaphor rendered digitally. Every element maps to a real object: 6:4 landscape cards with photo fronts and ruled-line backs, SVG rubber-stamp postmarks, passport-page stamp collections, handwritten cursive over ruled lines. The entire page should feel like opening a shoebox of collected postcards.

**The ONE memorable thing:** Flippable postcard cards. Click any card to flip it with a 3D CSS rotation, revealing a handwritten message on ruled-line paper with a postmark stamp. Front = destination photo. Back = personal note. This single interaction makes the entire site unforgettable.

**Reference sites:** marcosilva.design (nomad portfolio), postcrossing.com (postcard exchange aesthetic), littlebigconnection.com (warm personal brand), semplice.com portfolios (project-as-narrative).

**What makes it unforgettable:** City-specific tint colors (each destination has its own warm OKLCH hue), SVG postmark stamps with airport codes and date ranges, and a dark passport-page section with slightly rotated country stamps. Four distinct type voices — handwriting, friendly sans, typewriter, and data mono — each mapped to a specific content role.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/postcard-rack/raw/design-language` in full. Every OKLCH color, font pairing, card rotation angle, and layout specification is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/postcard-rack/raw/image-kit`. All 5 Unsplash photo IDs are pre-verified. Each photo pairs with a specific city tint color. When adding new cities, source landscape Unsplash photos and verify with `curl -sI`.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **Header** — Satisfy cursive site title left, Special Elite uppercase nav links right, dashed bottom border
2. **Hero** — "Currently writing from" label, massive Nunito 700 city name, handwritten annotation, subtitle, IBM Plex Mono stat row (countries / bases / suitcase)
3. **Postcard rack** — auto-fill grid of 6:4 flippable postcards, each with random rotation (-2 to +2 deg), photo front with city-tinted gradient overlay, ruled-line back with Satisfy message + address block + SVG postmark
4. **Passport stamps** — dark navy `--passport-bg` section, flex-wrap country stamps with flag emoji, slightly rotated, current location highlighted with "NOW" badge
5. **About** — ruled-line card with Satisfy heading ("Dear reader,"), Nunito body text, stat row at bottom (dashed border-top)
6. **Contact** — tilted postcard-style link with envelope + Satisfy email + Special Elite CTA
7. **Footer** — Special Elite left, IBM Plex Mono coordinates right, dashed top border

Include: IntersectionObserver for fade-in, keyboard accessibility (tabindex + Enter/Space for flip), `prefers-reduced-motion` support, mouse-hover shadow deepening on desktop.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/postcard-rack/raw/anti-patterns` and check every item. Then verify:
- All postcards have random rotation angles (not aligned)?
- Every card back has ruled lines, handwritten message, address, AND postmark?
- City tints are pale (chroma 0.02-0.06), not saturated?
- Passport page is warm navy, not black?
- Four font voices are correctly mapped to their roles?
- `prefers-reduced-motion` disables all animation?

---

## Gotchas

1. **Aligned postcard grid.** Without random -2 to +2 degree rotations on each card, the rack metaphor dies and it becomes a generic image gallery.

2. **Missing card backs.** The flip is the entire experience. Every postcard needs a ruled-line back with handwritten message, address block, project credit, and SVG postmark stamp. No back = no personality.

3. **Wrong font for wrong role.** Satisfy = handwriting only. Nunito = body/headlines. Special Elite = typewriter labels. IBM Plex Mono = data/stats. Mixing these roles (e.g., Satisfy for nav labels) breaks the four-voice system.

4. **Black passport page.** The stamp collection uses `oklch(0.25 0.04 250)` — warm navy blue, not black. Pure black kills the travel-document warmth that makes this section feel like a real passport.

5. **Oversaturated city tints.** Tints sit at oklch chroma 0.02-0.06. Higher saturation makes the tinted overlays look like colored cellophane, not sun-faded postcard edges.

6. **Postmark copy-paste.** Each city needs its own postmark SVG with unique city name, airport code, date range, and rotation angle. Identical stamps across cards break the "collected over time" authenticity.

7. **No ruled lines.** The repeating-linear-gradient ruled lines on card backs and the about card are what sell the paper metaphor. Without them, the back is just a white rectangle.

8. **Square or portrait cards.** Real postcards are landscape 6:4. Wrong aspect ratio breaks the physical metaphor and makes the 3D flip look awkward.
