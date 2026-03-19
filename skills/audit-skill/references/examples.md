# Before/After Fix Examples

Common fixes with concrete before/after comparisons.

## Fix 1: Description (Summary → Triggers)

**Before (fail):**
```yaml
description: Commons Protocol — use-first Design Skill commons for humans + agents
```

**After (pass):**
```yaml
description: Find and apply a design skill from Commons to your project. Use when user mentions design, styling, theming, UI identity, branding, or wants their app to look distinctive. Also triggers on "style my app", "find a design", "make it look good", "design system".
```

**Why it works:** The "after" lists 9 specific trigger phrases and contexts. Claude scans descriptions to decide whether to invoke a skill — trigger phrases directly map to user inputs.

---

## Fix 2: Name (Abstract → Action)

**Before (fail):** `commons-protocol`
**After (pass):** `find-designs`

**Before (fail):** `my-skill`
**After (pass):** `deploy-service`

**Before (warn):** `project-helper`
**After (pass):** `plan-project`

**Why it works:** Action verbs tell both the model and the user what the skill DOES. Abstract nouns describe what it IS, which doesn't help with triggering.

---

## Fix 3: Inline API Dump → Reference File

**Before (fail — 50 lines of API docs in SKILL.md):**
```markdown
## API Reference

GET /api/items
Parameters:
- q: string, free-text search
- sort: enum, trending|new|featured
- limit: number, 1-200
... (40 more lines)
```

**After (pass — 1 line in SKILL.md):**
```markdown
## API Reference

Load `references/api.md` for endpoint details, response shapes, and query tips.
```

**Why it works:** API details are needed only when making requests, not when understanding the workflow. Progressive disclosure keeps the main file focused on the workflow logic.

---

## Fix 4: No Gotchas → Real Gotchas

**Before (fail):** No gotchas section.

**After (pass):**
```markdown
## Gotchas

- Multi-word search uses AND logic — "dark portfolio" requires BOTH words. Try single keywords.
- `avoidFor` is a hard skip signal. If a skill says "avoid: enterprise dashboards" and you're building one, skip immediately.
- NEVER load DESIGN.md during discovery. It's 2000+ words. Only load after the user picks.
```

**Why it works:** Gotchas are the highest-signal content in any skill. They document real failure modes that the agent would otherwise learn the hard way. Each gotcha should describe: the trap, why it happens, and what to do instead.

---

## Fix 5: No Hard Gate → Explicit Gate

**Before (warn):**
```markdown
## Phase 2 — Show Options

Show 5 options to the user. Ask which they prefer.

## Phase 3 — Apply
```

**After (pass):**
```markdown
## Phase 2 — Show Options

Show 5 options to the user. Ask: "Which feel right? Which feel wrong?"

**DO NOT proceed to Phase 3 until the user responds.**

## Phase 3 — Apply
```

**Why it works:** Without an explicit gate, agents will sometimes skip ahead and start applying before the user has chosen. The bold "DO NOT proceed" text creates a checkpoint the agent respects.

---

## Fix 6: Missing Scripts → Bundled Script

**Before (fail — describes manual curl steps inline):**
```markdown
Download each thumbnail:
    mkdir -p .commons/previews
    curl -sL "https://cdn.example.com/thumb1.png" -o .commons/previews/thumb1.png
    curl -sL "https://cdn.example.com/thumb2.png" -o .commons/previews/thumb2.png
    ... repeat for each
```

**After (pass — bundled script):**
```markdown
Download thumbnails:

    bash {baseDir}/scripts/download-thumbnails.sh slug-1 slug-2 slug-3

This saves PNGs to a temp dir and prints one local file path per line.
```

**Why it works:** Scripts save every future invocation from reinventing the wheel. The agent calls the script instead of reconstructing boilerplate curl commands each time.
