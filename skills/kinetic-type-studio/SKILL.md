# Kinetic Type Studio — Design Skill

## Identity
A motion-graphics desktop application for kinetic typography. The aesthetic is a professional creative tool — dark canvas surrounded by light panels, every element tuned for a video/animation workflow. Think After Effects crossed with a refined typographic playground.

## When to Apply
- Typography animation tools, motion studios, creative coding IDEs
- Any UI where text motion is the primary product
- Interfaces that blend code and visual design (animation timelines, type specimens, easing editors)
- Dark-canvas-plus-light-panel split layouts

## Core Design Language

### Color System (OKLCH)
All values use OKLCH for perceptual uniformity. The hue anchor is 280 (violet).

| Token | Value | Role |
|---|---|---|
| `--app-bg` | `oklch(0.94 0.01 280)` | App shell background |
| `--panel-bg` | `oklch(0.98 0.01 280)` | Side panels, headers |
| `--border` | `oklch(0.88 0.01 280)` | Default dividers |
| `--border-dark` | `oklch(0.80 0.02 280)` | Canvas edge, strong separators |
| `--ink` | `oklch(0.18 0.03 280)` | Primary text |
| `--ink-muted` | `oklch(0.5 0.02 280)` | Labels, secondary text |
| `--accent` | `oklch(0.55 0.2 285)` | Vibrant violet — active states, CTAs |
| `--accent-muted` | `oklch(0.9 0.05 285)` | Active icon background |
| `--playhead` | `oklch(0.55 0.2 15)` | Tech red — the playhead indicator |
| `--canvas-bg` | `oklch(0.15 0.02 280)` | Dark canvas viewport |
| `--canvas-grid` | `oklch(0.25 0.02 280)` | Grid lines on canvas |

Timeline layer colors (semantic, not tinted): `#3B82F6` (blue), `#10B981` (green), `#F59E0B` (amber), `#EC4899` (pink), with the accent violet for the primary headline layer.

### Typography
Three fonts, each with a defined role:

| Font | Weight | Role | CSS class |
|---|---|---|---|
| Syne | 800 ExtraBold | Display headings, logo, kinetic text | `--font-display` |
| Instrument Sans | 400–700 | UI chrome, body, buttons | `--font-ui` |
| JetBrains Mono | 100–800 | Timecodes, coordinates, code snippets | `--font-mono` |

Base font size: 13px app-scale. Display kinetic text: 5rem / 800 / `letter-spacing: -0.04em` / uppercase. Logo: 1.125rem / 700 / `letter-spacing: -0.02em`. Panel headers: 0.75rem / 600 / uppercase / `letter-spacing: 0.05em`. Mono labels: 0.65rem.

### Layout Grid
Three-column workspace: `280px 1fr 340px`. Left panel = Font Browser. Center = Canvas + Timeline. Right = Curve Library.

App header: 48px fixed height. Panel headers: 40px sticky. Timeline header: 32px. Timeline area: 300px height. Canvas footer: 40px.

### Easing Vocabulary
Four named curves used throughout all animations:

```
--ease-out-quart:  cubic-bezier(0.25, 1, 0.5, 1)
--ease-expo:       cubic-bezier(0.16, 1, 0.3, 1)
--ease-back:       cubic-bezier(0.34, 1.56, 0.64, 1)   /* overshoot */
--ease-in-out:     cubic-bezier(0.65, 0, 0.35, 1)
```

### Component Patterns

**Canvas Viewport**
- Dark background (`--canvas-bg`) with 40×40px dot-grid overlay using `--canvas-grid`
- Grid via: `background-image: linear-gradient(...) + linear-gradient(90deg, ...); background-size: 40px 40px`
- Top-left HUD metrics overlay: camera name, XYZ coordinates, FPS counter in mono 0.65rem
- Rounded top corners (8px), square bottom edge connecting to canvas footer

**Timeline**
- Layer column: 240px fixed, each row 32px, `font-mono`
- Layer color dots: 8px circle, semantic color per track
- Keyframe diamonds: 8×8px, rotated 45°, panel-bg fill + colored border
- Playhead: 1px red line (`--playhead`) with downward-pointing triangle cap
- Ruler ticks: major every 5 steps (12px tall), minor (6px tall), labels at 0.6rem

**Easing Cards**
- White (`#fff`) card on violet-tinted panel background
- `border-radius: 8px`, 1px border, hover: border turns accent, `box-shadow: 0 4px 12px rgba(0,0,0,0.05)`
- SVG bezier curve preview: 60×60px, `viewBox="-10 -10 120 120"`
- Animated ball on track (12px circle, slides left→right on loop)
- Curve code in accent violet, JetBrains Mono

**Font Cards**
- `padding: 24px 16px`, hover: `background: #fff`
- On hover, Syne card: `slideIn` animation (translateX -20px → 0, letter-spacing tightens)
- On hover, Instrument Sans card: `fadeUp` animation (translateY 10px → 0)
- On hover, JetBrains Mono card: typewriter character-by-character reveal at 50ms/char

**Buttons**
- Icon buttons: 28×28px, `border-radius: 4px`, hover: `--app-bg` bg; active: `--accent-muted` bg + accent color
- Primary: accent fill, white text, `padding: 6px 16px`, `border-radius: 4px`, hover: `opacity: 0.9`

**Scrollbar**
- 6px wide/tall, transparent track, `--border-dark` thumb with 3px radius, hover: `--ink-muted`

### Animation Keyframes
```css
@keyframes blink { 50% { opacity: 0; } }          /* cursor blink, 1s step-end infinite */
@keyframes slideIn {
  0%   { transform: translateX(-20px); letter-spacing: -0.1em; opacity: 0; }
  100% { transform: translateX(0);     letter-spacing: -0.02em; opacity: 1; }
}
@keyframes fadeUp {
  0%   { transform: translateY(10px); opacity: 0; }
  100% { transform: translateY(0);    opacity: 1; }
}
@keyframes moveBall {
  0%   { transform: translateX(0); }
  100% { transform: translateX(calc(100% - 12px)); }
}
```

## Application Rules

1. **The canvas is always dark.** Even in light-panel contexts the preview viewport stays `--canvas-bg` with the grid overlay. Never use a white canvas.
2. **Mono font is for data, not prose.** Timecodes, coordinates, FPS, easing values, version numbers — all JetBrains Mono. Body copy uses Instrument Sans.
3. **Violet tint everything neutral.** All grays carry hue=280. Never use pure `#eee` / `#f5f5f5` / `oklch(L 0 0)` grays.
4. **Easing is the personality.** Choose from the four named curves. Avoid CSS `ease` or `ease-in` defaults.
5. **Timeline layer colors are semantic.** Each animation property (typing, position, opacity, scale, camera) has its own distinct hue. Don't reuse colors across layers.
6. **Panel headers are uppercase caps.** `font-size: 0.75rem`, `font-weight: 600`, `letter-spacing: 0.05em`, `color: var(--ink-muted)`. Never title-case panel labels.
7. **SVG icons are 16×16, stroke-only.** `stroke-width: 2`, `stroke-linecap: round`, `stroke-linejoin: round`, no fill.

## What NOT to Do
See `https://joincommons.cc/api/items/kinetic-type-studio/raw/anti-patterns` for the full list.
