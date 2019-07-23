---
layout: relation
title: 'ccomp'
shortdef: 'clausal complement'
---

`ccomp` marks clausal dependents of verbs that function like a complement of that verb. The complement clause has its own internal subject.

~~~ sdparse
Jeder hier glaubt , daß er eine Chance hat . \n Everyone here thinks that he has a chance .
ccomp(glaubt, hat)
nsubj(hat, er)
~~~

~~~ sdparse
Es heißt , die Arbeiter würden streiken . \n People say the workers are on strike .
ccomp(heißt, streiken)
~~~

~~~ sdparse
Wann kann ich mir anschauen , was du gemacht hast ? \n When will I see what you have done .
ccomp(anschauen, gemacht)
~~~
