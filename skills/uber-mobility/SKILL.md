---
name: uber-mobility
description: Uber's black-and-white mobility platform design system. Pill-shaped everything (999px radius), transit-system information density, urban night photography with video backdrop, billboard-weight Urbanist 800 display type, functional dual-input hero, no accent colors. Black IS the brand.
---

<design-system>

## Identity
Uber Mobility is a design system for the world's largest ride-hailing and delivery platform -- the product that turned "Uber" into a verb. The design language is a black-and-white binary executed with absolute confidence: no accent colors, no gradients, no decoration. Pill-shaped interactive elements, urban night photography, and billboard-weight typography communicate speed, efficiency, and ubiquity. Every element is a transit system: compact, clear, built for scanning at speed.

**Target users**: Urban commuters who tap a button instead of hailing a cab. Late-night riders heading home safely. Uber Eats customers craving pad thai at 11pm. Drivers earning on their own schedule. They value speed over ceremony -- tap, ride, done.

**Vibe**: Transit-system efficiency meets Apple billboard confidence -- "Massimo Vignelli meets a ride request."

**Domain conventions**: ETAs in minutes ("3 min away"), upfront fares ("$12.40 estimated"), driver ratings (4.95), product tiers (X, Comfort, Black, XL), order tracking with live status, pill-shaped everything.

**Core principle**: Black and white is not a limitation -- it is the brand. The absence of color IS the design decision.

## Signature Moves
1. **999px pill radius on ALL interactive elements** -- buttons, chips, nav pills, cuisine selectors, badges. The capsule shape IS Uber's visual identity.
2. **Billboard-weight 800 display type** -- Urbanist at -0.04em letter-spacing. Headlines hit with transit-poster authority.
3. **Functional dual-input hero** -- pickup/destination fields with see-prices CTA over atmospheric urban night video. The product IS the hero.
4. **City photo breaks** -- full-bleed urban night photography between content sections with gradient overlay and positioned text. Rhythm through urban identity.
5. **Floating order tracking card** -- white card absolute-positioned on delivery photo with live green pulse dot, ETA countdown, and order details.
6. **True black footer** -- not near-black, not dark gray. #000000. Anchors the page with absolute authority.
7. **No accent color** -- black buttons, black text, black icons. Zero color outside black/white/gray. Discipline IS the brand signal.
8. **Numbered feature walkthrough** -- black circles with white numbers in sequential list format. Functional, not decorative.
9. **Product tier cards with real data** -- pricing ("From $8.40"), ETAs ("3 min away"), compact card grid showing what you get and what it costs.
10. **White/black section alternation** -- white content > black stats band > white > black driver CTA > white > black footer.

