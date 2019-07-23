#!/bin/sh 

JARPATH=""; for jar in `find . -name "*.jar"`; do JARPATH=$JARPATH:$jar ; done; 
java -cp $JARPATH jena.eyeball $*
