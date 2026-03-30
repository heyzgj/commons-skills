---
name: editorial-longform-scrollytelling
description: Immersive long-form journalism design for investigative publications. Scroll-driven parallax hero, sticky scrollytelling sections, reading progress bar, and CSS view()-animated paragraph reveals. Newsreader / Libre Baskerville / DM Mono on warm ivory paper with brick-red accent.
---

<design-system>

## Identity

CHRONICLE is a long-form journalism experience that makes the page disappear behind the story. Scroll-driven animations create physical depth — the reader moves through the landscape of the narrative rather than past it. The narrow 680px reading column creates intimacy for 5,000-word features. Atmospheric landscape photography marks chapter transitions like cinematic establishing shots. The tone is literary but grounded — patient authority for investigative and environmental journalism. Think *The Atavist*, *Delayed Gratification*, the immersive features on *NYT Magazine* or *The California Sunday Magazine*.

## Core Design Language

- **Colors**: Warm ivory paper `oklch(0.99 0.005 90)`, near-black text `oklch(0.15 0.01 50)`, muted metadata `oklch(0.50 0.008 60)`, surface `oklch(0.96 0.01 85)`, brick-red accent `oklch(0.45 0.12 25)`, border `oklch(0.88 0.008 75)`
- **Typography**: Newsreader italic (display, 300-700), Libre Baskerville (body, 400/700, 19px/1.78), DM Mono (labels, 300/400, 11px uppercase 0.12-0.25em tracking). Three voices, no exceptions.
- **Spacing**: 680px reading measure, 96px chapter margins, 80px full-bleed vertical margins, 48px pull-quote padding
- **Radius**: Zero everywhere except 50% author avatar circle and 2px reading-time badge
- **Motion**: CSS `animation-timeline: scroll()` for parallax, `animation-timeline: view()` for reveals, cubic-bezier(0.16,1,0.3,1) easing, 600-700ms durations

## Signature Moves

1. **CSS scroll-driven parallax hero** — full-viewport landscape image at `animation-timeline: scroll(root)` scrolling at 0.3x speed, with bottom-heavy gradient scrim and italic Newsreader title at light weight (300)
2. **view()-animated paragraph reveals** — every `.reveal` prose paragraph uses `animation-timeline: view()` to fade up from 28px below on viewport entry, with expo easing, zero JavaScript
3. **Sticky two-column scrollytelling** — grid `1fr 1fr` where a landscape image stays pinned (`position: sticky`) while narrative text flows past in the adjacent column
4. **Full-bleed image breaks** — images burst from the 680px measure to `100vw` with `margin-left: calc(-50vw + 50%)`, parallax via `animation-timeline: view()`, and absolute-positioned gradient-backed caption
5. **5.2em italic drop cap** — Newsreader initial letter in brick-red accent, floated left with `line-height: 0.82` and `margin-top: 0.06em`

## Hard Constraints

- Prose text must stay within `--measure: 680px` — only full-bleed images and the sticky section break out
- Exactly three typefaces: Newsreader (display), Libre Baskerville (body), DM Mono (metadata). No substitutions.
- Brick-red accent appears only on: progress bar, drop cap, chapter labels, pull-quote left border, active marker dot. Never as background fill.
- All scroll animations use CSS `animation-timeline` (scroll/view) — no JS-driven intersection observer reveals
- Complete `@media (prefers-reduced-motion: reduce)` block: all animations disabled, all reveals at `opacity: 1; transform: none`
- Single-story page structure: one article, one reading path. No sidebar, no card grid, no related articles.

## Anti-Patterns

- Adding horizontal slides, zoom bursts, scale transitions, or staggered delays beyond the five defined animation types — this is not a theme park
- Sidebar navigation, trending widgets, social share floating buttons, ad-slot placeholders, or multi-article layouts — contradicts the immersive single-story intent
- Using accent `oklch(0.45 0.12 25)` as background fill, button color, or large blocks of color — it is punctuation, not paint
- Emoji, icons, SVG illustrations, or decorative dividers — all visual rhythm comes from typography and photography only
- Using body font (Libre Baskerville) for labels or display font (Newsreader) for prose — collapses the three-voice hierarchy
- Generic stock photos with high saturation or posed subjects — photography must be atmospheric, documentary, moody landscapes

</design-system>

## Supporting Files

- Read `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/design-language` for the full design system (typography scale, color tokens, layout patterns, motion system, component inventory)
- Read `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/image-kit` for verified Unsplash photography URLs with placement notes
- Read `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/anti-patterns` for topic-specific failure modes and self-critique protocol
- Load `assets/tokens.dtcg.json` when generating code tokens
- Inspect `assets/exhibit.html` as the reference implementation

## Workflow

1. Read `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/design-language` — internalize the three-typeface system, OKLCH palette, measure constraint, and all five scroll-driven animation types
2. Read `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/image-kit` for verified Unsplash photography with placement and sizing guidance
3. Build: masthead + progress bar, parallax hero, prose chapters with drop cap and reveals, full-bleed break, sticky scrollytelling, mood overlay, pull quotes, author bio, footer
4. Self-critique against `https://joincommons.cc/api/items/editorial-longform-scrollytelling/raw/anti-patterns` — fix any violations before shipping

## Gotchas

1. **Animation overload.** Five CSS scroll-driven animation types is the ceiling. Adding more turns serious journalism into a theme park.
2. **Breaking the 680px measure.** Only full-bleed images and the sticky section escape the reading column. Wide text kills the literary feel.
3. **Wrong typeface register.** Newsreader for headlines, Libre Baskerville for prose, DM Mono for labels. Mixing them collapses the hierarchy.
4. **Accent flooding.** The brick-red appears on roughly 6-8 elements across the entire page. More than that looks like an error state.
5. **Missing reduced-motion.** The `prefers-reduced-motion: reduce` block is non-negotiable. All animations off, all reveals visible.
6. **News-site furniture.** No sidebar, no card grid, no trending widgets, no social buttons. One article, one path.
7. **Flat photography.** Hero and break images must be atmospheric landscapes with tonal depth, not generic stock or over-saturated HDR.
