# Manifesto Serif — Design Skill

## Design Context

**Audience:** Design strategists, cultural critics, essayists, keynote speakers, independent consultants — anyone whose personal brand is built on intellectual conviction rather than visual portfolio.

**Use cases:** Personal brand sites for thought leaders, speaker landing pages, manifesto-style about pages, design philosophy showcases, writer/essayist homepages, conference speaker bios.

**Brand personality:** Confrontational authority. This page does not ask permission. It states a position, defends it, and moves on. The tone is a design strategist who has spent two decades in the field and is done being polite about bad practice.

---

## Design Direction

**Purpose:** Present a thought leader's declarations, credentials, and contact in a format that treats typography as architecture — each statement occupies a full viewport, forcing the reader to sit with it.

**Tone:** Intellectual aggression tempered by typographic elegance. Think the confidence of a Massimo Vignelli lecture delivered through the warmth of hand-set serif type.

**The ONE memorable thing:** Each manifesto declaration gets its own full-height viewport section. The page scrolls like turning pages of a broadside — one idea per wall. Combined with uppercase Yeseva One at 7.5rem and an 18-character line measure, text becomes spatial experience.

**What makes it unforgettable:** Radical chromatic restraint. Three colors total: pure black, pure white, and one blood-red heading (`oklch(0.5 0.25 25)`) that marks the single most provocative statement. No images, no icons, no decoration. Words stand alone.

**Reference sites:** pentagram.com/about (conviction-led bios), michaelbierut.com (speaker authority), frankchimero.com (essay-first personal site)

---

## Workflow

**Step 1 — Load the design language**
Read `https://joincommons.cc/api/items/manifesto-serif/raw/design-language` fully. Internalize the three-typeface system (Yeseva One display / Alegreya body / Alegreya Sans labels), the three-color palette (white, black, blood), the full-viewport declaration pattern, and all spacing tokens before writing any HTML.

**Step 2 — Load the image kit**
Read `https://joincommons.cc/api/items/manifesto-serif/raw/image-kit`. This exhibit uses no photography. If your specific content genuinely requires an image (e.g., speaker headshot), follow the black-and-white constraint and width rules in the kit. Do not add images speculatively.

**Step 3 — Build**
Implement the page following this section order:
1. **Hero** — full viewport, flex-end. Name in Yeseva One (uppercase, clamp to 10rem), subtitle in Alegreya Sans (uppercase, tracked), 60px accent rule.
2. **Declarations (3-7)** — each full viewport, flex-center. Heading in Yeseva One (uppercase, max-width 18ch). Body in Alegreya (max-width 52ch). ONE heading gets `color: var(--blood)`.
3. **Credentials** — talks, essays, press. Section label in Alegreya Sans (uppercase, tracked). Bordered vertical lists, single-column.
4. **Contact** — section label + email link with 3px black underline (fades on hover) + cities.
5. **Colophon** — compact footer, Alegreya Sans uppercase.

Apply scroll reveal via IntersectionObserver: all `[data-reveal]` elements start `opacity: 0; translateY(16-40px)`, receive `.visible` on intersection (threshold 0.15). Observer unobserves after trigger.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/manifesto-serif/raw/anti-patterns` and run the checklist:
- Only 3 colors used? (white, black, blood)
- Blood accent on exactly ONE heading — the most confrontational statement?
- Every declaration section is 100dvh?
- Three typeface registers correctly assigned? (display / body / label)
- No images, icons, gradients, shadows, rounded corners?
- Section labels all uppercase Alegreya Sans with 0.12em tracking?
- `prefers-reduced-motion` media query forces all reveals to visible?
- Contact email has 3px underline fading on hover?

---

## Gotchas

1. **Using blood-red more than once.** The accent works because it appears on a single heading. Use it twice and it becomes a theme color; three times and it is decoration. Pick the most provocative statement and commit.

2. **Shrinking declarations below viewport height.** Each declaration MUST be `min-height: 100dvh`. This is the core spatial concept — one idea per screen. Shorter sections collapse the manifesto into a blog post.

3. **Swapping typeface registers.** Yeseva One for display only, Alegreya for body only, Alegreya Sans for labels only. Using Alegreya for headings makes them feel like enlarged body copy. Using Yeseva One for body text makes it illegible.

4. **Adding a navigation bar.** This page has no nav. The experience is a linear scroll — top to bottom, like reading a printed manifesto. Adding a sticky nav or hamburger menu converts it into a conventional website.

5. **Removing the 18ch heading constraint.** `max-width: 18ch` on declaration headings forces dramatic line breaks that create visual rhythm. Without it, headings run to full width and lose all poster-like impact.

6. **Over-animating reveals.** Only `translateY` + `opacity`. Only `ease-out-expo` and `ease-out-quart`. No scale, no horizontal slide, no rotation. The content is the spectacle — animation should be invisible transport.

7. **Adding metadata colors.** No grey text. No muted tones. The three-color discipline means hierarchy comes from font family, weight, size, tracking, and text-transform — never from additional colors.
