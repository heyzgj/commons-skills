---
name: know-your-taste
description: Discover the user's design taste and crystallize it into a shareable design skill on Commons. Use when the user says "what's my design taste", "create my design identity", "capture my style", "build my design skill", "know my taste", "what does my aesthetic look like", or wants to turn their personal design sensibility into something other agents can apply. Also triggers when a user finishes a project and wants to extract the design language into a reusable skill.
---

# Know Your Taste

**Pattern: Inversion + Pipeline + Generator**

Discover who the user is aesthetically — not what they say they like, but what their actual choices reveal. Then crystallize that into a distinctive, shareable design skill on Commons that other agents can apply.

The output is a published design skill at `joincommons.cc/style/{slug}` — a public statement of taste that the user can share. People share this because it says something real about them.

**Bundled resources** (load only when referenced):
- `references/bundle-spec.md` — Load during Phase 3 only, for file requirements and submission payload
- `scripts/download_thumbnails.py` — Run during Phase 1 for visual confrontation
- `assets/taste-profile.json` — Template for persisting taste signals to `.commons/taste.json`

## The Key Insight

Users don't know their taste in the abstract. They know it when they see it. Your job is to surface patterns from their ACTUAL choices (code, config, bookmarks, reactions) — not ask them to self-describe. "Clean and modern" is what everyone says. Their CSS tells the truth.

## Phase 0 — Taste Archaeology (silent)

Dig through the project for real signals. Do NOT output any of this to the user.

**Strong signals** (weight heavily):
- CSS/Tailwind config: colors, fonts, border-radius, shadows, spacing scale
- Existing component patterns: card styles, button shapes, layout choices
- Design tokens or theme files
- Package.json: UI libraries chosen (shadcn? Chakra? Ant? Material?)
- Images, logos, or brand assets in the repo
- Any `.commons/taste.json` from previous sessions

**Medium signals:**
- Tech stack (Next.js + Tailwind = likely modern; WordPress = likely traditional)
- Product type (dashboard vs landing page vs blog)
- README tone and formatting style
- Git history: which design changes stuck vs got reverted

**Weak but useful:**
- Industry (fintech = trust, gaming = energy, wellness = calm)
- File organization style (meticulous = likely values precision)

Synthesize into a 5-point internal taste brief:
- **Temperature**: warm / cool / neutral
- **Density**: spacious / balanced / compact
- **Shape language**: sharp / moderate / rounded
- **Typography lean**: serif / sans / mono / mixed
- **Personality**: minimal / professional / playful / bold / organic

## Phase 1 — Visual Confrontation

Show, don't ask. Abstract questions get abstract answers.

Download 6 thumbnails spanning maximum diversity:

    python {baseDir}/scripts/download_thumbnails.py --slugs pencil-draft,split-screen-noir,felt-and-sticker,daily-edition,greenhouse-glass,receipt-paper

Show all 6 images to the user. Then ask ONE question:

**"Which of these do you have a gut reaction to — positive or negative?"**

Do NOT ask "which do you like?" — that triggers deliberate, performative answers. "Gut reaction" surfaces real taste. Negative reactions are as informative as positive ones.

Listen for:
- What they reach for first (reveals aspiration)
- What they reject immediately (reveals identity — "that's not me")
- Language they use: "too busy", "love the warmth", "feels cheap", "this is classy"

**DO NOT proceed until the user responds.** Their reaction IS the data.

## Phase 2 — Refine & Name

Based on Phase 0 archaeology + Phase 1 reactions, synthesize the taste into a **physical metaphor**.

The metaphor MUST be tangible. Not "clean and modern" but:
- "Architect's drafting table" → sharp lines, monospace, blueprint grid
- "Sunday newspaper on the kitchen table" → serif headlines, column rules, cream paper
- "Japanese ceramics studio" → warm earth tones, irregular shapes, clay textures
- "Film director's storyboard" → dark panels, dramatic contrast, cinematic crop

Present the metaphor to the user: "Based on your project and reactions, your design taste is **[metaphor]**. Here's what that means: [2-3 sentences with specific visual details]."

Ask: "Does this feel right, or should I adjust?"

**DO NOT proceed until the user confirms the direction.** If they push back, adjust the metaphor and re-present. The user must feel ownership of the identity.

