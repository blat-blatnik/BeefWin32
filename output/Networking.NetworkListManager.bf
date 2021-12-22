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
		
		public enum NLM_CONNECTION_COST : int32
		{
			UNKNOWN = 0,
			UNRESTRICTED = 1,
			FIXED = 2,
			VARIABLE = 4,
			OVERDATALIMIT = 65536,
			CONGESTED = 131072,
			ROAMING = 262144,
			APPROACHINGDATALIMIT = 524288,
		}
		public enum NLM_NETWORK_CLASS : int32
		{
			IDENTIFYING = 1,
			IDENTIFIED = 2,
			UNIDENTIFIED = 3,
		}
		public enum NLM_INTERNET_CONNECTIVITY : int32
		{
			WEBHIJACK = 1,
			PROXIED = 2,
			CORPORATE = 4,
		}
		public enum NLM_CONNECTIVITY : int32
		{
			DISCONNECTED = 0,
			IPV4_NOTRAFFIC = 1,
			IPV6_NOTRAFFIC = 2,
			IPV4_SUBNET = 16,
			IPV4_LOCALNETWORK = 32,
			IPV4_INTERNET = 64,
			IPV6_SUBNET = 256,
			IPV6_LOCALNETWORK = 512,
			IPV6_INTERNET = 1024,
		}
		public enum NLM_DOMAIN_TYPE : int32
		{
			NON_DOMAIN_NETWORK = 0,
			DOMAIN_NETWORK = 1,
			DOMAIN_AUTHENTICATED = 2,
		}
		public enum NLM_ENUM_NETWORK : int32
		{
			CONNECTED = 1,
			DISCONNECTED = 2,
			ALL = 3,
		}
		public enum NLM_NETWORK_CATEGORY : int32
		{
			PUBLIC = 0,
			PRIVATE = 1,
			DOMAIN_AUTHENTICATED = 2,
		}
		public enum NLM_NETWORK_PROPERTY_CHANGE : int32
		{
			CONNECTION = 1,
			DESCRIPTION = 2,
			NAME = 4,
			ICON = 8,
			CATEGORY_VALUE = 16,
		}
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetworks(NLM_ENUM_NETWORK Flags, IEnumNetworks** ppEnumNetwork) mut
			{
				return VT.GetNetworks(&this, Flags, ppEnumNetwork);
			}
			public HRESULT GetNetwork(Guid gdNetworkId, INetwork** ppNetwork) mut
			{
				return VT.GetNetwork(&this, gdNetworkId, ppNetwork);
			}
			public HRESULT GetNetworkConnections(IEnumNetworkConnections** ppEnum) mut
			{
				return VT.GetNetworkConnections(&this, ppEnum);
			}
			public HRESULT GetNetworkConnection(Guid gdNetworkConnectionId, INetworkConnection** ppNetworkConnection) mut
			{
				return VT.GetNetworkConnection(&this, gdNetworkConnectionId, ppNetworkConnection);
			}
			public HRESULT get_IsConnectedToInternet(int16* pbIsConnected) mut
			{
				return VT.get_IsConnectedToInternet(&this, pbIsConnected);
			}
			public HRESULT get_IsConnected(int16* pbIsConnected) mut
			{
				return VT.get_IsConnected(&this, pbIsConnected);
			}
			public HRESULT GetConnectivity(NLM_CONNECTIVITY* pConnectivity) mut
			{
				return VT.GetConnectivity(&this, pConnectivity);
			}
			public HRESULT SetSimulatedProfileInfo(NLM_SIMULATED_PROFILE_INFO* pSimulatedInfo) mut
			{
				return VT.SetSimulatedProfileInfo(&this, pSimulatedInfo);
			}
			public HRESULT ClearSimulatedProfileInfo() mut
			{
				return VT.ClearSimulatedProfileInfo(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetworkListManager *self, NLM_ENUM_NETWORK Flags, IEnumNetworks** ppEnumNetwork) GetNetworks;
				public new function HRESULT(INetworkListManager *self, Guid gdNetworkId, INetwork** ppNetwork) GetNetwork;
				public new function HRESULT(INetworkListManager *self, IEnumNetworkConnections** ppEnum) GetNetworkConnections;
				public new function HRESULT(INetworkListManager *self, Guid gdNetworkConnectionId, INetworkConnection** ppNetworkConnection) GetNetworkConnection;
				public new function HRESULT(INetworkListManager *self, int16* pbIsConnected) get_IsConnectedToInternet;
				public new function HRESULT(INetworkListManager *self, int16* pbIsConnected) get_IsConnected;
				public new function HRESULT(INetworkListManager *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
				public new function HRESULT(INetworkListManager *self, NLM_SIMULATED_PROFILE_INFO* pSimulatedInfo) SetSimulatedProfileInfo;
				public new function HRESULT(INetworkListManager *self) ClearSimulatedProfileInfo;
			}
		}
		[CRepr]
		public struct INetworkListManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00001, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectivityChanged(NLM_CONNECTIVITY newConnectivity) mut
			{
				return VT.ConnectivityChanged(&this, newConnectivity);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkListManagerEvents *self, NLM_CONNECTIVITY newConnectivity) ConnectivityChanged;
			}
		}
		[CRepr]
		public struct INetwork : IDispatch
		{
			public const new Guid IID = .(0xdcb00002, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(BSTR* pszNetworkName) mut
			{
				return VT.GetName(&this, pszNetworkName);
			}
			public HRESULT SetName(BSTR szNetworkNewName) mut
			{
				return VT.SetName(&this, szNetworkNewName);
			}
			public HRESULT GetDescription(BSTR* pszDescription) mut
			{
				return VT.GetDescription(&this, pszDescription);
			}
			public HRESULT SetDescription(BSTR szDescription) mut
			{
				return VT.SetDescription(&this, szDescription);
			}
			public HRESULT GetNetworkId(Guid* pgdGuidNetworkId) mut
			{
				return VT.GetNetworkId(&this, pgdGuidNetworkId);
			}
			public HRESULT GetDomainType(NLM_DOMAIN_TYPE* pNetworkType) mut
			{
				return VT.GetDomainType(&this, pNetworkType);
			}
			public HRESULT GetNetworkConnections(IEnumNetworkConnections** ppEnumNetworkConnection) mut
			{
				return VT.GetNetworkConnections(&this, ppEnumNetworkConnection);
			}
			public HRESULT GetTimeCreatedAndConnected(uint32* pdwLowDateTimeCreated, uint32* pdwHighDateTimeCreated, uint32* pdwLowDateTimeConnected, uint32* pdwHighDateTimeConnected) mut
			{
				return VT.GetTimeCreatedAndConnected(&this, pdwLowDateTimeCreated, pdwHighDateTimeCreated, pdwLowDateTimeConnected, pdwHighDateTimeConnected);
			}
			public HRESULT get_IsConnectedToInternet(int16* pbIsConnected) mut
			{
				return VT.get_IsConnectedToInternet(&this, pbIsConnected);
			}
			public HRESULT get_IsConnected(int16* pbIsConnected) mut
			{
				return VT.get_IsConnected(&this, pbIsConnected);
			}
			public HRESULT GetConnectivity(NLM_CONNECTIVITY* pConnectivity) mut
			{
				return VT.GetConnectivity(&this, pConnectivity);
			}
			public HRESULT GetCategory(NLM_NETWORK_CATEGORY* pCategory) mut
			{
				return VT.GetCategory(&this, pCategory);
			}
			public HRESULT SetCategory(NLM_NETWORK_CATEGORY NewCategory) mut
			{
				return VT.SetCategory(&this, NewCategory);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetwork *self, BSTR* pszNetworkName) GetName;
				public new function HRESULT(INetwork *self, BSTR szNetworkNewName) SetName;
				public new function HRESULT(INetwork *self, BSTR* pszDescription) GetDescription;
				public new function HRESULT(INetwork *self, BSTR szDescription) SetDescription;
				public new function HRESULT(INetwork *self, Guid* pgdGuidNetworkId) GetNetworkId;
				public new function HRESULT(INetwork *self, NLM_DOMAIN_TYPE* pNetworkType) GetDomainType;
				public new function HRESULT(INetwork *self, IEnumNetworkConnections** ppEnumNetworkConnection) GetNetworkConnections;
				public new function HRESULT(INetwork *self, uint32* pdwLowDateTimeCreated, uint32* pdwHighDateTimeCreated, uint32* pdwLowDateTimeConnected, uint32* pdwHighDateTimeConnected) GetTimeCreatedAndConnected;
				public new function HRESULT(INetwork *self, int16* pbIsConnected) get_IsConnectedToInternet;
				public new function HRESULT(INetwork *self, int16* pbIsConnected) get_IsConnected;
				public new function HRESULT(INetwork *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
				public new function HRESULT(INetwork *self, NLM_NETWORK_CATEGORY* pCategory) GetCategory;
				public new function HRESULT(INetwork *self, NLM_NETWORK_CATEGORY NewCategory) SetCategory;
			}
		}
		[CRepr]
		public struct IEnumNetworks : IDispatch
		{
			public const new Guid IID = .(0xdcb00003, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IEnumVARIANT** ppEnumVar) mut
			{
				return VT.get__NewEnum(&this, ppEnumVar);
			}
			public HRESULT Next(uint32 celt, INetwork** rgelt, uint32* pceltFetched) mut
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
			public HRESULT Clone(IEnumNetworks** ppEnumNetwork) mut
			{
				return VT.Clone(&this, ppEnumNetwork);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumNetworks *self, IEnumVARIANT** ppEnumVar) get__NewEnum;
				public new function HRESULT(IEnumNetworks *self, uint32 celt, INetwork** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetworks *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetworks *self) Reset;
				public new function HRESULT(IEnumNetworks *self, IEnumNetworks** ppEnumNetwork) Clone;
			}
		}
		[CRepr]
		public struct INetworkEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00004, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NetworkAdded(Guid networkId) mut
			{
				return VT.NetworkAdded(&this, networkId);
			}
			public HRESULT NetworkDeleted(Guid networkId) mut
			{
				return VT.NetworkDeleted(&this, networkId);
			}
			public HRESULT NetworkConnectivityChanged(Guid networkId, NLM_CONNECTIVITY newConnectivity) mut
			{
				return VT.NetworkConnectivityChanged(&this, networkId, newConnectivity);
			}
			public HRESULT NetworkPropertyChanged(Guid networkId, NLM_NETWORK_PROPERTY_CHANGE flags) mut
			{
				return VT.NetworkPropertyChanged(&this, networkId, flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkEvents *self, Guid networkId) NetworkAdded;
				public new function HRESULT(INetworkEvents *self, Guid networkId) NetworkDeleted;
				public new function HRESULT(INetworkEvents *self, Guid networkId, NLM_CONNECTIVITY newConnectivity) NetworkConnectivityChanged;
				public new function HRESULT(INetworkEvents *self, Guid networkId, NLM_NETWORK_PROPERTY_CHANGE flags) NetworkPropertyChanged;
			}
		}
		[CRepr]
		public struct INetworkConnection : IDispatch
		{
			public const new Guid IID = .(0xdcb00005, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetwork(INetwork** ppNetwork) mut
			{
				return VT.GetNetwork(&this, ppNetwork);
			}
			public HRESULT get_IsConnectedToInternet(int16* pbIsConnected) mut
			{
				return VT.get_IsConnectedToInternet(&this, pbIsConnected);
			}
			public HRESULT get_IsConnected(int16* pbIsConnected) mut
			{
				return VT.get_IsConnected(&this, pbIsConnected);
			}
			public HRESULT GetConnectivity(NLM_CONNECTIVITY* pConnectivity) mut
			{
				return VT.GetConnectivity(&this, pConnectivity);
			}
			public HRESULT GetConnectionId(Guid* pgdConnectionId) mut
			{
				return VT.GetConnectionId(&this, pgdConnectionId);
			}
			public HRESULT GetAdapterId(Guid* pgdAdapterId) mut
			{
				return VT.GetAdapterId(&this, pgdAdapterId);
			}
			public HRESULT GetDomainType(NLM_DOMAIN_TYPE* pDomainType) mut
			{
				return VT.GetDomainType(&this, pDomainType);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetworkConnection *self, INetwork** ppNetwork) GetNetwork;
				public new function HRESULT(INetworkConnection *self, int16* pbIsConnected) get_IsConnectedToInternet;
				public new function HRESULT(INetworkConnection *self, int16* pbIsConnected) get_IsConnected;
				public new function HRESULT(INetworkConnection *self, NLM_CONNECTIVITY* pConnectivity) GetConnectivity;
				public new function HRESULT(INetworkConnection *self, Guid* pgdConnectionId) GetConnectionId;
				public new function HRESULT(INetworkConnection *self, Guid* pgdAdapterId) GetAdapterId;
				public new function HRESULT(INetworkConnection *self, NLM_DOMAIN_TYPE* pDomainType) GetDomainType;
			}
		}
		[CRepr]
		public struct IEnumNetworkConnections : IDispatch
		{
			public const new Guid IID = .(0xdcb00006, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IEnumVARIANT** ppEnumVar) mut
			{
				return VT.get__NewEnum(&this, ppEnumVar);
			}
			public HRESULT Next(uint32 celt, INetworkConnection** rgelt, uint32* pceltFetched) mut
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
			public HRESULT Clone(IEnumNetworkConnections** ppEnumNetwork) mut
			{
				return VT.Clone(&this, ppEnumNetwork);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumNetworkConnections *self, IEnumVARIANT** ppEnumVar) get__NewEnum;
				public new function HRESULT(IEnumNetworkConnections *self, uint32 celt, INetworkConnection** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumNetworkConnections *self, uint32 celt) Skip;
				public new function HRESULT(IEnumNetworkConnections *self) Reset;
				public new function HRESULT(IEnumNetworkConnections *self, IEnumNetworkConnections** ppEnumNetwork) Clone;
			}
		}
		[CRepr]
		public struct INetworkConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00007, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NetworkConnectionConnectivityChanged(Guid connectionId, NLM_CONNECTIVITY newConnectivity) mut
			{
				return VT.NetworkConnectionConnectivityChanged(&this, connectionId, newConnectivity);
			}
			public HRESULT NetworkConnectionPropertyChanged(Guid connectionId, NLM_CONNECTION_PROPERTY_CHANGE flags) mut
			{
				return VT.NetworkConnectionPropertyChanged(&this, connectionId, flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkConnectionEvents *self, Guid connectionId, NLM_CONNECTIVITY newConnectivity) NetworkConnectionConnectivityChanged;
				public new function HRESULT(INetworkConnectionEvents *self, Guid connectionId, NLM_CONNECTION_PROPERTY_CHANGE flags) NetworkConnectionPropertyChanged;
			}
		}
		[CRepr]
		public struct INetworkCostManager : IUnknown
		{
			public const new Guid IID = .(0xdcb00008, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCost(uint32* pCost, NLM_SOCKADDR* pDestIPAddr) mut
			{
				return VT.GetCost(&this, pCost, pDestIPAddr);
			}
			public HRESULT GetDataPlanStatus(NLM_DATAPLAN_STATUS* pDataPlanStatus, NLM_SOCKADDR* pDestIPAddr) mut
			{
				return VT.GetDataPlanStatus(&this, pDataPlanStatus, pDestIPAddr);
			}
			public HRESULT SetDestinationAddresses(uint32 length, NLM_SOCKADDR* pDestIPAddrList, int16 bAppend) mut
			{
				return VT.SetDestinationAddresses(&this, length, pDestIPAddrList, bAppend);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkCostManager *self, uint32* pCost, NLM_SOCKADDR* pDestIPAddr) GetCost;
				public new function HRESULT(INetworkCostManager *self, NLM_DATAPLAN_STATUS* pDataPlanStatus, NLM_SOCKADDR* pDestIPAddr) GetDataPlanStatus;
				public new function HRESULT(INetworkCostManager *self, uint32 length, NLM_SOCKADDR* pDestIPAddrList, int16 bAppend) SetDestinationAddresses;
			}
		}
		[CRepr]
		public struct INetworkCostManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00009, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CostChanged(uint32 newCost, NLM_SOCKADDR* pDestAddr) mut
			{
				return VT.CostChanged(&this, newCost, pDestAddr);
			}
			public HRESULT DataPlanStatusChanged(NLM_SOCKADDR* pDestAddr) mut
			{
				return VT.DataPlanStatusChanged(&this, pDestAddr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkCostManagerEvents *self, uint32 newCost, NLM_SOCKADDR* pDestAddr) CostChanged;
				public new function HRESULT(INetworkCostManagerEvents *self, NLM_SOCKADDR* pDestAddr) DataPlanStatusChanged;
			}
		}
		[CRepr]
		public struct INetworkConnectionCost : IUnknown
		{
			public const new Guid IID = .(0xdcb0000a, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCost(uint32* pCost) mut
			{
				return VT.GetCost(&this, pCost);
			}
			public HRESULT GetDataPlanStatus(NLM_DATAPLAN_STATUS* pDataPlanStatus) mut
			{
				return VT.GetDataPlanStatus(&this, pDataPlanStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkConnectionCost *self, uint32* pCost) GetCost;
				public new function HRESULT(INetworkConnectionCost *self, NLM_DATAPLAN_STATUS* pDataPlanStatus) GetDataPlanStatus;
			}
		}
		[CRepr]
		public struct INetworkConnectionCostEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb0000b, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectionCostChanged(Guid connectionId, uint32 newCost) mut
			{
				return VT.ConnectionCostChanged(&this, connectionId, newCost);
			}
			public HRESULT ConnectionDataPlanStatusChanged(Guid connectionId) mut
			{
				return VT.ConnectionDataPlanStatusChanged(&this, connectionId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkConnectionCostEvents *self, Guid connectionId, uint32 newCost) ConnectionCostChanged;
				public new function HRESULT(INetworkConnectionCostEvents *self, Guid connectionId) ConnectionDataPlanStatusChanged;
			}
		}
		
	}
}
