---
layout: feature
title: 'Case'
shortdef: 'case'
---

`Case` is usually an inflectional feature of [nouns](u-pos/NOUN) and,
depending on language, other parts of speech ([pronouns](u-pos/PRON),
[adjectives](u-pos/ADJ), [determiners](u-pos/DET), [numerals](u-pos/NUM),
[verbs](u-pos/VERB)) that mark agreement with nouns. In some tagsets
it is also valency feature of [adpositions](u-pos/ADP) (saying that
the adposition requires its argument to be in that case).

Case helps specify the role of the noun phrase in the sentence,
especially in free-word-order languages. For example, the nominative
and accusative cases often distinguish subject and object of the verb,
while in fixed-word-order languages these functions would be
distinguished merely by the positions of the nouns in the sentence.

Here on the level of morphosyntactic features we are dealing with case
expressed morphologically, i.e. by bound morphemes (affixes). Note
that on a higher level case can be understood more broadly as _the
role,_ and it can be also expressed by adding an adposition to the
noun. What is expressed by affixes in one language can be expressed
using adpositions in another language. Cf. the [u-dep/case]()
dependency label.

#### Examples

* [cs] nominative _matka_ "mother", genitive _matky_, dative _matce_,
  accusative _matku_, vocative _matko_, locative _matce_,
   instrumental _matkou_
* [de] nominative _der Mann_ "the man", genitive _des Mannes_,
  dative _dem Mann_, accusative _den Mann_
* [en] nominative/direct case _he, she_,
  accusative/oblique case _him, her._

The descriptions of the individual case values below include semantic
hints about the prototypical meaning of the case. Bear in mind that
quite often a case will be used for a meaning that is totally
unrelated to the meaning mentioned here.  Valency of verbs,
adpositions and other words will determine that the noun phrase must
be in a particular grammatical case to fill a particular valency slot
(semantic role). It is much the same as trying to explain the meaning
of prepositions: most people would agree that the central meaning of
English _in_ is location in space or time but there are phrases where
the meaning is less locational: _In God we trust._ _Say it in
English._

Note that Indian corpora based on the so-called Paninian model use a
related feature called _vibhakti_.  It is a merger of the Case feature
described here and of various postpositions. Values of the feature are
language-dependent because they are copies of the relevant morphemes
(either bound morphemes or postpositions). Vibhakti can be mapped on
the Case values described here if we know 1. which source values are
bound morphemes (postpositions are separate nodes for us) and 2. what
is their meaning. For instance, the genitive case (`Gen`) in Bengali
is marked using the suffix _-ra_ (-র), i.e. vib=era.  In Hindi, the
suffix has been split off the noun and it is now written as a separate
word &ndash; the postposition _kā/kī/ke_ (का/की/के).  Even if the
postpositional phrase can be understood as a genitive noun phrase, the
noun is not in genitive. Instead, the postposition requires that it
takes one of three case forms that are marked directly on the noun:
the oblique case (`Acc`).

### `Nom`: nominative / direct

The base form of the noun, typically used as citation form (lemma).
In many languages this is the word form used for subjects of clauses.
If the language has only two cases, which are called "direct" and
"oblique", the direct case will be marked Nom.

### `Acc`: accusative / oblique

Perhaps the second most widely spread morphological case. In many
languages this is the word form used for direct objects of verbs.  If
the language has only two cases, which are called "direct" and
"oblique", the oblique case will be marked Acc.

### `Abs`: absolutive

Some languages (e.g. Basque) do not use nominative-accusative to
distinguish subjects and objects.  Instead, they use the contrast of
absolutive-ergative.

The absolutive case marks subject of intransitive verb and direct
object of transitive verb.

### `Erg`: ergative

Some languages (e.g. Basque) do not use nominative-accusative to
distinguish subjects and objects.  Instead, they use the contrast of
absolutive-ergative.

The ergative case marks subject of transitive verb.

### `Dat`: dative

In many languages this is the word form used for indirect objects of verbs.

#### Examples

* [de] _Ich gebe <b>meinem Bruder</b> ein Geschenk._ "I give my
  brother a present." (_meinem Bruder_ "my brother" is dative and _ein
  Geschenk_ "a present" is accusative.)

### `Gen`: genitive

