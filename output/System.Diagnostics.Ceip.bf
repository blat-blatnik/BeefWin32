using System;

// namespace System.Diagnostics.Ceip
namespace Win32
{
	extension Win32
	{
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CeipIsOptedIn();
	}
}
