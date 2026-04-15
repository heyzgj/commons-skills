<design-system>

## Product World
- **Who**: Staff engineers and senior product people at mid-sized tech companies (200-800 engineers) who diagram systems for design docs, RFCs, and team critiques. They open a canvas 3-5 times a week. They migrated from Miro (too bloated) to tldraw / Excalidraw and now want something with persistence, presence, and keyboard-first speed. They love low-latency input, predictable shortcuts (V/R/A/T), multiplayer cursors that don't lag. They hate hero videos, "Trusted by 10,000 teams" banners, feature grids, and cookie banners on a drawing tool.
- **What**: Mark — a live collaborative canvas for diagramming systems, flows, roadmaps, and retros. Hand-drawn aesthetic. Hits "new canvas" → you're already drawing in under 200ms.
- **Vibe**: Excalidraw's hand-drawn honesty × Linear's keyboard-first premium restraint. A little Muji stationery in how paper and ink sit together.
- **Domain conventions**: Shapes have one-key shortcuts (V=select, R=rect, O=ellipse, D=diamond, A=arrow, T=text, N=note, E=eraser). Sticky notes have paper colors and rotations. Cursors are colored arrows with a name label. Presence is a stacked avatar ring in the top-right. "Saved Xs ago" lives in the bottom-right. Dot grids, not line grids.

## Core Principle
**The canvas IS the page. There is nothing to land on — the product is already in your hands in the first viewport, with someone else's work already on it and other people's cursors moving across it.**

## Visual Vibe
Hand-drawn, warm, paper-and-ink, off-white-not-white, graphite-not-black, calm but alive, populated, keyboard-first, refined, quiet chrome, confident. Reference points: Excalidraw, tldraw, Muji paper, fine-point fountain pen on uncoated stock, the margins of a senior engineer's notebook during a RFC review.

## What It's NOT
- NOT a SaaS landing page — no hero text, features grid, pricing, testimonials, "Trusted by" banner, CTA block, multi-column footer, or email capture.
- NOT a dashboard — no sidebar navigation, no data tiles, no charts, no search bar.
- NOT Miro — no infinite toolbars, no template gallery modal, no onboarding carousel.
- NOT Figma — no layers panel, no inspector, no frames UI.
- NOT polished vector art — shapes are hand-drawn via rough.js, never clean SVG paths hardcoded by the LLM.
- NOT a dark mode glowing cyberpunk canvas — it's paper. Warm, off-white, quiet.
- NOT center-aligned — the canvas content sits where it sits; nothing is "arranged for the viewer."

## Section Archetypes
There are no "sections." The page is ONE layer (the canvas) plus four chrome anchors:
- **Canvas content layer** — a real, specific diagram (architecture, roadmap, retro, or flow) with labeled shapes, connecting arrows, sticky note critiques, and a handwritten title.
- **Wordmark anchor** (top-left) — tiny brand + current file name, no menu.
- **Presence anchor** (top-right) — stacked colored avatars + Invite pill + Share pill.
- **Toolbar anchor** (left edge, vertical) — drawing tools as icon buttons with shortcut hints and hover tooltips showing the key.
- **View anchor** (bottom-left) — zoom % + zoom in/out + fit-to-screen.
- **Status anchor** (bottom-right) — "saved Xs ago" + filename + green pulse dot.

Section archetypes for this skill are NOT "hero / features / pricing" — they are *canvas content type*: system-architecture, product-roadmap, retro-board, user-flow. The chrome stays identical; what changes is what's on the paper.

## Hero Archetype
**Canvas-as-hero.** The entire first viewport is the drawable canvas with real shapes, real sticky notes, real arrows, real cursors. No video, no photo, no hero text layered on top. The product runs against itself at full size from the first paint. If you catch yourself reaching for a video or a hero headline, you are designing for the wrong product.

