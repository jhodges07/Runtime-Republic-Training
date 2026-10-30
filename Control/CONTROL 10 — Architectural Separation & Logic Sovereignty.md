CONTROL 10 — Architectural Separation & Logic Sovereignty

Version: 1.0
Date: 2026-10-30
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training
Applies: Phase 3 (software) and later. Not applicable to lessons; fill its blanks when Phase 3 starts (CONTROL 02).

---

# 1. Layer Flow

```
Presentation (UI / API)
   ↓ calls
Application (Use Cases, Ports)
   ↓ uses                        ↑ implemented by
Logic                            Infrastructure
   ↓ uses
Domain
```

{{FILL: rename layers if the project uses different names, e.g. UNBKE "LogicMachine"}}

---

# 2. Layer Responsibilities

| Layer | Responsibility | May depend on |
|---|---|---|
| Domain | Pure models and invariants | nothing (standard library only) |
| Logic | **ALL business rules and state changes**. Deterministic | Domain |
| Application | Use cases: orchestrate ports + Logic; defines port interfaces | Domain, Logic |
| Infrastructure | Database, network, file implementations of ports | Domain, Application |
| Presentation | Display and transport only; composition root | all of the above |

---

# 3. System Rules

• Logic is the ONLY place where business rules exist and state changes are decided.
• Domain contains no infrastructure or UI code.
• Presentation contains no business logic.
• No direct data access outside Infrastructure.
• No duplicate concepts — single source of truth.
• Where history matters: events are immutable; state is derived, never stored.

---

# 4. Enforcement

1. **Build time:** one project / package / module per layer, so illegal references fail to build.
2. **Test time:** architecture guard tests check references and imports (CONTROL 15).

---

END OF DOCUMENT
