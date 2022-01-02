using System;

// namespace System.Services
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 SERVICE_ALL_ACCESS = 983551;
		public const uint32 SC_MANAGER_ALL_ACCESS = 983103;
		public const uint32 SERVICE_NO_CHANGE = 4294967295;
		public const uint32 SERVICE_CONTROL_STOP = 1;
		public const uint32 SERVICE_CONTROL_PAUSE = 2;
		public const uint32 SERVICE_CONTROL_CONTINUE = 3;
		public const uint32 SERVICE_CONTROL_INTERROGATE = 4;
		public const uint32 SERVICE_CONTROL_SHUTDOWN = 5;
		public const uint32 SERVICE_CONTROL_PARAMCHANGE = 6;
		public const uint32 SERVICE_CONTROL_NETBINDADD = 7;
		public const uint32 SERVICE_CONTROL_NETBINDREMOVE = 8;
		public const uint32 SERVICE_CONTROL_NETBINDENABLE = 9;
		public const uint32 SERVICE_CONTROL_NETBINDDISABLE = 10;
		public const uint32 SERVICE_CONTROL_DEVICEEVENT = 11;
		public const uint32 SERVICE_CONTROL_HARDWAREPROFILECHANGE = 12;
		public const uint32 SERVICE_CONTROL_POWEREVENT = 13;
		public const uint32 SERVICE_CONTROL_SESSIONCHANGE = 14;
		public const uint32 SERVICE_CONTROL_PRESHUTDOWN = 15;
		public const uint32 SERVICE_CONTROL_TIMECHANGE = 16;
		public const uint32 SERVICE_CONTROL_TRIGGEREVENT = 32;
		public const uint32 SERVICE_CONTROL_LOWRESOURCES = 96;
		public const uint32 SERVICE_CONTROL_SYSTEMLOWRESOURCES = 97;
		public const uint32 SERVICE_ACCEPT_STOP = 1;
		public const uint32 SERVICE_ACCEPT_PAUSE_CONTINUE = 2;
		public const uint32 SERVICE_ACCEPT_SHUTDOWN = 4;
		public const uint32 SERVICE_ACCEPT_PARAMCHANGE = 8;
		public const uint32 SERVICE_ACCEPT_NETBINDCHANGE = 16;
		public const uint32 SERVICE_ACCEPT_HARDWAREPROFILECHANGE = 32;
		public const uint32 SERVICE_ACCEPT_POWEREVENT = 64;
		public const uint32 SERVICE_ACCEPT_SESSIONCHANGE = 128;
		public const uint32 SERVICE_ACCEPT_PRESHUTDOWN = 256;
		public const uint32 SERVICE_ACCEPT_TIMECHANGE = 512;
		public const uint32 SERVICE_ACCEPT_TRIGGEREVENT = 1024;
		public const uint32 SERVICE_ACCEPT_USER_LOGOFF = 2048;
		public const uint32 SERVICE_ACCEPT_LOWRESOURCES = 8192;
		public const uint32 SERVICE_ACCEPT_SYSTEMLOWRESOURCES = 16384;
		public const uint32 SC_MANAGER_CONNECT = 1;
		public const uint32 SC_MANAGER_CREATE_SERVICE = 2;
		public const uint32 SC_MANAGER_ENUMERATE_SERVICE = 4;
		public const uint32 SC_MANAGER_LOCK = 8;
		public const uint32 SC_MANAGER_QUERY_LOCK_STATUS = 16;
		public const uint32 SC_MANAGER_MODIFY_BOOT_CONFIG = 32;
		public const uint32 SERVICE_QUERY_CONFIG = 1;
		public const uint32 SERVICE_CHANGE_CONFIG = 2;
		public const uint32 SERVICE_QUERY_STATUS = 4;
		public const uint32 SERVICE_ENUMERATE_DEPENDENTS = 8;
		public const uint32 SERVICE_START = 16;
		public const uint32 SERVICE_STOP = 32;
		public const uint32 SERVICE_PAUSE_CONTINUE = 64;
		public const uint32 SERVICE_INTERROGATE = 128;
		public const uint32 SERVICE_USER_DEFINED_CONTROL = 256;
		public const uint32 SERVICE_NOTIFY_STATUS_CHANGE_1 = 1;
		public const uint32 SERVICE_NOTIFY_STATUS_CHANGE_2 = 2;
		public const uint32 SERVICE_NOTIFY_STATUS_CHANGE = 2;
		public const uint32 SERVICE_STOP_REASON_FLAG_MIN = 0;
		public const uint32 SERVICE_STOP_REASON_FLAG_UNPLANNED = 268435456;
		public const uint32 SERVICE_STOP_REASON_FLAG_CUSTOM = 536870912;
		public const uint32 SERVICE_STOP_REASON_FLAG_PLANNED = 1073741824;
		public const uint32 SERVICE_STOP_REASON_FLAG_MAX = 2147483648;
		public const uint32 SERVICE_STOP_REASON_MAJOR_MIN = 0;
		public const uint32 SERVICE_STOP_REASON_MAJOR_OTHER = 65536;
		public const uint32 SERVICE_STOP_REASON_MAJOR_HARDWARE = 131072;
		public const uint32 SERVICE_STOP_REASON_MAJOR_OPERATINGSYSTEM = 196608;
		public const uint32 SERVICE_STOP_REASON_MAJOR_SOFTWARE = 262144;
		public const uint32 SERVICE_STOP_REASON_MAJOR_APPLICATION = 327680;
		public const uint32 SERVICE_STOP_REASON_MAJOR_NONE = 393216;
		public const uint32 SERVICE_STOP_REASON_MAJOR_MAX = 458752;
		public const uint32 SERVICE_STOP_REASON_MAJOR_MIN_CUSTOM = 4194304;
		public const uint32 SERVICE_STOP_REASON_MAJOR_MAX_CUSTOM = 16711680;
		public const uint32 SERVICE_STOP_REASON_MINOR_MIN = 0;
		public const uint32 SERVICE_STOP_REASON_MINOR_OTHER = 1;
		public const uint32 SERVICE_STOP_REASON_MINOR_MAINTENANCE = 2;
		public const uint32 SERVICE_STOP_REASON_MINOR_INSTALLATION = 3;
		public const uint32 SERVICE_STOP_REASON_MINOR_UPGRADE = 4;
		public const uint32 SERVICE_STOP_REASON_MINOR_RECONFIG = 5;
		public const uint32 SERVICE_STOP_REASON_MINOR_HUNG = 6;
		public const uint32 SERVICE_STOP_REASON_MINOR_UNSTABLE = 7;
		public const uint32 SERVICE_STOP_REASON_MINOR_DISK = 8;
		public const uint32 SERVICE_STOP_REASON_MINOR_NETWORKCARD = 9;
		public const uint32 SERVICE_STOP_REASON_MINOR_ENVIRONMENT = 10;
		public const uint32 SERVICE_STOP_REASON_MINOR_HARDWARE_DRIVER = 11;
		public const uint32 SERVICE_STOP_REASON_MINOR_OTHERDRIVER = 12;
		public const uint32 SERVICE_STOP_REASON_MINOR_SERVICEPACK = 13;
		public const uint32 SERVICE_STOP_REASON_MINOR_SOFTWARE_UPDATE = 14;
		public const uint32 SERVICE_STOP_REASON_MINOR_SECURITYFIX = 15;
		public const uint32 SERVICE_STOP_REASON_MINOR_SECURITY = 16;
		public const uint32 SERVICE_STOP_REASON_MINOR_NETWORK_CONNECTIVITY = 17;
		public const uint32 SERVICE_STOP_REASON_MINOR_WMI = 18;
		public const uint32 SERVICE_STOP_REASON_MINOR_SERVICEPACK_UNINSTALL = 19;
		public const uint32 SERVICE_STOP_REASON_MINOR_SOFTWARE_UPDATE_UNINSTALL = 20;
		public const uint32 SERVICE_STOP_REASON_MINOR_SECURITYFIX_UNINSTALL = 21;
		public const uint32 SERVICE_STOP_REASON_MINOR_MMC = 22;
		public const uint32 SERVICE_STOP_REASON_MINOR_NONE = 23;
		public const uint32 SERVICE_STOP_REASON_MINOR_MEMOTYLIMIT = 24;
		public const uint32 SERVICE_STOP_REASON_MINOR_MAX = 25;
		public const uint32 SERVICE_STOP_REASON_MINOR_MIN_CUSTOM = 256;
		public const uint32 SERVICE_STOP_REASON_MINOR_MAX_CUSTOM = 65535;
		public const uint32 SERVICE_CONTROL_STATUS_REASON_INFO = 1;
		public const uint32 SERVICE_SID_TYPE_NONE = 0;
		public const uint32 SERVICE_SID_TYPE_UNRESTRICTED = 1;
		public const uint32 SERVICE_TRIGGER_TYPE_CUSTOM_SYSTEM_STATE_CHANGE = 7;
		public const uint32 SERVICE_TRIGGER_TYPE_AGGREGATE = 30;
		public const uint32 SERVICE_START_REASON_DEMAND = 1;
		public const uint32 SERVICE_START_REASON_AUTO = 2;
		public const uint32 SERVICE_START_REASON_TRIGGER = 4;
		public const uint32 SERVICE_START_REASON_RESTART_ON_FAILURE = 8;
		public const uint32 SERVICE_START_REASON_DELAYEDAUTO = 16;
		public const uint32 SERVICE_DYNAMIC_INFORMATION_LEVEL_START_REASON = 1;
		public const uint32 SERVICE_LAUNCH_PROTECTED_NONE = 0;
		public const uint32 SERVICE_LAUNCH_PROTECTED_WINDOWS = 1;
		public const uint32 SERVICE_LAUNCH_PROTECTED_WINDOWS_LIGHT = 2;
		public const uint32 SERVICE_LAUNCH_PROTECTED_ANTIMALWARE_LIGHT = 3;
		public const Guid NETWORK_MANAGER_FIRST_IP_ADDRESS_ARRIVAL_GUID = .(0x4f27f2de, 0x14e2, 0x430b, 0xa5, 0x49, 0x7c, 0xd4, 0x8c, 0xbc, 0x82, 0x45);
		public const Guid NETWORK_MANAGER_LAST_IP_ADDRESS_REMOVAL_GUID = .(0xcc4ba62a, 0x162e, 0x4648, 0x84, 0x7a, 0xb6, 0xbd, 0xf9, 0x93, 0xe3, 0x35);
		public const Guid DOMAIN_JOIN_GUID = .(0x1ce20aba, 0x9851, 0x4421, 0x94, 0x30, 0x1d, 0xde, 0xb7, 0x66, 0xe8, 0x09);
		public const Guid DOMAIN_LEAVE_GUID = .(0xddaf516e, 0x58c2, 0x4866, 0x95, 0x74, 0xc3, 0xb6, 0x15, 0xd4, 0x2e, 0xa1);
		public const Guid FIREWALL_PORT_OPEN_GUID = .(0xb7569e07, 0x8421, 0x4ee0, 0xad, 0x10, 0x86, 0x91, 0x5a, 0xfd, 0xad, 0x09);
		public const Guid FIREWALL_PORT_CLOSE_GUID = .(0xa144ed38, 0x8e12, 0x4de4, 0x9d, 0x96, 0xe6, 0x47, 0x40, 0xb1, 0xa5, 0x24);
		public const Guid MACHINE_POLICY_PRESENT_GUID = .(0x659fcae6, 0x5bdb, 0x4da9, 0xb1, 0xff, 0xca, 0x2a, 0x17, 0x8d, 0x46, 0xe0);
		public const Guid USER_POLICY_PRESENT_GUID = .(0x54fb46c8, 0xf089, 0x464c, 0xb1, 0xfd, 0x59, 0xd1, 0xb6, 0x2c, 0x3b, 0x50);
		public const Guid RPC_INTERFACE_EVENT_GUID = .(0xbc90d167, 0x9470, 0x4139, 0xa9, 0xba, 0xbe, 0x0b, 0xbb, 0xf5, 0xb7, 0x4d);
		public const Guid NAMED_PIPE_EVENT_GUID = .(0x1f81d131, 0x3fac, 0x4537, 0x9e, 0x0c, 0x7e, 0x7b, 0x0c, 0x2f, 0x4b, 0x55);
		public const Guid CUSTOM_SYSTEM_STATE_CHANGE_EVENT_GUID = .(0x2d7a2816, 0x0c5e, 0x45fc, 0x9c, 0xe7, 0x57, 0x0e, 0x5e, 0xcd, 0xe9, 0xc9);
		
		// --- Typedefs ---
		
		public typealias SERVICE_STATUS_HANDLE = int;
		
		// --- Enums ---
		
		public enum ENUM_SERVICE_STATE : uint32
		{
			ACTIVE = 1,
			INACTIVE = 2,
			STATE_ALL = 3,
		}
		public enum SERVICE_ERROR : uint32
		{
			CRITICAL = 3,
			IGNORE = 0,
			NORMAL = 1,
			SEVERE = 2,
		}
		public enum SERVICE_CONFIG : uint32
		{
			DELAYED_AUTO_START_INFO = 3,
			DESCRIPTION = 1,
			FAILURE_ACTIONS = 2,
			FAILURE_ACTIONS_FLAG = 4,
			PREFERRED_NODE = 9,
			PRESHUTDOWN_INFO = 7,
			REQUIRED_PRIVILEGES_INFO = 6,
			SERVICE_SID_INFO = 5,
			TRIGGER_INFO = 8,
			LAUNCH_PROTECTED = 12,
		}
		[AllowDuplicates]
		public enum ENUM_SERVICE_TYPE : uint32
		{
			DRIVER = 11,
			FILE_SYSTEM_DRIVER_ = 2,
			KERNEL_DRIVER = 1,
			WIN32 = 48,
			WIN32_OWN_PROCESS_ = 16,
			WIN32_SHARE_PROCESS = 32,
			ADAPTER = 4,
			FILE_SYSTEM_DRIVER = 2,
			RECOGNIZER_DRIVER = 8,
			WIN32_OWN_PROCESS = 16,
			USER_OWN_PROCESS = 80,
			USER_SHARE_PROCESS = 96,
		}
		public enum SERVICE_START_TYPE : uint32
		{
			AUTO_START = 2,
			BOOT_START = 0,
			DEMAND_START = 3,
			DISABLED = 4,
			SYSTEM_START = 1,
		}
		public enum SERVICE_NOTIFY : uint32
		{
			CREATED = 128,
			CONTINUE_PENDING = 16,
			DELETE_PENDING = 512,
			DELETED = 256,
			PAUSE_PENDING = 32,
			PAUSED = 64,
			RUNNING = 8,
			START_PENDING = 2,
			STOP_PENDING = 4,
			STOPPED = 1,
		}
		public enum SERVICE_RUNS_IN_PROCESS : uint32
		{
			NON_SYSTEM_OR_NOT_RUNNING = 0,
			SYSTEM_PROCESS = 1,
		}
		public enum SERVICE_TRIGGER_ACTION : uint32
		{
			START = 1,
			STOP = 2,
		}
		public enum SERVICE_TRIGGER_TYPE : uint32
		{
			CUSTOM = 20,
			DEVICE_INTERFACE_ARRIVAL = 1,
			DOMAIN_JOIN = 3,
			FIREWALL_PORT_EVENT = 4,
			GROUP_POLICY = 5,
			IP_ADDRESS_AVAILABILITY = 2,
			NETWORK_ENDPOINT = 6,
		}
		public enum SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE : uint32
		{
			BINARY = 1,
			STRING = 2,
			LEVEL = 3,
			KEYWORD_ANY = 4,
			KEYWORD_ALL = 5,
		}
		public enum SERVICE_STATUS_CURRENT_STATE : uint32
		{
			CONTINUE_PENDING = 5,
			PAUSE_PENDING = 6,
			PAUSED = 7,
			RUNNING = 4,
			START_PENDING = 2,
			STOP_PENDING = 3,
			STOPPED = 1,
		}
		public enum SC_ACTION_TYPE : int32
		{
			NONE = 0,
			RESTART = 1,
			REBOOT = 2,
			RUN_COMMAND = 3,
			OWN_RESTART = 4,
		}
		public enum SC_STATUS_TYPE : int32
		{
			PROCESS_INFO = 0,
		}
		public enum SC_ENUM_TYPE : int32
		{
			PROCESS_INFO = 0,
		}
		public enum SC_EVENT_TYPE : int32
		{
			DATABASE_CHANGE = 0,
			PROPERTY_CHANGE = 1,
			STATUS_CHANGE = 2,
		}
		public enum SERVICE_REGISTRY_STATE_TYPE : int32
		{
			ServiceRegistryStateParameters = 0,
			ServiceRegistryStatePersistent = 1,
			MaxServiceRegistryStateType = 2,
		}
		public enum SERVICE_DIRECTORY_TYPE : int32
		{
			PersistentState = 0,
			TypeMax = 1,
		}
		public enum SERVICE_SHARED_REGISTRY_STATE_TYPE : int32
		{
			ServiceSharedRegistryPersistentState = 0,
		}
		public enum SERVICE_SHARED_DIRECTORY_TYPE : int32
		{
			ServiceSharedDirectoryPersistentState = 0,
		}
		
		// --- Function Pointers ---
		
		public function void SERVICE_MAIN_FUNCTIONW(uint32 dwNumServicesArgs, out PWSTR lpServiceArgVectors);
		public function void SERVICE_MAIN_FUNCTIONA(uint32 dwNumServicesArgs, out int8* lpServiceArgVectors);
		public function void LPSERVICE_MAIN_FUNCTIONW(uint32 dwNumServicesArgs, out PWSTR lpServiceArgVectors);
		public function void LPSERVICE_MAIN_FUNCTIONA(uint32 dwNumServicesArgs, out PSTR lpServiceArgVectors);
		public function void HANDLER_FUNCTION(uint32 dwControl);
		public function uint32 HANDLER_FUNCTION_EX(uint32 dwControl, uint32 dwEventType, void* lpEventData, void* lpContext);
		public function void LPHANDLER_FUNCTION(uint32 dwControl);
		public function uint32 LPHANDLER_FUNCTION_EX(uint32 dwControl, uint32 dwEventType, void* lpEventData, void* lpContext);
		public function void PFN_SC_NOTIFY_CALLBACK(void* pParameter);
		public function void PSC_NOTIFICATION_CALLBACK(uint32 dwNotify, void* pCallbackContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct SERVICE_TRIGGER_CUSTOM_STATE_ID
		{
			public uint32[2] Data;
		}
		[CRepr]
		public struct SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM
		{
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public SERVICE_TRIGGER_CUSTOM_STATE_ID CustomStateId;
				public _s_e__Struct s;
				
				[CRepr]
				public struct _s_e__Struct
				{
					public uint32 DataOffset;
					public uint8[0] Data;
				}
			}
		}
		[CRepr]
		public struct SERVICE_DESCRIPTIONA
		{
			public PSTR lpDescription;
		}
		[CRepr]
		public struct SERVICE_DESCRIPTIONW
		{
			public PWSTR lpDescription;
		}
		[CRepr]
		public struct SC_ACTION
		{
			public SC_ACTION_TYPE Type;
			public uint32 Delay;
		}
		[CRepr]
		public struct SERVICE_FAILURE_ACTIONSA
		{
			public uint32 dwResetPeriod;
			public PSTR lpRebootMsg;
			public PSTR lpCommand;
			public uint32 cActions;
			public SC_ACTION* lpsaActions;
		}
		[CRepr]
		public struct SERVICE_FAILURE_ACTIONSW
		{
			public uint32 dwResetPeriod;
			public PWSTR lpRebootMsg;
			public PWSTR lpCommand;
			public uint32 cActions;
			public SC_ACTION* lpsaActions;
		}
		[CRepr]
		public struct SERVICE_DELAYED_AUTO_START_INFO
		{
			public BOOL fDelayedAutostart;
		}
		[CRepr]
		public struct SERVICE_FAILURE_ACTIONS_FLAG
		{
			public BOOL fFailureActionsOnNonCrashFailures;
		}
		[CRepr]
		public struct SERVICE_SID_INFO
		{
			public uint32 dwServiceSidType;
		}
		[CRepr]
		public struct SERVICE_REQUIRED_PRIVILEGES_INFOA
		{
			public PSTR pmszRequiredPrivileges;
		}
		[CRepr]
		public struct SERVICE_REQUIRED_PRIVILEGES_INFOW
		{
			public PWSTR pmszRequiredPrivileges;
		}
		[CRepr]
		public struct SERVICE_PRESHUTDOWN_INFO
		{
			public uint32 dwPreshutdownTimeout;
		}
		[CRepr]
		public struct SERVICE_TRIGGER_SPECIFIC_DATA_ITEM
		{
			public SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE dwDataType;
			public uint32 cbData;
			public uint8* pData;
		}
		[CRepr]
		public struct SERVICE_TRIGGER
		{
			public SERVICE_TRIGGER_TYPE dwTriggerType;
			public SERVICE_TRIGGER_ACTION dwAction;
			public Guid* pTriggerSubtype;
			public uint32 cDataItems;
			public SERVICE_TRIGGER_SPECIFIC_DATA_ITEM* pDataItems;
		}
		[CRepr]
		public struct SERVICE_TRIGGER_INFO
		{
			public uint32 cTriggers;
			public SERVICE_TRIGGER* pTriggers;
			public uint8* pReserved;
		}
		[CRepr]
		public struct SERVICE_PREFERRED_NODE_INFO
		{
			public uint16 usPreferredNode;
			public BOOLEAN fDelete;
		}
		[CRepr]
		public struct SERVICE_TIMECHANGE_INFO
		{
			public LARGE_INTEGER liNewTime;
			public LARGE_INTEGER liOldTime;
		}
		[CRepr]
		public struct SERVICE_LAUNCH_PROTECTED_INFO
		{
			public uint32 dwLaunchProtected;
		}
		[CRepr]
		public struct SERVICE_STATUS
		{
			public ENUM_SERVICE_TYPE dwServiceType;
			public SERVICE_STATUS_CURRENT_STATE dwCurrentState;
			public uint32 dwControlsAccepted;
			public uint32 dwWin32ExitCode;
			public uint32 dwServiceSpecificExitCode;
			public uint32 dwCheckPoint;
			public uint32 dwWaitHint;
		}
		[CRepr]
		public struct SERVICE_STATUS_PROCESS
		{
			public ENUM_SERVICE_TYPE dwServiceType;
			public SERVICE_STATUS_CURRENT_STATE dwCurrentState;
			public uint32 dwControlsAccepted;
			public uint32 dwWin32ExitCode;
			public uint32 dwServiceSpecificExitCode;
			public uint32 dwCheckPoint;
			public uint32 dwWaitHint;
			public uint32 dwProcessId;
			public SERVICE_RUNS_IN_PROCESS dwServiceFlags;
		}
		[CRepr]
		public struct ENUM_SERVICE_STATUSA
		{
			public PSTR lpServiceName;
			public PSTR lpDisplayName;
			public SERVICE_STATUS ServiceStatus;
		}
		[CRepr]
		public struct ENUM_SERVICE_STATUSW
		{
			public PWSTR lpServiceName;
			public PWSTR lpDisplayName;
			public SERVICE_STATUS ServiceStatus;
		}
		[CRepr]
		public struct ENUM_SERVICE_STATUS_PROCESSA
		{
			public PSTR lpServiceName;
			public PSTR lpDisplayName;
			public SERVICE_STATUS_PROCESS ServiceStatusProcess;
		}
		[CRepr]
		public struct ENUM_SERVICE_STATUS_PROCESSW
		{
			public PWSTR lpServiceName;
			public PWSTR lpDisplayName;
			public SERVICE_STATUS_PROCESS ServiceStatusProcess;
		}
		[CRepr]
		public struct QUERY_SERVICE_LOCK_STATUSA
		{
			public uint32 fIsLocked;
			public PSTR lpLockOwner;
			public uint32 dwLockDuration;
		}
		[CRepr]
		public struct QUERY_SERVICE_LOCK_STATUSW
		{
			public uint32 fIsLocked;
			public PWSTR lpLockOwner;
			public uint32 dwLockDuration;
		}
		[CRepr]
		public struct QUERY_SERVICE_CONFIGA
		{
			public ENUM_SERVICE_TYPE dwServiceType;
			public SERVICE_START_TYPE dwStartType;
			public SERVICE_ERROR dwErrorControl;
			public PSTR lpBinaryPathName;
			public PSTR lpLoadOrderGroup;
			public uint32 dwTagId;
			public PSTR lpDependencies;
			public PSTR lpServiceStartName;
			public PSTR lpDisplayName;
		}
		[CRepr]
		public struct QUERY_SERVICE_CONFIGW
		{
			public ENUM_SERVICE_TYPE dwServiceType;
			public SERVICE_START_TYPE dwStartType;
			public SERVICE_ERROR dwErrorControl;
			public PWSTR lpBinaryPathName;
			public PWSTR lpLoadOrderGroup;
			public uint32 dwTagId;
			public PWSTR lpDependencies;
			public PWSTR lpServiceStartName;
			public PWSTR lpDisplayName;
		}
		[CRepr]
		public struct SERVICE_TABLE_ENTRYA
		{
			public PSTR lpServiceName;
			public LPSERVICE_MAIN_FUNCTIONA lpServiceProc;
		}
		[CRepr]
		public struct SERVICE_TABLE_ENTRYW
		{
			public PWSTR lpServiceName;
			public LPSERVICE_MAIN_FUNCTIONW lpServiceProc;
		}
		[CRepr]
		public struct SERVICE_NOTIFY_1
		{
			public uint32 dwVersion;
			public PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
			public void* pContext;
			public uint32 dwNotificationStatus;
			public SERVICE_STATUS_PROCESS ServiceStatus;
		}
		[CRepr]
		public struct SERVICE_NOTIFY_2A
		{
			public uint32 dwVersion;
			public PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
			public void* pContext;
			public uint32 dwNotificationStatus;
			public SERVICE_STATUS_PROCESS ServiceStatus;
			public uint32 dwNotificationTriggered;
			public PSTR pszServiceNames;
		}
		[CRepr]
		public struct SERVICE_NOTIFY_2W
		{
			public uint32 dwVersion;
			public PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
			public void* pContext;
			public uint32 dwNotificationStatus;
			public SERVICE_STATUS_PROCESS ServiceStatus;
			public uint32 dwNotificationTriggered;
			public PWSTR pszServiceNames;
		}
		[CRepr]
		public struct SERVICE_CONTROL_STATUS_REASON_PARAMSA
		{
			public uint32 dwReason;
			public PSTR pszComment;
			public SERVICE_STATUS_PROCESS ServiceStatus;
		}
		[CRepr]
		public struct SERVICE_CONTROL_STATUS_REASON_PARAMSW
		{
			public uint32 dwReason;
			public PWSTR pszComment;
			public SERVICE_STATUS_PROCESS ServiceStatus;
		}
		[CRepr]
		public struct SERVICE_START_REASON
		{
			public uint32 dwReason;
		}
		[CRepr]
		public struct _SC_NOTIFICATION_REGISTRATION {}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetServiceBits(SERVICE_STATUS_HANDLE hServiceStatus, uint32 dwServiceBits, BOOL bSetBitsOn, BOOL bUpdateImmediately);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChangeServiceConfigA(SC_HANDLE hService, uint32 dwServiceType, SERVICE_START_TYPE dwStartType, SERVICE_ERROR dwErrorControl, PSTR lpBinaryPathName, PSTR lpLoadOrderGroup, uint32* lpdwTagId, PSTR lpDependencies, PSTR lpServiceStartName, PSTR lpPassword, PSTR lpDisplayName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChangeServiceConfigW(SC_HANDLE hService, uint32 dwServiceType, SERVICE_START_TYPE dwStartType, SERVICE_ERROR dwErrorControl, PWSTR lpBinaryPathName, PWSTR lpLoadOrderGroup, uint32* lpdwTagId, PWSTR lpDependencies, PWSTR lpServiceStartName, PWSTR lpPassword, PWSTR lpDisplayName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChangeServiceConfig2A(SC_HANDLE hService, SERVICE_CONFIG dwInfoLevel, void* lpInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChangeServiceConfig2W(SC_HANDLE hService, SERVICE_CONFIG dwInfoLevel, void* lpInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseServiceHandle(SC_HANDLE hSCObject);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ControlService(SC_HANDLE hService, uint32 dwControl, out SERVICE_STATUS lpServiceStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE CreateServiceA(SC_HANDLE hSCManager, PSTR lpServiceName, PSTR lpDisplayName, uint32 dwDesiredAccess, ENUM_SERVICE_TYPE dwServiceType, SERVICE_START_TYPE dwStartType, SERVICE_ERROR dwErrorControl, PSTR lpBinaryPathName, PSTR lpLoadOrderGroup, uint32* lpdwTagId, PSTR lpDependencies, PSTR lpServiceStartName, PSTR lpPassword);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE CreateServiceW(SC_HANDLE hSCManager, PWSTR lpServiceName, PWSTR lpDisplayName, uint32 dwDesiredAccess, ENUM_SERVICE_TYPE dwServiceType, SERVICE_START_TYPE dwStartType, SERVICE_ERROR dwErrorControl, PWSTR lpBinaryPathName, PWSTR lpLoadOrderGroup, uint32* lpdwTagId, PWSTR lpDependencies, PWSTR lpServiceStartName, PWSTR lpPassword);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteService(SC_HANDLE hService);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDependentServicesA(SC_HANDLE hService, ENUM_SERVICE_STATE dwServiceState, ENUM_SERVICE_STATUSA* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDependentServicesW(SC_HANDLE hService, ENUM_SERVICE_STATE dwServiceState, ENUM_SERVICE_STATUSW* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumServicesStatusA(SC_HANDLE hSCManager, ENUM_SERVICE_TYPE dwServiceType, ENUM_SERVICE_STATE dwServiceState, ENUM_SERVICE_STATUSA* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned, uint32* lpResumeHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumServicesStatusW(SC_HANDLE hSCManager, ENUM_SERVICE_TYPE dwServiceType, ENUM_SERVICE_STATE dwServiceState, ENUM_SERVICE_STATUSW* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned, uint32* lpResumeHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumServicesStatusExA(SC_HANDLE hSCManager, SC_ENUM_TYPE InfoLevel, ENUM_SERVICE_TYPE dwServiceType, ENUM_SERVICE_STATE dwServiceState, uint8* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned, uint32* lpResumeHandle, PSTR pszGroupName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumServicesStatusExW(SC_HANDLE hSCManager, SC_ENUM_TYPE InfoLevel, ENUM_SERVICE_TYPE dwServiceType, ENUM_SERVICE_STATE dwServiceState, uint8* lpServices, uint32 cbBufSize, out uint32 pcbBytesNeeded, out uint32 lpServicesReturned, uint32* lpResumeHandle, PWSTR pszGroupName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetServiceKeyNameA(SC_HANDLE hSCManager, PSTR lpDisplayName, uint8* lpServiceName, out uint32 lpcchBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetServiceKeyNameW(SC_HANDLE hSCManager, PWSTR lpDisplayName, char16* lpServiceName, out uint32 lpcchBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetServiceDisplayNameA(SC_HANDLE hSCManager, PSTR lpServiceName, uint8* lpDisplayName, out uint32 lpcchBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetServiceDisplayNameW(SC_HANDLE hSCManager, PWSTR lpServiceName, char16* lpDisplayName, out uint32 lpcchBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* LockServiceDatabase(SC_HANDLE hSCManager);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL NotifyBootConfigStatus(BOOL BootAcceptable);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE OpenSCManagerA(PSTR lpMachineName, PSTR lpDatabaseName, uint32 dwDesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE OpenSCManagerW(PWSTR lpMachineName, PWSTR lpDatabaseName, uint32 dwDesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE OpenServiceA(SC_HANDLE hSCManager, PSTR lpServiceName, uint32 dwDesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SC_HANDLE OpenServiceW(SC_HANDLE hSCManager, PWSTR lpServiceName, uint32 dwDesiredAccess);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceConfigA(SC_HANDLE hService, QUERY_SERVICE_CONFIGA* lpServiceConfig, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceConfigW(SC_HANDLE hService, QUERY_SERVICE_CONFIGW* lpServiceConfig, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceConfig2A(SC_HANDLE hService, SERVICE_CONFIG dwInfoLevel, uint8* lpBuffer, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceConfig2W(SC_HANDLE hService, SERVICE_CONFIG dwInfoLevel, uint8* lpBuffer, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceLockStatusA(SC_HANDLE hSCManager, QUERY_SERVICE_LOCK_STATUSA* lpLockStatus, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceLockStatusW(SC_HANDLE hSCManager, QUERY_SERVICE_LOCK_STATUSW* lpLockStatus, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceObjectSecurity(SC_HANDLE hService, uint32 dwSecurityInformation, SECURITY_DESCRIPTOR* lpSecurityDescriptor, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceStatus(SC_HANDLE hService, out SERVICE_STATUS lpServiceStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceStatusEx(SC_HANDLE hService, SC_STATUS_TYPE InfoLevel, uint8* lpBuffer, uint32 cbBufSize, out uint32 pcbBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerA(PSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerW(PWSTR lpServiceName, LPHANDLER_FUNCTION lpHandlerProc);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerExA(PSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerExW(PWSTR lpServiceName, LPHANDLER_FUNCTION_EX lpHandlerProc, void* lpContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetServiceObjectSecurity(SC_HANDLE hService, OBJECT_SECURITY_INFORMATION dwSecurityInformation, ref SECURITY_DESCRIPTOR lpSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetServiceStatus(SERVICE_STATUS_HANDLE hServiceStatus, ref SERVICE_STATUS lpServiceStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StartServiceCtrlDispatcherA(in SERVICE_TABLE_ENTRYA lpServiceStartTable);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StartServiceCtrlDispatcherW(in SERVICE_TABLE_ENTRYW lpServiceStartTable);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StartServiceA(SC_HANDLE hService, uint32 dwNumServiceArgs, PSTR* lpServiceArgVectors);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StartServiceW(SC_HANDLE hService, uint32 dwNumServiceArgs, PWSTR* lpServiceArgVectors);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnlockServiceDatabase(void* ScLock);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NotifyServiceStatusChangeA(SC_HANDLE hService, SERVICE_NOTIFY dwNotifyMask, ref SERVICE_NOTIFY_2A pNotifyBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NotifyServiceStatusChangeW(SC_HANDLE hService, SERVICE_NOTIFY dwNotifyMask, ref SERVICE_NOTIFY_2W pNotifyBuffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ControlServiceExA(SC_HANDLE hService, uint32 dwControl, uint32 dwInfoLevel, void* pControlParams);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ControlServiceExW(SC_HANDLE hService, uint32 dwControl, uint32 dwInfoLevel, void* pControlParams);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryServiceDynamicInformation(SERVICE_STATUS_HANDLE hServiceStatus, uint32 dwInfoLevel, void** ppDynamicInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitServiceState(SC_HANDLE hService, uint32 dwNotify, uint32 dwTimeout, HANDLE hCancelEvent);
		[Import("api-ms-win-service-core-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetServiceRegistryStateKey(SERVICE_STATUS_HANDLE ServiceStatusHandle, SERVICE_REGISTRY_STATE_TYPE StateType, uint32 AccessMask, out HKEY ServiceStateKey);
		[Import("api-ms-win-service-core-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetServiceDirectory(SERVICE_STATUS_HANDLE hServiceStatus, SERVICE_DIRECTORY_TYPE eDirectoryType, char16* lpPathBuffer, uint32 cchPathBufferLength, out uint32 lpcchRequiredBufferLength);
		[Import("api-ms-win-service-core-l1-1-5.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSharedServiceRegistryStateKey(SC_HANDLE ServiceHandle, SERVICE_SHARED_REGISTRY_STATE_TYPE StateType, uint32 AccessMask, out HKEY ServiceStateKey);
		[Import("api-ms-win-service-core-l1-1-5.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSharedServiceDirectory(SC_HANDLE ServiceHandle, SERVICE_SHARED_DIRECTORY_TYPE DirectoryType, char16* PathBuffer, uint32 PathBufferLength, out uint32 RequiredBufferLength);
	}
}
