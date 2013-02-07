#!/bin/sh 
TARGET=olia.nlp2rdf.org
rm -rI $TARGET
mkdir -pv $TARGET
mkdir -pv $TARGET/owl

cp -v doc/* $TARGET

#sed -i 's/http\:\/\/nachhalt.sfb632.uni-potsdam.de\/owl/http\:\/\/purl.org\/olia/' $TARGET/index.html


cp -rv owl/stable/* $TARGET/owl
cp -rv owl/experimental/* $TARGET/owl
cp -rv owl/core/* $TARGET/owl

#sed -iv 's/http\:\/\/nachhalt.sfb632.uni-potsdam.de\/owl/http\:\/\/purl.org\/olia/' $TARGET/*.*
