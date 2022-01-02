using System;

// namespace Devices.SerialCommunication
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 COMDB_MIN_PORTS_ARBITRATED = 256;
		public const uint32 COMDB_MAX_PORTS_ARBITRATED = 4096;
		public const uint32 CDB_REPORT_BITS = 0;
		public const uint32 CDB_REPORT_BYTES = 1;
		
		// --- Typedefs ---
		
		public typealias HCOMDB = int;
		
		// --- Functions ---
		
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBOpen(out int PHComDB);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBClose(HCOMDB HComDB);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBGetCurrentPortUsage(HCOMDB HComDB, uint8* Buffer, uint32 BufferSize, uint32 ReportType, uint32* MaxPortsReported);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBClaimNextFreePort(HCOMDB HComDB, out uint32 ComNumber);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBClaimPort(HCOMDB HComDB, uint32 ComNumber, BOOL ForceClaim, BOOL* Forced);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBReleasePort(HCOMDB HComDB, uint32 ComNumber);
		[Import("msports.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ComDBResizeDatabase(HCOMDB HComDB, uint32 NewSize);
	}
}
