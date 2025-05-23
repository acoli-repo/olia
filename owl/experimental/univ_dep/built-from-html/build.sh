#!/bin/bash
# no args
# retrieves generated HTML and creates ttl file
# possibly to be updated for UD versions above v2.5, certainly to be updated for UD versions 3.*

##########
# UD v.1 #
##########
version=1;
src=https://universaldependencies.org/docsv1/
	dir=ud-v$version;
	base=`echo $src | sed s/'[^\/]*$'//`
	# echo $base;
	if [ ! -e $dir ]; then
		mkdir $dir >&/dev/null;
		cd $dir;
		docs=$(
			wget -nc $base;
			wget -nc $src;
			cat *.html | \
			sed -e s/'<'/'\n<'/g \
				-e s/'>'/'>\n'/g \
				-e s/'\s\s*'/' '/g | \
			egrep '<a ' | sed s/' '/'\n'/g | egrep '^href=' | \
			sed s/'.*="\([^\"]*\)".*'/'\1'/ | \
			egrep '/all.html');
		for doc in $docs; do
			type=`echo $doc | sed s/'.*\/\([^\/]*\)\/[^\/]*$'/'\1'/g;`;
			wget $base/$doc  -O - | \
				xmllint -html -recover -xmlout - | \
				xmllint -recover - | \
				grep -v '^<!' | \
				sed -e s/'xmlns=\"[^\"]*\"'//g \
					-e s/'\(<[\/]*\)html'/'\1xml'/g \
					-e s/'xml:lang="en-GB"'//g | \
				xsltproc --param baseuri '"'$base'"' ../html2ttl.xsl - >> $type.ttl;
				echo >> $type.ttl;
		done;
	
	cd ..;
	fi;

##########
# UD v.2 #
##########
version=2;
src=https://universaldependencies.org/guidelines.html


