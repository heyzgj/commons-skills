# IDE Split Pane -- Design Skill

## Design Context

**Audience:** Software engineers, systems programmers, open-source contributors, DevRel professionals -- people who live inside code editors and want their portfolio to reflect that.

**Use cases:** Developer personal portfolio, engineering resume, open-source project showcase, technical blog, conference speaker page.

**Brand personality:** Technical precision, understated cleverness, functional minimalism. The portfolio does not describe a developer -- it IS a development environment. Personality emerges through terminal output and code comments, not marketing copy.

---

## Design Direction

**Purpose:** Present a developer's work inside a fully interactive code editor interface. Every portfolio section is a "file" opened in the editor.

**Tone:** Quietly confident. The kind of person who responds to `whoami` with a one-liner and lets their commit history speak for itself.

**The ONE memorable thing:** The page is an actual functioning IDE -- file tree, tabs, split panes, terminal, command palette, minimap. Not a screenshot of an IDE. Not an IDE-themed website. A working editor where About.md, projects, and blog posts are syntax-highlighted files you navigate by clicking the tree or pressing Cmd+K.

**What makes it unforgettable:** The integrated terminal at the bottom answers shell commands with personality (`whoami` returns a bio, `uptime` returns career stats, `cat /proc/interests` lists hobbies). The About.md opens in split-pane view with a timeline on the right. Every project is a source file in its actual language (`.rs`, `.go`, `.ts`, `.py`, `.nix`).

**References:** VS Code, Zed, Neovim (the tools themselves, not websites about them). The page should be indistinguishable from a real editor at first glance.

---

## Workflow

### Step 1 -- Load design language
Read `https://joincommons.cc/api/items/ide-split-pane/raw/design-language`. Internalize: single font (Fira Code), OKLCH dark palette (hue 260 base), 36px/35px/24px/24px chrome heights, 240px sidebar, 60px minimap, syntax color roles (keyword=purple, string=green, function=gold, type=cyan, comment=grey).

### Step 2 -- Load image kit
Read `https://joincommons.cc/api/items/ide-split-pane/raw/image-kit`. Confirm: this skill uses zero photography. All visuals are typographic, CSS-only, or HTML entities. File/folder icons are Unicode glyphs, git indicators are colored dots, the minimap is procedurally generated colored bars.

### Step 3 -- Build
1. Set up the three-row outer grid: title bar (macOS traffic lights + centered title) | main area | status bar
2. Main area: 240px sidebar with file tree (indented, icons, expand/collapse arrows, git dots) + editor area
3. Editor area: tab bar (active tab has top accent border) + breadcrumb + content pane with minimap
4. Content: each "file" is a function returning editor-pane HTML with line numbers and syntax-highlighted spans
5. Split view: About page renders left pane (bio) + 4px gutter + right pane (timeline)
6. Terminal panel: bottom dock, togglable, with colored prompt and personality-driven command responses
7. Command palette: Cmd+K overlay, fuzzy search across all files, keyboard navigation
8. Status bar: branch name, error/warning counts, cursor position, encoding, file type
9. Responsive: sidebar collapses to overlay below 900px; minimap hidden below 600px; split view goes single-pane

### Step 4 -- Self-critique gate
Before finalizing, check against `https://joincommons.cc/api/items/ide-split-pane/raw/anti-patterns`:
1. Does the squint-test silhouette read as an IDE (sidebar + tabs + editor + status bar)?
2. Is ALL content inside editor panes with line numbers? No section breaks out of the editor frame?
3. Is Fira Code the only font? No sans-serif or serif anywhere?
4. Do file tree clicks open tabs? Does Cmd+K open a palette? Does the terminal toggle?
5. Are all text sizes between 11px and 14px? No outsized headings?

---

## Gotchas

1. **This is an IDE, not an IDE-themed website.** If you can remove the sidebar/tabs/status-bar and the page still looks like a normal portfolio, you built the wrong thing. The chrome IS the design.

2. **Single font, no exceptions.** Fira Code monospace everywhere. Headings differentiate by weight (700) and syntax color (gold for functions/headings), never by changing font-family or going above 14px.

3. **Zero images.** No photographs, no SVG illustrations, no project screenshots. All content is text rendered as syntax-highlighted code. The "visuals" are the syntax colors themselves.

4. **Interactivity is mandatory.** File tree navigation, tab switching/closing, folder expand/collapse, command palette with keyboard nav, terminal toggle. Without working interactions, this is a screenshot.

5. **Syntax colors have fixed roles.** Purple (hue 300) = keywords/markers. Green (hue 150) = strings/prompts. Gold (hue 60) = functions/headings. Cyan (hue 200) = types/modules. Grey (hue 220) = comments. Do not reassign.

6. **The terminal carries the personality.** Shell commands like `whoami`, `uptime`, and `cat /proc/interests` return the developer's bio, career stats, and interests in terse terminal-output voice. This is where warmth lives in an otherwise austere interface.

7. **Status bar is the footer.** There is no traditional footer. The 24px status bar with branch, errors, cursor position, encoding, and file type IS the bottom of the page. Do not add a second footer below it.

8. **No border-radius on chrome.** Tabs, panels, sidebar, and terminal are all hard-cornered rectangles. Only traffic light dots (12px circles) and git indicator dots (6px circles) are round. A single rounded corner on a panel breaks the IDE fidelity.
