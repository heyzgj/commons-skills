# Workshop Tool Inventory — Design Skill

## What This Is
An industrial skeuomorphic UI system for inventory, asset-tracking, and workshop management applications. The aesthetic simulates physical hardware panels — matte ABS plastic chassis, brushed aluminum headers, neumorphic raised/recessed surfaces, LED status indicators, Phillips-head corner screws, and ventilation slots as decorative manufacturing details.

## When to Use
- Tool libraries, equipment tracking, makerspace management
- Asset checkout / check-in dashboards
- Maintenance logging, condition monitoring
- Any utility where "this feels like real hardware" builds trust with tradespeople, facilities staff, or engineers

## Core Aesthetic Rules

### Lighting Model — Never Break This
All neumorphic shadows follow a **top-left light source at 45 degrees**:
- Raised surfaces: `-X -Y` highlight (white), `+X +Y` shadow (dark)
- Recessed/pressed surfaces: `inset` shadows, directions inverted
- Dark tech panels invert: shadow top-left, faint highlight bottom-right

### Color System
```
--chassis:     #e0e5ec   /* matte ABS plastic body */
--panel:       #f0f2f5   /* raised panel surface */
--recessed:    #d1d9e6   /* inset wells, input backgrounds */
--ink:         #2d3436   /* primary text */
--label:       #4a5568   /* secondary text, labels */
--shadow-dark: #babecc   /* shadow half */
--shadow-light: #ffffff  /* highlight half */
--tech-dark:   #2d3436   /* dark panel background */
--tech-darker: #1e2527   /* stat readout background */
--orange:      #ff4757   /* primary action accent (CTA, alerts) */
--orange-dim:  #cc2e3d   /* pressed/active orange */
--green-led:   #00d084   /* online / good / in-progress */
--amber-led:   #ffa502   /* warning / fair / checked-out */
--red-led:     #ff4757   /* error / service needed / alert */
```

### Typography
- **Space Grotesk** (400/500/600/700) — section headings, logo, project titles
- **IBM Plex Sans** (400/500/600) — body text, tool names, form content
- **IBM Plex Mono** (400/500/600) — labels, badges, stat values, metadata, all uppercase tracking text

All utility labels: monospace, 9–10px, `letter-spacing: 0.15–0.2em`, `text-transform: uppercase`.

### Neumorphic Shadow Variables
```css
--neu-raised:      -4px -4px 8px #fff,  4px 4px 8px #babecc
--neu-raised-lg:   -6px -6px 14px #fff, 6px 6px 14px #babecc
--neu-pressed:     inset 2px 2px 5px #babecc, inset -2px -2px 5px #fff
--neu-recessed:    inset 3px 3px 7px #babecc, inset -3px -3px 7px #fff
--neu-inset-deep:  inset 4px 4px 10px #babecc, inset -4px -4px 10px #fff
```

## Component Patterns

### Panel Card
```css
background: #f0f2f5;
border-radius: 6px;
box-shadow: var(--neu-raised-lg);
border: 1px solid rgba(255,255,255,0.7);
background-image: linear-gradient(135deg, rgba(255,255,255,0.6) 0%, rgba(255,255,255,0) 60%);
```

### Corner Screws
12×12px circles, `radial-gradient(circle at 35% 35%, #d0d5de, #b8bcc8, #a8acb8, #c8ccd8, #b0b4c0)` with Phillips-head slots via `::before` (6×1.5px) and `::after` (1.5×6px), both `background: #8a8e9a`. Position at `top:8px left:8px` etc.

### LED Indicators
8×8px circles. Green: `box-shadow: 0 0 6px #00d084, 0 0 12px rgba(0,208,132,0.4)`. Amber: same with `#ffa502`. Red: same with `#ff4757`. Off: `background: #909aaa; box-shadow: inset 1px 1px 2px #7a8492`.

### Brushed Aluminum Header
```css
background: repeating-linear-gradient(90deg, transparent 0px, transparent 2px, rgba(255,255,255,0.03) 2px, rgba(255,255,255,0.03) 4px),
            linear-gradient(180deg, #d0d5de 0%, #c4c9d4 30%, #cdd2db 60%, #b8bcc8 100%);
```

### Embossed / Debossed Labels
Embossed: `color: transparent; text-shadow: 1px 1px 0px rgba(255,255,255,0.8), -1px -1px 0px rgba(0,0,0,0.2); -webkit-text-stroke: 0.5px #4a5568`
Debossed: `color: transparent; text-shadow: -1px -1px 0px rgba(255,255,255,0.4), 1px 1px 0px rgba(0,0,0,0.35); -webkit-text-stroke: 0.5px #8a8e9a`

### Dark Tech Panel (stats, workbench)
```css
background: #2d3436;
box-shadow: inset 2px 2px 5px rgba(0,0,0,0.5), inset -2px -2px 4px rgba(255,255,255,0.05);
border-top: 1px solid rgba(0,0,0,0.5);
border-bottom: 1px solid rgba(255,255,255,0.06);
```

### Stat Readout (dark background)
```css
background: #1e2527;
box-shadow: inset 2px 2px 6px rgba(0,0,0,0.6), inset -1px -1px 2px rgba(255,255,255,0.04);
```
Stat values: IBM Plex Mono 28px 600, green LED color with `text-shadow: 0 0 12px rgba(0,208,132,0.5)`.

### Other Components
- **Condition Badges**: mono 9px uppercase; Good=green, Fair=amber, Service=red (15% bg tint + 1px border)
- **Category Strips**: 3px left-edge gradient (blue=Hand, red=Power, green=Measuring, amber=Safety)
- **Inputs**: recessed `#d1d9e6` with `--neu-recessed`, mono 12px, orange focus ring
- **Ventilation Slots**: 3px tall gradient bars, 6-8 stacked with 3px gap
- **Buttons**: IBM Plex Mono 11px 600 uppercase, neumorphic raised, `translateY(1px)` on press
- **Section Headers**: Space Grotesk 13px 600 uppercase, gradient divider fading right

## Layout
- Max width 1280px, `padding: 24px`
- Two-column grid: `280px sidebar | 1fr content`, `gap: 20px`
- Topbar: 56px, brushed aluminum, corner screws, bottom border highlight sweep
- Responsive: single column below 800px

## Interaction Details
- Card hover: `-translateY(2px)` with elevated neumorphic shadow, `cubic-bezier(0.34, 1.56, 0.64, 1)` (slight bounce)
- Button active: `translateY(1px)` mechanical depress
- Table rows: hover `background: rgba(255,255,255,0.5)`
- Search input focus: deep inset shadow + orange ring

## Constraints
- Always maintain the top-left lighting direction — mixing shadow directions breaks the illusion
- Never use flat/filled backgrounds without texture on the chassis color
- Screw details must appear on every major panel card (4 corners at 8px inset)
- All status text must be monospace; no serif or display fonts for data/labels
- Section dividers must fade to transparent (not solid lines)
- Dark panels (#2d3436) use inverted shadow logic
