<?xml version="1.0" encoding="utf-8"?>

<!-- This stylesheet will take in an XDP file, then write out an
     S2X file with all of the strings that need to be translated.

	<Metadata>
		<Item>
			Version="SET_XSL_VERSION_HERE" 
		</Item>
	</Metadata>
-->

<xslt:stylesheet version="1.1"
                 xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                 xmlns:xft-xliff="http://www.xfa.org/schema/xfa-xliff/1.0/"
                 xmlns:xliff="urn:oasis:names:tc:xliff:document:1.1"
                 exclude-result-prefixes="xliff">

    <xslt:output method="xml" encoding="utf-8"/>

    <!-- We need to take in a number of parameters from the outside world in order to properly create the S2X file. -->

    <xslt:param name="locale" select="'en'" />
    <xslt:param name="xdpFilename" select="'xliff.xdp'" />
    <xslt:param name="develContact" select="'developer@mycompany.com'" />
    <xslt:param name="collection" select="'package'" />
    <xslt:param name="domain" select="'BC'" />

    <!-- Match on the document root. -->

    <xslt:template match="/">
        <xliff version="1.1">
            <file tool="AdobeDesigner" original="{$xdpFilename}" source-language="{$locale}" datatype="XDP" product-name="Adobe Designer">
                 <header>
                     <phase-group>
                         <phase phase-name="design" process-name="form design">
                             <note>XLIFF/S2X file created by Adobe Designer XDP to S2X translation</note>
                         </phase>
                     </phase-group>
                     <s2x>
                            <dtr />
                         <giltDirectives>
                             <develContact><xslt:value-of select="$develContact" /></develContact>
                             <!-- Creation of originalLocale with a xml:lang attribute causes a recoverable error with the
                                  Saxon XSLT engine. The work around is to create it using xslt:element, but this
                                  causes an error with Sun's XSLT engine. The Sun XSLT engine approach works with
                                  most XSLT engines. -->
                             <xslt:element name="originalLocale">
                                 <xslt:attribute name="xml:lang">
                                     <xslt:value-of select="$locale"/>
                                 </xslt:attribute>
                             </xslt:element>
                           <!--  <originalLocale xml:lang="{$locale}" />  -->
                             <collection><xslt:value-of select="$collection" /></collection>
                             <domain><xslt:value-of select="$domain" /></domain>
                         </giltDirectives>
                     </s2x>
                </header>
                <body>
                     <!-- Grab the extracted IDs and remove the duplicate values. -->
                        <xslt:variable name="ids">
                         <xslt:apply-templates select="* | processing-instruction() | comment()" />
			  			</xslt:variable>
                    <xslt:for-each select="$ids/group">
                         <xslt:sort select="trans-unit/@id"/>
                         <xslt:if test="not (trans-unit/@id = preceding::trans-unit/@id)">
                             <xslt:copy-of select="."/>
                         </xslt:if>
                    </xslt:for-each>
                </body>
            </file>
       </xliff>
    </xslt:template>

    <!-- Match a generic node. -->

    <xslt:template match="@* | * | processing-instruction() | comment()">
		<xslt:param name="restype" />
        <xslt:choose>
			 <xslt:when test="local-name()='field' ">
					<xslt:variable name="resource">
                         <xslt:call-template   name="getType" />
					 </xslt:variable>	
					 <xslt:call-template  name="field"> 				
						   <xslt:with-param name="restype" select="$resource" />
					 </xslt:call-template>				   
			 </xslt:when> 
			 <xslt:when test="local-name()='draw' ">
				  <xslt:call-template name="draw" > 
					   <xslt:with-param name="restype" select="$restype" />
				  </xslt:call-template> 	
			</xslt:when> 
			<xslt:when test="local-name()='text' or  local-name()='toolTip' or local-name()='speak' or local-name()='exData' or (local-name()='trans-unit' and ../../../../local-name()='xliff')">        
				<xslt:variable name="realrestype">
					<xslt:choose>
						<xslt:when test="local-name()='trans-unit' and ../../../../local-name()='xliff'">
							<xslt:value-of select="@restype"/>
						</xslt:when>
						<xslt:otherwise>
							<xslt:value-of select="$restype"/>
						</xslt:otherwise>
					</xslt:choose>
				</xslt:variable>
                <xslt:call-template name="extractIDs" > 
                    <xslt:with-param name="restype" select="$realrestype"/>
                </xslt:call-template>
			</xslt:when> 
			<xslt:otherwise>  
			   <xslt:apply-templates> 
			      <xslt:with-param name="restype" select="$restype" />
			   </xslt:apply-templates> 
			</xslt:otherwise>   
         </xslt:choose>
    </xslt:template>

    <!-- If we have a field node, pass down which type of field it is, so the translators can translate it properly. -->

	<xslt:template name ="getType" >
		<xslt:choose>			 
			 <xslt:when test="*[local-name()='ui']/*[local-name()='textEdit']">description</xslt:when> 
			 <xslt:when test="*[local-name()='ui']/*[local-name()='button']">button</xslt:when> 
			 <xslt:when test="*[local-name()='ui']/*[local-name()='choiceList']">listitem</xslt:when> 
			 <xslt:when test="*[local-name()='ui']/*[local-name()='checkButton'] and ancestor::exclGroup">radio</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='checkButton'] and not(ancestor::exclGroup)">checkbox</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='dateTimeEdit']">description</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='numericEdit']">description</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='passwordEdit']">description</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='signature']">description</xslt:when>
			 <xslt:when test="*[local-name()='ui']/*[local-name()='imageEdit']">description</xslt:when>
         </xslt:choose>
   	</xslt:template>

	<!-- If we have a draw node, pass down that it is a label so the translators can translate it properly. -->

    <xslt:template name="draw">
        <xslt:apply-templates select="*">
            <xslt:with-param name="restype" select="'description'" />
        </xslt:apply-templates>
    </xslt:template>

	<xslt:template name="field">
		<xslt:param name="restype" />
			<xslt:apply-templates select="*">
			  <xslt:with-param name="restype" select="$restype" />
			</xslt:apply-templates>
    </xslt:template>
    
    <!-- Match one of the special nodes because it needs to be translated. -->

    <xslt:template name="extractIDs">
        <xslt:param name="restype" />
        <!-- Only translate the field if we have an XFA XLiff ID, XFA XLIFF node and we are not the default password. -->
        <xslt:if test="@xliff:rid or @xft-xliff:id or @id">      
               
            <xslt:element name="group">

               <xslt:if test="not(ancestor::message) ">
                    <xslt:attribute name="restype"><xslt:value-of select="$restype" /></xslt:attribute>
                </xslt:if>

                <xslt:if test="ancestor::message">
                    <xslt:attribute name="restype"><xslt:value-of select="'description'" /></xslt:attribute>
                </xslt:if>
 
				<!-- If the Designer version is 8.1 or later then the Adobe Xliff ids are used. -->
						<trans-unit id="{@xliff:rid}" resname="{@xliff:rid}"> 
							<source>
								<xslt:copy-of select="text() | *"/>
							</source>
						</trans-unit>
            </xslt:element>
        </xslt:if>
    </xslt:template>

	
</xslt:stylesheet>



