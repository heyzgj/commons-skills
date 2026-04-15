---
name: meridian-essay
slug: meridian-essay
description: A long-form literary magazine essay page. One article, paper-and-ink typography, drop cap, roman numeral section breaks, inline figures, a floated pull quote, footnotes with real anchors, author bio. No hero image, no newsletter popup, no share bar — the page's only job is to make someone want to read the essay.
metadata: design-skill
---

# Meridian Essay — Literary Magazine Long-Form

<design-system>

## Identity
Meridian Essay is a single long-form essay page for a small independent literary magazine — the web equivalent of opening a quarterly to page 34. Warm paper background, warm near-black ink, one disciplined deep ink-blue accent, three typefaces (Fraunces display + Literata body + Archivo small sans), one measure (~68 characters per line). The title is the hero; there is no photograph above it. The prose carries the page. Everything on the page serves reading and nothing else — no newsletter popup, no social share bar, no reading progress indicator, no card grid. This is Harper's Magazine online meets Stripe Press book page meets The Paris Review. The reader arrived because someone told her to read this essay; the design gets out of the way and lets her read it.

## Product World
- **Who**: The reader who arrives from a newsletter, a Twitter link, a Hacker News thread, or a friend's text that says "you have to read this." They are 28–55, curious, literary-adjacent, and they came here TO READ. They resent dark patterns. They close tabs that have a newsletter popup before they've read two sentences. They subscribe to LRB, Paris Review, n+1, Aeon, Longreads. They still buy books. They've been burned by a decade of "long-form" blogs that were actually SEO content.
- **What**: A small independent literary magazine's web page for a single essay. Not a blog, not a content farm, not a Substack. A magazine. One article per page. Title, byline, ~4,000 words of prose, two or three inline photographs, footnotes, author bio, a short "also in this issue" list, and nothing else.
- **Vibe**: Harper's Magazine online meets Stripe Press book page. Aeon.co meets The Paris Review. The dignity of print translated to the web without flattening it into a blog.
- **Domain conventions**: Roman numeral section breaks without section titles. Drop caps on the first paragraph. First-line paragraph indents (book convention, not blog convention). Footnotes at the bottom with proper anchor links. Photographer credits in small caps under captions. Italic for book titles and periodicals. "By Author" byline, not "Author" avatar-card.

## Core Principle
**The page's only job is to make someone want to read 4,000 words — anything that is not in service of reading is a failure of the design.**

## Visual Vibe
Paper. Ink. Generous. Committed. Quiet. Authored. Print-literate. Unhurried. Confident. Serious-but-warm. No flash, no chrome, no conversion funnel — the reader is already here; don't sell her anything.

References: Harper's Magazine, The Paris Review, Aeon, The Atlantic long-form features, Stripe Press book pages, n+1 Magazine, Granta.

## Hard Constraints
- **Not a blog post**. No author avatar circle at the top. No "4 min read" badge next to a reaction count. No social share buttons floating on the left. No reading progress bar. No table of contents sidebar.
- **Not a Substack**. No newsletter popup. No subscribe box at the end. No "paid subscribers only" paywall tease. No "like" heart. No comments.
- **Not a SaaS landing page**. No hero image. No features. No pricing. No testimonials. No "trusted by" logos. No CTA. No footer link grid.
- **Not Medium**. No "clap" button. No giant author card at the bottom with a "Follow" button. No related-articles card grid with thumbnails.
- **Not a content farm**. No ads. No "you might also like" infinite scroll. No tags soup. No SEO kicker stuffed with keywords.
- **Not dark mode**. Paper is not black. Commit to one mode — warm off-white paper — and do not add a theme toggle.
- **Not animated prose**. Zero motion on the title, byline, or body. The only permitted motion is a 0.9s fade-in on inline figures (respecting `prefers-reduced-motion`).

## Section Archetypes
Product-native literary-magazine sections:
1. **Masthead** — tiny wordmark + 3-4 section links + issue number. Baseline-aligned, one row, gone before the reader notices it.
2. **Title block** — a kicker (section/department name in small caps), the title in large display serif, a subtitle in italic display serif, a byline line of tabular metadata (author · date · read time · issue). Vast whitespace above; a single hairline rule below.
3. **Prose column** — single column, ~68ch measure, body serif at 18–20px, first-line indents, drop cap on paragraph one.
4. **Section break** — centered roman numeral (II, III, IV, V) in italic display serif with a tiny "· · ·" glyph above. No heading text.
5. **Figure** — a single photograph, slightly wider than the text measure, italic caption, small-caps photographer credit.
6. **Pull quote** — display serif italic, floated into the right margin, accent color rule on the left.
7. **Footnotes** — numbered list at the bottom of the essay under a small sans-serif label, with proper `#fn-n` anchor links and back-arrows (↩).
8. **Author bio** — a short italic paragraph and small-caps links. No photo unless one is essential.
9. **Also in this issue** — a numbered list (01, 02, 03) of 2–3 other essay titles in italic display serif with author + date on the right. No cards, no thumbnails.
10. **Colophon** — single hairline + copyright + issue number + a small ornament glyph. That's the whole footer.

