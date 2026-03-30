# Academia Classical Planner — Design Skill

## Design Context

**Audience:** University students, academic administrators, and scheduling tool developers.
**Use cases:** Course catalogue browsers, semester planner apps, academic scheduling dashboards, registrar portals, faculty timetable systems.
**Brand personality:** Learned, formal, dignified. Feels like a centuries-old institution rendered as software — dark mahogany panelling, aged parchment text, burnished brass accents. Never playful, never modern-minimalist. The experience should feel like walking into an Oxbridge reading room and finding a very tasteful piece of UI there.

---

## Design Direction

**Tone:** EXTREMELY formal and classical. Every typographic choice defers to the humanist tradition — italic Garamond for descriptive prose, small-caps Cinzel for UI labels, Crimson Pro for body. No sans-serif typefaces whatsoever.

**The ONE memorable thing:** The three-column shell with a sticky sidebar schedule grid — the course list and the live weekly timetable exist side-by-side, so enrolment decisions have visible spatial consequences. This is the core tension of the design.

**What makes it unforgettable:** Brass gradient as the single accent — used sparingly for active states, never as decoration. The combination of near-black mahogany backgrounds with warm parchment text creates a rich darkness that reads as "library at night." The colour-coded schedule blocks (one muted tint per department) give the grid visual taxonomy without ever being garish.

**References:**
- Yale Online Course Catalogue — dense information hierarchy, serif authority
- Oxford Academic Publications — classical type treatment
- Harvard University's Registrar interface — structured form-over-fashion

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/academia-classical-planner/raw/design-language` in full. Internalise every CSS variable, every font role, every spacing unit before writing a single line of HTML.

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/academia-classical-planner/raw/image-kit`. This exhibit uses no photography — pure CSS with grain texture backgrounds. Do not add Unsplash images unless the adapting context genuinely requires them.

### Step 3 — Build
Construct the three-region shell: `calendar strip (36px top bar) → header+filter → course list (scrollable main) → sticky sidebar schedule grid`. Use the exact CSS variables and font assignments from the design language. Apply schedule block colours from the department colour palette in the design language. Implement the brass gradient exclusively for confirmed/active states.

### Step 4 — Self-critique
Read back every visible element and apply these tests:
1. Does any UI label use a sans-serif font? Fail → replace with Cinzel.
2. Is brass used more than once per interactive unit? Fail → reduce.
3. Does the schedule grid appear to the right of the course list? Fail → fix grid layout.
4. Do card descriptions use italic Garamond? Fail → apply `font-style: italic` with `var(--f-disp)`.
5. Is the background warm-dark (near #1C1714), not cold-dark (#000 or #111)? Fail → adjust.
6. Run the AI slop test: would a generic UI generator produce this? If yes, deepen the classical character.

---

## Gotchas

1. **Never use sans-serif fonts.** Cinzel, Cormorant Garamond, and Crimson Pro are the only typefaces. Substituting Inter, Roboto, or system-ui breaks the entire aesthetic immediately.

2. **Brass is a signal, not a decoration.** Brass (`#C9A962`) and its gradient (`linear-gradient(180deg,#D4B872,#C9A962,#B8953F)`) appear only on: active filter tabs, selected card left-border, enrolled button background (filled state), and credit hour number. Do not tint headings, icons, or backgrounds with brass.

3. **The grid sidebar must be sticky.** `position: sticky; top: 0; height: 100vh` on `.side`. If the sidebar scrolls with the page the live-schedule delight moment is lost.

4. **Letter-spacing on UI labels is mandatory.** Cinzel labels use `letter-spacing: .16em–.22em`. Without it the small-size Cinzel reads as noise. Do not remove tracking to save space.

5. **Card descriptions are italic Garamond prose, not bullet lists.** The `card-desc` element uses `font-family: var(--f-disp); font-style: italic`. Converting to bullet points or plain body text destroys the scholarly voice.

6. **Background grain texture is two overlapping repeating-linear-gradients.** Do not flatten to a solid colour. The subtle wood-grain and line texture at `rgba` opacities below 0.01 give the mahogany depth.

7. **Schedule block colours are per-department tints, not solid fills.** Each block uses a muted `rgba` background with a solid left border — e.g. `background: rgba(139,122,61,.22); border-left: 2px solid #8B7A3D`. Never use solid fills inside the grid; the blocks must feel semi-transparent over the dark column background.

8. **Conflict detection must be visible.** When a course overlaps an already-enrolled course in the weekly grid, show a `conflict-warn` element in red (`#C86070`) inside the card footer. Omitting this breaks the primary utility of the planner.
