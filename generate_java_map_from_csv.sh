#!/bin/bash

TARGETFOLDER=olia.nlp2rdf.org/owl
find $TARGETFOLDER -name "*.java" | xargs rm

java_name()
{
	NICENAME=$(echo "$1" | sed 's/-/_/g;s/\./_/g;s/0/Zero/g;s/One/b/g;s/2/Two/g;s/3/Three/g;s/4/Four/g;s/5/Five/g;s/6/Six/g;s/7/Seven/g;s/8/Eight/g;s/9/Nine/g;' )
	NICENAME=${NICENAME^};
	echo $NICENAME
}

transform_linkingmodel_to_java()
{
	FILE="$1""-link.rdf.csv"
	if [ -s $FILE ]
	then
		echo "	public static MultiValueMap links = MultiValueMap.decorate(new HashMap<String, ArrayList<String>>());
	
	static {
"
	sed "s/\t/\", \"/;s/^/\t\tlinks.put(\"/;s/$/\");/"  $FILE
	echo "	}
	"
	fi
}

transform_annotationmodel_to_java()
{
	FILE="$1"".owl.csv"
	if [ -s $FILE ]
	then
	#treatment of hasTag
		echo "	public static MultiValueMap hasTag = MultiValueMap.decorate(new HashMap<String, ArrayList<String>>());
	
	static {
"
	grep 'hasTag$' $FILE | cut -f1,2 | sed "s/\t/\", \"/;s/^/\t\thasTag.put(\"/;s/$/\");/" 
	echo "	}
	"
	fi
}


for FILE in `find $TARGETFOLDER -name "*-link.rdf"  `
do
	#s/.*\///;
    PLAINNAME=$(echo "$FILE" | sed 's/-link.rdf$//;s/.*\///;' ) 
    JAVANAME=$(java_name $PLAINNAME)
    
	echo "package org.nlp2rdf.vocabularymodule.olia;

import org.apache.commons.collections.map.MultiValueMap;

import java.util.ArrayList;
import java.util.HashMap;

public class $JAVANAME { 
" 	> $TARGETFOLDER/$JAVANAME.java
	transform_linkingmodel_to_java $TARGETFOLDER/$PLAINNAME   >>  $TARGETFOLDER/$JAVANAME.java
	transform_annotationmodel_to_java $TARGETFOLDER/$PLAINNAME >>  $TARGETFOLDER/$JAVANAME.java
	echo "
}
	"  >>  $TARGETFOLDER/$JAVANAME.java
done


