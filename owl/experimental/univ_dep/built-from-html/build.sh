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
			wget -nc $base 2>/dev/null;
			wget -nc $src 2>/dev/null;
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
		# FAILED: this is not systematically provided in UD v.2, so far
		
		# # UD v2.4: 49 languages only!
		# # not updated to UD v.2, yet
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
		# sort -u | wc -l
		# `;
		
		# https://universaldependencies.org/en/dep/ etc., no all docs anymore

		# we only produce the universal tags with the same approach as above
		
		docs=$(
			wget -nc $base 2>/dev/null;
			wget -nc $src 2>/dev/null;
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
				sed -e s/'^\([a-z]\):\([1-3]\)'/'\1:%3\2'/g \
					>> $type.ttl;
				echo >> $type.ttl;
		done;
		
		echo >> dep.ttl
		# UD v.2 extension: language-specific relations
		# language-specific relations (no definitions included)
		wget https://universaldependencies.org/ext-dep-index.html -O - | \
		perl -pe 's/\s+/ /gs; s/<a /\n<a /g;' | \
		egrep '<a.*href=' | \
		sed s/'^<a[^>]*>'/''/ | \
		egrep '^[^<>:=]*:[^<>:=]*</a>' | \
		sed -e s/'<\/li.*'// -e s/'<\/a>:\s*'/'\t'/g | \
		sed -e s/'^\([^\t:]*\):\([^\t]*\)\t\([^\t]*\)$'/'[] system:hasTag "\1:\2"; \
			system:hasTier "dep"; a [ \
				rdfs:label "\1:\2"; rdfs:subClassOf u:\1; \
				owl:versionInfo "https:\/\/universaldependencies.org\/ext-dep-index.html"; \
				rdfs:comment "\3"@en ] .\n'/ >> dep.ttl;
		echo >> dep.ttl;
		
		# an extended feature list is under https://universaldependencies.org/ext-feat-index.html, but this is completely undocumented and thus not used
	
	cd ..;
	fi;