#!/bin/bash
# we cannot get a SKOS/RDF dump of CCR (although this does seem to exist), so we scrape their portal

(
# 0. TTL header
(
echo '
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX dct: <http://purl.org/dc/terms/>
PREFIX owl: <http://www.w3.org/2002/07/owl#> ';


# 1. retrieve (up to 1000 links for elements from morphosyntax and syntax profiles) [currently 484]
CCR=`
	wget -O - "https://concepts.clarin.eu/ccr/browser/index.php?start=0&number=1000&matchTermsExact=true&termsOr=true&key=&facet0=ALL&facet1_7=http%3A%2F%2Fhdl.handle.net%2F11459%2FCCR_P-Morphosyntax_f701a84e-9171-1e2d-22cf-6528c2571d42&facet1_11=http%3A%2F%2Fhdl.handle.net%2F11459%2FCCR_P-Syntax_e7dbb854-a006-9939-4863-1236a4062a1b&facet3=ALL" | \
	\
	# extract CCR links 
	perl -pe 's/[\r\n]/ /g; s/<tr/\n<tr/g; s/(<\/tr>)/$1\n/g;' | egrep '<tr[^>]*class="odd"' | \
	perl -pe 's/\s*<\/td>.*//g; s/.*<td[^>]*>\s*//g;' | \
	perl -pe 's/.*\shref="([^"]*)".*/$1/g;' | \
	grep '^/ccr' | \
	cat
	#egrep -m 2 . # debug
`;

# 2. convert to shallow TSV
for ccr in $CCR; do
	wget https://concepts.clarin.eu/$ccr -O - | \
	\
	# extract URI and table of datatype properties (no object properties!)
	perl -pe 's/\s+/ /g; s/<tr/\n<tr/g; s/<\/tr>/<\/tr>\n/g;' | \
	egrep -A 99999 '<table class="resultList' | \
	grep '</tr>' | egrep '<td (class|item)'  | \
	\
	# re-code as TSV table
	sed -e s/'<td'/'\t<td'/g \
		-e s/'<[^>]*>'//g \
		-e s/'   *'/' '/g | \
	cut -f 2,3 | \
	egrep '[a-zA-Z].*\s.*[a-zA-Z]' | \
	\
	# cat; echo | # DEBUG
	\
	# 3. converstion to TTL
	# bring URI to front
	sed s/'^uri\t'// | \
	sort -k 2 | \
	perl -e '
		while(<>) {
			s/[\r\n]//;
			if(m/^[^\t]+$/) { 		# URI
				print "<".$_."> a rdfs:Resource";
			} elsif(m/^.+\t.+$/) { # triple
				my $prop=$_;
				$prop=~s/\t.*//;
				my $val=$_;
				$val=~s/.*\t//g;
				my $lang="";
				if(m/^[^\t]+\@[a-z][a-z]+\t.*/) {
					$lang=$prop;
					$lang=~s/.*@/@/;
					$prop=~s/@.*//;
				}
				if($prop eq "class") { $prop="rdf:type"; $val="skos:".$val; } 
				if($prop =~ "(prefLabel|definition|.*Note|note|example)") { $prop="skos:".$prop; $val="\"".$val."\"".$lang; } 
				if($prop =~ "(license)") { $prop="dct:".$prop; $val="\"".$val."\"".$lang; } 

				if($prop =~ m/.*:.*/ && $val =~ m/.+/) {
					print ";\n   ".$prop." ".$val;
				}
			} 
		};
		print ".\n";' | \
	egrep ':' | \
	# eliminate non-mapped properties
	sed s/' a rdfs:Resource.*'// | \
	# add isocat links
	perl -pe 's/(.*"[^"]*(http:\/\/www.isocat.org\/datcat\/DC-[0-9]+)[^"]*"(@[a-z]+)?)'/'$1;\n   rdfs:seeAlso <$2> '/g;
done 
) | tee ccr.ttl | \
echo "<http://hdl.handle.net/11459/> a owl:Ontology ." 
) | \
sed s/'skos:Concept'/'owl:Class'/g |\
rapper -i turtle -o rdfxml - http://hdl.handle.net/11459/ > ccr.owl