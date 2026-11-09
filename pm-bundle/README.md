# PM bundle

37 skills for product work, from the first interview to the release notes, with one skill per job.

Big skill catalogs overlap. Install two of them and the agent gets three ways to write a PRD and
picks one at random. This bundle takes Paweł Huryn's [pm-skills](https://github.com/phuryn/pm-skills)
as the default and adds Dean Peters' [Product-Manager-Skills](https://github.com/deanpeters/Product-Manager-Skills)
only for jobs pm-skills doesn't cover. On top of that it adds `prd-review` from this repo and the
official `youtrack-cli`.

## Install

```bash
git clone https://github.com/vepanimas/skills.git
./skills/pm-bundle/install.sh
```

The script installs every skill at user level for Claude Code, Codex, Cursor, Junie, Pi, and
OpenCode. Run it again to update. It fetches skills from GitHub, not from your clone, so a local
change to `prd-review` reaches the bundle only after it is pushed.

`youtrack-cli` ships with JetBrains' [`youtrack` CLI](https://github.com/JetBrains/youtrack-cli)
and is installed for Claude Code only. Without the CLI, the script skips it and says so:

```bash
brew install jetbrains/utils/youtrack
youtrack auth login
```

## Frame and discover

| Skill | Source | Use it for |
|---|---|---|
| `jobs-to-be-done` | Dean Peters | Jobs, pains, and gains |
| `opportunity-solution-tree` | Huryn | Outcome, opportunities, solutions, and experiments |
| `interview-script` | Huryn | A JTBD interview script |
| `summarize-interview` | Huryn | Turn a transcript into jobs, signals, and actions |
| `identify-assumptions-existing` | Huryn | Value, usability, viability, and feasibility risks for a feature |
| `prioritize-assumptions` | Huryn | Rank those risks and name an experiment for each |
| `brainstorm-experiments-existing` | Huryn | Design the experiments |
| `analyze-feature-requests` | Huryn | Cluster a batch of requests by theme and strategic fit |

## Strategy and bets

| Skill | Source | Use it for |
|---|---|---|
| `product-strategy` | Huryn | Vision, segments, trade-offs, metrics, growth, and defensibility |
| `value-proposition` | Huryn | Who, why, what changes, and the alternatives |
| `pricing-strategy` | Huryn | Model, willingness to pay, and a pricing test |
| `prioritization-frameworks` | Huryn | Pick RICE, ICE, Kano, Opportunity Score, or another fit |
| `market-sizing` | Huryn | TAM, SAM, and SOM, top-down and bottom-up |
| `competitor-analysis` | Huryn | Landscape, strengths, weaknesses, and where to differ |
| `north-star-metric` | Huryn | North Star plus the input metrics |

## Specify

| Skill | Source | Use it for |
|---|---|---|
| `create-prd` | Huryn | A lean PRD. Unknowns stay marked as unknowns |
| `prd-review` | this repo | Notes on an existing PRD: missing requirements, vague statements, contradictions |
| `outcome-roadmap` | Huryn | Rewrite a feature list as outcomes |
| `epic-hypothesis` | Dean Peters | Frame an initiative as a bet that can be wrong |
| `epic-breakdown-advisor` | Dean Peters | Split an item that is too big into vertical slices |
| `job-stories` | Huryn | When / I want / so I can, with acceptance criteria |
| `pre-mortem` | Huryn | Assume the launch failed and separate real risks from worries |
| `strategy-red-team` | Huryn | Attack the few assumptions that would kill the plan, and name the cheapest test |

## Run the work

| Skill | Source | Use it for |
|---|---|---|
| `stakeholder-map` | Huryn | Who they are, power × interest, and the communication plan |
| `incoming-request-advisor` | Dean Peters | Decode one Slack ping, email, or escalation before answering |
| `workshop-facilitation` | Dean Peters | The one-question-per-turn protocol that `epic-breakdown-advisor` and `incoming-request-advisor` follow |
| `youtrack-cli` | JetBrains | Read YouTrack issues, comments, history, and links through the official CLI |
| `sprint-plan` | Huryn | Capacity, a 15–20% buffer, story selection, risks |
| `retro` | Huryn | Sprint retrospective |
| `summarize-meeting` | Huryn | Decisions and action items from a transcript |
| `release-notes` | Huryn | User-facing notes from tickets or a PRD |
| `gtm-strategy` | Huryn | Channels, message, metrics, and the launch plan |
| `ideal-customer-profile` | Huryn | Who the first customers are |

## Measure

These four work on data you already have. Give them a file, results, or a schema. Without one they
have nothing to analyze, and they shouldn't make numbers up.

| Skill | Source | Use it for |
|---|---|---|
| `metrics-dashboard` | Huryn | What to measure, where it comes from, and when to alert |
| `cohort-analysis` | Huryn | Retention and adoption from a cohort file |
| `ab-test-analysis` | Huryn | Significance and a ship, extend, or stop call from real results |
| `sql-queries` | Huryn | A query from a schema you provide |

## Add when the job shows up

Left out on purpose until there is a reason to add them:

- **Quarterly goals:** Huryn `brainstorm-okrs`.
- **The path a customer actually walks:** Huryn `customer-journey-map`, from interviews, tickets, or analytics you already have.
- **A backlog to rank:** Huryn `prioritize-features`.
- **New product, no customers yet:** Huryn `identify-assumptions-new`, `brainstorm-experiments-new`, `brainstorm-ideas-new`, `beachhead-segment`, `lean-canvas`.
- **SaaS finance:** Dean Peters `business-health-diagnostic` and `feature-investment-advisor`.
- **An AI-built product you are accountable for:** Huryn `shipping-artifacts` and `intended-vs-implemented`, plus Dean Peters `context-engineering-advisor`.
- **A product you may retire:** Dean Peters `lifecycle-play-advisor`, then the EOL chain.

## Sources and licenses

| Source | Skills | License |
|---|---|---|
| [phuryn/pm-skills](https://github.com/phuryn/pm-skills) | 30 | MIT |
| [deanpeters/Product-Manager-Skills](https://github.com/deanpeters/Product-Manager-Skills) | 5 | CC BY-NC-SA 4.0 |
| This repo | 1 | MIT |
| [JetBrains/youtrack-cli](https://github.com/JetBrains/youtrack-cli) | 1 | See the repo |

The script installs each skill from its own repository. This repo doesn't copy their files, and
you shouldn't republish Dean Peters' skills outside the terms of CC BY-NC-SA.
