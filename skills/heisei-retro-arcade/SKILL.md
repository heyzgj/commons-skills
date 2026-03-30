---
name: heisei-retro-arcade
description: A 1997 Japanese PC-98 / Windows 95 UI aesthetic — warm beige CRT phosphor, raised 3D bevel chrome on every panel, stepped title bars, LCD VT323 readouts, CSS pixel art icons, strict 16-color palette, and a full-viewport scan line overlay.
metadata: design-skill
---

# Heisei Retro Arcade

## What This Skill Does

Routes a 1997 Heisei-era Japanese arcade/PC aesthetic into any community or tool product. Every surface has raised bevel chrome that looks like physical plastic hardware. A CRT scan line overlay covers the full viewport. Stats and counters appear in LCD segmented-display style. All icons and thumbnails are CSS pixel art — no photographs, no SVG illustrations. The palette is strictly limited to 16 warm CRT phosphor colors.

## When to use

- Pixel art creation tools, editors, and community galleries
- Indie game developer portals, game jam registration pages
- Retro gaming fan sites, wikis, and leaderboards
- Chiptune / 8-bit music community hubs
- Any product where the Heisei-era Japanese computing aesthetic IS the identity

## When not to use

- Enterprise SaaS or products requiring professional trust signals
- Accessibility-critical products (bitmap font at 8px has limited AA compliance)
- Photography-forward portfolios or media sites
- Products where modern browser conventions (smooth transitions, rounded corners) are expected

## Default Workflow

1. Read this `SKILL.md` first to confirm the aesthetic fits the product.
2. Read `https://joincommons.cc/api/items/heisei-retro-arcade/raw/design-language` for the full design language: pattern rules, adaptive behavior, accessibility, invariants.
3. Read `https://joincommons.cc/api/items/heisei-retro-arcade/raw/design-language` for exact CSS patterns — bevel system, LCD readout, title bar stripes, pixel art method.
4. Build using the 16-color palette as CSS custom properties first, then the bevel chrome system, then CRT overlay, then typography hierarchy, then sections.
5. Self-critique using `https://joincommons.cc/api/items/heisei-retro-arcade/raw/anti-patterns` checklist before finishing.

<design-system>
# Design Style: Heisei Retro Arcade

## Design Philosophy
### Core Principle
**The screen IS 1997.** This design resurrects the exact feeling of booting a Japanese PC-98 or early Windows 95 machine. Everything snaps to pixel boundaries. Every surface has physical weight from raised bevel chrome. Nothing is smooth, nothing is anti-aliased, nothing pretends to be modern.

### Visual Vibe
**Emotional Keywords**: Pixelated, Nostalgic, Warm, Chunky, Tactile, 8-bit, Arcade, Heisei, CRT-glow, Playful

The design feels like:
- A Japanese PC-98 adventure game menu screen with numbered choices and a blinking cursor
- RPG Maker 2000 running on Windows 98 — dark title bars, inset body panels, pixel font on every label
- A Tamagotchi status screen scaled up to desktop: LCD readouts, recessed display windows
- The attract mode of a Neo Geo cabinet in a dim Tokyo arcade, warm phosphor on light beige

### What This Design Is NOT
- ❌ Vaporwave/synthwave — that is dark backgrounds with neon; Heisei is warm beige phosphor on light
- ❌ A modern site with a pixel font added as decoration — the entire UI chrome must be retro
- ❌ Dark mode with glowing accents — authentic 90s Japanese PC monitors were light background, dark ink
- ❌ Anti-aliased or soft pixel art — every edge must be crisp, `image-rendering: pixelated` everywhere
- ❌ Smooth CSS transitions — state changes are instant or snap; no easing curves on interactive elements
- ❌ A playable canvas game — this is UI chrome for a tool/community, not interactive game mechanics

### The DNA of Heisei Retro Arcade

**1. Raised 3D bevel chrome on every container.**
Panels use the Windows 95 convention: light on top-left edges, dark on bottom-right edges. `border-color: hi sh sh hi`. Buttons invert on press. Every panel looks like plastic hardware.

**2. CRT scan line overlay on the full viewport.**
`body::after` pseudo-element with 4px-pitch `repeating-linear-gradient` at 4% opacity, `position: fixed`, `pointer-events: none`, `z-index: 9999`. Makes flat beige feel like a monitor.

