# Skills

A personal, opinionated set of skills, helpful for day-to-day agentic development irrespective of the tech stack you use.

- **prd-review** judges whether a PRD, brief, spec, or one-pager is ready to share. It does not rewrite.
- **rewrite** proofreads, shortens, softens, or tone-checks text the user will send. It does not review a PRD.

They split the work. If the request is "look at this and make it better" on a product doc: review first. Rewrite only if the user also wants wording help.

## Install

```bash
npx skills add vepanimas/skills
```

That installs both. Add `-g` for a user-level install. Use `--skill prd-review` or `--skill rewrite` for one.
