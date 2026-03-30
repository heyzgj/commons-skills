# Photo Booth Strip — Design Skill

## What This Is
A physical photo-booth experience translated to the web. The defining feature is the **vertical paper strip** — white card stock with multiple 4:5 frames stacked, slightly rotated, printed with a timestamp and event label in monospace. The atmosphere is a darkened booth interior (charcoal + deep-red curtain gradient) that gives way to warm white surfaces for the gallery sections.

## Core Visual System

### Color
- `--bg-light: oklch(0.96 0.01 85)` — warm white surface (body background)
- `--curtain: oklch(0.25 0.1 20)` — deep booth red (hero gradient endpoint)
- `--booth-dark: oklch(0.15 0.01 260)` — near-black charcoal (text, hero gradient start)
- `--gold: oklch(0.8 0.18 80)` — flash highlight (active dots, timer arc)
- `--led: oklch(0.6 0.25 20)` — red LED (recording indicator)
- Strip variants: `#111` (black strip), `oklch(0.9 0.05 240)` (blue strip)

### Typography
- **Display / headings**: Syne 700–800, uppercase, tight tracking — `--f-disp`
- **Body / UI**: Karla 400–600 — `--f-body`
- **Mono labels / metadata**: Azeret Mono 400–600, letter-spacing 2px — `--f-mono`
- Strip metadata: Azeret Mono 0.75rem + Syne 0.9rem uppercase for event name
- Section subtitles: Karla 1.1rem, `rgba(0,0,0,0.5)`

### The Strip Component (canonical pattern)
```css
.strip {
  background: white;
  padding: 12px 12px 20px 12px;
  border-radius: 2px;
  box-shadow: 4px 15px 35px rgba(0,0,0,0.3);
  display: flex;
  flex-direction: column;
  gap: 10px;
  width: 260px;
}
```
- Sprocket metaphor: `::before` / `::after` pseudo-elements with `repeating-linear-gradient`
- Frames: `aspect-ratio: 4/5`, `border-radius: 4px`, `overflow: hidden`
- Print-out animation: slides from `translateY(-400px)` at 1s delay, `cubic-bezier(0.2, 0.8, 0.2, 1)`
- Rotation: `transform: rotate(2deg)` on hero strip; memory wall strips use `--r` CSS custom property (`-5deg` to `+4deg`)

### Hover Interaction (memory wall)
```css
.w-strip:hover {
  transform: rotate(0deg) scale(1.05) translateY(-10px);
  box-shadow: 0 20px 40px rgba(0,0,0,0.2);
  transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}
```
Cubic-bezier `(0.34, 1.56, 0.64, 1)` produces a spring/bounce snap-to-upright effect.

### CSS Filters (photo effects)
| Class | Filter value |
|---|---|
| `.f-orig` | `none` |
| `.f-warm` | `sepia(0.4) saturate(1.4) brightness(1.05)` |
| `.f-bw` | `grayscale(1) contrast(1.3) brightness(1.1)` |
| `.f-cool` | `saturate(0.8) hue-rotate(180deg) contrast(1.1)` + `mix-blend-mode: multiply` |
| `.f-fade` | `contrast(0.85) brightness(1.1) sepia(0.2)` |
| `.f-neon` | `saturate(2) hue-rotate(-20deg) contrast(1.2)` |

### Animations
- `flash-bang`: white overlay fades 0→1→0 over 0.8s — simulates camera flash
- `pulse`: `scale(0.95)` → `scale(1.05)` infinite alternate ease-in-out — countdown circle breathes
- `blink`: opacity 1 → 0.3 → 1 at 1s — red LED recording dot
- `print-out`: strip slides down from above, cubic-bezier ease-out

### Hero Layout
Dark gradient background (`135deg`, charcoal to curtain-red). Two columns: countdown zone (left) + print tray (right). Velvet grain via `repeating-radial-gradient` at 5% opacity.

### Countdown Zone
- Circle timer: 180px, `border: 8px solid rgba(255,255,255,0.1)` with a gold `::after` arc
- Digit: Syne 6rem 800 weight
- Indicator dots: 14px circles, gold + `box-shadow: 0 0 10px var(--gold)` when active
- LED label: Azeret Mono, `letter-spacing: 2px`, red blinking dot

### Memory Wall
- Background: `--bg-light` + `radial-gradient(rgba(0,0,0,0.04) 1px, transparent 1px)` at `20px 20px` (dot grid)
- Grid: `repeat(auto-fill, minmax(240px, 1fr))`, `gap: 3rem`
- Strips stagger vertically with `margin-top` offsets for a pinboard feel

### Friend Tags (pill filter)
```css
.tag {
  border-radius: 40px;
  padding: 6px 16px 6px 6px;
  background: white;
  border: 1px solid rgba(0,0,0,0.1);
  font-family: var(--f-mono);
}
```
Avatar: 30px circle image left-padded inside pill. Count displayed in muted `rgba(0,0,0,0.4)`.

### Filter Carousel
Horizontal scroll, `scroll-snap-type: x mandatory`, no scrollbar. Thumbnail cards 160px wide, `scroll-snap-align: center`. Active state: `border: 2px solid var(--booth-dark)`.

## Usage Rules
1. Always start with the dark hero booth interior — it sets the mood contrast before switching to the warm gallery.
2. The strip is the atomic unit. Never display individual frames outside a strip wrapper.
3. Metadata line must use Azeret Mono for the date and Syne uppercase for the event name.
4. Rotations must be small and varied (-5 to +4 deg). Never uniform or large.
5. The spring easing `cubic-bezier(0.34, 1.56, 0.64, 1)` is the signature hover feel — do not substitute a generic ease.
6. Use real CSS filter classes for photo effects; do not use inline `filter` styles.
7. The dot grid background (`radial-gradient` at `20px 20px`) is reserved for the memory wall section only.
8. Flash overlay must be a separate fixed `z-index: 9999` element to work across all layout stacking contexts.

## Sections to Include
1. **Booth Hero** — dark interior, countdown timer, hero strip print animation, flash overlay
2. **Filter Lab** — horizontal scroll carousel, 6 CSS filter presets, live apply interaction
3. **Memory Wall** — dot-grid background, friend tag pills, rotated strip grid

## What to Adapt
- Swap Unsplash photo IDs for real content photos
- Change strip metadata dates and event names to match the product context
- Add more filter presets by extending the CSS filter pattern
- Strip count / friend count / event count in the wall subtitle are editable copy
