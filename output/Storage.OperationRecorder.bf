using System;

// namespace Storage.OperationRecorder
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum OPERATION_START_FLAGS : uint32
		{
			OPERATION_START_TRACE_CURRENT_THREAD = 1,
		}
		public enum OPERATION_END_PARAMETERS_FLAGS : uint32
		{
			OPERATION_END_DISCARD = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct OPERATION_START_PARAMETERS
		{
			public uint32 Version;
			public uint32 OperationId;
			public OPERATION_START_FLAGS Flags;
		}
		[CRepr]
		public struct OPERATION_END_PARAMETERS
		{
			public uint32 Version;
			public uint32 OperationId;
			public OPERATION_END_PARAMETERS_FLAGS Flags;
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OperationStart(OPERATION_START_PARAMETERS* OperationStartParams);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OperationEnd(OPERATION_END_PARAMETERS* OperationEndParams);
		
	}
}
