#!/bin/bash
ISOCAT_LINK=http://purl.org/olia/experimental/dcr/dcr-link.rdf;
ISOCAT_ONTO=http://purl.org/olia/experimental/dcr/6.owl;
LEXINFO='';
echo synopsis $0 [ISOCat_LINK ISOCAT_ONTO [LEXINFO_FILE]] 1>&2;
echo '	'LEXINFO_FILE lexinfo in OWL or RDF, local file or URL, defaults to stdin 1>&2;
echo '	'ISOCAT_LINK Linking model connecting OLiA with ISOcat in RDF/XML, defaults to $ISOCAT_LINK 1>&2;
echo '	'ISOCAT_ONTO OWL2/DL model of ISOcat in RDF/XML, defaults to $ISOCAT_ONTO 1>&2;

LEXINFO=$3;
if echo $1 | egrep '.' >& /dev/null;
then ISOCAT_LINK=$1;
fi;

if echo $2 | egrep '.' >& /dev/null;
then ISOCAT_ONTO=$2;
fi;

if echo $ISOCAT_LINK | grep ':\/\/' >& /dev/null;
then wget -O -;
else echo read local file $ISOCAT_LINK 1>&2;
cat $ISOCAT_LINK;
fi | \
egrep 'rdf:about.*olia|isocat' | grep -B 1 'isocat' | grep -A 1 olia | \
perl -e 'while(<>) {
	s/^\-\-//;
	s/.*"([^"]*olia[^"]*)".*\n/\1\t/gs;
	s/.*"([^"]*isocat[^"]*)".*/\1\n/gs;
	print;
}' | egrep .;

if echo $LEXINFO | grep ':\/\/' >& /dev/null;
then wget -O - $LEXINFO;
else 
echo read LEXINFO-FILE from stdin 1>&2;
cat $LEXINFO;
fi | \
iconv -f utf-8 -t utf-8 -c |\
perl -e 'while(<>) {
	s/\t/ /g;
	s/.*(Class|Thing|Property|datcat).*"([^"]*)".*/$1\t$2/g;
	print;
}' | \
grep '^[^<]*\t' | \
grep -A 1 '&lexinfo;' |\
grep -B 1 'datcat' | \
grep -v '^\-\-$'  | \
perl -e 'while(<>) {
	s/\n/\t/g;
	s/^datcat\t(.*)/\1\n/g;
	print;
}'