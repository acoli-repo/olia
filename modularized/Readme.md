# OLiA Modularization

The idea is to provide multiple independent ontologies for different components of the OLiA Reference Model, and then to build [../owl/core](../owl/core) from them. The files here should thus replace ../owl/core. 

- `top.owl` -> `../owl/core/olia-top.owl` 
	- [ ] no changes, except for name
- `system.owl` -> `../owl/core/system.owl` 
	- [ ] no changes
- `discourse.owl` -> `../owl/olia.owl`
	- [x] move from experimental into reference model, but see [../owl/experimental/discourse](../owl/experimental/discourse) for accompanying files
	- [ ] add `LinguisticConcept/DiscourseEntity`
	- [ ] add `LinguisticConcept/DiscourseFeature`	
- `morphosyntax.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/MorphosyntacticFeature`
	- [ ] `LinguisticConcept/MorphosyntacticCategory` (aka `Word`)
- `morph.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/MorphologicalCategory`
	- [ ] `LinguisticConcept/MorphologicalFeature`
	- [ ] `LinguisticConcept/MorphologicalProcess`
- `syntax.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/SyntacticRelation`
	- [ ] `LinguisticConcept/SyntacticCategory`
	- [ ] `LinguisticConcept/SyntacticFeature`
- `semlex.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/SemanticFeature`
	- [ ] `LinguisticConcept/SemanticUnit`
	- [ ] `LinguisticConcept/LexicalRelation`
- `graphon.owl` -> `../owl/core/olia.owl`
	- [ ] `LinguisticConcept/OrthographicEntity`
	- [ ] `LinguisticConcept/PhonologicalProcess`
- rebuild `../owl/core`
	- [ ] `olia-top.owl`
	- [ ] `system.owl`
	- [ ] `olia.owl`
	- [ ] Makefile

whitepaper on `Revisiting the Ontologies of Linguistic Annotation (OLiA)`, concerned with frequencies, modularization and SPARQL queries for tag mapping (shortest path+frequency ranking for alternatives)