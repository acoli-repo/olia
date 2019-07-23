<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

    <xsl:template name="write-uri">
        <xsl:param name="uri"/>
        <xsl:choose>
            <xsl:when test="starts-with($uri,'http://purl.org/olia/')">
                <xsl:value-of select="substring-before(substring-after($uri,'http://purl.org/olia/'),'.')"/>
                <xsl:text>:</xsl:text>
                <xsl:value-of select="substring-after($uri,'#')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$uri"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="/">
        <!-- calls the following SPARQL query and returns the variable bindings as SPARQL XML
            PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
            PREFIX owl: <http://www.w3.org/2002/07/owl#>
            PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
            SELECT DISTINCT ?parent ?child ?equiv ?superprop ?prop
            FROM <http://purl.org/olia/olia.owl>
            WHERE {
            { 	?child rdfs:subClassOf/(owl:equivalentClass?/(owl:intersectionOf|owl:unionOf)/rdf:rest*/rdf:first)* ?parent 
                FILTER(!ISBLANK(?child) &amp;&amp; !ISBLANK(?parent))
            } UNION { 
            ?child owl:equivalentClass+ ?equiv.
                FILTER(!ISBLANK(?child) &amp;&amp; !ISBLANK(?equiv))
            } UNION { 
                ?prop rdfs:subPropertyOf ?superprop 
            }
            }
        -->
        <html>
            <body>
        <xsl:for-each select="document('http://www.sparql.org/sparql?query=PREFIX+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0D%0APREFIX+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0D%0APREFIX+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0D%0ASELECT+DISTINCT+%3Fparent+%3Fchild+%3Fequiv+%3Fsuperprop+%3Fprop%0D%0AFROM+%3Chttp%3A%2F%2Fpurl.org%2Folia%2Folia.owl%3E%0D%0AFROM+%3Chttp%3A%2F%2Fpurl.org%2Folia%2Folia-top.owl%3E%0D%0AWHERE+%7B%0D%0A%09%7B+%09%3Fchild+rdfs%3AsubClassOf%2F%28owl%3AintersectionOf%2Frdf%3Arest*%2Frdf%3Afirst%29*+%3Fparent+%0D%0A%09%09FILTER%28%21ISBLANK%28%3Fchild%29+%26%26+%21ISBLANK%28%3Fparent%29%29%0D%0A%09%7D+UNION+%7B+%0D%0A%09%09%3Fchild+owl%3AequivalentClass%2B+%3Fequiv.%0D%0A%09%09FILTER%28%21ISBLANK%28%3Fchild%29+%26%26+%21ISBLANK%28%3Fequiv%29%29%0D%0A%09%7D+UNION+%7B+%0D%0A%09%09%3Fprop+rdfs%3AsubPropertyOf+%3Fsuperprop+%0D%0A%09%7D%0D%0A%7D+ORDER+BY+%3Fparent+%3Fchild+%3Fsuperprop+%3Fprop&amp;default-graph-uri=&amp;output=xml&amp;stylesheet=')/*[1]">
            <xsl:apply-templates/>
        </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="*[name()='results']">
        <ul>
            <li>owl:Class
                <ul>
                    <xsl:for-each select="*[name()='result']/*[@name='parent']">
                        <xsl:variable name="uri" select="*[1]/text()"/>
                        <xsl:if test="
                            count(//*[@name='child'][*[1]/text()=$uri][1])=0
                            and
                            ./preceding::*[@name='parent'][1]/*[name()='uri'][1]/text()!=$uri">
                            <li><a href="{$uri}"><xsl:call-template name="write-uri">
                                <xsl:with-param name="uri" select="$uri"/>
                            </xsl:call-template></a>
                                <xsl:text>&#10;</xsl:text>
                                <ul>
                                    <xsl:call-template name="find-subclasses">
                                        <xsl:with-param name="uri" select="$uri"/>
                                    </xsl:call-template>
                                </ul>
                            </li>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </li>
            <li>rdfs:Property
                <ul>
                    <xsl:for-each select="*[name()='result']/*[@name='superprop']">
                        <xsl:variable name="uri" select="*[1]/text()"/>
                        <xsl:if test="
                            count(//*[@name='prop'][*[1]/text()=$uri][1])=0
                            and
                            ./preceding::*[@name='superprop'][1]/*[name()='uri'][1]/text()!=$uri">
                            <li><a href="{$uri}"><xsl:call-template name="write-uri">
                                <xsl:with-param name="uri" select="$uri"/>
                            </xsl:call-template></a>
                                <xsl:text>&#10;</xsl:text>
                                <ul>
                                <xsl:call-template name="find-subproperties">
                                    <xsl:with-param name="uri" select="$uri"/>
                                </xsl:call-template>
                                </ul>
                            </li>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </li>
        </ul>
    </xsl:template>
    
    <xsl:template name="find-subproperties">
        <xsl:param name="uri"/>
        <xsl:for-each select="//*[@name='superprop'][*[1]/text()=$uri]/following-sibling::*[1]">
            <li><a href="{*/text()}"><xsl:call-template name="write-uri">
                <xsl:with-param name="uri" select="*/text()"/>
            </xsl:call-template></a>
                <ul>
                    <xsl:call-template name="find-subproperties">
                        <xsl:with-param name="uri" select="*/text()"/>
                    </xsl:call-template>
                </ul>
            </li>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="find-subclasses">
        <xsl:param name="uri"/>
        <xsl:for-each select="//*[@name='parent'][*[1]/text()=$uri]/following-sibling::*[1]">
            <li><a href="{*/text()}"><xsl:call-template name="write-uri">
                <xsl:with-param name="uri" select="*/text()"/>
                </xsl:call-template></a>
                <ul>
                    <xsl:call-template name="find-subclasses">
                        <xsl:with-param name="uri" select="*/text()"/>
                    </xsl:call-template>
                </ul>
            </li>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    

    <xsl:template match="text()[normalize-space(.)='']"/>
</xsl:stylesheet>
