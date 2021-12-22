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
		
		[CRepr]
		public struct INetworkListManager : IDispatch
		{
			public const new Guid IID = .(0xdcb00000, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkListManager *self, NLM_ENUM_NETWORK Flags, IEnumNetworks** ppEnumNetwork) GetNetworks;
			public function HRESULT(INetworkListManager *self, Guid gdNetworkId, INetwork** ppNetwork) GetNetwork;
			public function HRESULT(INetworkListManager *self, IEnumNetworkConnections** ppEnum) GetNetworkConnections;
			public function HRESULT(INetworkListManager *self, Guid gdNetworkConnectionId, INetworkConnection** ppNetworkConnection) GetNetworkConnection;
			public function HRESULT(INetworkListManager *self, int16* pbIsConnected) get_IsConnectedToInternet;
			public function HRESULT(INetworkListManager *self, int16* pbIsConnected) get_IsConnected;
			public function HRESULT(INetworkListManager *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
			public function HRESULT(INetworkListManager *self, NLM_SIMULATED_PROFILE_INFO* pSimulatedInfo) SetSimulatedProfileInfo;
			public function HRESULT(INetworkListManager *self) ClearSimulatedProfileInfo;
		}
		[CRepr]
		public struct INetworkListManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00001, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkListManagerEvents *self, NLM_CONNECTIVITY newConnectivity) ConnectivityChanged;
		}
		[CRepr]
		public struct INetwork : IDispatch
		{
			public const new Guid IID = .(0xdcb00002, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetwork *self, BSTR* pszNetworkName) GetName;
			public function HRESULT(INetwork *self, BSTR szNetworkNewName) SetName;
			public function HRESULT(INetwork *self, BSTR* pszDescription) GetDescription;
			public function HRESULT(INetwork *self, BSTR szDescription) SetDescription;
			public function HRESULT(INetwork *self, Guid* pgdGuidNetworkId) GetNetworkId;
			public function HRESULT(INetwork *self, NLM_DOMAIN_TYPE* pNetworkType) GetDomainType;
			public function HRESULT(INetwork *self, IEnumNetworkConnections** ppEnumNetworkConnection) GetNetworkConnections;
			public function HRESULT(INetwork *self, uint32* pdwLowDateTimeCreated, uint32* pdwHighDateTimeCreated, uint32* pdwLowDateTimeConnected, uint32* pdwHighDateTimeConnected) GetTimeCreatedAndConnected;
			public function HRESULT(INetwork *self, int16* pbIsConnected) get_IsConnectedToInternet;
			public function HRESULT(INetwork *self, int16* pbIsConnected) get_IsConnected;
			public function HRESULT(INetwork *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
			public function HRESULT(INetwork *self, NLM_NETWORK_CATEGORY* pCategory) GetCategory;
			public function HRESULT(INetwork *self, NLM_NETWORK_CATEGORY NewCategory) SetCategory;
		}
		[CRepr]
		public struct IEnumNetworks : IDispatch
		{
			public const new Guid IID = .(0xdcb00003, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(IEnumNetworks *self, IEnumVARIANT** ppEnumVar) get__NewEnum;
			public function HRESULT(IEnumNetworks *self, uint32 celt, INetwork** rgelt, uint32* pceltFetched) Next;
			public function HRESULT(IEnumNetworks *self, uint32 celt) Skip;
			public function HRESULT(IEnumNetworks *self) Reset;
			public function HRESULT(IEnumNetworks *self, IEnumNetworks** ppEnumNetwork) Clone;
		}
		[CRepr]
		public struct INetworkEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00004, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkEvents *self, Guid networkId) NetworkAdded;
			public function HRESULT(INetworkEvents *self, Guid networkId) NetworkDeleted;
			public function HRESULT(INetworkEvents *self, Guid networkId, NLM_CONNECTIVITY newConnectivity) NetworkConnectivityChanged;
			public function HRESULT(INetworkEvents *self, Guid networkId, NLM_NETWORK_PROPERTY_CHANGE flags) NetworkPropertyChanged;
		}
		[CRepr]
		public struct INetworkConnection : IDispatch
		{
			public const new Guid IID = .(0xdcb00005, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkConnection *self, INetwork** ppNetwork) GetNetwork;
			public function HRESULT(INetworkConnection *self, int16* pbIsConnected) get_IsConnectedToInternet;
			public function HRESULT(INetworkConnection *self, int16* pbIsConnected) get_IsConnected;
			public function HRESULT(INetworkConnection *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
			public function HRESULT(INetworkConnection *self, Guid* pgdConnectionId) GetConnectionId;
			public function HRESULT(INetworkConnection *self, Guid* pgdAdapterId) GetAdapterId;
			public function HRESULT(INetworkConnection *self, NLM_DOMAIN_TYPE* pDomainType) GetDomainType;
		}
		[CRepr]
		public struct IEnumNetworkConnections : IDispatch
		{
			public const new Guid IID = .(0xdcb00006, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(IEnumNetworkConnections *self, IEnumVARIANT** ppEnumVar) get__NewEnum;
			public function HRESULT(IEnumNetworkConnections *self, uint32 celt, INetworkConnection** rgelt, uint32* pceltFetched) Next;
			public function HRESULT(IEnumNetworkConnections *self, uint32 celt) Skip;
			public function HRESULT(IEnumNetworkConnections *self) Reset;
			public function HRESULT(IEnumNetworkConnections *self, IEnumNetworkConnections** ppEnumNetwork) Clone;
		}
		[CRepr]
		public struct INetworkConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00007, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkConnectionEvents *self, Guid connectionId, NLM_CONNECTIVITY newConnectivity) NetworkConnectionConnectivityChanged;
			public function HRESULT(INetworkConnectionEvents *self, Guid connectionId, NLM_CONNECTION_PROPERTY_CHANGE flags) NetworkConnectionPropertyChanged;
		}
		[CRepr]
		public struct INetworkCostManager : IUnknown
		{
			public const new Guid IID = .(0xdcb00008, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkCostManager *self, uint32* pCost, NLM_SOCKADDR* pDestIPAddr) GetCost;
			public function HRESULT(INetworkCostManager *self, NLM_DATAPLAN_STATUS* pDataPlanStatus, NLM_SOCKADDR* pDestIPAddr) GetDataPlanStatus;
			public function HRESULT(INetworkCostManager *self, uint32 length, NLM_SOCKADDR* pDestIPAddrList, int16 bAppend) SetDestinationAddresses;
		}
		[CRepr]
		public struct INetworkCostManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00009, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkCostManagerEvents *self, uint32 newCost, NLM_SOCKADDR* pDestAddr) CostChanged;
			public function HRESULT(INetworkCostManagerEvents *self, NLM_SOCKADDR* pDestAddr) DataPlanStatusChanged;
		}
		[CRepr]
		public struct INetworkConnectionCost : IUnknown
		{
			public const new Guid IID = .(0xdcb0000a, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkConnectionCost *self, uint32* pCost) GetCost;
			public function HRESULT(INetworkConnectionCost *self, NLM_DATAPLAN_STATUS* pDataPlanStatus) GetDataPlanStatus;
		}
		[CRepr]
		public struct INetworkConnectionCostEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb0000b, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public function HRESULT(INetworkConnectionCostEvents *self, Guid connectionId, uint32 newCost) ConnectionCostChanged;
			public function HRESULT(INetworkConnectionCostEvents *self, Guid connectionId) ConnectionDataPlanStatusChanged;
		}
		
	}
}
