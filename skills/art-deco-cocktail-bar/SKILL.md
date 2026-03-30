# Art Deco Cocktail Bar — Design Skill

## Design Context

**Audience:** Upscale hospitality brands, cocktail bars, speakeasies, jazz venues, hotel bars, private members' clubs.

**Use cases:** Bar/restaurant landing pages, cocktail menu pages, reservation flows, event program listings, mixologist profiles, nightlife venue sites.

**Brand personality:** Ceremonial, nocturnal, aspirational. The experience is not a drink — it is a composed ritual. Every visual decision should feel deliberate, hand-crafted, and slightly theatrical. Think New York 1924: opulent geometry, restrained gold, deep shadow.

---

## Design Direction

**Tone:** Obsidian darkness punctuated by measured gold. No color splashes. No warmth. The only warmth is the gold — and it earns its presence.

**The ONE memorable thing:** A full-bleed dark world where gold exists only as ornament — lines, gems, brackets, sunbursts — never as fill or flood. Gold decorates; it does not dominate.

**Reference sites to absorb:**
- Death & Co New York — deathandcompany.com (dark hospitality, ceremony)
- Dante NYC — dante-nyc.com (editorial cocktail presentation)
- Employees Only — employeesonlynyc.com (speakeasy texture)
- Art Institute of Chicago Art Deco galleries — for geometric vocabulary

**Typography signal:** Wide letter-spacing on all display type (0.22–0.55em). Never tight. The words breathe like a velvet room.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/art-deco-cocktail-bar/raw/design-language` in full. Internalize the color palette, all three typefaces with their specific weights and roles, the spacing system, and every CSS pattern listed. Do not substitute any typeface or color.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/art-deco-cocktail-bar/raw/image-kit`. Use only the verified Unsplash URLs listed there, in their designated placements (hero, gallery, bartender portrait). Do not invent or hallucinate photo IDs.

**Step 3 — Build**
Construct the page as a single HTML file with embedded CSS and minimal vanilla JS. Required sections in order: nav → hero (with sunburst CSS art + double-border frame) → ornament divider → content sections (menu / program / gallery / profile) → reservation form → location → footer. Every section transition must use an ornament divider or ziggurat motif. Every framed element must carry the double-border + corner-bracket pattern.

**Step 4 — Self-critique**
Read back the generated HTML before outputting. Ask: Does it pass the AI slop test? Are any fonts other than Marcellus, Cinzel, Josefin Sans present? Is any gold used as a background fill on large areas? Are there any border-radius values on decorative elements? Does the manifesto section have a conic-gradient background pattern? If any answer is wrong, revise before delivering.

---

## Gotchas — Failure Modes

1. **Gold flood.** Using `background: var(--gold)` on anything larger than a button is wrong. Gold lives in 1px lines, 7px gem diamonds, corner brackets, and small CTA buttons. Flooding a section in gold destroys the whole system.

2. **Rounded corners on deco elements.** Art Deco is rectilinear. Cards, frames, buttons, and ornaments must have `border-radius: 0`. Only the sunburst circles use `border-radius: 50%` — that is the only exception.

3. **Wrong font assignment.** Marcellus is display-only (titles, logo, prices). Cinzel is the label/eyebrow/nav/button font. Josefin Sans is the body/description/ingredient font. Swapping these roles breaks the hierarchy completely.

4. **Missing corner brackets on framed elements.** The double-border + `::before`/`::after` frame plus explicit `.hc` / `.rc` corner bracket spans is a non-negotiable pattern. Pseudo-elements alone produce the box; corners must be added as separate DOM spans or additional absolutely-positioned elements.

5. **Forgetting the conic-gradient background patterns.** The sunburst hero element and the manifesto section both use `repeating-conic-gradient` for the characteristic Art Deco radial pattern. Replacing these with plain backgrounds removes the most distinctive visual signature of the system.

6. **Tight letter-spacing.** Every display and label element must carry 0.14–0.55em letter-spacing. If text looks "normal" width, the spacing is wrong.

7. **Bright or colourful imagery.** All photos must be filtered: `filter: brightness(0.28–0.88) saturate(0.8–0.85) sepia(0.05–0.18)`. Raw unfiltered Unsplash photos will shatter the dark atmosphere.
