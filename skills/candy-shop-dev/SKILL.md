# Candy Shop Dev — Design Skill

## Design Context

**Audience**: Early-career developers (students, junior engineers, bootcamp grads) who treat their portfolio as personal expression. They want to stand out on Twitter/TikTok, not blend into a sea of grey minimalism. They care about craft, open source, and having fun with code.

**Use cases**: Developer portfolios, personal sites, open-source project showcases, creative coding landing pages, tech-skill visualizations, side-project galleries.

**Brand personality**: Playful but technically credible. The candy metaphor (gumball machine, flavor wheel, wrapper textures) wraps real engineering work in joy. The ONE memorable thing: **your tech stack is candy in a gumball machine** — each skill is a labeled, colored sphere you can hover and inspect.

---

## Design Direction

**Tone**: Bubblegum energy. Bouncy, colorful, sweet — but built by someone who ships real software. Every candy-themed element frames actual content (GitHub stars, npm downloads, tech stacks). Remove the substance and it collapses; remove the candy and it becomes another boring portfolio.

**The one thing that must survive**: The gumball machine hero. A CSS dome filled with dynamically generated, multi-sized, multi-colored tech-label spheres with 3D inner shadow. Topped with a glass highlight, seated on a gradient base. This is the portfolio's identity.

**Typography trio**:
- `Bubblegum Sans` (cursive) — Logo, hero name, section titles, card titles. THE personality font. Never use for body text.
- `Nunito` (sans-serif, 400–800) — Body copy, descriptions, nav, buttons. Rounded enough to feel friendly, legible enough to read.
- `JetBrains Mono` (monospace, 400–500) — Tech pills, gumball labels, flavor wheel labels. Signals "developer."

**Five-flavor palette**: Pink (bubblegum), mint (spearmint), lemon (sour drop), grape (jawbreaker), blue raspberry (slushie). Every accent maps to a candy flavor. Cards use pastel tints of these at `oklch(0.93 0.06 hue)`.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/candy-shop-dev/raw/design-language`. Internalize the OKLCH color tokens (5 accent + 5 card-tint + 2 text + 1 bg), the three-font stack, the candy wrapper pattern system (stripes/dots/zigzag/checker/swirl), and the spring easing `cubic-bezier(0.34, 1.56, 0.64, 1)`.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/candy-shop-dev/raw/image-kit`. This design uses NO photography. All visual texture comes from CSS patterns, canvas graphics, dynamically generated DOM elements, and SVG icons. Do not introduce photos unless the brief demands them.

**Step 3 — Build**
- **Nav**: Sticky, frosted glass (`backdrop-filter: blur(16px)`), logo in Bubblegum Sans (pink), pill nav links that fill pink on hover with spring scale.
- **Hero**: Centered column — tagline → name (Bubblegum Sans, 5rem max) → subtitle → gumball machine (CSS dome with tech spheres, varying sizes 48–76px, all five colors) → CTA pill with rotating knob icon.
- **Projects**: Auto-fill grid (min 300px). Each card: pastel tint background, `border-radius: 32px`, candy wrapper pattern overlay (unique per card, 5–8% opacity `::before`), emoji flavor icon, Bubblegum Sans title, stat with colored dot, monospace tech pills.
- **Flavor Wheel**: Canvas-rendered 5-segment pie, each segment an accent hue. Tech labels along arcs, category names at inner radius. Center circle: "many flavors." Legend row below.
- **Bio**: Centered card (max 680px), decorative pseudo-element circles (lemon, mint), inline highlights with pastel tint backgrounds.
- **Links**: Centered pill row, each a different accent color, inline SVG icons.
- **Animations**: Floating ambient gumballs (fixed, blurred, 18–25s loops). Scroll reveal via IntersectionObserver. Card hover: translateY(-6px) + rotate(-0.5deg) + wiggle. Spring easing everywhere.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/candy-shop-dev/raw/anti-patterns` and verify:
1. Gumball machine reads as a gumball machine (dome + spheres + base)?
2. Each card has a unique candy wrapper pattern overlay?
3. Spring easing (`cubic-bezier(0.34, 1.56, 0.64, 1)`) on all hover states?
4. All five accent colors are represented (not just pink and purple)?
5. Three font voices are distinct (Bubblegum Sans / Nunito / JetBrains Mono)?
6. `@media(prefers-reduced-motion: reduce)` collapses animations?
7. No photography added unless brief explicitly requires it?

---

## Gotchas

1. **Childish not playful** — Candy metaphor must wrap real content (GitHub stars, tech names, project descriptions). Without substance, it reads as a game, not a portfolio.
2. **Full-saturation accent as card background** — Use `--card-*` tints (`oklch(0.93 0.06 hue)`), NOT the raw accents (`oklch(0.75 0.18 hue)`). Raw accents are for small elements only (pills, dots, gumballs).
3. **Missing pattern overlays** — Flat pastel cards look generic. Each card needs its unique `::before` CSS pattern at 5–8% opacity.
4. **Uniform gumballs** — Vary sizes (48–76px), use all five colors, include text labels. Same-size single-color circles = loading spinner.
5. **Linear easing** — This design uses spring overshoot on every hover. Standard `ease` or `ease-in-out` kills the bounce.
6. **Fourth font** — Three fonts only. Bubblegum Sans carries all the playfulness. Adding another display face creates visual noise.
7. **Dark mode by default** — This is a light-theme design. The warm pink-tinted `oklch(0.97 0.03 330)` background is the candy-shop atmosphere.