Prototypical meaning of genitive is that the noun phrase somehow
belongs to its governor; it would often be translated by the English
preposition _of_.  English has the "saxon genitive" formed by the
suffix _'s_; but we will normally not need the feature in English
because the suffix gets separated from the noun during tokenization.

Note that despite considerable semantic overlap, the genitive case is
not the same as the feature of possessivity ([Poss]()). Possessivity
is a lexical feature, i.e. it applies to lemma and its whole
paradigm. Genitive is a feature of just a subset of word forms of the
lemma. Semantics of possessivity is much more clearly defined while
the genitive (as many other cases) may be required in situations that
have nothing to do with possessing. For example, [cs] _bez
prezidentovy dcery_ "without the president's daughter" is a
prepositional phrase containing the preposition _bez_ "without", the
possessive adjective _prezidentovy_ "president's" and the noun _dcery_
"daughter".  The possessive adjective is derived from the noun
_prezident_ but it is really an adjective (with separate lemma and
paradigm), not just a form of the noun. In addition, both the
adjective and the noun are in their genitive forms (the nominative
would be _prezidentova dcera_).  There is nothing possessive about
this particular occurrence of the genitive. It is there because the
preposition _bez_ always requires its argument to be in genitive.

#### Examples

* [cs] _Praha je hlavní město <b>České republiky</b>._ "Prague is the
  capital <b>of the Czech Republic</b>."

Note that in Basque, Gen should be used for possessive genitive (as
opposed to locative genitive): _<b>diktadorearen</b> erregimena_
"dictator's regime"; _diktadore_ "dictator".

### `Voc`: vocative

The vocative case is a special form of noun used to address
someone. Thus it predominantly appears with animate nouns (see the
feature of [Animacy]()). Nevertheless this is not a grammatical
restriction and inanimate things can be addressed as well.

#### Examples

* [cs] _Co myslíš, <b>Filip</b><b>e</b>?_ "What do you think,
  <b>Filip</b>?"

### `Loc`: locative

The locative case often expresses location in space or time, which
gave it its name. As elsewhere, non-locational meanings also exist and
they are not rare. Uralic languages have a complex set of fine-grained
locational and directional cases (see below) instead of the
locative. Even in languages that have locative, some location roles
may be expressed using other cases (e.g. because those cases are
required by a preposition).

In Slavic languages this is the only case that is used exclusively in
combination with prepositions (but such a restriction may not hold in
other languages that have locative).

#### Examples

* [cs] _V <b>červenci</b> jsem byl ve <b>Švédsku</b>._ "In <b>July</b>
  I was in <b>Sweden</b>."
* [cs] _Mluvili jsme tam o <b>morfologii</b>._ "We talked there about
  <b>morphology</b>." (Non-locational non-temporal example)

### `Ins`: instrumental / instructive

The role from which the name of the instrumental case is derived is
that the noun is used as instrument to do something (as in [cs] _psát
<b>perem</b>_ "to write <b>using a pen</b>").  Many other meanings are
possible, e.g. in Czech the instrumental is required by the
preposition _s_ "with" and thus it includes the meaning expressed in
other languages by the comitative case.

In Czech the instrumental is also used for the agent-object in passive
constructions (cf. the English preposition _by_).

#### Examples

* [cs] _Tento zákon byl schválen <b>vládou</b>._ "This bill has been
  approved <b>by the government</b>." (Passive example)

A semantically similar case called instructive is used rarely in
Finnish to express "with (the aid of)". It can be applied to
infinitives that behave much like nouns in Finnish.  We propose one
label for both instrumental and instructive (instrumental is not
defined in Finnish).

#### Examples

* [fi] _lähteä_ "to leave"; _2003 <b>lähtien</b>_ "since 2003" (second
  infinitive in the instructive case)
* [fi] _yllättää_ "to surprise"; _sekaantui <b>yllättäen</b>
  valtataisteluun_ lit. _was-involved-in by-surprise.Ins
  power-struggle.Ill._

### `Par`: partitive

In Finnish the partitive case expresses indefinite identity and
unfinished actions without result.

#### Examples

* [fi] _kolme <b>taloa</b>_ "three <b>houses</b>"; (the _-a_ suffix of
  _talo_)
* [fi] _rakastan tätä <b>taloa</b>_ "I love this <b>house</b>"
* [fi] _saanko lainata <b>kirjaa</b>?_ "can I borrow the <b>book</b>?"
  (the _-a_ suffix of _kirja_)
