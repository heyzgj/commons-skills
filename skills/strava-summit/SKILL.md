<design-system>

## Product World
- **Who**: Morning runners checking pace splits before coffee. Cyclists obsessing over KOMs and Strava segments. Triathletes tracking swim-bike-run. Casual hikers wanting route maps. 120M+ athletes who move, measure, and compare.
- **What**: The social network for athletes — turns GPS data into stories, competition, and community.
- **Vibe**: Garmin dashboard meets Instagram feed — performance data presented as social content.
- **Domain conventions**: Pace in min/km or min/mi. Elevation in meters. Distance in km. Segments have KOM/QOM (King/Queen of Mountain). Kudos = likes. Activities = workouts. PR = Personal Record. Splits = per-km/mi breakdowns.

## Core Principle
Athletic data is the content — every chart, split time, and elevation profile tells the story of effort.

## Visual Vibe
Energetic, clean, competitive, social, data-rich, aspirational, community-driven, honest, performance-focused, pure

## What It's NOT
- NOT a wellness/mindfulness app — this is competitive, not calm
- NOT warm/cozy — pure white canvas, no cream backgrounds, no soft pastels
- NOT a generic fitness app — Strava is specifically about GPS-tracked outdoor activities
- NOT gamified with badges everywhere — the DATA is the reward, not cartoon achievements
- NOT a coaching platform — it's athlete-to-athlete, peer-driven
- NOT dark-mode-first — the white canvas lets athlete photography and route maps provide all the color

## Section Archetypes
- **Activity Feed**: Social cards with route maps, pace/distance/time stats, kudos, comments
- **Segment Leaderboard**: Competitive ranking tables with times, speeds, elevation profiles
- **Training Heatmap**: GitHub-style contribution graph showing activity frequency and intensity
- **Year in Review**: Large typographic stats — total distance, elevation, PRs broken
- **Device Ecosystem**: Watch/computer integrations (Garmin, Apple Watch, Wahoo)
- **Elevation Profile**: Bar chart visualizations of climb difficulty and grade percentages

## Hero Archetype
Video-typography. Athletic motion footage (running, cycling) as background with bold headline overlay. WHY: Strava is about movement — still images can't capture what it feels like to be mid-stride on a mountain trail. The video IS the feeling of the product.

## Asset Direction
- **Photography**: Trail running, mountain cycling, open water swimming. Action shots with dramatic landscapes. Avoid studio/gym shots — Strava is outdoor GPS activity.
- **Data-as-visual**: Elevation profiles, pace charts, heatmaps, split tables — the data IS the visual asset. Real-looking activity stats (10.2 km, 4:48/km, 48:53 elapsed).
- **Video**: Athletic motion — runners on trails, cyclists on roads. Used as hero background, not decorative. Minimum 0.5 opacity.
- **What NOT to show**: Indoor gym, yoga, meditation, generic fitness stock. No treadmills. No protein shakes. This is outdoor, GPS-tracked movement.

## Typography
- **Urbanist** (display, 700-800): Clean geometric with athletic energy. Strong enough for large stat numbers and bold headlines without feeling delicate. Chosen over Inter/DM Sans for its wider letterforms that feel more open and active.
- **IBM Plex Sans** (body, 400-600): Technical precision for data-heavy content. Excellent tabular numerals for pace/time/distance. Pairs with Urbanist's geometry without competing.

## Color
- **Background**: Pure white #ffffff (oklch 100% 0 0) — zero chroma, zero tint. The white canvas lets athlete photography and Strava Orange provide all visual interest.
- **Strava Orange** oklch(65% 0.22 35) / #FC4C02: THE brand color. Used for CTAs, PR badges, accent numbers, active states. Singular and dominant.
- **Text Primary** #111111: Near-black for maximum readability on white.
- **Text Secondary** #666666: Supporting text, metadata, timestamps.
- **PR Green** #00b34a / oklch(65% 0.18 145): Personal records, positive changes, improvement metrics.
- **Effort Red** #e53935: Heart rate zones, max effort, warnings.
- **Pace Blue** #1976d2: Cycling activities, speed metrics. Activity-type differentiation.

## Bold Choices
1. **Tabular numerals everywhere** — font-variant-numeric: tabular-nums on all stat displays for aligned columns
2. **Activity cards as social media posts** — avatar + name + timestamp + route photo + stats + kudos/comments
3. **Training heatmap** — GitHub-style contribution graph applied to athletic activity, 52 weeks visible
4. **Elevation bar charts** — JS-generated from data arrays, bars with hover effects
5. **PR badges** — small green pills on activity titles when a personal record is set
6. **Year-in-review hero stat** — oversized tabular number (3,847 km) in Strava Orange on black background
7. **Segment leaderboard with "You" row** — highlighted row showing user's own ranking at #47, making the competition personal
8. **Pure white canvas** — no warm tint, no off-white, letting orange and photography carry all visual weight

## Workflow
1. Read `https://joincommons.cc/api/items/strava-summit/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/strava-summit/raw/anti-patterns`

## Gotchas
1. **Don't warm the background** — LLMs default to cream/off-white for "premium." Strava is pure white #ffffff. The orange accent provides all warmth needed.
2. **Pace format matters** — running pace is min:sec/km (4:48/km), cycling speed is km/h (28.3 km/h). Never mix them.
3. **Kudos, not likes** — Strava's social vocabulary is specific: kudos, segments, KOM/QOM, activities, not generic social terms.
4. **Route maps, not abstract charts** — activity cards should show actual route photography or map-like visuals, not generic data visualizations.
5. **Elevation is meters, not feet** — Strava's global audience defaults to metric. Show meters for elevation, km for distance.
6. **Don't make it a coaching app** — Strava shows YOUR data. It doesn't prescribe workouts or give AI training advice.

</design-system>
