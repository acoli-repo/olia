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


# Annotation Models: Morphosyntax, Morphology, Syntax

Annotation models for cross-linguistically applicable annotation schemes include:

<table>
 <tr >
  <td >
  <p>tagset / NLP tool</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>languages</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
</tr>
 <tr >
  <td >
  <p>SFB632 annotation standard (Dipper et al. 2008)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>&gt; 30 typologically different languages, including many African
  languages </p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
<tr>
	<td><p>EAGLES recommendations<br/>(Leech and Wilson 1996)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p>11 EU languages, incl. Romance, Germanic, Greek and Irish</p></td>
	<td><p><a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a></p></td>
</tr>
 <tr >
  <td >
  <p>Connexor dependency parser</p>
  </td>
  <td >
  <p>morphosyntax, morphology, dependency syntax</p>
  </td>
  <td >
  <p>10 European languages, incl. Romance, Germanic and Uralic languages</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, 
  <a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>MULTEXT-East </p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p>15 mostly Eastern European languages, incl. Slavic, Romance, Uralic
  languages and Persian</p>
  </td>
  <td >
  <p> 
  <a href="http://nl.ijs.si/ME/owl/multext-east.owl">Annotation Model (common specifications)</a>(*),
  <a href="http://nl.ijs.si/ME/owl/mte-link.rdf">Linking Model</a>(*); 
  <a href="http://nl.ijs.si/ME/owl/all.owl">Annotation Model (all languages)</a>(*), 
  see <a href="http://nl.ijs.si/ME/owl">project page</a> and below for individual languages</p>
  </td>
 </tr>
 <tr>
	<td><p>IL-POSTS tagset<br/>Baskaran et al. (2008)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p>languages of the Indian subcontinent</p></td>
	<td><p><a href="http://purl.org/olia/ilposts.owl">Annotation Model</a>, <a href="http://purl.org/olia/ilposts-link.rdf">Linking Model</a></p></td>
</tr>
 <tr>
	<td><p>AnnCorra <br/>Bharati et al. (2006)</p></td>
	<td><p>morphosyntax, chunks</p></td>
	<td><p>languages of the Indian subcontinent</p></td>
	<td><p><a href="http://purl.org/olia/ancorra.owl">Annotation Model</a>, <a href="http://purl.org/olia/ancorra-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
	<td><p>IIIT tagset <br/>IIT (2007)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p>languages of the Indian subcontinent</p></td>
	<td><p><a href="http://purl.org/olia/iiit.owl">Annotation Model</a>, <a href="http://purl.org/olia/iiit-link.rdf">Linking Model</a></p></td>
</tr>
 <tr>
 <td><p>PROIEL</p></td>
 <td><p>morphosyntax, dependency syntax</p></td>
 <td><p>Older Indo-European languages (Greek, Latin, Gothic, Classical Armenian, Old Church Slavonic, others</p></td>
 <td><p><a href="http://purl.org/olia/proiel.owl">Annotation Model</a>, <a href="http://purl.org/olia/proiel-link.rdf">Linking Model</a></p></td>
 </tr>
<tr>
<td><p>Universal Dependencies (POS)</p></td>
<td><p>parts of speech</p></td>
<td><p>various languages</p></td>
<td><p>
(for language-specific Annotation Model ABoxes see below)
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*), 
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Universal Dependencies (features)</p></td>
<td><p>morphosyntax</p></td>
<td><p>various languages</p></td>
<td><p>
(for language-specific Annotation Model ABoxes see below)
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Universal Dependencies (relations)</p></td>
<td><p>dependency syntax</p></td>
<td><p>various languages</p></td>
<td><p>
(for language-specific Annotation Model ABoxes see below)
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
</table>



## Germanic (English, German, ...)

Annotation models for **English** include

