---
layout: base
title:  'Syntax'
permalink: u/overview/specific-syntax.html
---

# Specific constructions

This section will contain detailed discussion of particular linguistic constructions of interest, covering best practices for how to annotate them cross-linguistically. It is still a work in progress.  At the moment, you can also see:

* Coordination: currently described under [u-dep/conj]()
* Direct and reported speech: currently described under [u-dep/parataxis]()

## Clausal structures

### Simple clauses

Simple clauses consist of a predicate together with its core nominal arguments (and may contain additional modifiers of both the predicate and its arguments).

~~~ sdparse
she left
nsubj(left, she)
~~~
~~~ sdparse
she left a note
nsubj(left, she)
dobj(left, note)
~~~
~~~ sdparse
she left him a note
nsubj(left, she)
dobj(left, note)
iobj(left, him)
~~~

An intransitive verb takes a single argument with the [u-dep/nsubj]() relation.
A transitive verb in addition takes an argument with the [u-dep/dobj]() relation.
A ditransitive verb further adds an argument with the [u-dep/iobj]() relation. 
Note that the assignment of core argument relations is independent of case marking (whether morphological or analytic). 
Thus, in ergative languages, the patient-like argument of a transitive verb will take the he [u-dep/dobj]() relation 
despite the fact that it carries the same case marking as the [u-dep/nsubj]() argument of an intranstive verb.

If passivization involves the promotion of an argument to subject position, then this argument gets the relation
[u-dep/nsubjpass]() to indicate that promotion has taken place. By contrast, if passivization only involves suppression
of the subject without promotion of another argument, then [u-dep/nsubjpass]() should not be used.

~~~ sdparse
folk drack vin hela natten \n people drank wine all night
nsubj(drack, folk)
dobj(drack, vin)
~~~
~~~ sdparse
vin dracks hela natten \n wine was-drunk all night
nsubjpass(dracks, vin)
~~~
~~~ sdparse
det dracks vin hela natten \n it was-drunk wine all night
expl(dracks, det)
dobj(dracks, vin)
~~~

In nominal clauses, the predicate is a noun or an adjective, which takes a single argument with the [u-dep/nsubj]() relation. The copula verb (if present) attaches to the predicate with the [u-dep/cop]() relation.

~~~ sdparse
he is a fool 
nsubj(fool, he)
cop(fool, is)
~~~
~~~ sdparse
he is tired
nsubj(tired, he)
cop(tired, is)
~~~

This analysis of copula constructions extends to adpositional phrases and oblique nominals as long as they have a predicative function. By contrast, temporal and locative modifiers are treated as dependents on the existential verb "be".

~~~sdparse
he is in good shape
nsubj(shape, he)
cop(shape, is)
~~~
~~~ sdparse
he is in the garden
nsubj(is, he)
nmod(is, garden)
~~~

Exactly where the line is drawn between nominal clauses and clauses with an existential verb may be subject to language-specific variation and should therefore be specified in the language specific documentation. The set of verbs
treated as copulas may also vary between languages but should be restricted to grammaticalized copulas where at most an aspectual dimension is added to the basic function of linking a non-verbal predicate to its subject. For other copula-like
verbs (like "seem", "look", "appear" in English), the nominal predicate is treated as a secondary predicate (see below).

### Secondary predicates

A clause can contain a _secondary predication_ or _predicative_. The most common case is with adjectives, although the same effect can sometimes be achieved with a predicative noun or preposition-marked phrase.

* _She declared the cake **beautiful**._
* _She declared the cake **a success**._
* _She entered the room **sad**._
* _She hammered the metal **flat**._

There are two predicates in such sentences, the main predicate and an additional one, such as *the cake* being *beatiful* or *She* being *sad*.

Huddleston and Pullum (2002) “The Cambridge Grammar of the English Language”, chapter 4 section 5.3, divide predicatives into obligatory and optional predicatives, which can be either depictives or resultatives, and which can appear in an intransitive or transitive clause, giving eight possibilities:

* _He looked **fantastic**._ [obligatory, depictive, intransitive host]
* _She kept Kim **warm**._ [obligatory, depictive, transitive host]
* _The boss became **angry**._ [obligatory, resultative, intransitive host]
* _This made me **furious**._ [obligatory, resultative, transitive host]
* _He died **young**._ [optional, depictive, intransitive host]
* _He ate the steak **almost raw**._ [optional, depictive, transitive host]
* _The pond froze **solid**._ [optional, resultative, intransitive host]
* _He painted the house **blue**._ [optional, resultative, transitive host]

