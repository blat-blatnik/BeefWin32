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
			SUBSCRIPT = 196608,
			SUPERSCRIPT = 196608,
			EFFECTS = 1073741887,
			ALL = 4160749631,
			BOLD = 1,
			CHARSET = 134217728,
			COLOR = 1073741824,
			FACE = 536870912,
			ITALIC = 2,
			OFFSET = 268435456,
			PROTECTED = 16,
			SIZE = 2147483648,
			STRIKEOUT = 8,
			UNDERLINE = 4,
			LINK = 32,
			SMALLCAPS = 64,
			ALLCAPS = 128,
			HIDDEN = 256,
			OUTLINE = 512,
			SHADOW = 1024,
			EMBOSS = 2048,
			IMPRINT = 4096,
			DISABLED = 8192,
			REVISED = 16384,
			REVAUTHOR = 32768,
			ANIMATION = 262144,
			STYLE = 524288,
			KERNING = 1048576,
			SPACING = 2097152,
			WEIGHT = 4194304,
			UNDERLINETYPE = 8388608,
			COOKIE = 16777216,
			LCID = 33554432,
			BACKCOLOR = 67108864,
			EFFECTS2 = 1141080063,
			ALL2 = 4294967295,
			FONTBOUND = 1048576,
			LINKPROTECTED = 8388608,
			EXTENDED = 33554432,
			MATHNOBUILDUP = 134217728,
			MATH = 268435456,
			MATHORDINARY = 536870912,
			ALLEFFECTS = 2115207167,
		}
		public enum CFE_EFFECTS : uint32
		{
			ALLCAPS = 128,
			AUTOBACKCOLOR = 67108864,
			DISABLED = 8192,
			EMBOSS = 2048,
			HIDDEN = 256,
			IMPRINT = 4096,
			OUTLINE = 512,
			REVISED = 16384,
			SHADOW = 1024,
			SMALLCAPS = 64,
			AUTOCOLOR = 1073741824,
			BOLD = 1,
			ITALIC = 2,
			STRIKEOUT = 8,
			UNDERLINE = 4,
			PROTECTED = 16,
			LINK = 32,
			SUBSCRIPT = 65536,
			SUPERSCRIPT = 131072,
			FONTBOUND = 1048576,
			LINKPROTECTED = 8388608,
			EXTENDED = 33554432,
			MATHNOBUILDUP = 134217728,
			MATH = 268435456,
			MATHORDINARY = 536870912,
		}
		public enum PARAFORMAT_MASK : uint32
		{
			ALIGNMENT = 8,
			NUMBERING = 32,
			OFFSET = 4,
			OFFSETINDENT = 2147483648,
			RIGHTINDENT = 2,
			RTLPARA = 65536,
			STARTINDENT = 1,
			TABSTOPS = 16,
		}
		public enum RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE : uint16
		{
			SEL_EMPTY = 0,
			SEL_TEXT = 1,
			SEL_OBJECT = 2,
			SEL_MULTICHAR = 4,
			SEL_MULTIOBJECT = 8,
			GCM_RIGHTMOUSEDROP = 32768,
		}
		public enum RICH_EDIT_GET_OBJECT_FLAGS : uint32
		{
			POLEOBJ = 1,
			PSTG = 2,
			POLESITE = 4,
			NO_INTERFACES = 0,
			ALL_INTERFACES = 7,
		}
		public enum PARAFORMAT_BORDERS : uint16
		{
			LEFT = 1,
			RIGHT = 2,
			TOP = 4,
			BOTTOM = 8,
			INSIDE = 16,
			OUTSIDE = 32,
			AUTOCOLOR = 64,
		}
		public enum PARAFORMAT_SHADING_STYLE : uint16
		{
			NONE = 0,
			DARK_HORIZ = 1,
			DARK_VERT = 2,
			DARK_DOWN_DIAG = 3,
			DARK_UP_DIAG = 4,
			DARK_GRID = 5,
			DARK_TRELLIS = 6,
			LIGHT_HORZ = 7,
			LIGHT_VERT = 8,
			LIGHT_DOWN_DIAG = 9,
			LIGHT_UP_DIAG = 10,
			LIGHT_GRID = 11,
			LIGHT_TRELLIS = 12,
		}
		public enum GETTEXTEX_FLAGS : uint32
		{
			DEFAULT = 0,
			NOHIDDENTEXT = 8,
			RAWTEXT = 4,
			SELECTION = 2,
			USECRLF = 1,
		}
		public enum ENDCOMPOSITIONNOTIFY_CODE : uint32
		{
			ENDCOMPOSITION = 1,
			NEWTEXT = 2,
		}
		public enum IMECOMPTEXT_FLAGS : uint32
		{
			ICT_RESULTREADSTR = 1,
		}
		public enum GETTEXTLENGTHEX_FLAGS : uint32
		{
			DEFAULT = 0,
			USECRLF = 1,
			PRECISE = 2,
			CLOSE = 4,
			NUMCHARS = 8,
			NUMBYTES = 16,
		}
		public enum REOBJECT_FLAGS : uint32
		{
			ALIGNTORIGHT = 256,
			BELOWBASELINE = 2,
			BLANK = 16,
			CANROTATE = 128,
			DONTNEEDPALETTE = 32,
			DYNAMICSIZE = 8,
			GETMETAFILE = 4194304,
			HILITED = 16777216,
			INPLACEACTIVE = 33554432,
			INVERTEDSELECT = 4,
			LINK = 2147483648,
			LINKAVAILABLE = 8388608,
			OPEN = 67108864,
			OWNERDRAWSELECT = 64,
			RESIZABLE = 1,
			SELECTED = 134217728,
			STATIC = 1073741824,
			USEASBACKGROUND = 1024,
			WRAPTEXTAROUND = 512,
		}
		public enum PARAFORMAT_NUMBERING_STYLE : uint16
		{
			PAREN = 0,
			PARENS = 256,
			PERIOD = 512,
			PLAIN = 768,
			NONUMBER = 1024,
			NEWNUMBER = 32768,
		}
		public enum PARAFORMAT_ALIGNMENT : uint16
		{
			CENTER = 3,
			LEFT = 1,
			RIGHT = 2,
		}
		public enum TEXTMODE : int32
		{
			PLAINTEXT = 1,
			RICHTEXT = 2,
			SINGLELEVELUNDO = 4,
			MULTILEVELUNDO = 8,
			SINGLECODEPAGE = 16,
			MULTICODEPAGE = 32,
		}
		public enum UNDONAMEID : int32
		{
			UNKNOWN = 0,
			TYPING = 1,
			DELETE = 2,
			DRAGDROP = 3,
			CUT = 4,
			PASTE = 5,
			AUTOTABLE = 6,
		}
		public enum KHYPH : int32
		{
			Nil = 0,
			Normal = 1,
			AddBefore = 2,
			ChangeBefore = 3,
			DeleteBefore = 4,
			ChangeAfter = 5,
			DelAndChange = 6,
		}
		public enum TXTBACKSTYLE : int32
		{
			TRANSPARENT = 0,
			OPAQUE = 1,
		}
		public enum TXTHITRESULT : int32
		{
			NOHIT = 0,
			TRANSPARENT = 1,
			CLOSE = 2,
			HIT = 3,
		}
		public enum TXTNATURALSIZE : int32
		{
			FITTOCONTENT2 = 0,
			FITTOCONTENT = 1,
			ROUNDTOLINE = 2,
			FITTOCONTENT3 = 3,
			FITTOCONTENTWSP = 4,
			INCLUDELASTLINE = 1073741824,
			EMU = -2147483648,
		}
		public enum TXTVIEW : int32
		{
			ACTIVE = 0,
			INACTIVE = -1,
		}
		public enum CHANGETYPE : int32
		{
			GENERIC = 0,
			TEXTCHANGED = 1,
			NEWUNDO = 2,
			NEWREDO = 4,
		}
		public enum CARET_FLAGS : int32
		{
			NONE = 0,
			CUSTOM = 1,
			RTL = 2,
			ITALIC = 32,
			NULL = 64,
			ROTATE90 = 128,
		}
		[AllowDuplicates]
		public enum tomConstants : int32
		{
			False = 0,
			True = -1,
			Undefined = -9999999,
			Toggle = -9999998,
			AutoColor = -9999997,
			Default = -9999996,
			Suspend = -9999995,
			Resume = -9999994,
			ApplyNow = 0,
			ApplyLater = 1,
			TrackParms = 2,
			CacheParms = 3,
			ApplyTmp = 4,
			DisableSmartFont = 8,
			EnableSmartFont = 9,
			UsePoints = 10,
			UseTwips = 11,
			Backward = -1073741823,
			Forward = 1073741823,
			Move = 0,
			Extend = 1,
			NoSelection = 0,
			SelectionIP = 1,
			SelectionNormal = 2,
			SelectionFrame = 3,
			SelectionColumn = 4,
			SelectionRow = 5,
			SelectionBlock = 6,
			SelectionInlineShape = 7,
			SelectionShape = 8,
			SelStartActive = 1,
			SelAtEOL = 2,
			SelOvertype = 4,
			SelActive = 8,
			SelReplace = 16,
			End = 0,
			Start = 32,
			CollapseEnd = 0,
			CollapseStart = 1,
			ClientCoord = 256,
			AllowOffClient = 512,
			Transform = 1024,
			ObjectArg = 2048,
			AtEnd = 4096,
			None = 0,
			Single = 1,
			Words = 2,
			Double = 3,
			Dotted = 4,
			Dash = 5,
			DashDot = 6,
			DashDotDot = 7,
			Wave = 8,
			Thick = 9,
			Hair = 10,
			DoubleWave = 11,
			HeavyWave = 12,
			LongDash = 13,
			ThickDash = 14,
			ThickDashDot = 15,
			ThickDashDotDot = 16,
			ThickDotted = 17,
			ThickLongDash = 18,
			LineSpaceSingle = 0,
			LineSpace1pt5 = 1,
			LineSpaceDouble = 2,
			LineSpaceAtLeast = 3,
			LineSpaceExactly = 4,
			LineSpaceMultiple = 5,
			LineSpacePercent = 6,
			AlignLeft = 0,
			AlignCenter = 1,
			AlignRight = 2,
			AlignJustify = 3,
			AlignDecimal = 3,
			AlignBar = 4,
			DefaultTab = 5,
			AlignInterWord = 3,
			AlignNewspaper = 4,
			AlignInterLetter = 5,
			AlignScaled = 6,
			Spaces = 0,
			Dots = 1,
			Dashes = 2,
			Lines = 3,
			ThickLines = 4,
			Equals = 5,
			TabBack = -3,
			TabNext = -2,
			TabHere = -1,
			ListNone = 0,
			ListBullet = 1,
			ListNumberAsArabic = 2,
			ListNumberAsLCLetter = 3,
			ListNumberAsUCLetter = 4,
			ListNumberAsLCRoman = 5,
			ListNumberAsUCRoman = 6,
			ListNumberAsSequence = 7,
			ListNumberedCircle = 8,
			ListNumberedBlackCircleWingding = 9,
			ListNumberedWhiteCircleWingding = 10,
			ListNumberedArabicWide = 11,
			ListNumberedChS = 12,
			ListNumberedChT = 13,
			ListNumberedJpnChS = 14,
			ListNumberedJpnKor = 15,
			ListNumberedArabic1 = 16,
			ListNumberedArabic2 = 17,
			ListNumberedHebrew = 18,
			ListNumberedThaiAlpha = 19,
			ListNumberedThaiNum = 20,
			ListNumberedHindiAlpha = 21,
			ListNumberedHindiAlpha1 = 22,
			ListNumberedHindiNum = 23,
			ListParentheses = 65536,
			ListPeriod = 131072,
			ListPlain = 196608,
			ListNoNumber = 262144,
			ListMinus = 524288,
			IgnoreNumberStyle = 16777216,
			ParaStyleNormal = -1,
			ParaStyleHeading1 = -2,
			ParaStyleHeading2 = -3,
			ParaStyleHeading3 = -4,
			ParaStyleHeading4 = -5,
			ParaStyleHeading5 = -6,
			ParaStyleHeading6 = -7,
			ParaStyleHeading7 = -8,
			ParaStyleHeading8 = -9,
			ParaStyleHeading9 = -10,
			Character = 1,
			Word = 2,
			Sentence = 3,
			Paragraph = 4,
			Line = 5,
			Story = 6,
			Screen = 7,
			Section = 8,
			TableColumn = 9,
			Column = 9,
			Row = 10,
			Window = 11,
			Cell = 12,
			CharFormat = 13,
			ParaFormat = 14,
			Table = 15,
			Object = 16,
			Page = 17,
			HardParagraph = 18,
			Cluster = 19,
			InlineObject = 20,
			InlineObjectArg = 21,
			LeafLine = 22,
			LayoutColumn = 23,
			ProcessId = 1073741825,
			MatchWord = 2,
			MatchCase = 4,
			MatchPattern = 8,
			UnknownStory = 0,
			MainTextStory = 1,
			FootnotesStory = 2,
			EndnotesStory = 3,
			CommentsStory = 4,
			TextFrameStory = 5,
			EvenPagesHeaderStory = 6,
			PrimaryHeaderStory = 7,
			EvenPagesFooterStory = 8,
			PrimaryFooterStory = 9,
			FirstPageHeaderStory = 10,
			FirstPageFooterStory = 11,
			ScratchStory = 127,
			FindStory = 128,
			ReplaceStory = 129,
			StoryInactive = 0,
			StoryActiveDisplay = 1,
			StoryActiveUI = 2,
			StoryActiveDisplayUI = 3,
			NoAnimation = 0,
			LasVegasLights = 1,
			BlinkingBackground = 2,
			SparkleText = 3,
			MarchingBlackAnts = 4,
			MarchingRedAnts = 5,
			Shimmer = 6,
			WipeDown = 7,
			WipeRight = 8,
			AnimationMax = 8,
			LowerCase = 0,
			UpperCase = 1,
			TitleCase = 2,
			SentenceCase = 4,
			ToggleCase = 5,
			ReadOnly = 256,
			ShareDenyRead = 512,
			ShareDenyWrite = 1024,
			PasteFile = 4096,
			CreateNew = 16,
			CreateAlways = 32,
			OpenExisting = 48,
			OpenAlways = 64,
			TruncateExisting = 80,
			RTF = 1,
			Text = 2,
			HTML = 3,
			WordDocument = 4,
			Bold = -2147483647,
			Italic = -2147483646,
			Underline = -2147483644,
			Strikeout = -2147483640,
			Protected = -2147483632,
			Link = -2147483616,
			SmallCaps = -2147483584,
			AllCaps = -2147483520,
			Hidden = -2147483392,
			Outline = -2147483136,
			Shadow = -2147482624,
			Emboss = -2147481600,
			Imprint = -2147479552,
			Disabled = -2147475456,
			Revised = -2147467264,
			SubscriptCF = -2147418112,
			SuperscriptCF = -2147352576,
			FontBound = -2146435072,
			LinkProtected = -2139095040,
			InlineObjectStart = -2130706432,
			ExtendedChar = -2113929216,
			AutoBackColor = -2080374784,
			MathZoneNoBuildUp = -2013265920,
			MathZone = -1879048192,
			MathZoneOrdinary = -1610612736,
			AutoTextColor = -1073741824,
			MathZoneDisplay = 262144,
			ParaEffectRTL = 1,
			ParaEffectKeep = 2,
			ParaEffectKeepNext = 4,
			ParaEffectPageBreakBefore = 8,
			ParaEffectNoLineNumber = 16,
			ParaEffectNoWidowControl = 32,
			ParaEffectDoNotHyphen = 64,
			ParaEffectSideBySide = 128,
			ParaEffectCollapsed = 256,
			ParaEffectOutlineLevel = 512,
			ParaEffectBox = 1024,
			ParaEffectTableRowDelimiter = 4096,
			ParaEffectTable = 16384,
			ModWidthPairs = 1,
			ModWidthSpace = 2,
			AutoSpaceAlpha = 4,
			AutoSpaceNumeric = 8,
			AutoSpaceParens = 16,
			EmbeddedFont = 32,
			Doublestrike = 64,
			Overlapping = 128,
			NormalCaret = 0,
			KoreanBlockCaret = 1,
			NullCaret = 2,
			IncludeInset = 1,
			UnicodeBiDi = 1,
			MathCFCheck = 4,
			Unlink = 8,
			Unhide = 16,
			CheckTextLimit = 32,
			IgnoreCurrentFont = 0,
			MatchCharRep = 1,
			MatchFontSignature = 2,
			MatchAscii = 4,
			GetHeightOnly = 8,
			MatchMathFont = 16,
			Charset = -2147483648,
			CharRepFromLcid = 1073741824,
			Ansi = 0,
			EastEurope = 1,
			Cyrillic = 2,
			Greek = 3,
			Turkish = 4,
			Hebrew = 5,
			Arabic = 6,
			Baltic = 7,
			Vietnamese = 8,
			DefaultCharRep = 9,
			Symbol = 10,
			Thai = 11,
			ShiftJIS = 12,
			GB2312 = 13,
			Hangul = 14,
			BIG5 = 15,
			PC437 = 16,
			OEM = 17,
			Mac = 18,
			Armenian = 19,
			Syriac = 20,
			Thaana = 21,
			Devanagari = 22,
			Bengali = 23,
			Gurmukhi = 24,
			Gujarati = 25,
			Oriya = 26,
			Tamil = 27,
			Telugu = 28,
			Kannada = 29,
			Malayalam = 30,
			Sinhala = 31,
			Lao = 32,
			Tibetan = 33,
			Myanmar = 34,
			Georgian = 35,
			Jamo = 36,
			Ethiopic = 37,
			Cherokee = 38,
			Aboriginal = 39,
			Ogham = 40,
			Runic = 41,
			Khmer = 42,
			Mongolian = 43,
			Braille = 44,
			Yi = 45,
			Limbu = 46,
			TaiLe = 47,
			NewTaiLue = 48,
			SylotiNagri = 49,
			Kharoshthi = 50,
			Kayahli = 51,
			Usymbol = 52,
			Emoji = 53,
			Glagolitic = 54,
			Lisu = 55,
			Vai = 56,
			NKo = 57,
			Osmanya = 58,
			PhagsPa = 59,
			Gothic = 60,
			Deseret = 61,
			Tifinagh = 62,
			CharRepMax = 63,
			RE10Mode = 1,
			UseAtFont = 2,
			TextFlowMask = 12,
			TextFlowES = 0,
			TextFlowSW = 4,
			TextFlowWN = 8,
			TextFlowNE = 12,
			NoIME = 524288,
			SelfIME = 262144,
			NoUpScroll = 65536,
			NoVpScroll = 262144,
			NoLink = 0,
			ClientLink = 1,
			FriendlyLinkName = 2,
			FriendlyLinkAddress = 3,
			AutoLinkURL = 4,
			AutoLinkEmail = 5,
			AutoLinkPhone = 6,
			AutoLinkPath = 7,
			CompressNone = 0,
			CompressPunctuation = 1,
			CompressPunctuationAndKana = 2,
			CompressMax = 2,
			UnderlinePositionAuto = 0,
			UnderlinePositionBelow = 1,
			UnderlinePositionAbove = 2,
			UnderlinePositionMax = 2,
			FontAlignmentAuto = 0,
			FontAlignmentTop = 1,
			FontAlignmentBaseline = 2,
			FontAlignmentBottom = 3,
			FontAlignmentCenter = 4,
			FontAlignmentMax = 4,
			RubyBelow = 128,
			RubyAlignCenter = 0,
			RubyAlign010 = 1,
			RubyAlign121 = 2,
			RubyAlignLeft = 3,
			RubyAlignRight = 4,
			LimitsDefault = 0,
			LimitsUnderOver = 1,
			LimitsSubSup = 2,
			UpperLimitAsSuperScript = 3,
			LimitsOpposite = 4,
			ShowLLimPlaceHldr = 8,
			ShowULimPlaceHldr = 16,
			DontGrowWithContent = 64,
			GrowWithContent = 128,
			SubSupAlign = 1,
			LimitAlignMask = 3,
			LimitAlignCenter = 0,
			LimitAlignLeft = 1,
			LimitAlignRight = 2,
			ShowDegPlaceHldr = 8,
			AlignDefault = 0,
			AlignMatchAscentDescent = 2,
			MathVariant = 32,
			StyleDefault = 0,
			StyleScriptScriptCramped = 1,
			StyleScriptScript = 2,
			StyleScriptCramped = 3,
			StyleScript = 4,
			StyleTextCramped = 5,
			StyleText = 6,
			StyleDisplayCramped = 7,
			StyleDisplay = 8,
			MathRelSize = 64,
			DecDecSize = 254,
			DecSize = 255,
			IncSize = 65,
			IncIncSize = 66,
			GravityUI = 0,
			GravityBack = 1,
			GravityFore = 2,
			GravityIn = 3,
			GravityOut = 4,
			GravityBackward = 536870912,
			GravityForward = 1073741824,
			AdjustCRLF = 1,
			UseCRLF = 2,
			Textize = 4,
			AllowFinalEOP = 8,
			FoldMathAlpha = 16,
			NoHidden = 32,
			IncludeNumbering = 64,
			TranslateTableCell = 128,
			NoMathZoneBrackets = 256,
			ConvertMathChar = 512,
			NoUCGreekItalic = 1024,
			AllowMathBold = 2048,
			LanguageTag = 4096,
			ConvertRTF = 8192,
			ApplyRtfDocProps = 16384,
			PhantomShow = 1,
			PhantomZeroWidth = 2,
			PhantomZeroAscent = 4,
			PhantomZeroDescent = 8,
			PhantomTransparent = 16,
			PhantomASmash = 5,
			PhantomDSmash = 9,
			PhantomHSmash = 3,
			PhantomSmash = 13,
			PhantomHorz = 12,
			PhantomVert = 2,
			BoxHideTop = 1,
			BoxHideBottom = 2,
			BoxHideLeft = 4,
			BoxHideRight = 8,
			BoxStrikeH = 16,
			BoxStrikeV = 32,
			BoxStrikeTLBR = 64,
			BoxStrikeBLTR = 128,
			BoxAlignCenter = 1,
			SpaceMask = 28,
			SpaceDefault = 0,
			SpaceUnary = 4,
			SpaceBinary = 8,
			SpaceRelational = 12,
			SpaceSkip = 16,
			SpaceOrd = 20,
			SpaceDifferential = 24,
			SizeText = 32,
			SizeScript = 64,
			SizeScriptScript = 96,
			NoBreak = 128,
			TransparentForPositioning = 256,
			TransparentForSpacing = 512,
			StretchCharBelow = 0,
			StretchCharAbove = 1,
			StretchBaseBelow = 2,
			StretchBaseAbove = 3,
			MatrixAlignMask = 3,
			MatrixAlignCenter = 0,
			MatrixAlignTopRow = 1,
			MatrixAlignBottomRow = 3,
			ShowMatPlaceHldr = 8,
			EqArrayLayoutWidth = 1,
			EqArrayAlignMask = 12,
			EqArrayAlignCenter = 0,
			EqArrayAlignTopRow = 4,
			EqArrayAlignBottomRow = 12,
			MathManualBreakMask = 127,
			MathBreakLeft = 125,
			MathBreakCenter = 126,
			MathBreakRight = 127,
			MathEqAlign = 128,
			MathArgShadingStart = 593,
			MathArgShadingEnd = 594,
			MathObjShadingStart = 595,
			MathObjShadingEnd = 596,
			FunctionTypeNone = 0,
			FunctionTypeTakesArg = 1,
			FunctionTypeTakesLim = 2,
			FunctionTypeTakesLim2 = 3,
			FunctionTypeIsLim = 4,
			MathParaAlignDefault = 0,
			MathParaAlignCenterGroup = 1,
			MathParaAlignCenter = 2,
			MathParaAlignLeft = 3,
			MathParaAlignRight = 4,
			MathDispAlignMask = 3,
			MathDispAlignCenterGroup = 0,
			MathDispAlignCenter = 1,
			MathDispAlignLeft = 2,
			MathDispAlignRight = 3,
			MathDispIntUnderOver = 4,
			MathDispFracTeX = 8,
			MathDispNaryGrow = 16,
			MathDocEmptyArgMask = 96,
			MathDocEmptyArgAuto = 0,
			MathDocEmptyArgAlways = 32,
			MathDocEmptyArgNever = 64,
			MathDocSbSpOpUnchanged = 128,
			MathDocDiffMask = 768,
			MathDocDiffDefault = 0,
			MathDocDiffUpright = 256,
			MathDocDiffItalic = 512,
			MathDocDiffOpenItalic = 768,
			MathDispNarySubSup = 1024,
			MathDispDef = 2048,
			MathEnableRtl = 4096,
			MathBrkBinMask = 196608,
			MathBrkBinBefore = 0,
			MathBrkBinAfter = 65536,
			MathBrkBinDup = 131072,
			MathBrkBinSubMask = 786432,
			MathBrkBinSubMM = 0,
			MathBrkBinSubPM = 262144,
			MathBrkBinSubMP = 524288,
			SelRange = 597,
			Hstring = 596,
			FontPropTeXStyle = 828,
			FontPropAlign = 829,
			FontStretch = 830,
			FontStyle = 831,
			FontStyleUpright = 0,
			FontStyleOblique = 1,
			FontStyleItalic = 2,
			FontStretchDefault = 0,
			FontStretchUltraCondensed = 1,
			FontStretchExtraCondensed = 2,
			FontStretchCondensed = 3,
			FontStretchSemiCondensed = 4,
			FontStretchNormal = 5,
			FontStretchSemiExpanded = 6,
			FontStretchExpanded = 7,
			FontStretchExtraExpanded = 8,
			FontStretchUltraExpanded = 9,
			FontWeightDefault = 0,
			FontWeightThin = 100,
			FontWeightExtraLight = 200,
			FontWeightLight = 300,
			FontWeightNormal = 400,
			FontWeightRegular = 400,
			FontWeightMedium = 500,
			FontWeightSemiBold = 600,
			FontWeightBold = 700,
			FontWeightExtraBold = 800,
			FontWeightBlack = 900,
			FontWeightHeavy = 900,
			FontWeightExtraBlack = 950,
			ParaPropMathAlign = 1079,
			DocMathBuild = 128,
			MathLMargin = 129,
			MathRMargin = 130,
			MathWrapIndent = 131,
			MathWrapRight = 132,
			MathPostSpace = 134,
			MathPreSpace = 133,
			MathInterSpace = 135,
			MathIntraSpace = 136,
			CanCopy = 137,
			CanRedo = 138,
			CanUndo = 139,
			UndoLimit = 140,
			DocAutoLink = 141,
			EllipsisMode = 142,
			EllipsisState = 143,
			EllipsisNone = 0,
			EllipsisEnd = 1,
			EllipsisWord = 3,
			EllipsisPresent = 1,
			VTopCell = 1,
			VLowCell = 2,
			HStartCell = 4,
			HContCell = 8,
			RowUpdate = 1,
			RowApplyDefault = 0,
			CellStructureChangeOnly = 1,
			RowHeightActual = 2059,
		}
		[AllowDuplicates]
		public enum OBJECTTYPE : int32
		{
			SimpleText = 0,
			Ruby = 1,
			HorzVert = 2,
			Warichu = 3,
			Eq = 9,
			Math = 10,
			Accent = 10,
			Box = 11,
			BoxedFormula = 12,
			Brackets = 13,
			BracketsWithSeps = 14,
			EquationArray = 15,
			Fraction = 16,
			FunctionApply = 17,
			LeftSubSup = 18,
			LowerLimit = 19,
			Matrix = 20,
			Nary = 21,
			OpChar = 22,
			Overbar = 23,
			Phantom = 24,
			Radical = 25,
			SlashedFraction = 26,
			Stack = 27,
			StretchStack = 28,
			Subscript = 29,
			SubSup = 30,
			Superscript = 31,
			Underbar = 32,
			UpperLimit = 33,
			ObjectMax = 33,
		}
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
		
		public function int32 AutoCorrectProc(uint16 langid, PWSTR pszBefore, PWSTR pszAfter, int32 cchAfter, out int32 pcchReplaced);
		public function int32 EDITWORDBREAKPROCEX(PSTR pchText, int32 cchText, uint8 bCharSet, int32 action);
		public function uint32 EDITSTREAMCALLBACK(uint dwCookie, out uint8 pbBuff, int32 cb, out int32 pcb);
		public function HRESULT PCreateTextServices(ref IUnknown punkOuter, ref ITextHost pITextHost, out IUnknown* ppUnk);
		public function HRESULT PShutdownTextServices(ref IUnknown pTextServices);
		
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
		[CRepr, Packed(4)]
		public struct RICHEDIT_IMAGE_PARAMETERS
		{
			public int32 xWidth;
			public int32 yHeight;
			public int32 Ascent;
			public TEXT_ALIGN_OPTIONS Type;
			public PWSTR pwszAlternateText;
			public IStream* pIStream;
		}
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
		public struct TEXTRANGEA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
		}
		[CRepr, Packed(4)]
		public struct TEXTRANGEW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
		}
		[CRepr, Packed(4)]
		public struct EDITSTREAM
		{
			public uint dwCookie;
			public uint32 dwError;
			public EDITSTREAMCALLBACK pfnCallback;
		}
		[CRepr, Packed(4)]
		public struct FINDTEXTA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
		}
		[CRepr, Packed(4)]
		public struct FINDTEXTW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
		}
		[CRepr, Packed(4)]
		public struct FINDTEXTEXA
		{
			public CHARRANGE chrg;
			public PSTR lpstrText;
			public CHARRANGE chrgText;
		}
		[CRepr, Packed(4)]
		public struct FINDTEXTEXW
		{
			public CHARRANGE chrg;
			public PWSTR lpstrText;
			public CHARRANGE chrgText;
		}
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
		public struct MSGFILTER
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
		}
		[CRepr, Packed(4)]
		public struct REQRESIZE
		{
			public NMHDR nmhdr;
			public RECT rc;
		}
		[CRepr, Packed(4)]
		public struct SELCHANGE
		{
			public NMHDR nmhdr;
			public CHARRANGE chrg;
			public RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltyp;
		}
		[CRepr, Packed(4)]
		public struct _grouptypingchange
		{
			public NMHDR nmhdr;
			public BOOL fGroupTyping;
		}
		[CRepr, Packed(4)]
		public struct CLIPBOARDFORMAT
		{
			public NMHDR nmhdr;
			public uint16 cf;
		}
		[CRepr, Packed(4)]
		public struct GETCONTEXTMENUEX
		{
			public CHARRANGE chrg;
			public uint32 dwFlags;
			public POINT pt;
			public void* pvReserved;
		}
		[CRepr, Packed(4)]
		public struct ENDROPFILES
		{
			public NMHDR nmhdr;
			public HANDLE hDrop;
			public int32 cp;
			public BOOL fProtected;
		}
		[CRepr, Packed(4)]
		public struct ENPROTECTED
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
			public CHARRANGE chrg;
		}
		[CRepr, Packed(4)]
		public struct ENSAVECLIPBOARD
		{
			public NMHDR nmhdr;
			public int32 cObjectCount;
			public int32 cch;
		}
		[CRepr, Packed(4)]
		public struct ENOLEOPFAILED
		{
			public NMHDR nmhdr;
			public int32 iob;
			public int32 lOper;
			public HRESULT hr;
		}
		[CRepr, Packed(4)]
		public struct OBJECTPOSITIONS
		{
			public NMHDR nmhdr;
			public int32 cObjectCount;
			public int32* pcpPositions;
		}
		[CRepr, Packed(4)]
		public struct ENLINK
		{
			public NMHDR nmhdr;
			public uint32 msg;
			public WPARAM wParam;
			public LPARAM lParam;
			public CHARRANGE chrg;
		}
		[CRepr, Packed(4)]
		public struct ENLOWFIRTF
		{
			public NMHDR nmhdr;
			public PSTR szControl;
		}
		[CRepr, Packed(4)]
		public struct ENCORRECTTEXT
		{
			public NMHDR nmhdr;
			public CHARRANGE chrg;
			public RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltyp;
		}
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
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
			
			public HRESULT TxSendMessage(uint32 msg, WPARAM wparam, LPARAM lparam, out LRESULT plresult) mut => VT.TxSendMessage(ref this, msg, wparam, lparam, out plresult);
			public HRESULT TxDraw(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECTL lprcBounds, out RECTL lprcWBounds, out RECT lprcUpdate, int pfnContinue, uint32 dwContinue, int32 lViewId) mut => VT.TxDraw(ref this, dwDrawAspect, lindex, pvAspect, out ptd, hdcDraw, hicTargetDev, out lprcBounds, out lprcWBounds, out lprcUpdate, pfnContinue, dwContinue, lViewId);
			public HRESULT TxGetHScroll(out int32 plMin, out int32 plMax, out int32 plPos, out int32 plPage, out BOOL pfEnabled) mut => VT.TxGetHScroll(ref this, out plMin, out plMax, out plPos, out plPage, out pfEnabled);
			public HRESULT TxGetVScroll(out int32 plMin, out int32 plMax, out int32 plPos, out int32 plPage, out BOOL pfEnabled) mut => VT.TxGetVScroll(ref this, out plMin, out plMax, out plPos, out plPage, out pfEnabled);
			public HRESULT OnTxSetCursor(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECT lprcClient, int32 x, int32 y) mut => VT.OnTxSetCursor(ref this, dwDrawAspect, lindex, pvAspect, out ptd, hdcDraw, hicTargetDev, out lprcClient, x, y);
			public HRESULT TxQueryHitPoint(DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECT lprcClient, int32 x, int32 y, out uint32 pHitResult) mut => VT.TxQueryHitPoint(ref this, dwDrawAspect, lindex, pvAspect, out ptd, hdcDraw, hicTargetDev, out lprcClient, x, y, out pHitResult);
			public HRESULT OnTxInPlaceActivate(out RECT prcClient) mut => VT.OnTxInPlaceActivate(ref this, out prcClient);
			public HRESULT OnTxInPlaceDeactivate() mut => VT.OnTxInPlaceDeactivate(ref this);
			public HRESULT OnTxUIActivate() mut => VT.OnTxUIActivate(ref this);
			public HRESULT OnTxUIDeactivate() mut => VT.OnTxUIDeactivate(ref this);
			public HRESULT TxGetText(out BSTR pbstrText) mut => VT.TxGetText(ref this, out pbstrText);
			public HRESULT TxSetText(PWSTR pszText) mut => VT.TxSetText(ref this, pszText);
			public HRESULT TxGetCurTargetX(out int32 param0) mut => VT.TxGetCurTargetX(ref this, out param0);
			public HRESULT TxGetBaseLinePos(out int32 param0) mut => VT.TxGetBaseLinePos(ref this, out param0);
			public HRESULT TxGetNaturalSize(uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, out DVTARGETDEVICE ptd, uint32 dwMode, in SIZE psizelExtent, out int32 pwidth, out int32 pheight) mut => VT.TxGetNaturalSize(ref this, dwAspect, hdcDraw, hicTargetDev, out ptd, dwMode, psizelExtent, out pwidth, out pheight);
			public HRESULT TxGetDropTarget(out IDropTarget* ppDropTarget) mut => VT.TxGetDropTarget(ref this, out ppDropTarget);
			public HRESULT OnTxPropertyBitsChange(uint32 dwMask, uint32 dwBits) mut => VT.OnTxPropertyBitsChange(ref this, dwMask, dwBits);
			public HRESULT TxGetCachedSize(out uint32 pdwWidth, out uint32 pdwHeight) mut => VT.TxGetCachedSize(ref this, out pdwWidth, out pdwHeight);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, uint32 msg, WPARAM wparam, LPARAM lparam, out LRESULT plresult) TxSendMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECTL lprcBounds, out RECTL lprcWBounds, out RECT lprcUpdate, int pfnContinue, uint32 dwContinue, int32 lViewId) TxDraw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out int32 plMin, out int32 plMax, out int32 plPos, out int32 plPage, out BOOL pfEnabled) TxGetHScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out int32 plMin, out int32 plMax, out int32 plPos, out int32 plPage, out BOOL pfEnabled) TxGetVScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECT lprcClient, int32 x, int32 y) OnTxSetCursor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, DVASPECT dwDrawAspect, int32 lindex, void* pvAspect, out DVTARGETDEVICE ptd, HDC hdcDraw, HDC hicTargetDev, out RECT lprcClient, int32 x, int32 y, out uint32 pHitResult) TxQueryHitPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out RECT prcClient) OnTxInPlaceActivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self) OnTxInPlaceDeactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self) OnTxUIActivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self) OnTxUIDeactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out BSTR pbstrText) TxGetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, PWSTR pszText) TxSetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out int32 param0) TxGetCurTargetX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out int32 param0) TxGetBaseLinePos;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, out DVTARGETDEVICE ptd, uint32 dwMode, in SIZE psizelExtent, out int32 pwidth, out int32 pheight) TxGetNaturalSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out IDropTarget* ppDropTarget) TxGetDropTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, uint32 dwMask, uint32 dwBits) OnTxPropertyBitsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices self, out uint32 pdwWidth, out uint32 pdwHeight) TxGetCachedSize;
			}
		}
		[CRepr]
		public struct ITextHost : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HDC TxGetDC() mut => VT.TxGetDC(ref this);
			public int32 TxReleaseDC(HDC hdc) mut => VT.TxReleaseDC(ref this, hdc);
			public BOOL TxShowScrollBar(int32 fnBar, BOOL fShow) mut => VT.TxShowScrollBar(ref this, fnBar, fShow);
			public BOOL TxEnableScrollBar(SCROLLBAR_CONSTANTS fuSBFlags, ENABLE_SCROLL_BAR_ARROWS fuArrowflags) mut => VT.TxEnableScrollBar(ref this, fuSBFlags, fuArrowflags);
			public BOOL TxSetScrollRange(int32 fnBar, int32 nMinPos, int32 nMaxPos, BOOL fRedraw) mut => VT.TxSetScrollRange(ref this, fnBar, nMinPos, nMaxPos, fRedraw);
			public BOOL TxSetScrollPos(int32 fnBar, int32 nPos, BOOL fRedraw) mut => VT.TxSetScrollPos(ref this, fnBar, nPos, fRedraw);
			public void TxInvalidateRect(out RECT prc, BOOL fMode) mut => VT.TxInvalidateRect(ref this, out prc, fMode);
			public void TxViewChange(BOOL fUpdate) mut => VT.TxViewChange(ref this, fUpdate);
			public BOOL TxCreateCaret(HBITMAP hbmp, int32 xWidth, int32 yHeight) mut => VT.TxCreateCaret(ref this, hbmp, xWidth, yHeight);
			public BOOL TxShowCaret(BOOL fShow) mut => VT.TxShowCaret(ref this, fShow);
			public BOOL TxSetCaretPos(int32 x, int32 y) mut => VT.TxSetCaretPos(ref this, x, y);
			public BOOL TxSetTimer(uint32 idTimer, uint32 uTimeout) mut => VT.TxSetTimer(ref this, idTimer, uTimeout);
			public void TxKillTimer(uint32 idTimer) mut => VT.TxKillTimer(ref this, idTimer);
			public void TxScrollWindowEx(int32 dx, int32 dy, out RECT lprcScroll, out RECT lprcClip, HRGN hrgnUpdate, out RECT lprcUpdate, SHOW_WINDOW_CMD fuScroll) mut => VT.TxScrollWindowEx(ref this, dx, dy, out lprcScroll, out lprcClip, hrgnUpdate, out lprcUpdate, fuScroll);
			public void TxSetCapture(BOOL fCapture) mut => VT.TxSetCapture(ref this, fCapture);
			public void TxSetFocus() mut => VT.TxSetFocus(ref this);
			public void TxSetCursor(HCURSOR hcur, BOOL fText) mut => VT.TxSetCursor(ref this, hcur, fText);
			public BOOL TxScreenToClient(out POINT lppt) mut => VT.TxScreenToClient(ref this, out lppt);
			public BOOL TxClientToScreen(out POINT lppt) mut => VT.TxClientToScreen(ref this, out lppt);
			public HRESULT TxActivate(out int32 plOldState) mut => VT.TxActivate(ref this, out plOldState);
			public HRESULT TxDeactivate(int32 lNewState) mut => VT.TxDeactivate(ref this, lNewState);
			public HRESULT TxGetClientRect(out RECT prc) mut => VT.TxGetClientRect(ref this, out prc);
			public HRESULT TxGetViewInset(out RECT prc) mut => VT.TxGetViewInset(ref this, out prc);
			public HRESULT TxGetCharFormat(in CHARFORMATW* ppCF) mut => VT.TxGetCharFormat(ref this, ppCF);
			public HRESULT TxGetParaFormat(in PARAFORMAT* ppPF) mut => VT.TxGetParaFormat(ref this, ppPF);
			public uint32 TxGetSysColor(int32 nIndex) mut => VT.TxGetSysColor(ref this, nIndex);
			public HRESULT TxGetBackStyle(out TXTBACKSTYLE pstyle) mut => VT.TxGetBackStyle(ref this, out pstyle);
			public HRESULT TxGetMaxLength(out uint32 plength) mut => VT.TxGetMaxLength(ref this, out plength);
			public HRESULT TxGetScrollBars(out uint32 pdwScrollBar) mut => VT.TxGetScrollBars(ref this, out pdwScrollBar);
			public HRESULT TxGetPasswordChar(out int8 pch) mut => VT.TxGetPasswordChar(ref this, out pch);
			public HRESULT TxGetAcceleratorPos(out int32 pcp) mut => VT.TxGetAcceleratorPos(ref this, out pcp);
			public HRESULT TxGetExtent(out SIZE lpExtent) mut => VT.TxGetExtent(ref this, out lpExtent);
			public HRESULT OnTxCharFormatChange(in CHARFORMATW pCF) mut => VT.OnTxCharFormatChange(ref this, pCF);
			public HRESULT OnTxParaFormatChange(in PARAFORMAT pPF) mut => VT.OnTxParaFormatChange(ref this, pPF);
			public HRESULT TxGetPropertyBits(uint32 dwMask, out uint32 pdwBits) mut => VT.TxGetPropertyBits(ref this, dwMask, out pdwBits);
			public HRESULT TxNotify(uint32 iNotify, void* pv) mut => VT.TxNotify(ref this, iNotify, pv);
			public HIMC TxImmGetContext() mut => VT.TxImmGetContext(ref this);
			public void TxImmReleaseContext(HIMC himc) mut => VT.TxImmReleaseContext(ref this, himc);
			public HRESULT TxGetSelectionBarWidth(out int32 lSelBarWidth) mut => VT.TxGetSelectionBarWidth(ref this, out lSelBarWidth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HDC(ref ITextHost self) TxGetDC;
				public new function [CallingConvention(.Stdcall)] int32(ref ITextHost self, HDC hdc) TxReleaseDC;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, int32 fnBar, BOOL fShow) TxShowScrollBar;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, SCROLLBAR_CONSTANTS fuSBFlags, ENABLE_SCROLL_BAR_ARROWS fuArrowflags) TxEnableScrollBar;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, int32 fnBar, int32 nMinPos, int32 nMaxPos, BOOL fRedraw) TxSetScrollRange;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, int32 fnBar, int32 nPos, BOOL fRedraw) TxSetScrollPos;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, out RECT prc, BOOL fMode) TxInvalidateRect;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, BOOL fUpdate) TxViewChange;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, HBITMAP hbmp, int32 xWidth, int32 yHeight) TxCreateCaret;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, BOOL fShow) TxShowCaret;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, int32 x, int32 y) TxSetCaretPos;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, uint32 idTimer, uint32 uTimeout) TxSetTimer;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, uint32 idTimer) TxKillTimer;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, int32 dx, int32 dy, out RECT lprcScroll, out RECT lprcClip, HRGN hrgnUpdate, out RECT lprcUpdate, SHOW_WINDOW_CMD fuScroll) TxScrollWindowEx;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, BOOL fCapture) TxSetCapture;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self) TxSetFocus;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, HCURSOR hcur, BOOL fText) TxSetCursor;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, out POINT lppt) TxScreenToClient;
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost self, out POINT lppt) TxClientToScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out int32 plOldState) TxActivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, int32 lNewState) TxDeactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out RECT prc) TxGetClientRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out RECT prc) TxGetViewInset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, in CHARFORMATW* ppCF) TxGetCharFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, in PARAFORMAT* ppPF) TxGetParaFormat;
				public new function [CallingConvention(.Stdcall)] uint32(ref ITextHost self, int32 nIndex) TxGetSysColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out TXTBACKSTYLE pstyle) TxGetBackStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out uint32 plength) TxGetMaxLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out uint32 pdwScrollBar) TxGetScrollBars;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out int8 pch) TxGetPasswordChar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out int32 pcp) TxGetAcceleratorPos;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out SIZE lpExtent) TxGetExtent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, in CHARFORMATW pCF) OnTxCharFormatChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, in PARAFORMAT pPF) OnTxParaFormatChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, uint32 dwMask, out uint32 pdwBits) TxGetPropertyBits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, uint32 iNotify, void* pv) TxNotify;
				public new function [CallingConvention(.Stdcall)] HIMC(ref ITextHost self) TxImmGetContext;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost self, HIMC himc) TxImmReleaseContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost self, out int32 lSelBarWidth) TxGetSelectionBarWidth;
			}
		}
		[CRepr]
		public struct IRicheditUiaOverrides : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyOverrideValue(int32 propertyId, out VARIANT pRetValue) mut => VT.GetPropertyOverrideValue(ref this, propertyId, out pRetValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRicheditUiaOverrides self, int32 propertyId, out VARIANT pRetValue) GetPropertyOverrideValue;
			}
		}
		[CRepr]
		public struct ITextHost2 : ITextHost
		{
			public new VTable* VT { get => (.)vt; }
			
			public BOOL TxIsDoubleClickPending() mut => VT.TxIsDoubleClickPending(ref this);
			public HRESULT TxGetWindow(out HWND phwnd) mut => VT.TxGetWindow(ref this, out phwnd);
			public HRESULT TxSetForegroundWindow() mut => VT.TxSetForegroundWindow(ref this);
			public HPALETTE TxGetPalette() mut => VT.TxGetPalette(ref this);
			public HRESULT TxGetEastAsianFlags(out int32 pFlags) mut => VT.TxGetEastAsianFlags(ref this, out pFlags);
			public HCURSOR TxSetCursor2(HCURSOR hcur, BOOL bText) mut => VT.TxSetCursor2(ref this, hcur, bText);
			public void TxFreeTextServicesNotification() mut => VT.TxFreeTextServicesNotification(ref this);
			public HRESULT TxGetEditStyle(uint32 dwItem, out uint32 pdwData) mut => VT.TxGetEditStyle(ref this, dwItem, out pdwData);
			public HRESULT TxGetWindowStyles(out uint32 pdwStyle, out uint32 pdwExStyle) mut => VT.TxGetWindowStyles(ref this, out pdwStyle, out pdwExStyle);
			public HRESULT TxShowDropCaret(BOOL fShow, HDC hdc, out RECT prc) mut => VT.TxShowDropCaret(ref this, fShow, hdc, out prc);
			public HRESULT TxDestroyCaret() mut => VT.TxDestroyCaret(ref this);
			public HRESULT TxGetHorzExtent(out int32 plHorzExtent) mut => VT.TxGetHorzExtent(ref this, out plHorzExtent);

			[CRepr]
			public struct VTable : ITextHost.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref ITextHost2 self) TxIsDoubleClickPending;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, out HWND phwnd) TxGetWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self) TxSetForegroundWindow;
				public new function [CallingConvention(.Stdcall)] HPALETTE(ref ITextHost2 self) TxGetPalette;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, out int32 pFlags) TxGetEastAsianFlags;
				public new function [CallingConvention(.Stdcall)] HCURSOR(ref ITextHost2 self, HCURSOR hcur, BOOL bText) TxSetCursor2;
				public new function [CallingConvention(.Stdcall)] void(ref ITextHost2 self) TxFreeTextServicesNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, uint32 dwItem, out uint32 pdwData) TxGetEditStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, out uint32 pdwStyle, out uint32 pdwExStyle) TxGetWindowStyles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, BOOL fShow, HDC hdc, out RECT prc) TxShowDropCaret;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self) TxDestroyCaret;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextHost2 self, out int32 plHorzExtent) TxGetHorzExtent;
			}
		}
		[CRepr]
		public struct ITextServices2 : ITextServices
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TxGetNaturalSize2(uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, out DVTARGETDEVICE ptd, uint32 dwMode, in SIZE psizelExtent, out int32 pwidth, out int32 pheight, out int32 pascent) mut => VT.TxGetNaturalSize2(ref this, dwAspect, hdcDraw, hicTargetDev, out ptd, dwMode, psizelExtent, out pwidth, out pheight, out pascent);
			public HRESULT TxDrawD2D(ref ID2D1RenderTarget pRenderTarget, out RECTL lprcBounds, out RECT lprcUpdate, int32 lViewId) mut => VT.TxDrawD2D(ref this, ref pRenderTarget, out lprcBounds, out lprcUpdate, lViewId);

			[CRepr]
			public struct VTable : ITextServices.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices2 self, uint32 dwAspect, HDC hdcDraw, HDC hicTargetDev, out DVTARGETDEVICE ptd, uint32 dwMode, in SIZE psizelExtent, out int32 pwidth, out int32 pheight, out int32 pascent) TxGetNaturalSize2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextServices2 self, ref ID2D1RenderTarget pRenderTarget, out RECTL lprcBounds, out RECT lprcUpdate, int32 lViewId) TxDrawD2D;
			}
		}
		[CRepr]
		public struct IRichEditOle : IUnknown
		{
			public const new Guid IID = .(0x00020d00, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientSite(out IOleClientSite* lplpolesite) mut => VT.GetClientSite(ref this, out lplpolesite);
			public int32 GetObjectCount() mut => VT.GetObjectCount(ref this);
			public int32 GetLinkCount() mut => VT.GetLinkCount(ref this);
			public HRESULT GetObject(int32 iob, out REOBJECT lpreobject, RICH_EDIT_GET_OBJECT_FLAGS dwFlags) mut => VT.GetObject(ref this, iob, out lpreobject, dwFlags);
			public HRESULT InsertObject(out REOBJECT lpreobject) mut => VT.InsertObject(ref this, out lpreobject);
			public HRESULT ConvertObject(int32 iob, in Guid rclsidNew, PSTR lpstrUserTypeNew) mut => VT.ConvertObject(ref this, iob, rclsidNew, lpstrUserTypeNew);
			public HRESULT ActivateAs(in Guid rclsid, in Guid rclsidAs) mut => VT.ActivateAs(ref this, rclsid, rclsidAs);
			public HRESULT SetHostNames(PSTR lpstrContainerApp, PSTR lpstrContainerObj) mut => VT.SetHostNames(ref this, lpstrContainerApp, lpstrContainerObj);
			public HRESULT SetLinkAvailable(int32 iob, BOOL fAvailable) mut => VT.SetLinkAvailable(ref this, iob, fAvailable);
			public HRESULT SetDvaspect(int32 iob, uint32 dvaspect) mut => VT.SetDvaspect(ref this, iob, dvaspect);
			public HRESULT HandsOffStorage(int32 iob) mut => VT.HandsOffStorage(ref this, iob);
			public HRESULT SaveCompleted(int32 iob, ref IStorage lpstg) mut => VT.SaveCompleted(ref this, iob, ref lpstg);
			public HRESULT InPlaceDeactivate() mut => VT.InPlaceDeactivate(ref this);
			public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut => VT.ContextSensitiveHelp(ref this, fEnterMode);
			public HRESULT GetClipboardData(out CHARRANGE lpchrg, uint32 reco, out IDataObject* lplpdataobj) mut => VT.GetClipboardData(ref this, out lpchrg, reco, out lplpdataobj);
			public HRESULT ImportDataObject(ref IDataObject lpdataobj, uint16 cf, int hMetaPict) mut => VT.ImportDataObject(ref this, ref lpdataobj, cf, hMetaPict);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, out IOleClientSite* lplpolesite) GetClientSite;
				public new function [CallingConvention(.Stdcall)] int32(ref IRichEditOle self) GetObjectCount;
				public new function [CallingConvention(.Stdcall)] int32(ref IRichEditOle self) GetLinkCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob, out REOBJECT lpreobject, RICH_EDIT_GET_OBJECT_FLAGS dwFlags) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, out REOBJECT lpreobject) InsertObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob, in Guid rclsidNew, PSTR lpstrUserTypeNew) ConvertObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, in Guid rclsid, in Guid rclsidAs) ActivateAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, PSTR lpstrContainerApp, PSTR lpstrContainerObj) SetHostNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob, BOOL fAvailable) SetLinkAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob, uint32 dvaspect) SetDvaspect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob) HandsOffStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, int32 iob, ref IStorage lpstg) SaveCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self) InPlaceDeactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, BOOL fEnterMode) ContextSensitiveHelp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, out CHARRANGE lpchrg, uint32 reco, out IDataObject* lplpdataobj) GetClipboardData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOle self, ref IDataObject lpdataobj, uint16 cf, int hMetaPict) ImportDataObject;
			}
		}
		[CRepr]
		public struct IRichEditOleCallback : IUnknown
		{
			public const new Guid IID = .(0x00020d03, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNewStorage(out IStorage* lplpstg) mut => VT.GetNewStorage(ref this, out lplpstg);
			public HRESULT GetInPlaceContext(out IOleInPlaceFrame* lplpFrame, out IOleInPlaceUIWindow* lplpDoc, out OIFI lpFrameInfo) mut => VT.GetInPlaceContext(ref this, out lplpFrame, out lplpDoc, out lpFrameInfo);
			public HRESULT ShowContainerUI(BOOL fShow) mut => VT.ShowContainerUI(ref this, fShow);
			public HRESULT QueryInsertObject(out Guid lpclsid, ref IStorage lpstg, int32 cp) mut => VT.QueryInsertObject(ref this, out lpclsid, ref lpstg, cp);
			public HRESULT DeleteObject(ref IOleObject lpoleobj) mut => VT.DeleteObject(ref this, ref lpoleobj);
			public HRESULT QueryAcceptData(ref IDataObject lpdataobj, out uint16 lpcfFormat, uint32 reco, BOOL fReally, int hMetaPict) mut => VT.QueryAcceptData(ref this, ref lpdataobj, out lpcfFormat, reco, fReally, hMetaPict);
			public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut => VT.ContextSensitiveHelp(ref this, fEnterMode);
			public HRESULT GetClipboardData(out CHARRANGE lpchrg, uint32 reco, out IDataObject* lplpdataobj) mut => VT.GetClipboardData(ref this, out lpchrg, reco, out lplpdataobj);
			public HRESULT GetDragDropEffect(BOOL fDrag, uint32 grfKeyState, out uint32 pdwEffect) mut => VT.GetDragDropEffect(ref this, fDrag, grfKeyState, out pdwEffect);
			public HRESULT GetContextMenu(RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltype, ref IOleObject lpoleobj, out CHARRANGE lpchrg, out HMENU lphmenu) mut => VT.GetContextMenu(ref this, seltype, ref lpoleobj, out lpchrg, out lphmenu);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, out IStorage* lplpstg) GetNewStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, out IOleInPlaceFrame* lplpFrame, out IOleInPlaceUIWindow* lplpDoc, out OIFI lpFrameInfo) GetInPlaceContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, BOOL fShow) ShowContainerUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, out Guid lpclsid, ref IStorage lpstg, int32 cp) QueryInsertObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, ref IOleObject lpoleobj) DeleteObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, ref IDataObject lpdataobj, out uint16 lpcfFormat, uint32 reco, BOOL fReally, int hMetaPict) QueryAcceptData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, BOOL fEnterMode) ContextSensitiveHelp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, out CHARRANGE lpchrg, uint32 reco, out IDataObject* lplpdataobj) GetClipboardData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, BOOL fDrag, uint32 grfKeyState, out uint32 pdwEffect) GetDragDropEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditOleCallback self, RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE seltype, ref IOleObject lpoleobj, out CHARRANGE lpchrg, out HMENU lphmenu) GetContextMenu;
			}
		}
		[CRepr]
		public struct ITextDocument : IDispatch
		{
			public const new Guid IID = .(0x8cc497c0, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(BSTR* pName) mut => VT.GetName(ref this, pName);
			public HRESULT GetSelection(ITextSelection** ppSel) mut => VT.GetSelection(ref this, ppSel);
			public HRESULT GetStoryCount(out int32 pCount) mut => VT.GetStoryCount(ref this, out pCount);
			public HRESULT GetStoryRanges(ITextStoryRanges** ppStories) mut => VT.GetStoryRanges(ref this, ppStories);
			public HRESULT GetSaved(out int32 pValue) mut => VT.GetSaved(ref this, out pValue);
			public HRESULT SetSaved(tomConstants Value) mut => VT.SetSaved(ref this, Value);
			public HRESULT GetDefaultTabStop(out float pValue) mut => VT.GetDefaultTabStop(ref this, out pValue);
			public HRESULT SetDefaultTabStop(float Value) mut => VT.SetDefaultTabStop(ref this, Value);
			public HRESULT New() mut => VT.New(ref this);
			public HRESULT Open(ref VARIANT pVar, int32 Flags, int32 CodePage) mut => VT.Open(ref this, ref pVar, Flags, CodePage);
			public HRESULT Save(ref VARIANT pVar, int32 Flags, int32 CodePage) mut => VT.Save(ref this, ref pVar, Flags, CodePage);
			public HRESULT Freeze(out int32 pCount) mut => VT.Freeze(ref this, out pCount);
			public HRESULT Unfreeze(out int32 pCount) mut => VT.Unfreeze(ref this, out pCount);
			public HRESULT BeginEditCollection() mut => VT.BeginEditCollection(ref this);
			public HRESULT EndEditCollection() mut => VT.EndEditCollection(ref this);
			public HRESULT Undo(int32 Count, out int32 pCount) mut => VT.Undo(ref this, Count, out pCount);
			public HRESULT Redo(int32 Count, out int32 pCount) mut => VT.Redo(ref this, Count, out pCount);
			public HRESULT Range(int32 cpActive, int32 cpAnchor, ITextRange** ppRange) mut => VT.Range(ref this, cpActive, cpAnchor, ppRange);
			public HRESULT RangeFromPoint(int32 x, int32 y, ITextRange** ppRange) mut => VT.RangeFromPoint(ref this, x, y, ppRange);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, BSTR* pName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, ITextSelection** ppSel) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, out int32 pCount) GetStoryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, ITextStoryRanges** ppStories) GetStoryRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, out int32 pValue) GetSaved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, tomConstants Value) SetSaved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, out float pValue) GetDefaultTabStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, float Value) SetDefaultTabStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self) New;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, ref VARIANT pVar, int32 Flags, int32 CodePage) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, ref VARIANT pVar, int32 Flags, int32 CodePage) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, out int32 pCount) Freeze;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, out int32 pCount) Unfreeze;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self) BeginEditCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self) EndEditCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, int32 Count, out int32 pCount) Undo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, int32 Count, out int32 pCount) Redo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, int32 cpActive, int32 cpAnchor, ITextRange** ppRange) Range;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument self, int32 x, int32 y, ITextRange** ppRange) RangeFromPoint;
			}
		}
		[CRepr]
		public struct ITextRange : IDispatch
		{
			public const new Guid IID = .(0x8cc497c2, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(BSTR* pbstr) mut => VT.GetText(ref this, pbstr);
			public HRESULT SetText(BSTR bstr) mut => VT.SetText(ref this, bstr);
			public HRESULT GetChar(out int32 pChar) mut => VT.GetChar(ref this, out pChar);
			public HRESULT SetChar(int32 Char) mut => VT.SetChar(ref this, Char);
			public HRESULT GetDuplicate(ITextRange** ppRange) mut => VT.GetDuplicate(ref this, ppRange);
			public HRESULT GetFormattedText(ITextRange** ppRange) mut => VT.GetFormattedText(ref this, ppRange);
			public HRESULT SetFormattedText(ITextRange* pRange) mut => VT.SetFormattedText(ref this, pRange);
			public HRESULT GetStart(out int32 pcpFirst) mut => VT.GetStart(ref this, out pcpFirst);
			public HRESULT SetStart(int32 cpFirst) mut => VT.SetStart(ref this, cpFirst);
			public HRESULT GetEnd(out int32 pcpLim) mut => VT.GetEnd(ref this, out pcpLim);
			public HRESULT SetEnd(int32 cpLim) mut => VT.SetEnd(ref this, cpLim);
			public HRESULT GetFont(ITextFont** ppFont) mut => VT.GetFont(ref this, ppFont);
			public HRESULT SetFont(ITextFont* pFont) mut => VT.SetFont(ref this, pFont);
			public HRESULT GetPara(ITextPara** ppPara) mut => VT.GetPara(ref this, ppPara);
			public HRESULT SetPara(ITextPara* pPara) mut => VT.SetPara(ref this, pPara);
			public HRESULT GetStoryLength(out int32 pCount) mut => VT.GetStoryLength(ref this, out pCount);
			public HRESULT GetStoryType(out int32 pValue) mut => VT.GetStoryType(ref this, out pValue);
			public HRESULT Collapse(int32 bStart) mut => VT.Collapse(ref this, bStart);
			public HRESULT Expand(int32 Unit, out int32 pDelta) mut => VT.Expand(ref this, Unit, out pDelta);
			public HRESULT GetIndex(int32 Unit, out int32 pIndex) mut => VT.GetIndex(ref this, Unit, out pIndex);
			public HRESULT SetIndex(int32 Unit, int32 Index, int32 Extend) mut => VT.SetIndex(ref this, Unit, Index, Extend);
			public HRESULT SetRange(int32 cpAnchor, int32 cpActive) mut => VT.SetRange(ref this, cpAnchor, cpActive);
			public HRESULT InRange(ITextRange* pRange, out int32 pValue) mut => VT.InRange(ref this, pRange, out pValue);
			public HRESULT InStory(ITextRange* pRange, out int32 pValue) mut => VT.InStory(ref this, pRange, out pValue);
			public HRESULT IsEqual(ITextRange* pRange, out int32 pValue) mut => VT.IsEqual(ref this, pRange, out pValue);
			public HRESULT Select() mut => VT.Select(ref this);
			public HRESULT StartOf(int32 Unit, int32 Extend, out int32 pDelta) mut => VT.StartOf(ref this, Unit, Extend, out pDelta);
			public HRESULT EndOf(int32 Unit, int32 Extend, out int32 pDelta) mut => VT.EndOf(ref this, Unit, Extend, out pDelta);
			public HRESULT Move(int32 Unit, int32 Count, out int32 pDelta) mut => VT.Move(ref this, Unit, Count, out pDelta);
			public HRESULT MoveStart(int32 Unit, int32 Count, out int32 pDelta) mut => VT.MoveStart(ref this, Unit, Count, out pDelta);
			public HRESULT MoveEnd(int32 Unit, int32 Count, out int32 pDelta) mut => VT.MoveEnd(ref this, Unit, Count, out pDelta);
			public HRESULT MoveWhile(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveWhile(ref this, ref Cset, Count, out pDelta);
			public HRESULT MoveStartWhile(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveStartWhile(ref this, ref Cset, Count, out pDelta);
			public HRESULT MoveEndWhile(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveEndWhile(ref this, ref Cset, Count, out pDelta);
			public HRESULT MoveUntil(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveUntil(ref this, ref Cset, Count, out pDelta);
			public HRESULT MoveStartUntil(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveStartUntil(ref this, ref Cset, Count, out pDelta);
			public HRESULT MoveEndUntil(ref VARIANT Cset, int32 Count, out int32 pDelta) mut => VT.MoveEndUntil(ref this, ref Cset, Count, out pDelta);
			public HRESULT FindText(BSTR bstr, int32 Count, int32 Flags, out int32 pLength) mut => VT.FindText(ref this, bstr, Count, Flags, out pLength);
			public HRESULT FindTextStart(BSTR bstr, int32 Count, int32 Flags, out int32 pLength) mut => VT.FindTextStart(ref this, bstr, Count, Flags, out pLength);
			public HRESULT FindTextEnd(BSTR bstr, int32 Count, int32 Flags, out int32 pLength) mut => VT.FindTextEnd(ref this, bstr, Count, Flags, out pLength);
			public HRESULT Delete(int32 Unit, int32 Count, out int32 pDelta) mut => VT.Delete(ref this, Unit, Count, out pDelta);
			public HRESULT Cut(out VARIANT pVar) mut => VT.Cut(ref this, out pVar);
			public HRESULT Copy(out VARIANT pVar) mut => VT.Copy(ref this, out pVar);
			public HRESULT Paste(ref VARIANT pVar, int32 Format) mut => VT.Paste(ref this, ref pVar, Format);
			public HRESULT CanPaste(ref VARIANT pVar, int32 Format, out int32 pValue) mut => VT.CanPaste(ref this, ref pVar, Format, out pValue);
			public HRESULT CanEdit(out int32 pValue) mut => VT.CanEdit(ref this, out pValue);
			public HRESULT ChangeCase(int32 Type) mut => VT.ChangeCase(ref this, Type);
			public HRESULT GetPoint(int32 Type, out int32 px, out int32 py) mut => VT.GetPoint(ref this, Type, out px, out py);
			public HRESULT SetPoint(int32 x, int32 y, int32 Type, int32 Extend) mut => VT.SetPoint(ref this, x, y, Type, Extend);
			public HRESULT ScrollIntoView(int32 Value) mut => VT.ScrollIntoView(ref this, Value);
			public HRESULT GetEmbeddedObject(IUnknown** ppObject) mut => VT.GetEmbeddedObject(ref this, ppObject);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, BSTR* pbstr) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, BSTR bstr) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pChar) GetChar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Char) SetChar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange** ppRange) GetDuplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange** ppRange) GetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange* pRange) SetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pcpFirst) GetStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 cpFirst) SetStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pcpLim) GetEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 cpLim) SetEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextFont** ppFont) GetFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextFont* pFont) SetFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextPara** ppPara) GetPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextPara* pPara) SetPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pCount) GetStoryLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pValue) GetStoryType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 bStart) Collapse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, out int32 pDelta) Expand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, out int32 pIndex) GetIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Index, int32 Extend) SetIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 cpAnchor, int32 cpActive) SetRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange* pRange, out int32 pValue) InRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange* pRange, out int32 pValue) InStory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ITextRange* pRange, out int32 pValue) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Extend, out int32 pDelta) StartOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Extend, out int32 pDelta) EndOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Count, out int32 pDelta) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Count, out int32 pDelta) MoveStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Count, out int32 pDelta) MoveEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveWhile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveStartWhile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveEndWhile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveUntil;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveStartUntil;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT Cset, int32 Count, out int32 pDelta) MoveEndUntil;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, BSTR bstr, int32 Count, int32 Flags, out int32 pLength) FindText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, BSTR bstr, int32 Count, int32 Flags, out int32 pLength) FindTextStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, BSTR bstr, int32 Count, int32 Flags, out int32 pLength) FindTextEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Unit, int32 Count, out int32 pDelta) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out VARIANT pVar) Cut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out VARIANT pVar) Copy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT pVar, int32 Format) Paste;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, ref VARIANT pVar, int32 Format, out int32 pValue) CanPaste;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, out int32 pValue) CanEdit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Type) ChangeCase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Type, out int32 px, out int32 py) GetPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 x, int32 y, int32 Type, int32 Extend) SetPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, int32 Value) ScrollIntoView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange self, IUnknown** ppObject) GetEmbeddedObject;
			}
		}
		[CRepr]
		public struct ITextSelection : ITextRange
		{
			public const new Guid IID = .(0x8cc497c1, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetFlags(out int32 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
			public HRESULT SetFlags(int32 Flags) mut => VT.SetFlags(ref this, Flags);
			public HRESULT ComGetType(out int32 pType) mut => VT.ComGetType(ref this, out pType);
			public HRESULT MoveLeft(int32 Unit, int32 Count, int32 Extend, out int32 pDelta) mut => VT.MoveLeft(ref this, Unit, Count, Extend, out pDelta);
			public HRESULT MoveRight(int32 Unit, int32 Count, int32 Extend, out int32 pDelta) mut => VT.MoveRight(ref this, Unit, Count, Extend, out pDelta);
			public HRESULT MoveUp(int32 Unit, int32 Count, int32 Extend, out int32 pDelta) mut => VT.MoveUp(ref this, Unit, Count, Extend, out pDelta);
			public HRESULT MoveDown(int32 Unit, int32 Count, int32 Extend, out int32 pDelta) mut => VT.MoveDown(ref this, Unit, Count, Extend, out pDelta);
			public HRESULT HomeKey(tomConstants Unit, int32 Extend, out int32 pDelta) mut => VT.HomeKey(ref this, Unit, Extend, out pDelta);
			public HRESULT EndKey(int32 Unit, int32 Extend, out int32 pDelta) mut => VT.EndKey(ref this, Unit, Extend, out pDelta);
			public HRESULT TypeText(BSTR bstr) mut => VT.TypeText(ref this, bstr);

			[CRepr]
			public struct VTable : ITextRange.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, out int32 pFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Flags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, out int32 pType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Unit, int32 Count, int32 Extend, out int32 pDelta) MoveLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Unit, int32 Count, int32 Extend, out int32 pDelta) MoveRight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Unit, int32 Count, int32 Extend, out int32 pDelta) MoveUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Unit, int32 Count, int32 Extend, out int32 pDelta) MoveDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, tomConstants Unit, int32 Extend, out int32 pDelta) HomeKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, int32 Unit, int32 Extend, out int32 pDelta) EndKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextSelection self, BSTR bstr) TypeText;
			}
		}
		[CRepr]
		public struct ITextFont : IDispatch
		{
			public const new Guid IID = .(0x8cc497c3, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDuplicate(ITextFont** ppFont) mut => VT.GetDuplicate(ref this, ppFont);
			public HRESULT SetDuplicate(ITextFont* pFont) mut => VT.SetDuplicate(ref this, pFont);
			public HRESULT CanChange(out int32 pValue) mut => VT.CanChange(ref this, out pValue);
			public HRESULT IsEqual(ITextFont* pFont, out int32 pValue) mut => VT.IsEqual(ref this, pFont, out pValue);
			public HRESULT Reset(tomConstants Value) mut => VT.Reset(ref this, Value);
			public HRESULT GetStyle(out int32 pValue) mut => VT.GetStyle(ref this, out pValue);
			public HRESULT SetStyle(int32 Value) mut => VT.SetStyle(ref this, Value);
			public HRESULT GetAllCaps(out int32 pValue) mut => VT.GetAllCaps(ref this, out pValue);
			public HRESULT SetAllCaps(int32 Value) mut => VT.SetAllCaps(ref this, Value);
			public HRESULT GetAnimation(out int32 pValue) mut => VT.GetAnimation(ref this, out pValue);
			public HRESULT SetAnimation(int32 Value) mut => VT.SetAnimation(ref this, Value);
			public HRESULT GetBackColor(out int32 pValue) mut => VT.GetBackColor(ref this, out pValue);
			public HRESULT SetBackColor(int32 Value) mut => VT.SetBackColor(ref this, Value);
			public HRESULT GetBold(out int32 pValue) mut => VT.GetBold(ref this, out pValue);
			public HRESULT SetBold(int32 Value) mut => VT.SetBold(ref this, Value);
			public HRESULT GetEmboss(out int32 pValue) mut => VT.GetEmboss(ref this, out pValue);
			public HRESULT SetEmboss(int32 Value) mut => VT.SetEmboss(ref this, Value);
			public HRESULT GetForeColor(out int32 pValue) mut => VT.GetForeColor(ref this, out pValue);
			public HRESULT SetForeColor(int32 Value) mut => VT.SetForeColor(ref this, Value);
			public HRESULT GetHidden(out int32 pValue) mut => VT.GetHidden(ref this, out pValue);
			public HRESULT SetHidden(int32 Value) mut => VT.SetHidden(ref this, Value);
			public HRESULT GetEngrave(out int32 pValue) mut => VT.GetEngrave(ref this, out pValue);
			public HRESULT SetEngrave(int32 Value) mut => VT.SetEngrave(ref this, Value);
			public HRESULT GetItalic(out int32 pValue) mut => VT.GetItalic(ref this, out pValue);
			public HRESULT SetItalic(int32 Value) mut => VT.SetItalic(ref this, Value);
			public HRESULT GetKerning(out float pValue) mut => VT.GetKerning(ref this, out pValue);
			public HRESULT SetKerning(float Value) mut => VT.SetKerning(ref this, Value);
			public HRESULT GetLanguageID(out int32 pValue) mut => VT.GetLanguageID(ref this, out pValue);
			public HRESULT SetLanguageID(int32 Value) mut => VT.SetLanguageID(ref this, Value);
			public HRESULT GetName(BSTR* pbstr) mut => VT.GetName(ref this, pbstr);
			public HRESULT SetName(BSTR bstr) mut => VT.SetName(ref this, bstr);
			public HRESULT GetOutline(out int32 pValue) mut => VT.GetOutline(ref this, out pValue);
			public HRESULT SetOutline(int32 Value) mut => VT.SetOutline(ref this, Value);
			public HRESULT GetPosition(out float pValue) mut => VT.GetPosition(ref this, out pValue);
			public HRESULT SetPosition(float Value) mut => VT.SetPosition(ref this, Value);
			public HRESULT GetProtected(out int32 pValue) mut => VT.GetProtected(ref this, out pValue);
			public HRESULT SetProtected(int32 Value) mut => VT.SetProtected(ref this, Value);
			public HRESULT GetShadow(out int32 pValue) mut => VT.GetShadow(ref this, out pValue);
			public HRESULT SetShadow(int32 Value) mut => VT.SetShadow(ref this, Value);
			public HRESULT GetSize(out float pValue) mut => VT.GetSize(ref this, out pValue);
			public HRESULT SetSize(float Value) mut => VT.SetSize(ref this, Value);
			public HRESULT GetSmallCaps(out int32 pValue) mut => VT.GetSmallCaps(ref this, out pValue);
			public HRESULT SetSmallCaps(int32 Value) mut => VT.SetSmallCaps(ref this, Value);
			public HRESULT GetSpacing(out float pValue) mut => VT.GetSpacing(ref this, out pValue);
			public HRESULT SetSpacing(float Value) mut => VT.SetSpacing(ref this, Value);
			public HRESULT GetStrikeThrough(out int32 pValue) mut => VT.GetStrikeThrough(ref this, out pValue);
			public HRESULT SetStrikeThrough(int32 Value) mut => VT.SetStrikeThrough(ref this, Value);
			public HRESULT GetSubscript(out int32 pValue) mut => VT.GetSubscript(ref this, out pValue);
			public HRESULT SetSubscript(int32 Value) mut => VT.SetSubscript(ref this, Value);
			public HRESULT GetSuperscript(out int32 pValue) mut => VT.GetSuperscript(ref this, out pValue);
			public HRESULT SetSuperscript(int32 Value) mut => VT.SetSuperscript(ref this, Value);
			public HRESULT GetUnderline(out int32 pValue) mut => VT.GetUnderline(ref this, out pValue);
			public HRESULT SetUnderline(int32 Value) mut => VT.SetUnderline(ref this, Value);
			public HRESULT GetWeight(out int32 pValue) mut => VT.GetWeight(ref this, out pValue);
			public HRESULT SetWeight(int32 Value) mut => VT.SetWeight(ref this, Value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, ITextFont** ppFont) GetDuplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, ITextFont* pFont) SetDuplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) CanChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, ITextFont* pFont, out int32 pValue) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, tomConstants Value) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetAllCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetAllCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetAnimation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetAnimation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetBackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetBackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetBold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetBold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetEmboss;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetEmboss;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetHidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetHidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetEngrave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetEngrave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetItalic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetItalic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out float pValue) GetKerning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, float Value) SetKerning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetLanguageID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetLanguageID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, BSTR* pbstr) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, BSTR bstr) SetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetOutline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetOutline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out float pValue) GetPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, float Value) SetPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetProtected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetProtected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetShadow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetShadow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out float pValue) GetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, float Value) SetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetSmallCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetSmallCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out float pValue) GetSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, float Value) SetSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetStrikeThrough;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetStrikeThrough;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetSubscript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetSubscript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetSuperscript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetSuperscript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetUnderline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetUnderline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, out int32 pValue) GetWeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont self, int32 Value) SetWeight;
			}
		}
		[CRepr]
		public struct ITextPara : IDispatch
		{
			public const new Guid IID = .(0x8cc497c4, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDuplicate(ITextPara** ppPara) mut => VT.GetDuplicate(ref this, ppPara);
			public HRESULT SetDuplicate(ITextPara* pPara) mut => VT.SetDuplicate(ref this, pPara);
			public HRESULT CanChange(out int32 pValue) mut => VT.CanChange(ref this, out pValue);
			public HRESULT IsEqual(ITextPara* pPara, out int32 pValue) mut => VT.IsEqual(ref this, pPara, out pValue);
			public HRESULT Reset(int32 Value) mut => VT.Reset(ref this, Value);
			public HRESULT GetStyle(out int32 pValue) mut => VT.GetStyle(ref this, out pValue);
			public HRESULT SetStyle(int32 Value) mut => VT.SetStyle(ref this, Value);
			public HRESULT GetAlignment(out int32 pValue) mut => VT.GetAlignment(ref this, out pValue);
			public HRESULT SetAlignment(int32 Value) mut => VT.SetAlignment(ref this, Value);
			public HRESULT GetHyphenation(out tomConstants pValue) mut => VT.GetHyphenation(ref this, out pValue);
			public HRESULT SetHyphenation(int32 Value) mut => VT.SetHyphenation(ref this, Value);
			public HRESULT GetFirstLineIndent(out float pValue) mut => VT.GetFirstLineIndent(ref this, out pValue);
			public HRESULT GetKeepTogether(out tomConstants pValue) mut => VT.GetKeepTogether(ref this, out pValue);
			public HRESULT SetKeepTogether(int32 Value) mut => VT.SetKeepTogether(ref this, Value);
			public HRESULT GetKeepWithNext(out tomConstants pValue) mut => VT.GetKeepWithNext(ref this, out pValue);
			public HRESULT SetKeepWithNext(int32 Value) mut => VT.SetKeepWithNext(ref this, Value);
			public HRESULT GetLeftIndent(out float pValue) mut => VT.GetLeftIndent(ref this, out pValue);
			public HRESULT GetLineSpacing(out float pValue) mut => VT.GetLineSpacing(ref this, out pValue);
			public HRESULT GetLineSpacingRule(out int32 pValue) mut => VT.GetLineSpacingRule(ref this, out pValue);
			public HRESULT GetListAlignment(out int32 pValue) mut => VT.GetListAlignment(ref this, out pValue);
			public HRESULT SetListAlignment(int32 Value) mut => VT.SetListAlignment(ref this, Value);
			public HRESULT GetListLevelIndex(out int32 pValue) mut => VT.GetListLevelIndex(ref this, out pValue);
			public HRESULT SetListLevelIndex(int32 Value) mut => VT.SetListLevelIndex(ref this, Value);
			public HRESULT GetListStart(out int32 pValue) mut => VT.GetListStart(ref this, out pValue);
			public HRESULT SetListStart(int32 Value) mut => VT.SetListStart(ref this, Value);
			public HRESULT GetListTab(out float pValue) mut => VT.GetListTab(ref this, out pValue);
			public HRESULT SetListTab(float Value) mut => VT.SetListTab(ref this, Value);
			public HRESULT GetListType(out int32 pValue) mut => VT.GetListType(ref this, out pValue);
			public HRESULT SetListType(int32 Value) mut => VT.SetListType(ref this, Value);
			public HRESULT GetNoLineNumber(out int32 pValue) mut => VT.GetNoLineNumber(ref this, out pValue);
			public HRESULT SetNoLineNumber(int32 Value) mut => VT.SetNoLineNumber(ref this, Value);
			public HRESULT GetPageBreakBefore(out int32 pValue) mut => VT.GetPageBreakBefore(ref this, out pValue);
			public HRESULT SetPageBreakBefore(int32 Value) mut => VT.SetPageBreakBefore(ref this, Value);
			public HRESULT GetRightIndent(out float pValue) mut => VT.GetRightIndent(ref this, out pValue);
			public HRESULT SetRightIndent(float Value) mut => VT.SetRightIndent(ref this, Value);
			public HRESULT SetIndents(float First, float Left, float Right) mut => VT.SetIndents(ref this, First, Left, Right);
			public HRESULT SetLineSpacing(int32 Rule, float Spacing) mut => VT.SetLineSpacing(ref this, Rule, Spacing);
			public HRESULT GetSpaceAfter(out float pValue) mut => VT.GetSpaceAfter(ref this, out pValue);
			public HRESULT SetSpaceAfter(float Value) mut => VT.SetSpaceAfter(ref this, Value);
			public HRESULT GetSpaceBefore(out float pValue) mut => VT.GetSpaceBefore(ref this, out pValue);
			public HRESULT SetSpaceBefore(float Value) mut => VT.SetSpaceBefore(ref this, Value);
			public HRESULT GetWidowControl(out int32 pValue) mut => VT.GetWidowControl(ref this, out pValue);
			public HRESULT SetWidowControl(int32 Value) mut => VT.SetWidowControl(ref this, Value);
			public HRESULT GetTabCount(out int32 pCount) mut => VT.GetTabCount(ref this, out pCount);
			public HRESULT AddTab(float tbPos, int32 tbAlign, int32 tbLeader) mut => VT.AddTab(ref this, tbPos, tbAlign, tbLeader);
			public HRESULT ClearAllTabs() mut => VT.ClearAllTabs(ref this);
			public HRESULT DeleteTab(float tbPos) mut => VT.DeleteTab(ref this, tbPos);
			public HRESULT GetTab(int32 iTab, out float ptbPos, out int32 ptbAlign, out int32 ptbLeader) mut => VT.GetTab(ref this, iTab, out ptbPos, out ptbAlign, out ptbLeader);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, ITextPara** ppPara) GetDuplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, ITextPara* pPara) SetDuplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) CanChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, ITextPara* pPara, out int32 pValue) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out tomConstants pValue) GetHyphenation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetHyphenation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetFirstLineIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out tomConstants pValue) GetKeepTogether;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetKeepTogether;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out tomConstants pValue) GetKeepWithNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetKeepWithNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetLeftIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetLineSpacingRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetListAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetListAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetListLevelIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetListLevelIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetListStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetListStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetListTab;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float Value) SetListTab;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetListType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetListType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetNoLineNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetNoLineNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetPageBreakBefore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetPageBreakBefore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetRightIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float Value) SetRightIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float First, float Left, float Right) SetIndents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Rule, float Spacing) SetLineSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetSpaceAfter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float Value) SetSpaceAfter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out float pValue) GetSpaceBefore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float Value) SetSpaceBefore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pValue) GetWidowControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 Value) SetWidowControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, out int32 pCount) GetTabCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float tbPos, int32 tbAlign, int32 tbLeader) AddTab;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self) ClearAllTabs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, float tbPos) DeleteTab;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara self, int32 iTab, out float ptbPos, out int32 ptbAlign, out int32 ptbLeader) GetTab;
			}
		}
		[CRepr]
		public struct ITextStoryRanges : IDispatch
		{
			public const new Guid IID = .(0x8cc497c5, 0xa1df, 0x11ce, 0x80, 0x98, 0x00, 0xaa, 0x00, 0x47, 0xbe, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT _NewEnum(IUnknown** ppunkEnum) mut => VT._NewEnum(ref this, ppunkEnum);
			public HRESULT Item(int32 Index, ITextRange** ppRange) mut => VT.Item(ref this, Index, ppRange);
			public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoryRanges self, IUnknown** ppunkEnum) _NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoryRanges self, int32 Index, ITextRange** ppRange) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoryRanges self, out int32 pCount) GetCount;
			}
		}
		[CRepr]
		public struct ITextDocument2 : ITextDocument
		{
			public const new Guid IID = .(0xc241f5e0, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCaretType(out int32 pValue) mut => VT.GetCaretType(ref this, out pValue);
			public HRESULT SetCaretType(int32 Value) mut => VT.SetCaretType(ref this, Value);
			public HRESULT GetDisplays(ITextDisplays** ppDisplays) mut => VT.GetDisplays(ref this, ppDisplays);
			public HRESULT GetDocumentFont(ITextFont2** ppFont) mut => VT.GetDocumentFont(ref this, ppFont);
			public HRESULT SetDocumentFont(ITextFont2* pFont) mut => VT.SetDocumentFont(ref this, pFont);
			public HRESULT GetDocumentPara(ITextPara2** ppPara) mut => VT.GetDocumentPara(ref this, ppPara);
			public HRESULT SetDocumentPara(ITextPara2* pPara) mut => VT.SetDocumentPara(ref this, pPara);
			public HRESULT GetEastAsianFlags(out tomConstants pFlags) mut => VT.GetEastAsianFlags(ref this, out pFlags);
			public HRESULT GetGenerator(BSTR* pbstr) mut => VT.GetGenerator(ref this, pbstr);
			public HRESULT SetIMEInProgress(int32 Value) mut => VT.SetIMEInProgress(ref this, Value);
			public HRESULT GetNotificationMode(out int32 pValue) mut => VT.GetNotificationMode(ref this, out pValue);
			public HRESULT SetNotificationMode(int32 Value) mut => VT.SetNotificationMode(ref this, Value);
			public HRESULT GetSelection2(ITextSelection2** ppSel) mut => VT.GetSelection2(ref this, ppSel);
			public HRESULT GetStoryRanges2(ITextStoryRanges2** ppStories) mut => VT.GetStoryRanges2(ref this, ppStories);
			public HRESULT GetTypographyOptions(out int32 pOptions) mut => VT.GetTypographyOptions(ref this, out pOptions);
			public HRESULT GetVersion(out int32 pValue) mut => VT.GetVersion(ref this, out pValue);
			public HRESULT GetWindow(out int64 pHwnd) mut => VT.GetWindow(ref this, out pHwnd);
			public HRESULT AttachMsgFilter(IUnknown* pFilter) mut => VT.AttachMsgFilter(ref this, pFilter);
			public HRESULT CheckTextLimit(int32 cch, ref int32 pcch) mut => VT.CheckTextLimit(ref this, cch, ref pcch);
			public HRESULT GetCallManager(IUnknown** ppVoid) mut => VT.GetCallManager(ref this, ppVoid);
			public HRESULT GetClientRect(tomConstants Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom) mut => VT.GetClientRect(ref this, Type, out pLeft, out pTop, out pRight, out pBottom);
			public HRESULT GetEffectColor(int32 Index, out int32 pValue) mut => VT.GetEffectColor(ref this, Index, out pValue);
			public HRESULT GetImmContext(out int64 pContext) mut => VT.GetImmContext(ref this, out pContext);
			public HRESULT GetPreferredFont(int32 cp, int32 CharRep, int32 Options, int32 curCharRep, int32 curFontSize, BSTR* pbstr, out int32 pPitchAndFamily, out int32 pNewFontSize) mut => VT.GetPreferredFont(ref this, cp, CharRep, Options, curCharRep, curFontSize, pbstr, out pPitchAndFamily, out pNewFontSize);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT GetStrings(ITextStrings** ppStrs) mut => VT.GetStrings(ref this, ppStrs);
			public HRESULT Notify(int32 Notify) mut => VT.Notify(ref this, Notify);
			public HRESULT Range2(int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) mut => VT.Range2(ref this, cpActive, cpAnchor, ppRange);
			public HRESULT RangeFromPoint2(int32 x, int32 y, int32 Type, ITextRange2** ppRange) mut => VT.RangeFromPoint2(ref this, x, y, Type, ppRange);
			public HRESULT ReleaseCallManager(IUnknown* pVoid) mut => VT.ReleaseCallManager(ref this, pVoid);
			public HRESULT ReleaseImmContext(int64 Context) mut => VT.ReleaseImmContext(ref this, Context);
			public HRESULT SetEffectColor(int32 Index, int32 Value) mut => VT.SetEffectColor(ref this, Index, Value);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);
			public HRESULT SetTypographyOptions(int32 Options, int32 Mask) mut => VT.SetTypographyOptions(ref this, Options, Mask);
			public HRESULT SysBeep() mut => VT.SysBeep(ref this);
			public HRESULT Update(int32 Value) mut => VT.Update(ref this, Value);
			public HRESULT UpdateWindow() mut => VT.UpdateWindow(ref this);
			public HRESULT GetMathProperties(out int32 pOptions) mut => VT.GetMathProperties(ref this, out pOptions);
			public HRESULT SetMathProperties(int32 Options, int32 Mask) mut => VT.SetMathProperties(ref this, Options, Mask);
			public HRESULT GetActiveStory(ITextStory** ppStory) mut => VT.GetActiveStory(ref this, ppStory);
			public HRESULT SetActiveStory(ITextStory* pStory) mut => VT.SetActiveStory(ref this, pStory);
			public HRESULT GetMainStory(ITextStory** ppStory) mut => VT.GetMainStory(ref this, ppStory);
			public HRESULT GetNewStory(ITextStory** ppStory) mut => VT.GetNewStory(ref this, ppStory);
			public HRESULT GetStory(int32 Index, ITextStory** ppStory) mut => VT.GetStory(ref this, Index, ppStory);

			[CRepr]
			public struct VTable : ITextDocument.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int32 pValue) GetCaretType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Value) SetCaretType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextDisplays** ppDisplays) GetDisplays;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextFont2** ppFont) GetDocumentFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextFont2* pFont) SetDocumentFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextPara2** ppPara) GetDocumentPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextPara2* pPara) SetDocumentPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out tomConstants pFlags) GetEastAsianFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, BSTR* pbstr) GetGenerator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Value) SetIMEInProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int32 pValue) GetNotificationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Value) SetNotificationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextSelection2** ppSel) GetSelection2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStoryRanges2** ppStories) GetStoryRanges2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int32 pOptions) GetTypographyOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int32 pValue) GetVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int64 pHwnd) GetWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, IUnknown* pFilter) AttachMsgFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 cch, ref int32 pcch) CheckTextLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, IUnknown** ppVoid) GetCallManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, tomConstants Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom) GetClientRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Index, out int32 pValue) GetEffectColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int64 pContext) GetImmContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 cp, int32 CharRep, int32 Options, int32 curCharRep, int32 curFontSize, BSTR* pbstr, out int32 pPitchAndFamily, out int32 pNewFontSize) GetPreferredFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStrings** ppStrs) GetStrings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Notify) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) Range2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 x, int32 y, int32 Type, ITextRange2** ppRange) RangeFromPoint2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, IUnknown* pVoid) ReleaseCallManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int64 Context) ReleaseImmContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Index, int32 Value) SetEffectColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Type, int32 Value) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Options, int32 Mask) SetTypographyOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self) SysBeep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Value) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self) UpdateWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, out int32 pOptions) GetMathProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Options, int32 Mask) SetMathProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStory** ppStory) GetActiveStory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStory* pStory) SetActiveStory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStory** ppStory) GetMainStory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, ITextStory** ppStory) GetNewStory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2 self, int32 Index, ITextStory** ppStory) GetStory;
			}
		}
		[CRepr]
		public struct ITextRange2 : ITextSelection
		{
			public const new Guid IID = .(0xc241f5e2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCch(out int32 pcch) mut => VT.GetCch(ref this, out pcch);
			public HRESULT GetCells(IUnknown** ppCells) mut => VT.GetCells(ref this, ppCells);
			public HRESULT GetColumn(IUnknown** ppColumn) mut => VT.GetColumn(ref this, ppColumn);
			public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
			public HRESULT GetDuplicate2(ITextRange2** ppRange) mut => VT.GetDuplicate2(ref this, ppRange);
			public HRESULT GetFont2(ITextFont2** ppFont) mut => VT.GetFont2(ref this, ppFont);
			public HRESULT SetFont2(ITextFont2* pFont) mut => VT.SetFont2(ref this, pFont);
			public HRESULT GetFormattedText2(ITextRange2** ppRange) mut => VT.GetFormattedText2(ref this, ppRange);
			public HRESULT SetFormattedText2(ITextRange2* pRange) mut => VT.SetFormattedText2(ref this, pRange);
			public HRESULT GetGravity(out int32 pValue) mut => VT.GetGravity(ref this, out pValue);
			public HRESULT SetGravity(int32 Value) mut => VT.SetGravity(ref this, Value);
			public HRESULT GetPara2(ITextPara2** ppPara) mut => VT.GetPara2(ref this, ppPara);
			public HRESULT SetPara2(ITextPara2* pPara) mut => VT.SetPara2(ref this, pPara);
			public HRESULT GetRow(ITextRow** ppRow) mut => VT.GetRow(ref this, ppRow);
			public HRESULT GetStartPara(out int32 pValue) mut => VT.GetStartPara(ref this, out pValue);
			public HRESULT GetTable(IUnknown** ppTable) mut => VT.GetTable(ref this, ppTable);
			public HRESULT GetURL(BSTR* pbstr) mut => VT.GetURL(ref this, pbstr);
			public HRESULT SetURL(BSTR bstr) mut => VT.SetURL(ref this, bstr);
			public HRESULT AddSubrange(int32 cp1, int32 cp2, int32 Activate) mut => VT.AddSubrange(ref this, cp1, cp2, Activate);
			public HRESULT BuildUpMath(int32 Flags) mut => VT.BuildUpMath(ref this, Flags);
			public HRESULT DeleteSubrange(int32 cpFirst, int32 cpLim) mut => VT.DeleteSubrange(ref this, cpFirst, cpLim);
			public HRESULT Find(ITextRange2* pRange, int32 Count, int32 Flags, out int32 pDelta) mut => VT.Find(ref this, pRange, Count, Flags, out pDelta);
			public HRESULT GetChar2(out int32 pChar, int32 Offset) mut => VT.GetChar2(ref this, out pChar, Offset);
			public HRESULT GetDropCap(out int32 pcLine, out int32 pPosition) mut => VT.GetDropCap(ref this, out pcLine, out pPosition);
			public HRESULT GetInlineObject(out int32 pType, out int32 pAlign, out int32 pChar, out int32 pChar1, out int32 pChar2, out int32 pCount, out int32 pTeXStyle, out int32 pcCol, out int32 pLevel) mut => VT.GetInlineObject(ref this, out pType, out pAlign, out pChar, out pChar1, out pChar2, out pCount, out pTeXStyle, out pcCol, out pLevel);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT GetRect(int32 Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom, out int32 pHit) mut => VT.GetRect(ref this, Type, out pLeft, out pTop, out pRight, out pBottom, out pHit);
			public HRESULT GetSubrange(int32 iSubrange, out int32 pcpFirst, out int32 pcpLim) mut => VT.GetSubrange(ref this, iSubrange, out pcpFirst, out pcpLim);
			public HRESULT GetText2(int32 Flags, BSTR* pbstr) mut => VT.GetText2(ref this, Flags, pbstr);
			public HRESULT HexToUnicode() mut => VT.HexToUnicode(ref this);
			public HRESULT InsertTable(int32 cCol, int32 cRow, int32 AutoFit) mut => VT.InsertTable(ref this, cCol, cRow, AutoFit);
			public HRESULT Linearize(int32 Flags) mut => VT.Linearize(ref this, Flags);
			public HRESULT SetActiveSubrange(int32 cpAnchor, int32 cpActive) mut => VT.SetActiveSubrange(ref this, cpAnchor, cpActive);
			public HRESULT SetDropCap(int32 cLine, int32 Position) mut => VT.SetDropCap(ref this, cLine, Position);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);
			public HRESULT SetText2(int32 Flags, BSTR bstr) mut => VT.SetText2(ref this, Flags, bstr);
			public HRESULT UnicodeToHex() mut => VT.UnicodeToHex(ref this);
			public HRESULT SetInlineObject(int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol) mut => VT.SetInlineObject(ref this, Type, Align, Char, Char1, Char2, Count, TeXStyle, cCol);
			public HRESULT GetMathFunctionType(BSTR bstr, out int32 pValue) mut => VT.GetMathFunctionType(ref this, bstr, out pValue);
			public HRESULT InsertImage(int32 width, int32 height, int32 ascent, TEXT_ALIGN_OPTIONS Type, BSTR bstrAltText, IStream* pStream) mut => VT.InsertImage(ref this, width, height, ascent, Type, bstrAltText, pStream);

			[CRepr]
			public struct VTable : ITextSelection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pcch) GetCch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, IUnknown** ppCells) GetCells;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, IUnknown** ppColumn) GetColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextRange2** ppRange) GetDuplicate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextFont2** ppFont) GetFont2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextFont2* pFont) SetFont2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextRange2** ppRange) GetFormattedText2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextRange2* pRange) SetFormattedText2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pValue) GetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Value) SetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextPara2** ppPara) GetPara2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextPara2* pPara) SetPara2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextRow** ppRow) GetRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pValue) GetStartPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, IUnknown** ppTable) GetTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, BSTR* pbstr) GetURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, BSTR bstr) SetURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 cp1, int32 cp2, int32 Activate) AddSubrange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Flags) BuildUpMath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 cpFirst, int32 cpLim) DeleteSubrange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, ITextRange2* pRange, int32 Count, int32 Flags, out int32 pDelta) Find;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pChar, int32 Offset) GetChar2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pcLine, out int32 pPosition) GetDropCap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, out int32 pType, out int32 pAlign, out int32 pChar, out int32 pChar1, out int32 pChar2, out int32 pCount, out int32 pTeXStyle, out int32 pcCol, out int32 pLevel) GetInlineObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom, out int32 pHit) GetRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 iSubrange, out int32 pcpFirst, out int32 pcpLim) GetSubrange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Flags, BSTR* pbstr) GetText2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self) HexToUnicode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 cCol, int32 cRow, int32 AutoFit) InsertTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Flags) Linearize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 cpAnchor, int32 cpActive) SetActiveSubrange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 cLine, int32 Position) SetDropCap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Type, int32 Value) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Flags, BSTR bstr) SetText2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self) UnicodeToHex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol) SetInlineObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, BSTR bstr, out int32 pValue) GetMathFunctionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRange2 self, int32 width, int32 height, int32 ascent, TEXT_ALIGN_OPTIONS Type, BSTR bstrAltText, IStream* pStream) InsertImage;
			}
		}
		[CRepr]
		public struct ITextSelection2 : ITextRange2
		{
			public const new Guid IID = .(0xc241f5e1, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITextRange2.VTable {}
		}
		[CRepr]
		public struct ITextFont2 : ITextFont
		{
			public const new Guid IID = .(0xc241f5e3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
			public HRESULT GetAutoLigatures(out int32 pValue) mut => VT.GetAutoLigatures(ref this, out pValue);
			public HRESULT SetAutoLigatures(int32 Value) mut => VT.SetAutoLigatures(ref this, Value);
			public HRESULT GetAutospaceAlpha(out int32 pValue) mut => VT.GetAutospaceAlpha(ref this, out pValue);
			public HRESULT SetAutospaceAlpha(int32 Value) mut => VT.SetAutospaceAlpha(ref this, Value);
			public HRESULT GetAutospaceNumeric(out int32 pValue) mut => VT.GetAutospaceNumeric(ref this, out pValue);
			public HRESULT SetAutospaceNumeric(int32 Value) mut => VT.SetAutospaceNumeric(ref this, Value);
			public HRESULT GetAutospaceParens(out int32 pValue) mut => VT.GetAutospaceParens(ref this, out pValue);
			public HRESULT SetAutospaceParens(int32 Value) mut => VT.SetAutospaceParens(ref this, Value);
			public HRESULT GetCharRep(out int32 pValue) mut => VT.GetCharRep(ref this, out pValue);
			public HRESULT SetCharRep(int32 Value) mut => VT.SetCharRep(ref this, Value);
			public HRESULT GetCompressionMode(out int32 pValue) mut => VT.GetCompressionMode(ref this, out pValue);
			public HRESULT SetCompressionMode(int32 Value) mut => VT.SetCompressionMode(ref this, Value);
			public HRESULT GetCookie(out int32 pValue) mut => VT.GetCookie(ref this, out pValue);
			public HRESULT SetCookie(int32 Value) mut => VT.SetCookie(ref this, Value);
			public HRESULT GetDoubleStrike(out int32 pValue) mut => VT.GetDoubleStrike(ref this, out pValue);
			public HRESULT SetDoubleStrike(int32 Value) mut => VT.SetDoubleStrike(ref this, Value);
			public HRESULT GetDuplicate2(ITextFont2** ppFont) mut => VT.GetDuplicate2(ref this, ppFont);
			public HRESULT SetDuplicate2(ITextFont2* pFont) mut => VT.SetDuplicate2(ref this, pFont);
			public HRESULT GetLinkType(out int32 pValue) mut => VT.GetLinkType(ref this, out pValue);
			public HRESULT GetMathZone(out int32 pValue) mut => VT.GetMathZone(ref this, out pValue);
			public HRESULT SetMathZone(int32 Value) mut => VT.SetMathZone(ref this, Value);
			public HRESULT GetModWidthPairs(out int32 pValue) mut => VT.GetModWidthPairs(ref this, out pValue);
			public HRESULT SetModWidthPairs(int32 Value) mut => VT.SetModWidthPairs(ref this, Value);
			public HRESULT GetModWidthSpace(out int32 pValue) mut => VT.GetModWidthSpace(ref this, out pValue);
			public HRESULT SetModWidthSpace(int32 Value) mut => VT.SetModWidthSpace(ref this, Value);
			public HRESULT GetOldNumbers(out int32 pValue) mut => VT.GetOldNumbers(ref this, out pValue);
			public HRESULT SetOldNumbers(int32 Value) mut => VT.SetOldNumbers(ref this, Value);
			public HRESULT GetOverlapping(out int32 pValue) mut => VT.GetOverlapping(ref this, out pValue);
			public HRESULT SetOverlapping(int32 Value) mut => VT.SetOverlapping(ref this, Value);
			public HRESULT GetPositionSubSuper(out int32 pValue) mut => VT.GetPositionSubSuper(ref this, out pValue);
			public HRESULT SetPositionSubSuper(int32 Value) mut => VT.SetPositionSubSuper(ref this, Value);
			public HRESULT GetScaling(out int32 pValue) mut => VT.GetScaling(ref this, out pValue);
			public HRESULT SetScaling(int32 Value) mut => VT.SetScaling(ref this, Value);
			public HRESULT GetSpaceExtension(out float pValue) mut => VT.GetSpaceExtension(ref this, out pValue);
			public HRESULT SetSpaceExtension(float Value) mut => VT.SetSpaceExtension(ref this, Value);
			public HRESULT GetUnderlinePositionMode(out int32 pValue) mut => VT.GetUnderlinePositionMode(ref this, out pValue);
			public HRESULT SetUnderlinePositionMode(int32 Value) mut => VT.SetUnderlinePositionMode(ref this, Value);
			public HRESULT GetEffects(out int32 pValue, out int32 pMask) mut => VT.GetEffects(ref this, out pValue, out pMask);
			public HRESULT GetEffects2(out int32 pValue, out int32 pMask) mut => VT.GetEffects2(ref this, out pValue, out pMask);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT GetPropertyInfo(int32 Index, out int32 pType, out int32 pValue) mut => VT.GetPropertyInfo(ref this, Index, out pType, out pValue);
			public HRESULT IsEqual2(ITextFont2* pFont, out int32 pB) mut => VT.IsEqual2(ref this, pFont, out pB);
			public HRESULT SetEffects(int32 Value, int32 Mask) mut => VT.SetEffects(ref this, Value, Mask);
			public HRESULT SetEffects2(int32 Value, int32 Mask) mut => VT.SetEffects2(ref this, Value, Mask);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);

			[CRepr]
			public struct VTable : ITextFont.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetAutoLigatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetAutoLigatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetAutospaceAlpha;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetAutospaceAlpha;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetAutospaceNumeric;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetAutospaceNumeric;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetAutospaceParens;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetAutospaceParens;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetCharRep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetCharRep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetCompressionMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetCompressionMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetDoubleStrike;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetDoubleStrike;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, ITextFont2** ppFont) GetDuplicate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, ITextFont2* pFont) SetDuplicate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetLinkType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetMathZone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetMathZone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetModWidthPairs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetModWidthPairs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetModWidthSpace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetModWidthSpace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetOldNumbers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetOldNumbers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetOverlapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetOverlapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetPositionSubSuper;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetPositionSubSuper;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetScaling;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetScaling;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out float pValue) GetSpaceExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, float Value) SetSpaceExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue) GetUnderlinePositionMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value) SetUnderlinePositionMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue, out int32 pMask) GetEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, out int32 pValue, out int32 pMask) GetEffects2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Index, out int32 pType, out int32 pValue) GetPropertyInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, ITextFont2* pFont, out int32 pB) IsEqual2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value, int32 Mask) SetEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Value, int32 Mask) SetEffects2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextFont2 self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextPara2 : ITextPara
		{
			public const new Guid IID = .(0xc241f5e4, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBorders(IUnknown** ppBorders) mut => VT.GetBorders(ref this, ppBorders);
			public HRESULT GetDuplicate2(ITextPara2** ppPara) mut => VT.GetDuplicate2(ref this, ppPara);
			public HRESULT SetDuplicate2(ITextPara2* pPara) mut => VT.SetDuplicate2(ref this, pPara);
			public HRESULT GetFontAlignment(out int32 pValue) mut => VT.GetFontAlignment(ref this, out pValue);
			public HRESULT SetFontAlignment(int32 Value) mut => VT.SetFontAlignment(ref this, Value);
			public HRESULT GetHangingPunctuation(out int32 pValue) mut => VT.GetHangingPunctuation(ref this, out pValue);
			public HRESULT SetHangingPunctuation(int32 Value) mut => VT.SetHangingPunctuation(ref this, Value);
			public HRESULT GetSnapToGrid(out int32 pValue) mut => VT.GetSnapToGrid(ref this, out pValue);
			public HRESULT SetSnapToGrid(int32 Value) mut => VT.SetSnapToGrid(ref this, Value);
			public HRESULT GetTrimPunctuationAtStart(out int32 pValue) mut => VT.GetTrimPunctuationAtStart(ref this, out pValue);
			public HRESULT SetTrimPunctuationAtStart(int32 Value) mut => VT.SetTrimPunctuationAtStart(ref this, Value);
			public HRESULT GetEffects(out int32 pValue, out int32 pMask) mut => VT.GetEffects(ref this, out pValue, out pMask);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT IsEqual2(ITextPara2* pPara, out int32 pB) mut => VT.IsEqual2(ref this, pPara, out pB);
			public HRESULT SetEffects(int32 Value, int32 Mask) mut => VT.SetEffects(ref this, Value, Mask);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);

			[CRepr]
			public struct VTable : ITextPara.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, IUnknown** ppBorders) GetBorders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, ITextPara2** ppPara) GetDuplicate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, ITextPara2* pPara) SetDuplicate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, out int32 pValue) GetFontAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Value) SetFontAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, out int32 pValue) GetHangingPunctuation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Value) SetHangingPunctuation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, out int32 pValue) GetSnapToGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Value) SetSnapToGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, out int32 pValue) GetTrimPunctuationAtStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Value) SetTrimPunctuationAtStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, out int32 pValue, out int32 pMask) GetEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, ITextPara2* pPara, out int32 pB) IsEqual2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Value, int32 Mask) SetEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextPara2 self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextStoryRanges2 : ITextStoryRanges
		{
			public const new Guid IID = .(0xc241f5e5, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item2(int32 Index, ITextRange2** ppRange) mut => VT.Item2(ref this, Index, ppRange);

			[CRepr]
			public struct VTable : ITextStoryRanges.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoryRanges2 self, int32 Index, ITextRange2** ppRange) Item2;
			}
		}
		[CRepr]
		public struct ITextStory : IUnknown
		{
			public const new Guid IID = .(0xc241f5f3, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActive(out int32 pValue) mut => VT.GetActive(ref this, out pValue);
			public HRESULT SetActive(int32 Value) mut => VT.SetActive(ref this, Value);
			public HRESULT GetDisplay(IUnknown** ppDisplay) mut => VT.GetDisplay(ref this, ppDisplay);
			public HRESULT GetIndex(out int32 pValue) mut => VT.GetIndex(ref this, out pValue);
			public HRESULT ComGetType(out int32 pValue) mut => VT.ComGetType(ref this, out pValue);
			public HRESULT SetType(int32 Value) mut => VT.SetType(ref this, Value);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT GetRange(int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) mut => VT.GetRange(ref this, cpActive, cpAnchor, ppRange);
			public HRESULT GetText(int32 Flags, BSTR* pbstr) mut => VT.GetText(ref this, Flags, pbstr);
			public HRESULT SetFormattedText(IUnknown* pUnk) mut => VT.SetFormattedText(ref this, pUnk);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);
			public HRESULT SetText(int32 Flags, BSTR bstr) mut => VT.SetText(ref this, Flags, bstr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, out int32 pValue) GetActive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Value) SetActive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, IUnknown** ppDisplay) GetDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, out int32 pValue) GetIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, out int32 pValue) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Value) SetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 cpActive, int32 cpAnchor, ITextRange2** ppRange) GetRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Flags, BSTR* pbstr) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, IUnknown* pUnk) SetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Type, int32 Value) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStory self, int32 Flags, BSTR bstr) SetText;
			}
		}
		[CRepr]
		public struct ITextStrings : IDispatch
		{
			public const new Guid IID = .(0xc241f5e7, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, ITextRange2** ppRange) mut => VT.Item(ref this, Index, ppRange);
			public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
			public HRESULT Add(BSTR bstr) mut => VT.Add(ref this, bstr);
			public HRESULT Append(ITextRange2* pRange, int32 iString) mut => VT.Append(ref this, pRange, iString);
			public HRESULT Cat2(int32 iString) mut => VT.Cat2(ref this, iString);
			public HRESULT CatTop2(BSTR bstr) mut => VT.CatTop2(ref this, bstr);
			public HRESULT DeleteRange(ITextRange2* pRange) mut => VT.DeleteRange(ref this, pRange);
			public HRESULT EncodeFunction(int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol, ITextRange2* pRange) mut => VT.EncodeFunction(ref this, Type, Align, Char, Char1, Char2, Count, TeXStyle, cCol, pRange);
			public HRESULT GetCch(int32 iString, out int32 pcch) mut => VT.GetCch(ref this, iString, out pcch);
			public HRESULT InsertNullStr(int32 iString) mut => VT.InsertNullStr(ref this, iString);
			public HRESULT MoveBoundary(int32 iString, int32 cch) mut => VT.MoveBoundary(ref this, iString, cch);
			public HRESULT PrefixTop(BSTR bstr) mut => VT.PrefixTop(ref this, bstr);
			public HRESULT Remove(int32 iString, int32 cString) mut => VT.Remove(ref this, iString, cString);
			public HRESULT SetFormattedText(ITextRange2* pRangeD, ITextRange2* pRangeS) mut => VT.SetFormattedText(ref this, pRangeD, pRangeS);
			public HRESULT SetOpCp(int32 iString, int32 cp) mut => VT.SetOpCp(ref this, iString, cp);
			public HRESULT SuffixTop(BSTR bstr, ITextRange2* pRange) mut => VT.SuffixTop(ref this, bstr, pRange);
			public HRESULT Swap() mut => VT.Swap(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 Index, ITextRange2** ppRange) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, out int32 pCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, BSTR bstr) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, ITextRange2* pRange, int32 iString) Append;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString) Cat2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, BSTR bstr) CatTop2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, ITextRange2* pRange) DeleteRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 Type, int32 Align, int32 Char, int32 Char1, int32 Char2, int32 Count, int32 TeXStyle, int32 cCol, ITextRange2* pRange) EncodeFunction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString, out int32 pcch) GetCch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString) InsertNullStr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString, int32 cch) MoveBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, BSTR bstr) PrefixTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString, int32 cString) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, ITextRange2* pRangeD, ITextRange2* pRangeS) SetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, int32 iString, int32 cp) SetOpCp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self, BSTR bstr, ITextRange2* pRange) SuffixTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStrings self) Swap;
			}
		}
		[CRepr]
		public struct ITextRow : IDispatch
		{
			public const new Guid IID = .(0xc241f5ef, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlignment(out int32 pValue) mut => VT.GetAlignment(ref this, out pValue);
			public HRESULT SetAlignment(int32 Value) mut => VT.SetAlignment(ref this, Value);
			public HRESULT GetCellCount(out int32 pValue) mut => VT.GetCellCount(ref this, out pValue);
			public HRESULT SetCellCount(int32 Value) mut => VT.SetCellCount(ref this, Value);
			public HRESULT GetCellCountCache(out int32 pValue) mut => VT.GetCellCountCache(ref this, out pValue);
			public HRESULT SetCellCountCache(int32 Value) mut => VT.SetCellCountCache(ref this, Value);
			public HRESULT GetCellIndex(out int32 pValue) mut => VT.GetCellIndex(ref this, out pValue);
			public HRESULT SetCellIndex(int32 Value) mut => VT.SetCellIndex(ref this, Value);
			public HRESULT GetCellMargin(out int32 pValue) mut => VT.GetCellMargin(ref this, out pValue);
			public HRESULT SetCellMargin(int32 Value) mut => VT.SetCellMargin(ref this, Value);
			public HRESULT GetHeight(out int32 pValue) mut => VT.GetHeight(ref this, out pValue);
			public HRESULT SetHeight(int32 Value) mut => VT.SetHeight(ref this, Value);
			public HRESULT GetIndent(out int32 pValue) mut => VT.GetIndent(ref this, out pValue);
			public HRESULT SetIndent(int32 Value) mut => VT.SetIndent(ref this, Value);
			public HRESULT GetKeepTogether(out int32 pValue) mut => VT.GetKeepTogether(ref this, out pValue);
			public HRESULT SetKeepTogether(int32 Value) mut => VT.SetKeepTogether(ref this, Value);
			public HRESULT GetKeepWithNext(out int32 pValue) mut => VT.GetKeepWithNext(ref this, out pValue);
			public HRESULT SetKeepWithNext(int32 Value) mut => VT.SetKeepWithNext(ref this, Value);
			public HRESULT GetNestLevel(out int32 pValue) mut => VT.GetNestLevel(ref this, out pValue);
			public HRESULT GetRTL(out int32 pValue) mut => VT.GetRTL(ref this, out pValue);
			public HRESULT SetRTL(int32 Value) mut => VT.SetRTL(ref this, Value);
			public HRESULT GetCellAlignment(out int32 pValue) mut => VT.GetCellAlignment(ref this, out pValue);
			public HRESULT SetCellAlignment(int32 Value) mut => VT.SetCellAlignment(ref this, Value);
			public HRESULT GetCellColorBack(out int32 pValue) mut => VT.GetCellColorBack(ref this, out pValue);
			public HRESULT SetCellColorBack(int32 Value) mut => VT.SetCellColorBack(ref this, Value);
			public HRESULT GetCellColorFore(out int32 pValue) mut => VT.GetCellColorFore(ref this, out pValue);
			public HRESULT SetCellColorFore(int32 Value) mut => VT.SetCellColorFore(ref this, Value);
			public HRESULT GetCellMergeFlags(out int32 pValue) mut => VT.GetCellMergeFlags(ref this, out pValue);
			public HRESULT SetCellMergeFlags(int32 Value) mut => VT.SetCellMergeFlags(ref this, Value);
			public HRESULT GetCellShading(out int32 pValue) mut => VT.GetCellShading(ref this, out pValue);
			public HRESULT SetCellShading(int32 Value) mut => VT.SetCellShading(ref this, Value);
			public HRESULT GetCellVerticalText(out int32 pValue) mut => VT.GetCellVerticalText(ref this, out pValue);
			public HRESULT SetCellVerticalText(int32 Value) mut => VT.SetCellVerticalText(ref this, Value);
			public HRESULT GetCellWidth(out int32 pValue) mut => VT.GetCellWidth(ref this, out pValue);
			public HRESULT SetCellWidth(int32 Value) mut => VT.SetCellWidth(ref this, Value);
			public HRESULT GetCellBorderColors(out int32 pcrLeft, out int32 pcrTop, out int32 pcrRight, out int32 pcrBottom) mut => VT.GetCellBorderColors(ref this, out pcrLeft, out pcrTop, out pcrRight, out pcrBottom);
			public HRESULT GetCellBorderWidths(out int32 pduLeft, out int32 pduTop, out int32 pduRight, out int32 pduBottom) mut => VT.GetCellBorderWidths(ref this, out pduLeft, out pduTop, out pduRight, out pduBottom);
			public HRESULT SetCellBorderColors(int32 crLeft, int32 crTop, int32 crRight, int32 crBottom) mut => VT.SetCellBorderColors(ref this, crLeft, crTop, crRight, crBottom);
			public HRESULT SetCellBorderWidths(int32 duLeft, int32 duTop, int32 duRight, int32 duBottom) mut => VT.SetCellBorderWidths(ref this, duLeft, duTop, duRight, duBottom);
			public HRESULT Apply(int32 cRow, tomConstants Flags) mut => VT.Apply(ref this, cRow, Flags);
			public HRESULT CanChange(out int32 pValue) mut => VT.CanChange(ref this, out pValue);
			public HRESULT GetProperty(int32 Type, out int32 pValue) mut => VT.GetProperty(ref this, Type, out pValue);
			public HRESULT Insert(int32 cRow) mut => VT.Insert(ref this, cRow);
			public HRESULT IsEqual(ITextRow* pRow, out int32 pB) mut => VT.IsEqual(ref this, pRow, out pB);
			public HRESULT Reset(int32 Value) mut => VT.Reset(ref this, Value);
			public HRESULT SetProperty(int32 Type, int32 Value) mut => VT.SetProperty(ref this, Type, Value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellCountCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellCountCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellMargin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellMargin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetHeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetHeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetIndent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetKeepTogether;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetKeepTogether;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetKeepWithNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetKeepWithNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetNestLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetRTL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetRTL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellColorBack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellColorBack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellColorFore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellColorFore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellMergeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellMergeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellShading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellShading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellVerticalText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellVerticalText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) GetCellWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) SetCellWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pcrLeft, out int32 pcrTop, out int32 pcrRight, out int32 pcrBottom) GetCellBorderColors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pduLeft, out int32 pduTop, out int32 pduRight, out int32 pduBottom) GetCellBorderWidths;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 crLeft, int32 crTop, int32 crRight, int32 crBottom) SetCellBorderColors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 duLeft, int32 duTop, int32 duRight, int32 duBottom) SetCellBorderWidths;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 cRow, tomConstants Flags) Apply;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, out int32 pValue) CanChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Type, out int32 pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 cRow) Insert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, ITextRow* pRow, out int32 pB) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Value) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRow self, int32 Type, int32 Value) SetProperty;
			}
		}
		[CRepr]
		public struct ITextDisplays : IDispatch
		{
			public const new Guid IID = .(0xc241f5f2, 0x7206, 0x11d8, 0xa2, 0xc7, 0x00, 0xa0, 0xd1, 0xd6, 0xc6, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ITextDocument2Old : ITextDocument
		{
			public const new Guid IID = .(0x01c25500, 0x4268, 0x11d1, 0x88, 0x3a, 0x3c, 0x8b, 0x00, 0xc1, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AttachMsgFilter(IUnknown* pFilter) mut => VT.AttachMsgFilter(ref this, pFilter);
			public HRESULT SetEffectColor(int32 Index, uint32 cr) mut => VT.SetEffectColor(ref this, Index, cr);
			public HRESULT GetEffectColor(int32 Index, out uint32 pcr) mut => VT.GetEffectColor(ref this, Index, out pcr);
			public HRESULT GetCaretType(out int32 pCaretType) mut => VT.GetCaretType(ref this, out pCaretType);
			public HRESULT SetCaretType(int32 CaretType) mut => VT.SetCaretType(ref this, CaretType);
			public HRESULT GetImmContext(out int64 pContext) mut => VT.GetImmContext(ref this, out pContext);
			public HRESULT ReleaseImmContext(int64 Context) mut => VT.ReleaseImmContext(ref this, Context);
			public HRESULT GetPreferredFont(int32 cp, int32 CharRep, int32 Option, int32 CharRepCur, int32 curFontSize, BSTR* pbstr, out int32 pPitchAndFamily, out int32 pNewFontSize) mut => VT.GetPreferredFont(ref this, cp, CharRep, Option, CharRepCur, curFontSize, pbstr, out pPitchAndFamily, out pNewFontSize);
			public HRESULT GetNotificationMode(out int32 pMode) mut => VT.GetNotificationMode(ref this, out pMode);
			public HRESULT SetNotificationMode(int32 Mode) mut => VT.SetNotificationMode(ref this, Mode);
			public HRESULT GetClientRect(int32 Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom) mut => VT.GetClientRect(ref this, Type, out pLeft, out pTop, out pRight, out pBottom);
			public HRESULT GetSelection2(ITextSelection** ppSel) mut => VT.GetSelection2(ref this, ppSel);
			public HRESULT GetWindow(out int32 phWnd) mut => VT.GetWindow(ref this, out phWnd);
			public HRESULT GetFEFlags(out int32 pFlags) mut => VT.GetFEFlags(ref this, out pFlags);
			public HRESULT UpdateWindow() mut => VT.UpdateWindow(ref this);
			public HRESULT CheckTextLimit(int32 cch, ref int32 pcch) mut => VT.CheckTextLimit(ref this, cch, ref pcch);
			public HRESULT IMEInProgress(int32 Value) mut => VT.IMEInProgress(ref this, Value);
			public HRESULT SysBeep() mut => VT.SysBeep(ref this);
			public HRESULT Update(int32 Mode) mut => VT.Update(ref this, Mode);
			public HRESULT Notify(int32 Notify) mut => VT.Notify(ref this, Notify);
			public HRESULT GetDocumentFont(ITextFont** ppITextFont) mut => VT.GetDocumentFont(ref this, ppITextFont);
			public HRESULT GetDocumentPara(ITextPara** ppITextPara) mut => VT.GetDocumentPara(ref this, ppITextPara);
			public HRESULT GetCallManager(IUnknown** ppVoid) mut => VT.GetCallManager(ref this, ppVoid);
			public HRESULT ReleaseCallManager(IUnknown* pVoid) mut => VT.ReleaseCallManager(ref this, pVoid);

			[CRepr]
			public struct VTable : ITextDocument.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, IUnknown* pFilter) AttachMsgFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Index, uint32 cr) SetEffectColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Index, out uint32 pcr) GetEffectColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, out int32 pCaretType) GetCaretType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 CaretType) SetCaretType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, out int64 pContext) GetImmContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int64 Context) ReleaseImmContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 cp, int32 CharRep, int32 Option, int32 CharRepCur, int32 curFontSize, BSTR* pbstr, out int32 pPitchAndFamily, out int32 pNewFontSize) GetPreferredFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, out int32 pMode) GetNotificationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Mode) SetNotificationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Type, out int32 pLeft, out int32 pTop, out int32 pRight, out int32 pBottom) GetClientRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, ITextSelection** ppSel) GetSelection2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, out int32 phWnd) GetWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, out int32 pFlags) GetFEFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self) UpdateWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 cch, ref int32 pcch) CheckTextLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Value) IMEInProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self) SysBeep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Mode) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, int32 Notify) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, ITextFont** ppITextFont) GetDocumentFont;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, ITextPara** ppITextPara) GetDocumentPara;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, IUnknown** ppVoid) GetCallManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextDocument2Old self, IUnknown* pVoid) ReleaseCallManager;
			}
		}
		
	}
}
