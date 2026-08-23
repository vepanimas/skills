# Skills

A small set of reusable skills for day-to-day agentic development, designed to
work across technology stacks and across a team.

## Writing

- **prd-review** gives an expert PM review of an existing PRD or product/feature spec. It does not draft or rewrite.
- **faithful-edit** conservatively proofreads, shortens, softens, or tone-checks text the user will send.
- **de-slop** substantially revises AI-generated professional prose to make it focused, specific, and worth reading.

They split the work. Review a product document with **prd-review**. Preserve the author's wording and voice with **faithful-edit**. Rebuild generic AI prose around the reader and its central idea with **de-slop**.

A spec change's `proposal.md` is not a PRD. Editing it is **spec-update**. Reviewing a product document before sharing it is **prd-review**.

## Spec changes

Five skills for spec-driven work in a consuming project. They are designed and
supported as one suite; install all five even if you usually enter the workflow
through only one of them.

The suite was initially derived from
[OpenSpec](https://github.com/Fission-AI/OpenSpec), then rewritten for this
repository. It is not kept in sync with upstream.

- **spec-explore** thinks through a problem. It does not write files.
- **spec-propose** creates the planning artifacts before implementation.
- **spec-apply** implements a change's task list and uses **spec-update** when the plan changes.
- **spec-update** revises an existing change's artifacts. It does not write product code.
- **spec-archive** merges `changes/<name>/specs/` into durable `specs/` and files the change away.

They split responsibilities, not necessarily conversations. Explore until the
change is sharp, then propose. Apply after the planning artifacts are complete.
Update the plan when implementation teaches something. Archive when it is done.
If a request explicitly spans several phases, finish each phase cleanly and
continue to the next one. Archiving still requires an explicit request.

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

This is the default layout. Use different paths only when repository
instructions define them or an existing change already maps the same roles:
proposal, task list, optional design, change-local deltas, durable contracts,
and archive. Resolve each role to a concrete path before writing, and preserve
that mapping for the life of the change. The delta headings and full-requirement
merge rules remain fixed when using `spec-archive`, because the archive
operation depends on them.

The workflow does not require OpenSpec or any other project CLI. The installer
below is only for installing the agent skills.

## Install the spec suite

Install the complete suite directly from the repository:

```bash
npx skills add vepanimas/skills \
  --skill spec-explore \
  --skill spec-propose \
  --skill spec-update \
  --skill spec-apply \
  --skill spec-archive
```

Add `-g` for a user-level install. For a shared project setup, keep the command
in the project's onboarding documentation so everyone installs the same suite.
Partial spec-suite installations are not supported because the skills hand work
off to one another and share artifact conventions.

## Install everything

To install both the spec suite and the writing skills:

```bash
npx skills add vepanimas/skills --skill '*'
```
