all: apertium.owl

apertium.owl: List_of_symbols
	@BASEURI='http://purl.org/olia/experimental/meta/apertium/apertium.owl#';\
	SOURCE="https://wiki.apertium.org/wiki/List_of_symbols";\
	python3 wiki2ttl.py $$BASEURI List_of_symbols -s $$SOURCE 2>apertium.log \
	| tee apertium.ttl \
	| rapper -i turtle - $$BASEURI -o rdfxml > apertium.owl

List_of_symbols:
	-wget -nc "https://wiki.apertium.org/wiki/List_of_symbols?action=raw" -O  List_of_symbols

rebuild:
	rm List_of_symbols apertium.*
	make all
	