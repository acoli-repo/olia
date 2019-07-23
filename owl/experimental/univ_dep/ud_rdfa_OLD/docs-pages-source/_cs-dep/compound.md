---
layout: relation
title: 'compound'
shortdef: 'compound'
---

`compound` is one of the relations in UD for compounding.
In Czech it is used only for compound numbers.
The rightmost numeral is the head, the other numerals are attached as its modifiers.

~~~ sdparse
Bude to stát nanejvýš 50 tisíc korun . \n Will it cost at-most 50 thousand crowns .
nummod:gov(korun, tisíc)
nummod:gov(crowns, thousand)
compound(tisíc, 50-5)
compound(thousand, 50-14)
~~~

~~~ sdparse
Bude to stát padesát pět tisíc korun . \n Will it cost fifty five thousand crowns .
nummod:gov(korun, tisíc)
nummod:gov(crowns, thousand)
compound(tisíc, padesát)
compound(thousand, fifty)
compound(tisíc, pět)
compound(thousand, five)
~~~
