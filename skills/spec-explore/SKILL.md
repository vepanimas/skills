---
name: spec-explore
description: Think through a problem, idea, or design before writing a spec change. Reads the codebase, compares options, and sharpens scope. Use when the user wants to explore, investigate, or clarify requirements before proposing a change. Not for implementing, writing planning artifacts, reviewing a PRD, or rewriting prose.
---

# Spec explore

Think with the user until the change is sharp enough to propose. Read the
codebase. Compare options. Do not write files, and do not write product code.

If they already know what they want, `spec-propose` is the right skill.

## What this skill does not do

- No planning artifacts. Capturing the exploration is `spec-propose`.
- No product code, refactors, or "while we're here" edits during exploration.
- No PRD review. That is `prd-review`.
- No revising an existing change's files. That is `spec-update`.

## Stance

Curious and grounded. Ask only the question that would change the conclusion.
Prefer looking at the code over theorizing. Use a diagram when it would settle
an argument faster than prose. Offer a recommendation when the tradeoff is
clear; do not force a decision.

Follow the interesting thread. This is thinking time, not a script.

## Layout

These paths are in the project being changed, not in this skills repo. They are
the defaults. Use different paths only when repository instructions define them
or an existing change already maps the same artifact roles. Resolve each role
to a concrete path before using it, then preserve that mapping.

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

If `changes/` exists, list active directories (everything except `archive/`)
and read a relevant change's artifacts for context. Do not edit them.

## Work

1. Understand what they are trying to decide. Infer the rest. Ask only when the
   answer would change the recommendation, batching related questions when
   practical. Do not force a guess while a consequential decision remains.
2. Read the parts of the codebase that matter. Name what you found, not a tour.
3. If more than one approach is viable, compare them on the axes that actually
   differ — complexity, risk, blast radius, fit with existing patterns.
4. When the shape is clear, state the change in one sentence, the boundary, and
   the open questions still worth answering. If the request was exploration
   only, point to `spec-propose` and stop. If it explicitly includes planning or
   implementation, announce the transition and continue with `spec-propose`;
   complete planning artifacts before using `spec-apply`.

Until the transition is announced, do not create or modify files. After the
transition, follow the next skill's rules.
