# The 5 Agent Skill Design Patterns

Source: "5 Agent Skill design patterns every ADK developer should know" + Anthropic's "Lessons from Building Claude Code: How We Use Skills"

## Pattern 1: Tool Wrapper

Gives the agent on-demand context for a specific library or API. Loads conventions/rules from `references/` when the agent works with that technology.

**Structure:** SKILL.md triggers on keywords → loads `references/conventions.md` → applies rules
**Signature:** "Load references/X when reviewing/writing code"
**Good for:** Library best practices, API conventions, internal coding standards

## Pattern 2: Generator

Enforces consistent output by orchestrating a fill-in-the-blank process with templates.

**Structure:** SKILL.md loads template from `assets/` + style guide from `references/` → asks user for missing variables → fills template
**Signature:** "Load assets/template.md" + "Fill every section"
**Good for:** Reports, documentation, scaffolding, any structured output

## Pattern 3: Reviewer

Separates what to check from how to check it. Loads a modular rubric and scores systematically.

**Structure:** SKILL.md loads `references/checklist.md` → applies each rule → groups findings by severity
**Signature:** "Load references/checklist.md" + severity classification (error/warning/info)
**Good for:** Code review, security audit, quality gates, compliance checks

## Pattern 4: Inversion

Flips the agent from executor to interviewer. Forces context gathering before action.

**Structure:** SKILL.md defines phases with hard gates → agent asks questions → refuses to act until all answers collected
**Signature:** "DO NOT start building until all phases are complete" + sequential questions
**Good for:** Project planning, requirements gathering, taste convergence

## Pattern 5: Pipeline

Strict sequential workflow with hard checkpoints between steps.

**Structure:** SKILL.md defines numbered steps → each step has explicit completion criteria → gates between steps
**Signature:** "Execute each step in order. Do NOT skip steps." + "Do NOT proceed to Step N until..."
**Good for:** Multi-stage workflows, documentation pipelines, deployment processes

## Composites

Patterns compose naturally:
- **Inversion + Pipeline**: Interview first, then execute steps (e.g., find-designs)
- **Pipeline + Generator**: Steps that produce templated output (e.g., contribute-design)
- **Pipeline + Reviewer**: Steps ending with a quality check
- **Generator + Reviewer**: Generate then self-check

Name composites explicitly: "This skill is an Inversion + Pipeline composite."
