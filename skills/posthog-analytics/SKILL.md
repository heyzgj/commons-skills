<design-system>

## Product World
- **Who**: Engineers who debug user flows by watching session replays. Product managers who run A/B tests without bugging engineering. Growth teams who build funnels. Open-source enthusiasts who self-host everything. They chose PostHog because it's open-source, self-hostable, and doesn't cost $50K/year.
- **What**: Open-source product analytics suite — session replay, feature flags, A/B testing, surveys, data warehouse — all in one platform
- **Vibe**: GitHub meets Notion — developer-beloved, anti-corporate, playful hedgehog mascot energy. The Basecamp of analytics: opinionated, transparent, irreverent
- **Domain conventions**: Event-based analytics, funnel stages, cohort retention, feature flag rollout percentages, NPS scores, p-values for experiments, session timeline events (pageview, click, rage click, scroll)

## Core Principle
Developer tools should feel like they were built by developers who hate enterprise software — playful, fast, transparent, no-BS.

## Visual Vibe
Energetic, anti-corporate, hacker-friendly, yellow-bright, bold, approachable, community-driven, open-source-proud, irreverent, mascot-driven

## What It's NOT
- NOT a corporate enterprise dashboard (no navy blue + gray + stock photos of boardrooms)
- NOT a slick VC-funded startup with smooth gradients and vague promises (this ships real code)
- NOT Amplitude/Mixpanel clone aesthetic (no dark analytics dashboards trying to look "powerful")
- NOT generic SaaS template (no hero -> features grid -> testimonials -> pricing -> CTA)
- NOT minimalist to the point of being sterile — PostHog has personality, character, humor
- NOT using warm cream/beige backgrounds — this is white + yellow + black, crisp and energetic

## Section Archetypes
- **Product demo browser**: Tabbed interface showing actual product UI (analytics, session replay, feature flags, A/B tests, surveys) in a mock browser window
- **Self-host callout**: Docker compose snippet + "own your data" messaging — code as content
- **Community proof**: Real team photos, open-source stats (GitHub stars, MIT license), remote-first culture
- **Generous pricing**: Emphasize the free tier first, pay-per-event simplicity second
- **Session replay showcase**: Animated cursor movement, click timeline, rage-click detection

## Hero Archetype
Install command as hero + hedgehog mascot badge. WHY: developers evaluate tools by trying them, not reading about them. The one-line npm install IS the call to action. The hedgehog badge establishes the anti-corporate personality immediately.

## Asset Direction
- **Photography**: Real team/community photos — people collaborating, remote work setups, hackathons. Full color, not grayscale. Should feel candid and energetic, not staged corporate.
- **Data-as-visual**: Product UI mocks are the primary visual — analytics dashboards, session replay timelines, feature flag tables, experiment results with real p-values. This IS the visual asset.
- **Video**: Product demo or team culture clips. Visible at 0.5+ opacity with gradient overlay for text readability.
- **Code blocks**: Docker compose configs, npm install commands, posthog-js snippets — dark background, syntax highlighted
- **What NOT to show**: Stock photos of dashboards on screens, generic "data visualization" imagery, abstract gradient art. The actual product UI is more compelling than any metaphor.

## Typography
- **Urbanist** (700-800) for display — bold, geometric, energetic. It has the roundness that matches the hedgehog mascot's approachability without being childish. Most dev tools use sharp geometric sans; Urbanist's warmth signals "we're different."
- **IBM Plex Sans** (400-600) for body — credible, readable, the grown-up in the room. Balances Urbanist's playfulness with technical authority.
- **IBM Plex Mono** (400-500) for code — natural partner to Plex Sans, consistent with the engineering-first identity

## Color
- **Yellow** `oklch(85% 0.18 85)` — PostHog's signature. Used for badges, highlights, mascot background, playful accents. The anti-blue. Communicates energy, optimism, standing out from the navy-blue analytics crowd
- **PostHog Blue** `oklch(45% 0.25 265)` — CTAs and links. Deep, confident blue that contrasts sharply with yellow
- **Black** `oklch(12% 0.005 85)` — Text and dark UI sections. Warm-tinted very subtly toward yellow for cohesion
- **White** `oklch(99% 0 0)` — Primary background. Clean, not warm-tinted (the yellow accents provide all the warmth needed)
- **Warm white** `oklch(97% 0.02 85)` — Secondary surfaces, pricing cards, stats strip
- **Red** `oklch(60% 0.22 30)` — Errors, rage clicks, alerts. Semantic, not decorative
- **Green** `oklch(70% 0.18 145)` — Success states, active flags, positive metrics

## Bold Choices
1. **Tilted badges** — Yellow badges with slight CSS rotation (`rotate(-1deg)`) and black borders. Playful, hand-drawn feel without actual hand-drawn elements
2. **Hedgehog everywhere** — The mascot emoji appears in badges, CTAs, footer. It's the brand's personality anchor
3. **Install command as hero CTA** — Not "Get started" button but actual `npm install` in a terminal block
4. **Product tabs with mock browser** — Complete with traffic light dots and URL bar. The product IS the marketing
5. **Black-bordered yellow accents** — Yellow + 2px black border on badges and CTAs gives a sticker/patch aesthetic
6. **Hover-to-reveal chart values** — Chart bars show values on hover via `::after` pseudo-element
7. **Rage click highlighting** — Session replay timeline distinguishes rage clicks with red-tinted event cards
8. **Squiggle underline on "open-source"** — Yellow bar under the hero headline keyword, slightly rotated

## Workflow
1. Read `https://joincommons.cc/api/items/posthog-analytics/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/posthog-analytics/raw/anti-patterns`

## Gotchas
- Do NOT make this look corporate. If it looks like it could be Salesforce, start over
- Yellow is an ACCENT, not a background. White or black backgrounds; yellow for highlights, badges, and small elements
- The hedgehog is not a decoration — it's brand personality. Include it but don't overdo it (3-5 instances)
- Product demos must show REAL analytics UI patterns (funnels, events, flags) not abstract data
- Code blocks must be syntactically plausible — engineers will notice fake code instantly
- Don't use warm cream/beige backgrounds — the playful yellow accents against clean white IS the aesthetic

</design-system>
