OLiA Annotation and Linking Models for the Universal Dependencies (http://universaldependencies.org/)

The UD annotation models are encoded as RDFa together with the original documentation. However, currently only at a local fork of the UD documentation maintained by Filip Ginter.

Despite this, we migrated ud-pos-link.rdf and ud-dep-link.rdf to stable, but keep copies here for reference and further development. The actual annotation models are referred to in index.html. An RDF/OWL version can be retrieved using an RDFa parser.

E.g., instead of http://fginter.github.io/docs/u/pos/all.html

write

https://www.w3.org/2012/pyRdfa/extract?uri=http://fginter.github.io/docs/u/pos/all.html&format=xml&rdfagraph=output&vocab_expansion=false&rdfa_lite=false&embedded_rdf=true&space_preserve=false&vocab_cache=true&vocab_cache_report=false&vocab_cache_refresh=false

and the web service generates RDF/XML on the fly

UD feats are not yet linked.