---
layout: relation
title: 'aux'
shortdef: 'auxiliary'
# The filename "aux" is not allowed on Windows, so we redirect instead
# (see https://github.com/UniversalDependencies/docs/issues/20)
redirect_from: "es/dep/aux.html"
---

This document is a placeholder for the language-specific documentation
for `aux`.

An auxiliary of a clause is a non-main verb of the clause, e.g., a modal auxiliary, or a form of "estar", "ser" or "haber" in a periphrastic tense.

Spanish modal auxiliaries include (Butt and Benjamin, 2013):

- poder
- saber
- querer
- soler
- deber
- haber (que, de)


~~~ sdparse
Regan ha muerto . \n Regan has died .
aux(muerto, ha)
~~~
