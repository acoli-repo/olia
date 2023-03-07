# Aperitum morphosyntactic annotations

[Apertium](https://www.apertium.org) is a free/open-source machine translation platform, initially aimed at related-language pairs but expanded to deal with more divergent language pairs (such as English-Catalan). The platform provides

1. a language-independent machine translation engine
2, tools to manage the linguistic data necessary to build a machine translation system for a given language pair and
3. linguistic data for a growing number of language pairs.

Apertium implements symbolic, transfer-based machine translation, where source language input is first morphologically, and syntactically analyzed, then, the lemmas are word-wise translated into the target language, where restructuring rules and surface generation takes place. As such, it provides or wraps a large ensemble of morphological generators and analyzers, often based on finite state morphology.

Apertium tags and morphosyntactic features are not standardized, but there are some [common conventions](https://wiki.apertium.org/wiki/List_of_symbols), and these are captured here with an OLiA Annotation and Linking Model. Both are automatically generated, but Linking Models should be reviewed after linking.


Build with

	$> make

Note: not a proper OWL ontology, yet. This is to come.