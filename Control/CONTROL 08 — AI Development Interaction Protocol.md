CONTROL 08 — AI Development Interaction Protocol

Version: 1.0
Date: {{DATE}}
Status: Authoritative (System-Wide)
Project: {{PROJECT_NAME}}

---

# 1. Purpose

Defines how AI assistants (Claude, Cursor, Copilot, ChatGPT) may change this repository.

---

# 2. Rules for Every AI Task

1. Read `CLAUDE.md`, `Control/ARCHITECTURE_STATUS.md` and the CONTROL documents named in the task.
2. Only modify the files specified. Do not modify any other files.
3. Do not modify CONTROL documents unless the task explicitly says so.
4. One logical change per task (CONTROL 11, CONTROL 14).
5. Every behavior change ships with tests in the same commit (CONTROL 15).
6. Run the tests before declaring the task complete; report the real result.
   If tests could not be run, say so — never claim a pass that did not happen.
7. Never add a dependency or change architecture without Human Engineer approval.

---

# 3. Instruction Template

```
TASK: <one sentence>
LAYER: Domain | Logic | Application | Infrastructure | Presentation
GOVERNING CONTROLS: CONTROL xx, CONTROL yy
FILES TO CREATE/MODIFY: <explicit list>
TESTS REQUIRED: <test names / cases>
CONSTRAINTS: Only modify the specified files. Do not modify any other files.
DONE WHEN: tests pass; ARCHITECTURE_STATUS.md updated if a phase item completed.
```

---

# 4. Review of AI Output

The Human Engineer (or a second, independent AI review) checks every AI change against:

• the governing CONTROL documents
• layer rules (CONTROL 10)
• the commit standard (CONTROL 14)

---

END OF DOCUMENT
