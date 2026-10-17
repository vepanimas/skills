---
name: deslop-writing
description: "Substantively rewrite an existing generic or AI-written professional draft so it is specific, focused, and worth reading. Use when the user asks to de-slop, humanize, or rebuild a document, article, explanation, proposal, or post. Not for proofreading, shortening, or tone-editing text the user will send in their own voice, content review, fiction, drafting from scratch, or evading AI-detection tools."
---

# Deslop writing

Revise professional prose that sounds generic or machine-produced. Earn the reader's attention by
giving them clear value for the time they spend. This is a substantive rewrite: cut, reorder, and
recast, unless the user forbids a kind of change.

Use `faithful-edit` when the user wants the smallest edit that preserves their wording, voice, and
structure.

## Priorities

Resolve conflicts in this order:

1. Follow the user's explicit instruction.
2. Preserve facts, meaning, commitments, uncertainty, attribution, and protected text.
3. Serve the intended reader and purpose.
4. Clarify the central problem, claim, or idea and deliver its payoff.
5. Improve specificity, structure, momentum, and style.

Protected text stays character for character unless the user explicitly asks to change it: code,
identifiers, commands, paths, URLs, citations, quotations, numbers, dates, names, issue keys, and
technical terms. Also preserve the source's degree of certainty and who owns each observation,
decision, or action.

An explicit request can add material the source does not contain. Do not invent support merely to
make the draft more interesting.

## What this skill does not do

- No voice-preserving proofread or tone edit. That is `faithful-edit`.
- No drafting from scratch, fiction, or rewriting to evade a detector.
- No content review of a product document. That is `prd-review`.
- No manufactured central idea when the draft cannot support one.

## Find the spine

Before rewriting, identify from the request and draft:

- who the reader is and why they would care;
- the concrete problem, question, or claim;
- the one idea that should hold the piece together;
- what the reader should understand, decide, or do by the end.

Infer these when the evidence is strong. Ask only when ambiguity would materially change the
message. If the draft has no defensible central idea or payoff, do not manufacture one: improve what
is supported and name the gap after the rewrite.

## Rewrite the draft

- Open with the problem, claim, useful observation, or consequence already in the source. Cut
  throat-clearing, canned openings, and commentary about what the piece will discuss.
- Make each paragraph advance the central idea. Cut detours, empty signposting, redundant summaries,
  and background the reader does not need. Do not repeat a point to make it sound important.
- Replace vague abstractions, hype, and unsupported claims of importance with examples, evidence, or
  consequences already in the source.
- Cut generic transitions, unnecessary hedges, corporate language, artificial symmetry, forced
  contrasts, rule-of-three phrasing, uniformly shaped bullets, repeated sentence patterns, and
  fragments used for punch.
- Use headings and lists only to help the reader navigate or compare. Cut excessive headings, bold
  lead-ins, and formatting that gives a weak idea false weight.
- Do not force a story, a fixed template, or a conclusion the piece does not need. Keep necessary
  complexity, qualifications, and technical detail.
- Do not add clickbait, melodrama, false urgency, unsupported stakes, invented anecdotes, personal
  experience, quotations, humour, or a provocative hook.
- Do not edit from a blacklist of words. Formal, structured, or fluent writing can stay when it is
  precise. Generic thinking and unearned language cannot.

This opening:

> In today's rapidly evolving landscape, effective onboarding remains a key challenge. New hires wait
> four days for repository access, and two of the last five left during that wait. This document will
> explore several considerations.

becomes:

> New hires wait four days for repository access, and two of the last five left during that wait.

## Output

- Return the complete revised text, ready to use, without a diagnosis or process explanation first.
- If major restructuring or a content gap needs explanation, add `Changed:` after the text with no
  more than three concise notes.
- If missing evidence prevents a supported improvement, identify what is missing after the text;
  do not insert a placeholder into the draft unless the user requested a template.
- If the draft already earns its reader's attention, say so and avoid rewriting it for novelty.

Do not speculate about who or what produced the original text.
