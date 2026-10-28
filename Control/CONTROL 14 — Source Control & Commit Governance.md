CONTROL 14 — Source Control & Commit Governance

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Core Principle

All changes are intentional, isolated, traceable and reversible.
Architecture governs code. Code does not govern architecture.

---

# 2. Commit Rules

• One logical change per commit (one essay, one CONTROL document, one fix).
• Commit as soon as a change passes its checks.
• A status change (Draft → Approved → Posted) is its own commit.
• No mixed changes; no unrelated file changes.

---

# 3. Commit Message Standard

```
[Layer] - [Action] - [Object]
```

Layers: `Essays`, `Docs`, `Control`, `Scripts`, `CI`, `Repo`

Actions: `Added`, `Updated`, `Fixed`, `Removed`, `Refactored`

Examples:

```
[Essays] - Added - GitHub for Everyone Part 1
[Essays] - Updated - Part 2 status to Approved
[Control] - Updated - CONTROL 03 to v1.1
```

---

# 4. Branching

• `main` is always releasable and protected (pull request + passing CI).
• Work happens on `essays/<short-name>`, `docs/<short-name>` or `fix/<short-name>` branches.
• Individual commits are the audit trail — no squash merges.
• Release tags: `v<major>.<minor>.<patch>`.

---

# 5. Pull Requests

Every PR uses `.github/pull_request_template.md`: governing CONTROL documents,
checks run, and whether `ARCHITECTURE_STATUS.md` changed.

---

# 6. Secrets

Never commit keys, certificates, tokens or `.env` files. If one is committed,
rotate it immediately — deleting the file is not enough.

---

END OF DOCUMENT
