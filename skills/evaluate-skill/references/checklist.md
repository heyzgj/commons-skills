# Skill Evaluation Checklist

Score each criterion: **pass**, **warn**, or **fail**.

## 1. Name (Identifiability)

| Score | Criteria |
|-------|----------|
| pass | Action verb or clear domain noun (e.g., `find-designs`, `code-reviewer`, `deploy-service`) |
| warn | Slightly vague but recognizable (e.g., `project-helper`) |
| fail | Abstract or generic (e.g., `commons-protocol`, `my-skill`, `utils`) |

## 2. Description (Triggering Quality)

The description is the PRIMARY mechanism for triggering. It must answer: "When should this skill activate?"

| Score | Criteria |
|-------|----------|
| pass | Lists 5+ specific trigger phrases/contexts. Reads like "Use when the user says X, Y, Z or wants to..." |
| warn | Has some trigger phrases but also reads like a summary. 2-4 triggers. |
| fail | Pure summary with zero trigger conditions. Reads like a README description. |

## 3. Folder Structure (Progressive Disclosure)

| Score | Criteria |
|-------|----------|
| pass | SKILL.md + at least one of: references/, scripts/, assets/ with real content |
| warn | SKILL.md only, but under 200 lines (simple skill where flat file is justified) |
| fail | SKILL.md only AND over 200 lines (should have been split) |

## 4. SKILL.md Length (Conciseness)

| Score | Criteria |
|-------|----------|
| pass | Under 500 lines with details pushed to references/ |
| warn | 500-800 lines OR under 500 but with content that should be in references/ |
| fail | Over 800 lines OR massive inline JSON/API schemas that belong in references/ |

## 5. Hard Gates (Enforcement)

| Score | Criteria |
|-------|----------|
| pass | At least one explicit "DO NOT proceed until..." gate between phases/steps |
| warn | Implicit ordering ("after the user responds") but no explicit gate language |
| fail | No gates — agent can skip steps freely |
| n/a | Simple Tool Wrapper pattern — gates not applicable |

## 6. Gotchas Section (Edge Cases)

| Score | Criteria |
|-------|----------|
| pass | 3+ specific, actionable gotchas based on real failure modes |
| warn | 1-2 gotchas, or gotchas that are too generic ("be careful with edge cases") |
| fail | No gotchas section at all |

## 7. Scripts (Composable Tools)

| Score | Criteria |
|-------|----------|
| pass | Includes scripts/ with executable tools that save the agent from reinventing common operations |
| warn | No scripts but the skill doesn't have obvious candidates for scripting |
| fail | No scripts but the skill describes multi-step operations (downloads, validation, data processing) that should be scripted |

## 8. Non-Obvious Content (Don't State the Obvious)

| Score | Criteria |
|-------|----------|
| pass | Focuses on what pushes the agent out of its default behavior. Information the agent wouldn't know from general training. |
| warn | Mix of obvious and non-obvious content |
| fail | Mostly restates things the agent already knows (basic coding patterns, well-known APIs) |

## 9. Context Window Discipline

| Score | Criteria |
|-------|----------|
| pass | Explicit guidance on WHEN to load each reference file. "Load X only during phase Y." |
| warn | References exist but no guidance on when to load them |
| fail | Everything loaded upfront or no awareness of context window cost |

## 10. Pattern Clarity

| Score | Criteria |
|-------|----------|
| pass | Clearly follows one of the 5 patterns (or a named composite). Structure matches the pattern. |
| warn | Pattern is recognizable but muddled — e.g., half Pipeline, half freestyle |
| fail | No discernible pattern. Instructions are unstructured prose. |
