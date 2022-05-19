The **Ontologies of Linguistic Annotation (OLiA)** are a repository of
linguistic data categories used for

-   corpus annotation,
-   Natural Language Processing (NLP) tools,
-   machine-readable dictionaries,
-   and other linguistic resources

They formalize application-specific terms (e.g., an annotation scheme)
as OWL2/DL ontologies, and provide a declarative linking with an
application-independent **Reference Model** that then serves as a
mediator to different community-maintained terminology repositories such
as GOLD and ISOcat. In this function, they will serve as a central hub
for linguistic data categories within the emerging [Linguistic Linked
Open Data cloud](http://linguistics.okfn.org/resources/llod/). OLiA
provides Annotation Models for linguistic annotations and NLP tools for
**more than 85 languages** together with their linking to a common
**Reference Model** that provides their respective terms and concepts.

The OLiA ontologies are being developed at the [Applied Computational
Linguistics (ACoLi) Lab at the Goethe University Frankfurt,
Germany](http://www.acoli.informatik.uni-frankfurt.de/). Earlier
development took place in the context of Collaborative Research Center
\"Linguistic Data Structures\", (SFB 441/C2) in a collaborative effort
of the universities of Tübingen, Hamburg, Potsdam, HU Berlin
(2005-2008), and subsequently, at the Collaborative Research Center
\"Information Structure\" (SFB 632/D1) with participation of the
University Potsdam and the Humboldt-University Berlin (since 2007). The
original goal was to document and to formalize linguistic categories for
all language resources of the linguistic collaborative research centers
existing at the time. Later on, different applications in corpus
linguistics, natural language processing and the Semantic Web have been
developed.

Via its public repository, OLiA provides Annotation Models for
**more than 75 different languages** or language stages covering
**morphology, morphosyntax, phrase structure syntax, dependency syntax,
aspects of semantics, as well as recent extensions to discourse,
information structure and anaphora annotation**. Additional OLiA
annotation models externally hosted and/or provided include

-   language-specific editions of the Universal Dependencies (version
    1.3, in Filip Ginter\'s [fork of the UD
    documentation](http://fginter.github.io/docs/)), covering 54
    treebanks and 40 languages.
-   [Resources for Korean
    NLP2RDF](http://semanticweb.kaist.ac.kr/nlp2rdf/resource/) with
    Annotation and Linking Models for the Korean Sejong Treebank by
    Younggyun Hahm and Key-Sun Choi
-   [MULTEXT-East morphosyntactic specifications for corpora and
    lexicons](http://nl.ijs.si/ME/owl/) in 16 (mostly) Eastern European
    languages, developed by Christian Chiarcos and Tomas Erjavec

Below, links to external resources are marked with (\*).

OLiA is used in a number of projects and resources, including

-   **W3C Ontology-Lexica Community Group** (OntoLex) who develops
    models for the representation of lexica (and machine readable
    dictionaries) relative to ontologies
    \[[OntoLex](Ontology-Lexica%20Community%20Group), [OntoLex lemon
    model
    specifications](http://www.w3.org/community/ontolex/wiki/Final_Model_Specification)\]
-   **MULTEXT-East** morphosyntactic specifications for corpora and
    lexicons in 16 (mostly) Eastern European languages \[[Ontology for
    MULTEXT-East](http://nl.ijs.si/ME/owl/)\]
-   **lemonUby**, the Linked Open Data edition of UBY, a large-scale
    lexical-semantic resource currently comprising 10 major NLP
    resources for English and German (WordNet/GermaNet, Wiktionary,
    Wikipedia, FrameNet, VerbNet, IMSLex-Subcat, OmegaWiki)
    \[[lemonUby](http://www.lemon-model.net/lexica/uby/),
    [UBY](https://www.ukp.tu-darmstadt.de/data/lexical-resources/uby)\]
-   **Apache Stanbol**, a project to develop reusable components for
    semantic content management \[[Apache
    Stanbol](https://stanbol.apache.org/), [NLP
    specifications](https://stanbol.apache.org/docs/trunk/components/enhancer/nlp/nlpannotations)\]
-   **NLP Interchange Format (NIF)**, a community project developing
    RDF-based specifications for NLP tools, webservices and pipelines in
    the NLP2RDF system \[[NLP2RDF](http://site.nlp2rdf.org/), [NIF core
    specifications](http://persistence.uni-leipzig.org/nlp2rdf/ontologies/nif-core/nif-core.html)\]
-   **POWLA**, a scheme for annotated corpora, an OWL2/DL representation
    of PAULA, the Potsdamer Austauschformat Linguistischer Annotationen
    (Potsdam Exchange Format of Linguistic Annotations), originally a
    XML standoff data model underlying the development of the corpus
    information system ANNIS
    \[[POWLA](http://sourceforge.net/projects/powla/),
    [PAULA](https://www.sfb632.uni-potsdam.de/en/paula.html),
    [ANNIS](http://www.sfb632.uni-potsdam.de/annis/), [POWLA-based
    Information Extraction](http://www.aclweb.org/anthology/W13-5208)\]
-   The **Lin\|gu\|is\|tik portal**
    ([linguistik.de](http://linguistik.de)) is a library portal that
    provides a near-exhaustive bibliography for the field of general
    linguistics. Here, OLiA serves as conceptual reference for the
    Bibliography of Linguistic Literature (BLL) ontology, see
    [here](#bll) for details.
-   Other applications include the general use of the OLiA Reference
    Model as a reference vocabulary for linguistic data categories in
    the Linguistic Linked Open Data cloud, e.g.,
    -   OLiA is used for **philological resources**, e.g., the [Linked
        Old Germanic Dictionaries](http://datahub.io/de/dataset/germlex)
        (lexical resources for, e.g., Gothic, Old/Middle/Early Modern
        High German, Old/Middle English and Middle Dutch).

This page enumerates the ontologies that are currently available. The
ontologies are released under a Creative Commons Attribution licence
CC-BY with reference to

> Christian Chiarcos, and Maria Sukhareva (2015). [OLiA - Ontologies of Linguistic Annotation](http://semantic-web-journal.net/content/olia-%E2%80%93-ontologies-linguistic-annotation), *SWJ (Semantic Web Journal)* 6(4): 379-386.

As further reference, see our [ontology-relevant
publications](http://www.acoli.informatik.uni-frankfurt.de/papers.xml),
and some remarks [on the background of the OLiA
ontologies](ontologies-background.html). Besides the ontologies listed
below, there are a number of experimental ontologies, including the
[OLiA Discourse Extensions](http://purl.org/olia/discourse/), further
annotation schemes, the linking with GOLD and the ISO TC37/SC4 Data
Category Registry. For enquiries with respect to these lease contact
[Christian
Chiarcos](mailto://FIRSTNAME_IN_LOWERCASE%20%5BDOT%5D%20LASTNAME_IN_LOWERCASE%20%5BAT%5D%20web%20%5BDOT%5D%20de).

The OLiA architecture is a set of modular OWL/DL ontologies with
ontological models of annotation schemes (**Annotation Models**) on the
one hand, an ontology of reference terms (**Reference Model**) on the
other hand, and ontologies (**Linking Models**) that implement
subClassOf relationships between them.

For convenient viewing the ontologies, we provide a partial **[static
HTML export](html)** of the [OLiA Reference Model](html), and the [OLiA
Discourse Extensions](../discourse/html). Note that these do not include
Annotation and Linking Models.

For **interactive browsing** the OLiA ontologies, we recommend
[Protégé](http://protege.stanford.edu), an ontology browser and editor
(available both as web and java edition, the latter requires local
installation). For browsing the ontologies copy and paste the URLs given
below.

For external references, we recommend to refer to the individual modules using 
[the official Purl URL](http://purl.org/olia/). 
Until a change in version number (we are still at 0.x), OLiA
development is strictly *downward compatible*, i.e., new concepts may be
added, but existing concepts are *never* deleted, but only marked as
deprecated.

# OLiA Reference Model


|	Module	|	phenomenon	|	OWL/DL models	|
|	 ---	|	 ---	|	 ---	|
|	OLiA Reference Model for morphosyntax, morphology and syntax	|	morphosyntax, morphology and syntax	|	<http://purl.org/olia/olia.owl>	|
|	OLiA Reference Model for discourse structure	|	discourse structure, discourse relations	|	see [discourse extensions](../discourse)	|
|	OLiA Reference Model for information structure	|	information structure, information status, coreference	|	see [discourse extensions](../discourse)	|
|	OLiA System Ontology	|	basic annotation data structures	|	<http://purl.org/olia/system.owl>	|
|	OLiA Top-Level Ontology	|	top-level concepts of the OLiA Reference Model for morphosyntax, morphology and syntax	|	<http://purl.org/olia/olia-top.owl>	|


# OLiA Annotation Models for morphology, morphosyntax and syntax

Cross-linguistically applicable schemes include:

	+-----------------+-----------------+-----------------+-----------------+
	| tagset / NLP    | phenomenon      | languages       | OWL/DL models   |
	| tool            |                 |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | parts of        | \> 30           | [Annotation     |
	| annotation      | speech,         | typologically   | Model](htt      |
	| standard        | glosses, chunk  | different       | p://purl.org/ol |
	| (Dipper et al.  | labels,         | languages,      | ia/sfb632.owl), |
	| 2008)           | grammatical     | including many  | [Linking        |
	|                 | functions       | African         | Model](http://  |
	|                 | (phonology,     | languages       | purl.org/olia/s |
	|                 | information     |                 | fb632-link.rdf) |
	|                 | structure)      |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| EAGLES          | morphosyntax    | 11 EU           | [Annotation     |
	| r               |                 | languages,      | Model](htt      |
	| ecommendations\ |                 | incl. Romance,  | p://purl.org/ol |
	| (Leech and      |                 | Germanic, Greek | ia/eagles.owl), |
	| Wilson 1996)    |                 | and Irish       | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/e |
	|                 |                 |                 | agles-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Connexor        | morphosyntax,   | 10 European     | [Annotation     |
	| dependency      | morphology,     | languages,      | Model](http:    |
	| parser          | dependency      | incl. Romance,  | //purl.org/olia |
	|                 | syntax          | Germanic and    | /connexor.owl), |
	|                 |                 | Uralic          | [Linking        |
	|                 |                 | languages       | M               |
	|                 |                 |                 | odel](http://pu |
	|                 |                 |                 | rl.org/olia/con |
	|                 |                 |                 | nexor-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| MULTEXT-East    | morphosyntax,   | 15 mostly       | [Annotation     |
	|                 | morphology      | Eastern         | Model (common   |
	|                 |                 | European        | spe             |
	|                 |                 | languages,      | cifications)](h |
	|                 |                 | incl. Slavic,   | ttp://nl.ijs.si |
	|                 |                 | Romance, Uralic | /ME/owl/multext |
	|                 |                 | languages and   | -east.owl)(\*), |
	|                 |                 | Persian         | [Linking        |
	|                 |                 |                 | Mode            |
	|                 |                 |                 | l](http://nl.ij |
	|                 |                 |                 | s.si/ME/owl/mte |
	|                 |                 |                 | -link.rdf)(\*); |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model (all      |
	|                 |                 |                 | lang            |
	|                 |                 |                 | uages)](http:// |
	|                 |                 |                 | nl.ijs.si/ME/ow |
	|                 |                 |                 | l/all.owl)(\*), |
	|                 |                 |                 | see [project    |
	|                 |                 |                 | page](http://nl |
	|                 |                 |                 | .ijs.si/ME/owl) |
	|                 |                 |                 | and below for   |
	|                 |                 |                 | individual      |
	|                 |                 |                 | languages       |
	+-----------------+-----------------+-----------------+-----------------+
	| IL-POSTS        | morphosyntax    | languages of    | [Annotation     |
	| tagset\         |                 | the Indian      | Model](http     |
	| Baskaran et al. |                 | subcontinent    | ://purl.org/oli |
	| (2008)          |                 |                 | a/ilposts.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/il |
	|                 |                 |                 | posts-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| AnnCorra\       | morphosyntax,   | languages of    | [Annotation     |
	| Bharati et al.  | chunks          | the Indian      | Model](http     |
	| (2006)          |                 | subcontinent    | ://purl.org/oli |
	|                 |                 |                 | a/ancorra.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/an |
	|                 |                 |                 | corra-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| IIIT tagset\    | morphosyntax    | languages of    | [Annotation     |
	| IIT (2007)      |                 | the Indian      | Model](h        |
	|                 |                 | subcontinent    | ttp://purl.org/ |
	|                 |                 |                 | olia/iiit.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /iiit-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| PROIEL          | morphosyntax,   | Older           | [Annotation     |
	|                 | dependency      | Indo-European   | Model](htt      |
	|                 | syntax          | languages       | p://purl.org/ol |
	|                 |                 | (Greek, Latin,  | ia/proiel.owl), |
	|                 |                 | Gothic,         | [Linking        |
	|                 |                 | Classical       | Model](http://  |
	|                 |                 | Armenian, Old   | purl.org/olia/p |
	|                 |                 | Church          | roiel-link.rdf) |
	|                 |                 | Slavonic,       |                 |
	|                 |                 | others          |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Universal       | parts of speech | various         | (for            |
	| Dependencies    |                 | languages       | la              |
	| (POS)           |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model ABoxes    |
	|                 |                 |                 | see below)      |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Universal       | morphosyntax    | various         | (for            |
	| Dependencies    |                 | languages       | la              |
	| (features)      |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model ABoxes    |
	|                 |                 |                 | see below)      |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Universal       | dependency      | various         | (for            |
	| Dependencies    | syntax          | languages       | la              |
	| (relations)     |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model ABoxes    |
	|                 |                 |                 | see below)      |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+


## English

tagset / NLP tool
:::

phenomenon

OWL/DL models

Brown corpus tagset

morphosyntax

[Annotation Model](http://purl.org/olia/brown.owl), [Linking
Model](http://purl.org/olia/brown-link.rdf)

Connexor dependency parser

morphosyntax, morphology, dependency syntax

[Annotation Model](http://purl.org/olia/connexor.owl), [Linking
Model](http://purl.org/olia/connexor-link.rdf)

EAGLES recommendations (English)\
(Leech and Wilson 1996)

morphosyntax

[Annotation Model](http://purl.org/olia/eagles.owl), [Linking
Model](http://purl.org/olia/eagles-link.rdf)

GENIA corpus

morphosyntax

[Annotation Model](http://purl.org/olia/genia.owl), [Linking
Model](http://purl.org/olia/genia-link.rdf)

MULTEXT-East (English)

morphosyntax

[Annotation Model](http://nl.ijs.si/ME/owl/msd-en.owl)(\*), [Linking
Model](http://nl.ijs.si/ME/owl/msd-en-link.rdf)(\*)

Penn Treebank

morphosyntax

[Annotation Model](http://purl.org/olia/penn.owl), [Linking
Model](http://purl.org/olia/penn-link.rdf)

 

syntax

[Annotation Model](http://purl.org/olia/penn-syntax.owl), [Linking
Model](http://purl.org/olia/penn-syntax-link.rdf)

QTag

morphosyntax

[Annotation Model](http://purl.org/olia/qtag.owl), [Linking
Model](http://purl.org/olia/qtag-link.rdf)

Stanford dependency parser

dependency syntac

[Annotation Model](http://purl.org/olia/stanford.owl), [Linking
Model](http://purl.org/olia/stanford-link.rdf)

Susanne corpus

morphosyntax

[Annotation Model](http://purl.org/olia/susa.owl), [Linking
Model](http://purl.org/olia/susa-link.rdf)

English UD POS

parts of speech

[language-specific Annotation Model
ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),
[Annotation Model
TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),
[Linking Model](http://purl.org/olia/ud-pos-link.rdf)

English UD features

morphosyntax

[language-specific Annotation Model
ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),
[Annotation Model
TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)

English UD dependencies

dependency syntax

[language-specific Annotation Model
ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),
[Annotation Model
TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),
[Linking Model](http://purl.org/olia/ud-pos-link.rdf)

## German

	+-----------------------+-----------------------+-----------------------+
	| tagset / NLP tool     | phenomenon            | OWL/DL models         |
	+-----------------------+-----------------------+-----------------------+
	| Connexor dependency   | morphosyntax,         | [Annotation           |
	| parser                | morphology,           | Model](http://purl.or |
	|                       | dependency syntax     | g/olia/connexor.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Mode                  |
	|                       |                       | l](http://purl.org/ol |
	|                       |                       | ia/connexor-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| EAGLES                | morphosyntax          | [Annotation           |
	| recommendations       |                       | Model](http://purl.   |
	| (German)\             |                       | org/olia/eagles.owl), |
	| (Leech and Wilson     |                       | [Linking              |
	| 1996)                 |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/eagles-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| Morphisto             | morphology            | [Annotation           |
	|                       |                       | M                     |
	|                       |                       | odel](http://purl.org |
	|                       |                       | /olia/morphisto.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Model                 |
	|                       |                       | ](http://purl.org/oli |
	|                       |                       | a/morphisto-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| STTS                  | morphosyntax          | [Annotation           |
	|                       |                       | Model](http://pur     |
	|                       |                       | l.org/olia/stts.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Model](http://purl.or |
	|                       |                       | g/olia/stts-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| TIGER/NEGRA           | morphology            | [Annotation           |
	|                       |                       | Model](http://purl    |
	|                       |                       | .org/olia/tiger.owl), |
	|                       |                       | [Linking              |
	|                       |                       | M                     |
	|                       |                       | odel](http://purl.org |
	|                       |                       | /olia/tiger-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	|                       | constituent syntax    | [Annotation           |
	|                       |                       | Mode                  |
	|                       |                       | l](http://purl.org/ol |
	|                       |                       | ia/tiger-syntax.owl), |
	|                       |                       | [Linking              |
	|                       |                       | M                     |
	|                       |                       | odel](http://purl.org |
	|                       |                       | /olia/tiger-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| TreeTagger Chunker    | chunk labels          | [Annotation           |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/treetagger.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Model]                |
	|                       |                       | (http://purl.org/olia |
	|                       |                       | /treetagger-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| German UD POS         | parts of speech       | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/de/po |
	|                       |                       | s/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.    |
	|                       |                       | w3.org/2012/pyRdfa/ex |
	|                       |                       | tract?uri=http://fgin |
	|                       |                       | ter.github.io/docs/u/ |
	|                       |                       | pos/all.html&format=x |
	|                       |                       | ml&rdfagraph=output&v |
	|                       |                       | ocab_expansion=false& |
	|                       |                       | rdfa_lite=false&embed |
	|                       |                       | ded_rdf=true&space_pr |
	|                       |                       | eserve=false&vocab_ca |
	|                       |                       | che=true&vocab_cache_ |
	|                       |                       | report=false&vocab_ca |
	|                       |                       | che_refresh=false)\*, |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| German UD features    | morphosyntax          | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | A                     |
	|                       |                       | Box](https://www.w3.o |
	|                       |                       | rg/2012/pyRdfa/extrac |
	|                       |                       | t?uri=http://fginter. |
	|                       |                       | github.io/docs/de/fea |
	|                       |                       | t/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/fe |
	|                       |                       | at/all.html&format=xm |
	|                       |                       | l&rdfagraph=output&vo |
	|                       |                       | cab_expansion=false&r |
	|                       |                       | dfa_lite=false&embedd |
	|                       |                       | ed_rdf=true&space_pre |
	|                       |                       | serve=false&vocab_cac |
	|                       |                       | he=true&vocab_cache_r |
	|                       |                       | eport=false&vocab_cac |
	|                       |                       | he_refresh=false)(\*) |
	+-----------------------+-----------------------+-----------------------+
	| German UD             | dependency syntax     | [language-specific    |
	| dependencies          |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/de/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| RFTagger              | morphosyntax,         | t.b.a                 |
	|                       | morphology            |                       |
	+-----------------------+-----------------------+-----------------------+


## Other Germanic languages

	+-----------------+-----------------+-----------------+-----------------+
	| tagset/NLP tool | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| EAGLES          | Danish, Dutch,  | morphosyntax;   | [Annotation     |
	| r               | Swedish (and    | inflectional    | Model](htt      |
	| ecommendations\ | several         | morphology      | p://purl.org/ol |
	| (Leech and      | non-Germanic    |                 | ia/eagles.owl), |
	| Wilson 1996)    | languages)      |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/e |
	|                 |                 |                 | agles-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Danish UD POS   | Danish          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /da/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Danish UD       | Danish          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | da/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Danish UD       | Danish          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /da/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /am/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Alpino          | Dutch           | morphosyntax    | [Annotation     |
	|                 |                 | (POS)           | Model](htt      |
	|                 |                 |                 | p://purl.org/ol |
	|                 |                 |                 | ia/alpino.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/a |
	|                 |                 |                 | lpino-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Lassy           | Dutch           | morphosyntax    | [Annotation     |
	|                 |                 | (POS)           | Model](http://p |
	|                 |                 |                 | url.org/olia/la |
	|                 |                 |                 | ssy-short.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Mode            |
	|                 |                 |                 | l](http://purl. |
	|                 |                 |                 | org/olia/lassy- |
	|                 |                 |                 | short-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Dutch UD POS    | Dutch           | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /nl/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Dutch UD        | Dutch           | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | nl/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Dutch UD        | Dutch           | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /nl/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /am/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Norwegian UD    | Norwegian       | parts of speech | [la             |
	| POS             |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /no/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Norwegian UD    | Norwegian       | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | no/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Norwegian UD    | Norwegian       | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /no/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Mamba lexical   | Swedish         | morphosyntax    | [Annotation     |
	| categories      |                 | (POS)           | Model](ht       |
	|                 |                 |                 | tp://purl.org/o |
	|                 |                 |                 | lia/mamba.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:/   |
	|                 |                 |                 | /purl.org/olia/ |
	|                 |                 |                 | mamba-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Mamba           | Swedish         | dependency      | [Annotation     |
	| dependencies    |                 | syntax          | M               |
	|                 |                 |                 | odel](http://pu |
	|                 |                 |                 | rl.org/olia/mam |
	|                 |                 |                 | ba-syntax.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ](http://purl.o |
	|                 |                 |                 | rg/olia/mamba-s |
	|                 |                 |                 | yntax-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| S               | Swedish         | morphosyntax    | [Annotation     |
	| tockholm---Umeå |                 |                 | Model](         |
	| Corpus (SUC     |                 |                 | http://purl.org |
	| 2.0)            |                 |                 | /olia/suc.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http     |
	|                 |                 |                 | ://purl.org/oli |
	|                 |                 |                 | a/suc-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Swedish UD POS  | Swedish         | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /sv/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Swedish UD      | Swedish         | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | sv/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Swedish UD      | Swedish         | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /sv/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Connexor        | Dutch, Swedish, | morphosyntax,   | [Annotation     |
	|                 | Danish,         | morphology,     | Model](http:    |
	|                 | Norwegian       | dependency      | //purl.org/olia |
	|                 |                 | syntax          | /connexor.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | M               |
	|                 |                 |                 | odel](http://pu |
	|                 |                 |                 | rl.org/olia/con |
	|                 |                 |                 | nexor-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Dutch (among    | parts of        | [Annotation     |
	| annotation      | other           | speech,         | Model](htt      |
	| standard\       | languages)\     | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | ([SFB           | labels,         | ia/sfb632.owl), |
	| 2008)           | 632](ht         | grammatical     | [Linking        |
	|                 | tp://www.sfb632 | functions       | Model](http://  |
	|                 | .uni-potsdam.de | (phonology,     | purl.org/olia/s |
	|                 | /corpora.html), | information     | fb632-link.rdf) |
	|                 | [project        | structure)      |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| PPCME2 POS tags | Middle English  | morphosyntax    | [Annotation     |
	|                 |                 |                 | Model](htt      |
	|                 |                 |                 | p://purl.org/ol |
	|                 |                 |                 | ia/ppcme2.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/p |
	|                 |                 |                 | pcme2-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| YCOE POS tags   | Old English     | morphosyntax    | [Annotation     |
	|                 |                 |                 | Model](h        |
	|                 |                 |                 | ttp://purl.org/ |
	|                 |                 |                 | olia/ycoe.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /ycoe-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| MENOTA          | Old Norse       | morphosyntax    | [Annotation     |
	| (incomplete)    |                 |                 | Model](h        |
	|                 |                 |                 | ttp://purl.org/ |
	|                 |                 |                 | olia/meno.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /meno-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| T-CODEX         | Old High German | morphosyntax,   | [Annotation     |
	|                 |                 | syntax,         | Model](htt      |
	|                 |                 | information     | p://purl.org/ol |
	|                 |                 | structure       | ia/tcodex.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/t |
	|                 |                 |                 | codex-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| PROIEL          | Gothic (and     | morphosyntax,   | [Annotation     |
	|                 | others)         | dependency      | Model](htt      |
	|                 |                 | syntax          | p://purl.org/ol |
	|                 |                 |                 | ia/proiel.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/p |
	|                 |                 |                 | roiel-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Gothic UD POS   | Gothic          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | got/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Gothic UD       | Gothic          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox]           |
	|                 |                 |                 | (https://www.w3 |
	|                 |                 |                 | .org/2012/pyRdf |
	|                 |                 |                 | a/extract?uri=h |
	|                 |                 |                 | ttp://fginter.g |
	|                 |                 |                 | ithub.io/docs/g |
	|                 |                 |                 | ot/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Gothic UD       | Gothic          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | got/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Russian

	+-----------------------+-----------------------+-----------------------+
	| tagset / NLP tool     | phenomenon            | OWL/DL models         |
	+-----------------------+-----------------------+-----------------------+
	| Uppsala corpus tagset | morphosyntax,         | [Annotation           |
	|                       | morphology            | Model](http://pur     |
	|                       |                       | l.org/olia/russ.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Model](http://purl.or |
	|                       |                       | g/olia/russ-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| Russian TreeTagger\   | morphosyntax          | [Annotation           |
	| (Serge Sharoff)       |                       | M                     |
	|                       |                       | odel](http://purl.org |
	|                       |                       | /olia/russleeds.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Model                 |
	|                       |                       | ](http://purl.org/oli |
	|                       |                       | a/russleeds-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| MULTEXT-East for      | morphosyntax,         | [Annotation           |
	| Russian               | morphology            | Model                 |
	|                       |                       | ](http://nl.ijs.si/ME |
	|                       |                       | /owl/msd-ru.owl)(\*), |
	|                       |                       | [Linking              |
	|                       |                       | Model](ht             |
	|                       |                       | tp://nl.ijs.si/ME/owl |
	|                       |                       | /msd-ru-link.rdf)(\*) |
	+-----------------------+-----------------------+-----------------------+
	| Russian UD POS        | parts of speech       | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/ru/po |
	|                       |                       | s/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.    |
	|                       |                       | w3.org/2012/pyRdfa/ex |
	|                       |                       | tract?uri=http://fgin |
	|                       |                       | ter.github.io/docs/u/ |
	|                       |                       | pos/all.html&format=x |
	|                       |                       | ml&rdfagraph=output&v |
	|                       |                       | ocab_expansion=false& |
	|                       |                       | rdfa_lite=false&embed |
	|                       |                       | ded_rdf=true&space_pr |
	|                       |                       | eserve=false&vocab_ca |
	|                       |                       | che=true&vocab_cache_ |
	|                       |                       | report=false&vocab_ca |
	|                       |                       | che_refresh=false)\*, |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| Russian UD features   | morphosyntax          | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | A                     |
	|                       |                       | Box](https://www.w3.o |
	|                       |                       | rg/2012/pyRdfa/extrac |
	|                       |                       | t?uri=http://fginter. |
	|                       |                       | github.io/docs/ru/fea |
	|                       |                       | t/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/fe |
	|                       |                       | at/all.html&format=xm |
	|                       |                       | l&rdfagraph=output&vo |
	|                       |                       | cab_expansion=false&r |
	|                       |                       | dfa_lite=false&embedd |
	|                       |                       | ed_rdf=true&space_pre |
	|                       |                       | serve=false&vocab_cac |
	|                       |                       | he=true&vocab_cache_r |
	|                       |                       | eport=false&vocab_cac |
	|                       |                       | he_refresh=false)(\*) |
	+-----------------------+-----------------------+-----------------------+
	| Russian UD            | dependency syntax     | [language-specific    |
	| dependencies          |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/ru/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+

 

## Other Slavic and Baltic languages


|	tagset / NLP tool	|	language	|	phenomenon	|	OWL/DL models	|
|	 ---	|	 ---	|	 ---	|	 ---	|
|	MULTEXT-East	|	Bulgarian	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-bg.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-bg-link.rdf)(\*)	|
|	Bulgarian UD POS	|	Bulgarian	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/bg/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Bulgarian UD features	|	Bulgarian	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/bg/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Bulgarian UD dependencies	|	Bulgarian	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/bg/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Croatian UD POS	|	Croatian	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hr/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Croatian UD features	|	Croatian	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hr/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Croatian UD dependencies	|	Croatian	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hr/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	MULTEXT-East	|	Czech	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-cs.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-cs-link.rdf)(\*)	|
|	Czech UD POS	|	Czech	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cs/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Czech UD features	|	Czech	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cs/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Czech UD dependencies	|	Czech	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cs/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Latvian UD POS	|	Latvian	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/lv/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Latvian UD features	|	Latvian	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/lv/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Latvian UD dependencies	|	Latvian	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/lv/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	MULTEXT-East	|	Macedonian	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-mk.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-mk-link.rdf)(\*)	|
|	MULTEXT-East	|	Polish	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-pl.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-pl-link.rdf)(\*)	|
|	Polish UD POS	|	Polish	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pl/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Polish UD features	|	Polish	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pl/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Polish UD dependencies	|	Polish	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pl/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	MULTEXT-East	|	Serbian	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-sr.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-sr-link.rdf)(\*)	|
|	MULTEXT-East	|	Slovak	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-sk.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-sk-link.rdf)(\*)	|
|	MULTEXT-East	|	Slovene	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-sl.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-sl-link.rdf)(\*)	|
|	MULTEXT-East	|	Resian (Slovene spoken in Italy)	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-sl-rozaj.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-sl-rozaj-link.rdf)(\*)	|
|	Slovenian UD POS	|	Slovene	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sl/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Slovenian UD features	|	Slovene	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sl/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Slovenian UD dependencies	|	Slovene	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sl/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	MULTEXT-East	|	Ukrainian	|	morphosyntax, morphology	|	[Annotation Model](http://nl.ijs.si/ME/owl/msd-uk.owl),(\*) [Linking Model](http://nl.ijs.si/ME/owl/msd-uk-link.rdf)(\*)	|
|	Ukrainian UD POS	|	Ukrainian	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/uk/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Ukrainian UD features	|	Ukrainian	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/uk/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Ukrainian UD dependencies	|	Ukrainian	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/uk/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	PROIEL	|	Old Church Slavonic (and others)	|	morphosyntax, dependency syntax	|	[Annotation Model](http://purl.org/olia/proiel.owl), [Linking Model](http://purl.org/olia/proiel-link.rdf)	|
|	Old Church Slavonic UD POS	|	Old Church Slavonic	|	parts of speech	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cu/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|
|	Old Church Slavonic UD features	|	Old Church Slavonic	|	morphosyntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cu/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*)	|
|	Old Church Slavonic UD dependencies	|	Old Church Slavonic	|	dependency syntax	|	[language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cu/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf)	|


## French

	+-----------------------+-----------------------+-----------------------+
	| tagset / NLP tool     | phenomenon            | OWL/DL models         |
	+-----------------------+-----------------------+-----------------------+
	| EAGLES                | morphosyntax          | [Annotation           |
	| recommendations\      |                       | Model](http://purl.   |
	| (Leech and Wilson     |                       | org/olia/eagles.owl), |
	| 1996)                 |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/eagles-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| French TreeTagger\    | morphosyntax          | [Annotation           |
	| (Achim Stein)         |                       | Model](http://purl.or |
	|                       |                       | g/olia/french-tt.owl) |
	+-----------------------+-----------------------+-----------------------+
	| Le Monde corpus\      | morphosyntax          | [Annotation           |
	| (Abeillé et al. 2000) |                       | Model](http://purl    |
	|                       |                       | .org/olia/french.owl) |
	+-----------------------+-----------------------+-----------------------+
	| Connexor              | morphosyntax,         | [Annotation           |
	|                       | morphology,           | Model](http://purl.or |
	|                       | dependency syntax     | g/olia/connexor.owl), |
	|                       |                       | [Linking              |
	|                       |                       | Mode                  |
	|                       |                       | l](http://purl.org/ol |
	|                       |                       | ia/connexor-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| SFB632 annotation     | parts of speech,      | [Annotation           |
	| standard\             | glosses, chunk        | Model](http://purl.   |
	| (Dipper et al. 2008)  | labels, grammatical   | org/olia/sfb632.owl), |
	|                       | functions (phonology, | [Linking              |
	|                       | information           | Mo                    |
	|                       | structure) for        | del](http://purl.org/ |
	|                       | Canadian French       | olia/sfb632-link.rdf) |
	|                       | (among other          |                       |
	|                       | languages, [SFB       |                       |
	|                       | 632](http:            |                       |
	|                       | //www.sfb632.uni-pots |                       |
	|                       | dam.de/corpora.html), |                       |
	|                       | [project              |                       |
	|                       | D2](http://www.s      |                       |
	|                       | fb632.uni-potsdam.de/ |                       |
	|                       | projects_d2ger.html)) |                       |
	+-----------------------+-----------------------+-----------------------+
	| French UD POS         | parts of speech       | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/fr/po |
	|                       |                       | s/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.    |
	|                       |                       | w3.org/2012/pyRdfa/ex |
	|                       |                       | tract?uri=http://fgin |
	|                       |                       | ter.github.io/docs/u/ |
	|                       |                       | pos/all.html&format=x |
	|                       |                       | ml&rdfagraph=output&v |
	|                       |                       | ocab_expansion=false& |
	|                       |                       | rdfa_lite=false&embed |
	|                       |                       | ded_rdf=true&space_pr |
	|                       |                       | eserve=false&vocab_ca |
	|                       |                       | che=true&vocab_cache_ |
	|                       |                       | report=false&vocab_ca |
	|                       |                       | che_refresh=false)\*, |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+
	| French UD features    | morphosyntax          | [language-specific    |
	|                       |                       | Annotation Model      |
	|                       |                       | A                     |
	|                       |                       | Box](https://www.w3.o |
	|                       |                       | rg/2012/pyRdfa/extrac |
	|                       |                       | t?uri=http://fginter. |
	|                       |                       | github.io/docs/fr/fea |
	|                       |                       | t/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/fe |
	|                       |                       | at/all.html&format=xm |
	|                       |                       | l&rdfagraph=output&vo |
	|                       |                       | cab_expansion=false&r |
	|                       |                       | dfa_lite=false&embedd |
	|                       |                       | ed_rdf=true&space_pre |
	|                       |                       | serve=false&vocab_cac |
	|                       |                       | he=true&vocab_cache_r |
	|                       |                       | eport=false&vocab_cac |
	|                       |                       | he_refresh=false)(\*) |
	+-----------------------+-----------------------+-----------------------+
	| French UD             | dependency syntax     | [language-specific    |
	| dependencies          |                       | Annotation Model      |
	|                       |                       | ABox](https://www.w3. |
	|                       |                       | org/2012/pyRdfa/extra |
	|                       |                       | ct?uri=http://fginter |
	|                       |                       | .github.io/docs/fr/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Annotation Model     |
	|                       |                       | TBox](https://www.w3  |
	|                       |                       | .org/2012/pyRdfa/extr |
	|                       |                       | act?uri=http://fginte |
	|                       |                       | r.github.io/docs/u/de |
	|                       |                       | p/all.html&format=xml |
	|                       |                       | &rdfagraph=output&voc |
	|                       |                       | ab_expansion=false&rd |
	|                       |                       | fa_lite=false&embedde |
	|                       |                       | d_rdf=true&space_pres |
	|                       |                       | erve=false&vocab_cach |
	|                       |                       | e=true&vocab_cache_re |
	|                       |                       | port=false&vocab_cach |
	|                       |                       | e_refresh=false)(\*), |
	|                       |                       | [Linking              |
	|                       |                       | Mo                    |
	|                       |                       | del](http://purl.org/ |
	|                       |                       | olia/ud-pos-link.rdf) |
	+-----------------------+-----------------------+-----------------------+


## Other Romance and Italic languages

| tagset |  language |  phenomenon | OWL/DL models |
| ------ | ----------| ----------- | ------------- |
| PROIEL |  Latin (and others) | morphosyntax, dependency syntax | [Annotation Model](http://purl.org/olia/proiel.owl), [Linking Model](http://purl.org/olia/proiel-link.rdf) | 
| Latin UD POS | Latin | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/la/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |
| Latin UD features | Latin | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/la/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) |
| Latin UD dependencies | Latin | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/la/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |
| EAGLES recommendations (Leech and Wilson 1996) | Catalan, Portuguese, Spanish | morphosyntax | [Annotation Model](http://purl.org/olia/eagles.owl), [Linking Model](http://purl.org/olia/eagles-link.rdf) | 
| Connexor | Spanish, Italian | morphosyntax, morphology, dependency syntax | [Annotation Model](http://purl.org/olia/connexor.owl), [Linking Model](http://purl.org/olia/connexor-link.rdf) |
| PAROLE (http://nlp.lsi.upc.edu/freeling) | Spanish, Catalan | morphosyntax, inflectional morphology | [Annotation Model](http://purl.org/olia/parole_es_cat.owl) |
| Catalan UD POS | Catalan | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ca/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |
| Catalan UD features |  Catalan | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ca/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*),  [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) |
| Catalan UD dependencies | Catalan |  dependency syntax |  [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ca/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Galician UD POS | Galician | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/gl/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |
| Galician UD features | Galician | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/gl/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) | 
| Galician UD dependencies | Galician | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/gl/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Italian UD POS |  Italian | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/it/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Italian UD features | Italian |  morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/it/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) | 
| Italian UD dependencies | Italian | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/it/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Portuguese UD POS | Portuguese, Brazilian Portuguese | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pt/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Portuguese UD features | Portuguese, Brazilian Portuguese | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pt/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) | 
| Portuguese UD dependencies | Portuguese, Brazilian Portuguese | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/pt/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Spanish UD POS | Spanish |  parts of speech |  [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/es/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Spanish UD features | Spanish | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/es/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) | 
| Spanish UD dependencies | Spanish | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/es/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| MULTEXT-East | Romanian | morphosyntax, morphology | [Annotation Model](http://nl.ijs.si/ME/owl/msd-ro.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-ro-link.rdf)(\*) | 
| Romanian UD POS |  Romanian |  parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ro/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)\*, [Linking Model](http://purl.org/olia/ud-pos-link.rdf) | 
| Romanian UD features |  Romanian morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ro/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) |
| Romanian UD dependencies | Romanian | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ro/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |


## Uralic and Altaic

	+-----------------+-----------------+-----------------+-----------------+
	| tagset          | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| MULTEXT-East    | Estonian        | morphosyntax,   | [Annotation     |
	|                 |                 | morphology      | Mo              |
	|                 |                 |                 | del](http://nl. |
	|                 |                 |                 | ijs.si/ME/owl/m |
	|                 |                 |                 | sd-et.owl)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model]          |
	|                 |                 |                 | (http://nl.ijs. |
	|                 |                 |                 | si/ME/owl/msd-e |
	|                 |                 |                 | t-link.rdf)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Estonian UD POS | Estonian        | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /et/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Estonian UD     | Estonian        | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | et/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Estonian UD     | Estonian        | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /et/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /am/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Connexor        | Finnish         | morphosyntax,   | [Annotation     |
	|                 |                 | morphology,     | Model](http:    |
	|                 |                 | dependency      | //purl.org/olia |
	|                 |                 | syntax          | /connexor.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | M               |
	|                 |                 |                 | odel](http://pu |
	|                 |                 |                 | rl.org/olia/con |
	|                 |                 |                 | nexor-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Finnish UD POS  | Finnish         | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /fi/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Finnish UD      | Finnish         | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | fi/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Finnish UD      | Finnish         | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /fi/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| MULTEXT-East    | Hungarian       | morphosyntax,   | [Annotation     |
	|                 |                 | morphology      | Mo              |
	|                 |                 |                 | del](http://nl. |
	|                 |                 |                 | ijs.si/ME/owl/m |
	|                 |                 |                 | sd-hu.owl)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model]          |
	|                 |                 |                 | (http://nl.ijs. |
	|                 |                 |                 | si/ME/owl/msd-h |
	|                 |                 |                 | u-link.rdf)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Hungarian       | parts of        | [Annotation     |
	| annotation      | (among other    | speech,         | Model](htt      |
	| standard\       | languages)\     | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | ([SFB           | labels,         | ia/sfb632.owl), |
	| 2008)           | 632](ht         | grammatical     | [Linking        |
	|                 | tp://www.sfb632 | functions       | Model](http://  |
	|                 | .uni-potsdam.de | (phonology,     | purl.org/olia/s |
	|                 | /corpora.html), | information     | fb632-link.rdf) |
	|                 | [project        | structure)      |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Hungarian UD    | Hungarian       | parts of speech | [la             |
	| POS             |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /hu/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hungarian UD    | Hungarian       | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | hu/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hungarian UD    | Hungarian       | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /hu/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Kazakh UD POS   | Kazakh          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /kk/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Kazakh UD       | Kazakh          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | kk/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Kazakh UD       | Kazakh          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /kk/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Turkish POS     | Turkish         | morphosyntax    | [Annotation     |
	| tagset\         |                 |                 | Model](htt      |
	| (Oflazer et al. |                 |                 | p://purl.org/ol |
	| 2003)           |                 |                 | ia/turkish.owl) |
	+-----------------+-----------------+-----------------+-----------------+
	| Turkish UD POS  | Turkish         | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /tr/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Turkish UD      | Turkish         | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | tr/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Turkish UD      | Turkish         | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /tr/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Other European languages

	+-----------------+-----------------+-----------------+-----------------+
	| tagset          | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| EAGLES          | Modern Greek,   | morphosyntax    | [Annotation     |
	| r               | Irish (among    |                 | Model](htt      |
	| ecommendations\ | other EU        |                 | p://purl.org/ol |
	| (Leech and      | languages)      |                 | ia/eagles.owl), |
	| Wilson 1996)    |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/e |
	|                 |                 |                 | agles-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Georgian,       | parts of        | [Annotation     |
	| annotation      | Modern Greek    | speech,         | Model](htt      |
	| standard\       | (among other    | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | languages)\     | labels,         | ia/sfb632.owl), |
	| 2008)           | ([SFB           | grammatical     | [Linking        |
	|                 | 632](ht         | functions       | Model](http://  |
	|                 | tp://www.sfb632 | (phonology,     | purl.org/olia/s |
	|                 | .uni-potsdam.de | information     | fb632-link.rdf) |
	|                 | /corpora.html), | structure)      |                 |
	|                 | [project        |                 |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| PROIEL          | Ancient Greek,  | morphosyntax,   | [Annotation     |
	|                 | Classical       | dependency      | Model](htt      |
	|                 | Armenian (and   | syntax          | p://purl.org/ol |
	|                 | others)         |                 | ia/proiel.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/p |
	|                 |                 |                 | roiel-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Ancient Greek   | Ancient Greek   | parts of speech | [la             |
	| UD POS          |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | grc/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Ancient Greek   | Ancient Greek   | morphosyntax    | [la             |
	| UD features     |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox]           |
	|                 |                 |                 | (https://www.w3 |
	|                 |                 |                 | .org/2012/pyRdf |
	|                 |                 |                 | a/extract?uri=h |
	|                 |                 |                 | ttp://fginter.g |
	|                 |                 |                 | ithub.io/docs/g |
	|                 |                 |                 | rc/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Ancient Greek   | Ancient Greek   | dependency      | [la             |
	| UD dependencies |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | grc/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| EUSTagger\      | Basque          | morphosyntax    | [Annotation     |
	| Ezeiza et al.   |                 |                 | Model](ht       |
	| (1998)          |                 |                 | tp://purl.org/o |
	|                 |                 |                 | lia/basque.owl) |
	+-----------------+-----------------+-----------------+-----------------+
	| Basque UD POS   | Basque          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /eu/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Basque UD       | Basque          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | eu/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Basque UD       | Basque          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /eu/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Greek UD POS    | Greek           | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /el/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Greek UD        | Greek           | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | el/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Greek UD        | Greek           | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /el/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Irish UD POS    | Irish           | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ga/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Irish UD        | Irish           | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | ga/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Irish UD        | Irish           | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ga/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Indo-Iranian languages

	+-----------------+-----------------+-----------------+-----------------+
	| tagset          | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| Urdu EMILLE     | Urdu            | morphosyntax,   | [Annotation     |
	| tagset\         |                 | inflectional    | Model](htt      |
	| Hardie (2003,   |                 | morphology      | p://purl.org/ol |
	| 2004)           |                 |                 | ia/emille.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/e |
	|                 |                 |                 | mille-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Urdu tagset\    | Urdu            | morphosyntax    | [Annotation     |
	| Sajjad (2007)   |                 |                 | Model](h        |
	|                 |                 |                 | ttp://purl.org/ |
	|                 |                 |                 | olia/urdu.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /urdu-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| IL-POSTS        | Bangla, Hindi,  | morphosyntax,   | [Annotation     |
	| tagset\         | Marathi,        | inflectional    | Model](http     |
	| Baskaran et al. | Sanskrit        | morphology      | ://purl.org/oli |
	| (2008)          |                 |                 | a/ilposts.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/il |
	|                 |                 |                 | posts-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| AnnCorra\       | Bangla, Hindi   | morphosyntax,   | [Annotation     |
	| Bharati et al.  |                 | chunks          | Model](http     |
	| (2006)          |                 |                 | ://purl.org/oli |
	|                 |                 |                 | a/ancorra.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/an |
	|                 |                 |                 | corra-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| IIIT tagset\    | Hindi, Marathi  | morphosyntax    | [Annotation     |
	| IIIT (2007)     |                 |                 | Model](h        |
	|                 |                 |                 | ttp://purl.org/ |
	|                 |                 |                 | olia/iiit.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /iiit-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hindi UD POS    | Hindi           | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /hi/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hindi UD        | Hindi           | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | hi/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hindi UD        | Hindi           | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /hi/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Konkani (among  | parts of        | [Annotation     |
	| annotation      | other,          | speech,         | Model](htt      |
	| standard\       | unrelated       | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | languages)\     | labels,         | ia/sfb632.owl), |
	| 2008)           | ([SFB           | grammatical     | [Linking        |
	|                 | 632](ht         | functions       | Model](http://  |
	|                 | tp://www.sfb632 | (phonology,     | purl.org/olia/s |
	|                 | .uni-potsdam.de | information     | fb632-link.rdf) |
	|                 | /corpora.html), | structure)      |                 |
	|                 | [project        |                 |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| MULTEXT-East    | Farsi (Persian) | morphosyntax    | [Annotation     |
	|                 |                 |                 | Mo              |
	|                 |                 |                 | del](http://nl. |
	|                 |                 |                 | ijs.si/ME/owl/m |
	|                 |                 |                 | sd-fa.owl)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model]          |
	|                 |                 |                 | (http://nl.ijs. |
	|                 |                 |                 | si/ME/owl/msd-f |
	|                 |                 |                 | a-link.rdf)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Persian UD POS  | Farsi (Persian) | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /fa/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Persian UD      | Farsi (Persian) | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | fa/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Persian UD      | Farsi (Persian) | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /fa/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Dravidian

	+-----------------+-----------------+-----------------+-----------------+
	| tagset          | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| IL-POSTS        | Kannada,        | morphosyntax    | [Annotation     |
	| tagset\         | Malayalam,      |                 | Model](http     |
	| Baskaran et al. | Tamil, Telugu   |                 | ://purl.org/oli |
	| (2008)          |                 |                 | a/ilposts.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/il |
	|                 |                 |                 | posts-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| AnnCorra\       | Telugu, Tamil   | morphosyntax,   | [Annotation     |
	| Bharati et al.  |                 | chunks          | Model](http     |
	| (2006)          |                 |                 | ://purl.org/oli |
	|                 |                 |                 | a/ancorra.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/an |
	|                 |                 |                 | corra-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| IIIT tagset\    | Telugu          | morphosyntax    | [Annotation     |
	| IIIT (2007)     |                 |                 | Model](h        |
	|                 |                 |                 | ttp://purl.org/ |
	|                 |                 |                 | olia/iiit.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http:    |
	|                 |                 |                 | //purl.org/olia |
	|                 |                 |                 | /iiit-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Tamil UD POS    | Tamil           | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ta/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Tamil UD        | Tamil           | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | ta/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Tamil UD        | Tamil           | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ta/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Tibeto-Burman

	+-----------------+-----------------+-----------------+-----------------+
	| tagset          | language        | phenomenon      | OWL/DL models   |
	+-----------------+-----------------+-----------------+-----------------+
	| Dzongkha        | Dzongkha        | morphosyntax    | [Annotation     |
	| tagset\         |                 |                 | Model](http:    |
	| (Chungku et al. |                 |                 | //purl.org/olia |
	| 2010)           |                 |                 | /dzongkha.owl), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | M               |
	|                 |                 |                 | odel](http://pu |
	|                 |                 |                 | rl.org/olia/dzo |
	|                 |                 |                 | ngkha-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Prinmi (among   | parts of        | [Annotation     |
	| annotation      | other,          | speech,         | Model](htt      |
	| standard\       | unrelated       | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | languages)\     | labels,         | ia/sfb632.owl), |
	| 2008)           | ([SFB           | grammatical     | [Linking        |
	|                 | 632](ht         | functions       | Model](http://  |
	|                 | tp://www.sfb632 | (phonology,     | purl.org/olia/s |
	|                 | .uni-potsdam.de | information     | fb632-link.rdf) |
	|                 | /corpora.html), | structure)      |                 |
	|                 | [project        |                 |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Tübingen        | Tibetan (Old    | morphosyntax,   | [Annotation     |
	| Tibetan         | Tibetan,        | morphology,     | Model](h        |
	| Corpora\        | Classical       | syntax          | ttp://purl.org/ |
	| (Wagner &       | Tibetan, Balti, |                 | olia/tibet.owl) |
	| Zeisler 2004)   | Ladakh)         |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+


## East Asian languages

	+-----------------+-----------------+-----------------+-----------------+
	| annotation      | language        | phenomenon      | Annotation      |
	| scheme / corpus |                 |                 | Model           |
	+-----------------+-----------------+-----------------+-----------------+
	| Penn Chinese    | Chinese         | morphosyntax    | [Annotation     |
	| Treebank\       |                 |                 | Model](         |
	| (Xia 2000)      |                 |                 | http://purl.org |
	|                 |                 |                 | /olia/pctb.owl) |
	+-----------------+-----------------+-----------------+-----------------+
	| Chinese UD POS  | Chinese         | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /zh/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Chinese UD      | Chinese         | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | zh/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Chinese UD      | Chinese         | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /zh/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Japanese (among | parts of        | [Annotation     |
	| annotation      | other,          | speech,         | Model](htt      |
	| standard\       | unrelated       | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | languages)\     | labels,         | ia/sfb632.owl), |
	| 2008)           | ([SFB           | grammatical     | [Linking        |
	|                 | 632](ht         | functions       | Model](http://  |
	|                 | tp://www.sfb632 | (phonology,     | purl.org/olia/s |
	|                 | .uni-potsdam.de | information     | fb632-link.rdf) |
	|                 | /corpora.html), | structure)      |                 |
	|                 | [project        |                 |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Japanese UD POS | Japanese        | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ja/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Japanese UD     | Japanese        | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | ja/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Japanese UD     | Japanese        | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ja/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Sejong Treebank | Korean          | morphosyntax    | [Annotation     |
	| Annotation      |                 | (POS)           | Model](http     |
	| Model           |                 |                 | ://semanticweb. |
	|                 |                 |                 | kaist.ac.kr/nlp |
	|                 |                 |                 | 2rdf/resource/s |
	|                 |                 |                 | ejong.owl)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://s |
	|                 |                 |                 | emanticweb.kais |
	|                 |                 |                 | t.ac.kr/nlp2rdf |
	|                 |                 |                 | /resource/sejon |
	|                 |                 |                 | g-link.owl)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Korean UD POS   | Korean          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ko/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Korean UD       | Korean          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | ko/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Korean UD       | Korean          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ko/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Vietnamese UD   | Vietnamese      | parts of speech | [la             |
	| POS             |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /vi/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Vietnamese UD   | Vietnamese      | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | vi/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Vietnamese UD   | Vietnamese      | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /vi/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

## Afroasiatic and Ancient Near Eastern languages

	+-----------------+-----------------+-----------------+-----------------+
	| annotation      | language        | phenomenon      | Annotation      |
	| scheme / corpus |                 |                 | Model           |
	+-----------------+-----------------+-----------------+-----------------+
	| Amharic UD POS  | Amharic         | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /am/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Amharic UD      | Amharic         | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | am/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Amharic UD      | Amharic         | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /am/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Arabic tagset\  | Arabic          | morphosyntax    | [Annotation     |
	| (Khoja 2001)    |                 |                 | Model](http://p |
	|                 |                 |                 | url.org/olia/ar |
	|                 |                 |                 | abic_khoja.owl) |
	+-----------------+-----------------+-----------------+-----------------+
	| Arabic UD POS   | Arabic          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ar/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Arabic UD       | Arabic          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | ar/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Arabic UD       | Arabic          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /ar/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Chadic          | parts of        | [Annotation     |
	| annotation      | languages       | speech,         | Model](htt      |
	| standard\       | (including      | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | Guruntum,       | labels,         | ia/sfb632.owl), |
	| 2008)           | Tangale,        | grammatical     | [Linking        |
	|                 | Hausa)\         | functions       | Model](http://  |
	|                 | ([SFB           | (phonology,     | purl.org/olia/s |
	|                 | 632](ht         | information     | fb632-link.rdf) |
	|                 | tp://www.sfb632 | structure)      |                 |
	|                 | .uni-potsdam.de |                 |                 |
	|                 | /corpora.html), |                 |                 |
	|                 | [project        |                 |                 |
	|                 | B2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_b2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Coptic UD POS   | Coptic          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | cop/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Coptic UD       | Coptic          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox]           |
	|                 |                 |                 | (https://www.w3 |
	|                 |                 |                 | .org/2012/pyRdf |
	|                 |                 |                 | a/extract?uri=h |
	|                 |                 |                 | ttp://fginter.g |
	|                 |                 |                 | ithub.io/docs/c |
	|                 |                 |                 | op/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Coptic UD       | Coptic          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | cop/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hausa Internet  | Hausa           | morphosyntax    | t.b.a           |
	| Corpus\         |                 |                 |                 |
	| [Chiarcos et    |                 |                 |                 |
	| al.             |                 |                 |                 |
	| (201            |                 |                 |                 |
	| 1)](http://www. |                 |                 |                 |
	| springer.com/al |                 |                 |                 |
	| ert/urltracking |                 |                 |                 |
	| .do?id=L1c0018M |                 |                 |                 |
	| 8210f2Sab2ea4f) |                 |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Hebrew UD POS   | Hebrew          | parts of speech | [la             |
	|                 |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /he/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hebrew UD       | Hebrew          | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | he/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Hebrew UD       | Hebrew          | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /he/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Electronic Text | Sumerian        | morphology      | [Annotation     |
	| Corpus of       |                 |                 | Model           |
	| Sumerian Royal  |                 |                 | ](http://purl.o |
	| Inscriptions    |                 |                 | rg/olia/owl/exp |
	| (ETSCRI)        |                 |                 | erimental/sumer |
	|                 |                 |                 | ian/etscri.owl) |
	+-----------------+-----------------+-----------------+-----------------+

## Subsaharic Africa

	+-----------------+-----------------+-----------------+-----------------+
	| annotation      | language        | phenomenon      | Annotation      |
	| scheme / corpus |                 |                 | Model           |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Gur and Kwa     | parts of        | [Annotation     |
	| annotation      | languages       | speech,         | Model](htt      |
	| standard\       | (including Aja, | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | Dagbani, Buli,  | labels,         | ia/sfb632.owl), |
	| 2008)           | Byali,          | grammatical     | [Linking        |
	|                 | Ditammari, Fon, | functions       | Model](http://  |
	|                 | Foodo, Konni,   | (phonology,     | purl.org/olia/s |
	|                 | Nateni, Waamma, | information     | fb632-link.rdf) |
	|                 | Yom)\           | structure)      |                 |
	|                 | ([SFB           |                 |                 |
	|                 | 632](ht         |                 |                 |
	|                 | tp://www.sfb632 |                 |                 |
	|                 | .uni-potsdam.de |                 |                 |
	|                 | /corpora.html), |                 |                 |
	|                 | [project        |                 |                 |
	|                 | B1](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_b1ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	|                 | Chadic          |                 |                 |
	|                 | languages       |                 |                 |
	|                 | (including      |                 |                 |
	|                 | Guruntum,       |                 |                 |
	|                 | Tangale,        |                 |                 |
	|                 | Hausa)\         |                 |                 |
	|                 | ([SFB           |                 |                 |
	|                 | 632](ht         |                 |                 |
	|                 | tp://www.sfb632 |                 |                 |
	|                 | .uni-potsdam.de |                 |                 |
	|                 | /corpora.html), |                 |                 |
	|                 | [project        |                 |                 |
	|                 | B2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_b2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Hausa Internet  | Hausa           | morphosyntax    | t.b.a           |
	| Corpus\         |                 |                 |                 |
	| [Chiarcos et    |                 |                 |                 |
	| al.             |                 |                 |                 |
	| (201            |                 |                 |                 |
	| 1)](http://www. |                 |                 |                 |
	| springer.com/al |                 |                 |                 |
	| ert/urltracking |                 |                 |                 |
	| .do?id=L1c0018M |                 |                 |                 |
	| 8210f2Sab2ea4f) |                 |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+

## The Americas, Australia and the Pacific

	+-----------------+-----------------+-----------------+-----------------+
	| annotation      | language        | phenomenon      | Annotation      |
	| scheme / corpus |                 |                 | Model           |
	+-----------------+-----------------+-----------------+-----------------+
	| SFB632          | Teribe, Yucatec | parts of        | [Annotation     |
	| annotation      | Maya, Mawng,    | speech,         | Model](htt      |
	| standard\       | Niue\           | glosses, chunk  | p://purl.org/ol |
	| (Dipper et al.  | ([SFB           | labels,         | ia/sfb632.owl), |
	| 2008)           | 632](ht         | grammatical     | [Linking        |
	|                 | tp://www.sfb632 | functions       | Model](http://  |
	|                 | .uni-potsdam.de | (phonology,     | purl.org/olia/s |
	|                 | /corpora.html), | information     | fb632-link.rdf) |
	|                 | [project        | structure)      |                 |
	|                 | D2](http://ww   |                 |                 |
	|                 | w.sfb632.uni-po |                 |                 |
	|                 | tsdam.de/projec |                 |                 |
	|                 | ts_d2ger.html)) |                 |                 |
	+-----------------+-----------------+-----------------+-----------------+
	| Indonesian UD   | Indonesian      | parts of speech | [la             |
	| POS             |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /id/pos/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TBox](https://w |
	|                 |                 |                 | ww.w3.org/2012/ |
	|                 |                 |                 | pyRdfa/extract? |
	|                 |                 |                 | uri=http://fgin |
	|                 |                 |                 | ter.github.io/d |
	|                 |                 |                 | ocs/u/pos/all.h |
	|                 |                 |                 | tml&format=xml& |
	|                 |                 |                 | rdfagraph=outpu |
	|                 |                 |                 | t&vocab_expansi |
	|                 |                 |                 | on=false&rdfa_l |
	|                 |                 |                 | ite=false&embed |
	|                 |                 |                 | ded_rdf=true&sp |
	|                 |                 |                 | ace_preserve=fa |
	|                 |                 |                 | lse&vocab_cache |
	|                 |                 |                 | =true&vocab_cac |
	|                 |                 |                 | he_report=false |
	|                 |                 |                 | &vocab_cache_re |
	|                 |                 |                 | fresh=false)\*, |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+
	| Indonesian UD   | Indonesian      | morphosyntax    | [la             |
	| features        |                 |                 | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABox            |
	|                 |                 |                 | ](https://www.w |
	|                 |                 |                 | 3.org/2012/pyRd |
	|                 |                 |                 | fa/extract?uri= |
	|                 |                 |                 | http://fginter. |
	|                 |                 |                 | github.io/docs/ |
	|                 |                 |                 | id/feat/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/feat/all.ht |
	|                 |                 |                 | ml&format=xml&r |
	|                 |                 |                 | dfagraph=output |
	|                 |                 |                 | &vocab_expansio |
	|                 |                 |                 | n=false&rdfa_li |
	|                 |                 |                 | te=false&embedd |
	|                 |                 |                 | ed_rdf=true&spa |
	|                 |                 |                 | ce_preserve=fal |
	|                 |                 |                 | se&vocab_cache= |
	|                 |                 |                 | true&vocab_cach |
	|                 |                 |                 | e_report=false& |
	|                 |                 |                 | vocab_cache_ref |
	|                 |                 |                 | resh=false)(\*) |
	+-----------------+-----------------+-----------------+-----------------+
	| Indonesian UD   | Indonesian      | dependency      | [la             |
	| dependencies    |                 | syntax          | nguage-specific |
	|                 |                 |                 | Annotation      |
	|                 |                 |                 | Model           |
	|                 |                 |                 | ABo             |
	|                 |                 |                 | x](https://www. |
	|                 |                 |                 | w3.org/2012/pyR |
	|                 |                 |                 | dfa/extract?uri |
	|                 |                 |                 | =http://fginter |
	|                 |                 |                 | .github.io/docs |
	|                 |                 |                 | /id/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Annotation     |
	|                 |                 |                 | Model           |
	|                 |                 |                 | TB              |
	|                 |                 |                 | ox](https://www |
	|                 |                 |                 | .w3.org/2012/py |
	|                 |                 |                 | Rdfa/extract?ur |
	|                 |                 |                 | i=http://fginte |
	|                 |                 |                 | r.github.io/doc |
	|                 |                 |                 | s/u/dep/all.htm |
	|                 |                 |                 | l&format=xml&rd |
	|                 |                 |                 | fagraph=output& |
	|                 |                 |                 | vocab_expansion |
	|                 |                 |                 | =false&rdfa_lit |
	|                 |                 |                 | e=false&embedde |
	|                 |                 |                 | d_rdf=true&spac |
	|                 |                 |                 | e_preserve=fals |
	|                 |                 |                 | e&vocab_cache=t |
	|                 |                 |                 | rue&vocab_cache |
	|                 |                 |                 | _report=false&v |
	|                 |                 |                 | ocab_cache_refr |
	|                 |                 |                 | esh=false)(\*), |
	|                 |                 |                 | [Linking        |
	|                 |                 |                 | Model](http://  |
	|                 |                 |                 | purl.org/olia/u |
	|                 |                 |                 | d-pos-link.rdf) |
	+-----------------+-----------------+-----------------+-----------------+

 

## External Reference Models

|	terminological repository	|	original url	|	local url	|	Linking Model	|
|	 ---	|	 ---	|	 ---	|	 ---	|
|	ISO TC37/SC4 Data Category Registry	|	[http://www.isocat.org](http://www.isocat.org/)	|	t.b.a	|	t.b.a	|
|	GOLD	|	[http://linguistics-ontology.org](http://linguistics-ontology.org/)	|	t.b.a	|	t.b.a	|


## Other applications

### BLL - Bibliography of Linguistic Literature Thesaurus

OLiA also serves as a conceptual backbone for the ontological
reconstruction, resp. LLOD edition, of legacy thesauri of linguistic
terminology. This includes the Bibliography of Lingistic Literature
(BLL) Thesaurus. The Bibliography of Linguistic Literature
([BLL](http://www.blldb-online.de/)) is one of the most important
sources of bibliographical information for general linguistics as well
as English, German and Romance linguistics, and the thesaurus organizes
the keywords used for indexing linguistic literature since the 1970s.

|	terminological repository	|	original url	|	linking model	|
|	 ---	|	 ---	|	 ---	|
|	BLL Thesaurus (SKOS)	|	[BLL Thesaurus (different formats available via content negotiation)](http://data.linguistik.de/bll/bll-thesaurus)	|	none	|
|	BLL Ontology (OWL)	|	[BLL Ontology (different formats available via content negotiation)](http://data.linguistik.de/bll/bll-ontology)	|	[bll-link.rdf](http://purl.org/olia/bll-link.rdf)	|

