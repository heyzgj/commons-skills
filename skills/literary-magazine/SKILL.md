# Literary Magazine — Design Skill

## Design Context

**Audience:** Independent literary journals, essay publications, poetry platforms, fiction archives, cultural reviews.

**Use cases:** Online literary magazines, single-issue digital publications, author portfolio sites, reading-focused editorial platforms, subscriber newsletters rendered as web pages.

**Brand personality:** Quiet authority. This is a publication that trusts its readers. No tricks, no noise — just meticulous typographic craft in service of serious writing. The tone is warm but unhurried, like a well-lit reading room.

---

## Design Direction

**Purpose:** Present long-form literary content (essays, poetry, fiction) with maximum readability and editorial dignity.

**Tone:** Literary gravitas softened by warmth. Think *Granta* or *n+1* rendered for the web — not academic coldness, not tech-magazine slickness.

**The ONE memorable thing:** The interplay of three typeface roles — Playfair Display for headlines/display (serif authority), Source Sans 3 for body prose (humanist clarity), IBM Plex Mono for labels/metadata (editorial precision). Every element on the page belongs to one of these three registers. Never mix them up.

**What makes it unforgettable:** Restraint. No hero images, no decorative illustrations. The warm off-white paper background (`#FAFAF8`), the dark gold accent (`#B8860B`), and a precise typographic hierarchy do all the work. The drop cap, the asterism divider (`* * *`), the short accent rule above poem titles — these are the micro-moments that signal craft.

**Reference publications:** granta.com, nplusonemag.com, tinhouse.com, theparisreview.org, kenyon review, ploughshares.org

---

## Workflow

**Step 1 — Load the design language**
Read `https://joincommons.cc/api/items/literary-magazine/raw/design-language` fully. Internalize the three-typeface system, the color token set, the component hierarchy (masthead → TOC → section → prose → pull-quote → asterism), and all spacing rules before writing a single line of HTML.

**Step 2 — Load the image kit**
Read `https://joincommons.cc/api/items/literary-magazine/raw/image-kit`. This exhibit uses no photography — all visual interest comes from typography and spacing. If your content genuinely requires imagery (author portraits, cover art), use the verified Unsplash patterns in the image kit. Do not add images speculatively.

**Step 3 — Build**
Implement the full page following the component order: sticky nav → masthead → table of contents → content sections → subscribe band → footer. Apply scroll-reveal (`.reveal` / `.visible`) to major blocks using IntersectionObserver. Respect the reading width constraint (`max-width: 38em`) for all prose content.

**Step 4 — Self-critique**
Before delivering, read the page back and run the AI slop test:
- Does every label use IBM Plex Mono + uppercase + tracked spacing?
- Does every headline use Playfair Display?
- Does every prose block use Source Sans 3 at line-height 1.82?
- Is the accent color `#B8860B` used only for: accent rules, drop cap, `label--accent`, section type tags, hover states?
- Are there any decorative elements not present in the original exhibit (gradients, shadows heavier than `0 2px 18px rgba(26,26,26,0.07)`, icons, imagery)?
- Does the prose section use `.reading` (max-width 38em) for all body text?

---

## Gotchas — 5 Failure Modes to Avoid

1. **Wrong font for the context.** Using Playfair Display for body prose makes it unreadable at length. Using Source Sans 3 for a headline loses all editorial weight. Using body font for labels destroys the metadata hierarchy. Each of the three fonts has exactly one role.

2. **Over-decorating the accent.** `#B8860B` (dark gold) should feel like a quiet editorial mark — a thin rule, a tiny label, a drop cap initial. Using it as a background fill, a large colored block, or heavy border makes it garish. It must remain subtle.

3. **Ignoring the reading width.** All prose, pull quotes, and section headers must be constrained to `max-width: 38em` via the `.reading` class. Full-width prose text produces exhausting line lengths that break the literary feel entirely.

4. **Skipping the three-tier label system.** Every metadata element (section type, author byline meta, nav links, contributor role, back-issue number) must use `font-family: var(--font-mono); font-size: ~0.65rem; letter-spacing: 0.14–0.22em; text-transform: uppercase`. Failing this makes the page look like a generic blog.

5. **Missing the micro-typographic moments.** The drop cap (`.prose--drop::first-letter`), the short accent rule above poem titles (28px wide, `border-top: 1px solid var(--accent)`), the asterism (`* * *` or `⁂`) as section break, the centered pull-quote with top/bottom border — these are the details that separate a literary magazine from ordinary editorial HTML. Include at least three of these in any build.

6. **Losing the paper warmth.** The background is `#FAFAF8`, not pure white `#FFFFFF`. Card backgrounds are `#FFFFFF`. The muted background (subscribe band, code blocks) is `#F5F3F0`. Using pure white everywhere flattens the layering and kills the "aged paper" warmth.

7. **Scroll reveal without graceful fallback.** Every `.reveal` element starts at `opacity: 0; transform: translateY(14px)`. If JavaScript is disabled or slow, nothing appears. Always ensure the IntersectionObserver script fires early, and consider adding a CSS fallback (e.g., `@media (prefers-reduced-motion: reduce)` that sets `.reveal { opacity: 1; transform: none }`).
