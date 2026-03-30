# Blind Box Shelf — Design Skill

## Identity
**Slug:** `blind-box-shelf`
**Display name:** Blind Box Shelf
**Tagline:** Collectible toy UI with rarity tiers, gacha mechanics, and brutalist pop energy

## What This Is
A design language for blind-box / gacha collector apps. Think POPMART meets a fansite zine: chunky ink borders, pastel-shelf backgrounds, OKLCH rarity colors, and thick-stroked SVG toy figures. The defining interaction is the probability wheel that spins to reveal a figure rarity.

---

## Typography

| Role | Family | Weight | Notes |
|---|---|---|---|
| Display / Brand | `Lilita One` (cursive) | 400 | All-caps, slight letter-spacing, text-shadow offset |
| Heading | `Fredoka` (sans-serif) | 300–700 |  |
| Body | `Quicksand` (sans-serif) | 300–700 | Default body font |

Google Fonts import:
```html
<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&family=Lilita+One&family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
```

Font CSS vars:
```css
--font-display: 'Lilita One', cursive;
--font-heading: 'Fredoka', sans-serif;
--font-body: 'Quicksand', sans-serif;
```

---

## Color Tokens (OKLCH)

```css
/* Backgrounds */
--base-shelf: oklch(0.97 0.01 240);   /* pale blue-grey page BG */
--base-paper: oklch(1 0 0);            /* pure white card BG */
--base-kraft: oklch(0.92 0.04 80);    /* warm kraft tan for trade cards */

/* Ink */
--ink:       oklch(0.15 0.02 240);     /* near-black with blue cast */
--ink-muted: oklch(0.6  0.02 240);    /* secondary/caption text */

/* Rarity spectrum */
--rarity-common: oklch(0.7  0.1  230);  /* Sky Blue */
--rarity-rare:   oklch(0.7  0.15  20);  /* Coral */
--rarity-ur:     oklch(0.65 0.18 290);  /* Violet */
--rarity-secret: oklch(0.85 0.15  80);  /* Gold — animated shimmer */
```

**Background texture:** `radial-gradient(var(--ink) 1px, transparent 1px)` at `24px 24px` — subtle polka-dot on page BG.

---

## Spacing & Borders

| Token | Value |
|---|---|
| `--border-w` | `3px` |
| Border style | `solid var(--ink)` everywhere except missing figures (dashed) |
| Global border-radius | Cards 16–24px, pills/badges 100px, brand elements 12px |
| Container max-width | `1280px`, padding `0 40px` |
| Section gap | `64px` between major sections |

---

## Shadow System — Brutalist Offset

```css
/* Default card shadow */
box-shadow: 4px 4px 0 var(--ink);

/* Hover state */
transform: translate(-2px, -2px);
box-shadow: 6px 6px 0 var(--ink);

/* Active / pressed state */
transform: translate(2px, 2px);
box-shadow: 2px 2px 0 var(--ink);
```

Figure cards use an **acrylic gloss** inset variant:
```css
box-shadow:
  inset 0 4px 0 rgba(255,255,255,0.8),
  inset 0 -4px 0 rgba(0,0,0,0.05),
  4px 4px 0 var(--ink);
```

Missing/locked figures: `filter: grayscale(1) opacity(0.5)`, `border-style: dashed`, no shadow.

---

## Motion

```css
--ease-bounce: cubic-bezier(0.34, 1.56, 0.64, 1);
--ease-wheel:  cubic-bezier(0.1, 1, 0.1, 1);  /* deep expo-out for spin */
```

- Card lift on hover: `translateY(-8px)`, `0.3s var(--ease-bounce)`
- Brutal shadow shift: `0.2s var(--ease-bounce)`
- Probability wheel spin: `transform: rotate(Ndeg)`, `3s var(--ease-wheel)`, 5 full rotations + segment targeting
- Pull result reveal: `scale(0)→scale(1)`, `0.4s var(--ease-bounce)`
- Progress bar fill: `width`, `1s var(--ease-bounce)`
- Secret badge shimmer: `background-position 200%→-200%`, `2s infinite linear`
- Confetti canvas burst on SECRET pull (canvas API, gravity physics)
- Respect `prefers-reduced-motion: reduce`

---

## Key Components
- **Figure Cards**: acrylic blur BG, rarity badge rotated 5deg at top-right, SVG toy area 120×120, missing = dashed border + greyscale
- **Probability Wheel**: conic-gradient by rarity %, double-ring border, triangle pointer, pull button in `--rarity-common`
- **Series Progress**: silhouette boxes (got=blue, miss=dim), 16px chunky progress bar, completed series = gold
- **Trade Board**: kraft tan BG with noise texture, "HAVE → WANT" layout
- **Layout**: two-column `2fr 1fr` (collapses at 900px), collection grid `minmax(180px, 1fr)`

## Applying This Skill
1. Load Google Fonts (Lilita One, Fredoka, Quicksand) and set CSS tokens
2. `3px solid var(--ink)` borders + `4px 4px 0` offset shadows on every card — load-bearing
3. Color rarity elements with `--rarity-*` tokens; rotate badges 5deg
4. Wheel spin: `--ease-wheel`, 5 full rotations + random landing
5. Missing figures = dashed border + greyscale — never solid + colored
