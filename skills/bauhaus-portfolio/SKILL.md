# Bauhaus Portfolio — Design Skill

## Design Context

**Target audience:** Senior graphic designers, art directors, and studios presenting a body of work rooted in modernist tradition. Clients are cultural institutions, Swiss/European corporates, architecture firms, and editorial publishers.

**Use cases:** Personal portfolio site, studio landing page, design practice showcase, creative agency front page.

**Brand personality:** Uncompromising. Intellectual. Structural. Every element earns its place — no decoration for decoration's sake. The voice is confident and terse, like a manifesto.

---

## Design Direction

**Purpose:** A portfolio that IS the argument for the designer's craft. The layout itself demonstrates mastery of grid, hierarchy, and geometric composition.

**Tone:** EXTREME geometric authority. Think Bauhaus Dessau 1925. Not "inspired by Bauhaus" — it IS Bauhaus thinking applied to a digital canvas.

**The ONE memorable thing:** A primary triad palette (red / blue / yellow / near-black) wielded with Mondrian-like precision. Each color has a job: red = energy/tension, blue = depth/intellect, yellow = highlight/accent, ink = structure.

**What makes it unforgettable:** The hero's geometric composition — a large blue circle bleeds off-screen right, a red triangle overlaps it, a yellow square straddles the hero/marquee section boundary at z-index 20. This cross-boundary overlap creates spatial depth without shadows.

**References:**
- Bauhaus Archiv Berlin: bauhauskooperation.de
- Massimo Vignelli's Unimark identity work
- Josef Müller-Brockmann grid systems
- Swiss International Style (Neue Grafik)

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/bauhaus-portfolio/raw/design-language` fully. Commit the token values, grid logic, and component rules to working memory before writing a single line of HTML.

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/bauhaus-portfolio/raw/image-kit`. This exhibit uses **no photography** — pure CSS and SVG geometry. Do not reach for Unsplash. All visual interest comes from shape, color block, and typography.

### Step 3 — Build
Apply the design language exactly:
- Set CSS custom properties from the token set
- Construct the hero geometric composition (circle + triangle + square, each positioned and z-indexed as specified)
- Use the 4px border rule for all structural dividers
- Apply the hard box-shadow offset pattern (`6px 6px 0 var(--ink)`) for interactive cards
- Use `font-weight: 900` / `text-transform: uppercase` / tight `letter-spacing: -0.03em` for all display headings
- Use `clamp()` for fluid heading sizes — never fixed px for display type
- Use the `shapeIn` + `slideRight` CSS animations for hero geometry load
- Use IntersectionObserver scroll-reveal (`.reveal` / `.in`) for all below-fold content

### Step 4 — Self-Critique
Before finalising, read back your output and check:
- Does the palette stay within the 5 variables (`--canvas`, `--ink`, `--red`, `--blue`, `--yellow`)? No additional colors allowed.
- Are section dividers consistently 4px solid `var(--ink)`?
- Does the marquee strip use `var(--ink)` background with `var(--canvas)` text and `var(--red)` separators?
- Does the projects grid use the asymmetric 6-column span pattern (4+2 / 2+4 / 3+3)?
- Are all CTAs / interactive elements using the hard offset box-shadow hover pattern?
- Is there any photography, gradients, border-radius on non-circular elements, or drop shadows? Remove all of these.

---

## Gotchas

1. **No gradients, ever.** Bauhaus form is flat. A gradient is a failure. Even subtle `background: linear-gradient(...)` breaks the movement's core principle.

2. **Box-shadow must be hard offset, not blurred.** `box-shadow: 6px 6px 0 var(--ink)` — the `0` blur is non-negotiable. Soft shadows = wrong era, wrong aesthetic.

3. **The yellow square straddles section boundaries.** It has `bottom: -54px` and `z-index: 20` so it floats above the marquee strip (`z-index: 5`). If you correct this to stay within the hero, you destroy the spatial tension.

4. **Text-stroke on stroke headings, not outline.** Use `-webkit-text-stroke: 3px var(--ink)` with `color: transparent` for outlined display type. CSS `outline` does not apply to text.

5. **Marquee requires duplicate content for seamless looping.** The `.marquee-track` must contain the full word list twice (8 items × 2 = 16 nodes). `translateX(-50%)` moves the track back to start, creating the loop. Missing the duplicate = visible jump.

6. **The disciplines list hover uses a color accent bar via `::after`.** Each `disc-row` gets a unique color via `.dr-brand::after { background: var(--red); }` etc. The bar width animates from `0` to `7px` on hover. Do not replace this with a left-border — the bar is a pseudo-element overlay so hover background inversion still works cleanly.

7. **No border-radius on cards or buttons.** The only rounded elements are the decorative circles (geometric shapes) and the circular arrow button on project cards. Rounded corners on cards or CTAs breaks the structural language.

8. **Font is Outfit (900 weight) — not Inter, not Helvetica Neue.** The geometric sans character of Outfit at weight 900 matches the movement's industrial typeface sensibility. Substituting Inter produces a tech-product feel that undercuts the Bauhaus positioning.
