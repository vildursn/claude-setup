# claude-setup

My global [Claude Code](https://claude.ai/code) configuration — preferences, model settings, and custom skills.

## Structure

```
CLAUDE.md              # Global instructions: style, workflow, tools
settings.json          # Model, theme, plugins
skills/
  claude-api/          # Skill: Anthropic SDK best practices + model info
```

## Install

Symlink or copy into `~/.claude/`:

```sh
ln -sf "$(pwd)/CLAUDE.md" ~/.claude/CLAUDE.md
ln -sf "$(pwd)/settings.json" ~/.claude/settings.json
mkdir -p ~/.claude/skills
cp -r skills/claude-api ~/.claude/skills/
```

Or just copy the parts you want — none of it is interdependent.

## CLAUDE.md

Covers commit style (conventional commits), response preferences (terse, no trailing summaries), and stack defaults (Rust, TypeScript, Python, Tauri 2). Applied globally to every Claude Code session.

## Skills

**`claude-api`** — loaded automatically when working with the Anthropic SDK. Covers current model IDs, prompt caching patterns, streaming, tool use, and extended thinking.

Skills in Claude Code are markdown files that get injected into context on demand. You can add your own under `~/.claude/skills/<name>/SKILL.md`.
