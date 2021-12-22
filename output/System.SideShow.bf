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
		
		[CRepr]
		public struct ISideShowSession : IUnknown
		{
			public const new Guid IID = .(0xe22331ee, 0x9e7d, 0x4922, 0x9f, 0xc2, 0xab, 0x7a, 0xa4, 0x1c, 0xe4, 0x91);
			
			public function HRESULT(ISideShowSession *self, Guid* in_applicationId, Guid* in_endpointId, ISideShowContentManager** out_ppIContent) RegisterContent;
			public function HRESULT(ISideShowSession *self, Guid* in_applicationId, ISideShowNotificationManager** out_ppINotification) RegisterNotifications;
		}
		[CRepr]
		public struct ISideShowNotificationManager : IUnknown
		{
			public const new Guid IID = .(0x63cea909, 0xf2b9, 0x4302, 0xb5, 0xe1, 0xc6, 0x8e, 0x6d, 0x9a, 0xb8, 0x33);
			
			public function HRESULT(ISideShowNotificationManager *self, ISideShowNotification* in_pINotification) Show;
			public function HRESULT(ISideShowNotificationManager *self, uint32 in_notificationId) Revoke;
			public function HRESULT(ISideShowNotificationManager *self) RevokeAll;
		}
		[CRepr]
		public struct ISideShowNotification : IUnknown
		{
			public const new Guid IID = .(0x03c93300, 0x8ab2, 0x41c5, 0x9b, 0x79, 0x46, 0x12, 0x7a, 0x30, 0xe1, 0x48);
			
			public function HRESULT(ISideShowNotification *self, uint32* out_pNotificationId) get_NotificationId;
			public function HRESULT(ISideShowNotification *self, uint32 in_notificationId) put_NotificationId;
			public function HRESULT(ISideShowNotification *self, PWSTR* out_ppwszTitle) get_Title;
			public function HRESULT(ISideShowNotification *self, PWSTR in_pwszTitle) put_Title;
			public function HRESULT(ISideShowNotification *self, PWSTR* out_ppwszMessage) get_Message;
			public function HRESULT(ISideShowNotification *self, PWSTR in_pwszMessage) put_Message;
			public function HRESULT(ISideShowNotification *self, HICON* out_phIcon) get_Image;
			public function HRESULT(ISideShowNotification *self, HICON in_hIcon) put_Image;
			public function HRESULT(ISideShowNotification *self, SYSTEMTIME* out_pTime) get_ExpirationTime;
			public function HRESULT(ISideShowNotification *self, SYSTEMTIME* in_pTime) put_ExpirationTime;
		}
		[CRepr]
		public struct ISideShowContentManager : IUnknown
		{
			public const new Guid IID = .(0xa5d5b66b, 0xeef9, 0x41db, 0x8d, 0x7e, 0xe1, 0x7c, 0x33, 0xab, 0x10, 0xb0);
			
			public function HRESULT(ISideShowContentManager *self, ISideShowContent* in_pIContent) Add;
			public function HRESULT(ISideShowContentManager *self, uint32 in_contentId) Remove;
			public function HRESULT(ISideShowContentManager *self) RemoveAll;
			public function HRESULT(ISideShowContentManager *self, ISideShowEvents* in_pIEvents) SetEventSink;
			public function HRESULT(ISideShowContentManager *self, ISideShowCapabilitiesCollection** out_ppCollection) GetDeviceCapabilities;
		}
		[CRepr]
		public struct ISideShowContent : IUnknown
		{
			public const new Guid IID = .(0xc18552ed, 0x74ff, 0x4fec, 0xbe, 0x07, 0x4c, 0xfe, 0xd2, 0x9d, 0x48, 0x87);
			
			public function HRESULT(ISideShowContent *self, ISideShowCapabilities* in_pICapabilities, uint32* out_pdwSize, uint8** out_ppbData) GetContent;
			public function HRESULT(ISideShowContent *self, uint32* out_pcontentId) get_ContentId;
			public function HRESULT(ISideShowContent *self, BOOL* out_pfDifferentiateContent) get_DifferentiateContent;
		}
		[CRepr]
		public struct ISideShowEvents : IUnknown
		{
			public const new Guid IID = .(0x61feca4c, 0xdeb4, 0x4a7e, 0x8d, 0x75, 0x51, 0xf1, 0x13, 0x2d, 0x61, 0x5b);
			
			public function HRESULT(ISideShowEvents *self, uint32 in_contentId, ISideShowContent** out_ppIContent) ContentMissing;
			public function HRESULT(ISideShowEvents *self, ISideShowCapabilities* in_pICapabilities, uint32 in_dwEventId, uint32 in_dwEventSize, uint8* in_pbEventData) ApplicationEvent;
			public function HRESULT(ISideShowEvents *self, ISideShowCapabilities* in_pIDevice) DeviceAdded;
			public function HRESULT(ISideShowEvents *self, ISideShowCapabilities* in_pIDevice) DeviceRemoved;
		}
		[CRepr]
		public struct ISideShowCapabilities : IUnknown
		{
			public const new Guid IID = .(0x535e1379, 0xc09e, 0x4a54, 0xa5, 0x11, 0x59, 0x7b, 0xab, 0x3a, 0x72, 0xb8);
			
			public function HRESULT(ISideShowCapabilities *self, PROPERTYKEY* in_keyCapability, PROPVARIANT* inout_pValue) GetCapability;
		}
		[CRepr]
		public struct ISideShowCapabilitiesCollection : IUnknown
		{
			public const new Guid IID = .(0x50305597, 0x5e0d, 0x4ff7, 0xb3, 0xaf, 0x33, 0xd0, 0xd9, 0xbd, 0x52, 0xdd);
			
			public function HRESULT(ISideShowCapabilitiesCollection *self, uint32* out_pdwCount) GetCount;
			public function HRESULT(ISideShowCapabilitiesCollection *self, uint32 in_dwIndex, ISideShowCapabilities** out_ppCapabilities) GetAt;
		}
		[CRepr]
		public struct ISideShowBulkCapabilities : ISideShowCapabilities
		{
			public const new Guid IID = .(0x3a2b7fbc, 0x3ad5, 0x48bd, 0xbb, 0xf1, 0x0e, 0x6c, 0xfb, 0xd1, 0x08, 0x07);
			
			public function HRESULT(ISideShowBulkCapabilities *self, ISideShowKeyCollection* in_keyCollection, ISideShowPropVariantCollection** inout_pValues) GetCapabilities;
		}
		[CRepr]
		public struct ISideShowKeyCollection : IUnknown
		{
			public const new Guid IID = .(0x045473bc, 0xa37b, 0x4957, 0xb1, 0x44, 0x68, 0x10, 0x54, 0x11, 0xed, 0x8e);
			
			public function HRESULT(ISideShowKeyCollection *self, PROPERTYKEY* Key) Add;
			public function HRESULT(ISideShowKeyCollection *self) Clear;
			public function HRESULT(ISideShowKeyCollection *self, uint32 dwIndex, PROPERTYKEY* pKey) GetAt;
			public function HRESULT(ISideShowKeyCollection *self, uint32* pcElems) GetCount;
			public function HRESULT(ISideShowKeyCollection *self, uint32 dwIndex) RemoveAt;
		}
		[CRepr]
		public struct ISideShowPropVariantCollection : IUnknown
		{
			public const new Guid IID = .(0x2ea7a549, 0x7bff, 0x4aae, 0xba, 0xb0, 0x22, 0xd4, 0x31, 0x11, 0xde, 0x49);
			
			public function HRESULT(ISideShowPropVariantCollection *self, PROPVARIANT* pValue) Add;
			public function HRESULT(ISideShowPropVariantCollection *self) Clear;
			public function HRESULT(ISideShowPropVariantCollection *self, uint32 dwIndex, PROPVARIANT* pValue) GetAt;
			public function HRESULT(ISideShowPropVariantCollection *self, uint32* pcElems) GetCount;
			public function HRESULT(ISideShowPropVariantCollection *self, uint32 dwIndex) RemoveAt;
		}
		
	}
}
