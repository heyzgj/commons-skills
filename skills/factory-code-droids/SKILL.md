---
name: factory-code-droids
description: Dark forge aesthetic for autonomous AI engineering platforms. Violet-tinted dark surfaces, orange accent, live CLI terminal hero, real PR diffs, activity feed, config-as-code integration blocks. JetBrains Mono dominant with Outfit headings.
---

<design-system>

## Identity
Factory Code Droids is a design system for autonomous AI engineering platforms -- products that deploy AI "Droids" to autonomously write, test, and ship production code. The design language communicates industrial confidence through real code output, live operational data, and zero decorative elements. Every pixel serves a function.

**Target users**: Engineering leaders (VP Eng, CTO, Staff Engineers) at 50-500 person companies drowning in tech debt. They live in GitHub, Slack, and CI dashboards. They've used Copilot and Cursor but want something that autonomously ships -- full autonomy, not autocomplete.

**Vibe**: Factory.ai's mission control meets GitHub's PR interface -- industrial confidence, real engineering data, zero decoration.

**Domain conventions**: Git commit conventions (fix:, feat:, chore:, refactor:), CI pipeline stages, PR terminology, Droid identifiers (Droid-7, Droid-3), elapsed time counters, test suite output, YAML config files.

## Signature Moves
1. **Terminal-as-hero** -- no ambient video, no photo, no illustration. The animated CLI demo IS the hero. Lines appear with staggered delays showing the tool connecting, analyzing, fixing, testing, and opening a PR.
2. **Activity feed over metrics** -- a live Droid feed with 12 entries and a pulsing "Live" indicator demonstrates scale better than big vanity numbers.
3. **Config-as-feature** -- integration points are YAML/code snippets, not icon cards with descriptions. Configuration IS the explanation.
4. **Orange accent on violet-dark** -- warm industrial orange (oklch 0.7 0.18 55) against cold violet-tinted surfaces. Not the expected green-on-dark.
5. **Monospace body text** -- JetBrains Mono at 80%+ surface coverage. The entire page reads like terminal output.
6. **Product output cards** -- three cards showing real PR diff, test results, and deploy log. Not feature descriptions.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L < 0.12, hue 270 (violet-tinted).
2. JetBrains Mono for 80%+ of page surface. Outfit for headings only.
3. Accent orange hue 55, chroma 0.14-0.18. Never neon, never red.
4. All code in diffs and terminals must be real, readable Go/TypeScript -- no lorem ipsum.
5. No ambient video anywhere -- the terminal animation IS the motion.
6. No metrics section with big numbers -- use activity feed instead.

## Anti-Patterns
1. NOT cyan-on-dark or purple-blue AI gradients -- generic chatbot aesthetic.
2. NOT ambient video behind text -- the terminal IS the hero motion.
3. NOT generic SaaS hero-features-pricing-CTA flow -- every section shows the product in action.
4. NOT friendly, approachable, or warm tone -- this is intimidating industrial-grade tooling.
5. NOT abstract SVG illustrations or robot imagery -- show real code output instead.
6. NOT icon + heading + paragraph feature cards -- show config snippets instead.

## Section Archetypes
- **CLI Terminal Hero**: Live terminal with animated command output. Lines appear with realistic delays. Blinking cursor. The product demonstrating itself.
- **Output Cards**: Three product artifacts (PR diff, test results, deploy log) rendered as functional code blocks.
- **Droid Activity Feed**: GitHub-style activity feed showing 12+ Droids merging PRs, opening fixes, running tests. Live pulse indicator.
- **Config Snippets**: YAML/code blocks showing integration setup (repo config, GitHub App, Slack, CI pipeline).
- **Terminal CTA**: CLI command (`$ forge init`) as the call to action.

## Hero Archetype
Terminal-as-hero. No photo, no video, no illustration. A fully rendered terminal window with animated CLI output showing the tool connecting to a repo, analyzing an issue, writing a fix, running tests, and opening a PR. The terminal IS the hero content.

## Typography
- **JetBrains Mono** (dominant, 80%+): Body, nav, terminals, diffs, labels, buttons, config blocks. Chosen because the product IS code.
- **Outfit** (headings only, 700/900): Hero headline, section headings, CTA headline. Weight 900 creates industrial impact.

## Color
All OKLCH, violet-tinted backgrounds (hue 270), orange accent (hue 55):
- **Backgrounds**: 4-tier -- base(0.035), surface(0.07), elevated(0.11), inset(0.05). All hue 270.
- **Text**: 3-tier -- primary(0.92), secondary(0.62), muted(0.42). All hue 270.
- **Accent**: Orange oklch(0.7 0.18 55). Dim variant oklch(0.55 0.14 55).
- **Status**: success=green(145), error=red(25), info=blue(250), warning=amber(85).
- **Diff**: additions green(145), deletions red(25).

## Supporting Files
- `https://joincommons.cc/api/items/factory-code-droids/raw/design-language` -- complete visual system (colors, typography, spacing, motion, components)
- `references/asset-direction.md` -- photography, video, and data-as-visual sourcing guidance
- `https://joincommons.cc/api/items/factory-code-droids/raw/anti-patterns` -- domain-specific visual, structural, content, and UX traps
- `assets/tokens.dtcg.json` -- DTCG design tokens (color, semantic, typography groups)
- `assets/exhibit.html` -- reference implementation (27KB self-contained landing page)
- `assets/design-skill.json` -- manifest with discovery metadata

## Workflow
1. Read `https://joincommons.cc/api/items/factory-code-droids/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/factory-code-droids/raw/anti-patterns`

## Gotchas
1. **Fake code kills credibility.** Engineers read diffs. Use real patterns (race conditions, N+1 queries, mutex locks).
2. **Terminal output needs specificity.** "Analyzing src/payments/processor.go:142" not "Analyzing your code...".
3. **Commit messages follow convention.** Imperative mood: "fix: resolve payment mutex race condition".
4. **Activity feed entries must be diverse.** Mix merged/opened/closed, fix/feat/chore/refactor/test prefixes.
5. **Dark theme depth = surface tiers.** Use bg tiers for elevation, not box-shadows.
6. **Accent orange must stay warm, not neon.** oklch(0.7 0.18 55), chroma 0.14-0.18.

</design-system>
