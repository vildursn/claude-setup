---
name: review
description: Review changed code for correctness, security, and quality. Use when asked to review a PR, diff, or set of changes.
---

## Process

1. Read the diff or changed files — understand what changed and why
2. Check for correctness: logic errors, off-by-ones, missing edge cases
3. Check for security: injection, unvalidated input at boundaries, leaked secrets
4. Check for quality: unnecessary complexity, misleading names, dead code introduced
5. Report findings grouped by severity: **blocker**, **suggestion**, **nit**

## Output Format

- Lead with a one-line verdict: `LGTM`, `LGTM with nits`, or `Needs changes`
- List blockers first, then suggestions, then nits
- Quote the relevant line(s) for each finding
- Skip the nits section entirely if there are none

## Rules

- Do not praise code that is merely correct — silence is approval
- Do not suggest refactors unrelated to the diff
- Flag performance issues only if the impact is non-trivial
- If you cannot determine intent, say so rather than guessing
