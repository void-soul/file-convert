<?xml version="1.0" encoding="UTF-8"?>
<?xfa generator="XFA2_7" APIVersion="3.1.10056.0"?>
<xdp:xdp xmlns:xdp="http://ns.adobe.com/xdp/">
	<xdc xmlns="http://www.xfa.org/schema/xdc/1.0/" name="zpl600" id="zpl600">
		<pdl>
			<renderLib name="zpldriver"/>
			<!-- ========================================== -->
			<!-- Job/doc/page/subform event sequences       -->
			<!-- ========================================== -->
			<seq id="preDoc"/>
			<seq id="postDoc"/>
			<seq id="startDoc">^XA&#xa;^PRA^LH0,3&#xa;^XZ&#xa;</seq>
			<seq id="endDoc"/>
			<seq id="preRecord"/>
			<seq id="postRecord"/>
			<seq id="startRecord"/>
			<seq id="endRecord"/>
			<seq id="prePage"/>
			<seq id="postPage"/>
			<seq id="startPage">^XA&#xa;^LL<var name="pageHeight"/>&#xa;</seq>
			<seq id="endPage">^XZ&#xa;</seq>
			<seq id="carat">^</seq>
			<seq id="tilde">~</seq>
			<seq id="copy">^PQ<var name="numCopies"/>&#xa;</seq>
			
			<!-- ========================================== -->
			<!-- Font Mappings                              -->
			<!-- written to var fontName                    -->
			<!-- ========================================== -->
			<seq id="CG Triumvirate_Normal_Normal_ISO-8859-1">0</seq>
			<seq id="ZebraA_Normal_Normal_ISO-8859-1">A</seq>
			<seq id="ZebraB_Normal_Normal_ISO-8859-1">B</seq>
			<seq id="ZebraC_Normal_Normal_ISO-8859-1">C</seq>
			<seq id="ZebraD_Normal_Normal_ISO-8859-1">D</seq>
			<seq id="ZebraE_Normal_Normal_ISO-8859-1">E</seq>
			<seq id="ZebraF_Normal_Normal_ISO-8859-1">F</seq>
			<seq id="ZebraG_Normal_Normal_ISO-8859-1">G</seq>
			<seq id="ZebraH_Normal_Normal_ISO-8859-1">H</seq>
			<seq id="ZebraGS_Normal_Normal_ISO-8859-1">GS</seq>
			<seq id="ZebraP_Normal_Normal_ISO-8859-1">P</seq>
			<seq id="ZebraQ_Normal_Normal_ISO-8859-1">Q</seq>
			<seq id="ZebraR_Normal_Normal_ISO-8859-1">R</seq>
			<seq id="ZebraS_Normal_Normal_ISO-8859-1">S</seq>
			<seq id="ZebraT_Normal_Normal_ISO-8859-1">T</seq>
			<seq id="ZebraU_Normal_Normal_ISO-8859-1">U</seq>
			<seq id="ZebraV_Normal_Normal_ISO-8859-1">V</seq>
			<seq id="Zebra0_Normal_Normal_ISO-8859-1">0</seq>
			<seq id="Kozuka Gothic Pro-VI M_Normal_Normal_Shift-JIS">2</seq>
			<seq id="Kozuka Mincho Pro-VI R_Normal_Normal_Shift-JIS">1</seq>
			<seq id="Adobe Ming Std L_Normal_Normal_BIG-5">1</seq>
			<seq id="Adobe Song Std L_Normal_Normal_GBK">1</seq>
			<seq id="Adobe Myungjo Std M_Normal_Normal_KSC-5601">1</seq>
		</pdl>
		<deviceInfo>

			<!-- ========================================== -->
			<!-- Device options                             -->
			<!-- ========================================== -->
			<option name="manufacturer">Zebra</option>
			<option name="model">Zebra 600 DPI</option>
			<option name="language">zpl</option>
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
			<option name="supportsMacros">1</option>
			<option name="adjustBaseline">0</option>
			<option name="maxOutputLineLength">80</option>
			<option name="deviceXResolution">600</option>
			<option name="deviceYResolution">600</option>
			<option name="resolution">600</option>
		    <option name="defaultRasterResolution">300</option>
           <option name="deviceRasterTextResolution">600</option>
			<option name="maxDeviceRasterResolution">600</option>
			<option name="autoCalcGraphicDimensions">1</option>
			<option name="endCap_butt">0</option>
			<option name="endCap_round">1</option>
			<option name="endCap_square">2</option>
			<option name="supportsImageScaling">0</option>
			<option name="supportedCompressionTypes">asciiHex</option>
			<option name="enumerateFonts">0</option>
			<option name="enumerateColors">0</option>
			<option name="replaceCharacters">_,_5F,\,\\,^,_5E,~,_7E,&lt;,_3C,&gt;,_3E</option>
			<option name="boilerplateTextRetrieval">formattedFragments</option>
			<option name="fieldTextRetrieval">formattedFragments</option>
			<option name="asciiHexCharPrefix">_</option>
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
			<!-- RFID options                              -->
			<!-- ========================================== -->
			<option name="rfidBlockRetries">4</option>
			<option name="rfidLabelRetries">3</option>
			<option name="rfidTagType">4</option>
			<option name="rfidTransponderPosition">160</option>
			<option name="rfidDataType">ASCII</option> <!-- ASCII | HEX-->
			<!-- ========================================== -->
			<!-- Image options                              -->
			<!-- ========================================== -->
			<option name="blackIsZero">0</option>
			<option name="outputImagesByLine">1</option>
			<option name="supportsColorImages">0</option>
			<option name="imageCompression">asciiHex</option>
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
			<option name="barcodeCode128AConversion">1</option>
			<option name="barcode128InvocationCodes">,&gt;,&gt;0,[#062],&gt;0,^,&gt;&lt;,[#094],&gt;&lt;,~,&gt;=,[#126],&gt;=,[#030],&gt;=,[#127],&gt;1,[#031],&gt;1,[F3],&gt;2,[F2],&gt;3,[SH],&gt;4,[CC],&gt;5,[CB],&gt;6,[CA],&gt;7,[F1],&gt;8,[SA],&gt;9,[SB],&gt;;,[SC],&gt;:</option>
			<!-- ========================================== -->
			<!-- Font options                              -->
			<!-- ========================================== -->
			<option name="supportsFontEmbedding">1</option>
			<option name="supportsFontLinking">0</option>
			<option name="supportsFontSubsetting">1</option>
            		<option name="supportsFontRasterizing">1</option>

			<option name="enumerateFonts">0</option>
			<option name="startingFontNumber">9000</option>
			<option name="startingFontLetter">I</option>
			<option name="softFontCompression">asciiHex</option>
			<option name="softFontDevice">R:</option>
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
			<option name="unicodeTextCompression">asciiHex</option>
			<option name="CJKTextCompression">asciiHex</option>
			<option name="asciiHexCharPrefix">_</option>

			<!-- ========================================== -->
			<!-- Raster Substitution Font				     -->
			<!-- ========================================== -->
			
			<rasterSubstitutionFont typeface="CG Triumvirate_Normal_Normal" unicodeRange="U+20-U+FF"/>
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
			<deviceUnits name="pageDimensions" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineDimensions" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="linePlacement" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="lineThickness" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicPlacement" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="graphicDimensions" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="textPlacement" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="fontSize" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="arcPlacement" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="arcDimensions" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="rectanglePlacement" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="rectangleDimensions" hSize="0.042mm" vSize="0.042mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="color" hSize="0pt" vSize="0pt" fracDigits="0" fraction="round"/>
			<!-- ========================================== -->
			<!-- Barcodes                                   -->
			<!-- ========================================== -->
			<barcodes>
				<!-- Newly supported -->
				<barcodeDefinition type="micropdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" />
				<barcodeDefinition type="dataMatrix" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" />
				<barcodeDefinition type="upsMaxicode" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" dataLength="0-90"/>
				<barcodeDefinition type="planetCode" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="none" textLocation="none,above,below" validDataChars="0123456789-"/>
				<barcodeDefinition type="rss14" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Stacked" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14StackedOmni" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Truncated" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssLimited" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssExpanded" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" dataLength="1-74"/>
				<barcodeDefinition type="aztec" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm"/>
				<barcodeDefinition type="rfid" support="hardware" wideNarrowRatio="fixed"/>
				
				<!-- Previously supported -->
				<barcodeDefinition type="code11" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Interleaved" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Industrial" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Standard" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="codabar" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="auto,none" textLocation="none,above,below" startChar="ABCDabcd*NTEnte" endChar="ABCDabcd*NTEnte" validDataChars="0123456789"/>
				<barcodeDefinition type="msi" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="none,1mod10,2mod10,1mod10_1mod11" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="1-14"/>
				<barcodeDefinition type="plessey" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEF"/>
				<barcodeDefinition type="postUSStandard" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="9"/>
				<barcodeDefinition type="postUS5Zip" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="postUSDPBC" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="11"/>
				<barcodeDefinition type="ean8" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" dataLength="7" validDataChars="0123456789"/>
				<barcodeDefinition type="upcE" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="10"/>
				<barcodeDefinition type="ean13" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="12"/>
				<barcodeDefinition type="upcean2" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="2"/>
				<barcodeDefinition type="upcean5" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="upcA" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="11"/>
				<barcodeDefinition type="code3Of9" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
				<barcodeDefinition type="code93" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" printCheckDigit="1" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&amp;',()"/>
				<barcodeDefinition type="code128" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128A" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128B" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128C" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="logmars" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
				<barcodeDefinition type="code49" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" textLocation="none,above,below" startChar="A12345" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&lt;&#x3e;:;?="/>
				<barcodeDefinition type="pdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.191mm-0.423mm" moduleHeight="0.042mm-4166mm" errorCorrectionLevel="0-8" dataColumnCount="1-30" dataRowCount="1-90" truncate="1"/>
				<barcodeDefinition type="codeQR" support="hardware"/>
				<!-- not supported by this device but are software supported -->
				<barcodeDefinition type="postUSImb"		support="software" checksum="auto" textLocation="none,below" validDataChars="0123456789" dataLength="20-31"/>
				<barcodeDefinition type="code2Of5Matrix" support="software" wideNarrowRatio="2.2-3.0" moduleWidth="0.191mm-0.423mm" moduleHeight="5mm-1250mm" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSStandard" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postAUSCust2" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSCust3" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSReplyPaid" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postUKRM4SCC" support="software" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
				<barcodeDefinition type="code128SSCC" support="software" textLocation="none,above" dataLength="19"/>
			</barcodes>
			<!-- ========================================== -->
			<!-- Fonts                                      -->
			<!-- ========================================== -->
			<font typeface="CG Triumvirate" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="867pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-33:319pt 34-36:532pt 37:958pt 38:638pt 39:355pt 40-41:319pt 42:497pt 43:958pt 44:319pt 45:958pt 46-47:319pt 48-57:497pt 58-59:319pt 60:1064pt 61:958pt 62:1064pt 63:497pt 64:958pt 65-66:603pt 67:567pt 68:638pt 69-70:532pt 71-72:638pt 73:284pt 74:461pt 75:603pt 76:497pt 77:816pt 78:638pt 79-81:603pt 82:638pt 83:567pt 84:532pt 85:638pt 86:567pt 87:887pt 88-89:603pt 90:532pt 91:319pt 92:497pt 93:319pt 94-95:532pt 96:319pt 97:497pt 98:532pt 99:461pt 100:532pt 101:497pt 102:284pt 103-104:532pt 105-106:284pt 107:461pt 108:284pt 109:816pt 110:532pt 111:497pt 112-113:532pt 114:355pt 115:461pt 116:284pt 117:532pt 118:461pt 119:709pt 120-121:461pt 122:426pt 123-125:497pt 126:958pt 127:497pt 128-255:567pt </charWidths>
				</metrics>
			</font>
			<font typeface="ZebraA" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="555pt" textEncoding="ISO-8859-1" ascent="777pt" descent="223pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:555pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraB" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="636pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:636pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraC" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="555pt" textEncoding="ISO-8859-1" ascent="777pt" descent="223pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:555pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraD" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="555pt" textEncoding="ISO-8859-1" ascent="777pt" descent="223pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:555pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraE" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="535pt" textEncoding="ISO-8859-1" ascent="821pt" descent="179pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:535pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraF" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="500pt" textEncoding="ISO-8859-1" ascent="807pt" descent="193pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:500pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraG" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="666pt" textEncoding="ISO-8859-1" ascent="250pt" descent="750pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:666pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraH" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics defaultCharWidth="619pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:619pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraGS" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="1000pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32:1000pt 65-69:1000pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraP" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="900pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:900pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraQ" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="857pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:857pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraR" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="885pt" textEncoding="ISO-8859-1" ascent="742pt" descent="258pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:885pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraS" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="875pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:875pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraT" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="875pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:875pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraU" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="898pt" textEncoding="ISO-8859-1" ascent="745pt" descent="255pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:898pt</charWidths>
				</metrics>
			</font>
			<font typeface="ZebraV" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="887pt" textEncoding="ISO-8859-1" ascent="750pt" descent="250pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:887pt</charWidths>
				</metrics>
			</font>
			<font typeface="Zebra0" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="800pt" textEncoding="ISO-8859-1" ascent="733pt" descent="267pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:800pt</charWidths>
				</metrics>
			</font>
			<font typeface="Kozuka Gothic Pro-VI M" size="1000pt" posture="normal" weight="normal" textEncoding="Shift-JIS" select="implicitLink" type="CID" flags="0">
				<metrics pitch="variable" scalable="1" ascent="802pt" descent="223pt" lineHeight="2000pt" capHeight="763pt" italicAngle="0" stdVW="116pt" xHeight="551pt" defaultCharWidth="1000pt" bBox="-149pt,-1008pt,1254pt,374pt" textEncoding="Shift-JIS">
				</metrics>
			</font>
			<font typeface="Kozuka Mincho Pro-VI R" size="1000pt" posture="normal" weight="normal" textEncoding="Shift-JIS" select="implicitLink" type="CID" flags="2">
				<metrics pitch="variable" scalable="1" ascent="772pt" descent="257pt" lineHeight="2000pt" capHeight="742pt" italicAngle="0" stdVW="80pt" xHeight="501pt" defaultCharWidth="1000pt" bBox="-437pt,-1317pt,1144pt,340pt" textEncoding="Shift-JIS">
				</metrics>
			</font>
			<font typeface="Adobe Ming Std L" size="1000pt" posture="normal" weight="normal" textEncoding="BIG-5" select="implicitLink" type="CID" flags="2">
				<metrics pitch="variable" scalable="1" ascent="738pt" descent="107pt" lineHeight="2000pt" capHeight="731pt" italicAngle="0" stdVW="52pt" xHeight="484pt" defaultCharWidth="1000pt" bBox="-38pt,-918pt,1002pt,121pt" textEncoding="BIG-5">
				</metrics>
			</font>
			<font typeface="Adobe Song Std L" size="1000pt" posture="normal" weight="normal" textEncoding="GBK" select="implicitLink" type="CID" flags="2">
				<metrics pitch="variable" scalable="1" ascent="690pt" descent="242pt" lineHeight="2000pt" capHeight="626pt" italicAngle="0" stdVW="40pt" xHeight="447pt" defaultCharWidth="1000pt" bBox="-134pt,-905pt,1001pt,254pt" textEncoding="GBK">
				</metrics>
			</font>
			<font typeface="Adobe Myungjo Std M" size="1000pt" posture="normal" weight="normal" textEncoding="KSC-5601" select="implicitLink" type="CID" flags="2">
				<metrics pitch="variable" scalable="1" ascent="727pt" descent="141pt" lineHeight="2000pt" capHeight="719pt" italicAngle="0" stdVW="60pt" xHeight="478pt" defaultCharWidth="1000pt" bBox="-28pt,-880pt,1001pt,148pt" textEncoding="KSC-5601">
				</metrics>
			</font>
      <supportedEncodings>
      	<encoding>UTF-16</encoding> <!-- Symbol character collection -->
      </supportedEncodings>
		</deviceInfo>
	</xdc></xdp:xdp>
