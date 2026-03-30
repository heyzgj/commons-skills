# Magnetic Poetry Page — Design Skill

## Identity
A poet's personal site built as a refrigerator door covered in magnetic word tiles, grocery lists, polaroids, business cards, and takeout menus — all pinned with colorful round magnets. The hero is an interactive field of draggable word tiles. Published poems render as tile clusters. Everything is slightly rotated, casually overlapping, and held down by magnets.

**Slug:** `magnetic-poetry-page`
**Category:** Personal / Poetry
**Personality:** Warm, analog, literary. Kitchen-table intimacy over gallery polish.

---

## When to Use
- Poet or writer personal site
- Literary journal or chapbook landing page
- Creative writing portfolio
- Workshop or reading series homepage
- Any personal page wanting fridge-door warmth over corporate sleekness

---

## Core Visual System

### Color Palette (OKLCH)
| Token | Value | Role |
|---|---|---|
| `--fridge` | `oklch(0.94 0.005 240)` | Brushed-metal background surface |
| `--tile-bg` | `oklch(0.98 0.005 90)` | Magnetic word tile background |
| `--tile-text` | `oklch(0.20 0 0)` | Tile text — near-black |
| `--tile-shadow` | `oklch(0.70 0 0 / 0.25)` | Consistent shadow for all objects |
| `--magnet-red` | `oklch(0.55 0.20 25)` | Primary magnet color, nav pill bg |
| `--grocery-yellow` | `oklch(0.96 0.02 95)` | Grocery list / sticky note paper |
| `--marker-ink` | `oklch(0.25 0.08 250)` | Handwritten heading ink |
| `--tape` | `oklch(0.92 0.01 90 / 0.7)` | Translucent tape strip |

Additional magnet colors: `oklch(0.50 0.16 280)` (purple), `oklch(0.52 0.14 150)` (green), `oklch(0.48 0.18 30)` (orange), `oklch(0.50 0.12 200)` (blue).

### Typography
- **Body / tiles:** `Courier Prime` (monospace) — 13-15px, weight 400/700
- **Handwritten notes:** `Patrick Hand` (cursive) — 14-20px, casual labels and captions
- **Bold headings:** `Permanent Marker` (cursive) — 18-26px, section labels and card titles

### Texture
- Brushed-metal fridge: vertical repeating 1px hairline gradient at 8% opacity
- Subtle full-body gradient: `oklch(0.95)` to `oklch(0.93)` top to bottom
- All objects cast small `2px 2px 1px` shadows from `--tile-shadow`

---

## Workflow

1. **Load** `https://joincommons.cc/api/items/magnetic-poetry-page/raw/design-language` for full CSS patterns and component specs
2. **Load** `https://joincommons.cc/api/items/magnetic-poetry-page/raw/image-kit` — this skill uses zero photography; all visuals are CSS + inline SVG
3. **Build** using the component patterns: word tiles, grocery lists, polaroids, takeout menus, chapbook pins, business cards, child-drawing SVGs, tape strips, round magnets
4. **Self-critique** against `https://joincommons.cc/api/items/magnetic-poetry-page/raw/anti-patterns` — read every item and verify compliance

---

## Component Inventory

| Component | CSS Class | Metaphor |
|---|---|---|
| Word tile | `.word-tile` | Magnetic poetry tile (draggable in hero) |
| Nav magnets | `.nav-magnet` | Colored rounded pills — navigation |
| Grocery list | `.grocery-list` | Yellow paper pinned with round magnet |
| Business card | `.business-card` | Off-white card held by purple magnet |
| Takeout menu | `.takeout-menu` | Bordered menu with green magnet |
| Chapbook pin | `.chapbook-pin` | Small card with book details |
| Polaroid | `.polaroid` | White-bordered photo with handwritten caption |
| Tape strip | `.tape-strip` | Translucent section divider |
| Section label | `.section-label` | Permanent Marker heading, slight rotation |
| Child drawing | `.childs-drawing` | Inline SVG crayon illustration pinned by magnet |

---

## Motion & Interaction
- **Drag:** Hero word tiles are draggable; `cursor: grab/grabbing`, shadow deepens on grab
- **Hover:** Tiles lift shadow on hover (`3px 3px 3px`), nav magnets `scale(1.05)`
- **Drop:** Tile gets a new random rotation (`-2.5 to +2.5deg`)
- **Scroll:** Smooth anchor scrolling from nav magnets
- **Easing:** `ease` for tile shadow transitions (0.1s)

---

## Gotchas
1. **No grid layout for content.** The fridge door uses flex-wrap for two columns but every pinned object is independently rotated and offset. Snapping to a strict grid kills the kitchen-door feeling.
2. **Every object needs a magnet.** Grocery lists, polaroids, menus, chapbooks — each has a visible colored circle magnet pinning it. Without magnets the metaphor breaks.
3. **Rotation must vary per element.** Tiles: -3 to +3deg. Cards: -4 to +2.4deg. Never uniform angles.
4. **Courier Prime is the voice.** Swapping to a sans-serif makes it look like a tech dashboard, not a fridge.
5. **Word tiles are not buttons.** They are monospaced, off-white, tiny-shadow rectangles. No border-radius > 4px, no colored backgrounds, no hover color changes.
6. **SVG illustrations must look hand-drawn.** Stroke-only, no fills, wobbly proportions, crayon-weight strokes (2-3px). Photo-realistic SVGs break the child-drawing charm.

---

## Files in This Bundle
- `assets/exhibit.html` — full interactive exhibit
- `assets/design-skill.json` — manifest
- `assets/tokens.dtcg.json` — design tokens
- `https://joincommons.cc/api/items/magnetic-poetry-page/raw/design-language` — full design system reference
- `https://joincommons.cc/api/items/magnetic-poetry-page/raw/image-kit` — image usage notes (CSS/SVG only)
- `https://joincommons.cc/api/items/magnetic-poetry-page/raw/anti-patterns` — traps to avoid
