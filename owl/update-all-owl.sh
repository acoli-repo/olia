#!/bin/bash
# write an owl ontology that just imports every ttl, rdf and owl file in the argument directory
# note that it is not recommended to work with this ontology directly, but it can be used to
# provide metadata about the status of a resource
# currently requires RDF/XML format
# must be executed in this directory


( # logging
	#########
	# setup #
	#########
	# update all.ttl for all files provided as arguments or for core and stable

	FILES=$*

	if [ $# -eq 0 ]; then FILES="core/ stable/"; fi

	########
	# prep #
	########
	 
	tmp=tmp

	if [ -e $tmp ]; then
		tmp=$tmp.`ls | grep $(basename $tmp) | wc -l`
	fi;
	mkdir $tmp

	##################
	# update all.ttl #
	##################

	cp all.ttl $tmp/all.ttl
	rapper -i turtle $tmp/all.ttl 2>$tmp/all.log > $tmp/all.nt
	if [ ! -s $tmp/all.nt ]; then
		echo all.ttl failed: check validity of all.ttl 1>&2
		cat $tmp/all.log | sed s/'^'/'\t'/g 1>&2
	else
		( # new turtle version
			cat $tmp/all.ttl | egrep -i '@prefix\s|PREFIX\s'	# to be maintained in resulting turtle
			(	# non-redundant nt version
				cat $tmp/all.ttl | egrep -i '@prefix\s|PREFIX\s'	# to be maintained in resulting turtle
				cat $tmp/all.nt
				echo "<http://purl.org/olia/all.owl> owl:versionInfo "'"'`date +"%Y-%m-%d"`' updated"@en .' 2>/dev/null
				
				
				for file in `find $FILES | egrep 'rdf$|owl$'`; do
					nt=$tmp/`basename $file`.nt
					log=$tmp/`basename $file`.log
					rapper $file > $nt 2>$log
					
					echo -n $file' ... ' 1>&2
					if [ ! -s $nt ]; then
						echo failed: check validity of $file 1>&2;
						cat $log | sed s/'^'/'\t'/g 1>&2 
					else
						url=`grep -m 1 " <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#Ontology>" $nt | \
							sed s/' .*'//g`
						if echo $url | grep -v '^<http' >& /dev/null; then
							echo failed: does not use an HTTP URI, but $url, skipping 1>&2
							cat $log | sed s/'^'/'\t'/g 1>&2 
						else
							echo "<http://purl.org/olia/all.owl> owl:imports "$url" ."

							# note that the following may fail on older (pre-10.3) MacOS systems
							echo $url owl:versionInfo '"'`date -r $file +"%Y-%m-%d"`' updated"@en .' 2>/dev/null
							if egrep 'license>' $nt; then 
								echo ok >/dev/null; 
							else 
								echo -n warning: missing license' ... ' 1>&2;
							fi
							if echo $file | egrep 'stable.*owl$' >&/dev/null; then
								if egrep 'language>' $nt; then
									echo ok >/dev/null
								else
									echo -n warning: missing language statement' ... ' 1>&2
								fi
							fi;
							if [ -s $nt ]; then
								echo ok 1>&2
							else
								echo failed 1>&2
							fi
						fi
					fi
				done
			) | rapper -i turtle - "http://purl.org/" 2> $tmp/rapper.log | sort -u 
		) | rapper -i turtle -o turtle - "http://purl.org/" 2>>$tmp/rapper.log >all.ttl
	fi

	if [ ! -s all.ttl ]; then
		echo all.ttl failed 1>&2
		cat $tmp/rapper.log | sed s/'^'/'\t'/g 1>&2
	else
		rapper -i turtle all.ttl -o rdfxml > all.owl 2>/dev/null
	fi

	###########
	# cleanup #
	###########

	rm -rf $tmp
) 2>&1 | tee all.log