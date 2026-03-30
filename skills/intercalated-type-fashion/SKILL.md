---
name: intercalated-type-fashion
description: Fashion editorial design where oversized serif typography physically weaves through photography using z-index choreography — text and image become one inseparable composition.
tags: [fashion, editorial, typography, photography, luxury, serif, weave, blend-mode, parallax]
---

<design-system>
# Design Style: Intercalated Type Fashion

## Design Philosophy
### Core Principle
Text and image are not separate layers — they are woven together. Oversized serif typography physically passes through, behind, and around fashion photography. A headline starts in front of a model, dips behind her shoulder, and resurfaces on the other side. The text doesn't describe the image. They are the same composition — inseparable, entangled, one visual fabric.

### Visual Vibe
**Emotional Keywords**: Entangled, Editorial, Daring, Cinematic, Layered, Haute, Provocative, Architectural, Textural, Confident

Real-world references for taste:
- The Vogue Italia masthead woven behind a model's hair
- Alexander McQueen campaign imagery where type and body become one composition
- Self-Service magazine spreads with massive serif type bleeding across photo boundaries
- Nick Knight's SHOWstudio editorials where image, motion, and text merge

### What This Design Is NOT
- NOT text floating OVER images — the text must WEAVE through with z-index choreography
- NOT a fashion e-commerce product grid — this is editorial, not a shop
- NOT dark moody fashion with thin sans-serif type (generic fashion web default)
- NOT simple mix-blend-mode on a single heading — the interleaving must be spatially layered
- NOT a lookbook slideshow with pagination — one continuous editorial composition
- NOT small or modest typography — display type is ARCHITECTURAL, 100px minimum

### The DNA of Intercalated Type Fashion
1. **Z-index weave**: Brand name split into two elements — z:1 behind, z:3 in front — with the photo at z:2 using `clip-path: polygon()` to carve out the silhouette region. Letters visibly disappear behind the model.
2. **mix-blend-mode: difference** on the front text layer makes it readable against any image area — dark where the image is light, light where the image is dark. Looks like light through layered fabric.
3. **Type as architecture**: Playfair Display at 100–220px occupies the same visual weight as the photography. Letterforms create negative space and frame the models.
4. **Asymmetric photo bleeds**: No image sits in a container. Photos extend past column edges, bleed to screen edges, and overlap adjacent cells.
5. **Parallax depth**: Text and image scroll at different rates (0.7x vs 1.0x), reinforcing the sense of physical layers.

## Typography
- **Display**: Playfair Display — high-contrast thick/thin serif at 100–220px. The ONLY font for headings, brand names, look names, season labels.
- **Body**: Cormorant — delicate literary serif at 1.2–1.25rem weight 300. For statements, descriptions, body text.
- **Meta/Labels**: Spline Sans Mono — sharp monospace at 0.58–0.7rem. For dates, categories, eyebrows, navigation.

## Color
Warm white editorial palette — photography provides all the color:
- Page ground: `oklch(0.97 0.005 60)` — warm cream like newsprint
- Ink black: `oklch(0.10 0.005 250)` — deep blue-tinted black
- Ink mid: `oklch(0.28 0.008 250)` — for body text
- Ink light: `oklch(0.55 0.006 250)` — for metadata
- Gold: `oklch(0.72 0.08 85)` — muted editorial gold, wayfinding ONLY
- No colored backgrounds. No gradients. Photography IS the color palette.

## Bold Choices (Non-Negotiable)
1. The hero brand name weaves — split into behind/front layers with a clip-path image in between
2. `mix-blend-mode: difference; filter: invert(1)` on the front text layer — always
3. Display type minimum 100px — if it fits comfortably, it's too small
4. At least one parallax section where text and image scroll at different rates
5. No rectangular image containers — photos bleed, extend, overlap
6. Spline Sans Mono eyebrow labels (0.6rem, tracking 0.2em) precede every section
7. A continuous marquee of italic look names acts as both navigation and typographic rhythm

## What Success Looks Like
Should feel like holding a physical copy of Vogue Italia — typography and photography having a conversation across the page. The viewer should have to look twice to understand how the text seems to pass behind the model. Should NOT feel like a fashion website with text overlaid on hero images.
</design-system>

## What This Skill Does
Builds fashion editorial campaign pages with the intercalated type technique — serif typography that physically weaves through photography via z-index choreography and clip-path masking. Produces one continuous editorial composition, not a stack of sections.

## When to use
- Seasonal fashion brand campaign pages
- Editorial lookbooks with 2–6 named looks
- Runway coverage and show announcements
- Any brand page where photography and identity must feel unified

## When not to use
- E-commerce product listings (need browsable inventory structure)
- Fashion editorial with no photography available (system requires photos to weave)
- Utility apps or data-heavy interfaces
- Projects where body text readability is the primary concern

