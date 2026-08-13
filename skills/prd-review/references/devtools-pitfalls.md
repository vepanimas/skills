# Developer tools, platforms and AI features

Failure modes that generic product review misses because they only show up when the user is a
developer, the customer is another team, or the output is probabilistic.

## The user is a developer

- **The author is a member of the user population, and that cuts both ways.** Deep intuition about
  the workflow is real evidence and should not be dismissed. It is still one expert user's
  experience, and it systematically over-weights the workflows the author personally has. Ask the
  document to label it: "in my experience" is a legitimate and honest source.
- **Power users are loud and unrepresentative.** Issue trackers, forums and Slack surface the users
  who care enough to complain. A PRD built entirely on tracker demand is optimizing for the tail. Is
  there anything in the document about users who never file issues?
- **The workaround is usually load-bearing.** Developers route around friction with scripts, macros,
  external tools, and habits. A change that removes the friction can also break the workaround and
  leave those users worse off. Does the document know what people do today?
- **Preference is not a problem.** "Developers want X" is a request. What breaks, slows down, or
  fails today is a problem. A document that only has requests will not survive prioritization.
- **Novices and experts want opposite things.** Guidance, defaults and progressive disclosure help
  one and irritate the other. If the document serves both without saying how, it will be
  re-litigated in design review.

## The customer is another team (platform, API, SDK)

- **Two user populations, one document.** The team building on the platform and the end user of
  their product both matter, and their interests diverge. Which one is this document optimizing
  for? An unstated answer becomes an argument later.
- **The boundary is the product decision.** What belongs in the platform and what belongs in the
  product on top is the thing peers will disagree about. If the document does not draw the line
  explicitly, that omission is usually the most important finding.
- **Consumers cannot be redeployed on your schedule.** Migration cost, deprecation windows, version
  skew, and the teams who will simply not migrate are product scope, not implementation detail.
- **Adoption needs a mechanism.** "Teams will use this" is a hypothesis. What makes a team switch,
  and who has agreed to be first? A platform with no named first consumer is a bet on demand that
  does not exist yet.
- **Extension points are permanent.** Anything other teams can build against is effectively public
  API. Does the document acknowledge what it is committing to indefinitely?

## The feature is AI-powered

- **Quality is a distribution, not a state.** "Accurate", "relevant" and "helpful" are not
  requirements. What is the acceptable failure rate, measured how, on what set of cases?
- **The failure mode matters more than the success rate.** A wrong answer delivered confidently, a
  destructive edit, or a plausible-but-invented reference cost far more than a refusal. Does the
  document say what happens when the model is wrong, and how the user notices and recovers?
- **Evaluation is scope.** If there is no way to tell whether a change to the prompt, model or
  retrieval made things better, the team cannot iterate after launch. An eval set, a benchmark, or
  at minimum a defined judgment procedure belongs in the requirements, not in a follow-up.
- **Cost and latency are product constraints.** Per-request cost, token budget, and response time
  shape what the feature can be. Leaving them out means design decisions get made by whoever hits
  the limit first.
- **Trust is asymmetric and slow to rebuild.** Early bad output can permanently end a user's use of
  the feature. Does the document account for the first-run experience specifically?
- **Model behavior drifts.** Requirements that depend on a specific model's current behavior have a
  shelf life. Is that acknowledged?
- **"AI" is sometimes the solution looking for the problem.** Would a deterministic approach solve
  the same problem more reliably? A document that never considers the non-AI alternative has not
  justified its approach.

## Measurement inside a desktop or IDE product

Success criteria written for a web product frequently cannot be measured here. Check that the
metric can actually exist before accepting it.

- **Telemetry is opt-in and partial.** The measured population is not the user population, and it is
  biased in ways that correlate with the behavior being measured. A metric that assumes full
  coverage is not measurable as written.
- **Release cadence sets the feedback loop.** With shipping every few weeks or months and users on
  older versions for a long time, "we'll measure it after launch and iterate" can mean a year. Does
  the timeline in the document match the release reality?
- **A/B testing is often unavailable or slow.** If the success criterion implicitly assumes an
  experiment, and no experiment is possible, the criterion needs replacing with something
  observable.
- **Usage counts do not show whether the problem was solved.** Invocation counts are the easiest
  thing to instrument and the least informative. Look for a completion, retention, or
  time-to-outcome measure, or an explicit qualitative signal, instead of a raw count.
- **Some outcomes are only reachable qualitatively.** Interviews, support ticket volume, or a review
  of tracker complaints are legitimate success criteria if the document commits to who does them and
  when. Vague intent to "gather feedback" is not.
