#!/usr/bin/env bash
#
# validate-bundle.sh — Validate a design skill bundle directory.
#
# Usage:
#   ./validate-bundle.sh <bundle-dir>
#   ./validate-bundle.sh .commons/design-skills/pencil-draft
#
# Checks:
#   1. Required files exist
#   2. JSON files parse
#   3. exhibit.html has h1, footer, no placeholder text, no purple hex
#   4. DESIGN.md is 200+ chars
#
# Exit code: 0 = PASS, 1 = FAIL

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

ERRORS=()
WARNINGS=()

fail() {
  ERRORS+=("$1")
}

warn() {
  WARNINGS+=("$1")
}

if [ $# -lt 1 ]; then
  echo "Usage: $0 <bundle-directory>"
  echo "Example: $0 .commons/design-skills/pencil-draft"
  exit 1
fi

BUNDLE_DIR="$1"

if [ ! -d "$BUNDLE_DIR" ]; then
  echo -e "${RED}FAIL${NC}: Directory does not exist: $BUNDLE_DIR"
  exit 1
fi

echo "Validating bundle: $BUNDLE_DIR"
echo "---"

# --------------------------------------------------------------------------
# 1. Required files exist
# --------------------------------------------------------------------------

REQUIRED_FILES=(
  "DESIGN.md"
  "SKILL.md"
  "design-skill.json"
  "tokens.dtcg.json"
  "exhibit.html"
)

for file in "${REQUIRED_FILES[@]}"; do
  if [ ! -f "$BUNDLE_DIR/$file" ]; then
    fail "Missing required file: $file"
  else
    echo "  [ok] $file exists"
  fi
done

# --------------------------------------------------------------------------
# 2. JSON files parse
# --------------------------------------------------------------------------

for json_file in "design-skill.json" "tokens.dtcg.json"; do
  filepath="$BUNDLE_DIR/$json_file"
  if [ -f "$filepath" ]; then
    if command -v python3 &>/dev/null; then
      if ! python3 -c "import json; json.load(open('$filepath'))" 2>/dev/null; then
        fail "$json_file is not valid JSON"
      else
        echo "  [ok] $json_file parses as valid JSON"
      fi
    elif command -v node &>/dev/null; then
      if ! node -e "JSON.parse(require('fs').readFileSync('$filepath', 'utf8'))" 2>/dev/null; then
        fail "$json_file is not valid JSON"
      else
        echo "  [ok] $json_file parses as valid JSON"
      fi
    else
      warn "Cannot validate JSON (no python3 or node available): $json_file"
    fi
  fi
done

# --------------------------------------------------------------------------
# 3. exhibit.html checks
# --------------------------------------------------------------------------

EXHIBIT="$BUNDLE_DIR/exhibit.html"
if [ -f "$EXHIBIT" ]; then
  EXHIBIT_CONTENT=$(cat "$EXHIBIT")
  EXHIBIT_LOWER=$(echo "$EXHIBIT_CONTENT" | tr '[:upper:]' '[:lower:]')

  # Check for <h1>
  if ! echo "$EXHIBIT_LOWER" | grep -q '<h1'; then
    fail "exhibit.html is missing an <h1> heading"
  else
    echo "  [ok] exhibit.html has <h1>"
  fi

  # Check for <footer>
  if ! echo "$EXHIBIT_LOWER" | grep -q '<footer'; then
    fail "exhibit.html is missing a <footer>"
  else
    echo "  [ok] exhibit.html has <footer>"
  fi

  # Check for placeholder text
  if echo "$EXHIBIT_LOWER" | grep -qi 'lorem ipsum'; then
    fail "exhibit.html contains 'lorem ipsum' placeholder text"
  fi
  if echo "$EXHIBIT_LOWER" | grep -qi '\[todo\]'; then
    fail "exhibit.html contains '[TODO]' placeholder text"
  fi
  if echo "$EXHIBIT_LOWER" | grep -qi '\btbd\b'; then
    fail "exhibit.html contains 'TBD' placeholder text"
  fi
  if ! echo "$EXHIBIT_LOWER" | grep -qi 'lorem ipsum\|\[todo\]\|placeholder\|replace me'; then
    echo "  [ok] exhibit.html has no placeholder text"
  fi

  # Check for purple hex codes (AI slop signal)
  PURPLE_HEXES=(
    "#8b5cf6" "#a855f7" "#6366f1" "#7c3aed" "#9333ea"
    "#a78bfa" "#c084fc" "#818cf8" "#6d28d9" "#5b21b6"
  )
  PURPLE_FOUND=()
  for hex in "${PURPLE_HEXES[@]}"; do
    if echo "$EXHIBIT_LOWER" | grep -qi "$hex"; then
      PURPLE_FOUND+=("$hex")
    fi
  done
  if [ ${#PURPLE_FOUND[@]} -gt 0 ]; then
    warn "exhibit.html contains AI-purple hex codes: ${PURPLE_FOUND[*]} (strong slop signal)"
  else
    echo "  [ok] exhibit.html has no AI-purple hex codes"
  fi

  # Check minimum size
  EXHIBIT_CHARS=${#EXHIBIT_CONTENT}
  if [ "$EXHIBIT_CHARS" -lt 2200 ]; then
    fail "exhibit.html is too short ($EXHIBIT_CHARS chars, minimum 2200)"
  else
    echo "  [ok] exhibit.html is $EXHIBIT_CHARS chars"
  fi
fi

# --------------------------------------------------------------------------
# 4. DESIGN.md length check
# --------------------------------------------------------------------------

DESIGN="$BUNDLE_DIR/DESIGN.md"
if [ -f "$DESIGN" ]; then
  DESIGN_CHARS=$(wc -c < "$DESIGN" | tr -d ' ')
  if [ "$DESIGN_CHARS" -lt 200 ]; then
    fail "DESIGN.md is too short ($DESIGN_CHARS chars, minimum 200)"
  else
    echo "  [ok] DESIGN.md is $DESIGN_CHARS chars"
  fi
fi

# --------------------------------------------------------------------------
# Results
# --------------------------------------------------------------------------

echo ""
echo "---"

if [ ${#WARNINGS[@]} -gt 0 ]; then
  echo -e "${YELLOW}Warnings:${NC}"
  for w in "${WARNINGS[@]}"; do
    echo -e "  ${YELLOW}!${NC} $w"
  done
fi

if [ ${#ERRORS[@]} -eq 0 ]; then
  echo -e "${GREEN}PASS${NC} — Bundle is valid."
  exit 0
else
  echo -e "${RED}FAIL${NC} — ${#ERRORS[@]} error(s) found:"
  for e in "${ERRORS[@]}"; do
    echo -e "  ${RED}x${NC} $e"
  done
  exit 1
fi
