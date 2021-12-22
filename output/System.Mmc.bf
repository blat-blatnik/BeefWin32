using System;

// namespace System.Mmc
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MMC_VER = 512;
		public const uint32 MMC_PROP_CHANGEAFFECTSUI = 1;
		public const uint32 MMC_PROP_MODIFIABLE = 2;
		public const uint32 MMC_PROP_REMOVABLE = 4;
		public const uint32 MMC_PROP_PERSIST = 8;
		public const int32 MMCLV_AUTO = -1;
		public const int32 MMCLV_NOPARAM = -2;
		public const int32 MMCLV_NOICON = -1;
		public const uint32 MMCLV_VIEWSTYLE_ICON = 0;
		public const uint32 MMCLV_VIEWSTYLE_SMALLICON = 2;
		public const uint32 MMCLV_VIEWSTYLE_LIST = 3;
		public const uint32 MMCLV_VIEWSTYLE_REPORT = 1;
		public const uint32 MMCLV_VIEWSTYLE_FILTERED = 4;
		public const uint32 MMCLV_NOPTR = 0;
		public const uint32 MMCLV_UPDATE_NOINVALIDATEALL = 1;
		public const uint32 MMCLV_UPDATE_NOSCROLL = 2;
		public const int32 MMC_IMAGECALLBACK = -1;
		public const uint32 RDI_STR = 2;
		public const uint32 RDI_IMAGE = 4;
		public const uint32 RDI_STATE = 8;
		public const uint32 RDI_PARAM = 16;
		public const uint32 RDI_INDEX = 32;
		public const uint32 RDI_INDENT = 64;
		public const uint32 MMC_VIEW_OPTIONS_NONE = 0;
		public const uint32 MMC_VIEW_OPTIONS_NOLISTVIEWS = 1;
		public const uint32 MMC_VIEW_OPTIONS_MULTISELECT = 2;
		public const uint32 MMC_VIEW_OPTIONS_OWNERDATALIST = 4;
		public const uint32 MMC_VIEW_OPTIONS_FILTERED = 8;
		public const uint32 MMC_VIEW_OPTIONS_CREATENEW = 16;
		public const uint32 MMC_VIEW_OPTIONS_USEFONTLINKING = 32;
		public const uint32 MMC_VIEW_OPTIONS_EXCLUDE_SCOPE_ITEMS_FROM_LIST = 64;
		public const uint32 MMC_VIEW_OPTIONS_LEXICAL_SORT = 128;
		public const uint32 MMC_PSO_NOAPPLYNOW = 1;
		public const uint32 MMC_PSO_HASHELP = 2;
		public const uint32 MMC_PSO_NEWWIZARDTYPE = 4;
		public const uint32 MMC_PSO_NO_PROPTITLE = 8;
		public const uint32 RFI_PARTIAL = 1;
		public const uint32 RFI_WRAP = 2;
		public const uint32 RSI_DESCENDING = 1;
		public const uint32 RSI_NOSORTICON = 2;
		public const uint32 SDI_STR = 2;
		public const uint32 SDI_IMAGE = 4;
		public const uint32 SDI_OPENIMAGE = 8;
		public const uint32 SDI_STATE = 16;
		public const uint32 SDI_PARAM = 32;
		public const uint32 SDI_CHILDREN = 64;
		public const uint32 SDI_PARENT = 0;
		public const uint32 SDI_PREVIOUS = 268435456;
		public const uint32 SDI_NEXT = 536870912;
		public const uint32 SDI_FIRST = 134217728;
		public const int32 MMC_MULTI_SELECT_COOKIE = -2;
		public const int32 MMC_WINDOW_COOKIE = -3;
		public const int32 SPECIAL_COOKIE_MIN = -10;
		public const int32 SPECIAL_COOKIE_MAX = -1;
		public const uint32 MMC_NW_OPTION_NONE = 0;
		public const uint32 MMC_NW_OPTION_NOSCOPEPANE = 1;
		public const uint32 MMC_NW_OPTION_NOTOOLBARS = 2;
		public const uint32 MMC_NW_OPTION_SHORTTITLE = 4;
		public const uint32 MMC_NW_OPTION_CUSTOMTITLE = 8;
		public const uint32 MMC_NW_OPTION_NOPERSIST = 16;
		public const uint32 MMC_NW_OPTION_NOACTIONPANE = 32;
		public const uint32 MMC_NODEID_SLOW_RETRIEVAL = 1;
		public const int32 SPECIAL_DOBJ_MIN = -10;
		public const uint32 SPECIAL_DOBJ_MAX = 0;
		public const int32 AUTO_WIDTH = -1;
		public const int32 HIDE_COLUMN = -4;
		public const uint32 ILSIF_LEAVE_LARGE_ICON = 1073741824;
		public const uint32 ILSIF_LEAVE_SMALL_ICON = 536870912;
		public const uint32 HDI_HIDDEN = 1;
		public const uint32 RDCI_ScopeItem = 2147483648;
		public const uint32 RVTI_MISC_OPTIONS_NOLISTVIEWS = 1;
		public const uint32 RVTI_LIST_OPTIONS_NONE = 0;
		public const uint32 RVTI_LIST_OPTIONS_OWNERDATALIST = 2;
		public const uint32 RVTI_LIST_OPTIONS_MULTISELECT = 4;
		public const uint32 RVTI_LIST_OPTIONS_FILTERED = 8;
		public const uint32 RVTI_LIST_OPTIONS_USEFONTLINKING = 32;
		public const uint32 RVTI_LIST_OPTIONS_EXCLUDE_SCOPE_ITEMS_FROM_LIST = 64;
		public const uint32 RVTI_LIST_OPTIONS_LEXICAL_SORT = 128;
		public const uint32 RVTI_LIST_OPTIONS_ALLOWPASTE = 256;
		public const uint32 RVTI_HTML_OPTIONS_NONE = 0;
		public const uint32 RVTI_HTML_OPTIONS_NOLISTVIEW = 1;
		public const uint32 RVTI_OCX_OPTIONS_NONE = 0;
		public const uint32 RVTI_OCX_OPTIONS_NOLISTVIEW = 1;
		public const uint32 RVTI_OCX_OPTIONS_CACHE_OCX = 2;
		public const uint32 MMC_DEFAULT_OPERATION_COPY = 1;
		public const uint32 MMC_ITEM_OVERLAY_STATE_MASK = 3840;
		public const uint32 MMC_ITEM_OVERLAY_STATE_SHIFT = 8;
		public const uint32 MMC_ITEM_STATE_MASK = 255;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MMC_PROPERTY_ACTION : int32
		{
			MMC_PROPACT_DELETING = 1,
			MMC_PROPACT_CHANGING = 2,
			MMC_PROPACT_INITIALIZED = 3,
		}
		[AllowDuplicates]
		public enum _DocumentMode : int32
		{
			DocumentMode_Author = 0,
			DocumentMode_User = 1,
			DocumentMode_User_MDI = 2,
			DocumentMode_User_SDI = 3,
		}
		[AllowDuplicates]
		public enum _ListViewMode : int32
		{
			ListMode_Small_Icons = 0,
			ListMode_Large_Icons = 1,
			ListMode_List = 2,
			ListMode_Detail = 3,
			ListMode_Filtered = 4,
		}
		[AllowDuplicates]
		public enum _ViewOptions : int32
		{
			ViewOption_Default = 0,
			ViewOption_ScopeTreeHidden = 1,
			ViewOption_NoToolBars = 2,
			ViewOption_NotPersistable = 4,
			ViewOption_ActionPaneHidden = 8,
		}
		[AllowDuplicates]
		public enum _ExportListOptions : int32
		{
			ExportListOptions_Default = 0,
			ExportListOptions_Unicode = 1,
			ExportListOptions_TabDelimited = 2,
			ExportListOptions_SelectedItemsOnly = 4,
		}
		[AllowDuplicates]
		public enum _ColumnSortOrder : int32
		{
			SortOrder_Ascending = 0,
			SortOrder_Descending = 1,
		}
		[AllowDuplicates]
		public enum MMC_RESULT_VIEW_STYLE : int32
		{
			MMC_SINGLESEL = 1,
			MMC_SHOWSELALWAYS = 2,
			MMC_NOSORTHEADER = 4,
			MMC_ENSUREFOCUSVISIBLE = 8,
		}
		[AllowDuplicates]
		public enum MMC_CONTROL_TYPE : int32
		{
			TOOLBAR = 0,
			MENUBUTTON = 1,
			COMBOBOXBAR = 2,
		}
		[AllowDuplicates]
		public enum MMC_CONSOLE_VERB : int32
		{
			MMC_VERB_NONE = 0,
			MMC_VERB_OPEN = 32768,
			MMC_VERB_COPY = 32769,
			MMC_VERB_PASTE = 32770,
			MMC_VERB_DELETE = 32771,
			MMC_VERB_PROPERTIES = 32772,
			MMC_VERB_RENAME = 32773,
			MMC_VERB_REFRESH = 32774,
			MMC_VERB_PRINT = 32775,
			MMC_VERB_CUT = 32776,
			MMC_VERB_MAX = 32777,
			MMC_VERB_FIRST = 32768,
			MMC_VERB_LAST = 32776,
		}
		[AllowDuplicates]
		public enum MMC_BUTTON_STATE : int32
		{
			ENABLED = 1,
			CHECKED = 2,
			HIDDEN = 4,
			INDETERMINATE = 8,
			BUTTONPRESSED = 16,
		}
		[AllowDuplicates]
		public enum MMC_SCOPE_ITEM_STATE : int32
		{
			MMC_SCOPE_ITEM_STATE_NORMAL = 1,
			MMC_SCOPE_ITEM_STATE_BOLD = 2,
			MMC_SCOPE_ITEM_STATE_EXPANDEDONCE = 3,
		}
		[AllowDuplicates]
		public enum MMC_MENU_COMMAND_IDS : int32
		{
			MMCC_STANDARD_VIEW_SELECT = -1,
		}
		[AllowDuplicates]
		public enum MMC_FILTER_TYPE : int32
		{
			MMC_STRING_FILTER = 0,
			MMC_INT_FILTER = 1,
			MMC_FILTER_NOVALUE = 32768,
		}
		[AllowDuplicates]
		public enum MMC_FILTER_CHANGE_CODE : int32
		{
			MFCC_DISABLE = 0,
			MFCC_ENABLE = 1,
			MFCC_VALUE_CHANGE = 2,
		}
		[AllowDuplicates]
		public enum MMC_NOTIFY_TYPE : int32
		{
			MMCN_ACTIVATE = 32769,
			MMCN_ADD_IMAGES = 32770,
			MMCN_BTN_CLICK = 32771,
			MMCN_CLICK = 32772,
			MMCN_COLUMN_CLICK = 32773,
			MMCN_CONTEXTMENU = 32774,
			MMCN_CUTORMOVE = 32775,
			MMCN_DBLCLICK = 32776,
			MMCN_DELETE = 32777,
			MMCN_DESELECT_ALL = 32778,
			MMCN_EXPAND = 32779,
			MMCN_HELP = 32780,
			MMCN_MENU_BTNCLICK = 32781,
			MMCN_MINIMIZED = 32782,
			MMCN_PASTE = 32783,
			MMCN_PROPERTY_CHANGE = 32784,
			MMCN_QUERY_PASTE = 32785,
			MMCN_REFRESH = 32786,
			MMCN_REMOVE_CHILDREN = 32787,
			MMCN_RENAME = 32788,
			MMCN_SELECT = 32789,
			MMCN_SHOW = 32790,
			MMCN_VIEW_CHANGE = 32791,
			MMCN_SNAPINHELP = 32792,
			MMCN_CONTEXTHELP = 32793,
			MMCN_INITOCX = 32794,
			MMCN_FILTER_CHANGE = 32795,
			MMCN_FILTERBTN_CLICK = 32796,
			MMCN_RESTORE_VIEW = 32797,
			MMCN_PRINT = 32798,
			MMCN_PRELOAD = 32799,
			MMCN_LISTPAD = 32800,
			MMCN_EXPANDSYNC = 32801,
			MMCN_COLUMNS_CHANGED = 32802,
			MMCN_CANPASTE_OUTOFPROC = 32803,
		}
		[AllowDuplicates]
		public enum DATA_OBJECT_TYPES : int32
		{
			CCT_SCOPE = 32768,
			CCT_RESULT = 32769,
			CCT_SNAPIN_MANAGER = 32770,
			CCT_UNINITIALIZED = 65535,
		}
		[AllowDuplicates]
		public enum CCM_INSERTIONPOINTID : int32
		{
			CCM_INSERTIONPOINTID_MASK_SPECIAL = -65536,
			CCM_INSERTIONPOINTID_MASK_SHARED = -2147483648,
			CCM_INSERTIONPOINTID_MASK_CREATE_PRIMARY = 1073741824,
			CCM_INSERTIONPOINTID_MASK_ADD_PRIMARY = 536870912,
			CCM_INSERTIONPOINTID_MASK_ADD_3RDPARTY = 268435456,
			CCM_INSERTIONPOINTID_MASK_RESERVED = 268369920,
			CCM_INSERTIONPOINTID_MASK_FLAGINDEX = 31,
			CCM_INSERTIONPOINTID_PRIMARY_TOP = -1610612736,
			CCM_INSERTIONPOINTID_PRIMARY_NEW = -1610612735,
			CCM_INSERTIONPOINTID_PRIMARY_TASK = -1610612734,
			CCM_INSERTIONPOINTID_PRIMARY_VIEW = -1610612733,
			CCM_INSERTIONPOINTID_PRIMARY_HELP = -1610612732,
			CCM_INSERTIONPOINTID_3RDPARTY_NEW = -1879048191,
			CCM_INSERTIONPOINTID_3RDPARTY_TASK = -1879048190,
			CCM_INSERTIONPOINTID_ROOT_MENU = -2147483648,
		}
		[AllowDuplicates]
		public enum CCM_INSERTIONALLOWED : int32
		{
			CCM_INSERTIONALLOWED_TOP = 1,
			CCM_INSERTIONALLOWED_NEW = 2,
			CCM_INSERTIONALLOWED_TASK = 4,
			CCM_INSERTIONALLOWED_VIEW = 8,
		}
		[AllowDuplicates]
		public enum CCM_COMMANDID_MASK_CONSTANTS : uint32
		{
			CCM_COMMANDID_MASK_RESERVED = 4294901760,
		}
		[AllowDuplicates]
		public enum CCM_SPECIAL : int32
		{
			CCM_SPECIAL_SEPARATOR = 1,
			CCM_SPECIAL_SUBMENU = 2,
			CCM_SPECIAL_DEFAULT_ITEM = 4,
			CCM_SPECIAL_INSERTION_POINT = 8,
			CCM_SPECIAL_TESTONLY = 16,
		}
		[AllowDuplicates]
		public enum MMC_TASK_DISPLAY_TYPE : int32
		{
			MMC_TASK_DISPLAY_UNINITIALIZED = 0,
			MMC_TASK_DISPLAY_TYPE_SYMBOL = 1,
			MMC_TASK_DISPLAY_TYPE_VANILLA_GIF = 2,
			MMC_TASK_DISPLAY_TYPE_CHOCOLATE_GIF = 3,
			MMC_TASK_DISPLAY_TYPE_BITMAP = 4,
		}
		[AllowDuplicates]
		public enum MMC_ACTION_TYPE : int32
		{
			MMC_ACTION_UNINITIALIZED = -1,
			MMC_ACTION_ID = 0,
			MMC_ACTION_LINK = 1,
			MMC_ACTION_SCRIPT = 2,
		}
		[AllowDuplicates]
		public enum IconIdentifier : int32
		{
			Icon_None = 0,
			Icon_Error = 32513,
			Icon_Question = 32514,
			Icon_Warning = 32515,
			Icon_Information = 32516,
			Icon_First = 32513,
			Icon_Last = 32516,
		}
		[AllowDuplicates]
		public enum MMC_VIEW_TYPE : int32
		{
			MMC_VIEW_TYPE_LIST = 0,
			MMC_VIEW_TYPE_HTML = 1,
			MMC_VIEW_TYPE_OCX = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct MMC_SNAPIN_PROPERTY
		{
			public PWSTR pszPropName;
			public VARIANT varValue;
			public MMC_PROPERTY_ACTION eAction;
		}
		[CRepr]
		public struct MMCBUTTON
		{
			public int32 nBitmap;
			public int32 idCommand;
			public uint8 fsState;
			public uint8 fsType;
			public PWSTR lpButtonText;
			public PWSTR lpTooltipText;
		}
		[CRepr]
		public struct RESULTDATAITEM
		{
			public uint32 mask;
			public BOOL bScopeItem;
			public int itemID;
			public int32 nIndex;
			public int32 nCol;
			public PWSTR str;
			public int32 nImage;
			public uint32 nState;
			public LPARAM lParam;
			public int32 iIndent;
		}
		[CRepr]
		public struct RESULTFINDINFO
		{
			public PWSTR psz;
			public int32 nStart;
			public uint32 dwOptions;
		}
		[CRepr]
		public struct SCOPEDATAITEM
		{
			public uint32 mask;
			public PWSTR displayname;
			public int32 nImage;
			public int32 nOpenImage;
			public uint32 nState;
			public int32 cChildren;
			public LPARAM lParam;
			public int relativeID;
			public int ID;
		}
		[CRepr]
		public struct CONTEXTMENUITEM
		{
			public PWSTR strName;
			public PWSTR strStatusBarText;
			public int32 lCommandID;
			public int32 lInsertionPointID;
			public int32 fFlags;
			public int32 fSpecialFlags;
		}
		[CRepr]
		public struct MENUBUTTONDATA
		{
			public int32 idCommand;
			public int32 x;
			public int32 y;
		}
		[CRepr]
		public struct MMC_FILTERDATA
		{
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 lValue;
		}
		[CRepr]
		public struct MMC_RESTORE_VIEW
		{
			public uint32 dwSize;
			public int cookie;
			public PWSTR pViewType;
			public int32 lViewOptions;
		}
		[CRepr]
		public struct MMC_EXPANDSYNC_STRUCT
		{
			public BOOL bHandled;
			public BOOL bExpanding;
			public int hItem;
		}
		[CRepr]
		public struct MMC_VISIBLE_COLUMNS
		{
			public int32 nVisibleColumns;
			public int32[] rgVisibleCols;
		}
		[CRepr]
		public struct SMMCDataObjects
		{
			public uint32 count;
			public IDataObject*[] lpDataObject;
		}
		[CRepr]
		public struct SMMCObjectTypes
		{
			public uint32 count;
			public Guid[] guid;
		}
		[CRepr]
		public struct SNodeID
		{
			public uint32 cBytes;
			public uint8[] id;
		}
		[CRepr]
		public struct SNodeID2
		{
			public uint32 dwFlags;
			public uint32 cBytes;
			public uint8[] id;
		}
		[CRepr]
		public struct SColumnSetID
		{
			public uint32 dwFlags;
			public uint32 cBytes;
			public uint8[] id;
		}
		[CRepr]
		public struct MMC_TASK_DISPLAY_SYMBOL
		{
			public PWSTR szFontFamilyName;
			public PWSTR szURLtoEOT;
			public PWSTR szSymbolString;
		}
		[CRepr]
		public struct MMC_TASK_DISPLAY_BITMAP
		{
			public PWSTR szMouseOverBitmap;
			public PWSTR szMouseOffBitmap;
		}
		[CRepr]
		public struct MMC_TASK_DISPLAY_OBJECT
		{
			public MMC_TASK_DISPLAY_TYPE eDisplayType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public MMC_TASK_DISPLAY_BITMAP uBitmap;
				public MMC_TASK_DISPLAY_SYMBOL uSymbol;
			}
		}
		[CRepr]
		public struct MMC_TASK
		{
			public MMC_TASK_DISPLAY_OBJECT sDisplayObject;
			public PWSTR szText;
			public PWSTR szHelpString;
			public MMC_ACTION_TYPE eActionType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int nCommandID;
				public PWSTR szActionURL;
				public PWSTR szScript;
			}
		}
		[CRepr]
		public struct MMC_LISTPAD_INFO
		{
			public PWSTR szTitle;
			public PWSTR szButtonText;
			public int nCommandID;
		}
		[CRepr]
		public struct MMC_COLUMN_DATA
		{
			public int32 nColIndex;
			public uint32 dwFlags;
			public int32 nWidth;
			public uint ulReserved;
		}
		[CRepr]
		public struct MMC_COLUMN_SET_DATA
		{
			public int32 cbSize;
			public int32 nNumCols;
			public MMC_COLUMN_DATA* pColData;
		}
		[CRepr]
		public struct MMC_SORT_DATA
		{
			public int32 nColIndex;
			public uint32 dwSortOptions;
			public uint ulReserved;
		}
		[CRepr]
		public struct MMC_SORT_SET_DATA
		{
			public int32 cbSize;
			public int32 nNumItems;
			public MMC_SORT_DATA* pSortData;
		}
		[CRepr]
		public struct RDITEMHDR
		{
			public uint32 dwFlags;
			public int cookie;
			public LPARAM lpReserved;
		}
		[CRepr]
		public struct RDCOMPARE
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public int32 nColumn;
			public LPARAM lUserParam;
			public RDITEMHDR* prdch1;
			public RDITEMHDR* prdch2;
		}
		[CRepr]
		public struct RESULT_VIEW_TYPE_INFO
		{
			public PWSTR pstrPersistableViewDescription;
			public MMC_VIEW_TYPE eViewType;
			public uint32 dwMiscOptions;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwListOptions;
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 dwOCXOptions;
					public IUnknown* pUnkControl;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 dwHTMLOptions;
					public PWSTR pstrURL;
				}
			}
		}
		[CRepr]
		public struct CONTEXTMENUITEM2
		{
			public PWSTR strName;
			public PWSTR strStatusBarText;
			public int32 lCommandID;
			public int32 lInsertionPointID;
			public int32 fFlags;
			public int32 fSpecialFlags;
			public PWSTR strLanguageIndependentName;
		}
		[CRepr]
		public struct MMC_EXT_VIEW_DATA
		{
			public Guid viewID;
			public PWSTR pszURL;
			public PWSTR pszViewTitle;
			public PWSTR pszTooltipText;
			public BOOL bReplacesDefaultView;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Application = .(0x49b2791a, 0xb1ae, 0x4c90, 0x9b, 0x8e, 0xe8, 0x60, 0xba, 0x07, 0xf8, 0x89);
		public const Guid CLSID_AppEventsDHTMLConnector = .(0xade6444b, 0xc91f, 0x4e37, 0x92, 0xa4, 0x5b, 0xb4, 0x30, 0xa3, 0x33, 0x40);
		public const Guid CLSID_MMCVersionInfo = .(0xd6fedb1d, 0xcf21, 0x4bd9, 0xaf, 0x3b, 0xc5, 0x46, 0x8e, 0x9c, 0x66, 0x84);
		public const Guid CLSID_ConsolePower = .(0xf0285374, 0xdff1, 0x11d3, 0xb4, 0x33, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISnapinProperties : IUnknown
		{
			public const new Guid IID = .(0xf7889da9, 0x4a02, 0x4837, 0xbf, 0x89, 0x1a, 0x6f, 0x2a, 0x02, 0x10, 0x10);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISnapinProperties *self, Properties* pProperties) Initialize;
				public function HRESULT(ISnapinProperties *self, ISnapinPropertiesCallback* pCallback) QueryPropertyNames;
				public function HRESULT(ISnapinProperties *self, int32 cProperties, MMC_SNAPIN_PROPERTY* pProperties) PropertiesChanged;
			}
		}
		[CRepr]
		public struct ISnapinPropertiesCallback : IUnknown
		{
			public const new Guid IID = .(0xa50fa2e5, 0x7e61, 0x45eb, 0xa8, 0xd4, 0x9a, 0x07, 0xb3, 0xe8, 0x51, 0xa8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISnapinPropertiesCallback *self, PWSTR pszPropName, uint32 dwFlags) AddPropertyName;
			}
		}
		[CRepr]
		public struct _Application : IDispatch
		{
			public const new Guid IID = .(0xa3afb9cc, 0xb653, 0x4741, 0x86, 0xab, 0xf0, 0x47, 0x0e, 0xc1, 0x38, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function void(_Application *self) Help;
				public function void(_Application *self) Quit;
				public function HRESULT(_Application *self, Document** Document) get_Document;
				public function HRESULT(_Application *self, BSTR Filename) Load;
				public function HRESULT(_Application *self, Frame** Frame) get_Frame;
				public function HRESULT(_Application *self, BOOL* Visible) get_Visible;
				public function HRESULT(_Application *self) Show;
				public function HRESULT(_Application *self) Hide;
				public function HRESULT(_Application *self, BOOL* UserControl) get_UserControl;
				public function HRESULT(_Application *self, BOOL UserControl) put_UserControl;
				public function HRESULT(_Application *self, int32* VersionMajor) get_VersionMajor;
				public function HRESULT(_Application *self, int32* VersionMinor) get_VersionMinor;
			}
		}
		[CRepr]
		public struct _AppEvents : IDispatch
		{
			public const new Guid IID = .(0xde46cbdd, 0x53f5, 0x4635, 0xaf, 0x54, 0x4f, 0xe7, 0x1e, 0x92, 0x3d, 0x3f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(_AppEvents *self, _Application* Application) OnQuit;
				public function HRESULT(_AppEvents *self, Document* Document, BOOL New) OnDocumentOpen;
				public function HRESULT(_AppEvents *self, Document* Document) OnDocumentClose;
				public function HRESULT(_AppEvents *self, Document* Document, SnapIn* SnapIn) OnSnapInAdded;
				public function HRESULT(_AppEvents *self, Document* Document, SnapIn* SnapIn) OnSnapInRemoved;
				public function HRESULT(_AppEvents *self, View* View) OnNewView;
				public function HRESULT(_AppEvents *self, View* View) OnViewClose;
				public function HRESULT(_AppEvents *self, View* View, Node* NewOwnerNode) OnViewChange;
				public function HRESULT(_AppEvents *self, View* View, Nodes* NewNodes) OnSelectionChange;
				public function HRESULT(_AppEvents *self, MenuItem* MenuItem) OnContextMenuExecuted;
				public function HRESULT(_AppEvents *self) OnToolbarButtonClicked;
				public function HRESULT(_AppEvents *self, View* View) OnListUpdated;
			}
		}
		[CRepr]
		public struct AppEvents : IDispatch
		{
			public const new Guid IID = .(0xfc7a4252, 0x78ac, 0x4532, 0x8c, 0x5a, 0x56, 0x3c, 0xfe, 0x13, 0x88, 0x63);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct _EventConnector : IDispatch
		{
			public const new Guid IID = .(0xc0bccd30, 0xde44, 0x4528, 0x84, 0x03, 0xa0, 0x5a, 0x6a, 0x1c, 0xc8, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(_EventConnector *self, _Application* Application) ConnectTo;
				public function HRESULT(_EventConnector *self) Disconnect;
			}
		}
		[CRepr]
		public struct Frame : IDispatch
		{
			public const new Guid IID = .(0xe5e2d970, 0x5bb3, 0x4306, 0x88, 0x04, 0xb0, 0x96, 0x8a, 0x31, 0xc8, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Frame *self) Maximize;
				public function HRESULT(Frame *self) Minimize;
				public function HRESULT(Frame *self) Restore;
				public function HRESULT(Frame *self, int32* Top) get_Top;
				public function HRESULT(Frame *self, int32 top) put_Top;
				public function HRESULT(Frame *self, int32* Bottom) get_Bottom;
				public function HRESULT(Frame *self, int32 bottom) put_Bottom;
				public function HRESULT(Frame *self, int32* Left) get_Left;
				public function HRESULT(Frame *self, int32 left) put_Left;
				public function HRESULT(Frame *self, int32* Right) get_Right;
				public function HRESULT(Frame *self, int32 right) put_Right;
			}
		}
		[CRepr]
		public struct Node : IDispatch
		{
			public const new Guid IID = .(0xf81ed800, 0x7839, 0x4447, 0x94, 0x5d, 0x8e, 0x15, 0xda, 0x59, 0xca, 0x55);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Node *self, uint16** Name) get_Name;
				public function HRESULT(Node *self, BSTR PropertyName, uint16** PropertyValue) get_Property;
				public function HRESULT(Node *self, uint16** Bookmark) get_Bookmark;
				public function HRESULT(Node *self, BOOL* IsScopeNode) IsScopeNode;
				public function HRESULT(Node *self, uint16** Nodetype) get_Nodetype;
			}
		}
		[CRepr]
		public struct ScopeNamespace : IDispatch
		{
			public const new Guid IID = .(0xebbb48dc, 0x1a3b, 0x4d86, 0xb7, 0x86, 0xc2, 0x1b, 0x28, 0x38, 0x90, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ScopeNamespace *self, Node* Node, Node** Parent) GetParent;
				public function HRESULT(ScopeNamespace *self, Node* Node, Node** Child) GetChild;
				public function HRESULT(ScopeNamespace *self, Node* Node, Node** Next) GetNext;
				public function HRESULT(ScopeNamespace *self, Node** Root) GetRoot;
				public function HRESULT(ScopeNamespace *self, Node* Node) Expand;
			}
		}
		[CRepr]
		public struct Document : IDispatch
		{
			public const new Guid IID = .(0x225120d6, 0x1e0f, 0x40a3, 0x93, 0xfe, 0x10, 0x79, 0xe6, 0xa8, 0x01, 0x7b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Document *self) Save;
				public function HRESULT(Document *self, BSTR Filename) SaveAs;
				public function HRESULT(Document *self, BOOL SaveChanges) Close;
				public function HRESULT(Document *self, Views** Views) get_Views;
				public function HRESULT(Document *self, SnapIns** SnapIns) get_SnapIns;
				public function HRESULT(Document *self, View** View) get_ActiveView;
				public function HRESULT(Document *self, uint16** Name) get_Name;
				public function HRESULT(Document *self, BSTR Name) put_Name;
				public function HRESULT(Document *self, uint16** Location) get_Location;
				public function HRESULT(Document *self, BOOL* IsSaved) get_IsSaved;
				public function HRESULT(Document *self, _DocumentMode* Mode) get_Mode;
				public function HRESULT(Document *self, _DocumentMode Mode) put_Mode;
				public function HRESULT(Document *self, Node** Node) get_RootNode;
				public function HRESULT(Document *self, ScopeNamespace** ScopeNamespace) get_ScopeNamespace;
				public function HRESULT(Document *self, Properties** Properties) CreateProperties;
				public function HRESULT(Document *self, _Application** Application) get_Application;
			}
		}
		[CRepr]
		public struct SnapIn : IDispatch
		{
			public const new Guid IID = .(0x3be910f6, 0x3459, 0x49c6, 0xa1, 0xbb, 0x41, 0xe6, 0xbe, 0x9d, 0xf3, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(SnapIn *self, uint16** Name) get_Name;
				public function HRESULT(SnapIn *self, uint16** Vendor) get_Vendor;
				public function HRESULT(SnapIn *self, uint16** Version) get_Version;
				public function HRESULT(SnapIn *self, Extensions** Extensions) get_Extensions;
				public function HRESULT(SnapIn *self, uint16** SnapinCLSID) get_SnapinCLSID;
				public function HRESULT(SnapIn *self, Properties** Properties) get_Properties;
				public function HRESULT(SnapIn *self, BOOL Enable) EnableAllExtensions;
			}
		}
		[CRepr]
		public struct SnapIns : IDispatch
		{
			public const new Guid IID = .(0x2ef3de1d, 0xb12a, 0x49d1, 0x92, 0xc5, 0x0b, 0x00, 0x79, 0x87, 0x68, 0xf1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(SnapIns *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(SnapIns *self, int32 Index, SnapIn** SnapIn) Item;
				public function HRESULT(SnapIns *self, int32* Count) get_Count;
				public function HRESULT(SnapIns *self, BSTR SnapinNameOrCLSID, VARIANT ParentSnapin, VARIANT Properties, SnapIn** SnapIn) Add;
				public function HRESULT(SnapIns *self, SnapIn* SnapIn) Remove;
			}
		}
		[CRepr]
		public struct Extension : IDispatch
		{
			public const new Guid IID = .(0xad4d6ca6, 0x912f, 0x409b, 0xa2, 0x6e, 0x7f, 0xd2, 0x34, 0xae, 0xf5, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Extension *self, uint16** Name) get_Name;
				public function HRESULT(Extension *self, uint16** Vendor) get_Vendor;
				public function HRESULT(Extension *self, uint16** Version) get_Version;
				public function HRESULT(Extension *self, Extensions** Extensions) get_Extensions;
				public function HRESULT(Extension *self, uint16** SnapinCLSID) get_SnapinCLSID;
				public function HRESULT(Extension *self, BOOL Enable) EnableAllExtensions;
				public function HRESULT(Extension *self, BOOL Enable) Enable;
			}
		}
		[CRepr]
		public struct Extensions : IDispatch
		{
			public const new Guid IID = .(0x82dbea43, 0x8ca4, 0x44bc, 0xa2, 0xca, 0xd1, 0x87, 0x41, 0x05, 0x9e, 0xc8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Extensions *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(Extensions *self, int32 Index, Extension** Extension) Item;
				public function HRESULT(Extensions *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct Columns : IDispatch
		{
			public const new Guid IID = .(0x383d4d97, 0xfc44, 0x478b, 0xb1, 0x39, 0x63, 0x23, 0xdc, 0x48, 0x61, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Columns *self, int32 Index, Column** Column) Item;
				public function HRESULT(Columns *self, int32* Count) get_Count;
				public function HRESULT(Columns *self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct Column : IDispatch
		{
			public const new Guid IID = .(0xfd1c5f63, 0x2b16, 0x4d06, 0x9a, 0xb3, 0xf4, 0x53, 0x50, 0xb9, 0x40, 0xab);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Column *self, BSTR* Name) Name;
				public function HRESULT(Column *self, int32* Width) get_Width;
				public function HRESULT(Column *self, int32 Width) put_Width;
				public function HRESULT(Column *self, int32* DisplayPosition) get_DisplayPosition;
				public function HRESULT(Column *self, int32 Index) put_DisplayPosition;
				public function HRESULT(Column *self, BOOL* Hidden) get_Hidden;
				public function HRESULT(Column *self, BOOL Hidden) put_Hidden;
				public function HRESULT(Column *self, _ColumnSortOrder SortOrder) SetAsSortColumn;
				public function HRESULT(Column *self, BOOL* IsSortColumn) IsSortColumn;
			}
		}
		[CRepr]
		public struct Views : IDispatch
		{
			public const new Guid IID = .(0xd6b8c29d, 0xa1ff, 0x4d72, 0xaa, 0xb0, 0xe3, 0x81, 0xe9, 0xb9, 0x33, 0x8d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Views *self, int32 Index, View** View) Item;
				public function HRESULT(Views *self, int32* Count) get_Count;
				public function HRESULT(Views *self, Node* Node, _ViewOptions viewOptions) Add;
				public function HRESULT(Views *self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct View : IDispatch
		{
			public const new Guid IID = .(0x6efc2da2, 0xb38c, 0x457e, 0x9a, 0xbb, 0xed, 0x2d, 0x18, 0x9b, 0x8c, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(View *self, Node** Node) get_ActiveScopeNode;
				public function HRESULT(View *self, Node* Node) put_ActiveScopeNode;
				public function HRESULT(View *self, Nodes** Nodes) get_Selection;
				public function HRESULT(View *self, Nodes** Nodes) get_ListItems;
				public function HRESULT(View *self, VARIANT ScopeNode, IDispatch** ScopeNodeObject) SnapinScopeObject;
				public function HRESULT(View *self, IDispatch** SelectionObject) SnapinSelectionObject;
				public function HRESULT(View *self, View* View, int16* TheSame) Is;
				public function HRESULT(View *self, Document** Document) get_Document;
				public function HRESULT(View *self) SelectAll;
				public function HRESULT(View *self, Node* Node) Select;
				public function HRESULT(View *self, Node* Node) Deselect;
				public function HRESULT(View *self, Node* Node, BOOL* IsSelected) IsSelected;
				public function HRESULT(View *self, VARIANT ScopeNode) DisplayScopeNodePropertySheet;
				public function HRESULT(View *self) DisplaySelectionPropertySheet;
				public function HRESULT(View *self, VARIANT ScopeNode) CopyScopeNode;
				public function HRESULT(View *self) CopySelection;
				public function HRESULT(View *self, VARIANT ScopeNode) DeleteScopeNode;
				public function HRESULT(View *self) DeleteSelection;
				public function HRESULT(View *self, BSTR NewName, VARIANT ScopeNode) RenameScopeNode;
				public function HRESULT(View *self, BSTR NewName) RenameSelectedItem;
				public function HRESULT(View *self, VARIANT ScopeNode, ContextMenu** ContextMenu) get_ScopeNodeContextMenu;
				public function HRESULT(View *self, ContextMenu** ContextMenu) get_SelectionContextMenu;
				public function HRESULT(View *self, VARIANT ScopeNode) RefreshScopeNode;
				public function HRESULT(View *self) RefreshSelection;
				public function HRESULT(View *self, BSTR MenuItemPath) ExecuteSelectionMenuItem;
				public function HRESULT(View *self, BSTR MenuItemPath, VARIANT ScopeNode) ExecuteScopeNodeMenuItem;
				public function HRESULT(View *self, BSTR Command, BSTR Directory, BSTR Parameters, BSTR WindowState) ExecuteShellCommand;
				public function HRESULT(View *self, Frame** Frame) get_Frame;
				public function HRESULT(View *self) Close;
				public function HRESULT(View *self, BOOL* Visible) get_ScopeTreeVisible;
				public function HRESULT(View *self, BOOL Visible) put_ScopeTreeVisible;
				public function HRESULT(View *self) Back;
				public function HRESULT(View *self) Forward;
				public function HRESULT(View *self, BSTR StatusBarText) put_StatusBarText;
				public function HRESULT(View *self, uint16** Memento) get_Memento;
				public function HRESULT(View *self, BSTR Memento) ViewMemento;
				public function HRESULT(View *self, Columns** Columns) get_Columns;
				public function HRESULT(View *self, Node* Node, int32 Column, uint16** CellContents) get_CellContents;
				public function HRESULT(View *self, BSTR File, _ExportListOptions exportoptions) ExportList;
				public function HRESULT(View *self, _ListViewMode* Mode) get_ListViewMode;
				public function HRESULT(View *self, _ListViewMode mode) put_ListViewMode;
				public function HRESULT(View *self, IDispatch** Control) get_ControlObject;
			}
		}
		[CRepr]
		public struct Nodes : IDispatch
		{
			public const new Guid IID = .(0x313b01df, 0xb22f, 0x4d42, 0xb1, 0xb8, 0x48, 0x3c, 0xdc, 0xf5, 0x1d, 0x35);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Nodes *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(Nodes *self, int32 Index, Node** Node) Item;
				public function HRESULT(Nodes *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct ContextMenu : IDispatch
		{
			public const new Guid IID = .(0xdab39ce0, 0x25e6, 0x4e07, 0x83, 0x62, 0xba, 0x9c, 0x95, 0x70, 0x65, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ContextMenu *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(ContextMenu *self, VARIANT IndexOrPath, MenuItem** MenuItem) get_Item;
				public function HRESULT(ContextMenu *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct MenuItem : IDispatch
		{
			public const new Guid IID = .(0x0178fad1, 0xb361, 0x4b27, 0x96, 0xad, 0x67, 0xc5, 0x7e, 0xbf, 0x2e, 0x1d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(MenuItem *self, uint16** DisplayName) get_DisplayName;
				public function HRESULT(MenuItem *self, uint16** LanguageIndependentName) get_LanguageIndependentName;
				public function HRESULT(MenuItem *self, uint16** Path) get_Path;
				public function HRESULT(MenuItem *self, uint16** LanguageIndependentPath) get_LanguageIndependentPath;
				public function HRESULT(MenuItem *self) Execute;
				public function HRESULT(MenuItem *self, BOOL* Enabled) get_Enabled;
			}
		}
		[CRepr]
		public struct Properties : IDispatch
		{
			public const new Guid IID = .(0x2886abc2, 0xa425, 0x42b2, 0x91, 0xc6, 0xe2, 0x5c, 0x0e, 0x04, 0x58, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Properties *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(Properties *self, BSTR Name, Property** Property) Item;
				public function HRESULT(Properties *self, int32* Count) get_Count;
				public function HRESULT(Properties *self, BSTR Name) Remove;
			}
		}
		[CRepr]
		public struct Property : IDispatch
		{
			public const new Guid IID = .(0x4600c3a5, 0xe301, 0x41d8, 0xb6, 0xd0, 0xef, 0x2e, 0x42, 0x12, 0xe0, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(Property *self, VARIANT* Value) get_Value;
				public function HRESULT(Property *self, VARIANT Value) put_Value;
				public function HRESULT(Property *self, uint16** Name) get_Name;
			}
		}
		[CRepr]
		public struct IComponentData : IUnknown
		{
			public const new Guid IID = .(0x955ab28a, 0x5218, 0x11d0, 0xa9, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IComponentData *self, IUnknown* pUnknown) Initialize;
				public function HRESULT(IComponentData *self, IComponentAlt** ppComponent) CreateComponent;
				public function HRESULT(IComponentData *self, IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public function HRESULT(IComponentData *self) Destroy;
				public function HRESULT(IComponentData *self, int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) QueryDataObject;
				public function HRESULT(IComponentData *self, SCOPEDATAITEM* pScopeDataItem) GetDisplayInfo;
				public function HRESULT(IComponentData *self, IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IComponentAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb2, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IComponentAlt *self, IConsole* lpConsole) Initialize;
				public function HRESULT(IComponentAlt *self, IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public function HRESULT(IComponentAlt *self, int cookie) Destroy;
				public function HRESULT(IComponentAlt *self, int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) QueryDataObject;
				public function HRESULT(IComponentAlt *self, int cookie, PWSTR* ppViewType, int32* pViewOptions) GetResultViewType;
				public function HRESULT(IComponentAlt *self, RESULTDATAITEM* pResultDataItem) GetDisplayInfo;
				public function HRESULT(IComponentAlt *self, IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IResultDataCompare : IUnknown
		{
			public const new Guid IID = .(0xe8315a52, 0x7a1a, 0x11d0, 0xa2, 0xd2, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResultDataCompare *self, LPARAM lUserParam, int cookieA, int cookieB, int32* pnResult) Compare;
			}
		}
		[CRepr]
		public struct IResultOwnerData : IUnknown
		{
			public const new Guid IID = .(0x9cb396d8, 0xea83, 0x11d0, 0xae, 0xf1, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResultOwnerData *self, RESULTFINDINFO* pFindInfo, int32* pnFoundIndex) FindItem;
				public function HRESULT(IResultOwnerData *self, int32 nStartIndex, int32 nEndIndex) CacheHint;
				public function HRESULT(IResultOwnerData *self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) SortItems;
			}
		}
		[CRepr]
		public struct IConsole : IUnknown
		{
			public const new Guid IID = .(0x43136eb1, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConsole *self, IHeaderCtrl* pHeader) SetHeader;
				public function HRESULT(IConsole *self, IToolbar* pToolbar) SetToolbar;
				public function HRESULT(IConsole *self, IUnknown** pUnknown) QueryResultView;
				public function HRESULT(IConsole *self, IImageListAlt** ppImageList) QueryScopeImageList;
				public function HRESULT(IConsole *self, IImageListAlt** ppImageList) QueryResultImageList;
				public function HRESULT(IConsole *self, IDataObject* lpDataObject, LPARAM data, int hint) UpdateAllViews;
				public function HRESULT(IConsole *self, PWSTR lpszText, PWSTR lpszTitle, uint32 fuStyle, int32* piRetval) MessageBox;
				public function HRESULT(IConsole *self, IConsoleVerb** ppConsoleVerb) QueryConsoleVerb;
				public function HRESULT(IConsole *self, int hScopeItem) SelectScopeItem;
				public function HRESULT(IConsole *self, HWND* phwnd) GetMainWindow;
				public function HRESULT(IConsole *self, int hScopeItem, uint32 lOptions) NewWindow;
			}
		}
		[CRepr]
		public struct IHeaderCtrl : IUnknown
		{
			public const new Guid IID = .(0x43136eb3, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR title, int32 nFormat, int32 nWidth) InsertColumn;
				public function HRESULT(IHeaderCtrl *self, int32 nCol) DeleteColumn;
				public function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR title) SetColumnText;
				public function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR* pText) GetColumnText;
				public function HRESULT(IHeaderCtrl *self, int32 nCol, int32 nWidth) SetColumnWidth;
				public function HRESULT(IHeaderCtrl *self, int32 nCol, int32* pWidth) GetColumnWidth;
			}
		}
		[CRepr]
		public struct IContextMenuCallback : IUnknown
		{
			public const new Guid IID = .(0x43136eb7, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContextMenuCallback *self, CONTEXTMENUITEM* pItem) AddItem;
			}
		}
		[CRepr]
		public struct IContextMenuProvider : IContextMenuCallback
		{
			public const new Guid IID = .(0x43136eb6, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IContextMenuCallback.VTable
			{
				public function HRESULT(IContextMenuProvider *self) EmptyMenuList;
				public function HRESULT(IContextMenuProvider *self, IUnknown* piExtension, IDataObject* piDataObject) AddPrimaryExtensionItems;
				public function HRESULT(IContextMenuProvider *self, IDataObject* piDataObject) AddThirdPartyExtensionItems;
				public function HRESULT(IContextMenuProvider *self, HWND hwndParent, int32 xPos, int32 yPos, int32* plSelected) ShowContextMenu;
			}
		}
		[CRepr]
		public struct IExtendContextMenu : IUnknown
		{
			public const new Guid IID = .(0x4f3b7a4f, 0xcfac, 0x11cf, 0xb8, 0xe3, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xb0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IExtendContextMenu *self, IDataObject* piDataObject, IContextMenuCallback* piCallback, int32* pInsertionAllowed) AddMenuItems;
				public function HRESULT(IExtendContextMenu *self, int32 lCommandID, IDataObject* piDataObject) Command;
			}
		}
		[CRepr]
		public struct IImageListAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb8, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IImageListAlt *self, int* pIcon, int32 nLoc) ImageListSetIcon;
				public function HRESULT(IImageListAlt *self, int* pBMapSm, int* pBMapLg, int32 nStartLoc, uint32 cMask) ImageListSetStrip;
			}
		}
		[CRepr]
		public struct IResultData : IUnknown
		{
			public const new Guid IID = .(0x31da5fa0, 0xe0eb, 0x11cf, 0x9f, 0x21, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResultData *self, RESULTDATAITEM* item) InsertItem;
				public function HRESULT(IResultData *self, int itemID, int32 nCol) DeleteItem;
				public function HRESULT(IResultData *self, LPARAM lParam, int* pItemID) FindItemByLParam;
				public function HRESULT(IResultData *self) DeleteAllRsltItems;
				public function HRESULT(IResultData *self, RESULTDATAITEM* item) SetItem;
				public function HRESULT(IResultData *self, RESULTDATAITEM* item) GetItem;
				public function HRESULT(IResultData *self, RESULTDATAITEM* item) GetNextItem;
				public function HRESULT(IResultData *self, int32 nIndex, int itemID, uint32 uAdd, uint32 uRemove) ModifyItemState;
				public function HRESULT(IResultData *self, MMC_RESULT_VIEW_STYLE add, MMC_RESULT_VIEW_STYLE remove) ModifyViewStyle;
				public function HRESULT(IResultData *self, int32 lViewMode) SetViewMode;
				public function HRESULT(IResultData *self, int32* lViewMode) GetViewMode;
				public function HRESULT(IResultData *self, int itemID) UpdateItem;
				public function HRESULT(IResultData *self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) Sort;
				public function HRESULT(IResultData *self, PWSTR DescText) SetDescBarText;
				public function HRESULT(IResultData *self, int32 nItemCount, uint32 dwOptions) SetItemCount;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace : IUnknown
		{
			public const new Guid IID = .(0xbedeb620, 0xf24d, 0x11cf, 0x8a, 0xfc, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) InsertItem;
				public function HRESULT(IConsoleNameSpace *self, int hItem, int32 fDeleteThis) DeleteItem;
				public function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) SetItem;
				public function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) GetItem;
				public function HRESULT(IConsoleNameSpace *self, int item, int* pItemChild, int* pCookie) GetChildItem;
				public function HRESULT(IConsoleNameSpace *self, int item, int* pItemNext, int* pCookie) GetNextItem;
				public function HRESULT(IConsoleNameSpace *self, int item, int* pItemParent, int* pCookie) GetParentItem;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace2 : IConsoleNameSpace
		{
			public const new Guid IID = .(0x255f18cc, 0x65db, 0x11d1, 0xa7, 0xdc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IConsoleNameSpace.VTable
			{
				public function HRESULT(IConsoleNameSpace2 *self, int hItem) Expand;
				public function HRESULT(IConsoleNameSpace2 *self, int hItem, Guid* lpClsid) AddExtension;
			}
		}
		[CRepr]
		public struct IPropertySheetCallback : IUnknown
		{
			public const new Guid IID = .(0x85de64dd, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPropertySheetCallback *self, HPROPSHEETPAGE hPage) AddPage;
				public function HRESULT(IPropertySheetCallback *self, HPROPSHEETPAGE hPage) RemovePage;
			}
		}
		[CRepr]
		public struct IPropertySheetProvider : IUnknown
		{
			public const new Guid IID = .(0x85de64de, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPropertySheetProvider *self, PWSTR title, uint8 type, int cookie, IDataObject* pIDataObjectm, uint32 dwOptions) CreatePropertySheet;
				public function HRESULT(IPropertySheetProvider *self, int hItem, IComponentAlt* lpComponent, IDataObject* lpDataObject) FindPropertySheet;
				public function HRESULT(IPropertySheetProvider *self, IUnknown* lpUnknown, BOOL bCreateHandle, HWND hNotifyWindow, BOOL bScopePane) AddPrimaryPages;
				public function HRESULT(IPropertySheetProvider *self) AddExtensionPages;
				public function HRESULT(IPropertySheetProvider *self, int window, int32 page) Show;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet : IUnknown
		{
			public const new Guid IID = .(0x85de64dc, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IExtendPropertySheet *self, IPropertySheetCallback* lpProvider, int handle, IDataObject* lpIDataObject) CreatePropertyPages;
				public function HRESULT(IExtendPropertySheet *self, IDataObject* lpDataObject) QueryPagesFor;
			}
		}
		[CRepr]
		public struct IControlbar : IUnknown
		{
			public const new Guid IID = .(0x69fb811e, 0x6c1c, 0x11d0, 0xa2, 0xcb, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IControlbar *self, MMC_CONTROL_TYPE nType, IExtendControlbar* pExtendControlbar, IUnknown** ppUnknown) Create;
				public function HRESULT(IControlbar *self, MMC_CONTROL_TYPE nType, IUnknown* lpUnknown) Attach;
				public function HRESULT(IControlbar *self, IUnknown* lpUnknown) Detach;
			}
		}
		[CRepr]
		public struct IExtendControlbar : IUnknown
		{
			public const new Guid IID = .(0x49506520, 0x6f40, 0x11d0, 0xa9, 0x8b, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IExtendControlbar *self, IControlbar* pControlbar) SetControlbar;
				public function HRESULT(IExtendControlbar *self, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param2) ControlbarNotify;
			}
		}
		[CRepr]
		public struct IToolbar : IUnknown
		{
			public const new Guid IID = .(0x43136eb9, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IToolbar *self, int32 nImages, HBITMAP hbmp, int32 cxSize, int32 cySize, uint32 crMask) AddBitmap;
				public function HRESULT(IToolbar *self, int32 nButtons, MMCBUTTON* lpButtons) AddButtons;
				public function HRESULT(IToolbar *self, int32 nIndex, MMCBUTTON* lpButton) InsertButton;
				public function HRESULT(IToolbar *self, int32 nIndex) DeleteButton;
				public function HRESULT(IToolbar *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL* pState) GetButtonState;
				public function HRESULT(IToolbar *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct IConsoleVerb : IUnknown
		{
			public const new Guid IID = .(0xe49f7a60, 0x74af, 0x11d0, 0xa2, 0x86, 0x00, 0xc0, 0x4f, 0xd8, 0xfe, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL* pState) GetVerbState;
				public function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL bState) SetVerbState;
				public function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID) SetDefaultVerb;
				public function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB* peCmdID) GetDefaultVerb;
			}
		}
		[CRepr]
		public struct ISnapinAbout : IUnknown
		{
			public const new Guid IID = .(0x1245208c, 0xa151, 0x11d0, 0xa7, 0xd7, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISnapinAbout *self, PWSTR* lpDescription) GetSnapinDescription;
				public function HRESULT(ISnapinAbout *self, PWSTR* lpName) GetProvider;
				public function HRESULT(ISnapinAbout *self, PWSTR* lpVersion) GetSnapinVersion;
				public function HRESULT(ISnapinAbout *self, HICON* hAppIcon) GetSnapinImage;
				public function HRESULT(ISnapinAbout *self, HBITMAP* hSmallImage, HBITMAP* hSmallImageOpen, HBITMAP* hLargeImage, uint32* cMask) GetStaticFolderImage;
			}
		}
		[CRepr]
		public struct IMenuButton : IUnknown
		{
			public const new Guid IID = .(0x951ed750, 0xd080, 0x11d0, 0xb1, 0x97, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMenuButton *self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) AddButton;
				public function HRESULT(IMenuButton *self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) SetButton;
				public function HRESULT(IMenuButton *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct ISnapinHelp : IUnknown
		{
			public const new Guid IID = .(0xa6b15ace, 0xdf59, 0x11d0, 0xa7, 0xdd, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISnapinHelp *self, PWSTR* lpCompiledHelpFile) GetHelpTopic;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet2 : IExtendPropertySheet
		{
			public const new Guid IID = .(0xb7a87232, 0x4a51, 0x11d1, 0xa7, 0xea, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IExtendPropertySheet.VTable
			{
				public function HRESULT(IExtendPropertySheet2 *self, IDataObject* lpIDataObject, HBITMAP* lphWatermark, HBITMAP* lphHeader, HPALETTE* lphPalette, BOOL* bStretch) GetWatermarks;
			}
		}
		[CRepr]
		public struct IHeaderCtrl2 : IHeaderCtrl
		{
			public const new Guid IID = .(0x9757abb8, 0x1b32, 0x11d1, 0xa7, 0xce, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IHeaderCtrl.VTable
			{
				public function HRESULT(IHeaderCtrl2 *self, uint32 uTimeout) SetChangeTimeOut;
				public function HRESULT(IHeaderCtrl2 *self, uint32 nColumn, uint32 dwType, MMC_FILTERDATA* pFilterData) SetColumnFilter;
				public function HRESULT(IHeaderCtrl2 *self, uint32 nColumn, uint32* pdwType, MMC_FILTERDATA* pFilterData) GetColumnFilter;
			}
		}
		[CRepr]
		public struct ISnapinHelp2 : ISnapinHelp
		{
			public const new Guid IID = .(0x4861a010, 0x20f9, 0x11d2, 0xa5, 0x10, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISnapinHelp.VTable
			{
				public function HRESULT(ISnapinHelp2 *self, PWSTR* lpCompiledHelpFiles) GetLinkedTopics;
			}
		}
		[CRepr]
		public struct IEnumTASK : IUnknown
		{
			public const new Guid IID = .(0x338698b1, 0x5a02, 0x11d1, 0x9f, 0xec, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumTASK *self, uint32 celt, MMC_TASK* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumTASK *self, uint32 celt) Skip;
				public function HRESULT(IEnumTASK *self) Reset;
				public function HRESULT(IEnumTASK *self, IEnumTASK** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IExtendTaskPad : IUnknown
		{
			public const new Guid IID = .(0x8dee6511, 0x554d, 0x11d1, 0x9f, 0xea, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IExtendTaskPad *self, IDataObject* pdo, VARIANT* arg, VARIANT* param2) TaskNotify;
				public function HRESULT(IExtendTaskPad *self, IDataObject* pdo, PWSTR szTaskGroup, IEnumTASK** ppEnumTASK) EnumTasks;
				public function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, PWSTR* pszTitle) GetTitle;
				public function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, PWSTR* pszDescriptiveText) GetDescriptiveText;
				public function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, MMC_TASK_DISPLAY_OBJECT* pTDO) GetBackground;
				public function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, MMC_LISTPAD_INFO* lpListPadInfo) GetListPadInfo;
			}
		}
		[CRepr]
		public struct IConsole2 : IConsole
		{
			public const new Guid IID = .(0x103d842a, 0xaa63, 0x11d1, 0xa7, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IConsole.VTable
			{
				public function HRESULT(IConsole2 *self, int hItem, BOOL bExpand) Expand;
				public function HRESULT(IConsole2 *self) IsTaskpadViewPreferred;
				public function HRESULT(IConsole2 *self, PWSTR pszStatusText) SetStatusText;
			}
		}
		[CRepr]
		public struct IDisplayHelp : IUnknown
		{
			public const new Guid IID = .(0xcc593830, 0xb926, 0x11d1, 0x80, 0x63, 0x00, 0x00, 0xf8, 0x75, 0xa9, 0xce);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDisplayHelp *self, PWSTR pszHelpTopic) ShowTopic;
			}
		}
		[CRepr]
		public struct IRequiredExtensions : IUnknown
		{
			public const new Guid IID = .(0x72782d7a, 0xa4a0, 0x11d1, 0xaf, 0x0f, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRequiredExtensions *self) EnableAllExtensions;
				public function HRESULT(IRequiredExtensions *self, Guid* pExtCLSID) GetFirstExtension;
				public function HRESULT(IRequiredExtensions *self, Guid* pExtCLSID) GetNextExtension;
			}
		}
		[CRepr]
		public struct IStringTable : IUnknown
		{
			public const new Guid IID = .(0xde40b7a4, 0x0f65, 0x11d2, 0x8e, 0x25, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStringTable *self, PWSTR pszAdd, uint32* pStringID) AddString;
				public function HRESULT(IStringTable *self, uint32 StringID, uint32 cchBuffer, char16* lpBuffer, uint32* pcchOut) GetString;
				public function HRESULT(IStringTable *self, uint32 StringID, uint32* pcchString) GetStringLength;
				public function HRESULT(IStringTable *self, uint32 StringID) DeleteString;
				public function HRESULT(IStringTable *self) DeleteAllStrings;
				public function HRESULT(IStringTable *self, PWSTR pszFind, uint32* pStringID) FindString;
				public function HRESULT(IStringTable *self, IEnumString** ppEnum) Enumerate;
			}
		}
		[CRepr]
		public struct IColumnData : IUnknown
		{
			public const new Guid IID = .(0x547c1354, 0x024d, 0x11d3, 0xa7, 0x07, 0x00, 0xc0, 0x4f, 0x8e, 0xf4, 0xcb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_COLUMN_SET_DATA* pColSetData) SetColumnConfigData;
				public function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_COLUMN_SET_DATA** ppColSetData) GetColumnConfigData;
				public function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_SORT_SET_DATA* pColSortData) SetColumnSortData;
				public function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_SORT_SET_DATA** ppColSortData) GetColumnSortData;
			}
		}
		[CRepr]
		public struct IMessageView : IUnknown
		{
			public const new Guid IID = .(0x80f94174, 0xfccc, 0x11d2, 0xb9, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMessageView *self, PWSTR pszTitleText) SetTitleText;
				public function HRESULT(IMessageView *self, PWSTR pszBodyText) SetBodyText;
				public function HRESULT(IMessageView *self, IconIdentifier id) SetIcon;
				public function HRESULT(IMessageView *self) Clear;
			}
		}
		[CRepr]
		public struct IResultDataCompareEx : IUnknown
		{
			public const new Guid IID = .(0x96933476, 0x0251, 0x11d3, 0xae, 0xb0, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResultDataCompareEx *self, RDCOMPARE* prdc, int32* pnResult) Compare;
			}
		}
		[CRepr]
		public struct IComponentData2 : IComponentData
		{
			public const new Guid IID = .(0xcca0f2d2, 0x82de, 0x41b5, 0xbf, 0x47, 0x3b, 0x20, 0x76, 0x27, 0x3d, 0x5c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IComponentData.VTable
			{
				public function HRESULT(IComponentData2 *self, int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) QueryDispatch;
			}
		}
		[CRepr]
		public struct IComponent2 : IComponentAlt
		{
			public const new Guid IID = .(0x79a2d615, 0x4a10, 0x4ed4, 0x8c, 0x65, 0x86, 0x33, 0xf9, 0x33, 0x50, 0x95);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IComponentAlt.VTable
			{
				public function HRESULT(IComponent2 *self, int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) QueryDispatch;
				public function HRESULT(IComponent2 *self, int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) GetResultViewType2;
				public function HRESULT(IComponent2 *self, int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) RestoreResultView;
			}
		}
		[CRepr]
		public struct IContextMenuCallback2 : IUnknown
		{
			public const new Guid IID = .(0xe178bc0e, 0x2ed0, 0x4b5e, 0x80, 0x97, 0x42, 0xc9, 0x08, 0x7e, 0x8b, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContextMenuCallback2 *self, CONTEXTMENUITEM2* pItem) AddItem;
			}
		}
		[CRepr]
		public struct IMMCVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xa8d2c5fe, 0xcdcb, 0x4b9d, 0xbd, 0xe5, 0xa2, 0x73, 0x43, 0xff, 0x54, 0xbc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMMCVersionInfo *self, int32* pVersionMajor, int32* pVersionMinor) GetMMCVersion;
			}
		}
		[CRepr]
		public struct IExtendView : IUnknown
		{
			public const new Guid IID = .(0x89995cee, 0xd2ed, 0x4c0e, 0xae, 0x5e, 0xdf, 0x7e, 0x76, 0xf3, 0xfa, 0x53);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IExtendView *self, IDataObject* pDataObject, IViewExtensionCallback* pViewExtensionCallback) GetViews;
			}
		}
		[CRepr]
		public struct IViewExtensionCallback : IUnknown
		{
			public const new Guid IID = .(0x34dd928a, 0x7599, 0x41e5, 0x9f, 0x5e, 0xd6, 0xbc, 0x30, 0x62, 0xc2, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IViewExtensionCallback *self, MMC_EXT_VIEW_DATA* pExtViewData) AddView;
			}
		}
		[CRepr]
		public struct IConsolePower : IUnknown
		{
			public const new Guid IID = .(0x1cfbdd0e, 0x62ca, 0x49ce, 0xa3, 0xaf, 0xdb, 0xb2, 0xde, 0x61, 0xb0, 0x68);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConsolePower *self, uint32 dwAdd, uint32 dwRemove) SetExecutionState;
				public function HRESULT(IConsolePower *self, uint32 dwFlags) ResetIdleTimer;
			}
		}
		[CRepr]
		public struct IConsolePowerSink : IUnknown
		{
			public const new Guid IID = .(0x3333759f, 0xfe4f, 0x4975, 0xb1, 0x43, 0xfe, 0xc0, 0xa5, 0xdd, 0x6d, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConsolePowerSink *self, uint32 nEvent, LPARAM lParam, LRESULT* plReturn) OnPowerBroadcast;
			}
		}
		[CRepr]
		public struct INodeProperties : IUnknown
		{
			public const new Guid IID = .(0x15bc4d24, 0xa522, 0x4406, 0xaa, 0x55, 0x07, 0x49, 0x53, 0x7a, 0x68, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(INodeProperties *self, IDataObject* pDataObject, BSTR szPropertyName, uint16** pbstrProperty) GetProperty;
			}
		}
		[CRepr]
		public struct IConsole3 : IConsole2
		{
			public const new Guid IID = .(0x4f85efdb, 0xd0e1, 0x498c, 0x8d, 0x4a, 0xd0, 0x10, 0xdf, 0xdd, 0x40, 0x4f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IConsole2.VTable
			{
				public function HRESULT(IConsole3 *self, int hScopeItem) RenameScopeItem;
			}
		}
		[CRepr]
		public struct IResultData2 : IResultData
		{
			public const new Guid IID = .(0x0f36e0eb, 0xa7f1, 0x4a81, 0xbe, 0x5a, 0x92, 0x47, 0xf7, 0xde, 0x4b, 0x1b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IResultData.VTable
			{
				public function HRESULT(IResultData2 *self, int itemID) RenameResultItem;
			}
		}
		
	}
}
