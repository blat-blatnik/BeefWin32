using System;

// namespace System.Shutdown
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAX_REASON_NAME_LEN = 64;
		public const uint32 MAX_REASON_DESC_LEN = 256;
		public const uint32 MAX_REASON_BUGID_LEN = 32;
		public const uint32 MAX_REASON_COMMENT_LEN = 512;
		public const uint32 SHUTDOWN_TYPE_LEN = 32;
		public const uint32 POLICY_SHOWREASONUI_NEVER = 0;
		public const uint32 POLICY_SHOWREASONUI_ALWAYS = 1;
		public const uint32 POLICY_SHOWREASONUI_WORKSTATIONONLY = 2;
		public const uint32 POLICY_SHOWREASONUI_SERVERONLY = 3;
		public const uint32 SNAPSHOT_POLICY_NEVER = 0;
		public const uint32 SNAPSHOT_POLICY_ALWAYS = 1;
		public const uint32 SNAPSHOT_POLICY_UNPLANNED = 2;
		public const uint32 MAX_NUM_REASONS = 256;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SHUTDOWN_REASON : uint32
		{
			NONE = 0,
			FLAG_COMMENT_REQUIRED = 16777216,
			FLAG_DIRTY_PROBLEM_ID_REQUIRED = 33554432,
			FLAG_CLEAN_UI = 67108864,
			FLAG_DIRTY_UI = 134217728,
			FLAG_MOBILE_UI_RESERVED = 268435456,
			FLAG_USER_DEFINED = 1073741824,
			FLAG_PLANNED = 2147483648,
			MAJOR_OTHER = 0,
			MAJOR_NONE = 0,
			MAJOR_HARDWARE = 65536,
			MAJOR_OPERATINGSYSTEM = 131072,
			MAJOR_SOFTWARE = 196608,
			MAJOR_APPLICATION = 262144,
			MAJOR_SYSTEM = 327680,
			MAJOR_POWER = 393216,
			MAJOR_LEGACY_API = 458752,
			MINOR_OTHER = 0,
			MINOR_NONE = 255,
			MINOR_MAINTENANCE = 1,
			MINOR_INSTALLATION = 2,
			MINOR_UPGRADE = 3,
			MINOR_RECONFIG = 4,
			MINOR_HUNG = 5,
			MINOR_UNSTABLE = 6,
			MINOR_DISK = 7,
			MINOR_PROCESSOR = 8,
			MINOR_NETWORKCARD = 9,
			MINOR_POWER_SUPPLY = 10,
			MINOR_CORDUNPLUGGED = 11,
			MINOR_ENVIRONMENT = 12,
			MINOR_HARDWARE_DRIVER = 13,
			MINOR_OTHERDRIVER = 14,
			MINOR_BLUESCREEN = 15,
			MINOR_SERVICEPACK = 16,
			MINOR_HOTFIX = 17,
			MINOR_SECURITYFIX = 18,
			MINOR_SECURITY = 19,
			MINOR_NETWORK_CONNECTIVITY = 20,
			MINOR_WMI = 21,
			MINOR_SERVICEPACK_UNINSTALL = 22,
			MINOR_HOTFIX_UNINSTALL = 23,
			MINOR_SECURITYFIX_UNINSTALL = 24,
			MINOR_MMC = 25,
			MINOR_SYSTEMRESTORE = 26,
			MINOR_TERMSRV = 32,
			MINOR_DC_PROMOTION = 33,
			MINOR_DC_DEMOTION = 34,
			UNKNOWN = 255,
			LEGACY_API = 2147942400,
			VALID_BIT_MASK = 3238002687,
		}
		public enum SHUTDOWN_FLAGS : uint32
		{
			FORCE_OTHERS = 1,
			FORCE_SELF = 2,
			RESTART = 4,
			POWEROFF = 8,
			NOREBOOT = 16,
			GRACE_OVERRIDE = 32,
			INSTALL_UPDATES = 64,
			RESTARTAPPS = 128,
			SKIP_SVC_PRESHUTDOWN = 256,
			HYBRID = 512,
			RESTART_BOOTOPTIONS = 1024,
			SOFT_REBOOT = 2048,
			MOBILE_UI = 4096,
			ARSO = 8192,
			CHECK_SAFE_FOR_SERVER = 16384,
			VAIL_CONTAINER = 32768,
			SYSTEM_INITIATED = 65536,
		}
		public enum EXIT_WINDOWS_FLAGS : uint32
		{
			HYBRID_SHUTDOWN = 4194304,
			LOGOFF = 0,
			POWEROFF = 8,
			REBOOT = 2,
			RESTARTAPPS = 64,
			SHUTDOWN = 1,
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitiateSystemShutdownA(PSTR lpMachineName, PSTR lpMessage, uint32 dwTimeout, BOOL bForceAppsClosed, BOOL bRebootAfterShutdown);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitiateSystemShutdownW(PWSTR lpMachineName, PWSTR lpMessage, uint32 dwTimeout, BOOL bForceAppsClosed, BOOL bRebootAfterShutdown);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AbortSystemShutdownA(PSTR lpMachineName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AbortSystemShutdownW(PWSTR lpMachineName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitiateSystemShutdownExA(PSTR lpMachineName, PSTR lpMessage, uint32 dwTimeout, BOOL bForceAppsClosed, BOOL bRebootAfterShutdown, SHUTDOWN_REASON dwReason);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitiateSystemShutdownExW(PWSTR lpMachineName, PWSTR lpMessage, uint32 dwTimeout, BOOL bForceAppsClosed, BOOL bRebootAfterShutdown, SHUTDOWN_REASON dwReason);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InitiateShutdownA(PSTR lpMachineName, PSTR lpMessage, uint32 dwGracePeriod, SHUTDOWN_FLAGS dwShutdownFlags, SHUTDOWN_REASON dwReason);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InitiateShutdownW(PWSTR lpMachineName, PWSTR lpMessage, uint32 dwGracePeriod, SHUTDOWN_FLAGS dwShutdownFlags, SHUTDOWN_REASON dwReason);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CheckForHiberboot(out BOOLEAN pHiberboot, BOOLEAN bClearFlag);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExitWindowsEx(EXIT_WINDOWS_FLAGS uFlags, uint32 dwReason);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LockWorkStation();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShutdownBlockReasonCreate(HWND hWnd, PWSTR pwszReason);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShutdownBlockReasonQuery(HWND hWnd, char16* pwszBuff, out uint32 pcchBuff);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShutdownBlockReasonDestroy(HWND hWnd);
	}
}
