using System;

// namespace System.Diagnostics.ToolHelp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAX_MODULE_NAME32 = 255;
		public const uint32 HF32_DEFAULT = 1;
		public const uint32 HF32_SHARED = 2;
		
		// --- Enums ---
		
		public enum CREATE_TOOLHELP_SNAPSHOT_FLAGS : uint32
		{
			INHERIT = 2147483648,
			SNAPALL = 15,
			SNAPHEAPLIST = 1,
			SNAPMODULE = 8,
			SNAPMODULE32 = 16,
			SNAPPROCESS = 2,
			SNAPTHREAD = 4,
		}
		public enum HEAPENTRY32_FLAGS : uint32
		{
			FIXED = 1,
			FREE = 2,
			MOVEABLE = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct HEAPLIST32
		{
			public uint dwSize;
			public uint32 th32ProcessID;
			public uint th32HeapID;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct HEAPENTRY32
		{
			public uint dwSize;
			public HANDLE hHandle;
			public uint dwAddress;
			public uint dwBlockSize;
			public HEAPENTRY32_FLAGS dwFlags;
			public uint32 dwLockCount;
			public uint32 dwResvd;
			public uint32 th32ProcessID;
			public uint th32HeapID;
		}
		[CRepr]
		public struct PROCESSENTRY32W
		{
			public uint32 dwSize;
			public uint32 cntUsage;
			public uint32 th32ProcessID;
			public uint th32DefaultHeapID;
			public uint32 th32ModuleID;
			public uint32 cntThreads;
			public uint32 th32ParentProcessID;
			public int32 pcPriClassBase;
			public uint32 dwFlags;
			public char16[260] szExeFile;
		}
		[CRepr]
		public struct PROCESSENTRY32
		{
			public uint32 dwSize;
			public uint32 cntUsage;
			public uint32 th32ProcessID;
			public uint th32DefaultHeapID;
			public uint32 th32ModuleID;
			public uint32 cntThreads;
			public uint32 th32ParentProcessID;
			public int32 pcPriClassBase;
			public uint32 dwFlags;
			public CHAR[260] szExeFile;
		}
		[CRepr]
		public struct THREADENTRY32
		{
			public uint32 dwSize;
			public uint32 cntUsage;
			public uint32 th32ThreadID;
			public uint32 th32OwnerProcessID;
			public int32 tpBasePri;
			public int32 tpDeltaPri;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct MODULEENTRY32W
		{
			public uint32 dwSize;
			public uint32 th32ModuleID;
			public uint32 th32ProcessID;
			public uint32 GlblcntUsage;
			public uint32 ProccntUsage;
			public uint8* modBaseAddr;
			public uint32 modBaseSize;
			public HINSTANCE hModule;
			public char16[256] szModule;
			public char16[260] szExePath;
		}
		[CRepr]
		public struct MODULEENTRY32
		{
			public uint32 dwSize;
			public uint32 th32ModuleID;
			public uint32 th32ProcessID;
			public uint32 GlblcntUsage;
			public uint32 ProccntUsage;
			public uint8* modBaseAddr;
			public uint32 modBaseSize;
			public HINSTANCE hModule;
			public CHAR[256] szModule;
			public CHAR[260] szExePath;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateToolhelp32Snapshot(CREATE_TOOLHELP_SNAPSHOT_FLAGS dwFlags, uint32 th32ProcessID);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Heap32ListFirst(HANDLE hSnapshot, out HEAPLIST32 lphl);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Heap32ListNext(HANDLE hSnapshot, out HEAPLIST32 lphl);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Heap32First(out HEAPENTRY32 lphe, uint32 th32ProcessID, uint th32HeapID);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Heap32Next(out HEAPENTRY32 lphe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Toolhelp32ReadProcessMemory(uint32 th32ProcessID, void* lpBaseAddress, void* lpBuffer, uint cbRead, out uint lpNumberOfBytesRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Process32FirstW(HANDLE hSnapshot, out PROCESSENTRY32W lppe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Process32NextW(HANDLE hSnapshot, out PROCESSENTRY32W lppe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Process32First(HANDLE hSnapshot, out PROCESSENTRY32 lppe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Process32Next(HANDLE hSnapshot, out PROCESSENTRY32 lppe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Thread32First(HANDLE hSnapshot, out THREADENTRY32 lpte);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Thread32Next(HANDLE hSnapshot, out THREADENTRY32 lpte);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Module32FirstW(HANDLE hSnapshot, out MODULEENTRY32W lpme);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Module32NextW(HANDLE hSnapshot, out MODULEENTRY32W lpme);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Module32First(HANDLE hSnapshot, out MODULEENTRY32 lpme);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Module32Next(HANDLE hSnapshot, out MODULEENTRY32 lpme);
	}
}
