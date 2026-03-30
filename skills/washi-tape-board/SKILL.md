# Washi Tape Board — Design Skill

## Design Context

**Persona:** A CDMX-based illustrator / animator / zine maker showing their portfolio as a cork board covered in pinned scraps, tape, photos, and hand-scrawled notes.

**Target audience:** Independent creatives — illustrators, animators, printmakers, zine authors, sticker designers — who want a portfolio that feels handmade and personal, not polished and corporate. Their audience is art directors, indie publishers, festival organizers, and fellow makers.

**Use cases:** Illustrator portfolio, animator reel page, zine maker catalog, sticker artist showcase, creative freelancer landing page, art school student portfolio, collage-style project board.

**Brand personality:** Joyfully messy. Every item looks hand-placed with tape and pins. The chaos is deliberate — it signals a working creative mind, not carelessness. Warm, tactile, analog in a digital medium.

---

## Design Direction

**Tone:** A physical cork board photographed in someone's studio. Items overlap, rotations are uneven, sticky notes have half-finished thoughts. Nothing is centered or aligned. The messiness IS the design.

**The ONE memorable thing:** Absolute-positioned items with unique rotation angles, held in place by CSS-only washi tape strips and radial-gradient pushpins on a cork background built from SVG noise and OKLCH gradients. Every material is constructed from CSS primitives — no images for tape, pins, or paper textures.

**Reference energy:** corkboard.me (spatial pinboard), are.na boards (curated chaos), studio desk photos on Behance, zine fair table layouts, refrigerator door collages.

**What makes it unforgettable:** The hand-drawn SVG arrow annotations connecting related cards with marker-red strokes and cursive labels. They animate in via stroke-dashoffset, making the board feel like someone is actively sketching on it.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/washi-tape-board/raw/design-language` in full before writing any markup. It specifies every OKLCH color, the single font (Patrick Hand), all item types (card, sticky, photo-frame, torn, ticket, postcard), washi tape patterns, pushpin gradients, shadow tints, and animation specs. Do not deviate.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/washi-tape-board/raw/image-kit`. Five verified Unsplash photos are used as pinned prints inside `.photo-frame` elements. Photos receive NO CSS filter — they look like physical prints. All craft materials (tape, pins, torn edges, cork) are pure CSS.

**Step 3 — Build**
Produce a single self-contained HTML file. Required elements:
1. **Cork background** — `var(--cork-bg)` with inline SVG feTurbulence noise (opacity 0.12) + 3 radial gradients for depth variation
2. **Name card** — centered hero card with mint washi tape, all-caps name, subtitle with middot separators
3. **Project cards** (3-5) — white/tinted paper cards (cream, yellow, pink, blue variants), each with unique rotation, attached via tape or pin, containing h3 title + description + tag pills + stats
4. **Photo frames** (3-5) — Polaroid-style frames (8px border, 28px bottom) pinned or taped, with captions
5. **Sticky notes** (2+) — colored paper squares with quotes or reminders
6. **Ephemera** (3+) — torn paper scraps, ticket stubs, postcards with stamps, handwritten lists
7. **SVG arrows layer** — hand-drawn paths connecting related items, marker-red stroke, annotation text in Patrick Hand, animated via stroke-dashoffset
8. **Stickers** — emoji decorations (48px circles) with floating animation
9. **Contact** — torn paper scrap with email and social handle
10. **Grain overlay** — JS canvas noise, warm cork tones, `opacity: 0.3`, `mix-blend-mode: multiply`

Key construction rules:
- ALL items use `position: absolute` with explicit `top`/`left` pixel coordinates and `--r` rotation custom property (range: -8deg to +7deg)
- Items MUST overlap — at least 3 pairs of items share edge territory
- Z-index ranges from 8 (background ephemera) to 20 (hero name card)
- Shadows use `rgba(60,40,20,...)` warm brown, never black
- Tags: pill shape (`border-radius: 12px`), warm neutral background
- Mobile (below 768px): switch to `flex-direction: column`, items become `position: relative`, hide `.ephemera-mobile-hide`, hide SVG arrows

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/washi-tape-board/raw/anti-patterns` and check:
- Does every item have a UNIQUE rotation angle (no two identical `--r` values)?
- Do at least 3 pairs of items physically overlap via position coordinates?
- Are there at least 4 distinct material types (cards, sticky, photo-frame, torn, ticket, postcard)?
- Is there at least one SVG annotation layer with hand-drawn arrows?
- Does the mobile layout correctly abandon absolute positioning for flex column?
- Is the only font Patrick Hand (no secondary fonts)?
- Are all craft elements (tape, pins, torn edges) CSS-only (no texture images)?
- Do all shadows use warm brown tint, not black?

---

## Gotchas

1. **Not a grid.** Items are absolutely positioned with hand-picked coordinates, not CSS Grid or flexbox on desktop. If items snap to a grid, you built a card layout with a cork background — not a cork board.

2. **One font only.** Patrick Hand for everything. Adding a sans-serif or display font introduces digital quality that kills the handmade premise. Variety comes from size and color, not font switching.

3. **Ephemera is mandatory.** Without torn scraps, ticket stubs, doodle circles, and SVG arrows, you have cards on a tan background. Budget 40% of the layout for non-content decorative items.

4. **Unique rotations.** Each item needs its own `--r` value between -8deg and +7deg. Uniform or alternating rotation (all +3/-3) makes the "random" layout look mechanical.

5. **Warm shadows only.** All shadows use `rgba(60,40,20,...)` — warm brown matching the cork. Using `rgba(0,0,0,...)` makes items float above the board instead of resting on it.

6. **Grain is heavy here.** The grain overlay is `opacity: 0.3` with `mix-blend-mode: multiply` — much stronger than typical (0.03). This reinforces the cork texture. Using subtle grain makes the background feel like flat paint.

7. **No skeuomorphic textures.** Cork is CSS (OKLCH + noise + gradients). Tape is `repeating-linear-gradient`. Pins are `radial-gradient` spheres. Adding JPEG textures or realistic 3D effects makes it look like a 2009 iOS app, not a craft board.

8. **Photos are prints.** Unsplash images sit inside Polaroid-style `.photo-frame` containers with NO CSS filter. They represent physical photos pinned to the board, not hero backgrounds or product shots.
