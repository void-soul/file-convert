<?xml version="1.0" encoding="UTF-8"?>
<?xfa generator="XFA2_0" APIVersion="3.1.10056.0"?>

<xdp:xdp xmlns:xdp="http://ns.adobe.com/xdp/">
	<xdc name="tpcl203" id="tpcl203" xmlns="http://www.xfa.org/schema/xdc/1.0/">
		<pdl>
			<renderLib name="tpcldriver"/>
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
			<seq id="Toshiba Times Roman 12 point_Normal_Normal_ISO-8859-1">0,A,1,1</seq>
			<seq id="Toshiba Times Roman 15 point_Normal_Normal_ISO-8859-1">0,B,1,1</seq>
			<seq id="Toshiba Times Roman 15 point_Bold_Normal_ISO-8859-1">0,C,1,1</seq>
			<seq id="Toshiba Times Roman 18 point_Bold_Normal_ISO-8859-1">0,D,1,1</seq>
			<seq id="Toshiba Times Roman 21 point_Bold_Normal_ISO-8859-1">0,E,1,1</seq>
			<seq id="Toshiba Times Roman 18 point_Normal_Italic_ISO-8859-1">0,F,1,1</seq>
			<seq id="Toshiba Helvetica 9 point_Normal_Normal_ISO-8859-1">0,G,1,1</seq>
			<seq id="Toshiba Helvetica 15 point_Normal_Normal_ISO-8859-1">0,H,1,1</seq>
			<seq id="Toshiba Helvetica 18 point_Normal_Normal_ISO-8859-1">0,I,1,1</seq>
			<seq id="Toshiba Helvetica 18 point_Bold_Normal_ISO-8859-1">0,J,1,1</seq>
			<seq id="Toshiba Helvetica 21 point_Bold_Normal_ISO-8859-1">0,K,1,1</seq>
			<seq id="Toshiba Helvetica 18 point_Normal_Italic_ISO-8859-1">0,L,1,1</seq>
			<seq id="Toshiba Presentation 27 point_Bold_Normal_ISO-8859-1">0,M,1,1</seq>
			<seq id="Toshiba Letter Gothic 14.3 point_Normal_Normal_ISO-8859-1">0,N,1,1</seq>
			<seq id="Toshiba Prestige Elite 10.5 point_Normal_Normal_ISO-8859-1">0,O,1,1</seq>
			<seq id="Toshiba Prestige Elite 15 point_Bold_Normal_ISO-8859-1">0,P,1,1</seq>
			<seq id="Toshiba Courier 15 point_Normal_Normal_ISO-8859-1">0,Q,1,1</seq>
			<seq id="Toshiba Courier 18 point_Bold_Normal_ISO-8859-1">0,R,1,1</seq>
			<seq id="Toshiba OCR-A 12 point_Normal_Normal_ISO-8859-1">0,S,1,1</seq>
			<seq id="Toshiba OCR-B 12 point_Normal_Normal_ISO-8859-1">0,T,1,1</seq>
			<seq id="Toshiba Gothic725 Black 4 point_Normal_Normal_ISO-8859-1">0,q,1,1</seq>			
			<seq id="Toshiba TEC FONT1 Helv. Bold_Normal_Normal_ISO-8859-1">1,A,0,0</seq>
			<seq id="Toshiba DUTCH801_Bold_Normal_ISO-8859-1">1,H,0,0</seq>
			<seq id="Toshiba BRUSH738_Normal_Normal_ISO-8859-1">1,I,0,0</seq>			
			<seq id="Toshiba GOTHIC725 Black Outline_Normal_Normal_ISO-8859-1">1,J,0,0</seq>
		</pdl>
		<deviceInfo>
			<!-- ========================================== -->
			<!-- Device options                             -->
			<!-- ========================================== -->
			<option name="manufacturer">Toshiba</option>
			<option name="model">Toshiba 203 DPI</option>
			<option name="language">tpcl</option>
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
			<!-- Toshiba printer specific -->
			<option name="cutInterval">0</option>
			<option name="sensorType">2</option>
			<option name="issueMode">C</option>
			<option name="printSpeed">3</option>
			<option name="ribbonUse">2</option>	
			<option name="graphicMode">5</option>			
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
			<option name="barcode128InvocationCodes">,&gt;,&gt;0,[#062],&gt;0,[#127],&gt;1,[#031],&gt;1,[F3],&gt;2,[F2],&gt;3,[SH],&gt;4,[CC],&gt;5,[CB],&gt;6,[CA],&gt;7,[F1],&gt;8,[SA],&gt;7,[SB],&gt;6,[SC],&gt;5</option>
			<!-- ========================================== -->
			<!-- Font options                              -->
			<!-- ========================================== -->
			<option name="supportsFontEmbedding">1</option>
			<option name="supportsFontLinking">0</option>
			<option name="supportsFontSubsetting">1</option>
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
			
			<rasterSubstitutionFont typeface="Toshiba DUTCH801_Bold_Normal" unicodeRange="U+20-U+FF"/>
			<!-- ========================================== -->
			<!-- Medium                                     -->
			<!-- ========================================== -->
			<medium stock="4x6" short="288pt" long="432pt" imagingBBox="0pt,1pt,288pt,431pt">D1550,1016,1524</medium>
			<medium stock="default" short="288pt" long="432pt" imagingBBox="0pt,1pt,288pt,431pt">D1550,1016,1524</medium>
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
			<deviceUnits name="arcPlacement" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
			<deviceUnits name="arcDimensions" hSize="0.125mm" vSize="0.125mm" fracDigits="0" fraction="round"/>
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
				<barcodeDefinition type="rss14" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Stacked" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14StackedOmni" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rss14Truncated" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssLimited" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
				<barcodeDefinition type="rssExpanded" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" dataLength="1-74"/>
				<barcodeDefinition type="code2Of5Interleaved" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="code2Of5Industrial" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="codabar" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" startChar="ABCDabcd*NTEnte" endChar="ABCDabcd*NTEnte" validDataChars="0123456789"/>
				<barcodeDefinition type="msi" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="none,1mod10,2mod10,1mod10_1mod11" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="1-14"/>
				<barcodeDefinition type="postUSStandard" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="9"/>
				<barcodeDefinition type="postUS5Zip" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="postUSDPBC" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789 -" dataLength="11"/>
				<barcodeDefinition type="ean8" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" dataLength="7" validDataChars="0123456789"/>
				<barcodeDefinition type="upcE" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="10"/>
				<barcodeDefinition type="ean13" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="12"/>
				<barcodeDefinition type="upcean2" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="2"/>
				<barcodeDefinition type="upcean5" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
				<barcodeDefinition type="upcA" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="11"/>
				<barcodeDefinition type="code3Of9" support="hardware" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
				<barcodeDefinition type="code93" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" printCheckDigit="1" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&amp;',()"/>
				<barcodeDefinition type="code128" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128A" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128B" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below"/>
				<barcodeDefinition type="code128C" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>
				<barcodeDefinition type="pdf417" support="hardware" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" errorCorrectionLevel="012345678" dataColumnCount="1-30" dataRowCount="1-90" truncate="1"/>
				<barcodeDefinition type="codeQR" support="hardware" errorCorrectionLevel="HQML" textEncoding="Shift-JIS"/>
				<barcodeDefinition type="postUKRM4SCC" support="hardware" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
				<!-- not supported by this device but are software supported -->
				<barcodeDefinition type="code2Of5Matrix" support="software" wideNarrowRatio="2.2-3.0" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>								
				<barcodeDefinition type="postUSImb"		support="software" checksum="auto" textLocation="none,below" validDataChars="0123456789" dataLength="20-31"/>				
				<barcodeDefinition type="code2Of5Standard" support="software" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>				
				<barcodeDefinition type="postAUSStandard" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="postAUSCust2" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSCust3" support="software" textLocation="none,above" validDataChars="0123456789"/>
				<barcodeDefinition type="postAUSReplyPaid" support="software" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
				<barcodeDefinition type="code128SSCC" support="software" textLocation="none,above" dataLength="19"/>
			</barcodes>
			<!-- ========================================== -->
			<!-- Fonts                                      -->
			<!-- ========================================== -->
			<font typeface="Toshiba DUTCH801" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="678pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:326pt 34:345pt 35:769pt 36:500pt 37:787pt 38:785pt 39:178pt 40-41:384pt 42:500pt 43:833pt 44:250pt 45:327pt 46:250pt 47:269pt 48-57:500pt 58-59:273pt 60-62:833pt 63:486pt 64:986pt 65:650pt 66:659pt 67:697pt 68:738pt 69:658pt 70:602pt 71:756pt 72:779pt 73:388pt 74:492pt 75:760pt 76:635pt 77:944pt 78:735pt 79:782pt 80:622pt 81:782pt 82:704pt 83:581pt 84:630pt 85:733pt 86:637pt 87:910pt 88:701pt 89:634pt 90:658pt 91:431pt 92:269pt 93:431pt 94:1000pt 95-96:500pt 97:512pt 98:537pt 99:437pt 100:551pt 101:448pt 102:318pt 103:487pt 104:567pt 105:295pt 106:312pt 107:534pt 108:297pt 109:825pt 110:567pt 111:501pt 112:553pt 113:542pt 114:428pt 115:429pt 116:340pt 117:558pt 118:456pt 119:647pt 120:475pt 121:447pt 122:436pt 123-125:500pt 126:833pt 130:250pt 131:500pt 132:486pt 133:1000pt 134-136:500pt 137:1167pt 138:581pt 139:315pt 140:1030pt 142:658pt 145-146:250pt 147-148:486pt 149:590pt 150:500pt 151:1000pt 152:500pt 153:822pt 154:429pt 155:315pt 156:718pt 158:436pt 159:634pt 160:500pt 161:326pt 162-163:500pt 164:606pt 165:649pt 166-168:500pt 169:822pt 170:384pt 171:525pt 172:833pt 173:327pt 174:822pt 175:500pt 176:329pt 177:833pt 178-179:330pt 180:500pt 181:587pt 182:500pt 183:250pt 184:500pt 185:330pt 186:376pt 187:525pt 188-190:797pt 191:486pt 192-197:650pt 198:939pt 199:697pt 200-203:658pt 204-207:388pt 208:743pt 209:735pt 210-214:782pt 215:833pt 216:782pt 217-220:733pt 221:634pt 222:622pt 223:550pt 224-229:512pt 230:708pt 231:437pt 232-235:448pt 236-239:295pt 240:506pt 241:567pt 242-246:501pt 247:833pt 248:501pt 249-252:558pt 253:447pt 254:553pt 255:447pt </charWidths>
				</metrics>
			</font>			
			<font typeface="Toshiba TEC FONT1 Helv. Bold" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="1029pt"  textEncoding="ISO-8859-1">
					<charWidths>32-255:1029pt</charWidths>
				</metrics>
			</font>				
			<font typeface="Toshiba Times Roman 12 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="693pt" descent="216pt" lineHeight="1150pt" capHeight="662pt" italicAngle="0" stdVW="84pt" xHeight="450pt" defaultCharWidth="327pt" bBox="-342pt,-897pt,1000pt,250pt" textEncoding="ISO-8859-1">
					<charWidths>32:401pt 33:283pt 34:354pt 35:708pt 36:543pt 37-38:826pt 39:283pt 40:354pt 41:378pt 42:519pt 43:543pt 44:330pt 45:543pt 46:283pt 47:496pt 48-57:543pt 58:236pt 59:283pt 60:567pt 61:590pt 62:567pt 63:519pt 64:921pt 65:826pt 66:685pt 67:732pt 68:803pt 69:708pt 70:661pt 71:850pt 72:826pt 73:378pt 74:472pt 75:897pt 76:708pt 77:991pt 78:826pt 79:779pt 80:614pt 81:779pt 82:803pt 83:519pt 84:708pt 85:873pt 86:803pt 87:897pt 88:850pt 89:779pt 90:732pt 91:307pt 92:496pt 93:330pt 94:567pt 95:826pt 96:283pt 97:496pt 98:590pt 99:496pt 100:590pt 101:496pt 102:449pt 103:543pt 104:590pt 105:330pt 106:401pt 107:590pt 108:307pt 109:873pt 110:590pt 111:543pt 112:590pt 113:567pt 114:425pt 115:401pt 116:354pt 117:590pt 118:567pt 119:803pt 120-121:567pt 122:472pt 123:378pt 124:189pt 125:401pt 126:614pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:556pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Times Roman 15 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="693pt" descent="216pt" lineHeight="1150pt" capHeight="662pt" italicAngle="0" stdVW="84pt" xHeight="450pt" defaultCharWidth="327pt" bBox="-342pt,-897pt,1000pt,250pt" textEncoding="ISO-8859-1">
					<charWidths>32:401pt 33:283pt 34:354pt 35:708pt 36:543pt 37-38:826pt 39:283pt 40:354pt 41:378pt 42:519pt 43:543pt 44:330pt 45:543pt 46:283pt 47:496pt 48-57:543pt 58:236pt 59:283pt 60:567pt 61:590pt 62:567pt 63:519pt 64:921pt 65:826pt 66:685pt 67:732pt 68:803pt 69:708pt 70:661pt 71:850pt 72:826pt 73:378pt 74:472pt 75:897pt 76:708pt 77:991pt 78:826pt 79:779pt 80:614pt 81:779pt 82:803pt 83:519pt 84:708pt 85:873pt 86:803pt 87:897pt 88:850pt 89:779pt 90:732pt 91:307pt 92:496pt 93:330pt 94:567pt 95:826pt 96:283pt 97:496pt 98:590pt 99:496pt 100:590pt 101:496pt 102:449pt 103:543pt 104:590pt 105:330pt 106:401pt 107:590pt 108:307pt 109:873pt 110:590pt 111:543pt 112:590pt 113:567pt 114:425pt 115:401pt 116:354pt 117:590pt 118:567pt 119:803pt 120-121:567pt 122:472pt 123:378pt 124:189pt 125:401pt 126:614pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:556pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Times Roman 15 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics pitch="variable" scalable="1" ascent="677pt" descent="216pt" lineHeight="1150pt" capHeight="676pt" italicAngle="0" stdVW="140pt" xHeight="461pt" defaultCharWidth="327pt" bBox="-348pt,-923pt,1000pt,279pt" textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:333pt 34:555pt 35-36:500pt 37:1000pt 38:833pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:930pt 65:722pt 66:667pt 67-68:722pt 69:667pt 70:611pt 71-72:778pt 73:389pt 74:500pt 75:778pt 76:667pt 77:944pt 78:722pt 79:778pt 80:611pt 81:778pt 82:722pt 83:556pt 84:667pt 85-86:722pt 87:1000pt 88-89:722pt 90:667pt 91:333pt 92:278pt 93:333pt 94:581pt 95:500pt 96:333pt 97:500pt 98:556pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105:278pt 106:333pt 107:556pt 108:278pt 109:833pt 110:556pt 111:500pt 112-113:556pt 114:444pt 115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:394pt 124:220pt 125:394pt 126:520pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:556pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Times Roman 18 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="677pt" descent="216pt" lineHeight="1150pt" capHeight="676pt" italicAngle="0" stdVW="140pt" xHeight="461pt" defaultCharWidth="327pt" bBox="-348pt,-923pt,1000pt,279pt" textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:333pt 34:555pt 35-36:500pt 37:1000pt 38:833pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:930pt 65:722pt 66:667pt 67-68:722pt 69:667pt 70:611pt 71-72:778pt 73:389pt 74:500pt 75:778pt 76:667pt 77:944pt 78:722pt 79:778pt 80:611pt 81:778pt 82:722pt 83:556pt 84:667pt 85-86:722pt 87:1000pt 88-89:722pt 90:667pt 91:333pt 92:278pt 93:333pt 94:581pt 95:500pt 96:333pt 97:500pt 98:556pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105:278pt 106:333pt 107:556pt 108:278pt 109:833pt 110:556pt 111:500pt 112-113:556pt 114:444pt 115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:394pt 124:220pt 125:394pt 126:520pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:556pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Times Roman 21 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="677pt" descent="216pt" lineHeight="1150pt" capHeight="676pt" italicAngle="0" stdVW="140pt" xHeight="461pt" defaultCharWidth="327pt" bBox="-348pt,-923pt,1000pt,279pt" textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:333pt 34:555pt 35-36:500pt 37:1000pt 38:833pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:930pt 65:722pt 66:667pt 67-68:722pt 69:667pt 70:611pt 71-72:778pt 73:389pt 74:500pt 75:778pt 76:667pt 77:944pt 78:722pt 79:778pt 80:611pt 81:778pt 82:722pt 83:556pt 84:667pt 85-86:722pt 87:1000pt 88-89:722pt 90:667pt 91:333pt 92:278pt 93:333pt 94:581pt 95:500pt 96:333pt 97:500pt 98:556pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105:278pt 106:333pt 107:556pt 108:278pt 109:833pt 110:556pt 111:500pt 112-113:556pt 114:444pt 115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:394pt 124:220pt 125:394pt 126:520pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:556pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Times Roman 18 point" size="1000pt" weight="normal" posture="italic" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="693pt" descent="216pt" lineHeight="1150pt" capHeight="653pt" italicAngle="-16" stdVW="80pt" xHeight="441pt" defaultCharWidth="327pt" bBox="-340pt,-884pt,1008pt,250pt" textEncoding="ISO-8859-1">
					<charWidths>32:250pt 33:333pt 34:420pt 35-36:500pt 37:833pt 38:778pt 39:214pt 40-41:333pt 42:500pt 43:675pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:675pt 63:500pt 64:920pt 65-66:611pt 67:667pt 68:722pt 69-70:611pt 71-72:722pt 73:333pt 74:444pt 75:667pt 76:556pt 77:833pt 78:667pt 79:722pt 80:611pt 81:722pt 82:611pt 83:500pt 84:556pt 85:722pt 86:611pt 87:833pt 88:611pt 89-90:556pt 91:389pt 92:278pt 93:389pt 94:422pt 95:500pt 96:333pt 97-98:500pt 99:444pt 100:500pt 101:444pt 102:278pt 103-104:500pt 105-106:278pt 107:444pt 108:278pt 109:722pt 110-113:500pt 114-115:389pt 116:278pt 117:500pt 118:444pt 119:667pt 120-121:444pt 122:389pt 123:400pt 124:275pt 125:400pt 126:541pt 128:500pt 130:333pt 131:500pt 132:556pt 133:889pt 134-135:500pt 136:333pt 137:1000pt 138:500pt 139:333pt 140:944pt 142:556pt 145-146:333pt 147-148:556pt 149:350pt 150:500pt 151:889pt 152:333pt 153:980pt 154:389pt 155:333pt 156:667pt 158:389pt 159:556pt 160:250pt 161:389pt 162-165:500pt 166:275pt 167:500pt 168:333pt 169:760pt 170:276pt 171:500pt 172:675pt 173:333pt 174:760pt 175:500pt 176:400pt 177:675pt 178-179:300pt 180:333pt 181:500pt 182:523pt 183:250pt 184:333pt 185:300pt 186:310pt 187:500pt 188-190:750pt 191:500pt 192-197:611pt 198:889pt 199:667pt 200-203:611pt 204-207:333pt 208:722pt 209:667pt 210-214:722pt 215:675pt 216-220:722pt 221:556pt 222:611pt 223-229:500pt 230:667pt 231-235:444pt 236-239:278pt 240-246:500pt 247:675pt 248-252:500pt 253:444pt 254:500pt 255:444pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 9 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="500pt"  textEncoding="ISO-8859-1">
					<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:333pt 176:400pt 177:584pt 178-180:333pt 181:578pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:584pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 15 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="500pt"  textEncoding="ISO-8859-1">
					<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:333pt 176:400pt 177:584pt 178-180:333pt 181:578pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:584pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 18 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1" flags="65536">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="500pt"  textEncoding="ISO-8859-1">
					<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:333pt 176:400pt 177:584pt 178-180:333pt 181:578pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:584pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 18 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="500pt"  textEncoding="ISO-8859-1">
					<charWidths>32:433pt 33-34:315pt 35:767pt 36:551pt 37:846pt 38:689pt 39:256pt 40-41:354pt 42:492pt 43:531pt 44:275pt 45:334pt 46:275pt 47:315pt 48-57:551pt 58-59:295pt 60-63:551pt 64:1004pt 65:669pt 66-67:689pt 68:708pt 69:630pt 70:570pt 71-72:728pt 73:295pt 74:551pt 75:689pt 76:570pt 77:905pt 78-79:748pt 80:630pt 81:748pt 82:708pt 83:649pt 84:570pt 85:708pt 86:630pt 87:944pt 88:630pt 89:570pt 90:590pt 91:374pt 92:315pt 93:374pt 94:610pt 95:748pt 96:256pt 97:570pt 98:610pt 99:531pt 100:610pt 101:551pt 102:315pt 103:590pt 104:570pt 105:295pt 106:256pt 107:570pt 108:295pt 109:885pt 110:570pt 111:590pt 112:610pt 113:630pt 114:393pt 115:551pt 116:315pt 117:590pt 118:511pt 119:767pt 120:511pt 121:531pt 122:492pt 123:374pt 124:354pt 125:393pt 126:531pt 127:708pt 128-130:722pt 131:667pt 132:722pt 133:778pt 134:722pt 135-145:556pt 146-149:278pt 150-159:611pt 160:556pt 161:400pt 162-164:556pt 165:350pt 166:556pt 167:611pt 168-169:737pt 170:1000pt 171-172:333pt 173:549pt 174:1000pt 175:778pt 176:713pt 177-179:549pt 180:556pt 181:576pt 182:494pt 183:713pt 184:823pt 185:549pt 186:274pt 187:370pt 188:365pt 189:768pt 190:889pt 191-192:611pt 193:333pt 194:584pt 195:549pt 196:556pt 197:549pt 198:612pt 199-200:556pt 201:1000pt 202:278pt 203-204:722pt 205:778pt 206:1000pt 207:944pt 208:556pt 209:1000pt 210-211:500pt 212-213:278pt 214:549pt 215:494pt 216:556pt 217:667pt 218:167pt 219:556pt 220-221:333pt 222-223:611pt 224:556pt 225-226:278pt 227:500pt 228:1000pt 229:722pt 230:667pt 231:722pt 232-233:667pt 234-237:278pt 238-239:778pt 240:790pt 241:778pt 242-244:722pt 245:278pt 246-255:333pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 21 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" defaultCharWidth="500pt"  textEncoding="ISO-8859-1">
					<charWidths>32:433pt 33-34:315pt 35:767pt 36:551pt 37:846pt 38:689pt 39:256pt 40-41:354pt 42:492pt 43:531pt 44:275pt 45:334pt 46:275pt 47:315pt 48-57:551pt 58-59:295pt 60-63:551pt 64:1004pt 65:669pt 66-67:689pt 68:708pt 69:630pt 70:570pt 71-72:728pt 73:295pt 74:551pt 75:689pt 76:570pt 77:905pt 78-79:748pt 80:630pt 81:748pt 82:708pt 83:649pt 84:570pt 85:708pt 86:630pt 87:944pt 88:630pt 89:570pt 90:590pt 91:374pt 92:315pt 93:374pt 94:610pt 95:748pt 96:256pt 97:570pt 98:610pt 99:531pt 100:610pt 101:551pt 102:315pt 103:590pt 104:570pt 105:295pt 106:256pt 107:570pt 108:295pt 109:885pt 110:570pt 111:590pt 112:610pt 113:630pt 114:393pt 115:551pt 116:315pt 117:590pt 118:511pt 119:767pt 120:511pt 121:531pt 122:492pt 123:374pt 124:354pt 125:393pt 126:531pt 127:708pt 128-130:722pt 131:667pt 132:722pt 133:778pt 134:722pt 135-145:556pt 146-149:278pt 150-159:611pt 160:556pt 161:400pt 162-164:556pt 165:350pt 166:556pt 167:611pt 168-169:737pt 170:1000pt 171-172:333pt 173:549pt 174:1000pt 175:778pt 176:713pt 177-179:549pt 180:556pt 181:576pt 182:494pt 183:713pt 184:823pt 185:549pt 186:274pt 187:370pt 188:365pt 189:768pt 190:889pt 191-192:611pt 193:333pt 194:584pt 195:549pt 196:556pt 197:549pt 198:612pt 199-200:556pt 201:1000pt 202:278pt 203-204:722pt 205:778pt 206:1000pt 207:944pt 208:556pt 209:1000pt 210-211:500pt 212-213:278pt 214:549pt 215:494pt 216:556pt 217:667pt 218:167pt 219:556pt 220-221:333pt 222-223:611pt 224:556pt 225-226:278pt 227:500pt 228:1000pt 229:722pt 230:667pt 231:722pt 232-233:667pt 234-237:278pt 238-239:778pt 240:790pt 241:778pt 242-244:722pt 245:278pt 246-255:333pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Helvetica 18 point" size="1000pt" weight="normal" posture="italic" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="718pt" descent="282pt" lineHeight="1200pt" capHeight="718pt" italicAngle="-12" stdVW="88pt" xHeight="523pt" defaultCharWidth="575pt" bBox="-170pt,-931pt,1116pt,225pt" textEncoding="ISO-8859-1">
					<charWidths>32-33:278pt 34:444pt 35-36:556pt 37:889pt 38:667pt 39:278pt 40-41:333pt 42:389pt 43:600pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:600pt 63:556pt 64:800pt 65:667pt 66-68:722pt 69-70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:889pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:556pt 85:722pt 86:611pt 87:889pt 88-90:611pt 91:333pt 92:278pt 93:333pt 94:600pt 95:500pt 96:222pt 97:556pt 98:611pt 99:556pt 100:611pt 101:556pt 102:278pt 103:611pt 104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-111:556pt 112-113:611pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:778pt 120-122:500pt 123:333pt 124:222pt 125:333pt 126:600pt 128:556pt 130:278pt 131:556pt 132:444pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:278pt 147-148:444pt 149-150:500pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:611pt 160:278pt 161:333pt 162-165:556pt 166:222pt 167:556pt 168:222pt 169:737pt 170:370pt 171:500pt 172:600pt 173:333pt 174:490pt 175:222pt 176:400pt 177:600pt 178-179:333pt 180:222pt 181:611pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:500pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:611pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221:611pt 222:667pt 223:611pt 224-229:556pt 230:889pt 231-235:556pt 236-239:222pt 240-246:556pt 247:600pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Presentation 27 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="654pt" descent="346pt" lineHeight="1200pt" capHeight="626pt" defaultCharWidth="604pt"  textEncoding="ISO-8859-1">
					<charWidths>32-255:604pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Letter Gothic 14.3 point" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" >
				<metrics scalable="1" ascent="742pt" descent="208pt" lineHeight="1080pt" capHeight="721pt" italicAngle="0" stdVW="44pt" xHeight="532pt" defaultCharWidth="450pt" bBox="-65pt,-941pt,635pt,308pt" textEncoding="ISO-8859-1">
					<charWidths>32-126:450pt 130-140:450pt 142:450pt 145-156:450pt 158-255:450pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Prestige Elite 10.5 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics scalable="1" ascent="656pt" descent="344pt" lineHeight="1200pt" capHeight="612pt" italicAngle="0" stdVW="40pt" xHeight="408pt" defaultCharWidth="600pt" bBox="-20pt,-837pt,620pt,288pt" textEncoding="ISO-8859-1">
					<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Prestige Elite 15 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics scalable="1" ascent="656pt" descent="344pt" lineHeight="1200pt" capHeight="612pt" italicAngle="0" stdVW="40pt" xHeight="408pt" defaultCharWidth="600pt" bBox="-20pt,-837pt,620pt,288pt" textEncoding="ISO-8859-1">
					<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Courier 15 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics scalable="1" ascent="627pt" descent="373pt" lineHeight="1200pt" capHeight="573pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Courier 18 point" size="1000pt" weight="bold" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics scalable="1" ascent="627pt" descent="373pt" lineHeight="1200pt" capHeight="573pt" defaultCharWidth="600pt"  textEncoding="ISO-8859-1">
					<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba OCR-A 12 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="591pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:591pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba OCR-B 12 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics defaultCharWidth="591pt" textEncoding="ISO-8859-1" ascent="1000pt" descent="0pt" lineHeight="1200pt" pitch="variable" scalable="1" source="">
					<charWidths>32-255:591pt</charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba Gothic725 Black 4 point" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="705pt" defaultCharWidth="962pt"  textEncoding="ISO-8859-1">
					<charWidths>32:310pt 33-34:331pt 35:769pt 36:620pt 37:757pt 38:639pt 39:172pt 40-41:389pt 42:500pt 43:833pt 44-46:310pt 47:292pt 48-57:620pt 58-59:338pt 60-62:833pt 63:569pt 64:1000pt 65:644pt 66:687pt 67:667pt 68:718pt 69:637pt 70:620pt 71:731pt 72:741pt 73:310pt 74:377pt 75:699pt 76:521pt 77:902pt 78:731pt 79:750pt 80:685pt 81:755pt 82:696pt 83:678pt 84:569pt 85:723pt 86:634pt 87:991pt 88:657pt 89:595pt 90:639pt 91:389pt 92:292pt 93:389pt 94:1000pt 95-96:500pt 97:559pt 98:605pt 99:525pt 100:605pt 101:562pt 102:308pt 103:605pt 104:574pt 105-106:267pt 107:544pt 108:272pt 109:866pt 110:574pt 111:595pt 112-113:605pt 114:361pt 115:537pt 116:343pt 117:574pt 118:493pt 119:764pt 120:468pt 121:493pt 122:501pt 123-125:500pt 126:833pt 160:620pt 161:331pt 162-163:620pt 164:606pt 165:620pt 166:500pt 167:581pt 168:500pt 169:833pt 170:419pt 171:532pt 172:833pt 173:310pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:409pt 180:500pt 181:610pt 182:500pt 184:500pt 185:409pt 186:446pt 187:532pt 188-190:948pt 191:569pt 192-197:644pt 198:1011pt 199:667pt 200-203:637pt 204-207:310pt 208-209:731pt 210-214:750pt 215:833pt 216:750pt 217-220:723pt 221:310pt 222:678pt 223:586pt 224-229:559pt 230:875pt 231:525pt 232-235:562pt 236-239:267pt 240:605pt 241:574pt 242-246:595pt 247:833pt 248:595pt 249-252:574pt 253:267pt 254:537pt 255:493pt </charWidths>
				</metrics>
			</font>
			<font typeface="Toshiba GOTHIC725 Black Outline" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="705pt" defaultCharWidth="962pt"  textEncoding="ISO-8859-1">
					<charWidths>32:310pt 33-34:331pt 35:769pt 36:620pt 37:757pt 38:639pt 39:172pt 40-41:389pt 42:500pt 43:833pt 44-46:310pt 47:292pt 48-57:620pt 58-59:338pt 60-62:833pt 63:569pt 64:1000pt 65:644pt 66:687pt 67:667pt 68:718pt 69:637pt 70:620pt 71:731pt 72:741pt 73:310pt 74:377pt 75:699pt 76:521pt 77:902pt 78:731pt 79:750pt 80:685pt 81:755pt 82:696pt 83:678pt 84:569pt 85:723pt 86:634pt 87:991pt 88:657pt 89:595pt 90:639pt 91:389pt 92:292pt 93:389pt 94:1000pt 95-96:500pt 97:559pt 98:605pt 99:525pt 100:605pt 101:562pt 102:308pt 103:605pt 104:574pt 105-106:267pt 107:544pt 108:272pt 109:866pt 110:574pt 111:595pt 112-113:605pt 114:361pt 115:537pt 116:343pt 117:574pt 118:493pt 119:764pt 120:468pt 121:493pt 122:501pt 123-125:500pt 126:833pt 160:620pt 161:331pt 162-163:620pt 164:606pt 165:620pt 166:500pt 167:581pt 168:500pt 169:833pt 170:419pt 171:532pt 172:833pt 173:310pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:409pt 180:500pt 181:610pt 182:500pt 184:500pt 185:409pt 186:446pt 187:532pt 188-190:948pt 191:569pt 192-197:644pt 198:1011pt 199:667pt 200-203:637pt 204-207:310pt 208-209:731pt 210-214:750pt 215:833pt 216:750pt 217-220:723pt 221:310pt 222:678pt 223:586pt 224-229:559pt 230:875pt 231:525pt 232-235:562pt 236-239:267pt 240:605pt 241:574pt 242-246:595pt 247:833pt 248:595pt 249-252:574pt 253:267pt 254:537pt 255:493pt </charWidths>
				</metrics>
			</font>			
			<font typeface="Toshiba BRUSH738" size="1000pt" weight="normal" posture="normal" select="implicitLink" textEncoding="ISO-8859-1">
				<metrics pitch="variable" scalable="1" ascent="760pt" descent="240pt" lineHeight="1200pt" capHeight="711pt" defaultCharWidth="965pt"  textEncoding="ISO-8859-1">
					<charWidths>32:234pt 33:287pt 34:331pt 35:769pt 36:468pt 37:560pt 38:512pt 39:172pt 40-41:303pt 42:500pt 43:833pt 44:234pt 45:312pt 46:234pt 47:278pt 48-57:468pt 58-59:234pt 60-62:833pt 63:384pt 64:1000pt 65:590pt 66:576pt 67:463pt 68:590pt 69:417pt 70:498pt 71:495pt 72:576pt 73:410pt 74:470pt 75:481pt 76:502pt 77:801pt 78-79:556pt 80:528pt 81:556pt 82:544pt 83:410pt 84:394pt 85:566pt 86:571pt 87:766pt 88:509pt 89:572pt 90:509pt 91:303pt 92:278pt 93:303pt 94:1000pt 95-96:500pt 97:448pt 98:373pt 99:350pt 100:459pt 101:366pt 102:333pt 103:451pt 104:456pt 105-106:259pt 107:437pt 108:275pt 109:646pt 110:458pt 111:391pt 112:417pt 113:437pt 114:287pt 115:306pt 116:301pt 117:454pt 118:403pt 119:538pt 120:384pt 121:410pt 122:400pt 123-125:500pt 126:833pt 160:468pt 161:287pt 162-163:468pt 164:606pt 165:468pt 166-168:500pt 169:833pt 170:336pt 171:525pt 172:833pt 173:312pt 174:833pt 175:500pt 176:329pt 177:833pt 178-179:309pt 180:500pt 181:610pt 182:500pt 184:500pt 185:309pt 186:293pt 187:525pt 188-189:756pt 190:757pt 191:384pt 192-197:590pt 198:769pt 199:463pt 200-203:417pt 204-207:410pt 208:495pt 209-214:556pt 215:833pt 216:556pt 217-220:566pt 221-222:410pt 223:382pt 224-229:448pt 230:586pt 231:350pt 232-235:366pt 236-239:259pt 240:451pt 241:458pt 242-246:391pt 247:833pt 248:391pt 249-252:454pt 253:259pt 254:306pt 255:410pt </charWidths>
				</metrics>
			</font>			
      <supportedEncodings>
      	<encoding>UTF-16</encoding> <!-- Symbol character collection -->
      </supportedEncodings>
		</deviceInfo>
	</xdc></xdp:xdp>
