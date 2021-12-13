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
		
		public struct IUPnPNAT {}
		public struct INATEventManager {}
		public struct INATExternalIPAddressCallback {}
		public struct INATNumberOfEntriesCallback {}
		public struct IDynamicPortMappingCollection {}
		public struct IDynamicPortMapping {}
		public struct IStaticPortMappingCollection {}
		public struct IStaticPortMapping {}
		public struct IEnumNetConnection {}
		public struct INetConnection {}
		public struct INetConnectionManager {}
		public struct INetConnectionConnectUi {}
		public struct IEnumNetSharingPortMapping {}
		public struct INetSharingPortMappingProps {}
		public struct INetSharingPortMapping {}
		public struct IEnumNetSharingEveryConnection {}
		public struct IEnumNetSharingPublicConnection {}
		public struct IEnumNetSharingPrivateConnection {}
		public struct INetSharingPortMappingCollection {}
		public struct INetConnectionProps {}
		public struct INetSharingConfiguration {}
		public struct INetSharingEveryConnectionCollection {}
		public struct INetSharingPublicConnectionCollection {}
		public struct INetSharingPrivateConnectionCollection {}
		public struct INetSharingManager {}
		public struct INetFwRemoteAdminSettings {}
		public struct INetFwIcmpSettings {}
		public struct INetFwOpenPort {}
		public struct INetFwOpenPorts {}
		public struct INetFwService {}
		public struct INetFwServices {}
		public struct INetFwAuthorizedApplication {}
		public struct INetFwAuthorizedApplications {}
		public struct INetFwRule {}
		public struct INetFwRule2 {}
		public struct INetFwRule3 {}
		public struct INetFwRules {}
		public struct INetFwServiceRestriction {}
		public struct INetFwProfile {}
		public struct INetFwPolicy {}
		public struct INetFwPolicy2 {}
		public struct INetFwMgr {}
		public struct INetFwProduct {}
		public struct INetFwProducts {}
		
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
