#!/usr/bin/env bash
set -euo pipefail

# Installs the bundle globally (user-level), so every project sees these skills.
# Global dirs: ~/.claude/skills, ~/.codex/skills, ~/.cursor/skills, ~/.junie/skills,
# ~/.pi/agent/skills, ~/.config/opencode/skills. The lock is ~/.agents/.skill-lock.json.

source "$(cd "$(dirname "$0")" && pwd)/skills.sh"

skill_args=()
for name in "${dean_skills[@]}"; do
  skill_args+=(--skill "$name")
done
npx --yes skills add deanpeters/Product-Manager-Skills -g -y \
  "${agents[@]}" \
  "${skill_args[@]}"

skill_args=()
for name in "${huryn_skills[@]}"; do
  skill_args+=(--skill "$name")
done
npx --yes skills add phuryn/pm-skills -g -y \
  "${agents[@]}" \
  "${skill_args[@]}"

skill_args=()
for name in "${repo_skills[@]}"; do
  skill_args+=(--skill "$name")
done
npx --yes skills add vepanimas/skills -g -y \
  "${agents[@]}" \
  "${skill_args[@]}"

# The official YouTrack skill ships with the JetBrains youtrack CLI. It installs globally by default.
if command -v youtrack >/dev/null; then
  youtrack skill install youtrack-cli --agent claude-code
else
  echo "Skipped youtrack-cli: run 'brew install jetbrains/utils/youtrack' and 'youtrack auth login', then rerun." >&2
fi
