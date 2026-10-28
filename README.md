# Runtime-Republic Training

Plain-language essays, written to be read aloud, that teach the ideas behind the
Runtime Republic: the Node-Based Liberty Framework (NBLF), the Node-Based Budget
Framework (NBBF) and the Node-Based Education Framework (NBEF), plus the tools
used to build them in the open.

This is training material only. **Essays explain; control documents govern.**
If an essay and a control document disagree, the control document wins
([CONTROL 10](Control/CONTROL%2010%20—%20Authority%20Separation.md)).

---

## Essays

| Series | What it covers | Essays |
|---|---|---|
| [GitHub for Everyone](essays/github-for-everyone/) | GitHub's history, background and fundamentals, from a beginner level up, plus bill drafting and district alerts | 7 (Draft) |
| [NBLF](essays/nblf/) | Node-Based Liberty Framework topics | none yet |
| [NBBF](essays/nbbf/) | Node-Based Budget Framework topics | none yet |
| [NBEF](essays/nbef/) | Node-Based Education Framework topics | none yet |

Status values: **Draft** (written, not yet approved) · **Approved** · **Posted**.
Facts behind the essays are listed in [SOURCES.md](SOURCES.md).

---

## Related repositories

| Repository | What it holds |
|---|---|
| [AGCL-Control-Documents](https://github.com/jhodges07/AGCL-Control-Documents) | NBLF: the American Gold Contract for Liberty master framework and its core points |
| [NBBF-Control-Documents](https://github.com/jhodges07/NBBF-Control-Documents) | Node-Based Budget Framework: node-scoped budgeting, authority boundaries, sunset and renewal |
| [NBEF-Control-Documents](https://github.com/jhodges07/NBEF-Control-Documents) | Node-Based Education Framework |
| [Constitutional-Engineering](https://github.com/jhodges07/Constitutional-Engineering) | Engineering Office architecture, standards and workflows |
| [Legislative-Manager](https://github.com/jhodges07/Legislative-Manager) | Kansas legislative engineering: bill packages, definitions, fiscal-note structure |

## Websites

- [RuntimeRepublic.com](https://RuntimeRepublic.com)
- [BlueprintLiberty.com](https://BlueprintLiberty.com)

---

## How this repository works

Governed by CONTROL documents in [`Control/`](Control/), starting with
[CONTROL 01 — Project Goal & Scope](Control/CONTROL%2001%20—%20Project%20Goal%20&%20Scope.md).
Current status: [ARCHITECTURE_STATUS.md](Control/ARCHITECTURE_STATUS.md).

```bash
scripts/check-essays.sh               # essay headers, status values, citation markers
scripts/check-controls.sh --strict    # CONTROL document headers, index and markers
```

## Contributing

- One logical change per commit: `[Layer] - [Action] - [Object]` (CONTROL 14)
- New essays follow the header format in CONTROL 03 and start as `Draft`
- AI assistants: read [CLAUDE.md](CLAUDE.md) first

## License

Essays and documents are licensed under [CC BY 4.0](LICENSE): share and adapt
them freely with credit to the author.
