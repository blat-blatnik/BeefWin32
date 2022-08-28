namespace Win32.Storage.OperationRecorder;

using System;
using Win32.Foundation;

static
{
	#region Enums
	public enum OPERATION_START_FLAGS : uint32
	{
		TRACE_CURRENT_THREAD = 1,
	}
	public enum OPERATION_END_PARAMETERS_FLAGS : uint32
	{
		DISCARD = 1,
	}
	#endregion
	
	#region Structs
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
	#endregion
	
	#region Functions
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OperationStart(ref OPERATION_START_PARAMETERS OperationStartParams);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OperationEnd(ref OPERATION_END_PARAMETERS OperationEndParams);
	#endregion
}
