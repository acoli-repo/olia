SHELL=bash

build: ../owl/core/olia.owl

# function to add a disclaimer, cf. https://www.gnu.org/software/make/manual/make.html#Call-Function, https://www.gnu.org/software/make/manual/make.html#Canned-Recipes
define add_core_disclaimer_no_body = 
	(egrep -m 1 '<\?' $(1); \
	 echo; \
	 echo '<!-- '; \
	 cat disclaimer-for-core-ontologies.txt | sed s/'^'/'\t'/; \
	 echo '-->'; \
	 echo;)
endef

# function to add a disclaimer, cf. https://www.gnu.org/software/make/manual/make.html#Call-Function, https://www.gnu.org/software/make/manual/make.html#Canned-Recipes
define add_core_disclaimer = 
	($(call add_core_disclaimer_no_body,$(1)); \
	 egrep -v '<\?' $(1))
endef

# function to retrieve labels from one OWL (RDFXML) file, arguments are file name and source namespace (make sure to include # or / in the end!)
define add_labels_to_owl=
	(rapper $(1) 2>/dev/null\
		| cut -f 1-2 -d '<'  \
		| grep $(2)  \
		| sort -u  \
		| perl -pe 's/[\r\n]+/ /; my $$orig=$$_; s/^[^#]*[#\/]([^>\/#]+)>/\1/; s/_/ /g; while(m/.*[a-z](.*[^ ])?[A-Z].*[a-z].*/) { s/(.*[a-z](.*[^ ])?)([A-Z].*[a-z].*)/\1 \3/g; }; s/([A-Z][a-z])/\L\1/g; s/ +$$//; print($$orig," <http://www.w3.org/2000/01/rdf-schema#label> \"\"\"",$$_,"\"\"\"@en.\n"); s/.*//g;' \
		| rapper -i turtle - '#' -o rdfxml 2>/dev/null \
		| xmllint - -xpath "*/*" 2>/dev/null)
endef

# for refreshing the *experimental* files, i.e., those published under http://purl.org/olia/discourse/olia_discourse.owl
refresh_discourse:
	@(($(call add_core_disclaimer_no_body,discourse.owl); \
	   (cat discourse.owl \
	    | grep -v '<?' \
	    | sed s/'olia\.owl'/'discourse\/olia_discourse\.owl'/g \
	    | grep -v '</rdf:RDF>';\
	    echo;\
	    echo '<!-- OLiA links -->';\
	    echo;\
	    rapper discourse.owl \
	    | cut -f 1-2 -d '<' \
	    | grep 'olia.owl#' \
	    | sort -u \
	    | perl -pe 's/^((.*)\/olia.owl(#[^\s]*))/\2\/discourse\/olia_discourse.owl\3 <http:\/\/purl.org\/dc\/terms\/replacedBy> \1 ; <http:\/\/www.w3.org\/2002\/07\/owl#deprecated> true . /;' \
	    | rapper -i turtle - '#' -o rdfxml \
	    | xmllint - --xpath '/*/*';\
	    echo '</rdf:RDF>';\
	   ) \
	  | rapper - '#' -o rdfxml ) \
	  > ../owl/experimental/discourse/olia_discourse.owl) 2>&1 \
	| tee discourse.log 1>&2

refresh: olia-top.owl system.owl disclaimer-for-core-ontologies.txt
	@if [ -e olia.owl ]; then rm olia.owl; fi; \
	if make olia.owl; then \
		$(call add_core_disclaimer,olia.owl) > ../owl/core/olia.owl;\
		echo 2>&1;\
	else \
		echo 'validity errors, keeping ../owl/core/olia.owl' 1>&2;\
	fi;\
	\
	for file in system.owl olia-top.owl; do \
		echo -n $$file' XML validation .. ' 1>&2;\
		if xmllint $$file 1>/dev/null 2>$$file.log; then \
			echo ok 2>&1;\
			echo -n $$file' RDFXML validation .. ' 1>&2;\
			if rapper $$file 1>/dev/null 2>$$file.log; then \
				rm $$file.log;\
				echo ok 2>&1;\
				$(call add_core_disclaimer,$$file) > ../owl/core/$$file;\
			else \
				echo failed, see $$file.log 2>&1;\
			fi;\
		else echo failed, see $$file.log 2>&1;\
		fi;\
		echo 2>&1;\
	done;

../owl/core/olia.owl: refresh

../owl/core/system.owl: refresh

../owl/core/olia-top.owl: refresh

olia.owl:
	@if [ -e olia.owl ]; then \
		echo found olia.owl, skipping recompilation 1>&2;\
	else \
		(cat olia-header.owl \
		  | grep -v '</rdf:RDF>';\
		  for file in morphosyntax.owl  syntax.owl morph.owl semlex.owl graphon.owl discourse.owl; do \
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
		\
		echo '<!-- aggregated logs -->';\
		(	echo '<http://purl.org/olia/olia.owl> <http://www.w3.org/2002/07/owl#versionInfo> """';\
			(	cat olia-logs.txt; \
				echo;\
				for file in *.owl ; do \
					rapper $$file 2>/dev/null ; \
				done \
				| grep versionInfo \
				| grep 'olia.owl>' \
				| cut -f 3 -d '>' \
				| perl -pe 's/(\\[nt])+/\n/g; s/"+/\n/g;' \
				| grep '^[0-9][0-9][0-9][0-9]';\
			) \
			| sort -u \
			| grep -P '[^\s]' \
			| sed s/'$$'/'<br><br>'/g \
			| w3m -T text/html -cols 72 -dump \
			| sed s/'^'/'       '/g;\
		echo '""" .';) \
		| rapper -i turtle - '#' -o rdfxml 2>/dev/null\
		| xmllint --xpath '/*/*' -;\
		echo;\
		echo;\
		\
		echo '<!-- labels converted from CamelCase -->';\
		for file in *owl; do \
			if [ $$file != olia.owl ]; then \
				echo '<!-- labels from '$$file' -->';\
				$(call add_labels_to_owl,$$file,'olia.owl#');\
				echo;\
			fi;\
		done;\
		echo;\
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


# TODO: add discourse.owl 