## Hard Constraints
- ALL buttons, chips, pills, and interactive elements use 999px border-radius. Full pill shape. Non-negotiable.
- Cards and containers use 8px (standard) or 12px (featured) radius. Never pill shapes on containers.
- Display headings use Urbanist weight 800. Section headings use 700. The heavy weight IS the identity.
- No accent colors anywhere in the UI chrome. Black, white, and functional grays only.
- Shadows never exceed rgba(0,0,0,0.12) for cards. If you can clearly see the shadow, it is too strong.
- Primary reading surface is white (#ffffff). Black backgrounds used only for stats bands, driver CTA, and footer.
- Every photo must feel urban and nocturnal. No daytime, suburban, or nature imagery.
- No serif fonts. Geometric sans-serif only.
- No gradients on surfaces. Every surface is flat solid color. Gradients only on photo overlays for text readability.

## Anti-Patterns
- NOT a colorful consumer app with accent rainbows and playful illustrations -- Uber has no accent color
- NOT dark mode with neon accents -- Uber web is WHITE background with BLACK chrome, not the reverse
- NOT a luxury fashion editorial with thin serifs and whisper-light type -- Uber type is HEAVY (700-800)
- NOT a startup landing page with hero metric cards and gradient text -- the product interface IS the hero
- NOT airy and spacious -- Uber is deliberately compact and information-dense, transit-system spacing
- NOT a generic SaaS template with hero > features > pricing > testimonials > CTA structure
- NOT using stock photos of smiling people -- urban night photography only

## Section Archetypes
- **Ride request hero**: Full-viewport video backdrop + dual input (pickup/destination) + see-prices CTA pill
- **Product tier selector**: Card grid with circular black icons, ride names, descriptions, pricing + ETA metas
- **City photo break**: Full-bleed night photography, clamp(300px, 35vw, 480px), gradient overlay, positioned text
- **Ride experience split**: Photo with floating ETA badge (left) + numbered feature list with dividers (right)
- **Stats band**: Black background, 4-column oversized numbers (weight 800), uppercase labels
- **Delivery/Eats**: City night photo with floating order card (status dot + ETA) + cuisine pill grid + CTA
- **Safety features**: 3-column card grid with circular black icons, titles, descriptions, hover border+shadow
- **Driver earnings CTA**: Black section with headline, dual white pill CTAs, earning stat blocks
- **Plan ahead cards**: 2-column card grid with icon area, title, description, black CTA pill

## Typography
- **Urbanist** (Google Fonts) -- clean geometric sans-serif approximating Uber's proprietary UberMove. Weight 800 for display (billboard impact), 700 for section headings, 500-600 for UI/buttons, 400 for body. The heavy display weight creates transit-poster authority.
- WHY: Urbanist shares UberMove's geometric, square-proportioned character at heavy weights. The 800 weight at -0.04em tracking produces headlines with billboard urgency that nothing else in the catalog achieves.

## Color
- **True black (#000000)**: Primary buttons, headlines, nav pill active, footer, stats row. The brand color.
- **Pure white (#ffffff)**: Page background, card surfaces, text on dark. The counter-brand.
- **Body gray (#4b4b4b)**: Body text and descriptions. True mid-gray, no warm/cool bias.
- **Muted gray (#afafaf)**: Metadata, tertiary text, footer secondary. De-emphasized content.
- **Chip gray (#efefef)**: Chip/filter backgrounds. Ultra-light functional surface.
- **Hover gray (#e2e2e2)**: Interactive hover states. Clear feedback without warmth.
- **Status green (#12b76a)**: Live order tracking dot ONLY. The sole non-gray, non-black color in the system.

## Supporting Files
- `https://joincommons.cc/api/items/uber-mobility/raw/design-language` -- Complete visual system: color, typography scale, spacing grid, shadow tokens, motion patterns, component catalog, layout grids
- `references/asset-direction.md` -- Urban night photography direction, video guidance, data-as-visual patterns, verified starter assets
- `https://joincommons.cc/api/items/uber-mobility/raw/anti-patterns` -- Domain-specific traps across visual, structural, content, and UX dimensions
- `assets/tokens.dtcg.json` -- DTCG tokens with color, semantic (order status, ride ETA, pill states), and typography groups
- `assets/exhibit.html` -- Reference implementation: complete landing page with video hero, product tiers, ride experience, delivery tracking, safety features, driver CTA, plan ahead

## Workflow
1. Read `https://joincommons.cc/api/items/uber-mobility/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for urban photography sourcing
3. Build with strict black/white palette -- resist adding accent colors
4. Self-critique against `https://joincommons.cc/api/items/uber-mobility/raw/anti-patterns`

## Gotchas
- Adding a "brand color" accent -- Uber has none. Black IS the accent. Resist the urge.
- Using rounded corners less than 999px on buttons -- the full pill is non-negotiable.
- Making it too airy -- Uber is information-dense. Transit-system spacing, not editorial breathing room.
- Defaulting to dark mode -- Uber's web presence is white-background with black chrome, not the reverse.
- Using heavy shadows -- Uber shadows are whisper-light (0.12 opacity). If you can clearly see it, it is too strong.
- Forgetting the urban night imagery -- every photo should feel like a city after dark.
- Using serif fonts -- Uber is exclusively geometric sans-serif. No serifs anywhere.
- Round number syndrome -- use $8.40, $12.80, $24.60 not $8, $13, $25. Real pricing has precision.

</design-system>
