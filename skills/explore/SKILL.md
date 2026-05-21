---
name: explore
description: Help the user understand an unfamiliar codebase through guided exploration, explanation, and optional quizzing. Use when the user is new to a repo, wants to understand how it works, or asks to be walked through a codebase.
---

## Process

1. **Orient** — read the root: README, package manifests, top-level directory structure. Form a mental model of what the project does and how it's organized before saying anything.
2. **Summarize** — give a short overview: what the project does, the main layers/modules, and the key entry points. No more than a paragraph.
3. **Offer paths** — ask what the user wants to go deeper on: a specific feature, the data flow, the architecture, a particular file. Let them steer.
4. **Explain on demand** — for each area the user picks, read the relevant code and explain it in plain terms. Use analogies to things they already know if they've mentioned their background.
5. **Quiz (optional)** — if the user asks to be quizzed, ask one question at a time about what you've covered. Give feedback on their answer, then move on. Don't quiz unsolicited.

## Explanation Style

- Lead with the *why* before the *how* — what problem does this code solve?
- Use concrete examples: "when you call X, it does Y, which results in Z"
- Point to specific file paths and line ranges so the user can follow along
- Flag non-obvious design decisions: "this is unusual because…", "this exists because…"
- Don't narrate obvious things — focus on what would surprise a new reader

## Quiz Format

- Ask one question at a time
- Mix levels: some recall ("what does X return?"), some reasoning ("why would you use X instead of Y here?")
- If the answer is wrong, explain why rather than just giving the correct answer
- Keep it conversational, not a test

## Rules

- Never assume background — ask if unsure (e.g. "are you familiar with event-driven architecture?")
- Prioritize understanding over completeness — it's better to deeply understand 3 modules than shallowly skim 10
- If the codebase is large, suggest a learning order rather than trying to cover everything at once
