---
name: Blue Note Vinyl
description: Heritage jazz record label with warm editorial design. Instrument Serif typography, ivory OKLCH backgrounds, amber accents, square album cards, turntable video atmosphere.
version: "4.0"
---

# Blue Note Vinyl

<design-system>

## Identity
A heritage jazz record label website where the album cover IS the hero and the design feels like browsing a physical record crate. Warm ivory backgrounds evoke aged record sleeves, amber accents recall studio light, and square album cards with zero border-radius feel like actual vinyl. Instrument Serif channels Reid Miles' iconic Blue Note cover typography. The design treats 87 years of recorded jazz history as a cultural institution, not a streaming service -- you don't play Blue Note, you HOLD it.

## Product World
- **Who**: Jazz lovers who own 200+ records. Vinyl collectors hunting original pressings. Young listeners discovering jazz through lo-fi playlists. Audiophiles arguing about pressing quality. Bartenders choosing the evening's soundtrack. They don't stream Blue Note -- they HOLD it.
- **What**: The most important jazz label in history. 87 years of recording American music. Catalog + vinyl destination for collectors.
- **Vibe**: Aesop meets A24 -- editorial warmth with cinematic restraint. An aged record sleeve, not a Spotify playlist.
- **Domain conventions**: Album titles in italic. Artist name above title. Year as metadata. Discography as list, not grid. Mono/stereo/remastered as edition markers. Pressing weight (180g) as quality signal.

## Signature Moves
1. **No headline on hero load** -- opens with full-bleed album photography, label name at bottom
2. **Square album cards** -- aspect-ratio: 1, like actual vinyl records
3. **Italic album titles everywhere** -- typographic convention from record sleeves
4. **Zero border-radius on all containers** -- straight edges like album sleeve corners (radius token: 0px)
5. **Warm-tinted everything** -- even shadows use warm OKLCH values (hue 55)
6. **mix-blend-mode: difference on nav** -- nav inverts against any background
7. **Discography as list, not grid** -- editorial, not e-commerce
8. **Video as atmosphere, not hero** -- turntable footage in "Listening Room" section at 0.6 opacity

## Hard Constraints
- Border-radius: 0px on all containers, cards, and images. 50% only for circular timeline dots. See `radius` tokens in `assets/tokens.dtcg.json`.
- Light mode only. No dark theme toggle. The warm ivory background IS the brand.
- Instrument Serif for all display text. IBM Plex Sans weight 300 as body default.
- All OKLCH colors warm-tinted at hue 55-65. No cool neutrals, no pure grays.
- Album cards must be square (aspect-ratio: 1). No landscape or portrait album cards.
- Video opacity minimum 0.5 -- always visible as content, never invisible wallpaper.

## Anti-Patterns
- NOT a Spotify-style streaming interface with play buttons and progress bars
- NOT a generic e-commerce product grid with add-to-cart buttons
- NOT dark mode with neon accents (jazz clubs are warm-lit, not nightclubs)
- NOT a music blog with article cards and read-more links
- NOT a festival poster with chaotic typography and bright colors
- NOT a sterile white Apple-style product page (vinyl is warm and textured)
- NOT lo-fi aesthetic (pixel art, anime, pastel, VHS) -- Blue Note recorded A Love Supreme

## Visual Vibe
Warm ivory, amber light, aged paper, turntable needle, studio grain, editorial calm, collector's reverence, velvet quiet

## Section Archetypes
- **Album cover opener**: Full-bleed album art or vinyl photography as hero -- the music IS the introduction
- **New releases grid**: Square aspect-ratio album cards (like actual records), artist + italic title + year
- **Featured artist + discography**: Split layout with photography and chronological discography list
- **Listening room**: Atmospheric video/photo section that evokes the sensory experience of listening
- **Label timeline**: Decade-by-decade history with key releases per era
- **Catalog showcase**: Stats and photography -- the archive as heritage

