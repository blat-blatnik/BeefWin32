using System;

// namespace System.SetupAndMigration
namespace Win32
{
	extension Win32
	{
		#region Function pointers
		public function void OOBE_COMPLETED_CALLBACK(void* CallbackContext);
		#endregion
		
		#region Functions
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OOBEComplete(out BOOL isOOBEComplete);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterWaitUntilOOBECompleted(OOBE_COMPLETED_CALLBACK OOBECompletedCallback, void* CallbackContext, void** WaitHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterWaitUntilOOBECompleted(void* WaitHandle);
		#endregion
	}
}
