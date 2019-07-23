workflow:

(a) create annotation model
- download conference paper with appendix
- copy text from PDF
- manually create a TTL file in the editor, using only system:hasTag, rdfs:subClassOf, rdf:type, rdfs:comment; mark line-breaks with <br/>, mark language
- recommendation: create a single top-level concept, you'll need this when doing the manual linking
- validate TTL against http://ttl.summerofcode.be/
- open and correct in protege
- check hierarchy (unattached elements?)
- check individuals (classes misidentified as individuals?)
- add ontology-level metadata information
- save as owl

(b) create linking model (manually)
- create new ontology in Protege, import annotation model and http://purl.org/olia/olia.owl
- go through all annotation model concepts which are not bold (i.e., locally enriched) and add a olia superclass
- in order to find the appropriate olia superclass, open the reference model in a text editor, search for relevant concepts
- document possible gaps and submit for review