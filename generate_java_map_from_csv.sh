#!/bin/bash

DIR=$1 
echo "package org.nlp2rdf;

import org.apache.commons.collections.map.MultiValueMap;

import java.util.ArrayList;
import java.util.HashMap;

public class OLiAMap { 
"

for FILE in `find $DIR -name "*.csv" `
do
	MAPNAME=$(echo "$FILE" | sed 's/.owl.csv$//;s/.rdf.csv//;s/.*\///;s/-/_/g;s/[0-9]/INT/g' )
	echo "	public static MultiValueMap $MAPNAME = MultiValueMap.decorate(new HashMap<String, ArrayList<String>>());
	
	static {
"
	sed "s/\t/\", \"/;s/^/\t\t$MAPNAME.put(\"/;s/$/\");/"  $FILE
	echo "	}
	"
done
echo "}"
