# External Reference Models

This folder hosts (mirrors of) several external reference models and (scripts for) their linking, as well as older linkings for future reference.
Stable external reference models should be moved to [stable](../../stable).

At the moment, this does include

- [`gold/`](gold) GOLD03 and GOLD-2010 editions and their linking, mirrored in stable. Note that GOLD development stalled in 2010, but the ontology continues to be used.
- [`eagles/`](eagles) EAGLES ontology and linking. This is the original source of the OLiA Reference Model. However, after the EAGLES project was concluded (1998), no EAGLES corpora seem to have been produced and no data is available. As the EAGLES schema doesn't seem to be maintained, the linking with later versions of the OLiA Reference Model was never implemented. However, numerous EAGLES successor taxonomies are integrated, but as annotation models. This does include Multext-East and (as an indirect successor solution) POS and FEATS of the Universal Dependencies.  
- [`OntoTag/`](Ontotag) OntoTag, a Linguistic and Ontological Annotation Model Suitable for the Semantic Web [Pareja-Lora (2012)](https://oa.upm.es/13827/), note that the OWL export is not 100% compliant with OWL2/DL
- [`dcr/`](dcr) OWL edition and linking with ISOCat (ISO TC37 DCR, ISOcat development stalled in 2012)
- [`nkjp/`](nkjp) alternative ISOcat fork
- [`datcatinfo/`](datcatinfo) ISOcat successor system. Note that DatCatInfo is currently (2021) a silo without machine-readable content and that there is no official release of that data and very likely out of sync with the actual DatCatInfo content.
- [`ccr/`](ccr) CLARIN Concept Registry, another ISOcat successor system. Internally, it uses RDF and SKOS, but publicly exposed is only a HTML rendering. We bootstrapped the SKOS data and converted it to OWL (to facilitate the linking). It seems that CCR development stalled in 2018.
- [`tds/`](tds) the ontology of the [Typological Database System](https://www.nwo.nl/en/projects/380-30-004) (2004-2008). The TDS ontology is used internally only, and for a different purpose, but insightful for the extension of OLiA.

While many of these vocabularies are no longer being maintained by their respective communities, they continue to serve as a point of reference and are used as such.
OLiA provides interoperability of annotations with and between them by allowing to perform an indirect mapping (via graph traversal over linking models).
More recent (and, at the moment, more successful) community standars include the Universal Dependencies (syntax and morphosyntax) and Lexinfo (grammatical metadata for dictionaries). These are integrated with OLiA, as well, but as annotation models because they do not provide classes, but only individuals for the respective categories (lexinfo) and have narrower, more confined, and more restricted definitions (Universal Dependencies) and domains (lexinfo) whereas OLiA is a broad generalization over different domain- and/or language-specific schemas (and thus, largely underdefined in terms of cardinality axioms).

Disclaimer:
Note that linking models hosted here come without guarantees for maintenance and validity and may get out of sync with OLiA.
However, OLiA is developed in a strictly downward-compatible fashion (and in particular, its terms are neither renamed nor deleted, but can only be deprecated or restructured), any links they provide continue to be operational.
If updates or verification is required, please file an issue.
