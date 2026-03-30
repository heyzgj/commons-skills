# Skincare Routine Shelf — Design Skill

## Identity
**Slug:** `skincare-routine-shelf`
**Theme:** Clinical skincare tracking with editorial beauty sensibility — precise, measured, quietly luxurious.
**Brand voice:** "Shelfie." — a lowercase logo that signals intimacy and science together.

---

## When to Apply
Use this skill for apps and pages that combine:
- Product inventory or collection display (shelf, stack, grid of physical objects)
- Sequential routine or protocol tracking (step-by-step timeline)
- Ingredient/compatibility logic (conflict checker, synergy matrix)
- Progress journaling with metrics (adherence tracking, trend lines)
- Any domain where chemistry or precision language elevates a wellness product

---

## Design Language

### Color System — OKLCH tinted neutrals
| Token | Value | Use |
|---|---|---|
| `--base` | `oklch(0.96 0.015 165)` | Page background — cool mint-white |
| `--surface` | `oklch(0.99 0.005 165)` | Card, overlay, bottle background |
| `--ink` | `oklch(0.2 0.01 165)` | Primary text, borders, icons |
| `--ink-muted` | `oklch(0.45 0.01 165)` | Secondary text, labels |
| `--ink-light` | `oklch(0.8 0.01 165)` | Dividers, light borders |
| `--state-safe` | `oklch(0.88 0.04 150)` | Soft sage — safe/compatible state |
| `--state-warn` | `oklch(0.92 0.06 70)` | Warm amber — conflict/warning state |
| `--accent` | `oklch(0.92 0.04 15)` | Rose pink — accent highlight |

All colors use OKLCH. No hex. No pure white or black.

### Typography — Three-tier system
| Role | Family | Weight | Usage |
|---|---|---|---|
| Display | Cormorant Garamond | 300–600 + italic | Hero h1, section titles, product names, journal quote |
| Body | Karla | 300–700 | Body copy, descriptions, nav, labels |
| Data | IBM Plex Mono | 400–500, tabular-nums | Step numbers, pH levels, concentrations, metrics, footer |

Rules:
- Logo: display font, weight 500, lowercase, `letter-spacing: -0.02em`
- Nav links: body font, `font-size: 0.875rem`, uppercase, `letter-spacing: 0.05em`
- Section titles: display font, `font-size: 3rem`, weight 400
- Product names: display font, `font-size: 1.5rem`
- Active ingredient badges: data font, `font-size: 0.875rem`, inline-block with border
- Metrics value: data font, `font-size: 3rem`, `line-height: 1`

### Easing
Single custom ease for all transitions: `cubic-bezier(0.16, 1, 0.3, 1)` (`--ease`).

### Spacing Rhythm
Container max-width 1280px, horizontal padding 40px (24px mobile).
Section spacing: 120–140px bottom margin.
Grid gap standard: 32px.

---

## Component Patterns

### 1. The Shelf — Product Grid
- 4-column grid (`repeat(4, 1fr)`, 32px gap), items aligned to bottom edge
- Each bottle: centered image wrapper 140×240px, `border-radius: 4px`, `box-shadow: 0 30px 60px -20px rgba(0,0,0,0.15)`
- Hover lift: `translateY(-16px) scale(1.02)`, shadow deepens
- Below image: brand name (uppercase, 0.75rem, muted), product name (display), active ingredient (data font badge with border)
- Subtle marble shelf: `border-bottom: 8px solid var(--surface)` + CSS gradient overlay on container

### 2. Hover Detail Overlay
- Absolute positioned card (240px wide) above the bottle, centered via `translateX(-50%)`
- Resting: `opacity: 0; visibility: hidden; transform: translateY(10px) scale(0.98)`
- Active: `opacity: 1; visibility: visible; transform: translateY(0) scale(1)` (0.4s `--ease`)
- Arrow pointer: `::after` pseudo-element, 12px rotated square, border-right + border-bottom
- Contents use `.det-title` (data font, uppercase, muted) + `.det-val` (body font, 0.875rem)
- Synergy colors applied inline: `color: var(--state-safe)` or `color: var(--state-warn)`

