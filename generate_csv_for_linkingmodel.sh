#!/bin/bash

TARGETFOLDER=olia.nlp2rdf.org/owl

transform_linking_model()
{
        #URI for linking model e.g. http://purl.org/olia/penn-link.rdf
        LINKINGMODEL=$1 
        # filter only returns classes from http://purl.org/olia/olia.owl
        FILTER="<http://purl.org/olia/olia.owl#"
        ./pellet.sh extract -v -s "ClassAssertion" $LINKINGMODEL | rapper -i rdfxml  -I - - file | grep $FILTER |  cut -f1,3 -d '>' | sed 's/> </\t/;s/<//' | sort -u 
}

for FILE in `find $TARGETFOLDER -name "*link.rdf" `
do
        cd tools/pellet
        FILE="../../""$FILE"
        transform_linking_model $FILE  > "$FILE"".csv"
        cd .. 
        cd ..
done
