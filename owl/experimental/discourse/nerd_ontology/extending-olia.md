# Extending OLiA with entity types

This extension largely builds on a review of NERD.

NERD seems to be relatively weakly structured. Not all classes from sub-vocabularies are defined as subclasses of the top-level category nerd:Thing.

We assume that (the subclasses of) nerd:Thing roughly corresponds to a (subset of) EntityType. (Probably, od:AbstractEntity is not a nerd:Thing.)

original structure (from Poesio and Artstein):
- EntityType
	- AbstractEntity
	- ConcreteEntity
		- AnimateEntity
		- Person
	- Plan
	- Space
	- Time

first extended with NERD core classes

## start with NERD core classes

	PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
	PREFIX owl: <http://www.w3.org/2002/07/owl#>
	PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
	PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
	PREFIX nerd: <http://nerd.eurecom.fr/ontology#>
	SELECT ?subject ?object
	WHERE { ?subject nerd:isCoreClass ?class }

=> 

	http://nerd.eurecom.fr/ontology#Time	"1"	 [ok]
	http://nerd.eurecom.fr/ontology#Event	"1"		[ok]
	http://nerd.eurecom.fr/ontology#Organization	"1"	 [ok]
	http://nerd.eurecom.fr/ontology#Person	"1"	[ok]
	http://nerd.eurecom.fr/ontology#Location	"1"	[ok]
	http://nerd.eurecom.fr/ontology#Function	"1"	[ok]
	http://nerd.eurecom.fr/ontology#Animal	"1"	[ok]
	http://nerd.eurecom.fr/ontology#Amount	"1" [ok]

core classes [marked by *] (and their subclasses)

- EntityType
	- Amount* < nerd:Amount
	- AbstractEntity
		- Event* < nerd:Event
			- SportEvent (< nerd:SportEvent)
			- PoliticalEvent (< nerd:PoliticalEvent)
			- MilitaryConflict (< nerd:MilitaryConflict)
	- ConcreteEntity
		- AnimateEntity
			- Person ~ nerd:Person*
				(all subs from NERD; restructured:
					MusicalArtist sub Artist sub Person
					SoccerPlayer/TennisPlayer sub Athlete sub Person [and marked as deprecated for over-specificity]
					Ambassaror/Mayor sub Politician
					)
			- Animal*
				- Bird < nerd
				- Insect < nerd
		- Organization*
			- Company (< nerd:Company)
				- Airline (< nerd:Airline, orig. subclass of Organization)
			- Band (< nerd:Band)
			- Broadcast (< nerd:Broadcast)
			- Company (< nerd:Company)
			- EducationalInstution (< nerd:EducationalInstitution)
				- University (< nerd:University; orig. sub Obrganization)
			- Legislature (< nerd:Legislature)
			- NonProfitOrganozation (< nerd:NonProfitOrganization)
			- RadioStation (< nerd)
			- TVStation (< nerd)
			- SportsTeam (< nerd)
			- SportsLeague (< nerd)
		- Function* [deprecated]
	- Plan
	- Space ~ nerd:Location*
		subclasses grouped into more general types [all NEW], i.e.
			PoliticalUnit
			ArchitecturalFeature (result of human construction, e.g., buildings, roads, parks)
				NERD does not provide parts of a building, but these should go here, as well
			GeographicalFeature (natural, e.g., mountain, river, lake)
				Note that we include all waterways here, including "channel" in the sense of "regulated waterway" under geographical features because it requires a natural body of water as part of its construction, and sometimes)
	- Time	~ nerd:Time*
		- Holiday (< nerd)

As for organizations, we assume that this refers to organizations that are (can be registered as or consist of) legal persons. In that sense, an Organization is a ConcreteEntity (because they are defined by a specific legal act). In NERD, however, these are core concepts.

We feel some NERD classes to be too specific, e.g., SoccerClub, which is limited to a single type of sports. We take them over nevertheless, but mark them as being deprecated.

nerd:Function (=opencalais:Position, dbo:PersonFunction) is a NERD core class that seems to designate ranks and professions, albeit some of these are subsumed under nerd:Person. Because of the unclear definition and the unclear relation with nerd:Person, this is marked as deprecated.

As for Amount, it is hard to align with the existing hierarchy, thus added as separate category.

subclasses of Location restructured

## adding non-core classes

non-core subclasses of nerd:Thing

- EntityType
	- Amount
	- AbstractEntity
		- Event
			- SportEvent
			- PoliticalEvent
			- MilitaryConflict
	- ConcreteEntity
		- AnimateEntity
			- Person
			- Animal
				- Bird
				- Insect
		- Organization
			- Company
				- Airline
			- Band
			- Broadcast
			- Company
			- EducationalInstution
				- University
			- Legislature
			- NonProfitOrganization
			- RadioStation
			- TVStation
			- SportsTeam
			- SportsLeague
		- Function
		- ManufacturedObject < nerd:Product
			subclasses added and restructured
	- Plan
	- Space
		PoliticalUnit
		ArchitecturalFeature
		GeographicalFeature
	- Time
		- Holiday

