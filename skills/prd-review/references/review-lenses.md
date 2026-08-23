# Expert PM review lenses

Use the lenses that could change the decision this document needs to enable. Inspect all of them,
but report only material findings. The document does not need standard section names or a prescribed
order; review the quality of its argument.

## Structure and central idea

- Can a reader state the target user, problem, intended outcome, and proposed direction after one
  pass?
- Is the decision the document asks readers to make explicit and easy to find?
- Does the argument move coherently from problem and evidence to outcomes, approach, scope,
  requirements, and measurement? Which missing bridge forces the reader to supply the logic?
- Does the summary represent the body, or promise a different problem, scope, or result?
- Are important decisions buried in background or implementation detail?
- Does each section advance the argument, or do repeated context and local detail obscure the main
  idea?
- Does the document distinguish fact, evidence, inference, assumption, hypothesis, decision,
  requirement, and implementation detail?

## Idea and problem definition

- Who specifically experiences the problem, in what situation, and what are they trying to achieve?
- Is the document describing a user problem or merely a missing product capability?
- What fails, slows down, costs more, or becomes risky today? How frequent and severe is it?
- What do users do instead? A load-bearing workaround is evidence and part of the current product
  experience.
- Is the stated problem a root cause, a symptom, or one plausible explanation among several?
- Why does this deserve attention now rather than another known problem?
- Is the product idea distinct and coherent, or only a collection of requested features?

## Discovery and research

- Which claims are supported by interviews, behavioral data, support cases, market evidence,
  experiments, domain expertise, or nothing?
- Was the research method capable of answering the question the document relies on?
- Is the sample representative enough for the claim, or biased toward vocal users, experts,
  existing customers, one team, or one workflow?
- Are words such as `users`, `many`, `often`, and `significant` doing more work than the evidence?
- Does the document synthesize research into an insight, or only list quotes, requests, and counts?
- Are contradictory evidence and plausible alternative interpretations acknowledged?
- Is the evidence recent and relevant to the population, context, and product version in question?
- Where evidence is unavailable, is the uncertainty named and is there a clear threshold for what
  would be enough to decide?

## Correctness of the approach

- Does the proposed mechanism address the evidenced cause, or only the visible symptom?
- Is there a plausible causal path from the solution to the intended user or business outcome?
- Were credible alternatives considered fairly, including doing less, changing the workflow, or not
  building anything?
- Is this the smallest useful intervention or test, or the most complete solution the team can
  imagine?
- Which assumption would invalidate the approach if wrong, and how will the team learn that early?
- What has to change in user behavior for the solution to work? Is adoption assumed or designed for?
- Are dependencies, operational constraints, migration, reversibility, and lock-in treated as
  product concerns where they affect the outcome?
- Which users, workflows, or adjacent goals become worse because of the chosen tradeoff?

## Scope, requirements, and underdefinition

- Do goals describe changes in user or business behavior rather than deliverables?
- Do non-goals close the adjacent scope readers are actually likely to assume is included?
- Are boundaries between teams, systems, user groups, and phases explicit where ownership could be
  disputed?
- Could two capable teams read a requirement and build observably different behavior? Find the words
  where they would diverge.
- Are the actor, trigger, preconditions, states, outcome, failure behavior, and relevant limits clear?
- Are terms such as `fast`, `intuitive`, `reliable`, `seamless`, `easy`, or `supported` defined well
  enough to verify?
- Are important states covered: empty, loading, error, partial, offline, first run, migration, and
  domain-specific failure states?
- Is a product requirement actually an implementation decision, or is an implementation preference
  being presented as a user need?
- Which requirements are essential, which are preferences, and what wins when they conflict?

## Outcomes and measurement

- Would the success criteria show that the original problem was solved, or only that the feature was
  shipped, invoked, or adopted?
- Is there a baseline, target or threshold, observation period, and owner for interpreting the
  result?
- Can the metric be measured with the instrumentation, access, sample, and release cadence that
  actually exist?
- Is there a guardrail or counter-metric that would reveal harm elsewhere?
- Does the document say what decision follows if the result misses the threshold?
- When quantitative measurement is unsuitable, is the qualitative judgment procedure concrete
  enough to repeat?

## Counterarguments, risks, and coherence

- What is the strongest credible argument that the problem is smaller, different, or less urgent
  than the document claims?
- What alternative explanation fits the same research or observed behavior?
- What is the strongest objection to the chosen approach from a skeptical user, designer, engineer,
  operator, or decision-maker?
- Who bears a cost or loses a useful workflow if the proposal succeeds as written?
- Do the stated goals, non-goals, requirements, risks, and metrics contradict one another?
- Does the document answer hard objections with evidence or an explicit tradeoff, rather than
  dismissing them or omitting them?

Do not manufacture debate for its own sake. Turn an objection into a finding only when it remains
unanswered and resolving it could change the decision, scope, or approach.
