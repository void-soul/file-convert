<?xml version="1.0" encoding="utf-8"?>

<!-- This stylesheet will take in an XDP file and an S2X file and
     write out a merged XDP file with all of the translated strings
     in the S2X file.

	<Metadata>
		<Item>
			Version="SET_XSL_VERSION_HERE" 
		</Item>
	</Metadata>

-->

<xslt:stylesheet version="2.0"
                 xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                 xmlns:xdp="http://ns.adobe.com/xdp/"
                 xmlns:xft-xliff="http://www.xfa.org/schema/xfa-xliff/1.0/"
                 xmlns:xliff="urn:oasis:names:tc:xliff:document:1.1"
                 exclude-result-prefixes="xft-xliff xliff">

    <xslt:output method="xml" encoding="utf-8" />

    <xslt:param name="xdpFile" select="'grantapp.xdp'" />

    <!-- Set up some variables to handle both the input XDP and the S2X file we want to merge in. -->

    <xslt:variable name="xdp" select="document($xdpFile)" />

    <xslt:param name="s2x" select="//trans-unit" />

    <!-- match the document root -->

    <xslt:template match="/">
        <xslt:apply-templates select="$xdp/@* | $xdp/* | $xdp/processing-instruction() | $xdp/comment()" />
    </xslt:template>

    <!-- match a generic node -->

	<xslt:template match="@* | * | processing-instruction() | comment()">
		<xslt:choose>
			<xslt:when test="local-name()='text' or  local-name()='toolTip' or local-name()='speak' or local-name()='exData' or (local-name()='trans-unit' and ../../../../local-name()='xliff')">
				<xslt:call-template name="replaceIDs"/>
			</xslt:when>
			<xslt:when test="not(local-name()='renderCache.subset' or  local-name()='renderCache.textRun' or local-name()='renderCache.bounds')">
				<xslt:copy>
					<xslt:apply-templates select="@* | * | processing-instruction() | comment() | node()"/>
				</xslt:copy>
			</xslt:when>
		</xslt:choose>
	</xslt:template>

    <!-- match one of the special nodes translated because we need to replace the content. -->

   <xslt:template name="replaceIDs">
   
	
			<!-- Update text, if the Designer version is 8.1 or later then the Adobe Xliff ids are used otherwise the SAP Xliff ids are used. -->
				<xslt:element name="{name()}" namespace="{namespace-uri()}">
					<xslt:for-each select="@*">
						<xslt:attribute name="{name()}" namespace="{namespace-uri()}"><xslt:value-of select="." /></xslt:attribute>
					</xslt:for-each>
	
					<xslt:variable name="idToGet" select="@xliff:rid" />
					<!-- only allow selection of first id match - all other id matches will be discarded -->
					<xslt:variable name="translatedNode" select="$s2x[@id=$idToGet][1]/source" />
	
					<xslt:if test="$translatedNode">
						<xslt:copy-of select="$translatedNode/* | $translatedNode/node()" />
					</xslt:if>
	
					<xslt:if test="not($translatedNode)">
						<xslt:apply-templates select="@* | * | processing-instruction() | comment() | node()" />
					</xslt:if>
				</xslt:element>
			
    </xslt:template>

	
</xslt:stylesheet>


