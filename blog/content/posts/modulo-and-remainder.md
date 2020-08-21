---
title: "Modulo and Remainder"
date: 2020-08-20T17:56:28-07:00
---

This is a quick test blog post to see if I could make mathjax and such work for me.
It is not supposed to be complete right now.

# Some Definitions

**even**
: a number is **even** there is no remainder when dividied by 2

  equivalently `$=\{ 2k: k \in \mathbb{Z} \}$`

**odd**
: a number is **odd** if it is not even

  equivelently `$=\{ 2k+1: k \in \mathbb{Z} \}$`

This leads to the obvious question of what is a **remainder**?

**remainder**
: The **remainder** is, informally, the amount "left over" after dividing. 

**modulo**
: Modulus is defined as. 

Python 3:
```
>>> -3 % 2
1
```

Scala:
```scala
scala> -3 % 2
val res0: Int = -1
```

Javascript (via node)
```
> -3 % 2
-1
```

In short, python uses the modulus operator while Javascript and Scala use the remainder operator
