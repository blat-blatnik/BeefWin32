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
		
		public enum UI_CONTEXTAVAILABILITY : int32
		{
			NOTAVAILABLE = 0,
			AVAILABLE = 1,
			ACTIVE = 2,
		}
		public enum UI_FONTPROPERTIES : int32
		{
			NOTAVAILABLE = 0,
			NOTSET = 1,
			SET = 2,
		}
		public enum UI_FONTVERTICALPOSITION : int32
		{
			NOTAVAILABLE = 0,
			NOTSET = 1,
			SUPERSCRIPT = 2,
			SUBSCRIPT = 3,
		}
		public enum UI_FONTUNDERLINE : int32
		{
			NOTAVAILABLE = 0,
			NOTSET = 1,
			SET = 2,
		}
		public enum UI_FONTDELTASIZE : int32
		{
			GROW = 0,
			SHRINK = 1,
		}
		public enum UI_CONTROLDOCK : int32
		{
			TOP = 1,
			BOTTOM = 3,
		}
		public enum UI_SWATCHCOLORTYPE : int32
		{
			NOCOLOR = 0,
			AUTOMATIC = 1,
			RGB = 2,
		}
		public enum UI_SWATCHCOLORMODE : int32
		{
			NORMAL = 0,
			MONOCHROME = 1,
		}
		public enum UI_EVENTTYPE : int32
		{
			ApplicationMenuOpened = 0,
			RibbonMinimized = 1,
			RibbonExpanded = 2,
			ApplicationModeSwitched = 3,
			TabActivated = 4,
			MenuOpened = 5,
			CommandExecuted = 6,
			TooltipShown = 7,
		}
		public enum UI_EVENTLOCATION : int32
		{
			Ribbon = 0,
			QAT = 1,
			ApplicationMenu = 2,
			ContextPopup = 3,
		}
		public enum UI_INVALIDATIONS : int32
		{
			STATE = 1,
			VALUE = 2,
			PROPERTY = 4,
			ALLPROPERTIES = 8,
		}
		public enum UI_COLLECTIONCHANGE : int32
		{
			INSERT = 0,
			REMOVE = 1,
			REPLACE = 2,
			RESET = 3,
		}
		public enum UI_EXECUTIONVERB : int32
		{
			EXECUTE = 0,
			PREVIEW = 1,
			CANCELPREVIEW = 2,
		}
		public enum UI_COMMANDTYPE : int32
		{
			UNKNOWN = 0,
			GROUP = 1,
			ACTION = 2,
			ANCHOR = 3,
			CONTEXT = 4,
			COLLECTION = 5,
			COMMANDCOLLECTION = 6,
			DECIMAL = 7,
			BOOLEAN = 8,
			FONT = 9,
			RECENTITEMS = 10,
			COLORANCHOR = 11,
			COLORCOLLECTION = 12,
		}
		public enum UI_VIEWTYPE : int32
		{
			UI_VIEWTYPE_RIBBON = 1,
		}
		public enum UI_VIEWVERB : int32
		{
			CREATE = 0,
			DESTROY = 1,
			SIZE = 2,
			ERROR = 3,
		}
		public enum UI_OWNERSHIP : int32
		{
			TRANSFER = 0,
			COPY = 1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValue(PROPERTYKEY* key, PROPVARIANT* value) mut
			{
				return VT.GetValue(&this, key, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUISimplePropertySet *self, PROPERTYKEY* key, PROPVARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct IUIRibbon : IUnknown
		{
			public const new Guid IID = .(0x803982ab, 0x370a, 0x4f7e, 0xa9, 0xe7, 0x87, 0x84, 0x03, 0x6a, 0x6e, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHeight(uint32* cy) mut
			{
				return VT.GetHeight(&this, cy);
			}
			public HRESULT LoadSettingsFromStream(IStream* pStream) mut
			{
				return VT.LoadSettingsFromStream(&this, pStream);
			}
			public HRESULT SaveSettingsToStream(IStream* pStream) mut
			{
				return VT.SaveSettingsToStream(&this, pStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIRibbon *self, uint32* cy) GetHeight;
				public new function HRESULT(IUIRibbon *self, IStream* pStream) LoadSettingsFromStream;
				public new function HRESULT(IUIRibbon *self, IStream* pStream) SaveSettingsToStream;
			}
		}
		[CRepr]
		public struct IUIFramework : IUnknown
		{
			public const new Guid IID = .(0xf4f0385d, 0x6872, 0x43a8, 0xad, 0x09, 0x4c, 0x33, 0x9c, 0xb3, 0xf5, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND frameWnd, IUIApplication* application) mut
			{
				return VT.Initialize(&this, frameWnd, application);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT LoadUI(HINSTANCE instance, PWSTR resourceName) mut
			{
				return VT.LoadUI(&this, instance, resourceName);
			}
			public HRESULT GetView(uint32 viewId, Guid* riid, void** ppv) mut
			{
				return VT.GetView(&this, viewId, riid, ppv);
			}
			public HRESULT GetUICommandProperty(uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) mut
			{
				return VT.GetUICommandProperty(&this, commandId, key, value);
			}
			public HRESULT SetUICommandProperty(uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) mut
			{
				return VT.SetUICommandProperty(&this, commandId, key, value);
			}
			public HRESULT InvalidateUICommand(uint32 commandId, UI_INVALIDATIONS flags, PROPERTYKEY* key) mut
			{
				return VT.InvalidateUICommand(&this, commandId, flags, key);
			}
			public HRESULT FlushPendingInvalidations() mut
			{
				return VT.FlushPendingInvalidations(&this);
			}
			public HRESULT SetModes(int32 iModes) mut
			{
				return VT.SetModes(&this, iModes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIFramework *self, HWND frameWnd, IUIApplication* application) Initialize;
				public new function HRESULT(IUIFramework *self) Destroy;
				public new function HRESULT(IUIFramework *self, HINSTANCE instance, PWSTR resourceName) LoadUI;
				public new function HRESULT(IUIFramework *self, uint32 viewId, Guid* riid, void** ppv) GetView;
				public new function HRESULT(IUIFramework *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) GetUICommandProperty;
				public new function HRESULT(IUIFramework *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* value) SetUICommandProperty;
				public new function HRESULT(IUIFramework *self, uint32 commandId, UI_INVALIDATIONS flags, PROPERTYKEY* key) InvalidateUICommand;
				public new function HRESULT(IUIFramework *self) FlushPendingInvalidations;
				public new function HRESULT(IUIFramework *self, int32 iModes) SetModes;
			}
		}
		[CRepr]
		public struct IUIEventLogger : IUnknown
		{
			public const new Guid IID = .(0xec3e1034, 0xdbf4, 0x41a1, 0x95, 0xd5, 0x03, 0xe0, 0xf1, 0x02, 0x6e, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnUIEvent(UI_EVENTPARAMS* pEventParams) mut
			{
				VT.OnUIEvent(&this, pEventParams);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IUIEventLogger *self, UI_EVENTPARAMS* pEventParams) OnUIEvent;
			}
		}
		[CRepr]
		public struct IUIEventingManager : IUnknown
		{
			public const new Guid IID = .(0x3be6ea7f, 0x9a9b, 0x4198, 0x93, 0x68, 0x9b, 0x0f, 0x92, 0x3b, 0xd5, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEventLogger(IUIEventLogger* eventLogger) mut
			{
				return VT.SetEventLogger(&this, eventLogger);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIEventingManager *self, IUIEventLogger* eventLogger) SetEventLogger;
			}
		}
		[CRepr]
		public struct IUIContextualUI : IUnknown
		{
			public const new Guid IID = .(0xeea11f37, 0x7c46, 0x437c, 0x8e, 0x55, 0xb5, 0x21, 0x22, 0xb2, 0x92, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowAtLocation(int32 x, int32 y) mut
			{
				return VT.ShowAtLocation(&this, x, y);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIContextualUI *self, int32 x, int32 y) ShowAtLocation;
			}
		}
		[CRepr]
		public struct IUICollection : IUnknown
		{
			public const new Guid IID = .(0xdf4f45bf, 0x6f9d, 0x4dd7, 0x9d, 0x68, 0xd8, 0xf9, 0xcd, 0x18, 0xc4, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetItem(uint32 index, IUnknown** item) mut
			{
				return VT.GetItem(&this, index, item);
			}
			public HRESULT Add(IUnknown* item) mut
			{
				return VT.Add(&this, item);
			}
			public HRESULT Insert(uint32 index, IUnknown* item) mut
			{
				return VT.Insert(&this, index, item);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT Replace(uint32 indexReplaced, IUnknown* itemReplaceWith) mut
			{
				return VT.Replace(&this, indexReplaced, itemReplaceWith);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUICollection *self, uint32* count) GetCount;
				public new function HRESULT(IUICollection *self, uint32 index, IUnknown** item) GetItem;
				public new function HRESULT(IUICollection *self, IUnknown* item) Add;
				public new function HRESULT(IUICollection *self, uint32 index, IUnknown* item) Insert;
				public new function HRESULT(IUICollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IUICollection *self, uint32 indexReplaced, IUnknown* itemReplaceWith) Replace;
				public new function HRESULT(IUICollection *self) Clear;
			}
		}
		[CRepr]
		public struct IUICollectionChangedEvent : IUnknown
		{
			public const new Guid IID = .(0x6502ae91, 0xa14d, 0x44b5, 0xbb, 0xd0, 0x62, 0xaa, 0xcc, 0x58, 0x1d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChanged(UI_COLLECTIONCHANGE action, uint32 oldIndex, IUnknown* oldItem, uint32 newIndex, IUnknown* newItem) mut
			{
				return VT.OnChanged(&this, action, oldIndex, oldItem, newIndex, newItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUICollectionChangedEvent *self, UI_COLLECTIONCHANGE action, uint32 oldIndex, IUnknown* oldItem, uint32 newIndex, IUnknown* newItem) OnChanged;
			}
		}
		[CRepr]
		public struct IUICommandHandler : IUnknown
		{
			public const new Guid IID = .(0x75ae0a2d, 0xdc03, 0x4c9f, 0x88, 0x83, 0x06, 0x96, 0x60, 0xd0, 0xbe, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Execute(uint32 commandId, UI_EXECUTIONVERB verb, PROPERTYKEY* key, PROPVARIANT* currentValue, IUISimplePropertySet* commandExecutionProperties) mut
			{
				return VT.Execute(&this, commandId, verb, key, currentValue, commandExecutionProperties);
			}
			public HRESULT UpdateProperty(uint32 commandId, PROPERTYKEY* key, PROPVARIANT* currentValue, PROPVARIANT* newValue) mut
			{
				return VT.UpdateProperty(&this, commandId, key, currentValue, newValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUICommandHandler *self, uint32 commandId, UI_EXECUTIONVERB verb, PROPERTYKEY* key, PROPVARIANT* currentValue, IUISimplePropertySet* commandExecutionProperties) Execute;
				public new function HRESULT(IUICommandHandler *self, uint32 commandId, PROPERTYKEY* key, PROPVARIANT* currentValue, PROPVARIANT* newValue) UpdateProperty;
			}
		}
		[CRepr]
		public struct IUIApplication : IUnknown
		{
			public const new Guid IID = .(0xd428903c, 0x729a, 0x491d, 0x91, 0x0d, 0x68, 0x2a, 0x08, 0xff, 0x25, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnViewChanged(uint32 viewId, UI_VIEWTYPE typeID, IUnknown* view, UI_VIEWVERB verb, int32 uReasonCode) mut
			{
				return VT.OnViewChanged(&this, viewId, typeID, view, verb, uReasonCode);
			}
			public HRESULT OnCreateUICommand(uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler** commandHandler) mut
			{
				return VT.OnCreateUICommand(&this, commandId, typeID, commandHandler);
			}
			public HRESULT OnDestroyUICommand(uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler* commandHandler) mut
			{
				return VT.OnDestroyUICommand(&this, commandId, typeID, commandHandler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIApplication *self, uint32 viewId, UI_VIEWTYPE typeID, IUnknown* view, UI_VIEWVERB verb, int32 uReasonCode) OnViewChanged;
				public new function HRESULT(IUIApplication *self, uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler** commandHandler) OnCreateUICommand;
				public new function HRESULT(IUIApplication *self, uint32 commandId, UI_COMMANDTYPE typeID, IUICommandHandler* commandHandler) OnDestroyUICommand;
			}
		}
		[CRepr]
		public struct IUIImage : IUnknown
		{
			public const new Guid IID = .(0x23c8c838, 0x4de6, 0x436b, 0xab, 0x01, 0x55, 0x54, 0xbb, 0x7c, 0x30, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBitmap(HBITMAP* bitmap) mut
			{
				return VT.GetBitmap(&this, bitmap);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIImage *self, HBITMAP* bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct IUIImageFromBitmap : IUnknown
		{
			public const new Guid IID = .(0x18aba7f3, 0x4c1c, 0x4ba2, 0xbf, 0x6c, 0xf5, 0xc3, 0x32, 0x6f, 0xa8, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateImage(HBITMAP bitmap, UI_OWNERSHIP options, IUIImage** image) mut
			{
				return VT.CreateImage(&this, bitmap, options, image);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIImageFromBitmap *self, HBITMAP bitmap, UI_OWNERSHIP options, IUIImage** image) CreateImage;
			}
		}
		
	}
}
