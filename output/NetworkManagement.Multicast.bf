using System;

// namespace NetworkManagement.Multicast
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MCAST_CLIENT_ID_LEN = 17;
		public const int32 MCAST_API_CURRENT_VERSION = 1;
		public const int32 MCAST_API_VERSION_0 = 0;
		public const int32 MCAST_API_VERSION_1 = 1;
		
		// --- Structs ---
		
		[CRepr, Union]
		public struct IPNG_ADDRESS
		{
			public uint32 IpAddrV4;
			public uint8[16] IpAddrV6;
		}
		[CRepr]
		public struct MCAST_CLIENT_UID
		{
			public uint8* ClientUID;
			public uint32 ClientUIDLength;
		}
		[CRepr]
		public struct MCAST_SCOPE_CTX
		{
			public IPNG_ADDRESS ScopeID;
			public IPNG_ADDRESS Interface;
			public IPNG_ADDRESS ServerID;
		}
		[CRepr]
		public struct MCAST_SCOPE_ENTRY
		{
			public MCAST_SCOPE_CTX ScopeCtx;
			public IPNG_ADDRESS LastAddr;
			public uint32 TTL;
			public UNICODE_STRING ScopeDesc;
		}
		[CRepr]
		public struct MCAST_LEASE_REQUEST
		{
			public int32 LeaseStartTime;
			public int32 MaxLeaseStartTime;
			public uint32 LeaseDuration;
			public uint32 MinLeaseDuration;
			public IPNG_ADDRESS ServerAddress;
			public uint16 MinAddrCount;
			public uint16 AddrCount;
			public uint8* pAddrBuf;
		}
		[CRepr]
		public struct MCAST_LEASE_RESPONSE
		{
			public int32 LeaseStartTime;
			public int32 LeaseEndTime;
			public IPNG_ADDRESS ServerAddress;
			public uint16 AddrCount;
			public uint8* pAddrBuf;
		}
		
		// --- Functions ---
		
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastApiStartup(out uint32 Version);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void McastApiCleanup();
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastGenUID(out MCAST_CLIENT_UID pRequestID);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastEnumerateScopes(uint16 AddrFamily, BOOL ReQuery, out MCAST_SCOPE_ENTRY pScopeList, out uint32 pScopeLen, out uint32 pScopeCount);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastRequestAddress(uint16 AddrFamily, out MCAST_CLIENT_UID pRequestID, out MCAST_SCOPE_CTX pScopeCtx, out MCAST_LEASE_REQUEST pAddrRequest, out MCAST_LEASE_RESPONSE pAddrResponse);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastRenewAddress(uint16 AddrFamily, out MCAST_CLIENT_UID pRequestID, out MCAST_LEASE_REQUEST pRenewRequest, out MCAST_LEASE_RESPONSE pRenewResponse);
		[Import("dhcpcsvc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 McastReleaseAddress(uint16 AddrFamily, out MCAST_CLIENT_UID pRequestID, out MCAST_LEASE_REQUEST pReleaseRequest);
	}
}
