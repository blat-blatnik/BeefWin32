using System;

// namespace NetworkManagement.WindowsFirewall
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NETCON_MAX_NAME_LEN = 256;
		public const HRESULT S_OBJECT_NO_LONGER_VALID = 2;
		public const uint32 NETISO_GEID_FOR_WDAG = 1;
		public const uint32 NETISO_GEID_FOR_NEUTRAL_AWARE = 2;
		
		// --- Enums ---
		
		public enum NETCON_CHARACTERISTIC_FLAGS : int32
		{
			NONE = 0,
			ALL_USERS = 1,
			ALLOW_DUPLICATION = 2,
			ALLOW_REMOVAL = 4,
			ALLOW_RENAME = 8,
			INCOMING_ONLY = 32,
			OUTGOING_ONLY = 64,
			BRANDED = 128,
			SHARED = 256,
			BRIDGED = 512,
			FIREWALLED = 1024,
			DEFAULT = 2048,
			HOMENET_CAPABLE = 4096,
			SHARED_PRIVATE = 8192,
			QUARANTINED = 16384,
			RESERVED = 32768,
			HOSTED_NETWORK = 65536,
			VIRTUAL_STATION = 131072,
			WIFI_DIRECT = 262144,
			BLUETOOTH_MASK = 983040,
			LAN_MASK = 15728640,
		}
		public enum NETCON_STATUS : int32
		{
			DISCONNECTED = 0,
			CONNECTING = 1,
			CONNECTED = 2,
			DISCONNECTING = 3,
			HARDWARE_NOT_PRESENT = 4,
			HARDWARE_DISABLED = 5,
			HARDWARE_MALFUNCTION = 6,
			MEDIA_DISCONNECTED = 7,
			AUTHENTICATING = 8,
			AUTHENTICATION_SUCCEEDED = 9,
			AUTHENTICATION_FAILED = 10,
			INVALID_ADDRESS = 11,
			CREDENTIALS_REQUIRED = 12,
			ACTION_REQUIRED = 13,
			ACTION_REQUIRED_RETRY = 14,
			CONNECT_FAILED = 15,
		}
		public enum NETCON_TYPE : int32
		{
			DIRECT_CONNECT = 0,
			INBOUND = 1,
			INTERNET = 2,
			LAN = 3,
			PHONE = 4,
			TUNNEL = 5,
			BRIDGE = 6,
		}
		public enum NETCON_MEDIATYPE : int32
		{
			NONE = 0,
			DIRECT = 1,
			ISDN = 2,
			LAN = 3,
			PHONE = 4,
			TUNNEL = 5,
			PPPOE = 6,
			BRIDGE = 7,
			SHAREDACCESSHOST_LAN = 8,
			SHAREDACCESSHOST_RAS = 9,
		}
		public enum NETCONMGR_ENUM_FLAGS : int32
		{
			DEFAULT = 0,
			HIDDEN = 1,
		}
		public enum NETCONUI_CONNECT_FLAGS : int32
		{
			DEFAULT = 0,
			NO_UI = 1,
			ENABLE_DISABLE = 2,
		}
		public enum SHARINGCONNECTIONTYPE : int32
		{
			PUBLIC = 0,
			PRIVATE = 1,
		}
		public enum SHARINGCONNECTION_ENUM_FLAGS : int32
		{
			DEFAULT = 0,
			ENABLED = 1,
		}
		public enum ICS_TARGETTYPE : int32
		{
			NAME = 0,
			IPADDRESS = 1,
		}
		public enum NET_FW_POLICY_TYPE : int32
		{
			GROUP = 0,
			LOCAL = 1,
			EFFECTIVE = 2,
			TYPE_MAX = 3,
		}
		public enum NET_FW_PROFILE_TYPE : int32
		{
			DOMAIN = 0,
			STANDARD = 1,
			CURRENT = 2,
			TYPE_MAX = 3,
		}
		public enum NET_FW_PROFILE_TYPE2 : int32
		{
			DOMAIN = 1,
			PRIVATE = 2,
			PUBLIC = 4,
			ALL = 2147483647,
		}
		public enum NET_FW_IP_VERSION : int32
		{
			V4 = 0,
			V6 = 1,
			ANY = 2,
			MAX = 3,
		}
		public enum NET_FW_SCOPE : int32
		{
			ALL = 0,
			LOCAL_SUBNET = 1,
			CUSTOM = 2,
			MAX = 3,
		}
		public enum NET_FW_IP_PROTOCOL : int32
		{
			TCP = 6,
			UDP = 17,
			ANY = 256,
		}
		public enum NET_FW_SERVICE_TYPE : int32
		{
			FILE_AND_PRINT = 0,
			UPNP = 1,
			REMOTE_DESKTOP = 2,
			NONE = 3,
			TYPE_MAX = 4,
		}
		public enum NET_FW_RULE_DIRECTION : int32
		{
			IN = 1,
			OUT = 2,
			MAX = 3,
		}
		public enum NET_FW_ACTION : int32
		{
			BLOCK = 0,
			ALLOW = 1,
			MAX = 2,
		}
		public enum NET_FW_MODIFY_STATE : int32
		{
			OK = 0,
			GP_OVERRIDE = 1,
			INBOUND_BLOCKED = 2,
		}
		public enum NET_FW_RULE_CATEGORY : int32
		{
			BOOT = 0,
			STEALTH = 1,
			FIREWALL = 2,
			CONSEC = 3,
			MAX = 4,
		}
		public enum NET_FW_EDGE_TRAVERSAL_TYPE : int32
		{
			DENY = 0,
			ALLOW = 1,
			DEFER_TO_APP = 2,
			DEFER_TO_USER = 3,
		}
		public enum NET_FW_AUTHENTICATE_TYPE : int32
		{
			NONE = 0,
			NO_ENCAPSULATION = 1,
			WITH_INTEGRITY = 2,
			AND_NEGOTIATE_ENCRYPTION = 3,
			AND_ENCRYPT = 4,
		}
		public enum NETISO_FLAG : int32
		{
			FORCE_COMPUTE_BINARIES = 1,
			MAX = 2,
		}
		public enum INET_FIREWALL_AC_CREATION_TYPE : int32
		{
			NONE = 0,
			PACKAGE_ID_ONLY = 1,
			BINARY = 2,
			MAX = 4,
		}
		public enum INET_FIREWALL_AC_CHANGE_TYPE : int32
		{
			INVALID = 0,
			CREATE = 1,
			DELETE = 2,
			MAX = 3,
		}
		public enum NETISO_ERROR_TYPE : int32
		{
			NONE = 0,
			PRIVATE_NETWORK = 1,
			INTERNET_CLIENT = 2,
			INTERNET_CLIENT_SERVER = 3,
			MAX = 4,
		}
		public enum _tag_FW_DYNAMIC_KEYWORD_ORIGIN_TYPE : int32
		{
			INVALID = 0,
			LOCAL = 1,
			MDM = 2,
		}
		public enum _tag_FW_DYNAMIC_KEYWORD_ADDRESS_FLAGS : int32
		{
			FW_DYNAMIC_KEYWORD_ADDRESS_FLAGS_AUTO_RESOLVE = 1,
		}
		public enum _tag_FW_DYNAMIC_KEYWORD_ADDRESS_ENUM_FLAGS : int32
		{
			AUTO_RESOLVE = 1,
			NON_AUTO_RESOLVE = 2,
			ALL = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PAC_CHANGES_CALLBACK_FN(void* context, in INET_FIREWALL_AC_CHANGE pChange);
		public function void PNETISO_EDP_ID_CALLBACK_FN(void* context, PWSTR wszEnterpriseId, uint32 dwErr);
		public function uint32 PFN_FWADDDYNAMICKEYWORDADDRESS0(in _tag_FW_DYNAMIC_KEYWORD_ADDRESS0 dynamicKeywordAddress);
		public function uint32 PFN_FWDELETEDYNAMICKEYWORDADDRESS0(Guid dynamicKeywordAddressId);
		public function uint32 PFN_FWENUMDYNAMICKEYWORDADDRESSESBYTYPE0(uint32 flags, out _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0* dynamicKeywordAddressData);
		public function uint32 PFN_FWENUMDYNAMICKEYWORDADDRESSBYID0(Guid dynamicKeywordAddressId, out _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0* dynamicKeywordAddressData);
		public function uint32 PFN_FWFREEDYNAMICKEYWORDADDRESSDATA0(ref _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0 dynamicKeywordAddressData);
		public function uint32 PFN_FWUPDATEDYNAMICKEYWORDADDRESS0(Guid dynamicKeywordAddressId, PWSTR updatedAddresses, BOOL @append);
		
		// --- Structs ---
		
		[CRepr]
		public struct NETCON_PROPERTIES
		{
			public Guid guidId;
			public PWSTR pszwName;
			public PWSTR pszwDeviceName;
			public NETCON_STATUS Status;
			public NETCON_MEDIATYPE MediaType;
			public uint32 dwCharacter;
			public Guid clsidThisObject;
			public Guid clsidUiObject;
		}
		[CRepr]
		public struct INET_FIREWALL_AC_CAPABILITIES
		{
			public uint32 count;
			public SID_AND_ATTRIBUTES* capabilities;
		}
		[CRepr]
		public struct INET_FIREWALL_AC_BINARIES
		{
			public uint32 count;
			public PWSTR* binaries;
		}
		[CRepr]
		public struct INET_FIREWALL_AC_CHANGE
		{
			public INET_FIREWALL_AC_CHANGE_TYPE changeType;
			public INET_FIREWALL_AC_CREATION_TYPE createType;
			public SID* appContainerSid;
			public SID* userSid;
			public PWSTR displayName;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public INET_FIREWALL_AC_CAPABILITIES capabilities;
				public INET_FIREWALL_AC_BINARIES binaries;
			}
		}
		[CRepr]
		public struct INET_FIREWALL_APP_CONTAINER
		{
			public SID* appContainerSid;
			public SID* userSid;
			public PWSTR appContainerName;
			public PWSTR displayName;
			public PWSTR description;
			public INET_FIREWALL_AC_CAPABILITIES capabilities;
			public INET_FIREWALL_AC_BINARIES binaries;
			public PWSTR workingDirectory;
			public PWSTR packageFullName;
		}
		[CRepr]
		public struct _tag_FW_DYNAMIC_KEYWORD_ADDRESS0
		{
			public Guid id;
			public PWSTR keyword;
			public uint32 flags;
			public PWSTR addresses;
		}
		[CRepr]
		public struct _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0
		{
			public _tag_FW_DYNAMIC_KEYWORD_ADDRESS0 dynamicKeywordAddress;
			public _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0* next;
			public uint16 schemaVersion;
			public _tag_FW_DYNAMIC_KEYWORD_ORIGIN_TYPE originType;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_UPnPNAT = .(0xae1e00aa, 0x3fd5, 0x403c, 0x8a, 0x27, 0x2b, 0xbd, 0xc3, 0x0c, 0xd0, 0xe1);
		public const Guid CLSID_NetSharingManager = .(0x5c63c1ad, 0x3956, 0x4ff8, 0x84, 0x86, 0x40, 0x03, 0x47, 0x58, 0x31, 0x5b);
		public const Guid CLSID_NetFwRule = .(0x2c5bc43e, 0x3369, 0x4c33, 0xab, 0x0c, 0xbe, 0x94, 0x69, 0x67, 0x7a, 0xf4);
		public const Guid CLSID_NetFwOpenPort = .(0x0ca545c6, 0x37ad, 0x4a6c, 0xbf, 0x92, 0x9f, 0x76, 0x10, 0x06, 0x7e, 0xf5);
		public const Guid CLSID_NetFwAuthorizedApplication = .(0xec9846b3, 0x2762, 0x4a6b, 0xa2, 0x14, 0x6a, 0xcb, 0x60, 0x34, 0x62, 0xd2);
		public const Guid CLSID_NetFwPolicy2 = .(0xe2b3c97f, 0x6ae1, 0x41ac, 0x81, 0x7a, 0xf6, 0xf9, 0x21, 0x66, 0xd7, 0xdd);
		public const Guid CLSID_NetFwProduct = .(0x9d745ed8, 0xc514, 0x4d1d, 0xbf, 0x42, 0x75, 0x1f, 0xed, 0x2d, 0x5a, 0xc7);
		public const Guid CLSID_NetFwProducts = .(0xcc19079b, 0x8272, 0x4d73, 0xbb, 0x70, 0xcd, 0xb5, 0x33, 0x52, 0x7b, 0x61);
		public const Guid CLSID_NetFwMgr = .(0x304ce942, 0x6e39, 0x40d8, 0x94, 0x3a, 0xb9, 0x13, 0xc4, 0x0c, 0x9c, 0xd4);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUPnPNAT : IDispatch
		{
			public const new Guid IID = .(0xb171c812, 0xcc76, 0x485a, 0x94, 0xd8, 0xb6, 0xb3, 0xa2, 0x79, 0x4e, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StaticPortMappingCollection(out IStaticPortMappingCollection* ppSPMs) mut => VT.get_StaticPortMappingCollection(ref this, out ppSPMs);
			public HRESULT get_DynamicPortMappingCollection(out IDynamicPortMappingCollection* ppDPMs) mut => VT.get_DynamicPortMappingCollection(ref this, out ppDPMs);
			public HRESULT get_NATEventManager(out INATEventManager* ppNEM) mut => VT.get_NATEventManager(ref this, out ppNEM);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPNAT self, out IStaticPortMappingCollection* ppSPMs) get_StaticPortMappingCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPNAT self, out IDynamicPortMappingCollection* ppDPMs) get_DynamicPortMappingCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPNAT self, out INATEventManager* ppNEM) get_NATEventManager;
			}
		}
		[CRepr]
		public struct INATEventManager : IDispatch
		{
			public const new Guid IID = .(0x624bd588, 0x9060, 0x4109, 0xb0, 0xb0, 0x1a, 0xdb, 0xbc, 0xac, 0x32, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ExternalIPAddressCallback(ref IUnknown pUnk) mut => VT.put_ExternalIPAddressCallback(ref this, ref pUnk);
			public HRESULT put_NumberOfEntriesCallback(ref IUnknown pUnk) mut => VT.put_NumberOfEntriesCallback(ref this, ref pUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INATEventManager self, ref IUnknown pUnk) put_ExternalIPAddressCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INATEventManager self, ref IUnknown pUnk) put_NumberOfEntriesCallback;
			}
		}
		[CRepr]
		public struct INATExternalIPAddressCallback : IUnknown
		{
			public const new Guid IID = .(0x9c416740, 0xa34e, 0x446f, 0xba, 0x06, 0xab, 0xd0, 0x4c, 0x31, 0x49, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewExternalIPAddress(BSTR bstrNewExternalIPAddress) mut => VT.NewExternalIPAddress(ref this, bstrNewExternalIPAddress);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INATExternalIPAddressCallback self, BSTR bstrNewExternalIPAddress) NewExternalIPAddress;
			}
		}
		[CRepr]
		public struct INATNumberOfEntriesCallback : IUnknown
		{
			public const new Guid IID = .(0xc83a0a74, 0x91ee, 0x41b6, 0xb6, 0x7a, 0x67, 0xe0, 0xf0, 0x0b, 0xbd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewNumberOfEntries(int32 lNewNumberOfEntries) mut => VT.NewNumberOfEntries(ref this, lNewNumberOfEntries);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INATNumberOfEntriesCallback self, int32 lNewNumberOfEntries) NewNumberOfEntries;
			}
		}
		[CRepr]
		public struct IDynamicPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0xb60de00f, 0x156e, 0x4e8d, 0x9e, 0xc1, 0x3a, 0x23, 0x42, 0xc1, 0x08, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Item(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, out IDynamicPortMapping* ppDPM) mut => VT.get_Item(ref this, bstrRemoteHost, lExternalPort, bstrProtocol, out ppDPM);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT Remove(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol) mut => VT.Remove(ref this, bstrRemoteHost, lExternalPort, bstrProtocol);
			public HRESULT Add(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, int32 lLeaseDuration, out IDynamicPortMapping* ppDPM) mut => VT.Add(ref this, bstrRemoteHost, lExternalPort, bstrProtocol, lInternalPort, bstrInternalClient, bEnabled, bstrDescription, lLeaseDuration, out ppDPM);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMappingCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMappingCollection self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, out IDynamicPortMapping* ppDPM) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMappingCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMappingCollection self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMappingCollection self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, int32 lLeaseDuration, out IDynamicPortMapping* ppDPM) Add;
			}
		}
		[CRepr]
		public struct IDynamicPortMapping : IDispatch
		{
			public const new Guid IID = .(0x4fc80282, 0x23b6, 0x4378, 0x9a, 0x27, 0xcd, 0x8f, 0x17, 0xc9, 0x40, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExternalIPAddress(out BSTR pVal) mut => VT.get_ExternalIPAddress(ref this, out pVal);
			public HRESULT get_RemoteHost(out BSTR pVal) mut => VT.get_RemoteHost(ref this, out pVal);
			public HRESULT get_ExternalPort(out int32 pVal) mut => VT.get_ExternalPort(ref this, out pVal);
			public HRESULT get_Protocol(out BSTR pVal) mut => VT.get_Protocol(ref this, out pVal);
			public HRESULT get_InternalPort(out int32 pVal) mut => VT.get_InternalPort(ref this, out pVal);
			public HRESULT get_InternalClient(out BSTR pVal) mut => VT.get_InternalClient(ref this, out pVal);
			public HRESULT get_Enabled(out int16 pVal) mut => VT.get_Enabled(ref this, out pVal);
			public HRESULT get_Description(out BSTR pVal) mut => VT.get_Description(ref this, out pVal);
			public HRESULT get_LeaseDuration(out int32 pVal) mut => VT.get_LeaseDuration(ref this, out pVal);
			public HRESULT RenewLease(int32 lLeaseDurationDesired, out int32 pLeaseDurationReturned) mut => VT.RenewLease(ref this, lLeaseDurationDesired, out pLeaseDurationReturned);
			public HRESULT EditInternalClient(BSTR bstrInternalClient) mut => VT.EditInternalClient(ref this, bstrInternalClient);
			public HRESULT Enable(int16 vb) mut => VT.Enable(ref this, vb);
			public HRESULT EditDescription(BSTR bstrDescription) mut => VT.EditDescription(ref this, bstrDescription);
			public HRESULT EditInternalPort(int32 lInternalPort) mut => VT.EditInternalPort(ref this, lInternalPort);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out BSTR pVal) get_ExternalIPAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out BSTR pVal) get_RemoteHost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out int32 pVal) get_ExternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out BSTR pVal) get_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out int32 pVal) get_InternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out BSTR pVal) get_InternalClient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out int16 pVal) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out BSTR pVal) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, out int32 pVal) get_LeaseDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, int32 lLeaseDurationDesired, out int32 pLeaseDurationReturned) RenewLease;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, BSTR bstrInternalClient) EditInternalClient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, int16 vb) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, BSTR bstrDescription) EditDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicPortMapping self, int32 lInternalPort) EditInternalPort;
			}
		}
		[CRepr]
		public struct IStaticPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0xcd1f3e77, 0x66d6, 0x4664, 0x82, 0xc7, 0x36, 0xdb, 0xb6, 0x41, 0xd0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Item(int32 lExternalPort, BSTR bstrProtocol, out IStaticPortMapping* ppSPM) mut => VT.get_Item(ref this, lExternalPort, bstrProtocol, out ppSPM);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT Remove(int32 lExternalPort, BSTR bstrProtocol) mut => VT.Remove(ref this, lExternalPort, bstrProtocol);
			public HRESULT Add(int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, out IStaticPortMapping* ppSPM) mut => VT.Add(ref this, lExternalPort, bstrProtocol, lInternalPort, bstrInternalClient, bEnabled, bstrDescription, out ppSPM);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMappingCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMappingCollection self, int32 lExternalPort, BSTR bstrProtocol, out IStaticPortMapping* ppSPM) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMappingCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMappingCollection self, int32 lExternalPort, BSTR bstrProtocol) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMappingCollection self, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, out IStaticPortMapping* ppSPM) Add;
			}
		}
		[CRepr]
		public struct IStaticPortMapping : IDispatch
		{
			public const new Guid IID = .(0x6f10711f, 0x729b, 0x41e5, 0x93, 0xb8, 0xf2, 0x1d, 0x0f, 0x81, 0x8d, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExternalIPAddress(out BSTR pVal) mut => VT.get_ExternalIPAddress(ref this, out pVal);
			public HRESULT get_ExternalPort(out int32 pVal) mut => VT.get_ExternalPort(ref this, out pVal);
			public HRESULT get_InternalPort(out int32 pVal) mut => VT.get_InternalPort(ref this, out pVal);
			public HRESULT get_Protocol(out BSTR pVal) mut => VT.get_Protocol(ref this, out pVal);
			public HRESULT get_InternalClient(out BSTR pVal) mut => VT.get_InternalClient(ref this, out pVal);
			public HRESULT get_Enabled(out int16 pVal) mut => VT.get_Enabled(ref this, out pVal);
			public HRESULT get_Description(out BSTR pVal) mut => VT.get_Description(ref this, out pVal);
			public HRESULT EditInternalClient(BSTR bstrInternalClient) mut => VT.EditInternalClient(ref this, bstrInternalClient);
			public HRESULT Enable(int16 vb) mut => VT.Enable(ref this, vb);
			public HRESULT EditDescription(BSTR bstrDescription) mut => VT.EditDescription(ref this, bstrDescription);
			public HRESULT EditInternalPort(int32 lInternalPort) mut => VT.EditInternalPort(ref this, lInternalPort);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out BSTR pVal) get_ExternalIPAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out int32 pVal) get_ExternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out int32 pVal) get_InternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out BSTR pVal) get_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out BSTR pVal) get_InternalClient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out int16 pVal) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, out BSTR pVal) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, BSTR bstrInternalClient) EditInternalClient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, int16 vb) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, BSTR bstrDescription) EditDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStaticPortMapping self, int32 lInternalPort) EditInternalPort;
			}
		}
		[CRepr]
		public struct IEnumNetConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956a0, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, INetConnection** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetConnection* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetConnection self, uint32 celt, INetConnection** rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetConnection self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetConnection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetConnection self, out IEnumNetConnection* ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956a1, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect() mut => VT.Connect(ref this);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Duplicate(PWSTR pszwDuplicateName, out INetConnection* ppCon) mut => VT.Duplicate(ref this, pszwDuplicateName, out ppCon);
			public HRESULT GetProperties(out NETCON_PROPERTIES* ppProps) mut => VT.GetProperties(ref this, out ppProps);
			public HRESULT GetUiObjectClassId(out Guid pclsid) mut => VT.GetUiObjectClassId(ref this, out pclsid);
			public HRESULT Rename(PWSTR pszwNewName) mut => VT.Rename(ref this, pszwNewName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self, PWSTR pszwDuplicateName, out INetConnection* ppCon) Duplicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self, out NETCON_PROPERTIES* ppProps) GetProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self, out Guid pclsid) GetUiObjectClassId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnection self, PWSTR pszwNewName) Rename;
			}
		}
		[CRepr]
		public struct INetConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xc08956a2, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumConnections(NETCONMGR_ENUM_FLAGS Flags, out IEnumNetConnection* ppEnum) mut => VT.EnumConnections(ref this, Flags, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionManager self, NETCONMGR_ENUM_FLAGS Flags, out IEnumNetConnection* ppEnum) EnumConnections;
			}
		}
		[CRepr]
		public struct INetConnectionConnectUi : IUnknown
		{
			public const new Guid IID = .(0xc08956a3, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConnection(ref INetConnection pCon) mut => VT.SetConnection(ref this, ref pCon);
			public HRESULT Connect(HWND hwndParent, uint32 dwFlags) mut => VT.Connect(ref this, hwndParent, dwFlags);
			public HRESULT Disconnect(HWND hwndParent, uint32 dwFlags) mut => VT.Disconnect(ref this, hwndParent, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionConnectUi self, ref INetConnection pCon) SetConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionConnectUi self, HWND hwndParent, uint32 dwFlags) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionConnectUi self, HWND hwndParent, uint32 dwFlags) Disconnect;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPortMapping : IUnknown
		{
			public const new Guid IID = .(0xc08956b0, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgVar, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetSharingPortMapping* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPortMapping self, uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPortMapping self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPortMapping self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPortMapping self, out IEnumNetSharingPortMapping* ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetSharingPortMappingProps : IDispatch
		{
			public const new Guid IID = .(0x24b7e9b5, 0xe38f, 0x4685, 0x85, 0x1b, 0x00, 0x89, 0x2c, 0xf5, 0xf9, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_IPProtocol(out uint8 pucIPProt) mut => VT.get_IPProtocol(ref this, out pucIPProt);
			public HRESULT get_ExternalPort(out int32 pusPort) mut => VT.get_ExternalPort(ref this, out pusPort);
			public HRESULT get_InternalPort(out int32 pusPort) mut => VT.get_InternalPort(ref this, out pusPort);
			public HRESULT get_Options(out int32 pdwOptions) mut => VT.get_Options(ref this, out pdwOptions);
			public HRESULT get_TargetName(out BSTR pbstrTargetName) mut => VT.get_TargetName(ref this, out pbstrTargetName);
			public HRESULT get_TargetIPAddress(out BSTR pbstrTargetIPAddress) mut => VT.get_TargetIPAddress(ref this, out pbstrTargetIPAddress);
			public HRESULT get_Enabled(out int16 pbool) mut => VT.get_Enabled(ref this, out pbool);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out uint8 pucIPProt) get_IPProtocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out int32 pusPort) get_ExternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out int32 pusPort) get_InternalPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out int32 pdwOptions) get_Options;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out BSTR pbstrTargetName) get_TargetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out BSTR pbstrTargetIPAddress) get_TargetIPAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingProps self, out int16 pbool) get_Enabled;
			}
		}
		[CRepr]
		public struct INetSharingPortMapping : IDispatch
		{
			public const new Guid IID = .(0xc08956b1, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Disable() mut => VT.Disable(ref this);
			public HRESULT Enable() mut => VT.Enable(ref this);
			public HRESULT get_Properties(out INetSharingPortMappingProps* ppNSPMP) mut => VT.get_Properties(ref this, out ppNSPMP);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMapping self) Disable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMapping self) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMapping self, out INetSharingPortMappingProps* ppNSPMP) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMapping self) Delete;
			}
		}
		[CRepr]
		public struct IEnumNetSharingEveryConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b8, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgVar, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetSharingEveryConnection* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingEveryConnection self, uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingEveryConnection self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingEveryConnection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingEveryConnection self, out IEnumNetSharingEveryConnection* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPublicConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b4, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgVar, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetSharingPublicConnection* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPublicConnection self, uint32 celt, VARIANT* rgVar, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPublicConnection self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPublicConnection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPublicConnection self, out IEnumNetSharingPublicConnection* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPrivateConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b5, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, out uint32 pCeltFetched) mut => VT.Next(ref this, celt, rgVar, out pCeltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetSharingPrivateConnection* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPrivateConnection self, uint32 celt, VARIANT* rgVar, out uint32 pCeltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPrivateConnection self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPrivateConnection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetSharingPrivateConnection self, out IEnumNetSharingPrivateConnection* ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetSharingPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0x02e4a2de, 0xda20, 0x4e34, 0x89, 0xc8, 0xac, 0x22, 0x27, 0x5a, 0x01, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPortMappingCollection self, out int32 pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetConnectionProps : IDispatch
		{
			public const new Guid IID = .(0xf4277c95, 0xce5b, 0x463d, 0x81, 0x67, 0x56, 0x62, 0xd9, 0xbc, 0xaa, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Guid(out BSTR pbstrGuid) mut => VT.get_Guid(ref this, out pbstrGuid);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_DeviceName(out BSTR pbstrDeviceName) mut => VT.get_DeviceName(ref this, out pbstrDeviceName);
			public HRESULT get_Status(out NETCON_STATUS pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_MediaType(out NETCON_MEDIATYPE pMediaType) mut => VT.get_MediaType(ref this, out pMediaType);
			public HRESULT get_Characteristics(out uint32 pdwFlags) mut => VT.get_Characteristics(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out BSTR pbstrGuid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out BSTR pbstrDeviceName) get_DeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out NETCON_STATUS pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out NETCON_MEDIATYPE pMediaType) get_MediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetConnectionProps self, out uint32 pdwFlags) get_Characteristics;
			}
		}
		[CRepr]
		public struct INetSharingConfiguration : IDispatch
		{
			public const new Guid IID = .(0xc08956b6, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SharingEnabled(out int16 pbEnabled) mut => VT.get_SharingEnabled(ref this, out pbEnabled);
			public HRESULT get_SharingConnectionType(out SHARINGCONNECTIONTYPE pType) mut => VT.get_SharingConnectionType(ref this, out pType);
			public HRESULT DisableSharing() mut => VT.DisableSharing(ref this);
			public HRESULT EnableSharing(SHARINGCONNECTIONTYPE Type) mut => VT.EnableSharing(ref this, Type);
			public HRESULT get_InternetFirewallEnabled(out int16 pbEnabled) mut => VT.get_InternetFirewallEnabled(ref this, out pbEnabled);
			public HRESULT DisableInternetFirewall() mut => VT.DisableInternetFirewall(ref this);
			public HRESULT EnableInternetFirewall() mut => VT.EnableInternetFirewall(ref this);
			public HRESULT get_EnumPortMappings(SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPortMappingCollection* ppColl) mut => VT.get_EnumPortMappings(ref this, Flags, out ppColl);
			public HRESULT AddPortMapping(BSTR bstrName, uint8 ucIPProtocol, uint16 usExternalPort, uint16 usInternalPort, uint32 dwOptions, BSTR bstrTargetNameOrIPAddress, ICS_TARGETTYPE eTargetType, out INetSharingPortMapping* ppMapping) mut => VT.AddPortMapping(ref this, bstrName, ucIPProtocol, usExternalPort, usInternalPort, dwOptions, bstrTargetNameOrIPAddress, eTargetType, out ppMapping);
			public HRESULT RemovePortMapping(ref INetSharingPortMapping pMapping) mut => VT.RemovePortMapping(ref this, ref pMapping);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, out int16 pbEnabled) get_SharingEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, out SHARINGCONNECTIONTYPE pType) get_SharingConnectionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self) DisableSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, SHARINGCONNECTIONTYPE Type) EnableSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, out int16 pbEnabled) get_InternetFirewallEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self) DisableInternetFirewall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self) EnableInternetFirewall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPortMappingCollection* ppColl) get_EnumPortMappings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, BSTR bstrName, uint8 ucIPProtocol, uint16 usExternalPort, uint16 usInternalPort, uint32 dwOptions, BSTR bstrTargetNameOrIPAddress, ICS_TARGETTYPE eTargetType, out INetSharingPortMapping* ppMapping) AddPortMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingConfiguration self, ref INetSharingPortMapping pMapping) RemovePortMapping;
			}
		}
		[CRepr]
		public struct INetSharingEveryConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x33c4643c, 0x7811, 0x46fa, 0xa8, 0x9a, 0x76, 0x85, 0x97, 0xbd, 0x72, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingEveryConnectionCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingEveryConnectionCollection self, out int32 pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingPublicConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x7d7a6355, 0xf372, 0x4971, 0xa1, 0x49, 0xbf, 0xc9, 0x27, 0xbe, 0x76, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPublicConnectionCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPublicConnectionCollection self, out int32 pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingPrivateConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x38ae69e0, 0x4409, 0x402a, 0xa2, 0xcb, 0xe9, 0x65, 0xc7, 0x27, 0xf8, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPrivateConnectionCollection self, out IUnknown* pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingPrivateConnectionCollection self, out int32 pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingManager : IDispatch
		{
			public const new Guid IID = .(0xc08956b7, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SharingInstalled(out int16 pbInstalled) mut => VT.get_SharingInstalled(ref this, out pbInstalled);
			public HRESULT get_EnumPublicConnections(SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPublicConnectionCollection* ppColl) mut => VT.get_EnumPublicConnections(ref this, Flags, out ppColl);
			public HRESULT get_EnumPrivateConnections(SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPrivateConnectionCollection* ppColl) mut => VT.get_EnumPrivateConnections(ref this, Flags, out ppColl);
			public HRESULT get_INetSharingConfigurationForINetConnection(ref INetConnection pNetConnection, out INetSharingConfiguration* ppNetSharingConfiguration) mut => VT.get_INetSharingConfigurationForINetConnection(ref this, ref pNetConnection, out ppNetSharingConfiguration);
			public HRESULT get_EnumEveryConnection(out INetSharingEveryConnectionCollection* ppColl) mut => VT.get_EnumEveryConnection(ref this, out ppColl);
			public HRESULT get_NetConnectionProps(ref INetConnection pNetConnection, out INetConnectionProps* ppProps) mut => VT.get_NetConnectionProps(ref this, ref pNetConnection, out ppProps);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, out int16 pbInstalled) get_SharingInstalled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPublicConnectionCollection* ppColl) get_EnumPublicConnections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, SHARINGCONNECTION_ENUM_FLAGS Flags, out INetSharingPrivateConnectionCollection* ppColl) get_EnumPrivateConnections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, ref INetConnection pNetConnection, out INetSharingConfiguration* ppNetSharingConfiguration) get_INetSharingConfigurationForINetConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, out INetSharingEveryConnectionCollection* ppColl) get_EnumEveryConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetSharingManager self, ref INetConnection pNetConnection, out INetConnectionProps* ppProps) get_NetConnectionProps;
			}
		}
		[CRepr]
		public struct INetFwRemoteAdminSettings : IDispatch
		{
			public const new Guid IID = .(0xd4becddf, 0x6f73, 0x4a83, 0xb8, 0x32, 0x9c, 0x66, 0x87, 0x4c, 0xd2, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IpVersion(out NET_FW_IP_VERSION ipVersion) mut => VT.get_IpVersion(ref this, out ipVersion);
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut => VT.put_IpVersion(ref this, ipVersion);
			public HRESULT get_Scope(out NET_FW_SCOPE @scope) mut => VT.get_Scope(ref this, out @scope);
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut => VT.put_Scope(ref this, @scope);
			public HRESULT get_RemoteAddresses(out BSTR remoteAddrs) mut => VT.get_RemoteAddresses(ref this, out remoteAddrs);
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut => VT.put_RemoteAddresses(ref this, remoteAddrs);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, out NET_FW_IP_VERSION ipVersion) get_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, out NET_FW_SCOPE @scope) get_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, NET_FW_SCOPE @scope) put_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, out BSTR remoteAddrs) get_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRemoteAdminSettings self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct INetFwIcmpSettings : IDispatch
		{
			public const new Guid IID = .(0xa6207b2e, 0x7cdd, 0x426a, 0x95, 0x1e, 0x5e, 0x1c, 0xbc, 0x5a, 0xfe, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllowOutboundDestinationUnreachable(out int16 allow) mut => VT.get_AllowOutboundDestinationUnreachable(ref this, out allow);
			public HRESULT put_AllowOutboundDestinationUnreachable(int16 allow) mut => VT.put_AllowOutboundDestinationUnreachable(ref this, allow);
			public HRESULT get_AllowRedirect(out int16 allow) mut => VT.get_AllowRedirect(ref this, out allow);
			public HRESULT put_AllowRedirect(int16 allow) mut => VT.put_AllowRedirect(ref this, allow);
			public HRESULT get_AllowInboundEchoRequest(out int16 allow) mut => VT.get_AllowInboundEchoRequest(ref this, out allow);
			public HRESULT put_AllowInboundEchoRequest(int16 allow) mut => VT.put_AllowInboundEchoRequest(ref this, allow);
			public HRESULT get_AllowOutboundTimeExceeded(out int16 allow) mut => VT.get_AllowOutboundTimeExceeded(ref this, out allow);
			public HRESULT put_AllowOutboundTimeExceeded(int16 allow) mut => VT.put_AllowOutboundTimeExceeded(ref this, allow);
			public HRESULT get_AllowOutboundParameterProblem(out int16 allow) mut => VT.get_AllowOutboundParameterProblem(ref this, out allow);
			public HRESULT put_AllowOutboundParameterProblem(int16 allow) mut => VT.put_AllowOutboundParameterProblem(ref this, allow);
			public HRESULT get_AllowOutboundSourceQuench(out int16 allow) mut => VT.get_AllowOutboundSourceQuench(ref this, out allow);
			public HRESULT put_AllowOutboundSourceQuench(int16 allow) mut => VT.put_AllowOutboundSourceQuench(ref this, allow);
			public HRESULT get_AllowInboundRouterRequest(out int16 allow) mut => VT.get_AllowInboundRouterRequest(ref this, out allow);
			public HRESULT put_AllowInboundRouterRequest(int16 allow) mut => VT.put_AllowInboundRouterRequest(ref this, allow);
			public HRESULT get_AllowInboundTimestampRequest(out int16 allow) mut => VT.get_AllowInboundTimestampRequest(ref this, out allow);
			public HRESULT put_AllowInboundTimestampRequest(int16 allow) mut => VT.put_AllowInboundTimestampRequest(ref this, allow);
			public HRESULT get_AllowInboundMaskRequest(out int16 allow) mut => VT.get_AllowInboundMaskRequest(ref this, out allow);
			public HRESULT put_AllowInboundMaskRequest(int16 allow) mut => VT.put_AllowInboundMaskRequest(ref this, allow);
			public HRESULT get_AllowOutboundPacketTooBig(out int16 allow) mut => VT.get_AllowOutboundPacketTooBig(ref this, out allow);
			public HRESULT put_AllowOutboundPacketTooBig(int16 allow) mut => VT.put_AllowOutboundPacketTooBig(ref this, allow);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowOutboundDestinationUnreachable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowOutboundDestinationUnreachable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowRedirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowRedirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowInboundEchoRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowInboundEchoRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowOutboundTimeExceeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowOutboundTimeExceeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowOutboundParameterProblem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowOutboundParameterProblem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowOutboundSourceQuench;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowOutboundSourceQuench;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowInboundRouterRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowInboundRouterRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowInboundTimestampRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowInboundTimestampRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowInboundMaskRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowInboundMaskRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, out int16 allow) get_AllowOutboundPacketTooBig;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwIcmpSettings self, int16 allow) put_AllowOutboundPacketTooBig;
			}
		}
		[CRepr]
		public struct INetFwOpenPort : IDispatch
		{
			public const new Guid IID = .(0xe0483ba0, 0x47ff, 0x4d9c, 0xa6, 0xd6, 0x77, 0x41, 0xd0, 0xb1, 0x95, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_IpVersion(out NET_FW_IP_VERSION ipVersion) mut => VT.get_IpVersion(ref this, out ipVersion);
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut => VT.put_IpVersion(ref this, ipVersion);
			public HRESULT get_Protocol(out NET_FW_IP_PROTOCOL ipProtocol) mut => VT.get_Protocol(ref this, out ipProtocol);
			public HRESULT put_Protocol(NET_FW_IP_PROTOCOL ipProtocol) mut => VT.put_Protocol(ref this, ipProtocol);
			public HRESULT get_Port(out int32 portNumber) mut => VT.get_Port(ref this, out portNumber);
			public HRESULT put_Port(int32 portNumber) mut => VT.put_Port(ref this, portNumber);
			public HRESULT get_Scope(out NET_FW_SCOPE @scope) mut => VT.get_Scope(ref this, out @scope);
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut => VT.put_Scope(ref this, @scope);
			public HRESULT get_RemoteAddresses(out BSTR remoteAddrs) mut => VT.get_RemoteAddresses(ref this, out remoteAddrs);
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut => VT.put_RemoteAddresses(ref this, remoteAddrs);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_BuiltIn(out int16 builtIn) mut => VT.get_BuiltIn(ref this, out builtIn);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out NET_FW_IP_VERSION ipVersion) get_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out NET_FW_IP_PROTOCOL ipProtocol) get_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, NET_FW_IP_PROTOCOL ipProtocol) put_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out int32 portNumber) get_Port;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, int32 portNumber) put_Port;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out NET_FW_SCOPE @scope) get_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, NET_FW_SCOPE @scope) put_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out BSTR remoteAddrs) get_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPort self, out int16 builtIn) get_BuiltIn;
			}
		}
		[CRepr]
		public struct INetFwOpenPorts : IDispatch
		{
			public const new Guid IID = .(0xc0e9d7fa, 0xe07e, 0x430a, 0xb1, 0x9a, 0x09, 0x0c, 0xe8, 0x2d, 0x92, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Add(ref INetFwOpenPort port) mut => VT.Add(ref this, ref port);
			public HRESULT Remove(int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol) mut => VT.Remove(ref this, portNumber, ipProtocol);
			public HRESULT Item(int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol, out INetFwOpenPort* openPort) mut => VT.Item(ref this, portNumber, ipProtocol, out openPort);
			public HRESULT get__NewEnum(out IUnknown* newEnum) mut => VT.get__NewEnum(ref this, out newEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPorts self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPorts self, ref INetFwOpenPort port) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPorts self, int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPorts self, int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol, out INetFwOpenPort* openPort) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwOpenPorts self, out IUnknown* newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwService : IDispatch
		{
			public const new Guid IID = .(0x79fd57c8, 0x908e, 0x4a36, 0x98, 0x88, 0xd5, 0xb3, 0xf0, 0xa4, 0x44, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT get_Type(out NET_FW_SERVICE_TYPE type) mut => VT.get_Type(ref this, out type);
			public HRESULT get_Customized(out int16 customized) mut => VT.get_Customized(ref this, out customized);
			public HRESULT get_IpVersion(out NET_FW_IP_VERSION ipVersion) mut => VT.get_IpVersion(ref this, out ipVersion);
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut => VT.put_IpVersion(ref this, ipVersion);
			public HRESULT get_Scope(out NET_FW_SCOPE @scope) mut => VT.get_Scope(ref this, out @scope);
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut => VT.put_Scope(ref this, @scope);
			public HRESULT get_RemoteAddresses(out BSTR remoteAddrs) mut => VT.get_RemoteAddresses(ref this, out remoteAddrs);
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut => VT.put_RemoteAddresses(ref this, remoteAddrs);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_GloballyOpenPorts(out INetFwOpenPorts* openPorts) mut => VT.get_GloballyOpenPorts(ref this, out openPorts);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out NET_FW_SERVICE_TYPE type) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out int16 customized) get_Customized;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out NET_FW_IP_VERSION ipVersion) get_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out NET_FW_SCOPE @scope) get_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, NET_FW_SCOPE @scope) put_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out BSTR remoteAddrs) get_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwService self, out INetFwOpenPorts* openPorts) get_GloballyOpenPorts;
			}
		}
		[CRepr]
		public struct INetFwServices : IDispatch
		{
			public const new Guid IID = .(0x79649bb4, 0x903e, 0x421b, 0x94, 0xc9, 0x79, 0x84, 0x8e, 0x79, 0xf6, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Item(NET_FW_SERVICE_TYPE svcType, out INetFwService* service) mut => VT.Item(ref this, svcType, out service);
			public HRESULT get__NewEnum(out IUnknown* newEnum) mut => VT.get__NewEnum(ref this, out newEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServices self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServices self, NET_FW_SERVICE_TYPE svcType, out INetFwService* service) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServices self, out IUnknown* newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwAuthorizedApplication : IDispatch
		{
			public const new Guid IID = .(0xb5e64ffa, 0xc2c5, 0x444e, 0xa3, 0x01, 0xfb, 0x5e, 0x00, 0x01, 0x80, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_ProcessImageFileName(out BSTR imageFileName) mut => VT.get_ProcessImageFileName(ref this, out imageFileName);
			public HRESULT put_ProcessImageFileName(BSTR imageFileName) mut => VT.put_ProcessImageFileName(ref this, imageFileName);
			public HRESULT get_IpVersion(out NET_FW_IP_VERSION ipVersion) mut => VT.get_IpVersion(ref this, out ipVersion);
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut => VT.put_IpVersion(ref this, ipVersion);
			public HRESULT get_Scope(out NET_FW_SCOPE @scope) mut => VT.get_Scope(ref this, out @scope);
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut => VT.put_Scope(ref this, @scope);
			public HRESULT get_RemoteAddresses(out BSTR remoteAddrs) mut => VT.get_RemoteAddresses(ref this, out remoteAddrs);
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut => VT.put_RemoteAddresses(ref this, remoteAddrs);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out BSTR imageFileName) get_ProcessImageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, BSTR imageFileName) put_ProcessImageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out NET_FW_IP_VERSION ipVersion) get_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out NET_FW_SCOPE @scope) get_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, NET_FW_SCOPE @scope) put_Scope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out BSTR remoteAddrs) get_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplication self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct INetFwAuthorizedApplications : IDispatch
		{
			public const new Guid IID = .(0x644efd52, 0xccf9, 0x486c, 0x97, 0xa2, 0x39, 0xf3, 0x52, 0x57, 0x0b, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Add(ref INetFwAuthorizedApplication app) mut => VT.Add(ref this, ref app);
			public HRESULT Remove(BSTR imageFileName) mut => VT.Remove(ref this, imageFileName);
			public HRESULT Item(BSTR imageFileName, out INetFwAuthorizedApplication* app) mut => VT.Item(ref this, imageFileName, out app);
			public HRESULT get__NewEnum(out IUnknown* newEnum) mut => VT.get__NewEnum(ref this, out newEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplications self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplications self, ref INetFwAuthorizedApplication app) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplications self, BSTR imageFileName) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplications self, BSTR imageFileName, out INetFwAuthorizedApplication* app) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwAuthorizedApplications self, out IUnknown* newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwRule : IDispatch
		{
			public const new Guid IID = .(0xaf230d27, 0xbaba, 0x4e42, 0xac, 0xed, 0xf5, 0x24, 0xf2, 0x2c, 0xfc, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Description(out BSTR desc) mut => VT.get_Description(ref this, out desc);
			public HRESULT put_Description(BSTR desc) mut => VT.put_Description(ref this, desc);
			public HRESULT get_ApplicationName(out BSTR imageFileName) mut => VT.get_ApplicationName(ref this, out imageFileName);
			public HRESULT put_ApplicationName(BSTR imageFileName) mut => VT.put_ApplicationName(ref this, imageFileName);
			public HRESULT get_ServiceName(out BSTR serviceName) mut => VT.get_ServiceName(ref this, out serviceName);
			public HRESULT put_ServiceName(BSTR serviceName) mut => VT.put_ServiceName(ref this, serviceName);
			public HRESULT get_Protocol(out int32 protocol) mut => VT.get_Protocol(ref this, out protocol);
			public HRESULT put_Protocol(int32 protocol) mut => VT.put_Protocol(ref this, protocol);
			public HRESULT get_LocalPorts(out BSTR portNumbers) mut => VT.get_LocalPorts(ref this, out portNumbers);
			public HRESULT put_LocalPorts(BSTR portNumbers) mut => VT.put_LocalPorts(ref this, portNumbers);
			public HRESULT get_RemotePorts(out BSTR portNumbers) mut => VT.get_RemotePorts(ref this, out portNumbers);
			public HRESULT put_RemotePorts(BSTR portNumbers) mut => VT.put_RemotePorts(ref this, portNumbers);
			public HRESULT get_LocalAddresses(out BSTR localAddrs) mut => VT.get_LocalAddresses(ref this, out localAddrs);
			public HRESULT put_LocalAddresses(BSTR localAddrs) mut => VT.put_LocalAddresses(ref this, localAddrs);
			public HRESULT get_RemoteAddresses(out BSTR remoteAddrs) mut => VT.get_RemoteAddresses(ref this, out remoteAddrs);
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut => VT.put_RemoteAddresses(ref this, remoteAddrs);
			public HRESULT get_IcmpTypesAndCodes(out BSTR icmpTypesAndCodes) mut => VT.get_IcmpTypesAndCodes(ref this, out icmpTypesAndCodes);
			public HRESULT put_IcmpTypesAndCodes(BSTR icmpTypesAndCodes) mut => VT.put_IcmpTypesAndCodes(ref this, icmpTypesAndCodes);
			public HRESULT get_Direction(out NET_FW_RULE_DIRECTION dir) mut => VT.get_Direction(ref this, out dir);
			public HRESULT put_Direction(NET_FW_RULE_DIRECTION dir) mut => VT.put_Direction(ref this, dir);
			public HRESULT get_Interfaces(out VARIANT interfaces) mut => VT.get_Interfaces(ref this, out interfaces);
			public HRESULT put_Interfaces(VARIANT interfaces) mut => VT.put_Interfaces(ref this, interfaces);
			public HRESULT get_InterfaceTypes(out BSTR interfaceTypes) mut => VT.get_InterfaceTypes(ref this, out interfaceTypes);
			public HRESULT put_InterfaceTypes(BSTR interfaceTypes) mut => VT.put_InterfaceTypes(ref this, interfaceTypes);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_Grouping(out BSTR context) mut => VT.get_Grouping(ref this, out context);
			public HRESULT put_Grouping(BSTR context) mut => VT.put_Grouping(ref this, context);
			public HRESULT get_Profiles(out int32 profileTypesBitmask) mut => VT.get_Profiles(ref this, out profileTypesBitmask);
			public HRESULT put_Profiles(int32 profileTypesBitmask) mut => VT.put_Profiles(ref this, profileTypesBitmask);
			public HRESULT get_EdgeTraversal(out int16 enabled) mut => VT.get_EdgeTraversal(ref this, out enabled);
			public HRESULT put_EdgeTraversal(int16 enabled) mut => VT.put_EdgeTraversal(ref this, enabled);
			public HRESULT get_Action(out NET_FW_ACTION action) mut => VT.get_Action(ref this, out action);
			public HRESULT put_Action(NET_FW_ACTION action) mut => VT.put_Action(ref this, action);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR desc) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR desc) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR imageFileName) get_ApplicationName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR imageFileName) put_ApplicationName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR serviceName) get_ServiceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR serviceName) put_ServiceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out int32 protocol) get_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, int32 protocol) put_Protocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR portNumbers) get_LocalPorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR portNumbers) put_LocalPorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR portNumbers) get_RemotePorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR portNumbers) put_RemotePorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR localAddrs) get_LocalAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR localAddrs) put_LocalAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR remoteAddrs) get_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR icmpTypesAndCodes) get_IcmpTypesAndCodes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR icmpTypesAndCodes) put_IcmpTypesAndCodes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out NET_FW_RULE_DIRECTION dir) get_Direction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, NET_FW_RULE_DIRECTION dir) put_Direction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out VARIANT interfaces) get_Interfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, VARIANT interfaces) put_Interfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR interfaceTypes) get_InterfaceTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR interfaceTypes) put_InterfaceTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out BSTR context) get_Grouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, BSTR context) put_Grouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out int32 profileTypesBitmask) get_Profiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, int32 profileTypesBitmask) put_Profiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out int16 enabled) get_EdgeTraversal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, int16 enabled) put_EdgeTraversal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, out NET_FW_ACTION action) get_Action;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule self, NET_FW_ACTION action) put_Action;
			}
		}
		[CRepr]
		public struct INetFwRule2 : INetFwRule
		{
			public const new Guid IID = .(0x9c27c8da, 0x189b, 0x4dde, 0x89, 0xf7, 0x8b, 0x39, 0xa3, 0x16, 0x78, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EdgeTraversalOptions(out int32 lOptions) mut => VT.get_EdgeTraversalOptions(ref this, out lOptions);
			public HRESULT put_EdgeTraversalOptions(int32 lOptions) mut => VT.put_EdgeTraversalOptions(ref this, lOptions);

			[CRepr]
			public struct VTable : INetFwRule.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule2 self, out int32 lOptions) get_EdgeTraversalOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule2 self, int32 lOptions) put_EdgeTraversalOptions;
			}
		}
		[CRepr]
		public struct INetFwRule3 : INetFwRule2
		{
			public const new Guid IID = .(0xb21563ff, 0xd696, 0x4222, 0xab, 0x46, 0x4e, 0x89, 0xb7, 0x3a, 0xb3, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LocalAppPackageId(out BSTR wszPackageId) mut => VT.get_LocalAppPackageId(ref this, out wszPackageId);
			public HRESULT put_LocalAppPackageId(BSTR wszPackageId) mut => VT.put_LocalAppPackageId(ref this, wszPackageId);
			public HRESULT get_LocalUserOwner(out BSTR wszUserOwner) mut => VT.get_LocalUserOwner(ref this, out wszUserOwner);
			public HRESULT put_LocalUserOwner(BSTR wszUserOwner) mut => VT.put_LocalUserOwner(ref this, wszUserOwner);
			public HRESULT get_LocalUserAuthorizedList(out BSTR wszUserAuthList) mut => VT.get_LocalUserAuthorizedList(ref this, out wszUserAuthList);
			public HRESULT put_LocalUserAuthorizedList(BSTR wszUserAuthList) mut => VT.put_LocalUserAuthorizedList(ref this, wszUserAuthList);
			public HRESULT get_RemoteUserAuthorizedList(out BSTR wszUserAuthList) mut => VT.get_RemoteUserAuthorizedList(ref this, out wszUserAuthList);
			public HRESULT put_RemoteUserAuthorizedList(BSTR wszUserAuthList) mut => VT.put_RemoteUserAuthorizedList(ref this, wszUserAuthList);
			public HRESULT get_RemoteMachineAuthorizedList(out BSTR wszUserAuthList) mut => VT.get_RemoteMachineAuthorizedList(ref this, out wszUserAuthList);
			public HRESULT put_RemoteMachineAuthorizedList(BSTR wszUserAuthList) mut => VT.put_RemoteMachineAuthorizedList(ref this, wszUserAuthList);
			public HRESULT get_SecureFlags(out int32 lOptions) mut => VT.get_SecureFlags(ref this, out lOptions);
			public HRESULT put_SecureFlags(int32 lOptions) mut => VT.put_SecureFlags(ref this, lOptions);

			[CRepr]
			public struct VTable : INetFwRule2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out BSTR wszPackageId) get_LocalAppPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, BSTR wszPackageId) put_LocalAppPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out BSTR wszUserOwner) get_LocalUserOwner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, BSTR wszUserOwner) put_LocalUserOwner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out BSTR wszUserAuthList) get_LocalUserAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, BSTR wszUserAuthList) put_LocalUserAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out BSTR wszUserAuthList) get_RemoteUserAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, BSTR wszUserAuthList) put_RemoteUserAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out BSTR wszUserAuthList) get_RemoteMachineAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, BSTR wszUserAuthList) put_RemoteMachineAuthorizedList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, out int32 lOptions) get_SecureFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRule3 self, int32 lOptions) put_SecureFlags;
			}
		}
		[CRepr]
		public struct INetFwRules : IDispatch
		{
			public const new Guid IID = .(0x9c4c6277, 0x5027, 0x441e, 0xaf, 0xae, 0xca, 0x1f, 0x54, 0x2d, 0xa0, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Add(ref INetFwRule rule) mut => VT.Add(ref this, ref rule);
			public HRESULT Remove(BSTR name) mut => VT.Remove(ref this, name);
			public HRESULT Item(BSTR name, out INetFwRule* rule) mut => VT.Item(ref this, name, out rule);
			public HRESULT get__NewEnum(out IUnknown* newEnum) mut => VT.get__NewEnum(ref this, out newEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRules self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRules self, ref INetFwRule rule) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRules self, BSTR name) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRules self, BSTR name, out INetFwRule* rule) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwRules self, out IUnknown* newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwServiceRestriction : IDispatch
		{
			public const new Guid IID = .(0x8267bbe3, 0xf890, 0x491c, 0xb7, 0xb6, 0x2d, 0xb1, 0xef, 0x0e, 0x5d, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestrictService(BSTR serviceName, BSTR appName, int16 restrictService, int16 serviceSidRestricted) mut => VT.RestrictService(ref this, serviceName, appName, restrictService, serviceSidRestricted);
			public HRESULT ServiceRestricted(BSTR serviceName, BSTR appName, out int16 serviceRestricted) mut => VT.ServiceRestricted(ref this, serviceName, appName, out serviceRestricted);
			public HRESULT get_Rules(out INetFwRules* rules) mut => VT.get_Rules(ref this, out rules);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServiceRestriction self, BSTR serviceName, BSTR appName, int16 restrictService, int16 serviceSidRestricted) RestrictService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServiceRestriction self, BSTR serviceName, BSTR appName, out int16 serviceRestricted) ServiceRestricted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwServiceRestriction self, out INetFwRules* rules) get_Rules;
			}
		}
		[CRepr]
		public struct INetFwProfile : IDispatch
		{
			public const new Guid IID = .(0x174a0dda, 0xe9f9, 0x449d, 0x99, 0x3b, 0x21, 0xab, 0x66, 0x7c, 0xa4, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out NET_FW_PROFILE_TYPE type) mut => VT.get_Type(ref this, out type);
			public HRESULT get_FirewallEnabled(out int16 enabled) mut => VT.get_FirewallEnabled(ref this, out enabled);
			public HRESULT put_FirewallEnabled(int16 enabled) mut => VT.put_FirewallEnabled(ref this, enabled);
			public HRESULT get_ExceptionsNotAllowed(out int16 notAllowed) mut => VT.get_ExceptionsNotAllowed(ref this, out notAllowed);
			public HRESULT put_ExceptionsNotAllowed(int16 notAllowed) mut => VT.put_ExceptionsNotAllowed(ref this, notAllowed);
			public HRESULT get_NotificationsDisabled(out int16 disabled) mut => VT.get_NotificationsDisabled(ref this, out disabled);
			public HRESULT put_NotificationsDisabled(int16 disabled) mut => VT.put_NotificationsDisabled(ref this, disabled);
			public HRESULT get_UnicastResponsesToMulticastBroadcastDisabled(out int16 disabled) mut => VT.get_UnicastResponsesToMulticastBroadcastDisabled(ref this, out disabled);
			public HRESULT put_UnicastResponsesToMulticastBroadcastDisabled(int16 disabled) mut => VT.put_UnicastResponsesToMulticastBroadcastDisabled(ref this, disabled);
			public HRESULT get_RemoteAdminSettings(out INetFwRemoteAdminSettings* remoteAdminSettings) mut => VT.get_RemoteAdminSettings(ref this, out remoteAdminSettings);
			public HRESULT get_IcmpSettings(out INetFwIcmpSettings* icmpSettings) mut => VT.get_IcmpSettings(ref this, out icmpSettings);
			public HRESULT get_GloballyOpenPorts(out INetFwOpenPorts* openPorts) mut => VT.get_GloballyOpenPorts(ref this, out openPorts);
			public HRESULT get_Services(out INetFwServices* services) mut => VT.get_Services(ref this, out services);
			public HRESULT get_AuthorizedApplications(out INetFwAuthorizedApplications* apps) mut => VT.get_AuthorizedApplications(ref this, out apps);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out NET_FW_PROFILE_TYPE type) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out int16 enabled) get_FirewallEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, int16 enabled) put_FirewallEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out int16 notAllowed) get_ExceptionsNotAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, int16 notAllowed) put_ExceptionsNotAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out int16 disabled) get_NotificationsDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, int16 disabled) put_NotificationsDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out int16 disabled) get_UnicastResponsesToMulticastBroadcastDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, int16 disabled) put_UnicastResponsesToMulticastBroadcastDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out INetFwRemoteAdminSettings* remoteAdminSettings) get_RemoteAdminSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out INetFwIcmpSettings* icmpSettings) get_IcmpSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out INetFwOpenPorts* openPorts) get_GloballyOpenPorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out INetFwServices* services) get_Services;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProfile self, out INetFwAuthorizedApplications* apps) get_AuthorizedApplications;
			}
		}
		[CRepr]
		public struct INetFwPolicy : IDispatch
		{
			public const new Guid IID = .(0xd46d2478, 0x9ac9, 0x4008, 0x9d, 0xc7, 0x55, 0x63, 0xce, 0x55, 0x36, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentProfile(out INetFwProfile* profile) mut => VT.get_CurrentProfile(ref this, out profile);
			public HRESULT GetProfileByType(NET_FW_PROFILE_TYPE profileType, out INetFwProfile* profile) mut => VT.GetProfileByType(ref this, profileType, out profile);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy self, out INetFwProfile* profile) get_CurrentProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy self, NET_FW_PROFILE_TYPE profileType, out INetFwProfile* profile) GetProfileByType;
			}
		}
		[CRepr]
		public struct INetFwPolicy2 : IDispatch
		{
			public const new Guid IID = .(0x98325047, 0xc671, 0x4174, 0x8d, 0x81, 0xde, 0xfc, 0xd3, 0xf0, 0x31, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentProfileTypes(out int32 profileTypesBitmask) mut => VT.get_CurrentProfileTypes(ref this, out profileTypesBitmask);
			public HRESULT get_FirewallEnabled(NET_FW_PROFILE_TYPE2 profileType, out int16 enabled) mut => VT.get_FirewallEnabled(ref this, profileType, out enabled);
			public HRESULT put_FirewallEnabled(NET_FW_PROFILE_TYPE2 profileType, int16 enabled) mut => VT.put_FirewallEnabled(ref this, profileType, enabled);
			public HRESULT get_ExcludedInterfaces(NET_FW_PROFILE_TYPE2 profileType, out VARIANT interfaces) mut => VT.get_ExcludedInterfaces(ref this, profileType, out interfaces);
			public HRESULT put_ExcludedInterfaces(NET_FW_PROFILE_TYPE2 profileType, VARIANT interfaces) mut => VT.put_ExcludedInterfaces(ref this, profileType, interfaces);
			public HRESULT get_BlockAllInboundTraffic(NET_FW_PROFILE_TYPE2 profileType, out int16 Block) mut => VT.get_BlockAllInboundTraffic(ref this, profileType, out Block);
			public HRESULT put_BlockAllInboundTraffic(NET_FW_PROFILE_TYPE2 profileType, int16 Block) mut => VT.put_BlockAllInboundTraffic(ref this, profileType, Block);
			public HRESULT get_NotificationsDisabled(NET_FW_PROFILE_TYPE2 profileType, out int16 disabled) mut => VT.get_NotificationsDisabled(ref this, profileType, out disabled);
			public HRESULT put_NotificationsDisabled(NET_FW_PROFILE_TYPE2 profileType, int16 disabled) mut => VT.put_NotificationsDisabled(ref this, profileType, disabled);
			public HRESULT get_UnicastResponsesToMulticastBroadcastDisabled(NET_FW_PROFILE_TYPE2 profileType, out int16 disabled) mut => VT.get_UnicastResponsesToMulticastBroadcastDisabled(ref this, profileType, out disabled);
			public HRESULT put_UnicastResponsesToMulticastBroadcastDisabled(NET_FW_PROFILE_TYPE2 profileType, int16 disabled) mut => VT.put_UnicastResponsesToMulticastBroadcastDisabled(ref this, profileType, disabled);
			public HRESULT get_Rules(out INetFwRules* rules) mut => VT.get_Rules(ref this, out rules);
			public HRESULT get_ServiceRestriction(out INetFwServiceRestriction* ServiceRestriction) mut => VT.get_ServiceRestriction(ref this, out ServiceRestriction);
			public HRESULT EnableRuleGroup(int32 profileTypesBitmask, BSTR group, int16 enable) mut => VT.EnableRuleGroup(ref this, profileTypesBitmask, group, enable);
			public HRESULT IsRuleGroupEnabled(int32 profileTypesBitmask, BSTR group, out int16 enabled) mut => VT.IsRuleGroupEnabled(ref this, profileTypesBitmask, group, out enabled);
			public HRESULT RestoreLocalFirewallDefaults() mut => VT.RestoreLocalFirewallDefaults(ref this);
			public HRESULT get_DefaultInboundAction(NET_FW_PROFILE_TYPE2 profileType, out NET_FW_ACTION action) mut => VT.get_DefaultInboundAction(ref this, profileType, out action);
			public HRESULT put_DefaultInboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) mut => VT.put_DefaultInboundAction(ref this, profileType, action);
			public HRESULT get_DefaultOutboundAction(NET_FW_PROFILE_TYPE2 profileType, out NET_FW_ACTION action) mut => VT.get_DefaultOutboundAction(ref this, profileType, out action);
			public HRESULT put_DefaultOutboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) mut => VT.put_DefaultOutboundAction(ref this, profileType, action);
			public HRESULT get_IsRuleGroupCurrentlyEnabled(BSTR group, out int16 enabled) mut => VT.get_IsRuleGroupCurrentlyEnabled(ref this, group, out enabled);
			public HRESULT get_LocalPolicyModifyState(out NET_FW_MODIFY_STATE modifyState) mut => VT.get_LocalPolicyModifyState(ref this, out modifyState);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, out int32 profileTypesBitmask) get_CurrentProfileTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out int16 enabled) get_FirewallEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, int16 enabled) put_FirewallEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out VARIANT interfaces) get_ExcludedInterfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, VARIANT interfaces) put_ExcludedInterfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out int16 Block) get_BlockAllInboundTraffic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, int16 Block) put_BlockAllInboundTraffic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out int16 disabled) get_NotificationsDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, int16 disabled) put_NotificationsDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out int16 disabled) get_UnicastResponsesToMulticastBroadcastDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, int16 disabled) put_UnicastResponsesToMulticastBroadcastDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, out INetFwRules* rules) get_Rules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, out INetFwServiceRestriction* ServiceRestriction) get_ServiceRestriction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, int32 profileTypesBitmask, BSTR group, int16 enable) EnableRuleGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, int32 profileTypesBitmask, BSTR group, out int16 enabled) IsRuleGroupEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self) RestoreLocalFirewallDefaults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out NET_FW_ACTION action) get_DefaultInboundAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) put_DefaultInboundAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, out NET_FW_ACTION action) get_DefaultOutboundAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) put_DefaultOutboundAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, BSTR group, out int16 enabled) get_IsRuleGroupCurrentlyEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwPolicy2 self, out NET_FW_MODIFY_STATE modifyState) get_LocalPolicyModifyState;
			}
		}
		[CRepr]
		public struct INetFwMgr : IDispatch
		{
			public const new Guid IID = .(0xf7898af5, 0xcac4, 0x4632, 0xa2, 0xec, 0xda, 0x06, 0xe5, 0x11, 0x1a, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LocalPolicy(out INetFwPolicy* localPolicy) mut => VT.get_LocalPolicy(ref this, out localPolicy);
			public HRESULT get_CurrentProfileType(out NET_FW_PROFILE_TYPE profileType) mut => VT.get_CurrentProfileType(ref this, out profileType);
			public HRESULT RestoreDefaults() mut => VT.RestoreDefaults(ref this);
			public HRESULT IsPortAllowed(BSTR imageFileName, NET_FW_IP_VERSION ipVersion, int32 portNumber, BSTR localAddress, NET_FW_IP_PROTOCOL ipProtocol, out VARIANT allowed, out VARIANT restricted) mut => VT.IsPortAllowed(ref this, imageFileName, ipVersion, portNumber, localAddress, ipProtocol, out allowed, out restricted);
			public HRESULT IsIcmpTypeAllowed(NET_FW_IP_VERSION ipVersion, BSTR localAddress, uint8 type, out VARIANT allowed, out VARIANT restricted) mut => VT.IsIcmpTypeAllowed(ref this, ipVersion, localAddress, type, out allowed, out restricted);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwMgr self, out INetFwPolicy* localPolicy) get_LocalPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwMgr self, out NET_FW_PROFILE_TYPE profileType) get_CurrentProfileType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwMgr self) RestoreDefaults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwMgr self, BSTR imageFileName, NET_FW_IP_VERSION ipVersion, int32 portNumber, BSTR localAddress, NET_FW_IP_PROTOCOL ipProtocol, out VARIANT allowed, out VARIANT restricted) IsPortAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwMgr self, NET_FW_IP_VERSION ipVersion, BSTR localAddress, uint8 type, out VARIANT allowed, out VARIANT restricted) IsIcmpTypeAllowed;
			}
		}
		[CRepr]
		public struct INetFwProduct : IDispatch
		{
			public const new Guid IID = .(0x71881699, 0x18f4, 0x458b, 0xb8, 0x92, 0x3f, 0xfc, 0xe5, 0xe0, 0x7f, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RuleCategories(out VARIANT ruleCategories) mut => VT.get_RuleCategories(ref this, out ruleCategories);
			public HRESULT put_RuleCategories(VARIANT ruleCategories) mut => VT.put_RuleCategories(ref this, ruleCategories);
			public HRESULT get_DisplayName(out BSTR displayName) mut => VT.get_DisplayName(ref this, out displayName);
			public HRESULT put_DisplayName(BSTR displayName) mut => VT.put_DisplayName(ref this, displayName);
			public HRESULT get_PathToSignedProductExe(out BSTR path) mut => VT.get_PathToSignedProductExe(ref this, out path);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProduct self, out VARIANT ruleCategories) get_RuleCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProduct self, VARIANT ruleCategories) put_RuleCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProduct self, out BSTR displayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProduct self, BSTR displayName) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProduct self, out BSTR path) get_PathToSignedProductExe;
			}
		}
		[CRepr]
		public struct INetFwProducts : IDispatch
		{
			public const new Guid IID = .(0x39eb36e0, 0x2097, 0x40bd, 0x8a, 0xf2, 0x63, 0xa1, 0x3b, 0x52, 0x53, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Register(ref INetFwProduct product, out IUnknown* registration) mut => VT.Register(ref this, ref product, out registration);
			public HRESULT Item(int32 index, out INetFwProduct* product) mut => VT.Item(ref this, index, out product);
			public HRESULT get__NewEnum(out IUnknown* newEnum) mut => VT.get__NewEnum(ref this, out newEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProducts self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProducts self, ref INetFwProduct product, out IUnknown* registration) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProducts self, int32 index, out INetFwProduct* product) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetFwProducts self, out IUnknown* newEnum) get__NewEnum;
			}
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NetworkIsolationSetupAppContainerBinaries(PSID applicationContainerSid, PWSTR packageFullName, PWSTR packageFolder, PWSTR displayName, BOOL bBinariesFullyComputed, PWSTR* binaries, uint32 binariesCount);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationRegisterForAppContainerChanges(uint32 flags, PAC_CHANGES_CALLBACK_FN callback, void* context, out HANDLE registrationObject);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationUnregisterForAppContainerChanges(HANDLE registrationObject);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationFreeAppContainers(ref INET_FIREWALL_APP_CONTAINER pPublicAppCs);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationEnumAppContainers(uint32 Flags, out uint32 pdwNumPublicAppCs, out INET_FIREWALL_APP_CONTAINER* ppPublicAppCs);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationGetAppContainerConfig(out uint32 pdwNumPublicAppCs, out SID_AND_ATTRIBUTES* appContainerSids);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationSetAppContainerConfig(uint32 dwNumPublicAppCs, SID_AND_ATTRIBUTES* appContainerSids);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationDiagnoseConnectFailureAndGetInfo(PWSTR wszServerName, out NETISO_ERROR_TYPE netIsoError);
	}
}
