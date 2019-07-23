#!/bin/sh

ASSUME="owl ../../owl/core/system.owl ../../owl/core/olia.owl"
cd eyeball

validateAllFilesInFolder()
{
    FOLDER=$1
    FILEENDING=$2
	for TARGET in `find $FOLDER -name "*.$FILEENDING" ` 
	do 
		echo "**********************"
		echo "* $TARGET "
		echo "**********************"
		./eyeball.sh  -assume $ASSUME  $TARGET  -check $TARGET 
	done 
}

validateAllFilesInFolder "../../owl/core" "owl"
validateAllFilesInFolder "../../owl/stable" "owl"
validateAllFilesInFolder "../../owl/stable" "rdf"
validateAllFilesInFolder "../../owl/experimental" "owl"
validateAllFilesInFolder "../../owl/experimental" "rdf"





