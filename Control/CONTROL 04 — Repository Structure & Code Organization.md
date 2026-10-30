CONTROL 04 — Repository Structure & Code Organization

Version: 1.0
Date: 2026-10-30
Status: Draft — pending Human Engineer approval
Project: Runtime-Republic Training

---

# 1. Structure

```
Runtime-Republic Training/
│
├── README.md                 Front door for learners: courses and where to start
├── LICENSE                   CC BY 4.0 legal text for all training material
├── SOURCES.md                Links behind the dated and numeric facts in lessons
├── CLAUDE.md                 AI assistant rules (CONTROL 08)
│
├── Courses/
│   ├── README.md             Course catalog
│   └── <course>/
│       ├── README.md         Course page: purpose, lesson list, source repositories
│       └── <NN-lesson-name>/
│           ├── lesson.md     The essay, with the CONTROL 05 header
│           └── image.png     Supporting image (CONTROL 05 §5)
│
├── src/                      Phase 3 only: bridge software, layered per CONTROL 10
├── tests/                    Phase 3 only
│
├── Control/                  CONTROL documents + ARCHITECTURE_STATUS.md
├── scripts/                  init-project.sh, check-controls.sh, check-lessons.sh
└── .github/                  CI workflow, PR template
```

`src/` and `tests/` do not exist until Phase 3 (CONTROL 02).

---

# 2. Placement Rules

| If the file… | It goes in… |
|---|---|
| teaches one topic | `Courses/<course>/<NN-lesson-name>/lesson.md` |
| illustrates a lesson | the same lesson folder |
| describes a course | `Courses/<course>/README.md` |
| sets a rule for this repository | `Control/` |
| checks the repository | `scripts/` |
| is software (Phase 3) | `src/`, by layer per CONTROL 10 |

---

# 3. Naming Rules

• Course folders: lowercase words joined by hyphens, e.g. `claude-for-citizens`.
• Lesson folders: two-digit order number, then lowercase hyphenated title, e.g. `01-from-turing-to-claude`.
• The order number is the lesson's place in the course and never changes once a lesson is approved.

---

# 4. Control Folder Rules

• File name: `CONTROL NN — Title.md`, two-digit number, em dash.
• Every document starts with the header block (title, Version, Date, Status)
  and ends with `END OF DOCUMENT`.
• Every document is listed in CONTROL 00.
• New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.

---

# 5. Never Committed

Secrets (keys, certificates, `.env`, service config files with credentials),
build output, IDE user files, and audio files until Phase 2 defines where they live.
See `.gitignore` and CONTROL 16.

---

END OF DOCUMENT
