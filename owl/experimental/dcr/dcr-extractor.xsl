<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      exclude-result-prefixes="xs"
      xmlns:p1="file:/C:/Users/Christian/Desktop/onto/owl/experimental/dcrFromRDF.owl#"
      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:owl="http://www.w3.org/2002/07/owl#"
      xmlns:dcr="http://www.isocat.org/ns/dcr.rdf#"
      version="2.0">

<xsl:output indent="yes" method="xml"/>

<xsl:template match="/">
    <xml xmlns:p1="file:/C:/Users/Christian/Desktop/onto/owl/experimental/dcrFromRDF.owl#"
        xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
        xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
        xmlns:owl="http://www.w3.org/2002/07/owl#"
        xmlns:dcr="http://www.isocat.org/ns/dcr.rdf#">
    <xsl:for-each select="/rdf:RDF/owl:Class[.//*[contains(@*,'definite')]]">
        <xsl:copy>
            <xsl:for-each select="@*">
                <xsl:copy/>
            </xsl:for-each>
        <xsl:for-each select=".//*">
            <xsl:copy>
                <xsl:for-each select="@*">
                    <xsl:copy/>
                </xsl:for-each>
                <xsl:for-each select="./text()">
                    <xsl:value-of select="."/>
                </xsl:for-each>
            </xsl:copy>
        </xsl:for-each>
        </xsl:copy>
    </xsl:for-each>
    </xml>
</xsl:template>

</xsl:stylesheet>
