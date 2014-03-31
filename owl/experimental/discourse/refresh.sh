#!/bin/bash
# update content
svn update svn://svn.code.sf.net/p/olia/code/trunk/owl/experimental/discourse discrel; 
# svn update svn://svn.code.sf.net/p/olia/code/trunk/owl/experimental/is is; 
chmod -R a+r .;

# update symlinks
for file in */*; do
	if [ -L $file ] ; then
		if [ -e $file ] ; then echo ok >&/dev/null; 
		else rm -f $file; fi;
	fi;
done
for file in */*.owl */*.rdf discrel/index.html discrel/refresh.sh; do 
	tgt=`echo $file | sed s/'.*\/'//`;
	if [ -e $TGT/$tgt ] ; then echo ok >&/dev/null; 
	else ln -s $file $tgt; chmod a+r $tgt; 
	fi;
done;