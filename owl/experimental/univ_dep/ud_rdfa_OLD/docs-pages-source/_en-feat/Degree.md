---
layout: feature
title: 'Degree'
shortdef: 'degree of comparison'
---

In English,  `Degree` is a feature of (adjectives)[en-pos/ADJ] and some (adverbs)[en-pos/ADV]. 

### `Pos`: positive, first degree

This is the base form that merely states a quality of something,
without comparing it to qualities of others. Note that although this
degree is traditionally called "positive", negative properties can be
compared, too. All words with PTB tags `JJ` have this feature.

#### Examples

*  _<b>young</b> woman_

Additionally, the following adverbs with PTB tag `RB` also have this feature:

* _hard, fast, late, long, high, easy, early, far, soon, low, close, well, badly, little_

### `Cmp`: comparative, second degree

The quality of one object is compared to the same quality of another
object. All words with PTB tags `JJR` are marked with this
feature.

#### Examples

* _The man is <b>younger</b> than me._

The following adverbs with PTB tag `RBR` also have this feature:

* _harder, faster, later, longer, higher, easier, earlier, further, farther, sooner, lower, closer, better, worse, less, quicker, slower_

### `Sup`: superlative, third degree

The quality of one object is compared to the same quality of all other
objects within a set. All words with PTB tags `JJS` are marked with this
feature.

#### Examples

* _This is the <b>youngest</b> woman in our team._

The following adverbs with PTB tag `RBS` also have this feature:

* _hardest, fastest, latest, longest, highest, easiest, earliest, furthest, farthest, soonest, lowest, closest, best, worst, least, quickest, slowest_


Note that most adverbs in English don't have a `Degree` feature because their sencond and third degree are constructed periphrastically using the adverbs _more_ and _most_, e.g. _more quietly_, _most seriously_. 
