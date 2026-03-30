---
name: mixed-scroll-product
description: Cinematic product launch page where scrolling physically changes direction — vertical snap panels give way to a horizontal feature gallery. The scroll wheel becomes a multi-directional controller.
metadata: design-skill
---

# Mixed-Scroll Product Showcase

## What This Skill Does

Routes a premium product launch into a cinematic, spatially surprising experience. Vertical scroll snaps through a hero and product reveal, then hands control to a horizontal feature gallery before a final purchase panel. The scroll wheel controls two axes. Panels alternate near-black and cool-white like film editing.

## When to use

- Best for premium hardware launches, automotive product pages, luxury consumer electronics
- Best for single-product reveal pages where the experience IS part of the brand
- Use when the audience appreciates craft and evaluates products by how they feel
- Use when theater and choreography are more important than content density

## When not to use

- Avoid for multi-product catalogs — no room for grids or filtering
- Avoid for content sites or blogs — the structure requires a linear narrative
- Avoid for dashboards or data-heavy interfaces — every panel holds one idea
- Avoid when standard scroll navigation is expected (accessibility-critical contexts)

## Default Workflow

1. Read `https://joincommons.cc/api/items/mixed-scroll-product/raw/design-language` for the full design language — colors, typography, motion, panel compositions, and accessibility requirements.
2. Read `https://joincommons.cc/api/items/mixed-scroll-product/raw/design-language` for extracted CSS patterns, animation specs, and the scroll-intercept JS architecture.
3. Read `https://joincommons.cc/api/items/mixed-scroll-product/raw/image-kit` for verified Unsplash URLs; verify each with `curl -sI` before using.
4. Read `tokens.dtcg.json` for the canonical color, typography, and motion token values.
5. Build the exhibit — implement the scroll structure first, content second.
6. Read `https://joincommons.cc/api/items/mixed-scroll-product/raw/anti-patterns` and check every item before delivering.

## Supporting Files

- `https://joincommons.cc/api/items/mixed-scroll-product/raw/design-language` — Full design language: principles, visual system, adaptive behavior, accessibility, invariants
- `https://joincommons.cc/api/items/mixed-scroll-product/raw/design-language` — Extracted CSS patterns, animation specs, scroll-intercept JS architecture
- `https://joincommons.cc/api/items/mixed-scroll-product/raw/image-kit` — Verified Unsplash URLs with usage rules and replacement guidance
- `https://joincommons.cc/api/items/mixed-scroll-product/raw/anti-patterns` — Topic-specific failure modes and self-critique protocol
- `tokens.dtcg.json` — All OKLCH colors, typography, easing, and spacing tokens in DTCG format
- `exhibit.html` — Reference implementation: ARC Pro headphone launch with 4 vertical + 4 horizontal panels

## Supporting References

- `https://joincommons.cc/api/items/mixed-scroll-product/raw/design-language`
- `https://joincommons.cc/api/items/mixed-scroll-product/raw/image-kit`
- `https://joincommons.cc/api/items/mixed-scroll-product/raw/anti-patterns`

## Output Expectations

A single self-contained HTML file with:
- Exactly 4 vertical panels (hero / reveal / h-track wrapper / purchase) snapping on the Y axis
- A horizontal track inside the wrapper with 3–5 full-viewport panels snapping on the X axis
- JavaScript wheel event interception redirecting scroll into the horizontal track
- All panels exactly 100vw × 100vh — no overflow, no internal scroll
- Dark/light panel alternation strictly maintained
- Instrument Sans + Geist + Geist Mono loaded from Google Fonts
- All colors in `oklch()` notation
- Lazy-loaded photos with alt text and CSS background-color fallback
- `<header>`, `<main>`, `<footer>` semantic landmarks
- `prefers-reduced-motion` media query

## Reuse and Adaptation Guidance

**Swap the product**: Replace ARC Pro headphone content, SVG illustration, and colorway swatches with any premium product. Keep the exact panel structure, colors, and type system.

**Adjust horizontal panel count**: The skill supports 3–5 horizontal panels. More than 5 makes the feature gallery feel exhausting. Fewer than 3 wastes the directional mechanic.

**Keep the dark/light alternation**: The color rhythm is load-bearing. If your product requires all-dark panels, the rhythm collapses. Use the defined `--dark` and `--light` values exactly.

**Typography is fixed**: Instrument Sans + Geist + Geist Mono. Do not substitute. The ghost-weight title pair (700/300 at 40% opacity) must be preserved.

**Photos are optional**: If you have no verified Unsplash images, use CSS gradient backgrounds with the same overlay treatment. The panel structure works without photos.

## Non-negotiables

1. Every panel is exactly 100vw × 100vh — no exceptions
2. `scroll-snap-stop: always` on every panel and h-panel
3. JavaScript wheel interception for the horizontal redirect
4. Dark/light alternation strictly maintained across all panels
5. No carousel arrows or buttons — scroll IS the control
6. One idea per horizontal panel — no bullet lists
7. All colors in `oklch()` notation

## Common Failure Modes

1. **Carousel trap**: Building prev/next arrows instead of implementing wheel interception. The horizontal panels become a carousel, not a scroll direction change.
2. **Overflow at 100vh**: Content that exceeds the viewport breaks snap precision. Cut content rather than growing the panel height.
3. **Consecutive same-value panels**: Two dark panels in a row destroys the film-editing rhythm.
4. **Feature panels with bullet lists**: Each horizontal panel is a film frame about ONE feature. Lists make it a slide deck.
5. **Missing `scroll-snap-stop: always`**: Fast wheel events skip panels. The deliberate snap precision is lost.

## Gotchas

1. **JS wheel interception is required.** CSS scroll-snap cannot redirect a vertical `wheel` event into horizontal scroll. You need a `wheel` event listener with `e.preventDefault()` on the parent container, manually calling `scrollTo()` on the inner horizontal track.

2. **`scroll-snap-stop: always` is load-bearing.** Without it, fast wheel spins skip panels. Every `.panel` and `.h-panel` needs it.

3. **100vh panels are non-negotiable.** If your content overflows at 100vh, cut content — never grow the panel. The viewport is the canvas.

4. **One idea per horizontal panel.** Each h-panel gets one feature explored with depth: one large stat, one SVG diagram, one material category. Bullet lists destroy the theater.

5. **Panels must strictly alternate dark/light.** Hero dark → Reveal light → H-panels alternating → Purchase dark. Never two consecutive same-value panels.

6. **Verify Unsplash URLs before shipping.** Run `curl -sI <url>` — must return `HTTP/2 200`. Photo IDs expire silently.

7. **`mix-blend-mode: difference` on the brand mark** auto-inverts across dark and light panels without JS. Use this technique for any fixed element that must read on both panel types.
