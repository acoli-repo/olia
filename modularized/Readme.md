# OLiA Modularization

TO facilitate the local management of individual components, OLiA is broken down down into several sub-vocabularies.
All of these use the same namespaces, but they are *edited* independently in separate physical files. 
The files in this repository are used to generate the OLiA Reference Model and associated ontologies (`olia-top.owl`, `system.owl`) in [../owl/core](../owl/core).

For building the [OLiA Reference Model](../owl/core(olia.owl) and other core ontologies, run `make`. Note that this will build `../owl/core/olia.owl` only if it does not exist yet. In order to overwrite an existing model so, run `make refresh`.

- `system.owl` -> `../owl/core/system.owl`  (no changes)
	- [x] validate
- `olia-top.owl` -> `../owl/core/olia-top.owl` (no changes)
	- [x] validate
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
	- [x] remove log from `olia-header.owl`
- rebuild `../owl/core`
	- [x] Makefile
	- [x] `olia-top.owl`
	- [x] `system.owl`
	- [x] integrate `olia-header.owl` in `olia.owl`
	- [x] "DO NOT EDIT" disclaimer for core ontologies
	- [x] extend header for `olia.owl` (logs)
	- [x] dynamically build labels for `olia.owl`
	- [x] `olia.owl`
- `discourse.owl` -> `../owl/olia.owl`
	- [x] move from experimental into reference model, but see [../owl/experimental/discourse](../owl/experimental/discourse) for accompanying files
	- [x] add `LinguisticConcept/DiscourseEntity`
	- [x] add `LinguisticConcept/DiscourseFeature`	
	- [x] create legacy file `../owl/experimental/olia_discourse.owl`
	- [x] add dct:replacedWith and deprecation notes to `../owl/experimental/olia-discourse.owl`, it as deprecated
	- [x] merge into main namespace
	- [x] update documentation in `../doc` (Reference Model deprecated)
	- [x] update `../owl/experimental` documentation (Reference Model deprecated)
	- [x] "DO NOT EDIT" disclaimer for `../owl/experimental/olia-discourse.owl`
	- [x] validate
- build scripts
	- [x] update `../Makefile` 
	- [x] update release data