In UD, obligatory predicatives are always treated as an `xcomp`: The secondary predicate is attached as an `xcomp` of the main predicate. In most cases, as well as an adjective depictive, you can use a verbal or nominal predicate in the same position (e.g., _He looked [an idiot]_; _This made me [seethe with anger]_). 

~~~ sdparse
She declared the cake beautiful .
nsubj(declared, She)
dobj(declared, cake)
xcomp(declared, beautiful)
~~~

In the enhanced representation, there is an additional subject link showing the secondary predication, which is obligatorily a particular role in the higher clause:

~~~ sdparse
She declared the cake beautiful .
nsubj(declared, She)
dobj(declared, cake)
xcomp(declared, beautiful)
nsubj(beautiful, cake)
~~~

A Czech example:

~~~ sdparse
jmenovat někoho generálem \n to-appoint someone as-a-general
dobj(jmenovat, někoho)
xcomp(jmenovat, generálem)
~~~

The relation `xcomp` is used for core arguments of clausal predicates,
so it will not be used for some other instances of secondary predication.
Optional depictives are analyzed as adjuncts, and made the [acl]() of the nominal that they semantically modify (if one is present). 

For instance, in _She entered the room sad_ we also have a double predication
(she entered the room; she was sad).
But _sad_ is not a core argument of _enter:_ leaving it out will neither affect grammaticality
nor significantly alter the meaning of the verb.
On the other hand, leaving out _beautiful_ in _She declared the cake beautiful_
will either render the sentence ungrammatical or lead to a different interpretation of _declared._

The result is that in _She entered the room sad,_ _sad_ will depend on _She_
and the relation will be [acl]() instead of `xcomp`:

~~~ sdparse
She entered the room sad .
dobj(entered, room)
acl(She, sad)
~~~

~~~ sdparse
He painted the model naked .
dobj(painted, model)
acl(model, naked)
~~~

If the nominal head is missing, the secondary predicate must be attached as
[advcl]() of the verbal predicate, even though it is an [adjective](../pos/ADJ.html),
not an [adverb](../pos/ADV.html). There is a second predication and the adjective heads the predication (just like in *She is sad*) and in this case there are simply no other words expressing this second predication:

~~~ sdparse
Vstoupila do místnosti smutná . \n She-entered to room sad .
advcl(Vstoupila, smutná)
advcl(She-entered, sad)
~~~

The remaining, most subtle case is optional resultatives. For these, 
we uniformly use `xcomp`:

~~~ sdparse
He painted the house blue .
dobj(painted, house)
xcomp(painted, blue)
~~~

Even though the resultative is optional here, one may argue that it is still a complement (an argument) of the higher verb
(he is painting something blue), in a way that is not true of depictives. Such an analysis of optional resultatives as core arguments is adopted for English by Huddleston and Pullum (p. 262). In LFG terms, we would say that the verb has acquired a new
subcategorization frame by application of a lexical rule, and that this frame
includes an additional `xcomp` argument. Such an analysis is buttressed by the fact that normally intransitive verbs like _to bark_ can also form similar resultatives by gaining a new subcategorization which adds both a `dobj` and an `xcomp`, as in the example below.

~~~ sdparse
The dog barked the neighbors awake .
dobj(barked, neighbors)
xcomp(barked, awake)
~~~

### Complex clauses

Complex clauses involving subordination arise because a core or non-core dependent is realized as a clausal structure.
We distinguish four basic types: 

1. Clausal subjects, divided into ordinary subjects ([u-dep/csubj]()) and passive subjects ([u-dep/csubjpass]()).
2. Clausal complements (objects), divided into those with obligatory control ([u-dep/xcomp]()) and those without ([u-dep/ccomp]()).
3. Clausal adverbial modifiers ([u-dep/advcl]()).
4. Clausal adnominal modifiers ([u-dep/acl]()) (with relative clauses as an important subtype in many languages).

## Nominal structures

The head of a nominal structure is usually a noun, proper noun or pronoun, although in cases of ellipsis it can also be an adjective or even a determiner.

~~~ sdparse
Hon såg den nya filmen . \n She saw the new film .
dobj(såg, filmen)
amod(filmen, nya)
det(filmen, den)
~~~
~~~ sdparse
Hon såg Batman . \n She saw Batman .
dobj(såg, Batman)
~~~
~~~ sdparse
Hon såg den . \n She saw it .
dobj(såg, den)
~~~
~~~ sdparse
Hon såg den nya . \n She saw the new (one) .
dobj(såg, nya)
det(nya, den)
~~~

## Adjectival and adverbial constructions

...

### Comparatives

