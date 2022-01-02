using System;

// namespace System.ProcessStatus
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PSAPI_VERSION = 2;
		
		// --- Enums ---
		
		public enum ENUM_PROCESS_MODULES_EX_FLAGS : uint32
		{
			ALL = 3,
			DEFAULT = 0,
			_32BIT = 1,
			_64BIT = 2,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PENUM_PAGE_FILE_CALLBACKW(void* pContext, out ENUM_PAGE_FILE_INFORMATION pPageFileInfo, PWSTR lpFilename);
		public function BOOL PENUM_PAGE_FILE_CALLBACKA(void* pContext, out ENUM_PAGE_FILE_INFORMATION pPageFileInfo, PSTR lpFilename);
		
		// --- Structs ---
		
		[CRepr]
		public struct MODULEINFO
		{
			public void* lpBaseOfDll;
			public uint32 SizeOfImage;
			public void* EntryPoint;
		}
		[CRepr]
		public struct PSAPI_WS_WATCH_INFORMATION
		{
			public void* FaultingPc;
			public void* FaultingVa;
		}
		[CRepr]
		public struct PSAPI_WS_WATCH_INFORMATION_EX
		{
			public PSAPI_WS_WATCH_INFORMATION BasicInfo;
			public uint FaultingThreadId;
			public uint Flags;
		}
		[CRepr, Union]
		public struct PSAPI_WORKING_SET_BLOCK
		{
			public uint Flags;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint _bitfield;
			}
		}
		[CRepr]
		public struct PSAPI_WORKING_SET_INFORMATION
		{
			public uint NumberOfEntries;
			public PSAPI_WORKING_SET_BLOCK[0] WorkingSetInfo;
		}
		[CRepr, Union]
		public struct PSAPI_WORKING_SET_EX_BLOCK
		{
			public uint Flags;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public _Invalid_e__Struct Invalid;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint _bitfield;
				}
				[CRepr]
				public struct _Invalid_e__Struct
				{
					public uint _bitfield;
				}
			}
		}
		[CRepr]
		public struct PSAPI_WORKING_SET_EX_INFORMATION
		{
			public void* VirtualAddress;
			public PSAPI_WORKING_SET_EX_BLOCK VirtualAttributes;
		}
		[CRepr]
		public struct PROCESS_MEMORY_COUNTERS
		{
			public uint32 cb;
			public uint32 PageFaultCount;
			public uint PeakWorkingSetSize;
			public uint WorkingSetSize;
			public uint QuotaPeakPagedPoolUsage;
			public uint QuotaPagedPoolUsage;
			public uint QuotaPeakNonPagedPoolUsage;
			public uint QuotaNonPagedPoolUsage;
			public uint PagefileUsage;
			public uint PeakPagefileUsage;
		}
		[CRepr]
		public struct PROCESS_MEMORY_COUNTERS_EX
		{
			public uint32 cb;
			public uint32 PageFaultCount;
			public uint PeakWorkingSetSize;
			public uint WorkingSetSize;
			public uint QuotaPeakPagedPoolUsage;
			public uint QuotaPagedPoolUsage;
			public uint QuotaPeakNonPagedPoolUsage;
			public uint QuotaNonPagedPoolUsage;
			public uint PagefileUsage;
			public uint PeakPagefileUsage;
			public uint PrivateUsage;
		}
		[CRepr]
		public struct PERFORMANCE_INFORMATION
		{
			public uint32 cb;
			public uint CommitTotal;
			public uint CommitLimit;
			public uint CommitPeak;
			public uint PhysicalTotal;
			public uint PhysicalAvailable;
			public uint SystemCache;
			public uint KernelTotal;
			public uint KernelPaged;
			public uint KernelNonpaged;
			public uint PageSize;
			public uint32 HandleCount;
			public uint32 ProcessCount;
			public uint32 ThreadCount;
		}
		[CRepr]
		public struct ENUM_PAGE_FILE_INFORMATION
		{
			public uint32 cb;
			public uint32 Reserved;
			public uint TotalSize;
			public uint TotalInUse;
			public uint PeakUsage;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumProcesses(out uint32 lpidProcess, uint32 cb, out uint32 lpcbNeeded);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumProcessModules(HANDLE hProcess, out HINSTANCE lphModule, uint32 cb, out uint32 lpcbNeeded);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumProcessModulesEx(HANDLE hProcess, out HINSTANCE lphModule, uint32 cb, out uint32 lpcbNeeded, ENUM_PROCESS_MODULES_EX_FLAGS dwFilterFlag);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetModuleBaseNameA(HANDLE hProcess, HINSTANCE hModule, uint8* lpBaseName, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetModuleBaseNameW(HANDLE hProcess, HINSTANCE hModule, char16* lpBaseName, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetModuleFileNameExA(HANDLE hProcess, HINSTANCE hModule, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetModuleFileNameExW(HANDLE hProcess, HINSTANCE hModule, char16* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32GetModuleInformation(HANDLE hProcess, HINSTANCE hModule, out MODULEINFO lpmodinfo, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EmptyWorkingSet(HANDLE hProcess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32InitializeProcessForWsWatch(HANDLE hProcess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32GetWsChanges(HANDLE hProcess, out PSAPI_WS_WATCH_INFORMATION lpWatchInfo, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32GetWsChangesEx(HANDLE hProcess, out PSAPI_WS_WATCH_INFORMATION_EX lpWatchInfoEx, out uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetMappedFileNameW(HANDLE hProcess, void* lpv, char16* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetMappedFileNameA(HANDLE hProcess, void* lpv, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumDeviceDrivers(void** lpImageBase, uint32 cb, out uint32 lpcbNeeded);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetDeviceDriverBaseNameA(void* ImageBase, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetDeviceDriverBaseNameW(void* ImageBase, char16* lpBaseName, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetDeviceDriverFileNameA(void* ImageBase, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetDeviceDriverFileNameW(void* ImageBase, char16* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32QueryWorkingSet(HANDLE hProcess, void* pv, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32QueryWorkingSetEx(HANDLE hProcess, void* pv, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32GetProcessMemoryInfo(HANDLE Process, out PROCESS_MEMORY_COUNTERS ppsmemCounters, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32GetPerformanceInfo(out PERFORMANCE_INFORMATION pPerformanceInformation, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumPageFilesW(PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine, void* pContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL K32EnumPageFilesA(PENUM_PAGE_FILE_CALLBACKA pCallBackRoutine, void* pContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetProcessImageFileNameA(HANDLE hProcess, uint8* lpImageFileName, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 K32GetProcessImageFileNameW(HANDLE hProcess, char16* lpImageFileName, uint32 nSize);
	}
}
