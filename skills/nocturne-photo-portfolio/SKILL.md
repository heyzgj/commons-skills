# Nocturne Photo Portfolio — Design Skill

## What This Skill Does
Applies a dark-theme fine-art photography portfolio aesthetic. Deep near-black backgrounds, amber (#F59E0B) as the single accent color, glass-morphism cards, atmospheric blurred radial orbs, and monospace labels — all designed to let photographs dominate the page.

## When to Apply
- Photographer or visual artist portfolio
- Fine-art or documentary image showcases
- Gallery or exhibition landing pages
- Any dark portfolio where photography is the primary content

## Core Design Rules

### Color — do not deviate
- **Background deep**: `#0A0A0F` — page background, never pure black
- **Background base**: `#12121A` — alternate section backgrounds (stats strip, clients)
- **Background elevated**: `#1A1A24` — card interiors, case study content pane
- **Glass surface**: `rgba(26,26,36,0.60)` with `backdrop-filter: blur(8px)`
- **Amber accent**: `#F59E0B` — the ONLY color in the system; use for accent lines, em highlights, labels, CTA buttons, tags
- **Amber glow**: `rgba(245,158,11,0.40)` — box-shadows on hover
- **Amber dim fill**: `rgba(245,158,11,0.08)` — tag backgrounds, contact card hover
- **Amber orb**: `rgba(245,158,11,0.03)` — fixed blurred radial orbs in background
- **Text primary**: `#FAFAFA`
- **Text secondary**: `#71717A` — descriptions, labels, metadata
- **Border subtle**: `rgba(255,255,255,0.08)` — default card borders, dividers
- **Border hover**: `rgba(255,255,255,0.15)` — elevated state on hover

### Typography — three-font stack, each with a distinct role
- **Display** `Space Grotesk` (wght 300–700): headings (h1–h4), stat numbers, about statement, client names, card titles. Letter-spacing `-0.02em` at large sizes.
- **Body** `Inter` (wght 300–500): running prose, taglines, body copy. Line-height `1.6`–`1.8`.
- **Mono** `JetBrains Mono` (wght 400–500): ALL labels, nav links, buttons, tags, footer, captions. Always `uppercase`, `letter-spacing: 0.10em`–`0.15em`.

Label style (reuse everywhere):
```css
font-family: 'JetBrains Mono', monospace;
font-size: 11px;
font-weight: 500;
letter-spacing: 0.15em;
text-transform: uppercase;
color: #71717A; /* or #F59E0B for amber variant */
```

### Atmosphere — the three background orbs
```css
.orb { position: absolute; border-radius: 50%; background: rgba(245,158,11,0.03); filter: blur(150px); }
.orb-1 { width: 600px; height: 600px; top: -100px; right: -100px; }
.orb-2 { width: 400px; height: 400px; bottom: 200px; left: -80px; }
.orb-3 { width: 300px; height: 300px; top: 50%; left: 50%; transform: translate(-50%,-50%); }
```
Plus a 2%-opacity SVG fractal noise texture on `body::before` (fixed, pointer-events: none, z-index: 9999).

### Navigation
- Fixed, `backdrop-filter: blur(20px)`, `background: rgba(10,10,15,0.80)`, height `64px`
- Logo: Space Grotesk 18px/700, `letter-spacing: 0.12em`. Two letters in amber (e.g. NOC**T**URN**E**)
- Nav links: JetBrains Mono 11px, uppercase, `letter-spacing: 0.12em`, text-secondary → text-primary on hover
- CTA link: bordered button (`border: 1px solid rgba(255,255,255,0.08)`, `border-radius: 4px`). On hover: amber border + `box-shadow: 0 0 14px rgba(245,158,11,0.40)`

### Hero — two-column split
- Left: eyebrow line (32px amber line + amber mono label) → display heading with one `<em>` word in amber → tagline (Inter 300, 20px, text-secondary) → body copy → two CTA buttons
- Right: glass card (`border: 1px solid rgba(255,255,255,0.08)`, `border-radius: 8px`) containing a full-bleed photo (480px height) and caption strip (`padding: 16px 20px`, label left / amber-label right)
- Radial amber glow behind the right image card: `background: radial-gradient(ellipse at center, rgba(245,158,11,0.12) 0%, transparent 70%)`
- Hero title: `clamp(52px, 6vw, 80px)`, Space Grotesk 700, line-height 1.0, letter-spacing `-0.02em`
- Hero reveals on load with `.reveal` class

### Buttons
Both buttons: JetBrains Mono 12px/500, uppercase, `letter-spacing: 0.1em`, `padding: 14px 28px`, `border-radius: 4px`.
- **Primary**: `background: #F59E0B; color: #0A0A0F; border: 1px solid #F59E0B`. Hover: amber double box-shadow + `translateY(-1px)`.
- **Ghost**: `background: transparent; color: #71717A; border: 1px solid rgba(255,255,255,0.08)`. Hover: border to `rgba(255,255,255,0.15)`, text to `#FAFAFA`.

### Stats Strip
- Background: `rgba(18,18,26,0.60)`, `backdrop-filter: blur(8px)`
- Bordered top + bottom with `rgba(255,255,255,0.08)`
- 4-column grid with `border-right` dividers between cells
- Stat number: Space Grotesk 36px/700, unit suffix in amber with amber glow shadow
- Label below: JetBrains Mono 11px, text-secondary

### Gallery Grid (Project Cards)
- 2-column grid, `gap: 24px`
- Card: glass surface (`rgba(26,26,36,0.60)`, `backdrop-filter: blur(8px)`), `border: 1px solid rgba(255,255,255,0.08)`, `border-radius: 8px`
- Photo: `height: 280px`, `object-fit: cover`, scale to 1.04 on hover (transition 0.5s)
- Gradient overlay on image: `linear-gradient(to top, rgba(10,10,15,0.70) 0%, transparent 50%)`
- On card hover: `border-color: rgba(255,255,255,0.15)`, `transform: scale(1.02)`, `box-shadow: 0 16px 48px rgba(0,0,0,0.5)`
- Body: `padding: 20px 24px 24px` — meta row (label left / amber count right), display title 20px/600, description 14px text-secondary

### Horizontal Photo Reel
- `overflow-x: auto`, `scroll-snap-type: x mandatory`, hidden scrollbar
- Items: `flex: 0 0 340px`, scroll-snap-align start, glass card border, `border-radius: 8px`
- Photo height: `240px`; on hover: `translateY(-4px)` + image scales to 1.04
- Caption: `padding: 14px 18px`, label left / amber-label right
- Cursor: `grab` / `grabbing` with JS drag-scroll at 1.2× speed

### Case Study Strip
- Section background: `#12121A`, bordered top + bottom
- Two-column grid: photo left, content right (no column gap — use border)
- Photo: `min-height: 400px`, scales to 1.03 on container hover; amber-tinted diagonal overlay `linear-gradient(135deg, rgba(245,158,11,0.06) 0%, transparent 60%)`
- Content: `background: #1A1A24`, `padding: 56px 48px`, Space Grotesk title `clamp(28px, 3vw, 40px)`, body text 15px/1.7 text-secondary
- Tags: amber pill — `background: rgba(245,158,11,0.08)`, `border: 1px solid rgba(245,158,11,0.20)`, `border-radius: 2px`, JetBrains Mono 10px uppercase

### About Section
- Asymmetric grid `1fr 1.6fr`, gap 80px
- Portrait image: `height: 480px`, glass card, amber radial glow, floating badge (glass surface, positioned `bottom: 20px left: 20px`)
- Statement quote: Space Grotesk 400, `clamp(22px, 2.5vw, 30px)`, line-height 1.4, key word in amber bold
- Body prose: Inter 15px/1.8, text-secondary, multiple paragraphs
- Tags below: same amber pill style as case study

### Clients Strip
- Background `#12121A`; 6-column grid with `gap: 1px` background trick (creates hairline grid lines)
- Cells: `background: #1A1A24`, `padding: 32px 20px`. On hover: slightly lighter background + text goes to text-primary
- Client name: Space Grotesk 15px/600, text-secondary, `letter-spacing: 0.04em`

### Contact Card
- Centered card, `max-width: 720px`, glass surface, `border-radius: 12px`, `padding: 64px 56px`
- Radial amber gradient at top inside: `radial-gradient(ellipse at 50% 0%, rgba(245,158,11,0.06) 0%, transparent 60%)`
- Title: Space Grotesk `clamp(36px, 5vw, 56px)` with `<em>` in amber + amber glow text-shadow
- Email link: JetBrains Mono 15px amber, bordered `rgba(245,158,11,0.25)`, border-radius 4px; hover: amber background fill + box-shadow
- Social handles as plain mono labels separated by 1px dividers

### Accent Line Pattern (reuse before every section title)
```css
.accent-line::before {
  content: ''; display: block;
  width: 40px; height: 1px;
  background: #F59E0B; box-shadow: 0 0 6px rgba(245,158,11,0.40);
}
```

### Scroll Reveal
IntersectionObserver (threshold 0.12): `.reveal` starts `opacity: 0; transform: translateY(24px)` → `opacity: 1; transform: none` over `0.65s ease`. Stagger with `reveal-delay-1`–`4` (0.1s steps). Hero + stats fire immediately.

### Amber Divider
`height: 1px; background: linear-gradient(to right, transparent, #F59E0B 40%, #F59E0B 60%, transparent); opacity: 0.25;`

## Layout Rules
- Container: `max-width: 1200px`, `padding: 0 32px`, centered
- Section padding: `96px 0` desktop / `64px 0` mobile (max-width 768px)
- Section header: `accent-line` row → title/link row, `margin-bottom: 56px`

## Do Not
- Do not add a second accent color; amber is the only color
- Do not use light backgrounds in any section
- Do not add drop-shadows that aren't amber-tinted (use transparent black for image shadows only)
- Do not remove the noise texture — it prevents the flat-black banding effect
- Do not use text smaller than 11px (minimum is the mono label size)
- Do not use a sans-serif for labels; JetBrains Mono is the mono voice
- Do not center the hero text; it is left-aligned in a two-column split
- See `https://joincommons.cc/api/items/nocturne-photo-portfolio/raw/anti-patterns` for a full list of traps specific to this aesthetic
