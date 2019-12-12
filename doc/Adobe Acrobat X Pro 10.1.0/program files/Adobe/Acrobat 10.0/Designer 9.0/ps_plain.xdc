<?xml version="1.0" encoding="UTF-8"?>
<?xfa generator="XFA2_0" APIVersion="3.1.10056.0"?>
<xdp:xdp xmlns:xdp="http://ns.adobe.com/xdp/">
	<xdc name="postscript" id="ps_plain" xmlns="http://www.xfa.org/schema/xdc/1.0/">
		<pdl>
			<renderLib name="postscriptdriver"/>

			<!-- ========================================== -->
			<!-- Job/doc/page level event sequences         -->
			<!-- ========================================== -->
			<seq id="startDoc"><seq use="#pa_preamble"/>&#10;<seq use="#textEncodings"/></seq>
			<seq id="endDoc"/>
			<seq id="startRecord"/>
			<seq id="endRecord"/>
			<seq id="startPage"/>
			<seq id="endPage"/>

			<!-- ========================================== -->
			<!-- setpagedevice                              -->
			<!-- ========================================== -->
			<seq id="setupPageMedia">&lt;&lt;/DeferredMediaSelection true /PageSize[<var name="pageWidth"/> <var name="pageHeight"/>] /ImagingBBox null&gt;&gt; setpagedevice&#10;</seq>
			<seq id="copy">&lt;&lt;/NumCopies <var name="numCopies"/>&gt;&gt;setpagedevice&#10;</seq>
			<seq id="paginationSimplex">&lt;&lt;/Duplex false&gt;&gt;setpagedevice&#10;</seq>	
			<seq id="paginationDuplexLongEdge">&lt;&lt;/Duplex true /Tumble false&gt;&gt;setpagedevice&#10;</seq>	
			<seq id="paginationDuplexShortEdge">&lt;&lt;/Duplex true /Tumble true&gt;&gt;setpagedevice&#10;</seq>
			<seq id="pagination"><var name="pagination"/></seq>
			<seq id="stapleOn">&lt;&lt;/Staple 3&gt;&gt;setpagedevice&#10;</seq>
			<seq id="stapleOff">&lt;&lt;/Staple 0&gt;&gt;setpagedevice&#10;</seq>
			<seq id="staple"><var name="staple"/></seq>
			<seq id="jogNone">&lt;&lt;/Jog 0&gt;&gt;setpagedevice&#10;</seq>
			<seq id="jogPageSet">&lt;&lt;/Jog 3&gt;&gt;setpagedevice&#10;</seq>
			<seq id="jog"><var name="jog"/></seq>
			
			<!-- ========================================== -->
			<!-- Font selection                             -->
			<!-- ========================================== -->
			<seq id="selectTextFont" destVar="selectTextFontBuf" destOp="set">/Pa-<var name="fontName"/>-<var name="textEncoding"/> <var name="fontSize"/> selectfont&#10;</seq>
			<seq id="selectTextSoftFont" destVar="selectTextFontBuf" destOp="set">/<var name="softFontName"/> <var name="fontSize"/> selectfont&#10;</seq>

			<!-- ========================================== -->
			<!-- Protos                                     -->
			<!-- ========================================== -->
			<proto>

				<!-- ========================================== -->
				<!-- Preamble                                   -->
				<!-- ========================================== -->
				<seq id="pa_preamble">% simple drawing functions
