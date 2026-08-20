---
name: spec-propose
description: Create a spec change with planning artifacts — proposal, delta specs, optional design, and tasks. Use when the user wants to propose, spec, or plan a change before implementation. Not for writing product code, exploring without artifacts, updating an existing change, or reviewing a PRD.
---

# Spec propose

Create a change folder and write the planning artifacts. Stop. Do not implement,
even if the request also asks to build or fix something.

If the problem is still vague, `spec-explore` first. If the change already
exists, `spec-update`.

## What this skill does not do

- No product code. Implementation is `spec-apply`, on a later request.
- No exploring-as-output. Thinking without files is `spec-explore`.
- No revising an existing change. That is `spec-update`.
- No PRD review. That is `prd-review`.

## Layout

These paths are in the project being changed, not in this skills repo.

```text
changes/<name>/
  proposal.md
  design.md                      # optional
  tasks.md
  specs/<capability>/spec.md     # deltas for this change
changes/archive/<YYYY-MM-DD-name>/
specs/<capability>/spec.md       # durable behavior contracts
```

Deltas live at `changes/<name>/specs/`. Durable contracts live at `specs/`.
Create `changes/` as needed. Do not create an empty durable `specs/` — archive
writes it when merging. Read durable `specs/` when modifying an existing
capability.

## Work

1. Understand the change. Derive a kebab-case name from the request
   (`add user authentication` → `add-user-auth`). Do not proceed without
   knowing what they want to build or fix. Ask at most once, and only when the
   answer would change scope, observable behavior, compatibility, or acceptance
   criteria. For smaller gaps, assume and record the assumption in the
   proposal.

2. If `changes/<name>/` already exists, stop and ask whether to switch to
   `spec-update` or pick a new name.

3. Create `changes/<name>/`. Write artifacts in this order, re-reading each
   finished file from disk before depending on it:

   - `changes/<name>/proposal.md` — always. Template:
     [references/proposal.md](references/proposal.md).
   - `changes/<name>/specs/<capability>/spec.md` — one delta per capability
     listed in the proposal. Template: [references/spec.md](references/spec.md).
     Skip writing deltas when nothing observable changes; say so in the
     proposal. Do not invent a requirement to have a spec.
   - `changes/<name>/design.md` — only when the change is cross-cutting, adds a
     dependency or data-model change, has security/performance/migration risk,
     or still has unresolved technical choices. Template:
     [references/design.md](references/design.md). Otherwise skip it and say
     why.
   - `changes/<name>/tasks.md` — always. Template:
     [references/tasks.md](references/tasks.md). Reference the deltas for what,
     the design for how.

4. Summarize the change path, the files written, and any artifact skipped.
   Point to `spec-apply`. Do not start it.

## Artifact rules

- A change has one intent you can say in a sentence. Split unrelated work.
- Specs are behavior contracts, not implementation plans. SHALL/MUST, one
  behavior per requirement, at least one scenario that could be tested.
- Capability paths are kebab-case (`user-auth`, or `identity/user-auth` if the
  project already groups that way). Preserve an existing capability's path.
- New capability: start the delta with `## Purpose`. Modified capability: paste
  the full existing requirement, then edit. Read the durable
  `specs/<capability>/spec.md` before writing a MODIFIED or REMOVED delta.
- Tasks use `- [ ] X.Y …` with a verification hint on the same line.
  `spec-apply` tracks only that format.

Fill the templates. Do not copy this skill's instructions into the files.
