# Ontologies of Linguistic Annotation (OLiA)

<img align="right" src="img/logo.png" height="5%"/>

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
Open Data (LLOD) cloud](http://linguistic-lod.org). OLiA
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
existing in Germany at the time. Documents describing the [original motivation (2007)](motivation.html) and the [original design (2007)](overview.html) are provided as part of the documentation. 
Later on, different applications in corpus
linguistics, natural language processing and the Semantic Web have been
developed.

Via its public repository, OLiA provides Annotation Models for
**more than 100 different languages** or language stages covering
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

Unless marked otherwise, the ontologies are released under a Creative Commons Attribution licence CC-BY 3.0 with reference to

> Christian Chiarcos, and Maria Sukhareva (2015). [OLiA - Ontologies of Linguistic Annotation](http://semantic-web-journal.net/content/olia-%E2%80%93-ontologies-linguistic-annotation), *SWJ (Semantic Web Journal)* 6(4): 379-386.

## Reference Model

The OLiA architecture is a set of modular OWL/DL ontologies with
ontological models of annotation schemes (**Annotation Models**) on the
one hand, an ontology of reference terms (**Reference Model**) on the
other hand, and ontologies (**Linking Models**) that implement
subClassOf relationships between them.

The OLiA Reference Model defines shared terminology as *either* used for linguistic annotation in the language resources for which annotation models are provided *or* defined in an [external reference model](#external-reference-models).

|	Module	|	phenomenon	|	OWL/DL models	|
|	 ---	|	 ---	|	 ---	|
|	OLiA Reference Model for morphosyntax, morphology and syntax	|	morphosyntax, morphology and syntax	|	<http://purl.org/olia/olia.owl>	|
|	OLiA Reference Model for discourse structure	|	discourse structure, discourse relations	|	see [discourse extensions](../discourse)	|
|	OLiA Reference Model for information structure	|	information structure, information status, coreference	|	see [discourse extensions](../discourse)	|
|	OLiA System Ontology	|	basic annotation data structures	|	<http://purl.org/olia/system.owl>	|
|	OLiA Top-Level Ontology	|	top-level concepts of the OLiA Reference Model for morphosyntax, morphology and syntax	|	<http://purl.org/olia/olia-top.owl>	|


## Annotation Models

OLiA Annotation Models for morphosyntax, morphology and syntax annotation for individual languages are listed in a [separate document](models.html). [Discourse extensions](#olia-discourse-extensions) and [linguistic thesaurus](#linguistic-thesaurus) are described separately below.

OLiA Annotation Models for the **cross-linguistic annotation** of morphosyntax, morphology and syntax annotation include

<table border=1 cellpadding=0 >
<tr >
<td >
    tagset / NLP tool  
</td>
<td >
    phenomenon  
</td>
<td >
    languages  
</td>
<td >
    OWL/DL models  
</td>
</tr>
<tr >
<td >
    SFB632 annotation standard (Dipper et al. 2008)  
</td>
<td >
    parts of speech, glosses, chunk labels, grammatical functions (phonology,
  information structure)  
</td>
<td >
    &gt; 30 typologically different languages, including many African
  languages   
</td>
<td >
<a href="http://purl.org/olia/sfb632.owl">Annotation Model</a>, <a href="http://purl.org/olia/sfb632-link.rdf">Linking Model</a>  
</td>
</tr>
<tr>
<td>  EAGLES recommendations<br/>(Leech and Wilson 1996)  </td>
<td>  morphosyntax  </td>
<td>  11 EU languages, incl. Romance, Germanic, Greek and Irish  </td>
<td>  <a href="http://purl.org/olia/eagles.owl">Annotation Model</a>, <a href="http://purl.org/olia/eagles-link.rdf">Linking Model</a>  </td>
</tr>
<tr >
<td >
    Connexor dependency parser  
</td>
<td >
    morphosyntax, morphology, dependency syntax  
</td>
<td >
    10 European languages, incl. Romance, Germanic and Uralic languages  
</td>
<td >
<a href="http://purl.org/olia/connexor.owl">Annotation Model</a>, 
<a href="http://purl.org/olia/connexor-link.rdf">Linking Model</a>  
</td>
</tr>
<tr >
<td >
    MULTEXT-East   
</td>
<td >
    morphosyntax, morphology  
</td>
<td >
    15 mostly Eastern European languages, incl. Slavic, Romance, Uralic
  languages and Persian  
</td>
<td >
<a href="http://nl.ijs.si/ME/owl/multext-east.owl">Annotation Model (common specifications)</a>(*),
<a href="http://nl.ijs.si/ME/owl/mte-link.rdf">Linking Model</a>(*); 
<a href="http://nl.ijs.si/ME/owl/all.owl">Annotation Model (all languages)</a>(*), 
  see <a href="http://nl.ijs.si/ME/owl">project page</a> and below for individual languages  
</td>
</tr>
<tr>
<td>  IL-POSTS tagset<br/>Baskaran et al. (2008)  </td>
<td>  morphosyntax  </td>
<td>  languages of the Indian subcontinent  </td>
<td>  <a href="http://purl.org/olia/ilposts.owl">Annotation Model</a>, <a href="http://purl.org/olia/ilposts-link.rdf">Linking Model</a>  </td>
</tr>
<tr>
<td>  AnnCorra <br/>Bharati et al. (2006)  </td>
<td>  morphosyntax, chunks  </td>
<td>  languages of the Indian subcontinent  </td>
<td>  <a href="http://purl.org/olia/ancorra.owl">Annotation Model</a>, <a href="http://purl.org/olia/ancorra-link.rdf">Linking Model</a>  </td>
</tr>
<tr>
<td>  IIIT tagset <br/>IIT (2007)  </td>
<td>  morphosyntax  </td>
<td>  languages of the Indian subcontinent  </td>
<td>  <a href="http://purl.org/olia/iiit.owl">Annotation Model</a>, <a href="http://purl.org/olia/iiit-link.rdf">Linking Model</a>  </td>
</tr>
<tr>
<td>  PROIEL  </td>
<td>  morphosyntax, dependency syntax  </td>
<td>  Older Indo-European languages (Greek, Latin, Gothic, Classical Armenian, Old Church Slavonic, others  </td>
<td>  <a href="http://purl.org/olia/proiel.owl">Annotation Model</a>, <a href="http://purl.org/olia/proiel-link.rdf">Linking Model</a>  </td>
</tr>
<tr>
<td>  Universal Dependencies (POS)  </td>
<td>  parts of speech  </td>
<td>  various languages  </td>
<td>  
(for language-specific Annotation Model ABoxes see below)
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*), 
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a></td>
</tr>
<tr>
<td>  Universal Dependencies (features)  </td>
<td>  morphosyntax  </td>
<td>  various languages  </td>
<td>  
(for language-specific Annotation Model ABoxes see below)
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/feat/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*)  </td>
</tr>
<tr>
<td>  Universal Dependencies (relations)  </td>
<td>  dependency syntax  </td>
<td>  various languages  </td>
<td>  
(for language-specific Annotation Model ABoxes see below)
<a href="https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/dep/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false">Annotation Model TBox</a>(*),
<a href="http://purl.org/olia/ud-pos-link.rdf">Linking Model</a>
</td>
</tr>
</table>

## Discourse Extensions

In addition to annotation schemes for morphosyntax, morphology and syntax, the **OLiA Discourse Extensions** provide a reference model and annotation models for discourse phenomena such as co-reference, information status, information structure, discourse structures and discourse relations. These are described in a [separate document](discourse.html).

So far, the OLiA Discourse Extensions have not been integrated with the OLiA Reference Model because the taxonomy of discourse relations, resp., its axiomaticization, is considered controversial in the community so that no cross-theoretically applicable consensus exists. The OLiA Discourse Extensions provide a draft for such a consensus, in that they combine the taxonomy of the Penn Discourse Treebank with different variants of Rhetorical Structure Theory, however, this was done in a conservative way, and where definitions could not be easily compared with each other, theory-specific concepts remained. Once a consensus on these has been established, the discourse extensions should be integrated with the OLiA Reference Model.

## External Reference Models

The OLiA Reference Model was never meant to provide prescriptive terminology, but only as a generalization over terminology relevant to annotation and/or as found in linguistically annotated corpora.
For this reason, it is also not very deeply axiomatized. Instead, we assume that a full-fledged axiomaticization can be provided or inherited from community-maintained terminology repositories. The OLiA taxonomy has been developed as a compromise between these and individual annotations, so that OLiA concepts are linked (and can be interpreted) in terms of these *External Reference Models*. 

A practical problem in the direct application of these external reference models is that multiple such models have been and continue to be developed in parallel by different communities. The initial idea of OLiA was to provide a pivot, i.e., an intermediate representation that allows all (OLiA-linked) annotation models to be interpreted in terms of all (OLiA-linked) External Reference Models.


|	terminological repository	|	original url	|	local url	|	Linking Model	|
|	 ---	|	 ---	|	 ---	|	 ---	|
|	ISO TC37/SC4 Data Category Registry	|	[http://www.isocat.org](http://www.isocat.org/)	|	t.b.a	|	t.b.a	|
|	GOLD	|	[http://linguistics-ontology.org](http://linguistics-ontology.org/)	|	t.b.a	|	t.b.a	|


## Linguistic Thesaurus

OLiA also serves as a conceptual backbone for the ontological
reconstruction, resp. LLOD edition, of legacy thesauri of linguistic
terminology.

Within the OLiA architecture, we have been developing SKOS and OWL editions of the **Bibliography of Lingistic Literature (BLL) Thesaurus**, which has been integrated as a domain model, i.e., in the style of an OLiA Annotation Model.
The Bibliography of Linguistic Literature
([BLL](http://www.blldb-online.de/)) is one of the most important
sources of bibliographical information for general linguistics as well
as English, German and Romance linguistics, and the thesaurus organizes
the keywords used for indexing linguistic literature since the 1970s.

|	terminological repository	|	original url	|	linking model	|
|	 ---	|	 ---	|	 ---	|
|	BLL Thesaurus (SKOS)	|	[BLL Thesaurus (different formats available via content negotiation)](http://data.linguistik.de/bll/bll-thesaurus)	|	none	|
|	BLL Ontology (OWL)	|	[BLL Ontology (different formats available via content negotiation)](http://data.linguistik.de/bll/bll-ontology)	|	[bll-link.rdf](http://purl.org/olia/bll-link.rdf)	|

# Documentation

## Overview and Design

The original (2007!) motivations for the OLiA architecture are described in [a separate document](motivation.html).

Design, overview and application examples of the OLiA ontologies are described in [a separate document](overview.html). Note that this is a document that goes back until 2007, but that the general structure of OLiA ontologies did not change since that point in time, except for two aspects:

- we cover many *many more* annotation models, linking models, phenomena and languages
- the core vocabulary has been restructured:
	- The [OLiA Reference Model](http://purl.org/olia/olia.owl) (namespace prefix `olia:`) provides annotations and grammatical feature values *as classes*, e.g., `olia:Noun` or `olia:Singular`.
	- The [OLiA Top-Level Model](http://purl.org/olia/olia-top.owl) (namespace prefix `oliat:`) defines types of features (e.g., `oliat:CaseFeature`) and concepts (e.g., `oliat:MorphosyntacticCategory`).
	- The [OLiA System Model](http://purl.org/olia/system.owl) (namespace prefix `olias:`) defines units of annotations and their properties (e.g., `olias:hasTag`)
	- Originally, all this information was provided in a monolithic ontology.

## Build Your Own!

The creation and linking of novel annotation models is described in [a separate document](linking.html). When external annotation models are created, we ask to notify us by creating a [novel issue](https://github.com/acoli-repo/olia/issues/new) in the GitHub repository with the subject `add annomodel: ...` (and the name). If you want to host your ontologies with OLiA *and you are not familiar with the advanced operations described below*, you can also add your ontologies as an appendix to the issue and we do the integration.

**ADVANCED (optional)**: After building your ontologies, if you want them to be(come) part of your fork of the official OLiA release, deposit them in `owl/stable` or in a separate folder in `owl/experimental` and run `make release` in the root directory of (your local clone of) this repository. This script will also perform basic validation. (Requires a Unix-based OS, tested with Ubuntu 20.04L). If you want to add them to the official OLiA repository afterwards, please create a pull request and refer to the issue that you just created. (If you are not familiar with GitHub, etc., we will do these things for you after you notify us with an issue.)

After publishing a new annotation model, please feel free to advertise it via our **[public mailing list](https://groups.google.com/g/acoli)** with the subject line `OLiA: ...`.

## Browse Online

For convenient viewing the ontologies, we provide a **static** HTML export of *selected* stable Annotation Models, Linking Models and the OLiA Reference Model:

- [OLiA Annotation Models](html/stable/index.html) and linking models
- [OLiA Reference Model](html/core/index.html) and other core modules

Note that this is a *static* export that is updated irregularly only, so it does not necessarily reflect the most recent version.

For **interactive browsing** the OLiA ontologies, we recommend
[Protégé](http://protege.stanford.edu), an ontology browser and editor
(available both as web and Java edition, the latter requires local
installation). For browsing the ontologies copy and paste the URLs given
below.

# Frequently Asked Questions

## How to (Find) Help

OLiA is open source (see below) and we invite external contributors to join, to add or to provide feedback. If you have questions about OLiA, the recommended way is to join and reach out via our **[public mailing list](https://groups.google.com/g/acoli)** with the subject line `OLiA: ...`.

Alternatively, and in particular for potential errors or feature requests regarding OLiA, please feel free to create a new issue via the [GitHub form](https://github.com/acoli-repo/olia/issues). However, please take a minute in this case to make sure your question or request is not already addressed by another issue.

General enquiries with respect to OLiA can also be directed to 
[Christian
Chiarcos](mailto://FIRSTNAME_IN_LOWERCASE%20%5BDOT%5D%20LASTNAME_IN_LOWERCASE%20%5BAT%5D%20web%20%5BDOT%5D%20de).

## Terms of Use

All **code** provided in this repository falls under the Apache v.2 license.

All **original data** (i.e., all data in RDF, OWL or an RDF serialization) provided in this repository is published under the [Creative Commons Attribution 3.0 Unported (CC-BY 3.0)](https://creativecommons.org/licenses/by/3.0/) license -- unless marked otherwise *in the header* / at the beginning of ontologies and other data.

This means, you are free to:

- **Share** — copy and redistribute the material in any medium or format
- **Adapt** — remix, transform, and build upon the material for any purpose, even commercially. 

Under the following terms:

- **Attribution** — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use. (See below for the requested form of attribution)
- **No additional restrictions** — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

## Attribution and Acknowledgments

For **attribution** in scientific papers, please refer to 

> Christian Chiarcos, and Maria Sukhareva (2015). [OLiA - Ontologies of Linguistic Annotation](http://semantic-web-journal.net/content/olia-%E2%80%93-ontologies-linguistic-annotation), *SWJ (Semantic Web Journal)* 6(4): 379-386.

In scientific publications that are based on OLiA, scripts or data provided in this repository, please use this publication as a reference.

For attribution in downstream applications or derived data, please provide the source URL of the repository and include the above attribution note for scientific papers.

Over the years, a large number of **collaborators** contributed to the development of OLiA. Apologies for listing *some* of them, only:

- Christian Chiarcos (since 2005)
- Angelika Adam (2005-2008)
- Sebastian Hellmann (2008-2013)
- Maria Sukhareva (2013-2017)
- Christian Fäth (2016-2020)
- Frank Abromeit (2016-2020)
- Maxim Ionov (2016)
- Vanya Dimitrova (since 2016)

OLiA development has been supported by several **third-party funded projects**. 
The initial development of the Ontologies of Linguistic Annotation has been funded by the German Research Foundation (DFG) in the project "Sustainability of Linguistic Data" at Colloborative Research Center (SFB) 441 "Linguistic Data Structures" at the University of Potsdam, Germany, in collaboration with University Tübingen, Germany, and University Hamburg, Germany.

Subsequently, it has been further developed at the University of Potsdam, Germany, Humboldt University Berlin, Germany, and Free University Berlin, Germany, and since 2011 transformed into an open community project, primariy coordinated by Christian Chiarcos and the Applied Computational Linguistics (ACoLi) Lab at Goethe University Frankfurt, Germany. The original project website with full attribution for the initial stages of OLiA development can be found [at the project page of the University of Potsdam](http://nachhalt.sfb632.uni-potsdam.de).

<img src="img/dfg.png" height="50" />

<img src="img/up.png" height="50" />
<img src="img/hu.png" height="50" />
<img src="img/fu.png" height="50" />
<img src="img/tueb.png" height="50" />
<img src="img/hb.gif" height="50" />

Later development was partially supported by DFG in the context of the development of the linguistic bibliography portal [Lin\|gu\|is\|tik. Portal für Sprachwissenschaft](http://linguistik.de) (DFG/LIS [2014-2017](https://gepris.dfg.de/gepris/projekt/214512695), [2017-2022](https://gepris.dfg.de/gepris/projekt/326024153)) at the Applied COmputational Linguistics (ACoLi) lab of Goethe University Frankfurt, Germany, in collaboration between the University Library Johann Christian Senckenberg at Goethe University Frankfurt (since 2011/2014)  IDS Mannheim (2014-2017), and University Duisburg-Essen (2014-2017). The primary outcome of this support is the integration of the Bibliography of Linguistic Literature Thesaurus (BLL).

<img src="img/dfg.png" height="50" />
<img src="img/guf.png" height="50" />

OLiA development at Goethe University Frankfurt received additional support in the context of the Horizon 2020 Research and Innovation Action [Prêt-à-LLOD. Ready-to-use Multilingual Linked Language Data for Knowledge Services across Sectors](https://cordis.europa.eu/project/id/825182) (2019-2022) and in the Research Group [Linked Open Dictionaries (LiODi)](https://acoli-repo.github.io/liodi/) funded by the German Federal Ministry for Education and Science (BMBF, 2015-2022). 

<img src="img/h2020.png" height="50" />
<img src="img/bmbf.png" height="50" />
<img src="img/guf.png" height="50" />

Support for cuneiform languages has been added in the context of the NEH/DFG/SSHR project [MTAAC. Machine Translation and Automated Analysis of Cuneiform Languages](https://cdli-gh.github.io/mtaac/) (2017-2020) in collarobation with the Cuneiform Digital Library Initiative (CDLI) at the Goethe University Frankfurt, Germany, the University of Toronto, Canada, and the University of California, Los Angeles.

<img src="img/dfg.png" height="50" />
<img src="img/sshrc.png" height="50" />
<img src="img/neh.png" height="50" />

<img src="img/guf.png" height="50" />
<img src="img/tor.png" height="50" />
<img src="img/ucla.png" height="50" />

## URIs and Mirrors

When using OLiA ontologies, please refer **only** to [the official Purl URLs](http://purl.org/olia/), not to the physical location of these files, because we occasionally change from one hosting solution to another.
Until a change in version number (we are still at 0.x), OLiA
development is strictly *downward compatible*, i.e., new concepts may be
added, but existing concepts are *never* deleted, but only marked as
deprecated.

In addition to that, you can retrieve the OLiA ontologies from the following direct links:

- [official GitHub repository](https://github.com/acoli-repo/olia/tree/master/owl): Up-to-date developer version. These are also the files that the official Purl URIs currently redirect to.
- [Frankfurt mirror](http://www.acoli.informatik.uni-frankfurt.de/resources/olia): live synchronization of the GitHub developer version
- [**DEPRECATED**] [Sourceforge developer version](https://sourceforge.net/p/olia/code/HEAD/tree/): developer version of 2019-11-19
- [**DEPRECATED**] [static Sourceforge release](https://sourceforge.net/projects/olia/files/olia-2012-09-16-prerelease.zip/download): static dump of 2012-09-16
- [**DEPRECATED**/**DEFUNCT**] [NLP2RDF mirror](http://olia.nlp2rdf.org/):  mirror of the static Sourceforge release
- [**DEPRECATED**] [Potsdam mirror](http://nachhalt.sfb632.uni-potsdam.de/olia.html): static dump of a 2011 pre-release

In general, older ("deprecated") versions of OLiA do not differ greatly with respect to the Reference Model (they may lack concepts or provide less concise or less detailed definitions), but they provide fewer Annotation Models. However, major (European) languages have been covered from the beginning.

We strictly advise to operate only with Purl URLs and retrieve directly from there only. However, in case servers or services are unavailable (this happened for Purl for several months in 2015), developers can resort to the mirrors, in the order specified above.

## OLiA 1.0 and Versioning

At the moment, OLiA development is strictly backward-compatible. Thus, we do not provide global version numbers, but as a general convention, we provide an edit log in the `owl:versionInfo` property of all OLiA ontologies. The current version number of the OLiA ontologies and the OLiA Reference Model is given as `0.x` (*without* specifying a number for `x`). 

We expect the future release of OLiA 1.0 to implement some major restructuring and prune deprecated vocabulary which will break downward compatibility with OLiA 0.x, cf. the current proposals for [milestone 1.0](https://github.com/acoli-repo/olia/issues?q=is%3Aopen+is%3Aissue+milestone%3A1.0). As of this point in time, we will adopt a numerical versioning schema. For feature requests regarding OLiA 1.0, please create [GitHub issues](https://github.com/acoli-repo/olia/issues) and **associate them with the milestone [1.0](https://github.com/acoli-repo/olia/milestone/1)**. However, note that we don't have a specified date for OLiA 1.0 yet, and we are not actively working on that. As it requires substantial updates *in all annotation models*, in *numerous* data sets and applications, and wide dissemination of these updates to the current OLiA user community, such an update is unlikely to occur unless we are able to acquire dedicated funding or mobilize a considerable number of external contributors and language experts.

For proposals to contribute towards the consolidation of OLiA and/or the development of OLiA 1.0, be it in the context of funded research or an informal collaboration, please reach out via the **[ACoLi mailing list](https://groups.google.com/g/acoli)** with the subject line `OLiA: ...`.

As for the current version OLiA 0.x, this includes all versions of OLiA published under `http://nachhalt.sfb632.uni-potsdam.de/owl/olia.owl#` or `http://purl.org/olia/` (i.e., all since 2008). The original URIs from the University of Potsdam still resolve, but have not been updated since 2011. As of 2011, only Purl URIs should be used, not any direct links (to University of Potsdam, University of Leipzig, University of Frankfurt, or to GitHub), as we occasionally move from one hosting solution to another.

Prior to 2008, the predecessor of OLiA, developed since 2004 and first published in 2005, used a different namespace. This version is referred to as "E(xtended)-EAGLES" ontology with the namespace prefix `e-eagles:`.

The first formal release of the OLiA ontologies occured in 2008:

	@inproceedings{chiarcos2008ontology,
	  title={An ontology of linguistic annotations.},
	  author={Chiarcos, Christian},
	  booktitle={LDV Forum},
	  volume={23},
	  number={1},
	  pages={1--16},
	  year={2008},
	}

This article established the name "OLiA", the modular structure of Reference and Annotation Models and the current URI schema. All modifications applied to the data since then have been *backward-compatible*. In particular, we *never* delete any concept or property in the Reference Model, but, instead, mark it as being deprecated. All versions of OLiA published after this paper fall under OLiA 0.x.

## Who's Using it?

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

## The Logo Explained ;)

You might have seen the logo at the top of this page. You can find a larger version of this from [here](img/logo-large.png).

In case you have wondered about the logo "mascot": This was created in 2007 as a graphical metaphor for linguistic ontologies based on [Maya art and writing](http://www.famsi.org/mayawriting/index.html): 

<img src="img/logo-explained.png" width="80%"/>

