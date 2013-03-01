#!/bin/sh 
TARGET=olia.nlp2rdf.org

# reset
rm -rI $TARGET
mkdir -pv $TARGET/owl


cp -v doc/* $TARGET
cp -rv owl/experimental/* $TARGET/owl
cp -rv owl/stable/* $TARGET/owl
cp -rv owl/core/* $TARGET/owl