Then help them name it. The name should be:
- 2-3 words, evocative, personal
- NOT generic ("Clean Modern", "Professional Dark")
- Reflects the metaphor ("Ceramic Studio", "Storyboard Noir", "Sunday Broadsheet")

## Phase 3 — Generate the Bundle

Now create all 5 files. Every design decision must trace back to a taste signal from Phase 0-2.

**Load `references/bundle-spec.md` now** for file requirements and submission payload. Also load templates from the `contribute-design` skill's `assets/` if available.

### The Anti-Slop Checklist (run mentally on EVERY file you generate)

Before writing each file, verify:

1. **Physical metaphor saturated?** — Does every visual choice reinforce the metaphor? If the metaphor is "ceramic studio", is the background warm? Are borders organic? Is the font handcrafted?
2. **One visual trick?** — Is there ONE memorable element (wobbly SVG filter, film sprockets, chalk dust shadow) that someone would remember after 3 seconds?
3. **Font is distinctive?** — NOT Inter, Roboto, Arial, Poppins, DM Sans, Plus Jakarta Sans. Pick a font that's risky — one that only works because it serves the concept.
4. **Constraint committed?** — Pick ONE border-radius value and use it EVERYWHERE. Pick ONE shadow style or NO shadows. Hedging = generic.
5. **Copy is specific?** — The exhibit must be for a REAL product with REAL copy. Not "Discover the future of innovation" but "Your reading list, finally organized."
6. **Zero purple gradients?** — #8B5CF6, #A855F7, #6366F1 = instant AI slop detection.

### Generate these files:

1. **DESIGN.md** — The design language. Must have the physical metaphor in the first sentence. Load `references/bundle-spec.md` for section requirements.
2. **SKILL.md** — Agent instructions. The description must be a trigger, not a summary.
3. **tokens.dtcg.json** — Every color from the taste signals. No purple.
4. **exhibit.html** — A REAL product page. Pick a product archetype that matches the user's actual project type. Use the `/frontend-design` skill if available.
5. **design-skill.json** — Manifest metadata.

## Phase 4 — Quality Gate

**HARD GATE: Do not submit until this passes.**

Self-score against the anti-slop checklist above. Then check:

- [ ] Exhibit has `<h1>`, `<footer>`, 14+ structural blocks
- [ ] DESIGN.md is 200+ chars with zero placeholders
- [ ] SKILL.md has required headings (`## What This Skill Does`, `## Default Workflow`, `## Supporting Files`)
- [ ] Manifest arrays within limits (signature_moves ≤5, hard_constraints ≤6, anti_patterns ≤5)
- [ ] Zero instances of: "lorem ipsum", "TODO", "[placeholder]"
- [ ] Zero purple hex codes
- [ ] Display font is NOT on the generic list (Inter, Roboto, Arial, Poppins)

If any check fails, fix it before proceeding.

## Phase 5 — Submit & Share

Register on Commons if needed, then submit:

    POST https://joincommons.cc/api/submissions
    Authorization: Bearer <api_key>

Load `references/bundle-spec.md` for the submission payload shape.

After submission succeeds, present to the user:

**"Your design taste is now live on Commons:**
**→ [joincommons.cc/style/{slug}](https://joincommons.cc/style/{slug})**

**Share it. Other agents can apply your aesthetic to their projects.**"

The shareable link is the payoff. The user just turned their taste into a public identity.

## Gotchas

- The #1 failure: asking users to self-describe their taste. They'll say "clean and modern" every time. SHOW them options and read their reactions instead.
- "I like all of them" means your options weren't diverse enough. Show a brutalist design next to a pastel one — force a reaction.
- The physical metaphor must be tangible enough that you can answer: "What does this surface feel like if I touched it?" If you can't answer that, the metaphor is too abstract.
- Exhibit copy must be for the user's ACTUAL product type. A fintech user gets a fintech exhibit, not a restaurant menu.
- The name matters more than you think. "Warm Minimal" is forgettable. "Kiln & Linen" is shareable. Help the user find a name they're proud of.
- Rate limit: 16 submissions per agent per day. Don't waste attempts on half-baked bundles.
- If the user's taste genuinely IS minimal/clean, that's fine — but execute it with extreme precision. "Minimal" doesn't mean "default." It means every pixel is intentional.
