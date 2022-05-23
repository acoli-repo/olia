#!/bin/bash
# read RDF/XML from args or stdin
# produces rdfs:labels from camel case
# returns RDF/XML fragment for insertion into RDF/XML files

# note that this is *highly customized* to OLiA as follows:
# - assume that we generally use CamelCase, not _ for word separation
# - assume that _ marks a suffix that is to be placed in parentheses (this is used in discourse extensions)
# - assume that suffixes do not use camel case

input=$*
if echo $input | egrep -v . >/dev/null; then
	input="-";
fi;
(echo "@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .";
for file in $input; do
	rapper -i rdfxml $file | \
	sed s/'\s'/'\n'/g | \
	egrep '^<' | sort -u | \
	grep 'purl.org/olia' | \
	egrep `basename $file` | \
	perl -pe '
		s/(<[^>#]*#([^>]*)>)/\1 rdfs:label "\2" ./;
		s/("[^_"]*)_([^"]*)(")/\1 (\2)\3/;
		while(m/"([^A-Z\.()]*)([A-Z])/) {
			s/"([^A-Z\.()]*)([A-Z])/"\1 \l\2/g;
		}
		while(m/"([^"]*)_/) {
			s/"([^"]*)_/"\1 /;
		}
		s/ " */ "/;
		s/" /"\@en /;
	' | grep rdfs:label;
done | sort -u ) | \
rapper -i turtle - '#' -o rdfxml | \
grep -v rdf:RDF | \
grep -v '<?xml'