## Asset Direction
- **Rough.js shapes** are the primary visual material. Rectangles, ellipses, diamonds, lines, arrows — rendered with `roughness: 1.4-1.8`, hachure fills in paper colors, varied `seed` and `hachureAngle` per shape so no two look identical.
- **HTML sticky notes** — never drawn with rough.js. Use HTML divs with paper hues (#fef9c3 yellow, #fed7aa orange, #bbf7d0 green, #bfdbfe blue, #fecaca pink), slight rotation (`-2.4deg` to `+2.1deg`), soft shadow, a handwriting font (Caveat or Kalam), and a small author stamp in sans.
- **Cursors** — inline SVG arrow path (9 points) with a colored fill, white stroke, and a pill label next to it. 3-4 cursors per canvas, each a distinct hue.
- **Chrome icons** — inline Lucide/Phosphor-style SVGs for toolbar, zoom, and presence controls. Stroked lines, not filled.
- **Box labels** are HTML with a handwriting font on top of the rough.js rectangles. This gives crisp typography with hand-drawn containers.
- **Domain content is the best asset**: a credible system diagram with real service names (Postgres, Kafka, Redis, S3), real critiques ("do we really need 2 queues?", "Redis is a cache, not a db"), real authors, and real timestamps. Generic placeholders kill the product world instantly.
- **DO NOT**: use stock whiteboard photos, use rendered 3D art, generate clean SVG icon illustrations of "collaboration", use emoji for shapes, use a dark mode with glowing accents, use rounded-rectangle buttons with gradient fills, use a landing-page hero video.

## Typography
- **IBM Plex Sans** (400/500/600) — UI chrome (wordmark, tooltips, avatars, toolbar, status, pill buttons). Chosen because: it's legible at 11-13px, has excellent tabular figures for the zoom % and "saved Xs ago" counter, and carries quiet confidence without being the overused Inter/Geist default.
- **IBM Plex Mono** (400/500) — file names, box sub-labels (like "next.js · ssr" beneath a box name), keyboard shortcut keys in tooltips. Mono here is earned, not decoration — file paths and tech stack are actually code.
- **Caveat** (500/700) — all handwriting on the canvas: canvas title, box labels, sticky notes, arrow labels. Chosen because it's a genuine cursive with natural weight variation, not a stiff "marker" font, and it pairs well with the rough.js strokes.

Why three: each family does exactly one job (chrome / code / ink) and they never compete.

## Color
OKLCH, all neutrals tinted warm (hue ≈60-80), never pure black or white.

- `--paper` `oklch(0.985 0.004 80)` — the canvas background. Warm off-white, not #fff.
- `--paper-soft` `oklch(0.97 0.005 80)` — hover background inside chrome.
- `--ink` `oklch(0.22 0.01 60)` — primary text and hand-drawn strokes. Warm graphite, not #000.
- `--ink-soft` `oklch(0.42 0.012 60)` — secondary labels.
- `--ink-faint` `oklch(0.62 0.01 60)` — metadata like "saved 6s ago".
- `--line` `oklch(0.88 0.008 70)` — chrome borders.
- `--grid-dot` `oklch(0.22 0.01 60 / 0.13)` — the background dot grid.

**Semantic colors for sticky notes** (paper hues):
- `--note-yellow` `oklch(0.945 0.085 95)` — default critique
- `--note-orange` `oklch(0.86 0.10 55)` — warning / important
- `--note-green` `oklch(0.91 0.07 150)` — risk / blocker
- `--note-blue` `oklch(0.90 0.06 240)` — open question
- `--note-pink` `oklch(0.90 0.06 10)` — contradiction / pushback

**Cursor hues** (each collaborator gets exactly one):
- `--c-maya` `oklch(0.62 0.20 25)` warm red
- `--c-ren` `oklch(0.65 0.13 195)` teal
- `--c-devi` `oklch(0.55 0.18 305)` purple
- `--c-jules` `oklch(0.78 0.16 75)` amber

**The presence green** `oklch(0.65 0.15 145)` is reserved for the saved-state pulse dot in the bottom-right — never used anywhere else.

## Bold Choices
1. **No landing page at all.** The canvas opens as the page. Zero marketing wrappers. No scroll.
2. **Hand-drawn shapes via rough.js, never hardcoded SVG paths.** Coordinates live in JS data; rough.js draws from them at runtime. The LLM never writes `d="M..."` strings.
3. **Connections computed at runtime, not hand-authored.** Arrows between boxes pick edge anchors from actual box geometry. Moving a box automatically moves the arrow.
4. **Handwritten typography on hand-drawn containers.** Box labels are HTML text in a cursive font overlaid on rough.js rectangles — best of both worlds: legible text + handmade shapes.
5. **Sticky notes are HTML, never rough.js.** Real rotation (`transform: rotate(-1.2deg)`), paper colors, soft shadow. Drawing them with rough.js looks wrong.
6. **Cursors are positioned semantically, not randomly.** Each cursor sits next to the thing its owner is "editing." Maya's selection dash matches her cursor position.
7. **Gentle cursor drift via `requestAnimationFrame` + sine/cosine oscillation.** 3-5 second periods, small amplitudes. The page feels alive without looking like a demo reel.
8. **Working keyboard shortcuts.** V/R/O/D/A/T/N/E actually change the active toolbar tool. The tool tooltips show `<kbd>` keys. This is a drawing tool — shortcuts are not ornamental.

## Workflow
1. Read `https://joincommons.cc/api/items/scratch-canvas/raw/design-language` for the full visual system (colors, type, spacing, motion, components).
2. Read `references/asset-direction.md` for canvas content direction and how to choose shapes + notes.
3. Build with rough.js + HTML sticky notes + real domain content. Every critique must be specific to the domain on the canvas.
4. Self-critique against `https://joincommons.cc/api/items/scratch-canvas/raw/anti-patterns`. The biggest traps are marketing-page drift and generic placeholder content.

## Gotchas
- **If you're writing hero copy, stop.** There is no hero. Delete it.
- **If your shapes are clean SVG paths, stop.** Use rough.js. Hardcoded paths look wrong and defeat the aesthetic.
- **If your sticky notes say "Lorem ipsum" or "Sticky note 1", stop.** They must be real critiques about real domain content — the kind a senior engineer actually writes.
- **If your cursors are randomly placed, stop.** Put each cursor next to the thing its owner is editing, so the presence makes narrative sense.
- **If the canvas is empty or the content is generic shapes, stop.** Commit to a specific diagram (system, roadmap, retro, flow) with credible, specific labels.
- **If you added a top nav or a footer, stop.** The only chrome is: wordmark, presence, toolbar, zoom, status. Nothing else.
- **If you used pure black or pure white, stop.** Warm off-white and warm graphite only.
- **If the arrows between shapes look like straight lines connecting clean centers, stop.** Use a slight perpendicular bulge on the midpoint so they look hand-drawn, not CAD.

</design-system>
