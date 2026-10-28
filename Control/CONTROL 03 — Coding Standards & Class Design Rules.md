CONTROL 03 — Coding Standards & Class Design Rules

Version: 1.0
Date: {{DATE}}
Status: Authoritative (System-Wide)
Project: {{PROJECT_NAME}}

---

# 1. Purpose

Defines coding standards so code is predictable, structured, reviewable and
safe for AI-assisted modification. Language-specific rules go in §3 and §4.

---

# 2. Core Principle

Code must be predictable, structured, readable, consistent and aligned with architecture.

Code must NOT introduce hidden logic, violate layer boundaries or create ambiguity.

---

# 3. Language & Framework

| Item | Standard |
|------|----------|
| Language | {{FILL: e.g. C# 12 / Swift 5.10 / TypeScript 5}} |
| Framework | {{FILL}} |
| Package manager | {{FILL}} |
| Formatter / linter | {{FILL}} |
| Test framework | {{FILL}} |

---

# 4. Naming Conventions

{{FILL: replace the examples with the language's conventions}}

| Element | Format | Example |
|---------|--------|---------|
| Types | PascalCase | `OrderLine` |
| Interfaces / protocols | {{FILL: e.g. I-prefix in C#, none in Swift}} | `IOrderStore` |
| Use cases | Verb + noun + `UseCase` | `PlaceOrderUseCase` |
| Methods, variables | {{FILL: camelCase / PascalCase}} | `orderId` |
| Tests | `<Subject>_<Condition>_<ExpectedResult>` | `Total_EmptyOrder_IsZero` |

---

# 5. Class Design Rules

## 5.1 Single Responsibility
Each class has ONE responsibility. Do not mix UI + logic, or transport + domain logic.

## 5.2 Layer Alignment
Every class belongs to exactly one layer (CONTROL 10) and must not cross boundaries.

## 5.3 No Business Logic in UI or API
UI and API classes display data, receive input and forward intent. They never
enforce rules or change state directly.

## 5.4 Logic Authority
All state changes and business rules live in the Logic layer only.

## 5.5 Dependency Injection
Dependencies come in through constructors. No hidden singletons or uncontrolled static state.

---

# 6. Method Design Rules

Methods are small, focused and readable. Avoid deep nesting and hidden side effects.

---

# 7. Error Handling

• Handle expected errors; never fail silently.
• Never swallow exceptions, except documented best-effort cleanup with a comment saying why.
• Use typed / specific errors, translated to user-facing text only in the presentation layer.

---

# 8. Comments & Documentation

• Comments explain *why*, assumptions and constraints — not *what*.
• Every public type and method has a doc comment.
• Every source file begins with a header naming its layer and governing CONTROL:

```
// Layer: Logic
// Governed by: CONTROL 05 — <Model name>
```

---

# 9. AI Compatibility Rules

Keep structure consistent, avoid clever shortcuts, use clear naming. See CONTROL 08.

---

# 10. Prohibited Patterns

• business logic in UI or API
• data access outside Infrastructure
• cross-layer dependencies
• uncontrolled static or global state
• hidden side effects
• secrets in source code
{{FILL: language-specific prohibitions, e.g. force unwraps, `async void`, `any`}}

---

# 11. Enforcement

• Build-level separation (projects / packages / modules per layer) where the language allows.
• Architecture guard tests (CONTROL 15).
• Review against CONTROL documents before merge.

---

END OF DOCUMENT
