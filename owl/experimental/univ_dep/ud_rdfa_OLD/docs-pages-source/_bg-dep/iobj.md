---
layout: relation
title: 'iobj'
shortdef: 'indirect object'
---

This document is a placeholder for the language-specific documentation
for `iobj`.

The indirect object of a verb is any nominal phrase that is a core
argument of the verb but is not its subject or [direct object](dobj).
A prototypical example is the recipient of ditransitive verbs of
speaking:

~~~ sdparse
Говореше на всички като началник . \n Spoke-he to everybody like a-boss .
iobj(Говореше, всички)
iobj(Spoke-he, everybody)
~~~

The other examples include all arguments of a head that are not direct objects or subjects, and
are PPs introduced by various prepositions. These cases are handled in the valency dictionary:

~~~ sdparse
Ще те питам за нещо . \n Will you ask-I for something .
iobj(питам, нещо)
iobj(ask-I, something)
~~~
