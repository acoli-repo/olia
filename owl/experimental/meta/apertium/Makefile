SHELL=bash

all: apertium.owl apertium-link.rdf

apertium.owl: List_of_symbols
	@BASEURI='http://purl.org/olia/experimental/meta/apertium/apertium.owl#';\
	SOURCE="https://wiki.apertium.org/wiki/List_of_symbols";\
	python3 wiki2ttl.py $$BASEURI List_of_symbols -s $$SOURCE 2>apertium.log \
	| tee apertium.ttl \
	| rapper -i turtle - $$BASEURI -o rdfxml > apertium.owl


link-unsupervised: apertium.owl
	@# we only link unambiguous concepts, and only if no linking is found
	if [ -e apertium-link.rdf ]; then \
		echo found apertium-link.rdf, skipping 1>&2; \
	else \
		echo linking in an unsupervised fashion. note that proper linking should be done semi-automatically or manually. Please consider running make apertium-link.rdf, instead 1>&2; \
		concept_count=`rapper apertium.owl  | egrep '#type|#subClassOf' | wc -l`;\
		for (( c=1; c<=$$concept_count; c++ )); do \
	    	echo "0"; \
	    	sleep 1; \
		done | \
		make apertium-link.rdf; \
	fi;

apertium-link.rdf:
	@# semiautomated linking
	../../../../tools/link.sh ../../../core/olia.owl apertium.owl apertium-link.rdf -indiv

List_of_symbols:
	-wget -nc "https://wiki.apertium.org/wiki/List_of_symbols?action=raw" -O  List_of_symbols

rebuild:
	rm List_of_symbols apertium.*
	make all
	