## Hero Archetype
Photo-typography. Full-bleed album cover or vinyl photography with the label name emerging at the bottom. No headline on initial view -- the album IS the hero, like Noma opens with food. The label name appears at the base, quiet and confident.

## Asset Direction
- **Photography**: Vinyl records, turntable close-ups, record sleeves, studio equipment, warm-lit interiors. Full color with warm tones. No grayscale. No posed musicians. The OBJECTS tell the story.
- **Data-as-visual**: Discography lists (title + year), timeline decades, catalog statistics (4,000+ albums, 87 years, 1,200 artists)
- **Video**: Turntable spinning, needle dropping, studio session atmospherics. Used as ATMOSPHERE in a "listening room" section, not as hero wallpaper. Opacity 0.5-0.7.
- **Typography-as-art**: Oversized serif label name, italic album titles, decade numbers in timeline
- **What NOT to show**: No headphones, no digital waveforms, no equalizer bars, no people at laptops, no microphone close-ups

## Typography
Instrument Serif for display -- elegant editorial presence that evokes Reid Miles' iconic Blue Note cover typography without copying it. The serif has warmth and personality, like the music itself. IBM Plex Sans (weight 300-500) for body -- clean, readable, slightly technical in a way that respects the engineering of sound.

## Color
All OKLCH, warm-tinted throughout (hue 55 -- amber/ivory):
- **Background**: oklch(94.5% 0.015 55) -- aged ivory paper
- **Surface**: oklch(92% 0.018 55) -- slightly deeper, like a record sleeve
- **Text primary**: oklch(18% 0.02 55) -- warm near-black, not cold
- **Text secondary**: oklch(35% 0.015 55) -- readable body text
- **Accent**: oklch(62% 0.14 65) -- amber gold, the color of warm studio light
- **Accent light**: oklch(78% 0.08 65) -- for dark-background contexts
- **Border**: oklch(80% 0.02 55) -- subtle warm dividers

Semantic meaning: amber = heritage, warmth, analog value. The entire palette is warm because vinyl IS warm -- the color of aged sleeves, studio light, amber lacquer.

## Supporting Files
- `https://joincommons.cc/api/items/blue-note-vinyl/raw/design-language` -- Complete visual system with all tokens, scales, and component patterns
- `references/asset-direction.md` -- Photography and video sourcing guidance with verified starter assets
- `https://joincommons.cc/api/items/blue-note-vinyl/raw/anti-patterns` -- Domain-specific traps across visual, structural, content, and UX categories
- `assets/tokens.dtcg.json` -- DTCG tokens (color, semantic, typography, radius)
- `assets/design-skill.json` -- Manifest with metadata, coverage, and discovery fields

## Workflow
1. Read `https://joincommons.cc/api/items/blue-note-vinyl/raw/design-language` for the full visual system
2. Read `assets/tokens.dtcg.json` for exact OKLCH values and typography tokens
3. Read `references/asset-direction.md` for asset sourcing guidance
4. Build following the product world and design system above
5. Self-critique against `https://joincommons.cc/api/items/blue-note-vinyl/raw/anti-patterns`

## Gotchas
1. **Warm is correct here** -- vinyl, jazz clubs, studio light are genuinely warm. But don't push into orange. Stay in amber/ivory (hue 55-65, chroma 0.01-0.02 for surfaces).
2. **Album art is sacred** -- never crop, rotate, or overlay text on album covers. They're complete compositions.
3. **Discography is chronological** -- always earliest to latest, or latest to earliest. Never shuffled.
4. **Mono vs stereo matters** -- collectors care about pressing details. Include edition info when showing catalog items.
5. **Jazz is NOT lo-fi** -- lo-fi is a derivative genre. Don't use lo-fi visual codes (pixel art, anime, pastel) for a label that recorded Coltrane.
6. **Reid Miles is the design standard** -- his Blue Note covers are the benchmark. Study them for taste, but don't imitate. The asymmetric typography and bold use of negative space are the lesson.

</design-system>
