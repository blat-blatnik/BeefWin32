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
			CHANGE_AUTHENTICATION = 1,
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
			
			public HRESULT GetNetworks(NLM_ENUM_NETWORK Flags, out IEnumNetworks* ppEnumNetwork) mut => VT.GetNetworks(ref this, Flags, out ppEnumNetwork);
			public HRESULT GetNetwork(Guid gdNetworkId, out INetwork* ppNetwork) mut => VT.GetNetwork(ref this, gdNetworkId, out ppNetwork);
			public HRESULT GetNetworkConnections(out IEnumNetworkConnections* ppEnum) mut => VT.GetNetworkConnections(ref this, out ppEnum);
			public HRESULT GetNetworkConnection(Guid gdNetworkConnectionId, out INetworkConnection* ppNetworkConnection) mut => VT.GetNetworkConnection(ref this, gdNetworkConnectionId, out ppNetworkConnection);
			public HRESULT get_IsConnectedToInternet(out int16 pbIsConnected) mut => VT.get_IsConnectedToInternet(ref this, out pbIsConnected);
			public HRESULT get_IsConnected(out int16 pbIsConnected) mut => VT.get_IsConnected(ref this, out pbIsConnected);
			public HRESULT GetConnectivity(out NLM_CONNECTIVITY pConnectivity) mut => VT.GetConnectivity(ref this, out pConnectivity);
			public HRESULT SetSimulatedProfileInfo(ref NLM_SIMULATED_PROFILE_INFO pSimulatedInfo) mut => VT.SetSimulatedProfileInfo(ref this, ref pSimulatedInfo);
			public HRESULT ClearSimulatedProfileInfo() mut => VT.ClearSimulatedProfileInfo(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, NLM_ENUM_NETWORK Flags, out IEnumNetworks* ppEnumNetwork) GetNetworks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, Guid gdNetworkId, out INetwork* ppNetwork) GetNetwork;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, out IEnumNetworkConnections* ppEnum) GetNetworkConnections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, Guid gdNetworkConnectionId, out INetworkConnection* ppNetworkConnection) GetNetworkConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, out int16 pbIsConnected) get_IsConnectedToInternet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, out int16 pbIsConnected) get_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, out NLM_CONNECTIVITY pConnectivity) GetConnectivity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self, ref NLM_SIMULATED_PROFILE_INFO pSimulatedInfo) SetSimulatedProfileInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManager self) ClearSimulatedProfileInfo;
			}
		}
		[CRepr]
		public struct INetworkListManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00001, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectivityChanged(NLM_CONNECTIVITY newConnectivity) mut => VT.ConnectivityChanged(ref this, newConnectivity);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkListManagerEvents self, NLM_CONNECTIVITY newConnectivity) ConnectivityChanged;
			}
		}
		[CRepr]
		public struct INetwork : IDispatch
		{
			public const new Guid IID = .(0xdcb00002, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out BSTR pszNetworkName) mut => VT.GetName(ref this, out pszNetworkName);
			public HRESULT SetName(BSTR szNetworkNewName) mut => VT.SetName(ref this, szNetworkNewName);
			public HRESULT GetDescription(out BSTR pszDescription) mut => VT.GetDescription(ref this, out pszDescription);
			public HRESULT SetDescription(BSTR szDescription) mut => VT.SetDescription(ref this, szDescription);
			public HRESULT GetNetworkId(out Guid pgdGuidNetworkId) mut => VT.GetNetworkId(ref this, out pgdGuidNetworkId);
			public HRESULT GetDomainType(out NLM_DOMAIN_TYPE pNetworkType) mut => VT.GetDomainType(ref this, out pNetworkType);
			public HRESULT GetNetworkConnections(out IEnumNetworkConnections* ppEnumNetworkConnection) mut => VT.GetNetworkConnections(ref this, out ppEnumNetworkConnection);
			public HRESULT GetTimeCreatedAndConnected(out uint32 pdwLowDateTimeCreated, out uint32 pdwHighDateTimeCreated, out uint32 pdwLowDateTimeConnected, out uint32 pdwHighDateTimeConnected) mut => VT.GetTimeCreatedAndConnected(ref this, out pdwLowDateTimeCreated, out pdwHighDateTimeCreated, out pdwLowDateTimeConnected, out pdwHighDateTimeConnected);
			public HRESULT get_IsConnectedToInternet(out int16 pbIsConnected) mut => VT.get_IsConnectedToInternet(ref this, out pbIsConnected);
			public HRESULT get_IsConnected(out int16 pbIsConnected) mut => VT.get_IsConnected(ref this, out pbIsConnected);
			public HRESULT GetConnectivity(out NLM_CONNECTIVITY pConnectivity) mut => VT.GetConnectivity(ref this, out pConnectivity);
			public HRESULT GetCategory(out NLM_NETWORK_CATEGORY pCategory) mut => VT.GetCategory(ref this, out pCategory);
			public HRESULT SetCategory(NLM_NETWORK_CATEGORY NewCategory) mut => VT.SetCategory(ref this, NewCategory);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out BSTR pszNetworkName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, BSTR szNetworkNewName) SetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out BSTR pszDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, BSTR szDescription) SetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out Guid pgdGuidNetworkId) GetNetworkId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out NLM_DOMAIN_TYPE pNetworkType) GetDomainType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out IEnumNetworkConnections* ppEnumNetworkConnection) GetNetworkConnections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out uint32 pdwLowDateTimeCreated, out uint32 pdwHighDateTimeCreated, out uint32 pdwLowDateTimeConnected, out uint32 pdwHighDateTimeConnected) GetTimeCreatedAndConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out int16 pbIsConnected) get_IsConnectedToInternet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out int16 pbIsConnected) get_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out NLM_CONNECTIVITY pConnectivity) GetConnectivity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, out NLM_NETWORK_CATEGORY pCategory) GetCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetwork self, NLM_NETWORK_CATEGORY NewCategory) SetCategory;
			}
		}
		[CRepr]
		public struct IEnumNetworks : IDispatch
		{
			public const new Guid IID = .(0xdcb00003, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IEnumVARIANT* ppEnumVar) mut => VT.get__NewEnum(ref this, out ppEnumVar);
			public HRESULT Next(uint32 celt, INetwork** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetworks* ppEnumNetwork) mut => VT.Clone(ref this, out ppEnumNetwork);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworks self, out IEnumVARIANT* ppEnumVar) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworks self, uint32 celt, INetwork** rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworks self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworks self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworks self, out IEnumNetworks* ppEnumNetwork) Clone;
			}
		}
		[CRepr]
		public struct INetworkEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00004, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NetworkAdded(Guid networkId) mut => VT.NetworkAdded(ref this, networkId);
			public HRESULT NetworkDeleted(Guid networkId) mut => VT.NetworkDeleted(ref this, networkId);
			public HRESULT NetworkConnectivityChanged(Guid networkId, NLM_CONNECTIVITY newConnectivity) mut => VT.NetworkConnectivityChanged(ref this, networkId, newConnectivity);
			public HRESULT NetworkPropertyChanged(Guid networkId, NLM_NETWORK_PROPERTY_CHANGE flags) mut => VT.NetworkPropertyChanged(ref this, networkId, flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkEvents self, Guid networkId) NetworkAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkEvents self, Guid networkId) NetworkDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkEvents self, Guid networkId, NLM_CONNECTIVITY newConnectivity) NetworkConnectivityChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkEvents self, Guid networkId, NLM_NETWORK_PROPERTY_CHANGE flags) NetworkPropertyChanged;
			}
		}
		[CRepr]
		public struct INetworkConnection : IDispatch
		{
			public const new Guid IID = .(0xdcb00005, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetwork(out INetwork* ppNetwork) mut => VT.GetNetwork(ref this, out ppNetwork);
			public HRESULT get_IsConnectedToInternet(out int16 pbIsConnected) mut => VT.get_IsConnectedToInternet(ref this, out pbIsConnected);
			public HRESULT get_IsConnected(out int16 pbIsConnected) mut => VT.get_IsConnected(ref this, out pbIsConnected);
			public HRESULT GetConnectivity(out NLM_CONNECTIVITY pConnectivity) mut => VT.GetConnectivity(ref this, out pConnectivity);
			public HRESULT GetConnectionId(out Guid pgdConnectionId) mut => VT.GetConnectionId(ref this, out pgdConnectionId);
			public HRESULT GetAdapterId(out Guid pgdAdapterId) mut => VT.GetAdapterId(ref this, out pgdAdapterId);
			public HRESULT GetDomainType(out NLM_DOMAIN_TYPE pDomainType) mut => VT.GetDomainType(ref this, out pDomainType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out INetwork* ppNetwork) GetNetwork;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out int16 pbIsConnected) get_IsConnectedToInternet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out int16 pbIsConnected) get_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out NLM_CONNECTIVITY pConnectivity) GetConnectivity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out Guid pgdConnectionId) GetConnectionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out Guid pgdAdapterId) GetAdapterId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnection self, out NLM_DOMAIN_TYPE pDomainType) GetDomainType;
			}
		}
		[CRepr]
		public struct IEnumNetworkConnections : IDispatch
		{
			public const new Guid IID = .(0xdcb00006, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IEnumVARIANT* ppEnumVar) mut => VT.get__NewEnum(ref this, out ppEnumVar);
			public HRESULT Next(uint32 celt, INetworkConnection** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNetworkConnections* ppEnumNetwork) mut => VT.Clone(ref this, out ppEnumNetwork);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworkConnections self, out IEnumVARIANT* ppEnumVar) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworkConnections self, uint32 celt, INetworkConnection** rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworkConnections self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworkConnections self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNetworkConnections self, out IEnumNetworkConnections* ppEnumNetwork) Clone;
			}
		}
		[CRepr]
		public struct INetworkConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00007, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NetworkConnectionConnectivityChanged(Guid connectionId, NLM_CONNECTIVITY newConnectivity) mut => VT.NetworkConnectionConnectivityChanged(ref this, connectionId, newConnectivity);
			public HRESULT NetworkConnectionPropertyChanged(Guid connectionId, NLM_CONNECTION_PROPERTY_CHANGE flags) mut => VT.NetworkConnectionPropertyChanged(ref this, connectionId, flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionEvents self, Guid connectionId, NLM_CONNECTIVITY newConnectivity) NetworkConnectionConnectivityChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionEvents self, Guid connectionId, NLM_CONNECTION_PROPERTY_CHANGE flags) NetworkConnectionPropertyChanged;
			}
		}
		[CRepr]
		public struct INetworkCostManager : IUnknown
		{
			public const new Guid IID = .(0xdcb00008, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCost(out uint32 pCost, ref NLM_SOCKADDR pDestIPAddr) mut => VT.GetCost(ref this, out pCost, ref pDestIPAddr);
			public HRESULT GetDataPlanStatus(out NLM_DATAPLAN_STATUS pDataPlanStatus, ref NLM_SOCKADDR pDestIPAddr) mut => VT.GetDataPlanStatus(ref this, out pDataPlanStatus, ref pDestIPAddr);
			public HRESULT SetDestinationAddresses(uint32 length, NLM_SOCKADDR* pDestIPAddrList, int16 bAppend) mut => VT.SetDestinationAddresses(ref this, length, pDestIPAddrList, bAppend);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkCostManager self, out uint32 pCost, ref NLM_SOCKADDR pDestIPAddr) GetCost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkCostManager self, out NLM_DATAPLAN_STATUS pDataPlanStatus, ref NLM_SOCKADDR pDestIPAddr) GetDataPlanStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkCostManager self, uint32 length, NLM_SOCKADDR* pDestIPAddrList, int16 bAppend) SetDestinationAddresses;
			}
		}
		[CRepr]
		public struct INetworkCostManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb00009, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CostChanged(uint32 newCost, ref NLM_SOCKADDR pDestAddr) mut => VT.CostChanged(ref this, newCost, ref pDestAddr);
			public HRESULT DataPlanStatusChanged(ref NLM_SOCKADDR pDestAddr) mut => VT.DataPlanStatusChanged(ref this, ref pDestAddr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkCostManagerEvents self, uint32 newCost, ref NLM_SOCKADDR pDestAddr) CostChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkCostManagerEvents self, ref NLM_SOCKADDR pDestAddr) DataPlanStatusChanged;
			}
		}
		[CRepr]
		public struct INetworkConnectionCost : IUnknown
		{
			public const new Guid IID = .(0xdcb0000a, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCost(out uint32 pCost) mut => VT.GetCost(ref this, out pCost);
			public HRESULT GetDataPlanStatus(out NLM_DATAPLAN_STATUS pDataPlanStatus) mut => VT.GetDataPlanStatus(ref this, out pDataPlanStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionCost self, out uint32 pCost) GetCost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionCost self, out NLM_DATAPLAN_STATUS pDataPlanStatus) GetDataPlanStatus;
			}
		}
		[CRepr]
		public struct INetworkConnectionCostEvents : IUnknown
		{
			public const new Guid IID = .(0xdcb0000b, 0x570f, 0x4a9b, 0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectionCostChanged(Guid connectionId, uint32 newCost) mut => VT.ConnectionCostChanged(ref this, connectionId, newCost);
			public HRESULT ConnectionDataPlanStatusChanged(Guid connectionId) mut => VT.ConnectionDataPlanStatusChanged(ref this, connectionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionCostEvents self, Guid connectionId, uint32 newCost) ConnectionCostChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkConnectionCostEvents self, Guid connectionId) ConnectionDataPlanStatusChanged;
			}
		}
		
	}
}
