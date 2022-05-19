Concentrating on the more elementary levels of linguistic analysis such
as parts of speech and morphology, a generalization over different
terminologies applied for the annotation of the corpora hosted by three
collaborative research centers SFB 441 (Tübingen), SFB 538 (Hamburg) and
SFB 632 (Potsdam/Berlin) was developed, and later extended for NLP tools
and corpora beyond these resources. As a result, an ontology was
developed which specifies reference terminology, and the tags of the
original annotated data are linked with this reference terminology.
Besides its function in annotation documentation, the ontology can be
applied for the formulation of tag-set neutral corpus queries. For this
purpose, I developed the OntoClient, a JAVA-based query pre-processor
which translates formal ontology-based specifications into disjunctions
of concrete tags. The OntoClient serves as a pre-processor for corpus
querying languages such as ANNIS-QL and CQP, furthermore, it was applied
in the specification of tag-set independent corpus processing scripts.
The current developmental stage of the OLiA ontologies is available
[here](http://purl.org/olia).

[The [OLiA](http://purl.org/olia) ontologies were initially developed in
the context of the project \"Sustainability of Linguistic Resources\", a
collaborative project between three German Collaborative Research
Centers (SFBs), The Collaborative Research Centres involved in
]{style="font-style: normal"}[the project are the [SFB 538
\'Multilingualism\'](http://www.uni-hamburg.de/fachbereiche-einrichtungen/sfb538/)]{style="font-style: normal"}[
]{style="font-style: normal"}[at the [University of
Hamburg](http://www.uni-hamburg.de/), the [SFB 632 \'Information
Structure\'](http://www.sfb632.uni-potsdam.de/)]{style="font-style: normal"}[
]{style="font-style: normal"}[at the [University of
Potsdam](http://www.uni-potsdam.de/)]{style="font-style: normal"}[
]{style="font-style: normal"}[and the [Humboldt University
Berlin](http://www.hu-berlin.de/), and the [SFB 441 \'Linguistic Data
Structures\'](http://www.sfb441.uni-tuebingen.de/)]{style="font-style: normal"}[
]{style="font-style: normal"}[at the [Eberhard Karls University
Tübingen](http://www.uni-tuebingen.de/)]{style="font-style: normal"}

[The project aimed at preparing language resources to assure an
accessible dissemination and ]{style="font-style: normal"}sustainable
storage of linguistic corpora. One of the main goals of the project was
a practical one: resources acquired in long-term projects situated in
the three Collaborative Research Centres have to be converted in either
one or multiple formats to be sustainably usable by researchers and
applications. Furthermore, the project developed unified methods of
access for the heterogeneous data acquired in the projects.

The linguistic resources dealt by the project are highly heterogeneous:

-   the primary data itself is heterogeneous:

    -   size (e.g., single sentences vs. entire articles),

-   text types / data types (e.g. newspaper texts, diachronic texts,
    dialogues, treebanks, \...)

-   modality (monologue vs. dialogue),

-   categories of information covered by the annotation / annotation
    levels (e.g. layout, textual structure, morpho-syntax, syntax, \...)

-   underlying linguistic theories

-   language

-   the annotations require data structures of various types
    (attribute-value pairs, trees, pointers, etc.)

-   data is annotated by means of different, task-specific annotation
    tools

See [here](http://www.sfb441.uni-tuebingen.de/c2/index-engl.html) for a
general description of the project in Tübingen.

## Integration of linguistic terminologies {#integration-of-linguistic-terminologies .western}

One of the tasks addressed by the sustainability project was the
integration of heterogeneous terminology, especially those applied for
the annotation of existing corpora. Examples for such differences range
from minor variation in the choice of tag names (which often go
unrealized and thus, affect the reliability of broad-scale corpus
studies) to fundamental conceptual differences.

-   Different abbreviations for the same annotations

-   Same abbreviation for different annotations

-   Same annotation, but different interpretation

-   Different granularity of tag sets

-   Conceptual overlap.

All these problems are taken from the seemingly most elementary domain,
the domain of part of speech tags, however, more problems arise as soon
as morphology, syntax, or discourse phenomena are addressed.

In order to overcome such problems, terminological integration is
necessary, i.e.

-   documentation of terminological differences

-   harmonization between different terminologies

To provide an integrated access to terminologically heterogeneous
resources, it is also necessary to provide an abstract model of
linguistic reference terminology to which individual annotations refer,
a so-called \"terminological backbone\".

Classical solutions are the standardization approach and the interlingua
approach:

-   **Standardization** (cf. the [EAGLES recommendations on
    morphosyntactic
    annotation](http://www.ilc.cnr.it/EAGLES96/annotate/annotate.html))

-   **Interlingua** (cf. the
    [AMALGAM](http://www.comp.leeds.ac.uk/amalgam/amalgam/amalghome.htm)
    project)

Both solutions are limited in flexibility and scalability, and hence,
both approaches are applicable only within a limited domain. The
standardization approach relies on the existence of common grammatical
categories and features found in the languages for which
standard-conformant tag sets are to be developed. Otherwise, it results
in projection of complexity (e.g. the standard entails predictions for
grammatical categories for a standard-conformant tagset which are absent
in a language). However, even the sheer existence of universal
morphosyntactic categories has been questioned in typologic research,
and hence, the EAGLES-based standardization approach is unlikely to
extend beyond \"Standard Average European\" languages.

The interlingua approach, however, involves the process to construct an
interlingua between existing schemes, and is less statically than the
standardization process. However, the complexity of the interlingua
grows monotonically with every new language/tag set considered, and,
hence, the general applicability of the interlingua approach is
restricted by its limited scalability.

Therefore, the project is currently developing an ontology of linguistic
annotations as a more flexible representation of a \"terminological
backbone\".

## An ontology-based approach {#an-ontology-based-approach .western}

So far, we have developed an ontology of linguistic annotations with
special consideration of part of speech and morphological annotations
existing the participating Collaborative Research Centers (Schmidt et
al. 2006, Chiarcos 2006c, Chiarcos 2006d, Chiarcos 2007).

The approach relies on the ontological reconstruction of annotation
schemes based on guidelines and additional documentation in so-called
\"annotation models\" (or \"domain models\").

Every annotation model represents one tag set or annotation scheme, with
nonterminal nodes (concepts) representing conceptual categories as
mentioned in the documentation or indicated in the document structure of
the annotation guidelines, and terminal nodes (instances) representing
concrete annotation values, or tags.

As an illustration, prototypes for the following annotation models are
available in an HTML serialization:

-   [STTS](http://141.89.100.105/owl-docu/stts.html) (POS tags, German)
    \[[owl](http://141.89.100.105/owl2/stts.owl)\] (Stuttgart, Tübingen
    and Tiger-Variant)

-   Tiger-Morphology (Morphology, POS tags inherited from STTS, German)
    \[[owl](http://141.89.100.105/owl2/tiger.owl)\]

-   [SUSANNE](http://141.89.100.105/owl-docu/susa.html) (POS tags with
    partial information about morphosyntax and lexical semantics,
    English) \[[owl](http://141.89.100.105/owl2/susa.owl)\]

-   [Uppsala](http://141.89.100.105/owl-docu/russ.html) (POS tags and
    morphology, Russian) \[[owl](http://141.89.100.105/owl2/russ.owl)\]

With respect to morphosyntactic annotations, the
[OLiA](http://purl.org/olia) annotation models currently comprise 16
annotation schemes applied to 42 languages (5 annotation models for
English, 5 annotation models for German, 2 annotation models for
Russian, one annotation model for Tibetan, one for Old High German, the
Connexor annotation model for 10 European languages, one annotation
model for a typologically-oriented annotation scheme applied to 29
languages). Annotation models for syntax and information
structure/anaphora are currently under construction.

The concepts of these annotation models are linked to a common
\"reference model\" which is based on the EAGLES recommendations for
morphosyntax, and extended according to the needs of the participating
annotation models, hence it is also referred to as \"E(xtended)-EAGLES\"
ontology.

-   [E-EAGLES](http://141.89.100.105/owl-docu/e-eagles.html) ontology
    \[[owl](http://141.89.100.105/owl2/e-eagles.owl)\]

The annotation models are then mapped onto the categories specified in
the reference model by means of conceptual subsumption (rdfs:subClassOf,
rdfs:subPropertyOf). This mapping is specified in separate \"linking
files\", thus making both the reference model and the annotation models
independent and self-contained ontologies.

-   [STTS E-EAGLES linking](http://141.89.100.105/owl-docu/stts.html)
    \[[owl](http://141.89.100.105/owl2/stts-link.rdf)\]

-   [SUSANNE E-EAGLES linking](http://141.89.100.105/owl-docu/susa.html)
    \[[owl](http://141.89.100.105/owl2/susa-link.rdf)\]

-   [Uppsala E-EAGLES linking](http://141.89.100.105/owl-docu/russ.html)
    \[[owl](http://141.89.100.105/owl2/russ-link.rdf)\]

The \"reference model\", however, does not specify authoritative
definitions for existing terminology, but only a fairly traditional view
on it. Hence, its primary function is *not* to provide prescriptive
definitions of terms, but only to provide a reference point for the
participating annotation models. Whenever a more reliable ontology of
linguistic terminology will be developed (e.g. revised versions of the
[General Ontology of Linguistic
Description](http://www.linguistics-ontology.org/) (GOLD) or [the
grammis ontology](http://www.ids-mannheim.de/grammis/)), the reference
model can be linked with it in the same way as the annotation models are
linked with the reference model, and thus mediate between such an
external reference model and the annotation models. In this sense, the
reference model serves as an interface to the annotation model, and it
could be better termed \"interface model\".

-   an exemplary implementation of the linking of E-EAGLES with an an
    extended version of GOLD, v.0.3 as an external reference model
    \[[owl](http://141.89.100.105/owl2/e-gold.rdf)\]

## Ontology-based corpus querying {#ontology-based-corpus-querying .western}

Besides the purely documentation function of the ontologies, the
specifications in the ontology can be used for **tag-set neutral corpus
querying**. In essence, this means that expressions from the ontology
can be directly used for corpus queries. As an example, a user may enter
the query

*PossessivePronoun and hasNumber(Singular) and hasGender(Neuter) and
hasCase(Genitive)*

\
\

instead of the SUSANNE tag

\
\

*APPGh1*

Of course, *APPGh1* is shorter, but it is a cryptic and idiosyncratic
abbreviation, and knowing about the function of *APPGh1* in SUSANNE
helps nothing when searching for the corresponding items in, say, the
Uppsala corpus, where the same query expands to

*[pronomen_pos_1p_gen_sg_neut_opl \|
]{lang="en-GB"}pronomen_pos_2p_gen_sg_neut_opl [\| \...]{lang="en-GB"}*

Especially, this kind of ontology-based corpus querying can thus allow
researchers unfamiliar with a certain resource to take a first glance at
a corpus with an unknown tag set without having to spend to much efforts
in locating and consuming the annotation documentation. Hence, the bias
for re-usability of existing resources is substantially lowered.

For ontology-based corpus querying, the OntoClient is developed, a
JAVA-package that works as a pre-processor for corpus queries. Given a
certain string, the OntoClient replaces ontology-sensitive sub-strings
with the disjunction of tags retrieved as instances which satisfy the
criteria specified in the ontology-sensitive sub-string.

The output of the OntoClient is highly configurable, and thus, it can be
easily applied to practically any kind of existing corpus query
interface.

-   Currently, we have implemented a prototype for an ontology-sensitive
    CQP interface.

-   At the GLDV Frühjahrstagung 2007, Christian Chiarcos and Michael
    Götze presented the integration of the OntoClient with the ANNIS.

-   At the RaNLP 2007, Georg Rehm, Richard Eckart and Christian Chiarcos
    will present the application of the OntoClient as a pre-processor
    for XQuery templates.
