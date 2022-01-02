using System;

// namespace NetworkManagement.WindowsNetworkVirtualization
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WNV_API_MAJOR_VERSION_1 = 1;
		public const uint32 WNV_API_MINOR_VERSION_0 = 0;
		
		// --- Enums ---
		
		public enum WNV_NOTIFICATION_TYPE : int32
		{
			PolicyMismatchType = 0,
			RedirectType = 1,
			ObjectChangeType = 2,
			NotificationTypeMax = 3,
		}
		public enum WNV_OBJECT_TYPE : int32
		{
			ProviderAddressType = 0,
			CustomerAddressType = 1,
			ObjectTypeMax = 2,
		}
		public enum WNV_CA_NOTIFICATION_TYPE : int32
		{
			Added = 0,
			Deleted = 1,
			Moved = 2,
			Max = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WNV_OBJECT_HEADER
		{
			public uint8 MajorVersion;
			public uint8 MinorVersion;
			public uint32 Size;
		}
		[CRepr]
		public struct WNV_NOTIFICATION_PARAM
		{
			public WNV_OBJECT_HEADER Header;
			public WNV_NOTIFICATION_TYPE NotificationType;
			public uint32 PendingNotifications;
			public uint8* Buffer;
		}
		[CRepr]
		public struct WNV_IP_ADDRESS
		{
			public _IP_e__Union IP;
			
			[CRepr, Union]
			public struct _IP_e__Union
			{
				public IN_ADDR v4;
				public IN6_ADDR v6;
				public uint8[16] Addr;
			}
		}
		[CRepr]
		public struct WNV_POLICY_MISMATCH_PARAM
		{
			public uint16 CAFamily;
			public uint16 PAFamily;
			public uint32 VirtualSubnetId;
			public WNV_IP_ADDRESS CA;
			public WNV_IP_ADDRESS PA;
		}
		[CRepr]
		public struct WNV_PROVIDER_ADDRESS_CHANGE_PARAM
		{
			public uint16 PAFamily;
			public WNV_IP_ADDRESS PA;
			public NL_DAD_STATE AddressState;
		}
		[CRepr]
		public struct WNV_CUSTOMER_ADDRESS_CHANGE_PARAM
		{
			public DL_EUI48 MACAddress;
			public uint16 CAFamily;
			public WNV_IP_ADDRESS CA;
			public uint32 VirtualSubnetId;
			public uint16 PAFamily;
			public WNV_IP_ADDRESS PA;
			public WNV_CA_NOTIFICATION_TYPE NotificationReason;
		}
		[CRepr]
		public struct WNV_OBJECT_CHANGE_PARAM
		{
			public WNV_OBJECT_TYPE ObjectType;
			public _ObjectParam_e__Union ObjectParam;
			
			[CRepr, Union]
			public struct _ObjectParam_e__Union
			{
				public WNV_PROVIDER_ADDRESS_CHANGE_PARAM ProviderAddressChange;
				public WNV_CUSTOMER_ADDRESS_CHANGE_PARAM CustomerAddressChange;
			}
		}
		[CRepr]
		public struct WNV_REDIRECT_PARAM
		{
			public uint16 CAFamily;
			public uint16 PAFamily;
			public uint16 NewPAFamily;
			public uint32 VirtualSubnetId;
			public WNV_IP_ADDRESS CA;
			public WNV_IP_ADDRESS PA;
			public WNV_IP_ADDRESS NewPA;
		}
		
		// --- Functions ---
		
		[Import("wnvapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WnvOpen();
		[Import("wnvapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WnvRequestNotification(HANDLE WnvHandle, out WNV_NOTIFICATION_PARAM NotificationParam, out OVERLAPPED Overlapped, out uint32 BytesTransferred);
	}
}
