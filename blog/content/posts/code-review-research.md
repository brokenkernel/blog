---
title: "Code Review Research"
date: 2024-04-23T20:30:58-07:00
---

Code review and CI/CD are one the few practices with actual empirical support.

# Meta Comment

This post was written in reply to a specific post discussing removing code reviews entirely.

# Some Additional Background

Some of this reply is based on my own reading in the fields of cognitive science, resilience engineering, and safety engineering. It also presupposes you already have some trust in the general idea of Empirical Software Engineering.

If you're not familiar with the topic, the single best introduction I could give is a talk by Hillel Wayne entitled <cite>Intro to Empirical Software Engineering: What We Know We Don't Know</cite>. [^1] I can't normally stand watching talks but this one stands out amongst the crowd. It also directly addresses the point (around 27 minutes in). Unfortunately, as the talk and book points out, much of the research is not great or not existent. Studies are often, though not always, done on students or newer programmers (samples of convenience). Nonetheless there is some consensus on specific areas.

# Goals of Code Review

The vast majority of code review research has to do with finding and preventing defects. There is scant research let alone evidence on other aspects such as security, cross-team pollination, high level architectural decisions, etc.

# Code Review Has Impact

**Defect Finding** After _getting enough sleep_, code review is one of the best tools we have to find defects. Code Review finds between 60% to 80% of bugs in the code. Only 1 in 4 comments is about functionality. The other 3 are about quality. [^1] (citation here is to the video. I've read similar studies). None of TDD, pairing, or formal proofs has as much evidence as code review.

**Self Reviews** Self-check reviews had half the defect density of nonchecked reviews, indicating that people who double-check their work found half of the problems by themselves. [^3]<sup>pp18</sup>

**Subjective Experience** Developers generally find it valuable. The review quality is mainly associated with the thoroughness of the feedback, the reviewer’s familiarity with the code, and the perceived quality of the code itself. Developers often struggle with managing their personal priorities, maintaining their technical skill set, and mitigating context switching. [^6]

**False positives**. Misunderstandings by the reviewer are between 15 to 30%  [^7][^8].  On the other hand, fixing such a misunderstanding is perhaps worth it?

# What Affects Code Review?

**Cognitive Load** For small changes a guided checklist and higher cognitive load were more helpful, for large changes, the checklist proved to be more efficient and to lower cognitive load, while the guided checklist led to lower effectiveness. [^4] This is probably because the small code review is associated with actually understanding the code rather than mechanical checks.  For larger changes it was to avoid missing things as you go through the diff Ordering Matters. Code listed first is likely to have more careful review done. Defects in later files are less likely to be found. [^5]

If I were designing from scratch I might order files to review starting from "most changed" or "most modified file churn" or something similar instead of alphabetical.  At least, I would point out more clearly the files more likely to have bugs.

**Time** The biggest killer to code review is time. There is a linear relationship between how much time you spend reviewing code and the ability to find defects for the first hour or so. [^3]<sup>pp770</sup> After this there is a sharp dropoff. This is likely because of focus fatigue.

**Density** Similarly density matters. Small diffs demonstrate a wide variety of defect sizes. Large diffs (more than about 400 LOC) demonstrate a small range of small numbers. In short, the reviewers don't do a good job.[^3]<sup>pp773</sup>

# Impact On Defects

**Organisational Structure** One of the few metrics we have that reliability identifies defects in code is Organizational Structure.  In particular the more people that touch specific binaries (both now and across time), the further apart those people are, and so on, the more likely defects are. [^2] I mention this because I mostly think of code review in larger organisations with modern review tooling. Doing the same at a tiny startup with many fewer people touching the code (and with much more shared domain knowledge) may have a different impact.

# References

[^1]: Hillel Wayne. (2019, August 22). Intro to Empirical Software Engineering: What We Know We Don’t Know. GOTO 2019, Chicago. https://www.youtube.com/watch?v=WELBnE33dpY

[^2]: Nagappan, N., Murphy, B., Basili, V., & Nagappan, N. (2008). The Influence of Organizational Structure On Software Quality: An Empirical Case Study (MSR-TR-2008-11; p. 11). Association for Computing Machinery, Inc. https://www.microsoft.com/en-us/research/publication/the-influence-of-organizational-structure-on-software-quality-an-empirical-case-study/

[^3]: Jason Cohen. (2011). Chapter 18: Modern Code Review. In Andy Oram & Greg Wilson (Eds.), Making software: what really works, and why we believe it: Theory in practice (1st ed). O’Reilly.

[^4]: Gonçalves, P. W., Fregnan, E., Baum, T., Schneider, K., & Bacchelli, A. (2022). Do explicit review strategies improve code review performance? Towards understanding the role of cognitive load. Empirical Software Engineering, 27(4), 99. https://doi.org/10.1007/s10664-022-10123-8

[^5]: Fregnan, E., Braz, L., D’Ambros, M., Çalikli, G., & Bacchelli, A. (2022). First Come First Served: The Impact of File Position on Code Review. Proceedings of the 30th ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering, 483–494. https://doi.org/10.1145/3540250.3549177

[^6]: Kononenko, O., Baysal, O., & Godfrey, M. W. (2016). Code review quality: how developers see it. Proceedings of the 38th International Conference on Software Engineering, 1028–1038. https://doi.org/10.1145/2884781.2884840

[^7]: Votta, L. G. (1993). Does every inspection need a meeting? ACM SIGSOFT Software Engineering Notes, 18(5), 107–114. https://doi.org/10.1145/167049.167070

[^8]: Conradi, R., Mohagheghi, P., Arif, T., Hegde, L. C., Bunde, G. A., & Pedersen, A. (2003). Object-Oriented Reading Techniques for Inspection of UML Models – An Industrial Experiment. In L. Cardelli (Ed.), ECOOP 2003 – Object-Oriented Programming: Lecture Notes in Computer Science (Vol. 2743, pp. 483–500). Springer Berlin Heidelberg. https://doi.org/10.1007/978-3-540-45070-2_21
