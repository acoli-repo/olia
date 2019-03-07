#!/bin/bash
# given an annotation model and an (optional) linking model
# check whether annotation linking is lossless and reversible, 
# i.e., annotation model can be recovered from the linking
# apply to annotation models that use system:hasTag only

##########
# config #
##########

ANNO_MODEL=$1;
LINKING_MODEL=$2;
if [ -z $LINKING_MODEL ]; then
	LINKING_MODEL=`echo $ANNO_MODEL | sed s/'\.owl$'/'-link.rdf'/`;
fi;

# set to your "official" installations, if necessary
CONLL_RDF=$HOME/conll-rdf;

# if $CONLL_RDF/run.sh doesn't exist, build it
RUN=$CONLL_RDF/run.sh;
if [ -x $RUN ]; then
	echo using CoNLL_RDF installation at $CONLL_RDF 1>&2;
else
	wget -nc https://codeload.github.com/acoli-repo/conll-rdf/zip/master -O master.zip
	unzip master.zip
	mv conll-rdf-master $CONLL_RDF;
	# rm master.zip
	chmod u+x $CONLL_RDF/*.sh;
	echo 1>&2;
fi;


########
# help #
########

echo synopsis: $0 ANNO_MODEL "[LINKING_MODEL]" 1>&2;
echo '  'ANNO_MODEL'    'OLiA annotation model '(url or file)' 1>&2;
echo '  'LINKING_MODEL' 'OLiA linking model, if missing, extrapolate from ANNO_MODEL 1>&2;
echo '  'check reversibility for all system:hasTag values whether they can be recovered from OLiA 1>&2;

#############
# retrieval #
#############

# retrieve tags
rapper $ANNO_MODEL | grep 'system.owl#hasTag>' | grep '"' | \
sed s/'.*"\([^"]*\)".*'/'\1'/ | sort -u | \
\
#
$RUN CoNLLStreamExtractor \
	"http://pubs.opengroup.org/onlinepubs/009695399/functions/stdin.html#" \
	POS  \
	-u eval-linking.sparql | \
$RUN CoNLLRDFUpdater -custom \
	-model $ANNO_MODEL http://purl.org/olia/src \
	-model $LINKING_MODEL http://purl.org/olia/src \
	-model http://purl.org/olia/olia.owl \
	-updates \
		eval-linking.sparql | \
$RUN CoNLLRDFFormatter -conll POS TGT 
