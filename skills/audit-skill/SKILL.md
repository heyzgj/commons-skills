---
name: audit-skill
description: Audit an agent skill against Anthropic's best practices and fix issues. Use when someone says "audit this skill", "review my skill", "is this skill good", "check skill quality", "rate this skill", "improve this skill", or after creating or modifying any SKILL.md. Also trigger proactively when you notice a skill that seems poorly structured, overly long, or missing gotchas. Works on any agent skill for any platform.
---

# Audit Skill

Score an agent skill against Anthropic's published best practices and the 5 canonical design patterns. Two modes: **report** (diagnose) and **fix** (diagnose + rewrite).

## Modes

**Report mode** (default): Score each criterion, produce a grade, list fixes by impact.

**Fix mode**: Score, then rewrite the failing sections. Use when the user says "fix it", "improve it", "make it better", or "audit and fix". Ask before overwriting.

## Step 1 — Locate the Skill

Find the skill to audit:
- A path the user provides
- The current directory if it contains SKILL.md
- A recently created skill from a skill-creator session

Read SKILL.md. Also inventory the folder — check for `references/`, `scripts/`, `assets/`.

## Step 2 — Classify the Pattern

Load `references/patterns.md`. Determine which of the 5 patterns the skill uses:

1. **Tool Wrapper** — on-demand library/API context
2. **Generator** — consistent output from templates
3. **Reviewer** — score against a checklist
4. **Inversion** — interview user before acting
5. **Pipeline** — strict multi-step with checkpoints

Name composites explicitly (e.g., "Inversion + Pipeline"). Flag unclear patterns as a quality issue.

## Step 3 — Score Against Checklist

Load `references/checklist.md`. For each of the 10 criteria, assign **pass**, **warn**, or **fail**.

For every warn/fail, write a specific fix — not "improve the description" but "add these trigger phrases: 'when user asks about X, Y, Z'".

## Step 4 — Grade

| Grade | Criteria |
|-------|----------|
| A | 0 fails, ≤2 warns |
| B | 0 fails, 3-4 warns |
| C | 1-2 fails OR 5+ warns |
| D | 3+ fails |

## Step 5 — Report

```
## Skill Audit: {name}

**Grade: {A-D}** | **Pattern: {name}** | **{lines} lines** | **{n} files**

| # | Criterion | Score | Notes | Fix |
|---|-----------|-------|-------|-----|
| 1 | Name | ✅/⚠️/❌ | ... | ... |

### Top 3 Fixes (by impact)
1. ...

### Strengths
- ...
```

## Step 6 — Fix Mode

If the user asked for fixes, or if Grade is C/D and user agrees:

1. **Description**: Rewrite frontmatter with 5+ trigger phrases. Show before/after diff.
2. **Structure**: If >300 lines, move content to `references/`. Create the files.
3. **Gotchas**: If missing, write 3+ based on the skill's domain.
4. **Hard gates**: If Pipeline/Inversion but no gates, add "DO NOT proceed until..." between key phases.
5. **Scripts**: If inline shell/Python operations described, extract to `scripts/`.

Show each diff. Ask "Apply this change?" before writing. Load `references/examples.md` for before/after patterns.

## Gotchas

- A 50-line Tool Wrapper can be Grade A. Don't penalize short skills — penalize dumping everything inline.
- Description is the #1 undertriggering cause. If it reads like a README summary, that's a fail.
- "ALWAYS"/"NEVER" in caps are yellow flags — explain the WHY instead. Note but don't auto-fail.
- Zero gotchas is suspicious. Every real workflow has edge cases.
- Composites are expected. "Inversion + Pipeline" is the recommended approach for complex skills.
- Fix mode is conservative — only rewrite sections that scored warn or fail.
