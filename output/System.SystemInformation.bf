using System;

// namespace System.SystemInformation
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NTDDI_WIN2K = 83886080;
		public const uint32 NTDDI_WINXP = 83951616;
		public const uint32 NTDDI_WINXPSP2 = 83952128;
		public const uint32 NTDDI_WS03SP1 = 84017408;
		public const uint32 NTDDI_VISTA = 100663296;
		public const uint32 NTDDI_VISTASP1 = 100663552;
		public const uint32 NTDDI_WIN7 = 100728832;
		public const uint32 NTDDI_WIN8 = 100794368;
		public const uint32 NTDDI_WINBLUE = 100859904;
		public const uint32 NTDDI_WINTHRESHOLD = 167772160;
		public const uint32 SYSTEM_CPU_SET_INFORMATION_PARKED = 1;
		public const uint32 SYSTEM_CPU_SET_INFORMATION_ALLOCATED = 2;
		public const uint32 SYSTEM_CPU_SET_INFORMATION_ALLOCATED_TO_TARGET_PROCESS = 4;
		public const uint32 SYSTEM_CPU_SET_INFORMATION_REALTIME = 8;
		public const uint32 _WIN32_WINNT_NT4 = 1024;
		public const uint32 _WIN32_WINNT_WIN2K = 1280;
		public const uint32 _WIN32_WINNT_WINXP = 1281;
		public const uint32 _WIN32_WINNT_WS03 = 1282;
		public const uint32 _WIN32_WINNT_WIN6 = 1536;
		public const uint32 _WIN32_WINNT_VISTA = 1536;
		public const uint32 _WIN32_WINNT_WS08 = 1536;
		public const uint32 _WIN32_WINNT_LONGHORN = 1536;
		public const uint32 _WIN32_WINNT_WIN7 = 1537;
		public const uint32 _WIN32_WINNT_WIN8 = 1538;
		public const uint32 _WIN32_WINNT_WINBLUE = 1539;
		public const uint32 _WIN32_WINNT_WINTHRESHOLD = 2560;
		public const uint32 _WIN32_WINNT_WIN10 = 2560;
		public const uint32 _WIN32_IE_IE20 = 512;
		public const uint32 _WIN32_IE_IE30 = 768;
		public const uint32 _WIN32_IE_IE302 = 770;
		public const uint32 _WIN32_IE_IE40 = 1024;
		public const uint32 _WIN32_IE_IE401 = 1025;
		public const uint32 _WIN32_IE_IE50 = 1280;
		public const uint32 _WIN32_IE_IE501 = 1281;
		public const uint32 _WIN32_IE_IE55 = 1360;
		public const uint32 _WIN32_IE_IE60 = 1536;
		public const uint32 _WIN32_IE_IE60SP1 = 1537;
		public const uint32 _WIN32_IE_IE60SP2 = 1539;
		public const uint32 _WIN32_IE_IE70 = 1792;
		public const uint32 _WIN32_IE_IE80 = 2048;
		public const uint32 _WIN32_IE_IE90 = 2304;
		public const uint32 _WIN32_IE_IE100 = 2560;
		public const uint32 _WIN32_IE_IE110 = 2560;
		public const uint32 _WIN32_IE_NT4 = 512;
		public const uint32 _WIN32_IE_NT4SP1 = 512;
		public const uint32 _WIN32_IE_NT4SP2 = 512;
		public const uint32 _WIN32_IE_NT4SP3 = 770;
		public const uint32 _WIN32_IE_NT4SP4 = 1025;
		public const uint32 _WIN32_IE_NT4SP5 = 1025;
		public const uint32 _WIN32_IE_NT4SP6 = 1280;
		public const uint32 _WIN32_IE_WIN98 = 1025;
		public const uint32 _WIN32_IE_WIN98SE = 1280;
		public const uint32 _WIN32_IE_WINME = 1360;
		public const uint32 _WIN32_IE_WIN2K = 1281;
		public const uint32 _WIN32_IE_WIN2KSP1 = 1281;
		public const uint32 _WIN32_IE_WIN2KSP2 = 1281;
		public const uint32 _WIN32_IE_WIN2KSP3 = 1281;
		public const uint32 _WIN32_IE_WIN2KSP4 = 1281;
		public const uint32 _WIN32_IE_XP = 1536;
		public const uint32 _WIN32_IE_XPSP1 = 1537;
		public const uint32 _WIN32_IE_XPSP2 = 1539;
		public const uint32 _WIN32_IE_WS03 = 1538;
		public const uint32 _WIN32_IE_WS03SP1 = 1539;
		public const uint32 _WIN32_IE_WIN6 = 1792;
		public const uint32 _WIN32_IE_LONGHORN = 1792;
		public const uint32 _WIN32_IE_WIN7 = 2048;
		public const uint32 _WIN32_IE_WIN8 = 2560;
		public const uint32 _WIN32_IE_WINBLUE = 2560;
		public const uint32 _WIN32_IE_WINTHRESHOLD = 2560;
		public const uint32 _WIN32_IE_WIN10 = 2560;
		public const uint32 NTDDI_WIN4 = 67108864;
		public const uint32 NTDDI_WIN2KSP1 = 83886336;
		public const uint32 NTDDI_WIN2KSP2 = 83886592;
		public const uint32 NTDDI_WIN2KSP3 = 83886848;
		public const uint32 NTDDI_WIN2KSP4 = 83887104;
		public const uint32 NTDDI_WINXPSP1 = 83951872;
		public const uint32 NTDDI_WINXPSP3 = 83952384;
		public const uint32 NTDDI_WINXPSP4 = 83952640;
		public const uint32 NTDDI_WS03 = 84017152;
		public const uint32 NTDDI_WS03SP2 = 84017664;
		public const uint32 NTDDI_WS03SP3 = 84017920;
		public const uint32 NTDDI_WS03SP4 = 84018176;
		public const uint32 NTDDI_WIN6 = 100663296;
		public const uint32 NTDDI_WIN6SP1 = 100663552;
		public const uint32 NTDDI_WIN6SP2 = 100663808;
		public const uint32 NTDDI_WIN6SP3 = 100664064;
		public const uint32 NTDDI_WIN6SP4 = 100664320;
		public const uint32 NTDDI_VISTASP2 = 100663808;
		public const uint32 NTDDI_VISTASP3 = 100664064;
		public const uint32 NTDDI_VISTASP4 = 100664320;
		public const uint32 NTDDI_LONGHORN = 100663296;
		public const uint32 NTDDI_WS08 = 100663552;
		public const uint32 NTDDI_WS08SP2 = 100663808;
		public const uint32 NTDDI_WS08SP3 = 100664064;
		public const uint32 NTDDI_WS08SP4 = 100664320;
		public const uint32 NTDDI_WIN10 = 167772160;
		public const uint32 NTDDI_WIN10_TH2 = 167772161;
		public const uint32 NTDDI_WIN10_RS1 = 167772162;
		public const uint32 NTDDI_WIN10_RS2 = 167772163;
		public const uint32 NTDDI_WIN10_RS3 = 167772164;
		public const uint32 NTDDI_WIN10_RS4 = 167772165;
		public const uint32 NTDDI_WIN10_RS5 = 167772166;
		public const uint32 NTDDI_WIN10_19H1 = 167772167;
		public const uint32 NTDDI_WIN10_VB = 167772168;
		public const uint32 NTDDI_WIN10_MN = 167772169;
		public const uint32 NTDDI_WIN10_FE = 167772170;
		public const uint32 NTDDI_WIN10_CO = 167772171;
		public const uint32 WDK_NTDDI_VERSION = 167772171;
		public const uint32 OSVERSION_MASK = 4294901760;
		public const uint32 SPVERSION_MASK = 65280;
		public const uint32 SUBVERSION_MASK = 255;
		public const uint32 NTDDI_VERSION = 167772171;
		public const uint32 SCEX2_ALT_NETBIOS_NAME = 1;
		
		// --- Typedefs ---
		
		public typealias FIRMWARE_TABLE_ID = uint32;
		
		// --- Enums ---
		
		public enum VER_FLAGS : uint32
		{
			MINORVERSION = 1,
			MAJORVERSION = 2,
			BUILDNUMBER = 4,
			PLATFORMID = 8,
			SERVICEPACKMINOR = 16,
			SERVICEPACKMAJOR = 32,
			SUITENAME = 64,
			PRODUCT_TYPE = 128,
		}
		public enum FIRMWARE_TABLE_PROVIDER : uint32
		{
			ACPI = 1094930505,
			FIRM = 1179210317,
			RSMB = 1381190978,
		}
		public enum USER_CET_ENVIRONMENT : uint32
		{
			WIN32_PROCESS = 0,
			SGX2_ENCLAVE = 2,
			VBS_ENCLAVE = 16,
			VBS_BASIC_ENCLAVE = 17,
		}
		public enum OS_PRODUCT_TYPE : uint32
		{
			BUSINESS = 6,
			BUSINESS_N = 16,
			CLUSTER_SERVER = 18,
			CLUSTER_SERVER_V = 64,
			CORE = 101,
			CORE_COUNTRYSPECIFIC = 99,
			CORE_N = 98,
			CORE_SINGLELANGUAGE = 100,
			DATACENTER_EVALUATION_SERVER = 80,
			DATACENTER_A_SERVER_CORE = 145,
			STANDARD_A_SERVER_CORE = 146,
			DATACENTER_SERVER = 8,
			DATACENTER_SERVER_CORE = 12,
			DATACENTER_SERVER_CORE_V = 39,
			DATACENTER_SERVER_V = 37,
			EDUCATION = 121,
			EDUCATION_N = 122,
			ENTERPRISE = 4,
			ENTERPRISE_E = 70,
			ENTERPRISE_EVALUATION = 72,
			ENTERPRISE_N = 27,
			ENTERPRISE_N_EVALUATION = 84,
			ENTERPRISE_S = 125,
			ENTERPRISE_S_EVALUATION = 129,
			ENTERPRISE_S_N = 126,
			ENTERPRISE_S_N_EVALUATION = 130,
			ENTERPRISE_SERVER = 10,
			ENTERPRISE_SERVER_CORE = 14,
			ENTERPRISE_SERVER_CORE_V = 41,
			ENTERPRISE_SERVER_IA64 = 15,
			ENTERPRISE_SERVER_V = 38,
			ESSENTIALBUSINESS_SERVER_ADDL = 60,
			ESSENTIALBUSINESS_SERVER_ADDLSVC = 62,
			ESSENTIALBUSINESS_SERVER_MGMT = 59,
			ESSENTIALBUSINESS_SERVER_MGMTSVC = 61,
			HOME_BASIC = 2,
			HOME_BASIC_E = 67,
			HOME_BASIC_N = 5,
			HOME_PREMIUM = 3,
			HOME_PREMIUM_E = 68,
			HOME_PREMIUM_N = 26,
			HOME_PREMIUM_SERVER = 34,
			HOME_SERVER = 19,
			HYPERV = 42,
			IOTUAP = 123,
			IOTUAPCOMMERCIAL = 131,
			MEDIUMBUSINESS_SERVER_MANAGEMENT = 30,
			MEDIUMBUSINESS_SERVER_MESSAGING = 32,
			MEDIUMBUSINESS_SERVER_SECURITY = 31,
			MOBILE_CORE = 104,
			MOBILE_ENTERPRISE = 133,
			MULTIPOINT_PREMIUM_SERVER = 77,
			MULTIPOINT_STANDARD_SERVER = 76,
			PRO_WORKSTATION = 161,
			PRO_WORKSTATION_N = 162,
			PROFESSIONAL = 48,
			PROFESSIONAL_E = 69,
			PROFESSIONAL_N = 49,
			PROFESSIONAL_WMC = 103,
			SB_SOLUTION_SERVER = 50,
			SB_SOLUTION_SERVER_EM = 54,
			SERVER_FOR_SB_SOLUTIONS = 51,
			SERVER_FOR_SB_SOLUTIONS_EM = 55,
			SERVER_FOR_SMALLBUSINESS = 24,
			SERVER_FOR_SMALLBUSINESS_V = 35,
			SERVER_FOUNDATION = 33,
			SMALLBUSINESS_SERVER = 9,
			SMALLBUSINESS_SERVER_PREMIUM = 25,
			SMALLBUSINESS_SERVER_PREMIUM_CORE = 63,
			SOLUTION_EMBEDDEDSERVER = 56,
			STANDARD_EVALUATION_SERVER = 79,
			STANDARD_SERVER = 7,
			STANDARD_SERVER_CORE_ = 13,
			STANDARD_SERVER_CORE_V = 40,
			STANDARD_SERVER_V = 36,
			STANDARD_SERVER_SOLUTIONS = 52,
			STANDARD_SERVER_SOLUTIONS_CORE = 53,
			STARTER = 11,
			STARTER_E = 66,
			STARTER_N = 47,
			STORAGE_ENTERPRISE_SERVER = 23,
			STORAGE_ENTERPRISE_SERVER_CORE = 46,
			STORAGE_EXPRESS_SERVER = 20,
			STORAGE_EXPRESS_SERVER_CORE = 43,
			STORAGE_STANDARD_EVALUATION_SERVER = 96,
			STORAGE_STANDARD_SERVER = 21,
			STORAGE_STANDARD_SERVER_CORE = 44,
			STORAGE_WORKGROUP_EVALUATION_SERVER = 95,
			STORAGE_WORKGROUP_SERVER = 22,
			STORAGE_WORKGROUP_SERVER_CORE = 45,
			ULTIMATE = 1,
			ULTIMATE_E = 71,
			ULTIMATE_N = 28,
			UNDEFINED = 0,
			WEB_SERVER = 17,
			WEB_SERVER_CORE = 29,
		}
		[AllowDuplicates]
		public enum DEVICEFAMILYINFOENUM : uint32
		{
			UAP = 0,
			WINDOWS_8X = 1,
			WINDOWS_PHONE_8X = 2,
			DESKTOP = 3,
			MOBILE = 4,
			XBOX = 5,
			TEAM = 6,
			IOT = 7,
			IOT_HEADLESS = 8,
			SERVER = 9,
			HOLOGRAPHIC = 10,
			XBOXSRA = 11,
			XBOXERA = 12,
			SERVER_NANO = 13,
			_8828080 = 14,
			_7067329 = 15,
			WINDOWS_CORE = 16,
			WINDOWS_CORE_HEADLESS = 17,
			MAX = 17,
		}
		[AllowDuplicates]
		public enum DEVICEFAMILYDEVICEFORM : uint32
		{
			UNKNOWN = 0,
			PHONE = 1,
			TABLET = 2,
			DESKTOP = 3,
			NOTEBOOK = 4,
			CONVERTIBLE = 5,
			DETACHABLE = 6,
			ALLINONE = 7,
			STICKPC = 8,
			PUCK = 9,
			LARGESCREEN = 10,
			HMD = 11,
			INDUSTRY_HANDHELD = 12,
			INDUSTRY_TABLET = 13,
			BANKING = 14,
			BUILDING_AUTOMATION = 15,
			DIGITAL_SIGNAGE = 16,
			GAMING = 17,
			HOME_AUTOMATION = 18,
			INDUSTRIAL_AUTOMATION = 19,
			KIOSK = 20,
			MAKER_BOARD = 21,
			MEDICAL = 22,
			NETWORKING = 23,
			POINT_OF_SERVICE = 24,
			PRINTING = 25,
			THIN_CLIENT = 26,
			TOY = 27,
			VENDING = 28,
			INDUSTRY_OTHER = 29,
			XBOX_ONE = 30,
			XBOX_ONE_S = 31,
			XBOX_ONE_X = 32,
			XBOX_ONE_X_DEVKIT = 33,
			XBOX_SERIES_X = 34,
			XBOX_SERIES_X_DEVKIT = 35,
			XBOX_RESERVED_00 = 36,
			XBOX_RESERVED_01 = 37,
			XBOX_RESERVED_02 = 38,
			XBOX_RESERVED_03 = 39,
			XBOX_RESERVED_04 = 40,
			XBOX_RESERVED_05 = 41,
			XBOX_RESERVED_06 = 42,
			XBOX_RESERVED_07 = 43,
			XBOX_RESERVED_08 = 44,
			XBOX_RESERVED_09 = 45,
			MAX = 45,
		}
		public enum COMPUTER_NAME_FORMAT : int32
		{
			NetBIOS = 0,
			DnsHostname = 1,
			DnsDomain = 2,
			DnsFullyQualified = 3,
			PhysicalNetBIOS = 4,
			PhysicalDnsHostname = 5,
			PhysicalDnsDomain = 6,
			PhysicalDnsFullyQualified = 7,
			Max = 8,
		}
		public enum FIRMWARE_TYPE : int32
		{
			Unknown = 0,
			Bios = 1,
			Uefi = 2,
			Max = 3,
		}
		public enum LOGICAL_PROCESSOR_RELATIONSHIP : int32
		{
			ProcessorCore = 0,
			NumaNode = 1,
			Cache = 2,
			ProcessorPackage = 3,
			Group = 4,
			ProcessorDie = 5,
			NumaNodeEx = 6,
			ProcessorModule = 7,
			All = 65535,
		}
		public enum PROCESSOR_CACHE_TYPE : int32
		{
			Unified = 0,
			Instruction = 1,
			Data = 2,
			Trace = 3,
		}
		public enum CPU_SET_INFORMATION_TYPE : int32
		{
			CpuSetInformation = 0,
		}
		public enum OS_DEPLOYEMENT_STATE_VALUES : int32
		{
			STANDARD = 1,
			COMPACT = 2,
		}
		public enum RTL_SYSTEM_GLOBAL_DATA_ID : int32
		{
			Unknown = 0,
			RngSeedVersion = 1,
			InterruptTime = 2,
			TimeZoneBias = 3,
			ImageNumberLow = 4,
			ImageNumberHigh = 5,
			TimeZoneId = 6,
			NtMajorVersion = 7,
			NtMinorVersion = 8,
			SystemExpirationDate = 9,
			KdDebuggerEnabled = 10,
			CyclesPerYield = 11,
			SafeBootMode = 12,
			LastSystemRITEventTickCount = 13,
		}
		public enum DEP_SYSTEM_POLICY_TYPE : int32
		{
			DEPPolicyAlwaysOff = 0,
			DEPPolicyAlwaysOn = 1,
			DEPPolicyOptIn = 2,
			DEPPolicyOptOut = 3,
			DEPTotalPolicyCount = 4,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PGET_SYSTEM_WOW64_DIRECTORY_A(uint8* lpBuffer, uint32 uSize);
		public function uint32 PGET_SYSTEM_WOW64_DIRECTORY_W(char16* lpBuffer, uint32 uSize);
		
		// --- Structs ---
		
		[CRepr]
		public struct GROUP_AFFINITY
		{
			public uint Mask;
			public uint16 Group;
			public uint16[3] Reserved;
		}
		[CRepr]
		public struct SYSTEM_INFO
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 dwPageSize;
			public void* lpMinimumApplicationAddress;
			public void* lpMaximumApplicationAddress;
			public uint dwActiveProcessorMask;
			public uint32 dwNumberOfProcessors;
			public uint32 dwProcessorType;
			public uint32 dwAllocationGranularity;
			public uint16 wProcessorLevel;
			public uint16 wProcessorRevision;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwOemId;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public PROCESSOR_ARCHITECTURE wProcessorArchitecture;
					public uint16 wReserved;
				}
			}
		}
		[CRepr]
		public struct MEMORYSTATUSEX
		{
			public uint32 dwLength;
			public uint32 dwMemoryLoad;
			public uint64 ullTotalPhys;
			public uint64 ullAvailPhys;
			public uint64 ullTotalPageFile;
			public uint64 ullAvailPageFile;
			public uint64 ullTotalVirtual;
			public uint64 ullAvailVirtual;
			public uint64 ullAvailExtendedVirtual;
		}
		[CRepr]
		public struct CACHE_DESCRIPTOR
		{
			public uint8 Level;
			public uint8 Associativity;
			public uint16 LineSize;
			public uint32 Size;
			public PROCESSOR_CACHE_TYPE Type;
		}
		[CRepr]
		public struct SYSTEM_LOGICAL_PROCESSOR_INFORMATION
		{
			public uint ProcessorMask;
			public LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _ProcessorCore_e__Struct ProcessorCore;
				public _NumaNode_e__Struct NumaNode;
				public CACHE_DESCRIPTOR Cache;
				public uint64[2] Reserved;
				
				[CRepr]
				public struct _ProcessorCore_e__Struct
				{
					public uint8 Flags;
				}
				[CRepr]
				public struct _NumaNode_e__Struct
				{
					public uint32 NodeNumber;
				}
			}
		}
		[CRepr]
		public struct PROCESSOR_RELATIONSHIP
		{
			public uint8 Flags;
			public uint8 EfficiencyClass;
			public uint8[20] Reserved;
			public uint16 GroupCount;
			public GROUP_AFFINITY[0] GroupMask;
		}
		[CRepr]
		public struct NUMA_NODE_RELATIONSHIP
		{
			public uint32 NodeNumber;
			public uint8[18] Reserved;
			public uint16 GroupCount;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GROUP_AFFINITY GroupMask;
				public GROUP_AFFINITY[0] GroupMasks;
			}
		}
		[CRepr]
		public struct CACHE_RELATIONSHIP
		{
			public uint8 Level;
			public uint8 Associativity;
			public uint16 LineSize;
			public uint32 CacheSize;
			public PROCESSOR_CACHE_TYPE Type;
			public uint8[18] Reserved;
			public uint16 GroupCount;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GROUP_AFFINITY GroupMask;
				public GROUP_AFFINITY[0] GroupMasks;
			}
		}
		[CRepr]
		public struct PROCESSOR_GROUP_INFO
		{
			public uint8 MaximumProcessorCount;
			public uint8 ActiveProcessorCount;
			public uint8[38] Reserved;
			public uint ActiveProcessorMask;
		}
		[CRepr]
		public struct GROUP_RELATIONSHIP
		{
			public uint16 MaximumGroupCount;
			public uint16 ActiveGroupCount;
			public uint8[20] Reserved;
			public PROCESSOR_GROUP_INFO[0] GroupInfo;
		}
		[CRepr]
		public struct SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX
		{
			public LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
			public uint32 Size;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PROCESSOR_RELATIONSHIP Processor;
				public NUMA_NODE_RELATIONSHIP NumaNode;
				public CACHE_RELATIONSHIP Cache;
				public GROUP_RELATIONSHIP Group;
			}
		}
		[CRepr]
		public struct SYSTEM_CPU_SET_INFORMATION
		{
			public uint32 Size;
			public CPU_SET_INFORMATION_TYPE Type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _CpuSet_e__Struct CpuSet;
				
				[CRepr]
				public struct _CpuSet_e__Struct
				{
					public uint32 Id;
					public uint16 Group;
					public uint8 LogicalProcessorIndex;
					public uint8 CoreIndex;
					public uint8 LastLevelCacheIndex;
					public uint8 NumaNodeIndex;
					public uint8 EfficiencyClass;
					public _Anonymous1_e__Union Anonymous1;
					public _Anonymous2_e__Union Anonymous2;
					public uint64 AllocationTag;
					
					[CRepr, Union]
					public struct _Anonymous1_e__Union
					{
						public uint8 AllFlags;
						public _Anonymous_e__Struct Anonymous;
						
						[CRepr]
						public struct _Anonymous_e__Struct
						{
							public uint8 _bitfield;
						}
					}
					[CRepr, Union]
					public struct _Anonymous2_e__Union
					{
						public uint32 Reserved;
						public uint8 SchedulingClass;
					}
				}
			}
		}
		[CRepr]
		public struct SYSTEM_POOL_ZEROING_INFORMATION
		{
			public BOOLEAN PoolZeroingSupportPresent;
		}
		[CRepr]
		public struct SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION
		{
			public uint64 CycleTime;
		}
		[CRepr]
		public struct SYSTEM_SUPPORTED_PROCESSOR_ARCHITECTURES_INFORMATION
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct OSVERSIONINFOA
		{
			public uint32 dwOSVersionInfoSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint32 dwBuildNumber;
			public uint32 dwPlatformId;
			public CHAR[128] szCSDVersion;
		}
		[CRepr]
		public struct OSVERSIONINFOW
		{
			public uint32 dwOSVersionInfoSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint32 dwBuildNumber;
			public uint32 dwPlatformId;
			public char16[128] szCSDVersion;
		}
		[CRepr]
		public struct OSVERSIONINFOEXA
		{
			public uint32 dwOSVersionInfoSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint32 dwBuildNumber;
			public uint32 dwPlatformId;
			public CHAR[128] szCSDVersion;
			public uint16 wServicePackMajor;
			public uint16 wServicePackMinor;
			public uint16 wSuiteMask;
			public uint8 wProductType;
			public uint8 wReserved;
		}
		[CRepr]
		public struct OSVERSIONINFOEXW
		{
			public uint32 dwOSVersionInfoSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint32 dwBuildNumber;
			public uint32 dwPlatformId;
			public char16[128] szCSDVersion;
			public uint16 wServicePackMajor;
			public uint16 wServicePackMinor;
			public uint16 wSuiteMask;
			public uint8 wProductType;
			public uint8 wReserved;
		}
		[CRepr]
		public struct MEMORYSTATUS
		{
			public uint32 dwLength;
			public uint32 dwMemoryLoad;
			public uint dwTotalPhys;
			public uint dwAvailPhys;
			public uint dwTotalPageFile;
			public uint dwAvailPageFile;
			public uint dwTotalVirtual;
			public uint dwAvailVirtual;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GlobalMemoryStatusEx(out MEMORYSTATUSEX lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetSystemInfo(out SYSTEM_INFO lpSystemInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetSystemTime(out SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetSystemTimeAsFileTime(out FILETIME lpSystemTimeAsFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetLocalTime(out SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsUserCetAvailableInEnvironment(USER_CET_ENVIRONMENT UserCetEnvironment);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSystemLeapSecondInformation(out BOOL Enabled, out uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetVersion();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetLocalTime(in SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTickCount();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 GetTickCount64();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSystemTimeAdjustment(out uint32 lpTimeAdjustment, out uint32 lpTimeIncrement, out BOOL lpTimeAdjustmentDisabled);
		[Import("api-ms-win-core-sysinfo-l1-2-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSystemTimeAdjustmentPrecise(out uint64 lpTimeAdjustment, out uint64 lpTimeIncrement, out BOOL lpTimeAdjustmentDisabled);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemDirectoryA(uint8* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemDirectoryW(char16* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetWindowsDirectoryA(uint8* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetWindowsDirectoryW(char16* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWindowsDirectoryA(uint8* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWindowsDirectoryW(char16* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetComputerNameExA(COMPUTER_NAME_FORMAT NameType, uint8* lpBuffer, out uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetComputerNameExW(COMPUTER_NAME_FORMAT NameType, char16* lpBuffer, out uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetComputerNameExW(COMPUTER_NAME_FORMAT NameType, PWSTR lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetSystemTime(in SYSTEMTIME lpSystemTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVersionExA(out OSVERSIONINFOA lpVersionInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVersionExW(out OSVERSIONINFOW lpVersionInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogicalProcessorInformation(SYSTEM_LOGICAL_PROCESSOR_INFORMATION* Buffer, out uint32 ReturnedLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogicalProcessorInformationEx(LOGICAL_PROCESSOR_RELATIONSHIP RelationshipType, SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX* Buffer, out uint32 ReturnedLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetNativeSystemInfo(out SYSTEM_INFO lpSystemInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetSystemTimePreciseAsFileTime(out FILETIME lpSystemTimeAsFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetProductInfo(uint32 dwOSMajorVersion, uint32 dwOSMinorVersion, uint32 dwSpMajorVersion, uint32 dwSpMinorVersion, out OS_PRODUCT_TYPE pdwReturnedProductType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 VerSetConditionMask(uint64 ConditionMask, VER_FLAGS TypeMask, uint8 Condition);
		[Import("api-ms-win-core-sysinfo-l1-2-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOsSafeBootMode(out uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumSystemFirmwareTables(FIRMWARE_TABLE_PROVIDER FirmwareTableProviderSignature, FIRMWARE_TABLE_ID* pFirmwareTableEnumBuffer, uint32 BufferSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemFirmwareTable(FIRMWARE_TABLE_PROVIDER FirmwareTableProviderSignature, FIRMWARE_TABLE_ID FirmwareTableID, void* pFirmwareTableBuffer, uint32 BufferSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DnsHostnameToComputerNameExW(PWSTR Hostname, char16* ComputerName, out uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPhysicallyInstalledSystemMemory(out uint64 TotalMemoryInKilobytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetComputerNameEx2W(COMPUTER_NAME_FORMAT NameType, uint32 Flags, PWSTR lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetSystemTimeAdjustment(uint32 dwTimeAdjustment, BOOL bTimeAdjustmentDisabled);
		[Import("api-ms-win-core-sysinfo-l1-2-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetSystemTimeAdjustmentPrecise(uint64 dwTimeAdjustment, BOOL bTimeAdjustmentDisabled);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetProcessorSystemCycleTime(uint16 Group, SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION* Buffer, out uint32 ReturnedLength);
		[Import("api-ms-win-core-sysinfo-l1-2-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOsManufacturingMode(out BOOL pbEnabled);
		[Import("api-ms-win-core-sysinfo-l1-2-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetIntegratedDisplaySize(out double sizeInInches);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetComputerNameA(PSTR lpComputerName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetComputerNameW(PWSTR lpComputerName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetComputerNameExA(COMPUTER_NAME_FORMAT NameType, PSTR lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSystemCpuSetInformation(SYSTEM_CPU_SET_INFORMATION* Information, uint32 BufferLength, out uint32 ReturnedLength, HANDLE Process, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWow64DirectoryA(uint8* lpBuffer, uint32 uSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWow64DirectoryW(char16* lpBuffer, uint32 uSize);
		[Import("api-ms-win-core-wow64-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWow64Directory2A(uint8* lpBuffer, uint32 uSize, uint16 ImageFileMachineType);
		[Import("api-ms-win-core-wow64-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemWow64Directory2W(char16* lpBuffer, uint32 uSize, uint16 ImageFileMachineType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsWow64GuestMachineSupported(uint16 WowGuestMachine, out BOOL MachineIsSupported);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN RtlGetProductInfo(uint32 OSMajorVersion, uint32 OSMinorVersion, uint32 SpMajorVersion, uint32 SpMinorVersion, out uint32 ReturnedProductType);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern OS_DEPLOYEMENT_STATE_VALUES RtlOsDeploymentState(uint32 Flags);
		[Import("ntdllk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlGetSystemGlobalData(RTL_SYSTEM_GLOBAL_DATA_ID DataId, void* Buffer, uint32 Size);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlGetDeviceFamilyInfoEnum(uint64* pullUAPInfo, DEVICEFAMILYINFOENUM* pulDeviceFamily, DEVICEFAMILYDEVICEFORM* pulDeviceForm);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlConvertDeviceFamilyInfoToString(out uint32 pulDeviceFamilyBufferSize, out uint32 pulDeviceFormBufferSize, PWSTR DeviceFamily, PWSTR DeviceForm);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlSwitchedVVI(ref OSVERSIONINFOEXW VersionInfo, uint32 TypeMask, uint64 ConditionMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GlobalMemoryStatus(out MEMORYSTATUS lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DEP_SYSTEM_POLICY_TYPE GetSystemDEPPolicy();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFirmwareType(out FIRMWARE_TYPE FirmwareType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VerifyVersionInfoA(out OSVERSIONINFOEXA lpVersionInformation, VER_FLAGS dwTypeMask, uint64 dwlConditionMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VerifyVersionInfoW(out OSVERSIONINFOEXW lpVersionInformation, VER_FLAGS dwTypeMask, uint64 dwlConditionMask);
	}
}
