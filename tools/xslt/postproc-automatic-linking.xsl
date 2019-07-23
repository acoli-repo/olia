<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      exclude-result-prefixes="xs"
      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      xmlns:owl="http://www.w3.org/2002/07/owl#"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:system="http://purl.org/olia/system.owl#"
    version="2.0">
<xsl:output method="xml" indent="yes"/>

<!-- enter name of annotation model in the following line -->
<xsl:variable name="annomodel">dzongkha.owl</xsl:variable>
    
<!-- name of reference model (should not change) -->
<xsl:variable name="refmodel">olia.owl</xsl:variable>
    
<xsl:template match="/">

    <xsl:variable name="annomodel.owl">
        <xsl:value-of select="substring-before(/rdf:RDF/rdf:Description[contains(@rdf:about,$annomodel)][1]/@rdf:about,'#')"/>
    </xsl:variable>
    
    <xsl:variable name="refmodel.owl">
        <xsl:value-of select="substring-before(//rdfs:subClassOf[contains(@rdf:resource,$refmodel)][1]/@rdf:resource,'#')"/>
    </xsl:variable>

    <rdf:RDF>
        <owl:Ontology rdf:about="">
            <owl:imports rdf:resource="{$refmodel.owl}"/>
            <owl:imports rdf:resource="{$annomodel.owl}"/>
            <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">
                DATE provisional semiautomated linking for morphosyntax 
                (no properties linked, yet)
                
                Christian Chiarcos, chiarcos@uni-potsdam.de</rdfs:comment>
        </owl:Ontology>        
        
        <xsl:text>
            
        </xsl:text>
        <xsl:comment>semiautomatically linked</xsl:comment>
        <xsl:text>
        </xsl:text>
        <xsl:for-each select="/rdf:RDF/rdf:Description[contains(@rdf:about,$annomodel)][count(./*/@*[contains(.,'olia.owl#')])&gt;0]">
            <owl:Class>
                <xsl:for-each select="@*">
                    <xsl:copy></xsl:copy>
                </xsl:for-each>
                <xsl:for-each select="rdfs:subClassOf[contains(@rdf:resource,'olia.owl')]|owl:versionInfo">
                    <xsl:copy>
                        <xsl:for-each select="@*">
                            <xsl:copy></xsl:copy>
                        </xsl:for-each>
                        <xsl:for-each select="./text()">
                            <xsl:copy></xsl:copy>
                        </xsl:for-each>
                    </xsl:copy>
                </xsl:for-each>
             </owl:Class>
        </xsl:for-each>

        <xsl:text>
            
        </xsl:text>
        <xsl:comment>to be manually linked</xsl:comment>
        <xsl:text>
        </xsl:text>
        <xsl:for-each select="/rdf:RDF/rdf:Description[contains(@rdf:about,$annomodel)][count(./*/@*[contains(.,'olia.owl#')])=0]">
            <owl:Class>
                <xsl:for-each select="@*">
                    <xsl:copy></xsl:copy>
                </xsl:for-each>
                <xsl:for-each select="owl:versionInfo[not(string(.)='no linking')]">
                    <xsl:copy>
                        <xsl:for-each select="@*">
                            <xsl:copy></xsl:copy>
                        </xsl:for-each>
                        <xsl:for-each select="./text()">
                            <xsl:copy></xsl:copy>
                        </xsl:for-each>
                    </xsl:copy>
                </xsl:for-each>
            </owl:Class>
        </xsl:for-each>
        
        <xsl:text>
            
        </xsl:text>
        <xsl:comment>properties</xsl:comment>
        <xsl:text>
        </xsl:text>
        <xsl:for-each select="document($annomodel.owl)/rdf:RDF/owl:ObjectProperty">
            <xsl:copy>
                <xsl:for-each select="@*">
                    <xsl:copy/>
                </xsl:for-each>
            </xsl:copy>
        </xsl:for-each>        
        
    </rdf:RDF>
</xsl:template>
</xsl:stylesheet>
