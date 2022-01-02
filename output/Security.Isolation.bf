using System;

// namespace Security.Isolation
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct IsolatedAppLauncherTelemetryParameters
		{
			public BOOL EnableForLaunch;
			public Guid CorrelationGUID;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_IsolatedAppLauncher = .(0xbc812430, 0xe75e, 0x4fd1, 0x96, 0x41, 0x1f, 0x9f, 0x1e, 0x2d, 0x9a, 0x1f);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IIsolatedAppLauncher : IUnknown
		{
			public const new Guid IID = .(0xf686878f, 0x7b42, 0x4cc4, 0x96, 0xfb, 0xf4, 0xf3, 0xb6, 0xe3, 0xd2, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Launch(PWSTR appUserModelId, PWSTR arguments, in IsolatedAppLauncherTelemetryParameters telemetryParameters) mut => VT.Launch(ref this, appUserModelId, arguments, telemetryParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsolatedAppLauncher self, PWSTR appUserModelId, PWSTR arguments, in IsolatedAppLauncherTelemetryParameters telemetryParameters) Launch;
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetAppContainerNamedObjectPath(HANDLE Token, PSID AppContainerSid, uint32 ObjectPathLength, char16* ObjectPath, out uint32 ReturnLength);
		[Import("api-ms-win-security-isolatedcontainer-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInWDAGContainer(void* Reserved, out BOOL isProcessInWDAGContainer);
		[Import("api-ms-win-security-isolatedcontainer-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInIsolatedContainer(out BOOL isProcessInIsolatedContainer);
		[Import("isolatedwindowsenvironmentutils.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInIsolatedWindowsEnvironment(out BOOL isProcessInIsolatedWindowsEnvironment);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAppContainerProfile(PWSTR pszAppContainerName, PWSTR pszDisplayName, PWSTR pszDescription, SID_AND_ATTRIBUTES* pCapabilities, uint32 dwCapabilityCount, out PSID ppSidAppContainerSid);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteAppContainerProfile(PWSTR pszAppContainerName);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAppContainerRegistryLocation(uint32 desiredAccess, out HKEY phAppContainerKey);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAppContainerFolderPath(PWSTR pszAppContainerSid, out PWSTR ppszPath);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName(PSID psidAppContainerSid, PWSTR pszRestrictedAppContainerName, out PSID ppsidRestrictedAppContainerSid);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeriveAppContainerSidFromAppContainerName(PWSTR pszAppContainerName, out PSID ppsidAppContainerSid);
	}
}
