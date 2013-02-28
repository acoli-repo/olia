#!/bin/bash

TARGETFOLDER=olia.nlp2rdf.org/owl

transform_annotation_model()
{
	rapper -i rdfxml $1  | \
	grep 'http://purl.org/olia/system.owl#hasTag' | \
	grep -v "DatatypeProperty" | \
	sed 's/\^\^<http:\/\/www.w3.org\/2001\/XMLSchema#string>//' | \
	cut -f1,3 -d '>' | \
	sed 's/<//;s/> "/\t/;s/" .//' | \
	awk 'BEGIN {FS=OFS="\t"}{t=$1;$1=$2;$2=t;print}'
}

transform_linking_model()
{
	#URI for linking model e.g. http://purl.org/olia/penn-link.rdf
	LINKINGMODEL=$1 
	# filter only returns classes from http://purl.org/olia/olia.owl
	FILTER=http://purl.org/olia/olia.owl
	pellet.sh extract -v -s "ClassAssertion" ../../$LINKINGMODEL | rapper -i rdfxml  -I - - file | grep $FILTER |  cut -f1,3 -d '>' | sed 's/> </\t/;s/<//'
}


for FILE in `find $TARGETFOLDER -name "*.owl" `
do
	transform_annotation_model $FILE > "$FILE"".csv"
done


cd tools/pellet
for FILE in `find $TARGETFOLDER -name "*link.rdf" `
do
	transform_linking_model $FILE  > "$FILE"".csv"
done





