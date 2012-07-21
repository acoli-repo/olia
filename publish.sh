#!/bin/sh 
rm -rI purl.org/olia
TARGET=purl.org/olia
mkdir -pv $TARGET

cp -v doc/index.html $TARGET
cp -v doc/ontologies-background.html $TARGET

#sed -i 's/http\:\/\/nachhalt.sfb632.uni-potsdam.de\/owl/http\:\/\/purl.org\/olia/' $TARGET/index.html


cp -v owl/stable/* $TARGET
cp -v owl/experimental/* $TARGET
cp -v owl/core/* $TARGET

sed -iv 's/http\:\/\/nachhalt.sfb632.uni-potsdam.de\/owl/http\:\/\/purl.org\/olia/' $TARGET/*.*
