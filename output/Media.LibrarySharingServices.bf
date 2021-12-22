using System;

// namespace Media.LibrarySharingServices
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum WindowsMediaLibrarySharingDeviceAuthorizationStatus : int32
		{
			UNKNOWN = 0,
			ALLOWED = 1,
			DENIED = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WindowsMediaLibrarySharingServices = .(0xad581b00, 0x7b64, 0x4e59, 0xa3, 0x8d, 0xd2, 0xc5, 0xbf, 0x51, 0xdd, 0xb3);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWindowsMediaLibrarySharingDeviceProperty : IDispatch
		{
			public const new Guid IID = .(0x81e26927, 0x7a7d, 0x40a7, 0x81, 0xd4, 0xbd, 0xdc, 0x02, 0x96, 0x0e, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_Value(VARIANT* value) mut
			{
				return VT.get_Value(&this, value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWindowsMediaLibrarySharingDeviceProperty *self, BSTR* name) get_Name;
				public new function HRESULT(IWindowsMediaLibrarySharingDeviceProperty *self, VARIANT* value) get_Value;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDeviceProperties : IDispatch
		{
			public const new Guid IID = .(0xc4623214, 0x6b06, 0x40c5, 0xa6, 0x23, 0xb2, 0xff, 0x4c, 0x07, 0x6b, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 index, IWindowsMediaLibrarySharingDeviceProperty** property) mut
			{
				return VT.get_Item(&this, index, property);
			}
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT GetProperty(BSTR name, IWindowsMediaLibrarySharingDeviceProperty** property) mut
			{
				return VT.GetProperty(&this, name, property);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, int32 index, IWindowsMediaLibrarySharingDeviceProperty** property) get_Item;
				public new function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, int32* count) get_Count;
				public new function HRESULT(IWindowsMediaLibrarySharingDeviceProperties *self, BSTR name, IWindowsMediaLibrarySharingDeviceProperty** property) GetProperty;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevice : IDispatch
		{
			public const new Guid IID = .(0x3dccc293, 0x4fd9, 0x4191, 0xa2, 0x5b, 0x8e, 0x57, 0xc5, 0xd2, 0x7b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DeviceID(BSTR* deviceID) mut
			{
				return VT.get_DeviceID(&this, deviceID);
			}
			public HRESULT get_Authorization(WindowsMediaLibrarySharingDeviceAuthorizationStatus* authorization) mut
			{
				return VT.get_Authorization(&this, authorization);
			}
			public HRESULT put_Authorization(WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) mut
			{
				return VT.put_Authorization(&this, authorization);
			}
			public HRESULT get_Properties(IWindowsMediaLibrarySharingDeviceProperties** deviceProperties) mut
			{
				return VT.get_Properties(&this, deviceProperties);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWindowsMediaLibrarySharingDevice *self, BSTR* deviceID) get_DeviceID;
				public new function HRESULT(IWindowsMediaLibrarySharingDevice *self, WindowsMediaLibrarySharingDeviceAuthorizationStatus* authorization) get_Authorization;
				public new function HRESULT(IWindowsMediaLibrarySharingDevice *self, WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) put_Authorization;
				public new function HRESULT(IWindowsMediaLibrarySharingDevice *self, IWindowsMediaLibrarySharingDeviceProperties** deviceProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevices : IDispatch
		{
			public const new Guid IID = .(0x1803f9d6, 0xfe6d, 0x4546, 0xbf, 0x5b, 0x99, 0x2f, 0xe8, 0xec, 0x12, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 index, IWindowsMediaLibrarySharingDevice** device) mut
			{
				return VT.get_Item(&this, index, device);
			}
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT GetDevice(BSTR deviceID, IWindowsMediaLibrarySharingDevice** device) mut
			{
				return VT.GetDevice(&this, deviceID, device);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWindowsMediaLibrarySharingDevices *self, int32 index, IWindowsMediaLibrarySharingDevice** device) get_Item;
				public new function HRESULT(IWindowsMediaLibrarySharingDevices *self, int32* count) get_Count;
				public new function HRESULT(IWindowsMediaLibrarySharingDevices *self, BSTR deviceID, IWindowsMediaLibrarySharingDevice** device) GetDevice;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingServices : IDispatch
		{
			public const new Guid IID = .(0x01f5f85e, 0x0a81, 0x40da, 0xa7, 0xc8, 0x21, 0xef, 0x3a, 0xf8, 0x44, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT showShareMediaCPL(BSTR device) mut
			{
				return VT.showShareMediaCPL(&this, device);
			}
			public HRESULT get_userHomeMediaSharingState(int16* sharingEnabled) mut
			{
				return VT.get_userHomeMediaSharingState(&this, sharingEnabled);
			}
			public HRESULT put_userHomeMediaSharingState(int16 sharingEnabled) mut
			{
				return VT.put_userHomeMediaSharingState(&this, sharingEnabled);
			}
			public HRESULT get_userHomeMediaSharingLibraryName(BSTR* libraryName) mut
			{
				return VT.get_userHomeMediaSharingLibraryName(&this, libraryName);
			}
			public HRESULT put_userHomeMediaSharingLibraryName(BSTR libraryName) mut
			{
				return VT.put_userHomeMediaSharingLibraryName(&this, libraryName);
			}
			public HRESULT get_computerHomeMediaSharingAllowedState(int16* sharingAllowed) mut
			{
				return VT.get_computerHomeMediaSharingAllowedState(&this, sharingAllowed);
			}
			public HRESULT put_computerHomeMediaSharingAllowedState(int16 sharingAllowed) mut
			{
				return VT.put_computerHomeMediaSharingAllowedState(&this, sharingAllowed);
			}
			public HRESULT get_userInternetMediaSharingState(int16* sharingEnabled) mut
			{
				return VT.get_userInternetMediaSharingState(&this, sharingEnabled);
			}
			public HRESULT put_userInternetMediaSharingState(int16 sharingEnabled) mut
			{
				return VT.put_userInternetMediaSharingState(&this, sharingEnabled);
			}
			public HRESULT get_computerInternetMediaSharingAllowedState(int16* sharingAllowed) mut
			{
				return VT.get_computerInternetMediaSharingAllowedState(&this, sharingAllowed);
			}
			public HRESULT put_computerInternetMediaSharingAllowedState(int16 sharingAllowed) mut
			{
				return VT.put_computerInternetMediaSharingAllowedState(&this, sharingAllowed);
			}
			public HRESULT get_internetMediaSharingSecurityGroup(BSTR* securityGroup) mut
			{
				return VT.get_internetMediaSharingSecurityGroup(&this, securityGroup);
			}
			public HRESULT put_internetMediaSharingSecurityGroup(BSTR securityGroup) mut
			{
				return VT.put_internetMediaSharingSecurityGroup(&this, securityGroup);
			}
			public HRESULT get_allowSharingToAllDevices(int16* sharingEnabled) mut
			{
				return VT.get_allowSharingToAllDevices(&this, sharingEnabled);
			}
			public HRESULT put_allowSharingToAllDevices(int16 sharingEnabled) mut
			{
				return VT.put_allowSharingToAllDevices(&this, sharingEnabled);
			}
			public HRESULT setDefaultAuthorization(BSTR MACAddresses, BSTR friendlyName, int16 authorization) mut
			{
				return VT.setDefaultAuthorization(&this, MACAddresses, friendlyName, authorization);
			}
			public HRESULT setAuthorizationState(BSTR MACAddress, int16 authorizationState) mut
			{
				return VT.setAuthorizationState(&this, MACAddress, authorizationState);
			}
			public HRESULT getAllDevices(IWindowsMediaLibrarySharingDevices** devices) mut
			{
				return VT.getAllDevices(&this, devices);
			}
			public HRESULT get_customSettingsApplied(int16* customSettingsApplied) mut
			{
				return VT.get_customSettingsApplied(&this, customSettingsApplied);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR device) showShareMediaCPL;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_userHomeMediaSharingState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_userHomeMediaSharingState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR* libraryName) get_userHomeMediaSharingLibraryName;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR libraryName) put_userHomeMediaSharingLibraryName;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingAllowed) get_computerHomeMediaSharingAllowedState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingAllowed) put_computerHomeMediaSharingAllowedState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_userInternetMediaSharingState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_userInternetMediaSharingState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingAllowed) get_computerInternetMediaSharingAllowedState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingAllowed) put_computerInternetMediaSharingAllowedState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR* securityGroup) get_internetMediaSharingSecurityGroup;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR securityGroup) put_internetMediaSharingSecurityGroup;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* sharingEnabled) get_allowSharingToAllDevices;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16 sharingEnabled) put_allowSharingToAllDevices;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR MACAddresses, BSTR friendlyName, int16 authorization) setDefaultAuthorization;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, BSTR MACAddress, int16 authorizationState) setAuthorizationState;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, IWindowsMediaLibrarySharingDevices** devices) getAllDevices;
				public new function HRESULT(IWindowsMediaLibrarySharingServices *self, int16* customSettingsApplied) get_customSettingsApplied;
			}
		}
		
	}
}
