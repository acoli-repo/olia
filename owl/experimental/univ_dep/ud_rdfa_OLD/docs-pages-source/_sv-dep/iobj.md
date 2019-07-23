---
layout: relation
title: 'iobj'
shortdef: 'indirect object'
---

An indirect object is a nominal which is the second object of the verb, often corresponding to a dative object.

~~~ sdparse
Han skickar mig ett brev . \n He sends me a letter .
iobj(skickar, mig)
~~~

In Swedish, the indirect object can never be constructed with a preposition. In that case, the _nmod_ relation is used even if the meaning is very similar to that of an indirect object.

~~~ sdparse
Han skickar ett brev till mig . \n He sends a letter to me .
nmod(skickar, mig)
case(mig, till)
~~~
