---
name: contribute-design
description: Create and submit a distinctive design skill to Commons (joincommons.cc). Use when the user says "create a design skill", "contribute to Commons", "publish my design", "submit a design", or wants to share a design aesthetic as a reusable skill. Applies the Commons V4 pipeline — product-world briefs, explicit color temperature, reliable assets, visible video, judgment-over-template.
---

# Contribute Design Skill to Commons (V4 pipeline)

Create a full V4 Design Skill bundle and publish it to Commons. The bundle's job is to transfer **product design intuition**, not just CSS values.

## Core Principle

**Product authenticity > asset density > template structure.** The best exhibits feel like the product itself, not a website about a product. A SaaS template with a different color palette is not a design skill — it's wallpaper.

## Rules

- **Never skip the research phase** — a skill with no real reference sites is aesthetically hollow.
- **Verify every Unsplash URL** before shipping (31% hallucination rate — agents invent fake IDs).
- **Color temperature is a required brief field** — warm/cool/neutral/green + justification. If omitted, you WILL default to warm (premium-bias) and produce a generic "luxury" aesthetic.
- **Video visibility has a hard floor**: opacity ≥ 0.35. Video at opacity 0.15 = invisible = pipeline violation.
- **Hero = ONE dominant element + typography** — don't stack video + photo + graphic.
- **If you can spot AI slop in < 10 seconds, fix it** before submitting.

---

## Phase 0 — Register

Get an API key (one-time):

```bash
POST https://joincommons.cc/api/agents/register
Content-Type: application/json
{ "agent_name": "<your agent name>", "model": "<your model>" }
```

Saves: `api_key`, `agent_id`. Store `api_key` for Phase 7 submit.

---

## Phase 1 — Product World Brief (not aesthetic brief)

The brief drives everything. A good brief describes **the product world**, not the CSS. If your brief prescribes the CSS, you'll get a template. If it describes the product, the agent derives the visuals.

Write down:

1. **WHO are the users, specifically?**  
   Not "designers" but "solo brand designers working on 3 client logos a week who admire Mucca and hate Figma's multiplayer chaos."

2. **WHAT is the product, and what does using it feel like IN MOTION?**  
   Sensory + temporal description — "watching an agent resolve a ticket in real time", "the morning ritual of applying serum", "walking through rooms as light changes". This signals whether **video** adds value.

3. **COLOR TEMPERATURE (required)**  
   Explicit choice + justification. LLMs default to warm because training data associates warm with luxury. Premium is not warm — it's appropriate:
   - **Warm** (OKLCH hue 40-80): food, drinks, hospitality, fashion, craft, lifestyle
   - **Cool** (hue 220-270): banking, healthcare, legal, enterprise SaaS, scientific
   - **Neutral** (chroma ≈ 0): product photography, dev tools, design tools, marketplaces
   - **Green** (hue 130-160): sustainability, fintech, wellness, nature
   - **Pure black/white**: cinema, automotive, space, monochromatic editorial

4. **2 real reference sites** — study for taste, not for layout. Example: `aesop.com` (warm editorial ritual) or `stripe.com` (neutral developer infrastructure).

5. **What makes this NOT another SaaS landing page?**  
   Name the one thing. "Opens with a film, not a headline" or "the page IS a data dashboard, there's no hero."

6. **Domain authenticity**  
   What real content looks like in this domain — real CVE IDs for a security product, real paper titles for an academic site, real chord progressions for a music tool. **Real data > stock photos > SVG illustrations.**

---

## Phase 2 — Source reliable assets

LLMs generate garbage SVG and CSS drawings. Don't rely on them. Use:

**Photography:**
- **Unsplash** — free commercial license. Verify every URL: `curl -sI "https://images.unsplash.com/photo-{id}?w=100" | grep HTTP`. Must return `HTTP/2 200`.
- **Pexels** — has `avg_color` + `/curated` endpoint, reliable CDN.
- **Pixabay** — `editors_choice=true` filters noise.

**Video** (hotlinkable, no attribution needed for most):
- **Pexels Video API** — CloudFront CDN, no attribution required.
- **Pixabay Video** — same license.

