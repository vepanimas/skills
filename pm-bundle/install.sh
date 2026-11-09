#!/usr/bin/env bash
set -euo pipefail

# Installs the bundle globally (user-level), so every project sees these skills.
# Global dirs: ~/.claude/skills, ~/.codex/skills, ~/.cursor/skills, ~/.junie/skills,
# ~/.pi/agent/skills, ~/.config/opencode/skills. The lock is ~/.agents/.skill-lock.json.

agents=(--agent claude-code codex cursor junie pi opencode)

npx --yes skills add deanpeters/Product-Manager-Skills -g -y \
  "${agents[@]}" \
  --skill jobs-to-be-done \
  --skill epic-hypothesis \
  --skill epic-breakdown-advisor \
  --skill incoming-request-advisor \
  --skill workshop-facilitation

npx --yes skills add phuryn/pm-skills -g -y \
  "${agents[@]}" \
  --skill interview-script \
  --skill summarize-interview \
  --skill identify-assumptions-existing \
  --skill prioritize-assumptions \
  --skill brainstorm-experiments-existing \
  --skill analyze-feature-requests \
  --skill opportunity-solution-tree \
  --skill product-strategy \
  --skill value-proposition \
  --skill pricing-strategy \
  --skill prioritization-frameworks \
  --skill market-sizing \
  --skill competitor-analysis \
  --skill north-star-metric \
  --skill create-prd \
  --skill outcome-roadmap \
  --skill job-stories \
  --skill pre-mortem \
  --skill strategy-red-team \
  --skill stakeholder-map \
  --skill sprint-plan \
  --skill retro \
  --skill summarize-meeting \
  --skill release-notes \
  --skill gtm-strategy \
  --skill ideal-customer-profile \
  --skill metrics-dashboard \
  --skill cohort-analysis \
  --skill ab-test-analysis \
  --skill sql-queries

npx --yes skills add vepanimas/skills -g -y \
  "${agents[@]}" \
  --skill prd-review

# The official YouTrack skill ships with the JetBrains youtrack CLI. It installs globally by default.
if command -v youtrack >/dev/null; then
  youtrack skill install youtrack-cli --agent claude-code
else
  echo "Skipped youtrack-cli: run 'brew install jetbrains/utils/youtrack' and 'youtrack auth login', then rerun." >&2
fi
