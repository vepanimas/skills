# Project config

YAML, usually inline in a scheduled task prompt. Only `project.name`, `youtrack.url`, and
`youtrack.meta_issues` are required. Every value below is a made-up example.

```yaml
project:
  name: "Checkout redesign"                # used in the report title
  owner:                                   # default: the current user
    name: "Alex Kim"
    timezone: "Europe/Berlin"              # for "today" and working days

release:
  name: "2027.1"
  milestones:                              # in date order; the report counts down to the next one
    - { name: "Feature freeze", date: 2027-02-01 }
    - { name: "Release candidate", date: 2027-02-15 }
    - { name: "Release", date: 2027-03-01 }
  stop_after: 2027-03-01                   # default: the last milestone. No milestones: no stop rule

youtrack:
  url: "https://youtrack.example.com"
  meta_issues:                             # the issues this skill keeps accurate
    - id: SHOP-100
      must: ["Entry points", "Major issues", "Payments"]   # checklist sections that are must-have
      should: ["Should have"]                              # optional
    - id: SHOP-140                         # no sections: subtasks are tracked, no must-have count
  watch: [SHOP-210, PAY-77]                # issues the project depends on; checked, never counted
  exclude: [SHOP-133]                      # never counted or flagged
  release_field: "Fix versions"            # default: the first of Fix versions, Planned for,
                                           # Target release that the project has

evidence:                                  # all optional, all read only
  slack_channels: ["#checkout-dev"]
  meetings: ["Checkout weekly sync"]       # searched by title; weak source
  docs:
    - { name: "PRD", url: "https://docs.example.com/checkout-prd" }

report:
  slack_target: "U0123456789"              # user ID (DM) or channel ID. Default: the owner's DM
  cadence: daily                           # daily | weekly; sets the thresholds
  allow_mentions: false

dry_run: false
```

## Defaults

- `project.owner`: look up the current user with the Slack and YouTrack tools.
- `report.slack_target`: the owner's DM.
- `report.cadence`: `daily`.
- A meta issue without `must`: Critical and Show-stopper priority count as must-have for the traffic
  light, and the report shows "unresolved" instead of a must-have count.
