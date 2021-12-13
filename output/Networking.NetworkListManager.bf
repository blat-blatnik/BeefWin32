using System;

// namespace Networking.NetworkListManager
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NLM_MAX_ADDRESS_LIST_SIZE = 10;
		public const uint32 NLM_UNKNOWN_DATAPLAN_STATUS = 4294967295;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum NLM_CONNECTION_COST : int32
		{
			NLM_CONNECTION_COST_UNKNOWN = 0,
			NLM_CONNECTION_COST_UNRESTRICTED = 1,
			NLM_CONNECTION_COST_FIXED = 2,
			NLM_CONNECTION_COST_VARIABLE = 4,
			NLM_CONNECTION_COST_OVERDATALIMIT = 65536,
			NLM_CONNECTION_COST_CONGESTED = 131072,
			NLM_CONNECTION_COST_ROAMING = 262144,
			NLM_CONNECTION_COST_APPROACHINGDATALIMIT = 524288,
		}
		[AllowDuplicates]
		public enum NLM_NETWORK_CLASS : int32
		{
			NLM_NETWORK_IDENTIFYING = 1,
			NLM_NETWORK_IDENTIFIED = 2,
			NLM_NETWORK_UNIDENTIFIED = 3,
		}
		[AllowDuplicates]
		public enum NLM_INTERNET_CONNECTIVITY : int32
		{
			NLM_INTERNET_CONNECTIVITY_WEBHIJACK = 1,
			NLM_INTERNET_CONNECTIVITY_PROXIED = 2,
			NLM_INTERNET_CONNECTIVITY_CORPORATE = 4,
		}
		[AllowDuplicates]
		public enum NLM_CONNECTIVITY : int32
		{
			NLM_CONNECTIVITY_DISCONNECTED = 0,
			NLM_CONNECTIVITY_IPV4_NOTRAFFIC = 1,
			NLM_CONNECTIVITY_IPV6_NOTRAFFIC = 2,
			NLM_CONNECTIVITY_IPV4_SUBNET = 16,
			NLM_CONNECTIVITY_IPV4_LOCALNETWORK = 32,
			NLM_CONNECTIVITY_IPV4_INTERNET = 64,
			NLM_CONNECTIVITY_IPV6_SUBNET = 256,
			NLM_CONNECTIVITY_IPV6_LOCALNETWORK = 512,
			NLM_CONNECTIVITY_IPV6_INTERNET = 1024,
		}
		[AllowDuplicates]
		public enum NLM_DOMAIN_TYPE : int32
		{
			NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK = 0,
			NLM_DOMAIN_TYPE_DOMAIN_NETWORK = 1,
			NLM_DOMAIN_TYPE_DOMAIN_AUTHENTICATED = 2,
		}
		[AllowDuplicates]
		public enum NLM_ENUM_NETWORK : int32
		{
			NLM_ENUM_NETWORK_CONNECTED = 1,
			NLM_ENUM_NETWORK_DISCONNECTED = 2,
			NLM_ENUM_NETWORK_ALL = 3,
		}
		[AllowDuplicates]
		public enum NLM_NETWORK_CATEGORY : int32
		{
			NLM_NETWORK_CATEGORY_PUBLIC = 0,
			NLM_NETWORK_CATEGORY_PRIVATE = 1,
			NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED = 2,
		}
		[AllowDuplicates]
		public enum NLM_NETWORK_PROPERTY_CHANGE : int32
		{
			NLM_NETWORK_PROPERTY_CHANGE_CONNECTION = 1,
			NLM_NETWORK_PROPERTY_CHANGE_DESCRIPTION = 2,
			NLM_NETWORK_PROPERTY_CHANGE_NAME = 4,
			NLM_NETWORK_PROPERTY_CHANGE_ICON = 8,
			NLM_NETWORK_PROPERTY_CHANGE_CATEGORY_VALUE = 16,
		}
		[AllowDuplicates]
		public enum NLM_CONNECTION_PROPERTY_CHANGE : int32
		{
			NLM_CONNECTION_PROPERTY_CHANGE_AUTHENTICATION = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct NLM_USAGE_DATA
		{
			public uint32 UsageInMegabytes;
			public FILETIME LastSyncTime;
		}
		[CRepr]
		public struct NLM_DATAPLAN_STATUS
		{
			public Guid InterfaceGuid;
			public NLM_USAGE_DATA UsageData;
			public uint32 DataLimitInMegabytes;
			public uint32 InboundBandwidthInKbps;
			public uint32 OutboundBandwidthInKbps;
			public FILETIME NextBillingCycle;
			public uint32 MaxTransferSizeInMegabytes;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NLM_SOCKADDR
		{
			public uint8[128] data;
		}
		[CRepr]
		public struct NLM_SIMULATED_PROFILE_INFO
		{
			public char16[256] ProfileName;
			public NLM_CONNECTION_COST cost;
			public uint32 UsageInMegabytes;
			public uint32 DataLimitInMegabytes;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_NetworkListManager = .(0xdcb00c01, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
		
		// --- COM Interfaces ---
		
		public struct INetworkListManager {}
		public struct INetworkListManagerEvents {}
		public struct INetwork {}
		public struct IEnumNetworks {}
		public struct INetworkEvents {}
		public struct INetworkConnection {}
		public struct IEnumNetworkConnections {}
		public struct INetworkConnectionEvents {}
		public struct INetworkCostManager {}
		public struct INetworkCostManagerEvents {}
		public struct INetworkConnectionCost {}
		public struct INetworkConnectionCostEvents {}
		
	}
}