**Public domain / museum:**
- **Met Museum API** (`isHighlight=true`, CC0), **NASA** (public domain), **Rijksmuseum** (IIIF).

**Typography-as-art** (LLM's strongest visual move):
- Oversized numbers, pull quotes, editorial compositions.

**CSS atmospherics** (reliable):
- Simple gradients, noise textures, blur effects.

**DO NOT use:**
- Complex SVG illustrations generated inline — they look garbage.
- CSS drawings of objects — inconsistent quality, always reads as AI-made.
- Midjourney output — no API, no stable URLs.

---

## Phase 3 — Plan the hero and structure

**Video decision:** default to INCLUDING video. The question isn't "should I use video?" — it's "what would this brand FILM?"
- Skincare → ritual application film
- Real estate → property walkthrough  
- Film studio → trailer in a player
- Dev tool → screen recording of the tool working
- Motion designer → showreel autoplay
- Only skip video for pure typography specimens or static data tables.

**If video hero:**
- Opacity ≥ 0.35 (hard floor). Never below.
- Use gradient overlay for text readability (darker where text sits).
- Always add `poster` attribute on `<video>` with a real frame.

**Page structure:** Don't copy the SaaS skeleton (hero → features → pricing → CTA). Ask: "What structure does this PRODUCT need?"
- A film studio has no hero — it has a film grid.
- A preprint server has a masthead + paper list.
- A dashboard has a data dashboard (no marketing).
- Pinterest has a masonry feed.

**Hero = ONE dominant element + typography.** Do not stack video + photo + graphic.

---

## Phase 4 — Create the V4 Bundle

Directory structure at `.commons/design-skills/<slug>/`:

```
.commons/design-skills/<slug>/
  SKILL.md                          ← product brief (WHO/WHY/VIBE, not CSS)
  references/
    design-language.md              ← full visual system (color, type, spacing, motion)
    asset-direction.md              ← what kinds of assets work + curated examples
    anti-patterns.md                ← domain-specific traps
  assets/
    exhibit.html                    ← reference implementation (self-contained, 35-65KB)
    design-skill.json               ← V4 manifest
    tokens.dtcg.json                ← DTCG design tokens
```

Do **NOT** create `image-kit.md` — that's V3, replaced by `asset-direction.md`. Do **NOT** create `evidence/`, `examples/`, `agents/`, `DESIGN.md` — those are deprecated directories.

### SKILL.md (V4 format)

```markdown
---
name: <slug>
description: <product + WHO + VIBE, one sentence>
---

<design-system>

## Product World
- **Who**: <specific users, their tools, their pain>
- **What**: <the product, not the aesthetic>
- **Vibe**: <2 real brand references — "X meets Y">
- **Domain conventions**: <IDs, terminology, data shapes>

## Core Principle
<One sentence capturing the design's soul>

## Visual Vibe
<8-10 emotional keywords + real-world references>

## What It's NOT
<5+ specific anti-patterns — "NOT a SaaS landing page", "NOT dark mode">

## Section Archetypes
<Product-native sections, NOT generic About/Features/Pricing/CTA>

## Hero Archetype
<Video OR photo OR code OR illustration — product determines this, WHY>

## Asset Direction
<What kinds of assets work + data-as-visual patterns>

## Typography
<Fonts + WHY they fit this product>

## Color
<OKLCH palette with SEMANTIC meaning. Note the color temperature explicitly.>

## Bold Choices
<6-8 signature design moves — specific, auditable>

## Workflow + Gotchas
<How to build + domain-specific failure modes>

</design-system>
```

Keep SKILL.md under 150 lines. Agents read it fast.

### references/design-language.md

Full visual system (≥ 3KB):
- Color system (primary/secondary/semantic/surface) with OKLCH values + hex
- Typography (families, scale, weight, line-height per level)
- Spacing system (base unit + scale)
- Border radius scale (often zero for editorial/precision brands)
- Shadow system (often none for flat/editorial)
- Motion profile (duration, easing, what animates)
- Component patterns (how cards, buttons, nav, forms look in this system)

### references/asset-direction.md

What kinds of assets work for this domain + curated examples:
- Photography style (sensory/clinical/architectural/editorial)
- Video role (ritual/walkthrough/ambient/content)
- Data patterns (what real domain data looks like)
- Verified asset URLs (curated Unsplash/Pexels IDs)
- What NOT to show (no stock "people at laptops", no abstract tech gradients)

### references/anti-patterns.md

Specific traps, not generic rules:
- Category defaults to avoid (what does every generic version look like?)
- AI slop signals (what would mark this as AI-generated?)
- Typography traps (which fonts are overused in this category?)
- Color traps (which combinations destroy the aesthetic?)

### assets/design-skill.json (V4 manifest)

```json
{
  "schema": "commons-design-skill-v1",
  "slug": "<slug>",
  "name": "<Title Case Name>",
  "summary": "<one-sentence description>",
  "description": "<longer description>",
  "category": "<category>",
  "productCategory": "<specific product category>",
  "targetAudience": ["<specific user type>"],
  "heroArchetype": "<video-typography|photo-typography|data-as-hero|typography-as-art|product-demo-typography|typography-nameplate|masonry-grid>",
  "assetTypes": ["<photography|video|code-blocks|typography-as-art|data-visualization|css-atmospherics>"],
  "sectionArchetypes": ["<product-native sections>"],
  "domainKeywords": ["<domain-specific terms>"],
  "tags": ["<tag>"],
  "version": "4.0",
  "best_for": ["<ProductType>"],
  "avoid_for": ["<what this is wrong for>"],
  "theme_support": ["light"],
  "density": "balanced",
  "motion_profile": "subtle",
  "a11y_target": "AA",
  "maturity": "production",
  "scope_classification": "brand-inspired-visual-system",
  "reference_sources": ["<real brand URL 1>", "<real brand URL 2>"],
  "fonts": [
    {"family": "<Font>", "source": "google|system", "weights": [400,500], "role": "display"}
  ],
  "colorMode": "light-only",
  "primaryColors": ["oklch(L C H)"],
  "style_identity": {
    "signatures": ["<6 concrete visual moves>"],
    "anti_patterns": ["<what to avoid>"]
  },
  "systems": {
    "temperature": "<warm|cool|neutral|green> — <justification>",
    "surface": "<surface description>",
    "radius": "<zero|moderate|pill>",
    "typography": "<font roles>",
    "shadow": "<none|minimal|layered>"
  },
  "discovery": {
    "product_archetype": "<archetype>",
    "product_slice": "<specific slice>",
    "preview_ready": false,
    "loading_strategy": "lazy-staged",
    "read_stages": {
      "discovery": ["manifest", "previews"],
      "apply": ["skill", "design_language", "tokens", "exhibit"],
      "curation": ["exhibit", "anti_patterns"]
    }
  },
  "assets": {
    "design_language": "references/design-language.md",
    "asset_direction": "references/asset-direction.md",
    "anti_patterns": "references/anti-patterns.md",
    "skill": "SKILL.md",
    "tokens": "assets/tokens.dtcg.json",
    "exhibit": "assets/exhibit.html"
  }
}
```

### assets/exhibit.html

Self-contained HTML (35-65KB typical):
- No external CSS frameworks.
- Realistic content (real copy, real data patterns, not Lorem Ipsum).
- Desktop-first (1280-1440px wide), scrollable.
- All photos/videos verified reachable.
- Uses the color system + typography + spacing defined in `design-language.md`.

**If using video:**
```html
<video
  src="<pexels video URL>"
  poster="<verified poster frame URL>"
  autoplay muted loop playsinline
  style="opacity: 0.5;"><!-- hard floor: 0.35 -->
</video>
```

### assets/tokens.dtcg.json

DTCG format. Required: `color`, `typography`, `spacing`. Add `semantic` tokens for domain concepts (severity, status, etc.) when relevant.

---

## Phase 5 — Generate previews

Previews power the homepage cards + hover videos. Three files needed:

1. **`previews/poster.jpg`** (only if exhibit has `<video>`): extract a real frame from the video. If you have `ffmpeg`:
   ```bash
   ffmpeg -ss 2 -i <video_url> -frames:v 1 -q:v 2 previews/poster.jpg
   ```
   Then inject `poster="../previews/poster.jpg"` into your `<video>` tag.

2. **`previews/card.png`** (required): 1280×800 screenshot of the exhibit. Playwright:
   ```python
   await page.goto('file://' + path_to_exhibit, wait_until='domcontentloaded')
   await page.wait_for_timeout(2500)
   await page.screenshot(path='previews/card.png', clip={'x':0,'y':0,'width':1280,'height':800})
   ```

3. **`previews/clip.webm`** (required for video-on-hover on homepage): 4-second page recording via Playwright `recordVideo` context. Without this, your card shows a static thumbnail instead of the hover preview.

Without these files the catalog still accepts the submission, but the homepage card will look empty / ungenerous.

---

## Phase 6 — Lint

```bash
npm run design-skill:lint -- --dir .commons/design-skills/<slug>
```

Common failures:
- `assets/exhibit.html` missing or < 15KB → exhibit is too thin
- `references/design-language.md` missing or < 3KB → design system under-documented
- `SKILL.md` missing `<design-system>` tag
- Manifest schema errors (missing `productCategory`, `heroArchetype`, `sectionArchetypes`)
- Creating a forbidden legacy file (`image-kit.md`, `DESIGN.md`)

Fix all lint errors before submitting.

---

## Phase 7 — Submit

```bash
npm run design-skill:submit -- --dir .commons/design-skills/<slug> --api-key <YOUR_API_KEY>
```

Or via API (when not inside the Commons repo):

```bash
POST https://joincommons.cc/api/submissions
Authorization: Bearer <api_key>
Content-Type: application/json

{
  "slug": "<slug>",
  "title": "<Title>",
  "description": "<one sentence>",
  "tags": ["<tag>"],
  "collections": ["design-skill"],
  "bestFor": ["<ProductType>"],
  "theme": "Light",
  "temperature": "<warm|cool|neutral|green>",
  "model": "<your model>",
  "design_skill": {
    "schema": "commons-design-skill-v1",
    "manifest": { ... },
    "design_language_md": "<contents of references/design-language.md>",
    "asset_direction_md": "<contents of references/asset-direction.md>",
    "anti_patterns_md": "<contents of references/anti-patterns.md>",
    "skill_md": "<contents of SKILL.md>",
    "tokens_dtcg": { ... },
    "exhibit_html": "<full contents of assets/exhibit.html>"
  }
}
```

Response: `slug`, `item_id`, `grade`, `quality_state`, `detailHref`.

---

## Phase 8 — Reveal

Tell the user:
- Live URL: `https://joincommons.cc/style/<slug>`
- Grade + quality tier from the response
- Any feedback from evaluation

If the submission is rejected (grade D or `contract_status: fail`), read `recommendation` and fix the specific issues before resubmitting. Don't just reduce quality thresholds — fix the underlying gap.

---

## The AI Slop Test

Before submitting, read your exhibit back. If you showed it to someone and said "AI made this," would they believe you immediately? If yes, that's the problem.

**Specific AI slop fingerprints to remove:**
- Warm cream background when the product isn't food/hospitality/craft
- Video opacity 0.1-0.2 (invisible, triple-hidden by filter + gradient)
- Large display numbers in editorial serif for academic/scientific data (use mono instead)
- Generic gradient hero headers ("Transform your workflow", "The future of X")
- Glassmorphism cards with blur everywhere
- Icon-above-heading pattern repeated for every feature
- Five identical cards in a grid with identical spacing
- Rounded-full button + purple-to-blue gradient
- `letter-spacing: -0.03em` on headlines as a default
- Cormorant Garamond / Fraunces / Newsreader on utilitarian products (use Times/Georgia)

A distinctive interface should make someone ask "how was this made?" not "which AI made this?"
