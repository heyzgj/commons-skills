---
name: pastel-cloud-meditation
description: A breathing and meditation app rendered as a sunrise cloudscape. Central breathing circle on a 16s cycle over multi-layer pink-lavender-blue sky gradient, frosted cloud-form panels with colored glow shadows, SVG waveform soundscape selectors, and zero rectangles anywhere.
---

# Pastel Cloud Meditation

## What This Skill Does

Provides a complete design system for building a meditation and breathing interface that feels like floating in a warm cloud at sunrise. The breathing circle is not decoration — it IS the interface. Everything exists inside a multi-layer sky gradient: frosted cloud-form panels float in pink-lavender-blue air, shadows glow instead of darkening, and every animation moves at breathing pace (4-16s cycles).

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Meditation and breathing apps
- Mindfulness trackers and ambient sound players
- Wellness journaling and daily intention setters
- Sleep preparation interfaces
- Guided relaxation experiences
- Yoga studio companion apps

## When not to use

- Fitness tracking dashboards or gamified wellness (badges, XP, levels)
- Clinical health interfaces or data-dense analytics
- E-commerce or SaaS products
- Dark-theme products or high-contrast brands
- Marketing landing pages with hero-features-pricing-CTA structure

## Default Workflow

**Step 1 — Load design language.** Read `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/design-language` in full. Every OKLCH color, border-radius, animation timing, and blur value is specified. Do not deviate.

**Step 2 — Load image kit.** Read `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/image-kit`. All Unsplash URLs are pre-verified. Every image dissolves into the page via `mask-image: radial-gradient(...)` and `mix-blend-mode: soft-light`.

**Step 3 — Build.** Produce a single self-contained HTML file. The breathing circle must animate on page load. Include: breathing technique section, soundscape selector with SVG waveforms, session timer, 7-day streak tracker (dots, not bars), mood log (word pills, not emoji), daily intention textarea, ambient photography dissolved into gradient.

**Step 4 — Self-critique.** Read output and check against `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/anti-patterns`. Verify: breathing circle animating, zero sharp corners, all shadows colored, hero photo dissolved, grain texture present, all animations at breathing pace.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/design-language` | Full design language — colors, typography, layout, motion, patterns |
| `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/design-language` | Extended design system reference |
| `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/image-kit` | Pre-verified Unsplash URLs with placement rules |
| `https://joincommons.cc/api/items/pastel-cloud-meditation/raw/anti-patterns` | Topic-specific traps and self-critique protocol |
| `tokens.dtcg.json` | DTCG design tokens for all CSS custom properties |
| `exhibit.html` | Proof surface — the reference implementation |

## Output Expectations

- Single self-contained HTML file, 1280px viewport target
- Light theme (body oklch L > 0.92, cloud-tinted warmth)
- 5-7 sections, all meditation-specific content
- Gowun Batang (display) + Belleza (body) + Space Mono (data) fonts via Google Fonts
- Full OKLCH color palette from design-language.md
- SVG feTurbulence grain at 0.03 opacity
- `filter: saturate(0.85) brightness(1.08)` on body
- `backdrop-filter: blur(30-50px)` on every surface
- `prefers-reduced-motion` media query

## Reuse and Adaptation Guidance

The core identity is the breathing circle + cloud-form panels + colored glow shadows. These three elements define the design and must be preserved in any adaptation.

**Adaptable:** Section count, content topics, specific imagery, animation durations (within the 4-16s range), color temperature (warmer or cooler within the pink-lavender-blue spectrum).

**Not adaptable:** The all-rounded-corners rule, the colored-shadows-only rule, the multi-layer gradient background, the breathing-pace animation speed. Breaking any of these fundamentally changes the design identity.

## Non-negotiables

1. Breathing circle animates on page load — no start button
2. Zero rectangles — every border-radius is 30px+ or 50%
3. All shadows colored (OKLCH hue 300-350) — no gray shadows
4. Multi-layer gradient background (4+ layers) — not a single linear-gradient
5. All animations at breathing pace (4-16s) — nothing under 2s
6. Photos dissolve via mask-image + blend mode — never sit on top of gradient
7. No gamification (badges, XP, levels, progress percentages)

## Common Failure Modes

1. **Headspace clone.** Adding pastel colors to a standard wellness dashboard produces a Calm/Headspace clone. The breathing circle IS the interface, not a feature inside a dashboard.

2. **Start button.** Putting the breathing behind a "Start Session" button breaks the core principle: you arrive already breathing.

3. **Gray shadows.** Even one `rgba(0,0,0,0.05)` shadow breaks the luminous quality. Every shadow must use OKLCH with hue 300-350.

4. **Single-layer gradient.** A single `linear-gradient(pink, blue)` looks banded and cheap. The background requires 4+ radial-gradient layers at different positions.

5. **Sharp corners.** A single visible right angle destroys the cloud aesthetic. Check every container, button, input, and card.

6. **Font substitution.** Replacing Gowun Batang with Inter or Poppins collapses the delicate Korean-serif tension. The typographic pairing is load-bearing.

7. **Cartoon imagery.** No lotus flowers, mandalas, illustrated meditation poses, or chakra symbols. The visual vocabulary is clouds, color, light, circles.

8. **Web-speed animations.** Transitions under 2s feel like web interactions, not meditation. The breathing circle is 16s. Floating elements are 12-15s. Even hover transitions are 500ms+.
