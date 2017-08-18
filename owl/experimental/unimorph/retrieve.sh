#!/bin/bash
# consults the unimorph page to retrieve the list of languages for which a repository is listed
DOC=https://unimorph.github.io/

echo -n consulting $DOC .. 1>&2;
LANGUAGES=`
	w3m -T text/html -dump_source https://unimorph.github.io/ |\
	xmllint --recover --html --xmlout - 2>/dev/null | \
	xmllint --xpath "//a[text()[1]='repo']/@href" - | \
	sed -e s/'href='/' '/g -e s/'"'//g -e s/'[^ ]*\/'//g`;

echo -n '. ' 1>&2;
echo -n $LANGUAGES | wc -w | sed s/'$'/' languages'/g 1>&2;

for lang in $LANGUAGES; do
	if [ -d $lang'-master' ]; then echo found $lang;
	else 
		echo retrieve $lang 1>&2;
		wget -nc https://codeload.github.com/unimorph/$lang/zip/master;
		if [ -e master.zip ]; then unzip master;
			rm master;
		fi;
	fi;
done

if [ -e tags.tsv ] ; then
	echo found tags.tsv 1>&2;
else 
	echo compile feature list 1>&2;
	for dir in */; do
		echo '  'process $dir 1>&2;
		for file in $dir/[a-z]*; do						# retrieve all tags per language
			file=`echo $file | sed s/'.*\/'//g`;
			egrep -a '\t.*\t' $dir/$file | \
			iconv -c -f utf-8 -t utf-8 | \
			sed -e  s/'\r'//g -e s/'.*\t'//g | \
			uniq | \
			sort -u | \
			sed s/'$'/'\t'$file/g;
		done;
	done | sort -u | 									# sort tags
	perl -pe '											# one tag per line 
		s/\r*\n//gs;
		s/^/<br>/g;
	' | \
	perl -pe '
		while(m/-*<br>([^\t]+)\t([^\t]+)<br>\1\t.*/) {
			s/<br>([^\t]+)\t([^\t]+)<br>\1\t/<br>$1\t$2, /g;
		};
		s/<br>/\n/g;
	' > tags.tsv;
fi;

echo -n 'unique tags (feature sequences): ' 1>&2;
sed s/'\t.*'//g tags.tsv | sort -u | wc -w 1>&2;
echo -n 'unique feature values: '1>&2;
sed -e s/'\t.*'//g -e s/';'/'\n'/g tags.tsv | sort -u | wc -w 1>&2;
