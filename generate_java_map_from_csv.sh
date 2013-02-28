#!/bin/bash

DIR=$1 
echo "package org.nlp2rdf;

import org.apache.commons.collections.map.MultiValueMap;

import java.util.ArrayList;
import java.util.HashMap;

public class OLiAMap { 
"

TMP_DIR=`mktemp -d`


for FILE in `find $DIR -name "*.csv" `
do
	if [ -s $FILE ]
	then
		cp $FILE $TMP_DIR
	fi
done

for FILE in `ls $TMP_DIR `
do
	
	FILE="$TMP_DIR""/""$FILE"
	MAPNAME=$(echo "$FILE" | sed 's/.csv$//;s/.csv//;s/.*\///;s/-/_/g;s/\./_/;s/0/a/g;s/1/b/g;s/2/c/g;s/3/d/g;s/4/e/g;s/5/f/g;s/6/g/g;s/7/h/g;s/8/i/g;s/9/j/g;' )
	echo "	public static MultiValueMap $MAPNAME = MultiValueMap.decorate(new HashMap<String, ArrayList<String>>());
	
	static {
"
	sed "s/\t/\", \"/;s/^/\t\t$MAPNAME.put(\"/;s/$/\");/"  $FILE
	echo "	}
	"
done
echo "}"
