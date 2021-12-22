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
		
		[AllowDuplicates]
		public enum NETCON_CHARACTERISTIC_FLAGS : int32
		{
			NCCF_NONE = 0,
			NCCF_ALL_USERS = 1,
			NCCF_ALLOW_DUPLICATION = 2,
			NCCF_ALLOW_REMOVAL = 4,
			NCCF_ALLOW_RENAME = 8,
			NCCF_INCOMING_ONLY = 32,
			NCCF_OUTGOING_ONLY = 64,
			NCCF_BRANDED = 128,
			NCCF_SHARED = 256,
			NCCF_BRIDGED = 512,
			NCCF_FIREWALLED = 1024,
			NCCF_DEFAULT = 2048,
			NCCF_HOMENET_CAPABLE = 4096,
			NCCF_SHARED_PRIVATE = 8192,
			NCCF_QUARANTINED = 16384,
			NCCF_RESERVED = 32768,
			NCCF_HOSTED_NETWORK = 65536,
			NCCF_VIRTUAL_STATION = 131072,
			NCCF_WIFI_DIRECT = 262144,
			NCCF_BLUETOOTH_MASK = 983040,
			NCCF_LAN_MASK = 15728640,
		}
		[AllowDuplicates]
		public enum NETCON_STATUS : int32
		{
			NCS_DISCONNECTED = 0,
			NCS_CONNECTING = 1,
			NCS_CONNECTED = 2,
			NCS_DISCONNECTING = 3,
			NCS_HARDWARE_NOT_PRESENT = 4,
			NCS_HARDWARE_DISABLED = 5,
			NCS_HARDWARE_MALFUNCTION = 6,
			NCS_MEDIA_DISCONNECTED = 7,
			NCS_AUTHENTICATING = 8,
			NCS_AUTHENTICATION_SUCCEEDED = 9,
			NCS_AUTHENTICATION_FAILED = 10,
			NCS_INVALID_ADDRESS = 11,
			NCS_CREDENTIALS_REQUIRED = 12,
			NCS_ACTION_REQUIRED = 13,
			NCS_ACTION_REQUIRED_RETRY = 14,
			NCS_CONNECT_FAILED = 15,
		}
		[AllowDuplicates]
		public enum NETCON_TYPE : int32
		{
			NCT_DIRECT_CONNECT = 0,
			NCT_INBOUND = 1,
			NCT_INTERNET = 2,
			NCT_LAN = 3,
			NCT_PHONE = 4,
			NCT_TUNNEL = 5,
			NCT_BRIDGE = 6,
		}
		[AllowDuplicates]
		public enum NETCON_MEDIATYPE : int32
		{
			NCM_NONE = 0,
			NCM_DIRECT = 1,
			NCM_ISDN = 2,
			NCM_LAN = 3,
			NCM_PHONE = 4,
			NCM_TUNNEL = 5,
			NCM_PPPOE = 6,
			NCM_BRIDGE = 7,
			NCM_SHAREDACCESSHOST_LAN = 8,
			NCM_SHAREDACCESSHOST_RAS = 9,
		}
		[AllowDuplicates]
		public enum NETCONMGR_ENUM_FLAGS : int32
		{
			NCME_DEFAULT = 0,
			NCME_HIDDEN = 1,
		}
		[AllowDuplicates]
		public enum NETCONUI_CONNECT_FLAGS : int32
		{
			NCUC_DEFAULT = 0,
			NCUC_NO_UI = 1,
			NCUC_ENABLE_DISABLE = 2,
		}
		[AllowDuplicates]
		public enum SHARINGCONNECTIONTYPE : int32
		{
			ICSSHARINGTYPE_PUBLIC = 0,
			ICSSHARINGTYPE_PRIVATE = 1,
		}
		[AllowDuplicates]
		public enum SHARINGCONNECTION_ENUM_FLAGS : int32
		{
			ICSSC_DEFAULT = 0,
			ICSSC_ENABLED = 1,
		}
		[AllowDuplicates]
		public enum ICS_TARGETTYPE : int32
		{
			ICSTT_NAME = 0,
			ICSTT_IPADDRESS = 1,
		}
		[AllowDuplicates]
		public enum NET_FW_POLICY_TYPE : int32
		{
			NET_FW_POLICY_GROUP = 0,
			NET_FW_POLICY_LOCAL = 1,
			NET_FW_POLICY_EFFECTIVE = 2,
			NET_FW_POLICY_TYPE_MAX = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_PROFILE_TYPE : int32
		{
			NET_FW_PROFILE_DOMAIN = 0,
			NET_FW_PROFILE_STANDARD = 1,
			NET_FW_PROFILE_CURRENT = 2,
			NET_FW_PROFILE_TYPE_MAX = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_PROFILE_TYPE2 : int32
		{
			NET_FW_PROFILE2_DOMAIN = 1,
			NET_FW_PROFILE2_PRIVATE = 2,
			NET_FW_PROFILE2_PUBLIC = 4,
			NET_FW_PROFILE2_ALL = 2147483647,
		}
		[AllowDuplicates]
		public enum NET_FW_IP_VERSION : int32
		{
			NET_FW_IP_VERSION_V4 = 0,
			NET_FW_IP_VERSION_V6 = 1,
			NET_FW_IP_VERSION_ANY = 2,
			NET_FW_IP_VERSION_MAX = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_SCOPE : int32
		{
			NET_FW_SCOPE_ALL = 0,
			NET_FW_SCOPE_LOCAL_SUBNET = 1,
			NET_FW_SCOPE_CUSTOM = 2,
			NET_FW_SCOPE_MAX = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_IP_PROTOCOL : int32
		{
			NET_FW_IP_PROTOCOL_TCP = 6,
			NET_FW_IP_PROTOCOL_UDP = 17,
			NET_FW_IP_PROTOCOL_ANY = 256,
		}
		[AllowDuplicates]
		public enum NET_FW_SERVICE_TYPE : int32
		{
			NET_FW_SERVICE_FILE_AND_PRINT = 0,
			NET_FW_SERVICE_UPNP = 1,
			NET_FW_SERVICE_REMOTE_DESKTOP = 2,
			NET_FW_SERVICE_NONE = 3,
			NET_FW_SERVICE_TYPE_MAX = 4,
		}
		[AllowDuplicates]
		public enum NET_FW_RULE_DIRECTION : int32
		{
			NET_FW_RULE_DIR_IN = 1,
			NET_FW_RULE_DIR_OUT = 2,
			NET_FW_RULE_DIR_MAX = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_ACTION : int32
		{
			NET_FW_ACTION_BLOCK = 0,
			NET_FW_ACTION_ALLOW = 1,
			NET_FW_ACTION_MAX = 2,
		}
		[AllowDuplicates]
		public enum NET_FW_MODIFY_STATE : int32
		{
			NET_FW_MODIFY_STATE_OK = 0,
			NET_FW_MODIFY_STATE_GP_OVERRIDE = 1,
			NET_FW_MODIFY_STATE_INBOUND_BLOCKED = 2,
		}
		[AllowDuplicates]
		public enum NET_FW_RULE_CATEGORY : int32
		{
			NET_FW_RULE_CATEGORY_BOOT = 0,
			NET_FW_RULE_CATEGORY_STEALTH = 1,
			NET_FW_RULE_CATEGORY_FIREWALL = 2,
			NET_FW_RULE_CATEGORY_CONSEC = 3,
			NET_FW_RULE_CATEGORY_MAX = 4,
		}
		[AllowDuplicates]
		public enum NET_FW_EDGE_TRAVERSAL_TYPE : int32
		{
			NET_FW_EDGE_TRAVERSAL_TYPE_DENY = 0,
			NET_FW_EDGE_TRAVERSAL_TYPE_ALLOW = 1,
			NET_FW_EDGE_TRAVERSAL_TYPE_DEFER_TO_APP = 2,
			NET_FW_EDGE_TRAVERSAL_TYPE_DEFER_TO_USER = 3,
		}
		[AllowDuplicates]
		public enum NET_FW_AUTHENTICATE_TYPE : int32
		{
			NET_FW_AUTHENTICATE_NONE = 0,
			NET_FW_AUTHENTICATE_NO_ENCAPSULATION = 1,
			NET_FW_AUTHENTICATE_WITH_INTEGRITY = 2,
			NET_FW_AUTHENTICATE_AND_NEGOTIATE_ENCRYPTION = 3,
			NET_FW_AUTHENTICATE_AND_ENCRYPT = 4,
		}
		[AllowDuplicates]
		public enum NETISO_FLAG : int32
		{
			NETISO_FLAG_FORCE_COMPUTE_BINARIES = 1,
			NETISO_FLAG_MAX = 2,
		}
		[AllowDuplicates]
		public enum INET_FIREWALL_AC_CREATION_TYPE : int32
		{
			INET_FIREWALL_AC_NONE = 0,
			INET_FIREWALL_AC_PACKAGE_ID_ONLY = 1,
			INET_FIREWALL_AC_BINARY = 2,
			INET_FIREWALL_AC_MAX = 4,
		}
		[AllowDuplicates]
		public enum INET_FIREWALL_AC_CHANGE_TYPE : int32
		{
			INET_FIREWALL_AC_CHANGE_INVALID = 0,
			INET_FIREWALL_AC_CHANGE_CREATE = 1,
			INET_FIREWALL_AC_CHANGE_DELETE = 2,
			INET_FIREWALL_AC_CHANGE_MAX = 3,
		}
		[AllowDuplicates]
		public enum NETISO_ERROR_TYPE : int32
		{
			NETISO_ERROR_TYPE_NONE = 0,
			NETISO_ERROR_TYPE_PRIVATE_NETWORK = 1,
			NETISO_ERROR_TYPE_INTERNET_CLIENT = 2,
			NETISO_ERROR_TYPE_INTERNET_CLIENT_SERVER = 3,
			NETISO_ERROR_TYPE_MAX = 4,
		}
		[AllowDuplicates]
		public enum _tag_FW_DYNAMIC_KEYWORD_ORIGIN_TYPE : int32
		{
			FW_DYNAMIC_KEYWORD_ORIGIN_INVALID = 0,
			FW_DYNAMIC_KEYWORD_ORIGIN_LOCAL = 1,
			FW_DYNAMIC_KEYWORD_ORIGIN_MDM = 2,
		}
		[AllowDuplicates]
		public enum _tag_FW_DYNAMIC_KEYWORD_ADDRESS_FLAGS : int32
		{
			FW_DYNAMIC_KEYWORD_ADDRESS_FLAGS_AUTO_RESOLVE = 1,
		}
		[AllowDuplicates]
		public enum _tag_FW_DYNAMIC_KEYWORD_ADDRESS_ENUM_FLAGS : int32
		{
			FW_DYNAMIC_KEYWORD_ADDRESS_ENUM_FLAGS_AUTO_RESOLVE = 1,
			FW_DYNAMIC_KEYWORD_ADDRESS_ENUM_FLAGS_NON_AUTO_RESOLVE = 2,
			FW_DYNAMIC_KEYWORD_ADDRESS_ENUM_FLAGS_ALL = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PAC_CHANGES_CALLBACK_FN(void* context, INET_FIREWALL_AC_CHANGE* pChange);
		public function void PNETISO_EDP_ID_CALLBACK_FN(void* context, PWSTR wszEnterpriseId, uint32 dwErr);
		public function uint32 PFN_FWADDDYNAMICKEYWORDADDRESS0(_tag_FW_DYNAMIC_KEYWORD_ADDRESS0* dynamicKeywordAddress);
		public function uint32 PFN_FWDELETEDYNAMICKEYWORDADDRESS0(Guid dynamicKeywordAddressId);
		public function uint32 PFN_FWENUMDYNAMICKEYWORDADDRESSESBYTYPE0(uint32 flags, _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0** dynamicKeywordAddressData);
		public function uint32 PFN_FWENUMDYNAMICKEYWORDADDRESSBYID0(Guid dynamicKeywordAddressId, _tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0** dynamicKeywordAddressData);
		public function uint32 PFN_FWFREEDYNAMICKEYWORDADDRESSDATA0(_tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0* dynamicKeywordAddressData);
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
			
			public HRESULT get_StaticPortMappingCollection(IStaticPortMappingCollection** ppSPMs) mut
			{
				return VT.get_StaticPortMappingCollection(&this, ppSPMs);
			}
			public HRESULT get_DynamicPortMappingCollection(IDynamicPortMappingCollection** ppDPMs) mut
			{
				return VT.get_DynamicPortMappingCollection(&this, ppDPMs);
			}
			public HRESULT get_NATEventManager(INATEventManager** ppNEM) mut
			{
				return VT.get_NATEventManager(&this, ppNEM);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IUPnPNAT *self, IStaticPortMappingCollection** ppSPMs) get_StaticPortMappingCollection;
				public new function HRESULT(IUPnPNAT *self, IDynamicPortMappingCollection** ppDPMs) get_DynamicPortMappingCollection;
				public new function HRESULT(IUPnPNAT *self, INATEventManager** ppNEM) get_NATEventManager;
			}
		}
		[CRepr]
		public struct INATEventManager : IDispatch
		{
			public const new Guid IID = .(0x624bd588, 0x9060, 0x4109, 0xb0, 0xb0, 0x1a, 0xdb, 0xbc, 0xac, 0x32, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ExternalIPAddressCallback(IUnknown* pUnk) mut
			{
				return VT.put_ExternalIPAddressCallback(&this, pUnk);
			}
			public HRESULT put_NumberOfEntriesCallback(IUnknown* pUnk) mut
			{
				return VT.put_NumberOfEntriesCallback(&this, pUnk);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INATEventManager *self, IUnknown* pUnk) put_ExternalIPAddressCallback;
				public new function HRESULT(INATEventManager *self, IUnknown* pUnk) put_NumberOfEntriesCallback;
			}
		}
		[CRepr]
		public struct INATExternalIPAddressCallback : IUnknown
		{
			public const new Guid IID = .(0x9c416740, 0xa34e, 0x446f, 0xba, 0x06, 0xab, 0xd0, 0x4c, 0x31, 0x49, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewExternalIPAddress(BSTR bstrNewExternalIPAddress) mut
			{
				return VT.NewExternalIPAddress(&this, bstrNewExternalIPAddress);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INATExternalIPAddressCallback *self, BSTR bstrNewExternalIPAddress) NewExternalIPAddress;
			}
		}
		[CRepr]
		public struct INATNumberOfEntriesCallback : IUnknown
		{
			public const new Guid IID = .(0xc83a0a74, 0x91ee, 0x41b6, 0xb6, 0x7a, 0x67, 0xe0, 0xf0, 0x0b, 0xbd, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewNumberOfEntries(int32 lNewNumberOfEntries) mut
			{
				return VT.NewNumberOfEntries(&this, lNewNumberOfEntries);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INATNumberOfEntriesCallback *self, int32 lNewNumberOfEntries) NewNumberOfEntries;
			}
		}
		[CRepr]
		public struct IDynamicPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0xb60de00f, 0x156e, 0x4e8d, 0x9e, 0xc1, 0x3a, 0x23, 0x42, 0xc1, 0x08, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Item(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, IDynamicPortMapping** ppDPM) mut
			{
				return VT.get_Item(&this, bstrRemoteHost, lExternalPort, bstrProtocol, ppDPM);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT Remove(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol) mut
			{
				return VT.Remove(&this, bstrRemoteHost, lExternalPort, bstrProtocol);
			}
			public HRESULT Add(BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, int32 lLeaseDuration, IDynamicPortMapping** ppDPM) mut
			{
				return VT.Add(&this, bstrRemoteHost, lExternalPort, bstrProtocol, lInternalPort, bstrInternalClient, bEnabled, bstrDescription, lLeaseDuration, ppDPM);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDynamicPortMappingCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IDynamicPortMappingCollection *self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, IDynamicPortMapping** ppDPM) get_Item;
				public new function HRESULT(IDynamicPortMappingCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IDynamicPortMappingCollection *self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol) Remove;
				public new function HRESULT(IDynamicPortMappingCollection *self, BSTR bstrRemoteHost, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, int32 lLeaseDuration, IDynamicPortMapping** ppDPM) Add;
			}
		}
		[CRepr]
		public struct IDynamicPortMapping : IDispatch
		{
			public const new Guid IID = .(0x4fc80282, 0x23b6, 0x4378, 0x9a, 0x27, 0xcd, 0x8f, 0x17, 0xc9, 0x40, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExternalIPAddress(BSTR* pVal) mut
			{
				return VT.get_ExternalIPAddress(&this, pVal);
			}
			public HRESULT get_RemoteHost(BSTR* pVal) mut
			{
				return VT.get_RemoteHost(&this, pVal);
			}
			public HRESULT get_ExternalPort(int32* pVal) mut
			{
				return VT.get_ExternalPort(&this, pVal);
			}
			public HRESULT get_Protocol(BSTR* pVal) mut
			{
				return VT.get_Protocol(&this, pVal);
			}
			public HRESULT get_InternalPort(int32* pVal) mut
			{
				return VT.get_InternalPort(&this, pVal);
			}
			public HRESULT get_InternalClient(BSTR* pVal) mut
			{
				return VT.get_InternalClient(&this, pVal);
			}
			public HRESULT get_Enabled(int16* pVal) mut
			{
				return VT.get_Enabled(&this, pVal);
			}
			public HRESULT get_Description(BSTR* pVal) mut
			{
				return VT.get_Description(&this, pVal);
			}
			public HRESULT get_LeaseDuration(int32* pVal) mut
			{
				return VT.get_LeaseDuration(&this, pVal);
			}
			public HRESULT RenewLease(int32 lLeaseDurationDesired, int32* pLeaseDurationReturned) mut
			{
				return VT.RenewLease(&this, lLeaseDurationDesired, pLeaseDurationReturned);
			}
			public HRESULT EditInternalClient(BSTR bstrInternalClient) mut
			{
				return VT.EditInternalClient(&this, bstrInternalClient);
			}
			public HRESULT Enable(int16 vb) mut
			{
				return VT.Enable(&this, vb);
			}
			public HRESULT EditDescription(BSTR bstrDescription) mut
			{
				return VT.EditDescription(&this, bstrDescription);
			}
			public HRESULT EditInternalPort(int32 lInternalPort) mut
			{
				return VT.EditInternalPort(&this, lInternalPort);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDynamicPortMapping *self, BSTR* pVal) get_ExternalIPAddress;
				public new function HRESULT(IDynamicPortMapping *self, BSTR* pVal) get_RemoteHost;
				public new function HRESULT(IDynamicPortMapping *self, int32* pVal) get_ExternalPort;
				public new function HRESULT(IDynamicPortMapping *self, BSTR* pVal) get_Protocol;
				public new function HRESULT(IDynamicPortMapping *self, int32* pVal) get_InternalPort;
				public new function HRESULT(IDynamicPortMapping *self, BSTR* pVal) get_InternalClient;
				public new function HRESULT(IDynamicPortMapping *self, int16* pVal) get_Enabled;
				public new function HRESULT(IDynamicPortMapping *self, BSTR* pVal) get_Description;
				public new function HRESULT(IDynamicPortMapping *self, int32* pVal) get_LeaseDuration;
				public new function HRESULT(IDynamicPortMapping *self, int32 lLeaseDurationDesired, int32* pLeaseDurationReturned) RenewLease;
				public new function HRESULT(IDynamicPortMapping *self, BSTR bstrInternalClient) EditInternalClient;
				public new function HRESULT(IDynamicPortMapping *self, int16 vb) Enable;
				public new function HRESULT(IDynamicPortMapping *self, BSTR bstrDescription) EditDescription;
				public new function HRESULT(IDynamicPortMapping *self, int32 lInternalPort) EditInternalPort;
			}
		}
		[CRepr]
		public struct IStaticPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0xcd1f3e77, 0x66d6, 0x4664, 0x82, 0xc7, 0x36, 0xdb, 0xb6, 0x41, 0xd0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Item(int32 lExternalPort, BSTR bstrProtocol, IStaticPortMapping** ppSPM) mut
			{
				return VT.get_Item(&this, lExternalPort, bstrProtocol, ppSPM);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT Remove(int32 lExternalPort, BSTR bstrProtocol) mut
			{
				return VT.Remove(&this, lExternalPort, bstrProtocol);
			}
			public HRESULT Add(int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, IStaticPortMapping** ppSPM) mut
			{
				return VT.Add(&this, lExternalPort, bstrProtocol, lInternalPort, bstrInternalClient, bEnabled, bstrDescription, ppSPM);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IStaticPortMappingCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IStaticPortMappingCollection *self, int32 lExternalPort, BSTR bstrProtocol, IStaticPortMapping** ppSPM) get_Item;
				public new function HRESULT(IStaticPortMappingCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IStaticPortMappingCollection *self, int32 lExternalPort, BSTR bstrProtocol) Remove;
				public new function HRESULT(IStaticPortMappingCollection *self, int32 lExternalPort, BSTR bstrProtocol, int32 lInternalPort, BSTR bstrInternalClient, int16 bEnabled, BSTR bstrDescription, IStaticPortMapping** ppSPM) Add;
			}
		}
		[CRepr]
		public struct IStaticPortMapping : IDispatch
		{
			public const new Guid IID = .(0x6f10711f, 0x729b, 0x41e5, 0x93, 0xb8, 0xf2, 0x1d, 0x0f, 0x81, 0x8d, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExternalIPAddress(BSTR* pVal) mut
			{
				return VT.get_ExternalIPAddress(&this, pVal);
			}
			public HRESULT get_ExternalPort(int32* pVal) mut
			{
				return VT.get_ExternalPort(&this, pVal);
			}
			public HRESULT get_InternalPort(int32* pVal) mut
			{
				return VT.get_InternalPort(&this, pVal);
			}
			public HRESULT get_Protocol(BSTR* pVal) mut
			{
				return VT.get_Protocol(&this, pVal);
			}
			public HRESULT get_InternalClient(BSTR* pVal) mut
			{
				return VT.get_InternalClient(&this, pVal);
			}
			public HRESULT get_Enabled(int16* pVal) mut
			{
				return VT.get_Enabled(&this, pVal);
			}
			public HRESULT get_Description(BSTR* pVal) mut
			{
				return VT.get_Description(&this, pVal);
			}
			public HRESULT EditInternalClient(BSTR bstrInternalClient) mut
			{
				return VT.EditInternalClient(&this, bstrInternalClient);
			}
			public HRESULT Enable(int16 vb) mut
			{
				return VT.Enable(&this, vb);
			}
			public HRESULT EditDescription(BSTR bstrDescription) mut
			{
				return VT.EditDescription(&this, bstrDescription);
			}
			public HRESULT EditInternalPort(int32 lInternalPort) mut
			{
				return VT.EditInternalPort(&this, lInternalPort);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IStaticPortMapping *self, BSTR* pVal) get_ExternalIPAddress;
				public new function HRESULT(IStaticPortMapping *self, int32* pVal) get_ExternalPort;
				public new function HRESULT(IStaticPortMapping *self, int32* pVal) get_InternalPort;
				public new function HRESULT(IStaticPortMapping *self, BSTR* pVal) get_Protocol;
				public new function HRESULT(IStaticPortMapping *self, BSTR* pVal) get_InternalClient;
				public new function HRESULT(IStaticPortMapping *self, int16* pVal) get_Enabled;
				public new function HRESULT(IStaticPortMapping *self, BSTR* pVal) get_Description;
				public new function HRESULT(IStaticPortMapping *self, BSTR bstrInternalClient) EditInternalClient;
				public new function HRESULT(IStaticPortMapping *self, int16 vb) Enable;
				public new function HRESULT(IStaticPortMapping *self, BSTR bstrDescription) EditDescription;
				public new function HRESULT(IStaticPortMapping *self, int32 lInternalPort) EditInternalPort;
			}
		}
		[CRepr]
		public struct IEnumNetConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956a0, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, INetConnection** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumNetConnection** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumNetConnection *self, uint32 celt, INetConnection** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetConnection *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetConnection *self) Reset;
				public new function HRESULT(IEnumNetConnection *self, IEnumNetConnection** ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956a1, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect() mut
			{
				return VT.Connect(&this);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Duplicate(PWSTR pszwDuplicateName, INetConnection** ppCon) mut
			{
				return VT.Duplicate(&this, pszwDuplicateName, ppCon);
			}
			public HRESULT GetProperties(NETCON_PROPERTIES** ppProps) mut
			{
				return VT.GetProperties(&this, ppProps);
			}
			public HRESULT GetUiObjectClassId(Guid* pclsid) mut
			{
				return VT.GetUiObjectClassId(&this, pclsid);
			}
			public HRESULT Rename(PWSTR pszwNewName) mut
			{
				return VT.Rename(&this, pszwNewName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetConnection *self) Connect;
				public new function HRESULT(INetConnection *self) Disconnect;
				public new function HRESULT(INetConnection *self) Delete;
				public new function HRESULT(INetConnection *self, PWSTR pszwDuplicateName, INetConnection** ppCon) Duplicate;
				public new function HRESULT(INetConnection *self, NETCON_PROPERTIES** ppProps) GetProperties;
				public new function HRESULT(INetConnection *self, Guid* pclsid) GetUiObjectClassId;
				public new function HRESULT(INetConnection *self, PWSTR pszwNewName) Rename;
			}
		}
		[CRepr]
		public struct INetConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xc08956a2, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumConnections(NETCONMGR_ENUM_FLAGS Flags, IEnumNetConnection** ppEnum) mut
			{
				return VT.EnumConnections(&this, Flags, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetConnectionManager *self, NETCONMGR_ENUM_FLAGS Flags, IEnumNetConnection** ppEnum) EnumConnections;
			}
		}
		[CRepr]
		public struct INetConnectionConnectUi : IUnknown
		{
			public const new Guid IID = .(0xc08956a3, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConnection(INetConnection* pCon) mut
			{
				return VT.SetConnection(&this, pCon);
			}
			public HRESULT Connect(HWND hwndParent, uint32 dwFlags) mut
			{
				return VT.Connect(&this, hwndParent, dwFlags);
			}
			public HRESULT Disconnect(HWND hwndParent, uint32 dwFlags) mut
			{
				return VT.Disconnect(&this, hwndParent, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetConnectionConnectUi *self, INetConnection* pCon) SetConnection;
				public new function HRESULT(INetConnectionConnectUi *self, HWND hwndParent, uint32 dwFlags) Connect;
				public new function HRESULT(INetConnectionConnectUi *self, HWND hwndParent, uint32 dwFlags) Disconnect;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPortMapping : IUnknown
		{
			public const new Guid IID = .(0xc08956b0, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgVar, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumNetSharingPortMapping** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumNetSharingPortMapping *self, uint32 celt, VARIANT* rgVar, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetSharingPortMapping *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetSharingPortMapping *self) Reset;
				public new function HRESULT(IEnumNetSharingPortMapping *self, IEnumNetSharingPortMapping** ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetSharingPortMappingProps : IDispatch
		{
			public const new Guid IID = .(0x24b7e9b5, 0xe38f, 0x4685, 0x85, 0x1b, 0x00, 0x89, 0x2c, 0xf5, 0xf9, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT get_IPProtocol(uint8* pucIPProt) mut
			{
				return VT.get_IPProtocol(&this, pucIPProt);
			}
			public HRESULT get_ExternalPort(int32* pusPort) mut
			{
				return VT.get_ExternalPort(&this, pusPort);
			}
			public HRESULT get_InternalPort(int32* pusPort) mut
			{
				return VT.get_InternalPort(&this, pusPort);
			}
			public HRESULT get_Options(int32* pdwOptions) mut
			{
				return VT.get_Options(&this, pdwOptions);
			}
			public HRESULT get_TargetName(BSTR* pbstrTargetName) mut
			{
				return VT.get_TargetName(&this, pbstrTargetName);
			}
			public HRESULT get_TargetIPAddress(BSTR* pbstrTargetIPAddress) mut
			{
				return VT.get_TargetIPAddress(&this, pbstrTargetIPAddress);
			}
			public HRESULT get_Enabled(int16* pbool) mut
			{
				return VT.get_Enabled(&this, pbool);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingPortMappingProps *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(INetSharingPortMappingProps *self, uint8* pucIPProt) get_IPProtocol;
				public new function HRESULT(INetSharingPortMappingProps *self, int32* pusPort) get_ExternalPort;
				public new function HRESULT(INetSharingPortMappingProps *self, int32* pusPort) get_InternalPort;
				public new function HRESULT(INetSharingPortMappingProps *self, int32* pdwOptions) get_Options;
				public new function HRESULT(INetSharingPortMappingProps *self, BSTR* pbstrTargetName) get_TargetName;
				public new function HRESULT(INetSharingPortMappingProps *self, BSTR* pbstrTargetIPAddress) get_TargetIPAddress;
				public new function HRESULT(INetSharingPortMappingProps *self, int16* pbool) get_Enabled;
			}
		}
		[CRepr]
		public struct INetSharingPortMapping : IDispatch
		{
			public const new Guid IID = .(0xc08956b1, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Disable() mut
			{
				return VT.Disable(&this);
			}
			public HRESULT Enable() mut
			{
				return VT.Enable(&this);
			}
			public HRESULT get_Properties(INetSharingPortMappingProps** ppNSPMP) mut
			{
				return VT.get_Properties(&this, ppNSPMP);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingPortMapping *self) Disable;
				public new function HRESULT(INetSharingPortMapping *self) Enable;
				public new function HRESULT(INetSharingPortMapping *self, INetSharingPortMappingProps** ppNSPMP) get_Properties;
				public new function HRESULT(INetSharingPortMapping *self) Delete;
			}
		}
		[CRepr]
		public struct IEnumNetSharingEveryConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b8, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgVar, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumNetSharingEveryConnection** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumNetSharingEveryConnection *self, uint32 celt, VARIANT* rgVar, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetSharingEveryConnection *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetSharingEveryConnection *self) Reset;
				public new function HRESULT(IEnumNetSharingEveryConnection *self, IEnumNetSharingEveryConnection** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPublicConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b4, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgVar, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumNetSharingPublicConnection** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumNetSharingPublicConnection *self, uint32 celt, VARIANT* rgVar, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetSharingPublicConnection *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetSharingPublicConnection *self) Reset;
				public new function HRESULT(IEnumNetSharingPublicConnection *self, IEnumNetSharingPublicConnection** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumNetSharingPrivateConnection : IUnknown
		{
			public const new Guid IID = .(0xc08956b5, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, uint32* pCeltFetched) mut
			{
				return VT.Next(&this, celt, rgVar, pCeltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumNetSharingPrivateConnection** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumNetSharingPrivateConnection *self, uint32 celt, VARIANT* rgVar, uint32* pCeltFetched) Next;
				public new function HRESULT(IEnumNetSharingPrivateConnection *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetSharingPrivateConnection *self) Reset;
				public new function HRESULT(IEnumNetSharingPrivateConnection *self, IEnumNetSharingPrivateConnection** ppenum) Clone;
			}
		}
		[CRepr]
		public struct INetSharingPortMappingCollection : IDispatch
		{
			public const new Guid IID = .(0x02e4a2de, 0xda20, 0x4e34, 0x89, 0xc8, 0xac, 0x22, 0x27, 0x5a, 0x01, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingPortMappingCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(INetSharingPortMappingCollection *self, int32* pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetConnectionProps : IDispatch
		{
			public const new Guid IID = .(0xf4277c95, 0xce5b, 0x463d, 0x81, 0x67, 0x56, 0x62, 0xd9, 0xbc, 0xaa, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Guid(BSTR* pbstrGuid) mut
			{
				return VT.get_Guid(&this, pbstrGuid);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT get_DeviceName(BSTR* pbstrDeviceName) mut
			{
				return VT.get_DeviceName(&this, pbstrDeviceName);
			}
			public HRESULT get_Status(NETCON_STATUS* pStatus) mut
			{
				return VT.get_Status(&this, pStatus);
			}
			public HRESULT get_MediaType(NETCON_MEDIATYPE* pMediaType) mut
			{
				return VT.get_MediaType(&this, pMediaType);
			}
			public HRESULT get_Characteristics(uint32* pdwFlags) mut
			{
				return VT.get_Characteristics(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetConnectionProps *self, BSTR* pbstrGuid) get_Guid;
				public new function HRESULT(INetConnectionProps *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(INetConnectionProps *self, BSTR* pbstrDeviceName) get_DeviceName;
				public new function HRESULT(INetConnectionProps *self, NETCON_STATUS* pStatus) get_Status;
				public new function HRESULT(INetConnectionProps *self, NETCON_MEDIATYPE* pMediaType) get_MediaType;
				public new function HRESULT(INetConnectionProps *self, uint32* pdwFlags) get_Characteristics;
			}
		}
		[CRepr]
		public struct INetSharingConfiguration : IDispatch
		{
			public const new Guid IID = .(0xc08956b6, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SharingEnabled(int16* pbEnabled) mut
			{
				return VT.get_SharingEnabled(&this, pbEnabled);
			}
			public HRESULT get_SharingConnectionType(SHARINGCONNECTIONTYPE* pType) mut
			{
				return VT.get_SharingConnectionType(&this, pType);
			}
			public HRESULT DisableSharing() mut
			{
				return VT.DisableSharing(&this);
			}
			public HRESULT EnableSharing(SHARINGCONNECTIONTYPE Type) mut
			{
				return VT.EnableSharing(&this, Type);
			}
			public HRESULT get_InternetFirewallEnabled(int16* pbEnabled) mut
			{
				return VT.get_InternetFirewallEnabled(&this, pbEnabled);
			}
			public HRESULT DisableInternetFirewall() mut
			{
				return VT.DisableInternetFirewall(&this);
			}
			public HRESULT EnableInternetFirewall() mut
			{
				return VT.EnableInternetFirewall(&this);
			}
			public HRESULT get_EnumPortMappings(SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPortMappingCollection** ppColl) mut
			{
				return VT.get_EnumPortMappings(&this, Flags, ppColl);
			}
			public HRESULT AddPortMapping(BSTR bstrName, uint8 ucIPProtocol, uint16 usExternalPort, uint16 usInternalPort, uint32 dwOptions, BSTR bstrTargetNameOrIPAddress, ICS_TARGETTYPE eTargetType, INetSharingPortMapping** ppMapping) mut
			{
				return VT.AddPortMapping(&this, bstrName, ucIPProtocol, usExternalPort, usInternalPort, dwOptions, bstrTargetNameOrIPAddress, eTargetType, ppMapping);
			}
			public HRESULT RemovePortMapping(INetSharingPortMapping* pMapping) mut
			{
				return VT.RemovePortMapping(&this, pMapping);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingConfiguration *self, int16* pbEnabled) get_SharingEnabled;
				public new function HRESULT(INetSharingConfiguration *self, SHARINGCONNECTIONTYPE* pType) get_SharingConnectionType;
				public new function HRESULT(INetSharingConfiguration *self) DisableSharing;
				public new function HRESULT(INetSharingConfiguration *self, SHARINGCONNECTIONTYPE Type) EnableSharing;
				public new function HRESULT(INetSharingConfiguration *self, int16* pbEnabled) get_InternetFirewallEnabled;
				public new function HRESULT(INetSharingConfiguration *self) DisableInternetFirewall;
				public new function HRESULT(INetSharingConfiguration *self) EnableInternetFirewall;
				public new function HRESULT(INetSharingConfiguration *self, SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPortMappingCollection** ppColl) get_EnumPortMappings;
				public new function HRESULT(INetSharingConfiguration *self, BSTR bstrName, uint8 ucIPProtocol, uint16 usExternalPort, uint16 usInternalPort, uint32 dwOptions, BSTR bstrTargetNameOrIPAddress, ICS_TARGETTYPE eTargetType, INetSharingPortMapping** ppMapping) AddPortMapping;
				public new function HRESULT(INetSharingConfiguration *self, INetSharingPortMapping* pMapping) RemovePortMapping;
			}
		}
		[CRepr]
		public struct INetSharingEveryConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x33c4643c, 0x7811, 0x46fa, 0xa8, 0x9a, 0x76, 0x85, 0x97, 0xbd, 0x72, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingEveryConnectionCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(INetSharingEveryConnectionCollection *self, int32* pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingPublicConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x7d7a6355, 0xf372, 0x4971, 0xa1, 0x49, 0xbf, 0xc9, 0x27, 0xbe, 0x76, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingPublicConnectionCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(INetSharingPublicConnectionCollection *self, int32* pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingPrivateConnectionCollection : IDispatch
		{
			public const new Guid IID = .(0x38ae69e0, 0x4409, 0x402a, 0xa2, 0xcb, 0xe9, 0x65, 0xc7, 0x27, 0xf8, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingPrivateConnectionCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(INetSharingPrivateConnectionCollection *self, int32* pVal) get_Count;
			}
		}
		[CRepr]
		public struct INetSharingManager : IDispatch
		{
			public const new Guid IID = .(0xc08956b7, 0x1cd3, 0x11d1, 0xb1, 0xc5, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SharingInstalled(int16* pbInstalled) mut
			{
				return VT.get_SharingInstalled(&this, pbInstalled);
			}
			public HRESULT get_EnumPublicConnections(SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPublicConnectionCollection** ppColl) mut
			{
				return VT.get_EnumPublicConnections(&this, Flags, ppColl);
			}
			public HRESULT get_EnumPrivateConnections(SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPrivateConnectionCollection** ppColl) mut
			{
				return VT.get_EnumPrivateConnections(&this, Flags, ppColl);
			}
			public HRESULT get_INetSharingConfigurationForINetConnection(INetConnection* pNetConnection, INetSharingConfiguration** ppNetSharingConfiguration) mut
			{
				return VT.get_INetSharingConfigurationForINetConnection(&this, pNetConnection, ppNetSharingConfiguration);
			}
			public HRESULT get_EnumEveryConnection(INetSharingEveryConnectionCollection** ppColl) mut
			{
				return VT.get_EnumEveryConnection(&this, ppColl);
			}
			public HRESULT get_NetConnectionProps(INetConnection* pNetConnection, INetConnectionProps** ppProps) mut
			{
				return VT.get_NetConnectionProps(&this, pNetConnection, ppProps);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetSharingManager *self, int16* pbInstalled) get_SharingInstalled;
				public new function HRESULT(INetSharingManager *self, SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPublicConnectionCollection** ppColl) get_EnumPublicConnections;
				public new function HRESULT(INetSharingManager *self, SHARINGCONNECTION_ENUM_FLAGS Flags, INetSharingPrivateConnectionCollection** ppColl) get_EnumPrivateConnections;
				public new function HRESULT(INetSharingManager *self, INetConnection* pNetConnection, INetSharingConfiguration** ppNetSharingConfiguration) get_INetSharingConfigurationForINetConnection;
				public new function HRESULT(INetSharingManager *self, INetSharingEveryConnectionCollection** ppColl) get_EnumEveryConnection;
				public new function HRESULT(INetSharingManager *self, INetConnection* pNetConnection, INetConnectionProps** ppProps) get_NetConnectionProps;
			}
		}
		[CRepr]
		public struct INetFwRemoteAdminSettings : IDispatch
		{
			public const new Guid IID = .(0xd4becddf, 0x6f73, 0x4a83, 0xb8, 0x32, 0x9c, 0x66, 0x87, 0x4c, 0xd2, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IpVersion(NET_FW_IP_VERSION* ipVersion) mut
			{
				return VT.get_IpVersion(&this, ipVersion);
			}
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut
			{
				return VT.put_IpVersion(&this, ipVersion);
			}
			public HRESULT get_Scope(NET_FW_SCOPE* @scope) mut
			{
				return VT.get_Scope(&this, @scope);
			}
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut
			{
				return VT.put_Scope(&this, @scope);
			}
			public HRESULT get_RemoteAddresses(BSTR* remoteAddrs) mut
			{
				return VT.get_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut
			{
				return VT.put_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwRemoteAdminSettings *self, NET_FW_IP_VERSION* ipVersion) get_IpVersion;
				public new function HRESULT(INetFwRemoteAdminSettings *self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function HRESULT(INetFwRemoteAdminSettings *self, NET_FW_SCOPE* @scope) get_Scope;
				public new function HRESULT(INetFwRemoteAdminSettings *self, NET_FW_SCOPE @scope) put_Scope;
				public new function HRESULT(INetFwRemoteAdminSettings *self, BSTR* remoteAddrs) get_RemoteAddresses;
				public new function HRESULT(INetFwRemoteAdminSettings *self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function HRESULT(INetFwRemoteAdminSettings *self, int16* enabled) get_Enabled;
				public new function HRESULT(INetFwRemoteAdminSettings *self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct INetFwIcmpSettings : IDispatch
		{
			public const new Guid IID = .(0xa6207b2e, 0x7cdd, 0x426a, 0x95, 0x1e, 0x5e, 0x1c, 0xbc, 0x5a, 0xfe, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllowOutboundDestinationUnreachable(int16* allow) mut
			{
				return VT.get_AllowOutboundDestinationUnreachable(&this, allow);
			}
			public HRESULT put_AllowOutboundDestinationUnreachable(int16 allow) mut
			{
				return VT.put_AllowOutboundDestinationUnreachable(&this, allow);
			}
			public HRESULT get_AllowRedirect(int16* allow) mut
			{
				return VT.get_AllowRedirect(&this, allow);
			}
			public HRESULT put_AllowRedirect(int16 allow) mut
			{
				return VT.put_AllowRedirect(&this, allow);
			}
			public HRESULT get_AllowInboundEchoRequest(int16* allow) mut
			{
				return VT.get_AllowInboundEchoRequest(&this, allow);
			}
			public HRESULT put_AllowInboundEchoRequest(int16 allow) mut
			{
				return VT.put_AllowInboundEchoRequest(&this, allow);
			}
			public HRESULT get_AllowOutboundTimeExceeded(int16* allow) mut
			{
				return VT.get_AllowOutboundTimeExceeded(&this, allow);
			}
			public HRESULT put_AllowOutboundTimeExceeded(int16 allow) mut
			{
				return VT.put_AllowOutboundTimeExceeded(&this, allow);
			}
			public HRESULT get_AllowOutboundParameterProblem(int16* allow) mut
			{
				return VT.get_AllowOutboundParameterProblem(&this, allow);
			}
			public HRESULT put_AllowOutboundParameterProblem(int16 allow) mut
			{
				return VT.put_AllowOutboundParameterProblem(&this, allow);
			}
			public HRESULT get_AllowOutboundSourceQuench(int16* allow) mut
			{
				return VT.get_AllowOutboundSourceQuench(&this, allow);
			}
			public HRESULT put_AllowOutboundSourceQuench(int16 allow) mut
			{
				return VT.put_AllowOutboundSourceQuench(&this, allow);
			}
			public HRESULT get_AllowInboundRouterRequest(int16* allow) mut
			{
				return VT.get_AllowInboundRouterRequest(&this, allow);
			}
			public HRESULT put_AllowInboundRouterRequest(int16 allow) mut
			{
				return VT.put_AllowInboundRouterRequest(&this, allow);
			}
			public HRESULT get_AllowInboundTimestampRequest(int16* allow) mut
			{
				return VT.get_AllowInboundTimestampRequest(&this, allow);
			}
			public HRESULT put_AllowInboundTimestampRequest(int16 allow) mut
			{
				return VT.put_AllowInboundTimestampRequest(&this, allow);
			}
			public HRESULT get_AllowInboundMaskRequest(int16* allow) mut
			{
				return VT.get_AllowInboundMaskRequest(&this, allow);
			}
			public HRESULT put_AllowInboundMaskRequest(int16 allow) mut
			{
				return VT.put_AllowInboundMaskRequest(&this, allow);
			}
			public HRESULT get_AllowOutboundPacketTooBig(int16* allow) mut
			{
				return VT.get_AllowOutboundPacketTooBig(&this, allow);
			}
			public HRESULT put_AllowOutboundPacketTooBig(int16 allow) mut
			{
				return VT.put_AllowOutboundPacketTooBig(&this, allow);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowOutboundDestinationUnreachable;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowOutboundDestinationUnreachable;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowRedirect;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowRedirect;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowInboundEchoRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowInboundEchoRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowOutboundTimeExceeded;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowOutboundTimeExceeded;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowOutboundParameterProblem;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowOutboundParameterProblem;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowOutboundSourceQuench;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowOutboundSourceQuench;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowInboundRouterRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowInboundRouterRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowInboundTimestampRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowInboundTimestampRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowInboundMaskRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowInboundMaskRequest;
				public new function HRESULT(INetFwIcmpSettings *self, int16* allow) get_AllowOutboundPacketTooBig;
				public new function HRESULT(INetFwIcmpSettings *self, int16 allow) put_AllowOutboundPacketTooBig;
			}
		}
		[CRepr]
		public struct INetFwOpenPort : IDispatch
		{
			public const new Guid IID = .(0xe0483ba0, 0x47ff, 0x4d9c, 0xa6, 0xd6, 0x77, 0x41, 0xd0, 0xb1, 0x95, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_IpVersion(NET_FW_IP_VERSION* ipVersion) mut
			{
				return VT.get_IpVersion(&this, ipVersion);
			}
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut
			{
				return VT.put_IpVersion(&this, ipVersion);
			}
			public HRESULT get_Protocol(NET_FW_IP_PROTOCOL* ipProtocol) mut
			{
				return VT.get_Protocol(&this, ipProtocol);
			}
			public HRESULT put_Protocol(NET_FW_IP_PROTOCOL ipProtocol) mut
			{
				return VT.put_Protocol(&this, ipProtocol);
			}
			public HRESULT get_Port(int32* portNumber) mut
			{
				return VT.get_Port(&this, portNumber);
			}
			public HRESULT put_Port(int32 portNumber) mut
			{
				return VT.put_Port(&this, portNumber);
			}
			public HRESULT get_Scope(NET_FW_SCOPE* @scope) mut
			{
				return VT.get_Scope(&this, @scope);
			}
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut
			{
				return VT.put_Scope(&this, @scope);
			}
			public HRESULT get_RemoteAddresses(BSTR* remoteAddrs) mut
			{
				return VT.get_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut
			{
				return VT.put_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_BuiltIn(int16* builtIn) mut
			{
				return VT.get_BuiltIn(&this, builtIn);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwOpenPort *self, BSTR* name) get_Name;
				public new function HRESULT(INetFwOpenPort *self, BSTR name) put_Name;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_IP_VERSION* ipVersion) get_IpVersion;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_IP_PROTOCOL* ipProtocol) get_Protocol;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_IP_PROTOCOL ipProtocol) put_Protocol;
				public new function HRESULT(INetFwOpenPort *self, int32* portNumber) get_Port;
				public new function HRESULT(INetFwOpenPort *self, int32 portNumber) put_Port;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_SCOPE* @scope) get_Scope;
				public new function HRESULT(INetFwOpenPort *self, NET_FW_SCOPE @scope) put_Scope;
				public new function HRESULT(INetFwOpenPort *self, BSTR* remoteAddrs) get_RemoteAddresses;
				public new function HRESULT(INetFwOpenPort *self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function HRESULT(INetFwOpenPort *self, int16* enabled) get_Enabled;
				public new function HRESULT(INetFwOpenPort *self, int16 enabled) put_Enabled;
				public new function HRESULT(INetFwOpenPort *self, int16* builtIn) get_BuiltIn;
			}
		}
		[CRepr]
		public struct INetFwOpenPorts : IDispatch
		{
			public const new Guid IID = .(0xc0e9d7fa, 0xe07e, 0x430a, 0xb1, 0x9a, 0x09, 0x0c, 0xe8, 0x2d, 0x92, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Add(INetFwOpenPort* port) mut
			{
				return VT.Add(&this, port);
			}
			public HRESULT Remove(int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol) mut
			{
				return VT.Remove(&this, portNumber, ipProtocol);
			}
			public HRESULT Item(int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol, INetFwOpenPort** openPort) mut
			{
				return VT.Item(&this, portNumber, ipProtocol, openPort);
			}
			public HRESULT get__NewEnum(IUnknown** newEnum) mut
			{
				return VT.get__NewEnum(&this, newEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwOpenPorts *self, int32* count) get_Count;
				public new function HRESULT(INetFwOpenPorts *self, INetFwOpenPort* port) Add;
				public new function HRESULT(INetFwOpenPorts *self, int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol) Remove;
				public new function HRESULT(INetFwOpenPorts *self, int32 portNumber, NET_FW_IP_PROTOCOL ipProtocol, INetFwOpenPort** openPort) Item;
				public new function HRESULT(INetFwOpenPorts *self, IUnknown** newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwService : IDispatch
		{
			public const new Guid IID = .(0x79fd57c8, 0x908e, 0x4a36, 0x98, 0x88, 0xd5, 0xb3, 0xf0, 0xa4, 0x44, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_Type(NET_FW_SERVICE_TYPE* type) mut
			{
				return VT.get_Type(&this, type);
			}
			public HRESULT get_Customized(int16* customized) mut
			{
				return VT.get_Customized(&this, customized);
			}
			public HRESULT get_IpVersion(NET_FW_IP_VERSION* ipVersion) mut
			{
				return VT.get_IpVersion(&this, ipVersion);
			}
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut
			{
				return VT.put_IpVersion(&this, ipVersion);
			}
			public HRESULT get_Scope(NET_FW_SCOPE* @scope) mut
			{
				return VT.get_Scope(&this, @scope);
			}
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut
			{
				return VT.put_Scope(&this, @scope);
			}
			public HRESULT get_RemoteAddresses(BSTR* remoteAddrs) mut
			{
				return VT.get_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut
			{
				return VT.put_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_GloballyOpenPorts(INetFwOpenPorts** openPorts) mut
			{
				return VT.get_GloballyOpenPorts(&this, openPorts);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwService *self, BSTR* name) get_Name;
				public new function HRESULT(INetFwService *self, NET_FW_SERVICE_TYPE* type) get_Type;
				public new function HRESULT(INetFwService *self, int16* customized) get_Customized;
				public new function HRESULT(INetFwService *self, NET_FW_IP_VERSION* ipVersion) get_IpVersion;
				public new function HRESULT(INetFwService *self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function HRESULT(INetFwService *self, NET_FW_SCOPE* @scope) get_Scope;
				public new function HRESULT(INetFwService *self, NET_FW_SCOPE @scope) put_Scope;
				public new function HRESULT(INetFwService *self, BSTR* remoteAddrs) get_RemoteAddresses;
				public new function HRESULT(INetFwService *self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function HRESULT(INetFwService *self, int16* enabled) get_Enabled;
				public new function HRESULT(INetFwService *self, int16 enabled) put_Enabled;
				public new function HRESULT(INetFwService *self, INetFwOpenPorts** openPorts) get_GloballyOpenPorts;
			}
		}
		[CRepr]
		public struct INetFwServices : IDispatch
		{
			public const new Guid IID = .(0x79649bb4, 0x903e, 0x421b, 0x94, 0xc9, 0x79, 0x84, 0x8e, 0x79, 0xf6, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Item(NET_FW_SERVICE_TYPE svcType, INetFwService** service) mut
			{
				return VT.Item(&this, svcType, service);
			}
			public HRESULT get__NewEnum(IUnknown** newEnum) mut
			{
				return VT.get__NewEnum(&this, newEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwServices *self, int32* count) get_Count;
				public new function HRESULT(INetFwServices *self, NET_FW_SERVICE_TYPE svcType, INetFwService** service) Item;
				public new function HRESULT(INetFwServices *self, IUnknown** newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwAuthorizedApplication : IDispatch
		{
			public const new Guid IID = .(0xb5e64ffa, 0xc2c5, 0x444e, 0xa3, 0x01, 0xfb, 0x5e, 0x00, 0x01, 0x80, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_ProcessImageFileName(BSTR* imageFileName) mut
			{
				return VT.get_ProcessImageFileName(&this, imageFileName);
			}
			public HRESULT put_ProcessImageFileName(BSTR imageFileName) mut
			{
				return VT.put_ProcessImageFileName(&this, imageFileName);
			}
			public HRESULT get_IpVersion(NET_FW_IP_VERSION* ipVersion) mut
			{
				return VT.get_IpVersion(&this, ipVersion);
			}
			public HRESULT put_IpVersion(NET_FW_IP_VERSION ipVersion) mut
			{
				return VT.put_IpVersion(&this, ipVersion);
			}
			public HRESULT get_Scope(NET_FW_SCOPE* @scope) mut
			{
				return VT.get_Scope(&this, @scope);
			}
			public HRESULT put_Scope(NET_FW_SCOPE @scope) mut
			{
				return VT.put_Scope(&this, @scope);
			}
			public HRESULT get_RemoteAddresses(BSTR* remoteAddrs) mut
			{
				return VT.get_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut
			{
				return VT.put_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR* name) get_Name;
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR name) put_Name;
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR* imageFileName) get_ProcessImageFileName;
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR imageFileName) put_ProcessImageFileName;
				public new function HRESULT(INetFwAuthorizedApplication *self, NET_FW_IP_VERSION* ipVersion) get_IpVersion;
				public new function HRESULT(INetFwAuthorizedApplication *self, NET_FW_IP_VERSION ipVersion) put_IpVersion;
				public new function HRESULT(INetFwAuthorizedApplication *self, NET_FW_SCOPE* @scope) get_Scope;
				public new function HRESULT(INetFwAuthorizedApplication *self, NET_FW_SCOPE @scope) put_Scope;
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR* remoteAddrs) get_RemoteAddresses;
				public new function HRESULT(INetFwAuthorizedApplication *self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function HRESULT(INetFwAuthorizedApplication *self, int16* enabled) get_Enabled;
				public new function HRESULT(INetFwAuthorizedApplication *self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct INetFwAuthorizedApplications : IDispatch
		{
			public const new Guid IID = .(0x644efd52, 0xccf9, 0x486c, 0x97, 0xa2, 0x39, 0xf3, 0x52, 0x57, 0x0b, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Add(INetFwAuthorizedApplication* app) mut
			{
				return VT.Add(&this, app);
			}
			public HRESULT Remove(BSTR imageFileName) mut
			{
				return VT.Remove(&this, imageFileName);
			}
			public HRESULT Item(BSTR imageFileName, INetFwAuthorizedApplication** app) mut
			{
				return VT.Item(&this, imageFileName, app);
			}
			public HRESULT get__NewEnum(IUnknown** newEnum) mut
			{
				return VT.get__NewEnum(&this, newEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwAuthorizedApplications *self, int32* count) get_Count;
				public new function HRESULT(INetFwAuthorizedApplications *self, INetFwAuthorizedApplication* app) Add;
				public new function HRESULT(INetFwAuthorizedApplications *self, BSTR imageFileName) Remove;
				public new function HRESULT(INetFwAuthorizedApplications *self, BSTR imageFileName, INetFwAuthorizedApplication** app) Item;
				public new function HRESULT(INetFwAuthorizedApplications *self, IUnknown** newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwRule : IDispatch
		{
			public const new Guid IID = .(0xaf230d27, 0xbaba, 0x4e42, 0xac, 0xed, 0xf5, 0x24, 0xf2, 0x2c, 0xfc, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Description(BSTR* desc) mut
			{
				return VT.get_Description(&this, desc);
			}
			public HRESULT put_Description(BSTR desc) mut
			{
				return VT.put_Description(&this, desc);
			}
			public HRESULT get_ApplicationName(BSTR* imageFileName) mut
			{
				return VT.get_ApplicationName(&this, imageFileName);
			}
			public HRESULT put_ApplicationName(BSTR imageFileName) mut
			{
				return VT.put_ApplicationName(&this, imageFileName);
			}
			public HRESULT get_ServiceName(BSTR* serviceName) mut
			{
				return VT.get_ServiceName(&this, serviceName);
			}
			public HRESULT put_ServiceName(BSTR serviceName) mut
			{
				return VT.put_ServiceName(&this, serviceName);
			}
			public HRESULT get_Protocol(int32* protocol) mut
			{
				return VT.get_Protocol(&this, protocol);
			}
			public HRESULT put_Protocol(int32 protocol) mut
			{
				return VT.put_Protocol(&this, protocol);
			}
			public HRESULT get_LocalPorts(BSTR* portNumbers) mut
			{
				return VT.get_LocalPorts(&this, portNumbers);
			}
			public HRESULT put_LocalPorts(BSTR portNumbers) mut
			{
				return VT.put_LocalPorts(&this, portNumbers);
			}
			public HRESULT get_RemotePorts(BSTR* portNumbers) mut
			{
				return VT.get_RemotePorts(&this, portNumbers);
			}
			public HRESULT put_RemotePorts(BSTR portNumbers) mut
			{
				return VT.put_RemotePorts(&this, portNumbers);
			}
			public HRESULT get_LocalAddresses(BSTR* localAddrs) mut
			{
				return VT.get_LocalAddresses(&this, localAddrs);
			}
			public HRESULT put_LocalAddresses(BSTR localAddrs) mut
			{
				return VT.put_LocalAddresses(&this, localAddrs);
			}
			public HRESULT get_RemoteAddresses(BSTR* remoteAddrs) mut
			{
				return VT.get_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT put_RemoteAddresses(BSTR remoteAddrs) mut
			{
				return VT.put_RemoteAddresses(&this, remoteAddrs);
			}
			public HRESULT get_IcmpTypesAndCodes(BSTR* icmpTypesAndCodes) mut
			{
				return VT.get_IcmpTypesAndCodes(&this, icmpTypesAndCodes);
			}
			public HRESULT put_IcmpTypesAndCodes(BSTR icmpTypesAndCodes) mut
			{
				return VT.put_IcmpTypesAndCodes(&this, icmpTypesAndCodes);
			}
			public HRESULT get_Direction(NET_FW_RULE_DIRECTION* dir) mut
			{
				return VT.get_Direction(&this, dir);
			}
			public HRESULT put_Direction(NET_FW_RULE_DIRECTION dir) mut
			{
				return VT.put_Direction(&this, dir);
			}
			public HRESULT get_Interfaces(VARIANT* interfaces) mut
			{
				return VT.get_Interfaces(&this, interfaces);
			}
			public HRESULT put_Interfaces(VARIANT interfaces) mut
			{
				return VT.put_Interfaces(&this, interfaces);
			}
			public HRESULT get_InterfaceTypes(BSTR* interfaceTypes) mut
			{
				return VT.get_InterfaceTypes(&this, interfaceTypes);
			}
			public HRESULT put_InterfaceTypes(BSTR interfaceTypes) mut
			{
				return VT.put_InterfaceTypes(&this, interfaceTypes);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_Grouping(BSTR* context) mut
			{
				return VT.get_Grouping(&this, context);
			}
			public HRESULT put_Grouping(BSTR context) mut
			{
				return VT.put_Grouping(&this, context);
			}
			public HRESULT get_Profiles(int32* profileTypesBitmask) mut
			{
				return VT.get_Profiles(&this, profileTypesBitmask);
			}
			public HRESULT put_Profiles(int32 profileTypesBitmask) mut
			{
				return VT.put_Profiles(&this, profileTypesBitmask);
			}
			public HRESULT get_EdgeTraversal(int16* enabled) mut
			{
				return VT.get_EdgeTraversal(&this, enabled);
			}
			public HRESULT put_EdgeTraversal(int16 enabled) mut
			{
				return VT.put_EdgeTraversal(&this, enabled);
			}
			public HRESULT get_Action(NET_FW_ACTION* action) mut
			{
				return VT.get_Action(&this, action);
			}
			public HRESULT put_Action(NET_FW_ACTION action) mut
			{
				return VT.put_Action(&this, action);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwRule *self, BSTR* name) get_Name;
				public new function HRESULT(INetFwRule *self, BSTR name) put_Name;
				public new function HRESULT(INetFwRule *self, BSTR* desc) get_Description;
				public new function HRESULT(INetFwRule *self, BSTR desc) put_Description;
				public new function HRESULT(INetFwRule *self, BSTR* imageFileName) get_ApplicationName;
				public new function HRESULT(INetFwRule *self, BSTR imageFileName) put_ApplicationName;
				public new function HRESULT(INetFwRule *self, BSTR* serviceName) get_ServiceName;
				public new function HRESULT(INetFwRule *self, BSTR serviceName) put_ServiceName;
				public new function HRESULT(INetFwRule *self, int32* protocol) get_Protocol;
				public new function HRESULT(INetFwRule *self, int32 protocol) put_Protocol;
				public new function HRESULT(INetFwRule *self, BSTR* portNumbers) get_LocalPorts;
				public new function HRESULT(INetFwRule *self, BSTR portNumbers) put_LocalPorts;
				public new function HRESULT(INetFwRule *self, BSTR* portNumbers) get_RemotePorts;
				public new function HRESULT(INetFwRule *self, BSTR portNumbers) put_RemotePorts;
				public new function HRESULT(INetFwRule *self, BSTR* localAddrs) get_LocalAddresses;
				public new function HRESULT(INetFwRule *self, BSTR localAddrs) put_LocalAddresses;
				public new function HRESULT(INetFwRule *self, BSTR* remoteAddrs) get_RemoteAddresses;
				public new function HRESULT(INetFwRule *self, BSTR remoteAddrs) put_RemoteAddresses;
				public new function HRESULT(INetFwRule *self, BSTR* icmpTypesAndCodes) get_IcmpTypesAndCodes;
				public new function HRESULT(INetFwRule *self, BSTR icmpTypesAndCodes) put_IcmpTypesAndCodes;
				public new function HRESULT(INetFwRule *self, NET_FW_RULE_DIRECTION* dir) get_Direction;
				public new function HRESULT(INetFwRule *self, NET_FW_RULE_DIRECTION dir) put_Direction;
				public new function HRESULT(INetFwRule *self, VARIANT* interfaces) get_Interfaces;
				public new function HRESULT(INetFwRule *self, VARIANT interfaces) put_Interfaces;
				public new function HRESULT(INetFwRule *self, BSTR* interfaceTypes) get_InterfaceTypes;
				public new function HRESULT(INetFwRule *self, BSTR interfaceTypes) put_InterfaceTypes;
				public new function HRESULT(INetFwRule *self, int16* enabled) get_Enabled;
				public new function HRESULT(INetFwRule *self, int16 enabled) put_Enabled;
				public new function HRESULT(INetFwRule *self, BSTR* context) get_Grouping;
				public new function HRESULT(INetFwRule *self, BSTR context) put_Grouping;
				public new function HRESULT(INetFwRule *self, int32* profileTypesBitmask) get_Profiles;
				public new function HRESULT(INetFwRule *self, int32 profileTypesBitmask) put_Profiles;
				public new function HRESULT(INetFwRule *self, int16* enabled) get_EdgeTraversal;
				public new function HRESULT(INetFwRule *self, int16 enabled) put_EdgeTraversal;
				public new function HRESULT(INetFwRule *self, NET_FW_ACTION* action) get_Action;
				public new function HRESULT(INetFwRule *self, NET_FW_ACTION action) put_Action;
			}
		}
		[CRepr]
		public struct INetFwRule2 : INetFwRule
		{
			public const new Guid IID = .(0x9c27c8da, 0x189b, 0x4dde, 0x89, 0xf7, 0x8b, 0x39, 0xa3, 0x16, 0x78, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EdgeTraversalOptions(int32* lOptions) mut
			{
				return VT.get_EdgeTraversalOptions(&this, lOptions);
			}
			public HRESULT put_EdgeTraversalOptions(int32 lOptions) mut
			{
				return VT.put_EdgeTraversalOptions(&this, lOptions);
			}
			[CRepr]
			public struct VTable : INetFwRule.VTable
			{
				public new function HRESULT(INetFwRule2 *self, int32* lOptions) get_EdgeTraversalOptions;
				public new function HRESULT(INetFwRule2 *self, int32 lOptions) put_EdgeTraversalOptions;
			}
		}
		[CRepr]
		public struct INetFwRule3 : INetFwRule2
		{
			public const new Guid IID = .(0xb21563ff, 0xd696, 0x4222, 0xab, 0x46, 0x4e, 0x89, 0xb7, 0x3a, 0xb3, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LocalAppPackageId(BSTR* wszPackageId) mut
			{
				return VT.get_LocalAppPackageId(&this, wszPackageId);
			}
			public HRESULT put_LocalAppPackageId(BSTR wszPackageId) mut
			{
				return VT.put_LocalAppPackageId(&this, wszPackageId);
			}
			public HRESULT get_LocalUserOwner(BSTR* wszUserOwner) mut
			{
				return VT.get_LocalUserOwner(&this, wszUserOwner);
			}
			public HRESULT put_LocalUserOwner(BSTR wszUserOwner) mut
			{
				return VT.put_LocalUserOwner(&this, wszUserOwner);
			}
			public HRESULT get_LocalUserAuthorizedList(BSTR* wszUserAuthList) mut
			{
				return VT.get_LocalUserAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT put_LocalUserAuthorizedList(BSTR wszUserAuthList) mut
			{
				return VT.put_LocalUserAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT get_RemoteUserAuthorizedList(BSTR* wszUserAuthList) mut
			{
				return VT.get_RemoteUserAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT put_RemoteUserAuthorizedList(BSTR wszUserAuthList) mut
			{
				return VT.put_RemoteUserAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT get_RemoteMachineAuthorizedList(BSTR* wszUserAuthList) mut
			{
				return VT.get_RemoteMachineAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT put_RemoteMachineAuthorizedList(BSTR wszUserAuthList) mut
			{
				return VT.put_RemoteMachineAuthorizedList(&this, wszUserAuthList);
			}
			public HRESULT get_SecureFlags(int32* lOptions) mut
			{
				return VT.get_SecureFlags(&this, lOptions);
			}
			public HRESULT put_SecureFlags(int32 lOptions) mut
			{
				return VT.put_SecureFlags(&this, lOptions);
			}
			[CRepr]
			public struct VTable : INetFwRule2.VTable
			{
				public new function HRESULT(INetFwRule3 *self, BSTR* wszPackageId) get_LocalAppPackageId;
				public new function HRESULT(INetFwRule3 *self, BSTR wszPackageId) put_LocalAppPackageId;
				public new function HRESULT(INetFwRule3 *self, BSTR* wszUserOwner) get_LocalUserOwner;
				public new function HRESULT(INetFwRule3 *self, BSTR wszUserOwner) put_LocalUserOwner;
				public new function HRESULT(INetFwRule3 *self, BSTR* wszUserAuthList) get_LocalUserAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, BSTR wszUserAuthList) put_LocalUserAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, BSTR* wszUserAuthList) get_RemoteUserAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, BSTR wszUserAuthList) put_RemoteUserAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, BSTR* wszUserAuthList) get_RemoteMachineAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, BSTR wszUserAuthList) put_RemoteMachineAuthorizedList;
				public new function HRESULT(INetFwRule3 *self, int32* lOptions) get_SecureFlags;
				public new function HRESULT(INetFwRule3 *self, int32 lOptions) put_SecureFlags;
			}
		}
		[CRepr]
		public struct INetFwRules : IDispatch
		{
			public const new Guid IID = .(0x9c4c6277, 0x5027, 0x441e, 0xaf, 0xae, 0xca, 0x1f, 0x54, 0x2d, 0xa0, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Add(INetFwRule* rule) mut
			{
				return VT.Add(&this, rule);
			}
			public HRESULT Remove(BSTR name) mut
			{
				return VT.Remove(&this, name);
			}
			public HRESULT Item(BSTR name, INetFwRule** rule) mut
			{
				return VT.Item(&this, name, rule);
			}
			public HRESULT get__NewEnum(IUnknown** newEnum) mut
			{
				return VT.get__NewEnum(&this, newEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwRules *self, int32* count) get_Count;
				public new function HRESULT(INetFwRules *self, INetFwRule* rule) Add;
				public new function HRESULT(INetFwRules *self, BSTR name) Remove;
				public new function HRESULT(INetFwRules *self, BSTR name, INetFwRule** rule) Item;
				public new function HRESULT(INetFwRules *self, IUnknown** newEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct INetFwServiceRestriction : IDispatch
		{
			public const new Guid IID = .(0x8267bbe3, 0xf890, 0x491c, 0xb7, 0xb6, 0x2d, 0xb1, 0xef, 0x0e, 0x5d, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestrictService(BSTR serviceName, BSTR appName, int16 restrictService, int16 serviceSidRestricted) mut
			{
				return VT.RestrictService(&this, serviceName, appName, restrictService, serviceSidRestricted);
			}
			public HRESULT ServiceRestricted(BSTR serviceName, BSTR appName, int16* serviceRestricted) mut
			{
				return VT.ServiceRestricted(&this, serviceName, appName, serviceRestricted);
			}
			public HRESULT get_Rules(INetFwRules** rules) mut
			{
				return VT.get_Rules(&this, rules);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwServiceRestriction *self, BSTR serviceName, BSTR appName, int16 restrictService, int16 serviceSidRestricted) RestrictService;
				public new function HRESULT(INetFwServiceRestriction *self, BSTR serviceName, BSTR appName, int16* serviceRestricted) ServiceRestricted;
				public new function HRESULT(INetFwServiceRestriction *self, INetFwRules** rules) get_Rules;
			}
		}
		[CRepr]
		public struct INetFwProfile : IDispatch
		{
			public const new Guid IID = .(0x174a0dda, 0xe9f9, 0x449d, 0x99, 0x3b, 0x21, 0xab, 0x66, 0x7c, 0xa4, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(NET_FW_PROFILE_TYPE* type) mut
			{
				return VT.get_Type(&this, type);
			}
			public HRESULT get_FirewallEnabled(int16* enabled) mut
			{
				return VT.get_FirewallEnabled(&this, enabled);
			}
			public HRESULT put_FirewallEnabled(int16 enabled) mut
			{
				return VT.put_FirewallEnabled(&this, enabled);
			}
			public HRESULT get_ExceptionsNotAllowed(int16* notAllowed) mut
			{
				return VT.get_ExceptionsNotAllowed(&this, notAllowed);
			}
			public HRESULT put_ExceptionsNotAllowed(int16 notAllowed) mut
			{
				return VT.put_ExceptionsNotAllowed(&this, notAllowed);
			}
			public HRESULT get_NotificationsDisabled(int16* disabled) mut
			{
				return VT.get_NotificationsDisabled(&this, disabled);
			}
			public HRESULT put_NotificationsDisabled(int16 disabled) mut
			{
				return VT.put_NotificationsDisabled(&this, disabled);
			}
			public HRESULT get_UnicastResponsesToMulticastBroadcastDisabled(int16* disabled) mut
			{
				return VT.get_UnicastResponsesToMulticastBroadcastDisabled(&this, disabled);
			}
			public HRESULT put_UnicastResponsesToMulticastBroadcastDisabled(int16 disabled) mut
			{
				return VT.put_UnicastResponsesToMulticastBroadcastDisabled(&this, disabled);
			}
			public HRESULT get_RemoteAdminSettings(INetFwRemoteAdminSettings** remoteAdminSettings) mut
			{
				return VT.get_RemoteAdminSettings(&this, remoteAdminSettings);
			}
			public HRESULT get_IcmpSettings(INetFwIcmpSettings** icmpSettings) mut
			{
				return VT.get_IcmpSettings(&this, icmpSettings);
			}
			public HRESULT get_GloballyOpenPorts(INetFwOpenPorts** openPorts) mut
			{
				return VT.get_GloballyOpenPorts(&this, openPorts);
			}
			public HRESULT get_Services(INetFwServices** services) mut
			{
				return VT.get_Services(&this, services);
			}
			public HRESULT get_AuthorizedApplications(INetFwAuthorizedApplications** apps) mut
			{
				return VT.get_AuthorizedApplications(&this, apps);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwProfile *self, NET_FW_PROFILE_TYPE* type) get_Type;
				public new function HRESULT(INetFwProfile *self, int16* enabled) get_FirewallEnabled;
				public new function HRESULT(INetFwProfile *self, int16 enabled) put_FirewallEnabled;
				public new function HRESULT(INetFwProfile *self, int16* notAllowed) get_ExceptionsNotAllowed;
				public new function HRESULT(INetFwProfile *self, int16 notAllowed) put_ExceptionsNotAllowed;
				public new function HRESULT(INetFwProfile *self, int16* disabled) get_NotificationsDisabled;
				public new function HRESULT(INetFwProfile *self, int16 disabled) put_NotificationsDisabled;
				public new function HRESULT(INetFwProfile *self, int16* disabled) get_UnicastResponsesToMulticastBroadcastDisabled;
				public new function HRESULT(INetFwProfile *self, int16 disabled) put_UnicastResponsesToMulticastBroadcastDisabled;
				public new function HRESULT(INetFwProfile *self, INetFwRemoteAdminSettings** remoteAdminSettings) get_RemoteAdminSettings;
				public new function HRESULT(INetFwProfile *self, INetFwIcmpSettings** icmpSettings) get_IcmpSettings;
				public new function HRESULT(INetFwProfile *self, INetFwOpenPorts** openPorts) get_GloballyOpenPorts;
				public new function HRESULT(INetFwProfile *self, INetFwServices** services) get_Services;
				public new function HRESULT(INetFwProfile *self, INetFwAuthorizedApplications** apps) get_AuthorizedApplications;
			}
		}
		[CRepr]
		public struct INetFwPolicy : IDispatch
		{
			public const new Guid IID = .(0xd46d2478, 0x9ac9, 0x4008, 0x9d, 0xc7, 0x55, 0x63, 0xce, 0x55, 0x36, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentProfile(INetFwProfile** profile) mut
			{
				return VT.get_CurrentProfile(&this, profile);
			}
			public HRESULT GetProfileByType(NET_FW_PROFILE_TYPE profileType, INetFwProfile** profile) mut
			{
				return VT.GetProfileByType(&this, profileType, profile);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwPolicy *self, INetFwProfile** profile) get_CurrentProfile;
				public new function HRESULT(INetFwPolicy *self, NET_FW_PROFILE_TYPE profileType, INetFwProfile** profile) GetProfileByType;
			}
		}
		[CRepr]
		public struct INetFwPolicy2 : IDispatch
		{
			public const new Guid IID = .(0x98325047, 0xc671, 0x4174, 0x8d, 0x81, 0xde, 0xfc, 0xd3, 0xf0, 0x31, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentProfileTypes(int32* profileTypesBitmask) mut
			{
				return VT.get_CurrentProfileTypes(&this, profileTypesBitmask);
			}
			public HRESULT get_FirewallEnabled(NET_FW_PROFILE_TYPE2 profileType, int16* enabled) mut
			{
				return VT.get_FirewallEnabled(&this, profileType, enabled);
			}
			public HRESULT put_FirewallEnabled(NET_FW_PROFILE_TYPE2 profileType, int16 enabled) mut
			{
				return VT.put_FirewallEnabled(&this, profileType, enabled);
			}
			public HRESULT get_ExcludedInterfaces(NET_FW_PROFILE_TYPE2 profileType, VARIANT* interfaces) mut
			{
				return VT.get_ExcludedInterfaces(&this, profileType, interfaces);
			}
			public HRESULT put_ExcludedInterfaces(NET_FW_PROFILE_TYPE2 profileType, VARIANT interfaces) mut
			{
				return VT.put_ExcludedInterfaces(&this, profileType, interfaces);
			}
			public HRESULT get_BlockAllInboundTraffic(NET_FW_PROFILE_TYPE2 profileType, int16* Block) mut
			{
				return VT.get_BlockAllInboundTraffic(&this, profileType, Block);
			}
			public HRESULT put_BlockAllInboundTraffic(NET_FW_PROFILE_TYPE2 profileType, int16 Block) mut
			{
				return VT.put_BlockAllInboundTraffic(&this, profileType, Block);
			}
			public HRESULT get_NotificationsDisabled(NET_FW_PROFILE_TYPE2 profileType, int16* disabled) mut
			{
				return VT.get_NotificationsDisabled(&this, profileType, disabled);
			}
			public HRESULT put_NotificationsDisabled(NET_FW_PROFILE_TYPE2 profileType, int16 disabled) mut
			{
				return VT.put_NotificationsDisabled(&this, profileType, disabled);
			}
			public HRESULT get_UnicastResponsesToMulticastBroadcastDisabled(NET_FW_PROFILE_TYPE2 profileType, int16* disabled) mut
			{
				return VT.get_UnicastResponsesToMulticastBroadcastDisabled(&this, profileType, disabled);
			}
			public HRESULT put_UnicastResponsesToMulticastBroadcastDisabled(NET_FW_PROFILE_TYPE2 profileType, int16 disabled) mut
			{
				return VT.put_UnicastResponsesToMulticastBroadcastDisabled(&this, profileType, disabled);
			}
			public HRESULT get_Rules(INetFwRules** rules) mut
			{
				return VT.get_Rules(&this, rules);
			}
			public HRESULT get_ServiceRestriction(INetFwServiceRestriction** ServiceRestriction) mut
			{
				return VT.get_ServiceRestriction(&this, ServiceRestriction);
			}
			public HRESULT EnableRuleGroup(int32 profileTypesBitmask, BSTR group, int16 enable) mut
			{
				return VT.EnableRuleGroup(&this, profileTypesBitmask, group, enable);
			}
			public HRESULT IsRuleGroupEnabled(int32 profileTypesBitmask, BSTR group, int16* enabled) mut
			{
				return VT.IsRuleGroupEnabled(&this, profileTypesBitmask, group, enabled);
			}
			public HRESULT RestoreLocalFirewallDefaults() mut
			{
				return VT.RestoreLocalFirewallDefaults(&this);
			}
			public HRESULT get_DefaultInboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION* action) mut
			{
				return VT.get_DefaultInboundAction(&this, profileType, action);
			}
			public HRESULT put_DefaultInboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) mut
			{
				return VT.put_DefaultInboundAction(&this, profileType, action);
			}
			public HRESULT get_DefaultOutboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION* action) mut
			{
				return VT.get_DefaultOutboundAction(&this, profileType, action);
			}
			public HRESULT put_DefaultOutboundAction(NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) mut
			{
				return VT.put_DefaultOutboundAction(&this, profileType, action);
			}
			public HRESULT get_IsRuleGroupCurrentlyEnabled(BSTR group, int16* enabled) mut
			{
				return VT.get_IsRuleGroupCurrentlyEnabled(&this, group, enabled);
			}
			public HRESULT get_LocalPolicyModifyState(NET_FW_MODIFY_STATE* modifyState) mut
			{
				return VT.get_LocalPolicyModifyState(&this, modifyState);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwPolicy2 *self, int32* profileTypesBitmask) get_CurrentProfileTypes;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16* enabled) get_FirewallEnabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16 enabled) put_FirewallEnabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, VARIANT* interfaces) get_ExcludedInterfaces;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, VARIANT interfaces) put_ExcludedInterfaces;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16* Block) get_BlockAllInboundTraffic;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16 Block) put_BlockAllInboundTraffic;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16* disabled) get_NotificationsDisabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16 disabled) put_NotificationsDisabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16* disabled) get_UnicastResponsesToMulticastBroadcastDisabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, int16 disabled) put_UnicastResponsesToMulticastBroadcastDisabled;
				public new function HRESULT(INetFwPolicy2 *self, INetFwRules** rules) get_Rules;
				public new function HRESULT(INetFwPolicy2 *self, INetFwServiceRestriction** ServiceRestriction) get_ServiceRestriction;
				public new function HRESULT(INetFwPolicy2 *self, int32 profileTypesBitmask, BSTR group, int16 enable) EnableRuleGroup;
				public new function HRESULT(INetFwPolicy2 *self, int32 profileTypesBitmask, BSTR group, int16* enabled) IsRuleGroupEnabled;
				public new function HRESULT(INetFwPolicy2 *self) RestoreLocalFirewallDefaults;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION* action) get_DefaultInboundAction;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) put_DefaultInboundAction;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION* action) get_DefaultOutboundAction;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_PROFILE_TYPE2 profileType, NET_FW_ACTION action) put_DefaultOutboundAction;
				public new function HRESULT(INetFwPolicy2 *self, BSTR group, int16* enabled) get_IsRuleGroupCurrentlyEnabled;
				public new function HRESULT(INetFwPolicy2 *self, NET_FW_MODIFY_STATE* modifyState) get_LocalPolicyModifyState;
			}
		}
		[CRepr]
		public struct INetFwMgr : IDispatch
		{
			public const new Guid IID = .(0xf7898af5, 0xcac4, 0x4632, 0xa2, 0xec, 0xda, 0x06, 0xe5, 0x11, 0x1a, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LocalPolicy(INetFwPolicy** localPolicy) mut
			{
				return VT.get_LocalPolicy(&this, localPolicy);
			}
			public HRESULT get_CurrentProfileType(NET_FW_PROFILE_TYPE* profileType) mut
			{
				return VT.get_CurrentProfileType(&this, profileType);
			}
			public HRESULT RestoreDefaults() mut
			{
				return VT.RestoreDefaults(&this);
			}
			public HRESULT IsPortAllowed(BSTR imageFileName, NET_FW_IP_VERSION ipVersion, int32 portNumber, BSTR localAddress, NET_FW_IP_PROTOCOL ipProtocol, VARIANT* allowed, VARIANT* restricted) mut
			{
				return VT.IsPortAllowed(&this, imageFileName, ipVersion, portNumber, localAddress, ipProtocol, allowed, restricted);
			}
			public HRESULT IsIcmpTypeAllowed(NET_FW_IP_VERSION ipVersion, BSTR localAddress, uint8 type, VARIANT* allowed, VARIANT* restricted) mut
			{
				return VT.IsIcmpTypeAllowed(&this, ipVersion, localAddress, type, allowed, restricted);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwMgr *self, INetFwPolicy** localPolicy) get_LocalPolicy;
				public new function HRESULT(INetFwMgr *self, NET_FW_PROFILE_TYPE* profileType) get_CurrentProfileType;
				public new function HRESULT(INetFwMgr *self) RestoreDefaults;
				public new function HRESULT(INetFwMgr *self, BSTR imageFileName, NET_FW_IP_VERSION ipVersion, int32 portNumber, BSTR localAddress, NET_FW_IP_PROTOCOL ipProtocol, VARIANT* allowed, VARIANT* restricted) IsPortAllowed;
				public new function HRESULT(INetFwMgr *self, NET_FW_IP_VERSION ipVersion, BSTR localAddress, uint8 type, VARIANT* allowed, VARIANT* restricted) IsIcmpTypeAllowed;
			}
		}
		[CRepr]
		public struct INetFwProduct : IDispatch
		{
			public const new Guid IID = .(0x71881699, 0x18f4, 0x458b, 0xb8, 0x92, 0x3f, 0xfc, 0xe5, 0xe0, 0x7f, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RuleCategories(VARIANT* ruleCategories) mut
			{
				return VT.get_RuleCategories(&this, ruleCategories);
			}
			public HRESULT put_RuleCategories(VARIANT ruleCategories) mut
			{
				return VT.put_RuleCategories(&this, ruleCategories);
			}
			public HRESULT get_DisplayName(BSTR* displayName) mut
			{
				return VT.get_DisplayName(&this, displayName);
			}
			public HRESULT put_DisplayName(BSTR displayName) mut
			{
				return VT.put_DisplayName(&this, displayName);
			}
			public HRESULT get_PathToSignedProductExe(BSTR* path) mut
			{
				return VT.get_PathToSignedProductExe(&this, path);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwProduct *self, VARIANT* ruleCategories) get_RuleCategories;
				public new function HRESULT(INetFwProduct *self, VARIANT ruleCategories) put_RuleCategories;
				public new function HRESULT(INetFwProduct *self, BSTR* displayName) get_DisplayName;
				public new function HRESULT(INetFwProduct *self, BSTR displayName) put_DisplayName;
				public new function HRESULT(INetFwProduct *self, BSTR* path) get_PathToSignedProductExe;
			}
		}
		[CRepr]
		public struct INetFwProducts : IDispatch
		{
			public const new Guid IID = .(0x39eb36e0, 0x2097, 0x40bd, 0x8a, 0xf2, 0x63, 0xa1, 0x3b, 0x52, 0x53, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Register(INetFwProduct* product, IUnknown** registration) mut
			{
				return VT.Register(&this, product, registration);
			}
			public HRESULT Item(int32 index, INetFwProduct** product) mut
			{
				return VT.Item(&this, index, product);
			}
			public HRESULT get__NewEnum(IUnknown** newEnum) mut
			{
				return VT.get__NewEnum(&this, newEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetFwProducts *self, int32* count) get_Count;
				public new function HRESULT(INetFwProducts *self, INetFwProduct* product, IUnknown** registration) Register;
				public new function HRESULT(INetFwProducts *self, int32 index, INetFwProduct** product) Item;
				public new function HRESULT(INetFwProducts *self, IUnknown** newEnum) get__NewEnum;
			}
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NetworkIsolationSetupAppContainerBinaries(PSID applicationContainerSid, PWSTR packageFullName, PWSTR packageFolder, PWSTR displayName, BOOL bBinariesFullyComputed, PWSTR* binaries, uint32 binariesCount);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationRegisterForAppContainerChanges(uint32 flags, PAC_CHANGES_CALLBACK_FN callback, void* context, HANDLE* registrationObject);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationUnregisterForAppContainerChanges(HANDLE registrationObject);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationFreeAppContainers(INET_FIREWALL_APP_CONTAINER* pPublicAppCs);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationEnumAppContainers(uint32 Flags, uint32* pdwNumPublicAppCs, INET_FIREWALL_APP_CONTAINER** ppPublicAppCs);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationGetAppContainerConfig(uint32* pdwNumPublicAppCs, SID_AND_ATTRIBUTES** appContainerSids);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationSetAppContainerConfig(uint32 dwNumPublicAppCs, SID_AND_ATTRIBUTES* appContainerSids);
		[Import("api-ms-win-net-isolation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetworkIsolationDiagnoseConnectFailureAndGetInfo(PWSTR wszServerName, NETISO_ERROR_TYPE* netIsoError);
		
	}
}
