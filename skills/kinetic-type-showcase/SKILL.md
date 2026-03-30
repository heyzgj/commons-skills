# Kinetic Type Showcase — Design Skill

## Design Context

**Audience:** Motion graphics studios, type directors, brand animation agencies, kinetic design
showcases, title sequence reels.

**Use cases:** Studio portfolio sites, motion reel landing pages, type animation showcases,
award-reel microsites, agency "selected work" pages.

**Brand personality:** Authoritative, minimal-aggressive, darkroom-cool. The studio treats
typography as primary material — not decoration. Every element earns its place through movement
or intentional stillness.

---

## Design Direction

**Purpose:** A single-page studio identity that communicates craft through form. The exhibit IS
the portfolio: if the page feels kinetic, the pitch is made.

**Tone:** Maximum confidence at minimal noise. Nothing is decorative. Type is treated as image.
White space is heavy with intent.

**The ONE memorable thing:** A hero headline that is simultaneously three things — solid weight,
acid-yellow accent, and ghost outline stroke — demonstrating the studio's type range in a single
typographic composition. This three-treatment headline is the signature move.

**What makes it unforgettable:**
- Continuous marquee strips at different speeds create a sense of editorial momentum even on a
  static scroll position.
- The project list hover effect (entire row floods with `#DFE104` accent, text flips to dark)
  turns a boring table into a kinetic interaction.
- The manifesto section pairs display-scale outlined type with a quieter body copy column — an
  argument about motion made through static contrast.
- Grain texture overlay at 3.5% opacity adds film-era analog warmth to an otherwise cold digital
  typographic system.

**Reference sites to absorb:**
- https://www.themill.com — reel-first studio portfolio, bold nav
- https://www.hornet.com — type-heavy motion studio index
- https://www.buck.tv — color and type confidence at studio scale
- https://www.hellomonday.com — editorial layout precision

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/kinetic-type-showcase/raw/design-language` completely before writing any HTML. The color system,
typographic scale, spacing tokens, and interaction patterns are all specified there. Do not
substitute colors, do not add a second typeface.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/kinetic-type-showcase/raw/image-kit`. This design uses no photography — it is a pure CSS/SVG/JS
implementation. Do not add Unsplash images unless the brief explicitly calls for them.

**Step 3 — Build**
- Use Space Grotesk (300/400/500/600/700) from Google Fonts — the single typeface.
- All headlines must be `font-weight: 700`, `text-transform: uppercase`,
  `letter-spacing: -0.02em` to `-0.05em`.
- Three typographic treatments are always available: solid fill (`var(--fg)`),
  acid-yellow fill (`var(--accent)`), and outline stroke
  (`-webkit-text-stroke: 2px var(--fg); color: transparent`).
- Marquee strips use the CSS animation pattern from design-language.md. Always duplicate
  content for seamless loop (`el.innerHTML = html + html`).
- Scroll reveal: use IntersectionObserver with threshold 0.12, staggered via `.d1`–`.d4`
  delay classes (0.1s, 0.2s, 0.3s, 0.45s).
- Parallax hero: `translateY(y * 0.22px) scale(1 + progress * 0.07)`, fade out at 1.5×
  scroll progress.
- Grain texture: fixed `::before` pseudo-element with inline SVG feTurbulence, opacity 0.035.
- Always include `@media (prefers-reduced-motion: reduce)` — disable marquee, reveal, parallax.

**Step 4 — Self-critique gate**
Before finalising, read the exhibit back and answer:
1. Does the three-treatment hero headline appear (solid + accent + outline stroke)?
2. Do at least two marquee strips run at different speeds?
3. Does the project list row flood with accent color on hover, flipping text to dark?
4. Is the grain texture overlay present?
5. Is `prefers-reduced-motion` handled?
6. Is the entire page built with one typeface (Space Grotesk)?
If any answer is NO, fix it before shipping.

---

## Gotchas

1. **Second typeface creep.** Do not add a serif or mono font "for contrast." The entire
   design works because one geometric grotesque is used at varying weights and scales.

2. **Accent overuse.** `#DFE104` (acid yellow) is a shock color. Use it for: accent text in
   headlines, marquee separator dots, section labels, stat values, CTA buttons, and hover-state
   row fills — not as background tints or decorative blobs.

3. **Marquee content duplication.** The seamless loop requires the content be duplicated
   (`html + html`) and the animation to translate exactly `-50%`. Break either rule and the
   loop visibly resets.

4. **Outline text on dark backgrounds.** `-webkit-text-stroke` renders the stroke on the
   outside edge. At large sizes on `#09090B`, this reads well. At small sizes (<48px) it
   becomes illegible — don't use outline treatment below display scale.

5. **Row hover transition collision.** The project row uses both `background` and
   `padding-left` transitions. Adding additional `transition` declarations will override both
   — always append, never replace the transition shorthand.

6. **Grain z-index.** The texture overlay is `z-index: 9999`. Any element that needs to
   receive pointer events must be at a lower z-index — the overlay uses `pointer-events: none`
   to pass through clicks, but stacking context bugs can still trap interactions.

7. **Hero parallax and reduced-motion.** The scroll listener mutates `heroHl.style.transform`
   and `opacity` directly. Without the `prefers-reduced-motion` override, users with vestibular
   disorders will see unwanted motion. The `will-change: auto` reset must also be included.
