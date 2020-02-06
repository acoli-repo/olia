#!/bin/bash
# retrieval and automated linking of OLiA with GOLD-2010
# we (can) rely on automated mapping because earlier versions of OLiA have been manually aligned with GOLD

wget -nc http://linguistics-ontology.org/gold-2010.owl
../../../tools/link.sh gold-2010.owl ../../core/olia.owl gold-link.rdf

