# Lumi Visual Prompt — Design Skill

## Design Context

**Target audience:** Developer tool makers, indie hackers shipping browser extensions, and SaaS founders building developer-facing products. Buyers are technical — they read code, they notice grid alignment, and they distrust anything that looks like a marketing template.

**Use cases:** Browser extension product page, developer tool landing page, CLI tool homepage, developer-facing SaaS marketing site, API documentation landing.

**Brand personality:** Technical but approachable. The voice sounds like a senior engineer who also cares about typography. Confident, concise, zero fluff. Every element could be a code comment — functional, intentional, earned.

---

## Design Direction

**Purpose:** A product page that demonstrates the product's precision through its own construction. The page itself IS the proof that this team sweats the details.

**Tone:** EXTREME technical minimalism. Think engineering notebook meets Swiss poster. Not "developer chic" — it IS a developer's artifact rendered as a webpage.

**The ONE memorable thing:** The 40px engineering grid visible through the entire page background, combined with hard offset black shadows on every interactive element. The grid is the skeleton; the shadows are the depth. Together they create a feeling of precision-built machinery.

**What makes it unforgettable:** Monospace everything. JetBrains Mono at every scale — hero headlines, body copy, navigation, terminal blocks. Combined with cream background and zero rounded corners, it reads as a technical document that happens to be beautiful.

**References:**
- Linear.app: developer tool precision, restrained palette
- Raycast.com: terminal-native aesthetic, monospace authority
- Warp.dev: developer tool with strong typographic identity
- Vercel.com: clean grid, black/white authority with accent color

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/lumi-visual-prompt/raw/design-language` fully. Commit every token value, the grid overlay technique, shadow scale, and component rules before writing any markup.

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/lumi-visual-prompt/raw/image-kit`. This exhibit uses CSS + SVG only. No photography. All visual interest comes from the grid overlay, terminal mockups, annotation boxes, and diff views — all constructed in CSS.

### Step 3 — Build
Apply the design language exactly:
- Set CSS custom properties from the token set (cream, blue, black, white, gray scale)
- Apply the 40px grid background overlay on `body` using two `linear-gradient` rules at `rgba(0,0,0,0.06)`
- Use `font-family: 'JetBrains Mono', monospace` on everything — no secondary font
- Use `max-width: 1100px; margin: 0 auto` for all content containers
- Apply `border: 2px solid var(--black)` on all component boundaries — no 1px borders
- Apply hard offset `box-shadow` from the shadow scale (4px/8px/12px) — zero blur always
- Use zero rounded corners everywhere — `border-radius: 0` except tiny `2px` on inputs if needed
- Build the terminal preview with traffic-light dots, monospace code lines, and `#1E1E1E` background
- Build feature visuals as CSS constructions: annotation boxes with blue highlight, diff views with green/red lines, export blocks with labeled sections
- Use `fadeInUp` animation with staggered delays (0.1s increments) for above-fold elements
- Use `letter-spacing: -0.03em` to `-0.04em` on all headings — tight tracking is mandatory
- Use `font-weight: 800` for display headings, `700` for labels, `400` for body
- Build the dark agents section with `background: var(--black)` and `1px solid rgba(255,255,255,0.1)` cell borders

### Step 4 — Self-Critique
Before finalising, read back your output and check:
- Is JetBrains Mono the only font loaded and used? No Inter, no system-ui for visible text.
- Are all shadows hard offset (zero blur)? Search for `blur` in box-shadow values.
- Is the 40px grid visible on the page background?
- Are all structural borders exactly `2px solid var(--black)`?
- Are there any `border-radius` values greater than `2px`? Remove them.
- Does the terminal block use the exact VS Code dark palette (`#1E1E1E` bg, `#22C55E` prompt, `#569CD6` flags, `#CE9178` strings)?
- Are feature rows using `grid-template-columns: 1fr 1fr` with `64px` gap?
- Is there any photography, gradient, or blurred shadow? Remove all of these.
- Does the page use `--cream` (#FBF9F1) background, not white?

---

## Gotchas

1. **JetBrains Mono for everything, no exceptions.** If you swap headings to Inter or a geometric sans because it "looks cleaner at large sizes," you destroy the technical identity. The monospace letterforms at 4rem+ ARE the aesthetic. Load weights 300-800.

2. **Shadows are hard offset with zero blur.** `box-shadow: 8px 8px 0px 0px #000` — the `0px` blur is structural. Soft shadows (`0 8px 24px rgba(...)`) make this look like a generic SaaS template from 2021.

3. **The grid background is load-bearing.** The 40px grid overlay (`linear-gradient` at `rgba(0,0,0,0.06)`) visible on the cream background is not decoration — it establishes the engineering-notebook metaphor. Removing it makes the page feel empty rather than minimal.

4. **No rounded corners beyond 2px.** `border-radius: 0` on all cards, buttons, and containers. The only exception is `rounded-sm` (2px) if absolutely needed on small input fields. Anything above 4px breaks the technical register.

5. **Feature visuals are CSS constructions, not illustrations.** The annotation overlay, diff view, and export blocks are built with borders, backgrounds, and monospace text. Do not replace them with SVG illustrations or screenshots — the code-constructed nature IS the point.

6. **Cream background is not white.** `#FBF9F1` is warm cream. Pure `#FFFFFF` is used only for card surfaces and input backgrounds to create layering against the cream. If you set the body to white, you lose the paper-like warmth.

7. **The blue accent (#3B82F6) is Tailwind blue-500.** This is deliberate — it signals "developer ecosystem" without explanation. Do not shift it warmer (violet) or cooler (cyan). One accent color, used for interactive highlights and the hero keyword.

8. **Navigation is translucent cream with backdrop blur.** `rgba(251,249,241,0.85)` plus `backdrop-filter: blur(8px)`. If you make it solid, the grid pattern disappearing behind the nav creates a visible seam. The translucency lets the grid bleed through.
