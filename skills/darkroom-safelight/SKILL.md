# Darkroom Safelight — Design Skill

## What This Skill Does
Applies an analog darkroom photography portfolio aesthetic. Near-black backgrounds lit by a single deep-red safelight glow, silver gelatin tonality, film grain overlay, contact sheet grids with sprocket holes, chemical tray print galleries with development-reveal animations, and warm-paper essay sections. All images are rendered in grayscale to simulate silver gelatin prints.

## When to Apply
- Analog/film photographer portfolio
- Darkroom or silver gelatin print showcase
- Fine-art photography with a tactile, process-driven identity
- Any portfolio that foregrounds the physical craft of printmaking

## Design Context
The audience is gallery-goers, collectors, and photography editors who value the handmade. Brand personality: deliberate, quiet, deeply analog. The site feels like entering a working darkroom — dim, red-lit, unhurried. Content is organized as darkroom artifacts: contact sheets, developer trays, fiber-based prints, technical exposure data, and handwritten essays on warm paper.

## Design Direction
- **Tone extreme**: Monastic silence of a darkroom at 2 AM. Not moody-portfolio-dark; actual-darkroom-dark.
- **The ONE memorable thing**: Prints "develop" on scroll — images emerge from blank white paper like a photograph appearing in a chemical tray.
- **Reference mood**: Analog process sites, Magnum Photos contact sheets, Ilford packaging, gelatin silver exhibition prints.

## Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/darkroom-safelight/raw/design-language` for full color system, typography, layout patterns, motion, and signature moves.
2. **Load image kit** — read `https://joincommons.cc/api/items/darkroom-safelight/raw/image-kit` for verified Unsplash URLs and placement rules. All images must be displayed with `filter: grayscale(1)`.
3. **Build** — construct sections in this order: header (safelight glow + scroll hint) → contact sheet (sprocket holes + 4-column grid) → chemical tray gallery (developing prints + tech cards) → essay (warm paper inset) → about (2-column grid) → footer.
4. **Self-critique** — read `https://joincommons.cc/api/items/darkroom-safelight/raw/anti-patterns` and verify against every item. Pay special attention to: color images leaking through, safelight red used on backgrounds instead of just glow/accent, and missing film grain overlay.

## Core Rules

### Color — do not deviate
- `--darkroom-black: oklch(0.08 0 0)` — page background
- `--safelight-red: oklch(0.35 0.15 25)` — the ONLY chromatic color, used for glows, accents, hover outlines, grease pencil marks
- `--paper-white: oklch(0.95 0 0)` — print borders, header name
- `--silver-gelatin: oklch(0.75 0 0)` — body text
- `--gray-midtone: oklch(0.50 0 0)` — labels, section labels
- `--chemical-tray: oklch(0.12 0.01 30)` — tray container background
- `--paper-warm: oklch(0.92 0.01 80)` — essay paper inset

### Typography — three fonts, strict roles
- **Vollkorn** (serif, 400/600/700, italic): display headings, print titles, essay headings
- **Crimson Text** (serif, 400/600, italic): body copy, bio, essay prose
- **Space Mono** (monospace): ALL labels, section labels, frame numbers, scroll hint, footer, technical metadata. Always uppercase, `letter-spacing: 0.15em+`.

### Photography
Every image uses `filter: grayscale(1) contrast(1.05–1.1)`. No color photographs anywhere. Substitute images must be high-contrast, natural-light compositions (landscapes, portraits, architecture). No studio-lit product shots.

### Signature Moves
1. **Film grain overlay** — fixed SVG `feTurbulence` at 6% opacity, `mix-blend-mode: overlay`
2. **Safelight glow** — pulsing radial gradient circle (oklch 0.35 0.15 25) with `box-shadow` halos
3. **Development reveal** — images start `opacity: 0; brightness(3); contrast(0.5)` and transition to full visibility over 2.5s on scroll
4. **Sprocket holes** — CSS rectangles flanking the contact sheet grid
5. **Print reflections** — flipped `scaleY(-1)` image below each tray print at 15% opacity with mask gradient, simulating liquid surface
6. **Darkroom timer** — fixed corner element counting elapsed seconds after first scroll

## Gotchas
1. **Never show color images** — every `<img>` gets `filter: grayscale(1)`. A single color photo breaks the entire silver gelatin illusion.
2. **Safelight red is glow-only** — never use it as a background fill or large surface color. It appears as radial gradients, thin accent lines, outline hovers, and the grease pencil keeper marks. The darkroom is dark.
3. **The warm paper section is the ONLY light surface** — the essay uses `--paper-warm` with dark text. Do not add other light panels or white sections.
4. **Do not remove the film grain** — the SVG noise overlay at 6% prevents flat digital banding and sells the analog texture.
5. **Tech metadata is essential** — each print needs Film/Camera/Exposure/Paper data in Space Mono. Without it, the prints feel like generic image cards instead of darkroom artifacts.
6. **Contact sheet sprocket holes are structural** — they distinguish the contact sheet from a plain image grid. Without them, the film-strip metaphor collapses.
7. **Essay text uses `text-indent` for continuation paragraphs** — `p + p { text-indent: 1.5em }`. This typographic convention signals a literary essay, not a blog post.
