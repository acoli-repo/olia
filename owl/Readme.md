# OLiA OWL ontologies

- `core/`: Core Models
	- `olia.owl` (Reference Model)
	- `system.owl` (data structures for annotations and their features)
	- `olia_top.owl` (top-level classes)
- `stable/`: OLiA Annotation Models and Linking Models, tested, operational, with persistent and resolvable URIs
	- Annotation Models (`*.owl`) and Linking Models (`*-link.rdf`) for various languages
	- External Reference Models (`eagles.owl`): OWL/DL versions of terminology repositories and/or their linking with the Reference Model
	- `stable/multext-east`: OWL formalization of the [Multext-East](http://nl.ijs.si/ME/owl) morphosyntactic specifications
	- `stable/up`: OWL formalization of Petrov et al's (2011) "Universal" parts of speech
- `experimental/`: under development and/or not integrated yet
	- `experimental/language-specifics`: OLiA Annotation Models (*.owl) and Linking Models (*-link.rdf), incomplete drafts
	- `experimental/meta`: External Reference Models: OWL/DL versions of terminology repositories with preliminary (or no) linking with the Reference Model
	- `experimental/discourse`: OLiA Discourse Extensions: resolvable persistent URIs and operational, but not integrated with the OLiA Reference Model, yet
	- `experimental/unimorph`: experimental annotation model for the Universal Morphologies (note: the experimental part is concerned with the integration of these ontologies into UniMorph workflows and with the overall stability and consistency of the vocabulary)
	- `experimental/univ_dep`: experimental annotation model for the Universal Dependencies (note: the experimental part is concerned with the integration of these ontologies into the Universal Dependencies portal; in terms of modelling, the models for dependencies and parts of speech are stable)
	- build scripts for stable or experimental annotation models (e.g., `experimental/univ_dep` for Universal Parts of Speech, `igt` for Wikipedia interlinear glossed text abbreviations)
	- `experimental/semantics`: incubator for future OLiA models for semantics
	
