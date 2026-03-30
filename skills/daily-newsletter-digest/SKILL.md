# Daily Newsletter Digest — Design Skill

## Design Context

**Target audience:** Readers of quality long-form publications — intellectually curious adults who value depth over speed, accountability in journalism, and the authority of the printed record. Secondary audience: teams building editorial newsletters, digest platforms, news aggregators, and content-forward apps.

**Use cases:**
- Morning briefing / daily digest newsletters
- Editorial news sites and magazine-style publications
- Content aggregator dashboards
- Curated intelligence products (industry, research, finance)
- Internal company knowledge digests

**Brand personality:** Authoritative without being stuffy. Independent. Measured urgency — breaking news doesn't mean chaos; it means a pulsing red dot and sober headlines. The aesthetic communicates "we have been doing this for 40 years and we will be doing it 40 years from now."

---

## Design Direction

**Tone:** Classic broadsheet newspaper translated faithfully to screen. No gradients, no card shadows, no rounded corners. The page is structured entirely through typographic hierarchy, ink-black rules, and column grids — the same tools The Financial Times or The Guardian would have used in 1983.

**The ONE memorable thing:** The masthead. A massive, weight-900 serif wordmark at `clamp(68px, 10vw, 130px)` — letter-spacing `-0.025em`, line-height `0.88`. Below it, an italic tagline in muted colour. This is the moment that announces the design system's entire personality. Do not weaken it.

**What makes it unforgettable:** Pure typography as infrastructure. Every layout decision — section dividers, pull quotes, column rules, widget borders — is drawn only with horizontal lines and typographic contrast. No drop shadows. No colour fills except the solid-black ticker bar. The paper background `#F9F9F7` (warm near-white) and ink `#111111` (near-black, not pure) give a physical printed quality without any texture filter.

**Reference sites to absorb taste from:**
- ft.com — restrained serif authority, salmon/cream palette discipline
- theguardian.com — column grid rigour, section header language
- economist.com — pull quote treatment, byline capsule style
- nytimes.com — masthead scale, drop cap usage
- theatlantic.com — long-form body typography, deck/hed hierarchy

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/daily-newsletter-digest/raw/design-language` in full before writing a single line of HTML. Memorise the four fonts, the six CSS custom properties, and every component class. The system has a precise vocabulary; deviation reads as ignorance.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/daily-newsletter-digest/raw/image-kit`. This exhibit uses zero Unsplash images — the layout is 100% CSS and typography. Do not add photography unless the content domain genuinely requires it (food editorial, travel, fashion). If you add images, verify every URL with `curl -sI` before shipping.

**Step 3 — Build the exhibit**
Compose the HTML using the component library from the design language document:
- Start with `.top-nav` → `.ticker` → `.masthead` → thick rule
- Main `.layout` grid: `1fr 210px` (content + sidebar)
- Content column: lead story → section headers → story grids → opinion
- Sidebar: widgets in order (weather → markets → brief → most-read → subscribe)
- Close with `.footer-main` → `.footer-links` → `.footer-legal`

Write justified, hyphenated body copy. Use the dateline `<span class="dateline">` small-caps pattern at the top of each story. Use actual typographic entities: `&mdash;` `&ndash;` `&thinsp;` `&middot;` — never plain hyphens or ASCII dashes in editorial prose.

**Step 4 — Self-critique gate**
Read the finished exhibit back. Apply these checks:
1. Is the masthead wordmark visually dominant? (If you can't feel it from across the room, it's wrong.)
2. Does every section have a `.sec-header` with 3px top border + 1px bottom border?
3. Is body copy justified with hyphens? (`text-align: justify; hyphens: auto`)
4. Does the ticker animate (`55s linear infinite`) and repeat its content to loop seamlessly?
5. Does the drop cap appear only on the first `<p>` of the lead article?
6. Is there exactly ONE red accent used sparingly (`#CC0000`)? It should appear on: breaking tag, ticker label, nav hover, subscribe button hover, market decline values.
7. Are all font sizes in the body below 16px? (Body 13-14px is correct for print-density feel.)
8. Confirm no box-shadows, border-radius, or gradient backgrounds exist anywhere.

---

## Gotchas — Failure Modes

1. **Masthead collapse.** Using `font-size: 72px` instead of `clamp(68px, 10vw, 130px)` breaks the responsive scaling. The masthead must scale with viewport. Line-height must be `0.88` — any larger creates ugly gap below the wordmark.

2. **Wrong body font role assignments.** Playfair Display is for headlines and mastheads ONLY. Lora is body text. Inter is UI labels, nav, bylines, section tags. JetBrains Mono is for data: timestamps, market figures, weather stats, ticker bar. Mixing these — particularly using Inter for body paragraphs — destroys the editorial voice.

3. **Fake typographic entities.** Using `--` instead of `&mdash;`, `-` instead of `&ndash;`, `"` instead of proper curly quotes, or `.` instead of `&middot;` makes the layout read as template rather than genuine editorial production.

4. **Breaking tag without pulse animation.** The `.section-tag.breaking::before` content `'● '` must have the `pulse` keyframe animation (`0%,100% opacity:1; 50% opacity:0.2`). A static red dot is wrong; the pulse is the signal.

5. **Ticker without seamless loop.** The ticker content must be duplicated verbatim inside `.ticker-inner`. The `translateX(-50%)` endpoint of the `scroll-ticker` animation relies on the doubled content to appear infinite. One copy makes a jarring reset.

6. **Column rules as borders.** `.lead-body` uses CSS `column-rule: 1px solid var(--rule)` — not a pseudo-element or extra div. Story column rules use `border-right: 1px solid var(--rule)` with `border-right: none` on `:last-child`. Using divs or `<hr>` tags for column separation is structurally incorrect.

7. **Heavy sidebar.** The sidebar is `210px` wide — this is intentional and narrow. Do not widen it. Widgets use tight padding (`13px 0`), small fonts (`8.5–11px`), and mono data display. Any padding increase pushes the sidebar into a second content column and breaks the asymmetric tension that drives the layout.

8. **Adding card styles.** This system has no card components — no `background`, no `border-radius`, no `box-shadow` on content blocks. If you add card-style containers to story sections, you've broken the design. Stories are separated by rules and column borders only.
