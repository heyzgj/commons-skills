---
name: hippocratic-health-ai
description: Warm, data-rich design system for AI health agents serving hospital executives. Sage green on cream palette, Newsreader serif display, Instrument Sans body. Dashboard-as-hero showing real patient outreach data -- overnight check-ins, multilingual conversations, clinical escalation feeds. Status color system (stable/attention/escalated/critical). Full conversation transcripts in Spanish and Mandarin. Outcome metrics with before/after framing (readmission rates, HCAHPS, CMS penalty savings). Light mode only.
metadata: design-skill
---

# Careway — AI Health Agent

<design-system>

## Identity
An AI health agent that extends hospital care teams. The CNO opens a dashboard every morning showing last night's outreach: 847 patients called, 12 escalated to a nurse, 3 directed to ER, 832 confirmed recovering. The product feels like having a competent colleague who never sleeps, speaks every language, and always follows protocol.

## Product World
- **Who**: Chief Nursing Officers, VPs of Patient Experience at health systems with 5-50 hospitals. They manage thousands of nurses, fight 40% turnover, chase 30% no-show rates, and lose millions to CMS readmission penalties. They live in Epic dashboards and CMS quality reports. They care about HCAHPS scores, nurse-to-patient ratios, and 30-day readmission rates. They hate chatbot marketing and sterile healthtech aesthetics.
- **What**: AI health agent that handles the 80% of patient interactions that don't require a clinician — post-discharge check-ins, medication adherence calls, symptom triage, chronic care management — in 30 languages, around the clock.
- **Vibe**: onemedical.com (healthcare warmth, trust without sterility) meets ambient.ai (intelligent monitoring that's always there but never intrusive). The feeling: "My patients are being cared for even when my team is asleep."
- **Domain conventions**: MRN numbers, HL7 FHIR, HCAHPS scores, CMS penalties, nurse-to-patient ratios, post-discharge protocols (24h/48h/7d), medication adherence rates, pain scales (1-10), ROM measurements, escalation thresholds.

## Core Principle
Warm competence — the interface radiates clinical trust through real patient data, not through sterile blue gradients or stock photography of smiling doctors.

## Visual Vibe
Warm, organized, trustworthy, competent, calm, clinical-but-human, editorial, data-rich, sage-toned, unhurried. Like reading a well-organized patient chart that also makes you feel everything is under control. References: One Medical's waiting room (warm wood, plants, no fluorescent lights) + a Bloomberg Terminal reimagined with empathy.

## Anti-Patterns
- NOT sterile clinical blue on white (this is the healthcare design default — it reads as cold and institutional)
- NOT dark-mode tech dashboard (healthcare executives distrust "hacker" aesthetics)
- NOT chatbot marketing with animated typing indicators (CNOs have been burned by chatbot vendors)
- NOT stock photos of smiling diverse groups in a hospital (feels corporate, not authentic)
- NOT a consumer health app (this is enterprise B2B for hospital executives, not patients)
- NOT metrics-as-marketing with big flashy counters (executives see through vanity metrics — show real clinical data)

## Section Archetypes
- **Overnight outreach dashboard**: The hero. Real patient interaction feed with status indicators (completed/escalated/critical), languages, durations, patient details.
- **Clinical workflow flow**: Step-by-step protocol visualization showing proactive outreach → structured assessment → clinical escalation → outcome documentation. With real example dialogue at each step.
- **Conversation transcript**: Full read-through of an actual patient interaction. Shows the AI speaking the patient's language, following clinical protocols, documenting outcomes.
- **Outcomes dashboard**: Hospital executive metrics — readmission reduction, no-show rates, nurse capacity multiplier, CMS penalty savings. Before/after with real numbers.
- **Language coverage**: Multilingual demo showing the same clinical interaction in different languages. With comprehension scores and availability stats.
- **Integration stack**: EHR (Epic/Cerner), telephony (Twilio/PBX), analytics (Snowflake/Tableau) — not a generic "integrations" grid.

## Hero Archetype
Data-as-hero + typography. The hero IS a dashboard showing last night's outreach results: 847 patients reached, 832 confirmed recovering, 12 escalated, 3 directed to ER. Below that, a patient interaction feed with real names, conditions, languages, and statuses. This is what the CNO sees every morning — the product speaks for itself. No video, no stock photo, no illustration.

## Asset Direction
- **Photography**: Warm, real clinical environments. One professional in scrubs (not posed stock). Used sparingly — one image in the testimonial section, one alongside the conversation transcript. Avoid: group shots, handshake photos, stethoscope-on-white-coat cliches.
- **Data-as-visual**: This is the primary visual strategy. Patient feeds with MRN numbers, condition names, language tags, status badges, pain scores, ROM measurements. The data IS the design.
- **Typography-as-art**: Large serif metrics (47%, 3.2x, $2.4M) in the outcomes section. Newsreader at large sizes has editorial authority that makes numbers feel like research findings.
- **Conversation transcripts**: Extended chat-style layouts showing real clinical dialogue in multiple languages. This is unique to healthcare AI and should feel like reading a patient chart.
- **What NOT to show**: No illustrations of AI/robots. No abstract "connection" graphics. No dark ambient video. No waveform visualizations.

## Typography
- **Newsreader** (display, serif): Editorial warmth and gravitas. Reads like a medical journal headline, not a tech landing page. The optical size axis adapts from display headlines to body annotations. WHY: Healthcare executives trust serif type — it signals institutional credibility. Tech sans-serifs signal startup, which is a liability when selling to 23-hospital systems.
- **Instrument Sans** (body, sans-serif): Clean, modern, slightly warm. Not as cold as Inter, not as playful as Nunito. Excellent at small sizes for dashboard data. WHY: Tabular numbers align in data tables, x-height is generous for readability in patient feeds.

## Color
Warm cream base (oklch 0.97 0.008 85) with sage green primary (oklch 0.55 0.10 160). Sage = care, growth, healing — it's the color of hospital gardens, not hospital walls. Coral accent (oklch 0.65 0.16 25) for CTAs and attention. Status system: stable (sage green), attention (warm amber oklch 0.72 0.14 80), escalated (warm coral oklch 0.62 0.16 30), critical (deep red oklch 0.55 0.18 15). All neutrals are cream-tinted, never pure gray. The palette avoids clinical blue entirely — that's the trap every healthcare product falls into.

## Signature Moves
1. **Dashboard-as-hero**: No marketing fluff above the fold. The product dashboard IS the first thing you see.
2. **Full conversation transcripts**: 8+ message exchanges in multiple languages, not truncated demos.
3. **Light mode only**: Dark mode signals "tech company." Light warm cream signals "trusted institution."
4. **Sage green, not blue**: Every healthcare product defaults to clinical blue. Sage green is warmer, more human, and equally trustworthy.
5. **Serif headlines**: Newsreader gives editorial authority. Most healthtech uses sans-serif and looks like every other SaaS landing page.
6. **Real clinical data**: MRN numbers, pain scales, ROM measurements, HCAHPS scores — not vague "AI-powered" language.
7. **Multilingual transcript demos**: Showing actual Spanish and Mandarin conversations, not just "30 languages supported" as a bullet point.
8. **Before/after with real numbers**: "18.2% to 11.7% readmission rate" — specific, auditable, executive-grade.

## Hard Constraints
1. Light mode only — warm cream surfaces (oklch hue 80-85), never dark mode, never pure white
2. Two fonts with strict role separation: Newsreader serif for display/headlines/metrics, Instrument Sans for body/UI
3. Sage green primary (oklch hue 160), never clinical blue — the deliberate rejection of healthcare blue is non-negotiable
4. All data values must use font-variant-numeric: tabular-nums for alignment in feeds and tables
5. Status colors follow clinical convention: green (stable), amber (attention), coral (escalated), red (critical) — never inverted
6. Photography used sparingly (max 2 images) — data and conversation transcripts are the primary visual assets
7. Enterprise tone always — "Request a demo" never "Get started free", warm but never casual

## Workflow
1. Read `https://joincommons.cc/api/items/hippocratic-health-ai/raw/design-language` for the complete visual system (OKLCH tokens, type scale, spacing, motion)
2. Read `references/asset-direction.md` for photography and data-as-visual guidance
3. Build the product world first: real patient names, MRN numbers, clinical conditions, language tags
4. Use the status color system consistently: green = stable, amber = attention, coral = escalated, red = critical
5. Self-critique against `https://joincommons.cc/api/items/hippocratic-health-ai/raw/anti-patterns` — especially the clinical blue trap

## Supporting Files
- `https://joincommons.cc/api/items/hippocratic-health-ai/raw/design-language` — Complete visual system: OKLCH color tokens, typography scale, spacing, motion, component patterns
- `references/asset-direction.md` — Photography direction, data-as-visual strategy, verified starter assets
- `https://joincommons.cc/api/items/hippocratic-health-ai/raw/anti-patterns` — 17 domain-specific traps across visual, structural, content, and UX categories
- `assets/exhibit.html` — Reference implementation (self-contained HTML, the canonical example of this design system)
- `assets/tokens.dtcg.json` — DTCG format design tokens including clinical semantic tokens (status, readmission-risk, hcahps-positive)

## Gotchas
1. **Clinical blue is the #1 trap.** Every healthcare product defaults to blue. Use sage green — it's warmer and differentiates immediately.
2. **Don't invent clinical data.** Use realistic but clearly fictional patient data. Real MRN formats (4-4 digit), real medication names (Metformin 500mg), real clinical assessments (pain scale, ROM).
3. **Healthcare executives read charts, not marketing pages.** The more the page looks like a well-designed clinical dashboard, the more it sells. The less it looks like a SaaS landing page, the better.
4. **HIPAA compliance badges matter.** Healthcare buyers look for them. Include HIPAA, SOC 2, HITRUST in footer — understated but present.
5. **Avoid playful or casual tone.** This product handles patient safety. The copy should be warm but never casual. "Request a demo" not "Get started free."
6. **Multilingual content must be real.** If showing Spanish dialogue, it must be grammatically correct medical Spanish. Gibberish destroys trust with bilingual executives.

</design-system>
