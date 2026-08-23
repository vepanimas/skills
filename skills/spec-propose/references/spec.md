# Spec template

A spec is a behavior contract. Write one delta file per capability at
`changes/<name>/specs/<capability>/spec.md`.

Good spec content: observable behavior, inputs/outputs/errors, constraints
(security, privacy, reliability, compatibility), and at least one scenario or
equivalent acceptance example for every requirement.

Leave out class names, library choices, and step-by-step implementation.

## Format

```markdown
## Purpose

<!-- New capabilities only. One or two sentences on what this capability is
     for. Omit on a delta for an existing capability — edit the durable spec's
     Purpose directly if that is what needs to change. -->

## ADDED Requirements

### Requirement: <name>
The system SHALL <observable behavior>.

#### Scenario: <case>
- **WHEN** <action or condition>
- **THEN** <observable outcome>

## MODIFIED Requirements

### Requirement: <existing name>
<!-- Paste the entire existing requirement (header through all scenarios),
     then edit. Partial MODIFIED blocks lose detail at archive. Header text
     must match the durable spec. If you are only adding new behavior, use
     ADDED instead. -->

## REMOVED Requirements

### Requirement: <name>
**Reason:**
**Migration:**

## RENAMED Requirements

- FROM: `### Requirement: <old>`
- TO: `### Requirement: <new>`
```

Omit sections that do not apply. Use the project's normative keywords when
defined; otherwise use `SHALL`/`MUST` for hard requirements and `SHOULD` only
when a stated exception is allowed. Each requirement describes one
independently testable behavior. Every requirement includes at least one
scenario or equivalent acceptance example that exercises the behavior rather
than restating it. The delta section and `### Requirement:` headings are fixed
because `spec-archive` uses them when merging.

Read the durable `specs/<capability>/spec.md` before writing MODIFIED, REMOVED,
or RENAMED.
