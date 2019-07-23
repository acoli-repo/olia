---
layout: relation
title: 'det:nummod'
shortdef: 'pronominal quantifier agreeing in case with the noun'
---

Pronominal quantifiers are labeled `det:nummod` or [det:numgov]() instead of [det]()
because they normally do not agree with the quantified noun in case
(unlike non-quantifying determiners).
They do agree only if the whole phrase (quantifier + noun) fills a role where
genitive, dative, locative or instrumental noun phrases are expected.
In these situations they are labeled `det:nummod`.

~~~ sdparse
Nepamatuji si , s kolika muži jsem hrál karty . \n I-do-not-remember myself , with how-many men I-have played cards .
ccomp(Nepamatuji, hrál)
compound:reflex(Nepamatuji, si)
punct(hrál, ,-3)
aux(hrál, jsem)
dobj(hrál, karty)
iobj(hrál, muži)
case(muži, s)
det:nummod(muži, kolika)
punct(Nepamatuji, .-10)
ccomp(I-do-not-remember, played)
compound:reflex(I-do-not-remember, myself)
punct(played, ,-14)
aux(played, I-have)
dobj(played, cards)
iobj(played, men)
case(men, with)
det:nummod(men, how-many)
punct(I-do-not-remember, .-21)
~~~

See [nummod]() for a broader discussion of the various situations with quantifiers.
