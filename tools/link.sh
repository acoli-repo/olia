#!/bin/bash

UPPER=$1;
LOWER=$2;
OUT=$3;
FLAGS=$4 $5 $6 $7 $8 $9;

HOME=`echo $0 | sed s/'\/[^\/]*$'//`;
if echo $HOME | grep '^$' >& /dev/null; then
	if [ -e ./$0 ] ; then HOME=.
	else HOME=`whereis $0 | egrep -m 1 '.' | sed -e s/'^[^\/]*'// -e s/'\/[^\/]*$'//`;
	fi;
fi;

if [ $OSTYPE = 'cygwin' ]; then
	PWD="cygpath -w -a .";
#	NORM="sed s/'\\'/'\/'/g";
else 
	PWD=pwd;
#	NORM=cat;
fi;

if echo $UPPER | grep -v ':/' >/dev/null; then
	if [ -e $UPPER ]; then			
		UPPER=file://localhost/`$PWD`/$UPPER;
		echo $UPPER;
	fi;
fi;

if echo $LOWER | grep -v ':/' >/dev/null; then
	if [ -e $LOWER ]; then			
		LOWER=file://localhost/`$PWD`/$LOWER;
		echo $LOWER;
	fi;
fi;


CLASSPATH=$HOME/java/bin:`find $HOME/java/lib | egrep '.zip$|.jar$' | perl -e 'while(<>) { s/\n/:/gs; print; }'`.;
if [ $OSTYPE = 'cygwin' ] ; then
	CLASSPATH=`echo $CLASSPATH | sed s/':'/'\n'/g`;
	CLASSPATH=`for file in $CLASSPATH; do
		cygpath -w $file;
		done | perl -e 'while(<>) { s/\n/;/gs; print; }'`;
fi;

LinkOntologies=olia/LinkOntologies;

if [ ! -e $HOME/java/bin/$LinkOntologies.class ]; then
	echo -n compiling $LinkOntologies ".." 1>&2;
	mkdir $HOME/java/bin 1>&2;
	if javac -d $HOME/java/bin -classpath $CLASSPATH $HOME/java/src/$LinkOntologies.java;
	then echo . ok 1>&2;
	else echo . failed 1>&2;
	fi;
fi;

java -classpath $CLASSPATH olia/LinkOntologies $UPPER $LOWER $OUT $FLAGS;

if [ -e $OUT ] ; then
	TMP=$OUT.tmp;
	while [ -e $TMP ]; do
		TMP=$OUT.`date +%N`.tmp;
	done;
	mv $OUT $TMP;
	echo $TMP '->' $OUT 1>&2
	egrep -v '<rdfs:subClassOf rdf:resource="http://www.w3.org/2002/07/owl#Thing"/>|<owl:equivalentClass|<owl:disjointWith|<owl:complementOf ' $TMP | \
	egrep -v '<rdfs:subPropertyOf rdf:resource="http://www.w3.org/2002/07/owl#bottomObjectProperty">' | \
	egrep -v '<rdfs:subPropertyOf rdf:resource="http://www.w3.org/2002/07/owl#bottomObjectProperty"/>' | \
	egrep -v '<rdfs:subPropertyOf rdf:resource="http://www.w3.org/2002/07/owl#topDataProperty"/>' | \
	egrep -v '<rdfs:subPropertyOf rdf:resource="http://www.w3.org/2002/07/owl#bottomDataProperty"/>' | \
	egrep -v '<owl:equivalentProperty '	> $OUT;
	if xmllint $OUT >& /dev/null; then rm $TMP >&/dev/null; else mv $TMP $OUT; fi
fi;
