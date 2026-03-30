# Nail Art Swatch — Design Skill

## What This Skill Is

A luxurious yet editorial nail salon booking interface. The aesthetic marries Harajuku-grade precision with Western boutique polish — soft pink-lavender surfaces, serif display type, and interactive product selectors that feel tactile and deliberate. Everything breathes: generous whitespace, a restrained palette, and micro-interactions that reward attention without demanding it.

---

## Core Aesthetic Rules

**Color system (OKLCH — all values from exhibit)**
- Base: `oklch(0.96 0.015 335)` — soft pink-lavender page background
- Surface: `oklch(0.98 0.01 340)` — warm pink-white for cards and panels
- Surface elevated: `oklch(1 0 0)` — pure white for topmost layers
- Ink (primary text): `oklch(0.2 0.02 330)` — tinted neutral toward rose
- Ink muted: `oklch(0.5 0.02 330)` — supporting text, labels
- Ink light: `oklch(0.85 0.01 330)` — borders, separators
- Accent color: `oklch(0.6 0.08 335)` — deeper rose for active/semantic states
- Accent chrome: `linear-gradient(135deg, oklch(0.92 0 0), oklch(0.75 0 0), oklch(0.98 0 0))`

All neutrals are tinted toward rose/330–340°. Never use a flat gray.

**Typography**
- Display / headings: Playfair Display, serif, weight 400, `letter-spacing: -0.01em`, `line-height: 1.1`
  - h1: `clamp(3rem, 6vw, 4.5rem)`
  - h2: `2.5rem`
  - h3: `1.5rem`
- Body: Urbanist, sans-serif, 16px, `line-height: 1.5`
- Data / mono: Azeret Mono, monospace — used for prices, durations, stats
- Labels: `0.75rem`, `uppercase`, `letter-spacing: 0.1em`, `font-weight: 600`
- Logo: Playfair Display, italic, 2rem, weight 500

**Easing**
- Default ease: `cubic-bezier(0.16, 1, 0.3, 1)` — spring-like deceleration
- Use for all transforms: hover lifts, shape selector selection, color wheel transitions

---

## Layout Patterns

**Container**: `max-width: 1200px`, `padding: 0 40px`, centered
**Section spacing**: `margin-bottom: 160px` between major sections
**Hero grid**: `grid-template-columns: 1fr 1fr`, `gap: 64px`, items centered
**Booking grid**: `grid-template-columns: 3fr 2fr`, `gap: 80px`, receipt sticky at `top: 40px`

---

## Component Patterns

### Buttons
- Primary: dark background (`var(--ink)`), light text, pill-shaped `border-radius: 100px`, `padding: 16px 40px`, uppercase, 0.875rem, weight 500
- Hover: `translateY(-2px)`, background shifts to `var(--ink-muted)`, transition 0.4s with spring ease
- Active: `translateY(0)`

### Cards (Art Gallery)
- `border-radius: 12px`, surface background, `border: 1px solid var(--ink-light)` on info panel only (not the image)
- Masonry layout (3 columns → 2 → 1): `column-count: 3`, `column-gap: 32px`
- Hover: `translateY(-8px) scale(1.02)`, `box-shadow: 0 30px 60px rgba(0,0,0,0.08)`, `z-index: 2`
- Hover overlay: `background: rgba(250, 245, 247, 0.95)`, `backdrop-filter: blur(4px)`, fades in at `opacity: 0 → 1`

### Panels (Shape Selector, Palette, Receipt)
- `background: var(--surface)`, `border: 1px solid var(--ink-light)`, `border-radius: 24px`, generous internal padding (40–80px)
- Receipt panel: sticky

### Shape Selector (SVG nail shapes)
- SVG path with `fill: transparent`, `stroke: var(--ink-muted)`, `stroke-width: 2`
- Selected/hover: `fill: var(--ink)`, `stroke: var(--ink)`, `translateY(-8px)`
- Shape label: Playfair Display italic, 1.25rem, muted color → ink on selection
- Personality text: fades in with `opacity` transition, italic, muted

### Color Wheel (SVG pie)
- Built as inline SVG wedges with `fill` set to finish colors
- Rotated `-90deg` so first wedge starts at top
- Shimmer/Chrome wedges get `animation: shimmer 8s linear infinite` (`filter: hue-rotate(0–360deg)`)
- Nail tip swatches: `width: 48px`, `height: 72px`, `border-radius: 24px 24px 4px 4px`, inset shadow + highlight pseudo-element

### Service List / Custom Checkboxes
- Full-width service rows with `border-bottom: 1px solid var(--ink-light)`
- Custom circular checkbox: `border-radius: 50%`, border turns solid ink on checked, inner dot scales from 0→1
- Price shown in Azeret Mono, 1.125rem

### Tags (polish, labels)
- Pill shape: `border-radius: 100px`, `border: 1px solid var(--ink-light)`, 0.875rem
- Fade-in animation: `from { opacity: 0; transform: translateY(10px); }` with staggered delays

---

## Interaction Principles

1. **Hover = reveal, not replace** — cards reveal palette details on hover without destroying the primary layout
2. **Selection = lifted + filled** — selected states float up and fill (shape buttons, checkboxes)
3. **Data updates instantly** — price calculator updates without animation latency; trust is built through snappy feedback
4. **Iridescence is earned** — shimmer animation only on Chrome and Shimmer finishes; other wedges are static
5. **Spring ease everywhere** — `cubic-bezier(0.16, 1, 0.3, 1)` gives weight to interactions

---

## Photography Rules (Unsplash)

All 4 images are verified HTTP 200. Use only when the UI genuinely needs photographic nails/hands:
- Hero: `photo-1604654894610` — editorial manicured hands crossing, 4:5 ratio with subtle scale hover
- Masonry card 1: `photo-1610992015732` — metallic nail art close-up
- Masonry card 2: `photo-1519014816548` — soft gradient pastel nails (portrait ratio creates masonry height variation)
- Masonry card 3: `photo-1583255448430` — nail technician applying 3D art
- Masonry card 4: `photo-1632345031435` — row of luxury nail polish bottles

Images use `object-fit: cover` and always have descriptive `alt` text. Never leave alt blank.

---

## Accessibility

- Reduced motion: all animations collapse to 0.01ms when `prefers-reduced-motion: reduce`
- Focus visible: `outline: 2px solid var(--ink)`, `outline-offset: 4px`, `border-radius: 2px`
- Shape selector uses `role="radiogroup"` + `role="radio"` + `aria-checked`
- Color wheel wedges use `role="button"` + `aria-label`
- Service checkboxes use `focus-within` outline on the row label
- Price update region should use `aria-live="polite"` if extended

---

## Anti-Patterns (Never Do)

- Never use flat gray — all neutrals must tint toward rose (hue 330–340°)
- Never use `Helvetica` / `Inter` / `DM Sans` — this system uses Urbanist for body
- Never add decorative emojis or icons — the aesthetic is editorial and restraint-forward
- Never stack multiple heavy box shadows — single diffuse shadow only (`rgba(0,0,0,0.08)`)
- Never use saturated accent colors beyond the defined rose accent — the palette is intentionally muted
- Never animate the price number with a counting effect — instant update signals precision, not spectacle

---

## Sections Structure (4-step booking flow)

1. **Shape Selector** — "Choose your canvas" — 5 SVG nail shapes as radio buttons
2. **Art Gallery** — "The Lookbook" — masonry grid of art styles with hover palette reveal
3. **Color Wheel** — "Build your palette" — SVG pie chart of finishes, interactive nail tips
4. **Price Calculator** — "Configure Service" — checkbox service list with sticky receipt panel
