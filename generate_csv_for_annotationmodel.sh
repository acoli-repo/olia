#!/bin/bash

TARGETFOLDER=olia.nlp2rdf.org/owl

transform_annotation_model()
{
	rapper -i rdfxml $1   | \
	grep '>\s<http://purl.org/olia/system.owl#hasTag>\s\"' |\
	sed 's/\^\^<http:\/\/www.w3.org\/2001\/XMLSchema#string>//' | \
	cut -f1,3 -d '>' | \
	sed 's/<//;s/> "/\t/;s/" .//' | \
	awk 'BEGIN {FS=OFS="\t"}{t=$1;$1=$2;$2=t;print}'
}

for FILE in `find $TARGETFOLDER -name "*.owl" `
do
        echo $FILE
        transform_annotation_model $FILE > "$FILE"".csv"
done

