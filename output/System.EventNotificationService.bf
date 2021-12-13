using System;

// namespace System.EventNotificationService
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NETWORK_ALIVE_LAN = 1;
		public const uint32 NETWORK_ALIVE_WAN = 2;
		public const uint32 NETWORK_ALIVE_AOL = 4;
		public const uint32 NETWORK_ALIVE_INTERNET = 8;
		public const uint32 CONNECTION_AOL = 4;
		public const Guid SENSGUID_PUBLISHER = .(0x5fee1bd6, 0x5b9b, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_SUBSCRIBER_LCE = .(0xd3938ab0, 0x5b9d, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_SUBSCRIBER_WININET = .(0xd3938ab5, 0x5b9d, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_NETWORK = .(0xd5978620, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_LOGON = .(0xd5978630, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_ONNOW = .(0xd5978640, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		public const Guid SENSGUID_EVENTCLASS_LOGON2 = .(0xd5978650, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SENS_CONNECTION_TYPE : uint32
		{
			CONNECTION_LAN = 0,
			CONNECTION_WAN = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct QOCINFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwInSpeed;
			public uint32 dwOutSpeed;
		}
		[CRepr]
		public struct SENS_QOCINFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwOutSpeed;
			public uint32 dwInSpeed;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SENS = .(0xd597cafe, 0x5b9f, 0x11d1, 0x8d, 0xd2, 0x00, 0xaa, 0x00, 0x4a, 0xbd, 0x5e);
		
		// --- COM Interfaces ---
		
		public struct ISensNetwork {}
		public struct ISensOnNow {}
		public struct ISensLogon {}
		public struct ISensLogon2 {}
		
		// --- Functions ---
		
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsDestinationReachableA(PSTR lpszDestination, QOCINFO* lpQOCInfo);
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsDestinationReachableW(PWSTR lpszDestination, QOCINFO* lpQOCInfo);
		[Import("sensapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsNetworkAlive(uint32* lpdwFlags);
		
	}
}
