# OLiA Modularization

The idea is to provide multiple independent ontologies for different components of the OLiA Reference Model, and then to build [../owl/core](../owl/core) from them. The files here should thus replace ../owl/core. 

- `system.owl` -> `../owl/core/system.owl`  (no changes)
	- [x] validate
- `olia-top.owl` -> `../owl/core/olia-top.owl` (no changes)
	- [x] validate
- `discourse.owl` -> `../owl/olia.owl`
	- [x] move from experimental into reference model, but see [../owl/experimental/discourse](../owl/experimental/discourse) for accompanying files
	- [ ] add `LinguisticConcept/DiscourseEntity`
	- [ ] add `LinguisticConcept/DiscourseFeature`	
	- [ ] validate
- `morphosyntax.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/MorphosyntacticFeature`
	- [ ] `LinguisticConcept/MorphosyntacticCategory` (aka `Word`)
	- [ ] validate
- `morph.owl` -> `../owl/core/olia.owl`
	- [x] `LinguisticConcept/MorphologicalCategory`
	- [x] `LinguisticConcept/MorphologicalFeature`
	- [x] `LinguisticConcept/MorphologicalProcess`
	- [x] validate
- `syntax.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/SyntacticRelation`
	- [ ] `LinguisticConcept/SyntacticCategory`
	- [ ] `LinguisticConcept/SyntacticFeature`
	- [ ] validate
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
- rebuild `../owl/core`
	- [ ] Makefile
	- [ ] `olia-top.owl`
	- [ ] `system.owl`
	- [ ] generate header for `olia.owl` (logs, DO NOT EDIT disclaimer)
	- [ ] integrate `olia-header.owl` in `olia.owl`
	- [ ] dynamically build labels for `olia.owl` (remove `olia-rest.owl`)
	- [ ] `olia.owl`

whitepaper on `Revisiting the Ontologies of Linguistic Annotation (OLiA)`, concerned with frequencies, modularization and SPARQL queries for tag mapping (shortest path+frequency ranking for alternatives)