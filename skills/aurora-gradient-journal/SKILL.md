---
name: aurora-gradient-journal
description: A mood and gratitude journal rendered as an aurora dreamscape. Continuously animated conic-gradient aurora layers over deep midnight blue-violet, frosted glass entry panels, mood expressed as color temperature instead of emoji, journaling streak visualized as a growing light trail.
---

# Aurora Gradient Journal

## What This Skill Does

Provides a complete design system for building a reflective journaling interface that feels like writing outdoors under the northern lights. The aurora is not decoration — it IS the atmosphere. Everything exists inside it: frosted glass panels float in shifting light, mood maps to aurora hue rather than emoji, and a streak counter grows as a continuous light band rather than a number badge.

Use this file as the apply-time router. Load `https://joincommons.cc/api/items/aurora-gradient-journal/raw/design-language` for the full visual system, `tokens.dtcg.json` for implementation values, and inspect `exhibit.html` for the proof surface.

## When to use

- Mood and gratitude journals, daily reflection apps
- Meditation or mindfulness interfaces where atmosphere matters more than metrics
- Evening/nighttime journaling experiences
- Emotional processing tools that prioritize feeling over productivity
- Any writing interface where ambient environment enhances the experience

## When not to use

- Productivity dashboards or quantified-self analytics
- Bright/daytime wellness apps (this needs DARKNESS to work)
- E-commerce, SaaS, or marketing landing pages
- Content requiring high information density or data tables
- Light-theme-only products (the aurora requires deep dark base)

## Default Workflow

1. **Read `https://joincommons.cc/api/items/aurora-gradient-journal/raw/design-language`** — internalize the three-layer aurora system, the OKLCH midnight palette, frosted glass patterns, mood-as-color mapping, and breathing luminosity conventions.
2. **Read `tokens.dtcg.json`** — extract concrete values for aurora colors, glass properties, text glow shadows, animation timing, and font assignments.
3. **Build** — structure: three fixed aurora layers (conic-gradient with hue-rotate at 25s/18s/12s) → SVG grain overlay → `.content` wrapper → header with greeting + date → two-column layout (entries left, mood wheel + prompts right) → frosted glass panels (`backdrop-filter: blur(30px)`, `rgba` backgrounds at 0.06-0.15 opacity) → streak light trail fixed to left edge. Mood uses color dots (teal=gratitude, violet=reflection, rose=joy, deep-blue=calm), never emoji.
4. **Self-critique against `https://joincommons.cc/api/items/aurora-gradient-journal/raw/anti-patterns`** — verify aurora animates continuously, multiple layers create parallax, no emoji grids, no bar chart analytics, no static gradients, no pure white or pure black anywhere.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/aurora-gradient-journal/raw/design-language` | Full design language — colors, typography, layout, motion, components, states, accessibility |
| `https://joincommons.cc/api/items/aurora-gradient-journal/raw/design-language` | Detailed visual system reference with aurora layer specs, glass patterns, text glow convention |
| `https://joincommons.cc/api/items/aurora-gradient-journal/raw/image-kit` | Photography guidance (this skill uses no photos — aurora IS the visual) |
| `https://joincommons.cc/api/items/aurora-gradient-journal/raw/anti-patterns` | Topic-specific failure modes + self-critique protocol |
| `tokens.dtcg.json` | DTCG tokens: OKLCH colors, glass properties, font assignments, animation timing, easing |
| `exhibit.html` | Proof surface — complete journal with aurora layers, entries, mood wheel, streak trail |

## Output Expectations

A single-page HTML document that feels like journaling under the northern lights. Specifically:
- Deep midnight blue-violet background (`oklch(0.12 0.03 280)`), never pure black
- Three animated aurora layers at different speeds with `mix-blend-mode: screen`
- All panels are frosted glass showing aurora through them
- Text is ice-blue tinted (`oklch(0.82 0.03 200)`), never pure white
- Every text element has subtle `text-shadow` glow matching nearest aurora hue
- All glow effects breathe on 10-15s cycles
- Mood expressed by color temperature, not emoji or number scales
- Streak shown as a light trail along the interface edge, not a badge
- SVG feTurbulence grain overlay at low opacity
- `prefers-reduced-motion` fallback

## Reuse and Adaptation Guidance

**Safe to adapt:** Journal entry content, prompt questions, number of entries, date formatting, greeting text, streak length, mood distribution, section ordering within columns.

**Adapt with care:** Panel padding (keep generous — spaciousness is atmospheric), sidebar width (340px balances with main column at 1280px viewport), aurora layer count (minimum 2 for parallax — adding a 4th is fine), animation durations (keep slow, 8-25s range).

**Do not change:** The animated aurora system (static gradients break the identity), the mood-as-color mapping (no emoji substitution), the deep midnight base color (must be oklch L ~0.12 with blue-violet hue), the frosted glass technique (backdrop-filter blur is required), the three-font assignment (Playfair/Nunito Sans/Space Mono), the tinted-everything rule (no pure white or black).

## Non-negotiables

- Aurora layers MUST animate continuously via `hue-rotate` — static gradients fail the identity
- Minimum 2 aurora layers at different speeds for parallax depth
- No pure white (`#fff`) or pure black (`#000`) — everything tinted by aurora hues
- Mood = color, not emoji. Gratitude=teal, reflection=violet, joy=rose, calm=deep-blue
- Frosted glass panels use `backdrop-filter: blur(24-30px)` with aurora visible through them
- Fonts: Playfair Display (display), Nunito Sans (body), Space Mono (data/labels)
- Streak is a visual light trail, not a number in a badge

## Common Failure Modes

1. **Static gradient wallpaper.** The aurora must ANIMATE with `hue-rotate`. A frozen gradient is just a dark theme with colors.
2. **Emoji mood pickers.** Mood maps to aurora hue, not cartoon faces. The whole interface should shift color temperature based on mood.
3. **Bar chart analytics.** This is reflective journaling, not quantified-self. Use a color wheel, not a chart.
4. **Bright pastels on white.** Aurora needs darkness to glow. The deep midnight base makes the colors luminous.
5. **Random gradient blobs.** Gradients must flow in aurora-like bands (conic-gradient), not organic blob shapes.
6. **Cards-in-cards nesting.** Frosted glass panels float in the aurora — they don't contain other cards.
7. **Generic "dark mode."** The darkness must feel vast and atmospheric (midnight blue-violet with grain), not just inverting a light theme.
