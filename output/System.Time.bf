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
		public static extern BOOL SystemTimeToTzSpecificLocalTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, SYSTEMTIME* lpUniversalTime, SYSTEMTIME* lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TzSpecificLocalTimeToSystemTime(TIME_ZONE_INFORMATION* lpTimeZoneInformation, SYSTEMTIME* lpLocalTime, SYSTEMTIME* lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FileTimeToSystemTime(FILETIME* lpFileTime, SYSTEMTIME* lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemTimeToFileTime(SYSTEMTIME* lpSystemTime, FILETIME* lpFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTimeZoneInformation(TIME_ZONE_INFORMATION* lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetTimeZoneInformation(TIME_ZONE_INFORMATION* lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDynamicTimeZoneInformation(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformation(DYNAMIC_TIME_ZONE_INFORMATION* pTimeZoneInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTimeZoneInformationForYear(uint16 wYear, DYNAMIC_TIME_ZONE_INFORMATION* pdtzi, TIME_ZONE_INFORMATION* ptzi);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumDynamicTimeZoneInformation(uint32 dwIndex, DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDynamicTimeZoneInformationEffectiveYears(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, uint32* FirstYear, uint32* LastYear);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemTimeToTzSpecificLocalTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, SYSTEMTIME* lpUniversalTime, SYSTEMTIME* lpLocalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TzSpecificLocalTimeToSystemTimeEx(DYNAMIC_TIME_ZONE_INFORMATION* lpTimeZoneInformation, SYSTEMTIME* lpLocalTime, SYSTEMTIME* lpUniversalTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LocalFileTimeToLocalSystemTime(TIME_ZONE_INFORMATION* timeZoneInformation, FILETIME* localFileTime, SYSTEMTIME* localSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LocalSystemTimeToLocalFileTime(TIME_ZONE_INFORMATION* timeZoneInformation, SYSTEMTIME* localSystemTime, FILETIME* localFileTime);
		
	}
}
