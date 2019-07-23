---
layout: relation
title:  'parataxis'
shortdef : 'parataxis'
---

When two sentences share no relation but are written together in a single 
sentence (delimited by comma, dash, semicolon or other punctuation) then we use the relation parataxis. 
As with explicit coordinations, the last element is the governor. 
Also parenthetical and interjected clauses can receive the `parataxis` dependency. 

~~~ sdparse
Азамат пен Айгүл ойнағанды жақсы көреді , олар әрдайым бақшада бірге ойнайды . \n Azamat and Aygül playing XX see , they always garden-in together play .
parataxis(ойнайды-12, көреді-6)
~~~
