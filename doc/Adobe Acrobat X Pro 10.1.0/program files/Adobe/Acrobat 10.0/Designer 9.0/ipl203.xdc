<?xml version="1.0" encoding="UTF-8"?>
<?xfa generator="XFA2_0" APIVersion="3.1.10056.0"?>
<xdp:xdp xmlns:xdp="http://ns.adobe.com/xdp/">
	<xdc name="ipl203" id="ipl203" xmlns="http://www.xfa.org/schema/xdc/1.0/">
		<pdl>
			<renderLib name="ipldriver"/>
			<!-- ========================================== -->
			<!-- Job/doc/page/subform event sequences       -->
			<!-- ========================================== -->
			<seq id="preDoc"/>
			<seq id="postDoc"/>
			<seq id="startDoc"/>
			<seq id="endDoc"/>
			<seq id="preRecord"/>
			<seq id="postRecord"/>
			<seq id="startRecord"/>
			<seq id="endRecord"/>
			<seq id="prePage"/>
			<seq id="postPage"/>
			<seq id="startPage"/>
			<seq id="endPage"/>
			<seq id="copy"/>
			
			
			<!-- ========================================== -->
			<!-- Font Mappings                              -->
			<!-- written to var fontName                    -->
			<!-- ========================================== -->
			<seq id="Intermec Standard(7x9) 4 point_Normal_Normal_ISO-8859-1">0,c0,1,1,0</seq>
			<seq id="Intermec OCR(7x11) 5 point_Normal_Normal_ISO-8859-1">0,c1,1,1,0</seq>
			<seq id="Intermec Standard(10x14) 7 point_Normal_Normal_ISO-8859-1">0,c2,1,1,0</seq>
			<seq id="Intermec Standard(5x7) 3 point_Normal_Normal_ISO-8859-1">0,c7,1,1,0</seq>
			<seq id="Intermec 8 point_Normal_Normal_ISO-8859-1">0,c20,1,1,0</seq>
			<seq id="Intermec 12 point_Normal_Normal_ISO-8859-1">0,c21,1,1,0</seq>
			<seq id="Intermec 20 point_Normal_Normal_ISO-8859-1">0,c22,1,1,0</seq>
			<seq id="Intermec OCR A 12 point_Normal_Normal_ISO-8859-1">0,c23,1,1,0</seq>
			<seq id="Intermec OCR B size2 10 point_Normal_Normal_ISO-8859-1">0,c24,1,1,0</seq>
			<seq id="Intermec Swiss Mono 721 Outline_Normal_Normal_ISO-8859-1">1,c25,0,0,0</seq>
			<seq id="Intermec Swiss Mono 721 Outline_Bold_Normal_ISO-8859-1">1,c26,0,0,0</seq>
			<seq id="Intermec Dutch Roman 801 Outline_Normal_Normal_ISO-8859-1">1,c28,0,0,0</seq>
			<seq id="Intermec 6 point_Bold_Normal_ISO-8859-1">0,c30,1,1,0</seq>
			<seq id="Intermec 8 point_Bold_Normal_ISO-8859-1">0,c31,1,1,0</seq>
			<seq id="Intermec 10 point_Normal_Normal_ISO-8859-1">0,c32,1,1,0</seq>
			<seq id="Intermec 10 point_Bold_Normal_ISO-8859-1">0,c33,1,1,0</seq>			
			<seq id="Intermec 12 point_Bold_Normal_ISO-8859-1">0,c34,1,1,0</seq>
			<seq id="Intermec 16 point_Normal_Normal_ISO-8859-1">0,c35,1,1,0</seq>
			<seq id="Intermec 16 point_Bold_Normal_ISO-8859-1">0,c36,1,1,0</seq>
			<seq id="Intermec 20 point_Bold_Normal_ISO-8859-1">0,c37,1,1,0</seq>
			<seq id="Intermec 24 point_Normal_Normal_ISO-8859-1">0,c38,1,1,0</seq>
			<seq id="Intermec 24 point_Bold_Normal_ISO-8859-1">0,c39,1,1,0</seq>
			<seq id="Intermec 30 point_Bold_Normal_ISO-8859-1">0,c40,1,1,0</seq>
			<seq id="Intermec 36 point_Bold_Normal_ISO-8859-1">0,c41,1,1,0</seq>
			<seq id="Intermec Swiss 721_Normal_Normal_ISO-8859-1">1,c61,0,0,0</seq>	
			<seq id="Intermec Swiss 721_Bold_Normal_ISO-8859-1">1,c62,0,0,0</seq>	
			<seq id="Intermec Swiss 721 Condensed_Bold_Normal_ISO-8859-1">1,c63,0,0,0</seq>
			<seq id="Intermec Prestige_Bold_Normal_ISO-8859-1">1,c64,0,0,0</seq>
			<seq id="Intermec Zurich Extra Condensed_Normal_Normal_ISO-8859-1">1,c65,0,0,0</seq>
			<seq id="Intermec Dutch 801_Bold_Normal_ISO-8859-1">1,c66,0,0,0</seq>	
			<seq id="Intermec Century Schoolbook_Normal_Normal_ISO-8859-1">1,c67,0,0,0</seq>
			<seq id="Intermec Futura Light_Normal_Normal_ISO-8859-1">1,c68,0,0,0</seq>
			<seq id="Intermec Letter Gothic_Normal_Normal_ISO-8859-1">1,c69,0,0,0</seq>
			<seq id="Intermec DingDings_Normal_Normal_ISO-8859-1">1,c70,0,0,0</seq>			
		</pdl>
		<deviceInfo>
			<!-- ========================================== -->
			<!-- Device options                             -->
			<!-- ========================================== -->
			<option name="manufacturer">Intermec</option>
			<option name="model">Intermec 203 DPI</option>
			<option name="language">ipl</option>
			<option name="supportsAbsolutePosition">1</option>
			<option name="supportsDrawText">1</option>
			<option name="supportsDrawLine">1</option>
			<option name="supportsDrawArc">0</option>
			<option name="supportsDrawRectangle">1</option>
			<option name="supportsGradientFill">0</option>
			<option name="supportsPatternFill">0</option>
			<option name="supportsColor">0</option>
			<option name="supportsColorImages">0</option>
			<option name="supportsNativeLineStyles">0</option>
			<option name="supportsNativeRectangle">1</option>
			<option name="supportsComplexRectangle">0</option>
			<option name="supportsDSC">0</option>
			<option name="supportsEncodeColorMap">0</option>
			<option name="supportsMacros">0</option>
			<option name="adjustBaseline">0</option>
			<option name="maxOutputLineLength">80</option>
			<option name="deviceXResolution">203</option>
			<option name="deviceYResolution">203</option>
			<option name="resolution">203</option>
			<option name="defaultRasterResolution">203</option>
            <option name="deviceRasterTextResolution">203</option>
			<option name="maxDeviceRasterResolution">203</option>
			<option name="autoCalcGraphicDimensions">1</option>
			<option name="endCap_butt">0</option>
			<option name="endCap_round">1</option>
			<option name="endCap_square">2</option>
			<option name="supportsImageScaling">0</option>
			<option name="supportedCompressionTypes">none</option>
			<option name="enumerateFonts">0</option>
			<option name="enumerateColors">0</option>
			<option name="replaceCharacters">,\,\\</option>
			<option name="strokeTypeMultiplier">1</option>
			<!-- Should be in xci -->
			<option name="useDSC">0</option>
			<option name="linesAsRaster">0</option>
			<option name="arcsAsRaster">0</option>
			<option name="rectanglesAsRaster">0</option>
			<option name="renderImagesInColor">0</option>
			<option name="rasterizeAll">0</option>
			<option name="rasterizeBoilerPlate">0</option>
			<option name="ignoreBoilerplate">0</option>
			<option name="useNativeLineStyles">0</option>
			
		
			<!-- ========================================== -->
			<!-- Image options                              -->
			<!-- ========================================== -->
			<option name="blackIsZero">0</option>
			<option name="outputImagesByLine">1</option>
			<option name="supportsColorImages">0</option>
			<option name="imageCompression">none</option>
			<option name="supportsEncodeColorMap">none</option>
			<option name="supportsImageScaling">0</option>
			<option name="supportsLinkedImages">0</option>
			<option name="supportsEmbeddedImages">1</option>
			<option name="supportedEmbeddedImageFormats">internal</option>
			<option name="supportedLinkedImageFormats">internal</option>
			<option name="supportsMonochrome1">1</option>
			<option name="supportsGreyscale1">0</option>
			<option name="supportsGreyscale2">0</option>
			<option name="supportsGreyscale4">0</option>
			<option name="supportsGreyscale8">0</option>
			<option name="supportsPalette1">0</option>
			<option name="supportsPalette2">0</option>
			<option name="supportsPalette4">0</option>
			<option name="supportsPalette8">0</option>
			<option name="supportsRGB8">0</option>
			<option name="supportsRGB16">0</option>
			<!-- ========================================== -->
			<!-- Barcode options                            -->
			<!-- ========================================== -->
			<option name="barcodeCode128AConversion">0</option>
			<option name="barcodeCode128m2">0</option>
			<option name="barcode128InvocationCodes">,[F4],4,[F3],3,[F2],2,[F1],1,[CA],A,[CB],B,[CC],C</option>
			<!-- ========================================== -->
			<!-- Font options                              -->
			<!-- ========================================== -->
			<option name="supportsFontEmbedding">1</option>
			<option name="supportsFontLinking">0</option>
			<option name="supportsFontSubsetting">1</option>
			<option name="supportsFontRasterizing">1</option>			
			<option name="enumerateFonts">0</option>
			<option name="alwaysOutputFontSelect">1</option>
			<!-- ========================================== -->
			<!-- Text formatting                            -->
			<!-- ========================================== -->
			<option name="boilerplateTextRetrieval">formattedFragments</option>
			<option name="fieldTextRetrieval">formattedFragments</option>
			<option name="outputZeroRotation">0</option>
			<option name="outputLinkedJTextAsUnicode">0</option>
			<option name="outputLinkedCKTextAsUnicode">1</option>
			<option name="outputEmbeddedCJKTextAsUnicode">1</option>

			<!-- ========================================== -->
			<!-- Raster Substitution Font				     -->
			<!-- ========================================== -->
			<rasterSubstitutionFont typeface="Intermec Swiss 721_Normal_Normal" unicodeRange="U+20-U+FF"/>			
			<!-- ========================================== -->
			<!-- Medium                                     -->
			<!-- ========================================== -->
			<medium stock="4x6" short="288pt" long="432pt" imagingBBox="0pt,1pt,288pt,431pt"/>
			<medium stock="default" short="288pt" long="432pt" imagingBBox="0pt,1pt,288pt,431pt"/>
			<!-- ========================================== -->
			<!-- Line styles                                -->
			<!-- ========================================== -->
			<lineStyle name="solid" styleType="bitPattern">1 0</lineStyle>
			<lineStyle name="dotted" styleType="bitPattern">1 2</lineStyle>
			<lineStyle name="dashed" styleType="bitPattern">4 2</lineStyle>
			<lineStyle name="dashDot" styleType="bitPattern">3 2 1 2</lineStyle>
			<lineStyle name="dashDotDot" styleType="bitPattern">3 2 1 2 1 2</lineStyle>
			<!-- ========================================== -->
			<!-- Units                                      -->
			<!-- ========================================== -->
			<deviceUnits name="general" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="pageDimensions" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineDimensions" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="linePlacement" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineThickness" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicPlacement" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicDimensions" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="textPlacement" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="fontSize" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="arcPlacement" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="arcDimensions" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="rectanglePlacement" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="rectangleDimensions" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="color" hSize="0pt" vSize="0pt" fracDigits="0" fraction="round"/>
			<!-- ========================================== -->
			<!-- Barcodes                                   -->
			<!-- ========================================== -->
			<barcodes>
				<barcodeDefinition type="micropdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" />
				<barcodeDefinition type="dataMatrix" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" />
				<barcodeDefinition type="upsMaxicode" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" dataLength="0-90"/>
				<barcodeDefinition type="planetCode" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="none" textLocation="none,above,below" validDataChars="0123456789-"/>
				<barcodeDefinition type="rss14" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Stacked" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14StackedOmni" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Truncated" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssLimited" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssExpanded" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" dataLength="1-74"/>
				<barcodeDefinition type="code11" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789-"/>
				<barcodeDefinition type="code2Of5Interleaved" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Industrial" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Standard" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="codabar" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" startChar="ABCDabcd*NTEnte" endChar="ABCDabcd*NTEnte" validDataChars="0123456789"/>
				<barcodeDefinition type="postUSStandard" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="9"/>
				<barcodeDefinition type="postUS5Zip" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="postUSDPBC" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="11"/>
				<barcodeDefinition type="ean8" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" dataLength="7" validDataChars="0123456789"/>
				<barcodeDefinition type="upcE" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="10"/>
				<barcodeDefinition type="ean13" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="12"/>
				<barcodeDefinition type="upcA" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="11"/>
				<barcodeDefinition type="code3Of9" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
				<barcodeDefinition type="code93" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" printCheckDigit="1" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&amp;',()"/>
				<barcodeDefinition type="code128" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128A" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128B" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128C" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code49" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" startChar="A12345" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&lt;&#x3e;:;?="/>
				<barcodeDefinition type="pdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" errorCorrectionLevel="012345678" dataColumnCount="1-30" dataRowCount="1-90" truncate="1"/>
				<barcodeDefinition type="codeQR" support="hardware" errorCorrectionLevel="HQML" textEncoding="Shift-JIS"/>
				<barcodeDefinition type="code128SSCC" support="hardware" textLocation="none,above" dataLength="19"/>				
				<!-- not supported by this device but are software supported -->
				<barcodeDefinition type="postUSImb"		support="software" checksum="auto" textLocation="none,below" validDataChars="0123456789" dataLength="20-31"/>				
				<barcodeDefinition type="code2Of5Matrix" support="software" wideNarrowRatio="2.2-3.0" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSStandard" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postAUSCust2" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSCust3" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSReplyPaid" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postUKRM4SCC" support="software" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
			</barcodes>
			<!-- ========================================== -->
			<!-- Fonts                                      -->
			<!-- ========================================== -->
			<font typeface="Intermec Standard(7x9) 4 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="798pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:798pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec OCR(7x11) 5 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="568pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:568pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Standard(10x14) 7 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="609pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:609pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Standard(5x7) 3 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="710pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:710pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec 8 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec 12 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec 20 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec OCR A 12 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="621pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:621pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec OCR B size2 10 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="709pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:709pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Swiss Mono 721 Outline" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="600pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:600pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Swiss Mono 721 Outline" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="600pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:600pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec Dutch Roman 801 Outline" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="692pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:326pt 34:335pt 35:769pt 36:500pt 37:940pt 38:820pt 39:172pt 40-41:383pt 42:500pt 43:833pt 44:250pt 45:330pt 46:250pt 47:272pt 48-57:500pt 58-59:273pt 60-62:833pt 63:492pt 64:986pt 65:769pt 66:683pt 67:708pt 68:807pt 69:697pt 70:620pt 71:810pt 72:819pt 73:381pt 74:439pt 75:740pt 76:642pt 77:947pt 78:769pt 79:810pt 80:604pt 81:810pt 82:769pt 83:547pt 84:658pt 85:820pt 86:766pt 87:985pt 88:769pt 89:766pt 90:712pt 91:327pt 92:272pt 93:327pt 94:1000pt 95-96:500pt 97:493pt 98:531pt 99:439pt 100:547pt 101:494pt 102:328pt 103:488pt 104:548pt 105:274pt 106:267pt 107:520pt 108:272pt 109:821pt 110:548pt 111:545pt 112:547pt 113:541pt 114:383pt 115:382pt 116:326pt 117:549pt 118:453pt 119:676pt 120:442pt 121:446pt 122:436pt 123-125:500pt 126:833pt 128:500pt 130:250pt 131:500pt 132:468pt 133:1000pt 134-136:500pt 137:1356pt 138:547pt 139:310pt 140:1093pt 142:712pt 145-146:250pt 147-148:468pt 149:590pt 150:500pt 151:1000pt 152:500pt 153:822pt 154:382pt 155:310pt 156:882pt 158:436pt 159:766pt 160:500pt 161:326pt 162-164:500pt 165:668pt 166-168:500pt 169:822pt 170:369pt 171:506pt 172:833pt 173:330pt 174:822pt 175:500pt 176:329pt 177:833pt 178-179:330pt 180:500pt 181:571pt 182:500pt 183:250pt 184:500pt 185:330pt 186:409pt 187:506pt 188-190:797pt 191:492pt 192-197:769pt 198:1049pt 199:708pt 200-203:697pt 204-207:381pt 208:807pt 209:769pt 210-214:810pt 215:833pt 216:810pt 217-220:820pt 221:766pt 222:601pt 223:546pt 224-229:493pt 230:770pt 231:439pt 232-235:494pt 236-239:274pt 240:550pt 241:548pt 242-246:545pt 247:833pt 248:545pt 249-252:549pt 253:446pt 254:547pt 255:446pt </charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec 6 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec 8 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec 10 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec 10 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec 12 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec 16 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec 16 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>
			<font typeface="Intermec 20 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>					
			<font typeface="Intermec 24 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>					
			<font typeface="Intermec 24 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec 30 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>				
			<font typeface="Intermec 36 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="581pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:581pt</charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec Swiss 721" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="719pt" defaultCharWidth="963pt"  textEncoding="ISO-8859-1">
					<charWidths>32:274pt 33:321pt 34:300pt 35:769pt 36:549pt 37:845pt 38:683pt 39:155pt 40-41:336pt 42:500pt 43:833pt 44:274pt 45:312pt 46:274pt 47:301pt 48-57:549pt 58-59:297pt 60-62:833pt 63:525pt 64:1000pt 65:637pt 66:662pt 67:713pt 68:707pt 69:639pt 70:583pt 71:764pt 72:723pt 73:257pt 74:505pt 75:638pt 76:535pt 77:830pt 78:721pt 79:773pt 80:630pt 81:773pt 82:664pt 83:646pt 84:571pt 85:709pt 86:611pt 87:904pt 88:605pt 89:603pt 90:598pt 91:354pt 92:301pt 93:354pt 94:1000pt 95-96:500pt 97:543pt 98:594pt 99:525pt 100:594pt 101:547pt 102:264pt 103:595pt 104:569pt 105:222pt 106:230pt 107:517pt 108:226pt 109:858pt 110:569pt 111:581pt 112-113:594pt 114:332pt 115:496pt 116:281pt 117:569pt 118:481pt 119:728pt 120:479pt 121:507pt 122:481pt 123-125:500pt 126:833pt 160:549pt 161:321pt 162-163:549pt 164:606pt 165:603pt 166-168:500pt 169:833pt 170:407pt 171:444pt 172:833pt 173:312pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:362pt 180:500pt 181:562pt 182:500pt 184:500pt 185:362pt 186:436pt 187:444pt 188-189:858pt 190:859pt 191:525pt 192-197:637pt 198:948pt 199:713pt 200-203:639pt 204-207:257pt 208:764pt 209:721pt 210-214:773pt 215:833pt 216:773pt 217-220:709pt 221:257pt 222:646pt 223:539pt 224-229:543pt 230:882pt 231:525pt 232-235:547pt 236-239:222pt 240:595pt 241:569pt 242-246:581pt 247:833pt 248:581pt 249-252:569pt 253:222pt 254:496pt 255:507pt </charWidths>
				</metrics>
			</font>				
			<font typeface="Intermec Swiss 721" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="719pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32:284pt 33:330pt 34:331pt 35:769pt 36:567pt 37:860pt 38:701pt 39:172pt 40-41:370pt 42:500pt 43:833pt 44:284pt 45:334pt 46:284pt 47:317pt 48-57:567pt 58-59:307pt 60-62:833pt 63:558pt 64:1000pt 65:686pt 66:704pt 67:744pt 68:727pt 69:653pt 70:598pt 71:777pt 72:743pt 73:307pt 74:553pt 75:703pt 76:580pt 77:872pt 78:741pt 79:789pt 80:667pt 81:789pt 82:714pt 83:667pt 84:594pt 85:717pt 86:625pt 87:934pt 88:626pt 89:622pt 90:601pt 91:382pt 92:317pt 93:382pt 94:1000pt 95-96:500pt 97:562pt 98:613pt 99:551pt 100:615pt 101:570pt 102:324pt 103:610pt 104:602pt 105:272pt 106:271pt 107:554pt 108:275pt 109:877pt 110:597pt 111:608pt 112-113:613pt 114:384pt 115:546pt 116:318pt 117:597pt 118:530pt 119:765pt 120:516pt 121:537pt 122:506pt 123-125:500pt 126:833pt 130:260pt 131:567pt 132:440pt 133:1000pt 134-136:500pt 137:1285pt 138:667pt 139:237pt 140:1128pt 142:601pt 145-146:260pt 147-148:440pt 149:590pt 150:500pt 151:1000pt 152:500pt 153:833pt 154:546pt 155:237pt 156:951pt 158:506pt 159:622pt 160:567pt 161:330pt 162-163:567pt 164:606pt 165:600pt 166-168:500pt 169:833pt 170:422pt 171:447pt 172:833pt 173:334pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:374pt 180:500pt 181:610pt 182:500pt 183:284pt 184:500pt 185:374pt 186:456pt 187:447pt 188-189:882pt 190:881pt 191:558pt 192-197:686pt 198:1002pt 199:744pt 200-203:653pt 204-207:307pt 208:731pt 209:741pt 210-214:789pt 215:833pt 216:789pt 217-220:717pt 221:622pt 222:657pt 223:600pt 224-229:562pt 230:884pt 231:551pt 232-235:570pt 236-239:272pt 240:609pt 241:597pt 242-246:608pt 247:833pt 248:608pt 249-252:597pt 253:537pt 254:613pt 255:537pt </charWidths>
				</metrics>
			</font>			
			<font typeface="Intermec Swiss 721 Condensed" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="752pt" defaultCharWidth="963pt"  textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:292pt 34:331pt 35:769pt 36:500pt 37:771pt 38:658pt 39:172pt 40-41:329pt 42:500pt 43:833pt 44:250pt 45:328pt 46:250pt 47:307pt 48-57:500pt 58-59:273pt 60-62:833pt 63:491pt 64:1000pt 65:547pt 66:545pt 67:548pt 68:588pt 69:495pt 70:489pt 71:589pt 72:598pt 73:268pt 74:441pt 75:546pt 76:488pt 77:756pt 78:596pt 79:587pt 80:545pt 81:587pt 82:577pt 83:548pt 84:482pt 85:597pt 86:547pt 87:819pt 88:548pt 89:550pt 90:484pt 91:328pt 92:307pt 93:328pt 94:1000pt 95-96:500pt 97:485pt 98:486pt 99:454pt 100:486pt 101:476pt 102:275pt 103:486pt 104:485pt 105:242pt 106:251pt 107:432pt 108:242pt 109:751pt 110:485pt 111:478pt 112-113:486pt 114:338pt 115:440pt 116:272pt 117:484pt 118:444pt 119:655pt 120:437pt 121:444pt 122:383pt 123-125:500pt 126:833pt 160:500pt 161:292pt 162-163:500pt 164:606pt 165:556pt 166-168:500pt 169:833pt 170:364pt 171:483pt 172:833pt 173:328pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:330pt 180:500pt 181:610pt 182:500pt 184:500pt 185:330pt 186:359pt 187:483pt 188-190:797pt 191:491pt 192-197:547pt 198:765pt 199:548pt 200-203:495pt 204-207:268pt 208:589pt 209:596pt 210-214:587pt 215:833pt 216:587pt 217-220:597pt 221:268pt 222:548pt 223:486pt 224-229:485pt 230:708pt 231:454pt 232-235:476pt 236-239:242pt 240:486pt 241:485pt 242-246:478pt 247:833pt 248:478pt 249-252:484pt 253:242pt 254:440pt 255:444pt </charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec Zurich Extra Condensed" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="720pt" defaultCharWidth="922pt"  textEncoding="ISO-8859-1">
					<charWidths>32:176pt 33:230pt 34:288pt 35:769pt 36:353pt 37:520pt 38:415pt 39:149pt 40-41:234pt 42:276pt 43:833pt 44:176pt 45:206pt 46:176pt 47:177pt 48-57:353pt 58-59:197pt 60-62:833pt 63:328pt 64:1000pt 65:371pt 66:383pt 67:353pt 68:387pt 69:309pt 70:291pt 71:389pt 72:395pt 73:204pt 74:319pt 75:341pt 76:280pt 77:532pt 78:409pt 79:392pt 80:340pt 81:394pt 82:382pt 83:340pt 84:290pt 85:391pt 86:336pt 87:537pt 88:325pt 89:314pt 90:284pt 91:234pt 92:177pt 93:234pt 94:1000pt 95-96:500pt 97:337pt 98:340pt 99:320pt 100:340pt 101:341pt 102:187pt 103:340pt 104:343pt 105-106:178pt 107:310pt 108:178pt 109:490pt 110:343pt 111:341pt 112-113:340pt 114:219pt 115:309pt 116:208pt 117:343pt 118:278pt 119:481pt 120:287pt 121:278pt 122:237pt 123-125:500pt 126:833pt 160:353pt 161:230pt 162-163:353pt 164:606pt 165:364pt 166:500pt 167:367pt 168:500pt 169:833pt 170:253pt 171:360pt 172:833pt 173:206pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:233pt 180:500pt 181:551pt 182:500pt 184:500pt 185:233pt 186:256pt 187:360pt 188-190:612pt 191:328pt 192-197:371pt 198:483pt 199:353pt 200-203:309pt 204-207:204pt 208:389pt 209:409pt 210-214:392pt 215:833pt 216:392pt 217-220:391pt 221:204pt 222:340pt 223:415pt 224-229:337pt 230:503pt 231:320pt 232-235:341pt 236-239:178pt 240:340pt 241:343pt 242-246:341pt 247:833pt 248:341pt 249-252:343pt 253:178pt 254:309pt 255:278pt </charWidths>
				</metrics>
			</font>	
			<font typeface="Intermec Dutch 801" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="678pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:326pt 34:345pt 35:769pt 36:500pt 37:787pt 38:785pt 39:178pt 40-41:384pt 42:500pt 43:833pt 44:250pt 45:327pt 46:250pt 47:269pt 48-57:500pt 58-59:273pt 60-62:833pt 63:486pt 64:986pt 65:650pt 66:659pt 67:697pt 68:738pt 69:658pt 70:602pt 71:756pt 72:779pt 73:388pt 74:492pt 75:760pt 76:635pt 77:944pt 78:735pt 79:782pt 80:622pt 81:782pt 82:704pt 83:581pt 84:630pt 85:733pt 86:637pt 87:910pt 88:701pt 89:634pt 90:658pt 91:431pt 92:269pt 93:431pt 94:1000pt 95-96:500pt 97:512pt 98:537pt 99:437pt 100:551pt 101:448pt 102:318pt 103:487pt 104:567pt 105:295pt 106:312pt 107:534pt 108:297pt 109:825pt 110:567pt 111:501pt 112:553pt 113:542pt 114:428pt 115:429pt 116:340pt 117:558pt 118:456pt 119:647pt 120:475pt 121:447pt 122:436pt 123-125:500pt 126:833pt 130:250pt 131:500pt 132:486pt 133:1000pt 134-136:500pt 137:1167pt 138:581pt 139:315pt 140:1030pt 142:658pt 145-146:250pt 147-148:486pt 149:590pt 150:500pt 151:1000pt 152:500pt 153:822pt 154:429pt 155:315pt 156:718pt 158:436pt 159:634pt 160:500pt 161:326pt 162-163:500pt 164:606pt 165:649pt 166-168:500pt 169:822pt 170:384pt 171:525pt 172:833pt 173:327pt 174:822pt 175:500pt 176:329pt 177:833pt 178-179:330pt 180:500pt 181:587pt 182:500pt 183:250pt 184:500pt 185:330pt 186:376pt 187:525pt 188-190:797pt 191:486pt 192-197:650pt 198:939pt 199:697pt 200-203:658pt 204-207:388pt 208:743pt 209:735pt 210-214:782pt 215:833pt 216:782pt 217-220:733pt 221:634pt 222:622pt 223:550pt 224-229:512pt 230:708pt 231:437pt 232-235:448pt 236-239:295pt 240:506pt 241:567pt 242-246:501pt 247:833pt 248:501pt 249-252:558pt 253:447pt 254:553pt 255:447pt </charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec Century Schoolbook" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink">
				<metrics pitch="variable" scalable="1" ascent="736pt" descent="196pt" lineHeight="1307pt" capHeight="700pt" defaultCharWidth="500pt" textEncoding="ISO-8859-1">
					<charWidths>32:278pt 33:296pt 34:389pt 35-36:556pt 37:833pt 38:815pt 39:204pt 40-41:333pt 42:500pt 43:606pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:606pt 63:444pt 64:737pt 65-67:722pt 68:778pt 69:722pt 70:667pt 71:778pt 72:833pt 73:407pt 74:556pt 75:778pt 76:667pt 77:944pt 78:815pt 79:778pt 80:667pt 81:778pt 82:722pt 83:630pt 84:667pt 85:815pt 86:722pt 87:981pt 88-89:704pt 90:611pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97-98:556pt 99:444pt 100:574pt 101:500pt 102:333pt 103:537pt 104:611pt 105:315pt 106:296pt 107:593pt 108:315pt 109:889pt 110:611pt 111:500pt 112:574pt 113:556pt 114:444pt 115:463pt 116:389pt 117:611pt 118:537pt 119:778pt 120-121:537pt 122:481pt 123:333pt 124:606pt 125:333pt 126:541pt 162-163:556pt 164:722pt 167:500pt 168:333pt 169:737pt 174:737pt 176:400pt 177:778pt 180:333pt 182:606pt 184:333pt 188-190:750pt 192:300pt 193:549pt 194:204pt 196-197:722pt 199:722pt 200:537pt 201:722pt 202:204pt 204:259pt 205:704pt 206:167pt 207:606pt 209:815pt 210:722pt 211:259pt 212:611pt 213:796pt 214:778pt 216:1000pt 217:815pt 218:500pt 219:278pt 220:815pt 222:667pt 223:574pt 224-229:556pt 230:704pt 231:444pt 232-235:500pt 236-239:315pt 241:611pt 242-246:500pt 248:589pt 249-252:611pt 253:500pt 254:574pt 255:426pt </charWidths>
				</metrics>
			</font>		
			<font typeface="Intermec Futura Light" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
				<metrics pitch="variable" scalable="1" ascent="747pt" descent="253pt" lineHeight="1000pt" capHeight="667pt" defaultCharWidth="500pt" textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:279pt 34:330pt 35:600pt 36:567pt 37:715pt 38:636pt 39:187pt 40-41:293pt 42-43:567pt 44:227pt 45:181pt 46:227pt 47:485pt 48-57:567pt 58:227pt 59:227pt 60:500pt 61:567pt 62:500pt 63:436pt 64:720pt 65:620pt 66:530pt 67:646pt 68:633pt 69:482pt 70:433pt 71:758pt 72:664pt 73:248pt 74:307pt 75:569pt 76:358pt 77:863pt 78:767pt 79:794pt 80:458pt 81:794pt 82:502pt 83:517pt 84:425pt 85:648pt 86:554pt 87:956pt 88:502pt 89:528pt 90:534pt 91:292pt 92:485pt 93:292pt 94-96:500pt 97-98:524pt 99:436pt 100:524pt 101:481pt 102:239pt 103:525pt 104:469pt 105-106:208pt 107:421pt 108:208pt 109:680pt 110:469pt 111:521pt 112-113:524pt 114:294pt 115:350pt 116:214pt 117:465pt 118:423pt 119:682pt 120:455pt 121-122:460pt 123:292pt 124:500pt 125:292pt 126:667pt 128:682pt 130:252pt 131:567pt 132:408pt 133:746pt 134-135:567pt 136:500pt 137:1078pt 138:517pt 139:282pt 140:1056pt 145:261pt 146:252pt 147:408pt 148:408pt 149:667pt 150:567pt 151:544pt 152:500pt 153:721pt 154:350pt 155:282pt 156:851pt 159:528pt 160:250pt 161:277pt 162-163:567pt 164:667pt 165:567pt 166:500pt 167:567pt 168:500pt 169:740pt 170:358pt 171:431pt 172:500pt 173:181pt 174:740pt 175:500pt 176-177:567pt 178-179:387pt 180:500pt 181:465pt 182:567pt 183:225pt 184:500pt 185:387pt 186:358pt 187:431pt 188-190:860pt 191:436pt 192-197:620pt 198:898pt 199:646pt 200-203:482pt 204-207:248pt 208:633pt 209:767pt 210-214:794pt 215:567pt 216:794pt 217-220:648pt 221:528pt 222:458pt 223-229:524pt 230:772pt 231:436pt 232-235:481pt 236-239:208pt 240:521pt 241:469pt 242-246:521pt 247:567pt 248:521pt 249-252:465pt 253:460pt 254:524pt 255:460pt </charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Letter Gothic" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" >
				<metrics scalable="1" ascent="731pt" descent="207pt" lineHeight="1000pt" capHeight="710pt" defaultCharWidth="500pt" textEncoding="ISO-8859-1">
					<charWidths>32-126:591pt 128:682pt 131-137:591pt 138:556pt 139-140:591pt 145-153:591pt 154:389pt 155-156:591pt 159:722pt 160:120pt 161-165:591pt 166:67pt 167-172:591pt 173:333pt 174:591pt 175:500pt 176:400pt 177-214:591pt 215:564pt 216-246:591pt 247:549pt 248-255:591pt </charWidths>
				</metrics>
			</font>
			<font typeface="Intermec Prestige" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" >
				<metrics scalable="1" ascent="656pt" descent="344pt" lineHeight="1200pt" capHeight="612pt" italicAngle="0" stdVW="40pt" xHeight="408pt" defaultCharWidth="600pt" bBox="-20pt,-837pt,620pt,288pt" textEncoding="ISO-8859-1">
					<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt</charWidths>
				</metrics>
			</font>			
			<font typeface="Intermec DingDings" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="600pt" textEncoding="ISO-8859-1" ascent="760pt" descent="240pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:600pt</charWidths>
				</metrics>
			</font>	

			<supportedEncodings>
				<encoding>UTF-16</encoding> <!-- Symbol character collection -->
			</supportedEncodings>

		</deviceInfo>
	</xdc></xdp:xdp>
