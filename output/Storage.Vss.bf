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
		
		public enum VSS_OBJECT_TYPE : int32
		{
			UNKNOWN = 0,
			NONE = 1,
			SNAPSHOT_SET = 2,
			SNAPSHOT = 3,
			PROVIDER = 4,
			TYPE_COUNT = 5,
		}
		public enum VSS_SNAPSHOT_STATE : int32
		{
			UNKNOWN = 0,
			PREPARING = 1,
			PROCESSING_PREPARE = 2,
			PREPARED = 3,
			PROCESSING_PRECOMMIT = 4,
			PRECOMMITTED = 5,
			PROCESSING_COMMIT = 6,
			COMMITTED = 7,
			PROCESSING_POSTCOMMIT = 8,
			PROCESSING_PREFINALCOMMIT = 9,
			PREFINALCOMMITTED = 10,
			PROCESSING_POSTFINALCOMMIT = 11,
			CREATED = 12,
			ABORTED = 13,
			DELETED = 14,
			POSTCOMMITTED = 15,
			COUNT = 16,
		}
		public enum VSS_VOLUME_SNAPSHOT_ATTRIBUTES : int32
		{
			PERSISTENT = 1,
			NO_AUTORECOVERY = 2,
			CLIENT_ACCESSIBLE = 4,
			NO_AUTO_RELEASE = 8,
			NO_WRITERS = 16,
			TRANSPORTABLE = 32,
			NOT_SURFACED = 64,
			NOT_TRANSACTED = 128,
			HARDWARE_ASSISTED = 65536,
			DIFFERENTIAL = 131072,
			PLEX = 262144,
			IMPORTED = 524288,
			EXPOSED_LOCALLY = 1048576,
			EXPOSED_REMOTELY = 2097152,
			AUTORECOVER = 4194304,
			ROLLBACK_RECOVERY = 8388608,
			DELAYED_POSTSNAPSHOT = 16777216,
			TXF_RECOVERY = 33554432,
			FILE_SHARE = 67108864,
		}
		public enum VSS_SNAPSHOT_CONTEXT : int32
		{
			BACKUP = 0,
			FILE_SHARE_BACKUP = 16,
			NAS_ROLLBACK = 25,
			APP_ROLLBACK = 9,
			CLIENT_ACCESSIBLE = 29,
			CLIENT_ACCESSIBLE_WRITERS = 13,
			ALL = -1,
		}
		public enum VSS_PROVIDER_CAPABILITIES : int32
		{
			LEGACY = 1,
			COMPLIANT = 2,
			LUN_REPOINT = 4,
			LUN_RESYNC = 8,
			OFFLINE_CREATION = 16,
			MULTIPLE_IMPORT = 32,
			RECYCLING = 64,
			PLEX = 128,
			DIFFERENTIAL = 256,
			CLUSTERED = 512,
		}
		public enum VSS_HARDWARE_OPTIONS : int32
		{
			BREAKEX_FLAG_MASK_LUNS = 1,
			BREAKEX_FLAG_MAKE_READ_WRITE = 2,
			BREAKEX_FLAG_REVERT_IDENTITY_ALL = 4,
			BREAKEX_FLAG_REVERT_IDENTITY_NONE = 8,
			ONLUNSTATECHANGE_NOTIFY_READ_WRITE = 256,
			ONLUNSTATECHANGE_NOTIFY_LUN_PRE_RECOVERY = 512,
			ONLUNSTATECHANGE_NOTIFY_LUN_POST_RECOVERY = 1024,
			ONLUNSTATECHANGE_DO_MASK_LUNS = 2048,
		}
		public enum VSS_RECOVERY_OPTIONS : int32
		{
			REVERT_IDENTITY_ALL = 256,
			NO_VOLUME_CHECK = 512,
		}
		public enum VSS_WRITER_STATE : int32
		{
			UNKNOWN = 0,
			STABLE = 1,
			WAITING_FOR_FREEZE = 2,
			WAITING_FOR_THAW = 3,
			WAITING_FOR_POST_SNAPSHOT = 4,
			WAITING_FOR_BACKUP_COMPLETE = 5,
			FAILED_AT_IDENTIFY = 6,
			FAILED_AT_PREPARE_BACKUP = 7,
			FAILED_AT_PREPARE_SNAPSHOT = 8,
			FAILED_AT_FREEZE = 9,
			FAILED_AT_THAW = 10,
			FAILED_AT_POST_SNAPSHOT = 11,
			FAILED_AT_BACKUP_COMPLETE = 12,
			FAILED_AT_PRE_RESTORE = 13,
			FAILED_AT_POST_RESTORE = 14,
			FAILED_AT_BACKUPSHUTDOWN = 15,
			COUNT = 16,
		}
		public enum VSS_BACKUP_TYPE : int32
		{
			UNDEFINED = 0,
			FULL = 1,
			INCREMENTAL = 2,
			DIFFERENTIAL = 3,
			LOG = 4,
			COPY = 5,
			OTHER = 6,
		}
		public enum VSS_RESTORE_TYPE : int32
		{
			UNDEFINED = 0,
			BY_COPY = 1,
			IMPORT = 2,
			OTHER = 3,
		}
		public enum VSS_ROLLFORWARD_TYPE : int32
		{
			UNDEFINED = 0,
			NONE = 1,
			ALL = 2,
			PARTIAL = 3,
		}
		public enum VSS_PROVIDER_TYPE : int32
		{
			UNKNOWN = 0,
			SYSTEM = 1,
			SOFTWARE = 2,
			HARDWARE = 3,
			FILESHARE = 4,
		}
		public enum VSS_APPLICATION_LEVEL : int32
		{
			UNKNOWN = 0,
			SYSTEM = 1,
			BACK_END = 2,
			FRONT_END = 3,
			SYSTEM_RM = 4,
			AUTO = -1,
		}
		public enum VSS_SNAPSHOT_COMPATIBILITY : int32
		{
			DEFRAG = 1,
			CONTENTINDEX = 2,
		}
		public enum VSS_SNAPSHOT_PROPERTY_ID : int32
		{
			UNKNOWN = 0,
			SNAPSHOT_ID = 1,
			SNAPSHOT_SET_ID = 2,
			SNAPSHOTS_COUNT = 3,
			SNAPSHOT_DEVICE = 4,
			ORIGINAL_VOLUME = 5,
			ORIGINATING_MACHINE = 6,
			SERVICE_MACHINE = 7,
			EXPOSED_NAME = 8,
			EXPOSED_PATH = 9,
			PROVIDER_ID = 10,
			SNAPSHOT_ATTRIBUTES = 11,
			CREATION_TIMESTAMP = 12,
			STATUS = 13,
		}
		public enum VSS_FILE_SPEC_BACKUP_TYPE : int32
		{
			FULL_BACKUP_REQUIRED = 1,
			DIFFERENTIAL_BACKUP_REQUIRED = 2,
			INCREMENTAL_BACKUP_REQUIRED = 4,
			LOG_BACKUP_REQUIRED = 8,
			FULL_SNAPSHOT_REQUIRED = 256,
			DIFFERENTIAL_SNAPSHOT_REQUIRED = 512,
			INCREMENTAL_SNAPSHOT_REQUIRED = 1024,
			LOG_SNAPSHOT_REQUIRED = 2048,
			CREATED_DURING_BACKUP = 65536,
			ALL_BACKUP_REQUIRED = 15,
			ALL_SNAPSHOT_REQUIRED = 3840,
		}
		public enum VSS_BACKUP_SCHEMA : int32
		{
			UNDEFINED = 0,
			DIFFERENTIAL = 1,
			INCREMENTAL = 2,
			EXCLUSIVE_INCREMENTAL_DIFFERENTIAL = 4,
			LOG = 8,
			COPY = 16,
			TIMESTAMPED = 32,
			LAST_MODIFY = 64,
			LSN = 128,
			WRITER_SUPPORTS_NEW_TARGET = 256,
			WRITER_SUPPORTS_RESTORE_WITH_MOVE = 512,
			INDEPENDENT_SYSTEM_STATE = 1024,
			ROLLFORWARD_RESTORE = 4096,
			RESTORE_RENAME = 8192,
			AUTHORITATIVE_RESTORE = 16384,
			WRITER_SUPPORTS_PARALLEL_RESTORES = 32768,
		}
		public enum VSS_USAGE_TYPE : int32
		{
			UNDEFINED = 0,
			BOOTABLESYSTEMSTATE = 1,
			SYSTEMSERVICE = 2,
			USERDATA = 3,
			OTHER = 4,
		}
		public enum VSS_SOURCE_TYPE : int32
		{
			UNDEFINED = 0,
			TRANSACTEDDB = 1,
			NONTRANSACTEDDB = 2,
			OTHER = 3,
		}
		public enum VSS_RESTOREMETHOD_ENUM : int32
		{
			UNDEFINED = 0,
			RESTORE_IF_NOT_THERE = 1,
			RESTORE_IF_CAN_REPLACE = 2,
			STOP_RESTORE_START = 3,
			RESTORE_TO_ALTERNATE_LOCATION = 4,
			RESTORE_AT_REBOOT = 5,
			RESTORE_AT_REBOOT_IF_CANNOT_REPLACE = 6,
			CUSTOM = 7,
			RESTORE_STOP_START = 8,
		}
		public enum VSS_WRITERRESTORE_ENUM : int32
		{
			UNDEFINED = 0,
			NEVER = 1,
			IF_REPLACE_FAILS = 2,
			ALWAYS = 3,
		}
		public enum VSS_COMPONENT_TYPE : int32
		{
			UNDEFINED = 0,
			DATABASE = 1,
			FILEGROUP = 2,
		}
		public enum VSS_ALTERNATE_WRITER_STATE : int32
		{
			UNDEFINED = 0,
			NO_ALTERNATE_WRITER = 1,
			ALTERNATE_WRITER_EXISTS = 2,
			THIS_IS_ALTERNATE_WRITER = 3,
		}
		public enum VSS_SUBSCRIBE_MASK : int32
		{
			POST_SNAPSHOT_FLAG = 1,
			BACKUP_EVENTS_FLAG = 2,
			RESTORE_EVENTS_FLAG = 4,
			IO_THROTTLING_FLAG = 8,
			ALL_FLAGS = -1,
		}
		public enum VSS_RESTORE_TARGET : int32
		{
			UNDEFINED = 0,
			ORIGINAL = 1,
			ALTERNATE = 2,
			DIRECTED = 3,
			ORIGINAL_LOCATION = 4,
		}
		public enum VSS_FILE_RESTORE_STATUS : int32
		{
			UNDEFINED = 0,
			NONE = 1,
			ALL = 2,
			FAILED = 3,
		}
		public enum VSS_COMPONENT_FLAGS : int32
		{
			BACKUP_RECOVERY = 1,
			APP_ROLLBACK_RECOVERY = 2,
			NOT_SYSTEM_STATE = 4,
		}
		public enum VSS_MGMT_OBJECT_TYPE : int32
		{
			UNKNOWN = 0,
			VOLUME = 1,
			DIFF_VOLUME = 2,
			DIFF_AREA = 3,
		}
		public enum VSS_PROTECTION_LEVEL : int32
		{
			ORIGINAL_VOLUME = 0,
			SNAPSHOT = 1,
		}
		public enum VSS_PROTECTION_FAULT : int32
		{
			NONE = 0,
			DIFF_AREA_MISSING = 1,
			IO_FAILURE_DURING_ONLINE = 2,
			META_DATA_CORRUPTION = 3,
			MEMORY_ALLOCATION_FAILURE = 4,
			MAPPED_MEMORY_FAILURE = 5,
			COW_READ_FAILURE = 6,
			COW_WRITE_FAILURE = 7,
			DIFF_AREA_FULL = 8,
			GROW_TOO_SLOW = 9,
			GROW_FAILED = 10,
			DESTROY_ALL_SNAPSHOTS = 11,
			FILE_SYSTEM_FAILURE = 12,
			IO_FAILURE = 13,
			DIFF_AREA_REMOVED = 14,
			EXTERNAL_WRITER_TO_DIFF_AREA = 15,
			MOUNT_DURING_CLUSTER_OFFLINE = 16,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VSS_OBJECT_PROP* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IVssEnumObject** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssEnumObject *self, uint32 celt, VSS_OBJECT_PROP* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IVssEnumObject *self, uint32 celt) Skip;
				public new function HRESULT(IVssEnumObject *self) Reset;
				public new function HRESULT(IVssEnumObject *self, IVssEnumObject** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAsync : IUnknown
		{
			public const new Guid IID = .(0x507c37b4, 0xcf5b, 0x4e95, 0xb0, 0xaf, 0x14, 0xeb, 0x97, 0x67, 0x46, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT Wait(uint32 dwMilliseconds) mut
			{
				return VT.Wait(&this, dwMilliseconds);
			}
			public HRESULT QueryStatus(HRESULT* pHrResult, int32* pReserved) mut
			{
				return VT.QueryStatus(&this, pHrResult, pReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssAsync *self) Cancel;
				public new function HRESULT(IVssAsync *self, uint32 dwMilliseconds) Wait;
				public new function HRESULT(IVssAsync *self, HRESULT* pHrResult, int32* pReserved) QueryStatus;
			}
		}
		[CRepr]
		public struct IVssWMFiledesc : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPath(BSTR* pbstrPath) mut
			{
				return VT.GetPath(&this, pbstrPath);
			}
			public HRESULT GetFilespec(BSTR* pbstrFilespec) mut
			{
				return VT.GetFilespec(&this, pbstrFilespec);
			}
			public HRESULT GetRecursive(Boolean* pbRecursive) mut
			{
				return VT.GetRecursive(&this, pbRecursive);
			}
			public HRESULT GetAlternateLocation(BSTR* pbstrAlternateLocation) mut
			{
				return VT.GetAlternateLocation(&this, pbstrAlternateLocation);
			}
			public HRESULT GetBackupTypeMask(uint32* pdwTypeMask) mut
			{
				return VT.GetBackupTypeMask(&this, pdwTypeMask);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssWMFiledesc *self, BSTR* pbstrPath) GetPath;
				public new function HRESULT(IVssWMFiledesc *self, BSTR* pbstrFilespec) GetFilespec;
				public new function HRESULT(IVssWMFiledesc *self, Boolean* pbRecursive) GetRecursive;
				public new function HRESULT(IVssWMFiledesc *self, BSTR* pbstrAlternateLocation) GetAlternateLocation;
				public new function HRESULT(IVssWMFiledesc *self, uint32* pdwTypeMask) GetBackupTypeMask;
			}
		}
		[CRepr]
		public struct IVssWMDependency : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWriterId(Guid* pWriterId) mut
			{
				return VT.GetWriterId(&this, pWriterId);
			}
			public HRESULT GetLogicalPath(BSTR* pbstrLogicalPath) mut
			{
				return VT.GetLogicalPath(&this, pbstrLogicalPath);
			}
			public HRESULT GetComponentName(BSTR* pbstrComponentName) mut
			{
				return VT.GetComponentName(&this, pbstrComponentName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssWMDependency *self, Guid* pWriterId) GetWriterId;
				public new function HRESULT(IVssWMDependency *self, BSTR* pbstrLogicalPath) GetLogicalPath;
				public new function HRESULT(IVssWMDependency *self, BSTR* pbstrComponentName) GetComponentName;
			}
		}
		[CRepr]
		public struct IVssComponent : IUnknown
		{
			public const new Guid IID = .(0xd2c72c96, 0xc121, 0x4518, 0xb6, 0x27, 0xe5, 0xa9, 0x3d, 0x01, 0x0e, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogicalPath(BSTR* pbstrPath) mut
			{
				return VT.GetLogicalPath(&this, pbstrPath);
			}
			public HRESULT GetComponentType(VSS_COMPONENT_TYPE* pct) mut
			{
				return VT.GetComponentType(&this, pct);
			}
			public HRESULT GetComponentName(BSTR* pbstrName) mut
			{
				return VT.GetComponentName(&this, pbstrName);
			}
			public HRESULT GetBackupSucceeded(Boolean* pbSucceeded) mut
			{
				return VT.GetBackupSucceeded(&this, pbSucceeded);
			}
			public HRESULT GetAlternateLocationMappingCount(uint32* pcMappings) mut
			{
				return VT.GetAlternateLocationMappingCount(&this, pcMappings);
			}
			public HRESULT GetAlternateLocationMapping(uint32 iMapping, IVssWMFiledesc** ppFiledesc) mut
			{
				return VT.GetAlternateLocationMapping(&this, iMapping, ppFiledesc);
			}
			public HRESULT SetBackupMetadata(PWSTR wszData) mut
			{
				return VT.SetBackupMetadata(&this, wszData);
			}
			public HRESULT GetBackupMetadata(BSTR* pbstrData) mut
			{
				return VT.GetBackupMetadata(&this, pbstrData);
			}
			public HRESULT AddPartialFile(PWSTR wszPath, PWSTR wszFilename, PWSTR wszRanges, PWSTR wszMetadata) mut
			{
				return VT.AddPartialFile(&this, wszPath, wszFilename, wszRanges, wszMetadata);
			}
			public HRESULT GetPartialFileCount(uint32* pcPartialFiles) mut
			{
				return VT.GetPartialFileCount(&this, pcPartialFiles);
			}
			public HRESULT GetPartialFile(uint32 iPartialFile, BSTR* pbstrPath, BSTR* pbstrFilename, BSTR* pbstrRange, BSTR* pbstrMetadata) mut
			{
				return VT.GetPartialFile(&this, iPartialFile, pbstrPath, pbstrFilename, pbstrRange, pbstrMetadata);
			}
			public HRESULT IsSelectedForRestore(Boolean* pbSelectedForRestore) mut
			{
				return VT.IsSelectedForRestore(&this, pbSelectedForRestore);
			}
			public HRESULT GetAdditionalRestores(Boolean* pbAdditionalRestores) mut
			{
				return VT.GetAdditionalRestores(&this, pbAdditionalRestores);
			}
			public HRESULT GetNewTargetCount(uint32* pcNewTarget) mut
			{
				return VT.GetNewTargetCount(&this, pcNewTarget);
			}
			public HRESULT GetNewTarget(uint32 iNewTarget, IVssWMFiledesc** ppFiledesc) mut
			{
				return VT.GetNewTarget(&this, iNewTarget, ppFiledesc);
			}
			public HRESULT AddDirectedTarget(PWSTR wszSourcePath, PWSTR wszSourceFilename, PWSTR wszSourceRangeList, PWSTR wszDestinationPath, PWSTR wszDestinationFilename, PWSTR wszDestinationRangeList) mut
			{
				return VT.AddDirectedTarget(&this, wszSourcePath, wszSourceFilename, wszSourceRangeList, wszDestinationPath, wszDestinationFilename, wszDestinationRangeList);
			}
			public HRESULT GetDirectedTargetCount(uint32* pcDirectedTarget) mut
			{
				return VT.GetDirectedTargetCount(&this, pcDirectedTarget);
			}
			public HRESULT GetDirectedTarget(uint32 iDirectedTarget, BSTR* pbstrSourcePath, BSTR* pbstrSourceFileName, BSTR* pbstrSourceRangeList, BSTR* pbstrDestinationPath, BSTR* pbstrDestinationFilename, BSTR* pbstrDestinationRangeList) mut
			{
				return VT.GetDirectedTarget(&this, iDirectedTarget, pbstrSourcePath, pbstrSourceFileName, pbstrSourceRangeList, pbstrDestinationPath, pbstrDestinationFilename, pbstrDestinationRangeList);
			}
			public HRESULT SetRestoreMetadata(PWSTR wszRestoreMetadata) mut
			{
				return VT.SetRestoreMetadata(&this, wszRestoreMetadata);
			}
			public HRESULT GetRestoreMetadata(BSTR* pbstrRestoreMetadata) mut
			{
				return VT.GetRestoreMetadata(&this, pbstrRestoreMetadata);
			}
			public HRESULT SetRestoreTarget(VSS_RESTORE_TARGET target) mut
			{
				return VT.SetRestoreTarget(&this, target);
			}
			public HRESULT GetRestoreTarget(VSS_RESTORE_TARGET* pTarget) mut
			{
				return VT.GetRestoreTarget(&this, pTarget);
			}
			public HRESULT SetPreRestoreFailureMsg(PWSTR wszPreRestoreFailureMsg) mut
			{
				return VT.SetPreRestoreFailureMsg(&this, wszPreRestoreFailureMsg);
			}
			public HRESULT GetPreRestoreFailureMsg(BSTR* pbstrPreRestoreFailureMsg) mut
			{
				return VT.GetPreRestoreFailureMsg(&this, pbstrPreRestoreFailureMsg);
			}
			public HRESULT SetPostRestoreFailureMsg(PWSTR wszPostRestoreFailureMsg) mut
			{
				return VT.SetPostRestoreFailureMsg(&this, wszPostRestoreFailureMsg);
			}
			public HRESULT GetPostRestoreFailureMsg(BSTR* pbstrPostRestoreFailureMsg) mut
			{
				return VT.GetPostRestoreFailureMsg(&this, pbstrPostRestoreFailureMsg);
			}
			public HRESULT SetBackupStamp(PWSTR wszBackupStamp) mut
			{
				return VT.SetBackupStamp(&this, wszBackupStamp);
			}
			public HRESULT GetBackupStamp(BSTR* pbstrBackupStamp) mut
			{
				return VT.GetBackupStamp(&this, pbstrBackupStamp);
			}
			public HRESULT GetPreviousBackupStamp(BSTR* pbstrBackupStamp) mut
			{
				return VT.GetPreviousBackupStamp(&this, pbstrBackupStamp);
			}
			public HRESULT GetBackupOptions(BSTR* pbstrBackupOptions) mut
			{
				return VT.GetBackupOptions(&this, pbstrBackupOptions);
			}
			public HRESULT GetRestoreOptions(BSTR* pbstrRestoreOptions) mut
			{
				return VT.GetRestoreOptions(&this, pbstrRestoreOptions);
			}
			public HRESULT GetRestoreSubcomponentCount(uint32* pcRestoreSubcomponent) mut
			{
				return VT.GetRestoreSubcomponentCount(&this, pcRestoreSubcomponent);
			}
			public HRESULT GetRestoreSubcomponent(uint32 iComponent, BSTR* pbstrLogicalPath, BSTR* pbstrComponentName, Boolean* pbRepair) mut
			{
				return VT.GetRestoreSubcomponent(&this, iComponent, pbstrLogicalPath, pbstrComponentName, pbRepair);
			}
			public HRESULT GetFileRestoreStatus(VSS_FILE_RESTORE_STATUS* pStatus) mut
			{
				return VT.GetFileRestoreStatus(&this, pStatus);
			}
			public HRESULT AddDifferencedFilesByLastModifyTime(PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, FILETIME ftLastModifyTime) mut
			{
				return VT.AddDifferencedFilesByLastModifyTime(&this, wszPath, wszFilespec, bRecursive, ftLastModifyTime);
			}
			public HRESULT AddDifferencedFilesByLastModifyLSN(PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, BSTR bstrLsnString) mut
			{
				return VT.AddDifferencedFilesByLastModifyLSN(&this, wszPath, wszFilespec, bRecursive, bstrLsnString);
			}
			public HRESULT GetDifferencedFilesCount(uint32* pcDifferencedFiles) mut
			{
				return VT.GetDifferencedFilesCount(&this, pcDifferencedFiles);
			}
			public HRESULT GetDifferencedFile(uint32 iDifferencedFile, BSTR* pbstrPath, BSTR* pbstrFilespec, BOOL* pbRecursive, BSTR* pbstrLsnString, FILETIME* pftLastModifyTime) mut
			{
				return VT.GetDifferencedFile(&this, iDifferencedFile, pbstrPath, pbstrFilespec, pbRecursive, pbstrLsnString, pftLastModifyTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssComponent *self, BSTR* pbstrPath) GetLogicalPath;
				public new function HRESULT(IVssComponent *self, VSS_COMPONENT_TYPE* pct) GetComponentType;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrName) GetComponentName;
				public new function HRESULT(IVssComponent *self, Boolean* pbSucceeded) GetBackupSucceeded;
				public new function HRESULT(IVssComponent *self, uint32* pcMappings) GetAlternateLocationMappingCount;
				public new function HRESULT(IVssComponent *self, uint32 iMapping, IVssWMFiledesc** ppFiledesc) GetAlternateLocationMapping;
				public new function HRESULT(IVssComponent *self, PWSTR wszData) SetBackupMetadata;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrData) GetBackupMetadata;
				public new function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilename, PWSTR wszRanges, PWSTR wszMetadata) AddPartialFile;
				public new function HRESULT(IVssComponent *self, uint32* pcPartialFiles) GetPartialFileCount;
				public new function HRESULT(IVssComponent *self, uint32 iPartialFile, BSTR* pbstrPath, BSTR* pbstrFilename, BSTR* pbstrRange, BSTR* pbstrMetadata) GetPartialFile;
				public new function HRESULT(IVssComponent *self, Boolean* pbSelectedForRestore) IsSelectedForRestore;
				public new function HRESULT(IVssComponent *self, Boolean* pbAdditionalRestores) GetAdditionalRestores;
				public new function HRESULT(IVssComponent *self, uint32* pcNewTarget) GetNewTargetCount;
				public new function HRESULT(IVssComponent *self, uint32 iNewTarget, IVssWMFiledesc** ppFiledesc) GetNewTarget;
				public new function HRESULT(IVssComponent *self, PWSTR wszSourcePath, PWSTR wszSourceFilename, PWSTR wszSourceRangeList, PWSTR wszDestinationPath, PWSTR wszDestinationFilename, PWSTR wszDestinationRangeList) AddDirectedTarget;
				public new function HRESULT(IVssComponent *self, uint32* pcDirectedTarget) GetDirectedTargetCount;
				public new function HRESULT(IVssComponent *self, uint32 iDirectedTarget, BSTR* pbstrSourcePath, BSTR* pbstrSourceFileName, BSTR* pbstrSourceRangeList, BSTR* pbstrDestinationPath, BSTR* pbstrDestinationFilename, BSTR* pbstrDestinationRangeList) GetDirectedTarget;
				public new function HRESULT(IVssComponent *self, PWSTR wszRestoreMetadata) SetRestoreMetadata;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrRestoreMetadata) GetRestoreMetadata;
				public new function HRESULT(IVssComponent *self, VSS_RESTORE_TARGET target) SetRestoreTarget;
				public new function HRESULT(IVssComponent *self, VSS_RESTORE_TARGET* pTarget) GetRestoreTarget;
				public new function HRESULT(IVssComponent *self, PWSTR wszPreRestoreFailureMsg) SetPreRestoreFailureMsg;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrPreRestoreFailureMsg) GetPreRestoreFailureMsg;
				public new function HRESULT(IVssComponent *self, PWSTR wszPostRestoreFailureMsg) SetPostRestoreFailureMsg;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrPostRestoreFailureMsg) GetPostRestoreFailureMsg;
				public new function HRESULT(IVssComponent *self, PWSTR wszBackupStamp) SetBackupStamp;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrBackupStamp) GetBackupStamp;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrBackupStamp) GetPreviousBackupStamp;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrBackupOptions) GetBackupOptions;
				public new function HRESULT(IVssComponent *self, BSTR* pbstrRestoreOptions) GetRestoreOptions;
				public new function HRESULT(IVssComponent *self, uint32* pcRestoreSubcomponent) GetRestoreSubcomponentCount;
				public new function HRESULT(IVssComponent *self, uint32 iComponent, BSTR* pbstrLogicalPath, BSTR* pbstrComponentName, Boolean* pbRepair) GetRestoreSubcomponent;
				public new function HRESULT(IVssComponent *self, VSS_FILE_RESTORE_STATUS* pStatus) GetFileRestoreStatus;
				public new function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, FILETIME ftLastModifyTime) AddDifferencedFilesByLastModifyTime;
				public new function HRESULT(IVssComponent *self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, BSTR bstrLsnString) AddDifferencedFilesByLastModifyLSN;
				public new function HRESULT(IVssComponent *self, uint32* pcDifferencedFiles) GetDifferencedFilesCount;
				public new function HRESULT(IVssComponent *self, uint32 iDifferencedFile, BSTR* pbstrPath, BSTR* pbstrFilespec, BOOL* pbRecursive, BSTR* pbstrLsnString, FILETIME* pftLastModifyTime) GetDifferencedFile;
			}
		}
		[CRepr]
		public struct IVssWriterComponents
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetComponentCount(uint32* pcComponents) mut
			{
				return VT.GetComponentCount(&this, pcComponents);
			}
			public HRESULT GetWriterInfo(Guid* pidInstance, Guid* pidWriter) mut
			{
				return VT.GetWriterInfo(&this, pidInstance, pidWriter);
			}
			public HRESULT GetComponent(uint32 iComponent, IVssComponent** ppComponent) mut
			{
				return VT.GetComponent(&this, iComponent, ppComponent);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(IVssWriterComponents *self, uint32* pcComponents) GetComponentCount;
				public new function HRESULT(IVssWriterComponents *self, Guid* pidInstance, Guid* pidWriter) GetWriterInfo;
				public new function HRESULT(IVssWriterComponents *self, uint32 iComponent, IVssComponent** ppComponent) GetComponent;
			}
		}
		[CRepr]
		public struct IVssComponentEx : IVssComponent
		{
			public const new Guid IID = .(0x156c8b5e, 0xf131, 0x4bd7, 0x9c, 0x97, 0xd1, 0x92, 0x3b, 0xe7, 0xe1, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrepareForBackupFailureMsg(PWSTR wszFailureMsg) mut
			{
				return VT.SetPrepareForBackupFailureMsg(&this, wszFailureMsg);
			}
			public HRESULT SetPostSnapshotFailureMsg(PWSTR wszFailureMsg) mut
			{
				return VT.SetPostSnapshotFailureMsg(&this, wszFailureMsg);
			}
			public HRESULT GetPrepareForBackupFailureMsg(BSTR* pbstrFailureMsg) mut
			{
				return VT.GetPrepareForBackupFailureMsg(&this, pbstrFailureMsg);
			}
			public HRESULT GetPostSnapshotFailureMsg(BSTR* pbstrFailureMsg) mut
			{
				return VT.GetPostSnapshotFailureMsg(&this, pbstrFailureMsg);
			}
			public HRESULT GetAuthoritativeRestore(Boolean* pbAuth) mut
			{
				return VT.GetAuthoritativeRestore(&this, pbAuth);
			}
			public HRESULT GetRollForward(VSS_ROLLFORWARD_TYPE* pRollType, BSTR* pbstrPoint) mut
			{
				return VT.GetRollForward(&this, pRollType, pbstrPoint);
			}
			public HRESULT GetRestoreName(BSTR* pbstrName) mut
			{
				return VT.GetRestoreName(&this, pbstrName);
			}
			[CRepr]
			public struct VTable : IVssComponent.VTable
			{
				public new function HRESULT(IVssComponentEx *self, PWSTR wszFailureMsg) SetPrepareForBackupFailureMsg;
				public new function HRESULT(IVssComponentEx *self, PWSTR wszFailureMsg) SetPostSnapshotFailureMsg;
				public new function HRESULT(IVssComponentEx *self, BSTR* pbstrFailureMsg) GetPrepareForBackupFailureMsg;
				public new function HRESULT(IVssComponentEx *self, BSTR* pbstrFailureMsg) GetPostSnapshotFailureMsg;
				public new function HRESULT(IVssComponentEx *self, Boolean* pbAuth) GetAuthoritativeRestore;
				public new function HRESULT(IVssComponentEx *self, VSS_ROLLFORWARD_TYPE* pRollType, BSTR* pbstrPoint) GetRollForward;
				public new function HRESULT(IVssComponentEx *self, BSTR* pbstrName) GetRestoreName;
			}
		}
		[CRepr]
		public struct IVssComponentEx2 : IVssComponentEx
		{
			public const new Guid IID = .(0x3b5be0f2, 0x07a9, 0x4e4b, 0xbd, 0xd3, 0xcf, 0xdc, 0x8e, 0x2c, 0x0d, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFailure(HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage, uint32 dwReserved) mut
			{
				return VT.SetFailure(&this, hr, hrApplication, wszApplicationMessage, dwReserved);
			}
			public HRESULT GetFailure(HRESULT* phr, HRESULT* phrApplication, BSTR* pbstrApplicationMessage, uint32* pdwReserved) mut
			{
				return VT.GetFailure(&this, phr, phrApplication, pbstrApplicationMessage, pdwReserved);
			}
			[CRepr]
			public struct VTable : IVssComponentEx.VTable
			{
				public new function HRESULT(IVssComponentEx2 *self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage, uint32 dwReserved) SetFailure;
				public new function HRESULT(IVssComponentEx2 *self, HRESULT* phr, HRESULT* phrApplication, BSTR* pbstrApplicationMessage, uint32* pdwReserved) GetFailure;
			}
		}
		[CRepr]
		public struct IVssCreateWriterMetadata
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddIncludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation) mut
			{
				return VT.AddIncludeFiles(&this, wszPath, wszFilespec, bRecursive, wszAlternateLocation);
			}
			public HRESULT AddExcludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) mut
			{
				return VT.AddExcludeFiles(&this, wszPath, wszFilespec, bRecursive);
			}
			public HRESULT AddComponent(VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) mut
			{
				return VT.AddComponent(&this, ct, wszLogicalPath, wszComponentName, wszCaption, pbIcon, cbIcon, bRestoreMetadata, bNotifyOnBackupComplete, bSelectable, bSelectableForRestore, dwComponentFlags);
			}
			public HRESULT AddDatabaseFiles(PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) mut
			{
				return VT.AddDatabaseFiles(&this, wszLogicalPath, wszDatabaseName, wszPath, wszFilespec, dwBackupTypeMask);
			}
			public HRESULT AddDatabaseLogFiles(PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) mut
			{
				return VT.AddDatabaseLogFiles(&this, wszLogicalPath, wszDatabaseName, wszPath, wszFilespec, dwBackupTypeMask);
			}
			public HRESULT AddFilesToFileGroup(PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) mut
			{
				return VT.AddFilesToFileGroup(&this, wszLogicalPath, wszGroupName, wszPath, wszFilespec, bRecursive, wszAlternateLocation, dwBackupTypeMask);
			}
			public HRESULT SetRestoreMethod(VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) mut
			{
				return VT.SetRestoreMethod(&this, method, wszService, wszUserProcedure, writerRestore, bRebootRequired);
			}
			public HRESULT AddAlternateLocationMapping(PWSTR wszSourcePath, PWSTR wszSourceFilespec, uint8 bRecursive, PWSTR wszDestination) mut
			{
				return VT.AddAlternateLocationMapping(&this, wszSourcePath, wszSourceFilespec, bRecursive, wszDestination);
			}
			public HRESULT AddComponentDependency(PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) mut
			{
				return VT.AddComponentDependency(&this, wszForLogicalPath, wszForComponentName, onWriterId, wszOnLogicalPath, wszOnComponentName);
			}
			public HRESULT SetBackupSchema(uint32 dwSchemaMask) mut
			{
				return VT.SetBackupSchema(&this, dwSchemaMask);
			}
			public HRESULT GetDocument(IXMLDOMDocument** pDoc) mut
			{
				return VT.GetDocument(&this, pDoc);
			}
			public HRESULT SaveAsXML(BSTR* pbstrXML) mut
			{
				return VT.SaveAsXML(&this, pbstrXML);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation) AddIncludeFiles;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public new function HRESULT(IVssCreateWriterMetadata *self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseFiles;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseLogFiles;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public new function HRESULT(IVssCreateWriterMetadata *self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszSourcePath, PWSTR wszSourceFilespec, uint8 bRecursive, PWSTR wszDestination) AddAlternateLocationMapping;
				public new function HRESULT(IVssCreateWriterMetadata *self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public new function HRESULT(IVssCreateWriterMetadata *self, uint32 dwSchemaMask) SetBackupSchema;
				public new function HRESULT(IVssCreateWriterMetadata *self, IXMLDOMDocument** pDoc) GetDocument;
				public new function HRESULT(IVssCreateWriterMetadata *self, BSTR* pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssWriterImpl : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(Guid writerId, PWSTR wszWriterName, PWSTR wszWriterInstanceName, uint32 dwMajorVersion, uint32 dwMinorVersion, VSS_USAGE_TYPE ut, VSS_SOURCE_TYPE st, VSS_APPLICATION_LEVEL nLevel, uint32 dwTimeout, VSS_ALTERNATE_WRITER_STATE aws, uint8 bIOThrottlingOnly) mut
			{
				return VT.Initialize(&this, writerId, wszWriterName, wszWriterInstanceName, dwMajorVersion, dwMinorVersion, ut, st, nLevel, dwTimeout, aws, bIOThrottlingOnly);
			}
			public HRESULT Subscribe(uint32 dwSubscribeTimeout, uint32 dwEventFlags) mut
			{
				return VT.Subscribe(&this, dwSubscribeTimeout, dwEventFlags);
			}
			public HRESULT Unsubscribe() mut
			{
				return VT.Unsubscribe(&this);
			}
			public void Uninitialize() mut
			{
				VT.Uninitialize(&this);
			}
			public PWSTR* GetCurrentVolumeArray() mut
			{
				return VT.GetCurrentVolumeArray(&this);
			}
			public uint32 GetCurrentVolumeCount() mut
			{
				return VT.GetCurrentVolumeCount(&this);
			}
			public HRESULT GetSnapshotDeviceName(PWSTR wszOriginalVolume, PWSTR* ppwszSnapshotDevice) mut
			{
				return VT.GetSnapshotDeviceName(&this, wszOriginalVolume, ppwszSnapshotDevice);
			}
			public Guid GetCurrentSnapshotSetId() mut
			{
				return VT.GetCurrentSnapshotSetId(&this);
			}
			public int32 GetContext() mut
			{
				return VT.GetContext(&this);
			}
			public VSS_APPLICATION_LEVEL GetCurrentLevel() mut
			{
				return VT.GetCurrentLevel(&this);
			}
			public Boolean IsPathAffected(PWSTR wszPath) mut
			{
				return VT.IsPathAffected(&this, wszPath);
			}
			public Boolean IsBootableSystemStateBackedUp() mut
			{
				return VT.IsBootableSystemStateBackedUp(&this);
			}
			public Boolean AreComponentsSelected() mut
			{
				return VT.AreComponentsSelected(&this);
			}
			public VSS_BACKUP_TYPE GetBackupType() mut
			{
				return VT.GetBackupType(&this);
			}
			public VSS_RESTORE_TYPE GetRestoreType() mut
			{
				return VT.GetRestoreType(&this);
			}
			public HRESULT SetWriterFailure(HRESULT hr) mut
			{
				return VT.SetWriterFailure(&this, hr);
			}
			public Boolean IsPartialFileSupportEnabled() mut
			{
				return VT.IsPartialFileSupportEnabled(&this);
			}
			public HRESULT InstallAlternateWriter(Guid idWriter, Guid clsid) mut
			{
				return VT.InstallAlternateWriter(&this, idWriter, clsid);
			}
			public IVssExamineWriterMetadata* GetIdentityInformation() mut
			{
				return VT.GetIdentityInformation(&this);
			}
			public HRESULT SetWriterFailureEx(HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage) mut
			{
				return VT.SetWriterFailureEx(&this, hr, hrApplication, wszApplicationMessage);
			}
			public HRESULT GetSessionId(Guid* idSession) mut
			{
				return VT.GetSessionId(&this, idSession);
			}
			public Boolean IsWriterShuttingDown() mut
			{
				return VT.IsWriterShuttingDown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssWriterImpl *self, Guid writerId, PWSTR wszWriterName, PWSTR wszWriterInstanceName, uint32 dwMajorVersion, uint32 dwMinorVersion, VSS_USAGE_TYPE ut, VSS_SOURCE_TYPE st, VSS_APPLICATION_LEVEL nLevel, uint32 dwTimeout, VSS_ALTERNATE_WRITER_STATE aws, uint8 bIOThrottlingOnly) Initialize;
				public new function HRESULT(IVssWriterImpl *self, uint32 dwSubscribeTimeout, uint32 dwEventFlags) Subscribe;
				public new function HRESULT(IVssWriterImpl *self) Unsubscribe;
				public new function void(IVssWriterImpl *self) Uninitialize;
				public new function PWSTR*(IVssWriterImpl *self) GetCurrentVolumeArray;
				public new function uint32(IVssWriterImpl *self) GetCurrentVolumeCount;
				public new function HRESULT(IVssWriterImpl *self, PWSTR wszOriginalVolume, PWSTR* ppwszSnapshotDevice) GetSnapshotDeviceName;
				public new function Guid(IVssWriterImpl *self) GetCurrentSnapshotSetId;
				public new function int32(IVssWriterImpl *self) GetContext;
				public new function VSS_APPLICATION_LEVEL(IVssWriterImpl *self) GetCurrentLevel;
				public new function Boolean(IVssWriterImpl *self, PWSTR wszPath) IsPathAffected;
				public new function Boolean(IVssWriterImpl *self) IsBootableSystemStateBackedUp;
				public new function Boolean(IVssWriterImpl *self) AreComponentsSelected;
				public new function VSS_BACKUP_TYPE(IVssWriterImpl *self) GetBackupType;
				public new function VSS_RESTORE_TYPE(IVssWriterImpl *self) GetRestoreType;
				public new function HRESULT(IVssWriterImpl *self, HRESULT hr) SetWriterFailure;
				public new function Boolean(IVssWriterImpl *self) IsPartialFileSupportEnabled;
				public new function HRESULT(IVssWriterImpl *self, Guid idWriter, Guid clsid) InstallAlternateWriter;
				public new function IVssExamineWriterMetadata*(IVssWriterImpl *self) GetIdentityInformation;
				public new function HRESULT(IVssWriterImpl *self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage) SetWriterFailureEx;
				public new function HRESULT(IVssWriterImpl *self, Guid* idSession) GetSessionId;
				public new function Boolean(IVssWriterImpl *self) IsWriterShuttingDown;
			}
		}
		[CRepr]
		public struct IVssCreateExpressWriterMetadata : IUnknown
		{
			public const new Guid IID = .(0x9c772e77, 0xb26e, 0x427f, 0x92, 0xdd, 0xc9, 0x96, 0xf4, 0x1e, 0xa5, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExcludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) mut
			{
				return VT.AddExcludeFiles(&this, wszPath, wszFilespec, bRecursive);
			}
			public HRESULT AddComponent(VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) mut
			{
				return VT.AddComponent(&this, ct, wszLogicalPath, wszComponentName, wszCaption, pbIcon, cbIcon, bRestoreMetadata, bNotifyOnBackupComplete, bSelectable, bSelectableForRestore, dwComponentFlags);
			}
			public HRESULT AddFilesToFileGroup(PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) mut
			{
				return VT.AddFilesToFileGroup(&this, wszLogicalPath, wszGroupName, wszPath, wszFilespec, bRecursive, wszAlternateLocation, dwBackupTypeMask);
			}
			public HRESULT SetRestoreMethod(VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) mut
			{
				return VT.SetRestoreMethod(&this, method, wszService, wszUserProcedure, writerRestore, bRebootRequired);
			}
			public HRESULT AddComponentDependency(PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) mut
			{
				return VT.AddComponentDependency(&this, wszForLogicalPath, wszForComponentName, onWriterId, wszOnLogicalPath, wszOnComponentName);
			}
			public HRESULT SetBackupSchema(uint32 dwSchemaMask) mut
			{
				return VT.SetBackupSchema(&this, dwSchemaMask);
			}
			public HRESULT SaveAsXML(BSTR* pbstrXML) mut
			{
				return VT.SaveAsXML(&this, pbstrXML);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, uint8* pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, uint32 dwSchemaMask) SetBackupSchema;
				public new function HRESULT(IVssCreateExpressWriterMetadata *self, BSTR* pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssExpressWriter : IUnknown
		{
			public const new Guid IID = .(0xe33affdc, 0x59c7, 0x47b1, 0x97, 0xd5, 0x42, 0x66, 0x59, 0x8f, 0x62, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMetadata(Guid writerId, PWSTR writerName, VSS_USAGE_TYPE usageType, uint32 versionMajor, uint32 versionMinor, uint32 reserved, IVssCreateExpressWriterMetadata** ppMetadata) mut
			{
				return VT.CreateMetadata(&this, writerId, writerName, usageType, versionMajor, versionMinor, reserved, ppMetadata);
			}
			public HRESULT LoadMetadata(PWSTR metadata, uint32 reserved) mut
			{
				return VT.LoadMetadata(&this, metadata, reserved);
			}
			public HRESULT Register() mut
			{
				return VT.Register(&this);
			}
			public HRESULT Unregister(Guid writerId) mut
			{
				return VT.Unregister(&this, writerId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssExpressWriter *self, Guid writerId, PWSTR writerName, VSS_USAGE_TYPE usageType, uint32 versionMajor, uint32 versionMinor, uint32 reserved, IVssCreateExpressWriterMetadata** ppMetadata) CreateMetadata;
				public new function HRESULT(IVssExpressWriter *self, PWSTR metadata, uint32 reserved) LoadMetadata;
				public new function HRESULT(IVssExpressWriter *self) Register;
				public new function HRESULT(IVssExpressWriter *self, Guid writerId) Unregister;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0xfa7df749, 0x66e7, 0x4986, 0xa2, 0x7f, 0xe2, 0xf0, 0x4a, 0xe5, 0x37, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderMgmtInterface(Guid ProviderId, Guid* InterfaceId, IUnknown** ppItf) mut
			{
				return VT.GetProviderMgmtInterface(&this, ProviderId, InterfaceId, ppItf);
			}
			public HRESULT QueryVolumesSupportedForSnapshots(Guid ProviderId, int32 lContext, IVssEnumMgmtObject** ppEnum) mut
			{
				return VT.QueryVolumesSupportedForSnapshots(&this, ProviderId, lContext, ppEnum);
			}
			public HRESULT QuerySnapshotsByVolume(uint16* pwszVolumeName, Guid ProviderId, IVssEnumObject** ppEnum) mut
			{
				return VT.QuerySnapshotsByVolume(&this, pwszVolumeName, ProviderId, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssSnapshotMgmt *self, Guid ProviderId, Guid* InterfaceId, IUnknown** ppItf) GetProviderMgmtInterface;
				public new function HRESULT(IVssSnapshotMgmt *self, Guid ProviderId, int32 lContext, IVssEnumMgmtObject** ppEnum) QueryVolumesSupportedForSnapshots;
				public new function HRESULT(IVssSnapshotMgmt *self, uint16* pwszVolumeName, Guid ProviderId, IVssEnumObject** ppEnum) QuerySnapshotsByVolume;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt2 : IUnknown
		{
			public const new Guid IID = .(0x0f61ec39, 0xfe82, 0x45f2, 0xa3, 0xf0, 0x76, 0x8b, 0x5d, 0x42, 0x71, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMinDiffAreaSize(int64* pllMinDiffAreaSize) mut
			{
				return VT.GetMinDiffAreaSize(&this, pllMinDiffAreaSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssSnapshotMgmt2 *self, int64* pllMinDiffAreaSize) GetMinDiffAreaSize;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0x214a0f28, 0xb737, 0x4026, 0xb8, 0x47, 0x4f, 0x9e, 0x37, 0xd7, 0x95, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddDiffArea(uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) mut
			{
				return VT.AddDiffArea(&this, pwszVolumeName, pwszDiffAreaVolumeName, llMaximumDiffSpace);
			}
			public HRESULT ChangeDiffAreaMaximumSize(uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) mut
			{
				return VT.ChangeDiffAreaMaximumSize(&this, pwszVolumeName, pwszDiffAreaVolumeName, llMaximumDiffSpace);
			}
			public HRESULT QueryVolumesSupportedForDiffAreas(uint16* pwszOriginalVolumeName, IVssEnumMgmtObject** ppEnum) mut
			{
				return VT.QueryVolumesSupportedForDiffAreas(&this, pwszOriginalVolumeName, ppEnum);
			}
			public HRESULT QueryDiffAreasForVolume(uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) mut
			{
				return VT.QueryDiffAreasForVolume(&this, pwszVolumeName, ppEnum);
			}
			public HRESULT QueryDiffAreasOnVolume(uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) mut
			{
				return VT.QueryDiffAreasOnVolume(&this, pwszVolumeName, ppEnum);
			}
			public HRESULT QueryDiffAreasForSnapshot(Guid SnapshotId, IVssEnumMgmtObject** ppEnum) mut
			{
				return VT.QueryDiffAreasForSnapshot(&this, SnapshotId, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) AddDiffArea;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) ChangeDiffAreaMaximumSize;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszOriginalVolumeName, IVssEnumMgmtObject** ppEnum) QueryVolumesSupportedForDiffAreas;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) QueryDiffAreasForVolume;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, uint16* pwszVolumeName, IVssEnumMgmtObject** ppEnum) QueryDiffAreasOnVolume;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt *self, Guid SnapshotId, IVssEnumMgmtObject** ppEnum) QueryDiffAreasForSnapshot;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt2 : IVssDifferentialSoftwareSnapshotMgmt
		{
			public const new Guid IID = .(0x949d7353, 0x675f, 0x4275, 0x89, 0x69, 0xf0, 0x44, 0xc6, 0x27, 0x78, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangeDiffAreaMaximumSizeEx(uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace, BOOL bVolatile) mut
			{
				return VT.ChangeDiffAreaMaximumSizeEx(&this, pwszVolumeName, pwszDiffAreaVolumeName, llMaximumDiffSpace, bVolatile);
			}
			public HRESULT MigrateDiffAreas(uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, uint16* pwszNewDiffAreaVolumeName) mut
			{
				return VT.MigrateDiffAreas(&this, pwszVolumeName, pwszDiffAreaVolumeName, pwszNewDiffAreaVolumeName);
			}
			public HRESULT QueryMigrationStatus(uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, IVssAsync** ppAsync) mut
			{
				return VT.QueryMigrationStatus(&this, pwszVolumeName, pwszDiffAreaVolumeName, ppAsync);
			}
			public HRESULT SetSnapshotPriority(Guid idSnapshot, uint8 priority) mut
			{
				return VT.SetSnapshotPriority(&this, idSnapshot, priority);
			}
			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt.VTable
			{
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, int64 llMaximumDiffSpace, BOOL bVolatile) ChangeDiffAreaMaximumSizeEx;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, uint16* pwszNewDiffAreaVolumeName) MigrateDiffAreas;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, uint16* pwszVolumeName, uint16* pwszDiffAreaVolumeName, IVssAsync** ppAsync) QueryMigrationStatus;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt2 *self, Guid idSnapshot, uint8 priority) SetSnapshotPriority;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt3 : IVssDifferentialSoftwareSnapshotMgmt2
		{
			public const new Guid IID = .(0x383f7e71, 0xa4c5, 0x401f, 0xb2, 0x7f, 0xf8, 0x26, 0x28, 0x9f, 0x84, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVolumeProtectLevel(uint16* pwszVolumeName, VSS_PROTECTION_LEVEL protectionLevel) mut
			{
				return VT.SetVolumeProtectLevel(&this, pwszVolumeName, protectionLevel);
			}
			public HRESULT GetVolumeProtectLevel(uint16* pwszVolumeName, VSS_VOLUME_PROTECTION_INFO* protectionLevel) mut
			{
				return VT.GetVolumeProtectLevel(&this, pwszVolumeName, protectionLevel);
			}
			public HRESULT ClearVolumeProtectFault(uint16* pwszVolumeName) mut
			{
				return VT.ClearVolumeProtectFault(&this, pwszVolumeName);
			}
			public HRESULT DeleteUnusedDiffAreas(uint16* pwszDiffAreaVolumeName) mut
			{
				return VT.DeleteUnusedDiffAreas(&this, pwszDiffAreaVolumeName);
			}
			public HRESULT QuerySnapshotDeltaBitmap(Guid idSnapshotOlder, Guid idSnapshotYounger, uint32* pcBlockSizePerBit, uint32* pcBitmapLength, uint8** ppbBitmap) mut
			{
				return VT.QuerySnapshotDeltaBitmap(&this, idSnapshotOlder, idSnapshotYounger, pcBlockSizePerBit, pcBitmapLength, ppbBitmap);
			}
			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt2.VTable
			{
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName, VSS_PROTECTION_LEVEL protectionLevel) SetVolumeProtectLevel;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName, VSS_VOLUME_PROTECTION_INFO* protectionLevel) GetVolumeProtectLevel;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszVolumeName) ClearVolumeProtectFault;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, uint16* pwszDiffAreaVolumeName) DeleteUnusedDiffAreas;
				public new function HRESULT(IVssDifferentialSoftwareSnapshotMgmt3 *self, Guid idSnapshotOlder, Guid idSnapshotYounger, uint32* pcBlockSizePerBit, uint32* pcBitmapLength, uint8** ppbBitmap) QuerySnapshotDeltaBitmap;
			}
		}
		[CRepr]
		public struct IVssEnumMgmtObject : IUnknown
		{
			public const new Guid IID = .(0x01954e6b, 0x9254, 0x4e6e, 0x80, 0x8c, 0xc9, 0xe0, 0x5d, 0x00, 0x76, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VSS_MGMT_OBJECT_PROP* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IVssEnumMgmtObject** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssEnumMgmtObject *self, uint32 celt, VSS_MGMT_OBJECT_PROP* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IVssEnumMgmtObject *self, uint32 celt) Skip;
				public new function HRESULT(IVssEnumMgmtObject *self) Reset;
				public new function HRESULT(IVssEnumMgmtObject *self, IVssEnumMgmtObject** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAdmin : IUnknown
		{
			public const new Guid IID = .(0x77ed5996, 0x2f63, 0x11d3, 0x8a, 0x39, 0x00, 0xc0, 0x4f, 0x72, 0xd8, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterProvider(Guid pProviderId, Guid ClassId, uint16* pwszProviderName, VSS_PROVIDER_TYPE eProviderType, uint16* pwszProviderVersion, Guid ProviderVersionId) mut
			{
				return VT.RegisterProvider(&this, pProviderId, ClassId, pwszProviderName, eProviderType, pwszProviderVersion, ProviderVersionId);
			}
			public HRESULT UnregisterProvider(Guid ProviderId) mut
			{
				return VT.UnregisterProvider(&this, ProviderId);
			}
			public HRESULT QueryProviders(IVssEnumObject** ppEnum) mut
			{
				return VT.QueryProviders(&this, ppEnum);
			}
			public HRESULT AbortAllSnapshotsInProgress() mut
			{
				return VT.AbortAllSnapshotsInProgress(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssAdmin *self, Guid pProviderId, Guid ClassId, uint16* pwszProviderName, VSS_PROVIDER_TYPE eProviderType, uint16* pwszProviderVersion, Guid ProviderVersionId) RegisterProvider;
				public new function HRESULT(IVssAdmin *self, Guid ProviderId) UnregisterProvider;
				public new function HRESULT(IVssAdmin *self, IVssEnumObject** ppEnum) QueryProviders;
				public new function HRESULT(IVssAdmin *self) AbortAllSnapshotsInProgress;
			}
		}
		[CRepr]
		public struct IVssAdminEx : IVssAdmin
		{
			public const new Guid IID = .(0x7858a9f8, 0xb1fa, 0x41a6, 0x96, 0x4f, 0xb9, 0xb3, 0x6b, 0x8c, 0xd8, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderCapability(Guid pProviderId, uint64* pllOriginalCapabilityMask) mut
			{
				return VT.GetProviderCapability(&this, pProviderId, pllOriginalCapabilityMask);
			}
			public HRESULT GetProviderContext(Guid ProviderId, int32* plContext) mut
			{
				return VT.GetProviderContext(&this, ProviderId, plContext);
			}
			public HRESULT SetProviderContext(Guid ProviderId, int32 lContext) mut
			{
				return VT.SetProviderContext(&this, ProviderId, lContext);
			}
			[CRepr]
			public struct VTable : IVssAdmin.VTable
			{
				public new function HRESULT(IVssAdminEx *self, Guid pProviderId, uint64* pllOriginalCapabilityMask) GetProviderCapability;
				public new function HRESULT(IVssAdminEx *self, Guid ProviderId, int32* plContext) GetProviderContext;
				public new function HRESULT(IVssAdminEx *self, Guid ProviderId, int32 lContext) SetProviderContext;
			}
		}
		[CRepr]
		public struct IVssSoftwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x609e123e, 0x2c5a, 0x44d3, 0x8f, 0x01, 0x0b, 0x1d, 0x9a, 0x47, 0xd1, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 lContext) mut
			{
				return VT.SetContext(&this, lContext);
			}
			public HRESULT GetSnapshotProperties(Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) mut
			{
				return VT.GetSnapshotProperties(&this, SnapshotId, pProp);
			}
			public HRESULT Query(Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) mut
			{
				return VT.Query(&this, QueriedObjectId, eQueriedObjectType, eReturnedObjectsType, ppEnum);
			}
			public HRESULT DeleteSnapshots(Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) mut
			{
				return VT.DeleteSnapshots(&this, SourceObjectId, eSourceObjectType, bForceDelete, plDeletedSnapshots, pNondeletedSnapshotID);
			}
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, uint16* pwszVolumeName, int32 lNewContext) mut
			{
				return VT.BeginPrepareSnapshot(&this, SnapshotSetId, SnapshotId, pwszVolumeName, lNewContext);
			}
			public HRESULT IsVolumeSupported(uint16* pwszVolumeName, BOOL* pbSupportedByThisProvider) mut
			{
				return VT.IsVolumeSupported(&this, pwszVolumeName, pbSupportedByThisProvider);
			}
			public HRESULT IsVolumeSnapshotted(uint16* pwszVolumeName, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) mut
			{
				return VT.IsVolumeSnapshotted(&this, pwszVolumeName, pbSnapshotsPresent, plSnapshotCompatibility);
			}
			public HRESULT SetSnapshotProperty(Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) mut
			{
				return VT.SetSnapshotProperty(&this, SnapshotId, eSnapshotPropertyId, vProperty);
			}
			public HRESULT RevertToSnapshot(Guid SnapshotId) mut
			{
				return VT.RevertToSnapshot(&this, SnapshotId);
			}
			public HRESULT QueryRevertStatus(uint16* pwszVolume, IVssAsync** ppAsync) mut
			{
				return VT.QueryRevertStatus(&this, pwszVolume, ppAsync);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, int32 lContext) SetContext;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) GetSnapshotProperties;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) Query;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) DeleteSnapshots;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, uint16* pwszVolumeName, int32 lNewContext) BeginPrepareSnapshot;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolumeName, BOOL* pbSupportedByThisProvider) IsVolumeSupported;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolumeName, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) IsVolumeSnapshotted;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, Guid SnapshotId) RevertToSnapshot;
				public new function HRESULT(IVssSoftwareSnapshotProvider *self, uint16* pwszVolume, IVssAsync** ppAsync) QueryRevertStatus;
			}
		}
		[CRepr]
		public struct IVssProviderCreateSnapshotSet : IUnknown
		{
			public const new Guid IID = .(0x5f894e5b, 0x1e39, 0x4778, 0x8e, 0x23, 0x9a, 0xba, 0xd9, 0xf0, 0xe0, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EndPrepareSnapshots(Guid SnapshotSetId) mut
			{
				return VT.EndPrepareSnapshots(&this, SnapshotSetId);
			}
			public HRESULT PreCommitSnapshots(Guid SnapshotSetId) mut
			{
				return VT.PreCommitSnapshots(&this, SnapshotSetId);
			}
			public HRESULT CommitSnapshots(Guid SnapshotSetId) mut
			{
				return VT.CommitSnapshots(&this, SnapshotSetId);
			}
			public HRESULT PostCommitSnapshots(Guid SnapshotSetId, int32 lSnapshotsCount) mut
			{
				return VT.PostCommitSnapshots(&this, SnapshotSetId, lSnapshotsCount);
			}
			public HRESULT PreFinalCommitSnapshots(Guid SnapshotSetId) mut
			{
				return VT.PreFinalCommitSnapshots(&this, SnapshotSetId);
			}
			public HRESULT PostFinalCommitSnapshots(Guid SnapshotSetId) mut
			{
				return VT.PostFinalCommitSnapshots(&this, SnapshotSetId);
			}
			public HRESULT AbortSnapshots(Guid SnapshotSetId) mut
			{
				return VT.AbortSnapshots(&this, SnapshotSetId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) EndPrepareSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PreCommitSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) CommitSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId, int32 lSnapshotsCount) PostCommitSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PreFinalCommitSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) PostFinalCommitSnapshots;
				public new function HRESULT(IVssProviderCreateSnapshotSet *self, Guid SnapshotSetId) AbortSnapshots;
			}
		}
		[CRepr]
		public struct IVssProviderNotifications : IUnknown
		{
			public const new Guid IID = .(0xe561901f, 0x03a5, 0x4afe, 0x86, 0xd0, 0x72, 0xba, 0xee, 0xce, 0x70, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoad(IUnknown* pCallback) mut
			{
				return VT.OnLoad(&this, pCallback);
			}
			public HRESULT OnUnload(BOOL bForceUnload) mut
			{
				return VT.OnUnload(&this, bForceUnload);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssProviderNotifications *self, IUnknown* pCallback) OnLoad;
				public new function HRESULT(IVssProviderNotifications *self, BOOL bForceUnload) OnUnload;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x9593a157, 0x44e9, 0x4344, 0xbb, 0xeb, 0x44, 0xfb, 0xf9, 0xb0, 0x6b, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AreLunsSupported(int32 lLunCount, int32 lContext, uint16** rgwszDevices, VDS_LUN_INFORMATION* pLunInformation, BOOL* pbIsSupported) mut
			{
				return VT.AreLunsSupported(&this, lLunCount, lContext, rgwszDevices, pLunInformation, pbIsSupported);
			}
			public HRESULT FillInLunInfo(uint16* wszDeviceName, VDS_LUN_INFORMATION* pLunInfo, BOOL* pbIsSupported) mut
			{
				return VT.FillInLunInfo(&this, wszDeviceName, pLunInfo, pbIsSupported);
			}
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, int32 lContext, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgLunInformation) mut
			{
				return VT.BeginPrepareSnapshot(&this, SnapshotSetId, SnapshotId, lContext, lLunCount, rgDeviceNames, rgLunInformation);
			}
			public HRESULT GetTargetLuns(int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgSourceLuns, VDS_LUN_INFORMATION* rgDestinationLuns) mut
			{
				return VT.GetTargetLuns(&this, lLunCount, rgDeviceNames, rgSourceLuns, rgDestinationLuns);
			}
			public HRESULT LocateLuns(int32 lLunCount, VDS_LUN_INFORMATION* rgSourceLuns) mut
			{
				return VT.LocateLuns(&this, lLunCount, rgSourceLuns);
			}
			public HRESULT OnLunEmpty(uint16* wszDeviceName, VDS_LUN_INFORMATION* pInformation) mut
			{
				return VT.OnLunEmpty(&this, wszDeviceName, pInformation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, int32 lContext, uint16** rgwszDevices, VDS_LUN_INFORMATION* pLunInformation, BOOL* pbIsSupported) AreLunsSupported;
				public new function HRESULT(IVssHardwareSnapshotProvider *self, uint16* wszDeviceName, VDS_LUN_INFORMATION* pLunInfo, BOOL* pbIsSupported) FillInLunInfo;
				public new function HRESULT(IVssHardwareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, int32 lContext, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgLunInformation) BeginPrepareSnapshot;
				public new function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgSourceLuns, VDS_LUN_INFORMATION* rgDestinationLuns) GetTargetLuns;
				public new function HRESULT(IVssHardwareSnapshotProvider *self, int32 lLunCount, VDS_LUN_INFORMATION* rgSourceLuns) LocateLuns;
				public new function HRESULT(IVssHardwareSnapshotProvider *self, uint16* wszDeviceName, VDS_LUN_INFORMATION* pInformation) OnLunEmpty;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProviderEx : IVssHardwareSnapshotProvider
		{
			public const new Guid IID = .(0x7f5ba925, 0xcdb1, 0x4d11, 0xa7, 0x1f, 0x33, 0x9e, 0xb7, 0xe7, 0x09, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderCapabilities(uint64* pllOriginalCapabilityMask) mut
			{
				return VT.GetProviderCapabilities(&this, pllOriginalCapabilityMask);
			}
			public HRESULT OnLunStateChange(VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount, uint32 dwFlags) mut
			{
				return VT.OnLunStateChange(&this, pSnapshotLuns, pOriginalLuns, dwCount, dwFlags);
			}
			public HRESULT ResyncLuns(VDS_LUN_INFORMATION* pSourceLuns, VDS_LUN_INFORMATION* pTargetLuns, uint32 dwCount, IVssAsync** ppAsync) mut
			{
				return VT.ResyncLuns(&this, pSourceLuns, pTargetLuns, dwCount, ppAsync);
			}
			public HRESULT OnReuseLuns(VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount) mut
			{
				return VT.OnReuseLuns(&this, pSnapshotLuns, pOriginalLuns, dwCount);
			}
			[CRepr]
			public struct VTable : IVssHardwareSnapshotProvider.VTable
			{
				public new function HRESULT(IVssHardwareSnapshotProviderEx *self, uint64* pllOriginalCapabilityMask) GetProviderCapabilities;
				public new function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount, uint32 dwFlags) OnLunStateChange;
				public new function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSourceLuns, VDS_LUN_INFORMATION* pTargetLuns, uint32 dwCount, IVssAsync** ppAsync) ResyncLuns;
				public new function HRESULT(IVssHardwareSnapshotProviderEx *self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount) OnReuseLuns;
			}
		}
		[CRepr]
		public struct IVssFileShareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0xc8636060, 0x7c2e, 0x11df, 0x8c, 0x4a, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 lContext) mut
			{
				return VT.SetContext(&this, lContext);
			}
			public HRESULT GetSnapshotProperties(Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) mut
			{
				return VT.GetSnapshotProperties(&this, SnapshotId, pProp);
			}
			public HRESULT Query(Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) mut
			{
				return VT.Query(&this, QueriedObjectId, eQueriedObjectType, eReturnedObjectsType, ppEnum);
			}
			public HRESULT DeleteSnapshots(Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) mut
			{
				return VT.DeleteSnapshots(&this, SourceObjectId, eSourceObjectType, bForceDelete, plDeletedSnapshots, pNondeletedSnapshotID);
			}
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, uint16* pwszSharePath, int32 lNewContext, Guid ProviderId) mut
			{
				return VT.BeginPrepareSnapshot(&this, SnapshotSetId, SnapshotId, pwszSharePath, lNewContext, ProviderId);
			}
			public HRESULT IsPathSupported(uint16* pwszSharePath, BOOL* pbSupportedByThisProvider) mut
			{
				return VT.IsPathSupported(&this, pwszSharePath, pbSupportedByThisProvider);
			}
			public HRESULT IsPathSnapshotted(uint16* pwszSharePath, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) mut
			{
				return VT.IsPathSnapshotted(&this, pwszSharePath, pbSnapshotsPresent, plSnapshotCompatibility);
			}
			public HRESULT SetSnapshotProperty(Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) mut
			{
				return VT.SetSnapshotProperty(&this, SnapshotId, eSnapshotPropertyId, vProperty);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVssFileShareSnapshotProvider *self, int32 lContext) SetContext;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROP* pProp) GetSnapshotProperties;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, IVssEnumObject** ppEnum) Query;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, int32* plDeletedSnapshots, Guid* pNondeletedSnapshotID) DeleteSnapshots;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotSetId, Guid SnapshotId, uint16* pwszSharePath, int32 lNewContext, Guid ProviderId) BeginPrepareSnapshot;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, uint16* pwszSharePath, BOOL* pbSupportedByThisProvider) IsPathSupported;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, uint16* pwszSharePath, BOOL* pbSnapshotsPresent, int32* plSnapshotCompatibility) IsPathSnapshotted;
				public new function HRESULT(IVssFileShareSnapshotProvider *self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
			}
		}
		
		// --- Functions ---
		
		[Import("vssapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateVssExpressWriterInternal(IVssExpressWriter** ppWriter);
		
	}
}
