using System;

// namespace NetworkManagement.WindowsConnectionManager
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WCM_API_VERSION_1_0 = 1;
		public const uint32 WCM_API_VERSION = 1;
		public const uint32 WCM_UNKNOWN_DATAPLAN_STATUS = 4294967295;
		public const uint32 WCM_MAX_PROFILE_NAME = 256;
		public const uint32 NET_INTERFACE_FLAG_NONE = 0;
		public const uint32 NET_INTERFACE_FLAG_CONNECT_IF_NEEDED = 1;
		
		// --- Enums ---
		
		public enum WCM_PROPERTY : int32
		{
			global_property_domain_policy = 0,
			global_property_minimize_policy = 1,
			global_property_roaming_policy = 2,
			global_property_powermanagement_policy = 3,
			intf_property_connection_cost = 4,
			intf_property_dataplan_status = 5,
			intf_property_hotspot_profile = 6,
		}
		public enum WCM_MEDIA_TYPE : int32
		{
			unknown = 0,
			ethernet = 1,
			wlan = 2,
			mbn = 3,
			invalid = 4,
			max = 5,
		}
		public enum WCM_CONNECTION_COST : int32
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
		public enum WCM_CONNECTION_COST_SOURCE : int32
		{
			DEFAULT = 0,
			GP = 1,
			USER = 2,
			OPERATOR = 3,
		}
		
		// --- Function Pointers ---
		
		public function void ONDEMAND_NOTIFICATION_CALLBACK(void* param0);
		
		// --- Structs ---
		
		[CRepr]
		public struct WCM_POLICY_VALUE
		{
			public BOOL fValue;
			public BOOL fIsGroupPolicy;
		}
		[CRepr]
		public struct WCM_PROFILE_INFO
		{
			public char16[256] strProfileName;
			public Guid AdapterGUID;
			public WCM_MEDIA_TYPE Media;
		}
		[CRepr]
		public struct WCM_PROFILE_INFO_LIST
		{
			public uint32 dwNumberOfItems;
			public WCM_PROFILE_INFO[0] ProfileInfo;
		}
		[CRepr]
		public struct WCM_CONNECTION_COST_DATA
		{
			public uint32 ConnectionCost;
			public WCM_CONNECTION_COST_SOURCE CostSource;
		}
		[CRepr]
		public struct WCM_TIME_INTERVAL
		{
			public uint16 wYear;
			public uint16 wMonth;
			public uint16 wDay;
			public uint16 wHour;
			public uint16 wMinute;
			public uint16 wSecond;
			public uint16 wMilliseconds;
		}
		[CRepr]
		public struct WCM_USAGE_DATA
		{
			public uint32 UsageInMegabytes;
			public FILETIME LastSyncTime;
		}
		[CRepr]
		public struct WCM_BILLING_CYCLE_INFO
		{
			public FILETIME StartDate;
			public WCM_TIME_INTERVAL Duration;
			public BOOL Reset;
		}
		[CRepr]
		public struct WCM_DATAPLAN_STATUS
		{
			public WCM_USAGE_DATA UsageData;
			public uint32 DataLimitInMegabytes;
			public uint32 InboundBandwidthInKbps;
			public uint32 OutboundBandwidthInKbps;
			public WCM_BILLING_CYCLE_INFO BillingCycle;
			public uint32 MaxTransferSizeInMegabytes;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NET_INTERFACE_CONTEXT
		{
			public uint32 InterfaceIndex;
			public PWSTR ConfigurationName;
		}
		[CRepr]
		public struct NET_INTERFACE_CONTEXT_TABLE
		{
			public HANDLE InterfaceContextHandle;
			public uint32 NumberOfEntries;
			public NET_INTERFACE_CONTEXT* InterfaceContextArray;
		}
		
		// --- Functions ---
		
		[Import("wcmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WcmQueryProperty(Guid* pInterface, PWSTR strProfileName, WCM_PROPERTY Property, void* pReserved, out uint32 pdwDataSize, uint8** ppData);
		[Import("wcmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WcmSetProperty(Guid* pInterface, PWSTR strProfileName, WCM_PROPERTY Property, void* pReserved, uint32 dwDataSize, uint8* pbData);
		[Import("wcmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WcmGetProfileList(void* pReserved, out WCM_PROFILE_INFO_LIST* ppProfileList);
		[Import("wcmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WcmSetProfileList(ref WCM_PROFILE_INFO_LIST pProfileList, uint32 dwPosition, BOOL fIgnoreUnknownProfiles, void* pReserved);
		[Import("wcmapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WcmFreeMemory(void* pMemory);
		[Import("ondemandconnroutehelper.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OnDemandGetRoutingHint(PWSTR destinationHostName, out uint32 interfaceIndex);
		[Import("ondemandconnroutehelper.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OnDemandRegisterNotification(ONDEMAND_NOTIFICATION_CALLBACK callback, void* callbackContext, out HANDLE registrationHandle);
		[Import("ondemandconnroutehelper.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OnDemandUnRegisterNotification(HANDLE registrationHandle);
		[Import("ondemandconnroutehelper.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetInterfaceContextTableForHostName(PWSTR HostName, PWSTR ProxyName, uint32 Flags, uint8* ConnectionProfileFilterRawData, uint32 ConnectionProfileFilterRawDataSize, out NET_INTERFACE_CONTEXT_TABLE* InterfaceContextTable);
		[Import("ondemandconnroutehelper.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeInterfaceContextTable(ref NET_INTERFACE_CONTEXT_TABLE InterfaceContextTable);
	}
}
