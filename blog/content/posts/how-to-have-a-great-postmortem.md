---
title: "How to Have a Great Postmortem"
date: 2024-07-28T18:26:56-07:00
---

The goal of a post-mortem is an opportunity for a team (or the broader organization) to learn as much as they can, in a relatively short period of time, about how people normally perceive and perform their work. This is because the people involved were in their normal work when the incident happened. Questions should focus on the ways that the organization prevents this sort of event from happening all the time, not by asking what allowed this singular event to happen.

## Successful Post Mortem

At the end of the post mortem you should ask everyone involved two questions:

1. Did at least one person learn one thing that will affect how they work in the future?
1. Did at least half of the attendees say they would attend another debrief in the future?

If the answer to both questions is **yes** then the post mortem is successful.

While many post mortems will result in remediation steps to take, this isn’t the **goal**. Its merely one way the organization can take action on the fact that it has learned.

## Who should write the Post Mortem?

The author of the post mortem should ideally be someone who

* was not involved in incident mitigation or resolution.
* is trusted by those were
* has sufficient tenure to understand the systems, people, processes, and cultural norms.

### Why?

The people directly involved in mitigating or resolving the incident may lack the objectivity to ask the questions \- particularly of others involved.

## Good Analysis

### Assume Local Rationality

People take actions that make sense to them given their goals, context, and focus at the time. If something did not make sense at the time it would not have been done. This doesn’t mean that people do the right thing all the time. It just means that they did the right thing given their environment, knowledge, goals, and context.

## Common Errors in Analysis

### Counterfactual reasoning

Discussing what never happened is called counterfactual reasoning. As an example: “If Alice had checked the dashboard they would have known that…”

Quotes such as “did not follow” or “would have done” are indications of such.

#### Why is this a problem?

If the action had made sense to the actor at the time it would have happened. The analysis of the incident then becomes an analysis of a hypothetical universe instead of what actually happened.

### Outcome Bias

If the outcome of an action was bad \- it does not follow that the action should not have been taken. In general assume that people made the best possible decision they could have in a given context. Then ask why the context suggested they take an action which didn’t turn out well or why the **environment** allowed for the bad outcome to occur.

#### Why is this a problem?

Complex systems are always a state of near-failure. It is only by understand the broader set of contributing causes can one understand why the failure didn’t occur prior.

### Normative Language

Normative Language is when the reviewer puts their values into the analysis of other people’s performance. Examples of such language are “Alice wrote *poor code*” or “Bob reviewed the code *too fast”*. This applies even when the judgement is positive such as “Chad did a good job catching…”.

#### Why is this a problem?

These norms occur in hindsight and only make sense from the perspective of having witnessed the outcome. It also presupposes that the norm was adhered to at the time of the incident. But this is impossible. If it was, then the incident would not have occurred.

### Mechanistic Reasoning

Mechanistic reasoning is the idea that the system is basically safe and well functioning but a singular event caused the incident.

Indications of mechanistic reasoning include language such as “the X component failed” or lists of systems that *didn’t fail* (“the CI system caught the error and deploy system did not deploy it”)

#### Why is this a problem?

Mechanistic reasoning presupposes that the singular root cause and that any failed component can be identified and fixed. Instead failure occurs when correct components interact in unexpected ways. Note that “unexpected” is always relative to the actors involved at the time they took action.

# First Steps to improving postmortem culture

If you're in an environment with an "old school" but fairly tech-industry standard approach to postmortems.

* 5 whys

* focus on 'action items' so that 'this never happens again'

* operational/executive tracking and review of the AIs

What would be one step you could take that would improve things without a radical reform?

Try these:

* Add one question to the post mortem template. *Why didn’t our ordinary processes and prioritisation already surface the action items we discovered?*
* Record who constructed each of the five whys questions as well as who gave answers, noted alongside each.
* Give the writeup to someone unfamiliar with the case to read, and ask them what they understand to be difficult for the people who responded to the incident, and what specifically made it difficult? If they don’t know because it’s not captured… the analysis isn’t done yet.

# Resources

1. John Allspaw, Morgan Evans, & Daniel Schauenberg. (2016).
 *Debriefing Facilitation Guide*. Etsy. [https://extfiles.etsy.com/DebriefingFacilitationGuide.pdf](https://extfiles.etsy.com/DebriefingFacilitationGuide.pdf)
1. John Allspaw. (2021, January 11). Understanding Incidents: Three Analytical Traps \[Adaptive Capacity Labs\].
1. Richard I. Cook. (2008). A brief look at the New Look in complex system failure, error, safety, and resilience Revision W.
