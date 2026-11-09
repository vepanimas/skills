# skills

Agent skills for product work that sits close to the code: specs that engineers will build from,
and the messages and docs around them.

Each skill does one job, names the skill that does the next one, and leaves a gap as a gap instead
of filling it with invented evidence.

## Skills

| Skill | What it does |
|---|---|
| [`prd-review`](skills/prd-review/SKILL.md) | Reads a PRD or feature spec you already have and points at what an implementer could get wrong: a missing requirement, a sentence that reads two ways, two passages that disagree. Knows the extra traps of developer tools, platforms, and AI features. Gives notes, not a rewrite or a score. |
| [`faithful-edit`](skills/faithful-edit/SKILL.md) | Proofreads, shortens, or softens a message you will send under your own name, and keeps your meaning, voice, and firmness. Leaving the draft alone is a valid answer. |
| [`deslop-writing`](skills/deslop-writing/SKILL.md) | Rebuilds a generic or AI-sounding draft around the one thing it was trying to say. Code, numbers, names, and links stay exactly as written. |

## Install

Works with the agents [`npx skills`](https://github.com/vercel-labs/skills) supports, including
Claude Code, Codex, Cursor, Junie, Pi, and OpenCode.

```bash
npx skills add vepanimas/skills --skill '*'         # this project
npx skills add vepanimas/skills --skill '*' -g      # every project
npx skills add vepanimas/skills --skill prd-review  # one skill
```

## PM bundle

Three skills don't cover the whole job. [`pm-bundle`](pm-bundle/README.md) is a curated set of 37
for discovery, strategy, specs, delivery, and metrics. It takes them from Dean Peters' and Paweł
Huryn's catalogs, adds `prd-review` and the official `youtrack-cli`, and keeps exactly one skill per
job, so the agent never has to pick between two that do the same thing.

```bash
git clone https://github.com/vepanimas/skills.git
./skills/pm-bundle/install.sh
```

## License

The skills in this repo are [MIT](LICENSE). The bundle installs other skills straight from their
own repositories, under their own licenses.
