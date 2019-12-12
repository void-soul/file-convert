<?xml version="1.0" encoding="UTF-8"?>
<?xfa generator="XFA2_0" APIVersion="3.1.10056.0"?>

<xdp:xdp xmlns:xdp="http://ns.adobe.com/xdp/">
	<xdc name="dpl300" id="dpl300" xmlns="http://www.xfa.org/schema/xdc/1.0/">
		<pdl>
			<renderLib name="dpldriver"/>
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
			<seq id="startPage">D11&#xa;PC&#xa;</seq>
			<seq id="endPage">E&#xa;</seq>
			<seq id="copy"/>
			
			
			<!-- ========================================== -->
			<!-- Font Mappings                              -->
			<!-- written to var fontName                    -->
			<!-- ========================================== -->
			<seq id="Datamax CG Triumvirate_Normal_Normal_ISO-8859-1">1,9,1,1,0</seq>			
			<seq id="Datamax0 2.4 point_Normal_Normal_ISO-8859-1">0,0,1,1,0</seq>
			<seq id="Datamax1 4.6 point_Normal_Normal_ISO-8859-1">0,1,1,1,0</seq>
			<seq id="Datamax2 6.5 point_Normal_Normal_ISO-8859-1">0,2,1,1,0</seq>
			<seq id="Datamax3 9.6 point_Normal_Normal_ISO-8859-1">0,3,1,1,0</seq>
			<seq id="Datamax4 12.7 point_Normal_Normal_ISO-8859-1">0,4,1,1,0</seq>
			<seq id="Datamax5 18.5 point_Normal_Normal_ISO-8859-1">0,5,1,1,0</seq>
			<seq id="Datamax6 22.8 point_Normal_Normal_ISO-8859-1">0,6,1,1,0</seq>
			<seq id="Datamax7 11.3 point_Normal_Normal_ISO-8859-1">0,7,1,1,0</seq>
			<seq id="Datamax8 9.8 point_Normal_Normal_ISO-8859-1">0,8,1,1,0</seq>
		</pdl>
		<deviceInfo>
			<!-- ========================================== -->
			<!-- Device options                             -->
			<!-- ========================================== -->
			<option name="manufacturer">Datamax</option>
			<option name="model">Datamax 300 DPI</option>
			<option name="language">dpl</option>
			<option name="languageLevel">3</option>
			<option name="supportsAbsolutePosition">1</option>
			<option name="supportsDrawText">1</option>
			<option name="supportsDrawLine">1</option>
			<option name="supportsDrawArc">1</option>
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
			<option name="deviceXResolution">300</option>
			<option name="deviceYResolution">300</option>
			<option name="resolution">300</option>
			<option name="defaultRasterResolution">300</option>
           <option name="deviceRasterTextResolution">300</option>
           <option name="maxDeviceRasterResolution">300</option>
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
			<!-- Datamax printer specific -->
			<option name="logoModule">C</option>
			<option name="deleteDownloadedImages">0</option>			
			<option name="symbolSet">SW1</option>
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
			<option name="barcode128InvocationCodes">,[F3],&amp;A,[F2],&amp;B,[SH],&amp;C,[CC],&amp;D,[CB],&amp;E,[CA],&amp;F,[F1],&amp;G,[SA],A,[SB],B,[SC],C</option>
			<!-- ========================================== -->
			<!-- Font options                              -->
			<!-- ========================================== -->
			<option name="supportsFontEmbedding">0</option>
			<option name="supportsFontLinking">0</option>
			<option name="supportsFontSubsetting">0</option>
           <option name="supportsFontRasterizing">1</option>
    
            
			<option name="enumerateFonts">0</option>
			<option name="softFontCompression">none</option>
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
			<option name="unicodeTextCompression">none</option>
			<option name="CJKTextCompression">none</option>
			
			<!-- ========================================== -->
			<!-- Raster Substitution Font				     -->
			<!-- ========================================== -->
			
			<rasterSubstitutionFont typeface="Datamax CG Triumvirate_Normal_Normal" unicodeRange="U+20-U+FF"/>
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
			<deviceUnits name="pageDimensions" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineDimensions" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="linePlacement" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineThickness" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicPlacement" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicDimensions" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="textPlacement" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="fontSize" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="arcPlacement" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="arcDimensions" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="rectanglePlacement" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="rectangleDimensions" hSize="0.083mm" vSize="0.083mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="color" hSize="0pt" vSize="0pt" fracDigits="0" fraction="round"/>
			<!-- ========================================== -->
			<!-- Barcodes                                   -->
			<!-- ========================================== -->
			<barcodes>
				<barcodeDefinition type="micropdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" />
				<barcodeDefinition type="dataMatrix" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" />
				<barcodeDefinition type="upsMaxicode" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" dataLength="0-90"/>
				<barcodeDefinition type="rss14" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Stacked" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14StackedOmni" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Truncated" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssLimited" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssExpanded" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" dataLength="1-74"/>
				<barcodeDefinition type="aztec" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm"/>
				<barcodeDefinition type="code11" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" checksum="auto,none" textLocation="none,below" validDataChars="0123456789-"/>
				<barcodeDefinition type="code2Of5Interleaved" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" checksum="auto,none" textLocation="none,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Industrial" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Standard" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789"/>
				<barcodeDefinition type="codabar" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" checksum="auto,none" textLocation="none,below" startChar="ABCDabcd*NTEnte" endChar="ABCDabcd*NTEnte" validDataChars="0123456789"/>
				<barcodeDefinition type="plessey" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" checksum="auto,none" textLocation="none,below" validDataChars="0123456789ABCDEF"/>
				<barcodeDefinition type="postUSStandard" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789 -" dataLength="9"/>
				<barcodeDefinition type="postUS5Zip" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="postUSDPBC" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789 -" dataLength="11"/>
				<barcodeDefinition type="ean8" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" dataLength="7" validDataChars="0123456789"/>
				<barcodeDefinition type="upcE" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" printCheckDigit="1" validDataChars="0123456789" dataLength="10"/>
				<barcodeDefinition type="ean13" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789" dataLength="12"/>
				<barcodeDefinition type="upcean2" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789" dataLength="2"/>
				<barcodeDefinition type="upcean5" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="upcA" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" printCheckDigit="1" validDataChars="0123456789" dataLength="11"/>
				<barcodeDefinition type="code3Of9" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" checksum="auto,none" textLocation="none,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
				<barcodeDefinition type="code93" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" printCheckDigit="1" textLocation="none,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&amp;',()"/>
				<barcodeDefinition type="code128" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below"/>
				<barcodeDefinition type="code128A" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below"/>
				<barcodeDefinition type="code128B" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below"/>
				<barcodeDefinition type="code128C" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" textLocation="none,below" validDataChars="0123456789"/>
				<barcodeDefinition type="pdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.847mm" moduleHeight="0.083mm-1847mm" errorCorrectionLevel="012345678" dataColumnCount="1-30" dataRowCount="1-90" truncate="1"/>
				<barcodeDefinition type="codeQR" support="hardware" errorCorrectionLevel="HQML" textEncoding="Shift-JIS"/>
				<barcodeDefinition type="postAUSStandard" support="hardware" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postAUSCust2" support="hardware" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSCust3" support="hardware" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSReplyPaid" support="hardware" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postUSImb"		support="hardware" checksum="auto" textLocation="none,below" validDataChars="0123456789" dataLength="20-31"/>				
				<!-- not supported by this device but are software supported -->
				<barcodeDefinition type="code2Of5Matrix" support="software" wideNarrowRatio="2.2-3.0" moduleWidth="0.191mm-1.251mm" moduleHeight="5mm-1250mm" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/>
				<barcodeDefinition type="postUKRM4SCC" support="software" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>				
				<barcodeDefinition type="code128SSCC" support="software" textLocation="none,above" dataLength="19"/>
			</barcodes>
			<!-- ========================================== -->
			<!-- Fonts                                      -->
			<!-- ========================================== -->
			<font typeface="Datamax CG Triumvirate" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="867pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-33:319pt 34:390pt 35:567pt 36:560pt 37:993pt 38:638pt 39:355pt 40-41:319pt 42:567pt 43:1064pt 44:497pt 45-46:319pt 47:497pt 48-57:567pt 58-59:319pt 60:1064pt 61:958pt 62:1064pt 63:497pt 64:958pt 65-67:709pt 68:780pt 69:709pt 70:567pt 71:780pt 72:709pt 73:319pt 74:567pt 75:709pt 76:567pt 77:780pt 78:709pt 79:851pt 80:638pt 81-82:709pt 83:638pt 84-85:638pt 86:709pt 87:851pt  88-89:709pt 90:567pt 91-93:497pt 94:355pt 95:532pt 96:355pt 97:567pt 98:497pt 99-100:567pt 101:497pt 102:319pt 103:567pt 104:497pt 105:213pt 106:284pt 107:532pt 108:319pt 109:851pt 110:497pt 111:567pt 112:497pt 113:638pt 114:355pt 115:497pt 116:355pt 117:603pt 118:497pt 119:780pt 120:567pt 121-122:497pt 123-125:709pt 126:426pt 127:497pt 128-255:567pt </charWidths>
				</metrics>
			</font>
			<font typeface="Datamax0 2.4 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="852pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:852pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax1 4.6 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="707pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:707pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax2 6.5 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="663pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:663pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax3 9.6 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="595pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:595pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax4 12.7 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="583pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:583pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax5 18.5 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="405pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:405pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax6 22.8 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="570pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:570pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax7 11.3 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="627pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:627pt</charWidths>
				</metrics>
			</font>
			<font typeface="Datamax8 9.8 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="716pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:716pt</charWidths>
				</metrics>
			</font>
      <supportedEncodings>
      	<encoding>UTF-16</encoding> <!-- Symbol character collection -->
      </supportedEncodings>
		</deviceInfo>
	</xdc></xdp:xdp>
