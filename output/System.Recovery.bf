using System;

// namespace System.Recovery
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum REGISTER_APPLICATION_RESTART_FLAGS : uint32
		{
			RESTART_NO_CRASH = 1,
			RESTART_NO_HANG = 2,
			RESTART_NO_PATCH = 4,
			RESTART_NO_REBOOT = 8,
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterApplicationRecoveryCallback(APPLICATION_RECOVERY_CALLBACK pRecoveyCallback, void* pvParameter, uint32 dwPingInterval, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnregisterApplicationRecoveryCallback();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterApplicationRestart(PWSTR pwzCommandline, REGISTER_APPLICATION_RESTART_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnregisterApplicationRestart();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetApplicationRecoveryCallback(HANDLE hProcess, APPLICATION_RECOVERY_CALLBACK* pRecoveryCallback, void** ppvParameter, uint32* pdwPingInterval, uint32* pdwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetApplicationRestartSettings(HANDLE hProcess, char16* pwzCommandline, uint32* pcchSize, uint32* pdwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ApplicationRecoveryInProgress(BOOL* pbCancelled);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ApplicationRecoveryFinished(BOOL bSuccess);
		
	}
}