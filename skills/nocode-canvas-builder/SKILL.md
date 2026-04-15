---
name: nocode-canvas-builder
slug: nocode-canvas-builder
description: Warm, bright no-code app builder where ops teams drag components onto a visual canvas to create internal tools. Component-type color coding (blue data, teal input, purple visual, amber action, green layout) on a warm cream dot-grid canvas. Three-panel builder demo as hero, real domain data (inventory SKUs, use cases with build times). Instrument Sans + Fraunces + JetBrains Mono.
metadata: design-skill
---

# Canvas — Build Internal Tools Without Code

<design-system>

## Identity
A bright, spacious canvas where you drag components, connect your data, and deploy. Canvas is the no-code app builder for ops teams, PMs, and analysts who've outgrown spreadsheets but can't get engineering time. The design language is constructive warmth -- warm cream canvas with component-type colors, dot-grid backgrounds, and the builder interface itself as the primary visual. This is Retool's builder-for-builders energy meets Notion's accessible warmth. Every visual decision makes you feel like you're building something real.

## Product World
- **Who**: Operations managers, revenue ops leads, and "technical PMs" at companies with 50-500 employees. They've outgrown Google Sheets but can't get engineering time. They know Airtable and Notion but need custom logic, permissions, and integrations. They think in spreadsheets and care about getting things done, not about code.
- **What**: A no-code app builder where non-engineers drag components onto a visual canvas to create internal tools -- inventory trackers, approval workflows, KPI dashboards, customer onboarding checklists.
- **Vibe**: retool.com (builder-for-builders, the canvas IS the product) meets notion.so (accessible, warm, "anyone can use this" energy). Constructive, bright, empowering.
- **Domain conventions**: Component types (Table, Form, Chart, Button, Select, Date Picker, Modal), data source names (PostgreSQL, MySQL, REST API, Google Sheets, Airtable), property panels, canvas grids, deploy workflows, permissions (Admin, Editor, Viewer).

## Signature Moves
1. **Component-type color system** -- five distinct OKLCH hues (blue data, teal input, purple visual, amber action, green layout) appear in palette icons, canvas component borders, property panel indicators, and type tags. It's a structural wayfinding system, not decoration.
2. **Three-panel builder as hero** -- no marketing fluff above the fold. The product interface itself -- component palette (left), dot-grid canvas (center), properties panel (right) -- populated with real inventory data is the first thing you see.
3. **Dot-grid canvas background** -- radial dots at 20px intervals signal "snap to grid" and "builder workspace" immediately. Used in the hero canvas and subtly across the page background.
4. **Miniature real components** -- the hero canvas contains actual Table (inventory SKUs), Chart (stock bars), Form (labeled fields), and Button (Slack webhook trigger) components with real data inside them, not wireframe placeholders.
5. **Build time as proof** -- every use case card shows specific build duration ("Built in 2h", "Built in 4h") alongside component count and data source, making the time-savings argument concrete and credible.
6. **Warm cream neutrals** -- all surfaces tinted with oklch hue 80 (warm yellow-brown) instead of pure gray, creating craft-paper warmth like Notion.
7. **Editorial serif accent** -- Fraunces italic on a single keyword in the hero heading ("Build internal tools *visually*") creates premium editorial contrast against the UI's geometric sans-serif.
8. **Property panel depth** -- right sidebar showing PostgreSQL data source, toggle switches for pagination/search/export, and role-based permissions (Admin, Editor) demonstrates real product configuration.

## Hard Constraints
1. Light-mode only -- warm canvas bg oklch(0.98 0.006 80), never dark mode, never pure white
2. Five semantic component-type colors -- blue data, teal input, purple visual, amber action, green layout. Colors carry structural meaning, never random or decorative
3. Instrument Sans for display + body, Fraunces for editorial headings, JetBrains Mono for data values only (SKUs, database names, technical properties)
4. All data sources use real names: PostgreSQL, MySQL, REST API, Google Sheets, Airtable, Snowflake, Firebase
5. All components use real names: Table, Form, Chart, Button, Text Input, Select, Date Picker, Modal, Container, Tabs
6. Neutrals tinted warm (hue 80) for surfaces, cool (hue 260) for text -- never pure gray
7. Use case data must be realistic: specific SKUs (WH-4821), real departments (Warehouse Team), real thresholds ($500 auto-approve)
8. No code of any kind -- no JavaScript, SQL, or JSON. Show toggles, dropdowns, and property panels instead

