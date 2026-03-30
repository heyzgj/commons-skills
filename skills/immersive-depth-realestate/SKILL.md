---
name: immersive-depth-realestate
description: Cinematic single-property luxury real estate experience where scrolling is walking through the space. True CSS perspective parallax for the hero, JS transform parallax for room sections, 60vh void hallways between rooms, scroll-driven reveals, Libre Baskerville / Lexend / JetBrains Mono type stack, warm OKLCH palette.
---

# Immersive Depth Real Estate — Design Skill

## What This Skill Does

Builds a single-property luxury real estate listing page where scrolling through the page feels like walking through the physical space. Each room gets its own full-viewport section with a parallax photograph. Generous void sections between rooms act as hallways. The visitor arrives, tours the property, and reaches the CTA without ever feeling like they scrolled a listing.

Best suited for: ultra-high-net-worth property listings, architectural showcases, luxury hospitality sites, and any product where the spatial experience is the value proposition.

## When to use

- Single luxury property showcases (residential, hospitality, architectural)
- When the audience is affluent and unhurried — people who appreciate spatial design
- When photography of the actual space or product is available and high quality
- When the client wants to convey exclusivity, restraint, and architectural sophistication
- When scroll depth and time-on-page are the success metrics (not fast task completion)

## When not to use

- Multi-property listing sites or search results pages
- Products where the user needs to compare options quickly (use a grid instead)
- Any context where dense information delivery is required
- Mobile-first products where scroll behavior is unpredictable
- Sites that need dark/dramatic aesthetics — this style is always warm and light

## Default Workflow

1. Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language` for the full design language, parallax implementation patterns, and component specifications.
2. Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/image-kit` — verify that all Unsplash URLs return 200 before using them. Substitute if any fail.
3. Read `https://joincommons.cc/api/items/immersive-depth-realestate/raw/anti-patterns` — internalize the 8 topic-specific failure modes and the AI slop checklist.
4. Build the exhibit following the design system in `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language`.
5. Self-critique using the 5-question protocol in `https://joincommons.cc/api/items/immersive-depth-realestate/raw/anti-patterns` before finalizing.

## Supporting Files

- `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language` — canonical design language, parallax implementation patterns, color system, typography scale, motion specifications, component anatomy
- `tokens.dtcg.json` — all color, typography, spacing, and motion tokens in DTCG format
- `https://joincommons.cc/api/items/immersive-depth-realestate/raw/design-language` — extended design system with exact CSS patterns and code references
- `https://joincommons.cc/api/items/immersive-depth-realestate/raw/image-kit` — verified Unsplash image URLs, placement rules, substitution guidance
- `https://joincommons.cc/api/items/immersive-depth-realestate/raw/anti-patterns` — 8 topic-specific failure modes, AI slop checklist, self-critique protocol
- `exhibit.html` — the canonical proof surface; inspect for exact parallax implementation
- `evidence/blueprints.json` — structural blueprints for parallax engine and void hallway anatomy (optional; not yet generated)
- `evidence/component-matrix.json` — component coverage matrix for nav, room sections, stats, CTA (optional; not yet generated)

## Output Expectations

A single self-contained HTML file that:
- Opens to a full-viewport hero photograph with property name and price overlaid, animated in on load
- Has a JS-based scroll parallax system where room section photographs move at 0.3x scroll speed
- Has CSS perspective parallax on the hero (not the same JS system)
- Has 60vh void sections between each room section — these are non-negotiable
- Photographs scale subtly (1.0 → 1.05) as they approach the viewport center
- All text and sections use IntersectionObserver scroll reveals at `opacity: 0 → 1`
- Typography uses Libre Baskerville (display/italic), Lexend (body/UI), JetBrains Mono (data/meta)
- Color palette is entirely warm OKLCH neutrals with photography providing saturation
- Has a functioning scroll progress bar and nav that transitions from transparent to frosted

## Reuse and Adaptation Guidance

This skill adapts well to:
- **Luxury hospitality** (hotels, resorts) — replace room sections with suite, spa, restaurant, terrace. Same parallax structure, same void hallways.
- **Architectural studio portfolios** — replace listing content with project narrative. Works well for single featured projects.
- **High-end product showcases** — for products that have physical presence and emotional weight (watches, automobiles, yachts). Replace photos with product photography.

For adaptation, always keep: the full-viewport room sections, the void hallways, the JS parallax at 0.3x, and the warm neutral palette. These are load-bearing aesthetics.

Adjust freely: the number of room sections, the copy voice, the specific typography within the warm-serif / clean-sans / mono stack convention, and the accent color (keep it in the gold-brass-copper register).

## Non-negotiables

- **JS transform parallax on room photos**: `translateY(distFromCenter * 0.3)` in a requestAnimationFrame scroll listener. Never `background-attachment: fixed`. Never CSS-only for room sections.
- **CSS perspective parallax on the hero**: Scroll container with `perspective: 1px`, photo with `translateZ(-0.5px) scale(1.5)`. The hero uses a different parallax method than the rooms.
- **60vh void sections** between every room — these are the hallways. Never reduce to less than 40vh. Never fill them with content.
- **Full viewport height room sections** — 100vh exactly. The visitor cannot see the next section without scrolling.
- **Warm light, always** — photo overlays use `--bg` at 25–40% opacity. Never dark overlays. Never darken the photography.
- **Libre Baskerville italic** in every major heading — the italic `em` word is the typographic fingerprint of this style.
- **JetBrains Mono for all data** — price, square footage, section numbers, coordinates. Never use display or body fonts for data.
- **Scroll-driven IntersectionObserver reveals** on all non-hero content — nothing is pre-visible except the hero.

## Common Failure Modes

- **The Zillow grid**: Stats sidebar beside a photo carousel. Rebuild as a sequential walk-through, not a listing.
- **background-attachment: fixed**: This is not parallax. It's broken on iOS and creates the wrong visual. Replace with JS rAF transform.
- **Dark overlays on photography**: Warming the photo with the background color (`oklch(0.96 0.008 70 / 0.35)`) vs darkening it (`rgba(0,0,0,0.4)`) produces completely different spatial feelings. Always warm, never darken.
- **Collapsed void sections**: If a reviewer says "there's too much empty space," the style is working correctly. The void is the hallway.
- **Feature-list copy**: "This home features 6 bedrooms and panoramic views." Rewrite to describe what it FEELS LIKE to be in the space.
- **Hero and room sections using the same parallax system**: The hero MUST use CSS perspective (separate scroll container). Rooms use JS rAF. Mixing them breaks the hero effect.
- **Missing photo overflow**: Room photo wrappers must be `top: -30%; height: 160%` to have travel room. Without this, the photo edge becomes visible during scroll.
- **Gold accent overuse**: The accent is for price, one gold rule per room, and CTA hover. Using it on dividers, headings, and decorative elements destroys its function as a material reference.
