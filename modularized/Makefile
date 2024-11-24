build: ../owl/core/olia.owl

refresh:
	@if [ -e olia.owl ]; then rm olia.owl; fi; \
	if make olia.owl; then \
		cp olia.owl ../owl/core/olia.owl;\
	else \
		echo 'validity errors, keeping ../owl/core/olia.owl' 1>&2;\
	fi;

../owl/core/olia.owl: refresh

olia.owl:
	@if [ -e olia.owl ]; then \
		echo found olia.owl, skipping recompilation 1>&2;\
	else \
		(cat olia-header.owl \
		  | grep -v '</rdf:RDF>';\
		  for file in morphosyntax.owl  syntax.owl morph.owl semlex.owl graphon.owl ; do \
			msg='# '$$file' #';\
			echo '<!-- ';\
			echo '	'$$msg | sed s/'[^\t]'/'#'/g;\
			echo '	'$$msg;\
			echo '	'$$msg | sed s/'[^\t]'/'#'/g;\
			echo '-->';\
			echo;\
			xmllint $$file --recover --xpath "/*/*[local-name()!='Ontology']";\
			echo;\
			echo;\
		done;\
		echo '</rdf:RDF>';) \
		> olia.xml;\
		\
		echo -n 'XML validity check .. ' 1>&2;\
		if xmllint olia.xml 1>/dev/null 2>olia.log; then \
			mv olia.xml olia.rdf;\
			echo ok 1>&2;\
			echo -n 'RDF/XML validity check .. ' 1>&2;\
			if (rapper -i rdfxml olia.rdf > olia.ttl 2>olia.log); then \
				echo 'ok' 1>&2;\
				mv olia.rdf olia.owl;\
				rm olia.log olia.ttl;\
			else \
				echo 'failed, see olia.rdf and olia.log' 1>&2;\
			fi;\
		else \
			echo 'failed, see olia.xml and olia.log' 1>&2;\
		fi;\
	fi;








#	| tee olia.ttl \
#	| rapper -i turtle -o rdfxml - '#' \
#	> olia.owl
		
				# TODO: add discourse.owl 
