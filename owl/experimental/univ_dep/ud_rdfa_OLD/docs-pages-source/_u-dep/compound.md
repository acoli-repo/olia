---
layout: relation
title: 'compound'
shortdef: 'compound'
---

`compound` is one of the three relations in UD for compounding.

It is used for 

- any kind of X<sup>0</sup> compounding: noun compounds (e.g., *phone book*), but also verb and
adjective compounds that are more common in other languages (such as
Persian or Japanese light verb constructions). It is also used for the "phrasal verb" construction of European languages (e.g., *throw up*), with the adposition as the `compound` dependent of the verb.

~~~ sdparse
Phone book
compound(book, Phone)
~~~


- for numbers

~~~ sdparse
I have four thousand sheep
compound(thousand, four)
~~~

~~~ sdparse
I lost $ 3.2 billion
compound(billion, 3.2)
~~~


- for particles of phrasal verbs:

~~~ sdparse
put up
compound(put, up)
~~~

The two other compounding relations are:

- [mwe]() for fixed grammaticized expressions with function words
- [name]() for proper nouns constituted of multiple nominal elements
