all: help
	@echo running '"make release 2>&1 | tee make.log"' 1>&2;
	@echo build log will be copied to make.log 1>&2;
	@echo 1>&2
	@make release 2>&1 | tee make.log

help:
	@echo "validate, update and publish ontologies and ontology metadata" 1>&2;
	@echo "synopsis: make [help] [ [clean] release]" 1>&2;
	@echo "  help    this dialog" 1>&2;
	@echo "  release update docs/owl with novel content from owl/." 1>&2
	@echo "          run 'make clean release' to remove legacy files" 1>&2
	@echo "  update  update docs/owl " 1>&2;
	@echo "Note: to publish docs/owl updates via GitHub pages, *you* need" 1>&2
	@echo "      to run the following commands after running this Makefile" 1>&2
	@echo "         $> git add docs/owl" 1>&2
	@echo "         $> git commit -m 'update public ontologies'" 1>&2 
	@echo "         $> git push" 1>&2
	@echo "(or equivalent, depending on OS and revision control system)" 1>&2 
	@echo "Note: without arguments, this defaults to 'make release'." 1>&2
	@echo "      You can restore the original docs/owl folder using" 1>&2
	@echo "         $> rm -rf docs/owl" 1>&2
	@echo "         $> git checkout docs/owl" 1>&2
	@echo 1>&2

clean:
	@if [ -e docs/owl ]; then rm -rf docs/owl ; fi;

docs/owl/Readme.md: README.md
	@if [ ! -d docs/owl ]; then mkdir -p docs/owl; fi;
	@echo "# OLiA ontologies (official release page)" > docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@echo "This page provides the official release versions of all core, stable and (releasable) experimental ontologies from OLiA." >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@cat README.md  >> docs/owl/Readme;
	@echo "For more detailed information, please see the [website](https://acoli-repo.github.io/olia/)" >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@echo '## Disclaimer' >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@echo "**DO NOT EDIT** the content of this directory, they are automatically created from *$$ROOT/owl/* (with *$$ROOT* being the root directory of the repository, equivalent to https://github.com/acoli-repo/olia)." >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@echo ' 'For more information about how to build and update the public OLiA ontologies, run  >> docs/owl/Readme;
	@echo; >> docs/owl/Readme;
	@echo '    $$> cd $$ROOT' >> docs/owl/Readme;
	@echo '    $$> make help' >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@echo "Note: Use the root directory of your local copy of the the repository." >> docs/owl/Readme;
	@echo >> docs/owl/Readme;
	@mv docs/owl/Readme docs/owl/Readme.md

docs/owl/LICENSE: LICENSE.data
	@if [ ! -d docs/owl ]; then mkdir -p docs/owl; fi;
	@cp LICENSE.data docs/owl/LICENSE

release: docs/owl/Readme.md docs/owl/LICENSE
	@echo validate and publish ontologies via GitHub pages '(this may take a while)' 1>&2
	@DIRS="owl/core owl/stable owl/experimental";\
	for dir in $$DIRS; do \
		echo 1>&2; \
		echo updating from $$dir 1>&2; \
		echo '========================' 1>&2; \
		for file in `find $$dir`; do \
			if [ -f $$file ]; then \
				if echo $$file | egrep -v '\-link.rdf$$|\.owl$$' >/dev/null; then \
					if [ $$dir != 'owl/experimental' ]; then \
						echo warning: $$file skipped '(files must match *-link.rdf or *.owl)' 1>&2; \
						echo 1>&2; \
					fi; \
				elif egrep -L 'http://purl.org/olia.*/'`basename $$file | sed s/'\(\-link\)*\(\.rdf|\.owl\)*'//` $$file >/dev/null; then \
					echo warning: $$file skipped '(files must use http://purl.org/olia/ namespace)' 1>&2; \
					echo 1>&2; \
				else \
					tgt=docs/owl/`echo $$file | sed s/'^'$$(echo $$dir | sed s/'\/'/'.'/g)'\/*'//`; \
					if [ ! -e $$tgt -o $$tgt -ot $$file ]; then \
						echo -n update $$tgt' ' 1>&2; \
						if [ ! -e `dirname $$tgt` ]; then \
							mkdir -p `dirname $$tgt`;\
						fi;\
						if cp $$file $$tgt; then \
							echo ok 1>&2; \
							echo "warning: content validation not integrated yet" 1>&2;\
						else \
							echo error: could not create $$tgt, exiting 1>&2; \
							exit; \
						fi; \
						echo 1>&2;\
					fi; \
				fi; \
			fi;\
		done;\
	done;\
	echo "done"