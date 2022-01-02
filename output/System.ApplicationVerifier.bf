using System;

// namespace System.ApplicationVerifier
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 AVRF_MAX_TRACES = 32;
		
		// --- Enums ---
		
		public enum VERIFIER_ENUM_RESOURCE_FLAGS : uint32
		{
			DONT_RESOLVE_TRACES = 2,
			SUSPEND = 1,
		}
		public enum eUserAllocationState : int32
		{
			Unknown = 0,
			Busy = 1,
			Free = 2,
		}
		public enum eHeapAllocationState : int32
		{
			FullPageHeap = 1073741824,
			Metadata = -2147483648,
			StateMask = -65536,
		}
		public enum eHeapEnumerationLevel : int32
		{
			Everything = 0,
			Stop = -1,
		}
		public enum eHANDLE_TRACE_OPERATIONS : int32
		{
			Unused = 0,
			OPEN = 1,
			CLOSE = 2,
			BADREF = 3,
		}
		public enum eAvrfResourceTypes : int32
		{
			HeapAllocation = 0,
			HandleTrace = 1,
			Max = 2,
		}
		
		// --- Function Pointers ---
		
		public function uint32 AVRF_RESOURCE_ENUMERATE_CALLBACK(void* ResourceDescription, void* EnumerationContext, out uint32 EnumerationLevel);
		public function uint32 AVRF_HEAPALLOCATION_ENUMERATE_CALLBACK(out AVRF_HEAP_ALLOCATION HeapAllocation, void* EnumerationContext, out uint32 EnumerationLevel);
		public function uint32 AVRF_HANDLEOPERATION_ENUMERATE_CALLBACK(out AVRF_HANDLE_OPERATION HandleOperation, void* EnumerationContext, out uint32 EnumerationLevel);
		
		// --- Structs ---
		
		[CRepr]
		public struct AVRF_BACKTRACE_INFORMATION
		{
			public uint32 Depth;
			public uint32 Index;
			public uint64[32] ReturnAddresses;
		}
		[CRepr]
		public struct AVRF_HEAP_ALLOCATION
		{
			public uint64 HeapHandle;
			public uint64 UserAllocation;
			public uint64 UserAllocationSize;
			public uint64 Allocation;
			public uint64 AllocationSize;
			public uint32 UserAllocationState;
			public uint32 HeapState;
			public uint64 HeapContext;
			public AVRF_BACKTRACE_INFORMATION* BackTraceInformation;
		}
		[CRepr]
		public struct AVRF_HANDLE_OPERATION
		{
			public uint64 Handle;
			public uint32 ProcessId;
			public uint32 ThreadId;
			public uint32 OperationType;
			public uint32 Spare0;
			public AVRF_BACKTRACE_INFORMATION BackTraceInformation;
		}
		
		// --- Functions ---
		
		[Import("verifier.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VerifierEnumerateResource(HANDLE Process, VERIFIER_ENUM_RESOURCE_FLAGS Flags, eAvrfResourceTypes ResourceType, AVRF_RESOURCE_ENUMERATE_CALLBACK ResourceCallback, void* EnumerationContext);
	}
}
