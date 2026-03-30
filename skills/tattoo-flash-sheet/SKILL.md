# Tattoo Flash Sheet — Design Skill

## Identity
**Slug:** `tattoo-flash-sheet`
**Name:** Ink Parlour — Curated Flash & Booking
**Voice:** Artisan studio, handcrafted authority, intimate but precise

---

## When to Apply
Apply this skill when building interfaces for:
- Tattoo studio booking, flash sheet browsing, artist portfolio
- Any artisan/craft catalogue with filterable items and pricing
- Service galleries where physical placement or context matters
- Booking flows that need warmth without losing professionalism

---

## The One Memorable Thing
**Paper-pinned SVG flash cards that rotate slightly**, staged on a parchment board — the aesthetic of a real studio wall. Every card leans a few degrees as if hand-pinned with tape. On hover it levitates straight and forward.

---

## Color System
Work exclusively in this palette — no substitutions:

| Token | Value | Use |
|---|---|---|
| `--parchment` | `oklch(0.96 0.01 240)` | Page background, card fill |
| `--parchment-dark` | `oklch(0.92 0.02 240)` | Flash grid background, mini-thumb fill |
| `--flash-red` | `oklch(0.5 0.2 20)` | Accent — flash numbers, hand labels, active hotspots, role badges |
| `--ink` | `oklch(0.18 0.02 40)` | Primary text, borders, SVG strokes, dark sections |
| `--ink-faded` | `oklch(0.4 0.02 40)` | Secondary text, italic descriptions |

The full page sits on warm parchment. The only accent is a deep red-brick (`--flash-red`). There is no blue, no green, no purple.

---

## Typography

| Role | Font | Treatment |
|---|---|---|
| Display / Headings | `Archivo Black` | Uppercase, `letter-spacing: -0.02em`, line-height 1 |
| Body / Descriptions | `Crimson Pro` | Serif, italic for subtitles & artist descriptions, 18px base |
| Handwritten labels | `Caveat` | Flash numbers, style section labels, `color: var(--flash-red)` |
| Data / Meta | `Azeret Mono` | Uppercase, 0.85rem, used for prices, role badges, filter pills |

Google Fonts import:
```
Archivo Black | Crimson Pro:ital,wght@0,300..700;1,300..700 | Caveat:wght@400..700 | Azeret Mono:wght@300..700
```

**Font rules:**
- h1 uses `clamp(4rem, 8vw, 8rem)` — never a fixed px size
- Section headings get `border-bottom: 2px solid var(--ink); padding-bottom: 1rem`
- Handwritten `.hand` class is always `color: var(--flash-red)`, never `--ink`

---

## Motion
Single easing token: `--ease-expo: cubic-bezier(0.16, 1, 0.3, 1)`

Apply it to all transitions. Duration guide:
- Quick state changes (pill active, button hover): `0.3s`
- Content crossfades / reveals: `0.4–0.5s`
- Flash card lift: `0.4s`

Always include `@media (prefers-reduced-motion: reduce)` that collapses all durations to `0.01ms`.

---

## Key Components

### Flash Card (`.flash-item`)
- White/parchment card with `padding: 24px`, centered flex column
- **Rotation**: `nth-child` CSS applies -1.5deg, 2deg, -0.5deg, 1deg alternating
- **Tape**: Absolutely positioned `::before` substitute — a `.tape` div, `rgba(255,255,255,0.4)`, 40×15px, `-2deg` rotation, top center
- **Hover**: `translateY(-8px) scale(1.02) rotate(0deg) !important` — always straightens to 0deg
- **Flash number**: `.flash-no` in `Caveat`, `1.5rem`, `var(--flash-red)`, absolutely positioned top-left
- **SVG art**: 120×120px, `stroke: var(--ink)`, `stroke-width: 2`, `fill: none`. Red accents via `.accent` class (`stroke: var(--flash-red)`). Solid fills via `.fill` class (`fill: var(--ink); stroke: none`)
- **Price**: `.flash-price` in Azeret Mono, `border-top: 1px dashed rgba(0,0,0,0.2)`

### Flash Grid (`.flash-grid`)
- `grid-template-columns: repeat(auto-fill, minmax(200px, 1fr))`
- Background: `var(--parchment-dark)`, `border: 1px solid rgba(0,0,0,0.1)`, `box-shadow: inset 0 0 40px rgba(0,0,0,0.02)`

### Style Nav Pill (`.style-pill`)
- Azeret Mono, full-width block, left-aligned
- Default: transparent border, no background
- Active: `background: var(--ink); color: var(--parchment); border-color: var(--ink)`
- Description panel below crossfades in with `opacity + translateY(10px → 0)` on `.visible` class

### Placement Guide (`.placement-section`)
- Full-width dark section: `background: var(--ink); color: var(--parchment); padding: 80px 40px`
- Two-column: SVG body silhouette left, info panel right
- Hotspot: 8px red dot `::before` + pulsing ring `::after` via `@keyframes pulse`
- Active hotspot: 12px white dot, ring hidden
- Pain scale: row of 10 `.pain-pip` divs (24×8px, rounded). Active = `var(--flash-red)`. High pain (≥8) = `#ffaa00`

### Artist Card (`.artist-card`)
- White background, `border: 1px solid rgba(0,0,0,0.1)`, no border-radius
- Photo: `filter: grayscale(50%) contrast(1.2)` — never full color
- Role badge: Azeret Mono, `color: var(--flash-red)`, `0.75rem`
- Mini portfolio strip: auto-scrolling `@keyframes slide-port` (15s linear infinite), duplicated items for seamless loop

### Button (`.btn-primary`)
- `background: var(--ink)`, Archivo Black, uppercase
- Hover: `background: var(--flash-red); transform: translateY(-2px)`
- `border-radius: 4px`, `padding: 16px 32px`

---

## Layout Structure
1. **Hero** — full-bleed photo (80vh), dark gradient overlay, parchment text
2. **Flash Board** — 2-col (250px sidebar + auto grid), sticky style nav
3. **Placement Guide** — full-width ink-dark section (outside `.container`)
4. **Artist Grid** — `repeat(auto-fill, minmax(300px, 1fr))`
5. **Footer** — ink background, centered brand name

`.container` = `max-width: 1280px; padding: 0 40px`

---

## Texture & Depth
- Body background: SVG fractal noise (`baseFrequency: 0.8`, `opacity: 0.03`) — subtle paper grain
- Cards: `box-shadow: 2px 4px 12px rgba(0,0,0,0.05)`, `border: 1px solid rgba(0,0,0,0.05)`
- Focus ring: `2px solid var(--flash-red); outline-offset: 2px`

---

## Do Not
- Do not add color palette beyond the 5 tokens
- Do not use border-radius > 4px anywhere
- Do not make flash cards the same rotation — variety is structural, not decorative
- Do not use full grayscale on artist photos — always 50% + contrast bump
- Do not use a pill/rounded tab style for the style nav — it must look like a list
- Do not add drop shadows heavier than `8px 16px 24px rgba(0,0,0,0.1)`
