---
name: dreamcore-wellness
description: Ethereal meditation app UI where every surface dissolves into blur — four aurora blobs breathe behind all content, zero hard borders, colored glow shadows only, Cormorant Infant / Karla / Victor Mono type stack, OKLCH desaturated pastel palette, and all animations at 8–20 second cycles for a hypnagogic light-world aesthetic.
metadata: design-skill
---

# Dreamcore Wellness — Design Skill

## What This Skill Does

- Routes the Dreamcore Wellness design language into meditation, breathwork, journaling, and wellness app surfaces.
- Starts with this SKILL.md to confirm fit, then loads `https://joincommons.cc/api/items/dreamcore-wellness/raw/design-language` for full pattern rules and adaptive behavior.
- Keeps the ethereal, dissolving, light-world aesthetic recognizable while adapting content to the target product.

## When to use

- Best for meditation apps, sleep trackers, breathwork tools, and spiritual wellness platforms
- Best for journaling and reflective daily practice products
- Use when you need an interface that feels like atmosphere rather than software — unhurried, luminous, borderless

## When not to use

- Avoid for high-density dashboards or data tools because ultra-low contrast and slow animations harm readability
- Avoid for e-commerce, developer tools, or any product where fast scanning and clear hierarchy are required

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/dreamcore-wellness/raw/design-language` when you need the full design language, pattern rules, adaptive behavior, and accessibility logic.
3. Read `tokens.dtcg.json` only when implementation needs concrete tokens or code mapping.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check evidence files when you need blueprint/component coverage, not before.

## Supporting Files

- `https://joincommons.cc/api/items/dreamcore-wellness/raw/design-language`: canonical design language, pattern rules, states, adaptive behavior, and implementation invariants.
- `tokens.dtcg.json`: token source for implementation mapping and code adaptation.
- `exhibit.html`: proof surface showing the system under real product pressure.
- `https://joincommons.cc/api/items/dreamcore-wellness/raw/design-language`: full extracted CSS values, animation specs, and layout measurements.
- `https://joincommons.cc/api/items/dreamcore-wellness/raw/image-kit`: verified Unsplash URLs with placement rules.
- `https://joincommons.cc/api/items/dreamcore-wellness/raw/anti-patterns`: domain-specific failure modes and self-critique protocol.

## Supporting References

- Bundle-local files are the default path. No external framework or library dependency.
- Reference sites for taste calibration (do not load at runtime): byredo.com, headspace.com for contrast reference only.

## Non-negotiables

- Preserve the four breathing aurora blobs — they are the page's vital signs, not decorative.
- Zero visible borders on any element — this is the defining constraint of this system.
- All colored glow shadows must use the panel's own oklch hue — no rgba(0,0,0,x) anywhere.
- Animations must stay at 8s minimum for ambient loops, 1.2s minimum for interactive transitions.

## Common Failure Modes

- Building a dark-mode version — this system is light only; dark mode inverts the entire aesthetic.
- Adding borders to define containers — blur intensity and background opacity do that job.
- Using dark drop-shadows instead of the glow shadow system.
- Speeding up animations to feel more "responsive" — slow timing IS the product.

## Output Expectations

- Produce full-page HTML exhibits, not isolated component cards.
- Preserve the aurora blob layer, noise grain overlay, and global body filter at all times.
- Include active/hover states for session cards and soundscape cards.

## Reuse and Adaptation Guidance

- Keep these traits stable: aurora blobs, dissolved borders, colored glow shadows, noise grain, slow animations
- Safe variation knobs: blob hue angles (±20°), session content, soundscape names, journal prompts, teacher names
- Do not change: the light base palette, the blur-as-container pattern, the glow shadow system

---

<design-system>
# Design Style: Dreamcore Wellness

## Design Philosophy
### Core Principle
**Everything dissolves into everything else.** There are no hard edges in a dream. This design creates a digital meditation space where panels blur into one another, color pools drift behind content like auroras, and the interface itself seems to breathe. The page should feel like the moment between wakefulness and sleep — soft, borderless, luminous.

### Visual Vibe
**Emotional Keywords**: Ethereal, Dissolving, Luminous, Weightless, Hypnagogic, Pillowy, Diaphanous, Drifting, Hushed, Opalescent

