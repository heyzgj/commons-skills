---
name: hippocratic-care-ai
description: Light-mode clinical decision support design for emergency departments. ESI acuity color spectrum (critical/emergent/urgent/stable) structures all visual hierarchy. Monospace lab values and vitals with tabular-nums, data-as-hero triage feed, probability-ranked differentials with evidence tags, drug interaction alerts, sepsis timeline. Instrument Sans + Source Code Pro. Photography used sparingly for clinical context only.
---

<design-system>

## Identity
Aegis Health is a design system for AI-powered clinical decision support platforms in emergency departments. The design communicates clinical authority through dense data presentation, acuity-coded color, and zero decorative elements. Every visual carries medical information.

**Target users**: Emergency medicine physicians and triage nurses at urban trauma centers. They see 200+ patients per shift, make life-and-death decisions with incomplete data, and loathe anything that adds clicks to their EHR workflow. They trust tools that feel clinical, not consumer.

**Vibe**: epic.com clinical authority meets apple.com/watch/health data clarity. Confident, calm, authoritative. A brilliant colleague, not a chatbot.

**Domain conventions**: ESI 1-5 triage acuity, qSOFA/SOFA scoring, HL7 FHIR integration, MRN identifiers, vital sign abbreviations (HR, BP, SpO2, RR), lab values with reference ranges, drug class naming.

**Core design principle**: Clinical data, presented with clarity and calm, IS the interface -- the product earns trust by showing evidence, not hiding behind marketing.

**Visual vibe keywords**: Authoritative, clinical, calm-under-pressure, evidence-based, dense-but-organized, warm-professional, data-forward, trustworthy, precise, unhurried

## Section Archetypes
1. **Patient triage feed**: Live queue of patients ranked by ESI acuity, showing chief complaint, demographics, and key vitals. The product's primary view.
2. **Differential diagnosis engine**: Patient data card (vitals + labs) alongside ranked differential diagnoses with probability percentages, supporting evidence tags, and recommended next steps.
3. **Drug interaction alert**: Contraindication details with drug pair, mechanism, severity classification, and evidence-linked alternative recommendations.
4. **Sepsis early warning timeline**: Chronological vital sign trajectory showing escalation from baseline through qSOFA triggers to SOFA-based protocol activation.
5. **EHR integration workflow**: Step-by-step clinical workflow showing zero-friction FHIR integration from patient arrival to disposition.

## Hero Archetype
**Data-as-hero with typography**. The hero IS a live triage feed -- patients ranked by acuity with real vitals. This is what the physician sees first when they open the tool. A headline anchors purpose, metrics establish credibility, and the triage feed demonstrates the product instantly. No stock photos, no video, no illustrations in hero.

## Asset Direction
- **Data is the visual**: Real clinical data (vitals, lab values with reference ranges, ESI scores, SOFA criteria) is the most compelling visual asset. Typography-as-data (monospace lab values, tabular numbers) creates visual rhythm.
- **Photography**: Warm, real clinical settings. Healthcare workers in action, not posed stock. Used sparingly for trust-building context, NEVER as hero or decoration.
- **Color-coded acuity**: The ESI spectrum (red/orange/yellow/blue/green) serves double duty as both clinical semantics and visual hierarchy.
- **What NOT to show**: No stock photos of stethoscopes on laptops, no abstract DNA helixes, no smiling patients, no blue-tinted "digital health" imagery, no anatomical illustrations.

## Typography
- **Instrument Sans** (display + body): Clinical authority without the sterility of system fonts. The slightly humanist proportions create warmth that pure geometric sans-serifs lack -- important when every screen shows life-or-death data.
- **Source Code Pro** (mono): Lab values, vital signs, MRNs, timestamps. Tabular numerals are critical -- misaligned decimal points in lab values are a readability failure in clinical tools. Source Code Pro's wide letterforms prevent misreading at small sizes.

## Color
Light mode only. Clinicians work under fluorescent ER lighting -- dark interfaces create glare contrast.

- **Surface**: oklch(0.985 0.004 75) through oklch(0.88 0.008 75) -- warm-tinted near-whites, NOT pure white or gray. Hue 75 (amber) prevents cold sterility.
- **Text**: oklch(0.16 0.012 260) primary through oklch(0.54 0.008 260) tertiary -- blue-tinted darks, never pure black.
- **Accent**: oklch(0.52 0.14 250) -- confident medical blue. Sparingly for labels, links, CTAs.
- **ESI Critical (1)**: oklch(0.55 0.22 25) -- red. Resuscitation-level emergencies.
- **ESI Emergent (2)**: oklch(0.62 0.18 50) -- deep amber/orange. High-acuity.
- **ESI Urgent (3)**: oklch(0.72 0.15 80) -- yellow. Time-sensitive but stable.
- **ESI Less Urgent (4)**: oklch(0.65 0.14 220) -- cool blue.
- **ESI Stable (5)**: oklch(0.62 0.16 155) -- green. Stable, routine.
- **Warning**: oklch(0.72 0.16 65) -- amber. Drug interaction alerts.

