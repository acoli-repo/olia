#!/bin/bash
# since the msd owls were created, a number of mtecore concepts have been renamed, this script performs the necessary adjustments
# note that the current msds are manually *adjusted* versions of those originally produced by the converters, copyright statement and language codes would have to be added and validation is to be conducted if they are to be converted again
# also, namespaces will have to be updated
sed -e s/'\(multext-east.owl#\)AmbivalentAspect"'/'\1Biaspectual"'/g \
	-e s/'\(multext-east.owl#\)ApproxNumeral"'/'\1ApproximateNumeral"'/g \
	-e s/'\(multext-east.owl#\)BurkinostkaClitic"'/'\1Collocation"'/g \
	-e s/'\(multext-east.owl#\)Definite1Numeral"'/'\1SingularQuantifier"'/g \
	-e s/'\(multext-east.owl#\)Definite234Numeral"'/'\1NumeralTwoToFour"'/g \
	-e s/'\(multext-east.owl#\)Definite2Numeral"'/'\1DualQuantifier"'/g \
	-e s/'\(multext-east.owl#\)Definite34Numeral"'/'\1NumeralThreeOrFour"'/g \
	-e s/'\(multext-east.owl#\)DefiniteNumeral"'/'\1PluralQuantifier"'/g \
	-e s/'\(multext-east.owl#\)DemonstrativeNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(multext-east.owl#\)Distal"'/'\1CliticDistalDeterminer"'/g \
	-e s/'\(multext-east.owl#\)ExceptionalDeterminer"'/'\1UniquitiveDeterminer"'/g \
	-e s/'\(multext-east.owl#\)Future"'/'\1FutureTense"'/g \
	-e s/'\(multext-east.owl#\)IndefiniteNumeral"'/'\1IndefiniteQuantifier"'/g \
	-e s/'\(multext-east.owl#\)InterrogativeNumeral"'/'\1InterrogativeQuantifier"'/g \
	-e s/'\(multext-east.owl#\)Ordinal2Numeral"'/'\1PremodifyingOrdinalNumeral"'/g \
	-e s/'\(multext-east.owl#\)Present"'/'\1PresentTense"'/g \
	-e s/'\(multext-east.owl#\)PronominalNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(multext-east.owl#\)Proximal"'/'\1CliticProximalDeterminer"'/g \
	-e s/'\(multext-east.owl#\)QuantitativePronoun"'/'\1ProQuantifier"'/g \
	-e s/'\(multext-east.owl#\)RelativeNumeral"'/'\1RelativeQuantifier"'/g \
	-e s/'\(multext-east.owl#\)hasCliticS"'/'\1hasClitic"'/g \
	-e s/'\(multext-east.owl#\)hasTransitive"'/'\1hasTransitivity"'/g \
	-e s/'\(multext-east.owl#\)hasWhType"'/'\1hasWHType"'/g | \
sed -e s/'\(<mte:\)AmbivalentAspect"'/'\1Biaspectual"'/g \
	-e s/'\(<mte:\)ApproxNumeral"'/'\1ApproximateNumeral"'/g \
	-e s/'\(<mte:\)BurkinostkaClitic"'/'\1Collocation"'/g \
	-e s/'\(<mte:\)Definite1Numeral"'/'\1SingularQuantifier"'/g \
	-e s/'\(<mte:\)Definite234Numeral"'/'\1NumeralTwoToFour"'/g \
	-e s/'\(<mte:\)Definite2Numeral"'/'\1DualQuantifier"'/g \
	-e s/'\(<mte:\)Definite34Numeral"'/'\1NumeralThreeOrFour"'/g \
	-e s/'\(<mte:\)DefiniteNumeral"'/'\1PluralQuantifier"'/g \
	-e s/'\(<mte:\)DemonstrativeNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(<mte:\)Distal"'/'\1CliticDistalDeterminer"'/g \
	-e s/'\(<mte:\)ExceptionalDeterminer"'/'\1UniquitiveDeterminer"'/g \
	-e s/'\(<mte:\)Future"'/'\1FutureTense"'/g \
	-e s/'\(<mte:\)IndefiniteNumeral"'/'\1IndefiniteQuantifier"'/g \
	-e s/'\(<mte:\)InterrogativeNumeral"'/'\1InterrogativeQuantifier"'/g \
	-e s/'\(<mte:\)Ordinal2Numeral"'/'\1PremodifyingOrdinalNumeral"'/g \
	-e s/'\(<mte:\)Present"'/'\1PresentTense"'/g \
	-e s/'\(<mte:\)PronominalNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(<mte:\)Proximal"'/'\1CliticProximalDeterminer"'/g \
	-e s/'\(<mte:\)QuantitativePronoun"'/'\1ProQuantifier"'/g \
	-e s/'\(<mte:\)RelativeNumeral"'/'\1RelativeQuantifier"'/g \
	-e s/'\(<mte:\)hasCliticS"'/'\1hasClitic"'/g \
	-e s/'\(<mte:\)hasTransitive"'/'\1hasTransitivity"'/g \
	-e s/'\(<mte:\)hasWhType"'/'\1hasWHType"'/g | \
sed -e s/'\(<mtecore:\)AmbivalentAspect"'/'\1Biaspectual"'/g \
	-e s/'\(<mtecore:\)ApproxNumeral"'/'\1ApproximateNumeral"'/g \
	-e s/'\(<mtecore:\)BurkinostkaClitic"'/'\1Collocation"'/g \
	-e s/'\(<mtecore:\)Definite1Numeral"'/'\1SingularQuantifier"'/g \
	-e s/'\(<mtecore:\)Definite234Numeral"'/'\1NumeralTwoToFour"'/g \
	-e s/'\(<mtecore:\)Definite2Numeral"'/'\1DualQuantifier"'/g \
	-e s/'\(<mtecore:\)Definite34Numeral"'/'\1NumeralThreeOrFour"'/g \
	-e s/'\(<mtecore:\)DefiniteNumeral"'/'\1PluralQuantifier"'/g \
	-e s/'\(<mtecore:\)DemonstrativeNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(<mtecore:\)Distal"'/'\1CliticDistalDeterminer"'/g \
	-e s/'\(<mtecore:\)ExceptionalDeterminer"'/'\1UniquitiveDeterminer"'/g \
	-e s/'\(<mtecore:\)Future"'/'\1FutureTense"'/g \
	-e s/'\(<mtecore:\)IndefiniteNumeral"'/'\1IndefiniteQuantifier"'/g \
	-e s/'\(<mtecore:\)InterrogativeNumeral"'/'\1InterrogativeQuantifier"'/g \
	-e s/'\(<mtecore:\)Ordinal2Numeral"'/'\1PremodifyingOrdinalNumeral"'/g \
	-e s/'\(<mtecore:\)Present"'/'\1PresentTense"'/g \
	-e s/'\(<mtecore:\)PronominalNumeral"'/'\1ProQuantifier"'/g \
	-e s/'\(<mtecore:\)Proximal"'/'\1CliticProximalDeterminer"'/g \
	-e s/'\(<mtecore:\)QuantitativePronoun"'/'\1ProQuantifier"'/g \
	-e s/'\(<mtecore:\)RelativeNumeral"'/'\1RelativeQuantifier"'/g \
	-e s/'\(<mtecore:\)hasCliticS"'/'\1hasClitic"'/g \
	-e s/'\(<mtecore:\)hasTransitive"'/'\1hasTransitivity"'/g \
	-e s/'\(<mtecore:\)hasWhType"'/'\1hasWHType"'/g | \
egrep -v 'hasClass|hasReferentType'
