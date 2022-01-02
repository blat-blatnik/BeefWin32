using System;

// namespace Storage.CloudFilters
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CF_REQUEST_KEY_DEFAULT = 0;
		public const uint32 CF_PLACEHOLDER_MAX_FILE_IDENTITY_LENGTH = 4096;
		public const uint32 CF_MAX_PRIORITY_HINT = 15;
		public const uint32 CF_MAX_PROVIDER_NAME_LENGTH = 255;
		public const uint32 CF_MAX_PROVIDER_VERSION_LENGTH = 255;
		
		// --- Typedefs ---
		
		public typealias CF_CONNECTION_KEY = int;
		
		// --- Enums ---
		
		public enum CF_PLACEHOLDER_CREATE_FLAGS : uint32
		{
			NONE = 0,
			DISABLE_ON_DEMAND_POPULATION = 1,
			MARK_IN_SYNC = 2,
			SUPERSEDE = 4,
			ALWAYS_FULL = 8,
		}
		public enum CF_SYNC_PROVIDER_STATUS : uint32
		{
			DISCONNECTED = 0,
			IDLE = 1,
			POPULATE_NAMESPACE = 2,
			POPULATE_METADATA = 4,
			POPULATE_CONTENT = 8,
			SYNC_INCREMENTAL = 16,
			SYNC_FULL = 32,
			CONNECTIVITY_LOST = 64,
			CLEAR_FLAGS = 2147483648,
			TERMINATED = 3221225473,
			ERROR = 3221225474,
		}
		public enum CF_REGISTER_FLAGS : uint32
		{
			NONE = 0,
			UPDATE = 1,
			DISABLE_ON_DEMAND_POPULATION_ON_ROOT = 2,
			MARK_IN_SYNC_ON_ROOT = 4,
		}
		public enum CF_HYDRATION_POLICY_PRIMARY : uint16
		{
			PARTIAL = 0,
			PROGRESSIVE = 1,
			FULL = 2,
			ALWAYS_FULL = 3,
		}
		public enum CF_HYDRATION_POLICY_MODIFIER : uint16
		{
			NONE = 0,
			VALIDATION_REQUIRED = 1,
			STREAMING_ALLOWED = 2,
			AUTO_DEHYDRATION_ALLOWED = 4,
			ALLOW_FULL_RESTART_HYDRATION = 8,
		}
		public enum CF_POPULATION_POLICY_PRIMARY : uint16
		{
			PARTIAL = 0,
			FULL = 2,
			ALWAYS_FULL = 3,
		}
		public enum CF_POPULATION_POLICY_MODIFIER : uint16
		{
			MODIFIER_NONE = 0,
		}
		public enum CF_PLACEHOLDER_MANAGEMENT_POLICY : int32
		{
			DEFAULT = 0,
			CREATE_UNRESTRICTED = 1,
			CONVERT_TO_UNRESTRICTED = 2,
			UPDATE_UNRESTRICTED = 4,
		}
		public enum CF_INSYNC_POLICY : uint32
		{
			NONE = 0,
			TRACK_FILE_CREATION_TIME = 1,
			TRACK_FILE_READONLY_ATTRIBUTE = 2,
			TRACK_FILE_HIDDEN_ATTRIBUTE = 4,
			TRACK_FILE_SYSTEM_ATTRIBUTE = 8,
			TRACK_DIRECTORY_CREATION_TIME = 16,
			TRACK_DIRECTORY_READONLY_ATTRIBUTE = 32,
			TRACK_DIRECTORY_HIDDEN_ATTRIBUTE = 64,
			TRACK_DIRECTORY_SYSTEM_ATTRIBUTE = 128,
			TRACK_FILE_LAST_WRITE_TIME = 256,
			TRACK_DIRECTORY_LAST_WRITE_TIME = 512,
			TRACK_FILE_ALL = 5592335,
			TRACK_DIRECTORY_ALL = 11184880,
			TRACK_ALL = 16777215,
			PRESERVE_INSYNC_FOR_SYNC_ENGINE = 2147483648,
		}
		public enum CF_HARDLINK_POLICY : uint32
		{
			NONE = 0,
			ALLOWED = 1,
		}
		public enum CF_CALLBACK_CANCEL_FLAGS : uint32
		{
			NONE = 0,
			IO_TIMEOUT = 1,
			IO_ABORTED = 2,
		}
		public enum CF_CALLBACK_FETCH_DATA_FLAGS : uint32
		{
			NONE = 0,
			RECOVERY = 1,
			EXPLICIT_HYDRATION = 2,
		}
		public enum CF_CALLBACK_VALIDATE_DATA_FLAGS : uint32
		{
			NONE = 0,
			EXPLICIT_HYDRATION = 2,
		}
		public enum CF_CALLBACK_FETCH_PLACEHOLDERS_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_CALLBACK_OPEN_COMPLETION_FLAGS : uint32
		{
			NONE = 0,
			PLACEHOLDER_UNKNOWN = 1,
			PLACEHOLDER_UNSUPPORTED = 2,
		}
		public enum CF_CALLBACK_CLOSE_COMPLETION_FLAGS : uint32
		{
			NONE = 0,
			DELETED = 1,
		}
		public enum CF_CALLBACK_DEHYDRATE_FLAGS : uint32
		{
			NONE = 0,
			BACKGROUND = 1,
		}
		public enum CF_CALLBACK_DEHYDRATE_COMPLETION_FLAGS : uint32
		{
			NONE = 0,
			BACKGROUND = 1,
			DEHYDRATED = 2,
		}
		public enum CF_CALLBACK_DELETE_FLAGS : uint32
		{
			NONE = 0,
			IS_DIRECTORY = 1,
			IS_UNDELETE = 2,
		}
		public enum CF_CALLBACK_DELETE_COMPLETION_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_CALLBACK_RENAME_FLAGS : uint32
		{
			NONE = 0,
			IS_DIRECTORY = 1,
			SOURCE_IN_SCOPE = 2,
			TARGET_IN_SCOPE = 4,
		}
		public enum CF_CALLBACK_RENAME_COMPLETION_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_CALLBACK_DEHYDRATION_REASON : int32
		{
			NONE = 0,
			USER_MANUAL = 1,
			SYSTEM_LOW_SPACE = 2,
			SYSTEM_INACTIVITY = 3,
			SYSTEM_OS_UPGRADE = 4,
		}
		public enum CF_CALLBACK_TYPE : int32
		{
			FETCH_DATA = 0,
			VALIDATE_DATA = 1,
			CANCEL_FETCH_DATA = 2,
			FETCH_PLACEHOLDERS = 3,
			CANCEL_FETCH_PLACEHOLDERS = 4,
			NOTIFY_FILE_OPEN_COMPLETION = 5,
			NOTIFY_FILE_CLOSE_COMPLETION = 6,
			NOTIFY_DEHYDRATE = 7,
			NOTIFY_DEHYDRATE_COMPLETION = 8,
			NOTIFY_DELETE = 9,
			NOTIFY_DELETE_COMPLETION = 10,
			NOTIFY_RENAME = 11,
			NOTIFY_RENAME_COMPLETION = 12,
			NONE = -1,
		}
		public enum CF_CONNECT_FLAGS : uint32
		{
			NONE = 0,
			REQUIRE_PROCESS_INFO = 2,
			REQUIRE_FULL_FILE_PATH = 4,
			BLOCK_SELF_IMPLICIT_HYDRATION = 8,
		}
		public enum CF_OPERATION_TYPE : int32
		{
			TRANSFER_DATA = 0,
			RETRIEVE_DATA = 1,
			ACK_DATA = 2,
			RESTART_HYDRATION = 3,
			TRANSFER_PLACEHOLDERS = 4,
			ACK_DEHYDRATE = 5,
			ACK_DELETE = 6,
			ACK_RENAME = 7,
		}
		public enum CF_OPERATION_TRANSFER_DATA_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_OPERATION_RETRIEVE_DATA_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_OPERATION_ACK_DATA_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_OPERATION_RESTART_HYDRATION_FLAGS : uint32
		{
			NONE = 0,
			MARK_IN_SYNC = 1,
		}
		public enum CF_OPERATION_TRANSFER_PLACEHOLDERS_FLAGS : uint32
		{
			NONE = 0,
			STOP_ON_ERROR = 1,
			DISABLE_ON_DEMAND_POPULATION = 2,
		}
		public enum CF_OPERATION_ACK_DEHYDRATE_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_OPERATION_ACK_RENAME_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_OPERATION_ACK_DELETE_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_CREATE_FLAGS : uint32
		{
			NONE = 0,
			STOP_ON_ERROR = 1,
		}
		public enum CF_OPEN_FILE_FLAGS : uint32
		{
			NONE = 0,
			EXCLUSIVE = 1,
			WRITE_ACCESS = 2,
			DELETE_ACCESS = 4,
			FOREGROUND = 8,
		}
		public enum CF_CONVERT_FLAGS : uint32
		{
			NONE = 0,
			MARK_IN_SYNC = 1,
			DEHYDRATE = 2,
			ENABLE_ON_DEMAND_POPULATION = 4,
			ALWAYS_FULL = 8,
			FORCE_CONVERT_TO_CLOUD_FILE = 16,
		}
		public enum CF_UPDATE_FLAGS : uint32
		{
			NONE = 0,
			VERIFY_IN_SYNC = 1,
			MARK_IN_SYNC = 2,
			DEHYDRATE = 4,
			ENABLE_ON_DEMAND_POPULATION = 8,
			DISABLE_ON_DEMAND_POPULATION = 16,
			REMOVE_FILE_IDENTITY = 32,
			CLEAR_IN_SYNC = 64,
			REMOVE_PROPERTY = 128,
			PASSTHROUGH_FS_METADATA = 256,
			ALWAYS_FULL = 512,
			ALLOW_PARTIAL = 1024,
		}
		public enum CF_REVERT_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_HYDRATE_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_DEHYDRATE_FLAGS : uint32
		{
			NONE = 0,
			BACKGROUND = 1,
		}
		public enum CF_PIN_STATE : int32
		{
			UNSPECIFIED = 0,
			PINNED = 1,
			UNPINNED = 2,
			EXCLUDED = 3,
			INHERIT = 4,
		}
		public enum CF_SET_PIN_FLAGS : uint32
		{
			NONE = 0,
			RECURSE = 1,
			RECURSE_ONLY = 2,
			RECURSE_STOP_ON_ERROR = 4,
		}
		public enum CF_IN_SYNC_STATE : int32
		{
			NOT_IN_SYNC = 0,
			IN_SYNC = 1,
		}
		public enum CF_SET_IN_SYNC_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum CF_PLACEHOLDER_STATE : uint32
		{
			NO_STATES = 0,
			PLACEHOLDER = 1,
			SYNC_ROOT = 2,
			ESSENTIAL_PROP_PRESENT = 4,
			IN_SYNC = 8,
			PARTIAL = 16,
			PARTIALLY_ON_DISK = 32,
			INVALID = 4294967295,
		}
		public enum CF_PLACEHOLDER_INFO_CLASS : int32
		{
			BASIC = 0,
			STANDARD = 1,
		}
		public enum CF_SYNC_ROOT_INFO_CLASS : int32
		{
			BASIC = 0,
			STANDARD = 1,
			PROVIDER = 2,
		}
		public enum CF_PLACEHOLDER_RANGE_INFO_CLASS : int32
		{
			ONDISK = 1,
			VALIDATED = 2,
			MODIFIED = 3,
		}
		
		// --- Function Pointers ---
		
		public function void CF_CALLBACK(in CF_CALLBACK_INFO CallbackInfo, in CF_CALLBACK_PARAMETERS CallbackParameters);
		
		// --- Structs ---
		
		[CRepr]
		public struct CF_FS_METADATA
		{
			public FILE_BASIC_INFO BasicInfo;
			public LARGE_INTEGER FileSize;
		}
		[CRepr]
		public struct CF_PLACEHOLDER_CREATE_INFO
		{
			public PWSTR RelativeFileName;
			public CF_FS_METADATA FsMetadata;
			public void* FileIdentity;
			public uint32 FileIdentityLength;
			public CF_PLACEHOLDER_CREATE_FLAGS Flags;
			public HRESULT Result;
			public int64 CreateUsn;
		}
		[CRepr]
		public struct CF_PROCESS_INFO
		{
			public uint32 StructSize;
			public uint32 ProcessId;
			public PWSTR ImagePath;
			public PWSTR PackageName;
			public PWSTR ApplicationId;
			public PWSTR CommandLine;
			public uint32 SessionId;
		}
		[CRepr]
		public struct CF_PLATFORM_INFO
		{
			public uint32 BuildNumber;
			public uint32 RevisionNumber;
			public uint32 IntegrationNumber;
		}
		[CRepr]
		public struct CF_HYDRATION_POLICY_PRIMARY_USHORT
		{
			public uint16 us;
		}
		[CRepr]
		public struct CF_HYDRATION_POLICY_MODIFIER_USHORT
		{
			public uint16 us;
		}
		[CRepr]
		public struct CF_HYDRATION_POLICY
		{
			public CF_HYDRATION_POLICY_PRIMARY_USHORT Primary;
			public CF_HYDRATION_POLICY_MODIFIER_USHORT Modifier;
		}
		[CRepr]
		public struct CF_POPULATION_POLICY_PRIMARY_USHORT
		{
			public uint16 us;
		}
		[CRepr]
		public struct CF_POPULATION_POLICY_MODIFIER_USHORT
		{
			public uint16 us;
		}
		[CRepr]
		public struct CF_POPULATION_POLICY
		{
			public CF_POPULATION_POLICY_PRIMARY_USHORT Primary;
			public CF_POPULATION_POLICY_MODIFIER_USHORT Modifier;
		}
		[CRepr]
		public struct CF_SYNC_POLICIES
		{
			public uint32 StructSize;
			public CF_HYDRATION_POLICY Hydration;
			public CF_POPULATION_POLICY Population;
			public CF_INSYNC_POLICY InSync;
			public CF_HARDLINK_POLICY HardLink;
			public CF_PLACEHOLDER_MANAGEMENT_POLICY PlaceholderManagement;
		}
		[CRepr]
		public struct CF_SYNC_REGISTRATION
		{
			public uint32 StructSize;
			public PWSTR ProviderName;
			public PWSTR ProviderVersion;
			public void* SyncRootIdentity;
			public uint32 SyncRootIdentityLength;
			public void* FileIdentity;
			public uint32 FileIdentityLength;
			public Guid ProviderId;
		}
		[CRepr]
		public struct CF_CALLBACK_INFO
		{
			public uint32 StructSize;
			public CF_CONNECTION_KEY ConnectionKey;
			public void* CallbackContext;
			public PWSTR VolumeGuidName;
			public PWSTR VolumeDosName;
			public uint32 VolumeSerialNumber;
			public LARGE_INTEGER SyncRootFileId;
			public void* SyncRootIdentity;
			public uint32 SyncRootIdentityLength;
			public LARGE_INTEGER FileId;
			public LARGE_INTEGER FileSize;
			public void* FileIdentity;
			public uint32 FileIdentityLength;
			public PWSTR NormalizedPath;
			public LARGE_INTEGER TransferKey;
			public uint8 PriorityHint;
			public CORRELATION_VECTOR* CorrelationVector;
			public CF_PROCESS_INFO* ProcessInfo;
			public LARGE_INTEGER RequestKey;
		}
		[CRepr]
		public struct CF_CALLBACK_PARAMETERS
		{
			public uint32 ParamSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Cancel_e__Struct Cancel;
				public _FetchData_e__Struct FetchData;
				public _ValidateData_e__Struct ValidateData;
				public _FetchPlaceholders_e__Struct FetchPlaceholders;
				public _OpenCompletion_e__Struct OpenCompletion;
				public _CloseCompletion_e__Struct CloseCompletion;
				public _Dehydrate_e__Struct Dehydrate;
				public _DehydrateCompletion_e__Struct DehydrateCompletion;
				public _Delete_e__Struct Delete;
				public _DeleteCompletion_e__Struct DeleteCompletion;
				public _Rename_e__Struct Rename;
				public _RenameCompletion_e__Struct RenameCompletion;
				
				[CRepr]
				public struct _Rename_e__Struct
				{
					public CF_CALLBACK_RENAME_FLAGS Flags;
					public PWSTR TargetPath;
				}
				[CRepr]
				public struct _Delete_e__Struct
				{
					public CF_CALLBACK_DELETE_FLAGS Flags;
				}
				[CRepr]
				public struct _Dehydrate_e__Struct
				{
					public CF_CALLBACK_DEHYDRATE_FLAGS Flags;
					public CF_CALLBACK_DEHYDRATION_REASON Reason;
				}
				[CRepr]
				public struct _OpenCompletion_e__Struct
				{
					public CF_CALLBACK_OPEN_COMPLETION_FLAGS Flags;
				}
				[CRepr]
				public struct _ValidateData_e__Struct
				{
					public CF_CALLBACK_VALIDATE_DATA_FLAGS Flags;
					public LARGE_INTEGER RequiredFileOffset;
					public LARGE_INTEGER RequiredLength;
				}
				[CRepr]
				public struct _Cancel_e__Struct
				{
					public CF_CALLBACK_CANCEL_FLAGS Flags;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public _FetchData_e__Struct FetchData;
						
						[CRepr]
						public struct _FetchData_e__Struct
						{
							public LARGE_INTEGER FileOffset;
							public LARGE_INTEGER Length;
						}
					}
				}
				[CRepr]
				public struct _RenameCompletion_e__Struct
				{
					public CF_CALLBACK_RENAME_COMPLETION_FLAGS Flags;
					public PWSTR SourcePath;
				}
				[CRepr]
				public struct _DehydrateCompletion_e__Struct
				{
					public CF_CALLBACK_DEHYDRATE_COMPLETION_FLAGS Flags;
					public CF_CALLBACK_DEHYDRATION_REASON Reason;
				}
				[CRepr]
				public struct _FetchPlaceholders_e__Struct
				{
					public CF_CALLBACK_FETCH_PLACEHOLDERS_FLAGS Flags;
					public PWSTR Pattern;
				}
				[CRepr]
				public struct _DeleteCompletion_e__Struct
				{
					public CF_CALLBACK_DELETE_COMPLETION_FLAGS Flags;
				}
				[CRepr]
				public struct _FetchData_e__Struct
				{
					public CF_CALLBACK_FETCH_DATA_FLAGS Flags;
					public LARGE_INTEGER RequiredFileOffset;
					public LARGE_INTEGER RequiredLength;
					public LARGE_INTEGER OptionalFileOffset;
					public LARGE_INTEGER OptionalLength;
					public LARGE_INTEGER LastDehydrationTime;
					public CF_CALLBACK_DEHYDRATION_REASON LastDehydrationReason;
				}
				[CRepr]
				public struct _CloseCompletion_e__Struct
				{
					public CF_CALLBACK_CLOSE_COMPLETION_FLAGS Flags;
				}
			}
		}
		[CRepr]
		public struct CF_CALLBACK_REGISTRATION
		{
			public CF_CALLBACK_TYPE Type;
			public CF_CALLBACK Callback;
		}
		[CRepr]
		public struct CF_SYNC_STATUS
		{
			public uint32 StructSize;
			public uint32 Code;
			public uint32 DescriptionOffset;
			public uint32 DescriptionLength;
			public uint32 DeviceIdOffset;
			public uint32 DeviceIdLength;
		}
		[CRepr]
		public struct CF_OPERATION_INFO
		{
			public uint32 StructSize;
			public CF_OPERATION_TYPE Type;
			public CF_CONNECTION_KEY ConnectionKey;
			public LARGE_INTEGER TransferKey;
			public CORRELATION_VECTOR* CorrelationVector;
			public CF_SYNC_STATUS* SyncStatus;
			public LARGE_INTEGER RequestKey;
		}
		[CRepr]
		public struct CF_OPERATION_PARAMETERS
		{
			public uint32 ParamSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _TransferData_e__Struct TransferData;
				public _RetrieveData_e__Struct RetrieveData;
				public _AckData_e__Struct AckData;
				public _RestartHydration_e__Struct RestartHydration;
				public _TransferPlaceholders_e__Struct TransferPlaceholders;
				public _AckDehydrate_e__Struct AckDehydrate;
				public _AckRename_e__Struct AckRename;
				public _AckDelete_e__Struct AckDelete;
				
				[CRepr]
				public struct _AckRename_e__Struct
				{
					public CF_OPERATION_ACK_RENAME_FLAGS Flags;
					public NTSTATUS CompletionStatus;
				}
				[CRepr]
				public struct _TransferPlaceholders_e__Struct
				{
					public CF_OPERATION_TRANSFER_PLACEHOLDERS_FLAGS Flags;
					public NTSTATUS CompletionStatus;
					public LARGE_INTEGER PlaceholderTotalCount;
					public CF_PLACEHOLDER_CREATE_INFO* PlaceholderArray;
					public uint32 PlaceholderCount;
					public uint32 EntriesProcessed;
				}
				[CRepr]
				public struct _AckData_e__Struct
				{
					public CF_OPERATION_ACK_DATA_FLAGS Flags;
					public NTSTATUS CompletionStatus;
					public LARGE_INTEGER Offset;
					public LARGE_INTEGER Length;
				}
				[CRepr]
				public struct _TransferData_e__Struct
				{
					public CF_OPERATION_TRANSFER_DATA_FLAGS Flags;
					public NTSTATUS CompletionStatus;
					public void* Buffer;
					public LARGE_INTEGER Offset;
					public LARGE_INTEGER Length;
				}
				[CRepr]
				public struct _AckDelete_e__Struct
				{
					public CF_OPERATION_ACK_DELETE_FLAGS Flags;
					public NTSTATUS CompletionStatus;
				}
				[CRepr]
				public struct _RestartHydration_e__Struct
				{
					public CF_OPERATION_RESTART_HYDRATION_FLAGS Flags;
					public CF_FS_METADATA* FsMetadata;
					public void* FileIdentity;
					public uint32 FileIdentityLength;
				}
				[CRepr]
				public struct _AckDehydrate_e__Struct
				{
					public CF_OPERATION_ACK_DEHYDRATE_FLAGS Flags;
					public NTSTATUS CompletionStatus;
					public void* FileIdentity;
					public uint32 FileIdentityLength;
				}
				[CRepr]
				public struct _RetrieveData_e__Struct
				{
					public CF_OPERATION_RETRIEVE_DATA_FLAGS Flags;
					public void* Buffer;
					public LARGE_INTEGER Offset;
					public LARGE_INTEGER Length;
					public LARGE_INTEGER ReturnedLength;
				}
			}
		}
		[CRepr]
		public struct CF_FILE_RANGE
		{
			public LARGE_INTEGER StartingOffset;
			public LARGE_INTEGER Length;
		}
		[CRepr]
		public struct CF_PLACEHOLDER_BASIC_INFO
		{
			public CF_PIN_STATE PinState;
			public CF_IN_SYNC_STATE InSyncState;
			public LARGE_INTEGER FileId;
			public LARGE_INTEGER SyncRootFileId;
			public uint32 FileIdentityLength;
			public uint8[0] FileIdentity;
		}
		[CRepr]
		public struct CF_PLACEHOLDER_STANDARD_INFO
		{
			public LARGE_INTEGER OnDiskDataSize;
			public LARGE_INTEGER ValidatedDataSize;
			public LARGE_INTEGER ModifiedDataSize;
			public LARGE_INTEGER PropertiesSize;
			public CF_PIN_STATE PinState;
			public CF_IN_SYNC_STATE InSyncState;
			public LARGE_INTEGER FileId;
			public LARGE_INTEGER SyncRootFileId;
			public uint32 FileIdentityLength;
			public uint8[0] FileIdentity;
		}
		[CRepr]
		public struct CF_SYNC_ROOT_BASIC_INFO
		{
			public LARGE_INTEGER SyncRootFileId;
		}
		[CRepr]
		public struct CF_SYNC_ROOT_PROVIDER_INFO
		{
			public CF_SYNC_PROVIDER_STATUS ProviderStatus;
			public char16[256] ProviderName;
			public char16[256] ProviderVersion;
		}
		[CRepr]
		public struct CF_SYNC_ROOT_STANDARD_INFO
		{
			public LARGE_INTEGER SyncRootFileId;
			public CF_HYDRATION_POLICY HydrationPolicy;
			public CF_POPULATION_POLICY PopulationPolicy;
			public CF_INSYNC_POLICY InSyncPolicy;
			public CF_HARDLINK_POLICY HardLinkPolicy;
			public CF_SYNC_PROVIDER_STATUS ProviderStatus;
			public char16[256] ProviderName;
			public char16[256] ProviderVersion;
			public uint32 SyncRootIdentityLength;
			public uint8[0] SyncRootIdentity;
		}
		
		// --- Functions ---
		
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetPlatformInfo(out CF_PLATFORM_INFO PlatformVersion);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfRegisterSyncRoot(PWSTR SyncRootPath, in CF_SYNC_REGISTRATION Registration, in CF_SYNC_POLICIES Policies, CF_REGISTER_FLAGS RegisterFlags);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfUnregisterSyncRoot(PWSTR SyncRootPath);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfConnectSyncRoot(PWSTR SyncRootPath, in CF_CALLBACK_REGISTRATION CallbackTable, void* CallbackContext, CF_CONNECT_FLAGS ConnectFlags, out CF_CONNECTION_KEY ConnectionKey);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfDisconnectSyncRoot(CF_CONNECTION_KEY ConnectionKey);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetTransferKey(HANDLE FileHandle, out LARGE_INTEGER TransferKey);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CfReleaseTransferKey(HANDLE FileHandle, out LARGE_INTEGER TransferKey);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfExecute(in CF_OPERATION_INFO OpInfo, out CF_OPERATION_PARAMETERS OpParams);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfUpdateSyncProviderStatus(CF_CONNECTION_KEY ConnectionKey, CF_SYNC_PROVIDER_STATUS ProviderStatus);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfQuerySyncProviderStatus(CF_CONNECTION_KEY ConnectionKey, out CF_SYNC_PROVIDER_STATUS ProviderStatus);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfReportSyncStatus(PWSTR SyncRootPath, CF_SYNC_STATUS* SyncStatus);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfCreatePlaceholders(PWSTR BaseDirectoryPath, CF_PLACEHOLDER_CREATE_INFO* PlaceholderArray, uint32 PlaceholderCount, CF_CREATE_FLAGS CreateFlags, uint32* EntriesProcessed);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfOpenFileWithOplock(PWSTR FilePath, CF_OPEN_FILE_FLAGS Flags, out HANDLE ProtectedHandle);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN CfReferenceProtectedHandle(HANDLE ProtectedHandle);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CfGetWin32HandleFromProtectedHandle(HANDLE ProtectedHandle);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CfReleaseProtectedHandle(HANDLE ProtectedHandle);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CfCloseHandle(HANDLE FileHandle);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfConvertToPlaceholder(HANDLE FileHandle, void* FileIdentity, uint32 FileIdentityLength, CF_CONVERT_FLAGS ConvertFlags, int64* ConvertUsn, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfUpdatePlaceholder(HANDLE FileHandle, CF_FS_METADATA* FsMetadata, void* FileIdentity, uint32 FileIdentityLength, CF_FILE_RANGE* DehydrateRangeArray, uint32 DehydrateRangeCount, CF_UPDATE_FLAGS UpdateFlags, int64* UpdateUsn, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfRevertPlaceholder(HANDLE FileHandle, CF_REVERT_FLAGS RevertFlags, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfHydratePlaceholder(HANDLE FileHandle, LARGE_INTEGER StartingOffset, LARGE_INTEGER Length, CF_HYDRATE_FLAGS HydrateFlags, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfDehydratePlaceholder(HANDLE FileHandle, LARGE_INTEGER StartingOffset, LARGE_INTEGER Length, CF_DEHYDRATE_FLAGS DehydrateFlags, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfSetPinState(HANDLE FileHandle, CF_PIN_STATE PinState, CF_SET_PIN_FLAGS PinFlags, OVERLAPPED* Overlapped);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfSetInSyncState(HANDLE FileHandle, CF_IN_SYNC_STATE InSyncState, CF_SET_IN_SYNC_FLAGS InSyncFlags, int64* InSyncUsn);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfSetCorrelationVector(HANDLE FileHandle, in CORRELATION_VECTOR CorrelationVector);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetCorrelationVector(HANDLE FileHandle, out CORRELATION_VECTOR CorrelationVector);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CF_PLACEHOLDER_STATE CfGetPlaceholderStateFromAttributeTag(uint32 FileAttributes, uint32 ReparseTag);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CF_PLACEHOLDER_STATE CfGetPlaceholderStateFromFileInfo(void* InfoBuffer, FILE_INFO_BY_HANDLE_CLASS InfoClass);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CF_PLACEHOLDER_STATE CfGetPlaceholderStateFromFindData(in WIN32_FIND_DATAA FindData);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetPlaceholderInfo(HANDLE FileHandle, CF_PLACEHOLDER_INFO_CLASS InfoClass, void* InfoBuffer, uint32 InfoBufferLength, uint32* ReturnedLength);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetSyncRootInfoByPath(PWSTR FilePath, CF_SYNC_ROOT_INFO_CLASS InfoClass, void* InfoBuffer, uint32 InfoBufferLength, uint32* ReturnedLength);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetSyncRootInfoByHandle(HANDLE FileHandle, CF_SYNC_ROOT_INFO_CLASS InfoClass, void* InfoBuffer, uint32 InfoBufferLength, uint32* ReturnedLength);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfGetPlaceholderRangeInfo(HANDLE FileHandle, CF_PLACEHOLDER_RANGE_INFO_CLASS InfoClass, LARGE_INTEGER StartingOffset, LARGE_INTEGER Length, void* InfoBuffer, uint32 InfoBufferLength, uint32* ReturnedLength);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfReportProviderProgress(CF_CONNECTION_KEY ConnectionKey, LARGE_INTEGER TransferKey, LARGE_INTEGER ProviderProgressTotal, LARGE_INTEGER ProviderProgressCompleted);
		[Import("cldapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CfReportProviderProgress2(CF_CONNECTION_KEY ConnectionKey, LARGE_INTEGER TransferKey, LARGE_INTEGER RequestKey, LARGE_INTEGER ProviderProgressTotal, LARGE_INTEGER ProviderProgressCompleted, uint32 TargetSessionId);
	}
}
