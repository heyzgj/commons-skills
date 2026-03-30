---
name: motion-identity-studio
description: Dark motion-first studio portfolio where scroll drives @keyframes, SVG paths morph between geometries, and kinetic typography cascades character-by-character. Electric green/violet/amber accents on near-black OKLCH base. Clip-path section reveals, frame timecode counter, and chamfered CTAs. No photography — CSS and SVG ARE the visual.
---

# Motion Identity Studio

## What This Skill Does

Produces a dark motion design studio portfolio where **motion is the medium, not the decoration**. Every section reveals through a different clip-path verb. The hero headline cascades letter-by-letter from below. SVG paths morph continuously between geometries. A film timecode counter tracks scroll progress in amber. The browser becomes a film projector — the viewer navigates by scrolling through time.

## When to use

- Motion design studio homepage
- Creative director or animator portfolio
- Animation studio showcase
- CSS/web animation capability showcase
- Visual effects reel site
- Interactive media agency

## When not to use

- SaaS product landing pages needing feature cards and pricing tables
- E-commerce storefronts needing product grids and cart
- High-accessibility contexts requiring `prefers-reduced-motion` static fallback as primary
- Light-theme brand guidelines or corporate sites
- Documentation sites needing content navigation

## Default Workflow

1. Load `https://joincommons.cc/api/items/motion-identity-studio/raw/design-language` for full design language — color, typography, animation vocabulary, component specs
2. Load `https://joincommons.cc/api/items/motion-identity-studio/raw/design-language` for CSS implementation patterns and SMIL examples
3. Build the exhibit following the page structure and motion choreography in `https://joincommons.cc/api/items/motion-identity-studio/raw/design-language`
4. Self-critique: take a mental static screenshot — if it looks complete, you've failed; add more motion

---

<design-system>
# Design Style: Motion Identity Studio

## Design Philosophy
### Core Principle
**Movement IS Identity.** The interface doesn't have animations — it IS animation. Every element earns its existence through motion. Scroll drives @keyframes. SVG paths morph. Typography cascades character-by-character. Sections reveal through clip-path wipes. A static screenshot captures nothing — the design only exists in time.

### Visual Vibe
**Emotional Keywords**: Kinetic, Choreographed, Temporal, Rhythmic, Precise, Dynamic, Fluid, Engineered, Performative, Electric

Real-world references:
- Buck studio and Motionographer — motion as cultural artifact
- Fincher title sequences (Se7en, Fight Club) — every frame intentional
- Laban notation come alive in the browser
- Saul Bass title cards reconceived for scroll-driven CSS

### What This Design Is NOT
- NOT a static portfolio with hover effects sprinkled on as afterthought
- NOT parallax scrolling — use `animation-timeline: scroll()` and `view()`, not `translateY(scrollY * 0.5)` JS
- NOT Lottie or GSAP embeds — all motion is CSS/SVG native
- NOT utilitarian loading feedback — motion here is intentional spectacle
- NOT a light theme with gentle fades — dark, electric, precise throughout
- NOT scroll-jacking — scroll drives animation but never prevents native scrolling

### The DNA of Motion Identity

**Scroll-Driven Choreography**: CSS `animation-timeline: scroll()` and `view()` bind element transforms directly to scroll position. Each section has its own movement vocabulary. Never use JS scroll listeners for visual effects.

**SVG Path Morphing**: Logo shapes, dividers, and decorative elements are living SVG paths that morph via SMIL `<animate attributeName="d">`. A blob breathes. A diamond becomes an ellipse. Browser-native, zero runtime overhead.

**Kinetic Typography**: Headlines split into individual `<span>` characters with staggered animation delays. Line 1 is solid-filled. Line 2 is transparent with `webkit-text-stroke` — only the outline renders, with accent letters glowing green. Same scale, two rendering modes.

**Clip-Path Reveals**: Sections appear through different clip-path motions. Manifesto wipes left-to-right like a film gate. Showreel expands from center outward. Contact pushes from right. The reveal verb matches the section's emotional register.

**The Frame Counter**: A fixed amber `HH:MM:SS:FF` timecode in the corner updates with scroll progress — the browser feels like Premiere Pro.

## Typography
- **Display**: Space Grotesk — geometric, sharp, holds form during transforms. All headlines.
- **Body**: Inter — precise at small sizes during motion. Body copy, nav links.
- **Mono/Data**: JetBrains Mono — timecodes, section labels (`// 01 — Name`), frame counter.

## Color
All OKLCH — perceptually uniform at dark lightness levels:
- **Background**: `oklch(0.08 0.02 270)` — deep dark blue-black, like a theater before lights
- **Text**: `oklch(0.92 0.01 90)` — warm near-white
- **Green**: `oklch(0.75 0.20 145)` — electric green for motion paths, CTAs, progress bar
- **Violet**: `oklch(0.70 0.18 290)` — hover states, team accents, cursor ring
- **Amber**: `oklch(0.80 0.15 65)` — timecodes, frame counter, stat numbers
- **Muted**: `oklch(0.35 0.02 270)` — ghost text, separator lines
- **Muted light**: `oklch(0.50 0.02 270)` — secondary copy, nav links

Color = concentrated stage lighting. Bright purposeful islands in sustained darkness.

## Bold Choices (Non-Negotiable)

1. **Progress bar**: Fixed 2px green line, `animation-timeline: scroll(root)`, `box-shadow: 0 0 8px green`
2. **Frame timecode**: Fixed amber `HH:MM:SS:FF` bottom-right, updates with scroll as film frames
3. **Split hero type**: Line 1 solid fill, line 2 same scale as `webkit-text-stroke` outline
4. **Green ticker**: Full-width scrolling marquee on electric green — the only lit surface on the page
5. **Clip-path wipes**: Manifesto, showreel, contact each use a different reveal direction
6. **Chamfered buttons**: `clip-path: polygon()` cuts diagonal corners — engineered, not rounded
7. **SVG SMIL morphing**: At least one path morphing continuously via `<animate attributeName="d">`
8. **Scroll-driven entrance**: `animation-timeline: view()` for all section reveals — not IntersectionObserver

## What Success Looks Like
Feels like a motion reel you navigate by scrolling. The timecode ticking in amber makes you feel inside an edit suite. Section labels in green mono (`// 01 — Manifesto`) feel like film chapter markers. Someone asks "how was this built?" — not "which AI made this?"

Should NOT feel like a normal portfolio with CSS transitions, an agency site with a parallax hero, or any SaaS dark-mode template.
</design-system>

---

## Gotchas

1. **`animation-timeline` requires Chromium 115+** — Add an `@supports` fallback; for Firefox use IntersectionObserver entrance triggers as fallback.
2. **SMIL `<animate>` on `d` requires identical path command structure** — Same number and type of commands between morph keyframes or morphing breaks silently.
3. **`webkit-text-stroke` is prefixed** — Always pair with `color: transparent` on the same element or the text disappears in non-webkit browsers.
4. **Character stagger must be in HTML** — Individual `<span>` per character in the markup, not JS-injected, so text is accessible to screen readers.
5. **Dark sections only** — Never use a white or light-gray section. Use `oklch(0.06 0.025 270)` for variety — not a light break.
6. **Custom cursor breaks touch** — Check `window.matchMedia('(pointer: coarse)')` and disable custom cursor on touch devices.
7. **Animate only transform + opacity** — Never animate `width`, `height`, `padding`, `top`, or `left` — layout-triggering properties cause jank.
