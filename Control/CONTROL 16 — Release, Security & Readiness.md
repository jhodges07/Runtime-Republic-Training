CONTROL 16 — Release, Security & Readiness

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Defines what must be true before any release leaves the team.

---

# 2. Security

• Secrets live in a secret store or CI secrets, never in the repository.
• HTTPS / TLS for every external call; no certificate-verification bypasses.
• Accounts with deploy or admin rights use two-factor authentication; at least two admins.
• Dependency versions are pinned (lock file committed); updates reviewed monthly.
• Personal data: collect the minimum; document what is stored and where.
  {{FILL: data inventory or link to the project's privacy CONTROL document}}

---

# 3. Release Checklist

- [ ] CI green on the release commit; tag `vX.Y.Z`
- [ ] Manual checklist (CONTROL 15 §5) passed and recorded
- [ ] CONTROL documents match the shipped behavior
- [ ] No unfilled `{{FILL}}` markers in documents governing shipped features
- [ ] Secrets rotated if anyone with access has left
{{FILL: platform-specific steps, e.g. App Store review, database migration}}

---

END OF DOCUMENT
