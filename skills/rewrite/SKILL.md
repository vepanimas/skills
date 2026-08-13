---
name: rewrite
description: "Rewrite, proofread, shorten, soften, or tone-check text the user will send as their own — Slack, issues, PRs, design docs, email. Not for drafting new text, reviewing content or code, or translating."
---

# Rewrite

Edit text the user will send as their own. Make it correct, natural, professional, and suitable for
its context without replacing the author's voice with a generic polished style.

Default to the smallest change that solves the actual problem. Leaving the original unchanged is a
valid result.

## Priority order

Resolve conflicts in this order:

1. Follow the user's explicit instruction for this edit.
2. Preserve meaning, facts, commitments, actors, uncertainty, and intended firmness.
3. Preserve protected text, document structure, and recognizable voice.
4. Adapt to the audience, channel, purpose, and level of tension.
5. Correct grammar and improve readability.
6. Polish only where polishing does not conflict with the preceding rules.

An explicit request may change otherwise protected material. Protection prevents accidental edits;
it does not override the user.

Read [references/tone-and-context.md](references/tone-and-context.md) for sensitive or
conflict-heavy messages, tone checks, boundaries, escalation, and cases where the channel, audience,
or product framing materially affects the wording.

## Task and context

The request may be proofreading, a conservative rewrite, shortening, tone repair, or a tone check
without a rewrite. Match it. Do not turn a content review, technical review, or exact-format
conversion into a rewrite unless the user also asks for editing.

Infer channel, audience, purpose, and relationship from the request and the draft. Ask only when the
ambiguity would materially change the meaning, firmness, or advice; otherwise make the least
consequential inference and proceed without an assumptions preamble.

Preserve the input language unless the user asks for a different one. Match the natural density and
formality of the channel: keep short messages short, and keep the structure of longer documents
unless restructuring is requested.

## Preserve the content

Unless the user explicitly asks to change them:

- Preserve claims, reasons, consequences, examples, concerns, decisions, requests, and boundaries.
- Preserve numbers, dates, deadlines, scope, owners, commitments, and degrees of uncertainty.
- Preserve who said, observed, did, or owns something. Do not silently replace `I`, `you`, or a
  named actor with `we` or passive voice.
- Preserve code, identifiers, commands, paths, URLs, mentions, issue keys, version numbers, error
  messages, logs, API names, and quoted text from other people character for character.
- Preserve headings, heading levels, section order, lists, TODOs, links, code blocks, and other
  meaningful formatting in documents.
- Keep technical terminology accurate. Do not simplify technical content merely to make it sound
  smoother.

Do not add facts, reasons, consequences, commitments, praise, agreement, apologies, or product
rationale the author did not express.

Do not insert placeholders merely because a conventional message might include a date, owner,
subject, greeting, or sign-off. Use a placeholder only when the user is completing a template or a
missing value genuinely prevents completion; identify the gap outside the rewritten text.

When shortening, preserve every distinct claim, concern, and ask unless the user's instruction
clearly permits removing it. If the requested length makes that impossible, ask what to prioritize
or briefly name what would have to be cut.

## Preserve the voice

The supplied draft is the strongest evidence of the author's voice. The notes below prevent
normalization; never apply them to manufacture style the draft does not have.

- Keep contractions such as `it's`, `I'd`, `don't`, and `can't`.
- Keep first-person attribution where it carries evidence or scope. "I found that the button fails
  after reconnecting" is not the universal claim "the button fails after reconnecting."
- Keep direct openings that state the purpose, varied sentence length, and slightly formal
  connectives such as "in general" and "in particular".
- Preserve em dashes already in the draft, but do not add them as a generic connector.
- Do not write deliberate errors or stiffness to make the author sound non-native.

## Preserve firmness without preserving hostility

Distinguish a suggestion, recommendation, request, and requirement from the message's meaning and
context, not from isolated cue words. Keep the output at the intended level of firmness unless the
user explicitly asks to change it.

Remove attacks on intelligence, competence, motives, or status; blame framing; sarcasm;
scorekeeping; and accusatory rhetorical questions. Preserve the underlying observation, concern,
impact, position, request, boundary, deadline, and severity.

- "You don't understand the problem" → "I think we're using different definitions of the problem."
- "You ignored this requirement" → "I don't think this requirement is covered yet."
- "This doesn't make sense" → "I don't think this addresses the issue", when the issue is already
  clear from context.
- "We should stop using the plugin" stays a recommendation. Not "it may be worth considering whether
  the plugin is the right fit."

Do not disguise a decision as an open question, turn a request into a suggestion, or add uncertainty
the author does not feel. Direct and respectful is usually more collaborative than heavily softened.
Use `we` only when ownership is genuinely shared.

## Avoid AI slop

Do not add:

- canned openings, pleasantries, praise, enthusiasm, or performative gratitude;
- unnecessary signposting, summaries, conclusions, or restatements;
- artificial symmetry, rule-of-three phrasing, uniformly shaped bullets, or dramatic contrasts;
- extra headings, bold lead-ins, or lists for ideas that work better as ordinary prose;
- corporate or marketing language where plain technical language is more accurate;
- needless hedges, apologies, intensifiers, transitions, idioms, humour, or polished flourishes.

Judge words in context rather than applying a vocabulary blacklist. Terms that are vague in one
message may be technically correct in another.

Prevent new AI-style wording by default. Rewrite existing AI-style wording across the whole draft
only when the user asks to make the draft sound less AI-generated or clearly requests a broader
rewrite. Do not speculate about who wrote the input.

## Output

- For a straightforward rewrite, return the complete rewritten text ready to use.
- For minor corrections, return the text without a change log unless the user asks for one.
- For consequential tone or meaning-preservation choices, add `Changed:` with one to three concise,
  concrete notes after the rewrite.
- For a tone check, give a concise verdict, identify any phrase that creates the issue, and provide
  replacement wording or a rewrite when useful.
- If the original already works, say so and offer at most one optional improvement.
- If the user asks for alternatives, provide no more than two meaningfully different versions and
  explain the difference briefly.

Do not bury the usable text under coaching. Do not list every grammar correction or explain the
skill's internal process.
