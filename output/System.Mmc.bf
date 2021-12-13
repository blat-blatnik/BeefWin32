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
			public IDataObject[] lpDataObject;
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
					public IUnknown pUnkControl;
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
		
		public struct ISnapinProperties {}
		public struct ISnapinPropertiesCallback {}
		public struct _Application {}
		public struct _AppEvents {}
		public struct AppEvents {}
		public struct _EventConnector {}
		public struct Frame {}
		public struct Node {}
		public struct ScopeNamespace {}
		public struct Document {}
		public struct SnapIn {}
		public struct SnapIns {}
		public struct Extension {}
		public struct Extensions {}
		public struct Columns {}
		public struct Column {}
		public struct Views {}
		public struct View {}
		public struct Nodes {}
		public struct ContextMenu {}
		public struct MenuItem {}
		public struct Properties {}
		public struct Property {}
		public struct IComponentData {}
		public struct IComponentAlt {}
		public struct IResultDataCompare {}
		public struct IResultOwnerData {}
		public struct IConsole {}
		public struct IHeaderCtrl {}
		public struct IContextMenuCallback {}
		public struct IContextMenuProvider {}
		public struct IExtendContextMenu {}
		public struct IImageListAlt {}
		public struct IResultData {}
		public struct IConsoleNameSpace {}
		public struct IConsoleNameSpace2 {}
		public struct IPropertySheetCallback {}
		public struct IPropertySheetProvider {}
		public struct IExtendPropertySheet {}
		public struct IControlbar {}
		public struct IExtendControlbar {}
		public struct IToolbar {}
		public struct IConsoleVerb {}
		public struct ISnapinAbout {}
		public struct IMenuButton {}
		public struct ISnapinHelp {}
		public struct IExtendPropertySheet2 {}
		public struct IHeaderCtrl2 {}
		public struct ISnapinHelp2 {}
		public struct IEnumTASK {}
		public struct IExtendTaskPad {}
		public struct IConsole2 {}
		public struct IDisplayHelp {}
		public struct IRequiredExtensions {}
		public struct IStringTable {}
		public struct IColumnData {}
		public struct IMessageView {}
		public struct IResultDataCompareEx {}
		public struct IComponentData2 {}
		public struct IComponent2 {}
		public struct IContextMenuCallback2 {}
		public struct IMMCVersionInfo {}
		public struct IExtendView {}
		public struct IViewExtensionCallback {}
		public struct IConsolePower {}
		public struct IConsolePowerSink {}
		public struct INodeProperties {}
		public struct IConsole3 {}
		public struct IResultData2 {}
		
	}
}
