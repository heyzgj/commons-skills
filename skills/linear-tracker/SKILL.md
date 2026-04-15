---
name: linear-tracker
description: Precision engineering project tracker with Linear's dark-mode-native design DNA. Single indigo accent on near-black surfaces, keyboard-first command palette hero over dark geometric motion video, Kanban issue board, velocity cycle tracker, keyboard shortcut showcase, and speed-proof metrics. General Sans + JetBrains Mono. Dark architectural photography for visual rhythm between product sections.
---

<design-system>

## Product World
- **Who**: Software engineers, engineering managers, and product managers at fast-moving teams (50-500 people). They live in terminals and IDEs, value keyboard shortcuts over mouse clicks, and chose tools like Linear because they respect their time. They hate bloat, loading spinners, ceremony, and anything that adds process without removing friction.
- **What**: A precision instrument for shipping software -- keyboard-first, instant-load, zero-friction issue tracking.
- **Vibe**: Vercel's engineering precision meets Bloomberg Terminal's information density -- dark, fast, functional, with moments of restrained elegance through a single brand indigo accent. Dark abstract video and architectural photography reinforce the engineered-precision atmosphere.
- **Domain conventions**: Issue IDs (ENG-284), cycle/sprint numbers (Cycle 24), priority levels (Urgent/High/Medium/Low), workflow states (Backlog/Todo/In Progress/Done), velocity metrics, completion percentages, keyboard shortcuts (C, Cmd+K, 1-4, J/K), assignee initials (JK, ML, AR).

## Core Principle
The interface must feel faster than the user. Every pixel earns its place by communicating engineering data, not decorating it.

## Visual Vibe
Compressed, precise, fast, dark-native, keyboard-driven, monochromatic discipline, engineered density, restrained elegance, architectural geometry, terminal-native.

## What It's NOT
1. NOT a colorful project dashboard with multiple accent colors and category rainbows -- single indigo only.
2. NOT a friendly, rounded, pastel productivity tool (Notion, Asana aesthetic) -- this is a precision instrument.
3. NOT dark mode with neon/cyan/glowing accents -- generic hacker aesthetic, not engineering precision.
4. NOT glassmorphism with blur cards and gradient borders -- surfaces are opaque at their luminance level.
5. NOT generic SaaS hero-features-pricing-CTA flow -- every section shows the product working.
6. NOT Jira -- no bloated sidebar navigation, no modal stacks, no loading spinners.
7. NOT marketing-heavy with testimonial carousels and stock photos of engineers at laptops.

## Section Archetypes
- **Command palette demo**: Live Cmd+K interface showing issue search/creation with typing animation. The keyboard IS the UX.
- **Photo interlude**: Full-bleed dark architectural/geometric photography (dimmed, desaturated) as visual breathing between product sections. Captions appear on hover.
- **Issue board**: Kanban columns (Backlog/Todo/In Progress/Done) with real issue cards showing mono IDs, priority icons, label pills, assignee circles.
- **Engineering context strip**: Side-by-side photo + text panel linking codebase to product (e.g., dark dev interface photo paired with "Your codebase, connected" text).
- **Keyboard shortcut showcase**: Grid of real shortcuts (C, Cmd+K, 1-4, S, I, J/K) proving keyboard-first design.
- **Cycle/sprint tracker**: Velocity bar charts, progress bars with three states (done/in-progress/todo), cycle stats.
- **Speed proof**: Raw performance counters (87ms load, 12ms sync, 99.99% uptime) animating from zero.

## Hero Archetype
Video-typography with command palette as interactive proof. Dark geometric abstract motion video plays at very low opacity (0.12) behind a massive headline, with a gradient wash fading to the base background. Below: a floating command palette panel with live typing animation. The video adds atmospheric depth without competing with the typography. The product's speed is self-evident through the command palette demo.

**Why video works here**: The dark geometric motion video reinforces the feeling of precision engineering -- subtle, mathematical, constantly moving. It never distracts from the headline or palette; it's atmosphere that evokes the product's relentless forward motion.

