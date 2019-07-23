---
layout: relation
title: 'det'
shortdef: 'determiner'
---

The relation determiner (`det`) holds between a nominal head and its
[determiner](cs-pos/DET).
This relation is used for pronominal adjectival modifiers of noun phrases; the `det` modifier has the POS tag [cs-pos/DET]() and vice versa.
Non-pronominal adjectives are tagged [cs-pos/ADJ]() and the relation is labeled [amod]().

Pronominal quantifiers are tagged `DET` but their relation to their head is a subtype of the `det` relation:
either [cs-dep/det:numgov]() or [cs-dep/det:nummod]().

~~~ sdparse
Ten člověk už je tady . \n The man already is here .
det(člověk, Ten)
det(man, The)
~~~

~~~ sdparse
Která kniha se vám líbí nejvíc ? \n Which book is to-you nice the-most ?
det(kniha, Která)
det(book, Which)
~~~
