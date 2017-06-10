---
layout: relation
title: 'punct'
shortdef: 'punctuation'
---

This is used for any piece of punctuation in a clause, regardless of its function. The punctuation mark is attached to the head of the phrase or clause to which it belongs unless this introduces a non-projective dependency. More discussion on punctuation can be found on the universal dependency page ([u-dep/punct]()).

~~~ sdparse
Tous les bénéfices sont hors-taxe ! \n All profits are tax-free !
punct(hors-taxe, !)
~~~

~~~ sdparse
S' il pleut , on sera mouillé . \n If it rains , we will get wet .
punct(pleut, ,)
punct(mouillé, .)
~~~
