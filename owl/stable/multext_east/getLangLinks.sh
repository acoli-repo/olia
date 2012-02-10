#!/bin/bash
# read msd-owl from stdin
# arg1: language reference, e.g., http://lexvo.org/id/iso639-3/eng
# for every individual (tag), write rdf/xml fragment to stdout
# NOTE: uses namespace dc
# 	xmlns:dc="http://purl.org/dc/elements/1.1/"
# (may to be added if the fragment is inserted in the msd owl)
# NB: den jetzigen msds fehlt xml:base, cf. xml:base="http://nl.ijs.si/ME/owl/msd-bg.owl"
# xmlns:dc="http://purl.org/dc/elements/1.1/" xml:base="http://nl.ijs.si/ME/owl/msd-bg.owl"
# außerdem: import http://www.lingvoj.org/ontology (für property definition)
LangRef=`echo $1 |sed s/'[\/]'/'\\\\\/'/g`;
echo '<owl:ObjectProperty rdf:about="http://purl.org/dc/elements/1.1/language"/>';
echo '<owl:Class rdf:about="http://purl.org/dc/terms/LinguisticSystem"/>';
echo '<dc:LinguisticSystem rdf:about="'$1'"/>';
egrep '<mte:|<mtecore:' | sed s/'[ \t]'/'\n'/g | egrep 'rdf:ID' | sed -e s/'^.*="'// -e  s/'".*'// | sort -b -u | \
sed s/'.*'/'<rdf:Description rdf:about="#&"><dc:language rdf:resource="'$LangRef'"\/><\/rdf:Description>'/g