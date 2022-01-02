using System;

// namespace System.Time
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 TSF_Hardware = 1;
		public const uint32 TSF_Authenticated = 2;
		public const uint32 TSF_IPv6 = 4;
		public const uint32 TSF_SignatureAuthenticated = 8;
		
		// --- Structs ---
		
		[CRepr]
		public struct TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
		}
		[CRepr]
		public struct DYNAMIC_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
			public char16[128] TimeZoneKeyName;
			public BOOLEAN DynamicDaylightTimeDisabled;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemTimeToTzSpecificLocalTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpUniversalTime, out SYSTEMTIME lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TzSpecificLocalTimeToSystemTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpLocalTime, out SYSTEMTIME lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FileTimeToSystemTime(in FILETIME lpFileTime, out SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemTimeToFileTime(in SYSTEMTIME lpSystemTime, out FILETIME lpFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTimeZoneInformation(out TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetTimeZoneInformation(in TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDynamicTimeZoneInformation(in DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformation(out DYNAMIC_TIME_ZONE_INFORMATION pTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTimeZoneInformationForYear(uint16 wYear, DYNAMIC_TIME_ZONE_INFORMATION* pdtzi, out TIME_ZONE_INFORMATION ptzi);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumDynamicTimeZoneInformation(uint32 dwIndex, out DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformationEffectiveYears(in DYNAMIC_TIME_ZONE_INFORMATION lpTimeZoneInformation, out uint32 FirstYear, out uint32 LastYear);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemTimeToTzSpecificLocalTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpUniversalTime, out SYSTEMTIME lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TzSpecificLocalTimeToSystemTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, in SYSTEMTIME lpLocalTime, out SYSTEMTIME lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LocalFileTimeToLocalSystemTime(TIME_ZONE_INFORMATION* timeZoneInformation, in FILETIME localFileTime, out SYSTEMTIME localSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LocalSystemTimeToLocalFileTime(TIME_ZONE_INFORMATION* timeZoneInformation, in SYSTEMTIME localSystemTime, out FILETIME localFileTime);
	}
}
