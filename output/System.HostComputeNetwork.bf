using System;

// namespace System.HostComputeNetwork
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum HCN_NOTIFICATIONS : int32
		{
			Invalid = 0,
			NetworkPreCreate = 1,
			NetworkCreate = 2,
			NetworkPreDelete = 3,
			NetworkDelete = 4,
			NamespaceCreate = 5,
			NamespaceDelete = 6,
			GuestNetworkServiceCreate = 7,
			GuestNetworkServiceDelete = 8,
			NetworkEndpointAttached = 9,
			NetworkEndpointDetached = 16,
			GuestNetworkServiceStateChanged = 17,
			GuestNetworkServiceInterfaceStateChanged = 18,
			ServiceDisconnect = 16777216,
			FlagsReserved = -268435456,
		}
		[AllowDuplicates]
		public enum HCN_PORT_PROTOCOL : int32
		{
			TCP = 1,
			UDP = 2,
			BOTH = 3,
		}
		[AllowDuplicates]
		public enum HCN_PORT_ACCESS : int32
		{
			EXCLUSIVE = 1,
			SHARED = 2,
		}
		
		// --- Function Pointers ---
		
		public function void HCN_NOTIFICATION_CALLBACK(uint32 NotificationType, void* Context, HRESULT NotificationStatus, PWSTR NotificationData);
		
		// --- Structs ---
		
		[CRepr]
		public struct HCN_PORT_RANGE_RESERVATION
		{
			public uint16 startingPort;
			public uint16 endingPort;
		}
		[CRepr]
		public struct HCN_PORT_RANGE_ENTRY
		{
			public Guid OwningPartitionId;
			public Guid TargetPartitionId;
			public HCN_PORT_PROTOCOL Protocol;
			public uint64 Priority;
			public uint32 ReservationType;
			public uint32 SharingFlags;
			public uint32 DeliveryMode;
			public uint16 StartingPort;
			public uint16 EndingPort;
		}
		
		// --- Functions ---
		
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnEnumerateNetworks(PWSTR Query, PWSTR* Networks, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCreateNetwork(Guid* Id, PWSTR Settings, void** Network, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnOpenNetwork(Guid* Id, void** Network, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnModifyNetwork(void* Network, PWSTR Settings, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnQueryNetworkProperties(void* Network, PWSTR Query, PWSTR* Properties, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnDeleteNetwork(Guid* Id, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCloseNetwork(void* Network);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnEnumerateNamespaces(PWSTR Query, PWSTR* Namespaces, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCreateNamespace(Guid* Id, PWSTR Settings, void** Namespace, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnOpenNamespace(Guid* Id, void** Namespace, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnModifyNamespace(void* Namespace, PWSTR Settings, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnQueryNamespaceProperties(void* Namespace, PWSTR Query, PWSTR* Properties, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnDeleteNamespace(Guid* Id, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCloseNamespace(void* Namespace);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnEnumerateEndpoints(PWSTR Query, PWSTR* Endpoints, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCreateEndpoint(void* Network, Guid* Id, PWSTR Settings, void** Endpoint, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnOpenEndpoint(Guid* Id, void** Endpoint, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnModifyEndpoint(void* Endpoint, PWSTR Settings, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnQueryEndpointProperties(void* Endpoint, PWSTR Query, PWSTR* Properties, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnDeleteEndpoint(Guid* Id, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCloseEndpoint(void* Endpoint);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnEnumerateLoadBalancers(PWSTR Query, PWSTR* LoadBalancer, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCreateLoadBalancer(Guid* Id, PWSTR Settings, void** LoadBalancer, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnOpenLoadBalancer(Guid* Id, void** LoadBalancer, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnModifyLoadBalancer(void* LoadBalancer, PWSTR Settings, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnQueryLoadBalancerProperties(void* LoadBalancer, PWSTR Query, PWSTR* Properties, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnDeleteLoadBalancer(Guid* Id, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCloseLoadBalancer(void* LoadBalancer);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnRegisterServiceCallback(HCN_NOTIFICATION_CALLBACK Callback, void* Context, void** CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnUnregisterServiceCallback(void* CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnRegisterGuestNetworkServiceCallback(void* GuestNetworkService, HCN_NOTIFICATION_CALLBACK Callback, void* Context, void** CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnUnregisterGuestNetworkServiceCallback(void* CallbackHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCreateGuestNetworkService(Guid* Id, PWSTR Settings, void** GuestNetworkService, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnCloseGuestNetworkService(void* GuestNetworkService);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnModifyGuestNetworkService(void* GuestNetworkService, PWSTR Settings, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnDeleteGuestNetworkService(Guid* Id, PWSTR* ErrorRecord);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnReserveGuestNetworkServicePort(void* GuestNetworkService, HCN_PORT_PROTOCOL Protocol, HCN_PORT_ACCESS Access, uint16 Port, HANDLE* PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnReserveGuestNetworkServicePortRange(void* GuestNetworkService, uint16 PortCount, HCN_PORT_RANGE_RESERVATION* PortRangeReservation, HANDLE* PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnReleaseGuestNetworkServicePortReservationHandle(HANDLE PortReservationHandle);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcnEnumerateGuestNetworkPortReservations(uint32* ReturnCount, HCN_PORT_RANGE_ENTRY** PortEntries);
		[Import("computenetwork.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcnFreeGuestNetworkPortReservations(HCN_PORT_RANGE_ENTRY* PortEntries);
		
	}
}
