using System;

// namespace System.SubsystemForLinux
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum WSL_DISTRIBUTION_FLAGS : uint32
		{
			NONE = 0,
			ENABLE_INTEROP = 1,
			APPEND_NT_PATH = 2,
			ENABLE_DRIVE_MOUNTING = 4,
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WslIsDistributionRegistered(PWSTR distributionName);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslRegisterDistribution(PWSTR distributionName, PWSTR tarGzFilename);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslUnregisterDistribution(PWSTR distributionName);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslConfigureDistribution(PWSTR distributionName, uint32 defaultUID, WSL_DISTRIBUTION_FLAGS wslDistributionFlags);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslGetDistributionConfiguration(PWSTR distributionName, uint32* distributionVersion, uint32* defaultUID, WSL_DISTRIBUTION_FLAGS* wslDistributionFlags, PSTR** defaultEnvironmentVariables, uint32* defaultEnvironmentVariableCount);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslLaunchInteractive(PWSTR distributionName, PWSTR command, BOOL useCurrentWorkingDirectory, uint32* exitCode);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WslLaunch(PWSTR distributionName, PWSTR command, BOOL useCurrentWorkingDirectory, HANDLE stdIn, HANDLE stdOut, HANDLE stdErr, HANDLE* process);
		
	}
}
