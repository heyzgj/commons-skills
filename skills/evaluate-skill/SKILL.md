---
name: evaluate-skill
description: Evaluate an agent skill (SKILL.md) against best practices from Anthropic's skill design patterns. Use when someone says "evaluate this skill", "review my skill", "is this skill good", "audit my SKILL.md", "check skill quality", "rate this skill", or after creating or modifying any skill. Also use proactively after the skill-creator finishes a draft.
---

# Evaluate Skill

Score an agent skill against Anthropic's best practices and the 5 canonical design patterns. Produces a structured report with a grade, per-criterion scores, and concrete fix suggestions.

This is a Reviewer pattern skill. Load the checklist, apply it systematically, report by severity.

## Step 1 — Locate the Skill

Find the skill to evaluate. It could be:
- A path the user provides (e.g., `skills/my-skill/SKILL.md`)
- The skill folder in the current directory
- A recently created/modified skill from a skill-creator session

Read the SKILL.md file. Also check for the presence of:
- `references/` directory and its contents
- `scripts/` directory and its contents
- `assets/` directory and its contents
- Any other files in the skill folder

## Step 2 — Classify the Pattern

Load `references/patterns.md` for the 5 canonical patterns. Determine which pattern(s) the skill uses:

1. **Tool Wrapper** — on-demand context for a library/API
2. **Generator** — consistent output from templates
3. **Reviewer** — score against a checklist by severity
4. **Inversion** — agent interviews user before acting
5. **Pipeline** — strict multi-step with checkpoints

A skill may be a composite (e.g., "Inversion + Pipeline"). Name the composite explicitly. Flag if the pattern is unclear — that's a quality issue.

## Step 3 — Score Against Checklist

Load `references/checklist.md` for the full evaluation criteria with scoring rubric.

For each criterion, assign:
- **pass** — meets the standard
- **warn** — partially meets, room for improvement
- **fail** — does not meet, needs fix

Include a one-line explanation and a specific fix suggestion for every warn/fail.

## Step 4 — Compute Grade

| Grade | Criteria |
|-------|----------|
| **A** | 0 fails, ≤2 warns |
| **B** | 0 fails, 3-4 warns |
| **C** | 1-2 fails OR 5+ warns |
| **D** | 3+ fails |

## Step 5 — Report

Output a structured report:

```
## Skill Evaluation: {skill-name}

**Grade: {A/B/C/D}**
**Pattern: {pattern name or composite}**
**Lines: {line count} / 500 max**
**Files: {file count} ({list of directories present})**

### Scorecard

| # | Criterion | Score | Notes |
|---|-----------|-------|-------|
| 1 | Name | pass/warn/fail | ... |
| ... | ... | ... | ... |

### Top Fixes (by impact)

1. {highest-impact fix}
2. {second fix}
3. {third fix}

### What's Working Well

- {strength 1}
- {strength 2}
```

## Gotchas

- A skill can be excellent at 50 lines if it's a simple Tool Wrapper. Don't penalize short skills — penalize skills that dump everything inline when they should use references/.
- The description field is the #1 undertriggering cause. If the description reads like a summary instead of trigger conditions, that's always a fail.
- "ALWAYS" and "NEVER" in all-caps are yellow flags. The article says: explain the WHY instead of shouting. Note this in your review but don't auto-fail — sometimes caps emphasis is justified.
- A skill with zero gotchas is suspicious. Every real workflow has edge cases worth documenting.
- Composites are fine and expected. Don't penalize a skill for being "Inversion + Pipeline" — that's the article's recommended approach for complex workflows.