The syntax of comparative constructions poses various challenges for linguistic theory.  For English, many of these are discussed in Bresnan (1973) and Huddleston and Pullum (2002, chapter 13). We give a discussion of equality comparisons (_That car is as big as mine_) and inequality scalar comparisons (_Sue is taller than Jim_).

In constructions of the form _as X as Y_ or _the same X as Y_, X and
Y can be of a range of syntactic types, leading to surface forms such as those exemplified below:

* _Commitment is as important as a player’s talent._
* _Get the cash to him as soon as possible._
* _I put in as much flour as the recipe called for._

We note that the head of the whole construction appears to be the head of the X phrase. We can simply say:

*  _Commitment is important._ 
*  _Get the cash to him soon._
*  _I put in flour._

We then say that the first _as_ is an independent modifier in the comparative, modifying something in the X phrase, in part because the following _as Y_ is fairly optional:

* _Commitment is (just) as important._
* _?Get the cash to him (just) as soon._
* _I put in (just) as much flour._

However, this first _as_ may not modify the head of X, it may modify an existing modifier of the head of X. Its role is adverbial ([u-dep/advmod]()) consistent with other kinds of degree modification:

~~~ sdparse
Commitment is as important as a player ’s talent .
advmod(important, as-3)
~~~

~~~ sdparse
I put in as much flour as the recipe called for .
advmod(much, as-4)
amod(flour, much)
~~~

We then take the complement of the comparative as an oblique dependent of the first part. It is clear that the material in the complement _as Y_ can be clausal. It is also usually optional, as indicated above. For that reason, we usually make the complement an [u-dep/advcl](), with the second _as_ analyzed as a mark.  That gives us:

