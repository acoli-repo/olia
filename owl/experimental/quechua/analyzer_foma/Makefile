##############################################################################################################
# Targets:                                                                                                   #
#                                                                                                            #
# make analysed.txt -> produces a list of all the tokens in the input text with their morphological analysis #
# make analysed-trans.txt -> same as above, but with translations of Quechua roots into Spanish              #
# make failures.txt -> creates a list of all the tokens in the text the transducer failed to analyse         #
#                                                                                                            #
#    if the necessary binary files are not present, they will be compiled automatically                      #
#                                                                                                            #
##############################################################################################################


# insert path to the text you want to analyse
TEXTS:=  acuerdo_nacional_2002_QUE.txt

all:  quechua.fst
with-translations: quechua-with-translations.fst

analysed.txt: all
	cat $(TEXTS) | perl tokenize.pl | flookup quechua.fst | tail -n+2  > $@

analysed-trans.txt: with-translations
	cat $(TEXTS) | perl tokenize.pl | flookup quechua-with-translations.fst | tail -n+2  > $@

failures.txt: all
	cat $(TEXTS) | perl tokenize.pl | flookup quechua.fst | grep '+?' |gawk '{print $$1}' | sort  > $@

%.fst:%.foma
	foma -f $<
