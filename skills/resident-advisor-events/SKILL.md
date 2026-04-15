---
name: resident-advisor-events
description: Dark, atmospheric nightlife discovery platform inspired by Resident Advisor and Criterion Channel. Event feed rows with genre-coded pills, artist spotlights, venue cards with moody photography, editorial magazine section, and typographic city selector. Violet-tinted OKLCH dark palette (hue 290) with warm amber accent (hue 65). Syne display + Instrument Sans body. Data-dense event rows are the primary visual -- lineups, times, venues, prices, and ticket status.
metadata: design-skill
---

# Pulse -- Electronic Music & Nightlife

<design-system>

## Identity
The definitive nightlife discovery platform for electronic music culture. Dark, atmospheric, editorial. The interface gets out of the way and lets the music, the venues, and the lineups do the talking. Violet-tinted dark palette with warm amber accent -- the feeling of stepping from a dark street into a lit doorway.

## Product World
- **Who**: Electronic music fans aged 22-38 who go out 2-4 times per month. They know genres by feel (the difference between dub techno and industrial techno is obvious to them). They follow resident DJs, plan trips around festivals, discover music through the scene rather than algorithmic playlists. They use RA, Songkick, and local promoter Instagrams. They care about sound system quality, door policy transparency, and lineup authenticity. They hate ticket scalpers, corporate festival branding, and venues that prioritize bottle service over sound.
- **What**: The definitive nightlife discovery platform -- events, artists, venues, reviews, and tickets for electronic music in every city.
- **Vibe**: Resident Advisor (dark, atmospheric, community-first authority) meets Criterion Channel (curated, opinionated, treating the art form with respect)
- **Domain conventions**: Event names follow "Series Name: Artist1 b2b Artist2, Artist3" format. Times are 24h (22:00, not 10 PM). Prices in local currency with code (EUR 18, not $18). Venue names are proper nouns with neighborhood context. Genres are specific (Techno, House, Ambient, Drum & Bass, Garage) not vague (Electronic, Dance).

## Signature Moves
1. **Event rows, not event cards** -- horizontal rows with tabular-nums time alignment (64px time column) create a schedule/program feel. Cards would make it feel like shopping.
2. **Genre-coded color pills** -- each genre (Techno=violet, House=gold, Ambient=teal, D&B=orange, Garage=green) has a unique OKLCH hue for instant feed scanning
3. **Violet-tinted neutrals** -- every dark surface carries oklch hue 290 at chroma 0.01-0.015. Subconscious nighttime atmosphere without visible purple
4. **City selector as typographic wall** -- oversized Syne 700 city names with superscript event counts. No map, no pins. Names ARE the interface
5. **Warm amber as sole accent** -- oklch(75% 0.14 65) is the only warm tone in a cool palette, like a lit doorway in a dark street. Used sparingly for CTAs and labels
6. **Hero answers "what's tonight?"** -- not a brand manifesto. City + date + event count + time range + price range. Utility with atmosphere
7. **Editorial alongside events** -- reviews, features, interviews sit next to the event feed. Culture platform, not ticket shop

## Hard Constraints
1. Dark mode only -- this product is nocturnal. No light mode. Background oklch(8% 0.015 290), never lighter than 20% for any surface
2. 24-hour time format always (22:00, 00:30, 06:00) -- never AM/PM
3. Currency codes, not symbols (EUR 18, GBP 12, not $18) -- global platform
4. Two fonts with strict roles: Syne for all display text, Instrument Sans for all body/metadata
5. Restrained border-radius -- genre pills 3px, buttons 4px, hover states 6px, feature card 8px, tag pills 100px. Keep corners tight and functional
6. Factual availability status only (Sold out / Low tickets / Available) -- never urgency marketing
7. Genre specificity required -- "Techno" and "House" are different. Never collapse to "Electronic" or "Dance Music"

## Anti-Patterns
1. Neon-on-dark gradients -- this is underground culture, not EDM festival marketing. Violet TINTING at chroma 0.01 is correct; neon purple overlays are wrong
2. Event card grids -- events are list rows (time | info | action), not shopping cards. The schedule metaphor is the product
3. Map-pin navigation -- this audience navigates by venue name, genre, and artist, not geographic proximity
4. Urgency marketing ("Only 3 left!" with pulsing red) -- status is factual, never FOMO-inducing
5. Streaming platform patterns -- no waveforms, no play buttons, no "Now Playing" bars. This is about going OUT
6. SaaS landing structure (hero/features/pricing/CTA) -- this is a content platform with editorial logic