## Anti-Patterns
1. Dark mode with terminal aesthetics -- this is for ops people who live in Google Sheets, not developers. Dark mode inverts the product's identity
2. Showing code -- JavaScript, SQL, JSON, or API responses contradict the core "no code" product promise
3. Generic SaaS hero > features > pricing > CTA -- page structure follows product concepts: canvas demo > component catalog > data sources > use cases > walkthrough
4. Glassmorphism or gradient accents -- the palette is warm and flat; glass/gradients signal a different product category
5. Abstract illustrations or floating UI elements -- the product interface itself is the strongest visual; no decorative abstractions
6. Inconsistent component colors -- if Table is blue in palette, it must be blue on canvas, in properties, and in tags. Color is structural
7. Placeholder data -- "Acme Corp" and "John Doe" kill credibility instantly; use specific real domain data
8. Stock photography of diverse teams at laptops -- the product is self-visualizing through canvas compositions

## Visual Vibe
Constructive, bright, spacious, warm-neutral, accessible, playful-but-professional, tool-like, grid-snapped, colorfully typed, empowering. Building with LEGO at 2pm on a Tuesday. The moment you drag a Table component, connect PostgreSQL, and your inventory data appears. Notion's warmth meets Retool's power.

## Section Archetypes
- **Live canvas demo** (hero) -- three-panel builder interface with component palette, dot-grid canvas with placed components, and properties panel. The product itself as the first thing you see.
- **Component type catalog** -- organized by function (Data, Input, Visual, Action, Layout) with color-coded type indicators, real component names, and tag pills.
- **Data source connections** -- the databases and APIs users already have (PostgreSQL, MySQL, REST API, Google Sheets, Airtable, Snowflake, Firebase). One-click setup.
- **Use case gallery** -- real internal tools built by real teams (inventory tracker, approval workflow, KPI dashboard). Each with component count, data source, and build time.
- **Builder walkthrough** -- step-by-step (drag, connect, configure, deploy) with interactive visual showing the canvas in action.
- **Social proof** -- team count, tools deployed, average deploy time + quotes with specific names, roles, and company sizes.

## Hero Archetype
**Canvas demo as hero.** A three-panel builder interface (component palette left, dot-grid canvas center, properties panel right) populated with real inventory components (Table, Chart, Form, Button). WHY: For a builder tool, SHOWING the builder is the most persuasive possible visual. The canvas with real components communicates everything a headline can't: the spatial model, the component types, the data connection.

## Asset Direction
- **The product IS the visual**: The builder canvas with real data is the primary asset. No stock photos in the hero.
- **Component-type colors**: Five OKLCH hues for Data/Input/Visual/Action/Layout across palette icons, canvas borders, type tags, and use case meta dots.
- **Dot-grid canvas**: Radial dots at 20px intervals as workspace signifier.
- **Real domain data**: Inventory SKUs, customer onboarding steps, KPI metrics, SLA thresholds.
- **Typography-as-art**: Fraunces italic accent in hero + large editorial stat numbers.
- **Photography**: NOT the primary asset. If used at all, for social proof only.
- **What NOT to show**: No abstract illustrations, no code, no developer-tool screenshots, no decorative gradients.

## Typography
- **Instrument Sans** (display + body) -- warm geometric sans with personality. Not as sterile as Inter, not as soft as Nunito. Technical enough for a builder tool but accessible enough for non-engineers.
- **Fraunces** (editorial headings) -- variable optical-size serif with warmth and character. Creates premium editorial contrast, signals "polished product" not "developer utility."
- **JetBrains Mono** (data values) -- only for SKU numbers, database table names, and technical properties. Signals "this is real data" without making the whole interface feel like a terminal.

## Color
All OKLCH. Light-mode only.

| Token | Value | Meaning |
|-------|-------|---------|
| canvas | oklch(0.98 0.006 80) | Warm cream page background |
| surface-0 | oklch(0.995 0.003 80) | Card/component surfaces |
| surface-1 | oklch(0.965 0.008 80) | Toolbar backgrounds |
| text-primary | oklch(0.16 0.02 260) | Cool-tinted near-black |
| text-secondary | oklch(0.38 0.02 260) | Body text |
| text-tertiary | oklch(0.55 0.015 260) | Labels, metadata |
| accent | oklch(0.52 0.2 260) | CTAs, selection states |
| type-data | oklch(0.58 0.18 250) | Blue -- tables, queries |
| type-input | oklch(0.60 0.17 165) | Teal -- forms, selects |
| type-visual | oklch(0.62 0.18 310) | Purple -- charts, metrics |
| type-action | oklch(0.65 0.18 55) | Amber -- buttons, modals |
| type-layout | oklch(0.58 0.14 145) | Green -- containers, tabs |
| state-connected | oklch(0.62 0.18 145) | Active connections, deploy |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/nocode-canvas-builder/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: canvas compositions, component-type colors, dot-grid patterns, data-as-visual examples, what NOT to show |
| `https://joincommons.cc/api/items/nocode-canvas-builder/raw/anti-patterns` | 16 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color (surface/text/border), semantic (component-type colors, state colors), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit at ~57KB |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>
