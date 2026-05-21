---
name: greenfield
description: Plan a new project from scratch with nothing to start from. Use when the user has an idea but no code yet — guides through scoping, stack choice, architecture, and breaking it into phases.
---

## Process

### 1. Understand the idea
Ask before designing anything. Cover:
- What does this do, and who is it for?
- What does success look like in the first version?
- Any hard constraints — platform, language, integrations, timeline?
- What's the riskiest or most uncertain part?

Don't move forward until the goal is clear. Ask follow-ups if needed.

### 2. Define scope
Establish what's in and out of v1:
- Core features (must have to be useful)
- Nice-to-haves (defer to later)
- Explicitly out of scope

Present this as a short list and confirm with the user before continuing.

### 3. Choose the stack
Recommend a stack based on the constraints. Explain the reasoning briefly — don't list all options, just pick one and defend it. Flag if a choice is a trade-off worth knowing about.

Vilde's defaults unless there's a reason otherwise:
- Desktop apps: Tauri 2 (Rust backend, TypeScript frontend)
- AI/agent work: Python or TypeScript, Anthropic SDK with prompt caching
- CLI tools: Rust
- Backend services: Rust or Python
- Frontend: TypeScript

### 4. Design the architecture
Describe the main components and how they connect. Keep it to a diagram in words — "X talks to Y via Z, which stores in W". No over-engineering; match complexity to the project size.

Identify:
- Entry points (how does the user or system interact with this?)
- Data flow (what moves where?)
- Persistence (what needs to be saved, and how?)
- External dependencies (APIs, services, libraries)

### 5. Break into phases
Split the work into 3–5 phases, each ending with something runnable:
- Phase 1 should be the smallest possible thing that proves the core idea works
- Each phase builds on the last
- Name what "done" looks like for each phase

### 6. Identify risks and unknowns
List 2–4 things that could go wrong or that need a spike/prototype before committing to an approach. Be honest about uncertainty.

### 7. Suggest a starting point
Recommend the first concrete thing to build — usually a minimal skeleton or a proof-of-concept for the riskiest part. Offer to scaffold it.

## Rules

- Interview first, design second — never jump to architecture before understanding the goal
- Recommend, don't enumerate — pick a stack and defend it rather than listing pros/cons of five options
- Keep v1 ruthlessly small — if unsure what to cut, cut it
- End every planning session with a clear "what to build first"
