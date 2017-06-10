---
layout: relation
title:  'compound:nn'
shortdef : 'noun compound modifier'
---

The dependency type `compound:nn`, which stands for *noun compound
modifier* has two basic uses in the Finnish UD scheme.

First, In Finnish, compounds are generally written as a single word,
but for instance some compounds involving foreign words or proper
names are written separately using a dash. These are annotated using
`compound:nn`.

<!-- fname:nn_foreign.pdf -->
~~~ sdparse
Da Vinci -merkkinen luomiväri \n Da Vinci -make eyeshadow
name(Vinci-2, Da-1)
compound:nn(-merkkinen-3, Vinci-2)
amod(luomiväri-4, -merkkinen-3)
~~~

The second use of the type `compound:nn` is to mark *appellation
modifiers*, which are modifying, non-inflecting noun phrases that
generally express profession, rank, position, assignment or other such
classifiable property (see ISK
[§1062](http://scripta.kotus.fi/visk/sisallys.php?p=1062)). The
phenomenon is closely related to that of *apposition*, and the
distinction between the two is described in 
[Appositions and appellation modifiers](/docs/fi/overview/specific-syntax.html#appositions-and-appellation-modifiers).

<!-- fname:nn_appellation.pdf -->
~~~ sdparse
Professori Matti Tamminen pitää puheen . \n Professor Matti Tamminen gives a_speech .
compound:nn(Tamminen-3, Professori-1)
name(Tamminen-3, Matti-2)
nsubj(pitää-4, Tamminen-3)
dobj(pitää-4, puheen-5)
punct(pitää-4, .-6)
~~~

In written Finnish, erroneously writing compounds as two words is a
common mistake (e.g. *ruoka pöytä*). While these cases were annotated
as `nn` in the [TDT corpus](http://bionlp.utu.fi/fintreebank.html), in
UD Finnish [goeswith]() is used instead.
