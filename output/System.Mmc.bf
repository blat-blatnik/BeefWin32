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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(Properties* pProperties) mut
			{
				return VT.Initialize(&this, pProperties);
			}
			public HRESULT QueryPropertyNames(ISnapinPropertiesCallback* pCallback) mut
			{
				return VT.QueryPropertyNames(&this, pCallback);
			}
			public HRESULT PropertiesChanged(int32 cProperties, MMC_SNAPIN_PROPERTY* pProperties) mut
			{
				return VT.PropertiesChanged(&this, cProperties, pProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISnapinProperties *self, Properties* pProperties) Initialize;
				public new function HRESULT(ISnapinProperties *self, ISnapinPropertiesCallback* pCallback) QueryPropertyNames;
				public new function HRESULT(ISnapinProperties *self, int32 cProperties, MMC_SNAPIN_PROPERTY* pProperties) PropertiesChanged;
			}
		}
		[CRepr]
		public struct ISnapinPropertiesCallback : IUnknown
		{
			public const new Guid IID = .(0xa50fa2e5, 0x7e61, 0x45eb, 0xa8, 0xd4, 0x9a, 0x07, 0xb3, 0xe8, 0x51, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPropertyName(PWSTR pszPropName, uint32 dwFlags) mut
			{
				return VT.AddPropertyName(&this, pszPropName, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISnapinPropertiesCallback *self, PWSTR pszPropName, uint32 dwFlags) AddPropertyName;
			}
		}
		[CRepr]
		public struct _Application : IDispatch
		{
			public const new Guid IID = .(0xa3afb9cc, 0xb653, 0x4741, 0x86, 0xab, 0xf0, 0x47, 0x0e, 0xc1, 0x38, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Help() mut
			{
				VT.Help(&this);
			}
			public void Quit() mut
			{
				VT.Quit(&this);
			}
			public HRESULT get_Document(Document** Document) mut
			{
				return VT.get_Document(&this, Document);
			}
			public HRESULT Load(BSTR Filename) mut
			{
				return VT.Load(&this, Filename);
			}
			public HRESULT get_Frame(Frame** Frame) mut
			{
				return VT.get_Frame(&this, Frame);
			}
			public HRESULT get_Visible(BOOL* Visible) mut
			{
				return VT.get_Visible(&this, Visible);
			}
			public HRESULT Show() mut
			{
				return VT.Show(&this);
			}
			public HRESULT Hide() mut
			{
				return VT.Hide(&this);
			}
			public HRESULT get_UserControl(BOOL* UserControl) mut
			{
				return VT.get_UserControl(&this, UserControl);
			}
			public HRESULT put_UserControl(BOOL UserControl) mut
			{
				return VT.put_UserControl(&this, UserControl);
			}
			public HRESULT get_VersionMajor(int32* VersionMajor) mut
			{
				return VT.get_VersionMajor(&this, VersionMajor);
			}
			public HRESULT get_VersionMinor(int32* VersionMinor) mut
			{
				return VT.get_VersionMinor(&this, VersionMinor);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function void(_Application *self) Help;
				public new function void(_Application *self) Quit;
				public new function HRESULT(_Application *self, Document** Document) get_Document;
				public new function HRESULT(_Application *self, BSTR Filename) Load;
				public new function HRESULT(_Application *self, Frame** Frame) get_Frame;
				public new function HRESULT(_Application *self, BOOL* Visible) get_Visible;
				public new function HRESULT(_Application *self) Show;
				public new function HRESULT(_Application *self) Hide;
				public new function HRESULT(_Application *self, BOOL* UserControl) get_UserControl;
				public new function HRESULT(_Application *self, BOOL UserControl) put_UserControl;
				public new function HRESULT(_Application *self, int32* VersionMajor) get_VersionMajor;
				public new function HRESULT(_Application *self, int32* VersionMinor) get_VersionMinor;
			}
		}
		[CRepr]
		public struct _AppEvents : IDispatch
		{
			public const new Guid IID = .(0xde46cbdd, 0x53f5, 0x4635, 0xaf, 0x54, 0x4f, 0xe7, 0x1e, 0x92, 0x3d, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQuit(_Application* Application) mut
			{
				return VT.OnQuit(&this, Application);
			}
			public HRESULT OnDocumentOpen(Document* Document, BOOL New) mut
			{
				return VT.OnDocumentOpen(&this, Document, New);
			}
			public HRESULT OnDocumentClose(Document* Document) mut
			{
				return VT.OnDocumentClose(&this, Document);
			}
			public HRESULT OnSnapInAdded(Document* Document, SnapIn* SnapIn) mut
			{
				return VT.OnSnapInAdded(&this, Document, SnapIn);
			}
			public HRESULT OnSnapInRemoved(Document* Document, SnapIn* SnapIn) mut
			{
				return VT.OnSnapInRemoved(&this, Document, SnapIn);
			}
			public HRESULT OnNewView(View* View) mut
			{
				return VT.OnNewView(&this, View);
			}
			public HRESULT OnViewClose(View* View) mut
			{
				return VT.OnViewClose(&this, View);
			}
			public HRESULT OnViewChange(View* View, Node* NewOwnerNode) mut
			{
				return VT.OnViewChange(&this, View, NewOwnerNode);
			}
			public HRESULT OnSelectionChange(View* View, Nodes* NewNodes) mut
			{
				return VT.OnSelectionChange(&this, View, NewNodes);
			}
			public HRESULT OnContextMenuExecuted(MenuItem* MenuItem) mut
			{
				return VT.OnContextMenuExecuted(&this, MenuItem);
			}
			public HRESULT OnToolbarButtonClicked() mut
			{
				return VT.OnToolbarButtonClicked(&this);
			}
			public HRESULT OnListUpdated(View* View) mut
			{
				return VT.OnListUpdated(&this, View);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(_AppEvents *self, _Application* Application) OnQuit;
				public new function HRESULT(_AppEvents *self, Document* Document, BOOL New) OnDocumentOpen;
				public new function HRESULT(_AppEvents *self, Document* Document) OnDocumentClose;
				public new function HRESULT(_AppEvents *self, Document* Document, SnapIn* SnapIn) OnSnapInAdded;
				public new function HRESULT(_AppEvents *self, Document* Document, SnapIn* SnapIn) OnSnapInRemoved;
				public new function HRESULT(_AppEvents *self, View* View) OnNewView;
				public new function HRESULT(_AppEvents *self, View* View) OnViewClose;
				public new function HRESULT(_AppEvents *self, View* View, Node* NewOwnerNode) OnViewChange;
				public new function HRESULT(_AppEvents *self, View* View, Nodes* NewNodes) OnSelectionChange;
				public new function HRESULT(_AppEvents *self, MenuItem* MenuItem) OnContextMenuExecuted;
				public new function HRESULT(_AppEvents *self) OnToolbarButtonClicked;
				public new function HRESULT(_AppEvents *self, View* View) OnListUpdated;
			}
		}
		[CRepr]
		public struct AppEvents : IDispatch
		{
			public const new Guid IID = .(0xfc7a4252, 0x78ac, 0x4532, 0x8c, 0x5a, 0x56, 0x3c, 0xfe, 0x13, 0x88, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct _EventConnector : IDispatch
		{
			public const new Guid IID = .(0xc0bccd30, 0xde44, 0x4528, 0x84, 0x03, 0xa0, 0x5a, 0x6a, 0x1c, 0xc8, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectTo(_Application* Application) mut
			{
				return VT.ConnectTo(&this, Application);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(_EventConnector *self, _Application* Application) ConnectTo;
				public new function HRESULT(_EventConnector *self) Disconnect;
			}
		}
		[CRepr]
		public struct Frame : IDispatch
		{
			public const new Guid IID = .(0xe5e2d970, 0x5bb3, 0x4306, 0x88, 0x04, 0xb0, 0x96, 0x8a, 0x31, 0xc8, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Maximize() mut
			{
				return VT.Maximize(&this);
			}
			public HRESULT Minimize() mut
			{
				return VT.Minimize(&this);
			}
			public HRESULT Restore() mut
			{
				return VT.Restore(&this);
			}
			public HRESULT get_Top(int32* Top) mut
			{
				return VT.get_Top(&this, Top);
			}
			public HRESULT put_Top(int32 top) mut
			{
				return VT.put_Top(&this, top);
			}
			public HRESULT get_Bottom(int32* Bottom) mut
			{
				return VT.get_Bottom(&this, Bottom);
			}
			public HRESULT put_Bottom(int32 bottom) mut
			{
				return VT.put_Bottom(&this, bottom);
			}
			public HRESULT get_Left(int32* Left) mut
			{
				return VT.get_Left(&this, Left);
			}
			public HRESULT put_Left(int32 left) mut
			{
				return VT.put_Left(&this, left);
			}
			public HRESULT get_Right(int32* Right) mut
			{
				return VT.get_Right(&this, Right);
			}
			public HRESULT put_Right(int32 right) mut
			{
				return VT.put_Right(&this, right);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Frame *self) Maximize;
				public new function HRESULT(Frame *self) Minimize;
				public new function HRESULT(Frame *self) Restore;
				public new function HRESULT(Frame *self, int32* Top) get_Top;
				public new function HRESULT(Frame *self, int32 top) put_Top;
				public new function HRESULT(Frame *self, int32* Bottom) get_Bottom;
				public new function HRESULT(Frame *self, int32 bottom) put_Bottom;
				public new function HRESULT(Frame *self, int32* Left) get_Left;
				public new function HRESULT(Frame *self, int32 left) put_Left;
				public new function HRESULT(Frame *self, int32* Right) get_Right;
				public new function HRESULT(Frame *self, int32 right) put_Right;
			}
		}
		[CRepr]
		public struct Node : IDispatch
		{
			public const new Guid IID = .(0xf81ed800, 0x7839, 0x4447, 0x94, 0x5d, 0x8e, 0x15, 0xda, 0x59, 0xca, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(uint16** Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Property(BSTR PropertyName, uint16** PropertyValue) mut
			{
				return VT.get_Property(&this, PropertyName, PropertyValue);
			}
			public HRESULT get_Bookmark(uint16** Bookmark) mut
			{
				return VT.get_Bookmark(&this, Bookmark);
			}
			public HRESULT IsScopeNode(BOOL* IsScopeNode) mut
			{
				return VT.IsScopeNode(&this, IsScopeNode);
			}
			public HRESULT get_Nodetype(uint16** Nodetype) mut
			{
				return VT.get_Nodetype(&this, Nodetype);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Node *self, uint16** Name) get_Name;
				public new function HRESULT(Node *self, BSTR PropertyName, uint16** PropertyValue) get_Property;
				public new function HRESULT(Node *self, uint16** Bookmark) get_Bookmark;
				public new function HRESULT(Node *self, BOOL* IsScopeNode) IsScopeNode;
				public new function HRESULT(Node *self, uint16** Nodetype) get_Nodetype;
			}
		}
		[CRepr]
		public struct ScopeNamespace : IDispatch
		{
			public const new Guid IID = .(0xebbb48dc, 0x1a3b, 0x4d86, 0xb7, 0x86, 0xc2, 0x1b, 0x28, 0x38, 0x90, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParent(Node* Node, Node** Parent) mut
			{
				return VT.GetParent(&this, Node, Parent);
			}
			public HRESULT GetChild(Node* Node, Node** Child) mut
			{
				return VT.GetChild(&this, Node, Child);
			}
			public HRESULT GetNext(Node* Node, Node** Next) mut
			{
				return VT.GetNext(&this, Node, Next);
			}
			public HRESULT GetRoot(Node** Root) mut
			{
				return VT.GetRoot(&this, Root);
			}
			public HRESULT Expand(Node* Node) mut
			{
				return VT.Expand(&this, Node);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ScopeNamespace *self, Node* Node, Node** Parent) GetParent;
				public new function HRESULT(ScopeNamespace *self, Node* Node, Node** Child) GetChild;
				public new function HRESULT(ScopeNamespace *self, Node* Node, Node** Next) GetNext;
				public new function HRESULT(ScopeNamespace *self, Node** Root) GetRoot;
				public new function HRESULT(ScopeNamespace *self, Node* Node) Expand;
			}
		}
		[CRepr]
		public struct Document : IDispatch
		{
			public const new Guid IID = .(0x225120d6, 0x1e0f, 0x40a3, 0x93, 0xfe, 0x10, 0x79, 0xe6, 0xa8, 0x01, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT SaveAs(BSTR Filename) mut
			{
				return VT.SaveAs(&this, Filename);
			}
			public HRESULT Close(BOOL SaveChanges) mut
			{
				return VT.Close(&this, SaveChanges);
			}
			public HRESULT get_Views(Views** Views) mut
			{
				return VT.get_Views(&this, Views);
			}
			public HRESULT get_SnapIns(SnapIns** SnapIns) mut
			{
				return VT.get_SnapIns(&this, SnapIns);
			}
			public HRESULT get_ActiveView(View** View) mut
			{
				return VT.get_ActiveView(&this, View);
			}
			public HRESULT get_Name(uint16** Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT put_Name(BSTR Name) mut
			{
				return VT.put_Name(&this, Name);
			}
			public HRESULT get_Location(uint16** Location) mut
			{
				return VT.get_Location(&this, Location);
			}
			public HRESULT get_IsSaved(BOOL* IsSaved) mut
			{
				return VT.get_IsSaved(&this, IsSaved);
			}
			public HRESULT get_Mode(_DocumentMode* Mode) mut
			{
				return VT.get_Mode(&this, Mode);
			}
			public HRESULT put_Mode(_DocumentMode Mode) mut
			{
				return VT.put_Mode(&this, Mode);
			}
			public HRESULT get_RootNode(Node** Node) mut
			{
				return VT.get_RootNode(&this, Node);
			}
			public HRESULT get_ScopeNamespace(ScopeNamespace** ScopeNamespace) mut
			{
				return VT.get_ScopeNamespace(&this, ScopeNamespace);
			}
			public HRESULT CreateProperties(Properties** Properties) mut
			{
				return VT.CreateProperties(&this, Properties);
			}
			public HRESULT get_Application(_Application** Application) mut
			{
				return VT.get_Application(&this, Application);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Document *self) Save;
				public new function HRESULT(Document *self, BSTR Filename) SaveAs;
				public new function HRESULT(Document *self, BOOL SaveChanges) Close;
				public new function HRESULT(Document *self, Views** Views) get_Views;
				public new function HRESULT(Document *self, SnapIns** SnapIns) get_SnapIns;
				public new function HRESULT(Document *self, View** View) get_ActiveView;
				public new function HRESULT(Document *self, uint16** Name) get_Name;
				public new function HRESULT(Document *self, BSTR Name) put_Name;
				public new function HRESULT(Document *self, uint16** Location) get_Location;
				public new function HRESULT(Document *self, BOOL* IsSaved) get_IsSaved;
				public new function HRESULT(Document *self, _DocumentMode* Mode) get_Mode;
				public new function HRESULT(Document *self, _DocumentMode Mode) put_Mode;
				public new function HRESULT(Document *self, Node** Node) get_RootNode;
				public new function HRESULT(Document *self, ScopeNamespace** ScopeNamespace) get_ScopeNamespace;
				public new function HRESULT(Document *self, Properties** Properties) CreateProperties;
				public new function HRESULT(Document *self, _Application** Application) get_Application;
			}
		}
		[CRepr]
		public struct SnapIn : IDispatch
		{
			public const new Guid IID = .(0x3be910f6, 0x3459, 0x49c6, 0xa1, 0xbb, 0x41, 0xe6, 0xbe, 0x9d, 0xf3, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(uint16** Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Vendor(uint16** Vendor) mut
			{
				return VT.get_Vendor(&this, Vendor);
			}
			public HRESULT get_Version(uint16** Version) mut
			{
				return VT.get_Version(&this, Version);
			}
			public HRESULT get_Extensions(Extensions** Extensions) mut
			{
				return VT.get_Extensions(&this, Extensions);
			}
			public HRESULT get_SnapinCLSID(uint16** SnapinCLSID) mut
			{
				return VT.get_SnapinCLSID(&this, SnapinCLSID);
			}
			public HRESULT get_Properties(Properties** Properties) mut
			{
				return VT.get_Properties(&this, Properties);
			}
			public HRESULT EnableAllExtensions(BOOL Enable) mut
			{
				return VT.EnableAllExtensions(&this, Enable);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(SnapIn *self, uint16** Name) get_Name;
				public new function HRESULT(SnapIn *self, uint16** Vendor) get_Vendor;
				public new function HRESULT(SnapIn *self, uint16** Version) get_Version;
				public new function HRESULT(SnapIn *self, Extensions** Extensions) get_Extensions;
				public new function HRESULT(SnapIn *self, uint16** SnapinCLSID) get_SnapinCLSID;
				public new function HRESULT(SnapIn *self, Properties** Properties) get_Properties;
				public new function HRESULT(SnapIn *self, BOOL Enable) EnableAllExtensions;
			}
		}
		[CRepr]
		public struct SnapIns : IDispatch
		{
			public const new Guid IID = .(0x2ef3de1d, 0xb12a, 0x49d1, 0x92, 0xc5, 0x0b, 0x00, 0x79, 0x87, 0x68, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT Item(int32 Index, SnapIn** SnapIn) mut
			{
				return VT.Item(&this, Index, SnapIn);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Add(BSTR SnapinNameOrCLSID, VARIANT ParentSnapin, VARIANT Properties, SnapIn** SnapIn) mut
			{
				return VT.Add(&this, SnapinNameOrCLSID, ParentSnapin, Properties, SnapIn);
			}
			public HRESULT Remove(SnapIn* SnapIn) mut
			{
				return VT.Remove(&this, SnapIn);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(SnapIns *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(SnapIns *self, int32 Index, SnapIn** SnapIn) Item;
				public new function HRESULT(SnapIns *self, int32* Count) get_Count;
				public new function HRESULT(SnapIns *self, BSTR SnapinNameOrCLSID, VARIANT ParentSnapin, VARIANT Properties, SnapIn** SnapIn) Add;
				public new function HRESULT(SnapIns *self, SnapIn* SnapIn) Remove;
			}
		}
		[CRepr]
		public struct Extension : IDispatch
		{
			public const new Guid IID = .(0xad4d6ca6, 0x912f, 0x409b, 0xa2, 0x6e, 0x7f, 0xd2, 0x34, 0xae, 0xf5, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(uint16** Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Vendor(uint16** Vendor) mut
			{
				return VT.get_Vendor(&this, Vendor);
			}
			public HRESULT get_Version(uint16** Version) mut
			{
				return VT.get_Version(&this, Version);
			}
			public HRESULT get_Extensions(Extensions** Extensions) mut
			{
				return VT.get_Extensions(&this, Extensions);
			}
			public HRESULT get_SnapinCLSID(uint16** SnapinCLSID) mut
			{
				return VT.get_SnapinCLSID(&this, SnapinCLSID);
			}
			public HRESULT EnableAllExtensions(BOOL Enable) mut
			{
				return VT.EnableAllExtensions(&this, Enable);
			}
			public HRESULT Enable(BOOL Enable) mut
			{
				return VT.Enable(&this, Enable);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Extension *self, uint16** Name) get_Name;
				public new function HRESULT(Extension *self, uint16** Vendor) get_Vendor;
				public new function HRESULT(Extension *self, uint16** Version) get_Version;
				public new function HRESULT(Extension *self, Extensions** Extensions) get_Extensions;
				public new function HRESULT(Extension *self, uint16** SnapinCLSID) get_SnapinCLSID;
				public new function HRESULT(Extension *self, BOOL Enable) EnableAllExtensions;
				public new function HRESULT(Extension *self, BOOL Enable) Enable;
			}
		}
		[CRepr]
		public struct Extensions : IDispatch
		{
			public const new Guid IID = .(0x82dbea43, 0x8ca4, 0x44bc, 0xa2, 0xca, 0xd1, 0x87, 0x41, 0x05, 0x9e, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT Item(int32 Index, Extension** Extension) mut
			{
				return VT.Item(&this, Index, Extension);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Extensions *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(Extensions *self, int32 Index, Extension** Extension) Item;
				public new function HRESULT(Extensions *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct Columns : IDispatch
		{
			public const new Guid IID = .(0x383d4d97, 0xfc44, 0x478b, 0xb1, 0x39, 0x63, 0x23, 0xdc, 0x48, 0x61, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, Column** Column) mut
			{
				return VT.Item(&this, Index, Column);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Columns *self, int32 Index, Column** Column) Item;
				public new function HRESULT(Columns *self, int32* Count) get_Count;
				public new function HRESULT(Columns *self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct Column : IDispatch
		{
			public const new Guid IID = .(0xfd1c5f63, 0x2b16, 0x4d06, 0x9a, 0xb3, 0xf4, 0x53, 0x50, 0xb9, 0x40, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Name(BSTR* Name) mut
			{
				return VT.Name(&this, Name);
			}
			public HRESULT get_Width(int32* Width) mut
			{
				return VT.get_Width(&this, Width);
			}
			public HRESULT put_Width(int32 Width) mut
			{
				return VT.put_Width(&this, Width);
			}
			public HRESULT get_DisplayPosition(int32* DisplayPosition) mut
			{
				return VT.get_DisplayPosition(&this, DisplayPosition);
			}
			public HRESULT put_DisplayPosition(int32 Index) mut
			{
				return VT.put_DisplayPosition(&this, Index);
			}
			public HRESULT get_Hidden(BOOL* Hidden) mut
			{
				return VT.get_Hidden(&this, Hidden);
			}
			public HRESULT put_Hidden(BOOL Hidden) mut
			{
				return VT.put_Hidden(&this, Hidden);
			}
			public HRESULT SetAsSortColumn(_ColumnSortOrder SortOrder) mut
			{
				return VT.SetAsSortColumn(&this, SortOrder);
			}
			public HRESULT IsSortColumn(BOOL* IsSortColumn) mut
			{
				return VT.IsSortColumn(&this, IsSortColumn);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Column *self, BSTR* Name) Name;
				public new function HRESULT(Column *self, int32* Width) get_Width;
				public new function HRESULT(Column *self, int32 Width) put_Width;
				public new function HRESULT(Column *self, int32* DisplayPosition) get_DisplayPosition;
				public new function HRESULT(Column *self, int32 Index) put_DisplayPosition;
				public new function HRESULT(Column *self, BOOL* Hidden) get_Hidden;
				public new function HRESULT(Column *self, BOOL Hidden) put_Hidden;
				public new function HRESULT(Column *self, _ColumnSortOrder SortOrder) SetAsSortColumn;
				public new function HRESULT(Column *self, BOOL* IsSortColumn) IsSortColumn;
			}
		}
		[CRepr]
		public struct Views : IDispatch
		{
			public const new Guid IID = .(0xd6b8c29d, 0xa1ff, 0x4d72, 0xaa, 0xb0, 0xe3, 0x81, 0xe9, 0xb9, 0x33, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, View** View) mut
			{
				return VT.Item(&this, Index, View);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Add(Node* Node, _ViewOptions viewOptions) mut
			{
				return VT.Add(&this, Node, viewOptions);
			}
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Views *self, int32 Index, View** View) Item;
				public new function HRESULT(Views *self, int32* Count) get_Count;
				public new function HRESULT(Views *self, Node* Node, _ViewOptions viewOptions) Add;
				public new function HRESULT(Views *self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct View : IDispatch
		{
			public const new Guid IID = .(0x6efc2da2, 0xb38c, 0x457e, 0x9a, 0xbb, 0xed, 0x2d, 0x18, 0x9b, 0x8c, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActiveScopeNode(Node** Node) mut
			{
				return VT.get_ActiveScopeNode(&this, Node);
			}
			public HRESULT put_ActiveScopeNode(Node* Node) mut
			{
				return VT.put_ActiveScopeNode(&this, Node);
			}
			public HRESULT get_Selection(Nodes** Nodes) mut
			{
				return VT.get_Selection(&this, Nodes);
			}
			public HRESULT get_ListItems(Nodes** Nodes) mut
			{
				return VT.get_ListItems(&this, Nodes);
			}
			public HRESULT SnapinScopeObject(VARIANT ScopeNode, IDispatch** ScopeNodeObject) mut
			{
				return VT.SnapinScopeObject(&this, ScopeNode, ScopeNodeObject);
			}
			public HRESULT SnapinSelectionObject(IDispatch** SelectionObject) mut
			{
				return VT.SnapinSelectionObject(&this, SelectionObject);
			}
			public HRESULT Is(View* View, int16* TheSame) mut
			{
				return VT.Is(&this, View, TheSame);
			}
			public HRESULT get_Document(Document** Document) mut
			{
				return VT.get_Document(&this, Document);
			}
			public HRESULT SelectAll() mut
			{
				return VT.SelectAll(&this);
			}
			public HRESULT Select(Node* Node) mut
			{
				return VT.Select(&this, Node);
			}
			public HRESULT Deselect(Node* Node) mut
			{
				return VT.Deselect(&this, Node);
			}
			public HRESULT IsSelected(Node* Node, BOOL* IsSelected) mut
			{
				return VT.IsSelected(&this, Node, IsSelected);
			}
			public HRESULT DisplayScopeNodePropertySheet(VARIANT ScopeNode) mut
			{
				return VT.DisplayScopeNodePropertySheet(&this, ScopeNode);
			}
			public HRESULT DisplaySelectionPropertySheet() mut
			{
				return VT.DisplaySelectionPropertySheet(&this);
			}
			public HRESULT CopyScopeNode(VARIANT ScopeNode) mut
			{
				return VT.CopyScopeNode(&this, ScopeNode);
			}
			public HRESULT CopySelection() mut
			{
				return VT.CopySelection(&this);
			}
			public HRESULT DeleteScopeNode(VARIANT ScopeNode) mut
			{
				return VT.DeleteScopeNode(&this, ScopeNode);
			}
			public HRESULT DeleteSelection() mut
			{
				return VT.DeleteSelection(&this);
			}
			public HRESULT RenameScopeNode(BSTR NewName, VARIANT ScopeNode) mut
			{
				return VT.RenameScopeNode(&this, NewName, ScopeNode);
			}
			public HRESULT RenameSelectedItem(BSTR NewName) mut
			{
				return VT.RenameSelectedItem(&this, NewName);
			}
			public HRESULT get_ScopeNodeContextMenu(VARIANT ScopeNode, ContextMenu** ContextMenu) mut
			{
				return VT.get_ScopeNodeContextMenu(&this, ScopeNode, ContextMenu);
			}
			public HRESULT get_SelectionContextMenu(ContextMenu** ContextMenu) mut
			{
				return VT.get_SelectionContextMenu(&this, ContextMenu);
			}
			public HRESULT RefreshScopeNode(VARIANT ScopeNode) mut
			{
				return VT.RefreshScopeNode(&this, ScopeNode);
			}
			public HRESULT RefreshSelection() mut
			{
				return VT.RefreshSelection(&this);
			}
			public HRESULT ExecuteSelectionMenuItem(BSTR MenuItemPath) mut
			{
				return VT.ExecuteSelectionMenuItem(&this, MenuItemPath);
			}
			public HRESULT ExecuteScopeNodeMenuItem(BSTR MenuItemPath, VARIANT ScopeNode) mut
			{
				return VT.ExecuteScopeNodeMenuItem(&this, MenuItemPath, ScopeNode);
			}
			public HRESULT ExecuteShellCommand(BSTR Command, BSTR Directory, BSTR Parameters, BSTR WindowState) mut
			{
				return VT.ExecuteShellCommand(&this, Command, Directory, Parameters, WindowState);
			}
			public HRESULT get_Frame(Frame** Frame) mut
			{
				return VT.get_Frame(&this, Frame);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT get_ScopeTreeVisible(BOOL* Visible) mut
			{
				return VT.get_ScopeTreeVisible(&this, Visible);
			}
			public HRESULT put_ScopeTreeVisible(BOOL Visible) mut
			{
				return VT.put_ScopeTreeVisible(&this, Visible);
			}
			public HRESULT Back() mut
			{
				return VT.Back(&this);
			}
			public HRESULT Forward() mut
			{
				return VT.Forward(&this);
			}
			public HRESULT put_StatusBarText(BSTR StatusBarText) mut
			{
				return VT.put_StatusBarText(&this, StatusBarText);
			}
			public HRESULT get_Memento(uint16** Memento) mut
			{
				return VT.get_Memento(&this, Memento);
			}
			public HRESULT ViewMemento(BSTR Memento) mut
			{
				return VT.ViewMemento(&this, Memento);
			}
			public HRESULT get_Columns(Columns** Columns) mut
			{
				return VT.get_Columns(&this, Columns);
			}
			public HRESULT get_CellContents(Node* Node, int32 Column, uint16** CellContents) mut
			{
				return VT.get_CellContents(&this, Node, Column, CellContents);
			}
			public HRESULT ExportList(BSTR File, _ExportListOptions exportoptions) mut
			{
				return VT.ExportList(&this, File, exportoptions);
			}
			public HRESULT get_ListViewMode(_ListViewMode* Mode) mut
			{
				return VT.get_ListViewMode(&this, Mode);
			}
			public HRESULT put_ListViewMode(_ListViewMode mode) mut
			{
				return VT.put_ListViewMode(&this, mode);
			}
			public HRESULT get_ControlObject(IDispatch** Control) mut
			{
				return VT.get_ControlObject(&this, Control);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(View *self, Node** Node) get_ActiveScopeNode;
				public new function HRESULT(View *self, Node* Node) put_ActiveScopeNode;
				public new function HRESULT(View *self, Nodes** Nodes) get_Selection;
				public new function HRESULT(View *self, Nodes** Nodes) get_ListItems;
				public new function HRESULT(View *self, VARIANT ScopeNode, IDispatch** ScopeNodeObject) SnapinScopeObject;
				public new function HRESULT(View *self, IDispatch** SelectionObject) SnapinSelectionObject;
				public new function HRESULT(View *self, View* View, int16* TheSame) Is;
				public new function HRESULT(View *self, Document** Document) get_Document;
				public new function HRESULT(View *self) SelectAll;
				public new function HRESULT(View *self, Node* Node) Select;
				public new function HRESULT(View *self, Node* Node) Deselect;
				public new function HRESULT(View *self, Node* Node, BOOL* IsSelected) IsSelected;
				public new function HRESULT(View *self, VARIANT ScopeNode) DisplayScopeNodePropertySheet;
				public new function HRESULT(View *self) DisplaySelectionPropertySheet;
				public new function HRESULT(View *self, VARIANT ScopeNode) CopyScopeNode;
				public new function HRESULT(View *self) CopySelection;
				public new function HRESULT(View *self, VARIANT ScopeNode) DeleteScopeNode;
				public new function HRESULT(View *self) DeleteSelection;
				public new function HRESULT(View *self, BSTR NewName, VARIANT ScopeNode) RenameScopeNode;
				public new function HRESULT(View *self, BSTR NewName) RenameSelectedItem;
				public new function HRESULT(View *self, VARIANT ScopeNode, ContextMenu** ContextMenu) get_ScopeNodeContextMenu;
				public new function HRESULT(View *self, ContextMenu** ContextMenu) get_SelectionContextMenu;
				public new function HRESULT(View *self, VARIANT ScopeNode) RefreshScopeNode;
				public new function HRESULT(View *self) RefreshSelection;
				public new function HRESULT(View *self, BSTR MenuItemPath) ExecuteSelectionMenuItem;
				public new function HRESULT(View *self, BSTR MenuItemPath, VARIANT ScopeNode) ExecuteScopeNodeMenuItem;
				public new function HRESULT(View *self, BSTR Command, BSTR Directory, BSTR Parameters, BSTR WindowState) ExecuteShellCommand;
				public new function HRESULT(View *self, Frame** Frame) get_Frame;
				public new function HRESULT(View *self) Close;
				public new function HRESULT(View *self, BOOL* Visible) get_ScopeTreeVisible;
				public new function HRESULT(View *self, BOOL Visible) put_ScopeTreeVisible;
				public new function HRESULT(View *self) Back;
				public new function HRESULT(View *self) Forward;
				public new function HRESULT(View *self, BSTR StatusBarText) put_StatusBarText;
				public new function HRESULT(View *self, uint16** Memento) get_Memento;
				public new function HRESULT(View *self, BSTR Memento) ViewMemento;
				public new function HRESULT(View *self, Columns** Columns) get_Columns;
				public new function HRESULT(View *self, Node* Node, int32 Column, uint16** CellContents) get_CellContents;
				public new function HRESULT(View *self, BSTR File, _ExportListOptions exportoptions) ExportList;
				public new function HRESULT(View *self, _ListViewMode* Mode) get_ListViewMode;
				public new function HRESULT(View *self, _ListViewMode mode) put_ListViewMode;
				public new function HRESULT(View *self, IDispatch** Control) get_ControlObject;
			}
		}
		[CRepr]
		public struct Nodes : IDispatch
		{
			public const new Guid IID = .(0x313b01df, 0xb22f, 0x4d42, 0xb1, 0xb8, 0x48, 0x3c, 0xdc, 0xf5, 0x1d, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT Item(int32 Index, Node** Node) mut
			{
				return VT.Item(&this, Index, Node);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Nodes *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(Nodes *self, int32 Index, Node** Node) Item;
				public new function HRESULT(Nodes *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct ContextMenu : IDispatch
		{
			public const new Guid IID = .(0xdab39ce0, 0x25e6, 0x4e07, 0x83, 0x62, 0xba, 0x9c, 0x95, 0x70, 0x65, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(VARIANT IndexOrPath, MenuItem** MenuItem) mut
			{
				return VT.get_Item(&this, IndexOrPath, MenuItem);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ContextMenu *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(ContextMenu *self, VARIANT IndexOrPath, MenuItem** MenuItem) get_Item;
				public new function HRESULT(ContextMenu *self, int32* Count) get_Count;
			}
		}
		[CRepr]
		public struct MenuItem : IDispatch
		{
			public const new Guid IID = .(0x0178fad1, 0xb361, 0x4b27, 0x96, 0xad, 0x67, 0xc5, 0x7e, 0xbf, 0x2e, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(uint16** DisplayName) mut
			{
				return VT.get_DisplayName(&this, DisplayName);
			}
			public HRESULT get_LanguageIndependentName(uint16** LanguageIndependentName) mut
			{
				return VT.get_LanguageIndependentName(&this, LanguageIndependentName);
			}
			public HRESULT get_Path(uint16** Path) mut
			{
				return VT.get_Path(&this, Path);
			}
			public HRESULT get_LanguageIndependentPath(uint16** LanguageIndependentPath) mut
			{
				return VT.get_LanguageIndependentPath(&this, LanguageIndependentPath);
			}
			public HRESULT Execute() mut
			{
				return VT.Execute(&this);
			}
			public HRESULT get_Enabled(BOOL* Enabled) mut
			{
				return VT.get_Enabled(&this, Enabled);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(MenuItem *self, uint16** DisplayName) get_DisplayName;
				public new function HRESULT(MenuItem *self, uint16** LanguageIndependentName) get_LanguageIndependentName;
				public new function HRESULT(MenuItem *self, uint16** Path) get_Path;
				public new function HRESULT(MenuItem *self, uint16** LanguageIndependentPath) get_LanguageIndependentPath;
				public new function HRESULT(MenuItem *self) Execute;
				public new function HRESULT(MenuItem *self, BOOL* Enabled) get_Enabled;
			}
		}
		[CRepr]
		public struct Properties : IDispatch
		{
			public const new Guid IID = .(0x2886abc2, 0xa425, 0x42b2, 0x91, 0xc6, 0xe2, 0x5c, 0x0e, 0x04, 0x58, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT Item(BSTR Name, Property** Property) mut
			{
				return VT.Item(&this, Name, Property);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Remove(BSTR Name) mut
			{
				return VT.Remove(&this, Name);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Properties *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(Properties *self, BSTR Name, Property** Property) Item;
				public new function HRESULT(Properties *self, int32* Count) get_Count;
				public new function HRESULT(Properties *self, BSTR Name) Remove;
			}
		}
		[CRepr]
		public struct Property : IDispatch
		{
			public const new Guid IID = .(0x4600c3a5, 0xe301, 0x41d8, 0xb6, 0xd0, 0xef, 0x2e, 0x42, 0x12, 0xe0, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(VARIANT* Value) mut
			{
				return VT.get_Value(&this, Value);
			}
			public HRESULT put_Value(VARIANT Value) mut
			{
				return VT.put_Value(&this, Value);
			}
			public HRESULT get_Name(uint16** Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Property *self, VARIANT* Value) get_Value;
				public new function HRESULT(Property *self, VARIANT Value) put_Value;
				public new function HRESULT(Property *self, uint16** Name) get_Name;
			}
		}
		[CRepr]
		public struct IComponentData : IUnknown
		{
			public const new Guid IID = .(0x955ab28a, 0x5218, 0x11d0, 0xa9, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IUnknown* pUnknown) mut
			{
				return VT.Initialize(&this, pUnknown);
			}
			public HRESULT CreateComponent(IComponentAlt** ppComponent) mut
			{
				return VT.CreateComponent(&this, ppComponent);
			}
			public HRESULT Notify(IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) mut
			{
				return VT.Notify(&this, lpDataObject, event, arg, param3);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT QueryDataObject(int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) mut
			{
				return VT.QueryDataObject(&this, cookie, type, ppDataObject);
			}
			public HRESULT GetDisplayInfo(SCOPEDATAITEM* pScopeDataItem) mut
			{
				return VT.GetDisplayInfo(&this, pScopeDataItem);
			}
			public HRESULT CompareObjects(IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) mut
			{
				return VT.CompareObjects(&this, lpDataObjectA, lpDataObjectB);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IComponentData *self, IUnknown* pUnknown) Initialize;
				public new function HRESULT(IComponentData *self, IComponentAlt** ppComponent) CreateComponent;
				public new function HRESULT(IComponentData *self, IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public new function HRESULT(IComponentData *self) Destroy;
				public new function HRESULT(IComponentData *self, int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) QueryDataObject;
				public new function HRESULT(IComponentData *self, SCOPEDATAITEM* pScopeDataItem) GetDisplayInfo;
				public new function HRESULT(IComponentData *self, IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IComponentAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb2, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IConsole* lpConsole) mut
			{
				return VT.Initialize(&this, lpConsole);
			}
			public HRESULT Notify(IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) mut
			{
				return VT.Notify(&this, lpDataObject, event, arg, param3);
			}
			public HRESULT Destroy(int cookie) mut
			{
				return VT.Destroy(&this, cookie);
			}
			public HRESULT QueryDataObject(int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) mut
			{
				return VT.QueryDataObject(&this, cookie, type, ppDataObject);
			}
			public HRESULT GetResultViewType(int cookie, PWSTR* ppViewType, int32* pViewOptions) mut
			{
				return VT.GetResultViewType(&this, cookie, ppViewType, pViewOptions);
			}
			public HRESULT GetDisplayInfo(RESULTDATAITEM* pResultDataItem) mut
			{
				return VT.GetDisplayInfo(&this, pResultDataItem);
			}
			public HRESULT CompareObjects(IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) mut
			{
				return VT.CompareObjects(&this, lpDataObjectA, lpDataObjectB);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IComponentAlt *self, IConsole* lpConsole) Initialize;
				public new function HRESULT(IComponentAlt *self, IDataObject* lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public new function HRESULT(IComponentAlt *self, int cookie) Destroy;
				public new function HRESULT(IComponentAlt *self, int cookie, DATA_OBJECT_TYPES type, IDataObject** ppDataObject) QueryDataObject;
				public new function HRESULT(IComponentAlt *self, int cookie, PWSTR* ppViewType, int32* pViewOptions) GetResultViewType;
				public new function HRESULT(IComponentAlt *self, RESULTDATAITEM* pResultDataItem) GetDisplayInfo;
				public new function HRESULT(IComponentAlt *self, IDataObject* lpDataObjectA, IDataObject* lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IResultDataCompare : IUnknown
		{
			public const new Guid IID = .(0xe8315a52, 0x7a1a, 0x11d0, 0xa2, 0xd2, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compare(LPARAM lUserParam, int cookieA, int cookieB, int32* pnResult) mut
			{
				return VT.Compare(&this, lUserParam, cookieA, cookieB, pnResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResultDataCompare *self, LPARAM lUserParam, int cookieA, int cookieB, int32* pnResult) Compare;
			}
		}
		[CRepr]
		public struct IResultOwnerData : IUnknown
		{
			public const new Guid IID = .(0x9cb396d8, 0xea83, 0x11d0, 0xae, 0xf1, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindItem(RESULTFINDINFO* pFindInfo, int32* pnFoundIndex) mut
			{
				return VT.FindItem(&this, pFindInfo, pnFoundIndex);
			}
			public HRESULT CacheHint(int32 nStartIndex, int32 nEndIndex) mut
			{
				return VT.CacheHint(&this, nStartIndex, nEndIndex);
			}
			public HRESULT SortItems(int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) mut
			{
				return VT.SortItems(&this, nColumn, dwSortOptions, lUserParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResultOwnerData *self, RESULTFINDINFO* pFindInfo, int32* pnFoundIndex) FindItem;
				public new function HRESULT(IResultOwnerData *self, int32 nStartIndex, int32 nEndIndex) CacheHint;
				public new function HRESULT(IResultOwnerData *self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) SortItems;
			}
		}
		[CRepr]
		public struct IConsole : IUnknown
		{
			public const new Guid IID = .(0x43136eb1, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHeader(IHeaderCtrl* pHeader) mut
			{
				return VT.SetHeader(&this, pHeader);
			}
			public HRESULT SetToolbar(IToolbar* pToolbar) mut
			{
				return VT.SetToolbar(&this, pToolbar);
			}
			public HRESULT QueryResultView(IUnknown** pUnknown) mut
			{
				return VT.QueryResultView(&this, pUnknown);
			}
			public HRESULT QueryScopeImageList(IImageListAlt** ppImageList) mut
			{
				return VT.QueryScopeImageList(&this, ppImageList);
			}
			public HRESULT QueryResultImageList(IImageListAlt** ppImageList) mut
			{
				return VT.QueryResultImageList(&this, ppImageList);
			}
			public HRESULT UpdateAllViews(IDataObject* lpDataObject, LPARAM data, int hint) mut
			{
				return VT.UpdateAllViews(&this, lpDataObject, data, hint);
			}
			public HRESULT MessageBox(PWSTR lpszText, PWSTR lpszTitle, uint32 fuStyle, int32* piRetval) mut
			{
				return VT.MessageBox(&this, lpszText, lpszTitle, fuStyle, piRetval);
			}
			public HRESULT QueryConsoleVerb(IConsoleVerb** ppConsoleVerb) mut
			{
				return VT.QueryConsoleVerb(&this, ppConsoleVerb);
			}
			public HRESULT SelectScopeItem(int hScopeItem) mut
			{
				return VT.SelectScopeItem(&this, hScopeItem);
			}
			public HRESULT GetMainWindow(HWND* phwnd) mut
			{
				return VT.GetMainWindow(&this, phwnd);
			}
			public HRESULT NewWindow(int hScopeItem, uint32 lOptions) mut
			{
				return VT.NewWindow(&this, hScopeItem, lOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConsole *self, IHeaderCtrl* pHeader) SetHeader;
				public new function HRESULT(IConsole *self, IToolbar* pToolbar) SetToolbar;
				public new function HRESULT(IConsole *self, IUnknown** pUnknown) QueryResultView;
				public new function HRESULT(IConsole *self, IImageListAlt** ppImageList) QueryScopeImageList;
				public new function HRESULT(IConsole *self, IImageListAlt** ppImageList) QueryResultImageList;
				public new function HRESULT(IConsole *self, IDataObject* lpDataObject, LPARAM data, int hint) UpdateAllViews;
				public new function HRESULT(IConsole *self, PWSTR lpszText, PWSTR lpszTitle, uint32 fuStyle, int32* piRetval) MessageBox;
				public new function HRESULT(IConsole *self, IConsoleVerb** ppConsoleVerb) QueryConsoleVerb;
				public new function HRESULT(IConsole *self, int hScopeItem) SelectScopeItem;
				public new function HRESULT(IConsole *self, HWND* phwnd) GetMainWindow;
				public new function HRESULT(IConsole *self, int hScopeItem, uint32 lOptions) NewWindow;
			}
		}
		[CRepr]
		public struct IHeaderCtrl : IUnknown
		{
			public const new Guid IID = .(0x43136eb3, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertColumn(int32 nCol, PWSTR title, int32 nFormat, int32 nWidth) mut
			{
				return VT.InsertColumn(&this, nCol, title, nFormat, nWidth);
			}
			public HRESULT DeleteColumn(int32 nCol) mut
			{
				return VT.DeleteColumn(&this, nCol);
			}
			public HRESULT SetColumnText(int32 nCol, PWSTR title) mut
			{
				return VT.SetColumnText(&this, nCol, title);
			}
			public HRESULT GetColumnText(int32 nCol, PWSTR* pText) mut
			{
				return VT.GetColumnText(&this, nCol, pText);
			}
			public HRESULT SetColumnWidth(int32 nCol, int32 nWidth) mut
			{
				return VT.SetColumnWidth(&this, nCol, nWidth);
			}
			public HRESULT GetColumnWidth(int32 nCol, int32* pWidth) mut
			{
				return VT.GetColumnWidth(&this, nCol, pWidth);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR title, int32 nFormat, int32 nWidth) InsertColumn;
				public new function HRESULT(IHeaderCtrl *self, int32 nCol) DeleteColumn;
				public new function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR title) SetColumnText;
				public new function HRESULT(IHeaderCtrl *self, int32 nCol, PWSTR* pText) GetColumnText;
				public new function HRESULT(IHeaderCtrl *self, int32 nCol, int32 nWidth) SetColumnWidth;
				public new function HRESULT(IHeaderCtrl *self, int32 nCol, int32* pWidth) GetColumnWidth;
			}
		}
		[CRepr]
		public struct IContextMenuCallback : IUnknown
		{
			public const new Guid IID = .(0x43136eb7, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddItem(CONTEXTMENUITEM* pItem) mut
			{
				return VT.AddItem(&this, pItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextMenuCallback *self, CONTEXTMENUITEM* pItem) AddItem;
			}
		}
		[CRepr]
		public struct IContextMenuProvider : IContextMenuCallback
		{
			public const new Guid IID = .(0x43136eb6, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EmptyMenuList() mut
			{
				return VT.EmptyMenuList(&this);
			}
			public HRESULT AddPrimaryExtensionItems(IUnknown* piExtension, IDataObject* piDataObject) mut
			{
				return VT.AddPrimaryExtensionItems(&this, piExtension, piDataObject);
			}
			public HRESULT AddThirdPartyExtensionItems(IDataObject* piDataObject) mut
			{
				return VT.AddThirdPartyExtensionItems(&this, piDataObject);
			}
			public HRESULT ShowContextMenu(HWND hwndParent, int32 xPos, int32 yPos, int32* plSelected) mut
			{
				return VT.ShowContextMenu(&this, hwndParent, xPos, yPos, plSelected);
			}
			[CRepr]
			public struct VTable : IContextMenuCallback.VTable
			{
				public new function HRESULT(IContextMenuProvider *self) EmptyMenuList;
				public new function HRESULT(IContextMenuProvider *self, IUnknown* piExtension, IDataObject* piDataObject) AddPrimaryExtensionItems;
				public new function HRESULT(IContextMenuProvider *self, IDataObject* piDataObject) AddThirdPartyExtensionItems;
				public new function HRESULT(IContextMenuProvider *self, HWND hwndParent, int32 xPos, int32 yPos, int32* plSelected) ShowContextMenu;
			}
		}
		[CRepr]
		public struct IExtendContextMenu : IUnknown
		{
			public const new Guid IID = .(0x4f3b7a4f, 0xcfac, 0x11cf, 0xb8, 0xe3, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMenuItems(IDataObject* piDataObject, IContextMenuCallback* piCallback, int32* pInsertionAllowed) mut
			{
				return VT.AddMenuItems(&this, piDataObject, piCallback, pInsertionAllowed);
			}
			public HRESULT Command(int32 lCommandID, IDataObject* piDataObject) mut
			{
				return VT.Command(&this, lCommandID, piDataObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtendContextMenu *self, IDataObject* piDataObject, IContextMenuCallback* piCallback, int32* pInsertionAllowed) AddMenuItems;
				public new function HRESULT(IExtendContextMenu *self, int32 lCommandID, IDataObject* piDataObject) Command;
			}
		}
		[CRepr]
		public struct IImageListAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb8, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ImageListSetIcon(int* pIcon, int32 nLoc) mut
			{
				return VT.ImageListSetIcon(&this, pIcon, nLoc);
			}
			public HRESULT ImageListSetStrip(int* pBMapSm, int* pBMapLg, int32 nStartLoc, uint32 cMask) mut
			{
				return VT.ImageListSetStrip(&this, pBMapSm, pBMapLg, nStartLoc, cMask);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImageListAlt *self, int* pIcon, int32 nLoc) ImageListSetIcon;
				public new function HRESULT(IImageListAlt *self, int* pBMapSm, int* pBMapLg, int32 nStartLoc, uint32 cMask) ImageListSetStrip;
			}
		}
		[CRepr]
		public struct IResultData : IUnknown
		{
			public const new Guid IID = .(0x31da5fa0, 0xe0eb, 0x11cf, 0x9f, 0x21, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertItem(RESULTDATAITEM* item) mut
			{
				return VT.InsertItem(&this, item);
			}
			public HRESULT DeleteItem(int itemID, int32 nCol) mut
			{
				return VT.DeleteItem(&this, itemID, nCol);
			}
			public HRESULT FindItemByLParam(LPARAM lParam, int* pItemID) mut
			{
				return VT.FindItemByLParam(&this, lParam, pItemID);
			}
			public HRESULT DeleteAllRsltItems() mut
			{
				return VT.DeleteAllRsltItems(&this);
			}
			public HRESULT SetItem(RESULTDATAITEM* item) mut
			{
				return VT.SetItem(&this, item);
			}
			public HRESULT GetItem(RESULTDATAITEM* item) mut
			{
				return VT.GetItem(&this, item);
			}
			public HRESULT GetNextItem(RESULTDATAITEM* item) mut
			{
				return VT.GetNextItem(&this, item);
			}
			public HRESULT ModifyItemState(int32 nIndex, int itemID, uint32 uAdd, uint32 uRemove) mut
			{
				return VT.ModifyItemState(&this, nIndex, itemID, uAdd, uRemove);
			}
			public HRESULT ModifyViewStyle(MMC_RESULT_VIEW_STYLE add, MMC_RESULT_VIEW_STYLE remove) mut
			{
				return VT.ModifyViewStyle(&this, add, remove);
			}
			public HRESULT SetViewMode(int32 lViewMode) mut
			{
				return VT.SetViewMode(&this, lViewMode);
			}
			public HRESULT GetViewMode(int32* lViewMode) mut
			{
				return VT.GetViewMode(&this, lViewMode);
			}
			public HRESULT UpdateItem(int itemID) mut
			{
				return VT.UpdateItem(&this, itemID);
			}
			public HRESULT Sort(int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) mut
			{
				return VT.Sort(&this, nColumn, dwSortOptions, lUserParam);
			}
			public HRESULT SetDescBarText(PWSTR DescText) mut
			{
				return VT.SetDescBarText(&this, DescText);
			}
			public HRESULT SetItemCount(int32 nItemCount, uint32 dwOptions) mut
			{
				return VT.SetItemCount(&this, nItemCount, dwOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResultData *self, RESULTDATAITEM* item) InsertItem;
				public new function HRESULT(IResultData *self, int itemID, int32 nCol) DeleteItem;
				public new function HRESULT(IResultData *self, LPARAM lParam, int* pItemID) FindItemByLParam;
				public new function HRESULT(IResultData *self) DeleteAllRsltItems;
				public new function HRESULT(IResultData *self, RESULTDATAITEM* item) SetItem;
				public new function HRESULT(IResultData *self, RESULTDATAITEM* item) GetItem;
				public new function HRESULT(IResultData *self, RESULTDATAITEM* item) GetNextItem;
				public new function HRESULT(IResultData *self, int32 nIndex, int itemID, uint32 uAdd, uint32 uRemove) ModifyItemState;
				public new function HRESULT(IResultData *self, MMC_RESULT_VIEW_STYLE add, MMC_RESULT_VIEW_STYLE remove) ModifyViewStyle;
				public new function HRESULT(IResultData *self, int32 lViewMode) SetViewMode;
				public new function HRESULT(IResultData *self, int32* lViewMode) GetViewMode;
				public new function HRESULT(IResultData *self, int itemID) UpdateItem;
				public new function HRESULT(IResultData *self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) Sort;
				public new function HRESULT(IResultData *self, PWSTR DescText) SetDescBarText;
				public new function HRESULT(IResultData *self, int32 nItemCount, uint32 dwOptions) SetItemCount;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace : IUnknown
		{
			public const new Guid IID = .(0xbedeb620, 0xf24d, 0x11cf, 0x8a, 0xfc, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertItem(SCOPEDATAITEM* item) mut
			{
				return VT.InsertItem(&this, item);
			}
			public HRESULT DeleteItem(int hItem, int32 fDeleteThis) mut
			{
				return VT.DeleteItem(&this, hItem, fDeleteThis);
			}
			public HRESULT SetItem(SCOPEDATAITEM* item) mut
			{
				return VT.SetItem(&this, item);
			}
			public HRESULT GetItem(SCOPEDATAITEM* item) mut
			{
				return VT.GetItem(&this, item);
			}
			public HRESULT GetChildItem(int item, int* pItemChild, int* pCookie) mut
			{
				return VT.GetChildItem(&this, item, pItemChild, pCookie);
			}
			public HRESULT GetNextItem(int item, int* pItemNext, int* pCookie) mut
			{
				return VT.GetNextItem(&this, item, pItemNext, pCookie);
			}
			public HRESULT GetParentItem(int item, int* pItemParent, int* pCookie) mut
			{
				return VT.GetParentItem(&this, item, pItemParent, pCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) InsertItem;
				public new function HRESULT(IConsoleNameSpace *self, int hItem, int32 fDeleteThis) DeleteItem;
				public new function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) SetItem;
				public new function HRESULT(IConsoleNameSpace *self, SCOPEDATAITEM* item) GetItem;
				public new function HRESULT(IConsoleNameSpace *self, int item, int* pItemChild, int* pCookie) GetChildItem;
				public new function HRESULT(IConsoleNameSpace *self, int item, int* pItemNext, int* pCookie) GetNextItem;
				public new function HRESULT(IConsoleNameSpace *self, int item, int* pItemParent, int* pCookie) GetParentItem;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace2 : IConsoleNameSpace
		{
			public const new Guid IID = .(0x255f18cc, 0x65db, 0x11d1, 0xa7, 0xdc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand(int hItem) mut
			{
				return VT.Expand(&this, hItem);
			}
			public HRESULT AddExtension(int hItem, Guid* lpClsid) mut
			{
				return VT.AddExtension(&this, hItem, lpClsid);
			}
			[CRepr]
			public struct VTable : IConsoleNameSpace.VTable
			{
				public new function HRESULT(IConsoleNameSpace2 *self, int hItem) Expand;
				public new function HRESULT(IConsoleNameSpace2 *self, int hItem, Guid* lpClsid) AddExtension;
			}
		}
		[CRepr]
		public struct IPropertySheetCallback : IUnknown
		{
			public const new Guid IID = .(0x85de64dd, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPage(HPROPSHEETPAGE hPage) mut
			{
				return VT.AddPage(&this, hPage);
			}
			public HRESULT RemovePage(HPROPSHEETPAGE hPage) mut
			{
				return VT.RemovePage(&this, hPage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertySheetCallback *self, HPROPSHEETPAGE hPage) AddPage;
				public new function HRESULT(IPropertySheetCallback *self, HPROPSHEETPAGE hPage) RemovePage;
			}
		}
		[CRepr]
		public struct IPropertySheetProvider : IUnknown
		{
			public const new Guid IID = .(0x85de64de, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertySheet(PWSTR title, uint8 type, int cookie, IDataObject* pIDataObjectm, uint32 dwOptions) mut
			{
				return VT.CreatePropertySheet(&this, title, type, cookie, pIDataObjectm, dwOptions);
			}
			public HRESULT FindPropertySheet(int hItem, IComponentAlt* lpComponent, IDataObject* lpDataObject) mut
			{
				return VT.FindPropertySheet(&this, hItem, lpComponent, lpDataObject);
			}
			public HRESULT AddPrimaryPages(IUnknown* lpUnknown, BOOL bCreateHandle, HWND hNotifyWindow, BOOL bScopePane) mut
			{
				return VT.AddPrimaryPages(&this, lpUnknown, bCreateHandle, hNotifyWindow, bScopePane);
			}
			public HRESULT AddExtensionPages() mut
			{
				return VT.AddExtensionPages(&this);
			}
			public HRESULT Show(int window, int32 page) mut
			{
				return VT.Show(&this, window, page);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertySheetProvider *self, PWSTR title, uint8 type, int cookie, IDataObject* pIDataObjectm, uint32 dwOptions) CreatePropertySheet;
				public new function HRESULT(IPropertySheetProvider *self, int hItem, IComponentAlt* lpComponent, IDataObject* lpDataObject) FindPropertySheet;
				public new function HRESULT(IPropertySheetProvider *self, IUnknown* lpUnknown, BOOL bCreateHandle, HWND hNotifyWindow, BOOL bScopePane) AddPrimaryPages;
				public new function HRESULT(IPropertySheetProvider *self) AddExtensionPages;
				public new function HRESULT(IPropertySheetProvider *self, int window, int32 page) Show;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet : IUnknown
		{
			public const new Guid IID = .(0x85de64dc, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertyPages(IPropertySheetCallback* lpProvider, int handle, IDataObject* lpIDataObject) mut
			{
				return VT.CreatePropertyPages(&this, lpProvider, handle, lpIDataObject);
			}
			public HRESULT QueryPagesFor(IDataObject* lpDataObject) mut
			{
				return VT.QueryPagesFor(&this, lpDataObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtendPropertySheet *self, IPropertySheetCallback* lpProvider, int handle, IDataObject* lpIDataObject) CreatePropertyPages;
				public new function HRESULT(IExtendPropertySheet *self, IDataObject* lpDataObject) QueryPagesFor;
			}
		}
		[CRepr]
		public struct IControlbar : IUnknown
		{
			public const new Guid IID = .(0x69fb811e, 0x6c1c, 0x11d0, 0xa2, 0xcb, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(MMC_CONTROL_TYPE nType, IExtendControlbar* pExtendControlbar, IUnknown** ppUnknown) mut
			{
				return VT.Create(&this, nType, pExtendControlbar, ppUnknown);
			}
			public HRESULT Attach(MMC_CONTROL_TYPE nType, IUnknown* lpUnknown) mut
			{
				return VT.Attach(&this, nType, lpUnknown);
			}
			public HRESULT Detach(IUnknown* lpUnknown) mut
			{
				return VT.Detach(&this, lpUnknown);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IControlbar *self, MMC_CONTROL_TYPE nType, IExtendControlbar* pExtendControlbar, IUnknown** ppUnknown) Create;
				public new function HRESULT(IControlbar *self, MMC_CONTROL_TYPE nType, IUnknown* lpUnknown) Attach;
				public new function HRESULT(IControlbar *self, IUnknown* lpUnknown) Detach;
			}
		}
		[CRepr]
		public struct IExtendControlbar : IUnknown
		{
			public const new Guid IID = .(0x49506520, 0x6f40, 0x11d0, 0xa9, 0x8b, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetControlbar(IControlbar* pControlbar) mut
			{
				return VT.SetControlbar(&this, pControlbar);
			}
			public HRESULT ControlbarNotify(MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param2) mut
			{
				return VT.ControlbarNotify(&this, event, arg, param2);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtendControlbar *self, IControlbar* pControlbar) SetControlbar;
				public new function HRESULT(IExtendControlbar *self, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param2) ControlbarNotify;
			}
		}
		[CRepr]
		public struct IToolbar : IUnknown
		{
			public const new Guid IID = .(0x43136eb9, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBitmap(int32 nImages, HBITMAP hbmp, int32 cxSize, int32 cySize, uint32 crMask) mut
			{
				return VT.AddBitmap(&this, nImages, hbmp, cxSize, cySize, crMask);
			}
			public HRESULT AddButtons(int32 nButtons, MMCBUTTON* lpButtons) mut
			{
				return VT.AddButtons(&this, nButtons, lpButtons);
			}
			public HRESULT InsertButton(int32 nIndex, MMCBUTTON* lpButton) mut
			{
				return VT.InsertButton(&this, nIndex, lpButton);
			}
			public HRESULT DeleteButton(int32 nIndex) mut
			{
				return VT.DeleteButton(&this, nIndex);
			}
			public HRESULT GetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, BOOL* pState) mut
			{
				return VT.GetButtonState(&this, idCommand, nState, pState);
			}
			public HRESULT SetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) mut
			{
				return VT.SetButtonState(&this, idCommand, nState, bState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IToolbar *self, int32 nImages, HBITMAP hbmp, int32 cxSize, int32 cySize, uint32 crMask) AddBitmap;
				public new function HRESULT(IToolbar *self, int32 nButtons, MMCBUTTON* lpButtons) AddButtons;
				public new function HRESULT(IToolbar *self, int32 nIndex, MMCBUTTON* lpButton) InsertButton;
				public new function HRESULT(IToolbar *self, int32 nIndex) DeleteButton;
				public new function HRESULT(IToolbar *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL* pState) GetButtonState;
				public new function HRESULT(IToolbar *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct IConsoleVerb : IUnknown
		{
			public const new Guid IID = .(0xe49f7a60, 0x74af, 0x11d0, 0xa2, 0x86, 0x00, 0xc0, 0x4f, 0xd8, 0xfe, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVerbState(MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL* pState) mut
			{
				return VT.GetVerbState(&this, eCmdID, nState, pState);
			}
			public HRESULT SetVerbState(MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL bState) mut
			{
				return VT.SetVerbState(&this, eCmdID, nState, bState);
			}
			public HRESULT SetDefaultVerb(MMC_CONSOLE_VERB eCmdID) mut
			{
				return VT.SetDefaultVerb(&this, eCmdID);
			}
			public HRESULT GetDefaultVerb(MMC_CONSOLE_VERB* peCmdID) mut
			{
				return VT.GetDefaultVerb(&this, peCmdID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL* pState) GetVerbState;
				public new function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL bState) SetVerbState;
				public new function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB eCmdID) SetDefaultVerb;
				public new function HRESULT(IConsoleVerb *self, MMC_CONSOLE_VERB* peCmdID) GetDefaultVerb;
			}
		}
		[CRepr]
		public struct ISnapinAbout : IUnknown
		{
			public const new Guid IID = .(0x1245208c, 0xa151, 0x11d0, 0xa7, 0xd7, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSnapinDescription(PWSTR* lpDescription) mut
			{
				return VT.GetSnapinDescription(&this, lpDescription);
			}
			public HRESULT GetProvider(PWSTR* lpName) mut
			{
				return VT.GetProvider(&this, lpName);
			}
			public HRESULT GetSnapinVersion(PWSTR* lpVersion) mut
			{
				return VT.GetSnapinVersion(&this, lpVersion);
			}
			public HRESULT GetSnapinImage(HICON* hAppIcon) mut
			{
				return VT.GetSnapinImage(&this, hAppIcon);
			}
			public HRESULT GetStaticFolderImage(HBITMAP* hSmallImage, HBITMAP* hSmallImageOpen, HBITMAP* hLargeImage, uint32* cMask) mut
			{
				return VT.GetStaticFolderImage(&this, hSmallImage, hSmallImageOpen, hLargeImage, cMask);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISnapinAbout *self, PWSTR* lpDescription) GetSnapinDescription;
				public new function HRESULT(ISnapinAbout *self, PWSTR* lpName) GetProvider;
				public new function HRESULT(ISnapinAbout *self, PWSTR* lpVersion) GetSnapinVersion;
				public new function HRESULT(ISnapinAbout *self, HICON* hAppIcon) GetSnapinImage;
				public new function HRESULT(ISnapinAbout *self, HBITMAP* hSmallImage, HBITMAP* hSmallImageOpen, HBITMAP* hLargeImage, uint32* cMask) GetStaticFolderImage;
			}
		}
		[CRepr]
		public struct IMenuButton : IUnknown
		{
			public const new Guid IID = .(0x951ed750, 0xd080, 0x11d0, 0xb1, 0x97, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddButton(int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) mut
			{
				return VT.AddButton(&this, idCommand, lpButtonText, lpTooltipText);
			}
			public HRESULT SetButton(int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) mut
			{
				return VT.SetButton(&this, idCommand, lpButtonText, lpTooltipText);
			}
			public HRESULT SetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) mut
			{
				return VT.SetButtonState(&this, idCommand, nState, bState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMenuButton *self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) AddButton;
				public new function HRESULT(IMenuButton *self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) SetButton;
				public new function HRESULT(IMenuButton *self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct ISnapinHelp : IUnknown
		{
			public const new Guid IID = .(0xa6b15ace, 0xdf59, 0x11d0, 0xa7, 0xdd, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHelpTopic(PWSTR* lpCompiledHelpFile) mut
			{
				return VT.GetHelpTopic(&this, lpCompiledHelpFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISnapinHelp *self, PWSTR* lpCompiledHelpFile) GetHelpTopic;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet2 : IExtendPropertySheet
		{
			public const new Guid IID = .(0xb7a87232, 0x4a51, 0x11d1, 0xa7, 0xea, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWatermarks(IDataObject* lpIDataObject, HBITMAP* lphWatermark, HBITMAP* lphHeader, HPALETTE* lphPalette, BOOL* bStretch) mut
			{
				return VT.GetWatermarks(&this, lpIDataObject, lphWatermark, lphHeader, lphPalette, bStretch);
			}
			[CRepr]
			public struct VTable : IExtendPropertySheet.VTable
			{
				public new function HRESULT(IExtendPropertySheet2 *self, IDataObject* lpIDataObject, HBITMAP* lphWatermark, HBITMAP* lphHeader, HPALETTE* lphPalette, BOOL* bStretch) GetWatermarks;
			}
		}
		[CRepr]
		public struct IHeaderCtrl2 : IHeaderCtrl
		{
			public const new Guid IID = .(0x9757abb8, 0x1b32, 0x11d1, 0xa7, 0xce, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetChangeTimeOut(uint32 uTimeout) mut
			{
				return VT.SetChangeTimeOut(&this, uTimeout);
			}
			public HRESULT SetColumnFilter(uint32 nColumn, uint32 dwType, MMC_FILTERDATA* pFilterData) mut
			{
				return VT.SetColumnFilter(&this, nColumn, dwType, pFilterData);
			}
			public HRESULT GetColumnFilter(uint32 nColumn, uint32* pdwType, MMC_FILTERDATA* pFilterData) mut
			{
				return VT.GetColumnFilter(&this, nColumn, pdwType, pFilterData);
			}
			[CRepr]
			public struct VTable : IHeaderCtrl.VTable
			{
				public new function HRESULT(IHeaderCtrl2 *self, uint32 uTimeout) SetChangeTimeOut;
				public new function HRESULT(IHeaderCtrl2 *self, uint32 nColumn, uint32 dwType, MMC_FILTERDATA* pFilterData) SetColumnFilter;
				public new function HRESULT(IHeaderCtrl2 *self, uint32 nColumn, uint32* pdwType, MMC_FILTERDATA* pFilterData) GetColumnFilter;
			}
		}
		[CRepr]
		public struct ISnapinHelp2 : ISnapinHelp
		{
			public const new Guid IID = .(0x4861a010, 0x20f9, 0x11d2, 0xa5, 0x10, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLinkedTopics(PWSTR* lpCompiledHelpFiles) mut
			{
				return VT.GetLinkedTopics(&this, lpCompiledHelpFiles);
			}
			[CRepr]
			public struct VTable : ISnapinHelp.VTable
			{
				public new function HRESULT(ISnapinHelp2 *self, PWSTR* lpCompiledHelpFiles) GetLinkedTopics;
			}
		}
		[CRepr]
		public struct IEnumTASK : IUnknown
		{
			public const new Guid IID = .(0x338698b1, 0x5a02, 0x11d1, 0x9f, 0xec, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, MMC_TASK* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumTASK** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumTASK *self, uint32 celt, MMC_TASK* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumTASK *self, uint32 celt) Skip;
				public new function HRESULT(IEnumTASK *self) Reset;
				public new function HRESULT(IEnumTASK *self, IEnumTASK** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IExtendTaskPad : IUnknown
		{
			public const new Guid IID = .(0x8dee6511, 0x554d, 0x11d1, 0x9f, 0xea, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TaskNotify(IDataObject* pdo, VARIANT* arg, VARIANT* param2) mut
			{
				return VT.TaskNotify(&this, pdo, arg, param2);
			}
			public HRESULT EnumTasks(IDataObject* pdo, PWSTR szTaskGroup, IEnumTASK** ppEnumTASK) mut
			{
				return VT.EnumTasks(&this, pdo, szTaskGroup, ppEnumTASK);
			}
			public HRESULT GetTitle(PWSTR pszGroup, PWSTR* pszTitle) mut
			{
				return VT.GetTitle(&this, pszGroup, pszTitle);
			}
			public HRESULT GetDescriptiveText(PWSTR pszGroup, PWSTR* pszDescriptiveText) mut
			{
				return VT.GetDescriptiveText(&this, pszGroup, pszDescriptiveText);
			}
			public HRESULT GetBackground(PWSTR pszGroup, MMC_TASK_DISPLAY_OBJECT* pTDO) mut
			{
				return VT.GetBackground(&this, pszGroup, pTDO);
			}
			public HRESULT GetListPadInfo(PWSTR pszGroup, MMC_LISTPAD_INFO* lpListPadInfo) mut
			{
				return VT.GetListPadInfo(&this, pszGroup, lpListPadInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtendTaskPad *self, IDataObject* pdo, VARIANT* arg, VARIANT* param2) TaskNotify;
				public new function HRESULT(IExtendTaskPad *self, IDataObject* pdo, PWSTR szTaskGroup, IEnumTASK** ppEnumTASK) EnumTasks;
				public new function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, PWSTR* pszTitle) GetTitle;
				public new function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, PWSTR* pszDescriptiveText) GetDescriptiveText;
				public new function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, MMC_TASK_DISPLAY_OBJECT* pTDO) GetBackground;
				public new function HRESULT(IExtendTaskPad *self, PWSTR pszGroup, MMC_LISTPAD_INFO* lpListPadInfo) GetListPadInfo;
			}
		}
		[CRepr]
		public struct IConsole2 : IConsole
		{
			public const new Guid IID = .(0x103d842a, 0xaa63, 0x11d1, 0xa7, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand(int hItem, BOOL bExpand) mut
			{
				return VT.Expand(&this, hItem, bExpand);
			}
			public HRESULT IsTaskpadViewPreferred() mut
			{
				return VT.IsTaskpadViewPreferred(&this);
			}
			public HRESULT SetStatusText(PWSTR pszStatusText) mut
			{
				return VT.SetStatusText(&this, pszStatusText);
			}
			[CRepr]
			public struct VTable : IConsole.VTable
			{
				public new function HRESULT(IConsole2 *self, int hItem, BOOL bExpand) Expand;
				public new function HRESULT(IConsole2 *self) IsTaskpadViewPreferred;
				public new function HRESULT(IConsole2 *self, PWSTR pszStatusText) SetStatusText;
			}
		}
		[CRepr]
		public struct IDisplayHelp : IUnknown
		{
			public const new Guid IID = .(0xcc593830, 0xb926, 0x11d1, 0x80, 0x63, 0x00, 0x00, 0xf8, 0x75, 0xa9, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowTopic(PWSTR pszHelpTopic) mut
			{
				return VT.ShowTopic(&this, pszHelpTopic);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDisplayHelp *self, PWSTR pszHelpTopic) ShowTopic;
			}
		}
		[CRepr]
		public struct IRequiredExtensions : IUnknown
		{
			public const new Guid IID = .(0x72782d7a, 0xa4a0, 0x11d1, 0xaf, 0x0f, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableAllExtensions() mut
			{
				return VT.EnableAllExtensions(&this);
			}
			public HRESULT GetFirstExtension(Guid* pExtCLSID) mut
			{
				return VT.GetFirstExtension(&this, pExtCLSID);
			}
			public HRESULT GetNextExtension(Guid* pExtCLSID) mut
			{
				return VT.GetNextExtension(&this, pExtCLSID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRequiredExtensions *self) EnableAllExtensions;
				public new function HRESULT(IRequiredExtensions *self, Guid* pExtCLSID) GetFirstExtension;
				public new function HRESULT(IRequiredExtensions *self, Guid* pExtCLSID) GetNextExtension;
			}
		}
		[CRepr]
		public struct IStringTable : IUnknown
		{
			public const new Guid IID = .(0xde40b7a4, 0x0f65, 0x11d2, 0x8e, 0x25, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddString(PWSTR pszAdd, uint32* pStringID) mut
			{
				return VT.AddString(&this, pszAdd, pStringID);
			}
			public HRESULT GetString(uint32 StringID, uint32 cchBuffer, char16* lpBuffer, uint32* pcchOut) mut
			{
				return VT.GetString(&this, StringID, cchBuffer, lpBuffer, pcchOut);
			}
			public HRESULT GetStringLength(uint32 StringID, uint32* pcchString) mut
			{
				return VT.GetStringLength(&this, StringID, pcchString);
			}
			public HRESULT DeleteString(uint32 StringID) mut
			{
				return VT.DeleteString(&this, StringID);
			}
			public HRESULT DeleteAllStrings() mut
			{
				return VT.DeleteAllStrings(&this);
			}
			public HRESULT FindString(PWSTR pszFind, uint32* pStringID) mut
			{
				return VT.FindString(&this, pszFind, pStringID);
			}
			public HRESULT Enumerate(IEnumString** ppEnum) mut
			{
				return VT.Enumerate(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStringTable *self, PWSTR pszAdd, uint32* pStringID) AddString;
				public new function HRESULT(IStringTable *self, uint32 StringID, uint32 cchBuffer, char16* lpBuffer, uint32* pcchOut) GetString;
				public new function HRESULT(IStringTable *self, uint32 StringID, uint32* pcchString) GetStringLength;
				public new function HRESULT(IStringTable *self, uint32 StringID) DeleteString;
				public new function HRESULT(IStringTable *self) DeleteAllStrings;
				public new function HRESULT(IStringTable *self, PWSTR pszFind, uint32* pStringID) FindString;
				public new function HRESULT(IStringTable *self, IEnumString** ppEnum) Enumerate;
			}
		}
		[CRepr]
		public struct IColumnData : IUnknown
		{
			public const new Guid IID = .(0x547c1354, 0x024d, 0x11d3, 0xa7, 0x07, 0x00, 0xc0, 0x4f, 0x8e, 0xf4, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetColumnConfigData(SColumnSetID* pColID, MMC_COLUMN_SET_DATA* pColSetData) mut
			{
				return VT.SetColumnConfigData(&this, pColID, pColSetData);
			}
			public HRESULT GetColumnConfigData(SColumnSetID* pColID, MMC_COLUMN_SET_DATA** ppColSetData) mut
			{
				return VT.GetColumnConfigData(&this, pColID, ppColSetData);
			}
			public HRESULT SetColumnSortData(SColumnSetID* pColID, MMC_SORT_SET_DATA* pColSortData) mut
			{
				return VT.SetColumnSortData(&this, pColID, pColSortData);
			}
			public HRESULT GetColumnSortData(SColumnSetID* pColID, MMC_SORT_SET_DATA** ppColSortData) mut
			{
				return VT.GetColumnSortData(&this, pColID, ppColSortData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_COLUMN_SET_DATA* pColSetData) SetColumnConfigData;
				public new function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_COLUMN_SET_DATA** ppColSetData) GetColumnConfigData;
				public new function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_SORT_SET_DATA* pColSortData) SetColumnSortData;
				public new function HRESULT(IColumnData *self, SColumnSetID* pColID, MMC_SORT_SET_DATA** ppColSortData) GetColumnSortData;
			}
		}
		[CRepr]
		public struct IMessageView : IUnknown
		{
			public const new Guid IID = .(0x80f94174, 0xfccc, 0x11d2, 0xb9, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTitleText(PWSTR pszTitleText) mut
			{
				return VT.SetTitleText(&this, pszTitleText);
			}
			public HRESULT SetBodyText(PWSTR pszBodyText) mut
			{
				return VT.SetBodyText(&this, pszBodyText);
			}
			public HRESULT SetIcon(IconIdentifier id) mut
			{
				return VT.SetIcon(&this, id);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMessageView *self, PWSTR pszTitleText) SetTitleText;
				public new function HRESULT(IMessageView *self, PWSTR pszBodyText) SetBodyText;
				public new function HRESULT(IMessageView *self, IconIdentifier id) SetIcon;
				public new function HRESULT(IMessageView *self) Clear;
			}
		}
		[CRepr]
		public struct IResultDataCompareEx : IUnknown
		{
			public const new Guid IID = .(0x96933476, 0x0251, 0x11d3, 0xae, 0xb0, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compare(RDCOMPARE* prdc, int32* pnResult) mut
			{
				return VT.Compare(&this, prdc, pnResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResultDataCompareEx *self, RDCOMPARE* prdc, int32* pnResult) Compare;
			}
		}
		[CRepr]
		public struct IComponentData2 : IComponentData
		{
			public const new Guid IID = .(0xcca0f2d2, 0x82de, 0x41b5, 0xbf, 0x47, 0x3b, 0x20, 0x76, 0x27, 0x3d, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryDispatch(int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) mut
			{
				return VT.QueryDispatch(&this, cookie, type, ppDispatch);
			}
			[CRepr]
			public struct VTable : IComponentData.VTable
			{
				public new function HRESULT(IComponentData2 *self, int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) QueryDispatch;
			}
		}
		[CRepr]
		public struct IComponent2 : IComponentAlt
		{
			public const new Guid IID = .(0x79a2d615, 0x4a10, 0x4ed4, 0x8c, 0x65, 0x86, 0x33, 0xf9, 0x33, 0x50, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryDispatch(int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) mut
			{
				return VT.QueryDispatch(&this, cookie, type, ppDispatch);
			}
			public HRESULT GetResultViewType2(int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) mut
			{
				return VT.GetResultViewType2(&this, cookie, pResultViewType);
			}
			public HRESULT RestoreResultView(int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) mut
			{
				return VT.RestoreResultView(&this, cookie, pResultViewType);
			}
			[CRepr]
			public struct VTable : IComponentAlt.VTable
			{
				public new function HRESULT(IComponent2 *self, int cookie, DATA_OBJECT_TYPES type, IDispatch** ppDispatch) QueryDispatch;
				public new function HRESULT(IComponent2 *self, int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) GetResultViewType2;
				public new function HRESULT(IComponent2 *self, int cookie, RESULT_VIEW_TYPE_INFO* pResultViewType) RestoreResultView;
			}
		}
		[CRepr]
		public struct IContextMenuCallback2 : IUnknown
		{
			public const new Guid IID = .(0xe178bc0e, 0x2ed0, 0x4b5e, 0x80, 0x97, 0x42, 0xc9, 0x08, 0x7e, 0x8b, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddItem(CONTEXTMENUITEM2* pItem) mut
			{
				return VT.AddItem(&this, pItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextMenuCallback2 *self, CONTEXTMENUITEM2* pItem) AddItem;
			}
		}
		[CRepr]
		public struct IMMCVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xa8d2c5fe, 0xcdcb, 0x4b9d, 0xbd, 0xe5, 0xa2, 0x73, 0x43, 0xff, 0x54, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMMCVersion(int32* pVersionMajor, int32* pVersionMinor) mut
			{
				return VT.GetMMCVersion(&this, pVersionMajor, pVersionMinor);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMCVersionInfo *self, int32* pVersionMajor, int32* pVersionMinor) GetMMCVersion;
			}
		}
		[CRepr]
		public struct IExtendView : IUnknown
		{
			public const new Guid IID = .(0x89995cee, 0xd2ed, 0x4c0e, 0xae, 0x5e, 0xdf, 0x7e, 0x76, 0xf3, 0xfa, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetViews(IDataObject* pDataObject, IViewExtensionCallback* pViewExtensionCallback) mut
			{
				return VT.GetViews(&this, pDataObject, pViewExtensionCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtendView *self, IDataObject* pDataObject, IViewExtensionCallback* pViewExtensionCallback) GetViews;
			}
		}
		[CRepr]
		public struct IViewExtensionCallback : IUnknown
		{
			public const new Guid IID = .(0x34dd928a, 0x7599, 0x41e5, 0x9f, 0x5e, 0xd6, 0xbc, 0x30, 0x62, 0xc2, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddView(MMC_EXT_VIEW_DATA* pExtViewData) mut
			{
				return VT.AddView(&this, pExtViewData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IViewExtensionCallback *self, MMC_EXT_VIEW_DATA* pExtViewData) AddView;
			}
		}
		[CRepr]
		public struct IConsolePower : IUnknown
		{
			public const new Guid IID = .(0x1cfbdd0e, 0x62ca, 0x49ce, 0xa3, 0xaf, 0xdb, 0xb2, 0xde, 0x61, 0xb0, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetExecutionState(uint32 dwAdd, uint32 dwRemove) mut
			{
				return VT.SetExecutionState(&this, dwAdd, dwRemove);
			}
			public HRESULT ResetIdleTimer(uint32 dwFlags) mut
			{
				return VT.ResetIdleTimer(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConsolePower *self, uint32 dwAdd, uint32 dwRemove) SetExecutionState;
				public new function HRESULT(IConsolePower *self, uint32 dwFlags) ResetIdleTimer;
			}
		}
		[CRepr]
		public struct IConsolePowerSink : IUnknown
		{
			public const new Guid IID = .(0x3333759f, 0xfe4f, 0x4975, 0xb1, 0x43, 0xfe, 0xc0, 0xa5, 0xdd, 0x6d, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPowerBroadcast(uint32 nEvent, LPARAM lParam, LRESULT* plReturn) mut
			{
				return VT.OnPowerBroadcast(&this, nEvent, lParam, plReturn);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConsolePowerSink *self, uint32 nEvent, LPARAM lParam, LRESULT* plReturn) OnPowerBroadcast;
			}
		}
		[CRepr]
		public struct INodeProperties : IUnknown
		{
			public const new Guid IID = .(0x15bc4d24, 0xa522, 0x4406, 0xaa, 0x55, 0x07, 0x49, 0x53, 0x7a, 0x68, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(IDataObject* pDataObject, BSTR szPropertyName, uint16** pbstrProperty) mut
			{
				return VT.GetProperty(&this, pDataObject, szPropertyName, pbstrProperty);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INodeProperties *self, IDataObject* pDataObject, BSTR szPropertyName, uint16** pbstrProperty) GetProperty;
			}
		}
		[CRepr]
		public struct IConsole3 : IConsole2
		{
			public const new Guid IID = .(0x4f85efdb, 0xd0e1, 0x498c, 0x8d, 0x4a, 0xd0, 0x10, 0xdf, 0xdd, 0x40, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameScopeItem(int hScopeItem) mut
			{
				return VT.RenameScopeItem(&this, hScopeItem);
			}
			[CRepr]
			public struct VTable : IConsole2.VTable
			{
				public new function HRESULT(IConsole3 *self, int hScopeItem) RenameScopeItem;
			}
		}
		[CRepr]
		public struct IResultData2 : IResultData
		{
			public const new Guid IID = .(0x0f36e0eb, 0xa7f1, 0x4a81, 0xbe, 0x5a, 0x92, 0x47, 0xf7, 0xde, 0x4b, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameResultItem(int itemID) mut
			{
				return VT.RenameResultItem(&this, itemID);
			}
			[CRepr]
			public struct VTable : IResultData.VTable
			{
				public new function HRESULT(IResultData2 *self, int itemID) RenameResultItem;
			}
		}
		
	}
}