This is the visual language of:
- The gradient atmospheres of James Turrell light installations
- The UI of a premium sleep tracker at 2am — muted, kind to tired eyes
- A cloud layer seen from above at golden hour
- The frosted glass interior of a Japanese onsen lobby

### What This Design Is NOT
- Not a fitness app with bold CTAs and step counters
- Not dark mode meditation (this is LIGHT — ethereal white, not midnight)
- Not corporate wellness with stock photos of people in lotus pose
- Not sharp glassmorphism with defined borders (this DISSOLVES borders)
- Not a SaaS landing page (hero, features, pricing, CTA structure)
- Not neon gradients or saturated candy colors — saturation is LOW, luminosity HIGH

### The DNA of Dreamcore Wellness
**Gaussian Blur as Primary Material** — Surfaces float, they don't sit. Every floating panel emerges from the page background by becoming it: frosted and translucent, the aurora bleeds through. Blur at 20–40px is not decoration — it IS the container.

**Breathing Pastel Blobs** — Four large radial-gradient circles (450–700px) in rose quartz, lavender mist, seafoam, and warm peach are permanently alive behind all content. They scale, drift, and fade at 14–20 second cycles — the page's own pulse rate. These are never turned off.

**Soft-Light Layer Blending** — Where panels overlap, `mix-blend-mode: soft-light` lets colors merge rather than occlude. Nothing blocks — everything tints. The breathwork rings and journal image overlays demonstrate this most clearly.

**Dissolved Borders** — No element has a visible border. Containers are defined only by differences in blur intensity and background opacity. The edge between one section and the next is genuinely ambiguous, like the edge between sleep and waking.

**Colored Glow Shadows** — The page casts colored light, not darkness. Floating elements radiate their own hue outward: rose panels glow pink, lavender panels glow violet, seafoam panels glow green. Zero dark drop shadows anywhere.

## Typography
- **Display**: Cormorant Infant — delicate, high-contrast serif with a whisper quality; italic weight carries most emotional weight
- **Body**: Karla — humanist sans with gentle rounded terminals, weight 300 throughout
- **Data/Meta**: Victor Mono — meditation timer numbers, durations, streaks, session metadata; weight 300 only

Type is used at ultra-low contrast by design. Headlines barely emerge from backgrounds. Body text almost dissolves. This is deliberate.

## Color
Base: `oklch(0.97 0.008 310)` — barely pink-white, warm and luminous.

| Token | Value | Usage |
|---|---|---|
| Rose Quartz | `oklch(0.88 0.06 350)` | Primary blob, featured card glow, CTA button |
| Lavender Mist | `oklch(0.90 0.05 290)` | Secondary blob, panel backgrounds |
| Seafoam Breath | `oklch(0.91 0.04 170)` | Tertiary blob, breathwork inhale phase |
| Warm Fog | `oklch(0.94 0.01 80)` | Peach blob, warm card backgrounds |
| Text | `oklch(0.55 0.03 290)` | Primary text — read without strain |
| Text Soft | `oklch(0.70 0.02 290)` | Body copy, nav links |
| Text Ghost | `oklch(0.78 0.015 310)` | Labels, meta, eyebrows |

Global body filter: `saturate(0.82) brightness(1.08)` — everything slightly washed-out and overexposed, like a dream remembered.

## Bold Choices (Non-Negotiable)
1. **Four breathing blobs always visible** — rose top-left, lavender right, seafoam bottom-left, peach bottom-right; all on `mix-blend-mode: soft-light`, all animating at 14–20s cycles
2. **Zero hard borders on any element** — blur and opacity alone define containers; no `border: 1px` anywhere
3. **Ultra-low text contrast** — deliberately below WCAG AA; lightness delta of 0.25–0.35 from backgrounds; the page whispers
4. **Colored glow shadows everywhere** — rose panels radiate pink coronas, lavender panels radiate violet halos; never `rgba(0,0,0,x)`
5. **SVG feTurbulence noise overlay** — fixed, full-page, `opacity: 0.03`; adds organic grain like frosted glass
6. **mix-blend-mode overlapping panels** — at minimum the breathwork rings and journal image show soft-light color merging
7. **All animations at 8+ seconds** — blob breathe cycles 14–20s, breathwork expand cycle 8s; nothing is snappy or bounce-eased

