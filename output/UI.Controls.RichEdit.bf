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
			public function HRESULT(ITextServices *self, uint32 msg, WPARAM wparam, LPARAM lparam, LRESULT* plresult) TxSendMessage;
			public function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECTL* lprcBounds, RECTL* lprcWBounds, RECT* lprcUpdate, int pfnContinue, uint32 dwContinue, int32 lViewId) TxDraw;
			public function HRESULT(ITextServices *self, int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) TxGetHScroll;
			public function HRESULT(ITextServices *self, int32* plMin, int32* plMax, int32* plPos, int32* plPage, BOOL* pfEnabled) TxGetVScroll;
			public function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y) OnTxSetCursor;
			public function HRESULT(ITextServices *self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcDraw, HDC hicTargetDev, RECT* lprcClient, int32 x, int32 y, uint32* pHitResult) TxQueryHitPoint;
			public function HRESULT(ITextServices *self, RECT* prcClient) OnTxInPlaceActivate;
			public function HRESULT(ITextServices *self) OnTxInPlaceDeactivate;
			public function HRESULT(ITextServices *self) OnTxUIActivate;
			public function HRESULT(ITextServices *self) OnTxUIDeactivate;
			public function HRESULT(ITextServices *self, BSTR* pbstrText) TxGetText;
			public function HRESULT(ITextServices *self, PWSTR pszText) TxSetText;
			public function HRESULT(ITextServices *self, int32* param0) TxGetCurTargetX;
			public function HRESULT(ITextServices *self, int32* param0) TxGetBaseLinePos;
			public function HRESULT(ITextServices *self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight) TxGetNaturalSize;
			public function HRESULT(ITextServices *self, IDropTarget** ppDropTarget) TxGetDropTarget;
			public function HRESULT(ITextServices *self, uint32 dwMask, uint32 dwBits) OnTxPropertyBitsChange;
			public function HRESULT(ITextServices *self, uint32* pdwWidth, uint32* pdwHeight) TxGetCachedSize;
		}
		[CRepr]
		public struct ITextHost : IUnknown
		{
			public function HDC(ITextHost *self) TxGetDC;
			public function int32(ITextHost *self, HDC hdc) TxReleaseDC;
			public function BOOL(ITextHost *self, int32 fnBar, BOOL fShow) TxShowScrollBar;
			public function BOOL(ITextHost *self, SCROLLBAR_CONSTANTS fuSBFlags, ENABLE_SCROLL_BAR_ARROWS fuArrowflags) TxEnableScrollBar;
			public function BOOL(ITextHost *self, int32 fnBar, int32 nMinPos, int32 nMaxPos, BOOL fRedraw) TxSetScrollRange;
			public function BOOL(ITextHost *self, int32 fnBar, int32 nPos, BOOL fRedraw) TxSetScrollPos;
			public function void(ITextHost *self, RECT* prc, BOOL fMode) TxInvalidateRect;
			public function void(ITextHost *self, BOOL fUpdate) TxViewChange;
			public function BOOL(ITextHost *self, HBITMAP hbmp, int32 xWidth, int32 yHeight) TxCreateCaret;
			public function BOOL(ITextHost *self, BOOL fShow) TxShowCaret;
			public function BOOL(ITextHost *self, int32 x, int32 y) TxSetCaretPos;
			public function BOOL(ITextHost *self, uint32 idTimer, uint32 uTimeout) TxSetTimer;
			public function void(ITextHost *self, uint32 idTimer) TxKillTimer;
			public function void(ITextHost *self, int32 dx, int32 dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate, SHOW_WINDOW_CMD fuScroll) TxScrollWindowEx;
			public function void(ITextHost *self, BOOL fCapture) TxSetCapture;
			public function void(ITextHost *self) TxSetFocus;
			public function void(ITextHost *self, HCURSOR hcur, BOOL fText) TxSetCursor;
			public function BOOL(ITextHost *self, POINT* lppt) TxScreenToClient;
			public function BOOL(ITextHost *self, POINT* lppt) TxClientToScreen;
			public function HRESULT(ITextHost *self, int32* plOldState) TxActivate;
			public function HRESULT(ITextHost *self, int32 lNewState) TxDeactivate;
			public function HRESULT(ITextHost *self, RECT* prc) TxGetClientRect;
			public function HRESULT(ITextHost *self, RECT* prc) TxGetViewInset;
			public function HRESULT(ITextHost *self, CHARFORMATW** ppCF) TxGetCharFormat;
			public function HRESULT(ITextHost *self, PARAFORMAT** ppPF) TxGetParaFormat;
			public function uint32(ITextHost *self, int32 nIndex) TxGetSysColor;
			public function HRESULT(ITextHost *self, TXTBACKSTYLE* pstyle) TxGetBackStyle;
			public function HRESULT(ITextHost *self, uint32* plength) TxGetMaxLength;
			public function HRESULT(ITextHost *self, uint32* pdwScrollBar) TxGetScrollBars;
			public function HRESULT(ITextHost *self, int8* pch) TxGetPasswordChar;
			public function HRESULT(ITextHost *self, int32* pcp) TxGetAcceleratorPos;
			public function HRESULT(ITextHost *self, SIZE* lpExtent) TxGetExtent;
			public function HRESULT(ITextHost *self, CHARFORMATW* pCF) OnTxCharFormatChange;
			public function HRESULT(ITextHost *self, PARAFORMAT* pPF) OnTxParaFormatChange;
			public function HRESULT(ITextHost *self, uint32 dwMask, uint32* pdwBits) TxGetPropertyBits;
			public function HRESULT(ITextHost *self, uint32 iNotify, void* pv) TxNotify;
			public function HIMC(ITextHost *self) TxImmGetContext;
			public function void(ITextHost *self, HIMC himc) TxImmReleaseContext;
			public function HRESULT(ITextHost *self, int32* lSelBarWidth) TxGetSelectionBarWidth;
		}
		[CRepr]
		public struct IRicheditUiaOverrides : IUnknown
		{
			public function HRESULT(IRicheditUiaOverrides *self, int32 propertyId, VARIANT* pRetValue) GetPropertyOverrideValue;
		}
		[CRepr]
		public struct ITextHost2 : ITextHost
		{
			public function BOOL(ITextHost2 *self) TxIsDoubleClickPending;
			public function HRESULT(ITextHost2 *self, HWND* phwnd) TxGetWindow;
			public function HRESULT(ITextHost2 *self) TxSetForegroundWindow;
			public function HPALETTE(ITextHost2 *self) TxGetPalette;
			public function HRESULT(ITextHost2 *self, int32* pFlags) TxGetEastAsianFlags;
			public function HCURSOR(ITextHost2 *self, HCURSOR hcur, BOOL bText) TxSetCursor2;
			public function void(ITextHost2 *self) TxFreeTextServicesNotification;
			public function HRESULT(ITextHost2 *self, uint32 dwItem, uint32* pdwData) TxGetEditStyle;
			public function HRESULT(ITextHost2 *self, uint32* pdwStyle, uint32* pdwExStyle) TxGetWindowStyles;
			public function HRESULT(ITextHost2 *self, BOOL fShow, HDC hdc, RECT* prc) TxShowDropCaret;
			public function HRESULT(ITextHost2 *self) TxDestroyCaret;
			public function HRESULT(ITextHost2 *self, int32* plHorzExtent) TxGetHorzExtent;
		}
		[CRepr]
		public struct ITextServices2 : ITextServices
		{
			public function HRESULT(ITextServices2 *self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, DVTARGETDEVICE* ptd, uint32 dwMode, SIZE* psizelExtent, int32* pwidth, int32* pheight, int32* pascent) TxGetNaturalSize2;
			public function HRESULT(ITextServices2 *self, ID2D1RenderTarget* pRenderTarget, RECTL* lprcBounds, RECT* lprcUpdate, int32 lViewId) TxDrawD2D;
		}
		[CRepr]
		public struct IRichEditOle : IUnknown
		{
			public const new Guid IID = .(0x00020d00, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public function HRESULT(IRichEditOle *self, IOleClientSite** lplpolesite) GetClientSite;
			public function int32(IRichEditOle *self) GetObjectCount;
			public function int32(IRichEditOle *self) GetLinkCount;
			public function HRESULT(IRichEditOle *self, int32 iob, REOBJECT* lpreobject, RICH_EDIT_GET_OBJECT_FLAGS dwFlags) GetObject;
			public function HRESULT(IRichEditOle *self, REOBJECT* lpreobject) InsertObject;
			public function HRESULT(IRichEditOle *self, int32 iob, Guid* rclsidNew, PSTR lpstrUserTypeNew) ConvertObject;
			public function HRESULT(IRichEditOle *self, Guid* rclsid, Guid* rclsidAs) ActivateAs;
			public function HRESULT(IRichEditOle *self, PSTR lpstrContainerApp, PSTR lpstrContainerObj) SetHostNames;
			public function HRESULT(IRichEditOle *self, int32 iob, BOOL fAvailable) SetLinkAvailable;
			public function HRESULT(IRichEditOle *self, int32 iob, uint32 dvaspect) SetDvaspect;
			public function HRESULT(IRichEditOle *self, int32 iob) HandsOffStorage;
			public function HRESULT(IRichEditOle *self, int32 iob, IStorage* lpstg) SaveCompleted;
			public function HRESULT(IRichEditOle *self) InPlaceDeactivate;
			public function HRESULT(IRichEditOle *self, BOOL fEnterMode) ContextSensitiveHelp;
			public function HRESULT(IRichEditOle *self, CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) GetClipboardData;
			public function HRESULT(IRichEditOle *self, IDataObject* lpdataobj, uint16 cf, int hMetaPict) ImportDataObject;
		}
		[CRepr]
		public struct IRichEditOleCallback : IUnknown
		{
			public const new Guid IID = .(0x00020d03, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public function HRESULT(IRichEditOleCallback *self, IStorage** lplpstg) GetNewStorage;
			public function HRESULT(IRichEditOleCallback *self, IOleInPlaceFrame** lplpFrame, IOleInPlaceUIWindow** lplpDoc, OIFI* lpFrameInfo) GetInPlaceContext;
			public function HRESULT(IRichEditOleCallback *self, BOOL fShow) ShowContainerUI;
			public function HRESULT(IRichEditOleCallback *self, Guid* lpclsid, IStorage* lpstg, int32 cp) QueryInsertObject;
			public function HRESULT(IRichEditOleCallback *self, IOleObject* lpoleobj) DeleteObject;
			public function HRESULT(IRichEditOleCallback *self, IDataObject* lpdataobj, uint16* lpcfFormat, uint32 reco, BOOL fReally, int hMetaPict) QueryAcceptData;
			public function HRESULT(IRichEditOleCallback *self, BOOL fEnterMode) ContextSensitiveHelp;
			public function HRESULT(IRichEditOleCallback *self, CHARRANGE* lpchrg, uint32 reco, IDataObject** lplpdataobj) GetClipboardData;
			public function HRESULT(IRichEditOleCallback *self, BOOL fDrag, uint32 grfKeyState, uint32* pdwEffect) GetDragDropEffect;
			public function HRESULT(IRichEditOleCallback *self, RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltype, IOleObject* lpoleobj, CHARRANGE* lpchrg, HMENU* lphmenu) GetContextMenu;
		}
		[CRepr]
		public struct ITextDocument : IDispatch
		{
			public const new Guid IID = .(0x8cc497c0, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextDocument *self, BSTR* pName) GetName;
			public function HRESULT(ITextDocument *self, ITextSelection** ppSel) GetSelection;
			public function HRESULT(ITextDocument *self, int32* pCount) GetStoryCount;
			public function HRESULT(ITextDocument *self, ITextStoryRanges** ppStories) GetStoryRanges;
			public function HRESULT(ITextDocument *self, int32* pValue) GetSaved;
			public function HRESULT(ITextDocument *self, tomConstants Value) SetSaved;
			public function HRESULT(ITextDocument *self, float* pValue) GetDefaultTabStop;
			public function HRESULT(ITextDocument *self, float Value) SetDefaultTabStop;
			public function HRESULT(ITextDocument *self) New;
			public function HRESULT(ITextDocument *self, VARIANT* pVar, int32 Flags, int32 CodePage) Open;
			public function HRESULT(ITextDocument *self, VARIANT* pVar, int32 Flags, int32 CodePage) Save;
			public function HRESULT(ITextDocument *self, int32* pCount) Freeze;
			public function HRESULT(ITextDocument *self, int32* pCount) Unfreeze;
			public function HRESULT(ITextDocument *self) BeginEditCollection;
			public function HRESULT(ITextDocument *self) EndEditCollection;
			public function HRESULT(ITextDocument *self, int32 Count, int32* pCount) Undo;
			public function HRESULT(ITextDocument *self, int32 Count, int32* pCount) Redo;
			public function HRESULT(ITextDocument *self, int32 cpActive, int32 cpAnchor, ITextRange** ppRange) Range;
			public function HRESULT(ITextDocument *self, int32 x, int32 y, ITextRange** ppRange) RangeFromPoint;
		}
		[CRepr]
		public struct ITextRange : IDispatch
		{
			public const new Guid IID = .(0x8cc497c2, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextRange *self, BSTR* pbstr) GetText;
			public function HRESULT(ITextRange *self, BSTR bstr) SetText;
			public function HRESULT(ITextRange *self, int32* pChar) GetChar;
			public function HRESULT(ITextRange *self, int32 Char) SetChar;
			public function HRESULT(ITextRange *self, ITextRange** ppRange) GetDuplicate;
			public function HRESULT(ITextRange *self, ITextRange** ppRange) GetFormattedText;
			public function HRESULT(ITextRange *self, ITextRange* pRange) SetFormattedText;
			public function HRESULT(ITextRange *self, int32* pcpFirst) GetStart;
			public function HRESULT(ITextRange *self, int32 cpFirst) SetStart;
			public function HRESULT(ITextRange *self, int32* pcpLim) GetEnd;
			public function HRESULT(ITextRange *self, int32 cpLim) SetEnd;
			public function HRESULT(ITextRange *self, ITextFont** ppFont) GetFont;
			public function HRESULT(ITextRange *self, ITextFont* pFont) SetFont;
			public function HRESULT(ITextRange *self, ITextPara** ppPara) GetPara;
			public function HRESULT(ITextRange *self, ITextPara* pPara) SetPara;
			public function HRESULT(ITextRange *self, int32* pCount) GetStoryLength;
			public function HRESULT(ITextRange *self, int32* pValue) GetStoryType;
			public function HRESULT(ITextRange *self, int32 bStart) Collapse;
			public function HRESULT(ITextRange *self, int32 Unit, int32* pDelta) Expand;
			public function HRESULT(ITextRange *self, int32 Unit, int32* pIndex) GetIndex;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Index, int32 Extend) SetIndex;
			public function HRESULT(ITextRange *self, int32 cpAnchor, int32 cpActive) SetRange;
			public function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) InRange;
			public function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) InStory;
			public function HRESULT(ITextRange *self, ITextRange* pRange, int32* pValue) IsEqual;
			public function HRESULT(ITextRange *self) Select;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Extend, int32* pDelta) StartOf;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Extend, int32* pDelta) EndOf;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) Move;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) MoveStart;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) MoveEnd;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveWhile;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveStartWhile;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveEndWhile;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveUntil;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveStartUntil;
			public function HRESULT(ITextRange *self, VARIANT* Cset, int32 Count, int32* pDelta) MoveEndUntil;
			public function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindText;
			public function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindTextStart;
			public function HRESULT(ITextRange *self, BSTR bstr, int32 Count, int32 Flags, int32* pLength) FindTextEnd;
			public function HRESULT(ITextRange *self, int32 Unit, int32 Count, int32* pDelta) Delete;
			public function HRESULT(ITextRange *self, VARIANT* pVar) Cut;
			public function HRESULT(ITextRange *self, VARIANT* pVar) Copy;
			public function HRESULT(ITextRange *self, VARIANT* pVar, int32 Format) Paste;
			public function HRESULT(ITextRange *self, VARIANT* pVar, int32 Format, int32* pValue) CanPaste;
			public function HRESULT(ITextRange *self, int32* pValue) CanEdit;
			public function HRESULT(ITextRange *self, int32 Type) ChangeCase;
			public function HRESULT(ITextRange *self, int32 Type, int32* px, int32* py) GetPoint;
			public function HRESULT(ITextRange *self, int32 x, int32 y, int32 Type, int32 Extend) SetPoint;
			public function HRESULT(ITextRange *self, int32 Value) ScrollIntoView;
			public function HRESULT(ITextRange *self, IUnknown** ppObject) GetEmbeddedObject;
		}
		[CRepr]
		public struct ITextSelection : ITextRange
		{
			public const new Guid IID = .(0x8cc497c1, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextSelection *self, int32* pFlags) GetFlags;
			public function HRESULT(ITextSelection *self, int32 Flags) SetFlags;
			public function HRESULT(ITextSelection *self, int32* pType) GetType;
			public function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveLeft;
			public function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveRight;
			public function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveUp;
			public function HRESULT(ITextSelection *self, int32 Unit, int32 Count, int32 Extend, int32* pDelta) MoveDown;
			public function HRESULT(ITextSelection *self, tomConstants Unit, int32 Extend, int32* pDelta) HomeKey;
			public function HRESULT(ITextSelection *self, int32 Unit, int32 Extend, int32* pDelta) EndKey;
			public function HRESULT(ITextSelection *self, BSTR bstr) TypeText;
		}
		[CRepr]
		public struct ITextFont : IDispatch
		{
			public const new Guid IID = .(0x8cc497c3, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextFont *self, ITextFont** ppFont) GetDuplicate;
			public function HRESULT(ITextFont *self, ITextFont* pFont) SetDuplicate;
			public function HRESULT(ITextFont *self, int32* pValue) CanChange;
			public function HRESULT(ITextFont *self, ITextFont* pFont, int32* pValue) IsEqual;
			public function HRESULT(ITextFont *self, tomConstants Value) Reset;
			public function HRESULT(ITextFont *self, int32* pValue) GetStyle;
			public function HRESULT(ITextFont *self, int32 Value) SetStyle;
			public function HRESULT(ITextFont *self, int32* pValue) GetAllCaps;
			public function HRESULT(ITextFont *self, int32 Value) SetAllCaps;
			public function HRESULT(ITextFont *self, int32* pValue) GetAnimation;
			public function HRESULT(ITextFont *self, int32 Value) SetAnimation;
			public function HRESULT(ITextFont *self, int32* pValue) GetBackColor;
			public function HRESULT(ITextFont *self, int32 Value) SetBackColor;
			public function HRESULT(ITextFont *self, int32* pValue) GetBold;
			public function HRESULT(ITextFont *self, int32 Value) SetBold;
			public function HRESULT(ITextFont *self, int32* pValue) GetEmboss;
			public function HRESULT(ITextFont *self, int32 Value) SetEmboss;
			public function HRESULT(ITextFont *self, int32* pValue) GetForeColor;
			public function HRESULT(ITextFont *self, int32 Value) SetForeColor;
			public function HRESULT(ITextFont *self, int32* pValue) GetHidden;
			public function HRESULT(ITextFont *self, int32 Value) SetHidden;
			public function HRESULT(ITextFont *self, int32* pValue) GetEngrave;
			public function HRESULT(ITextFont *self, int32 Value) SetEngrave;
			public function HRESULT(ITextFont *self, int32* pValue) GetItalic;
			public function HRESULT(ITextFont *self, int32 Value) SetItalic;
			public function HRESULT(ITextFont *self, float* pValue) GetKerning;
			public function HRESULT(ITextFont *self, float Value) SetKerning;
			public function HRESULT(ITextFont *self, int32* pValue) GetLanguageID;
			public function HRESULT(ITextFont *self, int32 Value) SetLanguageID;
			public function HRESULT(ITextFont *self, BSTR* pbstr) GetName;
			public function HRESULT(ITextFont *self, BSTR bstr) SetName;
			public function HRESULT(ITextFont *self, int32* pValue) GetOutline;
			public function HRESULT(ITextFont *self, int32 Value) SetOutline;
			public function HRESULT(ITextFont *self, float* pValue) GetPosition;
			public function HRESULT(ITextFont *self, float Value) SetPosition;
			public function HRESULT(ITextFont *self, int32* pValue) GetProtected;
			public function HRESULT(ITextFont *self, int32 Value) SetProtected;
			public function HRESULT(ITextFont *self, int32* pValue) GetShadow;
			public function HRESULT(ITextFont *self, int32 Value) SetShadow;
			public function HRESULT(ITextFont *self, float* pValue) GetSize;
			public function HRESULT(ITextFont *self, float Value) SetSize;
			public function HRESULT(ITextFont *self, int32* pValue) GetSmallCaps;
			public function HRESULT(ITextFont *self, int32 Value) SetSmallCaps;
			public function HRESULT(ITextFont *self, float* pValue) GetSpacing;
			public function HRESULT(ITextFont *self, float Value) SetSpacing;
			public function HRESULT(ITextFont *self, int32* pValue) GetStrikeThrough;
			public function HRESULT(ITextFont *self, int32 Value) SetStrikeThrough;
			public function HRESULT(ITextFont *self, int32* pValue) GetSubscript;
			public function HRESULT(ITextFont *self, int32 Value) SetSubscript;
			public function HRESULT(ITextFont *self, int32* pValue) GetSuperscript;
			public function HRESULT(ITextFont *self, int32 Value) SetSuperscript;
			public function HRESULT(ITextFont *self, int32* pValue) GetUnderline;
			public function HRESULT(ITextFont *self, int32 Value) SetUnderline;
			public function HRESULT(ITextFont *self, int32* pValue) GetWeight;
			public function HRESULT(ITextFont *self, int32 Value) SetWeight;
		}
		[CRepr]
		public struct ITextPara : IDispatch
		{
			public const new Guid IID = .(0x8cc497c4, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextPara *self, ITextPara** ppPara) GetDuplicate;
			public function HRESULT(ITextPara *self, ITextPara* pPara) SetDuplicate;
			public function HRESULT(ITextPara *self, int32* pValue) CanChange;
			public function HRESULT(ITextPara *self, ITextPara* pPara, int32* pValue) IsEqual;
			public function HRESULT(ITextPara *self, int32 Value) Reset;
			public function HRESULT(ITextPara *self, int32* pValue) GetStyle;
			public function HRESULT(ITextPara *self, int32 Value) SetStyle;
			public function HRESULT(ITextPara *self, int32* pValue) GetAlignment;
			public function HRESULT(ITextPara *self, int32 Value) SetAlignment;
			public function HRESULT(ITextPara *self, tomConstants* pValue) GetHyphenation;
			public function HRESULT(ITextPara *self, int32 Value) SetHyphenation;
			public function HRESULT(ITextPara *self, float* pValue) GetFirstLineIndent;
			public function HRESULT(ITextPara *self, tomConstants* pValue) GetKeepTogether;
			public function HRESULT(ITextPara *self, int32 Value) SetKeepTogether;
			public function HRESULT(ITextPara *self, tomConstants* pValue) GetKeepWithNext;
			public function HRESULT(ITextPara *self, int32 Value) SetKeepWithNext;
			public function HRESULT(ITextPara *self, float* pValue) GetLeftIndent;
			public function HRESULT(ITextPara *self, float* pValue) GetLineSpacing;
			public function HRESULT(ITextPara *self, int32* pValue) GetLineSpacingRule;
			public function HRESULT(ITextPara *self, int32* pValue) GetListAlignment;
			public function HRESULT(ITextPara *self, int32 Value) SetListAlignment;
			public function HRESULT(ITextPara *self, int32* pValue) GetListLevelIndex;
			public function HRESULT(ITextPara *self, int32 Value) SetListLevelIndex;
			public function HRESULT(ITextPara *self, int32* pValue) GetListStart;
			public function HRESULT(ITextPara *self, int32 Value) SetListStart;
			public function HRESULT(ITextPara *self, float* pValue) GetListTab;
			public function HRESULT(ITextPara *self, float Value) SetListTab;
			public function HRESULT(ITextPara *self, int32* pValue) GetListType;
			public function HRESULT(ITextPara *self, int32 Value) SetListType;
			public function HRESULT(ITextPara *self, int32* pValue) GetNoLineNumber;
			public function HRESULT(ITextPara *self, int32 Value) SetNoLineNumber;
			public function HRESULT(ITextPara *self, int32* pValue) GetPageBreakBefore;
			public function HRESULT(ITextPara *self, int32 Value) SetPageBreakBefore;
			public function HRESULT(ITextPara *self, float* pValue) GetRightIndent;
			public function HRESULT(ITextPara *self, float Value) SetRightIndent;
			public function HRESULT(ITextPara *self, float First, float Left, float Right) SetIndents;
			public function HRESULT(ITextPara *self, int32 Rule, float Spacing) SetLineSpacing;
			public function HRESULT(ITextPara *self, float* pValue) GetSpaceAfter;
			public function HRESULT(ITextPara *self, float Value) SetSpaceAfter;
			public function HRESULT(ITextPara *self, float* pValue) GetSpaceBefore;
			public function HRESULT(ITextPara *self, float Value) SetSpaceBefore;
			public function HRESULT(ITextPara *self, int32* pValue) GetWidowControl;
			public function HRESULT(ITextPara *self, int32 Value) SetWidowControl;
			public function HRESULT(ITextPara *self, int32* pCount) GetTabCount;
			public function HRESULT(ITextPara *self, float tbPos, int32 tbAlign, int32 tbLeader) AddTab;
			public function HRESULT(ITextPara *self) ClearAllTabs;
			public function HRESULT(ITextPara *self, float tbPos) DeleteTab;
			public function HRESULT(ITextPara *self, int32 iTab, float* ptbPos, int32* ptbAlign, int32* ptbLeader) GetTab;
		}
		[CRepr]
		public struct ITextStoryRanges : IDispatch
		{
			public const new Guid IID = .(0x8cc497c5, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public function HRESULT(ITextStoryRanges *self, IUnknown** ppunkEnum) _NewEnum;
			public function HRESULT(ITextStoryRanges *self, int32 Index, ITextRange** ppRange) Item;
			public function HRESULT(ITextStoryRanges *self, int32* pCount) GetCount;
		}
		[CRepr]
		public struct ITextDocument2 : ITextDocument
		{
			public const new Guid IID = .(0xc241f5e0, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextDocument2 *self, int32* pValue) GetCaretType;
			public function HRESULT(ITextDocument2 *self, int32 Value) SetCaretType;
			public function HRESULT(ITextDocument2 *self, ITextDisplays** ppDisplays) GetDisplays;
			public function HRESULT(ITextDocument2 *self, ITextFont2** ppFont) GetDocumentFont;
			public function HRESULT(ITextDocument2 *self, ITextFont2* pFont) SetDocumentFont;
			public function HRESULT(ITextDocument2 *self, ITextPara2** ppPara) GetDocumentPara;
			public function HRESULT(ITextDocument2 *self, ITextPara2* pPara) SetDocumentPara;
			public function HRESULT(ITextDocument2 *self, tomConstants* pFlags) GetEastAsianFlags;
			public function HRESULT(ITextDocument2 *self, BSTR* pbstr) GetGenerator;
			public function HRESULT(ITextDocument2 *self, int32 Value) SetIMEInProgress;
			public function HRESULT(ITextDocument2 *self, int32* pValue) GetNotificationMode;
			public function HRESULT(ITextDocument2 *self, int32 Value) SetNotificationMode;
			public function HRESULT(ITextDocument2 *self, ITextSelection2** ppSel) GetSelection2;
			public function HRESULT(ITextDocument2 *self, ITextStoryRanges2** ppStories) GetStoryRanges2;
			public function HRESULT(ITextDocument2 *self, int32* pOptions) GetTypographyOptions;
			public function HRESULT(ITextDocument2 *self, int32* pValue) GetVersion;
			public function HRESULT(ITextDocument2 *self, int64* pHwnd) GetWindow;
			public function HRESULT(ITextDocument2 *self, IUnknown* pFilter) AttachMsgFilter;
			public function HRESULT(ITextDocument2 *self, int32 cch, int32* pcch) CheckTextLimit;
			public function HRESULT(ITextDocument2 *self, IUnknown** ppVoid) GetCallManager;
			public function HRESULT(ITextDocument2 *self, tomConstants Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) GetClientRect;
			public function HRESULT(ITextDocument2 *self, int32 Index, int32* pValue) GetEffectColor;
			public function HRESULT(ITextDocument2 *self, int64* pContext) GetImmContext;
			public function HRESULT(ITextDocument2 *self, int32 cp, int32 CharRep, int32 Options, int32 curCharRep, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) GetPreferredFont;
			public function HRESULT(ITextDocument2 *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextDocument2 *self, ITextStrings** ppStrs) GetStrings;
			public function HRESULT(ITextDocument2 *self, int32 Notify) Notify;
			public function HRESULT(ITextDocument2 *self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) Range2;
			public function HRESULT(ITextDocument2 *self, int32 x, int32 y, int32 Type, ITextRange2** ppRange) RangeFromPoint2;
			public function HRESULT(ITextDocument2 *self, IUnknown* pVoid) ReleaseCallManager;
			public function HRESULT(ITextDocument2 *self, int64 Context) ReleaseImmContext;
			public function HRESULT(ITextDocument2 *self, int32 Index, int32 Value) SetEffectColor;
			public function HRESULT(ITextDocument2 *self, int32 Type, int32 Value) SetProperty;
			public function HRESULT(ITextDocument2 *self, int32 Options, int32 Mask) SetTypographyOptions;
			public function HRESULT(ITextDocument2 *self) SysBeep;
			public function HRESULT(ITextDocument2 *self, int32 Value) Update;
			public function HRESULT(ITextDocument2 *self) UpdateWindow;
			public function HRESULT(ITextDocument2 *self, int32* pOptions) GetMathProperties;
			public function HRESULT(ITextDocument2 *self, int32 Options, int32 Mask) SetMathProperties;
			public function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetActiveStory;
			public function HRESULT(ITextDocument2 *self, ITextStory* pStory) SetActiveStory;
			public function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetMainStory;
			public function HRESULT(ITextDocument2 *self, ITextStory** ppStory) GetNewStory;
			public function HRESULT(ITextDocument2 *self, int32 Index, ITextStory** ppStory) GetStory;
		}
		[CRepr]
		public struct ITextRange2 : ITextSelection
		{
			public const new Guid IID = .(0xc241f5e2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextRange2 *self, int32* pcch) GetCch;
			public function HRESULT(ITextRange2 *self, IUnknown** ppCells) GetCells;
			public function HRESULT(ITextRange2 *self, IUnknown** ppColumn) GetColumn;
			public function HRESULT(ITextRange2 *self, int32* pCount) GetCount;
			public function HRESULT(ITextRange2 *self, ITextRange2** ppRange) GetDuplicate2;
			public function HRESULT(ITextRange2 *self, ITextFont2** ppFont) GetFont2;
			public function HRESULT(ITextRange2 *self, ITextFont2* pFont) SetFont2;
			public function HRESULT(ITextRange2 *self, ITextRange2** ppRange) GetFormattedText2;
			public function HRESULT(ITextRange2 *self, ITextRange2* pRange) SetFormattedText2;
			public function HRESULT(ITextRange2 *self, int32* pValue) GetGravity;
			public function HRESULT(ITextRange2 *self, int32 Value) SetGravity;
			public function HRESULT(ITextRange2 *self, ITextPara2** ppPara) GetPara2;
			public function HRESULT(ITextRange2 *self, ITextPara2* pPara) SetPara2;
			public function HRESULT(ITextRange2 *self, ITextRow** ppRow) GetRow;
			public function HRESULT(ITextRange2 *self, int32* pValue) GetStartPara;
			public function HRESULT(ITextRange2 *self, IUnknown** ppTable) GetTable;
			public function HRESULT(ITextRange2 *self, BSTR* pbstr) GetURL;
			public function HRESULT(ITextRange2 *self, BSTR bstr) SetURL;
			public function HRESULT(ITextRange2 *self, int32 cp1, int32 cp2, int32 Activate) AddSubrange;
			public function HRESULT(ITextRange2 *self, int32 Flags) BuildUpMath;
			public function HRESULT(ITextRange2 *self, int32 cpFirst, int32 cpLim) DeleteSubrange;
			public function HRESULT(ITextRange2 *self, ITextRange2* pRange, int32 Count, int32 Flags, int32* pDelta) Find;
			public function HRESULT(ITextRange2 *self, int32* pChar, int32 Offset) GetChar2;
			public function HRESULT(ITextRange2 *self, int32* pcLine, int32* pPosition) GetDropCap;
			public function HRESULT(ITextRange2 *self, int32* pType, int32* pAlign, int32* pChar, int32* pChar1, int32* pChar2, int32* pCount, int32* pTeXStyle, int32* pcCol, int32* pLevel) GetInlineObject;
			public function HRESULT(ITextRange2 *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextRange2 *self, int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom, int32* pHit) GetRect;
			public function HRESULT(ITextRange2 *self, int32 iSubrange, int32* pcpFirst, int32* pcpLim) GetSubrange;
			public function HRESULT(ITextRange2 *self, int32 Flags, BSTR* pbstr) GetText2;
			public function HRESULT(ITextRange2 *self) HexToUnicode;
			public function HRESULT(ITextRange2 *self, int32 cCol, int32 cRow, int32 AutoFit) InsertTable;
			public function HRESULT(ITextRange2 *self, int32 Flags) Linearize;
			public function HRESULT(ITextRange2 *self, int32 cpAnchor, int32 cpActive) SetActiveSubrange;
			public function HRESULT(ITextRange2 *self, int32 cLine, int32 Position) SetDropCap;
			public function HRESULT(ITextRange2 *self, int32 Type, int32 Value) SetProperty;
			public function HRESULT(ITextRange2 *self, int32 Flags, BSTR bstr) SetText2;
			public function HRESULT(ITextRange2 *self) UnicodeToHex;
			public function HRESULT(ITextRange2 *self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol) SetInlineObject;
			public function HRESULT(ITextRange2 *self, BSTR bstr, int32* pValue) GetMathFunctionType;
			public function HRESULT(ITextRange2 *self, int32 width, int32 height, int32 ascent, TEXT_ALIGN_OPTIONS Type, BSTR bstrAltText, IStream* pStream) InsertImage;
		}
		[CRepr]
		public struct ITextSelection2 : ITextRange2
		{
			public const new Guid IID = .(0xc241f5e1, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
		}
		[CRepr]
		public struct ITextFont2 : ITextFont
		{
			public const new Guid IID = .(0xc241f5e3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextFont2 *self, int32* pCount) GetCount;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetAutoLigatures;
			public function HRESULT(ITextFont2 *self, int32 Value) SetAutoLigatures;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceAlpha;
			public function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceAlpha;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceNumeric;
			public function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceNumeric;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetAutospaceParens;
			public function HRESULT(ITextFont2 *self, int32 Value) SetAutospaceParens;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetCharRep;
			public function HRESULT(ITextFont2 *self, int32 Value) SetCharRep;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetCompressionMode;
			public function HRESULT(ITextFont2 *self, int32 Value) SetCompressionMode;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetCookie;
			public function HRESULT(ITextFont2 *self, int32 Value) SetCookie;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetDoubleStrike;
			public function HRESULT(ITextFont2 *self, int32 Value) SetDoubleStrike;
			public function HRESULT(ITextFont2 *self, ITextFont2** ppFont) GetDuplicate2;
			public function HRESULT(ITextFont2 *self, ITextFont2* pFont) SetDuplicate2;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetLinkType;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetMathZone;
			public function HRESULT(ITextFont2 *self, int32 Value) SetMathZone;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetModWidthPairs;
			public function HRESULT(ITextFont2 *self, int32 Value) SetModWidthPairs;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetModWidthSpace;
			public function HRESULT(ITextFont2 *self, int32 Value) SetModWidthSpace;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetOldNumbers;
			public function HRESULT(ITextFont2 *self, int32 Value) SetOldNumbers;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetOverlapping;
			public function HRESULT(ITextFont2 *self, int32 Value) SetOverlapping;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetPositionSubSuper;
			public function HRESULT(ITextFont2 *self, int32 Value) SetPositionSubSuper;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetScaling;
			public function HRESULT(ITextFont2 *self, int32 Value) SetScaling;
			public function HRESULT(ITextFont2 *self, float* pValue) GetSpaceExtension;
			public function HRESULT(ITextFont2 *self, float Value) SetSpaceExtension;
			public function HRESULT(ITextFont2 *self, int32* pValue) GetUnderlinePositionMode;
			public function HRESULT(ITextFont2 *self, int32 Value) SetUnderlinePositionMode;
			public function HRESULT(ITextFont2 *self, int32* pValue, int32* pMask) GetEffects;
			public function HRESULT(ITextFont2 *self, int32* pValue, int32* pMask) GetEffects2;
			public function HRESULT(ITextFont2 *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextFont2 *self, int32 Index, int32* pType, int32* pValue) GetPropertyInfo;
			public function HRESULT(ITextFont2 *self, ITextFont2* pFont, int32* pB) IsEqual2;
			public function HRESULT(ITextFont2 *self, int32 Value, int32 Mask) SetEffects;
			public function HRESULT(ITextFont2 *self, int32 Value, int32 Mask) SetEffects2;
			public function HRESULT(ITextFont2 *self, int32 Type, int32 Value) SetProperty;
		}
		[CRepr]
		public struct ITextPara2 : ITextPara
		{
			public const new Guid IID = .(0xc241f5e4, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextPara2 *self, IUnknown** ppBorders) GetBorders;
			public function HRESULT(ITextPara2 *self, ITextPara2** ppPara) GetDuplicate2;
			public function HRESULT(ITextPara2 *self, ITextPara2* pPara) SetDuplicate2;
			public function HRESULT(ITextPara2 *self, int32* pValue) GetFontAlignment;
			public function HRESULT(ITextPara2 *self, int32 Value) SetFontAlignment;
			public function HRESULT(ITextPara2 *self, int32* pValue) GetHangingPunctuation;
			public function HRESULT(ITextPara2 *self, int32 Value) SetHangingPunctuation;
			public function HRESULT(ITextPara2 *self, int32* pValue) GetSnapToGrid;
			public function HRESULT(ITextPara2 *self, int32 Value) SetSnapToGrid;
			public function HRESULT(ITextPara2 *self, int32* pValue) GetTrimPunctuationAtStart;
			public function HRESULT(ITextPara2 *self, int32 Value) SetTrimPunctuationAtStart;
			public function HRESULT(ITextPara2 *self, int32* pValue, int32* pMask) GetEffects;
			public function HRESULT(ITextPara2 *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextPara2 *self, ITextPara2* pPara, int32* pB) IsEqual2;
			public function HRESULT(ITextPara2 *self, int32 Value, int32 Mask) SetEffects;
			public function HRESULT(ITextPara2 *self, int32 Type, int32 Value) SetProperty;
		}
		[CRepr]
		public struct ITextStoryRanges2 : ITextStoryRanges
		{
			public const new Guid IID = .(0xc241f5e5, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextStoryRanges2 *self, int32 Index, ITextRange2** ppRange) Item2;
		}
		[CRepr]
		public struct ITextStory : IUnknown
		{
			public const new Guid IID = .(0xc241f5f3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextStory *self, int32* pValue) GetActive;
			public function HRESULT(ITextStory *self, int32 Value) SetActive;
			public function HRESULT(ITextStory *self, IUnknown** ppDisplay) GetDisplay;
			public function HRESULT(ITextStory *self, int32* pValue) GetIndex;
			public function HRESULT(ITextStory *self, int32* pValue) GetType;
			public function HRESULT(ITextStory *self, int32 Value) SetType;
			public function HRESULT(ITextStory *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextStory *self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) GetRange;
			public function HRESULT(ITextStory *self, int32 Flags, BSTR* pbstr) GetText;
			public function HRESULT(ITextStory *self, IUnknown* pUnk) SetFormattedText;
			public function HRESULT(ITextStory *self, int32 Type, int32 Value) SetProperty;
			public function HRESULT(ITextStory *self, int32 Flags, BSTR bstr) SetText;
		}
		[CRepr]
		public struct ITextStrings : IDispatch
		{
			public const new Guid IID = .(0xc241f5e7, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextStrings *self, int32 Index, ITextRange2** ppRange) Item;
			public function HRESULT(ITextStrings *self, int32* pCount) GetCount;
			public function HRESULT(ITextStrings *self, BSTR bstr) Add;
			public function HRESULT(ITextStrings *self, ITextRange2* pRange, int32 iString) Append;
			public function HRESULT(ITextStrings *self, int32 iString) Cat2;
			public function HRESULT(ITextStrings *self, BSTR bstr) CatTop2;
			public function HRESULT(ITextStrings *self, ITextRange2* pRange) DeleteRange;
			public function HRESULT(ITextStrings *self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol, ITextRange2* pRange) EncodeFunction;
			public function HRESULT(ITextStrings *self, int32 iString, int32* pcch) GetCch;
			public function HRESULT(ITextStrings *self, int32 iString) InsertNullStr;
			public function HRESULT(ITextStrings *self, int32 iString, int32 cch) MoveBoundary;
			public function HRESULT(ITextStrings *self, BSTR bstr) PrefixTop;
			public function HRESULT(ITextStrings *self, int32 iString, int32 cString) Remove;
			public function HRESULT(ITextStrings *self, ITextRange2* pRangeD, ITextRange2* pRangeS) SetFormattedText;
			public function HRESULT(ITextStrings *self, int32 iString, int32 cp) SetOpCp;
			public function HRESULT(ITextStrings *self, BSTR bstr, ITextRange2* pRange) SuffixTop;
			public function HRESULT(ITextStrings *self) Swap;
		}
		[CRepr]
		public struct ITextRow : IDispatch
		{
			public const new Guid IID = .(0xc241f5ef, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public function HRESULT(ITextRow *self, int32* pValue) GetAlignment;
			public function HRESULT(ITextRow *self, int32 Value) SetAlignment;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellCount;
			public function HRESULT(ITextRow *self, int32 Value) SetCellCount;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellCountCache;
			public function HRESULT(ITextRow *self, int32 Value) SetCellCountCache;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellIndex;
			public function HRESULT(ITextRow *self, int32 Value) SetCellIndex;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellMargin;
			public function HRESULT(ITextRow *self, int32 Value) SetCellMargin;
			public function HRESULT(ITextRow *self, int32* pValue) GetHeight;
			public function HRESULT(ITextRow *self, int32 Value) SetHeight;
			public function HRESULT(ITextRow *self, int32* pValue) GetIndent;
			public function HRESULT(ITextRow *self, int32 Value) SetIndent;
			public function HRESULT(ITextRow *self, int32* pValue) GetKeepTogether;
			public function HRESULT(ITextRow *self, int32 Value) SetKeepTogether;
			public function HRESULT(ITextRow *self, int32* pValue) GetKeepWithNext;
			public function HRESULT(ITextRow *self, int32 Value) SetKeepWithNext;
			public function HRESULT(ITextRow *self, int32* pValue) GetNestLevel;
			public function HRESULT(ITextRow *self, int32* pValue) GetRTL;
			public function HRESULT(ITextRow *self, int32 Value) SetRTL;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellAlignment;
			public function HRESULT(ITextRow *self, int32 Value) SetCellAlignment;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellColorBack;
			public function HRESULT(ITextRow *self, int32 Value) SetCellColorBack;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellColorFore;
			public function HRESULT(ITextRow *self, int32 Value) SetCellColorFore;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellMergeFlags;
			public function HRESULT(ITextRow *self, int32 Value) SetCellMergeFlags;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellShading;
			public function HRESULT(ITextRow *self, int32 Value) SetCellShading;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellVerticalText;
			public function HRESULT(ITextRow *self, int32 Value) SetCellVerticalText;
			public function HRESULT(ITextRow *self, int32* pValue) GetCellWidth;
			public function HRESULT(ITextRow *self, int32 Value) SetCellWidth;
			public function HRESULT(ITextRow *self, int32* pcrLeft, int32* pcrTop, int32* pcrRight, int32* pcrBottom) GetCellBorderColors;
			public function HRESULT(ITextRow *self, int32* pduLeft, int32* pduTop, int32* pduRight, int32* pduBottom) GetCellBorderWidths;
			public function HRESULT(ITextRow *self, int32 crLeft, int32 crTop, int32 crRight, int32 crBottom) SetCellBorderColors;
			public function HRESULT(ITextRow *self, int32 duLeft, int32 duTop, int32 duRight, int32 duBottom) SetCellBorderWidths;
			public function HRESULT(ITextRow *self, int32 cRow, tomConstants Flags) Apply;
			public function HRESULT(ITextRow *self, int32* pValue) CanChange;
			public function HRESULT(ITextRow *self, int32 Type, int32* pValue) GetProperty;
			public function HRESULT(ITextRow *self, int32 cRow) Insert;
			public function HRESULT(ITextRow *self, ITextRow* pRow, int32* pB) IsEqual;
			public function HRESULT(ITextRow *self, int32 Value) Reset;
			public function HRESULT(ITextRow *self, int32 Type, int32 Value) SetProperty;
		}
		[CRepr]
		public struct ITextDisplays : IDispatch
		{
			public const new Guid IID = .(0xc241f5f2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
		}
		[CRepr]
		public struct ITextDocument2Old : ITextDocument
		{
			public const new Guid IID = .(0x01c25500, 0x4268, 0x11d1, 0x88, 0x3a, 0x3c, 0x8b, 0x00, 0xc1, 0x00, 0x00);
			
			public function HRESULT(ITextDocument2Old *self, IUnknown* pFilter) AttachMsgFilter;
			public function HRESULT(ITextDocument2Old *self, int32 Index, uint32 cr) SetEffectColor;
			public function HRESULT(ITextDocument2Old *self, int32 Index, uint32* pcr) GetEffectColor;
			public function HRESULT(ITextDocument2Old *self, int32* pCaretType) GetCaretType;
			public function HRESULT(ITextDocument2Old *self, int32 CaretType) SetCaretType;
			public function HRESULT(ITextDocument2Old *self, int64* pContext) GetImmContext;
			public function HRESULT(ITextDocument2Old *self, int64 Context) ReleaseImmContext;
			public function HRESULT(ITextDocument2Old *self, int32 cp, int32 CharRep, int32 Option, int32 CharRepCur, int32 curFontSize, BSTR* pbstr, int32* pPitchAndFamily, int32* pNewFontSize) GetPreferredFont;
			public function HRESULT(ITextDocument2Old *self, int32* pMode) GetNotificationMode;
			public function HRESULT(ITextDocument2Old *self, int32 Mode) SetNotificationMode;
			public function HRESULT(ITextDocument2Old *self, int32 Type, int32* pLeft, int32* pTop, int32* pRight, int32* pBottom) GetClientRect;
			public function HRESULT(ITextDocument2Old *self, ITextSelection** ppSel) GetSelection2;
			public function HRESULT(ITextDocument2Old *self, int32* phWnd) GetWindow;
			public function HRESULT(ITextDocument2Old *self, int32* pFlags) GetFEFlags;
			public function HRESULT(ITextDocument2Old *self) UpdateWindow;
			public function HRESULT(ITextDocument2Old *self, int32 cch, int32* pcch) CheckTextLimit;
			public function HRESULT(ITextDocument2Old *self, int32 Value) IMEInProgress;
			public function HRESULT(ITextDocument2Old *self) SysBeep;
			public function HRESULT(ITextDocument2Old *self, int32 Mode) Update;
			public function HRESULT(ITextDocument2Old *self, int32 Notify) Notify;
			public function HRESULT(ITextDocument2Old *self, ITextFont** ppITextFont) GetDocumentFont;
			public function HRESULT(ITextDocument2Old *self, ITextPara** ppITextPara) GetDocumentPara;
			public function HRESULT(ITextDocument2Old *self, IUnknown** ppVoid) GetCallManager;
			public function HRESULT(ITextDocument2Old *self, IUnknown* pVoid) ReleaseCallManager;
		}
		
	}
}
