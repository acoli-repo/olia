---
layout: relation
title:  'nmod:poss'
shortdef : 'possessive nominal modifier'
---

`nmod:poss` is used for a nominal modifier which occurs before its head in the specifier position used for _'s_ possessives. It is marked with the `case` _'s_ or one of its variant forms. This relation isn't used for other pre-head modifiers such as noun compounds or quotative phrases.

~~~ sdparse
Marie 's book
nmod:poss(book, Marie)
case(Marie, 's)
~~~
