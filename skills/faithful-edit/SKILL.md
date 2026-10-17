---
name: faithful-edit
description: "Edit text the user will send as their own while staying faithful to its meaning, wording, voice, and structure. Use to proofread, shorten, soften, tone-check, or answer 'Can I say...?' about a message, email, comment, or doc. Not for drafting, translation, content review, or rebuilding generic or AI-written prose around the reader and a central idea."
---

# Faithful edit

Edit text the user will send as their own. Make it correct, natural, professional, and suitable for
its context without replacing the author's voice with a generic polished style.

Default to the smallest change that solves the actual problem. Leaving the original unchanged is a
valid result.

Use `deslop-writing` when the primary task is rebuilding generic or AI-written prose around the reader
and a central idea. A restructure that keeps the author's voice and wording stays here.

## What this skill does not do

- No drafting from a blank page, and no translation.
- No content or technical review, unless the user also asks for an edit; then edit only. Reviewing a
  product document is `prd-review`.
- No whole-draft rebuild of generic or AI-written prose around the reader and a central idea. That is
  `deslop-writing`.

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
conflict-heavy messages, tone checks, boundaries, escalation, passive aggression, and product
framing.

## Task and context

The request may be proofreading, a conservative rewrite, shortening, tone repair, a tone check, or
a wording correctness check without a rewrite. Match it. Do not turn an exact-format conversion
into a rewrite unless the user also asks for editing.

Infer channel, audience, purpose, and relationship from the request and the draft. Ask only when the
ambiguity would materially change the meaning, firmness, or advice; otherwise make the least
consequential inference and proceed without an assumptions preamble.

Preserve the input language unless the user asks for a different one. Match the natural density and
formality of the channel: keep short messages short, and keep the structure of longer documents
unless restructuring is requested.

## Adapt to the channel

- Slack: keep it conversational and compact. Do not add greetings, headers, or sign-offs.
- Issues: keep reproduction steps, expected and actual behavior, technical detail, and open
  questions.
- Issue and PR comments: stay on the specific behavior or decision.
- PR descriptions, design docs, and RFCs: preserve the author's structure.
- Email: add a subject, greeting, or sign-off only when the draft already has them or the user
  asked for a complete email.
- Leadership: surface an existing decision, ask, or consequence. Do not invent a business rationale.

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
- Keep the draft's own openings, connectives, and sentence lengths.
- Preserve em dashes already in the draft, but do not add them as a generic connector.
- Do not write deliberate errors or stiffness to make the author sound non-native.

The default success case is leaving a voice-true draft alone. This is already fine:

> The plugin still fails after reconnect — I saw it twice today, not sure if it's the timeout or
> the retry logic.

Do not sand it into generic professional prose:

> I've observed intermittent plugin failures following reconnection. This may be related to timeout
> handling or retry logic.

Fix a typo. Do not rewrite a clear sentence to sound more polished.

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
the author does not feel. Use `we` only when ownership is genuinely shared.

## Avoid generic polish

Do not introduce canned openings, signposting, rule-of-three phrasing, or corporate language. Judge
words in context. If the primary task is rebuilding generic or AI-written prose around the reader
and a central idea, use `deslop-writing`.

## Output

- For a straightforward rewrite, return the complete rewritten text ready to use.
- For minor corrections, return the text without a change log unless the user asks for one.
- For consequential tone or meaning-preservation choices, add `Changed:` with one to three concise,
  concrete notes after the rewrite.
- For "Can I say...?" or a correctness check, give a direct verdict and a minimally edited,
  ready-to-use sentence.
- For a tone check, give a concise verdict, identify any phrase that creates the issue, and provide
  replacement wording or a rewrite when useful.
- If the original already works, say so and offer at most one optional improvement.
- If the user asks for alternatives, provide no more than two meaningfully different versions and
  explain the difference briefly.

Do not bury the usable text under coaching. Do not list every grammar correction or explain the
skill's internal process.
