---
name: plan
description: Explore the codebase and design an implementation approach before writing code. Use when starting a non-trivial task where the approach is unclear or multiple strategies are possible.
---

## Process

1. **Explore first** — read relevant files, grep for existing patterns, find reusable utilities
2. **Ask before assuming** — if intent is ambiguous or the approach has meaningful trade-offs, ask
3. **Design** — pick one approach; state the key decision and why
4. **List what changes** — files to modify, new files if unavoidable, anything deleted

## Output Format

- One paragraph of context: what problem this solves and why now
- Recommended approach (not alternatives — pick one)
- Bullet list of files to change, with one line on what changes in each
- Verification: how to confirm the change works

## Rules

- Prefer editing existing files over creating new ones
- If a suitable utility already exists, use it — don't reimplement
- Do not start implementing until the user approves the plan
- Keep the plan short enough to scan in 30 seconds
