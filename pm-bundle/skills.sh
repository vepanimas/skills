# Shared skill list for install.sh and claude-desktop.sh. Source this file; do not run it.

bundle_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$(cd "$bundle_dir/.." && pwd)"

agents=(--agent claude-code codex cursor junie pi opencode)

dean_skills=(
  jobs-to-be-done
  epic-hypothesis
  epic-breakdown-advisor
  incoming-request-advisor
  workshop-facilitation
)

huryn_skills=(
  interview-script
  summarize-interview
  identify-assumptions-existing
  prioritize-assumptions
  brainstorm-experiments-existing
  analyze-feature-requests
  opportunity-solution-tree
  product-strategy
  value-proposition
  pricing-strategy
  prioritization-frameworks
  market-sizing
  competitor-analysis
  north-star-metric
  create-prd
  outcome-roadmap
  job-stories
  user-stories
  pre-mortem
  strategy-red-team
  stakeholder-map
  sprint-plan
  retro
  summarize-meeting
  release-notes
  gtm-strategy
  ideal-customer-profile
  metrics-dashboard
  cohort-analysis
  ab-test-analysis
  sql-queries
)

repo_skills=(
  prd-review
  learning-prompts
)
