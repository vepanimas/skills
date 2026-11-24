#!/usr/bin/env bash
set -euo pipefail

# Builds a Claude Desktop upload pack. Does not install anything.

source "$(cd "$(dirname "$0")" && pwd)/skills.sh"

if [[ $# -ne 0 ]]; then
  echo "Usage: $0" >&2
  exit 1
fi

if ! command -v git >/dev/null || ! command -v zip >/dev/null; then
  echo "Error: git and zip are required to build the Claude Desktop pack." >&2
  exit 1
fi

zip_skill() {
  local name="$1"
  local src="$2"
  local stage="$3"
  local out_dir="$4"

  if [[ ! -f "$src/SKILL.md" ]]; then
    echo "Error: $name has no SKILL.md at $src" >&2
    exit 1
  fi

  rm -rf "$stage/$name"
  mkdir -p "$stage/$name"
  cp -R "$src/." "$stage/$name/"
  rm -f "$out_dir/$name.zip"
  (cd "$stage" && zip -qr "$out_dir/$name.zip" "$name")
}

find_huryn_skill() {
  local repo="$1"
  local name="$2"
  local matches=()
  local path

  while IFS= read -r path; do
    matches+=("$path")
  done < <(find "$repo" -type f -path "*/skills/${name}/SKILL.md" | sort)

  if [[ "${#matches[@]}" -ne 1 ]]; then
    echo "Error: expected one Huryn skill named $name, found ${#matches[@]}." >&2
    exit 1
  fi
  dirname "${matches[0]}"
}

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

git clone --depth 1 https://github.com/deanpeters/Product-Manager-Skills.git "$tmp/dean"
git clone --depth 1 https://github.com/phuryn/pm-skills.git "$tmp/huryn"
stage="$tmp/stage"
mkdir -p "$stage"

out_dir="$bundle_dir/dist/claude-desktop"
rm -rf "$out_dir"
mkdir -p "$out_dir"

for name in "${dean_skills[@]}"; do
  zip_skill "$name" "$tmp/dean/skills/$name" "$stage" "$out_dir"
done

for name in "${huryn_skills[@]}"; do
  zip_skill "$name" "$(find_huryn_skill "$tmp/huryn" "$name")" "$stage" "$out_dir"
done

for name in "${repo_skills[@]}"; do
  zip_skill "$name" "$root/skills/$name" "$stage" "$out_dir"
done

echo "Skipped youtrack-cli: Claude Desktop packs upload skill folders, and youtrack-cli installs through the youtrack CLI for Claude Code only." >&2

pack="$bundle_dir/dist/pm-bundle-claude-desktop.zip"
rm -f "$pack"
(cd "$out_dir" && zip -qr "$pack" *.zip)

echo "Created $pack"
echo "Unzip it, then upload the skill zips inside under Claude Settings → Capabilities → Skills. Do not upload the outer zip."
