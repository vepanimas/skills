---
name: learning-prompts
description: "Helps choose a learning-material type or combination and writes a ready-to-paste prompt for it. Types include overview, primer, crash course, deep dive, comparative analysis, cheat sheet, quick reference guide, field guide, playbook, tutorial, and mental models. Use when the user wants a learning prompt, a situational prompt, help choosing how to study a topic, or a prompt for a primer, crash course, deep dive, field guide, cheat sheet, playbook, or other educational material on any topic. Not for writing the primer, guide, playbook, cheat sheet, or other material itself."
---

# Learning prompts

Choose a type of learning material, or a combination of types, and write a prompt the user can reuse for any topic. The prompt asks for the material. This skill does not write the material, and it does not teach the topic.

Before writing a prompt, read [references/formats.md](references/formats.md) and [references/modifiers.md](references/modifiers.md). Copy the stems, the universal template, the worked example's writing guidelines, the modifier expressions, the teaching-style lines, and the audience block as written there. Fill `[topic]` or `[task]`. Do not paraphrase those wordings.

## When this skill does not apply

If the user asks for the learning material itself, such as "give me a primer on X," do not use this skill. If they ask for both the prompt and the material, write the prompt only.

If they only ask what the types mean, give them the taxonomy below and stop. Do not write a prompt.

## Common types of learning materials

Use this table to choose and to explain options. Quote the meanings. Do not paraphrase them.

| Term | Meaning and when to use it |
| --- | --- |
| **Overview** | A broad introduction to a topic, covering the main ideas, approaches, and relationships without going into too much detail. |
| **Primer** | A structured introduction that builds foundational understanding of concepts, terminology, and principles. |
| **Crash course** | An accelerated learning experience focused on the essentials needed to become productive quickly. |
| **Deep dive** | An in-depth exploration of a particular subject, including nuances, technical details, and advanced examples. |
| **Comparative analysis** | A systematic comparison of different approaches, methodologies, or schools of thought, including their strengths and limitations. |
| **Cheat sheet** | A compact reference containing essential definitions, formulas, rules, and procedures. |
| **Quick reference guide** | A resource designed for frequent consultation during practical work. Usually more detailed than a cheat sheet. |
| **Field guide** | A practical guide to applying knowledge in real-world situations, often including heuristics, examples, and decision-making advice. |
| **Playbook** | A collection of actionable workflows, procedures, templates, and recommendations for recurring situations. |
| **Tutorial / Walkthrough** | Step-by-step instruction that teaches a process through guided examples. |
| **Mental models** | Conceptual frameworks that help you understand, analyze, and reason about problems. |

Another useful term is **executive summary**, which refers to a condensed version of a longer report or analysis, emphasizing its most important findings and conclusions.

However, for learning purposes, a *primer* is generally more useful than an executive summary because it focuses on developing understanding rather than simply communicating conclusions.

## Combinations

These are the default combinations. A primer plus a field guide plus a cheat sheet helps the user understand a discipline. A playbook plus worked examples plus a checklist helps them execute a particular workflow.

- A discipline they intend to use: primer + field guide + cheat sheet. For product management, UX, user research, product analytics, and strategy, with no narrower format, use the universal template in [references/formats.md](references/formats.md). That template is the understand, apply, and reference prompt.
- Schools of thought to compare and then use: comparative primer + field guide + cheat sheet. Follow the worked example in [references/formats.md](references/formats.md), including its seven content requirements, its writing guidelines, and "Be information-dense but easy to skim."
- A recurring task, such as conducting JTBD interviews or designing an A/B test: playbook + worked examples + checklist. Use the playbook stem. That stem already includes checklists. Add `Include worked examples.` as its own sentence.

## Choose, or help choose

If they already named a type or a combination, use that. Do not reopen the choice.

A named comparative analysis or comparative overview, without the field guide and cheat sheet, uses the comparative-overview stem. The heavier schools-of-thought combination applies when they ask for that combination, or when they did not name a format and the situation is schools of thought to compare and then use.

