<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      exclude-result-prefixes="xs"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:owl="http://www.w3.org/2002/07/owl#"
      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      version="2.0">
    
    <xsl:output version="1.0" encoding="UTF-8" indent="yes" method="xml"/>
    
    <!-- after OWL data structures have been generated from DCIF, infer additional hierarchical links through naming conventions -->
    <xsl:template match="/rdf:RDF">
        <xsl:copy>
            <xsl:for-each select="@*">
                <xsl:if test="not(ends-with(name(),'base'))">
                    <xsl:copy/>
                </xsl:if>
            </xsl:for-each>
            <owl:Ontology>
                <rdfs:comment>infer hierarchical structures for OWL representation of ISOcat DCIF</rdfs:comment>
            </owl:Ontology>
            <xsl:call-template name="infer-hierarchical-structure-from-description"/>
            <xsl:call-template name="infer-hierarchical-structure-from-naming-conventions"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="rdf:Description">
        <owl:Class>
            <xsl:for-each select="@*">
                <xsl:copy/>
            </xsl:for-each>
            <xsl:apply-templates/>
        </owl:Class>
    </xsl:template>
    
    <xsl:template match="node()|text()|comment()">
        <xsl:copy>
            <xsl:for-each select="@*">
                <xsl:copy/>
            </xsl:for-each>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <!-- replace camel case with whitespace tokenization -->
    <xsl:template name="parseCamelCase">
        <xsl:param name="string"/>
        <xsl:value-of select="normalize-space(replace($string,'([ABCDEFGHIJKLMNOPQRSTUVWXYZ_-])',' $1'))"/>
        <xsl:message>
            <xsl:value-of select="normalize-space(replace($string,'([ABCDEFGHIJKLMNOPQRSTUVWXYZ_-])',' $1'))"/>
        </xsl:message>
    </xsl:template>

    <!-- selects all rdf descriptions, performs decomposition of camel case
        if the last word occurs multiple times, then create a new class -->
    <xsl:template name="infer-hierarchical-structure-from-naming-conventions">
        <xsl:for-each select="//rdf:Description[@rdf:ID!='']|//owl:Class[@rdf:ID!='']">
            <xsl:call-template name="create-classes-right-to-left">
                <xsl:with-param name="name">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <!-- selects the first NP of the rdf:comment (heuristic: select 1 to 3 of the first words -->
    <xsl:template name="infer-hierarchical-structure-from-description">
        <xsl:for-each select="//rdf:Description[@rdf:ID!='']|//owl:Class[@rdf:ID!='']">
            <xsl:variable name="name">
                <xsl:value-of select="@rdf:ID"/>
            </xsl:variable>
            <xsl:variable name="candidatesInCamelCase">
                <xsl:if test="count(rdfs:comment)&gt;0">
                    <xsl:for-each select="tokenize(normalize-space(replace(normalize-space(string(rdfs:comment)),'^([^ ]* [^ ]* [^ ]*) .*','$1')),'\s')">
                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                    </xsl:for-each>
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="tokenize(normalize-space(replace(normalize-space(string(rdfs:comment)),'^([^ ]* [^ ]*) .*','$1')),'\s')">
                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                    </xsl:for-each>
                    <xsl:text> </xsl:text>
                    <xsl:for-each select="tokenize(normalize-space(replace(normalize-space(string(rdfs:comment)),'^([^ ]*) .*','$1')),'\s')">
                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                    </xsl:for-each>
                </xsl:if>
            </xsl:variable>
            <xsl:call-template name="create-classes-for-list-of-candidates">
                <xsl:with-param name="name">
                    <xsl:value-of select="$name"/>
                </xsl:with-param>
                <xsl:with-param name="candidates">
                    <xsl:value-of select="$candidatesInCamelCase"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="create-classes-for-list-of-candidates">
        <xsl:param name="name"/>
        <xsl:param name="candidates"/>
        <xsl:if test="string-length(normalize-space($candidates))&gt;0">
            <xsl:variable name="candidate">
                <xsl:value-of select="substring-before($candidates,' ')"/>
            </xsl:variable>
            <xsl:call-template name="create-classes-for-list-of-candidates">
                <xsl:with-param name="candidates">
                    <xsl:value-of select="substring-after($candidates,' ')"/>
                </xsl:with-param>
                <xsl:with-param name="name">
                    <xsl:value-of select="$name"/>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:variable name="siblingClassSuffix">
                    <xsl:value-of select="$candidate"/>
                </xsl:variable>
                <xsl:variable name="superClassName">
                    <xsl:value-of select="concat(lower-case(substring($siblingClassSuffix,1,2)),substring($siblingClassSuffix,3))"/>
                </xsl:variable>
                <xsl:message>
                    siblingClassSuffix <xsl:value-of select="$siblingClassSuffix"/>
                    superClassName <xsl:value-of select="$superClassName"/>
                </xsl:message>            
                <xsl:if test="not($superClassName=$name) and 
                    string-length(normalize-space($superClassName))&gt;0 and 
                    (count(//rdf:Description[@rdf:ID=$superClassName])=1 or count(//rdf:Description[ends-with(@rdf:ID,$siblingClassSuffix)])&gt;1)">
                    <xsl:if test="count(//rdf:Description[@rdf:ID=$superClassName])=0 and count(./preceding::rdf:Description[ends-with(@rdf:ID,$siblingClassSuffix)][1])=0">
                        <owl:Class rdf:ID="{$superClassName}"/>
                    </xsl:if>
                    <owl:Class rdf:about="#{$name}">
                        <rdfs:comment>subClassOf <xsl:value-of select="$superClassName"/> inferred from rdfs:comment.</rdfs:comment>
                        <rdfs:subClassOf>
                            <owl:Class rdf:about="#{$superClassName}"/>
                        </rdfs:subClassOf>
                    </owl:Class>
                </xsl:if>
        </xsl:if>
    </xsl:template>

    <xsl:template name="create-classes-right-to-left">
        <xsl:param name="name"/>
        <xsl:param name="tokenizedName">
            <xsl:call-template name="parseCamelCase">
                <xsl:with-param name="string">
                    <xsl:value-of select="@rdf:ID"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:param>
        <xsl:message>create-classes-left-to-right(<xsl:value-of select="$name"/>,<xsl:value-of select="$tokenizedName"/>)</xsl:message>
        <xsl:if test="string-length($tokenizedName)&gt;0 and contains($tokenizedName,' ')">
            <xsl:variable name="trail">
                <!-- skip first token, i.e. head -->
                <xsl:value-of select="normalize-space(replace($tokenizedName,'^[^ ]* ',''))"/> 
            </xsl:variable>
            <xsl:call-template name="create-classes-right-to-left">
                <xsl:with-param name="name">
                    <xsl:value-of select="$name"/>
                </xsl:with-param>
                <xsl:with-param name="tokenizedName">
                    <xsl:value-of select="$trail"/>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:variable name="siblingClassSuffix">
                <!-- suffix of potential sibling classes -->
                <xsl:variable name="tmp">
                <xsl:for-each select="tokenize($trail,' ')">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                </xsl:variable>
                <xsl:value-of select="normalize-space($tmp)"/>
            </xsl:variable>
            <xsl:variable name="superClassName">
                <!-- = suffix of potential sibling classes but starting with lower case -->
                <xsl:value-of select="concat(lower-case(substring($siblingClassSuffix,1,2)),substring($siblingClassSuffix,3))"/>
            </xsl:variable>
            <xsl:message>
                siblingClassSuffix <xsl:value-of select="$siblingClassSuffix"/>
                superClassName <xsl:value-of select="$superClassName"/>
            </xsl:message>            
            <xsl:if test="count(//*[@rdf:ID=$superClassName])=1 or count(//*[ends-with(@rdf:ID,$siblingClassSuffix)])&gt;1">
                <xsl:if test="count(//*[@rdf:ID=$superClassName])=0 and count(./preceding::*[name()='rdf:Description' or name()='owl:Class'][ends-with(@rdf:ID,$siblingClassSuffix)][1])=0">
                    <owl:Class rdf:ID="{$superClassName}"/>
                </xsl:if>
                <owl:Class rdf:about="#{$name}">
                    <rdfs:comment>subClassOf <xsl:value-of select="$superClassName"/> inferred from naming conventions.</rdfs:comment>
                    <rdfs:subClassOf>
                        <owl:Class rdf:about="#{$superClassName}"/>
                    </rdfs:subClassOf>
                </owl:Class>
            </xsl:if>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
