---
layout: relation
title: 'conj'
shortdef: 'conjunct'
---

A conjunct is the relation between two elements connected by a coordinating conjunction, such as and, or, etc. We treat conjunctions asymmetrically: the head of the relation is the first conjunct and all the other conjuncts depend on it via the conj relation.

~~~ sdparse
Ion și Maria au sosit . \n John and Mary have arrived .
conj(Ion, Maria)
~~~

Coordinate clauses are treated the same way as coordination of other constituent types:

~~~ sdparse
Ion a sosit , dar Maria întârzie . \n John has arrived , but Mary is_late .
conj(sosit, întârzie)
~~~
