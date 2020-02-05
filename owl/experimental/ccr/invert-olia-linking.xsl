<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
    
    <xsl:output method="xml"/>
    
    <!-- (a) rename subclass [note that this is one pattern only, there are other possible patterns] -->
    <xsl:template match="rdf:Description[@rdf:about!=''][count(rdfs:subClassOf)=1][count(rdfs:subClassOf/@rdf:resource)=1]">
        <xsl:variable name="sub" select="@rdf:about"/>
        <xsl:variable name="super" select="rdfs:subClassOf/@rdf:resource"/>
        <xsl:choose>
            <xsl:when test="
                (starts-with($sub,'http://purl.org/olia/olia') and not(starts-with($super,'http://purl.org/olia/olia'))) or 
                (not(starts-with($sub,'http://purl.org/olia/olia')) and starts-with($super,'http://purl.org/olia/olia'))">
                <xsl:copy>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="$super"/>
                    </xsl:attribute>
                    <xsl:for-each select="@*[name()!=rdf:about]">
                        <xsl:copy/>
                    </xsl:for-each>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:for-each select="@*">
                        <xsl:copy/>
                    </xsl:for-each>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- (b) rename superclass [note that this is one pattern only, there are other possible patterns] -->
    <xsl:template match="rdf:Description[@rdf:about!=''][count(rdfs:subClassOf)=1][count(rdfs:subClassOf/@rdf:resource)=1]/rdfs:subClassOf">
        <xsl:variable name="sub" select="../@rdf:about"/>
        <xsl:variable name="super" select="@rdf:resource"/>
        <xsl:choose>
            <xsl:when test="
                (starts-with($sub,'http://purl.org/olia/olia') and not(starts-with($super,'http://purl.org/olia/olia'))) or 
                (not(starts-with($sub,'http://purl.org/olia/olia')) and starts-with($super,'http://purl.org/olia/olia'))">
                <xsl:copy>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="$sub"/>
                    </xsl:attribute>
                    <xsl:for-each select="@*[name()!=rdf:resource]">
                        <xsl:copy/>
                    </xsl:for-each>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:for-each select="@*">
                        <xsl:copy/>
                    </xsl:for-each>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*|text()|comment()">
        <xsl:copy>
            <xsl:for-each select="@*">
                <xsl:copy/>
            </xsl:for-each>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>