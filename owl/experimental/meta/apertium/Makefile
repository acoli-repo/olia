all: apertium.owl

apertium.owl: List_of_symbols
	@BASEURI='https://wiki.apertium.org/wiki/List_of_symbols#';\
	python3 wiki2ttl.py $$BASEURI List_of_symbols 2>apertium.log \
	| rapper -i turtle - $$BASEURI -o rdfxml > apertium.owl

List_of_symbols:
	-wget -nc "https://wiki.apertium.org/wiki/List_of_symbols?action=raw" -O  List_of_symbols

rebuild:
	rm List_of_symbols
	make all
	