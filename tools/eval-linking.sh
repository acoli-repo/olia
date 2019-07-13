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
OLIA=$3;
if [ -z $LINKING_MODEL ]; then
	LINKING_MODEL=`echo $ANNO_MODEL | sed s/'\.owl$'/'-link.rdf'/`;
fi;
if [ -z $OLIA ]; then
	OLIA=../owl/core/olia.owl;
fi;
OLIA_TOP=`echo $OLIA | sed s/'\.owl$'/'-top.owl'/`

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

echo synopsis: $0 ANNO_MODEL "[LINKING_MODEL [REFERENCE_MODEL] ]" 1>&2;
echo '  'ANNO_MODEL'      'OLiA annotation model '(url or file)' 1>&2;
echo '  'LINKING_MODEL'   'OLiA linking model, by default extrapolated from ANNO_MODEL 1>&2;
echo '  'REFERENCE_MODEL' 'OLiA reference model, by default ../owl/core/olia.owl 1>&2;
echo '  'check reversibility for all system:hasTag values whether they can be recovered from OLiA 1>&2;

#############
# retrieval #
#############

TMP=$0.tmp;

# retrieve tags
rapper $ANNO_MODEL | grep 'system.owl#hasTag>' | grep '"' | \
sed s/'.*"\([^"]*\)".*'/'\1'/ | sort -u > $TMP;

echo $ANNO_MODEL system:hasTag `wc -l $TMP` 1>&2:

cat $TMP | \
$RUN CoNLLStreamExtractor \
	"http://pubs.opengroup.org/onlinepubs/009695399/functions/stdin.html#" \
	POS  \
	-u eval-linking.sparql | \
$RUN CoNLLRDFUpdater -custom \
	-model $ANNO_MODEL http://purl.org/olia/src \
	-model $LINKING_MODEL http://purl.org/olia/src \
	-model $OLIA http://purl.org/olia/olia.owl \
	-model $OLIA_TOP http://purl.org/olia/olia.owl \
	-updates \
		eval-linking.sparql | \
$RUN CoNLLRDFFormatter -conll POS TGT OLIA