## Hero Archetype
**Typography-as-hero.** The title IS the hero. No image, no video, no data mock. Vast top whitespace, then a kicker in small-caps accent, then the title in massive display serif (Fraunces with the `opsz` axis cranked), then an italic subtitle, then a clean metadata byline. The reader's first interaction with the page is with the essay's title, not with a photograph. This is the print magazine convention and it exists because the essay is the product — the cover doesn't need to justify the essay, it needs to get out of the essay's way.

## Asset Direction
- **Photography**: Editorial stills, warm interior light, real objects with dust and wear. The photo is a visual pause in the text — it is evidence or atmosphere, not decoration. Two figures is enough; three is already too many. Never more than one photograph per section. Apply a subtle `saturate(0.88)` and very light `contrast(0.98) brightness(0.98)` to lean the photos toward "print reproduction" warmth without making them look filtered. Never full-bleed.
- **No stock photography**. No smiling people at laptops. No beige conference rooms. No empty streets at golden hour unless the essay is actually about empty streets at golden hour.
- **No video anywhere**. An essay page does not autoplay anything. The reader is reading. Motion in the peripheral vision is a hostile act.
- **No SVG illustration**. No vector spot art. No "editorial" icons.
- **No author avatar**. The byline is text.
- **Typography-as-art is the secondary visual**: the drop cap, the pull quote, the large display title, and the roman numerals are all doing visual work that on most sites would be delegated to photography.
- **Data-as-visual is not applicable**. This is prose. The numbers that appear in the essay (dates, figures, counts) should be set in tabular numbers and otherwise treated as text.

## Typography
- **Fraunces** (display serif, via Google Fonts, variable with `opsz` + optional `SOFT` axis) — the title, the pull quote, the roman numerals, the drop cap, the "also in this issue" titles, the italic magazine wordmark. Chosen because it has a real print-quality voice: its `opsz` axis lets the title feel like a 144pt poster cut and the pull quote feel like a 48pt magazine treatment, without swapping fonts. Its italic is gorgeously drawn.
- **Literata** (body serif, via Google Fonts, with `opsz`) — all body prose, captions, bio, footnotes. Chosen because TypeTogether designed it specifically for long-form reading on screen, with a generous x-height and open counters; it is not a re-hash of a print face. At 19px with 1.68 line-height and hyphenation enabled, it reads like a book.
- **Archivo** (sans-serif, via Google Fonts) — masthead nav, metadata, kickers, labels, captions' credit lines, "also in this issue" bylines. Chosen because it is a humanist sans with a slightly condensed rhythm that pairs well with Fraunces' soft display character. It never competes with the serifs; it recedes.
- **Permanently banned** (never use on this skill): Inter, Poppins, DM Sans, Roboto, Space Grotesk, Plus Jakarta Sans, Open Sans, Lato, Montserrat, Nunito, Raleway, Source Sans Pro, Noto Sans, Outfit, Manrope, Figtree.
- **Features**: `font-feature-settings: "liga", "kern", "dlig", "onum"` for the body; `font-variant-numeric: tabular-nums` on metadata; `font-variant-caps: all-small-caps` on the drop-cap first line and on the sans labels.

## Color
Warm off-white paper, warm near-black ink, one disciplined accent. No brand flash.
- `--paper: oklch(0.985 0.005 80)` — background. Warm off-white, very slight yellow hint. Semantic: "paper."
- `--ink: oklch(0.18 0.01 60)` — primary text. A warm near-black, never `#000`. Semantic: "ink."
- `--ink-soft: oklch(0.28 0.01 60)` — secondary prose (footnotes, bio, lead-ins).
- `--ink-muted: oklch(0.42 0.01 60)` — metadata, captions, sans labels.
- `--ink-light: oklch(0.58 0.008 60)` — tertiary, ornaments, numerals.
- `--rule: oklch(0.88 0.005 60)` — hairlines. Single consistent hairline weight across the whole page.
- `--paper-deep: oklch(0.965 0.008 75)` — available for figure plates or quiet panels (unused in the reference exhibit but defined).
- `--accent: oklch(0.38 0.14 260)` — the ONE accent. A deep ink blue — the word "meridian" points celestial/navigational, and blue is the traditional ink color on the cover of a quarterly. Used for: the kicker text and hairline, the pull quote's left rule and its curly-quote glyphs, the footnote reference numbers, the link underlines, the "The Author" kicker, and the "also in this issue" link hover. Nowhere else.
- Semantic tokens: `paper`, `ink`, `ink-soft`, `ink-muted`, `ink-light`, `rule`, `accent`. Not "primary/secondary/brand" — the literary magazine thinks in terms of paper and ink.

