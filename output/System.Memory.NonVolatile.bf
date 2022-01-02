using System;

// namespace System.Memory.NonVolatile
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct NV_MEMORY_RANGE
		{
			public void* BaseAddress;
			public uint Length;
		}
		
		// --- Functions ---
		
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlGetNonVolatileToken(void* NvBuffer, uint Size, void** NvToken);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlFreeNonVolatileToken(void* NvToken);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlFlushNonVolatileMemory(void* NvToken, void* NvBuffer, uint Size, uint32 Flags);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlDrainNonVolatileFlush(void* NvToken);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlWriteNonVolatileMemory(void* NvToken, void* NvDestination, void* Source, uint Size, uint32 Flags);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlFillNonVolatileMemory(void* NvToken, void* NvDestination, uint Size, uint8 Value, uint32 Flags);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlFlushNonVolatileMemoryRanges(void* NvToken, NV_MEMORY_RANGE* NvRanges, uint NumRanges, uint32 Flags);
	}
}
