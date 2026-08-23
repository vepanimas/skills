---
name: spec-update
description: Revise planning artifacts of an existing spec change so they stay coherent. Use when the user wants to update a change's proposal, specs, design, or tasks. Not for implementing code, creating a new change, archiving, reviewing a PRD, or rewriting prose the user will send.
---

# Spec update

Revise an existing change's planning artifacts and keep them coherent. Do not
write product code while updating the plan. If the request also asks to continue
implementation, finish the artifact update, announce the transition, and use
`spec-apply`.

If `changes/<name>/` does not exist, `spec-propose` is the right skill. A
product document the user is about to share is `prd-review`, not this.

## What this skill does not do

- No product code while updating planning artifacts.
- No new change folders. A different intent gets a new name and `spec-propose`.
- No archive. That is `spec-archive`.
- No copy-editing for its own sake. Wording only changes when it creates
  ambiguity in the plan.

## Layout

These paths are in the project being changed, not in this skills repo. They are
the defaults. Use different paths only when repository instructions define them
or the existing change already maps the same artifact roles. Resolve each role
to a concrete path before editing, then preserve that mapping.

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
Active changes are directories under `changes/` except `archive/`.

## Select the change

Use the name the user gave. Otherwise infer it from the conversation. If only
one active change exists, use it. If several match, list the most recently
modified candidates and ask which one to use.

Announce `Using change: <name>`.

## Work

1. Read every artifact that already exists under `changes/<name>/`, including
   `changes/<name>/specs/**/*.md`.
2. If the request names a specific revision, that is the starting edit. If they
   only said "update" or "make this coherent", look for contradictions, gaps,
   and duplication across the files.
3. Apply the edit, then check the other artifacts in both directions — a later
   file can force a change to an earlier one. Follow the same artifact rules as
   `spec-propose` (behavior in deltas, how in design, Markdown task boxes in
   tasks).
   When writing or substantially rewriting an artifact, read the matching
   template from `spec-propose` (`references/proposal.md`, `spec.md`,
   `design.md`, `tasks.md`).
4. Write missing artifacts the change now needs (for example
   `changes/<name>/tasks.md` after a proposal that never got them). Put new
   deltas in `changes/<name>/specs/`, not in durable `specs/`. Do not open a
   second change folder.
5. If the request changes the *intent* rather than refining it, ask for a new
   name and point to `spec-propose`. Do not stretch this change to cover it.

Summarize which files changed. If tasks were already checked off, warn that the
code may no longer match. Point to `spec-apply`, or transition to it when the
request explicitly includes continued implementation. If planning and
implementation are complete, point to `spec-archive`; archive only when
explicitly requested.
