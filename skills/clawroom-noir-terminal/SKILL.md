# ClawRoom Noir Terminal — Design Skill

## Design Context

**Audience:** DevOps engineers, platform teams, and AI infrastructure builders who need interfaces for monitoring agent-to-agent collaboration — meeting rooms, event streams, and operational dashboards where machines negotiate with machines.

**Use cases:** Agent monitoring dashboards, real-time event feeds, developer operations tools, chat/messaging interfaces, webhook inspection UIs, multi-agent orchestration panels, and any tool where structured machine dialogue needs a human-readable presentation layer.

**Brand personality:** Cinematic severity. The interface feels like a control room in a Michael Mann film — pure black and white, no decoration, no warmth, no compromise. Information arrives in a vertical timeline with mechanical precision. The design communicates that something important is happening and you are watching it unfold.

---

## Design Direction

**Purpose:** Present real-time agent collaboration as a cinematic event stream. Two agents enter a bounded room, exchange structured messages on a black stage, and produce a machine-readable result. The interface makes the invisible (agent-to-agent negotiation) visible and legible.

**Tone:** Terminal noir. High contrast, zero ornament. The visual language borrows from broadcast monitors, flight recorders, and courtroom transcripts — environments where every word matters and nothing is decorative.

**The ONE memorable thing:** Glowing agent orbs that distinguish host from guest through shape alone — the host orb has a squircle (36% border-radius) while the guest orb is a perfect circle, both radiating soft white box-shadows against pure black. The orbs pulse with presence, making the agents feel alive.

**What makes it unforgettable:** The absolute commitment to duo-tone. Not "mostly black and white" — literally `#000000` and `#FFFFFF` with only rgba transparency variants between them. The single exception is `#EF4444` for errors, which reads as an alarm precisely because nothing else has color. This constraint produces an interface that feels more intentional than any palette could.

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/design-language` completely. Internalize the duo-tone color system (all rgba transparency variants), the typography trio (Space Mono display, Inter body, JetBrains Mono code), the fluid clamp() type scale, and the motion system (spring easing, slide-up animations, pulse-glow).

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/image-kit`. This design uses zero photography. All visual identity comes from typography contrast, white-on-black borders, glowing orb shadows, and generous negative space. Do not add images.

### Step 3 — Load anti-patterns
Read `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/anti-patterns`. Dark monitoring interfaces have specific failure modes — blue accent creep, excessive border-radius, decorative gradients, and information density without hierarchy. These are the traps to avoid.

### Step 4 — Build
- Start with `:root` custom properties using the exact rgba values from the design language
- Body: `#000` background, Inter body font, `-webkit-font-smoothing: antialiased`
- Hero: full `100vh`, centered, Space Mono display heading at `--step-6`, staggered `fadeUp` animations
- Stage: `max-width: 720px`, centered, generous `120px` bottom padding
- Room header: sticky, pure black background, Space Mono topic heading, agent orbs with glowing shadows
- Timeline: vertical stack with `16px` gap, each event slides up with staggered delay
- Event content: `1px solid rgba(255,255,255,0.12)` border, `65ch` max-width, Inter body text
- System events: italic, tertiary color, no border
- Summary: full-width border box, 2-column grid, Space Mono title with inline badge
- Metrics: 4-column grid separated by 1px faint borders, Space Mono values
- Buttons: zero border-radius, 1px white border, fill/ghost variants with hover inversion
- All interactive elements: `cubic-bezier(0.16, 1, 0.3, 1)` easing

### Step 5 — Self-critique gate
Before finalizing, read back the complete output and answer:
1. Is every color either `#000`, `#FFF`, or an `rgba(255,255,255,N)` variant? If any other hue appears (besides `#EF4444` for errors): remove it.
2. Is every corner sharp? Search for any `border-radius` value above `0` (except the orbs, which are circular/squircle by design). If found: set to `0`.
3. Are all three fonts used correctly? Space Mono for display headings, Inter for body/descriptions, JetBrains Mono for timestamps/labels/code. If a font is used in the wrong role: fix it.
4. Does the timeline feel cinematic? Events should stagger in with slide-up animation and increasing delay. If they appear all at once: add stagger.
5. Is there enough breathing room? Hero should be full viewport. Stage should have 120px bottom padding. Sections should have 48-80px vertical spacing. If anything feels cramped: add space.

---

## Gotchas

1. **Duo-tone means duo-tone.** The entire palette is black and white with transparency. Not "dark theme with a blue accent." Not "mostly monochrome with a subtle teal." The only non-grayscale color in the entire system is `#EF4444` for error states. This constraint is the design.

2. **Zero border-radius everywhere.** Buttons, cards, event containers, summary boxes, metrics cells, form inputs — all sharp corners. The only rounded elements are the agent orbs (circles and squircles), which read as living entities precisely because everything else is rectilinear.

3. **Three fonts, three roles.** Space Mono is display only (headings, hero, topic titles). Inter is body only (descriptions, event content, prose). JetBrains Mono is code/meta only (timestamps, labels, eyebrows, badges, status text). Do not mix roles.

4. **Fluid type scale is mandatory.** All font sizes use `clamp()` with viewport-relative scaling. Do not use fixed pixel sizes for any text that appears in the main content flow. The scale ensures the design works from 320px to 1440px without breakpoint jumps.

5. **White borders at 80% opacity for structural dividers.** The hero bottom, room header bottom, and metrics top borders use `rgba(255,255,255,0.80)` — bright enough to create strong horizontal rules. Event content borders use `rgba(255,255,255,0.12)` — barely visible containers. Do not use the same opacity for both.

6. **Spring easing for interactive, expo for entrance.** Hover states and interactive feedback use `cubic-bezier(0.175, 0.885, 0.32, 1.275)` (spring overshoot). Page entrance animations use `cubic-bezier(0.16, 1, 0.3, 1)` (expo out). Do not use linear or ease-in-out.

7. **The orb glow is what makes agents feel present.** Without `box-shadow: 0 0 12px rgba(255,255,255,0.3), 0 0 4px rgba(255,255,255,0.2)`, the orbs are just white circles. The glow creates the illusion of emanating intelligence. Do not flatten the shadows.

8. **System events break the pattern intentionally.** Regular events have borders and actor labels. System events have no border, no actor, italic text, and tertiary color. This contrast marks them as meta-information (room created, room completed) versus dialogue.
