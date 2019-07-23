#!/bin/sh

#TARGET=../../owl/stable/susa.owl
cd pellet

validateAllFilesInFolder()
{
    FOLDER=$1
    FILEENDING=$2
	for TARGET in `find $FOLDER -name "*.$FILEENDING" ` 
	do 
		echo "**********************"
		echo "* $TARGET "
		echo "**********************"
		./pellet.sh consistency $TARGET
		#./pellet.sh lint $TARGET
	done 
}

validateAllFilesInFolder "../../owl/core" "owl"
validateAllFilesInFolder "../../owl/stable" "owl"
validateAllFilesInFolder "../../owl/stable" "rdf"
validateAllFilesInFolder "../../owl/experimental" "owl"
validateAllFilesInFolder "../../owl/experimental" "rdf"