# https://universaldependencies.org/en/feat/


	dir=ud-v$version;
	base=`echo $src | sed s/'[^\/]*$'//`
	if [ ! -e $dir ]; then
		mkdir $dir >&/dev/null;
		cd $dir;

		# attempts to retrieve language-specific information 
		
		# # # UD v2.4: 49 languages only!
		# langs=`
		# (wget https://universaldependencies.org -O -;
		 # wget https://github.com/UniversalDependencies/docs -O -;
		# ) | \
		# sed -e s/'<'/'\n<'/g \
			# -e s/'>'/'>\n'/g \
			# -e s/'\s\s*'/' '/g | \
		# grep '<a ' | grep 'href="' | \
		# sed s/'.*href="\([^\"]*\)".*'/'\1'/g | \
		# egrep '^[a-z][a-z][a-z]?/index.html|^treebanks/[a-z][a-z][a-z]*-comparison.html|^\/UniversalDependencies\/docs\/tree\/pages-source\/_[a-z}[a-z]*]$' | \
		# sed -e s/'^\([a-z][a-z][a-z]*\)\/index.html'/'\1'/ \
			# -e s/'^treebanks\/\([a-z][a-z][a-z]*\)-comparison.html'/'\1'/ \
			# -e s/'^\/UniversalDependencies\/docs\/tree\/pages-source\/_\([a-z}[a-z]*]\)$'/'\1'/ \
			# | \
		# sort -u
		# `;
		
		# https://universaldependencies.org/en/dep/ etc., no all.html docs anymore

		# we only produce the universal tags with the same approach as above
		
		docs=$(
			wget -nc $base ;
			wget -nc $src ;
			cat *.html | \
			sed -e s/'<'/'\n<'/g \
				-e s/'>'/'>\n'/g \
				-e s/'\s\s*'/' '/g | \
			egrep '<a ' | sed s/' '/'\n'/g | egrep '^href=' | \
			sed s/'.*="\([^\"]*\)".*'/'\1'/ | \
			egrep '/all.html');
		for doc in $docs; do
			type=`echo $doc | sed s/'.*\/\([^\/]*\)\/[^\/]*$'/'\1'/g;`;
			wget $base/$doc  -O - | \
				perl -pe 's/\n/ /gs; s/(<!--)/\n$1/g; s/(-->)/$1\n/g;' | \
				egrep -v '^<!--.*-->$' | \
				sed s/'\(<h3[^>]*>\)\([^<>:][^<>:]*\):'/'\1<code>\2<\/code>:'/g | \
				xmllint -html -recover -xmlout - | \
				xmllint -recover - | \
				grep -v '^<!' | \
				sed -e s/'xmlns=\"[^\"]*\"'//g \
					-e s/'\(<[\/]*\)html'/'\1xml'/g \
					-e s/'xml:lang="en-GB"'//g | \
				xsltproc --param baseuri '"'$base'"' ../html2ttl.xsl - | \
				sed -e s/'^\([a-z]\):\([1-3]\)'/'\1:%3\2'/g |
				perl -pe '
					s/:([0-9])/:%3$1/g; 		# hex encoding of numbers
					s/(:[^\s]*)\[[^\]\s]*\]/$1/g;	# drop parentheses
					s/\[[^\]\s]*\]([^\s]*:)/$1/g;	# drop parentheses
					' \
					>> $type.ttl;
				echo >> $type.ttl;
		done;
		
		echo >> dep.ttl

		# UD v.2: language-specific POS tag/dep instances (no definitions included, yet)
		echo '@prefix u: <https://universaldependencies.org/u/pos/> .'

		# languages extrapolated from English language model
		for type in pos dep; do
			TAG=`
				rapper -i turtle $type.ttl | \
				sed s/'\s.*'// | \
				uniq | \
				sort -u | \
				grep '/u/'$type'/' | \
				sed -e s/'[<>]'//g -e s/'.*\/'//g;`
			for tag in $TAG; do
				langs=`\
					wget https://universaldependencies.org/en/$type/$tag -O -  | \
					perl -pe 's/\s+/ /gs; s/<\//\n/g;' | \
					egrep 'href=' | \
					egrep '[a-z][a-z]/'$type'/'$tag'.html' | sed s/'.*>'//g;`
				langs='en '$langs;
				for lang in $langs; do
					echo '@prefix '$lang': <https://universaldependencies.org/'$lang'/'$type'/> .'
					echo $lang':'$tag' a u:'$tag '; rdfs:label "'$tag' ('$lang')"; owl:versionInfo "created from https://universaldependencies.org/en/'$type'/'$tag'"@en ; dct:language "'$lang'"; system:hasTag "'$tag'"; system:hasTier "'$type'".';
					echo;
				done;
			done >> $type.ttl
		done;
		
		# UD v.2 extension: language-specific relations
		# language-specific relations (no definitions included)

		DEPS=`
		wget https://universaldependencies.org/ext-dep-index.html -O - | \
			perl -pe 's/\s+/ /gs; s/<a /\n<a /g;' | \
			egrep '<a.*href=' | \
			sed s/'^<a[^>]*>'/''/ | \
			egrep '^[^<>:=]*:[^<>:=]*</a>' | \
			sed -e s/'<\/li.*'// -e s/'<\/a>:\s*'/'\t'/g | \
			sed s/'\s\s*'/'_'/g`;

		if [ ! -e ../langs.sed ]; then
			sed \
				-e s/',[a-z,]*$'//g \
				-e s/'^\([^\t]*\)\t\([a-z,]*\)$'/'s\/^\1$\/\2\/g;'/ \
				../langs.tsv > ../langs.sed
		fi;
			
		(echo '@prefix udx: <https://universaldependencies.org/ext-dep-index#> .'
			
		for dep in $DEPS; do
			langs=`echo $dep | sed -e s/'^[^_]*_'// -e s/',_'/' '/g;`
			deplabel=`echo $dep | sed s/'_.*'//`;
			depuri=`echo $deplabel | sed s/':'/'-'/g;`
			URIS="";
			#for lang in $LANGS; do
			# #for lang in en; do
			for lang in $langs; do
				lang=`echo $lang | sed s/'_'/' '/g;`
				langname=$lang;
				# echo -n $lang' ';
				lang=`echo $lang | sed -f ../langs.sed`;
				if echo $lang | egrep '^[a-z][a-z][a-z]?$' >& /dev/null; then
					echo '@prefix '$lang': <https://universaldependencies.org/'$lang'/dep/>.';
					
					echo $lang:$depuri system:hasTag '"'$deplabel'"; system:hasTier "dep"; a udx:'$depuri' .';
				fi;
				echo $lang:$depuri rdfs:label '"'$deplabel' ('$langname')"@en; system:hasTag "'$deplabel'"; system:hasTier "dep"; a udx:'$depuri'; dct:language "'$lang'" .';
			done;
				
			echo '[] rdfs:label "'$deplabel' (cross-lingual)"@en; system:hasTag "'$deplabel'"; system:hasTier "dep"; a udx:'$depuri'; owl:versionInfo "placeholder for other languages, currently being used in '$langs'"@en .';
			
			short=`echo $deplabel | sed s/':.*'//`;
			echo 'udx:'$depuri' rdfs:label "'$deplabel'"; rdfs:subClassOf u:'$short'; rdfs:isDefinedBy "https://universaldependencies.org/ext-dep-index.html"; rdfs:comment "'$langs'"@en .';
			
		done ) >> dep.ttl

		# UD v.2 full feature list (no definitions)
		(echo "@prefix u: <https://universaldependencies.org/u/> ."
		echo "@prefix uf: <https://universaldependencies.org/u/feat/> ."

		wget https://universaldependencies.org/ext-feat-index.html -O ext-feat-index.html;

		cat ext-feat-index.html | \
		perl -pe 's/\s+/ /gs; s/<li/\n<li/g; s/<\/li>/<\/li>\n/g;' | \
		grep '<li' | \
		sed s/'<[^>]*>'//g | \
		egrep '^[^ ][^ ]*=' | \
		sed s/'^\([^=]*\)=\([^ \[]*\)  *\([a-z]*\)_\([^ ]*\) \([0-9][0-9]*\)$'/'\
		@prefix \3-feat: <https:\/\/universaldependencies.org\/\3\/feat\/\1#> . \
		@prefix u-feat: <https:\/\/universaldependencies.org\/u\/feat\/\1#> . \
		uf:\1 rdfs:subClassOf u:feat; rdfs:label "\1". \
		u-feat:\2 rdfs:subClassOf uf:\1; rdfs:label "\1=\2". \
		\3-feat:\2 a u-feat:\2; rdfs:label "\1=\2"; system:hasTagEndingWith "\1=\2"; system:hasTagContaining "\1=\2|"; dct:language "\3"; system:hasTier "feat"; rdfs:comment "\3_\4 \5" .'/g;

		cat ext-feat-index.html | \
		perl -pe 's/\s+/ /gs; s/<li/\n<li/g; s/<\/li>/<\/li>\n/g;' | \
		grep '<li' | \
		sed s/'<[^>]*>'//g | \
		egrep '^[^ ][^ ]*=' | \
		sed s/'^\([^=]*\)=\([^ ]*\)  *\([a-z]*\)_\([^ ]*\) \([0-9][0-9]*\)$'/'\1=\2 \3'/g | \
		sort -u | sed s/' .*'// | uniq -c | \
		egrep '^\s*1\s' | sed s/'^[ \t0-9]*'// | \
		sed s/'^\([^=]*\)=\(.*\)$'/'\
		@prefix u-feat: <https:\/\/universaldependencies.org\/u\/feat\/\1#> . \
		u-feat:\2 owl:versionInfo "language-specific".'/;

		cat ext-feat-index.html | \
		perl -pe 's/\s+/ /gs; s/<li/\n<li/g; s/<\/li>/<\/li>\n/g;' | \
		grep '<li' | \
		sed s/'<[^>]*>'//g | \
		egrep '^[^ ][^ ]*=' | \
		sed s/'^\([^=]*\)=\([^ ]*\)  *\([a-z]*\)_\([^ ]*\) \([0-9][0-9]*\)$'/'\1 \3'/g | \
		sort -u | sed s/' .*'// | uniq -c | \
		egrep '^\s*1\s' | sed s/'^[ \t0-9]*'// | \
		sed s/'^\([^=]*\)\s*$'/'uf:\1 owl:versionInfo "language-specific".'/;
		) >> feat.ttl
		
		# add language-specific definitions
		
		for file in *.ttl; do
			URIS=`
				rapper -i turtle $file | sed -e s/'[# \t].*'//g -e s/'[<>]'//g | sort -u | egrep '/universaldependencies.org/[a-z][a-z]'
			`;
			for uri in $URIS; do
			 #https://universaldependencies.org/en/pos/NOUN https://universaldependencies.org/en/feat/Case https://universaldependencies.org/en/dep/nsubj; do #`find ud-v2/*/*`; do
				#if [ -f $uri ]; then 
				if wget --spider $uri 2>/dev/null; then
					echo $uri 1>&2;
					lang=`echo $uri | sed s/'^https:\/\/[^\/]*\/\([^\/]*\)\/.*'/'\1'/;`
					type=`echo $uri | sed s/'^https:\/\/[^\/]*\/[^\/]*\/\([^\/]*\)\/.*'/'\1'/;`
					wget $uri -O - 2>/dev/null | \
					xmllint -html -recover -xmlout - 2>/dev/null | \
					xmllint -recover - 2>/dev/null | \
					grep -v '^<!' | \
					sed -e s/'xmlns=\"[^\"]*\"'//g \
						-e s/'\(<[\/]*\)html'/'\1xml'/g \
						-e s/'xml:lang="en-GB"'//g \
						-e s/'\(<[\/]*\)[^"<> \t:]*:'/'\1'/g \
						-e s/'\(\s\)[^ "\t<>:]*:'/'\1'/g \
						| \
					xsltproc --param lang '"'$lang'"' --param type '"'$type'"' ../html2ttl.xsl -
				fi;
			done;
			echo >> $file;
		done >> $file;
		
		cd ..;
	fi;
	
	# HTML to formatted text		
	for dir in */; do
		cd $dir;
		for file in *.ttl; do
			cp $file tmp.ttl;
			cat tmp.ttl |  # fix encoding errors
			perl -pe '
				# s/:([0-9])/:%3$1/g; 		# hex encoding of numbers
				while(m/^((.*\s)*u:[^\s\[]*)\[[^\s\]]*\].*/) {
					s/^((.*\s)*u:[^\s\[]*)\[[^\s\]]*\]/$1/g; # drop parentheses of universal feats
				}
				s/(:[^\s]*)\[([^\]\s]*)\]/$1%5B$2%5D/g;	# hex encoding of parentheses
				s/\[([^\]\s]*)\]([^\s]*:)/%5B$1%5D$2/g;	# hex encoding of parentheses
				#s/(:[^\s]*)\[[^\]\s]*\]/$1/g;	# drop parentheses
				#s/\[[^\]\s]*\]([^\s]*:)/$1/g;	# drop parentheses
				#s/(<[\/]?(table|tr))/<br\/>$1/g;# break before/after table and before table row
				while(m/.*rdfs:comment.*\^\^rdf:XMLLiteral.*/) {
					my $literal=$_;
					$literal=~s/.*rdfs:comment\s*"+([^"][^\n]*[^"])"+\^\^rdf:XMLLiteral.*/$1/gs;
					my $pre=$_;
					$pre=~s/^(.*rdfs:comment\s*"+)([^"][^\n]*[^"])"+\^\^rdf:XMLLiteral.*/$1/gs;
					my $post=$_;
					$post=~s/^(.*rdfs:comment\s*"+)([^"][^\n]*[^"])("+)\^\^rdf:XMLLiteral(.*)/$3$4/gs;
					
					$myliteral=$literal;
					$myliteral=~s/\"/'"'"'/g;
					
					open(W3M, "echo \"<html><body>".$myliteral."\" | w3m -T text/html -O utf-8 |");
					my $out=$pre."\n";
					$last="";
					while(<W3M>) {
						s/[\r\n]+$//gs;
						s/^[Ee][Dd][Ii][Tt]\s+[^\s]+\s*$//gs;
						if($last eq "" && m/^\s*$/) {
							$last="";
						} else {
							$out=$out.$_."\n";
							$last=$_;
						}
					}
					close(W3M);
					$out=$out.$post."\n";
					$_=$out;
				}
				' > $file;
			rm tmp.ttl;
		done;
		cd ..;
	done;
