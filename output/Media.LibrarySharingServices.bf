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
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT get_Value(out VARIANT value) mut => VT.get_Value(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDeviceProperty self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDeviceProperty self, out VARIANT value) get_Value;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDeviceProperties : IDispatch
		{
			public const new Guid IID = .(0xc4623214, 0x6b06, 0x40c5, 0xa6, 0x23, 0xb2, 0xff, 0x4c, 0x07, 0x6b, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 index, out IWindowsMediaLibrarySharingDeviceProperty* property) mut => VT.get_Item(ref this, index, out property);
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT GetProperty(BSTR name, out IWindowsMediaLibrarySharingDeviceProperty* property) mut => VT.GetProperty(ref this, name, out property);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDeviceProperties self, int32 index, out IWindowsMediaLibrarySharingDeviceProperty* property) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDeviceProperties self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDeviceProperties self, BSTR name, out IWindowsMediaLibrarySharingDeviceProperty* property) GetProperty;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevice : IDispatch
		{
			public const new Guid IID = .(0x3dccc293, 0x4fd9, 0x4191, 0xa2, 0x5b, 0x8e, 0x57, 0xc5, 0xd2, 0x7b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DeviceID(out BSTR deviceID) mut => VT.get_DeviceID(ref this, out deviceID);
			public HRESULT get_Authorization(out WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) mut => VT.get_Authorization(ref this, out authorization);
			public HRESULT put_Authorization(WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) mut => VT.put_Authorization(ref this, authorization);
			public HRESULT get_Properties(out IWindowsMediaLibrarySharingDeviceProperties* deviceProperties) mut => VT.get_Properties(ref this, out deviceProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevice self, out BSTR deviceID) get_DeviceID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevice self, out WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) get_Authorization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevice self, WindowsMediaLibrarySharingDeviceAuthorizationStatus authorization) put_Authorization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevice self, out IWindowsMediaLibrarySharingDeviceProperties* deviceProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingDevices : IDispatch
		{
			public const new Guid IID = .(0x1803f9d6, 0xfe6d, 0x4546, 0xbf, 0x5b, 0x99, 0x2f, 0xe8, 0xec, 0x12, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 index, out IWindowsMediaLibrarySharingDevice* device) mut => VT.get_Item(ref this, index, out device);
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT GetDevice(BSTR deviceID, out IWindowsMediaLibrarySharingDevice* device) mut => VT.GetDevice(ref this, deviceID, out device);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevices self, int32 index, out IWindowsMediaLibrarySharingDevice* device) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevices self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingDevices self, BSTR deviceID, out IWindowsMediaLibrarySharingDevice* device) GetDevice;
			}
		}
		[CRepr]
		public struct IWindowsMediaLibrarySharingServices : IDispatch
		{
			public const new Guid IID = .(0x01f5f85e, 0x0a81, 0x40da, 0xa7, 0xc8, 0x21, 0xef, 0x3a, 0xf8, 0x44, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT showShareMediaCPL(BSTR device) mut => VT.showShareMediaCPL(ref this, device);
			public HRESULT get_userHomeMediaSharingState(out int16 sharingEnabled) mut => VT.get_userHomeMediaSharingState(ref this, out sharingEnabled);
			public HRESULT put_userHomeMediaSharingState(int16 sharingEnabled) mut => VT.put_userHomeMediaSharingState(ref this, sharingEnabled);
			public HRESULT get_userHomeMediaSharingLibraryName(out BSTR libraryName) mut => VT.get_userHomeMediaSharingLibraryName(ref this, out libraryName);
			public HRESULT put_userHomeMediaSharingLibraryName(BSTR libraryName) mut => VT.put_userHomeMediaSharingLibraryName(ref this, libraryName);
			public HRESULT get_computerHomeMediaSharingAllowedState(out int16 sharingAllowed) mut => VT.get_computerHomeMediaSharingAllowedState(ref this, out sharingAllowed);
			public HRESULT put_computerHomeMediaSharingAllowedState(int16 sharingAllowed) mut => VT.put_computerHomeMediaSharingAllowedState(ref this, sharingAllowed);
			public HRESULT get_userInternetMediaSharingState(out int16 sharingEnabled) mut => VT.get_userInternetMediaSharingState(ref this, out sharingEnabled);
			public HRESULT put_userInternetMediaSharingState(int16 sharingEnabled) mut => VT.put_userInternetMediaSharingState(ref this, sharingEnabled);
			public HRESULT get_computerInternetMediaSharingAllowedState(out int16 sharingAllowed) mut => VT.get_computerInternetMediaSharingAllowedState(ref this, out sharingAllowed);
			public HRESULT put_computerInternetMediaSharingAllowedState(int16 sharingAllowed) mut => VT.put_computerInternetMediaSharingAllowedState(ref this, sharingAllowed);
			public HRESULT get_internetMediaSharingSecurityGroup(out BSTR securityGroup) mut => VT.get_internetMediaSharingSecurityGroup(ref this, out securityGroup);
			public HRESULT put_internetMediaSharingSecurityGroup(BSTR securityGroup) mut => VT.put_internetMediaSharingSecurityGroup(ref this, securityGroup);
			public HRESULT get_allowSharingToAllDevices(out int16 sharingEnabled) mut => VT.get_allowSharingToAllDevices(ref this, out sharingEnabled);
			public HRESULT put_allowSharingToAllDevices(int16 sharingEnabled) mut => VT.put_allowSharingToAllDevices(ref this, sharingEnabled);
			public HRESULT setDefaultAuthorization(BSTR MACAddresses, BSTR friendlyName, int16 authorization) mut => VT.setDefaultAuthorization(ref this, MACAddresses, friendlyName, authorization);
			public HRESULT setAuthorizationState(BSTR MACAddress, int16 authorizationState) mut => VT.setAuthorizationState(ref this, MACAddress, authorizationState);
			public HRESULT getAllDevices(out IWindowsMediaLibrarySharingDevices* devices) mut => VT.getAllDevices(ref this, out devices);
			public HRESULT get_customSettingsApplied(out int16 customSettingsApplied) mut => VT.get_customSettingsApplied(ref this, out customSettingsApplied);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, BSTR device) showShareMediaCPL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 sharingEnabled) get_userHomeMediaSharingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, int16 sharingEnabled) put_userHomeMediaSharingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out BSTR libraryName) get_userHomeMediaSharingLibraryName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, BSTR libraryName) put_userHomeMediaSharingLibraryName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 sharingAllowed) get_computerHomeMediaSharingAllowedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, int16 sharingAllowed) put_computerHomeMediaSharingAllowedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 sharingEnabled) get_userInternetMediaSharingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, int16 sharingEnabled) put_userInternetMediaSharingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 sharingAllowed) get_computerInternetMediaSharingAllowedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, int16 sharingAllowed) put_computerInternetMediaSharingAllowedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out BSTR securityGroup) get_internetMediaSharingSecurityGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, BSTR securityGroup) put_internetMediaSharingSecurityGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 sharingEnabled) get_allowSharingToAllDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, int16 sharingEnabled) put_allowSharingToAllDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, BSTR MACAddresses, BSTR friendlyName, int16 authorization) setDefaultAuthorization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, BSTR MACAddress, int16 authorizationState) setAuthorizationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out IWindowsMediaLibrarySharingDevices* devices) getAllDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsMediaLibrarySharingServices self, out int16 customSettingsApplied) get_customSettingsApplied;
			}
		}
		
	}
}
