---
name: cleanup
description: Remove dead code, simplify complexity, and improve naming without changing behavior. Use when asked to clean up, tidy, or refactor a file or module.
---

## Process

1. Read the target file(s) fully before touching anything
2. Identify: dead code, duplicated logic, misleading names, unnecessary abstraction
3. Make changes that are behavior-preserving — if unsure, leave it alone
4. Run tests (if any) after changes to confirm no regression

## What to clean

- Delete unreachable code and unused imports/variables
- Collapse trivially nested conditions
- Rename symbols whose names contradict what they do
- Remove comments that describe what the code obviously does

## What NOT to touch

- Code style unrelated to the task (formatting, brace placement)
- Behavior changes, even if the current behavior seems wrong
- Abstractions that are "wrong" but consistent across the codebase
- Anything outside the scope the user specified

## Rules

- One logical change per commit — don't bundle rename + delete + restructure
- If a cleanup reveals a latent bug, report it separately rather than fixing it silently
