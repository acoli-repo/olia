# OLiA Modularization

The idea is to provide multiple independent ontologies for different components of the OLiA Reference Model, and then to build [../owl/core](../owl/core) from them. The files here should thus replace ../owl/core. 

For building the [OLiA Reference Model](../owl/core(olia.owl), run `make`. Note that this will build `../owl/core/olia.owl` only if it does not exist yet. In order to overwrite an existing model so, run `make refresh`.

- `system.owl` -> `../owl/core/system.owl`  (no changes)
	- [x] validate
- `olia-top.owl` -> `../owl/core/olia-top.owl` (no changes)
	- [x] validate
- `discourse.owl` -> `../owl/olia.owl`
	- [x] move from experimental into reference model, but see [../owl/experimental/discourse](../owl/experimental/discourse) for accompanying files
	- [x] add `LinguisticConcept/DiscourseEntity`
	- [x] add `LinguisticConcept/DiscourseFeature`	
	- [ ] create a legacy file in `../owl/experimental` with owl:sameAs with new URIs, it as deprecated
	- [ ] validate
- `morphosyntax.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/MorphosyntacticFeature`
	- [x] `LinguisticConcept/MorphosyntacticCategory` (aka `Word`)
	- [x] validate
- `morph.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/MorphologicalCategory`
	- [x] `LinguisticConcept/MorphologicalFeature`
	- [x] `LinguisticConcept/MorphologicalProcess`
	- [x] validate
- `syntax.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/SyntacticRelation`
	- [x] `LinguisticConcept/SyntacticCategory`
	- [x] `LinguisticConcept/SyntacticFeature`
	- [x] validate
- `semlex.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/SemanticFeature`
	- [x] `LinguisticConcept/SemanticUnit`
	- [x] `LinguisticConcept/LexicalRelation`
	- [x] validate
- `graphon.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/OrthographicEntity`
	- [x] `LinguisticConcept/PhonologicalProcess`
	- [x] validate
- put log separately
	- [ ] remove log from `olia-header.owl`
- rebuild `../owl/core`
	- [x] Makefile
	- [x] `olia-top.owl`
	- [x] `system.owl`
	- [x] integrate `olia-header.owl` in `olia.owl`
	- [x] DO NOT EDIT disclaimer for core ontologies
	- [ ] extend header for `olia.owl` (logs)
	- [ ] dynamically build labels for `olia.owl` (remove `olia-rest.owl`)
	- [x] `olia.owl`

whitepaper on `Revisiting the Ontologies of Linguistic Annotation (OLiA)`, concerned with frequencies, modularization and SPARQL queries for tag mapping (shortest path+frequency ranking for alternatives)