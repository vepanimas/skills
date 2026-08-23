---
name: de-slop
description: "Revise an existing AI-generated or generic professional draft to make it specific, focused, and worth reading. Use when the user asks to de-slop, humanize, remove AI-sounding prose, or improve an AI-written document, article, explanation, proposal, or post. Not for source-close proofreading, content review, fiction, drafting from scratch, or evading AI-detection tools."
---

# De-slop

Revise professional prose that sounds generic or machine-produced. Earn the reader's attention by
giving them clear value for the time they spend. This is a substantive rewrite: cut, reorder, and
recast when that makes the draft more useful and compelling.

Use `faithful-edit` instead when the user wants conservative editing that stays close to their
wording, voice, and structure.

## Priorities

Resolve conflicts in this order:

1. Follow the user's explicit instruction.
2. Preserve facts, meaning, commitments, uncertainty, attribution, and protected text.
3. Serve the intended reader and purpose.
4. Clarify the central problem, claim, or idea and deliver its payoff.
5. Improve specificity, structure, momentum, and style.

Making a draft more interesting never permits changing what it says or inventing support.

## Find the spine

Before rewriting, identify from the request and draft:

- who the reader is and why they would care;
- the concrete problem, question, or claim;
- the one idea that should hold the piece together;
- what the reader should understand, decide, or do by the end.

Infer these when the evidence is strong. Ask only when ambiguity would materially change the
message. If the draft has no defensible central idea or payoff, do not manufacture one: improve what
is supported and name the gap after the rewrite.

## Earn attention

- Open with substance: the problem, claim, useful observation, or consequence that gives the reader
  a reason to continue. Remove throat-clearing and commentary about what the piece will discuss.
- Organize the material as a purposeful progression. A useful shape is promise, development, and
  payoff, but do not force every document into a story or fixed template.
- Make each paragraph advance the central idea. Cut detours and background the reader does not need.
- Replace vague abstractions with concrete language, examples, evidence, or consequences already
  present in the source. Prefer precise nouns and active verbs when they improve accuracy.
- Put related ideas together and let important points receive proportionate space. Do not repeat a
  point merely to make it sound important.
- Use headings and lists only when they help the reader navigate or compare information.
- End when the promised value has been delivered. Include a conclusion or call to action only when
  the piece needs one.

Reader-centered does not mean simplified at any cost. Keep necessary complexity, qualifications,
and technical detail; make their relevance and relationships easier to follow.

## Remove the slop

Cut or rewrite:

- canned openings, broad scene-setting, and obvious claims presented as insight;
- empty signposting, redundant summaries, repeated conclusions, and paragraphs that add no new
  information;
- vague praise, hype, inflated adjectives, corporate language, and claims of importance the source
  does not support;
- generic transitions, unnecessary hedges, and filler that delays the point;
- artificial symmetry, forced contrasts, rule-of-three phrasing, uniformly shaped bullets, and
  repeated sentence patterns;
- excessive headings, bold lead-ins, fragments used for manufactured punch, and formatting that
  gives weak ideas false weight;
- polished but impersonal phrasing that could belong to any author or subject.

Do not edit from a blacklist of supposedly AI-written words. Judge whether a phrase is precise and
useful in context. Natural writing can be formal, structured, or fluent; the problem is generic
thinking and unearned language, not polish itself.

## Do not fake interest

Do not add clickbait, melodrama, false urgency, unsupported stakes, invented anecdotes, personal
experience, quotations, humour, or a provocative hook. Do not force storytelling onto technical or
professional material. Interest should come from relevance, clarity, specificity, real tension,
and a well-developed idea.

Preserve code, identifiers, commands, paths, URLs, citations, quotations, numbers, dates, names,
issue keys, and technical terms character for character unless the user explicitly asks to change
them. Preserve the source's degree of certainty and who owns each observation, decision, or action.

## Output

- Return the complete revised text, ready to use, without a diagnosis or process explanation first.
- If major restructuring or a content gap needs explanation, add `Changed:` after the text with no
  more than three concise notes.
- If missing evidence prevents a supported improvement, identify what is missing after the text;
  do not insert a placeholder into the draft unless the user requested a template.
- If the draft already earns its reader's attention, say so and avoid rewriting it for novelty.

Do not speculate about who or what produced the original text.
