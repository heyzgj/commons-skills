# Confetti Party Planner — Design Skill

## Design Context

**Audience**: Social planners aged 20–35 who describe events with words like "vibe", "main character energy", and "going all out". They plan birthday bashes, friend gatherings, and milestone celebrations. They are comfortable with expressive, maximalist UI and expect energy and personality from every screen.

**Use cases**: Event creation flows, guest list management, budget dashboards, vendor booking, countdown timers, RSVP tracking, party theme selection.

**Brand personality**: Joyful chaos with structure underneath. Loud, bold, and unapologetically colorful — but every element earns its place through clear function. The ONE memorable thing: **section backgrounds are solid accent colors** (magenta, cyan, yellow, orange), not white cards on white. Each section owns its hue completely.

---

## Design Direction

**Tone**: Maximum celebration energy. Unbounded at 900 weight. Everything bounces, glows, or tilts on hover. Nothing is subtle. If it can be bold, it is bold.

**The one thing that must survive**: Solid-color section backgrounds. The Themes section is `#FFE600` yellow. The Guest section is `#FF3AF2` magenta. The Budget section is `#00F5D4` cyan. The Vendors section is `#FF6B35` orange. The page reads as a rainbow of full-bleed blocks, not a white app.

**Typography trio**:
- `Unbounded` 900 — hero titles, stat numbers, prices, the logo. Always huge, always heavy.
- `Outfit` 700/800 — section headings, card names, button labels, list headers.
- `DM Sans` 400/500/600 — body copy, descriptions, meta text, nav links.
- `Bungee` — section labels (11–13px, uppercase, letter-spacing 0.15–0.2em), badges, RSVP statuses. Decorative accent only, never body copy.

**Reference sites**: partiful.com, zola.com (event pages), Joy (joy.com). Study how they balance high-energy color with functional data density.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/confetti-party-planner/raw/design-language` in full. Internalize the color system (five accent colors + ink + warm off-white), the CSS pattern library (check, dots, stripes, zigzag, circles), the button shadow system (hard offset shadow), and the `4px solid var(--ink)` border convention on cards.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/confetti-party-planner/raw/image-kit`. This exhibit uses no photography — all visual texture comes from CSS patterns. Do not add photography unless the brief explicitly calls for it (e.g., a catering section with food photos).

**Step 3 — Build**
- Hero: dark `#0D0D1A` background, animated gradient title (hue-rotate keyframe), falling confetti particles (SVG shapes via JS), hero-stats row with each number in a different accent color.
- Ticker: full-width `var(--pu)` band with `4px solid var(--ink)` borders top/bottom, infinite scroll animation.
- Each section gets its own solid accent color background. Use `section-label` (Bungee, 11px, 0.2em tracking) + `section-heading` (Unbounded, 56px max, -0.03em tracking) pattern.
- Cards always: `background: #fff`, `border: 4px solid var(--ink)`, `border-radius: 16px`. Hover lifts with `translateY(-4px)` and adds `6px 6px 0 var(--ink)` box-shadow.
- RSVP/status badges: Bungee font, `border: 2px solid var(--ink)`, colored background per state.
- Buttons: hard offset shadow `0 6px 0 <darken>`. Active state pushes down `translateY(3px)` with shadow removed.
- Scroll reveals: `.reveal` starts `opacity:0; transform:translateY(24px)`, transitions to visible on IntersectionObserver.

**Step 4 — Self-critique**
Read back the output and check:
1. Is the hero title using `clamp(64px, 12vw, 140px)` or equivalent scale?
2. Does each section have a distinct solid color background (not white)?
3. Are all data cards using `border: 4px solid var(--ink)`?
4. Does the button have a hard shadow, not a blurred drop shadow?
5. Is the font stack loading Unbounded + Outfit + DM Sans + Bungee from Google Fonts?
6. Does the confetti animation use multiple shapes (circle, rect, star, ribbon, ellipse)?
7. Is there a scrolling ticker band between the hero and the first section?

---

## Gotchas

1. **Soft shadows on buttons** — This design uses hard offset shadows (`0 6px 0 #8B0083`), not blurred box shadows. Using `box-shadow: 0 4px 12px rgba(...)` destroys the flat/neo-brutalist personality.

2. **White section backgrounds** — Never use `background: white` or `background: var(--bg)` for major sections. Each section claims its accent color as a full-bleed block. White is only for inner card elements.

3. **Bungee as body text** — Bungee is strictly decorative: section labels, badges, RSVP statuses, countdown labels. Never use it for paragraphs, descriptions, or anything over 13px.

4. **Missing the ink border system** — Every card, every badge, every status pill must have `border: 2px solid var(--ink)` or `border: 4px solid var(--ink)`. A card without an ink border looks unfinished.

5. **Flat theme cards** — Theme picker cards must have both a colored border AND a background texture (CSS pattern class). A flat colored card misses the richness of the pattern overlay.

6. **Generic confetti** — Confetti must use multiple SVG shape types: circle, rect, star polygon, ribbon (tall rect), ellipse. Only colored circles looks lazy.

7. **Static countdown** — The countdown timer should actually count down via `setInterval`. A static display breaks the "it's happening NOW" energy.