## What Success Looks Like
Should feel like gazing into a Turrell Skyspace at dusk — formless color that envelops you, content that floats rather than sits.

Should NOT feel like: Headspace, Calm, a Figma health app template, or a SaaS product with a hero + feature grid + CTA layout.
</design-system>

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/dreamcore-wellness/raw/design-language` in full. Every OKLCH color, blur value, animation timing, glow shadow, and layout specification is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/dreamcore-wellness/raw/image-kit`. All 5 Unsplash photo IDs are pre-verified at 200 status. All photos go behind blur at opacity 0.22–0.38. Photos are atmosphere, never content.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **Nav** — sticky, blurred background (`backdrop-filter: blur(32px)`), Cormorant Infant wordmark, Karla nav links, Victor Mono streak counter right
2. **Hero** — full-vh, blurred photo behind, large Cormorant Infant display headline with italic line, floating frosted-glass "Today" panel overlapping right column, primary pill CTA with rose glow + ghost link
3. **Sessions** — 3-col asymmetric grid (featured spans 2 cols), each card blur-frosted with different hue tint, blurred photos behind, colored glow shadows per card, play button circles
4. **Breathwork** — 2-col, left: concentric soft-light rings expanding/contracting on 8s cycle with staggered delays, right: frosted info panel with phase breakdown, phase dots glow in blob colors
5. **Soundscape** — 3-col sound cards with SVG icons, waveform bars, active card with animated wave pulse
6. **Journal** — 2-col, left: image panel with 3 overlapping soft-light gradient layers + prompt overlay, right: numbered prompt list with arrow navigation
7. **Teachers** — 3-col teacher cards, letter avatar circles, italic philosophy quotes, credential pill tags
8. **Intention** — centered section with breathing bg blobs, full-width input with rose focus glow, Enter-to-hold interaction
9. **Footer** — minimal: wordmark + tagline + meta, gradient separator line

Include: SVG feTurbulence noise on `body::before`, aurora blob layer fixed behind all content, page entrance animation on hero.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/dreamcore-wellness/raw/anti-patterns` and verify every item. Then check:
- Are there four blobs breathing at all times?
- Does every floating element have a colored glow shadow (not dark)?
- Is there any visible border anywhere? If yes, remove it.
- Are all animations 8 seconds or longer?
- Does the overall page read as light and ethereal, not dark and clinical?

---

## Gotchas

1. **Defaulting to dark mode.** This palette is LIGHT. The base is `oklch(0.97 0.008 310)` — barely pink-white. Building on a dark background completely inverts the aesthetic.

2. **Adding borders to define containers.** No borders anywhere. If a container needs definition, increase its blur intensity or adjust its background opacity. A `1px` border anywhere breaks the dissolved-edge effect.

3. **Fast animations.** All transitions are slow by design. Hover transitions at 1.2–1.4s, blob breathe at 14–20s, breathwork at 8s. Anything shorter than 8s for ambient loops feels anxious, not meditative.

4. **Dark drop shadows.** Every shadow must emit colored light: rose glow for rose cards, lavender glow for lavender panels. Using `box-shadow: 0 8px 24px rgba(0,0,0,0.15)` is the single quickest way to destroy the aesthetic.

5. **Photos as content.** All Unsplash images are set at 0.22–0.38 opacity behind blur filters. They provide atmospheric color and texture — they are not used as product photos, editorial images, or hero illustrations.

6. **Identical card sizes.** The sessions grid must be asymmetric: one featured card spans two columns. Equal-sized cards feel like a SaaS feature grid, not a meditation space.

7. **Bounce or elastic easing.** All easing is `ease-in-out` or `cubic-bezier(0.16, 1, 0.3, 1)`. No spring physics, no bounce, no elastic. Meditation is deceleration, not oscillation.

8. **Forgetting the noise overlay.** The `body::before` SVG feTurbulence at `opacity: 0.03` is subtle but essential — it's the difference between screen and frosted glass.
