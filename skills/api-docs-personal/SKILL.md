# API Docs Personal — Design Skill

## Design Context

**Audience:** Backend engineers, systems programmers, and infrastructure developers who want a personal site that speaks their language — literally structured as API documentation.

**Use cases:** Personal portfolio site, developer resume, project showcase, contact page — all framed as REST endpoints with curl examples and JSON responses.

**Brand personality:** Dry wit delivered through technical precision. The humor lives in the structure (career milestones as semver, availability as HTTP status codes), never in decoration. The visual tone is a well-maintained API reference — dark-mode, monospaced, information-dense, and quietly confident.

---

## Design Direction

**Purpose:** Present a developer's personal brand as a production API — complete with endpoints, response schemas, query parameters, status codes, and a changelog where version bumps map to life events.

**Tone:** Deadpan technical documentation with personality leaking through the content, not the chrome. Think Stripe's API docs if they were about a person.

**The ONE memorable thing:** The entire portfolio IS an API reference. `/about` returns bio as JSON. `/projects` returns repos with star counts. `/contact` is a POST endpoint with a "Try it" form. `/easter-eggs` returns 418 I'm a Teapot. The conceit is total and unbroken.

**What makes it unforgettable:** The changelog section where career milestones are expressed as semver releases with ADDED/CHANGED tags — "v0.1.0 (1996): Initial deployment. No documentation. No tests. Worked anyway."

**References:** stripe.com/docs, developers.cloudflare.com, docs.github.com — all share the sidebar + two-column (description | code) layout with method badges and syntax-highlighted responses.

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/api-docs-personal/raw/design-language` completely. Internalize the OKLCH color tokens, Inconsolata mono stack, sidebar/topbar/endpoint anatomy, and the two-column endpoint layout (description left, code right).

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/api-docs-personal/raw/image-kit`. This design uses zero photography. All visual interest comes from syntax highlighting, method badges, status code colors, and the grid/dot proficiency indicators. Do not add images.

### Step 3 — Build
- Start with `:root` CSS custom properties block using the exact OKLCH values
- Body: system-ui sans-serif for prose, Inconsolata for all code/labels/badges/paths
- Topbar: fixed, 52px, sidebar-bg, logo + version pill + auth status + rate limit pill with hover tooltip
- Sidebar: fixed left, 240px, section labels (10px mono uppercase), links with colored method badges (GET green, POST blue, PUT amber, DELETE red)
- Main content: 960px max-width, 48px/56px padding
- Each endpoint: method badge + path header, description paragraph, two-column grid (info | code panel)
- Info column: param tables with mono key names, type annotations, required badges
- Code column: curl request blocks + JSON response blocks with full syntax highlighting (keys, strings, numbers, booleans, nulls each colored)
- Changelog: version/date left column + description right column, ADDED/CHANGED/REMOVED tags
- Endpoint sections stagger-animate in on scroll via IntersectionObserver (0.4s, translateY 12px)

### Step 4 — Self-critique gate
Before finalizing, read back the complete output and answer:
1. Is the entire page structured as API documentation with no section breaking the conceit? (If any section looks like a normal portfolio section: rewrite it as an endpoint)
2. Are ALL code blocks syntax-highlighted with the correct token colors (keys=cyan, strings=green, numbers=amber, booleans=pink, nulls=muted)?
3. Does the sidebar have method badges with correct colors for every endpoint?
4. Is the two-column layout (description | code) consistent across all endpoint sections?
5. Does the changelog use semver + ADDED/CHANGED tags for career milestones?
6. Are all font sizes for labels/badges/paths using Inconsolata mono, not the system font?

---

## Gotchas

1. **The API conceit must be total.** Every section is either an endpoint, a status code reference, or a changelog entry. No "About Me" prose section, no "My Work" gallery. If it can't be expressed as a REST resource, it doesn't belong.

2. **Two fonts only.** System-ui sans-serif for body prose (descriptions, paragraphs). Inconsolata monospace for everything else — paths, badges, labels, code blocks, sidebar links, form labels, version pills. Do not add a display serif or second sans-serif.

3. **OKLCH palette is non-negotiable.** The method colors (green/blue/amber/red) use OKLCH with specific lightness/chroma values tuned for dark backgrounds. Do not convert to hex and adjust. Use the exact OKLCH tokens from the design language.

4. **Code blocks need real syntax highlighting.** Each JSON value type gets its own color class. Wrapping everything in a generic `<pre>` with one color is the fastest way to make this look like a toy.

5. **The humor is in the content, not the UI.** Dry wit lives in JSON values ("status": "200 OK — Currently employed, selectively open to interesting problems"), response tips, and changelog descriptions. The UI itself is completely straight-faced — no emoji, no illustrations, no playful colors.

6. **Sidebar scroll tracking is essential.** The active endpoint must highlight in the sidebar as the user scrolls. Without this, the sidebar is just a static list and the API-docs illusion breaks.

7. **Do not add Unsplash images.** This design is pure code + typography. Adding hero photography or project screenshots breaks the documentation aesthetic. The skill grid dots and param tables ARE the visual interest.

8. **Status code section must have personality.** Each HTTP status maps to a human situation — 429 means "at capacity, try next quarter." This is where the voice shows through the format.
