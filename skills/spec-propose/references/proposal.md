# Proposal template

Write `changes/<name>/proposal.md` with these sections by default. Repository
instructions or existing proposals may use different headings only when they
still capture why, what changes, affected capabilities, and impact. Keep it to a
page or two. Why and what live here; how lives in `design.md`.

```markdown
## Why

<!-- 1–2 sentences. The problem or opportunity, and why now. -->

## What Changes

<!-- Bullets. New capabilities, modifications, removals. Mark breaking changes
     with **BREAKING**. -->

## Capabilities

### New Capabilities

<!-- kebab-case paths relative to durable specs/, e.g. `user-auth` or
     `identity/user-auth`. Each becomes a delta at
     `changes/<name>/specs/<capability>/spec.md`. Follow the project's existing
     grouping; do not add a domain level the project does not use. -->

### Modified Capabilities

<!-- Existing paths under durable specs/ whose requirements change. Leave empty
     if none. Implementation-only work is not a modified capability. -->

## Impact

<!-- Affected code, APIs, dependencies, systems. -->
```

If nothing observable changes (pure refactor, tooling, docs), say so under
Capabilities and do not write files under `changes/<name>/specs/`.