* [fi]_lasissa on <b>maitoa</b>_ "there is (some) <b>milk</b> in the
  glass"

Examples comparing partitive with accusative: _ammuin karhun_ "I shot
a bear.Acc" (and I know that it is dead); _ammuin karhua_ "I shot at a
bear.Par" (but I may have missed).

Using accusative instead of partitive may also substitute the missing
future tense: _luen kirjan_ "I will read the book.Acc"; _luen kirjaa_
"I am reading the book.Par".

### `Dis`: distributive

The distributive case conveys that something happened to every member
of a set, one in a time. Or it may express frequency.

#### Examples

* [hu] _<b>fejenként</b>_ "per capita"
* [hu] _<b>esetenként</b>_ "in some cases"
* [hu] _<b>hetenként</b>_ "once per week, weekly"
* [hu] _<b>tízpercenként</b>_ "every ten minutes"

### `Ess`: essive / prolative

The essive case expresses a temporary state, often it corresponds to
English "as a &hellip;" A similar case in Basque is called prolative
and it should be tagged `Ess` too.

#### Examples

* [fi] _lapsi_ "child"; _<b>lapsena</b>_ "as a child / when he/she was child"
* [et] _laps_ "child"; _<b>lapsena</b>_ "as a child"
* [eu] _erreformista_ "reformer"; _<b>erreformistatzat</b>_ "as a reformer"

### `Tra`: translative / factive

