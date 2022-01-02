using System;

// namespace System.CorrelationVector
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RTL_CORRELATION_VECTOR_STRING_LENGTH = 129;
		public const uint32 RTL_CORRELATION_VECTOR_V1_PREFIX_LENGTH = 16;
		public const uint32 RTL_CORRELATION_VECTOR_V1_LENGTH = 64;
		public const uint32 RTL_CORRELATION_VECTOR_V2_PREFIX_LENGTH = 22;
		public const uint32 RTL_CORRELATION_VECTOR_V2_LENGTH = 128;
		
		// --- Structs ---
		
		[CRepr]
		public struct CORRELATION_VECTOR
		{
			public CHAR Version;
			public CHAR[129] Vector;
		}
		
		// --- Functions ---
		
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlInitializeCorrelationVector(out CORRELATION_VECTOR CorrelationVector, int32 Version, Guid* Guid);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlIncrementCorrelationVector(out CORRELATION_VECTOR CorrelationVector);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlExtendCorrelationVector(out CORRELATION_VECTOR CorrelationVector);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlValidateCorrelationVector(ref CORRELATION_VECTOR Vector);
	}
}
