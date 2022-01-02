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
		
		public enum MMC_PROPERTY_ACTION : int32
		{
			DELETING = 1,
			CHANGING = 2,
			INITIALIZED = 3,
		}
		public enum _DocumentMode : int32
		{
			Author = 0,
			User = 1,
			User_MDI = 2,
			User_SDI = 3,
		}
		public enum _ListViewMode : int32
		{
			Small_Icons = 0,
			Large_Icons = 1,
			List = 2,
			Detail = 3,
			Filtered = 4,
		}
		public enum _ViewOptions : int32
		{
			Default = 0,
			ScopeTreeHidden = 1,
			NoToolBars = 2,
			NotPersistable = 4,
			ActionPaneHidden = 8,
		}
		public enum _ExportListOptions : int32
		{
			Default = 0,
			Unicode = 1,
			TabDelimited = 2,
			SelectedItemsOnly = 4,
		}
		public enum _ColumnSortOrder : int32
		{
			Ascending = 0,
			Descending = 1,
		}
		public enum MMC_RESULT_VIEW_STYLE : int32
		{
			SINGLESEL = 1,
			SHOWSELALWAYS = 2,
			NOSORTHEADER = 4,
			ENSUREFOCUSVISIBLE = 8,
		}
		public enum MMC_CONTROL_TYPE : int32
		{
			TOOLBAR = 0,
			MENUBUTTON = 1,
			COMBOBOXBAR = 2,
		}
		[AllowDuplicates]
		public enum MMC_CONSOLE_VERB : int32
		{
			NONE = 0,
			OPEN = 32768,
			COPY = 32769,
			PASTE = 32770,
			DELETE = 32771,
			PROPERTIES = 32772,
			RENAME = 32773,
			REFRESH = 32774,
			PRINT = 32775,
			CUT = 32776,
			MAX = 32777,
			FIRST = 32768,
			LAST = 32776,
		}
		public enum MMC_BUTTON_STATE : int32
		{
			ENABLED = 1,
			CHECKED = 2,
			HIDDEN = 4,
			INDETERMINATE = 8,
			BUTTONPRESSED = 16,
		}
		public enum MMC_SCOPE_ITEM_STATE : int32
		{
			NORMAL = 1,
			BOLD = 2,
			EXPANDEDONCE = 3,
		}
		public enum MMC_MENU_COMMAND_IDS : int32
		{
			MMCC_STANDARD_VIEW_SELECT = -1,
		}
		public enum MMC_FILTER_TYPE : int32
		{
			STRING_FILTER = 0,
			INT_FILTER = 1,
			FILTER_NOVALUE = 32768,
		}
		public enum MMC_FILTER_CHANGE_CODE : int32
		{
			DISABLE = 0,
			ENABLE = 1,
			VALUE_CHANGE = 2,
		}
		public enum MMC_NOTIFY_TYPE : int32
		{
			ACTIVATE = 32769,
			ADD_IMAGES = 32770,
			BTN_CLICK = 32771,
			CLICK = 32772,
			COLUMN_CLICK = 32773,
			CONTEXTMENU = 32774,
			CUTORMOVE = 32775,
			DBLCLICK = 32776,
			DELETE = 32777,
			DESELECT_ALL = 32778,
			EXPAND = 32779,
			HELP = 32780,
			MENU_BTNCLICK = 32781,
			MINIMIZED = 32782,
			PASTE = 32783,
			PROPERTY_CHANGE = 32784,
			QUERY_PASTE = 32785,
			REFRESH = 32786,
			REMOVE_CHILDREN = 32787,
			RENAME = 32788,
			SELECT = 32789,
			SHOW = 32790,
			VIEW_CHANGE = 32791,
			SNAPINHELP = 32792,
			CONTEXTHELP = 32793,
			INITOCX = 32794,
			FILTER_CHANGE = 32795,
			FILTERBTN_CLICK = 32796,
			RESTORE_VIEW = 32797,
			PRINT = 32798,
			PRELOAD = 32799,
			LISTPAD = 32800,
			EXPANDSYNC = 32801,
			COLUMNS_CHANGED = 32802,
			CANPASTE_OUTOFPROC = 32803,
		}
		public enum DATA_OBJECT_TYPES : int32
		{
			SCOPE = 32768,
			RESULT = 32769,
			SNAPIN_MANAGER = 32770,
			UNINITIALIZED = 65535,
		}
		[AllowDuplicates]
		public enum CCM_INSERTIONPOINTID : int32
		{
			MASK_SPECIAL = -65536,
			MASK_SHARED = -2147483648,
			MASK_CREATE_PRIMARY = 1073741824,
			MASK_ADD_PRIMARY = 536870912,
			MASK_ADD_3RDPARTY = 268435456,
			MASK_RESERVED = 268369920,
			MASK_FLAGINDEX = 31,
			PRIMARY_TOP = -1610612736,
			PRIMARY_NEW = -1610612735,
			PRIMARY_TASK = -1610612734,
			PRIMARY_VIEW = -1610612733,
			PRIMARY_HELP = -1610612732,
			_3RDPARTY_NEW = -1879048191,
			_3RDPARTY_TASK = -1879048190,
			ROOT_MENU = -2147483648,
		}
		public enum CCM_INSERTIONALLOWED : int32
		{
			TOP = 1,
			NEW = 2,
			TASK = 4,
			VIEW = 8,
		}
		public enum CCM_COMMANDID_MASK_CONSTANTS : uint32
		{
			RESERVED = 4294901760,
		}
		public enum CCM_SPECIAL : int32
		{
			SEPARATOR = 1,
			SUBMENU = 2,
			DEFAULT_ITEM = 4,
			INSERTION_POINT = 8,
			TESTONLY = 16,
		}
		public enum MMC_TASK_DISPLAY_TYPE : int32
		{
			UNINITIALIZED = 0,
			TYPE_SYMBOL = 1,
			TYPE_VANILLA_GIF = 2,
			TYPE_CHOCOLATE_GIF = 3,
			TYPE_BITMAP = 4,
		}
		public enum MMC_ACTION_TYPE : int32
		{
			UNINITIALIZED = -1,
			ID = 0,
			LINK = 1,
			SCRIPT = 2,
		}
		[AllowDuplicates]
		public enum IconIdentifier : int32
		{
			None = 0,
			Error = 32513,
			Question = 32514,
			Warning = 32515,
			Information = 32516,
			First = 32513,
			Last = 32516,
		}
		public enum MMC_VIEW_TYPE : int32
		{
			LIST = 0,
			HTML = 1,
			OCX = 2,
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
			public int32[0] rgVisibleCols;
		}
		[CRepr]
		public struct SMMCDataObjects
		{
			public uint32 count;
			public IDataObject*[0] lpDataObject;
		}
		[CRepr]
		public struct SMMCObjectTypes
		{
			public uint32 count;
			public Guid[0] guid;
		}
		[CRepr]
		public struct SNodeID
		{
			public uint32 cBytes;
			public uint8[0] id;
		}
		[CRepr]
		public struct SNodeID2
		{
			public uint32 dwFlags;
			public uint32 cBytes;
			public uint8[0] id;
		}
		[CRepr]
		public struct SColumnSetID
		{
			public uint32 dwFlags;
			public uint32 cBytes;
			public uint8[0] id;
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
			
			public HRESULT Initialize(ref Properties pProperties) mut => VT.Initialize(ref this, ref pProperties);
			public HRESULT QueryPropertyNames(ref ISnapinPropertiesCallback pCallback) mut => VT.QueryPropertyNames(ref this, ref pCallback);
			public HRESULT PropertiesChanged(int32 cProperties, MMC_SNAPIN_PROPERTY* pProperties) mut => VT.PropertiesChanged(ref this, cProperties, pProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinProperties self, ref Properties pProperties) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinProperties self, ref ISnapinPropertiesCallback pCallback) QueryPropertyNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinProperties self, int32 cProperties, MMC_SNAPIN_PROPERTY* pProperties) PropertiesChanged;
			}
		}
		[CRepr]
		public struct ISnapinPropertiesCallback : IUnknown
		{
			public const new Guid IID = .(0xa50fa2e5, 0x7e61, 0x45eb, 0xa8, 0xd4, 0x9a, 0x07, 0xb3, 0xe8, 0x51, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPropertyName(PWSTR pszPropName, uint32 dwFlags) mut => VT.AddPropertyName(ref this, pszPropName, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinPropertiesCallback self, PWSTR pszPropName, uint32 dwFlags) AddPropertyName;
			}
		}
		[CRepr]
		public struct _Application : IDispatch
		{
			public const new Guid IID = .(0xa3afb9cc, 0xb653, 0x4741, 0x86, 0xab, 0xf0, 0x47, 0x0e, 0xc1, 0x38, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Help() mut => VT.Help(ref this);
			public void Quit() mut => VT.Quit(ref this);
			public HRESULT get_Document(out Document* Document) mut => VT.get_Document(ref this, out Document);
			public HRESULT Load(BSTR Filename) mut => VT.Load(ref this, Filename);
			public HRESULT get_Frame(out Frame* Frame) mut => VT.get_Frame(ref this, out Frame);
			public HRESULT get_Visible(out BOOL Visible) mut => VT.get_Visible(ref this, out Visible);
			public HRESULT Show() mut => VT.Show(ref this);
			public HRESULT Hide() mut => VT.Hide(ref this);
			public HRESULT get_UserControl(out BOOL UserControl) mut => VT.get_UserControl(ref this, out UserControl);
			public HRESULT put_UserControl(BOOL UserControl) mut => VT.put_UserControl(ref this, UserControl);
			public HRESULT get_VersionMajor(out int32 VersionMajor) mut => VT.get_VersionMajor(ref this, out VersionMajor);
			public HRESULT get_VersionMinor(out int32 VersionMinor) mut => VT.get_VersionMinor(ref this, out VersionMinor);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref _Application self) Help;
				public new function [CallingConvention(.Stdcall)] void(ref _Application self) Quit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out Document* Document) get_Document;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, BSTR Filename) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out Frame* Frame) get_Frame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out BOOL Visible) get_Visible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self) Show;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self) Hide;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out BOOL UserControl) get_UserControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, BOOL UserControl) put_UserControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out int32 VersionMajor) get_VersionMajor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _Application self, out int32 VersionMinor) get_VersionMinor;
			}
		}
		[CRepr]
		public struct _AppEvents : IDispatch
		{
			public const new Guid IID = .(0xde46cbdd, 0x53f5, 0x4635, 0xaf, 0x54, 0x4f, 0xe7, 0x1e, 0x92, 0x3d, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQuit(ref _Application Application) mut => VT.OnQuit(ref this, ref Application);
			public HRESULT OnDocumentOpen(ref Document Document, BOOL New) mut => VT.OnDocumentOpen(ref this, ref Document, New);
			public HRESULT OnDocumentClose(ref Document Document) mut => VT.OnDocumentClose(ref this, ref Document);
			public HRESULT OnSnapInAdded(ref Document Document, ref SnapIn SnapIn) mut => VT.OnSnapInAdded(ref this, ref Document, ref SnapIn);
			public HRESULT OnSnapInRemoved(ref Document Document, ref SnapIn SnapIn) mut => VT.OnSnapInRemoved(ref this, ref Document, ref SnapIn);
			public HRESULT OnNewView(ref View View) mut => VT.OnNewView(ref this, ref View);
			public HRESULT OnViewClose(ref View View) mut => VT.OnViewClose(ref this, ref View);
			public HRESULT OnViewChange(ref View View, ref Node NewOwnerNode) mut => VT.OnViewChange(ref this, ref View, ref NewOwnerNode);
			public HRESULT OnSelectionChange(ref View View, ref Nodes NewNodes) mut => VT.OnSelectionChange(ref this, ref View, ref NewNodes);
			public HRESULT OnContextMenuExecuted(ref MenuItem MenuItem) mut => VT.OnContextMenuExecuted(ref this, ref MenuItem);
			public HRESULT OnToolbarButtonClicked() mut => VT.OnToolbarButtonClicked(ref this);
			public HRESULT OnListUpdated(ref View View) mut => VT.OnListUpdated(ref this, ref View);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref _Application Application) OnQuit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref Document Document, BOOL New) OnDocumentOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref Document Document) OnDocumentClose;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref Document Document, ref SnapIn SnapIn) OnSnapInAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref Document Document, ref SnapIn SnapIn) OnSnapInRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref View View) OnNewView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref View View) OnViewClose;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref View View, ref Node NewOwnerNode) OnViewChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref View View, ref Nodes NewNodes) OnSelectionChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref MenuItem MenuItem) OnContextMenuExecuted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self) OnToolbarButtonClicked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _AppEvents self, ref View View) OnListUpdated;
			}
		}
		[CRepr]
		public struct AppEvents : IDispatch
		{
			public const new Guid IID = .(0xfc7a4252, 0x78ac, 0x4532, 0x8c, 0x5a, 0x56, 0x3c, 0xfe, 0x13, 0x88, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct _EventConnector : IDispatch
		{
			public const new Guid IID = .(0xc0bccd30, 0xde44, 0x4528, 0x84, 0x03, 0xa0, 0x5a, 0x6a, 0x1c, 0xc8, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectTo(ref _Application Application) mut => VT.ConnectTo(ref this, ref Application);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _EventConnector self, ref _Application Application) ConnectTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _EventConnector self) Disconnect;
			}
		}
		[CRepr]
		public struct Frame : IDispatch
		{
			public const new Guid IID = .(0xe5e2d970, 0x5bb3, 0x4306, 0x88, 0x04, 0xb0, 0x96, 0x8a, 0x31, 0xc8, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Maximize() mut => VT.Maximize(ref this);
			public HRESULT Minimize() mut => VT.Minimize(ref this);
			public HRESULT Restore() mut => VT.Restore(ref this);
			public HRESULT get_Top(out int32 Top) mut => VT.get_Top(ref this, out Top);
			public HRESULT put_Top(int32 top) mut => VT.put_Top(ref this, top);
			public HRESULT get_Bottom(out int32 Bottom) mut => VT.get_Bottom(ref this, out Bottom);
			public HRESULT put_Bottom(int32 bottom) mut => VT.put_Bottom(ref this, bottom);
			public HRESULT get_Left(out int32 Left) mut => VT.get_Left(ref this, out Left);
			public HRESULT put_Left(int32 left) mut => VT.put_Left(ref this, left);
			public HRESULT get_Right(out int32 Right) mut => VT.get_Right(ref this, out Right);
			public HRESULT put_Right(int32 right) mut => VT.put_Right(ref this, right);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self) Maximize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self) Minimize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self) Restore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, out int32 Top) get_Top;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, int32 top) put_Top;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, out int32 Bottom) get_Bottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, int32 bottom) put_Bottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, out int32 Left) get_Left;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, int32 left) put_Left;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, out int32 Right) get_Right;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Frame self, int32 right) put_Right;
			}
		}
		[CRepr]
		public struct Node : IDispatch
		{
			public const new Guid IID = .(0xf81ed800, 0x7839, 0x4447, 0x94, 0x5d, 0x8e, 0x15, 0xda, 0x59, 0xca, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out uint16* Name) mut => VT.get_Name(ref this, out Name);
			public HRESULT get_Property(BSTR PropertyName, out uint16* PropertyValue) mut => VT.get_Property(ref this, PropertyName, out PropertyValue);
			public HRESULT get_Bookmark(out uint16* Bookmark) mut => VT.get_Bookmark(ref this, out Bookmark);
			public HRESULT IsScopeNode(out BOOL IsScopeNode) mut => VT.IsScopeNode(ref this, out IsScopeNode);
			public HRESULT get_Nodetype(out uint16* Nodetype) mut => VT.get_Nodetype(ref this, out Nodetype);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Node self, out uint16* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Node self, BSTR PropertyName, out uint16* PropertyValue) get_Property;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Node self, out uint16* Bookmark) get_Bookmark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Node self, out BOOL IsScopeNode) IsScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Node self, out uint16* Nodetype) get_Nodetype;
			}
		}
		[CRepr]
		public struct ScopeNamespace : IDispatch
		{
			public const new Guid IID = .(0xebbb48dc, 0x1a3b, 0x4d86, 0xb7, 0x86, 0xc2, 0x1b, 0x28, 0x38, 0x90, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParent(ref Node Node, out Node* Parent) mut => VT.GetParent(ref this, ref Node, out Parent);
			public HRESULT GetChild(ref Node Node, out Node* Child) mut => VT.GetChild(ref this, ref Node, out Child);
			public HRESULT GetNext(ref Node Node, out Node* Next) mut => VT.GetNext(ref this, ref Node, out Next);
			public HRESULT GetRoot(out Node* Root) mut => VT.GetRoot(ref this, out Root);
			public HRESULT Expand(ref Node Node) mut => VT.Expand(ref this, ref Node);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ScopeNamespace self, ref Node Node, out Node* Parent) GetParent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ScopeNamespace self, ref Node Node, out Node* Child) GetChild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ScopeNamespace self, ref Node Node, out Node* Next) GetNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ScopeNamespace self, out Node* Root) GetRoot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ScopeNamespace self, ref Node Node) Expand;
			}
		}
		[CRepr]
		public struct Document : IDispatch
		{
			public const new Guid IID = .(0x225120d6, 0x1e0f, 0x40a3, 0x93, 0xfe, 0x10, 0x79, 0xe6, 0xa8, 0x01, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT SaveAs(BSTR Filename) mut => VT.SaveAs(ref this, Filename);
			public HRESULT Close(BOOL SaveChanges) mut => VT.Close(ref this, SaveChanges);
			public HRESULT get_Views(out Views* Views) mut => VT.get_Views(ref this, out Views);
			public HRESULT get_SnapIns(out SnapIns* SnapIns) mut => VT.get_SnapIns(ref this, out SnapIns);
			public HRESULT get_ActiveView(out View* View) mut => VT.get_ActiveView(ref this, out View);
			public HRESULT get_Name(out uint16* Name) mut => VT.get_Name(ref this, out Name);
			public HRESULT put_Name(BSTR Name) mut => VT.put_Name(ref this, Name);
			public HRESULT get_Location(out uint16* Location) mut => VT.get_Location(ref this, out Location);
			public HRESULT get_IsSaved(out BOOL IsSaved) mut => VT.get_IsSaved(ref this, out IsSaved);
			public HRESULT get_Mode(out _DocumentMode Mode) mut => VT.get_Mode(ref this, out Mode);
			public HRESULT put_Mode(_DocumentMode Mode) mut => VT.put_Mode(ref this, Mode);
			public HRESULT get_RootNode(out Node* Node) mut => VT.get_RootNode(ref this, out Node);
			public HRESULT get_ScopeNamespace(out ScopeNamespace* ScopeNamespace) mut => VT.get_ScopeNamespace(ref this, out ScopeNamespace);
			public HRESULT CreateProperties(out Properties* Properties) mut => VT.CreateProperties(ref this, out Properties);
			public HRESULT get_Application(out _Application* Application) mut => VT.get_Application(ref this, out Application);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, BSTR Filename) SaveAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, BOOL SaveChanges) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out Views* Views) get_Views;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out SnapIns* SnapIns) get_SnapIns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out View* View) get_ActiveView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out uint16* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, BSTR Name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out uint16* Location) get_Location;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out BOOL IsSaved) get_IsSaved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out _DocumentMode Mode) get_Mode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, _DocumentMode Mode) put_Mode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out Node* Node) get_RootNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out ScopeNamespace* ScopeNamespace) get_ScopeNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out Properties* Properties) CreateProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Document self, out _Application* Application) get_Application;
			}
		}
		[CRepr]
		public struct SnapIn : IDispatch
		{
			public const new Guid IID = .(0x3be910f6, 0x3459, 0x49c6, 0xa1, 0xbb, 0x41, 0xe6, 0xbe, 0x9d, 0xf3, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out uint16* Name) mut => VT.get_Name(ref this, out Name);
			public HRESULT get_Vendor(out uint16* Vendor) mut => VT.get_Vendor(ref this, out Vendor);
			public HRESULT get_Version(out uint16* Version) mut => VT.get_Version(ref this, out Version);
			public HRESULT get_Extensions(out Extensions* Extensions) mut => VT.get_Extensions(ref this, out Extensions);
			public HRESULT get_SnapinCLSID(out uint16* SnapinCLSID) mut => VT.get_SnapinCLSID(ref this, out SnapinCLSID);
			public HRESULT get_Properties(out Properties* Properties) mut => VT.get_Properties(ref this, out Properties);
			public HRESULT EnableAllExtensions(BOOL Enable) mut => VT.EnableAllExtensions(ref this, Enable);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out uint16* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out uint16* Vendor) get_Vendor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out uint16* Version) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out Extensions* Extensions) get_Extensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out uint16* SnapinCLSID) get_SnapinCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, out Properties* Properties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIn self, BOOL Enable) EnableAllExtensions;
			}
		}
		[CRepr]
		public struct SnapIns : IDispatch
		{
			public const new Guid IID = .(0x2ef3de1d, 0xb12a, 0x49d1, 0x92, 0xc5, 0x0b, 0x00, 0x79, 0x87, 0x68, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HRESULT Item(int32 Index, out SnapIn* SnapIn) mut => VT.Item(ref this, Index, out SnapIn);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Add(BSTR SnapinNameOrCLSID, VARIANT ParentSnapin, VARIANT Properties, out SnapIn* SnapIn) mut => VT.Add(ref this, SnapinNameOrCLSID, ParentSnapin, Properties, out SnapIn);
			public HRESULT Remove(ref SnapIn SnapIn) mut => VT.Remove(ref this, ref SnapIn);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIns self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIns self, int32 Index, out SnapIn* SnapIn) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIns self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIns self, BSTR SnapinNameOrCLSID, VARIANT ParentSnapin, VARIANT Properties, out SnapIn* SnapIn) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SnapIns self, ref SnapIn SnapIn) Remove;
			}
		}
		[CRepr]
		public struct Extension : IDispatch
		{
			public const new Guid IID = .(0xad4d6ca6, 0x912f, 0x409b, 0xa2, 0x6e, 0x7f, 0xd2, 0x34, 0xae, 0xf5, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out uint16* Name) mut => VT.get_Name(ref this, out Name);
			public HRESULT get_Vendor(out uint16* Vendor) mut => VT.get_Vendor(ref this, out Vendor);
			public HRESULT get_Version(out uint16* Version) mut => VT.get_Version(ref this, out Version);
			public HRESULT get_Extensions(out Extensions* Extensions) mut => VT.get_Extensions(ref this, out Extensions);
			public HRESULT get_SnapinCLSID(out uint16* SnapinCLSID) mut => VT.get_SnapinCLSID(ref this, out SnapinCLSID);
			public HRESULT EnableAllExtensions(BOOL Enable) mut => VT.EnableAllExtensions(ref this, Enable);
			public HRESULT Enable(BOOL Enable) mut => VT.Enable(ref this, Enable);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, out uint16* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, out uint16* Vendor) get_Vendor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, out uint16* Version) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, out Extensions* Extensions) get_Extensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, out uint16* SnapinCLSID) get_SnapinCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, BOOL Enable) EnableAllExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extension self, BOOL Enable) Enable;
			}
		}
		[CRepr]
		public struct Extensions : IDispatch
		{
			public const new Guid IID = .(0x82dbea43, 0x8ca4, 0x44bc, 0xa2, 0xca, 0xd1, 0x87, 0x41, 0x05, 0x9e, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HRESULT Item(int32 Index, out Extension* Extension) mut => VT.Item(ref this, Index, out Extension);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extensions self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extensions self, int32 Index, out Extension* Extension) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Extensions self, out int32 Count) get_Count;
			}
		}
		[CRepr]
		public struct Columns : IDispatch
		{
			public const new Guid IID = .(0x383d4d97, 0xfc44, 0x478b, 0xb1, 0x39, 0x63, 0x23, 0xdc, 0x48, 0x61, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, out Column* Column) mut => VT.Item(ref this, Index, out Column);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Columns self, int32 Index, out Column* Column) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Columns self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Columns self, out IUnknown* retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct Column : IDispatch
		{
			public const new Guid IID = .(0xfd1c5f63, 0x2b16, 0x4d06, 0x9a, 0xb3, 0xf4, 0x53, 0x50, 0xb9, 0x40, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Name(out BSTR Name) mut => VT.Name(ref this, out Name);
			public HRESULT get_Width(out int32 Width) mut => VT.get_Width(ref this, out Width);
			public HRESULT put_Width(int32 Width) mut => VT.put_Width(ref this, Width);
			public HRESULT get_DisplayPosition(out int32 DisplayPosition) mut => VT.get_DisplayPosition(ref this, out DisplayPosition);
			public HRESULT put_DisplayPosition(int32 Index) mut => VT.put_DisplayPosition(ref this, Index);
			public HRESULT get_Hidden(out BOOL Hidden) mut => VT.get_Hidden(ref this, out Hidden);
			public HRESULT put_Hidden(BOOL Hidden) mut => VT.put_Hidden(ref this, Hidden);
			public HRESULT SetAsSortColumn(_ColumnSortOrder SortOrder) mut => VT.SetAsSortColumn(ref this, SortOrder);
			public HRESULT IsSortColumn(out BOOL IsSortColumn) mut => VT.IsSortColumn(ref this, out IsSortColumn);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, out BSTR Name) Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, out int32 Width) get_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, int32 Width) put_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, out int32 DisplayPosition) get_DisplayPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, int32 Index) put_DisplayPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, out BOOL Hidden) get_Hidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, BOOL Hidden) put_Hidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, _ColumnSortOrder SortOrder) SetAsSortColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Column self, out BOOL IsSortColumn) IsSortColumn;
			}
		}
		[CRepr]
		public struct Views : IDispatch
		{
			public const new Guid IID = .(0xd6b8c29d, 0xa1ff, 0x4d72, 0xaa, 0xb0, 0xe3, 0x81, 0xe9, 0xb9, 0x33, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(int32 Index, out View* View) mut => VT.Item(ref this, Index, out View);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Add(ref Node Node, _ViewOptions viewOptions) mut => VT.Add(ref this, ref Node, viewOptions);
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Views self, int32 Index, out View* View) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Views self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Views self, ref Node Node, _ViewOptions viewOptions) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Views self, out IUnknown* retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct View : IDispatch
		{
			public const new Guid IID = .(0x6efc2da2, 0xb38c, 0x457e, 0x9a, 0xbb, 0xed, 0x2d, 0x18, 0x9b, 0x8c, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActiveScopeNode(out Node* Node) mut => VT.get_ActiveScopeNode(ref this, out Node);
			public HRESULT put_ActiveScopeNode(ref Node Node) mut => VT.put_ActiveScopeNode(ref this, ref Node);
			public HRESULT get_Selection(out Nodes* Nodes) mut => VT.get_Selection(ref this, out Nodes);
			public HRESULT get_ListItems(out Nodes* Nodes) mut => VT.get_ListItems(ref this, out Nodes);
			public HRESULT SnapinScopeObject(VARIANT ScopeNode, out IDispatch* ScopeNodeObject) mut => VT.SnapinScopeObject(ref this, ScopeNode, out ScopeNodeObject);
			public HRESULT SnapinSelectionObject(out IDispatch* SelectionObject) mut => VT.SnapinSelectionObject(ref this, out SelectionObject);
			public HRESULT Is(ref View View, out int16 TheSame) mut => VT.Is(ref this, ref View, out TheSame);
			public HRESULT get_Document(out Document* Document) mut => VT.get_Document(ref this, out Document);
			public HRESULT SelectAll() mut => VT.SelectAll(ref this);
			public HRESULT Select(ref Node Node) mut => VT.Select(ref this, ref Node);
			public HRESULT Deselect(ref Node Node) mut => VT.Deselect(ref this, ref Node);
			public HRESULT IsSelected(ref Node Node, out BOOL IsSelected) mut => VT.IsSelected(ref this, ref Node, out IsSelected);
			public HRESULT DisplayScopeNodePropertySheet(VARIANT ScopeNode) mut => VT.DisplayScopeNodePropertySheet(ref this, ScopeNode);
			public HRESULT DisplaySelectionPropertySheet() mut => VT.DisplaySelectionPropertySheet(ref this);
			public HRESULT CopyScopeNode(VARIANT ScopeNode) mut => VT.CopyScopeNode(ref this, ScopeNode);
			public HRESULT CopySelection() mut => VT.CopySelection(ref this);
			public HRESULT DeleteScopeNode(VARIANT ScopeNode) mut => VT.DeleteScopeNode(ref this, ScopeNode);
			public HRESULT DeleteSelection() mut => VT.DeleteSelection(ref this);
			public HRESULT RenameScopeNode(BSTR NewName, VARIANT ScopeNode) mut => VT.RenameScopeNode(ref this, NewName, ScopeNode);
			public HRESULT RenameSelectedItem(BSTR NewName) mut => VT.RenameSelectedItem(ref this, NewName);
			public HRESULT get_ScopeNodeContextMenu(VARIANT ScopeNode, out ContextMenu* ContextMenu) mut => VT.get_ScopeNodeContextMenu(ref this, ScopeNode, out ContextMenu);
			public HRESULT get_SelectionContextMenu(out ContextMenu* ContextMenu) mut => VT.get_SelectionContextMenu(ref this, out ContextMenu);
			public HRESULT RefreshScopeNode(VARIANT ScopeNode) mut => VT.RefreshScopeNode(ref this, ScopeNode);
			public HRESULT RefreshSelection() mut => VT.RefreshSelection(ref this);
			public HRESULT ExecuteSelectionMenuItem(BSTR MenuItemPath) mut => VT.ExecuteSelectionMenuItem(ref this, MenuItemPath);
			public HRESULT ExecuteScopeNodeMenuItem(BSTR MenuItemPath, VARIANT ScopeNode) mut => VT.ExecuteScopeNodeMenuItem(ref this, MenuItemPath, ScopeNode);
			public HRESULT ExecuteShellCommand(BSTR Command, BSTR Directory, BSTR Parameters, BSTR WindowState) mut => VT.ExecuteShellCommand(ref this, Command, Directory, Parameters, WindowState);
			public HRESULT get_Frame(out Frame* Frame) mut => VT.get_Frame(ref this, out Frame);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT get_ScopeTreeVisible(out BOOL Visible) mut => VT.get_ScopeTreeVisible(ref this, out Visible);
			public HRESULT put_ScopeTreeVisible(BOOL Visible) mut => VT.put_ScopeTreeVisible(ref this, Visible);
			public HRESULT Back() mut => VT.Back(ref this);
			public HRESULT Forward() mut => VT.Forward(ref this);
			public HRESULT put_StatusBarText(BSTR StatusBarText) mut => VT.put_StatusBarText(ref this, StatusBarText);
			public HRESULT get_Memento(out uint16* Memento) mut => VT.get_Memento(ref this, out Memento);
			public HRESULT ViewMemento(BSTR Memento) mut => VT.ViewMemento(ref this, Memento);
			public HRESULT get_Columns(out Columns* Columns) mut => VT.get_Columns(ref this, out Columns);
			public HRESULT get_CellContents(ref Node Node, int32 Column, out uint16* CellContents) mut => VT.get_CellContents(ref this, ref Node, Column, out CellContents);
			public HRESULT ExportList(BSTR File, _ExportListOptions exportoptions) mut => VT.ExportList(ref this, File, exportoptions);
			public HRESULT get_ListViewMode(out _ListViewMode Mode) mut => VT.get_ListViewMode(ref this, out Mode);
			public HRESULT put_ListViewMode(_ListViewMode mode) mut => VT.put_ListViewMode(ref this, mode);
			public HRESULT get_ControlObject(out IDispatch* Control) mut => VT.get_ControlObject(ref this, out Control);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Node* Node) get_ActiveScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref Node Node) put_ActiveScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Nodes* Nodes) get_Selection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Nodes* Nodes) get_ListItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode, out IDispatch* ScopeNodeObject) SnapinScopeObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out IDispatch* SelectionObject) SnapinSelectionObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref View View, out int16 TheSame) Is;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Document* Document) get_Document;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) SelectAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref Node Node) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref Node Node) Deselect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref Node Node, out BOOL IsSelected) IsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode) DisplayScopeNodePropertySheet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) DisplaySelectionPropertySheet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode) CopyScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) CopySelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode) DeleteScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) DeleteSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR NewName, VARIANT ScopeNode) RenameScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR NewName) RenameSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode, out ContextMenu* ContextMenu) get_ScopeNodeContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out ContextMenu* ContextMenu) get_SelectionContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, VARIANT ScopeNode) RefreshScopeNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) RefreshSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR MenuItemPath) ExecuteSelectionMenuItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR MenuItemPath, VARIANT ScopeNode) ExecuteScopeNodeMenuItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR Command, BSTR Directory, BSTR Parameters, BSTR WindowState) ExecuteShellCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Frame* Frame) get_Frame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out BOOL Visible) get_ScopeTreeVisible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BOOL Visible) put_ScopeTreeVisible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) Back;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self) Forward;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR StatusBarText) put_StatusBarText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out uint16* Memento) get_Memento;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR Memento) ViewMemento;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out Columns* Columns) get_Columns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, ref Node Node, int32 Column, out uint16* CellContents) get_CellContents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, BSTR File, _ExportListOptions exportoptions) ExportList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out _ListViewMode Mode) get_ListViewMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, _ListViewMode mode) put_ListViewMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref View self, out IDispatch* Control) get_ControlObject;
			}
		}
		[CRepr]
		public struct Nodes : IDispatch
		{
			public const new Guid IID = .(0x313b01df, 0xb22f, 0x4d42, 0xb1, 0xb8, 0x48, 0x3c, 0xdc, 0xf5, 0x1d, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HRESULT Item(int32 Index, out Node* Node) mut => VT.Item(ref this, Index, out Node);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Nodes self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Nodes self, int32 Index, out Node* Node) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Nodes self, out int32 Count) get_Count;
			}
		}
		[CRepr]
		public struct ContextMenu : IDispatch
		{
			public const new Guid IID = .(0xdab39ce0, 0x25e6, 0x4e07, 0x83, 0x62, 0xba, 0x9c, 0x95, 0x70, 0x65, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HRESULT get_Item(VARIANT IndexOrPath, out MenuItem* MenuItem) mut => VT.get_Item(ref this, IndexOrPath, out MenuItem);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextMenu self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextMenu self, VARIANT IndexOrPath, out MenuItem* MenuItem) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextMenu self, out int32 Count) get_Count;
			}
		}
		[CRepr]
		public struct MenuItem : IDispatch
		{
			public const new Guid IID = .(0x0178fad1, 0xb361, 0x4b27, 0x96, 0xad, 0x67, 0xc5, 0x7e, 0xbf, 0x2e, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(out uint16* DisplayName) mut => VT.get_DisplayName(ref this, out DisplayName);
			public HRESULT get_LanguageIndependentName(out uint16* LanguageIndependentName) mut => VT.get_LanguageIndependentName(ref this, out LanguageIndependentName);
			public HRESULT get_Path(out uint16* Path) mut => VT.get_Path(ref this, out Path);
			public HRESULT get_LanguageIndependentPath(out uint16* LanguageIndependentPath) mut => VT.get_LanguageIndependentPath(ref this, out LanguageIndependentPath);
			public HRESULT Execute() mut => VT.Execute(ref this);
			public HRESULT get_Enabled(out BOOL Enabled) mut => VT.get_Enabled(ref this, out Enabled);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self, out uint16* DisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self, out uint16* LanguageIndependentName) get_LanguageIndependentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self, out uint16* Path) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self, out uint16* LanguageIndependentPath) get_LanguageIndependentPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self) Execute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref MenuItem self, out BOOL Enabled) get_Enabled;
			}
		}
		[CRepr]
		public struct Properties : IDispatch
		{
			public const new Guid IID = .(0x2886abc2, 0xa425, 0x42b2, 0x91, 0xc6, 0xe2, 0x5c, 0x0e, 0x04, 0x58, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
			public HRESULT Item(BSTR Name, out Property* Property) mut => VT.Item(ref this, Name, out Property);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Remove(BSTR Name) mut => VT.Remove(ref this, Name);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Properties self, out IUnknown* retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Properties self, BSTR Name, out Property* Property) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Properties self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Properties self, BSTR Name) Remove;
			}
		}
		[CRepr]
		public struct Property : IDispatch
		{
			public const new Guid IID = .(0x4600c3a5, 0xe301, 0x41d8, 0xb6, 0xd0, 0xef, 0x2e, 0x42, 0x12, 0xe0, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT Value) mut => VT.get_Value(ref this, out Value);
			public HRESULT put_Value(VARIANT Value) mut => VT.put_Value(ref this, Value);
			public HRESULT get_Name(out uint16* Name) mut => VT.get_Name(ref this, out Name);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Property self, out VARIANT Value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Property self, VARIANT Value) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref Property self, out uint16* Name) get_Name;
			}
		}
		[CRepr]
		public struct IComponentData : IUnknown
		{
			public const new Guid IID = .(0x955ab28a, 0x5218, 0x11d0, 0xa9, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IUnknown pUnknown) mut => VT.Initialize(ref this, ref pUnknown);
			public HRESULT CreateComponent(out IComponentAlt* ppComponent) mut => VT.CreateComponent(ref this, out ppComponent);
			public HRESULT Notify(ref IDataObject lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) mut => VT.Notify(ref this, ref lpDataObject, event, arg, param3);
			public HRESULT Destroy() mut => VT.Destroy(ref this);
			public HRESULT QueryDataObject(int cookie, DATA_OBJECT_TYPES type, out IDataObject* ppDataObject) mut => VT.QueryDataObject(ref this, cookie, type, out ppDataObject);
			public HRESULT GetDisplayInfo(out SCOPEDATAITEM pScopeDataItem) mut => VT.GetDisplayInfo(ref this, out pScopeDataItem);
			public HRESULT CompareObjects(ref IDataObject lpDataObjectA, ref IDataObject lpDataObjectB) mut => VT.CompareObjects(ref this, ref lpDataObjectA, ref lpDataObjectB);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, ref IUnknown pUnknown) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, out IComponentAlt* ppComponent) CreateComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, ref IDataObject lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, int cookie, DATA_OBJECT_TYPES type, out IDataObject* ppDataObject) QueryDataObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, out SCOPEDATAITEM pScopeDataItem) GetDisplayInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData self, ref IDataObject lpDataObjectA, ref IDataObject lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IComponentAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb2, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IConsole lpConsole) mut => VT.Initialize(ref this, ref lpConsole);
			public HRESULT Notify(ref IDataObject lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) mut => VT.Notify(ref this, ref lpDataObject, event, arg, param3);
			public HRESULT Destroy(int cookie) mut => VT.Destroy(ref this, cookie);
			public HRESULT QueryDataObject(int cookie, DATA_OBJECT_TYPES type, out IDataObject* ppDataObject) mut => VT.QueryDataObject(ref this, cookie, type, out ppDataObject);
			public HRESULT GetResultViewType(int cookie, out PWSTR ppViewType, out int32 pViewOptions) mut => VT.GetResultViewType(ref this, cookie, out ppViewType, out pViewOptions);
			public HRESULT GetDisplayInfo(out RESULTDATAITEM pResultDataItem) mut => VT.GetDisplayInfo(ref this, out pResultDataItem);
			public HRESULT CompareObjects(ref IDataObject lpDataObjectA, ref IDataObject lpDataObjectB) mut => VT.CompareObjects(ref this, ref lpDataObjectA, ref lpDataObjectB);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, ref IConsole lpConsole) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, ref IDataObject lpDataObject, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param3) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, int cookie) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, int cookie, DATA_OBJECT_TYPES type, out IDataObject* ppDataObject) QueryDataObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, int cookie, out PWSTR ppViewType, out int32 pViewOptions) GetResultViewType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, out RESULTDATAITEM pResultDataItem) GetDisplayInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentAlt self, ref IDataObject lpDataObjectA, ref IDataObject lpDataObjectB) CompareObjects;
			}
		}
		[CRepr]
		public struct IResultDataCompare : IUnknown
		{
			public const new Guid IID = .(0xe8315a52, 0x7a1a, 0x11d0, 0xa2, 0xd2, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compare(LPARAM lUserParam, int cookieA, int cookieB, out int32 pnResult) mut => VT.Compare(ref this, lUserParam, cookieA, cookieB, out pnResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultDataCompare self, LPARAM lUserParam, int cookieA, int cookieB, out int32 pnResult) Compare;
			}
		}
		[CRepr]
		public struct IResultOwnerData : IUnknown
		{
			public const new Guid IID = .(0x9cb396d8, 0xea83, 0x11d0, 0xae, 0xf1, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindItem(ref RESULTFINDINFO pFindInfo, out int32 pnFoundIndex) mut => VT.FindItem(ref this, ref pFindInfo, out pnFoundIndex);
			public HRESULT CacheHint(int32 nStartIndex, int32 nEndIndex) mut => VT.CacheHint(ref this, nStartIndex, nEndIndex);
			public HRESULT SortItems(int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) mut => VT.SortItems(ref this, nColumn, dwSortOptions, lUserParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultOwnerData self, ref RESULTFINDINFO pFindInfo, out int32 pnFoundIndex) FindItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultOwnerData self, int32 nStartIndex, int32 nEndIndex) CacheHint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultOwnerData self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) SortItems;
			}
		}
		[CRepr]
		public struct IConsole : IUnknown
		{
			public const new Guid IID = .(0x43136eb1, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHeader(ref IHeaderCtrl pHeader) mut => VT.SetHeader(ref this, ref pHeader);
			public HRESULT SetToolbar(ref IToolbar pToolbar) mut => VT.SetToolbar(ref this, ref pToolbar);
			public HRESULT QueryResultView(out IUnknown* pUnknown) mut => VT.QueryResultView(ref this, out pUnknown);
			public HRESULT QueryScopeImageList(out IImageListAlt* ppImageList) mut => VT.QueryScopeImageList(ref this, out ppImageList);
			public HRESULT QueryResultImageList(out IImageListAlt* ppImageList) mut => VT.QueryResultImageList(ref this, out ppImageList);
			public HRESULT UpdateAllViews(ref IDataObject lpDataObject, LPARAM data, int hint) mut => VT.UpdateAllViews(ref this, ref lpDataObject, data, hint);
			public HRESULT MessageBox(PWSTR lpszText, PWSTR lpszTitle, uint32 fuStyle, out int32 piRetval) mut => VT.MessageBox(ref this, lpszText, lpszTitle, fuStyle, out piRetval);
			public HRESULT QueryConsoleVerb(out IConsoleVerb* ppConsoleVerb) mut => VT.QueryConsoleVerb(ref this, out ppConsoleVerb);
			public HRESULT SelectScopeItem(int hScopeItem) mut => VT.SelectScopeItem(ref this, hScopeItem);
			public HRESULT GetMainWindow(out HWND phwnd) mut => VT.GetMainWindow(ref this, out phwnd);
			public HRESULT NewWindow(int hScopeItem, uint32 lOptions) mut => VT.NewWindow(ref this, hScopeItem, lOptions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, ref IHeaderCtrl pHeader) SetHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, ref IToolbar pToolbar) SetToolbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, out IUnknown* pUnknown) QueryResultView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, out IImageListAlt* ppImageList) QueryScopeImageList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, out IImageListAlt* ppImageList) QueryResultImageList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, ref IDataObject lpDataObject, LPARAM data, int hint) UpdateAllViews;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, PWSTR lpszText, PWSTR lpszTitle, uint32 fuStyle, out int32 piRetval) MessageBox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, out IConsoleVerb* ppConsoleVerb) QueryConsoleVerb;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, int hScopeItem) SelectScopeItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, out HWND phwnd) GetMainWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole self, int hScopeItem, uint32 lOptions) NewWindow;
			}
		}
		[CRepr]
		public struct IHeaderCtrl : IUnknown
		{
			public const new Guid IID = .(0x43136eb3, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertColumn(int32 nCol, PWSTR title, int32 nFormat, int32 nWidth) mut => VT.InsertColumn(ref this, nCol, title, nFormat, nWidth);
			public HRESULT DeleteColumn(int32 nCol) mut => VT.DeleteColumn(ref this, nCol);
			public HRESULT SetColumnText(int32 nCol, PWSTR title) mut => VT.SetColumnText(ref this, nCol, title);
			public HRESULT GetColumnText(int32 nCol, out PWSTR pText) mut => VT.GetColumnText(ref this, nCol, out pText);
			public HRESULT SetColumnWidth(int32 nCol, int32 nWidth) mut => VT.SetColumnWidth(ref this, nCol, nWidth);
			public HRESULT GetColumnWidth(int32 nCol, out int32 pWidth) mut => VT.GetColumnWidth(ref this, nCol, out pWidth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol, PWSTR title, int32 nFormat, int32 nWidth) InsertColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol) DeleteColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol, PWSTR title) SetColumnText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol, out PWSTR pText) GetColumnText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol, int32 nWidth) SetColumnWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl self, int32 nCol, out int32 pWidth) GetColumnWidth;
			}
		}
		[CRepr]
		public struct IContextMenuCallback : IUnknown
		{
			public const new Guid IID = .(0x43136eb7, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddItem(ref CONTEXTMENUITEM pItem) mut => VT.AddItem(ref this, ref pItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuCallback self, ref CONTEXTMENUITEM pItem) AddItem;
			}
		}
		[CRepr]
		public struct IContextMenuProvider : IContextMenuCallback
		{
			public const new Guid IID = .(0x43136eb6, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EmptyMenuList() mut => VT.EmptyMenuList(ref this);
			public HRESULT AddPrimaryExtensionItems(ref IUnknown piExtension, ref IDataObject piDataObject) mut => VT.AddPrimaryExtensionItems(ref this, ref piExtension, ref piDataObject);
			public HRESULT AddThirdPartyExtensionItems(ref IDataObject piDataObject) mut => VT.AddThirdPartyExtensionItems(ref this, ref piDataObject);
			public HRESULT ShowContextMenu(HWND hwndParent, int32 xPos, int32 yPos, out int32 plSelected) mut => VT.ShowContextMenu(ref this, hwndParent, xPos, yPos, out plSelected);

			[CRepr]
			public struct VTable : IContextMenuCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuProvider self) EmptyMenuList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuProvider self, ref IUnknown piExtension, ref IDataObject piDataObject) AddPrimaryExtensionItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuProvider self, ref IDataObject piDataObject) AddThirdPartyExtensionItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuProvider self, HWND hwndParent, int32 xPos, int32 yPos, out int32 plSelected) ShowContextMenu;
			}
		}
		[CRepr]
		public struct IExtendContextMenu : IUnknown
		{
			public const new Guid IID = .(0x4f3b7a4f, 0xcfac, 0x11cf, 0xb8, 0xe3, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMenuItems(ref IDataObject piDataObject, ref IContextMenuCallback piCallback, out int32 pInsertionAllowed) mut => VT.AddMenuItems(ref this, ref piDataObject, ref piCallback, out pInsertionAllowed);
			public HRESULT Command(int32 lCommandID, ref IDataObject piDataObject) mut => VT.Command(ref this, lCommandID, ref piDataObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendContextMenu self, ref IDataObject piDataObject, ref IContextMenuCallback piCallback, out int32 pInsertionAllowed) AddMenuItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendContextMenu self, int32 lCommandID, ref IDataObject piDataObject) Command;
			}
		}
		[CRepr]
		public struct IImageListAlt : IUnknown
		{
			public const new Guid IID = .(0x43136eb8, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ImageListSetIcon(ref int pIcon, int32 nLoc) mut => VT.ImageListSetIcon(ref this, ref pIcon, nLoc);
			public HRESULT ImageListSetStrip(ref int pBMapSm, ref int pBMapLg, int32 nStartLoc, uint32 cMask) mut => VT.ImageListSetStrip(ref this, ref pBMapSm, ref pBMapLg, nStartLoc, cMask);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageListAlt self, ref int pIcon, int32 nLoc) ImageListSetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageListAlt self, ref int pBMapSm, ref int pBMapLg, int32 nStartLoc, uint32 cMask) ImageListSetStrip;
			}
		}
		[CRepr]
		public struct IResultData : IUnknown
		{
			public const new Guid IID = .(0x31da5fa0, 0xe0eb, 0x11cf, 0x9f, 0x21, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertItem(out RESULTDATAITEM item) mut => VT.InsertItem(ref this, out item);
			public HRESULT DeleteItem(int itemID, int32 nCol) mut => VT.DeleteItem(ref this, itemID, nCol);
			public HRESULT FindItemByLParam(LPARAM lParam, out int pItemID) mut => VT.FindItemByLParam(ref this, lParam, out pItemID);
			public HRESULT DeleteAllRsltItems() mut => VT.DeleteAllRsltItems(ref this);
			public HRESULT SetItem(ref RESULTDATAITEM item) mut => VT.SetItem(ref this, ref item);
			public HRESULT GetItem(out RESULTDATAITEM item) mut => VT.GetItem(ref this, out item);
			public HRESULT GetNextItem(out RESULTDATAITEM item) mut => VT.GetNextItem(ref this, out item);
			public HRESULT ModifyItemState(int32 nIndex, int itemID, uint32 uAdd, uint32 uRemove) mut => VT.ModifyItemState(ref this, nIndex, itemID, uAdd, uRemove);
			public HRESULT ModifyViewStyle(MMC_RESULT_VIEW_STYLE add, MMC_RESULT_VIEW_STYLE remove) mut => VT.ModifyViewStyle(ref this, add, remove);
			public HRESULT SetViewMode(int32 lViewMode) mut => VT.SetViewMode(ref this, lViewMode);
			public HRESULT GetViewMode(out int32 lViewMode) mut => VT.GetViewMode(ref this, out lViewMode);
			public HRESULT UpdateItem(int itemID) mut => VT.UpdateItem(ref this, itemID);
			public HRESULT Sort(int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) mut => VT.Sort(ref this, nColumn, dwSortOptions, lUserParam);
			public HRESULT SetDescBarText(PWSTR DescText) mut => VT.SetDescBarText(ref this, DescText);
			public HRESULT SetItemCount(int32 nItemCount, uint32 dwOptions) mut => VT.SetItemCount(ref this, nItemCount, dwOptions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, out RESULTDATAITEM item) InsertItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int itemID, int32 nCol) DeleteItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, LPARAM lParam, out int pItemID) FindItemByLParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self) DeleteAllRsltItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, ref RESULTDATAITEM item) SetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, out RESULTDATAITEM item) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, out RESULTDATAITEM item) GetNextItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int32 nIndex, int itemID, uint32 uAdd, uint32 uRemove) ModifyItemState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, MMC_RESULT_VIEW_STYLE add, MMC_RESULT_VIEW_STYLE remove) ModifyViewStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int32 lViewMode) SetViewMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, out int32 lViewMode) GetViewMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int itemID) UpdateItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int32 nColumn, uint32 dwSortOptions, LPARAM lUserParam) Sort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, PWSTR DescText) SetDescBarText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData self, int32 nItemCount, uint32 dwOptions) SetItemCount;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace : IUnknown
		{
			public const new Guid IID = .(0xbedeb620, 0xf24d, 0x11cf, 0x8a, 0xfc, 0x00, 0xaa, 0x00, 0x3c, 0xa9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertItem(out SCOPEDATAITEM item) mut => VT.InsertItem(ref this, out item);
			public HRESULT DeleteItem(int hItem, int32 fDeleteThis) mut => VT.DeleteItem(ref this, hItem, fDeleteThis);
			public HRESULT SetItem(ref SCOPEDATAITEM item) mut => VT.SetItem(ref this, ref item);
			public HRESULT GetItem(out SCOPEDATAITEM item) mut => VT.GetItem(ref this, out item);
			public HRESULT GetChildItem(int item, out int pItemChild, out int pCookie) mut => VT.GetChildItem(ref this, item, out pItemChild, out pCookie);
			public HRESULT GetNextItem(int item, out int pItemNext, out int pCookie) mut => VT.GetNextItem(ref this, item, out pItemNext, out pCookie);
			public HRESULT GetParentItem(int item, out int pItemParent, out int pCookie) mut => VT.GetParentItem(ref this, item, out pItemParent, out pCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, out SCOPEDATAITEM item) InsertItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, int hItem, int32 fDeleteThis) DeleteItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, ref SCOPEDATAITEM item) SetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, out SCOPEDATAITEM item) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, int item, out int pItemChild, out int pCookie) GetChildItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, int item, out int pItemNext, out int pCookie) GetNextItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace self, int item, out int pItemParent, out int pCookie) GetParentItem;
			}
		}
		[CRepr]
		public struct IConsoleNameSpace2 : IConsoleNameSpace
		{
			public const new Guid IID = .(0x255f18cc, 0x65db, 0x11d1, 0xa7, 0xdc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand(int hItem) mut => VT.Expand(ref this, hItem);
			public HRESULT AddExtension(int hItem, ref Guid lpClsid) mut => VT.AddExtension(ref this, hItem, ref lpClsid);

			[CRepr]
			public struct VTable : IConsoleNameSpace.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace2 self, int hItem) Expand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleNameSpace2 self, int hItem, ref Guid lpClsid) AddExtension;
			}
		}
		[CRepr]
		public struct IPropertySheetCallback : IUnknown
		{
			public const new Guid IID = .(0x85de64dd, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPage(HPROPSHEETPAGE hPage) mut => VT.AddPage(ref this, hPage);
			public HRESULT RemovePage(HPROPSHEETPAGE hPage) mut => VT.RemovePage(ref this, hPage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetCallback self, HPROPSHEETPAGE hPage) AddPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetCallback self, HPROPSHEETPAGE hPage) RemovePage;
			}
		}
		[CRepr]
		public struct IPropertySheetProvider : IUnknown
		{
			public const new Guid IID = .(0x85de64de, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertySheet(PWSTR title, uint8 type, int cookie, ref IDataObject pIDataObjectm, uint32 dwOptions) mut => VT.CreatePropertySheet(ref this, title, type, cookie, ref pIDataObjectm, dwOptions);
			public HRESULT FindPropertySheet(int hItem, ref IComponentAlt lpComponent, ref IDataObject lpDataObject) mut => VT.FindPropertySheet(ref this, hItem, ref lpComponent, ref lpDataObject);
			public HRESULT AddPrimaryPages(IUnknown* lpUnknown, BOOL bCreateHandle, HWND hNotifyWindow, BOOL bScopePane) mut => VT.AddPrimaryPages(ref this, lpUnknown, bCreateHandle, hNotifyWindow, bScopePane);
			public HRESULT AddExtensionPages() mut => VT.AddExtensionPages(ref this);
			public HRESULT Show(int window, int32 page) mut => VT.Show(ref this, window, page);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetProvider self, PWSTR title, uint8 type, int cookie, ref IDataObject pIDataObjectm, uint32 dwOptions) CreatePropertySheet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetProvider self, int hItem, ref IComponentAlt lpComponent, ref IDataObject lpDataObject) FindPropertySheet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetProvider self, IUnknown* lpUnknown, BOOL bCreateHandle, HWND hNotifyWindow, BOOL bScopePane) AddPrimaryPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetProvider self) AddExtensionPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySheetProvider self, int window, int32 page) Show;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet : IUnknown
		{
			public const new Guid IID = .(0x85de64dc, 0xef21, 0x11cf, 0xa2, 0x85, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertyPages(ref IPropertySheetCallback lpProvider, int handle, ref IDataObject lpIDataObject) mut => VT.CreatePropertyPages(ref this, ref lpProvider, handle, ref lpIDataObject);
			public HRESULT QueryPagesFor(ref IDataObject lpDataObject) mut => VT.QueryPagesFor(ref this, ref lpDataObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendPropertySheet self, ref IPropertySheetCallback lpProvider, int handle, ref IDataObject lpIDataObject) CreatePropertyPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendPropertySheet self, ref IDataObject lpDataObject) QueryPagesFor;
			}
		}
		[CRepr]
		public struct IControlbar : IUnknown
		{
			public const new Guid IID = .(0x69fb811e, 0x6c1c, 0x11d0, 0xa2, 0xcb, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(MMC_CONTROL_TYPE nType, ref IExtendControlbar pExtendControlbar, out IUnknown* ppUnknown) mut => VT.Create(ref this, nType, ref pExtendControlbar, out ppUnknown);
			public HRESULT Attach(MMC_CONTROL_TYPE nType, ref IUnknown lpUnknown) mut => VT.Attach(ref this, nType, ref lpUnknown);
			public HRESULT Detach(ref IUnknown lpUnknown) mut => VT.Detach(ref this, ref lpUnknown);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlbar self, MMC_CONTROL_TYPE nType, ref IExtendControlbar pExtendControlbar, out IUnknown* ppUnknown) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlbar self, MMC_CONTROL_TYPE nType, ref IUnknown lpUnknown) Attach;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlbar self, ref IUnknown lpUnknown) Detach;
			}
		}
		[CRepr]
		public struct IExtendControlbar : IUnknown
		{
			public const new Guid IID = .(0x49506520, 0x6f40, 0x11d0, 0xa9, 0x8b, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetControlbar(ref IControlbar pControlbar) mut => VT.SetControlbar(ref this, ref pControlbar);
			public HRESULT ControlbarNotify(MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param2) mut => VT.ControlbarNotify(ref this, event, arg, param2);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendControlbar self, ref IControlbar pControlbar) SetControlbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendControlbar self, MMC_NOTIFY_TYPE event, LPARAM arg, LPARAM param2) ControlbarNotify;
			}
		}
		[CRepr]
		public struct IToolbar : IUnknown
		{
			public const new Guid IID = .(0x43136eb9, 0xd36c, 0x11cf, 0xad, 0xbc, 0x00, 0xaa, 0x00, 0xa8, 0x00, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBitmap(int32 nImages, HBITMAP hbmp, int32 cxSize, int32 cySize, uint32 crMask) mut => VT.AddBitmap(ref this, nImages, hbmp, cxSize, cySize, crMask);
			public HRESULT AddButtons(int32 nButtons, ref MMCBUTTON lpButtons) mut => VT.AddButtons(ref this, nButtons, ref lpButtons);
			public HRESULT InsertButton(int32 nIndex, ref MMCBUTTON lpButton) mut => VT.InsertButton(ref this, nIndex, ref lpButton);
			public HRESULT DeleteButton(int32 nIndex) mut => VT.DeleteButton(ref this, nIndex);
			public HRESULT GetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, out BOOL pState) mut => VT.GetButtonState(ref this, idCommand, nState, out pState);
			public HRESULT SetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) mut => VT.SetButtonState(ref this, idCommand, nState, bState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 nImages, HBITMAP hbmp, int32 cxSize, int32 cySize, uint32 crMask) AddBitmap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 nButtons, ref MMCBUTTON lpButtons) AddButtons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 nIndex, ref MMCBUTTON lpButton) InsertButton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 nIndex) DeleteButton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 idCommand, MMC_BUTTON_STATE nState, out BOOL pState) GetButtonState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToolbar self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct IConsoleVerb : IUnknown
		{
			public const new Guid IID = .(0xe49f7a60, 0x74af, 0x11d0, 0xa2, 0x86, 0x00, 0xc0, 0x4f, 0xd8, 0xfe, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVerbState(MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, out BOOL pState) mut => VT.GetVerbState(ref this, eCmdID, nState, out pState);
			public HRESULT SetVerbState(MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL bState) mut => VT.SetVerbState(ref this, eCmdID, nState, bState);
			public HRESULT SetDefaultVerb(MMC_CONSOLE_VERB eCmdID) mut => VT.SetDefaultVerb(ref this, eCmdID);
			public HRESULT GetDefaultVerb(out MMC_CONSOLE_VERB peCmdID) mut => VT.GetDefaultVerb(ref this, out peCmdID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleVerb self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, out BOOL pState) GetVerbState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleVerb self, MMC_CONSOLE_VERB eCmdID, MMC_BUTTON_STATE nState, BOOL bState) SetVerbState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleVerb self, MMC_CONSOLE_VERB eCmdID) SetDefaultVerb;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsoleVerb self, out MMC_CONSOLE_VERB peCmdID) GetDefaultVerb;
			}
		}
		[CRepr]
		public struct ISnapinAbout : IUnknown
		{
			public const new Guid IID = .(0x1245208c, 0xa151, 0x11d0, 0xa7, 0xd7, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSnapinDescription(out PWSTR lpDescription) mut => VT.GetSnapinDescription(ref this, out lpDescription);
			public HRESULT GetProvider(out PWSTR lpName) mut => VT.GetProvider(ref this, out lpName);
			public HRESULT GetSnapinVersion(out PWSTR lpVersion) mut => VT.GetSnapinVersion(ref this, out lpVersion);
			public HRESULT GetSnapinImage(out HICON hAppIcon) mut => VT.GetSnapinImage(ref this, out hAppIcon);
			public HRESULT GetStaticFolderImage(out HBITMAP hSmallImage, out HBITMAP hSmallImageOpen, out HBITMAP hLargeImage, out uint32 cMask) mut => VT.GetStaticFolderImage(ref this, out hSmallImage, out hSmallImageOpen, out hLargeImage, out cMask);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinAbout self, out PWSTR lpDescription) GetSnapinDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinAbout self, out PWSTR lpName) GetProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinAbout self, out PWSTR lpVersion) GetSnapinVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinAbout self, out HICON hAppIcon) GetSnapinImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinAbout self, out HBITMAP hSmallImage, out HBITMAP hSmallImageOpen, out HBITMAP hLargeImage, out uint32 cMask) GetStaticFolderImage;
			}
		}
		[CRepr]
		public struct IMenuButton : IUnknown
		{
			public const new Guid IID = .(0x951ed750, 0xd080, 0x11d0, 0xb1, 0x97, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddButton(int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) mut => VT.AddButton(ref this, idCommand, lpButtonText, lpTooltipText);
			public HRESULT SetButton(int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) mut => VT.SetButton(ref this, idCommand, lpButtonText, lpTooltipText);
			public HRESULT SetButtonState(int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) mut => VT.SetButtonState(ref this, idCommand, nState, bState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuButton self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) AddButton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuButton self, int32 idCommand, PWSTR lpButtonText, PWSTR lpTooltipText) SetButton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuButton self, int32 idCommand, MMC_BUTTON_STATE nState, BOOL bState) SetButtonState;
			}
		}
		[CRepr]
		public struct ISnapinHelp : IUnknown
		{
			public const new Guid IID = .(0xa6b15ace, 0xdf59, 0x11d0, 0xa7, 0xdd, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHelpTopic(out PWSTR lpCompiledHelpFile) mut => VT.GetHelpTopic(ref this, out lpCompiledHelpFile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinHelp self, out PWSTR lpCompiledHelpFile) GetHelpTopic;
			}
		}
		[CRepr]
		public struct IExtendPropertySheet2 : IExtendPropertySheet
		{
			public const new Guid IID = .(0xb7a87232, 0x4a51, 0x11d1, 0xa7, 0xea, 0x00, 0xc0, 0x4f, 0xd9, 0x09, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWatermarks(ref IDataObject lpIDataObject, out HBITMAP lphWatermark, out HBITMAP lphHeader, out HPALETTE lphPalette, out BOOL bStretch) mut => VT.GetWatermarks(ref this, ref lpIDataObject, out lphWatermark, out lphHeader, out lphPalette, out bStretch);

			[CRepr]
			public struct VTable : IExtendPropertySheet.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendPropertySheet2 self, ref IDataObject lpIDataObject, out HBITMAP lphWatermark, out HBITMAP lphHeader, out HPALETTE lphPalette, out BOOL bStretch) GetWatermarks;
			}
		}
		[CRepr]
		public struct IHeaderCtrl2 : IHeaderCtrl
		{
			public const new Guid IID = .(0x9757abb8, 0x1b32, 0x11d1, 0xa7, 0xce, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetChangeTimeOut(uint32 uTimeout) mut => VT.SetChangeTimeOut(ref this, uTimeout);
			public HRESULT SetColumnFilter(uint32 nColumn, uint32 dwType, ref MMC_FILTERDATA pFilterData) mut => VT.SetColumnFilter(ref this, nColumn, dwType, ref pFilterData);
			public HRESULT GetColumnFilter(uint32 nColumn, out uint32 pdwType, out MMC_FILTERDATA pFilterData) mut => VT.GetColumnFilter(ref this, nColumn, out pdwType, out pFilterData);

			[CRepr]
			public struct VTable : IHeaderCtrl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl2 self, uint32 uTimeout) SetChangeTimeOut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl2 self, uint32 nColumn, uint32 dwType, ref MMC_FILTERDATA pFilterData) SetColumnFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHeaderCtrl2 self, uint32 nColumn, out uint32 pdwType, out MMC_FILTERDATA pFilterData) GetColumnFilter;
			}
		}
		[CRepr]
		public struct ISnapinHelp2 : ISnapinHelp
		{
			public const new Guid IID = .(0x4861a010, 0x20f9, 0x11d2, 0xa5, 0x10, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLinkedTopics(out PWSTR lpCompiledHelpFiles) mut => VT.GetLinkedTopics(ref this, out lpCompiledHelpFiles);

			[CRepr]
			public struct VTable : ISnapinHelp.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISnapinHelp2 self, out PWSTR lpCompiledHelpFiles) GetLinkedTopics;
			}
		}
		[CRepr]
		public struct IEnumTASK : IUnknown
		{
			public const new Guid IID = .(0x338698b1, 0x5a02, 0x11d1, 0x9f, 0xec, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, MMC_TASK* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumTASK* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTASK self, uint32 celt, MMC_TASK* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTASK self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTASK self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTASK self, out IEnumTASK* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IExtendTaskPad : IUnknown
		{
			public const new Guid IID = .(0x8dee6511, 0x554d, 0x11d1, 0x9f, 0xea, 0x00, 0x60, 0x08, 0x32, 0xdb, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TaskNotify(ref IDataObject pdo, ref VARIANT arg, ref VARIANT param2) mut => VT.TaskNotify(ref this, ref pdo, ref arg, ref param2);
			public HRESULT EnumTasks(ref IDataObject pdo, PWSTR szTaskGroup, out IEnumTASK* ppEnumTASK) mut => VT.EnumTasks(ref this, ref pdo, szTaskGroup, out ppEnumTASK);
			public HRESULT GetTitle(PWSTR pszGroup, out PWSTR pszTitle) mut => VT.GetTitle(ref this, pszGroup, out pszTitle);
			public HRESULT GetDescriptiveText(PWSTR pszGroup, out PWSTR pszDescriptiveText) mut => VT.GetDescriptiveText(ref this, pszGroup, out pszDescriptiveText);
			public HRESULT GetBackground(PWSTR pszGroup, out MMC_TASK_DISPLAY_OBJECT pTDO) mut => VT.GetBackground(ref this, pszGroup, out pTDO);
			public HRESULT GetListPadInfo(PWSTR pszGroup, out MMC_LISTPAD_INFO lpListPadInfo) mut => VT.GetListPadInfo(ref this, pszGroup, out lpListPadInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, ref IDataObject pdo, ref VARIANT arg, ref VARIANT param2) TaskNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, ref IDataObject pdo, PWSTR szTaskGroup, out IEnumTASK* ppEnumTASK) EnumTasks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, PWSTR pszGroup, out PWSTR pszTitle) GetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, PWSTR pszGroup, out PWSTR pszDescriptiveText) GetDescriptiveText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, PWSTR pszGroup, out MMC_TASK_DISPLAY_OBJECT pTDO) GetBackground;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendTaskPad self, PWSTR pszGroup, out MMC_LISTPAD_INFO lpListPadInfo) GetListPadInfo;
			}
		}
		[CRepr]
		public struct IConsole2 : IConsole
		{
			public const new Guid IID = .(0x103d842a, 0xaa63, 0x11d1, 0xa7, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand(int hItem, BOOL bExpand) mut => VT.Expand(ref this, hItem, bExpand);
			public HRESULT IsTaskpadViewPreferred() mut => VT.IsTaskpadViewPreferred(ref this);
			public HRESULT SetStatusText(PWSTR pszStatusText) mut => VT.SetStatusText(ref this, pszStatusText);

			[CRepr]
			public struct VTable : IConsole.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole2 self, int hItem, BOOL bExpand) Expand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole2 self) IsTaskpadViewPreferred;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole2 self, PWSTR pszStatusText) SetStatusText;
			}
		}
		[CRepr]
		public struct IDisplayHelp : IUnknown
		{
			public const new Guid IID = .(0xcc593830, 0xb926, 0x11d1, 0x80, 0x63, 0x00, 0x00, 0xf8, 0x75, 0xa9, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowTopic(PWSTR pszHelpTopic) mut => VT.ShowTopic(ref this, pszHelpTopic);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDisplayHelp self, PWSTR pszHelpTopic) ShowTopic;
			}
		}
		[CRepr]
		public struct IRequiredExtensions : IUnknown
		{
			public const new Guid IID = .(0x72782d7a, 0xa4a0, 0x11d1, 0xaf, 0x0f, 0x00, 0xc0, 0x4f, 0xb6, 0xdd, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableAllExtensions() mut => VT.EnableAllExtensions(ref this);
			public HRESULT GetFirstExtension(out Guid pExtCLSID) mut => VT.GetFirstExtension(ref this, out pExtCLSID);
			public HRESULT GetNextExtension(out Guid pExtCLSID) mut => VT.GetNextExtension(ref this, out pExtCLSID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRequiredExtensions self) EnableAllExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRequiredExtensions self, out Guid pExtCLSID) GetFirstExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRequiredExtensions self, out Guid pExtCLSID) GetNextExtension;
			}
		}
		[CRepr]
		public struct IStringTable : IUnknown
		{
			public const new Guid IID = .(0xde40b7a4, 0x0f65, 0x11d2, 0x8e, 0x25, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddString(PWSTR pszAdd, out uint32 pStringID) mut => VT.AddString(ref this, pszAdd, out pStringID);
			public HRESULT GetString(uint32 StringID, uint32 cchBuffer, char16* lpBuffer, out uint32 pcchOut) mut => VT.GetString(ref this, StringID, cchBuffer, lpBuffer, out pcchOut);
			public HRESULT GetStringLength(uint32 StringID, out uint32 pcchString) mut => VT.GetStringLength(ref this, StringID, out pcchString);
			public HRESULT DeleteString(uint32 StringID) mut => VT.DeleteString(ref this, StringID);
			public HRESULT DeleteAllStrings() mut => VT.DeleteAllStrings(ref this);
			public HRESULT FindString(PWSTR pszFind, out uint32 pStringID) mut => VT.FindString(ref this, pszFind, out pStringID);
			public HRESULT Enumerate(out IEnumString* ppEnum) mut => VT.Enumerate(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, PWSTR pszAdd, out uint32 pStringID) AddString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, uint32 StringID, uint32 cchBuffer, char16* lpBuffer, out uint32 pcchOut) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, uint32 StringID, out uint32 pcchString) GetStringLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, uint32 StringID) DeleteString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self) DeleteAllStrings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, PWSTR pszFind, out uint32 pStringID) FindString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStringTable self, out IEnumString* ppEnum) Enumerate;
			}
		}
		[CRepr]
		public struct IColumnData : IUnknown
		{
			public const new Guid IID = .(0x547c1354, 0x024d, 0x11d3, 0xa7, 0x07, 0x00, 0xc0, 0x4f, 0x8e, 0xf4, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetColumnConfigData(ref SColumnSetID pColID, ref MMC_COLUMN_SET_DATA pColSetData) mut => VT.SetColumnConfigData(ref this, ref pColID, ref pColSetData);
			public HRESULT GetColumnConfigData(ref SColumnSetID pColID, out MMC_COLUMN_SET_DATA* ppColSetData) mut => VT.GetColumnConfigData(ref this, ref pColID, out ppColSetData);
			public HRESULT SetColumnSortData(ref SColumnSetID pColID, ref MMC_SORT_SET_DATA pColSortData) mut => VT.SetColumnSortData(ref this, ref pColID, ref pColSortData);
			public HRESULT GetColumnSortData(ref SColumnSetID pColID, out MMC_SORT_SET_DATA* ppColSortData) mut => VT.GetColumnSortData(ref this, ref pColID, out ppColSortData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnData self, ref SColumnSetID pColID, ref MMC_COLUMN_SET_DATA pColSetData) SetColumnConfigData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnData self, ref SColumnSetID pColID, out MMC_COLUMN_SET_DATA* ppColSetData) GetColumnConfigData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnData self, ref SColumnSetID pColID, ref MMC_SORT_SET_DATA pColSortData) SetColumnSortData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnData self, ref SColumnSetID pColID, out MMC_SORT_SET_DATA* ppColSortData) GetColumnSortData;
			}
		}
		[CRepr]
		public struct IMessageView : IUnknown
		{
			public const new Guid IID = .(0x80f94174, 0xfccc, 0x11d2, 0xb9, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTitleText(PWSTR pszTitleText) mut => VT.SetTitleText(ref this, pszTitleText);
			public HRESULT SetBodyText(PWSTR pszBodyText) mut => VT.SetBodyText(ref this, pszBodyText);
			public HRESULT SetIcon(IconIdentifier id) mut => VT.SetIcon(ref this, id);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageView self, PWSTR pszTitleText) SetTitleText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageView self, PWSTR pszBodyText) SetBodyText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageView self, IconIdentifier id) SetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageView self) Clear;
			}
		}
		[CRepr]
		public struct IResultDataCompareEx : IUnknown
		{
			public const new Guid IID = .(0x96933476, 0x0251, 0x11d3, 0xae, 0xb0, 0x00, 0xc0, 0x4f, 0x8e, 0xcd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compare(ref RDCOMPARE prdc, out int32 pnResult) mut => VT.Compare(ref this, ref prdc, out pnResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultDataCompareEx self, ref RDCOMPARE prdc, out int32 pnResult) Compare;
			}
		}
		[CRepr]
		public struct IComponentData2 : IComponentData
		{
			public const new Guid IID = .(0xcca0f2d2, 0x82de, 0x41b5, 0xbf, 0x47, 0x3b, 0x20, 0x76, 0x27, 0x3d, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryDispatch(int cookie, DATA_OBJECT_TYPES type, out IDispatch* ppDispatch) mut => VT.QueryDispatch(ref this, cookie, type, out ppDispatch);

			[CRepr]
			public struct VTable : IComponentData.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentData2 self, int cookie, DATA_OBJECT_TYPES type, out IDispatch* ppDispatch) QueryDispatch;
			}
		}
		[CRepr]
		public struct IComponent2 : IComponentAlt
		{
			public const new Guid IID = .(0x79a2d615, 0x4a10, 0x4ed4, 0x8c, 0x65, 0x86, 0x33, 0xf9, 0x33, 0x50, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryDispatch(int cookie, DATA_OBJECT_TYPES type, out IDispatch* ppDispatch) mut => VT.QueryDispatch(ref this, cookie, type, out ppDispatch);
			public HRESULT GetResultViewType2(int cookie, out RESULT_VIEW_TYPE_INFO pResultViewType) mut => VT.GetResultViewType2(ref this, cookie, out pResultViewType);
			public HRESULT RestoreResultView(int cookie, ref RESULT_VIEW_TYPE_INFO pResultViewType) mut => VT.RestoreResultView(ref this, cookie, ref pResultViewType);

			[CRepr]
			public struct VTable : IComponentAlt.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponent2 self, int cookie, DATA_OBJECT_TYPES type, out IDispatch* ppDispatch) QueryDispatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponent2 self, int cookie, out RESULT_VIEW_TYPE_INFO pResultViewType) GetResultViewType2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponent2 self, int cookie, ref RESULT_VIEW_TYPE_INFO pResultViewType) RestoreResultView;
			}
		}
		[CRepr]
		public struct IContextMenuCallback2 : IUnknown
		{
			public const new Guid IID = .(0xe178bc0e, 0x2ed0, 0x4b5e, 0x80, 0x97, 0x42, 0xc9, 0x08, 0x7e, 0x8b, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddItem(ref CONTEXTMENUITEM2 pItem) mut => VT.AddItem(ref this, ref pItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuCallback2 self, ref CONTEXTMENUITEM2 pItem) AddItem;
			}
		}
		[CRepr]
		public struct IMMCVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xa8d2c5fe, 0xcdcb, 0x4b9d, 0xbd, 0xe5, 0xa2, 0x73, 0x43, 0xff, 0x54, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMMCVersion(out int32 pVersionMajor, out int32 pVersionMinor) mut => VT.GetMMCVersion(ref this, out pVersionMajor, out pVersionMinor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMCVersionInfo self, out int32 pVersionMajor, out int32 pVersionMinor) GetMMCVersion;
			}
		}
		[CRepr]
		public struct IExtendView : IUnknown
		{
			public const new Guid IID = .(0x89995cee, 0xd2ed, 0x4c0e, 0xae, 0x5e, 0xdf, 0x7e, 0x76, 0xf3, 0xfa, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetViews(ref IDataObject pDataObject, ref IViewExtensionCallback pViewExtensionCallback) mut => VT.GetViews(ref this, ref pDataObject, ref pViewExtensionCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtendView self, ref IDataObject pDataObject, ref IViewExtensionCallback pViewExtensionCallback) GetViews;
			}
		}
		[CRepr]
		public struct IViewExtensionCallback : IUnknown
		{
			public const new Guid IID = .(0x34dd928a, 0x7599, 0x41e5, 0x9f, 0x5e, 0xd6, 0xbc, 0x30, 0x62, 0xc2, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddView(ref MMC_EXT_VIEW_DATA pExtViewData) mut => VT.AddView(ref this, ref pExtViewData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewExtensionCallback self, ref MMC_EXT_VIEW_DATA pExtViewData) AddView;
			}
		}
		[CRepr]
		public struct IConsolePower : IUnknown
		{
			public const new Guid IID = .(0x1cfbdd0e, 0x62ca, 0x49ce, 0xa3, 0xaf, 0xdb, 0xb2, 0xde, 0x61, 0xb0, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetExecutionState(uint32 dwAdd, uint32 dwRemove) mut => VT.SetExecutionState(ref this, dwAdd, dwRemove);
			public HRESULT ResetIdleTimer(uint32 dwFlags) mut => VT.ResetIdleTimer(ref this, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsolePower self, uint32 dwAdd, uint32 dwRemove) SetExecutionState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsolePower self, uint32 dwFlags) ResetIdleTimer;
			}
		}
		[CRepr]
		public struct IConsolePowerSink : IUnknown
		{
			public const new Guid IID = .(0x3333759f, 0xfe4f, 0x4975, 0xb1, 0x43, 0xfe, 0xc0, 0xa5, 0xdd, 0x6d, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPowerBroadcast(uint32 nEvent, LPARAM lParam, out LRESULT plReturn) mut => VT.OnPowerBroadcast(ref this, nEvent, lParam, out plReturn);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsolePowerSink self, uint32 nEvent, LPARAM lParam, out LRESULT plReturn) OnPowerBroadcast;
			}
		}
		[CRepr]
		public struct INodeProperties : IUnknown
		{
			public const new Guid IID = .(0x15bc4d24, 0xa522, 0x4406, 0xaa, 0x55, 0x07, 0x49, 0x53, 0x7a, 0x68, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(ref IDataObject pDataObject, BSTR szPropertyName, out uint16* pbstrProperty) mut => VT.GetProperty(ref this, ref pDataObject, szPropertyName, out pbstrProperty);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INodeProperties self, ref IDataObject pDataObject, BSTR szPropertyName, out uint16* pbstrProperty) GetProperty;
			}
		}
		[CRepr]
		public struct IConsole3 : IConsole2
		{
			public const new Guid IID = .(0x4f85efdb, 0xd0e1, 0x498c, 0x8d, 0x4a, 0xd0, 0x10, 0xdf, 0xdd, 0x40, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameScopeItem(int hScopeItem) mut => VT.RenameScopeItem(ref this, hScopeItem);

			[CRepr]
			public struct VTable : IConsole2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConsole3 self, int hScopeItem) RenameScopeItem;
			}
		}
		[CRepr]
		public struct IResultData2 : IResultData
		{
			public const new Guid IID = .(0x0f36e0eb, 0xa7f1, 0x4a81, 0xbe, 0x5a, 0x92, 0x47, 0xf7, 0xde, 0x4b, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameResultItem(int itemID) mut => VT.RenameResultItem(ref this, itemID);

			[CRepr]
			public struct VTable : IResultData.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultData2 self, int itemID) RenameResultItem;
			}
		}
		
	}
}
