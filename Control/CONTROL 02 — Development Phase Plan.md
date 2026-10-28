CONTROL 02 — Development Phase Plan

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Defines the ordered phases of work. A phase may not begin until the previous
phase's exit gate is met (CONTROL 11: incremental, single-threaded execution).

---

# 2. Phase 0 — Foundation

Deliverables:

• CONTROL documents 00–04, 08, 10, 11, 14–16 filled in for an essay repository
• Repository structure per CONTROL 04
• README with related repositories and websites; LICENSE (CC BY 4.0); `SOURCES.md`
• CI running `scripts/check-controls.sh --strict` and `scripts/check-essays.sh`

Exit gate: CI green on `main`.

---

# 3. Phase 1 — GitHub for Everyone

Deliverables:

• Parts 1–5 and Bonus Essays One and Two in `essays/github-for-everyone/`,
  saved with status `Draft`
• Each essay reviewed by the Human Engineer and moved to `Approved`

Exit gate: all seven essays `Approved`, each in its own commit.

---

# 4. Phase 2 — Framework Topics

Deliverables:

• Essays in `essays/nblf/`, `essays/nbbf/` and `essays/nbef/`, each tracing its
  claims to named control documents (CONTROL 10, CONTROL 15)

Exit gate: set by Human Engineer decision before Phase 2 starts, recorded in
`Control/ARCHITECTURE_STATUS.md`.

---

# 5. Later Phases (reserved)

Audio publishing and any software are not yet defined. Each requires a Human
Engineer decision and an update to this document before work begins.

---

# 6. Revision Policy

Phases may be reordered only by Human Engineer decision recorded in
`Control/ARCHITECTURE_STATUS.md`.

---

END OF DOCUMENT