added Product and its subclasses. Note that this is a wastebag category in NERD, and not all of the elements in there have to be described as "product". Programming Language is highly doubtful in that regard. Email address is most likely used to not denote a service acquired (= sellable product), but a part of an address, songs can be products in a modern economic context, but they are immaterial cultural artifacts in most traditional cultures, etc.

Enforced hierarchical structuring: 
- OperatingSystem sub Software
- SchoolNewspaper sub Newspaper

introduced Address as a generalization over various NERD "products" that denote different forms of or are parts of an address.

etc.

renamed to "ManufacturedObject":

NERD seems to have been designed for economic purposes, so all objects (non-animate, concrete entitites) are described as "product". Here, we go with the more neutral term "ManufacturedObject".

for nerd:Product, subclass of nerd:Thing, not a NERD core class.

organizations also subclassified

## Linking

original NERD design put the various extractors as superclasses (or equivalent classes of) NERD concepts. here, all of these are linked as subclasses. this way of modelling accounts for conceptual differences that are not reflected in the name of the concepts, so, instead of semantic equivalence, we search for shortest paths. This allows to preserve finer-grained semantic differences, but it is semantically weaker.

It is, however, in line with the general OLiA design.

OLiA inference thus yields proper generalizations. The key benefit in relation to entity annotations is that the upper levels of entity type correspond to those used for coreference annotation.

added NERD links as labels to facilitate automated linking

correctures: added PoliticalParty as subclass of Organization (in NERD, this was conflated with PoliticalEvent)

automated linking failed:

- *all* imports from nerd.owl failed

	<!-- imports rdf:resource="http://www.wikimeta.com"/ 2022-10-12: HTTP response code: 403 -->
        <!-- imports rdf:resource="http://dbpedia.org/ontology/"/ 2022-10-12: multiple XML validity errors -->
        <!-- imports rdf:resource="http://developer.saplo.com/method/text-tags"/ 2022-10-12: XML validity errors -->
        <!-- imports rdf:resource="http://developer.yahoo.com/search/content/V2/contentAnalysis.html"/ 2022-10-12: XML validity errors -->
        <!-- imports rdf:resource="http://developer.zemanta.com/docs/entity_type/"/ 2022-10-12: UnknownHostException -->
        <!-- imports rdf:resource="http://ner2.lmcloud.vse.cz/SemiTags/app/static/types"/ 2022-10-12: White spaces are required between publicId and systemId. -->
        <!-- imports rdf:resource="http://wiki.extractiv.com/w/page/29179775/Entity-Extraction"/ 2022-10-12: XML validity error -->
        <!-- imports rdf:resource="http://www.alchemyapi.com/api/entity/types.html"/ 2022-10-12: UnknownHostException -->
        <!-- imports rdf:resource="http://www.opencalais.com/documentation/calais-web-service-api/api-metadata/entity-index-and-definitions"/ 2022-10-12: Content is not allowed in prolog. -->


manually linked by label match

note that all NERD concepts were based on extractors available at creation time, so their concepts are well-founded. However, these extractors are no longer available

A fundamental difference between NERD and OLiA is that we do not posit equivalence claims, but only understand OLiA as an abstraction. Accordingly, all terms are understood as subconcepts. For this very reason, we integrate NERD as an external reference model, otherwise, NERD equivalence axioms would extend to OLiA classes. However, not all NERD axioms are valid. As such, alchemyapi:PoliticalParty is most likely misclassified as nerd:PoliticalEvent

The following NERD concepts were not supported by an existing extractor other than NERD itself and are thus marked as deprecated:

	<http://purl.org/olia/discourse/olia_discourse.owl#Architect>
	<http://purl.org/olia/discourse/olia_discourse.owl#Astronaut>
	<http://purl.org/olia/discourse/olia_discourse.owl#Broadcast>
	<http://purl.org/olia/discourse/olia_discourse.owl#Celebrity>
	<http://purl.org/olia/discourse/olia_discourse.owl#ComicsCharacter>
	<http://purl.org/olia/discourse/olia_discourse.owl#FictionalCharacter>
	<http://purl.org/olia/discourse/olia_discourse.owl#Legislature>
	<http://purl.org/olia/discourse/olia_discourse.owl#Mayor>
	<http://purl.org/olia/discourse/olia_discourse.owl#NonProfitOrganization>
	<http://purl.org/olia/discourse/olia_discourse.owl#SoccerClub>
	<http://purl.org/olia/discourse/olia_discourse.owl#SoccerPlayer>
	<http://purl.org/olia/discourse/olia_discourse.owl#TennisPlayer>

They are nevertheless linked.

However, note that none of the NER ontologies could be loaded without errors. As a result, they are not directly integrated as OLiA Annotation Models. Instead, we only provide linking models.

## Status quo

The resulting ontology captures semantic classes as supported by conventional NER classification systems. It is not representative for the language, but for existing NER annotations. Subsequently, it is to be extended for other schemas. The general framework of NERD classes is, however, maintained. As a result, the ontology has a layered structure: top-level classification follows conventions from anaphora annotation, the subclassification results from (a reassessment of) the NERD taxonomy, subsequently it is to be extended for corpus annotations.

## Extension

