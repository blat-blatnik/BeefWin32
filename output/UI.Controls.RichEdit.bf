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
		public function HRESULT PCreateTextServices(IUnknown punkOuter, ITextHost pITextHost, IUnknown* ppUnk);
		public function HRESULT PShutdownTextServices(IUnknown pTextServices);
		
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
			public IStream pIStream;
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
			public IOleObject poleobj;
			public IStorage pstg;
			public IOleClientSite polesite;
			public SIZE sizel;
			public uint32 dvaspect;
			public REOBJECT_FLAGS dwFlags;
			public uint32 dwUser;
		}
		
		// --- COM Interfaces ---
		
		public struct ITextServices {}
		public struct ITextHost {}
		public struct IRicheditUiaOverrides {}
		public struct ITextHost2 {}
		public struct ITextServices2 {}
		public struct IRichEditOle {}
		public struct IRichEditOleCallback {}
		public struct ITextDocument {}
		public struct ITextRange {}
		public struct ITextSelection {}
		public struct ITextFont {}
		public struct ITextPara {}
		public struct ITextStoryRanges {}
		public struct ITextDocument2 {}
		public struct ITextRange2 {}
		public struct ITextSelection2 {}
		public struct ITextFont2 {}
		public struct ITextPara2 {}
		public struct ITextStoryRanges2 {}
		public struct ITextStory {}
		public struct ITextStrings {}
		public struct ITextRow {}
		public struct ITextDisplays {}
		public struct ITextDocument2Old {}
		
	}
}