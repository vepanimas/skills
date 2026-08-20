# Tasks template

Write `changes/<name>/tasks.md`. `spec-apply` tracks only `- [ ]` / `- [x]`
checkboxes numbered `X.Y`.

```markdown
## 1. <group>

- [ ] 1.1 <task> and verify <how>
- [ ] 1.2 <task> and verify <how>

## 2. <group>

- [ ] 2.1 <task> and verify <how>
```

Group related work under numbered headings. Order by dependency. Each task
should be small enough to finish in one sitting. Put the verification on the
same line (a test, command, observable behavior, or delivered artifact). Use a
separate verification task only when it checks integration across several
implementation tasks.

Read the proposal and specs for what to build, and `design.md` for how, if it
exists. If `design.md` still has an open question that would change the work,
resolve it before writing tasks.
