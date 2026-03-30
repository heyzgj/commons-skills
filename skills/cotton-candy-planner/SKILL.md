---
name: cotton-candy-planner
description: A luxury event and wedding planner in cotton candy dreamcore style. Spun-sugar translucent surfaces via backdrop-filter blur, rotating candy palette (pink/lavender/mint/peach) per section, iridescent gradient borders with hover shimmer, confetti dot texture, and patisserie-styled data displays.
---

# Cotton Candy Planner

## What This Skill Does

Provides a complete design system for building luxury event and wedding planning interfaces in cotton candy dreamcore style. Every surface looks like spun sugar — translucent, layered, impossibly light. The confectionery aesthetic is built from OKLCH color, backdrop-filter blur translucency, and a rotating candy palette that shifts dominant hue per section.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/cotton-candy-planner/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Wedding planning dashboards and day-of timeline builders
- RSVP trackers, guest list managers, vendor directories
- Mood board curators and color palette selectors for events
- Celebration budget overviews and allocation trackers
- Bridal party coordination and ceremony planning tools
- Any luxury event management interface that should feel as beautiful as the event itself

## When not to use

- Corporate project management or Kanban boards
- Data-heavy analytics dashboards or developer tools
- Dark-theme products (this needs a cream-white base to work)
- E-commerce catalogs or content-heavy blogs
- Minimalist portfolios (this is maximalist confectionery)
- Financial trading interfaces or dense data tables

## Default Workflow

1. **Read `https://joincommons.cc/api/items/cotton-candy-planner/raw/design-language`** — internalize the OKLCH candy palette, spun-sugar surface technique, iridescent border pattern, confetti dot texture, three-font stack (Fraunces/Quicksand/Victor Mono), and section-by-section color rotation.
2. **Read `tokens.dtcg.json`** — extract concrete values for all candy colors, glow shadows, typography assignments, border-radius hierarchy, spacing rhythm, and animation timing.
3. **Build** — structure: cream puff base (`oklch(0.97 0.01 90)`) → confetti dot texture on `body::before` → SVG grain overlay → section-by-section candy color rotation (pink hero → lavender guests → mint budget → peach vendors → mixed mood board → rainbow timeline) → every card/panel as `.sugar-surface` (`backdrop-filter: blur(25px) saturate(0.85) brightness(1.05)` with translucent OKLCH-alpha background) → iridescent gradient borders via `::after` → Victor Mono for budget/count data as patisserie price tags → Fraunces serif for display type → float animation at 18s on decorative elements.
4. **Self-critique against `https://joincommons.cc/api/items/cotton-candy-planner/raw/anti-patterns`** — verify surfaces are genuinely translucent (not flat fills), all 4 candy colors appear, no Trello/Kanban layout, no pure black/gray, typography feels celebratory not generic.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/cotton-candy-planner/raw/design-language` | Full design language — colors, typography, layout, motion, components, states, accessibility |
| `https://joincommons.cc/api/items/cotton-candy-planner/raw/design-language` | Detailed visual system reference with surface techniques, color tables, spacing |
| `https://joincommons.cc/api/items/cotton-candy-planner/raw/image-kit` | Photography guidance (this skill uses no photos — CSS translucency IS the visual) |
| `https://joincommons.cc/api/items/cotton-candy-planner/raw/anti-patterns` | Topic-specific failure modes + self-critique protocol |
| `tokens.dtcg.json` | DTCG tokens: OKLCH colors, candy glows, font assignments, animation timing, border-radius |
| `exhibit.html` | Proof surface — wedding planner with all 6 sections demonstrating the full candy palette |

## Output Expectations

A single-page HTML document that feels like planning a wedding inside a luxury Parisian macaron shop. Specifically:
- Cream puff white base (`oklch(0.97 0.01 90)`), never pure white
- Every card/panel uses `backdrop-filter: blur(25px)` with translucent backgrounds
- All four candy colors (pink, lavender, mint, peach) appear in dedicated sections
- Iridescent gradient borders shimmer on hover via `::after` pseudo-element
- Confetti dot texture visible on body background
- Budget numbers and guest counts in Victor Mono at 28-32px (patisserie price tags)
- Section headings in Fraunces serif feel celebratory
- At least one element with slow 18s float animation
- SVG feTurbulence grain overlay at 0.03 opacity
- `prefers-reduced-motion` fallback

## Reuse and Adaptation Guidance

**Safe to adapt:** Event content (couple names, dates, venues), vendor names and categories, budget amounts, guest names, timeline events, mood board colors, note entries, section count.

**Adapt with care:** Card padding (keep 22-28px — generous space is part of the luxury feel), grid column ratios (maintain asymmetry in mood board, avoid uniform grids), animation durations (keep 15-20s range for float — faster feels frantic not dreamy).

**Do not change:** The spun-sugar surface technique (backdrop-filter blur is required), the 4-color candy rotation (all four must appear), the warm rose text color (hue 350, not neutral), the three-font assignment (Fraunces/Quicksand/Victor Mono), the iridescent border technique (gradient + mask-composite, not border-image), the cream base (L=0.97, not pure white).

## Non-negotiables

- Every surface MUST use `backdrop-filter: blur(25px)` — flat pastel fills break the spun-sugar identity
- All 4 candy colors (pink, lavender, mint, peach) must appear in dedicated sections — no all-pink defaulting
- No pure black (`#000`), neutral gray, or pure white (`#fff`) — all colors carry rose warmth (hue 350)
- Float animations: 15-20s ease-in-out only — no bounce, no elastic easing
- Fonts: Fraunces (display serif), Quicksand (body sans), Victor Mono (data mono) — no substitutions
- Victor Mono for ALL numeric data (budgets, counts, times, dates) — patisserie price tag aesthetic

## Common Failure Modes

1. **Flat pastel rectangles.** Without `backdrop-filter: blur(25px)`, surfaces are just colored rectangles — generic "soft UI," not spun sugar.
2. **All-pink monochrome.** Agents default to pink when told "pastel" or "wedding." Each section MUST have its own dominant candy color.
3. **Trello/Kanban layout.** Event planning is NOT a sprint board. Timelines are candy-colored processionals. Budgets are patisserie labels.
4. **Bounce/elastic animation.** Float animations must be slow (18s) and dreamy (ease-in-out), like helium balloons, not rubber balls.
5. **Gray or black text.** All text uses warm rose (`oklch(0.35 0.04 350)`) — the hue 350 gives rose warmth that gray (#555) cannot.
6. **Cards nested inside cards.** One level of card depth only. Nesting breaks the translucency hierarchy.
7. **Children's party aesthetic.** This is Laduree, not Party City. No clip-art balloons, no Comic Sans, no primary colors.
