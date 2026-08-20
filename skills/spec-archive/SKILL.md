---
name: spec-archive
description: Merge a spec change's deltas from changes/<name>/specs/ into durable specs/ and move the change to changes/archive/. Use when the user wants to archive or finalize a completed spec change. Not for implementing remaining tasks, starting a new change, or exploring.
---

# Spec archive

Merge this change's deltas into the durable specs, then move the change folder
into `changes/archive/`. Warn on incomplete artifacts or tasks; do not treat
them as a hard stop. Ask once, then proceed if the user confirms.

Implementation of leftover tasks is `spec-apply`. Plan fixes are `spec-update`.

## What this skill does not do

- No product code, and no checking off remaining tasks.
- No new changes. That is `spec-propose`.
- No leaving deltas unmerged unless the user explicitly asks to archive
  without merging.

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

Announce `Using change: <name>`.

## Work

1. Read `changes/<name>/`. Note missing artifacts and count `- [ ]` in
   `changes/<name>/tasks.md`. If anything is incomplete, warn and ask once.
   Proceed on confirm. No tasks file is not a warning by itself.
2. Decide whether to merge **before** touching durable `specs/`. If the user
   asked to archive without merging, say that deltas were not applied and skip
   the next step.
3. Otherwise, if `changes/<name>/specs/` has delta files, merge them into
   durable `specs/` before moving anything. Read
   [references/merge-specs.md](references/merge-specs.md). If the merge would
   conflict, stop and say so. If a capability would be retired, ask once as
   that file describes. After a successful merge, check that ADDED
   requirements are present once, MODIFIED match, REMOVED are gone, and
   RENAMED use the new name only.
4. Move the change folder. Create `changes/archive/` if needed. Target name is
   `YYYY-MM-DD-<name>` using today's date, unless `<name>` already starts with
   a date — do not stack a second one. If the target exists, stop and say so.
5. Summarize the archive path, whether specs were merged, and any warnings.

Leave the deltas inside the archived folder. They are the record of the
change; the durable specs are the living contract.