| tagset / NLP tool | phenomenon | OWL/DL models |
| -- | -- | -- |
| Brown corpus | morphosyntax | [Annotation Model](http://purl.org/olia/brown.owl), [Linking Model](http://purl.org/olia/brown-link.rdf) |
| Connexor | morphosyntax, morphology, dependencies | [Annotation Model](http://purl.org/olia/connexor.owl), [Linking Model](http://purl.org/olia/connexor-link.rdf) |
| EAGLES (Leech and Wilson 1996) | morphosyntax | [Annotation Model](http://purl.org/olia/eagles.owl), [Linking Model](http://purl.org/olia/eagles-link.rdf) |
| GENIA corpus | morphosyntax | [Annotation Model](http://purl.org/olia/genia.owl), [Linking Model](http://purl.org/olia/genia-link.rdf) |
| MULTEXT-East | morphosyntax | [Annotation Model](http://nl.ijs.si/ME/owl/msd-en.owl)(\*), [Linking Model](http://nl.ijs.si/ME/owl/msd-en-link.rdf)(\*) | 
| Penn Treebank | morphosyntax |  [Annotation Model](http://purl.org/olia/penn.owl), [Linking Model](http://purl.org/olia/penn-link.rdf) |
| Penn Treebank | syntax | [Annotation Model](http://purl.org/olia/penn-syntax.owl), [Linking Model](http://purl.org/olia/penn-syntax-link.rdf) |
| QTag | morphosyntax | [Annotation Model](http://purl.org/olia/qtag.owl), [Linking Model](http://purl.org/olia/qtag-link.rdf) |
| Stanford | dependencies | [Annotation Model](http://purl.org/olia/stanford.owl), [Linking Model](http://purl.org/olia/stanford-link.rdf) |
| Susanne corpus | morphosyntax | [Annotation Model](http://purl.org/olia/susa.owl), [Linking Model](http://purl.org/olia/susa-link.rdf) | 
| English UD POS | parts of speech | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |
| English UD features | morphosyntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*) | 
| English UD dependencies | dependency syntax | [language-specific Annotation Model ABox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/en/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Annotation Model TBox](https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false)(\*), [Linking Model](http://purl.org/olia/ud-pos-link.rdf) |

Annotation models for **German** include

<table>
 <tr >
  <td >
  <p>tagset / NLP tool</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
 <tr >
  <td >
  <p>Connexor dependency parser</p>
  </td>
  <td >
  <p>morphosyntax, morphology, dependency syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, <a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr>
	<td><p>EAGLES recommendations (German)<br/>(Leech and Wilson 1996)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a></p></td>
</tr>
 <tr >
  <td >
  <p>Morphisto</p>
  </td>
  <td >
  <p>morphology</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/morphisto.owl">Annotation Model</a>, <a href="http://purl.org/olia/morphisto-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>STTS</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/stts.owl">Annotation Model</a>, <a href="http://purl.org/olia/stts-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>TIGER/NEGRA </p>
  </td>
  <td >
  <p>morphology</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/tiger.owl">Annotation Model</a>, <a href="http://purl.org/olia/tiger-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>&nbsp;</p>
  </td>
  <td >
  <p>constituent syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/tiger-syntax.owl">Annotation Model</a>, <a href="http://purl.org/olia/tiger-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>TreeTagger Chunker</p>
  </td>
  <td >
  <p>chunk labels</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/treetagger.owl">Annotation Model</a>, <a href="http://purl.org/olia/treetagger-link.rdf">Linking Model</a></p>
  </td>
 </tr>
<tr>
<td><p>German UD POS</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/de/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>German UD features</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/de/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>German UD dependencies</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/de/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr> <tr >
  <td >
  <p>RFTagger</p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p>t.b.a</p>
  </td>
 </tr>
</table>




Annotation models for **other Germanic languages**

<table>
 <tr >
  <td >
  <p>tagset/NLP tool</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
<tr>
	<td><p>EAGLES recommendations<br/>(Leech and Wilson 1996)</p></td>
	<td><p>Danish, Dutch, Swedish (and several non-Germanic languages)</p></td>
		<td><p>morphosyntax; inflectional morphology</p></td>
	<td><p><a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
<td><p>Danish UD POS</p></td>
<td><p>Danish</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/da/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*), 
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Danish UD features</p></td>
<td><p>Danish</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/da/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Danish UD dependencies</p></td>
<td><p>Danish</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/da/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 <tr>
 <td><p>Alpino</p></td>
 <td><p>Dutch</p></td>
 <td><p>morphosyntax (POS)</p></td>
 <td><p><a href="http://purl.org/olia/alpino.owl">Annotation Model</a>, <a href="http://purl.org/olia/alpino-link.rdf">Linking Model</a></p></td>
 </tr>
 <tr>
 <td><p>Lassy</p></td>
 <td><p>Dutch</p></td>
 <td><p>morphosyntax (POS)</p></td>
 <td><p><a href="http://purl.org/olia/lassy-short.owl">Annotation Model</a>, <a href="http://purl.org/olia/lassy-short-link.rdf">Linking Model</a></p></td>
 </tr>
 <tr>
<td><p>Dutch UD POS</p></td>
<td><p>Dutch</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/nl/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*), 
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Dutch UD features</p></td>
<td><p>Dutch</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/nl/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Dutch UD dependencies</p></td>
<td><p>Dutch</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/nl/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
<td><p>Norwegian UD POS</p></td>
<td><p>Norwegian</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/no/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Norwegian UD features</p></td>
<td><p>Norwegian</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/no/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Norwegian UD dependencies</p></td>
<td><p>Norwegian</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/no/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 
 <tr>
 <td><p>Mamba lexical categories</p></td>
 <td><p>Swedish</p></td>
 <td><p>morphosyntax (POS)</p></td>
 <td><p><a href="http://purl.org/olia/mamba.owl">Annotation Model</a>, <a href="http://purl.org/olia/mamba-link.rdf">Linking Model</a></p></td>
 </tr>
 <tr>
 <td><p>Mamba dependencies</p></td>
 <td><p>Swedish</p></td>
 <td><p>dependency syntax</p></td>
 <td><p><a href="http://purl.org/olia/mamba-syntax.owl">Annotation Model</a>, <a href="http://purl.org/olia/mamba-syntax-link.rdf">Linking Model</a></p></td>
 </tr>
 <tr>
 <td><p>Stockholm—Umeå Corpus (SUC 2.0)</p></td>
 <td><p>Swedish</p></td>
 <td><p>morphosyntax</p></td>
 <td><p><a href="http://purl.org/olia/suc.owl">Annotation Model</a>, <a href="http://purl.org/olia/suc-link.rdf">Linking Model</a></p></td>
 </tr>
<tr>
<td><p>Swedish UD POS</p></td>
<td><p>Swedish</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sv/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Swedish UD features</p></td>
<td><p>Swedish</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sv/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Swedish UD dependencies</p></td>
<td><p>Swedish</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/sv/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

  <tr >
  <td >
  <p>Connexor</p>
  </td>
   <td >
  <p>Dutch, Swedish, Danish, Norwegian</p>
  </td>
  <td >
  <p>morphosyntax, morphology, dependency syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, 
  <a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a></p>
  </td>
 </tr>
  <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
  <td >
  <p>Dutch (among other languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
  <tr >
  <td >
  <p>PPCME2 POS tags</p>
  </td>
  <td >
  <p>Middle English</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/ppcme2.owl">Annotation Model</a>, <a href="http://purl.org/olia/ppcme2-link.rdf">Linking Model</a></p>
  </td>
 </tr>
  <tr >
  <td >
  <p>YCOE POS tags</p>
  </td>
  <td >
  <p>Old English</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/ycoe.owl">Annotation Model</a>, <a href="http://purl.org/olia/ycoe-link.rdf">Linking Model</a></p>
  </td>
 </tr>

 <tr >
  <td >
  <p>MENOTA (incomplete)</p>
  </td>
  <td >
  <p>Old Norse</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/meno.owl">Annotation Model</a>, <a href="http://purl.org/olia/meno-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>T-CODEX</p>
  </td>
  <td >
  <p>Old High German</p>
  </td>
  <td >
  <p>morphosyntax, syntax, information structure</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/tcodex.owl">Annotation Model</a>, <a href="http://purl.org/olia/tcodex-link.rdf">Linking Model</a></p>
  </td>
 </tr>
  <tr>
 <td><p>PROIEL</p></td>
 <td><p>Gothic (and others)</p></td>
 <td><p>morphosyntax, dependency syntax</p></td>
 <td><p><a href="http://purl.org/olia/proiel.owl">Annotation Model</a>, <a href="http://purl.org/olia/proiel-link.rdf">Linking Model</a></p></td>
 </tr>
 <tr>
<td><p>Gothic UD POS</p></td>
<td><p>Gothic</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/got/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Gothic UD features</p></td>
<td><p>Gothic</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/got/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Gothic UD dependencies</p></td>
<td><p>Gothic</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/got/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
</table>



## Slavic and Baltic

Annotation models for **Russian** include

<table>
 <tr >
  <td >
  <p>tagset / NLP tool</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
 <tr >
  <td >
  <p>Uppsala corpus tagset</p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/russ.owl">Annotation Model</a>, <a href="http://purl.org/olia/russ-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>Russian TreeTagger <br/>(Serge Sharoff)</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/russleeds.owl">Annotation Model</a>, <a href="http://purl.org/olia/russleeds-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>MULTEXT-East for Russian</p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p><a href="http://nl.ijs.si/ME/owl/msd-ru.owl">Annotation Model</a>(*), <a href="http://nl.ijs.si/ME/owl/msd-ru-link.rdf">Linking Model</a>(*)</p>
  </td>
 </tr>
 <tr>
<td><p>Russian UD POS</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ru/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Russian UD features</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ru/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Russian UD dependencies</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ru/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


</table>




Annotation models for **other Slavic and Baltic languages** include


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

## Romance (French, ...) and Italic

Annotation models for **French** include

<table>
 <tr >
  <td >
  <p>tagset / NLP tool</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
 <tr>
 	<td><p>EAGLES recommendations<br/>(Leech and Wilson 1996)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a></p></td>
</tr>
  <tr >
  <td >
  <p>French TreeTagger<br/>(Achim Stein)</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/french-tt.owl">Annotation Model</a></p>
  </td>
 </tr>
  <tr >
  <td >
  <p>Le Monde corpus<br/>(Abeillé et al. 2000)</p>
  </td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/french.owl">Annotation Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>Connexor</p>
  </td>
  <td >
  <p>morphosyntax, morphology, dependency syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, 
  <a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a></p>
  </td>
 </tr>
  <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure) for Canadian French (among other languages, <a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr>
<td><p>French UD POS</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fr/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>French UD features</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fr/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>French UD dependencies</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fr/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
 </table>




Annotation models for **other Romance and Italic languages** include

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

<table>
 <tr >
  <td >
  <p>tagset</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>

 <tr >
  <td >
  <p>MULTEXT-East </p>
  </td>
  <td >
  <p>Estonian</p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p> <a href="http://nl.ijs.si/ME/owl/msd-et.owl">Annotation Model</a>(*), <a href="http://nl.ijs.si/ME/owl/msd-et-link.rdf">Linking Model</a>(*)</p>
  </td>
 </tr>
 <tr>
<td><p>Estonian UD POS</p></td>
<td><p>Estonian</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/et/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Estonian UD features</p></td>
<td><p>Estonian</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/et/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Estonian UD dependencies</p></td>
<td><p>Estonian</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/et/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

  <tr >
  <td >
  <p>Connexor</p>
  </td>
  <td >
  <p>Finnish</p>
  </td>
  <td >
  <p>morphosyntax, morphology, dependency syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, 
  <a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a></p>
  </td>
 </tr>








<tr>
<td><p>Finnish UD POS</p></td>
<td><p>Finnish</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fi/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Finnish UD features</p></td>
<td><p>Finnish</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fi/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Finnish UD dependencies</p></td>
<td><p>Finnish</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fi/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>







 <tr >
  <td >
  <p>MULTEXT-East</p>
  </td>
  <td >
  <p>Hungarian</p>
  </td>
  <td >
  <p>morphosyntax, morphology</p>
  </td>
  <td >
  <p> <a href="http://nl.ijs.si/ME/owl/msd-hu.owl">Annotation Model</a>(*), <a href="http://nl.ijs.si/ME/owl/msd-hu-link.rdf">Linking Model</a>(*)</p>
  </td>
 </tr>
 <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
  <td >
  <p>Hungarian (among other languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr>
<td><p>Hungarian UD POS</p></td>
<td><p>Hungarian</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hu/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Hungarian UD features</p></td>
<td><p>Hungarian</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hu/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Hungarian UD dependencies</p></td>
<td><p>Hungarian</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hu/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
 
 <tr>
<td><p>Kazakh UD POS</p></td>
<td><p>Kazakh</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/kk/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Kazakh UD features</p></td>
<td><p>Kazakh</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/kk/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Kazakh UD dependencies</p></td>
<td><p>Kazakh</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/kk/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 
 <tr> 
 <td><p>Turkish POS tagset<br/>(Oflazer et al. 2003)</p></td>
 <td><p>Turkish</p></td>
 <td><p>morphosyntax</p></td>
 <td><p><a href="http://purl.org/olia/turkish.owl">Annotation Model</a></p></td>
 </tr>
 
 <tr>
<td><p>Turkish UD POS</p></td>
<td><p>Turkish</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/tr/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Turkish UD features</p></td>
<td><p>Turkish</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/tr/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Turkish UD dependencies</p></td>
<td><p>Turkish</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/tr/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 
</table>



## Other European languages

<table>
 <tr >
  <td >
  <p>tagset</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
<tr>
	<td><p>EAGLES recommendations<br/>(Leech and Wilson 1996)</p></td>
	<td><p>Modern Greek, Irish (among other EU languages)</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a></p></td>
</tr>
  <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Georgian, Modern Greek (among other languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr>
 <td><p>PROIEL</p></td>
 <td><p>Ancient Greek, Classical Armenian (and others)</p></td>
 <td><p>morphosyntax, dependency syntax</p></td>
 <td><p><a href="http://purl.org/olia/proiel.owl">Annotation Model</a>, <a href="http://purl.org/olia/proiel-link.rdf">Linking Model</a></p></td>
 </tr>
<tr>
<td><p>Ancient Greek UD POS</p></td>
<td><p>Ancient Greek</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/grc/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Ancient Greek UD features</p></td>
<td><p>Ancient Greek</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/grc/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Ancient Greek UD dependencies</p></td>
<td><p>Ancient Greek</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/grc/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
	<td><p>EUSTagger<br/>Ezeiza et al. (1998)</p></td>
	<td><p>Basque</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/basque.owl">Annotation Model</a></p></td>
</tr>

<tr>
<td><p>Basque UD POS</p></td>
<td><p>Basque</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/eu/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Basque UD features</p></td>
<td><p>Basque</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/eu/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Basque UD dependencies</p></td>
<td><p>Basque</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/eu/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
<td><p>Greek UD POS</p></td>
<td><p>Greek</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/el/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Greek UD features</p></td>
<td><p>Greek</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/el/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Greek UD dependencies</p></td>
<td><p>Greek</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/el/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
<td><p>Irish UD POS</p></td>
<td><p>Irish</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ga/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Irish UD features</p></td>
<td><p>Irish</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ga/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Irish UD dependencies</p></td>
<td><p>Irish</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ga/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 </table>



## Indo-Iranian languages

<table>
 <tr >
  <td >
  <p>tagset</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
 <tr>
	<td><p>Urdu EMILLE tagset<br/>Hardie (2003, 2004)</p></td>
	<td><p>Urdu</p></td>
	<td><p>morphosyntax, inflectional morphology</p></td>
	<td><p><a href="http://purl.org/olia/emille.owl">Annotation Model</a>, <a href="http://purl.org/olia/emille-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
	<td><p>Urdu tagset<br/>Sajjad (2007)</p></td>
	<td><p>Urdu</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/urdu.owl">Annotation Model</a>, <a href="http://purl.org/olia/urdu-link.rdf">Linking Model</a></p></td>
</tr>
 <tr>
	<td><p>IL-POSTS tagset<br/>Baskaran et al. (2008)</p></td>
	<td><p>Bangla, Hindi, Marathi, Sanskrit</p></td>
	<td><p>morphosyntax, inflectional morphology</p></td>
	<td><p><a href="http://purl.org/olia/ilposts.owl">Annotation Model</a>, <a href="http://purl.org/olia/ilposts-link.rdf">Linking Model</a></p></td>
</tr>
 <tr>
	<td><p>AnnCorra <br/>Bharati et al. (2006)</p></td>
	<td><p>Bangla, Hindi</p></td>
	<td><p>morphosyntax, chunks</p></td>
	<td><p><a href="http://purl.org/olia/ancorra.owl">Annotation Model</a>, <a href="http://purl.org/olia/ancorra-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
	<td><p>IIIT tagset <br/>IIIT (2007)</p></td>
	<td><p>Hindi, Marathi</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/iiit.owl">Annotation Model</a>, <a href="http://purl.org/olia/iiit-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
<td><p>Hindi UD POS</p></td>
<td><p>Hindi</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hi/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Hindi UD features</p></td>
<td><p>Hindi</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hi/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Hindi UD dependencies</p></td>
<td><p>Hindi</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/hi/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
<tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Konkani (among other, unrelated languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>

  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>

 <tr >
  <td >
  <p>MULTEXT-East</p>
  </td>
  <td><p>Farsi (Persian)</p></td>
  <td >
  <p>morphosyntax</p>
  </td>
  <td >
  <p><a href="http://nl.ijs.si/ME/owl/msd-fa.owl">Annotation Model</a>(*), <a href="http://nl.ijs.si/ME/owl/msd-fa-link.rdf">Linking Model</a>(*)</p>
  </td>
 </tr>
 <tr>
<td><p>Persian UD POS</p></td>
<td><p>Farsi (Persian)</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fa/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Persian UD features</p></td>
<td><p>Farsi (Persian)</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fa/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Persian UD dependencies</p></td>
<td><p>Farsi (Persian)</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/fa/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


</table>



## Dravidian

<table>
 <tr >
  <td >
  <p>tagset</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr> <tr>
	<td><p>IL-POSTS tagset<br/>Baskaran et al. (2008)</p></td>
	<td><p>Kannada, Malayalam, Tamil, Telugu</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/ilposts.owl">Annotation Model</a>, <a href="http://purl.org/olia/ilposts-link.rdf">Linking Model</a></p></td>
</tr>
 <tr>
	<td><p>AnnCorra <br/>Bharati et al. (2006)</p></td>
	<td><p>Telugu, Tamil</p></td>
	<td><p>morphosyntax, chunks</p></td>
	<td><p><a href="http://purl.org/olia/ancorra.owl">Annotation Model</a>, <a href="http://purl.org/olia/ancorra-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
	<td><p>IIIT tagset <br/>IIIT (2007)</p></td>
	<td><p>Telugu</p></td>
	<td><p>morphosyntax</p></td>
	<td><p><a href="http://purl.org/olia/iiit.owl">Annotation Model</a>, <a href="http://purl.org/olia/iiit-link.rdf">Linking Model</a></p></td>
</tr>
<tr>
<td><p>Tamil UD POS</p></td>
<td><p>Tamil</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ta/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Tamil UD features</p></td>
<td><p>Tamil</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ta/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Tamil UD dependencies</p></td>
<td><p>Tamil</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ta/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


</table>



## Tibeto-Burman

<table>
 <tr >
  <td >
  <p>tagset</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>OWL/DL models</p>
  </td>
 </tr>
 <tr >
 <td><p>Dzongkha tagset<br/>(Chungku et al. 2010)</p></td>
 <td><p>Dzongkha</p></td>
 <td><p>morphosyntax</p></td>
 <td><p><a href="http://purl.org/olia/dzongkha.owl">Annotation Model</a>, <a href="http://purl.org/olia/dzongkha-link.rdf">Linking Model</a></p></td>
</tr>
<tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Prinmi (among other, unrelated languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>

  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
  <td >
  <p>Tübingen Tibetan Corpora<br/> (Wagner &amp; Zeisler 2004)</p>
  </td>
  <td >
  <p>Tibetan (Old Tibetan, Classical Tibetan, Balti, Ladakh)</p>
  </td>
  <td >
  <p>morphosyntax, morphology, syntax</p>
  </td>
  <td >
  <p><a href="http://purl.org/olia/tibet.owl">Annotation Model</a>
  <!--a href="http://purl.org/olia/tibet-link.rdf">Linking Model</a-->
  <!-- to be updated --> 
 </p>
  </td>
 </tr>
  </table>




## East Asian languages

<table>
 <tr >
  <td >
  <p>annotation scheme / corpus</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>Annotation Model</p>
  </td>
 </tr>
 <tr>
 <td><p>Penn Chinese Treebank <br/> (Xia 2000)</p></td>
 <td><p>Chinese</p></td>
 <td><p>morphosyntax</p></td>
 <td><p><a href="http://purl.org/olia/pctb.owl">Annotation Model</a></p></td>
 </tr>
 <tr>
<td><p>Chinese UD POS</p></td>
<td><p>Chinese</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/zh/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Chinese UD features</p></td>
<td><p>Chinese</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/zh/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Chinese UD dependencies</p></td>
<td><p>Chinese</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/zh/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

 <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Japanese (among other, unrelated languages)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 
 <tr>
<td><p>Japanese UD POS</p></td>
<td><p>Japanese</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ja/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Japanese UD features</p></td>
<td><p>Japanese</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ja/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Japanese UD dependencies</p></td>
<td><p>Japanese</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ja/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 
 <tr>
 <td><p>Sejong Treebank Annotation Model</p></td>
 <td><p>Korean</p></td>
 <td><p>morphosyntax (POS)</p></td>
 <td><p><a href="http://semanticweb.kaist.ac.kr/nlp2rdf/resource/sejong.owl">Annotation Model</a>(*), 
 <a href="http://semanticweb.kaist.ac.kr/nlp2rdf/resource/sejong-link.owl">Linking Model</a>(*)</p></td>
 </tr>
 
 <tr>
<td><p>Korean UD POS</p></td>
<td><p>Korean</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ko/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Korean UD features</p></td>
<td><p>Korean</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ko/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Korean UD dependencies</p></td>
<td><p>Korean</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ko/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
<td><p>Vietnamese UD POS</p></td>
<td><p>Vietnamese</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/vi/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Vietnamese UD features</p></td>
<td><p>Vietnamese</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/vi/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Vietnamese UD dependencies</p></td>
<td><p>Vietnamese</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/vi/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


 
 </table>



## Afroasiatic and Ancient Near Eastern languages

<table>
 <tr >
  <td >
  <p>annotation scheme / corpus</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>Annotation Model</p>
  </td>
 </tr>
 <tr>
<td><p>Amharic UD POS</p></td>
<td><p>Amharic</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>
<tr>
<td><p>Amharic UD features</p></td>
<td><p>Amharic</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>
<tr>
<td><p>Amharic UD dependencies</p></td>
<td><p>Amharic</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/am/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
<tr>
<td><p>Arabic tagset<br/>(Khoja 2001)</p></td>
<td><p>Arabic</p></td>
<td><p>morphosyntax</p></td>
<td><p><a href="http://purl.org/olia/arabic_khoja.owl">Annotation Model</a></p></td>
</tr>
<tr>
<td><p>Arabic UD POS</p></td>
<td><p>Arabic</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ar/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Arabic UD features</p></td>
<td><p>Arabic</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ar/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Arabic UD dependencies</p></td>
<td><p>Arabic</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/ar/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

 <tr >
<td><p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p></td>
   <td >
  <p>Chadic languages (including Guruntum, Tangale, Hausa)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_b2ger.html">project B2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
  </tr>
  <tr>
<td><p>Coptic UD POS</p></td>
<td><p>Coptic</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cop/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Coptic UD features</p></td>
<td><p>Coptic</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cop/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Coptic UD dependencies</p></td>
<td><p>Coptic</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/cop/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>
  
 <tr>
 <td><p>Hausa Internet Corpus <br/><a href="http://www.springer.com/alert/urltracking.do?id=L1c0018M8210f2Sab2ea4f">Chiarcos et al. (2011)</a></p></td>
 <td><p>Hausa</p></td>
 <td><p>morphosyntax</p></td>
 <td><p>t.b.a</p></td>
 </tr>
 
 <tr>
<td><p>Hebrew UD POS</p></td>
<td><p>Hebrew</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/he/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Hebrew UD features</p></td>
<td><p>Hebrew</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/he/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Hebrew UD dependencies</p></td>
<td><p>Hebrew</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/he/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>

<tr>
<td><p>Electronic Text Corpus of Sumerian Royal Inscriptions (ETSCRI)</p></td>
<td><p>Sumerian</p></td>
<td><p>morphology</p></td>
<td><p>
	<a href="http://purl.org/olia/owl/experimental/sumerian/etscri.owl">Annotation Model</a>
</p></td>
</tr>

 
 </table>



## Subsaharic Africa
<table>
 <tr >
  <td >
  <p>annotation scheme / corpus</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>Annotation Model</p>
  </td>
 </tr>
 <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Gur and Kwa languages (including Aja, Dagbani, Buli, Byali, Ditammari, Fon, Foodo, Konni, Nateni, Waamma, Yom)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_b1ger.html">project B1</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr >
<td/>
   <td >
  <p>Chadic languages (including Guruntum, Tangale, Hausa)<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_b2ger.html">project B2</a>)</p>
  </td>
  <td/>
  <td/>
 </tr>
 <tr>
 <td><p>Hausa Internet Corpus <br/><a href="http://www.springer.com/alert/urltracking.do?id=L1c0018M8210f2Sab2ea4f">Chiarcos et al. (2011)</a></p></td>
 <td><p>Hausa</p></td>
 <td><p>morphosyntax</p></td>
 <td><p>t.b.a</p></td>
 </tr>
 </table>



## The Americas, Australia and the Pacific

Annotation Models for indigenous languages of the Americas, Australia and the Pacific

<table>
 <tr >
  <td >
  <p>annotation scheme / corpus</p>
  </td>
  <td >
  <p>language</p>
  </td>
  <td >
  <p>phenomenon</p>
  </td>
  <td >
  <p>Annotation Model</p>
  </td>
 </tr>
  <tr >
  <td >
  <p>SFB632 annotation standard<br/> (Dipper et al. 2008)</p>
  </td>
    <td >
  <p>Teribe, Yucatec Maya, Mawng, Niue<br/>(<a href="http://www.sfb632.uni-potsdam.de/corpora.html">SFB 632</a>, <a href="http://www.sfb632.uni-potsdam.de/projects_d2ger.html">project D2</a>)</p>
  </td>
  <td >
  <p>parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)</p>
  </td>
  <td >
  <p>
  <a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a></p>
  </td>
 </tr>
 <tr>
<td><p>Indonesian UD POS</p></td>
<td><p>Indonesian</p></td>
<td><p>parts of speech</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/id/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>*, <a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>


<tr>
<td><p>Indonesian UD features</p></td>
<td><p>Indonesian</p></td>
<td><p>morphosyntax</p></td>
<td><p>
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/id/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)</p></td>
</tr>



<tr>
<td><p>Indonesian UD dependencies</p></td>
<td><p>Indonesian</p></td>
<td><p>dependency syntax</p></td>
<td><p>
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/id/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">language-specific Annotation Model ABox</a>(*),
	<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
	<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</p></td>
</tr>


</table>




# Other Vocabularies

## External Reference Models

|	terminological repository	|	original url	|	local url	|	Linking Model	|
|	 ---	|	 ---	|	 ---	|	 ---	|
|	ISO TC37/SC4 Data Category Registry	|	[http://www.isocat.org](http://www.isocat.org/)	|	t.b.a	|	t.b.a	|
|	GOLD	|	[http://linguistics-ontology.org](http://linguistics-ontology.org/)	|	t.b.a	|	t.b.a	|


## BLL - Bibliography of Linguistic Literature Thesaurus

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

