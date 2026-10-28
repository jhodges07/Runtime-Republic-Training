CONTROL 11 — Incremental Development & Single-Threaded Execution

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Keeps development deterministic: one change at a time, each verified before the next.

---

# 2. Rules

• Work on ONE logical change at a time; finish, test and commit it before starting another.
• Each change is the smallest step that leaves every check passing.
• One essay per commit; no parallel, overlapping changes to the same essay.
• A failing check stops all new work until it is fixed.
• Phases follow CONTROL 02 in order; no phase starts before its entry gate is met.

---

# 3. Sequence per Change

1. Name the governing CONTROL document(s).
2. Make the change.
3. Run `scripts/check-controls.sh --strict` and `scripts/check-essays.sh`.
4. Fix anything they report.
5. Commit (CONTROL 14).
6. Update `ARCHITECTURE_STATUS.md` if a phase item completed.

---

END OF DOCUMENT
