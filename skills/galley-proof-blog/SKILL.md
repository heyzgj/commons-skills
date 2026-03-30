---
name: galley-proof-blog
description: A literary blog presented as an editor's galley proof — visible red-ink corrections, margin annotations in handwriting, line-numbered double-spaced prose, draft numbers, and a faint PROOF watermark. Built on Bitter / Lora / Caveat / IBM Plex Mono with a warm paper background and a single red accent.
metadata: design-skill
---

# Galley Proof Blog

## What This Skill Does

Routes a galley-proof editorial metaphor into a literary essay blog. Every essay is presented as a manuscript in progress — visible red-ink corrections (strikethrough with replacement, stacked corrections, caret insertions), margin annotations in Caveat handwriting, line numbers, draft numbers, proof headers, and a faint diagonal PROOF watermark. The four-font system (Bitter display, Lora body, Caveat annotations, IBM Plex Mono metadata) and two-hue palette (warm paper + editor's red) create a blog that looks like it was pulled off a Brooklyn editor's desk.

## When to use

- Literary essay blogs, criticism sites, and editor portfolios
- Writing-about-writing platforms where the editorial process is the content
- Author draft collections or book review journals
- Any long-form prose site where visible revision and intellectual rigor are the brand

## When not to use

- Photography portfolios or image-heavy sites — this system uses no photography
- SaaS dashboards or data-dense interfaces — the layout is a single-column proof sheet
- E-commerce or product pages — no cards, grids, or CTAs
- Anything requiring a polished, "finished" feel — the whole point is visible imperfection

## Default Workflow

1. Read this `SKILL.md` first to decide whether the galley-proof metaphor fits the product.
2. Read `https://joincommons.cc/api/items/galley-proof-blog/raw/design-language` for the full design language — color tokens, typography rules, red ink system, layout patterns, motion, and accessibility.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` for the most truthful proof of the system under real content pressure.
5. Read `https://joincommons.cc/api/items/galley-proof-blog/raw/anti-patterns` before self-critique to catch topic-specific traps.

## Supporting Files

- `https://joincommons.cc/api/items/galley-proof-blog/raw/design-language`: canonical design language — OKLCH two-hue palette, four-font system, red ink correction patterns, layout rules, motion, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font families, sizes, line-heights, letter-spacing, spacing, borders, transitions, and animations.
- `exhibit.html`: full proof-of-concept — six literary essays with varying correction density, margin annotations, footnotes with editorial asides, about section, and colophon.
- `https://joincommons.cc/api/items/galley-proof-blog/raw/design-language`: extended design system reference with all OKLCH values, type scale, layout patterns, and signature moves.
- `https://joincommons.cc/api/items/galley-proof-blog/raw/image-kit`: image guidance (this skill uses zero photography — all visual interest from the red ink system and typography).
- `https://joincommons.cc/api/items/galley-proof-blog/raw/anti-patterns`: eight topic-specific traps, universal AI slop checklist, and five-question self-critique protocol.

## Output Expectations

- Produce a single-column, single-page HTML document with the galley-proof framing (watermark, margin line, proof headers, draft numbers).
- Include at least 4 of the red ink correction types: strikethrough-with-replacement, stacked correction, caret insertion, margin note, highlight, dele mark, stet mark.
- Use double-spaced prose (`line-height: 2.0`) and line numbers for full essay views.
- Include responsive behavior (margin notes collapse inline below 900px, base font reduces at 600px).
- Include `prefers-reduced-motion: reduce` support for all animations.

## Reuse and Adaptation Guidance

- Keep these traits stable: Bitter + Lora + Caveat + IBM Plex Mono only. Warm paper `oklch(0.98 0.005 90)` + red `oklch(0.55 0.22 25)`. Double-spaced body prose. PROOF watermark. Fixed margin line. No photography.
- Safe variation knobs: essay subjects, correction density per piece, number of essays, margin note voice/content, footnote length, draft numbers, masthead title.
- Vary correction density to match editorial state — final drafts have fewer marks, early drafts are saturated.

## Non-negotiables

- Every correction must demonstrate editorial judgment — stronger verbs, tighter phrasing, meaningful word choices. Never decorative rewording.
- Caveat (handwritten font) appears ONLY in annotation contexts — margin notes, stacked corrections above struck text, caret insertions. Never in headings or body prose.
- The proof-sheet institutional framing is mandatory: draft numbers, dates, proof headers, "Not for Distribution" marks.
- Double-spaced body prose (`line-height: 2.0`) is structural, not optional. It mimics manuscript preparation format.
- Background is warm `oklch(0.98 0.005 90)`, never pure white.

## Common Failure Modes

- Making corrections decorative rather than meaningful — "said" to "stated" adds nothing. "removed" to "hunted" shows intent.
- Uniform correction density across all sections — vary it (a final draft has almost no red ink; an early draft is saturated).
- Using Caveat for headings, body text, or UI labels — it is the editor's pen on typed text, nothing else.
- Forgetting the proof-sheet framing (draft numbers, dates, watermark, margin line) — without it, the design is just a blog with red text.
- Margin notes that sound like UI copy ("Click to read more") instead of editorial self-talk ("This metaphor is doing heavy lifting").
- Pure white background — kills the paper warmth that makes red ink feel literary rather than clinical.
- Tightening line-height below 2.0 — loses the galley proof manuscript feel entirely.
