# Tasks template

Write `changes/<name>/tasks.md`. The numbered checkbox form below is the suite
default, not a parser requirement. An existing style may change the bullet,
numbering, or grouping, but every implementation task must use a standard
Markdown `[ ]`, `[x]`, or `[X]` checkbox.

```markdown
## 1. <group>

- [ ] 1.1 <task> and verify <how>
- [ ] 1.2 <task> and verify <how>

## 2. <group>

- [ ] 2.1 <task> and verify <how>
```

Group related work under numbered headings by default. Order by dependency. Each
task should be small enough to finish in one sitting. Every task needs an
unambiguous verification method: a test, command, observable behavior, or
delivered artifact. Put it on the same line by default; an existing style may
put it in an immediately nested or adjacent line. Use a separate verification
task only when it checks integration across several implementation tasks.

Read the proposal and specs for what to build, and `design.md` for how, if it
exists. If `design.md` still has an open question that would change the work,
resolve it before writing tasks.
