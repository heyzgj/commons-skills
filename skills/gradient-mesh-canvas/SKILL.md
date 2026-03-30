# Gradient Mesh Canvas — Design Skill

## Identity
**Slug:** `gradient-mesh-canvas`
**Product archetype:** Browser-based gradient mesh editor / creative tool UI
**Tone:** Precision creative tooling — professional, spatial, color-science-literate

---

## When to use this skill
Apply when building:
- Gradient editors, color pickers, or palette generators
- Creative tool UIs (canvas apps, design utilities)
- Any UI that needs a living, animated color-mesh hero section
- Export/output panels showing code snippets (CSS, SVG)

---

## Core visual system

### Color space
All colors use **OKLCH** exclusively. Never fall back to hex or HSL for the mesh palette.

### Background & surface
```
--bg:       oklch(0.98 0.005 260)   /* near-white, slightly cool */
--surface:  rgba(255,255,255,0.7)   /* frosted glass panels */
--border:   oklch(0.9 0.01 260 / 0.5)
--ink:      oklch(0.1 0.01 260)
--ink-dim:  oklch(0.4 0.01 260)
```
Surface panels use `backdrop-filter: blur(20px)` for frosted glass. Box shadows are always low-opacity black, never colored.

### Mesh palette (6 blob colors)
```
--c-pink:   oklch(0.7  0.25 350)
--c-coral:  oklch(0.75 0.2  30)
--c-golden: oklch(0.85 0.15 85)
--c-teal:   oklch(0.75 0.12 185)
--c-violet: oklch(0.65 0.2  290)
--c-blue:   oklch(0.6  0.18 250)
```

### Typography
| Role | Family | Weights |
|------|--------|---------|
| Display / headings | Newsreader (serif, optical-size 6–72) | 400, 700 |
| Body / UI labels | Instrument Sans | 400, 500, 600 |
| Monospace / code | IBM Plex Mono | 400, 600 |

Google Fonts import: `IBM+Plex+Mono:wght@400;600&family=Instrument+Sans:wght@400;500;600&family=Newsreader:opsz,wght@6..72,400;6..72,700`

### Spacing & radius
- Container: `max-width: 1400px`, `padding: 4rem 2rem`
- Section gaps: `4rem`
- App window radius: `12px`; panel groups: `6–8px`; hero card: `20px`
- Sidebar / props panel width: `300px` / `280px`

---

## Living mesh hero

The hero is a full-viewport section. Six oversized blobs (border-radius: 50%) are positioned absolutely within a `filter: blur(80px) saturate(1.2)` container that extends `-20%` beyond all edges. Each blob uses `mix-blend-mode: multiply`.

Animation: `@keyframes drift` with `translate + scale + rotate`, durations 18–26 s, `alternate` / `alternate-reverse`, `ease-in-out`. Each blob has a unique duration. Honor `prefers-reduced-motion` by removing animations.

Floating control nodes (14×14 px white circles, `border: 2px solid --ink`) are scattered over the hero as decorative affordance markers.

The hero card (centered, glassmorphic) holds a `5rem` Newsreader display heading.

---

## App window layout

Three-column layout inside a glassmorphic `app-window`:
1. **Sidebar (300 px)** — layer list with color swatch, node label, coordinate readout in `--f-mono`
2. **Canvas area (flex: 1)** — toolbar row + editor preview with dot-grid background + mesh object with SVG bezier overlay + 9 p-node handles
3. **Properties panel (280 px)** — grouped sections: Color Space toggle (OKLCH/RGB/HSL), Gradient Ribbon (Linear/Radial/Conic) with drag stops, Active Node coordinate + color display

### Toolbar buttons
Default: `background: white`, `border: 1px solid --border`. Active/hover: `background: --ink; color: white`. Radius `6px`, padding `6px 12px`.

### Gradient ribbon
`height: 30px`, `border-radius: 6px`. Stop indicators are `14×14 px` squares rotated 45° (`rotate(45deg)`), positioned below the strip with `cursor: ew-resize`.

### Mesh SVG overlay
Dashed bezier curves (`stroke-dasharray: 4 4`, `opacity: 0.5`) on the mesh object. Control points rendered as `p-node` circles (12×12 px).

---

## Community gallery grid

`grid-template-columns: repeat(auto-fill, minmax(350px, 1fr))`, gap `2rem`.

Cards: white background, `border-radius: 12px`, subtle shadow. Hover: `translateY(-8px)` + stronger shadow. Transition uses `cubic-bezier(0.2, 0.8, 0.2, 1)`.

Gallery visuals use real CSS gradients (linear, radial, conic) in OKLCH — no images.

---

## Export panel

Three-column grid (`repeat(3, 1fr)`). Each card shows a code block:
- `background: --bg`, `font-family: --f-mono`, `font-size: 0.8rem`, `line-height: 1.5`
- Export formats: CSS linear-gradient, SVG `<defs>` radialGradient, Image raster (PNG, Display P3)

---

## Section headings

`font-family: --f-disp`, `font-size: 3rem`, `font-weight: 400` (not bold), centered, `margin-bottom: 2rem`.

---

## Constraints

- Do NOT use photographs or Unsplash images. This design is pure CSS/SVG.
- Do NOT use HSL or hex colors for the mesh palette — OKLCH only.
- Do NOT use colored box shadows. All shadows are `rgba(0,0,0,n)`.
- Do NOT use `mix-blend-mode: screen` on blobs — use `multiply`.
- Do NOT use pill-style tabs. Use the flat button group with active fill.
- The hero blobs must extend beyond viewport bounds (`inset: -20%`, `width: 140%`).
- Section label font is `0.75rem`, `uppercase`, `letter-spacing: 1px`, `--ink-dim`, weight 600.

---

## Quick implementation checklist

- [ ] Import all three Google Fonts families
- [ ] Define `:root` with `--bg`, `--surface`, `--border`, `--ink`, `--ink-dim`, and all six `--c-*` mesh colors in OKLCH
- [ ] Hero: 6 blobs with `drift` keyframes, `prefers-reduced-motion` guard, glassmorphic hero card
- [ ] App window: 3-column layout with sidebar + canvas + props panel
- [ ] Canvas: dot-grid background + mesh object + dashed SVG bezier lines + p-nodes
- [ ] Gallery: auto-fill grid with CSS-gradient visuals, hover lift
- [ ] Export: 3-column code block grid