The translative case expresses a change of state ("it becomes X", "it
changes to X").  Also used for the phrase "in language X". In the
Szeged Treebank, this case is called factive.

#### Examples

* [fi] _pitkä_ "long"; _kasvoi <b>pitkäksi</b>_ "grew long"
* [fi] _englanti_ "English language"; _<b>englanniksi</b>_ "in/into English"
* [fi] _kello kuusi_ "six o'clock"; _kello <b>kuudeksi</b>_ "by six o'clock"
* [et] _kell kuus_ "six o'clock"; _kella <b>kuueks</b>_ "by six o'clock"
* [hu] _Oroszlány halott <b>várossá</b> válhat._ lit. _Oroszlány dead city.Tra
  could-become._ "Oroszlány could become a dead city."

### `Com`: comitative / associative

The comitative (also called associative) case corresponds to English
"together with &hellip;"

#### Examples

* [et] _koer_ "dog"; _<b>koeraga</b>_ "with dog"

### `Abe`: abessive

The abessive case corresponds to the English preposition _without_.

#### Examples

* [fi] _raha_ "money"; _<b>rahatta</b>_ "without money"

### `Ine`: inessive

The inessive case expresses location inside of something.

#### Examples

* [hu] _ház_ "house"; _<b>házban</b>_ "in the house"
* [fi] _talo_ "house"; _<b>talossa</b>_ "in the house"
* [et] _maja_ "house"; _<b>majas</b>_ "in the house"

### `Ill`: illative

The illative case expresses direction into something.

#### Examples

* [hu]_ház_ "house"; _<b>házb</b><b>a</b>_ "into the house"
* [fi] _talo_ "house"; _<b>talo</b><b>on</b>_ "into the house"
* [et] _maja_ "house"; _<b>majas</b><b>se / majja</b>_ "into the house"

### `Ela`: elative

The elative case expresses direction out of something.

#### Examples

* [hu]_ház_ "house"; _<b>házból</b>_ "from the house"
* [fi] _talo_ "house"; _<b>talos</b><b>t</b><b>a</b>_ "from the house"
* [et] _maja_ "house"; _<b>majas</b><b>t</b>_ "from the house"

### `Add`: additive

Distinguished by some scholars in Estonian, not recognized by
traditional grammar, exists in the Multext-East Estonian tagset and in
the Eesti keele puudepank.  Reportedly same or similar meaning as
illative. Forms of this case exist only in singular and not for all
nouns.

### `Ade`: adessive

The adessive case expresses location at or on something.  The
corresponding directional cases are allative (towards something) and
ablative (from something).

#### Examples

* [hu] _pénztár_ "cash desk"; _<b>pénztárnál</b>_ "at the cash desk"
* [fi] _pöytä_ "table"; _<b>pöydällä</b>_ "on the table"
* [et] _laud_ "table";_<b>laual</b>_ "on the table"

Note that adessive is used to express location on the surface of
something in Finnish and Estonian, but does not carry this meaning in
Hungarian.

### `All`: allative

The allative case expresses direction to something (destination is
adessive, i.e. at or on that something).

#### Examples

* [hu] _pénztár_ "cash desk"; _<b>pénztár</b><b>hoz</b>_ "to the cash desk"
* [fi] _pöytä_ "table"; _<b>pöydäll</b><b>e</b>_ "onto the table"

### `Abl`: ablative

Prototypical meaning: direction from some point.

#### Examples

* [hu] _a <b>barátomtól</b> jövök_ "I'm coming <b>from my friend</b>"
* [fi] _pöydältä_ "from the table"; _katolta_ "from the roof";
  _rannalta_ "from the beach"

### `Sup`: superessive

Used, chiefly [in
Hungarian](http://www.hungarianreference.com/Nouns/-n-superessive.aspx),
to indicate location on top of something or on the surface of
something.

#### Examples

* [hu] _asztal_ "table"; _<b>asztalon</b>_ "on the table"
* [hu] _könyvek_ "books"; _<b>könyveken</b>_ "on books"

### `Sub`: sublative

The sublative case is used in Finno-Ugric languages to express the
destination of movement, originally to the surface of something
(e.g. "to climb a tree"), and, by extension, in other figurative
meanings as well (e.g. "to university").

#### Examples

* [hu] _Belgrádtól 150 <b>kilométerre délnyugatra</b>_ lit.
  _Belgrade.Abl 150 kilometer.Sub southwest.Sub_ "150 kilometers
  southwest of Belgrade"
* [hu] _hajó_ "ship"; _<b>hajóra</b>_ "onto the ship"
* [hu] _<b>bokorra</b>_ "on the shrub"

### `Del`: delative

Used, chiefly [in
Hungarian](http://www.hungarianreference.com/Nouns/ról-rol-delative.aspx),
to express the movement from the surface of something (like "moved off
the table"). Other meanings are possible as well, e.g. "about
something".

#### Examples

* [hu] _asztal_ "table"; _az <b>asztal</b><b>ról</b>_ "off the table"
* [hu]_<b>Budapestről</b> jövök_ "I am coming from Budapest"

### `Lat`: lative / directional allative

The lative case denotes movement towards/to/into/onto
something. Similar case in Basque is called directional allative
(Spanish _adlativo direccional_).  However, lative is typically
thought of as a union of allative, illative and sublative, while in
Basque it is derived from allative, which also exists independently.

#### Examples

* [eu] _behe_ "low"; _<b>beherantz</b>_ "down"

### `Tem`: temporal

The temporal case is used to indicate time.

#### Examples

* [hu] _<b>hétkor</b>_ "at seven (o'clock)"; _<b>éjfélkor</b>_ "at midnight";
  _<b>karácsonykor</b>_ "at Christmas"

### `Ter`: terminative / terminal allative

The terminative case specifies where something ends in space or
time. Similar case in Basque is called terminal allative (Spanish
_adlativo terminal_).

#### Examples

* [et] _<b>j&otilde;eni</b>_ "down to the river"; _kella <b>kuueni</b>_
  "till six o'clock"
* [hu] _a <b>házig</b>_ "up to the house"; _hat <b>óráig</b>_ "till
  six o'clock"
* [eu] _erdi_ "half"; _<b>erdiraino</b>_ "up to the half"

### `Cau`: causative / motivative

Noun in this case is the cause of something. In Hungarian it also
seems to be used frequently with currency ("to buy something _for_ the
money") and it also can mean the goal of something.

#### Examples

* [hu] _Egy világcég benzinkútjánál 7183 <b>forintért</b> tankoltam._
  lit. _a world-wide.company petrol.station.Ade 7183 forint.Cau
  refueled_ "I refueled my car at the petrol station of a world-wide
  company for 7183 forints."
* [hu] _Elmentem a boltba <b>tejért</b>._ lit. _went the shop.Ill
  milk.Cau_ "I went to the shop to buy milk."
* [eu] _jokaera_ "behavior"; _<b>jokaeragatik</b>_ "because of
  behavior"

### `Ben`: benefactive / destinative

The benefactive case corresponds to the English preposition _for_.

#### Examples

* [eu] _mutil_ "boy"; _<b>mutilarentzat</b>_ "for boys"
