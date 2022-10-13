# NERD Ontology

The NERD Ontology is a lightweight ontology for NER tasks and part of a platform for ensemble-based NER annotation, originally available under <http://nerd.eurecom.fr/ontology>:

> The NERD ontology is a set of
        mappings
        established manually between the taxonomies of named entity
        types.
        [Concepts](http://www.gabormelli.com/RKB/RKB/Concept) included in the [NERD
        ontology] are collected from different
        schema
        types:
        [DBpedia
        ontology](http://www.gabormelli.com/RKB/RKB/DBpedia_ontology)
        (for DBpedia
        Spotlight
        and
        Lupedia),
        [lightweight
        taxonomies](http://www.gabormelli.com/RKB/RKB/lightweight_taxonomi)
        (for
        AlchemyAPI,
        Yahoo
        !,
        Wikimeta,
        and
        Zemanta)
        or simple flat type
        lists
        (for
        Extractiv,
        OpenCalais,
        Saplo,
        Semitags).
        The NERD ontology]tries to merge the
        linguistic
        community
        needs and the logician
        community
        ones: we developed a core set of
        axioms
        based on the Quaero
        schema
        which define the NERD
        core
        and we [mapped](http://www.gabormelli.com/RKB/RKB/mapped) similar
        concepts
        described
        in the other
        scheme.
        The selection of these concepts has been done considering the
        greatest common
        denominator
        among them. The [concepts](http://www.gabormelli.com/RKB/RKB/concept)
        that do not appear in the NERD
        namespace
        are sub-classes of
        parents
        that end-up in the NERD ontology. To
        [summarize](http://www.gabormelli.com/RKB/RKB/summarize), a
        [concept](http://www.gabormelli.com/RKB/RKB/concept) is included in
        the NERD ontology as soon as there are
        at least three
        extractors
        that use
        it.
(Rizzo and Troncy, 2012, quoted after [GM-RKB](http://www.gabormelli.com/RKB/index.php?title=NERD_Ontology&oldid=763405))

## On this edition

As of Sep 2022, the [original home](http://nerd.eurecom.fr/ontology) for this data is down and the original [GitHub repository](https://github.com/NERD-project/nerd-ontology) provides no Readme. To preserve its content in the context of an active community effort, it is mirrorred within OLiA.

Except for this readme, all other data provided here is forked from https://github.com/NERD-project/nerd-ontology by means of `git subtree`, so that changes can still be synchronized both ways (although the NERD repo has been inactive for 9 years now). For eventual local updates, please refer to the history of this repository.

The original licensing conditions apply, i.e., [Apache v.2 license](LICENSE), and all attributions (as given in the original repository) remain unchanged. Contributors to the GitHub repository were [Giuseppe Rizzo](https://github.com/giusepperizzo) and [Sebastian Hellmann](https://github.com/kurzum), Oct 2013 - Apr 2014 in the NERD Project, supported by the French Ministry of Industry (Innovative Web call) under contract 09.2.93.0966, “Collaborative Annotation for Video Accessibility” (ACAV), with Giuseppe Rizzo and Raphäel Troncy acting as project representatives in the main publication.

The conversion and linking process with the OLiA Discourse Extensions is documented in [`extending-olia`](extending-olia.md). Some services are still active, but we include the dead ones, as well. However, *all* extractors connected with NERD face validity issues (resp., their external ontologies). Unfortunately, this made the semiautomated linking break, so that links are created manually to each connected vocabulary, including NERD. Note that we do not replicate the modelling of NERD, but only the concepts. Everything is linked as subclasses (not as equivalent classes), so NERD axioms do not apply to the corresponding OLiA concepts but that OLiA concepts are true generalizations. The resulting manual mapping is provided in `mapping.tsv`. From that file, the linking models are bootstrapped.

The Turtle files holding the linking are provided as `entities.XYZ-link.ttl`.

## References

**Giuseppe Rizzo,
    and Raphaël
    Troncy    (2012)***. [NERD: A Framework for
    Unifying Named Entity Recognition and Disambiguation Extraction
    Tools](https://aclanthology.org/E12-2015.pdf). In: *Proceedings of the Demonstrations at the 13th
    Conference of the European Chapter of the Association for Computational Linguistics (EACL-2012)*, April 2012, Avignon, France, pages 73-76