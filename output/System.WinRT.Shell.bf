using System;

// namespace System.WinRT.Shell
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CreateProcessMethod : int32
		{
			CpCreateProcess = 0,
			CpCreateProcessAsUser = 1,
			CpAicLaunchAdminProcess = 2,
		}
		
		// --- COM Interfaces ---
		
		public struct IDDEInitializer {}
		
	}
}
