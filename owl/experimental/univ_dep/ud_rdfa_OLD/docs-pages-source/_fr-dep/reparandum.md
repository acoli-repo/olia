---
layout: relation
title: 'reparandum'
shortdef: 'overridden disfluency'
---

The `reparandum` relation is used to indicate disfluencies overridden in a speech
repair. The disfluency is the dependent of the repair.

Currently this construction is not annotated in the French treebank (but there are probably no attested uses).

~~~ sdparse
Va à-2 droi- à-4 gauche . \n Go to the righ- to the left .
nmod(Va, gauche)
reparandum(gauche, droi-)
case(droi-, à-2)
~~~
