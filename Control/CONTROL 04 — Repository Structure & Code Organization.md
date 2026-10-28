CONTROL 04 — Repository Structure & Code Organization

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Structure

{{FILL: replace the code folders with the project's real layout; keep Control/, CLAUDE.md, scripts/ and .github/}}

```
Runtime-Republic Training/
│
├── README.md
├── CLAUDE.md                 AI assistant rules (CONTROL 08)
│
├── src/
│   ├── Domain/               Pure models. No I/O.
│   ├── Logic/                ALL business rules.
│   ├── Application/          Use cases + ports (interfaces)
│   ├── Infrastructure/       Database, network, file implementations of ports
│   └── Presentation/         UI or API — display / transport only
│
├── tests/
│   ├── Domain/  Logic/  Application/  Infrastructure/
│   └── Architecture/         Layer guard tests
│
├── Control/                  CONTROL documents + ARCHITECTURE_STATUS.md
├── scripts/                  init-project.sh, check-controls.sh
└── .github/                  CI workflow, PR template
```

---

# 2. Placement Rules

| If the code… | It goes in… |
|---|---|
| describes what something is | Domain |
| decides, calculates or changes state | Logic |
| orchestrates a user action | Application |
| talks to a database, network or disk | Infrastructure |
| draws a screen or exposes an endpoint | Presentation |

---

# 3. Control Folder Rules

• File name: `CONTROL NN — Title.md`, two-digit number, em dash.
• Every document starts with the header block (title, Version, Date, Status)
  and ends with `END OF DOCUMENT`.
• Every document is listed in CONTROL 00.
• New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.

---

# 4. Never Committed

Secrets (keys, certificates, `.env`, service config files with credentials),
build output, IDE user files. See `.gitignore` and CONTROL 16.

---

END OF DOCUMENT