## Signature Moves
1. **Data IS the hero**: No photography, video, or illustration in the hero -- a live triage feed of actual patient data establishes the product instantly.
2. **Monospace as visual texture**: Lab values, vitals, timestamps, and scores all use Source Code Pro with tabular-nums, creating a distinct rhythm that says "precision instrument."
3. **ESI acuity spectrum as design system**: The five-level triage color system structures the entire visual hierarchy -- every data element can be classified by urgency.
4. **Evidence tags on differentials**: Each diagnosis shows the specific evidence (Troponin up-arrow, Diaphoresis, Hypoxia) that supports it, making the AI's reasoning transparent.
5. **Left-edge severity bars**: 3px colored bars on the left edge of differential cards create scannable hierarchy without adding visual weight.
6. **Clinical timeline for sepsis**: A vertical timeline with escalating dot colors (green -> yellow -> orange -> red) shows deterioration trajectory at a glance.
7. **No rounded-everything**: Border-radius stays at 6-10px (clinical tools, not consumer apps). Cards feel like medical charts, not candy buttons.
8. **Ambient system status**: A pulsing green dot in the nav communicates "all systems operational" -- the kind of signal clinicians trust because they see it on patient monitors.

## Hard Constraints
- Light mode only -- dark mode is clinically inappropriate for ER environments
- All clinical data in monospace with font-variant-numeric: tabular-nums
- ESI acuity colors must maintain clinical meaning (red=resuscitation, orange=emergent, yellow=urgent, green=stable)
- Lab values must include reference ranges
- No chat or conversational UI patterns
- No gamification of clinical decisions
- Photography only for clinical context, never as hero or decoration
- Accent blue used sparingly, never wall-to-wall

## Anti-Patterns
- NOT a consumer health app (no pastel illustrations, no friendly avatars, no gamified wellness)
- NOT a dark-mode developer tool (clinicians work in bright ERs with overhead fluorescents)
- NOT a marketing website with hero videos and gradient CTAs (this is a TOOL, not a brand campaign)
- NOT a dashboard covered in sparklines and pie charts (physicians don't analyze dashboards, they glance and decide)
- NOT a chatbot interface (no chat bubbles, no conversational UI -- this is a decision support panel)
- NOT generic SaaS (no hero -> features -> pricing -> testimonials -> CTA structure)
- NOT "digital health blue" -- wall-to-wall blue is generic health-tech, not clinical authority
- NOT gradient text on metrics -- lab values should be monospace and acuity-colored, not decorated

## Supporting Files
- `https://joincommons.cc/api/items/hippocratic-care-ai/raw/design-language` — Complete visual system: OKLCH palette, type scale, spacing, motion, component patterns
- `references/asset-direction.md` — Photography direction, data-as-visual patterns, verified starter assets
- `https://joincommons.cc/api/items/hippocratic-care-ai/raw/anti-patterns` — Domain-specific visual, structural, content, and UX traps to avoid
- `assets/tokens.dtcg.json` — DTCG design tokens with color, semantic (ESI acuity, lab status, evidence), and typography groups
- `assets/exhibit.html` — Reference implementation: complete landing page with triage feed, differential engine, drug interactions, sepsis timeline
- `assets/design-skill.json` — Manifest with metadata, style identity, and quality scores

## Workflow
1. Read this file for product world and design direction
2. Read `https://joincommons.cc/api/items/hippocratic-care-ai/raw/design-language` for the full visual system
3. Read `references/asset-direction.md` for asset sourcing guidance
4. Build following the product world and design system above
5. Self-critique against `https://joincommons.cc/api/items/hippocratic-care-ai/raw/anti-patterns`

## Gotchas
- **Never invent clinical data carelessly**: Use realistic but clearly fictional patient identifiers. Real-looking lab values must have plausible reference ranges. Getting medical terminology wrong destroys trust instantly.
- **Dark mode is wrong here**: ERs are bright. Dark interfaces cause pupil adjustment lag when physicians look from screen to patient. Light background is non-negotiable.
- **Don't over-alert**: If everything is red and pulsing, nothing is urgent. Use the ESI spectrum deliberately -- most patients are ESI 3-4. Critical alerts must be rare to be effective.
- **Acuity colors have medical meaning**: Red = resuscitation, Orange = emergent, Yellow = urgent, Green = stable. Don't remap these or use them decoratively.
- **No chatbot UX**: Clinical decision support is a panel, not a conversation. Chat bubbles, typing indicators, and conversational flow are wrong for this domain.
- **Monospace alignment matters**: Lab values with misaligned decimal points are a medical UI failure. Always use tabular-nums on clinical data.

</design-system>