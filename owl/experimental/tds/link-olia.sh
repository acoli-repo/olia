#!/bin/bash
# aux script to bootstrap links between olia and an external reference model
# (partial) linking written to stdout
# note that these references have only been inserted for *novel* elements, and are thus incomplete
EXT_REF=http://languagelink.let.uu.nl/tds/onto/LinguisticOntology.owl;
OLIA=http://purl.org/olia/olia.owl;

echo '# partial linking with an external reference model, bootstrapped from references to $EXT_REF in $OLIA'
echo '# please note that this linking is necessarily incomplete and not necessarily correct, as references in OLiA only reflect relevant additions from a particular source'
echo '# for trivially identifiable concepts, try string matching methods'
OLIA_ESCAPED=`echo $OLIA | sed s/'\/'/'\\\\\/'/g`;
xmllint --format --recover $OLIA | \
egrep '^\s\s<owl:Class|.*'$EXT_REF | grep -B 1 $EXT_REF | grep -A 1 'owl:Class' | \
perl -e 'while(<>) {
	s/(.*)rdf:ID="/$1rdf:about="'$OLIA_ESCAPED'/g;
	s/.*rdf:about="([^"]*)".*/$1/g;
	s/^.*http/http/g;
	s/<.*//g;
	s/[, \t].*//g;
	print;
}' | grep -B 1 $EXT_REF | grep -v '\-\-' |\
perl -e 'while(<>) {
	s/^(.*olia.*)\n/<$1> <http:\/\/www.w3.org\/2000\/01\/rdf-schema#subClassOf> /gs;
	s/^([^<]*)\n/<$1> .\n/gs;
	print;
}'


