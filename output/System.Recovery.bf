namespace Win32.System.Recovery;

using System;
using Win32.Foundation;
using Win32.System.WindowsProgramming;

static
{
	#region Enums
	public enum REGISTER_APPLICATION_RESTART_FLAGS : uint32
	{
		CRASH = 1,
		HANG = 2,
		PATCH = 4,
		REBOOT = 8,
	}
	#endregion
	
	#region Functions
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterApplicationRecoveryCallback(APPLICATION_RECOVERY_CALLBACK pRecoveyCallback, void* pvParameter, uint32 dwPingInterval, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UnregisterApplicationRecoveryCallback();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterApplicationRestart(PWSTR pwzCommandline, REGISTER_APPLICATION_RESTART_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UnregisterApplicationRestart();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetApplicationRecoveryCallback(HANDLE hProcess, out APPLICATION_RECOVERY_CALLBACK pRecoveryCallback, void** ppvParameter, uint32* pdwPingInterval, uint32* pdwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetApplicationRestartSettings(HANDLE hProcess, char16* pwzCommandline, out uint32 pcchSize, uint32* pdwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ApplicationRecoveryInProgress(out BOOL pbCancelled);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void ApplicationRecoveryFinished(BOOL bSuccess);
	#endregion
}
