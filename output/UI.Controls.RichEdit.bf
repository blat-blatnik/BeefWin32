using System;

// namespace UI.Controls.RichEdit
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WM_CONTEXTMENU = 123;
		public const uint32 WM_UNICHAR = 265;
		public const uint32 WM_PRINTCLIENT = 792;
		public const uint32 EM_CANPASTE = 1074;
		public const uint32 EM_DISPLAYBAND = 1075;
		public const uint32 EM_EXGETSEL = 1076;
		public const uint32 EM_EXLIMITTEXT = 1077;
		public const uint32 EM_EXLINEFROMCHAR = 1078;
		public const uint32 EM_EXSETSEL = 1079;
		public const uint32 EM_FINDTEXT = 1080;
		public const uint32 EM_FORMATRANGE = 1081;
		public const uint32 EM_GETCHARFORMAT = 1082;
		public const uint32 EM_GETEVENTMASK = 1083;
		public const uint32 EM_GETOLEINTERFACE = 1084;
		public const uint32 EM_GETPARAFORMAT = 1085;
		public const uint32 EM_GETSELTEXT = 1086;
		public const uint32 EM_HIDESELECTION = 1087;
		public const uint32 EM_PASTESPECIAL = 1088;
		public const uint32 EM_REQUESTRESIZE = 1089;
		public const uint32 EM_SELECTIONTYPE = 1090;
		public const uint32 EM_SETBKGNDCOLOR = 1091;
		public const uint32 EM_SETCHARFORMAT = 1092;
		public const uint32 EM_SETEVENTMASK = 1093;
		public const uint32 EM_SETOLECALLBACK = 1094;
		public const uint32 EM_SETPARAFORMAT = 1095;
		public const uint32 EM_SETTARGETDEVICE = 1096;
		public const uint32 EM_STREAMIN = 1097;
		public const uint32 EM_STREAMOUT = 1098;
		public const uint32 EM_GETTEXTRANGE = 1099;
		public const uint32 EM_FINDWORDBREAK = 1100;
		public const uint32 EM_SETOPTIONS = 1101;
		public const uint32 EM_GETOPTIONS = 1102;
		public const uint32 EM_FINDTEXTEX = 1103;
		public const uint32 EM_GETWORDBREAKPROCEX = 1104;
		public const uint32 EM_SETWORDBREAKPROCEX = 1105;
		public const uint32 EM_SETUNDOLIMIT = 1106;
		public const uint32 EM_REDO = 1108;
		public const uint32 EM_CANREDO = 1109;
		public const uint32 EM_GETUNDONAME = 1110;
		public const uint32 EM_GETREDONAME = 1111;
		public const uint32 EM_STOPGROUPTYPING = 1112;
		public const uint32 EM_SETTEXTMODE = 1113;
		public const uint32 EM_GETTEXTMODE = 1114;
		public const uint32 EM_AUTOURLDETECT = 1115;
		public const uint32 AURL_ENABLEURL = 1;
		public const uint32 AURL_ENABLEEMAILADDR = 2;
		public const uint32 AURL_ENABLETELNO = 4;
		public const uint32 AURL_ENABLEEAURLS = 8;
		public const uint32 AURL_ENABLEDRIVELETTERS = 16;
		public const uint32 AURL_DISABLEMIXEDLGC = 32;
		public const uint32 EM_GETAUTOURLDETECT = 1116;
		public const uint32 EM_SETPALETTE = 1117;
		public const uint32 EM_GETTEXTEX = 1118;
		public const uint32 EM_GETTEXTLENGTHEX = 1119;
		public const uint32 EM_SHOWSCROLLBAR = 1120;
		public const uint32 EM_SETTEXTEX = 1121;
		public const uint32 EM_SETPUNCTUATION = 1124;
		public const uint32 EM_GETPUNCTUATION = 1125;
		public const uint32 EM_SETWORDWRAPMODE = 1126;
		public const uint32 EM_GETWORDWRAPMODE = 1127;
		public const uint32 EM_SETIMECOLOR = 1128;
		public const uint32 EM_GETIMECOLOR = 1129;
		public const uint32 EM_SETIMEOPTIONS = 1130;
		public const uint32 EM_GETIMEOPTIONS = 1131;
		public const uint32 EM_CONVPOSITION = 1132;
		public const uint32 EM_SETLANGOPTIONS = 1144;
		public const uint32 EM_GETLANGOPTIONS = 1145;
		public const uint32 EM_GETIMECOMPMODE = 1146;
		public const uint32 EM_FINDTEXTW = 1147;
		public const uint32 EM_FINDTEXTEXW = 1148;
		public const uint32 EM_RECONVERSION = 1149;
		public const uint32 EM_SETIMEMODEBIAS = 1150;
		public const uint32 EM_GETIMEMODEBIAS = 1151;
		public const uint32 EM_SETBIDIOPTIONS = 1224;
		public const uint32 EM_GETBIDIOPTIONS = 1225;
		public const uint32 EM_SETTYPOGRAPHYOPTIONS = 1226;
		public const uint32 EM_GETTYPOGRAPHYOPTIONS = 1227;
		public const uint32 EM_SETEDITSTYLE = 1228;
		public const uint32 EM_GETEDITSTYLE = 1229;
		public const uint32 SES_EMULATESYSEDIT = 1;
		public const uint32 SES_BEEPONMAXTEXT = 2;
		public const uint32 SES_EXTENDBACKCOLOR = 4;
		public const uint32 SES_MAPCPS = 8;
		public const uint32 SES_HYPERLINKTOOLTIPS = 8;
		public const uint32 SES_EMULATE10 = 16;
		public const uint32 SES_DEFAULTLATINLIGA = 16;
		public const uint32 SES_USECRLF = 32;
		public const uint32 SES_NOFOCUSLINKNOTIFY = 32;
		public const uint32 SES_USEAIMM = 64;
		public const uint32 SES_NOIME = 128;
		public const uint32 SES_ALLOWBEEPS = 256;
		public const uint32 SES_UPPERCASE = 512;
		public const uint32 SES_LOWERCASE = 1024;
		public const uint32 SES_NOINPUTSEQUENCECHK = 2048;
		public const uint32 SES_BIDI = 4096;
		public const uint32 SES_SCROLLONKILLFOCUS = 8192;
		public const uint32 SES_XLTCRCRLFTOCR = 16384;
		public const uint32 SES_DRAFTMODE = 32768;
		public const uint32 SES_USECTF = 65536;
		public const uint32 SES_HIDEGRIDLINES = 131072;
		public const uint32 SES_USEATFONT = 262144;
		public const uint32 SES_CUSTOMLOOK = 524288;
		public const uint32 SES_LBSCROLLNOTIFY = 1048576;
		public const uint32 SES_CTFALLOWEMBED = 2097152;
		public const uint32 SES_CTFALLOWSMARTTAG = 4194304;
		public const uint32 SES_CTFALLOWPROOFING = 8388608;
		public const uint32 SES_LOGICALCARET = 16777216;
		public const uint32 SES_WORDDRAGDROP = 33554432;
		public const uint32 SES_SMARTDRAGDROP = 67108864;
		public const uint32 SES_MULTISELECT = 134217728;
		public const uint32 SES_CTFNOLOCK = 268435456;
		public const uint32 SES_NOEALINEHEIGHTADJUST = 536870912;
		public const uint32 SES_MAX = 536870912;
		public const uint32 IMF_AUTOKEYBOARD = 1;
		public const uint32 IMF_AUTOFONT = 2;
		public const uint32 IMF_IMECANCELCOMPLETE = 4;
		public const uint32 IMF_IMEALWAYSSENDNOTIFY = 8;
		public const uint32 IMF_AUTOFONTSIZEADJUST = 16;
		public const uint32 IMF_UIFONTS = 32;
		public const uint32 IMF_NOIMPLICITLANG = 64;
		public const uint32 IMF_DUALFONT = 128;
		public const uint32 IMF_NOKBDLIDFIXUP = 512;
		public const uint32 IMF_NORTFFONTSUBSTITUTE = 1024;
		public const uint32 IMF_SPELLCHECKING = 2048;
		public const uint32 IMF_TKBPREDICTION = 4096;
		public const uint32 IMF_IMEUIINTEGRATION = 8192;
		public const uint32 ICM_NOTOPEN = 0;
		public const uint32 ICM_LEVEL3 = 1;
		public const uint32 ICM_LEVEL2 = 2;
		public const uint32 ICM_LEVEL2_5 = 3;
		public const uint32 ICM_LEVEL2_SUI = 4;
		public const uint32 ICM_CTF = 5;
		public const uint32 TO_ADVANCEDTYPOGRAPHY = 1;
		public const uint32 TO_SIMPLELINEBREAK = 2;
		public const uint32 TO_DISABLECUSTOMTEXTOUT = 4;
		public const uint32 TO_ADVANCEDLAYOUT = 8;
		public const uint32 EM_OUTLINE = 1244;
		public const uint32 EM_GETSCROLLPOS = 1245;
		public const uint32 EM_SETSCROLLPOS = 1246;
		public const uint32 EM_SETFONTSIZE = 1247;
		public const uint32 EM_GETZOOM = 1248;
		public const uint32 EM_SETZOOM = 1249;
		public const uint32 EM_GETVIEWKIND = 1250;
		public const uint32 EM_SETVIEWKIND = 1251;
		public const uint32 EM_GETPAGE = 1252;
		public const uint32 EM_SETPAGE = 1253;
		public const uint32 EM_GETHYPHENATEINFO = 1254;
		public const uint32 EM_SETHYPHENATEINFO = 1255;
		public const uint32 EM_GETPAGEROTATE = 1259;
		public const uint32 EM_SETPAGEROTATE = 1260;
		public const uint32 EM_GETCTFMODEBIAS = 1261;
		public const uint32 EM_SETCTFMODEBIAS = 1262;
		public const uint32 EM_GETCTFOPENSTATUS = 1264;
		public const uint32 EM_SETCTFOPENSTATUS = 1265;
		public const uint32 EM_GETIMECOMPTEXT = 1266;
		public const uint32 EM_ISIME = 1267;
		public const uint32 EM_GETIMEPROPERTY = 1268;
		public const uint32 EM_GETQUERYRTFOBJ = 1293;
		public const uint32 EM_SETQUERYRTFOBJ = 1294;
		public const uint32 EPR_0 = 0;
		public const uint32 EPR_270 = 1;
		public const uint32 EPR_180 = 2;
		public const uint32 EPR_90 = 3;
		public const uint32 EPR_SE = 5;
		public const uint32 CTFMODEBIAS_DEFAULT = 0;
		public const uint32 CTFMODEBIAS_FILENAME = 1;
		public const uint32 CTFMODEBIAS_NAME = 2;
		public const uint32 CTFMODEBIAS_READING = 3;
		public const uint32 CTFMODEBIAS_DATETIME = 4;
		public const uint32 CTFMODEBIAS_CONVERSATION = 5;
		public const uint32 CTFMODEBIAS_NUMERIC = 6;
		public const uint32 CTFMODEBIAS_HIRAGANA = 7;
		public const uint32 CTFMODEBIAS_KATAKANA = 8;
		public const uint32 CTFMODEBIAS_HANGUL = 9;
		public const uint32 CTFMODEBIAS_HALFWIDTHKATAKANA = 10;
		public const uint32 CTFMODEBIAS_FULLWIDTHALPHANUMERIC = 11;
		public const uint32 CTFMODEBIAS_HALFWIDTHALPHANUMERIC = 12;
		public const uint32 IMF_SMODE_PLAURALCLAUSE = 1;
		public const uint32 IMF_SMODE_NONE = 2;
		public const uint32 EMO_EXIT = 0;
		public const uint32 EMO_ENTER = 1;
		public const uint32 EMO_PROMOTE = 2;
		public const uint32 EMO_EXPAND = 3;
		public const uint32 EMO_MOVESELECTION = 4;
		public const uint32 EMO_GETVIEWMODE = 5;
		public const uint32 EMO_EXPANDSELECTION = 0;
		public const uint32 EMO_EXPANDDOCUMENT = 1;
		public const uint32 VM_NORMAL = 4;
		public const uint32 VM_OUTLINE = 2;
		public const uint32 VM_PAGE = 9;
		public const uint32 EM_INSERTTABLE = 1256;
		public const uint32 EM_GETAUTOCORRECTPROC = 1257;
		public const uint32 EM_SETAUTOCORRECTPROC = 1258;
		public const uint32 EM_CALLAUTOCORRECTPROC = 1279;
		public const uint32 ATP_NOCHANGE = 0;
		public const uint32 ATP_CHANGE = 1;
		public const uint32 ATP_NODELIMITER = 2;
		public const uint32 ATP_REPLACEALLTEXT = 4;
		public const uint32 EM_GETTABLEPARMS = 1289;
		public const uint32 EM_SETEDITSTYLEEX = 1299;
		public const uint32 EM_GETEDITSTYLEEX = 1300;
		public const uint32 SES_EX_NOTABLE = 4;
		public const uint32 SES_EX_NOMATH = 64;
		public const uint32 SES_EX_HANDLEFRIENDLYURL = 256;
		public const uint32 SES_EX_NOTHEMING = 524288;
		public const uint32 SES_EX_NOACETATESELECTION = 1048576;
		public const uint32 SES_EX_USESINGLELINE = 2097152;
		public const uint32 SES_EX_MULTITOUCH = 134217728;
		public const uint32 SES_EX_HIDETEMPFORMAT = 268435456;
		public const uint32 SES_EX_USEMOUSEWPARAM = 536870912;
		public const uint32 EM_GETSTORYTYPE = 1314;
		public const uint32 EM_SETSTORYTYPE = 1315;
		public const uint32 EM_GETELLIPSISMODE = 1329;
		public const uint32 EM_SETELLIPSISMODE = 1330;
		public const uint32 ELLIPSIS_MASK = 3;
		public const uint32 ELLIPSIS_NONE = 0;
		public const uint32 ELLIPSIS_END = 1;
		public const uint32 ELLIPSIS_WORD = 3;
		public const uint32 EM_SETTABLEPARMS = 1331;
		public const uint32 EM_GETTOUCHOPTIONS = 1334;
		public const uint32 EM_SETTOUCHOPTIONS = 1335;
		public const uint32 EM_INSERTIMAGE = 1338;
		public const uint32 EM_SETUIANAME = 1344;
		public const uint32 EM_GETELLIPSISSTATE = 1346;
		public const uint32 RTO_SHOWHANDLES = 1;
		public const uint32 RTO_DISABLEHANDLES = 2;
		public const uint32 RTO_READINGMODE = 3;
		public const uint32 EN_MSGFILTER = 1792;
		public const uint32 EN_REQUESTRESIZE = 1793;
		public const uint32 EN_SELCHANGE = 1794;
		public const uint32 EN_DROPFILES = 1795;
		public const uint32 EN_PROTECTED = 1796;
		public const uint32 EN_CORRECTTEXT = 1797;
		public const uint32 EN_STOPNOUNDO = 1798;
		public const uint32 EN_IMECHANGE = 1799;
		public const uint32 EN_SAVECLIPBOARD = 1800;
		public const uint32 EN_OLEOPFAILED = 1801;
		public const uint32 EN_OBJECTPOSITIONS = 1802;
		public const uint32 EN_LINK = 1803;
		public const uint32 EN_DRAGDROPDONE = 1804;
		public const uint32 EN_PARAGRAPHEXPANDED = 1805;
		public const uint32 EN_PAGECHANGE = 1806;
		public const uint32 EN_LOWFIRTF = 1807;
		public const uint32 EN_ALIGNLTR = 1808;
		public const uint32 EN_ALIGNRTL = 1809;
		public const uint32 EN_CLIPFORMAT = 1810;
		public const uint32 EN_STARTCOMPOSITION = 1811;
		public const uint32 EN_ENDCOMPOSITION = 1812;
		public const uint32 ENM_NONE = 0;
		public const uint32 ENM_CHANGE = 1;
		public const uint32 ENM_UPDATE = 2;
		public const uint32 ENM_SCROLL = 4;
		public const uint32 ENM_SCROLLEVENTS = 8;
		public const uint32 ENM_DRAGDROPDONE = 16;
		public const uint32 ENM_PARAGRAPHEXPANDED = 32;
		public const uint32 ENM_PAGECHANGE = 64;
		public const uint32 ENM_CLIPFORMAT = 128;
		public const uint32 ENM_KEYEVENTS = 65536;
		public const uint32 ENM_MOUSEEVENTS = 131072;
		public const uint32 ENM_REQUESTRESIZE = 262144;
		public const uint32 ENM_SELCHANGE = 524288;
		public const uint32 ENM_DROPFILES = 1048576;
		public const uint32 ENM_PROTECTED = 2097152;
		public const uint32 ENM_CORRECTTEXT = 4194304;
		public const uint32 ENM_IMECHANGE = 8388608;
		public const uint32 ENM_LANGCHANGE = 16777216;
		public const uint32 ENM_OBJECTPOSITIONS = 33554432;
		public const uint32 ENM_LINK = 67108864;
		public const uint32 ENM_LOWFIRTF = 134217728;
		public const uint32 ENM_STARTCOMPOSITION = 268435456;
		public const uint32 ENM_ENDCOMPOSITION = 536870912;
		public const uint32 ENM_GROUPTYPINGCHANGE = 1073741824;
		public const uint32 ENM_HIDELINKTOOLTIP = 2147483648;
		public const uint32 ES_SAVESEL = 32768;
		public const uint32 ES_SUNKEN = 16384;
		public const uint32 ES_DISABLENOSCROLL = 8192;
		public const uint32 ES_SELECTIONBAR = 16777216;
		public const uint32 ES_NOOLEDRAGDROP = 8;
		public const uint32 ES_EX_NOCALLOLEINIT = 0;
		public const uint32 ES_VERTICAL = 4194304;
		public const uint32 ES_NOIME = 524288;
		public const uint32 ES_SELFIME = 262144;
		public const uint32 ECO_AUTOWORDSELECTION = 1;
		public const uint32 ECO_AUTOVSCROLL = 64;
		public const uint32 ECO_AUTOHSCROLL = 128;
		public const uint32 ECO_NOHIDESEL = 256;
		public const uint32 ECO_READONLY = 2048;
		public const uint32 ECO_WANTRETURN = 4096;
		public const uint32 ECO_SAVESEL = 32768;
		public const uint32 ECO_SELECTIONBAR = 16777216;
		public const uint32 ECO_VERTICAL = 4194304;
		public const uint32 ECOOP_SET = 1;
		public const uint32 ECOOP_OR = 2;
		public const uint32 ECOOP_AND = 3;
		public const uint32 ECOOP_XOR = 4;
		public const uint32 WB_MOVEWORDPREV = 4;
		public const uint32 WB_MOVEWORDNEXT = 5;
		public const uint32 WB_PREVBREAK = 6;
		public const uint32 WB_NEXTBREAK = 7;
		public const uint32 PC_FOLLOWING = 1;
		public const uint32 PC_LEADING = 2;
		public const uint32 PC_OVERFLOW = 3;
		public const uint32 PC_DELIMITER = 4;
		public const uint32 WBF_WORDWRAP = 16;
		public const uint32 WBF_WORDBREAK = 32;
		public const uint32 WBF_OVERFLOW = 64;
		public const uint32 WBF_LEVEL1 = 128;
		public const uint32 WBF_LEVEL2 = 256;
		public const uint32 WBF_CUSTOM = 512;
		public const uint32 IMF_FORCENONE = 1;
		public const uint32 IMF_FORCEENABLE = 2;
		public const uint32 IMF_FORCEDISABLE = 4;
		public const uint32 IMF_CLOSESTATUSWINDOW = 8;
		public const uint32 IMF_VERTICAL = 32;
		public const uint32 IMF_FORCEACTIVE = 64;
		public const uint32 IMF_FORCEINACTIVE = 128;
		public const uint32 IMF_FORCEREMEMBER = 256;
		public const uint32 IMF_MULTIPLEEDIT = 1024;
		public const uint32 SCF_SELECTION = 1;
		public const uint32 SCF_WORD = 2;
		public const uint32 SCF_DEFAULT = 0;
		public const uint32 SCF_ALL = 4;
		public const uint32 SCF_USEUIRULES = 8;
		public const uint32 SCF_ASSOCIATEFONT = 16;
		public const uint32 SCF_NOKBUPDATE = 32;
		public const uint32 SCF_ASSOCIATEFONT2 = 64;
		public const uint32 SCF_SMARTFONT = 128;
		public const uint32 SCF_CHARREPFROMLCID = 256;
		public const uint32 SPF_DONTSETDEFAULT = 2;
		public const uint32 SPF_SETDEFAULT = 4;
		public const uint32 SF_TEXT = 1;
		public const uint32 SF_RTF = 2;
		public const uint32 SF_RTFNOOBJS = 3;
		public const uint32 SF_TEXTIZED = 4;
		public const uint32 SF_UNICODE = 16;
		public const uint32 SF_USECODEPAGE = 32;
		public const uint32 SF_NCRFORNONASCII = 64;
		public const uint32 SFF_WRITEXTRAPAR = 128;
		public const uint32 SFF_SELECTION = 32768;
		public const uint32 SFF_PLAINRTF = 16384;
		public const uint32 SFF_PERSISTVIEWSCALE = 8192;
		public const uint32 SFF_KEEPDOCINFO = 4096;
		public const uint32 SFF_PWD = 2048;
		public const uint32 SF_RTFVAL = 1792;
		public const uint32 MAX_TAB_STOPS = 32;
		public const uint32 MAX_TABLE_CELLS = 63;
		public const uint32 PFM_SPACEBEFORE = 64;
		public const uint32 PFM_SPACEAFTER = 128;
		public const uint32 PFM_LINESPACING = 256;
		public const uint32 PFM_STYLE = 1024;
		public const uint32 PFM_BORDER = 2048;
		public const uint32 PFM_SHADING = 4096;
		public const uint32 PFM_NUMBERINGSTYLE = 8192;
		public const uint32 PFM_NUMBERINGTAB = 16384;
		public const uint32 PFM_NUMBERINGSTART = 32768;
		public const uint32 PFM_KEEP = 131072;
		public const uint32 PFM_KEEPNEXT = 262144;
		public const uint32 PFM_PAGEBREAKBEFORE = 524288;
		public const uint32 PFM_NOLINENUMBER = 1048576;
		public const uint32 PFM_NOWIDOWCONTROL = 2097152;
		public const uint32 PFM_DONOTHYPHEN = 4194304;
		public const uint32 PFM_SIDEBYSIDE = 8388608;
		public const uint32 PFM_COLLAPSED = 16777216;
		public const uint32 PFM_OUTLINELEVEL = 33554432;
		public const uint32 PFM_BOX = 67108864;
		public const uint32 PFM_RESERVED2 = 134217728;
		public const uint32 PFM_TABLEROWDELIMITER = 268435456;
		public const uint32 PFM_TEXTWRAPPINGBREAK = 536870912;
		public const uint32 PFM_TABLE = 1073741824;
		public const uint32 PFN_BULLET = 1;
		public const uint32 PFN_ARABIC = 2;
		public const uint32 PFN_LCLETTER = 3;
		public const uint32 PFN_UCLETTER = 4;
		public const uint32 PFN_LCROMAN = 5;
		public const uint32 PFN_UCROMAN = 6;
		public const uint32 PFA_JUSTIFY = 4;
		public const uint32 PFA_FULL_INTERWORD = 4;
		public const uint32 WM_NOTIFY = 78;
		public const uint32 GCMF_GRIPPER = 1;
		public const uint32 GCMF_SPELLING = 2;
		public const uint32 GCMF_TOUCHMENU = 16384;
		public const uint32 GCMF_MOUSEMENU = 8192;
		public const uint32 OLEOP_DOVERB = 1;
		public const uint32 ST_DEFAULT = 0;
		public const uint32 ST_KEEPUNDO = 1;
		public const uint32 ST_SELECTION = 2;
		public const uint32 ST_NEWCHARS = 4;
		public const uint32 ST_UNICODE = 8;
		public const uint32 BOM_DEFPARADIR = 1;
		public const uint32 BOM_PLAINTEXT = 2;
		public const uint32 BOM_NEUTRALOVERRIDE = 4;
		public const uint32 BOM_CONTEXTREADING = 8;
		public const uint32 BOM_CONTEXTALIGNMENT = 16;
		public const uint32 BOM_LEGACYBIDICLASS = 64;
		public const uint32 BOM_UNICODEBIDI = 128;
		public const uint32 BOE_RTLDIR = 1;
		public const uint32 BOE_PLAINTEXT = 2;
		public const uint32 BOE_NEUTRALOVERRIDE = 4;
		public const uint32 BOE_CONTEXTREADING = 8;
		public const uint32 BOE_CONTEXTALIGNMENT = 16;
		public const uint32 BOE_FORCERECALC = 32;
		public const uint32 BOE_LEGACYBIDICLASS = 64;
		public const uint32 BOE_UNICODEBIDI = 128;
		public const uint32 FR_MATCHDIAC = 536870912;
		public const uint32 FR_MATCHKASHIDA = 1073741824;
		public const uint32 FR_MATCHALEFHAMZA = 2147483648;
		public const uint32 PFA_FULL_NEWSPAPER = 5;
		public const uint32 PFA_FULL_INTERLETTER = 6;
		public const uint32 PFA_FULL_SCALED = 7;
		public const uint32 PFA_FULL_GLYPHS = 8;
		public const uint32 AURL_ENABLEEA = 1;
		public const uint32 GCM_TOUCHMENU = 16384;
		public const uint32 GCM_MOUSEMENU = 8192;
		public const HRESULT S_MSG_KEY_IGNORED = 262657;
		public const uint32 TXTBIT_RICHTEXT = 1;
		public const uint32 TXTBIT_MULTILINE = 2;
		public const uint32 TXTBIT_READONLY = 4;
		public const uint32 TXTBIT_SHOWACCELERATOR = 8;
		public const uint32 TXTBIT_USEPASSWORD = 16;
		public const uint32 TXTBIT_HIDESELECTION = 32;
		public const uint32 TXTBIT_SAVESELECTION = 64;
		public const uint32 TXTBIT_AUTOWORDSEL = 128;
		public const uint32 TXTBIT_VERTICAL = 256;
		public const uint32 TXTBIT_SELBARCHANGE = 512;
		public const uint32 TXTBIT_WORDWRAP = 1024;
		public const uint32 TXTBIT_ALLOWBEEP = 2048;
		public const uint32 TXTBIT_DISABLEDRAG = 4096;
		public const uint32 TXTBIT_VIEWINSETCHANGE = 8192;
		public const uint32 TXTBIT_BACKSTYLECHANGE = 16384;
		public const uint32 TXTBIT_MAXLENGTHCHANGE = 32768;
		public const uint32 TXTBIT_SCROLLBARCHANGE = 65536;
		public const uint32 TXTBIT_CHARFORMATCHANGE = 131072;
		public const uint32 TXTBIT_PARAFORMATCHANGE = 262144;
		public const uint32 TXTBIT_EXTENTCHANGE = 524288;
		public const uint32 TXTBIT_CLIENTRECTCHANGE = 1048576;
		public const uint32 TXTBIT_USECURRENTBKG = 2097152;
		public const uint32 TXTBIT_NOTHREADREFCOUNT = 4194304;
		public const uint32 TXTBIT_SHOWPASSWORD = 8388608;
		public const uint32 TXTBIT_D2DDWRITE = 16777216;
		public const uint32 TXTBIT_D2DSIMPLETYPOGRAPHY = 33554432;
		public const uint32 TXTBIT_D2DPIXELSNAPPED = 67108864;
		public const uint32 TXTBIT_D2DSUBPIXELLINES = 134217728;
		public const uint32 TXTBIT_FLASHLASTPASSWORDCHAR = 268435456;
		public const uint32 TXTBIT_ADVANCEDINPUT = 536870912;
		public const uint32 TXES_ISDIALOG = 1;
		public const int32 REO_NULL = 0;
		public const int32 REO_READWRITEMASK = 2047;
		public const int32 RECO_PASTE = 0;
		public const int32 RECO_DROP = 1;
		public const int32 RECO_COPY = 2;
		public const int32 RECO_CUT = 3;
		public const int32 RECO_DRAG = 4;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CFM_MASK : uint32
		{
			CFM_SUBSCRIPT = 196608,
			CFM_SUPERSCRIPT = 196608,
			CFM_EFFECTS = 1073741887,
			CFM_ALL = 4160749631,
			CFM_BOLD = 1,
			CFM_CHARSET = 134217728,
			CFM_COLOR = 1073741824,
			CFM_FACE = 536870912,
			CFM_ITALIC = 2,
			CFM_OFFSET = 268435456,
			CFM_PROTECTED = 16,
			CFM_SIZE = 2147483648,
			CFM_STRIKEOUT = 8,
			CFM_UNDERLINE = 4,
			CFM_LINK = 32,
			CFM_SMALLCAPS = 64,
			CFM_ALLCAPS = 128,
			CFM_HIDDEN = 256,
			CFM_OUTLINE = 512,
			CFM_SHADOW = 1024,
			CFM_EMBOSS = 2048,
			CFM_IMPRINT = 4096,
			CFM_DISABLED = 8192,
			CFM_REVISED = 16384,
			CFM_REVAUTHOR = 32768,
			CFM_ANIMATION = 262144,
			CFM_STYLE = 524288,
			CFM_KERNING = 1048576,
			CFM_SPACING = 2097152,
			CFM_WEIGHT = 4194304,
			CFM_UNDERLINETYPE = 8388608,
			CFM_COOKIE = 16777216,
			CFM_LCID = 33554432,
			CFM_BACKCOLOR = 67108864,
			CFM_EFFECTS2 = 1141080063,
			CFM_ALL2 = 4294967295,
			CFM_FONTBOUND = 1048576,
			CFM_LINKPROTECTED = 8388608,
			CFM_EXTENDED = 33554432,
			CFM_MATHNOBUILDUP = 134217728,
			CFM_MATH = 268435456,
			CFM_MATHORDINARY = 536870912,
			CFM_ALLEFFECTS = 2115207167,
		}
		[AllowDuplicates]
		public enum CFE_EFFECTS : uint32
		{
			CFE_ALLCAPS = 128,
			CFE_AUTOBACKCOLOR = 67108864,
			CFE_DISABLED = 8192,
			CFE_EMBOSS = 2048,
			CFE_HIDDEN = 256,
			CFE_IMPRINT = 4096,
			CFE_OUTLINE = 512,
			CFE_REVISED = 16384,
			CFE_SHADOW = 1024,
			CFE_SMALLCAPS = 64,
			CFE_AUTOCOLOR = 1073741824,
			CFE_BOLD = 1,
			CFE_ITALIC = 2,
			CFE_STRIKEOUT = 8,
			CFE_UNDERLINE = 4,
			CFE_PROTECTED = 16,
			CFE_LINK = 32,
			CFE_SUBSCRIPT = 65536,
			CFE_SUPERSCRIPT = 131072,
			CFE_FONTBOUND = 1048576,
			CFE_LINKPROTECTED = 8388608,
			CFE_EXTENDED = 33554432,
			CFE_MATHNOBUILDUP = 134217728,
			CFE_MATH = 268435456,
			CFE_MATHORDINARY = 536870912,
		}
		[AllowDuplicates]
		public enum PARAFORMAT_MASK : uint32
		{
			PFM_ALIGNMENT = 8,
			PFM_NUMBERING = 32,
			PFM_OFFSET = 4,
			PFM_OFFSETINDENT = 2147483648,
			PFM_RIGHTINDENT = 2,
			PFM_RTLPARA = 65536,
			PFM_STARTINDENT = 1,
			PFM_TABSTOPS = 16,
		}
		[AllowDuplicates]
		public enum RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE : uint16
		{
			SEL_EMPTY = 0,
			SEL_TEXT = 1,
			SEL_OBJECT = 2,
			SEL_MULTICHAR = 4,
			SEL_MULTIOBJECT = 8,
			GCM_RIGHTMOUSEDROP = 32768,
		}
		[AllowDuplicates]
		public enum RICH_EDIT_GET_OBJECT_FLAGS : uint32
		{
			REO_GETOBJ_POLEOBJ = 1,
			REO_GETOBJ_PSTG = 2,
			REO_GETOBJ_POLESITE = 4,
			REO_GETOBJ_NO_INTERFACES = 0,
			REO_GETOBJ_ALL_INTERFACES = 7,
		}
		[AllowDuplicates]
		public enum PARAFORMAT_BORDERS : uint16
		{
			PARAFORMAT_BORDERS_LEFT = 1,
			PARAFORMAT_BORDERS_RIGHT = 2,
			PARAFORMAT_BORDERS_TOP = 4,
			PARAFORMAT_BORDERS_BOTTOM = 8,
			PARAFORMAT_BORDERS_INSIDE = 16,
			PARAFORMAT_BORDERS_OUTSIDE = 32,
			PARAFORMAT_BORDERS_AUTOCOLOR = 64,
		}
		[AllowDuplicates]
		public enum PARAFORMAT_SHADING_STYLE : uint16
		{
			PARAFORMAT_SHADING_STYLE_NONE = 0,
			PARAFORMAT_SHADING_STYLE_DARK_HORIZ = 1,
			PARAFORMAT_SHADING_STYLE_DARK_VERT = 2,
			PARAFORMAT_SHADING_STYLE_DARK_DOWN_DIAG = 3,
			PARAFORMAT_SHADING_STYLE_DARK_UP_DIAG = 4,
			PARAFORMAT_SHADING_STYLE_DARK_GRID = 5,
			PARAFORMAT_SHADING_STYLE_DARK_TRELLIS = 6,
			PARAFORMAT_SHADING_STYLE_LIGHT_HORZ = 7,
			PARAFORMAT_SHADING_STYLE_LIGHT_VERT = 8,
			PARAFORMAT_SHADING_STYLE_LIGHT_DOWN_DIAG = 9,
			PARAFORMAT_SHADING_STYLE_LIGHT_UP_DIAG = 10,
			PARAFORMAT_SHADING_STYLE_LIGHT_GRID = 11,
			PARAFORMAT_SHADING_STYLE_LIGHT_TRELLIS = 12,
		}
		[AllowDuplicates]
		public enum GETTEXTEX_FLAGS : uint32
		{
			GT_DEFAULT = 0,
			GT_NOHIDDENTEXT = 8,
			GT_RAWTEXT = 4,
			GT_SELECTION = 2,
			GT_USECRLF = 1,
		}
		[AllowDuplicates]
		public enum ENDCOMPOSITIONNOTIFY_CODE : uint32
		{
			ECN_ENDCOMPOSITION = 1,
			ECN_NEWTEXT = 2,
		}
		[AllowDuplicates]
		public enum IMECOMPTEXT_FLAGS : uint32
		{
			ICT_RESULTREADSTR = 1,
		}
		[AllowDuplicates]
		public enum GETTEXTLENGTHEX_FLAGS : uint32
		{
			GTL_DEFAULT = 0,
			GTL_USECRLF = 1,
			GTL_PRECISE = 2,
			GTL_CLOSE = 4,
			GTL_NUMCHARS = 8,
			GTL_NUMBYTES = 16,
		}
		[AllowDuplicates]
		public enum REOBJECT_FLAGS : uint32
		{
			REO_ALIGNTORIGHT = 256,
			REO_BELOWBASELINE = 2,
			REO_BLANK = 16,
			REO_CANROTATE = 128,
			REO_DONTNEEDPALETTE = 32,
			REO_DYNAMICSIZE = 8,
			REO_GETMETAFILE = 4194304,
			REO_HILITED = 16777216,
			REO_INPLACEACTIVE = 33554432,
			REO_INVERTEDSELECT = 4,
			REO_LINK = 2147483648,
			REO_LINKAVAILABLE = 8388608,
			REO_OPEN = 67108864,
			REO_OWNERDRAWSELECT = 64,
			REO_RESIZABLE = 1,
			REO_SELECTED = 134217728,
			REO_STATIC = 1073741824,
			REO_USEASBACKGROUND = 1024,
			REO_WRAPTEXTAROUND = 512,
		}
		[AllowDuplicates]
		public enum PARAFORMAT_NUMBERING_STYLE : uint16
		{
			PFNS_PAREN = 0,
			PFNS_PARENS = 256,
			PFNS_PERIOD = 512,
			PFNS_PLAIN = 768,
			PFNS_NONUMBER = 1024,
			PFNS_NEWNUMBER = 32768,
		}
		[AllowDuplicates]
		public enum PARAFORMAT_ALIGNMENT : uint16
		{
			PFA_CENTER = 3,
			PFA_LEFT = 1,
			PFA_RIGHT = 2,
		}
		[AllowDuplicates]
		public enum TEXTMODE : int32
		{
			TM_PLAINTEXT = 1,
			TM_RICHTEXT = 2,
			TM_SINGLELEVELUNDO = 4,
			TM_MULTILEVELUNDO = 8,
			TM_SINGLECODEPAGE = 16,
			TM_MULTICODEPAGE = 32,
		}
		[AllowDuplicates]
		public enum UNDONAMEID : int32
		{
			UID_UNKNOWN = 0,
			UID_TYPING = 1,
			UID_DELETE = 2,
			UID_DRAGDROP = 3,
			UID_CUT = 4,
			UID_PASTE = 5,
			UID_AUTOTABLE = 6,
		}
		[AllowDuplicates]
		public enum KHYPH : int32
		{
			khyphNil = 0,
			khyphNormal = 1,
			khyphAddBefore = 2,
			khyphChangeBefore = 3,
			khyphDeleteBefore = 4,
			khyphChangeAfter = 5,
			khyphDelAndChange = 6,
		}
		[AllowDuplicates]
		public enum TXTBACKSTYLE : int32
		{
			TXTBACK_TRANSPARENT = 0,
			TXTBACK_OPAQUE = 1,
		}
		[AllowDuplicates]
		public enum TXTHITRESULT : int32
		{
			TXTHITRESULT_NOHIT = 0,
			TXTHITRESULT_TRANSPARENT = 1,
			TXTHITRESULT_CLOSE = 2,
			TXTHITRESULT_HIT = 3,
		}
		[AllowDuplicates]
		public enum TXTNATURALSIZE : int32
		{
			TXTNS_FITTOCONTENT2 = 0,
			TXTNS_FITTOCONTENT = 1,
			TXTNS_ROUNDTOLINE = 2,
			TXTNS_FITTOCONTENT3 = 3,
			TXTNS_FITTOCONTENTWSP = 4,
			TXTNS_INCLUDELASTLINE = 1073741824,
			TXTNS_EMU = -2147483648,
		}
		[AllowDuplicates]
		public enum TXTVIEW : int32
		{
			TXTVIEW_ACTIVE = 0,
			TXTVIEW_INACTIVE = -1,
		}
		[AllowDuplicates]
		public enum CHANGETYPE : int32
		{
			CN_GENERIC = 0,
			CN_TEXTCHANGED = 1,
			CN_NEWUNDO = 2,
			CN_NEWREDO = 4,
		}
		[AllowDuplicates]
		public enum CARET_FLAGS : int32
		{
			CARET_NONE = 0,
			CARET_CUSTOM = 1,
			CARET_RTL = 2,
			CARET_ITALIC = 32,
			CARET_NULL = 64,
			CARET_ROTATE90 = 128,
		}
		[AllowDuplicates]
		public enum tomConstants : int32
		{
			tomFalse = 0,
			tomTrue = -1,
			tomUndefined = -9999999,
			tomToggle = -9999998,
			tomAutoColor = -9999997,
			tomDefault = -9999996,
			tomSuspend = -9999995,
			tomResume = -9999994,
			tomApplyNow = 0,
			tomApplyLater = 1,
			tomTrackParms = 2,
			tomCacheParms = 3,
			tomApplyTmp = 4,
			tomDisableSmartFont = 8,
			tomEnableSmartFont = 9,
			tomUsePoints = 10,
			tomUseTwips = 11,
			tomBackward = -1073741823,
			tomForward = 1073741823,
			tomMove = 0,
			tomExtend = 1,
			tomNoSelection = 0,
			tomSelectionIP = 1,
			tomSelectionNormal = 2,
			tomSelectionFrame = 3,
			tomSelectionColumn = 4,
			tomSelectionRow = 5,
			tomSelectionBlock = 6,
			tomSelectionInlineShape = 7,
			tomSelectionShape = 8,
			tomSelStartActive = 1,
			tomSelAtEOL = 2,
			tomSelOvertype = 4,
			tomSelActive = 8,
			tomSelReplace = 16,
			tomEnd = 0,
			tomStart = 32,
			tomCollapseEnd = 0,
			tomCollapseStart = 1,
			tomClientCoord = 256,
			tomAllowOffClient = 512,
			tomTransform = 1024,
			tomObjectArg = 2048,
			tomAtEnd = 4096,
			tomNone = 0,
			tomSingle = 1,
			tomWords = 2,
			tomDouble = 3,
			tomDotted = 4,
			tomDash = 5,
			tomDashDot = 6,
			tomDashDotDot = 7,
			tomWave = 8,
			tomThick = 9,
			tomHair = 10,
			tomDoubleWave = 11,
			tomHeavyWave = 12,
			tomLongDash = 13,
			tomThickDash = 14,
			tomThickDashDot = 15,
			tomThickDashDotDot = 16,
			tomThickDotted = 17,
			tomThickLongDash = 18,
			tomLineSpaceSingle = 0,
			tomLineSpace1pt5 = 1,
			tomLineSpaceDouble = 2,
			tomLineSpaceAtLeast = 3,
			tomLineSpaceExactly = 4,
			tomLineSpaceMultiple = 5,
			tomLineSpacePercent = 6,
			tomAlignLeft = 0,
			tomAlignCenter = 1,
			tomAlignRight = 2,
			tomAlignJustify = 3,
			tomAlignDecimal = 3,
			tomAlignBar = 4,
			tomDefaultTab = 5,
			tomAlignInterWord = 3,
			tomAlignNewspaper = 4,
			tomAlignInterLetter = 5,
			tomAlignScaled = 6,
			tomSpaces = 0,
			tomDots = 1,
			tomDashes = 2,
			tomLines = 3,
			tomThickLines = 4,
			tomEquals = 5,
			tomTabBack = -3,
			tomTabNext = -2,
			tomTabHere = -1,
			tomListNone = 0,
			tomListBullet = 1,
			tomListNumberAsArabic = 2,
			tomListNumberAsLCLetter = 3,
			tomListNumberAsUCLetter = 4,
			tomListNumberAsLCRoman = 5,
			tomListNumberAsUCRoman = 6,
			tomListNumberAsSequence = 7,
			tomListNumberedCircle = 8,
			tomListNumberedBlackCircleWingding = 9,
			tomListNumberedWhiteCircleWingding = 10,
			tomListNumberedArabicWide = 11,
			tomListNumberedChS = 12,
			tomListNumberedChT = 13,
			tomListNumberedJpnChS = 14,
			tomListNumberedJpnKor = 15,
			tomListNumberedArabic1 = 16,
			tomListNumberedArabic2 = 17,
			tomListNumberedHebrew = 18,
			tomListNumberedThaiAlpha = 19,
			tomListNumberedThaiNum = 20,
			tomListNumberedHindiAlpha = 21,
			tomListNumberedHindiAlpha1 = 22,
			tomListNumberedHindiNum = 23,
			tomListParentheses = 65536,
			tomListPeriod = 131072,
			tomListPlain = 196608,
			tomListNoNumber = 262144,
			tomListMinus = 524288,
			tomIgnoreNumberStyle = 16777216,
			tomParaStyleNormal = -1,
			tomParaStyleHeading1 = -2,
			tomParaStyleHeading2 = -3,
			tomParaStyleHeading3 = -4,
			tomParaStyleHeading4 = -5,
			tomParaStyleHeading5 = -6,
			tomParaStyleHeading6 = -7,
			tomParaStyleHeading7 = -8,
			tomParaStyleHeading8 = -9,
			tomParaStyleHeading9 = -10,
			tomCharacter = 1,
			tomWord = 2,
			tomSentence = 3,
			tomParagraph = 4,
			tomLine = 5,
			tomStory = 6,
			tomScreen = 7,
			tomSection = 8,
			tomTableColumn = 9,
			tomColumn = 9,
			tomRow = 10,
			tomWindow = 11,
			tomCell = 12,
			tomCharFormat = 13,
			tomParaFormat = 14,
			tomTable = 15,
			tomObject = 16,
			tomPage = 17,
			tomHardParagraph = 18,
			tomCluster = 19,
			tomInlineObject = 20,
			tomInlineObjectArg = 21,
			tomLeafLine = 22,
			tomLayoutColumn = 23,
			tomProcessId = 1073741825,
			tomMatchWord = 2,
			tomMatchCase = 4,
			tomMatchPattern = 8,
			tomUnknownStory = 0,
			tomMainTextStory = 1,
			tomFootnotesStory = 2,
			tomEndnotesStory = 3,
			tomCommentsStory = 4,
			tomTextFrameStory = 5,
			tomEvenPagesHeaderStory = 6,
			tomPrimaryHeaderStory = 7,
			tomEvenPagesFooterStory = 8,
			tomPrimaryFooterStory = 9,
			tomFirstPageHeaderStory = 10,
			tomFirstPageFooterStory = 11,
			tomScratchStory = 127,
			tomFindStory = 128,
			tomReplaceStory = 129,
			tomStoryInactive = 0,
			tomStoryActiveDisplay = 1,
			tomStoryActiveUI = 2,
			tomStoryActiveDisplayUI = 3,
			tomNoAnimation = 0,
			tomLasVegasLights = 1,
			tomBlinkingBackground = 2,
			tomSparkleText = 3,
			tomMarchingBlackAnts = 4,
			tomMarchingRedAnts = 5,
			tomShimmer = 6,
			tomWipeDown = 7,
			tomWipeRight = 8,
			tomAnimationMax = 8,
			tomLowerCase = 0,
			tomUpperCase = 1,
			tomTitleCase = 2,
			tomSentenceCase = 4,
			tomToggleCase = 5,
			tomReadOnly = 256,
			tomShareDenyRead = 512,
			tomShareDenyWrite = 1024,
			tomPasteFile = 4096,
			tomCreateNew = 16,
			tomCreateAlways = 32,
			tomOpenExisting = 48,
			tomOpenAlways = 64,
			tomTruncateExisting = 80,
			tomRTF = 1,
			tomText = 2,
			tomHTML = 3,
			tomWordDocument = 4,
			tomBold = -2147483647,
			tomItalic = -2147483646,
			tomUnderline = -2147483644,
			tomStrikeout = -2147483640,
			tomProtected = -2147483632,
			tomLink = -2147483616,
			tomSmallCaps = -2147483584,
			tomAllCaps = -2147483520,
			tomHidden = -2147483392,
			tomOutline = -2147483136,
			tomShadow = -2147482624,
			tomEmboss = -2147481600,
			tomImprint = -2147479552,
			tomDisabled = -2147475456,
			tomRevised = -2147467264,
			tomSubscriptCF = -2147418112,
			tomSuperscriptCF = -2147352576,
			tomFontBound = -2146435072,
			tomLinkProtected = -2139095040,
			tomInlineObjectStart = -2130706432,
			tomExtendedChar = -2113929216,
			tomAutoBackColor = -2080374784,
			tomMathZoneNoBuildUp = -2013265920,
			tomMathZone = -1879048192,
			tomMathZoneOrdinary = -1610612736,
			tomAutoTextColor = -1073741824,
			tomMathZoneDisplay = 262144,
			tomParaEffectRTL = 1,
			tomParaEffectKeep = 2,
			tomParaEffectKeepNext = 4,
			tomParaEffectPageBreakBefore = 8,
			tomParaEffectNoLineNumber = 16,
			tomParaEffectNoWidowControl = 32,
			tomParaEffectDoNotHyphen = 64,
			tomParaEffectSideBySide = 128,
			tomParaEffectCollapsed = 256,
			tomParaEffectOutlineLevel = 512,
			tomParaEffectBox = 1024,
			tomParaEffectTableRowDelimiter = 4096,
			tomParaEffectTable = 16384,
			tomModWidthPairs = 1,
			tomModWidthSpace = 2,
			tomAutoSpaceAlpha = 4,
			tomAutoSpaceNumeric = 8,
			tomAutoSpaceParens = 16,
			tomEmbeddedFont = 32,
			tomDoublestrike = 64,
			tomOverlapping = 128,
			tomNormalCaret = 0,
			tomKoreanBlockCaret = 1,
			tomNullCaret = 2,
			tomIncludeInset = 1,
			tomUnicodeBiDi = 1,
			tomMathCFCheck = 4,
			tomUnlink = 8,
			tomUnhide = 16,
			tomCheckTextLimit = 32,
			tomIgnoreCurrentFont = 0,
			tomMatchCharRep = 1,
			tomMatchFontSignature = 2,
			tomMatchAscii = 4,
			tomGetHeightOnly = 8,
			tomMatchMathFont = 16,
			tomCharset = -2147483648,
			tomCharRepFromLcid = 1073741824,
			tomAnsi = 0,
			tomEastEurope = 1,
			tomCyrillic = 2,
			tomGreek = 3,
			tomTurkish = 4,
			tomHebrew = 5,
			tomArabic = 6,
			tomBaltic = 7,
			tomVietnamese = 8,
			tomDefaultCharRep = 9,
			tomSymbol = 10,
			tomThai = 11,
			tomShiftJIS = 12,
			tomGB2312 = 13,
			tomHangul = 14,
			tomBIG5 = 15,
			tomPC437 = 16,
			tomOEM = 17,
			tomMac = 18,
			tomArmenian = 19,
			tomSyriac = 20,
			tomThaana = 21,
			tomDevanagari = 22,
			tomBengali = 23,
			tomGurmukhi = 24,
			tomGujarati = 25,
			tomOriya = 26,
			tomTamil = 27,
			tomTelugu = 28,
			tomKannada = 29,
			tomMalayalam = 30,
			tomSinhala = 31,
			tomLao = 32,
			tomTibetan = 33,
			tomMyanmar = 34,
			tomGeorgian = 35,
			tomJamo = 36,
			tomEthiopic = 37,
			tomCherokee = 38,
			tomAboriginal = 39,
			tomOgham = 40,
			tomRunic = 41,
			tomKhmer = 42,
			tomMongolian = 43,
			tomBraille = 44,
			tomYi = 45,
			tomLimbu = 46,
			tomTaiLe = 47,
			tomNewTaiLue = 48,
			tomSylotiNagri = 49,
			tomKharoshthi = 50,
			tomKayahli = 51,
			tomUsymbol = 52,
			tomEmoji = 53,
			tomGlagolitic = 54,
			tomLisu = 55,
			tomVai = 56,
			tomNKo = 57,
			tomOsmanya = 58,
			tomPhagsPa = 59,
			tomGothic = 60,
			tomDeseret = 61,
			tomTifinagh = 62,
			tomCharRepMax = 63,
			tomRE10Mode = 1,
			tomUseAtFont = 2,
			tomTextFlowMask = 12,
			tomTextFlowES = 0,
			tomTextFlowSW = 4,
			tomTextFlowWN = 8,
			tomTextFlowNE = 12,
			tomNoIME = 524288,
			tomSelfIME = 262144,
			tomNoUpScroll = 65536,
			tomNoVpScroll = 262144,
			tomNoLink = 0,
			tomClientLink = 1,
			tomFriendlyLinkName = 2,
			tomFriendlyLinkAddress = 3,
			tomAutoLinkURL = 4,
			tomAutoLinkEmail = 5,
			tomAutoLinkPhone = 6,
			tomAutoLinkPath = 7,
			tomCompressNone = 0,
			tomCompressPunctuation = 1,
			tomCompressPunctuationAndKana = 2,
			tomCompressMax = 2,
			tomUnderlinePositionAuto = 0,
			tomUnderlinePositionBelow = 1,
			tomUnderlinePositionAbove = 2,
			tomUnderlinePositionMax = 2,
			tomFontAlignmentAuto = 0,
			tomFontAlignmentTop = 1,
			tomFontAlignmentBaseline = 2,
			tomFontAlignmentBottom = 3,
			tomFontAlignmentCenter = 4,
			tomFontAlignmentMax = 4,
			tomRubyBelow = 128,
			tomRubyAlignCenter = 0,
			tomRubyAlign010 = 1,
			tomRubyAlign121 = 2,
			tomRubyAlignLeft = 3,
			tomRubyAlignRight = 4,
			tomLimitsDefault = 0,
			tomLimitsUnderOver = 1,
			tomLimitsSubSup = 2,
			tomUpperLimitAsSuperScript = 3,
			tomLimitsOpposite = 4,
			tomShowLLimPlaceHldr = 8,
			tomShowULimPlaceHldr = 16,
			tomDontGrowWithContent = 64,
			tomGrowWithContent = 128,
			tomSubSupAlign = 1,
			tomLimitAlignMask = 3,
			tomLimitAlignCenter = 0,
			tomLimitAlignLeft = 1,
			tomLimitAlignRight = 2,
			tomShowDegPlaceHldr = 8,
			tomAlignDefault = 0,
			tomAlignMatchAscentDescent = 2,
			tomMathVariant = 32,
			tomStyleDefault = 0,
			tomStyleScriptScriptCramped = 1,
			tomStyleScriptScript = 2,
			tomStyleScriptCramped = 3,
			tomStyleScript = 4,
			tomStyleTextCramped = 5,
			tomStyleText = 6,
			tomStyleDisplayCramped = 7,
			tomStyleDisplay = 8,
			tomMathRelSize = 64,
			tomDecDecSize = 254,
			tomDecSize = 255,
			tomIncSize = 65,
			tomIncIncSize = 66,
			tomGravityUI = 0,
			tomGravityBack = 1,
			tomGravityFore = 2,
			tomGravityIn = 3,
			tomGravityOut = 4,
			tomGravityBackward = 536870912,
			tomGravityForward = 1073741824,
			tomAdjustCRLF = 1,
			tomUseCRLF = 2,
			tomTextize = 4,
			tomAllowFinalEOP = 8,
			tomFoldMathAlpha = 16,
			tomNoHidden = 32,
			tomIncludeNumbering = 64,
			tomTranslateTableCell = 128,
			tomNoMathZoneBrackets = 256,
			tomConvertMathChar = 512,
			tomNoUCGreekItalic = 1024,
			tomAllowMathBold = 2048,
			tomLanguageTag = 4096,
			tomConvertRTF = 8192,
			tomApplyRtfDocProps = 16384,
			tomPhantomShow = 1,
			tomPhantomZeroWidth = 2,
			tomPhantomZeroAscent = 4,
			tomPhantomZeroDescent = 8,
			tomPhantomTransparent = 16,
			tomPhantomASmash = 5,
			tomPhantomDSmash = 9,
			tomPhantomHSmash = 3,
			tomPhantomSmash = 13,
			tomPhantomHorz = 12,
			tomPhantomVert = 2,
			tomBoxHideTop = 1,
			tomBoxHideBottom = 2,
			tomBoxHideLeft = 4,
			tomBoxHideRight = 8,
			tomBoxStrikeH = 16,
			tomBoxStrikeV = 32,
			tomBoxStrikeTLBR = 64,
			tomBoxStrikeBLTR = 128,
			tomBoxAlignCenter = 1,
			tomSpaceMask = 28,
			tomSpaceDefault = 0,
			tomSpaceUnary = 4,
			tomSpaceBinary = 8,
			tomSpaceRelational = 12,
			tomSpaceSkip = 16,
			tomSpaceOrd = 20,
			tomSpaceDifferential = 24,
			tomSizeText = 32,
			tomSizeScript = 64,
			tomSizeScriptScript = 96,
			tomNoBreak = 128,
			tomTransparentForPositioning = 256,
			tomTransparentForSpacing = 512,
			tomStretchCharBelow = 0,
			tomStretchCharAbove = 1,
			tomStretchBaseBelow = 2,
			tomStretchBaseAbove = 3,
			tomMatrixAlignMask = 3,
			tomMatrixAlignCenter = 0,
			tomMatrixAlignTopRow = 1,
			tomMatrixAlignBottomRow = 3,
			tomShowMatPlaceHldr = 8,
			tomEqArrayLayoutWidth = 1,
			tomEqArrayAlignMask = 12,
			tomEqArrayAlignCenter = 0,
			tomEqArrayAlignTopRow = 4,
			tomEqArrayAlignBottomRow = 12,
			tomMathManualBreakMask = 127,
			tomMathBreakLeft = 125,
			tomMathBreakCenter = 126,
			tomMathBreakRight = 127,
			tomMathEqAlign = 128,
			tomMathArgShadingStart = 593,
			tomMathArgShadingEnd = 594,
			tomMathObjShadingStart = 595,
			tomMathObjShadingEnd = 596,
			tomFunctionTypeNone = 0,
			tomFunctionTypeTakesArg = 1,
			tomFunctionTypeTakesLim = 2,
			tomFunctionTypeTakesLim2 = 3,
			tomFunctionTypeIsLim = 4,
			tomMathParaAlignDefault = 0,
			tomMathParaAlignCenterGroup = 1,
			tomMathParaAlignCenter = 2,
			tomMathParaAlignLeft = 3,
			tomMathParaAlignRight = 4,
			tomMathDispAlignMask = 3,
			tomMathDispAlignCenterGroup = 0,
			tomMathDispAlignCenter = 1,
			tomMathDispAlignLeft = 2,
			tomMathDispAlignRight = 3,
			tomMathDispIntUnderOver = 4,
			tomMathDispFracTeX = 8,
			tomMathDispNaryGrow = 16,
			tomMathDocEmptyArgMask = 96,
			tomMathDocEmptyArgAuto = 0,
			tomMathDocEmptyArgAlways = 32,
			tomMathDocEmptyArgNever = 64,
			tomMathDocSbSpOpUnchanged = 128,
			tomMathDocDiffMask = 768,
			tomMathDocDiffDefault = 0,
			tomMathDocDiffUpright = 256,
			tomMathDocDiffItalic = 512,
			tomMathDocDiffOpenItalic = 768,
			tomMathDispNarySubSup = 1024,
			tomMathDispDef = 2048,
			tomMathEnableRtl = 4096,
			tomMathBrkBinMask = 196608,
			tomMathBrkBinBefore = 0,
			tomMathBrkBinAfter = 65536,
			tomMathBrkBinDup = 131072,
			tomMathBrkBinSubMask = 786432,
			tomMathBrkBinSubMM = 0,
			tomMathBrkBinSubPM = 262144,
			tomMathBrkBinSubMP = 524288,
			tomSelRange = 597,
			tomHstring = 596,
			tomFontPropTeXStyle = 828,
			tomFontPropAlign = 829,
			tomFontStretch = 830,
			tomFontStyle = 831,
			tomFontStyleUpright = 0,
			tomFontStyleOblique = 1,
			tomFontStyleItalic = 2,
			tomFontStretchDefault = 0,
			tomFontStretchUltraCondensed = 1,
			tomFontStretchExtraCondensed = 2,
			tomFontStretchCondensed = 3,
			tomFontStretchSemiCondensed = 4,
			tomFontStretchNormal = 5,
			tomFontStretchSemiExpanded = 6,
			tomFontStretchExpanded = 7,
			tomFontStretchExtraExpanded = 8,
			tomFontStretchUltraExpanded = 9,
			tomFontWeightDefault = 0,
			tomFontWeightThin = 100,
			tomFontWeightExtraLight = 200,
			tomFontWeightLight = 300,
			tomFontWeightNormal = 400,
			tomFontWeightRegular = 400,
			tomFontWeightMedium = 500,
			tomFontWeightSemiBold = 600,
			tomFontWeightBold = 700,
			tomFontWeightExtraBold = 800,
			tomFontWeightBlack = 900,
			tomFontWeightHeavy = 900,
			tomFontWeightExtraBlack = 950,
			tomParaPropMathAlign = 1079,
			tomDocMathBuild = 128,
			tomMathLMargin = 129,
			tomMathRMargin = 130,
			tomMathWrapIndent = 131,
			tomMathWrapRight = 132,
			tomMathPostSpace = 134,
			tomMathPreSpace = 133,
			tomMathInterSpace = 135,
			tomMathIntraSpace = 136,
			tomCanCopy = 137,
			tomCanRedo = 138,
			tomCanUndo = 139,
			tomUndoLimit = 140,
			tomDocAutoLink = 141,
			tomEllipsisMode = 142,
			tomEllipsisState = 143,
			tomEllipsisNone = 0,
			tomEllipsisEnd = 1,
			tomEllipsisWord = 3,
			tomEllipsisPresent = 1,
			tomVTopCell = 1,
			tomVLowCell = 2,
			tomHStartCell = 4,
			tomHContCell = 8,
			tomRowUpdate = 1,
			tomRowApplyDefault = 0,
			tomCellStructureChangeOnly = 1,
			tomRowHeightActual = 2059,
		}
		[AllowDuplicates]
		public enum OBJECTTYPE : int32
		{
			tomSimpleText = 0,
			tomRuby = 1,
			tomHorzVert = 2,
			tomWarichu = 3,
			tomEq = 9,
			tomMath = 10,
			tomAccent = 10,
			tomBox = 11,
			tomBoxedFormula = 12,
			tomBrackets = 13,
			tomBracketsWithSeps = 14,
			tomEquationArray = 15,
			tomFraction = 16,
			tomFunctionApply = 17,
			tomLeftSubSup = 18,
			tomLowerLimit = 19,
			tomMatrix = 20,
			tomNary = 21,
			tomOpChar = 22,
			tomOverbar = 23,
			tomPhantom = 24,
			tomRadical = 25,
			tomSlashedFraction = 26,
			tomStack = 27,
			tomStretchStack = 28,
			tomSubscript = 29,
			tomSubSup = 30,
			tomSuperscript = 31,
			tomUnderbar = 32,
			tomUpperLimit = 33,
			tomObjectMax = 33,
		}
		[AllowDuplicates]
		public enum MANCODE : int32
		{
			MBOLD = 16,
			MITAL = 32,
			MGREEK = 64,
			MROMN = 0,
			MSCRP = 1,
			MFRAK = 2,
			MOPEN = 3,
			MSANS = 4,
			MMONO = 5,
			MMATH = 6,
			MISOL = 7,
			MINIT = 8,
			MTAIL = 9,
			MSTRCH = 10,
			MLOOP = 11,
			MOPENA = 12,
		}
		
		// --- Function Pointers ---
		
		public function int32 AutoCorrectProc(uint16 langid, PWSTR pszBefore, PWSTR pszAfter, int32 cchAfter, int32* pcchReplaced);
		public function int32 EDITWORDBREAKPROCEX(PSTR pchText, int32 cchText, uint8 bCharSet, int32 action);
		public function uint32 EDITSTREAMCALLBACK(uint dwCookie, uint8* pbBuff, int32 cb, int32* pcb);
		public function HRESULT PCreateTextServices(IUnknown* punkOuter, ITextHost* pITextHost, IUnknown** ppUnk);
		public function HRESULT PShutdownTextServices(IUnknown* pTextServices);
		
		// --- Structs ---
		
		[CRepr]
		public struct IMECOMPTEXT
		{
			public int32 cb;
			public IMECOMPTEXT_FLAGS flags;
		}
		[CRepr]
		public struct TABLEROWPARMS
		{
			public uint8 cbRow;
			public uint8 cbCell;
			public uint8 cCell;
			public uint8 cRow;
			public int32 dxCellMargin;
			public int32 dxIndent;
			public int32 dyHeight;
			public uint32 _bitfield;
			public int32 cpStartRow;
			public uint8 bTableLevel;
			public uint8 iCell;
		}
		[CRepr]
		public struct TABLECELLPARMS
		{
			public int32 dxWidth;
			public uint16 _bitfield;
			public uint16 wShading;
			public int16 dxBrdrLeft;
			public int16 dyBrdrTop;
			public int16 dxBrdrRight;
			public int16 dyBrdrBottom;
			public uint32 crBrdrLeft;
			public uint32 crBrdrTop;
			public uint32 crBrdrRight;
			public uint32 crBrdrBottom;
			public uint32 crBackPat;
			public uint32 crForePat;
		}
		[CRepr]
		public struct RICHEDIT_IMAGE_PARAMETERS
		{
			public int32 xWidth;
			public int32 yHeight;
			public int32 Ascent;
			public TEXT_ALIGN_OPTIONS Type;
			public PWSTR pwszAlternateText;
			public IStream* pIStream;
		}
		[CRepr]
		public struct ENDCOMPOSITIONNOTIFY
		{
			public NMHDR nmhdr;
			public ENDCOMPOSITIONNOTIFY_CODE dwCode;
		}
		[CRepr]
		public struct CHARFORMATA
		{
			public uint32 cbSize;
			public CFM_MASK dwMask;
			public CFE_EFFECTS dwEffects;
			public int32 yHeight;
			public int32 yOffset;
			public uint32 crTextColor;
			public uint8 bCharSet;
			public uint8 bPitchAndFamily;
			public CHAR[32] szFaceName;
		}
		[CRepr]
		public struct CHARFORMATW
		{
			public uint32 cbSize;
			public CFM_MASK dwMask;
			public CFE_EFFECTS dwEffects;
			public int32 yHeight;
			public int32 yOffset;
			public uint32 crTextColor;
			public uint8 bCharSet;
			public uint8 bPitchAndFamily;
			public char16[32] szFaceName;
		}
		[CRepr]
		public struct CHARFORMAT2W
		{
			public CHARFORMATW __AnonymousBase_richedit_L711_C23;
			public uint16 wWeight;
			public int16 sSpacing;
			public uint32 crBackColor;
			public uint32 lcid;
			public _Anonymous_e__Union Anonymous;
			public int16 sStyle;
			public uint16 wKerning;
			public uint8 bUnderlineType;
			public uint8 bAnimation;
			public uint8 bRevAuthor;
			public uint8 bUnderlineColor;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwReserved;
				public uint32 dwCookie;
			}
		}
		[CRepr]
		public struct CHARFORMAT2A
		{
			public CHARFORMATA __AnonymousBase_richedit_L736_C23;
			public uint16 wWeight;
			public int16 sSpacing;
			public uint32 crBackColor;
			public uint32 lcid;
			public _Anonymous_e__Union Anonymous;
			public int16 sStyle;
			public uint16 wKerning;
			public uint8 bUnderlineType;
			public uint8 bAnimation;
			public uint8 bRevAuthor;
			public uint8 bUnderlineColor;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwReserved;
				public uint32 dwCookie;
			}
		}
		[CRepr]
		public struct CHARRANGE
		{
			public int32 cpMin;
			public int32 cpMax;
		}
		[CRepr]
		public struct TEXTRANGEA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
		}
		[CRepr]
		public struct TEXTRANGEW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
		}
		[CRepr]
		public struct EDITSTREAM
		{
			public uint dwCookie;
			public uint32 dwError;
			public EDITSTREAMCALLBACK pfnCallback;
		}
		[CRepr]
		public struct FINDTEXTA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
		}
		[CRepr]
		public struct FINDTEXTW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
		}
		[CRepr]
		public struct FINDTEXTEXA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
			public CHARRANGE chrgText;
		}
		[CRepr]
		public struct FINDTEXTEXW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
			public CHARRANGE chrgText;
		}
		[CRepr]
		public struct FORMATRANGE
		{
			public HDC hdc;
			public HDC hdcTarget;
			public RECT rc;
			public RECT rcPage;
			public CHARRANGE chrg;
		}
		[CRepr]
		public struct PARAFORMAT
		{
			public uint32 cbSize;
			public PARAFORMAT_MASK dwMask;
			public uint16 wNumbering;
			public _Anonymous_e__Union Anonymous;
			public int32 dxStartIndent;
			public int32 dxRightIndent;
			public int32 dxOffset;
			public PARAFORMAT_ALIGNMENT wAlignment;
			public int16 cTabCount;
			public uint32[32] rgxTabs;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint16 wReserved;
				public uint16 wEffects;
			}
		}
		[CRepr]
		public struct PARAFORMAT2
		{
			public PARAFORMAT __AnonymousBase_richedit_L1149_C22;
			public int32 dySpaceBefore;
			public int32 dySpaceAfter;
			public int32 dyLineSpacing;
			public int16 sStyle;
			public uint8 bLineSpacingRule;
			public uint8 bOutlineLevel;
			public uint16 wShadingWeight;
			public PARAFORMAT_SHADING_STYLE wShadingStyle;
			public uint16 wNumberingStart;
			public PARAFORMAT_NUMBERING_STYLE wNumberingStyle;
			public uint16 wNumberingTab;
			public uint16 wBorderSpace;
			public uint16 wBorderWidth;
			public PARAFORMAT_BORDERS wBorders;
		}
		[CRepr]
		public struct MSGFILTER
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
		}
		[CRepr]
		public struct REQRESIZE
		{
			public NMHDR nmhdr;
			public RECT rc;
		}
		[CRepr]
		public struct SELCHANGE
		{
			public NMHDR nmhdr;
			public CHARRANGE chrg;
			public RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltyp;
		}
		[CRepr]
		public struct _grouptypingchange
		{
			public NMHDR nmhdr;
			public BOOL fGroupTyping;
		}
		[CRepr]
		public struct CLIPBOARDFORMAT
		{
			public NMHDR nmhdr;
			public uint16 cf;
		}
		[CRepr]
		public struct GETCONTEXTMENUEX
		{
			public CHARRANGE chrg;
			public uint32 dwFlags;
			public POINT pt;
			public void* pvReserved;
		}
		[CRepr]
		public struct ENDROPFILES
		{
			public NMHDR nmhdr;
			public HANDLE hDrop;
			public int32 cp;
			public BOOL fProtected;
		}
		[CRepr]
		public struct ENPROTECTED
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
			public CHARRANGE chrg;
		}
		[CRepr]
		public struct ENSAVECLIPBOARD
		{
			public NMHDR nmhdr;
			public int32 cObjectCount;
			public int32 cch;
		}
		[CRepr]
		public struct ENOLEOPFAILED
		{
			public NMHDR nmhdr;
			public int32 iob;
			public int32 lOper;
			public HRESULT hr;
		}
		[CRepr]
		public struct OBJECTPOSITIONS
		{
			public NMHDR nmhdr;
			public int32 cObjectCount;
			public int32* pcpPositions;
		}
		[CRepr]
		public struct ENLINK
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
			public CHARRANGE chrg;
		}
		[CRepr]
		public struct ENLOWFIRTF
		{
			public NMHDR nmhdr;
			public PSTR szControl;
		}
		[CRepr]
		public struct ENCORRECTTEXT
		{
			public NMHDR nmhdr;
			public CHARRANGE chrg;
			public RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltyp;
		}
		[CRepr]
		public struct PUNCTUATION
		{
			public uint32 iSize;
			public PSTR szPunctuation;
		}
		[CRepr]
		public struct COMPCOLOR
		{
			public uint32 crText;
			public uint32 crBackground;
			public uint32 dwEffects;
		}
		[CRepr]
		public struct REPASTESPECIAL
		{
			public DVASPECT dwAspect;
			public uint dwParam;
		}
		[CRepr]
		public struct SETTEXTEX
		{
			public uint32 flags;
			public uint32 codepage;
		}
		[CRepr]
		public struct GETTEXTEX
		{
			public uint32 cb;
			public GETTEXTEX_FLAGS flags;
			public uint32 codepage;
			public PSTR lpDefaultChar;
			public int32* lpUsedDefChar;
		}
		[CRepr]
		public struct GETTEXTLENGTHEX
		{
			public GETTEXTLENGTHEX_FLAGS flags;
			public uint32 codepage;
		}
		[CRepr]
		public struct BIDIOPTIONS
		{
			public uint32 cbSize;
			public uint16 wMask;
			public uint16 wEffects;
		}
		[CRepr]
		public struct hyphresult
		{
			public KHYPH khyph;
			public int32 ichHyph;
			public char16 chHyph;
		}
		[CRepr]
		public struct HYPHENATEINFO
		{
			public int16 cbSize;
			public int16 dxHyphenateZone;
			public int pfnHyphenate;
		}
		[CRepr]
		public struct CHANGENOTIFY
		{
			public CHANGETYPE dwChangeType;
			public void* pvCookieData;
		}
		[CRepr, Union]
		public struct CARET_INFO
		{
			public HBITMAP hbitmap;
			public CARET_FLAGS caretFlags;
		}
		[CRepr]
		public struct REOBJECT
		{
			public uint32 cbStruct;
			public int32 cp;
			public Guid clsid;
			public IOleObject* poleobj;
			public IStorage* pstg;
			public IOleClientSite* polesite;
			public SIZE sizel;
			public uint32 dvaspect;
			public REOBJECT_FLAGS dwFlags;
			public uint32 dwUser;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ITextServices : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TxSendMessage(uint32 msg, WPARAM wparam, LPARAM lparam, LRESULT* plresult) mut
			{
				return VT.TxSendMessage(&this, msg, wparam, lparam, plresult);
			}
			public HRESULT TxDraw(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECTL* lprcBounds, RECTL* lprcWBounds, RECT* lprcUpdate, int pfnContinue, uint32 dwContinue, int32 lViewId) mut
			{
				return VT.TxDraw(&this, dwDrawAspect, lindex, pvAspect, ptd, hdcDraw, hicTargetDev, lprcBounds, lprcWBounds, lprcUpdate, pfnContinue, dwContinue, lViewId);
			}
			public HRESULT TxGetHScroll(int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) mut
			{
				return VT.TxGetHScroll(&this, plMin, plMax, plPos, plPage, pfEnabled);
			}
			public HRESULT TxGetVScroll(int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) mut
			{
				return VT.TxGetVScroll(&this, plMin, plMax, plPos, plPage, pfEnabled);
			}
			public HRESULT OnTxSetCursor(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y) mut
			{
				return VT.OnTxSetCursor(&this, dwDrawAspect, lindex, pvAspect, ptd, hdcDraw, hicTargetDev, lprcClient, x, y);
			}
			public HRESULT TxQueryHitPoint(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y, uint32* pHitResult) mut
			{
				return VT.TxQueryHitPoint(&this, dwDrawAspect, lindex, pvAspect, ptd, hdcDraw, hicTargetDev, lprcClient, x, y, pHitResult);
			}
			public HRESULT OnTxInPlaceActivate(RECT* prcClient) mut
			{
				return VT.OnTxInPlaceActivate(&this, prcClient);
			}
			public HRESULT OnTxInPlaceDeactivate() mut
			{
				return VT.OnTxInPlaceDeactivate(&this);
			}
			public HRESULT OnTxUIActivate() mut
			{
				return VT.OnTxUIActivate(&this);
			}
			public HRESULT OnTxUIDeactivate() mut
			{
				return VT.OnTxUIDeactivate(&this);
			}
			public HRESULT TxGetText(BSTR* pbstrText) mut
			{
				return VT.TxGetText(&this, pbstrText);
			}
			public HRESULT TxSetText(PWSTR pszText) mut
			{
				return VT.TxSetText(&this, pszText);
			}
			public HRESULT TxGetCurTargetX(int32* param0) mut
			{
				return VT.TxGetCurTargetX(&this, param0);
			}
			public HRESULT TxGetBaseLinePos(int32* param0) mut
			{
				return VT.TxGetBaseLinePos(&this, param0);
			}
			public HRESULT TxGetNaturalSize(uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight) mut
			{
				return VT.TxGetNaturalSize(&this, dwAspect, hdcDraw, hicTargetDev, ptd, dwMode, psizelExtent, pwidth, pheight);
			}
			public HRESULT TxGetDropTarget(IDropTarget** ppDropTarget) mut
			{
				return VT.TxGetDropTarget(&this, ppDropTarget);
			}
			public HRESULT OnTxPropertyBitsChange(uint32 dwMask, uint32 dwBits) mut
			{
				return VT.OnTxPropertyBitsChange(&this, dwMask, dwBits);
			}
			public HRESULT TxGetCachedSize(uint32* pdwWidth, uint32* pdwHeight) mut
			{
				return VT.TxGetCachedSize(&this, pdwWidth, pdwHeight);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextServices *self, uint32 msg, WPARAM wparam, LPARAM lparam, LRESULT* plresult) TxSendMessage;
				public new function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECTL* lprcBounds, RECTL* lprcWBounds, RECT* lprcUpdate, int pfnContinue, uint32 dwContinue, int32 lViewId) TxDraw;
				public new function HRESULT(ITextServices *self, int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) TxGetHScroll;
				public new function HRESULT(ITextServices *self, int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) TxGetVScroll;
				public new function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y) OnTxSetCursor;
				public new function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y, uint32* pHitResult) TxQueryHitPoint;
				public new function HRESULT(ITextServices *self, RECT* prcClient) OnTxInPlaceActivate;
				public new function HRESULT(ITextServices *self) OnTxInPlaceDeactivate;
				public new function HRESULT(ITextServices *self) OnTxUIActivate;
				public new function HRESULT(ITextServices *self) OnTxUIDeactivate;
				public new function HRESULT(ITextServices *self, BSTR* pbstrText) TxGetText;
				public new function HRESULT(ITextServices *self, PWSTR pszText) TxSetText;
				public new function HRESULT(ITextServices *self, int32* param0) TxGetCurTargetX;
				public new function HRESULT(ITextServices *self, int32* param0) TxGetBaseLinePos;
				public new function HRESULT(ITextServices *self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight) TxGetNaturalSize;
				public new function HRESULT(ITextServices *self, IDropTarget** ppDropTarget) TxGetDropTarget;
				public new function HRESULT(ITextServices *self, uint32 dwMask, uint32 dwBits) OnTxPropertyBitsChange;
				public new function HRESULT(ITextServices *self, uint32* pdwWidth, uint32* pdwHeight) TxGetCachedSize;
			}
		}
		[CRepr]
		public struct ITextHost : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HDC TxGetDC() mut
			{
				return VT.TxGetDC(&this);
			}
			public int32 TxReleaseDC(HDC hdc) mut
			{
				return VT.TxReleaseDC(&this, hdc);
			}
			public BOOL TxShowScrollBar(int32 fnBar, BOOL fShow) mut
			{
				return VT.TxShowScrollBar(&this, fnBar, fShow);
			}
			public BOOL TxEnableScrollBar(SCROLLBAR_CONSTANTS fuSBFlags, ENABLE_SCROLL_BAR_ARROWS fuArrowflags) mut
			{
				return VT.TxEnableScrollBar(&this, fuSBFlags, fuArrowflags);
			}
			public BOOL TxSetScrollRange(int32 fnBar, int32 nMinPos, int32 nMaxPos, BOOL fRedraw) mut
			{
				return VT.TxSetScrollRange(&this, fnBar, nMinPos, nMaxPos, fRedraw);
			}
			public BOOL TxSetScrollPos(int32 fnBar, int32 nPos, BOOL fRedraw) mut
			{
				return VT.TxSetScrollPos(&this, fnBar, nPos, fRedraw);
			}
			public void TxInvalidateRect(RECT* prc, BOOL fMode) mut
			{
				VT.TxInvalidateRect(&this, prc, fMode);
			}
			public void TxViewChange(BOOL fUpdate) mut
			{
				VT.TxViewChange(&this, fUpdate);
			}
			public BOOL TxCreateCaret(HBITMAP hbmp, int32 xWidth, int32 yHeight) mut
			{
				return VT.TxCreateCaret(&this, hbmp, xWidth, yHeight);
			}
			public BOOL TxShowCaret(BOOL fShow) mut
			{
				return VT.TxShowCaret(&this, fShow);
			}
			public BOOL TxSetCaretPos(int32 x, int32 y) mut
			{
				return VT.TxSetCaretPos(&this, x, y);
			}
			public BOOL TxSetTimer(uint32 idTimer, uint32 uTimeout) mut
			{
				return VT.TxSetTimer(&this, idTimer, uTimeout);
			}
			public void TxKillTimer(uint32 idTimer) mut
			{
				VT.TxKillTimer(&this, idTimer);
			}
			public void TxScrollWindowEx(int32 dx, int32 dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate, SHOW_WINDOW_CMD fuScroll) mut
			{
				VT.TxScrollWindowEx(&this, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate, fuScroll);
			}
			public void TxSetCapture(BOOL fCapture) mut
			{
				VT.TxSetCapture(&this, fCapture);
			}
			public void TxSetFocus() mut
			{
				VT.TxSetFocus(&this);
			}
			public void TxSetCursor(HCURSOR hcur, BOOL fText) mut
			{
				VT.TxSetCursor(&this, hcur, fText);
			}
			public BOOL TxScreenToClient(POINT* lppt) mut
			{
				return VT.TxScreenToClient(&this, lppt);
			}
			public BOOL TxClientToScreen(POINT* lppt) mut
			{
				return VT.TxClientToScreen(&this, lppt);
			}
			public HRESULT TxActivate(int32* plOldState) mut
			{
				return VT.TxActivate(&this, plOldState);
			}
			public HRESULT TxDeactivate(int32 lNewState) mut
			{
				return VT.TxDeactivate(&this, lNewState);
			}
			public HRESULT TxGetClientRect(RECT* prc) mut
			{
				return VT.TxGetClientRect(&this, prc);
			}
			public HRESULT TxGetViewInset(RECT* prc) mut
			{
				return VT.TxGetViewInset(&this, prc);
			}
			public HRESULT TxGetCharFormat(CHARFORMATW** ppCF) mut
			{
				return VT.TxGetCharFormat(&this, ppCF);
			}
			public HRESULT TxGetParaFormat(PARAFORMAT** ppPF) mut
			{
				return VT.TxGetParaFormat(&this, ppPF);
			}
			public uint32 TxGetSysColor(int32 nIndex) mut
			{
				return VT.TxGetSysColor(&this, nIndex);
			}
			public HRESULT TxGetBackStyle(TXTBACKSTYLE* pstyle) mut
			{
				return VT.TxGetBackStyle(&this, pstyle);
			}
			public HRESULT TxGetMaxLength(uint32* plength) mut
			{
				return VT.TxGetMaxLength(&this, plength);
			}
			public HRESULT TxGetScrollBars(uint32* pdwScrollBar) mut
			{
				return VT.TxGetScrollBars(&this, pdwScrollBar);
			}
			public HRESULT TxGetPasswordChar(int8* pch) mut
			{
				return VT.TxGetPasswordChar(&this, pch);
			}
			public HRESULT TxGetAcceleratorPos(int32* pcp) mut
			{
				return VT.TxGetAcceleratorPos(&this, pcp);
			}
			public HRESULT TxGetExtent(SIZE* lpExtent) mut
			{
				return VT.TxGetExtent(&this, lpExtent);
			}
			public HRESULT OnTxCharFormatChange(CHARFORMATW* pCF) mut
			{
				return VT.OnTxCharFormatChange(&this, pCF);
			}
			public HRESULT OnTxParaFormatChange(PARAFORMAT* pPF) mut
			{
				return VT.OnTxParaFormatChange(&this, pPF);
			}
			public HRESULT TxGetPropertyBits(uint32 dwMask, uint32* pdwBits) mut
			{
				return VT.TxGetPropertyBits(&this, dwMask, pdwBits);
			}
			public HRESULT TxNotify(uint32 iNotify, void* pv) mut
			{
				return VT.TxNotify(&this, iNotify, pv);
			}
			public HIMC TxImmGetContext() mut
			{
				return VT.TxImmGetContext(&this);
			}
			public void TxImmReleaseContext(HIMC himc) mut
			{
				VT.TxImmReleaseContext(&this, himc);
			}
			public HRESULT TxGetSelectionBarWidth(int32* lSelBarWidth) mut
			{
				return VT.TxGetSelectionBarWidth(&this, lSelBarWidth);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HDC(ITextHost *self) TxGetDC;
				public new function int32(ITextHost *self, HDC hdc) TxReleaseDC;
				public new function BOOL(ITextHost *self, int32 fnBar, BOOL fShow) TxShowScrollBar;
				public new function BOOL(ITextHost *self, SCROLLBAR_CONSTANTS fuSBFlags, ENABLE_SCROLL_BAR_ARROWS fuArrowflags) TxEnableScrollBar;
				public new function BOOL(ITextHost *self, int32 fnBar, int32 nMinPos, int32 nMaxPos, BOOL fRedraw) TxSetScrollRange;
				public new function BOOL(ITextHost *self, int32 fnBar, int32 nPos, BOOL fRedraw) TxSetScrollPos;
				public new function void(ITextHost *self, RECT* prc, BOOL fMode) TxInvalidateRect;
				public new function void(ITextHost *self, BOOL fUpdate) TxViewChange;
				public new function BOOL(ITextHost *self, HBITMAP hbmp, int32 xWidth, int32 yHeight) TxCreateCaret;
				public new function BOOL(ITextHost *self, BOOL fShow) TxShowCaret;
				public new function BOOL(ITextHost *self, int32 x, int32 y) TxSetCaretPos;
				public new function BOOL(ITextHost *self, uint32 idTimer, uint32 uTimeout) TxSetTimer;
				public new function void(ITextHost *self, uint32 idTimer) TxKillTimer;
				public new function void(ITextHost *self, int32 dx, int32 dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate, SHOW_WINDOW_CMD fuScroll) TxScrollWindowEx;
				public new function void(ITextHost *self, BOOL fCapture) TxSetCapture;
				public new function void(ITextHost *self) TxSetFocus;
				public new function void(ITextHost *self, HCURSOR hcur, BOOL fText) TxSetCursor;
				public new function BOOL(ITextHost *self, POINT* lppt) TxScreenToClient;
				public new function BOOL(ITextHost *self, POINT* lppt) TxClientToScreen;
				public new function HRESULT(ITextHost *self, int32* plOldState) TxActivate;
				public new function HRESULT(ITextHost *self, int32 lNewState) TxDeactivate;
				public new function HRESULT(ITextHost *self, RECT* prc) TxGetClientRect;
				public new function HRESULT(ITextHost *self, RECT* prc) TxGetViewInset;
				public new function HRESULT(ITextHost *self, CHARFORMATW** ppCF) TxGetCharFormat;
				public new function HRESULT(ITextHost *self, PARAFORMAT** ppPF) TxGetParaFormat;
				public new function uint32(ITextHost *self, int32 nIndex) TxGetSysColor;
				public new function HRESULT(ITextHost *self, TXTBACKSTYLE* pstyle) TxGetBackStyle;
				public new function HRESULT(ITextHost *self, uint32* plength) TxGetMaxLength;
				public new function HRESULT(ITextHost *self, uint32* pdwScrollBar) TxGetScrollBars;
				public new function HRESULT(ITextHost *self, int8* pch) TxGetPasswordChar;
				public new function HRESULT(ITextHost *self, int32* pcp) TxGetAcceleratorPos;
				public new function HRESULT(ITextHost *self, SIZE* lpExtent) TxGetExtent;
				public new function HRESULT(ITextHost *self, CHARFORMATW* pCF) OnTxCharFormatChange;
				public new function HRESULT(ITextHost *self, PARAFORMAT* pPF) OnTxParaFormatChange;
				public new function HRESULT(ITextHost *self, uint32 dwMask, uint32* pdwBits) TxGetPropertyBits;
				public new function HRESULT(ITextHost *self, uint32 iNotify, void* pv) TxNotify;
				public new function HIMC(ITextHost *self) TxImmGetContext;
				public new function void(ITextHost *self, HIMC himc) TxImmReleaseContext;
				public new function HRESULT(ITextHost *self, int32* lSelBarWidth) TxGetSelectionBarWidth;
			}
		}
		[CRepr]
		public struct IRicheditUiaOverrides : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyOverrideValue(int32 propertyId, VARIANT* pRetValue) mut
			{
				return VT.GetPropertyOverrideValue(&this, propertyId, pRetValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRicheditUiaOverrides *self, int32 propertyId, VARIANT* pRetValue) GetPropertyOverrideValue;
			}
		}
		[CRepr]
		public struct ITextHost2 : ITextHost
		{
			public new VTable* VT { get => (.)vt; }
			
			public BOOL TxIsDoubleClickPending() mut
			{
				return VT.TxIsDoubleClickPending(&this);
			}
			public HRESULT TxGetWindow(HWND* phwnd) mut
			{
				return VT.TxGetWindow(&this, phwnd);
			}
			public HRESULT TxSetForegroundWindow() mut
			{
				return VT.TxSetForegroundWindow(&this);
			}
			public HPALETTE TxGetPalette() mut
			{
				return VT.TxGetPalette(&this);
			}
			public HRESULT TxGetEastAsianFlags(int32* pFlags) mut
			{
				return VT.TxGetEastAsianFlags(&this, pFlags);
			}
			public HCURSOR TxSetCursor2(HCURSOR hcur, BOOL bText) mut
			{
				return VT.TxSetCursor2(&this, hcur, bText);
			}
			public void TxFreeTextServicesNotification() mut
			{
				VT.TxFreeTextServicesNotification(&this);
			}
			public HRESULT TxGetEditStyle(uint32 dwItem, uint32* pdwData) mut
			{
				return VT.TxGetEditStyle(&this, dwItem, pdwData);
			}
			public HRESULT TxGetWindowStyles(uint32* pdwStyle, uint32* pdwExStyle) mut
			{
				return VT.TxGetWindowStyles(&this, pdwStyle, pdwExStyle);
			}
			public HRESULT TxShowDropCaret(BOOL fShow, HDC hdc, RECT* prc) mut
			{
				return VT.TxShowDropCaret(&this, fShow, hdc, prc);
			}
			public HRESULT TxDestroyCaret() mut
			{
				return VT.TxDestroyCaret(&this);
			}
			public HRESULT TxGetHorzExtent(int32* plHorzExtent) mut
			{
				return VT.TxGetHorzExtent(&this, plHorzExtent);
			}
			[CRepr]
			public struct VTable : ITextHost.VTable
			{
				public new function BOOL(ITextHost2 *self) TxIsDoubleClickPending;
				public new function HRESULT(ITextHost2 *self, HWND* phwnd) TxGetWindow;
				public new function HRESULT(ITextHost2 *self) TxSetForegroundWindow;
				public new function HPALETTE(ITextHost2 *self) TxGetPalette;
				public new function HRESULT(ITextHost2 *self, int32* pFlags) TxGetEastAsianFlags;
				public new function HCURSOR(ITextHost2 *self, HCURSOR hcur, BOOL bText) TxSetCursor2;
				public new function void(ITextHost2 *self) TxFreeTextServicesNotification;
				public new function HRESULT(ITextHost2 *self, uint32 dwItem, uint32* pdwData) TxGetEditStyle;
				public new function HRESULT(ITextHost2 *self, uint32* pdwStyle, uint32* pdwExStyle) TxGetWindowStyles;
				public new function HRESULT(ITextHost2 *self, BOOL fShow, HDC hdc, RECT* prc) TxShowDropCaret;
				public new function HRESULT(ITextHost2 *self) TxDestroyCaret;
				public new function HRESULT(ITextHost2 *self, int32* plHorzExtent) TxGetHorzExtent;
			}
		}
		[CRepr]
		public struct ITextServices2 : ITextServices
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TxGetNaturalSize2(uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight, int32* pascent) mut
			{
				return VT.TxGetNaturalSize2(&this, dwAspect, hdcDraw, hicTargetDev, ptd, dwMode, psizelExtent, pwidth, pheight, pascent);
			}
			public HRESULT TxDrawD2D(ID2D1RenderTarget* pRenderTarget, RECTL* lprcBounds, RECT* lprcUpdate, int32 lViewId) mut
			{
				return VT.TxDrawD2D(&this, pRenderTarget, lprcBounds, lprcUpdate, lViewId);
			}
			[CRepr]
			public struct VTable : ITextServices.VTable
			{
				public new function HRESULT(ITextServices2 *self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight, int32* pascent) TxGetNaturalSize2;
				public new function HRESULT(ITextServices2 *self, ID2D1RenderTarget* pRenderTarget, RECTL* lprcBounds, RECT* lprcUpdate, int32 lViewId) TxDrawD2D;
			}
		}
		[CRepr]
		public struct IRichEditOle : IUnknown
		{
			public const new Guid IID = .(0x00020d00, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientSite(IOleClientSite** lplpolesite) mut
			{
				return VT.GetClientSite(&this, lplpolesite);
			}
			public int32 GetObjectCount() mut
			{
				return VT.GetObjectCount(&this);
			}
			public int32 GetLinkCount() mut
			{
				return VT.GetLinkCount(&this);
			}
			public HRESULT GetObject(int32 iob, REOBJECT* lpreobject, RICH_EDIT_GET_OBJECT_FLAGS dwFlags) mut
			{
				return VT.GetObject(&this, iob, lpreobject, dwFlags);
			}
			public HRESULT InsertObject(REOBJECT* lpreobject) mut
			{
				return VT.InsertObject(&this, lpreobject);
			}
			public HRESULT ConvertObject(int32 iob, Guid* rclsidNew, PSTR lpstrUserTypeNew) mut
			{
				return VT.ConvertObject(&this, iob, rclsidNew, lpstrUserTypeNew);
			}
			public HRESULT ActivateAs(Guid* rclsid, Guid* rclsidAs) mut
			{
				return VT.ActivateAs(&this, rclsid, rclsidAs);
			}
			public HRESULT SetHostNames(PSTR lpstrContainerApp, PSTR lpstrContainerObj) mut
			{
				return VT.SetHostNames(&this, lpstrContainerApp, lpstrContainerObj);
			}
			public HRESULT SetLinkAvailable(int32 iob, BOOL fAvailable) mut
			{
				return VT.SetLinkAvailable(&this, iob, fAvailable);
			}
			public HRESULT SetDvaspect(int32 iob, uint32 dvaspect) mut
			{
				return VT.SetDvaspect(&this, iob, dvaspect);
			}
			public HRESULT HandsOffStorage(int32 iob) mut
			{
				return VT.HandsOffStorage(&this, iob);
			}
			public HRESULT SaveCompleted(int32 iob, IStorage* lpstg) mut
			{
				return VT.SaveCompleted(&this, iob, lpstg);
			}
			public HRESULT InPlaceDeactivate() mut
			{
				return VT.InPlaceDeactivate(&this);
			}
			public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut
			{
				return VT.ContextSensitiveHelp(&this, fEnterMode);
			}
			public HRESULT GetClipboardData(CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) mut
			{
				return VT.GetClipboardData(&this, lpchrg, reco, lplpdataobj);
			}
			public HRESULT ImportDataObject(IDataObject* lpdataobj, uint16 cf, int hMetaPict) mut
			{
				return VT.ImportDataObject(&this, lpdataobj, cf, hMetaPict);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRichEditOle *self, IOleClientSite** lplpolesite) GetClientSite;
				public new function int32(IRichEditOle *self) GetObjectCount;
				public new function int32(IRichEditOle *self) GetLinkCount;
				public new function HRESULT(IRichEditOle *self, int32 iob, REOBJECT* lpreobject, RICH_EDIT_GET_OBJECT_FLAGS dwFlags) GetObject;
				public new function HRESULT(IRichEditOle *self, REOBJECT* lpreobject) InsertObject;
				public new function HRESULT(IRichEditOle *self, int32 iob, Guid* rclsidNew, PSTR lpstrUserTypeNew) ConvertObject;
				public new function HRESULT(IRichEditOle *self, Guid* rclsid, Guid* rclsidAs) ActivateAs;
				public new function HRESULT(IRichEditOle *self, PSTR lpstrContainerApp, PSTR lpstrContainerObj) SetHostNames;
				public new function HRESULT(IRichEditOle *self, int32 iob, BOOL fAvailable) SetLinkAvailable;
				public new function HRESULT(IRichEditOle *self, int32 iob, uint32 dvaspect) SetDvaspect;
				public new function HRESULT(IRichEditOle *self, int32 iob) HandsOffStorage;
				public new function HRESULT(IRichEditOle *self, int32 iob, IStorage* lpstg) SaveCompleted;
				public new function HRESULT(IRichEditOle *self) InPlaceDeactivate;
				public new function HRESULT(IRichEditOle *self, BOOL fEnterMode) ContextSensitiveHelp;
				public new function HRESULT(IRichEditOle *self, CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) GetClipboardData;
				public new function HRESULT(IRichEditOle *self, IDataObject* lpdataobj, uint16 cf, int hMetaPict) ImportDataObject;
			}
		}
		[CRepr]
		public struct IRichEditOleCallback : IUnknown
		{
			public const new Guid IID = .(0x00020d03, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNewStorage(IStorage** lplpstg) mut
			{
				return VT.GetNewStorage(&this, lplpstg);
			}
			public HRESULT GetInPlaceContext(IOleInPlaceFrame** lplpFrame, IOleInPlaceUIWindow** lplpDoc, OIFI* lpFrameInfo) mut
			{
				return VT.GetInPlaceContext(&this, lplpFrame, lplpDoc, lpFrameInfo);
			}
			public HRESULT ShowContainerUI(BOOL fShow) mut
			{
				return VT.ShowContainerUI(&this, fShow);
			}
			public HRESULT QueryInsertObject(Guid* lpclsid, IStorage* lpstg, int32 cp) mut
			{
				return VT.QueryInsertObject(&this, lpclsid, lpstg, cp);
			}
			public HRESULT DeleteObject(IOleObject* lpoleobj) mut
			{
				return VT.DeleteObject(&this, lpoleobj);
			}
			public HRESULT QueryAcceptData(IDataObject* lpdataobj, uint16* lpcfFormat, uint32 reco, BOOL fReally, int hMetaPict) mut
			{
				return VT.QueryAcceptData(&this, lpdataobj, lpcfFormat, reco, fReally, hMetaPict);
			}
			public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut
			{
				return VT.ContextSensitiveHelp(&this, fEnterMode);
			}
			public HRESULT GetClipboardData(CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) mut
			{
				return VT.GetClipboardData(&this, lpchrg, reco, lplpdataobj);
			}
			public HRESULT GetDragDropEffect(BOOL fDrag, uint32 grfKeyState, uint32* pdwEffect) mut
			{
				return VT.GetDragDropEffect(&this, fDrag, grfKeyState, pdwEffect);
			}
			public HRESULT GetContextMenu(RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltype, IOleObject* lpoleobj, CHARRANGE* lpchrg, HMENU* lphmenu) mut
			{
				return VT.GetContextMenu(&this, seltype, lpoleobj, lpchrg, lphmenu);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRichEditOleCallback *self, IStorage** lplpstg) GetNewStorage;
				public new function HRESULT(IRichEditOleCallback *self, IOleInPlaceFrame** lplpFrame, IOleInPlaceUIWindow** lplpDoc, OIFI* lpFrameInfo) GetInPlaceContext;
				public new function HRESULT(IRichEditOleCallback *self, BOOL fShow) ShowContainerUI;
				public new function HRESULT(IRichEditOleCallback *self, Guid* lpclsid, IStorage* lpstg, int32 cp) QueryInsertObject;
				public new function HRESULT(IRichEditOleCallback *self, IOleObject* lpoleobj) DeleteObject;
				public new function HRESULT(IRichEditOleCallback *self, IDataObject* lpdataobj, uint16* lpcfFormat, uint32 reco, BOOL fReally, int hMetaPict) QueryAcceptData;
				public new function HRESULT(IRichEditOleCallback *self, BOOL fEnterMode) ContextSensitiveHelp;
				public new function HRESULT(IRichEditOleCallback *self, CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) GetClipboardData;
				public new function HRESULT(IRichEditOleCallback *self, BOOL fDrag, uint32 grfKeyState, uint32* pdwEffect) GetDragDropEffect;
				public new function HRESULT(IRichEditOleCallback *self, RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltype, IOleObject* lpoleobj, CHARRANGE* lpchrg, HMENU* lphmenu) GetContextMenu;
			}
		}
		[CRepr]
		public struct ITextDocument : IDispatch
		{
			public const new Guid IID = .(0x8cc497c0, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(BSTR* pName) mut
			{
				return VT.GetName(&this, pName);
			}
			public HRESULT GetSelection(ITextSelection** ppSel) mut
			{
				return VT.GetSelection(&this, ppSel);
			}
			public HRESULT GetStoryCount(int32* pCount) mut
			{
				return VT.GetStoryCount(&this, pCount);
			}
			public HRESULT GetStoryRanges(ITextStoryRanges** ppStories) mut
			{
				return VT.GetStoryRanges(&this, ppStories);
			}
			public HRESULT GetSaved(int32* pValue) mut
			{
				return VT.GetSaved(&this, pValue);
			}
			public HRESULT SetSaved(tomConstants Value) mut
			{
				return VT.SetSaved(&this, Value);
			}
			public HRESULT GetDefaultTabStop(float* pValue) mut
			{
				return VT.GetDefaultTabStop(&this, pValue);
			}
			public HRESULT SetDefaultTabStop(float Value) mut
			{
				return VT.SetDefaultTabStop(&this, Value);
			}
			public HRESULT New() mut
			{
				return VT.New(&this);
			}
			public HRESULT Open(VARIANT* pVar, int32 Flags, int32 CodePage) mut
			{
				return VT.Open(&this, pVar, Flags, CodePage);
			}
			public HRESULT Save(VARIANT* pVar, int32 Flags, int32 CodePage) mut
			{
				return VT.Save(&this, pVar, Flags, CodePage);
			}
			public HRESULT Freeze(int32* pCount) mut
			{
				return VT.Freeze(&this, pCount);
			}
			public HRESULT Unfreeze(int32* pCount) mut
			{
				return VT.Unfreeze(&this, pCount);
			}
			public HRESULT BeginEditCollection() mut
			{
				return VT.BeginEditCollection(&this);
			}
			public HRESULT EndEditCollection() mut
			{
				return VT.EndEditCollection(&this);
			}
			public HRESULT Undo(int32 Count, int32* pCount) mut
			{
				return VT.Undo(&this, Count, pCount);
			}
			public HRESULT Redo(int32 Count, int32* pCount) mut
			{
				return VT.Redo(&this, Count, pCount);
			}
			public HRESULT Range(int32 cpActive, int32 cpAnchor, ITextRange** ppRange) mut
			{
				return VT.Range(&this, cpActive, cpAnchor, ppRange);
			}
			public HRESULT RangeFromPoint(int32 x, int32 y, ITextRange** ppRange) mut
			{
				return VT.RangeFromPoint(&this, x, y, ppRange);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextDocument *self, BSTR* pName) GetName;
				public new function HRESULT(ITextDocument *self, ITextSelection** ppSel) GetSelection;
				public new function HRESULT(ITextDocument *self, int32* pCount) GetStoryCount;
				public new function HRESULT(ITextDocument *self, ITextStoryRanges** ppStories) GetStoryRanges;
				public new function HRESULT(ITextDocument *self, int32* pValue) GetSaved;
				public new function HRESULT(ITextDocument *self, tomConstants Value) SetSaved;
				public new function HRESULT(ITextDocument *self, float* pValue) GetDefaultTabStop;
				public new function HRESULT(ITextDocument *self, float Value) SetDefaultTabStop;
				public new function HRESULT(ITextDocument *self) New;
				public new function HRESULT(ITextDocument *self, VARIANT* pVar, int32 Flags, int32 CodePage) Open;
				public new function HRESULT(ITextDocument *self, VARIANT* pVar, int32 Flags, int32 CodePage) Save;
				public new function HRESULT(ITextDocument *self, int32* pCount) Freeze;
				public new function HRESULT(ITextDocument *self, int32* pCount) Unfreeze;
				public new function HRESULT(ITextDocument *self) BeginEditCollection;
				public new function HRESULT(ITextDocument *self) EndEditCollection;
				public new function HRESULT(ITextDocument *self, int32 Count, int32* pCount) Undo;
				public new function HRESULT(ITextDocument *self, int32 Count, int32* pCount) Redo;
				public new function HRESULT(ITextDocument *self, int32 cpActive, int32 cpAnchor, ITextRange** ppRange) Range;
				public new function HRESULT(ITextDocument *self, int32 x, int32 y, ITextRange** ppRange) RangeFromPoint;
			}
		}
		[CRepr]
		public struct ITextRange : IDispatch
		{
			public const new Guid IID = .(0x8cc497c2, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(BSTR* pbstr) mut
			{
				return VT.GetText(&this, pbstr);
			}
			public HRESULT SetText(BSTR bstr) mut
			{
				return VT.SetText(&this, bstr);
			}
			public HRESULT GetChar(int32* pChar) mut
			{
				return VT.GetChar(&this, pChar);
			}
			public HRESULT SetChar(int32 Char) mut
			{
				return VT.SetChar(&this, Char);
			}
			public HRESULT GetDuplicate(ITextRange** ppRange) mut
			{
				return VT.GetDuplicate(&this, ppRange);
			}
			public HRESULT GetFormattedText(ITextRange** ppRange) mut
			{
				return VT.GetFormattedText(&this, ppRange);
			}
			public HRESULT SetFormattedText(ITextRange* pRange) mut
			{
				return VT.SetFormattedText(&this, pRange);
			}
			public HRESULT GetStart(int32* pcpFirst) mut
			{
				return VT.GetStart(&this, pcpFirst);
			}
			public HRESULT SetStart(int32 cpFirst) mut
			{
				return VT.SetStart(&this, cpFirst);
			}
			public HRESULT GetEnd(int32* pcpLim) mut
			{
				return VT.GetEnd(&this, pcpLim);
			}
			public HRESULT SetEnd(int32 cpLim) mut
			{
				return VT.SetEnd(&this, cpLim);
			}
			public HRESULT GetFont(ITextFont** ppFont) mut
			{
				return VT.GetFont(&this, ppFont);
			}
			public HRESULT SetFont(ITextFont* pFont) mut
			{
				return VT.SetFont(&this, pFont);
			}
			public HRESULT GetPara(ITextPara** ppPara) mut
			{
				return VT.GetPara(&this, ppPara);
			}
			public HRESULT SetPara(ITextPara* pPara) mut
			{
				return VT.SetPara(&this, pPara);
			}
			public HRESULT GetStoryLength(int32* pCount) mut
			{
				return VT.GetStoryLength(&this, pCount);
			}
			public HRESULT GetStoryType(int32* pValue) mut
			{
				return VT.GetStoryType(&this, pValue);
			}
			public HRESULT Collapse(int32 bStart) mut
			{
				return VT.Collapse(&this, bStart);
			}
			public HRESULT Expand(int32 Unit, int32* pDelta) mut
			{
				return VT.Expand(&this, Unit, pDelta);
			}
			public HRESULT GetIndex(int32 Unit, int32* pIndex) mut
			{
				return VT.GetIndex(&this, Unit, pIndex);
			}
			public HRESULT SetIndex(int32 Unit, int32 Index, int32 Extend) mut
			{
				return VT.SetIndex(&this, Unit, Index, Extend);
			}
			public HRESULT SetRange(int32 cpAnchor, int32 cpActive) mut
			{
				return VT.SetRange(&this, cpAnchor, cpActive);
			}
			public HRESULT InRange(ITextRange* pRange, int32* pValue) mut
			{
				return VT.InRange(&this, pRange, pValue);
			}
			public HRESULT InStory(ITextRange* pRange, int32* pValue) mut
			{
				return VT.InStory(&this, pRange, pValue);
			}
			public HRESULT IsEqual(ITextRange* pRange, int32* pValue) mut
			{
				return VT.IsEqual(&this, pRange, pValue);
			}
			public HRESULT Select() mut
			{
				return VT.Select(&this);
			}
			public HRESULT StartOf(int32 Unit, int32 Extend, int32* pDelta) mut
			{
				return VT.StartOf(&this, Unit, Extend, pDelta);
			}
			public HRESULT EndOf(int32 Unit, int32 Extend, int32* pDelta) mut
			{
				return VT.EndOf(&this, Unit, Extend, pDelta);
			}
			public HRESULT Move(int32 Unit, int32 Count, int32* pDelta) mut
			{
				return VT.Move(&this, Unit, Count, pDelta);
			}
			public HRESULT MoveStart(int32 Unit, int32 Count, int32* pDelta) mut
			{
				return VT.MoveStart(&this, Unit, Count, pDelta);
			}
			public HRESULT MoveEnd(int32 Unit, int32 Count, int32* pDelta) mut
			{
				return VT.MoveEnd(&this, Unit, Count, pDelta);
			}
			public HRESULT MoveWhile(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveWhile(&this, Cset, Count, pDelta);
			}
			public HRESULT MoveStartWhile(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveStartWhile(&this, Cset, Count, pDelta);
			}
			public HRESULT MoveEndWhile(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveEndWhile(&this, Cset, Count, pDelta);
			}
			public HRESULT MoveUntil(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveUntil(&this, Cset, Count, pDelta);
			}
			public HRESULT MoveStartUntil(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveStartUntil(&this, Cset, Count, pDelta);
			}
			public HRESULT MoveEndUntil(VARIANT* Cset, int32 Count, int32* pDelta) mut
			{
				return VT.MoveEndUntil(&this, Cset, Count, pDelta);
			}
			public HRESULT FindText(BSTR bstr, int32 Count, int32 Flags, int32* pLength) mut
			{
				return VT.FindText(&this, bstr, Count, Flags, pLength);
			}
			public HRESULT FindTextStart(BSTR bstr, int32 Count, int32 Flags, int32* pLength) mut
			{
				return VT.FindTextStart(&this, bstr, Count, Flags, pLength);
			}
			public HRESULT FindTextEnd(BSTR bstr, int32 Count, int32 Flags, int32* pLength) mut
			{
				return VT.FindTextEnd(&this, bstr, Count, Flags, pLength);
			}
			public HRESULT Delete(int32 Unit, int32 Count, int32* pDelta) mut
			{
				return VT.Delete(&this, Unit, Count, pDelta);
			}
			public HRESULT Cut(VARIANT* pVar) mut
			{
				return VT.Cut(&this, pVar);
			}
			public HRESULT Copy(VARIANT* pVar) mut
			{
				return VT.Copy(&this, pVar);
			}
			public HRESULT Paste(VARIANT* pVar, int32 Format) mut
			{
				return VT.Paste(&this, pVar, Format);
			}
			public HRESULT CanPaste(VARIANT* pVar, int32 Format, int32* pValue) mut
			{
				return VT.CanPaste(&this, pVar, Format, pValue);
			}
			public HRESULT CanEdit(int32* pValue) mut
			{
				return VT.CanEdit(&this, pValue);
			}
			public HRESULT ChangeCase(int32 Type) mut
			{
				return VT.ChangeCase(&this, Type);
			}
			public HRESULT GetPoint(int32 Type, int32* px, int32* py) mut
			{
				return VT.GetPoint(&this, Type, px, py);
			}
			public HRESULT SetPoint(int32 x, int32 y, int32 Type, int32 Extend) mut
			{
				return VT.SetPoint(&this, x, y, Type, Extend);
			}
			public HRESULT ScrollIntoView(int32 Value) mut
			{
				return VT.ScrollIntoView(&this, Value);
			}
			public HRESULT GetEmbeddedObject(IUnknown** ppObject) mut
			{
				return VT.GetEmbeddedObject(&this, ppObject);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextRange *self, BSTR* pbstr) GetText;
				public new function HRESULT(ITextRange *self, BSTR bstr) SetText;
				public new function HRESULT(ITextRange *self, int32* pChar) GetChar;
				public new function HRESULT(ITextRange *self, int32 Char) SetChar;
				public new function HRESULT(ITextRange *self, ITextRange** ppRange) GetDuplicate;
				public new function HRESULT(ITextRange *self, ITextRange** ppRange) GetFormattedText;
				public new function HRESULT(ITextRange *self, ITextRange* pRange) SetFormattedText;
				public new function HRESULT(ITextRange *self, int32* pcpFirst) GetStart;
				public new function HRESULT(ITextRange *self, int32 cpFirst) SetStart;
				public new function HRESULT(ITextRange *self, int32* pcpLim) GetEnd;
				public new function HRESULT(ITextRange *self, int32 cpLim) SetEnd;
				public new function HRESULT(ITextRange *self, ITextFont** ppFont) GetFont;
				public new function HRESULT(ITextRange *self, ITextFont* pFont) SetFont;
				public new function HRESULT(ITextRange *self, ITextPara** ppPara) GetPara;
				public new function HRESULT(ITextRange *self, ITextPara* pPara) SetPara;
				public new function HRESULT(ITextRange *self, int32* pCount) GetStoryLength;
				public new function HRESULT(ITextRange *self, int32* pValue) GetStoryType;
				public new function HRESULT(ITextRange *self, int32 bStart) Collapse;
				public new function HRESULT(ITextRange *self, int32 Unit, int32* pDelta) Expand;
				public new function HRESULT(ITextRange *self, int32 Unit, int32* pIndex) GetIndex;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Index, int32 Extend) SetIndex;
				public new function HRESULT(ITextRange *self, int32 cpAnchor, int32 cpActive) SetRange;
				public new function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) InRange;
				public new function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) InStory;
				public new function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) IsEqual;
				public new function HRESULT(ITextRange *self) Select;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Extend, int32* pDelta) StartOf;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Extend, int32* pDelta) EndOf;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) Move;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) MoveStart;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) MoveEnd;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveWhile;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveStartWhile;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveEndWhile;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveUntil;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveStartUntil;
				public new function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveEndUntil;
				public new function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindText;
				public new function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindTextStart;
				public new function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindTextEnd;
				public new function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) Delete;
				public new function HRESULT(ITextRange *self, VARIANT* pVar) Cut;
				public new function HRESULT(ITextRange *self, VARIANT* pVar) Copy;
				public new function HRESULT(ITextRange *self, VARIANT* pVar, int32 Format) Paste;
				public new function HRESULT(ITextRange *self, VARIANT* pVar, int32 Format, int32* pValue) CanPaste;
				public new function HRESULT(ITextRange *self, int32* pValue) CanEdit;
				public new function HRESULT(ITextRange *self, int32 Type) ChangeCase;
				public new function HRESULT(ITextRange *self, int32 Type, int32* px, int32* py) GetPoint;
				public new function HRESULT(ITextRange *self, int32 x, int32 y, int32 Type, int32 Extend) SetPoint;
				public new function HRESULT(ITextRange *self, int32 Value) ScrollIntoView;
				public new function HRESULT(ITextRange *self, IUnknown** ppObject) GetEmbeddedObject;
			}
		}
		[CRepr]
		public struct ITextSelection : ITextRange
		{
			public const new Guid IID = .(0x8cc497c1, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetFlags(int32* pFlags) mut
			{
				return VT.ComGetFlags(&this, pFlags);
			}
			public HRESULT SetFlags(int32 Flags) mut
			{
				return VT.SetFlags(&this, Flags);
			}
			public HRESULT ComGetType(int32* pType) mut
			{
				return VT.ComGetType(&this, pType);
			}
			public HRESULT MoveLeft(int32 Unit, int32 Count, int32 Extend, int32* pDelta) mut
			{
				return VT.MoveLeft(&this, Unit, Count, Extend, pDelta);
			}
			public HRESULT MoveRight(int32 Unit, int32 Count, int32 Extend, int32* pDelta) mut
			{
				return VT.MoveRight(&this, Unit, Count, Extend, pDelta);
			}
			public HRESULT MoveUp(int32 Unit, int32 Count, int32 Extend, int32* pDelta) mut
			{
				return VT.MoveUp(&this, Unit, Count, Extend, pDelta);
			}
			public HRESULT MoveDown(int32 Unit, int32 Count, int32 Extend, int32* pDelta) mut
			{
				return VT.MoveDown(&this, Unit, Count, Extend, pDelta);
			}
			public HRESULT HomeKey(tomConstants Unit, int32 Extend, int32* pDelta) mut
			{
				return VT.HomeKey(&this, Unit, Extend, pDelta);
			}
			public HRESULT EndKey(int32 Unit, int32 Extend, int32* pDelta) mut
			{
				return VT.EndKey(&this, Unit, Extend, pDelta);
			}
			public HRESULT TypeText(BSTR bstr) mut
			{
				return VT.TypeText(&this, bstr);
			}
			[CRepr]
			public struct VTable : ITextRange.VTable
			{
				public new function HRESULT(ITextSelection *self, int32* pFlags) ComGetFlags;
				public new function HRESULT(ITextSelection *self, int32 Flags) SetFlags;
				public new function HRESULT(ITextSelection *self, int32* pType) ComGetType;
				public new function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveLeft;
				public new function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveRight;
				public new function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveUp;
				public new function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveDown;
				public new function HRESULT(ITextSelection *self, tomConstants Unit, int32 Extend, int32* pDelta) HomeKey;
				public new function HRESULT(ITextSelection *self, int32 Unit, int32 Extend, int32* pDelta) EndKey;
				public new function HRESULT(ITextSelection *self, BSTR bstr) TypeText;
			}
		}
		[CRepr]
		public struct ITextFont : IDispatch
		{
			public const new Guid IID = .(0x8cc497c3, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDuplicate(ITextFont** ppFont) mut
			{
				return VT.GetDuplicate(&this, ppFont);
			}
			public HRESULT SetDuplicate(ITextFont* pFont) mut
			{
				return VT.SetDuplicate(&this, pFont);
			}
			public HRESULT CanChange(int32* pValue) mut
			{
				return VT.CanChange(&this, pValue);
			}
			public HRESULT IsEqual(ITextFont* pFont, int32* pValue) mut
			{
				return VT.IsEqual(&this, pFont, pValue);
			}
			public HRESULT Reset(tomConstants Value) mut
			{
				return VT.Reset(&this, Value);
			}
			public HRESULT GetStyle(int32* pValue) mut
			{
				return VT.GetStyle(&this, pValue);
			}
			public HRESULT SetStyle(int32 Value) mut
			{
				return VT.SetStyle(&this, Value);
			}
			public HRESULT GetAllCaps(int32* pValue) mut
			{
				return VT.GetAllCaps(&this, pValue);
			}
			public HRESULT SetAllCaps(int32 Value) mut
			{
				return VT.SetAllCaps(&this, Value);
			}
			public HRESULT GetAnimation(int32* pValue) mut
			{
				return VT.GetAnimation(&this, pValue);
			}
			public HRESULT SetAnimation(int32 Value) mut
			{
				return VT.SetAnimation(&this, Value);
			}
			public HRESULT GetBackColor(int32* pValue) mut
			{
				return VT.GetBackColor(&this, pValue);
			}
			public HRESULT SetBackColor(int32 Value) mut
			{
				return VT.SetBackColor(&this, Value);
			}
			public HRESULT GetBold(int32* pValue) mut
			{
				return VT.GetBold(&this, pValue);
			}
			public HRESULT SetBold(int32 Value) mut
			{
				return VT.SetBold(&this, Value);
			}
			public HRESULT GetEmboss(int32* pValue) mut
			{
				return VT.GetEmboss(&this, pValue);
			}
			public HRESULT SetEmboss(int32 Value) mut
			{
				return VT.SetEmboss(&this, Value);
			}
			public HRESULT GetForeColor(int32* pValue) mut
			{
				return VT.GetForeColor(&this, pValue);
			}
			public HRESULT SetForeColor(int32 Value) mut
			{
				return VT.SetForeColor(&this, Value);
			}
			public HRESULT GetHidden(int32* pValue) mut
			{
				return VT.GetHidden(&this, pValue);
			}
			public HRESULT SetHidden(int32 Value) mut
			{
				return VT.SetHidden(&this, Value);
			}
			public HRESULT GetEngrave(int32* pValue) mut
			{
				return VT.GetEngrave(&this, pValue);
			}
			public HRESULT SetEngrave(int32 Value) mut
			{
				return VT.SetEngrave(&this, Value);
			}
			public HRESULT GetItalic(int32* pValue) mut
			{
				return VT.GetItalic(&this, pValue);
			}
			public HRESULT SetItalic(int32 Value) mut
			{
				return VT.SetItalic(&this, Value);
			}
			public HRESULT GetKerning(float* pValue) mut
			{
				return VT.GetKerning(&this, pValue);
			}
			public HRESULT SetKerning(float Value) mut
			{
				return VT.SetKerning(&this, Value);
			}
			public HRESULT GetLanguageID(int32* pValue) mut
			{
				return VT.GetLanguageID(&this, pValue);
			}
			public HRESULT SetLanguageID(int32 Value) mut
			{
				return VT.SetLanguageID(&this, Value);
			}
			public HRESULT GetName(BSTR* pbstr) mut
			{
				return VT.GetName(&this, pbstr);
			}
			public HRESULT SetName(BSTR bstr) mut
			{
				return VT.SetName(&this, bstr);
			}
			public HRESULT GetOutline(int32* pValue) mut
			{
				return VT.GetOutline(&this, pValue);
			}
			public HRESULT SetOutline(int32 Value) mut
			{
				return VT.SetOutline(&this, Value);
			}
			public HRESULT GetPosition(float* pValue) mut
			{
				return VT.GetPosition(&this, pValue);
			}
			public HRESULT SetPosition(float Value) mut
			{
				return VT.SetPosition(&this, Value);
			}
			public HRESULT GetProtected(int32* pValue) mut
			{
				return VT.GetProtected(&this, pValue);
			}
			public HRESULT SetProtected(int32 Value) mut
			{
				return VT.SetProtected(&this, Value);
			}
			public HRESULT GetShadow(int32* pValue) mut
			{
				return VT.GetShadow(&this, pValue);
			}
			public HRESULT SetShadow(int32 Value) mut
			{
				return VT.SetShadow(&this, Value);
			}
			public HRESULT GetSize(float* pValue) mut
			{
				return VT.GetSize(&this, pValue);
			}
			public HRESULT SetSize(float Value) mut
			{
				return VT.SetSize(&this, Value);
			}
			public HRESULT GetSmallCaps(int32* pValue) mut
			{
				return VT.GetSmallCaps(&this, pValue);
			}
			public HRESULT SetSmallCaps(int32 Value) mut
			{
				return VT.SetSmallCaps(&this, Value);
			}
			public HRESULT GetSpacing(float* pValue) mut
			{
				return VT.GetSpacing(&this, pValue);
			}
			public HRESULT SetSpacing(float Value) mut
			{
				return VT.SetSpacing(&this, Value);
			}
			public HRESULT GetStrikeThrough(int32* pValue) mut
			{
				return VT.GetStrikeThrough(&this, pValue);
			}
			public HRESULT SetStrikeThrough(int32 Value) mut
			{
				return VT.SetStrikeThrough(&this, Value);
			}
			public HRESULT GetSubscript(int32* pValue) mut
			{
				return VT.GetSubscript(&this, pValue);
			}
			public HRESULT SetSubscript(int32 Value) mut
			{
				return VT.SetSubscript(&this, Value);
			}
			public HRESULT GetSuperscript(int32* pValue) mut
			{
				return VT.GetSuperscript(&this, pValue);
			}
			public HRESULT SetSuperscript(int32 Value) mut
			{
				return VT.SetSuperscript(&this, Value);
			}
			public HRESULT GetUnderline(int32* pValue) mut
			{
				return VT.GetUnderline(&this, pValue);
			}
			public HRESULT SetUnderline(int32 Value) mut
			{
				return VT.SetUnderline(&this, Value);
			}
			public HRESULT GetWeight(int32* pValue) mut
			{
				return VT.GetWeight(&this, pValue);
			}
			public HRESULT SetWeight(int32 Value) mut
			{
				return VT.SetWeight(&this, Value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextFont *self, ITextFont** ppFont) GetDuplicate;
				public new function HRESULT(ITextFont *self, ITextFont* pFont) SetDuplicate;
				public new function HRESULT(ITextFont *self, int32* pValue) CanChange;
				public new function HRESULT(ITextFont *self, ITextFont* pFont, int32* pValue) IsEqual;
				public new function HRESULT(ITextFont *self, tomConstants Value) Reset;
				public new function HRESULT(ITextFont *self, int32* pValue) GetStyle;
				public new function HRESULT(ITextFont *self, int32 Value) SetStyle;
				public new function HRESULT(ITextFont *self, int32* pValue) GetAllCaps;
				public new function HRESULT(ITextFont *self, int32 Value) SetAllCaps;
				public new function HRESULT(ITextFont *self, int32* pValue) GetAnimation;
				public new function HRESULT(ITextFont *self, int32 Value) SetAnimation;
				public new function HRESULT(ITextFont *self, int32* pValue) GetBackColor;
				public new function HRESULT(ITextFont *self, int32 Value) SetBackColor;
				public new function HRESULT(ITextFont *self, int32* pValue) GetBold;
				public new function HRESULT(ITextFont *self, int32 Value) SetBold;
				public new function HRESULT(ITextFont *self, int32* pValue) GetEmboss;
				public new function HRESULT(ITextFont *self, int32 Value) SetEmboss;
				public new function HRESULT(ITextFont *self, int32* pValue) GetForeColor;
				public new function HRESULT(ITextFont *self, int32 Value) SetForeColor;
				public new function HRESULT(ITextFont *self, int32* pValue) GetHidden;
				public new function HRESULT(ITextFont *self, int32 Value) SetHidden;
				public new function HRESULT(ITextFont *self, int32* pValue) GetEngrave;
				public new function HRESULT(ITextFont *self, int32 Value) SetEngrave;
				public new function HRESULT(ITextFont *self, int32* pValue) GetItalic;
				public new function HRESULT(ITextFont *self, int32 Value) SetItalic;
				public new function HRESULT(ITextFont *self, float* pValue) GetKerning;
				public new function HRESULT(ITextFont *self, float Value) SetKerning;
				public new function HRESULT(ITextFont *self, int32* pValue) GetLanguageID;
				public new function HRESULT(ITextFont *self, int32 Value) SetLanguageID;
				public new function HRESULT(ITextFont *self, BSTR* pbstr) GetName;
				public new function HRESULT(ITextFont *self, BSTR bstr) SetName;
				public new function HRESULT(ITextFont *self, int32* pValue) GetOutline;
				public new function HRESULT(ITextFont *self, int32 Value) SetOutline;
				public new function HRESULT(ITextFont *self, float* pValue) GetPosition;
				public new function HRESULT(ITextFont *self, float Value) SetPosition;
				public new function HRESULT(ITextFont *self, int32* pValue) GetProtected;
				public new function HRESULT(ITextFont *self, int32 Value) SetProtected;
				public new function HRESULT(ITextFont *self, int32* pValue) GetShadow;
				public new function HRESULT(ITextFont *self, int32 Value) SetShadow;
				public new function HRESULT(ITextFont *self, float* pValue) GetSize;
				public new function HRESULT(ITextFont *self, float Value) SetSize;
				public new function HRESULT(ITextFont *self, int32* pValue) GetSmallCaps;
				public new function HRESULT(ITextFont *self, int32 Value) SetSmallCaps;
				public new function HRESULT(ITextFont *self, float* pValue) GetSpacing;
				public new function HRESULT(ITextFont *self, float Value) SetSpacing;
				public new function HRESULT(ITextFont *self, int32* pValue) GetStrikeThrough;
				public new function HRESULT(ITextFont *self, int32 Value) SetStrikeThrough;
				public new function HRESULT(ITextFont *self, int32* pValue) GetSubscript;
				public new function HRESULT(ITextFont *self, int32 Value) SetSubscript;
				public new function HRESULT(ITextFont *self, int32* pValue) GetSuperscript;
				public new function HRESULT(ITextFont *self, int32 Value) SetSuperscript;
				public new function HRESULT(ITextFont *self, int32* pValue) GetUnderline;
				public new function HRESULT(ITextFont *self, int32 Value) SetUnderline;
				public new function HRESULT(ITextFont *self, int32* pValue) GetWeight;
				public new function HRESULT(ITextFont *self, int32 Value) SetWeight;
			}
		}
		[CRepr]
		public struct ITextPara : IDispatch
		{
			public const new Guid IID = .(0x8cc497c4, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDuplicate(ITextPara** ppPara) mut
			{
				return VT.GetDuplicate(&this, ppPara);
			}
			public HRESULT SetDuplicate(ITextPara* pPara) mut
			{
				return VT.SetDuplicate(&this, pPara);
			}
			public HRESULT CanChange(int32* pValue) mut
			{
				return VT.CanChange(&this, pValue);
			}
			public HRESULT IsEqual(ITextPara* pPara, int32* pValue) mut
			{
				return VT.IsEqual(&this, pPara, pValue);
			}
			public HRESULT Reset(int32 Value) mut
			{
				return VT.Reset(&this, Value);
			}
			public HRESULT GetStyle(int32* pValue) mut
			{
				return VT.GetStyle(&this, pValue);
			}
			public HRESULT SetStyle(int32 Value) mut
			{
				return VT.SetStyle(&this, Value);
			}
			public HRESULT GetAlignment(int32* pValue) mut
			{
				return VT.GetAlignment(&this, pValue);
			}
			public HRESULT SetAlignment(int32 Value) mut
			{
				return VT.SetAlignment(&this, Value);
			}
			public HRESULT GetHyphenation(tomConstants* pValue) mut
			{
				return VT.GetHyphenation(&this, pValue);
			}
			public HRESULT SetHyphenation(int32 Value) mut
			{
				return VT.SetHyphenation(&this, Value);
			}
			public HRESULT GetFirstLineIndent(float* pValue) mut
			{
				return VT.GetFirstLineIndent(&this, pValue);
			}
			public HRESULT GetKeepTogether(tomConstants* pValue) mut
			{
				return VT.GetKeepTogether(&this, pValue);
			}
			public HRESULT SetKeepTogether(int32 Value) mut
			{
				return VT.SetKeepTogether(&this, Value);
			}
			public HRESULT GetKeepWithNext(tomConstants* pValue) mut
			{
				return VT.GetKeepWithNext(&this, pValue);
			}
			public HRESULT SetKeepWithNext(int32 Value) mut
			{
				return VT.SetKeepWithNext(&this, Value);
			}
			public HRESULT GetLeftIndent(float* pValue) mut
			{
				return VT.GetLeftIndent(&this, pValue);
			}
			public HRESULT GetLineSpacing(float* pValue) mut
			{
				return VT.GetLineSpacing(&this, pValue);
			}
			public HRESULT GetLineSpacingRule(int32* pValue) mut
			{
				return VT.GetLineSpacingRule(&this, pValue);
			}
			public HRESULT GetListAlignment(int32* pValue) mut
			{
				return VT.GetListAlignment(&this, pValue);
			}
			public HRESULT SetListAlignment(int32 Value) mut
			{
				return VT.SetListAlignment(&this, Value);
			}
			public HRESULT GetListLevelIndex(int32* pValue) mut
			{
				return VT.GetListLevelIndex(&this, pValue);
			}
			public HRESULT SetListLevelIndex(int32 Value) mut
			{
				return VT.SetListLevelIndex(&this, Value);
			}
			public HRESULT GetListStart(int32* pValue) mut
			{
				return VT.GetListStart(&this, pValue);
			}
			public HRESULT SetListStart(int32 Value) mut
			{
				return VT.SetListStart(&this, Value);
			}
			public HRESULT GetListTab(float* pValue) mut
			{
				return VT.GetListTab(&this, pValue);
			}
			public HRESULT SetListTab(float Value) mut
			{
				return VT.SetListTab(&this, Value);
			}
			public HRESULT GetListType(int32* pValue) mut
			{
				return VT.GetListType(&this, pValue);
			}
			public HRESULT SetListType(int32 Value) mut
			{
				return VT.SetListType(&this, Value);
			}
			public HRESULT GetNoLineNumber(int32* pValue) mut
			{
				return VT.GetNoLineNumber(&this, pValue);
			}
			public HRESULT SetNoLineNumber(int32 Value) mut
			{
				return VT.SetNoLineNumber(&this, Value);
			}
			public HRESULT GetPageBreakBefore(int32* pValue) mut
			{
				return VT.GetPageBreakBefore(&this, pValue);
			}
			public HRESULT SetPageBreakBefore(int32 Value) mut
			{
				return VT.SetPageBreakBefore(&this, Value);
			}
			public HRESULT GetRightIndent(float* pValue) mut
			{
				return VT.GetRightIndent(&this, pValue);
			}
			public HRESULT SetRightIndent(float Value) mut
			{
				return VT.SetRightIndent(&this, Value);
			}
			public HRESULT SetIndents(float First, float Left, float Right) mut
			{
				return VT.SetIndents(&this, First, Left, Right);
			}
			public HRESULT SetLineSpacing(int32 Rule, float Spacing) mut
			{
				return VT.SetLineSpacing(&this, Rule, Spacing);
			}
			public HRESULT GetSpaceAfter(float* pValue) mut
			{
				return VT.GetSpaceAfter(&this, pValue);
			}
			public HRESULT SetSpaceAfter(float Value) mut
			{
				return VT.SetSpaceAfter(&this, Value);
			}
			public HRESULT GetSpaceBefore(float* pValue) mut
			{
				return VT.GetSpaceBefore(&this, pValue);
			}
			public HRESULT SetSpaceBefore(float Value) mut
			{
				return VT.SetSpaceBefore(&this, Value);
			}
			public HRESULT GetWidowControl(int32* pValue) mut
			{
				return VT.GetWidowControl(&this, pValue);
			}
			public HRESULT SetWidowControl(int32 Value) mut
			{
				return VT.SetWidowControl(&this, Value);
			}
			public HRESULT GetTabCount(int32* pCount) mut
			{
				return VT.GetTabCount(&this, pCount);
			}
			public HRESULT AddTab(float tbPos, int32 tbAlign, int32 tbLeader) mut
			{
				return VT.AddTab(&this, tbPos, tbAlign, tbLeader);
			}
			public HRESULT ClearAllTabs() mut
			{
				return VT.ClearAllTabs(&this);
			}
			public HRESULT DeleteTab(float tbPos) mut
			{
				return VT.DeleteTab(&this, tbPos);
			}
			public HRESULT GetTab(int32 iTab, float* ptbPos, int32* ptbAlign, int32* ptbLeader) mut
			{
				return VT.GetTab(&this, iTab, ptbPos, ptbAlign, ptbLeader);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextPara *self, ITextPara** ppPara) GetDuplicate;
				public new function HRESULT(ITextPara *self, ITextPara* pPara) SetDuplicate;
				public new function HRESULT(ITextPara *self, int32* pValue) CanChange;
				public new function HRESULT(ITextPara *self, ITextPara* pPara, int32* pValue) IsEqual;
				public new function HRESULT(ITextPara *self, int32 Value) Reset;
				public new function HRESULT(ITextPara *self, int32* pValue) GetStyle;
				public new function HRESULT(ITextPara *self, int32 Value) SetStyle;
				public new function HRESULT(ITextPara *self, int32* pValue) GetAlignment;
				public new function HRESULT(ITextPara *self, int32 Value) SetAlignment;
				public new function HRESULT(ITextPara *self, tomConstants* pValue) GetHyphenation;
				public new function HRESULT(ITextPara *self, int32 Value) SetHyphenation;
				public new function HRESULT(ITextPara *self, float* pValue) GetFirstLineIndent;
				public new function HRESULT(ITextPara *self, tomConstants* pValue) GetKeepTogether;
				public new function HRESULT(ITextPara *self, int32 Value) SetKeepTogether;
				public new function HRESULT(ITextPara *self, tomConstants* pValue) GetKeepWithNext;
				public new function HRESULT(ITextPara *self, int32 Value) SetKeepWithNext;
				public new function HRESULT(ITextPara *self, float* pValue) GetLeftIndent;
				public new function HRESULT(ITextPara *self, float* pValue) GetLineSpacing;
				public new function HRESULT(ITextPara *self, int32* pValue) GetLineSpacingRule;
				public new function HRESULT(ITextPara *self, int32* pValue) GetListAlignment;
				public new function HRESULT(ITextPara *self, int32 Value) SetListAlignment;
				public new function HRESULT(ITextPara *self, int32* pValue) GetListLevelIndex;
				public new function HRESULT(ITextPara *self, int32 Value) SetListLevelIndex;
				public new function HRESULT(ITextPara *self, int32* pValue) GetListStart;
				public new function HRESULT(ITextPara *self, int32 Value) SetListStart;
				public new function HRESULT(ITextPara *self, float* pValue) GetListTab;
				public new function HRESULT(ITextPara *self, float Value) SetListTab;
				public new function HRESULT(ITextPara *self, int32* pValue) GetListType;
				public new function HRESULT(ITextPara *self, int32 Value) SetListType;
				public new function HRESULT(ITextPara *self, int32* pValue) GetNoLineNumber;
				public new function HRESULT(ITextPara *self, int32 Value) SetNoLineNumber;
				public new function HRESULT(ITextPara *self, int32* pValue) GetPageBreakBefore;
				public new function HRESULT(ITextPara *self, int32 Value) SetPageBreakBefore;
				public new function HRESULT(ITextPara *self, float* pValue) GetRightIndent;
				public new function HRESULT(ITextPara *self, float Value) SetRightIndent;
				public new function HRESULT(ITextPara *self, float First, float Left, float Right) SetIndents;
				public new function HRESULT(ITextPara *self, int32 Rule, float Spacing) SetLineSpacing;
				public new function HRESULT(ITextPara *self, float* pValue) GetSpaceAfter;
				public new function HRESULT(ITextPara *self, float Value) SetSpaceAfter;
				public new function HRESULT(ITextPara *self, float* pValue) GetSpaceBefore;
				public new function HRESULT(ITextPara *self, float Value) SetSpaceBefore;
				public new function HRESULT(ITextPara *self, int32* pValue) GetWidowControl;
				public new function HRESULT(ITextPara *self, int32 Value) SetWidowControl;
				public new function HRESULT(ITextPara *self, int32* pCount) GetTabCount;
				public new function HRESULT(ITextPara *self, float tbPos, int32 tbAlign, int32 tbLeader) AddTab;
				public new function HRESULT(ITextPara *self) ClearAllTabs;
				public new function HRESULT(ITextPara *self, float tbPos) DeleteTab;
				public new function HRESULT(ITextPara *self, int32 iTab, float* ptbPos, int32* ptbAlign, int32* ptbLeader) GetTab;
			}
		}
		[CRepr]
		public struct ITextStoryRanges : IDispatch
		{
			public const new Guid IID = .(0x8cc497c5, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT _NewEnum(IUnknown** ppunkEnum) mut
			{
				return VT._NewEnum(&this, ppunkEnum);
			}
			public HRESULT Item(int32 Index, ITextRange** ppRange) mut
			{
				return VT.Item(&this, Index, ppRange);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextStoryRanges *self, IUnknown** ppunkEnum) _NewEnum;
				public new function HRESULT(ITextStoryRanges *self, int32 Index, ITextRange** ppRange) Item;
				public new function HRESULT(ITextStoryRanges *self, int32* pCount) GetCount;
			}
		}
		[CRepr]
		public struct ITextDocument2 : ITextDocument
		{
			public const new Guid IID = .(0xc241f5e0, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCaretType(int32* pValue) mut
			{
				return VT.GetCaretType(&this, pValue);
			}
			public HRESULT SetCaretType(int32 Value) mut
			{
				return VT.SetCaretType(&this, Value);
			}
			public HRESULT GetDisplays(ITextDisplays** ppDisplays) mut
			{
				return VT.GetDisplays(&this, ppDisplays);
			}
			public HRESULT GetDocumentFont(ITextFont2** ppFont) mut
			{
				return VT.GetDocumentFont(&this, ppFont);
			}
			public HRESULT SetDocumentFont(ITextFont2* pFont) mut
			{
				return VT.SetDocumentFont(&this, pFont);
			}
			public HRESULT GetDocumentPara(ITextPara2** ppPara) mut
			{
				return VT.GetDocumentPara(&this, ppPara);
			}
			public HRESULT SetDocumentPara(ITextPara2* pPara) mut
			{
				return VT.SetDocumentPara(&this, pPara);
			}
			public HRESULT GetEastAsianFlags(tomConstants* pFlags) mut
			{
				return VT.GetEastAsianFlags(&this, pFlags);
			}
			public HRESULT GetGenerator(BSTR* pbstr) mut
			{
				return VT.GetGenerator(&this, pbstr);
			}
			public HRESULT SetIMEInProgress(int32 Value) mut
			{
				return VT.SetIMEInProgress(&this, Value);
			}
			public HRESULT GetNotificationMode(int32* pValue) mut
			{
				return VT.GetNotificationMode(&this, pValue);
			}
			public HRESULT SetNotificationMode(int32 Value) mut
			{
				return VT.SetNotificationMode(&this, Value);
			}
			public HRESULT GetSelection2(ITextSelection2** ppSel) mut
			{
				return VT.GetSelection2(&this, ppSel);
			}
			public HRESULT GetStoryRanges2(ITextStoryRanges2** ppStories) mut
			{
				return VT.GetStoryRanges2(&this, ppStories);
			}
			public HRESULT GetTypographyOptions(int32* pOptions) mut
			{
				return VT.GetTypographyOptions(&this, pOptions);
			}
			public HRESULT GetVersion(int32* pValue) mut
			{
				return VT.GetVersion(&this, pValue);
			}
			public HRESULT GetWindow(int64* pHwnd) mut
			{
				return VT.GetWindow(&this, pHwnd);
			}
			public HRESULT AttachMsgFilter(IUnknown* pFilter) mut
			{
				return VT.AttachMsgFilter(&this, pFilter);
			}
			public HRESULT CheckTextLimit(int32 cch, int32* pcch) mut
			{
				return VT.CheckTextLimit(&this, cch, pcch);
			}
			public HRESULT GetCallManager(IUnknown** ppVoid) mut
			{
				return VT.GetCallManager(&this, ppVoid);
			}
			public HRESULT GetClientRect(tomConstants Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) mut
			{
				return VT.GetClientRect(&this, Type, pLeft, pTop, pRight, pBottom);
			}
			public HRESULT GetEffectColor(int32 Index, int32* pValue) mut
			{
				return VT.GetEffectColor(&this, Index, pValue);
			}
			public HRESULT GetImmContext(int64* pContext) mut
			{
				return VT.GetImmContext(&this, pContext);
			}
			public HRESULT GetPreferredFont(int32 cp, int32 CharRep, int32 Options, int32 curCharRep, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) mut
			{
				return VT.GetPreferredFont(&this, cp, CharRep, Options, curCharRep, curFontSize, pbstr, pPitchAndFamily, pNewFontSize);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT GetStrings(ITextStrings** ppStrs) mut
			{
				return VT.GetStrings(&this, ppStrs);
			}
			public HRESULT Notify(int32 Notify) mut
			{
				return VT.Notify(&this, Notify);
			}
			public HRESULT Range2(int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) mut
			{
				return VT.Range2(&this, cpActive, cpAnchor, ppRange);
			}
			public HRESULT RangeFromPoint2(int32 x, int32 y, int32 Type, ITextRange2** ppRange) mut
			{
				return VT.RangeFromPoint2(&this, x, y, Type, ppRange);
			}
			public HRESULT ReleaseCallManager(IUnknown* pVoid) mut
			{
				return VT.ReleaseCallManager(&this, pVoid);
			}
			public HRESULT ReleaseImmContext(int64 Context) mut
			{
				return VT.ReleaseImmContext(&this, Context);
			}
			public HRESULT SetEffectColor(int32 Index, int32 Value) mut
			{
				return VT.SetEffectColor(&this, Index, Value);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			public HRESULT SetTypographyOptions(int32 Options, int32 Mask) mut
			{
				return VT.SetTypographyOptions(&this, Options, Mask);
			}
			public HRESULT SysBeep() mut
			{
				return VT.SysBeep(&this);
			}
			public HRESULT Update(int32 Value) mut
			{
				return VT.Update(&this, Value);
			}
			public HRESULT UpdateWindow() mut
			{
				return VT.UpdateWindow(&this);
			}
			public HRESULT GetMathProperties(int32* pOptions) mut
			{
				return VT.GetMathProperties(&this, pOptions);
			}
			public HRESULT SetMathProperties(int32 Options, int32 Mask) mut
			{
				return VT.SetMathProperties(&this, Options, Mask);
			}
			public HRESULT GetActiveStory(ITextStory** ppStory) mut
			{
				return VT.GetActiveStory(&this, ppStory);
			}
			public HRESULT SetActiveStory(ITextStory* pStory) mut
			{
				return VT.SetActiveStory(&this, pStory);
			}
			public HRESULT GetMainStory(ITextStory** ppStory) mut
			{
				return VT.GetMainStory(&this, ppStory);
			}
			public HRESULT GetNewStory(ITextStory** ppStory) mut
			{
				return VT.GetNewStory(&this, ppStory);
			}
			public HRESULT GetStory(int32 Index, ITextStory** ppStory) mut
			{
				return VT.GetStory(&this, Index, ppStory);
			}
			[CRepr]
			public struct VTable : ITextDocument.VTable
			{
				public new function HRESULT(ITextDocument2 *self, int32* pValue) GetCaretType;
				public new function HRESULT(ITextDocument2 *self, int32 Value) SetCaretType;
				public new function HRESULT(ITextDocument2 *self, ITextDisplays** ppDisplays) GetDisplays;
				public new function HRESULT(ITextDocument2 *self, ITextFont2** ppFont) GetDocumentFont;
				public new function HRESULT(ITextDocument2 *self, ITextFont2* pFont) SetDocumentFont;
				public new function HRESULT(ITextDocument2 *self, ITextPara2** ppPara) GetDocumentPara;
				public new function HRESULT(ITextDocument2 *self, ITextPara2* pPara) SetDocumentPara;
				public new function HRESULT(ITextDocument2 *self, tomConstants* pFlags) GetEastAsianFlags;
				public new function HRESULT(ITextDocument2 *self, BSTR* pbstr) GetGenerator;
				public new function HRESULT(ITextDocument2 *self, int32 Value) SetIMEInProgress;
				public new function HRESULT(ITextDocument2 *self, int32* pValue) GetNotificationMode;
				public new function HRESULT(ITextDocument2 *self, int32 Value) SetNotificationMode;
				public new function HRESULT(ITextDocument2 *self, ITextSelection2** ppSel) GetSelection2;
				public new function HRESULT(ITextDocument2 *self, ITextStoryRanges2** ppStories) GetStoryRanges2;
				public new function HRESULT(ITextDocument2 *self, int32* pOptions) GetTypographyOptions;
				public new function HRESULT(ITextDocument2 *self, int32* pValue) GetVersion;
				public new function HRESULT(ITextDocument2 *self, int64* pHwnd) GetWindow;
				public new function HRESULT(ITextDocument2 *self, IUnknown* pFilter) AttachMsgFilter;
				public new function HRESULT(ITextDocument2 *self, int32 cch, int32* pcch) CheckTextLimit;
				public new function HRESULT(ITextDocument2 *self, IUnknown** ppVoid) GetCallManager;
				public new function HRESULT(ITextDocument2 *self, tomConstants Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) GetClientRect;
				public new function HRESULT(ITextDocument2 *self, int32 Index, int32* pValue) GetEffectColor;
				public new function HRESULT(ITextDocument2 *self, int64* pContext) GetImmContext;
				public new function HRESULT(ITextDocument2 *self, int32 cp, int32 CharRep, int32 Options, int32 curCharRep, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) GetPreferredFont;
				public new function HRESULT(ITextDocument2 *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextDocument2 *self, ITextStrings** ppStrs) GetStrings;
				public new function HRESULT(ITextDocument2 *self, int32 Notify) Notify;
				public new function HRESULT(ITextDocument2 *self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) Range2;
				public new function HRESULT(ITextDocument2 *self, int32 x, int32 y, int32 Type, ITextRange2** ppRange) RangeFromPoint2;
				public new function HRESULT(ITextDocument2 *self, IUnknown* pVoid) ReleaseCallManager;
				public new function HRESULT(ITextDocument2 *self, int64 Context) ReleaseImmContext;
				public new function HRESULT(ITextDocument2 *self, int32 Index, int32 Value) SetEffectColor;
				public new function HRESULT(ITextDocument2 *self, int32 Type, int32 Value) SetProperty;
				public new function HRESULT(ITextDocument2 *self, int32 Options, int32 Mask) SetTypographyOptions;
				public new function HRESULT(ITextDocument2 *self) SysBeep;
				public new function HRESULT(ITextDocument2 *self, int32 Value) Update;
				public new function HRESULT(ITextDocument2 *self) UpdateWindow;
				public new function HRESULT(ITextDocument2 *self, int32* pOptions) GetMathProperties;
				public new function HRESULT(ITextDocument2 *self, int32 Options, int32 Mask) SetMathProperties;
				public new function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetActiveStory;
				public new function HRESULT(ITextDocument2 *self, ITextStory* pStory) SetActiveStory;
				public new function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetMainStory;
				public new function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetNewStory;
				public new function HRESULT(ITextDocument2 *self, int32 Index, ITextStory** ppStory) GetStory;
			}
		}
		[CRepr]
		public struct ITextRange2 : ITextSelection
		{
			public const new Guid IID = .(0xc241f5e2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCch(int32* pcch) mut
			{
				return VT.GetCch(&this, pcch);
			}
			public HRESULT GetCells(IUnknown** ppCells) mut
			{
				return VT.GetCells(&this, ppCells);
			}
			public HRESULT GetColumn(IUnknown** ppColumn) mut
			{
				return VT.GetColumn(&this, ppColumn);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetDuplicate2(ITextRange2** ppRange) mut
			{
				return VT.GetDuplicate2(&this, ppRange);
			}
			public HRESULT GetFont2(ITextFont2** ppFont) mut
			{
				return VT.GetFont2(&this, ppFont);
			}
			public HRESULT SetFont2(ITextFont2* pFont) mut
			{
				return VT.SetFont2(&this, pFont);
			}
			public HRESULT GetFormattedText2(ITextRange2** ppRange) mut
			{
				return VT.GetFormattedText2(&this, ppRange);
			}
			public HRESULT SetFormattedText2(ITextRange2* pRange) mut
			{
				return VT.SetFormattedText2(&this, pRange);
			}
			public HRESULT GetGravity(int32* pValue) mut
			{
				return VT.GetGravity(&this, pValue);
			}
			public HRESULT SetGravity(int32 Value) mut
			{
				return VT.SetGravity(&this, Value);
			}
			public HRESULT GetPara2(ITextPara2** ppPara) mut
			{
				return VT.GetPara2(&this, ppPara);
			}
			public HRESULT SetPara2(ITextPara2* pPara) mut
			{
				return VT.SetPara2(&this, pPara);
			}
			public HRESULT GetRow(ITextRow** ppRow) mut
			{
				return VT.GetRow(&this, ppRow);
			}
			public HRESULT GetStartPara(int32* pValue) mut
			{
				return VT.GetStartPara(&this, pValue);
			}
			public HRESULT GetTable(IUnknown** ppTable) mut
			{
				return VT.GetTable(&this, ppTable);
			}
			public HRESULT GetURL(BSTR* pbstr) mut
			{
				return VT.GetURL(&this, pbstr);
			}
			public HRESULT SetURL(BSTR bstr) mut
			{
				return VT.SetURL(&this, bstr);
			}
			public HRESULT AddSubrange(int32 cp1, int32 cp2, int32 Activate) mut
			{
				return VT.AddSubrange(&this, cp1, cp2, Activate);
			}
			public HRESULT BuildUpMath(int32 Flags) mut
			{
				return VT.BuildUpMath(&this, Flags);
			}
			public HRESULT DeleteSubrange(int32 cpFirst, int32 cpLim) mut
			{
				return VT.DeleteSubrange(&this, cpFirst, cpLim);
			}
			public HRESULT Find(ITextRange2* pRange, int32 Count, int32 Flags, int32* pDelta) mut
			{
				return VT.Find(&this, pRange, Count, Flags, pDelta);
			}
			public HRESULT GetChar2(int32* pChar, int32 Offset) mut
			{
				return VT.GetChar2(&this, pChar, Offset);
			}
			public HRESULT GetDropCap(int32* pcLine, int32* pPosition) mut
			{
				return VT.GetDropCap(&this, pcLine, pPosition);
			}
			public HRESULT GetInlineObject(int32* pType, int32* pAlign, int32* pChar, int32* pChar1, int32* pChar2, int32* pCount, int32* pTeXStyle, int32* pcCol, int32* pLevel) mut
			{
				return VT.GetInlineObject(&this, pType, pAlign, pChar, pChar1, pChar2, pCount, pTeXStyle, pcCol, pLevel);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT GetRect(int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom, int32* pHit) mut
			{
				return VT.GetRect(&this, Type, pLeft, pTop, pRight, pBottom, pHit);
			}
			public HRESULT GetSubrange(int32 iSubrange, int32* pcpFirst, int32* pcpLim) mut
			{
				return VT.GetSubrange(&this, iSubrange, pcpFirst, pcpLim);
			}
			public HRESULT GetText2(int32 Flags, BSTR* pbstr) mut
			{
				return VT.GetText2(&this, Flags, pbstr);
			}
			public HRESULT HexToUnicode() mut
			{
				return VT.HexToUnicode(&this);
			}
			public HRESULT InsertTable(int32 cCol, int32 cRow, int32 AutoFit) mut
			{
				return VT.InsertTable(&this, cCol, cRow, AutoFit);
			}
			public HRESULT Linearize(int32 Flags) mut
			{
				return VT.Linearize(&this, Flags);
			}
			public HRESULT SetActiveSubrange(int32 cpAnchor, int32 cpActive) mut
			{
				return VT.SetActiveSubrange(&this, cpAnchor, cpActive);
			}
			public HRESULT SetDropCap(int32 cLine, int32 Position) mut
			{
				return VT.SetDropCap(&this, cLine, Position);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			public HRESULT SetText2(int32 Flags, BSTR bstr) mut
			{
				return VT.SetText2(&this, Flags, bstr);
			}
			public HRESULT UnicodeToHex() mut
			{
				return VT.UnicodeToHex(&this);
			}
			public HRESULT SetInlineObject(int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol) mut
			{
				return VT.SetInlineObject(&this, Type, Align, Char, Char1, Char2, Count, TeXStyle, cCol);
			}
			public HRESULT GetMathFunctionType(BSTR bstr, int32* pValue) mut
			{
				return VT.GetMathFunctionType(&this, bstr, pValue);
			}
			public HRESULT InsertImage(int32 width, int32 height, int32 ascent, TEXT_ALIGN_OPTIONS Type, BSTR bstrAltText, IStream* pStream) mut
			{
				return VT.InsertImage(&this, width, height, ascent, Type, bstrAltText, pStream);
			}
			[CRepr]
			public struct VTable : ITextSelection.VTable
			{
				public new function HRESULT(ITextRange2 *self, int32* pcch) GetCch;
				public new function HRESULT(ITextRange2 *self, IUnknown** ppCells) GetCells;
				public new function HRESULT(ITextRange2 *self, IUnknown** ppColumn) GetColumn;
				public new function HRESULT(ITextRange2 *self, int32* pCount) GetCount;
				public new function HRESULT(ITextRange2 *self, ITextRange2** ppRange) GetDuplicate2;
				public new function HRESULT(ITextRange2 *self, ITextFont2** ppFont) GetFont2;
				public new function HRESULT(ITextRange2 *self, ITextFont2* pFont) SetFont2;
				public new function HRESULT(ITextRange2 *self, ITextRange2** ppRange) GetFormattedText2;
				public new function HRESULT(ITextRange2 *self, ITextRange2* pRange) SetFormattedText2;
				public new function HRESULT(ITextRange2 *self, int32* pValue) GetGravity;
				public new function HRESULT(ITextRange2 *self, int32 Value) SetGravity;
				public new function HRESULT(ITextRange2 *self, ITextPara2** ppPara) GetPara2;
				public new function HRESULT(ITextRange2 *self, ITextPara2* pPara) SetPara2;
				public new function HRESULT(ITextRange2 *self, ITextRow** ppRow) GetRow;
				public new function HRESULT(ITextRange2 *self, int32* pValue) GetStartPara;
				public new function HRESULT(ITextRange2 *self, IUnknown** ppTable) GetTable;
				public new function HRESULT(ITextRange2 *self, BSTR* pbstr) GetURL;
				public new function HRESULT(ITextRange2 *self, BSTR bstr) SetURL;
				public new function HRESULT(ITextRange2 *self, int32 cp1, int32 cp2, int32 Activate) AddSubrange;
				public new function HRESULT(ITextRange2 *self, int32 Flags) BuildUpMath;
				public new function HRESULT(ITextRange2 *self, int32 cpFirst, int32 cpLim) DeleteSubrange;
				public new function HRESULT(ITextRange2 *self, ITextRange2* pRange, int32 Count, int32 Flags, int32* pDelta) Find;
				public new function HRESULT(ITextRange2 *self, int32* pChar, int32 Offset) GetChar2;
				public new function HRESULT(ITextRange2 *self, int32* pcLine, int32* pPosition) GetDropCap;
				public new function HRESULT(ITextRange2 *self, int32* pType, int32* pAlign, int32* pChar, int32* pChar1, int32* pChar2, int32* pCount, int32* pTeXStyle, int32* pcCol, int32* pLevel) GetInlineObject;
				public new function HRESULT(ITextRange2 *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextRange2 *self, int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom, int32* pHit) GetRect;
				public new function HRESULT(ITextRange2 *self, int32 iSubrange, int32* pcpFirst, int32* pcpLim) GetSubrange;
				public new function HRESULT(ITextRange2 *self, int32 Flags, BSTR* pbstr) GetText2;
				public new function HRESULT(ITextRange2 *self) HexToUnicode;
				public new function HRESULT(ITextRange2 *self, int32 cCol, int32 cRow, int32 AutoFit) InsertTable;
				public new function HRESULT(ITextRange2 *self, int32 Flags) Linearize;
				public new function HRESULT(ITextRange2 *self, int32 cpAnchor, int32 cpActive) SetActiveSubrange;
				public new function HRESULT(ITextRange2 *self, int32 cLine, int32 Position) SetDropCap;
				public new function HRESULT(ITextRange2 *self, int32 Type, int32 Value) SetProperty;
				public new function HRESULT(ITextRange2 *self, int32 Flags, BSTR bstr) SetText2;
				public new function HRESULT(ITextRange2 *self) UnicodeToHex;
				public new function HRESULT(ITextRange2 *self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol) SetInlineObject;
				public new function HRESULT(ITextRange2 *self, BSTR bstr, int32* pValue) GetMathFunctionType;
				public new function HRESULT(ITextRange2 *self, int32 width, int32 height, int32 ascent, TEXT_ALIGN_OPTIONS Type, BSTR bstrAltText, IStream* pStream) InsertImage;
			}
		}
		[CRepr]
		public struct ITextSelection2 : ITextRange2
		{
			public const new Guid IID = .(0xc241f5e1, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITextRange2.VTable
			{
			}
		}
		[CRepr]
		public struct ITextFont2 : ITextFont
		{
			public const new Guid IID = .(0xc241f5e3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetAutoLigatures(int32* pValue) mut
			{
				return VT.GetAutoLigatures(&this, pValue);
			}
			public HRESULT SetAutoLigatures(int32 Value) mut
			{
				return VT.SetAutoLigatures(&this, Value);
			}
			public HRESULT GetAutospaceAlpha(int32* pValue) mut
			{
				return VT.GetAutospaceAlpha(&this, pValue);
			}
			public HRESULT SetAutospaceAlpha(int32 Value) mut
			{
				return VT.SetAutospaceAlpha(&this, Value);
			}
			public HRESULT GetAutospaceNumeric(int32* pValue) mut
			{
				return VT.GetAutospaceNumeric(&this, pValue);
			}
			public HRESULT SetAutospaceNumeric(int32 Value) mut
			{
				return VT.SetAutospaceNumeric(&this, Value);
			}
			public HRESULT GetAutospaceParens(int32* pValue) mut
			{
				return VT.GetAutospaceParens(&this, pValue);
			}
			public HRESULT SetAutospaceParens(int32 Value) mut
			{
				return VT.SetAutospaceParens(&this, Value);
			}
			public HRESULT GetCharRep(int32* pValue) mut
			{
				return VT.GetCharRep(&this, pValue);
			}
			public HRESULT SetCharRep(int32 Value) mut
			{
				return VT.SetCharRep(&this, Value);
			}
			public HRESULT GetCompressionMode(int32* pValue) mut
			{
				return VT.GetCompressionMode(&this, pValue);
			}
			public HRESULT SetCompressionMode(int32 Value) mut
			{
				return VT.SetCompressionMode(&this, Value);
			}
			public HRESULT GetCookie(int32* pValue) mut
			{
				return VT.GetCookie(&this, pValue);
			}
			public HRESULT SetCookie(int32 Value) mut
			{
				return VT.SetCookie(&this, Value);
			}
			public HRESULT GetDoubleStrike(int32* pValue) mut
			{
				return VT.GetDoubleStrike(&this, pValue);
			}
			public HRESULT SetDoubleStrike(int32 Value) mut
			{
				return VT.SetDoubleStrike(&this, Value);
			}
			public HRESULT GetDuplicate2(ITextFont2** ppFont) mut
			{
				return VT.GetDuplicate2(&this, ppFont);
			}
			public HRESULT SetDuplicate2(ITextFont2* pFont) mut
			{
				return VT.SetDuplicate2(&this, pFont);
			}
			public HRESULT GetLinkType(int32* pValue) mut
			{
				return VT.GetLinkType(&this, pValue);
			}
			public HRESULT GetMathZone(int32* pValue) mut
			{
				return VT.GetMathZone(&this, pValue);
			}
			public HRESULT SetMathZone(int32 Value) mut
			{
				return VT.SetMathZone(&this, Value);
			}
			public HRESULT GetModWidthPairs(int32* pValue) mut
			{
				return VT.GetModWidthPairs(&this, pValue);
			}
			public HRESULT SetModWidthPairs(int32 Value) mut
			{
				return VT.SetModWidthPairs(&this, Value);
			}
			public HRESULT GetModWidthSpace(int32* pValue) mut
			{
				return VT.GetModWidthSpace(&this, pValue);
			}
			public HRESULT SetModWidthSpace(int32 Value) mut
			{
				return VT.SetModWidthSpace(&this, Value);
			}
			public HRESULT GetOldNumbers(int32* pValue) mut
			{
				return VT.GetOldNumbers(&this, pValue);
			}
			public HRESULT SetOldNumbers(int32 Value) mut
			{
				return VT.SetOldNumbers(&this, Value);
			}
			public HRESULT GetOverlapping(int32* pValue) mut
			{
				return VT.GetOverlapping(&this, pValue);
			}
			public HRESULT SetOverlapping(int32 Value) mut
			{
				return VT.SetOverlapping(&this, Value);
			}
			public HRESULT GetPositionSubSuper(int32* pValue) mut
			{
				return VT.GetPositionSubSuper(&this, pValue);
			}
			public HRESULT SetPositionSubSuper(int32 Value) mut
			{
				return VT.SetPositionSubSuper(&this, Value);
			}
			public HRESULT GetScaling(int32* pValue) mut
			{
				return VT.GetScaling(&this, pValue);
			}
			public HRESULT SetScaling(int32 Value) mut
			{
				return VT.SetScaling(&this, Value);
			}
			public HRESULT GetSpaceExtension(float* pValue) mut
			{
				return VT.GetSpaceExtension(&this, pValue);
			}
			public HRESULT SetSpaceExtension(float Value) mut
			{
				return VT.SetSpaceExtension(&this, Value);
			}
			public HRESULT GetUnderlinePositionMode(int32* pValue) mut
			{
				return VT.GetUnderlinePositionMode(&this, pValue);
			}
			public HRESULT SetUnderlinePositionMode(int32 Value) mut
			{
				return VT.SetUnderlinePositionMode(&this, Value);
			}
			public HRESULT GetEffects(int32* pValue, int32* pMask) mut
			{
				return VT.GetEffects(&this, pValue, pMask);
			}
			public HRESULT GetEffects2(int32* pValue, int32* pMask) mut
			{
				return VT.GetEffects2(&this, pValue, pMask);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT GetPropertyInfo(int32 Index, int32* pType, int32* pValue) mut
			{
				return VT.GetPropertyInfo(&this, Index, pType, pValue);
			}
			public HRESULT IsEqual2(ITextFont2* pFont, int32* pB) mut
			{
				return VT.IsEqual2(&this, pFont, pB);
			}
			public HRESULT SetEffects(int32 Value, int32 Mask) mut
			{
				return VT.SetEffects(&this, Value, Mask);
			}
			public HRESULT SetEffects2(int32 Value, int32 Mask) mut
			{
				return VT.SetEffects2(&this, Value, Mask);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			[CRepr]
			public struct VTable : ITextFont.VTable
			{
				public new function HRESULT(ITextFont2 *self, int32* pCount) GetCount;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetAutoLigatures;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetAutoLigatures;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceAlpha;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceAlpha;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceNumeric;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceNumeric;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceParens;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceParens;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetCharRep;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetCharRep;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetCompressionMode;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetCompressionMode;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetCookie;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetCookie;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetDoubleStrike;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetDoubleStrike;
				public new function HRESULT(ITextFont2 *self, ITextFont2** ppFont) GetDuplicate2;
				public new function HRESULT(ITextFont2 *self, ITextFont2* pFont) SetDuplicate2;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetLinkType;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetMathZone;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetMathZone;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetModWidthPairs;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetModWidthPairs;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetModWidthSpace;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetModWidthSpace;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetOldNumbers;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetOldNumbers;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetOverlapping;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetOverlapping;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetPositionSubSuper;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetPositionSubSuper;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetScaling;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetScaling;
				public new function HRESULT(ITextFont2 *self, float* pValue) GetSpaceExtension;
				public new function HRESULT(ITextFont2 *self, float Value) SetSpaceExtension;
				public new function HRESULT(ITextFont2 *self, int32* pValue) GetUnderlinePositionMode;
				public new function HRESULT(ITextFont2 *self, int32 Value) SetUnderlinePositionMode;
				public new function HRESULT(ITextFont2 *self, int32* pValue, int32* pMask) GetEffects;
				public new function HRESULT(ITextFont2 *self, int32* pValue, int32* pMask) GetEffects2;
				public new function HRESULT(ITextFont2 *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextFont2 *self, int32 Index, int32* pType, int32* pValue) GetPropertyInfo;
				public new function HRESULT(ITextFont2 *self, ITextFont2* pFont, int32* pB) IsEqual2;
				public new function HRESULT(ITextFont2 *self, int32 Value, int32 Mask) SetEffects;
				public new function HRESULT(ITextFont2 *self, int32 Value, int32 Mask) SetEffects2;
				public new function HRESULT(ITextFont2 *self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextPara2 : ITextPara
		{
			public const new Guid IID = .(0xc241f5e4, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBorders(IUnknown** ppBorders) mut
			{
				return VT.GetBorders(&this, ppBorders);
			}
			public HRESULT GetDuplicate2(ITextPara2** ppPara) mut
			{
				return VT.GetDuplicate2(&this, ppPara);
			}
			public HRESULT SetDuplicate2(ITextPara2* pPara) mut
			{
				return VT.SetDuplicate2(&this, pPara);
			}
			public HRESULT GetFontAlignment(int32* pValue) mut
			{
				return VT.GetFontAlignment(&this, pValue);
			}
			public HRESULT SetFontAlignment(int32 Value) mut
			{
				return VT.SetFontAlignment(&this, Value);
			}
			public HRESULT GetHangingPunctuation(int32* pValue) mut
			{
				return VT.GetHangingPunctuation(&this, pValue);
			}
			public HRESULT SetHangingPunctuation(int32 Value) mut
			{
				return VT.SetHangingPunctuation(&this, Value);
			}
			public HRESULT GetSnapToGrid(int32* pValue) mut
			{
				return VT.GetSnapToGrid(&this, pValue);
			}
			public HRESULT SetSnapToGrid(int32 Value) mut
			{
				return VT.SetSnapToGrid(&this, Value);
			}
			public HRESULT GetTrimPunctuationAtStart(int32* pValue) mut
			{
				return VT.GetTrimPunctuationAtStart(&this, pValue);
			}
			public HRESULT SetTrimPunctuationAtStart(int32 Value) mut
			{
				return VT.SetTrimPunctuationAtStart(&this, Value);
			}
			public HRESULT GetEffects(int32* pValue, int32* pMask) mut
			{
				return VT.GetEffects(&this, pValue, pMask);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT IsEqual2(ITextPara2* pPara, int32* pB) mut
			{
				return VT.IsEqual2(&this, pPara, pB);
			}
			public HRESULT SetEffects(int32 Value, int32 Mask) mut
			{
				return VT.SetEffects(&this, Value, Mask);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			[CRepr]
			public struct VTable : ITextPara.VTable
			{
				public new function HRESULT(ITextPara2 *self, IUnknown** ppBorders) GetBorders;
				public new function HRESULT(ITextPara2 *self, ITextPara2** ppPara) GetDuplicate2;
				public new function HRESULT(ITextPara2 *self, ITextPara2* pPara) SetDuplicate2;
				public new function HRESULT(ITextPara2 *self, int32* pValue) GetFontAlignment;
				public new function HRESULT(ITextPara2 *self, int32 Value) SetFontAlignment;
				public new function HRESULT(ITextPara2 *self, int32* pValue) GetHangingPunctuation;
				public new function HRESULT(ITextPara2 *self, int32 Value) SetHangingPunctuation;
				public new function HRESULT(ITextPara2 *self, int32* pValue) GetSnapToGrid;
				public new function HRESULT(ITextPara2 *self, int32 Value) SetSnapToGrid;
				public new function HRESULT(ITextPara2 *self, int32* pValue) GetTrimPunctuationAtStart;
				public new function HRESULT(ITextPara2 *self, int32 Value) SetTrimPunctuationAtStart;
				public new function HRESULT(ITextPara2 *self, int32* pValue, int32* pMask) GetEffects;
				public new function HRESULT(ITextPara2 *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextPara2 *self, ITextPara2* pPara, int32* pB) IsEqual2;
				public new function HRESULT(ITextPara2 *self, int32 Value, int32 Mask) SetEffects;
				public new function HRESULT(ITextPara2 *self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextStoryRanges2 : ITextStoryRanges
		{
			public const new Guid IID = .(0xc241f5e5, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item2(int32 Index, ITextRange2** ppRange) mut
			{
				return VT.Item2(&this, Index, ppRange);
			}
			[CRepr]
			public struct VTable : ITextStoryRanges.VTable
			{
				public new function HRESULT(ITextStoryRanges2 *self, int32 Index, ITextRange2** ppRange) Item2;
			}
		}
		[CRepr]
		public struct ITextStory : IUnknown
		{
			public const new Guid IID = .(0xc241f5f3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActive(int32* pValue) mut
			{
				return VT.GetActive(&this, pValue);
			}
			public HRESULT SetActive(int32 Value) mut
			{
				return VT.SetActive(&this, Value);
			}
			public HRESULT GetDisplay(IUnknown** ppDisplay) mut
			{
				return VT.GetDisplay(&this, ppDisplay);
			}
			public HRESULT GetIndex(int32* pValue) mut
			{
				return VT.GetIndex(&this, pValue);
			}
			public HRESULT ComGetType(int32* pValue) mut
			{
				return VT.ComGetType(&this, pValue);
			}
			public HRESULT SetType(int32 Value) mut
			{
				return VT.SetType(&this, Value);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT GetRange(int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) mut
			{
				return VT.GetRange(&this, cpActive, cpAnchor, ppRange);
			}
			public HRESULT GetText(int32 Flags, BSTR* pbstr) mut
			{
				return VT.GetText(&this, Flags, pbstr);
			}
			public HRESULT SetFormattedText(IUnknown* pUnk) mut
			{
				return VT.SetFormattedText(&this, pUnk);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			public HRESULT SetText(int32 Flags, BSTR bstr) mut
			{
				return VT.SetText(&this, Flags, bstr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStory *self, int32* pValue) GetActive;
				public new function HRESULT(ITextStory *self, int32 Value) SetActive;
				public new function HRESULT(ITextStory *self, IUnknown** ppDisplay) GetDisplay;
				public new function HRESULT(ITextStory *self, int32* pValue) GetIndex;
				public new function HRESULT(ITextStory *self, int32* pValue) ComGetType;
				public new function HRESULT(ITextStory *self, int32 Value) SetType;
				public new function HRESULT(ITextStory *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextStory *self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) GetRange;
				public new function HRESULT(ITextStory *self, int32 Flags, BSTR* pbstr) GetText;
				public new function HRESULT(ITextStory *self, IUnknown* pUnk) SetFormattedText;
				public new function HRESULT(ITextStory *self, int32 Type, int32 Value) SetProperty;
				public new function HRESULT(ITextStory *self, int32 Flags, BSTR bstr) SetText;
			}
		}
		[CRepr]
		public struct ITextStrings : IDispatch
		{
			public const new Guid IID = .(0xc241f5e7, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, ITextRange2** ppRange) mut
			{
				return VT.Item(&this, Index, ppRange);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT Add(BSTR bstr) mut
			{
				return VT.Add(&this, bstr);
			}
			public HRESULT Append(ITextRange2* pRange, int32 iString) mut
			{
				return VT.Append(&this, pRange, iString);
			}
			public HRESULT Cat2(int32 iString) mut
			{
				return VT.Cat2(&this, iString);
			}
			public HRESULT CatTop2(BSTR bstr) mut
			{
				return VT.CatTop2(&this, bstr);
			}
			public HRESULT DeleteRange(ITextRange2* pRange) mut
			{
				return VT.DeleteRange(&this, pRange);
			}
			public HRESULT EncodeFunction(int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol, ITextRange2* pRange) mut
			{
				return VT.EncodeFunction(&this, Type, Align, Char, Char1, Char2, Count, TeXStyle, cCol, pRange);
			}
			public HRESULT GetCch(int32 iString, int32* pcch) mut
			{
				return VT.GetCch(&this, iString, pcch);
			}
			public HRESULT InsertNullStr(int32 iString) mut
			{
				return VT.InsertNullStr(&this, iString);
			}
			public HRESULT MoveBoundary(int32 iString, int32 cch) mut
			{
				return VT.MoveBoundary(&this, iString, cch);
			}
			public HRESULT PrefixTop(BSTR bstr) mut
			{
				return VT.PrefixTop(&this, bstr);
			}
			public HRESULT Remove(int32 iString, int32 cString) mut
			{
				return VT.Remove(&this, iString, cString);
			}
			public HRESULT SetFormattedText(ITextRange2* pRangeD, ITextRange2* pRangeS) mut
			{
				return VT.SetFormattedText(&this, pRangeD, pRangeS);
			}
			public HRESULT SetOpCp(int32 iString, int32 cp) mut
			{
				return VT.SetOpCp(&this, iString, cp);
			}
			public HRESULT SuffixTop(BSTR bstr, ITextRange2* pRange) mut
			{
				return VT.SuffixTop(&this, bstr, pRange);
			}
			public HRESULT Swap() mut
			{
				return VT.Swap(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextStrings *self, int32 Index, ITextRange2** ppRange) Item;
				public new function HRESULT(ITextStrings *self, int32* pCount) GetCount;
				public new function HRESULT(ITextStrings *self, BSTR bstr) Add;
				public new function HRESULT(ITextStrings *self, ITextRange2* pRange, int32 iString) Append;
				public new function HRESULT(ITextStrings *self, int32 iString) Cat2;
				public new function HRESULT(ITextStrings *self, BSTR bstr) CatTop2;
				public new function HRESULT(ITextStrings *self, ITextRange2* pRange) DeleteRange;
				public new function HRESULT(ITextStrings *self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol, ITextRange2* pRange) EncodeFunction;
				public new function HRESULT(ITextStrings *self, int32 iString, int32* pcch) GetCch;
				public new function HRESULT(ITextStrings *self, int32 iString) InsertNullStr;
				public new function HRESULT(ITextStrings *self, int32 iString, int32 cch) MoveBoundary;
				public new function HRESULT(ITextStrings *self, BSTR bstr) PrefixTop;
				public new function HRESULT(ITextStrings *self, int32 iString, int32 cString) Remove;
				public new function HRESULT(ITextStrings *self, ITextRange2* pRangeD, ITextRange2* pRangeS) SetFormattedText;
				public new function HRESULT(ITextStrings *self, int32 iString, int32 cp) SetOpCp;
				public new function HRESULT(ITextStrings *self, BSTR bstr, ITextRange2* pRange) SuffixTop;
				public new function HRESULT(ITextStrings *self) Swap;
			}
		}
		[CRepr]
		public struct ITextRow : IDispatch
		{
			public const new Guid IID = .(0xc241f5ef, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlignment(int32* pValue) mut
			{
				return VT.GetAlignment(&this, pValue);
			}
			public HRESULT SetAlignment(int32 Value) mut
			{
				return VT.SetAlignment(&this, Value);
			}
			public HRESULT GetCellCount(int32* pValue) mut
			{
				return VT.GetCellCount(&this, pValue);
			}
			public HRESULT SetCellCount(int32 Value) mut
			{
				return VT.SetCellCount(&this, Value);
			}
			public HRESULT GetCellCountCache(int32* pValue) mut
			{
				return VT.GetCellCountCache(&this, pValue);
			}
			public HRESULT SetCellCountCache(int32 Value) mut
			{
				return VT.SetCellCountCache(&this, Value);
			}
			public HRESULT GetCellIndex(int32* pValue) mut
			{
				return VT.GetCellIndex(&this, pValue);
			}
			public HRESULT SetCellIndex(int32 Value) mut
			{
				return VT.SetCellIndex(&this, Value);
			}
			public HRESULT GetCellMargin(int32* pValue) mut
			{
				return VT.GetCellMargin(&this, pValue);
			}
			public HRESULT SetCellMargin(int32 Value) mut
			{
				return VT.SetCellMargin(&this, Value);
			}
			public HRESULT GetHeight(int32* pValue) mut
			{
				return VT.GetHeight(&this, pValue);
			}
			public HRESULT SetHeight(int32 Value) mut
			{
				return VT.SetHeight(&this, Value);
			}
			public HRESULT GetIndent(int32* pValue) mut
			{
				return VT.GetIndent(&this, pValue);
			}
			public HRESULT SetIndent(int32 Value) mut
			{
				return VT.SetIndent(&this, Value);
			}
			public HRESULT GetKeepTogether(int32* pValue) mut
			{
				return VT.GetKeepTogether(&this, pValue);
			}
			public HRESULT SetKeepTogether(int32 Value) mut
			{
				return VT.SetKeepTogether(&this, Value);
			}
			public HRESULT GetKeepWithNext(int32* pValue) mut
			{
				return VT.GetKeepWithNext(&this, pValue);
			}
			public HRESULT SetKeepWithNext(int32 Value) mut
			{
				return VT.SetKeepWithNext(&this, Value);
			}
			public HRESULT GetNestLevel(int32* pValue) mut
			{
				return VT.GetNestLevel(&this, pValue);
			}
			public HRESULT GetRTL(int32* pValue) mut
			{
				return VT.GetRTL(&this, pValue);
			}
			public HRESULT SetRTL(int32 Value) mut
			{
				return VT.SetRTL(&this, Value);
			}
			public HRESULT GetCellAlignment(int32* pValue) mut
			{
				return VT.GetCellAlignment(&this, pValue);
			}
			public HRESULT SetCellAlignment(int32 Value) mut
			{
				return VT.SetCellAlignment(&this, Value);
			}
			public HRESULT GetCellColorBack(int32* pValue) mut
			{
				return VT.GetCellColorBack(&this, pValue);
			}
			public HRESULT SetCellColorBack(int32 Value) mut
			{
				return VT.SetCellColorBack(&this, Value);
			}
			public HRESULT GetCellColorFore(int32* pValue) mut
			{
				return VT.GetCellColorFore(&this, pValue);
			}
			public HRESULT SetCellColorFore(int32 Value) mut
			{
				return VT.SetCellColorFore(&this, Value);
			}
			public HRESULT GetCellMergeFlags(int32* pValue) mut
			{
				return VT.GetCellMergeFlags(&this, pValue);
			}
			public HRESULT SetCellMergeFlags(int32 Value) mut
			{
				return VT.SetCellMergeFlags(&this, Value);
			}
			public HRESULT GetCellShading(int32* pValue) mut
			{
				return VT.GetCellShading(&this, pValue);
			}
			public HRESULT SetCellShading(int32 Value) mut
			{
				return VT.SetCellShading(&this, Value);
			}
			public HRESULT GetCellVerticalText(int32* pValue) mut
			{
				return VT.GetCellVerticalText(&this, pValue);
			}
			public HRESULT SetCellVerticalText(int32 Value) mut
			{
				return VT.SetCellVerticalText(&this, Value);
			}
			public HRESULT GetCellWidth(int32* pValue) mut
			{
				return VT.GetCellWidth(&this, pValue);
			}
			public HRESULT SetCellWidth(int32 Value) mut
			{
				return VT.SetCellWidth(&this, Value);
			}
			public HRESULT GetCellBorderColors(int32* pcrLeft, int32* pcrTop, int32* pcrRight, int32* pcrBottom) mut
			{
				return VT.GetCellBorderColors(&this, pcrLeft, pcrTop, pcrRight, pcrBottom);
			}
			public HRESULT GetCellBorderWidths(int32* pduLeft, int32* pduTop, int32* pduRight, int32* pduBottom) mut
			{
				return VT.GetCellBorderWidths(&this, pduLeft, pduTop, pduRight, pduBottom);
			}
			public HRESULT SetCellBorderColors(int32 crLeft, int32 crTop, int32 crRight, int32 crBottom) mut
			{
				return VT.SetCellBorderColors(&this, crLeft, crTop, crRight, crBottom);
			}
			public HRESULT SetCellBorderWidths(int32 duLeft, int32 duTop, int32 duRight, int32 duBottom) mut
			{
				return VT.SetCellBorderWidths(&this, duLeft, duTop, duRight, duBottom);
			}
			public HRESULT Apply(int32 cRow, tomConstants Flags) mut
			{
				return VT.Apply(&this, cRow, Flags);
			}
			public HRESULT CanChange(int32* pValue) mut
			{
				return VT.CanChange(&this, pValue);
			}
			public HRESULT GetProperty(int32 Type, int32* pValue) mut
			{
				return VT.GetProperty(&this, Type, pValue);
			}
			public HRESULT Insert(int32 cRow) mut
			{
				return VT.Insert(&this, cRow);
			}
			public HRESULT IsEqual(ITextRow* pRow, int32* pB) mut
			{
				return VT.IsEqual(&this, pRow, pB);
			}
			public HRESULT Reset(int32 Value) mut
			{
				return VT.Reset(&this, Value);
			}
			public HRESULT SetProperty(int32 Type, int32 Value) mut
			{
				return VT.SetProperty(&this, Type, Value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITextRow *self, int32* pValue) GetAlignment;
				public new function HRESULT(ITextRow *self, int32 Value) SetAlignment;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellCount;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellCount;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellCountCache;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellCountCache;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellIndex;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellIndex;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellMargin;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellMargin;
				public new function HRESULT(ITextRow *self, int32* pValue) GetHeight;
				public new function HRESULT(ITextRow *self, int32 Value) SetHeight;
				public new function HRESULT(ITextRow *self, int32* pValue) GetIndent;
				public new function HRESULT(ITextRow *self, int32 Value) SetIndent;
				public new function HRESULT(ITextRow *self, int32* pValue) GetKeepTogether;
				public new function HRESULT(ITextRow *self, int32 Value) SetKeepTogether;
				public new function HRESULT(ITextRow *self, int32* pValue) GetKeepWithNext;
				public new function HRESULT(ITextRow *self, int32 Value) SetKeepWithNext;
				public new function HRESULT(ITextRow *self, int32* pValue) GetNestLevel;
				public new function HRESULT(ITextRow *self, int32* pValue) GetRTL;
				public new function HRESULT(ITextRow *self, int32 Value) SetRTL;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellAlignment;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellAlignment;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellColorBack;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellColorBack;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellColorFore;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellColorFore;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellMergeFlags;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellMergeFlags;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellShading;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellShading;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellVerticalText;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellVerticalText;
				public new function HRESULT(ITextRow *self, int32* pValue) GetCellWidth;
				public new function HRESULT(ITextRow *self, int32 Value) SetCellWidth;
				public new function HRESULT(ITextRow *self, int32* pcrLeft, int32* pcrTop, int32* pcrRight, int32* pcrBottom) GetCellBorderColors;
				public new function HRESULT(ITextRow *self, int32* pduLeft, int32* pduTop, int32* pduRight, int32* pduBottom) GetCellBorderWidths;
				public new function HRESULT(ITextRow *self, int32 crLeft, int32 crTop, int32 crRight, int32 crBottom) SetCellBorderColors;
				public new function HRESULT(ITextRow *self, int32 duLeft, int32 duTop, int32 duRight, int32 duBottom) SetCellBorderWidths;
				public new function HRESULT(ITextRow *self, int32 cRow, tomConstants Flags) Apply;
				public new function HRESULT(ITextRow *self, int32* pValue) CanChange;
				public new function HRESULT(ITextRow *self, int32 Type, int32* pValue) GetProperty;
				public new function HRESULT(ITextRow *self, int32 cRow) Insert;
				public new function HRESULT(ITextRow *self, ITextRow* pRow, int32* pB) IsEqual;
				public new function HRESULT(ITextRow *self, int32 Value) Reset;
				public new function HRESULT(ITextRow *self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextDisplays : IDispatch
		{
			public const new Guid IID = .(0xc241f5f2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ITextDocument2Old : ITextDocument
		{
			public const new Guid IID = .(0x01c25500, 0x4268, 0x11d1, 0x88, 0x3a, 0x3c, 0x8b, 0x00, 0xc1, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AttachMsgFilter(IUnknown* pFilter) mut
			{
				return VT.AttachMsgFilter(&this, pFilter);
			}
			public HRESULT SetEffectColor(int32 Index, uint32 cr) mut
			{
				return VT.SetEffectColor(&this, Index, cr);
			}
			public HRESULT GetEffectColor(int32 Index, uint32* pcr) mut
			{
				return VT.GetEffectColor(&this, Index, pcr);
			}
			public HRESULT GetCaretType(int32* pCaretType) mut
			{
				return VT.GetCaretType(&this, pCaretType);
			}
			public HRESULT SetCaretType(int32 CaretType) mut
			{
				return VT.SetCaretType(&this, CaretType);
			}
			public HRESULT GetImmContext(int64* pContext) mut
			{
				return VT.GetImmContext(&this, pContext);
			}
			public HRESULT ReleaseImmContext(int64 Context) mut
			{
				return VT.ReleaseImmContext(&this, Context);
			}
			public HRESULT GetPreferredFont(int32 cp, int32 CharRep, int32 Option, int32 CharRepCur, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) mut
			{
				return VT.GetPreferredFont(&this, cp, CharRep, Option, CharRepCur, curFontSize, pbstr, pPitchAndFamily, pNewFontSize);
			}
			public HRESULT GetNotificationMode(int32* pMode) mut
			{
				return VT.GetNotificationMode(&this, pMode);
			}
			public HRESULT SetNotificationMode(int32 Mode) mut
			{
				return VT.SetNotificationMode(&this, Mode);
			}
			public HRESULT GetClientRect(int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) mut
			{
				return VT.GetClientRect(&this, Type, pLeft, pTop, pRight, pBottom);
			}
			public HRESULT GetSelection2(ITextSelection** ppSel) mut
			{
				return VT.GetSelection2(&this, ppSel);
			}
			public HRESULT GetWindow(int32* phWnd) mut
			{
				return VT.GetWindow(&this, phWnd);
			}
			public HRESULT GetFEFlags(int32* pFlags) mut
			{
				return VT.GetFEFlags(&this, pFlags);
			}
			public HRESULT UpdateWindow() mut
			{
				return VT.UpdateWindow(&this);
			}
			public HRESULT CheckTextLimit(int32 cch, int32* pcch) mut
			{
				return VT.CheckTextLimit(&this, cch, pcch);
			}
			public HRESULT IMEInProgress(int32 Value) mut
			{
				return VT.IMEInProgress(&this, Value);
			}
			public HRESULT SysBeep() mut
			{
				return VT.SysBeep(&this);
			}
			public HRESULT Update(int32 Mode) mut
			{
				return VT.Update(&this, Mode);
			}
			public HRESULT Notify(int32 Notify) mut
			{
				return VT.Notify(&this, Notify);
			}
			public HRESULT GetDocumentFont(ITextFont** ppITextFont) mut
			{
				return VT.GetDocumentFont(&this, ppITextFont);
			}
			public HRESULT GetDocumentPara(ITextPara** ppITextPara) mut
			{
				return VT.GetDocumentPara(&this, ppITextPara);
			}
			public HRESULT GetCallManager(IUnknown** ppVoid) mut
			{
				return VT.GetCallManager(&this, ppVoid);
			}
			public HRESULT ReleaseCallManager(IUnknown* pVoid) mut
			{
				return VT.ReleaseCallManager(&this, pVoid);
			}
			[CRepr]
			public struct VTable : ITextDocument.VTable
			{
				public new function HRESULT(ITextDocument2Old *self, IUnknown* pFilter) AttachMsgFilter;
				public new function HRESULT(ITextDocument2Old *self, int32 Index, uint32 cr) SetEffectColor;
				public new function HRESULT(ITextDocument2Old *self, int32 Index, uint32* pcr) GetEffectColor;
				public new function HRESULT(ITextDocument2Old *self, int32* pCaretType) GetCaretType;
				public new function HRESULT(ITextDocument2Old *self, int32 CaretType) SetCaretType;
				public new function HRESULT(ITextDocument2Old *self, int64* pContext) GetImmContext;
				public new function HRESULT(ITextDocument2Old *self, int64 Context) ReleaseImmContext;
				public new function HRESULT(ITextDocument2Old *self, int32 cp, int32 CharRep, int32 Option, int32 CharRepCur, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) GetPreferredFont;
				public new function HRESULT(ITextDocument2Old *self, int32* pMode) GetNotificationMode;
				public new function HRESULT(ITextDocument2Old *self, int32 Mode) SetNotificationMode;
				public new function HRESULT(ITextDocument2Old *self, int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) GetClientRect;
				public new function HRESULT(ITextDocument2Old *self, ITextSelection** ppSel) GetSelection2;
				public new function HRESULT(ITextDocument2Old *self, int32* phWnd) GetWindow;
				public new function HRESULT(ITextDocument2Old *self, int32* pFlags) GetFEFlags;
				public new function HRESULT(ITextDocument2Old *self) UpdateWindow;
				public new function HRESULT(ITextDocument2Old *self, int32 cch, int32* pcch) CheckTextLimit;
				public new function HRESULT(ITextDocument2Old *self, int32 Value) IMEInProgress;
				public new function HRESULT(ITextDocument2Old *self) SysBeep;
				public new function HRESULT(ITextDocument2Old *self, int32 Mode) Update;
				public new function HRESULT(ITextDocument2Old *self, int32 Notify) Notify;
				public new function HRESULT(ITextDocument2Old *self, ITextFont** ppITextFont) GetDocumentFont;
				public new function HRESULT(ITextDocument2Old *self, ITextPara** ppITextPara) GetDocumentPara;
				public new function HRESULT(ITextDocument2Old *self, IUnknown** ppVoid) GetCallManager;
				public new function HRESULT(ITextDocument2Old *self, IUnknown* pVoid) ReleaseCallManager;
			}
		}
		
	}
}
