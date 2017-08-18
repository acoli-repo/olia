UniMorph Annotation Model
=========================
We provide an OWL2/DL formalization of the Annotation Schema of the Universal Morphology community project (http://unimorph.org) as well as HTML visualization(s) generated from it.

It follows three main objectives:

* Formalize the annotation guidelines in a machine-readable way, in order to <i>facilitate its linking</i> with the Universal Dependency specifications (http://universaldependencies.org/) as well as other efforts to create and to harmonize linguistic (annotation) terminology.

* Provide a <i>convenient, searchable and browseable web representation</i> of the UniMorph guidelines. We are currently in the process to evaluate different OWL visualization tools, both text/html-based as well as graphical tools.

* Provide a <i>declarative linking</i> with other terminologies (see above) that allows 
 * to express uncertainty and metadata about the mapping, but also
 *  to provide both language-independent and language-specific mapping rules.

 In particular, the mapping rules must not be hidden in a particular implementation, but should be transparent.

RDF provides such a formalism, as previously demonstrated, e.g., for <i>linguistic annotations</i> in general (OLiA, http://purl.org/olia; GOLD, http://linguistics-ontology.org/, ISOcat: http://isocat.org/), for <i>typological databases</i> (Typological Database System, http://tds2.dans.knaw.nl/), for <i>cross-linguistic morphosyntax</i> (Multext-East, http://nl.ijs.si/ME/), for <i>cross-resource semantics</i> (PreMOn, http://premon.fbk.eu), for grammatical notes in <i>dictionaries</i> (LexInfo, http://www.lexinfo.net/), etc.

Any questions and remarks regarding this data should be directed to Christian Chiarcos via chiarcos@informatik.uni-frankfurt.de.

1. [Approach](#approach)
1.1 [Annotation Model (OWL)](#owl)
1.2 [HTML rendering](#html)
1.3 [Linking](#link)
2. [Distribution](#dist)
3. [Contributors](#cont)
4. [Open issues](#open)

## 1. Approach <a name="approach"></a>
### 1.1 Annotation Model (OWL) <a name="owl"></a>
We provide the UniMorph ontology based on Sylak-Glassman (2016). With respect to its textual content/definitions (represented as rdfs:comment), this is an except of Sylak-Glassman, with argumentative sections, diagrams and most examples removed. In terms of its semantics, this is OWL2/DL (<i>ALCHO(D)</i>), in terms of its format, it is RDF/XML, resp. TTL (Turtle).

In the annotation model, individual features  (e.g., "POL") are represented as individuals (instances), feature categories (e.g., "Politeness") are represented as concepts (classes). Groups of features (e.g., "(speaker-)addressee honorific") are represented as subclass of concepts. The individual <code>:POL</code> (representing the feature "POL") is thus an instance of <code>:AddresseeHonorific</code>, which is a subclass of <code>:PolitenessFeature</code>.

Feature individuals have the property <code>:hasLabel</code> with the String value as found in the data (e.g., "POL" for <code>:POL</code>) and an <code>rdfs:label</code> with a human-readable representation (e.g., "polite" for <code>:POL</code>). Features or the associated classes should have an rdfs:comment that gives an excerpt from Sylak-Glassman (2016). Open issues and design decisions are documented using <code>owl:versionInfo</code>.

The annotation model can be edited using Protégé (http://protege.stanford.edu/). However, it can also be edited directly using a simple text editor with syntax highlighting. (See [below](#manual) for manually editing ontologies.)

### 1.2 HTML rendering<a name="html"></a>
We explore different HTML renderers for the Annotation Model. At the moment, a text-based visualization is chosen, generated with OWLDoc (https://code.google.com/archive/p/co-ode-owl-plugins/downloads) and Protégé 4.0.

For details on the generation of the HTML rendering, see [below](#owldoc).
		
### 1.3 Linking<a name="link"></a>
Given the annotation model, we focus on feature-level linking. A feature can be linked to either an OWL class or another individual. The choice depends on the modeling of the target resource. Taking the Universal Dependencies as an example, they provide language-specific and language-independent documentations. Language-independent features should thus be modeled as concepts (classes), with language-specific features as individuals (instances of these classes). (This is the modelling of the UD ontologies from http://fginter.github.io/docs/ and of the Multext-East ontologies under http://nl.ijs.si/ME/.)

Unimorph features can thus be linked with UD concepts by being defined as instances of these concepts as follows:

<code>:POL rdf:type ud:Polite.</code>

Unlike UD with language-specific different definitions, Unimorph features are (supposed to be) cross-linguistically applicable, with only LGSPEC features reserved for language specifics. At the moment, no language-specific documentation is provided. Accordingly, it is not necessary to replicate the Annotation Model for every individual language. Instead, language specifics can be captured by using different linking models.

A linking model is an ontology that imports the source ontology (here, the UniMorph ontology) and a target vocabulary (formalized as an ontology, e.g., for UD).
It provides <code>rdf:type</code> (resp. <code>rdfs:subClassOf</code> and <code>rdfs:subPropertyOf</code>) statements for UniMorph features (resp. classes and properties).
A language-independent linking model can be provided, but as the linking is modelled separated from the terminology, it is possible to provide an alternative linking model, e.g., a language-specific model that complements the language-independent linking model with linkings for LGSPEC features or revised feature mappings.

## 2. Distribution<a name="dist"></a>
The UniMorph Annotation Model and the contents of this directory is a pre-release draft only intended to elicitate community feedback and guide its further development. A production-ready version will be published as open source (CC-BY for data, Apache license for code) with an accompanying publication. If you intend to use the data provided as is *before its official publication*, please contact me under christian.chiarcos@web.de to help me keeping track of possible forks. Attribution is welcome (see [contributors](#cont)).

### 2.1 Unimorph annotation model and documentation
* <code>unimorph.owl</code>
	Unimorph Annotation Model, RDF/XML ("official ontology")
* <code>unimorph.svg</code>
	Unimorph data model (class structure, "TBox"), generated from  <code>unimorph.owl</code> using WebVOWL (http://visualdataweb.de/webvowl/)
* <code>html/index.html</code> (etc.)
	HTML rendering of the full ontology, produced by OWLDoc as described here
* <code>Readme.md</code>
	this file
	
### 2.2 Auxiliary files
* <code>unimorph.ttl</code>
	Unimorph Annotation Model, RDF/TTL (Turtle edition)
	This file was manually created and validated, it is the source for <code>unimorph.owl</code>, which was produced using Protégé 4.0 and OWL API 2.2.1.1138
* <code>fix-owldoc-html.sh</code>
	after OWLDoc export, apply this script to unescape HTML tags in Literal values, cf. [Appendix](#owldoc)
	
### 2.3 External data sources
* <code>doc/*</code>
	Selected unimorph documentation
* <code>retrieve.sh</code>
	Helper script that creates a local copy of all Unimorph data files and their annotations
* <code>tags.tsv</code>
	list of tags (feature bundles) and their usage across all UniMorph languages
	generated by retrieve.sh

## 3. Contributors<a name="cont"></a>
* Prof. Dr. Christian Chiarcos [CC]
Applied Computational Linguistics (ACoLi)
Goethe University Frankfurt, Germany
chiarcos@informatik.uni-frankfurt.de

## 4. Open issues<a name="open"></a>
* elicitate feedback from Unimorph community and adjust the ontology
* integrate tags.tsv
* develop a linking model
* release and publication

# Appendix

## A. Generating HTML using OWLDoc<a name="owldoc"></a>
OWLDoc provides an HTML rendering of any OWL file, but note that by default, it does not support the embedding of HTML code inside Literals. Therefore, HTML code embedded in rdfs:comment (etc.) is escaped and has to be unescaped after running OWLDoc.

Generation process:

 1. add the OWLDoc plugin to the local Protégé installation: Grab a zip archive from https://code.google.com/archive/p/co-ode-owl-plugins/downloads, unpack its contents to the plugins directory, restart Protégé (4.x) and load an ontology. In the menu, you should find "Export OWLDoc" under "Tools".
 2. Open the Annotation Model in Protégé, with the OWLDoc plugin installed
 3. Select "Tools" and "Export OWLDoc" from the menu
 4. Provide the path of the target directory and export there
 5. Fix the HTML encoding
  * Unix: 
     * open the shell, run the provided <code>fix-owldoc-html.sh</code> script on the output directory (say, <code>$OUT</code>), e.g.,
			<code>$> fix-owldoc-html.sh $(find $OUT | egrep 'htm[l]?$')</code>
  * Windows with Notepad++:
     * open all generated HTML files in Notepad++ (and only these)
     * press <code>&lt;CTRL&gt;+H</code> for replacement
     * set "Find what" to <code>&lt;</code>
     * set "Replace with" to <code><</code>
     * select "replace All in All Documents"
     * save all files and enjoy ;)


## B. Manually editing ontologies<a name="manual"></a>

For manual edits of the Annotation Model or Linking Model, one can either work on the RDF/XML provided or serialize in another RDF format, e.g., Turtle (TTL)* or JSON/LD, using RDF APIs such as Apache Jena (https://jena.apache.org/) or full-fledged editors such as Protégé. However, manual edits should be followed by a syntax check. For manually edited RDF/XML, this can be done using xmllint (http://xmlsoft.org/xmllint.html) or an XML editor such as Oxygen (https://www.oxygenxml.com/); for RDF/TTL, this could be http://ttl.summerofcode.be/. Also, a manually edited ontology should be loaded in Protégé (or an OWL API) to make sure that it preserved OWL2/DL semantics. If another format than RDF/XML was used for manual edits, please also provide an export to RDF/XML.

Note that Annotation Model rdfs:comment statements contains excerpts of a written text, i.e., often relatively complex string values, and in particular, reserved characters such as <code>"</code> (reserved in Turtle and XML), <code>&</code>, <code>&lt;</code> and <code>></code> (reserved in XML). 

When <b>working with RDF/XML</b>, please use the following escape characters for CDATA (literal) content:
<code>&</code> to be replaced by <code>&amp;amp;</code>
<code>"</code> to be replaced by <code>&amp;quot;</code>
<code>&lt;</code> to be replaced by <code>&amp;lt;</code>
<code>></code> to be replaced by <code>&amp;gt;</code>

When editing with Protégé, these replacements should be performed by the tool.

When <b>working with RDF/TTL (Turtle)</b>, please note that when a literal contains <code>"</code>, the literal should be written in pairs of triple double quotes rather than single double quotes, e.g., 

<code>:Animacy rdfs:comment """Yamamoto (1999:1) writes that animacy "can ... """@en.</code>	(CORRECT, escaped)

~~<code>:Animacy rdfs:comment "Yamamoto (1999:1) writes that animacy "can ... "@en.</code>~~		(INCORRECT, non-escaped)

Unfortunately, some RDF APIs (incl. the OWL API used by Protégé 4.x) may occasionally produce non-escaped TTL output. This requires a manual fix before the file can be loaded in Protégé, again:

- Using Perl or sed (under Un*x), the following replacement rule may be applied:
	<code>s/(rdfs:comment ")([^"][^@]*[^"])("@)/$1""$2""$3/g</code>

- Using Notepad++ (under Windows):
	open the TTL file
	press <code>&lt;CTRL>+H</code>
	check "Regular expression"
	set "Find what" to <code>(rdfs:comment ")([^"][^@]*[^"])("@)</code>
	set "Replace with" to <code>$1""$2""$3</code>
	click "Find next", "Replace" and/or "Replace All" until no more replacements are necessary.

