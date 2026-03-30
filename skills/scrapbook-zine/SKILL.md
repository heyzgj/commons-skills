# Scrapbook Zine — Design Skill

## Identity
A freeform moodboard-meets-zine aesthetic rooted in DIY print culture. Torn paper edges, washi tape accents, polaroid-style photo mounts, and hand-lettered annotations layer over a warm kraft paper ground. Everything is slightly rotated, slightly imperfect — intentionally tactile in a digital medium.

**Slug:** `scrapbook-zine`
**Category:** Editorial / Zine
**Personality:** Chaotic-good. Gen-Z internet vernacular meets analog craft.

---

## When to Use
- Personal zine or digital moodboard
- Portfolio landing page with editorial voice
- Music, art, or subculture project sites
- Creative brief or pitch deck with informal energy
- Brand identity presentations that reject corporate polish

---

## Core Visual System

### Color Palette (OKLCH)
| Token | Value | Role |
|---|---|---|
| `--kraft` | `oklch(0.92 0.02 80)` | Page background — warm beige parchment |
| `--ink` | `oklch(0.15 0.01 260)` | Primary text, cutout fills |
| `--pink` | `oklch(0.75 0.15 350)` | Tape, stickers, handwriting accents |
| `--blue` | `oklch(0.75 0.12 240)` | Tape, cutout variant |
| `--yellow` | `oklch(0.9 0.15 100)` | Sticky note, tape, sticker highlight |
| `--mint` | `oklch(0.85 0.12 160)` | Tape, sticker variant |
| `--coral` | `oklch(0.7 0.18 20)` | Sticker label text accent |

### Typography
- **Display / cutout headlines:** `Syne` (wght 800) — uppercase, tight line-height 1
- **Body / paragraph:** `Karla` (wght 400–700)
- **Handwritten annotations:** `Caveat` (wght 400–700) — slanted, large, casual

### Texture
- Background: `repeating-linear-gradient(45deg, …rgba(0,0,0,0.015)…)` — barely-visible diagonal grain on kraft
- Photo filter: `sepia(0.1) contrast(1.1)` on polaroid images
- Magazine cutout images: `grayscale(0.1) contrast(1.1)` + slight parallelogram `clip-path`

---

## Component Patterns

### Drag-and-Drop Board
The entire canvas is an absolutely-positioned `1400×1200px` board inside a scrollable viewport. Every element is `.drag` with `--x`, `--y`, `--z` CSS custom properties and a `--rot` rotation. Elements stagger-animate in via a `pop` keyframe (`translateY(-20px) scale(1.05) → normal`).

### Cutout Typography
```css
.cutout {
  background: var(--ink);
  color: var(--kraft);
  clip-path: polygon(2% 0%, 100% 4%, 96% 100%, 0% 95%);
  font-family: var(--f-disp);
  font-weight: 800;
  text-transform: uppercase;
  line-height: 1;
}
```
Vary `background` per word (e.g. `var(--blue)`, `var(--yellow)`) and mix in small `transform: rotate()` per span for a ransom-note collage effect.

### Washi Tape
```css
.tape {
  height: 40px;
  opacity: 0.9;
  mix-blend-mode: multiply;
  clip-path: polygon(1% 5%, 99% 0%, 98% 100%, 2% 95%);
  font-family: var(--f-disp);
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 2px;
}
```
Texture variants: `.t-dots` (radial-gradient dots) and `.t-stripes` (diagonal repeating-linear). Hover bounces with `cubic-bezier(0.3, 1.5, 0.5, 1)`.

### Polaroid Card
White card with `padding: 1rem 1rem 3.5rem` (extra bottom for caption space). Image gets `sepia(0.1) contrast(1.1)`. Caption is `.hand` (Caveat) rotated `−2deg` via absolute positioning at bottom.

### Torn-Edge Paper (`.rip`)
White block with a jagged perimeter `clip-path` polygon with 30+ points simulating ripped paper. Can hold lined-paper content (`.lined` background-image using `linear-gradient` for horizontal rules + a red margin line).

### Sticky Note
```css
.sticky {
  background: var(--yellow);
  width: 200px;
  aspect-ratio: 1;
  border-bottom-right-radius: 20px 200px;
  box-shadow: 2px 2px 10px rgba(0,0,0,0.08), inset 0 0 20px rgba(0,0,0,0.04);
}
/* Folded corner via ::after pseudo with linear-gradient triangle */
```

### Die-Cut Stickers (SVG)
Inline SVGs for heart, star, lightning bolt, smiley face, pill shapes. All use `stroke: white; stroke-width: 8px; stroke-linejoin: round` for the sticker-cut outline effect. On hover: `scale(1.15)` + wiggle animation between `−5deg` and `+5deg`.

### Navigation (Tape Strip Nav)
Vertical stack of `.tape` strips serving as nav items. Hover slides `translateX(10px)` instead of vertical lift.

---

## Motion & Interaction
- **Entry:** `pop` keyframe, staggered `animation-delay` (0.1s increments per element)
- **Board pan:** Middle-click-drag on background scrolls the oversized canvas (`cursor: grab → grabbing`)
- **Element drag:** Each `.drag` is independently draggable; `z-index` increments on grab so dragged item always floats above
- **Sticker wiggle:** `@keyframes wig` oscillates between `rotate(-5deg)` and `rotate(5deg)` on hover
- **Tape spring:** `cubic-bezier(0.3, 1.5, 0.5, 1)` for bounce overshoot

---

## Layout Principles
1. Nothing is on a grid — use `position: absolute` with intentional rotation (`--rot: ±2–25deg`)
2. Overlap is intentional; `z-index` layering creates depth
3. Scatter elements across a canvas wider than the viewport to reward exploration
4. Group small tape strips near card edges to "pin" them
5. Mix heavy typography blocks (cutouts) with quiet handwritten notes for rhythm

---

## Content Voice
- Gen-Z lowercase vernacular: "it's giving... chaos", "brain dump", "feral but thriving"
- Phrases printed on tape: section labels, archive links, manifesto
- Sticky notes for short declarations or self-deprecating commentary
- Polaroid captions in Caveat font, slightly rotated

---

## Do Not Do
See `https://joincommons.cc/api/items/scrapbook-zine/raw/anti-patterns` for the full list.

---

## Files in This Bundle
- `assets/exhibit.html` — full interactive exhibit
- `assets/design-skill.json` — manifest
- `assets/tokens.dtcg.json` — design tokens
- `https://joincommons.cc/api/items/scrapbook-zine/raw/design-language` — full design system reference
- `https://joincommons.cc/api/items/scrapbook-zine/raw/image-kit` — verified Unsplash URLs
- `https://joincommons.cc/api/items/scrapbook-zine/raw/anti-patterns` — traps to avoid
