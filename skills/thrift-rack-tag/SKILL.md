# Thrift Rack Tag — Design Skill

## Identity
**Slug:** `thrift-rack-tag`
**Title:** GOODFIND Digital Thrift Vault
**Category:** e-commerce / resale marketplace
**Mood:** Y2K nostalgia · physical thrift store energy · tactile, handwritten, bold

---

## When to Use This Skill
Use when building interfaces for secondhand clothing marketplaces, vintage resale platforms, thrift store digitization, or any product discovery experience that benefits from physical-store tactility. The design evokes the sensory pleasure of flipping through a real rack — price tags dangling, stamps on garments, mismatched treasures.

---

## Layout System

### Macro Structure
- **Fixed sidebar** (320px wide, 100vh) — acts as the physical clothing rack; contains the chrome rack-bar and dangling price tags
- **Scrollable main viewport** — full-height, dot-grid background (`radial-gradient(var(--ink) 0.5px, transparent 0.5px)`, 30px spacing), `overflow-y: scroll`
- Header is white with a heavy `2px` ink border-bottom; all sections use `60px` horizontal padding
- Three content zones: horizontal scroll "Drops Reel", CSS masonry feed (3-column), seller business-card grid

### Sidebar Rack Detail
- Chrome bar: `width: 22px`, `margin-left: 35px`, `background: linear-gradient(90deg, #ccc 0%, #fff 25%, #999 75%, #666 100%)` with inset shadow
- Price tags dangle from the bar via `.string` (2px high, 45px wide, `#999` background) and `.tag` (white card, 140px wide, punched-hole motif, `box-shadow: 10px 10px 25px rgba(0,0,0,0.08)`)
- Tags sway continuously: `@keyframes sway-tag-side` rotates between `-4deg` and `+4deg` over 4s ease-in-out
- Tag anatomy: category label (mono, uppercase, pink), handwritten price (`Caveat`, 2.2rem, ink), size dot (cyan circle, top-right, 28px, `Archivo Black`)
- Variant tag: bubblegum pink background for "GRAIL" items — full pink fill, white text/hole

### Cards
- **Drop card** (horizontal scroll): `flex: 0 0 450px`, 16px border-radius, `border: 2px solid var(--ink)`, `box-shadow: 12px 12px 0 rgba(0,0,0,0.05)`. On hover: translate(-4px, -4px) + `box-shadow: 16px 16px 0 var(--cyan)`
- **Item card** (masonry): `border: 3px solid var(--ink)`, `border-radius: 2px` (nearly square), transition `cubic-bezier(0.34, 1.56, 0.64, 1)` (bounce). On hover: `box-shadow: 15px 15px 0 var(--pink)`
- **Seller biz card**: `background: oklch(0.96 0.02 85)` (yellowed paper), `border: 1px solid #ddd`, `border-radius: 4px`, subtle hover `scale(1.02)`

### Stamps
Positioned `absolute` in the top-right corner of item cards. Two variants:
- `.stamp-mint`: `border-color: var(--mint); color: var(--mint)` — default `rotate(-8deg)`
- `.stamp-grail`: `border-color: var(--pink); color: var(--pink)` — default `rotate(15deg)`
On card hover, stamps animate to `scale(1.2) rotate(0deg)` — the "reveal" moment.

### Impact Section
Dark-mode footer: `background: var(--ink); color: #fff`. Ghost watermark behind stats: `opacity: 0.1`, `font-size: 5rem`, `letter-spacing: 15px` via `::before` pseudo-element. Stat values use `Archivo Black` at `5rem`.

---

## Color Palette (OKLCH)

| Token | Value | Use |
|---|---|---|
| `--paper` | `oklch(0.97 0.01 95)` | Page/body background (eggshell) |
| `--ink` | `oklch(0.18 0.04 280)` | Deep midnight purple — borders, text, dark sections |
| `--pink` | `oklch(0.75 0.22 350)` | Y2K bubblegum — accents, prices, grail stamps, hover shadows |
| `--pink-dark` | `oklch(0.65 0.22 350)` | Pink tag border/active state |
| `--cyan` | `oklch(0.78 0.15 210)` | Neon cyan — size dots, drop-card hover shadow, stat labels |
| `--amber` | `oklch(0.85 0.15 80)` | Vintage gold — seller logo accents |
| `--mint` | `oklch(0.8 0.12 160)` | Mint condition stamp |
| Sidebar bg | `oklch(0.94 0.02 280)` | Slightly purple-tinted sidebar |
| Seller card bg | `oklch(0.96 0.02 85)` | Slightly yellowed paper |

---

## Typography

| Role | Font | Weight | Size | Notes |
|---|---|---|---|---|
| Hero display | `Archivo Black` | 400 (display) | `clamp(4rem, 10vw, 8rem)` | All-caps, `letter-spacing: -4px`, `line-height: 0.8` |
| Section titles | `Archivo Black` | — | `2rem` | Uppercase, `border-left: 8px solid var(--pink)`, `padding-left: 20px` |
| Prices | `Caveat` | 600 | 2.2–3rem | Handwritten feel, communicates informality |
| Body / descriptions | `Instrument Serif` | 400 | ~1.1rem | Elegant serif for item and bio copy |
| Labels / stats / mono | `Azeret Mono` | 400/700 | 0.65–0.8rem | Uppercase, tight `letter-spacing: 1px` |
| Badge nav | `Archivo Black` | — | `0.9rem` | Uppercase pill badges |

---

## Interaction Patterns

- **Badge nav**: border → filled-ink state on hover/active with `box-shadow: 4px 4px 0 var(--pink)` and `translate(-2px, -2px)`
- **Drop cards**: translate up-left + cyan offset shadow on hover
- **Item cards**: bounce cubic-bezier (`0.34, 1.56, 0.64, 1`) + pink offset shadow
- **Stamps**: rotate from tilted to 0deg + scale up on card hover
- **Scroll-reveal**: all cards enter via `opacity: 0 → 1` + `translateY(30px → 0)` with `cubic-bezier(0.2, 0.8, 0.2, 1)` via IntersectionObserver (threshold 0.1)
- **Scrollbar**: 8px custom scrollbar with `--ink` thumb color

---

## Key Metaphors to Maintain
1. **Physical rack**: The sidebar IS the rack. Don't replace it with a standard nav.
2. **Price tag dangling**: Tags sway; they are not static badges.
3. **Offset shadows**: All card hover states use a flat-colored offset shadow (not blurred), evoking stacked objects.
4. **Handwritten prices**: The `Caveat` font for all price display is non-negotiable — it signals "written in Sharpie on a tag."
5. **Dot-grid background**: The faint dot pattern on the viewport reads as graph paper / vintage catalog.

---

## Adapting This Skill

- Substitute `--pink` with another OKLCH accent to shift era (deeper magenta for 80s, softer lavender for cottagecore)
- Add more sway-speed variants by changing the animation duration on individual `.string`/`.tag` elements
- Extend masonry feed columns down to 2 at medium breakpoints (already included)
- Seller biz cards can carry follower counts, location, rating — keep `.s-stats` as mono uppercase
- The impact section pattern (dark bg + ghost watermark + large mono stats) works for any sustainability or social-proof block

---

## Anti-Patterns
See `https://joincommons.cc/api/items/thrift-rack-tag/raw/anti-patterns`.
