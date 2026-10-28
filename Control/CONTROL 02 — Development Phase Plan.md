CONTROL 02 — Development Phase Plan

Version: 1.0
Date: {{DATE}}
Status: Authoritative (System-Wide)
Project: {{PROJECT_NAME}}

---

# 1. Purpose

Defines the ordered phases of development. A phase may not begin until the
previous phase's exit gate is met (CONTROL 11: incremental, single-threaded execution).

---

# 2. Phase 0 — Foundation

Deliverables:

• CONTROL documents 00–04, 08, 10, 11, 14–16 filled in
• Repository structure per CONTROL 04
• Test harness and architecture guard tests (CONTROL 15)
• CI running checks and tests on every push

Exit gate: CI green; `scripts/check-controls.sh --strict` passes for the Phase 0 documents.

---

# 3. Phase 1 — {{FILL: name, e.g. MVP}}

Deliverables:

{{FILL: bullet list}}

Exit gate: {{FILL: one measurable condition}}

---

# 4. Phase 2 — {{FILL}}

Deliverables:

{{FILL}}

Exit gate: {{FILL}}

---

# 5. Revision Policy

Phases may be reordered only by Human Engineer decision recorded in
`Control/ARCHITECTURE_STATUS.md`.

---

END OF DOCUMENT
