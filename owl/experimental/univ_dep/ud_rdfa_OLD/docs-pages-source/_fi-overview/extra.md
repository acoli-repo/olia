---
layout: base
title:  'Syntax'
permalink: fi/overview/extra.html
---

# Extra material

This page contains material from the TDT guidelines that has not yet
been incorporated into the primary UD Finnish documentation. The
following should *not* be considered part of the UD Finnish
guidelines.

---

## `rel` (relativizer)
<!-- this section originally from TDT guidelines section 2.44 -->

(The following section was lifted from the TDT documentation for
`rel`, which is removed in UD Finnish. See
<https://github.com/UniversalDependencies/docs/issues/73> for more
information.)

In TDT, the *relativizer* (`rel`) is the head of the phrase containing
the relative pronoun (or other relative word). Most often, but not
always, this is the relative word itself. The governor of the
dependency is the main predicate of the relative clause.

For UD Finnish, relative markers are be mapped to the syntactic role
that the relative is playing in the relative clause, such as `nsubj`
or `dobj`. This information is present in the second annotation layer
of the TDT corpus.

<!-- TODO Annotation of relative clauses is more closely examined in Section [relclauses](#sec-relclauses). -->

**NOTE**: this is TDT example using `rel`, not a UD Finnish example.

<!-- fname:rel_basic.pdf -->
~~~ sdparse
Auto , joka ohitti meidät , ajoi hyvin nopeasti . \n The_car , which passed us , drove very fast .
acl:relcl(Auto-1, ohitti-4)
punct(ohitti-4, ,-2)
rel(ohitti-4, joka-3)
dobj(ohitti-4, meidät-5)
punct(ohitti-4, ,-6)
nsubj(ajoi-7, Auto-1)
advmod(ajoi-7, nopeasti-9)
advmod(nopeasti-9, hyvin-8)
punct(ajoi-7, .-10)
~~~

**NOTE**: this is TDT example using `rel`, not a UD Finnish example.

<!-- fname:rel_phrase.pdf -->
~~~ sdparse
Nainen , jonka auto hajosi , pyysi apuamme . \n The_lady , whose car broke , asked_for our_help .
acl:relcl(Nainen-1, hajosi-5)
punct(hajosi-5, ,-2)
nmod:poss(auto-4, jonka-3)
rel(hajosi-5, auto-4)
punct(hajosi-5, ,-6)
nsubj(pyysi-7, Nainen-1)
dobj(pyysi-7, apuamme-8)
punct(pyysi-7, .-9)
~~~

## The null token
<!-- this section originally from TDT guidelines section 2.47 -->

The *null token* is not a dependency type, but an extra token that is
added into the sentence to represent a missing token. A null token is
only added when the missing token is required in order to construct an
analysis, that is, when it governs another token that is present in
the sentence. Thus, for instance copulas and auxiliaries are not
represented by null tokens when absent, because if they are absent,
their dependents are as well. The null token is most commonly, but not
always, a verb.

There are two basic uses for the null token. First, it is used in
*fragments*: sentences or clauses with an omitted main predicate.

<!-- fname:null_fragment.pdf -->
~~~ sdparse
Presidentti *null* Kiinaan solmimaan sopimusta . \n The_president *null* to_China to_make a_deal .
nsubj(*null*-2, Presidentti-1)
nmod(*null*-2, Kiinaan-3)
xcomp(*null*-2, solmimaan-4)
dobj(solmimaan-4, sopimusta-5)
punct(*null*-2, .-6)
~~~

Second, the null token is used in *gapping*, a type of *ellipsis*
where a head word has been omitted to avoid repetition. Gapping is the
only type of ellipsis marked with null tokens, as according to the
definition of a null token, only words required for constructing an
analysis should be represented by one.

<!-- fname:null_ellipsis.pdf -->
~~~ sdparse
Matti tilasi jäätelön ja Pekka *null* leivoksen . \n Matti ordered ice_cream and Pekka *null* cake .
nsubj(tilasi-2, Matti-1)
dobj(tilasi-2, jäätelön-3)
cc(tilasi-2, ja-4)
conj(tilasi-2, *null*-6)
nsubj(*null*-6, Pekka-5)
dobj(*null*-6, leivoksen-7)
punct(tilasi-2, .-8)
~~~

---

# Conjunct propagation and additional dependencies
<!-- this section originally from TDT guidelines section 3 -->

This section describes four phenomena that are annotated in the second
annotation layer of TDT, termed the *conjunct propagation and
additional dependencies* layer. These phenomena are *the propagation
of conjunct dependencies*, *external subjects*, *syntactic functions
of relativizers* and *gapping*. The annotation of this layer is added
on top of the first layer, meaning that the analyses are no longer
trees.

## Conjunct propagation
<!-- this section originally from TDT guidelines section 3.1 -->

The SD scheme analyzes coordinations so that the first coordinated
element is the head of the whole coordination.

**FIGURE MISSING**

In this analysis alone, it is not possible to distinguish dependents
and governors of the first coordinated element from those of the whole
coordination, nor from elements that depend on or govern some but not
all conjuncts. Therefore in the extended variants of the SD scheme,
this distinction is made explicit with additional dependencies on top
of the tree structure. That is, if an element modifies or governs
multiple coordinated elements, it should be *propagated* to them. In
principle, any dependency type introduced in Sections 2 and 3, with
the exceptions of [`punct`](), [`conj`](), [`cc`]() and
[`ellipsis`](), can propagate in the second layer of annotation. Note
especially that the dependencies introduced in the second layer, that
is, external subjects and syntactic functions of relativizers, are
also allowed to propagate.

<!-- fname:propagation.pdf -->
~~~ sdparse
Tultuaan kotiin Maija söi ensin lounaan ja imuroi sitten . \n After_coming home Maija ate first lunch and hoovered then .
nmod(Tultuaan-1, kotiin-2)
advcl(söi-4, Tultuaan-1)
nsubj(söi-4, Maija-3)
advmod(söi-4, ensin-5)
dobj(söi-4, lounaan-6)
cc(söi-4, ja-7)
conj(söi-4, imuroi-8)
advmod(imuroi-8, sitten-9)
punct(söi-4, .-10)
advcl(imuroi-8, Tultuaan-1)
nsubj(imuroi-8, Maija-3)
~~~

In addition to simply propagating to other coordinated elements, it is
possible for a dependency to change its type while doing so. This may
happen in coordinations of elements with differing parts-of-speech,
and cases where a sentence element acts in one syntactic role for the
first conjunct and in an another role for some other conjunct.

<!-- fname:propagation_typechange.pdf -->
~~~ sdparse
Pieni ja savuttava nuotio paloi yön ja sammutettiin sitten . \n Small and smoking bonfire burned for_night and was_extinguished then .
amod(nuotio-4, Pieni-1)
cc(Pieni-1, ja-2)
conj(Pieni-1, savuttava-3)
nsubj(paloi-5, nuotio-4)
nmod(paloi-5, yön-6)
cc(paloi-5, ja-7)
conj(paloi-5, sammutettiin-8)
nmod(sammutettiin-8, sitten-9)
punct(paloi-5, .-10)
acl:partmod(nuotio-4, savuttava-3)
dobj(sammutettiin-8, nuotio-4)
~~~

## External subjects (xsubj)
<!-- this section originally from TDT guidelines section 3.2 -->

(see [xsubj] for start of section)

External subjects interact with conjunct propagation in two ways: an
external subject may propagate, and also a propagated [`nsubj`]()
dependency may be the source of a new [`xsubj`]() dependency.

<!-- fname:xsubj_propagation1.pdf -->
~~~ sdparse
Matti ryhtyi lukemaan ja kirjoittamaan . \n Matti started_to read and write .
nsubj(ryhtyi-2, Matti-1)
xcomp(ryhtyi-2, lukemaan-3)
punct(ryhtyi-2, .-6)
cc(lukemaan-3, ja-4)
conj(lukemaan-3, kirjoittamaan-5)
xsubj(lukemaan-3, Matti-1)
xsubj(kirjoittamaan-5, Matti-1)
~~~

<!-- fname:xsubj_propagation2.pdf -->
~~~ sdparse
Matti luki ja ryhtyi kirjoittamaan . \n Matti read and started_to write .
nsubj(luki-2, Matti-1)
punct(luki-2, .-6)
cc(luki-2, ja-3)
conj(luki-2, ryhtyi-4)
xcomp(ryhtyi-4, kirjoittamaan-5)
nsubj(ryhtyi-4, Matti-1)
xsubj(kirjoittamaan-5, Matti-1)
~~~

## Syntactic functions of relativizers
<!-- this section originally from TDT guidelines section 3.3 -->

Relativizers, that is, the phrases containing the relative word are
marked as such in the base layer of annotation, using the dependency
type [`rel`]() (see Section 2.44).  However, the relativizers also
always have a secondary syntactic function, such as a subject, which
cannot be marked on the base layer of annotation due to the treeness
restriction. Therefore these functions are marked on the *conjunct
propagation and additional dependencies* layer on top of the tree
structure. In principle any dependency type from Section 2 may
represent the syntactic function of a relativizer, although in
practice certain types (such as [`punct`]()) will not do so.

<!-- fname:rel_secondary.pdf -->
~~~ sdparse
Auto , joka ohitti meidät , ajoi hyvin nopeasti . \n The_car , which passed us , drove very fast .
nsubj(ajoi-7, Auto-1)
punct(ajoi-7, .-10)
advmod(ajoi-7, nopeasti-9)
advmod(nopeasti-9, hyvin-8)
acl:relcl(Auto-1, ohitti-4)
punct(ohitti-4, ,-2)
punct(ohitti-4, ,-6)
rel(ohitti-4, joka-3)
nsubj(ohitti-4, joka-3)
~~~

Relativizers and their secondary functions may propagate in
coordinations, and if the dependencies are between the same tokens
(see Section 5.6 for discussion of cases where they are not), they
will propagate together.

<!-- fname:rel_propagation.pdf -->
~~~ sdparse
Mies , joka puhui ja puhui , oli serkkuni . \n The_man , who talked and talked , was my_cousin .
nsubj:cop(serkkuni-9, Mies-1)
cop(serkkuni-9, oli-8)
punct(serkkuni-9, .-10)
punct(puhui-4, ,-2)
punct(puhui-4, ,-7)
rel(puhui-4, joka-3)
cc(puhui-4, ja-5)
conj(puhui-4, puhui-6)
nsubj(puhui-4, joka-3)
rel(puhui-6, joka-3)
nsubj(puhui-6, joka-3)
~~~

If the syntactic function of a relativizer is a subject, the
relativizer may also act as an external subject to another verb.

<!-- fname:rel_xsubj.pdf -->
~~~ sdparse
mies , joka ryhtyi laulamaan \n the_man , who started_to sing
acl:relcl(mies-1, ryhtyi-4)
punct(ryhtyi-4, ,-2)
rel(ryhtyi-4, joka-3)
xcomp(ryhtyi-4, laulamaan-5)
nsubj(ryhtyi-4, joka-3)
xsubj(laulamaan-5, joka-3)
~~~

## Gapping (ellipsis of a head word)
<!-- this section originally from TDT guidelines section 3.4 -->

As described in Section 2.47, gapping in TDT is marked by inserting a
so called null token to represent the omitted token. In addition, the
second layer annotation uses the dependency type [`ellipsis`]() to
mark the elided word so that the null token acts as the dependent, and
the governor is the non-elided occurrence of the word (Note that the
elided word can also precede the non-elided occurrence).

Note that according to the policy of only inserting a null token where
necessary for constructing an analysis (see Section 2.47), gapping is
the only form of ellipsis marked using null tokens and [`ellipsis`]()
dependencies in TDT. Some other elliptical structures may be less
explicitly marked as *conjunct propagation* (see Section 3.1).

**FIGURE MISSING**

# Differences between the Finnish and English versions of the SD scheme
<!-- this section originally from TDT guidelines section 4 -->

The original SD scheme by de Marneffe and Manning includes in total 55
dependency types arranged in a hierarchy; excluding six intermediate
types that are not meant to be used if a more specific type can be
selected, the total number of dependency types is 49. The
Finnish-specific scheme version used in this work includes 46
dependency types in the base layer and 3 additional types in the
conjunct propagation and additional dependencies layer. This section
discusses the differences between the two scheme versions. Figure 1
shows the original SD type hierarchy as described in the SD scheme
manual, and Figure 2 the hierarchy of the Finnish-specific version.

To maintain a hierarchy similar to the original one, Figure 2 includes
four intermediate types which have not been introduced above and are
not used in TDT: [`arg`]() (argument), [`comp`]() (complement),
[`subj`]() (subject) and [`mod`]() (modifier). This makes the overall
number of types in the Finnish SD scheme 53.

## New dependency types in Finnish-specific SD
<!-- this section originally from TDT guidelines section 4.2 -->

(Parts of the content of this section are now found
[here](syntax.html#new-dependency-relations))

<!-- not applicable in comparison to UD
First, two new dependency types were needed to accommodate the similar
handling of nominal modifiers and adpositional phrases: [`nmod`]() and
[`case`](), both under the [`modifier`]() subcategory.  It should be
noted that although [`nmod`]() is considered a modifier type, many
nominal modifiers in the treebank are at least borderline complements,
due to the fact that many Finnish verbs take inflected nominals as
their arguments.
-->

<!-- 2nd layer only -->
Also we have moved the existing [`xsubj`]() type from under the
[`sdep`]() category to under the [`subject`]() category, and added a
new subtype for [`xsubj`](), [`xsubj-cop`]().  The external subject
types are part of the *conjunct propagation and additional
dependencies* layer of the treebank.

<!-- new wrt SD but not UD -->
The type [`vocative`]() is introduced to be able to analyze
*vocatives*, and the type [`discourse`]() is for *interjections*. Both
vocatives and interjections are fairly common in more informal genres,
such as blog text.

<!-- 2nd layer only -->
The type [`ellipsis`]() is part of the *conjunct propagation and
additional dependencies* layer and used to mark the elided word in
gapping.

## Hierarchy changes
<!-- this section originally from TDT guidelines section 4.3 -->

Finally, there are two minor changes made in the SD hierarchy. First,
as prepositional objects are no longer needed in the Finnish-specific
scheme due to the changes made to handling adpositional phrases, and
as indirect objects do not occur in Finnish, the type [`dobj`]() was
the sole subtype of the intermediate, unused type [`obj`](), we have
removed this intermediate type, and made [`dobj`]() a direct subtype
of [`complement`]().

Second, the [`neg`]() dependency type, for marking negations, has been
moved from under adverbial modifiers to under auxiliaries in the
hierarchy. This is because in Finnish, the negation word ei is in most
contexts a verb and acts in an auxiliary-like manner. It should be
noted, however, that in TDT there are few cases where it is considered
that for instance a noun phrase has been negated or where *ei*
functions as the counterpart of *kyllä* "yes", and is thus an adverb.
