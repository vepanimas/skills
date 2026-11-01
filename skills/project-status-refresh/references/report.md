# Slack report

Send with the Slack send-message tool to `report.slack_target` (a user ID sends a DM). Use standard
markdown: bold, `[text](url)` links, lists. Every issue ID is a link to
`<youtrack.url>/issue/<ID>`. Dates are `<Mon DD>` in the owner's timezone.

Writing: plain words, short sentences, no em-dashes, names in plain text.

## Top-level message

Under 15 lines; it is mostly read on a phone.

```
**🧭 <project.name>, <cadence> status, <Mon DD>**
<light> Overall: <On track | At risk | Off track> · <N> working days to <next milestone> (<Mon DD>)
• <light> [<ID>](<link>) <meta issue title>: <open> of <total> must-haves open. <reason>
• <light> [<ID>](<link>) <meta issue title>: <n> unresolved. <reason>

**Needs attention**
1. <emoji> [<ID>](<link>) <short title>: <what is off> (<owner>)

Since last run: ✅ <n> done · 🆕 <n> new · 🛠 <n> fixes proposed
```

- One bullet per meta issue. The must-have form for meta issues with `must` sections, the
  unresolved form for the rest.
- **Needs attention.** Up to 5 items, most urgent first: delivery risks on must-haves, then
  questions waiting on the owner, then drift that misstates a must-have. Each issue once. If none:
  "Nothing needs attention today."
- No milestones: drop the countdown.
- First run: add "First run, compared with the last 7 days."

## Thread reply

Set `thread_ts` to the top-level message. Send it only when there is more than the top-level
message shows. Don't repeat the Needs attention items. Sections in this order, skip empty ones, one
line per issue:

1. **🛠 Proposed fixes**, grouped by meta issue. Every drift finding, each with its fix. This is the
   list the owner works through.
2. **Other risks**: 📅 ⛔ 🐢 💬 findings not shown above.
3. **✅ Done** and **🆕 New**.
4. **🗣️ From Slack, meetings, and docs**: decisions and open questions, each with its source.
5. **⚠️ Gaps**: sources that couldn't be read.

## Quiet day

Nothing changed, no drift, no risks: one line, no thread.

```
🟢 <project.name>, <Mon DD>: no changes, meta issues accurate, on track. <N> working days to <milestone>.
```

## Stop message

```
The <release.name> refresh for <project.name> has ended. You can delete its scheduled task.
```
