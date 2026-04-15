---
name: abnormal-shield
description: Dark, clinical security operations aesthetic for AI-powered behavioral threat detection platforms. Severity color spectrum, monospace data hierarchy, live threat feed hero, behavioral baselines, MITRE ATT&CK mappings. Geist + Geist Mono. Data-as-visual, no photography.
---

<design-system>

## Identity
Sentinel is a design system for AI-powered behavioral security platforms -- products that learn organizational behavior patterns and catch anomalies that signature-based tools miss. The design communicates quiet confidence through clinical data presentation, severity-coded color, and zero decorative elements. Every visual carries information.

**Target users**: CISOs and Security Operations Center (SOC) teams at enterprises with 1,000-50,000 employees. They're drowning in false positive alerts from Splunk and CrowdStrike, missing sophisticated attacks that don't match known signatures, and dealing with insider threats that rule-based tools fundamentally cannot detect. They think in MITRE ATT&CK technique IDs, anomaly scores, and mean-time-to-detect.

**Vibe**: darktrace.com (intelligent security, the AI sees what humans can't) meets linear.app (clean data presentation, information without visual clutter)

**Domain conventions**: MITRE ATT&CK technique references (T1078, T1566), anomaly scores (0-100), severity tiers (Critical/High/Medium/Low/Clear), SOC tier escalation (Tier 1-3), MTTD (mean time to detect), false positive rates, incident IDs (THR-YYYY-NNNNN)

**Core principle**: Quiet confidence -- the interface communicates threat intelligence with clinical precision, never alarm.

**Visual vibe**: Calm, authoritative, dark-operational, clinical, precise, blue-tinted, data-dense, understated, mission-critical, trustworthy

## Signature Moves
1. **Green status dot in nav that gently pulses** -- the entire product promise distilled into 8 pixels. Your organization is being watched. Quietly.
2. **Severity spectrum as the only color system** -- no arbitrary brand colors. Every color means something: clear, low, medium, high, critical. The spectrum runs from green (155) through amber (80) to red-orange (25).
3. **Live threat feed as hero** -- not a marketing illustration, not a video. A streaming list of real anomalies with scores. Show the product working.
4. **Side-by-side behavioral baselines** -- normal user vs. anomalous user with quantified behavior bars. The contrast IS the explanation.
5. **Full investigation panel** -- two-column layout with evidence timeline, MITRE ATT&CK technique tags, confidence meter, subject sidebar, and response action buttons.
6. **MITRE ATT&CK technique tags throughout** -- not simplified for marketing. T1078, T1567, T1213. Security engineers recognize these instantly.
7. **Monospace for all operational data** -- timestamps, scores, IDs, technique references in Geist Mono. Sans-serif for narrative text. The font switch signals "data mode" vs. "reading mode."
8. **No hero photography or video** -- the interface IS the visual. Data density replaces decorative assets.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L < 0.20, hue 260 (cool blue-tinted).
2. Geist for display + body text. Geist Mono for all operational data (scores, timestamps, IDs, MITRE tags).
3. Severity colors must carry semantic meaning: clear (155), low (200), medium (80), high (45), critical (25). Never decorative.
4. All security data must be realistic -- real MITRE ATT&CK technique IDs, plausible behavioral scenarios, authentic SOC terminology.
5. No photography, no SVG illustrations, no video backgrounds. Data patterns are the visual.
6. Critical red appears sparingly -- if the default page state feels alarming, the design has failed.
7. Accent blue `oklch(0.65 0.14 250)` for interactive elements only -- links, MITRE tags, focus states.

## Anti-Patterns
- NOT a "hacker movie" aesthetic -- no Matrix green terminals, no glitch effects, no skull-and-crossbones iconography
- NOT alarm-first -- red should be reserved for truly critical threats, not sprinkled across the UI for "security vibes"
- NOT a consumer antivirus -- no shield icons, no "You're Protected!" hero banners, no gamified security scores
- NOT a generic SaaS landing page -- hero-features-pricing-testimonials-CTA structure is wrong; this is an operational tool, show it working
- NOT decoration-heavy -- no glassmorphism, no gradient text, no glow effects for atmosphere. The data itself creates visual interest
- NOT light mode -- security operations centers are dark environments; light themes feel wrong in this domain
- NOT dumbed-down language -- don't replace T1078 with "stolen passwords." The audience knows MITRE ATT&CK.

## Section Archetypes
- **Live threat feed**: Real-time stream of behavioral anomalies with severity scoring, truncated descriptions, and time deltas
- **Behavioral baseline comparison**: Side-by-side normal vs. anomalous user behavior bars with quantified metrics
- **Threat investigation panel**: Full-context alert view with evidence timeline, MITRE ATT&CK mapping, confidence meter, and recommended response actions
- **Detection metrics dashboard**: MTTD, true positive rate, alert noise reduction -- production numbers, not vanity metrics
- **Detection categories**: Attack types the behavioral model catches with real MITRE technique examples
- **Integration ecosystem**: Connected tools chip list showing deployment alongside existing security stack

## Hero Archetype
Typography + live data feed. The hero pairs a typographic headline with a streaming threat feed panel showing real anomalies with severity scores. Security teams evaluate tools by watching them work. The green status indicator and "All systems nominal" badge communicate the core promise: quiet confidence.

## Typography
- **Geist** (display + body) -- Clean, technical, slightly geometric. Reads as modern infrastructure software. Weight range 400-900 creates hierarchy from headlines through body.
- **Geist Mono** (data, timestamps, IDs, code) -- Critical for tabular data alignment, MITRE technique IDs, anomaly scores. Monospace signals "this is real operational data."

## Color
All OKLCH. Dark mode only. Surfaces cool blue-tinted (hue 260). Severity spectrum: Clear `oklch(0.72 0.16 155)`, Low `oklch(0.78 0.12 200)`, Medium `oklch(0.78 0.15 80)`, High `oklch(0.68 0.18 45)`, Critical `oklch(0.62 0.22 25)`. Accent blue `oklch(0.65 0.14 250)`.

## Supporting Files
- `https://joincommons.cc/api/items/abnormal-shield/raw/design-language` -- full OKLCH palette, type scale, spacing system, motion patterns, component library
- `references/asset-direction.md` -- domain-specific data patterns, hero approach, what NOT to show
- `https://joincommons.cc/api/items/abnormal-shield/raw/anti-patterns` -- detailed visual, structural, content, and UX anti-patterns for the security domain
- `assets/tokens.dtcg.json` -- DTCG tokens with severity semantic tokens (clear/low/medium/high/critical)
- `assets/exhibit.html` -- reference implementation: 42KB self-contained landing page with live threat feed, behavioral baselines, investigation panel, metrics, detection categories, integrations
- `assets/design-skill.json` -- manifest with V4 discovery fields

## Workflow
1. Read `https://joincommons.cc/api/items/abnormal-shield/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for data-as-visual patterns
3. Build with dark surfaces, blue-tinted neutrals, severity spectrum colors
4. Every page type (dashboard, settings, onboarding, docs) should feel like the same operational tool
5. Self-critique against `https://joincommons.cc/api/items/abnormal-shield/raw/anti-patterns`

## Gotchas
- **Severity color overuse**: Critical red should appear rarely. If half the page is red, nothing is critical.
- **Monospace everywhere**: Only for data -- scores, timestamps, IDs, technique codes. Body text stays in Geist.
- **Alert fatigue in the design**: The UI should feel calm by default. Alarming at rest = failed core promise.
- **Generic SaaS structure**: Page structure should mirror the product workflow (detect/investigate/respond).
- **Decorative security imagery**: No shields, padlocks, hooded hackers, globe-with-nodes. All cliches.

</design-system>
