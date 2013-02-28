#!/bin/sh

for i in `ls ../olia.nlp2rdf.org/owl/*.owl.csv` 
do 
  echo "***$i***" 
  cut -f1 $i | grep -v '^http' | grep '[a-zA-Z0-9]' |  sort | uniq -D  
done
