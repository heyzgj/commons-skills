---
name: neon-sign-dev
description: Nocturnal developer portfolio inspired by neon signage on exposed brick -- Orbitron display, Exo 2 body, Share Tech Mono labels, dark OKLCH brick-wall backdrop with four-color neon zoning (cyan/magenta/amber/green), irregular gas-tube flicker animations, cursor-following ambient glow, tube-line section connectors, and an OPEN sign contact CTA.
metadata: design-skill
---

# Neon Sign Dev

## What This Skill Does

Routes a neon-sign-on-brick-wall visual system into a single-page portfolio for creative developers, DJ-coders, and digital artists. Four content sections each glow in their own neon color (cyan projects, magenta about, amber music, green contact), connected by vertical tube-line dividers. All visuals are CSS-constructed -- zero photography. The cursor casts a radial ambient glow that shifts color per section.

## When to Use

- Creative developer or creative technologist portfolio
- DJ / musician personal landing page
- Open-source hacker side-project gallery
- Code-meets-nightlife identity page
- Digital artist or generative art showcase

## When Not to Use

- Light-theme or corporate dashboards -- the dark neon palette has no light mode
- E-commerce or product catalogs -- no commerce patterns
- Text-heavy editorial or blog -- sections are sparse, visual-led
- Professional/corporate CV -- the nightclub aesthetic is wrong for formal contexts

## Design Direction

**Tone extreme:** A Berlin alley at 2 AM. Four neon signs buzz on a brick wall. You walk past and each one lights your face a different color.

**The ONE memorable thing:** Section-colored neon zones -- each of the four sections is exclusively lit by one hue, connected by glowing glass-tube dividers. The page reads as four neon signs on the same wall.

**Reference sites:** Neon signage aesthetics, Berlin club culture, late-night dev culture.

## Default Workflow

1. **Load design language** -- read `https://joincommons.cc/api/items/neon-sign-dev/raw/design-language` for the full OKLCH color system, three-font hierarchy (Orbitron / Exo 2 / Share Tech Mono), brick texture pattern, neon glow formula, and layout specs.
2. **Load image kit** -- read `https://joincommons.cc/api/items/neon-sign-dev/raw/image-kit`. This design uses zero photography; all visuals are CSS-constructed.
3. **Build** -- construct a single dark page: brick-wall texture (two offset repeating-linear-gradient layers), hero with flickering neon name, tube-line dividers, cyan project cards with proximity glow, magenta about with terminal quote, amber music with equalizer bars, green OPEN sign contact.
4. **Self-critique** -- read `https://joincommons.cc/api/items/neon-sign-dev/raw/anti-patterns` and verify against the 5-question protocol.

## Color Palette (10 tokens)

| Token | OKLCH | Role |
|---|---|---|
| `--bg` | `0.12 0.01 30` | Page background (warm near-black) |
| `--brick-a` | `0.15 0.02 30` | Primary brick face |
| `--brick-b` | `0.13 0.01 25` | Alternating brick face |
| `--neon-cyan` | `0.75 0.20 195` | Projects, hero name, nav |
| `--neon-magenta` | `0.65 0.25 340` | About, tagline |
| `--neon-amber` | `0.80 0.15 80` | Music, DJ name |
| `--neon-green` | `0.70 0.20 145` | Contact, OPEN sign |
| `--text-bright` | `0.90 0 0` | Primary text |
| `--text-mid` | `0.70 0.01 30` | Secondary text |
| `--text-dim` | `0.55 0.01 30` | Tertiary text |

## Typography (3 fonts, strict roles)

- **Orbitron** -- display headings, hero name, section headers, nav, project names, DJ alias, OPEN sign (400-700)
- **Exo 2** -- body prose, descriptions, venue cities (300-500)
- **Share Tech Mono** -- tech stacks, metadata, terminal quote, genre tags, footer, contact links (400)

## Supporting Files

- `https://joincommons.cc/api/items/neon-sign-dev/raw/design-language`: full design system -- colors, typography, layout, motion, signature moves.
- `https://joincommons.cc/api/items/neon-sign-dev/raw/image-kit`: confirms no photography; guidance on CSS-only visuals.
- `https://joincommons.cc/api/items/neon-sign-dev/raw/anti-patterns`: 8 traps, AI slop checklist, self-critique protocol.
- `assets/tokens.dtcg.json`: DTCG-format tokens for all values.
- `assets/exhibit.html`: proof surface -- a fictional creative developer portfolio.

## Output Expectations

A single self-contained HTML file with inline CSS and JS. Dark background with CSS brick-wall texture, four neon-colored content sections, tube-line dividers between sections, cursor glow that follows mouse and shifts color per section, irregular flicker animations on neon text, scroll-reveal with staggered fade-in-up, and an OPEN sign contact section.

## Reuse and Adaptation Guidance

- **Keep stable:** four-color section zoning, brick-wall texture, neon glow formula (3-layer text-shadow), tube-line dividers, cursor ambient glow, flicker animations, OPEN sign contact, Orbitron/Exo 2/Share Tech Mono font stack.
- **Safe to vary:** section content, number of project cards, venue list, genre tags, contact links, stagger count.
- **Do not vary:** OKLCH color values, brick texture opacity (0.35), cursor lerp factor (0.12), font families.

## Non-negotiables

- All colors in OKLCH. No hex, no HSL.
- Brick texture requires TWO offset gradient layers, not one.
- Neon glow uses 3-layer text-shadow (4px/14px/40px spread).
- Flicker keyframes must have irregular timing with micro-recovery steps.
- Each section uses exclusively its assigned neon color.
- Background is warm dark brown (`oklch(0.12 0.01 30)`), never pure black.
- Zero photography. All visuals CSS-constructed.

## Common Failure Modes

- Reading `https://joincommons.cc/api/items/neon-sign-dev/raw/design-language` without internalizing the neon glow formula, then producing single-layer text-shadow (reads as colored blur, not neon).
- Using one brick gradient layer instead of two offset layers (produces a grid, not masonry).
- Making the flicker a smooth sine wave instead of irregular burst pattern (reads as loading indicator).
- Mixing neon colors within a single section (destroys the one-sign-per-wall metaphor).
- Setting background to `#000000` instead of `oklch(0.12 0.01 30)` (kills warmth and brick visibility).
- Snapping cursor glow to mouse position instantly instead of using 0.12 lerp (breaks physical-light illusion).
