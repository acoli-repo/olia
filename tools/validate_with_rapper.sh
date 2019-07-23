#!/bin/sh

validateAllFilesInFolder()
{
    FOLDER=$1
    FILEENDING=$2
	for TARGET in `find $FOLDER -name "*.$FILEENDING" ` 
	do 
		echo "**********************"
		echo "* $TARGET "
		echo "**********************"
		rapper -i rdfxml --quiet $TARGET > /dev/null
	done 
}

validateAllFilesInFolder "../../owl/core" "owl"
validateAllFilesInFolder "../../owl/stable" "owl"
validateAllFilesInFolder "../../owl/stable" "rdf"
validateAllFilesInFolder "../../owl/experimental" "owl"
validateAllFilesInFolder "../../owl/experimental" "rdf"
