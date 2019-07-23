---
layout: feature
title: 'PronType'
shortdef: 'pronominal type'
---

PronType

This feature typically applies to [pronouns](u-pos/PRON),
[determiners](u-pos/DET), pronominal [numerals](u-pos/NUM)
(quantifiers) and pronominal [adverbs](u-pos/ADV).


### `Prs`: personal or possessive personal pronoun or determiner

See also the [Poss]() feature that distinguishes normal personal
pronouns from possessives. Note that `Prs` also includes reflexive
personal/possessive pronouns (e.g. [cs] _se / svůj;_ see the
[Reflex]() feature).

#### Examples

- аз, ти, той, тя, то, ние, вие, те, себе си, мой, твой, негов, неин, негов, наш, ваш, техен, свой / _az, ti, toy, tya, to, nie, vie, te, sebe si, moy, tvoy, negov, nein, negov, nash, vash, tehen, svoy_ "I, you, he, she, it, we, they, oneself, my, your, his, her, its, our, their, mine, yours, hers, ours, theirs, oneself's"

### `Rcp`: reciprocal pronoun

#### Examples

- един друг / _edin drug_ "one another"
- един на друг / _edin na drug_ "each other"


### `Int`: interrogative pronoun, determiner, numeral or adverb

Note that possessive interrogative determiners (_whose_) can be
distinguished by the [Poss]() feature.

#### Examples: 

* [bg/en] кой /_koy_ "who", какво / _kakvo_ "what", кой / _koy_ "which", чий / _chiy_ "whose", колко / _kolko_ "how many, how much", къде / _kade_ "where", кога / _koga_ "when",
  как / _kak_ "how", защо / _zashto_ "why"

### `Rel`: relative pronoun, determiner, numeral or adverb

In Bulgarian this class is distinct from the class of interrogatives.

#### Examples: 

* [bg] който / _koyto_ "which", "that" (relative but not interrogative
  pronouns); чийто / _chiyto_ "whose" (possessive relative pronoun)

### `Dem`: demonstrative pronoun, determiner, numeral or adverb

BulTreeBank tagset does not differenciate between pronouns for narness/distance,
although in Bulgarian there is such distinction.


#### Examples

* [bg/en] този / _този_ "this", онзи / _onzi_ "that", такъв / _takav_ "such",
тук / _tuk_ "here", там / _tam_ "there", etc.

### `Tot`: total (collective) pronoun, determiner or adverb

#### Examples

* [bg/en] всеки / _vseki_ "every, everybody, everyone, each", всичко / _vsichko_
  "everything" "all", etc.

### `Neg`: negative pronoun, determiner or adverb

Examples: 

* [bg/en] никой / _nikoy_ "nobody", нищо / _nishto_ "nothing", никакъв / _nikakav_ "no", ничий _nichiy_ "no
  one's" (possessive negative pronoun), etc.

### `Ind`: indefinite pronoun, determiner, numeral or adverb


#### Examples

* [bg/en] някой / _nyakoy_ "somebody", нещо / _neshto_ "something", някакъв / _nyakakav_ "some", нечий / _nechiy_ someone's_ (possessive indefinite pronoun), etc.
* [bg/en] който и да е / _koyto i da e_ "whoever, anybody", каквото и да е / _kakvoto i da e_ "whatever, anything", etc.
* [bg/en] еди-кой си / _edi-koy si_ "somebody specific for the speaker, but not for the hearer"

