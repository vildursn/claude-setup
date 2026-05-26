# claude-setup

My global [Claude Code](https://claude.ai/code) configuration — preferences, model settings, hooks, and custom skills.

## Install

```sh
git clone https://github.com/vildursn/claude-setup.git
cd claude-setup
./install.sh
```

The script backs up your existing `~/.claude/settings.json`, installs the new one, and installs `ruff` and `gitleaks` via Homebrew if missing. Restart Claude Code after.

> Work-specific plugins (e.g. DIPS) need to be re-enabled manually in settings after install.

## Structure

```
CLAUDE.md              # Global instructions: style, workflow, tools
settings.json          # Model, theme, hooks, skills marketplace
install.sh             # Setup script
skills/
  claude-api/          # Anthropic SDK best practices + model info
  cleanup/             # Remove dead code and simplify without changing behavior
  design/              # Personal design style (minimal, earthy, playful details)
  explore/             # Learn and understand an unfamiliar codebase
  greenfield/          # Plan a new project from scratch
  norwegian/           # Guide for writing Norwegian (Bokmål tone, grammar, vocabulary)
  plan/                # Design an implementation approach before coding
  review/              # Review code changes for correctness, security, quality
```

## CLAUDE.md

Covers commit style (conventional commits), response preferences (terse, no trailing summaries), and stack defaults (Rust, TypeScript, Python, Tauri 2).

## Hooks

Pre-commit hook that runs automatically before every `git commit`:
- **`ruff check`** — Python linting
- **`gitleaks git --staged`** — secrets detection on staged files

Blocks the commit if either fails.

## Skills

| Skill | Triggers when |
|---|---|
| `claude-api` | Working with the Anthropic SDK, prompt caching, model selection |
| `cleanup` | Asked to clean up, tidy, or remove dead code |
| `design` | Building or designing any UI |
| `explore` | New to a repo or want to understand how it works |
| `greenfield` | Planning a new project with nothing to start from |
| `norwegian` | Writing, editing, or reviewing Norwegian text |
| `plan` | Starting a non-trivial task with unclear approach |
| `review` | Reviewing a PR, diff, or set of changes |
