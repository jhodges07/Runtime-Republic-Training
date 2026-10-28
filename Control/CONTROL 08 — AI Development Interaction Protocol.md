CONTROL 08 — AI Development Interaction Protocol

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Defines how AI assistants (Claude, Cursor, Copilot, ChatGPT) may change this repository.

---

# 2. Rules for Every AI Task

1. Read `CLAUDE.md`, `Control/ARCHITECTURE_STATUS.md` and the CONTROL documents named in the task.
2. Only modify the files specified. Do not modify any other files.
3. Do not modify CONTROL documents unless the task explicitly says so.
4. One logical change per task (CONTROL 11, CONTROL 14).
5. Every new or changed essay passes `scripts/check-essays.sh` in the same commit (CONTROL 15).
6. Run the checks before declaring the task complete; report the real result.
   If a check could not be run, say so — never claim a pass that did not happen.
7. Never add a dependency, change structure or change control authority without
   Human Engineer approval.
8. AI may draft essays and set status `Draft` only. Only the Human Engineer sets
   `Approved` or `Posted` (CONTROL 03 §7).
9. Never fill a gap in a control document with invented content (CONTROL 10).

---

# 3. Instruction Template

```
TASK: <one sentence>
LAYER: Essays | Docs | Control | Scripts | CI
GOVERNING CONTROLS: CONTROL xx, CONTROL yy
FILES TO CREATE/MODIFY: <explicit list>
CHECKS REQUIRED: check-essays, check-controls, fact check, authority check
CONSTRAINTS: Only modify the specified files. Do not modify any other files.
DONE WHEN: checks pass; ARCHITECTURE_STATUS.md updated if a phase item completed.
```

---

# 4. Review of AI Output

The Human Engineer (or a second, independent AI review) checks every AI change against:

• the governing CONTROL documents
• the authority rules (CONTROL 10)
• the writing standards (CONTROL 03)
• the commit standard (CONTROL 14)

---

END OF DOCUMENT
