---
title: "Thoughts on How Code Degrades"
date: 2021-08-13T17:48:55-07:00
draft: false
---

When a piece of code is first written it easy to maintain quality.
However, several things contribute to loss of quality.

New and unexpected requirements may happen. This may violate the initial layering rules.
New people may join. Newer people know less and then make more local changes.
This results in global invariants becoming local invariants.

Chesterton's fence is a curse here and one of the reasons that documentation is so important.

Changes tend to be made higher and more locally in the stack. For example it is easier to make changes to the UI or frontend layer.
These changes have lower risk since they are less shared. Shared components are avoided to be touched.
People avoid fixing or touching shared components since people may depend on behavior. This creates a vicious cycle
where these behaviors are untested and untouched.

Focussed refactoring doesn't help unless thought is put into understanding and maintaining the layering and invariants.
Merely rewriting code doesn't help.

I've found it useful to include "things I know were bad decisions" in documentation. In addition to this being areas of improvement
it brings an oppertunity for others to understanding the layering.

Having strong package boundaries with clear APIs is helpful. This helps enforce and document the layering decisions.