~~~ sdparse
I do n't hear from my brother as often as I previously heard from him .
nsubj(hear, I-1)
aux(hear, do)
neg(hear, n't)
case(brother, from-5)
det(brother, my)
nmod(hear, brother)
advmod(often, as-8)
advmod(hear, often)
mark(heard, as-10)
nsubj(heard, I-11)
advmod(heard, previously)
advcl(often, heard)
case(him, from-14)
nmod(heard, him)
punct(hear, .)
~~~

We take the _as Y_ clause as a dependent of the content-word whose degree is being assessed (here _often_). We take its head to be the head of the clause, here _heard_.  An initially plausible alternative analysis would be to make the clausal dependent headed by _as_ a dependent of the comparative modifier _as_, _more_, or _less_, and indeed this is the analysis which Huddleston and Pullum (2002) argue for in English. However, there are several reasons to doubt this analysis.  One is the general principles of UD in favoring content words as heads. A second argument is motivated by a desire for crosslinguistic adequacy: in languages such as Finnish and Japanese, this functional element is not present.

~~~ sdparse
“Y” より “X” が 面白い 。 \n Y than X NOM interesting .
nsubj(面白い, “X”)
case(“X”, が)
case(“Y”, より)
nmod(面白い, “Y”)
punct(面白い, 。)
~~~

Since the first _as_ is a functional element, the dependent can be understood to modify the whole phrase _as often_, and therefore is attached to the head of that phrase. Additionally, it might be noted that comparatives without a comparative word occur in certain varieties of English. For example in Indian English you find usages such as _So don't worry if you think that you have a girl-friend, who is intelligent than you._ One further argument from morphological comparatives is discussed below.

The same basic analysis is given for inequality scalar comparatives, with _more_ or _less_ or a comparative adjective and _than_, parallel to the two uses of _as_ above, except that _more_ can also directly modify a noun, and _more_ is then taken to have the [u-dep/amod]() relation to the noun.  In this case, we take the comparative complement as directly depending on _more_, roughly seeing it as elliptical for _more numerous_.  In general, the comparative complement always depends on an adjective or adverb, and is usually an [advcl]() except when it is directly analyzed as an [nmod]() (as discussed at the end of this section).

~~~ sdparse
more problems than you thought of last week
amod(problems, more)
advcl(more, thought)
mark(thought, than)
~~~

~~~ sdparse
more important than you thought
advmod(important, more)
advcl(important, thought)
mark(thought, than)
~~~

~~~ sdparse
more rapidly than you thought
advmod(rapidly, more)
advcl(rapidly, thought)
~~~

~~~ sdparse
a more difficult problem than you thought
advmod(difficult, more)
amod(problem, difficult)
advcl(difficult, thought)
~~~

In addition to crosslinguistic adequacy, we can see here another possible advantage of not attaching the _than_ clause to _more_: This analysis then means that the dependency structure is more parallel between cases with a periphrastic comparative like _more intelligent_ and a morphological comparative like _taller_ (even though in bound morpheme cases, the _-er_ could be argued to be the comparative head).

~~~ sdparse
smarter than you thought
advcl(smarter, thought)
mark(thought, than)
~~~

~~~ sdparse
fiksumpi kuin luulit \n smarter than you_thought
advcl(fiksumpi, luulit)
mark(luulit, kuin)
~~~

~~~ sdparse
a smarter boy than you thought
amod(boy, smarter)
advcl(smarter, thought)
mark(thought, than)
~~~

If the head is ellided, then the functional element can be promoted.

~~~ sdparse
Wheat raises blood sugar even more than sugar does .
advcl(more, does)
~~~

Very commonly the complement clause in a comparative undergoes various amounts of partial reduction or ellipsis, sometimes to a quite extreme extent:

~~~ sdparse
I put in as much flour as the recipe called for .
nsubj(put, I)
compound(put, in)
advmod(much, as-4)
amod(flour, much)
dobj(put, flour)
mark(called, as-7)
det(recipe, the)
nsubj(called, recipe)
advcl(much, called)
nmod(called, for)
punct(put, .)
~~~

~~~ sdparse
He plays better drunk than sober
nsubj(plays, He)
advmod(plays, better)
acl(He, drunk)
mark(sober, than)
advcl(better, sober)
~~~

In general, we treat whatever remnant that remains as still an [u-dep/advcl](), as above. 

However, a limiting case of this is that only a nominal is present:

* _as important as a player 's talent_
* _more important than a player 's talent_

The analysis in this case is unclear: Should the comparative complement still be analyzed as an extremely reduced complement clause or analyzed as simply a nominal modifier? There are arguments for both positions. For English, there is a long discussion of the arguments in section 2.2 of chapter 13 of Huddleston and Pullum (2002). We err on the side of minimizing the postulation of unobserved structure and opt to treat these cases as just an oblique nominal complement:

~~~ sdparse
as important as a player 's talent
advmod(important, as-1)
case(talent, as-3)
nmod(important, talent)
~~~

~~~ sdparse
more important than a player 's talent
advmod(important, more)
case(talent, than)
nmod(important, talent)
~~~

### _More than_ as a multi-word expression

In certain contexts the comparative complement combines both the action or adjective that is being compared
and the quantity it is compared to:

* _more than 90 percent (= over 90 percent)_
* _more than likely_
* _Home prices have more than doubled in the past decade._

In these cases we consider _more than_ to be a multi-word expression because the two words are inseparable.
One cannot say _*more percent than 90._

~~~ sdparse
That is more than likely .
nsubj(likely, That)
cop(likely, is)
advmod(likely, more)
mwe(more, than)
punct(likely, .-6)
~~~

## Clause-external elements

### Feedback words

In a sentence starting with a feedback word such as _yes_ or _no_ and continuing with a main clause, we take the predicate of the main clause to be the root of the sentence and attach the feedback word to this predicate with a [discourse]() relation:

~~~ sdparse
yes , we should apply for membership .
discourse(apply, yes)
~~~

However, when the feedback is expressed by a full clause instead of a feedback word, the predicate of this clause is taken as the root and the predicate of the following clause is attached with a [parataxis]() relation:

~~~ sdparse
I agree , we should apply for membership .
parataxis(agree, apply)
~~~

## Ellipsis

Ellipsis means that there is something missing in the sentence.
Something that has been omitted from the surface form, although it is understood by both the speaker and the listener.
Various phenomena can be classified as ellipsis;
the most important and difficult are those where the missing word has dependents.
Where do we attach these orphans to?

Several different solutions can be found in treebanks.
One of them is to include an empty node (labeled `NULL`, `#Fantom` etc.) that represents the missing word.
Orphans are then attached to the empty node with their real dependency relation labels.
Such analysis would be linguistically adequate but it would violate our principle that dependencies exist
between real syntactic words. (It would also make parsing more difficult.)
We do not insert empty nodes.

If empty nodes are not an option, some treebanks attach all orphans to the grandparent,
i.e. parent of the missing parent node. Then they may

- keep the labels they would have if attached to the missing parent
- get a special label such as the `ExD` in Prague-style treebanks
- combine both (in the Danish treebank, the original labels are surrounded by angle brackets to indicate that this is not the real parent)

Another possibility is that one of the orphans gets promoted to the place of the missing parent
and the other orphans are attached to it.
This approach is used in Universal Dependencies when a main verb is missing and its auxiliary is promoted:
_I did not solve the problem but he did today._

A special case of ellipsis arises in coordinate clauses that share the same verb,
and the verb is not repeated in the second clause:
_John bought a car and Peter a bike._
Universal Dependencies annnotate such cases using the [u-dep/remnant]() relation
(for more details see there).
