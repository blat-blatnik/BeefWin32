using System;

// namespace Storage.Vss
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 VSS_ASSOC_NO_MAX_SPACE = -1;
		public const uint32 VSS_ASSOC_REMOVE = 0;
		public const HRESULT VSS_E_BAD_STATE = -2147212543;
		public const HRESULT VSS_E_UNEXPECTED = -2147212542;
		public const HRESULT VSS_E_PROVIDER_ALREADY_REGISTERED = -2147212541;
		public const HRESULT VSS_E_PROVIDER_NOT_REGISTERED = -2147212540;
		public const HRESULT VSS_E_PROVIDER_VETO = -2147212538;
		public const HRESULT VSS_E_PROVIDER_IN_USE = -2147212537;
		public const HRESULT VSS_E_OBJECT_NOT_FOUND = -2147212536;
		public const HRESULT VSS_S_ASYNC_PENDING = 271113;
		public const HRESULT VSS_S_ASYNC_FINISHED = 271114;
		public const HRESULT VSS_S_ASYNC_CANCELLED = 271115;
		public const HRESULT VSS_E_VOLUME_NOT_SUPPORTED = -2147212532;
		public const HRESULT VSS_E_VOLUME_NOT_SUPPORTED_BY_PROVIDER = -2147212530;
		public const HRESULT VSS_E_OBJECT_ALREADY_EXISTS = -2147212531;
		public const HRESULT VSS_E_UNEXPECTED_PROVIDER_ERROR = -2147212529;
		public const HRESULT VSS_E_CORRUPT_XML_DOCUMENT = -2147212528;
		public const HRESULT VSS_E_INVALID_XML_DOCUMENT = -2147212527;
		public const HRESULT VSS_E_MAXIMUM_NUMBER_OF_VOLUMES_REACHED = -2147212526;
		public const HRESULT VSS_E_FLUSH_WRITES_TIMEOUT = -2147212525;
		public const HRESULT VSS_E_HOLD_WRITES_TIMEOUT = -2147212524;
		public const HRESULT VSS_E_UNEXPECTED_WRITER_ERROR = -2147212523;
		public const HRESULT VSS_E_SNAPSHOT_SET_IN_PROGRESS = -2147212522;
		public const HRESULT VSS_E_MAXIMUM_NUMBER_OF_SNAPSHOTS_REACHED = -2147212521;
		public const HRESULT VSS_E_WRITER_INFRASTRUCTURE = -2147212520;
		public const HRESULT VSS_E_WRITER_NOT_RESPONDING = -2147212519;
		public const HRESULT VSS_E_WRITER_ALREADY_SUBSCRIBED = -2147212518;
		public const HRESULT VSS_E_UNSUPPORTED_CONTEXT = -2147212517;
		public const HRESULT VSS_E_VOLUME_IN_USE = -2147212515;
		public const HRESULT VSS_E_MAXIMUM_DIFFAREA_ASSOCIATIONS_REACHED = -2147212514;
		public const HRESULT VSS_E_INSUFFICIENT_STORAGE = -2147212513;
		public const HRESULT VSS_E_NO_SNAPSHOTS_IMPORTED = -2147212512;
		public const HRESULT VSS_S_SOME_SNAPSHOTS_NOT_IMPORTED = 271137;
		public const HRESULT VSS_E_SOME_SNAPSHOTS_NOT_IMPORTED = -2147212511;
		public const HRESULT VSS_E_MAXIMUM_NUMBER_OF_REMOTE_MACHINES_REACHED = -2147212510;
		public const HRESULT VSS_E_REMOTE_SERVER_UNAVAILABLE = -2147212509;
		public const HRESULT VSS_E_REMOTE_SERVER_UNSUPPORTED = -2147212508;
		public const HRESULT VSS_E_REVERT_IN_PROGRESS = -2147212507;
		public const HRESULT VSS_E_REVERT_VOLUME_LOST = -2147212506;
		public const HRESULT VSS_E_REBOOT_REQUIRED = -2147212505;
		public const HRESULT VSS_E_TRANSACTION_FREEZE_TIMEOUT = -2147212504;
		public const HRESULT VSS_E_TRANSACTION_THAW_TIMEOUT = -2147212503;
		public const HRESULT VSS_E_VOLUME_NOT_LOCAL = -2147212499;
		public const HRESULT VSS_E_CLUSTER_TIMEOUT = -2147212498;
		public const HRESULT VSS_E_WRITERERROR_INCONSISTENTSNAPSHOT = -2147212304;
		public const HRESULT VSS_E_WRITERERROR_OUTOFRESOURCES = -2147212303;
		public const HRESULT VSS_E_WRITERERROR_TIMEOUT = -2147212302;
		public const HRESULT VSS_E_WRITERERROR_RETRYABLE = -2147212301;
		public const HRESULT VSS_E_WRITERERROR_NONRETRYABLE = -2147212300;
		public const HRESULT VSS_E_WRITERERROR_RECOVERY_FAILED = -2147212299;
		public const HRESULT VSS_E_BREAK_REVERT_ID_FAILED = -2147212298;
		public const HRESULT VSS_E_LEGACY_PROVIDER = -2147212297;
		public const HRESULT VSS_E_MISSING_DISK = -2147212296;
		public const HRESULT VSS_E_MISSING_HIDDEN_VOLUME = -2147212295;
		public const HRESULT VSS_E_MISSING_VOLUME = -2147212294;
		public const HRESULT VSS_E_AUTORECOVERY_FAILED = -2147212293;
		public const HRESULT VSS_E_DYNAMIC_DISK_ERROR = -2147212292;
		public const HRESULT VSS_E_NONTRANSPORTABLE_BCD = -2147212291;
		public const HRESULT VSS_E_CANNOT_REVERT_DISKID = -2147212290;
		public const HRESULT VSS_E_RESYNC_IN_PROGRESS = -2147212289;
		public const HRESULT VSS_E_CLUSTER_ERROR = -2147212288;
		public const HRESULT VSS_E_UNSELECTED_VOLUME = -2147212502;
		public const HRESULT VSS_E_SNAPSHOT_NOT_IN_SET = -2147212501;
		public const HRESULT VSS_E_NESTED_VOLUME_LIMIT = -2147212500;
		public const HRESULT VSS_E_NOT_SUPPORTED = -2147212497;
		public const HRESULT VSS_E_WRITERERROR_PARTIAL_FAILURE = -2147212490;
		public const HRESULT VSS_E_ASRERROR_DISK_ASSIGNMENT_FAILED = -2147212287;
		public const HRESULT VSS_E_ASRERROR_DISK_RECREATION_FAILED = -2147212286;
		public const HRESULT VSS_E_ASRERROR_NO_ARCPATH = -2147212285;
		public const HRESULT VSS_E_ASRERROR_MISSING_DYNDISK = -2147212284;
		public const HRESULT VSS_E_ASRERROR_SHARED_CRIDISK = -2147212283;
		public const HRESULT VSS_E_ASRERROR_DATADISK_RDISK0 = -2147212282;
		public const HRESULT VSS_E_ASRERROR_RDISK0_TOOSMALL = -2147212281;
		public const HRESULT VSS_E_ASRERROR_CRITICAL_DISKS_TOO_SMALL = -2147212280;
		public const HRESULT VSS_E_WRITER_STATUS_NOT_AVAILABLE = -2147212279;
		public const HRESULT VSS_E_ASRERROR_DYNAMIC_VHD_NOT_SUPPORTED = -2147212278;
		public const HRESULT VSS_E_CRITICAL_VOLUME_ON_INVALID_DISK = -2147212271;
		public const HRESULT VSS_E_ASRERROR_RDISK_FOR_SYSTEM_DISK_NOT_FOUND = -2147212270;
		public const HRESULT VSS_E_ASRERROR_NO_PHYSICAL_DISK_AVAILABLE = -2147212269;
		public const HRESULT VSS_E_ASRERROR_FIXED_PHYSICAL_DISK_AVAILABLE_AFTER_DISK_EXCLUSION = -2147212268;
		public const HRESULT VSS_E_ASRERROR_CRITICAL_DISK_CANNOT_BE_EXCLUDED = -2147212267;
		public const HRESULT VSS_E_ASRERROR_SYSTEM_PARTITION_HIDDEN = -2147212266;
		public const HRESULT VSS_E_FSS_TIMEOUT = -2147212265;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum VSS_OBJECT_TYPE : int32
		{
			VSS_OBJECT_UNKNOWN = 0,
			VSS_OBJECT_NONE = 1,
			VSS_OBJECT_SNAPSHOT_SET = 2,
			VSS_OBJECT_SNAPSHOT = 3,
			VSS_OBJECT_PROVIDER = 4,
			VSS_OBJECT_TYPE_COUNT = 5,
		}
		[AllowDuplicates]
		public enum VSS_SNAPSHOT_STATE : int32
		{
			VSS_SS_UNKNOWN = 0,
			VSS_SS_PREPARING = 1,
			VSS_SS_PROCESSING_PREPARE = 2,
			VSS_SS_PREPARED = 3,
			VSS_SS_PROCESSING_PRECOMMIT = 4,
			VSS_SS_PRECOMMITTED = 5,
			VSS_SS_PROCESSING_COMMIT = 6,
			VSS_SS_COMMITTED = 7,
			VSS_SS_PROCESSING_POSTCOMMIT = 8,
			VSS_SS_PROCESSING_PREFINALCOMMIT = 9,
			VSS_SS_PREFINALCOMMITTED = 10,
			VSS_SS_PROCESSING_POSTFINALCOMMIT = 11,
			VSS_SS_CREATED = 12,
			VSS_SS_ABORTED = 13,
			VSS_SS_DELETED = 14,
			VSS_SS_POSTCOMMITTED = 15,
			VSS_SS_COUNT = 16,
		}
		[AllowDuplicates]
		public enum VSS_VOLUME_SNAPSHOT_ATTRIBUTES : int32
		{
			VSS_VOLSNAP_ATTR_PERSISTENT = 1,
			VSS_VOLSNAP_ATTR_NO_AUTORECOVERY = 2,
			VSS_VOLSNAP_ATTR_CLIENT_ACCESSIBLE = 4,
			VSS_VOLSNAP_ATTR_NO_AUTO_RELEASE = 8,
			VSS_VOLSNAP_ATTR_NO_WRITERS = 16,
			VSS_VOLSNAP_ATTR_TRANSPORTABLE = 32,
			VSS_VOLSNAP_ATTR_NOT_SURFACED = 64,
			VSS_VOLSNAP_ATTR_NOT_TRANSACTED = 128,
			VSS_VOLSNAP_ATTR_HARDWARE_ASSISTED = 65536,
			VSS_VOLSNAP_ATTR_DIFFERENTIAL = 131072,
			VSS_VOLSNAP_ATTR_PLEX = 262144,
			VSS_VOLSNAP_ATTR_IMPORTED = 524288,
			VSS_VOLSNAP_ATTR_EXPOSED_LOCALLY = 1048576,
			VSS_VOLSNAP_ATTR_EXPOSED_REMOTELY = 2097152,
			VSS_VOLSNAP_ATTR_AUTORECOVER = 4194304,
			VSS_VOLSNAP_ATTR_ROLLBACK_RECOVERY = 8388608,
			VSS_VOLSNAP_ATTR_DELAYED_POSTSNAPSHOT = 16777216,
			VSS_VOLSNAP_ATTR_TXF_RECOVERY = 33554432,
			VSS_VOLSNAP_ATTR_FILE_SHARE = 67108864,
		}
		[AllowDuplicates]
		public enum VSS_SNAPSHOT_CONTEXT : int32
		{
			VSS_CTX_BACKUP = 0,
			VSS_CTX_FILE_SHARE_BACKUP = 16,
			VSS_CTX_NAS_ROLLBACK = 25,
			VSS_CTX_APP_ROLLBACK = 9,
			VSS_CTX_CLIENT_ACCESSIBLE = 29,
			VSS_CTX_CLIENT_ACCESSIBLE_WRITERS = 13,
			VSS_CTX_ALL = -1,
		}
		[AllowDuplicates]
		public enum VSS_PROVIDER_CAPABILITIES : int32
		{
			VSS_PRV_CAPABILITY_LEGACY = 1,
			VSS_PRV_CAPABILITY_COMPLIANT = 2,
			VSS_PRV_CAPABILITY_LUN_REPOINT = 4,
			VSS_PRV_CAPABILITY_LUN_RESYNC = 8,
			VSS_PRV_CAPABILITY_OFFLINE_CREATION = 16,
			VSS_PRV_CAPABILITY_MULTIPLE_IMPORT = 32,
			VSS_PRV_CAPABILITY_RECYCLING = 64,
			VSS_PRV_CAPABILITY_PLEX = 128,
			VSS_PRV_CAPABILITY_DIFFERENTIAL = 256,
			VSS_PRV_CAPABILITY_CLUSTERED = 512,
		}
		[AllowDuplicates]
		public enum VSS_HARDWARE_OPTIONS : int32
		{
			VSS_BREAKEX_FLAG_MASK_LUNS = 1,
			VSS_BREAKEX_FLAG_MAKE_READ_WRITE = 2,
			VSS_BREAKEX_FLAG_REVERT_IDENTITY_ALL = 4,
			VSS_BREAKEX_FLAG_REVERT_IDENTITY_NONE = 8,
			VSS_ONLUNSTATECHANGE_NOTIFY_READ_WRITE = 256,
			VSS_ONLUNSTATECHANGE_NOTIFY_LUN_PRE_RECOVERY = 512,
			VSS_ONLUNSTATECHANGE_NOTIFY_LUN_POST_RECOVERY = 1024,
			VSS_ONLUNSTATECHANGE_DO_MASK_LUNS = 2048,
		}
		[AllowDuplicates]
		public enum VSS_RECOVERY_OPTIONS : int32
		{
			VSS_RECOVERY_REVERT_IDENTITY_ALL = 256,
			VSS_RECOVERY_NO_VOLUME_CHECK = 512,
		}
		[AllowDuplicates]
		public enum VSS_WRITER_STATE : int32
		{
			VSS_WS_UNKNOWN = 0,
			VSS_WS_STABLE = 1,
			VSS_WS_WAITING_FOR_FREEZE = 2,
			VSS_WS_WAITING_FOR_THAW = 3,
			VSS_WS_WAITING_FOR_POST_SNAPSHOT = 4,
			VSS_WS_WAITING_FOR_BACKUP_COMPLETE = 5,
			VSS_WS_FAILED_AT_IDENTIFY = 6,
			VSS_WS_FAILED_AT_PREPARE_BACKUP = 7,
			VSS_WS_FAILED_AT_PREPARE_SNAPSHOT = 8,
			VSS_WS_FAILED_AT_FREEZE = 9,
			VSS_WS_FAILED_AT_THAW = 10,
			VSS_WS_FAILED_AT_POST_SNAPSHOT = 11,
			VSS_WS_FAILED_AT_BACKUP_COMPLETE = 12,
			VSS_WS_FAILED_AT_PRE_RESTORE = 13,
			VSS_WS_FAILED_AT_POST_RESTORE = 14,
			VSS_WS_FAILED_AT_BACKUPSHUTDOWN = 15,
			VSS_WS_COUNT = 16,
		}
		[AllowDuplicates]
		public enum VSS_BACKUP_TYPE : int32
		{
			VSS_BT_UNDEFINED = 0,
			VSS_BT_FULL = 1,
			VSS_BT_INCREMENTAL = 2,
			VSS_BT_DIFFERENTIAL = 3,
			VSS_BT_LOG = 4,
			VSS_BT_COPY = 5,
			VSS_BT_OTHER = 6,
		}
		[AllowDuplicates]
		public enum VSS_RESTORE_TYPE : int32
		{
			VSS_RTYPE_UNDEFINED = 0,
			VSS_RTYPE_BY_COPY = 1,
			VSS_RTYPE_IMPORT = 2,
			VSS_RTYPE_OTHER = 3,
		}
		[AllowDuplicates]
		public enum VSS_ROLLFORWARD_TYPE : int32
		{
			VSS_RF_UNDEFINED = 0,
			VSS_RF_NONE = 1,
			VSS_RF_ALL = 2,
			VSS_RF_PARTIAL = 3,
		}
		[AllowDuplicates]
		public enum VSS_PROVIDER_TYPE : int32
		{
			VSS_PROV_UNKNOWN = 0,
			VSS_PROV_SYSTEM = 1,
			VSS_PROV_SOFTWARE = 2,
			VSS_PROV_HARDWARE = 3,
			VSS_PROV_FILESHARE = 4,
		}
		[AllowDuplicates]
		public enum VSS_APPLICATION_LEVEL : int32
		{
			VSS_APP_UNKNOWN = 0,
			VSS_APP_SYSTEM = 1,
			VSS_APP_BACK_END = 2,
			VSS_APP_FRONT_END = 3,
			VSS_APP_SYSTEM_RM = 4,
			VSS_APP_AUTO = -1,
		}
		[AllowDuplicates]
		public enum VSS_SNAPSHOT_COMPATIBILITY : int32
		{
			VSS_SC_DISABLE_DEFRAG = 1,
			VSS_SC_DISABLE_CONTENTINDEX = 2,
		}
		[AllowDuplicates]
		public enum VSS_SNAPSHOT_PROPERTY_ID : int32
		{
			VSS_SPROPID_UNKNOWN = 0,
			VSS_SPROPID_SNAPSHOT_ID = 1,
			VSS_SPROPID_SNAPSHOT_SET_ID = 2,
			VSS_SPROPID_SNAPSHOTS_COUNT = 3,
			VSS_SPROPID_SNAPSHOT_DEVICE = 4,
			VSS_SPROPID_ORIGINAL_VOLUME = 5,
			VSS_SPROPID_ORIGINATING_MACHINE = 6,
			VSS_SPROPID_SERVICE_MACHINE = 7,
			VSS_SPROPID_EXPOSED_NAME = 8,
			VSS_SPROPID_EXPOSED_PATH = 9,
			VSS_SPROPID_PROVIDER_ID = 10,
			VSS_SPROPID_SNAPSHOT_ATTRIBUTES = 11,
			VSS_SPROPID_CREATION_TIMESTAMP = 12,
			VSS_SPROPID_STATUS = 13,
		}
		[AllowDuplicates]
		public enum VSS_FILE_SPEC_BACKUP_TYPE : int32
		{
			VSS_FSBT_FULL_BACKUP_REQUIRED = 1,
			VSS_FSBT_DIFFERENTIAL_BACKUP_REQUIRED = 2,
			VSS_FSBT_INCREMENTAL_BACKUP_REQUIRED = 4,
			VSS_FSBT_LOG_BACKUP_REQUIRED = 8,
			VSS_FSBT_FULL_SNAPSHOT_REQUIRED = 256,
			VSS_FSBT_DIFFERENTIAL_SNAPSHOT_REQUIRED = 512,
			VSS_FSBT_INCREMENTAL_SNAPSHOT_REQUIRED = 1024,
			VSS_FSBT_LOG_SNAPSHOT_REQUIRED = 2048,
			VSS_FSBT_CREATED_DURING_BACKUP = 65536,
			VSS_FSBT_ALL_BACKUP_REQUIRED = 15,
			VSS_FSBT_ALL_SNAPSHOT_REQUIRED = 3840,
		}
		[AllowDuplicates]
		public enum VSS_BACKUP_SCHEMA : int32
		{
			VSS_BS_UNDEFINED = 0,
			VSS_BS_DIFFERENTIAL = 1,
			VSS_BS_INCREMENTAL = 2,
			VSS_BS_EXCLUSIVE_INCREMENTAL_DIFFERENTIAL = 4,
			VSS_BS_LOG = 8,
			VSS_BS_COPY = 16,
			VSS_BS_TIMESTAMPED = 32,
			VSS_BS_LAST_MODIFY = 64,
			VSS_BS_LSN = 128,
			VSS_BS_WRITER_SUPPORTS_NEW_TARGET = 256,
			VSS_BS_WRITER_SUPPORTS_RESTORE_WITH_MOVE = 512,
			VSS_BS_INDEPENDENT_SYSTEM_STATE = 1024,
			VSS_BS_ROLLFORWARD_RESTORE = 4096,
			VSS_BS_RESTORE_RENAME = 8192,
			VSS_BS_AUTHORITATIVE_RESTORE = 16384,
			VSS_BS_WRITER_SUPPORTS_PARALLEL_RESTORES = 32768,
		}
		[AllowDuplicates]
		public enum VSS_USAGE_TYPE : int32
		{
			VSS_UT_UNDEFINED = 0,
			VSS_UT_BOOTABLESYSTEMSTATE = 1,
			VSS_UT_SYSTEMSERVICE = 2,
			VSS_UT_USERDATA = 3,
			VSS_UT_OTHER = 4,
		}
		[AllowDuplicates]
		public enum VSS_SOURCE_TYPE : int32
		{
			VSS_ST_UNDEFINED = 0,
			VSS_ST_TRANSACTEDDB = 1,
			VSS_ST_NONTRANSACTEDDB = 2,
			VSS_ST_OTHER = 3,
		}
		[AllowDuplicates]
		public enum VSS_RESTOREMETHOD_ENUM : int32
		{
			VSS_RME_UNDEFINED = 0,
			VSS_RME_RESTORE_IF_NOT_THERE = 1,
			VSS_RME_RESTORE_IF_CAN_REPLACE = 2,
			VSS_RME_STOP_RESTORE_START = 3,
			VSS_RME_RESTORE_TO_ALTERNATE_LOCATION = 4,
			VSS_RME_RESTORE_AT_REBOOT = 5,
			VSS_RME_RESTORE_AT_REBOOT_IF_CANNOT_REPLACE = 6,
			VSS_RME_CUSTOM = 7,
			VSS_RME_RESTORE_STOP_START = 8,
		}
		[AllowDuplicates]
		public enum VSS_WRITERRESTORE_ENUM : int32
		{
			VSS_WRE_UNDEFINED = 0,
			VSS_WRE_NEVER = 1,
			VSS_WRE_IF_REPLACE_FAILS = 2,
			VSS_WRE_ALWAYS = 3,
		}
		[AllowDuplicates]
		public enum VSS_COMPONENT_TYPE : int32
		{
			VSS_CT_UNDEFINED = 0,
			VSS_CT_DATABASE = 1,
			VSS_CT_FILEGROUP = 2,
		}
		[AllowDuplicates]
		public enum VSS_ALTERNATE_WRITER_STATE : int32
		{
			VSS_AWS_UNDEFINED = 0,
			VSS_AWS_NO_ALTERNATE_WRITER = 1,
			VSS_AWS_ALTERNATE_WRITER_EXISTS = 2,
			VSS_AWS_THIS_IS_ALTERNATE_WRITER = 3,
		}
		[AllowDuplicates]
		public enum VSS_SUBSCRIBE_MASK : int32
		{
			VSS_SM_POST_SNAPSHOT_FLAG = 1,
			VSS_SM_BACKUP_EVENTS_FLAG = 2,
			VSS_SM_RESTORE_EVENTS_FLAG = 4,
			VSS_SM_IO_THROTTLING_FLAG = 8,
			VSS_SM_ALL_FLAGS = -1,
		}
		[AllowDuplicates]
		public enum VSS_RESTORE_TARGET : int32
		{
			VSS_RT_UNDEFINED = 0,
			VSS_RT_ORIGINAL = 1,
			VSS_RT_ALTERNATE = 2,
			VSS_RT_DIRECTED = 3,
			VSS_RT_ORIGINAL_LOCATION = 4,
		}
		[AllowDuplicates]
		public enum VSS_FILE_RESTORE_STATUS : int32
		{
			VSS_RS_UNDEFINED = 0,
			VSS_RS_NONE = 1,
			VSS_RS_ALL = 2,
			VSS_RS_FAILED = 3,
		}
		[AllowDuplicates]
		public enum VSS_COMPONENT_FLAGS : int32
		{
			VSS_CF_BACKUP_RECOVERY = 1,
			VSS_CF_APP_ROLLBACK_RECOVERY = 2,
			VSS_CF_NOT_SYSTEM_STATE = 4,
		}
		[AllowDuplicates]
		public enum VSS_MGMT_OBJECT_TYPE : int32
		{
			VSS_MGMT_OBJECT_UNKNOWN = 0,
			VSS_MGMT_OBJECT_VOLUME = 1,
			VSS_MGMT_OBJECT_DIFF_VOLUME = 2,
			VSS_MGMT_OBJECT_DIFF_AREA = 3,
		}
		[AllowDuplicates]
		public enum VSS_PROTECTION_LEVEL : int32
		{
			VSS_PROTECTION_LEVEL_ORIGINAL_VOLUME = 0,
			VSS_PROTECTION_LEVEL_SNAPSHOT = 1,
		}
		[AllowDuplicates]
		public enum VSS_PROTECTION_FAULT : int32
		{
			VSS_PROTECTION_FAULT_NONE = 0,
			VSS_PROTECTION_FAULT_DIFF_AREA_MISSING = 1,
			VSS_PROTECTION_FAULT_IO_FAILURE_DURING_ONLINE = 2,
			VSS_PROTECTION_FAULT_META_DATA_CORRUPTION = 3,
			VSS_PROTECTION_FAULT_MEMORY_ALLOCATION_FAILURE = 4,
			VSS_PROTECTION_FAULT_MAPPED_MEMORY_FAILURE = 5,
			VSS_PROTECTION_FAULT_COW_READ_FAILURE = 6,
			VSS_PROTECTION_FAULT_COW_WRITE_FAILURE = 7,
			VSS_PROTECTION_FAULT_DIFF_AREA_FULL = 8,
			VSS_PROTECTION_FAULT_GROW_TOO_SLOW = 9,
			VSS_PROTECTION_FAULT_GROW_FAILED = 10,
			VSS_PROTECTION_FAULT_DESTROY_ALL_SNAPSHOTS = 11,
			VSS_PROTECTION_FAULT_FILE_SYSTEM_FAILURE = 12,
			VSS_PROTECTION_FAULT_IO_FAILURE = 13,
			VSS_PROTECTION_FAULT_DIFF_AREA_REMOVED = 14,
			VSS_PROTECTION_FAULT_EXTERNAL_WRITER_TO_DIFF_AREA = 15,
			VSS_PROTECTION_FAULT_MOUNT_DURING_CLUSTER_OFFLINE = 16,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct VSS_SNAPSHOT_PROP
		{
			public Guid m_SnapshotId;
			public Guid m_SnapshotSetId;
			public int32 m_lSnapshotsCount;
			public uint16* m_pwszSnapshotDeviceObject;
			public uint16* m_pwszOriginalVolumeName;
			public uint16* m_pwszOriginatingMachine;
			public uint16* m_pwszServiceMachine;
			public uint16* m_pwszExposedName;
			public uint16* m_pwszExposedPath;
			public Guid m_ProviderId;
			public int32 m_lSnapshotAttributes;
			public int64 m_tsCreationTimestamp;
			public VSS_SNAPSHOT_STATE m_eStatus;
		}
		[CRepr]
		public struct VSS_PROVIDER_PROP
		{
			public Guid m_ProviderId;
			public uint16* m_pwszProviderName;
			public VSS_PROVIDER_TYPE m_eProviderType;
			public uint16* m_pwszProviderVersion;
			public Guid m_ProviderVersionId;
			public Guid m_ClassId;
		}
		[CRepr, Union]
		public struct VSS_OBJECT_UNION
		{
			public VSS_SNAPSHOT_PROP Snap;
			public VSS_PROVIDER_PROP Prov;
		}
		[CRepr]
		public struct VSS_OBJECT_PROP
		{
			public VSS_OBJECT_TYPE Type;
			public VSS_OBJECT_UNION Obj;
		}
		[CRepr]
		public struct IVssExamineWriterMetadata
		{
		}
		[CRepr]
		public struct VSS_VOLUME_PROP
		{
			public uint16* m_pwszVolumeName;
			public uint16* m_pwszVolumeDisplayName;
		}
		[CRepr]
		public struct VSS_DIFF_VOLUME_PROP
		{
			public uint16* m_pwszVolumeName;
			public uint16* m_pwszVolumeDisplayName;
			public int64 m_llVolumeFreeSpace;
			public int64 m_llVolumeTotalSpace;
		}
		[CRepr]
		public struct VSS_DIFF_AREA_PROP
		{
			public uint16* m_pwszVolumeName;
			public uint16* m_pwszDiffAreaVolumeName;
			public int64 m_llMaximumDiffSpace;
			public int64 m_llAllocatedDiffSpace;
			public int64 m_llUsedDiffSpace;
		}
		[CRepr, Union]
		public struct VSS_MGMT_OBJECT_UNION
		{
			public VSS_VOLUME_PROP Vol;
			public VSS_DIFF_VOLUME_PROP DiffVol;
			public VSS_DIFF_AREA_PROP DiffArea;
		}
		[CRepr]
		public struct VSS_MGMT_OBJECT_PROP
		{
			public VSS_MGMT_OBJECT_TYPE Type;
			public VSS_MGMT_OBJECT_UNION Obj;
		}
		[CRepr]
		public struct VSS_VOLUME_PROTECTION_INFO
		{
			public VSS_PROTECTION_LEVEL m_protectionLevel;
			public BOOL m_volumeIsOfflineForProtection;
			public VSS_PROTECTION_FAULT m_protectionFault;
			public int32 m_failureStatus;
			public BOOL m_volumeHasUnusedDiffArea;
			public uint32 m_reserved;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_VssSnapshotMgmt = .(0x0b5a2c52, 0x3eb9, 0x470a, 0x96, 0xe2, 0x6c, 0x6d, 0x45, 0x70, 0xe4, 0x0f);
		public const Guid CLSID_VSSCoordinator = .(0xe579ab5f, 0x1cc4, 0x44b4, 0xbe, 0xd9, 0xde, 0x09, 0x91, 0xff, 0x06, 0x23);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IVssEnumObject : IUnknown
		{
			public const new Guid IID = .(0xae1c7110, 0x2f60, 0x11d3, 0x8a, 0x39, 0x00, 0xc0, 0x4f, 0x72, 0xd8, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssEnumObject *self, uint32 celt, VSS_OBJECT_PROP* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IVssEnumObject *self, uint32 celt) Skip;
				public function HRESULT(IVssEnumObject *self) Reset;
				public function HRESULT(IVssEnumObject *self, IVssEnumObject** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAsync : IUnknown
		{
			public const new Guid IID = .(0x507c37b4, 0xcf5b, 0x4e95, 0xb0, 0xaf, 0x14, 0xeb, 0x97, 0x67, 0x46, 0x7e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssAsync *self) Cancel;
				public function HRESULT(IVssAsync *self, uint32 dwMilliseconds) Wait;
				public function HRESULT(IVssAsync *self, HRESULT* pHrResult, int32* pReserved) QueryStatus;
			}
		}
		[CRepr]
		public struct IVssWMFiledesc : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssWMFiledesc *self, BSTR* pbstrPath) GetPath;
				public function HRESULT(IVssWMFiledesc *self, BSTR* pbstrFilespec) GetFilespec;
				public function HRESULT(IVssWMFiledesc *self, Boolean* pbRecursive) GetRecursive;
				public function HRESULT(IVssWMFiledesc *self, BSTR* pbstrAlternateLocation) GetAlternateLocation;
				public function HRESULT(IVssWMFiledesc *self, uint32* pdwTypeMask) GetBackupTypeMask;
			}
		}
		[CRepr]
		public struct IVssWMDependency : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssWMDependency *self, Guid* pWriterId) GetWriterId;
				public function HRESULT(IVssWMDependency *self, BSTR* pbstrLogicalPath) GetLogicalPath;
				public function HRESULT(IVssWMDependency *self, BSTR* pbstrComponentName) GetComponentName;
			}
		}
		[CRepr]
		public struct IVssComponent : IUnknown
		{
			public const new Guid IID = .(0xd2c72c96, 0xc121, 0x4518, 0xb6, 0x27, 0xe5, 0xa9, 0x3d, 0x01, 0x0e, 0xad);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssComponent *self, BSTR* pbstrPath) GetLogicalPath;
				public function HRESULT(IVssComponent *self, VSS_COMPONENT_TYPE* pct) GetComponentType;
				public function HRESULT(IVssComponent *self, BSTR* pbstrName) GetComponentName;
				public function HRESULT(IVssComponent *self, Boolean* pbSucceeded) GetBackupSucceeded;
				public function HRESULT(IVssComponent *self, uint32* pcMappings) GetAlternateLocationMappingCount;
				public function HRESULT(IVssComponent *self, uint32 iMapping, IVssWMFiledesc** ppFiledesc) GetAlternateLocationMapping;
				public function HRESULT(IVssComponent *self, PWSTR wszData) SetBackupMetadata;
				public function HRESULT(IVssComponent *self, BSTR* pbstrData) GetBackupMetadata;
				public function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilename, PWSTR wszRanges, PWSTR wszMetadata) AddPartialFile;
				public function HRESULT(IVssComponent *self, uint32* pcPartialFiles) GetPartialFileCount;
				public function HRESULT(IVssComponent *self, uint32 iPartialFile, BSTR* pbstrPath, BSTR* pbstrFilename, BSTR* pbstrRange, BSTR* pbstrMetadata) GetPartialFile;
				public function HRESULT(IVssComponent *self, Boolean* pbSelectedForRestore) IsSelectedForRestore;
				public function HRESULT(IVssComponent *self, Boolean* pbAdditionalRestores) GetAdditionalRestores;
				public function HRESULT(IVssComponent *self, uint32* pcNewTarget) GetNewTargetCount;
				public function HRESULT(IVssComponent *self, uint32 iNewTarget, IVssWMFiledesc** ppFiledesc) GetNewTarget;
				public function HRESULT(IVssComponent *self, PWSTR wszSourcePath, PWSTR wszSourceFilename, PWSTR wszSourceRangeList, PWSTR wszDestinationPath, PWSTR wszDestinationFilename, PWSTR wszDestinationRangeList) AddDirectedTarget;
				public function HRESULT(IVssComponent *self, uint32* pcDirectedTarget) GetDirectedTargetCount;
				public function HRESULT(IVssComponent *self, uint32 iDirectedTarget, BSTR* pbstrSourcePath, BSTR* pbstrSourceFileName, BSTR* pbstrSourceRangeList, BSTR* pbstrDestinationPath, BSTR* pbstrDestinationFilename, BSTR* pbstrDestinationRangeList) GetDirectedTarget;
				public function HRESULT(IVssComponent *self, PWSTR wszRestoreMetadata) SetRestoreMetadata;
				public function HRESULT(IVssComponent *self, BSTR* pbstrRestoreMetadata) GetRestoreMetadata;
				public function HRESULT(IVssComponent *self, VSS_RESTORE_TARGET target) SetRestoreTarget;
				public function HRESULT(IVssComponent *self, VSS_RESTORE_TARGET* pTarget) GetRestoreTarget;
				public function HRESULT(IVssComponent *self, PWSTR wszPreRestoreFailureMsg) SetPreRestoreFailureMsg;
				public function HRESULT(IVssComponent *self, BSTR* pbstrPreRestoreFailureMsg) GetPreRestoreFailureMsg;
				public function HRESULT(IVssComponent *self, PWSTR wszPostRestoreFailureMsg) SetPostRestoreFailureMsg;
				public function HRESULT(IVssComponent *self, BSTR* pbstrPostRestoreFailureMsg) GetPostRestoreFailureMsg;
				public function HRESULT(IVssComponent *self, PWSTR wszBackupStamp) SetBackupStamp;
				public function HRESULT(IVssComponent *self, BSTR* pbstrBackupStamp) GetBackupStamp;
				public function HRESULT(IVssComponent *self, BSTR* pbstrBackupStamp) GetPreviousBackupStamp;
				public function HRESULT(IVssComponent *self, BSTR* pbstrBackupOptions) GetBackupOptions;
				public function HRESULT(IVssComponent *self, BSTR* pbstrRestoreOptions) GetRestoreOptions;
				public function HRESULT(IVssComponent *self, uint32* pcRestoreSubcomponent) GetRestoreSubcomponentCount;
				public function HRESULT(IVssComponent *self, uint32 iComponent, BSTR* pbstrLogicalPath, BSTR* pbstrComponentName, Boolean* pbRepair) GetRestoreSubcomponent;
				public function HRESULT(IVssComponent *self, VSS_FILE_RESTORE_STATUS* pStatus) GetFileRestoreStatus;
				public function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, FILETIME ftLastModifyTime) AddDifferencedFilesByLastModifyTime;
				public function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, BSTR bstrLsnString) AddDifferencedFilesByLastModifyLSN;
				public function HRESULT(IVssComponent *self, uint32* pcDifferencedFiles) GetDifferencedFilesCount;
				public function HRESULT(IVssComponent *self, uint32 iDifferencedFile, BSTR* pbstrPath, BSTR* pbstrFilespec, BOOL* pbRecursive, BSTR* pbstrLsnString, FILETIME* pftLastModifyTime) GetDifferencedFile;
			}
		}
		[CRepr]
		public struct IVssWriterComponents
		{
			protected VTable* vt;
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable
			{
				public function HRESULT(IVssWriterComponents *self, uint32* pcComponents) GetComponentCount;
				public function HRESULT(IVssWriterComponents *self, Guid* pidInstance, Guid* pidWriter) GetWriterInfo;
				public function HRESULT(IVssWriterComponents *self, uint32 iComponent, IVssComponent** ppComponent) GetComponent;
			}
		}
		[CRepr]
		public struct IVssComponentEx : IVssComponent
		{
			public const new Guid IID = .(0x156c8b5e, 0xf131, 0x4bd7, 0x9c, 0x97, 0xd1, 0x92, 0x3b, 0xe7, 0xe1, 0xfa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssComponent.VTable
			{
				public function HRESULT(IVssComponentEx *self, PWSTR wszFailureMsg) SetPrepareForBackupFailureMsg;
				public function HRESULT(IVssComponentEx *self, PWSTR wszFailureMsg) SetPostSnapshotFailureMsg;
				public function HRESULT(IVssComponentEx *self, BSTR* pbstrFailureMsg) GetPrepareForBackupFailureMsg;
				public function HRESULT(IVssComponentEx *self, BSTR* pbstrFailureMsg) GetPostSnapshotFailureMsg;
				public function HRESULT(IVssComponentEx *self, Boolean* pbAuth) GetAuthoritativeRestore;
				public function HRESULT(IVssComponentEx *self, VSS_ROLLFORWARD_TYPE* pRollType, BSTR* pbstrPoint) GetRollForward;
				public function HRESULT(IVssComponentEx *self, BSTR* pbstrName) GetRestoreName;
			}
		}
		[CRepr]
		public struct IVssComponentEx2 : IVssComponentEx
		{
			public const new Guid IID = .(0x3b5be0f2, 0x07a9, 0x4e4b, 0xbd, 0xd3, 0xcf, 0xdc, 0x8e, 0x2c, 0x0d, 0x2d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssComponentEx.VTable
			{
				public function HRESULT(IVssComponentEx2 *self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage, uint32 dwReserved) SetFailure;
				public function HRESULT(IVssComponentEx2 *self, HRESULT* phr, HRESULT* phrApplication, BSTR* pbstrApplicationMessage, uint32* pdwReserved) GetFailure;
			}
		}
		[CRepr]
		public struct IVssCreateWriterMetadata
		{
			protected VTable* vt;
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable
			{
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation) AddIncludeFiles;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public function HRESULT(IVssCreateWriterMetadata *self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseFiles;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseLogFiles;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public function HRESULT(IVssCreateWriterMetadata *self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszSourcePath, PWSTR wszSourceFilespec, uint8 bRecursive, PWSTR wszDestination) AddAlternateLocationMapping;
				public function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public function HRESULT(IVssCreateWriterMetadata *self, uint32 dwSchemaMask) SetBackupSchema;
				public function HRESULT(IVssCreateWriterMetadata *self, IXMLDOMDocument** pDoc) GetDocument;
				public function HRESULT(IVssCreateWriterMetadata *self, BSTR* pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssWriterImpl : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssWriterImpl *self, Guid writerId, PWSTR wszWriterName, PWSTR wszWriterInstanceName, uint32 dwMajorVersion, uint32 dwMinorVersion, VSS_USAGE_TYPE ut, VSS_SOURCE_TYPE st, VSS_APPLICATION_LEVEL nLevel, uint32 dwTimeout, VSS_ALTERNATE_WRITER_STATE aws, uint8 bIOThrottlingOnly) Initialize;
				public function HRESULT(IVssWriterImpl *self, uint32 dwSubscribeTimeout, uint32 dwEventFlags) Subscribe;
				public function HRESULT(IVssWriterImpl *self) Unsubscribe;
				public function void(IVssWriterImpl *self) Uninitialize;
				public function PWSTR*(IVssWriterImpl *self) GetCurrentVolumeArray;
				public function uint32(IVssWriterImpl *self) GetCurrentVolumeCount;
				public function HRESULT(IVssWriterImpl *self, PWSTR wszOriginalVolume, PWSTR* ppwszSnapshotDevice) GetSnapshotDeviceName;
				public function Guid(IVssWriterImpl *self) GetCurrentSnapshotSetId;
				public function int32(IVssWriterImpl *self) GetContext;
				public function VSS_APPLICATION_LEVEL(IVssWriterImpl *self) GetCurrentLevel;
				public function Boolean(IVssWriterImpl *self, PWSTR wszPath) IsPathAffected;
				public function Boolean(IVssWriterImpl *self) IsBootableSystemStateBackedUp;
				public function Boolean(IVssWriterImpl *self) AreComponentsSelected;
				public function VSS_BACKUP_TYPE(IVssWriterImpl *self) GetBackupType;
				public function VSS_RESTORE_TYPE(IVssWriterImpl *self) GetRestoreType;
				public function HRESULT(IVssWriterImpl *self, HRESULT hr) SetWriterFailure;
				public function Boolean(IVssWriterImpl *self) IsPartialFileSupportEnabled;
				public function HRESULT(IVssWriterImpl *self, Guid idWriter, Guid clsid) InstallAlternateWriter;
				public function IVssExamineWriterMetadata*(IVssWriterImpl *self) GetIdentityInformation;
				public function HRESULT(IVssWriterImpl *self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage) SetWriterFailureEx;
				public function HRESULT(IVssWriterImpl *self, Guid* idSession) GetSessionId;
				public function Boolean(IVssWriterImpl *self) IsWriterShuttingDown;
			}
		}
		[CRepr]
		public struct IVssCreateExpressWriterMetadata : IUnknown
		{
			public const new Guid IID = .(0x9c772e77, 0xb26e, 0x427f, 0x92, 0xdd, 0xc9, 0x96, 0xf4, 0x1e, 0xa5, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, uint32 dwSchemaMask) SetBackupSchema;
				public function HRESULT(IVssCreateExpressWriterMetadata *self, BSTR* pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssExpressWriter : IUnknown
		{
			public const new Guid IID = .(0xe33affdc, 0x59c7, 0x47b1, 0x97, 0xd5, 0x42, 0x66, 0x59, 0x8f, 0x62, 0x35);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssExpressWriter *self, Guid writerId, PWSTR writerName, VSS_USAGE_TYPE usageType, uint32 versionMajor, uint32 versionMinor, uint32 reserved, IVssCreateExpressWriterMetadata** ppMetadata) CreateMetadata;
				public function HRESULT(IVssExpressWriter *self, PWSTR metadata, uint32 reserved) LoadMetadata;
				public function HRESULT(IVssExpressWriter *self) Register;
				public function HRESULT(IVssExpressWriter *self, Guid writerId) Unregister;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0xfa7df749, 0x66e7, 0x4986, 0xa2, 0x7f, 0xe2, 0xf0, 0x4a, 0xe5, 0x37, 0x72);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssSnapshotMgmt *self, Guid ProviderId, Guid* InterfaceId, IUnknown** ppItf) GetProviderMgmtInterface;
				public function HRESULT(IVssSnapshotMgmt *self, Guid ProviderId, int32 lContext, IVssEnumMgmtObject** ppEnum) QueryVolumesSupportedForSnapshots;
				public function HRESULT(IVssSnapshotMgmt *self, uint16* pwszVolumeName, Guid ProviderId, IVssEnumObject** ppEnum) QuerySnapshotsByVolume;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt2 : IUnknown
		{
			public const new Guid IID = .(0x0f61ec39, 0xfe82, 0x45f2, 0xa3, 0xf0, 0x76, 0x8b, 0x5d, 0x42, 0x71, 0x02);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssSnapshotMgmt2 *self, int64* pllMinDiffAreaSize) GetMinDiffAreaSize;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0x214a0f28, 0xb737, 0x4026, 0xb8, 0x47, 0x4f, 0x9e, 0x37, 0xd7, 0x95, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) AddDiffArea;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) ChangeDiffAreaMaximumSize;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszOriginalVolumeName, IVssEnumMgmtObject** ppEnum) QueryVolumesSupportedForDiffAreas;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) QueryDiffAreasForVolume;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) QueryDiffAreasOnVolume;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, Guid SnapshotId, IVssEnumMgmtObject** ppEnum) QueryDiffAreasForSnapshot;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt2 : IVssDifferentialSoftwareSnapshotMgmt
		{
			public const new Guid IID = .(0x949d7353, 0x675f, 0x4275, 0x89, 0x69, 0xf0, 0x44, 0xc6, 0x27, 0x78, 0x15);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt.VTable
			{
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace, BOOL bVolatile) ChangeDiffAreaMaximumSizeEx;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, uint16* pwszNewDiffAreaVolumeName) MigrateDiffAreas;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, IVssAsync** ppAsync) QueryMigrationStatus;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, Guid idSnapshot, uint8 priority) SetSnapshotPriority;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt3 : IVssDifferentialSoftwareSnapshotMgmt2
		{
			public const new Guid IID = .(0x383f7e71, 0xa4c5, 0x401f, 0xb2, 0x7f, 0xf8, 0x26, 0x28, 0x9f, 0x84, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt2.VTable
			{
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName, VSS_PROTECTION_LEVEL protectionLevel) SetVolumeProtectLevel;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName, VSS_VOLUME_PROTECTION_INFO* protectionLevel) GetVolumeProtectLevel;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName) ClearVolumeProtectFault;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszDiffAreaVolumeName) DeleteUnusedDiffAreas;
				public function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, Guid idSnapshotOlder, Guid idSnapshotYounger, uint32* pcBlockSizePerBit, uint32* pcBitmapLength, uint8** ppbBitmap) QuerySnapshotDeltaBitmap;
			}
		}
		[CRepr]
		public struct IVssEnumMgmtObject : IUnknown
		{
			public const new Guid IID = .(0x01954e6b, 0x9254, 0x4e6e, 0x80, 0x8c, 0xc9, 0xe0, 0x5d, 0x00, 0x76, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssEnumMgmtObject *self, uint32 celt, VSS_MGMT_OBJECT_PROP* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IVssEnumMgmtObject *self, uint32 celt) Skip;
				public function HRESULT(IVssEnumMgmtObject *self) Reset;
				public function HRESULT(IVssEnumMgmtObject *self, IVssEnumMgmtObject** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAdmin : IUnknown
		{
			public const new Guid IID = .(0x77ed5996, 0x2f63, 0x11d3, 0x8a, 0x39, 0x00, 0xc0, 0x4f, 0x72, 0xd8, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssAdmin *self, Guid pProviderId, Guid ClassId, uint16* pwszProviderName, VSS_PROVIDER_TYPE eProviderType, uint16* pwszProviderVersion, Guid ProviderVersionId) RegisterProvider;
				public function HRESULT(IVssAdmin *self, Guid ProviderId) UnregisterProvider;
				public function HRESULT(IVssAdmin *self, IVssEnumObject** ppEnum) QueryProviders;
				public function HRESULT(IVssAdmin *self) AbortAllSnapshotsInProgress;
			}
		}
		[CRepr]
		public struct IVssAdminEx : IVssAdmin
		{
			public const new Guid IID = .(0x7858a9f8, 0xb1fa, 0x41a6, 0x96, 0x4f, 0xb9, 0xb3, 0x6b, 0x8c, 0xd8, 0xd8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssAdmin.VTable
			{
				public function HRESULT(IVssAdminEx *self, Guid pProviderId, uint64* pllOriginalCapabilityMask) GetProviderCapability;
				public function HRESULT(IVssAdminEx *self, Guid ProviderId, int32* plContext) GetProviderContext;
				public function HRESULT(IVssAdminEx *self, Guid ProviderId, int32 lContext) SetProviderContext;
			}
		}
		[CRepr]
		public struct IVssSoftwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x609e123e, 0x2c5a, 0x44d3, 0x8f, 0x01, 0x0b, 0x1d, 0x9a, 0x47, 0xd1, 0xff);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssSoftwareSnapshotProvider *self, int32 lContext) SetContext;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) GetSnapshotProperties;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) Query;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) DeleteSnapshots;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, uint16* pwszVolumeName, int32 lNewContext) BeginPrepareSnapshot;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolumeName, BOOL* pbSupportedByThisProvider) IsVolumeSupported;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolumeName, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) IsVolumeSnapshotted;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId) RevertToSnapshot;
				public function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolume, IVssAsync** ppAsync) QueryRevertStatus;
			}
		}
		[CRepr]
		public struct IVssProviderCreateSnapshotSet : IUnknown
		{
			public const new Guid IID = .(0x5f894e5b, 0x1e39, 0x4778, 0x8e, 0x23, 0x9a, 0xba, 0xd9, 0xf0, 0xe0, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) EndPrepareSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PreCommitSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) CommitSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId, int32 lSnapshotsCount) PostCommitSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PreFinalCommitSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PostFinalCommitSnapshots;
				public function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) AbortSnapshots;
			}
		}
		[CRepr]
		public struct IVssProviderNotifications : IUnknown
		{
			public const new Guid IID = .(0xe561901f, 0x03a5, 0x4afe, 0x86, 0xd0, 0x72, 0xba, 0xee, 0xce, 0x70, 0x04);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssProviderNotifications *self, IUnknown* pCallback) OnLoad;
				public function HRESULT(IVssProviderNotifications *self, BOOL bForceUnload) OnUnload;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x9593a157, 0x44e9, 0x4344, 0xbb, 0xeb, 0x44, 0xfb, 0xf9, 0xb0, 0x6b, 0x10);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, int32 lContext, uint16** rgwszDevices, VDS_LUN_INFORMATION* pLunInformation, BOOL* pbIsSupported) AreLunsSupported;
				public function HRESULT(IVssHardwareSnapshotProvider *self, uint16* wszDeviceName, VDS_LUN_INFORMATION* pLunInfo, BOOL* pbIsSupported) FillInLunInfo;
				public function HRESULT(IVssHardwareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, int32 lContext, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgLunInformation) BeginPrepareSnapshot;
				public function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgSourceLuns, VDS_LUN_INFORMATION* rgDestinationLuns) GetTargetLuns;
				public function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, VDS_LUN_INFORMATION* rgSourceLuns) LocateLuns;
				public function HRESULT(IVssHardwareSnapshotProvider *self, uint16* wszDeviceName, VDS_LUN_INFORMATION* pInformation) OnLunEmpty;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProviderEx : IVssHardwareSnapshotProvider
		{
			public const new Guid IID = .(0x7f5ba925, 0xcdb1, 0x4d11, 0xa7, 0x1f, 0x33, 0x9e, 0xb7, 0xe7, 0x09, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVssHardwareSnapshotProvider.VTable
			{
				public function HRESULT(IVssHardwareSnapshotProviderEx *self, uint64* pllOriginalCapabilityMask) GetProviderCapabilities;
				public function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount, uint32 dwFlags) OnLunStateChange;
				public function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSourceLuns, VDS_LUN_INFORMATION* pTargetLuns, uint32 dwCount, IVssAsync** ppAsync) ResyncLuns;
				public function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount) OnReuseLuns;
			}
		}
		[CRepr]
		public struct IVssFileShareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0xc8636060, 0x7c2e, 0x11df, 0x8c, 0x4a, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVssFileShareSnapshotProvider *self, int32 lContext) SetContext;
				public function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) GetSnapshotProperties;
				public function HRESULT(IVssFileShareSnapshotProvider *self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) Query;
				public function HRESULT(IVssFileShareSnapshotProvider *self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) DeleteSnapshots;
				public function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, uint16* pwszSharePath, int32 lNewContext, Guid ProviderId) BeginPrepareSnapshot;
				public function HRESULT(IVssFileShareSnapshotProvider *self, uint16* pwszSharePath, BOOL* pbSupportedByThisProvider) IsPathSupported;
				public function HRESULT(IVssFileShareSnapshotProvider *self, uint16* pwszSharePath, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) IsPathSnapshotted;
				public function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
			}
		}
		
		// --- Functions ---
		
		[Import("vssapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateVssExpressWriterInternal(IVssExpressWriter** ppWriter);
		
	}
}
