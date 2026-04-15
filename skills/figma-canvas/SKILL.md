---
name: figma-canvas
description: Monochrome interface chrome where all color lives in product content — a white gallery wall displaying colorful creative work. Satoshi 300-700 with negative letter-spacing, pill geometry (50px), dashed 2px focus outlines. Vibrant gradient hero with collaboration video overlay. Multiplayer cursor animations. Dev Mode code cards. Built for design tool marketing, collaboration platforms, and developer tool landing pages.
metadata: design-skill
---

# Figma Canvas

<design-system>

## Identity

A white gallery wall where colorful creative work is the only thing that draws your eye. The interface is invisible — strictly black-and-white chrome with zero color in any UI element. ALL color comes from product content: the vibrant gradient hero, collaboration photos, multiplayer cursor colors, and file type icons. Inspired by figma.com's design language where a custom variable font at ultra-light weights and pill geometry create a tool-like precision that lets creative output shine. Built for product designers who live in Figma 8+ hours daily, engineers using Dev Mode, PMs reviewing prototypes, and design systems teams maintaining component libraries.

## Core Design Language

- **Colors**: Strictly binary — pure black oklch(0% 0 0) for all text/buttons/borders, pure white oklch(100% 0 0) for all backgrounds/cards. Brand colors (green oklch(75% 0.18 155), purple oklch(52% 0.2 290), red oklch(55% 0.2 30), blue oklch(70% 0.14 230)) identify file types and product areas ONLY — never interface chrome.
- **Typography**: Satoshi 300-700 for display and body — ultra-light weights (300) for body text, 700 for emphasis. IBM Plex Mono 400/500 for uppercase section labels with positive tracking. Universal negative letter-spacing on sans-serif (-0.1px body to -1.72px display). Font kerning enabled globally.
- **Spacing**: 4px base grid. Section padding 120px vertical, 32px horizontal. Content max-width 1200px. Component gaps 16-24px, card padding 24-40px.
- **Radius**: Pill (50px) for all buttons and tabs. 8px for cards and images. 6px for small containers. 12px for file type icons. 50% for circles and icon buttons.
- **Motion**: ease-out-quart (0.25,1,0.5,1) for most transitions, ease-out-expo (0.16,1,0.3,1) for snappy nav/tabs. 0.15s hover, 0.2s state changes, 0.6s entrances. Gradient shifts at 12s. Full reduced-motion support.

## Signature Moves

1. **Absolute monochrome chrome** — zero color in the interface layer. Even links, borders, and dividers are black. Color exists only in product content (hero gradient, photos, cursor colors, file type icons). The interface is a white gallery wall.
2. **Ultra-light font weights** — body text at Satoshi 300, lighter than any conventional design system. Headings use 300 for the base word with `<strong>` at 700 for emphasis ("Where teams **design** together"). This light-then-bold contrast is the signature typographic move.
3. **Multiplayer cursor animations** — colored cursors (green, purple, blue) with name labels floating over workspace images in organic paths. Collaboration is SHOWN, not told.
4. **Dev Mode code card** — real TypeScript code with VS Code dark theme syntax highlighting demonstrates the Dev Mode feature through actual code output, not marketing description.
5. **Dashed 2px focus outlines** — a meta-reference to Figma editor selection handles. The website's interaction language mirrors the product itself.
6. **Pill geometry everywhere** — every interactive element uses 50px border-radius. Buttons, tabs, and CTAs are always pill-shaped. The rounded pill forms echo Figma's tool palette.
7. **Vibrant gradient hero** — multi-stop gradient cycling through brand colors (green/purple/orange/blue) with collaboration video at 0.55 opacity overlay blend. The gradient represents the spectrum of creative possibility.

## Hard Constraints

1. Interface chrome is strictly black (#000) and white (#fff) — zero exceptions. No colored borders, tinted backgrounds, or accent text in the UI layer.
2. All interactive elements use pill geometry (50px border-radius) — buttons, tabs, nav CTAs are always pill-shaped with rounded 50px radius.
3. Focus outlines are dashed 2px, never solid — this is both the brand reference and the accessibility pattern.
4. Body text uses negative letter-spacing (-0.1px to -0.14px) — positive tracking only on IBM Plex Mono uppercase labels (0.5-1.5px).
5. Body text weight stays at 300-400 — never above 400 for body. 700 is reserved for headings, feature titles, and emphasis words only.
6. Brand colors (green, purple, red, blue) identify specific products and file types — never used as decorative accents.
7. Depth through surface contrast (white on black, white on gradient) — near-zero box-shadows.

## Anti-Patterns

1. **Color in chrome** — adding any color to the interface layer (colored borders, tinted backgrounds, gradient heading text, accent-colored links) destroys the gallery-wall effect. The moment chrome has color, it stops being invisible.
2. **Heavy font weights** — using 500+ for body text or 800+ for headings breaks the ethereal, tool-like reading experience that Figma's light weights create.
3. **Generic SaaS template** — hero → features grid → metrics → testimonials → pricing → CTA. Figma's sections are product-native: tab showcase, cursor demo, code card, community mosaic.
4. **Feature icon cards** — six identical rounded-icon cards with "Feature Name + 2 lines" is the #1 AI SaaS template pattern. Demonstrate features through interaction (tabs, code, cursors).
5. **Shadow overload** — Figma uses almost zero shadows. Reaching for box-shadow when surface contrast would work signals a misunderstanding of the depth model.
6. **Brand colors as decoration** — using green/purple/orange/blue as random gradients or accent borders loses their semantic meaning as file type and product area identifiers.
7. **Positive letter-spacing on body** — only IBM Plex Mono labels get positive tracking. Satoshi body text ALWAYS has negative letter-spacing.

</design-system>

## Supporting Files

- Read `https://joincommons.cc/api/items/figma-canvas/raw/design-language` for the full visual system (typography scale, color palette, spacing, motion, component patterns, layout grids)
- Read `references/asset-direction.md` for photography direction, video direction, and verified starter assets
- Read `https://joincommons.cc/api/items/figma-canvas/raw/anti-patterns` for domain-specific failure modes across visual, structural, content, and UX categories
- Load `assets/tokens.dtcg.json` when generating code — contains all OKLCH color tokens, semantic tokens (file types, cursor colors, code syntax), and typography composites
- Inspect `assets/exhibit.html` as the reference implementation — monochrome chrome, gradient hero, multiplayer cursors, Dev Mode code card

## Default Workflow

1. Read `https://joincommons.cc/api/items/figma-canvas/raw/design-language` to internalize the binary palette, light-weight typography, pill geometry, and spacing rhythm.
2. Read `assets/tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Build the page: keep ALL color out of interface chrome. Color comes from product content (gradient, photos, cursors, file type icons).
4. Use Satoshi at 300 for body, 700 for emphasis words in headings. IBM Plex Mono uppercase for structural labels.
5. Inspect `assets/exhibit.html` as the proof surface if any detail is ambiguous.
6. Self-critique against the hard constraints and anti-patterns above before shipping.

## When to Use

- Collaborative design tool landing page
- SaaS product with multiplayer features
- Developer tool with code generation capabilities
- Creative platform marketing site
- Design system documentation hub
- Team collaboration product page

## When Not to Use

- Dark-mode-only dashboards or analytics
- E-commerce with product grids and shopping cart
- Heavy editorial or blog-first layout
- Conservative corporate enterprise branding
- Single-player productivity tool with no collaboration story
