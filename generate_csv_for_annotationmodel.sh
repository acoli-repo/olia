#!/bin/bash

TARGETFOLDER=olia.nlp2rdf.org/owl

transform_annotation_model()
{
	rapper -i rdfxml $1   											|\
	grep '> <http://purl.org/olia/system.owl#\([a-zA-Z]*\)> \"' 	|\
	sed  's|"^^<http://www.w3.org/2001/XMLSchema#string> \. *$||' 	|\
	sed  's|" \. *$||' 	|\
	sed  's|^<||' 	|\
	sed  's|> <http://purl.org/olia/system.owl#\([a-zA-Z]*\)> "|\t\1\t|' 	|\
	awk 'BEGIN {FS=OFS="\t"}{t=$1;$1=$3;$3=t;t=$2;$2=$3;$3=t;print}'
}


for FILE in `find $TARGETFOLDER -name "*.owl"  `
do
    transform_annotation_model $FILE > "$FILE"".csv"
done

