# Film Photo Roll — Design Skill

## Identity
A darkroom-and-film-journal UI aesthetic. The interface mimics the physical artifacts of 35mm film: the spine of a film strip, sprocket holes, rebate markings, contact sheets, and a darkroom developer-step timer. The mood is analog-craft: deliberate, tactile, slightly chemical-smelling.

## When to use
- Film photography journals, roll trackers, darkroom logs
- Photography portfolio or archive tools
- Analog/nostalgia product storefronts (film stocks, cameras)
- Developer formulation apps or darkroom timers

## Typography

| Role | Family | Weight | Treatment |
|------|--------|--------|-----------|
| Display / headings | Archivo | 900 (Black) | Uppercase, `letter-spacing: -2px` at hero scale |
| Section headings | Archivo | 700 | Uppercase, 2px solid ink border-bottom |
| Body / captions | Newsreader | 400 | Italic-capable serif; 1.1rem for table cells |
| Metadata / code | IBM Plex Mono | 400 / 600 | Frame numbers, rebate text, badge labels, timer |

Google Fonts import:
```
Archivo:wght@400;700;900
IBM+Plex+Mono:wght@400;600
Newsreader:ital,opsz,wght@0,6..72,400;1,6..72,400
```

## Colour Palette

| Token | Value (OKLCH) | Usage |
|-------|--------------|-------|
| `--bg` | `oklch(0.92 0.01 260)` | Cool silver — page background |
| `--ink` | `oklch(0.15 0.01 260)` | Near-black — text, borders, filled badges |
| `--red` | `oklch(0.25 0.1 20)` | Darkroom safe-light red — timer section bg |
| `--accent` | `oklch(0.7 0.18 75)` | Kodak yellow/orange — active step, progress ring, scan badge |

Derived values used inline:
- `#111` — film-frame mat background
- `#aaa` — frame number label (muted on dark)
- `rgba(255,255,255,0.2)` — step dividers on red background
- Film stock swatches: `#d38e55 → #e1b382 → #f3d4a0` (Portra warm gradient), `#111 → #555 → #aaa` (Tri-X B&W), `#3f51b5 → #009688 → #4caf50` (CineStill/Provia cool gradient)

## Layout

**Film strip spine** — fixed left sidebar, 80px wide, `background: var(--ink)`, `color: var(--bg)`. Contains:
- Dynamically generated sprocket holes (white 15×10px rectangles, `border-radius: 2px`)
- Frame numbers (`frame-num`, 0 / 0A / 1 / 1A …) in IBM Plex Mono
- Rebate text (`KODAK 400-2 5063 TX`) in `writing-mode: vertical-rl`, repeating vertically
- Barcode strip (rightmost 6px): `repeating-linear-gradient` pattern, `opacity: 0.5`

**Main content** — `margin-left: 80px`, `padding: 4rem`, CSS `display: grid; gap: 4rem`.

**Contact sheet grid** — `grid-template-columns: repeat(auto-fit, minmax(200px, 1fr))`, `gap: 1rem`. Each frame: `background: #111`, `padding: 10px`. Images: `aspect-ratio: 3/2`, `object-fit: cover`, `filter: grayscale(1) contrast(1.2)`. On hover: `filter: grayscale(0) contrast(1.1)` — colour emerges.

**Timer section** — full-width dark-red band (`background: var(--red)`), `padding: 4rem`, flex row. Contains:
- SVG circular progress ring (250×250px), rotated −90deg, stroke-dashoffset animation
- Developer step list (`font-family: var(--f-mono)`), active step highlighted in `var(--accent)` with agitation note in Newsreader italic

**Film library cards** — 1px solid `var(--ink)` border, `padding: 1.5rem`. Film stock colour swatch strip (15px height) at top. Tags: pill-shaped `border-radius: 20px`, `border: 1px solid var(--ink)`.

**Roll archive table** — full-width `border-collapse: collapse`. `th` in Archivo uppercase 0.9rem. `td` in Newsreader 1.1rem. Three badge states:
- `b-dev`: filled dark (`background: var(--ink); color: var(--bg)`)
- `b-scan`: accent fill (`background: var(--accent); color: var(--ink)`)
- `b-shoot`: outline only (`border: 1px solid var(--ink)`)

## Signature Details

**Grain overlay** — `position: fixed; inset: 0; pointer-events: none; z-index: 999; opacity: 0.05`. SVG `feTurbulence` noise (`baseFrequency: 0.9, numOctaves: 3`), `mix-blend-mode: multiply`. Applied over entire viewport.

**Frame selection mark** — absolute-positioned SVG path (irregular organic loop, not a perfect circle) in `stroke: #d32f2f; stroke-width: 4; fill: none; stroke-linecap: round`. Simulates darkroom grease-pencil marking. Shown only on `.frame.select`.

**Expose animation** — `@keyframes expose { from { opacity: 0; filter: brightness(2); } to { opacity: 1; filter: brightness(1); } }`. Applied to each contact sheet frame with staggered `animation-delay` (0.1s, 0.2s …). Mimics film developing in the darkroom tray.

**Circular progress ring** — SVG `stroke-dasharray` / `stroke-dashoffset` technique. `stroke: var(--accent)`, `stroke-linecap: round`, circumference computed in JS (`radius * 2 * Math.PI`), offset = `circumference * 0.4` for 60% fill.

## Implementation Rules

1. The film strip spine must be `position: fixed` — it stays visible while content scrolls.
2. Images in contact frames MUST start grayscale and reveal colour on hover. Never start in full colour.
3. The timer section uses `--red` (darkroom safe-light), not a generic dark background. Maintain the chemical-lab mood.
4. Section headings (`h2`) require a 2px solid `var(--ink)` bottom border — this is the structural line that separates "sections" like printed photo paper.
5. Grain overlay must use `mix-blend-mode: multiply` at `opacity: 0.05` — heavier grain breaks readability; lighter grain disappears on light screens.
6. Film stock swatches use horizontal `linear-gradient` — they represent the tonal range of the stock, not a decorative bar.
7. Badge font is always IBM Plex Mono, `font-size: 0.7rem`, `text-transform: uppercase`, `font-weight: 600`.
8. Frame numbers are mono, small, muted (`color: #aaa` on dark mat, `color: var(--ink)` opacity on light ground).

## Anti-patterns
See `https://joincommons.cc/api/items/film-photo-roll/raw/anti-patterns`.

## Image Kit
See `https://joincommons.cc/api/items/film-photo-roll/raw/image-kit` for verified Unsplash URLs.
