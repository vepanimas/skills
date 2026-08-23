# Skills

A personal, opinionated set of skills, helpful for day-to-day agentic development irrespective of the tech stack you use.

## Writing

- **prd-review** judges whether a PRD, brief, spec, or one-pager is ready to share. It does not rewrite.
- **faithful-edit** conservatively proofreads, shortens, softens, or tone-checks text the user will send.
- **de-slop** substantially revises AI-generated professional prose to make it focused, specific, and worth reading.

They split the work. Review a product document with **prd-review**. Preserve the author's wording and voice with **faithful-edit**. Rebuild generic AI prose around the reader and its central idea with **de-slop**.

A spec change's `proposal.md` is not a PRD. Editing it is **spec-update**. Reviewing a product document before sharing it is **prd-review**.

## Spec changes

Five skills for spec-driven work in a consuming project.

- **spec-explore** thinks through a problem. It does not write files.
- **spec-propose** creates the planning artifacts. It does not implement.
- **spec-apply** implements a change's `tasks.md`. It does not revise the plan unless it has to stop.
- **spec-update** revises an existing change's artifacts. It does not write product code.
- **spec-archive** merges `changes/<name>/specs/` into durable `specs/` and files the change away.

They split the work. Explore until the change is sharp, then propose. Apply only after a new request. Update the plan when implementation teaches something. Archive when it is done. Do not chain propose into apply in the same turn.

### Layout

In the project being changed:

```text
changes/<name>/
  proposal.md
  design.md                      # optional
  tasks.md
  specs/<capability>/spec.md     # deltas for this change
changes/archive/<YYYY-MM-DD-name>/
specs/<capability>/spec.md       # durable behavior contracts
```

The first `spec-propose` creates `changes/` as needed. Deltas live at
`changes/<name>/specs/`. Durable `specs/` is written when `spec-archive` merges.

## Install

```bash
npx skills add vepanimas/skills
```

That installs all of them. Add `-g` for a user-level install. Use `--skill spec-propose` (or any other name) for one.
