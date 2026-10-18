# Agents

Skills in this repository are what `npx skills` installs globally from `vepanimas/skills`.

## Ship a skill change

1. Commit only the files for that change.
2. Push to `main`.
3. If a changed skill is already installed globally, update it. A skill here is a directory under `skills/` that contains `SKILL.md`. Pass those directory names:

```bash
npx skills update <skill-name> -g -y
```

4. Confirm each updated install matches the repo, including any reference that changed:

```bash
diff -q skills/<skill-name>/SKILL.md ~/.agents/skills/<skill-name>/SKILL.md
```

When a skill is added or removed, update its entry in the README catalog.
