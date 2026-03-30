# Monolith Architecture — Design Skill

## Design Context

**Audience:** High-end architecture studios, structural engineering firms, brutalist/minimalist interior design practices, premium built-environment consultancies.

**Use cases:** Portfolio sites, project showcases, studio identity pages, awards/recognition pages, process documentation, project detail spreads.

**Brand personality:** Severe restraint, material honesty, structural silence. Every element earns its presence. White space is not absence — it is architecture. The brand voice is spare, declarative, and unhurried.

---

## Design Direction

**Purpose:** Present an architecture studio's work with the same discipline the work itself demands. The page IS the architecture.

**Tone:** Monument-weight gravitas. No ornament. No gradient. No shadow. Border rules ARE the decoration.

**The ONE memorable thing:** A pure black-and-white world punctuated by a single moment of color — when the user hovers a grayscale project image, it reveals full color. This single reveal is the entire emotional range of the design.

**What makes it unforgettable:** The hero wordmark — 160px, weight 900, line-height 0.85, kerned at -0.04em — clips in from the right on load. The 8px solid black horizontal rule expands from left. Everything else fades in last. The sequence is cinematic without being dramatic.

**References:** tadao-ando.com, snohetta.com, kengoKuma.a-nd.jp, alvaro-siza.com — all share this vocabulary of heavy rules, mono labels, and editorial grid control.

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/monolith-architecture/raw/design-language` completely before writing any markup. Internalize the color tokens, font stack, border system, and section anatomy.

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/monolith-architecture/raw/image-kit`. Use only the pre-verified Unsplash URLs listed there. Apply `filter: grayscale(1)` to all images by default; remove on hover. Never invent Unsplash IDs.

### Step 3 — Build
- Start with the CSS custom properties block (`:root`) and full reset
- Apply paper noise (`body::before`) and horizontal line texture (`body::after`) at fixed position, pointer-events none, opacity ≤ 0.025
- Build nav: mono font, 9–10px, 0.1–0.14em letter-spacing, all-caps, 60px height, 1px black border-bottom
- Build hero: 44/56 grid split, type column left (wordmark + 8px rule + mono sub), full-bleed image right with grayscale
- Separate sections with `.rule-ultra` (8px), `.rule-thick` (4px), `.rule-medium` (2px) dividers
- Inverted awards section: `background: var(--black)`, all text white, borders at `rgba(255,255,255,0.08–0.12)`
- Process steps: 5-column grid, hover inverts cell to black + white text, `→` connector between cells
- Philosophy section: `background: var(--muted)` (#F5F5F5), 40×40px grid pattern, centered blockquote in Playfair Display italic
- Footer: 8px rule top + 1px hair border, brand name at 40px Playfair 900, mono address block right-aligned

### Step 4 — Self-critique gate
Before finalising, read back the complete output and answer:
1. Does any element use color other than black, white, or #F5F5F5/#525252? (If yes: remove it)
2. Is the hero wordmark at least 120px? (If no: increase it)
3. Does hover on every project card invert to black background with white text AND reveal color on the image? (If no: fix it)
4. Are all border widths using the defined system (1/2/4/8px)? No `border-radius` on any structural element?
5. Is the `revealWordmark` clip-path animation present and timed to 1s cubic-bezier(0.16, 1, 0.3, 1)?
6. Does the page feel like it could be printed in a monograph without changing a single value?

---

## Gotchas

1. **Never use color outside the palette.** No brand accent colors, no blue links, no red errors. The only color that appears is the revealed photography on hover. This is non-negotiable.

2. **Border-radius = zero.** Every card, button, image, table, and container is hard-cornered. A single `border-radius` anywhere breaks the monolithic weight.

3. **Font convergence trap.** Do not substitute Playfair Display with Georgia raw or Lato or Inter. Source Serif 4 is the body font, not a serif default. JetBrains Mono is the label/UI font — do not use system monospace.

4. **Grayscale images are not optional.** All images load grayscale (`filter: grayscale(1)`). The hover color-reveal is the designed interaction. If you omit grayscale you destroy the restraint of the entire page.

5. **The 8px rule is structural, not decorative.** The `hero-rule` divider inside the hero, the `footer-rule`, and `.rule-ultra` between sections all use 8px `background: var(--black)` — not a border. Using `border-bottom: 8px` behaves differently in flex/grid contexts.

6. **Paper texture must be subtle.** `body::before` opacity must be ≤ 0.025 and `body::after` (line texture) ≤ 0.02. Higher values turn the page grey and ruin the pure white background.

7. **The inverted section stays fully black.** The awards/recognition section uses `background: var(--black)`. Do not soften it with dark greys (#111, #1a1a1a). Full black (#000000) is correct.

8. **Scroll-reveal stagger must be capped.** The IntersectionObserver stagger delay should cap at 320ms. Uncapped stagger on long lists causes the last items to animate minutes after scroll — it reads as broken.
