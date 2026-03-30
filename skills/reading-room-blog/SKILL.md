# Reading Room Blog — Design Skill

## Design Context

**Audience:** Solo authors, literary critics, academics, essayists, book reviewers — anyone publishing long-form writing under their own name.

**Use cases:** Personal essay blogs, literary criticism sites, academic writing portfolios, book review columns, reading journals, professor/author homepages.

**Brand personality:** Scholarly warmth. This is a professor's study rendered as a website — erudite but inviting, rigorous but never cold. The tone says "I have strong opinions about sentences and I will share them at length." Think a private library with a banker's lamp, not a lecture hall.

---

## Design Direction

**Purpose:** Present long-form essays and literary criticism with maximum readability and personal authority, framed by a "currently reading" sidebar and a deep archive.

**Tone extreme:** Oxbridge don meets personal blog — warm paper textures, footnotes with flash-highlight on click, a reading progress bar, italic book titles in a sidebar. Unhurried, bookish, particular.

**The ONE memorable thing:** The three-typeface hierarchy — Merriweather (serif) for all reading content, Source Sans 3 for structural labels, Source Code Pro (mono) for metadata. Every element on the page belongs to exactly one register. The warm OKLCH palette (all hues 50-78) ensures nothing feels clinical.

**What makes it unforgettable:** The footnote interaction (superscript click → smooth scroll → amber flash highlight), the essay hover bar (3px accent line growing from the left), the paper grain texture (SVG noise at 2.5% opacity), and the banker's lamp SVG icon. No photography. The essay title IS the hero.

**Reference sites:** lrb.co.uk, theparisreview.org, granta.com, nplusonemag.com, craigmod.com

---

## Workflow

**Step 1 — Load the design language**
Read `https://joincommons.cc/api/items/reading-room-blog/raw/design-language` fully. Internalize the OKLCH color tokens (all warm-tinted, hue axis 50-78), the three-typeface system, the 36 em reading column + 14rem sticky sidebar grid, and the entrance animation system before writing any HTML.

**Step 2 — Load the image kit**
Read `https://joincommons.cc/api/items/reading-room-blog/raw/image-kit`. This exhibit uses no photography. All visual warmth comes from the OKLCH palette, the paper grain SVG overlay, and the banker's lamp icon. Do not add images unless the content genuinely requires them (e.g., author portrait in the about section).

**Step 3 — Build**
Implement following the component order: reading progress bar → header (lamp + name + role) → nav (centered links, underline active) → 3-column grid (gutter / reading column / sidebar) → featured essay with footnotes → essay list → archive → about section → footer. Apply `fadeInUp` entrance animations with staggered delays and IntersectionObserver reveals for scroll-triggered elements.

**Step 4 — Self-critique**
Read the page back and check against `https://joincommons.cc/api/items/reading-room-blog/raw/anti-patterns`:
- Does every label use Source Sans 3 + uppercase + tracked spacing?
- Does every prose block use Merriweather weight 300 at line-height 1.85?
- Is Source Code Pro used for ALL numeric metadata (dates, read times, percentages)?
- Is the accent color limited to small editorial marks (never backgrounds or large text)?
- Is the reading column constrained to 36 em max-width?
- Is the paper grain SVG overlay present on the body?
- Are footnotes interactive (scroll + flash-highlight)?

---

## Gotchas

1. **No hero images.** The essay title, date line, and opening paragraph are the visual hierarchy. A hero image competes with the text and breaks the scholarly tone. The banker's lamp SVG is the only visual element above the fold.

2. **Three registers, no mixing.** Merriweather = reading. Source Sans 3 = structure/labels. Source Code Pro = metadata/numbers. Using serif for labels or sans for prose destroys the system. Check every element.

3. **Accent is an editorial mark, not a brand color.** The amber accent (`oklch(0.6 0.14 65)`) appears only in: featured labels, footnote refs, progress bars, hover states, sidebar underline. Never as a background fill or large heading color.

4. **The reading column is sacred.** 36 em max-width for all essay content. No full-width sections, no edge-to-edge text. The sidebar (14rem) lives in its own grid column and collapses above the reading column on tablet.

5. **Warm everything.** Every color sits on hue axis 50-78. No cool grays, no pure whites, no blue-tinted shadows. Even the borders are warm: `oklch(0.85 0.03 75)`. Using any cool tone will kill the library warmth.

6. **Footnotes are not optional.** The superscript-click-scroll-flash pattern is a signature interaction. At least one essay must include footnotes with the full behavior: mono-styled refs, smooth scroll to note, amber background flash for 1.2s, fade back.

7. **Paper grain texture matters.** The `body::before` SVG fractalNoise overlay at 2.5% opacity gives the page its tactile quality. Without it, the design flattens to a generic light blog. Always include it.
