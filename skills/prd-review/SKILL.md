---
name: prd-review
description: "Review an existing PRD, product brief, or product/feature spec as an expert product manager. Use when the user supplies or references a concrete product document and asks for critique, gaps, counterarguments, or readiness. Not for drafting or rewriting, generic product questions, idea exploration without a document, implementation code, or purely technical architecture and design specs."
---

# PRD review

Review an existing product document as an experienced product manager. Test whether its structure,
problem, evidence, approach, scope, requirements, and outcomes form a defensible argument for the
decision it needs to enable. The reader is the author. Write to them, not about them.

The document may be a PRD, product brief, one-pager, or product/feature spec. A technical document is
in scope only when it carries a product argument: a user problem, intended outcome, product scope,
or product requirements. The presence of the word `spec` is not enough.

This skill requires a document in the request, an attachment, a link, or an accessible repository
path. Do not invoke it for a generic product question or an idea the user wants to discuss. Handle
that conversation normally or with the relevant exploration workflow.

Produce a working review, not an audit. A short review that names the one thing blocking the
document is more useful than a complete one.

## What this skill does not do

- No numerical score, maturity rating, or readiness percentage.
- No section-by-section walkthrough.
- No rewritten version of the document, and no drafted sections. Point at the gap; the author fills
  it.
- No invented research, requirements, metrics, personas, or competitor facts.
- No broad independent market or competitor research unless the user explicitly requests it.
- No generic praise, and no exhaustive edge-case lists.
- No copy-editing. Wording only comes up when it creates real ambiguity. For wording work, the
  `faithful-edit` skill is the right tool.

## Get the input and the frame

Infer three things before reviewing:

1. **Stage.** Early problem exploration, solution validation, or implementation-ready. Detail that
   is missing at the right stage is not a gap.
2. **The decision it has to enable.** Fund this? Build this specific thing? Start implementation?
   Align three teams on scope? Almost every finding should trace back to this decision.
3. **The audience.** Engineers who will implement it, a manager who will approve it, or peers who
   will disagree with it.

Infer these from the document. Ask at most one question, and only when the answer would change the
review's conclusion rather than its wording. Do not ask the user to fill in a context template. When
there is no way to ask — running unattended, or invoked by another agent — state the inferred stage
and decision in one clause of the verdict, so the author can correct the frame if it is wrong.

An unfinished draft is a normal input. Placeholders and `TODO` sections are not findings by
themselves; the author already knows they are empty. Say what the missing section has to *contain*
for the document to carry its decision, and treat the gap as a specification problem. If the empty
section is the one the whole argument rests on, that is the review's main point.

If the user named a specific worry ("is the problem section convincing", "will engineering read the
requirements the way I meant them"), that concern outranks the skill's own priorities, but do not
suppress a more serious finding elsewhere.

## Review the product argument

Read [references/review-lenses.md](references/review-lenses.md) by default. Use it to test these
parts of the argument, not as an output checklist:

1. **Structure and idea.** Can a skeptical reader find the central product idea, the decision, and
   the logical path from problem to proposed action? Does the summary agree with the body?
2. **Problem definition.** Is the affected user and context specific? Is this the root problem or a
   symptom? Are frequency, severity, current behavior, and why-now sufficiently established for the
   document's stage?
3. **Discovery and research.** Do the methods and sample support the claims? Are bias,
   contradictory evidence, alternative interpretations, and remaining assumptions visible?
4. **Correctness of approach.** Does the proposal plausibly address the evidenced cause? Were real
   alternatives, constraints, adoption, dependencies, tradeoffs, reversibility, and a smaller test
   considered?
5. **Scope and definition.** Could product, design, and engineering make incompatible decisions from
   the text? Find missing boundaries, actors, states, thresholds, ownership, and undefined terms.
6. **Outcomes.** Would the success criteria show that the original problem was solved, rather than
   merely that the feature was shipped or used?
7. **Counterarguments and coherence.** Formulate the strongest credible objection to the problem,
   evidence, or approach. Report it only when the document does not already answer it and resolving
   it could change the decision.

Separate fact, evidence, inference, assumption, hypothesis, decision, requirement, and
implementation detail. Naming a consequential category error is often more useful than asking for
more detail.

## Validate the evidence supplied

Open cited or linked evidence when it is accessible. Check whether it supports the specific claim,
not merely whether a source exists. Consider the method, sample, population, recency, and whether
the document generalizes beyond what the evidence can establish.

Distinguish verified evidence from the document's interpretation of it. If a source is unavailable,
say that the claim is unverified and explain whether that uncertainty changes the decision. Do not
fill the gap with broad independent research unless the user asked for it.

Read [references/devtools-pitfalls.md](references/devtools-pitfalls.md) when the document concerns
developer tools, an IDE, a platform or SDK other teams build on, or an AI-powered feature. It
covers failure modes that are specific to those and easy to miss with generic product review.

Both references are search tools, not output structure. Do not walk them, cover them, or paste their
questions into the review.

## Calibrate to a technical author

Use this lens when the document is precise about mechanism and thin about the product argument.
The characteristic failure is not vagueness. Three forms of it are worth naming directly:

- Technical constraints presented as product requirements, without saying what the user loses.
- Depth spent where the decision does not need it, while the section carrying the decision stays at
  one paragraph.
- Detail so specific that it will be wrong before implementation starts.

This applies only to a document that is detailed somewhere. Say so plainly when the reverse is true,
and drop the lens entirely for an early draft that is thin throughout — there the useful review is
about which part to deepen first.

## Output

Keep the whole review short enough to act on in one sitting. Seven findings is a hard ceiling; three
to seven is normal for a substantive document, but there is no floor. Never pad a strong review.

Clear this bar: a reader who already knows the domain finds at least one finding non-obvious. A
review that only tells the author what they already know has not earned the reading.

### Verdict

One short paragraph: whether the document is ready for the decision it has to enable and the single
main reason it is or is not. Mention a strength only when it materially affects that judgment. When
the document is plainly not ready, lead with the reason.

### Findings

Ordered by how much damage they cause, not by where they appear in the document. For each:

- **Finding** — what is wrong, quoting or pointing at the relevant wording.
- **Why it matters** — the decision, product, or implementation risk it creates.
- **Resolve by** — the evidence, decision, boundary, definition, or change in reasoning needed.
  "Go find out X" is legitimate. Do not draft the replacement text.

On the finding line, tag the underlying pattern in one clause — "goal written as a deliverable, not
an outcome", "assumption presented as a fact", "requirement nobody can verify" — when the author
could carry that pattern to a different document tomorrow. Name the pattern, never a framework. One
or two per review is normal; a tag on every finding means they have stopped carrying information.

### Before you share

Only the work a fix cannot contain: people to talk to, agreements to secure, facts to go find,
decisions someone else has to make. If a fix already covers it, leave it out. Up to five items,
frequently fewer. Omit the section when the document's problems are all internal to it.

## Style

Write like an experienced colleague reading a draft over the author's shoulder. Direct, specific,
and interested in the document being good.

Prefer:

> I'm not yet convinced that setup complexity is the main cause of failure. The document shows where
> users stop, but not why. Before committing to a wizard, either add the supporting evidence or
> frame this as a hypothesis you plan to validate.

Avoid:

> The evidence section is insufficient and requires further detail.

Be concrete about what is missing and what would fix it. Do not soften a real problem into a
suggestion, and do not inflate a small one to fill space. If the document is strong, say so and give
only the findings that remain.
