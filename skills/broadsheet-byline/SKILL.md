# Broadsheet Byline — Design Skill

## Design Context

**Audience:** Independent journalists, investigative reporters, longform writers, editorial freelancers, press-focused personal brands.

**Use cases:** Journalist portfolio sites, investigative reporting hubs, independent news desks, longform essay collections, editorial personal websites.

**Brand personality:** Authoritative stillness. This is a newspaper front page rendered as a website — ink on paper, column rules between stories, a masthead that announces the publication, bylines in small-caps. The tone is serious, unhurried, and deliberate. Every pixel says: the work speaks for itself.

---

## Design Direction

**Purpose:** Present investigative journalism and longform editorial work in a format that evokes a physical broadsheet newspaper — multi-column layouts, ruled dividers, typographic hierarchy that signals story importance.

**Tone:** Print-era gravitas. Think the front page of a broadsheet like The Guardian or The Washington Post, stripped to its structural essence — no ads, no sidebar clutter, just stories ranked by importance through headline scale and page position.

**The ONE memorable thing:** The four-typeface newspaper system — Noto Serif Display for headlines (editorial weight), Source Serif 4 for body text (justified, hyphenated reading), IBM Plex Sans for section headers and labels (institutional precision), JetBrains Mono for datelines and metadata (technical authority). Every element belongs to exactly one register.

**What makes it unforgettable:** It genuinely looks like a newspaper. The double-rule top border, edition bar with volume/number, multi-column story grids with column rules, drop cap on the lead story, bylines in all-small-caps, jump lines, a fold indicator — these are all physical newspaper conventions faithfully translated to the web. No other web design looks like this.

**Reference publications:** washingtonpost.com (layout structure), theguardian.com (section architecture), ft.com (typographic authority), propublica.org (investigative presentation)

---

## Workflow

**Step 1 — Load the design language**
Read `https://joincommons.cc/api/items/broadsheet-byline/raw/design-language` fully. Internalize the four-typeface system, the OKLCH color tokens, the grid patterns (investigations 1.4fr/1fr, opinion 3-col, features 2-col, dispatches 3-column CSS), and the section anatomy (section-rule → section-header → content grid) before writing any HTML.

**Step 2 — Load the image kit**
Read `https://joincommons.cc/api/items/broadsheet-byline/raw/image-kit`. This exhibit uses no photography — all visual authority comes from typography, column rules, and newspaper structural conventions. Do not add images unless the content is photojournalism with documentary evidence.

**Step 3 — Build**
Implement the full page following newspaper section order: top rule → edition bar → masthead → dateline → Investigations (lead + sidebar) → Opinion (3-col) → pullquote → Features (2-col) → fold indicator → Dispatches (3-col) → colophon (bio + awards + contact) → footer. Use justified text with `hyphens: auto` on all body content. Apply `break-inside: avoid` on story blocks.

**Step 4 — Self-critique**
Before delivering, read the page back and run the broadsheet test:
- Does every headline use Noto Serif Display with appropriate weight (900 for leads, 700 for stories)?
- Does every section header use IBM Plex Sans bold uppercase with letter-spacing 0.18em?
- Is body text Source Serif 4, justified, with hyphens enabled?
- Are byline author names in `font-variant-caps: all-small-caps`?
- Are column rules visible between every multi-column group?
- Is the top rule `4px double`, section rules `3px solid`, and story borders `1px solid`?
- Does it look like a newspaper when printed (Cmd+P)?

---

## Gotchas — 7 Failure Modes to Avoid

1. **Card-based layout instead of column layout.** Stories in a broadsheet share columns with thin rules between them. They do NOT live in isolated cards with shadows and rounded corners. Use CSS `columns` or CSS Grid with `::after` pseudo-element rules.

2. **Uniform headline sizes.** The lead headline MUST be dramatically larger than sidebar headlines. Without a 2x+ size differential between lead and standard headlines, there is no editorial hierarchy — every story looks equal.

3. **Missing column rules.** The thin vertical lines between columns are the single most important visual element after the headlines. Without them, the multi-column layout looks like broken text, not a newspaper.

4. **Adding color beyond the palette.** Ink black, paper white, gray rules, one red badge. That is the entire palette. Section-specific colors, colored backgrounds, gradients, or tinted cards destroy the broadsheet register instantly.

5. **Skipping the byline convention.** Author names must use `font-variant-caps: all-small-caps; font-weight: 600`. Without this, bylines read as generic blog attribution rather than newspaper authorship declarations.

6. **Over-animating.** One page-entrance fade (0.6s) and headline hover underlines (0.3s). Nothing else. Newspapers are static documents. Scroll animations, parallax, and loading transitions break the print metaphor.

7. **Forgetting print conventions.** The edition bar (Vol./No./date), dateline (city + established date + ISSN), jump line ("Continued below"), fold indicator ("Below the fold"), and double-rule borders are not decorative — they are structural elements that make this a broadsheet rather than a generic editorial layout. Include all of them.