### 3. AM/PM Timeline Toggle
- Two pill buttons (`border-radius: 40px`), centered, gap 16px
- Inactive: transparent background, `border: 1px solid var(--ink-light)`, muted text
- Active: `background: var(--ink); color: var(--surface); border-color: var(--ink)`
- Font: display, 1.5rem
- Click: micro-pulse animation (`scale(0.95)` → `scale(1)`, 150ms)
- Two `.timeline` containers, stacked in `.timeline-wrap`; inactive timeline is `position: absolute; opacity: 0; pointer-events: none; transform: translateY(10px)`; active is `position: relative; opacity: 1`
- Horizontal connector line via `.timeline-wrap::before` (1px, ink-light, top: 60px)

### 4. Routine Step
- Circular image: 120×120px, `border-radius: 50%`, `border: 4px solid var(--base)`, `box-shadow: 0 4px 12px rgba(0,0,0,0.05)`
- Step number: data font, 0.75rem, muted, above title
- Title: display font, 1.25rem
- Desc: body font, 0.875rem, muted

### 5. Synergy Matrix Cards
- 3-column grid (`repeat(3, 1fr)`, 32px gap)
- States: `.warn` → `background: var(--state-warn)`, `.safe` → `background: var(--state-safe)`, neutral → `background: var(--surface)`
- Icon: 32px inline SVG (stroke only), 24px bottom margin
- Ingredient pair: data font (label "Retinol 0.5%"), with display span for names (1.75rem, weight 400)
- Description: body font, 1rem, `line-height: 1.6`
- Hover: `translateY(-4px)` + subtle shadow

### 6. Progress Section
- 2-column layout, 64px gap, aligned center
- Left: blockquote-style journal — display font, 2.25rem, `border-left: 2px solid var(--ink)`, `padding-left: 32px`
- Italic continuation: `display: block; margin-top: 16px; font-size: 1.5rem; color: var(--ink-muted)`
- Right: 2×2 metric grid — each metric card `border: 1px solid var(--ink-light)`, hover → border shifts to `var(--ink)`
- Metric value: data font, 3rem, `line-height: 1`
- Metric label: body font, 0.875rem, uppercase, `letter-spacing: 0.05em`, muted
- Trend: inline SVG sparkline (data font value + drawn path), `stroke-dasharray + animation: drawLine`

### 7. Section Header Pattern
`border-bottom: 1px solid var(--ink)` with `padding-bottom: 16px`, flex row space-between. Left: display 3rem. Right: data font, 0.875rem, uppercase, muted.

---

## Motion Principles
- All transitions use `var(--ease)` — no `ease-in-out`, no `linear`
- Hero image: `transform: scale(1.02)` at rest → `scale(1.05)` on hover, `transition: 1.5s`
- SVG trend lines: `drawLine` keyframe animation (`stroke-dashoffset: 150 → 0`), 2s
- `prefers-reduced-motion`: collapse all animation durations to 0.01ms
- Focus visible: `outline: 2px solid var(--ink); outline-offset: 4px; border-radius: 2px`

---

## Photography — Unsplash Only
Use real beauty/skincare editorial photography. Product must be photographed against clean surfaces. No flat icon illustrations as product images.

See `https://joincommons.cc/api/items/skincare-routine-shelf/raw/image-kit` for verified URLs.

---

## Constraints
- Never use `ease-in-out` or `linear` for interactions — only `var(--ease)`
- Never use hex colors — OKLCH only
- Never use generic sans-serif alone for product names — always Cormorant Garamond for display copy
- Never show 0 or empty metric values — only render metrics when data exists
- Never use decorative gradients on product images — keep surfaces clean
- Max container width 1280px — do not exceed
- The data font (IBM Plex Mono) carries scientific authority — reserve it for numbers, concentrations, step counts, and technical labels only

---

## Quick-Start Checklist
- [ ] Import all three fonts from Google Fonts
- [ ] Set all 9 CSS custom properties on `:root`
- [ ] Apply `--ease` to every transition/animation
- [ ] Use display font for all headings and product names
- [ ] Use data font for all numeric/technical content
- [ ] Add `prefers-reduced-motion` media query
- [ ] Set `focus-visible` outline style
- [ ] Verify all Unsplash image URLs return HTTP 200 before shipping