## Signature Moves
1. **No hero image, ever.** The title is the hero. There will be pressure from future generations to "add a feature image" — resist it. The typography has to carry the page.
2. **First-line paragraph indents**, not blank-line separation. This is a book convention. It signals "this is a long read, sit down" before the reader has processed the words.
3. **Drop cap on paragraph one with small-caps first line**. Two print conventions in the same paragraph; together they say "this is a magazine, not a blog."
4. **Roman numeral section breaks with no heading text**. The reader finds the break between ideas as a visual pause, not as a navigational affordance. There is no table of contents because the essay is not a product manual.
5. **Pull quote floats into the right margin** on wide screens (`float: right` with `shape-outside`), tucked outside the text column so the measure is never disrupted. On mobile it becomes a full-width block.
6. **Figures extend slightly beyond the text measure** (`--measure-wide` vs `--measure`) so they visually distinguish themselves from the prose without being full-bleed. Slight desaturation to lean toward "print reproduction" warmth.
7. **The footer is one hairline and three small lines of sans-caps**. No link grid, no sitemap, no "about/contact/privacy." The page's job ends when the essay ends.
8. **One accent color, applied in exactly seven places.** Kicker, footnote refs, link underlines, pull quote rule, pull quote glyphs, "The Author" label, link-hover color. Everywhere else is ink or paper.

## Anti-Patterns
Full list in `https://joincommons.cc/api/items/meridian-essay/raw/anti-patterns`. The worst ones to watch for:
- Hero image above the title (makes it a blog).
- Newsletter popup, subscribe box, or social share bar (reader came to read, not to be marketed to).
- Reading progress bar, sticky TOC, sidebar nav (the essay is not a productivity task).
- Card grid for "related articles" with thumbnails (destroys the typographic list pattern).
- Dark mode toggle (paper is not black — commit to warm off-white paper as the design).
- Any motion on the prose (scroll reveals, typewriter effects, parallax figures destroy the reading experience).
- Modals, sticky elements, exit-intent popups (all hostile interruptions).
- Section headings like "1. Introduction" (literary essays have breaks, not headings).
- SaaS page structure (hero → features → pricing → CTA) on a single-article page.

## Supporting Files
- `https://joincommons.cc/api/items/meridian-essay/raw/design-language` — complete visual system: color tokens, type scale, layout grid, spacing rhythm, motion rules, responsive breakpoints, cross-page guidance.
- `references/asset-direction.md` — photography rules, figure placement, why no video, typography-as-art pattern, verified starter assets with photographer credits.
- `https://joincommons.cc/api/items/meridian-essay/raw/anti-patterns` — the full list of structural, content, and UX traps specific to literary long-form pages.
- `assets/exhibit.html` — the reference implementation: a real ~4,000 word essay ("Children of the Last Boring Decade" by Maya Holt) rendered with every decision from this bundle.
- `assets/tokens.dtcg.json` — DTCG tokens for color, measure, spacing, typography, motion.
- `assets/design-skill.json` — V1 manifest for Commons discovery.

## Workflow
1. Read `https://joincommons.cc/api/items/meridian-essay/raw/design-language` for the full type scale, spacing rhythm, and layout grid.
2. Read `references/asset-direction.md` before touching any imagery — the asset rules are strict and specific.
3. Read `https://joincommons.cc/api/items/meridian-essay/raw/anti-patterns` before adding any new section or element.
4. Write the prose FIRST, in the author's voice, with real specificity. Filler prose is visible to any editor and is the fastest way to make the page look fake. Commit to the voice, the nouns, the cadence.
5. Only then build the layout around the prose.
6. Audit: remove anything on the page that does not serve reading.

## Gotchas
1. **Measure is sacred.** 68–72 characters per line. Longer and you lose the reader. Shorter and it looks like a mobile blog. Use `max-width: 38rem` or `65ch` and commit.
2. **Don't set body text smaller than 18px.** 19px is better. This page is for reading, not dashboards.
3. **Don't mix paragraph styles.** Pick first-line indent OR blank-line separation. Do not mix. This exhibit uses first-line indent because the essay runs long.
4. **The first paragraph after a section break is NOT indented** — publishing convention. The drop cap paragraph is also not indented.
5. **Footnote anchors must work without JavaScript.** Use `<sup id="fnref-n"><a href="#fn-n">n</a></sup>` in body and `<li id="fn-n">... <a href="#fnref-n">↩</a></li>` in the list. Let the browser scroll. Do not hijack with JS.
6. **No motion on the title or the prose.** A subtle fade-in on figures as they enter the viewport is the maximum allowable motion — everything else is distraction. Respect `prefers-reduced-motion: reduce`.
7. **Don't be tempted to add a reading progress bar, a social share strip, or a "highlight this paragraph" tool.** These are all features that a content-optimization consultant would add. They are the enemies of reading.
8. **The "also in this issue" list is not a related-articles grid.** No thumbnails. No cards. No descriptions. Just three titles with bylines, left-aligned, linked. If the pattern ever becomes a grid of cards, the page has lost.
9. **The footer is NOT a sitemap.** One hairline, copyright line, issue number, ornament glyph. Any attempt to add "About · Contact · Privacy · Newsletter · Submissions" is a violation of the brief.
10. **If you find yourself writing loading states, skeleton shimmers, or reveal animations for the prose — stop.** The prose is static text on a page. It loads instantly. That's the point.

</design-system>
