using System;

// namespace Devices.Enumeration.Pnp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT UPNP_E_ROOT_ELEMENT_EXPECTED = -2147220992;
		public const HRESULT UPNP_E_DEVICE_ELEMENT_EXPECTED = -2147220991;
		public const HRESULT UPNP_E_SERVICE_ELEMENT_EXPECTED = -2147220990;
		public const HRESULT UPNP_E_SERVICE_NODE_INCOMPLETE = -2147220989;
		public const HRESULT UPNP_E_DEVICE_NODE_INCOMPLETE = -2147220988;
		public const HRESULT UPNP_E_ICON_ELEMENT_EXPECTED = -2147220987;
		public const HRESULT UPNP_E_ICON_NODE_INCOMPLETE = -2147220986;
		public const HRESULT UPNP_E_INVALID_ACTION = -2147220985;
		public const HRESULT UPNP_E_INVALID_ARGUMENTS = -2147220984;
		public const HRESULT UPNP_E_OUT_OF_SYNC = -2147220983;
		public const HRESULT UPNP_E_ACTION_REQUEST_FAILED = -2147220976;
		public const HRESULT UPNP_E_TRANSPORT_ERROR = -2147220975;
		public const HRESULT UPNP_E_VARIABLE_VALUE_UNKNOWN = -2147220974;
		public const HRESULT UPNP_E_INVALID_VARIABLE = -2147220973;
		public const HRESULT UPNP_E_DEVICE_ERROR = -2147220972;
		public const HRESULT UPNP_E_PROTOCOL_ERROR = -2147220971;
		public const HRESULT UPNP_E_ERROR_PROCESSING_RESPONSE = -2147220970;
		public const HRESULT UPNP_E_DEVICE_TIMEOUT = -2147220969;
		public const HRESULT UPNP_E_INVALID_DOCUMENT = -2147220224;
		public const HRESULT UPNP_E_EVENT_SUBSCRIPTION_FAILED = -2147220223;
		public const uint32 FAULT_INVALID_ACTION = 401;
		public const uint32 FAULT_INVALID_ARG = 402;
		public const uint32 FAULT_INVALID_SEQUENCE_NUMBER = 403;
		public const uint32 FAULT_INVALID_VARIABLE = 404;
		public const uint32 FAULT_DEVICE_INTERNAL_ERROR = 501;
		public const uint32 FAULT_ACTION_SPECIFIC_BASE = 600;
		public const uint32 FAULT_ACTION_SPECIFIC_MAX = 899;
		public const HRESULT UPNP_E_ACTION_SPECIFIC_BASE = -2147220736;
		public const uint32 UPNP_ADDRESSFAMILY_IPv4 = 1;
		public const uint32 UPNP_ADDRESSFAMILY_IPv6 = 2;
		public const uint32 UPNP_ADDRESSFAMILY_BOTH = 3;
		public const uint32 UPNP_SERVICE_DELAY_SCPD_AND_SUBSCRIPTION = 1;
		public const HRESULT UPNP_E_REQUIRED_ELEMENT_ERROR = -2147180512;
		public const HRESULT UPNP_E_DUPLICATE_NOT_ALLOWED = -2147180511;
		public const HRESULT UPNP_E_DUPLICATE_SERVICE_ID = -2147180510;
		public const HRESULT UPNP_E_INVALID_DESCRIPTION = -2147180509;
		public const HRESULT UPNP_E_INVALID_SERVICE = -2147180508;
		public const HRESULT UPNP_E_INVALID_ICON = -2147180507;
		public const HRESULT UPNP_E_INVALID_XML = -2147180506;
		public const HRESULT UPNP_E_INVALID_ROOT_NAMESPACE = -2147180505;
		public const HRESULT UPNP_E_SUFFIX_TOO_LONG = -2147180504;
		public const HRESULT UPNP_E_URLBASE_PRESENT = -2147180503;
		public const HRESULT UPNP_E_VALUE_TOO_LONG = -2147180496;
		public const HRESULT UPNP_E_DEVICE_RUNNING = -2147180495;
		public const HRESULT UPNP_E_DEVICE_NOTREGISTERED = -2147180494;
		
		// --- Typedefs ---
		
		public typealias HSWDEVICE = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SW_DEVICE_CAPABILITIES : int32
		{
			SWDeviceCapabilitiesNone = 0,
			SWDeviceCapabilitiesRemovable = 1,
			SWDeviceCapabilitiesSilentInstall = 2,
			SWDeviceCapabilitiesNoDisplayInUI = 4,
			SWDeviceCapabilitiesDriverRequired = 8,
		}
		[AllowDuplicates]
		public enum SW_DEVICE_LIFETIME : int32
		{
			SWDeviceLifetimeHandle = 0,
			SWDeviceLifetimeParentPresent = 1,
			SWDeviceLifetimeMax = 2,
		}
		
		// --- Function Pointers ---
		
		public function void SW_DEVICE_CREATE_CALLBACK(HSWDEVICE hSwDevice, HRESULT CreateResult, void* pContext, PWSTR pszDeviceInstanceId);
		
		// --- Structs ---
		
		[CRepr]
		public struct SW_DEVICE_CREATE_INFO
		{
			public uint32 cbSize;
			public PWSTR pszInstanceId;
			public PWSTR pszzHardwareIds;
			public PWSTR pszzCompatibleIds;
			public Guid* pContainerId;
			public uint32 CapabilityFlags;
			public PWSTR pszDeviceDescription;
			public PWSTR pszDeviceLocation;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_UPnPDeviceFinder = .(0xe2085f28, 0xfeb7, 0x404a, 0xb8, 0xe7, 0xe6, 0x59, 0xbd, 0xea, 0xaa, 0x02);
		public const Guid CLSID_UPnPDevices = .(0xb9e84ffd, 0xad3c, 0x40a4, 0xb8, 0x35, 0x08, 0x82, 0xeb, 0xcb, 0xaa, 0xa8);
		public const Guid CLSID_UPnPDevice = .(0xa32552c5, 0xba61, 0x457a, 0xb5, 0x9a, 0xa2, 0x56, 0x1e, 0x12, 0x5e, 0x33);
		public const Guid CLSID_UPnPServices = .(0xc0bc4b4a, 0xa406, 0x4efc, 0x93, 0x2f, 0xb8, 0x54, 0x6b, 0x81, 0x00, 0xcc);
		public const Guid CLSID_UPnPService = .(0xc624ba95, 0xfbcb, 0x4409, 0x8c, 0x03, 0x8c, 0xce, 0xec, 0x53, 0x3e, 0xf1);
		public const Guid CLSID_UPnPDescriptionDocument = .(0x1d8a9b47, 0x3a28, 0x4ce2, 0x8a, 0x4b, 0xbd, 0x34, 0xe4, 0x5b, 0xce, 0xeb);
		public const Guid CLSID_UPnPDeviceFinderEx = .(0x181b54fc, 0x380b, 0x4a75, 0xb3, 0xf1, 0x4a, 0xc4, 0x5e, 0x96, 0x05, 0xb0);
		public const Guid CLSID_UPnPDescriptionDocumentEx = .(0x33fd0563, 0xd81a, 0x4393, 0x83, 0xcc, 0x01, 0x95, 0xb1, 0xda, 0x2f, 0x91);
		public const Guid CLSID_UPnPRegistrar = .(0x204810b9, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
		public const Guid CLSID_UPnPRemoteEndpointInfo = .(0x2e5e84e9, 0x4049, 0x4244, 0xb7, 0x28, 0x2d, 0x24, 0x22, 0x71, 0x57, 0xc7);
		
		// --- COM Interfaces ---
		
		public struct IUPnPDeviceFinder {}
		public struct IUPnPAddressFamilyControl {}
		public struct IUPnPHttpHeaderControl {}
		public struct IUPnPDeviceFinderCallback {}
		public struct IUPnPServices {}
		public struct IUPnPService {}
		public struct IUPnPAsyncResult {}
		public struct IUPnPServiceAsync {}
		public struct IUPnPServiceCallback {}
		public struct IUPnPServiceEnumProperty {}
		public struct IUPnPServiceDocumentAccess {}
		public struct IUPnPDevices {}
		public struct IUPnPDevice {}
		public struct IUPnPDeviceDocumentAccess {}
		public struct IUPnPDeviceDocumentAccessEx {}
		public struct IUPnPDescriptionDocument {}
		public struct IUPnPDeviceFinderAddCallbackWithInterface {}
		public struct IUPnPDescriptionDocumentCallback {}
		public struct IUPnPEventSink {}
		public struct IUPnPEventSource {}
		public struct IUPnPRegistrar {}
		public struct IUPnPReregistrar {}
		public struct IUPnPDeviceControl {}
		public struct IUPnPDeviceControlHttpHeaders {}
		public struct IUPnPDeviceProvider {}
		public struct IUPnPRemoteEndpointInfo {}
		
		// --- Functions ---
		
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceCreate(PWSTR pszEnumeratorName, PWSTR pszParentDeviceInstance, SW_DEVICE_CREATE_INFO* pCreateInfo, uint32 cPropertyCount, DEVPROPERTY* pProperties, SW_DEVICE_CREATE_CALLBACK pCallback, void* pContext, int* phSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwDeviceClose(HSWDEVICE hSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceSetLifetime(HSWDEVICE hSwDevice, SW_DEVICE_LIFETIME Lifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceGetLifetime(HSWDEVICE hSwDevice, SW_DEVICE_LIFETIME* pLifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDevicePropertySet(HSWDEVICE hSwDevice, uint32 cPropertyCount, DEVPROPERTY* pProperties);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceRegister(HSWDEVICE hSwDevice, Guid* pInterfaceClassGuid, PWSTR pszReferenceString, uint32 cPropertyCount, DEVPROPERTY* pProperties, BOOL fEnabled, PWSTR* ppszDeviceInterfaceId);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwMemFree(void* pMem);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceSetState(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, BOOL fEnabled);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfacePropertySet(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, uint32 cPropertyCount, DEVPROPERTY* pProperties);
		
	}
}