## Visual Vibe
Nocturnal, atmospheric, subterranean, authoritative, warm-in-the-dark, editorial, club-photography-grain, community-driven, city-specific, unhurried

## Section Archetypes
- **Tonight feed**: Time-sorted event rows with genre tags, venue, lineup, price, availability status. This IS the product.
- **Artist spotlight**: Deep profile with origin, bio, stats (events played, cities), genre tags, tracklist. Treats DJs as artists, not content.
- **Venue cards**: Moody photography, capacity, neighborhood. The venue is a character in the story.
- **Magazine/editorial**: Long-form features, reviews, guides, interviews. Treats electronic music as culture, not commodity.
- **City selector**: Large typographic city names with event counts. Global scope, local specificity.

## Hero Archetype
**Photography + typography.** One moody venue/crowd photograph, heavily graded (brightness 0.35, saturate 0.8, violet tint via gradient overlay), with bold Syne 800 display type ("Tonight in [City]") anchored to bottom-left. The hero answers the immediate question: what's happening tonight? Not a brand manifesto, not a video loop -- utility with atmosphere.

## Asset Direction
- **Photography**: Dark, atmospheric club interiors. Low-angle DJ booth shots. Crowd silhouettes with colored stage wash. Moody, not glamorous. Grain is acceptable. Avoid: well-lit posed photos, stock nightlife, anyone visibly posing for camera.
- **Data-as-visual**: Event lineups ARE the visual. Tabular-nums for time alignment. Tracklist tables with track/artist/label columns.
- **Typography-as-art**: City names at oversized scale. Syne at heavy weights carries visual weight without imagery.
- **What NOT to show**: Neon gradients, EDM festival crowds, bottle service, VIP sections, generic party stock.

## Typography
- **Display**: Syne -- geometric, architectural, Berlin-poster energy. Tight letter-spacing and heavy weights evoke club flyer typography without being retro.
- **Body**: Instrument Sans -- clean, contemporary, slightly warm. European character without Swiss sterility.

## Color
OKLCH palette, violet-tinted darks with warm amber accent:
- `oklch(8% 0.015 290)` -- Deep background: the darkness of a club at 2am
- `oklch(12% 0.012 290)` -- Surface: elevated cards and panels
- `oklch(93% 0.01 60)` -- Primary text: warm off-white
- `oklch(65% 0.015 290)` -- Secondary text: muted, readable
- `oklch(75% 0.14 65)` -- Amber accent: warmth, action, the only warm color
- Genre colors: violet=techno, gold=house, teal=ambient, orange=D&B, green=garage
- Status colors: red=sold-out, amber=low-tickets, green=available

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/resident-advisor-events/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing, motion, component patterns |
| `references/asset-direction.md` | Asset sourcing: photography direction, data-as-visual patterns, verified starter assets |
| `https://joincommons.cc/api/items/resident-advisor-events/raw/anti-patterns` | 16 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG tokens: color, semantic (genre, status), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

## Workflow
1. Read `https://joincommons.cc/api/items/resident-advisor-events/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for photography sourcing and data-display patterns
3. Build the event feed first -- it's the core product. Everything else supports discovery.
4. Self-critique against `https://joincommons.cc/api/items/resident-advisor-events/raw/anti-patterns`
5. Validate tokens against `assets/tokens.dtcg.json`

## Gotchas
1. **Time format**: Always 24h (22:00, 00:30, 06:00). Never AM/PM.
2. **Price format**: Currency code + amount (EUR 18, GBP 12). Never $ symbol alone.
3. **Genre specificity**: "Techno" and "House" are different genres. Never collapse them.
4. **Venue neighborhoods**: Always include the neighborhood ("Tresor, Kreuzberg" not just "Tresor").
5. **Event naming**: Real format is "Series: Artist1, Artist2" or "Series: Artist1 b2b Artist2". Never "DJ Night featuring..."
6. **Dark mode only**: A light mode would feel wrong, like turning on the house lights at 3am.

</design-system>
