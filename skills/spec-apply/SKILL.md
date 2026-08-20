---
name: spec-apply
description: Implement tasks from an existing change folder under changes/. Use when the user wants to implement or continue a spec change that already has changes/<name>/tasks.md. Not for planning, ordinary feature work without a change folder, updating artifacts, or archiving.
---

# Spec apply

Implement the unchecked tasks in an existing change. Read the artifacts first.
Keep the diff scoped to the current task. Do not invent work the spec does not
ask for.

Planning is `spec-propose`. Revising the plan is `spec-update`. Archiving is
`spec-archive`.

## What this skill does not do

- No new change folders, proposals, or specs. That is `spec-propose`.
- No artifact rewrites except checking off tasks. Plan edits are `spec-update`.
- No archive. Point to `spec-archive` when every task is done.
- No silent scope cuts. If a task needs work the spec does not describe, stop
  and ask.

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
Active changes are directories under `changes/` except `archive/`.

## Select the change

Use the name the user gave. Otherwise infer it from the conversation. If only
one active change exists, use it. If several match, list them and ask once.

Announce `Using change: <name>`. Do not treat a `tasks.md` outside
`changes/<name>/` as a spec change.

## Work

1. Read `changes/<name>/proposal.md`, `changes/<name>/design.md`,
   `changes/<name>/tasks.md`, and `changes/<name>/specs/**/*.md`. If
   `changes/<name>/tasks.md` is missing, stop and point to `spec-propose` or
   `spec-update`.
2. Count `- [x]` vs `- [ ]`. If nothing is pending, say so and point to
   `spec-archive`.
3. For each pending task, in order:
   - State which task you are on (`3/7: …`).
   - Make the smallest code change that completes it.
   - Mark it `- [x]` as soon as the specified behavior is done, not when it is
     partial or deferred.
   - Continue until the list is done or you have to pause.
4. Pause and wait if the task is unclear, the spec is wrong, implementation
   reveals a design issue, you would have to drop or narrow specified behavior,
   or you hit an error. Suggest `spec-update` when the plan has to change.

On pause or completion, report tasks finished this session and `N/M` overall.
When `M/M` are done, point to `spec-archive`. Do not start it.
