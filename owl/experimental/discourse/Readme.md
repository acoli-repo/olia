# OLiA Discourse Extensions

The **OLiA Discourse Extensions** extend the [Ontologies of Linguistic Annotation (OLiA)](http://purl.org/olia) with respect to **discourse features**. The OLiA ontologies provide a a terminology repository that can be employed to facilitate the conceptual (semantic) interoperability of annotations of discourse phenomena as found in important corpora available to the community, including the [RST Discourse
Treebank](http://catalog.ldc.upenn.edu/LDC2002T07) and the [Penn
Discourse Treebank](http://catalog.ldc.upenn.edu/LDC2008T05) as well as standards such as ISO SemAF and community standards such as CCR.

For full documentation, please see our [website](https://acoli-repo.github.io/olia/discourse.html).

## Coverage

Discourse phenomena considered here include

-   anaphora („coreference") and entity linking
-   named entity recognition
-   information status („given-new")
-   information structure („topic-focus")
-   discourse structure (hierarchical, semantic organization of texts and other discourses)
-   discourse relations (semantic relations holding between different
    segments of a text, resp. their underlying semantic representations)

All annotation schemes are formalized as self-contained OWL/DL ontologies (Annotation Models), with a declarative linking (Linking Models) linking them to an ontology that provides a generalized vocabulary for discourse annotation (Reference Model). For the latter aspects, we currently provide two ontologies that will subsequently be integrated with the [OLiA Reference Model](http://purl.org/olia/olia.owl) (cf. provisional linking: [provisional Linking with OLiA Reference Model](http://purl.org/olia/discourse/olia_discourse-link.rdf)).

The OLiA ontologies do currently not cover dialogue structure, Gricean and Post-Gricean pragmatics and speech act theory or annotation schemes developed on this basis. In a broad sense, these can be regarded discourse phenomena, as the distinction between discourse and pragmatics is largely underdefined.

Instead, we follow a pragmatic distinction based on the types of available annotations: We restrict ourselves to the annotation of text (no dialogues, hence), with a particular focus on theories of discourse structure and discourse relations (in the sense of the [Rhetorical Structure Theory](http://www.sfu.ca/rst) or the [Segmented Discourse Representation Theory](http://homepages.inf.ed.ac.uk/alex/papers/iwcs4.pdf)) and frequently annotated phenomena most often discussed in regard to this (hence, anaphora, information status and information structure). Further extensions are continuously being worked on.

## Application

Note that the OLiA discourse model does not constitute an independent theory of discourse. Instead, it takes a strong focus on practical application, i.e., the conjoint handling of heterogeneous annotations from publicly available corpora. The main function is a practical one to be able to map annotations from one framework to the specifications of another, to enable and to trace imprecise mappings.

In particular, OLiA allows to perform both precise and imprecise mappings (by subsumption inference or search over `subClassOf` relations in the reference model), but also quantify the mismatch between two concepts (using metrics such as the path length in OLiA). At the moment, the OLiA discourse extensions are still considered experimental. In the longer perspective, they should be formally integrated into the [OLiA Reference Model](http://purl.org/olia/olia.owl).

Despite its name, the OLiA Reference Model is not a prescriptive model (i.e., a standard) for discourse annotation. Instead, it is a tool that allows to map annotations from one schema to another, but also from
a particular schema to a reference system such as ISO SemAF or CCR as well as any from any such standard to a specific annotation schemes. At the moment, SemAF and CCR are linked as external reference models (i.e., OLiA concepts are defined as subconcepts), as soon as similarly authoritative specifications are being established for information structure, the OLiA Discourse Extensions will be adjusted accordingly, and integrated with the OLiA Reference Model.

## Attribution

If you use this resource, please refer to

    Chiarcos, C. (2014). Towards interoperable discourse annotation.
    Discourse features in the Ontologies of Linguistic Annotation.
    In Proceedings of LREC-2014, Reykjavik, Iceland, May 2014, (pp. 4569-4577).

## Recent Extensions

Extensions since the original publication include:
- 2021-11-30: linking with SemDok discourse ontology
- 2022-09-xx: mirrorred NERD ontology (as of Sep 2022, their hosting is failing): added [NERD ontology](https://github.com/NERD-project/nerd-ontology) as a [Git subtree](https://www.atlassian.com/git/tutorials/git-subtree) under `nerd-ontology/`.
- 2022-10-13: incorporating entity types and 10 NER schemas based on NERD
- on-going ISO Discourse annotations

## Todos

- additional is and coref datasets/schemas
- SDRT (so far, we have no corpus data as a basis)