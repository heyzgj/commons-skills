---
name: vapor-sunset-music
description: Vaporwave sunset dreamcore lo-fi music player. Living multi-layer animated sunset gradient, warm frosted glass surfaces, CSS palm silhouettes, drifting playlist cards, and scan-line texture. Broadcasting from inside a memory of a place that doesn't exist.
---

# SUNSETFM — Vaporwave Sunset Music Player

## What This Skill Does

Provides a complete design system for building a lo-fi music player that feels like an eternal sunset in a pastel dimension. The living animated sunset gradient IS the interface -- frosted glass surfaces float in it, playlist cards drift through it, palm silhouettes suggest distant tropics, and a VHS analog softness filter makes everything feel like a warm memory.

## When to use

- Lo-fi radio players and ambient music apps
- Mood-based playlist discovery interfaces
- Chill-hop streaming or background music experiences
- Music player atmospheres that prioritize feel over utility
- Any audio interface where atmosphere matters more than library management

## When not to use

- E-commerce or transactional interfaces
- SaaS dashboards or data-dense tools
- Dark-theme-first products (this is a light-warm sunset)
- Complex music library management (this is atmosphere, not Spotify)
- Corporate or professional contexts

## Default Workflow

**Step 1 -- Load design language.** Read `https://joincommons.cc/api/items/vapor-sunset-music/raw/design-language` completely before writing any CSS. Every oklch color, font, spacing value, and animation spec is documented.

**Step 2 -- Load image kit.** Read `https://joincommons.cc/api/items/vapor-sunset-music/raw/image-kit`. Use only verified Unsplash URLs. Images go BEHIND glass surfaces at low opacity with blend modes.

**Step 3 -- Build.** Implement: header/brand > now-playing hero with player card > mood stations (2x2) > playlist browser with drifting tracks > listening stats + featured producers > mood EQ visualizer > footer. Apply living sunset gradient, scan-line texture, SVG grain, and palm silhouettes.

**Step 4 -- Self-critique.** Read `https://joincommons.cc/api/items/vapor-sunset-music/raw/anti-patterns` and verify every implementation invariant from `https://joincommons.cc/api/items/vapor-sunset-music/raw/design-language` before delivering.

## Supporting Files

| File | Purpose | When to read |
|------|---------|-------------|
| `https://joincommons.cc/api/items/vapor-sunset-music/raw/design-language` | Full design system: colors, typography, layout, motion, components | Before writing any CSS |
| `tokens.dtcg.json` | DTCG format design tokens for implementation mapping | During build for exact values |
| `https://joincommons.cc/api/items/vapor-sunset-music/raw/image-kit` | Verified Unsplash URLs with usage rules | Before adding any images |
| `https://joincommons.cc/api/items/vapor-sunset-music/raw/anti-patterns` | Topic-specific traps + self-critique checklist | After building, before delivery |
| `exhibit.html` | Complete working proof of the design system | Reference when building |

## Output Expectations

A warm, atmospheric lo-fi music player page with a living sunset gradient that shifts continuously. Warm frosted glass surfaces for all interactive elements. Playlist cards that drift on slow oscillation. No cool colors anywhere. VHS analog softness filter on the body. At least one CSS palm silhouette. Scan-line texture and grain overlay for analog warmth.

## Reuse and Adaptation Guidance

The sunset gradient system works at any viewport size. Glass surfaces can wrap any content type. The warm-only color constraint and VHS softness filter are the most transferable elements -- apply them to any interface for the sunset dreamcore aesthetic. The drifting animation pattern works on any list of items. Palm silhouettes are optional decoration.

## Non-negotiables

- Sunset gradient MUST animate (20s+ cycle with multiple layers for parallax)
- Zero cool colors -- every hue warm: peach, pink, rose, lavender, orange
- Text is warm rose-brown `oklch(0.30 0.04 340)`, never neutral gray
- VHS softness filter: `saturate(0.75-0.80) brightness(1.04-1.06)` on body
- Fonts: Abril Fatface (display), Karla (body), Fira Code (data) -- no substitutions

## Common Failure Modes

1. **Static gradient** -- A flat pink-purple gradient without animation looks like a Canva template. Must have multiple layers with different animation timings.

2. **Ironic vaporwave** -- Greek statues, Japanese katakana, glitch effects, CRT curvature. This is the emotional core of vaporwave, not the meme version.

3. **Spotify reskin** -- Sidebar navigation, library management, dark mode with accent highlights. This is atmosphere, not utility.

4. **Cool color leak** -- Any blue, teal, cyan, or neutral gray breaks the warm sunset palette immediately.

5. **Missing analog texture** -- Without scan-line texture + grain + VHS filter, the frosted glass surfaces look like generic glassmorphism.
