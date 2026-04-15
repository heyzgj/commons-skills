<design-system>

## Product World
- **Who**: Food obsessives who plan international trips around a single reservation. Chefs studying Nordic fermentation technique. Food writers covering the new-Nordic movement. People who saved thousands for one dinner and would do it again. They don't browse — they pilgrimage.
- **What**: Noma is the world's most influential restaurant, a Copenhagen food laboratory where seasonal menus change completely every three months — seafood, vegetable, game. Fermentation is the technique. Terroir is the philosophy. Every dish traces back to the soil.
- **Vibe**: A24 Films meets noma.dk — content IS the marketing. The food photograph speaks first; text is secondary. Editorial restraint, museum-grade presentation, zero decoration.
- **Domain conventions**: Seasonal rotation (vegetable/seafood/game), fermentation vocabulary (lacto-fermented, koji, garum), Nordic ingredient names, course-based menu structure, terroir-driven philosophy.

## Core Principle
The food is the only thing that matters. Everything else gets out of the way.

## Visual Vibe
Restrained. Warm earth. Bare wood. Steam rising. Ceramic. Soil. Silence between courses. Editorial calm. Museum of food.

## What It's NOT
- NOT a SaaS landing page with hero headline, features grid, pricing, CTA
- NOT dark mode with neon accents — this is warm, natural, light
- NOT a food delivery app with bright colors and urgency ("Order now!")
- NOT a lifestyle blog with busy layouts and sidebar widgets
- NOT a Michelin marketing site with gold stars and formal language
- NOT cluttered — if in doubt, remove it
- NOT decorated — no gradients, no glassmorphism, no shadows, no border-radius

## Section Archetypes
- **Food photograph hero**: Full-viewport image, no text overlay, no headline. The dish opens the experience.
- **Restaurant identifier**: Minimal centered text — name, city, year. Appearing after the hero scroll.
- **Seasonal menu**: Season name as large serif, dish names as a quiet list with subtle category tags.
- **Dish detail gallery**: Small grid of food preparation photographs.
- **Full-bleed atmosphere**: Kitchen or ingredient photographs at full width, no overlay.
- **Philosophy text**: Short italic serif passage — the chef's voice on terroir and fermentation.
- **Kitchen video**: Video as content — chefs at work, plating, steam, technique. Full visibility.
- **Team**: Names only. No headshots, no bios. The work speaks.
- **Reservation**: Date picker + single button. Nothing else.

## Hero Archetype
**Photo-only hero** — no text, no overlay, no navigation on load. The food photograph fills the entire viewport. This is the A24 model: open with the content, not a pitch. Navigation appears only after scrolling past the image. The food IS the marketing.

## Asset Direction
- **Photography**: Close-up food plating on handmade ceramics. Dim kitchen atmospheres with steam and focused chefs. Raw ingredients arranged with artistic intention — not styled food photography, but documentary captures of a working kitchen. Warm, low-light, natural tones.
- **Video**: Kitchen in motion — hands plating, flames, fermentation processes, close-ups of technique. This is content you watch, not ambience. Full visibility, no dimming overlay.
- **Data-as-visual**: The seasonal menu list itself — dish names with ingredient descriptions and category tags — IS the visual content. Typography does the work.
- **What NOT to show**: No stock food photography (bright, overhead, styled). No lifestyle shots of people dining. No wine glasses or table settings. No exterior building shots. No chefs posing for camera.

## Typography
**Cormorant Garamond** (display, weight 300-400) — an elegant, high-contrast serif that feels editorial and restrained. It belongs in a gallery catalog, which is exactly right: Noma treats food as art. The light weight communicates quiet confidence.

**IBM Plex Sans** (body/UI, weight 300-500) — clean, humanist sans-serif with enough character to avoid genericness. At weight 300, it whispers rather than talks. The sans/serif pairing creates clear hierarchy without competing voices.

## Color
Warm off-white background (`#f5f2ed` / approximately `oklch(0.96 0.01 70)`) — the color of unbleached linen, handmade paper, bare Scandinavian wood. Every neutral is warm-tinted toward the earth.

Warm dark text (`#1a1714` / approximately `oklch(0.15 0.01 60)`) — not black, but the color of dark soil or charred wood. Softer on the eye, connected to the natural world.

No accent color. The food photography provides all the color the page needs. The UI is entirely warm neutrals — this IS the bold choice.

## Bold Choices
1. **No hero text** — the page opens with a full-viewport food photograph and nothing else. No headline, no nav, no button. First meaningful text appears only after scrolling.
2. **Zero border-radius** — every edge is knife-sharp. This is precision, not comfort.
3. **No accent color** — the warm neutral palette is the entire system. Food is the only source of chromatic richness.
4. **No shadows** — depth comes from photography and whitespace, never from CSS effects.
5. **Nav appears on scroll** — hidden during the hero moment, revealed via Intersection Observer only after the photograph passes.
6. **Names without faces** — the team section lists names in serif type. No headshots, no bios. The restraint says more than a grid of portraits ever could.
7. **Mix-blend-mode navigation** — nav text inverts against whatever it overlaps, functioning on both photo sections and the light background.
8. **Menu as quiet list** — dishes presented as a borderline-minimal list with subtle hover indent, not cards or images. The name of the dish is enough.

## Workflow
1. Read `https://joincommons.cc/api/items/noma-kitchen/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography and video sourcing
3. Build following the food-first, no-decoration philosophy above
4. Self-critique against `https://joincommons.cc/api/items/noma-kitchen/raw/anti-patterns`

## Gotchas
1. **Resist adding a hero headline.** The instinct to put text over the opening photograph is strong. Fight it. The food IS the headline.
2. **Don't brighten the photography.** Low-light, warm kitchen atmospheres are correct. Bright, high-key food photography belongs to a different product (Deliveroo, HelloFresh).
3. **Don't add a color accent.** When the design feels "too plain," the answer is better photography, not a blue button.
4. **Don't use border-radius.** Not even 2px. Zero. Knife-edge precision is the aesthetic.
5. **Don't add decorative elements** — no lines, no gradients, no icons, no badges, no stars. The photography and typography are the ONLY visual elements.
6. **Don't write marketing copy.** "World's best restaurant" or "An unforgettable dining experience" is wrong. Let the food speak. The voice is the chef's — quiet, specific, about ingredients and process.
7. **Don't use dark mode.** The warm off-white is essential — it's the color of the linen napkin, the ceramic plate, the wooden table. Dark backgrounds belong to nightclubs, not Nordic restaurants.

</design-system>
