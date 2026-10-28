CONTROL 04 — Repository Structure & Code Organization

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Structure

```
Runtime-Republic-Training/
│
├── README.md                 Description, essay index, related repositories
├── LICENSE                   CC BY 4.0 (essays and documents)
├── SOURCES.md                Links behind every dated or numeric fact
├── CLAUDE.md                 AI assistant rules (CONTROL 08)
│
├── essays/
│   ├── github-for-everyone/  Series: GitHub history, background, fundamentals
│   ├── nblf/                 Node-Based Liberty Framework topics
│   ├── nbbf/                 Node-Based Budget Framework topics
│   └── nbef/                 Node-Based Education Framework topics
│
├── Control/                  CONTROL documents + ARCHITECTURE_STATUS.md
├── scripts/                  check-controls.sh, check-essays.sh, init-project.sh
└── .github/                  CI workflow, PR template
```

---

# 2. Placement Rules

| If the file… | It goes in… |
|---|---|
| is an essay in a series | `essays/<series>/` |
| explains NBLF, NBBF or NBEF control documents | `essays/nblf/`, `essays/nbbf/` or `essays/nbef/` |
| is a source link for a fact | `SOURCES.md` |
| governs how this repository works | `Control/` |
| checks the repository | `scripts/` |

Each folder under `essays/` has a `README.md` listing its essays and status.

---

# 3. Control Folder Rules

• File name: `CONTROL NN — Title.md`, two-digit number, em dash.
• Every document starts with the header block (title, Version, Date, Status)
  and ends with `END OF DOCUMENT`.
• Every document is listed in CONTROL 00.
• New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.

---

# 4. Never Committed

Secrets, personal data, and audio or video files. Recordings are hosted
elsewhere (for example GitHub Releases or a podcast platform) and linked from
the essay header. See `.gitignore` and CONTROL 16.

---

# 5. Reserved for Software

If software is added (CONTROL 02 §5), its folders are defined here by Human
Engineer decision before any code is committed.

---

END OF DOCUMENT
