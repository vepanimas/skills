---
name: spec-propose
description: Create a spec change with planning artifacts — proposal, delta specs, optional design, and tasks. Use when the user wants to propose, spec, or plan a change before implementation. Not for writing product code, exploring without artifacts, updating an existing change, or reviewing a PRD.
---

# Spec propose

Create a change folder and write the planning artifacts before implementation.
If the request is proposal-only, stop after the artifacts. If it explicitly
also asks to build or fix the change, re-read the completed artifacts, announce
the transition, and continue with `spec-apply`.

If the problem is still vague, `spec-explore` first. If the change already
exists, `spec-update`.

## What this skill does not do

- No product code while proposing. Implementation begins with `spec-apply` only
  after the planning artifacts are complete.
- No exploring-as-output. Thinking without files is `spec-explore`.
- No revising an existing change. That is `spec-update`.
- No PRD review. That is `prd-review`.

## Layout

These paths are in the project being changed, not in this skills repo. They are
the defaults. Use different paths only when repository instructions define them
or an existing change already maps the same artifact roles. Resolve each role
to a concrete path before writing, then preserve that mapping.

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
   knowing what they want to build or fix. Ask when the answer would change
   scope, observable behavior, compatibility, or acceptance criteria, batching
   related questions when practical. For smaller gaps, assume and record the
   assumption in the proposal.

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

4. Summarize the change path, the files written, and any artifact skipped. If
   the request was proposal-only, point to `spec-apply` and stop. If the request
   explicitly includes implementation, announce the transition and continue
   with `spec-apply`.

## Artifact rules

- A change has one intent you can say in a sentence. Split unrelated work.
- Specs are behavior contracts, not implementation plans. Use the project's
  normative keywords when defined; otherwise use SHALL/MUST for hard
  requirements and SHOULD only when a stated exception is allowed. Each
  requirement describes one independently testable behavior and includes at
  least one scenario or equivalent acceptance example that exercises it.
- Capability paths are kebab-case (`user-auth`, or `identity/user-auth` if the
  project already groups that way). Preserve an existing capability's path.
- New capability: start the delta with `## Purpose`. Modified capability: paste
  the full existing requirement, then edit. Read the durable
  `specs/<capability>/spec.md` before writing a MODIFIED or REMOVED delta.
- Tasks default to `- [ ] X.Y …` with a verification hint on the same line. An
  existing style may change the bullet, numbering, grouping, or placement of
  the verification hint, but each task must remain a standard Markdown checkbox
  with an unambiguous verification method.

Use the templates unless repository instructions or existing artifacts define
different headings that capture the same information. The delta grammar remains
fixed for `spec-archive`. Do not copy this skill's instructions into the files.
