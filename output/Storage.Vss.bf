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
		public struct IVssExamineWriterMetadata {}
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
			
			public HRESULT Next(uint32 celt, VSS_OBJECT_PROP* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IVssEnumObject* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumObject self, uint32 celt, VSS_OBJECT_PROP* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumObject self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumObject self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumObject self, out IVssEnumObject* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAsync : IUnknown
		{
			public const new Guid IID = .(0x507c37b4, 0xcf5b, 0x4e95, 0xb0, 0xaf, 0x14, 0xeb, 0x97, 0x67, 0x46, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Wait(uint32 dwMilliseconds) mut => VT.Wait(ref this, dwMilliseconds);
			public HRESULT QueryStatus(out HRESULT pHrResult, out int32 pReserved) mut => VT.QueryStatus(ref this, out pHrResult, out pReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAsync self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAsync self, uint32 dwMilliseconds) Wait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAsync self, out HRESULT pHrResult, out int32 pReserved) QueryStatus;
			}
		}
		[CRepr]
		public struct IVssWMFiledesc : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPath(out BSTR pbstrPath) mut => VT.GetPath(ref this, out pbstrPath);
			public HRESULT GetFilespec(out BSTR pbstrFilespec) mut => VT.GetFilespec(ref this, out pbstrFilespec);
			public HRESULT GetRecursive(out Boolean pbRecursive) mut => VT.GetRecursive(ref this, out pbRecursive);
			public HRESULT GetAlternateLocation(out BSTR pbstrAlternateLocation) mut => VT.GetAlternateLocation(ref this, out pbstrAlternateLocation);
			public HRESULT GetBackupTypeMask(out uint32 pdwTypeMask) mut => VT.GetBackupTypeMask(ref this, out pdwTypeMask);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMFiledesc self, out BSTR pbstrPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMFiledesc self, out BSTR pbstrFilespec) GetFilespec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMFiledesc self, out Boolean pbRecursive) GetRecursive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMFiledesc self, out BSTR pbstrAlternateLocation) GetAlternateLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMFiledesc self, out uint32 pdwTypeMask) GetBackupTypeMask;
			}
		}
		[CRepr]
		public struct IVssWMDependency : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWriterId(out Guid pWriterId) mut => VT.GetWriterId(ref this, out pWriterId);
			public HRESULT GetLogicalPath(out BSTR pbstrLogicalPath) mut => VT.GetLogicalPath(ref this, out pbstrLogicalPath);
			public HRESULT GetComponentName(out BSTR pbstrComponentName) mut => VT.GetComponentName(ref this, out pbstrComponentName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMDependency self, out Guid pWriterId) GetWriterId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMDependency self, out BSTR pbstrLogicalPath) GetLogicalPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWMDependency self, out BSTR pbstrComponentName) GetComponentName;
			}
		}
		[CRepr]
		public struct IVssComponent : IUnknown
		{
			public const new Guid IID = .(0xd2c72c96, 0xc121, 0x4518, 0xb6, 0x27, 0xe5, 0xa9, 0x3d, 0x01, 0x0e, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogicalPath(out BSTR pbstrPath) mut => VT.GetLogicalPath(ref this, out pbstrPath);
			public HRESULT GetComponentType(out VSS_COMPONENT_TYPE pct) mut => VT.GetComponentType(ref this, out pct);
			public HRESULT GetComponentName(out BSTR pbstrName) mut => VT.GetComponentName(ref this, out pbstrName);
			public HRESULT GetBackupSucceeded(out Boolean pbSucceeded) mut => VT.GetBackupSucceeded(ref this, out pbSucceeded);
			public HRESULT GetAlternateLocationMappingCount(out uint32 pcMappings) mut => VT.GetAlternateLocationMappingCount(ref this, out pcMappings);
			public HRESULT GetAlternateLocationMapping(uint32 iMapping, out IVssWMFiledesc* ppFiledesc) mut => VT.GetAlternateLocationMapping(ref this, iMapping, out ppFiledesc);
			public HRESULT SetBackupMetadata(PWSTR wszData) mut => VT.SetBackupMetadata(ref this, wszData);
			public HRESULT GetBackupMetadata(out BSTR pbstrData) mut => VT.GetBackupMetadata(ref this, out pbstrData);
			public HRESULT AddPartialFile(PWSTR wszPath, PWSTR wszFilename, PWSTR wszRanges, PWSTR wszMetadata) mut => VT.AddPartialFile(ref this, wszPath, wszFilename, wszRanges, wszMetadata);
			public HRESULT GetPartialFileCount(out uint32 pcPartialFiles) mut => VT.GetPartialFileCount(ref this, out pcPartialFiles);
			public HRESULT GetPartialFile(uint32 iPartialFile, out BSTR pbstrPath, out BSTR pbstrFilename, out BSTR pbstrRange, out BSTR pbstrMetadata) mut => VT.GetPartialFile(ref this, iPartialFile, out pbstrPath, out pbstrFilename, out pbstrRange, out pbstrMetadata);
			public HRESULT IsSelectedForRestore(out Boolean pbSelectedForRestore) mut => VT.IsSelectedForRestore(ref this, out pbSelectedForRestore);
			public HRESULT GetAdditionalRestores(out Boolean pbAdditionalRestores) mut => VT.GetAdditionalRestores(ref this, out pbAdditionalRestores);
			public HRESULT GetNewTargetCount(out uint32 pcNewTarget) mut => VT.GetNewTargetCount(ref this, out pcNewTarget);
			public HRESULT GetNewTarget(uint32 iNewTarget, out IVssWMFiledesc* ppFiledesc) mut => VT.GetNewTarget(ref this, iNewTarget, out ppFiledesc);
			public HRESULT AddDirectedTarget(PWSTR wszSourcePath, PWSTR wszSourceFilename, PWSTR wszSourceRangeList, PWSTR wszDestinationPath, PWSTR wszDestinationFilename, PWSTR wszDestinationRangeList) mut => VT.AddDirectedTarget(ref this, wszSourcePath, wszSourceFilename, wszSourceRangeList, wszDestinationPath, wszDestinationFilename, wszDestinationRangeList);
			public HRESULT GetDirectedTargetCount(out uint32 pcDirectedTarget) mut => VT.GetDirectedTargetCount(ref this, out pcDirectedTarget);
			public HRESULT GetDirectedTarget(uint32 iDirectedTarget, out BSTR pbstrSourcePath, out BSTR pbstrSourceFileName, out BSTR pbstrSourceRangeList, out BSTR pbstrDestinationPath, out BSTR pbstrDestinationFilename, out BSTR pbstrDestinationRangeList) mut => VT.GetDirectedTarget(ref this, iDirectedTarget, out pbstrSourcePath, out pbstrSourceFileName, out pbstrSourceRangeList, out pbstrDestinationPath, out pbstrDestinationFilename, out pbstrDestinationRangeList);
			public HRESULT SetRestoreMetadata(PWSTR wszRestoreMetadata) mut => VT.SetRestoreMetadata(ref this, wszRestoreMetadata);
			public HRESULT GetRestoreMetadata(out BSTR pbstrRestoreMetadata) mut => VT.GetRestoreMetadata(ref this, out pbstrRestoreMetadata);
			public HRESULT SetRestoreTarget(VSS_RESTORE_TARGET target) mut => VT.SetRestoreTarget(ref this, target);
			public HRESULT GetRestoreTarget(out VSS_RESTORE_TARGET pTarget) mut => VT.GetRestoreTarget(ref this, out pTarget);
			public HRESULT SetPreRestoreFailureMsg(PWSTR wszPreRestoreFailureMsg) mut => VT.SetPreRestoreFailureMsg(ref this, wszPreRestoreFailureMsg);
			public HRESULT GetPreRestoreFailureMsg(out BSTR pbstrPreRestoreFailureMsg) mut => VT.GetPreRestoreFailureMsg(ref this, out pbstrPreRestoreFailureMsg);
			public HRESULT SetPostRestoreFailureMsg(PWSTR wszPostRestoreFailureMsg) mut => VT.SetPostRestoreFailureMsg(ref this, wszPostRestoreFailureMsg);
			public HRESULT GetPostRestoreFailureMsg(out BSTR pbstrPostRestoreFailureMsg) mut => VT.GetPostRestoreFailureMsg(ref this, out pbstrPostRestoreFailureMsg);
			public HRESULT SetBackupStamp(PWSTR wszBackupStamp) mut => VT.SetBackupStamp(ref this, wszBackupStamp);
			public HRESULT GetBackupStamp(out BSTR pbstrBackupStamp) mut => VT.GetBackupStamp(ref this, out pbstrBackupStamp);
			public HRESULT GetPreviousBackupStamp(out BSTR pbstrBackupStamp) mut => VT.GetPreviousBackupStamp(ref this, out pbstrBackupStamp);
			public HRESULT GetBackupOptions(out BSTR pbstrBackupOptions) mut => VT.GetBackupOptions(ref this, out pbstrBackupOptions);
			public HRESULT GetRestoreOptions(out BSTR pbstrRestoreOptions) mut => VT.GetRestoreOptions(ref this, out pbstrRestoreOptions);
			public HRESULT GetRestoreSubcomponentCount(out uint32 pcRestoreSubcomponent) mut => VT.GetRestoreSubcomponentCount(ref this, out pcRestoreSubcomponent);
			public HRESULT GetRestoreSubcomponent(uint32 iComponent, out BSTR pbstrLogicalPath, out BSTR pbstrComponentName, out Boolean pbRepair) mut => VT.GetRestoreSubcomponent(ref this, iComponent, out pbstrLogicalPath, out pbstrComponentName, out pbRepair);
			public HRESULT GetFileRestoreStatus(out VSS_FILE_RESTORE_STATUS pStatus) mut => VT.GetFileRestoreStatus(ref this, out pStatus);
			public HRESULT AddDifferencedFilesByLastModifyTime(PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, FILETIME ftLastModifyTime) mut => VT.AddDifferencedFilesByLastModifyTime(ref this, wszPath, wszFilespec, bRecursive, ftLastModifyTime);
			public HRESULT AddDifferencedFilesByLastModifyLSN(PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, BSTR bstrLsnString) mut => VT.AddDifferencedFilesByLastModifyLSN(ref this, wszPath, wszFilespec, bRecursive, bstrLsnString);
			public HRESULT GetDifferencedFilesCount(out uint32 pcDifferencedFiles) mut => VT.GetDifferencedFilesCount(ref this, out pcDifferencedFiles);
			public HRESULT GetDifferencedFile(uint32 iDifferencedFile, out BSTR pbstrPath, out BSTR pbstrFilespec, out BOOL pbRecursive, out BSTR pbstrLsnString, out FILETIME pftLastModifyTime) mut => VT.GetDifferencedFile(ref this, iDifferencedFile, out pbstrPath, out pbstrFilespec, out pbRecursive, out pbstrLsnString, out pftLastModifyTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrPath) GetLogicalPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out VSS_COMPONENT_TYPE pct) GetComponentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrName) GetComponentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out Boolean pbSucceeded) GetBackupSucceeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcMappings) GetAlternateLocationMappingCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iMapping, out IVssWMFiledesc* ppFiledesc) GetAlternateLocationMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszData) SetBackupMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrData) GetBackupMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszPath, PWSTR wszFilename, PWSTR wszRanges, PWSTR wszMetadata) AddPartialFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcPartialFiles) GetPartialFileCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iPartialFile, out BSTR pbstrPath, out BSTR pbstrFilename, out BSTR pbstrRange, out BSTR pbstrMetadata) GetPartialFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out Boolean pbSelectedForRestore) IsSelectedForRestore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out Boolean pbAdditionalRestores) GetAdditionalRestores;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcNewTarget) GetNewTargetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iNewTarget, out IVssWMFiledesc* ppFiledesc) GetNewTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszSourcePath, PWSTR wszSourceFilename, PWSTR wszSourceRangeList, PWSTR wszDestinationPath, PWSTR wszDestinationFilename, PWSTR wszDestinationRangeList) AddDirectedTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcDirectedTarget) GetDirectedTargetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iDirectedTarget, out BSTR pbstrSourcePath, out BSTR pbstrSourceFileName, out BSTR pbstrSourceRangeList, out BSTR pbstrDestinationPath, out BSTR pbstrDestinationFilename, out BSTR pbstrDestinationRangeList) GetDirectedTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszRestoreMetadata) SetRestoreMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrRestoreMetadata) GetRestoreMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, VSS_RESTORE_TARGET target) SetRestoreTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out VSS_RESTORE_TARGET pTarget) GetRestoreTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszPreRestoreFailureMsg) SetPreRestoreFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrPreRestoreFailureMsg) GetPreRestoreFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszPostRestoreFailureMsg) SetPostRestoreFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrPostRestoreFailureMsg) GetPostRestoreFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszBackupStamp) SetBackupStamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrBackupStamp) GetBackupStamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrBackupStamp) GetPreviousBackupStamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrBackupOptions) GetBackupOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out BSTR pbstrRestoreOptions) GetRestoreOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcRestoreSubcomponent) GetRestoreSubcomponentCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iComponent, out BSTR pbstrLogicalPath, out BSTR pbstrComponentName, out Boolean pbRepair) GetRestoreSubcomponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out VSS_FILE_RESTORE_STATUS pStatus) GetFileRestoreStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, FILETIME ftLastModifyTime) AddDifferencedFilesByLastModifyTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, PWSTR wszPath, PWSTR wszFilespec, BOOL bRecursive, BSTR bstrLsnString) AddDifferencedFilesByLastModifyLSN;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, out uint32 pcDifferencedFiles) GetDifferencedFilesCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponent self, uint32 iDifferencedFile, out BSTR pbstrPath, out BSTR pbstrFilespec, out BOOL pbRecursive, out BSTR pbstrLsnString, out FILETIME pftLastModifyTime) GetDifferencedFile;
			}
		}
		[CRepr]
		public struct IVssWriterComponents
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetComponentCount(out uint32 pcComponents) mut => VT.GetComponentCount(ref this, out pcComponents);
			public HRESULT GetWriterInfo(out Guid pidInstance, out Guid pidWriter) mut => VT.GetWriterInfo(ref this, out pidInstance, out pidWriter);
			public HRESULT GetComponent(uint32 iComponent, out IVssComponent* ppComponent) mut => VT.GetComponent(ref this, iComponent, out ppComponent);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterComponents self, out uint32 pcComponents) GetComponentCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterComponents self, out Guid pidInstance, out Guid pidWriter) GetWriterInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterComponents self, uint32 iComponent, out IVssComponent* ppComponent) GetComponent;
			}
		}
		[CRepr]
		public struct IVssComponentEx : IVssComponent
		{
			public const new Guid IID = .(0x156c8b5e, 0xf131, 0x4bd7, 0x9c, 0x97, 0xd1, 0x92, 0x3b, 0xe7, 0xe1, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrepareForBackupFailureMsg(PWSTR wszFailureMsg) mut => VT.SetPrepareForBackupFailureMsg(ref this, wszFailureMsg);
			public HRESULT SetPostSnapshotFailureMsg(PWSTR wszFailureMsg) mut => VT.SetPostSnapshotFailureMsg(ref this, wszFailureMsg);
			public HRESULT GetPrepareForBackupFailureMsg(BSTR* pbstrFailureMsg) mut => VT.GetPrepareForBackupFailureMsg(ref this, pbstrFailureMsg);
			public HRESULT GetPostSnapshotFailureMsg(BSTR* pbstrFailureMsg) mut => VT.GetPostSnapshotFailureMsg(ref this, pbstrFailureMsg);
			public HRESULT GetAuthoritativeRestore(out Boolean pbAuth) mut => VT.GetAuthoritativeRestore(ref this, out pbAuth);
			public HRESULT GetRollForward(out VSS_ROLLFORWARD_TYPE pRollType, BSTR* pbstrPoint) mut => VT.GetRollForward(ref this, out pRollType, pbstrPoint);
			public HRESULT GetRestoreName(BSTR* pbstrName) mut => VT.GetRestoreName(ref this, pbstrName);

			[CRepr]
			public struct VTable : IVssComponent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, PWSTR wszFailureMsg) SetPrepareForBackupFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, PWSTR wszFailureMsg) SetPostSnapshotFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, BSTR* pbstrFailureMsg) GetPrepareForBackupFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, BSTR* pbstrFailureMsg) GetPostSnapshotFailureMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, out Boolean pbAuth) GetAuthoritativeRestore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, out VSS_ROLLFORWARD_TYPE pRollType, BSTR* pbstrPoint) GetRollForward;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx self, BSTR* pbstrName) GetRestoreName;
			}
		}
		[CRepr]
		public struct IVssComponentEx2 : IVssComponentEx
		{
			public const new Guid IID = .(0x3b5be0f2, 0x07a9, 0x4e4b, 0xbd, 0xd3, 0xcf, 0xdc, 0x8e, 0x2c, 0x0d, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFailure(HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage, uint32 dwReserved) mut => VT.SetFailure(ref this, hr, hrApplication, wszApplicationMessage, dwReserved);
			public HRESULT GetFailure(out HRESULT phr, out HRESULT phrApplication, out BSTR pbstrApplicationMessage, out uint32 pdwReserved) mut => VT.GetFailure(ref this, out phr, out phrApplication, out pbstrApplicationMessage, out pdwReserved);

			[CRepr]
			public struct VTable : IVssComponentEx.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx2 self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage, uint32 dwReserved) SetFailure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssComponentEx2 self, out HRESULT phr, out HRESULT phrApplication, out BSTR pbstrApplicationMessage, out uint32 pdwReserved) GetFailure;
			}
		}
		[CRepr]
		public struct IVssCreateWriterMetadata
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddIncludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation) mut => VT.AddIncludeFiles(ref this, wszPath, wszFilespec, bRecursive, wszAlternateLocation);
			public HRESULT AddExcludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) mut => VT.AddExcludeFiles(ref this, wszPath, wszFilespec, bRecursive);
			public HRESULT AddComponent(VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, in uint8 pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) mut => VT.AddComponent(ref this, ct, wszLogicalPath, wszComponentName, wszCaption, pbIcon, cbIcon, bRestoreMetadata, bNotifyOnBackupComplete, bSelectable, bSelectableForRestore, dwComponentFlags);
			public HRESULT AddDatabaseFiles(PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) mut => VT.AddDatabaseFiles(ref this, wszLogicalPath, wszDatabaseName, wszPath, wszFilespec, dwBackupTypeMask);
			public HRESULT AddDatabaseLogFiles(PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) mut => VT.AddDatabaseLogFiles(ref this, wszLogicalPath, wszDatabaseName, wszPath, wszFilespec, dwBackupTypeMask);
			public HRESULT AddFilesToFileGroup(PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) mut => VT.AddFilesToFileGroup(ref this, wszLogicalPath, wszGroupName, wszPath, wszFilespec, bRecursive, wszAlternateLocation, dwBackupTypeMask);
			public HRESULT SetRestoreMethod(VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) mut => VT.SetRestoreMethod(ref this, method, wszService, wszUserProcedure, writerRestore, bRebootRequired);
			public HRESULT AddAlternateLocationMapping(PWSTR wszSourcePath, PWSTR wszSourceFilespec, uint8 bRecursive, PWSTR wszDestination) mut => VT.AddAlternateLocationMapping(ref this, wszSourcePath, wszSourceFilespec, bRecursive, wszDestination);
			public HRESULT AddComponentDependency(PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) mut => VT.AddComponentDependency(ref this, wszForLogicalPath, wszForComponentName, onWriterId, wszOnLogicalPath, wszOnComponentName);
			public HRESULT SetBackupSchema(uint32 dwSchemaMask) mut => VT.SetBackupSchema(ref this, dwSchemaMask);
			public HRESULT GetDocument(out IXMLDOMDocument* pDoc) mut => VT.GetDocument(ref this, out pDoc);
			public HRESULT SaveAsXML(out BSTR pbstrXML) mut => VT.SaveAsXML(ref this, out pbstrXML);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation) AddIncludeFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, in uint8 pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszLogicalPath, PWSTR wszDatabaseName, PWSTR wszPath, PWSTR wszFilespec, uint32 dwBackupTypeMask) AddDatabaseLogFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszSourcePath, PWSTR wszSourceFilespec, uint8 bRecursive, PWSTR wszDestination) AddAlternateLocationMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, uint32 dwSchemaMask) SetBackupSchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, out IXMLDOMDocument* pDoc) GetDocument;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateWriterMetadata self, out BSTR pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssWriterImpl : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(Guid writerId, PWSTR wszWriterName, PWSTR wszWriterInstanceName, uint32 dwMajorVersion, uint32 dwMinorVersion, VSS_USAGE_TYPE ut, VSS_SOURCE_TYPE st, VSS_APPLICATION_LEVEL nLevel, uint32 dwTimeout, VSS_ALTERNATE_WRITER_STATE aws, uint8 bIOThrottlingOnly) mut => VT.Initialize(ref this, writerId, wszWriterName, wszWriterInstanceName, dwMajorVersion, dwMinorVersion, ut, st, nLevel, dwTimeout, aws, bIOThrottlingOnly);
			public HRESULT Subscribe(uint32 dwSubscribeTimeout, uint32 dwEventFlags) mut => VT.Subscribe(ref this, dwSubscribeTimeout, dwEventFlags);
			public HRESULT Unsubscribe() mut => VT.Unsubscribe(ref this);
			public void Uninitialize() mut => VT.Uninitialize(ref this);
			public PWSTR* GetCurrentVolumeArray() mut => VT.GetCurrentVolumeArray(ref this);
			public uint32 GetCurrentVolumeCount() mut => VT.GetCurrentVolumeCount(ref this);
			public HRESULT GetSnapshotDeviceName(PWSTR wszOriginalVolume, PWSTR* ppwszSnapshotDevice) mut => VT.GetSnapshotDeviceName(ref this, wszOriginalVolume, ppwszSnapshotDevice);
			public Guid GetCurrentSnapshotSetId() mut => VT.GetCurrentSnapshotSetId(ref this);
			public int32 GetContext() mut => VT.GetContext(ref this);
			public VSS_APPLICATION_LEVEL GetCurrentLevel() mut => VT.GetCurrentLevel(ref this);
			public Boolean IsPathAffected(PWSTR wszPath) mut => VT.IsPathAffected(ref this, wszPath);
			public Boolean IsBootableSystemStateBackedUp() mut => VT.IsBootableSystemStateBackedUp(ref this);
			public Boolean AreComponentsSelected() mut => VT.AreComponentsSelected(ref this);
			public VSS_BACKUP_TYPE GetBackupType() mut => VT.GetBackupType(ref this);
			public VSS_RESTORE_TYPE GetRestoreType() mut => VT.GetRestoreType(ref this);
			public HRESULT SetWriterFailure(HRESULT hr) mut => VT.SetWriterFailure(ref this, hr);
			public Boolean IsPartialFileSupportEnabled() mut => VT.IsPartialFileSupportEnabled(ref this);
			public HRESULT InstallAlternateWriter(Guid idWriter, Guid clsid) mut => VT.InstallAlternateWriter(ref this, idWriter, clsid);
			public IVssExamineWriterMetadata* GetIdentityInformation() mut => VT.GetIdentityInformation(ref this);
			public HRESULT SetWriterFailureEx(HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage) mut => VT.SetWriterFailureEx(ref this, hr, hrApplication, wszApplicationMessage);
			public HRESULT GetSessionId(out Guid idSession) mut => VT.GetSessionId(ref this, out idSession);
			public Boolean IsWriterShuttingDown() mut => VT.IsWriterShuttingDown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, Guid writerId, PWSTR wszWriterName, PWSTR wszWriterInstanceName, uint32 dwMajorVersion, uint32 dwMinorVersion, VSS_USAGE_TYPE ut, VSS_SOURCE_TYPE st, VSS_APPLICATION_LEVEL nLevel, uint32 dwTimeout, VSS_ALTERNATE_WRITER_STATE aws, uint8 bIOThrottlingOnly) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, uint32 dwSubscribeTimeout, uint32 dwEventFlags) Subscribe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self) Unsubscribe;
				public new function [CallingConvention(.Stdcall)] void(ref IVssWriterImpl self) Uninitialize;
				public new function [CallingConvention(.Stdcall)] PWSTR*(ref IVssWriterImpl self) GetCurrentVolumeArray;
				public new function [CallingConvention(.Stdcall)] uint32(ref IVssWriterImpl self) GetCurrentVolumeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, PWSTR wszOriginalVolume, PWSTR* ppwszSnapshotDevice) GetSnapshotDeviceName;
				public new function [CallingConvention(.Stdcall)] Guid(ref IVssWriterImpl self) GetCurrentSnapshotSetId;
				public new function [CallingConvention(.Stdcall)] int32(ref IVssWriterImpl self) GetContext;
				public new function [CallingConvention(.Stdcall)] VSS_APPLICATION_LEVEL(ref IVssWriterImpl self) GetCurrentLevel;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IVssWriterImpl self, PWSTR wszPath) IsPathAffected;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IVssWriterImpl self) IsBootableSystemStateBackedUp;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IVssWriterImpl self) AreComponentsSelected;
				public new function [CallingConvention(.Stdcall)] VSS_BACKUP_TYPE(ref IVssWriterImpl self) GetBackupType;
				public new function [CallingConvention(.Stdcall)] VSS_RESTORE_TYPE(ref IVssWriterImpl self) GetRestoreType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, HRESULT hr) SetWriterFailure;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IVssWriterImpl self) IsPartialFileSupportEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, Guid idWriter, Guid clsid) InstallAlternateWriter;
				public new function [CallingConvention(.Stdcall)] IVssExamineWriterMetadata*(ref IVssWriterImpl self) GetIdentityInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, HRESULT hr, HRESULT hrApplication, PWSTR wszApplicationMessage) SetWriterFailureEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssWriterImpl self, out Guid idSession) GetSessionId;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IVssWriterImpl self) IsWriterShuttingDown;
			}
		}
		[CRepr]
		public struct IVssCreateExpressWriterMetadata : IUnknown
		{
			public const new Guid IID = .(0x9c772e77, 0xb26e, 0x427f, 0x92, 0xdd, 0xc9, 0x96, 0xf4, 0x1e, 0xa5, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExcludeFiles(PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) mut => VT.AddExcludeFiles(ref this, wszPath, wszFilespec, bRecursive);
			public HRESULT AddComponent(VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, in uint8 pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) mut => VT.AddComponent(ref this, ct, wszLogicalPath, wszComponentName, wszCaption, pbIcon, cbIcon, bRestoreMetadata, bNotifyOnBackupComplete, bSelectable, bSelectableForRestore, dwComponentFlags);
			public HRESULT AddFilesToFileGroup(PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) mut => VT.AddFilesToFileGroup(ref this, wszLogicalPath, wszGroupName, wszPath, wszFilespec, bRecursive, wszAlternateLocation, dwBackupTypeMask);
			public HRESULT SetRestoreMethod(VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) mut => VT.SetRestoreMethod(ref this, method, wszService, wszUserProcedure, writerRestore, bRebootRequired);
			public HRESULT AddComponentDependency(PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) mut => VT.AddComponentDependency(ref this, wszForLogicalPath, wszForComponentName, onWriterId, wszOnLogicalPath, wszOnComponentName);
			public HRESULT SetBackupSchema(uint32 dwSchemaMask) mut => VT.SetBackupSchema(ref this, dwSchemaMask);
			public HRESULT SaveAsXML(out BSTR pbstrXML) mut => VT.SaveAsXML(ref this, out pbstrXML);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive) AddExcludeFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, VSS_COMPONENT_TYPE ct, PWSTR wszLogicalPath, PWSTR wszComponentName, PWSTR wszCaption, in uint8 pbIcon, uint32 cbIcon, uint8 bRestoreMetadata, uint8 bNotifyOnBackupComplete, uint8 bSelectable, uint8 bSelectableForRestore, uint32 dwComponentFlags) AddComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, PWSTR wszLogicalPath, PWSTR wszGroupName, PWSTR wszPath, PWSTR wszFilespec, uint8 bRecursive, PWSTR wszAlternateLocation, uint32 dwBackupTypeMask) AddFilesToFileGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, VSS_RESTOREMETHOD_ENUM method, PWSTR wszService, PWSTR wszUserProcedure, VSS_WRITERRESTORE_ENUM writerRestore, uint8 bRebootRequired) SetRestoreMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, PWSTR wszForLogicalPath, PWSTR wszForComponentName, Guid onWriterId, PWSTR wszOnLogicalPath, PWSTR wszOnComponentName) AddComponentDependency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, uint32 dwSchemaMask) SetBackupSchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssCreateExpressWriterMetadata self, out BSTR pbstrXML) SaveAsXML;
			}
		}
		[CRepr]
		public struct IVssExpressWriter : IUnknown
		{
			public const new Guid IID = .(0xe33affdc, 0x59c7, 0x47b1, 0x97, 0xd5, 0x42, 0x66, 0x59, 0x8f, 0x62, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMetadata(Guid writerId, PWSTR writerName, VSS_USAGE_TYPE usageType, uint32 versionMajor, uint32 versionMinor, uint32 reserved, out IVssCreateExpressWriterMetadata* ppMetadata) mut => VT.CreateMetadata(ref this, writerId, writerName, usageType, versionMajor, versionMinor, reserved, out ppMetadata);
			public HRESULT LoadMetadata(PWSTR metadata, uint32 reserved) mut => VT.LoadMetadata(ref this, metadata, reserved);
			public HRESULT Register() mut => VT.Register(ref this);
			public HRESULT Unregister(Guid writerId) mut => VT.Unregister(ref this, writerId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssExpressWriter self, Guid writerId, PWSTR writerName, VSS_USAGE_TYPE usageType, uint32 versionMajor, uint32 versionMinor, uint32 reserved, out IVssCreateExpressWriterMetadata* ppMetadata) CreateMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssExpressWriter self, PWSTR metadata, uint32 reserved) LoadMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssExpressWriter self) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssExpressWriter self, Guid writerId) Unregister;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0xfa7df749, 0x66e7, 0x4986, 0xa2, 0x7f, 0xe2, 0xf0, 0x4a, 0xe5, 0x37, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderMgmtInterface(Guid ProviderId, in Guid InterfaceId, out IUnknown* ppItf) mut => VT.GetProviderMgmtInterface(ref this, ProviderId, InterfaceId, out ppItf);
			public HRESULT QueryVolumesSupportedForSnapshots(Guid ProviderId, int32 lContext, out IVssEnumMgmtObject* ppEnum) mut => VT.QueryVolumesSupportedForSnapshots(ref this, ProviderId, lContext, out ppEnum);
			public HRESULT QuerySnapshotsByVolume(ref uint16 pwszVolumeName, Guid ProviderId, out IVssEnumObject* ppEnum) mut => VT.QuerySnapshotsByVolume(ref this, ref pwszVolumeName, ProviderId, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSnapshotMgmt self, Guid ProviderId, in Guid InterfaceId, out IUnknown* ppItf) GetProviderMgmtInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSnapshotMgmt self, Guid ProviderId, int32 lContext, out IVssEnumMgmtObject* ppEnum) QueryVolumesSupportedForSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSnapshotMgmt self, ref uint16 pwszVolumeName, Guid ProviderId, out IVssEnumObject* ppEnum) QuerySnapshotsByVolume;
			}
		}
		[CRepr]
		public struct IVssSnapshotMgmt2 : IUnknown
		{
			public const new Guid IID = .(0x0f61ec39, 0xfe82, 0x45f2, 0xa3, 0xf0, 0x76, 0x8b, 0x5d, 0x42, 0x71, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMinDiffAreaSize(out int64 pllMinDiffAreaSize) mut => VT.GetMinDiffAreaSize(ref this, out pllMinDiffAreaSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSnapshotMgmt2 self, out int64 pllMinDiffAreaSize) GetMinDiffAreaSize;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt : IUnknown
		{
			public const new Guid IID = .(0x214a0f28, 0xb737, 0x4026, 0xb8, 0x47, 0x4f, 0x9e, 0x37, 0xd7, 0x95, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddDiffArea(ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) mut => VT.AddDiffArea(ref this, ref pwszVolumeName, ref pwszDiffAreaVolumeName, llMaximumDiffSpace);
			public HRESULT ChangeDiffAreaMaximumSize(ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) mut => VT.ChangeDiffAreaMaximumSize(ref this, ref pwszVolumeName, ref pwszDiffAreaVolumeName, llMaximumDiffSpace);
			public HRESULT QueryVolumesSupportedForDiffAreas(ref uint16 pwszOriginalVolumeName, out IVssEnumMgmtObject* ppEnum) mut => VT.QueryVolumesSupportedForDiffAreas(ref this, ref pwszOriginalVolumeName, out ppEnum);
			public HRESULT QueryDiffAreasForVolume(ref uint16 pwszVolumeName, out IVssEnumMgmtObject* ppEnum) mut => VT.QueryDiffAreasForVolume(ref this, ref pwszVolumeName, out ppEnum);
			public HRESULT QueryDiffAreasOnVolume(ref uint16 pwszVolumeName, out IVssEnumMgmtObject* ppEnum) mut => VT.QueryDiffAreasOnVolume(ref this, ref pwszVolumeName, out ppEnum);
			public HRESULT QueryDiffAreasForSnapshot(Guid SnapshotId, out IVssEnumMgmtObject* ppEnum) mut => VT.QueryDiffAreasForSnapshot(ref this, SnapshotId, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) AddDiffArea;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace) ChangeDiffAreaMaximumSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, ref uint16 pwszOriginalVolumeName, out IVssEnumMgmtObject* ppEnum) QueryVolumesSupportedForDiffAreas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, ref uint16 pwszVolumeName, out IVssEnumMgmtObject* ppEnum) QueryDiffAreasForVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, ref uint16 pwszVolumeName, out IVssEnumMgmtObject* ppEnum) QueryDiffAreasOnVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt self, Guid SnapshotId, out IVssEnumMgmtObject* ppEnum) QueryDiffAreasForSnapshot;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt2 : IVssDifferentialSoftwareSnapshotMgmt
		{
			public const new Guid IID = .(0x949d7353, 0x675f, 0x4275, 0x89, 0x69, 0xf0, 0x44, 0xc6, 0x27, 0x78, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangeDiffAreaMaximumSizeEx(ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace, BOOL bVolatile) mut => VT.ChangeDiffAreaMaximumSizeEx(ref this, ref pwszVolumeName, ref pwszDiffAreaVolumeName, llMaximumDiffSpace, bVolatile);
			public HRESULT MigrateDiffAreas(ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, ref uint16 pwszNewDiffAreaVolumeName) mut => VT.MigrateDiffAreas(ref this, ref pwszVolumeName, ref pwszDiffAreaVolumeName, ref pwszNewDiffAreaVolumeName);
			public HRESULT QueryMigrationStatus(ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, out IVssAsync* ppAsync) mut => VT.QueryMigrationStatus(ref this, ref pwszVolumeName, ref pwszDiffAreaVolumeName, out ppAsync);
			public HRESULT SetSnapshotPriority(Guid idSnapshot, uint8 priority) mut => VT.SetSnapshotPriority(ref this, idSnapshot, priority);

			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt2 self, ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, int64 llMaximumDiffSpace, BOOL bVolatile) ChangeDiffAreaMaximumSizeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt2 self, ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, ref uint16 pwszNewDiffAreaVolumeName) MigrateDiffAreas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt2 self, ref uint16 pwszVolumeName, ref uint16 pwszDiffAreaVolumeName, out IVssAsync* ppAsync) QueryMigrationStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt2 self, Guid idSnapshot, uint8 priority) SetSnapshotPriority;
			}
		}
		[CRepr]
		public struct IVssDifferentialSoftwareSnapshotMgmt3 : IVssDifferentialSoftwareSnapshotMgmt2
		{
			public const new Guid IID = .(0x383f7e71, 0xa4c5, 0x401f, 0xb2, 0x7f, 0xf8, 0x26, 0x28, 0x9f, 0x84, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVolumeProtectLevel(ref uint16 pwszVolumeName, VSS_PROTECTION_LEVEL protectionLevel) mut => VT.SetVolumeProtectLevel(ref this, ref pwszVolumeName, protectionLevel);
			public HRESULT GetVolumeProtectLevel(ref uint16 pwszVolumeName, out VSS_VOLUME_PROTECTION_INFO protectionLevel) mut => VT.GetVolumeProtectLevel(ref this, ref pwszVolumeName, out protectionLevel);
			public HRESULT ClearVolumeProtectFault(ref uint16 pwszVolumeName) mut => VT.ClearVolumeProtectFault(ref this, ref pwszVolumeName);
			public HRESULT DeleteUnusedDiffAreas(ref uint16 pwszDiffAreaVolumeName) mut => VT.DeleteUnusedDiffAreas(ref this, ref pwszDiffAreaVolumeName);
			public HRESULT QuerySnapshotDeltaBitmap(Guid idSnapshotOlder, Guid idSnapshotYounger, out uint32 pcBlockSizePerBit, out uint32 pcBitmapLength, uint8** ppbBitmap) mut => VT.QuerySnapshotDeltaBitmap(ref this, idSnapshotOlder, idSnapshotYounger, out pcBlockSizePerBit, out pcBitmapLength, ppbBitmap);

			[CRepr]
			public struct VTable : IVssDifferentialSoftwareSnapshotMgmt2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt3 self, ref uint16 pwszVolumeName, VSS_PROTECTION_LEVEL protectionLevel) SetVolumeProtectLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt3 self, ref uint16 pwszVolumeName, out VSS_VOLUME_PROTECTION_INFO protectionLevel) GetVolumeProtectLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt3 self, ref uint16 pwszVolumeName) ClearVolumeProtectFault;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt3 self, ref uint16 pwszDiffAreaVolumeName) DeleteUnusedDiffAreas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssDifferentialSoftwareSnapshotMgmt3 self, Guid idSnapshotOlder, Guid idSnapshotYounger, out uint32 pcBlockSizePerBit, out uint32 pcBitmapLength, uint8** ppbBitmap) QuerySnapshotDeltaBitmap;
			}
		}
		[CRepr]
		public struct IVssEnumMgmtObject : IUnknown
		{
			public const new Guid IID = .(0x01954e6b, 0x9254, 0x4e6e, 0x80, 0x8c, 0xc9, 0xe0, 0x5d, 0x00, 0x76, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VSS_MGMT_OBJECT_PROP* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IVssEnumMgmtObject* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumMgmtObject self, uint32 celt, VSS_MGMT_OBJECT_PROP* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumMgmtObject self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumMgmtObject self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssEnumMgmtObject self, out IVssEnumMgmtObject* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IVssAdmin : IUnknown
		{
			public const new Guid IID = .(0x77ed5996, 0x2f63, 0x11d3, 0x8a, 0x39, 0x00, 0xc0, 0x4f, 0x72, 0xd8, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterProvider(Guid pProviderId, Guid ClassId, ref uint16 pwszProviderName, VSS_PROVIDER_TYPE eProviderType, ref uint16 pwszProviderVersion, Guid ProviderVersionId) mut => VT.RegisterProvider(ref this, pProviderId, ClassId, ref pwszProviderName, eProviderType, ref pwszProviderVersion, ProviderVersionId);
			public HRESULT UnregisterProvider(Guid ProviderId) mut => VT.UnregisterProvider(ref this, ProviderId);
			public HRESULT QueryProviders(out IVssEnumObject* ppEnum) mut => VT.QueryProviders(ref this, out ppEnum);
			public HRESULT AbortAllSnapshotsInProgress() mut => VT.AbortAllSnapshotsInProgress(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdmin self, Guid pProviderId, Guid ClassId, ref uint16 pwszProviderName, VSS_PROVIDER_TYPE eProviderType, ref uint16 pwszProviderVersion, Guid ProviderVersionId) RegisterProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdmin self, Guid ProviderId) UnregisterProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdmin self, out IVssEnumObject* ppEnum) QueryProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdmin self) AbortAllSnapshotsInProgress;
			}
		}
		[CRepr]
		public struct IVssAdminEx : IVssAdmin
		{
			public const new Guid IID = .(0x7858a9f8, 0xb1fa, 0x41a6, 0x96, 0x4f, 0xb9, 0xb3, 0x6b, 0x8c, 0xd8, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderCapability(Guid pProviderId, out uint64 pllOriginalCapabilityMask) mut => VT.GetProviderCapability(ref this, pProviderId, out pllOriginalCapabilityMask);
			public HRESULT GetProviderContext(Guid ProviderId, out int32 plContext) mut => VT.GetProviderContext(ref this, ProviderId, out plContext);
			public HRESULT SetProviderContext(Guid ProviderId, int32 lContext) mut => VT.SetProviderContext(ref this, ProviderId, lContext);

			[CRepr]
			public struct VTable : IVssAdmin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdminEx self, Guid pProviderId, out uint64 pllOriginalCapabilityMask) GetProviderCapability;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdminEx self, Guid ProviderId, out int32 plContext) GetProviderContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssAdminEx self, Guid ProviderId, int32 lContext) SetProviderContext;
			}
		}
		[CRepr]
		public struct IVssSoftwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x609e123e, 0x2c5a, 0x44d3, 0x8f, 0x01, 0x0b, 0x1d, 0x9a, 0x47, 0xd1, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 lContext) mut => VT.SetContext(ref this, lContext);
			public HRESULT GetSnapshotProperties(Guid SnapshotId, out VSS_SNAPSHOT_PROP pProp) mut => VT.GetSnapshotProperties(ref this, SnapshotId, out pProp);
			public HRESULT Query(Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, out IVssEnumObject* ppEnum) mut => VT.Query(ref this, QueriedObjectId, eQueriedObjectType, eReturnedObjectsType, out ppEnum);
			public HRESULT DeleteSnapshots(Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, out int32 plDeletedSnapshots, out Guid pNondeletedSnapshotID) mut => VT.DeleteSnapshots(ref this, SourceObjectId, eSourceObjectType, bForceDelete, out plDeletedSnapshots, out pNondeletedSnapshotID);
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, ref uint16 pwszVolumeName, int32 lNewContext) mut => VT.BeginPrepareSnapshot(ref this, SnapshotSetId, SnapshotId, ref pwszVolumeName, lNewContext);
			public HRESULT IsVolumeSupported(ref uint16 pwszVolumeName, out BOOL pbSupportedByThisProvider) mut => VT.IsVolumeSupported(ref this, ref pwszVolumeName, out pbSupportedByThisProvider);
			public HRESULT IsVolumeSnapshotted(ref uint16 pwszVolumeName, out BOOL pbSnapshotsPresent, out int32 plSnapshotCompatibility) mut => VT.IsVolumeSnapshotted(ref this, ref pwszVolumeName, out pbSnapshotsPresent, out plSnapshotCompatibility);
			public HRESULT SetSnapshotProperty(Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) mut => VT.SetSnapshotProperty(ref this, SnapshotId, eSnapshotPropertyId, vProperty);
			public HRESULT RevertToSnapshot(Guid SnapshotId) mut => VT.RevertToSnapshot(ref this, SnapshotId);
			public HRESULT QueryRevertStatus(ref uint16 pwszVolume, out IVssAsync* ppAsync) mut => VT.QueryRevertStatus(ref this, ref pwszVolume, out ppAsync);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, int32 lContext) SetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid SnapshotId, out VSS_SNAPSHOT_PROP pProp) GetSnapshotProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, out IVssEnumObject* ppEnum) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, out int32 plDeletedSnapshots, out Guid pNondeletedSnapshotID) DeleteSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid SnapshotSetId, Guid SnapshotId, ref uint16 pwszVolumeName, int32 lNewContext) BeginPrepareSnapshot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, ref uint16 pwszVolumeName, out BOOL pbSupportedByThisProvider) IsVolumeSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, ref uint16 pwszVolumeName, out BOOL pbSnapshotsPresent, out int32 plSnapshotCompatibility) IsVolumeSnapshotted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, Guid SnapshotId) RevertToSnapshot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssSoftwareSnapshotProvider self, ref uint16 pwszVolume, out IVssAsync* ppAsync) QueryRevertStatus;
			}
		}
		[CRepr]
		public struct IVssProviderCreateSnapshotSet : IUnknown
		{
			public const new Guid IID = .(0x5f894e5b, 0x1e39, 0x4778, 0x8e, 0x23, 0x9a, 0xba, 0xd9, 0xf0, 0xe0, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EndPrepareSnapshots(Guid SnapshotSetId) mut => VT.EndPrepareSnapshots(ref this, SnapshotSetId);
			public HRESULT PreCommitSnapshots(Guid SnapshotSetId) mut => VT.PreCommitSnapshots(ref this, SnapshotSetId);
			public HRESULT CommitSnapshots(Guid SnapshotSetId) mut => VT.CommitSnapshots(ref this, SnapshotSetId);
			public HRESULT PostCommitSnapshots(Guid SnapshotSetId, int32 lSnapshotsCount) mut => VT.PostCommitSnapshots(ref this, SnapshotSetId, lSnapshotsCount);
			public HRESULT PreFinalCommitSnapshots(Guid SnapshotSetId) mut => VT.PreFinalCommitSnapshots(ref this, SnapshotSetId);
			public HRESULT PostFinalCommitSnapshots(Guid SnapshotSetId) mut => VT.PostFinalCommitSnapshots(ref this, SnapshotSetId);
			public HRESULT AbortSnapshots(Guid SnapshotSetId) mut => VT.AbortSnapshots(ref this, SnapshotSetId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) EndPrepareSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) PreCommitSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) CommitSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId, int32 lSnapshotsCount) PostCommitSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) PreFinalCommitSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) PostFinalCommitSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderCreateSnapshotSet self, Guid SnapshotSetId) AbortSnapshots;
			}
		}
		[CRepr]
		public struct IVssProviderNotifications : IUnknown
		{
			public const new Guid IID = .(0xe561901f, 0x03a5, 0x4afe, 0x86, 0xd0, 0x72, 0xba, 0xee, 0xce, 0x70, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoad(ref IUnknown pCallback) mut => VT.OnLoad(ref this, ref pCallback);
			public HRESULT OnUnload(BOOL bForceUnload) mut => VT.OnUnload(ref this, bForceUnload);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderNotifications self, ref IUnknown pCallback) OnLoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssProviderNotifications self, BOOL bForceUnload) OnUnload;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0x9593a157, 0x44e9, 0x4344, 0xbb, 0xeb, 0x44, 0xfb, 0xf9, 0xb0, 0x6b, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AreLunsSupported(int32 lLunCount, int32 lContext, uint16** rgwszDevices, VDS_LUN_INFORMATION* pLunInformation, out BOOL pbIsSupported) mut => VT.AreLunsSupported(ref this, lLunCount, lContext, rgwszDevices, pLunInformation, out pbIsSupported);
			public HRESULT FillInLunInfo(ref uint16 wszDeviceName, out VDS_LUN_INFORMATION pLunInfo, out BOOL pbIsSupported) mut => VT.FillInLunInfo(ref this, ref wszDeviceName, out pLunInfo, out pbIsSupported);
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, int32 lContext, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgLunInformation) mut => VT.BeginPrepareSnapshot(ref this, SnapshotSetId, SnapshotId, lContext, lLunCount, rgDeviceNames, rgLunInformation);
			public HRESULT GetTargetLuns(int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgSourceLuns, VDS_LUN_INFORMATION* rgDestinationLuns) mut => VT.GetTargetLuns(ref this, lLunCount, rgDeviceNames, rgSourceLuns, rgDestinationLuns);
			public HRESULT LocateLuns(int32 lLunCount, VDS_LUN_INFORMATION* rgSourceLuns) mut => VT.LocateLuns(ref this, lLunCount, rgSourceLuns);
			public HRESULT OnLunEmpty(ref uint16 wszDeviceName, ref VDS_LUN_INFORMATION pInformation) mut => VT.OnLunEmpty(ref this, ref wszDeviceName, ref pInformation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, int32 lLunCount, int32 lContext, uint16** rgwszDevices, VDS_LUN_INFORMATION* pLunInformation, out BOOL pbIsSupported) AreLunsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, ref uint16 wszDeviceName, out VDS_LUN_INFORMATION pLunInfo, out BOOL pbIsSupported) FillInLunInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, Guid SnapshotSetId, Guid SnapshotId, int32 lContext, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgLunInformation) BeginPrepareSnapshot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, int32 lLunCount, uint16** rgDeviceNames, VDS_LUN_INFORMATION* rgSourceLuns, VDS_LUN_INFORMATION* rgDestinationLuns) GetTargetLuns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, int32 lLunCount, VDS_LUN_INFORMATION* rgSourceLuns) LocateLuns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProvider self, ref uint16 wszDeviceName, ref VDS_LUN_INFORMATION pInformation) OnLunEmpty;
			}
		}
		[CRepr]
		public struct IVssHardwareSnapshotProviderEx : IVssHardwareSnapshotProvider
		{
			public const new Guid IID = .(0x7f5ba925, 0xcdb1, 0x4d11, 0xa7, 0x1f, 0x33, 0x9e, 0xb7, 0xe7, 0x09, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProviderCapabilities(out uint64 pllOriginalCapabilityMask) mut => VT.GetProviderCapabilities(ref this, out pllOriginalCapabilityMask);
			public HRESULT OnLunStateChange(VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount, uint32 dwFlags) mut => VT.OnLunStateChange(ref this, pSnapshotLuns, pOriginalLuns, dwCount, dwFlags);
			public HRESULT ResyncLuns(VDS_LUN_INFORMATION* pSourceLuns, VDS_LUN_INFORMATION* pTargetLuns, uint32 dwCount, out IVssAsync* ppAsync) mut => VT.ResyncLuns(ref this, pSourceLuns, pTargetLuns, dwCount, out ppAsync);
			public HRESULT OnReuseLuns(VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount) mut => VT.OnReuseLuns(ref this, pSnapshotLuns, pOriginalLuns, dwCount);

			[CRepr]
			public struct VTable : IVssHardwareSnapshotProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProviderEx self, out uint64 pllOriginalCapabilityMask) GetProviderCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProviderEx self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount, uint32 dwFlags) OnLunStateChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProviderEx self, VDS_LUN_INFORMATION* pSourceLuns, VDS_LUN_INFORMATION* pTargetLuns, uint32 dwCount, out IVssAsync* ppAsync) ResyncLuns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssHardwareSnapshotProviderEx self, VDS_LUN_INFORMATION* pSnapshotLuns, VDS_LUN_INFORMATION* pOriginalLuns, uint32 dwCount) OnReuseLuns;
			}
		}
		[CRepr]
		public struct IVssFileShareSnapshotProvider : IUnknown
		{
			public const new Guid IID = .(0xc8636060, 0x7c2e, 0x11df, 0x8c, 0x4a, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 lContext) mut => VT.SetContext(ref this, lContext);
			public HRESULT GetSnapshotProperties(Guid SnapshotId, out VSS_SNAPSHOT_PROP pProp) mut => VT.GetSnapshotProperties(ref this, SnapshotId, out pProp);
			public HRESULT Query(Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, out IVssEnumObject* ppEnum) mut => VT.Query(ref this, QueriedObjectId, eQueriedObjectType, eReturnedObjectsType, out ppEnum);
			public HRESULT DeleteSnapshots(Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, out int32 plDeletedSnapshots, out Guid pNondeletedSnapshotID) mut => VT.DeleteSnapshots(ref this, SourceObjectId, eSourceObjectType, bForceDelete, out plDeletedSnapshots, out pNondeletedSnapshotID);
			public HRESULT BeginPrepareSnapshot(Guid SnapshotSetId, Guid SnapshotId, ref uint16 pwszSharePath, int32 lNewContext, Guid ProviderId) mut => VT.BeginPrepareSnapshot(ref this, SnapshotSetId, SnapshotId, ref pwszSharePath, lNewContext, ProviderId);
			public HRESULT IsPathSupported(ref uint16 pwszSharePath, out BOOL pbSupportedByThisProvider) mut => VT.IsPathSupported(ref this, ref pwszSharePath, out pbSupportedByThisProvider);
			public HRESULT IsPathSnapshotted(ref uint16 pwszSharePath, out BOOL pbSnapshotsPresent, out int32 plSnapshotCompatibility) mut => VT.IsPathSnapshotted(ref this, ref pwszSharePath, out pbSnapshotsPresent, out plSnapshotCompatibility);
			public HRESULT SetSnapshotProperty(Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) mut => VT.SetSnapshotProperty(ref this, SnapshotId, eSnapshotPropertyId, vProperty);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, int32 lContext) SetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, Guid SnapshotId, out VSS_SNAPSHOT_PROP pProp) GetSnapshotProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, Guid QueriedObjectId, VSS_OBJECT_TYPE eQueriedObjectType, VSS_OBJECT_TYPE eReturnedObjectsType, out IVssEnumObject* ppEnum) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, Guid SourceObjectId, VSS_OBJECT_TYPE eSourceObjectType, BOOL bForceDelete, out int32 plDeletedSnapshots, out Guid pNondeletedSnapshotID) DeleteSnapshots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, Guid SnapshotSetId, Guid SnapshotId, ref uint16 pwszSharePath, int32 lNewContext, Guid ProviderId) BeginPrepareSnapshot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, ref uint16 pwszSharePath, out BOOL pbSupportedByThisProvider) IsPathSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, ref uint16 pwszSharePath, out BOOL pbSnapshotsPresent, out int32 plSnapshotCompatibility) IsPathSnapshotted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVssFileShareSnapshotProvider self, Guid SnapshotId, VSS_SNAPSHOT_PROPERTY_ID eSnapshotPropertyId, VARIANT vProperty) SetSnapshotProperty;
			}
		}
		
		// --- Functions ---
		
		[Import("vssapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateVssExpressWriterInternal(out IVssExpressWriter* ppWriter);
	}
}
