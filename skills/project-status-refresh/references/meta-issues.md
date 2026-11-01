# Meta issues: parsing, drift, and risks

## Parse the checklist

Apply these rules exactly. The same description must give the same counts on every run, so a
change in a number means a change in the project and not in the method.

- **Item.** A list line (`-`, `*`, `1.`, or a task box `- [ ]` / `- [x]`) that contains a YouTrack
  issue ID or issue link. Prose that mentions an ID is not an item. A list line under a counted
  section without an issue ID is an untracked item: report it as drift, don't count it.
- **Section.** Walk up from the item. A line made only of bold text (`**Payments**`) is the section
  if its name matches a `must` or `should` name; otherwise it is a sub-label, so skip it and keep
  walking. The first Markdown heading reached is the section, whether it matches or not, so a
  sub-label like `**Features:**` under `## Should have` never pulls items out of Should have.
  Names match ignoring case, surrounding spaces, and a trailing colon.
- **Done mark.** A ticked box, struck-through text, or the words done, fixed, or parked after the ID.
- **Priority word.** Critical, Major, Normal, Minor, Show-stopper, or "must have" in the item text.
- **One ID, one item.** Count distinct issue IDs. If an ID appears in more than one section, it
  belongs to the highest-ranked one (`must`, then `should`, then any other) and is reported as
  listed twice.
- **The checklist beats `watch`.** An ID in both is counted as a checklist item.
- **Counts.** Must-haves: distinct IDs in `must` sections. Open: those whose state is not resolved.
  Resolved states are Fixed, Done, Verified, Duplicate, Obsolete, Won't fix, and the project's
  equivalents.

## Scope

In scope: subtasks of every meta issue, recursively, and every checklist item. Not the meta issues
themselves, not `exclude`, not `watch`.

## Changes the owner made

A change the owner made since the baseline is deliberate. Don't report it as a risk or as
"changed". Do check the meta issue against it: if the owner moved a must-have to a later release,
the checklist is now wrong, and that is drift.

## Drift

Drift is where a meta issue says something the evidence doesn't. Every drift finding names both
sides and one proposed fix. If the evidence doesn't show which side is wrong, give both options.

Example: `SHOP-112 checklist: must-have; task: Normal → raise Priority to Major, or move the item
to Should have`.

- **State.** A ticked or done-marked item whose task is unresolved. An unticked item whose task is
  resolved. A comment or merged commit that says done while the state doesn't. A meta issue
  resolved with open subtasks, or open with all of them resolved.
- **Priority.** A must-have at Normal or Minor. A should-have at Critical or Show-stopper. A
  priority word in the item that differs from the Priority field. A meta issue whose own priority
  is lower than its highest open must-have.
- **Scope.** A subtask on no configured checklist. A checklist item that is neither in scope nor in
  `watch`. An item listed twice. An untracked item.
- **Release.** An open must-have whose release field is empty or later than `release.name`.
- **Owner.** An open must-have, or any open Critical issue, with no assignee.
- **Evidence.** A decision in Slack or a doc that changes scope or priority while the checklist
  still says otherwise. From meeting notes, the fix is "confirm", never a change.

Drift never changes a traffic light. It is tracker accuracy, not delivery risk.

## Delivery risks

Working days skip weekends, in the owner's timezone.

| Finding | Rule | daily | weekly |
|---|---|---|---|
| 📅 Date risk | Open must-have with no commit, next milestone this close | 5 days | 5 days |
| 🐢 Stale | In Progress with no update, comment, or commit for | 3 days | 5 days |
| 💬 Unanswered | Question in a comment with no reply for | 2 days | 3 days |
| ⛔ Blocked | Waiting on another team's issue or a decision; say on whom and for how long | any | any |

Also record ✅ resolved since the baseline and 🆕 subtasks or checklist items added or removed since
the baseline.

An issue gets one delivery finding. If it fits several, use the first in this order: ⛔, 📅, 🐢, 💬.

## Traffic lights

One light per meta issue and one overall, each with a one-line reason.

- 🟢 **On track.** No must-have at risk, and no blocker older than 2 working days (5 weekly).
- 🟡 **At risk.** A must-have has a date risk, is stale, or has an unanswered question; or a blocker
  has no owner.
- 🔴 **Off track.** A must-have can't make the next milestone on current evidence, a must-have
  blocker has no plan, or a milestone date moved.

Change a light from the previous report only when you can name the reason. The overall light is the
worst meta issue light.
