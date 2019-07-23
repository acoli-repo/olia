---
layout: relation
title:  'vocative'
shortdef : 'vocative modifier'
---

The dependency type `vocative` is used for *vocatives*, that is,
expressions where someone is being addressed. The governor of the
dependency is the main predicate of the clause where the addressing
occurs.

<!-- fname:voc.pdf -->
~~~ sdparse
Жоқ , Айгүл , айта алмаймын . \n No , Aygül , say can-not-I . 
vocative(айта-5, Айгүл-3)
discourse(айта-5, Жоқ-1)
aux(айта-5, алмаймын-6)
~~~