**3. Strictly 16-color warm palette.**
Colors come from a lookup table — warm beige, dusty rose, muted teal, pale mustard, charcoal, brick red, slate blue, chrome pair, near-white, mid gray-beige, dark panel, LCD green, LCD dark, gold, pink highlight. Nothing outside this table.

**4. LCD segmented display readouts.**
Stats and counters use VT323 in a recessed inset-bordered box on LCD-green background. The inset border is the inverse of raised chrome — it reads as a physical screen window sunk into housing.

**5. Stepped title bars, not smooth gradients.**
Window title bars use repeating stripe background (8px pitch, two close slate values) to simulate PC-98 dithered title bars. Press Start 2P at 8px in near-white.

**6. CSS pixel art for all icons and imagery.**
No emoji, no SVG illustrations, no photography. Icons and thumbnails are drawn with layered CSS `background` linear-gradients at 2px increments within 16×16 or 32×32 boxes.

## Typography
- **Press Start 2P** — title bars (8px), logo (20px), display headings. Never for body text.
- **IBM Plex Mono** — all readable text: body (9–11px), UI labels, metadata, button text.
- **VT323** — LCD readouts only: stats (28–48px), countdown digits, rank numbers (18–20px).

## Color (16-token warm CRT palette)
```
--bg:         #e8dcc8   warm aged monitor beige
--panel-rose: #d4a89a   dusty rose panel fills
--panel-teal: #7ab8b0   muted teal, selected states
--panel-must: #d9c87a   pale mustard panel fills
--ink:        #1a1a22   charcoal text and borders
--brick:      #a83428   brick red primary accent
--slate:      #4a6488   slate blue title bars
--hi:         #f5f2ec   chrome highlight (raised top-left)
--sh:         #6a6870   chrome shadow (raised bottom-right)
--white:      #faf8f4   near-white surfaces
--mid:        #b8b4aa   mid gray-beige dividers
--dark-panel: #8c7e6e   dark panel section bars
--lcd-bg:     #c8d4a8   LCD display background
--lcd-ink:    #1a2a10   LCD display text
--gold:       #c8a432   gold rank badges
--pink-hi:    #e8b4aa   pink highlight avatar fills
```

## Bold Choices (Non-Negotiable)
1. Every panel has raised 3D bevel — `border-color: var(--hi) var(--sh) var(--sh) var(--hi)` + 3px ink shadow
2. CRT scan lines cover the full page — `body::after` fixed, `z-index: 9999`, `pointer-events: none`
3. At least one LCD readout element — VT323, lcd-bg fill, inset bevel border
4. All graphics use `image-rendering: pixelated` — set on `html` globally
5. Zero border-radius anywhere — every shape is a hard rectangle
6. Blink animations use `step-end` — binary on/off, never fade
7. Button press is instant snap — active inverts bevel, 2px translate, no transition property
8. Title bars use stepped stripe pattern — `background-size: 8px 100%` alternating two slate values

## What Success Looks Like
Should feel like discovering a forgotten Japanese shareware tool from 1997, lovingly preserved and running in a browser. Should NOT feel like a modern website with a pixel font applied as a theme.
</design-system>

## Gotchas

1. **Smoothness is the enemy.** Any CSS `transition` on layout/color/border destroys the aesthetic. The only permitted transition is `opacity 0.1s step-end` on gallery overlays.
2. **Press Start 2P is illegible below 8px.** Never use for body copy or captions — IBM Plex Mono carries all readable text.
3. **Bevel direction encodes meaning.** Raised = `hi sh sh hi`. Inset = `sh hi hi sh`. Backwards bevels make panels look physically wrong — audit every border-color.
4. **The scan line `z-index` must be 9999 with `pointer-events: none`.** Lower z-index = scan lines only tint some layers. Missing pointer-events = captures all clicks.
5. **LCD background must be `#c8d4a8` (greenish).** A neutral grey kills the LCD authenticity — the green phosphor tint is the detail that makes it feel real.
6. **CSS pixel art requires even-pixel grid discipline.** Each `linear-gradient` rectangle must align to 2px coordinates. Off-by-one breaks the 8-bit illusion.
