---
name: prd-review
description: Review a PRD, product brief, spec or one-pager the user wrote, before they share it. Finds the few issues that would send the team after the wrong problem or surface as a scope argument later. Use when the user asks to review a PRD, spec, product brief, or one-pager, or whether a product document is ready to share. Not for rewriting the document.
---

# PRD review

Review a product document the user is about to share, so they can fix what matters before other
people read it. The reader is the author. Write to them, not about them.

The document is usually a PRD, but the same review applies to a product brief, spec, one-pager,
initiative proposal or RFC with a product argument in it.

Produce a working review, not an audit. A short review that names the one thing blocking the
document is more useful than a complete one.

## What this skill does not do

- No numerical score, maturity rating, or readiness percentage.
- No section-by-section walkthrough.
- No rewritten version of the document, and no drafted sections. Point at the gap; the author fills
  it.
- No invented research, requirements, metrics, personas, or competitor facts. If evidence is
  missing, say it is missing.
- No generic praise, and no exhaustive edge-case lists.
- No copy-editing. Wording only comes up when it creates real ambiguity. For wording work, the
  `source-close-edit` skill is the right tool.

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

## Review priorities

Look for what would cause real damage downstream, in roughly this order:

1. The team solves the wrong problem, or a problem that is not evidenced.
2. Readers take away different intended outcomes.
3. Product, design and engineering can each read the document and make incompatible decisions.
4. Scope is open enough that the disagreement surfaces mid-implementation instead of now.
5. A solution is committed to without enough justification, or alternatives were never weighed.
6. Requirements are unverifiable — nobody can tell whether they were met.
7. Nothing in the document reveals whether the change worked after shipping.

Separate what the document treats as fact, assumption, hypothesis, decision, and implementation
detail. Most weak PRDs blur two of those together — an assumption written as a fact, or a decision
buried in an implementation note. Naming the confusion is often the single most useful finding.

Read [references/review-lenses.md](references/review-lenses.md) by default. Skip it only for a
document under roughly two pages whose problems are already obvious from one read.

Read [references/devtools-pitfalls.md](references/devtools-pitfalls.md) when the document concerns
developer tools, an IDE, a platform or SDK other teams build on, or an AI-powered feature. It
covers failure modes that are specific to those and easy to miss with generic product review.

Both references are search tools, not output structure. Do not walk them, cover them, or reuse their
questions as findings — the bullets in `devtools-pitfalls.md` in particular are already phrased as
questions that would paste straight into a review.

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

Keep the whole review short enough to act on in one sitting. Five findings is a hard ceiling; two
real ones beat five padded ones, and there is no floor.

Clear this bar: a reader who already knows the domain finds at least one finding non-obvious. A
review that only tells the author what they already know has not earned the reading.

### Verdict

One short paragraph: whether the document is ready for the decision it has to enable, the single
main reason it is or is not, and what it does well. Lead with whichever of those is the real news.
When the document is plainly not ready, opening with praise reads as a formality — get to the
reason first and let the strength land as the qualification it is.

### Findings

Ordered by how much damage they cause, not by where they appear in the document. For each:

- **Finding** — what is wrong, quoting or pointing at specific wording in the document.
- **Fix** — what the author should do. Concrete enough to act on, short of writing the text for
  them. "Go find out X" is a legitimate fix.

On the finding line, tag the underlying pattern in one clause — "goal written as a deliverable, not
an outcome", "assumption presented as a fact", "requirement nobody can verify" — when the author
could carry that pattern to a different document tomorrow. Name the pattern, never a framework. One
or two per review is normal; a tag on every finding means they have stopped carrying information.

### Before you share this

Only the work a fix cannot contain: people to talk to, agreements to secure, facts to go find,
decisions someone else has to make. If a fix already covers it, leave it out. Up to five items,
frequently fewer — this section is short when the document's problems are all internal to it.

### Minor notes

Only when a few small fixes are genuinely worth making and do not belong above. Maximum three.
Omit the section entirely otherwise.

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
