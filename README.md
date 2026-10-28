# Control-Engineering-Template

A GitHub template for starting any project under the UNBKE control-document
discipline: every behavior is governed by a numbered CONTROL document, built in
strict layers, proven by tests, and committed one logical change at a time.

Language-neutral — works for C#/.NET, Swift, TypeScript, Python, VBA or plain
document projects. Language-specific rules are filled into CONTROL 03 and 04.

---

## What's inside

| Path | Purpose |
|---|---|
| `Control/CONTROL 00` | Document index; every CONTROL file must be listed |
| `Control/CONTROL 01–02` | Goal and scope; development phases with gates |
| `Control/CONTROL 03–04` | Coding standards; repository structure |
| `Control/CONTROL 08` | AI development protocol and instruction template |
| `Control/CONTROL 10–11` | Layer separation; one change at a time |
| `Control/CONTROL 14–16` | Commits; testing; release and security |
| `Control/_TEMPLATE …` | Blank skeleton for new CONTROL documents |
| `Control/ARCHITECTURE_STATUS.md` | Current phase, decisions, verification log |
| `CLAUDE.md` | Rules AI assistants read before any change |
| `scripts/init-project.sh` | One-time setup: fills project name and date |
| `scripts/check-controls.sh` | Checks headers, index and unfilled markers |
| `.github/` | CI that runs the check; PR template |

Numbering matches the UNBKE control set, so CONTROL 03 always means coding
standards and CONTROL 14 always means source control, in every repo.

---

## Start a new project

1. On GitHub, click **Use this template → Create a new repository**.
2. Clone it, then run once:
   ```bash
   scripts/init-project.sh "My Project Name"
   ```
3. Fill CONTROL 01 and 02, then CONTROL 03 §3–4 and CONTROL 04 §1 for your language.
   An AI assistant can do this from a conversation — `CLAUDE.md` tells it how.
4. Add project-specific models (data model, domain rules) as CONTROL 05–07, 09,
   12–13 or 17+, starting from `Control/_TEMPLATE — New CONTROL Document.md`.
5. Check your work:
   ```bash
   scripts/check-controls.sh           # errors fail, unfilled markers warn
   scripts/check-controls.sh --strict  # unfilled markers fail too
   ```

---

## Placeholders

| Marker | Filled by |
|---|---|
| `{{PROJECT_NAME}}`, `{{DATE}}` | `scripts/init-project.sh` |
| `{{FILL: …}}` | You or an AI assistant, with real project facts |

---

## Maintaining this template

Improve a standard here first, then copy the change into existing projects.
Commits follow CONTROL 14: `[Control] - Updated - CONTROL 15 coverage targets`.