If they name an arbitrary set that is not one of the combinations above, use one stem or short prompt per type, each as its own paragraph in a single prompt.

If they did not name a type, choose when one type or one combination is a clear fit. Say why in a few sentences tied to the taxonomy. Use the most specific situation below. A product discipline with no narrower format uses the universal template even when the topic is also unfamiliar. Ask when the remaining candidates are different jobs, such as understanding a discipline versus executing a workflow, or when the request is only a topic.

- A recurring task: playbook + worked examples + checklist.
- Schools of thought to compare and then use: the comparative combination above.
- An unfamiliar topic: the structured primer.
- A product discipline, and no narrower format: the universal template. Product disciplines here are product management, UX, user research, product analytics, and strategy.
- Another discipline they intend to use, and no narrower format: primer + field guide + cheat sheet, using the three stems.
- Real decisions about applying the topic: field guide.
- A quick reference during work: cheat sheet.
- Nuance, trade-offs, or boundary conditions: deep dive.
- The essentials, quickly: crash course.
- A broad map without foundations: overview.
- Step-by-step teaching: tutorial / walkthrough.
- Ways of reasoning: mental models.
- Lookup during work that needs more than a cheat sheet: quick reference guide.

Ask, and help them choose, when the listed situations describe different jobs, or the goal is too thin to pick. A product discipline that is also unfamiliar stays on the universal template. A bare topic, or "help me learn X" with no job, is too thin. Do not write the prompt yet. Offer only the live options. For each one, give the taxonomy name and its "when to use it" line from the table. Recommend one and say why. Include a combination when that is one of the real options. When both a discipline and a recurring task are plausible, point at that split: the first is for understanding a discipline, and the second is for executing a workflow. After they pick, write the prompt. If they tell you to choose, choose.

## Write the prompt

Assemble one prompt in this order:

1. The stem, the universal template, the worked-example body, or a short prompt for a type that has no stem. Overview, crash course, quick reference guide, tutorial / walkthrough, and mental models have no stem. For those, ask for the type by name and use its meaning from the table. Do not present that sentence as a reusable stem.
2. A style sentence of your own, after the copied wording. Ask for a sensible writing style for the chosen format, and focus on clarity and educational value. Fit the format. A cheat sheet stays compact. A primer builds understanding. A field guide stays practical. A playbook stays procedural. A deep dive can go further without becoming a textbook. For any other type, follow its meaning in the table. For a combination, fit each part. Do not rewrite a stem, the universal template, or the writing guidelines to make room for this sentence.
3. Modifier and teaching-style lines that the situation actually calls for. Add each as its own sentence, using the expression or the quoted teaching-style line from [references/modifiers.md](references/modifiers.md). When the topic has contested schools of thought, include `Separate established theory, practitioner conventions, and your own recommendations.`
4. The audience paragraph, when it applies.

For the schools-of-thought combination, follow the worked example. When the topic is Jobs-to-Be-Done, copy the example as written, then add the style sentence, any extra modifier lines, and the audience paragraph. For another topic, write a new opening sentence and learning objectives in the same shape as the example. Keep the seven content requirements. Replace the subject name. Replace "software products and developer tools" only when the user has named a different domain. Copy the writing guidelines unchanged, including "Be information-dense but easy to skim."

For a product discipline with no narrower format, use the universal template with `[topic]` replaced. Do not also paste the field-guide stem. For a discipline outside that product list, use the primer stem, the field-guide stem, and the cheat-sheet stem, in that order, each with the placeholder filled.

Audience: for product management, UX, user research, product analytics, or strategy, append the audience block from [references/modifiers.md](references/modifiers.md) unless they give a different background. If they state a background, keep their facts and use the same shape: what to skip, what to focus on, which analogies help, and which terms to explain. For a topic outside that list, with no background given, omit the persona.

After a choice is made, reply in two parts. First, a few sentences naming the type or combination, why it fits this situation, and whether the job is to understand a discipline or execute a workflow. Then the prompt in one fenced block, with nothing else inside the block.

While helping them choose, stop after the short menu and the recommendation.
