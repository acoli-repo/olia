#!/bin/bash
echo for files generated by OWLDoc, unescape HTML source code embedded into RDF literals 1>&2
echo synopsis: $0 "FILE1.html [.. FILEn.html]" 1>&2
for file in $*; do
	echo process $file 1>&2;
	sed -i 	-e s/'&lt;'/'<'/g \
			-e s/'&gt;'/'>'/g \
		$file;
done;