using System;

// namespace System.Diagnostics.ProcessSnapshotting
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PSS_PERF_RESOLUTION = 1000000;
		
		// --- Typedefs ---
		
		public typealias HPSS = int;
		public typealias HPSSWALK = int;
		
		// --- Enums ---
		
		public enum PSS_HANDLE_FLAGS : uint32
		{
			NONE = 0,
			HAVE_TYPE = 1,
			HAVE_NAME = 2,
			HAVE_BASIC_INFORMATION = 4,
			HAVE_TYPE_SPECIFIC_INFORMATION = 8,
		}
		public enum PSS_OBJECT_TYPE : int32
		{
			UNKNOWN = 0,
			PROCESS = 1,
			THREAD = 2,
			MUTANT = 3,
			EVENT = 4,
			SECTION = 5,
			SEMAPHORE = 6,
		}
		public enum PSS_CAPTURE_FLAGS : uint32
		{
			CAPTURE_NONE = 0,
			CAPTURE_VA_CLONE = 1,
			CAPTURE_RESERVED_00000002 = 2,
			CAPTURE_HANDLES = 4,
			CAPTURE_HANDLE_NAME_INFORMATION = 8,
			CAPTURE_HANDLE_BASIC_INFORMATION = 16,
			CAPTURE_HANDLE_TYPE_SPECIFIC_INFORMATION = 32,
			CAPTURE_HANDLE_TRACE = 64,
			CAPTURE_THREADS = 128,
			CAPTURE_THREAD_CONTEXT = 256,
			CAPTURE_THREAD_CONTEXT_EXTENDED = 512,
			CAPTURE_RESERVED_00000400 = 1024,
			CAPTURE_VA_SPACE = 2048,
			CAPTURE_VA_SPACE_SECTION_INFORMATION = 4096,
			CAPTURE_IPT_TRACE = 8192,
			CAPTURE_RESERVED_00004000 = 16384,
			CREATE_BREAKAWAY_OPTIONAL = 67108864,
			CREATE_BREAKAWAY = 134217728,
			CREATE_FORCE_BREAKAWAY = 268435456,
			CREATE_USE_VM_ALLOCATIONS = 536870912,
			CREATE_MEASURE_PERFORMANCE = 1073741824,
			CREATE_RELEASE_SECTION = 2147483648,
		}
		public enum PSS_QUERY_INFORMATION_CLASS : int32
		{
			PROCESS_INFORMATION = 0,
			VA_CLONE_INFORMATION = 1,
			AUXILIARY_PAGES_INFORMATION = 2,
			VA_SPACE_INFORMATION = 3,
			HANDLE_INFORMATION = 4,
			THREAD_INFORMATION = 5,
			HANDLE_TRACE_INFORMATION = 6,
			PERFORMANCE_COUNTERS = 7,
		}
		public enum PSS_WALK_INFORMATION_CLASS : int32
		{
			AUXILIARY_PAGES = 0,
			VA_SPACE = 1,
			HANDLES = 2,
			THREADS = 3,
		}
		public enum PSS_DUPLICATE_FLAGS : uint32
		{
			NONE = 0,
			CLOSE_SOURCE = 1,
		}
		public enum PSS_PROCESS_FLAGS : uint32
		{
			NONE = 0,
			PROTECTED = 1,
			WOW64 = 2,
			RESERVED_03 = 4,
			RESERVED_04 = 8,
			FROZEN = 16,
		}
		public enum PSS_THREAD_FLAGS : uint32
		{
			NONE = 0,
			TERMINATED = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct PSS_PROCESS_INFORMATION
		{
			public uint32 ExitStatus;
			public void* PebBaseAddress;
			public uint AffinityMask;
			public int32 BasePriority;
			public uint32 ProcessId;
			public uint32 ParentProcessId;
			public PSS_PROCESS_FLAGS Flags;
			public FILETIME CreateTime;
			public FILETIME ExitTime;
			public FILETIME KernelTime;
			public FILETIME UserTime;
			public uint32 PriorityClass;
			public uint PeakVirtualSize;
			public uint VirtualSize;
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
			public uint32 ExecuteFlags;
			public char16[260] ImageFileName;
		}
		[CRepr]
		public struct PSS_VA_CLONE_INFORMATION
		{
			public HANDLE VaCloneHandle;
		}
		[CRepr]
		public struct PSS_AUXILIARY_PAGES_INFORMATION
		{
			public uint32 AuxPagesCaptured;
		}
		[CRepr]
		public struct PSS_VA_SPACE_INFORMATION
		{
			public uint32 RegionCount;
		}
		[CRepr]
		public struct PSS_HANDLE_INFORMATION
		{
			public uint32 HandlesCaptured;
		}
		[CRepr]
		public struct PSS_THREAD_INFORMATION
		{
			public uint32 ThreadsCaptured;
			public uint32 ContextLength;
		}
		[CRepr]
		public struct PSS_HANDLE_TRACE_INFORMATION
		{
			public HANDLE SectionHandle;
			public uint32 Size;
		}
		[CRepr]
		public struct PSS_PERFORMANCE_COUNTERS
		{
			public uint64 TotalCycleCount;
			public uint64 TotalWallClockPeriod;
			public uint64 VaCloneCycleCount;
			public uint64 VaCloneWallClockPeriod;
			public uint64 VaSpaceCycleCount;
			public uint64 VaSpaceWallClockPeriod;
			public uint64 AuxPagesCycleCount;
			public uint64 AuxPagesWallClockPeriod;
			public uint64 HandlesCycleCount;
			public uint64 HandlesWallClockPeriod;
			public uint64 ThreadsCycleCount;
			public uint64 ThreadsWallClockPeriod;
		}
		[CRepr]
		public struct PSS_AUXILIARY_PAGE_ENTRY
		{
			public void* Address;
			public MEMORY_BASIC_INFORMATION BasicInformation;
			public FILETIME CaptureTime;
			public void* PageContents;
			public uint32 PageSize;
		}
		[CRepr]
		public struct PSS_VA_SPACE_ENTRY
		{
			public void* BaseAddress;
			public void* AllocationBase;
			public uint32 AllocationProtect;
			public uint RegionSize;
			public uint32 State;
			public uint32 Protect;
			public uint32 Type;
			public uint32 TimeDateStamp;
			public uint32 SizeOfImage;
			public void* ImageBase;
			public uint32 CheckSum;
			public uint16 MappedFileNameLength;
			public PWSTR MappedFileName;
		}
		[CRepr]
		public struct PSS_HANDLE_ENTRY
		{
			public HANDLE Handle;
			public PSS_HANDLE_FLAGS Flags;
			public PSS_OBJECT_TYPE ObjectType;
			public FILETIME CaptureTime;
			public uint32 Attributes;
			public uint32 GrantedAccess;
			public uint32 HandleCount;
			public uint32 PointerCount;
			public uint32 PagedPoolCharge;
			public uint32 NonPagedPoolCharge;
			public FILETIME CreationTime;
			public uint16 TypeNameLength;
			public PWSTR TypeName;
			public uint16 ObjectNameLength;
			public PWSTR ObjectName;
			public _TypeSpecificInformation_e__Union TypeSpecificInformation;
			
			[CRepr, Union]
			public struct _TypeSpecificInformation_e__Union
			{
				public _Process_e__Struct Process;
				public _Thread_e__Struct Thread;
				public _Mutant_e__Struct Mutant;
				public _Event_e__Struct Event;
				public _Section_e__Struct Section;
				public _Semaphore_e__Struct Semaphore;
				
				[CRepr]
				public struct _Semaphore_e__Struct
				{
					public int32 CurrentCount;
					public int32 MaximumCount;
				}
				[CRepr]
				public struct _Event_e__Struct
				{
					public BOOL ManualReset;
					public BOOL Signaled;
				}
				[CRepr]
				public struct _Thread_e__Struct
				{
					public uint32 ExitStatus;
					public void* TebBaseAddress;
					public uint32 ProcessId;
					public uint32 ThreadId;
					public uint AffinityMask;
					public int32 Priority;
					public int32 BasePriority;
					public void* Win32StartAddress;
				}
				[CRepr]
				public struct _Section_e__Struct
				{
					public void* BaseAddress;
					public uint32 AllocationAttributes;
					public LARGE_INTEGER MaximumSize;
				}
				[CRepr]
				public struct _Process_e__Struct
				{
					public uint32 ExitStatus;
					public void* PebBaseAddress;
					public uint AffinityMask;
					public int32 BasePriority;
					public uint32 ProcessId;
					public uint32 ParentProcessId;
					public uint32 Flags;
				}
				[CRepr]
				public struct _Mutant_e__Struct
				{
					public int32 CurrentCount;
					public BOOL Abandoned;
					public uint32 OwnerProcessId;
					public uint32 OwnerThreadId;
				}
			}
		}
		[CRepr]
		public struct PSS_THREAD_ENTRY
		{
			public uint32 ExitStatus;
			public void* TebBaseAddress;
			public uint32 ProcessId;
			public uint32 ThreadId;
			public uint AffinityMask;
			public int32 Priority;
			public int32 BasePriority;
			public void* LastSyscallFirstArgument;
			public uint16 LastSyscallNumber;
			public FILETIME CreateTime;
			public FILETIME ExitTime;
			public FILETIME KernelTime;
			public FILETIME UserTime;
			public void* Win32StartAddress;
			public FILETIME CaptureTime;
			public PSS_THREAD_FLAGS Flags;
			public uint16 SuspendCount;
			public uint16 SizeOfContextRecord;
			public CONTEXT* ContextRecord;
		}
		[CRepr]
		public struct PSS_ALLOCATOR
		{
			public void* Context;
			public int AllocRoutine;
			public int FreeRoutine;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssCaptureSnapshot(HANDLE ProcessHandle, PSS_CAPTURE_FLAGS CaptureFlags, uint32 ThreadContextFlags, out HPSS SnapshotHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssFreeSnapshot(HANDLE ProcessHandle, HPSS SnapshotHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssQuerySnapshot(HPSS SnapshotHandle, PSS_QUERY_INFORMATION_CLASS InformationClass, void* Buffer, uint32 BufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkSnapshot(HPSS SnapshotHandle, PSS_WALK_INFORMATION_CLASS InformationClass, HPSSWALK WalkMarkerHandle, void* Buffer, uint32 BufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssDuplicateSnapshot(HANDLE SourceProcessHandle, HPSS SnapshotHandle, HANDLE TargetProcessHandle, out HPSS TargetSnapshotHandle, PSS_DUPLICATE_FLAGS Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkMarkerCreate(PSS_ALLOCATOR* Allocator, out HPSSWALK WalkMarkerHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkMarkerFree(HPSSWALK WalkMarkerHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkMarkerGetPosition(HPSSWALK WalkMarkerHandle, out uint Position);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkMarkerSetPosition(HPSSWALK WalkMarkerHandle, uint Position);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PssWalkMarkerSeekToBeginning(HPSSWALK WalkMarkerHandle);
	}
}
