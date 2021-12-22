using System;

// namespace Media.LibrarySharingServices
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WindowsMediaLibrarySharingDeviceAuthorizationStatus : int32
		{
			DEVICE_AUTHORIZATION_UNKNOWN = 0,
			DEVICE_AUTHORIZATION_ALLOWED = 1,
			DEVICE_AUTHORIZATION_DENIED = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WindowsMediaLibrarySharingServices = .(0xad581b00, 0x7b64, 0x4e59, 0xa3, 0x8d, 0xd2, 0xc5, 0xbf, 0x51, 0xdd, 0xb3);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWindowsMediaLibrarySharingDeviceProperty : IDispatch
		{
			public const new Guid IID = .(0x81e26927, 0x7a7d, 0x40a7, 0x81, 0xd4, 0xbd, 0xdc, 0x02, 0x96, 0x0e, 0x3e);
			
			public function HRESULT(IWindowsMediaLibrarySharingDeviceProperty *self, BSTR* name) get_Name;
			public function HRESULT(IWindowsMediaLibrarySharingDeviceProperty *self, VARIANT* value) get_Value;
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDeviceProperties : IDispatch
		{
			public const new Guid IID = .(0xc4623214, 0x6b06, 0x40c5, 0xa6, 0x23, 0xb2, 0xff, 0x4c, 0x07, 0x6b, 0xfd);
			
			public function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, int32 index, IWindowsMediaLibrarySharingDeviceProperty** property) get_Item;
			public function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, int32* count) get_Count;
			public function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, BSTR name, IWindowsMediaLibrarySharingDeviceProperty** property) GetProperty;
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevice : IDispatch
		{
			public const new Guid IID = .(0x3dccc293, 0x4fd9, 0x4191, 0xa2, 0x5b, 0x8e, 0x57, 0xc5, 0xd2, 0x7b, 0xd4);
			
			public function HRESULT(IWindowsMediaLibrarySharingDevice *self, BSTR* deviceID) get_DeviceID;
			public function HRESULT(IWindowsMediaLibrarySharingDevice *self, WindowsMediaLibrarySharingDeviceAuthorizationStatus* authorization) get_Authorization;
			public function HRESULT(IWindowsMediaLibrarySharingDevice *self, WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) put_Authorization;
			public function HRESULT(IWindowsMediaLibrarySharingDevice *self, IWindowsMediaLibrarySharingDeviceProperties** deviceProperties) get_Properties;
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevices : IDispatch
		{
			public const new Guid IID = .(0x1803f9d6, 0xfe6d, 0x4546, 0xbf, 0x5b, 0x99, 0x2f, 0xe8, 0xec, 0x12, 0xd1);
			
			public function HRESULT(IWindowsMediaLibrarySharingDevices *self, int32 index, IWindowsMediaLibrarySharingDevice** device) get_Item;
			public function HRESULT(IWindowsMediaLibrarySharingDevices *self, int32* count) get_Count;
			public function HRESULT(IWindowsMediaLibrarySharingDevices *self, BSTR deviceID, IWindowsMediaLibrarySharingDevice** device) GetDevice;
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingServices : IDispatch
		{
			public const new Guid IID = .(0x01f5f85e, 0x0a81, 0x40da, 0xa7, 0xc8, 0x21, 0xef, 0x3a, 0xf8, 0x44, 0x0c);
			
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR device) showShareMediaCPL;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_userHomeMediaSharingState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_userHomeMediaSharingState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR* libraryName) get_userHomeMediaSharingLibraryName;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR libraryName) put_userHomeMediaSharingLibraryName;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingAllowed) get_computerHomeMediaSharingAllowedState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingAllowed) put_computerHomeMediaSharingAllowedState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_userInternetMediaSharingState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_userInternetMediaSharingState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingAllowed) get_computerInternetMediaSharingAllowedState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingAllowed) put_computerInternetMediaSharingAllowedState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR* securityGroup) get_internetMediaSharingSecurityGroup;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR securityGroup) put_internetMediaSharingSecurityGroup;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_allowSharingToAllDevices;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_allowSharingToAllDevices;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR MACAddresses, BSTR friendlyName, int16 authorization) setDefaultAuthorization;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR MACAddress, int16 authorizationState) setAuthorizationState;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, IWindowsMediaLibrarySharingDevices** devices) getAllDevices;
			public function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* customSettingsApplied) get_customSettingsApplied;
		}
		
	}
}
