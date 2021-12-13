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
		
		public struct IIsolatedAppLauncher {}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetAppContainerNamedObjectPath(HANDLE Token, PSID AppContainerSid, uint32 ObjectPathLength, char16* ObjectPath, uint32* ReturnLength);
		[Import("api-ms-win-security-isolatedcontainer-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInWDAGContainer(void* Reserved, BOOL* isProcessInWDAGContainer);
		[Import("api-ms-win-security-isolatedcontainer-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInIsolatedContainer(BOOL* isProcessInIsolatedContainer);
		[Import("isolatedwindowsenvironmentutils.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsProcessInIsolatedWindowsEnvironment(BOOL* isProcessInIsolatedWindowsEnvironment);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAppContainerProfile(PWSTR pszAppContainerName, PWSTR pszDisplayName, PWSTR pszDescription, SID_AND_ATTRIBUTES* pCapabilities, uint32 dwCapabilityCount, PSID* ppSidAppContainerSid);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteAppContainerProfile(PWSTR pszAppContainerName);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAppContainerRegistryLocation(uint32 desiredAccess, HKEY* phAppContainerKey);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAppContainerFolderPath(PWSTR pszAppContainerSid, PWSTR* ppszPath);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName(PSID psidAppContainerSid, PWSTR pszRestrictedAppContainerName, PSID* ppsidRestrictedAppContainerSid);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeriveAppContainerSidFromAppContainerName(PWSTR pszAppContainerName, PSID* ppsidAppContainerSid);
		
	}
}
