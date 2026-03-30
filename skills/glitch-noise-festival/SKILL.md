---
name: glitch-noise-festival
description: Dark underground electronic festival identity with CRT scan-line overlay, RGB chromatic aberration on display text, and animated SVG feTurbulence noise. No photography — glitch textures are the visual identity. Built for noise-art and experimental electronic music events.
---

# GLITCHFEST — Noise Chromatic Festival

## What This Skill Does

Provides a complete design system for building an underground electronic music festival site where digital corruption is the visual identity. The page is never stable: CRT scan-lines scroll across the entire viewport, display text splits into RGB chromatic ghosts, glitch-tear clip-path animations fire unpredictably, and seven ambient animations run simultaneously. No photography — SVG turbulence noise and CSS gradients ARE the visual texture.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/glitch-noise-festival/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Underground electronic music festivals, experimental sound events
- Noise-art collectives and digital-art festival sites
- Industrial, techno, or experimental venue promoters
- Any event brand where the philosophy of "beautiful failure" is the message

## When not to use

- Mainstream pop or family-friendly festival sites (the void palette is alienating by design)
- Events that require photography as primary identity (this system has no photo path)
- Light-mode products (no light variant exists — the neons require deep dark)
- Brands requiring warm tones, pastels, or natural color references

## Default Workflow

1. **Read `https://joincommons.cc/api/items/glitch-noise-festival/raw/design-language`** — internalize the seven-token color system, three-font stack, animation keyframes, and component patterns. Every color is OKLCH. Every animation duration is a deliberate prime-ish number.
2. **Read `tokens.dtcg.json`** — extract concrete values for colors, spacing, font sizes, animation durations.
3. **Build** — sections in order: hero (noise-bg + chromatic title + glitch tears) → `.interference` divider → broadcast/manifesto → `.interference` → lineup table → `.interference` → stages grid → `.interference` → manifesto extended → `.interference` → tickets → footer. Apply `.vhs-wobble` to broadcast and stages sections.
4. **Self-critique against `https://joincommons.cc/api/items/glitch-noise-festival/raw/anti-patterns`** — verify: scan-line overlay covers the full page at z-index 9999, chromatic aberration is applied with matching `data-text` attributes, glitch tear durations are staggered, stage color cascade holds (REACTOR=magenta, STATIC=cyan, VOID=red), no photographs used.

## Supporting Files

| File | Purpose |
|---|---|
| `https://joincommons.cc/api/items/glitch-noise-festival/raw/design-language` | Full design language — colors, typography, layout, motion, components, states, accessibility |
| `https://joincommons.cc/api/items/glitch-noise-festival/raw/design-language` | Detailed visual system with color tokens, animation keyframes, and signature moves |
| `https://joincommons.cc/api/items/glitch-noise-festival/raw/image-kit` | No-photo policy + SVG feTurbulence noise technique reference |
| `https://joincommons.cc/api/items/glitch-noise-festival/raw/anti-patterns` | 7 topic-specific failure modes + AI slop checklist + self-critique protocol |
| `tokens.dtcg.json` | DTCG tokens: OKLCH colors, spacing, font sizes, animation durations |
| `exhibit.html` | Proof surface — complete GLITCHFEST site with all sections and animations |

## Output Expectations

A single-page HTML document that feels like a corrupted broadcast. Specifically:
- Deep void background (`oklch(0.08 0.02 280)`), no other background colors
- `body::after` CRT scan-line overlay fixed at z-index 9999, pointer-events none
- Chromatic aberration (`.chromatic` + `data-text`) on hero title, manifesto quote, headliner act names, ticket prices
- Three glitch-tear variants (4.7s/6.3s/5.1s) on hero title, broadcast quote, select act names
- Three fixed ambient orbs (magenta/cyan/red) at blur(120px), opacity pulsing on 12s cycle
- `.interference` 3px sweeping dividers between all major sections
- Lineup as flat row list with stage-colored labels; stages as 3-col grid with stage-color glow cells
- Tickets as 3-col grid with prices and CTA buttons in stage colors
- No `<img>` tags pointing to photographs

## Reuse and Adaptation Guidance

**Safe to adapt:** Act names, ticket prices and tier names, stage names, dates, venue location, manifesto copy, number of acts (8-10 range), section order within the page.

**Adapt with care:** Glitch animation timing (keep non-round, prime-ish), ambient orb sizes and positions, stage color assignments (change all cascade points simultaneously), chromatic offset amounts (hero vs standard variants).

**Do not change:** The seven-token color palette, the three-font stack (Space Grotesk / IBM Plex Mono / Unbounded), the no-photography rule, the `body::after` scan-line implementation, the stage color assignment (REACTOR=magenta, STATIC=cyan, VOID=red — all three cascade points must match).

## Non-negotiables

- CRT scan-line overlay MUST be `position: fixed; z-index: 9999; pointer-events: none`
- Every `.chromatic` element MUST have a matching `data-text` attribute
- Glitch-tear animation durations MUST be non-synchronizing (4.7s / 6.3s / 5.1s or similar prime-ish values)
- Stage color assignment is permanent: REACTOR=magenta, STATIC=cyan, VOID=red
- No photography — only SVG feTurbulence noise and CSS gradients for texture
- All seven ambient animations MUST include `@media (prefers-reduced-motion: reduce)` fallbacks

## Common Failure Modes

1. **Missing `data-text` attribute** — chromatic pseudo-elements render empty, no RGB split visible.
2. **Scan-line overlay blocking clicks** — missing `pointer-events: none` makes the entire page non-interactive.
3. **Synchronized glitch timing** — round-number durations cause all elements to glitch simultaneously, reading as intentional rhythm rather than signal corruption.
4. **Stage color inconsistency** — changing REACTOR to cyan in one place without updating ticket price and CTA button breaks the system.
5. **Photography added "for context"** — contradicts the brand philosophy and the festival's deliberate abstractness.
6. **Warm palette contamination** — any color outside the 7-token system (beige, navy, forest green, warm gray) breaks the cold-void atmosphere.
7. **Missing interference dividers** — removing `.interference` bars between sections makes the page feel like a standard landing page, losing the signal-corruption concept.
