---
layout: relation
title: 'mark'
shortdef: 'marker'
---

In Irish the `mark` label is used for infinitive markers and for subordinate conjunctions. 
Note that subordinate conjunctions are attached to the head of the complement clause (not the matrix clause as is the case in the Irish Dependency Treebank).

### Examples

#### subordinate conjunctions

_<b>Cé</b> go ndeachaigh sé thar fóir leis an tuairim sin , is cinnte go raibh mórán scríobhneoirí Béarla den bharúil chéanna_ `<b>Although</b> he went overboard with that opinion , it was certain that many English writers had the same opinion'

~~~ sdparse
Cé go ndeachaigh sé thar fóir leis an tuairim sin , is cinnte go raibh mórán scríobhneoirí Béarla den bharúil chéanna \n Although that went he over board with the opinion DEM , is certain that was many writers English of_the opinion same
mark(ndeachaigh, Cé)
advcl(is, ndeachaigh)
~~~

_Ba ar Mháirín a smaoiníodh sé <b>nuair</b> a d' fheicfeadh sé iad_ `He would think of Máirín <b>when</b> he would see them'

~~~ sdparse
Ba ar Mháirín a smaoiníodh sé nuair a d' fheicfeadh sé iad \n Was on Máirín that would_think he when [] [] would_see he them
mark(fheicfeadh, nuair)
~~~

#### infinitive marker

_Caithfidh mé sin <b>a</b> fhoghlaim_ `I will have <b>to</b> learn that'

~~~ sdparse
Caithfidh mé sin a fhoghlaim \n will_have I that to learn
mark(fhoghlaim, a)
~~~ 
