# Pastel Retro-Future Radio — Design Skill

## Design Context

**Target audience:** Lo-fi music lovers, City Pop fans, internet radio listeners who study or work to ambient music. Ages 20-35. They know Tatsuro Yamashita, they have a favorite lo-fi beats channel, they romanticize cassette tapes and FM dials.

**Use cases:** Internet radio station interface, lo-fi streaming app, music discovery platform, ambient listening dashboard, podcast network landing page.

**Brand personality:** Sincerely nostalgic. Warm and dreamy. The 1985 Miami sunset passed through a pastel filter and left in the sun until it faded to cotton candy. This is vaporwave's gentle cousin — no harsh neon, no ironic glitch, no dark backgrounds. Pure sunset warmth.

---

## Design Direction

**Purpose:** A lo-fi internet radio interface that makes tuning between stations feel like sliding through a perpetual sunset. The FM dial is the primary interaction — not play/pause buttons.

**Tone:** EXTREME pastel warmth. Think City Pop album cover from 1983 — pastel grid, chrome text, palm trees at dusk. Not dark vaporwave. Not ironic A E S T H E T I C spacing. Sincere nostalgia.

**The ONE memorable thing:** The full-viewport sunset gradient (pink to peach to purple) that makes the entire page feel like it exists inside a warm sky. Combined with the FM dial tuner as the hero interaction — clicking station presets slides a glowing cursor across a frequency band while numbers spin.

**What makes it unforgettable:** Every surface catches sunset light through chrome/glass effects with `backdrop-filter: blur(25px)`. Every shadow is colored (pink and peach glows, never gray). SVG feTurbulence grain creates VHS warmth. Palm silhouettes at page edges at 12% opacity. CRT-rounded corners on everything (16-24px).

**References:**
- City Pop album art (Tatsuro Yamashita, Anri, Mariya Takeuchi covers)
- Miami Vice sunset palette (desaturated 40%)
- Vintage boombox and Walkman display aesthetics
- Japanese FM radio station graphics from the 1980s

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/pastel-retro-future-radio/raw/design-language` fully. Commit the oklch color system, font trio, CRT corner rules, and chrome surface recipes to working memory.

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/pastel-retro-future-radio/raw/image-kit`. This exhibit uses **no photography** — pure CSS gradients, SVG paths, and chrome UI surfaces. The sunset gradient IS the visual. Do not reach for Unsplash.

### Step 3 — Build
Apply the design language exactly:
- Set the 6-stop sunset gradient as `background-attachment: fixed`
- Use `backdrop-filter: blur(25px)` on every glass panel
- Apply `border-radius: 16-24px` on all containers (CRT aesthetic)
- Use colored shadows only (pink/peach glows from oklch, never gray)
- Add SVG feTurbulence grain overlay at 0.06 opacity
- Add `saturate(0.85) brightness(1.06)` filter for sun-faded warmth
- Build the FM dial as the hero section with tuner cursor, frequency ticks, and station preset buttons
- Use Righteous for display text with `text-shadow` glow
- Use Space Mono for all data/metadata (frequencies, timestamps, durations)
- Use Geologica for body text at weight 300-500
- Add palm silhouette SVGs at page edges at 10-15% opacity
- Add animated equalizer bars on "now playing" label
- Add SVG waveform with gentle sine-wave `<animate>` paths

### Step 4 — Self-Critique
Before finalising, check:
- Is the sunset gradient warm and layered (6+ stops), not flat or banded?
- Do chrome surfaces catch light (inset highlight + chrome sheen pseudo-element)?
- Is the FM dial the hero moment, prominent and interactive?
- Are ALL corners 16px+ (except thin decorative lines)?
- Are ALL shadows colored pink/peach/purple? Any gray shadow = failure.
- Is the grain texture present (feTurbulence overlay)?
- Are font sizes varied (station name huge, metadata tiny)?
- Would someone believe AI made this immediately? If yes — rewrite.

---

## Gotchas

1. **NOT dark vaporwave.** This is LIGHT and PASTEL. Background gradient average lightness > 0.88 oklch. No dark purple/black/neon. Every pixel lives inside a sunset.

2. **NOT a Spotify clone.** No play/pause/skip controls as the primary interaction. The FM DIAL is the control. This is radio — you tune, you don't click "next."

3. **NO gray shadows.** Every `box-shadow` and `text-shadow` must use oklch pink, peach, or purple tints. Gray shadows break the warmth. Check `oklch(...340...)` or similar warm hue in every shadow value.

4. **NO sharp corners.** Every container uses `border-radius: 16-24px`. Buttons are pill-shaped (`border-radius: 100px`). The only exceptions are thin decorative line elements (tuner cursor bar, eq bars) where sub-12px radius is structural.

5. **Grain is mandatory.** The SVG feTurbulence overlay creates the VHS warmth that separates this from a generic pink theme. Without it, the design loses its analog character entirely.

6. **Chrome surfaces must catch light.** Every glass panel needs both `inset 0 1px 0 oklch(0.98 0.02 60 / 0.4)` for a chrome highlight AND a `::before` pseudo-element creating a horizontal sheen gradient. Without both, panels look like flat transparent cards.

7. **Font trio is specific — Righteous / Geologica / Space Mono.** Righteous provides the rounded retro boombox feel for display text. Geologica provides warm geometric body copy. Space Mono handles all data (frequencies, timestamps, track durations). Do not substitute any of these.

8. **Saturate filter is non-negotiable.** `filter: saturate(0.85) brightness(1.06)` on a `::after` pseudo-element creates the sun-faded VHS quality. Without it, colors are too vivid and the nostalgic warmth disappears.
