using System;

// namespace Data.HtmlHelp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 HH_DISPLAY_TOPIC = 0;
		public const uint32 HH_HELP_FINDER = 0;
		public const uint32 HH_DISPLAY_TOC = 1;
		public const uint32 HH_DISPLAY_INDEX = 2;
		public const uint32 HH_DISPLAY_SEARCH = 3;
		public const uint32 HH_SET_WIN_TYPE = 4;
		public const uint32 HH_GET_WIN_TYPE = 5;
		public const uint32 HH_GET_WIN_HANDLE = 6;
		public const uint32 HH_ENUM_INFO_TYPE = 7;
		public const uint32 HH_SET_INFO_TYPE = 8;
		public const uint32 HH_SYNC = 9;
		public const uint32 HH_RESERVED1 = 10;
		public const uint32 HH_RESERVED2 = 11;
		public const uint32 HH_RESERVED3 = 12;
		public const uint32 HH_KEYWORD_LOOKUP = 13;
		public const uint32 HH_DISPLAY_TEXT_POPUP = 14;
		public const uint32 HH_HELP_CONTEXT = 15;
		public const uint32 HH_TP_HELP_CONTEXTMENU = 16;
		public const uint32 HH_TP_HELP_WM_HELP = 17;
		public const uint32 HH_CLOSE_ALL = 18;
		public const uint32 HH_ALINK_LOOKUP = 19;
		public const uint32 HH_GET_LAST_ERROR = 20;
		public const uint32 HH_ENUM_CATEGORY = 21;
		public const uint32 HH_ENUM_CATEGORY_IT = 22;
		public const uint32 HH_RESET_IT_FILTER = 23;
		public const uint32 HH_SET_INCLUSIVE_FILTER = 24;
		public const uint32 HH_SET_EXCLUSIVE_FILTER = 25;
		public const uint32 HH_INITIALIZE = 28;
		public const uint32 HH_UNINITIALIZE = 29;
		public const uint32 HH_SET_QUERYSERVICE = 30;
		public const uint32 HH_PRETRANSLATEMESSAGE = 253;
		public const uint32 HH_SET_GLOBAL_PROPERTY = 252;
		public const uint32 HH_SAFE_DISPLAY_TOPIC = 32;
		public const uint32 HHWIN_PROP_TAB_AUTOHIDESHOW = 1;
		public const uint32 HHWIN_PROP_ONTOP = 2;
		public const uint32 HHWIN_PROP_NOTITLEBAR = 4;
		public const uint32 HHWIN_PROP_NODEF_STYLES = 8;
		public const uint32 HHWIN_PROP_NODEF_EXSTYLES = 16;
		public const uint32 HHWIN_PROP_TRI_PANE = 32;
		public const uint32 HHWIN_PROP_NOTB_TEXT = 64;
		public const uint32 HHWIN_PROP_POST_QUIT = 128;
		public const uint32 HHWIN_PROP_AUTO_SYNC = 256;
		public const uint32 HHWIN_PROP_TRACKING = 512;
		public const uint32 HHWIN_PROP_TAB_SEARCH = 1024;
		public const uint32 HHWIN_PROP_TAB_HISTORY = 2048;
		public const uint32 HHWIN_PROP_TAB_FAVORITES = 4096;
		public const uint32 HHWIN_PROP_CHANGE_TITLE = 8192;
		public const uint32 HHWIN_PROP_NAV_ONLY_WIN = 16384;
		public const uint32 HHWIN_PROP_NO_TOOLBAR = 32768;
		public const uint32 HHWIN_PROP_MENU = 65536;
		public const uint32 HHWIN_PROP_TAB_ADVSEARCH = 131072;
		public const uint32 HHWIN_PROP_USER_POS = 262144;
		public const uint32 HHWIN_PROP_TAB_CUSTOM1 = 524288;
		public const uint32 HHWIN_PROP_TAB_CUSTOM2 = 1048576;
		public const uint32 HHWIN_PROP_TAB_CUSTOM3 = 2097152;
		public const uint32 HHWIN_PROP_TAB_CUSTOM4 = 4194304;
		public const uint32 HHWIN_PROP_TAB_CUSTOM5 = 8388608;
		public const uint32 HHWIN_PROP_TAB_CUSTOM6 = 16777216;
		public const uint32 HHWIN_PROP_TAB_CUSTOM7 = 33554432;
		public const uint32 HHWIN_PROP_TAB_CUSTOM8 = 67108864;
		public const uint32 HHWIN_PROP_TAB_CUSTOM9 = 134217728;
		public const uint32 HHWIN_TB_MARGIN = 268435456;
		public const uint32 HHWIN_PARAM_PROPERTIES = 2;
		public const uint32 HHWIN_PARAM_STYLES = 4;
		public const uint32 HHWIN_PARAM_EXSTYLES = 8;
		public const uint32 HHWIN_PARAM_RECT = 16;
		public const uint32 HHWIN_PARAM_NAV_WIDTH = 32;
		public const uint32 HHWIN_PARAM_SHOWSTATE = 64;
		public const uint32 HHWIN_PARAM_INFOTYPES = 128;
		public const uint32 HHWIN_PARAM_TB_FLAGS = 256;
		public const uint32 HHWIN_PARAM_EXPANSION = 512;
		public const uint32 HHWIN_PARAM_TABPOS = 1024;
		public const uint32 HHWIN_PARAM_TABORDER = 2048;
		public const uint32 HHWIN_PARAM_HISTORY_COUNT = 4096;
		public const uint32 HHWIN_PARAM_CUR_TAB = 8192;
		public const uint32 HHWIN_BUTTON_EXPAND = 2;
		public const uint32 HHWIN_BUTTON_BACK = 4;
		public const uint32 HHWIN_BUTTON_FORWARD = 8;
		public const uint32 HHWIN_BUTTON_STOP = 16;
		public const uint32 HHWIN_BUTTON_REFRESH = 32;
		public const uint32 HHWIN_BUTTON_HOME = 64;
		public const uint32 HHWIN_BUTTON_BROWSE_FWD = 128;
		public const uint32 HHWIN_BUTTON_BROWSE_BCK = 256;
		public const uint32 HHWIN_BUTTON_NOTES = 512;
		public const uint32 HHWIN_BUTTON_CONTENTS = 1024;
		public const uint32 HHWIN_BUTTON_SYNC = 2048;
		public const uint32 HHWIN_BUTTON_OPTIONS = 4096;
		public const uint32 HHWIN_BUTTON_PRINT = 8192;
		public const uint32 HHWIN_BUTTON_INDEX = 16384;
		public const uint32 HHWIN_BUTTON_SEARCH = 32768;
		public const uint32 HHWIN_BUTTON_HISTORY = 65536;
		public const uint32 HHWIN_BUTTON_FAVORITES = 131072;
		public const uint32 HHWIN_BUTTON_JUMP1 = 262144;
		public const uint32 HHWIN_BUTTON_JUMP2 = 524288;
		public const uint32 HHWIN_BUTTON_ZOOM = 1048576;
		public const uint32 HHWIN_BUTTON_TOC_NEXT = 2097152;
		public const uint32 HHWIN_BUTTON_TOC_PREV = 4194304;
		public const uint32 IDTB_EXPAND = 200;
		public const uint32 IDTB_CONTRACT = 201;
		public const uint32 IDTB_STOP = 202;
		public const uint32 IDTB_REFRESH = 203;
		public const uint32 IDTB_BACK = 204;
		public const uint32 IDTB_HOME = 205;
		public const uint32 IDTB_SYNC = 206;
		public const uint32 IDTB_PRINT = 207;
		public const uint32 IDTB_OPTIONS = 208;
		public const uint32 IDTB_FORWARD = 209;
		public const uint32 IDTB_NOTES = 210;
		public const uint32 IDTB_BROWSE_FWD = 211;
		public const uint32 IDTB_BROWSE_BACK = 212;
		public const uint32 IDTB_CONTENTS = 213;
		public const uint32 IDTB_INDEX = 214;
		public const uint32 IDTB_SEARCH = 215;
		public const uint32 IDTB_HISTORY = 216;
		public const uint32 IDTB_FAVORITES = 217;
		public const uint32 IDTB_JUMP1 = 218;
		public const uint32 IDTB_JUMP2 = 219;
		public const uint32 IDTB_CUSTOMIZE = 221;
		public const uint32 IDTB_ZOOM = 222;
		public const uint32 IDTB_TOC_NEXT = 223;
		public const uint32 IDTB_TOC_PREV = 224;
		public const uint32 HH_MAX_TABS = 19;
		public const int32 HH_FTS_DEFAULT_PROXIMITY = -1;
		public const Guid CLSID_IITPropList = .(0x4662daae, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 PROP_ADD = 0;
		public const uint32 PROP_DELETE = 1;
		public const uint32 PROP_UPDATE = 2;
		public const uint32 TYPE_VALUE = 0;
		public const uint32 TYPE_POINTER = 1;
		public const uint32 TYPE_STRING = 2;
		public const Guid CLSID_IITDatabase = .(0x66673452, 0x8c23, 0x11d0, 0xa8, 0x4e, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
		public const Guid CLSID_IITDatabaseLocal = .(0x4662daa9, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 STDPROP_UID = 1;
		public const uint32 STDPROP_TITLE = 2;
		public const uint32 STDPROP_USERDATA = 3;
		public const uint32 STDPROP_KEY = 4;
		public const uint32 STDPROP_SORTKEY = 100;
		public const uint32 STDPROP_DISPLAYKEY = 101;
		public const uint32 STDPROP_SORTORDINAL = 102;
		public const uint32 STDPROP_INDEX_TEXT = 200;
		public const uint32 STDPROP_INDEX_VFLD = 201;
		public const uint32 STDPROP_INDEX_DTYPE = 202;
		public const uint32 STDPROP_INDEX_LENGTH = 203;
		public const uint32 STDPROP_INDEX_BREAK = 204;
		public const uint32 STDPROP_INDEX_TERM = 210;
		public const uint32 STDPROP_INDEX_TERM_RAW_LENGTH = 211;
		public const uint32 STDPROP_USERPROP_BASE = 65536;
		public const uint32 STDPROP_USERPROP_MAX = 2147483647;
		public const Guid CLSID_IITCmdInt = .(0x4662daa2, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITSvMgr = .(0x4662daa3, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWordWheelUpdate = .(0x4662daa5, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITGroupUpdate = .(0x4662daa4, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITIndexBuild = .(0x8fa0d5aa, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWWFilterBuild = .(0x8fa0d5ab, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_IITWordWheel = .(0xd73725c2, 0x8c12, 0x11d0, 0xa8, 0x4e, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
		public const Guid CLSID_IITWordWheelLocal = .(0x4662daa8, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 ITWW_OPEN_NOCONNECT = 1;
		public const uint32 ITWW_CBKEY_MAX = 1024;
		public const uint32 IITWBC_BREAK_ACCEPT_WILDCARDS = 1;
		public const uint32 IITWBC_BREAK_AND_STEM = 2;
		public const HRESULT E_NOTEXIST = -2147479552;
		public const HRESULT E_DUPLICATE = -2147479551;
		public const HRESULT E_BADVERSION = -2147479550;
		public const HRESULT E_BADFILE = -2147479549;
		public const HRESULT E_BADFORMAT = -2147479548;
		public const HRESULT E_NOPERMISSION = -2147479547;
		public const HRESULT E_ASSERT = -2147479546;
		public const HRESULT E_INTERRUPT = -2147479545;
		public const HRESULT E_NOTSUPPORTED = -2147479544;
		public const HRESULT E_OUTOFRANGE = -2147479543;
		public const HRESULT E_GROUPIDTOOBIG = -2147479542;
		public const HRESULT E_TOOMANYTITLES = -2147479541;
		public const HRESULT E_NOMERGEDDATA = -2147479540;
		public const HRESULT E_NOTFOUND = -2147479539;
		public const HRESULT E_CANTFINDDLL = -2147479538;
		public const HRESULT E_NOHANDLE = -2147479537;
		public const HRESULT E_GETLASTERROR = -2147479536;
		public const HRESULT E_BADPARAM = -2147479535;
		public const HRESULT E_INVALIDSTATE = -2147479534;
		public const HRESULT E_NOTOPEN = -2147479533;
		public const HRESULT E_ALREADYOPEN = -2147479533;
		public const HRESULT E_UNKNOWN_TRANSPORT = -2147479530;
		public const HRESULT E_UNSUPPORTED_TRANSPORT = -2147479529;
		public const HRESULT E_BADFILTERSIZE = -2147479528;
		public const HRESULT E_TOOMANYOBJECTS = -2147479527;
		public const HRESULT E_NAMETOOLONG = -2147479520;
		public const HRESULT E_FILECREATE = -2147479504;
		public const HRESULT E_FILECLOSE = -2147479503;
		public const HRESULT E_FILEREAD = -2147479502;
		public const HRESULT E_FILESEEK = -2147479501;
		public const HRESULT E_FILEWRITE = -2147479500;
		public const HRESULT E_FILEDELETE = -2147479499;
		public const HRESULT E_FILEINVALID = -2147479498;
		public const HRESULT E_FILENOTFOUND = -2147479497;
		public const HRESULT E_DISKFULL = -2147479496;
		public const HRESULT E_TOOMANYTOPICS = -2147479472;
		public const HRESULT E_TOOMANYDUPS = -2147479471;
		public const HRESULT E_TREETOOBIG = -2147479470;
		public const HRESULT E_BADBREAKER = -2147479469;
		public const HRESULT E_BADVALUE = -2147479468;
		public const HRESULT E_ALL_WILD = -2147479467;
		public const HRESULT E_TOODEEP = -2147479466;
		public const HRESULT E_EXPECTEDTERM = -2147479465;
		public const HRESULT E_MISSLPAREN = -2147479464;
		public const HRESULT E_MISSRPAREN = -2147479463;
		public const HRESULT E_MISSQUOTE = -2147479462;
		public const HRESULT E_NULLQUERY = -2147479461;
		public const HRESULT E_STOPWORD = -2147479460;
		public const HRESULT E_BADRANGEOP = -2147479459;
		public const HRESULT E_UNMATCHEDTYPE = -2147479458;
		public const HRESULT E_WORDTOOLONG = -2147479457;
		public const HRESULT E_BADINDEXFLAGS = -2147479456;
		public const HRESULT E_WILD_IN_DTYPE = -2147479455;
		public const HRESULT E_NOSTEMMER = -2147479454;
		public const HRESULT E_MISSINGPROP = -2147479424;
		public const HRESULT E_PROPLISTNOTEMPTY = -2147479423;
		public const HRESULT E_PROPLISTEMPTY = -2147479422;
		public const HRESULT E_ALREADYINIT = -2147479421;
		public const HRESULT E_NOTINIT = -2147479420;
		public const HRESULT E_RESULTSETEMPTY = -2147479419;
		public const HRESULT E_TOOMANYCOLUMNS = -2147479418;
		public const HRESULT E_NOKEYPROP = -2147479417;
		public const Guid CLSID_IITResultSet = .(0x4662daa7, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const uint32 MAX_COLUMNS = 256;
		public const Guid CLSID_ITStdBreaker = .(0x4662daaf, 0xd393, 0x11d0, 0x9a, 0x56, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const Guid CLSID_ITEngStemmer = .(0x8fa0d5a8, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
		public const int32 HHWIN_NAVTYPE_TOC = 0;
		public const int32 HHWIN_NAVTYPE_INDEX = 1;
		public const int32 HHWIN_NAVTYPE_SEARCH = 2;
		public const int32 HHWIN_NAVTYPE_FAVORITES = 3;
		public const int32 HHWIN_NAVTYPE_HISTORY = 4;
		public const int32 HHWIN_NAVTYPE_AUTHOR = 5;
		public const int32 HHWIN_NAVTYPE_CUSTOM_FIRST = 11;
		public const int32 IT_INCLUSIVE = 0;
		public const int32 IT_EXCLUSIVE = 1;
		public const int32 IT_HIDDEN = 2;
		public const int32 HHWIN_NAVTAB_TOP = 0;
		public const int32 HHWIN_NAVTAB_LEFT = 1;
		public const int32 HHWIN_NAVTAB_BOTTOM = 2;
		public const int32 HH_TAB_CONTENTS = 0;
		public const int32 HH_TAB_INDEX = 1;
		public const int32 HH_TAB_SEARCH = 2;
		public const int32 HH_TAB_FAVORITES = 3;
		public const int32 HH_TAB_HISTORY = 4;
		public const int32 HH_TAB_AUTHOR = 5;
		public const int32 HH_TAB_CUSTOM_FIRST = 11;
		public const int32 HH_TAB_CUSTOM_LAST = 19;
		public const int32 HHACT_TAB_CONTENTS = 0;
		public const int32 HHACT_TAB_INDEX = 1;
		public const int32 HHACT_TAB_SEARCH = 2;
		public const int32 HHACT_TAB_HISTORY = 3;
		public const int32 HHACT_TAB_FAVORITES = 4;
		public const int32 HHACT_EXPAND = 5;
		public const int32 HHACT_CONTRACT = 6;
		public const int32 HHACT_BACK = 7;
		public const int32 HHACT_FORWARD = 8;
		public const int32 HHACT_STOP = 9;
		public const int32 HHACT_REFRESH = 10;
		public const int32 HHACT_HOME = 11;
		public const int32 HHACT_SYNC = 12;
		public const int32 HHACT_OPTIONS = 13;
		public const int32 HHACT_PRINT = 14;
		public const int32 HHACT_HIGHLIGHT = 15;
		public const int32 HHACT_CUSTOMIZE = 16;
		public const int32 HHACT_JUMP1 = 17;
		public const int32 HHACT_JUMP2 = 18;
		public const int32 HHACT_ZOOM = 19;
		public const int32 HHACT_TOC_NEXT = 20;
		public const int32 HHACT_TOC_PREV = 21;
		public const int32 HHACT_NOTES = 22;
		public const int32 HHACT_LAST_ENUM = 23;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WORD_WHEEL_OPEN_FLAGS : uint32
		{
			ITWW_OPEN_CONNECT = 0,
		}
		[AllowDuplicates]
		public enum HH_GPROPID : int32
		{
			HH_GPROPID_SINGLETHREAD = 1,
			HH_GPROPID_TOOLBAR_MARGIN = 2,
			HH_GPROPID_UI_LANGUAGE = 3,
			HH_GPROPID_CURRENT_SUBSET = 4,
			HH_GPROPID_CONTENT_LANGUAGE = 5,
		}
		[AllowDuplicates]
		public enum PRIORITY : int32
		{
			PRIORITY_LOW = 0,
			PRIORITY_NORMAL = 1,
			PRIORITY_HIGH = 2,
		}
		
		// --- Function Pointers ---
		
		public function int32 PFNCOLHEAPFREE(void* param0);
		
		// --- Structs ---
		
		[CRepr]
		public struct HHN_NOTIFY
		{
			public NMHDR hdr;
			public PSTR pszUrl;
		}
		[CRepr]
		public struct HH_POPUP
		{
			public int32 cbStruct;
			public HINSTANCE hinst;
			public uint32 idString;
			public int8* pszText;
			public POINT pt;
			public uint32 clrForeground;
			public uint32 clrBackground;
			public RECT rcMargins;
			public int8* pszFont;
		}
		[CRepr]
		public struct HH_AKLINK
		{
			public int32 cbStruct;
			public BOOL fReserved;
			public int8* pszKeywords;
			public int8* pszUrl;
			public int8* pszMsgText;
			public int8* pszMsgTitle;
			public int8* pszWindow;
			public BOOL fIndexOnFail;
		}
		[CRepr]
		public struct HH_ENUM_IT
		{
			public int32 cbStruct;
			public int32 iType;
			public PSTR pszCatName;
			public PSTR pszITName;
			public PSTR pszITDescription;
		}
		[CRepr]
		public struct HH_ENUM_CAT
		{
			public int32 cbStruct;
			public PSTR pszCatName;
			public PSTR pszCatDescription;
		}
		[CRepr]
		public struct HH_SET_INFOTYPE
		{
			public int32 cbStruct;
			public PSTR pszCatName;
			public PSTR pszInfoTypeName;
		}
		[CRepr]
		public struct HH_FTS_QUERY
		{
			public int32 cbStruct;
			public BOOL fUniCodeStrings;
			public int8* pszSearchQuery;
			public int32 iProximity;
			public BOOL fStemmedSearch;
			public BOOL fTitleOnly;
			public BOOL fExecute;
			public int8* pszWindow;
		}
		[CRepr]
		public struct HH_WINTYPE
		{
			public int32 cbStruct;
			public BOOL fUniCodeStrings;
			public int8* pszType;
			public uint32 fsValidMembers;
			public uint32 fsWinProperties;
			public int8* pszCaption;
			public uint32 dwStyles;
			public uint32 dwExStyles;
			public RECT rcWindowPos;
			public int32 nShowState;
			public HWND hwndHelp;
			public HWND hwndCaller;
			public uint32* paInfoTypes;
			public HWND hwndToolBar;
			public HWND hwndNavigation;
			public HWND hwndHTML;
			public int32 iNavWidth;
			public RECT rcHTML;
			public int8* pszToc;
			public int8* pszIndex;
			public int8* pszFile;
			public int8* pszHome;
			public uint32 fsToolBarFlags;
			public BOOL fNotExpanded;
			public int32 curNavType;
			public int32 tabpos;
			public int32 idNotify;
			public uint8[20] tabOrder;
			public int32 cHistory;
			public int8* pszJump1;
			public int8* pszJump2;
			public int8* pszUrlJump1;
			public int8* pszUrlJump2;
			public RECT rcMinSize;
			public int32 cbInfoTypes;
			public int8* pszCustomTabs;
		}
		[CRepr]
		public struct HHNTRACK
		{
			public NMHDR hdr;
			public PSTR pszCurUrl;
			public int32 idAction;
			public HH_WINTYPE* phhWinType;
		}
		[CRepr]
		public struct HH_GLOBAL_PROPERTY
		{
			public HH_GPROPID id;
			public VARIANT @var;
		}
		[CRepr]
		public struct CProperty
		{
			public uint32 dwPropID;
			public uint32 cbData;
			public uint32 dwType;
			public _Anonymous_e__Union Anonymous;
			public BOOL fPersist;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR lpszwData;
				public void* lpvData;
				public uint32 dwValue;
			}
		}
		[CRepr]
		public struct IITGroup
		{
		}
		[CRepr]
		public struct IITQuery
		{
		}
		[CRepr]
		public struct IITStopWordList
		{
		}
		[CRepr]
		public struct ROWSTATUS
		{
			public int32 lRowFirst;
			public int32 cRows;
			public int32 cProperties;
			public int32 cRowsTotal;
		}
		[CRepr]
		public struct COLUMNSTATUS
		{
			public int32 cPropCount;
			public int32 cPropsLoaded;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IITPropList : IPersistStreamInit
		{
			public const new Guid IID = .(0x1f403bb1, 0x9997, 0x11d0, 0xa8, 0x50, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
			
			public function HRESULT(IITPropList *self, uint32 PropID, PWSTR lpszwString, uint32 dwOperation) Set;
			public function HRESULT(IITPropList *self, uint32 PropID, void* lpvData, uint32 cbData, uint32 dwOperation) Set2;
			public function HRESULT(IITPropList *self, uint32 PropID, uint32 dwData, uint32 dwOperation) Set3;
			public function HRESULT(IITPropList *self, CProperty* Prop) Add;
			public function HRESULT(IITPropList *self, uint32 PropID, CProperty* Property) Get;
			public function HRESULT(IITPropList *self) Clear;
			public function HRESULT(IITPropList *self, BOOL fPersist) SetPersist;
			public function HRESULT(IITPropList *self, uint32 PropID, BOOL fPersist) SetPersist2;
			public function HRESULT(IITPropList *self, CProperty* Property) GetFirst;
			public function HRESULT(IITPropList *self, CProperty* Property) GetNext;
			public function HRESULT(IITPropList *self, int32* cProp) GetPropCount;
			public function HRESULT(IITPropList *self, void* lpvData, uint32 dwHdrSize) SaveHeader;
			public function HRESULT(IITPropList *self, void* lpvHeader, uint32 dwHdrSize, void* lpvData, uint32 dwBufSize) SaveData;
			public function HRESULT(IITPropList *self, uint32* dwHdrSize) GetHeaderSize;
			public function HRESULT(IITPropList *self, void* lpvHeader, uint32 dwHdrSize, uint32* dwDataSize) GetDataSize;
			public function HRESULT(IITPropList *self, void* lpvHeader, uint32 dwHdrSize, IStream* pStream) SaveDataToStream;
			public function HRESULT(IITPropList *self, void* lpvData, uint32 dwBufSize) LoadFromMem;
			public function HRESULT(IITPropList *self, void* lpvData, uint32 dwBufSize) SaveToMem;
		}
		[CRepr]
		public struct IITDatabase : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a2, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public function HRESULT(IITDatabase *self, PWSTR lpszHost, PWSTR lpszMoniker, uint32 dwFlags) Open;
			public function HRESULT(IITDatabase *self) Close;
			public function HRESULT(IITDatabase *self, Guid* rclsid, uint32* pdwObjInstance) CreateObject;
			public function HRESULT(IITDatabase *self, uint32 dwObjInstance, Guid* riid, void** ppvObj) GetObject;
			public function HRESULT(IITDatabase *self, PWSTR lpwszObject, uint32 dwObjInstance, void** ppvPersistence, BOOL fStream) GetObjectPersistence;
		}
		[CRepr]
		public struct IITWordWheel : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a4, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public function HRESULT(IITWordWheel *self, IITDatabase* lpITDB, PWSTR lpszMoniker, WORD_WHEEL_OPEN_FLAGS dwFlags) Open;
			public function HRESULT(IITWordWheel *self) Close;
			public function HRESULT(IITWordWheel *self, uint32* pdwCodePageID, uint32* plcid) GetLocaleInfo;
			public function HRESULT(IITWordWheel *self, uint32* pdwObjInstance) GetSorterInstance;
			public function HRESULT(IITWordWheel *self, int32* pcEntries) Count;
			public function HRESULT(IITWordWheel *self, void* lpcvPrefix, BOOL fExactMatch, int32* plEntry) Lookup;
			public function HRESULT(IITWordWheel *self, int32 lEntry, IITResultSet* lpITResult, int32 cEntries) Lookup2;
			public function HRESULT(IITWordWheel *self, int32 lEntry, void* lpvKeyBuf, uint32 cbKeyBuf) Lookup3;
			public function HRESULT(IITWordWheel *self, IITGroup* piitGroup) SetGroup;
			public function HRESULT(IITWordWheel *self, IITGroup** ppiitGroup) GetGroup;
			public function HRESULT(IITWordWheel *self, int32 lEntry, uint32* pdwCount) GetDataCount;
			public function HRESULT(IITWordWheel *self, int32 lEntry, IITResultSet* lpITResult) GetData;
			public function HRESULT(IITWordWheel *self, IITResultSet* pRS) GetDataColumns;
		}
		[CRepr]
		public struct IStemSink : IUnknown
		{
			public const new Guid IID = .(0xfe77c330, 0x7f42, 0x11ce, 0xbe, 0x57, 0x00, 0xaa, 0x00, 0x51, 0xfe, 0x20);
			
			public function HRESULT(IStemSink *self, PWSTR pwcInBuf, uint32 cwc) PutAltWord;
			public function HRESULT(IStemSink *self, PWSTR pwcInBuf, uint32 cwc) PutWord;
		}
		[CRepr]
		public struct IStemmerConfig : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a7, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public function HRESULT(IStemmerConfig *self, uint32 dwCodePageID, uint32 lcid) SetLocaleInfo;
			public function HRESULT(IStemmerConfig *self, uint32* pdwCodePageID, uint32* plcid) GetLocaleInfo;
			public function HRESULT(IStemmerConfig *self, uint32 grfStemFlags, uint32 dwReserved) SetControlInfo;
			public function HRESULT(IStemmerConfig *self, uint32* pgrfStemFlags, uint32* pdwReserved) GetControlInfo;
			public function HRESULT(IStemmerConfig *self, IStream* pStream, uint32 dwExtDataType) LoadExternalStemmerData;
		}
		[CRepr]
		public struct IWordBreakerConfig : IUnknown
		{
			public const new Guid IID = .(0x8fa0d5a6, 0xdedf, 0x11d0, 0x9a, 0x61, 0x00, 0xc0, 0x4f, 0xb6, 0x8b, 0xf7);
			
			public function HRESULT(IWordBreakerConfig *self, uint32 dwCodePageID, uint32 lcid) SetLocaleInfo;
			public function HRESULT(IWordBreakerConfig *self, uint32* pdwCodePageID, uint32* plcid) GetLocaleInfo;
			public function HRESULT(IWordBreakerConfig *self, uint32 dwBreakWordType) SetBreakWordType;
			public function HRESULT(IWordBreakerConfig *self, uint32* pdwBreakWordType) GetBreakWordType;
			public function HRESULT(IWordBreakerConfig *self, uint32 grfBreakFlags, uint32 dwReserved) SetControlInfo;
			public function HRESULT(IWordBreakerConfig *self, uint32* pgrfBreakFlags, uint32* pdwReserved) GetControlInfo;
			public function HRESULT(IWordBreakerConfig *self, IStream* pStream, uint32 dwExtDataType) LoadExternalBreakerData;
			public function HRESULT(IWordBreakerConfig *self, Guid* rclsid, IStemmer* pStemmer) SetWordStemmer;
			public function HRESULT(IWordBreakerConfig *self, IStemmer** ppStemmer) GetWordStemmer;
		}
		[CRepr]
		public struct IITResultSet : IUnknown
		{
			public const new Guid IID = .(0x3bb91d41, 0x998b, 0x11d0, 0xa8, 0x50, 0x00, 0xaa, 0x00, 0x6c, 0x7d, 0x01);
			
			public function HRESULT(IITResultSet *self, int32 lColumnIndex, PRIORITY ColumnPriority) SetColumnPriority;
			public function HRESULT(IITResultSet *self, int32 lColumnIndex, void* lpvHeap, PFNCOLHEAPFREE pfnColHeapFree) SetColumnHeap;
			public function HRESULT(IITResultSet *self, uint32 PropID) SetKeyProp;
			public function HRESULT(IITResultSet *self, uint32 PropID, uint32 dwDefaultData, PRIORITY Priority) Add;
			public function HRESULT(IITResultSet *self, uint32 PropID, PWSTR lpszwDefault, PRIORITY Priority) Add2;
			public function HRESULT(IITResultSet *self, uint32 PropID, void* lpvDefaultData, uint32 cbData, PRIORITY Priority) Add3;
			public function HRESULT(IITResultSet *self, void* lpvHdr) Add4;
			public function HRESULT(IITResultSet *self, void* lpvHdr, void* lpvData) Append;
			public function HRESULT(IITResultSet *self, int32 lRowIndex, int32 lColumnIndex, void* lpvData, uint32 cbData) Set;
			public function HRESULT(IITResultSet *self, int32 lRowIndex, int32 lColumnIndex, PWSTR lpwStr) Set2;
			public function HRESULT(IITResultSet *self, int32 lRowIndex, int32 lColumnIndex, uint dwData) Set3;
			public function HRESULT(IITResultSet *self, int32 lRowIndex, void* lpvHdr, void* lpvData) Set4;
			public function HRESULT(IITResultSet *self, IITResultSet* pRSCopy) Copy;
			public function HRESULT(IITResultSet *self, IITResultSet* pResSrc, int32 lRowSrcFirst, int32 cSrcRows, int32* lRowFirstDest) AppendRows;
			public function HRESULT(IITResultSet *self, int32 lRowIndex, int32 lColumnIndex, CProperty* Prop) Get;
			public function HRESULT(IITResultSet *self, uint32* KeyPropID) GetKeyProp;
			public function HRESULT(IITResultSet *self, int32 lColumnIndex, PRIORITY* ColumnPriority) GetColumnPriority;
			public function HRESULT(IITResultSet *self, int32* lNumberOfRows) GetRowCount;
			public function HRESULT(IITResultSet *self, int32* lNumberOfColumns) GetColumnCount;
			public function HRESULT(IITResultSet *self, int32 lColumnIndex, uint32* PropID, uint32* dwType, void** lpvDefaultValue, uint32* cbSize, PRIORITY* ColumnPriority) GetColumn;
			public function HRESULT(IITResultSet *self, int32 lColumnIndex, uint32* PropID) GetColumn2;
			public function HRESULT(IITResultSet *self, uint32 PropID, int32* lColumnIndex) GetColumnFromPropID;
			public function HRESULT(IITResultSet *self) Clear;
			public function HRESULT(IITResultSet *self) ClearRows;
			public function HRESULT(IITResultSet *self) Free;
			public function HRESULT(IITResultSet *self) IsCompleted;
			public function HRESULT(IITResultSet *self) Cancel;
			public function HRESULT(IITResultSet *self, BOOL fPause) Pause;
			public function HRESULT(IITResultSet *self, int32 lRowFirst, int32 cRows, ROWSTATUS* lpRowStatus) GetRowStatus;
			public function HRESULT(IITResultSet *self, COLUMNSTATUS* lpColStatus) GetColumnStatus;
		}
		
	}
}
