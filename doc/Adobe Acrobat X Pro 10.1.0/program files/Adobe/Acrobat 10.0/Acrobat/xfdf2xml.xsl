<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:xfdf="http://ns.adobe.com/xfdf/">

	<!-- Set the output encoding to be UTF-8 -->
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" />

	<xsl:template match="xfdf:fields">
		<fields> 
			<xsl:apply-templates select="xfdf:field" />
		</fields>
	</xsl:template>
	
	<xsl:template match="xfdf:field">					
		<xsl:element name="field">
			<xsl:attribute name="xfdf:original"><xsl:value-of select="@name"/></xsl:attribute>
 			<xsl:apply-templates select="xfdf:field" />
 			<xsl:apply-templates select="xfdf:value|xfdf:value-richtext" /> 
		</xsl:element>
		
	</xsl:template>
	
	<xsl:template match="xfdf:value|xfdf:value-richtext">
		<xsl:value-of select="." />
	</xsl:template>

</xsl:stylesheet>