## Default Workflow
1. **Load design language**: Read `https://joincommons.cc/api/items/intercalated-type-fashion/raw/design-language` for the full visual system, z-index weave technique, and clip-path pattern.
2. **Load image kit**: Read `https://joincommons.cc/api/items/intercalated-type-fashion/raw/image-kit` for verified Unsplash URLs and placement guidance.
3. **Build**: Implement the three-layer hero weave first — this is the system's signature and must land before everything else. Then build the collection grid, marquee, editorial section, and CTA in sequence.
4. **Self-critique**: Read back the exhibit and apply the AI slop test from `https://joincommons.cc/api/items/intercalated-type-fashion/raw/anti-patterns`. Specifically: does the brand name genuinely weave (not just float over), are images contained in boxes, is display type large enough?

## Supporting Files
- `https://joincommons.cc/api/items/intercalated-type-fashion/raw/design-language` — canonical design language, pattern rules, implementation invariants
- `tokens.dtcg.json` — all OKLCH color tokens and typography scale in DTCG format
- `https://joincommons.cc/api/items/intercalated-type-fashion/raw/design-language` — extended layout patterns and motion detail
- `https://joincommons.cc/api/items/intercalated-type-fashion/raw/image-kit` — verified Unsplash URLs with usage notes
- `https://joincommons.cc/api/items/intercalated-type-fashion/raw/anti-patterns` — failure modes and self-critique protocol
- `exhibit.html` — the reference implementation showing every technique
- `evidence/blueprints.json` — blueprint coverage map (optional)
- `evidence/component-matrix.json` — component state matrix (optional)

## Supporting References
- **Vogue Italia** — typography woven behind model silhouettes; masthead as compositional element. Consult physical issues or [vogue.it](https://www.vogue.it) for cover composition references.
- **Self-Service Magazine** — massive serif type bleeding across photo boundaries. See [self-service.fr](https://self-service.fr) for editorial spread examples.
- **Alexander McQueen campaigns** — type and body as one unified composition. See [alexandermcqueen.com/en-gb/campaign](https://www.alexandermcqueen.com) for seasonal campaign archives.
- **SHOWstudio (Nick Knight)** — editorial photography where image and text occupy the same physical plane. See [showstudio.com](https://showstudio.com) for film and editorial projects.
- **MDN Web Docs: clip-path** — [developer.mozilla.org/en-US/docs/Web/CSS/clip-path](https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path) for polygon syntax reference.
- **MDN Web Docs: mix-blend-mode** — [developer.mozilla.org/en-US/docs/Web/CSS/mix-blend-mode](https://developer.mozilla.org/en-US/docs/Web/CSS/mix-blend-mode) for blend mode behavior reference.

## Output Expectations
- A single self-contained HTML file
- Hero section with genuine z-index weaving (not text-on-image)
- Display type at 100px minimum (clamp down to ~80px on mobile)
- At least two instances of `mix-blend-mode: difference` on text
- At least one section with parallax scroll behavior
- All images bleed or extend past their apparent container
- Scroll reveals via IntersectionObserver
- `prefers-reduced-motion` respected
- All images have `loading="lazy"`, descriptive `alt`, and `background-color` fallback

## Reuse and Adaptation Guidance
- **Different brand**: Replace "WEAVE" with the brand name in the hero weave layers and adjust the clip-path polygon to match the hero image's subject position
- **Different looks**: Update look names, fabric descriptions, silhouette language — keep the same asymmetric grid structure
- **Different season**: Update season labels and dates; the SS26 rotated label pattern works for any season code
- **More looks**: Extend the 3-column grid with additional rows; maintain the asymmetric offset pattern

## Non-negotiables
1. Three-layer hero structure (behind/image/front) — never reduce to two layers
2. `clip-path: polygon()` on the image element — `inset()` does not create the silhouette weave
3. `mix-blend-mode: difference; filter: invert(1)` on the front text layer
4. OKLCH for all colors — no hex or HSL
5. No `border-radius` or `box-shadow` on image wrappers
6. Gold (`oklch(0.72 0.08 85)`) on small elements only — never as a background

## Common Failure Modes
1. **The "weave" is just overlay**: Text sits on top of the image with a semi-transparent background or drop shadow. Fix: implement the three-layer z-index structure with clip-path.
2. **Display type is too small**: 60px headings that "look big" still fail — at 1400px viewport, 180px type takes ~13% of the width. That's the target.
3. **Images in containers**: `overflow: hidden` on any image wrapper breaks the bleed aesthetic. Remove all containers.
4. **Wrong blend mode**: Using `mix-blend-mode: multiply` instead of `difference` — multiply darkens, difference inverts. Only `difference` or `exclusion` creates the fabric-light effect.
5. **Marquee items not duplicated**: A single set of items creates a gap at the loop point. Always duplicate the content for seamless looping.
6. **Parallax on the wrong axis**: Parallax should shift the image layer on the Y axis only, and only while the section is in the viewport.
7. **Gold overuse**: If gold appears on more than 5–6 elements, it loses its wayfinding function. Strip it back to eyebrows, rules, and hover states only.
