---
name: spec-apply
description: Implement tasks from an existing spec change with a task list. Use when the user wants to implement or continue a change planned with the spec-change suite. Not for creating or revising planning artifacts, ordinary feature work without a spec change, or archiving.
---

# Spec apply

Implement the unchecked tasks in an existing change. Read the artifacts first.
Keep the diff scoped to the current task. Do not invent work the spec does not
ask for.

Planning is `spec-propose`. Revising the plan is `spec-update`. Archiving is
`spec-archive`.

## What this skill does not do

- No new change folders, proposals, or specs. That is `spec-propose`.
- No artifact rewrites while applying except checking off tasks. Plan edits use
  `spec-update`; transition to it when implementation requires a plan edit and
  the broader request already authorizes that work.
- No archive. Point to `spec-archive` when every task is done.
- No silent scope cuts. If a task needs work the spec does not describe, stop
  and ask.

## Layout

These paths are in the project being changed, not in this skills repo. They are
the defaults. Use different paths only when repository instructions define them
or the existing change already maps the same artifact roles. Resolve each role
to a concrete path before implementation, then preserve that mapping.

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
one active change exists, use it. If several match, list the relevant candidates
and ask which one to use.

Announce `Using change: <name>`. A task list outside the default path qualifies
only when repository instructions designate its parent as a change folder or
that folder also contains the selected change's proposal and any applicable
design or delta specs. A task list by itself is not a spec change.

## Work

1. Read the selected change's proposal, optional design, task list, and every
   change-local delta spec at the resolved paths. If the task list is missing,
   stop and point to `spec-propose` or `spec-update`.
2. Count standard Markdown task checkboxes (`[ ]`, `[x]`, and `[X]`) regardless
   of bullet marker or optional task numbering. If nothing is pending, say so
   and point to `spec-archive`.
3. For each pending task, in order:
   - State which task you are on (`3/7: …`).
   - Make the smallest code change that completes it.
   - Mark it checked, preserving the file's existing style, as soon as the
     specified behavior is done, not when it is partial or deferred.
   - Continue until the list is done or you have to pause.
4. Investigate and fix ordinary implementation, build, and test failures that
   are within scope. Pause when the task has more than one materially different
   interpretation, the spec contradicts another accepted artifact or cannot be
   implemented as written, a design issue requires a user-owned decision,
   specified behavior would have to be dropped or narrowed, or an external
   failure blocks progress. Use
   `spec-update` when the plan has to change, and continue afterward when the
   broader request authorizes implementation.

On pause or completion, report tasks finished this session and `N/M` overall.
When `M/M` are done, point to `spec-archive`. Start it only when the request
explicitly includes archiving.
