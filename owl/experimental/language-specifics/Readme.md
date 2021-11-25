# Language-specific axiomation

When developing OLiA, we realized early on that common perceptions on the interrelation of
different morphosyntactic categories may actually be language-specific (if not annotation-specific) conventions.

Examples:

- `Adverb disjointWith Adjective` (adverbs are different from adjectives): incorrect for German, every adjective can be used adverbially
- `Adposition disjointWith Adverb` (adpositions are different from adverbs): incorrect for Old High German, adpositions could be freely used as adverbs (and where later replaced in these functions by verbal participles and pronominal adverbs)
- `Adjective disjointWith Verb` (this is complicated by the different treatment of participles in different schemas/tagsets, likewise, stative verbs are sometimes treated in annotation schemes like adjectives)
- `NonFiniteVerb subClassOf not exists hasTense` (non-finite verbs have no tense marking):
  incorrect for past and present participles in English
- `hasGender domain unionOf(Noun,Adjective)`: incorrect for Russian verbs (simple past verbs have obligatory gender agreement, historically, these are participles)
- `hasPerson domain unionOf(FiniteVerb,Pronoun)`: incorrect/imprecise for German [pronominal] adverbs (*meinetwegen* "because of me", *deinetwegen* "because of you", etc.)
- `AttributiveDemonstrative subClassOf Adjective`: this is the standard view for languages without grammaticalized determiners (e.g., most Slavic languages), for historical German, this is true, as well, but for modern German, these would be clustered with articles rather than with adjectives (because of their inflection)

Not all of these violations are inherent to a particular language, but sometimes they specific to annotation schemes, e.g., the Penn Treebank tagset provides a tag `TO` for all uses of *to* (complementizer, preposition, verbal particle) and systematically conflates complementizers and prepositions. Furthermore, some annotation categories are not defined on syntactic or morphological criteria, but over surface strings, so that a tagset like the German STTS has a family of tags for auxilaries (`VA...`), but does not use these for auxiliaries, but for all occurrencies of *haben* "to have, to own" and *sein* "to be, to exist". When these tagsets were developed, such surface criteria allowed to reach higher levels of inter annotator agreement and better performance for POS taggers, but at the price of compromising the interpretability of tags.

As we found *no* clear universal categories and/or cardinality constraints (these may exist in certain schemas), OLiA is not fully axiomatized.

However, for individual languages, full axiomatization is possible (and advisable), as illustrated here for German. Likewise, individual families of tagsets may have elements that can be axiomatized (e.g., the Universal Dependencies).
