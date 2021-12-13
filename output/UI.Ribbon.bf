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
		
		public struct IUISimplePropertySet {}
		public struct IUIRibbon {}
		public struct IUIFramework {}
		public struct IUIEventLogger {}
		public struct IUIEventingManager {}
		public struct IUIContextualUI {}
		public struct IUICollection {}
		public struct IUICollectionChangedEvent {}
		public struct IUICommandHandler {}
		public struct IUIApplication {}
		public struct IUIImage {}
		public struct IUIImageFromBitmap {}
		
	}
}
