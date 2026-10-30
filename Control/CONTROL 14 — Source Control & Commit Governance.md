CONTROL 14 — Source Control & Commit Governance

Version: 1.0
Date: 2026-10-30
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Core Principle

All changes are intentional, isolated, traceable and reversible.
Architecture governs code. Code does not govern architecture.

---

# 2. Commit Rules

• One logical change per commit (one class, one fix, one focused refactor).
• Commit as soon as a change builds and its tests pass.
• Tests ship in the same commit as the behavior they cover.
• No mixed feature + refactor commits; no unrelated file changes.

---

# 3. Commit Message Standard

```
[Layer] - [Action] - [Object]
```

Layers: `Lesson`, `Course`, `Control`, `CI`, `Repo`, and from Phase 3 the software layers `Domain`, `Logic`, `Application`, `Infrastructure`, `Presentation`

Actions: `Added`, `Updated`, `Fixed`, `Removed`, `Refactored`

Examples:

```
[Lesson] - Added - Building With Claude 01 From Turing to Claude
[Course] - Added - NBBF course page
[Logic] - Added - OrderTotalCalculator
[Infrastructure] - Fixed - Null handling in OrderRepository
[Control] - Updated - CONTROL 05 to v1.1
```

---

# 4. Branching

• `main` is always releasable and protected (pull request + passing CI).
• Work happens on `feature/<short-name>` or `fix/<short-name>` branches.
• Individual commits are the audit trail — no squash merges.
• Release tags: `v<major>.<minor>.<patch>`.

---

# 5. Pull Requests

Every PR uses `.github/pull_request_template.md`: governing CONTROL documents,
tests added, and whether `ARCHITECTURE_STATUS.md` changed.

---

# 6. Secrets

Never commit keys, certificates, tokens or `.env` files. If one is committed,
rotate it immediately — deleting the file is not enough.

---

END OF DOCUMENT
