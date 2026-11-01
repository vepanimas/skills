# Run archive

With `report.archive_dir` set, each sent run leaves one folder that the next run compares with.
The Slack text is for people; `state.json` is for the next run.

```
<archive_dir>/
  2026-11-01T2122/          # run time in the owner's timezone, YYYY-MM-DDTHHMM
    report.md               # what was sent
    state.json              # what the next run compares with
```

Write the folder after sending, never for a dry run, and never edit an earlier one. If sending
failed, still write it, with `slack.sent: false`, so the next run knows what it missed.

## report.md

The top-level message, a `---` line, then the thread reply, exactly as sent. Above them, one line
with the Slack link, or `Not sent: <reason>`.

## state.json

Every value comes from this run's reads. Lists are sorted by issue ID, so two files diff cleanly.

```json
{
  "version": 1,
  "run_at": "2026-11-01T21:22:00+02:00",
  "baseline": { "kind": "state", "at": "2026-10-31T22:45:00+02:00" },
  "slack": { "sent": true, "target": "U0123456789", "ts": "1793564539.927969",
             "link": "https://example.slack.com/archives/D0/p1793564539927969" },
  "milestone": { "name": "Go/no-go", "date": "2026-11-06", "working_days": 4 },
  "overall": { "light": "yellow", "reason": "29 open must-haves have no commits" },
  "meta_issues": [
    {
      "id": "WEB-100",
      "light": "yellow",
      "reason": "Bundling has had no update since Oct 27",
      "counts": { "must_total": 63, "must_open": 36, "should_total": 26, "should_open": 24,
                  "unresolved_subtasks": 44 },
      "checklist": [
        { "id": "WEB-101", "section": "Major issues", "rank": "must", "ticked": false,
          "state": "Open", "priority": "Critical", "assignee": "kiril.panayotov",
          "release": ["2026.3.1"] }
      ],
      "subtasks": ["WEB-101", "WEB-102"]
    }
  ],
  "findings": [
    { "key": "WEB-101:priority", "kind": "drift", "meta": "WEB-100",
      "text": "checklist: must-have; task: Normal", "fix": "raise Priority to Major, or move to Should have",
      "first_seen": "2026-11-01" },
    { "key": "WEB-102:date-risk", "kind": "risk", "emoji": "📅", "meta": "WEB-100",
      "text": "no commits, 4 working days to Go/no-go", "first_seen": "2026-11-01" }
  ]
}
```

- `baseline.kind`: `state`, `slack`, or `default-7-days`.
- `rank`: `must`, `should`, or `other`.
- `assignee`: the login, or `null`.
- `key`: `<issue ID>:<kind>`. Kinds for drift are `state`, `priority`, `scope`, `release`, `owner`,
  and `evidence`. Kinds for risks are `blocked`, `date-risk`, `stale`, and `unanswered`. The same
  problem gets the same key on every run.
- `first_seen`: copied from the baseline when the key was already there, today otherwise.

## Compare with the baseline

- **✅ Done.** In scope, resolved now, unresolved in the baseline.
- **🆕 New.** A checklist item or subtask not in the baseline.
- **➖ Removed.** A checklist item or subtask in the baseline and gone now. Say which list it left.
- **✔️ Fixes applied.** A drift key in the baseline and not now.
- **Still open.** A drift key in both. Keep its `first_seen` and show `(since <Mon DD>)`.
- **Lights.** A light differs from the baseline only with a named reason; put that reason in the
  bullet.
- **Counts.** If a count changed only because the parse rules changed, not the project, say so in
  ⚠️ Gaps.
