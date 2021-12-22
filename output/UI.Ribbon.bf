using System;

// namespace UI.Ribbon
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 UI_ALL_COMMANDS = 0;
		public const uint32 UI_COLLECTION_INVALIDINDEX = 4294967295;
		public const Guid LIBID_UIRibbon = .(0x942f35c2, 0xe83b, 0x45ef, 0xb0, 0x85, 0xac, 0x29, 0x5d, 0xd6, 0x3d, 0x5b);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum UI_CONTEXTAVAILABILITY : int32
		{
			UI_CONTEXTAVAILABILITY_NOTAVAILABLE = 0,
			UI_CONTEXTAVAILABILITY_AVAILABLE = 1,
			UI_CONTEXTAVAILABILITY_ACTIVE = 2,
		}
		[AllowDuplicates]
		public enum UI_FONTPROPERTIES : int32
		{
			UI_FONTPROPERTIES_NOTAVAILABLE = 0,
			UI_FONTPROPERTIES_NOTSET = 1,
			UI_FONTPROPERTIES_SET = 2,
		}
		[AllowDuplicates]
		public enum UI_FONTVERTICALPOSITION : int32
		{
			UI_FONTVERTICALPOSITION_NOTAVAILABLE = 0,
			UI_FONTVERTICALPOSITION_NOTSET = 1,
			UI_FONTVERTICALPOSITION_SUPERSCRIPT = 2,
			UI_FONTVERTICALPOSITION_SUBSCRIPT = 3,
		}
		[AllowDuplicates]
		public enum UI_FONTUNDERLINE : int32
		{
			UI_FONTUNDERLINE_NOTAVAILABLE = 0,
			UI_FONTUNDERLINE_NOTSET = 1,
			UI_FONTUNDERLINE_SET = 2,
		}
		[AllowDuplicates]
		public enum UI_FONTDELTASIZE : int32
		{
			UI_FONTDELTASIZE_GROW = 0,
			UI_FONTDELTASIZE_SHRINK = 1,
		}
		[AllowDuplicates]
		public enum UI_CONTROLDOCK : int32
		{
			UI_CONTROLDOCK_TOP = 1,
			UI_CONTROLDOCK_BOTTOM = 3,
		}
		[AllowDuplicates]
		public enum UI_SWATCHCOLORTYPE : int32
		{
			UI_SWATCHCOLORTYPE_NOCOLOR = 0,
			UI_SWATCHCOLORTYPE_AUTOMATIC = 1,
			UI_SWATCHCOLORTYPE_RGB = 2,
		}
		[AllowDuplicates]
		public enum UI_SWATCHCOLORMODE : int32
		{
			UI_SWATCHCOLORMODE_NORMAL = 0,
			UI_SWATCHCOLORMODE_MONOCHROME = 1,
		}
		[AllowDuplicates]
		public enum UI_EVENTTYPE : int32
		{
			UI_EVENTTYPE_ApplicationMenuOpened = 0,
			UI_EVENTTYPE_RibbonMinimized = 1,
			UI_EVENTTYPE_RibbonExpanded = 2,
			UI_EVENTTYPE_ApplicationModeSwitched = 3,
			UI_EVENTTYPE_TabActivated = 4,
			UI_EVENTTYPE_MenuOpened = 5,
			UI_EVENTTYPE_CommandExecuted = 6,
			UI_EVENTTYPE_TooltipShown = 7,
		}
		[AllowDuplicates]
		public enum UI_EVENTLOCATION : int32
		{
			UI_EVENTLOCATION_Ribbon = 0,
			UI_EVENTLOCATION_QAT = 1,
			UI_EVENTLOCATION_ApplicationMenu = 2,
			UI_EVENTLOCATION_ContextPopup = 3,
		}
		[AllowDuplicates]
		public enum UI_INVALIDATIONS : int32
		{
			UI_INVALIDATIONS_STATE = 1,
			UI_INVALIDATIONS_VALUE = 2,
			UI_INVALIDATIONS_PROPERTY = 4,
			UI_INVALIDATIONS_ALLPROPERTIES = 8,
		}
		[AllowDuplicates]
		public enum UI_COLLECTIONCHANGE : int32
		{
			UI_COLLECTIONCHANGE_INSERT = 0,
			UI_COLLECTIONCHANGE_REMOVE = 1,
			UI_COLLECTIONCHANGE_REPLACE = 2,
			UI_COLLECTIONCHANGE_RESET = 3,
		}
		[AllowDuplicates]
		public enum UI_EXECUTIONVERB : int32
		{
			UI_EXECUTIONVERB_EXECUTE = 0,
			UI_EXECUTIONVERB_PREVIEW = 1,
			UI_EXECUTIONVERB_CANCELPREVIEW = 2,
		}
		[AllowDuplicates]
		public enum UI_COMMANDTYPE : int32
		{
			UI_COMMANDTYPE_UNKNOWN = 0,
			UI_COMMANDTYPE_GROUP = 1,
			UI_COMMANDTYPE_ACTION = 2,
			UI_COMMANDTYPE_ANCHOR = 3,
			UI_COMMANDTYPE_CONTEXT = 4,
			UI_COMMANDTYPE_COLLECTION = 5,
			UI_COMMANDTYPE_COMMANDCOLLECTION = 6,
			UI_COMMANDTYPE_DECIMAL = 7,
			UI_COMMANDTYPE_BOOLEAN = 8,
			UI_COMMANDTYPE_FONT = 9,
			UI_COMMANDTYPE_RECENTITEMS = 10,
			UI_COMMANDTYPE_COLORANCHOR = 11,
			UI_COMMANDTYPE_COLORCOLLECTION = 12,
		}
		[AllowDuplicates]
		public enum UI_VIEWTYPE : int32
		{
			UI_VIEWTYPE_RIBBON = 1,
		}
		[AllowDuplicates]
		public enum UI_VIEWVERB : int32
		{
			UI_VIEWVERB_CREATE = 0,
			UI_VIEWVERB_DESTROY = 1,
			UI_VIEWVERB_SIZE = 2,
			UI_VIEWVERB_ERROR = 3,
		}
		[AllowDuplicates]
		public enum UI_OWNERSHIP : int32
		{
			UI_OWNERSHIP_TRANSFER = 0,
			UI_OWNERSHIP_COPY = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct UI_EVENTPARAMS_COMMAND
		{
			public uint32 CommandID;
			public PWSTR CommandName;
			public uint32 ParentCommandID;
			public PWSTR ParentCommandName;
			public uint32 SelectionIndex;
			public UI_EVENTLOCATION Location;
		}
		[CRepr]
		public struct UI_EVENTPARAMS
		{
			public UI_EVENTTYPE EventType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 Modes;
				public UI_EVENTPARAMS_COMMAND Params;
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_UIRibbonFramework = .(0x926749fa, 0x2615, 0x4987, 0x88, 0x45, 0xc3, 0x3e, 0x65, 0xf2, 0xb9, 0x57);
		public const Guid CLSID_UIRibbonImageFromBitmapFactory = .(0x0f7434b6, 0x59b6, 0x4250, 0x99, 0x9e, 0xd1, 0x68, 0xd6, 0xae, 0x42, 0x93);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUISimplePropertySet : IUnknown
		{
			public const new Guid IID = .(0xc205bb48, 0x5b1c, 0x4219, 0xa1, 0x06, 0x15, 0xbd, 0x0a, 0x5f, 0x24, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUISimplePropertySet *self, PROPERTYKEY* key, PROPVARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct IUIRibbon : IUnknown
		{
			public const new Guid IID = .(0x803982ab, 0x370a, 0x4f7e, 0xa9, 0xe7, 0x87, 0x84, 0x03, 0x6a, 0x6e, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIRibbon *self, uint32* cy) GetHeight;
				public function HRESULT(IUIRibbon *self, IStream* pStream) LoadSettingsFromStream;
				public function HRESULT(IUIRibbon *self, IStream* pStream) SaveSettingsToStream;
			}
		}
		[CRepr]
		public struct IUIFramework : IUnknown
		{
			public const new Guid IID = .(0xf4f0385d, 0x6872, 0x43a8, 0xad, 0x09, 0x4c, 0x33, 0x9c, 0xb3, 0xf5, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIFramework *self, HWND frameWnd, IUIApplication* application) Initialize;
				public function HRESULT(IUIFramework *self) Destroy;
				public function HRESULT(IUIFramework *self, HINSTANCE instance, PWSTR resourceName) LoadUI;
				public function HRESULT(IUIFramework *self, uint32 viewId, Guid* riid, void** ppv) GetView;
				public function HRESULT(IUIFramework *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) GetUICommandProperty;
				public function HRESULT(IUIFramework *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) SetUICommandProperty;
				public function HRESULT(IUIFramework *self, uint32 commandId, UI_INVALIDATIONS flags, PROPERTYKEY* key) InvalidateUICommand;
				public function HRESULT(IUIFramework *self) FlushPendingInvalidations;
				public function HRESULT(IUIFramework *self, int32 iModes) SetModes;
			}
		}
		[CRepr]
		public struct IUIEventLogger : IUnknown
		{
			public const new Guid IID = .(0xec3e1034, 0xdbf4, 0x41a1, 0x95, 0xd5, 0x03, 0xe0, 0xf1, 0x02, 0x6e, 0x05);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(IUIEventLogger *self, UI_EVENTPARAMS* pEventParams) OnUIEvent;
			}
		}
		[CRepr]
		public struct IUIEventingManager : IUnknown
		{
			public const new Guid IID = .(0x3be6ea7f, 0x9a9b, 0x4198, 0x93, 0x68, 0x9b, 0x0f, 0x92, 0x3b, 0xd5, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIEventingManager *self, IUIEventLogger* eventLogger) SetEventLogger;
			}
		}
		[CRepr]
		public struct IUIContextualUI : IUnknown
		{
			public const new Guid IID = .(0xeea11f37, 0x7c46, 0x437c, 0x8e, 0x55, 0xb5, 0x21, 0x22, 0xb2, 0x92, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIContextualUI *self, int32 x, int32 y) ShowAtLocation;
			}
		}
		[CRepr]
		public struct IUICollection : IUnknown
		{
			public const new Guid IID = .(0xdf4f45bf, 0x6f9d, 0x4dd7, 0x9d, 0x68, 0xd8, 0xf9, 0xcd, 0x18, 0xc4, 0xdb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUICollection *self, uint32* count) GetCount;
				public function HRESULT(IUICollection *self, uint32 index, IUnknown** item) GetItem;
				public function HRESULT(IUICollection *self, IUnknown* item) Add;
				public function HRESULT(IUICollection *self, uint32 index, IUnknown* item) Insert;
				public function HRESULT(IUICollection *self, uint32 index) RemoveAt;
				public function HRESULT(IUICollection *self, uint32 indexReplaced, IUnknown* itemReplaceWith) Replace;
				public function HRESULT(IUICollection *self) Clear;
			}
		}
		[CRepr]
		public struct IUICollectionChangedEvent : IUnknown
		{
			public const new Guid IID = .(0x6502ae91, 0xa14d, 0x44b5, 0xbb, 0xd0, 0x62, 0xaa, 0xcc, 0x58, 0x1d, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUICollectionChangedEvent *self, UI_COLLECTIONCHANGE action, uint32 oldIndex, IUnknown* oldItem, uint32 newIndex, IUnknown* newItem) OnChanged;
			}
		}
		[CRepr]
		public struct IUICommandHandler : IUnknown
		{
			public const new Guid IID = .(0x75ae0a2d, 0xdc03, 0x4c9f, 0x88, 0x83, 0x06, 0x96, 0x60, 0xd0, 0xbe, 0xb6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUICommandHandler *self, uint32 commandId, UI_EXECUTIONVERB verb, PROPERTYKEY* key, PROPVARIANT* currentValue, IUISimplePropertySet* commandExecutionProperties) Execute;
				public function HRESULT(IUICommandHandler *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* currentValue, PROPVARIANT* newValue) UpdateProperty;
			}
		}
		[CRepr]
		public struct IUIApplication : IUnknown
		{
			public const new Guid IID = .(0xd428903c, 0x729a, 0x491d, 0x91, 0x0d, 0x68, 0x2a, 0x08, 0xff, 0x25, 0x22);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIApplication *self, uint32 viewId, UI_VIEWTYPE typeID, IUnknown* view, UI_VIEWVERB verb, int32 uReasonCode) OnViewChanged;
				public function HRESULT(IUIApplication *self, uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler** commandHandler) OnCreateUICommand;
				public function HRESULT(IUIApplication *self, uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler* commandHandler) OnDestroyUICommand;
			}
		}
		[CRepr]
		public struct IUIImage : IUnknown
		{
			public const new Guid IID = .(0x23c8c838, 0x4de6, 0x436b, 0xab, 0x01, 0x55, 0x54, 0xbb, 0x7c, 0x30, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIImage *self, HBITMAP* bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct IUIImageFromBitmap : IUnknown
		{
			public const new Guid IID = .(0x18aba7f3, 0x4c1c, 0x4ba2, 0xbf, 0x6c, 0xf5, 0xc3, 0x32, 0x6f, 0xa8, 0x16);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIImageFromBitmap *self, HBITMAP bitmap, UI_OWNERSHIP options, IUIImage** image) CreateImage;
			}
		}
		
	}
}
