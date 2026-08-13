# Review lenses

Reach for the lens that matches what the document is trying to do; ignore the rest. A lens earns a
place in the review only when failing it would change a decision someone is about to make.

## Problem

- Is the problem stated from the user's side, or only as a gap in the product?
- Who specifically has it, how often, and what does it cost them today? A problem with no frequency
  and no cost cannot be prioritized against anything else.
- What are users doing instead right now? The absence of a workaround usually means the problem is
  smaller than stated; a widely used workaround usually means it is real.
- Is the problem the actual problem, or a symptom of one the document is not naming?
- Would a reader who disagrees be able to point at the specific claim they disagree with? If the
  framing is too smooth to argue with, it is probably too vague to act on.

## Evidence

- Which claims are supported, and by what — data, interviews, support tickets, the author's
  experience, or nothing?
- Are quantifiers doing unearned work? "Users find this confusing", "many teams", "frequently".
  How many, which ones, observed how?
- Is the sample capable of supporting the claim, or is it a handful of vocal users generalized to
  the population?
- Is anything presented as fact that is actually a well-informed guess? Labelling it as an
  assumption costs one word and changes how the reader treats it.
- Is contradicting evidence acknowledged anywhere? A document with no tension in it usually means
  the author stopped looking early.
- Where evidence is genuinely unavailable, does the document say what would be enough to decide?

## Goals and outcomes

- Are goals stated as changes in user or business behavior, or as things to build? "Ship a settings
  redesign" is a deliverable; "users can find the setting they need without search" is an outcome.
- Would the team know, six months later, whether the goal was met?
- Do the goals conflict with each other, and if so does the document say which wins?
- Is there a goal that is really a constraint, or a constraint that is really a goal?

## Non-goals and scope

- Do the non-goals rule out things a reader would plausibly assume are included? A non-goal that
  nobody would have expected anyway is decoration.
- Which adjacent problem is the most likely source of scope creep, and does the document close it?
- Is the boundary between this and neighboring teams' work stated, where one exists?
- Is anything in scope that the evidence does not justify — carried along because it is convenient
  to build at the same time?

## Solution justification

- Did the document reach a solution before establishing the problem?
- Were alternatives considered, and is the reason for rejecting them recorded? An alternatives
  section that exists only to make the chosen option look inevitable is worse than none.
- Is the solution the smallest thing that addresses the problem, or the most complete thing?
- Which assumption, if wrong, breaks the whole approach? Is it named?
- Is the solution reversible, and does the document acknowledge what it locks in?

## Requirements

- Would two engineers reading this build the same thing? Find the sentence where they would diverge.
- Are important states covered — empty, loading, error, partial, offline, first run, migration, and
  whatever the domain adds?
- Is each requirement verifiable? "Fast", "intuitive", "reliable" and "seamless" cannot be checked.
- Are there implicit dependencies on other teams, systems, releases, or data that nobody has agreed
  to yet?
- Is any requirement actually a design decision that should be left open, or a design decision
  smuggled in as a requirement?
- Which requirements are essential and which are preferences? If everything is mandatory, the first
  schedule pressure will decide arbitrarily.

## Success criteria

- Do the metrics show that the *problem* was solved, or only that the *feature* was used? Adoption
  is not resolution.
- Can the metric actually be measured with the instrumentation that exists or is planned?
- What is the threshold, and what happens below it? A metric with no threshold is a report, not a
  criterion.
- Is there a counter-metric or guardrail — something that would reveal the change made things worse
  elsewhere?
- Over what period, and who looks?

## Risks, tradeoffs, and coherence

- Does the document contradict itself between sections — a non-goal that a requirement re-admits, a
  metric unrelated to the stated goal, a summary that promises more than the scope delivers?
- Are the real risks named, or only the safe ones? A risk section with no uncomfortable entry is a
  formality.
- Is a tradeoff being avoided rather than made? Unresolved tradeoffs resurface as mid-project
  arguments.
- What is the strongest objection a skeptical reader would raise, and does the document survive it?
