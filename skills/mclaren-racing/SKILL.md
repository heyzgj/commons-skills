<design-system>

## Product World
- **Who**: F1 fans who watch every practice session and know sector times by heart. Engineers dreaming of Woking. Fantasy F1 players calculating pit windows. Sponsors evaluating downforce-to-dollar ROI.
- **What**: McLaren Racing's engineering portal — telemetry data, race results, driver performance, car specs, and heritage in one dense, information-rich interface.
- **Vibe**: Bloomberg Terminal meets motorsport paddock — data-dense, papaya-hot, zero decoration. Every pixel carries information.
- **Domain conventions**: Lap times (1:18.742), sector splits, tire compounds (C1–C5, Soft/Medium/Hard), DRS zones, ERS deployment %, g-forces (5.2G lateral), pit stop times (2.1s), championship standings with points.

## Core Principle
The data IS the drama — every number tells a story of thousandths-of-a-second engineering advantage.

## Visual Vibe
Relentless, industrial, precision-engineered, high-velocity, papaya-saturated, carbon-dark, telemetry-dense, motorsport-authentic, sharp-edged, uncompromising

## What It's NOT
- NOT a lifestyle brand page with hero imagery and three feature cards
- NOT a marketing site with "Learn More" CTAs and testimonial carousels
- NOT dark mode with glowing neon accents — this is papaya orange on carbon, not cyberpunk
- NOT a photo gallery of cars — photos support data, data leads
- NOT rounded corners and soft shadows — everything is sharp, 0px radius, like an aero winglet
- NOT sparse — every section is packed with real telemetry, standings, specs, tire data

## Section Archetypes
- **Live telemetry strip**: Edge-to-edge data bar (speed, g-force, throttle, brake, gear, ERS, DRS) with animated CSS bars simulating real-time feeds
- **Driver performance cards**: Photo + number + season stats grid (wins, podiums, points, fastest laps) + championship position bar
- **Race calendar table**: Dense results table with flags, circuit names, positions for both drivers, points scored — like a real FIA standings document
- **Speed trace chart**: Bar chart visualization comparing driver speed traces through circuit sectors
- **Engineering specs grid**: Technical specifications in a dense grid (power, weight, top speed, acceleration, gearbox)
- **Tire compound reference**: Visual compound guide with degradation data and stint length estimates
- **Constructors standings**: Full grid with team colors, progress bars, points
- **Heritage timeline**: Horizontal scrolling timeline (1966–2026) with key milestones

## Hero Archetype
Photo-typography. Full-bleed F1 car at speed as background (high opacity 0.85), with MASSIVE lap time as typography hero (120px+ Barlow Condensed 800). The lap time IS the hero — "1:18.742" — because in F1, the number tells the whole story. Driver name, circuit, sector splits below.

## Asset Direction
- **Photography**: Cars at speed, high contrast, dramatic angles. Night racing shots. Close-up cockpit/wheel shots. Photos are atmospheric backdrop, never the primary content — data is.
- **Video**: Racing footage between data sections — speed, sparks, cornering. Used as a dramatic interlude at 0.75 opacity with heritage stats overlaid. Content you watch: the visceral speed.
- **Data-as-visual**: Animated telemetry bars, speed trace charts, standings tables, spec grids. This is the visual identity — not decorative elements.
- **What NOT to show**: Lifestyle shots, team portraits, sponsor logos as decoration, generic car renders, showroom-style photography.

## Typography
Barlow + Barlow Condensed — DIN-heritage geometric sans with industrial motorsport DNA. Condensed at weight 800 for display because F1 engineering is BOLD, not whisper-weight. Weight 600–700 for data labels. ALL UPPERCASE for section labels and data headers — this is a command center, not a magazine.

## Color
- **Background**: oklch(0.08 0.005 55) — carbon-dark with warm papaya tint, not neutral gray
- **Papaya orange**: oklch(0.75 0.18 55) — THE brand identity. Used for accents, active states, highlights, borders, bars. Everywhere. Most colorful dark exhibit in catalog.
- **Papaya bright**: oklch(0.80 0.20 55) — wins, top positions, hover states
- **Papaya dim**: oklch(0.55 0.14 55) — secondary data bars, comparison traces
- **Text primary**: oklch(0.95 0.01 55) — warm-tinted white
- **Text secondary**: oklch(0.65 0.02 55) — secondary data, metadata
- **Text tertiary**: oklch(0.45 0.015 55) — labels, round numbers
- **Tire soft/red**: oklch(0.60 0.20 25) — soft compound, podium positions
- **Tire medium/yellow**: oklch(0.75 0.14 90) — medium compound
- **Tire hard/green**: oklch(0.70 0.18 145) — inter compound, Aston Martin

## Bold Choices
1. **Live telemetry simulation** — JS-animated speed, g-force, throttle, brake cycling through lap phases with realistic data ranges
2. **Zero border-radius everywhere** — every element is sharp-edged, matching carbon fiber panel aesthetics
3. **1px grid separators** — specs, drivers, standings all use 1px lines creating a dense information grid
4. **Speed trace bar chart** — 32-bar staggered animation comparing two drivers' speed through Monza corners
5. **Papaya saturation dominance** — orange used for 10+ distinct purposes (borders, bars, text, backgrounds, fills) making this the most chromatic dark exhibit
6. **Telemetry strip as structural divider** — edge-to-edge data bar with 2px papaya top border creates a cockpit instrument panel feel
7. **Heritage timeline horizontal scroll** — breaks vertical scroll pattern, creates a timeline you move through like laps
8. **Photo breaks as data moments** — every photo has overlaid engineering facts, never just atmosphere

## Workflow
1. Read `https://joincommons.cc/api/items/mclaren-racing/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/mclaren-racing/raw/anti-patterns`

## Gotchas
- Lap times MUST be in correct format: M:SS.mmm (1:18.742, not 78.742s or 1m18s)
- Tire compounds go C1 (hardest) to C5 (softest) — never reverse this
- Championship points must be internally consistent — driver points should sum to team total
- G-force values: lateral up to 6G, longitudinal braking up to 5G. Don't exceed physics.
- DRS: only available in designated zones when within 1 second of car ahead. It's binary (OPEN/CLOSED), not a percentage.
- Pit stop times: sub-2.0s is exceptional, 2.0–2.5s is normal, 3.0+ is a problem. Never show sub-1.5s.
- Never use generic terms: it's "Grand Prix" not "race event," "power unit" not "engine," "constructors'" not "manufacturers'"

</design-system>
