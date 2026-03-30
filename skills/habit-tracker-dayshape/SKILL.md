# DAYSHAPE — Habit Tracker Design Skill

## Design Context

**Audience**: People building personal productivity tools, wellness apps, daily routine trackers, and self-improvement dashboards. Users range from solo developers shipping a personal tool to product teams building consumer wellness software.

**Use cases**: Daily habit check-ins, streak tracking, completion rate dashboards, personal productivity interfaces, health routine apps, journaling tools.

**Brand personality**: Warm, motivating, and gently accountable — never cold or clinical. Feels like a supportive coach, not a corporate dashboard. Earns trust through clear visual feedback and small moments of delight on task completion.

---

## Design Direction

**Tone**: Purposeful calm. The interface whispers encouragement — it does not shout metrics. Every interaction should feel rewarding, never punishing.

**The ONE memorable thing**: The animated SVG progress ring in the sidebar — filled in a spring bounce (`cubic-bezier(0.34, 1.56, 0.64, 1)`) as habits complete — is the emotional anchor of the entire experience. Users should feel the ring filling up.

**Visual language**: Material Design 3 tonal palette (purple primary, lavender containers, tertiary rose-pink) applied with restraint. Rounded corners everywhere (20–28px radii). Surface layers (`sc-low` → `sc` → `sc-high` → `sc-highest`) create depth without shadows.

**References** (taste anchors, not templates):
- Finch (iOS app): warm progress rings, gentle color containers
- Streaks (iOS app): calendar grid dots, streak momentum
- Linear's sidebar layout: sticky sidebar + scrollable main, section headers with inline action links

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/habit-tracker-dayshape/raw/design-language` in full before writing any CSS. Every color, radius, font size, and animation spec is there. Do not invent values.

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/habit-tracker-dayshape/raw/image-kit`. This design uses no photography — all visuals are CSS + emoji + SVG. Confirm this before adding any images.

### Step 3 — Build
Reproduce the two-column app layout (sticky 320px sidebar + scrollable main content) with:
- Progress ring (SVG, `stroke-dashoffset` animated with spring easing)
- Stats grid (2-col with a full-width "wide" card)
- Mini week dots row (7 columns, dot fills by completion level)
- Habits list (check icon + emoji tile + category chip + streak counter)
- Motivational banner (gradient from `secondary-container` → `primary-container`)
- Weekly streak table (habit rows × 7-day columns, today highlighted)
- Habit detail cards grid (`auto-fill, minmax(240px, 1fr)`)
- Fixed FAB bottom-right (spring entrance animation at 600ms delay)
- Toast notification (slide-up pill, `on-surface` background)

### Step 4 — Self-critique gate
Read back the finished output and run these checks:
- [ ] Progress ring animates on load (not static)
- [ ] Checking a habit triggers ripple effect + checkPop animation + toast
- [ ] FAB entrance is delayed 600ms and uses spring easing
- [ ] `fadeUp` stagger: sidebar items delay 100/200/300/380/450ms; main panels 150/250/350ms
- [ ] No hard shadows — only `var(--shadow)` rgba tinted drops and outline-variant borders
- [ ] Dark mode is NOT implemented — this is intentionally a light-only design
- [ ] All border-radii use design system values (14/20/22/24/28px); no arbitrary `8px` or `4px` shapes

---

## Gotchas

1. **Spring easing is load-bearing** — `cubic-bezier(0.34, 1.56, 0.64, 1)` is used for the progress ring fill, habit check animation, FAB entrance, and toast. Replacing it with `ease` or `ease-out` kills the characteristic bounciness that makes interactions feel alive.

2. **Surface layers, not just one background** — The color system has six surface steps: `--scl` (white), `--sc-low` (#F7F2FA), `--sc` (#F3EDF7), `--sc-high` (#ECE6F0), `--sc-highest` (#E6E0E9), `--surface-variant` (#E7E0EC). Using `white` or `#f5f5f5` instead breaks the tonal warmth.

3. **Sidebar is sticky, not fixed** — `position: sticky; top: 69px; height: calc(100vh - 69px)` keeps it anchored while the main content scrolls. Using `position: fixed` breaks the two-column layout.

4. **Habit emoji tiles use per-habit `bgColor`** — Each habit has its own pastel background color (`#E8DEF8`, `#CCE5FF`, `#C8F5C8`, `#FFDDB4`, `#FFD8E4`, `#F3E54E`). Do not force all tiles to use `--secondary-container` — the variety is intentional.

5. **Streak "hot" color is tertiary** — Streaks of 7+ days turn `--tertiary` (#7D5260) / `--tertiary-container` (#FFD8E4), not primary purple. This tertiary rose-pink is the heat signal. Using primary for streaks muddies the color hierarchy.

6. **The motivational banner uses a diagonal gradient** — `linear-gradient(135deg, var(--secondary-container) 0%, var(--primary-container) 100%)`. Flat fills or horizontal gradients look wrong.

7. **Week cell today indicator uses double ring** — `box-shadow: 0 0 0 2px var(--primary-container), 0 0 0 4px var(--primary)` creates a gap-ring effect. A simple border does not replicate this.

8. **Topbar backdrop blur is subtle** — `backdrop-filter: blur(8px)` on the sticky bar. Remove it and the topbar loses depth when content scrolls underneath.