/edge {/y2 exch def /x2 exch def /y1 exch def /x1 exch def x1 y1 neg moveto x2 y2 neg lineto } bind def
/line {/y2 exch def /x2 exch def /y1 exch def /x1 exch def newpath x1 y1 neg moveto x2 y2 neg lineto stroke} bind def
/rline {/y2 exch def /x2 exch def /y1 exch def /x1 exch def x1 y1 neg moveto x2 y2 neg lineto } bind def
/arcdraw {/a2 exch def /a1 exch def /r exch def /y exch def /x exch def newpath x y r a1 a1 a2 add arc} bind def
/as {/sweep exch def /start exch def /radius exch def /sy exch def /sx exch def /yc exch def /xc exch def xc yc neg translate sx sy scale 0 0 radius start sweep arcdraw stroke} def
/arcfill {/a2 exch def /a1 exch def /r exch def /y exch def /x exch def newpath x y r a1 a2 arc closepath fill} bind def
/c255 {/b exch def /g exch def /r exch def r 255 div g 255 div b 255 div setrgbcolor} bind def
% rectangle rounded corners
/rc1 {/r exch def /y exch def /x exch def x y neg r 90 180 arc } def /rc2 {/r exch def /y exch def /x exch def x y neg r 0 90 arc } def
/rc3 {/r exch def /y exch def /x exch def x y neg r 270 0 arc } def /rc4 {/r exch def /y exch def /x exch def x y neg r 180 270 arc } def
% rectangle inverted rounded corners
/ric1 {/r exch def /yc exch def /xc exch def xc yc neg r 360 270 arcn } def /ric2 {/r exch def /yc exch def /xc exch def xc yc neg r 270 180 arcn } def
/ric3 {/r exch def /yc exch def /xc exch def xc yc neg r 180 90 arcn } def /ric4 {/r exch def /yc exch def /xc exch def xc yc neg r 90 0 arcn } def
% pattern fills
globaldict begin true setglobal
/hP {/bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 9 /YStep 9 
/h {gsave 0 setlinewidth rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 11 0 lineto 11 11 lineto 0 11 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
0 5 moveto 9 5 lineto stroke grestore} bind /PaintProc {begin h end} bind &gt;&gt; matrix makepattern /horizontal exch def horizontal setpattern} def
/vP {/bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 9 /YStep 9 
/v {0 setlinewidth gsave rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 11 0 lineto 11 11 lineto 0 11 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
5 0 moveto 5 9 lineto stroke grestore} bind /PaintProc {begin v end} bind &gt;&gt; matrix makepattern /vertical exch def vertical setpattern} def
/chP {/bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 9 /YStep 9 
/ch {gsave 0 setlinewidth rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 9 0 lineto 9 9 lineto 0 9 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
5 0 moveto 5 9 lineto stroke 0 5 moveto 9 5 lineto stroke grestore} bind /PaintProc {begin ch end} bind &gt;&gt; matrix makepattern /crossHatch exch def crossHatch setpattern} def
/dlP {/bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 9 /YStep 9 
/dl {gsave 0 setlinewidth rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 9 0 lineto 9 9 lineto 0 9 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
9 0 moveto 0 9 lineto stroke grestore} bind /PaintProc {begin dl end} bind &gt;&gt; matrix makepattern /diagonalLeft exch def diagonalLeft setpattern} def
/drP { /bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 9 /YStep 9 
/dr {gsave 0 setlinewidth rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 9 0 lineto 9 9 lineto 0 9 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
0 0 moveto 9 9 lineto stroke grestore} bind /PaintProc {begin dr end} bind &gt;&gt; matrix makepattern /diagonalRight exch def diagonalRight setpattern} def
/cdP {/bB exch def /gB exch def /rB exch def /b exch def /g exch def /r exch def &lt;&lt; /PatternType 1 /PaintType 1 /TilingType 1 /BBox[0 0 9 9] /XStep 8 /YStep 8 
/cd {gsave 0 setlinewidth rB 255 div gB 255 div bB 255 div setrgbcolor newpath 0 0 moveto 9 0 lineto 9 9 lineto 0 9 lineto closepath fill r 255 div g 255 div b 255 div setrgbcolor 
0 0 moveto 9 9 lineto stroke 9 0 moveto 0 9 lineto stroke grestore} bind /PaintProc {begin cd end} bind &gt;&gt; matrix makepattern /crossDiagonal exch def crossDiagonal setpattern} def
% linear fill
/lnP {/b2 exch def /g2 exch def /r2 exch def /b exch def /g exch def /r exch def /y2 exch def /x2 exch def /y1 exch def /x1 exch def r 255 div /r exch def g 255 div /g exch def b 255 div /b exch def 
r2 255 div /r2 exch def g2 255 div /g2 exch def b2 255 div /b2 exch def &lt;&lt;/PatternType 2 /Shading &lt;&lt; /ShadingType 2 /ColorSpace /DeviceRGB /Coords [x1 y1 x2 y2] /Extend [false false] /Function &lt;&lt;
/FunctionType 2 /Domain [0 1] /C0 [r g b ] /C1 [r2 g2 b2] /N 1 &gt;&gt; &gt;&gt; &gt;&gt; matrix makepattern /linear exch def linear setpattern} def
% radial fill
/rdP {/b2 exch def /g2 exch def /r2 exch def /b exch def /g exch def /r exch def /rad2 exch def /y2 exch def /x2 exch def /rad1 exch def /y1 exch def /x1 exch def r 255 div /r exch def g 255 div /g exch def b 255 div /b exch def 
r2 255 div /r2 exch def g2 255 div /g2 exch def b2 255 div /b2 exch def &lt;&lt;/PatternType 2 /Shading &lt;&lt; /ShadingType 3 /ColorSpace /DeviceRGB /Coords [x1 y1 rad1 x2 y2 rad2] /Extend [true true] /Function &lt;&lt;
/FunctionType 2 /Domain [0 1] /C0 [r g b] /C1 [r2 g2 b2] /N 1 &gt;&gt; &gt;&gt; &gt;&gt; matrix makepattern /radial exch def radial setpattern} def
false setglobal end
% font encoding
/pa_reencsmalldict 12 dict def /pa_ReEncode {pa_reencsmalldict begin /newcodesandnames exch def /newfontname exch def /basefontname exch def /basefontdict basefontname findfont def /newfont basefontdict maxlength dict def
basefontdict {exch dup /FID ne {dup /Encoding eq {exch dup length array copy newfont 3 1 roll put} {exch newfont 3 1 roll put} ifelse} {pop pop} ifelse}
forall newfont /FontName newfontname put newcodesandnames aload pop newcodesandnames length 2 idiv {newfont /Encoding get 3 1 roll put} repeat newfontname newfont definefont pop end} def
/BeginEPSF {/b4_Inc_state save def /dict_count countdictstack def /op_count count 1 sub def 
userdict begin /showpage {} def 0 setgray 0 setlinecap 1 setlinewidth 0 setlinejoin 10 setmiterlimit [] 0 setdash /languagelevel where 
{pop languagelevel 1 ne {false setstrokeadjust false setoverprint} if} if 
currentpoint eps_vertical_offset sub exch eps_horizontal_offset add exch translate eps_angle rotate 
eps_scale_factor dup scale eps_llx neg eps_lly neg translate newpath} bind def
/EndEPSF {count op_count sub {pop} repeat countdictstack dict_count sub {end} repeat b4_Inc_state restore} bind def</seq>
				<!-- ========================================== -->
				<!-- PostScript Encoding Vectors                -->
				<!-- ========================================== -->
				<seq id="ISO-8859-1">/pa_ISO-8859-1 [128 /Euro 129 /questiondown 130 /quotesinglbase 131 /florin 132 /quotedblbase 133 /ellipsis 134 /dagger 135 /daggerdbl 136 /circumflex 137 /perthousand 138 /Scaron 139 /guilsinglleft 
140 /OE 141 /questiondown 142 /Zcaron 143 /questiondown 144 /questiondown 145 /quoteleft 146 /quoteright 147 /quotedblleft 148 /quotedblright 149 /bullet 150 /endash 151 /emdash 152 /tilde 153 /trademark 154 /scaron 155 /guilsinglright 
156 /oe 157 /questiondown 158 /zcaron 159 /Ydieresis 160 /space 161 /exclamdown 162 /cent 163 /sterling 164 /currency 165 /yen 166 /brokenbar 167 /section 168 /dieresis 169 /copyright 170 /ordfeminine 171 /guillemotleft 172 /logicalnot 173 /hyphen 
174 /registered 175 /macron 176 /degree 177 /plusminus 178 /twosuperior 179 /threesuperior 180 /acute 181 /mu 182 /paragraph 183 /periodcentered 184 /cedilla 185 /onesuperior 186 /ordmasculine 187 /guillemotright 188 /onequarter 189 /onehalf 
190 /threequarters 191 /questiondown 192 /Agrave 193 /Aacute 194 /Acircumflex 195 /Atilde 196 /Adieresis 197 /Aring 198 /AE 199 /Ccedilla 200 /Egrave 201 /Eacute 202 /Ecircumflex 203 /Edieresis 204 /Igrave 205 /Iacute 206 /Icircumflex 
207 /Idieresis 208 /Eth 209 /Ntilde 210 /Ograve 211 /Oacute 212 /Ocircumflex 213 /Otilde 214 /Odieresis 215 /multiply 216 /Oslash 217 /Ugrave 218 /Uacute 219 /Ucircumflex 220 /Udieresis 221 /Yacute 222 /Thorn 223 /germandbls
224 /agrave 225 /aacute 226 /acircumflex 227 /atilde 228 /adieresis 229 /aring 230 /ae 231 /ccedilla 232 /egrave 233 /eacute 234 /ecircumflex 235 /edieresis 236 /igrave 237 /iacute 238 /icircumflex 239 /idieresis 240 /eth 
241 /ntilde 242 /ograve 243 /oacute 244 /ocircumflex 245 /otilde 246 /odieresis 247 /divide 248 /oslash 249 /ugrave 250 /uacute 251 /ucircumflex 252 /udieresis 253 /yacute 254 /thorn 255 /ydieresis
] def</seq>
				<seq id="ISO-8859-2">/pa_ISO-8859-2 [128 /Euro 129 /questiondown 130 /quotesinglbase 131 /questiondown 132 /quotedblbase 133 /ellipsis 134 /dagger 135 /daggerdbl 136 /questiondown 137 /perthousand 138 /Scaron 139 /guilsinglleft 
140 /Sacute 141 /Tcaron 142 /Zcaron 143 /Zacute 144 /questiondown 145 /quoteleft 146 /quoteright 147 /quotedblleft 148 /quotedblright 149 /bullet 150 /endash 151 /emdash 152 /questiondown 153 /trademark 154 /scaron 155 /guilsinglright 
156 /sacute 157 /tcaron 158 /zcaron 159 /zacute 160 /nbspace 161 /caron 162 /breve 163 /Lslash 164 /currency 165 /Aogonek 166 /brokenbar 167 /section 168 /dieresis 169 /copyright 170 /Scedilla 171 /guillemotleft 172 /logicalnot 173 /hyphen 
174 /registered 175 /Zdotaccent 176 /degree 177 /plusminus 178 /ogonek 179 /lslash 180 /acute 181 /mu 182 /paragraph 183 /periodcentered 184 /cedilla 185 /aogonek 186 /scedilla 187 /guillemotright 188 /Lcaron 189 /hungarumlaut 190 /lcaron 
191 /zdotaccent 192 /Racute 193 /Aacute 194 /Acircumflex 195 /Abreve 196 /Adieresis 197 /Lacute 198 /Cacute 199 /Ccedilla 200 /Ccaron 201 /Eacute 202 /Eogonek 203 /Edieresis 204 /Ecaron 205 /Iacute 206 /Icircumflex 207 /Dcaron
208 /Dcroat 209 /Nacute 210 /Ncaron 211 /Oacute 212 /Ocircumflex 213 /Ohungarumlaut 214 /Odieresis 215 /multiply 216 /Rcaron 217 /Uring 218 /Uacute 219 /Udblacute 220 /Udieresis 221 /Yacute 222 /Tcedilla 223 /germandbls 224 /racute 
225 /aacute 226 /acircumflex 227 /abreve 228 /adieresis 229 /lacute 230 /cacute 231 /ccedilla 232 /ccaron 233 /eacute 234 /eogonek 235 /edieresis 236 /ecaron 237 /iacute 238 /icircumflex 239 /dcaron 240 /dcroat 241 /nacute 242 /ncaron 
243 /oacute 244 /ocircumflex 245 /ohungarumlaut 246 /odieresis 247 /divide 248 /rcaron 249 /uring 250 /uacute 251 /udblacute 252 /udieresis 253 /yacute 254 /tcedilla 255 /dotaccent
] def</seq>
				<seq id="fontSpecific">/pa_fontSpecific [ ] def</seq>
				<seq id="textEncodings"><seq use="#ISO-8859-1"/>&#10;<seq use="#ISO-8859-2"/>&#10;<seq use="#fontSpecific"/>&#10;</seq>

				<!-- ========================================== -->
				<!-- PS sequences						        -->
				<!-- ========================================== -->

				<!-- ========================================== -->
				<!-- EPS image settings                         -->
				<!-- ========================================== -->
				<seq id="PSRawEPSImageStart">BeginEPSF&#10;</seq>
				<seq id="PSRawEPSImageTranslate">/eps_vertical_offset <var name="PSRawEPSImageHeight"/> def&#10;/eps_horizontal_offset 0 def&#10;/eps_angle <var name="PSRawEPSImageRotate"/> def&#10;/eps_scale_factor <var name="PSRawEPSImageScaleWidth"/> def&#10;/eps_llx 0 def&#10;/eps_lly 0 def&#10;<var name="PSRawEPSImageX"/> <var name="PSRawEPSImageY"/> neg moveto&#10;</seq>
				<seq id="PSRawEPSImage"><var name="PSRawEPSImageData"/></seq>
				<seq id="PSRawEPSImageEnd">EndEPSF&#10;</seq>

			</proto>

			<!-- ========================================== -->
			<!-- Font Mappings                              -->
			<!-- ========================================== -->
			<seq id="Arial_Normal_Normal_ISO-8859-1">Arial,ArialMT,Helvetica</seq>
			<seq id="Arial_Normal_Italic_ISO-8859-1">Arial-Italic,Arial-ItalicMT,Helvetica-Oblique</seq>
			<seq id="Arial_Bold_Normal_ISO-8859-1">Arial-Bold,Arial-BoldMT,Helvetica-Bold</seq>
			<seq id="Arial_Bold_Italic_ISO-8859-1">Arial-BoldItalic,Arial-BoldItalicMT,Helvetica-BoldOblique</seq>
			<seq id="AvantGarde_Normal_Normal_ISO-8859-1">AvantGarde-Book</seq>
			<seq id="AvantGarde_Normal_Italic_ISO-8859-1">AvantGarde-BookOblique</seq>
			<seq id="AvantGarde_Bold_Normal_ISO-8859-1">AvantGarde-Demi</seq>
			<seq id="AvantGarde_Bold_Italic_ISO-8859-1">AvantGarde-DemiOblique</seq>
			<seq id="Bookman_Normal_Normal_ISO-8859-1">Bookman-Light</seq>
			<seq id="Bookman_Normal_Italic_ISO-8859-1">Bookman-LightItalic</seq>
			<seq id="Bookman_Bold_Normal_ISO-8859-1">Bookman-Demi</seq>
			<seq id="Bookman_Bold_Italic_ISO-8859-1">Bookman-DemiItalic</seq>
			<seq id="Courier_Normal_Normal_ISO-8859-1">Courier</seq>
			<seq id="Courier_Normal_Italic_ISO-8859-1">Courier-Oblique</seq>
			<seq id="Courier_Bold_Normal_ISO-8859-1">Courier-Bold</seq>
			<seq id="Courier_Bold_Italic_ISO-8859-1">Courier-BoldOblique</seq>
			<seq id="Helvetica_Normal_Normal_ISO-8859-1">Helvetica</seq>
			<seq id="Helvetica_Normal_Italic_ISO-8859-1">Helvetica-Oblique</seq>
			<seq id="Helvetica_Bold_Normal_ISO-8859-1">Helvetica-Bold</seq>
			<seq id="Helvetica_Bold_Italic_ISO-8859-1">Helvetica-BoldOblique</seq>
			<seq id="Helvetica-Narrow_Normal_Normal_ISO-8859-1">Helvetica-Narrow</seq>
			<seq id="Helvetica-Narrow_Normal_Italic_ISO-8859-1">Helvetica-Narrow-Oblique</seq>
			<seq id="Helvetica-Narrow_Bold_Normal_ISO-8859-1">Helvetica-Narrow-Bold</seq>
			<seq id="Helvetica-Narrow_Bold_Italic_ISO-8859-1">Helvetica-Narrow-BoldOblique</seq>
			<seq id="Marigold_Normal_Normal_ISO-8859-1">Marigold</seq>
			<seq id="NewCenturySchlbk_Normal_Normal_ISO-8859-1">NewCenturySchlbk-Roman</seq>
			<seq id="NewCenturySchlbk_Normal_Italic_ISO-8859-1">NewCenturySchlbk-Italic</seq>
			<seq id="NewCenturySchlbk_Bold_Normal_ISO-8859-1">NewCenturySchlbk-Bold</seq>
			<seq id="NewCenturySchlbk_Bold_Italic_ISO-8859-1">NewCenturySchlbk-BoldItalic</seq>
			<seq id="Palatino_Normal_Normal_ISO-8859-1">Palatino-Roman</seq>
			<seq id="Palatino_Normal_Italic_ISO-8859-1">Palatino-Italic</seq>
			<seq id="Palatino_Bold_Normal_ISO-8859-1">Palatino-Bold</seq>
			<seq id="Palatino_Bold_Italic_ISO-8859-1">Palatino-BoldItalic</seq>
			<seq id="Symbol_Normal_Normal_fontSpecific">Symbol</seq>
			<seq id="Times_Normal_Normal_ISO-8859-1">Times-Roman</seq>
			<seq id="Times_Normal_Italic_ISO-8859-1">Times-Italic</seq>
			<seq id="Times_Bold_Normal_ISO-8859-1">Times-Bold</seq>
			<seq id="Times_Bold_Italic_ISO-8859-1">Times-BoldItalic</seq>
			<seq id="Times New Roman_Normal_Normal_ISO-8859-1">TimesNewRoman,TimesNewRomanPSMT,Times-Roman</seq>
			<seq id="Times New Roman_Normal_Italic_ISO-8859-1">TimesNewRoman-Italic,TimesNewRomanPS-ItalicMT,Times-Italic</seq>
			<seq id="Times New Roman_Bold_Normal_ISO-8859-1">TimesNewRoman-Bold,TimesNewRomanPS-BoldMT,Times-Bold</seq>
			<seq id="Times New Roman_Bold_Italic_ISO-8859-1">TimesNewRoman-BoldItalic,TimesNewRomanPS-BoldItalicMT,Times-BoldItalic</seq>
			<seq id="Wingdings_Normal_Normal_fontSpecific">Wingdings-Regular</seq>
			<seq id="ZapfChancery_Normal_Italic_ISO-8859-1">ZapfChancery-MediumItalic</seq>
			<seq id="ITC Zapf Dingbats_Normal_Normal_fontSpecific">ZapfDingbats</seq>
		</pdl>

		<deviceInfo>
			<!-- ========================================== -->
			<!-- Device information                         -->
			<!-- ========================================== -->
			<option name="manufacturer">General</option>
			<option name="model">General</option>
			<option name="language">ps</option>
			<option name="languageLevel">2</option>
			<!-- ========================================== -->
			<!-- Device options                             -->
			<!-- ========================================== -->
			<option name="supportsHiddenFieldObjects">0</option>
			<option name="supportsInvisibleFieldObjects">0</option>
			<option name="supportsInvisibleFieldBorderObjects">0</option>
			<option name="supportsInvisibleFieldCaptionObjects">0</option>
			<option name="supportsHiddenBoilerPlateObjects">0</option>
			<option name="supportsInvisibleBoilerPlateObjects">0</option>
			<option name="supportsDrawLine">1</option>
			<option name="supportsDrawArc">1</option>
			<option name="supportsDrawRectangle">1</option>
			<option name="supportsNativeRectangle">1</option>
			<option name="supportsDrawText">1</option>
			<option name="supportsNativeLinearFill">0</option>
			<option name="supportsNativeRadialFill">0</option>
			<option name="enumerateColors">0</option>
			<option name="replaceCharacters">,\,\\,(,\(,),\)</option>
			<option name="strokeTypeMultiplier">1</option>
			<option name="pageOffsetX">0in</option>
			<option name="pageOffsetY">0in</option>
			<option name="useDSC">0</option>
			<option name="supportsCopy">1</option>
			<option name="supportsMacros">1</option>
			<option name="reEncode">ISO-8859-1,ISO-8859-2,fontSpecific</option>
			<!-- ========================================== -->
			<!-- Duplex options                             -->
			<!--     0 - Simplex (no-Duplex)                -->
			<!--     1 - Duplex, Long-Edge Binding          -->
			<!--     2 - Duplex, Short-Edge Binding         -->
			<!-- ========================================== -->
			<option name="jobLevelDuplex">0</option>
			<!-- ========================================== -->
			<!-- Font options                              -->
			<!-- ========================================== -->
			<option name="supportsFontEmbedding">1</option>
			<option name="supportsFontLinking">0</option>
			<option name="supportsFontSubsetting">1</option>
			<option name="enumerateFonts">0</option>
			<option name="supportsDoubleByteFonts">0</option>
			<!-- ========================================== -->
			<!-- SoftFont options                           -->
			<!-- ========================================== -->
			<option name="supportsSoftFontEmbedding">1</option>
			<!-- ========================================== -->
			<!-- Text formatting                            -->
			<!-- ========================================== -->
			<option name="boilerplateTextRetrieval">formattedFragments</option>
			<option name="fieldTextRetrieval">formattedFragments</option>
			<option name="outputZeroRotation">0</option>
			<option name="outputEmbeddedCJKTextAsUnicode">1</option>
			<option name="unicodeTextCompression">asciiHex</option>
			<!-- ========================================== -->
			<!-- Resolution                                 -->
			<!-- ========================================== -->
			<option name="deviceXResolution">0</option>
			<option name="deviceYResolution">0</option>
			<option name="defaultRasterResolution">600</option>
			<!-- ========================================== -->
			<!-- Image options                              -->
			<!-- ========================================== -->
			<option name="blackIsZero">1</option>
			<option name="supportsColorImages">1</option>
			<option name="supportedCompressionTypes">asciiHex lzw ascii85</option>
			<option name="supportsImageScaling">1</option>
			<option name="supportsLinkedImages">0</option>
			<option name="supportsEmbeddedImages">1</option>
			<option name="supportedEmbeddedImageFormats">internal</option>
			<option name="supportedLinkedImageFormats">internal</option>
			<!-- ========================================== -->
			<!-- Supported graphic types                    -->
			<!-- ========================================== -->
			<option name="supportsMonochrome1">1</option>
			<option name="supportsGreyscale1">1</option>
			<option name="supportsGreyscale2">1</option>
			<option name="supportsGreyscale4">1</option>
			<option name="supportsGreyscale8">1</option>
			<option name="supportsPalette1">1</option>
			<option name="supportsPalette2">1</option>
			<option name="supportsPalette4">1</option>
			<option name="supportsPalette8">1</option>
			<option name="supportsRGB8">1</option>
			<option name="supportsRGB16">0</option>
			<option name="supportsEPS">1</option>
			<!-- ========================================== -->
			<!-- The following should be in xci -->
			<!-- ========================================== -->
			<option name="linesAsRaster">0</option>
			<option name="arcsAsRaster">0</option>
			<option name="rectanglesAsRaster">0</option>
			<option name="textAsRaster">0</option>
			<option name="renderImagesInColor">1</option>
			<option name="rasterizeAll">0</option>
			<option name="rasterizeBoilerPlate">0</option>
			<!-- ========================================== -->
			<!-- Medium                                     -->
			<!-- ========================================== -->
			<medium stock="default" short="612pt" long="792pt"/>
			<medium stock="letter" short="612pt" long="792pt"/>
			<medium stock="letterSmall" short="612pt" long="792pt"/>
			<medium stock="tabloid" short="792pt" long="1224pt"/>
			<medium stock="ledger" long="1224pt" short="792pt"/>
			<medium stock="legal" short="612pt" long="1008pt"/>
			<medium stock="statement" short="396pt" long="612pt"/>
			<medium stock="executive" short="522pt" long="756pt"/>
			<medium stock="a3" short="297mm" long="420mm"/>
			<medium stock="a4" short="210mm" long="297mm"/>
			<medium stock="a4Small" short="210mm" long="297mm"/>
			<medium stock="a5" short="148mm" long="210mm"/>
			<medium stock="b4JIS" short="250mm" long="354mm"/>
			<medium stock="b5JIS" short="182mm" long="257mm"/>
			<medium stock="folio" short="612pt" long="936pt"/>
			<medium stock="quarto" short="215mm" long="275mm"/>
			<medium stock="10By14Inch" short="720pt" long="1008pt"/>
			<medium stock="11By17Inch" short="792pt" long="1224pt"/>
			<medium stock="note" short="612pt" long="792pt"/>
			<medium stock="envelope9" short="279pt" long="639pt"/>
			<medium stock="envelope10" short="297pt" long="684pt"/>
			<medium stock="envelope11" short="324pt" long="747pt"/>
			<medium stock="envelope12" short="342pt" long="792pt"/>
			<medium stock="envelope14" short="360pt" long="828pt"/>
			<medium stock="cSizeSheet" short="17in" long="22in"/>
			<medium stock="dSizeSheet" short="22in" long="34in"/>
			<medium stock="eSizeSheet" short="34in" long="44in"/>
			<medium stock="envelopeDL" short="110mm" long="220mm"/>
			<medium stock="envelopeC5" short="162mm" long="229mm"/>
			<medium stock="envelopeC3" short="324mm" long="458mm"/>
			<medium stock="envelopeC4" short="229mm" long="324mm"/>
			<medium stock="envelopeC6" short="114mm" long="162mm"/>
			<medium stock="envelopeC65" short="114mm" long="229mm"/>
			<medium stock="envelopeB4" short="250mm" long="353mm"/>
			<medium stock="envelopeB5" short="176mm" long="250mm"/>
			<medium stock="envelopeB6" long="176mm" short="125mm"/>
			<medium stock="envelope" short="110mm" long="230mm"/>
			<medium stock="envelopeMonarch" short="279pt" long="540pt"/>
			<medium stock="6And3QuartersEnvelope" short="261pt" long="468pt"/>
			<medium stock="usStdFanfold" long="1071pt" short="792pt"/>
			<medium stock="germanStdFanfold" short="612pt" long="864pt"/>
			<medium stock="germanLegalFanfold" short="612pt" long="936pt"/>
			<medium stock="b4ISO" short="250mm" long="353mm"/>
			<medium stock="japanesePostcard" short="100mm" long="148mm"/>
			<medium stock="9By11Inch" short="648pt" long="792pt"/>
			<medium stock="10By11Inch" short="720pt" long="792pt"/>
			<medium stock="15By11Inch" long="1080pt" short="792pt"/>
			<medium stock="envelopeInvite" short="220mm" long="220mm"/>
			<medium stock="letterExtra" short="684pt" long="864pt"/>
			<medium stock="legalExtra" short="684pt" long="1080pt"/>
			<medium stock="tabloidExtra" short="11.69in" long="18in"/>
			<medium stock="a4Extra" short="9.27in" long="12.69in"/>
			<medium stock="letterTransverse" short="612pt" long="792pt"/>
			<medium stock="a4Transverse" short="210mm" long="297mm"/>
			<medium stock="letterExtraTransverse" short="684pt" long="864pt"/>
			<medium stock="superASuperAA4" short="227mm" long="356mm"/>
			<medium stock="superBSuperBA3" short="305mm" long="487mm"/>
			<medium stock="letterPlus" short="8.5in" long="12.69in"/>
			<medium stock="a4Plus" short="210mm" long="330mm"/>
			<medium stock="a5Transverse" short="148mm" long="210mm"/>
			<medium stock="b5JISTransverse" short="182mm" long="257mm"/>
			<medium stock="a3Extra" short="322mm" long="445mm"/>
			<medium stock="a5Extra" short="174mm" long="235mm"/>
			<medium stock="b5ISOExtra" short="201mm" long="276mm"/>
			<medium stock="a2" short="220mm" long="594mm"/>
			<medium stock="a3Transverse" short="297mm" long="420mm"/>
			<medium stock="a3ExtraTransverse" short="320mm" long="445mm"/>
			<medium stock="a3ExtraTransverse" short="320mm" long="445mm"/>
			<medium stock="letterPlain" short="612pt" long="792pt"/>
			<medium stock="letterLetterhead" short="612pt" long="792pt"/>
			<medium stock="letterSpecial" short="612pt" long="792pt"/>
			<medium stock="letterColor" short="612pt" long="792pt"/>
			<medium stock="a4Plain" short="210mm" long="297mm"/>
			<medium stock="a4Letterhead" short="210mm" long="297mm"/>
			<medium stock="a4Special" short="210mm" long="297mm"/>
			<medium stock="a4Color" short="210mm" long="297mm"/>
			<medium stock="b4JISPlain" short="250mm" long="354mm"/>
			<medium stock="b4JISLetterhead" short="250mm" long="354mm"/>
			<medium stock="b4JISSpecial" short="250mm" long="354mm"/>
			<medium stock="b4JISColor" short="250mm" long="354mm"/>

			<!-- ========================================== -->
			<!-- Line styles                                -->
			<!-- ========================================== -->
			<lineStyle name="solid"      styleType="bitPattern"></lineStyle>
			<lineStyle name="dotted"     styleType="bitPattern">1 2</lineStyle>
			<lineStyle name="dashed"     styleType="bitPattern">4 2</lineStyle>
			<lineStyle name="dashDot"    styleType="bitPattern">3 2 1 2</lineStyle>
			<lineStyle name="dashDotDot" styleType="bitPattern">3 2 1 2 1 2</lineStyle>

			<!-- ========================================== -->
			<!-- Units                                      -->
			<!-- ========================================== -->
			<deviceUnits name="general"             hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="pageDimensions"      hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="lineDimensions"      hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="linePlacement"       hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="lineThickness"       hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="graphicPlacement"    hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="graphicDimensions"   hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="textPlacement"       hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="fontSize"            hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="arcPlacement"        hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="arcDimensions"       hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="rectanglePlacement"  hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="rectangleDimensions" hSize="1pt" vSize="1pt" fracDigits="3" fraction="round"/>
			<deviceUnits name="color"               hSize="0pt" vSize="0pt" fracDigits="0" fraction="round"/>

			<!-- ========================================== -->
			<!-- Barcodes                                   -->
			<!-- ========================================== -->
			<barcodes>
				<barcodeDefinition type="code2Of5Interleaved" support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="2.2-3.0" checksum="auto,none" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/>
				<barcodeDefinition type="code3Of9"            support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="2.2-3.0" checksum="auto,none" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"/>
				<barcodeDefinition type="pdf417"              support="software"/> 
				<barcodeDefinition type="ean8"                support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="belowEmbedded" validDataChars="0123456789"/> 
				<barcodeDefinition type="upcA"                support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="belowEmbedded" validDataChars="0123456789"/>
				<barcodeDefinition type="code128"             support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars=" &#33;&#35;&#38;&#39;$%()*+,-./0123456789:;&#60;=&#62;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_&#96;abcdefghijklmnopqrstuvwxyz{|}~"/> <!-- need to add " -->
				<barcodeDefinition type="code128A"            support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars=" &#33;&#35;&#38;&#39;$%()*+,-./0123456789:;&#60;=&#62;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_"/> <!-- need to add " -->
				<barcodeDefinition type="code128B"            support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars=" &#33;&#35;&#38;&#39;$%()*+,-./0123456789:;&#60;=&#62;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_&#96;abcdefghijklmnopqrstuvwxyz{|}~"/> <!-- need to add " -->
				<barcodeDefinition type="code128C"            support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/> <!-- need to add " -->
				<barcodeDefinition type="code128SSCC"         support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/> <!-- need to add " -->
			<barcodeDefinition type="ean13"               support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="fixed" checksum="auto" textLocation="belowEmbedded" validDataChars="0123456789"/>
			<barcodeDefinition type="code2Of5Matrix"      support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="2.2-3.0" checksum="auto,none" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789"/>
			<barcodeDefinition type="code2Of5Industrial"  support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="2.2-3.0" checksum="auto,none" textLocation="none,above,below,aboveEmbedded,belowEmbedded"  validDataChars="0123456789"/>
			<barcodeDefinition type="codabar"             support="software" moduleWidth="0.191mm-1.25mm" moduleHeight="5mm-1250mm" wideNarrowRatio="2.2-3.0" checksum="none" textLocation="none,above,below,aboveEmbedded,belowEmbedded" validDataChars="0123456789-$:/.+" startChar="ABCDabcd*NTEnte" endChar="ABCDabcd*NTEnte"/>
			
			<barcodeDefinition type="postAUSStandard"     support="software" checksum="auto" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
			<barcodeDefinition type="postAUSCust2"        support="software" checksum="auto" textLocation="none,above" validDataChars="0123456789"/>
			<barcodeDefinition type="postAUSCust3"        support="software" checksum="auto" textLocation="none,above" validDataChars="0123456789"/>
			<barcodeDefinition type="postAUSReplyPaid"    support="software" checksum="auto" textLocation="none,above" validDataChars="0123456789" dataLength="8"/>
			<barcodeDefinition type="postUSStandard"      support="software" checksum="auto" textLocation="none,above,below" validDataChars="0123456789" dataLength="9"/> 
			<barcodeDefinition type="postUS5Zip"          support="software" checksum="auto" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/> 
			<barcodeDefinition type="postUSDPBC"          support="software" checksum="auto" textLocation="none,above,below" validDataChars="0123456789" dataLength="11"/> 
			<barcodeDefinition type="postUKRM4SCC"        support="software" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
			
			<!-- other barcodes not supported by this device but still need to be rendered -->
			<barcodeDefinition type="code11"              support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789-"/>
			<barcodeDefinition type="msi"                 support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="none,1mod10,2mod10,1mod10_1mod11" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="1-14"/> 
			<barcodeDefinition type="plessey"             support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="auto,none" textLocation="none,above,below" validDataChars="0123456789ABCDEF"/>
			<barcodeDefinition type="upcE"                support="none" wideNarrowRatio="fixed"   moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" printCheckDigit="1" validDataChars="0123456789" dataLength="10"/>
			<barcodeDefinition type="upcean2"             support="none" wideNarrowRatio="fixed"   moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="2"/>
			<barcodeDefinition type="upcean5"             support="none" wideNarrowRatio="fixed"   moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789" dataLength="5"/>
			<barcodeDefinition type="code93"              support="none" wideNarrowRatio="fixed"   moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" printCheckDigit="1" textLocation="none,above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&#38;&#39;,()"/>
			<barcodeDefinition type="logmars"             support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="above,below" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%"/>
			<barcodeDefinition type="code49"              support="none" wideNarrowRatio="fixed"   moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" startChar="A12345" validDataChars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ -.$/+%&#60;&#62;:;?="/>
			<barcodeDefinition type="code2Of5Standard"    support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" textLocation="none,above,below" validDataChars="0123456789"/>										
			<barcodeDefinition type="codeQR"              support="none"/>
			<barcodeDefinition type="upsMaxicode" support="none" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" dataLength="0-90"/>
			<barcodeDefinition type="planetCode" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" checksum="none" textLocation="none,above,below" validDataChars="0123456789-"/>
			<barcodeDefinition type="rss14" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
			<barcodeDefinition type="rss14Stacked" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
			<barcodeDefinition type="rss14StackedOmni" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
			<barcodeDefinition type="rss14Truncated" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
			<barcodeDefinition type="rssLimited" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" validDataChars="0123456789" dataLength="1-13"/>
			<barcodeDefinition type="rssExpanded" support="none" wideNarrowRatio="2.0-3.0" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm" dataLength="1-74"/>
			<barcodeDefinition type="aztec" support="none" wideNarrowRatio="fixed" moduleWidth="0.125mm-1.25mm" moduleHeight="0.125mm-1250mm"/>
			<barcodeDefinition type="rfid" support="none" wideNarrowRatio="fixed"/>
			</barcodes>  
		
		<!-- ========================================== -->
		<!-- Fonts                                      -->
		<!-- ========================================== -->
		<font typeface="Arial" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="728pt" descent="210pt" lineHeight="1150pt" capHeight="716pt" italicAngle="0" stdVW="88pt" xHeight="519pt" defaultCharWidth="750pt" bBox="-665pt,-1006pt,2000pt,325pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:552pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:549pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Arial" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="728pt" descent="208pt" lineHeight="1150pt" capHeight="716pt" italicAngle="-12" stdVW="92pt" xHeight="519pt" defaultCharWidth="750pt" bBox="-517pt,-998pt,1082pt,325pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:552pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:537pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:549pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Arial" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="728pt" descent="210pt" lineHeight="1150pt" capHeight="716pt" italicAngle="0" stdVW="136pt" xHeight="519pt" defaultCharWidth="750pt" bBox="-628pt,-1010pt,2000pt,376pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:333pt 34:474pt 35-36:556pt 37:889pt 38:722pt 39:238pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:333pt 60-62:584pt 63:611pt 64:975pt 65-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:556pt 75:722pt 76:611pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91:333pt 92:278pt 93:333pt 94:584pt 95:556pt 96:333pt 97:556pt 98:611pt 99:556pt 100:611pt 101:556pt 102:333pt 103-104:611pt 105-106:278pt 107:556pt 108:278pt 109:889pt 110-113:611pt 114:389pt 115:556pt 116:333pt 117:611pt 118:556pt 119:778pt 120-121:556pt 122:500pt 123:389pt 124:280pt 125:389pt 126:584pt 128:556pt 130:278pt 131:556pt 132:500pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:278pt 147-148:500pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:556pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:280pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:552pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:556pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231-235:556pt 236-239:278pt 240-246:611pt 247:549pt 248-252:611pt 253:556pt 254:611pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Arial" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="728pt" descent="210pt" lineHeight="1150pt" capHeight="716pt" italicAngle="-12" stdVW="140pt" xHeight="519pt" defaultCharWidth="750pt" bBox="-560pt,-1000pt,1157pt,376pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:333pt 34:474pt 35-36:556pt 37:889pt 38:722pt 39:238pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:333pt 60-62:584pt 63:611pt 64:975pt 65-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:556pt 75:722pt 76:611pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91:333pt 92:278pt 93:333pt 94:584pt 95:556pt 96:333pt 97:556pt 98:611pt 99:556pt 100:611pt 101:556pt 102:333pt 103-104:611pt 105-106:278pt 107:556pt 108:278pt 109:889pt 110-113:611pt 114:389pt 115:556pt 116:333pt 117:611pt 118:556pt 119:778pt 120-121:556pt 122:500pt 123:389pt 124:280pt 125:389pt 126:584pt 128:556pt 130:278pt 131:556pt 132:500pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:278pt 147-148:500pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:556pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:280pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:552pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:556pt 183:278pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231-235:556pt 236-239:278pt 240-246:611pt 247:549pt 248-252:611pt 253:556pt 254:611pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="AvantGarde" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="986pt" descent="281pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="68pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-75pt,-986pt,1146pt,281pt" textEncoding="ISO-8859-1">
				<charWidths>32:277pt 33:295pt 34:309pt 35:720pt 36:554pt 37:775pt 38:757pt 39:198pt 40-41:369pt 42:425pt 43:606pt 44:277pt 45:332pt 46:277pt 47:437pt 48-57:554pt 58-59:277pt 60-62:606pt 63:591pt 64:867pt 65:740pt 66:574pt 67:813pt 68:744pt 69:536pt 70:485pt 71:872pt 72:683pt 73:226pt 74:482pt 75:591pt 76:462pt 77:919pt 78:740pt 79:869pt 80:592pt 81:871pt 82:607pt 83:498pt 84:426pt 85:655pt 86:702pt 87:960pt 88:609pt 89:592pt 90:480pt 91:351pt 92:605pt 93:351pt 94:672pt 95:500pt 96:378pt 97:683pt 98:682pt 99:647pt 100:685pt 101:650pt 102:314pt 103:673pt 104:610pt 105:200pt 106:203pt 107:502pt 108:200pt 109:938pt 110:610pt 111:655pt 112-113:682pt 114:301pt 115:388pt 116:339pt 117:608pt 118:554pt 119:831pt 120:480pt 121:536pt 122:425pt 123:351pt 124:672pt 125:351pt 126:606pt 128:554pt 130:354pt 131:554pt 132:502pt 133:1000pt 134-135:553pt 136:502pt 137:1174pt 138:498pt 139:251pt 140:1194pt 142:480pt 145-146:351pt 147:502pt 148:484pt 149:606pt 150:500pt 151:1000pt 152:439pt 153:1000pt 154:388pt 155:251pt 156:1137pt 158:425pt 159:592pt 160:277pt 161:295pt 162-165:554pt 166:672pt 167:615pt 168:369pt 169:747pt 170:369pt 171:425pt 172:606pt 173:332pt 174:747pt 175:500pt 176:400pt 177:549pt 178:332pt 179:344pt 180:375pt 181:576pt 182:564pt 184:324pt 185:332pt 186:369pt 187:425pt 188-190:831pt 191:591pt 192-197:740pt 198:992pt 199:813pt 200-203:536pt 204-207:226pt 208:790pt 209:740pt 210-214:869pt 215:606pt 216:868pt 217-220:655pt 221-222:592pt 223:554pt 224-229:683pt 230:1157pt 231:647pt 232-235:650pt 236-239:200pt 240:655pt 241:610pt 242-246:655pt 247:549pt 248:653pt 249-252:608pt 253:536pt 254:682pt 255:536pt </charWidths>
				</metrics>
			</font>
		<font typeface="AvantGarde" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="982pt" descent="219pt" lineHeight="1080pt" capHeight="719pt" italicAngle="-8" stdVW="68pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-96pt,-956pt,1182pt,219pt" textEncoding="ISO-8859-1">
				<charWidths>32:277pt 33:295pt 34:309pt 35:720pt 36:554pt 37:775pt 38:757pt 39:198pt 40-41:369pt 42:425pt 43:606pt 44:277pt 45:332pt 46:277pt 47:437pt 48-57:554pt 58-59:277pt 60-62:606pt 63:591pt 64:867pt 65:740pt 66:574pt 67:813pt 68:744pt 69:536pt 70:485pt 71:872pt 72:683pt 73:226pt 74:482pt 75:591pt 76:462pt 77:919pt 78:740pt 79:869pt 80:592pt 81:871pt 82:607pt 83:498pt 84:426pt 85:655pt 86:702pt 87:960pt 88:609pt 89:592pt 90:480pt 91:351pt 92:605pt 93:351pt 94:672pt 95:500pt 96:378pt 97:683pt 98:682pt 99:647pt 100:685pt 101:650pt 102:314pt 103:673pt 104:610pt 105:200pt 106:203pt 107:502pt 108:200pt 109:938pt 110:610pt 111:655pt 112-113:682pt 114:301pt 115:388pt 116:339pt 117:608pt 118:554pt 119:831pt 120:480pt 121:536pt 122:425pt 123:351pt 124:672pt 125:351pt 126:606pt 128:554pt 130:354pt 131:554pt 132:502pt 133:1000pt 134-135:553pt 136:502pt 137:1174pt 138:498pt 139:251pt 140:1194pt 142:480pt 145-146:351pt 147:502pt 148:484pt 149:606pt 150:500pt 151:1000pt 152:439pt 153:1000pt 154:388pt 155:251pt 156:1137pt 158:425pt 159:592pt 160:277pt 161:295pt 162-165:554pt 166:672pt 167:615pt 168:369pt 169:747pt 170:369pt 171:425pt 172:606pt 173:332pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:332pt 180:375pt 181:576pt 182:564pt 184:324pt 185:332pt 186:369pt 187:425pt 188-190:831pt 191:591pt 192-197:740pt 198:992pt 199:813pt 200-203:536pt 204-207:226pt 208:790pt 209:740pt 210-214:869pt 215:606pt 216:868pt 217-220:655pt 221-222:592pt 223:554pt 224-229:683pt 230:1157pt 231:647pt 232-235:650pt 236-239:200pt 240:655pt 241:610pt 242-246:655pt 247:549pt 248:653pt 249-252:608pt 253:536pt 254:682pt 255:536pt </charWidths>
				</metrics>
			</font>
		<font typeface="AvantGarde" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="1029pt" descent="219pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="132pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-84pt,-1006pt,1270pt,219pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:280pt 34:360pt 35:600pt 36:560pt 37:860pt 38:680pt 39:220pt 40-41:380pt 42:440pt 43:600pt 44:280pt 45:420pt 46:280pt 47:460pt 48-57:560pt 58-59:280pt 60-62:600pt 63:560pt 64-65:740pt 66:580pt 67:780pt 68:700pt 69:520pt 70:480pt 71:840pt 72:680pt 73:280pt 74:480pt 75:620pt 76:440pt 77:900pt 78:740pt 79:840pt 80:560pt 81:840pt 82:580pt 83:520pt 84:420pt 85:640pt 86:700pt 87:900pt 88:680pt 89:620pt 90:500pt 91:320pt 92:640pt 93:320pt 94:600pt 95:500pt 96:420pt 97-98:660pt 99:640pt 100:660pt 101:640pt 102:280pt 103:660pt 104:600pt 105:240pt 106:260pt 107:580pt 108:240pt 109:940pt 110:600pt 111:640pt 112-113:660pt 114:320pt 115:440pt 116:300pt 117:600pt 118:560pt 119:800pt 120:560pt 121:580pt 122:460pt 123:340pt 124:600pt 125:340pt 126:600pt 128:560pt 130:280pt 131:560pt 132:480pt 133:1000pt 134-135:560pt 136:540pt 137:1280pt 138:520pt 139:240pt 140:1060pt 142:500pt 145-146:280pt 147-148:480pt 149:600pt 150:500pt 151:1000pt 152:480pt 153:1000pt 154:440pt 155:240pt 156:1080pt 158:460pt 159:620pt 160-161:280pt 162-163:560pt 164:600pt 165:560pt 166:600pt 167:560pt 168:500pt 169:740pt 170:360pt 171:460pt 172:600pt 173:420pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:336pt 180:420pt 181:576pt 182:600pt 184:340pt 185:336pt 186:360pt 187:460pt 188-190:840pt 191:560pt 192-197:740pt 198:900pt 199:780pt 200-203:520pt 204-207:280pt 208:742pt 209:740pt 210-214:840pt 215:600pt 216:840pt 217-220:640pt 221:620pt 222:560pt 223:600pt 224-229:660pt 230:1080pt 231-235:640pt 236-239:240pt 240:640pt 241:600pt 242-246:640pt 247:549pt 248:660pt 249-252:600pt 253:580pt 254:660pt 255:580pt </charWidths>
				</metrics>
			</font>
		<font typeface="AvantGarde" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="1029pt" descent="219pt" lineHeight="1080pt" capHeight="719pt" italicAngle="-7" stdVW="132pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-108pt,-1007pt,1231pt,219pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:280pt 34:360pt 35:600pt 36:560pt 37:860pt 38:680pt 39:220pt 40-41:380pt 42:440pt 43:600pt 44:280pt 45:420pt 46:280pt 47:460pt 48-57:560pt 58-59:280pt 60-62:600pt 63:560pt 64-65:740pt 66:580pt 67:780pt 68:700pt 69:520pt 70:480pt 71:840pt 72:680pt 73:280pt 74:480pt 75:620pt 76:440pt 77:900pt 78:740pt 79:840pt 80:560pt 81:840pt 82:580pt 83:520pt 84:420pt 85:640pt 86:700pt 87:900pt 88:680pt 89:620pt 90:500pt 91:320pt 92:640pt 93:320pt 94:600pt 95:500pt 96:420pt 97-98:660pt 99:640pt 100:660pt 101:640pt 102:280pt 103:660pt 104:600pt 105:240pt 106:260pt 107:580pt 108:240pt 109:940pt 110:600pt 111:640pt 112-113:660pt 114:320pt 115:440pt 116:300pt 117:600pt 118:560pt 119:800pt 120:560pt 121:580pt 122:460pt 123:340pt 124:600pt 125:340pt 126:600pt 128:560pt 130:280pt 131:560pt 132:480pt 133:1000pt 134-135:560pt 136:540pt 137:1280pt 138:520pt 139:240pt 140:1060pt 142:500pt 145-146:280pt 147-148:480pt 149:600pt 150:500pt 151:1000pt 152:480pt 153:1000pt 154:440pt 155:240pt 156:1080pt 158:460pt 159:620pt 160-161:280pt 162-163:560pt 164:600pt 165:560pt 166:600pt 167:560pt 168:500pt 169:740pt 170:360pt 171:460pt 172:600pt 173:420pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:336pt 180:420pt 181:576pt 182:600pt 184:340pt 185:336pt 186:360pt 187:460pt 188-190:840pt 191:560pt 192-197:740pt 198:900pt 199:780pt 200-203:520pt 204-207:280pt 208:742pt 209:740pt 210-214:840pt 215:600pt 216:840pt 217-220:640pt 221:620pt 222:560pt 223:600pt 224-229:660pt 230:1080pt 231-235:640pt 236-239:240pt 240:640pt 241:600pt 242-246:640pt 247:549pt 248:660pt 249-252:600pt 253:580pt 254:660pt 255:580pt </charWidths>
				</metrics>
			</font>
		<font typeface="Bookman" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="922pt" descent="281pt" lineHeight="1080pt" capHeight="680pt" italicAngle="0" stdVW="84pt" xHeight="469pt" defaultCharWidth="499pt" bBox="-88pt,-921pt,1244pt,281pt" textEncoding="ISO-8859-1">
				<charWidths>32:320pt 33:300pt 34:380pt 35:600pt 36:620pt 37:900pt 38:800pt 39:220pt 40-41:300pt 42:440pt 43:600pt 44:320pt 45:400pt 46:320pt 47:600pt 48-57:620pt 58-59:320pt 60-62:600pt 63:540pt 64:820pt 65:680pt 66-67:740pt 68:800pt 69:720pt 70:640pt 71-72:800pt 73:340pt 74:600pt 75:720pt 76:600pt 77:920pt 78:740pt 79:800pt 80:620pt 81:800pt 82:720pt 83:660pt 84:620pt 85:780pt 86:700pt 87:960pt 88:720pt 89-90:640pt 91:300pt 92:600pt 93:300pt 94:600pt 95:500pt 96:340pt 97:580pt 98:620pt 99:520pt 100:620pt 101:520pt 102:320pt 103:540pt 104:660pt 105-106:300pt 107:620pt 108:300pt 109:940pt 110:660pt 111:560pt 112:620pt 113:580pt 114:440pt 115:520pt 116:380pt 117:680pt 118:520pt 119:780pt 120:560pt 121:540pt 122:480pt 123:280pt 124:600pt 125:280pt 126:600pt 128:620pt 130:220pt 131:620pt 132:400pt 133:1000pt 134-135:540pt 136:420pt 137:1280pt 138:660pt 139:240pt 140:1240pt 142:640pt 145-146:220pt 147-148:400pt 149:460pt 150:500pt 151:1000pt 152:440pt 153:980pt 154:520pt 155:240pt 156:900pt 158:480pt 159:640pt 160:320pt 161:300pt 162-163:620pt 164:600pt 165:620pt 166:600pt 167:520pt 168:420pt 169:740pt 170:420pt 171:360pt 172:600pt 173:400pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:372pt 180:340pt 181:576pt 182:600pt 184:320pt 185:372pt 186:420pt 187:360pt 188-190:930pt 191:540pt 192-197:680pt 198:1260pt 199:740pt 200-203:720pt 204-207:340pt 208:800pt 209:740pt 210-214:800pt 215:600pt 216:800pt 217-220:780pt 221:640pt 222:620pt 223:660pt 224-229:580pt 230:860pt 231-235:520pt 236-239:300pt 240:560pt 241:660pt 242-246:560pt 247:549pt 248:560pt 249-252:680pt 253:540pt 254:620pt 255:540pt </charWidths>
				</metrics>
			</font>
		<font typeface="Bookman" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="922pt" descent="281pt" lineHeight="1080pt" capHeight="680pt" italicAngle="-14" stdVW="80pt" xHeight="481pt" defaultCharWidth="499pt" bBox="-125pt,-881pt,1283pt,281pt" textEncoding="ISO-8859-1">
				<charWidths>32:300pt 33:320pt 34:360pt 35:600pt 36:620pt 37:800pt 38:820pt 39:200pt 40-41:280pt 42:440pt 43:600pt 44:300pt 45:320pt 46:300pt 47:600pt 48-57:620pt 58-59:300pt 60-62:600pt 63:540pt 64:780pt 65:700pt 66-67:720pt 68:740pt 69:680pt 70:620pt 71:760pt 72:800pt 73:320pt 74:560pt 75:720pt 76:580pt 77:860pt 78:720pt 79:760pt 80:600pt 81:780pt 82:700pt 83:640pt 84:600pt 85:720pt 86:680pt 87:960pt 88:700pt 89:660pt 90:580pt 91:260pt 92:600pt 93:260pt 94:600pt 95:500pt 96:340pt 97:620pt 98:600pt 99:480pt 100:640pt 101:540pt 102:340pt 103:560pt 104:620pt 105-106:280pt 107:600pt 108:280pt 109:880pt 110:620pt 111:540pt 112:600pt 113:560pt 114:400pt 115:540pt 116:340pt 117:620pt 118:540pt 119:880pt 120:540pt 121:600pt 122:520pt 123:360pt 124:600pt 125:380pt 126:600pt 128:620pt 130:320pt 131:620pt 132:480pt 133:1000pt 134-135:620pt 136:440pt 137:1180pt 138:640pt 139:180pt 140:1180pt 142:580pt 145-146:280pt 147-148:440pt 149:460pt 150:500pt 151:1000pt 152:440pt 153:980pt 154:540pt 155:180pt 156:900pt 158:520pt 159:660pt 160:300pt 161:320pt 162-163:620pt 164:600pt 165:620pt 166:600pt 167:620pt 168:420pt 169:740pt 170:440pt 171:300pt 172:600pt 173:320pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:372pt 180:320pt 181:576pt 182:620pt 184:320pt 185:372pt 186:400pt 187:300pt 188-190:930pt 191:540pt 192-197:700pt 198:1220pt 199:720pt 200-203:680pt 204-207:320pt 208:740pt 209:720pt 210-214:760pt 215:600pt 216:760pt 217-220:720pt 221:660pt 222:600pt 223-229:620pt 230:880pt 231:480pt 232-235:540pt 236-239:280pt 240:540pt 241:620pt 242-246:540pt 247:549pt 248:540pt 249-252:620pt 253-255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Bookman" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="961pt" descent="281pt" lineHeight="1080pt" capHeight="680pt" italicAngle="0" stdVW="156pt" xHeight="484pt" defaultCharWidth="499pt" bBox="-99pt,-939pt,1329pt,281pt" textEncoding="ISO-8859-1">
				<charWidths>32:340pt 33:360pt 34:420pt 35:600pt 36:660pt 37:940pt 38:800pt 39:240pt 40-41:320pt 42:460pt 43:600pt 44:340pt 45:360pt 46:340pt 47:600pt 48-57:660pt 58-59:340pt 60-62:600pt 63:660pt 64:820pt 65-66:720pt 67:740pt 68:780pt 69:720pt 70:680pt 71:780pt 72:820pt 73:400pt 74:640pt 75:800pt 76:640pt 77:940pt 78:740pt 79:800pt 80:660pt 81:800pt 82:780pt 83:660pt 84:700pt 85:740pt 86:720pt 87:940pt 88:780pt 89:700pt 90:640pt 91:300pt 92:600pt 93:300pt 94:600pt 95:500pt 96:400pt 97:580pt 98:600pt 99:580pt 100:640pt 101:580pt 102:380pt 103:580pt 104:680pt 105:360pt 106:340pt 107:660pt 108:340pt 109:1000pt 110:680pt 111:620pt 112:640pt 113:620pt 114:460pt 115:520pt 116:460pt 117:660pt 118:600pt 119:800pt 120:600pt 121:620pt 122:560pt 123:320pt 124:600pt 125:320pt 126:600pt 128:660pt 130:320pt 131:660pt 132:540pt 133:1000pt 134:440pt 135:380pt 136:500pt 137:1360pt 138:660pt 139:220pt 140:1220pt 142:640pt 145-146:320pt 147-148:540pt 149:460pt 150:500pt 151:1000pt 152:480pt 153:980pt 154:520pt 155:220pt 156:940pt 158:560pt 159:700pt 160:340pt 161:360pt 162-163:660pt 164:600pt 165:660pt 166-167:600pt 168:500pt 169:740pt 170-171:400pt 172:600pt 173:360pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:396pt 180:400pt 181:576pt 182:800pt 184:360pt 185:396pt 186-187:400pt 188-190:990pt 191:660pt 192-197:720pt 198:1140pt 199:740pt 200-203:720pt 204-207:400pt 208:780pt 209:740pt 210-214:800pt 215:600pt 216:800pt 217-220:740pt 221:700pt 222-223:660pt 224-229:580pt 230:880pt 231-235:580pt 236-239:360pt 240:620pt 241:680pt 242-246:620pt 247:549pt 248:620pt 249-252:660pt 253:620pt 254:640pt 255:620pt </charWidths>
				</metrics>
			</font>
		<font typeface="Bookman" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="977pt" descent="316pt" lineHeight="1080pt" capHeight="680pt" italicAngle="-14" stdVW="152pt" xHeight="509pt" defaultCharWidth="499pt" bBox="-136pt,-951pt,1391pt,316pt" textEncoding="ISO-8859-1">
				<charWidths>32:340pt 33:320pt 34:380pt 35:600pt 36:680pt 37:880pt 38:980pt 39:180pt 40-41:260pt 42:460pt 43:600pt 44:340pt 45:280pt 46:340pt 47:360pt 48-57:680pt 58-59:340pt 60:620pt 61:600pt 62-63:620pt 64:780pt 65-66:720pt 67:700pt 68:760pt 69:720pt 70:660pt 71:760pt 72:800pt 73:380pt 74:620pt 75:780pt 76:640pt 77:860pt 78:740pt 79:760pt 80:640pt 81:760pt 82:740pt 83-84:700pt 85:740pt 86:660pt 87:1000pt 88:740pt 89:660pt 90:680pt 91:260pt 92:580pt 93:260pt 94:620pt 95:500pt 96:380pt 97:680pt 98:600pt 99:560pt 100:680pt 101:560pt 102:420pt 103:620pt 104:700pt 105:380pt 106:320pt 107:700pt 108:380pt 109:960pt 110:680pt 111:600pt 112:660pt 113:620pt 114:500pt 115:540pt 116:440pt 117:680pt 118:540pt 119:860pt 120:620pt 121:600pt 122:560pt 123:300pt 124:620pt 125:300pt 126:620pt 128:680pt 130:300pt 131:680pt 132:520pt 133:1000pt 134-135:420pt 136:500pt 137:1360pt 138:700pt 139:220pt 140:1180pt 142:680pt 145-146:320pt 147-148:520pt 149:360pt 150:500pt 151:1000pt 152:480pt 153:940pt 154:540pt 155:220pt 156:920pt 158:560pt 159:660pt 160:340pt 161:320pt 162-163:680pt 164:680pt 165:680pt 166-167:620pt 168:520pt 169:780pt 170:440pt 171:380pt 172:620pt 173:280pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:408pt 180:340pt 181:576pt 182:680pt 184:360pt 185:408pt 186:440pt 187:380pt 188-190:1020pt 191:620pt 192-197:720pt 198:1140pt 199:700pt 200-203:720pt 204-207:380pt 208:760pt 209:740pt 210-214:760pt 215:600pt 216:760pt 217-220:740pt 221:660pt 222:640pt 223:660pt 224-229:680pt 230:880pt 231-235:560pt 236-239:380pt 240:600pt 241:680pt 242-246:600pt 247:549pt 248:600pt 249-252:680pt 253:600pt 254:660pt 255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Courier" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="2">
			<metrics scalable="1" ascent="751pt" descent="249pt" lineHeight="1200pt" capHeight="572pt" italicAngle="0" stdVW="56pt" xHeight="434pt" defaultCharWidth="600pt" bBox="-6pt,-803pt,639pt,249pt" textEncoding="ISO-8859-1">
				<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Courier" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="66">
			<metrics scalable="1" ascent="751pt" descent="249pt" lineHeight="1200pt" capHeight="572pt" italicAngle="-11" stdVW="56pt" xHeight="434pt" defaultCharWidth="600pt" bBox="-162pt,-803pt,687pt,249pt" textEncoding="ISO-8859-1">
				<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Courier" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="2">
			<metrics scalable="1" ascent="751pt" descent="249pt" lineHeight="1200pt" capHeight="572pt" italicAngle="0" stdVW="92pt" xHeight="434pt" defaultCharWidth="600pt" bBox="-88pt,-811pt,697pt,249pt" textEncoding="ISO-8859-1">
				<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Courier" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="66">
			<metrics scalable="1" ascent="751pt" descent="249pt" lineHeight="1200pt" capHeight="572pt" italicAngle="-11" stdVW="92pt" xHeight="434pt" defaultCharWidth="600pt" bBox="-246pt,-811pt,745pt,249pt" textEncoding="ISO-8859-1">
				<charWidths>32-126:600pt 128:600pt 130-140:600pt 142:600pt 145-156:600pt 158-255:600pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="741pt" descent="218pt" lineHeight="1000pt" capHeight="729pt" italicAngle="0" stdVW="80pt" xHeight="524pt" defaultCharWidth="750pt" bBox="-174pt,-943pt,1050pt,225pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 174:737pt 175:333pt 176:400pt 177:584pt 178-180:333pt 181:558pt 182:537pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:584pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="741pt" descent="228pt" lineHeight="1000pt" capHeight="719pt" italicAngle="-13" stdVW="88pt" xHeight="523pt" defaultCharWidth="499pt" bBox="-170pt,-952pt,1122pt,267pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:278pt 34:355pt 35-36:556pt 37:889pt 38:667pt 39:191pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:584pt 63:556pt 64:1015pt 65-66:667pt 67-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:500pt 75:667pt 76:556pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91-93:278pt 94:469pt 95:556pt 96:333pt 97-98:556pt 99:500pt 100-101:556pt 102:278pt 103-104:556pt 105-106:222pt 107:500pt 108:222pt 109:833pt 110-113:556pt 114:333pt 115:500pt 116:278pt 117:556pt 118:500pt 119:722pt 120-122:500pt 123:334pt 124:260pt 125:334pt 126:584pt 128:556pt 130:222pt 131:556pt 132:333pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:222pt 147-148:333pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:260pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:600pt 176:400pt 177:584pt 178-180:333pt 181:556pt 182:537pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:667pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231:500pt 232-235:556pt 236-239:278pt 240-246:556pt 247:584pt 248:611pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="745pt" descent="219pt" lineHeight="1000pt" capHeight="729pt" italicAngle="0" stdVW="140pt" xHeight="540pt" defaultCharWidth="750pt" bBox="-173pt,-944pt,1050pt,225pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:333pt 34:474pt 35-36:556pt 37:889pt 38:722pt 39:238pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:333pt 60-62:584pt 63:611pt 64:975pt 65-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:556pt 75:722pt 76:611pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91:333pt 92:278pt 93:333pt 94:584pt 95:556pt 96:333pt 97:556pt 98:611pt 99:556pt 100:611pt 101:556pt 102:333pt 103-104:611pt 105-106:278pt 107:556pt 108:278pt 109:889pt 110-113:611pt 114:389pt 115:556pt 116:333pt 117:611pt 118:556pt 119:778pt 120-121:556pt 122:500pt 123:389pt 124:280pt 125:389pt 126:584pt 128:556pt 130:278pt 131:556pt 132:500pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:278pt 147-148:500pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:556pt 155:333pt 156:944pt 158:500pt 159:667pt 161:333pt 162-165:556pt 166:280pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 174:737pt 175:333pt 176:400pt 177:584pt 178-180:333pt 181:617pt 182:556pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231-235:556pt 236-239:278pt 240-246:611pt 247:584pt 248-252:611pt 253:556pt 254:611pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="745pt" descent="229pt" lineHeight="1000pt" capHeight="719pt" italicAngle="-13" stdVW="144pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-175pt,-964pt,1122pt,267pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:333pt 34:474pt 35-36:556pt 37:889pt 38:722pt 39:238pt 40-41:333pt 42:389pt 43:584pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:333pt 60-62:584pt 63:611pt 64:975pt 65-68:722pt 69:667pt 70:611pt 71:778pt 72:722pt 73:278pt 74:556pt 75:722pt 76:611pt 77:833pt 78:722pt 79:778pt 80:667pt 81:778pt 82:722pt 83:667pt 84:611pt 85:722pt 86:667pt 87:944pt 88-89:667pt 90:611pt 91:333pt 92:278pt 93:333pt 94:584pt 95:556pt 96:333pt 97:556pt 98:611pt 99:556pt 100:611pt 101:556pt 102:333pt 103-104:611pt 105-106:278pt 107:556pt 108:278pt 109:889pt 110-113:611pt 114:389pt 115:556pt 116:333pt 117:611pt 118:556pt 119:778pt 120-121:556pt 122:500pt 123:389pt 124:280pt 125:389pt 126:584pt 128:556pt 130:278pt 131:556pt 132:500pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:611pt 145-146:278pt 147-148:500pt 149:350pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:556pt 155:333pt 156:944pt 158:500pt 159:667pt 160:278pt 161:333pt 162-165:556pt 166:280pt 167:556pt 168:333pt 169:737pt 170:370pt 171:556pt 172:584pt 173:333pt 174:737pt 175:600pt 176:400pt 177:584pt 178-180:333pt 181:611pt 182:556pt 184-185:333pt 186:365pt 187:556pt 188-190:834pt 191:611pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:278pt 208-209:722pt 210-214:778pt 215:584pt 216:778pt 217-220:722pt 221-222:667pt 223:611pt 224-229:556pt 230:889pt 231-235:556pt 236-239:278pt 240-246:611pt 247:584pt 248-252:611pt 253:556pt 254:611pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica-Narrow" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="927pt" descent="258pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="72pt" xHeight="516pt" defaultCharWidth="499pt" bBox="-41pt,-925pt,820pt,258pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:228pt 34:291pt 35-36:456pt 37:729pt 38:547pt 39:157pt 40-41:273pt 42:319pt 43:479pt 44:228pt 45:273pt 46-47:228pt 48-57:456pt 58-59:228pt 60-62:479pt 63:456pt 64:832pt 65-66:547pt 67-68:592pt 69:547pt 70:501pt 71:638pt 72:592pt 73:228pt 74:410pt 75:547pt 76:456pt 77:683pt 78:592pt 79:638pt 80:547pt 81:638pt 82:592pt 83:547pt 84:501pt 85:592pt 86:547pt 87:774pt 88-89:547pt 90:501pt 91-93:228pt 94:385pt 95:456pt 96:273pt 97-98:456pt 99:410pt 100-101:456pt 102:228pt 103-104:456pt 105-106:182pt 107:410pt 108:182pt 109:683pt 110-113:456pt 114:273pt 115:410pt 116:228pt 117:456pt 118:410pt 119:592pt 120-122:410pt 123:274pt 124:213pt 125:274pt 126:479pt 128:456pt 130:182pt 131:456pt 132:273pt 133:820pt 134-135:456pt 136:273pt 137:820pt 138:547pt 139:273pt 140:820pt 142:501pt 145-146:182pt 147-148:273pt 149:287pt 150:456pt 151:820pt 152:273pt 153:820pt 154:410pt 155:273pt 156:774pt 158:410pt 159:547pt 160:228pt 161:273pt 162-165:456pt 166:213pt 167:456pt 168:273pt 169:604pt 170:303pt 171:456pt 172:479pt 173:273pt 174:604pt 175:500pt 176:400pt 177:549pt 178-180:273pt 181:576pt 182:440pt 184-185:273pt 186:299pt 187:456pt 188-190:684pt 191:501pt 192-197:547pt 198:820pt 199:592pt 200-203:547pt 204-207:228pt 208-209:592pt 210-214:638pt 215:479pt 216:638pt 217-220:592pt 221-222:547pt 223:501pt 224-229:456pt 230:729pt 231:410pt 232-235:456pt 236-239:182pt 240-246:456pt 247:549pt 248-252:456pt 253:410pt 254:456pt 255:410pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica-Narrow" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="741pt" descent="228pt" lineHeight="1000pt" capHeight="719pt" italicAngle="-13" stdVW="44pt" xHeight="523pt" defaultCharWidth="499pt" bBox="-139pt,-952pt,915pt,267pt" textEncoding="ISO-8859-1">
				<charWidths>32-33:228pt 34:291pt 35-36:456pt 37:729pt 38:547pt 39:157pt 40-41:273pt 42:319pt 43:479pt 44:228pt 45:273pt 46-47:228pt 48-57:456pt 58-59:228pt 60-62:479pt 63:456pt 64:832pt 65-66:547pt 67-68:592pt 69:547pt 70:501pt 71:638pt 72:592pt 73:228pt 74:410pt 75:547pt 76:456pt 77:683pt 78:592pt 79:638pt 80:547pt 81:638pt 82:592pt 83:547pt 84:501pt 85:592pt 86:547pt 87:774pt 88-89:547pt 90:501pt 91-93:228pt 94:385pt 95:456pt 96:273pt 97-98:456pt 99:410pt 100-101:456pt 102:228pt 103-104:456pt 105-106:182pt 107:410pt 108:182pt 109:683pt 110-113:456pt 114:273pt 115:410pt 116:228pt 117:456pt 118:410pt 119:592pt 120-122:410pt 123:274pt 124:213pt 125:274pt 126:479pt 128:456pt 130:182pt 131:456pt 132:273pt 133:820pt 134-135:456pt 136:273pt 137:820pt 138:547pt 139:273pt 140:820pt 142:501pt 145-146:182pt 147-148:273pt 149:287pt 150:456pt 151:820pt 152:273pt 153:820pt 154:410pt 155:273pt 156:774pt 158:410pt 159:547pt 160:228pt 161:273pt 162-165:456pt 166:213pt 167:456pt 168:273pt 169:604pt 170:303pt 171:456pt 172:479pt 173:273pt 174:604pt 175:600pt 176:328pt 177:479pt 178-180:273pt 181:456pt 182:440pt 184-185:273pt 186:299pt 187:456pt 188-190:684pt 191:501pt 192-197:547pt 198:820pt 199:592pt 200-203:547pt 204-207:228pt 208-209:592pt 210-214:638pt 215:479pt 216:638pt 217-220:592pt 221-222:547pt 223:501pt 224-229:456pt 230:729pt 231:410pt 232-235:456pt 236-239:228pt 240-246:456pt 247:479pt 248:501pt 249-252:456pt 253:410pt 254:456pt 255:410pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica-Narrow" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="935pt" descent="258pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="112pt" xHeight="516pt" defaultCharWidth="499pt" bBox="-37pt,-933pt,823pt,258pt" textEncoding="ISO-8859-1">
				<charWidths>32:228pt 33:273pt 34:389pt 35-36:456pt 37:729pt 38:592pt 39:195pt 40-41:273pt 42:319pt 43:479pt 44:228pt 45:273pt 46-47:228pt 48-57:456pt 58-59:273pt 60-62:479pt 63:501pt 64:800pt 65-68:592pt 69:547pt 70:501pt 71:638pt 72:592pt 73:228pt 74:456pt 75:592pt 76:501pt 77:683pt 78:592pt 79:638pt 80:547pt 81:638pt 82:592pt 83:547pt 84:501pt 85:592pt 86:547pt 87:774pt 88-89:547pt 90:501pt 91:273pt 92:228pt 93:273pt 94:479pt 95:456pt 96:273pt 97:456pt 98:501pt 99:456pt 100:501pt 101:456pt 102:273pt 103-104:501pt 105-106:228pt 107:456pt 108:228pt 109:729pt 110-113:501pt 114:319pt 115:456pt 116:273pt 117:501pt 118:456pt 119:638pt 120-121:456pt 122:410pt 123:319pt 124:230pt 125:319pt 126:479pt 128:456pt 130:228pt 131:456pt 132:410pt 133:820pt 134-135:456pt 136:273pt 137:820pt 138:547pt 139:273pt 140:820pt 142:501pt 145-146:228pt 147-148:410pt 149:287pt 150:456pt 151:820pt 152:273pt 153:820pt 154:456pt 155:273pt 156:774pt 158:410pt 159:547pt 160:228pt 161:273pt 162-165:456pt 166:230pt 167:456pt 168:273pt 169:604pt 170:303pt 171:456pt 172:479pt 173:273pt 174:604pt 175:500pt 176:400pt 177:549pt 178-180:273pt 181:576pt 182:456pt 184-185:273pt 186:299pt 187:456pt 188-190:684pt 191:501pt 192-197:592pt 198:820pt 199:592pt 200-203:547pt 204-207:228pt 208-209:592pt 210-214:638pt 215:479pt 216:638pt 217-220:592pt 221-222:547pt 223:501pt 224-229:456pt 230:729pt 231-235:456pt 236-239:228pt 240-246:501pt 247:549pt 248-252:501pt 253:456pt 254:501pt 255:456pt </charWidths>
				</metrics>
			</font>
		<font typeface="Helvetica-Narrow" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="64">
			<metrics pitch="variable" scalable="1" ascent="745pt" descent="229pt" lineHeight="1000pt" capHeight="719pt" italicAngle="-13" stdVW="88pt" xHeight="531pt" defaultCharWidth="499pt" bBox="-143pt,-964pt,920pt,267pt" textEncoding="ISO-8859-1">
				<charWidths>32:228pt 33:273pt 34:389pt 35-36:456pt 37:729pt 38:592pt 39:195pt 40-41:273pt 42:319pt 43:479pt 44:228pt 45:273pt 46-47:228pt 48-57:456pt 58-59:273pt 60-62:479pt 63:501pt 64:800pt 65-68:592pt 69:547pt 70:501pt 71:638pt 72:592pt 73:228pt 74:456pt 75:592pt 76:501pt 77:683pt 78:592pt 79:638pt 80:547pt 81:638pt 82:592pt 83:547pt 84:501pt 85:592pt 86:547pt 87:774pt 88-89:547pt 90:501pt 91:273pt 92:228pt 93:273pt 94:479pt 95:456pt 96:273pt 97:456pt 98:501pt 99:456pt 100:501pt 101:456pt 102:273pt 103-104:501pt 105-106:228pt 107:456pt 108:228pt 109:729pt 110-113:501pt 114:319pt 115:456pt 116:273pt 117:501pt 118:456pt 119:638pt 120-121:456pt 122:410pt 123:319pt 124:230pt 125:319pt 126:479pt 128:456pt 130:228pt 131:456pt 132:410pt 133:820pt 134-135:456pt 136:273pt 137:820pt 138:547pt 139:273pt 140:820pt 142:501pt 145-146:228pt 147-148:410pt 149:287pt 150:456pt 151:820pt 152:273pt 153:820pt 154:456pt 155:273pt 156:774pt 158:410pt 159:547pt 160:228pt 161:273pt 162-165:456pt 166:230pt 167:456pt 168:273pt 169:604pt 170:303pt 171:456pt 172:479pt 173:273pt 174:604pt 175:600pt 176:328pt 177:479pt 178-180:273pt 181:501pt 182:456pt 184-185:273pt 186:299pt 187:456pt 188-190:684pt 191:501pt 192-197:592pt 198:820pt 199:592pt 200-203:547pt 204-207:228pt 208-209:592pt 210-214:638pt 215:479pt 216:638pt 217-220:592pt 221-222:547pt 223:501pt 224-229:456pt 230:729pt 231-235:456pt 236-239:228pt 240-246:501pt 247:479pt 248-252:501pt 253:456pt 254:501pt 255:456pt </charWidths>
				</metrics>
			</font>
		<font typeface="Marigold" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="634pt" descent="300pt" lineHeight="1080pt" capHeight="455pt" italicAngle="0" stdVW="40pt" xHeight="512pt" defaultCharWidth="499pt" bBox="-122pt,-749pt,996pt,302pt" textEncoding="ISO-8859-1">
				<charWidths>32:221pt 33:295pt 34:240pt 35-36:369pt 37:646pt 38:479pt 39:147pt 40-41:258pt 42:369pt 43:442pt 44:221pt 45:258pt 46:221pt 47:332pt 48-57:369pt 58-59:221pt 60:996pt 61:442pt 62:996pt 63:313pt 64:682pt 65:461pt 66-67:406pt 68:479pt 69:387pt 70:369pt 71-72:461pt 73-74:240pt 75:461pt 76:332pt 77:608pt 78:498pt 79:442pt 80:369pt 81-82:442pt 83:369pt 84:387pt 85:479pt 86:461pt 87:608pt 88:461pt 89-90:406pt 91:240pt 92:332pt 93:240pt 94-95:498pt 96:442pt 97:313pt 98:258pt 99:240pt 100:295pt 101:240pt 102:147pt 103:295pt 104:313pt 105:185pt 106:147pt 107:258pt 108:147pt 109:424pt 110:295pt 111:258pt 112:295pt 113:276pt 114:240pt 115-116:203pt 117:295pt 118:276pt 119:369pt 120-122:276pt 123:313pt 124:498pt 125:313pt 126:996pt 128:369pt 130:147pt 131:369pt 132:240pt 133:682pt 134-135:369pt 136:442pt 137:867pt 138:369pt 139:221pt 140:627pt 142:406pt 145-146:147pt 147-148:240pt 149:498pt 150:442pt 151:682pt 152:442pt 153:369pt 154:203pt 155:221pt 156:406pt 158:276pt 159:406pt 160:221pt 161:295pt 162-165:369pt 166:498pt 167:369pt 168:442pt 169:295pt 170:240pt 171:351pt 172:442pt 173:258pt 174:295pt 175:442pt 176:295pt 177:442pt 178-179:276pt 180:442pt 181:553pt 182:442pt 184:442pt 185:276pt 186:240pt 187:351pt 188-190:646pt 191:313pt 192-197:461pt 198:664pt 199:406pt 200-203:387pt 204-207:240pt 208:479pt 209:498pt 210-216:442pt 217-220:479pt 221:406pt 222:369pt 223:351pt 224-229:313pt 230:406pt 231-235:240pt 236-239:185pt 240:276pt 241:295pt 242-246:258pt 247:442pt 248:258pt 249-252:295pt 253:276pt 254:295pt 255:276pt </charWidths>
				</metrics>
			</font>
		<font typeface="NewCenturySchlbk" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="1023pt" descent="242pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="80pt" xHeight="461pt" defaultCharWidth="499pt" bBox="-30pt,-984pt,1010pt,242pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:296pt 34:389pt 35-36:556pt 37:833pt 38:815pt 39:204pt 40-41:333pt 42:500pt 43:606pt 44:278pt 45:333pt 46-47:278pt 48-57:556pt 58-59:278pt 60-62:606pt 63:444pt 64:737pt 65-67:722pt 68:778pt 69:722pt 70:667pt 71:778pt 72:833pt 73:407pt 74:556pt 75:778pt 76:667pt 77:944pt 78:815pt 79:778pt 80:667pt 81:778pt 82:722pt 83:630pt 84:667pt 85:815pt 86:722pt 87:981pt 88-89:704pt 90:611pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97-98:556pt 99:444pt 100:574pt 101:500pt 102:333pt 103:537pt 104:611pt 105:315pt 106:296pt 107:593pt 108:315pt 109:889pt 110:611pt 111:500pt 112:574pt 113:556pt 114:444pt 115:463pt 116:389pt 117:611pt 118:537pt 119:778pt 120-121:537pt 122:481pt 123:333pt 124:606pt 125:333pt 126:606pt 128:556pt 130:204pt 131:556pt 132:389pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:630pt 139:259pt 140:1000pt 142:611pt 145-146:204pt 147-148:389pt 149:606pt 150:556pt 151:1000pt 152:333pt 153:1000pt 154:463pt 155:259pt 156:833pt 158:481pt 159:704pt 160:278pt 161:296pt 162-163:556pt 164:606pt 165:704pt 166:606pt 167:500pt 168:333pt 169:737pt 170:334pt 171:426pt 172:606pt 173:333pt 174:737pt 175:500pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:606pt 184-185:333pt 186:300pt 187:426pt 188-190:833pt 191:444pt 192-197:722pt 198:1000pt 199-203:722pt 204-207:407pt 208:778pt 209:815pt 210-214:778pt 215:606pt 216:778pt 217-220:815pt 221:704pt 222:667pt 223:574pt 224-229:556pt 230:796pt 231:444pt 232-235:500pt 236-239:315pt 240:500pt 241:611pt 242-246:500pt 247:549pt 248:500pt 249-252:611pt 253:537pt 254:574pt 255:537pt </charWidths>
				</metrics>
			</font>
		<font typeface="NewCenturySchlbk" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="992pt" descent="273pt" lineHeight="1080pt" capHeight="719pt" italicAngle="-16" stdVW="80pt" xHeight="476pt" defaultCharWidth="499pt" bBox="-105pt,-972pt,1051pt,273pt" textEncoding="ISO-8859-1">
				<charWidths>32:278pt 33:333pt 34:400pt 35:606pt 36:556pt 37:833pt 38:852pt 39:278pt 40-41:333pt 42:500pt 43:606pt 44:278pt 45:333pt 46:278pt 47:606pt 48-57:556pt 58-59:278pt 60-62:606pt 63:444pt 64:747pt 65:704pt 66-67:722pt 68:778pt 69:722pt 70:667pt 71:778pt 72:833pt 73:407pt 74:611pt 75:741pt 76:667pt 77:944pt 78:815pt 79:778pt 80:667pt 81:778pt 82:741pt 83:667pt 84:685pt 85:815pt 86:704pt 87:926pt 88:704pt 89:685pt 90:667pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97:574pt 98:556pt 99:444pt 100:611pt 101:444pt 102:333pt 103:537pt 104:611pt 105:333pt 106:315pt 107:556pt 108:333pt 109:889pt 110:611pt 111:500pt 112:574pt 113:556pt 114-115:444pt 116:352pt 117:611pt 118:519pt 119:778pt 120-121:500pt 122:463pt 123:333pt 124:606pt 125:333pt 126:606pt 128:556pt 130:204pt 131:556pt 132:389pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:981pt 142:667pt 145-146:204pt 147-148:389pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:950pt 154:444pt 155:333pt 156:778pt 158:463pt 159:685pt 160:278pt 161:333pt 162-163:556pt 164:606pt 165:556pt 166:606pt 167:500pt 168:333pt 169:747pt 170:422pt 171:426pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-180:333pt 181:576pt 182:650pt 184-185:333pt 186:372pt 187:426pt 188-190:833pt 191:444pt 192-197:704pt 198:870pt 199-203:722pt 204-207:407pt 208:778pt 209:815pt 210-214:778pt 215:606pt 216:778pt 217-220:815pt 221:685pt 222:667pt 223:556pt 224-229:574pt 230:722pt 231-235:444pt 236-239:333pt 240:500pt 241:611pt 242-246:500pt 247:549pt 248:500pt 249-252:611pt 253:500pt 254:574pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="NewCenturySchlbk" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="986pt" descent="242pt" lineHeight="1080pt" capHeight="719pt" italicAngle="0" stdVW="128pt" xHeight="469pt" defaultCharWidth="499pt" bBox="-150pt,-986pt,1013pt,242pt" textEncoding="ISO-8859-1">
				<charWidths>32:287pt 33:296pt 34:333pt 35-36:574pt 37:833pt 38:852pt 39:241pt 40-41:389pt 42:500pt 43:606pt 44:278pt 45:333pt 46-47:278pt 48-57:574pt 58-59:278pt 60-62:606pt 63:500pt 64:747pt 65:759pt 66-67:778pt 68:833pt 69:759pt 70:722pt 71:833pt 72:870pt 73:444pt 74:648pt 75:815pt 76:722pt 77:981pt 78-79:833pt 80:759pt 81:833pt 82:815pt 83:667pt 84:722pt 85:833pt 86:759pt 87:981pt 88-89:722pt 90:667pt 91:389pt 92:606pt 93:389pt 94:606pt 95:500pt 96:333pt 97:611pt 98:648pt 99:556pt 100:667pt 101:574pt 102:389pt 103:611pt 104:685pt 105:370pt 106:352pt 107:667pt 108:352pt 109:963pt 110:685pt 111:611pt 112:667pt 113:648pt 114:519pt 115:500pt 116:426pt 117:685pt 118:611pt 119:889pt 120-121:611pt 122:537pt 123:389pt 124:606pt 125:389pt 126:606pt 128:574pt 130:241pt 131:574pt 132:481pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:667pt 139:333pt 140:1000pt 142:667pt 145-146:241pt 147-148:481pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:500pt 155:333pt 156:907pt 158:537pt 159:722pt 160:287pt 161:296pt 162-163:574pt 164:606pt 165:722pt 166:606pt 167:500pt 168:333pt 169:747pt 170:367pt 171:500pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:344pt 180:333pt 181:576pt 182:747pt 184:333pt 185:344pt 186:367pt 187:500pt 188-190:861pt 191:500pt 192-197:759pt 198:981pt 199:778pt 200-203:759pt 204-207:444pt 208-214:833pt 215:650pt 216-220:833pt 221:722pt 222:759pt 223-229:611pt 230:870pt 231:556pt 232-235:574pt 236-239:370pt 240:611pt 241:685pt 242-246:611pt 247:549pt 248:611pt 249-252:685pt 253:611pt 254:667pt 255:611pt </charWidths>
				</metrics>
			</font>
		<font typeface="NewCenturySchlbk" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="993pt" descent="219pt" lineHeight="1080pt" capHeight="719pt" italicAngle="-16" stdVW="132pt" xHeight="484pt" defaultCharWidth="499pt" bBox="-132pt,-993pt,1080pt,219pt" textEncoding="ISO-8859-1">
				<charWidths>32:287pt 33:333pt 34:400pt 35:606pt 36:574pt 37:889pt 38:889pt 39:287pt 40-41:407pt 42:500pt 43:606pt 44:287pt 45:333pt 46:287pt 47:278pt 48-57:574pt 58-59:287pt 60-62:606pt 63:481pt 64:747pt 65:741pt 66-67:759pt 68:833pt 69:741pt 70:704pt 71:815pt 72:870pt 73:444pt 74:667pt 75:778pt 76:704pt 77:944pt 78:852pt 79:833pt 80:741pt 81:833pt 82:796pt 83:685pt 84:722pt 85:833pt 86:741pt 87:944pt 88:741pt 89-90:704pt 91:407pt 92:606pt 93:407pt 94:606pt 95:500pt 96:333pt 97:667pt 98:611pt 99:537pt 100:667pt 101:519pt 102:389pt 103:611pt 104:685pt 105:389pt 106:370pt 107:648pt 108:389pt 109:944pt 110:685pt 111:574pt 112:648pt 113:630pt 114:519pt 115:481pt 116:407pt 117:685pt 118:556pt 119:833pt 120:574pt 121-122:519pt 123:407pt 124:606pt 125:407pt 126:606pt 128:574pt 130:259pt 131:574pt 132:481pt 133:1000pt 134-135:500pt 136:333pt 137:1167pt 138:685pt 139:278pt 140:963pt 142:704pt 145-146:259pt 147-148:481pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:950pt 154:481pt 155:278pt 156:852pt 158:519pt 159:704pt 160:287pt 161:333pt 162-165:574pt 166:606pt 167:500pt 168:333pt 169:747pt 170:412pt 171:481pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:344pt 180:333pt 181:576pt 182:650pt 184:333pt 185:344pt 186:356pt 187:481pt 188-190:861pt 191:481pt 192-197:741pt 198:889pt 199:759pt 200-203:741pt 204-207:444pt 208:833pt 209:852pt 210-214:833pt 215:650pt 216-220:833pt 221:704pt 222:741pt 223:574pt 224-229:667pt 230:815pt 231:537pt 232-235:519pt 236-239:389pt 240:574pt 241:685pt 242-246:574pt 247:549pt 248:574pt 249-252:685pt 253:519pt 254:648pt 255:519pt </charWidths>
				</metrics>
			</font>
		<font typeface="Palatino" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="969pt" descent="344pt" lineHeight="1080pt" capHeight="691pt" italicAngle="0" stdVW="84pt" xHeight="462pt" defaultCharWidth="499pt" bBox="-41pt,-969pt,1060pt,344pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:278pt 34:371pt 35:606pt 36:500pt 37:840pt 38:778pt 39:208pt 40-41:333pt 42:389pt 43:606pt 44:250pt 45:333pt 46:250pt 47:606pt 48-57:500pt 58-59:250pt 60-62:606pt 63:444pt 64:747pt 65:778pt 66:611pt 67:709pt 68:774pt 69:611pt 70:556pt 71:763pt 72:832pt 73:337pt 74:333pt 75:726pt 76:611pt 77:946pt 78:831pt 79:786pt 80:604pt 81:786pt 82:668pt 83:525pt 84:613pt 85:778pt 86:722pt 87:1000pt 88-90:667pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97:500pt 98:553pt 99:444pt 100:611pt 101:479pt 102:333pt 103:556pt 104:582pt 105:291pt 106:234pt 107:556pt 108:291pt 109:883pt 110:582pt 111:546pt 112:601pt 113:560pt 114:395pt 115:424pt 116:326pt 117:603pt 118:565pt 119:834pt 120:516pt 121:556pt 122:500pt 123:333pt 124:606pt 125:333pt 126:606pt 128:500pt 130:278pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1144pt 138:525pt 139:331pt 140:998pt 142:667pt 145-146:278pt 147-148:500pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:979pt 154:424pt 155:331pt 156:827pt 158:500pt 159:667pt 160:250pt 161:278pt 162-163:500pt 164:606pt 165:500pt 166:606pt 167:500pt 168:333pt 169:747pt 170:333pt 171:500pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:310pt 180:333pt 181:576pt 182:628pt 184:333pt 185:310pt 186:333pt 187:500pt 188-190:787pt 191:444pt 192-197:778pt 198:944pt 199:709pt 200-203:611pt 204-207:337pt 208:774pt 209:831pt 210-214:786pt 215:606pt 216:833pt 217-220:778pt 221:667pt 222:604pt 223:556pt 224-229:500pt 230:758pt 231:444pt 232-235:479pt 236-239:287pt 240:546pt 241:582pt 242-246:546pt 247:549pt 248:556pt 249-252:603pt 253:556pt 254:601pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Palatino" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="953pt" descent="359pt" lineHeight="1080pt" capHeight="691pt" italicAngle="-11" stdVW="68pt" xHeight="471pt" defaultCharWidth="499pt" bBox="-157pt,-947pt,1063pt,359pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:500pt 35:606pt 36:500pt 37:889pt 38:778pt 39-41:333pt 42:389pt 43:606pt 44:250pt 45:333pt 46:250pt 47:296pt 48-57:500pt 58-59:250pt 60-62:606pt 63:500pt 64:747pt 65:722pt 66:611pt 67:667pt 68:778pt 69:611pt 70:556pt 71:722pt 72:778pt 73-74:333pt 75:667pt 76:556pt 77:944pt 78-79:778pt 80:611pt 81:778pt 82:667pt 83:556pt 84:611pt 85:778pt 86:722pt 87:944pt 88:722pt 89-90:667pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97:444pt 98:463pt 99:407pt 100:500pt 101:389pt 102:278pt 103-104:500pt 105-106:278pt 107:444pt 108:278pt 109:778pt 110:556pt 111:444pt 112:500pt 113:463pt 114-115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:333pt 124:606pt 125:333pt 126:606pt 128:500pt 130:278pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1028pt 142:667pt 145-146:278pt 147-150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:669pt 158:444pt 159:667pt 160:250pt 161:333pt 162-163:500pt 164:606pt 165:667pt 166:606pt 167:500pt 168:333pt 169:747pt 170:333pt 171:500pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:310pt 180:333pt 181:576pt 182:500pt 184:333pt 185:310pt 186:333pt 187:500pt 188-190:787pt 191:500pt 192-197:722pt 198:941pt 199:667pt 200-203:611pt 204-207:333pt 208-214:778pt 215:606pt 216-220:778pt 221:667pt 222:611pt 223:500pt 224-229:444pt 230:638pt 231:407pt 232-235:389pt 236-239:278pt 240:444pt 241:556pt 242-246:444pt 247:549pt 248:444pt 249-252:556pt 253-255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Palatino" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="940pt" descent="430pt" lineHeight="1080pt" capHeight="691pt" italicAngle="0" stdVW="124pt" xHeight="471pt" defaultCharWidth="499pt" bBox="-133pt,-940pt,1016pt,352pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:278pt 34:402pt 35:606pt 36:500pt 37:889pt 38:833pt 39:227pt 40-41:333pt 42:444pt 43:606pt 44:250pt 45:333pt 46:250pt 47:296pt 48-57:500pt 58-59:250pt 60-62:606pt 63:444pt 64:747pt 65:778pt 66:667pt 67:722pt 68:833pt 69:611pt 70:556pt 71-72:833pt 73-74:389pt 75:778pt 76:611pt 77:1000pt 78-79:833pt 80:611pt 81:833pt 82:722pt 83:611pt 84:667pt 85-86:778pt 87:1000pt 88-90:667pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97:500pt 98:611pt 99:444pt 100:611pt 101:500pt 102:389pt 103:556pt 104:611pt 105-106:333pt 107:611pt 108:333pt 109:889pt 110:611pt 111:556pt 112-113:611pt 114:389pt 115:444pt 116:333pt 117:611pt 118:556pt 119:833pt 120:500pt 121:556pt 122:500pt 123:310pt 124:606pt 125:310pt 126:606pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:611pt 139:389pt 140:1000pt 142:667pt 145-146:278pt 147-148:500pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:998pt 154:444pt 155:389pt 156:833pt 158:500pt 159:667pt 160:250pt 161:278pt 162-163:500pt 164:606pt 165:500pt 166:606pt 167:500pt 168:333pt 169:747pt 170:438pt 171:500pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:361pt 180:333pt 181:576pt 182:641pt 184:333pt 185:361pt 186:488pt 187:500pt 188:889pt 189:890pt 190:889pt 191:444pt 192-197:778pt 198:1000pt 199:722pt 200-203:611pt 204-207:389pt 208-214:833pt 215:606pt 216:833pt 217-220:778pt 221:667pt 222-223:611pt 224-229:500pt 230:778pt 231:444pt 232-235:500pt 236-239:333pt 240:556pt 241:611pt 242-246:556pt 247:549pt 248:556pt 249-252:611pt 253:556pt 254:611pt 255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Palatino" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="953pt" descent="320pt" lineHeight="1080pt" capHeight="692pt" italicAngle="-10" stdVW="104pt" xHeight="471pt" defaultCharWidth="499pt" bBox="-177pt,-938pt,1053pt,320pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:500pt 35:606pt 36:500pt 37:889pt 38:833pt 39:250pt 40-41:333pt 42:444pt 43:606pt 44:250pt 45:389pt 46:250pt 47:315pt 48-57:500pt 58-59:250pt 60-62:606pt 63:444pt 64:833pt 65:722pt 66:667pt 67:685pt 68:778pt 69:611pt 70:556pt 71-72:778pt 73-74:389pt 75:722pt 76:611pt 77:944pt 78:778pt 79:833pt 80:667pt 81:833pt 82:722pt 83:556pt 84:611pt 85:778pt 86:667pt 87:1000pt 88:722pt 89:611pt 90:667pt 91:333pt 92:606pt 93:333pt 94:606pt 95:500pt 96:333pt 97:556pt 98:537pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105-106:333pt 107:556pt 108:333pt 109:833pt 110-112:556pt 113:537pt 114:389pt 115:444pt 116:389pt 117-118:556pt 119:833pt 120:500pt 121:556pt 122:500pt 123:333pt 124:606pt 125:333pt 126:606pt 128:500pt 130:250pt 131-132:500pt 133:1000pt 134-135:556pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:944pt 142:667pt 145-146:278pt 147-148:500pt 149:606pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:444pt 155:333pt 156:778pt 158:500pt 159:611pt 160:250pt 161:333pt 162-163:500pt 164:606pt 165:500pt 166:606pt 167:556pt 168:333pt 169:747pt 170:333pt 171:500pt 172:606pt 173:389pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:361pt 180:333pt 181:576pt 182:556pt 184:333pt 185:361pt 186:333pt 187:500pt 188-190:889pt 191:444pt 192-197:722pt 198:944pt 199:685pt 200-203:611pt 204-207:389pt 208-209:778pt 210-214:833pt 215:606pt 216:833pt 217-220:778pt 221:611pt 222:667pt 223-229:556pt 230:738pt 231-235:444pt 236-239:333pt 240-246:556pt 247:549pt 248-255:556pt </charWidths>
				</metrics>
			</font>
		<font typeface="Symbol" size="1000pt" posture="normal" weight="normal" textEncoding="fontSpecific" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="693pt" descent="216pt" lineHeight="1150pt" capHeight="700pt" italicAngle="0" stdVW="120pt" xHeight="695pt" defaultCharWidth="600pt" bBox="0pt,-1005pt,1113pt,220pt" textEncoding="fontSpecific">
				<charWidths>32:250pt 33:333pt 34:713pt 35:500pt 36:549pt 37:833pt 38:778pt 39:439pt 40-41:333pt 42:500pt 43:549pt 44:250pt 45:549pt 46:250pt 47:278pt 48-57:500pt 58-59:278pt 60-62:549pt 63:444pt 64:549pt 65:722pt 66:667pt 67:722pt 68:612pt 69:611pt 70:763pt 71:603pt 72:722pt 73:333pt 74:631pt 75:722pt 76:686pt 77:889pt 78-79:722pt 80:768pt 81:741pt 82:556pt 83:592pt 84:611pt 85:690pt 86:439pt 87:768pt 88:645pt 89:795pt 90:611pt 91:333pt 92:863pt 93:333pt 94:658pt 95-96:500pt 97:631pt 98-99:549pt 100:494pt 101:439pt 102:521pt 103:411pt 104:603pt 105:329pt 106:603pt 107-108:549pt 109:576pt 110:521pt 111-112:549pt 113:521pt 114:549pt 115:603pt 116:439pt 117:576pt 118:713pt 119:686pt 120:493pt 121:686pt 122:494pt 123:480pt 124:200pt 125:480pt 126:549pt 161:620pt 162:247pt 163:549pt 164:167pt 165:713pt 166:500pt 167-170:753pt 171:1042pt 172:987pt 173:603pt 174:987pt 175:603pt 176:400pt 177:549pt 178:411pt 179-180:549pt 181:713pt 182:494pt 183:460pt 184-187:549pt 188:1000pt 189:603pt 190:1000pt 191:658pt 192:823pt 193:686pt 194:795pt 195:987pt 196-197:768pt 198:823pt 199-200:768pt 201-207:713pt 208:768pt 209:713pt 210-211:790pt 212:890pt 213:823pt 214:549pt 215:250pt 216:713pt 217-218:603pt 219:1042pt 220:987pt 221:603pt 222:987pt 223:603pt 224:494pt 225:329pt 226-227:790pt 228:786pt 229:713pt 230-235:384pt 236-239:494pt 241:329pt 242:274pt 243-245:686pt 246-251:384pt 252-254:494pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="2">
			<metrics pitch="variable" scalable="1" ascent="782pt" descent="218pt" lineHeight="1200pt" capHeight="662pt" italicAngle="0" stdVW="84pt" xHeight="450pt" defaultCharWidth="250pt" bBox="-168pt,-898pt,1000pt,218pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:408pt 35-36:500pt 37:833pt 38:778pt 39:180pt 40-41:333pt 42:500pt 43:564pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:278pt 60-62:564pt 63:444pt 64:921pt 65:722pt 66-67:667pt 68:722pt 69:611pt 70:556pt 71-72:722pt 73:333pt 74:389pt 75:722pt 76:611pt 77:889pt 78-79:722pt 80:556pt 81:722pt 82:667pt 83:556pt 84:611pt 85-86:722pt 87:944pt 88-89:722pt 90:611pt 91:333pt 92:278pt 93:333pt 94:469pt 95:500pt 96:333pt 97:444pt 98:500pt 99:444pt 100:500pt 101:444pt 102:333pt 103-104:500pt 105-106:278pt 107:500pt 108:278pt 109:778pt 110-113:500pt 114:333pt 115:389pt 116:278pt 117-118:500pt 119:722pt 120-121:500pt 122:444pt 123:480pt 124:200pt 125:480pt 126:541pt 128:500pt 130:333pt 131:500pt 132:444pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:889pt 142:611pt 145-146:333pt 147-148:444pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:980pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:200pt 167:500pt 168:333pt 169:760pt 170:276pt 171:500pt 172:564pt 173:333pt 174:760pt 175:333pt 176:400pt 177:564pt 178-179:300pt 180:333pt 181:510pt 182:453pt 183:250pt 184:333pt 185:300pt 186:310pt 187:500pt 188-190:750pt 191:444pt 192-197:722pt 198:889pt 199:667pt 200-203:611pt 204-207:333pt 208-214:722pt 215:564pt 216-221:722pt 222:556pt 223:500pt 224-229:444pt 230:667pt 231-235:444pt 236-239:278pt 240-246:500pt 247:564pt 248-255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="66">
			<metrics pitch="variable" scalable="1" ascent="783pt" descent="217pt" lineHeight="1200pt" capHeight="653pt" italicAngle="-16" stdVW="76pt" xHeight="441pt" defaultCharWidth="250pt" bBox="-169pt,-883pt,1010pt,217pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:420pt 35-36:500pt 37:833pt 38:778pt 39:214pt 40-41:333pt 42:500pt 43:675pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:675pt 63:500pt 64:920pt 65-66:611pt 67:667pt 68:722pt 69-70:611pt 71-72:722pt 73:333pt 74:444pt 75:667pt 76:556pt 77:833pt 78:667pt 79:722pt 80:611pt 81:722pt 82:611pt 83:500pt 84:556pt 85:722pt 86:611pt 87:833pt 88:611pt 89-90:556pt 91:389pt 92:278pt 93:389pt 94:422pt 95:500pt 96:333pt 97-98:500pt 99:444pt 100:500pt 101:444pt 102:278pt 103-104:500pt 105-106:278pt 107:444pt 108:278pt 109:722pt 110-113:500pt 114-115:389pt 116:278pt 117:500pt 118:444pt 119:667pt 120-121:444pt 122:389pt 123:400pt 124:275pt 125:400pt 126:541pt 128:500pt 130:333pt 131:500pt 132:556pt 133:889pt 134-135:500pt 136:333pt 137:1000pt 138:500pt 139:333pt 140:944pt 142:556pt 145-146:333pt 147-148:556pt 149:350pt 150:500pt 151:889pt 152:333pt 153:980pt 154:389pt 155:333pt 156:667pt 158:389pt 159:556pt 160:250pt 161:389pt 162-165:500pt 166:275pt 167:500pt 168:333pt 169:760pt 170:276pt 171:500pt 172:675pt 173:333pt 174:760pt 175:333pt 176:400pt 177:675pt 178-179:300pt 180:333pt 181:514pt 182:523pt 183:250pt 184:333pt 185:300pt 186:310pt 187:500pt 188-190:750pt 191:500pt 192-197:611pt 198:889pt 199:667pt 200-203:611pt 204-207:333pt 208:722pt 209:667pt 210-214:722pt 215:675pt 216-220:722pt 221:556pt 222:611pt 223-229:500pt 230:667pt 231-235:444pt 236-239:278pt 240-246:500pt 247:675pt 248-252:500pt 253:444pt 254:500pt 255:444pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="2">
			<metrics pitch="variable" scalable="1" ascent="782pt" descent="218pt" lineHeight="1200pt" capHeight="676pt" italicAngle="0" stdVW="140pt" xHeight="461pt" defaultCharWidth="250pt" bBox="-168pt,-935pt,1000pt,218pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:555pt 35-36:500pt 37:1000pt 38:833pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:930pt 65:722pt 66:667pt 67-68:722pt 69:667pt 70:611pt 71-72:778pt 73:389pt 74:500pt 75:778pt 76:667pt 77:944pt 78:722pt 79:778pt 80:611pt 81:778pt 82:722pt 83:556pt 84:667pt 85-86:722pt 87:1000pt 88-89:722pt 90:667pt 91:333pt 92:278pt 93:333pt 94:581pt 95:500pt 96:333pt 97:500pt 98:556pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105:278pt 106:333pt 107:556pt 108:278pt 109:833pt 110:556pt 111:500pt 112-113:556pt 114:444pt 115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:394pt 124:220pt 125:394pt 126:520pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:333pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:601pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="Type1" flags="66">
			<metrics pitch="variable" scalable="1" ascent="782pt" descent="218pt" lineHeight="1200pt" capHeight="669pt" italicAngle="-15" stdVW="116pt" xHeight="462pt" defaultCharWidth="250pt" bBox="-200pt,-921pt,996pt,218pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:389pt 34:555pt 35-36:500pt 37:833pt 38:778pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:832pt 65-67:667pt 68:722pt 69-70:667pt 71:722pt 72:778pt 73:389pt 74:500pt 75:667pt 76:611pt 77:889pt 78-79:722pt 80:611pt 81:722pt 82:667pt 83:556pt 84:611pt 85:722pt 86:667pt 87:889pt 88:667pt 89-90:611pt 91:333pt 92:278pt 93:333pt 94:570pt 95:500pt 96:333pt 97-98:500pt 99:444pt 100:500pt 101:444pt 102:333pt 103:500pt 104:556pt 105-106:278pt 107:500pt 108:278pt 109:778pt 110:556pt 111-113:500pt 114-115:389pt 116:278pt 117:556pt 118:444pt 119:667pt 120:500pt 121:444pt 122:389pt 123:348pt 124:220pt 125:348pt 126:570pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:944pt 142:611pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:389pt 159:611pt 160:250pt 161:389pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:266pt 171:500pt 172:606pt 173:333pt 174:747pt 175:333pt 176:400pt 177:570pt 178-179:300pt 180:333pt 181:532pt 182:500pt 183:250pt 184:333pt 185-186:300pt 187:500pt 188-190:750pt 191:500pt 192-197:667pt 198:944pt 199-203:667pt 204-207:389pt 208-214:722pt 215:570pt 216-220:722pt 221-222:611pt 223-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:570pt 248:500pt 249-252:556pt 253:444pt 254:500pt 255:444pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times New Roman" size="1000pt" posture="normal" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="693pt" descent="216pt" lineHeight="1150pt" capHeight="663pt" italicAngle="0" stdVW="80pt" xHeight="448pt" defaultCharWidth="778pt" bBox="-568pt,-1007pt,2028pt,307pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:408pt 35-36:500pt 37:833pt 38:778pt 39:180pt 40-41:333pt 42:500pt 43:564pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:278pt 60-62:564pt 63:444pt 64:921pt 65:722pt 66-67:667pt 68:722pt 69:611pt 70:556pt 71-72:722pt 73:333pt 74:389pt 75:722pt 76:611pt 77:889pt 78-79:722pt 80:556pt 81:722pt 82:667pt 83:556pt 84:611pt 85-86:722pt 87:944pt 88-89:722pt 90:611pt 91:333pt 92:278pt 93:333pt 94:469pt 95:500pt 96:333pt 97:444pt 98:500pt 99:444pt 100:500pt 101:444pt 102:333pt 103-104:500pt 105-106:278pt 107:500pt 108:278pt 109:778pt 110-113:500pt 114:333pt 115:389pt 116:278pt 117-118:500pt 119:722pt 120-121:500pt 122:444pt 123:480pt 124:200pt 125:480pt 126:541pt 128:500pt 130:333pt 131:500pt 132:444pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:889pt 142:611pt 145-146:333pt 147-148:444pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:980pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:200pt 167:500pt 168:333pt 169:760pt 170:276pt 171:500pt 172:564pt 173:333pt 174:760pt 175:500pt 176:400pt 177:549pt 178-179:300pt 180:333pt 181:576pt 182:453pt 183:250pt 184:333pt 185:300pt 186:310pt 187:500pt 188-190:750pt 191:444pt 192-197:722pt 198:889pt 199:667pt 200-203:611pt 204-207:333pt 208-214:722pt 215:564pt 216-221:722pt 222:556pt 223:500pt 224-229:444pt 230:667pt 231-235:444pt 236-239:278pt 240-246:500pt 247:549pt 248-255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times New Roman" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="694pt" descent="216pt" lineHeight="1150pt" capHeight="663pt" italicAngle="-17" stdVW="72pt" xHeight="442pt" defaultCharWidth="778pt" bBox="-498pt,-1023pt,1120pt,307pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:420pt 35-36:500pt 37:833pt 38:778pt 39:214pt 40-41:333pt 42:500pt 43:675pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:675pt 63:500pt 64:920pt 65-66:611pt 67:667pt 68:722pt 69-70:611pt 71-72:722pt 73:333pt 74:444pt 75:667pt 76:556pt 77:833pt 78:667pt 79:722pt 80:611pt 81:722pt 82:611pt 83:500pt 84:556pt 85:722pt 86:611pt 87:833pt 88:611pt 89-90:556pt 91:389pt 92:278pt 93:389pt 94:422pt 95:500pt 96:333pt 97-98:500pt 99:444pt 100:500pt 101:444pt 102:278pt 103-104:500pt 105-106:278pt 107:444pt 108:278pt 109:722pt 110-113:500pt 114-115:389pt 116:278pt 117:500pt 118:444pt 119:667pt 120-121:444pt 122:389pt 123:400pt 124:275pt 125:400pt 126:541pt 128:500pt 130:333pt 131:500pt 132:556pt 133:889pt 134-135:500pt 136:333pt 137:1000pt 138:500pt 139:333pt 140:944pt 142:556pt 145-146:333pt 147-148:556pt 149:350pt 150:500pt 151:889pt 152:333pt 153:980pt 154:389pt 155:333pt 156:667pt 158:389pt 159:556pt 160:250pt 161:389pt 162-165:500pt 166:275pt 167:500pt 168:333pt 169:760pt 170:276pt 171:500pt 172:675pt 173:333pt 174:760pt 175:500pt 176:400pt 177:549pt 178-179:300pt 180:333pt 181:576pt 182:523pt 183:250pt 184:333pt 185:300pt 186:310pt 187:500pt 188-190:750pt 191:500pt 192-197:611pt 198:889pt 199:667pt 200-203:611pt 204-207:333pt 208:722pt 209:667pt 210-214:722pt 215:675pt 216-220:722pt 221:556pt 222:611pt 223-229:500pt 230:667pt 231-235:444pt 236-239:278pt 240-246:500pt 247:549pt 248-252:500pt 253:444pt 254:500pt 255:444pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times New Roman" size="1000pt" posture="normal" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="677pt" descent="216pt" lineHeight="1150pt" capHeight="663pt" italicAngle="0" stdVW="136pt" xHeight="457pt" defaultCharWidth="778pt" bBox="-558pt,-1026pt,2034pt,307pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:333pt 34:555pt 35-36:500pt 37:1000pt 38:833pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:930pt 65:722pt 66:667pt 67-68:722pt 69:667pt 70:611pt 71-72:778pt 73:389pt 74:500pt 75:778pt 76:667pt 77:944pt 78:722pt 79:778pt 80:611pt 81:778pt 82:722pt 83:556pt 84:667pt 85-86:722pt 87:1000pt 88-89:722pt 90:667pt 91:333pt 92:278pt 93:333pt 94:581pt 95:500pt 96:333pt 97:500pt 98:556pt 99:444pt 100:556pt 101:444pt 102:333pt 103:500pt 104:556pt 105:278pt 106:333pt 107:556pt 108:278pt 109:833pt 110:556pt 111:500pt 112-113:556pt 114:444pt 115:389pt 116:333pt 117:556pt 118:500pt 119:722pt 120-121:500pt 122:444pt 123:394pt 124:220pt 125:394pt 126:520pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:1000pt 142:667pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:444pt 159:722pt 160:250pt 161:333pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:300pt 171:500pt 172:570pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:300pt 180:333pt 181:576pt 182:540pt 183:250pt 184:333pt 185:300pt 186:330pt 187:500pt 188-190:750pt 191:500pt 192-197:722pt 198:1000pt 199:722pt 200-203:667pt 204-207:389pt 208-209:722pt 210-214:778pt 215:570pt 216:778pt 217-221:722pt 222:611pt 223:556pt 224-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:549pt 248:500pt 249-252:556pt 253:500pt 254:556pt 255:500pt </charWidths>
				</metrics>
			</font>
		<font typeface="Times New Roman" size="1000pt" posture="italic" weight="bold" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="66">
			<metrics pitch="variable" scalable="1" ascent="677pt" descent="216pt" lineHeight="1150pt" capHeight="663pt" italicAngle="-17" stdVW="124pt" xHeight="453pt" defaultCharWidth="778pt" bBox="-547pt,-1032pt,1206pt,307pt" textEncoding="ISO-8859-1">
				<charWidths>32:250pt 33:389pt 34:555pt 35-36:500pt 37:833pt 38:778pt 39:278pt 40-41:333pt 42:500pt 43:570pt 44:250pt 45:333pt 46:250pt 47:278pt 48-57:500pt 58-59:333pt 60-62:570pt 63:500pt 64:832pt 65-67:667pt 68:722pt 69-70:667pt 71:722pt 72:778pt 73:389pt 74:500pt 75:667pt 76:611pt 77:889pt 78-79:722pt 80:611pt 81:722pt 82:667pt 83:556pt 84:611pt 85:722pt 86:667pt 87:889pt 88:667pt 89-90:611pt 91:333pt 92:278pt 93:333pt 94:570pt 95:500pt 96:333pt 97-98:500pt 99:444pt 100:500pt 101:444pt 102:333pt 103:500pt 104:556pt 105-106:278pt 107:500pt 108:278pt 109:778pt 110:556pt 111-113:500pt 114-115:389pt 116:278pt 117:556pt 118:444pt 119:667pt 120:500pt 121:444pt 122:389pt 123:348pt 124:220pt 125:348pt 126:570pt 128:500pt 130:333pt 131-132:500pt 133:1000pt 134-135:500pt 136:333pt 137:1000pt 138:556pt 139:333pt 140:944pt 142:611pt 145-146:333pt 147-148:500pt 149:350pt 150:500pt 151:1000pt 152:333pt 153:1000pt 154:389pt 155:333pt 156:722pt 158:389pt 159:611pt 160:250pt 161:389pt 162-165:500pt 166:220pt 167:500pt 168:333pt 169:747pt 170:266pt 171:500pt 172:606pt 173:333pt 174:747pt 175:500pt 176:400pt 177:549pt 178-179:300pt 180:333pt 181:576pt 182:500pt 183:250pt 184:333pt 185-186:300pt 187:500pt 188-190:750pt 191:500pt 192-197:667pt 198:944pt 199-203:667pt 204-207:389pt 208-214:722pt 215:570pt 216-220:722pt 221-222:611pt 223-229:500pt 230:722pt 231-235:444pt 236-239:278pt 240:500pt 241:556pt 242-246:500pt 247:549pt 248:500pt 249-252:556pt 253:444pt 254:500pt 255:444pt </charWidths>
				</metrics>
			</font>
		<font typeface="Wingdings" size="1000pt" posture="normal" weight="normal" textEncoding="fontSpecific" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="771pt" descent="205pt" lineHeight="1024pt" capHeight="754pt" italicAngle="0" stdVW="580pt" xHeight="723pt" defaultCharWidth="500pt" bBox="0pt,-899pt,1359pt,211pt" textEncoding="fontSpecific">
				<charWidths>32:1000pt 33:1030pt 34:1145pt 35:1301pt 36:1344pt 37:894pt 38:1217pt 39:458pt 40:1084pt 41:892pt 42-43:1132pt 44-45:1171pt 46:1441pt 47:1443pt 48:1096pt 49:1343pt 50-51:699pt 52:892pt 53:554pt 54:602pt 55:1072pt 56:948pt 57:1078pt 58:939pt 59:891pt 60-61:892pt 62:891pt 63-64:910pt 65:587pt 66:793pt 67-68:674pt 69-70:942pt 71-72:549pt 73:892pt 74-76:843pt 77:1111pt 78:660pt 79:849pt 80:1089pt 81:888pt 82:880pt 83:650pt 84:813pt 85-86:747pt 87:723pt 88:693pt 89:794pt 90:885pt 91:892pt 92:896pt 93:891pt 94:1156pt 95:1054pt 96:964pt 97:1090pt 98:941pt 99:933pt 100:946pt 101:1025pt 102:929pt 103:1096pt 104:1065pt 105:780pt 106:1050pt 107:1271pt 108:747pt 109:953pt 110:747pt 111-114:891pt 115:458pt 116:747pt 117:986pt 118:891pt 119:578pt 120-121:1060pt 122:891pt 123-124:892pt 125-126:530pt 128-149:892pt 150-157:1000pt 158:313pt 159:458pt 160:313pt 161-165:891pt 166:953pt 167:458pt 168-198:891pt 199-202:1048pt 203-212:1000pt 213-214:1253pt 215-216:794pt 217-222:891pt 223-224:979pt 225-226:891pt 227-230:776pt 231-232:1067pt 233-234:891pt 235-238:873pt 239-240:891pt 241-242:811pt 243:1060pt 244:811pt 245-248:782pt 249:482pt 250:385pt 251:635pt 252:786pt 253-254:892pt 255:1035pt </charWidths>
				</metrics>
			</font>
		<font typeface="ZapfChancery" size="1000pt" posture="italic" weight="normal" textEncoding="ISO-8859-1" select="implicitLink" type="TrueType" flags="2">
			<metrics pitch="variable" scalable="1" ascent="881pt" descent="298pt" lineHeight="1080pt" capHeight="585pt" italicAngle="0" stdVW="68pt" xHeight="433pt" defaultCharWidth="499pt" bBox="-188pt,-822pt,1063pt,298pt" textEncoding="ISO-8859-1">
				<charWidths>32:220pt 33:280pt 34:220pt 35:680pt 36:440pt 37:680pt 38:780pt 39:160pt 40:260pt 41:220pt 42:420pt 43:520pt 44:220pt 45:280pt 46:220pt 47:340pt 48-57:440pt 58:260pt 59:240pt 60-62:520pt 63:380pt 64:700pt 65:620pt 66:600pt 67:520pt 68:700pt 69:620pt 70:580pt 71:620pt 72:680pt 73:380pt 74:400pt 75:660pt 76:580pt 77:840pt 78:700pt 79:600pt 80:540pt 81-82:600pt 83:460pt 84:500pt 85:740pt 86:640pt 87:880pt 88-89:560pt 90:620pt 91:240pt 92:480pt 93:320pt 94:520pt 95:500pt 96:220pt 97-98:420pt 99:340pt 100:440pt 101:340pt 102:320pt 103:400pt 104:440pt 105:240pt 106:220pt 107:440pt 108:240pt 109:620pt 110:460pt 111:400pt 112:440pt 113:400pt 114:300pt 115-116:320pt 117:460pt 118:440pt 119:680pt 120:420pt 121:400pt 122:440pt 123:240pt 124:520pt 125:240pt 126:520pt 128:440pt 130:180pt 131:400pt 132:280pt 133:1000pt 134:460pt 135:480pt 136:340pt 137:960pt 138:460pt 139:240pt 140:820pt 142:620pt 145-146:240pt 147:340pt 148:360pt 149:600pt 150:500pt 151:1000pt 152:440pt 153:1000pt 154:320pt 155:260pt 156:560pt 158:440pt 159:560pt 160:220pt 161:280pt 162:440pt 163:480pt 164:600pt 165:720pt 166:520pt 167:420pt 168:360pt 169:740pt 170:260pt 171:340pt 172:600pt 173:280pt 174:740pt 175:500pt 176:400pt 177:549pt 178-179:264pt 180:300pt 181:576pt 182:500pt 184:300pt 185:264pt 186:260pt 187:380pt 188-190:660pt 191:400pt 192-197:620pt 198:740pt 199:520pt 200-203:620pt 204-207:380pt 208-209:700pt 210-214:600pt 215:520pt 216:660pt 217-220:740pt 221:560pt 222:540pt 223-229:420pt 230:540pt 231-235:340pt 236-239:240pt 240:400pt 241:460pt 242-246:400pt 247:549pt 248:440pt 249-252:460pt 253:400pt 254:440pt 255:400pt </charWidths>
				</metrics>
			</font>
		<font typeface="ITC Zapf Dingbats" size="1000pt" posture="normal" weight="normal" textEncoding="fontSpecific" select="implicitLink" type="TrueType" flags="0">
			<metrics pitch="variable" scalable="1" ascent="799pt" descent="204pt" lineHeight="1080pt" capHeight="700pt" italicAngle="0" stdVW="75pt" xHeight="500pt" defaultCharWidth="499pt" bBox="0pt,-799pt,983pt,204pt" textEncoding="fontSpecific">
				<charWidths>32:278pt 33:974pt 34:961pt 35:974pt 36:980pt 37:719pt 38:789pt 39:790pt 40:791pt 41:690pt 42:960pt 43:939pt 44:549pt 45:855pt 46:911pt 47:933pt 48:911pt 49:945pt 50:974pt 51:755pt 52:846pt 53:762pt 54:761pt 55:571pt 56:677pt 57:763pt 58:760pt 59:759pt 60:754pt 61:494pt 62:552pt 63:537pt 64:577pt 65:692pt 66:786pt 67-68:788pt 69:790pt 70:793pt 71:794pt 72:816pt 73:823pt 74:789pt 75:841pt 76:823pt 77:833pt 78:816pt 79:831pt 80:923pt 81:744pt 82:723pt 83:749pt 84:790pt 85:792pt 86:695pt 87:776pt 88:768pt 89:792pt 90:759pt 91:707pt 92:708pt 93:682pt 94:701pt 95:826pt 96:815pt 97-98:789pt 99:707pt 100:687pt 101:696pt 102:689pt 103:786pt 104:787pt 105:713pt 106:791pt 107:785pt 108:791pt 109:873pt 110:761pt 111-112:762pt 113-114:759pt 115-116:892pt 117:788pt 118:784pt 119:438pt 120:138pt 121:277pt 122:415pt 123-124:392pt 125-126:668pt 128-129:390pt 130-131:317pt 132-133:276pt 134-135:509pt 136-137:410pt 138-139:234pt 140-141:334pt 161:732pt 162-163:544pt 164:910pt 165:667pt 166-167:760pt 168:776pt 169:595pt 170:694pt 171:626pt 172-211:788pt 212:894pt 213:838pt 214:1016pt 215:458pt 216:748pt 217:924pt 218:748pt 219:918pt 220:927pt 221-222:928pt 223:834pt 224:873pt 225:828pt 226-227:924pt 228:917pt 229-230:930pt 231:463pt 232:883pt 233-234:836pt 235-236:867pt 237-238:696pt 239:874pt 241:874pt 242:760pt 243:946pt 244:771pt 245:865pt 246:771pt 247:888pt 248:967pt 249:889pt 250:831pt 251:873pt 252:927pt 253:970pt 254:918pt </charWidths>
				</metrics>
			</font>
		<supportedEncodings>
			<encoding>ISO-8859-1</encoding>   <!-- Adobe Latin character collection -->
			<encoding>UTF-16</encoding>       <!-- Unicode 3.0 character collection -->
			<encoding>fontSpecific</encoding> <!-- Symbol character collection -->
			</supportedEncodings>
		<supportedTechnologies>
			<technology>TrueType</technology> <!-- TrueType font format, includes TrueType OpenType -->
			<technology>Type1</technology>	   <!-- Adobe Type 1 font format, includes CFF OpenType -->
			<technology>CID</technology>	   <!-- Adobe CID-keyed font format -->
			<technology>ATC</technology>	   <!-- Adobe Type Composer font format -->
			</supportedTechnologies>
		</deviceInfo>
	</xdc>
</xdp:xdp>
