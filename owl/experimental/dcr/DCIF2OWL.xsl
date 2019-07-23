<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      xmlns:dcr="http://www.isocat.org/ns/dcr.rdf#"
      exclude-result-prefixes="xs"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:owl="http://www.w3.org/2002/07/owl#"
      xmlns:dcif="http://www.isocat.org/ns/dcif"
      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      version="2.0">
<xsl:output indent="yes" encoding="UTF-8" method="xml"/>

 <!-- 
    DCIF 2 OWL 

    TODO: proper dc definitions for informational elements

    converts ISOcat profiles in DCIF, the "native" XML format of ISOcat (http://www.isocat.org), to RDF/OWL

    NOTES
    This is a *partial* converter, only working for dumps of an entire profile, say 
    https://catalog.clarin.eu/isocat/rest/profile/6.dcif, not for individually exported directories.

    HISTORY
    2010-05-29 converter version for LREC workshop data
    2013-03-17 converter update for LREJ "postproceedings" 
        supports //dcif:dataCategory/@identifier
        extract //dcif:dataCategory/@definition
        extract //dcif:dataCategory/@owner
        extract //dcif:dataCategory/@type
        extract //dcif:dataCategory/@version
    
    Christian Chiarcos, chiarcos@informatik.uni-frankfurt.de     
-->

    <xsl:template match="/">
        <rdf:RDF
            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
            xmlns:dcr="http://www.isocat.org/ns/dcr.rdf#"            
            xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
            xmlns:dcif="http://www.isocat.org/ns/dcif"
            xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
            xmlns:owl="http://www.w3.org/2002/07/owl#"
            xmlns="http://www.isocat.org/ns/dcr.owl#"
            xml:base="http://www.isocat.org/ns/dcr.owl">
            <owl:Ontology>
                <rdfs:comment>OWL representation of ISOcat DCIF exported Data Categories</rdfs:comment>
            </owl:Ontology>
            <xsl:for-each select="//dcif:dataCategory">
                <xsl:variable name="dcifID">
                    <xsl:choose>
                        <xsl:when test="normalize-space(@identifier)=''">
                            <xsl:value-of select="normalize-space(string(.//dcif:identifier[1]/text()))"/> <!-- 2010 version -->
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 version -->
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <owl:Class rdf:ID="{replace($dcifID,' ','_')}">
                    <dcr:datcat rdf:resource="{@pid}"/>
                    <xsl:for-each select="./ancestor-or-self::dcif:dataCategory[1]">
                        <rdfs:isDefinedBy>
                            <xsl:value-of select="@pid"/>
                        </rdfs:isDefinedBy>
                        <owl:versionInfo>
                            <xsl:value-of select="concat('isoCat ID: ',@pid)"/>
                            <xsl:text>
</xsl:text>
                            <xsl:value-of select="concat('isoCat owner: ',@owner)"/>
                            <xsl:text>
</xsl:text>
                            <xsl:value-of select="concat('isoCat version: ',@version)"/>
                            <xsl:text>
</xsl:text>
                            <xsl:value-of select="concat('isoCat type:', @type)"/>
                        </owl:versionInfo>
                        <rdfs:comment>
                            <xsl:value-of select="@definition"/>
                        </rdfs:comment>
                    </xsl:for-each>
                    <xsl:for-each select="./dcif:descriptionSection/dcif:languageSection[string(./dcif:language)='en']/dcif:definitionSection">
                        <rdfs:comment>
                            <xsl:text>
                            </xsl:text>
                            <xsl:value-of select="normalize-space(dcif:definition)"/>
                            <xsl:text>
                                (</xsl:text>
                            <xsl:variable name="tmp">
                                <xsl:value-of select="normalize-space(string(./dcif:source/text()))"/>
                                <xsl:text>; </xsl:text>
                            </xsl:variable>
                            <xsl:value-of select="replace($tmp,'^; ','')"/>
                            <xsl:value-of select="./ancestor-or-self::dcif:dataCategory/@pid"/>
                            <xsl:text>)
                            </xsl:text>
                        </rdfs:comment>
                    </xsl:for-each>
                    <xsl:for-each select=".//dcif:nameSection/dcif:name[@xml:lang='en']">
                        <rdfs:label>
                            <xsl:value-of select="text()"/>
                        </rdfs:label>
                    </xsl:for-each>
                    
                    <xsl:for-each select="./dcif:isA">
                        <xsl:variable name="idref">
                            <xsl:value-of select="@pid"/>
                        </xsl:variable>                         
                        <xsl:for-each select="//dcif:dataCategory[@pid=$idref][1]">
                            <xsl:variable name="pdcifID">
                                <xsl:choose>
                                    <xsl:when test="normalize-space(@identifier)=''">
                                        <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <rdfs:subClassOf>
                                <owl:Class rdf:about="#{replace($pdcifID,' ','_')}"/>
                            </rdfs:subClassOf>
                            <owl:versionInfo>subClassOf <xsl:value-of select="replace($pdcifID,' ','_')"/> (dcif:isA)</owl:versionInfo>
                        </xsl:for-each>
                    </xsl:for-each>

                    <xsl:if test="count(.//dcif:isA)=0">
                        <xsl:variable name="pid" select="@pid"/>
                        <xsl:message>
                            <xsl:value-of select="$pid"/>
                        </xsl:message>
                        <xsl:for-each select="//dcif:dataCategory[./dcif:conceptualDomain/dcif:value/@pid=$pid]">
                            <xsl:variable name="pdcifID">
                                <xsl:choose>
                                    <xsl:when test="normalize-space(@identifier)=''">
                                        <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <rdfs:subClassOf>
                                <owl:Class rdf:about="#{replace($pdcifID,' ','_')}"/>
                            </rdfs:subClassOf>
                            <owl:versionInfo>subClassOf <xsl:value-of select="replace($pdcifID,' ','_')"/> (dcif:conceptualDomain)</owl:versionInfo>
                        </xsl:for-each>
                    </xsl:if>
                    
                    <!--xsl:if test="count(.//dcif:isA)=0"-->
                    <xsl:if test="1=0">

                    <xsl:variable name="inferredSubClassOf">
                            <!-- infer hierarchical structure from naming conventions: 
                                (i) performs decomposition of camel case
                                (ii) if the last word occurs multiple times, then create a new class
                            -->
                        <xsl:call-template name="create-subClassOf-right-to-left">
                                <xsl:with-param name="name">
                                    <xsl:choose>
                                           <xsl:when test="normalize-space(@identifier)=''">
                                                <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                            </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:with-param>
                                <xsl:with-param name="useGuesser">true</xsl:with-param> <!-- 2010: false -->
                        </xsl:call-template>
                    </xsl:variable>
                    
                    <xsl:choose>
                        <xsl:when test="string-length(normalize-space($inferredSubClassOf))&gt;0">
                            <!-- infer hierarchical structure from naming conventions: 
                                (i) performs decomposition of camel case
                                (ii) if the last word occurs multiple times, then create a new class
                            -->
                            <xsl:call-template name="create-subClassOf-right-to-left">
                                <xsl:with-param name="name">
                                        <xsl:choose>
                                            <xsl:when test="normalize-space(@identifier)=''">
                                                <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                            </xsl:otherwise>
                                        </xsl:choose>
                                </xsl:with-param>
                                <xsl:with-param name="useGuesser">true</xsl:with-param> <!-- 2010: false -->
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- extract concept NP from dcif:description (according to various heuristics) -->
                            <xsl:variable name="candidates">
                                <xsl:for-each select=".//dcif:definition[@xml:lang='en']">
                                    <xsl:variable name="definition">
                                        <xsl:value-of select="normalize-space(text())"/>
                                    </xsl:variable>
                                    <!-- heuristic 1: NP = first 1-3 words -->
                                    <xsl:for-each select="tokenize(normalize-space(replace($definition,'^([^ ]* [^ ]* [^ ]*) .*','$1')),'\s')">
                                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                    </xsl:for-each>
                                    <xsl:text> </xsl:text>
                                    <xsl:for-each select="tokenize(normalize-space(replace($definition,'^([^ ]* [^ ]*) .*','$1')),'\s')">
                                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                    </xsl:for-each>
                                    <xsl:text> </xsl:text>
                                    <xsl:for-each select="tokenize(normalize-space(replace($definition,'^([^ ]*) .*','$1')),'\s')">
                                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                    </xsl:for-each>
                                    <xsl:text> </xsl:text>
                                    <xsl:for-each select="tokenize(normalize-space(replace($definition,'^[^ ]* ([^ ]* [^ ]*) .*','$1')),'\s')">
                                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                    </xsl:for-each>
                                    <xsl:text> </xsl:text>
                                    <xsl:for-each select="tokenize(normalize-space(replace($definition,'^[^ ]* ([^ ]*) .*','$1')),'\s')">
                                        <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                    </xsl:for-each>
                                    <xsl:text> </xsl:text>
                                    <!-- heuristic 2: NP = first 1-3 words after "is" (within the first 10 words in the description) -->
                                    <xsl:variable name="first10words">
                                        <xsl:value-of select="normalize-space(replace($definition,'^([^ ]* [^ ]* [^ ]* [^ ]* [^ ]* [^ ]* [^ ]* [^ ]* [^ ]* [^ ]*) .*','$1'))"/>
                                    </xsl:variable>
                                    <xsl:if test="contains($first10words,' is ')">
                                        <xsl:for-each select="tokenize(normalize-space(replace(substring-after($first10words,' is '),'^([^ ]* [^ ]* [^ ]*) .*','$1')),'\s')">
                                            <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                        </xsl:for-each>
                                        <xsl:text> </xsl:text>
                                        <xsl:for-each select="tokenize(normalize-space(replace(substring-after($first10words,' is '),'^([^ ]* [^ ]*) .*','$1')),'\s')">
                                            <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                        </xsl:for-each>
                                        <xsl:text> </xsl:text>
                                        <xsl:for-each select="tokenize(normalize-space(replace(substring-after($first10words,' is '),'^([^ ]*) .*','$1')),'\s')">
                                            <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                        </xsl:for-each>
                                        <xsl:text> </xsl:text>
                                        <xsl:for-each select="tokenize(normalize-space(replace(substring-after($first10words,' is '),'^[^ ]* ([^ ]* [^ ]*) .*','$1')),'\s')">
                                            <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                        </xsl:for-each>
                                        <xsl:text> </xsl:text>
                                        <xsl:for-each select="tokenize(normalize-space(replace(substring-after($first10words,' is '),'^[^ ]* ([^ ]*) .*','$1')),'\s')">
                                            <xsl:value-of select="concat(upper-case(substring(.,1,1)),substring(.,2))"/>
                                        </xsl:for-each>
                                        <xsl:text> </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:variable>
                            <xsl:variable name="inferredSubClassOfFromDescription">
                                <!-- infer hierarchical structure from description:
                                    (i) selects the first NP of the dcif:definition (according to various heuristics)
                                    (ii) convert to camelCase and
                                    (iii) process as inference from naming conventions
                                -->
                                <xsl:call-template name="create-subClassOf-for-list-of-candidates">
                                    <xsl:with-param name="name">
                                            <xsl:choose>
                                                <xsl:when test="normalize-space(@identifier)=''">
                                                    <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="candidates">
                                        <xsl:value-of select="$candidates"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </xsl:variable>
                            <xsl:choose>
                                <xsl:when test="string-length(normalize-space($inferredSubClassOfFromDescription))&gt;0">
                                    <xsl:call-template name="create-subClassOf-for-list-of-candidates">
                                        <xsl:with-param name="name">
                                                <xsl:choose>
                                                    <xsl:when test="normalize-space(@identifier)=''">
                                                        <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                        </xsl:with-param>
                                        <xsl:with-param name="candidates">
                                            <xsl:value-of select="$candidates"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="create-subClassOf-right-to-left">
                                        <xsl:with-param name="name">
                                            <xsl:choose>
                                                <xsl:when test="normalize-space(@identifier)=''">
                                                    <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:with-param>
                                        <xsl:with-param name="useGuesser">true</xsl:with-param> <!-- 2010: true -->
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                    </xsl:if>
                </owl:Class>
            </xsl:for-each>
            
        </rdf:RDF>
    </xsl:template>

    <!-- replace camel case with whitespace tokenization -->
    <xsl:template name="parseCamelCase">
        <xsl:param name="string"/>
        <xsl:value-of select="normalize-space(replace($string,'([ABCDEFGHIJKLMNOPQRSTUVWXYZ_-])',' $1'))"/>
        <xsl:message>
            <xsl:value-of select="normalize-space(replace($string,'([ABCDEFGHIJKLMNOPQRSTUVWXYZ_-])',' $1'))"/>
        </xsl:message>
    </xsl:template>
        
    <!-- OK -->
    <xsl:template name="create-subClassOf-for-list-of-candidates">
        <xsl:param name="name"/>
        <xsl:param name="candidates"/>
        <xsl:if test="string-length(normalize-space($candidates))&gt;0">
            <xsl:variable name="candidate">
                <xsl:value-of select="substring-before($candidates,' ')"/>
            </xsl:variable>
            <xsl:call-template name="create-subClassOf-for-list-of-candidates">
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
                string-length(normalize-space($superClassName))&gt;0">
                <xsl:choose>
                    <xsl:when test="(count(//dcif:identifier[text()=$superClassName][1])=1 or count(//dcif:identifier[ends-with(text(),$siblingClassSuffix)][1])=1) or 
                        (count(//dcif:dataCategory[@identifier=$superClassName][1])=1 or count(//dcif:dataCategory[ends-with(@identifier,$siblingClassSuffix)][1])=1)">
                        <owl:versionInfo>subClassOf <xsl:value-of select="$superClassName"/> inferred from dcif:definition and dcif:identifier.</owl:versionInfo>
                        <rdfs:subClassOf>
                            <owl:Class rdf:about="#{$superClassName}"/>
                        </rdfs:subClassOf>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:for-each select="//dcif:name[@xml:lang='en'][text()=$superClassName][1]">
                            <xsl:variable name="ancestorDcifID">
                                <xsl:choose>
                                    <xsl:when test="normalize-space(./ancestor::dcif:dataCategory/@identifier)=''">
                                        <xsl:value-of select="normalize-space(./ancestor::dcif:dataCategory//dcif:identifier[1]/text())"/> <!-- 2010 -->
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="normalize-space(./ancestor::dcif:dataCategory/@identifier)"/> <!-- 2013 -->
                                    </xsl:otherwise>
                                </xsl:choose>                                
                            </xsl:variable>
                            <owl:versionInfo>subClassOf <xsl:value-of select="$ancestorDcifID"/> inferred from dcif:definition and dcif:name.</owl:versionInfo>
                            <rdfs:subClassOf>
                                <owl:Class rdf:about="#{$ancestorDcifID}"/>
                            </rdfs:subClassOf>
                        </xsl:for-each>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:if>
    </xsl:template>
    
    <!-- guesser: if true, then create superClasses -->
    <xsl:template name="create-subClassOf-right-to-left">
        <xsl:param name="name"/>
        <xsl:param name="useGuesser">false</xsl:param>
        <xsl:param name="tokenizedName">
            <xsl:call-template name="parseCamelCase">
                <xsl:with-param name="string">
                    <xsl:choose>
                        <xsl:when test="normalize-space(@identifier)=''">
                            <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:param>
        <xsl:message>create-classes-left-to-right(<xsl:value-of select="$name"/>,<xsl:value-of select="$tokenizedName"/>)</xsl:message>
        <xsl:if test="string-length($tokenizedName)&gt;0 and contains($tokenizedName,' ')">
            <xsl:variable name="trail">
                <!-- skip first token, i.e. head -->
                <xsl:value-of select="normalize-space(replace($tokenizedName,'^[^ ]* ',''))"/> 
            </xsl:variable>
            <xsl:call-template name="create-subClassOf-right-to-left">
                <xsl:with-param name="name">
                    <xsl:value-of select="$name"/>
                </xsl:with-param>
                <xsl:with-param name="useGuesser">
                    <xsl:value-of select="$useGuesser"/>
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
            <xsl:choose>
                <xsl:when test="(count(//dcif:identifier[text()=$superClassName][1])=1 or ($useGuesser='true' and count(//dcif:identifier[ends-with(text(),$siblingClassSuffix)][1])=1)) or 
                    (count(//dcif:dataCategory[@identifier=$superClassName][1])=1 or ($useGuesser='true' and count(//dcif:dataCategory[ends-with(@identifier,$siblingClassSuffix)][1])=1))">                    
                    <owl:versionInfo>subClassOf <xsl:value-of select="$superClassName"/> inferred from naming conventions and dcif:identifier (guessing=<xsl:value-of select="$useGuesser"/>).</owl:versionInfo>
                    <rdfs:subClassOf>
                        <owl:Class rdf:about="#{$superClassName}"/>
                    </rdfs:subClassOf>
              </xsl:when>
              <xsl:otherwise>
                  <xsl:for-each select="//dcif:dataCategory[.//dcif:name[@xml:lang='en']/text()=$superClassName]">
                      <xsl:variable name="dcifID">
                          <xsl:choose>
                              <xsl:when test="normalize-space(@identifier)=''">
                                  <xsl:value-of select="normalize-space(.//dcif:identifier[1]/text())"/> <!-- 2010 -->
                              </xsl:when>
                              <xsl:otherwise>
                                  <xsl:value-of select="normalize-space(@identifier)"/> <!-- 2013 -->
                              </xsl:otherwise>
                          </xsl:choose>
                      </xsl:variable>
                      <owl:versionInfo>subClassOf <xsl:value-of select="$dcifID"/> inferred from naming conventions and dcif:name.</owl:versionInfo>
                      <rdfs:subClassOf>
                          <owl:Class rdf:about="#{$dcifID}"/>
                      </rdfs:subClassOf>
                  </xsl:for-each>
              </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
    

</xsl:stylesheet>
