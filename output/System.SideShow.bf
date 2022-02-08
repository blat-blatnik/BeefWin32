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
		
		public enum SIDESHOW_SCREEN_TYPE : int32
		{
			BITMAP = 0,
			TEXT = 1,
		}
		public enum SIDESHOW_COLOR_TYPE : int32
		{
			COLOR = 0,
			GREYSCALE = 1,
			BLACK_AND_WHITE = 2,
		}
		public enum SCF_EVENT_IDS : int32
		{
			NAVIGATION = 1,
			MENUACTION = 2,
			CONTEXTMENU = 3,
		}
		public enum SCF_BUTTON_IDS : int32
		{
			MENU = 1,
			SELECT = 2,
			UP = 3,
			DOWN = 4,
			LEFT = 5,
			RIGHT = 6,
			PLAY = 7,
			PAUSE = 8,
			FASTFORWARD = 9,
			REWIND = 10,
			STOP = 11,
			BACK = 65280,
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
		[CRepr, Packed(1)]
		public struct CONTENT_MISSING_EVENT_DATA
		{
			public uint32 cbContentMissingEventData;
			public Guid ApplicationId;
			public Guid EndpointId;
			public uint32 ContentId;
		}
		[CRepr, Packed(1)]
		public struct APPLICATION_EVENT_DATA
		{
			public uint32 cbApplicationEventData;
			public Guid ApplicationId;
			public Guid EndpointId;
			public uint32 dwEventId;
			public uint32 cbEventData;
			public uint8[0] bEventData;
		}
		[CRepr, Packed(1)]
		public struct DEVICE_USER_CHANGE_EVENT_DATA
		{
			public uint32 cbDeviceUserChangeEventData;
			public char16 wszUser;
		}
		[CRepr, Packed(1)]
		public struct NEW_EVENT_DATA_AVAILABLE
		{
			public uint32 cbNewEventDataAvailable;
			public uint32 dwVersion;
		}
		[CRepr, Packed(1)]
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterContent(ref Guid in_applicationId, ref Guid in_endpointId, ISideShowContentManager** out_ppIContent) mut => VT.RegisterContent(ref this, ref in_applicationId, ref in_endpointId, out_ppIContent);
			public HRESULT RegisterNotifications(ref Guid in_applicationId, ISideShowNotificationManager** out_ppINotification) mut => VT.RegisterNotifications(ref this, ref in_applicationId, out_ppINotification);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowSession self, ref Guid in_applicationId, ref Guid in_endpointId, ISideShowContentManager** out_ppIContent) RegisterContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowSession self, ref Guid in_applicationId, ISideShowNotificationManager** out_ppINotification) RegisterNotifications;
			}
		}
		[CRepr]
		public struct ISideShowNotificationManager : IUnknown
		{
			public const new Guid IID = .(0x63cea909, 0xf2b9, 0x4302, 0xb5, 0xe1, 0xc6, 0x8e, 0x6d, 0x9a, 0xb8, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(ISideShowNotification* in_pINotification) mut => VT.Show(ref this, in_pINotification);
			public HRESULT Revoke(uint32 in_notificationId) mut => VT.Revoke(ref this, in_notificationId);
			public HRESULT RevokeAll() mut => VT.RevokeAll(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotificationManager self, ISideShowNotification* in_pINotification) Show;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotificationManager self, uint32 in_notificationId) Revoke;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotificationManager self) RevokeAll;
			}
		}
		[CRepr]
		public struct ISideShowNotification : IUnknown
		{
			public const new Guid IID = .(0x03c93300, 0x8ab2, 0x41c5, 0x9b, 0x79, 0x46, 0x12, 0x7a, 0x30, 0xe1, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_NotificationId(out uint32 out_pNotificationId) mut => VT.get_NotificationId(ref this, out out_pNotificationId);
			public HRESULT put_NotificationId(uint32 in_notificationId) mut => VT.put_NotificationId(ref this, in_notificationId);
			public HRESULT get_Title(PWSTR* out_ppwszTitle) mut => VT.get_Title(ref this, out_ppwszTitle);
			public HRESULT put_Title(PWSTR in_pwszTitle) mut => VT.put_Title(ref this, in_pwszTitle);
			public HRESULT get_Message(PWSTR* out_ppwszMessage) mut => VT.get_Message(ref this, out_ppwszMessage);
			public HRESULT put_Message(PWSTR in_pwszMessage) mut => VT.put_Message(ref this, in_pwszMessage);
			public HRESULT get_Image(HICON* out_phIcon) mut => VT.get_Image(ref this, out_phIcon);
			public HRESULT put_Image(HICON in_hIcon) mut => VT.put_Image(ref this, in_hIcon);
			public HRESULT get_ExpirationTime(out SYSTEMTIME out_pTime) mut => VT.get_ExpirationTime(ref this, out out_pTime);
			public HRESULT put_ExpirationTime(SYSTEMTIME* in_pTime) mut => VT.put_ExpirationTime(ref this, in_pTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, out uint32 out_pNotificationId) get_NotificationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, uint32 in_notificationId) put_NotificationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, PWSTR* out_ppwszTitle) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, PWSTR in_pwszTitle) put_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, PWSTR* out_ppwszMessage) get_Message;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, PWSTR in_pwszMessage) put_Message;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, HICON* out_phIcon) get_Image;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, HICON in_hIcon) put_Image;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, out SYSTEMTIME out_pTime) get_ExpirationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowNotification self, SYSTEMTIME* in_pTime) put_ExpirationTime;
			}
		}
		[CRepr]
		public struct ISideShowContentManager : IUnknown
		{
			public const new Guid IID = .(0xa5d5b66b, 0xeef9, 0x41db, 0x8d, 0x7e, 0xe1, 0x7c, 0x33, 0xab, 0x10, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(ISideShowContent* in_pIContent) mut => VT.Add(ref this, in_pIContent);
			public HRESULT Remove(uint32 in_contentId) mut => VT.Remove(ref this, in_contentId);
			public HRESULT RemoveAll() mut => VT.RemoveAll(ref this);
			public HRESULT SetEventSink(ISideShowEvents* in_pIEvents) mut => VT.SetEventSink(ref this, in_pIEvents);
			public HRESULT GetDeviceCapabilities(ISideShowCapabilitiesCollection** out_ppCollection) mut => VT.GetDeviceCapabilities(ref this, out_ppCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContentManager self, ISideShowContent* in_pIContent) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContentManager self, uint32 in_contentId) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContentManager self) RemoveAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContentManager self, ISideShowEvents* in_pIEvents) SetEventSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContentManager self, ISideShowCapabilitiesCollection** out_ppCollection) GetDeviceCapabilities;
			}
		}
		[CRepr]
		public struct ISideShowContent : IUnknown
		{
			public const new Guid IID = .(0xc18552ed, 0x74ff, 0x4fec, 0xbe, 0x07, 0x4c, 0xfe, 0xd2, 0x9d, 0x48, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContent(ISideShowCapabilities* in_pICapabilities, out uint32 out_pdwSize, uint8** out_ppbData) mut => VT.GetContent(ref this, in_pICapabilities, out out_pdwSize, out_ppbData);
			public HRESULT get_ContentId(out uint32 out_pcontentId) mut => VT.get_ContentId(ref this, out out_pcontentId);
			public HRESULT get_DifferentiateContent(out BOOL out_pfDifferentiateContent) mut => VT.get_DifferentiateContent(ref this, out out_pfDifferentiateContent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContent self, ISideShowCapabilities* in_pICapabilities, out uint32 out_pdwSize, uint8** out_ppbData) GetContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContent self, out uint32 out_pcontentId) get_ContentId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowContent self, out BOOL out_pfDifferentiateContent) get_DifferentiateContent;
			}
		}
		[CRepr]
		public struct ISideShowEvents : IUnknown
		{
			public const new Guid IID = .(0x61feca4c, 0xdeb4, 0x4a7e, 0x8d, 0x75, 0x51, 0xf1, 0x13, 0x2d, 0x61, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ContentMissing(uint32 in_contentId, ISideShowContent** out_ppIContent) mut => VT.ContentMissing(ref this, in_contentId, out_ppIContent);
			public HRESULT ApplicationEvent(ISideShowCapabilities* in_pICapabilities, uint32 in_dwEventId, uint32 in_dwEventSize, uint8* in_pbEventData) mut => VT.ApplicationEvent(ref this, in_pICapabilities, in_dwEventId, in_dwEventSize, in_pbEventData);
			public HRESULT DeviceAdded(ISideShowCapabilities* in_pIDevice) mut => VT.DeviceAdded(ref this, in_pIDevice);
			public HRESULT DeviceRemoved(ISideShowCapabilities* in_pIDevice) mut => VT.DeviceRemoved(ref this, in_pIDevice);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowEvents self, uint32 in_contentId, ISideShowContent** out_ppIContent) ContentMissing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowEvents self, ISideShowCapabilities* in_pICapabilities, uint32 in_dwEventId, uint32 in_dwEventSize, uint8* in_pbEventData) ApplicationEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowEvents self, ISideShowCapabilities* in_pIDevice) DeviceAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowEvents self, ISideShowCapabilities* in_pIDevice) DeviceRemoved;
			}
		}
		[CRepr]
		public struct ISideShowCapabilities : IUnknown
		{
			public const new Guid IID = .(0x535e1379, 0xc09e, 0x4a54, 0xa5, 0x11, 0x59, 0x7b, 0xab, 0x3a, 0x72, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapability(in PROPERTYKEY in_keyCapability, out PROPVARIANT inout_pValue) mut => VT.GetCapability(ref this, in_keyCapability, out inout_pValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowCapabilities self, in PROPERTYKEY in_keyCapability, out PROPVARIANT inout_pValue) GetCapability;
			}
		}
		[CRepr]
		public struct ISideShowCapabilitiesCollection : IUnknown
		{
			public const new Guid IID = .(0x50305597, 0x5e0d, 0x4ff7, 0xb3, 0xaf, 0x33, 0xd0, 0xd9, 0xbd, 0x52, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 out_pdwCount) mut => VT.GetCount(ref this, out out_pdwCount);
			public HRESULT GetAt(uint32 in_dwIndex, ISideShowCapabilities** out_ppCapabilities) mut => VT.GetAt(ref this, in_dwIndex, out_ppCapabilities);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowCapabilitiesCollection self, out uint32 out_pdwCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowCapabilitiesCollection self, uint32 in_dwIndex, ISideShowCapabilities** out_ppCapabilities) GetAt;
			}
		}
		[CRepr]
		public struct ISideShowBulkCapabilities : ISideShowCapabilities
		{
			public const new Guid IID = .(0x3a2b7fbc, 0x3ad5, 0x48bd, 0xbb, 0xf1, 0x0e, 0x6c, 0xfb, 0xd1, 0x08, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapabilities(ISideShowKeyCollection* in_keyCollection, ISideShowPropVariantCollection** inout_pValues) mut => VT.GetCapabilities(ref this, in_keyCollection, inout_pValues);

			[CRepr]
			public struct VTable : ISideShowCapabilities.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowBulkCapabilities self, ISideShowKeyCollection* in_keyCollection, ISideShowPropVariantCollection** inout_pValues) GetCapabilities;
			}
		}
		[CRepr]
		public struct ISideShowKeyCollection : IUnknown
		{
			public const new Guid IID = .(0x045473bc, 0xa37b, 0x4957, 0xb1, 0x44, 0x68, 0x10, 0x54, 0x11, 0xed, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(in PROPERTYKEY Key) mut => VT.Add(ref this, Key);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT GetAt(uint32 dwIndex, out PROPERTYKEY pKey) mut => VT.GetAt(ref this, dwIndex, out pKey);
			public HRESULT GetCount(ref uint32 pcElems) mut => VT.GetCount(ref this, ref pcElems);
			public HRESULT RemoveAt(uint32 dwIndex) mut => VT.RemoveAt(ref this, dwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowKeyCollection self, in PROPERTYKEY Key) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowKeyCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowKeyCollection self, uint32 dwIndex, out PROPERTYKEY pKey) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowKeyCollection self, ref uint32 pcElems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowKeyCollection self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct ISideShowPropVariantCollection : IUnknown
		{
			public const new Guid IID = .(0x2ea7a549, 0x7bff, 0x4aae, 0xba, 0xb0, 0x22, 0xd4, 0x31, 0x11, 0xde, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(in PROPVARIANT pValue) mut => VT.Add(ref this, pValue);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT GetAt(uint32 dwIndex, out PROPVARIANT pValue) mut => VT.GetAt(ref this, dwIndex, out pValue);
			public HRESULT GetCount(ref uint32 pcElems) mut => VT.GetCount(ref this, ref pcElems);
			public HRESULT RemoveAt(uint32 dwIndex) mut => VT.RemoveAt(ref this, dwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowPropVariantCollection self, in PROPVARIANT pValue) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowPropVariantCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowPropVariantCollection self, uint32 dwIndex, out PROPVARIANT pValue) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowPropVariantCollection self, ref uint32 pcElems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISideShowPropVariantCollection self, uint32 dwIndex) RemoveAt;
			}
		}
		
	}
}
