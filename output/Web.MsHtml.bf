using System;

// namespace Web.MsHtml
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DISPID_STYLESHEETSCOLLECTION_NAMED_MAX = 1999999;
		public const int32 DISPID_AMBIENT_OFFLINEIFNOTCONNECTED = -5501;
		public const int32 DISPID_AMBIENT_SILENT = -5502;
		public const Guid SID_SEditCommandTarget = .(0x3050f4b5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CGID_EditStateCommands = .(0x3050f4b6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid SID_SHTMLEditHost = .(0x3050f6a0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid SID_SHTMLEditServices = .(0x3050f7f9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const uint32 COOKIEACTION_NONE = 0;
		public const uint32 COOKIEACTION_ACCEPT = 1;
		public const uint32 COOKIEACTION_REJECT = 2;
		public const uint32 COOKIEACTION_DOWNGRADE = 4;
		public const uint32 COOKIEACTION_LEASH = 8;
		public const uint32 COOKIEACTION_SUPPRESS = 16;
		public const uint32 COOKIEACTION_READ = 32;
		public const uint32 PRIVACY_URLISTOPLEVEL = 65536;
		public const uint32 PRIVACY_URLHASCOMPACTPOLICY = 131072;
		public const uint32 PRIVACY_URLHASPOSTDATA = 524288;
		public const uint32 PRIVACY_URLHASPOLICYREFLINK = 1048576;
		public const uint32 PRIVACY_URLHASPOLICYREFHEADER = 2097152;
		public const uint32 PRIVACY_URLHASP3PHEADER = 4194304;
		public const uint32 DEBUGCALLBACKNOTIFICATION_TIMEOUT = 1;
		public const uint32 DEBUGCALLBACKNOTIFICATION_INTERVAL = 2;
		public const uint32 DEBUGCALLBACKNOTIFICATION_IMMEDIATE = 4;
		public const uint32 DEBUGCALLBACKNOTIFICATION_ANIMATIONFRAME = 8;
		public const uint32 DEBUGCALLBACKNOTIFICATION_DOMEVENT = 16;
		public const uint32 DEBUGDOMEVENTPROPAGATIONSTATUS_DEFAULTCANCELED = 1;
		public const uint32 DEBUGDOMEVENTPROPAGATIONSTATUS_STOPIMMEDIATEPROPAGATION = 2;
		public const uint32 DEBUGDOMEVENTPROPAGATIONSTATUS_STOPPROPAGATION = 4;
		public const uint32 DISPID_BEFORENAVIGATE = 100;
		public const uint32 DISPID_NAVIGATECOMPLETE = 101;
		public const uint32 DISPID_STATUSTEXTCHANGE = 102;
		public const uint32 DISPID_QUIT = 103;
		public const uint32 DISPID_DOWNLOADCOMPLETE = 104;
		public const uint32 DISPID_COMMANDSTATECHANGE = 105;
		public const uint32 DISPID_DOWNLOADBEGIN = 106;
		public const uint32 DISPID_NEWWINDOW = 107;
		public const uint32 DISPID_PROGRESSCHANGE = 108;
		public const uint32 DISPID_WINDOWMOVE = 109;
		public const uint32 DISPID_WINDOWRESIZE = 110;
		public const uint32 DISPID_WINDOWACTIVATE = 111;
		public const uint32 DISPID_PROPERTYCHANGE = 112;
		public const uint32 DISPID_TITLECHANGE = 113;
		public const uint32 DISPID_TITLEICONCHANGE = 114;
		public const uint32 DISPID_FRAMEBEFORENAVIGATE = 200;
		public const uint32 DISPID_FRAMENAVIGATECOMPLETE = 201;
		public const uint32 DISPID_FRAMENEWWINDOW = 204;
		public const uint32 DISPID_BEFORENAVIGATE2 = 250;
		public const uint32 DISPID_NEWWINDOW2 = 251;
		public const uint32 DISPID_NAVIGATECOMPLETE2 = 252;
		public const uint32 DISPID_ONQUIT = 253;
		public const uint32 DISPID_ONVISIBLE = 254;
		public const uint32 DISPID_ONTOOLBAR = 255;
		public const uint32 DISPID_ONMENUBAR = 256;
		public const uint32 DISPID_ONSTATUSBAR = 257;
		public const uint32 DISPID_ONFULLSCREEN = 258;
		public const uint32 DISPID_DOCUMENTCOMPLETE = 259;
		public const uint32 DISPID_ONTHEATERMODE = 260;
		public const uint32 DISPID_ONADDRESSBAR = 261;
		public const uint32 DISPID_WINDOWSETRESIZABLE = 262;
		public const uint32 DISPID_WINDOWCLOSING = 263;
		public const uint32 DISPID_WINDOWSETLEFT = 264;
		public const uint32 DISPID_WINDOWSETTOP = 265;
		public const uint32 DISPID_WINDOWSETWIDTH = 266;
		public const uint32 DISPID_WINDOWSETHEIGHT = 267;
		public const uint32 DISPID_CLIENTTOHOSTWINDOW = 268;
		public const uint32 DISPID_SETSECURELOCKICON = 269;
		public const uint32 DISPID_FILEDOWNLOAD = 270;
		public const uint32 DISPID_NAVIGATEERROR = 271;
		public const uint32 DISPID_PRIVACYIMPACTEDSTATECHANGE = 272;
		public const uint32 DISPID_NEWWINDOW3 = 273;
		public const uint32 DISPID_VIEWUPDATE = 281;
		public const uint32 DISPID_SETPHISHINGFILTERSTATUS = 282;
		public const uint32 DISPID_WINDOWSTATECHANGED = 283;
		public const uint32 DISPID_NEWPROCESS = 284;
		public const uint32 DISPID_THIRDPARTYURLBLOCKED = 285;
		public const uint32 DISPID_REDIRECTXDOMAINBLOCKED = 286;
		public const uint32 DISPID_WEBWORKERSTARTED = 288;
		public const uint32 DISPID_WEBWORKERFINISHED = 289;
		public const uint32 DISPID_BEFORESCRIPTEXECUTE = 290;
		public const uint32 DISPID_PRINTTEMPLATEINSTANTIATION = 225;
		public const uint32 DISPID_PRINTTEMPLATETEARDOWN = 226;
		public const uint32 DISPID_UPDATEPAGESTATUS = 227;
		public const uint32 DISPID_WINDOWREGISTERED = 200;
		public const uint32 DISPID_WINDOWREVOKED = 201;
		public const uint32 DISPID_RESETFIRSTBOOTMODE = 1;
		public const uint32 DISPID_RESETSAFEMODE = 2;
		public const uint32 DISPID_REFRESHOFFLINEDESKTOP = 3;
		public const uint32 DISPID_ADDFAVORITE = 4;
		public const uint32 DISPID_ADDCHANNEL = 5;
		public const uint32 DISPID_ADDDESKTOPCOMPONENT = 6;
		public const uint32 DISPID_ISSUBSCRIBED = 7;
		public const uint32 DISPID_NAVIGATEANDFIND = 8;
		public const uint32 DISPID_IMPORTEXPORTFAVORITES = 9;
		public const uint32 DISPID_AUTOCOMPLETESAVEFORM = 10;
		public const uint32 DISPID_AUTOSCAN = 11;
		public const uint32 DISPID_AUTOCOMPLETEATTACH = 12;
		public const uint32 DISPID_SHOWBROWSERUI = 13;
		public const uint32 DISPID_ADDSEARCHPROVIDER = 14;
		public const uint32 DISPID_RUNONCESHOWN = 15;
		public const uint32 DISPID_SKIPRUNONCE = 16;
		public const uint32 DISPID_CUSTOMIZESETTINGS = 17;
		public const uint32 DISPID_SQMENABLED = 18;
		public const uint32 DISPID_PHISHINGENABLED = 19;
		public const uint32 DISPID_BRANDIMAGEURI = 20;
		public const uint32 DISPID_SKIPTABSWELCOME = 21;
		public const uint32 DISPID_DIAGNOSECONNECTION = 22;
		public const uint32 DISPID_CUSTOMIZECLEARTYPE = 23;
		public const uint32 DISPID_ISSEARCHPROVIDERINSTALLED = 24;
		public const uint32 DISPID_ISSEARCHMIGRATED = 25;
		public const uint32 DISPID_DEFAULTSEARCHPROVIDER = 26;
		public const uint32 DISPID_RUNONCEREQUIREDSETTINGSCOMPLETE = 27;
		public const uint32 DISPID_RUNONCEHASSHOWN = 28;
		public const uint32 DISPID_SEARCHGUIDEURL = 29;
		public const uint32 DISPID_ADDSERVICE = 30;
		public const uint32 DISPID_ISSERVICEINSTALLED = 31;
		public const uint32 DISPID_ADDTOFAVORITESBAR = 32;
		public const uint32 DISPID_BUILDNEWTABPAGE = 33;
		public const uint32 DISPID_SETRECENTLYCLOSEDVISIBLE = 34;
		public const uint32 DISPID_SETACTIVITIESVISIBLE = 35;
		public const uint32 DISPID_CONTENTDISCOVERYRESET = 36;
		public const uint32 DISPID_INPRIVATEFILTERINGENABLED = 37;
		public const uint32 DISPID_SUGGESTEDSITESENABLED = 38;
		public const uint32 DISPID_ENABLESUGGESTEDSITES = 39;
		public const uint32 DISPID_NAVIGATETOSUGGESTEDSITES = 40;
		public const uint32 DISPID_SHOWTABSHELP = 41;
		public const uint32 DISPID_SHOWINPRIVATEHELP = 42;
		public const uint32 DISPID_ISSITEMODE = 43;
		public const uint32 DISPID_SETSITEMODEICONOVERLAY = 44;
		public const uint32 DISPID_CLEARSITEMODEICONOVERLAY = 45;
		public const uint32 DISPID_UPDATETHUMBNAILBUTTON = 46;
		public const uint32 DISPID_SETTHUMBNAILBUTTONS = 47;
		public const uint32 DISPID_ADDTHUMBNAILBUTTONS = 48;
		public const uint32 DISPID_ADDSITEMODE = 49;
		public const uint32 DISPID_SETSITEMODEPROPERTIES = 50;
		public const uint32 DISPID_SITEMODECREATEJUMPLIST = 51;
		public const uint32 DISPID_SITEMODEADDJUMPLISTITEM = 52;
		public const uint32 DISPID_SITEMODECLEARJUMPLIST = 53;
		public const uint32 DISPID_SITEMODEADDBUTTONSTYLE = 54;
		public const uint32 DISPID_SITEMODESHOWBUTTONSTYLE = 55;
		public const uint32 DISPID_SITEMODESHOWJUMPLIST = 56;
		public const uint32 DISPID_ADDTRACKINGPROTECTIONLIST = 57;
		public const uint32 DISPID_SITEMODEACTIVATE = 58;
		public const uint32 DISPID_ISSITEMODEFIRSTRUN = 59;
		public const uint32 DISPID_TRACKINGPROTECTIONENABLED = 60;
		public const uint32 DISPID_ACTIVEXFILTERINGENABLED = 61;
		public const uint32 DISPID_PROVISIONNETWORKS = 62;
		public const uint32 DISPID_REPORTSAFEURL = 63;
		public const uint32 DISPID_SITEMODEREFRESHBADGE = 64;
		public const uint32 DISPID_SITEMODECLEARBADGE = 65;
		public const uint32 DISPID_DIAGNOSECONNECTIONUILESS = 66;
		public const uint32 DISPID_LAUNCHNETWORKCLIENTHELP = 67;
		public const uint32 DISPID_CHANGEDEFAULTBROWSER = 68;
		public const uint32 DISPID_STOPPERIODICUPDATE = 69;
		public const uint32 DISPID_STARTPERIODICUPDATE = 70;
		public const uint32 DISPID_CLEARNOTIFICATION = 71;
		public const uint32 DISPID_ENABLENOTIFICATIONQUEUE = 72;
		public const uint32 DISPID_PINNEDSITESTATE = 73;
		public const uint32 DISPID_LAUNCHINTERNETOPTIONS = 74;
		public const uint32 DISPID_STARTPERIODICUPDATEBATCH = 75;
		public const uint32 DISPID_ENABLENOTIFICATIONQUEUESQUARE = 76;
		public const uint32 DISPID_ENABLENOTIFICATIONQUEUEWIDE = 77;
		public const uint32 DISPID_ENABLENOTIFICATIONQUEUELARGE = 78;
		public const uint32 DISPID_SCHEDULEDTILENOTIFICATION = 79;
		public const uint32 DISPID_REMOVESCHEDULEDTILENOTIFICATION = 80;
		public const uint32 DISPID_STARTBADGEUPDATE = 81;
		public const uint32 DISPID_STOPBADGEUPDATE = 82;
		public const uint32 DISPID_ISMETAREFERRERAVAILABLE = 83;
		public const uint32 DISPID_SETEXPERIMENTALFLAG = 84;
		public const uint32 DISPID_GETEXPERIMENTALFLAG = 85;
		public const uint32 DISPID_SETEXPERIMENTALVALUE = 86;
		public const uint32 DISPID_GETEXPERIMENTALVALUE = 87;
		public const uint32 DISPID_HASNEEDIEAUTOLAUNCHFLAG = 88;
		public const uint32 DISPID_GETNEEDIEAUTOLAUNCHFLAG = 89;
		public const uint32 DISPID_SETNEEDIEAUTOLAUNCHFLAG = 90;
		public const uint32 DISPID_LAUNCHIE = 91;
		public const uint32 DISPID_RESETEXPERIMENTALFLAGS = 92;
		public const uint32 DISPID_GETCVLISTDATA = 93;
		public const uint32 DISPID_GETCVLISTLOCALDATA = 94;
		public const uint32 DISPID_GETEMIELISTDATA = 95;
		public const uint32 DISPID_GETEMIELISTLOCALDATA = 96;
		public const uint32 DISPID_OPENFAVORITESPANE = 97;
		public const uint32 DISPID_OPENFAVORITESSETTINGS = 98;
		public const uint32 DISPID_LAUNCHINHVSI = 99;
		public const uint32 DISPID_GETNEEDHVSIAUTOLAUNCHFLAG = 100;
		public const uint32 DISPID_SETNEEDHVSIAUTOLAUNCHFLAG = 101;
		public const uint32 DISPID_HASNEEDHVSIAUTOLAUNCHFLAG = 102;
		public const uint32 DISPID_GETOSSKU = 103;
		public const uint32 DISPID_SETMSDEFAULTS = 104;
		public const uint32 DISPID_SHELLUIHELPERLAST = 105;
		public const uint32 DISPID_ADVANCEERROR = 10;
		public const uint32 DISPID_RETREATERROR = 11;
		public const uint32 DISPID_CANADVANCEERROR = 12;
		public const uint32 DISPID_CANRETREATERROR = 13;
		public const uint32 DISPID_GETERRORLINE = 14;
		public const uint32 DISPID_GETERRORCHAR = 15;
		public const uint32 DISPID_GETERRORCODE = 16;
		public const uint32 DISPID_GETERRORMSG = 17;
		public const uint32 DISPID_GETERRORURL = 18;
		public const uint32 DISPID_GETDETAILSSTATE = 19;
		public const uint32 DISPID_SETDETAILSSTATE = 20;
		public const uint32 DISPID_GETPERERRSTATE = 21;
		public const uint32 DISPID_SETPERERRSTATE = 22;
		public const uint32 DISPID_GETALWAYSSHOWLOCKSTATE = 23;
		public const uint32 DISPID_FAVSELECTIONCHANGE = 1;
		public const uint32 DISPID_SELECTIONCHANGE = 2;
		public const uint32 DISPID_DOUBLECLICK = 3;
		public const uint32 DISPID_INITIALIZED = 4;
		public const uint32 DISPID_MOVESELECTIONUP = 1;
		public const uint32 DISPID_MOVESELECTIONDOWN = 2;
		public const uint32 DISPID_RESETSORT = 3;
		public const uint32 DISPID_NEWFOLDER = 4;
		public const uint32 DISPID_SYNCHRONIZE = 5;
		public const uint32 DISPID_IMPORT = 6;
		public const uint32 DISPID_EXPORT = 7;
		public const uint32 DISPID_INVOKECONTEXTMENU = 8;
		public const uint32 DISPID_MOVESELECTIONTO = 9;
		public const uint32 DISPID_SUBSCRIPTIONSENABLED = 10;
		public const uint32 DISPID_CREATESUBSCRIPTION = 11;
		public const uint32 DISPID_DELETESUBSCRIPTION = 12;
		public const uint32 DISPID_SETROOT = 13;
		public const uint32 DISPID_ENUMOPTIONS = 14;
		public const uint32 DISPID_SELECTEDITEM = 15;
		public const uint32 DISPID_ROOT = 16;
		public const uint32 DISPID_DEPTH = 17;
		public const uint32 DISPID_MODE = 18;
		public const uint32 DISPID_FLAGS = 19;
		public const uint32 DISPID_TVFLAGS = 20;
		public const uint32 DISPID_NSCOLUMNS = 21;
		public const uint32 DISPID_COUNTVIEWTYPES = 22;
		public const uint32 DISPID_SETVIEWTYPE = 23;
		public const uint32 DISPID_SELECTEDITEMS = 24;
		public const uint32 DISPID_EXPAND = 25;
		public const uint32 DISPID_UNSELECTALL = 26;
		public const uint32 TF_NAVIGATE = 2142153644;
		public const uint32 REGSTR_VAL_SMOOTHSCROLL_DEF = 1;
		public const uint32 REGSTR_VAL_USEICM_DEF = 0;
		public const uint32 MAX_SEARCH_FORMAT_STRING = 255;
		public const uint32 REGSTR_VAL_SECURITYWARNONSEND_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYWARNONSENDALWAYS_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYWARNONVIEW_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYALLOWCOOKIES_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYWARNONZONECROSSING_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYWARNONBADCERTVIEWING_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYWARNONBADCERTSENDING_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYDISABLECACHINGOFSSLPAGES_DEF = 0;
		public const uint32 REGSTR_VAL_SECURITYACTIVEX_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYACTICEXSCRIPTS_DEF = 1;
		public const uint32 REGSTR_VAL_SECURITYJAVA_DEF = 1;
		public const uint32 REGSTR_VAL_JAVAJIT_DEF = 0;
		public const uint32 REGSTR_VAL_JAVALOGGING_DEF = 0;
		public const uint32 REGSTR_VAL_VISIBLEBANDS_DEF = 7;
		public const uint32 TOOLSBAND = 1;
		public const uint32 ADDRESSBAND = 2;
		public const uint32 LINKSBAND = 4;
		public const uint32 REGSTR_VAL_SCHANNELENABLEPROTOCOL_DEF = 1;
		public const int32 IE_USE_OE_PRESENT_HKEY = -2147483646;
		public const int32 IE_USE_OE_MAIL_HKEY = -2147483647;
		public const int32 IE_USE_OE_NEWS_HKEY = -2147483647;
		public const uint32 REGSTR_VAL_FONT_SIZE_DEF = 2;
		public const uint32 IDM_UNKNOWN = 0;
		public const uint32 IDM_ALIGNBOTTOM = 1;
		public const uint32 IDM_ALIGNHORIZONTALCENTERS = 2;
		public const uint32 IDM_ALIGNLEFT = 3;
		public const uint32 IDM_ALIGNRIGHT = 4;
		public const uint32 IDM_ALIGNTOGRID = 5;
		public const uint32 IDM_ALIGNTOP = 6;
		public const uint32 IDM_ALIGNVERTICALCENTERS = 7;
		public const uint32 IDM_ARRANGEBOTTOM = 8;
		public const uint32 IDM_ARRANGERIGHT = 9;
		public const uint32 IDM_BRINGFORWARD = 10;
		public const uint32 IDM_BRINGTOFRONT = 11;
		public const uint32 IDM_CENTERHORIZONTALLY = 12;
		public const uint32 IDM_CENTERVERTICALLY = 13;
		public const uint32 IDM_CODE = 14;
		public const uint32 IDM_DELETE = 17;
		public const uint32 IDM_FONTNAME = 18;
		public const uint32 IDM_FONTSIZE = 19;
		public const uint32 IDM_GROUP = 20;
		public const uint32 IDM_HORIZSPACECONCATENATE = 21;
		public const uint32 IDM_HORIZSPACEDECREASE = 22;
		public const uint32 IDM_HORIZSPACEINCREASE = 23;
		public const uint32 IDM_HORIZSPACEMAKEEQUAL = 24;
		public const uint32 IDM_INSERTOBJECT = 25;
		public const uint32 IDM_MULTILEVELREDO = 30;
		public const uint32 IDM_SENDBACKWARD = 32;
		public const uint32 IDM_SENDTOBACK = 33;
		public const uint32 IDM_SHOWTABLE = 34;
		public const uint32 IDM_SIZETOCONTROL = 35;
		public const uint32 IDM_SIZETOCONTROLHEIGHT = 36;
		public const uint32 IDM_SIZETOCONTROLWIDTH = 37;
		public const uint32 IDM_SIZETOFIT = 38;
		public const uint32 IDM_SIZETOGRID = 39;
		public const uint32 IDM_SNAPTOGRID = 40;
		public const uint32 IDM_TABORDER = 41;
		public const uint32 IDM_TOOLBOX = 42;
		public const uint32 IDM_MULTILEVELUNDO = 44;
		public const uint32 IDM_UNGROUP = 45;
		public const uint32 IDM_VERTSPACECONCATENATE = 46;
		public const uint32 IDM_VERTSPACEDECREASE = 47;
		public const uint32 IDM_VERTSPACEINCREASE = 48;
		public const uint32 IDM_VERTSPACEMAKEEQUAL = 49;
		public const uint32 IDM_JUSTIFYFULL = 50;
		public const uint32 IDM_BACKCOLOR = 51;
		public const uint32 IDM_BOLD = 52;
		public const uint32 IDM_BORDERCOLOR = 53;
		public const uint32 IDM_FLAT = 54;
		public const uint32 IDM_FORECOLOR = 55;
		public const uint32 IDM_ITALIC = 56;
		public const uint32 IDM_JUSTIFYCENTER = 57;
		public const uint32 IDM_JUSTIFYGENERAL = 58;
		public const uint32 IDM_JUSTIFYLEFT = 59;
		public const uint32 IDM_JUSTIFYRIGHT = 60;
		public const uint32 IDM_RAISED = 61;
		public const uint32 IDM_SUNKEN = 62;
		public const uint32 IDM_UNDERLINE = 63;
		public const uint32 IDM_CHISELED = 64;
		public const uint32 IDM_ETCHED = 65;
		public const uint32 IDM_SHADOWED = 66;
		public const uint32 IDM_FIND = 67;
		public const uint32 IDM_SHOWGRID = 69;
		public const uint32 IDM_OBJECTVERBLIST0 = 72;
		public const uint32 IDM_OBJECTVERBLIST1 = 73;
		public const uint32 IDM_OBJECTVERBLIST2 = 74;
		public const uint32 IDM_OBJECTVERBLIST3 = 75;
		public const uint32 IDM_OBJECTVERBLIST4 = 76;
		public const uint32 IDM_OBJECTVERBLIST5 = 77;
		public const uint32 IDM_OBJECTVERBLIST6 = 78;
		public const uint32 IDM_OBJECTVERBLIST7 = 79;
		public const uint32 IDM_OBJECTVERBLIST8 = 80;
		public const uint32 IDM_OBJECTVERBLIST9 = 81;
		public const uint32 IDM_OBJECTVERBLISTLAST = 81;
		public const uint32 IDM_CONVERTOBJECT = 82;
		public const uint32 IDM_CUSTOMCONTROL = 83;
		public const uint32 IDM_CUSTOMIZEITEM = 84;
		public const uint32 IDM_RENAME = 85;
		public const uint32 IDM_IMPORT = 86;
		public const uint32 IDM_NEWPAGE = 87;
		public const uint32 IDM_MOVE = 88;
		public const uint32 IDM_CANCEL = 89;
		public const uint32 IDM_FONT = 90;
		public const uint32 IDM_STRIKETHROUGH = 91;
		public const uint32 IDM_DELETEWORD = 92;
		public const uint32 IDM_EXECPRINT = 93;
		public const uint32 IDM_JUSTIFYNONE = 94;
		public const uint32 IDM_TRISTATEBOLD = 95;
		public const uint32 IDM_TRISTATEITALIC = 96;
		public const uint32 IDM_TRISTATEUNDERLINE = 97;
		public const uint32 IDM_FORWARDDELETE = 98;
		public const uint32 IDM_FOLLOW_ANCHOR = 2008;
		public const uint32 IDM_INSINPUTIMAGE = 2114;
		public const uint32 IDM_INSINPUTBUTTON = 2115;
		public const uint32 IDM_INSINPUTRESET = 2116;
		public const uint32 IDM_INSINPUTSUBMIT = 2117;
		public const uint32 IDM_INSINPUTUPLOAD = 2118;
		public const uint32 IDM_INSFIELDSET = 2119;
		public const uint32 IDM_PASTEINSERT = 2120;
		public const uint32 IDM_REPLACE = 2121;
		public const uint32 IDM_EDITSOURCE = 2122;
		public const uint32 IDM_BOOKMARK = 2123;
		public const uint32 IDM_HYPERLINK = 2124;
		public const uint32 IDM_UNLINK = 2125;
		public const uint32 IDM_BROWSEMODE = 2126;
		public const uint32 IDM_EDITMODE = 2127;
		public const uint32 IDM_UNBOOKMARK = 2128;
		public const uint32 IDM_TOOLBARS = 2130;
		public const uint32 IDM_STATUSBAR = 2131;
		public const uint32 IDM_FORMATMARK = 2132;
		public const uint32 IDM_TEXTONLY = 2133;
		public const uint32 IDM_OPTIONS = 2135;
		public const uint32 IDM_FOLLOWLINKC = 2136;
		public const uint32 IDM_FOLLOWLINKN = 2137;
		public const uint32 IDM_VIEWSOURCE = 2139;
		public const uint32 IDM_ZOOMPOPUP = 2140;
		public const uint32 IDM_BASELINEFONT1 = 2141;
		public const uint32 IDM_BASELINEFONT2 = 2142;
		public const uint32 IDM_BASELINEFONT3 = 2143;
		public const uint32 IDM_BASELINEFONT4 = 2144;
		public const uint32 IDM_BASELINEFONT5 = 2145;
		public const uint32 IDM_HORIZONTALLINE = 2150;
		public const uint32 IDM_LINEBREAKNORMAL = 2151;
		public const uint32 IDM_LINEBREAKLEFT = 2152;
		public const uint32 IDM_LINEBREAKRIGHT = 2153;
		public const uint32 IDM_LINEBREAKBOTH = 2154;
		public const uint32 IDM_NONBREAK = 2155;
		public const uint32 IDM_SPECIALCHAR = 2156;
		public const uint32 IDM_HTMLSOURCE = 2157;
		public const uint32 IDM_IFRAME = 2158;
		public const uint32 IDM_HTMLCONTAIN = 2159;
		public const uint32 IDM_TEXTBOX = 2161;
		public const uint32 IDM_TEXTAREA = 2162;
		public const uint32 IDM_CHECKBOX = 2163;
		public const uint32 IDM_RADIOBUTTON = 2164;
		public const uint32 IDM_DROPDOWNBOX = 2165;
		public const uint32 IDM_LISTBOX = 2166;
		public const uint32 IDM_BUTTON = 2167;
		public const uint32 IDM_IMAGE = 2168;
		public const uint32 IDM_OBJECT = 2169;
		public const uint32 IDM_1D = 2170;
		public const uint32 IDM_IMAGEMAP = 2171;
		public const uint32 IDM_FILE = 2172;
		public const uint32 IDM_COMMENT = 2173;
		public const uint32 IDM_SCRIPT = 2174;
		public const uint32 IDM_JAVAAPPLET = 2175;
		public const uint32 IDM_PLUGIN = 2176;
		public const uint32 IDM_PAGEBREAK = 2177;
		public const uint32 IDM_HTMLAREA = 2178;
		public const uint32 IDM_PARAGRAPH = 2180;
		public const uint32 IDM_FORM = 2181;
		public const uint32 IDM_MARQUEE = 2182;
		public const uint32 IDM_LIST = 2183;
		public const uint32 IDM_ORDERLIST = 2184;
		public const uint32 IDM_UNORDERLIST = 2185;
		public const uint32 IDM_INDENT = 2186;
		public const uint32 IDM_OUTDENT = 2187;
		public const uint32 IDM_PREFORMATTED = 2188;
		public const uint32 IDM_ADDRESS = 2189;
		public const uint32 IDM_BLINK = 2190;
		public const uint32 IDM_DIV = 2191;
		public const uint32 IDM_TABLEINSERT = 2200;
		public const uint32 IDM_RCINSERT = 2201;
		public const uint32 IDM_CELLINSERT = 2202;
		public const uint32 IDM_CAPTIONINSERT = 2203;
		public const uint32 IDM_CELLMERGE = 2204;
		public const uint32 IDM_CELLSPLIT = 2205;
		public const uint32 IDM_CELLSELECT = 2206;
		public const uint32 IDM_ROWSELECT = 2207;
		public const uint32 IDM_COLUMNSELECT = 2208;
		public const uint32 IDM_TABLESELECT = 2209;
		public const uint32 IDM_TABLEPROPERTIES = 2210;
		public const uint32 IDM_CELLPROPERTIES = 2211;
		public const uint32 IDM_ROWINSERT = 2212;
		public const uint32 IDM_COLUMNINSERT = 2213;
		public const uint32 IDM_HELP_CONTENT = 2220;
		public const uint32 IDM_HELP_ABOUT = 2221;
		public const uint32 IDM_HELP_README = 2222;
		public const uint32 IDM_REMOVEFORMAT = 2230;
		public const uint32 IDM_PAGEINFO = 2231;
		public const uint32 IDM_TELETYPE = 2232;
		public const uint32 IDM_GETBLOCKFMTS = 2233;
		public const uint32 IDM_BLOCKFMT = 2234;
		public const uint32 IDM_SHOWHIDE_CODE = 2235;
		public const uint32 IDM_TABLE = 2236;
		public const uint32 IDM_COPYFORMAT = 2237;
		public const uint32 IDM_PASTEFORMAT = 2238;
		public const uint32 IDM_GOTO = 2239;
		public const uint32 IDM_CHANGEFONT = 2240;
		public const uint32 IDM_CHANGEFONTSIZE = 2241;
		public const uint32 IDM_CHANGECASE = 2246;
		public const uint32 IDM_SHOWSPECIALCHAR = 2249;
		public const uint32 IDM_SUBSCRIPT = 2247;
		public const uint32 IDM_SUPERSCRIPT = 2248;
		public const uint32 IDM_CENTERALIGNPARA = 2250;
		public const uint32 IDM_LEFTALIGNPARA = 2251;
		public const uint32 IDM_RIGHTALIGNPARA = 2252;
		public const uint32 IDM_REMOVEPARAFORMAT = 2253;
		public const uint32 IDM_APPLYNORMAL = 2254;
		public const uint32 IDM_APPLYHEADING1 = 2255;
		public const uint32 IDM_APPLYHEADING2 = 2256;
		public const uint32 IDM_APPLYHEADING3 = 2257;
		public const uint32 IDM_DOCPROPERTIES = 2260;
		public const uint32 IDM_ADDFAVORITES = 2261;
		public const uint32 IDM_COPYSHORTCUT = 2262;
		public const uint32 IDM_SAVEBACKGROUND = 2263;
		public const uint32 IDM_SETWALLPAPER = 2264;
		public const uint32 IDM_COPYBACKGROUND = 2265;
		public const uint32 IDM_CREATESHORTCUT = 2266;
		public const uint32 IDM_PAGE = 2267;
		public const uint32 IDM_SAVETARGET = 2268;
		public const uint32 IDM_SHOWPICTURE = 2269;
		public const uint32 IDM_SAVEPICTURE = 2270;
		public const uint32 IDM_DYNSRCPLAY = 2271;
		public const uint32 IDM_DYNSRCSTOP = 2272;
		public const uint32 IDM_PRINTTARGET = 2273;
		public const uint32 IDM_IMGARTPLAY = 2274;
		public const uint32 IDM_IMGARTSTOP = 2275;
		public const uint32 IDM_IMGARTREWIND = 2276;
		public const uint32 IDM_PRINTQUERYJOBSPENDING = 2277;
		public const uint32 IDM_SETDESKTOPITEM = 2278;
		public const uint32 IDM_CONTEXTMENU = 2280;
		public const uint32 IDM_GOBACKWARD = 2282;
		public const uint32 IDM_GOFORWARD = 2283;
		public const uint32 IDM_PRESTOP = 2284;
		public const uint32 IDM_GOTOCLIPBOARDADDRESS = 2285;
		public const uint32 IDM_GOTOCLIPBOARDTEXT = 2286;
		public const uint32 IDM_MP_MYPICS = 2287;
		public const uint32 IDM_MP_EMAILPICTURE = 2288;
		public const uint32 IDM_MP_PRINTPICTURE = 2289;
		public const uint32 IDM_CREATELINK = 2290;
		public const uint32 IDM_COPYCONTENT = 2291;
		public const uint32 IDM_LANGUAGE = 2292;
		public const uint32 IDM_GETPRINTTEMPLATE = 2295;
		public const uint32 IDM_SETPRINTTEMPLATE = 2296;
		public const uint32 IDM_TEMPLATE_PAGESETUP = 2298;
		public const uint32 IDM_REFRESH = 2300;
		public const uint32 IDM_STOPDOWNLOAD = 2301;
		public const uint32 IDM_ENABLE_INTERACTION = 2302;
		public const uint32 IDM_LAUNCHDEBUGGER = 2310;
		public const uint32 IDM_BREAKATNEXT = 2311;
		public const uint32 IDM_INSINPUTHIDDEN = 2312;
		public const uint32 IDM_INSINPUTPASSWORD = 2313;
		public const uint32 IDM_OVERWRITE = 2314;
		public const uint32 IDM_PARSECOMPLETE = 2315;
		public const uint32 IDM_HTMLEDITMODE = 2316;
		public const uint32 IDM_REGISTRYREFRESH = 2317;
		public const uint32 IDM_COMPOSESETTINGS = 2318;
		public const uint32 IDM_SHOWALLTAGS = 2327;
		public const uint32 IDM_SHOWALIGNEDSITETAGS = 2321;
		public const uint32 IDM_SHOWSCRIPTTAGS = 2322;
		public const uint32 IDM_SHOWSTYLETAGS = 2323;
		public const uint32 IDM_SHOWCOMMENTTAGS = 2324;
		public const uint32 IDM_SHOWAREATAGS = 2325;
		public const uint32 IDM_SHOWUNKNOWNTAGS = 2326;
		public const uint32 IDM_SHOWMISCTAGS = 2320;
		public const uint32 IDM_SHOWZEROBORDERATDESIGNTIME = 2328;
		public const uint32 IDM_AUTODETECT = 2329;
		public const uint32 IDM_SCRIPTDEBUGGER = 2330;
		public const uint32 IDM_GETBYTESDOWNLOADED = 2331;
		public const uint32 IDM_NOACTIVATENORMALOLECONTROLS = 2332;
		public const uint32 IDM_NOACTIVATEDESIGNTIMECONTROLS = 2333;
		public const uint32 IDM_NOACTIVATEJAVAAPPLETS = 2334;
		public const uint32 IDM_NOFIXUPURLSONPASTE = 2335;
		public const uint32 IDM_EMPTYGLYPHTABLE = 2336;
		public const uint32 IDM_ADDTOGLYPHTABLE = 2337;
		public const uint32 IDM_REMOVEFROMGLYPHTABLE = 2338;
		public const uint32 IDM_REPLACEGLYPHCONTENTS = 2339;
		public const uint32 IDM_SHOWWBRTAGS = 2340;
		public const uint32 IDM_PERSISTSTREAMSYNC = 2341;
		public const uint32 IDM_SETDIRTY = 2342;
		public const uint32 IDM_RUNURLSCRIPT = 2343;
		public const uint32 IDM_ZOOMRATIO = 2344;
		public const uint32 IDM_GETZOOMNUMERATOR = 2345;
		public const uint32 IDM_GETZOOMDENOMINATOR = 2346;
		public const uint32 IDM_DIRLTR = 2350;
		public const uint32 IDM_DIRRTL = 2351;
		public const uint32 IDM_BLOCKDIRLTR = 2352;
		public const uint32 IDM_BLOCKDIRRTL = 2353;
		public const uint32 IDM_INLINEDIRLTR = 2354;
		public const uint32 IDM_INLINEDIRRTL = 2355;
		public const uint32 IDM_ISTRUSTEDDLG = 2356;
		public const uint32 IDM_INSERTSPAN = 2357;
		public const uint32 IDM_LOCALIZEEDITOR = 2358;
		public const uint32 IDM_SAVEPRETRANSFORMSOURCE = 2370;
		public const uint32 IDM_VIEWPRETRANSFORMSOURCE = 2371;
		public const uint32 IDM_SCROLL_HERE = 2380;
		public const uint32 IDM_SCROLL_TOP = 2381;
		public const uint32 IDM_SCROLL_BOTTOM = 2382;
		public const uint32 IDM_SCROLL_PAGEUP = 2383;
		public const uint32 IDM_SCROLL_PAGEDOWN = 2384;
		public const uint32 IDM_SCROLL_UP = 2385;
		public const uint32 IDM_SCROLL_DOWN = 2386;
		public const uint32 IDM_SCROLL_LEFTEDGE = 2387;
		public const uint32 IDM_SCROLL_RIGHTEDGE = 2388;
		public const uint32 IDM_SCROLL_PAGELEFT = 2389;
		public const uint32 IDM_SCROLL_PAGERIGHT = 2390;
		public const uint32 IDM_SCROLL_LEFT = 2391;
		public const uint32 IDM_SCROLL_RIGHT = 2392;
		public const uint32 IDM_MULTIPLESELECTION = 2393;
		public const uint32 IDM_2D_POSITION = 2394;
		public const uint32 IDM_2D_ELEMENT = 2395;
		public const uint32 IDM_1D_ELEMENT = 2396;
		public const uint32 IDM_ABSOLUTE_POSITION = 2397;
		public const uint32 IDM_LIVERESIZE = 2398;
		public const uint32 IDM_ATOMICSELECTION = 2399;
		public const uint32 IDM_AUTOURLDETECT_MODE = 2400;
		public const uint32 IDM_IE50_PASTE = 2401;
		public const uint32 IDM_IE50_PASTE_MODE = 2402;
		public const uint32 IDM_GETIPRINT = 2403;
		public const uint32 IDM_DISABLE_EDITFOCUS_UI = 2404;
		public const uint32 IDM_RESPECTVISIBILITY_INDESIGN = 2405;
		public const uint32 IDM_CSSEDITING_LEVEL = 2406;
		public const uint32 IDM_UI_OUTDENT = 2407;
		public const uint32 IDM_UPDATEPAGESTATUS = 2408;
		public const uint32 IDM_IME_ENABLE_RECONVERSION = 2409;
		public const uint32 IDM_KEEPSELECTION = 2410;
		public const uint32 IDM_UNLOADDOCUMENT = 2411;
		public const uint32 IDM_OVERRIDE_CURSOR = 2420;
		public const uint32 IDM_PEERHITTESTSAMEINEDIT = 2423;
		public const uint32 IDM_TRUSTAPPCACHE = 2425;
		public const uint32 IDM_BACKGROUNDIMAGECACHE = 2430;
		public const uint32 IDM_GETUSERACTIONTIME = 2431;
		public const uint32 IDM_BEGINUSERACTION = 2432;
		public const uint32 IDM_ENDUSERACTION = 2433;
		public const uint32 IDM_SETCUSTOMCURSOR = 2434;
		public const uint32 IDM_FOLLOWLINKT = 2435;
		public const uint32 IDM_CARETBROWSINGMODE = 2436;
		public const uint32 IDM_STYLEMENU_SETNOSTYLE = 2437;
		public const uint32 IDM_STYLEMENU_GETNOSTYLE = 2438;
		public const uint32 IDM_STYLEMENU_GETPREFSTYLE = 2439;
		public const uint32 IDM_STYLEMENU_CHANGESELECTEDSTYLE = 2440;
		public const uint32 IDM_MEDIA_PLAYPAUSE = 2441;
		public const uint32 IDM_MEDIA_MUTEUNMUTE = 2442;
		public const uint32 IDM_MEDIA_PLAY = 2443;
		public const uint32 IDM_MEDIA_PAUSE = 2444;
		public const uint32 IDM_MEDIA_STOP = 2445;
		public const uint32 IDM_MEDIA_FULLSCREEN_TOGGLE = 2446;
		public const uint32 IDM_MEDIA_FULLSCREEN_EXIT = 2447;
		public const uint32 IDM_MEDIA_VOLUME_UP = 2448;
		public const uint32 IDM_MEDIA_VOLUME_DOWN = 2449;
		public const uint32 IDM_MEDIA_SEEK_TO_START = 2450;
		public const uint32 IDM_MEDIA_SEEK_TO_END = 2451;
		public const uint32 IDM_MEDIA_SEEK_FWD_SMALL = 2452;
		public const uint32 IDM_MEDIA_SEEK_BACK_SMALL = 2453;
		public const uint32 IDM_MEDIA_SEEK_FWD_LARGE = 2454;
		public const uint32 IDM_MEDIA_SEEK_BACK_LARGE = 2455;
		public const uint32 IDM_MEDIA_RATE_FASTER = 2456;
		public const uint32 IDM_MEDIA_RATE_SLOWER = 2457;
		public const uint32 IDM_MEDIA_SHOWCONTROLS_TOGGLE = 2458;
		public const uint32 IDM_MEDIA_ZOOMMODE_TOGGLE = 2459;
		public const uint32 IDM_MEDIA_FRAMESTEP_FWD = 2460;
		public const uint32 IDM_MEDIA_FRAMESTEP_BACK = 2461;
		public const uint32 IDM_MEDIA_MUTE = 2462;
		public const uint32 IDM_MEDIA_UNMUTE = 2463;
		public const uint32 IDM_MEDIA_SHOW_AUDIO_ACCESS = 2464;
		public const uint32 IDM_MEDIA_SHOW_SUBTITLE_ACCESS = 2465;
		public const uint32 IDM_MEDIA_PLAYRATE0 = 2480;
		public const uint32 IDM_MEDIA_PLAYRATE1 = 2481;
		public const uint32 IDM_MEDIA_PLAYRATE2 = 2482;
		public const uint32 IDM_MEDIA_PLAYRATE3 = 2483;
		public const uint32 IDM_MEDIA_PLAYRATE4 = 2484;
		public const uint32 IDM_MEDIA_PLAYRATE5 = 2485;
		public const uint32 IDM_MEDIA_PLAYRATE6 = 2486;
		public const uint32 IDM_MEDIA_PLAYRATE7 = 2487;
		public const uint32 IDM_MEDIA_PLAYRATE8 = 2488;
		public const uint32 IDM_MEDIA_PLAYRATE9 = 2489;
		public const uint32 IDM_PASTECONTENTONLY = 2500;
		public const uint32 IDM_PASTETEXTONLY = 2501;
		public const uint32 IDM_INSERTHTML = 2502;
		public const uint32 IDM_DEFAULTBLOCK = 6046;
		public const uint32 IDM_MIMECSET__FIRST__ = 3609;
		public const uint32 IDM_MIMECSET__LAST__ = 3699;
		public const uint32 IDM_MENUEXT_FIRST__ = 3700;
		public const uint32 IDM_MENUEXT_LAST__ = 3732;
		public const uint32 IDM_MENUEXT_COUNT = 3733;
		public const uint32 IDM_ADDCONSOLEMESSAGERECEIVER = 3800;
		public const uint32 IDM_REMOVECONSOLEMESSAGERECEIVER = 3801;
		public const uint32 IDM_STARTDIAGNOSTICSMODE = 3802;
		public const uint32 IDM_GETSCRIPTENGINE = 3803;
		public const uint32 IDM_ADDDEBUGCALLBACKRECEIVER = 3804;
		public const uint32 IDM_REMOVEDEBUGCALLBACKRECEIVER = 3805;
		public const uint32 IDM_DEFAULTPARAGRAPHSEPARATOR = 3900;
		public const uint32 IDM_BEGINUNDOUNIT = 3901;
		public const uint32 IDM_ENDUNDOUNIT = 3902;
		public const uint32 IDM_CLEARUNDO = 3903;
		public const uint32 IDM_INSPECTELEMENT = 3904;
		public const uint32 IDM_SHAREPICTURE = 3905;
		public const uint32 IDM_ENABLE_OBJECT_RESIZING = 3906;
		public const uint32 IDM_INSERTTEXT = 3907;
		public const uint32 IDM_LAUNCHURICALLBACK = 3908;
		public const uint32 IDM_FOLLOWLINKN_INPRIVATE = 3909;
		public const uint32 IDM_FOLLOWLINKT_INPRIVATE = 3910;
		public const uint32 IDM_FOLLOWLINKEDGE = 3911;
		public const uint32 IDM_OPEN = 2000;
		public const uint32 IDM_NEW = 2001;
		public const uint32 IDM_SAVE = 70;
		public const uint32 IDM_SAVEAS = 71;
		public const uint32 IDM_SAVECOPYAS = 2002;
		public const uint32 IDM_PRINTPREVIEW = 2003;
		public const uint32 IDM_SHOWPRINT = 2010;
		public const uint32 IDM_SHOWPAGESETUP = 2011;
		public const uint32 IDM_PRINT = 27;
		public const uint32 IDM_PAGESETUP = 2004;
		public const uint32 IDM_SPELL = 2005;
		public const uint32 IDM_PASTESPECIAL = 2006;
		public const uint32 IDM_CLEARSELECTION = 2007;
		public const uint32 IDM_PROPERTIES = 28;
		public const uint32 IDM_REDO = 29;
		public const uint32 IDM_UNDO = 43;
		public const uint32 IDM_SELECTALL = 31;
		public const uint32 IDM_ZOOMPERCENT = 50;
		public const uint32 IDM_GETZOOM = 68;
		public const uint32 IDM_STOP = 2138;
		public const uint32 IDM_COPY = 15;
		public const uint32 IDM_CUT = 16;
		public const uint32 IDM_PASTE = 26;
		public const uint32 IDM_SAVEPDF = 99;
		public const uint32 IDM_TOGGLEREADINGBAR = 15209;
		public const uint32 IDM_ADDPDFHIGHLIGHT = 15210;
		public const uint32 IDM_DELETEPDFHIGHLIGHT = 15211;
		public const uint32 IDM_ADDPDFNOTE = 15212;
		public const uint32 IDM_OPENPDFNOTE = 15213;
		public const uint32 IDM_EDITPDFHIGHLIGHT = 15214;
		public const uint32 IDM_PINKHIGHLIGHT = 15215;
		public const uint32 IDM_BLUEHIGHLIGHT = 15216;
		public const uint32 IDM_GREENHIGHLIGHT = 15217;
		public const uint32 IDM_YELLOWHIGHLIGHT = 15218;
		public const uint32 IDM_NONEHIGHLIGHT = 15219;
		public const uint32 IDM_PDFREADALOUD = 15220;
		public const uint32 IDM_SHAREPDF = 15221;
		public const uint32 IDM_PDFDEFINE = 15222;
		public const int32 CMD_ZOOM_PAGEWIDTH = -1;
		public const int32 CMD_ZOOM_ONEPAGE = -2;
		public const int32 CMD_ZOOM_TWOPAGES = -3;
		public const int32 CMD_ZOOM_SELECTION = -4;
		public const int32 CMD_ZOOM_FIT = -5;
		public const uint32 IDM_CONTEXT = 1;
		public const uint32 IDM_HWND = 2;
		public const uint32 IDM_NEW_TOPLEVELWINDOW = 7050;
		public const uint32 IDM_PRESERVEUNDOALWAYS = 6049;
		public const uint32 IDM_PERSISTDEFAULTVALUES = 7100;
		public const uint32 IDM_PROTECTMETATAGS = 7101;
		public const uint32 IDM_GETFRAMEZONE = 6037;
		public const uint32 IDM_REFRESH_THIS = 6042;
		public const uint32 IDM_MENUEXT_PLACEHOLDER = 6047;
		public const uint32 IDM_FIRE_PRINTTEMPLATEUP = 15000;
		public const uint32 IDM_FIRE_PRINTTEMPLATEDOWN = 15001;
		public const uint32 IDM_SETPRINTHANDLES = 15002;
		public const uint32 IDM_CLEARAUTHENTICATIONCACHE = 15003;
		public const uint32 IDM_GETUSERINITFLAGS = 15004;
		public const uint32 IDM_GETDOCDLGFLAGS = 15005;
		public const uint32 IDM_OLEWINDOWSTATECHANGED = 15006;
		public const uint32 IDM_ACTIVEXINSTALLSCOPE = 15007;
		public const uint32 IDM_SETSESSIONDOCUMENTMODE = 15008;
		public const uint32 IDM_GETSESSIONDOCUMENTMODE = 15009;
		public const uint32 IDM_SETPROFILINGONSTART = 15010;
		public const uint32 IDM_GETPROFILINGONSTART = 15011;
		public const uint32 IDM_SETSCRIPTCONSOLE = 15012;
		public const uint32 IDM_SETNAVIGATEEVENTSINK = 15013;
		public const uint32 IDM_SETDEVTOOLBARCONSOLE = 15016;
		public const uint32 IDM_POPSTATEEVENT = 15017;
		public const uint32 IDM_SETPARTIALLAYOUTSTATUS = 15021;
		public const uint32 IDM_GETPARTIALLAYOUTSTATUS = 15022;
		public const uint32 IDM_ADDPARTIALTESTSTEPCOUNT = 15023;
		public const uint32 IDM_SETL9QUIRKSEMULATIONENABLED = 15024;
		public const uint32 IDM_GETL9QUIRKSEMULATIONENABLED = 15025;
		public const uint32 IDM_SETPOINTERLOCKCONSENT = 15026;
		public const uint32 IDM_GETDEFAULTZOOMLEVEL = 15027;
		public const uint32 IDM_GETELEMENTBOUNDINGBOX = 15028;
		public const uint32 IDM_SETGEOLOCATIONCONSENT = 15029;
		public const uint32 IDM_ACTIVEXFILTERINGENABLED = 15030;
		public const uint32 IDM_SHARE = 15031;
		public const uint32 IDM_SHAREAPPCACHEEVENT = 15033;
		public const uint32 IDM_GETPRINTMANAGERDOCSOURCE = 15038;
		public const uint32 IDM_SETEXTRAHEADERS = 15039;
		public const uint32 IDM_SETACCESSIBILITYNAME = 15040;
		public const uint32 IDM_UPDATESETTINGSFROMREGISTRY = 15041;
		public const uint32 IDM_PERFORMEDITACTIVATION = 15042;
		public const uint32 IDM_SETDEFAULTBACKGROUNDCOLOR = 15043;
		public const uint32 IDM_GETDEFAULTBACKGROUNDCOLOR = 15044;
		public const uint32 IDM_NOTIFYZOOMANDSCROLLANIMATIONEND = 15045;
		public const uint32 IDM_NOTIFYCONTEXTMENUDISMISSED = 15046;
		public const uint32 IDM_GETPRINTMANAGERDOCSOURCEASYNC = 15047;
		public const uint32 IDM_SETPAGEACTIONALLOWEDFLAGS = 15100;
		public const uint32 IDM_INVOKEFLIPAHEADTARGET = 15200;
		public const uint32 IDM_ENABLEFLIPAHEADTARGET = 15201;
		public const uint32 IDM_DEBUGGERDYNAMICATTACH = 15202;
		public const uint32 IDM_DEBUGGERDYNAMICDETACH = 15203;
		public const uint32 IDM_DEBUGGERDYNAMICATTACHSOURCERUNDOWN = 15204;
		public const uint32 IDM_GETDEBUGGERSTATE = 15205;
		public const uint32 IDM_SELECTIONSEARCH = 15206;
		public const uint32 IDM_SHOWSHAREUI = 15207;
		public const uint32 IDM_RUNFLASH = 15208;
		public const uint32 DISPID_INTERNAL_CELEMENTCLASSCACHE = 2147483648;
		public const uint32 DISPID_HTMLOBJECT = 66036;
		public const uint32 DISPID_ELEMENT = 66536;
		public const uint32 DISPID_SITE = 67536;
		public const uint32 DISPID_OBJECT = 68536;
		public const uint32 DISPID_STYLE = 69536;
		public const uint32 DISPID_BASE_STYLE = 70036;
		public const uint32 DISPID_ATTRS = 70536;
		public const uint32 DISPID_EVENTS = 71536;
		public const uint32 DISPID_XOBJ_EXPANDO = 72536;
		public const uint32 DISPID_XOBJ_ORDINAL = 73536;
		public const uint32 DISPID_ACTIVEX_EXPANDO_BASE = 72536;
		public const uint32 DISPID_ACTIVEX_EXPANDO_MAX = 73535;
		public const uint32 DISPID_OBJECT_ORDINAL_BASE = 73536;
		public const uint32 DISPID_OBJECT_ORDINAL_MAX = 74535;
		public const uint32 DISPID_COLLECTION_MIN = 1000000;
		public const uint32 DISPID_COLLECTION_MAX = 2999999;
		public const uint32 DISPID_STYLESHEETSCOLLECTION_NAMED_BASE = 1000000;
		public const uint32 DISPID_STYLESHEETSCOLLECTION_ORDINAL_BASE = 2000000;
		public const uint32 DISPID_STYLESHEETSCOLLECTION_ORDINAL_MAX = 2999999;
		public const uint32 DISPID_EXPANDO_BASE = 3000000;
		public const uint32 DISPID_EXPANDO_MAX = 3999999;
		public const uint32 DISPID_EVENTHOOK_SENSITIVE_BASE = 4000000;
		public const uint32 DISPID_EVENTHOOK_SENSITIVE_MAX = 4499999;
		public const uint32 DISPID_EVENTHOOK_INSENSITIVE_BASE = 4500000;
		public const uint32 DISPID_EVENTHOOK_INSENSITIVE_MAX = 4999999;
		public const uint32 DISPID_PEER_HOLDER_BASE = 5000000;
		public const uint32 DISPID_CANVASPIXELARRAY_BASE = 5000000;
		public const uint32 DISPID_CANVASPIXELARRAY_MAX = 2000000000;
		public const uint32 DISPID_CommonCtrl_FONTNAME = 1;
		public const uint32 DISPID_CommonCtrl_FONTSIZE = 2;
		public const uint32 DISPID_CommonCtrl_FONTBOLD = 3;
		public const uint32 DISPID_CommonCtrl_FONTITAL = 4;
		public const uint32 DISPID_CommonCtrl_FONTUNDER = 5;
		public const uint32 DISPID_CommonCtrl_FONTSTRIKE = 6;
		public const uint32 DISPID_CommonCtrl_FONTWEIGHT = 7;
		public const uint32 DISPID_CommonCtrl_FONTCHARSET = 8;
		public const uint32 DISPID_CommonCtrl_FONTSUPERSCRIPT = 9;
		public const uint32 DISPID_CommonCtrl_FONTSUBSCRIPT = 10;
		public const int32 DISPID_MSDATASRCINTERFACE = -3900;
		public const int32 DISPID_ADVISEDATASRCCHANGEEVENT = -3901;
		public const uint32 DISPID_HTMLDLG = 25000;
		public const uint32 DISPID_HTMLDLGMODEL = 26000;
		public const uint32 DISPID_HTMLPOPUP = 27000;
		public const uint32 DISPID_HTMLAPP = 5000;
		public const uint32 STDPROPID_XOBJ_NAME = 65536;
		public const uint32 STDPROPID_XOBJ_INDEX = 65537;
		public const uint32 STDPROPID_IE3XOBJ_OBJECTALIGN = 65537;
		public const uint32 STDPROPID_XOBJ_BASEHREF = 65538;
		public const uint32 STDPROPID_XOBJ_LEFT = 65539;
		public const uint32 STDPROPID_XOBJ_TOP = 65540;
		public const uint32 STDPROPID_XOBJ_WIDTH = 65541;
		public const uint32 STDPROPID_XOBJ_HEIGHT = 65542;
		public const uint32 STDPROPID_XOBJ_VISIBLE = 65543;
		public const uint32 STDPROPID_XOBJ_PARENT = 65544;
		public const uint32 STDPROPID_XOBJ_DRAGMODE = 65545;
		public const uint32 STDPROPID_XOBJ_DRAGICON = 65546;
		public const uint32 STDPROPID_XOBJ_TAG = 65547;
		public const uint32 STDPROPID_XOBJ_TABSTOP = 65550;
		public const uint32 STDPROPID_XOBJ_TABINDEX = 65551;
		public const uint32 STDPROPID_XOBJ_HELPCONTEXTID = 65586;
		public const uint32 STDPROPID_XOBJ_DEFAULT = 65591;
		public const uint32 STDPROPID_XOBJ_CANCEL = 65592;
		public const uint32 STDPROPID_XOBJ_LEFTNORUN = 65593;
		public const uint32 STDPROPID_XOBJ_TOPNORUN = 65594;
		public const uint32 STDPROPID_XOBJ_ALIGNPERSIST = 65596;
		public const uint32 STDPROPID_XOBJ_LINKTIMEOUT = 65597;
		public const uint32 STDPROPID_XOBJ_LINKTOPIC = 65598;
		public const uint32 STDPROPID_XOBJ_LINKITEM = 65599;
		public const uint32 STDPROPID_XOBJ_LINKMODE = 65600;
		public const uint32 STDPROPID_XOBJ_DATACHANGED = 65601;
		public const uint32 STDPROPID_XOBJ_DATAFIELD = 65602;
		public const uint32 STDPROPID_XOBJ_DATASOURCE = 65603;
		public const uint32 STDPROPID_XOBJ_WHATSTHISHELPID = 65604;
		public const uint32 STDPROPID_XOBJ_CONTROLTIPTEXT = 65605;
		public const uint32 STDPROPID_XOBJ_STATUSBARTEXT = 65606;
		public const uint32 STDPROPID_XOBJ_APPLICATION = 65607;
		public const uint32 STDPROPID_XOBJ_BLOCKALIGN = 65608;
		public const uint32 STDPROPID_XOBJ_CONTROLALIGN = 65609;
		public const uint32 STDPROPID_XOBJ_STYLE = 65610;
		public const uint32 STDPROPID_XOBJ_COUNT = 65611;
		public const uint32 STDPROPID_XOBJ_DISABLED = 65612;
		public const uint32 STDPROPID_XOBJ_RIGHT = 65613;
		public const uint32 STDPROPID_XOBJ_BOTTOM = 65614;
		public const uint32 STDPROPID_XOBJ_GETSVGDOCUMENT = 65615;
		public const uint32 STDDISPID_XOBJ_ONFOCUS = 65537;
		public const uint32 STDDISPID_XOBJ_BEFOREUPDATE = 65540;
		public const uint32 STDDISPID_XOBJ_AFTERUPDATE = 65541;
		public const uint32 STDDISPID_XOBJ_ONROWEXIT = 65542;
		public const uint32 STDDISPID_XOBJ_ONROWENTER = 65543;
		public const uint32 STDDISPID_XOBJ_ONMOUSEOVER = 65544;
		public const uint32 STDDISPID_XOBJ_ONMOUSEOUT = 65545;
		public const uint32 STDDISPID_XOBJ_ONHELP = 65546;
		public const uint32 STDDISPID_XOBJ_ONDRAGSTART = 65547;
		public const uint32 STDDISPID_XOBJ_ONSELECTSTART = 65548;
		public const uint32 STDDISPID_XOBJ_ERRORUPDATE = 65549;
		public const uint32 STDDISPID_XOBJ_ONDATASETCHANGED = 65550;
		public const uint32 STDDISPID_XOBJ_ONDATAAVAILABLE = 65551;
		public const uint32 STDDISPID_XOBJ_ONDATASETCOMPLETE = 65552;
		public const uint32 STDDISPID_XOBJ_ONFILTER = 65553;
		public const uint32 STDDISPID_XOBJ_ONLOSECAPTURE = 65554;
		public const uint32 STDDISPID_XOBJ_ONPROPERTYCHANGE = 65555;
		public const uint32 STDDISPID_XOBJ_ONDRAG = 65556;
		public const uint32 STDDISPID_XOBJ_ONDRAGEND = 65557;
		public const uint32 STDDISPID_XOBJ_ONDRAGENTER = 65558;
		public const uint32 STDDISPID_XOBJ_ONDRAGOVER = 65559;
		public const uint32 STDDISPID_XOBJ_ONDRAGLEAVE = 65560;
		public const uint32 STDDISPID_XOBJ_ONDROP = 65561;
		public const uint32 STDDISPID_XOBJ_ONCUT = 65562;
		public const uint32 STDDISPID_XOBJ_ONCOPY = 65563;
		public const uint32 STDDISPID_XOBJ_ONPASTE = 65564;
		public const uint32 STDDISPID_XOBJ_ONBEFORECUT = 65565;
		public const uint32 STDDISPID_XOBJ_ONBEFORECOPY = 65566;
		public const uint32 STDDISPID_XOBJ_ONBEFOREPASTE = 65567;
		public const uint32 STDDISPID_XOBJ_ONROWSDELETE = 65568;
		public const uint32 STDDISPID_XOBJ_ONROWSINSERTED = 65569;
		public const uint32 STDDISPID_XOBJ_ONCELLCHANGE = 65570;
		public const uint32 DISPID_NORMAL_FIRST = 1000;
		public const uint32 DISPID_IE8_NORMAL_FIRST = 1150;
		public const uint32 DISPID_ANCHOR = 1000;
		public const uint32 DISPID_BLOCK = 1000;
		public const uint32 DISPID_BODY = 2000;
		public const uint32 DISPID_BR = 1000;
		public const uint32 DISPID_BGSOUND = 1000;
		public const uint32 DISPID_DD = 1000;
		public const uint32 DISPID_DIR = 1000;
		public const uint32 DISPID_DIV = 1000;
		public const uint32 DISPID_DL = 1000;
		public const uint32 DISPID_DT = 1000;
		public const uint32 DISPID_EFONT = 1000;
		public const uint32 DISPID_FORM = 1000;
		public const uint32 DISPID_HEADER = 1000;
		public const uint32 DISPID_HEDELEMS = 1000;
		public const uint32 DISPID_HR = 1000;
		public const uint32 DISPID_LABEL = 1000;
		public const uint32 DISPID_LI = 1000;
		public const uint32 DISPID_IMGBASE = 1000;
		public const uint32 DISPID_IMG = 2000;
		public const uint32 DISPID_INPUTIMAGE = 2000;
		public const uint32 DISPID_INPUT = 2000;
		public const uint32 DISPID_INPUTTEXTBASE = 3000;
		public const uint32 DISPID_INPUTTEXT = 4000;
		public const uint32 DISPID_MENU = 1000;
		public const uint32 DISPID_OL = 1000;
		public const uint32 DISPID_PARA = 1000;
		public const uint32 DISPID_SELECT = 1000;
		public const uint32 DISPID_SELECTOBJ = 1000;
		public const uint32 DISPID_TABLE = 1000;
		public const uint32 DISPID_TEXTSITE = 1000;
		public const uint32 DISPID_TEXTAREA = 5000;
		public const uint32 DISPID_MARQUEE = 6000;
		public const uint32 DISPID_RICHTEXT = 7000;
		public const uint32 DISPID_BUTTON = 8000;
		public const uint32 DISPID_UL = 1000;
		public const uint32 DISPID_PHRASE = 1000;
		public const uint32 DISPID_UNKNOWNPDL = 1000;
		public const uint32 DISPID_COMMENTPDL = 1000;
		public const uint32 DISPID_TABLECELL = 2000;
		public const uint32 DISPID_RANGE = 1000;
		public const uint32 DISPID_SELECTION = 1000;
		public const uint32 DISPID_OPTION = 1000;
		public const uint32 DISPID_1D = 2000;
		public const uint32 DISPID_MAP = 1000;
		public const uint32 DISPID_AREA = 1000;
		public const uint32 DISPID_PARAM = 1000;
		public const uint32 DISPID_TABLESECTION = 1000;
		public const uint32 DISPID_TABLEROW = 1000;
		public const uint32 DISPID_TABLECOL = 1000;
		public const uint32 DISPID_SCRIPT = 1000;
		public const uint32 DISPID_STYLESHEET = 1000;
		public const uint32 DISPID_STYLERULE = 1000;
		public const uint32 DISPID_BASE_STYLERULE = 1100;
		public const uint32 DISPID_STYLEPAGE = 1000;
		public const uint32 DISPID_STYLESHEETS_COL = 1000;
		public const uint32 DISPID_STYLERULES_COL = 1000;
		public const uint32 DISPID_STYLEPAGES_COL = 1000;
		public const uint32 DISPID_MEDIALIST = 1000;
		public const uint32 DISPID_MIMETYPES_COL = 1000;
		public const uint32 DISPID_PLUGINS_COL = 1000;
		public const uint32 DISPID_2D = 1000;
		public const uint32 DISPID_OMWINDOW = 1000;
		public const uint32 DISPID_EVENTOBJ = 1000;
		public const uint32 DISPID_PERSISTDATA = 1000;
		public const uint32 DISPID_OLESITE = 1000;
		public const uint32 DISPID_FRAMESET = 1000;
		public const uint32 DISPID_LINK = 1000;
		public const uint32 DISPID_STYLEELEMENT = 1000;
		public const uint32 DISPID_FILTERS = 1000;
		public const uint32 DISPID_OMRECT = 1000;
		public const uint32 DISPID_DOMATTRIBUTE = 1000;
		public const uint32 DISPID_DOMTEXTNODE = 1000;
		public const uint32 DISPID_GENERIC = 1000;
		public const uint32 DISPID_URN_COLL = 1000;
		public const uint32 DISPID_NAMESPACE_COLLECTION = 1000;
		public const uint32 DISPID_NAMESPACE = 1000;
		public const uint32 DISPID_TAGNAMES_COLLECTION = 1000;
		public const uint32 DISPID_XMLHTTPREQUEST = 1000;
		public const uint32 DISPID_XMLSERIALIZER = 1000;
		public const uint32 DISPID_DOMPARSER = 1000;
		public const uint32 DISPID_DOCUMENTCOMPATIBLEINFO_COLLECTION = 1000;
		public const uint32 DISPID_DOCUMENTCOMPATIBLEINFO = 1000;
		public const uint32 DISPID_XDOMAINREQUEST = 1000;
		public const uint32 DISPID_DOMSTORAGEITEM = 1000;
		public const uint32 DISPID_DOMSTORAGE = 1000;
		public const uint32 DISPID_DOMSTORAGELIST = 1000;
		public const uint32 DISPID_RULESAPPLIED = 1000;
		public const uint32 DISPID_RULESAPPLIED_COLLECTION = 1000;
		public const uint32 DISPID_STYLESHEETRULESAPPLIED_COLLECTION = 1000;
		public const uint32 DISPID_PROCESSINGINSTRUCTION = 1000;
		public const uint32 DISPID_MSPOINTERPOINT = 1000;
		public const uint32 DISPID_WEBSOCKET = 1000;
		public const uint32 DISPID_APPLICATIONCACHE = 1000;
		public const uint32 DISPID_DOMEVENT = 1000;
		public const uint32 DISPID_DOMUIEVENT = 1025;
		public const uint32 DISPID_DOMMOUSEEVENT = 1050;
		public const uint32 DISPID_DOMMOUSEWHEELEVENT = 1075;
		public const uint32 DISPID_DOMWHEELEVENT = 1100;
		public const uint32 DISPID_DOMTEXTEVENT = 1125;
		public const uint32 DISPID_DOMKEYBOARDEVENT = 1150;
		public const uint32 DISPID_DOMCOMPOSITIONEVENT = 1175;
		public const uint32 DISPID_DOMCUSTOMEVENT = 1200;
		public const uint32 DISPID_DOMMUTATIONEVENT = 1225;
		public const uint32 DISPID_DOMFOCUSEVENT = 1250;
		public const uint32 DISPID_SVGZOOMEVENT = 1275;
		public const uint32 DISPID_DOMSITEMODEEVENT = 1300;
		public const uint32 DISPID_DOMMESSAGEEVENT = 1325;
		public const uint32 DISPID_DOMSTORAGEEVENT = 1350;
		public const uint32 DISPID_DOMBEFOREUNLOADEVENT = 1375;
		public const uint32 DISPID_DOMDRAGEVENT = 1400;
		public const uint32 DISPID_DOMMSPOINTEREVENT = 1425;
		public const uint32 DISPID_DOMMSGESTUREEVENT = 1450;
		public const uint32 DISPID_DOMMSTRANSITIONEVENT = 1475;
		public const uint32 DISPID_DOMMSANIMATIONEVENT = 1500;
		public const uint32 DISPID_DOMMSMANIPULATIONEVENT = 1525;
		public const uint32 DISPID_DOMPROGRESSEVENT = 1550;
		public const uint32 DISPID_DOMCLOSEEVENT = 1525;
		public const uint32 DISPID_HTMLDOCUMENT = 1000;
		public const uint32 DISPID_OMDOCUMENT = 1000;
		public const uint32 DISPID_DATATRANSFER = 1000;
		public const uint32 DISPID_XMLDECL = 1000;
		public const uint32 DISPID_DOCFRAG = 1000;
		public const uint32 DISPID_ILINEINFO = 1000;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE = 1000;
		public const uint32 DISPID_DOMRANGE = 1000;
		public const uint32 DISPID_HTMLSELECTION = 1000;
		public const uint32 DISPID_DOMTRAVERSAL = 1000;
		public const uint32 DISPID_DOMEXCEPTION = 1000;
		public const uint32 DISPID_SVGEXCEPTION = 1000;
		public const uint32 DISPID_RANGEEXCEPTION = 1000;
		public const uint32 DISPID_EVENTEXCEPTION = 1000;
		public const uint32 DISPID_DOCUMENTTYPE = 1000;
		public const uint32 DISPID_MEDIA = 1000;
		public const uint32 DISPID_MEDIAERROR = 1000;
		public const uint32 DISPID_TIMERANGES = 1000;
		public const uint32 DISPID_SOURCE = 1000;
		public const uint32 DISPID_TRACK = 1000;
		public const uint32 DISPID_AUDIO = 1050;
		public const uint32 DISPID_VIDEO = 1050;
		public const uint32 DISPID_STYLEMEDIA = 1000;
		public const uint32 DISPID_PROGRESS = 1000;
		public const uint32 DISPID_PLAYTO = 1000;
		public const uint32 DISPID_PLAYTODEVICE = 1000;
		public const uint32 DISPID_WINDOW = 1;
		public const uint32 DISPID_SCREEN = 1000;
		public const uint32 DISPID_FRAMESCOLLECTION = 1000;
		public const uint32 DISPID_HISTORY = 1;
		public const uint32 DISPID_LOCATION = 1;
		public const uint32 DISPID_NAVIGATOR = 1;
		public const uint32 DISPID_CLIENTCAPS = 1;
		public const uint32 DISPID_TEMPLATE_PRINTER = 1;
		public const uint32 DISPID_PRINTMANAGER_TEMPLATE_PRINTER = 501;
		public const uint32 DISPID_COLLECTION = 1500;
		public const uint32 DISPID_OPTIONS_COL = 1500;
		public const uint32 DISPID_CHECKBOX = 1000;
		public const uint32 DISPID_RADIO = 2000;
		public const uint32 DISPID_FRAMESITE = 68536;
		public const uint32 DISPID_FRAME = 69536;
		public const uint32 DISPID_IFRAME = 69536;
		public const uint32 WEBOC_DISPIDBASE = 70536;
		public const uint32 WEBOC_DISPIDMAX = 70636;
		public const uint32 DISPID_PROTECTEDELEMENT = 1000;
		public const uint32 DISPID_DEFAULTS = 1000;
		public const uint32 DISPID_MARKUP = 1000;
		public const uint32 DISPID_DOMIMPLEMENTATION = 1000;
		public const uint32 DISPID_MEDIAQUERY = 1000;
		public const uint32 DISPID_HTML5ATTRIBUTESELECTORCI = 1000;
		public const uint32 DISPID_SVGMIXINS = 1000;
		public const uint32 DISPID_SVGELEMENT = 1030;
		public const uint32 DISPID_SVGELEMENT_BASE = 1050;
		public const uint32 DISPID_SVGAELEMENT = 1050;
		public const uint32 DISPID_SVGALTGLYPHDEFELEMENT = 1050;
		public const uint32 DISPID_SVGALTGLYPHELEMENT = 1050;
		public const uint32 DISPID_SVGALTGLYPHITEMELEMENT = 1050;
		public const uint32 DISPID_SVGANGLE = 1000;
		public const uint32 DISPID_SVGANIMATECOLORELEMENT = 1050;
		public const uint32 DISPID_SVGANIMATEDANGLE = 1000;
		public const uint32 DISPID_SVGANIMATEDBOOLEAN = 1000;
		public const uint32 DISPID_SVGANIMATEDENUMERATION = 1000;
		public const uint32 DISPID_SVGANIMATEDINTEGER = 1000;
		public const uint32 DISPID_SVGANIMATEDLENGTH = 1000;
		public const uint32 DISPID_SVGANIMATEDLENGTHLIST = 1000;
		public const uint32 DISPID_SVGANIMATEDNUMBER = 1000;
		public const uint32 DISPID_SVGANIMATEDNUMBERLIST = 1000;
		public const uint32 DISPID_SVGANIMATEDPOINTS = 1000;
		public const uint32 DISPID_SVGANIMATEDRECT = 1000;
		public const uint32 DISPID_SVGANIMATEDSTRING = 1000;
		public const uint32 DISPID_SVGANIMATEELEMENT = 1050;
		public const uint32 DISPID_SVGANIMATEMOTIONELEMENT = 1050;
		public const uint32 DISPID_SVGANIMATETRANSFORMELEMENT = 1050;
		public const uint32 DISPID_SVGCIRCLEELEMENT = 1050;
		public const uint32 DISPID_SVGCLIPPATHELEMENT = 1050;
		public const uint32 DISPID_SVGCOLOR_PROFILEELEMENT = 1050;
		public const uint32 DISPID_SVGCURSORELEMENT = 1050;
		public const uint32 DISPID_SVGDEFINITION_SRCELEMENT = 1050;
		public const uint32 DISPID_SVGDEFSELEMENT = 1050;
		public const uint32 DISPID_SVGDESCELEMENT = 1050;
		public const uint32 DISPID_SVGELEMENTINSTANCE = 1000;
		public const uint32 DISPID_SVGELEMENTINSTANCELIST = 1000;
		public const uint32 DISPID_SVGELLIPSEELEMENT = 1050;
		public const uint32 DISPID_SVGFEBLENDELEMENT = 1050;
		public const uint32 DISPID_SVGFECOLORMATRIXELEMENT = 1050;
		public const uint32 DISPID_SVGFECOMPONENTTRANSFERELEMENT = 1050;
		public const uint32 DISPID_SVGCOMPONENTTRANSFERFUNCTIONELEMENT = 1050;
		public const uint32 DISPID_SVGFECOMPOSITEELEMENT = 1050;
		public const uint32 DISPID_SVGFECONVOLVEMATRIXELEMENT = 1050;
		public const uint32 DISPID_SVGFEDIFFUSELIGHTINGELEMENT = 1050;
		public const uint32 DISPID_SVGFEDISPLACEMENTMAPELEMENT = 1050;
		public const uint32 DISPID_SVGFEDISTANTLIGHTELEMENT = 1050;
		public const uint32 DISPID_SVGFEFLOODELEMENT = 1050;
		public const uint32 DISPID_SVGFEFUNCAELEMENT = 1050;
		public const uint32 DISPID_SVGFEFUNCBELEMENT = 1050;
		public const uint32 DISPID_SVGFEFUNCGELEMENT = 1050;
		public const uint32 DISPID_SVGFEFUNCRELEMENT = 1050;
		public const uint32 DISPID_SVGFEGAUSSIANBLURELEMENT = 1050;
		public const uint32 DISPID_SVGFEIMAGEELEMENT = 1050;
		public const uint32 DISPID_SVGFEMERGEELEMENT = 1050;
		public const uint32 DISPID_SVGFEMERGENODEELEMENT = 1050;
		public const uint32 DISPID_SVGFEMORPHOLOGYELEMENT = 1050;
		public const uint32 DISPID_SVGFEOFFSETELEMENT = 1050;
		public const uint32 DISPID_SVGFEPOINTLIGHTELEMENT = 1050;
		public const uint32 DISPID_SVGFESPECULARLIGHTINGELEMENT = 1050;
		public const uint32 DISPID_SVGFESPOTLIGHTELEMENT = 1050;
		public const uint32 DISPID_SVGFETILEELEMENT = 1050;
		public const uint32 DISPID_SVGFETURBULENCEELEMENT = 1050;
		public const uint32 DISPID_SVGFILTERELEMENT = 1050;
		public const uint32 DISPID_SVGFONT_FACE_FORMATELEMENT = 1050;
		public const uint32 DISPID_SVGFONT_FACE_NAMEELEMENT = 1050;
		public const uint32 DISPID_SVGFONT_FACE_SRCELEMENT = 1050;
		public const uint32 DISPID_SVGFONT_FACE_URIELEMENT = 1050;
		public const uint32 DISPID_SVGFONT_FACEELEMENT = 1050;
		public const uint32 DISPID_SVGFONTELEMENT = 1050;
		public const uint32 DISPID_SVGFOREIGNOBJECTELEMENT = 1050;
		public const uint32 DISPID_SVGGELEMENT = 1050;
		public const uint32 DISPID_SVGGLYPHELEMENT = 1050;
		public const uint32 DISPID_SVGGLYPHREFELEMENT = 1050;
		public const uint32 DISPID_SVGGRADIENTELEMENT = 1050;
		public const uint32 DISPID_SVGHKERNELEMENT = 1050;
		public const uint32 DISPID_SVGIMAGEELEMENT = 1050;
		public const uint32 DISPID_SVGLENGTH = 1000;
		public const uint32 DISPID_SVGLENGTHLIST = 1000;
		public const uint32 DISPID_SVGPRESERVEASPECTRATIO = 1000;
		public const uint32 DISPID_SVGANIMATEDPRESERVEASPECTRATIO = 1000;
		public const uint32 DISPID_SVGPOINT = 1000;
		public const uint32 DISPID_SVGPOINTLIST = 1000;
		public const uint32 DISPID_SVGLINEARGRADIENTELEMENT = 1070;
		public const uint32 DISPID_SVGLINEELEMENT = 1050;
		public const uint32 DISPID_SVGMARKERELEMENT = 1050;
		public const uint32 DISPID_SVGMASKELEMENT = 1050;
		public const uint32 DISPID_SVGMETADATAELEMENT = 1050;
		public const uint32 DISPID_SVGMISSING_GLYPHELEMENT = 1050;
		public const uint32 DISPID_SVGMPATHELEMENT = 1050;
		public const uint32 DISPID_SVGNUMBER = 1000;
		public const uint32 DISPID_SVGNUMBERLIST = 1000;
		public const uint32 DISPID_SVGPATHELEMENT = 1050;
		public const uint32 DISPID_SVGPATTERNELEMENT = 1050;
		public const uint32 DISPID_SVGPOLYGONELEMENT = 1050;
		public const uint32 DISPID_SVGPOLYLINEELEMENT = 1050;
		public const uint32 DISPID_SVGRADIALGRADIENTELEMENT = 1070;
		public const uint32 DISPID_SVGRECT = 1000;
		public const uint32 DISPID_SVGRECTELEMENT = 1050;
		public const uint32 DISPID_SVGSCRIPTELEMENT = 1050;
		public const uint32 DISPID_SVGSETELEMENT = 1050;
		public const uint32 DISPID_SVGSTOPELEMENT = 1050;
		public const uint32 DISPID_SVGSTRINGLIST = 1000;
		public const uint32 DISPID_SVGSTYLEELEMENT = 1050;
		public const uint32 DISPID_SVGSVGELEMENT = 1050;
		public const uint32 DISPID_SVGSWITCHELEMENT = 1050;
		public const uint32 DISPID_SVGSYMBOLELEMENT = 1050;
		public const uint32 DISPID_SVGTITLEELEMENT = 1050;
		public const uint32 DISPID_SVGTREFELEMENT = 1050;
		public const uint32 DISPID_SVGTEXTCONTENTELEMENT = 1050;
		public const uint32 DISPID_SVGTEXTCONTENTELEMENT_BASE = 1070;
		public const uint32 DISPID_SVGTEXTPOSITIONINGELEMENT = 1070;
		public const uint32 DISPID_SVGTEXTPOSITIONINGELEMENT_BASE = 1090;
		public const uint32 DISPID_SVGTEXTELEMENT = 1090;
		public const uint32 DISPID_SVGTSPANELEMENT = 1090;
		public const uint32 DISPID_SVGTEXTPATHELEMENT = 1070;
		public const uint32 DISPID_SVGUSEELEMENT = 1050;
		public const uint32 DISPID_SVGVIEWELEMENT = 1050;
		public const uint32 DISPID_SVGVKERNELEMENT = 1050;
		public const uint32 DISPID_SVGMATRIX = 1000;
		public const uint32 DISPID_SVGTRANSFORM = 1000;
		public const uint32 DISPID_SVGTRANSFORMLIST = 1000;
		public const uint32 DISPID_SVGANIMATEDTRANSFORMLIST = 1000;
		public const uint32 DISPID_SVGPATHSEG = 1000;
		public const uint32 DISPID_SVGPATHSEG_BASE = 1020;
		public const uint32 DISPID_SVGPATHSEGLIST = 1000;
		public const uint32 DISPID_SVGPATHSEGARCABS = 1020;
		public const uint32 DISPID_SVGPATHSEGARCREL = 1020;
		public const uint32 DISPID_SVGPATHSEGCLOSEPATH = 1020;
		public const uint32 DISPID_SVGPATHSEGMOVETOABS = 1020;
		public const uint32 DISPID_SVGPATHSEGMOVETOREL = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOABS = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOREL = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOCUBICABS = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOCUBICREL = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOCUBICSMOOTHABS = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOCUBICSMOOTHREL = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOQUADRATICABS = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOQUADRATICREL = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOQUADRATICSMOOTHABS = 1020;
		public const uint32 DISPID_SVGPATHSEGCURVETOQUADRATICSMOOTHREL = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOHORIZONTALABS = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOHORIZONTALREL = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOVERTICALABS = 1020;
		public const uint32 DISPID_SVGPATHSEGLINETOVERTICALREL = 1020;
		public const uint32 DISPID_CANVASELEMENT = 1000;
		public const uint32 DISPID_CANVASRENDERCONTEXT2D = 1000;
		public const uint32 DISPID_CANVASGRADIENT = 1000;
		public const uint32 DISPID_CANVASTEXTMETRICS = 1000;
		public const uint32 DISPID_CANVASIMAGEDATA = 1000;
		public const uint32 DISPID_CANVASPIXELARRAY = 1000;
		public const uint32 DISPID_PERFORMANCE = 1000;
		public const uint32 DISPID_PERFORMANCENAVIGATION = 1000;
		public const uint32 DISPID_PERFORMANCETIMING = 1000;
		public const uint32 DISPID_MSHTMLWEBVIEWELEMENT = 1000;
		public const uint32 DISPID_WEBGEOLOCATION = 1000;
		public const uint32 DISPID_WEBGEOPOSITION = 1000;
		public const uint32 DISPID_WEBGEOCOORDINATES = 1000;
		public const uint32 DISPID_WEBGEOPOSITION_ERROR = 1000;
		public const uint32 DISPID_DATALIST = 1000;
		public const uint32 DISPID_IE8_ANCHOR = 1150;
		public const uint32 DISPID_IE8_AREA = 1150;
		public const uint32 DISPID_IE8_BASE = 1150;
		public const uint32 DISPID_IE8_BODY = 1150;
		public const uint32 DISPID_IE8_FORM = 1150;
		public const uint32 DISPID_IE8_HEAD = 1150;
		public const uint32 DISPID_IE8_IMG = 1150;
		public const uint32 DISPID_IE8_INPUT = 1150;
		public const uint32 DISPID_IE8_LINK = 1150;
		public const uint32 DISPID_IE8_MOD = 1150;
		public const uint32 DISPID_IE8_SCRIPT = 1150;
		public const uint32 DISPID_IE8_ATTR = 1150;
		public const uint32 DISPID_IE8_NAMEDNODEMAP = 1150;
		public const uint32 DISPID_IE8_COLLECTION = 1150;
		public const uint32 DISPID_IE8_PARAM = 1150;
		public const uint32 DISPID_IE8_EMBED = 1150;
		public const uint32 DISPID_IE8_BLOCK = 1150;
		public const uint32 DISPID_IE8_META = 1150;
		public const uint32 DISPID_IE8_STYLE = 1150;
		public const uint32 DISPID_IE8_SELECT = 1150;
		public const uint32 DISPID_IE8_ELEMENTBASE = 66736;
		public const uint32 DISPID_IE8_ELEMENTMAX = 66776;
		public const uint32 DISPID_IE8_ELEMENT = 66736;
		public const uint32 DISPID_IE8_FRAMESITEBASE = 69656;
		public const uint32 DISPID_IE8_FRAME = 69656;
		public const uint32 DISPID_IE8_IFRAME = 69656;
		public const uint32 DISPID_IE8_OBJECTBASE = 68566;
		public const uint32 DISPID_IE8_OBJECT = 68566;
		public const uint32 DISPID_IE9_ELEMENTBASE = 66786;
		public const uint32 DISPID_IE9_ELEMENTMAX = 66821;
		public const uint32 DISPID_IE9_ELEMENT = 66786;
		public const uint32 DISPID_IE10_ELEMENTBASE = 66822;
		public const uint32 DISPID_IE10_ELEMENT = 66822;
		public const uint32 DISP10_IE10_XMSARIAFLOWFROM = 66835;
		public const int32 DISPID_WINDOWOBJECT = -5500;
		public const int32 DISPID_PERFORMANCEOBJECT = -5505;
		public const int32 DISPID_LOCATIONOBJECT = -5506;
		public const int32 DISPID_HISTORYOBJECT = -5507;
		public const int32 DISPID_NAVIGATOROBJECT = -5508;
		public const int32 DISPID_SECURITYCTX = -5511;
		public const int32 DISPID_AMBIENT_DLCONTROL = -5512;
		public const int32 DISPID_AMBIENT_USERAGENT = -5513;
		public const int32 DISPID_SECURITYDOMAIN = -5514;
		public const int32 DISPID_DEBUG_ISSECUREPROXY = -5515;
		public const int32 DISPID_DEBUG_TRUSTEDPROXY = -5516;
		public const int32 DISPID_DEBUG_INTERNALWINDOW = -5517;
		public const int32 DISPID_DEBUG_ENABLESECUREPROXYASSERTS = -5518;
		public const uint32 DLCTL_DLIMAGES = 16;
		public const uint32 DLCTL_VIDEOS = 32;
		public const uint32 DLCTL_BGSOUNDS = 64;
		public const uint32 DLCTL_NO_SCRIPTS = 128;
		public const uint32 DLCTL_NO_JAVA = 256;
		public const uint32 DLCTL_NO_RUNACTIVEXCTLS = 512;
		public const uint32 DLCTL_NO_DLACTIVEXCTLS = 1024;
		public const uint32 DLCTL_DOWNLOADONLY = 2048;
		public const uint32 DLCTL_NO_FRAMEDOWNLOAD = 4096;
		public const uint32 DLCTL_RESYNCHRONIZE = 8192;
		public const uint32 DLCTL_PRAGMA_NO_CACHE = 16384;
		public const uint32 DLCTL_NO_BEHAVIORS = 32768;
		public const uint32 DLCTL_NO_METACHARSET = 65536;
		public const uint32 DLCTL_URL_ENCODING_DISABLE_UTF8 = 131072;
		public const uint32 DLCTL_URL_ENCODING_ENABLE_UTF8 = 262144;
		public const uint32 DLCTL_NOFRAMES = 524288;
		public const uint32 DLCTL_FORCEOFFLINE = 268435456;
		public const uint32 DLCTL_NO_CLIENTPULL = 536870912;
		public const uint32 DLCTL_SILENT = 1073741824;
		public const uint32 DLCTL_OFFLINEIFNOTCONNECTED = 2147483648;
		public const uint32 DLCTL_OFFLINE = 2147483648;
		public const uint32 DISPID_ONABORT = 1000;
		public const uint32 DISPID_ONCHANGE = 1001;
		public const uint32 DISPID_ONERROR = 1002;
		public const uint32 DISPID_ONLOAD = 1003;
		public const uint32 DISPID_ONSELECT = 1006;
		public const uint32 DISPID_ONSUBMIT = 1007;
		public const uint32 DISPID_ONUNLOAD = 1008;
		public const uint32 DISPID_ONBOUNCE = 1009;
		public const uint32 DISPID_ONFINISH = 1010;
		public const uint32 DISPID_ONSTART = 1011;
		public const uint32 DISPID_ONLAYOUT = 1013;
		public const uint32 DISPID_ONSCROLL = 1014;
		public const uint32 DISPID_ONRESET = 1015;
		public const uint32 DISPID_ONRESIZE = 1016;
		public const uint32 DISPID_ONBEFOREUNLOAD = 1017;
		public const uint32 DISPID_ONCHANGEFOCUS = 1018;
		public const uint32 DISPID_ONCHANGEBLUR = 1019;
		public const uint32 DISPID_ONPERSIST = 1020;
		public const uint32 DISPID_ONPERSISTSAVE = 1021;
		public const uint32 DISPID_ONPERSISTLOAD = 1022;
		public const uint32 DISPID_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_ONBEFOREPRINT = 1024;
		public const uint32 DISPID_ONAFTERPRINT = 1025;
		public const uint32 DISPID_ONSTOP = 1026;
		public const uint32 DISPID_ONBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_ONMOUSEHOVER = 1028;
		public const uint32 DISPID_ONCONTENTREADY = 1029;
		public const uint32 DISPID_ONLAYOUTCOMPLETE = 1030;
		public const uint32 DISPID_ONPAGE = 1031;
		public const uint32 DISPID_ONLINKEDOVERFLOW = 1032;
		public const uint32 DISPID_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_ONMOVE = 1035;
		public const uint32 DISPID_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_ONSELECTIONCHANGE = 1037;
		public const uint32 DISPID_ONMOVESTART = 1038;
		public const uint32 DISPID_ONMOVEEND = 1039;
		public const uint32 DISPID_ONRESIZESTART = 1040;
		public const uint32 DISPID_ONRESIZEEND = 1041;
		public const uint32 DISPID_ONMOUSEENTER = 1042;
		public const uint32 DISPID_ONMOUSELEAVE = 1043;
		public const uint32 DISPID_ONACTIVATE = 1044;
		public const uint32 DISPID_ONDEACTIVATE = 1045;
		public const uint32 DISPID_ONMULTILAYOUTCLEANUP = 1046;
		public const uint32 DISPID_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_ONFOCUSIN = 1048;
		public const uint32 DISPID_ONFOCUSOUT = 1049;
		public const uint32 DISPID_ONVALUECHANGE = 1050;
		public const uint32 DISPID_ONSELECTADD = 1051;
		public const uint32 DISPID_ONSELECTREMOVE = 1052;
		public const uint32 DISPID_ONSELECTWITHIN = 1053;
		public const uint32 DISPID_ONSYSTEMSCROLLINGSTART = 1054;
		public const uint32 DISPID_ONSYSTEMSCROLLINGEND = 1055;
		public const uint32 DISPID_ONOBJECTCONTENTSCROLLED = 1056;
		public const uint32 DISPID_ONSTORAGE = 1057;
		public const uint32 DISPID_ONSTORAGECOMMIT = 1058;
		public const uint32 DISPID_ONSHOW = 1059;
		public const uint32 DISPID_ONHIDE = 1060;
		public const uint32 DISPID_ONALERT = 1061;
		public const uint32 DISPID_ONPOPUPMENUSTART = 1062;
		public const uint32 DISPID_ONPOPUPMENUEND = 1063;
		public const uint32 DISPID_ONONLINE = 1064;
		public const uint32 DISPID_ONOFFLINE = 1065;
		public const uint32 DISPID_ONHASHCHANGE = 1066;
		public const uint32 DISPID_ONMESSAGE = 1067;
		public const uint32 DISPID_ONDOMMUTATION = 1068;
		public const uint32 DISPID_SVGLOAD = 1069;
		public const uint32 DISPID_SVGUNLOAD = 1070;
		public const uint32 DISPID_SVGABORT = 1071;
		public const uint32 DISPID_SVGERROR = 1072;
		public const uint32 DISPID_SVGRESIZE = 1073;
		public const uint32 DISPID_SVGSCROLL = 1074;
		public const uint32 DISPID_SVGZOOM = 1075;
		public const uint32 DISPID_MSPOINTERDOWN = 1076;
		public const uint32 DISPID_MSPOINTERMOVE = 1077;
		public const uint32 DISPID_MSPOINTERUP = 1078;
		public const uint32 DISPID_MSPOINTEROVER = 1079;
		public const uint32 DISPID_MSPOINTEROUT = 1080;
		public const uint32 DISPID_MSPOINTERCANCEL = 1081;
		public const uint32 DISPID_MSPOINTERHOVER = 1082;
		public const uint32 DISPID_MSGESTURESTART = 1083;
		public const uint32 DISPID_MSGESTURECHANGE = 1084;
		public const uint32 DISPID_MSGESTUREEND = 1085;
		public const uint32 DISPID_MSGESTUREHOLD = 1086;
		public const uint32 DISPID_MSGESTURETAP = 1087;
		public const uint32 DISPID_MSGESTUREDOUBLETAP = 1088;
		public const uint32 DISPID_MSINERTIASTART = 1089;
		public const uint32 DISPID_MSLOSTPOINTERCAPTURE = 1090;
		public const uint32 DISPID_MSGOTPOINTERCAPTURE = 1091;
		public const uint32 DISPID_MSTRANSITIONSTART = 1092;
		public const uint32 DISPID_MSTRANSITIONEND = 1093;
		public const uint32 DISPID_MSANIMATIONSTART = 1094;
		public const uint32 DISPID_MSANIMATIONEND = 1095;
		public const uint32 DISPID_MSANIMATIONITERATION = 1096;
		public const uint32 DISPID_MSGESTUREINIT = 1097;
		public const uint32 DISPID_MSMANIPULATIONSTATECHANGED = 1098;
		public const uint32 DISPID_ONOPEN = 1099;
		public const uint32 DISPID_ONCLOSE = 1100;
		public const uint32 DISPID_MSPOINTERENTER = 1101;
		public const uint32 DISPID_MSPOINTERLEAVE = 1102;
		public const uint32 DISPID_MSORIENTATIONCHANGE = 1103;
		public const uint32 DISPID_ONDEVICEORIENTATION = 1104;
		public const uint32 DISPID_ONDEVICEMOTION = 1105;
		public const uint32 DISPID_ONPAGESHOW = 1106;
		public const uint32 DISPID_ONPAGEHIDE = 1107;
		public const uint32 DISPID_ONCOMPASSNEEDSCALIBRATION = 1108;
		public const uint32 DISPID_A_FIRST = 70536;
		public const uint32 DISPID_A_MIN = 70536;
		public const uint32 DISPID_A_MAX = 71535;
		public const uint32 DISPID_A_BACKGROUNDIMAGE = 70537;
		public const uint32 DISPID_A_COLOR = 70538;
		public const uint32 DISPID_A_TEXTTRANSFORM = 70540;
		public const uint32 DISPID_A_NOWRAP = 70541;
		public const uint32 DISPID_A_LINEHEIGHT = 70542;
		public const uint32 DISPID_A_TEXTINDENT = 70543;
		public const uint32 DISPID_A_LETTERSPACING = 70544;
		public const uint32 DISPID_A_LANG = 70545;
		public const uint32 DISPID_A_OVERFLOW = 70546;
		public const uint32 DISPID_A_PADDING = 70547;
		public const uint32 DISPID_A_PADDINGTOP = 70548;
		public const uint32 DISPID_A_PADDINGRIGHT = 70549;
		public const uint32 DISPID_A_PADDINGBOTTOM = 70550;
		public const uint32 DISPID_A_PADDINGLEFT = 70551;
		public const uint32 DISPID_A_CLEAR = 70552;
		public const uint32 DISPID_A_LISTTYPE = 70553;
		public const uint32 DISPID_A_FONTFACE = 70554;
		public const uint32 DISPID_A_FONTSIZE = 70555;
		public const uint32 DISPID_A_TEXTDECORATIONLINETHROUGH = 70556;
		public const uint32 DISPID_A_TEXTDECORATIONUNDERLINE = 70557;
		public const uint32 DISPID_A_TEXTDECORATIONBLINK = 70558;
		public const uint32 DISPID_A_TEXTDECORATIONNONE = 70559;
		public const uint32 DISPID_A_FONTSTYLE = 70560;
		public const uint32 DISPID_A_FONTVARIANT = 70561;
		public const uint32 DISPID_A_BASEFONT = 70562;
		public const uint32 DISPID_A_FONTWEIGHT = 70563;
		public const uint32 DISPID_A_TABLEBORDERCOLOR = 70564;
		public const uint32 DISPID_A_TABLEBORDERCOLORLIGHT = 70565;
		public const uint32 DISPID_A_TABLEBORDERCOLORDARK = 70566;
		public const uint32 DISPID_A_TABLEVALIGN = 70567;
		public const uint32 DISPID_A_BACKGROUND = 70568;
		public const uint32 DISPID_A_BACKGROUNDPOSX = 70569;
		public const uint32 DISPID_A_BACKGROUNDPOSY = 70570;
		public const uint32 DISPID_A_TEXTDECORATION = 70571;
		public const uint32 DISPID_A_MARGIN = 70572;
		public const uint32 DISPID_A_MARGINTOP = 70573;
		public const uint32 DISPID_A_MARGINRIGHT = 70574;
		public const uint32 DISPID_A_MARGINBOTTOM = 70575;
		public const uint32 DISPID_A_MARGINLEFT = 70576;
		public const uint32 DISPID_A_FONT = 70577;
		public const uint32 DISPID_A_FONTSIZEKEYWORD = 70578;
		public const uint32 DISPID_A_FONTSIZECOMBINE = 70579;
		public const uint32 DISPID_A_BACKGROUNDREPEAT = 70580;
		public const uint32 DISPID_A_BACKGROUNDATTACHMENT = 70581;
		public const uint32 DISPID_A_BACKGROUNDPOSITION = 70582;
		public const uint32 DISPID_A_WORDSPACING = 70583;
		public const uint32 DISPID_A_VERTICALALIGN = 70584;
		public const uint32 DISPID_A_BORDER = 70585;
		public const uint32 DISPID_A_BORDERTOP = 70586;
		public const uint32 DISPID_A_BORDERRIGHT = 70587;
		public const uint32 DISPID_A_BORDERBOTTOM = 70588;
		public const uint32 DISPID_A_BORDERLEFT = 70589;
		public const uint32 DISPID_A_BORDERCOLOR = 70590;
		public const uint32 DISPID_A_BORDERTOPCOLOR = 70591;
		public const uint32 DISPID_A_BORDERRIGHTCOLOR = 70592;
		public const uint32 DISPID_A_BORDERBOTTOMCOLOR = 70593;
		public const uint32 DISPID_A_BORDERLEFTCOLOR = 70594;
		public const uint32 DISPID_A_BORDERWIDTH = 70595;
		public const uint32 DISPID_A_BORDERTOPWIDTH = 70596;
		public const uint32 DISPID_A_BORDERRIGHTWIDTH = 70597;
		public const uint32 DISPID_A_BORDERBOTTOMWIDTH = 70598;
		public const uint32 DISPID_A_BORDERLEFTWIDTH = 70599;
		public const uint32 DISPID_A_BORDERSTYLE = 70600;
		public const uint32 DISPID_A_BORDERTOPSTYLE = 70601;
		public const uint32 DISPID_A_BORDERRIGHTSTYLE = 70602;
		public const uint32 DISPID_A_BORDERBOTTOMSTYLE = 70603;
		public const uint32 DISPID_A_BORDERLEFTSTYLE = 70604;
		public const uint32 DISPID_A_TEXTDECORATIONOVERLINE = 70605;
		public const uint32 DISPID_A_FLOAT = 70606;
		public const uint32 DISPID_A_DISPLAY = 70607;
		public const uint32 DISPID_A_LISTSTYLETYPE = 70608;
		public const uint32 DISPID_A_LISTSTYLEPOSITION = 70609;
		public const uint32 DISPID_A_LISTSTYLEIMAGE = 70610;
		public const uint32 DISPID_A_LISTSTYLE = 70611;
		public const uint32 DISPID_A_WHITESPACE = 70612;
		public const uint32 DISPID_A_PAGEBREAKBEFORE = 70613;
		public const uint32 DISPID_A_PAGEBREAKAFTER = 70614;
		public const uint32 DISPID_A_SCROLL = 70615;
		public const uint32 DISPID_A_VISIBILITY = 70616;
		public const uint32 DISPID_A_HIDDEN = 70617;
		public const uint32 DISPID_A_FILTER = 70618;
		public const uint32 DISPID_DEFAULTVALUE = 70619;
		public const uint32 DISPID_A_BORDERCOLLAPSE = 70620;
		public const uint32 DISPID_A_POSITION = 70626;
		public const uint32 DISPID_A_ZINDEX = 70627;
		public const uint32 DISPID_A_CLIP = 70628;
		public const uint32 DISPID_A_CLIPRECTTOP = 70629;
		public const uint32 DISPID_A_CLIPRECTRIGHT = 70630;
		public const uint32 DISPID_A_CLIPRECTBOTTOM = 70631;
		public const uint32 DISPID_A_CLIPRECTLEFT = 70632;
		public const uint32 DISPID_A_FONTFACESRC = 70633;
		public const uint32 DISPID_A_TABLELAYOUT = 70634;
		public const uint32 DISPID_A_STYLETEXT = 70635;
		public const uint32 DISPID_A_LANGUAGE = 70636;
		public const uint32 DISPID_A_VALUE = 70637;
		public const uint32 DISPID_A_CURSOR = 70638;
		public const uint32 DISPID_A_EVENTSINK = 70639;
		public const uint32 DISPID_A_PROPNOTIFYSINK = 70640;
		public const uint32 DISPID_A_ROWSETNOTIFYSINK = 70641;
		public const uint32 DISPID_INTERNAL_INLINESTYLEAA = 70642;
		public const uint32 DISPID_INTERNAL_CSTYLEPTRCACHE = 70643;
		public const uint32 DISPID_INTERNAL_CRUNTIMESTYLEPTRCACHE = 70644;
		public const uint32 DISPID_INTERNAL_INVOKECONTEXT = 70645;
		public const uint32 DISPID_A_BGURLIMGCTXCACHEINDEX = 70646;
		public const uint32 DISPID_A_LIURLIMGCTXCACHEINDEX = 70647;
		public const uint32 DISPID_A_ROWSETASYNCHNOTIFYSINK = 70648;
		public const uint32 DISPID_INTERNAL_FILTERPTRCACHE = 70649;
		public const uint32 DISPID_A_ROWPOSITIONCHANGESINK = 70650;
		public const uint32 DISPID_A_BEHAVIOR = 70651;
		public const uint32 DISPID_A_READYSTATE = 70652;
		public const uint32 DISPID_A_DIR = 70653;
		public const uint32 DISPID_A_UNICODEBIDI = 70654;
		public const uint32 DISPID_A_DIRECTION = 70655;
		public const uint32 DISPID_A_IMEMODE = 70656;
		public const uint32 DISPID_A_RUBYALIGN = 70657;
		public const uint32 DISPID_A_RUBYPOSITION = 70658;
		public const uint32 DISPID_A_RUBYOVERHANG = 70659;
		public const uint32 DISPID_INTERNAL_ONBEHAVIOR_CONTENTREADY = 70660;
		public const uint32 DISPID_INTERNAL_ONBEHAVIOR_DOCUMENTREADY = 70661;
		public const uint32 DISPID_INTERNAL_CDOMCHILDRENPTRCACHE = 70662;
		public const uint32 DISPID_A_LAYOUTGRIDCHAR = 70663;
		public const uint32 DISPID_A_LAYOUTGRIDLINE = 70664;
		public const uint32 DISPID_A_LAYOUTGRIDMODE = 70665;
		public const uint32 DISPID_A_LAYOUTGRIDTYPE = 70666;
		public const uint32 DISPID_A_LAYOUTGRID = 70667;
		public const uint32 DISPID_A_TEXTAUTOSPACE = 70668;
		public const uint32 DISPID_A_LINEBREAK = 70669;
		public const uint32 DISPID_A_WORDBREAK = 70670;
		public const uint32 DISPID_A_TEXTJUSTIFY = 70671;
		public const uint32 DISPID_A_TEXTJUSTIFYTRIM = 70672;
		public const uint32 DISPID_A_TEXTKASHIDA = 70673;
		public const uint32 DISPID_A_OVERFLOWX = 70675;
		public const uint32 DISPID_A_OVERFLOWY = 70676;
		public const uint32 DISPID_A_HTCDISPATCHITEM_VALUE = 70677;
		public const uint32 DISPID_A_DOCFRAGMENT = 70678;
		public const uint32 DISPID_A_HTCDD_ELEMENT = 70679;
		public const uint32 DISPID_A_HTCDD_CREATEEVENTOBJECT = 70680;
		public const uint32 DISPID_A_URNATOM = 70681;
		public const uint32 DISPID_A_UNIQUEPEERNUMBER = 70682;
		public const uint32 DISPID_A_ACCELERATOR = 70683;
		public const uint32 DISPID_INTERNAL_ONBEHAVIOR_APPLYSTYLE = 70684;
		public const uint32 DISPID_INTERNAL_RUNTIMESTYLEAA = 70685;
		public const uint32 DISPID_A_HTCDISPATCHITEM_VALUE_SCRIPTSONLY = 70686;
		public const uint32 DISPID_A_EXTENDEDTAGDESC = 70687;
		public const uint32 DISPID_A_ROTATE = 70688;
		public const uint32 DISPID_A_ZOOM = 70689;
		public const uint32 DISPID_A_HTCDD_PROTECTEDELEMENT = 70690;
		public const uint32 DISPID_A_LAYOUTFLOW = 70691;
		public const uint32 DISPID_INTERNAL_FILTERNATIVEINFOPTRCACHE = 70692;
		public const uint32 DISPID_A_HTCDD_ISMARKUPSHARED = 70693;
		public const uint32 DISPID_A_WORDWRAP = 70694;
		public const uint32 DISPID_A_TEXTUNDERLINEPOSITION = 70695;
		public const uint32 DISPID_A_HASLAYOUT = 70696;
		public const uint32 DISPID_A_MEDIA = 70697;
		public const uint32 DISPID_A_EDITABLE = 70698;
		public const uint32 DISPID_A_HIDEFOCUS = 70699;
		public const uint32 DISPID_INTERNAL_LAYOUTRECTREGISTRYPTRCACHE = 70700;
		public const uint32 DISPID_A_HTCDD_DEFAULTS = 70701;
		public const uint32 DISPID_A_TEXTLINETHROUGHSTYLE = 70702;
		public const uint32 DISPID_A_TEXTUNDERLINESTYLE = 70703;
		public const uint32 DISPID_A_TEXTEFFECT = 70704;
		public const uint32 DISPID_A_TEXTBACKGROUNDCOLOR = 70705;
		public const uint32 DISPID_A_RENDERINGPRIORITY = 70706;
		public const uint32 DISPID_INTERNAL_DWNPOSTPTRCACHE = 70707;
		public const uint32 DISPID_INTERNAL_CODEPAGESETTINGSPTRCACHE = 70708;
		public const uint32 DISPID_INTERNAL_DWNDOCPTRCACHE = 70709;
		public const uint32 DISPID_INTERNAL_DATABINDTASKPTRCACHE = 70710;
		public const uint32 DISPID_INTERNAL_URLLOCATIONCACHE = 70711;
		public const uint32 DISPID_INTERNAL_ARYELEMENTRELEASENOTIFYPTRCACHE = 70712;
		public const uint32 DISPID_INTERNAL_PEERFACTORYURLMAPPTRCACHE = 70713;
		public const uint32 DISPID_INTERNAL_STMDIRTYPTRCACHE = 70714;
		public const uint32 DISPID_INTERNAL_COMPUTEFORMATSTATECACHE = 70715;
		public const uint32 DISPID_A_SCROLLBARBASECOLOR = 70716;
		public const uint32 DISPID_A_SCROLLBARFACECOLOR = 70717;
		public const uint32 DISPID_A_SCROLLBAR3DLIGHTCOLOR = 70718;
		public const uint32 DISPID_A_SCROLLBARSHADOWCOLOR = 70719;
		public const uint32 DISPID_A_SCROLLBARHIGHLIGHTCOLOR = 70720;
		public const uint32 DISPID_A_SCROLLBARDARKSHADOWCOLOR = 70721;
		public const uint32 DISPID_A_SCROLLBARARROWCOLOR = 70722;
		public const uint32 DISPID_INTERNAL_ONBEHAVIOR_CONTENTSAVE = 70723;
		public const uint32 DISPID_A_DEFAULTTEXTSELECTION = 70724;
		public const uint32 DISPID_A_TEXTDECORATIONCOLOR = 70725;
		public const uint32 DISPID_A_TEXTCOLOR = 70726;
		public const uint32 DISPID_A_STYLETEXTDECORATION = 70727;
		public const uint32 DISPID_A_WRITINGMODE = 70728;
		public const uint32 DISPID_INTERNAL_MEDIA_REFERENCE = 70729;
		public const uint32 DISPID_INTERNAL_GENERICCOMPLUSREF = 70730;
		public const uint32 DISPID_INTERNAL_FOCUSITEMS = 70731;
		public const uint32 DISPID_A_SCROLLBARTRACKCOLOR = 70732;
		public const uint32 DISPID_INTERNAL_DWNHEADERCACHE = 70733;
		public const uint32 DISPID_A_FROZEN = 70734;
		public const uint32 DISPID_A_VIEWINHERITSTYLE = 70735;
		public const uint32 DISPID_INTERNAL_FRAMESCOLLECTION = 70736;
		public const uint32 DISPID_A_BGURLIMGCTXCACHEINDEX_FLINE = 70737;
		public const uint32 DISPID_A_BGURLIMGCTXCACHEINDEX_FLETTER = 70738;
		public const uint32 DISPID_A_TEXTALIGNLAST = 70739;
		public const uint32 DISPID_A_TEXTKASHIDASPACE = 70740;
		public const uint32 DISPID_INTERNAL_FONTHISTORYINDEX = 70741;
		public const uint32 DISPID_A_ALLOWTRANSPARENCY = 70742;
		public const uint32 DISPID_INTERNAL_URLSEARCHCACHE = 70743;
		public const uint32 DISPID_A_ISBLOCK = 70744;
		public const uint32 DISPID_A_TEXTOVERFLOW = 70745;
		public const uint32 DISPID_INTERNAL_CATTRIBUTECOLLPTRCACHE = 70746;
		public const uint32 DISPID_A_MINHEIGHT = 70747;
		public const uint32 DISPID_INTERNAL_INVOKECONTEXTDOCUMENT = 70748;
		public const uint32 DISPID_A_INTERPOLATION = 70749;
		public const uint32 DISPID_A_MAXHEIGHT = 70750;
		public const uint32 DISPID_A_MINWIDTH = 70751;
		public const uint32 DISPID_A_MAXWIDTH = 70752;
		public const uint32 DISPID_INTERNAL_ARYOBJECTRELEASECLEANUPPTRCACHE = 70753;
		public const uint32 DISPID_A_CONTENT = 70754;
		public const uint32 DISPID_A_CAPTIONSIDE = 70755;
		public const uint32 DISPID_A_COUNTERINCREMENT = 70756;
		public const uint32 DISPID_A_COUNTERRESET = 70757;
		public const uint32 DISPID_A_OUTLINE = 70758;
		public const uint32 DISPID_A_OUTLINEWIDTH = 70759;
		public const uint32 DISPID_A_OUTLINESTYLE = 70760;
		public const uint32 DISPID_A_OUTLINECOLOR = 70761;
		public const uint32 DISPID_A_BOXSIZING = 70762;
		public const uint32 DISPID_A_BORDERSPACING = 70763;
		public const uint32 DISPID_A_ORPHANS = 70764;
		public const uint32 DISPID_A_WIDOWS = 70765;
		public const uint32 DISPID_A_PAGEBREAKINSIDE = 70766;
		public const uint32 DISPID_A_MS_BEHAVIOR = 70767;
		public const uint32 DISPID_A_MS_SCROLLBARBASECOLOR = 70768;
		public const uint32 DISPID_A_MS_SCROLLBARFACECOLOR = 70769;
		public const uint32 DISPID_A_MS_SCROLLBAR3DLIGHTCOLOR = 70770;
		public const uint32 DISPID_A_MS_SCROLLBARSHADOWCOLOR = 70771;
		public const uint32 DISPID_A_MS_SCROLLBARHIGHLIGHTCOLOR = 70772;
		public const uint32 DISPID_A_MS_SCROLLBARDARKSHADOWCOLOR = 70773;
		public const uint32 DISPID_A_MS_SCROLLBARARROWCOLOR = 70774;
		public const uint32 DISPID_A_MS_SCROLLBARTRACKCOLOR = 70775;
		public const uint32 DISPID_A_MS_TEXTALIGNLAST = 70776;
		public const uint32 DISPID_A_MS_TEXTOVERFLOW = 70777;
		public const uint32 DISPID_A_MS_TEXTUNDERLINEPOSITION = 70778;
		public const uint32 DISPID_A_MS_WRITINGMODE = 70779;
		public const uint32 DISPID_A_MS_IMEMODE = 70780;
		public const uint32 DISPID_A_MS_BACKGROUNDPOSX = 70781;
		public const uint32 DISPID_A_MS_BACKGROUNDPOSY = 70782;
		public const uint32 DISPID_A_MS_ACCELERATOR = 70783;
		public const uint32 DISPID_A_MS_LAYOUTFLOW = 70784;
		public const uint32 DISPID_A_MS_ZOOM = 70785;
		public const uint32 DISPID_A_EMPTYCELLS = 70786;
		public const uint32 DISPID_A_MS_BLOCKPROGRESSION = 70787;
		public const uint32 DISPID_A_QUOTES = 70788;
		public const uint32 DISPID_INTERNAL_BGURLIMGCTXCACHEINDEX_GCBEFORE = 70789;
		public const uint32 DISPID_INTERNAL_BGURLIMGCTXCACHEINDEX_GCAFTER = 70790;
		public const uint32 DISPID_INTERNAL_BGURLIMGCTXCACHEINDEX_URLBEFORE = 70791;
		public const uint32 DISPID_INTERNAL_BGURLIMGCTXCACHEINDEX_URLAFTER = 70792;
		public const uint32 DISPID_AAHEADER = 70793;
		public const uint32 DISPID_INTERNAL_GETTERSETTERCOLLECTION = 70794;
		public const uint32 DISPID_A_MS_LAYOUTGRIDCHAR = 70795;
		public const uint32 DISPID_A_MS_LAYOUTGRIDLINE = 70796;
		public const uint32 DISPID_A_MS_LAYOUTGRIDMODE = 70797;
		public const uint32 DISPID_A_MS_LAYOUTGRIDTYPE = 70798;
		public const uint32 DISPID_A_MS_LAYOUTGRID = 70799;
		public const uint32 DISPID_A_MS_LINEBREAK = 70800;
		public const uint32 DISPID_A_MS_FILTER = 70801;
		public const uint32 DISPID_A_MS_OVERFLOWX = 70802;
		public const uint32 DISPID_A_MS_OVERFLOWY = 70803;
		public const uint32 DISPID_A_MS_TEXTAUTOSPACE = 70804;
		public const uint32 DISPID_A_MS_TEXTJUSTIFY = 70805;
		public const uint32 DISPID_A_MS_TEXTKASHIDASPACE = 70806;
		public const uint32 DISPID_A_MS_WORDBREAK = 70807;
		public const uint32 DISPID_A_MS_WORDWRAP = 70808;
		public const uint32 DISPID_INTERNAL_URIBEFOREREDIRECT = 70809;
		public const uint32 DISPID_A_ALIGNMENTBASELINE = 70814;
		public const uint32 DISPID_A_BASELINESHIFT = 70815;
		public const uint32 DISPID_A_DOMINANTBASELINE = 70816;
		public const uint32 DISPID_A_FONTSIZEADJUST = 70817;
		public const uint32 DISPID_A_FONTSTRETCH = 70818;
		public const uint32 DISPID_A_OPACITY = 70819;
		public const uint32 DISPID_A_CLIPPATH = 70820;
		public const uint32 DISPID_A_CLIPRULE = 70821;
		public const uint32 DISPID_A_FILL = 70822;
		public const uint32 DISPID_A_FILLOPACITY = 70823;
		public const uint32 DISPID_A_FILLRULE = 70824;
		public const uint32 DISPID_A_KERNING = 70825;
		public const uint32 DISPID_A_MARKER = 70826;
		public const uint32 DISPID_A_MARKEREND = 70827;
		public const uint32 DISPID_A_MARKERMID = 70828;
		public const uint32 DISPID_A_MARKERSTART = 70829;
		public const uint32 DISPID_A_MASK = 70830;
		public const uint32 DISPID_A_POINTEREVENTS = 70831;
		public const uint32 DISPID_A_STOPCOLOR = 70832;
		public const uint32 DISPID_A_STOPOPACITY = 70833;
		public const uint32 DISPID_A_STROKE = 70834;
		public const uint32 DISPID_A_STROKEDASHARRAY = 70835;
		public const uint32 DISPID_A_STROKEDASHOFFSET = 70836;
		public const uint32 DISPID_A_STROKELINECAP = 70837;
		public const uint32 DISPID_A_STROKELINEJOIN = 70838;
		public const uint32 DISPID_A_STROKEMITERLIMIT = 70839;
		public const uint32 DISPID_A_STROKEOPACITY = 70840;
		public const uint32 DISPID_A_STROKEWIDTH = 70841;
		public const uint32 DISPID_A_TEXTANCHOR = 70842;
		public const uint32 DISPID_A_GLYPHORIENTATIONHORIZONTAL = 70843;
		public const uint32 DISPID_A_GLYPHORIENTATIONVERTICAL = 70844;
		public const uint32 DISPID_A_CSSFLOAT = 70845;
		public const uint32 DISPID_A_BORDERRADIUS = 70846;
		public const uint32 DISPID_A_BORDERTOPLEFTRADIUS = 70847;
		public const uint32 DISPID_A_BORDERTOPRIGHTRADIUS = 70848;
		public const uint32 DISPID_A_BORDERBOTTOMRIGHTRADIUS = 70849;
		public const uint32 DISPID_A_BORDERBOTTOMLEFTRADIUS = 70850;
		public const uint32 DISPID_A_MS_TRANSFORM = 70851;
		public const uint32 DISPID_A_IE9_BACKGROUNDCLIP = 70852;
		public const uint32 DISPID_A_IE9_BACKGROUNDORIGIN = 70853;
		public const uint32 DISPID_A_IE9_BACKGROUNDSIZE = 70854;
		public const uint32 DISPID_A_IE9_BOXSHADOW = 70855;
		public const uint32 DISPID_A_MS_TRANSFORMORIGIN = 70861;
		public const uint32 DISPID_A_MS_TRANSFORMORIGINX = 70862;
		public const uint32 DISPID_A_MS_TRANSFORMORIGINY = 70863;
		public const uint32 DISPID_A_MS_TEXTSIZEADJUST = 70864;
		public const uint32 DISPID_A_MS_TRANSITIONPROPERTY = 70866;
		public const uint32 DISPID_A_MS_TRANSITIONDURATION = 70867;
		public const uint32 DISPID_A_MS_TRANSITIONTIMINGFUNCTION = 70868;
		public const uint32 DISPID_A_MS_TRANSITIONDELAY = 70869;
		public const uint32 DISPID_A_MS_TRANSITION = 70870;
		public const uint32 DISPID_A_COLUMNS = 70871;
		public const uint32 DISPID_A_COLUMNCOUNT = 70872;
		public const uint32 DISPID_A_COLUMNWIDTH = 70873;
		public const uint32 DISPID_A_COLUMNGAP = 70874;
		public const uint32 DISPID_A_COLUMNFILL = 70875;
		public const uint32 DISPID_A_COLUMNSPAN = 70876;
		public const uint32 DISPID_A_COLUMNRULE = 70877;
		public const uint32 DISPID_A_COLUMNRULESTYLE = 70878;
		public const uint32 DISPID_A_COLUMNRULEWIDTH = 70879;
		public const uint32 DISPID_A_COLUMNRULECOLOR = 70880;
		public const uint32 DISPID_A_BREAKBEFORE = 70881;
		public const uint32 DISPID_A_BREAKAFTER = 70882;
		public const uint32 DISPID_A_BREAKINSIDE = 70883;
		public const uint32 DISPID_A_MS_TRANSFORMORIGINZ = 70884;
		public const uint32 DISPID_A_MS_PERSPECTIVE = 70885;
		public const uint32 DISPID_A_MS_PERSPECTIVEORIGIN = 70886;
		public const uint32 DISPID_A_MS_PERSPECTIVEORIGINX = 70887;
		public const uint32 DISPID_A_MS_PERSPECTIVEORIGINY = 70888;
		public const uint32 DISPID_A_MS_TRANSFORMSTYLE = 70889;
		public const uint32 DISPID_A_MS_BACKFACEVISIBILITY = 70890;
		public const uint32 DISPID_A_MS_SCROLLCHAINING = 70891;
		public const uint32 DISPID_A_MS_CONTENTZOOMING = 70892;
		public const uint32 DISPID_A_MS_CONTENTZOOMSNAPTYPE = 70893;
		public const uint32 DISPID_A_MS_SCROLLRAILS = 70894;
		public const uint32 DISPID_A_MS_CONTENTZOOMCHAINING = 70895;
		public const uint32 DISPID_A_MS_SCROLLSNAPTYPE = 70896;
		public const uint32 DISPID_A_MS_CONTENTZOOMLIMIT = 70897;
		public const uint32 DISPID_A_MS_CONTENTZOOMSNAP = 70898;
		public const uint32 DISPID_A_MS_CONTENTZOOMSNAPPOINTS = 70899;
		public const uint32 DISPID_A_MS_CONTENTZOOMFACTOR = 70900;
		public const uint32 DISPID_A_MS_CONTENTZOOMLIMITMIN = 70901;
		public const uint32 DISPID_A_MS_CONTENTZOOMLIMITMAX = 70902;
		public const uint32 DISPID_A_MS_SCROLLSNAPX = 70903;
		public const uint32 DISPID_A_MS_SCROLLSNAPY = 70904;
		public const uint32 DISPID_A_MS_SCROLLSNAPPOINTSX = 70905;
		public const uint32 DISPID_A_MS_SCROLLSNAPPOINTSY = 70906;
		public const uint32 DISPID_A_SPELLCHECK = 70907;
		public const uint32 DISPID_A_MS_GRIDCOLUMN = 70908;
		public const uint32 DISPID_A_MS_GRIDCOLUMNALIGN = 70909;
		public const uint32 DISPID_A_MS_GRIDCOLUMNS = 70910;
		public const uint32 DISPID_A_MS_GRIDCOLUMNSPAN = 70911;
		public const uint32 DISPID_A_MS_GRIDROW = 70913;
		public const uint32 DISPID_A_MS_GRIDROWALIGN = 70914;
		public const uint32 DISPID_A_MS_GRIDROWS = 70915;
		public const uint32 DISPID_A_MS_GRIDROWSPAN = 70916;
		public const uint32 DISPID_A_MS_ANIMATIONNAME = 70917;
		public const uint32 DISPID_A_MS_ANIMATIONDURATION = 70918;
		public const uint32 DISPID_A_MS_ANIMATIONTIMINGFUNCTION = 70919;
		public const uint32 DISPID_A_MS_ANIMATIONDELAY = 70920;
		public const uint32 DISPID_A_MS_ANIMATIONDIRECTION = 70921;
		public const uint32 DISPID_A_MS_ANIMATIONPLAYSTATE = 70922;
		public const uint32 DISPID_A_MS_ANIMATIONITERATIONCOUNT = 70923;
		public const uint32 DISPID_A_MS_ANIMATION = 70924;
		public const uint32 DISPID_A_MS_ANIMATIONFILLMODE = 70925;
		public const uint32 DISPID_A_FLOODCOLOR = 70926;
		public const uint32 DISPID_A_FLOODOPACITY = 70927;
		public const uint32 DISPID_A_COLORINTERPOLATIONFILTERS = 70928;
		public const uint32 DISPID_A_LIGHTINGCOLOR = 70929;
		public const uint32 DISPID_A_MS_SCROLLLIMITXMIN = 70930;
		public const uint32 DISPID_A_MS_SCROLLLIMITYMIN = 70931;
		public const uint32 DISPID_A_MS_SCROLLLIMITXMAX = 70932;
		public const uint32 DISPID_A_MS_SCROLLLIMITYMAX = 70933;
		public const uint32 DISPID_A_MS_SCROLLLIMIT = 70934;
		public const uint32 DISPID_A_MS_OVERFLOWSTYLE = 70935;
		public const uint32 DISPID_A_TEXTSHADOW = 70936;
		public const uint32 DISPID_A_MS_WRAPTHROUGH = 70937;
		public const uint32 DISPID_A_MS_FLOWFROM = 70938;
		public const uint32 DISPID_A_MS_FLOWINTO = 70939;
		public const uint32 DISPID_A_MS_HYPHENS = 70940;
		public const uint32 DISPID_A_MS_HYPHENATE_LIMIT_ZONE = 70941;
		public const uint32 DISPID_A_MS_HYPHENATE_LIMIT_CHARS = 70942;
		public const uint32 DISPID_A_MS_HYPHENATE_LIMIT_LINES = 70943;
		public const uint32 DISPID_A_DRAGGABLE = 70944;
		public const uint32 DISPID_A_MS_HIGHCONTRASTADJUST = 70945;
		public const uint32 DISPID_A_ENABLEBACKGROUND = 70946;
		public const uint32 DISPID_A_MS_WRAPMARGIN = 70947;
		public const uint32 DISPID_A_MS_WRAPFLOW = 70949;
		public const uint32 DISPID_A_MS_FONTFEATURESETTINGS = 70950;
		public const uint32 DISPID_A_MS_USERSELECT = 70951;
		public const uint32 DISPID_A_MS_TOUCHACTION = 70952;
		public const uint32 DISPID_A_CLASSLIST = 70953;
		public const uint32 DISPID_A_MS_SCROLLTRANSLATION = 70954;
		public const uint32 DISPID_A_MS_FLEX = 70955;
		public const uint32 DISPID_A_MS_FLEXPOSITIVE = 70956;
		public const uint32 DISPID_A_MS_FLEXNEGATIVE = 70957;
		public const uint32 DISPID_A_MS_FLEXPREFERREDSIZE = 70958;
		public const uint32 DISPID_A_MS_FLEXFLOW = 70959;
		public const uint32 DISPID_A_MS_FLEXDIRECTION = 70960;
		public const uint32 DISPID_A_MS_FLEXWRAP = 70961;
		public const uint32 DISPID_A_MS_FLEXALIGN = 70962;
		public const uint32 DISPID_A_MS_FLEXITEMALIGN = 70963;
		public const uint32 DISPID_A_MS_FLEXPACK = 70964;
		public const uint32 DISPID_A_MS_FLEXLINEPACK = 70965;
		public const uint32 DISPID_A_MS_FLEXORDER = 70966;
		public const uint32 DISPID_A_TRANSFORM = 70967;
		public const uint32 DISPID_A_TRANSFORMORIGIN = 70968;
		public const uint32 DISPID_A_TRANSITIONPROPERTY = 70969;
		public const uint32 DISPID_A_TRANSITIONDURATION = 70970;
		public const uint32 DISPID_A_TRANSITIONTIMINGFUNCTION = 70971;
		public const uint32 DISPID_A_TRANSITIONDELAY = 70972;
		public const uint32 DISPID_A_TRANSITION = 70973;
		public const uint32 DISPID_A_PERSPECTIVE = 70974;
		public const uint32 DISPID_A_PERSPECTIVEORIGIN = 70975;
		public const uint32 DISPID_A_TRANSFORMSTYLE = 70976;
		public const uint32 DISPID_A_BACKFACEVISIBILITY = 70977;
		public const uint32 DISPID_A_ANIMATIONNAME = 70978;
		public const uint32 DISPID_A_ANIMATIONDURATION = 70979;
		public const uint32 DISPID_A_ANIMATIONTIMINGFUNCTION = 70980;
		public const uint32 DISPID_A_ANIMATIONDELAY = 70981;
		public const uint32 DISPID_A_ANIMATIONDIRECTION = 70982;
		public const uint32 DISPID_A_ANIMATIONPLAYSTATE = 70983;
		public const uint32 DISPID_A_ANIMATIONITERATIONCOUNT = 70984;
		public const uint32 DISPID_A_ANIMATION = 70985;
		public const uint32 DISPID_A_ANIMATIONFILLMODE = 70986;
		public const uint32 DISPID_A_FONTFEATURESETTINGS = 70987;
		public const uint32 DISPID_A_TRANSFORMORIGINX = 70988;
		public const uint32 DISPID_A_TRANSFORMORIGINY = 70989;
		public const uint32 DISPID_A_TRANSFORMORIGINZ = 70990;
		public const uint32 DISPID_A_PERSPECTIVEORIGINX = 70992;
		public const uint32 DISPID_A_PERSPECTIVEORIGINY = 70993;
		public const uint32 DISPID_A_MS_TOUCHSELECT = 70994;
		public const uint32 DISPID_INTERNAL_ERRORPAGEREFRESHURL = 70995;
		public const uint32 DISPID_INTERNAL_ERRORPAGEREASON = 70996;
		public const uint32 DISPID_INTERNAL_ERRORPAGEDWNPOST = 70997;
		public const uint32 DISPID_A_FLEXDIRECTION = 70998;
		public const uint32 DISPID_A_FLEXWRAP = 70999;
		public const uint32 DISPID_A_FLEXFLOW = 71000;
		public const uint32 DISPID_A_ORDER = 71001;
		public const uint32 DISPID_A_FLEX = 71002;
		public const uint32 DISPID_A_FLEXGROW = 71003;
		public const uint32 DISPID_A_FLEXSHRINK = 71004;
		public const uint32 DISPID_A_FLEXBASIS = 71005;
		public const uint32 DISPID_A_JUSTIFYCONTENT = 71006;
		public const uint32 DISPID_A_ALIGNITEMS = 71007;
		public const uint32 DISPID_A_ALIGNSELF = 71008;
		public const uint32 DISPID_A_ALIGNCONTENT = 71009;
		public const uint32 DISPID_A_BORDERIMAGE = 71010;
		public const uint32 DISPID_A_BORDERIMAGESOURCE = 71011;
		public const uint32 DISPID_A_BORDERIMAGESLICE = 71012;
		public const uint32 DISPID_A_BORDERIMAGEWIDTH = 71013;
		public const uint32 DISPID_A_BORDERIMAGEOUTSET = 71014;
		public const uint32 DISPID_A_BORDERIMAGEREPEAT = 71015;
		public const uint32 DISPID_A_DATASET = 71016;
		public const uint32 DISPID_A_MS_IMEALIGN = 71017;
		public const uint32 DISPID_A_MS_TEXTCOMBINEHORIZONTAL = 71018;
		public const uint32 DISPID_A_TOUCHACTION = 71019;
		public const uint32 DISPID_A_WEBKIT_APPEARANCE = 71020;
		public const uint32 DISPID_A_WEBKIT_BOXALIGN = 71021;
		public const uint32 DISPID_A_WEBKIT_BOXORDINALGROUP = 71022;
		public const uint32 DISPID_A_WEBKIT_BOXPACK = 71023;
		public const uint32 DISPID_A_WEBKIT_BOXFLEX = 71024;
		public const uint32 DISPID_A_WEBKIT_BOXORIENT = 71025;
		public const uint32 DISPID_A_WEBKIT_BOXDIRECTION = 71026;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONFILLMODE = 71027;
		public const uint32 DISPID_A_WEBKIT_TRANSFORM = 71028;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDSIZE = 71029;
		public const uint32 DISPID_A_WEBKIT_BACKFACEVISIBILITY = 71030;
		public const uint32 DISPID_A_WEBKIT_BOXSIZING = 71031;
		public const uint32 DISPID_A_WEBKIT_USERSELECT = 71032;
		public const uint32 DISPID_A_WEBKIT_ANIMATION = 71033;
		public const uint32 DISPID_A_WEBKIT_TRANSITION = 71034;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONNAME = 71035;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONDURATION = 71036;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONTIMINGFUNCTION = 71037;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONDELAY = 71038;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONITERATIONCOUNT = 71039;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONDIRECTION = 71040;
		public const uint32 DISPID_A_WEBKIT_ANIMATIONPLAYSTATE = 71041;
		public const uint32 DISPID_A_WEBKIT_TRANSITIONPROPERTY = 71042;
		public const uint32 DISPID_A_WEBKIT_TRANSITIONDURATION = 71043;
		public const uint32 DISPID_A_WEBKIT_TRANSITIONTIMINGFUNCTION = 71044;
		public const uint32 DISPID_A_WEBKIT_TRANSITIONDELAY = 71045;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDATTACHMENT = 71046;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDCOLOR = 71047;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDCLIP = 71048;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDIMAGE = 71049;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDREPEAT = 71050;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDORIGIN = 71051;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDPOSITION = 71052;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDPOSITIONX = 71053;
		public const uint32 DISPID_A_WEBKIT_BACKGROUNDPOSITIONY = 71054;
		public const uint32 DISPID_A_WEBKIT_BACKGROUND = 71055;
		public const uint32 DISPID_A_WEBKIT_TRANSFORMORIGIN = 71056;
		public const uint32 DISPID_A_WEBKIT_TRANSFORMORIGINX = 71057;
		public const uint32 DISPID_A_WEBKIT_TRANSFORMORIGINY = 71058;
		public const uint32 DISPID_A_WEBKIT_TRANSFORMORIGINZ = 71059;
		public const uint32 DISPID_A_WEBKIT_TEXTSIZEADJUST = 71060;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGE = 71061;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGESOURCE = 71062;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGESLICE = 71063;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGEWIDTH = 71064;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGEOUTSET = 71065;
		public const uint32 DISPID_A_WEBKIT_BORDERIMAGEREPEAT = 71066;
		public const uint32 DISPID_INTERNAL_FIRST = 71136;
		public const uint32 DISPID_INTERNAL_BACKGROUNDDEFINITION = 71137;
		public const uint32 DISPID_A_MEDIAORIENTATION = 71138;
		public const uint32 DISPID_A_MEDIAMAXWIDTH = 71139;
		public const uint32 DISPID_A_MEDIAMINWIDTH = 71140;
		public const uint32 DISPID_A_MEDIAWIDTH = 71141;
		public const uint32 DISPID_A_MEDIAMAXHEIGHT = 71142;
		public const uint32 DISPID_A_MEDIAMINHEIGHT = 71143;
		public const uint32 DISPID_A_MEDIAHEIGHT = 71144;
		public const uint32 DISPID_A_MEDIAMAXDEVICEWIDTH = 71145;
		public const uint32 DISPID_A_MEDIAMINDEVICEWIDTH = 71146;
		public const uint32 DISPID_A_MEDIADEVICEWIDTH = 71147;
		public const uint32 DISPID_A_MEDIAMAXDEVICEHEIGHT = 71148;
		public const uint32 DISPID_A_MEDIAMINDEVICEHEIGHT = 71149;
		public const uint32 DISPID_A_MEDIADEVICEHEIGHT = 71150;
		public const uint32 DISPID_A_MEDIAMAXASPECTRATIO = 71151;
		public const uint32 DISPID_A_MEDIAMINASPECTRATIO = 71152;
		public const uint32 DISPID_A_MEDIAASPECTRATIO = 71153;
		public const uint32 DISPID_A_MEDIAMAXDEVICEASPECTRATIO = 71154;
		public const uint32 DISPID_A_MEDIAMINDEVICEASPECTRATIO = 71155;
		public const uint32 DISPID_A_MEDIADEVICEASPECTRATIO = 71156;
		public const uint32 DISPID_A_MEDIAMAXCOLOR = 71157;
		public const uint32 DISPID_A_MEDIAMINCOLOR = 71158;
		public const uint32 DISPID_A_MEDIACOLOR = 71159;
		public const uint32 DISPID_A_MEDIAMAXCOLORINDEX = 71160;
		public const uint32 DISPID_A_MEDIAMINCOLORINDEX = 71161;
		public const uint32 DISPID_A_MEDIACOLORINDEX = 71162;
		public const uint32 DISPID_A_MEDIAMAXMONOCHROME = 71163;
		public const uint32 DISPID_A_MEDIAMINMONOCHROME = 71164;
		public const uint32 DISPID_A_MEDIAMONOCHROME = 71165;
		public const uint32 DISPID_A_MEDIAMAXRESOLUTION = 71166;
		public const uint32 DISPID_A_MEDIAMINRESOLUTION = 71167;
		public const uint32 DISPID_A_MEDIARESOLUTION = 71168;
		public const uint32 DISPID_INTERNAL_CATTRIBUTEPTRCACHE = 71169;
		public const uint32 DISPID_INTERNAL_FONTFACEUNICODERANGE = 71170;
		public const uint32 DISPID_INTERNAL_TOUCHTARGETHANDLER = 71171;
		public const uint32 DISPID_INTERNAL_PAGEFLOWCOLLECTION = 71172;
		public const uint32 DISPID_INTERNAL_NAMEDFLOWCOLLECTION = 71173;
		public const uint32 DISPID_A_MEDIAMSHIGHCONTRAST = 71174;
		public const uint32 DISPID_INTERNAL_A_MS_HYPHENATE_LIMIT_WORDS = 71175;
		public const uint32 DISPID_INTERNAL_A_MS_HYPHENATE_LIMIT_BEFORE = 71176;
		public const uint32 DISPID_INTERNAL_A_MS_HYPHENATE_LIMIT_AFTER = 71177;
		public const uint32 DISPID_A_MEDIAMSVIEWSTATE = 71178;
		public const uint32 DISPID_INTERNAL_ARIAATOMIC = 71179;
		public const uint32 DISPID_INTERNAL_ARIAAUTOCOMPLETE = 71180;
		public const uint32 DISPID_INTERNAL_ARIADROPEFFECT = 71181;
		public const uint32 DISPID_INTERNAL_ARIAGRABBED = 71182;
		public const uint32 DISPID_INTERNAL_ARIALABEL = 71183;
		public const uint32 DISPID_INTERNAL_ARIAMULTILINE = 71184;
		public const uint32 DISPID_INTERNAL_ARIAORIENTATION = 71185;
		public const uint32 DISPID_INTERNAL_ARIASORT = 71186;
		public const uint32 DISPID_INTERNAL_ARIAVALUETEXT = 71187;
		public const uint32 DISPID_A_MEDIAGRID = 71188;
		public const uint32 DISPID_A_MEDIASCAN = 71189;
		public const uint32 DISPID_A_ACCEVENTRECORDID_START = 71190;
		public const uint32 DISPID_A_ACCEVENTRECORDID_END = 71209;
		public const uint32 DISPID_INTERNAL_REQUIRED = 71210;
		public const uint32 DISPID_INTERNAL_CSS_PARSEDARY = 71211;
		public const uint32 DISPID_INTERNAL_SOURCELOCATION = 71212;
		public const uint32 DISPID_INTERNAL_CSS_TRACEDSTYLES = 71213;
		public const uint32 DISPID_A_BDURLIMGCTXCACHEINDEX = 71214;
		public const uint32 DISPID_A_MEDIAWEBKITDEVICEPIXELRATIO = 71215;
		public const uint32 DISPID_A_MEDIAWEBKITMAXDEVICEPIXELRATIO = 71216;
		public const uint32 DISPID_A_MEDIAWEBKITMINDEVICEPIXELRATIO = 71217;
		public const uint32 DISPID_SVGSTYLABLE_CLASSNAME_PROP = 1001;
		public const uint32 DISPID_SVGLOCATABLE_NEARESTVIEWPORTELEMENT = 1002;
		public const uint32 DISPID_SVGLOCATABLE_FARTHESTVIEWPORTELEMENT = 1003;
		public const uint32 DISPID_SVGLOCATABLE_GETBBOX = 1004;
		public const uint32 DISPID_SVGLOCATABLE_GETCTM = 1005;
		public const uint32 DISPID_SVGLOCATABLE_GETSCREENCTM = 1006;
		public const uint32 DISPID_SVGLOCATABLE_GETTRANSFORMTOELEMENT = 1007;
		public const uint32 DISPID_SVGTRANSFORMABLE_TRANSFORM_ATTR = 1008;
		public const uint32 DISPID_SVGTRANSFORMABLE_TRANSFORM_PROP = 1009;
		public const uint32 DISPID_SVGTESTS_REQUIREDFEATURES_ATTR = 1010;
		public const uint32 DISPID_SVGTESTS_REQUIREDFEATURES_PROP = 1011;
		public const uint32 DISPID_SVGTESTS_REQUIREDEXTENSIONS_ATTR = 1012;
		public const uint32 DISPID_SVGTESTS_REQUIREDEXTENSIONS_PROP = 1013;
		public const uint32 DISPID_SVGTESTS_SYSTEMLANGUAGE_ATTR = 1014;
		public const uint32 DISPID_SVGTESTS_SYSTEMLANGUAGE_PROP = 1015;
		public const uint32 DISPID_SVGTESTS_HASEXTENSION = 1016;
		public const uint32 DISPID_SVGLANGSPACE_XMLLANG = 1017;
		public const uint32 DISPID_SVGLANGSPACE_XMLSPACE = 1018;
		public const uint32 DISPID_SVGEXTERNALRESOURCESREQUIRED_EXTERNALRESOURCESREQUIRED_ATTR = 1019;
		public const uint32 DISPID_SVGEXTERNALRESOURCESREQUIRED_EXTERNALRESOURCESREQUIRED_PROP = 1020;
		public const uint32 DISPID_SVGFITTOVIEWBOX_VIEWBOX_ATTR = 1021;
		public const uint32 DISPID_SVGFITTOVIEWBOX_VIEWBOX_PROP = 1022;
		public const uint32 DISPID_SVGFITTOVIEWBOX_PRESERVEASPECTRATIO_ATTR = 1023;
		public const uint32 DISPID_SVGFITTOVIEWBOX_PRESERVEASPECTRATIO_PROP = 1024;
		public const uint32 DISPID_SVGZOOMANDPAN_ZOOMANDPAN = 1025;
		public const uint32 DISPID_SVGURIREFERENCE_HREF = 1026;
		public const uint32 DISPID_EVPROP_ONMOUSEOVER = 71536;
		public const uint32 DISPID_EVMETH_ONMOUSEOVER = 65544;
		public const uint32 DISPID_EVPROP_ONMOUSEOUT = 71537;
		public const uint32 DISPID_EVMETH_ONMOUSEOUT = 65545;
		public const uint32 DISPID_EVPROP_ONMOUSEDOWN = 71538;
		public const int32 DISPID_EVMETH_ONMOUSEDOWN = -605;
		public const uint32 DISPID_EVPROP_ONMOUSEUP = 71539;
		public const int32 DISPID_EVMETH_ONMOUSEUP = -607;
		public const uint32 DISPID_EVPROP_ONMOUSEMOVE = 71540;
		public const int32 DISPID_EVMETH_ONMOUSEMOVE = -606;
		public const uint32 DISPID_EVPROP_ONKEYDOWN = 71541;
		public const int32 DISPID_EVMETH_ONKEYDOWN = -602;
		public const uint32 DISPID_EVPROP_ONKEYUP = 71542;
		public const int32 DISPID_EVMETH_ONKEYUP = -604;
		public const uint32 DISPID_EVPROP_ONKEYPRESS = 71543;
		public const int32 DISPID_EVMETH_ONKEYPRESS = -603;
		public const uint32 DISPID_EVPROP_ONCLICK = 71544;
		public const int32 DISPID_EVMETH_ONCLICK = -600;
		public const uint32 DISPID_EVPROP_ONDBLCLICK = 71545;
		public const int32 DISPID_EVMETH_ONDBLCLICK = -601;
		public const uint32 DISPID_EVPROP_ONSELECT = 71546;
		public const uint32 DISPID_EVMETH_ONSELECT = 1006;
		public const uint32 DISPID_EVPROP_ONSUBMIT = 71547;
		public const uint32 DISPID_EVMETH_ONSUBMIT = 1007;
		public const uint32 DISPID_EVPROP_ONRESET = 71548;
		public const uint32 DISPID_EVMETH_ONRESET = 1015;
		public const uint32 DISPID_EVPROP_ONHELP = 71549;
		public const uint32 DISPID_EVMETH_ONHELP = 65546;
		public const uint32 DISPID_EVPROP_ONFOCUS = 71550;
		public const uint32 DISPID_EVMETH_ONFOCUS = 65537;
		public const uint32 DISPID_EVPROP_ONBLUR = 71551;
		public const uint32 DISPID_EVPROP_ONROWEXIT = 71554;
		public const uint32 DISPID_EVMETH_ONROWEXIT = 65542;
		public const uint32 DISPID_EVPROP_ONROWENTER = 71555;
		public const uint32 DISPID_EVMETH_ONROWENTER = 65543;
		public const uint32 DISPID_EVPROP_ONBOUNCE = 71556;
		public const uint32 DISPID_EVMETH_ONBOUNCE = 1009;
		public const uint32 DISPID_EVPROP_ONBEFOREUPDATE = 71557;
		public const uint32 DISPID_EVMETH_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_EVPROP_ONAFTERUPDATE = 71558;
		public const uint32 DISPID_EVMETH_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_EVPROP_ONBEFOREDRAGOVER = 71559;
		public const uint32 DISPID_EVPROP_ONBEFOREDROPORPASTE = 71560;
		public const uint32 DISPID_EVPROP_ONREADYSTATECHANGE = 71561;
		public const int32 DISPID_EVMETH_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_EVPROP_ONFINISH = 71562;
		public const uint32 DISPID_EVMETH_ONFINISH = 1010;
		public const uint32 DISPID_EVPROP_ONSTART = 71563;
		public const uint32 DISPID_EVMETH_ONSTART = 1011;
		public const uint32 DISPID_EVPROP_ONABORT = 71564;
		public const uint32 DISPID_EVMETH_ONABORT = 1000;
		public const uint32 DISPID_EVPROP_ONERROR = 71565;
		public const uint32 DISPID_EVMETH_ONERROR = 1002;
		public const uint32 DISPID_EVPROP_ONCHANGE = 71566;
		public const uint32 DISPID_EVMETH_ONCHANGE = 1001;
		public const uint32 DISPID_EVPROP_ONSCROLL = 71567;
		public const uint32 DISPID_EVMETH_ONSCROLL = 1014;
		public const uint32 DISPID_EVPROP_ONLOAD = 71568;
		public const uint32 DISPID_EVMETH_ONLOAD = 1003;
		public const uint32 DISPID_EVPROP_ONUNLOAD = 71569;
		public const uint32 DISPID_EVMETH_ONUNLOAD = 1008;
		public const uint32 DISPID_EVPROP_ONLAYOUT = 71570;
		public const uint32 DISPID_EVMETH_ONLAYOUT = 1013;
		public const uint32 DISPID_EVPROP_ONDRAGSTART = 71571;
		public const uint32 DISPID_EVMETH_ONDRAGSTART = 65547;
		public const uint32 DISPID_EVPROP_ONRESIZE = 71572;
		public const uint32 DISPID_EVMETH_ONRESIZE = 1016;
		public const uint32 DISPID_EVPROP_ONSELECTSTART = 71573;
		public const uint32 DISPID_EVMETH_ONSELECTSTART = 65548;
		public const uint32 DISPID_EVPROP_ONERRORUPDATE = 71574;
		public const uint32 DISPID_EVMETH_ONERRORUPDATE = 65549;
		public const uint32 DISPID_EVPROP_ONBEFOREUNLOAD = 71575;
		public const uint32 DISPID_EVMETH_ONBEFOREUNLOAD = 1017;
		public const uint32 DISPID_EVPROP_ONDATASETCHANGED = 71576;
		public const uint32 DISPID_EVMETH_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_EVPROP_ONDATAAVAILABLE = 71577;
		public const uint32 DISPID_EVMETH_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_EVPROP_ONDATASETCOMPLETE = 71578;
		public const uint32 DISPID_EVMETH_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_EVPROP_ONFILTER = 71579;
		public const uint32 DISPID_EVMETH_ONFILTER = 65553;
		public const uint32 DISPID_EVPROP_ONCHANGEFOCUS = 71580;
		public const uint32 DISPID_EVMETH_ONCHANGEFOCUS = 1018;
		public const uint32 DISPID_EVPROP_ONCHANGEBLUR = 71581;
		public const uint32 DISPID_EVMETH_ONCHANGEBLUR = 1019;
		public const uint32 DISPID_EVPROP_ONLOSECAPTURE = 71582;
		public const uint32 DISPID_EVMETH_ONLOSECAPTURE = 65554;
		public const uint32 DISPID_EVPROP_ONPROPERTYCHANGE = 71583;
		public const uint32 DISPID_EVMETH_ONPROPERTYCHANGE = 65555;
		public const uint32 DISPID_EVPROP_ONPERSISTSAVE = 71584;
		public const uint32 DISPID_EVMETH_ONPERSISTSAVE = 1021;
		public const uint32 DISPID_EVPROP_ONDRAG = 71585;
		public const uint32 DISPID_EVMETH_ONDRAG = 65556;
		public const uint32 DISPID_EVPROP_ONDRAGEND = 71586;
		public const uint32 DISPID_EVMETH_ONDRAGEND = 65557;
		public const uint32 DISPID_EVPROP_ONDRAGENTER = 71587;
		public const uint32 DISPID_EVMETH_ONDRAGENTER = 65558;
		public const uint32 DISPID_EVPROP_ONDRAGOVER = 71588;
		public const uint32 DISPID_EVMETH_ONDRAGOVER = 65559;
		public const uint32 DISPID_EVPROP_ONDRAGLEAVE = 71589;
		public const uint32 DISPID_EVMETH_ONDRAGLEAVE = 65560;
		public const uint32 DISPID_EVPROP_ONDROP = 71590;
		public const uint32 DISPID_EVMETH_ONDROP = 65561;
		public const uint32 DISPID_EVPROP_ONCUT = 71591;
		public const uint32 DISPID_EVMETH_ONCUT = 65562;
		public const uint32 DISPID_EVPROP_ONCOPY = 71592;
		public const uint32 DISPID_EVMETH_ONCOPY = 65563;
		public const uint32 DISPID_EVPROP_ONPASTE = 71593;
		public const uint32 DISPID_EVMETH_ONPASTE = 65564;
		public const uint32 DISPID_EVPROP_ONBEFORECUT = 71594;
		public const uint32 DISPID_EVMETH_ONBEFORECUT = 65565;
		public const uint32 DISPID_EVPROP_ONBEFORECOPY = 71595;
		public const uint32 DISPID_EVMETH_ONBEFORECOPY = 65566;
		public const uint32 DISPID_EVPROP_ONBEFOREPASTE = 71596;
		public const uint32 DISPID_EVMETH_ONBEFOREPASTE = 65567;
		public const uint32 DISPID_EVPROP_ONPERSISTLOAD = 71597;
		public const uint32 DISPID_EVMETH_ONPERSISTLOAD = 1022;
		public const uint32 DISPID_EVPROP_ONROWSDELETE = 71598;
		public const uint32 DISPID_EVMETH_ONROWSDELETE = 65568;
		public const uint32 DISPID_EVPROP_ONROWSINSERTED = 71599;
		public const uint32 DISPID_EVMETH_ONROWSINSERTED = 65569;
		public const uint32 DISPID_EVPROP_ONCELLCHANGE = 71600;
		public const uint32 DISPID_EVMETH_ONCELLCHANGE = 65570;
		public const uint32 DISPID_EVPROP_ONCONTEXTMENU = 71601;
		public const uint32 DISPID_EVMETH_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_EVPROP_ONBEFOREPRINT = 71602;
		public const uint32 DISPID_EVMETH_ONBEFOREPRINT = 1024;
		public const uint32 DISPID_EVPROP_ONAFTERPRINT = 71603;
		public const uint32 DISPID_EVMETH_ONAFTERPRINT = 1025;
		public const uint32 DISPID_EVPROP_ONSTOP = 71604;
		public const uint32 DISPID_EVMETH_ONSTOP = 1026;
		public const uint32 DISPID_EVPROP_ONBEFOREEDITFOCUS = 71605;
		public const uint32 DISPID_EVMETH_ONBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_EVPROP_ONATTACHEVENT = 71606;
		public const uint32 DISPID_EVPROP_ONMOUSEHOVER = 71607;
		public const uint32 DISPID_EVMETH_ONMOUSEHOVER = 1028;
		public const uint32 DISPID_EVPROP_ONCONTENTREADY = 71608;
		public const uint32 DISPID_EVMETH_ONCONTENTREADY = 1029;
		public const uint32 DISPID_EVPROP_ONLAYOUTCOMPLETE = 71609;
		public const uint32 DISPID_EVMETH_ONLAYOUTCOMPLETE = 1030;
		public const uint32 DISPID_EVPROP_ONPAGE = 71610;
		public const uint32 DISPID_EVMETH_ONPAGE = 1031;
		public const uint32 DISPID_EVPROP_ONLINKEDOVERFLOW = 71611;
		public const uint32 DISPID_EVMETH_ONLINKEDOVERFLOW = 1032;
		public const uint32 DISPID_EVPROP_ONMOUSEWHEEL = 71612;
		public const uint32 DISPID_EVMETH_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_EVPROP_ONBEFOREDEACTIVATE = 71613;
		public const uint32 DISPID_EVMETH_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_EVPROP_ONMOVE = 71614;
		public const uint32 DISPID_EVMETH_ONMOVE = 1035;
		public const uint32 DISPID_EVPROP_ONCONTROLSELECT = 71615;
		public const uint32 DISPID_EVMETH_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_EVPROP_ONSELECTIONCHANGE = 71616;
		public const uint32 DISPID_EVMETH_ONSELECTIONCHANGE = 1037;
		public const uint32 DISPID_EVPROP_ONMOVESTART = 71617;
		public const uint32 DISPID_EVMETH_ONMOVESTART = 1038;
		public const uint32 DISPID_EVPROP_ONMOVEEND = 71618;
		public const uint32 DISPID_EVMETH_ONMOVEEND = 1039;
		public const uint32 DISPID_EVPROP_ONRESIZESTART = 71619;
		public const uint32 DISPID_EVMETH_ONRESIZESTART = 1040;
		public const uint32 DISPID_EVPROP_ONRESIZEEND = 71620;
		public const uint32 DISPID_EVMETH_ONRESIZEEND = 1041;
		public const uint32 DISPID_EVPROP_ONMOUSEENTER = 71621;
		public const uint32 DISPID_EVMETH_ONMOUSEENTER = 1042;
		public const uint32 DISPID_EVPROP_ONMOUSELEAVE = 71622;
		public const uint32 DISPID_EVMETH_ONMOUSELEAVE = 1043;
		public const uint32 DISPID_EVPROP_ONACTIVATE = 71623;
		public const uint32 DISPID_EVMETH_ONACTIVATE = 1044;
		public const uint32 DISPID_EVPROP_ONDEACTIVATE = 71624;
		public const uint32 DISPID_EVMETH_ONDEACTIVATE = 1045;
		public const uint32 DISPID_EVPROP_ONMULTILAYOUTCLEANUP = 71625;
		public const uint32 DISPID_EVMETH_ONMULTILAYOUTCLEANUP = 1046;
		public const uint32 DISPID_EVPROP_ONBEFOREACTIVATE = 71626;
		public const uint32 DISPID_EVMETH_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_EVPROP_ONFOCUSIN = 71627;
		public const uint32 DISPID_EVMETH_ONFOCUSIN = 1048;
		public const uint32 DISPID_EVPROP_ONFOCUSOUT = 71628;
		public const uint32 DISPID_EVMETH_ONFOCUSOUT = 1049;
		public const uint32 DISPID_EVPROP_ONVALUECHANGE = 71629;
		public const uint32 DISPID_EVMETH_ONVALUECHANGE = 1050;
		public const uint32 DISPID_EVPROP_ONSELECTADD = 71630;
		public const uint32 DISPID_EVMETH_ONSELECTADD = 1051;
		public const uint32 DISPID_EVPROP_ONSELECTREMOVE = 71631;
		public const uint32 DISPID_EVMETH_ONSELECTREMOVE = 1052;
		public const uint32 DISPID_EVPROP_ONSELECTWITHIN = 71632;
		public const uint32 DISPID_EVMETH_ONSELECTWITHIN = 1053;
		public const uint32 DISPID_EVPROP_ONSYSTEMSCROLLINGSTART = 71633;
		public const uint32 DISPID_EVMETH_ONSYSTEMSCROLLINGSTART = 1054;
		public const uint32 DISPID_EVPROP_ONSYSTEMSCROLLINGEND = 71634;
		public const uint32 DISPID_EVMETH_ONSYSTEMSCROLLINGEND = 1055;
		public const uint32 DISPID_EVPROP_ONOBJECTCONTENTSCROLLED = 71635;
		public const uint32 DISPID_EVMETH_ONOBJECTCONTENTSCROLLED = 1056;
		public const uint32 DISPID_EVPROP_ONSTORAGE = 71636;
		public const uint32 DISPID_EVMETH_ONSTORAGE = 1057;
		public const uint32 DISPID_EVPROP_ONSTORAGECOMMIT = 71637;
		public const uint32 DISPID_EVMETH_ONSTORAGECOMMIT = 1058;
		public const uint32 DISPID_EVPROP_ONSHOW = 71638;
		public const uint32 DISPID_EVMETH_ONSHOW = 1059;
		public const uint32 DISPID_EVPROP_ONHIDE = 71639;
		public const uint32 DISPID_EVMETH_ONHIDE = 1060;
		public const uint32 DISPID_EVPROP_ONALERT = 71640;
		public const uint32 DISPID_EVMETH_ONALERT = 1061;
		public const uint32 DISPID_EVPROP_ONPOPUPMENUSTART = 71641;
		public const uint32 DISPID_EVMETH_ONPOPUPMENUSTART = 1062;
		public const uint32 DISPID_EVPROP_ONPOPUPMENUEND = 71642;
		public const uint32 DISPID_EVMETH_ONPOPUPMENUEND = 1063;
		public const uint32 DISPID_EVPROP_ONONLINE = 71643;
		public const uint32 DISPID_EVMETH_ONONLINE = 1064;
		public const uint32 DISPID_EVPROP_ONOFFLINE = 71644;
		public const uint32 DISPID_EVMETH_ONOFFLINE = 1065;
		public const uint32 DISPID_EVPROP_ONHASHCHANGE = 71645;
		public const uint32 DISPID_EVMETH_ONHASHCHANGE = 1066;
		public const uint32 DISPID_EVPROP_ONMESSAGE = 71646;
		public const uint32 DISPID_EVMETH_ONMESSAGE = 1067;
		public const uint32 DISPID_EVPROP_ONDOMMUTATION = 71647;
		public const uint32 DISPID_EVMETH_ONDOMMUTATION = 1068;
		public const uint32 DISPID_EVPROP_SINKLIMIT = 71647;
		public const uint32 DISPID_EVPROP_TIMEOUT = 71648;
		public const uint32 DISPID_EVPROP_WHEEL = 71649;
		public const uint32 DISPID_EVPROP_SVGLOAD = 71650;
		public const uint32 DISPID_EVPROP_SVGUNLOAD = 71651;
		public const uint32 DISPID_EVPROP_SVGABORT = 71652;
		public const uint32 DISPID_EVPROP_SVGERROR = 71653;
		public const uint32 DISPID_EVPROP_SVGRESIZE = 71654;
		public const uint32 DISPID_EVPROP_SVGSCROLL = 71655;
		public const uint32 DISPID_EVPROP_SVGZOOM = 71656;
		public const uint32 DISPID_EVPROP_ONMSTHUMBNAILCLICK = 71657;
		public const uint32 DISPID_EVPROP_COMPOSITIONSTART = 71658;
		public const uint32 DISPID_EVPROP_COMPOSITIONUPDATE = 71659;
		public const uint32 DISPID_EVPROP_COMPOSITIONEND = 71660;
		public const uint32 DISPID_EVPROP_DOMATTRMODIFIED = 71661;
		public const uint32 DISPID_EVPROP_DOMCONTENTLOADED = 71662;
		public const uint32 DISPID_EVPROP_INPUT = 71663;
		public const uint32 DISPID_EVPROP_DOMCHARDATAMODIFIED = 71664;
		public const uint32 DISPID_EVPROP_TEXTINPUT = 71665;
		public const uint32 DISPID_EVPROP_ONMSSITEMODEJUMPLISTITEMREMOVED = 71666;
		public const uint32 DISPID_EVPROP_DOMNODEINSERTED = 71667;
		public const uint32 DISPID_EVPROP_DOMNODEREMOVED = 71668;
		public const uint32 DISPID_EVPROP_DOMSUBTREEMODIFIED = 71669;
		public const uint32 DISPID_EVPROP_CANPLAY = 71670;
		public const uint32 DISPID_EVPROP_CANPLAYTHROUGH = 71671;
		public const uint32 DISPID_EVPROP_DURATIONCHANGE = 71672;
		public const uint32 DISPID_EVPROP_EMPTIED = 71673;
		public const uint32 DISPID_EVPROP_ENDED = 71674;
		public const uint32 DISPID_EVPROP_LOADEDDATA = 71675;
		public const uint32 DISPID_EVPROP_LOADEDMETADATA = 71676;
		public const uint32 DISPID_EVPROP_LOADSTART = 71677;
		public const uint32 DISPID_EVPROP_PAUSE = 71678;
		public const uint32 DISPID_EVPROP_PLAY = 71679;
		public const uint32 DISPID_EVPROP_PLAYING = 71680;
		public const uint32 DISPID_EVPROP_PROGRESS = 71681;
		public const uint32 DISPID_EVPROP_RATECHANGE = 71682;
		public const uint32 DISPID_EVPROP_SEEKED = 71683;
		public const uint32 DISPID_EVPROP_SEEKING = 71684;
		public const uint32 DISPID_EVPROP_STALLED = 71685;
		public const uint32 DISPID_EVPROP_SUSPEND = 71686;
		public const uint32 DISPID_EVPROP_TIMEUPDATE = 71687;
		public const uint32 DISPID_EVPROP_VOLUMECHANGE = 71688;
		public const uint32 DISPID_EVPROP_WAITING = 71689;
		public const uint32 DISPID_EVPROP_ONMSPOINTERDOWN = 71690;
		public const uint32 DISPID_EVPROP_ONMSPOINTERMOVE = 71691;
		public const uint32 DISPID_EVPROP_ONMSPOINTERUP = 71692;
		public const uint32 DISPID_EVPROP_ONMSPOINTEROVER = 71693;
		public const uint32 DISPID_EVPROP_ONMSPOINTEROUT = 71694;
		public const uint32 DISPID_EVPROP_ONMSPOINTERCANCEL = 71695;
		public const uint32 DISPID_EVPROP_ONMSPOINTERHOVER = 71696;
		public const uint32 DISPID_EVPROP_MSCONNECT = 71697;
		public const uint32 DISPID_EVPROP_MSDISCONNECT = 71698;
		public const uint32 DISPID_EVPROP_ONMSGESTURESTART = 71699;
		public const uint32 DISPID_EVPROP_ONMSGESTURECHANGE = 71700;
		public const uint32 DISPID_EVPROP_ONMSGESTUREEND = 71701;
		public const uint32 DISPID_EVPROP_ONMSGESTUREHOLD = 71702;
		public const uint32 DISPID_EVPROP_ONMSGESTURETAP = 71703;
		public const uint32 DISPID_EVPROP_ONMSGESTUREDOUBLETAP = 71704;
		public const uint32 DISPID_EVPROP_ONMSINERTIASTART = 71705;
		public const uint32 DISPID_EVPROP_ONMSLOSTPOINTERCAPTURE = 71706;
		public const uint32 DISPID_EVPROP_ONMSGOTPOINTERCAPTURE = 71707;
		public const uint32 DISPID_EVPROP_ONMSCONTENTZOOM = 71708;
		public const uint32 DISPID_EVPROP_ONTRANSITIONSTART = 71709;
		public const uint32 DISPID_EVPROP_ONTRANSITIONEND = 71710;
		public const uint32 DISPID_EVPROP_ONANIMATIONSTART = 71711;
		public const uint32 DISPID_EVPROP_ONANIMATIONEND = 71712;
		public const uint32 DISPID_EVPROP_ONANIMATIONITERATION = 71713;
		public const uint32 DISPID_EVPROP_ONMSMANIPULATIONSTATECHANGED = 71714;
		public const uint32 DISPID_EVPROP_ONOPEN = 71715;
		public const uint32 DISPID_EVPROP_ONCLOSE = 71716;
		public const uint32 DISPID_EVPROP_CHECKING = 71717;
		public const uint32 DISPID_EVPROP_NOUPDATE = 71718;
		public const uint32 DISPID_EVPROP_DOWNLOADING = 71719;
		public const uint32 DISPID_EVPROP_UPDATEREADY = 71720;
		public const uint32 DISPID_EVPROP_CACHED = 71721;
		public const uint32 DISPID_EVPROP_OBSOLETE = 71722;
		public const uint32 DISPID_EVPROP_LOADEND = 71723;
		public const uint32 DISPID_EVPROP_INVALID = 71724;
		public const uint32 DISPID_EVPROP_ONSUCCESS = 71725;
		public const uint32 DISPID_EVPROP_ONBLOCKED = 71726;
		public const uint32 DISPID_EVPROP_ONCOMPLETE = 71727;
		public const uint32 DISPID_EVPROP_ONPOPSTATE = 71728;
		public const uint32 DISPID_EVPROP_ONCUECHANGE = 71729;
		public const uint32 DISPID_EVPROP_ONENTER = 71730;
		public const uint32 DISPID_EVPROP_ONEXIT = 71731;
		public const uint32 DISPID_EVPROP_VISIBILITYCHANGE = 71732;
		public const uint32 DISPID_EVPROP_ONMSREGIONUPDATE = 71733;
		public const uint32 DISPID_EVPROP_ONUPGRADENEEDED = 71734;
		public const uint32 DISPID_EVPROP_ONMSVIDEOFORMATCHANGED = 71735;
		public const uint32 DISPID_EVPROP_ADDTRACK = 71736;
		public const uint32 DISPID_EVPROP_ONMSVIDEOFRAMESTEPCOMPLETED = 71737;
		public const uint32 DISPID_EVPROP_ONMSHOLDVISUAL = 71738;
		public const uint32 DISPID_EVPROP_ONMSVIDEOOPTIMALLAYOUTCHANGED = 71739;
		public const uint32 DISPID_EVPROP_ONMSFULLSCREENCHANGE = 71740;
		public const uint32 DISPID_EVPROP_ONMSFULLSCREENERROR = 71741;
		public const uint32 DISPID_EVPROP_MSELEMENTRESIZE = 71742;
		public const uint32 DISPID_EVPROP_ONSOURCEOPEN = 71743;
		public const uint32 DISPID_EVPROP_ONSOURCECLOSE = 71744;
		public const uint32 DISPID_EVPROP_ONSOURCEENDED = 71745;
		public const uint32 DISPID_EVPROP_ONADDSOURCEBUFFER = 71746;
		public const uint32 DISPID_EVPROP_ONREMOVESOURCEBUFFER = 71747;
		public const uint32 DISPID_EVPROP_ONMSNEEDKEY = 71748;
		public const uint32 DISPID_EVPROP_ONMSKEYMESSAGE = 71749;
		public const uint32 DISPID_EVPROP_ONMSKEYERROR = 71750;
		public const uint32 DISPID_EVPROP_ONMSKEYADDED = 71751;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONDOMCONTENTLOADED = 71752;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONCONTENTLOADING = 71753;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONNAVIGATIONSTARTING = 71754;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONNAVIGATIONCOMPLETED = 71755;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONFRAMEDOMCONTENTLOADED = 71756;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONFRAMECONTENTLOADING = 71757;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONFRAMENAVIGATIONSTARTING = 71758;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONFRAMENAVIGATIONCOMPLETED = 71759;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONSCRIPTNOTIFY = 71760;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONUNVIEWABLECONTENT = 71761;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONUNSAFECONTENTWARNINGDISPLAYING = 71762;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONLONGRUNNINGSCRIPTDETECTED = 71763;
		public const uint32 DISPID_EVPROP_WEBGLCONTEXTLOST = 71764;
		public const uint32 DISPID_EVPROP_WEBGLCONTEXTRESTORED = 71765;
		public const uint32 DISPID_EVPROP_ONUPDATESTART = 71766;
		public const uint32 DISPID_EVPROP_ONUPDATE = 71767;
		public const uint32 DISPID_EVPROP_ONUPDATEEND = 71768;
		public const uint32 DISPID_EVPROP_ONMSPOINTERENTER = 71769;
		public const uint32 DISPID_EVPROP_ONMSPOINTERLEAVE = 71770;
		public const uint32 DISPID_EVPROP_ONMSSITEPINNED = 71771;
		public const uint32 DISPID_EVPROP_MSORIENTATIONCHANGE = 71772;
		public const uint32 DISPID_EVPROP_ONDEVICEORIENTATION = 71773;
		public const uint32 DISPID_EVPROP_ONDEVICEMOTION = 71774;
		public const uint32 DISPID_EVPROP_ONPAGESHOW = 71775;
		public const uint32 DISPID_EVPROP_ONPAGEHIDE = 71776;
		public const uint32 DISPID_EVPROP_ONMSCANDIDATEWINDOWSHOW = 71777;
		public const uint32 DISPID_EVPROP_ONMSCANDIDATEWINDOWUPDATE = 71778;
		public const uint32 DISPID_EVPROP_ONMSCANDIDATEWINDOWHIDE = 71779;
		public const uint32 DISPID_EVPROP_HTML5ONREADYSTATECHANGE = 71780;
		public const uint32 DISPID_EVPROP_REMOVETRACK = 71781;
		public const uint32 DISPID_EVPROP_ONCOMPASSNEEDSCALIBRATION = 71782;
		public const uint32 DISPID_EVPROP_MSHTMLWEBVIEW_ONCONTAINSFULLSCREENELEMENTCHANGED = 71783;
		public const uint32 DISPID_EVPROP_ONTOUCHSTART = 71784;
		public const uint32 DISPID_EVPROP_ONTOUCHEND = 71785;
		public const uint32 DISPID_EVPROP_ONTOUCHMOVE = 71786;
		public const uint32 DISPID_EVPROP_ONTOUCHCANCEL = 71787;
		public const uint32 DISPID_EVPROP_ONWEBKITTRANSITIONEND = 71788;
		public const uint32 DISPID_EVPROP_ONWEBKITANIMATIONSTART = 71789;
		public const uint32 DISPID_EVPROP_ONWEBKITANIMATIONEND = 71790;
		public const uint32 DISPID_EVPROP_ONWEBKITANIMATIONITERATION = 71791;
		public const uint32 DISPID_EVPROP_WEBGLCONTEXTCREATIONERROR = 71792;
		public const uint32 DISPID_EVPROP_ONDOMFOCUSIN = 71793;
		public const uint32 DISPID_EVPROP_ONDOMFOCUSOUT = 71794;
		public const uint32 DISPID_EVPROP_ORIENTATIONCHANGE = 71795;
		public const uint32 DISPID_EVPROPS_COUNT = 260;
		public const uint32 DISPID_IHTMLFILTERSCOLLECTION_LENGTH = 1001;
		public const int32 DISPID_IHTMLFILTERSCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLFILTERSCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDOMCONSTRUCTOR_CONSTRUCTOR = 66045;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LENGTH = 70037;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PARENTRULE = 70038;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_GETPROPERTYVALUE = 70039;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_GETPROPERTYPRIORITY = 70040;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_REMOVEPROPERTY = 70041;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SETPROPERTY = 70042;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ITEM = 0;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTFAMILY = 70554;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTSTYLE = 70560;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTVARIANT = 70561;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTWEIGHT = 70563;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTSIZE = 70555;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONT = 70577;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_COLOR = 70538;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUND = 70568;
		public const int32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDCOLOR = -501;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDIMAGE = 70537;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDREPEAT = 70580;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDATTACHMENT = 70581;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDPOSITION = 70582;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDPOSITIONX = 70569;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDPOSITIONY = 70570;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WORDSPACING = 70583;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LETTERSPACING = 70544;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTDECORATION = 70571;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_VERTICALALIGN = 70584;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTTRANSFORM = 70540;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTALIGN = 65608;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTINDENT = 70543;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LINEHEIGHT = 70542;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARGINTOP = 70573;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARGINRIGHT = 70574;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARGINBOTTOM = 70575;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARGINLEFT = 70576;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARGIN = 70572;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PADDINGTOP = 70548;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PADDINGRIGHT = 70549;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PADDINGBOTTOM = 70550;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PADDINGLEFT = 70551;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PADDING = 70547;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDER = 70585;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOP = 70586;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERRIGHT = 70587;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOM = 70588;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERLEFT = 70589;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERCOLOR = 70590;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOPCOLOR = 70591;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERRIGHTCOLOR = 70592;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOMCOLOR = 70593;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERLEFTCOLOR = 70594;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERWIDTH = 70595;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOPWIDTH = 70596;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERRIGHTWIDTH = 70597;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOMWIDTH = 70598;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERLEFTWIDTH = 70599;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERSTYLE = 70600;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOPSTYLE = 70601;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERRIGHTSTYLE = 70602;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOMSTYLE = 70603;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERLEFTSTYLE = 70604;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WIDTH = 65541;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STYLEFLOAT = 70606;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLEAR = 70552;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_DISPLAY = 70607;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_VISIBILITY = 70616;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LISTSTYLETYPE = 70608;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LISTSTYLEPOSITION = 70609;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LISTSTYLEIMAGE = 70610;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LISTSTYLE = 70611;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WHITESPACE = 70612;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TOP = 65540;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LEFT = 65539;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ZINDEX = 70627;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OVERFLOW = 70546;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PAGEBREAKBEFORE = 70613;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PAGEBREAKAFTER = 70614;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CSSTEXT = 70635;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CURSOR = 70638;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIP = 70628;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FILTER = 70618;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TABLELAYOUT = 70634;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERCOLLAPSE = 70620;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_DIRECTION = 70655;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BEHAVIOR = 70651;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_POSITION = 70626;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_UNICODEBIDI = 70654;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BOTTOM = 65614;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_RIGHT = 65613;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_IMEMODE = 70656;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_RUBYALIGN = 70657;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_RUBYPOSITION = 70658;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_RUBYOVERHANG = 70659;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTGRIDCHAR = 70663;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTGRIDLINE = 70664;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTGRIDMODE = 70665;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTGRIDTYPE = 70666;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTGRID = 70667;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTAUTOSPACE = 70668;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WORDBREAK = 70670;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LINEBREAK = 70669;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTJUSTIFY = 70671;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTJUSTIFYTRIM = 70672;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTKASHIDA = 70673;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OVERFLOWX = 70675;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OVERFLOWY = 70676;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ACCELERATOR = 70683;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_LAYOUTFLOW = 70691;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ZOOM = 70689;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WORDWRAP = 70694;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTUNDERLINEPOSITION = 70695;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARBASECOLOR = 70716;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARFACECOLOR = 70717;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBAR3DLIGHTCOLOR = 70718;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARSHADOWCOLOR = 70719;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARHIGHLIGHTCOLOR = 70720;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARDARKSHADOWCOLOR = 70721;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARARROWCOLOR = 70722;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_SCROLLBARTRACKCOLOR = 70732;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WRITINGMODE = 70728;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTALIGNLAST = 70739;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTKASHIDASPACE = 70740;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTOVERFLOW = 70745;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MINHEIGHT = 70747;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MSINTERPOLATIONMODE = 70749;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MAXHEIGHT = 70750;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MINWIDTH = 70751;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MAXWIDTH = 70752;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CONTENT = 70754;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CAPTIONSIDE = 70755;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_COUNTERINCREMENT = 70756;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_COUNTERRESET = 70757;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OUTLINE = 70758;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OUTLINEWIDTH = 70759;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OUTLINESTYLE = 70760;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OUTLINECOLOR = 70761;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BOXSIZING = 70762;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERSPACING = 70763;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ORPHANS = 70764;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_WIDOWS = 70765;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_PAGEBREAKINSIDE = 70766;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_EMPTYCELLS = 70786;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MSBLOCKPROGRESSION = 70787;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_QUOTES = 70788;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_ALIGNMENTBASELINE = 70814;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BASELINESHIFT = 70815;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_DOMINANTBASELINE = 70816;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTSIZEADJUST = 70817;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FONTSTRETCH = 70818;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_OPACITY = 70819;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPPATH = 70820;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPRULE = 70821;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FILL = 70822;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FILLOPACITY = 70823;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_FILLRULE = 70824;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_KERNING = 70825;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARKER = 70826;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARKEREND = 70827;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARKERMID = 70828;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MARKERSTART = 70829;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MASK = 70830;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_POINTEREVENTS = 70831;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STOPCOLOR = 70832;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STOPOPACITY = 70833;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKE = 70834;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKEDASHARRAY = 70835;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKEDASHOFFSET = 70836;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKELINECAP = 70837;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKELINEJOIN = 70838;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKEMITERLIMIT = 70839;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKEOPACITY = 70840;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_STROKEWIDTH = 70841;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_TEXTANCHOR = 70842;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_GLYPHORIENTATIONHORIZONTAL = 70843;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_GLYPHORIENTATIONVERTICAL = 70844;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERRADIUS = 70846;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOPLEFTRADIUS = 70847;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERTOPRIGHTRADIUS = 70848;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOMRIGHTRADIUS = 70849;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BORDERBOTTOMLEFTRADIUS = 70850;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPTOP = 70629;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPRIGHT = 70630;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPBOTTOM = 70631;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CLIPLEFT = 70632;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_CSSFLOAT = 70845;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDCLIP = 70852;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDORIGIN = 70853;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BACKGROUNDSIZE = 70854;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_BOXSHADOW = 70855;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MSTRANSFORM = 70851;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION_MSTRANSFORMORIGIN = 70861;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLCHAINING = 70891;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMING = 70892;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMSNAPTYPE = 70893;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLRAILS = 70894;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMCHAINING = 70895;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLSNAPTYPE = 70896;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMLIMIT = 70897;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMSNAP = 70898;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMSNAPPOINTS = 70899;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMLIMITMIN = 70901;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSCONTENTZOOMLIMITMAX = 70902;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLSNAPX = 70903;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLSNAPY = 70904;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLSNAPPOINTSX = 70905;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLSNAPPOINTSY = 70906;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDCOLUMN = 70908;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDCOLUMNALIGN = 70909;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDCOLUMNS = 70910;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDCOLUMNSPAN = 70911;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDROW = 70913;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDROWALIGN = 70914;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDROWS = 70915;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSGRIDROWSPAN = 70916;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSWRAPTHROUGH = 70937;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSWRAPMARGIN = 70947;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSWRAPFLOW = 70949;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONNAME = 70917;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONDURATION = 70918;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONTIMINGFUNCTION = 70919;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONDELAY = 70920;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONDIRECTION = 70921;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONPLAYSTATE = 70922;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONITERATIONCOUNT = 70923;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATION = 70924;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSANIMATIONFILLMODE = 70925;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLORINTERPOLATIONFILTERS = 70928;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNCOUNT = 70872;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNWIDTH = 70873;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNGAP = 70874;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNFILL = 70875;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNSPAN = 70876;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNS = 70871;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNRULE = 70877;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNRULECOLOR = 70880;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNRULESTYLE = 70878;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_COLUMNRULEWIDTH = 70879;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_BREAKBEFORE = 70881;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_BREAKAFTER = 70882;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_BREAKINSIDE = 70883;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_FLOODCOLOR = 70926;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_FLOODOPACITY = 70927;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_LIGHTINGCOLOR = 70929;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLLIMITXMIN = 70930;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLLIMITYMIN = 70931;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLLIMITXMAX = 70932;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLLIMITYMAX = 70933;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLLIMIT = 70934;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TEXTSHADOW = 70936;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLOWFROM = 70938;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLOWINTO = 70939;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSHYPHENS = 70940;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSHYPHENATELIMITZONE = 70941;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSHYPHENATELIMITCHARS = 70942;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSHYPHENATELIMITLINES = 70943;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSHIGHCONTRASTADJUST = 70945;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ENABLEBACKGROUND = 70946;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFONTFEATURESETTINGS = 70950;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSUSERSELECT = 70951;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSOVERFLOWSTYLE = 70935;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSFORMSTYLE = 70889;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSBACKFACEVISIBILITY = 70890;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSPERSPECTIVE = 70885;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSPERSPECTIVEORIGIN = 70886;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSITIONPROPERTY = 70866;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSITIONDURATION = 70867;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSITIONTIMINGFUNCTION = 70868;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSITIONDELAY = 70869;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTRANSITION = 70870;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTOUCHACTION = 70952;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSSCROLLTRANSLATION = 70954;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEX = 70955;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXPOSITIVE = 70956;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXNEGATIVE = 70957;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXPREFERREDSIZE = 70958;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXFLOW = 70959;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXDIRECTION = 70960;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXWRAP = 70961;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXALIGN = 70962;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXITEMALIGN = 70963;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXPACK = 70964;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXLINEPACK = 70965;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSFLEXORDER = 70966;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_MSTOUCHSELECT = 70994;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSFORM = 70967;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSFORMORIGIN = 70968;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSFORMSTYLE = 70976;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_BACKFACEVISIBILITY = 70977;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_PERSPECTIVE = 70974;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_PERSPECTIVEORIGIN = 70975;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSITIONPROPERTY = 70969;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSITIONDURATION = 70970;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSITIONTIMINGFUNCTION = 70971;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSITIONDELAY = 70972;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_TRANSITION = 70973;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_FONTFEATURESETTINGS = 70987;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONNAME = 70978;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONDURATION = 70979;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONTIMINGFUNCTION = 70980;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONDELAY = 70981;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONDIRECTION = 70982;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONPLAYSTATE = 70983;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONITERATIONCOUNT = 70984;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATION = 70985;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION2_ANIMATIONFILLMODE = 70986;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEX = 71002;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXDIRECTION = 70998;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXWRAP = 70999;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXFLOW = 71000;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXGROW = 71003;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXSHRINK = 71004;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_FLEXBASIS = 71005;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_JUSTIFYCONTENT = 71006;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_ALIGNITEMS = 71007;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_ALIGNSELF = 71008;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_ALIGNCONTENT = 71009;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGE = 71010;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGESOURCE = 71011;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGESLICE = 71012;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGEWIDTH = 71013;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGEOUTSET = 71014;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_BORDERIMAGEREPEAT = 71015;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_MSIMEALIGN = 71017;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_MSTEXTCOMBINEHORIZONTAL = 71018;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION3_TOUCHACTION = 71019;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITAPPEARANCE = 71020;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITUSERSELECT = 71032;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXALIGN = 71021;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXORDINALGROUP = 71022;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXPACK = 71023;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXFLEX = 71024;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXORIENT = 71025;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXDIRECTION = 71026;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSFORM = 71028;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDSIZE = 71029;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKFACEVISIBILITY = 71030;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATION = 71033;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSITION = 71034;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONNAME = 71035;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONDURATION = 71036;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONTIMINGFUNCTION = 71037;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONDELAY = 71038;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONITERATIONCOUNT = 71039;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONDIRECTION = 71040;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONPLAYSTATE = 71041;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSITIONPROPERTY = 71042;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSITIONDURATION = 71043;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSITIONTIMINGFUNCTION = 71044;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSITIONDELAY = 71045;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDATTACHMENT = 71046;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDCOLOR = 71047;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDCLIP = 71048;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDIMAGE = 71049;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDREPEAT = 71050;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDORIGIN = 71051;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDPOSITION = 71052;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDPOSITIONX = 71053;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUNDPOSITIONY = 71054;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBACKGROUND = 71055;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTRANSFORMORIGIN = 71056;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_MSTEXTSIZEADJUST = 70864;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITTEXTSIZEADJUST = 71060;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGE = 71061;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGESOURCE = 71062;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGESLICE = 71063;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGEWIDTH = 71064;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGEOUTSET = 71065;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBORDERIMAGEREPEAT = 71066;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITBOXSIZING = 71031;
		public const uint32 DISPID_IHTMLCSSSTYLEDECLARATION4_WEBKITANIMATIONFILLMODE = 71027;
		public const uint32 DISPID_IHTMLSTYLEENABLED_MSGETPROPERTYENABLED = 70043;
		public const uint32 DISPID_IHTMLSTYLEENABLED_MSPUTPROPERTYENABLED = 70044;
		public const uint32 DISPID_IHTMLSTYLE_FONTFAMILY = 70554;
		public const uint32 DISPID_IHTMLSTYLE_FONTSTYLE = 70560;
		public const uint32 DISPID_IHTMLSTYLE_FONTVARIANT = 70561;
		public const uint32 DISPID_IHTMLSTYLE_FONTWEIGHT = 70563;
		public const uint32 DISPID_IHTMLSTYLE_FONTSIZE = 70555;
		public const uint32 DISPID_IHTMLSTYLE_FONT = 70577;
		public const uint32 DISPID_IHTMLSTYLE_COLOR = 70538;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUND = 70568;
		public const int32 DISPID_IHTMLSTYLE_BACKGROUNDCOLOR = -501;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDIMAGE = 70537;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDREPEAT = 70580;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDATTACHMENT = 70581;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDPOSITION = 70582;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDPOSITIONX = 70569;
		public const uint32 DISPID_IHTMLSTYLE_BACKGROUNDPOSITIONY = 70570;
		public const uint32 DISPID_IHTMLSTYLE_WORDSPACING = 70583;
		public const uint32 DISPID_IHTMLSTYLE_LETTERSPACING = 70544;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATION = 70571;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATIONNONE = 70559;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATIONUNDERLINE = 70557;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATIONOVERLINE = 70605;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATIONLINETHROUGH = 70556;
		public const uint32 DISPID_IHTMLSTYLE_TEXTDECORATIONBLINK = 70558;
		public const uint32 DISPID_IHTMLSTYLE_VERTICALALIGN = 70584;
		public const uint32 DISPID_IHTMLSTYLE_TEXTTRANSFORM = 70540;
		public const uint32 DISPID_IHTMLSTYLE_TEXTALIGN = 65608;
		public const uint32 DISPID_IHTMLSTYLE_TEXTINDENT = 70543;
		public const uint32 DISPID_IHTMLSTYLE_LINEHEIGHT = 70542;
		public const uint32 DISPID_IHTMLSTYLE_MARGINTOP = 70573;
		public const uint32 DISPID_IHTMLSTYLE_MARGINRIGHT = 70574;
		public const uint32 DISPID_IHTMLSTYLE_MARGINBOTTOM = 70575;
		public const uint32 DISPID_IHTMLSTYLE_MARGINLEFT = 70576;
		public const uint32 DISPID_IHTMLSTYLE_MARGIN = 70572;
		public const uint32 DISPID_IHTMLSTYLE_PADDINGTOP = 70548;
		public const uint32 DISPID_IHTMLSTYLE_PADDINGRIGHT = 70549;
		public const uint32 DISPID_IHTMLSTYLE_PADDINGBOTTOM = 70550;
		public const uint32 DISPID_IHTMLSTYLE_PADDINGLEFT = 70551;
		public const uint32 DISPID_IHTMLSTYLE_PADDING = 70547;
		public const uint32 DISPID_IHTMLSTYLE_BORDER = 70585;
		public const uint32 DISPID_IHTMLSTYLE_BORDERTOP = 70586;
		public const uint32 DISPID_IHTMLSTYLE_BORDERRIGHT = 70587;
		public const uint32 DISPID_IHTMLSTYLE_BORDERBOTTOM = 70588;
		public const uint32 DISPID_IHTMLSTYLE_BORDERLEFT = 70589;
		public const uint32 DISPID_IHTMLSTYLE_BORDERCOLOR = 70590;
		public const uint32 DISPID_IHTMLSTYLE_BORDERTOPCOLOR = 70591;
		public const uint32 DISPID_IHTMLSTYLE_BORDERRIGHTCOLOR = 70592;
		public const uint32 DISPID_IHTMLSTYLE_BORDERBOTTOMCOLOR = 70593;
		public const uint32 DISPID_IHTMLSTYLE_BORDERLEFTCOLOR = 70594;
		public const uint32 DISPID_IHTMLSTYLE_BORDERWIDTH = 70595;
		public const uint32 DISPID_IHTMLSTYLE_BORDERTOPWIDTH = 70596;
		public const uint32 DISPID_IHTMLSTYLE_BORDERRIGHTWIDTH = 70597;
		public const uint32 DISPID_IHTMLSTYLE_BORDERBOTTOMWIDTH = 70598;
		public const uint32 DISPID_IHTMLSTYLE_BORDERLEFTWIDTH = 70599;
		public const uint32 DISPID_IHTMLSTYLE_BORDERSTYLE = 70600;
		public const uint32 DISPID_IHTMLSTYLE_BORDERTOPSTYLE = 70601;
		public const uint32 DISPID_IHTMLSTYLE_BORDERRIGHTSTYLE = 70602;
		public const uint32 DISPID_IHTMLSTYLE_BORDERBOTTOMSTYLE = 70603;
		public const uint32 DISPID_IHTMLSTYLE_BORDERLEFTSTYLE = 70604;
		public const uint32 DISPID_IHTMLSTYLE_WIDTH = 65541;
		public const uint32 DISPID_IHTMLSTYLE_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLSTYLE_STYLEFLOAT = 70606;
		public const uint32 DISPID_IHTMLSTYLE_CLEAR = 70552;
		public const uint32 DISPID_IHTMLSTYLE_DISPLAY = 70607;
		public const uint32 DISPID_IHTMLSTYLE_VISIBILITY = 70616;
		public const uint32 DISPID_IHTMLSTYLE_LISTSTYLETYPE = 70608;
		public const uint32 DISPID_IHTMLSTYLE_LISTSTYLEPOSITION = 70609;
		public const uint32 DISPID_IHTMLSTYLE_LISTSTYLEIMAGE = 70610;
		public const uint32 DISPID_IHTMLSTYLE_LISTSTYLE = 70611;
		public const uint32 DISPID_IHTMLSTYLE_WHITESPACE = 70612;
		public const uint32 DISPID_IHTMLSTYLE_TOP = 65540;
		public const uint32 DISPID_IHTMLSTYLE_LEFT = 65539;
		public const uint32 DISPID_IHTMLSTYLE_POSITION = 70626;
		public const uint32 DISPID_IHTMLSTYLE_ZINDEX = 70627;
		public const uint32 DISPID_IHTMLSTYLE_OVERFLOW = 70546;
		public const uint32 DISPID_IHTMLSTYLE_PAGEBREAKBEFORE = 70613;
		public const uint32 DISPID_IHTMLSTYLE_PAGEBREAKAFTER = 70614;
		public const uint32 DISPID_IHTMLSTYLE_CSSTEXT = 70635;
		public const uint32 DISPID_IHTMLSTYLE_PIXELTOP = 69536;
		public const uint32 DISPID_IHTMLSTYLE_PIXELLEFT = 69537;
		public const uint32 DISPID_IHTMLSTYLE_PIXELWIDTH = 69538;
		public const uint32 DISPID_IHTMLSTYLE_PIXELHEIGHT = 69539;
		public const uint32 DISPID_IHTMLSTYLE_POSTOP = 69540;
		public const uint32 DISPID_IHTMLSTYLE_POSLEFT = 69541;
		public const uint32 DISPID_IHTMLSTYLE_POSWIDTH = 69542;
		public const uint32 DISPID_IHTMLSTYLE_POSHEIGHT = 69543;
		public const uint32 DISPID_IHTMLSTYLE_CURSOR = 70638;
		public const uint32 DISPID_IHTMLSTYLE_CLIP = 70628;
		public const uint32 DISPID_IHTMLSTYLE_FILTER = 70618;
		public const uint32 DISPID_IHTMLSTYLE_SETATTRIBUTE = 66037;
		public const uint32 DISPID_IHTMLSTYLE_GETATTRIBUTE = 66038;
		public const uint32 DISPID_IHTMLSTYLE_REMOVEATTRIBUTE = 66039;
		public const uint32 DISPID_IHTMLSTYLE_TOSTRING = 69544;
		public const uint32 DISPID_IHTMLSTYLE2_TABLELAYOUT = 70634;
		public const uint32 DISPID_IHTMLSTYLE2_BORDERCOLLAPSE = 70620;
		public const uint32 DISPID_IHTMLSTYLE2_DIRECTION = 70655;
		public const uint32 DISPID_IHTMLSTYLE2_BEHAVIOR = 70651;
		public const uint32 DISPID_IHTMLSTYLE2_SETEXPRESSION = 66040;
		public const uint32 DISPID_IHTMLSTYLE2_GETEXPRESSION = 66041;
		public const uint32 DISPID_IHTMLSTYLE2_REMOVEEXPRESSION = 66042;
		public const uint32 DISPID_IHTMLSTYLE2_POSITION = 70626;
		public const uint32 DISPID_IHTMLSTYLE2_UNICODEBIDI = 70654;
		public const uint32 DISPID_IHTMLSTYLE2_BOTTOM = 65614;
		public const uint32 DISPID_IHTMLSTYLE2_RIGHT = 65613;
		public const uint32 DISPID_IHTMLSTYLE2_PIXELBOTTOM = 69545;
		public const uint32 DISPID_IHTMLSTYLE2_PIXELRIGHT = 69546;
		public const uint32 DISPID_IHTMLSTYLE2_POSBOTTOM = 69547;
		public const uint32 DISPID_IHTMLSTYLE2_POSRIGHT = 69548;
		public const uint32 DISPID_IHTMLSTYLE2_IMEMODE = 70656;
		public const uint32 DISPID_IHTMLSTYLE2_RUBYALIGN = 70657;
		public const uint32 DISPID_IHTMLSTYLE2_RUBYPOSITION = 70658;
		public const uint32 DISPID_IHTMLSTYLE2_RUBYOVERHANG = 70659;
		public const uint32 DISPID_IHTMLSTYLE2_LAYOUTGRIDCHAR = 70663;
		public const uint32 DISPID_IHTMLSTYLE2_LAYOUTGRIDLINE = 70664;
		public const uint32 DISPID_IHTMLSTYLE2_LAYOUTGRIDMODE = 70665;
		public const uint32 DISPID_IHTMLSTYLE2_LAYOUTGRIDTYPE = 70666;
		public const uint32 DISPID_IHTMLSTYLE2_LAYOUTGRID = 70667;
		public const uint32 DISPID_IHTMLSTYLE2_WORDBREAK = 70670;
		public const uint32 DISPID_IHTMLSTYLE2_LINEBREAK = 70669;
		public const uint32 DISPID_IHTMLSTYLE2_TEXTJUSTIFY = 70671;
		public const uint32 DISPID_IHTMLSTYLE2_TEXTJUSTIFYTRIM = 70672;
		public const uint32 DISPID_IHTMLSTYLE2_TEXTKASHIDA = 70673;
		public const uint32 DISPID_IHTMLSTYLE2_TEXTAUTOSPACE = 70668;
		public const uint32 DISPID_IHTMLSTYLE2_OVERFLOWX = 70675;
		public const uint32 DISPID_IHTMLSTYLE2_OVERFLOWY = 70676;
		public const uint32 DISPID_IHTMLSTYLE2_ACCELERATOR = 70683;
		public const uint32 DISPID_IHTMLSTYLE3_LAYOUTFLOW = 70691;
		public const uint32 DISPID_IHTMLSTYLE3_ZOOM = 70689;
		public const uint32 DISPID_IHTMLSTYLE3_WORDWRAP = 70694;
		public const uint32 DISPID_IHTMLSTYLE3_TEXTUNDERLINEPOSITION = 70695;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARBASECOLOR = 70716;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARFACECOLOR = 70717;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBAR3DLIGHTCOLOR = 70718;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARSHADOWCOLOR = 70719;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARHIGHLIGHTCOLOR = 70720;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARDARKSHADOWCOLOR = 70721;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARARROWCOLOR = 70722;
		public const uint32 DISPID_IHTMLSTYLE3_SCROLLBARTRACKCOLOR = 70732;
		public const uint32 DISPID_IHTMLSTYLE3_WRITINGMODE = 70728;
		public const uint32 DISPID_IHTMLSTYLE3_TEXTALIGNLAST = 70739;
		public const uint32 DISPID_IHTMLSTYLE3_TEXTKASHIDASPACE = 70740;
		public const uint32 DISPID_IHTMLSTYLE4_TEXTOVERFLOW = 70745;
		public const uint32 DISPID_IHTMLSTYLE4_MINHEIGHT = 70747;
		public const uint32 DISPID_IHTMLSTYLE5_MSINTERPOLATIONMODE = 70749;
		public const uint32 DISPID_IHTMLSTYLE5_MAXHEIGHT = 70750;
		public const uint32 DISPID_IHTMLSTYLE5_MINWIDTH = 70751;
		public const uint32 DISPID_IHTMLSTYLE5_MAXWIDTH = 70752;
		public const uint32 DISPID_IHTMLSTYLE6_CONTENT = 70754;
		public const uint32 DISPID_IHTMLSTYLE6_CAPTIONSIDE = 70755;
		public const uint32 DISPID_IHTMLSTYLE6_COUNTERINCREMENT = 70756;
		public const uint32 DISPID_IHTMLSTYLE6_COUNTERRESET = 70757;
		public const uint32 DISPID_IHTMLSTYLE6_OUTLINE = 70758;
		public const uint32 DISPID_IHTMLSTYLE6_OUTLINEWIDTH = 70759;
		public const uint32 DISPID_IHTMLSTYLE6_OUTLINESTYLE = 70760;
		public const uint32 DISPID_IHTMLSTYLE6_OUTLINECOLOR = 70761;
		public const uint32 DISPID_IHTMLSTYLE6_BOXSIZING = 70762;
		public const uint32 DISPID_IHTMLSTYLE6_BORDERSPACING = 70763;
		public const uint32 DISPID_IHTMLSTYLE6_ORPHANS = 70764;
		public const uint32 DISPID_IHTMLSTYLE6_WIDOWS = 70765;
		public const uint32 DISPID_IHTMLSTYLE6_PAGEBREAKINSIDE = 70766;
		public const uint32 DISPID_IHTMLSTYLE6_EMPTYCELLS = 70786;
		public const uint32 DISPID_IHTMLSTYLE6_MSBLOCKPROGRESSION = 70787;
		public const uint32 DISPID_IHTMLSTYLE6_QUOTES = 70788;
		public const uint32 DISPID_IHTMLRULESTYLE_FONTFAMILY = 70554;
		public const uint32 DISPID_IHTMLRULESTYLE_FONTSTYLE = 70560;
		public const uint32 DISPID_IHTMLRULESTYLE_FONTVARIANT = 70561;
		public const uint32 DISPID_IHTMLRULESTYLE_FONTWEIGHT = 70563;
		public const uint32 DISPID_IHTMLRULESTYLE_FONTSIZE = 70555;
		public const uint32 DISPID_IHTMLRULESTYLE_FONT = 70577;
		public const uint32 DISPID_IHTMLRULESTYLE_COLOR = 70538;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUND = 70568;
		public const int32 DISPID_IHTMLRULESTYLE_BACKGROUNDCOLOR = -501;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDIMAGE = 70537;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDREPEAT = 70580;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDATTACHMENT = 70581;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDPOSITION = 70582;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDPOSITIONX = 70569;
		public const uint32 DISPID_IHTMLRULESTYLE_BACKGROUNDPOSITIONY = 70570;
		public const uint32 DISPID_IHTMLRULESTYLE_WORDSPACING = 70583;
		public const uint32 DISPID_IHTMLRULESTYLE_LETTERSPACING = 70544;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATION = 70571;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATIONNONE = 70559;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATIONUNDERLINE = 70557;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATIONOVERLINE = 70605;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATIONLINETHROUGH = 70556;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTDECORATIONBLINK = 70558;
		public const uint32 DISPID_IHTMLRULESTYLE_VERTICALALIGN = 70584;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTTRANSFORM = 70540;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTALIGN = 65608;
		public const uint32 DISPID_IHTMLRULESTYLE_TEXTINDENT = 70543;
		public const uint32 DISPID_IHTMLRULESTYLE_LINEHEIGHT = 70542;
		public const uint32 DISPID_IHTMLRULESTYLE_MARGINTOP = 70573;
		public const uint32 DISPID_IHTMLRULESTYLE_MARGINRIGHT = 70574;
		public const uint32 DISPID_IHTMLRULESTYLE_MARGINBOTTOM = 70575;
		public const uint32 DISPID_IHTMLRULESTYLE_MARGINLEFT = 70576;
		public const uint32 DISPID_IHTMLRULESTYLE_MARGIN = 70572;
		public const uint32 DISPID_IHTMLRULESTYLE_PADDINGTOP = 70548;
		public const uint32 DISPID_IHTMLRULESTYLE_PADDINGRIGHT = 70549;
		public const uint32 DISPID_IHTMLRULESTYLE_PADDINGBOTTOM = 70550;
		public const uint32 DISPID_IHTMLRULESTYLE_PADDINGLEFT = 70551;
		public const uint32 DISPID_IHTMLRULESTYLE_PADDING = 70547;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDER = 70585;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERTOP = 70586;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERRIGHT = 70587;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERBOTTOM = 70588;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERLEFT = 70589;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERCOLOR = 70590;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERTOPCOLOR = 70591;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERRIGHTCOLOR = 70592;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERBOTTOMCOLOR = 70593;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERLEFTCOLOR = 70594;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERWIDTH = 70595;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERTOPWIDTH = 70596;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERRIGHTWIDTH = 70597;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERBOTTOMWIDTH = 70598;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERLEFTWIDTH = 70599;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERSTYLE = 70600;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERTOPSTYLE = 70601;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERRIGHTSTYLE = 70602;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERBOTTOMSTYLE = 70603;
		public const uint32 DISPID_IHTMLRULESTYLE_BORDERLEFTSTYLE = 70604;
		public const uint32 DISPID_IHTMLRULESTYLE_WIDTH = 65541;
		public const uint32 DISPID_IHTMLRULESTYLE_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLRULESTYLE_STYLEFLOAT = 70606;
		public const uint32 DISPID_IHTMLRULESTYLE_CLEAR = 70552;
		public const uint32 DISPID_IHTMLRULESTYLE_DISPLAY = 70607;
		public const uint32 DISPID_IHTMLRULESTYLE_VISIBILITY = 70616;
		public const uint32 DISPID_IHTMLRULESTYLE_LISTSTYLETYPE = 70608;
		public const uint32 DISPID_IHTMLRULESTYLE_LISTSTYLEPOSITION = 70609;
		public const uint32 DISPID_IHTMLRULESTYLE_LISTSTYLEIMAGE = 70610;
		public const uint32 DISPID_IHTMLRULESTYLE_LISTSTYLE = 70611;
		public const uint32 DISPID_IHTMLRULESTYLE_WHITESPACE = 70612;
		public const uint32 DISPID_IHTMLRULESTYLE_TOP = 65540;
		public const uint32 DISPID_IHTMLRULESTYLE_LEFT = 65539;
		public const uint32 DISPID_IHTMLRULESTYLE_POSITION = 70626;
		public const uint32 DISPID_IHTMLRULESTYLE_ZINDEX = 70627;
		public const uint32 DISPID_IHTMLRULESTYLE_OVERFLOW = 70546;
		public const uint32 DISPID_IHTMLRULESTYLE_PAGEBREAKBEFORE = 70613;
		public const uint32 DISPID_IHTMLRULESTYLE_PAGEBREAKAFTER = 70614;
		public const uint32 DISPID_IHTMLRULESTYLE_CSSTEXT = 70635;
		public const uint32 DISPID_IHTMLRULESTYLE_CURSOR = 70638;
		public const uint32 DISPID_IHTMLRULESTYLE_CLIP = 70628;
		public const uint32 DISPID_IHTMLRULESTYLE_FILTER = 70618;
		public const uint32 DISPID_IHTMLRULESTYLE_SETATTRIBUTE = 66037;
		public const uint32 DISPID_IHTMLRULESTYLE_GETATTRIBUTE = 66038;
		public const uint32 DISPID_IHTMLRULESTYLE_REMOVEATTRIBUTE = 66039;
		public const uint32 DISPID_IHTMLRULESTYLE2_TABLELAYOUT = 70634;
		public const uint32 DISPID_IHTMLRULESTYLE2_BORDERCOLLAPSE = 70620;
		public const uint32 DISPID_IHTMLRULESTYLE2_DIRECTION = 70655;
		public const uint32 DISPID_IHTMLRULESTYLE2_BEHAVIOR = 70651;
		public const uint32 DISPID_IHTMLRULESTYLE2_POSITION = 70626;
		public const uint32 DISPID_IHTMLRULESTYLE2_UNICODEBIDI = 70654;
		public const uint32 DISPID_IHTMLRULESTYLE2_BOTTOM = 65614;
		public const uint32 DISPID_IHTMLRULESTYLE2_RIGHT = 65613;
		public const uint32 DISPID_IHTMLRULESTYLE2_PIXELBOTTOM = 69545;
		public const uint32 DISPID_IHTMLRULESTYLE2_PIXELRIGHT = 69546;
		public const uint32 DISPID_IHTMLRULESTYLE2_POSBOTTOM = 69547;
		public const uint32 DISPID_IHTMLRULESTYLE2_POSRIGHT = 69548;
		public const uint32 DISPID_IHTMLRULESTYLE2_IMEMODE = 70656;
		public const uint32 DISPID_IHTMLRULESTYLE2_RUBYALIGN = 70657;
		public const uint32 DISPID_IHTMLRULESTYLE2_RUBYPOSITION = 70658;
		public const uint32 DISPID_IHTMLRULESTYLE2_RUBYOVERHANG = 70659;
		public const uint32 DISPID_IHTMLRULESTYLE2_LAYOUTGRIDCHAR = 70663;
		public const uint32 DISPID_IHTMLRULESTYLE2_LAYOUTGRIDLINE = 70664;
		public const uint32 DISPID_IHTMLRULESTYLE2_LAYOUTGRIDMODE = 70665;
		public const uint32 DISPID_IHTMLRULESTYLE2_LAYOUTGRIDTYPE = 70666;
		public const uint32 DISPID_IHTMLRULESTYLE2_LAYOUTGRID = 70667;
		public const uint32 DISPID_IHTMLRULESTYLE2_TEXTAUTOSPACE = 70668;
		public const uint32 DISPID_IHTMLRULESTYLE2_WORDBREAK = 70670;
		public const uint32 DISPID_IHTMLRULESTYLE2_LINEBREAK = 70669;
		public const uint32 DISPID_IHTMLRULESTYLE2_TEXTJUSTIFY = 70671;
		public const uint32 DISPID_IHTMLRULESTYLE2_TEXTJUSTIFYTRIM = 70672;
		public const uint32 DISPID_IHTMLRULESTYLE2_TEXTKASHIDA = 70673;
		public const uint32 DISPID_IHTMLRULESTYLE2_OVERFLOWX = 70675;
		public const uint32 DISPID_IHTMLRULESTYLE2_OVERFLOWY = 70676;
		public const uint32 DISPID_IHTMLRULESTYLE2_ACCELERATOR = 70683;
		public const uint32 DISPID_IHTMLRULESTYLE3_LAYOUTFLOW = 70691;
		public const uint32 DISPID_IHTMLRULESTYLE3_ZOOM = 70689;
		public const uint32 DISPID_IHTMLRULESTYLE3_WORDWRAP = 70694;
		public const uint32 DISPID_IHTMLRULESTYLE3_TEXTUNDERLINEPOSITION = 70695;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARBASECOLOR = 70716;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARFACECOLOR = 70717;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBAR3DLIGHTCOLOR = 70718;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARSHADOWCOLOR = 70719;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARHIGHLIGHTCOLOR = 70720;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARDARKSHADOWCOLOR = 70721;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARARROWCOLOR = 70722;
		public const uint32 DISPID_IHTMLRULESTYLE3_SCROLLBARTRACKCOLOR = 70732;
		public const uint32 DISPID_IHTMLRULESTYLE3_WRITINGMODE = 70728;
		public const uint32 DISPID_IHTMLRULESTYLE3_TEXTALIGNLAST = 70739;
		public const uint32 DISPID_IHTMLRULESTYLE3_TEXTKASHIDASPACE = 70740;
		public const uint32 DISPID_IHTMLRULESTYLE4_TEXTOVERFLOW = 70745;
		public const uint32 DISPID_IHTMLRULESTYLE4_MINHEIGHT = 70747;
		public const uint32 DISPID_IHTMLRULESTYLE5_MSINTERPOLATIONMODE = 70749;
		public const uint32 DISPID_IHTMLRULESTYLE5_MAXHEIGHT = 70750;
		public const uint32 DISPID_IHTMLRULESTYLE5_MINWIDTH = 70751;
		public const uint32 DISPID_IHTMLRULESTYLE5_MAXWIDTH = 70752;
		public const uint32 DISPID_IHTMLRULESTYLE6_CONTENT = 70754;
		public const uint32 DISPID_IHTMLRULESTYLE6_CAPTIONSIDE = 70755;
		public const uint32 DISPID_IHTMLRULESTYLE6_COUNTERINCREMENT = 70756;
		public const uint32 DISPID_IHTMLRULESTYLE6_COUNTERRESET = 70757;
		public const uint32 DISPID_IHTMLRULESTYLE6_OUTLINE = 70758;
		public const uint32 DISPID_IHTMLRULESTYLE6_OUTLINEWIDTH = 70759;
		public const uint32 DISPID_IHTMLRULESTYLE6_OUTLINESTYLE = 70760;
		public const uint32 DISPID_IHTMLRULESTYLE6_OUTLINECOLOR = 70761;
		public const uint32 DISPID_IHTMLRULESTYLE6_BOXSIZING = 70762;
		public const uint32 DISPID_IHTMLRULESTYLE6_BORDERSPACING = 70763;
		public const uint32 DISPID_IHTMLRULESTYLE6_ORPHANS = 70764;
		public const uint32 DISPID_IHTMLRULESTYLE6_WIDOWS = 70765;
		public const uint32 DISPID_IHTMLRULESTYLE6_PAGEBREAKINSIDE = 70766;
		public const uint32 DISPID_IHTMLRULESTYLE6_EMPTYCELLS = 70786;
		public const uint32 DISPID_IHTMLRULESTYLE6_MSBLOCKPROGRESSION = 70787;
		public const uint32 DISPID_IHTMLRULESTYLE6_QUOTES = 70788;
		public const uint32 DISPID_IHTMLCSSRULE_TYPE = 1101;
		public const uint32 DISPID_IHTMLCSSRULE_CSSTEXT = 1102;
		public const uint32 DISPID_IHTMLCSSRULE_PARENTRULE = 1103;
		public const uint32 DISPID_IHTMLCSSRULE_PARENTSTYLESHEET = 1104;
		public const uint32 DISPID_IHTMLCSSIMPORTRULE_HREF = 1001;
		public const uint32 DISPID_IHTMLCSSIMPORTRULE_MEDIA = 1002;
		public const uint32 DISPID_IHTMLCSSIMPORTRULE_STYLESHEET = 1003;
		public const uint32 DISPID_IHTMLCSSMEDIARULE_MEDIA = 1001;
		public const uint32 DISPID_IHTMLCSSMEDIARULE_CSSRULES = 1002;
		public const uint32 DISPID_IHTMLCSSMEDIARULE_INSERTRULE = 1003;
		public const uint32 DISPID_IHTMLCSSMEDIARULE_DELETERULE = 1004;
		public const uint32 DISPID_IHTMLCSSMEDIALIST_MEDIATEXT = 1001;
		public const uint32 DISPID_IHTMLCSSMEDIALIST_LENGTH = 1002;
		public const uint32 DISPID_IHTMLCSSMEDIALIST_ITEM = 1003;
		public const uint32 DISPID_IHTMLCSSMEDIALIST_APPENDMEDIUM = 1004;
		public const uint32 DISPID_IHTMLCSSMEDIALIST_DELETEMEDIUM = 1005;
		public const uint32 DISPID_IHTMLCSSNAMESPACERULE_NAMESPACEURI = 1001;
		public const uint32 DISPID_IHTMLCSSNAMESPACERULE_PREFIX = 1002;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMERULE_KEYTEXT = 1001;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMERULE_STYLE = 1002;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMESRULE_NAME = 1001;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMESRULE_CSSRULES = 1002;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMESRULE_APPENDRULE = 1003;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMESRULE_DELETERULE = 1004;
		public const uint32 DISPID_IHTMLMSCSSKEYFRAMESRULE_FINDRULE = 1005;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTLINETHROUGHSTYLE = 70702;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTUNDERLINESTYLE = 70703;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTEFFECT = 70704;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTCOLOR = 70726;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTBACKGROUNDCOLOR = 70705;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTDECORATIONCOLOR = 70725;
		public const uint32 DISPID_IHTMLRENDERSTYLE_RENDERINGPRIORITY = 70706;
		public const uint32 DISPID_IHTMLRENDERSTYLE_DEFAULTTEXTSELECTION = 70724;
		public const uint32 DISPID_IHTMLRENDERSTYLE_TEXTDECORATION = 70727;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_POSITION = 70626;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_STYLEFLOAT = 70606;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_COLOR = 70538;
		public const int32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDCOLOR = -501;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_FONTFAMILY = 70554;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_FONTSTYLE = 70560;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_FONTVARIANT = 70561;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_FONTWEIGHT = 70563;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_FONTSIZE = 70555;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDIMAGE = 70537;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDPOSITIONX = 70569;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDPOSITIONY = 70570;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDREPEAT = 70580;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERLEFTCOLOR = 70594;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERTOPCOLOR = 70591;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERRIGHTCOLOR = 70592;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERBOTTOMCOLOR = 70593;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERTOPSTYLE = 70601;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERRIGHTSTYLE = 70602;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERBOTTOMSTYLE = 70603;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERLEFTSTYLE = 70604;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERTOPWIDTH = 70596;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERRIGHTWIDTH = 70597;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERBOTTOMWIDTH = 70598;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERLEFTWIDTH = 70599;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LEFT = 65539;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TOP = 65540;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_WIDTH = 65541;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PADDINGLEFT = 70551;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PADDINGTOP = 70548;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PADDINGRIGHT = 70549;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PADDINGBOTTOM = 70550;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTALIGN = 65608;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTDECORATION = 70571;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_DISPLAY = 70607;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_VISIBILITY = 70616;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_ZINDEX = 70627;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LETTERSPACING = 70544;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LINEHEIGHT = 70542;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTINDENT = 70543;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_VERTICALALIGN = 70584;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BACKGROUNDATTACHMENT = 70581;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_MARGINTOP = 70573;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_MARGINRIGHT = 70574;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_MARGINBOTTOM = 70575;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_MARGINLEFT = 70576;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CLEAR = 70552;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LISTSTYLETYPE = 70608;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LISTSTYLEPOSITION = 70609;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LISTSTYLEIMAGE = 70610;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CLIPTOP = 70629;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CLIPRIGHT = 70630;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CLIPBOTTOM = 70631;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CLIPLEFT = 70632;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_OVERFLOW = 70546;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PAGEBREAKBEFORE = 70613;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PAGEBREAKAFTER = 70614;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_CURSOR = 70638;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TABLELAYOUT = 70634;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERCOLLAPSE = 70620;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_DIRECTION = 70655;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BEHAVIOR = 70651;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_GETATTRIBUTE = 66038;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_UNICODEBIDI = 70654;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_RIGHT = 65613;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BOTTOM = 65614;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_IMEMODE = 70656;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_RUBYALIGN = 70657;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_RUBYPOSITION = 70658;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_RUBYOVERHANG = 70659;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTAUTOSPACE = 70668;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LINEBREAK = 70669;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_WORDBREAK = 70670;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTJUSTIFY = 70671;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTJUSTIFYTRIM = 70672;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTKASHIDA = 70673;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BLOCKDIRECTION = 70653;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LAYOUTGRIDCHAR = 70663;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LAYOUTGRIDLINE = 70664;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LAYOUTGRIDMODE = 70665;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_LAYOUTGRIDTYPE = 70666;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERSTYLE = 70600;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERCOLOR = 70590;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_BORDERWIDTH = 70595;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_PADDING = 70547;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_MARGIN = 70572;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_ACCELERATOR = 70683;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_OVERFLOWX = 70675;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_OVERFLOWY = 70676;
		public const uint32 DISPID_IHTMLCURRENTSTYLE_TEXTTRANSFORM = 70540;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_LAYOUTFLOW = 70691;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_WORDWRAP = 70694;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_TEXTUNDERLINEPOSITION = 70695;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_HASLAYOUT = 70696;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARBASECOLOR = 70716;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARFACECOLOR = 70717;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBAR3DLIGHTCOLOR = 70718;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARSHADOWCOLOR = 70719;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARHIGHLIGHTCOLOR = 70720;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARDARKSHADOWCOLOR = 70721;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARARROWCOLOR = 70722;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_SCROLLBARTRACKCOLOR = 70732;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_WRITINGMODE = 70728;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_ZOOM = 70689;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_FILTER = 70618;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_TEXTALIGNLAST = 70739;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_TEXTKASHIDASPACE = 70740;
		public const uint32 DISPID_IHTMLCURRENTSTYLE2_ISBLOCK = 70744;
		public const uint32 DISPID_IHTMLCURRENTSTYLE3_TEXTOVERFLOW = 70745;
		public const uint32 DISPID_IHTMLCURRENTSTYLE3_MINHEIGHT = 70747;
		public const uint32 DISPID_IHTMLCURRENTSTYLE3_WORDSPACING = 70583;
		public const uint32 DISPID_IHTMLCURRENTSTYLE3_WHITESPACE = 70612;
		public const uint32 DISPID_IHTMLCURRENTSTYLE4_MSINTERPOLATIONMODE = 70749;
		public const uint32 DISPID_IHTMLCURRENTSTYLE4_MAXHEIGHT = 70750;
		public const uint32 DISPID_IHTMLCURRENTSTYLE4_MINWIDTH = 70751;
		public const uint32 DISPID_IHTMLCURRENTSTYLE4_MAXWIDTH = 70752;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_CAPTIONSIDE = 70755;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_OUTLINE = 70758;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_OUTLINEWIDTH = 70759;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_OUTLINESTYLE = 70760;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_OUTLINECOLOR = 70761;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_BOXSIZING = 70762;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_BORDERSPACING = 70763;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_ORPHANS = 70764;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_WIDOWS = 70765;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_PAGEBREAKINSIDE = 70766;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_EMPTYCELLS = 70786;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_MSBLOCKPROGRESSION = 70787;
		public const uint32 DISPID_IHTMLCURRENTSTYLE5_QUOTES = 70788;
		public const uint32 DISPID_IHTMLRECT_LEFT = 1001;
		public const uint32 DISPID_IHTMLRECT_TOP = 1002;
		public const uint32 DISPID_IHTMLRECT_RIGHT = 1003;
		public const uint32 DISPID_IHTMLRECT_BOTTOM = 1004;
		public const uint32 DISPID_IHTMLRECT2_WIDTH = 1005;
		public const uint32 DISPID_IHTMLRECT2_HEIGHT = 1006;
		public const uint32 DISPID_IHTMLRECTCOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLRECTCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLRECTCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDOMNODE_NODETYPE = 66582;
		public const uint32 DISPID_IHTMLDOMNODE_PARENTNODE = 66583;
		public const uint32 DISPID_IHTMLDOMNODE_HASCHILDNODES = 66584;
		public const uint32 DISPID_IHTMLDOMNODE_CHILDNODES = 66585;
		public const uint32 DISPID_IHTMLDOMNODE_ATTRIBUTES = 66586;
		public const uint32 DISPID_IHTMLDOMNODE_INSERTBEFORE = 66587;
		public const uint32 DISPID_IHTMLDOMNODE_REMOVECHILD = 66588;
		public const uint32 DISPID_IHTMLDOMNODE_REPLACECHILD = 66589;
		public const uint32 DISPID_IHTMLDOMNODE_CLONENODE = 66597;
		public const uint32 DISPID_IHTMLDOMNODE_REMOVENODE = 66602;
		public const uint32 DISPID_IHTMLDOMNODE_SWAPNODE = 66604;
		public const uint32 DISPID_IHTMLDOMNODE_REPLACENODE = 66603;
		public const uint32 DISPID_IHTMLDOMNODE_APPENDCHILD = 66609;
		public const uint32 DISPID_IHTMLDOMNODE_NODENAME = 66610;
		public const uint32 DISPID_IHTMLDOMNODE_NODEVALUE = 66611;
		public const uint32 DISPID_IHTMLDOMNODE_FIRSTCHILD = 66612;
		public const uint32 DISPID_IHTMLDOMNODE_LASTCHILD = 66613;
		public const uint32 DISPID_IHTMLDOMNODE_PREVIOUSSIBLING = 66614;
		public const uint32 DISPID_IHTMLDOMNODE_NEXTSIBLING = 66615;
		public const uint32 DISPID_IHTMLDOMNODE2_OWNERDOCUMENT = 66649;
		public const uint32 DISPID_IHTMLDOMNODE3_PREFIX = 66656;
		public const uint32 DISPID_IHTMLDOMNODE3_LOCALNAME = 66654;
		public const uint32 DISPID_IHTMLDOMNODE3_NAMESPACEURI = 66655;
		public const uint32 DISPID_IHTMLDOMNODE3_TEXTCONTENT = 66663;
		public const uint32 DISPID_IHTMLDOMNODE3_ISEQUALNODE = 66657;
		public const uint32 DISPID_IHTMLDOMNODE3_LOOKUPNAMESPACEURI = 66658;
		public const uint32 DISPID_IHTMLDOMNODE3_LOOKUPPREFIX = 66659;
		public const uint32 DISPID_IHTMLDOMNODE3_ISDEFAULTNAMESPACE = 66660;
		public const uint32 DISPID_IHTMLDOMNODE3_IE9_APPENDCHILD = 66804;
		public const uint32 DISPID_IHTMLDOMNODE3_IE9_INSERTBEFORE = 66805;
		public const uint32 DISPID_IHTMLDOMNODE3_IE9_REMOVECHILD = 66806;
		public const uint32 DISPID_IHTMLDOMNODE3_IE9_REPLACECHILD = 66807;
		public const uint32 DISPID_IHTMLDOMNODE3_ISSAMENODE = 66661;
		public const uint32 DISPID_IHTMLDOMNODE3_COMPAREDOCUMENTPOSITION = 66662;
		public const uint32 DISPID_IHTMLDOMNODE3_ISSUPPORTED = 66813;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE_NODENAME = 1000;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE_NODEVALUE = 1002;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE_SPECIFIED = 1001;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_NAME = 1003;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_VALUE = 1004;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_EXPANDO = 1005;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_NODETYPE = 1006;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_PARENTNODE = 1007;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_CHILDNODES = 1008;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_FIRSTCHILD = 1009;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_LASTCHILD = 1010;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_PREVIOUSSIBLING = 1011;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_NEXTSIBLING = 1012;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_ATTRIBUTES = 1013;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_OWNERDOCUMENT = 1014;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_INSERTBEFORE = 1015;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_REPLACECHILD = 1016;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_REMOVECHILD = 1017;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_APPENDCHILD = 1018;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_HASCHILDNODES = 1019;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE2_CLONENODE = 1020;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE3_IE8_NODEVALUE = 1153;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE3_IE8_VALUE = 1154;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE3_IE8_SPECIFIED = 1150;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE3_OWNERELEMENT = 1151;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_NODEVALUE = 1159;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_NODENAME = 1160;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_NAME = 1161;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_VALUE = 1162;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_FIRSTCHILD = 1163;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_LASTCHILD = 1164;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_CHILDNODES = 1165;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_HASATTRIBUTES = 1166;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_HASCHILDNODES = 1167;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_NORMALIZE = 1170;
		public const uint32 DISPID_IHTMLDOMATTRIBUTE4_IE9_SPECIFIED = 1171;
		public const uint32 DISPID_IHTMLDOMTEXTNODE_DATA = 1000;
		public const uint32 DISPID_IHTMLDOMTEXTNODE_TOSTRING = 1001;
		public const uint32 DISPID_IHTMLDOMTEXTNODE_LENGTH = 1002;
		public const uint32 DISPID_IHTMLDOMTEXTNODE_SPLITTEXT = 1003;
		public const uint32 DISPID_IHTMLDOMTEXTNODE2_SUBSTRINGDATA = 1004;
		public const uint32 DISPID_IHTMLDOMTEXTNODE2_APPENDDATA = 1005;
		public const uint32 DISPID_IHTMLDOMTEXTNODE2_INSERTDATA = 1006;
		public const uint32 DISPID_IHTMLDOMTEXTNODE2_DELETEDATA = 1007;
		public const uint32 DISPID_IHTMLDOMTEXTNODE2_REPLACEDATA = 1008;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_IE9_SUBSTRINGDATA = 1010;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_IE9_INSERTDATA = 1011;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_IE9_DELETEDATA = 1012;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_IE9_REPLACEDATA = 1013;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_IE9_SPLITTEXT = 1009;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_WHOLETEXT = 1014;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_REPLACEWHOLETEXT = 1015;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_HASATTRIBUTES = 1017;
		public const uint32 DISPID_IHTMLDOMTEXTNODE3_NORMALIZE = 1019;
		public const uint32 DISPID_IHTMLDOMIMPLEMENTATION_HASFEATURE = 1000;
		public const uint32 DISPID_IHTMLDOMIMPLEMENTATION2_CREATEDOCUMENTTYPE = 1001;
		public const uint32 DISPID_IHTMLDOMIMPLEMENTATION2_CREATEDOCUMENT = 1002;
		public const uint32 DISPID_IHTMLDOMIMPLEMENTATION2_CREATEHTMLDOCUMENT = 1003;
		public const uint32 DISPID_IHTMLDOMIMPLEMENTATION2_IE9_HASFEATURE = 1004;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLATTRIBUTECOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION2_GETNAMEDITEM = 1501;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION2_SETNAMEDITEM = 1502;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION2_REMOVENAMEDITEM = 1503;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION3_IE8_GETNAMEDITEM = 1150;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION3_IE8_SETNAMEDITEM = 1151;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION3_IE8_REMOVENAMEDITEM = 1152;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION3_IE8_ITEM = 1154;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION3_IE8_LENGTH = 1153;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_GETNAMEDITEMNS = 1155;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_SETNAMEDITEMNS = 1156;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_REMOVENAMEDITEMNS = 1157;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_IE9_GETNAMEDITEM = 1158;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_IE9_SETNAMEDITEM = 1159;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_IE9_REMOVENAMEDITEM = 1160;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_IE9_ITEM = 1161;
		public const uint32 DISPID_IHTMLATTRIBUTECOLLECTION4_IE9_LENGTH = 1162;
		public const uint32 DISPID_IHTMLDOMCHILDRENCOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLDOMCHILDRENCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLDOMCHILDRENCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDOMCHILDRENCOLLECTION2_IE9_ITEM = 1;
		public const uint32 DISPID_IHTMLELEMENT_SETATTRIBUTE = 66037;
		public const uint32 DISPID_IHTMLELEMENT_GETATTRIBUTE = 66038;
		public const uint32 DISPID_IHTMLELEMENT_REMOVEATTRIBUTE = 66039;
		public const uint32 DISPID_IHTMLELEMENT_CLASSNAME = 66537;
		public const uint32 DISPID_IHTMLELEMENT_ID = 66538;
		public const uint32 DISPID_IHTMLELEMENT_TAGNAME = 66540;
		public const uint32 DISPID_IHTMLELEMENT_PARENTELEMENT = 65544;
		public const uint32 DISPID_IHTMLELEMENT_STYLE = 65610;
		public const uint32 DISPID_IHTMLELEMENT_ONHELP = 71549;
		public const uint32 DISPID_IHTMLELEMENT_ONCLICK = 71544;
		public const uint32 DISPID_IHTMLELEMENT_ONDBLCLICK = 71545;
		public const uint32 DISPID_IHTMLELEMENT_ONKEYDOWN = 71541;
		public const uint32 DISPID_IHTMLELEMENT_ONKEYUP = 71542;
		public const uint32 DISPID_IHTMLELEMENT_ONKEYPRESS = 71543;
		public const uint32 DISPID_IHTMLELEMENT_ONMOUSEOUT = 71537;
		public const uint32 DISPID_IHTMLELEMENT_ONMOUSEOVER = 71536;
		public const uint32 DISPID_IHTMLELEMENT_ONMOUSEMOVE = 71540;
		public const uint32 DISPID_IHTMLELEMENT_ONMOUSEDOWN = 71538;
		public const uint32 DISPID_IHTMLELEMENT_ONMOUSEUP = 71539;
		public const uint32 DISPID_IHTMLELEMENT_DOCUMENT = 66554;
		public const uint32 DISPID_IHTMLELEMENT_TITLE = 65605;
		public const uint32 DISPID_IHTMLELEMENT_LANGUAGE = 70636;
		public const uint32 DISPID_IHTMLELEMENT_ONSELECTSTART = 71573;
		public const uint32 DISPID_IHTMLELEMENT_SCROLLINTOVIEW = 66555;
		public const uint32 DISPID_IHTMLELEMENT_CONTAINS = 66556;
		public const uint32 DISPID_IHTMLELEMENT_SOURCEINDEX = 66560;
		public const uint32 DISPID_IHTMLELEMENT_RECORDNUMBER = 66561;
		public const uint32 DISPID_IHTMLELEMENT_LANG = 70545;
		public const uint32 DISPID_IHTMLELEMENT_OFFSETLEFT = 66544;
		public const uint32 DISPID_IHTMLELEMENT_OFFSETTOP = 66545;
		public const uint32 DISPID_IHTMLELEMENT_OFFSETWIDTH = 66546;
		public const uint32 DISPID_IHTMLELEMENT_OFFSETHEIGHT = 66547;
		public const uint32 DISPID_IHTMLELEMENT_OFFSETPARENT = 66548;
		public const uint32 DISPID_IHTMLELEMENT_INNERHTML = 66562;
		public const uint32 DISPID_IHTMLELEMENT_INNERTEXT = 66563;
		public const uint32 DISPID_IHTMLELEMENT_OUTERHTML = 66564;
		public const uint32 DISPID_IHTMLELEMENT_OUTERTEXT = 66565;
		public const uint32 DISPID_IHTMLELEMENT_INSERTADJACENTHTML = 66566;
		public const uint32 DISPID_IHTMLELEMENT_INSERTADJACENTTEXT = 66567;
		public const uint32 DISPID_IHTMLELEMENT_PARENTTEXTEDIT = 66568;
		public const uint32 DISPID_IHTMLELEMENT_ISTEXTEDIT = 66570;
		public const uint32 DISPID_IHTMLELEMENT_CLICK = 66569;
		public const uint32 DISPID_IHTMLELEMENT_FILTERS = 66571;
		public const uint32 DISPID_IHTMLELEMENT_ONDRAGSTART = 71571;
		public const uint32 DISPID_IHTMLELEMENT_TOSTRING = 66572;
		public const uint32 DISPID_IHTMLELEMENT_ONBEFOREUPDATE = 71557;
		public const uint32 DISPID_IHTMLELEMENT_ONAFTERUPDATE = 71558;
		public const uint32 DISPID_IHTMLELEMENT_ONERRORUPDATE = 71574;
		public const uint32 DISPID_IHTMLELEMENT_ONROWEXIT = 71554;
		public const uint32 DISPID_IHTMLELEMENT_ONROWENTER = 71555;
		public const uint32 DISPID_IHTMLELEMENT_ONDATASETCHANGED = 71576;
		public const uint32 DISPID_IHTMLELEMENT_ONDATAAVAILABLE = 71577;
		public const uint32 DISPID_IHTMLELEMENT_ONDATASETCOMPLETE = 71578;
		public const uint32 DISPID_IHTMLELEMENT_ONFILTERCHANGE = 71579;
		public const uint32 DISPID_IHTMLELEMENT_CHILDREN = 66573;
		public const uint32 DISPID_IHTMLELEMENT_ALL = 66574;
		public const uint32 DISPID_IHTMLELEMENT2_SCOPENAME = 66575;
		public const uint32 DISPID_IHTMLELEMENT2_SETCAPTURE = 66576;
		public const uint32 DISPID_IHTMLELEMENT2_RELEASECAPTURE = 66577;
		public const uint32 DISPID_IHTMLELEMENT2_ONLOSECAPTURE = 71582;
		public const uint32 DISPID_IHTMLELEMENT2_COMPONENTFROMPOINT = 66578;
		public const uint32 DISPID_IHTMLELEMENT2_DOSCROLL = 66579;
		public const uint32 DISPID_IHTMLELEMENT2_ONSCROLL = 71567;
		public const uint32 DISPID_IHTMLELEMENT2_ONDRAG = 71585;
		public const uint32 DISPID_IHTMLELEMENT2_ONDRAGEND = 71586;
		public const uint32 DISPID_IHTMLELEMENT2_ONDRAGENTER = 71587;
		public const uint32 DISPID_IHTMLELEMENT2_ONDRAGOVER = 71588;
		public const uint32 DISPID_IHTMLELEMENT2_ONDRAGLEAVE = 71589;
		public const uint32 DISPID_IHTMLELEMENT2_ONDROP = 71590;
		public const uint32 DISPID_IHTMLELEMENT2_ONBEFORECUT = 71594;
		public const uint32 DISPID_IHTMLELEMENT2_ONCUT = 71591;
		public const uint32 DISPID_IHTMLELEMENT2_ONBEFORECOPY = 71595;
		public const uint32 DISPID_IHTMLELEMENT2_ONCOPY = 71592;
		public const uint32 DISPID_IHTMLELEMENT2_ONBEFOREPASTE = 71596;
		public const uint32 DISPID_IHTMLELEMENT2_ONPASTE = 71593;
		public const uint32 DISPID_IHTMLELEMENT2_CURRENTSTYLE = 66543;
		public const uint32 DISPID_IHTMLELEMENT2_ONPROPERTYCHANGE = 71583;
		public const uint32 DISPID_IHTMLELEMENT2_GETCLIENTRECTS = 66580;
		public const uint32 DISPID_IHTMLELEMENT2_GETBOUNDINGCLIENTRECT = 66581;
		public const uint32 DISPID_IHTMLELEMENT2_SETEXPRESSION = 66040;
		public const uint32 DISPID_IHTMLELEMENT2_GETEXPRESSION = 66041;
		public const uint32 DISPID_IHTMLELEMENT2_REMOVEEXPRESSION = 66042;
		public const uint32 DISPID_IHTMLELEMENT2_TABINDEX = 65551;
		public const uint32 DISPID_IHTMLELEMENT2_FOCUS = 67536;
		public const uint32 DISPID_IHTMLELEMENT2_ACCESSKEY = 67541;
		public const uint32 DISPID_IHTMLELEMENT2_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLELEMENT2_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLELEMENT2_ONRESIZE = 71572;
		public const uint32 DISPID_IHTMLELEMENT2_BLUR = 67538;
		public const uint32 DISPID_IHTMLELEMENT2_ADDFILTER = 67553;
		public const uint32 DISPID_IHTMLELEMENT2_REMOVEFILTER = 67554;
		public const uint32 DISPID_IHTMLELEMENT2_CLIENTHEIGHT = 67555;
		public const uint32 DISPID_IHTMLELEMENT2_CLIENTWIDTH = 67556;
		public const uint32 DISPID_IHTMLELEMENT2_CLIENTTOP = 67557;
		public const uint32 DISPID_IHTMLELEMENT2_CLIENTLEFT = 67558;
		public const uint32 DISPID_IHTMLELEMENT2_ATTACHEVENT = 66043;
		public const uint32 DISPID_IHTMLELEMENT2_DETACHEVENT = 66044;
		public const uint32 DISPID_IHTMLELEMENT2_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLELEMENT2_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLELEMENT2_ONROWSDELETE = 71598;
		public const uint32 DISPID_IHTMLELEMENT2_ONROWSINSERTED = 71599;
		public const uint32 DISPID_IHTMLELEMENT2_ONCELLCHANGE = 71600;
		public const uint32 DISPID_IHTMLELEMENT2_DIR = 70653;
		public const uint32 DISPID_IHTMLELEMENT2_CREATECONTROLRANGE = 66592;
		public const uint32 DISPID_IHTMLELEMENT2_SCROLLHEIGHT = 66593;
		public const uint32 DISPID_IHTMLELEMENT2_SCROLLWIDTH = 66594;
		public const uint32 DISPID_IHTMLELEMENT2_SCROLLTOP = 66595;
		public const uint32 DISPID_IHTMLELEMENT2_SCROLLLEFT = 66596;
		public const uint32 DISPID_IHTMLELEMENT2_CLEARATTRIBUTES = 66598;
		public const uint32 DISPID_IHTMLELEMENT2_MERGEATTRIBUTES = 66599;
		public const uint32 DISPID_IHTMLELEMENT2_ONCONTEXTMENU = 71601;
		public const uint32 DISPID_IHTMLELEMENT2_INSERTADJACENTELEMENT = 66605;
		public const uint32 DISPID_IHTMLELEMENT2_APPLYELEMENT = 66601;
		public const uint32 DISPID_IHTMLELEMENT2_GETADJACENTTEXT = 66606;
		public const uint32 DISPID_IHTMLELEMENT2_REPLACEADJACENTTEXT = 66607;
		public const uint32 DISPID_IHTMLELEMENT2_CANHAVECHILDREN = 66608;
		public const uint32 DISPID_IHTMLELEMENT2_ADDBEHAVIOR = 66616;
		public const uint32 DISPID_IHTMLELEMENT2_REMOVEBEHAVIOR = 66617;
		public const uint32 DISPID_IHTMLELEMENT2_RUNTIMESTYLE = 66600;
		public const uint32 DISPID_IHTMLELEMENT2_BEHAVIORURNS = 66618;
		public const uint32 DISPID_IHTMLELEMENT2_TAGURN = 66619;
		public const uint32 DISPID_IHTMLELEMENT2_ONBEFOREEDITFOCUS = 71605;
		public const uint32 DISPID_IHTMLELEMENT2_READYSTATEVALUE = 66620;
		public const uint32 DISPID_IHTMLELEMENT2_GETELEMENTSBYTAGNAME = 66621;
		public const uint32 DISPID_IHTMLELEMENT3_MERGEATTRIBUTES = 66632;
		public const uint32 DISPID_IHTMLELEMENT3_ISMULTILINE = 66633;
		public const uint32 DISPID_IHTMLELEMENT3_CANHAVEHTML = 66634;
		public const uint32 DISPID_IHTMLELEMENT3_ONLAYOUTCOMPLETE = 71609;
		public const uint32 DISPID_IHTMLELEMENT3_ONPAGE = 71610;
		public const uint32 DISPID_IHTMLELEMENT3_INFLATEBLOCK = 66636;
		public const uint32 DISPID_IHTMLELEMENT3_ONBEFOREDEACTIVATE = 71613;
		public const uint32 DISPID_IHTMLELEMENT3_SETACTIVE = 66637;
		public const uint32 DISPID_IHTMLELEMENT3_CONTENTEDITABLE = 70698;
		public const uint32 DISPID_IHTMLELEMENT3_ISCONTENTEDITABLE = 66638;
		public const uint32 DISPID_IHTMLELEMENT3_HIDEFOCUS = 70699;
		public const uint32 DISPID_IHTMLELEMENT3_DISABLED = 65612;
		public const uint32 DISPID_IHTMLELEMENT3_ISDISABLED = 66641;
		public const uint32 DISPID_IHTMLELEMENT3_ONMOVE = 71614;
		public const uint32 DISPID_IHTMLELEMENT3_ONCONTROLSELECT = 71615;
		public const uint32 DISPID_IHTMLELEMENT3_FIREEVENT = 66642;
		public const uint32 DISPID_IHTMLELEMENT3_ONRESIZESTART = 71619;
		public const uint32 DISPID_IHTMLELEMENT3_ONRESIZEEND = 71620;
		public const uint32 DISPID_IHTMLELEMENT3_ONMOVESTART = 71617;
		public const uint32 DISPID_IHTMLELEMENT3_ONMOVEEND = 71618;
		public const uint32 DISPID_IHTMLELEMENT3_ONMOUSEENTER = 71621;
		public const uint32 DISPID_IHTMLELEMENT3_ONMOUSELEAVE = 71622;
		public const uint32 DISPID_IHTMLELEMENT3_ONACTIVATE = 71623;
		public const uint32 DISPID_IHTMLELEMENT3_ONDEACTIVATE = 71624;
		public const uint32 DISPID_IHTMLELEMENT3_DRAGDROP = 66643;
		public const uint32 DISPID_IHTMLELEMENT3_GLYPHMODE = 66644;
		public const uint32 DISPID_IHTMLELEMENT4_ONMOUSEWHEEL = 71612;
		public const uint32 DISPID_IHTMLELEMENT4_NORMALIZE = 66648;
		public const uint32 DISPID_IHTMLELEMENT4_GETATTRIBUTENODE = 66645;
		public const uint32 DISPID_IHTMLELEMENT4_SETATTRIBUTENODE = 66646;
		public const uint32 DISPID_IHTMLELEMENT4_REMOVEATTRIBUTENODE = 66647;
		public const uint32 DISPID_IHTMLELEMENT4_ONBEFOREACTIVATE = 71626;
		public const uint32 DISPID_IHTMLELEMENT4_ONFOCUSIN = 71627;
		public const uint32 DISPID_IHTMLELEMENT4_ONFOCUSOUT = 71628;
		public const uint32 DISPID_IELEMENTSELECTOR_QUERYSELECTOR = 66650;
		public const uint32 DISPID_IELEMENTSELECTOR_QUERYSELECTORALL = 66651;
		public const uint32 DISPID_IHTMLUNIQUENAME_UNIQUENUMBER = 66590;
		public const uint32 DISPID_IHTMLUNIQUENAME_UNIQUEID = 66591;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_GETATTRIBUTENODE = 66736;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_SETATTRIBUTENODE = 66737;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_REMOVEATTRIBUTENODE = 66738;
		public const uint32 DISPID_IHTMLELEMENT5_HASATTRIBUTE = 66739;
		public const uint32 DISPID_IHTMLELEMENT5_ROLE = 66740;
		public const uint32 DISPID_IHTMLELEMENT5_ARIABUSY = 66741;
		public const uint32 DISPID_IHTMLELEMENT5_ARIACHECKED = 66742;
		public const uint32 DISPID_IHTMLELEMENT5_ARIADISABLED = 66743;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAEXPANDED = 66744;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAHASPOPUP = 66745;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAHIDDEN = 66746;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAINVALID = 66747;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAMULTISELECTABLE = 66748;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAPRESSED = 66749;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAREADONLY = 66750;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAREQUIRED = 66751;
		public const uint32 DISPID_IHTMLELEMENT5_ARIASECRET = 66752;
		public const uint32 DISPID_IHTMLELEMENT5_ARIASELECTED = 66753;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_GETATTRIBUTE = 66754;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_SETATTRIBUTE = 66755;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_REMOVEATTRIBUTE = 66756;
		public const uint32 DISPID_IHTMLELEMENT5_IE8_ATTRIBUTES = 66757;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAVALUENOW = 66758;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAPOSINSET = 66759;
		public const uint32 DISPID_IHTMLELEMENT5_ARIASETSIZE = 66760;
		public const uint32 DISPID_IHTMLELEMENT5_ARIALEVEL = 66761;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAVALUEMIN = 66762;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAVALUEMAX = 66763;
		public const uint32 DISPID_IHTMLELEMENT5_ARIACONTROLS = 66764;
		public const uint32 DISPID_IHTMLELEMENT5_ARIADESCRIBEDBY = 66765;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAFLOWTO = 66766;
		public const uint32 DISPID_IHTMLELEMENT5_ARIALABELLEDBY = 66767;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAACTIVEDESCENDANT = 66768;
		public const uint32 DISPID_IHTMLELEMENT5_ARIAOWNS = 66769;
		public const uint32 DISPID_IHTMLELEMENT5_HASATTRIBUTES = 66770;
		public const uint32 DISPID_IHTMLELEMENT5_ARIALIVE = 66771;
		public const uint32 DISPID_IHTMLELEMENT5_ARIARELEVANT = 66772;
		public const uint32 DISPID_IHTMLELEMENT6_GETATTRIBUTENS = 66789;
		public const uint32 DISPID_IHTMLELEMENT6_SETATTRIBUTENS = 66790;
		public const uint32 DISPID_IHTMLELEMENT6_REMOVEATTRIBUTENS = 66791;
		public const uint32 DISPID_IHTMLELEMENT6_GETATTRIBUTENODENS = 66786;
		public const uint32 DISPID_IHTMLELEMENT6_SETATTRIBUTENODENS = 66787;
		public const uint32 DISPID_IHTMLELEMENT6_HASATTRIBUTENS = 66788;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_GETATTRIBUTE = 66796;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_SETATTRIBUTE = 66797;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_REMOVEATTRIBUTE = 66798;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_GETATTRIBUTENODE = 66792;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_SETATTRIBUTENODE = 66793;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_REMOVEATTRIBUTENODE = 66794;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_HASATTRIBUTE = 66795;
		public const uint32 DISPID_IHTMLELEMENT6_GETELEMENTSBYTAGNAMENS = 66799;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_TAGNAME = 66801;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_NODENAME = 66802;
		public const uint32 DISPID_IHTMLELEMENT6_GETELEMENTSBYCLASSNAME = 66803;
		public const uint32 DISPID_IHTMLELEMENT6_MSMATCHESSELECTOR = 66814;
		public const uint32 DISPID_IHTMLELEMENT6_ONABORT = 71564;
		public const uint32 DISPID_IHTMLELEMENT6_ONCANPLAY = 71670;
		public const uint32 DISPID_IHTMLELEMENT6_ONCANPLAYTHROUGH = 71671;
		public const uint32 DISPID_IHTMLELEMENT6_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLELEMENT6_ONDURATIONCHANGE = 71672;
		public const uint32 DISPID_IHTMLELEMENT6_ONEMPTIED = 71673;
		public const uint32 DISPID_IHTMLELEMENT6_ONENDED = 71674;
		public const uint32 DISPID_IHTMLELEMENT6_ONERROR = 71565;
		public const uint32 DISPID_IHTMLELEMENT6_ONINPUT = 71663;
		public const uint32 DISPID_IHTMLELEMENT6_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLELEMENT6_ONLOADEDDATA = 71675;
		public const uint32 DISPID_IHTMLELEMENT6_ONLOADEDMETADATA = 71676;
		public const uint32 DISPID_IHTMLELEMENT6_ONLOADSTART = 71677;
		public const uint32 DISPID_IHTMLELEMENT6_ONPAUSE = 71678;
		public const uint32 DISPID_IHTMLELEMENT6_ONPLAY = 71679;
		public const uint32 DISPID_IHTMLELEMENT6_ONPLAYING = 71680;
		public const uint32 DISPID_IHTMLELEMENT6_ONPROGRESS = 71681;
		public const uint32 DISPID_IHTMLELEMENT6_ONRATECHANGE = 71682;
		public const uint32 DISPID_IHTMLELEMENT6_ONRESET = 71548;
		public const uint32 DISPID_IHTMLELEMENT6_ONSEEKED = 71683;
		public const uint32 DISPID_IHTMLELEMENT6_ONSEEKING = 71684;
		public const uint32 DISPID_IHTMLELEMENT6_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLELEMENT6_ONSTALLED = 71685;
		public const uint32 DISPID_IHTMLELEMENT6_ONSUBMIT = 71547;
		public const uint32 DISPID_IHTMLELEMENT6_ONSUSPEND = 71686;
		public const uint32 DISPID_IHTMLELEMENT6_ONTIMEUPDATE = 71687;
		public const uint32 DISPID_IHTMLELEMENT6_ONVOLUMECHANGE = 71688;
		public const uint32 DISPID_IHTMLELEMENT6_ONWAITING = 71689;
		public const uint32 DISPID_IHTMLELEMENT6_IE9_HASATTRIBUTES = 66815;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTERDOWN = 71690;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTERMOVE = 71691;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTERUP = 71692;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTEROVER = 71693;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTEROUT = 71694;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTERCANCEL = 71695;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSPOINTERHOVER = 71696;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSLOSTPOINTERCAPTURE = 71706;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGOTPOINTERCAPTURE = 71707;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTURESTART = 71699;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTURECHANGE = 71700;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTUREEND = 71701;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTUREHOLD = 71702;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTURETAP = 71703;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSGESTUREDOUBLETAP = 71704;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSINERTIASTART = 71705;
		public const uint32 DISPID_IHTMLELEMENT7_MSSETPOINTERCAPTURE = 66822;
		public const uint32 DISPID_IHTMLELEMENT7_MSRELEASEPOINTERCAPTURE = 66823;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSTRANSITIONSTART = 71709;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSTRANSITIONEND = 71710;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSANIMATIONSTART = 71711;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSANIMATIONEND = 71712;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSANIMATIONITERATION = 71713;
		public const uint32 DISPID_IHTMLELEMENT7_ONINVALID = 71724;
		public const uint32 DISPID_IHTMLELEMENT7_XMSACCELERATORKEY = 66834;
		public const uint32 DISPID_IHTMLELEMENT7_SPELLCHECK = 70907;
		public const uint32 DISPID_IHTMLELEMENT7_ONMSMANIPULATIONSTATECHANGED = 71714;
		public const uint32 DISPID_IHTMLELEMENT7_ONCUECHANGE = 71729;
		public const uint32 DISPID_IHTMLELEMENTAPPLIEDSTYLES_MSGETRULESAPPLIED = 66652;
		public const uint32 DISPID_IHTMLELEMENTAPPLIEDSTYLES_MSGETRULESAPPLIEDWITHANCESTOR = 66653;
		public const uint32 DISPID_IELEMENTTRAVERSAL_FIRSTELEMENTCHILD = 66808;
		public const uint32 DISPID_IELEMENTTRAVERSAL_LASTELEMENTCHILD = 66809;
		public const uint32 DISPID_IELEMENTTRAVERSAL_PREVIOUSELEMENTSIBLING = 66810;
		public const uint32 DISPID_IELEMENTTRAVERSAL_NEXTELEMENTSIBLING = 66811;
		public const uint32 DISPID_IELEMENTTRAVERSAL_CHILDELEMENTCOUNT = 66812;
		public const uint32 DISPID_IHTMLDATABINDING_DATAFLD = 66557;
		public const uint32 DISPID_IHTMLDATABINDING_DATASRC = 66558;
		public const uint32 DISPID_IHTMLDATABINDING_DATAFORMATAS = 66559;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONABORT = 1000;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONERROR = 1002;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONLOAD = 1003;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONRESET = 1015;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONSELECT = 1006;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONSUBMIT = 1007;
		public const uint32 DISPID_HTMLELEMENTEVENTS4_ONMSCONTENTZOOM = 71708;
		public const uint32 DISPID_HTMLELEMENTEVENTS3_ONONLINE = 1064;
		public const uint32 DISPID_HTMLELEMENTEVENTS3_ONOFFLINE = 1065;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONHELP = 65546;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONCLICK = -600;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONDBLCLICK = -601;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONKEYPRESS = -603;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONKEYDOWN = -602;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONKEYUP = -604;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEOUT = 65545;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEOVER = 65544;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEMOVE = -606;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEDOWN = -605;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEUP = -607;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONSELECTSTART = 65548;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONFILTERCHANGE = 65553;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAGSTART = 65547;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONLOSECAPTURE = 65554;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONPROPERTYCHANGE = 65555;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONSCROLL = 1014;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONFOCUS = 65537;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONRESIZE = 1016;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAG = 65556;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAGEND = 65557;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAGENTER = 65558;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAGOVER = 65559;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDRAGLEAVE = 65560;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDROP = 65561;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFORECUT = 65565;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONCUT = 65562;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFORECOPY = 65566;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONCOPY = 65563;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFOREPASTE = 65567;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONPASTE = 65564;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONCELLCHANGE = 65570;
		public const int32 DISPID_HTMLELEMENTEVENTS2_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONLAYOUTCOMPLETE = 1030;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONPAGE = 1031;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEENTER = 1042;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOUSELEAVE = 1043;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONACTIVATE = 1044;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONDEACTIVATE = 1045;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONFOCUSIN = 1048;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONFOCUSOUT = 1049;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOVE = 1035;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOVESTART = 1038;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOVEEND = 1039;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONRESIZESTART = 1040;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONRESIZEEND = 1041;
		public const uint32 DISPID_HTMLELEMENTEVENTS2_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONHELP = 65546;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONCLICK = -600;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONDBLCLICK = -601;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONKEYPRESS = -603;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONKEYDOWN = -602;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONKEYUP = -604;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOUSEOUT = 65545;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOUSEOVER = 65544;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONMOUSEMOVE = -606;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONMOUSEDOWN = -605;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONMOUSEUP = -607;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONSELECTSTART = 65548;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONFILTERCHANGE = 65553;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAGSTART = 65547;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONLOSECAPTURE = 65554;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONPROPERTYCHANGE = 65555;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONSCROLL = 1014;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONFOCUS = 65537;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONRESIZE = 1016;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAG = 65556;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAGEND = 65557;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAGENTER = 65558;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAGOVER = 65559;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDRAGLEAVE = 65560;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDROP = 65561;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFORECUT = 65565;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONCUT = 65562;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFORECOPY = 65566;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONCOPY = 65563;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFOREPASTE = 65567;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONPASTE = 65564;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONCELLCHANGE = 65570;
		public const int32 DISPID_HTMLELEMENTEVENTS_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONLAYOUTCOMPLETE = 1030;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONPAGE = 1031;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOVE = 1035;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOVESTART = 1038;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOVEEND = 1039;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONRESIZESTART = 1040;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONRESIZEEND = 1041;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOUSEENTER = 1042;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOUSELEAVE = 1043;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONACTIVATE = 1044;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONDEACTIVATE = 1045;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONFOCUSIN = 1048;
		public const uint32 DISPID_HTMLELEMENTEVENTS_ONFOCUSOUT = 1049;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_STYLE = 1001;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_TABSTOP = 1002;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_VIEWINHERITSTYLE = 70735;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_VIEWMASTERTAB = 1006;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_SCROLLSEGMENTX = 1003;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_SCROLLSEGMENTY = 1004;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_ISMULTILINE = 1008;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_CONTENTEDITABLE = 70698;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_CANHAVEHTML = 1009;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_VIEWLINK = 1011;
		public const uint32 DISPID_IHTMLELEMENTDEFAULTS_FROZEN = 70734;
		public const uint32 DISPID_IHTCDEFAULTDISPATCH_ELEMENT = 70679;
		public const uint32 DISPID_IHTCDEFAULTDISPATCH_CREATEEVENTOBJECT = 70680;
		public const uint32 DISPID_IHTCDEFAULTDISPATCH_DEFAULTS = 70701;
		public const uint32 DISPID_IHTCDEFAULTDISPATCH_DOCUMENT = 70678;
		public const uint32 DISPID_IHTCPROPERTYBEHAVIOR_FIRECHANGE = 66036;
		public const uint32 DISPID_IHTCPROPERTYBEHAVIOR_VALUE = 70677;
		public const uint32 DISPID_IHTCEVENTBEHAVIOR_FIRE = 66036;
		public const uint32 DISPID_IHTCATTACHBEHAVIOR_FIREEVENT = 0;
		public const uint32 DISPID_IHTCATTACHBEHAVIOR_DETACHEVENT = 66036;
		public const uint32 DISPID_IHTCATTACHBEHAVIOR2_FIREEVENT = 0;
		public const uint32 DISPID_IHTCDESCBEHAVIOR_URN = 66036;
		public const uint32 DISPID_IHTCDESCBEHAVIOR_NAME = 66037;
		public const uint32 DISPID_IHTMLURNCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IHTMLURNCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLGENERICELEMENT_RECORDSET = 1001;
		public const uint32 DISPID_IHTMLGENERICELEMENT_NAMEDRECORDSET = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEETRULE_SELECTORTEXT = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEETRULE_STYLE = 65610;
		public const uint32 DISPID_IHTMLSTYLESHEETRULE_READONLY = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEETRULEAPPLIED_MSSPECIFICITY = 1003;
		public const uint32 DISPID_IHTMLSTYLESHEETRULEAPPLIED_MSGETSPECIFICITY = 1004;
		public const uint32 DISPID_IHTMLSTYLESHEETRULE2_IE9_SELECTORTEXT = 1005;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESCOLLECTION2_IE9_LENGTH = 1003;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESCOLLECTION2_IE9_ITEM = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGE_SELECTOR = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGE_PSEUDOCLASS = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGE2_SELECTORTEXT = 1003;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGE2_STYLE = 65610;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGESCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEETPAGESCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLSTYLESHEET_TITLE = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEET_PARENTSTYLESHEET = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEET_OWNINGELEMENT = 1003;
		public const uint32 DISPID_IHTMLSTYLESHEET_DISABLED = 65612;
		public const uint32 DISPID_IHTMLSTYLESHEET_READONLY = 1004;
		public const uint32 DISPID_IHTMLSTYLESHEET_IMPORTS = 1005;
		public const uint32 DISPID_IHTMLSTYLESHEET_HREF = 1006;
		public const uint32 DISPID_IHTMLSTYLESHEET_TYPE = 1007;
		public const uint32 DISPID_IHTMLSTYLESHEET_ID = 1008;
		public const uint32 DISPID_IHTMLSTYLESHEET_ADDIMPORT = 1009;
		public const uint32 DISPID_IHTMLSTYLESHEET_ADDRULE = 1010;
		public const uint32 DISPID_IHTMLSTYLESHEET_REMOVEIMPORT = 1011;
		public const uint32 DISPID_IHTMLSTYLESHEET_REMOVERULE = 1012;
		public const uint32 DISPID_IHTMLSTYLESHEET_MEDIA = 1013;
		public const uint32 DISPID_IHTMLSTYLESHEET_CSSTEXT = 1014;
		public const uint32 DISPID_IHTMLSTYLESHEET_RULES = 1015;
		public const uint32 DISPID_IHTMLSTYLESHEET2_PAGES = 1016;
		public const uint32 DISPID_IHTMLSTYLESHEET2_ADDPAGERULE = 1017;
		public const uint32 DISPID_IHTMLSTYLESHEET3_IE8_HREF = 1150;
		public const uint32 DISPID_IHTMLSTYLESHEET3_ISALTERNATE = 1151;
		public const uint32 DISPID_IHTMLSTYLESHEET3_ISPREFALTERNATE = 1152;
		public const uint32 DISPID_IHTMLSTYLESHEET4_IE9_TYPE = 1153;
		public const uint32 DISPID_IHTMLSTYLESHEET4_IE9_HREF = 1154;
		public const uint32 DISPID_IHTMLSTYLESHEET4_IE9_TITLE = 1155;
		public const uint32 DISPID_IHTMLSTYLESHEET4_OWNERNODE = 1156;
		public const uint32 DISPID_IHTMLSTYLESHEET4_OWNERRULE = 1157;
		public const uint32 DISPID_IHTMLSTYLESHEET4_CSSRULES = 1158;
		public const uint32 DISPID_IHTMLSTYLESHEET4_IE9_MEDIA = 1159;
		public const uint32 DISPID_IHTMLSTYLESHEET4_INSERTRULE = 1160;
		public const uint32 DISPID_IHTMLSTYLESHEET4_DELETERULE = 1161;
		public const uint32 DISPID_IHTMLSTYLESHEETSCOLLECTION_LENGTH = 1001;
		public const int32 DISPID_IHTMLSTYLESHEETSCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLSTYLESHEETSCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLSTYLESHEETSCOLLECTION2_IE9_ITEM = 1002;
		public const uint32 DISPID_IHTMLLINKELEMENT_HREF = 1005;
		public const uint32 DISPID_IHTMLLINKELEMENT_REL = 1006;
		public const uint32 DISPID_IHTMLLINKELEMENT_REV = 1007;
		public const uint32 DISPID_IHTMLLINKELEMENT_TYPE = 1008;
		public const uint32 DISPID_IHTMLLINKELEMENT_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLLINKELEMENT_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLLINKELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLLINKELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLLINKELEMENT_STYLESHEET = 1014;
		public const uint32 DISPID_IHTMLLINKELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLLINKELEMENT_MEDIA = 1016;
		public const uint32 DISPID_IHTMLLINKELEMENT2_TARGET = 1017;
		public const uint32 DISPID_IHTMLLINKELEMENT3_CHARSET = 1018;
		public const uint32 DISPID_IHTMLLINKELEMENT3_HREFLANG = 1019;
		public const uint32 DISPID_IHTMLLINKELEMENT4_IE8_HREF = 1150;
		public const uint32 DISPID_IHTMLLINKELEMENT5_SHEET = 1020;
		public const uint32 DISPID_HTMLLINKELEMENTEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLLINKELEMENTEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLLINKELEMENTEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLLINKELEMENTEVENTS_ONERROR = 1002;
		public const uint32 DISPID_IHTMLTXTRANGE_HTMLTEXT = 1003;
		public const uint32 DISPID_IHTMLTXTRANGE_TEXT = 1004;
		public const uint32 DISPID_IHTMLTXTRANGE_PARENTELEMENT = 1006;
		public const uint32 DISPID_IHTMLTXTRANGE_DUPLICATE = 1008;
		public const uint32 DISPID_IHTMLTXTRANGE_INRANGE = 1010;
		public const uint32 DISPID_IHTMLTXTRANGE_ISEQUAL = 1011;
		public const uint32 DISPID_IHTMLTXTRANGE_SCROLLINTOVIEW = 1012;
		public const uint32 DISPID_IHTMLTXTRANGE_COLLAPSE = 1013;
		public const uint32 DISPID_IHTMLTXTRANGE_EXPAND = 1014;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVE = 1015;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVESTART = 1016;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVEEND = 1017;
		public const uint32 DISPID_IHTMLTXTRANGE_SELECT = 1024;
		public const uint32 DISPID_IHTMLTXTRANGE_PASTEHTML = 1026;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVETOELEMENTTEXT = 1001;
		public const uint32 DISPID_IHTMLTXTRANGE_SETENDPOINT = 1025;
		public const uint32 DISPID_IHTMLTXTRANGE_COMPAREENDPOINTS = 1018;
		public const uint32 DISPID_IHTMLTXTRANGE_FINDTEXT = 1019;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVETOPOINT = 1020;
		public const uint32 DISPID_IHTMLTXTRANGE_GETBOOKMARK = 1021;
		public const uint32 DISPID_IHTMLTXTRANGE_MOVETOBOOKMARK = 1009;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDSUPPORTED = 1027;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDENABLED = 1028;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDSTATE = 1029;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDINDETERM = 1030;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDTEXT = 1031;
		public const uint32 DISPID_IHTMLTXTRANGE_QUERYCOMMANDVALUE = 1032;
		public const uint32 DISPID_IHTMLTXTRANGE_EXECCOMMAND = 1033;
		public const uint32 DISPID_IHTMLTXTRANGE_EXECCOMMANDSHOWHELP = 1034;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_OFFSETTOP = 1035;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_OFFSETLEFT = 1036;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_BOUNDINGTOP = 1037;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_BOUNDINGLEFT = 1038;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_BOUNDINGWIDTH = 1039;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS_BOUNDINGHEIGHT = 1040;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS2_GETCLIENTRECTS = 1041;
		public const uint32 DISPID_IHTMLTEXTRANGEMETRICS2_GETBOUNDINGCLIENTRECT = 1042;
		public const uint32 DISPID_IHTMLTXTRANGECOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLTXTRANGECOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLTXTRANGECOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDOMRANGE_STARTCONTAINER = 1001;
		public const uint32 DISPID_IHTMLDOMRANGE_STARTOFFSET = 1002;
		public const uint32 DISPID_IHTMLDOMRANGE_ENDCONTAINER = 1003;
		public const uint32 DISPID_IHTMLDOMRANGE_ENDOFFSET = 1004;
		public const uint32 DISPID_IHTMLDOMRANGE_COLLAPSED = 1005;
		public const uint32 DISPID_IHTMLDOMRANGE_COMMONANCESTORCONTAINER = 1006;
		public const uint32 DISPID_IHTMLDOMRANGE_SETSTART = 1007;
		public const uint32 DISPID_IHTMLDOMRANGE_SETEND = 1008;
		public const uint32 DISPID_IHTMLDOMRANGE_SETSTARTBEFORE = 1009;
		public const uint32 DISPID_IHTMLDOMRANGE_SETSTARTAFTER = 1010;
		public const uint32 DISPID_IHTMLDOMRANGE_SETENDBEFORE = 1011;
		public const uint32 DISPID_IHTMLDOMRANGE_SETENDAFTER = 1012;
		public const uint32 DISPID_IHTMLDOMRANGE_COLLAPSE = 1013;
		public const uint32 DISPID_IHTMLDOMRANGE_SELECTNODE = 1014;
		public const uint32 DISPID_IHTMLDOMRANGE_SELECTNODECONTENTS = 1015;
		public const uint32 DISPID_IHTMLDOMRANGE_COMPAREBOUNDARYPOINTS = 1016;
		public const uint32 DISPID_IHTMLDOMRANGE_DELETECONTENTS = 1017;
		public const uint32 DISPID_IHTMLDOMRANGE_EXTRACTCONTENTS = 1018;
		public const uint32 DISPID_IHTMLDOMRANGE_CLONECONTENTS = 1019;
		public const uint32 DISPID_IHTMLDOMRANGE_INSERTNODE = 1020;
		public const uint32 DISPID_IHTMLDOMRANGE_SURROUNDCONTENTS = 1021;
		public const uint32 DISPID_IHTMLDOMRANGE_CLONERANGE = 1022;
		public const uint32 DISPID_IHTMLDOMRANGE_TOSTRING = 1023;
		public const uint32 DISPID_IHTMLDOMRANGE_DETACH = 1024;
		public const uint32 DISPID_IHTMLDOMRANGE_GETCLIENTRECTS = 1025;
		public const uint32 DISPID_IHTMLDOMRANGE_GETBOUNDINGCLIENTRECT = 1026;
		public const uint32 DISPID_IHTMLFORMELEMENT_ACTION = 1001;
		public const uint32 DISPID_IHTMLFORMELEMENT_DIR = 70653;
		public const uint32 DISPID_IHTMLFORMELEMENT_ENCODING = 1003;
		public const uint32 DISPID_IHTMLFORMELEMENT_METHOD = 1004;
		public const uint32 DISPID_IHTMLFORMELEMENT_ELEMENTS = 1005;
		public const uint32 DISPID_IHTMLFORMELEMENT_TARGET = 1006;
		public const uint32 DISPID_IHTMLFORMELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLFORMELEMENT_ONSUBMIT = 71547;
		public const uint32 DISPID_IHTMLFORMELEMENT_ONRESET = 71548;
		public const uint32 DISPID_IHTMLFORMELEMENT_SUBMIT = 1009;
		public const uint32 DISPID_IHTMLFORMELEMENT_RESET = 1010;
		public const uint32 DISPID_IHTMLFORMELEMENT_LENGTH = 1500;
		public const int32 DISPID_IHTMLFORMELEMENT__NEWENUM = -4;
		public const uint32 DISPID_IHTMLFORMELEMENT_ITEM = 0;
		public const uint32 DISPID_IHTMLFORMELEMENT_TAGS = 1502;
		public const uint32 DISPID_IHTMLFORMELEMENT2_ACCEPTCHARSET = 1011;
		public const uint32 DISPID_IHTMLFORMELEMENT2_URNS = 1505;
		public const uint32 DISPID_IHTMLFORMELEMENT3_NAMEDITEM = 1506;
		public const uint32 DISPID_IHTMLSUBMITDATA_APPENDNAMEVALUEPAIR = 1012;
		public const uint32 DISPID_IHTMLSUBMITDATA_APPENDNAMEFILEPAIR = 1013;
		public const uint32 DISPID_IHTMLSUBMITDATA_APPENDITEMSEPARATOR = 1014;
		public const uint32 DISPID_IHTMLFORMELEMENT4_IE8_ACTION = 1150;
		public const uint32 DISPID_HTMLFORMELEMENTEVENTS2_ONSUBMIT = 1007;
		public const uint32 DISPID_HTMLFORMELEMENTEVENTS2_ONRESET = 1015;
		public const uint32 DISPID_HTMLFORMELEMENTEVENTS_ONSUBMIT = 1007;
		public const uint32 DISPID_HTMLFORMELEMENTEVENTS_ONRESET = 1015;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_TABINDEX = 65551;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_FOCUS = 67536;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_ACCESSKEY = 67541;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_ONRESIZE = 71572;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_BLUR = 67538;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_ADDFILTER = 67553;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_REMOVEFILTER = 67554;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_CLIENTHEIGHT = 67555;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_CLIENTWIDTH = 67556;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_CLIENTTOP = 67557;
		public const uint32 DISPID_IHTMLCONTROLELEMENT_CLIENTLEFT = 67558;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_CREATECONTROLRANGE = 1001;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_SCROLLHEIGHT = 1002;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_SCROLLWIDTH = 1003;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_SCROLLTOP = 1004;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_SCROLLLEFT = 1005;
		public const uint32 DISPID_IHTMLTEXTCONTAINER_ONSCROLL = 71567;
		public const uint32 DISPID_HTMLTEXTCONTAINEREVENTS2_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLTEXTCONTAINEREVENTS2_ONSELECT = 1006;
		public const uint32 DISPID_HTMLTEXTCONTAINEREVENTS_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLTEXTCONTAINEREVENTS_ONSELECT = 1006;
		public const uint32 DISPID_IHTMLCONTROLRANGE_SELECT = 1002;
		public const uint32 DISPID_IHTMLCONTROLRANGE_ADD = 1003;
		public const uint32 DISPID_IHTMLCONTROLRANGE_REMOVE = 1004;
		public const uint32 DISPID_IHTMLCONTROLRANGE_ITEM = 0;
		public const uint32 DISPID_IHTMLCONTROLRANGE_SCROLLINTOVIEW = 1006;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDSUPPORTED = 1007;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDENABLED = 1008;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDSTATE = 1009;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDINDETERM = 1010;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDTEXT = 1011;
		public const uint32 DISPID_IHTMLCONTROLRANGE_QUERYCOMMANDVALUE = 1012;
		public const uint32 DISPID_IHTMLCONTROLRANGE_EXECCOMMAND = 1013;
		public const uint32 DISPID_IHTMLCONTROLRANGE_EXECCOMMANDSHOWHELP = 1014;
		public const uint32 DISPID_IHTMLCONTROLRANGE_COMMONPARENTELEMENT = 1015;
		public const uint32 DISPID_IHTMLCONTROLRANGE_LENGTH = 1005;
		public const uint32 DISPID_IHTMLCONTROLRANGE2_ADDELEMENT = 1016;
		public const uint32 DISPID_IHTMLIMGELEMENT_ISMAP = 2002;
		public const uint32 DISPID_IHTMLIMGELEMENT_USEMAP = 2008;
		public const uint32 DISPID_IHTMLIMGELEMENT_MIMETYPE = 2010;
		public const uint32 DISPID_IHTMLIMGELEMENT_FILESIZE = 2011;
		public const uint32 DISPID_IHTMLIMGELEMENT_FILECREATEDDATE = 2012;
		public const uint32 DISPID_IHTMLIMGELEMENT_FILEMODIFIEDDATE = 2013;
		public const uint32 DISPID_IHTMLIMGELEMENT_FILEUPDATEDDATE = 2014;
		public const uint32 DISPID_IHTMLIMGELEMENT_PROTOCOL = 2015;
		public const uint32 DISPID_IHTMLIMGELEMENT_HREF = 2016;
		public const uint32 DISPID_IHTMLIMGELEMENT_NAMEPROP = 2017;
		public const uint32 DISPID_IHTMLIMGELEMENT_BORDER = 1004;
		public const uint32 DISPID_IHTMLIMGELEMENT_VSPACE = 1005;
		public const uint32 DISPID_IHTMLIMGELEMENT_HSPACE = 1006;
		public const uint32 DISPID_IHTMLIMGELEMENT_ALT = 1002;
		public const uint32 DISPID_IHTMLIMGELEMENT_SRC = 1003;
		public const uint32 DISPID_IHTMLIMGELEMENT_LOWSRC = 1007;
		public const uint32 DISPID_IHTMLIMGELEMENT_VRML = 1008;
		public const uint32 DISPID_IHTMLIMGELEMENT_DYNSRC = 1009;
		public const uint32 DISPID_IHTMLIMGELEMENT_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLIMGELEMENT_COMPLETE = 1010;
		public const uint32 DISPID_IHTMLIMGELEMENT_LOOP = 1011;
		public const uint32 DISPID_IHTMLIMGELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLIMGELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLIMGELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLIMGELEMENT_ONABORT = 71564;
		public const uint32 DISPID_IHTMLIMGELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLIMGELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLIMGELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLIMGELEMENT_START = 1013;
		public const uint32 DISPID_IHTMLIMGELEMENT2_LONGDESC = 2019;
		public const uint32 DISPID_IHTMLIMGELEMENT3_IE8_LONGDESC = 1151;
		public const uint32 DISPID_IHTMLIMGELEMENT3_IE8_VRML = 1152;
		public const uint32 DISPID_IHTMLIMGELEMENT3_IE8_LOWSRC = 1153;
		public const uint32 DISPID_IHTMLIMGELEMENT3_IE8_DYNSRC = 1154;
		public const uint32 DISPID_IHTMLIMGELEMENT4_NATURALWIDTH = 1155;
		public const uint32 DISPID_IHTMLIMGELEMENT4_NATURALHEIGHT = 1156;
		public const uint32 DISPID_IHTMLMSIMGELEMENT_MSPLAYTODISABLED = 1157;
		public const uint32 DISPID_IHTMLMSIMGELEMENT_MSPLAYTOPRIMARY = 1158;
		public const uint32 DISPID_IHTMLIMAGEELEMENTFACTORY_CREATE = 0;
		public const uint32 DISPID_HTMLIMGEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLIMGEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLIMGEVENTS2_ONABORT = 1000;
		public const uint32 DISPID_HTMLIMGEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLIMGEVENTS_ONERROR = 1002;
		public const uint32 DISPID_HTMLIMGEVENTS_ONABORT = 1000;
		public const uint32 DISPID_IHTMLBODYELEMENT_BACKGROUND = 70537;
		public const uint32 DISPID_IHTMLBODYELEMENT_BGPROPERTIES = 70581;
		public const uint32 DISPID_IHTMLBODYELEMENT_LEFTMARGIN = 70576;
		public const uint32 DISPID_IHTMLBODYELEMENT_TOPMARGIN = 70573;
		public const uint32 DISPID_IHTMLBODYELEMENT_RIGHTMARGIN = 70574;
		public const uint32 DISPID_IHTMLBODYELEMENT_BOTTOMMARGIN = 70575;
		public const uint32 DISPID_IHTMLBODYELEMENT_NOWRAP = 70541;
		public const int32 DISPID_IHTMLBODYELEMENT_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLBODYELEMENT_TEXT = 70538;
		public const uint32 DISPID_IHTMLBODYELEMENT_LINK = 2010;
		public const uint32 DISPID_IHTMLBODYELEMENT_VLINK = 2012;
		public const uint32 DISPID_IHTMLBODYELEMENT_ALINK = 2011;
		public const uint32 DISPID_IHTMLBODYELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLBODYELEMENT_ONUNLOAD = 71569;
		public const uint32 DISPID_IHTMLBODYELEMENT_SCROLL = 70615;
		public const uint32 DISPID_IHTMLBODYELEMENT_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLBODYELEMENT_ONBEFOREUNLOAD = 71575;
		public const uint32 DISPID_IHTMLBODYELEMENT_CREATETEXTRANGE = 2013;
		public const uint32 DISPID_IHTMLBODYELEMENT2_ONBEFOREPRINT = 71602;
		public const uint32 DISPID_IHTMLBODYELEMENT2_ONAFTERPRINT = 71603;
		public const uint32 DISPID_IHTMLBODYELEMENT3_IE8_BACKGROUND = 1150;
		public const uint32 DISPID_IHTMLBODYELEMENT3_ONONLINE = 71643;
		public const uint32 DISPID_IHTMLBODYELEMENT3_ONOFFLINE = 71644;
		public const uint32 DISPID_IHTMLBODYELEMENT3_ONHASHCHANGE = 71645;
		public const uint32 DISPID_IHTMLBODYELEMENT4_ONMESSAGE = 71646;
		public const uint32 DISPID_IHTMLBODYELEMENT4_ONSTORAGE = 71636;
		public const uint32 DISPID_IHTMLBODYELEMENT5_ONPOPSTATE = 71728;
		public const uint32 DISPID_IHTMLFONTELEMENT_COLOR = 70538;
		public const uint32 DISPID_IHTMLFONTELEMENT_FACE = 70554;
		public const uint32 DISPID_IHTMLFONTELEMENT_SIZE = 70555;
		public const uint32 DISPID_IHTMLANCHORELEMENT_HREF = 0;
		public const uint32 DISPID_IHTMLANCHORELEMENT_TARGET = 1003;
		public const uint32 DISPID_IHTMLANCHORELEMENT_REL = 1005;
		public const uint32 DISPID_IHTMLANCHORELEMENT_REV = 1006;
		public const uint32 DISPID_IHTMLANCHORELEMENT_URN = 1007;
		public const uint32 DISPID_IHTMLANCHORELEMENT_METHODS = 1008;
		public const uint32 DISPID_IHTMLANCHORELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLANCHORELEMENT_HOST = 1012;
		public const uint32 DISPID_IHTMLANCHORELEMENT_HOSTNAME = 1013;
		public const uint32 DISPID_IHTMLANCHORELEMENT_PATHNAME = 1014;
		public const uint32 DISPID_IHTMLANCHORELEMENT_PORT = 1015;
		public const uint32 DISPID_IHTMLANCHORELEMENT_PROTOCOL = 1016;
		public const uint32 DISPID_IHTMLANCHORELEMENT_SEARCH = 1017;
		public const uint32 DISPID_IHTMLANCHORELEMENT_HASH = 1018;
		public const uint32 DISPID_IHTMLANCHORELEMENT_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLANCHORELEMENT_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLANCHORELEMENT_ACCESSKEY = 67541;
		public const uint32 DISPID_IHTMLANCHORELEMENT_PROTOCOLLONG = 1031;
		public const uint32 DISPID_IHTMLANCHORELEMENT_MIMETYPE = 1030;
		public const uint32 DISPID_IHTMLANCHORELEMENT_NAMEPROP = 1032;
		public const uint32 DISPID_IHTMLANCHORELEMENT_TABINDEX = 65551;
		public const uint32 DISPID_IHTMLANCHORELEMENT_FOCUS = 67536;
		public const uint32 DISPID_IHTMLANCHORELEMENT_BLUR = 67538;
		public const uint32 DISPID_IHTMLANCHORELEMENT2_CHARSET = 1023;
		public const uint32 DISPID_IHTMLANCHORELEMENT2_COORDS = 1024;
		public const uint32 DISPID_IHTMLANCHORELEMENT2_HREFLANG = 1025;
		public const uint32 DISPID_IHTMLANCHORELEMENT2_SHAPE = 1026;
		public const uint32 DISPID_IHTMLANCHORELEMENT2_TYPE = 1027;
		public const uint32 DISPID_IHTMLANCHORELEMENT3_IE8_SHAPE = 1151;
		public const uint32 DISPID_IHTMLANCHORELEMENT3_IE8_COORDS = 1152;
		public const uint32 DISPID_IHTMLANCHORELEMENT3_IE8_HREF = 1153;
		public const uint32 DISPID_IHTMLLABELELEMENT_HTMLFOR = 1000;
		public const uint32 DISPID_IHTMLLABELELEMENT_ACCESSKEY = 67541;
		public const uint32 DISPID_IHTMLLABELELEMENT2_FORM = 1002;
		public const uint32 DISPID_IHTMLLISTELEMENT2_COMPACT = 1001;
		public const uint32 DISPID_IHTMLULISTELEMENT_COMPACT = 1001;
		public const uint32 DISPID_IHTMLULISTELEMENT_TYPE = 70553;
		public const uint32 DISPID_IHTMLOLISTELEMENT_COMPACT = 1001;
		public const uint32 DISPID_IHTMLOLISTELEMENT_START = 1003;
		public const uint32 DISPID_IHTMLOLISTELEMENT_TYPE = 70553;
		public const uint32 DISPID_IHTMLLIELEMENT_TYPE = 70553;
		public const uint32 DISPID_IHTMLLIELEMENT_VALUE = 1001;
		public const uint32 DISPID_IHTMLBLOCKELEMENT_CLEAR = 70552;
		public const uint32 DISPID_IHTMLBLOCKELEMENT2_CITE = 1001;
		public const uint32 DISPID_IHTMLBLOCKELEMENT2_WIDTH = 1002;
		public const uint32 DISPID_IHTMLBLOCKELEMENT3_IE8_CITE = 1150;
		public const uint32 DISPID_IHTMLDIVELEMENT_ALIGN = 65608;
		public const uint32 DISPID_IHTMLDIVELEMENT_NOWRAP = 70541;
		public const uint32 DISPID_IHTMLDDELEMENT_NOWRAP = 70541;
		public const uint32 DISPID_IHTMLDTELEMENT_NOWRAP = 70541;
		public const uint32 DISPID_IHTMLBRELEMENT_CLEAR = 70552;
		public const uint32 DISPID_IHTMLDLISTELEMENT_COMPACT = 1001;
		public const uint32 DISPID_IHTMLHRELEMENT_ALIGN = 65608;
		public const uint32 DISPID_IHTMLHRELEMENT_COLOR = 70538;
		public const uint32 DISPID_IHTMLHRELEMENT_NOSHADE = 1001;
		public const uint32 DISPID_IHTMLHRELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLHRELEMENT_SIZE = 65542;
		public const uint32 DISPID_IHTMLPARAELEMENT_ALIGN = 65608;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION_TOSTRING = 1501;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLELEMENTCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION_TAGS = 1502;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION2_URNS = 1505;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION3_NAMEDITEM = 1506;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION4_IE8_LENGTH = 1150;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION4_IE8_ITEM = 1152;
		public const uint32 DISPID_IHTMLELEMENTCOLLECTION4_IE8_NAMEDITEM = 1153;
		public const uint32 DISPID_IHTMLHEADERELEMENT_ALIGN = 65608;
		public const uint32 DISPID_IHTMLSELECTELEMENT_SIZE = 1002;
		public const uint32 DISPID_IHTMLSELECTELEMENT_MULTIPLE = 1003;
		public const uint32 DISPID_IHTMLSELECTELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLSELECTELEMENT_OPTIONS = 1005;
		public const uint32 DISPID_IHTMLSELECTELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLSELECTELEMENT_SELECTEDINDEX = 1010;
		public const uint32 DISPID_IHTMLSELECTELEMENT_TYPE = 1012;
		public const uint32 DISPID_IHTMLSELECTELEMENT_VALUE = 1011;
		public const uint32 DISPID_IHTMLSELECTELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLSELECTELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLSELECTELEMENT_ADD = 1503;
		public const uint32 DISPID_IHTMLSELECTELEMENT_REMOVE = 1504;
		public const uint32 DISPID_IHTMLSELECTELEMENT_LENGTH = 1500;
		public const int32 DISPID_IHTMLSELECTELEMENT__NEWENUM = -4;
		public const uint32 DISPID_IHTMLSELECTELEMENT_ITEM = 0;
		public const uint32 DISPID_IHTMLSELECTELEMENT_TAGS = 1502;
		public const uint32 DISPID_IHTMLSELECTELEMENT2_URNS = 1505;
		public const uint32 DISPID_IHTMLSELECTELEMENT4_NAMEDITEM = 1506;
		public const uint32 DISPID_IHTMLSELECTELEMENT5_IE8_ADD = 1150;
		public const uint32 DISPID_IHTMLSELECTELEMENT6_IE9_ADD = 1151;
		public const uint32 DISPID_IHTMLSELECTELEMENT6_IE9_VALUE = 1152;
		public const uint32 DISPID_HTMLSELECTELEMENTEVENTS2_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLSELECTELEMENTEVENTS_ONCHANGE = 1001;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT_CREATERANGE = 1001;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT_EMPTY = 1002;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT_CLEAR = 1003;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT_TYPE = 1004;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT2_CREATERANGECOLLECTION = 1005;
		public const uint32 DISPID_IHTMLSELECTIONOBJECT2_TYPEDETAIL = 1006;
		public const uint32 DISPID_IHTMLSELECTION_ANCHORNODE = 1001;
		public const uint32 DISPID_IHTMLSELECTION_ANCHOROFFSET = 1002;
		public const uint32 DISPID_IHTMLSELECTION_FOCUSNODE = 1003;
		public const uint32 DISPID_IHTMLSELECTION_FOCUSOFFSET = 1004;
		public const uint32 DISPID_IHTMLSELECTION_ISCOLLAPSED = 1005;
		public const uint32 DISPID_IHTMLSELECTION_COLLAPSE = 1006;
		public const uint32 DISPID_IHTMLSELECTION_COLLAPSETOSTART = 1007;
		public const uint32 DISPID_IHTMLSELECTION_COLLAPSETOEND = 1008;
		public const uint32 DISPID_IHTMLSELECTION_SELECTALLCHILDREN = 1009;
		public const uint32 DISPID_IHTMLSELECTION_DELETEFROMDOCUMENT = 1010;
		public const uint32 DISPID_IHTMLSELECTION_RANGECOUNT = 1011;
		public const uint32 DISPID_IHTMLSELECTION_GETRANGEAT = 1012;
		public const uint32 DISPID_IHTMLSELECTION_ADDRANGE = 1013;
		public const uint32 DISPID_IHTMLSELECTION_REMOVERANGE = 1014;
		public const uint32 DISPID_IHTMLSELECTION_REMOVEALLRANGES = 1015;
		public const uint32 DISPID_IHTMLSELECTION_TOSTRING = 1016;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_SELECTED = 1001;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_VALUE = 1002;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_DEFAULTSELECTED = 1003;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_INDEX = 1005;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_TEXT = 1004;
		public const uint32 DISPID_IHTMLOPTIONELEMENT_FORM = 1006;
		public const uint32 DISPID_IHTMLOPTIONELEMENT3_LABEL = 1007;
		public const uint32 DISPID_IHTMLOPTIONELEMENT4_IE9_VALUE = 1008;
		public const uint32 DISPID_IHTMLOPTIONELEMENTFACTORY_CREATE = 0;
		public const uint32 DISPID_IHTMLINPUTELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLINPUTELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTELEMENT_STATUS = 2001;
		public const uint32 DISPID_IHTMLINPUTELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTELEMENT_SIZE = 2002;
		public const uint32 DISPID_IHTMLINPUTELEMENT_MAXLENGTH = 2003;
		public const uint32 DISPID_IHTMLINPUTELEMENT_SELECT = 2004;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLINPUTELEMENT_DEFAULTVALUE = 70619;
		public const uint32 DISPID_IHTMLINPUTELEMENT_READONLY = 2005;
		public const uint32 DISPID_IHTMLINPUTELEMENT_CREATETEXTRANGE = 2006;
		public const uint32 DISPID_IHTMLINPUTELEMENT_INDETERMINATE = 2007;
		public const uint32 DISPID_IHTMLINPUTELEMENT_DEFAULTCHECKED = 2008;
		public const uint32 DISPID_IHTMLINPUTELEMENT_CHECKED = 2009;
		public const uint32 DISPID_IHTMLINPUTELEMENT_BORDER = 2012;
		public const uint32 DISPID_IHTMLINPUTELEMENT_VSPACE = 2013;
		public const uint32 DISPID_IHTMLINPUTELEMENT_HSPACE = 2014;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ALT = 2010;
		public const uint32 DISPID_IHTMLINPUTELEMENT_SRC = 2011;
		public const uint32 DISPID_IHTMLINPUTELEMENT_LOWSRC = 2015;
		public const uint32 DISPID_IHTMLINPUTELEMENT_VRML = 2016;
		public const uint32 DISPID_IHTMLINPUTELEMENT_DYNSRC = 2017;
		public const uint32 DISPID_IHTMLINPUTELEMENT_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLINPUTELEMENT_COMPLETE = 2018;
		public const uint32 DISPID_IHTMLINPUTELEMENT_LOOP = 2019;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLINPUTELEMENT_ONABORT = 71564;
		public const uint32 DISPID_IHTMLINPUTELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLINPUTELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLINPUTELEMENT_START = 2020;
		public const uint32 DISPID_IHTMLINPUTELEMENT2_ACCEPT = 2022;
		public const uint32 DISPID_IHTMLINPUTELEMENT2_USEMAP = 2023;
		public const uint32 DISPID_IHTMLINPUTELEMENT3_IE8_SRC = 1150;
		public const uint32 DISPID_IHTMLINPUTELEMENT3_IE8_LOWSRC = 1151;
		public const uint32 DISPID_IHTMLINPUTELEMENT3_IE8_VRML = 1152;
		public const uint32 DISPID_IHTMLINPUTELEMENT3_IE8_DYNSRC = 1153;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_STATUS = 2021;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTBUTTONELEMENT_CREATETEXTRANGE = 2006;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_STATUS = 2021;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTHIDDENELEMENT_CREATETEXTRANGE = 2006;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_STATUS = 2021;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_DEFAULTVALUE = 70619;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_SIZE = 2002;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_MAXLENGTH = 2003;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_SELECT = 2004;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_READONLY = 2005;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT_CREATETEXTRANGE = 2006;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT2_SELECTIONSTART = 2025;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT2_SELECTIONEND = 2026;
		public const uint32 DISPID_IHTMLINPUTTEXTELEMENT2_SETSELECTIONRANGE = 2027;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_STATUS = 2021;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_SIZE = 2002;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_MAXLENGTH = 2003;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_SELECT = 2004;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLINPUTFILEELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_CHECKED = 2009;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_DEFAULTCHECKED = 2008;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_STATUS = 2001;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_INDETERMINATE = 2007;
		public const uint32 DISPID_IHTMLOPTIONBUTTONELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLINPUTIMAGE_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTIMAGE_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTIMAGE_BORDER = 2012;
		public const uint32 DISPID_IHTMLINPUTIMAGE_VSPACE = 2013;
		public const uint32 DISPID_IHTMLINPUTIMAGE_HSPACE = 2014;
		public const uint32 DISPID_IHTMLINPUTIMAGE_ALT = 2010;
		public const uint32 DISPID_IHTMLINPUTIMAGE_SRC = 2011;
		public const uint32 DISPID_IHTMLINPUTIMAGE_LOWSRC = 2015;
		public const uint32 DISPID_IHTMLINPUTIMAGE_VRML = 2016;
		public const uint32 DISPID_IHTMLINPUTIMAGE_DYNSRC = 2017;
		public const uint32 DISPID_IHTMLINPUTIMAGE_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLINPUTIMAGE_COMPLETE = 2018;
		public const uint32 DISPID_IHTMLINPUTIMAGE_LOOP = 2019;
		public const uint32 DISPID_IHTMLINPUTIMAGE_ALIGN = 65609;
		public const uint32 DISPID_IHTMLINPUTIMAGE_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLINPUTIMAGE_ONERROR = 71565;
		public const uint32 DISPID_IHTMLINPUTIMAGE_ONABORT = 71564;
		public const uint32 DISPID_IHTMLINPUTIMAGE_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTIMAGE_WIDTH = 65541;
		public const uint32 DISPID_IHTMLINPUTIMAGE_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLINPUTIMAGE_START = 2020;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_ALT = 2010;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_MIN = 2028;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_MAX = 2029;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_STEP = 2030;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_VALUEASNUMBER = 2031;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_STEPUP = 2033;
		public const uint32 DISPID_IHTMLINPUTRANGEELEMENT_STEPDOWN = 2032;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS2_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS2_ONSELECT = 1006;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS2_ONABORT = 1000;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS2_ONABORT = 1000;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS_ONCHANGE = 1001;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS_ONSELECT = 1006;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS_ONERROR = 1002;
		public const uint32 DISPID_HTMLINPUTTEXTELEMENTEVENTS_ONABORT = 1000;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS_ONERROR = 1002;
		public const uint32 DISPID_HTMLINPUTIMAGEEVENTS_ONABORT = 1000;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_STATUS = 2001;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_DEFAULTVALUE = 70619;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_SELECT = 7005;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_READONLY = 7004;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_ROWS = 7001;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_COLS = 7002;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_WRAP = 7003;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT_CREATETEXTRANGE = 7006;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT2_SELECTIONSTART = 7007;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT2_SELECTIONEND = 7008;
		public const uint32 DISPID_IHTMLTEXTAREAELEMENT2_SETSELECTIONRANGE = 7009;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_TYPE = 2000;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_VALUE = 70637;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_STATUS = 8001;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLBUTTONELEMENT_CREATETEXTRANGE = 8002;
		public const uint32 DISPID_IHTMLBUTTONELEMENT2_IE9_TYPE = 8003;
		public const int32 DISPID_IHTMLMARQUEEELEMENT_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_SCROLLDELAY = 6000;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_DIRECTION = 6001;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_BEHAVIOR = 6002;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_SCROLLAMOUNT = 6003;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_LOOP = 6004;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_VSPACE = 6005;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_HSPACE = 6006;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_ONFINISH = 71562;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_ONSTART = 71563;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_ONBOUNCE = 71556;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_TRUESPEED = 6007;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_START = 6010;
		public const uint32 DISPID_IHTMLMARQUEEELEMENT_STOP = 6011;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS2_ONBOUNCE = 1009;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS2_ONFINISH = 1010;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS2_ONSTART = 1011;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS_ONBOUNCE = 1009;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS_ONFINISH = 1010;
		public const uint32 DISPID_HTMLMARQUEEELEMENTEVENTS_ONSTART = 1011;
		public const uint32 DISPID_IHTMLHTMLELEMENT_VERSION = 1001;
		public const uint32 DISPID_IHTMLHEADELEMENT_PROFILE = 1001;
		public const uint32 DISPID_IHTMLHEADELEMENT2_IE8_PROFILE = 1150;
		public const uint32 DISPID_IHTMLTITLEELEMENT_TEXT = 70637;
		public const uint32 DISPID_IHTMLMETAELEMENT_HTTPEQUIV = 1001;
		public const uint32 DISPID_IHTMLMETAELEMENT_CONTENT = 1002;
		public const uint32 DISPID_IHTMLMETAELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLMETAELEMENT_URL = 1003;
		public const uint32 DISPID_IHTMLMETAELEMENT_CHARSET = 1013;
		public const uint32 DISPID_IHTMLMETAELEMENT2_SCHEME = 1020;
		public const uint32 DISPID_IHTMLMETAELEMENT3_IE8_URL = 1150;
		public const uint32 DISPID_IHTMLBASEELEMENT_HREF = 1003;
		public const uint32 DISPID_IHTMLBASEELEMENT_TARGET = 1004;
		public const uint32 DISPID_IHTMLBASEELEMENT2_IE8_HREF = 1150;
		public const uint32 DISPID_IHTMLISINDEXELEMENT_PROMPT = 1010;
		public const uint32 DISPID_IHTMLISINDEXELEMENT_ACTION = 1011;
		public const uint32 DISPID_IHTMLISINDEXELEMENT2_FORM = 1012;
		public const uint32 DISPID_IHTMLNEXTIDELEMENT_N = 1012;
		public const uint32 DISPID_IHTMLBASEFONTELEMENT_COLOR = 70538;
		public const uint32 DISPID_IHTMLBASEFONTELEMENT_FACE = 70554;
		public const uint32 DISPID_IHTMLBASEFONTELEMENT_SIZE = 70562;
		public const uint32 DISPID_IOMHISTORY_LENGTH = 1;
		public const uint32 DISPID_IOMHISTORY_BACK = 2;
		public const uint32 DISPID_IOMHISTORY_FORWARD = 3;
		public const uint32 DISPID_IOMHISTORY_GO = 4;
		public const uint32 DISPID_IHTMLOPSPROFILE_ADDREQUEST = 1;
		public const uint32 DISPID_IHTMLOPSPROFILE_CLEARREQUEST = 2;
		public const uint32 DISPID_IHTMLOPSPROFILE_DOREQUEST = 3;
		public const uint32 DISPID_IHTMLOPSPROFILE_GETATTRIBUTE = 4;
		public const uint32 DISPID_IHTMLOPSPROFILE_SETATTRIBUTE = 5;
		public const uint32 DISPID_IHTMLOPSPROFILE_COMMITCHANGES = 6;
		public const uint32 DISPID_IHTMLOPSPROFILE_ADDREADREQUEST = 7;
		public const uint32 DISPID_IHTMLOPSPROFILE_DOREADREQUEST = 8;
		public const uint32 DISPID_IHTMLOPSPROFILE_DOWRITEREQUEST = 9;
		public const uint32 DISPID_IOMNAVIGATOR_APPCODENAME = 1;
		public const uint32 DISPID_IOMNAVIGATOR_APPNAME = 2;
		public const uint32 DISPID_IOMNAVIGATOR_APPVERSION = 3;
		public const uint32 DISPID_IOMNAVIGATOR_USERAGENT = 4;
		public const uint32 DISPID_IOMNAVIGATOR_JAVAENABLED = 5;
		public const uint32 DISPID_IOMNAVIGATOR_TAINTENABLED = 6;
		public const uint32 DISPID_IOMNAVIGATOR_MIMETYPES = 7;
		public const uint32 DISPID_IOMNAVIGATOR_PLUGINS = 8;
		public const uint32 DISPID_IOMNAVIGATOR_COOKIEENABLED = 9;
		public const uint32 DISPID_IOMNAVIGATOR_OPSPROFILE = 10;
		public const uint32 DISPID_IOMNAVIGATOR_TOSTRING = 11;
		public const uint32 DISPID_IOMNAVIGATOR_CPUCLASS = 12;
		public const uint32 DISPID_IOMNAVIGATOR_SYSTEMLANGUAGE = 13;
		public const uint32 DISPID_IOMNAVIGATOR_BROWSERLANGUAGE = 14;
		public const uint32 DISPID_IOMNAVIGATOR_USERLANGUAGE = 15;
		public const uint32 DISPID_IOMNAVIGATOR_PLATFORM = 16;
		public const uint32 DISPID_IOMNAVIGATOR_APPMINORVERSION = 17;
		public const uint32 DISPID_IOMNAVIGATOR_CONNECTIONSPEED = 18;
		public const uint32 DISPID_IOMNAVIGATOR_ONLINE = 19;
		public const uint32 DISPID_IOMNAVIGATOR_USERPROFILE = 20;
		public const uint32 DISPID_INAVIGATORGEOLOCATION_GEOLOCATION = 21;
		public const uint32 DISPID_INAVIGATORDONOTTRACK_MSDONOTTRACK = 22;
		public const uint32 DISPID_IHTMLLOCATION_HREF = 0;
		public const uint32 DISPID_IHTMLLOCATION_PROTOCOL = 1;
		public const uint32 DISPID_IHTMLLOCATION_HOST = 2;
		public const uint32 DISPID_IHTMLLOCATION_HOSTNAME = 3;
		public const uint32 DISPID_IHTMLLOCATION_PORT = 4;
		public const uint32 DISPID_IHTMLLOCATION_PATHNAME = 5;
		public const uint32 DISPID_IHTMLLOCATION_SEARCH = 6;
		public const uint32 DISPID_IHTMLLOCATION_HASH = 7;
		public const uint32 DISPID_IHTMLLOCATION_RELOAD = 8;
		public const uint32 DISPID_IHTMLLOCATION_REPLACE = 9;
		public const uint32 DISPID_IHTMLLOCATION_ASSIGN = 10;
		public const uint32 DISPID_IHTMLLOCATION_TOSTRING = 11;
		public const uint32 DISPID_IHTMLMIMETYPESCOLLECTION_LENGTH = 1;
		public const uint32 DISPID_IHTMLPLUGINSCOLLECTION_LENGTH = 1;
		public const uint32 DISPID_IHTMLPLUGINSCOLLECTION_REFRESH = 2;
		public const uint32 DISPID_IHTMLBOOKMARKCOLLECTION_LENGTH = 1501;
		public const int32 DISPID_IHTMLBOOKMARKCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLBOOKMARKCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDATATRANSFER_SETDATA = 1001;
		public const uint32 DISPID_IHTMLDATATRANSFER_GETDATA = 1002;
		public const uint32 DISPID_IHTMLDATATRANSFER_CLEARDATA = 1003;
		public const uint32 DISPID_IHTMLDATATRANSFER_DROPEFFECT = 1004;
		public const uint32 DISPID_IHTMLDATATRANSFER_EFFECTALLOWED = 1005;
		public const uint32 DISPID_IHTMLEVENTOBJ_SRCELEMENT = 1001;
		public const uint32 DISPID_IHTMLEVENTOBJ_ALTKEY = 1002;
		public const uint32 DISPID_IHTMLEVENTOBJ_CTRLKEY = 1003;
		public const uint32 DISPID_IHTMLEVENTOBJ_SHIFTKEY = 1004;
		public const uint32 DISPID_IHTMLEVENTOBJ_RETURNVALUE = 1007;
		public const uint32 DISPID_IHTMLEVENTOBJ_CANCELBUBBLE = 1008;
		public const uint32 DISPID_IHTMLEVENTOBJ_FROMELEMENT = 1009;
		public const uint32 DISPID_IHTMLEVENTOBJ_TOELEMENT = 1010;
		public const uint32 DISPID_IHTMLEVENTOBJ_KEYCODE = 1011;
		public const uint32 DISPID_IHTMLEVENTOBJ_BUTTON = 1012;
		public const uint32 DISPID_IHTMLEVENTOBJ_TYPE = 1013;
		public const uint32 DISPID_IHTMLEVENTOBJ_QUALIFIER = 1014;
		public const uint32 DISPID_IHTMLEVENTOBJ_REASON = 1015;
		public const uint32 DISPID_IHTMLEVENTOBJ_X = 1005;
		public const uint32 DISPID_IHTMLEVENTOBJ_Y = 1006;
		public const uint32 DISPID_IHTMLEVENTOBJ_CLIENTX = 1020;
		public const uint32 DISPID_IHTMLEVENTOBJ_CLIENTY = 1021;
		public const uint32 DISPID_IHTMLEVENTOBJ_OFFSETX = 1022;
		public const uint32 DISPID_IHTMLEVENTOBJ_OFFSETY = 1023;
		public const uint32 DISPID_IHTMLEVENTOBJ_SCREENX = 1024;
		public const uint32 DISPID_IHTMLEVENTOBJ_SCREENY = 1025;
		public const uint32 DISPID_IHTMLEVENTOBJ_SRCFILTER = 1026;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SETATTRIBUTE = 66037;
		public const uint32 DISPID_IHTMLEVENTOBJ2_GETATTRIBUTE = 66038;
		public const uint32 DISPID_IHTMLEVENTOBJ2_REMOVEATTRIBUTE = 66039;
		public const uint32 DISPID_IHTMLEVENTOBJ2_PROPERTYNAME = 1027;
		public const uint32 DISPID_IHTMLEVENTOBJ2_BOOKMARKS = 1031;
		public const uint32 DISPID_IHTMLEVENTOBJ2_RECORDSET = 1032;
		public const uint32 DISPID_IHTMLEVENTOBJ2_DATAFLD = 1033;
		public const uint32 DISPID_IHTMLEVENTOBJ2_BOUNDELEMENTS = 1034;
		public const uint32 DISPID_IHTMLEVENTOBJ2_REPEAT = 1035;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SRCURN = 1036;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SRCELEMENT = 1001;
		public const uint32 DISPID_IHTMLEVENTOBJ2_ALTKEY = 1002;
		public const uint32 DISPID_IHTMLEVENTOBJ2_CTRLKEY = 1003;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SHIFTKEY = 1004;
		public const uint32 DISPID_IHTMLEVENTOBJ2_FROMELEMENT = 1009;
		public const uint32 DISPID_IHTMLEVENTOBJ2_TOELEMENT = 1010;
		public const uint32 DISPID_IHTMLEVENTOBJ2_BUTTON = 1012;
		public const uint32 DISPID_IHTMLEVENTOBJ2_TYPE = 1013;
		public const uint32 DISPID_IHTMLEVENTOBJ2_QUALIFIER = 1014;
		public const uint32 DISPID_IHTMLEVENTOBJ2_REASON = 1015;
		public const uint32 DISPID_IHTMLEVENTOBJ2_X = 1005;
		public const uint32 DISPID_IHTMLEVENTOBJ2_Y = 1006;
		public const uint32 DISPID_IHTMLEVENTOBJ2_CLIENTX = 1020;
		public const uint32 DISPID_IHTMLEVENTOBJ2_CLIENTY = 1021;
		public const uint32 DISPID_IHTMLEVENTOBJ2_OFFSETX = 1022;
		public const uint32 DISPID_IHTMLEVENTOBJ2_OFFSETY = 1023;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SCREENX = 1024;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SCREENY = 1025;
		public const uint32 DISPID_IHTMLEVENTOBJ2_SRCFILTER = 1026;
		public const uint32 DISPID_IHTMLEVENTOBJ2_DATATRANSFER = 1037;
		public const uint32 DISPID_IHTMLEVENTOBJ3_CONTENTOVERFLOW = 1038;
		public const uint32 DISPID_IHTMLEVENTOBJ3_SHIFTLEFT = 1039;
		public const uint32 DISPID_IHTMLEVENTOBJ3_ALTLEFT = 1040;
		public const uint32 DISPID_IHTMLEVENTOBJ3_CTRLLEFT = 1041;
		public const uint32 DISPID_IHTMLEVENTOBJ3_IMECOMPOSITIONCHANGE = 1042;
		public const uint32 DISPID_IHTMLEVENTOBJ3_IMENOTIFYCOMMAND = 1043;
		public const uint32 DISPID_IHTMLEVENTOBJ3_IMENOTIFYDATA = 1044;
		public const uint32 DISPID_IHTMLEVENTOBJ3_IMEREQUEST = 1046;
		public const uint32 DISPID_IHTMLEVENTOBJ3_IMEREQUESTDATA = 1047;
		public const uint32 DISPID_IHTMLEVENTOBJ3_KEYBOARDLAYOUT = 1045;
		public const uint32 DISPID_IHTMLEVENTOBJ3_BEHAVIORCOOKIE = 1048;
		public const uint32 DISPID_IHTMLEVENTOBJ3_BEHAVIORPART = 1049;
		public const uint32 DISPID_IHTMLEVENTOBJ3_NEXTPAGE = 1050;
		public const uint32 DISPID_IHTMLEVENTOBJ4_WHEELDELTA = 1051;
		public const uint32 DISPID_IHTMLEVENTOBJ5_URL = 1052;
		public const uint32 DISPID_IHTMLEVENTOBJ5_DATA = 1054;
		public const uint32 DISPID_IHTMLEVENTOBJ5_SOURCE = 1055;
		public const uint32 DISPID_IHTMLEVENTOBJ5_ORIGIN = 1053;
		public const uint32 DISPID_IHTMLEVENTOBJ5_ISSESSION = 1056;
		public const uint32 DISPID_IHTMLEVENTOBJ6_ACTIONURL = 1058;
		public const uint32 DISPID_IHTMLEVENTOBJ6_BUTTONID = 1057;
		public const uint32 DISPID_IHTMLSTYLEMEDIA_TYPE = 1001;
		public const uint32 DISPID_IHTMLSTYLEMEDIA_MATCHMEDIUM = 1002;
		public const uint32 DISPID_IHTMLFRAMESCOLLECTION2_ITEM = 0;
		public const uint32 DISPID_IHTMLFRAMESCOLLECTION2_LENGTH = 1001;
		public const uint32 DISPID_IHTMLSCREEN_COLORDEPTH = 1001;
		public const uint32 DISPID_IHTMLSCREEN_BUFFERDEPTH = 1002;
		public const uint32 DISPID_IHTMLSCREEN_WIDTH = 1003;
		public const uint32 DISPID_IHTMLSCREEN_HEIGHT = 1004;
		public const uint32 DISPID_IHTMLSCREEN_UPDATEINTERVAL = 1005;
		public const uint32 DISPID_IHTMLSCREEN_AVAILHEIGHT = 1006;
		public const uint32 DISPID_IHTMLSCREEN_AVAILWIDTH = 1007;
		public const uint32 DISPID_IHTMLSCREEN_FONTSMOOTHINGENABLED = 1008;
		public const uint32 DISPID_IHTMLSCREEN2_LOGICALXDPI = 1009;
		public const uint32 DISPID_IHTMLSCREEN2_LOGICALYDPI = 1010;
		public const uint32 DISPID_IHTMLSCREEN2_DEVICEXDPI = 1011;
		public const uint32 DISPID_IHTMLSCREEN2_DEVICEYDPI = 1012;
		public const uint32 DISPID_IHTMLSCREEN3_SYSTEMXDPI = 1013;
		public const uint32 DISPID_IHTMLSCREEN3_SYSTEMYDPI = 1014;
		public const uint32 DISPID_IHTMLSCREEN4_PIXELDEPTH = 1015;
		public const uint32 DISPID_IHTMLWINDOW2_FRAMES = 1100;
		public const uint32 DISPID_IHTMLWINDOW2_DEFAULTSTATUS = 1101;
		public const uint32 DISPID_IHTMLWINDOW2_STATUS = 1102;
		public const uint32 DISPID_IHTMLWINDOW2_SETTIMEOUT = 1172;
		public const uint32 DISPID_IHTMLWINDOW2_CLEARTIMEOUT = 1104;
		public const uint32 DISPID_IHTMLWINDOW2_ALERT = 1105;
		public const uint32 DISPID_IHTMLWINDOW2_CONFIRM = 1110;
		public const uint32 DISPID_IHTMLWINDOW2_PROMPT = 1111;
		public const uint32 DISPID_IHTMLWINDOW2_IMAGE = 1125;
		public const uint32 DISPID_IHTMLWINDOW2_LOCATION = 14;
		public const uint32 DISPID_IHTMLWINDOW2_HISTORY = 2;
		public const uint32 DISPID_IHTMLWINDOW2_CLOSE = 3;
		public const uint32 DISPID_IHTMLWINDOW2_OPENER = 4;
		public const uint32 DISPID_IHTMLWINDOW2_NAVIGATOR = 5;
		public const uint32 DISPID_IHTMLWINDOW2_NAME = 11;
		public const uint32 DISPID_IHTMLWINDOW2_PARENT = 12;
		public const uint32 DISPID_IHTMLWINDOW2_OPEN = 13;
		public const uint32 DISPID_IHTMLWINDOW2_SELF = 20;
		public const uint32 DISPID_IHTMLWINDOW2_TOP = 21;
		public const uint32 DISPID_IHTMLWINDOW2_WINDOW = 22;
		public const uint32 DISPID_IHTMLWINDOW2_NAVIGATE = 25;
		public const uint32 DISPID_IHTMLWINDOW2_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLWINDOW2_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLWINDOW2_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLWINDOW2_ONBEFOREUNLOAD = 71575;
		public const uint32 DISPID_IHTMLWINDOW2_ONUNLOAD = 71569;
		public const uint32 DISPID_IHTMLWINDOW2_ONHELP = 71549;
		public const uint32 DISPID_IHTMLWINDOW2_ONERROR = 71565;
		public const uint32 DISPID_IHTMLWINDOW2_ONRESIZE = 71572;
		public const uint32 DISPID_IHTMLWINDOW2_ONSCROLL = 71567;
		public const uint32 DISPID_IHTMLWINDOW2_DOCUMENT = 1151;
		public const uint32 DISPID_IHTMLWINDOW2_EVENT = 1152;
		public const uint32 DISPID_IHTMLWINDOW2__NEWENUM = 1153;
		public const uint32 DISPID_IHTMLWINDOW2_SHOWMODALDIALOG = 1154;
		public const uint32 DISPID_IHTMLWINDOW2_SHOWHELP = 1155;
		public const uint32 DISPID_IHTMLWINDOW2_SCREEN = 1156;
		public const uint32 DISPID_IHTMLWINDOW2_OPTION = 1157;
		public const uint32 DISPID_IHTMLWINDOW2_FOCUS = 1158;
		public const uint32 DISPID_IHTMLWINDOW2_CLOSED = 23;
		public const uint32 DISPID_IHTMLWINDOW2_BLUR = 1159;
		public const uint32 DISPID_IHTMLWINDOW2_SCROLL = 1160;
		public const uint32 DISPID_IHTMLWINDOW2_CLIENTINFORMATION = 1161;
		public const uint32 DISPID_IHTMLWINDOW2_SETINTERVAL = 1173;
		public const uint32 DISPID_IHTMLWINDOW2_CLEARINTERVAL = 1163;
		public const uint32 DISPID_IHTMLWINDOW2_OFFSCREENBUFFERING = 1164;
		public const uint32 DISPID_IHTMLWINDOW2_EXECSCRIPT = 1165;
		public const uint32 DISPID_IHTMLWINDOW2_TOSTRING = 1166;
		public const uint32 DISPID_IHTMLWINDOW2_SCROLLBY = 1167;
		public const uint32 DISPID_IHTMLWINDOW2_SCROLLTO = 1168;
		public const uint32 DISPID_IHTMLWINDOW2_MOVETO = 6;
		public const uint32 DISPID_IHTMLWINDOW2_MOVEBY = 7;
		public const uint32 DISPID_IHTMLWINDOW2_RESIZETO = 9;
		public const uint32 DISPID_IHTMLWINDOW2_RESIZEBY = 8;
		public const uint32 DISPID_IHTMLWINDOW2_EXTERNAL = 1169;
		public const uint32 DISPID_IHTMLWINDOW3_SCREENLEFT = 1170;
		public const uint32 DISPID_IHTMLWINDOW3_SCREENTOP = 1171;
		public const uint32 DISPID_IHTMLWINDOW3_ATTACHEVENT = 66043;
		public const uint32 DISPID_IHTMLWINDOW3_DETACHEVENT = 66044;
		public const uint32 DISPID_IHTMLWINDOW3_SETTIMEOUT = 1103;
		public const uint32 DISPID_IHTMLWINDOW3_SETINTERVAL = 1162;
		public const uint32 DISPID_IHTMLWINDOW3_PRINT = 1174;
		public const uint32 DISPID_IHTMLWINDOW3_ONBEFOREPRINT = 71602;
		public const uint32 DISPID_IHTMLWINDOW3_ONAFTERPRINT = 71603;
		public const uint32 DISPID_IHTMLWINDOW3_CLIPBOARDDATA = 1175;
		public const uint32 DISPID_IHTMLWINDOW3_SHOWMODELESSDIALOG = 1176;
		public const uint32 DISPID_IHTMLWINDOW4_CREATEPOPUP = 1180;
		public const uint32 DISPID_IHTMLWINDOW4_FRAMEELEMENT = 1181;
		public const uint32 DISPID_IHTMLWINDOW5_XMLHTTPREQUEST = 1190;
		public const uint32 DISPID_IHTMLWINDOW6_XDOMAINREQUEST = 1191;
		public const uint32 DISPID_IHTMLWINDOW6_SESSIONSTORAGE = 1192;
		public const uint32 DISPID_IHTMLWINDOW6_LOCALSTORAGE = 1193;
		public const uint32 DISPID_IHTMLWINDOW6_ONHASHCHANGE = 71645;
		public const uint32 DISPID_IHTMLWINDOW6_MAXCONNECTIONSPERSERVER = 1194;
		public const uint32 DISPID_IHTMLWINDOW6_POSTMESSAGE = 1196;
		public const uint32 DISPID_IHTMLWINDOW6_TOSTATICHTML = 1197;
		public const uint32 DISPID_IHTMLWINDOW6_ONMESSAGE = 71646;
		public const uint32 DISPID_IHTMLWINDOW6_MSWRITEPROFILERMARK = 1198;
		public const uint32 DISPID_IHTMLWINDOW7_GETSELECTION = 1199;
		public const uint32 DISPID_IHTMLWINDOW7_GETCOMPUTEDSTYLE = 1200;
		public const uint32 DISPID_IHTMLWINDOW7_STYLEMEDIA = 1202;
		public const uint32 DISPID_IHTMLWINDOW7_PERFORMANCE = 1203;
		public const uint32 DISPID_IHTMLWINDOW7_INNERWIDTH = 1204;
		public const uint32 DISPID_IHTMLWINDOW7_INNERHEIGHT = 1205;
		public const uint32 DISPID_IHTMLWINDOW7_PAGEXOFFSET = 1206;
		public const uint32 DISPID_IHTMLWINDOW7_PAGEYOFFSET = 1207;
		public const uint32 DISPID_IHTMLWINDOW7_SCREENX = 1208;
		public const uint32 DISPID_IHTMLWINDOW7_SCREENY = 1209;
		public const uint32 DISPID_IHTMLWINDOW7_OUTERWIDTH = 1210;
		public const uint32 DISPID_IHTMLWINDOW7_OUTERHEIGHT = 1211;
		public const uint32 DISPID_IHTMLWINDOW7_ONABORT = 71564;
		public const uint32 DISPID_IHTMLWINDOW7_ONCANPLAY = 71670;
		public const uint32 DISPID_IHTMLWINDOW7_ONCANPLAYTHROUGH = 71671;
		public const uint32 DISPID_IHTMLWINDOW7_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLWINDOW7_ONCLICK = 71544;
		public const uint32 DISPID_IHTMLWINDOW7_ONCONTEXTMENU = 71601;
		public const uint32 DISPID_IHTMLWINDOW7_ONDBLCLICK = 71545;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAG = 71585;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAGEND = 71586;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAGENTER = 71587;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAGLEAVE = 71589;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAGOVER = 71588;
		public const uint32 DISPID_IHTMLWINDOW7_ONDRAGSTART = 71571;
		public const uint32 DISPID_IHTMLWINDOW7_ONDROP = 71590;
		public const uint32 DISPID_IHTMLWINDOW7_ONDURATIONCHANGE = 71672;
		public const uint32 DISPID_IHTMLWINDOW7_ONFOCUSIN = 71627;
		public const uint32 DISPID_IHTMLWINDOW7_ONFOCUSOUT = 71628;
		public const uint32 DISPID_IHTMLWINDOW7_ONINPUT = 71663;
		public const uint32 DISPID_IHTMLWINDOW7_ONEMPTIED = 71673;
		public const uint32 DISPID_IHTMLWINDOW7_ONENDED = 71674;
		public const uint32 DISPID_IHTMLWINDOW7_ONKEYDOWN = 71541;
		public const uint32 DISPID_IHTMLWINDOW7_ONKEYPRESS = 71543;
		public const uint32 DISPID_IHTMLWINDOW7_ONKEYUP = 71542;
		public const uint32 DISPID_IHTMLWINDOW7_ONLOADEDDATA = 71675;
		public const uint32 DISPID_IHTMLWINDOW7_ONLOADEDMETADATA = 71676;
		public const uint32 DISPID_IHTMLWINDOW7_ONLOADSTART = 71677;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEDOWN = 71538;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEENTER = 71621;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSELEAVE = 71622;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEMOVE = 71540;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEOUT = 71537;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEOVER = 71536;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEUP = 71539;
		public const uint32 DISPID_IHTMLWINDOW7_ONMOUSEWHEEL = 71612;
		public const uint32 DISPID_IHTMLWINDOW7_ONOFFLINE = 71644;
		public const uint32 DISPID_IHTMLWINDOW7_ONONLINE = 71643;
		public const uint32 DISPID_IHTMLWINDOW7_ONPROGRESS = 71681;
		public const uint32 DISPID_IHTMLWINDOW7_ONRATECHANGE = 71682;
		public const uint32 DISPID_IHTMLWINDOW7_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLWINDOW7_ONRESET = 71548;
		public const uint32 DISPID_IHTMLWINDOW7_ONSEEKED = 71683;
		public const uint32 DISPID_IHTMLWINDOW7_ONSEEKING = 71684;
		public const uint32 DISPID_IHTMLWINDOW7_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLWINDOW7_ONSTALLED = 71685;
		public const uint32 DISPID_IHTMLWINDOW7_ONSTORAGE = 71636;
		public const uint32 DISPID_IHTMLWINDOW7_ONSUBMIT = 71547;
		public const uint32 DISPID_IHTMLWINDOW7_ONSUSPEND = 71686;
		public const uint32 DISPID_IHTMLWINDOW7_ONTIMEUPDATE = 71687;
		public const uint32 DISPID_IHTMLWINDOW7_ONPAUSE = 71678;
		public const uint32 DISPID_IHTMLWINDOW7_ONPLAY = 71679;
		public const uint32 DISPID_IHTMLWINDOW7_ONPLAYING = 71680;
		public const uint32 DISPID_IHTMLWINDOW7_ONVOLUMECHANGE = 71688;
		public const uint32 DISPID_IHTMLWINDOW7_ONWAITING = 71689;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTERDOWN = 71690;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTERMOVE = 71691;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTERUP = 71692;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTEROVER = 71693;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTEROUT = 71694;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTERCANCEL = 71695;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSPOINTERHOVER = 71696;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTURESTART = 71699;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTURECHANGE = 71700;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTUREEND = 71701;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTUREHOLD = 71702;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTURETAP = 71703;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSGESTUREDOUBLETAP = 71704;
		public const uint32 DISPID_IHTMLWINDOW8_ONMSINERTIASTART = 71705;
		public const uint32 DISPID_IHTMLWINDOW8_APPLICATIONCACHE = 1213;
		public const uint32 DISPID_IHTMLWINDOW8_ONPOPSTATE = 71728;
		public const uint32 DISPID_HTMLWINDOWEVENTS3_ONHASHCHANGE = 1066;
		public const uint32 DISPID_HTMLWINDOWEVENTS3_ONMESSAGE = 1067;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONUNLOAD = 1008;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONHELP = 65546;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONFOCUS = 65537;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONRESIZE = 1016;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONSCROLL = 1014;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONBEFOREUNLOAD = 1017;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONBEFOREPRINT = 1024;
		public const uint32 DISPID_HTMLWINDOWEVENTS2_ONAFTERPRINT = 1025;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONUNLOAD = 1008;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONHELP = 65546;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONFOCUS = 65537;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONERROR = 1002;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONRESIZE = 1016;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONSCROLL = 1014;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONBEFOREUNLOAD = 1017;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONBEFOREPRINT = 1024;
		public const uint32 DISPID_HTMLWINDOWEVENTS_ONAFTERPRINT = 1025;
		public const uint32 DISPID_IHTMLDOCUMENTCOMPATIBLEINFO_USERAGENT = 1001;
		public const uint32 DISPID_IHTMLDOCUMENTCOMPATIBLEINFO_VERSION = 1002;
		public const uint32 DISPID_IHTMLDOCUMENTCOMPATIBLEINFOCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IHTMLDOCUMENTCOMPATIBLEINFOCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDOCUMENT_SCRIPT = 1001;
		public const uint32 DISPID_IHTMLDOCUMENT2_ALL = 1003;
		public const uint32 DISPID_IHTMLDOCUMENT2_BODY = 1004;
		public const uint32 DISPID_IHTMLDOCUMENT2_ACTIVEELEMENT = 1005;
		public const uint32 DISPID_IHTMLDOCUMENT2_IMAGES = 1011;
		public const uint32 DISPID_IHTMLDOCUMENT2_APPLETS = 1008;
		public const uint32 DISPID_IHTMLDOCUMENT2_LINKS = 1009;
		public const uint32 DISPID_IHTMLDOCUMENT2_FORMS = 1010;
		public const uint32 DISPID_IHTMLDOCUMENT2_ANCHORS = 1007;
		public const uint32 DISPID_IHTMLDOCUMENT2_TITLE = 1012;
		public const uint32 DISPID_IHTMLDOCUMENT2_SCRIPTS = 1013;
		public const uint32 DISPID_IHTMLDOCUMENT2_DESIGNMODE = 1014;
		public const uint32 DISPID_IHTMLDOCUMENT2_SELECTION = 1017;
		public const uint32 DISPID_IHTMLDOCUMENT2_READYSTATE = 1018;
		public const uint32 DISPID_IHTMLDOCUMENT2_FRAMES = 1019;
		public const uint32 DISPID_IHTMLDOCUMENT2_EMBEDS = 1015;
		public const uint32 DISPID_IHTMLDOCUMENT2_PLUGINS = 1021;
		public const uint32 DISPID_IHTMLDOCUMENT2_ALINKCOLOR = 1022;
		public const int32 DISPID_IHTMLDOCUMENT2_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLDOCUMENT2_FGCOLOR = 70538;
		public const uint32 DISPID_IHTMLDOCUMENT2_LINKCOLOR = 1024;
		public const uint32 DISPID_IHTMLDOCUMENT2_VLINKCOLOR = 1023;
		public const uint32 DISPID_IHTMLDOCUMENT2_REFERRER = 1027;
		public const uint32 DISPID_IHTMLDOCUMENT2_LOCATION = 1026;
		public const uint32 DISPID_IHTMLDOCUMENT2_LASTMODIFIED = 1028;
		public const uint32 DISPID_IHTMLDOCUMENT2_URL = 1025;
		public const uint32 DISPID_IHTMLDOCUMENT2_DOMAIN = 1029;
		public const uint32 DISPID_IHTMLDOCUMENT2_COOKIE = 1030;
		public const uint32 DISPID_IHTMLDOCUMENT2_EXPANDO = 1031;
		public const uint32 DISPID_IHTMLDOCUMENT2_CHARSET = 1032;
		public const uint32 DISPID_IHTMLDOCUMENT2_DEFAULTCHARSET = 1033;
		public const uint32 DISPID_IHTMLDOCUMENT2_MIMETYPE = 1041;
		public const uint32 DISPID_IHTMLDOCUMENT2_FILESIZE = 1042;
		public const uint32 DISPID_IHTMLDOCUMENT2_FILECREATEDDATE = 1043;
		public const uint32 DISPID_IHTMLDOCUMENT2_FILEMODIFIEDDATE = 1044;
		public const uint32 DISPID_IHTMLDOCUMENT2_FILEUPDATEDDATE = 1045;
		public const uint32 DISPID_IHTMLDOCUMENT2_SECURITY = 1046;
		public const uint32 DISPID_IHTMLDOCUMENT2_PROTOCOL = 1047;
		public const uint32 DISPID_IHTMLDOCUMENT2_NAMEPROP = 1048;
		public const uint32 DISPID_IHTMLDOCUMENT2_WRITE = 1054;
		public const uint32 DISPID_IHTMLDOCUMENT2_WRITELN = 1055;
		public const uint32 DISPID_IHTMLDOCUMENT2_OPEN = 1056;
		public const uint32 DISPID_IHTMLDOCUMENT2_CLOSE = 1057;
		public const uint32 DISPID_IHTMLDOCUMENT2_CLEAR = 1058;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDSUPPORTED = 1059;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDENABLED = 1060;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDSTATE = 1061;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDINDETERM = 1062;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDTEXT = 1063;
		public const uint32 DISPID_IHTMLDOCUMENT2_QUERYCOMMANDVALUE = 1064;
		public const uint32 DISPID_IHTMLDOCUMENT2_EXECCOMMAND = 1065;
		public const uint32 DISPID_IHTMLDOCUMENT2_EXECCOMMANDSHOWHELP = 1066;
		public const uint32 DISPID_IHTMLDOCUMENT2_CREATEELEMENT = 1067;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONHELP = 71549;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONCLICK = 71544;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONDBLCLICK = 71545;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONKEYUP = 71542;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONKEYDOWN = 71541;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONKEYPRESS = 71543;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONMOUSEUP = 71539;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONMOUSEDOWN = 71538;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONMOUSEMOVE = 71540;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONMOUSEOUT = 71537;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONMOUSEOVER = 71536;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONAFTERUPDATE = 71558;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONROWEXIT = 71554;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONROWENTER = 71555;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONDRAGSTART = 71571;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONSELECTSTART = 71573;
		public const uint32 DISPID_IHTMLDOCUMENT2_ELEMENTFROMPOINT = 1068;
		public const uint32 DISPID_IHTMLDOCUMENT2_PARENTWINDOW = 1034;
		public const uint32 DISPID_IHTMLDOCUMENT2_STYLESHEETS = 1069;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONBEFOREUPDATE = 71557;
		public const uint32 DISPID_IHTMLDOCUMENT2_ONERRORUPDATE = 71574;
		public const uint32 DISPID_IHTMLDOCUMENT2_TOSTRING = 1070;
		public const uint32 DISPID_IHTMLDOCUMENT2_CREATESTYLESHEET = 1071;
		public const uint32 DISPID_IHTMLDOCUMENT3_RELEASECAPTURE = 1072;
		public const uint32 DISPID_IHTMLDOCUMENT3_RECALC = 1073;
		public const uint32 DISPID_IHTMLDOCUMENT3_CREATETEXTNODE = 1074;
		public const uint32 DISPID_IHTMLDOCUMENT3_DOCUMENTELEMENT = 1075;
		public const uint32 DISPID_IHTMLDOCUMENT3_UNIQUEID = 1077;
		public const uint32 DISPID_IHTMLDOCUMENT3_ATTACHEVENT = 66043;
		public const uint32 DISPID_IHTMLDOCUMENT3_DETACHEVENT = 66044;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONROWSDELETE = 71598;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONROWSINSERTED = 71599;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONCELLCHANGE = 71600;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONDATASETCHANGED = 71576;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONDATAAVAILABLE = 71577;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONDATASETCOMPLETE = 71578;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONPROPERTYCHANGE = 71583;
		public const uint32 DISPID_IHTMLDOCUMENT3_DIR = 70653;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONCONTEXTMENU = 71601;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONSTOP = 71604;
		public const uint32 DISPID_IHTMLDOCUMENT3_CREATEDOCUMENTFRAGMENT = 1076;
		public const uint32 DISPID_IHTMLDOCUMENT3_PARENTDOCUMENT = 1078;
		public const uint32 DISPID_IHTMLDOCUMENT3_ENABLEDOWNLOAD = 1079;
		public const uint32 DISPID_IHTMLDOCUMENT3_BASEURL = 1080;
		public const uint32 DISPID_IHTMLDOCUMENT3_CHILDNODES = 66585;
		public const uint32 DISPID_IHTMLDOCUMENT3_INHERITSTYLESHEETS = 1082;
		public const uint32 DISPID_IHTMLDOCUMENT3_ONBEFOREEDITFOCUS = 71605;
		public const uint32 DISPID_IHTMLDOCUMENT3_GETELEMENTSBYNAME = 1086;
		public const uint32 DISPID_IHTMLDOCUMENT3_GETELEMENTBYID = 1088;
		public const uint32 DISPID_IHTMLDOCUMENT3_GETELEMENTSBYTAGNAME = 1087;
		public const uint32 DISPID_IHTMLDOCUMENT4_FOCUS = 1089;
		public const uint32 DISPID_IHTMLDOCUMENT4_HASFOCUS = 1090;
		public const uint32 DISPID_IHTMLDOCUMENT4_ONSELECTIONCHANGE = 71616;
		public const uint32 DISPID_IHTMLDOCUMENT4_NAMESPACES = 1091;
		public const uint32 DISPID_IHTMLDOCUMENT4_CREATEDOCUMENTFROMURL = 1092;
		public const uint32 DISPID_IHTMLDOCUMENT4_MEDIA = 1093;
		public const uint32 DISPID_IHTMLDOCUMENT4_CREATEEVENTOBJECT = 1094;
		public const uint32 DISPID_IHTMLDOCUMENT4_FIREEVENT = 1095;
		public const uint32 DISPID_IHTMLDOCUMENT4_CREATERENDERSTYLE = 1096;
		public const uint32 DISPID_IHTMLDOCUMENT4_ONCONTROLSELECT = 71615;
		public const uint32 DISPID_IHTMLDOCUMENT4_URLUNENCODED = 1097;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONMOUSEWHEEL = 71612;
		public const uint32 DISPID_IHTMLDOCUMENT5_DOCTYPE = 1098;
		public const uint32 DISPID_IHTMLDOCUMENT5_IMPLEMENTATION = 1099;
		public const uint32 DISPID_IHTMLDOCUMENT5_CREATEATTRIBUTE = 1100;
		public const uint32 DISPID_IHTMLDOCUMENT5_CREATECOMMENT = 1101;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONFOCUSIN = 71627;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONFOCUSOUT = 71628;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONACTIVATE = 71623;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONDEACTIVATE = 71624;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONBEFOREACTIVATE = 71626;
		public const uint32 DISPID_IHTMLDOCUMENT5_ONBEFOREDEACTIVATE = 71613;
		public const uint32 DISPID_IHTMLDOCUMENT5_COMPATMODE = 1102;
		public const uint32 DISPID_IHTMLDOCUMENT6_COMPATIBLE = 1103;
		public const uint32 DISPID_IHTMLDOCUMENT6_DOCUMENTMODE = 1104;
		public const uint32 DISPID_IHTMLDOCUMENT6_ONSTORAGE = 71636;
		public const uint32 DISPID_IHTMLDOCUMENT6_ONSTORAGECOMMIT = 71637;
		public const uint32 DISPID_IHTMLDOCUMENT6_IE8_GETELEMENTBYID = 1107;
		public const uint32 DISPID_IHTMLDOCUMENT6_UPDATESETTINGS = 1109;
		public const uint32 DISPID_IHTMLDOCUMENT7_DEFAULTVIEW = 1110;
		public const uint32 DISPID_IHTMLDOCUMENT7_CREATECDATASECTION = 1123;
		public const uint32 DISPID_IHTMLDOCUMENT7_GETSELECTION = 1112;
		public const uint32 DISPID_IHTMLDOCUMENT7_GETELEMENTSBYTAGNAMENS = 1113;
		public const uint32 DISPID_IHTMLDOCUMENT7_CREATEELEMENTNS = 1114;
		public const uint32 DISPID_IHTMLDOCUMENT7_CREATEATTRIBUTENS = 1115;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONMSTHUMBNAILCLICK = 71657;
		public const uint32 DISPID_IHTMLDOCUMENT7_CHARACTERSET = 1117;
		public const uint32 DISPID_IHTMLDOCUMENT7_IE9_CREATEELEMENT = 1118;
		public const uint32 DISPID_IHTMLDOCUMENT7_IE9_CREATEATTRIBUTE = 1119;
		public const uint32 DISPID_IHTMLDOCUMENT7_GETELEMENTSBYCLASSNAME = 1120;
		public const uint32 DISPID_IHTMLDOCUMENT7_CREATEPROCESSINGINSTRUCTION = 1124;
		public const uint32 DISPID_IHTMLDOCUMENT7_ADOPTNODE = 1125;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONMSSITEMODEJUMPLISTITEMREMOVED = 71666;
		public const uint32 DISPID_IHTMLDOCUMENT7_IE9_ALL = 1126;
		public const uint32 DISPID_IHTMLDOCUMENT7_INPUTENCODING = 1127;
		public const uint32 DISPID_IHTMLDOCUMENT7_XMLENCODING = 1128;
		public const uint32 DISPID_IHTMLDOCUMENT7_XMLSTANDALONE = 1129;
		public const uint32 DISPID_IHTMLDOCUMENT7_XMLVERSION = 1130;
		public const uint32 DISPID_IHTMLDOCUMENT7_HASATTRIBUTES = 1132;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONABORT = 71564;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONCANPLAY = 71670;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONCANPLAYTHROUGH = 71671;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONCHANGE = 71566;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDRAG = 71585;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDRAGEND = 71586;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDRAGENTER = 71587;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDRAGLEAVE = 71589;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDRAGOVER = 71588;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDROP = 71590;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONDURATIONCHANGE = 71672;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONEMPTIED = 71673;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONENDED = 71674;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONERROR = 71565;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONINPUT = 71663;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONLOADEDDATA = 71675;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONLOADEDMETADATA = 71676;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONLOADSTART = 71677;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONPAUSE = 71678;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONPLAY = 71679;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONPLAYING = 71680;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONPROGRESS = 71681;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONRATECHANGE = 71682;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONRESET = 71548;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSCROLL = 71567;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSEEKED = 71683;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSEEKING = 71684;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSELECT = 71546;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSTALLED = 71685;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSUBMIT = 71547;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONSUSPEND = 71686;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONTIMEUPDATE = 71687;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONVOLUMECHANGE = 71688;
		public const uint32 DISPID_IHTMLDOCUMENT7_ONWAITING = 71689;
		public const uint32 DISPID_IHTMLDOCUMENT7_NORMALIZE = 1134;
		public const uint32 DISPID_IHTMLDOCUMENT7_IMPORTNODE = 1135;
		public const uint32 DISPID_IHTMLDOCUMENT7_IE9_PARENTWINDOW = 1136;
		public const uint32 DISPID_IHTMLDOCUMENT7_IE9_BODY = 1137;
		public const uint32 DISPID_IHTMLDOCUMENT7_HEAD = 1138;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSCONTENTZOOM = 71708;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTERDOWN = 71690;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTERMOVE = 71691;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTERUP = 71692;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTEROVER = 71693;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTEROUT = 71694;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTERCANCEL = 71695;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSPOINTERHOVER = 71696;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTURESTART = 71699;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTURECHANGE = 71700;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTUREEND = 71701;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTUREHOLD = 71702;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTURETAP = 71703;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSGESTUREDOUBLETAP = 71704;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSINERTIASTART = 71705;
		public const uint32 DISPID_IHTMLDOCUMENT8_ELEMENTSFROMPOINT = 1139;
		public const uint32 DISPID_IHTMLDOCUMENT8_ELEMENTSFROMRECT = 1140;
		public const uint32 DISPID_IHTMLDOCUMENT8_ONMSMANIPULATIONSTATECHANGED = 71714;
		public const uint32 DISPID_IHTMLDOCUMENT8_MSCAPSLOCKWARNINGOFF = 1141;
		public const uint32 DISPID_IDOCUMENTEVENT_CREATEEVENT = 1108;
		public const uint32 DISPID_IDOCUMENTRANGE_CREATERANGE = 1111;
		public const uint32 DISPID_IDOCUMENTSELECTOR_QUERYSELECTOR = 1105;
		public const uint32 DISPID_IDOCUMENTSELECTOR_QUERYSELECTORALL = 1106;
		public const uint32 DISPID_IDOCUMENTTRAVERSAL_CREATENODEITERATOR = 1121;
		public const uint32 DISPID_IDOCUMENTTRAVERSAL_CREATETREEWALKER = 1122;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS4_ONMSTHUMBNAILCLICK = 71657;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS4_ONMSSITEMODEJUMPLISTITEMREMOVED = 71666;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS3_ONSTORAGE = 1057;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS3_ONSTORAGECOMMIT = 1058;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONHELP = 65546;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONCLICK = -600;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONDBLCLICK = -601;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONKEYDOWN = -602;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONKEYUP = -604;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONKEYPRESS = -603;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEDOWN = -605;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEMOVE = -606;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEUP = -607;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEOUT = 65545;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEOVER = 65544;
		public const int32 DISPID_HTMLDOCUMENTEVENTS2_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONDRAGSTART = 65547;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONSELECTSTART = 65548;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONSTOP = 1026;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONCELLCHANGE = 65570;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONPROPERTYCHANGE = 65555;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONSELECTIONCHANGE = 1037;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONFOCUSIN = 1048;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONFOCUSOUT = 1049;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONACTIVATE = 1044;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONDEACTIVATE = 1045;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS2_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONHELP = 65546;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONCLICK = -600;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK = -601;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN = -602;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONKEYUP = -604;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS = -603;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN = -605;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE = -606;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP = -607;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT = 65545;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER = 65544;
		public const int32 DISPID_HTMLDOCUMENTEVENTS_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART = 65547;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONSELECTSTART = 65548;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONCONTEXTMENU = 1023;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONSTOP = 1026;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONCELLCHANGE = 65570;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONPROPERTYCHANGE = 65555;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONSELECTIONCHANGE = 1037;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONCONTROLSELECT = 1036;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL = 1033;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONFOCUSIN = 1048;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONFOCUSOUT = 1049;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONACTIVATE = 1044;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONDEACTIVATE = 1045;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONBEFOREACTIVATE = 1047;
		public const uint32 DISPID_HTMLDOCUMENTEVENTS_ONBEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_IWEBBRIDGE_URL = 1;
		public const uint32 DISPID_IWEBBRIDGE_SCROLLBAR = 2;
		public const uint32 DISPID_IWEBBRIDGE_EMBED = 3;
		public const uint32 DISPID_IWEBBRIDGE_EVENT = 1152;
		public const int32 DISPID_IWEBBRIDGE_READYSTATE = -525;
		public const int32 DISPID_IWEBBRIDGE_ABOUTBOX = -552;
		public const uint32 DISPID_IWBSCRIPTCONTROL_RAISEEVENT = 1;
		public const uint32 DISPID_IWBSCRIPTCONTROL_BUBBLEEVENT = 2;
		public const uint32 DISPID_IWBSCRIPTCONTROL_SETCONTEXTMENU = 3;
		public const uint32 DISPID_IWBSCRIPTCONTROL_SELECTABLECONTENT = 4;
		public const uint32 DISPID_IWBSCRIPTCONTROL_FROZEN = 5;
		public const uint32 DISPID_IWBSCRIPTCONTROL_SCROLLBAR = 7;
		public const uint32 DISPID_IWBSCRIPTCONTROL_VERSION = 8;
		public const uint32 DISPID_IWBSCRIPTCONTROL_VISIBILITY = 9;
		public const uint32 DISPID_IWBSCRIPTCONTROL_ONVISIBILITYCHANGE = 10;
		public const uint32 DISPID_DWEBBRIDGEEVENTS_ONSCRIPTLETEVENT = 1;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONREADYSTATECHANGE = -609;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONCLICK = -600;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONDBLCLICK = -601;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONKEYDOWN = -602;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONKEYUP = -604;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONKEYPRESS = -603;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONMOUSEDOWN = -605;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONMOUSEMOVE = -606;
		public const int32 DISPID_DWEBBRIDGEEVENTS_ONMOUSEUP = -607;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_HIDDEN = 68546;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_PALETTE = 68540;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_PLUGINSPAGE = 68541;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_SRC = 68542;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_UNITS = 68544;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLEMBEDELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLEMBEDELEMENT2_IE8_SRC = 1150;
		public const uint32 DISPID_IHTMLEMBEDELEMENT2_IE8_PLUGINSPAGE = 1151;
		public const uint32 DISPID_IHTMLAREASCOLLECTION_LENGTH = 1500;
		public const int32 DISPID_IHTMLAREASCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLAREASCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLAREASCOLLECTION_TAGS = 1502;
		public const uint32 DISPID_IHTMLAREASCOLLECTION_ADD = 1503;
		public const uint32 DISPID_IHTMLAREASCOLLECTION_REMOVE = 1504;
		public const uint32 DISPID_IHTMLAREASCOLLECTION2_URNS = 1505;
		public const uint32 DISPID_IHTMLAREASCOLLECTION3_NAMEDITEM = 1506;
		public const uint32 DISPID_IHTMLAREASCOLLECTION4_IE8_LENGTH = 1150;
		public const uint32 DISPID_IHTMLAREASCOLLECTION4_IE8_ITEM = 1152;
		public const uint32 DISPID_IHTMLAREASCOLLECTION4_IE8_NAMEDITEM = 1153;
		public const uint32 DISPID_IHTMLMAPELEMENT_AREAS = 1002;
		public const uint32 DISPID_IHTMLMAPELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLAREAELEMENT_SHAPE = 1001;
		public const uint32 DISPID_IHTMLAREAELEMENT_COORDS = 1002;
		public const uint32 DISPID_IHTMLAREAELEMENT_HREF = 0;
		public const uint32 DISPID_IHTMLAREAELEMENT_TARGET = 1004;
		public const uint32 DISPID_IHTMLAREAELEMENT_ALT = 1005;
		public const uint32 DISPID_IHTMLAREAELEMENT_NOHREF = 1006;
		public const uint32 DISPID_IHTMLAREAELEMENT_HOST = 1007;
		public const uint32 DISPID_IHTMLAREAELEMENT_HOSTNAME = 1008;
		public const uint32 DISPID_IHTMLAREAELEMENT_PATHNAME = 1009;
		public const uint32 DISPID_IHTMLAREAELEMENT_PORT = 1010;
		public const uint32 DISPID_IHTMLAREAELEMENT_PROTOCOL = 1011;
		public const uint32 DISPID_IHTMLAREAELEMENT_SEARCH = 1012;
		public const uint32 DISPID_IHTMLAREAELEMENT_HASH = 1013;
		public const uint32 DISPID_IHTMLAREAELEMENT_ONBLUR = 71551;
		public const uint32 DISPID_IHTMLAREAELEMENT_ONFOCUS = 71550;
		public const uint32 DISPID_IHTMLAREAELEMENT_TABINDEX = 65551;
		public const uint32 DISPID_IHTMLAREAELEMENT_FOCUS = 67536;
		public const uint32 DISPID_IHTMLAREAELEMENT_BLUR = 67538;
		public const uint32 DISPID_IHTMLAREAELEMENT2_IE8_SHAPE = 1151;
		public const uint32 DISPID_IHTMLAREAELEMENT2_IE8_COORDS = 1152;
		public const uint32 DISPID_IHTMLAREAELEMENT2_IE8_HREF = 1153;
		public const uint32 DISPID_IHTMLTABLECAPTION_ALIGN = 65608;
		public const uint32 DISPID_IHTMLTABLECAPTION_VALIGN = 70567;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT_TEXT = 1001;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT_ATOMIC = 1002;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_DATA = 1003;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_LENGTH = 1004;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_SUBSTRINGDATA = 1005;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_APPENDDATA = 1006;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_INSERTDATA = 1007;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_DELETEDATA = 1008;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT2_REPLACEDATA = 1009;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT3_IE9_SUBSTRINGDATA = 1010;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT3_IE9_INSERTDATA = 1011;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT3_IE9_DELETEDATA = 1012;
		public const uint32 DISPID_IHTMLCOMMENTELEMENT3_IE9_REPLACEDATA = 1013;
		public const uint32 DISPID_IHTMLPHRASEELEMENT2_CITE = 1001;
		public const uint32 DISPID_IHTMLPHRASEELEMENT2_DATETIME = 1002;
		public const uint32 DISPID_IHTMLPHRASEELEMENT3_IE8_CITE = 1150;
		public const uint32 DISPID_IHTMLTABLE_COLS = 1001;
		public const uint32 DISPID_IHTMLTABLE_BORDER = 1002;
		public const uint32 DISPID_IHTMLTABLE_FRAME = 1004;
		public const uint32 DISPID_IHTMLTABLE_RULES = 1003;
		public const uint32 DISPID_IHTMLTABLE_CELLSPACING = 1005;
		public const uint32 DISPID_IHTMLTABLE_CELLPADDING = 1006;
		public const uint32 DISPID_IHTMLTABLE_BACKGROUND = 70537;
		public const int32 DISPID_IHTMLTABLE_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLTABLE_BORDERCOLOR = 70564;
		public const uint32 DISPID_IHTMLTABLE_BORDERCOLORLIGHT = 70565;
		public const uint32 DISPID_IHTMLTABLE_BORDERCOLORDARK = 70566;
		public const uint32 DISPID_IHTMLTABLE_ALIGN = 65609;
		public const uint32 DISPID_IHTMLTABLE_REFRESH = 1015;
		public const uint32 DISPID_IHTMLTABLE_ROWS = 1016;
		public const uint32 DISPID_IHTMLTABLE_WIDTH = 65541;
		public const uint32 DISPID_IHTMLTABLE_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLTABLE_DATAPAGESIZE = 1017;
		public const uint32 DISPID_IHTMLTABLE_NEXTPAGE = 1018;
		public const uint32 DISPID_IHTMLTABLE_PREVIOUSPAGE = 1019;
		public const uint32 DISPID_IHTMLTABLE_THEAD = 1020;
		public const uint32 DISPID_IHTMLTABLE_TFOOT = 1021;
		public const uint32 DISPID_IHTMLTABLE_TBODIES = 1024;
		public const uint32 DISPID_IHTMLTABLE_CAPTION = 1025;
		public const uint32 DISPID_IHTMLTABLE_CREATETHEAD = 1026;
		public const uint32 DISPID_IHTMLTABLE_DELETETHEAD = 1027;
		public const uint32 DISPID_IHTMLTABLE_CREATETFOOT = 1028;
		public const uint32 DISPID_IHTMLTABLE_DELETETFOOT = 1029;
		public const uint32 DISPID_IHTMLTABLE_CREATECAPTION = 1030;
		public const uint32 DISPID_IHTMLTABLE_DELETECAPTION = 1031;
		public const uint32 DISPID_IHTMLTABLE_INSERTROW = 1032;
		public const uint32 DISPID_IHTMLTABLE_DELETEROW = 1033;
		public const uint32 DISPID_IHTMLTABLE_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLTABLE_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLTABLE2_FIRSTPAGE = 1035;
		public const uint32 DISPID_IHTMLTABLE2_LASTPAGE = 1036;
		public const uint32 DISPID_IHTMLTABLE2_CELLS = 1037;
		public const uint32 DISPID_IHTMLTABLE2_MOVEROW = 1038;
		public const uint32 DISPID_IHTMLTABLE3_SUMMARY = 1039;
		public const uint32 DISPID_IHTMLTABLE4_IE9_THEAD = 1040;
		public const uint32 DISPID_IHTMLTABLE4_IE9_TFOOT = 1041;
		public const uint32 DISPID_IHTMLTABLE4_IE9_CAPTION = 1042;
		public const uint32 DISPID_IHTMLTABLE4_IE9_INSERTROW = 1043;
		public const uint32 DISPID_IHTMLTABLE4_IE9_DELETEROW = 1044;
		public const uint32 DISPID_IHTMLTABLE4_CREATETBODY = 1045;
		public const uint32 DISPID_IHTMLTABLECOL_SPAN = 1001;
		public const uint32 DISPID_IHTMLTABLECOL_WIDTH = 65541;
		public const uint32 DISPID_IHTMLTABLECOL_ALIGN = 65608;
		public const uint32 DISPID_IHTMLTABLECOL_VALIGN = 70567;
		public const uint32 DISPID_IHTMLTABLECOL2_CH = 1002;
		public const uint32 DISPID_IHTMLTABLECOL2_CHOFF = 1003;
		public const uint32 DISPID_IHTMLTABLECOL3_IE9_CH = 1004;
		public const uint32 DISPID_IHTMLTABLECOL3_IE9_CHOFF = 1005;
		public const uint32 DISPID_IHTMLTABLESECTION_ALIGN = 65608;
		public const uint32 DISPID_IHTMLTABLESECTION_VALIGN = 70567;
		public const int32 DISPID_IHTMLTABLESECTION_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLTABLESECTION_ROWS = 1000;
		public const uint32 DISPID_IHTMLTABLESECTION_INSERTROW = 1001;
		public const uint32 DISPID_IHTMLTABLESECTION_DELETEROW = 1002;
		public const uint32 DISPID_IHTMLTABLESECTION2_MOVEROW = 1003;
		public const uint32 DISPID_IHTMLTABLESECTION3_CH = 1004;
		public const uint32 DISPID_IHTMLTABLESECTION3_CHOFF = 1005;
		public const uint32 DISPID_IHTMLTABLESECTION4_IE9_CH = 1006;
		public const uint32 DISPID_IHTMLTABLESECTION4_IE9_CHOFF = 1007;
		public const uint32 DISPID_IHTMLTABLESECTION4_IE9_INSERTROW = 1008;
		public const uint32 DISPID_IHTMLTABLESECTION4_IE9_DELETEROW = 1009;
		public const uint32 DISPID_IHTMLTABLEROW_ALIGN = 65608;
		public const uint32 DISPID_IHTMLTABLEROW_VALIGN = 70567;
		public const int32 DISPID_IHTMLTABLEROW_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLTABLEROW_BORDERCOLOR = 70564;
		public const uint32 DISPID_IHTMLTABLEROW_BORDERCOLORLIGHT = 70565;
		public const uint32 DISPID_IHTMLTABLEROW_BORDERCOLORDARK = 70566;
		public const uint32 DISPID_IHTMLTABLEROW_ROWINDEX = 1000;
		public const uint32 DISPID_IHTMLTABLEROW_SECTIONROWINDEX = 1001;
		public const uint32 DISPID_IHTMLTABLEROW_CELLS = 1002;
		public const uint32 DISPID_IHTMLTABLEROW_INSERTCELL = 1003;
		public const uint32 DISPID_IHTMLTABLEROW_DELETECELL = 1004;
		public const uint32 DISPID_IHTMLTABLEROW2_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLTABLEROW3_CH = 1009;
		public const uint32 DISPID_IHTMLTABLEROW3_CHOFF = 1010;
		public const uint32 DISPID_IHTMLTABLEROW4_IE9_CH = 1011;
		public const uint32 DISPID_IHTMLTABLEROW4_IE9_CHOFF = 1012;
		public const uint32 DISPID_IHTMLTABLEROW4_IE9_INSERTCELL = 1013;
		public const uint32 DISPID_IHTMLTABLEROW4_IE9_DELETECELL = 1014;
		public const uint32 DISPID_IHTMLTABLEROWMETRICS_CLIENTHEIGHT = 67555;
		public const uint32 DISPID_IHTMLTABLEROWMETRICS_CLIENTWIDTH = 67556;
		public const uint32 DISPID_IHTMLTABLEROWMETRICS_CLIENTTOP = 67557;
		public const uint32 DISPID_IHTMLTABLEROWMETRICS_CLIENTLEFT = 67558;
		public const uint32 DISPID_IHTMLTABLECELL_ROWSPAN = 2001;
		public const uint32 DISPID_IHTMLTABLECELL_COLSPAN = 2002;
		public const uint32 DISPID_IHTMLTABLECELL_ALIGN = 65608;
		public const uint32 DISPID_IHTMLTABLECELL_VALIGN = 70567;
		public const int32 DISPID_IHTMLTABLECELL_BGCOLOR = -501;
		public const uint32 DISPID_IHTMLTABLECELL_NOWRAP = 70541;
		public const uint32 DISPID_IHTMLTABLECELL_BACKGROUND = 70537;
		public const uint32 DISPID_IHTMLTABLECELL_BORDERCOLOR = 70564;
		public const uint32 DISPID_IHTMLTABLECELL_BORDERCOLORLIGHT = 70565;
		public const uint32 DISPID_IHTMLTABLECELL_BORDERCOLORDARK = 70566;
		public const uint32 DISPID_IHTMLTABLECELL_WIDTH = 65541;
		public const uint32 DISPID_IHTMLTABLECELL_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLTABLECELL_CELLINDEX = 2003;
		public const uint32 DISPID_IHTMLTABLECELL2_ABBR = 2004;
		public const uint32 DISPID_IHTMLTABLECELL2_AXIS = 2005;
		public const uint32 DISPID_IHTMLTABLECELL2_CH = 2006;
		public const uint32 DISPID_IHTMLTABLECELL2_CHOFF = 2007;
		public const uint32 DISPID_IHTMLTABLECELL2_HEADERS = 2008;
		public const uint32 DISPID_IHTMLTABLECELL2_SCOPE = 2009;
		public const uint32 DISPID_IHTMLTABLECELL3_IE9_CH = 2010;
		public const uint32 DISPID_IHTMLTABLECELL3_IE9_CHOFF = 2011;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_SRC = 1001;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_HTMLFOR = 1004;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_EVENT = 1005;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_TEXT = 1006;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_DEFER = 1007;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT_TYPE = 1009;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT2_CHARSET = 1010;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT3_IE8_SRC = 1150;
		public const uint32 DISPID_IHTMLSCRIPTELEMENT4_USEDCHARSET = 1011;
		public const uint32 DISPID_HTMLSCRIPTEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLSCRIPTEVENTS_ONERROR = 1002;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_OBJECT = 68537;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_CLASSID = 68538;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_DATA = 68539;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_RECORDSET = 68541;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_CODEBASE = 68542;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_CODETYPE = 68543;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_CODE = 68544;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_BASEHREF = 65538;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_TYPE = 68545;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_FORM = 67540;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_READYSTATE = 68546;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_ALTHTML = 68547;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_VSPACE = 68548;
		public const uint32 DISPID_IHTMLOBJECTELEMENT_HSPACE = 68549;
		public const uint32 DISPID_IHTMLOBJECTELEMENT2_NAMEDRECORDSET = 68550;
		public const uint32 DISPID_IHTMLOBJECTELEMENT2_CLASSID = 68538;
		public const uint32 DISPID_IHTMLOBJECTELEMENT2_DATA = 68539;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_ARCHIVE = 68551;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_ALT = 68552;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_DECLARE = 68553;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_STANDBY = 68554;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_BORDER = 68555;
		public const uint32 DISPID_IHTMLOBJECTELEMENT3_USEMAP = 68556;
		public const uint32 DISPID_IHTMLOBJECTELEMENT4_CONTENTDOCUMENT = 68566;
		public const uint32 DISPID_IHTMLOBJECTELEMENT4_IE8_CODEBASE = 68567;
		public const uint32 DISPID_IHTMLOBJECTELEMENT4_IE8_DATA = 68568;
		public const uint32 DISPID_IHTMLOBJECTELEMENT5_IE9_OBJECT = 68569;
		public const uint32 DISPID_IHTMLPARAMELEMENT_NAME = 1001;
		public const uint32 DISPID_IHTMLPARAMELEMENT_VALUE = 1002;
		public const uint32 DISPID_IHTMLPARAMELEMENT_TYPE = 1003;
		public const uint32 DISPID_IHTMLPARAMELEMENT_VALUETYPE = 1004;
		public const uint32 DISPID_IHTMLPARAMELEMENT2_NAME = 1001;
		public const uint32 DISPID_IHTMLPARAMELEMENT2_TYPE = 1003;
		public const uint32 DISPID_IHTMLPARAMELEMENT2_VALUE = 1002;
		public const uint32 DISPID_IHTMLPARAMELEMENT2_IE8_VALUETYPE = 1150;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONERROR = 65555;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONCELLCHANGE = 65570;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS2_ONREADYSTATECHANGE = 65556;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONBEFOREUPDATE = 65540;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONAFTERUPDATE = 65541;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONERRORUPDATE = 65549;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONROWEXIT = 65542;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONROWENTER = 65543;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONDATASETCHANGED = 65550;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONDATAAVAILABLE = 65551;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONDATASETCOMPLETE = 65552;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONERROR = 65555;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONROWSDELETE = 65568;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONROWSINSERTED = 65569;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONCELLCHANGE = 65570;
		public const uint32 DISPID_HTMLOBJECTELEMENTEVENTS_ONREADYSTATECHANGE = 65556;
		public const uint32 DISPID_IHTMLFRAMEBASE_SRC = 68536;
		public const uint32 DISPID_IHTMLFRAMEBASE_NAME = 65536;
		public const uint32 DISPID_IHTMLFRAMEBASE_BORDER = 68538;
		public const uint32 DISPID_IHTMLFRAMEBASE_FRAMEBORDER = 68539;
		public const uint32 DISPID_IHTMLFRAMEBASE_FRAMESPACING = 68540;
		public const uint32 DISPID_IHTMLFRAMEBASE_MARGINWIDTH = 68541;
		public const uint32 DISPID_IHTMLFRAMEBASE_MARGINHEIGHT = 68542;
		public const uint32 DISPID_IHTMLFRAMEBASE_NORESIZE = 68543;
		public const uint32 DISPID_IHTMLFRAMEBASE_SCROLLING = 68544;
		public const uint32 DISPID_IHTMLFRAMEBASE2_CONTENTWINDOW = 68545;
		public const uint32 DISPID_IHTMLFRAMEBASE2_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLFRAMEBASE2_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLFRAMEBASE2_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLFRAMEBASE2_ALLOWTRANSPARENCY = 70742;
		public const uint32 DISPID_IHTMLFRAMEBASE3_LONGDESC = 68546;
		public const uint32 DISPID_HTMLFRAMESITEEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLFRAMESITEEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_IHTMLFRAMEELEMENT_BORDERCOLOR = 69537;
		public const uint32 DISPID_IHTMLFRAMEELEMENT2_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLFRAMEELEMENT2_WIDTH = 65541;
		public const uint32 DISPID_IHTMLFRAMEELEMENT3_CONTENTDOCUMENT = 69656;
		public const uint32 DISPID_IHTMLFRAMEELEMENT3_IE8_SRC = 69657;
		public const uint32 DISPID_IHTMLFRAMEELEMENT3_IE8_LONGDESC = 69658;
		public const uint32 DISPID_IHTMLFRAMEELEMENT3_IE8_FRAMEBORDER = 69659;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT_VSPACE = 69537;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT_HSPACE = 69538;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT2_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT2_WIDTH = 65541;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT3_CONTENTDOCUMENT = 69656;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT3_IE8_SRC = 69657;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT3_IE8_LONGDESC = 69658;
		public const uint32 DISPID_IHTMLIFRAMEELEMENT3_IE8_FRAMEBORDER = 69659;
		public const uint32 DISPID_IHTMLDIVPOSITION_ALIGN = 65609;
		public const uint32 DISPID_IHTMLFIELDSETELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLFIELDSETELEMENT2_FORM = 67540;
		public const uint32 DISPID_IHTMLLEGENDELEMENT_ALIGN = 65609;
		public const uint32 DISPID_IHTMLLEGENDELEMENT2_FORM = 67540;
		public const uint32 DISPID_IHTMLSPANFLOW_ALIGN = 65609;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_ROWS = 1000;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_COLS = 1001;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_BORDER = 1002;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_BORDERCOLOR = 1003;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_FRAMEBORDER = 1004;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_FRAMESPACING = 1005;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_NAME = 65536;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_ONUNLOAD = 71569;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT_ONBEFOREUNLOAD = 71575;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT2_ONBEFOREPRINT = 71602;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT2_ONAFTERPRINT = 71603;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT3_ONHASHCHANGE = 71645;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT3_ONMESSAGE = 71646;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT3_ONOFFLINE = 71644;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT3_ONONLINE = 71643;
		public const uint32 DISPID_IHTMLFRAMESETELEMENT3_ONSTORAGE = 71636;
		public const uint32 DISPID_IHTMLBGSOUND_SRC = 1001;
		public const uint32 DISPID_IHTMLBGSOUND_LOOP = 1002;
		public const uint32 DISPID_IHTMLBGSOUND_VOLUME = 1003;
		public const uint32 DISPID_IHTMLBGSOUND_BALANCE = 1004;
		public const uint32 DISPID_IHTMLFONTNAMESCOLLECTION_LENGTH = 1501;
		public const int32 DISPID_IHTMLFONTNAMESCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLFONTNAMESCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLFONTSIZESCOLLECTION_LENGTH = 1502;
		public const int32 DISPID_IHTMLFONTSIZESCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLFONTSIZESCOLLECTION_FORFONT = 1503;
		public const uint32 DISPID_IHTMLFONTSIZESCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_DOCUMENT = 1503;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_FONTS = 1504;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_EXECARG = 1505;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ERRORLINE = 1506;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ERRORCHARACTER = 1507;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ERRORCODE = 1508;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ERRORMESSAGE = 1509;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ERRORDEBUG = 1510;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_UNSECUREDWINDOWOFDOCUMENT = 1511;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_FINDTEXT = 1512;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ANYTHINGAFTERFRAMESET = 1513;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_SIZES = 1514;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_OPENFILEDLG = 1515;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_SAVEFILEDLG = 1516;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_CHOOSECOLORDLG = 1517;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_SHOWSECURITYINFO = 1518;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_ISAPARTMENTMODEL = 1519;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_GETCHARSET = 1520;
		public const uint32 DISPID_IHTMLOPTIONSHOLDER_SECURECONNECTIONINFO = 1521;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_TYPE = 1002;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_ONERROR = 71565;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_STYLESHEET = 1004;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_DISABLED = 65612;
		public const uint32 DISPID_IHTMLSTYLEELEMENT_MEDIA = 1006;
		public const uint32 DISPID_IHTMLSTYLEELEMENT2_SHEET = 1007;
		public const uint32 DISPID_HTMLSTYLEELEMENTEVENTS2_ONLOAD = 1003;
		public const uint32 DISPID_HTMLSTYLEELEMENTEVENTS2_ONERROR = 1002;
		public const uint32 DISPID_HTMLSTYLEELEMENTEVENTS_ONLOAD = 1003;
		public const uint32 DISPID_HTMLSTYLEELEMENTEVENTS_ONERROR = 1002;
		public const uint32 DISPID_IHTMLSTYLEFONTFACE_FONTSRC = 70633;
		public const uint32 DISPID_IHTMLSTYLEFONTFACE2_STYLE = 65610;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_RESPONSETEXT = 1003;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_TIMEOUT = 1004;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_CONTENTTYPE = 1005;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_ONPROGRESS = 1006;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_ONERROR = 71565;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_ONTIMEOUT = 71648;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_ONLOAD = 71568;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_ABORT = 1010;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_OPEN = 1011;
		public const uint32 DISPID_IHTMLXDOMAINREQUEST_SEND = 1012;
		public const uint32 DISPID_IHTMLXDOMAINREQUESTFACTORY_CREATE = 0;
		public const uint32 DISPID_IHTMLSTORAGE_LENGTH = 1001;
		public const uint32 DISPID_IHTMLSTORAGE_REMAININGSPACE = 1002;
		public const uint32 DISPID_IHTMLSTORAGE_KEY = 1006;
		public const uint32 DISPID_IHTMLSTORAGE_GETITEM = 1003;
		public const uint32 DISPID_IHTMLSTORAGE_SETITEM = 1004;
		public const uint32 DISPID_IHTMLSTORAGE_REMOVEITEM = 1005;
		public const uint32 DISPID_IHTMLSTORAGE_CLEAR = 1007;
		public const uint32 DISPID_IHTMLSTORAGE2_IE9_SETITEM = 1008;
		public const uint32 DISPID_IEVENTTARGET_ADDEVENTLISTENER = 66046;
		public const uint32 DISPID_IEVENTTARGET_REMOVEEVENTLISTENER = 66047;
		public const uint32 DISPID_IEVENTTARGET_DISPATCHEVENT = 66048;
		public const uint32 DISPID_IDOMEVENT_BUBBLES = 1001;
		public const uint32 DISPID_IDOMEVENT_CANCELABLE = 1002;
		public const uint32 DISPID_IDOMEVENT_CURRENTTARGET = 1003;
		public const uint32 DISPID_IDOMEVENT_DEFAULTPREVENTED = 1004;
		public const uint32 DISPID_IDOMEVENT_EVENTPHASE = 1005;
		public const uint32 DISPID_IDOMEVENT_TARGET = 1006;
		public const uint32 DISPID_IDOMEVENT_TIMESTAMP = 1007;
		public const uint32 DISPID_IDOMEVENT_TYPE = 1008;
		public const uint32 DISPID_IDOMEVENT_INITEVENT = 1009;
		public const uint32 DISPID_IDOMEVENT_PREVENTDEFAULT = 1010;
		public const uint32 DISPID_IDOMEVENT_STOPPROPAGATION = 1011;
		public const uint32 DISPID_IDOMEVENT_STOPIMMEDIATEPROPAGATION = 1012;
		public const uint32 DISPID_IDOMEVENT_ISTRUSTED = 1013;
		public const uint32 DISPID_IDOMEVENT_CANCELBUBBLE = 1014;
		public const uint32 DISPID_IDOMEVENT_SRCELEMENT = 1015;
		public const uint32 DISPID_IDOMUIEVENT_VIEW = 1026;
		public const uint32 DISPID_IDOMUIEVENT_DETAIL = 1027;
		public const uint32 DISPID_IDOMUIEVENT_INITUIEVENT = 1028;
		public const uint32 DISPID_IDOMMOUSEEVENT_SCREENX = 1051;
		public const uint32 DISPID_IDOMMOUSEEVENT_SCREENY = 1052;
		public const uint32 DISPID_IDOMMOUSEEVENT_CLIENTX = 1053;
		public const uint32 DISPID_IDOMMOUSEEVENT_CLIENTY = 1054;
		public const uint32 DISPID_IDOMMOUSEEVENT_CTRLKEY = 1055;
		public const uint32 DISPID_IDOMMOUSEEVENT_SHIFTKEY = 1056;
		public const uint32 DISPID_IDOMMOUSEEVENT_ALTKEY = 1057;
		public const uint32 DISPID_IDOMMOUSEEVENT_METAKEY = 1058;
		public const uint32 DISPID_IDOMMOUSEEVENT_BUTTON = 1059;
		public const uint32 DISPID_IDOMMOUSEEVENT_RELATEDTARGET = 1060;
		public const uint32 DISPID_IDOMMOUSEEVENT_INITMOUSEEVENT = 1061;
		public const uint32 DISPID_IDOMMOUSEEVENT_GETMODIFIERSTATE = 1062;
		public const uint32 DISPID_IDOMMOUSEEVENT_BUTTONS = 1063;
		public const uint32 DISPID_IDOMMOUSEEVENT_FROMELEMENT = 1064;
		public const uint32 DISPID_IDOMMOUSEEVENT_TOELEMENT = 1065;
		public const uint32 DISPID_IDOMMOUSEEVENT_X = 1066;
		public const uint32 DISPID_IDOMMOUSEEVENT_Y = 1067;
		public const uint32 DISPID_IDOMMOUSEEVENT_OFFSETX = 1068;
		public const uint32 DISPID_IDOMMOUSEEVENT_OFFSETY = 1069;
		public const uint32 DISPID_IDOMMOUSEEVENT_PAGEX = 1070;
		public const uint32 DISPID_IDOMMOUSEEVENT_PAGEY = 1071;
		public const uint32 DISPID_IDOMMOUSEEVENT_LAYERX = 1072;
		public const uint32 DISPID_IDOMMOUSEEVENT_LAYERY = 1073;
		public const uint32 DISPID_IDOMMOUSEEVENT_WHICH = 1074;
		public const uint32 DISPID_IDOMDRAGEVENT_DATATRANSFER = 1401;
		public const uint32 DISPID_IDOMDRAGEVENT_INITDRAGEVENT = 1402;
		public const uint32 DISPID_IDOMMOUSEWHEELEVENT_WHEELDELTA = 1076;
		public const uint32 DISPID_IDOMMOUSEWHEELEVENT_INITMOUSEWHEELEVENT = 1077;
		public const uint32 DISPID_IDOMWHEELEVENT_DELTAX = 1101;
		public const uint32 DISPID_IDOMWHEELEVENT_DELTAY = 1102;
		public const uint32 DISPID_IDOMWHEELEVENT_DELTAZ = 1103;
		public const uint32 DISPID_IDOMWHEELEVENT_DELTAMODE = 1104;
		public const uint32 DISPID_IDOMWHEELEVENT_INITWHEELEVENT = 1105;
		public const uint32 DISPID_IDOMTEXTEVENT_DATA = 1126;
		public const uint32 DISPID_IDOMTEXTEVENT_INPUTMETHOD = 1127;
		public const uint32 DISPID_IDOMTEXTEVENT_INITTEXTEVENT = 1128;
		public const uint32 DISPID_IDOMTEXTEVENT_LOCALE = 1129;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_KEY = 1151;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_LOCATION = 1152;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_CTRLKEY = 1153;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_SHIFTKEY = 1154;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_ALTKEY = 1155;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_METAKEY = 1156;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_REPEAT = 1157;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_GETMODIFIERSTATE = 1158;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_INITKEYBOARDEVENT = 1159;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_KEYCODE = 1160;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_CHARCODE = 1161;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_WHICH = 1162;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_IE9_CHAR = 1163;
		public const uint32 DISPID_IDOMKEYBOARDEVENT_LOCALE = 1164;
		public const uint32 DISPID_IDOMCOMPOSITIONEVENT_DATA = 1176;
		public const uint32 DISPID_IDOMCOMPOSITIONEVENT_INITCOMPOSITIONEVENT = 1177;
		public const uint32 DISPID_IDOMCOMPOSITIONEVENT_LOCALE = 1178;
		public const uint32 DISPID_IDOMMUTATIONEVENT_RELATEDNODE = 1226;
		public const uint32 DISPID_IDOMMUTATIONEVENT_PREVVALUE = 1227;
		public const uint32 DISPID_IDOMMUTATIONEVENT_NEWVALUE = 1228;
		public const uint32 DISPID_IDOMMUTATIONEVENT_ATTRNAME = 1229;
		public const uint32 DISPID_IDOMMUTATIONEVENT_ATTRCHANGE = 1230;
		public const uint32 DISPID_IDOMMUTATIONEVENT_INITMUTATIONEVENT = 1231;
		public const uint32 DISPID_IDOMBEFOREUNLOADEVENT_RETURNVALUE = 1376;
		public const uint32 DISPID_IDOMFOCUSEVENT_RELATEDTARGET = 1251;
		public const uint32 DISPID_IDOMFOCUSEVENT_INITFOCUSEVENT = 1252;
		public const uint32 DISPID_IDOMCUSTOMEVENT_DETAIL = 1201;
		public const uint32 DISPID_IDOMCUSTOMEVENT_INITCUSTOMEVENT = 1202;
		public const uint32 DISPID_ICANVASGRADIENT_ADDCOLORSTOP = 1000;
		public const uint32 DISPID_ICANVASTEXTMETRICS_WIDTH = 1000;
		public const uint32 DISPID_ICANVASIMAGEDATA_WIDTH = 1000;
		public const uint32 DISPID_ICANVASIMAGEDATA_HEIGHT = 1001;
		public const uint32 DISPID_ICANVASIMAGEDATA_DATA = 1002;
		public const uint32 DISPID_ICANVASPIXELARRAY_LENGTH = 1000;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CANVAS = 1000;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_RESTORE = 1001;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SAVE = 1002;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_ROTATE = 1003;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SCALE = 1004;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SETTRANSFORM = 1005;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_TRANSFORM = 1006;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_TRANSLATE = 1007;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_GLOBALALPHA = 1008;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_GLOBALCOMPOSITEOPERATION = 1009;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_FILLSTYLE = 1010;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_STROKESTYLE = 1011;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CREATELINEARGRADIENT = 1012;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CREATERADIALGRADIENT = 1013;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CREATEPATTERN = 1014;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_LINECAP = 1015;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_LINEJOIN = 1016;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_LINEWIDTH = 1017;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_MITERLIMIT = 1018;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SHADOWBLUR = 1019;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SHADOWCOLOR = 1020;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SHADOWOFFSETX = 1021;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_SHADOWOFFSETY = 1022;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CLEARRECT = 1023;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_FILLRECT = 1024;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_STROKERECT = 1025;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_ARC = 1026;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_ARCTO = 1027;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_BEGINPATH = 1028;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_BEZIERCURVETO = 1029;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CLIP = 1030;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CLOSEPATH = 1031;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_FILL = 1032;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_LINETO = 1033;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_MOVETO = 1034;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_QUADRATICCURVETO = 1035;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_RECT = 1036;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_STROKE = 1037;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_ISPOINTINPATH = 1038;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_FONT = 1039;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_TEXTALIGN = 1040;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_TEXTBASELINE = 1041;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_FILLTEXT = 1042;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_MEASURETEXT = 1043;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_STROKETEXT = 1044;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_DRAWIMAGE = 1045;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_CREATEIMAGEDATA = 1046;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_GETIMAGEDATA = 1047;
		public const uint32 DISPID_ICANVASRENDERINGCONTEXT2D_PUTIMAGEDATA = 1048;
		public const uint32 DISPID_IHTMLCANVASELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLCANVASELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLCANVASELEMENT_GETCONTEXT = 1001;
		public const uint32 DISPID_IHTMLCANVASELEMENT_TODATAURL = 1002;
		public const uint32 DISPID_IDOMPROGRESSEVENT_LENGTHCOMPUTABLE = 1551;
		public const uint32 DISPID_IDOMPROGRESSEVENT_LOADED = 1552;
		public const uint32 DISPID_IDOMPROGRESSEVENT_TOTAL = 1553;
		public const uint32 DISPID_IDOMPROGRESSEVENT_INITPROGRESSEVENT = 1554;
		public const uint32 DISPID_IDOMMESSAGEEVENT_DATA = 1326;
		public const uint32 DISPID_IDOMMESSAGEEVENT_ORIGIN = 1327;
		public const uint32 DISPID_IDOMMESSAGEEVENT_SOURCE = 1328;
		public const uint32 DISPID_IDOMMESSAGEEVENT_INITMESSAGEEVENT = 1329;
		public const uint32 DISPID_IDOMSITEMODEEVENT_BUTTONID = 1301;
		public const uint32 DISPID_IDOMSITEMODEEVENT_ACTIONURL = 1302;
		public const uint32 DISPID_IDOMSTORAGEEVENT_KEY = 1351;
		public const uint32 DISPID_IDOMSTORAGEEVENT_OLDVALUE = 1352;
		public const uint32 DISPID_IDOMSTORAGEEVENT_NEWVALUE = 1353;
		public const uint32 DISPID_IDOMSTORAGEEVENT_URL = 1354;
		public const uint32 DISPID_IDOMSTORAGEEVENT_STORAGEAREA = 1355;
		public const uint32 DISPID_IDOMSTORAGEEVENT_INITSTORAGEEVENT = 1356;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_READYSTATE = 1002;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_RESPONSEBODY = 1003;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_RESPONSETEXT = 1004;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_RESPONSEXML = 1005;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_STATUS = 1006;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_STATUSTEXT = 1007;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_ABORT = 1009;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_OPEN = 1010;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_SEND = 1011;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_GETALLRESPONSEHEADERS = 1012;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_GETRESPONSEHEADER = 1013;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST_SETREQUESTHEADER = 1014;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST2_TIMEOUT = 1015;
		public const uint32 DISPID_IHTMLXMLHTTPREQUEST2_ONTIMEOUT = 71648;
		public const uint32 DISPID_IHTMLXMLHTTPREQUESTFACTORY_CREATE = 0;
		public const uint32 DISPID_HTMLXMLHTTPREQUESTEVENTS_ONTIMEOUT = 1016;
		public const uint32 DISPID_HTMLXMLHTTPREQUESTEVENTS_ONREADYSTATECHANGE = 1008;
		public const uint32 DISPID_ISVGANGLE_UNITTYPE = 1000;
		public const uint32 DISPID_ISVGANGLE_VALUE = 1001;
		public const uint32 DISPID_ISVGANGLE_VALUEINSPECIFIEDUNITS = 1002;
		public const uint32 DISPID_ISVGANGLE_VALUEASSTRING = 1003;
		public const uint32 DISPID_ISVGANGLE_NEWVALUESPECIFIEDUNITS = 1004;
		public const uint32 DISPID_ISVGANGLE_CONVERTTOSPECIFIEDUNITS = 1005;
		public const uint32 DISPID_ISVGSTYLABLE_CLASSNAME = 1001;
		public const uint32 DISPID_ISVGLOCATABLE_NEARESTVIEWPORTELEMENT = 1002;
		public const uint32 DISPID_ISVGLOCATABLE_FARTHESTVIEWPORTELEMENT = 1003;
		public const uint32 DISPID_ISVGLOCATABLE_GETBBOX = 1004;
		public const uint32 DISPID_ISVGLOCATABLE_GETCTM = 1005;
		public const uint32 DISPID_ISVGLOCATABLE_GETSCREENCTM = 1006;
		public const uint32 DISPID_ISVGLOCATABLE_GETTRANSFORMTOELEMENT = 1007;
		public const uint32 DISPID_ISVGTRANSFORMABLE_TRANSFORM = 1009;
		public const uint32 DISPID_ISVGTESTS_REQUIREDFEATURES = 1011;
		public const uint32 DISPID_ISVGTESTS_REQUIREDEXTENSIONS = 1013;
		public const uint32 DISPID_ISVGTESTS_SYSTEMLANGUAGE = 1015;
		public const uint32 DISPID_ISVGTESTS_HASEXTENSION = 1016;
		public const uint32 DISPID_ISVGLANGSPACE_XMLLANG = 1017;
		public const uint32 DISPID_ISVGLANGSPACE_XMLSPACE = 1018;
		public const uint32 DISPID_ISVGEXTERNALRESOURCESREQUIRED_EXTERNALRESOURCESREQUIRED = 1020;
		public const uint32 DISPID_ISVGFITTOVIEWBOX_VIEWBOX = 1022;
		public const uint32 DISPID_ISVGFITTOVIEWBOX_PRESERVEASPECTRATIO = 1024;
		public const uint32 DISPID_ISVGZOOMANDPAN_ZOOMANDPAN = 1025;
		public const uint32 DISPID_ISVGURIREFERENCE_HREF = 1026;
		public const uint32 DISPID_ISVGANIMATEDANGLE_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDANGLE_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDTRANSFORMLIST_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDTRANSFORMLIST_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDBOOLEAN_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDBOOLEAN_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDENUMERATION_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDENUMERATION_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDINTEGER_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDINTEGER_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDLENGTH_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDLENGTH_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDLENGTHLIST_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDLENGTHLIST_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDNUMBER_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDNUMBER_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDNUMBERLIST_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDNUMBERLIST_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDRECT_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDRECT_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGANIMATEDSTRING_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDSTRING_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGCLIPPATHELEMENT_CLIPPATHUNITS = 1051;
		public const uint32 DISPID_ISVGDOCUMENT_ROOTELEMENT = 1116;
		public const uint32 DISPID_IGETSVGDOCUMENT_GETSVGDOCUMENT = 65615;
		public const uint32 DISPID_ISVGELEMENT_XMLBASE = 1032;
		public const uint32 DISPID_ISVGELEMENT_OWNERSVGELEMENT = 1033;
		public const uint32 DISPID_ISVGELEMENT_VIEWPORTELEMENT = 1034;
		public const uint32 DISPID_ISVGELEMENT_FOCUSABLE = 1036;
		public const uint32 DISPID_ISVGLENGTH_UNITTYPE = 1000;
		public const uint32 DISPID_ISVGLENGTH_VALUE = 1001;
		public const uint32 DISPID_ISVGLENGTH_VALUEINSPECIFIEDUNITS = 1002;
		public const uint32 DISPID_ISVGLENGTH_VALUEASSTRING = 1003;
		public const uint32 DISPID_ISVGLENGTH_NEWVALUESPECIFIEDUNITS = 1004;
		public const uint32 DISPID_ISVGLENGTH_CONVERTTOSPECIFIEDUNITS = 1005;
		public const uint32 DISPID_ISVGLENGTHLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGLENGTHLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGLENGTHLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGLENGTHLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGLENGTHLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGLENGTHLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGLENGTHLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGLENGTHLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGMATRIX_A = 1000;
		public const uint32 DISPID_ISVGMATRIX_B = 1001;
		public const uint32 DISPID_ISVGMATRIX_C = 1002;
		public const uint32 DISPID_ISVGMATRIX_D = 1003;
		public const uint32 DISPID_ISVGMATRIX_E = 1004;
		public const uint32 DISPID_ISVGMATRIX_F = 1005;
		public const uint32 DISPID_ISVGMATRIX_MULTIPLY = 1006;
		public const uint32 DISPID_ISVGMATRIX_INVERSE = 1007;
		public const uint32 DISPID_ISVGMATRIX_TRANSLATE = 1008;
		public const uint32 DISPID_ISVGMATRIX_SCALE = 1009;
		public const uint32 DISPID_ISVGMATRIX_SCALENONUNIFORM = 1010;
		public const uint32 DISPID_ISVGMATRIX_ROTATE = 1011;
		public const uint32 DISPID_ISVGMATRIX_ROTATEFROMVECTOR = 1012;
		public const uint32 DISPID_ISVGMATRIX_FLIPX = 1013;
		public const uint32 DISPID_ISVGMATRIX_FLIPY = 1014;
		public const uint32 DISPID_ISVGMATRIX_SKEWX = 1015;
		public const uint32 DISPID_ISVGMATRIX_SKEWY = 1016;
		public const uint32 DISPID_ISVGNUMBER_VALUE = 1000;
		public const uint32 DISPID_ISVGNUMBERLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGNUMBERLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGNUMBERLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGNUMBERLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGNUMBERLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGNUMBERLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGNUMBERLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGNUMBERLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGPATTERNELEMENT_PATTERNUNITS = 1051;
		public const uint32 DISPID_ISVGPATTERNELEMENT_PATTERNCONTENTUNITS = 1053;
		public const uint32 DISPID_ISVGPATTERNELEMENT_PATTERNTRANSFORM = 1055;
		public const uint32 DISPID_ISVGPATTERNELEMENT_X = 1057;
		public const uint32 DISPID_ISVGPATTERNELEMENT_Y = 1059;
		public const uint32 DISPID_ISVGPATTERNELEMENT_WIDTH = 1061;
		public const uint32 DISPID_ISVGPATTERNELEMENT_HEIGHT = 1063;
		public const uint32 DISPID_ISVGPATHSEG_PATHSEGTYPE = 1000;
		public const uint32 DISPID_ISVGPATHSEG_PATHSEGTYPEASLETTER = 1001;
		public const uint32 DISPID_ISVGPATHSEGARCABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGARCABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGARCABS_R1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGARCABS_R2 = 1023;
		public const uint32 DISPID_ISVGPATHSEGARCABS_ANGLE = 1024;
		public const uint32 DISPID_ISVGPATHSEGARCABS_LARGEARCFLAG = 1025;
		public const uint32 DISPID_ISVGPATHSEGARCABS_SWEEPFLAG = 1026;
		public const uint32 DISPID_ISVGPATHSEGARCREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGARCREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGARCREL_R1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGARCREL_R2 = 1023;
		public const uint32 DISPID_ISVGPATHSEGARCREL_ANGLE = 1024;
		public const uint32 DISPID_ISVGPATHSEGARCREL_LARGEARCFLAG = 1025;
		public const uint32 DISPID_ISVGPATHSEGARCREL_SWEEPFLAG = 1026;
		public const uint32 DISPID_ISVGPATHSEGMOVETOABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGMOVETOABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGMOVETOREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGMOVETOREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGLINETOABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGLINETOABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGLINETOREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGLINETOREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_X1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_Y1 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_X2 = 1024;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICABS_Y2 = 1025;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_X1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_Y1 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_X2 = 1024;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICREL_Y2 = 1025;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHABS_X2 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHABS_Y2 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHREL_X2 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOCUBICSMOOTHREL_Y2 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICABS_X1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICABS_Y1 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICREL_X1 = 1022;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICREL_Y1 = 1023;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICSMOOTHABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICSMOOTHABS_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICSMOOTHREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGCURVETOQUADRATICSMOOTHREL_Y = 1021;
		public const uint32 DISPID_ISVGPATHSEGLINETOHORIZONTALABS_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGLINETOHORIZONTALREL_X = 1020;
		public const uint32 DISPID_ISVGPATHSEGLINETOVERTICALABS_Y = 1020;
		public const uint32 DISPID_ISVGPATHSEGLINETOVERTICALREL_Y = 1020;
		public const uint32 DISPID_ISVGPATHSEGLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGPATHSEGLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGPATHSEGLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGPATHSEGLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGPATHSEGLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGPATHSEGLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGPATHSEGLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGPATHSEGLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGPOINT_X = 1000;
		public const uint32 DISPID_ISVGPOINT_Y = 1001;
		public const uint32 DISPID_ISVGPOINT_MATRIXTRANSFORM = 1002;
		public const uint32 DISPID_ISVGPOINTLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGPOINTLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGPOINTLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGPOINTLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGPOINTLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGPOINTLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGPOINTLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGPOINTLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGRECT_X = 1000;
		public const uint32 DISPID_ISVGRECT_Y = 1001;
		public const uint32 DISPID_ISVGRECT_WIDTH = 1002;
		public const uint32 DISPID_ISVGRECT_HEIGHT = 1003;
		public const uint32 DISPID_ISVGSTRINGLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGSTRINGLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGSTRINGLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGSTRINGLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGSTRINGLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGSTRINGLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGSTRINGLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGSTRINGLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGTRANSFORM_TYPE = 1000;
		public const uint32 DISPID_ISVGTRANSFORM_MATRIX = 1001;
		public const uint32 DISPID_ISVGTRANSFORM_ANGLE = 1002;
		public const uint32 DISPID_ISVGTRANSFORM_SETMATRIX = 1003;
		public const uint32 DISPID_ISVGTRANSFORM_SETTRANSLATE = 1004;
		public const uint32 DISPID_ISVGTRANSFORM_SETSCALE = 1005;
		public const uint32 DISPID_ISVGTRANSFORM_SETROTATE = 1006;
		public const uint32 DISPID_ISVGTRANSFORM_SETSKEWX = 1007;
		public const uint32 DISPID_ISVGTRANSFORM_SETSKEWY = 1008;
		public const uint32 DISPID_ISVGSVGELEMENT_X = 1052;
		public const uint32 DISPID_ISVGSVGELEMENT_Y = 1054;
		public const uint32 DISPID_ISVGSVGELEMENT_WIDTH = 1056;
		public const uint32 DISPID_ISVGSVGELEMENT_HEIGHT = 1058;
		public const uint32 DISPID_ISVGSVGELEMENT_CONTENTSCRIPTTYPE = 1059;
		public const uint32 DISPID_ISVGSVGELEMENT_CONTENTSTYLETYPE = 1060;
		public const uint32 DISPID_ISVGSVGELEMENT_VIEWPORT = 1061;
		public const uint32 DISPID_ISVGSVGELEMENT_PIXELUNITTOMILLIMETERX = 1062;
		public const uint32 DISPID_ISVGSVGELEMENT_PIXELUNITTOMILLIMETERY = 1063;
		public const uint32 DISPID_ISVGSVGELEMENT_SCREENPIXELTOMILLIMETERX = 1064;
		public const uint32 DISPID_ISVGSVGELEMENT_SCREENPIXELTOMILLIMETERY = 1065;
		public const uint32 DISPID_ISVGSVGELEMENT_USECURRENTVIEW = 1066;
		public const uint32 DISPID_ISVGSVGELEMENT_CURRENTVIEW = 1067;
		public const uint32 DISPID_ISVGSVGELEMENT_CURRENTSCALE = 1068;
		public const uint32 DISPID_ISVGSVGELEMENT_CURRENTTRANSLATE = 1069;
		public const uint32 DISPID_ISVGSVGELEMENT_SUSPENDREDRAW = 1070;
		public const uint32 DISPID_ISVGSVGELEMENT_UNSUSPENDREDRAW = 1071;
		public const uint32 DISPID_ISVGSVGELEMENT_UNSUSPENDREDRAWALL = 1072;
		public const uint32 DISPID_ISVGSVGELEMENT_FORCEREDRAW = 1073;
		public const uint32 DISPID_ISVGSVGELEMENT_PAUSEANIMATIONS = 1074;
		public const uint32 DISPID_ISVGSVGELEMENT_UNPAUSEANIMATIONS = 1075;
		public const uint32 DISPID_ISVGSVGELEMENT_ANIMATIONSPAUSED = 1076;
		public const uint32 DISPID_ISVGSVGELEMENT_GETCURRENTTIME = 1077;
		public const uint32 DISPID_ISVGSVGELEMENT_SETCURRENTTIME = 1078;
		public const uint32 DISPID_ISVGSVGELEMENT_GETINTERSECTIONLIST = 1079;
		public const uint32 DISPID_ISVGSVGELEMENT_GETENCLOSURELIST = 1080;
		public const uint32 DISPID_ISVGSVGELEMENT_CHECKINTERSECTION = 1081;
		public const uint32 DISPID_ISVGSVGELEMENT_CHECKENCLOSURE = 1082;
		public const uint32 DISPID_ISVGSVGELEMENT_DESELECTALL = 1083;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGNUMBER = 1084;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGLENGTH = 1085;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGANGLE = 1086;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGPOINT = 1087;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGMATRIX = 1088;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGRECT = 1089;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGTRANSFORM = 1090;
		public const uint32 DISPID_ISVGSVGELEMENT_CREATESVGTRANSFORMFROMMATRIX = 1091;
		public const uint32 DISPID_ISVGSVGELEMENT_GETELEMENTBYID = 1092;
		public const uint32 DISPID_ISVGUSEELEMENT_X = 1052;
		public const uint32 DISPID_ISVGUSEELEMENT_Y = 1054;
		public const uint32 DISPID_ISVGUSEELEMENT_WIDTH = 1056;
		public const uint32 DISPID_ISVGUSEELEMENT_HEIGHT = 1058;
		public const uint32 DISPID_ISVGUSEELEMENT_INSTANCEROOT = 1059;
		public const uint32 DISPID_ISVGUSEELEMENT_ANIMATEDINSTANCEROOT = 1060;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESAPPLIEDCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESAPPLIEDCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESAPPLIEDCOLLECTION_PROPERTYAPPLIEDBY = 1002;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESAPPLIEDCOLLECTION_PROPERTYAPPLIEDTRACE = 1004;
		public const uint32 DISPID_IHTMLSTYLESHEETRULESAPPLIEDCOLLECTION_PROPERTYAPPLIEDTRACELENGTH = 1005;
		public const uint32 DISPID_IRULESAPPLIED_ELEMENT = 1001;
		public const uint32 DISPID_IRULESAPPLIED_INLINESTYLES = 1002;
		public const uint32 DISPID_IRULESAPPLIED_APPLIEDRULES = 1003;
		public const uint32 DISPID_IRULESAPPLIED_PROPERTYISINLINE = 1004;
		public const uint32 DISPID_IRULESAPPLIED_PROPERTYISINHERITABLE = 1005;
		public const uint32 DISPID_IRULESAPPLIED_HASINHERITABLEPROPERTY = 1006;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_LENGTH = 1001;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_ELEMENT = 1002;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_PROPERTYINHERITEDFROM = 1003;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_PROPERTYCOUNT = 1004;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_PROPERTY = 1005;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_PROPERTYINHERITEDTRACE = 1006;
		public const uint32 DISPID_IRULESAPPLIEDCOLLECTION_PROPERTYINHERITEDTRACELENGTH = 1007;
		public const uint32 DISPID_ISVGTRANSFORMLIST_NUMBEROFITEMS = 1000;
		public const uint32 DISPID_ISVGTRANSFORMLIST_CLEAR = 1001;
		public const uint32 DISPID_ISVGTRANSFORMLIST_INITIALIZE = 1002;
		public const uint32 DISPID_ISVGTRANSFORMLIST_GETITEM = 1003;
		public const uint32 DISPID_ISVGTRANSFORMLIST_INSERTITEMBEFORE = 1004;
		public const uint32 DISPID_ISVGTRANSFORMLIST_REPLACEITEM = 1005;
		public const uint32 DISPID_ISVGTRANSFORMLIST_REMOVEITEM = 1006;
		public const uint32 DISPID_ISVGTRANSFORMLIST_APPENDITEM = 1007;
		public const uint32 DISPID_ISVGTRANSFORMLIST_CREATESVGTRANSFORMFROMMATRIX = 1008;
		public const uint32 DISPID_ISVGTRANSFORMLIST_CONSOLIDATE = 1009;
		public const uint32 DISPID_ISVGANIMATEDPOINTS_POINTS = 1050;
		public const uint32 DISPID_ISVGANIMATEDPOINTS_ANIMATEDPOINTS = 1052;
		public const uint32 DISPID_ISVGCIRCLEELEMENT_CX = 1052;
		public const uint32 DISPID_ISVGCIRCLEELEMENT_CY = 1054;
		public const uint32 DISPID_ISVGCIRCLEELEMENT_R = 1056;
		public const uint32 DISPID_ISVGELLIPSEELEMENT_CX = 1052;
		public const uint32 DISPID_ISVGELLIPSEELEMENT_CY = 1054;
		public const uint32 DISPID_ISVGELLIPSEELEMENT_RX = 1056;
		public const uint32 DISPID_ISVGELLIPSEELEMENT_RY = 1058;
		public const uint32 DISPID_ISVGLINEELEMENT_X1 = 1052;
		public const uint32 DISPID_ISVGLINEELEMENT_Y1 = 1054;
		public const uint32 DISPID_ISVGLINEELEMENT_X2 = 1056;
		public const uint32 DISPID_ISVGLINEELEMENT_Y2 = 1058;
		public const uint32 DISPID_ISVGRECTELEMENT_X = 1052;
		public const uint32 DISPID_ISVGRECTELEMENT_Y = 1054;
		public const uint32 DISPID_ISVGRECTELEMENT_WIDTH = 1056;
		public const uint32 DISPID_ISVGRECTELEMENT_HEIGHT = 1058;
		public const uint32 DISPID_ISVGRECTELEMENT_RX = 1060;
		public const uint32 DISPID_ISVGRECTELEMENT_RY = 1062;
		public const uint32 DISPID_ISVGANIMATEDPATHDATA_PATHSEGLIST = 1052;
		public const uint32 DISPID_ISVGANIMATEDPATHDATA_NORMALIZEDPATHSEGLIST = 1076;
		public const uint32 DISPID_ISVGANIMATEDPATHDATA_ANIMATEDPATHSEGLIST = 1077;
		public const uint32 DISPID_ISVGANIMATEDPATHDATA_ANIMATEDNORMALIZEDPATHSEGLIST = 1078;
		public const uint32 DISPID_ISVGPATHELEMENT_PATHLENGTH = 1053;
		public const uint32 DISPID_ISVGPATHELEMENT_GETTOTALLENGTH = 1073;
		public const uint32 DISPID_ISVGPATHELEMENT_GETPOINTATLENGTH = 1074;
		public const uint32 DISPID_ISVGPATHELEMENT_GETPATHSEGATLENGTH = 1075;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCLOSEPATH = 1054;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGMOVETOABS = 1055;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGMOVETOREL = 1056;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOABS = 1057;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOREL = 1058;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOCUBICABS = 1059;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOCUBICREL = 1060;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOQUADRATICABS = 1061;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOQUADRATICREL = 1062;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGARCABS = 1063;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGARCREL = 1064;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOHORIZONTALABS = 1065;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOHORIZONTALREL = 1066;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOVERTICALABS = 1067;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGLINETOVERTICALREL = 1068;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOCUBICSMOOTHABS = 1069;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOCUBICSMOOTHREL = 1070;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOQUADRATICSMOOTHABS = 1071;
		public const uint32 DISPID_ISVGPATHELEMENT_CREATESVGPATHSEGCURVETOQUADRATICSMOOTHREL = 1072;
		public const uint32 DISPID_ISVGPRESERVEASPECTRATIO_ALIGN = 1000;
		public const uint32 DISPID_ISVGPRESERVEASPECTRATIO_MEETORSLICE = 1001;
		public const uint32 DISPID_ISVGANIMATEDPRESERVEASPECTRATIO_BASEVAL = 1000;
		public const uint32 DISPID_ISVGANIMATEDPRESERVEASPECTRATIO_ANIMVAL = 1001;
		public const uint32 DISPID_ISVGIMAGEELEMENT_X = 1051;
		public const uint32 DISPID_ISVGIMAGEELEMENT_Y = 1053;
		public const uint32 DISPID_ISVGIMAGEELEMENT_WIDTH = 1055;
		public const uint32 DISPID_ISVGIMAGEELEMENT_HEIGHT = 1057;
		public const uint32 DISPID_ISVGSTOPELEMENT_OFFSET = 1051;
		public const uint32 DISPID_ISVGGRADIENTELEMENT_GRADIENTUNITS = 1051;
		public const uint32 DISPID_ISVGGRADIENTELEMENT_GRADIENTTRANSFORM = 1053;
		public const uint32 DISPID_ISVGGRADIENTELEMENT_SPREADMETHOD = 1055;
		public const uint32 DISPID_ISVGLINEARGRADIENTELEMENT_X1 = 1071;
		public const uint32 DISPID_ISVGLINEARGRADIENTELEMENT_Y1 = 1073;
		public const uint32 DISPID_ISVGLINEARGRADIENTELEMENT_X2 = 1075;
		public const uint32 DISPID_ISVGLINEARGRADIENTELEMENT_Y2 = 1077;
		public const uint32 DISPID_ISVGRADIALGRADIENTELEMENT_CX = 1071;
		public const uint32 DISPID_ISVGRADIALGRADIENTELEMENT_CY = 1073;
		public const uint32 DISPID_ISVGRADIALGRADIENTELEMENT_R = 1075;
		public const uint32 DISPID_ISVGRADIALGRADIENTELEMENT_FX = 1077;
		public const uint32 DISPID_ISVGRADIALGRADIENTELEMENT_FY = 1079;
		public const uint32 DISPID_ISVGMASKELEMENT_MASKUNITS = 1051;
		public const uint32 DISPID_ISVGMASKELEMENT_MASKCONTENTUNITS = 1053;
		public const uint32 DISPID_ISVGMASKELEMENT_X = 1055;
		public const uint32 DISPID_ISVGMASKELEMENT_Y = 1057;
		public const uint32 DISPID_ISVGMASKELEMENT_WIDTH = 1059;
		public const uint32 DISPID_ISVGMASKELEMENT_HEIGHT = 1061;
		public const uint32 DISPID_ISVGMARKERELEMENT_REFX = 1051;
		public const uint32 DISPID_ISVGMARKERELEMENT_REFY = 1053;
		public const uint32 DISPID_ISVGMARKERELEMENT_MARKERUNITS = 1055;
		public const uint32 DISPID_ISVGMARKERELEMENT_MARKERWIDTH = 1057;
		public const uint32 DISPID_ISVGMARKERELEMENT_MARKERHEIGHT = 1059;
		public const uint32 DISPID_ISVGMARKERELEMENT_ORIENTTYPE = 1061;
		public const uint32 DISPID_ISVGMARKERELEMENT_ORIENTANGLE = 1062;
		public const uint32 DISPID_ISVGMARKERELEMENT_SETORIENTTOAUTO = 1063;
		public const uint32 DISPID_ISVGMARKERELEMENT_SETORIENTTOANGLE = 1064;
		public const uint32 DISPID_ISVGZOOMEVENT_ZOOMRECTSCREEN = 1276;
		public const uint32 DISPID_ISVGZOOMEVENT_PREVIOUSSCALE = 1277;
		public const uint32 DISPID_ISVGZOOMEVENT_PREVIOUSTRANSLATE = 1278;
		public const uint32 DISPID_ISVGZOOMEVENT_NEWSCALE = 1279;
		public const uint32 DISPID_ISVGZOOMEVENT_NEWTRANSLATE = 1280;
		public const uint32 DISPID_ISVGAELEMENT_TARGET = 1052;
		public const uint32 DISPID_ISVGVIEWELEMENT_VIEWTARGET = 1052;
		public const uint32 DISPID_IHTMLMEDIAERROR_CODE = 1000;
		public const uint32 DISPID_IHTMLTIMERANGES_LENGTH = 1000;
		public const uint32 DISPID_IHTMLTIMERANGES_START = 1001;
		public const uint32 DISPID_IHTMLTIMERANGES_END = 1002;
		public const uint32 DISPID_IHTMLTIMERANGES2_STARTDOUBLE = 1003;
		public const uint32 DISPID_IHTMLTIMERANGES2_ENDDOUBLE = 1004;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_ERROR = 1000;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_SRC = 1001;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_CURRENTSRC = 1002;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_NETWORKSTATE = 1003;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PRELOAD = 1004;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_BUFFERED = 1005;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_LOAD = 1006;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_CANPLAYTYPE = 1007;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_SEEKING = 1009;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_CURRENTTIME = 1010;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_INITIALTIME = 1011;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_DURATION = 1012;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PAUSED = 1013;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_DEFAULTPLAYBACKRATE = 1014;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PLAYBACKRATE = 1015;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PLAYED = 1016;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_SEEKABLE = 1017;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_ENDED = 1018;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_AUTOPLAY = 1019;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_LOOP = 1020;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PLAY = 1021;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_PAUSE = 1022;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_CONTROLS = 1023;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_VOLUME = 1024;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_MUTED = 1025;
		public const uint32 DISPID_IHTMLMEDIAELEMENT_AUTOBUFFER = 1026;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_CURRENTTIMEDOUBLE = 1027;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_INITIALTIMEDOUBLE = 1028;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_DURATIONDOUBLE = 1029;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_DEFAULTPLAYBACKRATEDOUBLE = 1030;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_PLAYBACKRATEDOUBLE = 1031;
		public const uint32 DISPID_IHTMLMEDIAELEMENT2_VOLUMEDOUBLE = 1032;
		public const uint32 DISPID_IHTMLMSMEDIAELEMENT_MSPLAYTODISABLED = 1033;
		public const uint32 DISPID_IHTMLMSMEDIAELEMENT_MSPLAYTOPRIMARY = 1034;
		public const uint32 DISPID_IHTMLSOURCEELEMENT_SRC = 1000;
		public const uint32 DISPID_IHTMLSOURCEELEMENT_TYPE = 1001;
		public const uint32 DISPID_IHTMLSOURCEELEMENT_MEDIA = 1002;
		public const uint32 DISPID_IHTMLVIDEOELEMENT_WIDTH = 65541;
		public const uint32 DISPID_IHTMLVIDEOELEMENT_HEIGHT = 65542;
		public const uint32 DISPID_IHTMLVIDEOELEMENT_VIDEOWIDTH = 1050;
		public const uint32 DISPID_IHTMLVIDEOELEMENT_VIDEOHEIGHT = 1051;
		public const uint32 DISPID_IHTMLVIDEOELEMENT_POSTER = 1052;
		public const uint32 DISPID_IHTMLAUDIOELEMENTFACTORY_CREATE = 0;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_CORRESPONDINGELEMENT = 1000;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_CORRESPONDINGUSEELEMENT = 1001;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_PARENTNODE = 1002;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_CHILDNODES = 1003;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_FIRSTCHILD = 1004;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_LASTCHILD = 1005;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_PREVIOUSSIBLING = 1006;
		public const uint32 DISPID_ISVGELEMENTINSTANCE_NEXTSIBLING = 1007;
		public const uint32 DISPID_ISVGELEMENTINSTANCELIST_LENGTH = 1000;
		public const uint32 DISPID_ISVGELEMENTINSTANCELIST_ITEM = 1001;
		public const uint32 DISPID_IDOMEXCEPTION_CODE = 1000;
		public const uint32 DISPID_IDOMEXCEPTION_MESSAGE = 1001;
		public const uint32 DISPID_IRANGEEXCEPTION_CODE = 1000;
		public const uint32 DISPID_IRANGEEXCEPTION_MESSAGE = 1001;
		public const uint32 DISPID_ISVGEXCEPTION_CODE = 1000;
		public const uint32 DISPID_ISVGEXCEPTION_MESSAGE = 1001;
		public const uint32 DISPID_IEVENTEXCEPTION_CODE = 1000;
		public const uint32 DISPID_IEVENTEXCEPTION_MESSAGE = 1001;
		public const uint32 DISPID_ISVGSCRIPTELEMENT_TYPE = 1052;
		public const uint32 DISPID_ISVGSTYLEELEMENT_TYPE = 1051;
		public const uint32 DISPID_ISVGSTYLEELEMENT_MEDIA = 1052;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_TEXTLENGTH = 1053;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_LENGTHADJUST = 1051;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETNUMBEROFCHARS = 1054;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETCOMPUTEDTEXTLENGTH = 1055;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETSUBSTRINGLENGTH = 1056;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETSTARTPOSITIONOFCHAR = 1057;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETENDPOSITIONOFCHAR = 1058;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETEXTENTOFCHAR = 1059;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETROTATIONOFCHAR = 1060;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_GETCHARNUMATPOSITION = 1061;
		public const uint32 DISPID_ISVGTEXTCONTENTELEMENT_SELECTSUBSTRING = 1062;
		public const uint32 DISPID_ISVGTEXTPOSITIONINGELEMENT_X = 1071;
		public const uint32 DISPID_ISVGTEXTPOSITIONINGELEMENT_Y = 1073;
		public const uint32 DISPID_ISVGTEXTPOSITIONINGELEMENT_DX = 1075;
		public const uint32 DISPID_ISVGTEXTPOSITIONINGELEMENT_DY = 1077;
		public const uint32 DISPID_ISVGTEXTPOSITIONINGELEMENT_ROTATE = 1079;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_NAME = 1000;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_ENTITIES = 1001;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_NOTATIONS = 1002;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_PUBLICID = 1003;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_SYSTEMID = 1004;
		public const uint32 DISPID_IDOMDOCUMENTTYPE_INTERNALSUBSET = 1005;
		public const uint32 DISPID_IDOMNODEITERATOR_ROOT = 1000;
		public const uint32 DISPID_IDOMNODEITERATOR_WHATTOSHOW = 1001;
		public const uint32 DISPID_IDOMNODEITERATOR_FILTER = 1002;
		public const uint32 DISPID_IDOMNODEITERATOR_EXPANDENTITYREFERENCES = 1003;
		public const uint32 DISPID_IDOMNODEITERATOR_NEXTNODE = 1010;
		public const uint32 DISPID_IDOMNODEITERATOR_PREVIOUSNODE = 1011;
		public const uint32 DISPID_IDOMNODEITERATOR_DETACH = 1012;
		public const uint32 DISPID_IDOMTREEWALKER_ROOT = 1000;
		public const uint32 DISPID_IDOMTREEWALKER_WHATTOSHOW = 1001;
		public const uint32 DISPID_IDOMTREEWALKER_FILTER = 1002;
		public const uint32 DISPID_IDOMTREEWALKER_EXPANDENTITYREFERENCES = 1003;
		public const uint32 DISPID_IDOMTREEWALKER_CURRENTNODE = 1020;
		public const uint32 DISPID_IDOMTREEWALKER_PARENTNODE = 1021;
		public const uint32 DISPID_IDOMTREEWALKER_FIRSTCHILD = 1022;
		public const uint32 DISPID_IDOMTREEWALKER_LASTCHILD = 1023;
		public const uint32 DISPID_IDOMTREEWALKER_PREVIOUSSIBLING = 1024;
		public const uint32 DISPID_IDOMTREEWALKER_NEXTSIBLING = 1025;
		public const uint32 DISPID_IDOMTREEWALKER_PREVIOUSNODE = 1026;
		public const uint32 DISPID_IDOMTREEWALKER_NEXTNODE = 1027;
		public const uint32 DISPID_IDOMPROCESSINGINSTRUCTION_TARGET = 1000;
		public const uint32 DISPID_IDOMPROCESSINGINSTRUCTION_DATA = 1001;
		public const uint32 DISPID_IHTMLPERFORMANCE_NAVIGATION = 1000;
		public const uint32 DISPID_IHTMLPERFORMANCE_TIMING = 1001;
		public const uint32 DISPID_IHTMLPERFORMANCE_TOSTRING = 1002;
		public const uint32 DISPID_IHTMLPERFORMANCE_TOJSON = 1003;
		public const uint32 DISPID_IHTMLPERFORMANCENAVIGATION_TYPE = 1000;
		public const uint32 DISPID_IHTMLPERFORMANCENAVIGATION_REDIRECTCOUNT = 1001;
		public const uint32 DISPID_IHTMLPERFORMANCENAVIGATION_TOSTRING = 1002;
		public const uint32 DISPID_IHTMLPERFORMANCENAVIGATION_TOJSON = 1003;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_NAVIGATIONSTART = 1000;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_UNLOADEVENTSTART = 1001;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_UNLOADEVENTEND = 1002;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_REDIRECTSTART = 1003;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_REDIRECTEND = 1004;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_FETCHSTART = 1005;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMAINLOOKUPSTART = 1006;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMAINLOOKUPEND = 1007;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_CONNECTSTART = 1008;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_CONNECTEND = 1009;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_REQUESTSTART = 1010;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_RESPONSESTART = 1011;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_RESPONSEEND = 1012;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMLOADING = 1013;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMINTERACTIVE = 1014;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMCONTENTLOADEDEVENTSTART = 1015;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMCONTENTLOADEDEVENTEND = 1016;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_DOMCOMPLETE = 1017;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_LOADEVENTSTART = 1018;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_LOADEVENTEND = 1019;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_MSFIRSTPAINT = 1020;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_TOSTRING = 1021;
		public const uint32 DISPID_IHTMLPERFORMANCETIMING_TOJSON = 1022;
		public const uint32 DISPID_ITEMPLATEPRINTER_STARTDOC = 1;
		public const uint32 DISPID_ITEMPLATEPRINTER_STOPDOC = 2;
		public const uint32 DISPID_ITEMPLATEPRINTER_PRINTBLANKPAGE = 3;
		public const uint32 DISPID_ITEMPLATEPRINTER_PRINTPAGE = 4;
		public const uint32 DISPID_ITEMPLATEPRINTER_ENSUREPRINTDIALOGDEFAULTS = 5;
		public const uint32 DISPID_ITEMPLATEPRINTER_SHOWPRINTDIALOG = 6;
		public const uint32 DISPID_ITEMPLATEPRINTER_SHOWPAGESETUPDIALOG = 7;
		public const uint32 DISPID_ITEMPLATEPRINTER_PRINTNONNATIVE = 8;
		public const uint32 DISPID_ITEMPLATEPRINTER_PRINTNONNATIVEFRAMES = 9;
		public const uint32 DISPID_ITEMPLATEPRINTER_FRAMESETDOCUMENT = 10;
		public const uint32 DISPID_ITEMPLATEPRINTER_FRAMEACTIVE = 11;
		public const uint32 DISPID_ITEMPLATEPRINTER_FRAMEASSHOWN = 12;
		public const uint32 DISPID_ITEMPLATEPRINTER_SELECTION = 13;
		public const uint32 DISPID_ITEMPLATEPRINTER_SELECTEDPAGES = 14;
		public const uint32 DISPID_ITEMPLATEPRINTER_CURRENTPAGE = 15;
		public const uint32 DISPID_ITEMPLATEPRINTER_CURRENTPAGEAVAIL = 16;
		public const uint32 DISPID_ITEMPLATEPRINTER_COLLATE = 17;
		public const uint32 DISPID_ITEMPLATEPRINTER_DUPLEX = 18;
		public const uint32 DISPID_ITEMPLATEPRINTER_COPIES = 19;
		public const uint32 DISPID_ITEMPLATEPRINTER_PAGEFROM = 20;
		public const uint32 DISPID_ITEMPLATEPRINTER_PAGETO = 21;
		public const uint32 DISPID_ITEMPLATEPRINTER_TABLEOFLINKS = 22;
		public const uint32 DISPID_ITEMPLATEPRINTER_ALLLINKEDDOCUMENTS = 23;
		public const uint32 DISPID_ITEMPLATEPRINTER_HEADER = 24;
		public const uint32 DISPID_ITEMPLATEPRINTER_FOOTER = 25;
		public const uint32 DISPID_ITEMPLATEPRINTER_MARGINLEFT = 26;
		public const uint32 DISPID_ITEMPLATEPRINTER_MARGINRIGHT = 27;
		public const uint32 DISPID_ITEMPLATEPRINTER_MARGINTOP = 28;
		public const uint32 DISPID_ITEMPLATEPRINTER_MARGINBOTTOM = 29;
		public const uint32 DISPID_ITEMPLATEPRINTER_PAGEWIDTH = 30;
		public const uint32 DISPID_ITEMPLATEPRINTER_PAGEHEIGHT = 31;
		public const uint32 DISPID_ITEMPLATEPRINTER_UNPRINTABLELEFT = 32;
		public const uint32 DISPID_ITEMPLATEPRINTER_UNPRINTABLETOP = 33;
		public const uint32 DISPID_ITEMPLATEPRINTER_UNPRINTABLERIGHT = 34;
		public const uint32 DISPID_ITEMPLATEPRINTER_UNPRINTABLEBOTTOM = 35;
		public const uint32 DISPID_ITEMPLATEPRINTER_UPDATEPAGESTATUS = 36;
		public const uint32 DISPID_ITEMPLATEPRINTER2_SELECTIONENABLED = 37;
		public const uint32 DISPID_ITEMPLATEPRINTER2_FRAMEACTIVEENABLED = 38;
		public const uint32 DISPID_ITEMPLATEPRINTER2_ORIENTATION = 39;
		public const uint32 DISPID_ITEMPLATEPRINTER2_USEPRINTERCOPYCOLLATE = 40;
		public const uint32 DISPID_ITEMPLATEPRINTER2_DEVICESUPPORTS = 41;
		public const uint32 DISPID_ITEMPLATEPRINTER3_HEADERFOOTERFONT = 42;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINTOP = 43;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINRIGHT = 44;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINBOTTOM = 45;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINLEFT = 46;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINTOPIMPORTANT = 47;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINRIGHTIMPORTANT = 48;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINBOTTOMIMPORTANT = 49;
		public const uint32 DISPID_ITEMPLATEPRINTER3_GETPAGEMARGINLEFTIMPORTANT = 50;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_STARTPRINT = 501;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_DRAWPREVIEWPAGE = 502;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_SETPAGECOUNT = 503;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_INVALIDATEPREVIEW = 504;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_GETPRINTTASKOPTIONVALUE = 505;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER_ENDPRINT = 506;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER2_SHOWHEADERFOOTER = 507;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER2_SHRINKTOFIT = 508;
		public const uint32 DISPID_IPRINTMANAGERTEMPLATEPRINTER2_PERCENTSCALE = 509;
		public const uint32 DISPID_ISVGTEXTPATHELEMENT_STARTOFFSET = 1071;
		public const uint32 DISPID_ISVGTEXTPATHELEMENT_METHOD = 1073;
		public const uint32 DISPID_ISVGTEXTPATHELEMENT_SPACING = 1075;
		public const uint32 DISPID_IDOMXMLSERIALIZER_SERIALIZETOSTRING = 1000;
		public const uint32 DISPID_IDOMPARSER_PARSEFROMSTRING = 1000;
		public const uint32 DISPID_IDOMXMLSERIALIZERFACTORY_CREATE = 0;
		public const uint32 DISPID_IDOMPARSERFACTORY_CREATE = 0;
		public const uint32 DISPID_IHTMLPROGRESSELEMENT_VALUE = 0;
		public const uint32 DISPID_IHTMLPROGRESSELEMENT_MAX = 1000;
		public const uint32 DISPID_IHTMLPROGRESSELEMENT_POSITION = 1001;
		public const uint32 DISPID_IHTMLPROGRESSELEMENT_FORM = 67540;
		public const uint32 DISPID_IDOMMSTRANSITIONEVENT_PROPERTYNAME = 1476;
		public const uint32 DISPID_IDOMMSTRANSITIONEVENT_ELAPSEDTIME = 1477;
		public const uint32 DISPID_IDOMMSTRANSITIONEVENT_INITMSTRANSITIONEVENT = 1478;
		public const uint32 DISPID_IDOMMSANIMATIONEVENT_ANIMATIONNAME = 1501;
		public const uint32 DISPID_IDOMMSANIMATIONEVENT_ELAPSEDTIME = 1502;
		public const uint32 DISPID_IDOMMSANIMATIONEVENT_INITMSANIMATIONEVENT = 1503;
		public const uint32 DISPID_IWEBGEOLOCATION_GETCURRENTPOSITION = 1001;
		public const uint32 DISPID_IWEBGEOLOCATION_WATCHPOSITION = 1002;
		public const uint32 DISPID_IWEBGEOLOCATION_CLEARWATCH = 1003;
		public const uint32 DISPID_IWEBGEOCOORDINATES_LATITUDE = 1001;
		public const uint32 DISPID_IWEBGEOCOORDINATES_LONGITUDE = 1002;
		public const uint32 DISPID_IWEBGEOCOORDINATES_ALTITUDE = 1003;
		public const uint32 DISPID_IWEBGEOCOORDINATES_ACCURACY = 1004;
		public const uint32 DISPID_IWEBGEOCOORDINATES_ALTITUDEACCURACY = 1005;
		public const uint32 DISPID_IWEBGEOCOORDINATES_HEADING = 1006;
		public const uint32 DISPID_IWEBGEOCOORDINATES_SPEED = 1007;
		public const uint32 DISPID_IWEBGEOPOSITIONERROR_CODE = 1001;
		public const uint32 DISPID_IWEBGEOPOSITIONERROR_MESSAGE = 1002;
		public const uint32 DISPID_IWEBGEOPOSITION_COORDS = 1001;
		public const uint32 DISPID_IWEBGEOPOSITION_TIMESTAMP = 1002;
		public const uint32 DISPID_ICLIENTCAPS_JAVAENABLED = 1;
		public const uint32 DISPID_ICLIENTCAPS_COOKIEENABLED = 2;
		public const uint32 DISPID_ICLIENTCAPS_CPUCLASS = 3;
		public const uint32 DISPID_ICLIENTCAPS_SYSTEMLANGUAGE = 4;
		public const uint32 DISPID_ICLIENTCAPS_USERLANGUAGE = 5;
		public const uint32 DISPID_ICLIENTCAPS_PLATFORM = 6;
		public const uint32 DISPID_ICLIENTCAPS_CONNECTIONSPEED = 7;
		public const uint32 DISPID_ICLIENTCAPS_ONLINE = 8;
		public const uint32 DISPID_ICLIENTCAPS_COLORDEPTH = 9;
		public const uint32 DISPID_ICLIENTCAPS_BUFFERDEPTH = 10;
		public const uint32 DISPID_ICLIENTCAPS_WIDTH = 11;
		public const uint32 DISPID_ICLIENTCAPS_HEIGHT = 12;
		public const uint32 DISPID_ICLIENTCAPS_AVAILHEIGHT = 13;
		public const uint32 DISPID_ICLIENTCAPS_AVAILWIDTH = 14;
		public const uint32 DISPID_ICLIENTCAPS_CONNECTIONTYPE = 15;
		public const uint32 DISPID_ICLIENTCAPS_ISCOMPONENTINSTALLED = 16;
		public const uint32 DISPID_ICLIENTCAPS_GETCOMPONENTVERSION = 17;
		public const uint32 DISPID_ICLIENTCAPS_COMPAREVERSIONS = 18;
		public const uint32 DISPID_ICLIENTCAPS_ADDCOMPONENTREQUEST = 19;
		public const uint32 DISPID_ICLIENTCAPS_DOCOMPONENTREQUEST = 20;
		public const uint32 DISPID_ICLIENTCAPS_CLEARCOMPONENTREQUEST = 21;
		public const uint32 DISPID_IDOMMSMANIPULATIONEVENT_LASTSTATE = 1526;
		public const uint32 DISPID_IDOMMSMANIPULATIONEVENT_CURRENTSTATE = 1527;
		public const uint32 DISPID_IDOMMSMANIPULATIONEVENT_INITMSMANIPULATIONEVENT = 1528;
		public const uint32 DISPID_IDOMCLOSEEVENT_WASCLEAN = 1526;
		public const uint32 DISPID_IDOMCLOSEEVENT_INITCLOSEEVENT = 1529;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_STATUS = 1001;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONCHECKING = 71717;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONERROR = 71565;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONNOUPDATE = 71718;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONDOWNLOADING = 71719;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONPROGRESS = 71681;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONUPDATEREADY = 71720;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONCACHED = 71721;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ONOBSOLETE = 71722;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_UPDATE = 1002;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_SWAPCACHE = 1003;
		public const uint32 DISPID_IHTMLAPPLICATIONCACHE_ABORT = 1004;
		public const uint32 DISPID_ILINEINFO_X = 1001;
		public const uint32 DISPID_ILINEINFO_BASELINE = 1002;
		public const uint32 DISPID_ILINEINFO_TEXTDESCENT = 1003;
		public const uint32 DISPID_ILINEINFO_TEXTHEIGHT = 1004;
		public const uint32 DISPID_ILINEINFO_LINEDIRECTION = 1005;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_BOLD = 1001;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_ITALIC = 1002;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_UNDERLINE = 1003;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_OVERLINE = 1004;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_STRIKEOUT = 1005;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_SUBSCRIPT = 1006;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_SUPERSCRIPT = 1007;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_EXPLICITFACE = 1008;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_FONTWEIGHT = 1009;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_FONTSIZE = 1010;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_FONTNAME = 1011;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_HASBGCOLOR = 1012;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_TEXTCOLOR = 1013;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_BACKGROUNDCOLOR = 1014;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_PREFORMATTED = 1015;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_DIRECTION = 1016;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_BLOCKDIRECTION = 1017;
		public const uint32 DISPID_IHTMLCOMPUTEDSTYLE_OL = 1018;
		public const uint32 DISPID_IHTMLDLGSAFEHELPER_CHOOSECOLORDLG = 1;
		public const uint32 DISPID_IHTMLDLGSAFEHELPER_GETCHARSET = 2;
		public const uint32 DISPID_IHTMLDLGSAFEHELPER_FONTS = 3;
		public const uint32 DISPID_IHTMLDLGSAFEHELPER_BLOCKFORMATS = 4;
		public const int32 DISPID_IBLOCKFORMATS__NEWENUM = -4;
		public const uint32 DISPID_IBLOCKFORMATS_COUNT = 1;
		public const uint32 DISPID_IBLOCKFORMATS_ITEM = 0;
		public const int32 DISPID_IFONTNAMES__NEWENUM = -4;
		public const uint32 DISPID_IFONTNAMES_COUNT = 1;
		public const uint32 DISPID_IFONTNAMES_ITEM = 0;
		public const uint32 DISPID_IHTMLNAMESPACE_NAME = 1000;
		public const uint32 DISPID_IHTMLNAMESPACE_URN = 1001;
		public const uint32 DISPID_IHTMLNAMESPACE_TAGNAMES = 1002;
		public const uint32 DISPID_IHTMLNAMESPACE_READYSTATE = 70652;
		public const uint32 DISPID_IHTMLNAMESPACE_ONREADYSTATECHANGE = 71561;
		public const uint32 DISPID_IHTMLNAMESPACE_DOIMPORT = 1003;
		public const uint32 DISPID_IHTMLNAMESPACE_ATTACHEVENT = 66043;
		public const uint32 DISPID_IHTMLNAMESPACE_DETACHEVENT = 66044;
		public const uint32 DISPID_IHTMLNAMESPACECOLLECTION_LENGTH = 1000;
		public const uint32 DISPID_IHTMLNAMESPACECOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLNAMESPACECOLLECTION_ADD = 1001;
		public const int32 DISPID_HTMLNAMESPACEEVENTS_ONREADYSTATECHANGE = -609;
		public const uint32 DISPID_IHTMLIPRINTCOLLECTION_LENGTH = 1501;
		public const int32 DISPID_IHTMLIPRINTCOLLECTION__NEWENUM = -4;
		public const uint32 DISPID_IHTMLIPRINTCOLLECTION_ITEM = 0;
		public const uint32 DISPID_IHTMLDIALOG_DIALOGTOP = 65540;
		public const uint32 DISPID_IHTMLDIALOG_DIALOGLEFT = 65539;
		public const uint32 DISPID_IHTMLDIALOG_DIALOGWIDTH = 65541;
		public const uint32 DISPID_IHTMLDIALOG_DIALOGHEIGHT = 65542;
		public const uint32 DISPID_IHTMLDIALOG_DIALOGARGUMENTS = 25000;
		public const uint32 DISPID_IHTMLDIALOG_MENUARGUMENTS = 25013;
		public const uint32 DISPID_IHTMLDIALOG_RETURNVALUE = 25001;
		public const uint32 DISPID_IHTMLDIALOG_CLOSE = 25011;
		public const uint32 DISPID_IHTMLDIALOG_TOSTRING = 25012;
		public const uint32 DISPID_IHTMLDIALOG2_STATUS = 25014;
		public const uint32 DISPID_IHTMLDIALOG2_RESIZABLE = 25015;
		public const uint32 DISPID_IHTMLDIALOG3_UNADORNED = 25016;
		public const uint32 DISPID_IHTMLDIALOG3_DIALOGHIDE = 25007;
		public const uint32 DISPID_IHTMLMODELESSINIT_PARAMETERS = 25000;
		public const uint32 DISPID_IHTMLMODELESSINIT_OPTIONSTRING = 25001;
		public const uint32 DISPID_IHTMLMODELESSINIT_MONIKER = 25006;
		public const uint32 DISPID_IHTMLMODELESSINIT_DOCUMENT = 25007;
		public const uint32 DISPID_IHTMLPOPUP_SHOW = 27001;
		public const uint32 DISPID_IHTMLPOPUP_HIDE = 27002;
		public const uint32 DISPID_IHTMLPOPUP_DOCUMENT = 27003;
		public const uint32 DISPID_IHTMLPOPUP_ISOPEN = 27004;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_APPLICATIONNAME = 5000;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_VERSION = 5001;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_ICON = 5002;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_SINGLEINSTANCE = 5003;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_MINIMIZEBUTTON = 5005;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_MAXIMIZEBUTTON = 5006;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_BORDER = 5007;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_BORDERSTYLE = 5008;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_SYSMENU = 5009;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_CAPTION = 5010;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_WINDOWSTATE = 5011;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_SHOWINTASKBAR = 5012;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR_COMMANDLINE = 5013;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR2_CONTEXTMENU = 5014;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR2_INNERBORDER = 5015;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR2_SCROLL = 5016;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR2_SCROLLFLAT = 5017;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR2_SELECTION = 5018;
		public const uint32 DISPID_IHTMLAPPBEHAVIOR3_NAVIGABLE = 5019;
		public const uint32 DISPID_IHTMLTXTRANGEINTERNAL_GET_VISIBLETEXT = 1050;
		public const uint32 DISPID_IE9EVENTS_ABORT = 1000;
		public const uint32 DISPID_IE9EVENTS_ACTIVATE = 1044;
		public const uint32 DISPID_IE9EVENTS_AFTERPRINT = 1025;
		public const uint32 DISPID_IE9EVENTS_BEFOREACTIVATE = 1047;
		public const uint32 DISPID_IE9EVENTS_BEFOREDEACTIVATE = 1034;
		public const uint32 DISPID_IE9EVENTS_BEFOREUNLOAD = 1017;
		public const uint32 DISPID_IE9EVENTS_BEFOREPRINT = 1024;
		public const uint32 DISPID_IE9EVENTS_BOUNCE = 1009;
		public const uint32 DISPID_IE9EVENTS_CHANGE = 1001;
		public const int32 DISPID_IE9EVENTS_CLICK = -600;
		public const uint32 DISPID_IE9EVENTS_COMPLETE = 71727;
		public const uint32 DISPID_IE9EVENTS_CONTEXTMENU = 1023;
		public const uint32 DISPID_IE9EVENTS_DEACTIVATE = 1045;
		public const uint32 DISPID_IE9EVENTS_DOMCONTENTLOADED = 71662;
		public const uint32 DISPID_IE9EVENTS_SUCCESS = 71725;
		public const uint32 DISPID_IE9EVENTS_ERROR = 1002;
		public const uint32 DISPID_IE9EVENTS_FINISH = 1010;
		public const uint32 DISPID_IE9EVENTS_FOCUS = 65537;
		public const uint32 DISPID_IE9EVENTS_FOCUSIN = 1048;
		public const uint32 DISPID_IE9EVENTS_FOCUSOUT = 1049;
		public const uint32 DISPID_IE9EVENTS_HASHCHANGE = 1066;
		public const uint32 DISPID_IE9EVENTS_HELP = 65546;
		public const uint32 DISPID_IE9EVENTS_INPUT = 71663;
		public const uint32 DISPID_IE9EVENTS_LOAD = 1003;
		public const int32 DISPID_IE9EVENTS_KEYDOWN = -602;
		public const int32 DISPID_IE9EVENTS_KEYPRESS = -603;
		public const int32 DISPID_IE9EVENTS_KEYUP = -604;
		public const uint32 DISPID_IE9EVENTS_MESSAGE = 1067;
		public const uint32 DISPID_IE9EVENTS_ONLINE = 1064;
		public const uint32 DISPID_IE9EVENTS_OFFLINE = 1065;
		public const int32 DISPID_IE9EVENTS_READYSTATECHANGE = -609;
		public const uint32 DISPID_IE9EVENTS_RESET = 1015;
		public const uint32 DISPID_IE9EVENTS_RESIZE = 1016;
		public const uint32 DISPID_IE9EVENTS_SCROLL = 1014;
		public const uint32 DISPID_IE9EVENTS_SELECT = 1006;
		public const uint32 DISPID_IE9EVENTS_SELECTIONCHANGE = 1037;
		public const uint32 DISPID_IE9EVENTS_SELECTSTART = 65548;
		public const uint32 DISPID_IE9EVENTS_START = 1011;
		public const uint32 DISPID_IE9EVENTS_STOP = 1026;
		public const uint32 DISPID_IE9EVENTS_STORAGE = 1057;
		public const uint32 DISPID_IE9EVENTS_STORAGECOMMIT = 1058;
		public const uint32 DISPID_IE9EVENTS_SUBMIT = 1007;
		public const uint32 DISPID_IE9EVENTS_TEXTINPUT = 71665;
		public const uint32 DISPID_IE9EVENTS_TIMEOUT = 0;
		public const uint32 DISPID_IE9EVENTS_UNLOAD = 1008;
		public const uint32 DISPID_IE9EVENTS_WHEEL = 71649;
		public const int32 DISPID_IE9EVENTS_DBLCLICK = -601;
		public const int32 DISPID_IE9EVENTS_MOUSEDOWN = -605;
		public const uint32 DISPID_IE9EVENTS_MOUSEENTER = 1042;
		public const uint32 DISPID_IE9EVENTS_MOUSELEAVE = 1043;
		public const int32 DISPID_IE9EVENTS_MOUSEMOVE = -606;
		public const uint32 DISPID_IE9EVENTS_MOUSEOUT = 65545;
		public const uint32 DISPID_IE9EVENTS_MOUSEOVER = 65544;
		public const int32 DISPID_IE9EVENTS_MOUSEUP = -607;
		public const uint32 DISPID_IE9EVENTS_MOUSEWHEEL = 1033;
		public const uint32 DISPID_IE9EVENTS_BEFORECOPY = 65566;
		public const uint32 DISPID_IE9EVENTS_BEFORECUT = 65565;
		public const uint32 DISPID_IE9EVENTS_BEFOREPASTE = 65567;
		public const uint32 DISPID_IE9EVENTS_COPY = 65563;
		public const uint32 DISPID_IE9EVENTS_CUT = 65562;
		public const uint32 DISPID_IE9EVENTS_DRAG = 65556;
		public const uint32 DISPID_IE9EVENTS_DRAGEND = 65557;
		public const uint32 DISPID_IE9EVENTS_DRAGENTER = 65558;
		public const uint32 DISPID_IE9EVENTS_DRAGLEAVE = 65560;
		public const uint32 DISPID_IE9EVENTS_DRAGOVER = 65559;
		public const uint32 DISPID_IE9EVENTS_DRAGSTART = 65547;
		public const uint32 DISPID_IE9EVENTS_DROP = 65561;
		public const uint32 DISPID_IE9EVENTS_PASTE = 65564;
		public const uint32 DISPID_IE9EVENTS_MSBEFOREEDITFOCUS = 1027;
		public const uint32 DISPID_IE9EVENTS_MSCONTROLSELECT = 1036;
		public const uint32 DISPID_IE9EVENTS_MSCONTROLRESIZESTART = 1040;
		public const uint32 DISPID_IE9EVENTS_MSCONTROLRESIZEEND = 1041;
		public const uint32 DISPID_IE9EVENTS_COMPOSITIONSTART = 71658;
		public const uint32 DISPID_IE9EVENTS_COMPOSITIONUPDATE = 71659;
		public const uint32 DISPID_IE9EVENTS_COMPOSITIONEND = 71660;
		public const uint32 DISPID_IE9EVENTS_DOMATTRMODIFIED = 71661;
		public const uint32 DISPID_IE9EVENTS_DOMCHARACTERDATAMODIFIED = 71664;
		public const uint32 DISPID_IE9EVENTS_DOMNODEINSERTED = 71667;
		public const uint32 DISPID_IE9EVENTS_DOMNODEREMOVED = 71668;
		public const uint32 DISPID_IE9EVENTS_DOMSUBTREEMODIFIED = 71669;
		public const uint32 DISPID_IE9EVENTS_SVGLOAD = 71650;
		public const uint32 DISPID_IE9EVENTS_SVGUNLOAD = 71651;
		public const uint32 DISPID_IE9EVENTS_SVGABORT = 71652;
		public const uint32 DISPID_IE9EVENTS_SVGERROR = 71653;
		public const uint32 DISPID_IE9EVENTS_SVGRESIZE = 71654;
		public const uint32 DISPID_IE9EVENTS_SVGSCROLL = 71655;
		public const uint32 DISPID_IE9EVENTS_SVGZOOM = 71656;
		public const uint32 DISPID_IE9EVENTS_MSTHUMBNAILCLICK = 71657;
		public const uint32 DISPID_IE9EVENTS_MSSITEMODEJUMPLISTITEMREMOVED = 71666;
		public const uint32 DISPID_IE9EVENTS_CANPLAY = 71670;
		public const uint32 DISPID_IE9EVENTS_CANPLAYTHROUGH = 71671;
		public const uint32 DISPID_IE9EVENTS_DURATIONCHANGE = 71672;
		public const uint32 DISPID_IE9EVENTS_EMPTIED = 71673;
		public const uint32 DISPID_IE9EVENTS_ENDED = 71674;
		public const uint32 DISPID_IE9EVENTS_LOADEDDATA = 71675;
		public const uint32 DISPID_IE9EVENTS_LOADEDMETADATA = 71676;
		public const uint32 DISPID_IE9EVENTS_LOADSTART = 71677;
		public const uint32 DISPID_IE9EVENTS_PAUSE = 71678;
		public const uint32 DISPID_IE9EVENTS_PLAY = 71679;
		public const uint32 DISPID_IE9EVENTS_PLAYING = 71680;
		public const uint32 DISPID_IE9EVENTS_PROGRESS = 71681;
		public const uint32 DISPID_IE9EVENTS_RATECHANGE = 71682;
		public const uint32 DISPID_IE9EVENTS_SEEKED = 71683;
		public const uint32 DISPID_IE9EVENTS_SEEKING = 71684;
		public const uint32 DISPID_IE9EVENTS_STALLED = 71685;
		public const uint32 DISPID_IE9EVENTS_SUSPEND = 71686;
		public const uint32 DISPID_IE9EVENTS_TIMEUPDATE = 71687;
		public const uint32 DISPID_IE9EVENTS_VOLUMECHANGE = 71688;
		public const uint32 DISPID_IE9EVENTS_WAITING = 71689;
		public const uint32 DISPID_IE9EVENTS_BLOCKED = 71726;
		public const uint32 DISPID_IE9EVENTS_UPGRADENEEDED = 71734;
		public const uint32 DISPID_IE9EVENTS_CUECHANGE = 71729;
		public const uint32 DISPID_IE9EVENTS_ENTER = 71730;
		public const uint32 DISPID_IE9EVENTS_EXIT = 71731;
		public const uint32 DISPID_IE9EVENTS_ADDTRACK = 71736;
		public const uint32 DISPID_IE9EVENTS_REMOVETRACK = 71781;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERDOWN = 71690;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERMOVE = 71691;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERUP = 71692;
		public const uint32 DISPID_IE9EVENTS_MSPOINTEROVER = 71693;
		public const uint32 DISPID_IE9EVENTS_MSPOINTEROUT = 71694;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERCANCEL = 71695;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERHOVER = 71696;
		public const uint32 DISPID_IE9EVENTS_MSLOSTPOINTERCAPTURE = 71706;
		public const uint32 DISPID_IE9EVENTS_MSGOTPOINTERCAPTURE = 71707;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERENTER = 71769;
		public const uint32 DISPID_IE9EVENTS_MSPOINTERLEAVE = 71770;
		public const uint32 DISPID_IE9EVENTS_TOUCHSTART = 71784;
		public const uint32 DISPID_IE9EVENTS_TOUCHEND = 71785;
		public const uint32 DISPID_IE9EVENTS_TOUCHMOVE = 71786;
		public const uint32 DISPID_IE9EVENTS_TOUCHCANCEL = 71787;
		public const uint32 DISPID_IE9EVENTS_MSGESTURESTART = 71699;
		public const uint32 DISPID_IE9EVENTS_MSGESTURECHANGE = 71700;
		public const uint32 DISPID_IE9EVENTS_MSGESTUREEND = 71701;
		public const uint32 DISPID_IE9EVENTS_MSGESTUREHOLD = 71702;
		public const uint32 DISPID_IE9EVENTS_MSGESTURETAP = 71703;
		public const uint32 DISPID_IE9EVENTS_MSGESTUREDOUBLETAP = 71704;
		public const uint32 DISPID_IE9EVENTS_MSINERTIASTART = 71705;
		public const uint32 DISPID_IE9EVENTS_MSCONTENTZOOM = 71708;
		public const uint32 DISPID_IE9EVENTS_MSHOLDVISUAL = 71738;
		public const uint32 DISPID_IE9EVENTS_TRANSITIONSTART = 71709;
		public const uint32 DISPID_IE9EVENTS_TRANSITIONEND = 71710;
		public const uint32 DISPID_IE9EVENTS_ANIMATIONSTART = 71711;
		public const uint32 DISPID_IE9EVENTS_ANIMATIONEND = 71712;
		public const uint32 DISPID_IE9EVENTS_ANIMATIONITERATION = 71713;
		public const uint32 DISPID_IE9EVENTS_MSMANIPULATIONSTATECHANGED = 71714;
		public const uint32 DISPID_IE9EVENTS_CHECKING = 71717;
		public const uint32 DISPID_IE9EVENTS_NOUPDATE = 71718;
		public const uint32 DISPID_IE9EVENTS_DOWNLOADING = 71719;
		public const uint32 DISPID_IE9EVENTS_UPDATEREADY = 71720;
		public const uint32 DISPID_IE9EVENTS_CACHED = 71721;
		public const uint32 DISPID_IE9EVENTS_OBSOLETE = 71722;
		public const uint32 DISPID_IE9EVENTS_INVALID = 71724;
		public const uint32 DISPID_IE9EVENTS_OPEN = 71715;
		public const uint32 DISPID_IE9EVENTS_CLOSE = 71716;
		public const uint32 DISPID_IE9EVENTS_LOADEND = 71723;
		public const uint32 DISPID_IE9EVENTS_POPSTATE = 71728;
		public const uint32 DISPID_IE9EVENTS_VISIBILITYCHANGE = 71732;
		public const uint32 DISPID_IE9EVENTS_MSREGIONUPDATE = 71733;
		public const uint32 DISPID_IE9EVENTS_MSVIDEOFORMATCHANGED = 71735;
		public const uint32 DISPID_IE9EVENTS_MSVIDEOFRAMESTEPCOMPLETED = 71737;
		public const uint32 DISPID_IE9EVENTS_MSVIDEOOPTIMALLAYOUTCHANGED = 71739;
		public const uint32 DISPID_IE9EVENTS_MSFULLSCREENCHANGE = 71740;
		public const uint32 DISPID_IE9EVENTS_MSFULLSCREENERROR = 71741;
		public const uint32 DISPID_IE9EVENTS_MSELEMENTRESIZE = 71742;
		public const uint32 DISPID_IE9EVENTS_SOURCEOPEN = 71743;
		public const uint32 DISPID_IE9EVENTS_SOURCEENDED = 71745;
		public const uint32 DISPID_IE9EVENTS_SOURCECLOSE = 71744;
		public const uint32 DISPID_IE9EVENTS_ADDSOURCEBUFFER = 71746;
		public const uint32 DISPID_IE9EVENTS_REMOVESOURCEBUFFER = 71747;
		public const uint32 DISPID_IE9EVENTS_UPDATESTART = 71766;
		public const uint32 DISPID_IE9EVENTS_UPDATE = 71767;
		public const uint32 DISPID_IE9EVENTS_UPDATEEND = 71768;
		public const uint32 DISPID_IE9EVENTS_MSNEEDKEY = 71748;
		public const uint32 DISPID_IE9EVENTS_MSKEYMESSAGE = 71749;
		public const uint32 DISPID_IE9EVENTS_MSKEYERROR = 71750;
		public const uint32 DISPID_IE9EVENTS_MSKEYADDED = 71751;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWDOMCONTENTLOADED = 71752;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWCONTENTLOADING = 71753;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWNAVIGATIONSTARTING = 71754;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWNAVIGATIONCOMPLETED = 71755;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWFRAMEDOMCONTENTLOADED = 71756;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWFRAMECONTENTLOADING = 71757;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWFRAMENAVIGATIONSTARTING = 71758;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWFRAMENAVIGATIONCOMPLETED = 71759;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWSCRIPTNOTIFY = 71760;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWLONGRUNNINGSCRIPTDETECTED = 71763;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWUNVIEWABLECONTENTIDENTIFIED = 71761;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWUNSAFECONTENTWARNINGDISPLAYING = 71762;
		public const uint32 DISPID_IE9EVENTS_MSWEBVIEWCONTAINSFULLSCREENELEMENTCHANGED = 71783;
		public const uint32 DISPID_IE9EVENTS_WEBGLCONTEXTLOST = 71764;
		public const uint32 DISPID_IE9EVENTS_WEBGLCONTEXTRESTORED = 71765;
		public const uint32 DISPID_IE9EVENTS_WEBGLCONTEXTCREATIONERROR = 71792;
		public const uint32 DISPID_IE9EVENTS_MSSITEPINNED = 71771;
		public const uint32 DISPID_IE9EVENTS_MSORIENTATIONCHANGE = 71772;
		public const uint32 DISPID_IE9EVENTS_ORIENTATIONCHANGE = 71795;
		public const uint32 DISPID_IE9EVENTS_DEVICEORIENTATION = 71773;
		public const uint32 DISPID_IE9EVENTS_DEVICEMOTION = 71774;
		public const uint32 DISPID_IE9EVENTS_COMPASSNEEDSCALIBRATION = 71782;
		public const uint32 DISPID_IE9EVENTS_PAGESHOW = 71775;
		public const uint32 DISPID_IE9EVENTS_PAGEHIDE = 71776;
		public const uint32 DISPID_IE9EVENTS_MSCANDIDATEWINDOWSHOW = 71777;
		public const uint32 DISPID_IE9EVENTS_MSCANDIDATEWINDOWUPDATE = 71778;
		public const uint32 DISPID_IE9EVENTS_MSCANDIDATEWINDOWHIDE = 71779;
		public const uint32 CONTEXT_MENU_DEFAULT = 0;
		public const uint32 CONTEXT_MENU_IMAGE = 1;
		public const uint32 CONTEXT_MENU_CONTROL = 2;
		public const uint32 CONTEXT_MENU_TABLE = 3;
		public const uint32 CONTEXT_MENU_TEXTSELECT = 4;
		public const uint32 CONTEXT_MENU_ANCHOR = 5;
		public const uint32 CONTEXT_MENU_UNKNOWN = 6;
		public const uint32 CONTEXT_MENU_IMGDYNSRC = 7;
		public const uint32 CONTEXT_MENU_DEBUG = 8;
		public const uint32 CONTEXT_MENU_VSCROLL = 9;
		public const uint32 CONTEXT_MENU_HSCROLL = 10;
		public const uint32 CONTEXT_MENU_MEDIA = 11;
		public const uint32 CONTEXT_MENU_ENTITY = 12;
		public const uint32 CONTEXT_MENU_PDF = 13;
		public const uint32 CONTEXT_MENU_DISABLEDFLASH = 14;
		public const uint32 MENUEXT_SHOWDIALOG = 1;
		public const uint32 HTMLDLG_NOUI = 16;
		public const uint32 HTMLDLG_MODAL = 32;
		public const uint32 HTMLDLG_MODELESS = 64;
		public const uint32 HTMLDLG_PRINT_TEMPLATE = 128;
		public const uint32 HTMLDLG_VERIFY = 256;
		public const uint32 HTMLDLG_ALLOW_UNKNOWN_THREAD = 512;
		public const uint32 PRINT_DONTBOTHERUSER = 1;
		public const uint32 PRINT_WAITFORCOMPLETION = 2;
		public const uint32 CMDID_SCRIPTSITE_URL = 0;
		public const uint32 CMDID_SCRIPTSITE_HTMLDLGTRUST = 1;
		public const uint32 CMDID_SCRIPTSITE_SECSTATE = 2;
		public const uint32 CMDID_SCRIPTSITE_SID = 3;
		public const uint32 CMDID_SCRIPTSITE_TRUSTEDDOC = 4;
		public const uint32 CMDID_SCRIPTSITE_SECURITY_WINDOW = 5;
		public const uint32 CMDID_SCRIPTSITE_NAMESPACE = 6;
		public const uint32 CMDID_SCRIPTSITE_IURI = 7;
		public const uint32 CMDID_HOSTCONTEXT_URL = 8;
		public const uint32 CMDID_SCRIPTSITE_ALLOWRECOVERY = 9;
		public const uint32 CMDID_SCRIPTSITE_BASEIURI = 10;
		public const Guid CGID_DocHostCommandHandler = .(0xf38bc242, 0xb950, 0x11d1, 0x89, 0x18, 0x00, 0xc0, 0x4f, 0xc2, 0xc8, 0x36);
		public const uint32 IECMDID_CLEAR_AUTOCOMPLETE_FOR_FORMS = 0;
		public const uint32 IECMDID_SETID_AUTOCOMPLETE_FOR_FORMS = 1;
		public const uint32 IECMDID_BEFORENAVIGATE_GETSHELLBROWSE = 2;
		public const uint32 IECMDID_BEFORENAVIGATE_DOEXTERNALBROWSE = 3;
		public const uint32 IECMDID_BEFORENAVIGATE_GETIDLIST = 4;
		public const uint32 IECMDID_SET_INVOKE_DEFAULT_BROWSER_ON_NEW_WINDOW = 5;
		public const uint32 IECMDID_GET_INVOKE_DEFAULT_BROWSER_ON_NEW_WINDOW = 6;
		public const uint32 IECMDID_ARG_CLEAR_FORMS_ALL = 0;
		public const uint32 IECMDID_ARG_CLEAR_FORMS_ALL_BUT_PASSWORDS = 1;
		public const uint32 IECMDID_ARG_CLEAR_FORMS_PASSWORDS_ONLY = 2;
		public const Guid CATID_MSOfficeAntiVirus = .(0x56ffcc30, 0xd398, 0x11d0, 0xb2, 0xae, 0x00, 0xa0, 0xc9, 0x08, 0xfa, 0x49);
		public const uint32 STATURL_QUERYFLAG_ISCACHED = 65536;
		public const uint32 STATURL_QUERYFLAG_NOURL = 131072;
		public const uint32 STATURL_QUERYFLAG_NOTITLE = 262144;
		public const uint32 STATURL_QUERYFLAG_TOPLEVEL = 524288;
		public const uint32 STATURLFLAG_ISCACHED = 1;
		public const uint32 STATURLFLAG_ISTOPLEVEL = 2;
		public const uint32 SURFACE_LOCK_EXCLUSIVE = 1;
		public const uint32 SURFACE_LOCK_ALLOW_DISCARD = 2;
		public const uint32 SURFACE_LOCK_WAIT = 4;
		public const int32 E_SURFACE_NOSURFACE = -2147434496;
		public const int32 E_SURFACE_UNKNOWN_FORMAT = -2147434495;
		public const int32 E_SURFACE_NOTMYPOINTER = -2147434494;
		public const int32 E_SURFACE_DISCARDED = -2147434493;
		public const int32 E_SURFACE_NODC = -2147434492;
		public const int32 E_SURFACE_NOTMYDC = -2147434491;
		public const int32 S_SURFACE_DISCARDED = 49155;
		public const uint32 COLOR_NO_TRANSPARENT = 4294967295;
		public const uint32 IMGDECODE_EVENT_PROGRESS = 1;
		public const uint32 IMGDECODE_EVENT_PALETTE = 2;
		public const uint32 IMGDECODE_EVENT_BEGINBITS = 4;
		public const uint32 IMGDECODE_EVENT_BITSCOMPLETE = 8;
		public const uint32 IMGDECODE_EVENT_USEDDRAW = 16;
		public const uint32 IMGDECODE_HINT_TOPDOWN = 1;
		public const uint32 IMGDECODE_HINT_BOTTOMUP = 2;
		public const uint32 IMGDECODE_HINT_FULLWIDTH = 4;
		public const uint32 MAPMIME_DEFAULT = 0;
		public const uint32 MAPMIME_CLSID = 1;
		public const uint32 MAPMIME_DISABLE = 2;
		public const uint32 MAPMIME_DEFAULT_ALWAYS = 3;
		public const uint32 TIMERMODE_NORMAL = 0;
		public const uint32 TIMERMODE_VISIBILITYAWARE = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum htmlDesignMode : int32
		{
			htmlDesignModeInherit = -2,
			htmlDesignModeOn = -1,
			htmlDesignModeOff = 0,
			htmlDesignMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlZOrder : int32
		{
			htmlZOrderFront = 0,
			htmlZOrderBack = 1,
			htmlZOrder_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlClear : int32
		{
			htmlClearNotSet = 0,
			htmlClearAll = 1,
			htmlClearLeft = 2,
			htmlClearRight = 3,
			htmlClearBoth = 4,
			htmlClearNone = 5,
			htmlClear_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlControlAlign : int32
		{
			htmlControlAlignNotSet = 0,
			htmlControlAlignLeft = 1,
			htmlControlAlignCenter = 2,
			htmlControlAlignRight = 3,
			htmlControlAlignTextTop = 4,
			htmlControlAlignAbsMiddle = 5,
			htmlControlAlignBaseline = 6,
			htmlControlAlignAbsBottom = 7,
			htmlControlAlignBottom = 8,
			htmlControlAlignMiddle = 9,
			htmlControlAlignTop = 10,
			htmlControlAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlBlockAlign : int32
		{
			htmlBlockAlignNotSet = 0,
			htmlBlockAlignLeft = 1,
			htmlBlockAlignCenter = 2,
			htmlBlockAlignRight = 3,
			htmlBlockAlignJustify = 4,
			htmlBlockAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlReadyState : int32
		{
			htmlReadyStateuninitialized = 0,
			htmlReadyStateloading = 1,
			htmlReadyStateloaded = 2,
			htmlReadyStateinteractive = 3,
			htmlReadyStatecomplete = 4,
			htmlReadyState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlLoop : int32
		{
			htmlLoopLoopInfinite = -1,
			htmlLoop_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum mediaType : int32
		{
			mediaTypeNotSet = 0,
			mediaTypeAll = 511,
			mediaTypeAural = 1,
			mediaTypeBraille = 2,
			mediaTypeEmbossed = 4,
			mediaTypeHandheld = 8,
			mediaTypePrint = 16,
			mediaTypeProjection = 32,
			mediaTypeScreen = 64,
			mediaTypeTty = 128,
			mediaTypeTv = 256,
			mediaType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DomConstructor : int32
		{
			DomConstructorObject = 0,
			DomConstructorAttr = 1,
			DomConstructorBehaviorUrnsCollection = 2,
			DomConstructorBookmarkCollection = 3,
			DomConstructorCompatibleInfo = 4,
			DomConstructorCompatibleInfoCollection = 5,
			DomConstructorControlRangeCollection = 6,
			DomConstructorCSSCurrentStyleDeclaration = 7,
			DomConstructorCSSRuleList = 8,
			DomConstructorCSSRuleStyleDeclaration = 9,
			DomConstructorCSSStyleDeclaration = 10,
			DomConstructorCSSStyleRule = 11,
			DomConstructorCSSStyleSheet = 12,
			DomConstructorDataTransfer = 13,
			DomConstructorDOMImplementation = 14,
			DomConstructorElement = 15,
			DomConstructorEvent = 16,
			DomConstructorHistory = 17,
			DomConstructorHTCElementBehaviorDefaults = 18,
			DomConstructorHTMLAnchorElement = 19,
			DomConstructorHTMLAreaElement = 20,
			DomConstructorHTMLAreasCollection = 21,
			DomConstructorHTMLBaseElement = 22,
			DomConstructorHTMLBaseFontElement = 23,
			DomConstructorHTMLBGSoundElement = 24,
			DomConstructorHTMLBlockElement = 25,
			DomConstructorHTMLBodyElement = 26,
			DomConstructorHTMLBRElement = 27,
			DomConstructorHTMLButtonElement = 28,
			DomConstructorHTMLCollection = 29,
			DomConstructorHTMLCommentElement = 30,
			DomConstructorHTMLDDElement = 31,
			DomConstructorHTMLDivElement = 32,
			DomConstructorHTMLDocument = 33,
			DomConstructorHTMLDListElement = 34,
			DomConstructorHTMLDTElement = 35,
			DomConstructorHTMLEmbedElement = 36,
			DomConstructorHTMLFieldSetElement = 37,
			DomConstructorHTMLFontElement = 38,
			DomConstructorHTMLFormElement = 39,
			DomConstructorHTMLFrameElement = 40,
			DomConstructorHTMLFrameSetElement = 41,
			DomConstructorHTMLGenericElement = 42,
			DomConstructorHTMLHeadElement = 43,
			DomConstructorHTMLHeadingElement = 44,
			DomConstructorHTMLHRElement = 45,
			DomConstructorHTMLHtmlElement = 46,
			DomConstructorHTMLIFrameElement = 47,
			DomConstructorHTMLImageElement = 48,
			DomConstructorHTMLInputElement = 49,
			DomConstructorHTMLIsIndexElement = 50,
			DomConstructorHTMLLabelElement = 51,
			DomConstructorHTMLLegendElement = 52,
			DomConstructorHTMLLIElement = 53,
			DomConstructorHTMLLinkElement = 54,
			DomConstructorHTMLMapElement = 55,
			DomConstructorHTMLMarqueeElement = 56,
			DomConstructorHTMLMetaElement = 57,
			DomConstructorHTMLModelessDialog = 58,
			DomConstructorHTMLNamespaceInfo = 59,
			DomConstructorHTMLNamespaceInfoCollection = 60,
			DomConstructorHTMLNextIdElement = 61,
			DomConstructorHTMLNoShowElement = 62,
			DomConstructorHTMLObjectElement = 63,
			DomConstructorHTMLOListElement = 64,
			DomConstructorHTMLOptionElement = 65,
			DomConstructorHTMLParagraphElement = 66,
			DomConstructorHTMLParamElement = 67,
			DomConstructorHTMLPhraseElement = 68,
			DomConstructorHTMLPluginsCollection = 69,
			DomConstructorHTMLPopup = 70,
			DomConstructorHTMLScriptElement = 71,
			DomConstructorHTMLSelectElement = 72,
			DomConstructorHTMLSpanElement = 73,
			DomConstructorHTMLStyleElement = 74,
			DomConstructorHTMLTableCaptionElement = 75,
			DomConstructorHTMLTableCellElement = 76,
			DomConstructorHTMLTableColElement = 77,
			DomConstructorHTMLTableElement = 78,
			DomConstructorHTMLTableRowElement = 79,
			DomConstructorHTMLTableSectionElement = 80,
			DomConstructorHTMLTextAreaElement = 81,
			DomConstructorHTMLTextElement = 82,
			DomConstructorHTMLTitleElement = 83,
			DomConstructorHTMLUListElement = 84,
			DomConstructorHTMLUnknownElement = 85,
			DomConstructorImage = 86,
			DomConstructorLocation = 87,
			DomConstructorNamedNodeMap = 88,
			DomConstructorNavigator = 89,
			DomConstructorNodeList = 90,
			DomConstructorOption = 91,
			DomConstructorScreen = 92,
			DomConstructorSelection = 93,
			DomConstructorStaticNodeList = 94,
			DomConstructorStorage = 95,
			DomConstructorStyleSheetList = 96,
			DomConstructorStyleSheetPage = 97,
			DomConstructorStyleSheetPageList = 98,
			DomConstructorText = 99,
			DomConstructorTextRange = 100,
			DomConstructorTextRangeCollection = 101,
			DomConstructorTextRectangle = 102,
			DomConstructorTextRectangleList = 103,
			DomConstructorWindow = 104,
			DomConstructorXDomainRequest = 105,
			DomConstructorXMLHttpRequest = 106,
			DomConstructorMax = 107,
			DomConstructor_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextTransform : int32
		{
			styleTextTransformNotSet = 0,
			styleTextTransformCapitalize = 1,
			styleTextTransformLowercase = 2,
			styleTextTransformUppercase = 3,
			styleTextTransformNone = 4,
			styleTextTransform_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleDataRepeat : int32
		{
			styleDataRepeatNone = 0,
			styleDataRepeatInner = 1,
			styleDataRepeat_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleOverflow : int32
		{
			styleOverflowNotSet = 0,
			styleOverflowAuto = 1,
			styleOverflowHidden = 2,
			styleOverflowVisible = 3,
			styleOverflowScroll = 4,
			styleOverflow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsOverflowStyle : int32
		{
			styleMsOverflowStyleNotSet = 0,
			styleMsOverflowStyleAuto = 1,
			styleMsOverflowStyleNone = 2,
			styleMsOverflowStyleScrollbar = 3,
			styleMsOverflowStyleMsAutoHidingScrollbar = 4,
			styleMsOverflowStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTableLayout : int32
		{
			styleTableLayoutNotSet = 0,
			styleTableLayoutAuto = 1,
			styleTableLayoutFixed = 2,
			styleTableLayout_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBorderCollapse : int32
		{
			styleBorderCollapseNotSet = 0,
			styleBorderCollapseSeparate = 1,
			styleBorderCollapseCollapse = 2,
			styleBorderCollapse_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleCaptionSide : int32
		{
			styleCaptionSideNotSet = 0,
			styleCaptionSideTop = 1,
			styleCaptionSideBottom = 2,
			styleCaptionSideLeft = 3,
			styleCaptionSideRight = 4,
			styleCaptionSide_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleEmptyCells : int32
		{
			styleEmptyCellsNotSet = 0,
			styleEmptyCellsShow = 1,
			styleEmptyCellsHide = 2,
			styleEmptyCells_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFontStyle : int32
		{
			styleFontStyleNotSet = 0,
			styleFontStyleItalic = 1,
			styleFontStyleOblique = 2,
			styleFontStyleNormal = 3,
			styleFontStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFontVariant : int32
		{
			styleFontVariantNotSet = 0,
			styleFontVariantSmallCaps = 1,
			styleFontVariantNormal = 2,
			styleFontVariant_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackgroundRepeat : int32
		{
			styleBackgroundRepeatRepeat = 0,
			styleBackgroundRepeatRepeatX = 1,
			styleBackgroundRepeatRepeatY = 2,
			styleBackgroundRepeatNoRepeat = 3,
			styleBackgroundRepeatNotSet = 4,
			styleBackgroundRepeat_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackgroundAttachment : int32
		{
			styleBackgroundAttachmentFixed = 0,
			styleBackgroundAttachmentScroll = 1,
			styleBackgroundAttachmentNotSet = 2,
			styleBackgroundAttachment_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackgroundAttachment3 : int32
		{
			styleBackgroundAttachment3Fixed = 0,
			styleBackgroundAttachment3Scroll = 1,
			styleBackgroundAttachment3Local = 2,
			styleBackgroundAttachment3NotSet = 3,
			styleBackgroundAttachment3_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackgroundClip : int32
		{
			styleBackgroundClipBorderBox = 0,
			styleBackgroundClipPaddingBox = 1,
			styleBackgroundClipContentBox = 2,
			styleBackgroundClipNotSet = 3,
			styleBackgroundClip_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackgroundOrigin : int32
		{
			styleBackgroundOriginBorderBox = 0,
			styleBackgroundOriginPaddingBox = 1,
			styleBackgroundOriginContentBox = 2,
			styleBackgroundOriginNotSet = 3,
			styleBackgroundOrigin_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleVerticalAlign : int32
		{
			styleVerticalAlignAuto = 0,
			styleVerticalAlignBaseline = 1,
			styleVerticalAlignSub = 2,
			styleVerticalAlignSuper = 3,
			styleVerticalAlignTop = 4,
			styleVerticalAlignTextTop = 5,
			styleVerticalAlignMiddle = 6,
			styleVerticalAlignBottom = 7,
			styleVerticalAlignTextBottom = 8,
			styleVerticalAlignInherit = 9,
			styleVerticalAlignNotSet = 10,
			styleVerticalAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFontWeight : int32
		{
			styleFontWeightNotSet = 0,
			styleFontWeight100 = 1,
			styleFontWeight200 = 2,
			styleFontWeight300 = 3,
			styleFontWeight400 = 4,
			styleFontWeight500 = 5,
			styleFontWeight600 = 6,
			styleFontWeight700 = 7,
			styleFontWeight800 = 8,
			styleFontWeight900 = 9,
			styleFontWeightNormal = 10,
			styleFontWeightBold = 11,
			styleFontWeightBolder = 12,
			styleFontWeightLighter = 13,
			styleFontWeight_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFontSize : int32
		{
			styleFontSizeXXSmall = 0,
			styleFontSizeXSmall = 1,
			styleFontSizeSmall = 2,
			styleFontSizeMedium = 3,
			styleFontSizeLarge = 4,
			styleFontSizeXLarge = 5,
			styleFontSizeXXLarge = 6,
			styleFontSizeSmaller = 7,
			styleFontSizeLarger = 8,
			styleFontSize_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleZIndex : int32
		{
			styleZIndexAuto = -2147483647,
			styleZIndex_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWidowsOrphans : int32
		{
			styleWidowsOrphansNotSet = -2147483647,
			styleWidowsOrphans_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAuto : int32
		{
			styleAutoAuto = 0,
			styleAuto_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleNone : int32
		{
			styleNoneNone = 0,
			styleNone_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleNormal : int32
		{
			styleNormalNormal = 0,
			styleNormal_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBorderWidth : int32
		{
			styleBorderWidthThin = 0,
			styleBorderWidthMedium = 1,
			styleBorderWidthThick = 2,
			styleBorderWidth_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePosition : int32
		{
			stylePositionNotSet = 0,
			stylePositionstatic = 1,
			stylePositionrelative = 2,
			stylePositionabsolute = 3,
			stylePositionfixed = 4,
			stylePositionMsPage = 5,
			stylePositionMsDeviceFixed = 6,
			stylePosition_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBorderStyle : int32
		{
			styleBorderStyleNotSet = 0,
			styleBorderStyleDotted = 1,
			styleBorderStyleDashed = 2,
			styleBorderStyleSolid = 3,
			styleBorderStyleDouble = 4,
			styleBorderStyleGroove = 5,
			styleBorderStyleRidge = 6,
			styleBorderStyleInset = 7,
			styleBorderStyleOutset = 8,
			styleBorderStyleWindowInset = 9,
			styleBorderStyleNone = 10,
			styleBorderStyleHidden = 11,
			styleBorderStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleOutlineStyle : int32
		{
			styleOutlineStyleNotSet = 0,
			styleOutlineStyleDotted = 1,
			styleOutlineStyleDashed = 2,
			styleOutlineStyleSolid = 3,
			styleOutlineStyleDouble = 4,
			styleOutlineStyleGroove = 5,
			styleOutlineStyleRidge = 6,
			styleOutlineStyleInset = 7,
			styleOutlineStyleOutset = 8,
			styleOutlineStyleWindowInset = 9,
			styleOutlineStyleNone = 10,
			styleOutlineStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleStyleFloat : int32
		{
			styleStyleFloatNotSet = 0,
			styleStyleFloatLeft = 1,
			styleStyleFloatRight = 2,
			styleStyleFloatNone = 3,
			styleStyleFloat_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleDisplay : int32
		{
			styleDisplayNotSet = 0,
			styleDisplayBlock = 1,
			styleDisplayInline = 2,
			styleDisplayListItem = 3,
			styleDisplayNone = 4,
			styleDisplayTableHeaderGroup = 5,
			styleDisplayTableFooterGroup = 6,
			styleDisplayInlineBlock = 7,
			styleDisplayTable = 8,
			styleDisplayInlineTable = 9,
			styleDisplayTableRow = 10,
			styleDisplayTableRowGroup = 11,
			styleDisplayTableColumn = 12,
			styleDisplayTableColumnGroup = 13,
			styleDisplayTableCell = 14,
			styleDisplayTableCaption = 15,
			styleDisplayRunIn = 16,
			styleDisplayRuby = 17,
			styleDisplayRubyBase = 18,
			styleDisplayRubyText = 19,
			styleDisplayRubyBaseContainer = 20,
			styleDisplayRubyTextContainer = 21,
			styleDisplayMsFlexbox = 22,
			styleDisplayMsInlineFlexbox = 23,
			styleDisplayMsGrid = 24,
			styleDisplayMsInlineGrid = 25,
			styleDisplayFlex = 26,
			styleDisplayInlineFlex = 27,
			styleDisplayWebkitBox = 28,
			styleDisplayWebkitInlineBox = 29,
			styleDisplay_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleVisibility : int32
		{
			styleVisibilityNotSet = 0,
			styleVisibilityInherit = 1,
			styleVisibilityVisible = 2,
			styleVisibilityHidden = 3,
			styleVisibilityCollapse = 4,
			styleVisibility_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleListStyleType : int32
		{
			styleListStyleTypeNotSet = 0,
			styleListStyleTypeDisc = 1,
			styleListStyleTypeCircle = 2,
			styleListStyleTypeSquare = 3,
			styleListStyleTypeDecimal = 4,
			styleListStyleTypeLowerRoman = 5,
			styleListStyleTypeUpperRoman = 6,
			styleListStyleTypeLowerAlpha = 7,
			styleListStyleTypeUpperAlpha = 8,
			styleListStyleTypeNone = 9,
			styleListStyleTypeDecimalLeadingZero = 10,
			styleListStyleTypeGeorgian = 11,
			styleListStyleTypeArmenian = 12,
			styleListStyleTypeUpperLatin = 13,
			styleListStyleTypeLowerLatin = 14,
			styleListStyleTypeUpperGreek = 15,
			styleListStyleTypeLowerGreek = 16,
			styleListStyleType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleListStylePosition : int32
		{
			styleListStylePositionNotSet = 0,
			styleListStylePositionInside = 1,
			styleListStylePositionOutSide = 2,
			styleListStylePosition_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWhiteSpace : int32
		{
			styleWhiteSpaceNotSet = 0,
			styleWhiteSpaceNormal = 1,
			styleWhiteSpacePre = 2,
			styleWhiteSpaceNowrap = 3,
			styleWhiteSpacePreline = 4,
			styleWhiteSpacePrewrap = 5,
			styleWhiteSpace_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePageBreak : int32
		{
			stylePageBreakNotSet = 0,
			stylePageBreakAuto = 1,
			stylePageBreakAlways = 2,
			stylePageBreakLeft = 3,
			stylePageBreakRight = 4,
			stylePageBreakAvoid = 5,
			stylePageBreak_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePageBreakInside : int32
		{
			stylePageBreakInsideNotSet = 0,
			stylePageBreakInsideAuto = 1,
			stylePageBreakInsideAvoid = 2,
			stylePageBreakInside_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleCursor : int32
		{
			styleCursorAuto = 0,
			styleCursorCrosshair = 1,
			styleCursorDefault = 2,
			styleCursorHand = 3,
			styleCursorMove = 4,
			styleCursorE_resize = 5,
			styleCursorNe_resize = 6,
			styleCursorNw_resize = 7,
			styleCursorN_resize = 8,
			styleCursorSe_resize = 9,
			styleCursorSw_resize = 10,
			styleCursorS_resize = 11,
			styleCursorW_resize = 12,
			styleCursorText = 13,
			styleCursorWait = 14,
			styleCursorHelp = 15,
			styleCursorPointer = 16,
			styleCursorProgress = 17,
			styleCursorNot_allowed = 18,
			styleCursorNo_drop = 19,
			styleCursorVertical_text = 20,
			styleCursorall_scroll = 21,
			styleCursorcol_resize = 22,
			styleCursorrow_resize = 23,
			styleCursorNone = 24,
			styleCursorContext_menu = 25,
			styleCursorEw_resize = 26,
			styleCursorNs_resize = 27,
			styleCursorNesw_resize = 28,
			styleCursorNwse_resize = 29,
			styleCursorCell = 30,
			styleCursorCopy = 31,
			styleCursorAlias = 32,
			styleCursorcustom = 33,
			styleCursorNotSet = 34,
			styleCursor_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleDir : int32
		{
			styleDirNotSet = 0,
			styleDirLeftToRight = 1,
			styleDirRightToLeft = 2,
			styleDirInherit = 3,
			styleDir_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBidi : int32
		{
			styleBidiNotSet = 0,
			styleBidiNormal = 1,
			styleBidiEmbed = 2,
			styleBidiOverride = 3,
			styleBidiInherit = 4,
			styleBidi_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleImeMode : int32
		{
			styleImeModeAuto = 0,
			styleImeModeActive = 1,
			styleImeModeInactive = 2,
			styleImeModeDisabled = 3,
			styleImeModeNotSet = 4,
			styleImeMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleRubyAlign : int32
		{
			styleRubyAlignNotSet = 0,
			styleRubyAlignAuto = 1,
			styleRubyAlignLeft = 2,
			styleRubyAlignCenter = 3,
			styleRubyAlignRight = 4,
			styleRubyAlignDistributeLetter = 5,
			styleRubyAlignDistributeSpace = 6,
			styleRubyAlignLineEdge = 7,
			styleRubyAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleRubyPosition : int32
		{
			styleRubyPositionNotSet = 0,
			styleRubyPositionAbove = 1,
			styleRubyPositionInline = 2,
			styleRubyPosition_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleRubyOverhang : int32
		{
			styleRubyOverhangNotSet = 0,
			styleRubyOverhangAuto = 1,
			styleRubyOverhangWhitespace = 2,
			styleRubyOverhangNone = 3,
			styleRubyOverhang_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLayoutGridChar : int32
		{
			styleLayoutGridCharNotSet = 0,
			styleLayoutGridCharAuto = 1,
			styleLayoutGridCharNone = 2,
			styleLayoutGridChar_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLayoutGridLine : int32
		{
			styleLayoutGridLineNotSet = 0,
			styleLayoutGridLineAuto = 1,
			styleLayoutGridLineNone = 2,
			styleLayoutGridLine_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLayoutGridMode : int32
		{
			styleLayoutGridModeNotSet = 0,
			styleLayoutGridModeChar = 1,
			styleLayoutGridModeLine = 2,
			styleLayoutGridModeBoth = 3,
			styleLayoutGridModeNone = 4,
			styleLayoutGridMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLayoutGridType : int32
		{
			styleLayoutGridTypeNotSet = 0,
			styleLayoutGridTypeLoose = 1,
			styleLayoutGridTypeStrict = 2,
			styleLayoutGridTypeFixed = 3,
			styleLayoutGridType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLineBreak : int32
		{
			styleLineBreakNotSet = 0,
			styleLineBreakNormal = 1,
			styleLineBreakStrict = 2,
			styleLineBreak_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWordBreak : int32
		{
			styleWordBreakNotSet = 0,
			styleWordBreakNormal = 1,
			styleWordBreakBreakAll = 2,
			styleWordBreakKeepAll = 3,
			styleWordBreak_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWordWrap : int32
		{
			styleWordWrapNotSet = 0,
			styleWordWrapOff = 1,
			styleWordWrapOn = 2,
			styleWordWrap_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextJustify : int32
		{
			styleTextJustifyNotSet = 0,
			styleTextJustifyInterWord = 1,
			styleTextJustifyNewspaper = 2,
			styleTextJustifyDistribute = 3,
			styleTextJustifyDistributeAllLines = 4,
			styleTextJustifyInterIdeograph = 5,
			styleTextJustifyInterCluster = 6,
			styleTextJustifyKashida = 7,
			styleTextJustifyAuto = 8,
			styleTextJustify_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextAlignLast : int32
		{
			styleTextAlignLastNotSet = 0,
			styleTextAlignLastLeft = 1,
			styleTextAlignLastCenter = 2,
			styleTextAlignLastRight = 3,
			styleTextAlignLastJustify = 4,
			styleTextAlignLastAuto = 5,
			styleTextAlignLast_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextJustifyTrim : int32
		{
			styleTextJustifyTrimNotSet = 0,
			styleTextJustifyTrimNone = 1,
			styleTextJustifyTrimPunctuation = 2,
			styleTextJustifyTrimPunctAndKana = 3,
			styleTextJustifyTrim_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAccelerator : int32
		{
			styleAcceleratorFalse = 0,
			styleAcceleratorTrue = 1,
			styleAccelerator_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleLayoutFlow : int32
		{
			styleLayoutFlowHorizontal = 0,
			styleLayoutFlowVerticalIdeographic = 1,
			styleLayoutFlowNotSet = 2,
			styleLayoutFlow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBlockProgression : int32
		{
			styleBlockProgressionTb = 0,
			styleBlockProgressionRl = 1,
			styleBlockProgressionBt = 2,
			styleBlockProgressionLr = 3,
			styleBlockProgressionNotSet = 4,
			styleBlockProgression_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWritingMode : int32
		{
			styleWritingModeLrtb = 0,
			styleWritingModeTbrl = 1,
			styleWritingModeRltb = 2,
			styleWritingModeBtrl = 3,
			styleWritingModeNotSet = 4,
			styleWritingModeTblr = 5,
			styleWritingModeBtlr = 6,
			styleWritingModeLrbt = 7,
			styleWritingModeRlbt = 8,
			styleWritingModeLr = 9,
			styleWritingModeRl = 10,
			styleWritingModeTb = 11,
			styleWritingMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBool : int32
		{
			styleBoolFalse = 0,
			styleBoolTrue = 1,
			styleBool_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextUnderlinePosition : int32
		{
			styleTextUnderlinePositionBelow = 0,
			styleTextUnderlinePositionAbove = 1,
			styleTextUnderlinePositionAuto = 2,
			styleTextUnderlinePositionNotSet = 3,
			styleTextUnderlinePosition_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextOverflow : int32
		{
			styleTextOverflowClip = 0,
			styleTextOverflowEllipsis = 1,
			styleTextOverflowNotSet = 2,
			styleTextOverflow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleInterpolation : int32
		{
			styleInterpolationNotSet = 0,
			styleInterpolationNN = 1,
			styleInterpolationBCH = 2,
			styleInterpolation_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBoxSizing : int32
		{
			styleBoxSizingNotSet = 0,
			styleBoxSizingContentBox = 1,
			styleBoxSizingBorderBox = 2,
			styleBoxSizing_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFlex : int32
		{
			styleFlexNone = 0,
			styleFlexNotSet = 1,
			styleFlex_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFlexBasis : int32
		{
			styleFlexBasisAuto = 0,
			styleFlexBasisNotSet = 1,
			styleFlexBasis_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFlexDirection : int32
		{
			styleFlexDirectionRow = 0,
			styleFlexDirectionRowReverse = 1,
			styleFlexDirectionColumn = 2,
			styleFlexDirectionColumnReverse = 3,
			styleFlexDirectionNotSet = 4,
			styleFlexDirection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWebkitBoxOrient : int32
		{
			styleWebkitBoxOrientHorizontal = 0,
			styleWebkitBoxOrientInlineAxis = 1,
			styleWebkitBoxOrientVertical = 2,
			styleWebkitBoxOrientBlockAxis = 3,
			styleWebkitBoxOrientNotSet = 4,
			styleWebkitBoxOrient_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWebkitBoxDirection : int32
		{
			styleWebkitBoxDirectionNormal = 0,
			styleWebkitBoxDirectionReverse = 1,
			styleWebkitBoxDirectionNotSet = 2,
			styleWebkitBoxDirection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFlexWrap : int32
		{
			styleFlexWrapNowrap = 0,
			styleFlexWrapWrap = 1,
			styleFlexWrapWrapReverse = 2,
			styleFlexWrapNotSet = 3,
			styleFlexWrap_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAlignItems : int32
		{
			styleAlignItemsFlexStart = 0,
			styleAlignItemsFlexEnd = 1,
			styleAlignItemsCenter = 2,
			styleAlignItemsBaseline = 3,
			styleAlignItemsStretch = 4,
			styleAlignItemsNotSet = 5,
			styleAlignItems_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsFlexAlign : int32
		{
			styleMsFlexAlignStart = 0,
			styleMsFlexAlignEnd = 1,
			styleMsFlexAlignCenter = 2,
			styleMsFlexAlignBaseline = 3,
			styleMsFlexAlignStretch = 4,
			styleMsFlexAlignNotSet = 5,
			styleMsFlexAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsFlexItemAlign : int32
		{
			styleMsFlexItemAlignStart = 0,
			styleMsFlexItemAlignEnd = 1,
			styleMsFlexItemAlignCenter = 2,
			styleMsFlexItemAlignBaseline = 3,
			styleMsFlexItemAlignStretch = 4,
			styleMsFlexItemAlignAuto = 5,
			styleMsFlexItemAlignNotSet = 6,
			styleMsFlexItemAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAlignSelf : int32
		{
			styleAlignSelfFlexStart = 0,
			styleAlignSelfFlexEnd = 1,
			styleAlignSelfCenter = 2,
			styleAlignSelfBaseline = 3,
			styleAlignSelfStretch = 4,
			styleAlignSelfAuto = 5,
			styleAlignSelfNotSet = 6,
			styleAlignSelf_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleJustifyContent : int32
		{
			styleJustifyContentFlexStart = 0,
			styleJustifyContentFlexEnd = 1,
			styleJustifyContentCenter = 2,
			styleJustifyContentSpaceBetween = 3,
			styleJustifyContentSpaceAround = 4,
			styleJustifyContentNotSet = 5,
			styleJustifyContent_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsFlexPack : int32
		{
			styleMsFlexPackStart = 0,
			styleMsFlexPackEnd = 1,
			styleMsFlexPackCenter = 2,
			styleMsFlexPackJustify = 3,
			styleMsFlexPackDistribute = 4,
			styleMsFlexPackNotSet = 5,
			styleMsFlexPack_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWebkitBoxPack : int32
		{
			styleWebkitBoxPackStart = 0,
			styleWebkitBoxPackEnd = 1,
			styleWebkitBoxPackCenter = 2,
			styleWebkitBoxPackJustify = 3,
			styleWebkitBoxPackNotSet = 5,
			styleWebkitBoxPack_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsFlexLinePack : int32
		{
			styleMsFlexLinePackStart = 0,
			styleMsFlexLinePackEnd = 1,
			styleMsFlexLinePackCenter = 2,
			styleMsFlexLinePackJustify = 3,
			styleMsFlexLinePackDistribute = 4,
			styleMsFlexLinePackStretch = 5,
			styleMsFlexLinePackNotSet = 6,
			styleMsFlexLinePack_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAlignContent : int32
		{
			styleAlignContentFlexStart = 0,
			styleAlignContentFlexEnd = 1,
			styleAlignContentCenter = 2,
			styleAlignContentSpaceBetween = 3,
			styleAlignContentSpaceAround = 4,
			styleAlignContentStretch = 5,
			styleAlignContentNotSet = 6,
			styleAlignContent_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleColumnFill : int32
		{
			styleColumnFillAuto = 0,
			styleColumnFillBalance = 1,
			styleColumnFillNotSet = 2,
			styleColumnFill_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleColumnSpan : int32
		{
			styleColumnSpanNone = 0,
			styleColumnSpanAll = 1,
			styleColumnSpanOne = 2,
			styleColumnSpanNotSet = 3,
			styleColumnSpan_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBreak : int32
		{
			styleBreakNotSet = 0,
			styleBreakAuto = 1,
			styleBreakAlways = 2,
			styleBreakAvoid = 3,
			styleBreakLeft = 4,
			styleBreakRight = 5,
			styleBreakPage = 6,
			styleBreakColumn = 7,
			styleBreakAvoidPage = 8,
			styleBreakAvoidColumn = 9,
			styleBreak_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBreakInside : int32
		{
			styleBreakInsideNotSet = 0,
			styleBreakInsideAuto = 1,
			styleBreakInsideAvoid = 2,
			styleBreakInsideAvoidPage = 3,
			styleBreakInsideAvoidColumn = 4,
			styleBreakInside_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsScrollChaining : int32
		{
			styleMsScrollChainingNotSet = 0,
			styleMsScrollChainingNone = 1,
			styleMsScrollChainingChained = 2,
			styleMsScrollChaining_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsContentZooming : int32
		{
			styleMsContentZoomingNotSet = 0,
			styleMsContentZoomingNone = 1,
			styleMsContentZoomingZoom = 2,
			styleMsContentZooming_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsContentZoomSnapType : int32
		{
			styleMsContentZoomSnapTypeNotSet = 0,
			styleMsContentZoomSnapTypeNone = 1,
			styleMsContentZoomSnapTypeMandatory = 2,
			styleMsContentZoomSnapTypeProximity = 3,
			styleMsContentZoomSnapType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsScrollRails : int32
		{
			styleMsScrollRailsNotSet = 0,
			styleMsScrollRailsNone = 1,
			styleMsScrollRailsRailed = 2,
			styleMsScrollRails_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsContentZoomChaining : int32
		{
			styleMsContentZoomChainingNotSet = 0,
			styleMsContentZoomChainingNone = 1,
			styleMsContentZoomChainingChained = 2,
			styleMsContentZoomChaining_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsScrollSnapType : int32
		{
			styleMsScrollSnapTypeNotSet = 0,
			styleMsScrollSnapTypeNone = 1,
			styleMsScrollSnapTypeMandatory = 2,
			styleMsScrollSnapTypeProximity = 3,
			styleMsScrollSnapType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridColumn : int32
		{
			styleGridColumnNotSet = 0,
			styleGridColumn_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridColumnAlign : int32
		{
			styleGridColumnAlignCenter = 0,
			styleGridColumnAlignEnd = 1,
			styleGridColumnAlignStart = 2,
			styleGridColumnAlignStretch = 3,
			styleGridColumnAlignNotSet = 4,
			styleGridColumnAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridColumnSpan : int32
		{
			styleGridColumnSpanNotSet = 0,
			styleGridColumnSpan_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridRow : int32
		{
			styleGridRowNotSet = 0,
			styleGridRow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridRowAlign : int32
		{
			styleGridRowAlignCenter = 0,
			styleGridRowAlignEnd = 1,
			styleGridRowAlignStart = 2,
			styleGridRowAlignStretch = 3,
			styleGridRowAlignNotSet = 4,
			styleGridRowAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleGridRowSpan : int32
		{
			styleGridRowSpanNotSet = 0,
			styleGridRowSpan_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWrapThrough : int32
		{
			styleWrapThroughNotSet = 0,
			styleWrapThroughWrap = 1,
			styleWrapThroughNone = 2,
			styleWrapThrough_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWrapFlow : int32
		{
			styleWrapFlowNotSet = 0,
			styleWrapFlowAuto = 1,
			styleWrapFlowBoth = 2,
			styleWrapFlowStart = 3,
			styleWrapFlowEnd = 4,
			styleWrapFlowClear = 5,
			styleWrapFlowMinimum = 6,
			styleWrapFlowMaximum = 7,
			styleWrapFlow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAlignmentBaseline : int32
		{
			styleAlignmentBaselineNotSet = 0,
			styleAlignmentBaselineAfterEdge = 1,
			styleAlignmentBaselineAlphabetic = 2,
			styleAlignmentBaselineAuto = 3,
			styleAlignmentBaselineBaseline = 4,
			styleAlignmentBaselineBeforeEdge = 5,
			styleAlignmentBaselineCentral = 6,
			styleAlignmentBaselineHanging = 7,
			styleAlignmentBaselineMathematical = 8,
			styleAlignmentBaselineMiddle = 9,
			styleAlignmentBaselineTextAfterEdge = 10,
			styleAlignmentBaselineTextBeforeEdge = 11,
			styleAlignmentBaselineIdeographic = 12,
			styleAlignmentBaseline_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBaselineShift : int32
		{
			styleBaselineShiftBaseline = 0,
			styleBaselineShiftSub = 1,
			styleBaselineShiftSuper = 2,
			styleBaselineShift_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleClipRule : int32
		{
			styleClipRuleNotSet = 0,
			styleClipRuleNonZero = 1,
			styleClipRuleEvenOdd = 2,
			styleClipRule_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleDominantBaseline : int32
		{
			styleDominantBaselineNotSet = 0,
			styleDominantBaselineAlphabetic = 1,
			styleDominantBaselineAuto = 2,
			styleDominantBaselineCentral = 3,
			styleDominantBaselineHanging = 4,
			styleDominantBaselineIdeographic = 5,
			styleDominantBaselineMathematical = 6,
			styleDominantBaselineMiddle = 7,
			styleDominantBaselineNoChange = 8,
			styleDominantBaselineResetSize = 9,
			styleDominantBaselineTextAfterEdge = 10,
			styleDominantBaselineTextBeforeEdge = 11,
			styleDominantBaselineUseScript = 12,
			styleDominantBaseline_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFillRule : int32
		{
			styleFillRuleNotSet = 0,
			styleFillRuleNonZero = 1,
			styleFillRuleEvenOdd = 2,
			styleFillRule_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleFontStretch : int32
		{
			styleFontStretchNotSet = 0,
			styleFontStretchWider = 1,
			styleFontStretchNarrower = 2,
			styleFontStretchUltraCondensed = 3,
			styleFontStretchExtraCondensed = 4,
			styleFontStretchCondensed = 5,
			styleFontStretchSemiCondensed = 6,
			styleFontStretchNormal = 7,
			styleFontStretchSemiExpanded = 8,
			styleFontStretchExpanded = 9,
			styleFontStretchExtraExpanded = 10,
			styleFontStretchUltraExpanded = 11,
			styleFontStretch_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePointerEvents : int32
		{
			stylePointerEventsNotSet = 0,
			stylePointerEventsVisiblePainted = 1,
			stylePointerEventsVisibleFill = 2,
			stylePointerEventsVisibleStroke = 3,
			stylePointerEventsVisible = 4,
			stylePointerEventsPainted = 5,
			stylePointerEventsFill = 6,
			stylePointerEventsStroke = 7,
			stylePointerEventsAll = 8,
			stylePointerEventsNone = 9,
			stylePointerEventsInitial = 10,
			stylePointerEventsAuto = 11,
			stylePointerEvents_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleEnableBackground : int32
		{
			styleEnableBackgroundNotSet = 0,
			styleEnableBackgroundAccumulate = 1,
			styleEnableBackgroundNew = 2,
			styleEnableBackgroundInherit = 3,
			styleEnableBackground_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleStrokeLinecap : int32
		{
			styleStrokeLinecapNotSet = 0,
			styleStrokeLinecapButt = 1,
			styleStrokeLinecapRound = 2,
			styleStrokeLinecapSquare = 3,
			styleStrokeLinecap_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleStrokeLinejoin : int32
		{
			styleStrokeLinejoinNotSet = 0,
			styleStrokeLinejoinMiter = 1,
			styleStrokeLinejoinRound = 2,
			styleStrokeLinejoinBevel = 3,
			styleStrokeLinejoin_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextAnchor : int32
		{
			styleTextAnchorNotSet = 0,
			styleTextAnchorStart = 1,
			styleTextAnchorMiddle = 2,
			styleTextAnchorEnd = 3,
			styleTextAnchor_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleAttrType : int32
		{
			styleAttrTypeString = 0,
			styleAttrTypeColor = 1,
			styleAttrTypeUrl = 2,
			styleAttrTypeInteger = 3,
			styleAttrTypeNumber = 4,
			styleAttrTypeLength = 5,
			styleAttrTypePx = 6,
			styleAttrTypeEm = 7,
			styleAttrTypeEx = 8,
			styleAttrTypeIn = 9,
			styleAttrTypeCm = 10,
			styleAttrTypeMm = 11,
			styleAttrTypePt = 12,
			styleAttrTypePc = 13,
			styleAttrTypeRem = 14,
			styleAttrTypeCh = 15,
			styleAttrTypeVh = 16,
			styleAttrTypeVw = 17,
			styleAttrTypeVmin = 18,
			styleAttrTypePercentage = 19,
			styleAttrTypeAngle = 20,
			styleAttrTypeDeg = 21,
			styleAttrTypeRad = 22,
			styleAttrTypeGrad = 23,
			styleAttrTypeTime = 24,
			styleAttrTypeS = 25,
			styleAttrTypeMs = 26,
			styleAttrType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleInitialColor : int32
		{
			styleInitialColorNoInitial = 0,
			styleInitialColorColorProperty = 1,
			styleInitialColorTransparent = 2,
			styleInitialColorInvert = 3,
			styleInitialColor_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleInitialString : int32
		{
			styleInitialStringNoInitial = 0,
			styleInitialStringNone = 1,
			styleInitialStringAuto = 2,
			styleInitialStringNormal = 3,
			styleInitialString_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTransformOriginX : int32
		{
			styleTransformOriginXNotSet = 0,
			styleTransformOriginXLeft = 1,
			styleTransformOriginXCenter = 2,
			styleTransformOriginXRight = 3,
			styleTransformOriginX_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTransformOriginY : int32
		{
			styleTransformOriginYNotSet = 0,
			styleTransformOriginYTop = 1,
			styleTransformOriginYCenter = 2,
			styleTransformOriginYBottom = 3,
			styleTransformOriginY_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePerspectiveOriginX : int32
		{
			stylePerspectiveOriginXNotSet = 0,
			stylePerspectiveOriginXLeft = 1,
			stylePerspectiveOriginXCenter = 2,
			stylePerspectiveOriginXRight = 3,
			stylePerspectiveOriginX_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum stylePerspectiveOriginY : int32
		{
			stylePerspectiveOriginYNotSet = 0,
			stylePerspectiveOriginYTop = 1,
			stylePerspectiveOriginYCenter = 2,
			stylePerspectiveOriginYBottom = 3,
			stylePerspectiveOriginY_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTransformStyle : int32
		{
			styleTransformStyleFlat = 0,
			styleTransformStylePreserve3D = 1,
			styleTransformStyleNotSet = 2,
			styleTransformStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBackfaceVisibility : int32
		{
			styleBackfaceVisibilityVisible = 0,
			styleBackfaceVisibilityHidden = 1,
			styleBackfaceVisibilityNotSet = 2,
			styleBackfaceVisibility_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextSizeAdjust : int32
		{
			styleTextSizeAdjustNone = 0,
			styleTextSizeAdjustAuto = 1,
			styleTextSizeAdjust_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleColorInterpolationFilters : int32
		{
			styleColorInterpolationFiltersAuto = 0,
			styleColorInterpolationFiltersSRgb = 1,
			styleColorInterpolationFiltersLinearRgb = 2,
			styleColorInterpolationFiltersNotSet = 3,
			styleColorInterpolationFilters_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleHyphens : int32
		{
			styleHyphensNone = 0,
			styleHyphensManual = 1,
			styleHyphensAuto = 2,
			styleHyphensNotSet = 3,
			styleHyphens_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleHyphenateLimitLines : int32
		{
			styleHyphenateLimitLinesNoLimit = 0,
			styleHyphenateLimitLines_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsAnimationPlayState : int32
		{
			styleMsAnimationPlayStateRunning = 0,
			styleMsAnimationPlayStatePaused = 1,
			styleMsAnimationPlayStateNotSet = 2,
			styleMsAnimationPlayState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsAnimationDirection : int32
		{
			styleMsAnimationDirectionNormal = 0,
			styleMsAnimationDirectionAlternate = 1,
			styleMsAnimationDirectionReverse = 2,
			styleMsAnimationDirectionAlternateReverse = 3,
			styleMsAnimationDirectionNotSet = 4,
			styleMsAnimationDirection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsAnimationFillMode : int32
		{
			styleMsAnimationFillModeNone = 0,
			styleMsAnimationFillModeForwards = 1,
			styleMsAnimationFillModeBackwards = 2,
			styleMsAnimationFillModeBoth = 3,
			styleMsAnimationFillModeNotSet = 4,
			styleMsAnimationFillMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsHighContrastAdjust : int32
		{
			styleMsHighContrastAdjustNotSet = 0,
			styleMsHighContrastAdjustAuto = 1,
			styleMsHighContrastAdjustNone = 2,
			styleMsHighContrastAdjust_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsUserSelect : int32
		{
			styleMsUserSelectAuto = 0,
			styleMsUserSelectText = 1,
			styleMsUserSelectElement = 2,
			styleMsUserSelectNone = 3,
			styleMsUserSelectNotSet = 4,
			styleMsUserSelect_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsTouchAction : int32
		{
			styleMsTouchActionNotSet = -1,
			styleMsTouchActionNone = 0,
			styleMsTouchActionAuto = 1,
			styleMsTouchActionManipulation = 2,
			styleMsTouchActionDoubleTapZoom = 4,
			styleMsTouchActionPanX = 8,
			styleMsTouchActionPanY = 16,
			styleMsTouchActionPinchZoom = 32,
			styleMsTouchActionCrossSlideX = 64,
			styleMsTouchActionCrossSlideY = 128,
			styleMsTouchAction_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsTouchSelect : int32
		{
			styleMsTouchSelectGrippers = 0,
			styleMsTouchSelectNone = 1,
			styleMsTouchSelectNotSet = 2,
			styleMsTouchSelect_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsScrollTranslation : int32
		{
			styleMsScrollTranslationNotSet = 0,
			styleMsScrollTranslationNone = 1,
			styleMsScrollTranslationVtoH = 2,
			styleMsScrollTranslation_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBorderImageRepeat : int32
		{
			styleBorderImageRepeatStretch = 0,
			styleBorderImageRepeatRepeat = 1,
			styleBorderImageRepeatRound = 2,
			styleBorderImageRepeatSpace = 3,
			styleBorderImageRepeatNotSet = 4,
			styleBorderImageRepeat_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleBorderImageSliceFill : int32
		{
			styleBorderImageSliceFillNotSet = 0,
			styleBorderImageSliceFillFill = 1,
			styleBorderImageSliceFill_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsImeAlign : int32
		{
			styleMsImeAlignAuto = 0,
			styleMsImeAlignAfter = 1,
			styleMsImeAlignNotSet = 2,
			styleMsImeAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleMsTextCombineHorizontal : int32
		{
			styleMsTextCombineHorizontalNone = 0,
			styleMsTextCombineHorizontalAll = 1,
			styleMsTextCombineHorizontalDigits = 2,
			styleMsTextCombineHorizontalNotSet = 3,
			styleMsTextCombineHorizontal_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleWebkitAppearance : int32
		{
			styleWebkitAppearanceNone = 0,
			styleWebkitAppearanceCapsLockIndicator = 1,
			styleWebkitAppearanceButton = 2,
			styleWebkitAppearanceButtonBevel = 3,
			styleWebkitAppearanceCaret = 4,
			styleWebkitAppearanceCheckbox = 5,
			styleWebkitAppearanceDefaultButton = 6,
			styleWebkitAppearanceListbox = 7,
			styleWebkitAppearanceListitem = 8,
			styleWebkitAppearanceMediaFullscreenButton = 9,
			styleWebkitAppearanceMediaMuteButton = 10,
			styleWebkitAppearanceMediaPlayButton = 11,
			styleWebkitAppearanceMediaSeekBackButton = 12,
			styleWebkitAppearanceMediaSeekForwardButton = 13,
			styleWebkitAppearanceMediaSlider = 14,
			styleWebkitAppearanceMediaSliderthumb = 15,
			styleWebkitAppearanceMenulist = 16,
			styleWebkitAppearanceMenulistButton = 17,
			styleWebkitAppearanceMenulistText = 18,
			styleWebkitAppearanceMenulistTextfield = 19,
			styleWebkitAppearancePushButton = 20,
			styleWebkitAppearanceRadio = 21,
			styleWebkitAppearanceSearchfield = 22,
			styleWebkitAppearanceSearchfieldCancelButton = 23,
			styleWebkitAppearanceSearchfieldDecoration = 24,
			styleWebkitAppearanceSearchfieldResultsButton = 25,
			styleWebkitAppearanceSearchfieldResultsDecoration = 26,
			styleWebkitAppearanceSliderHorizontal = 27,
			styleWebkitAppearanceSliderVertical = 28,
			styleWebkitAppearanceSliderthumbHorizontal = 29,
			styleWebkitAppearanceSliderthumbVertical = 30,
			styleWebkitAppearanceSquareButton = 31,
			styleWebkitAppearanceTextarea = 32,
			styleWebkitAppearanceTextfield = 33,
			styleWebkitAppearanceNotSet = 34,
			styleWebkitAppearance_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleViewportSize : int32
		{
			styleViewportSizeAuto = 0,
			styleViewportSizeDeviceWidth = 1,
			styleViewportSizeDeviceHeight = 2,
			styleViewportSize_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleUserZoom : int32
		{
			styleUserZoomNotSet = 0,
			styleUserZoomZoom = 1,
			styleUserZoomFixed = 2,
			styleUserZoom_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextLineThroughStyle : int32
		{
			styleTextLineThroughStyleUndefined = 0,
			styleTextLineThroughStyleSingle = 1,
			styleTextLineThroughStyleDouble = 2,
			styleTextLineThroughStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextUnderlineStyle : int32
		{
			styleTextUnderlineStyleUndefined = 0,
			styleTextUnderlineStyleSingle = 1,
			styleTextUnderlineStyleDouble = 2,
			styleTextUnderlineStyleWords = 3,
			styleTextUnderlineStyleDotted = 4,
			styleTextUnderlineStyleThick = 5,
			styleTextUnderlineStyleDash = 6,
			styleTextUnderlineStyleDotDash = 7,
			styleTextUnderlineStyleDotDotDash = 8,
			styleTextUnderlineStyleWave = 9,
			styleTextUnderlineStyleSingleAccounting = 10,
			styleTextUnderlineStyleDoubleAccounting = 11,
			styleTextUnderlineStyleThickDash = 12,
			styleTextUnderlineStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextEffect : int32
		{
			styleTextEffectNone = 0,
			styleTextEffectEmboss = 1,
			styleTextEffectEngrave = 2,
			styleTextEffectOutline = 3,
			styleTextEffect_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleDefaultTextSelection : int32
		{
			styleDefaultTextSelectionFalse = 0,
			styleDefaultTextSelectionTrue = 1,
			styleDefaultTextSelection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum styleTextDecoration : int32
		{
			styleTextDecorationNone = 0,
			styleTextDecorationUnderline = 1,
			styleTextDecorationOverline = 2,
			styleTextDecorationLineThrough = 3,
			styleTextDecorationBlink = 4,
			styleTextDecoration_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum textDecoration : int32
		{
			textDecorationNone = 0,
			textDecorationUnderline = 1,
			textDecorationOverline = 2,
			textDecorationLineThrough = 3,
			textDecorationBlink = 4,
			textDecoration_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlListType : int32
		{
			htmlListTypeNotSet = 0,
			htmlListTypeLargeAlpha = 1,
			htmlListTypeSmallAlpha = 2,
			htmlListTypeLargeRoman = 3,
			htmlListTypeSmallRoman = 4,
			htmlListTypeNumbers = 5,
			htmlListTypeDisc = 6,
			htmlListTypeCircle = 7,
			htmlListTypeSquare = 8,
			htmlListType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMethod : int32
		{
			htmlMethodNotSet = 0,
			htmlMethodGet = 1,
			htmlMethodPost = 2,
			htmlMethod_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlWrap : int32
		{
			htmlWrapOff = 1,
			htmlWrapSoft = 2,
			htmlWrapHard = 3,
			htmlWrap_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlDir : int32
		{
			htmlDirNotSet = 0,
			htmlDirLeftToRight = 1,
			htmlDirRightToLeft = 2,
			htmlDir_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlEditable : int32
		{
			htmlEditableInherit = 0,
			htmlEditableTrue = 1,
			htmlEditableFalse = 2,
			htmlEditable_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlInput : int32
		{
			htmlInputNotSet = 0,
			htmlInputButton = 1,
			htmlInputCheckbox = 2,
			htmlInputFile = 3,
			htmlInputHidden = 4,
			htmlInputImage = 5,
			htmlInputPassword = 6,
			htmlInputRadio = 7,
			htmlInputReset = 8,
			htmlInputSelectOne = 9,
			htmlInputSelectMultiple = 10,
			htmlInputSubmit = 11,
			htmlInputText = 12,
			htmlInputTextarea = 13,
			htmlInputRichtext = 14,
			htmlInputRange = 15,
			htmlInputUrl = 16,
			htmlInputEmail = 17,
			htmlInputNumber = 18,
			htmlInputTel = 19,
			htmlInputSearch = 20,
			htmlInput_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlSpellCheck : int32
		{
			htmlSpellCheckNotSet = 0,
			htmlSpellCheckTrue = 1,
			htmlSpellCheckFalse = 2,
			htmlSpellCheckDefault = 3,
			htmlSpellCheck_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlEncoding : int32
		{
			htmlEncodingURL = 0,
			htmlEncodingMultipart = 1,
			htmlEncodingText = 2,
			htmlEncoding_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlAdjacency : int32
		{
			htmlAdjacencyBeforeBegin = 1,
			htmlAdjacencyAfterBegin = 2,
			htmlAdjacencyBeforeEnd = 3,
			htmlAdjacencyAfterEnd = 4,
			htmlAdjacency_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlTabIndex : int32
		{
			htmlTabIndexNotSet = -32768,
			htmlTabIndex_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlComponent : int32
		{
			htmlComponentClient = 0,
			htmlComponentSbLeft = 1,
			htmlComponentSbPageLeft = 2,
			htmlComponentSbHThumb = 3,
			htmlComponentSbPageRight = 4,
			htmlComponentSbRight = 5,
			htmlComponentSbUp = 6,
			htmlComponentSbPageUp = 7,
			htmlComponentSbVThumb = 8,
			htmlComponentSbPageDown = 9,
			htmlComponentSbDown = 10,
			htmlComponentSbLeft2 = 11,
			htmlComponentSbPageLeft2 = 12,
			htmlComponentSbRight2 = 13,
			htmlComponentSbPageRight2 = 14,
			htmlComponentSbUp2 = 15,
			htmlComponentSbPageUp2 = 16,
			htmlComponentSbDown2 = 17,
			htmlComponentSbPageDown2 = 18,
			htmlComponentSbTop = 19,
			htmlComponentSbBottom = 20,
			htmlComponentOutside = 21,
			htmlComponentGHTopLeft = 22,
			htmlComponentGHLeft = 23,
			htmlComponentGHTop = 24,
			htmlComponentGHBottomLeft = 25,
			htmlComponentGHTopRight = 26,
			htmlComponentGHBottom = 27,
			htmlComponentGHRight = 28,
			htmlComponentGHBottomRight = 29,
			htmlComponent_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlApplyLocation : int32
		{
			htmlApplyLocationInside = 0,
			htmlApplyLocationOutside = 1,
			htmlApplyLocation_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlGlyphMode : int32
		{
			htmlGlyphModeNone = 0,
			htmlGlyphModeBegin = 1,
			htmlGlyphModeEnd = 2,
			htmlGlyphModeBoth = 3,
			htmlGlyphMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlDraggable : int32
		{
			htmlDraggableAuto = 0,
			htmlDraggableTrue = 1,
			htmlDraggableFalse = 2,
			htmlDraggable_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlUnit : int32
		{
			htmlUnitCharacter = 1,
			htmlUnitWord = 2,
			htmlUnitSentence = 3,
			htmlUnitTextEdit = 6,
			htmlUnit_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlEndPoints : int32
		{
			htmlEndPointsStartToStart = 1,
			htmlEndPointsStartToEnd = 2,
			htmlEndPointsEndToStart = 3,
			htmlEndPointsEndToEnd = 4,
			htmlEndPoints_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlDirection : int32
		{
			htmlDirectionForward = 99999,
			htmlDirectionBackward = -99999,
			htmlDirection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlStart : int32
		{
			htmlStartfileopen = 0,
			htmlStartmouseover = 1,
			htmlStart_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum bodyScroll : int32
		{
			bodyScrollyes = 1,
			bodyScrollno = 2,
			bodyScrollauto = 4,
			bodyScrolldefault = 3,
			bodyScroll_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlSelectType : int32
		{
			htmlSelectTypeSelectOne = 1,
			htmlSelectTypeSelectMultiple = 2,
			htmlSelectType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlSelectExFlag : int32
		{
			htmlSelectExFlagNone = 0,
			htmlSelectExFlagHideSelectionInDesign = 1,
			htmlSelectExFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlSelection : int32
		{
			htmlSelectionNone = 0,
			htmlSelectionText = 1,
			htmlSelectionControl = 2,
			htmlSelectionTable = 3,
			htmlSelection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMarqueeBehavior : int32
		{
			htmlMarqueeBehaviorscroll = 1,
			htmlMarqueeBehaviorslide = 2,
			htmlMarqueeBehavioralternate = 3,
			htmlMarqueeBehavior_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMarqueeDirection : int32
		{
			htmlMarqueeDirectionleft = 1,
			htmlMarqueeDirectionright = 3,
			htmlMarqueeDirectionup = 5,
			htmlMarqueeDirectiondown = 7,
			htmlMarqueeDirection_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlPersistState : int32
		{
			htmlPersistStateNormal = 0,
			htmlPersistStateFavorite = 1,
			htmlPersistStateHistory = 2,
			htmlPersistStateSnapshot = 3,
			htmlPersistStateUserData = 4,
			htmlPersistState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlDropEffect : int32
		{
			htmlDropEffectCopy = 0,
			htmlDropEffectLink = 1,
			htmlDropEffectMove = 2,
			htmlDropEffectNone = 3,
			htmlDropEffect_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlEffectAllowed : int32
		{
			htmlEffectAllowedCopy = 0,
			htmlEffectAllowedLink = 1,
			htmlEffectAllowedMove = 2,
			htmlEffectAllowedCopyLink = 3,
			htmlEffectAllowedCopyMove = 4,
			htmlEffectAllowedLinkMove = 5,
			htmlEffectAllowedAll = 6,
			htmlEffectAllowedNone = 7,
			htmlEffectAllowedUninitialized = 8,
			htmlEffectAllowed_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlCompatMode : int32
		{
			htmlCompatModeBackCompat = 0,
			htmlCompatModeCSS1Compat = 1,
			htmlCompatMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BoolValue : int32
		{
			True = 1,
			False = 0,
			BoolValue_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlCaptionAlign : int32
		{
			htmlCaptionAlignNotSet = 0,
			htmlCaptionAlignLeft = 1,
			htmlCaptionAlignCenter = 2,
			htmlCaptionAlignRight = 3,
			htmlCaptionAlignJustify = 4,
			htmlCaptionAlignTop = 5,
			htmlCaptionAlignBottom = 6,
			htmlCaptionAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlCaptionVAlign : int32
		{
			htmlCaptionVAlignNotSet = 0,
			htmlCaptionVAlignTop = 1,
			htmlCaptionVAlignBottom = 2,
			htmlCaptionVAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlFrame : int32
		{
			htmlFrameNotSet = 0,
			htmlFramevoid = 1,
			htmlFrameabove = 2,
			htmlFramebelow = 3,
			htmlFramehsides = 4,
			htmlFramelhs = 5,
			htmlFramerhs = 6,
			htmlFramevsides = 7,
			htmlFramebox = 8,
			htmlFrameborder = 9,
			htmlFrame_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlRules : int32
		{
			htmlRulesNotSet = 0,
			htmlRulesnone = 1,
			htmlRulesgroups = 2,
			htmlRulesrows = 3,
			htmlRulescols = 4,
			htmlRulesall = 5,
			htmlRules_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlCellAlign : int32
		{
			htmlCellAlignNotSet = 0,
			htmlCellAlignLeft = 1,
			htmlCellAlignCenter = 2,
			htmlCellAlignRight = 3,
			htmlCellAlignMiddle = 2,
			htmlCellAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlCellVAlign : int32
		{
			htmlCellVAlignNotSet = 0,
			htmlCellVAlignTop = 1,
			htmlCellVAlignMiddle = 2,
			htmlCellVAlignBottom = 3,
			htmlCellVAlignBaseline = 4,
			htmlCellVAlignCenter = 2,
			htmlCellVAlign_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum frameScrolling : int32
		{
			frameScrollingyes = 1,
			frameScrollingno = 2,
			frameScrollingauto = 4,
			frameScrolling_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum sandboxAllow : int32
		{
			sandboxAllowScripts = 0,
			sandboxAllowSameOrigin = 1,
			sandboxAllowTopNavigation = 2,
			sandboxAllowForms = 3,
			sandboxAllowPopups = 4,
			sandboxAllow_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgAngleType : int32
		{
			SVG_ANGLETYPE_UNKNOWN = 0,
			SVG_ANGLETYPE_UNSPECIFIED = 1,
			SVG_ANGLETYPE_DEG = 2,
			SVG_ANGLETYPE_RAD = 3,
			SVG_ANGLETYPE_GRAD = 4,
			svgAngleType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgExternalResourcesRequired : int32
		{
			svgExternalResourcesRequiredFalse = 0,
			svgExternalResourcesRequiredTrue = 1,
			svgExternalResourcesRequired_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgFocusable : int32
		{
			svgFocusableNotSet = 0,
			svgFocusableAuto = 1,
			svgFocusableTrue = 2,
			svgFocusableFalse = 3,
			svgFocusable_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgLengthType : int32
		{
			SVG_LENGTHTYPE_UNKNOWN = 0,
			SVG_LENGTHTYPE_NUMBER = 1,
			SVG_LENGTHTYPE_PERCENTAGE = 2,
			SVG_LENGTHTYPE_EMS = 3,
			SVG_LENGTHTYPE_EXS = 4,
			SVG_LENGTHTYPE_PX = 5,
			SVG_LENGTHTYPE_CM = 6,
			SVG_LENGTHTYPE_MM = 7,
			SVG_LENGTHTYPE_IN = 8,
			SVG_LENGTHTYPE_PT = 9,
			SVG_LENGTHTYPE_PC = 10,
			svgLengthType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgPathSegType : int32
		{
			PATHSEG_UNKNOWN = 0,
			PATHSEG_CLOSEPATH = 1,
			PATHSEG_MOVETO_ABS = 2,
			PATHSEG_MOVETO_REL = 3,
			PATHSEG_LINETO_ABS = 4,
			PATHSEG_LINETO_REL = 5,
			PATHSEG_CURVETO_CUBIC_ABS = 6,
			PATHSEG_CURVETO_CUBIC_REL = 7,
			PATHSEG_CURVETO_QUADRATIC_ABS = 8,
			PATHSEG_CURVETO_QUADRATIC_REL = 9,
			PATHSEG_ARC_ABS = 10,
			PATHSEG_ARC_REL = 11,
			PATHSEG_LINETO_HORIZONTAL_ABS = 12,
			PATHSEG_LINETO_HORIZONTAL_REL = 13,
			PATHSEG_LINETO_VERTICAL_ABS = 14,
			PATHSEG_LINETO_VERTICAL_REL = 15,
			PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16,
			PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17,
			PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18,
			PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19,
			svgPathSegType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgTransformType : int32
		{
			SVG_TRANSFORM_UNKNOWN = 0,
			SVG_TRANSFORM_MATRIX = 1,
			SVG_TRANSFORM_TRANSLATE = 2,
			SVG_TRANSFORM_SCALE = 3,
			SVG_TRANSFORM_ROTATE = 4,
			SVG_TRANSFORM_SKEWX = 5,
			SVG_TRANSFORM_SKEWY = 6,
			svgTransformType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgPreserveAspectRatioAlignType : int32
		{
			SVG_PRESERVEASPECTRATIO_UNKNOWN = 0,
			SVG_PRESERVEASPECTRATIO_NONE = 1,
			SVG_PRESERVEASPECTRATIO_XMINYMIN = 2,
			SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3,
			SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4,
			SVG_PRESERVEASPECTRATIO_XMINYMID = 5,
			SVG_PRESERVEASPECTRATIO_XMIDYMID = 6,
			SVG_PRESERVEASPECTRATIO_XMAXYMID = 7,
			SVG_PRESERVEASPECTRATIO_XMINYMAX = 8,
			SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9,
			SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10,
			svgPreserveAspectRatioAlignType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgPreserveAspectMeetOrSliceType : int32
		{
			SVG_MEETORSLICE_UNKNOWN = 0,
			SVG_MEETORSLICE_MEET = 1,
			SVG_MEETORSLICE_SLICE = 2,
			svgPreserveAspectMeetOrSliceType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgUnitTypes : int32
		{
			SVG_UNITTYPE_UNKNOWN = 0,
			SVG_UNITTYPE_USERSPACEONUSE = 1,
			SVG_UNITTYPE_OBJECTBOUNDINGBOX = 2,
			svgUnitTypes_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgSpreadMethod : int32
		{
			SVG_SPREADMETHOD_UNKNOWN = 0,
			SVG_SPREADMETHOD_PAD = 1,
			SVG_SPREADMETHOD_REFLECT = 2,
			SVG_SPREADMETHOD_REPEAT = 3,
			svgSpreadMethod_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgFeblendMode : int32
		{
			SVG_FEBLEND_MODE_UNKNOWN = 0,
			SVG_FEBLEND_MODE_NORMAL = 1,
			SVG_FEBLEND_MODE_MULTIPLY = 2,
			SVG_FEBLEND_MODE_SCREEN = 3,
			SVG_FEBLEND_MODE_DARKEN = 4,
			SVG_FEBLEND_MODE_LIGHTEN = 5,
			svgFeblendMode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgFecolormatrixType : int32
		{
			SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0,
			SVG_FECOLORMATRIX_TYPE_MATRIX = 1,
			SVG_FECOLORMATRIX_TYPE_SATURATE = 2,
			SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3,
			SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4,
			svgFecolormatrixType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgFecomponenttransferType : int32
		{
			SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0,
			SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1,
			SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2,
			SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3,
			SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4,
			SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5,
			svgFecomponenttransferType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgFecompositeOperator : int32
		{
			SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0,
			SVG_FECOMPOSITE_OPERATOR_OVER = 1,
			SVG_FECOMPOSITE_OPERATOR_IN = 2,
			SVG_FECOMPOSITE_OPERATOR_OUT = 3,
			SVG_FECOMPOSITE_OPERATOR_ATOP = 4,
			SVG_FECOMPOSITE_OPERATOR_XOR = 5,
			SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6,
			svgFecompositeOperator_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgEdgemode : int32
		{
			SVG_EDGEMODE_UNKNOWN = 0,
			SVG_EDGEMODE_DUPLICATE = 1,
			SVG_EDGEMODE_WRAP = 2,
			SVG_EDGEMODE_NONE = 3,
			svgEdgemode_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgPreserveAlpha : int32
		{
			SVG_PRESERVEALPHA_FALSE = 0,
			SVG_PRESERVEALPHA_TRUE = 1,
			svgPreserveAlpha_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgChannel : int32
		{
			SVG_CHANNEL_UNKNOWN = 0,
			SVG_CHANNEL_R = 1,
			SVG_CHANNEL_G = 2,
			SVG_CHANNEL_B = 3,
			SVG_CHANNEL_A = 4,
			svgChannel_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgMorphologyOperator : int32
		{
			SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0,
			SVG_MORPHOLOGY_OPERATOR_ERODE = 1,
			SVG_MORPHOLOGY_OPERATOR_DILATE = 2,
			svgMorphologyOperator_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgTurbulenceType : int32
		{
			SVG_TURBULENCE_TYPE_UNKNOWN = 0,
			SVG_TURBULENCE_TYPE_FACTALNOISE = 1,
			SVG_TURBULENCE_TYPE_TURBULENCE = 2,
			svgTurbulenceType_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgStitchtype : int32
		{
			SVG_STITCHTYPE_UNKNOWN = 0,
			SVG_STITCHTYPE_STITCH = 1,
			SVG_STITCHTYPE_NOSTITCH = 2,
			svgStitchtype_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgMarkerUnits : int32
		{
			SVG_MARKERUNITS_UNKNOWN = 0,
			SVG_MARKERUNITS_USERSPACEONUSE = 1,
			SVG_MARKERUNITS_STROKEWIDTH = 2,
			svgMarkerUnits_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgMarkerOrient : int32
		{
			SVG_MARKER_ORIENT_UNKNOWN = 0,
			SVG_MARKER_ORIENT_AUTO = 1,
			SVG_MARKER_ORIENT_ANGLE = 2,
			svgMarkerOrient_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum svgMarkerOrientAttribute : int32
		{
			svgMarkerOrientAttributeAuto = 0,
			svgMarkerOrientAttribute_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMediaNetworkState : int32
		{
			htmlMediaNetworkStateEmpty = 0,
			htmlMediaNetworkStateIdle = 1,
			htmlMediaNetworkStateLoading = 2,
			htmlMediaNetworkStateNoSource = 3,
			htmlMediaNetworkState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMediaReadyState : int32
		{
			htmlMediaReadyStateHaveNothing = 0,
			htmlMediaReadyStateHaveMetadata = 1,
			htmlMediaReadyStateHaveCurrentData = 2,
			htmlMediaReadyStateHaveFutureData = 3,
			htmlMediaReadyStateHaveEnoughData = 4,
			htmlMediaReadyState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum htmlMediaErr : int32
		{
			htmlMediaErrAborted = 0,
			htmlMediaErrNetwork = 1,
			htmlMediaErrDecode = 2,
			htmlMediaErrSrcNotSupported = 3,
			htmlMediaErr_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum lengthAdjust : int32
		{
			LENGTHADJUST_UNKNOWN = 0,
			LENGTHADJUST_SPACING = 1,
			LENGTHADJUST_SPACINGANDGLYPHS = 2,
			lengthAdjust_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum textpathMethodtype : int32
		{
			TEXTPATH_METHODTYPE_UNKNOWN = 0,
			TEXTPATH_METHODTYPE_ALIGN = 1,
			TEXTPATH_METHODTYPE_STRETCH = 2,
			textpathMethodtype_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum textpathSpacingtype : int32
		{
			TEXTPATH_SPACINGTYPE_UNKNOWN = 0,
			TEXTPATH_SPACINGTYPE_AUTO = 1,
			TEXTPATH_SPACINGTYPE_EXACT = 2,
			textpathSpacingtype_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ELEMENT_CORNER : int32
		{
			ELEMENT_CORNER_NONE = 0,
			ELEMENT_CORNER_TOP = 1,
			ELEMENT_CORNER_LEFT = 2,
			ELEMENT_CORNER_BOTTOM = 3,
			ELEMENT_CORNER_RIGHT = 4,
			ELEMENT_CORNER_TOPLEFT = 5,
			ELEMENT_CORNER_TOPRIGHT = 6,
			ELEMENT_CORNER_BOTTOMLEFT = 7,
			ELEMENT_CORNER_BOTTOMRIGHT = 8,
			ELEMENT_CORNER_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum SECUREURLHOSTVALIDATE_FLAGS : int32
		{
			SUHV_PROMPTBEFORENO = 1,
			SUHV_SILENTYES = 2,
			SUHV_UNSECURESOURCE = 4,
			SECUREURLHOSTVALIDATE_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum POINTER_GRAVITY : int32
		{
			POINTER_GRAVITY_Left = 0,
			POINTER_GRAVITY_Right = 1,
			POINTER_GRAVITY_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ELEMENT_ADJACENCY : int32
		{
			ELEM_ADJ_BeforeBegin = 0,
			ELEM_ADJ_AfterBegin = 1,
			ELEM_ADJ_BeforeEnd = 2,
			ELEM_ADJ_AfterEnd = 3,
			ELEMENT_ADJACENCY_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum MARKUP_CONTEXT_TYPE : int32
		{
			CONTEXT_TYPE_None = 0,
			CONTEXT_TYPE_Text = 1,
			CONTEXT_TYPE_EnterScope = 2,
			CONTEXT_TYPE_ExitScope = 3,
			CONTEXT_TYPE_NoScope = 4,
			MARKUP_CONTEXT_TYPE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum FINDTEXT_FLAGS : int32
		{
			FINDTEXT_BACKWARDS = 1,
			FINDTEXT_WHOLEWORD = 2,
			FINDTEXT_MATCHCASE = 4,
			FINDTEXT_RAW = 131072,
			FINDTEXT_MATCHREPEATEDWHITESPACE = 262144,
			FINDTEXT_MATCHDIAC = 536870912,
			FINDTEXT_MATCHKASHIDA = 1073741824,
			FINDTEXT_MATCHALEFHAMZA = -2147483648,
			FINDTEXT_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum MOVEUNIT_ACTION : int32
		{
			MOVEUNIT_PREVCHAR = 0,
			MOVEUNIT_NEXTCHAR = 1,
			MOVEUNIT_PREVCLUSTERBEGIN = 2,
			MOVEUNIT_NEXTCLUSTERBEGIN = 3,
			MOVEUNIT_PREVCLUSTEREND = 4,
			MOVEUNIT_NEXTCLUSTEREND = 5,
			MOVEUNIT_PREVWORDBEGIN = 6,
			MOVEUNIT_NEXTWORDBEGIN = 7,
			MOVEUNIT_PREVWORDEND = 8,
			MOVEUNIT_NEXTWORDEND = 9,
			MOVEUNIT_PREVPROOFWORD = 10,
			MOVEUNIT_NEXTPROOFWORD = 11,
			MOVEUNIT_NEXTURLBEGIN = 12,
			MOVEUNIT_PREVURLBEGIN = 13,
			MOVEUNIT_NEXTURLEND = 14,
			MOVEUNIT_PREVURLEND = 15,
			MOVEUNIT_PREVSENTENCE = 16,
			MOVEUNIT_NEXTSENTENCE = 17,
			MOVEUNIT_PREVBLOCK = 18,
			MOVEUNIT_NEXTBLOCK = 19,
			MOVEUNIT_ACTION_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum PARSE_FLAGS : int32
		{
			PARSE_ABSOLUTIFYIE40URLS = 1,
			PARSE_DISABLEVML = 2,
			PARSE_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ELEMENT_TAG_ID : int32
		{
			TAGID_NULL = 0,
			TAGID_UNKNOWN = 1,
			TAGID_A = 2,
			TAGID_ACRONYM = 3,
			TAGID_ADDRESS = 4,
			TAGID_APPLET = 5,
			TAGID_AREA = 6,
			TAGID_B = 7,
			TAGID_BASE = 8,
			TAGID_BASEFONT = 9,
			TAGID_BDO = 10,
			TAGID_BGSOUND = 11,
			TAGID_BIG = 12,
			TAGID_BLINK = 13,
			TAGID_BLOCKQUOTE = 14,
			TAGID_BODY = 15,
			TAGID_BR = 16,
			TAGID_BUTTON = 17,
			TAGID_CAPTION = 18,
			TAGID_CENTER = 19,
			TAGID_CITE = 20,
			TAGID_CODE = 21,
			TAGID_COL = 22,
			TAGID_COLGROUP = 23,
			TAGID_COMMENT = 24,
			TAGID_COMMENT_RAW = 25,
			TAGID_DD = 26,
			TAGID_DEL = 27,
			TAGID_DFN = 28,
			TAGID_DIR = 29,
			TAGID_DIV = 30,
			TAGID_DL = 31,
			TAGID_DT = 32,
			TAGID_EM = 33,
			TAGID_EMBED = 34,
			TAGID_FIELDSET = 35,
			TAGID_FONT = 36,
			TAGID_FORM = 37,
			TAGID_FRAME = 38,
			TAGID_FRAMESET = 39,
			TAGID_GENERIC = 40,
			TAGID_H1 = 41,
			TAGID_H2 = 42,
			TAGID_H3 = 43,
			TAGID_H4 = 44,
			TAGID_H5 = 45,
			TAGID_H6 = 46,
			TAGID_HEAD = 47,
			TAGID_HR = 48,
			TAGID_HTML = 49,
			TAGID_I = 50,
			TAGID_IFRAME = 51,
			TAGID_IMG = 52,
			TAGID_INPUT = 53,
			TAGID_INS = 54,
			TAGID_KBD = 55,
			TAGID_LABEL = 56,
			TAGID_LEGEND = 57,
			TAGID_LI = 58,
			TAGID_LINK = 59,
			TAGID_LISTING = 60,
			TAGID_MAP = 61,
			TAGID_MARQUEE = 62,
			TAGID_MENU = 63,
			TAGID_META = 64,
			TAGID_NEXTID = 65,
			TAGID_NOBR = 66,
			TAGID_NOEMBED = 67,
			TAGID_NOFRAMES = 68,
			TAGID_NOSCRIPT = 69,
			TAGID_OBJECT = 70,
			TAGID_OL = 71,
			TAGID_OPTION = 72,
			TAGID_P = 73,
			TAGID_PARAM = 74,
			TAGID_PLAINTEXT = 75,
			TAGID_PRE = 76,
			TAGID_Q = 77,
			TAGID_RP = 78,
			TAGID_RT = 79,
			TAGID_RUBY = 80,
			TAGID_S = 81,
			TAGID_SAMP = 82,
			TAGID_SCRIPT = 83,
			TAGID_SELECT = 84,
			TAGID_SMALL = 85,
			TAGID_SPAN = 86,
			TAGID_STRIKE = 87,
			TAGID_STRONG = 88,
			TAGID_STYLE = 89,
			TAGID_SUB = 90,
			TAGID_SUP = 91,
			TAGID_TABLE = 92,
			TAGID_TBODY = 93,
			TAGID_TC = 94,
			TAGID_TD = 95,
			TAGID_TEXTAREA = 96,
			TAGID_TFOOT = 97,
			TAGID_TH = 98,
			TAGID_THEAD = 99,
			TAGID_TITLE = 100,
			TAGID_TR = 101,
			TAGID_TT = 102,
			TAGID_U = 103,
			TAGID_UL = 104,
			TAGID_VAR = 105,
			TAGID_WBR = 106,
			TAGID_XMP = 107,
			TAGID_ROOT = 108,
			TAGID_OPTGROUP = 109,
			TAGID_ABBR = 110,
			TAGID_SVG_A = 111,
			TAGID_SVG_ALTGLYPH = 112,
			TAGID_SVG_ALTGLYPHDEF = 113,
			TAGID_SVG_ALTGLYPHITEM = 114,
			TAGID_SVG_ANIMATE = 115,
			TAGID_SVG_ANIMATECOLOR = 116,
			TAGID_SVG_ANIMATEMOTION = 117,
			TAGID_SVG_ANIMATETRANSFORM = 118,
			TAGID_SVG_CIRCLE = 119,
			TAGID_SVG_CLIPPATH = 120,
			TAGID_SVG_COLOR_PROFILE = 121,
			TAGID_SVG_CURSOR = 122,
			TAGID_SVG_DEFINITION_SRC = 123,
			TAGID_SVG_DEFS = 124,
			TAGID_SVG_DESC = 125,
			TAGID_SVG_ELLIPSE = 126,
			TAGID_SVG_FEBLEND = 127,
			TAGID_SVG_FECOLORMATRIX = 128,
			TAGID_SVG_FECOMPONENTTRANSFER = 129,
			TAGID_SVG_FECOMPOSITE = 130,
			TAGID_SVG_FECONVOLVEMATRIX = 131,
			TAGID_SVG_FEDIFFUSELIGHTING = 132,
			TAGID_SVG_FEDISPLACEMENTMAP = 133,
			TAGID_SVG_FEDISTANTLIGHT = 134,
			TAGID_SVG_FEFLOOD = 135,
			TAGID_SVG_FEFUNCA = 136,
			TAGID_SVG_FEFUNCB = 137,
			TAGID_SVG_FEFUNCG = 138,
			TAGID_SVG_FEFUNCR = 139,
			TAGID_SVG_FEGAUSSIANBLUR = 140,
			TAGID_SVG_FEIMAGE = 141,
			TAGID_SVG_FEMERGE = 142,
			TAGID_SVG_FEMERGENODE = 143,
			TAGID_SVG_FEMORPHOLOGY = 144,
			TAGID_SVG_FEOFFSET = 145,
			TAGID_SVG_FEPOINTLIGHT = 146,
			TAGID_SVG_FESPECULARLIGHTING = 147,
			TAGID_SVG_FESPOTLIGHT = 148,
			TAGID_SVG_FETILE = 149,
			TAGID_SVG_FETURBULENCE = 150,
			TAGID_SVG_FILTER = 151,
			TAGID_SVG_FONT = 152,
			TAGID_SVG_FONT_FACE = 153,
			TAGID_SVG_FONT_FACE_FORMAT = 154,
			TAGID_SVG_FONT_FACE_NAME = 155,
			TAGID_SVG_FONT_FACE_SRC = 156,
			TAGID_SVG_FONT_FACE_URI = 157,
			TAGID_SVG_FOREIGNOBJECT = 158,
			TAGID_SVG_G = 159,
			TAGID_SVG_GLYPH = 160,
			TAGID_SVG_GLYPHREF = 161,
			TAGID_SVG_HKERN = 162,
			TAGID_SVG_IMAGE = 163,
			TAGID_SVG_LINE = 164,
			TAGID_SVG_LINEARGRADIENT = 165,
			TAGID_SVG_MARKER = 166,
			TAGID_SVG_MASK = 167,
			TAGID_SVG_METADATA = 168,
			TAGID_SVG_MISSING_GLYPH = 169,
			TAGID_SVG_MPATH = 170,
			TAGID_SVG_PATH = 171,
			TAGID_SVG_PATTERN = 172,
			TAGID_SVG_POLYGON = 173,
			TAGID_SVG_POLYLINE = 174,
			TAGID_SVG_RADIALGRADIENT = 175,
			TAGID_SVG_RECT = 176,
			TAGID_SVG_SCRIPT = 177,
			TAGID_SVG_SET = 178,
			TAGID_SVG_STOP = 179,
			TAGID_SVG_STYLE = 180,
			TAGID_SVG_SVG = 181,
			TAGID_SVG_SWITCH = 182,
			TAGID_SVG_SYMBOL = 183,
			TAGID_SVG_TEXT = 184,
			TAGID_SVG_TEXTPATH = 185,
			TAGID_SVG_TITLE = 186,
			TAGID_SVG_TREF = 187,
			TAGID_SVG_TSPAN = 188,
			TAGID_SVG_USE = 189,
			TAGID_SVG_VIEW = 190,
			TAGID_SVG_VKERN = 191,
			TAGID_AUDIO = 192,
			TAGID_SOURCE = 193,
			TAGID_VIDEO = 194,
			TAGID_CANVAS = 195,
			TAGID_DOCTYPE = 196,
			TAGID_KEYGEN = 197,
			TAGID_PROCESSINGINSTRUCTION = 198,
			TAGID_ARTICLE = 199,
			TAGID_ASIDE = 200,
			TAGID_FIGCAPTION = 201,
			TAGID_FIGURE = 202,
			TAGID_FOOTER = 203,
			TAGID_HEADER = 204,
			TAGID_HGROUP = 205,
			TAGID_MARK = 206,
			TAGID_NAV = 207,
			TAGID_SECTION = 208,
			TAGID_PROGRESS = 209,
			TAGID_MATHML_ANNOTATION_XML = 210,
			TAGID_MATHML_MATH = 211,
			TAGID_MATHML_MI = 212,
			TAGID_MATHML_MN = 213,
			TAGID_MATHML_MO = 214,
			TAGID_MATHML_MS = 215,
			TAGID_MATHML_MTEXT = 216,
			TAGID_DATALIST = 217,
			TAGID_TRACK = 218,
			TAGID_ISINDEX = 219,
			TAGID_COMMAND = 220,
			TAGID_DETAILS = 221,
			TAGID_SUMMARY = 222,
			TAGID_X_MS_WEBVIEW = 223,
			TAGID_COUNT = 224,
			TAGID_LAST_PREDEFINED = 10000,
			ELEMENT_TAG_ID_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum SELECTION_TYPE : int32
		{
			SELECTION_TYPE_None = 0,
			SELECTION_TYPE_Caret = 1,
			SELECTION_TYPE_Text = 2,
			SELECTION_TYPE_Control = 3,
			SELECTION_TYPE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum SAVE_SEGMENTS_FLAGS : int32
		{
			SAVE_SEGMENTS_NoIE4SelectionCompat = 1,
			SAVE_SEGMENTS_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum CARET_DIRECTION : int32
		{
			CARET_DIRECTION_INDETERMINATE = 0,
			CARET_DIRECTION_SAME = 1,
			CARET_DIRECTION_BACKWARD = 2,
			CARET_DIRECTION_FORWARD = 3,
			CARET_DIRECTION_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum LINE_DIRECTION : int32
		{
			LINE_DIRECTION_RightToLeft = 1,
			LINE_DIRECTION_LeftToRight = 2,
			LINE_DIRECTION_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HT_OPTIONS : int32
		{
			HT_OPT_AllowAfterEOL = 1,
			HT_OPTIONS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HT_RESULTS : int32
		{
			HT_RESULTS_Glyph = 1,
			HT_RESULTS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DISPLAY_MOVEUNIT : int32
		{
			DISPLAY_MOVEUNIT_PreviousLine = 1,
			DISPLAY_MOVEUNIT_NextLine = 2,
			DISPLAY_MOVEUNIT_CurrentLineStart = 3,
			DISPLAY_MOVEUNIT_CurrentLineEnd = 4,
			DISPLAY_MOVEUNIT_TopOfWindow = 5,
			DISPLAY_MOVEUNIT_BottomOfWindow = 6,
			DISPLAY_MOVEUNIT_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DISPLAY_GRAVITY : int32
		{
			DISPLAY_GRAVITY_PreviousLine = 1,
			DISPLAY_GRAVITY_NextLine = 2,
			DISPLAY_GRAVITY_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DISPLAY_BREAK : int32
		{
			DISPLAY_BREAK_None = 0,
			DISPLAY_BREAK_Block = 1,
			DISPLAY_BREAK_Break = 2,
			DISPLAY_BREAK_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum COORD_SYSTEM : int32
		{
			COORD_SYSTEM_GLOBAL = 0,
			COORD_SYSTEM_PARENT = 1,
			COORD_SYSTEM_CONTAINER = 2,
			COORD_SYSTEM_CONTENT = 3,
			COORD_SYSTEM_FRAME = 4,
			COORD_SYSTEM_CLIENT = 5,
			COORD_SYSTEM_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DEV_CONSOLE_MESSAGE_LEVEL : int32
		{
			DCML_INFORMATIONAL = 0,
			DCML_WARNING = 1,
			DCML_ERROR = 2,
			DEV_CONSOLE_MESSAGE_LEVEL_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum DOM_EVENT_PHASE : int32
		{
			DEP_CAPTURING_PHASE = 1,
			DEP_AT_TARGET = 2,
			DEP_BUBBLING_PHASE = 3,
			DOM_EVENT_PHASE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum SCRIPT_TIMER_TYPE : int32
		{
			STT_TIMEOUT = 0,
			STT_INTERVAL = 1,
			STT_IMMEDIATE = 2,
			STT_ANIMATION_FRAME = 3,
			SCRIPT_TIMER_TYPE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTML_PAINTER : int32
		{
			HTMLPAINTER_OPAQUE = 1,
			HTMLPAINTER_TRANSPARENT = 2,
			HTMLPAINTER_ALPHA = 4,
			HTMLPAINTER_COMPLEX = 8,
			HTMLPAINTER_OVERLAY = 16,
			HTMLPAINTER_HITTEST = 32,
			HTMLPAINTER_SURFACE = 256,
			HTMLPAINTER_3DSURFACE = 512,
			HTMLPAINTER_NOBAND = 1024,
			HTMLPAINTER_NODC = 4096,
			HTMLPAINTER_NOPHYSICALCLIP = 8192,
			HTMLPAINTER_NOSAVEDC = 16384,
			HTMLPAINTER_SUPPORTS_XFORM = 32768,
			HTMLPAINTER_EXPAND = 65536,
			HTMLPAINTER_NOSCROLLBITS = 131072,
			HTML_PAINTER_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTML_PAINT_ZORDER : int32
		{
			HTMLPAINT_ZORDER_NONE = 0,
			HTMLPAINT_ZORDER_REPLACE_ALL = 1,
			HTMLPAINT_ZORDER_REPLACE_CONTENT = 2,
			HTMLPAINT_ZORDER_REPLACE_BACKGROUND = 3,
			HTMLPAINT_ZORDER_BELOW_CONTENT = 4,
			HTMLPAINT_ZORDER_BELOW_FLOW = 5,
			HTMLPAINT_ZORDER_ABOVE_FLOW = 6,
			HTMLPAINT_ZORDER_ABOVE_CONTENT = 7,
			HTMLPAINT_ZORDER_WINDOW_TOP = 8,
			HTML_PAINT_ZORDER_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTML_PAINT_DRAW_FLAGS : int32
		{
			HTMLPAINT_DRAW_UPDATEREGION = 1,
			HTMLPAINT_DRAW_USE_XFORM = 2,
			HTML_PAINT_DRAW_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTML_PAINT_EVENT_FLAGS : int32
		{
			HTMLPAINT_EVENT_TARGET = 1,
			HTMLPAINT_EVENT_SETCURSOR = 2,
			HTML_PAINT_EVENT_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTML_PAINT_DRAW_INFO_FLAGS : int32
		{
			HTMLPAINT_DRAWINFO_VIEWPORT = 1,
			HTMLPAINT_DRAWINFO_UPDATEREGION = 2,
			HTMLPAINT_DRAWINFO_XFORM = 4,
			HTML_PAINT_DRAW_INFO_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLDlgFlag : int32
		{
			HTMLDlgFlagNo = 0,
			HTMLDlgFlagOff = 0,
			HTMLDlgFlag0 = 0,
			HTMLDlgFlagYes = 1,
			HTMLDlgFlagOn = 1,
			HTMLDlgFlag1 = 1,
			HTMLDlgFlagNotSet = -1,
			HTMLDlgFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLDlgBorder : int32
		{
			HTMLDlgBorderThin = 0,
			HTMLDlgBorderThick = 262144,
			HTMLDlgBorder_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLDlgEdge : int32
		{
			HTMLDlgEdgeSunken = 0,
			HTMLDlgEdgeRaised = 16,
			HTMLDlgEdge_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLDlgCenter : int32
		{
			HTMLDlgCenterNo = 0,
			HTMLDlgCenterOff = 0,
			HTMLDlgCenter0 = 0,
			HTMLDlgCenterYes = 1,
			HTMLDlgCenterOn = 1,
			HTMLDlgCenter1 = 1,
			HTMLDlgCenterParent = 1,
			HTMLDlgCenterDesktop = 2,
			HTMLDlgCenter_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLAppFlag : int32
		{
			HTMLAppFlagNo = 0,
			HTMLAppFlagOff = 0,
			HTMLAppFlag0 = 0,
			HTMLAppFlagYes = 1,
			HTMLAppFlagOn = 1,
			HTMLAppFlag1 = 1,
			HTMLAppFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLMinimizeFlag : int32
		{
			HTMLMinimizeFlagNo = 0,
			HTMLMinimizeFlagYes = 131072,
			HTMLMinimizeFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLMaximizeFlag : int32
		{
			HTMLMaximizeFlagNo = 0,
			HTMLMaximizeFlagYes = 65536,
			HTMLMaximizeFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLCaptionFlag : int32
		{
			HTMLCaptionFlagNo = 0,
			HTMLCaptionFlagYes = 12582912,
			HTMLCaptionFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLSysMenuFlag : int32
		{
			HTMLSysMenuFlagNo = 0,
			HTMLSysMenuFlagYes = 524288,
			HTMLSysMenuFlag_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLBorder : int32
		{
			HTMLBorderNone = 0,
			HTMLBorderThick = 262144,
			HTMLBorderDialog = 4194304,
			HTMLBorderThin = 8388608,
			HTMLBorder_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLBorderStyle : int32
		{
			HTMLBorderStyleNormal = 0,
			HTMLBorderStyleRaised = 256,
			HTMLBorderStyleSunken = 512,
			HTMLBorderStylecombined = 768,
			HTMLBorderStyleStatic = 131072,
			HTMLBorderStyle_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum HTMLWindowState : int32
		{
			HTMLWindowStateNormal = 1,
			HTMLWindowStateMaximize = 3,
			HTMLWindowStateMinimize = 6,
			HTMLWindowState_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_EVENT : int32
		{
			BEHAVIOREVENT_FIRST = 0,
			BEHAVIOREVENT_CONTENTREADY = 0,
			BEHAVIOREVENT_DOCUMENTREADY = 1,
			BEHAVIOREVENT_APPLYSTYLE = 2,
			BEHAVIOREVENT_DOCUMENTCONTEXTCHANGE = 3,
			BEHAVIOREVENT_CONTENTSAVE = 4,
			BEHAVIOREVENT_LAST = 4,
			BEHAVIOR_EVENT_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_EVENT_FLAGS : int32
		{
			BEHAVIOREVENTFLAGS_BUBBLE = 1,
			BEHAVIOREVENTFLAGS_STANDARDADDITIVE = 2,
			BEHAVIOR_EVENT_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_RENDER_INFO : int32
		{
			BEHAVIORRENDERINFO_BEFOREBACKGROUND = 1,
			BEHAVIORRENDERINFO_AFTERBACKGROUND = 2,
			BEHAVIORRENDERINFO_BEFORECONTENT = 4,
			BEHAVIORRENDERINFO_AFTERCONTENT = 8,
			BEHAVIORRENDERINFO_AFTERFOREGROUND = 32,
			BEHAVIORRENDERINFO_ABOVECONTENT = 40,
			BEHAVIORRENDERINFO_ALLLAYERS = 255,
			BEHAVIORRENDERINFO_DISABLEBACKGROUND = 256,
			BEHAVIORRENDERINFO_DISABLENEGATIVEZ = 512,
			BEHAVIORRENDERINFO_DISABLECONTENT = 1024,
			BEHAVIORRENDERINFO_DISABLEPOSITIVEZ = 2048,
			BEHAVIORRENDERINFO_DISABLEALLLAYERS = 3840,
			BEHAVIORRENDERINFO_HITTESTING = 4096,
			BEHAVIORRENDERINFO_SURFACE = 1048576,
			BEHAVIORRENDERINFO_3DSURFACE = 2097152,
			BEHAVIOR_RENDER_INFO_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_RELATION : int32
		{
			BEHAVIOR_FIRSTRELATION = 0,
			BEHAVIOR_SAMEELEMENT = 0,
			BEHAVIOR_PARENT = 1,
			BEHAVIOR_CHILD = 2,
			BEHAVIOR_SIBLING = 3,
			BEHAVIOR_LASTRELATION = 3,
			BEHAVIOR_RELATION_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_LAYOUT_INFO : int32
		{
			BEHAVIORLAYOUTINFO_FULLDELEGATION = 1,
			BEHAVIORLAYOUTINFO_MODIFYNATURAL = 2,
			BEHAVIORLAYOUTINFO_MAPSIZE = 4,
			BEHAVIOR_LAYOUT_INFO_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum BEHAVIOR_LAYOUT_MODE : int32
		{
			BEHAVIORLAYOUTMODE_NATURAL = 1,
			BEHAVIORLAYOUTMODE_MINWIDTH = 2,
			BEHAVIORLAYOUTMODE_MAXWIDTH = 4,
			BEHAVIORLAYOUTMODE_MEDIA_RESOLUTION = 16384,
			BEHAVIORLAYOUTMODE_FINAL_PERCENT = 32768,
			BEHAVIOR_LAYOUT_MODE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ELEMENTDESCRIPTOR_FLAGS : int32
		{
			ELEMENTDESCRIPTORFLAGS_LITERAL = 1,
			ELEMENTDESCRIPTORFLAGS_NESTED_LITERAL = 2,
			ELEMENTDESCRIPTOR_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ELEMENTNAMESPACE_FLAGS : int32
		{
			ELEMENTNAMESPACEFLAGS_ALLOWANYTAG = 1,
			ELEMENTNAMESPACEFLAGS_QUERYFORUNKNOWNTAGS = 2,
			ELEMENTNAMESPACE_FLAGS_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum VIEW_OBJECT_ALPHA_MODE : int32
		{
			VIEW_OBJECT_ALPHA_MODE_IGNORE = 0,
			VIEW_OBJECT_ALPHA_MODE_PREMULTIPLIED = 1,
			VIEW_OBJECT_ALPHA_MODE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum VIEW_OBJECT_COMPOSITION_MODE : int32
		{
			VIEW_OBJECT_COMPOSITION_MODE_LEGACY = 0,
			VIEW_OBJECT_COMPOSITION_MODE_SURFACEPRESENTER = 1,
			VIEW_OBJECT_COMPOSITION_MODE_Max = 2147483647,
		}
		[AllowDuplicates]
		public enum ExtensionValidationContexts : int32
		{
			ExtensionValidationContextNone = 0,
			ExtensionValidationContextDynamic = 1,
			ExtensionValidationContextParsed = 2,
		}
		[AllowDuplicates]
		public enum ExtensionValidationResults : int32
		{
			ExtensionValidationResultNone = 0,
			ExtensionValidationResultDoNotInstantiate = 1,
			ExtensionValidationResultArrestPageLoad = 2,
		}
		[AllowDuplicates]
		public enum __MIDL_ITargetFrame2_0001 : int32
		{
			FINDFRAME_NONE = 0,
			FINDFRAME_JUSTTESTEXISTENCE = 1,
			FINDFRAME_INTERNAL = -2147483648,
		}
		[AllowDuplicates]
		public enum __MIDL_ITargetFrame2_0002 : int32
		{
			FRAMEOPTIONS_SCROLL_YES = 1,
			FRAMEOPTIONS_SCROLL_NO = 2,
			FRAMEOPTIONS_SCROLL_AUTO = 4,
			FRAMEOPTIONS_NORESIZE = 8,
			FRAMEOPTIONS_NO3DBORDER = 16,
			FRAMEOPTIONS_DESKTOP = 32,
			FRAMEOPTIONS_BROWSERBAND = 64,
		}
		[AllowDuplicates]
		public enum __MIDL_ITargetFrame_0001 : int32
		{
			NAVIGATEFRAME_FL_RECORD = 1,
			NAVIGATEFRAME_FL_POST = 2,
			NAVIGATEFRAME_FL_NO_DOC_CACHE = 4,
			NAVIGATEFRAME_FL_NO_IMAGE_CACHE = 8,
			NAVIGATEFRAME_FL_AUTH_FAIL_CACHE_OK = 16,
			NAVIGATEFRAME_FL_SENDING_FROM_FORM = 32,
			NAVIGATEFRAME_FL_REALLY_SENDING_FROM_FORM = 64,
		}
		[AllowDuplicates]
		public enum MediaActivityNotifyType : int32
		{
			MediaPlayback = 0,
			MediaRecording = 1,
			MediaCasting = 2,
		}
		[AllowDuplicates]
		public enum SCROLLABLECONTEXTMENU_PLACEMENT : int32
		{
			SCMP_TOP = 0,
			SCMP_BOTTOM = 1,
			SCMP_LEFT = 2,
			SCMP_RIGHT = 3,
			SCMP_FULL = 4,
		}
		[AllowDuplicates]
		public enum INTERNETEXPLORERCONFIGURATION : int32
		{
			INTERNETEXPLORERCONFIGURATION_HOST = 1,
			INTERNETEXPLORERCONFIGURATION_WEB_DRIVER = 2,
			INTERNETEXPLORERCONFIGURATION_WEB_DRIVER_EDGE = 4,
		}
		[AllowDuplicates]
		public enum IELAUNCHOPTION_FLAGS : int32
		{
			IELAUNCHOPTION_SCRIPTDEBUG = 1,
			IELAUNCHOPTION_FORCE_COMPAT = 2,
			IELAUNCHOPTION_FORCE_EDGE = 4,
			IELAUNCHOPTION_LOCK_ENGINE = 8,
		}
		[AllowDuplicates]
		public enum DOCHOSTUITYPE : int32
		{
			DOCHOSTUITYPE_BROWSE = 0,
			DOCHOSTUITYPE_AUTHOR = 1,
		}
		[AllowDuplicates]
		public enum DOCHOSTUIDBLCLK : int32
		{
			DOCHOSTUIDBLCLK_DEFAULT = 0,
			DOCHOSTUIDBLCLK_SHOWPROPERTIES = 1,
			DOCHOSTUIDBLCLK_SHOWCODE = 2,
		}
		[AllowDuplicates]
		public enum DOCHOSTUIFLAG : int32
		{
			DOCHOSTUIFLAG_DIALOG = 1,
			DOCHOSTUIFLAG_DISABLE_HELP_MENU = 2,
			DOCHOSTUIFLAG_NO3DBORDER = 4,
			DOCHOSTUIFLAG_SCROLL_NO = 8,
			DOCHOSTUIFLAG_DISABLE_SCRIPT_INACTIVE = 16,
			DOCHOSTUIFLAG_OPENNEWWIN = 32,
			DOCHOSTUIFLAG_DISABLE_OFFSCREEN = 64,
			DOCHOSTUIFLAG_FLAT_SCROLLBAR = 128,
			DOCHOSTUIFLAG_DIV_BLOCKDEFAULT = 256,
			DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY = 512,
			DOCHOSTUIFLAG_OVERRIDEBEHAVIORFACTORY = 1024,
			DOCHOSTUIFLAG_CODEPAGELINKEDFONTS = 2048,
			DOCHOSTUIFLAG_URL_ENCODING_DISABLE_UTF8 = 4096,
			DOCHOSTUIFLAG_URL_ENCODING_ENABLE_UTF8 = 8192,
			DOCHOSTUIFLAG_ENABLE_FORMS_AUTOCOMPLETE = 16384,
			DOCHOSTUIFLAG_ENABLE_INPLACE_NAVIGATION = 65536,
			DOCHOSTUIFLAG_IME_ENABLE_RECONVERSION = 131072,
			DOCHOSTUIFLAG_THEME = 262144,
			DOCHOSTUIFLAG_NOTHEME = 524288,
			DOCHOSTUIFLAG_NOPICS = 1048576,
			DOCHOSTUIFLAG_NO3DOUTERBORDER = 2097152,
			DOCHOSTUIFLAG_DISABLE_EDIT_NS_FIXUP = 4194304,
			DOCHOSTUIFLAG_LOCAL_MACHINE_ACCESS_CHECK = 8388608,
			DOCHOSTUIFLAG_DISABLE_UNTRUSTEDPROTOCOL = 16777216,
			DOCHOSTUIFLAG_HOST_NAVIGATES = 33554432,
			DOCHOSTUIFLAG_ENABLE_REDIRECT_NOTIFICATION = 67108864,
			DOCHOSTUIFLAG_USE_WINDOWLESS_SELECTCONTROL = 134217728,
			DOCHOSTUIFLAG_USE_WINDOWED_SELECTCONTROL = 268435456,
			DOCHOSTUIFLAG_ENABLE_ACTIVEX_INACTIVATE_MODE = 536870912,
			DOCHOSTUIFLAG_DPI_AWARE = 1073741824,
		}
		[AllowDuplicates]
		public enum OpenServiceErrors : int32
		{
			OS_E_NOTFOUND = -2147287038,
			OS_E_NOTSUPPORTED = -2147467231,
			OS_E_CANCELLED = -2147471631,
			OS_E_GPDISABLED = -1072886820,
		}
		[AllowDuplicates]
		public enum OpenServiceActivityContentType : int32
		{
			ActivityContentNone = -1,
			ActivityContentDocument = 0,
			ActivityContentSelection = 1,
			ActivityContentLink = 2,
			ActivityContentCount = 3,
		}
		[AllowDuplicates]
		public enum ADDURL_FLAG : int32
		{
			ADDURL_FIRST = 0,
			ADDURL_ADDTOHISTORYANDCACHE = 0,
			ADDURL_ADDTOCACHE = 1,
			ADDURL_Max = 2147483647,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT SHOWHTMLDIALOGFN(HWND hwndParent, IMoniker pmk, VARIANT* pvarArgIn, PWSTR pchOptions, VARIANT* pvArgOut);
		public function HRESULT SHOWHTMLDIALOGEXFN(HWND hwndParent, IMoniker pmk, uint32 dwDialogFlags, VARIANT* pvarArgIn, PWSTR pchOptions, VARIANT* pvArgOut);
		public function HRESULT SHOWMODELESSHTMLDIALOGFN(HWND hwndParent, IMoniker pmk, VARIANT* pvarArgIn, VARIANT* pvarOptions, IHTMLWindow2* ppWindow);
		public function HRESULT IEREGISTERXMLNSFN(PWSTR lpszURI, Guid clsid, BOOL fMachine);
		public function HRESULT IEISXMLNSREGISTEREDFN(PWSTR lpszURI, Guid* pCLSID);
		
		// --- Structs ---
		
		[CRepr]
		public struct HTML_PAINTER_INFO
		{
			public int32 lFlags;
			public int32 lZOrder;
			public Guid iidDrawObject;
			public RECT rcExpand;
		}
		[CRepr]
		public struct HTML_PAINT_XFORM
		{
			public float eM11;
			public float eM12;
			public float eM21;
			public float eM22;
			public float eDx;
			public float eDy;
		}
		[CRepr]
		public struct HTML_PAINT_DRAW_INFO
		{
			public RECT rcViewport;
			public HRGN hrgnUpdate;
			public HTML_PAINT_XFORM xform;
		}
		[CRepr]
		public struct tagNavigateData
		{
			public uint32 ulTarget;
			public uint32 ulURL;
			public uint32 ulRefURL;
			public uint32 ulPostData;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct IELAUNCHURLINFO
		{
			public uint32 cbSize;
			public uint32 dwCreationFlags;
			public uint32 dwLaunchOptionFlags;
		}
		[CRepr]
		public struct HTMLPersistEvents
		{
		}
		[CRepr]
		public struct LayoutRectEvents
		{
		}
		[CRepr]
		public struct HostDialogHelper
		{
		}
		[CRepr]
		public struct DOCHOSTUIINFO
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 dwDoubleClick;
			public PWSTR pchHostCss;
			public PWSTR pchHostNS;
		}
		[CRepr]
		public struct STATURL
		{
			public uint32 cbSize;
			public PWSTR pwcsUrl;
			public PWSTR pwcsTitle;
			public FILETIME ftLastVisited;
			public FILETIME ftLastUpdated;
			public FILETIME ftExpires;
			public uint32 dwFlags;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_HTMLCSSStyleDeclaration = .(0x30510741, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyle = .(0x3050f285, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLRuleStyle = .(0x3050f3d0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCSSRule = .(0x305106ef, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCSSImportRule = .(0x305106f0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCSSMediaRule = .(0x305106f1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCSSMediaList = .(0x30510732, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCSSNamespaceRule = .(0x305106f2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMSCSSKeyframeRule = .(0x3051080e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMSCSSKeyframesRule = .(0x3051080f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLRenderStyle = .(0x3050f6aa, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCurrentStyle = .(0x3050f3dc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDOMAttribute = .(0x3050f4b2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDOMTextNode = .(0x3050f4ba, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDOMImplementation = .(0x3050f80e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAttributeCollection = .(0x3050f4cc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_StaticNodeList = .(0x30510467, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMChildrenCollection = .(0x3050f5aa, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDefaults = .(0x3050f6c8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCDefaultDispatch = .(0x3050f4fc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCPropertyBehavior = .(0x3050f5de, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCMethodBehavior = .(0x3050f630, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCEventBehavior = .(0x3050f4fe, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCAttachBehavior = .(0x3050f5f5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTCDescBehavior = .(0x3050f5dd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLUrnCollection = .(0x3050f580, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLGenericElement = .(0x3050f4b8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetRule = .(0x3050f3ce, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetRulesCollection = .(0x3050f3cd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetPage = .(0x3050f7ef, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetPagesCollection = .(0x3050f7f1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheet = .(0x3050f2e4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetsCollection = .(0x3050f37f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLLinkElement = .(0x3050f277, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDOMRange = .(0x305106c3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFormElement = .(0x3050f251, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTextElement = .(0x3050f26a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLImg = .(0x3050f241, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLImageElementFactory = .(0x3050f38f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBody = .(0x3050f24a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFontElement = .(0x3050f27b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAnchorElement = .(0x3050f248, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLLabelElement = .(0x3050f32b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLListElement = .(0x3050f272, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLUListElement = .(0x3050f269, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLOListElement = .(0x3050f270, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLLIElement = .(0x3050f273, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBlockElement = .(0x3050f281, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDivElement = .(0x3050f27e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDDElement = .(0x3050f27f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDTElement = .(0x3050f27c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBRElement = .(0x3050f280, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDListElement = .(0x3050f27d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLHRElement = .(0x3050f252, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLParaElement = .(0x3050f26f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLElementCollection = .(0x3050f4cb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLHeaderElement = .(0x3050f27a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLSelectElement = .(0x3050f245, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLWndSelectElement = .(0x3050f2cf, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLOptionElement = .(0x3050f24d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLOptionElementFactory = .(0x3050f38d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLWndOptionElement = .(0x3050f2d0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLInputElement = .(0x3050f5d8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTextAreaElement = .(0x3050f2ac, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLRichtextElement = .(0x3050f2df, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLButtonElement = .(0x3050f2c6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMarqueeElement = .(0x3050f2b9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLHtmlElement = .(0x3050f491, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLHeadElement = .(0x3050f493, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTitleElement = .(0x3050f284, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMetaElement = .(0x3050f275, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBaseElement = .(0x3050f276, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLIsIndexElement = .(0x3050f278, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLNextIdElement = .(0x3050f279, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBaseFontElement = .(0x3050f282, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLUnknownElement = .(0x3050f268, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLHistory = .(0xfeceaaa3, 0x8405, 0x11cf, 0x8b, 0xa1, 0x00, 0xaa, 0x00, 0x47, 0x6d, 0xa6);
		public const Guid CLSID_COpsProfile = .(0x3050f402, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLNavigator = .(0xfeceaaa6, 0x8405, 0x11cf, 0x8b, 0xa1, 0x00, 0xaa, 0x00, 0x47, 0x6d, 0xa6);
		public const Guid CLSID_HTMLLocation = .(0x163bb1e1, 0x6e00, 0x11cf, 0x83, 0x7a, 0x48, 0xdc, 0x04, 0xc1, 0x00, 0x00);
		public const Guid CLSID_CMimeTypes = .(0x3050f3fe, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPlugins = .(0x3050f3ff, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CEventObj = .(0x3050f48a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleMedia = .(0x3051074c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_FramesCollection = .(0x3050f7f6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLScreen = .(0x3050f35d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLWindow2 = .(0xd48a6ec6, 0x6a4a, 0x11cf, 0x94, 0xa7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public const Guid CLSID_HTMLWindowProxy = .(0x3050f391, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDocumentCompatibleInfo = .(0x3051041b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDocumentCompatibleInfoCollection = .(0x30510419, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDocument = .(0x25336920, 0x03f9, 0x11cf, 0x8f, 0xd0, 0x00, 0xaa, 0x00, 0x68, 0x6f, 0x13);
		public const Guid CLSID_Scriptlet = .(0xae24fdae, 0x03c6, 0x11d1, 0x8b, 0x76, 0x00, 0x80, 0xc7, 0x44, 0xf3, 0x89);
		public const Guid CLSID_HTMLEmbed = .(0x3050f25d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAreasCollection = .(0x3050f4ca, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMapElement = .(0x3050f271, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAreaElement = .(0x3050f283, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTableCaption = .(0x3050f2ec, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCommentElement = .(0x3050f317, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLPhraseElement = .(0x3050f26e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLSpanElement = .(0x3050f3f5, 0x98b4, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTable = .(0x3050f26b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTableCol = .(0x3050f26c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTableSection = .(0x3050f2e9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTableRow = .(0x3050f26d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTableCell = .(0x3050f246, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLScriptElement = .(0x3050f28c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLNoShowElement = .(0x3050f38b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLObjectElement = .(0x3050f24e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLParamElement = .(0x3050f83e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFrameBase = .(0x3050f312, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFrameElement = .(0x3050f314, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLIFrame = .(0x3050f316, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDivPosition = .(0x3050f249, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFieldSetElement = .(0x3050f3e8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLLegendElement = .(0x3050f3e9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLSpanFlow = .(0x3050f3e6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLFrameSetSite = .(0x3050f31a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLBGsound = .(0x3050f370, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleElement = .(0x3050f37d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleFontFace = .(0x3050f3d4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_XDomainRequest = .(0x30510455, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_XDomainRequestFactory = .(0x30510457, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStorage = .(0x30510475, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMEvent = .(0x305104bb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMUIEvent = .(0x305106cb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMouseEvent = .(0x305106cf, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMDragEvent = .(0x30510762, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMouseWheelEvent = .(0x305106d1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMWheelEvent = .(0x305106d3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMTextEvent = .(0x305106d5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMKeyboardEvent = .(0x305106d7, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMCompositionEvent = .(0x305106d9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMutationEvent = .(0x305106db, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMBeforeUnloadEvent = .(0x30510764, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMFocusEvent = .(0x305106cd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMCustomEvent = .(0x305106df, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CanvasGradient = .(0x30510715, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CanvasPattern = .(0x30510717, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CanvasTextMetrics = .(0x30510719, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CanvasImageData = .(0x3051071b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CanvasRenderingContext2D = .(0x30510700, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLCanvasElement = .(0x305106e5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMProgressEvent = .(0x3051071f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMessageEvent = .(0x30510721, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMSiteModeEvent = .(0x30510766, 0x98b6, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMStorageEvent = .(0x30510723, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_XMLHttpRequestEventTarget = .(0x30510831, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLXMLHttpRequest = .(0x3051040b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLXMLHttpRequestFactory = .(0x3051040d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAngle = .(0x30510584, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedAngle = .(0x305105e4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedTransformList = .(0x305105b1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedBoolean = .(0x3051058b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedEnumeration = .(0x3051058e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedInteger = .(0x3051058f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedLength = .(0x30510581, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedLengthList = .(0x30510582, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedNumber = .(0x30510588, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedNumberList = .(0x3051058a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedRect = .(0x30510586, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedString = .(0x3051058c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGClipPathElement = .(0x305105e6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGElement = .(0x30510564, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGLength = .(0x3051057e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGLengthList = .(0x30510580, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGMatrix = .(0x305105ae, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGNumber = .(0x30510587, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGNumberList = .(0x30510589, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPatternElement = .(0x305105d4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSeg = .(0x305105b3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegArcAbs = .(0x305105bb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegArcRel = .(0x305105bc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegClosePath = .(0x305105bd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegMovetoAbs = .(0x305105cc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegMovetoRel = .(0x305105cd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoAbs = .(0x305105c6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoRel = .(0x305105c9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoCubicAbs = .(0x305105be, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoCubicRel = .(0x305105bf, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoCubicSmoothAbs = .(0x305105c0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoCubicSmoothRel = .(0x305105c1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoQuadraticAbs = .(0x305105c2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoQuadraticRel = .(0x305105c3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoQuadraticSmoothAbs = .(0x305105c4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegCurvetoQuadraticSmoothRel = .(0x305105c5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoHorizontalAbs = .(0x305105c7, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoHorizontalRel = .(0x305105c8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoVerticalAbs = .(0x305105ca, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegLinetoVerticalRel = .(0x305105cb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathSegList = .(0x305105b4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPoint = .(0x305105ba, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPointList = .(0x305105b9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGRect = .(0x30510583, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGStringList = .(0x3051058d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTransform = .(0x305105af, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGSVGElement = .(0x30510574, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGUseElement = .(0x30510590, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLStyleSheetRulesAppliedCollection = .(0xeb36f845, 0x2395, 0x4719, 0xb8, 0x5c, 0xd0, 0xd8, 0x0e, 0x18, 0x4b, 0xd9);
		public const Guid CLSID_RulesApplied = .(0x7c803920, 0x7a53, 0x4d26, 0x98, 0xac, 0xfd, 0xd2, 0x3e, 0x6b, 0x9e, 0x01);
		public const Guid CLSID_RulesAppliedCollection = .(0x671926ee, 0xc3cf, 0x40af, 0xbe, 0x8f, 0x1c, 0xba, 0xee, 0x64, 0x86, 0xe8);
		public const Guid CLSID_HTMLW3CComputedStyle = .(0x305106c8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTransformList = .(0x305105b0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGCircleElement = .(0x30510578, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGEllipseElement = .(0x30510579, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGLineElement = .(0x3051057a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGRectElement = .(0x30510577, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPolygonElement = .(0x3051057b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPolylineElement = .(0x3051057c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGGElement = .(0x3051056f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGSymbolElement = .(0x30510571, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGDefsElement = .(0x30510570, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPathElement = .(0x305105b2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGPreserveAspectRatio = .(0x305105d0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTextElement = .(0x305105df, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAnimatedPreserveAspectRatio = .(0x305105ce, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGImageElement = .(0x305105cf, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGStopElement = .(0x305105d5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGGradientElement = .(0x305105d6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGLinearGradientElement = .(0x305105d2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGRadialGradientElement = .(0x305105d3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGMaskElement = .(0x305105e7, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGMarkerElement = .(0x305105de, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGZoomEvent = .(0x305105d9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGAElement = .(0x305105db, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGViewElement = .(0x305105dc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMediaError = .(0x3051070a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLTimeRanges = .(0x3051070b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLMediaElement = .(0x3051070c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLSourceElement = .(0x3051070d, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAudioElement = .(0x3051070e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAudioElementFactory = .(0x305107ec, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLVideoElement = .(0x3051070f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGSwitchElement = .(0x305105d8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGDescElement = .(0x30510572, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTitleElement = .(0x30510573, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGMetadataElement = .(0x305105d7, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGElementInstance = .(0x30510575, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGElementInstanceList = .(0x30510576, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMException = .(0x3051072c, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_RangeException = .(0x3051072e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGException = .(0x30510730, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_EventException = .(0x3051073b, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGScriptElement = .(0x305105e1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGStyleElement = .(0x305105d1, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTextContentElement = .(0x305105dd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTextPositioningElement = .(0x305105e0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMDocumentType = .(0x30510739, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_NodeIterator = .(0x30510745, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_TreeWalker = .(0x30510747, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMProcessingInstruction = .(0x30510743, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLPerformance = .(0x3051074f, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLPerformanceNavigation = .(0x30510751, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLPerformanceTiming = .(0x30510753, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_SVGTSpanElement = .(0x305105e2, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CTemplatePrinter = .(0x3050f6b3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPrintManagerTemplatePrinter = .(0x63619f54, 0x9d71, 0x4c23, 0xa0, 0x8d, 0x50, 0xd7, 0xf1, 0x8d, 0xb2, 0xe9);
		public const Guid CLSID_SVGTextPathElement = .(0x305105eb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_XMLSerializer = .(0x3051077e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMParser = .(0x30510782, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDOMXmlSerializerFactory = .(0x30510780, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMParserFactory = .(0x30510784, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLSemanticElement = .(0x305107b0, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLProgressElement = .(0x3050f2d5, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMSTransitionEvent = .(0x305107b6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMMSAnimationEvent = .(0x305107b8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_WebGeolocation = .(0x305107c6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_WebGeocoordinates = .(0x305107c8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_WebGeopositionError = .(0x305107ca, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_WebGeoposition = .(0x305107ce, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CClientCaps = .(0x7e8bc44e, 0xaeff, 0x11d1, 0x89, 0xc2, 0x00, 0xc0, 0x4f, 0xb6, 0xbf, 0xc4);
		public const Guid CLSID_DOMMSManipulationEvent = .(0x30510817, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_DOMCloseEvent = .(0x30510800, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_ApplicationCache = .(0x30510829, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HtmlDlgSafeHelper = .(0x3050f819, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_BlockFormats = .(0x3050f831, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_FontNames = .(0x3050f83a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLNamespace = .(0x3050f6bc, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLNamespaceCollection = .(0x3050f6b9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_ThreadDialogProcParam = .(0x3050f5eb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLDialog = .(0x3050f28a, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLPopup = .(0x3050f667, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLAppBehavior = .(0x3050f5cb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_OldHTMLDocument = .(0xd48a6ec9, 0x6a4a, 0x11cf, 0x94, 0xa7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public const Guid CLSID_OldHTMLFormElement = .(0x0d04d285, 0x6bec, 0x11cf, 0x8b, 0x97, 0x00, 0xaa, 0x00, 0x47, 0x6d, 0xa6);
		public const Guid CLSID_HTMLInputButtonElement = .(0x3050f2b4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLInputTextElement = .(0x3050f2ab, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLInputFileElement = .(0x3050f2ae, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLOptionButtonElement = .(0x3050f2be, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HTMLInputImage = .(0x3050f2c4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_HomePageSetting = .(0x374cede0, 0x873a, 0x4c4f, 0xbc, 0x86, 0xbc, 0xc8, 0xcf, 0x51, 0x16, 0xa3);
		public const Guid CLSID_InternetExplorerManager = .(0xdf4fcc34, 0x067a, 0x4e0a, 0x83, 0x52, 0x4a, 0x1a, 0x50, 0x95, 0x34, 0x6e);
		public const Guid CLSID_IEWebDriverManager = .(0x90314af2, 0x5250, 0x47b3, 0x89, 0xd8, 0x62, 0x95, 0xfc, 0x23, 0xbc, 0x22);
		public const Guid CLSID_PeerFactory = .(0x3050f4cf, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_IntelliForms = .(0x613ab92e, 0x16bf, 0x11d2, 0xbc, 0xa5, 0x00, 0xc0, 0x4f, 0xd9, 0x29, 0xdb);
		public const Guid CLSID_HomePage = .(0x766bf2ae, 0xd650, 0x11d1, 0x98, 0x11, 0x00, 0xc0, 0x4f, 0xc3, 0x1d, 0x2e);
		public const Guid CLSID_CPersistUserData = .(0x3050f48e, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPersistDataPeer = .(0x3050f487, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPersistShortcut = .(0x3050f4c6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPersistHistory = .(0x3050f4c8, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CPersistSnapshot = .(0x3050f4c9, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CDownloadBehavior = .(0x3050f5be, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_wfolders = .(0xbae31f9a, 0x1b81, 0x11d2, 0xa9, 0x7a, 0x00, 0xc0, 0x4f, 0x8e, 0xcb, 0x02);
		public const Guid CLSID_AnchorClick = .(0x13d5413c, 0x33b9, 0x11d2, 0x95, 0xa7, 0x00, 0xc0, 0x4f, 0x8e, 0xcb, 0x02);
		public const Guid CLSID_CLayoutRect = .(0x3050f664, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CDeviceRect = .(0x3050f6d4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CHeaderFooter = .(0x3050f6cd, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_OpenServiceManager = .(0x098870b6, 0x39ea, 0x480b, 0xb8, 0xb5, 0xdd, 0x01, 0x67, 0xc4, 0xdb, 0x59);
		public const Guid CLSID_OpenServiceActivityManager = .(0xc5efd803, 0x50f8, 0x43cd, 0x9a, 0xb8, 0xaa, 0xfc, 0x13, 0x94, 0xc9, 0xe0);
		public const Guid CLSID_CoDitherToRGB8 = .(0xa860ce50, 0x3910, 0x11d0, 0x86, 0xfc, 0x00, 0xa0, 0xc9, 0x13, 0xf7, 0x50);
		public const Guid CLSID_CoSniffStream = .(0x6a01fda0, 0x30df, 0x11d0, 0xb7, 0x24, 0x00, 0xaa, 0x00, 0x6c, 0x1a, 0x01);
		public const Guid CLSID_CoMapMIMEToCLSID = .(0x30c3b080, 0x30fb, 0x11d0, 0xb7, 0x24, 0x00, 0xaa, 0x00, 0x6c, 0x1a, 0x01);
		
		// --- COM Interfaces ---
		
		public struct IHTMLFiltersCollection {}
		public struct IIE70DispatchEx {}
		public struct IIE80DispatchEx {}
		public struct IHTMLEventObj {}
		public struct IElementBehaviorSite {}
		public struct IElementBehavior {}
		public struct IElementBehaviorFactory {}
		public struct IElementBehaviorSiteOM {}
		public struct IElementBehaviorRender {}
		public struct IElementBehaviorSiteRender {}
		public struct IDOMEvent {}
		public struct IHTMLDOMConstructor {}
		public struct IHTMLStyleSheetRule {}
		public struct IHTMLCSSStyleDeclaration {}
		public struct IHTMLCSSStyleDeclaration2 {}
		public struct IHTMLCSSStyleDeclaration3 {}
		public struct IHTMLCSSStyleDeclaration4 {}
		public struct IHTMLStyleEnabled {}
		public struct DispHTMLCSSStyleDeclaration {}
		public struct IHTMLStyle {}
		public struct IHTMLStyle2 {}
		public struct IHTMLStyle3 {}
		public struct IHTMLStyle4 {}
		public struct IHTMLStyle5 {}
		public struct IHTMLStyle6 {}
		public struct IHTMLRuleStyle {}
		public struct IHTMLRuleStyle2 {}
		public struct IHTMLRuleStyle3 {}
		public struct IHTMLRuleStyle4 {}
		public struct IHTMLRuleStyle5 {}
		public struct IHTMLRuleStyle6 {}
		public struct DispHTMLStyle {}
		public struct DispHTMLRuleStyle {}
		public struct IHTMLStyleSheetRulesCollection {}
		public struct IHTMLStyleSheet {}
		public struct IHTMLCSSRule {}
		public struct IHTMLCSSImportRule {}
		public struct IHTMLCSSMediaRule {}
		public struct IHTMLCSSMediaList {}
		public struct IHTMLCSSNamespaceRule {}
		public struct IHTMLMSCSSKeyframeRule {}
		public struct IHTMLMSCSSKeyframesRule {}
		public struct DispHTMLCSSRule {}
		public struct DispHTMLCSSImportRule {}
		public struct DispHTMLCSSMediaRule {}
		public struct DispHTMLCSSMediaList {}
		public struct DispHTMLCSSNamespaceRule {}
		public struct DispHTMLMSCSSKeyframeRule {}
		public struct DispHTMLMSCSSKeyframesRule {}
		public struct IHTMLRenderStyle {}
		public struct DispHTMLRenderStyle {}
		public struct IHTMLCurrentStyle {}
		public struct IHTMLCurrentStyle2 {}
		public struct IHTMLCurrentStyle3 {}
		public struct IHTMLCurrentStyle4 {}
		public struct IHTMLCurrentStyle5 {}
		public struct DispHTMLCurrentStyle {}
		public struct IHTMLElement {}
		public struct IHTMLRect {}
		public struct IHTMLRect2 {}
		public struct IHTMLRectCollection {}
		public struct IHTMLElementCollection {}
		public struct IHTMLElement2 {}
		public struct IHTMLAttributeCollection3 {}
		public struct IDOMDocumentType {}
		public struct IHTMLDocument7 {}
		public struct IHTMLDOMNode {}
		public struct IHTMLDOMNode2 {}
		public struct IHTMLDOMNode3 {}
		public struct IHTMLDOMAttribute {}
		public struct IHTMLDOMAttribute2 {}
		public struct IHTMLDOMAttribute3 {}
		public struct IHTMLDOMAttribute4 {}
		public struct IHTMLDOMTextNode {}
		public struct IHTMLDOMTextNode2 {}
		public struct IHTMLDOMTextNode3 {}
		public struct IHTMLDOMImplementation {}
		public struct IHTMLDOMImplementation2 {}
		public struct DispHTMLDOMAttribute {}
		public struct DispHTMLDOMTextNode {}
		public struct DispHTMLDOMImplementation {}
		public struct IHTMLAttributeCollection {}
		public struct IHTMLAttributeCollection2 {}
		public struct IHTMLAttributeCollection4 {}
		public struct IHTMLDOMChildrenCollection {}
		public struct IHTMLDOMChildrenCollection2 {}
		public struct DispHTMLAttributeCollection {}
		public struct DispStaticNodeList {}
		public struct DispDOMChildrenCollection {}
		public struct HTMLElementEvents4 {}
		public struct HTMLElementEvents3 {}
		public struct HTMLElementEvents2 {}
		public struct HTMLElementEvents {}
		public struct IRulesAppliedCollection {}
		public struct IHTMLElement3 {}
		public struct IHTMLElement4 {}
		public struct IElementSelector {}
		public struct IHTMLElementRender {}
		public struct IHTMLUniqueName {}
		public struct IHTMLElement5 {}
		public struct IHTMLElement6 {}
		public struct IHTMLElement7 {}
		public struct IHTMLElementAppliedStyles {}
		public struct IElementTraversal {}
		public struct IHTMLDatabinding {}
		public struct IHTMLDocument {}
		public struct IHTMLElementDefaults {}
		public struct DispHTMLDefaults {}
		public struct IHTCDefaultDispatch {}
		public struct IHTCPropertyBehavior {}
		public struct IHTCMethodBehavior {}
		public struct IHTCEventBehavior {}
		public struct IHTCAttachBehavior {}
		public struct IHTCAttachBehavior2 {}
		public struct IHTCDescBehavior {}
		public struct DispHTCDefaultDispatch {}
		public struct DispHTCPropertyBehavior {}
		public struct DispHTCMethodBehavior {}
		public struct DispHTCEventBehavior {}
		public struct DispHTCAttachBehavior {}
		public struct DispHTCDescBehavior {}
		public struct IHTMLUrnCollection {}
		public struct DispHTMLUrnCollection {}
		public struct IHTMLGenericElement {}
		public struct DispHTMLGenericElement {}
		public struct IHTMLStyleSheetRuleApplied {}
		public struct IHTMLStyleSheetRule2 {}
		public struct IHTMLStyleSheetRulesCollection2 {}
		public struct DispHTMLStyleSheetRule {}
		public struct DispHTMLStyleSheetRulesCollection {}
		public struct IHTMLStyleSheetPage {}
		public struct IHTMLStyleSheetPage2 {}
		public struct IHTMLStyleSheetPagesCollection {}
		public struct DispHTMLStyleSheetPage {}
		public struct DispHTMLStyleSheetPagesCollection {}
		public struct IHTMLStyleSheetsCollection {}
		public struct IHTMLStyleSheet2 {}
		public struct IHTMLStyleSheet3 {}
		public struct IHTMLStyleSheet4 {}
		public struct DispHTMLStyleSheet {}
		public struct IHTMLStyleSheetsCollection2 {}
		public struct DispHTMLStyleSheetsCollection {}
		public struct HTMLLinkElementEvents2 {}
		public struct HTMLLinkElementEvents {}
		public struct IHTMLLinkElement {}
		public struct IHTMLLinkElement2 {}
		public struct IHTMLLinkElement3 {}
		public struct IHTMLLinkElement4 {}
		public struct IHTMLLinkElement5 {}
		public struct DispHTMLLinkElement {}
		public struct IHTMLTxtRange {}
		public struct IHTMLTextRangeMetrics {}
		public struct IHTMLTextRangeMetrics2 {}
		public struct IHTMLTxtRangeCollection {}
		public struct IHTMLDOMRange {}
		public struct DispHTMLDOMRange {}
		public struct HTMLFormElementEvents2 {}
		public struct HTMLFormElementEvents {}
		public struct IHTMLFormElement {}
		public struct IHTMLFormElement2 {}
		public struct IHTMLFormElement3 {}
		public struct IHTMLSubmitData {}
		public struct IHTMLFormElement4 {}
		public struct DispHTMLFormElement {}
		public struct HTMLControlElementEvents2 {}
		public struct HTMLControlElementEvents {}
		public struct IHTMLControlElement {}
		public struct IHTMLTextElement {}
		public struct DispHTMLTextElement {}
		public struct HTMLTextContainerEvents2 {}
		public struct HTMLTextContainerEvents {}
		public struct IHTMLTextContainer {}
		public struct IHTMLControlRange {}
		public struct IHTMLControlRange2 {}
		public struct HTMLImgEvents2 {}
		public struct HTMLImgEvents {}
		public struct IHTMLImgElement {}
		public struct IHTMLImgElement2 {}
		public struct IHTMLImgElement3 {}
		public struct IHTMLImgElement4 {}
		public struct IHTMLMSImgElement {}
		public struct IHTMLImageElementFactory {}
		public struct DispHTMLImg {}
		public struct IHTMLBodyElement {}
		public struct IHTMLBodyElement2 {}
		public struct IHTMLBodyElement3 {}
		public struct IHTMLBodyElement4 {}
		public struct IHTMLBodyElement5 {}
		public struct DispHTMLBody {}
		public struct IHTMLFontElement {}
		public struct DispHTMLFontElement {}
		public struct HTMLAnchorEvents2 {}
		public struct HTMLAnchorEvents {}
		public struct IHTMLAnchorElement {}
		public struct IHTMLAnchorElement2 {}
		public struct IHTMLAnchorElement3 {}
		public struct DispHTMLAnchorElement {}
		public struct HTMLLabelEvents2 {}
		public struct HTMLLabelEvents {}
		public struct IHTMLLabelElement {}
		public struct IHTMLLabelElement2 {}
		public struct DispHTMLLabelElement {}
		public struct IHTMLListElement {}
		public struct IHTMLListElement2 {}
		public struct DispHTMLListElement {}
		public struct IHTMLUListElement {}
		public struct DispHTMLUListElement {}
		public struct IHTMLOListElement {}
		public struct DispHTMLOListElement {}
		public struct IHTMLLIElement {}
		public struct DispHTMLLIElement {}
		public struct IHTMLBlockElement {}
		public struct IHTMLBlockElement2 {}
		public struct IHTMLBlockElement3 {}
		public struct DispHTMLBlockElement {}
		public struct IHTMLDivElement {}
		public struct DispHTMLDivElement {}
		public struct IHTMLDDElement {}
		public struct DispHTMLDDElement {}
		public struct IHTMLDTElement {}
		public struct DispHTMLDTElement {}
		public struct IHTMLBRElement {}
		public struct DispHTMLBRElement {}
		public struct IHTMLDListElement {}
		public struct DispHTMLDListElement {}
		public struct IHTMLHRElement {}
		public struct DispHTMLHRElement {}
		public struct IHTMLParaElement {}
		public struct DispHTMLParaElement {}
		public struct IHTMLElementCollection2 {}
		public struct IHTMLElementCollection3 {}
		public struct IHTMLElementCollection4 {}
		public struct DispHTMLElementCollection {}
		public struct IHTMLHeaderElement {}
		public struct DispHTMLHeaderElement {}
		public struct HTMLSelectElementEvents2 {}
		public struct HTMLSelectElementEvents {}
		public struct IHTMLOptionElement {}
		public struct IHTMLSelectElementEx {}
		public struct IHTMLSelectElement {}
		public struct IHTMLSelectElement2 {}
		public struct IHTMLSelectElement4 {}
		public struct IHTMLSelectElement5 {}
		public struct IHTMLSelectElement6 {}
		public struct DispHTMLSelectElement {}
		public struct DispHTMLWndSelectElement {}
		public struct IHTMLSelectionObject {}
		public struct IHTMLSelectionObject2 {}
		public struct IHTMLSelection {}
		public struct IHTMLOptionElement3 {}
		public struct IHTMLOptionElement4 {}
		public struct IHTMLOptionElementFactory {}
		public struct DispHTMLOptionElement {}
		public struct DispHTMLWndOptionElement {}
		public struct HTMLButtonElementEvents2 {}
		public struct HTMLButtonElementEvents {}
		public struct HTMLInputTextElementEvents2 {}
		public struct HTMLOptionButtonElementEvents2 {}
		public struct HTMLInputFileElementEvents2 {}
		public struct HTMLInputImageEvents2 {}
		public struct HTMLInputTextElementEvents {}
		public struct HTMLOptionButtonElementEvents {}
		public struct HTMLInputFileElementEvents {}
		public struct HTMLInputImageEvents {}
		public struct IHTMLInputElement {}
		public struct IHTMLInputElement2 {}
		public struct IHTMLInputElement3 {}
		public struct IHTMLInputButtonElement {}
		public struct IHTMLInputHiddenElement {}
		public struct IHTMLInputTextElement {}
		public struct IHTMLInputTextElement2 {}
		public struct IHTMLInputFileElement {}
		public struct IHTMLOptionButtonElement {}
		public struct IHTMLInputImage {}
		public struct IHTMLInputRangeElement {}
		public struct DispHTMLInputElement {}
		public struct IHTMLTextAreaElement {}
		public struct IHTMLTextAreaElement2 {}
		public struct DispHTMLTextAreaElement {}
		public struct DispHTMLRichtextElement {}
		public struct IHTMLButtonElement {}
		public struct IHTMLButtonElement2 {}
		public struct DispHTMLButtonElement {}
		public struct HTMLMarqueeElementEvents2 {}
		public struct HTMLMarqueeElementEvents {}
		public struct IHTMLMarqueeElement {}
		public struct DispHTMLMarqueeElement {}
		public struct IHTMLHtmlElement {}
		public struct IHTMLHeadElement {}
		public struct IHTMLHeadElement2 {}
		public struct IHTMLTitleElement {}
		public struct IHTMLMetaElement {}
		public struct IHTMLMetaElement2 {}
		public struct IHTMLMetaElement3 {}
		public struct IHTMLBaseElement {}
		public struct IHTMLBaseElement2 {}
		public struct DispHTMLHtmlElement {}
		public struct DispHTMLHeadElement {}
		public struct DispHTMLTitleElement {}
		public struct DispHTMLMetaElement {}
		public struct DispHTMLBaseElement {}
		public struct IHTMLIsIndexElement {}
		public struct IHTMLIsIndexElement2 {}
		public struct IHTMLNextIdElement {}
		public struct DispHTMLIsIndexElement {}
		public struct DispHTMLNextIdElement {}
		public struct IHTMLBaseFontElement {}
		public struct DispHTMLBaseFontElement {}
		public struct IHTMLUnknownElement {}
		public struct DispHTMLUnknownElement {}
		public struct IWebGeolocation {}
		public struct IHTMLMimeTypesCollection {}
		public struct IHTMLPluginsCollection {}
		public struct IOmHistory {}
		public struct IHTMLOpsProfile {}
		public struct IOmNavigator {}
		public struct INavigatorGeolocation {}
		public struct INavigatorDoNotTrack {}
		public struct IHTMLLocation {}
		public struct DispHTMLHistory {}
		public struct DispHTMLNavigator {}
		public struct DispHTMLLocation {}
		public struct DispCPlugins {}
		public struct IHTMLBookmarkCollection {}
		public struct IHTMLDataTransfer {}
		public struct IHTMLEventObj2 {}
		public struct IHTMLEventObj3 {}
		public struct IHTMLEventObj4 {}
		public struct IHTMLEventObj5 {}
		public struct IHTMLEventObj6 {}
		public struct DispCEventObj {}
		public struct IHTMLStyleMedia {}
		public struct DispHTMLStyleMedia {}
		public struct IHTMLFramesCollection2 {}
		public struct HTMLWindowEvents3 {}
		public struct HTMLWindowEvents2 {}
		public struct HTMLWindowEvents {}
		public struct IHTMLDocument2 {}
		public struct IHTMLWindow2 {}
		public struct IHTMLWindow3 {}
		public struct IHTMLFrameBase {}
		public struct IHTMLStorage {}
		public struct IHTMLPerformance {}
		public struct IHTMLApplicationCache {}
		public struct IHTMLScreen {}
		public struct IHTMLScreen2 {}
		public struct IHTMLScreen3 {}
		public struct IHTMLScreen4 {}
		public struct IHTMLWindow4 {}
		public struct IHTMLWindow5 {}
		public struct IHTMLWindow6 {}
		public struct IHTMLWindow7 {}
		public struct IHTMLWindow8 {}
		public struct DispHTMLScreen {}
		public struct DispHTMLWindow2 {}
		public struct DispHTMLWindowProxy {}
		public struct IHTMLDocumentCompatibleInfo {}
		public struct IHTMLDocumentCompatibleInfoCollection {}
		public struct DispHTMLDocumentCompatibleInfo {}
		public struct DispHTMLDocumentCompatibleInfoCollection {}
		public struct HTMLDocumentEvents4 {}
		public struct HTMLDocumentEvents3 {}
		public struct HTMLDocumentEvents2 {}
		public struct HTMLDocumentEvents {}
		public struct ISVGSVGElement {}
		public struct IDOMNodeIterator {}
		public struct IDOMTreeWalker {}
		public struct IDOMProcessingInstruction {}
		public struct IHTMLDocument3 {}
		public struct IHTMLDocument4 {}
		public struct IHTMLDocument5 {}
		public struct IHTMLDocument6 {}
		public struct IHTMLDocument8 {}
		public struct IDocumentEvent {}
		public struct IDocumentRange {}
		public struct IDocumentSelector {}
		public struct IDocumentTraversal {}
		public struct DispHTMLDocument {}
		public struct DWebBridgeEvents {}
		public struct IWebBridge {}
		public struct IWBScriptControl {}
		public struct IHTMLEmbedElement {}
		public struct IHTMLEmbedElement2 {}
		public struct DispHTMLEmbed {}
		public struct HTMLMapEvents2 {}
		public struct HTMLMapEvents {}
		public struct IHTMLAreasCollection {}
		public struct IHTMLAreasCollection2 {}
		public struct IHTMLAreasCollection3 {}
		public struct IHTMLAreasCollection4 {}
		public struct IHTMLMapElement {}
		public struct DispHTMLAreasCollection {}
		public struct DispHTMLMapElement {}
		public struct HTMLAreaEvents2 {}
		public struct HTMLAreaEvents {}
		public struct IHTMLAreaElement {}
		public struct IHTMLAreaElement2 {}
		public struct DispHTMLAreaElement {}
		public struct IHTMLTableCaption {}
		public struct DispHTMLTableCaption {}
		public struct IHTMLCommentElement {}
		public struct IHTMLCommentElement2 {}
		public struct IHTMLCommentElement3 {}
		public struct DispHTMLCommentElement {}
		public struct IHTMLPhraseElement {}
		public struct IHTMLPhraseElement2 {}
		public struct IHTMLPhraseElement3 {}
		public struct IHTMLSpanElement {}
		public struct DispHTMLPhraseElement {}
		public struct DispHTMLSpanElement {}
		public struct HTMLTableEvents2 {}
		public struct HTMLTableEvents {}
		public struct IHTMLTableSection {}
		public struct IHTMLTable {}
		public struct IHTMLTable2 {}
		public struct IHTMLTable3 {}
		public struct IHTMLTable4 {}
		public struct IHTMLTableCol {}
		public struct IHTMLTableCol2 {}
		public struct IHTMLTableCol3 {}
		public struct IHTMLTableSection2 {}
		public struct IHTMLTableSection3 {}
		public struct IHTMLTableSection4 {}
		public struct IHTMLTableRow {}
		public struct IHTMLTableRow2 {}
		public struct IHTMLTableRow3 {}
		public struct IHTMLTableRow4 {}
		public struct IHTMLTableRowMetrics {}
		public struct IHTMLTableCell {}
		public struct IHTMLTableCell2 {}
		public struct IHTMLTableCell3 {}
		public struct DispHTMLTable {}
		public struct DispHTMLTableCol {}
		public struct DispHTMLTableSection {}
		public struct DispHTMLTableRow {}
		public struct DispHTMLTableCell {}
		public struct HTMLScriptEvents2 {}
		public struct HTMLScriptEvents {}
		public struct IHTMLScriptElement {}
		public struct IHTMLScriptElement2 {}
		public struct IHTMLScriptElement3 {}
		public struct IHTMLScriptElement4 {}
		public struct DispHTMLScriptElement {}
		public struct IHTMLNoShowElement {}
		public struct DispHTMLNoShowElement {}
		public struct HTMLObjectElementEvents2 {}
		public struct HTMLObjectElementEvents {}
		public struct IHTMLObjectElement {}
		public struct IHTMLObjectElement2 {}
		public struct IHTMLObjectElement3 {}
		public struct IHTMLObjectElement4 {}
		public struct IHTMLObjectElement5 {}
		public struct IHTMLParamElement {}
		public struct IHTMLParamElement2 {}
		public struct DispHTMLObjectElement {}
		public struct DispHTMLParamElement {}
		public struct HTMLFrameSiteEvents2 {}
		public struct HTMLFrameSiteEvents {}
		public struct IHTMLFrameBase2 {}
		public struct IHTMLFrameBase3 {}
		public struct DispHTMLFrameBase {}
		public struct IHTMLFrameElement {}
		public struct IHTMLFrameElement2 {}
		public struct IHTMLFrameElement3 {}
		public struct DispHTMLFrameElement {}
		public struct IHTMLIFrameElement {}
		public struct IHTMLIFrameElement2 {}
		public struct IHTMLIFrameElement3 {}
		public struct DispHTMLIFrame {}
		public struct IHTMLDivPosition {}
		public struct IHTMLFieldSetElement {}
		public struct IHTMLFieldSetElement2 {}
		public struct IHTMLLegendElement {}
		public struct IHTMLLegendElement2 {}
		public struct DispHTMLDivPosition {}
		public struct DispHTMLFieldSetElement {}
		public struct DispHTMLLegendElement {}
		public struct IHTMLSpanFlow {}
		public struct DispHTMLSpanFlow {}
		public struct IHTMLFrameSetElement {}
		public struct IHTMLFrameSetElement2 {}
		public struct IHTMLFrameSetElement3 {}
		public struct DispHTMLFrameSetSite {}
		public struct IHTMLBGsound {}
		public struct DispHTMLBGsound {}
		public struct IHTMLFontNamesCollection {}
		public struct IHTMLFontSizesCollection {}
		public struct IHTMLOptionsHolder {}
		public struct HTMLStyleElementEvents2 {}
		public struct HTMLStyleElementEvents {}
		public struct IHTMLStyleElement {}
		public struct IHTMLStyleElement2 {}
		public struct DispHTMLStyleElement {}
		public struct IHTMLStyleFontFace {}
		public struct IHTMLStyleFontFace2 {}
		public struct DispHTMLStyleFontFace {}
		public struct IHTMLXDomainRequest {}
		public struct IHTMLXDomainRequestFactory {}
		public struct DispXDomainRequest {}
		public struct IHTMLStorage2 {}
		public struct DispHTMLStorage {}
		public struct IEventTarget {}
		public struct DispDOMEvent {}
		public struct IDOMUIEvent {}
		public struct DispDOMUIEvent {}
		public struct IDOMMouseEvent {}
		public struct DispDOMMouseEvent {}
		public struct IDOMDragEvent {}
		public struct DispDOMDragEvent {}
		public struct IDOMMouseWheelEvent {}
		public struct DispDOMMouseWheelEvent {}
		public struct IDOMWheelEvent {}
		public struct DispDOMWheelEvent {}
		public struct IDOMTextEvent {}
		public struct DispDOMTextEvent {}
		public struct IDOMKeyboardEvent {}
		public struct DispDOMKeyboardEvent {}
		public struct IDOMCompositionEvent {}
		public struct DispDOMCompositionEvent {}
		public struct IDOMMutationEvent {}
		public struct DispDOMMutationEvent {}
		public struct IDOMBeforeUnloadEvent {}
		public struct DispDOMBeforeUnloadEvent {}
		public struct IDOMFocusEvent {}
		public struct DispDOMFocusEvent {}
		public struct IDOMCustomEvent {}
		public struct DispDOMCustomEvent {}
		public struct ICanvasGradient {}
		public struct ICanvasPattern {}
		public struct ICanvasTextMetrics {}
		public struct ICanvasImageData {}
		public struct ICanvasPixelArray {}
		public struct IHTMLCanvasElement {}
		public struct ICanvasRenderingContext2D {}
		public struct DispCanvasGradient {}
		public struct DispCanvasPattern {}
		public struct DispCanvasTextMetrics {}
		public struct DispCanvasImageData {}
		public struct DispCanvasRenderingContext2D {}
		public struct DispHTMLCanvasElement {}
		public struct IDOMProgressEvent {}
		public struct DispDOMProgressEvent {}
		public struct IDOMMessageEvent {}
		public struct DispDOMMessageEvent {}
		public struct IDOMSiteModeEvent {}
		public struct DispDOMSiteModeEvent {}
		public struct IDOMStorageEvent {}
		public struct DispDOMStorageEvent {}
		public struct IXMLHttpRequestEventTarget {}
		public struct DispXMLHttpRequestEventTarget {}
		public struct HTMLXMLHttpRequestEvents {}
		public struct IHTMLXMLHttpRequest {}
		public struct IHTMLXMLHttpRequest2 {}
		public struct IHTMLXMLHttpRequestFactory {}
		public struct DispHTMLXMLHttpRequest {}
		public struct ISVGAngle {}
		public struct ISVGElement {}
		public struct ISVGRect {}
		public struct ISVGMatrix {}
		public struct ISVGStringList {}
		public struct ISVGAnimatedRect {}
		public struct ISVGAnimatedString {}
		public struct ISVGAnimatedBoolean {}
		public struct ISVGAnimatedTransformList {}
		public struct ISVGAnimatedPreserveAspectRatio {}
		public struct ISVGStylable {}
		public struct ISVGLocatable {}
		public struct ISVGTransformable {}
		public struct ISVGTests {}
		public struct ISVGLangSpace {}
		public struct ISVGExternalResourcesRequired {}
		public struct ISVGFitToViewBox {}
		public struct ISVGZoomAndPan {}
		public struct ISVGURIReference {}
		public struct ISVGAnimatedAngle {}
		public struct ISVGTransformList {}
		public struct ISVGAnimatedEnumeration {}
		public struct ISVGAnimatedInteger {}
		public struct ISVGLength {}
		public struct ISVGAnimatedLength {}
		public struct ISVGLengthList {}
		public struct ISVGAnimatedLengthList {}
		public struct ISVGNumber {}
		public struct ISVGAnimatedNumber {}
		public struct ISVGNumberList {}
		public struct ISVGAnimatedNumberList {}
		public struct ISVGClipPathElement {}
		public struct DispSVGClipPathElement {}
		public struct ISVGDocument {}
		public struct IGetSVGDocument {}
		public struct DispSVGElement {}
		public struct IICCSVGColor {}
		public struct ISVGPaint {}
		public struct ISVGPatternElement {}
		public struct DispSVGPatternElement {}
		public struct ISVGPathSeg {}
		public struct ISVGPathSegArcAbs {}
		public struct ISVGPathSegArcRel {}
		public struct ISVGPathSegClosePath {}
		public struct ISVGPathSegMovetoAbs {}
		public struct ISVGPathSegMovetoRel {}
		public struct ISVGPathSegLinetoAbs {}
		public struct ISVGPathSegLinetoRel {}
		public struct ISVGPathSegCurvetoCubicAbs {}
		public struct ISVGPathSegCurvetoCubicRel {}
		public struct ISVGPathSegCurvetoCubicSmoothAbs {}
		public struct ISVGPathSegCurvetoCubicSmoothRel {}
		public struct ISVGPathSegCurvetoQuadraticAbs {}
		public struct ISVGPathSegCurvetoQuadraticRel {}
		public struct ISVGPathSegCurvetoQuadraticSmoothAbs {}
		public struct ISVGPathSegCurvetoQuadraticSmoothRel {}
		public struct ISVGPathSegLinetoHorizontalAbs {}
		public struct ISVGPathSegLinetoHorizontalRel {}
		public struct ISVGPathSegLinetoVerticalAbs {}
		public struct ISVGPathSegLinetoVerticalRel {}
		public struct DispSVGPathSegArcAbs {}
		public struct DispSVGPathSegArcRel {}
		public struct DispSVGPathSegClosePath {}
		public struct DispSVGPathSegMovetoAbs {}
		public struct DispSVGPathSegMovetoRel {}
		public struct DispSVGPathSegLinetoAbs {}
		public struct DispSVGPathSegLinetoRel {}
		public struct DispSVGPathSegCurvetoCubicAbs {}
		public struct DispSVGPathSegCurvetoCubicRel {}
		public struct DispSVGPathSegCurvetoCubicSmoothAbs {}
		public struct DispSVGPathSegCurvetoCubicSmoothRel {}
		public struct DispSVGPathSegCurvetoQuadraticAbs {}
		public struct DispSVGPathSegCurvetoQuadraticRel {}
		public struct DispSVGPathSegCurvetoQuadraticSmoothAbs {}
		public struct DispSVGPathSegCurvetoQuadraticSmoothRel {}
		public struct DispSVGPathSegLinetoHorizontalAbs {}
		public struct DispSVGPathSegLinetoHorizontalRel {}
		public struct DispSVGPathSegLinetoVerticalAbs {}
		public struct DispSVGPathSegLinetoVerticalRel {}
		public struct ISVGPathSegList {}
		public struct ISVGPoint {}
		public struct ISVGPointList {}
		public struct ISVGViewSpec {}
		public struct ISVGTransform {}
		public struct DispSVGSVGElement {}
		public struct ISVGElementInstance {}
		public struct ISVGUseElement {}
		public struct DispSVGUseElement {}
		public struct IHTMLStyleSheetRulesAppliedCollection {}
		public struct IRulesApplied {}
		public struct DispHTMLStyleSheetRulesAppliedCollection {}
		public struct DispRulesApplied {}
		public struct DispRulesAppliedCollection {}
		public struct DispHTMLW3CComputedStyle {}
		public struct ISVGAnimatedPoints {}
		public struct ISVGCircleElement {}
		public struct ISVGEllipseElement {}
		public struct ISVGLineElement {}
		public struct ISVGRectElement {}
		public struct ISVGPolygonElement {}
		public struct ISVGPolylineElement {}
		public struct DispSVGCircleElement {}
		public struct DispSVGEllipseElement {}
		public struct DispSVGLineElement {}
		public struct DispSVGRectElement {}
		public struct DispSVGPolygonElement {}
		public struct DispSVGPolylineElement {}
		public struct ISVGGElement {}
		public struct DispSVGGElement {}
		public struct ISVGSymbolElement {}
		public struct DispSVGSymbolElement {}
		public struct ISVGDefsElement {}
		public struct DispSVGDefsElement {}
		public struct ISVGAnimatedPathData {}
		public struct ISVGPathElement {}
		public struct DispSVGPathElement {}
		public struct ISVGPreserveAspectRatio {}
		public struct ISVGTextElement {}
		public struct DispSVGTextElement {}
		public struct ISVGImageElement {}
		public struct DispSVGImageElement {}
		public struct ISVGStopElement {}
		public struct DispSVGStopElement {}
		public struct ISVGGradientElement {}
		public struct DispSVGGradientElement {}
		public struct ISVGLinearGradientElement {}
		public struct DispSVGLinearGradientElement {}
		public struct ISVGRadialGradientElement {}
		public struct DispSVGRadialGradientElement {}
		public struct ISVGMaskElement {}
		public struct DispSVGMaskElement {}
		public struct ISVGMarkerElement {}
		public struct DispSVGMarkerElement {}
		public struct ISVGZoomEvent {}
		public struct DispSVGZoomEvent {}
		public struct ISVGAElement {}
		public struct DispSVGAElement {}
		public struct ISVGViewElement {}
		public struct DispSVGViewElement {}
		public struct IHTMLMediaError {}
		public struct IHTMLTimeRanges {}
		public struct IHTMLTimeRanges2 {}
		public struct IHTMLMediaElement {}
		public struct IHTMLMediaElement2 {}
		public struct IHTMLMSMediaElement {}
		public struct IHTMLSourceElement {}
		public struct IHTMLAudioElement {}
		public struct IHTMLVideoElement {}
		public struct IHTMLAudioElementFactory {}
		public struct DispHTMLMediaError {}
		public struct DispHTMLTimeRanges {}
		public struct DispHTMLMediaElement {}
		public struct DispHTMLSourceElement {}
		public struct DispHTMLAudioElement {}
		public struct DispHTMLVideoElement {}
		public struct ISVGSwitchElement {}
		public struct DispSVGSwitchElement {}
		public struct ISVGDescElement {}
		public struct DispSVGDescElement {}
		public struct ISVGTitleElement {}
		public struct DispSVGTitleElement {}
		public struct ISVGMetadataElement {}
		public struct DispSVGMetadataElement {}
		public struct ISVGElementInstanceList {}
		public struct DispSVGElementInstance {}
		public struct DispSVGElementInstanceList {}
		public struct IDOMException {}
		public struct DispDOMException {}
		public struct IRangeException {}
		public struct DispRangeException {}
		public struct ISVGException {}
		public struct DispSVGException {}
		public struct IEventException {}
		public struct DispEventException {}
		public struct ISVGScriptElement {}
		public struct DispSVGScriptElement {}
		public struct ISVGStyleElement {}
		public struct DispSVGStyleElement {}
		public struct ISVGTextContentElement {}
		public struct DispSVGTextContentElement {}
		public struct ISVGTextPositioningElement {}
		public struct DispSVGTextPositioningElement {}
		public struct DispDOMDocumentType {}
		public struct DispNodeIterator {}
		public struct DispTreeWalker {}
		public struct DispDOMProcessingInstruction {}
		public struct IHTMLPerformanceNavigation {}
		public struct IHTMLPerformanceTiming {}
		public struct DispHTMLPerformance {}
		public struct DispHTMLPerformanceNavigation {}
		public struct DispHTMLPerformanceTiming {}
		public struct ISVGTSpanElement {}
		public struct DispSVGTSpanElement {}
		public struct ITemplatePrinter {}
		public struct ITemplatePrinter2 {}
		public struct ITemplatePrinter3 {}
		public struct IPrintManagerTemplatePrinter {}
		public struct IPrintManagerTemplatePrinter2 {}
		public struct DispCPrintManagerTemplatePrinter {}
		public struct ISVGTextPathElement {}
		public struct DispSVGTextPathElement {}
		public struct IDOMXmlSerializer {}
		public struct IDOMParser {}
		public struct DispXMLSerializer {}
		public struct DispDOMParser {}
		public struct IDOMXmlSerializerFactory {}
		public struct IDOMParserFactory {}
		public struct DispHTMLSemanticElement {}
		public struct IHTMLProgressElement {}
		public struct DispHTMLProgressElement {}
		public struct IDOMMSTransitionEvent {}
		public struct DispDOMMSTransitionEvent {}
		public struct IDOMMSAnimationEvent {}
		public struct DispDOMMSAnimationEvent {}
		public struct IWebGeocoordinates {}
		public struct IWebGeopositionError {}
		public struct IWebGeoposition {}
		public struct DispWebGeolocation {}
		public struct DispWebGeocoordinates {}
		public struct DispWebGeopositionError {}
		public struct DispWebGeoposition {}
		public struct IClientCaps {}
		public struct IDOMMSManipulationEvent {}
		public struct DispDOMMSManipulationEvent {}
		public struct IDOMCloseEvent {}
		public struct DispDOMCloseEvent {}
		public struct DispApplicationCache {}
		public struct ICSSFilterSite {}
		public struct IMarkupPointer {}
		public struct IMarkupContainer {}
		public struct IMarkupContainer2 {}
		public struct IHTMLChangeLog {}
		public struct IHTMLChangeSink {}
		public struct ISegmentList {}
		public struct ISegmentListIterator {}
		public struct IHTMLCaret {}
		public struct ISegment {}
		public struct IElementSegment {}
		public struct IHighlightSegment {}
		public struct IHighlightRenderingServices {}
		public struct ILineInfo {}
		public struct IDisplayPointer {}
		public struct IDisplayServices {}
		public struct IHtmlDlgSafeHelper {}
		public struct IBlockFormats {}
		public struct IFontNames {}
		public struct ICSSFilter {}
		public struct ISecureUrlHost {}
		public struct IMarkupServices {}
		public struct IMarkupServices2 {}
		public struct IHTMLChangePlayback {}
		public struct IMarkupPointer2 {}
		public struct IMarkupTextFrags {}
		public struct IXMLGenericParse {}
		public struct IHTMLEditHost {}
		public struct IHTMLEditHost2 {}
		public struct ISequenceNumber {}
		public struct IIMEServices {}
		public struct ISelectionServicesListener {}
		public struct ISelectionServices {}
		public struct IHTMLEditDesigner {}
		public struct IHTMLEditServices {}
		public struct IHTMLEditServices2 {}
		public struct IHTMLComputedStyle {}
		public struct IDeveloperConsoleMessageReceiver {}
		public struct IScriptEventHandler {}
		public struct IDebugCallbackNotificationHandler {}
		public struct IScriptEventHandlerSourceInfo {}
		public struct IDOMEventRegistrationCallback {}
		public struct IEventTarget2 {}
		public struct HTMLNamespaceEvents {}
		public struct IHTMLNamespace {}
		public struct IHTMLNamespaceCollection {}
		public struct DispHTMLNamespace {}
		public struct DispHTMLNamespaceCollection {}
		public struct IHTMLPainter {}
		public struct IHTMLPaintSite {}
		public struct IHTMLPainterEventInfo {}
		public struct IHTMLPainterOverlay {}
		public struct IHTMLIPrintCollection {}
		public struct IEnumPrivacyRecords {}
		public struct IWPCBlockedUrls {}
		public struct IHTMLDOMConstructorCollection {}
		public struct IHTMLDialog {}
		public struct IHTMLDialog2 {}
		public struct IHTMLDialog3 {}
		public struct IHTMLModelessInit {}
		public struct IHTMLPopup {}
		public struct DispHTMLPopup {}
		public struct IHTMLAppBehavior {}
		public struct IHTMLAppBehavior2 {}
		public struct IHTMLAppBehavior3 {}
		public struct DispHTMLAppBehavior {}
		public struct DispIHTMLInputButtonElement {}
		public struct DispIHTMLInputTextElement {}
		public struct DispIHTMLInputFileElement {}
		public struct DispIHTMLOptionButtonElement {}
		public struct DispIHTMLInputImage {}
		public struct IElementNamespace {}
		public struct IElementNamespaceTable {}
		public struct IElementNamespaceFactory {}
		public struct IElementNamespaceFactory2 {}
		public struct IElementNamespaceFactoryCallback {}
		public struct IElementBehaviorSiteOM2 {}
		public struct IElementBehaviorCategory {}
		public struct IElementBehaviorSiteCategory {}
		public struct IElementBehaviorSubmit {}
		public struct IElementBehaviorFocus {}
		public struct IElementBehaviorLayout {}
		public struct IElementBehaviorLayout2 {}
		public struct IElementBehaviorSiteLayout {}
		public struct IElementBehaviorSiteLayout2 {}
		public struct IHostBehaviorInit {}
		public struct ISurfacePresenter {}
		public struct IViewObjectPresentSite {}
		public struct ICanvasPixelArrayData {}
		public struct IViewObjectPrint {}
		public struct IViewObjectPresentNotifySite {}
		public struct IViewObjectPresentNotify {}
		public struct ITrackingProtection {}
		public struct IBFCacheable {}
		public struct IDocObjectService {}
		public struct IDownloadManager {}
		public struct IExtensionValidation {}
		public struct IHomePageSetting {}
		public struct ITargetNotify {}
		public struct ITargetNotify2 {}
		public struct ITargetFrame2 {}
		public struct ITargetContainer {}
		public struct ITargetFrame {}
		public struct ITargetEmbedding {}
		public struct ITargetFramePriv {}
		public struct ITargetFramePriv2 {}
		public struct ISurfacePresenterFlipBuffer {}
		public struct ISurfacePresenterFlip {}
		public struct ISurfacePresenterFlip2 {}
		public struct IViewObjectPresentFlipSite {}
		public struct IViewObjectPresentFlipSite2 {}
		public struct IViewObjectPresentFlip {}
		public struct IViewObjectPresentFlip2 {}
		public struct IActiveXUIHandlerSite2 {}
		public struct ICaretPositionProvider {}
		public struct ITridentTouchInput {}
		public struct ITridentTouchInputSite {}
		public struct IMediaActivityNotifySite {}
		public struct IAudioSessionSite {}
		public struct IPrintTaskRequestHandler {}
		public struct IPrintTaskRequestFactory {}
		public struct IScrollableContextMenu {}
		public struct IScrollableContextMenu2 {}
		public struct IActiveXUIHandlerSite {}
		public struct IActiveXUIHandlerSite3 {}
		public struct IEnumManagerFrames {}
		public struct IInternetExplorerManager {}
		public struct IInternetExplorerManager2 {}
		public struct IIEWebDriverSite {}
		public struct IIEWebDriverManager {}
		public struct IPeerFactory {}
		public struct IHomePage {}
		public struct IIntelliForms {}
		public struct Iwfolders {}
		public struct IAnchorClick {}
		public struct IHTMLUserDataOM {}
		public struct IHTMLPersistDataOM {}
		public struct IHTMLPersistData {}
		public struct IDownloadBehavior {}
		public struct ILayoutRect {}
		public struct IDeviceRect {}
		public struct IHeaderFooter {}
		public struct IHeaderFooter2 {}
		public struct IHostDialogHelper {}
		public struct IDocHostUIHandler {}
		public struct IDocHostUIHandler2 {}
		public struct ICustomDoc {}
		public struct IDocHostShowUI {}
		public struct IClassFactoryEx {}
		public struct IHTMLOMWindowServices {}
		public struct IDiagnosticsScriptEngineSite {}
		public struct IDiagnosticsScriptEngine {}
		public struct IDiagnosticsScriptEngineProvider {}
		public struct IOpenServiceActivityInput {}
		public struct IOpenServiceActivityOutputContext {}
		public struct IOpenService {}
		public struct IOpenServiceManager {}
		public struct IOpenServiceActivity {}
		public struct IEnumOpenServiceActivity {}
		public struct IOpenServiceActivityCategory {}
		public struct IEnumOpenServiceActivityCategory {}
		public struct IOpenServiceActivityManager {}
		public struct IPersistHistory {}
		public struct IEnumSTATURL {}
		public struct IUrlHistoryStg {}
		public struct IUrlHistoryStg2 {}
		public struct IUrlHistoryNotify {}
		public struct IWebBrowserEventsService {}
		public struct IWebBrowserEventsUrlService {}
		public struct ITimerService {}
		public struct ITimer {}
		public struct ITimerEx {}
		public struct ITimerSink {}
		public struct IMapMIMEToCLSID {}
		public struct IImageDecodeFilter {}
		public struct IImageDecodeEventSink {}
		public struct IImageDecodeEventSink2 {}
		public struct ISniffStream {}
		public struct IDithererImpl {}
		
		// --- Functions ---
		
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingEnable(HWND hwndParent, PSTR pszUsername, BOOL fEnable);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingEnableW(HWND hwndParent, PWSTR pszUsername, BOOL fEnable);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingCheckUserAccess(PSTR pszUsername, PSTR pszURL, PSTR pszRatingInfo, uint8* pData, uint32 cbData, void** ppRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingCheckUserAccessW(PWSTR pszUsername, PWSTR pszURL, PWSTR pszRatingInfo, uint8* pData, uint32 cbData, void** ppRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingAccessDeniedDialog(HWND hDlg, PSTR pszUsername, PSTR pszContentDescription, void* pRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingAccessDeniedDialogW(HWND hDlg, PWSTR pszUsername, PWSTR pszContentDescription, void* pRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingAccessDeniedDialog2(HWND hDlg, PSTR pszUsername, void* pRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingAccessDeniedDialog2W(HWND hDlg, PWSTR pszUsername, void* pRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingFreeDetails(void* pRatingDetails);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingObtainCancel(HANDLE hRatingObtainQuery);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingObtainQuery(PSTR pszTargetUrl, uint32 dwUserData, int fCallback, HANDLE* phRatingObtainQuery);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingObtainQueryW(PWSTR pszTargetUrl, uint32 dwUserData, int fCallback, HANDLE* phRatingObtainQuery);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingSetupUI(HWND hDlg, PSTR pszUsername);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingSetupUIW(HWND hDlg, PWSTR pszUsername);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingAddToApprovedSites(HWND hDlg, uint32 cbPasswordBlob, uint8* pbPasswordBlob, PWSTR lpszUrl, BOOL fAlwaysNever, BOOL fSitePage, BOOL fApprovedSitesEnforced);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingClickedOnPRFInternal(HWND hWndOwner, HINSTANCE param1, PSTR lpszFileName, int32 nShow);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingClickedOnRATInternal(HWND hWndOwner, HINSTANCE param1, PSTR lpszFileName, int32 nShow);
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingEnabledQuery();
		[Import("msrating.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RatingInit();
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateMIMEMap(IMapMIMEToCLSID* ppMap);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DecodeImage(IStream pStream, IMapMIMEToCLSID pMap, IUnknown pEventSink);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SniffStream(IStream pInStream, uint32* pnFormat, IStream* ppOutStream);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetMaxMIMEIDBytes(uint32* pnMaxBytes);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IdentifyMIMEType(uint8* pbBytes, uint32 nBytes, uint32* pnFormat);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ComputeInvCMAP(RGBQUAD* pRGBColors, uint32 nColors, uint8* pInvTable, uint32 cbTable);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DitherTo8(uint8* pDestBits, int32 nDestPitch, uint8* pSrcBits, int32 nSrcPitch, Guid* bfidSrc, RGBQUAD* prgbDestColors, RGBQUAD* prgbSrcColors, uint8* pbDestInvMap, int32 x, int32 y, int32 cx, int32 cy, int32 lDestTrans, int32 lSrcTrans);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDDrawSurfaceOnDIB(HBITMAP hbmDib, IDirectDrawSurface* ppSurface);
		[Import("imgutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DecodeImageEx(IStream pStream, IMapMIMEToCLSID pMap, IUnknown pEventSink, PWSTR pszMIMETypeParam);
		[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DoPrivacyDlg(HWND hwndOwner, PWSTR pszUrl, IEnumPrivacyRecords pPrivacyEnum, BOOL fReportAllSites);
		
	}
}
