# Build a Novel Annotation Model

## 1.a Using a Graphical Editor 

We assume you start with a document (say, a paper, or a whitepaper) 

- manually create an ontology in an ontology editor like [Protégé](https://protege.stanford.edu/) or [WebProtégé](https://webprotege.stanford.edu/)
- if the document structure is interpretable in terms of a taxonomy of tags and features, the document structure should define the hierarchical organization
- for every category or feature, create a class (this may be redundant, but most applications expect the linking to encoded by `rdfs:subClassOf` properties, so, a feature like, say, `Accusative` should ideally be a class, not just an individiual)
- for every tag, create an individual with a `olias:hasTag` (= `http://purl.org/olia/system.owl#hasTag`) property and assign it to one or multiple classes (the latter function is useful for combinatorial tagsets).
- for combinatorial tagsets with many dimensions (e.g., MULTEXT-East, where feature combination can lead to thousands of tags), consider to decompose tags into multiple individuals. For this purpose, use the properties `olias:hasTagContaining` (the individual applies if the actual tag contains a substring), `olias:hasTagStartingWith`, `olias:hasTagEndingWith` or `olias:hasTagMatching` (using a regular expression).
- for concepts and tags, copy description and examples from the original document
- check hierarchy (are there unattached elements?)
- check individuals (classes misidentified as individuals?)
- recommendation: introduce one top-level concept for each
  - all parts of speech,
  - (all) morphosyntactic features,
  - (all) syntactic edge labels,
  -  (all) syntactic node labels, etc. 

  This is helpful when doing the manual linking
- add ontology-level metadata information
- save as RDF/XML, use the naming pattern `xyz.owl` (with `xyz` being an identifier of your model

## 1.b Using a Text Editor and the Turtle Format

In principle, this follows the same procedure, but use a text editor and Turtle format to write the ontology directly.
This has the advantage that the resulting data can structured to provide a human-readable form.

- copy/compare the header structure from another ontology, minimally something like

        <YOUR_ONTOLOGY_URL> a <http://www.w3.org/2002/07/owl#Ontology> .
        <YOUR_ONTOLOGY_URL> <http://purl.org/dc/terms/license> <https://creativecommons.org/licenses/by/3.0/> .

- if this ontology doesn't use Turtle format, this can be created using command-line tools like `rapper` (`raptor`):

        $> rapper -i rdfxml olia.owl -t turtle > olia.ttl

- define classes and their instances, using only `olias:hasTag`, `rdfs:subClassOf`, `rdf:type`, `rdfs:comment`; mark line-breaks with <br/>, mark language
- validate TTL, e.g., using http://ttl.summerofcode.be/
- open and correct in Protégé and proceed as in a.

## 1.c From a List of Tags

If no other documentation is available, a list of tags (along with examples) may be extracted from a corpus, if a language expert can interpret these while creating the annotation model.

In principle, this follows the same procedure, but the initial creation process an be automatized.

- Assume that the source data comes in, say, 3 columns (tag, category, label; there can be more columns, or the label column may be missing). If there is no category column, create one manually.

  | tag | category | label |
  | --- | -------- | ----- |
  | ACC | CASE     | accusative |
  | NOUN | POS     | noun  |
  | ... | ... | ... |

- Open the table in a spreadsheet software (say, LibreOffice Calc, Google Spreadsheet, Excel, etc.), filter for unique rows, sort by category.
- Add URI column, populate by `=CONCAT(":";$TAG)` (where `$TAG` refers to the corresponding cell of the tag column)

  | tag | category | label | URI |
  | --- | -------- | ----- | --- |
  | ACC | CASE     | accusative | `:ACC` |
  | NOUN | POS     | noun  | `:NOUN` |
  | ... | ... | ... | ... |

- add two columns, one with the string `olias:hasTag` (or variants), one populated with `=CONCAT("'";$TAG;"'; ")` (tag value)

| tag | category | label | URI | property | value |
| --- | -------- | ----- | --- | -------- | ----- |
| ACC | CASE     | accusative | `:ACC` | `olias:hasTagContaining` | `'ACC';` |
| NOUN | POS     | noun  | `:NOUN` | `olias:hasTagContaining` | `'NOUN';` |
| ... | ... | ... | ... | ... | ... |

- add classes from labels, generate class URI with `=CONCAT(":";$LABEL)`.

| tag | category | label | URI | property | value | property | class |
| --- | -------- | ----- | --- | -------- | ----- | -------- | ----- |
| ACC | CASE     | accusative | `:ACC` | `olias:hasTagContaining` | `'ACC';` | `a` | `:accusative` |  
| NOUN | POS     | noun  | `:NOUN` | `olias:hasTagContaining` | `'NOUN';` | `a` | `:noun` |
| ... | ... | ... | ... | ... | ... | ... | ... |

- conclude tag-level statements with `.`

| tag | category | label | URI | property | value | property | class | . | 
| --- | -------- | ----- | --- | -------- | ----- | -------- | ----- | --|
| ACC | CASE     | accusative | `:ACC` | `olias:hasTagContaining` | `'ACC';` | `a` | `:accusative` |  `.` |
| NOUN | POS     | noun  | `:NOUN` | `olias:hasTagContaining` | `'NOUN';` | `a` | `:noun` |  `.` |
| ... | ... | ... | ... | ... | ... | ... | ... |  `.` |

- continue with concept-level statements, copy class URI, generate category URI using `=CONCAT(":";$category)`. Conclude with `.`.

| tag | category | label | URI | property | value | property | class | .   | class | property | category | .   |
| --- | -------- | ----- | --- | -------- | ----- | -------- | ----- | --- | ----- | -------- | -------- | --- |
| ACC | CASE     | accusative | :ACC | olias:hasTagContaining | 'ACC'; | a | :accusative | . | :accusative | rdfs:subPropertyOf | :CASE | . |
| NOUN | POS     | noun  | :NOUN | olias:hasTagContaining | 'NOUN'; | a | :noun; | . | :noun | rdfs:subPropertyOf | :POS | . |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

- create a text (Turtle) file with the following header

        PREFIX olia: <http://purl.org/olia/olia.owl#>
        PREFIX olias: <http://purl.org/olia/system.owl#>
        PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
        PREFIX owl: <http://www.w3.org/2002/07/owl#>
        PREFIX : <ADD_YOUR_SCHEMA_URL_HERE>

  (replace `ADD_YOUR_SCHEMA_URL_HERE` by your URL ;)

- add ontology header (from another ontology in ttl format)
  - note: ttl format can be created using `rapper` (`libraptor` library on most linux systems)
- copy all columns we just created (starting with `URI`) at the end of this file:

    :ACC  olias:hasTagContaining  'ACC';  a :accusative . :accusative rdfs:subPropertyOf  :CASE .
        :NOUN olias:hasTagContaining  'NOUN'; a :noun;  . :noun rdfs:subPropertyOf  :POS  .
        ...

- validate TTL, e.g., using http://ttl.summerofcode.be/. Note that there may be complications with non-ASCII characters or reserved symbols (e.g., spaces) in URIs, fix these manually.
- open and correct in Protégé and proceed as in 1.a.

# Linking an Annotation Model

To benefit from synergies with OLiA, annotation models should be *linked*, i.e., `rdfs:subClassOf`/`rdfs:subPropertyOf` links with `http://purl.org/olia/olia.owl` should be created. By convention, these are stored in separate files, using the naming schema `xyz-link.rdf` (with `xyz` being the acronym of your annotation model) and provided in RDF/XML format.

## 2.a Create Linking Model (Manually, GUI)

- create new ontology in Protégé, import annotation model and http://purl.org/olia/olia.owl
- go through all annotation model concepts which are not bold (i.e., locally enriched) and add a olia superclass
- in order to find the appropriate OLiA superclass, open the reference model in a text editor, search for relevant concepts
- document possible gaps and submit for review

## 2.b Create Linking Model (Manually, Text Editor)

- create a Turtle file with header as in 1.b
- add import declarations

        <YOUR_LINKING_URL> <http://www.w3.org/2002/07/owl#inports> <YOUR_ONTOLOGY_URL>, <http://purl.org/olia/olia.owl>.

- for every class in the annotation model, search (e.g., within Protégé) for the corresponding OLiA Reference Model class. If necessary, file an issue for possible OLiA extensions.
- for every annotation class and every OLiA class, add an `rdfs:subClassOf` statement to express a mapping, e.g.,

        :noun rdfs:subClassOf olia:Noun.

> Note that you can use the full power of description logics to encode anything more complex, i.e., `owl:unionOf`, `owl:intersectionOf`, `owl:inverseOf`.
      However, applications may chose to ignore such complicated information and simply rely on `rdfs:subClassOf`. As multiple applications of `rdfs:subClassOf` are equivalent to `owl:intersectionOf`, better avoid the latter wherever possible.

- validate Turtle (as above)
- open and refine in Protégé as above

## 2.c Create Linking Model (Semi-Automatically)

We provide a script to facilitate semiautomated linking for (Unix-style) shell environments. This is the file `/tools/link.sh` in this repository.

- Semiautomated linking

    $> bash -e ./link.sh http://purl.org/olia/olia.owl YOUR_ANNO_MODEL.owl YOUR_ANNO_MODEL-link.rdf

  (Replace `YOUR_ANNO_MODEL` with the path to your annotation model. Output will be written to `YOUR_ANNO_MODEL-link.rdf`.)

- Open the resulting model in Protégé and refine manually.
