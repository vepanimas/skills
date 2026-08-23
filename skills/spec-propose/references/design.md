# Design template

Write `changes/<name>/design.md` only when the change needs technical decisions
before coding. Skip it for a small, obvious change. Use these sections by
default. Repository instructions or existing designs may use different headings
only when they still capture the applicable context, boundaries, decisions,
risks, migration, and open questions.

```markdown
## Context

<!-- Current state and constraints needed to explain the approach. Point at
     proposal.md for motivation; do not restate it. -->

## Goals / Non-Goals

<!-- Design-level boundaries only. Do not restate the proposal's scope. -->

## Decisions

<!-- Key choices with rationale (why X over Y). Include alternatives
     considered. -->

## Risks / Trade-offs

<!-- [Risk] → Mitigation -->

## Migration Plan

<!-- Deploy steps and rollback, if applicable. Omit if none. -->

## Open Questions

<!-- Only unknowns that can wait without changing specs, approach, or tasks.
     If a question would change those, resolve it with the user now. Omit if
     none. -->
```
