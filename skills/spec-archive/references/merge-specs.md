# Merge delta specs

Deltas live at `changes/<name>/specs/<capability>/spec.md` and durable contracts
at `specs/<capability>/spec.md` under the default layout. Before merging, resolve
both roots to concrete paths from repository instructions or the selected
change's established layout; otherwise use these defaults. Preserve each
capability path. Do not infer deltas from `proposal.md` or `design.md`.

Main specs use `## Purpose` and `## Requirements`. Deltas use `## ADDED
Requirements`, `## MODIFIED Requirements`, `## REMOVED Requirements`, and
`## RENAMED Requirements`. Omit empty sections.

For each capability that has a delta, run **exactly one** of the two branches
below. Never both.

## New capability

No file at `specs/<capability>/spec.md` yet.

1. Create that file.
2. Copy `## Purpose` from the delta.
3. Copy every ADDED `### Requirement:` block under `## Requirements`.
4. Stop. Do not append ADDED a second time, and do not apply MODIFIED,
   REMOVED, or RENAMED. If the delta has those sections, stop and say so —
   they belong on an existing capability.

## Existing capability

`specs/<capability>/spec.md` already exists. Ignore the new-capability
branch. Then, in this order:

1. **ADDED.** Append each new `### Requirement:` block under
   `## Requirements`. If that requirement already exists, stop and say so —
   it should have been MODIFIED.
2. **MODIFIED.** Find the requirement whose header matches (whitespace
   insensitive). Replace the entire block — description and all scenarios —
   with the delta's version. If the header is missing, stop and say so.
3. **REMOVED.** Delete that requirement block. Keep **Reason** and
   **Migration** in the archived delta; do not copy them into the durable
   spec.
4. **RENAMED.** Rename the `### Requirement:` header from FROM to TO. Leave
   the body unless a MODIFIED block for the new name also exists.
5. **Retire.** If REMOVED (or REMOVED plus MODIFIED) leaves no requirements,
   ask once, then delete `specs/<capability>/spec.md`. Do not leave an empty
   spec. If the file has material outside Purpose and requirement blocks,
   stop and say what would be lost.

## Verify

After every capability is merged, re-read the durable specs and confirm:

- ADDED requirements are present once
- MODIFIED requirements carry the delta's description and scenarios
- REMOVED requirements are gone
- RENAMED requirements exist under the new name only

If any of that fails, report the mismatch and do not move the change folder.
