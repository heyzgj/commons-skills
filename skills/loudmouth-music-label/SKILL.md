# LOUDMOUTH — Music Label Design Skill

## Design Context

**Audience:** Independent record labels, music collectives, artist-run imprints, DIY music venues, merch shops, zine publishers.

**Use cases:** Label homepage, artist roster pages, release schedule, merch store, playlist / staff picks section, manifesto / about page.

**Brand personality:** Unapologetic, confrontational, joyful. Brooklyn basement energy turned into a brand. Loud but not chaotic — every decision is deliberate. The roughness is the point. Loud typographic voice, a palette that feels like record-store stickers, and micro-interactions that snap with satisfying physicality.

---

## Design Direction

**Tone:** EXTREME energy, zero corporate softness. Black ink borders on everything. Colors are saturated accent stickers dropped onto an off-white page — they don't blend, they collide.

**The ONE memorable thing:** Every interactive element physically "snaps" — buttons slide -2px/-2px on hover and slam back +4px/+4px on press, producing a tactile offset-shadow punch. Nothing floats or fades; it snaps.

**Reference sites to absorb:**
- Numero Group (numero.com) — archival density, mono type
- Sub Pop (subpop.com) — unapologetic label identity
- Rough Trade (roughtrade.com) — editorial list-view for releases
- Bandcamp label pages — artist color-coded grids

**What makes it unforgettable:** The heroic wordmark is ROTATED -2deg on a single colored highlight-block for "LOUD", and the stickers float with a gentle ±1.5deg keyframe drift. No other design system does this combination.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/loudmouth-music-label/raw/design-language` completely before writing any CSS. Every color, font, spacing, and component rule is documented there. Do not invent values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/loudmouth-music-label/raw/image-kit`. Use only verified Unsplash URLs listed. Map each image to its designated placement (hero instrument, playlist now-playing, studio/manifesto). Never substitute or hallucinate IDs.

**Step 3 — Build**
Implement the full page with all sections in order: marquee → nav → hero → artists grid → releases table → merch grid → playlist + sidebar → manifesto → footer. Follow the component specs in the design language doc exactly — especially border widths, shadow offsets, and hover transforms.

**Step 4 — Self-critique gate**
Before finalizing, read the output back and answer:
1. Does every interactive element snap (translate -2px/-2px hover, +4px/+4px active)?
2. Is `--border: 3px solid #0d0d0d` applied consistently — cards, nav dividers, section headers, buttons?
3. Do stickers have slight rotation (±2–5deg) and the float animation?
4. Is the hero wordmark rotated -2deg with the yellow highlight block on "LOUD" only?
5. Are all three font families present: Outfit (display), DM Sans (body), JetBrains Mono (mono/labels)?
6. Does the manifesto section use the crosshatch texture overlay at 6% opacity?
If any answer is no, fix before delivering.

---

## Gotchas — 5 Failure Modes to Avoid

1. **Soft shadows / rounded corners** — Zero border-radius anywhere. All shadows are hard offset blocks (`4px 4px 0 #0d0d0d`), never blurred. Any `border-radius` or `box-shadow` with blur radius breaks the aesthetic entirely.

2. **Missing the active-press snap** — The snap interaction has TWO states: hover = `translate(-2px,-2px)` + `box-shadow: 6px 6px 0`, active/press = `translate(4px,4px)` + `box-shadow: 0 0 0`. Omitting the active state makes buttons feel incomplete.

3. **Color bleeding / mixing** — The palette colors (yellow, coral, mint, lavender, peach) are used as SOLID accent fills on discrete elements (artist cards, format badges, stickers), not as gradients or background washes across full sections. The page background stays `--cream: oklch(0.95 0.012 60)` except for the manifesto (full black) and footer (full black).

4. **Marquee implementation** — The marquee needs a duplicated set of items inside `.marquee-track` to achieve a seamless infinite loop. Using `animation: marquee 28s linear infinite` with `translateX(-50%)` only works when the content is exactly doubled. Forgetting to duplicate produces a visible jump.

5. **Section header structure** — Every section header must follow the three-part pattern: `[accent-bar 10px wide, colored]` + `[section-title full-width, black bg, white text, uppercase Outfit 900]` + `[section-count right-aligned, mono, muted white]`. Using a plain `<h2>` without this structure loses the editorial newspaper feel entirely.

6. **Font convergence** — Do not substitute Inter, Geist, or Plus Jakarta Sans for Outfit. Do not substitute Space Mono or IBM Plex Mono for JetBrains Mono. The exhibit uses exactly these three: Outfit / DM Sans / JetBrains Mono. Changing them collapses the brand voice.

7. **Sticker rotation without float animation** — Stickers must have both a static CSS rotation (each sticker at a unique angle: +5deg, -3deg, -4deg, +2deg) AND the `Web Animations API` float loop (±1.5deg oscillation, 3000ms, ease-in-out, staggered delays). Static rotation alone looks dead.