## Asset Direction
- **Photography**: Dark, minimal, precision-focused. Geometric architecture at night, abstract dark technology patterns, developer tool interfaces. Always dimmed (brightness 0.35-0.5) and desaturated (saturate 0.35-0.5). Photos serve as visual rhythm between product sections, not as primary content.
- **Video**: Dark geometric abstract motion -- mathematical patterns, engineered precision. Very low opacity (0.12) as hero atmosphere. Never bright, never organic, never colorful.
- **Data-as-visual**: Issue cards, velocity charts, keyboard shortcuts, performance metrics. Engineering data IS the primary visual content.
- **What NOT to show**: No stock photos of people, no device mockups, no abstract illustrations, no colorful gradients.

## Typography
- **General Sans** (sans-serif, display + body): Clean geometric proportions with slightly more character than system fonts. Three-weight system: 400 (read), 500 (emphasize), 600 (announce). Aggressive negative letter-spacing (-0.025em) at display sizes creates compressed density.
- **JetBrains Mono** (monospace): Issue IDs, code references, tabular data. Engineering credibility and terminal-native feel.

## Color
All near-black backgrounds (cool-tinted), single indigo accent:
- **Backgrounds**: 3-tier luminance -- base(#08090a), panel(#0f1011), elevated(#191a1b).
- **Text**: 4-tier -- primary(#f7f8f8, near-white), secondary(#d0d6e0), tertiary(#8a8f98), quaternary(#62666d).
- **Accent**: Indigo #5e6ad2 for CTAs/progress. Violet #7170ff for hover. These are the ONLY chromatic colors.
- **Priority**: urgent=red, high=orange, medium=yellow, low=accent -- exist only at tiny icon scale.
- **Status**: backlog=faded quaternary, todo=quaternary, in-progress=indigo, done=green.
- **Borders**: Semi-transparent white only -- 0.05 (subtle), 0.08 (medium), 0.12 (strong). NEVER solid dark colors.

## Bold Choices
1. **Dark geometric video as hero atmosphere** -- motion at 12% opacity, heavily dimmed and desaturated, with gradient wash fading to base. The video IS the product's kinetic energy made visible.
2. **Photo interludes for rhythm** -- full-bleed architectural/geometric photos between product sections. Dimmed to 35% brightness, desaturated to 40%. Top/bottom gradient overlays blend into the near-black page. Captions appear on hover.
3. **Command palette as hero** -- a live Cmd+K interface with typing animation that searches real issues IS the interactive proof.
4. **Single chromatic color discipline** -- brand indigo is the ONLY saturated color. Everything else is grayscale.
5. **1px gap grids** -- board columns, shortcut cells, and integration cards use 1px gap with border-subtle background. Precise seams, not gutters.
6. **Engineering context strip** -- developer tool photo paired with text panel. The photo is the atmosphere; the text is the promise.
7. **Aggressive negative letter-spacing** at display sizes -- compressed density that feels engineered.
8. **Counter animations for speed proof** -- metrics animate from 0 using ease-out-quart. The animation demonstrates speed.

## Workflow
1. Read `https://joincommons.cc/api/items/linear-tracker/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/linear-tracker/raw/anti-patterns`

## Gotchas
1. **Do not add a second accent color.** The monochrome + one indigo system IS the identity.
2. **Do not use drop shadows for elevation.** Shadows are invisible on near-black. Use luminance stepping.
3. **Real issue titles only.** "Fix auth token refresh on mobile Safari" not "Improve user experience."
4. **Photos must be dimmed and desaturated.** Raw photos at full brightness break the near-black atmosphere. brightness(0.35-0.5) + saturate(0.35-0.5).
5. **Video must be extremely subtle.** Opacity 0.12, dimmed, desaturated. If you can clearly see the video content, it's too bright.
6. **Borders: semi-transparent white, not solid dark.** `rgba(255,255,255,0.05)` not `#1a1a1a`.
7. **Keyboard shortcuts must be real.** Use actual vim-style navigation (J/K), actual creation shortcuts (C).

</design-system>
