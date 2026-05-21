#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"
TARGET="$CLAUDE_DIR/settings.json"

mkdir -p "$CLAUDE_DIR"

# Back up existing settings
if [ -f "$TARGET" ]; then
  cp "$TARGET" "$TARGET.bak"
  echo "Backed up existing settings to settings.json.bak"
fi

# Copy settings and substitute repo path
sed "s|__REPO_DIR__|$REPO_DIR|g" "$REPO_DIR/settings.json" > "$TARGET"
echo "Installed settings.json"

# Install tools
if command -v brew &>/dev/null; then
  missing=()
  command -v ruff &>/dev/null || missing+=(ruff)
  command -v gitleaks &>/dev/null || missing+=(gitleaks)
  if [ ${#missing[@]} -gt 0 ]; then
    brew install "${missing[@]}"
  fi
else
  echo "Warning: brew not found. Install ruff and gitleaks manually."
fi

echo ""
echo "Done. Restart Claude Code for changes to take effect."
echo "Note: work-specific plugins (DIPS etc.) need to be re-enabled manually in settings."
