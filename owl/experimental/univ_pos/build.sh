#!/bin/bash
# retrieve Petrov's Universal POS mappings
# produce annotation model and linking model for each of them

# # (1) retrieve
# if [ -e up.zip ]; then rm up.zip; fi;
# wget https://codeload.github.com/slavpetrov/universal-pos-tags/zip/master -O up.zip
# unzip -o up.zip

# (2) convert
if [ ! -d up ]; then
	mkdir up;
fi;
for file in `find | grep 'map$'`; do
	tagset=`echo $file | sed -e s/'.*\/'//g -e s/'\.map$'//`;
	echo $file "-->" up/$tagset.owl 1>&2;
	
	# annotation model
	(echo "PREFIX : <http://purl.org/olia/up/"$tagset".owl#>";
	echo "PREFIX osys: <http://purl.org/olia/system.owl#>";
	echo "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>";
	echo "PREFIX owl: <http://www.w3.org/2002/07/owl#>";
	
	echo "<http://purl.org/olia/up/"$tagset".owl> a owl:Ontology; \
        owl:versionInfo \""$tagset" tagset (UP edition from https://codeload.github.com/slavpetrov/universal-pos-tags, converted "`date +%F`")\"."
	
	cat $file | \
		perl -e '
		use URI::Escape;

		while(<>) {
			s/[\n\r]//g;
			my $tag=$_; $tag=~s/\t.*//g;
			my $pos=$_; $pos=~s/.*\t//g;
			
			my $puri=$pos;
			$puri=~s/\./%2E/g;
			$puri=~s/\-/%2D/g;
			$puri=uri_escape($puri);
			
			my $uri=$tag;
			$uri=~s/\./%2E/g;
			$uri=~s/\-/%2D/g;
			$uri=uri_escape($uri);
			
			print ":UP_".$puri." rdfs:subClassOf :Tag; rdfs:label \"".$pos."\" .\n";
			print ":".$uri." a :UP_".$puri."; osys:hasTier \"pos\"; osys:hasTag \"".$tag."\" .\n";
		}
		' | sort -u
	echo ) | \
	rapper -w -e -i turtle -o rdfxml -I http://IGNORE.ME/ - > up/$tagset.owl

	# linking model
	echo $file "-->" up/$tagset-link.rdf 1>&2;
	(echo "PREFIX : <http://purl.org/olia/up/"$tagset".owl#>";
	echo "PREFIX osys: <http://purl.org/olia/system.owl#>";
	echo "PREFIX olia: <http://purl.org/olia/olia.owl#>";
	echo "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>";
	echo "PREFIX owl: <http://www.w3.org/2002/07/owl#>";
	
	echo "<http://purl.org/olia/up/"$tagset"-link.rdf> a owl:Ontology; \
        owl:versionInfo \""$tagset" linking (UP edition from https://codeload.github.com/slavpetrov/universal-pos-tags, converted "`date +%F`")\"; \
		owl:imports <http://purl.org/olia/up/"$tagset".owl> .";
	
	cut -f 2 $file | sort -u | egrep . | \
		perl -e '
		use URI::Escape;

		while(<>) {
			s/[\n\r \t]//g;
			my $pos=$_;
			my $olia=$pos;
			
			# documentation follows https://github.com/slavpetrov/universal-pos-tags
			$olia=~s/^NOUN$/olia:Noun/;				# "nouns (common and proper)"
			$olia=~s/^VERB$/olia:Verb/;				# "verbs (all tenses and modes)"
			$olia=~s/^PRON$/olia:Pronoun/;			# "pronouns"
			$olia=~s/^ADJ$/olia:Adjective/;			# "adjectives"
			$olia=~s/^ADV$/olia:Adverb/;			# "adverbs"
			$olia=~s/^ADP$/olia:Adposition/;		# "adpositions (prepositions and postpositions)"
			$olia=~s/^CONJ$/olia:Conjunction/;		# "conjunctions"
			$olia=~s/^DET$/olia:Determiner/;		# "determiners"
			$olia=~s/^NUM$/olia:CardinalNumber/;	# "cardinal numbers"
			$olia=~s/^PRT$/olia:Particle/;			# "particles or other function words"
			$olia=~s/^PART$/olia:Particle/;			# (apparently typo for PRT)
			$olia=~s/^\.$/olia:Punctuation/;		# "punctuation#
			$olia=~s/^PUNCT$/olia:Punctuation/;		# (apparently typo for .)
			# unlinked: X (unclassified POS)		# "other: foreign words, typos, abbreviations"

			$olia=~s/^AUX$/olia:AuxiliaryVerb/;		# (not documented)
			$olia=~s/^INTJ$/olia:Interjection/;		# (not documented)
			$olia=~s/^PROPN$/olia:ProperNoun/;		# (not documented)
			$olia=~s/^SCONJ$/olia:SubordinatingConjunction/;	# (not documented)
			$olia=~s/^SYM$/olia:Symbol/;			# (not documented)
			
			my $puri=$pos;
			$puri=~s/\./%2E/g;
			$puri=~s/\-/%2D/g;
			$puri=uri_escape($puri);
			
			print ":UP_".$puri." rdfs:subClassOf ".$olia." .\n";
		}
		' | \
		# skip unlinked UP categories 
		grep "olia:" | \
		sort -u
	echo ) | \
	rapper -e -w -i turtle -o rdfxml -I http://IGNORE.ME/ - > up/$tagset-link.rdf

done;