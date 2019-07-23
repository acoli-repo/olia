---
layout: base
title:  'Visualisation'
---


# Quick introduction (test)

This online repository contains dependency annotation documentation
and visualizations, built using a combination of Jekyll, GitHub pages
and embedded brat visualizations. Here's a minimal example:

<div class="example" markdown="1">

An adjectival complement of a verb is an adjectival phrase which functions as the complement (see [ADJ]()).

~~~ sdparse
She looks very beautiful
acomp(looks, beautiful)
~~~

</div>

The text is [Markdown](http://daringfireball.net/projects/markdown/syntax)
(with optional inline HTML) and the data for the visualizations is
represented in either the Stanford Dependency or CoNLL-X format. For
example, the above visualization is generated from this input:

    An adjectival complement of a verb is an adjectival phrase which functions as the complement (see [ADJ]()).

    ~~~ sdparse
    She looks very beautiful
    acomp(looks, beautiful)
    ~~~

See the [links below](#more-information) for more information.

## How to contribute

See [here](contributing.html) for instructions on how to contribute to
this online documentation. See below for details
on how the visualized examples are created.

## More information:

The following sources of documentation provide further details:

- [Markdown](http://daringfireball.net/projects/markdown/syntax)
- [Github pages](https://pages.github.com/)
- [Embedded brat](http://brat.nlplab.org/embed.html)
- [Stanford Dependencies](http://nlp.stanford.edu/software/stanford-dependencies.shtml)

Further details are provided below.

# Automatic parse visualization

## Simple examples

A single tree in the Stanford Dependency format can be embedded using
the following syntax:

    ~~~ sdparse
    Dogs run
    nsubj(run, Dogs)
    ~~~

which results in this embedded visualization:

~~~ sdparse
Dogs run
nsubj(run, Dogs)
~~~

The CoNLL-X format is also supported. For example,

    ~~~ conllx
    1    Dogs   dog    _    NNS    _    2    nsubj
    2    run    run    _    VBP    _    0    ROOT
    ~~~

gives

~~~ conllx
1    Dogs   dog    _    NNS    _    2    nsubj
2    run    run    _    VBP    _    0    ROOT
~~~

Similarly, the new <a href="format.html">CoNLL-U format</a> is now supported as well:

    ~~~ conllu
    # I wrote the letter with a quill.
    1   Я         ja         PRON   _   Case=Nom|Number=Sing|Person=1|PronType=Prs        2   nsubj   _   I
    2   написал   napisat'   VERB   _   Gender=Masc|Number=Sing|VerbForm=Part|Voice=Act   0   root    _   wrote
    3   письмо    pis'mo     NOUN   _   Case=Acc|Gender=Neut|Number=Sing                  2   dobj    _   the-letter
    4   пером     pero       NOUN   _   Case=Ins|Gender=Neut|Number=Sing                  2   nmod    _   with-a-quill
    ~~~

~~~ conllu
# I wrote the letter with a quill.
1   Я         ja         PRON   _   Case=Nom|Number=Sing|Person=1|PronType=Prs        2   nsubj   _   I
2   написал   napisat'   VERB   _   Gender=Masc|Number=Sing|VerbForm=Part|Voice=Act   0   root    _   wrote
3   письмо    pis'mo     NOUN   _   Case=Acc|Gender=Neut|Number=Sing                  2   dobj    _   the-letter
4   пером     pero       NOUN   _   Case=Ins|Gender=Neut|Number=Sing                  2   nmod    _   with-a-quill
~~~

The comment lines in the CoNLL-U format can be used to change styles, e.g.
to highlight a node / arc or to distinguish tree that does not adhere to
the UD standard:

    ~~~ conllu
    # This is not UD, it is Prague Dependency Treebank, and we want to clearly distinguish it from the UD examples.
    # visual-style nodes yellow
    # visual-style arcs blue
    1   Na        na        ADP     _   _   4   AuxP   _   at
    2   Hlavním   hlavní    ADJ     _   _   3   Atr    _   Main
    3   nádraží   nádraží   NOUN    _   _   1   Adv    _   Station
    4   došlo     dojít     VERB    _   _   0   Pred   _   there-was
    5   k         k         ADP     _   _   4   AuxP   _   to
    6   nehodě    nehoda    NOUN    _   _   5   Obj    _   accident
    7   .         .         PUNCT   _   _   0   AuxK   _   .
    ~~~

~~~ conllu
# This is not UD, it is Prague Dependency Treebank, and we want to clearly distinguish it from the UD examples.
# visual-style nodes yellow
# visual-style arcs blue
1   Na        na        ADP     _   _   4   AuxP   _   at
2   Hlavním   hlavní    ADJ     _   _   3   Atr    _   Main
3   nádraží   nádraží   NOUN    _   _   1   Adv    _   Station
4   došlo     dojít     VERB    _   _   0   Pred   _   there-was
5   k         k         ADP     _   _   4   AuxP   _   to
6   nehodě    nehoda    NOUN    _   _   5   Obj    _   accident
7   .         .         PUNCT   _   _   0   AuxK   _   .
~~~

(See also [http://spyysalo.github.io/conllu.js/](http://spyysalo.github.io/conllu.js/).)

You can have any number of visualizations on a page, and any
standard HTML content can be freely mixed with the visualizations.

## Alternative form

As an alternative to the `~~~` syntax, you can use the equivalent HTML
tag form:

    <div class="sd-parse">
    Dogs run
    nsubj(run, Dogs)
    </div>

This form is more flexible in allowing e.g. additional attributes
to control aspects of the visualization. For example,

    <div class="sd-parse" id="simple-example-parse" tabs="yes">
    Dogs run
    nsubj(run, Dogs)
    </div>

gives

<div class="sd-parse" id="simple-example-parse" tabs="yes">
Dogs run
nsubj(run, Dogs)
</div>

## Ambiguous tokens

If your example has several instances of the same token, you can use their position to refer to the exact token. In the following example `can-5` refers to the fifth token of the sentence, `can`. 

    ~~~ sdparse
    I can can the can .
    nsubj(can-3, I)
    aux(can-3, can-2)
    det(can-5,the)
    dobj(can-3,can-5)
    punct(can-3,.)
    ~~~

will result in this visualization

~~~ sdparse
I can can the can .
nsubj(can-3, I)
aux(can-3, can-2)
det(can-5,the)
dobj(can-3,can-5)
punct(can-3,.)
~~~

## POS tags

POS tags are optional and use the format "text/POS".

    ~~~ sdparse
    POS/NNP tags/NNS can/MD be/VB attached/VBN to/TO ( any part of ) the/DT sentence/NN text/NN ./.
    dep(tags-2, POS-1)
    nsubjpass(attached-5, tags-2)
    aux(attached-5, can-3)
    auxpass(attached-5, be-4)
    prep(attached-5, to-6)
    det(text-14, the-12)
    nn(text-14, sentence-13)
    pobj(to-6, text-14)
    det(part, any)
    prep(part, of)
    ~~~

~~~ sdparse
POS/NNP tags/NNS can/MD be/VB attached/VBN to/TO ( any part of ) the/DT sentence/NN text/NN ./.
dep(tags-2, POS-1)
nsubjpass(attached-5, tags-2)
aux(attached-5, can-3)
auxpass(attached-5, be-4)
prep(attached-5, to-6)
det(text-14, the-12)
nn(text-14, sentence-13)
pobj(to-6, text-14)
det(part, any)
prep(part, of)
~~~

Any literal slashes ("/") can be escaped using backslash.

     ~~~ sdparse
     \\/\\ escapes/VBZ :/: \\o\//\\o\/
     nsubj(escapes, \)
     ~~~

~~~ sdparse
\\/\\ escapes/VBZ :/: \\o\//\\o\/
nsubj(escapes, \)
~~~

## Features

Features can be specified using the syntax "text/POS[Name=Value]".
Multiple features for a single word are separated by a bar ("|").

    ~~~ sdparse
    Token/TAG[Feat1=Val1|Feat2=Val2]
    ~~~

~~~ sdparse
Token/TAG[Feat1=Val1|Feat2=Val2]
~~~

## Multiple lines of text

The literal sequence `\n` in the SD input text is interpreted as a
newline. (This sequence should be separated by space from the rest of
the input.)

    ~~~ sdparse
    One line \n and another.
    ~~~

gives:

~~~ sdparse
One line \n and another.
~~~

## Editing

Controls for visualization editing and information is accessible in
elements with the attribute `tabs="yes"` (or any other non-empty
value):

    <div class="sd-parse" id="simple-example-parse" tabs="yes">
    Dogs run
    nsubj(run, Dogs)
    </div>

This gives:

<div class="sd-parse" id="simple-example-parse" tabs="yes">
Dogs run
nsubj(run, Dogs)
</div>

You can click on the tab on the top right to edit the visualization,
but note that the edits are not saved anywhere as there's no
server. This is mostly useful to build and debug examples.

## Unicode

Everything is unicode-compliant.

    ~~~ sdparse
    ロボットは 東大に 入れる か 。
    nsubj(入れる, ロボットは)
    nommod(入れる, 東大に)
    ~~~

~~~ sdparse
ロボットは 東大に 入れる か 。
nsubj(入れる, ロボットは)
nommod(入れる, 東大に)
~~~

## Links to documentation

The system supports a simplified syntax for linking documentation
pages that are part of a *collection* (e.g. universal dependency
types, POS tags, etc.).

The basic syntax is `[COLL/DOC]()`, where `COLL` is the collection
name and `DOC` the document title. For example, `[u-dep/aux]()` is
linked as follows: [u-dep/aux]().

The shorter form `[DOC]()` (omitting the collection) can be used when
referring to another document in the current collection (e.g. linking
between different documents in the `u-dep` collection) or when the
document title is unique. For example, `[nmod:own]()` can be assured
to link to [nmod:own]() as the type is unique to the Finnish
annotation.
