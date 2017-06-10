---
layout: postag
title: 'DET'
shortdef: 'determiner'
---

### Definition

Determiners are words that modify [nouns](NOUN) or noun phrases and
express the reference of the noun phrase in context. That is, a
determiner may indicate whether the noun is referring to a definite or
indefinite element of a class, to a closer or more distant element, to
an element belonging to a specified person or thing, to a particular
number or quantity, etc.

Note that the `DET` tag includes (pronominal) _quantifiers_ (words
like _many, few, several),_ which are included among determiners in
some languages but may belong to numerals in others. However,
_cardinal numerals_ in the narrow sense _(one, five, hundred)_ are not
tagged `DET` even though some authors would include them in
quantifiers. Cardinal numbers have their own tag [NUM]().

Also note that the notion of determiners is unknown in grammars of
some languages (e.g. Czech); words equivalent to English determiners
may be traditionally classified as [pronouns](PRON) and/or
[numerals](NUM) in these languages. In order to annotate the same
thing the same way across languages, the words satisfying our definition
of determiners should be tagged `DET` in these languages as well.

For instance, [en] _this_ is either pronoun _(I saw <b>this</b>
yesterday.)_ or determiner _(I saw <b>this</b> car yesterday.)_ Its
Czech translation, [cs] _tohle_, is traditionally called pronoun in
Czech grammar, regardless of context. To make the annotation parallel
across languages, it should be now tagged [PRON]() in _<b>Tohle</b>
jsem viděl včera._ and `DET` in _<b>Tohle</b> auto jsem viděl včera._

Usually a nominal allows only one `DET` modifier, but there are occasional cases of _addeterminers_, which appear outside the usual determiner, such as [en] _all_ in _<b>all</b> the children survived_.  In such cases, both _all_ and _the_ are given the POS `DET`.

### Examples

- articles (a closed class indicating definiteness, specificity or givenness): _a, an, the_
- possessive determiners: _my, your, his, her, its, our, their_
- demonstrative determiners: _this_ as in _I saw <b>this</b> car yesterday._
- interrogative determiners: _which_ as in _"<b>Which</b> car do you like?"_
- relative determiners: _which_ as in _"I wonder <b>which</b> car you like."_
- quantity/quantifier determiners: indefinite _any_, universal: _all_, and negative _no_ as in _"We have <b>no</b> cars available."_

### References

- [Loos, Eugene E., et al. 2003. Glossary of linguistic terms: What is a determiner?](http://www-01.sil.org/linguistics/GlossaryOfLinguisticTerms/WhatIsADeterminer.htm)
- [Wikipedia](http://en.wikipedia.org/wiki/Determiner)
