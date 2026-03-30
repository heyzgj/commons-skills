---
name: git-log-resume
description: A developer resume styled as a terminal git log — Source Code Pro on dark OKLCH terminal background with graph-line commits, diff blocks, branch badges, expandable details, and staggered fade-in entry animations.
metadata: design-skill
---

# Git Log Resume

## What This Skill Does

Renders a professional resume or CV as a `git log --graph --all --decorate` terminal output. Career positions become commits on a graph, skills become diff stats, side projects become feature branches, and career milestones become version tags. One monospace family (Source Code Pro) carries the full hierarchy through weight and color.

## When to Use

- Developer, engineer, or technical founder resumes
- Personal portfolio pages for programmers
- Team member bios on engineering-culture sites
- Conference speaker profiles or contributor pages
- Any context where the audience reads terminals daily

## When Not to Use

- Non-technical professionals (the metaphor won't land)
- Print-first documents (monospace and dark bg print poorly)
- Data-dense dashboards or multi-page apps
- Photography-forward portfolios

## Design Context

**Audience:** Hiring managers and engineers who live in terminals and recognize git graph output instantly. The metaphor is not decorative — it IS the information architecture.

**Tone extreme:** Cold, precise, faintly irreverent. This is a person whose career IS their commit history. No warmth, no rounded corners, no gradients. Terminal truth only.

**The ONE memorable thing:** Career history rendered as an actual git graph with working branch lines, merge commits, and expandable diffs — not a metaphor on a card, but the real structure.

## Design Direction

- **Dark terminal canvas** — `oklch(0.13 0.005 260)` near-black with cool 260-hue undertone
- **Three graph colors** — green main (`oklch(0.70 0.15 150)`), purple feature (`oklch(0.65 0.15 280)`), orange hotfix (`oklch(0.70 0.20 30)`)
- **Semantic diff coloring** — green additions, red removals, amber modifications
- **Gold tag badges** — `oklch(0.80 0.15 85)` for version milestones
- **Line numbers** — left gutter with subtle right border, like a code editor
- **Click-to-expand** — commit details reveal on click with max-height transition
- **Keyboard navigation** — j/k to move between commits, Enter to expand (vim-style)

## Workflow

1. **Load design language** from `https://joincommons.cc/api/items/git-log-resume/raw/design-language` — absorb the OKLCH palette, typography scale, graph structure, and motion system
2. **Load image kit** from `https://joincommons.cc/api/items/git-log-resume/raw/image-kit` — this skill uses zero photography; all visuals are CSS + Unicode
3. **Build** the page: toolbar, command prompt with blinking cursor, README header block, commit log entries with graph characters, diff blocks, branch blocks, tag cards, footer stats
4. **Self-critique** against `https://joincommons.cc/api/items/git-log-resume/raw/anti-patterns` — check for the 7 terminal-specific traps

## Structure Map

| Section | Git Metaphor | Content |
|---|---|---|
| Toolbar | repo name + branch | Name + current status |
| README block | README.md | Name, title, summary, contact |
| Career log | `git log --graph` | Jobs as commits with hashes, dates, messages |
| Branch fork | feature branch | Startups, side ventures, sabbaticals |
| Merge line | merge commit | How the branch reconnected to main career |
| Skills diff | `diff --stat` | Technical skills as add/remove/modify lines |
| Open source | `git branch -a` | Side projects, talks, community work |
| Tags | `git tag -n` | Career milestones with annotations |
| Footer | log stats | Commit count, branch count, tag count, years |

## Gotchas

1. **Graph characters must be Unicode box-drawing** — use `\u25CF` (filled circle) for commits, `\u2502` (vertical bar) for continuation, `\u2500\u2510` for merges. Do not use ASCII art like `*` or `|`.
2. **Never use a proportional font** — Source Code Pro only. The terminal illusion depends on monospace alignment.
3. **Diff colors must match terminal conventions** — green for additions, red for removals. Swapping them confuses every developer who sees it.
4. **Do not add rounded corners** — terminals have sharp edges. `border-radius: 2-3px` max for badges only.
5. **Line numbers must be non-selectable** — use `user-select: none` so copy-paste grabs only the content.
6. **The toolbar must be sticky** — it anchors the terminal metaphor. A scrolling toolbar breaks the illusion.
7. **Expandable details need accordion behavior** — opening one commit should close others, like a real log pager.
8. **Respect `prefers-reduced-motion`** — the staggered fade-in and cursor blink must degrade gracefully.

## Output Expectations

- Single-file HTML with embedded CSS and JS (no external dependencies except Google Fonts)
- Dark theme only — this is a terminal; light mode breaks the metaphor
- Responsive: stack commit-line elements vertically below 640px, hide toolbar command
- Include keyboard navigation (j/k/Enter) for developer audience
- All colors in OKLCH

## Reuse and Adaptation

- **Stable traits:** Source Code Pro only, dark OKLCH terminal palette, git graph structure, Unicode box-drawing, line numbers, diff coloring, tag badges
- **Safe variation:** number of commits, branch names, diff content, tag versions, commit messages, contact info, toolbar text
- **Do not add:** photography, gradients, light theme, serif or sans-serif fonts, icons beyond Unicode glyphs
