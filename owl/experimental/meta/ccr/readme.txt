CLARIN Concept Registry

retrieval of TTL version of CLARIN CCR (parsed from html), linking as upper model with OLiA

Linking procedure:

build.sh
	- build.sh retrieves ccr.ttl from CCR
	- map skos:Concepts to owl:Classes to permit them to be used as upper model concepts > ccr.owl
linking
	- create ccr-link-inverted.rdf in Protege
	- import OLiA and ccr.owl
	- manual OLiA linking
	  define ccr concepts as either
		- subclasses* of OLiA concepts,
		- subclasses of TBC (for possible OLiA extensions), or
		- subclasses of Unlinked (for concepts more relevant to dictionaries)
	  * note that we have to reverse the linking (CCR is supposed to be an upper model)
		however, as the CCR export is an unstructured list without human-readable URIs whereas OLiA has readable URIs in a hierarchy,
		it is easier to annotate the other direction
	- revert OLiA linking with invert-olia-linking.xsl => ccr-link.rdf
refinement
	- manual refinement (class TBC: OLiA extensions, apply on ccr-link-inverted.rdf before conversion) [TODO]
	