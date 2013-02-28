#!/bin/bash

DIR=$1 
echo "package org.nlp2rdf;

import org.apache.commons.collections.map.MultiValueMap;

import java.util.ArrayList;
import java.util.HashMap;

public class OLiAMap { "

for FILE in `find $DIR -name "*tiger.owl.csv" `
do
	MAPNAME=$(echo "$FILE" | sed 's/.owl.csv$//;s/.rdf.csv//;s/.*\///' )
	echo "	public static MultiValueMap $MAPNAME = MultiValueMap.decorate(new HashMap<String,ArrayList<String>>());
	{"
	sed "s/\t/\",\"/;s/^/\t\t$MAPNAME.put(\"/;s/$/\");/"  $FILE
	echo "	}
	"
done
echo "}"
