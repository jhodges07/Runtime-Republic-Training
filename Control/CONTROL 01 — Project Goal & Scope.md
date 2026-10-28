CONTROL 01 — Project Goal & Scope

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

This document defines **what Runtime-Republic Training is, what it must achieve, and what it must not do**.

Every other CONTROL document serves the goals defined here.

---

# 2. Mission

Teach the ideas behind the Runtime Republic, and the tools used to build it in
the open, through plain-language essays written to be listened to. Readers start
at a beginner level and finish able to read the control documents themselves.

---

# 3. Goals

Each goal names the CONTROL document that governs it.

## G1 — Read-aloud essays
Every essay is written to be heard: plain language, no citation markers, no
tables or code in the essay text. See CONTROL 03.

## G2 — Topics grounded in the control documents
Topic essays explain the NBLF, NBBF and NBEF control documents. They explain;
they never govern. See CONTROL 10.

## G3 — Verified facts
Every dated or numeric fact is listed in `SOURCES.md` and checked before an
essay is approved. See CONTROL 15.

## G4 — Engineering integrity
All changes are documented, structured, verified and traceable.
See CONTROL 03, 10, 14 and 15.

---

# 4. Success Criteria (first release)

• The seven "GitHub for Everyone" essays are in the repository, each with a
  header showing its status.
• The README links every related public control repository and both websites.
• Every dated fact in a published essay has an entry in `SOURCES.md`.
• `scripts/check-controls.sh --strict` and `scripts/check-essays.sh` pass in CI.
• The Human Engineer has marked each published essay `Approved` or `Posted`.

---

# 5. Out of Scope

• Creating, amending or interpreting control authority. That belongs to the
  control repositories listed in the README.
• Software. This repository holds documents only. Software rules in CONTROL 03,
  04 and 10 are reserved for a future phase and are not active.
• Audio files. Recordings are hosted elsewhere and linked, not committed.
• Personal data of any kind.

---

# 6. Glossary

| Term | Meaning |
|------|---------|
| Essay | A plain-language text written to be read aloud, stored as one Markdown file |
| Series | An ordered set of essays on one subject, stored in one folder under `essays/` |
| NBLF | Node-Based Liberty Framework. Its control documents are in `AGCL-Control-Documents` |
| NBBF | Node-Based Budget Framework. Control documents in `NBBF-Control-Documents` |
| NBEF | Node-Based Education Framework. Control documents in `NBEF-Control-Documents` |
| Control document | An authoritative document in a control repository; the source of truth an essay explains |
| Human Engineer | The person with sole authority to approve essays and change CONTROL documents |

---

# 7. Relationship to Other Controls

• CONTROL 02 — Development Phase Plan
• CONTROL 03 — Writing Standards
• CONTROL 10 — Authority Separation
• CONTROL 15 — Verification Standard

---

# 8. Revision Policy

Changes to goals require explicit Human Engineer approval and a version bump.

---

END OF DOCUMENT
