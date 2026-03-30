# Dark Grain Cinema

A design skill for independent cinema platforms, film archives, and arthouse screening programmes. Builds pages that feel like browsing a private film archive at midnight — not a streaming service.

<design-system>
# Design Style: Dark Grain Cinema

## Design Philosophy
### Core Principle
**Every Frame is a Still.** The page is a strip of 35mm film — grainy, desaturated, cinematic. Film grain is the foundational texture that unifies everything under a single celluloid surface. Aspect ratios are anamorphic widescreen (2.39:1). Edges darken with natural vignette. The palette is near-monochrome because real cinema earns its color.

### Visual Vibe
**Emotional Keywords**: Cinematic, Grainy, Desaturated, Intimate, Auteur, Analog, Moody, Contemplative, Independent, Darkroom

Real-world references:
- The Criterion Collection — physical packaging and editorial voice
- A24 film marketing — spare, literary, image-first
- Gregory Crewdson photography — cinematic staging, eerie stillness
- A 35mm contact sheet on a darkroom lightbox

### What This Design Is NOT
- Not a Netflix clone — no bright poster carousels, no autoplaying anything
- Not pure black — cinema dark is **warm**, tinted toward brown and sepia
- Not saturated — chroma below 0.05 everywhere except ONE amber accent
- Not rounded cards with drop shadows — this is film, not a SaaS product
- Not bright, cheerful, or fast — this is contemplative and unhurried
- Not a music or podcast platform wearing cinema clothes

### The DNA
1. **Living grain** — a fixed SVG feTurbulence filter over the entire viewport, seed-animated to breathe like real celluloid. It sits above everything, unifying all elements.
2. **Anamorphic framing** — hero images and film stills fill a 2.39:1 (21:9) frame with letterbox bars above and below, like a projector gate.
3. **Vignette as lens** — radial darkening on key images mimics the natural falloff of vintage cinema lenses, drawing the eye to center frame.
4. **Desaturation as statement** — all images run through `saturate(0.25–0.35) contrast(1.1–1.2)`, the look of Kodak Tri-X pushed one stop.
5. **Sprocket-hole dividers** — section breaks are film strip fragments (small rounded rectangles flanked by hairline rules), not `<hr>` elements.
6. **Long-take pacing** — sections are separated by 7rem+ breathing room. Content fades up slowly at 1.2s. Nothing rushes.

## Typography
- **Display**: Cormorant Garamond — high-contrast elegant serif, film credits energy. Used for all headings, pull quotes, film titles.
- **Body**: Source Serif 4 — literary serif with old-style figures. Used for synopses, curatorial prose, running text.
- **Mono**: IBM Plex Mono — metadata, dates, runtimes, navigation links, section labels. Used wherever data appears.

Scale: Display titles at `clamp(4rem, 10vw, 9rem)` for hero. Section headings at `clamp(2rem, 3.5vw, 3rem)`. Body at `1rem / 1.85` line height. Mono labels at `0.62–0.68rem` with `0.12–0.25em` letter-spacing.

## Color
Warm cinema dark — never pure black, never cold:
- **Background** `oklch(0.12 0.015 55)` — dark brown-black, like an unlit screening room
- **Surface** `oklch(0.16 0.012 55)` — slightly lifted for cards and panels
- **Text Primary** `oklch(0.82 0.01 80)` — warm light gray, projector light on a screen
- **Text Muted** `oklch(0.50 0.01 60)` — dim gray for metadata, secondary copy
- **Accent** `oklch(0.70 0.10 70)` — projector-lamp amber. Used ONLY on: logo/brand name, active nav item, CTA buttons
- **Border** `oklch(0.25 0.01 55)` — barely visible warm hairlines

## Bold Choices (Non-Negotiable)
1. SVG feTurbulence grain overlay at all times, seed-animated every 80ms, `opacity: 0.055`, `mix-blend-mode: overlay`
2. Hero image at `aspect-ratio: 2.39 / 1` with explicit letterbox bars (28px strips of background color above and below)
3. All photography desaturated: `filter: saturate(0.25) contrast(1.15)` at minimum
4. Vignette on at least one major image: `radial-gradient(ellipse at center, transparent 35%, rgba(10,8,6,0.65) 100%)`
5. Section dividers are sprocket strips — 7 small `10×14px` rounded rectangles with hairline extensions, never a plain `<hr>`
6. Amber accent on brand name, active nav, and reserve/CTA buttons ONLY — all other text stays near-monochrome
7. Minimum 7rem between sections; hero-to-statement gap at 9rem+
8. Warm tint on ALL neutral surfaces — no cold grays anywhere

## What Success Looks Like
Should feel like browsing a curated film archive in a private screening room at midnight.
Should NOT feel like scrolling through a streaming service looking for something to watch.
</design-system>

## Workflow

1. **Load design language** — read `https://joincommons.cc/api/items/dark-grain-cinema/raw/design-language` for full token values, layout patterns, motion specs
2. **Load image kit** — read `https://joincommons.cc/api/items/dark-grain-cinema/raw/image-kit` for verified Unsplash URLs and placement guidance
3. **Build** — generate a single self-contained HTML file using only the fonts, colors, and patterns in the references
4. **Self-critique** — run the 5-question check in `https://joincommons.cc/api/items/dark-grain-cinema/raw/anti-patterns` before delivering

## Gotchas

1. **Grain is non-negotiable.** The first thing to check: is the SVG feTurbulence grain layer present, fixed-position, and animating? Without it the page is just a dark website.
2. **Warm, not cold.** Every neutral must have `hue 55–80` in oklch. Cold grays destroy the celluloid feel immediately.
3. **No bright images.** If a photo looks like it was taken on a phone, desaturate and darken it. Every image should look like it was shot on film and slightly underexposed.
4. **Mono font is for data only.** Cormorant for display, Source Serif for prose. IBM Plex Mono appears only on dates, runtimes, labels, and nav — never on body copy.
5. **Amber is one color.** If you find yourself adding amber to section headings, body text, or decorative elements, remove it. It appears in three places maximum.
6. **Letterbox ≠ black bars.** The bars above and below the hero must use `var(--bg)` (the warm dark brown), not `#000`.
