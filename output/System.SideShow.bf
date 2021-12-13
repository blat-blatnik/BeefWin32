using System;

// namespace System.SideShow
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid SIDESHOW_ENDPOINT_SIMPLE_CONTENT_FORMAT = .(0xa9a5353f, 0x2d4b, 0x47ce, 0x93, 0xee, 0x75, 0x9f, 0x3a, 0x7d, 0xda, 0x4f);
		public const Guid SIDESHOW_ENDPOINT_ICAL = .(0x4dff36b5, 0x9dde, 0x4f76, 0x9a, 0x2a, 0x96, 0x43, 0x50, 0x47, 0x06, 0x3d);
		public const Guid SIDESHOW_CAPABILITY_DEVICE_PROPERTIES = .(0x8abc88a8, 0x857b, 0x4ad7, 0xa3, 0x5a, 0xb5, 0x94, 0x2f, 0x49, 0x2b, 0x99);
		public const Guid GUID_DEVINTERFACE_SIDESHOW = .(0x152e5811, 0xfeb9, 0x4b00, 0x90, 0xf4, 0xd3, 0x29, 0x47, 0xae, 0x16, 0x81);
		public const Guid SIDESHOW_CONTENT_MISSING_EVENT = .(0x5007fba8, 0xd313, 0x439f, 0xbe, 0xa2, 0xa5, 0x02, 0x01, 0xd3, 0xe9, 0xa8);
		public const Guid SIDESHOW_APPLICATION_EVENT = .(0x4cb572fa, 0x1d3b, 0x49b3, 0xa1, 0x7a, 0x2e, 0x6b, 0xff, 0x05, 0x28, 0x54);
		public const Guid SIDESHOW_USER_CHANGE_REQUEST_EVENT = .(0x5009673c, 0x3f7d, 0x4c7e, 0x99, 0x71, 0xea, 0xa2, 0xe9, 0x1f, 0x15, 0x75);
		public const Guid SIDESHOW_NEW_EVENT_DATA_AVAILABLE = .(0x57813854, 0x2fc1, 0x411c, 0xa5, 0x9f, 0xf2, 0x49, 0x27, 0x60, 0x88, 0x04);
		public const uint32 CONTENT_ID_GLANCE = 0;
		public const uint32 SIDESHOW_EVENTID_APPLICATION_ENTER = 4294901760;
		public const uint32 SIDESHOW_EVENTID_APPLICATION_EXIT = 4294901761;
		public const uint32 CONTENT_ID_HOME = 1;
		public const uint32 VERSION_1_WINDOWS_7 = 0;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SIDESHOW_SCREEN_TYPE : int32
		{
			SIDESHOW_SCREEN_TYPE_BITMAP = 0,
			SIDESHOW_SCREEN_TYPE_TEXT = 1,
		}
		[AllowDuplicates]
		public enum SIDESHOW_COLOR_TYPE : int32
		{
			SIDESHOW_COLOR_TYPE_COLOR = 0,
			SIDESHOW_COLOR_TYPE_GREYSCALE = 1,
			SIDESHOW_COLOR_TYPE_BLACK_AND_WHITE = 2,
		}
		[AllowDuplicates]
		public enum SCF_EVENT_IDS : int32
		{
			SCF_EVENT_NAVIGATION = 1,
			SCF_EVENT_MENUACTION = 2,
			SCF_EVENT_CONTEXTMENU = 3,
		}
		[AllowDuplicates]
		public enum SCF_BUTTON_IDS : int32
		{
			SCF_BUTTON_MENU = 1,
			SCF_BUTTON_SELECT = 2,
			SCF_BUTTON_UP = 3,
			SCF_BUTTON_DOWN = 4,
			SCF_BUTTON_LEFT = 5,
			SCF_BUTTON_RIGHT = 6,
			SCF_BUTTON_PLAY = 7,
			SCF_BUTTON_PAUSE = 8,
			SCF_BUTTON_FASTFORWARD = 9,
			SCF_BUTTON_REWIND = 10,
			SCF_BUTTON_STOP = 11,
			SCF_BUTTON_BACK = 65280,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SCF_EVENT_HEADER
		{
			public uint32 PreviousPage;
			public uint32 TargetPage;
		}
		[CRepr]
		public struct SCF_NAVIGATION_EVENT
		{
			public uint32 PreviousPage;
			public uint32 TargetPage;
			public uint32 Button;
		}
		[CRepr]
		public struct SCF_MENUACTION_EVENT
		{
			public uint32 PreviousPage;
			public uint32 TargetPage;
			public uint32 Button;
			public uint32 ItemId;
		}
		[CRepr]
		public struct SCF_CONTEXTMENU_EVENT
		{
			public uint32 PreviousPage;
			public uint32 TargetPage;
			public uint32 PreviousItemId;
			public uint32 MenuPage;
			public uint32 MenuItemId;
		}
		[CRepr]
		public struct CONTENT_MISSING_EVENT_DATA
		{
			public uint32 cbContentMissingEventData;
			public Guid ApplicationId;
			public Guid EndpointId;
			public uint32 ContentId;
		}
		[CRepr]
		public struct APPLICATION_EVENT_DATA
		{
			public uint32 cbApplicationEventData;
			public Guid ApplicationId;
			public Guid EndpointId;
			public uint32 dwEventId;
			public uint32 cbEventData;
			public uint8[] bEventData;
		}
		[CRepr]
		public struct DEVICE_USER_CHANGE_EVENT_DATA
		{
			public uint32 cbDeviceUserChangeEventData;
			public char16 wszUser;
		}
		[CRepr]
		public struct NEW_EVENT_DATA_AVAILABLE
		{
			public uint32 cbNewEventDataAvailable;
			public uint32 dwVersion;
		}
		[CRepr]
		public struct EVENT_DATA_HEADER
		{
			public uint32 cbEventDataHeader;
			public Guid guidEventType;
			public uint32 dwVersion;
			public uint32 cbEventDataSid;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SideShowSession = .(0xe20543b9, 0xf785, 0x4ea2, 0x98, 0x1e, 0xc4, 0xff, 0xa7, 0x6b, 0xbc, 0x7c);
		public const Guid CLSID_SideShowNotification = .(0x0ce3e86f, 0xd5cd, 0x4525, 0xa7, 0x66, 0x1a, 0xba, 0xb1, 0xa7, 0x52, 0xf5);
		public const Guid CLSID_SideShowKeyCollection = .(0xdfbbdbf8, 0x18de, 0x49b8, 0x83, 0xdc, 0xeb, 0xc7, 0x27, 0xc6, 0x2d, 0x94);
		public const Guid CLSID_SideShowPropVariantCollection = .(0xe640f415, 0x539e, 0x4923, 0x96, 0xcd, 0x5f, 0x09, 0x3b, 0xc2, 0x50, 0xcd);
		
		// --- COM Interfaces ---
		
		public struct ISideShowSession {}
		public struct ISideShowNotificationManager {}
		public struct ISideShowNotification {}
		public struct ISideShowContentManager {}
		public struct ISideShowContent {}
		public struct ISideShowEvents {}
		public struct ISideShowCapabilities {}
		public struct ISideShowCapabilitiesCollection {}
		public struct ISideShowBulkCapabilities {}
		public struct ISideShowKeyCollection {}
		public struct ISideShowPropVariantCollection {}
		
	}
}
