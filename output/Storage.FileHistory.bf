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
		
		public enum FH_TARGET_PROPERTY_TYPE : int32
		{
			FH_TARGET_NAME = 0,
			FH_TARGET_URL = 1,
			FH_TARGET_DRIVE_TYPE = 2,
			MAX_TARGET_PROPERTY = 3,
		}
		public enum FH_TARGET_DRIVE_TYPES : int32
		{
			UNKNOWN = 0,
			REMOVABLE = 2,
			FIXED = 3,
			REMOTE = 4,
		}
		public enum FH_PROTECTED_ITEM_CATEGORY : int32
		{
			FH_FOLDER = 0,
			FH_LIBRARY = 1,
			MAX_PROTECTED_ITEM_CATEGORY = 2,
		}
		public enum FH_LOCAL_POLICY_TYPE : int32
		{
			FH_FREQUENCY = 0,
			FH_RETENTION_TYPE = 1,
			FH_RETENTION_AGE = 2,
			MAX_LOCAL_POLICY = 3,
		}
		public enum FH_RETENTION_TYPES : int32
		{
			FH_RETENTION_DISABLED = 0,
			FH_RETENTION_UNLIMITED = 1,
			FH_RETENTION_AGE_BASED = 2,
			MAX_RETENTION_TYPE = 3,
		}
		public enum FH_BACKUP_STATUS : int32
		{
			FH_STATUS_DISABLED = 0,
			FH_STATUS_DISABLED_BY_GP = 1,
			FH_STATUS_ENABLED = 2,
			FH_STATUS_REHYDRATING = 3,
			MAX_BACKUP_STATUS = 4,
		}
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
		public enum FhBackupStopReason : int32
		{
			InvalidStopReason = 0,
			LimitUserBusyMachineOnAC = 1,
			LimitUserIdleMachineOnDC = 2,
			LimitUserBusyMachineOnDC = 3,
			Cancelled = 4,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FhConfigMgr = .(0xed43bb3c, 0x09e9, 0x498a, 0x9d, 0xf6, 0x21, 0x77, 0x24, 0x4c, 0x6d, 0xb4);
		public const Guid CLSID_FhReassociation = .(0x4d728e35, 0x16fa, 0x4320, 0x9e, 0x8b, 0xbf, 0xd7, 0x10, 0x0a, 0x88, 0x46);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFhTarget : IUnknown
		{
			public const new Guid IID = .(0xd87965fd, 0x2bad, 0x4657, 0xbd, 0x3b, 0x95, 0x67, 0xeb, 0x30, 0x0c, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStringProperty(FH_TARGET_PROPERTY_TYPE PropertyType, out BSTR PropertyValue) mut => VT.GetStringProperty(ref this, PropertyType, out PropertyValue);
			public HRESULT GetNumericalProperty(FH_TARGET_PROPERTY_TYPE PropertyType, out uint64 PropertyValue) mut => VT.GetNumericalProperty(ref this, PropertyType, out PropertyValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhTarget self, FH_TARGET_PROPERTY_TYPE PropertyType, out BSTR PropertyValue) GetStringProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhTarget self, FH_TARGET_PROPERTY_TYPE PropertyType, out uint64 PropertyValue) GetNumericalProperty;
			}
		}
		[CRepr]
		public struct IFhScopeIterator : IUnknown
		{
			public const new Guid IID = .(0x3197abce, 0x532a, 0x44c6, 0x86, 0x15, 0xf3, 0x66, 0x65, 0x66, 0xa7, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveToNextItem() mut => VT.MoveToNextItem(ref this);
			public HRESULT GetItem(out BSTR Item) mut => VT.GetItem(ref this, out Item);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhScopeIterator self) MoveToNextItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhScopeIterator self, out BSTR Item) GetItem;
			}
		}
		[CRepr]
		public struct IFhConfigMgr : IUnknown
		{
			public const new Guid IID = .(0x6a5fea5b, 0xbf8f, 0x4ee5, 0xb8, 0xc3, 0x44, 0xd8, 0xa0, 0xd7, 0x33, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadConfiguration() mut => VT.LoadConfiguration(ref this);
			public HRESULT CreateDefaultConfiguration(BOOL OverwriteIfExists) mut => VT.CreateDefaultConfiguration(ref this, OverwriteIfExists);
			public HRESULT SaveConfiguration() mut => VT.SaveConfiguration(ref this);
			public HRESULT AddRemoveExcludeRule(BOOL Add, FH_PROTECTED_ITEM_CATEGORY Category, BSTR Item) mut => VT.AddRemoveExcludeRule(ref this, Add, Category, Item);
			public HRESULT GetIncludeExcludeRules(BOOL Include, FH_PROTECTED_ITEM_CATEGORY Category, out IFhScopeIterator* Iterator) mut => VT.GetIncludeExcludeRules(ref this, Include, Category, out Iterator);
			public HRESULT GetLocalPolicy(FH_LOCAL_POLICY_TYPE LocalPolicyType, out uint64 PolicyValue) mut => VT.GetLocalPolicy(ref this, LocalPolicyType, out PolicyValue);
			public HRESULT SetLocalPolicy(FH_LOCAL_POLICY_TYPE LocalPolicyType, uint64 PolicyValue) mut => VT.SetLocalPolicy(ref this, LocalPolicyType, PolicyValue);
			public HRESULT GetBackupStatus(out FH_BACKUP_STATUS BackupStatus) mut => VT.GetBackupStatus(ref this, out BackupStatus);
			public HRESULT SetBackupStatus(FH_BACKUP_STATUS BackupStatus) mut => VT.SetBackupStatus(ref this, BackupStatus);
			public HRESULT GetDefaultTarget(out IFhTarget* DefaultTarget) mut => VT.GetDefaultTarget(ref this, out DefaultTarget);
			public HRESULT ValidateTarget(BSTR TargetUrl, out FH_DEVICE_VALIDATION_RESULT ValidationResult) mut => VT.ValidateTarget(ref this, TargetUrl, out ValidationResult);
			public HRESULT ProvisionAndSetNewTarget(BSTR TargetUrl, BSTR TargetName) mut => VT.ProvisionAndSetNewTarget(ref this, TargetUrl, TargetName);
			public HRESULT ChangeDefaultTargetRecommendation(BOOL Recommend) mut => VT.ChangeDefaultTargetRecommendation(ref this, Recommend);
			public HRESULT QueryProtectionStatus(out uint32 ProtectionState, out BSTR ProtectedUntilTime) mut => VT.QueryProtectionStatus(ref this, out ProtectionState, out ProtectedUntilTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self) LoadConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BOOL OverwriteIfExists) CreateDefaultConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self) SaveConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BOOL Add, FH_PROTECTED_ITEM_CATEGORY Category, BSTR Item) AddRemoveExcludeRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BOOL Include, FH_PROTECTED_ITEM_CATEGORY Category, out IFhScopeIterator* Iterator) GetIncludeExcludeRules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, FH_LOCAL_POLICY_TYPE LocalPolicyType, out uint64 PolicyValue) GetLocalPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, FH_LOCAL_POLICY_TYPE LocalPolicyType, uint64 PolicyValue) SetLocalPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, out FH_BACKUP_STATUS BackupStatus) GetBackupStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, FH_BACKUP_STATUS BackupStatus) SetBackupStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, out IFhTarget* DefaultTarget) GetDefaultTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BSTR TargetUrl, out FH_DEVICE_VALIDATION_RESULT ValidationResult) ValidateTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BSTR TargetUrl, BSTR TargetName) ProvisionAndSetNewTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, BOOL Recommend) ChangeDefaultTargetRecommendation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhConfigMgr self, out uint32 ProtectionState, out BSTR ProtectedUntilTime) QueryProtectionStatus;
			}
		}
		[CRepr]
		public struct IFhReassociation : IUnknown
		{
			public const new Guid IID = .(0x6544a28a, 0xf68d, 0x47ac, 0x91, 0xef, 0x16, 0xb2, 0xb3, 0x6a, 0xa3, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ValidateTarget(BSTR TargetUrl, out FH_DEVICE_VALIDATION_RESULT ValidationResult) mut => VT.ValidateTarget(ref this, TargetUrl, out ValidationResult);
			public HRESULT ScanTargetForConfigurations(BSTR TargetUrl) mut => VT.ScanTargetForConfigurations(ref this, TargetUrl);
			public HRESULT GetConfigurationDetails(uint32 Index, out BSTR UserName, out BSTR PcName, out FILETIME BackupTime) mut => VT.GetConfigurationDetails(ref this, Index, out UserName, out PcName, out BackupTime);
			public HRESULT SelectConfiguration(uint32 Index) mut => VT.SelectConfiguration(ref this, Index);
			public HRESULT PerformReassociation(BOOL OverwriteIfExists) mut => VT.PerformReassociation(ref this, OverwriteIfExists);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhReassociation self, BSTR TargetUrl, out FH_DEVICE_VALIDATION_RESULT ValidationResult) ValidateTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhReassociation self, BSTR TargetUrl) ScanTargetForConfigurations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhReassociation self, uint32 Index, out BSTR UserName, out BSTR PcName, out FILETIME BackupTime) GetConfigurationDetails;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhReassociation self, uint32 Index) SelectConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFhReassociation self, BOOL OverwriteIfExists) PerformReassociation;
			}
		}
		
		// --- Functions ---
		
		[Import("fhsvcctl.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FhServiceOpenPipe(BOOL StartServiceIfStopped, out FH_SERVICE_PIPE_HANDLE Pipe);
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
