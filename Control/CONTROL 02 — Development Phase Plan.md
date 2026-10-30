CONTROL 02 — Development Phase Plan

Version: 1.0
Date: 2026-10-30
Status: Draft — pending Human Engineer approval
Project: Runtime-Republic Training

---

# 1. Purpose

Defines the ordered phases of development. A phase may not begin until the
previous phase's exit gate is met (CONTROL 11: incremental, single-threaded execution).

---

# 2. Phase 0 — Foundation

Deliverables:

• CONTROL 00–02, 04, 05, 08, 11 and 14 filled in for a training repository
• Course and lesson structure per CONTROL 04
• `scripts/check-lessons.sh` and its test, run in CI on every push
• README that works as a front door for learners; CC BY 4.0 license notice

Exit gate: CI green; Human Engineer approves CONTROL 01, 02, 04 and 05.

---

# 3. Phase 1 — Curriculum

Deliverables:

• Course pages for GitHub for Everyone, Building With Claude, AGCL (NBLF), NBBF and NBEF
• Lessons drafted, illustrated and approved per CONTROL 05
• Image standards written (deferred by the Human Engineer until this phase)

Exit gate: at least one full course has every lesson at `Status: Approved`.

---

# 4. Phase 2 — Podcasts

Deliverables:

• Approved lessons narrated exactly as written (Essay-Audio-Runtime)
• A CONTROL document for audio: where episode files live, naming, and publishing to
  RuntimeRepublic.com and BlueprintLiberty.com

Exit gate: one full course published as podcast episodes.

---

# 5. Phase 3 — Bridge Software

Deliverables:

• A CONTROL document naming the first collaboration gap to close, chosen by the Human Engineer
• CONTROL 03, 10, 15 and 16 filled in for the chosen language
• Software built in layers, with tests, under those documents

Exit gate: defined in the Phase 3 CONTROL document.

---

# 6. Revision Policy

Phases may be reordered only by Human Engineer decision recorded in
`Control/ARCHITECTURE_STATUS.md`.

---

END OF DOCUMENT
