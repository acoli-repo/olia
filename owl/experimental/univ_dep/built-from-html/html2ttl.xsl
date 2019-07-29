<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="xml" omit-xml-declaration="yes"/>

    <xsl:param name="baseuri">
        <xsl:text>https://universaldependencies.org/</xsl:text>
    </xsl:param>

    <!-- for u/pos/all.html, en/pos/all.html, en/dep/all.html, u/dep/all.html, u/feat/all.html -->

   <xsl:template match="/">
       
       <xsl:text disable-output-escaping="yes">@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#> .&#10;</xsl:text>
       <xsl:text disable-output-escaping="yes">@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#> .&#10;</xsl:text>
       <xsl:text disable-output-escaping="yes">@prefix owl: &lt;http://www.w3.org/2002/07/owl#> .&#10;</xsl:text>
       <xsl:text disable-output-escaping="yes">@prefix dct: &lt;http://purl.org/dc/terms/> .&#10;</xsl:text>
       <xsl:text disable-output-escaping="yes">@prefix system: &lt;http://purl.org/olia/system.owl#> .&#10;</xsl:text>
       <xsl:text>&#10;</xsl:text>
       
       <!-- for every tag -->
       <xsl:for-each select="//h2">
           <xsl:variable name="label" select="translate(normalize-space(substring-after(text()[1],':')),'&quot;','')"/>
           <xsl:variable name="id" select="./preceding-sibling::p[1]/a[1]/@id"/>
       <xsl:variable name="type" select=" substring-after(substring-after(substring-before($id,'/'),'-'),'-')"/>
        <xsl:variable name="lang" select=" substring-before(substring-after(substring-before($id,'/'),'-'),'-')"/>
           <xsl:variable name="tag" select="substring-after($id,'/')"/>
           
           <xsl:variable name="uri" select="concat($baseuri,$lang,'/',$type,'/',$tag)"/>
       
       <xsl:if test="$lang!=''">
           <xsl:text disable-output-escaping="yes">@prefix : &lt;</xsl:text>
           <xsl:value-of select="concat($baseuri,$lang,'/',$type,'/')"/>
           <xsl:text disable-output-escaping="yes">> .&#10;</xsl:text>
           <xsl:text disable-output-escaping="yes">@prefix u: &lt;</xsl:text>
           <xsl:value-of select="concat($baseuri,'u','/',$type,'/')"/>
           <xsl:text disable-output-escaping="yes">> . &#10;</xsl:text>
           
           <xsl:value-of select="concat(':', translate($tag,':','_'))"/>
           <xsl:if test="$label!=''">
               <xsl:text> rdfs:label "</xsl:text>
               <xsl:value-of select="$label"/>
               <xsl:text>"@en; </xsl:text>
           </xsl:if>
           <xsl:choose>
               <xsl:when test="$lang='u' or $type='feat'">
                   <xsl:text disable-output-escaping="yes"> rdfs:subClassOf &lt;</xsl:text>
                   <xsl:value-of select="concat($baseuri,'u','/',$type)"/>
                       <xsl:text disable-output-escaping="yes">></xsl:text>
               </xsl:when>
               <xsl:otherwise>
                   <xsl:text> a </xsl:text>
                   <xsl:choose>
                       <xsl:when test="contains($tag,':')">
                           <!-- drop language-specific subtypes -->
                           <xsl:value-of select="concat('u:',substring-before($tag,':'))"/>
                       </xsl:when>
                       <xsl:otherwise>
                           <xsl:value-of select="concat('u:',$tag)"/>
                       </xsl:otherwise>
                   </xsl:choose>
                   <xsl:text>;&#10;  system:hasTag "</xsl:text>
                   <xsl:value-of select="$tag"/>
                   <xsl:text>"</xsl:text>
                   <xsl:text>;&#10;  system:hasTier "</xsl:text>
                   <xsl:value-of select="$type"/>
                   <xsl:text>"</xsl:text>
                   <xsl:text>;&#10;  dct:language "</xsl:text>
                   <xsl:value-of select="$lang"/>
                   <xsl:text>"</xsl:text>
               </xsl:otherwise>
           </xsl:choose>
           <xsl:variable name="h2offset" select="count(./preceding::h2)"/>
           <xsl:text>;&#10;  rdfs:comment """ </xsl:text>
           <xsl:for-each select="./following-sibling::*[count(preceding-sibling::h2[1]/preceding-sibling::h2)=$h2offset][name(./preceding-sibling::*[name()='h2' or name()='h3'][1])='h2' or count(./preceding-sibling::*[name()='h2' or name()='h3'][1]/code[1])=0][name()!='h3' or count(code[1])=0]">
                   <xsl:copy-of select="."/>
            </xsl:for-each>
               <xsl:text> """^^rdf:XMLLiteral</xsl:text>
           <xsl:text>.&#10;</xsl:text>
           
           <!-- blank node as generic entry for universal tags, needed for UD v.2 where language-specific documentation is not (yet) available -->
           <xsl:if test="$lang='u' and $type!='feat'">
               <xsl:text>[] a :</xsl:text>
               <xsl:value-of select="translate($tag,':','_')"/>
               <xsl:text>; system:hasTag "</xsl:text>
               <xsl:value-of select="$tag"/>
               <xsl:text>"</xsl:text>
               <xsl:text>;  system:hasTier "</xsl:text>
               <xsl:value-of select="$type"/>
               <xsl:text>"; owl:versionInfo "generic tag instance, not language-specific".&#10;</xsl:text>
           </xsl:if>
           
           
           <xsl:if test="$type='feat'">
               <xsl:for-each select="./following-sibling::h3[count(code[1])=1][count(./preceding-sibling::h2[1]/preceding-sibling::h2)=$h2offset]">
                   <xsl:variable name="flabel" select="translate(normalize-space(substring-after(text()[1],':')),'&quot;','')"/>
                   <xsl:variable name="feat" select="code/text()[1]"/>
                   <xsl:value-of select="concat(':',$feat)"/>
                   <xsl:if test="$flabel!=''">
                       <xsl:text> rdfs:label "</xsl:text>
                       <xsl:value-of select="$flabel"/>
                       <xsl:text>"@en; </xsl:text>
                   </xsl:if>
                   <xsl:choose>
                       <xsl:when test="$lang='u'">
                           <xsl:text> rdfs:subClassOf :</xsl:text>
                           <xsl:value-of select="$tag"/>
                       </xsl:when>
                       <xsl:otherwise>
                           <xsl:text> a u:</xsl:text>
                           <xsl:value-of select="$feat"/>
                           
                           <xsl:text>;&#10;  system:hasTagEndingWith "</xsl:text>
                           <xsl:value-of select="concat($tag,'=',$feat)"/>
                           <xsl:text>"</xsl:text>
                           <xsl:text>;&#10;  system:hasTagContaining "</xsl:text>
                           <xsl:value-of select="concat($tag,'=',$feat,'|')"/>
                           <xsl:text>"</xsl:text>
                           <xsl:text>;&#10;  system:hasTier "</xsl:text>
                           <xsl:value-of select="$type"/>
                           <xsl:text>"</xsl:text>
                           <xsl:text>;&#10;  dct:language "</xsl:text>
                           <xsl:value-of select="$lang"/>
                           <xsl:text>"</xsl:text>
                       </xsl:otherwise>
                   </xsl:choose>
                   <xsl:variable name="h3offset" select="count(./preceding-sibling::h3)"/>
                   <xsl:text>;&#10;  rdfs:comment """ </xsl:text>
                   <xsl:for-each select="./following-sibling::*[name()!='h3' and name()!='h2'][count(./preceding-sibling::h3)=$h3offset+1][count(./preceding-sibling::h2[1]/preceding-sibling::h2)=$h2offset]">
                       <xsl:copy-of select="."/>
                   </xsl:for-each>
                   <xsl:text> """^^rdf:XMLLiteral</xsl:text>
                   <xsl:text>.&#10;</xsl:text>
                   
                   <!-- blank node as generic entry for universal tags, needed for UD v.2 where language-specific documentation is not (yet) available -->
                   <xsl:if test="$lang='u' and $type!='feat'">
                       <xsl:text>[] a </xsl:text>
                       <xsl:value-of select="concat(':',$feat)"/>
                       <xsl:text>;  system:hasTagEndingWith "</xsl:text>
                       <xsl:value-of select="concat($tag,'=',$feat)"/>
                       <xsl:text>"</xsl:text>
                       <xsl:text>;&#10;  system:hasTagContaining "</xsl:text>
                       <xsl:value-of select="concat($tag,'=',$feat,'|')"/>
                       <xsl:text>"</xsl:text>
                       <xsl:text>;&#10;  system:hasTier "</xsl:text>
                       <xsl:value-of select="$type"/>
                       <xsl:text>"; owl:versionInfo "generic tag instance, not language-specific".&#10;</xsl:text>
                   </xsl:if>
                   
                   
               </xsl:for-each>
           </xsl:if>
           
           <xsl:text>&#10;</xsl:text>
       </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
