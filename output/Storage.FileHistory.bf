using System;

// namespace Storage.FileHistory
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT FHCFG_E_CORRUPT_CONFIG_FILE = -2147220736;
		public const HRESULT FHCFG_E_CONFIG_FILE_NOT_FOUND = -2147220735;
		public const HRESULT FHCFG_E_CONFIG_ALREADY_EXISTS = -2147220734;
		public const HRESULT FHCFG_E_NO_VALID_CONFIGURATION_LOADED = -2147220733;
		public const HRESULT FHCFG_E_TARGET_NOT_CONNECTED = -2147220732;
		public const HRESULT FHCFG_E_CONFIGURATION_PREVIOUSLY_LOADED = -2147220731;
		public const HRESULT FHCFG_E_TARGET_VERIFICATION_FAILED = -2147220730;
		public const HRESULT FHCFG_E_TARGET_NOT_CONFIGURED = -2147220729;
		public const HRESULT FHCFG_E_TARGET_NOT_ENOUGH_FREE_SPACE = -2147220728;
		public const HRESULT FHCFG_E_TARGET_CANNOT_BE_USED = -2147220727;
		public const HRESULT FHCFG_E_INVALID_REHYDRATION_STATE = -2147220726;
		public const HRESULT FHCFG_E_RECOMMENDATION_CHANGE_NOT_ALLOWED = -2147220720;
		public const HRESULT FHCFG_E_TARGET_REHYDRATED_ELSEWHERE = -2147220719;
		public const HRESULT FHCFG_E_LEGACY_TARGET_UNSUPPORTED = -2147220718;
		public const HRESULT FHCFG_E_LEGACY_TARGET_VALIDATION_UNSUPPORTED = -2147220717;
		public const HRESULT FHCFG_E_LEGACY_BACKUP_USER_EXCLUDED = -2147220716;
		public const HRESULT FHCFG_E_LEGACY_BACKUP_NOT_FOUND = -2147220715;
		public const HRESULT FHSVC_E_BACKUP_BLOCKED = -2147219968;
		public const HRESULT FHSVC_E_NOT_CONFIGURED = -2147219967;
		public const HRESULT FHSVC_E_CONFIG_DISABLED = -2147219966;
		public const HRESULT FHSVC_E_CONFIG_DISABLED_GP = -2147219965;
		public const HRESULT FHSVC_E_FATAL_CONFIG_ERROR = -2147219964;
		public const HRESULT FHSVC_E_CONFIG_REHYDRATING = -2147219963;
		public const uint32 FH_STATE_NOT_TRACKED = 0;
		public const uint32 FH_STATE_OFF = 1;
		public const uint32 FH_STATE_DISABLED_BY_GP = 2;
		public const uint32 FH_STATE_FATAL_CONFIG_ERROR = 3;
		public const uint32 FH_STATE_MIGRATING = 4;
		public const uint32 FH_STATE_REHYDRATING = 5;
		public const uint32 FH_STATE_TARGET_FS_LIMITATION = 13;
		public const uint32 FH_STATE_TARGET_ACCESS_DENIED = 14;
		public const uint32 FH_STATE_TARGET_VOLUME_DIRTY = 15;
		public const uint32 FH_STATE_TARGET_FULL_RETENTION_MAX = 16;
		public const uint32 FH_STATE_TARGET_FULL = 17;
		public const uint32 FH_STATE_STAGING_FULL = 18;
		public const uint32 FH_STATE_TARGET_LOW_SPACE_RETENTION_MAX = 19;
		public const uint32 FH_STATE_TARGET_LOW_SPACE = 20;
		public const uint32 FH_STATE_TARGET_ABSENT = 21;
		public const uint32 FH_STATE_TOO_MUCH_BEHIND = 240;
		public const uint32 FH_STATE_NO_ERROR = 255;
		public const uint32 FH_STATE_BACKUP_NOT_SUPPORTED = 2064;
		public const uint32 FH_STATE_RUNNING = 256;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum FH_TARGET_PROPERTY_TYPE : int32
		{
			FH_TARGET_NAME = 0,
			FH_TARGET_URL = 1,
			FH_TARGET_DRIVE_TYPE = 2,
			MAX_TARGET_PROPERTY = 3,
		}
		[AllowDuplicates]
		public enum FH_TARGET_DRIVE_TYPES : int32
		{
			FH_DRIVE_UNKNOWN = 0,
			FH_DRIVE_REMOVABLE = 2,
			FH_DRIVE_FIXED = 3,
			FH_DRIVE_REMOTE = 4,
		}
		[AllowDuplicates]
		public enum FH_PROTECTED_ITEM_CATEGORY : int32
		{
			FH_FOLDER = 0,
			FH_LIBRARY = 1,
			MAX_PROTECTED_ITEM_CATEGORY = 2,
		}
		[AllowDuplicates]
		public enum FH_LOCAL_POLICY_TYPE : int32
		{
			FH_FREQUENCY = 0,
			FH_RETENTION_TYPE = 1,
			FH_RETENTION_AGE = 2,
			MAX_LOCAL_POLICY = 3,
		}
		[AllowDuplicates]
		public enum FH_RETENTION_TYPES : int32
		{
			FH_RETENTION_DISABLED = 0,
			FH_RETENTION_UNLIMITED = 1,
			FH_RETENTION_AGE_BASED = 2,
			MAX_RETENTION_TYPE = 3,
		}
		[AllowDuplicates]
		public enum FH_BACKUP_STATUS : int32
		{
			FH_STATUS_DISABLED = 0,
			FH_STATUS_DISABLED_BY_GP = 1,
			FH_STATUS_ENABLED = 2,
			FH_STATUS_REHYDRATING = 3,
			MAX_BACKUP_STATUS = 4,
		}
		[AllowDuplicates]
		public enum FH_DEVICE_VALIDATION_RESULT : int32
		{
			FH_ACCESS_DENIED = 0,
			FH_INVALID_DRIVE_TYPE = 1,
			FH_READ_ONLY_PERMISSION = 2,
			FH_CURRENT_DEFAULT = 3,
			FH_NAMESPACE_EXISTS = 4,
			FH_TARGET_PART_OF_LIBRARY = 5,
			FH_VALID_TARGET = 6,
			MAX_VALIDATION_RESULT = 7,
		}
		[AllowDuplicates]
		public enum FhBackupStopReason : int32
		{
			BackupInvalidStopReason = 0,
			BackupLimitUserBusyMachineOnAC = 1,
			BackupLimitUserIdleMachineOnDC = 2,
			BackupLimitUserBusyMachineOnDC = 3,
			BackupCancelled = 4,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FhConfigMgr = .(0xed43bb3c, 0x09e9, 0x498a, 0x9d, 0xf6, 0x21, 0x77, 0x24, 0x4c, 0x6d, 0xb4);
		public const Guid CLSID_FhReassociation = .(0x4d728e35, 0x16fa, 0x4320, 0x9e, 0x8b, 0xbf, 0xd7, 0x10, 0x0a, 0x88, 0x46);
		
		// --- COM Interfaces ---
		
		public struct IFhTarget {}
		public struct IFhScopeIterator {}
		public struct IFhConfigMgr {}
		public struct IFhReassociation {}
		
		// --- Functions ---
		
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceOpenPipe(BOOL StartServiceIfStopped, FH_SERVICE_PIPE_HANDLE* Pipe);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceClosePipe(FH_SERVICE_PIPE_HANDLE Pipe);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceStartBackup(FH_SERVICE_PIPE_HANDLE Pipe, BOOL LowPriorityIo);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceStopBackup(FH_SERVICE_PIPE_HANDLE Pipe, BOOL StopTracking);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceReloadConfiguration(FH_SERVICE_PIPE_HANDLE Pipe);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceBlockBackup(FH_SERVICE_PIPE_HANDLE Pipe);
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceUnblockBackup(FH_SERVICE_PIPE_HANDLE Pipe);
		
	}
}