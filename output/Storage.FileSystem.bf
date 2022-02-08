using System;

// namespace Storage.FileSystem
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CLFS_FLAG_REENTRANT_FILE_SYSTEM = 8;
		public const uint32 CLFS_FLAG_NON_REENTRANT_FILTER = 16;
		public const uint32 CLFS_FLAG_REENTRANT_FILTER = 32;
		public const uint32 CLFS_FLAG_IGNORE_SHARE_ACCESS = 64;
		public const uint32 CLFS_FLAG_READ_IN_PROGRESS = 128;
		public const uint32 CLFS_FLAG_MINIFILTER_LEVEL = 256;
		public const uint32 CLFS_FLAG_HIDDEN_SYSTEM_LOG = 512;
		public const uint32 CLFS_MARSHALLING_FLAG_NONE = 0;
		public const uint32 CLFS_MARSHALLING_FLAG_DISABLE_BUFF_INIT = 1;
		public const uint32 CLFS_FLAG_FILTER_INTERMEDIATE_LEVEL = 16;
		public const uint32 CLFS_FLAG_FILTER_TOP_LEVEL = 32;
		public const uint32 TRANSACTION_MANAGER_VOLATILE = 1;
		public const uint32 TRANSACTION_MANAGER_COMMIT_DEFAULT = 0;
		public const uint32 TRANSACTION_MANAGER_COMMIT_SYSTEM_VOLUME = 2;
		public const uint32 TRANSACTION_MANAGER_COMMIT_SYSTEM_HIVES = 4;
		public const uint32 TRANSACTION_MANAGER_COMMIT_LOWEST = 8;
		public const uint32 TRANSACTION_MANAGER_CORRUPT_FOR_RECOVERY = 16;
		public const uint32 TRANSACTION_MANAGER_CORRUPT_FOR_PROGRESS = 32;
		public const uint32 TRANSACTION_MANAGER_MAXIMUM_OPTION = 63;
		public const uint32 TRANSACTION_DO_NOT_PROMOTE = 1;
		public const uint32 TRANSACTION_MAXIMUM_OPTION = 1;
		public const uint32 RESOURCE_MANAGER_VOLATILE = 1;
		public const uint32 RESOURCE_MANAGER_COMMUNICATION = 2;
		public const uint32 RESOURCE_MANAGER_MAXIMUM_OPTION = 3;
		public const uint32 CRM_PROTOCOL_EXPLICIT_MARSHAL_ONLY = 1;
		public const uint32 CRM_PROTOCOL_DYNAMIC_MARSHAL_INFO = 2;
		public const uint32 CRM_PROTOCOL_MAXIMUM_OPTION = 3;
		public const uint32 ENLISTMENT_SUPERIOR = 1;
		public const uint32 ENLISTMENT_MAXIMUM_OPTION = 1;
		public const uint32 TRANSACTION_NOTIFY_MASK = 1073741823;
		public const uint32 TRANSACTION_NOTIFY_PREPREPARE = 1;
		public const uint32 TRANSACTION_NOTIFY_PREPARE = 2;
		public const uint32 TRANSACTION_NOTIFY_COMMIT = 4;
		public const uint32 TRANSACTION_NOTIFY_ROLLBACK = 8;
		public const uint32 TRANSACTION_NOTIFY_PREPREPARE_COMPLETE = 16;
		public const uint32 TRANSACTION_NOTIFY_PREPARE_COMPLETE = 32;
		public const uint32 TRANSACTION_NOTIFY_COMMIT_COMPLETE = 64;
		public const uint32 TRANSACTION_NOTIFY_ROLLBACK_COMPLETE = 128;
		public const uint32 TRANSACTION_NOTIFY_RECOVER = 256;
		public const uint32 TRANSACTION_NOTIFY_SINGLE_PHASE_COMMIT = 512;
		public const uint32 TRANSACTION_NOTIFY_DELEGATE_COMMIT = 1024;
		public const uint32 TRANSACTION_NOTIFY_RECOVER_QUERY = 2048;
		public const uint32 TRANSACTION_NOTIFY_ENLIST_PREPREPARE = 4096;
		public const uint32 TRANSACTION_NOTIFY_LAST_RECOVER = 8192;
		public const uint32 TRANSACTION_NOTIFY_INDOUBT = 16384;
		public const uint32 TRANSACTION_NOTIFY_PROPAGATE_PULL = 32768;
		public const uint32 TRANSACTION_NOTIFY_PROPAGATE_PUSH = 65536;
		public const uint32 TRANSACTION_NOTIFY_MARSHAL = 131072;
		public const uint32 TRANSACTION_NOTIFY_ENLIST_MASK = 262144;
		public const uint32 TRANSACTION_NOTIFY_RM_DISCONNECTED = 16777216;
		public const uint32 TRANSACTION_NOTIFY_TM_ONLINE = 33554432;
		public const uint32 TRANSACTION_NOTIFY_COMMIT_REQUEST = 67108864;
		public const uint32 TRANSACTION_NOTIFY_PROMOTE = 134217728;
		public const uint32 TRANSACTION_NOTIFY_PROMOTE_NEW = 268435456;
		public const uint32 TRANSACTION_NOTIFY_REQUEST_OUTCOME = 536870912;
		public const uint32 TRANSACTION_NOTIFY_COMMIT_FINALIZE = 1073741824;
		public const uint32 TRANSACTION_NOTIFICATION_TM_ONLINE_FLAG_IS_CLUSTERED = 1;
		public const uint32 KTM_MARSHAL_BLOB_VERSION_MAJOR = 1;
		public const uint32 KTM_MARSHAL_BLOB_VERSION_MINOR = 1;
		public const uint32 MAX_TRANSACTION_DESCRIPTION_LENGTH = 64;
		public const uint32 MAX_RESOURCEMANAGER_DESCRIPTION_LENGTH = 64;
		public const uint32 IOCTL_VOLUME_BASE = 86;
		public const uint32 IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = 5636096;
		public const uint32 IOCTL_VOLUME_ONLINE = 5685256;
		public const uint32 IOCTL_VOLUME_OFFLINE = 5685260;
		public const uint32 IOCTL_VOLUME_IS_CLUSTERED = 5636144;
		public const uint32 IOCTL_VOLUME_GET_GPT_ATTRIBUTES = 5636152;
		public const uint32 IOCTL_VOLUME_SUPPORTS_ONLINE_OFFLINE = 5636100;
		public const uint32 IOCTL_VOLUME_IS_OFFLINE = 5636112;
		public const uint32 IOCTL_VOLUME_IS_IO_CAPABLE = 5636116;
		public const uint32 IOCTL_VOLUME_QUERY_FAILOVER_SET = 5636120;
		public const uint32 IOCTL_VOLUME_QUERY_VOLUME_NUMBER = 5636124;
		public const uint32 IOCTL_VOLUME_LOGICAL_TO_PHYSICAL = 5636128;
		public const uint32 IOCTL_VOLUME_PHYSICAL_TO_LOGICAL = 5636132;
		public const uint32 IOCTL_VOLUME_IS_PARTITION = 5636136;
		public const uint32 IOCTL_VOLUME_READ_PLEX = 5652526;
		public const uint32 IOCTL_VOLUME_SET_GPT_ATTRIBUTES = 5636148;
		public const uint32 IOCTL_VOLUME_GET_BC_PROPERTIES = 5652540;
		public const uint32 IOCTL_VOLUME_ALLOCATE_BC_STREAM = 5685312;
		public const uint32 IOCTL_VOLUME_FREE_BC_STREAM = 5685316;
		public const uint32 IOCTL_VOLUME_BC_VERSION = 1;
		public const uint32 IOCTL_VOLUME_IS_DYNAMIC = 5636168;
		public const uint32 IOCTL_VOLUME_PREPARE_FOR_CRITICAL_IO = 5685324;
		public const uint32 IOCTL_VOLUME_QUERY_ALLOCATION_HINT = 5652562;
		public const uint32 IOCTL_VOLUME_UPDATE_PROPERTIES = 5636180;
		public const uint32 IOCTL_VOLUME_QUERY_MINIMUM_SHRINK_SIZE = 5652568;
		public const uint32 IOCTL_VOLUME_PREPARE_FOR_SHRINK = 5685340;
		public const uint32 IOCTL_VOLUME_IS_CSV = 5636192;
		public const uint32 IOCTL_VOLUME_POST_ONLINE = 5685348;
		public const uint32 IOCTL_VOLUME_GET_CSVBLOCKCACHE_CALLBACK = 5685352;
		public const uint32 CSV_BLOCK_CACHE_CALLBACK_VERSION = 1;
		public const uint32 CSV_BLOCK_AND_FILE_CACHE_CALLBACK_VERSION = 2;
		public const Guid PARTITION_BASIC_DATA_GUID = .(0xebd0a0a2, 0xb9e5, 0x4433, 0x87, 0xc0, 0x68, 0xb6, 0xb7, 0x26, 0x99, 0xc7);
		public const Guid PARTITION_BSP_GUID = .(0x57434f53, 0x4df9, 0x45b9, 0x8e, 0x9e, 0x23, 0x70, 0xf0, 0x06, 0x45, 0x7c);
		public const Guid PARTITION_CLUSTER_GUID = .(0xdb97dba9, 0x0840, 0x4bae, 0x97, 0xf0, 0xff, 0xb9, 0xa3, 0x27, 0xc7, 0xe1);
		public const Guid PARTITION_DPP_GUID = .(0x57434f53, 0x94cb, 0x43f0, 0xa5, 0x33, 0xd7, 0x3c, 0x10, 0xcf, 0xa5, 0x7d);
		public const Guid PARTITION_ENTRY_UNUSED_GUID = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid PARTITION_LDM_DATA_GUID = .(0xaf9b60a0, 0x1431, 0x4f62, 0xbc, 0x68, 0x33, 0x11, 0x71, 0x4a, 0x69, 0xad);
		public const Guid PARTITION_LDM_METADATA_GUID = .(0x5808c8aa, 0x7e8f, 0x42e0, 0x85, 0xd2, 0xe1, 0xe9, 0x04, 0x34, 0xcf, 0xb3);
		public const Guid PARTITION_LEGACY_BL_GUID = .(0x424ca0e2, 0x7cb2, 0x4fb9, 0x81, 0x43, 0xc5, 0x2a, 0x99, 0x39, 0x8b, 0xc6);
		public const Guid PARTITION_LEGACY_BL_GUID_BACKUP = .(0x424c3e6c, 0xd79f, 0x49cb, 0x93, 0x5d, 0x36, 0xd7, 0x14, 0x67, 0xa2, 0x88);
		public const Guid PARTITION_MAIN_OS_GUID = .(0x57434f53, 0x8f45, 0x405e, 0x8a, 0x23, 0x18, 0x6d, 0x8a, 0x43, 0x30, 0xd3);
		public const Guid PARTITION_MSFT_RECOVERY_GUID = .(0xde94bba4, 0x06d1, 0x4d40, 0xa1, 0x6a, 0xbf, 0xd5, 0x01, 0x79, 0xd6, 0xac);
		public const Guid PARTITION_MSFT_RESERVED_GUID = .(0xe3c9e316, 0x0b5c, 0x4db8, 0x81, 0x7d, 0xf9, 0x2d, 0xf0, 0x02, 0x15, 0xae);
		public const Guid PARTITION_MSFT_SNAPSHOT_GUID = .(0xcaddebf1, 0x4400, 0x4de8, 0xb1, 0x03, 0x12, 0x11, 0x7d, 0xcf, 0x3c, 0xcf);
		public const Guid PARTITION_OS_DATA_GUID = .(0x57434f53, 0x23f2, 0x44d5, 0xa8, 0x30, 0x67, 0xbb, 0xda, 0xa6, 0x09, 0xf9);
		public const Guid PARTITION_PATCH_GUID = .(0x8967a686, 0x96aa, 0x6aa8, 0x95, 0x89, 0xa8, 0x42, 0x56, 0x54, 0x10, 0x90);
		public const Guid PARTITION_PRE_INSTALLED_GUID = .(0x57434f53, 0x7fe0, 0x4196, 0x9b, 0x42, 0x42, 0x7b, 0x51, 0x64, 0x34, 0x84);
		public const Guid PARTITION_SERVICING_FILES_GUID = .(0x57434f53, 0x432e, 0x4014, 0xae, 0x4c, 0x8d, 0xea, 0xa9, 0xc0, 0x00, 0x6a);
		public const Guid PARTITION_SERVICING_METADATA_GUID = .(0x57434f53, 0xc691, 0x4a05, 0xbb, 0x4e, 0x70, 0x3d, 0xaf, 0xd2, 0x29, 0xce);
		public const Guid PARTITION_SERVICING_RESERVE_GUID = .(0x57434f53, 0x4b81, 0x460b, 0xa3, 0x19, 0xff, 0xb6, 0xfe, 0x13, 0x6d, 0x14);
		public const Guid PARTITION_SERVICING_STAGING_ROOT_GUID = .(0x57434f53, 0xe84d, 0x4e84, 0xaa, 0xf3, 0xec, 0xbb, 0xbd, 0x04, 0xb9, 0xdf);
		public const Guid PARTITION_SPACES_GUID = .(0xe75caf8f, 0xf680, 0x4cee, 0xaf, 0xa3, 0xb0, 0x01, 0xe5, 0x6e, 0xfc, 0x2d);
		public const Guid PARTITION_SPACES_DATA_GUID = .(0xe7addcb4, 0xdc34, 0x4539, 0x9a, 0x76, 0xeb, 0xbd, 0x07, 0xbe, 0x6f, 0x7e);
		public const Guid PARTITION_SYSTEM_GUID = .(0xc12a7328, 0xf81f, 0x11d2, 0xba, 0x4b, 0x00, 0xa0, 0xc9, 0x3e, 0xc9, 0x3b);
		public const Guid PARTITION_WINDOWS_SYSTEM_GUID = .(0x57434f53, 0xe3e3, 0x4631, 0xa5, 0xc5, 0x26, 0xd2, 0x24, 0x38, 0x73, 0xaa);
		public const uint32 _FT_TYPES_DEFINITION_ = 1;
		public const uint32 CLFS_MGMT_POLICY_VERSION = 1;
		public const uint32 LOG_POLICY_OVERWRITE = 1;
		public const uint32 LOG_POLICY_PERSIST = 2;
		public const uint32 CLFS_MGMT_CLIENT_REGISTRATION_VERSION = 1;
		public const Guid CLSID_DiskQuotaControl = .(0x7988b571, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
		public const uint32 DISKQUOTA_STATE_DISABLED = 0;
		public const uint32 DISKQUOTA_STATE_TRACK = 1;
		public const uint32 DISKQUOTA_STATE_ENFORCE = 2;
		public const uint32 DISKQUOTA_STATE_MASK = 3;
		public const uint32 DISKQUOTA_FILESTATE_INCOMPLETE = 256;
		public const uint32 DISKQUOTA_FILESTATE_REBUILDING = 512;
		public const uint32 DISKQUOTA_FILESTATE_MASK = 768;
		public const uint32 DISKQUOTA_LOGFLAG_USER_THRESHOLD = 1;
		public const uint32 DISKQUOTA_LOGFLAG_USER_LIMIT = 2;
		public const uint32 DISKQUOTA_USER_ACCOUNT_RESOLVED = 0;
		public const uint32 DISKQUOTA_USER_ACCOUNT_UNAVAILABLE = 1;
		public const uint32 DISKQUOTA_USER_ACCOUNT_DELETED = 2;
		public const uint32 DISKQUOTA_USER_ACCOUNT_INVALID = 3;
		public const uint32 DISKQUOTA_USER_ACCOUNT_UNKNOWN = 4;
		public const uint32 DISKQUOTA_USER_ACCOUNT_UNRESOLVED = 5;
		public const uint32 INVALID_SET_FILE_POINTER = 4294967295;
		public const uint32 INVALID_FILE_ATTRIBUTES = 4294967295;
		public const uint32 SHARE_NETNAME_PARMNUM = 1;
		public const uint32 SHARE_TYPE_PARMNUM = 3;
		public const uint32 SHARE_REMARK_PARMNUM = 4;
		public const uint32 SHARE_PERMISSIONS_PARMNUM = 5;
		public const uint32 SHARE_MAX_USES_PARMNUM = 6;
		public const uint32 SHARE_CURRENT_USES_PARMNUM = 7;
		public const uint32 SHARE_PATH_PARMNUM = 8;
		public const uint32 SHARE_PASSWD_PARMNUM = 9;
		public const uint32 SHARE_FILE_SD_PARMNUM = 501;
		public const uint32 SHARE_SERVER_PARMNUM = 503;
		public const uint32 SHI1_NUM_ELEMENTS = 4;
		public const uint32 SHI2_NUM_ELEMENTS = 10;
		public const uint32 STYPE_RESERVED1 = 16777216;
		public const uint32 STYPE_RESERVED2 = 33554432;
		public const uint32 STYPE_RESERVED3 = 67108864;
		public const uint32 STYPE_RESERVED4 = 134217728;
		public const uint32 STYPE_RESERVED5 = 1048576;
		public const uint32 STYPE_RESERVED_ALL = 1073741568;
		public const uint32 SHI_USES_UNLIMITED = 4294967295;
		public const uint32 SHI1005_FLAGS_DFS = 1;
		public const uint32 SHI1005_FLAGS_DFS_ROOT = 2;
		public const uint32 CSC_MASK_EXT = 8240;
		public const uint32 CSC_MASK = 48;
		public const uint32 CSC_CACHE_MANUAL_REINT = 0;
		public const uint32 CSC_CACHE_AUTO_REINT = 16;
		public const uint32 CSC_CACHE_VDO = 32;
		public const uint32 CSC_CACHE_NONE = 48;
		public const uint32 SHI1005_FLAGS_RESTRICT_EXCLUSIVE_OPENS = 256;
		public const uint32 SHI1005_FLAGS_FORCE_SHARED_DELETE = 512;
		public const uint32 SHI1005_FLAGS_ALLOW_NAMESPACE_CACHING = 1024;
		public const uint32 SHI1005_FLAGS_ACCESS_BASED_DIRECTORY_ENUM = 2048;
		public const uint32 SHI1005_FLAGS_FORCE_LEVELII_OPLOCK = 4096;
		public const uint32 SHI1005_FLAGS_ENABLE_HASH = 8192;
		public const uint32 SHI1005_FLAGS_ENABLE_CA = 16384;
		public const uint32 SHI1005_FLAGS_ENCRYPT_DATA = 32768;
		public const uint32 SHI1005_FLAGS_RESERVED = 65536;
		public const uint32 SHI1005_FLAGS_DISABLE_CLIENT_BUFFERING = 131072;
		public const uint32 SHI1005_FLAGS_IDENTITY_REMOTING = 262144;
		public const uint32 SHI1005_FLAGS_CLUSTER_MANAGED = 524288;
		public const uint32 SHI1005_FLAGS_COMPRESS_DATA = 1048576;
		public const uint32 SESI1_NUM_ELEMENTS = 8;
		public const uint32 SESI2_NUM_ELEMENTS = 9;
		public const uint32 STATSOPT_CLR = 1;
		public const int32 LZERROR_BADINHANDLE = -1;
		public const int32 LZERROR_BADOUTHANDLE = -2;
		public const int32 LZERROR_READ = -3;
		public const int32 LZERROR_WRITE = -4;
		public const int32 LZERROR_GLOBALLOC = -5;
		public const int32 LZERROR_GLOBLOCK = -6;
		public const int32 LZERROR_BADVALUE = -7;
		public const int32 LZERROR_UNKNOWNALG = -8;
		public const uint32 NTMS_OBJECTNAME_LENGTH = 64;
		public const uint32 NTMS_DESCRIPTION_LENGTH = 127;
		public const uint32 NTMS_DEVICENAME_LENGTH = 64;
		public const uint32 NTMS_SERIALNUMBER_LENGTH = 32;
		public const uint32 NTMS_REVISION_LENGTH = 32;
		public const uint32 NTMS_BARCODE_LENGTH = 64;
		public const uint32 NTMS_SEQUENCE_LENGTH = 32;
		public const uint32 NTMS_VENDORNAME_LENGTH = 128;
		public const uint32 NTMS_PRODUCTNAME_LENGTH = 128;
		public const uint32 NTMS_USERNAME_LENGTH = 64;
		public const uint32 NTMS_APPLICATIONNAME_LENGTH = 64;
		public const uint32 NTMS_COMPUTERNAME_LENGTH = 64;
		public const uint32 NTMS_I1_MESSAGE_LENGTH = 127;
		public const uint32 NTMS_MESSAGE_LENGTH = 256;
		public const uint32 NTMS_POOLHIERARCHY_LENGTH = 512;
		public const uint32 NTMS_OMIDLABELID_LENGTH = 255;
		public const uint32 NTMS_OMIDLABELTYPE_LENGTH = 64;
		public const uint32 NTMS_OMIDLABELINFO_LENGTH = 256;
		public const uint32 NTMS_MAXATTR_LENGTH = 65536;
		public const uint32 NTMS_MAXATTR_NAMELEN = 32;
		public const uint32 NTMSMLI_MAXTYPE = 64;
		public const uint32 NTMSMLI_MAXIDSIZE = 256;
		public const uint32 NTMSMLI_MAXAPPDESCR = 256;
		public const uint32 TXF_LOG_RECORD_GENERIC_TYPE_COMMIT = 1;
		public const uint32 TXF_LOG_RECORD_GENERIC_TYPE_ABORT = 2;
		public const uint32 TXF_LOG_RECORD_GENERIC_TYPE_PREPARE = 4;
		public const uint32 TXF_LOG_RECORD_GENERIC_TYPE_DATA = 8;
		public const uint32 VS_VERSION_INFO = 1;
		public const uint32 VS_USER_DEFINED = 100;
		public const int32 VS_FFI_SIGNATURE = -17890115;
		public const int32 VS_FFI_STRUCVERSION = 65536;
		public const int32 VS_FFI_FILEFLAGSMASK = 63;
		public const uint32 WINEFS_SETUSERKEY_SET_CAPABILITIES = 1;
		public const uint32 EFS_COMPATIBILITY_VERSION_NCRYPT_PROTECTOR = 5;
		public const uint32 EFS_COMPATIBILITY_VERSION_PFILE_PROTECTOR = 6;
		public const uint32 EFS_SUBVER_UNKNOWN = 0;
		public const uint32 EFS_EFS_SUBVER_EFS_CERT = 1;
		public const uint32 EFS_PFILE_SUBVER_RMS = 2;
		public const uint32 EFS_PFILE_SUBVER_APPX = 3;
		public const uint32 MAX_SID_SIZE = 256;
		public const uint32 EFS_METADATA_ADD_USER = 1;
		public const uint32 EFS_METADATA_REMOVE_USER = 2;
		public const uint32 EFS_METADATA_REPLACE_USER = 4;
		public const uint32 EFS_METADATA_GENERAL_OP = 8;
		public const uint32 WOF_PROVIDER_WIM = 1;
		public const uint32 WOF_PROVIDER_FILE = 2;
		public const uint32 WIM_PROVIDER_HASH_SIZE = 20;
		public const uint32 WIM_BOOT_OS_WIM = 1;
		public const uint32 WIM_BOOT_NOT_OS_WIM = 0;
		public const uint32 WIM_ENTRY_FLAG_NOT_ACTIVE = 1;
		public const uint32 WIM_ENTRY_FLAG_SUSPENDED = 2;
		public const uint32 WIM_EXTERNAL_FILE_INFO_FLAG_NOT_ACTIVE = 1;
		public const uint32 WIM_EXTERNAL_FILE_INFO_FLAG_SUSPENDED = 2;
		public const uint32 FILE_PROVIDER_COMPRESSION_XPRESS4K = 0;
		public const uint32 FILE_PROVIDER_COMPRESSION_LZX = 1;
		public const uint32 FILE_PROVIDER_COMPRESSION_XPRESS8K = 2;
		public const uint32 FILE_PROVIDER_COMPRESSION_XPRESS16K = 3;
		public const uint8 ClfsNullRecord = 0;
		public const uint8 ClfsDataRecord = 1;
		public const uint8 ClfsRestartRecord = 2;
		public const uint8 ClfsClientRecord = 3;
		public const uint32 ClsContainerInitializing = 1;
		public const uint32 ClsContainerInactive = 2;
		public const uint32 ClsContainerActive = 4;
		public const uint32 ClsContainerActivePendingDelete = 8;
		public const uint32 ClsContainerPendingArchive = 16;
		public const uint32 ClsContainerPendingArchiveAndDelete = 32;
		public const uint32 ClfsContainerInitializing = 1;
		public const uint32 ClfsContainerInactive = 2;
		public const uint32 ClfsContainerActive = 4;
		public const uint32 ClfsContainerActivePendingDelete = 8;
		public const uint32 ClfsContainerPendingArchive = 16;
		public const uint32 ClfsContainerPendingArchiveAndDelete = 32;
		public const uint32 CLFS_MAX_CONTAINER_INFO = 256;
		public const uint8 CLFS_SCAN_INIT = 1;
		public const uint8 CLFS_SCAN_FORWARD = 2;
		public const uint8 CLFS_SCAN_BACKWARD = 4;
		public const uint8 CLFS_SCAN_CLOSE = 8;
		public const uint8 CLFS_SCAN_INITIALIZED = 16;
		public const uint8 CLFS_SCAN_BUFFERED = 32;
		
		// --- Typedefs ---
		
		public typealias FindFileHandle = int;
		public typealias FindFileNameHandle = int;
		public typealias FindStreamHandle = int;
		public typealias FindChangeNotificationHandle = int;
		public typealias FindVolumeHandle = int;
		public typealias FindVolumeMointPointHandle = int;
		
		// --- Enums ---
		
		public enum FIND_FIRST_EX_FLAGS : uint32
		{
			CASE_SENSITIVE = 1,
			LARGE_FETCH = 2,
			ON_DISK_ENTRIES_ONLY = 4,
		}
		public enum DEFINE_DOS_DEVICE_FLAGS : uint32
		{
			RAW_TARGET_PATH = 1,
			REMOVE_DEFINITION = 2,
			EXACT_MATCH_ON_REMOVE = 4,
			NO_BROADCAST_SYSTEM = 8,
			LUID_BROADCAST_DRIVE = 16,
		}
		[AllowDuplicates]
		public enum FILE_FLAGS_AND_ATTRIBUTES : uint32
		{
			FILE_ATTRIBUTE_READONLY = 1,
			FILE_ATTRIBUTE_HIDDEN = 2,
			FILE_ATTRIBUTE_SYSTEM = 4,
			FILE_ATTRIBUTE_DIRECTORY = 16,
			FILE_ATTRIBUTE_ARCHIVE = 32,
			FILE_ATTRIBUTE_DEVICE = 64,
			FILE_ATTRIBUTE_NORMAL = 128,
			FILE_ATTRIBUTE_TEMPORARY = 256,
			FILE_ATTRIBUTE_SPARSE_FILE = 512,
			FILE_ATTRIBUTE_REPARSE_POINT = 1024,
			FILE_ATTRIBUTE_COMPRESSED = 2048,
			FILE_ATTRIBUTE_OFFLINE = 4096,
			FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 8192,
			FILE_ATTRIBUTE_ENCRYPTED = 16384,
			FILE_ATTRIBUTE_INTEGRITY_STREAM = 32768,
			FILE_ATTRIBUTE_VIRTUAL = 65536,
			FILE_ATTRIBUTE_NO_SCRUB_DATA = 131072,
			FILE_ATTRIBUTE_EA = 262144,
			FILE_ATTRIBUTE_PINNED = 524288,
			FILE_ATTRIBUTE_UNPINNED = 1048576,
			FILE_ATTRIBUTE_RECALL_ON_OPEN = 262144,
			FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = 4194304,
			FILE_FLAG_WRITE_THROUGH = 2147483648,
			FILE_FLAG_OVERLAPPED = 1073741824,
			FILE_FLAG_NO_BUFFERING = 536870912,
			FILE_FLAG_RANDOM_ACCESS = 268435456,
			FILE_FLAG_SEQUENTIAL_SCAN = 134217728,
			FILE_FLAG_DELETE_ON_CLOSE = 67108864,
			FILE_FLAG_BACKUP_SEMANTICS = 33554432,
			FILE_FLAG_POSIX_SEMANTICS = 16777216,
			FILE_FLAG_SESSION_AWARE = 8388608,
			FILE_FLAG_OPEN_REPARSE_POINT = 2097152,
			FILE_FLAG_OPEN_NO_RECALL = 1048576,
			FILE_FLAG_FIRST_PIPE_INSTANCE = 524288,
			PIPE_ACCESS_DUPLEX = 3,
			PIPE_ACCESS_INBOUND = 1,
			PIPE_ACCESS_OUTBOUND = 2,
			SECURITY_ANONYMOUS = 0,
			SECURITY_IDENTIFICATION = 65536,
			SECURITY_IMPERSONATION = 131072,
			SECURITY_DELEGATION = 196608,
			SECURITY_CONTEXT_TRACKING = 262144,
			SECURITY_EFFECTIVE_ONLY = 524288,
			SECURITY_SQOS_PRESENT = 1048576,
			SECURITY_VALID_SQOS_FLAGS = 2031616,
		}
		[AllowDuplicates]
		public enum FILE_ACCESS_FLAGS : uint32
		{
			FILE_READ_DATA = 1,
			FILE_LIST_DIRECTORY = 1,
			FILE_WRITE_DATA = 2,
			FILE_ADD_FILE = 2,
			FILE_APPEND_DATA = 4,
			FILE_ADD_SUBDIRECTORY = 4,
			FILE_CREATE_PIPE_INSTANCE = 4,
			FILE_READ_EA = 8,
			FILE_WRITE_EA = 16,
			FILE_EXECUTE = 32,
			FILE_TRAVERSE = 32,
			FILE_DELETE_CHILD = 64,
			FILE_READ_ATTRIBUTES = 128,
			FILE_WRITE_ATTRIBUTES = 256,
			READ_CONTROL = 131072,
			SYNCHRONIZE = 1048576,
			STANDARD_RIGHTS_REQUIRED = 983040,
			STANDARD_RIGHTS_READ = 131072,
			STANDARD_RIGHTS_WRITE = 131072,
			STANDARD_RIGHTS_EXECUTE = 131072,
			STANDARD_RIGHTS_ALL = 2031616,
			SPECIFIC_RIGHTS_ALL = 65535,
			FILE_ALL_ACCESS = 2032127,
			FILE_GENERIC_READ = 1179785,
			FILE_GENERIC_WRITE = 1179926,
			FILE_GENERIC_EXECUTE = 1179808,
		}
		public enum GET_FILE_VERSION_INFO_FLAGS : uint32
		{
			LOCALISED = 1,
			NEUTRAL = 2,
			PREFETCHED = 4,
		}
		public enum VER_FIND_FILE_FLAGS : uint32
		{
			VFFF_ISSHAREDFILE = 1,
		}
		public enum VER_FIND_FILE_STATUS : uint32
		{
			CURNEDEST = 1,
			FILEINUSE = 2,
			BUFFTOOSMALL = 4,
		}
		public enum VER_INSTALL_FILE_FLAGS : uint32
		{
			FORCEINSTALL = 1,
			DONTDELETEOLD = 2,
		}
		public enum VER_INSTALL_FILE_STATUS : uint32
		{
			TEMPFILE = 1,
			MISMATCH = 2,
			SRCOLD = 4,
			DIFFLANG = 8,
			DIFFCODEPG = 16,
			DIFFTYPE = 32,
			WRITEPROT = 64,
			FILEINUSE = 128,
			OUTOFSPACE = 256,
			ACCESSVIOLATION = 512,
			SHARINGVIOLATION = 1024,
			CANNOTCREATE = 2048,
			CANNOTDELETE = 4096,
			CANNOTRENAME = 8192,
			CANNOTDELETECUR = 16384,
			OUTOFMEMORY = 32768,
			CANNOTREADSRC = 65536,
			CANNOTREADDST = 131072,
			BUFFTOOSMALL = 262144,
			CANNOTLOADLZ32 = 524288,
			CANNOTLOADCABINET = 1048576,
		}
		public enum VS_FIXEDFILEINFO_FILE_FLAGS : uint32
		{
			DEBUG = 1,
			PRERELEASE = 2,
			PATCHED = 4,
			PRIVATEBUILD = 8,
			INFOINFERRED = 16,
			SPECIALBUILD = 32,
		}
		[AllowDuplicates]
		public enum VS_FIXEDFILEINFO_FILE_OS : int32
		{
			VOS_UNKNOWN = 0,
			VOS_DOS = 65536,
			VOS_OS216 = 131072,
			VOS_OS232 = 196608,
			VOS_NT = 262144,
			VOS_WINCE = 327680,
			VOS__BASE = 0,
			VOS__WINDOWS16 = 1,
			VOS__PM16 = 2,
			VOS__PM32 = 3,
			VOS__WINDOWS32 = 4,
			VOS_DOS_WINDOWS16 = 65537,
			VOS_DOS_WINDOWS32 = 65540,
			VOS_OS216_PM16 = 131074,
			VOS_OS232_PM32 = 196611,
			VOS_NT_WINDOWS32 = 262148,
		}
		public enum VS_FIXEDFILEINFO_FILE_TYPE : int32
		{
			UNKNOWN = 0,
			APP = 1,
			DLL = 2,
			DRV = 3,
			FONT = 4,
			VXD = 5,
			STATIC_LIB = 7,
		}
		[AllowDuplicates]
		public enum VS_FIXEDFILEINFO_FILE_SUBTYPE : int32
		{
			UNKNOWN = 0,
			DRV_PRINTER = 1,
			DRV_KEYBOARD = 2,
			DRV_LANGUAGE = 3,
			DRV_DISPLAY = 4,
			DRV_MOUSE = 5,
			DRV_NETWORK = 6,
			DRV_SYSTEM = 7,
			DRV_INSTALLABLE = 8,
			DRV_SOUND = 9,
			DRV_COMM = 10,
			DRV_INPUTMETHOD = 11,
			DRV_VERSIONED_PRINTER = 12,
			FONT_RASTER = 1,
			FONT_VECTOR = 2,
			FONT_TRUETYPE = 3,
		}
		public enum FILE_CREATION_DISPOSITION : uint32
		{
			CREATE_NEW = 1,
			CREATE_ALWAYS = 2,
			OPEN_EXISTING = 3,
			OPEN_ALWAYS = 4,
			TRUNCATE_EXISTING = 5,
		}
		public enum FILE_SHARE_MODE : uint32
		{
			NONE = 0,
			DELETE = 4,
			READ = 1,
			WRITE = 2,
		}
		public enum SHARE_TYPE : uint32
		{
			DISKTREE = 0,
			PRINTQ = 1,
			DEVICE = 2,
			IPC = 3,
			SPECIAL = 2147483648,
			TEMPORARY = 1073741824,
			MASK = 255,
		}
		public enum CLFS_FLAG : uint32
		{
			FORCE_APPEND = 1,
			FORCE_FLUSH = 2,
			NO_FLAGS = 0,
			USE_RESERVATION = 4,
		}
		public enum SET_FILE_POINTER_MOVE_METHOD : uint32
		{
			BEGIN = 0,
			CURRENT = 1,
			END = 2,
		}
		public enum MOVE_FILE_FLAGS : uint32
		{
			COPY_ALLOWED = 2,
			CREATE_HARDLINK = 16,
			DELAY_UNTIL_REBOOT = 4,
			REPLACE_EXISTING = 1,
			WRITE_THROUGH = 8,
			FAIL_IF_NOT_TRACKABLE = 32,
		}
		public enum FILE_NAME : uint32
		{
			NORMALIZED = 0,
			OPENED = 8,
		}
		[AllowDuplicates]
		public enum LZOPENFILE_STYLE : uint32
		{
			CANCEL = 2048,
			CREATE = 4096,
			DELETE = 512,
			EXIST = 16384,
			PARSE = 256,
			PROMPT = 8192,
			READ = 0,
			READWRITE = 2,
			REOPEN = 32768,
			SHARE_DENY_NONE = 64,
			SHARE_DENY_READ = 48,
			SHARE_DENY_WRITE = 32,
			SHARE_EXCLUSIVE = 16,
			WRITE = 1,
			SHARE_COMPAT = 0,
			VERIFY = 1024,
		}
		public enum FILE_NOTIFY_CHANGE : uint32
		{
			FILE_NAME = 1,
			DIR_NAME = 2,
			ATTRIBUTES = 4,
			SIZE = 8,
			LAST_WRITE = 16,
			LAST_ACCESS = 32,
			CREATION = 64,
			SECURITY = 256,
		}
		public enum TXFS_MINIVERSION : uint32
		{
			COMMITTED_VIEW = 0,
			DIRTY_VIEW = 65535,
			DEFAULT_VIEW = 65534,
		}
		public enum TAPE_POSITION_TYPE : int32
		{
			ABSOLUTE_POSITION = 0,
			LOGICAL_POSITION = 1,
		}
		public enum CREATE_TAPE_PARTITION_METHOD : int32
		{
			FIXED_PARTITIONS = 0,
			INITIATOR_PARTITIONS = 2,
			SELECT_PARTITIONS = 1,
		}
		public enum REPLACE_FILE_FLAGS : uint32
		{
			WRITE_THROUGH = 1,
			IGNORE_MERGE_ERRORS = 2,
			IGNORE_ACL_ERRORS = 4,
		}
		public enum TAPEMARK_TYPE : int32
		{
			FILEMARKS = 1,
			LONG_FILEMARKS = 3,
			SETMARKS = 0,
			SHORT_FILEMARKS = 2,
		}
		public enum DISKQUOTA_USERNAME_RESOLVE : uint32
		{
			ASYNC = 2,
			NONE = 0,
			SYNC = 1,
		}
		public enum TAPE_POSITION_METHOD : int32
		{
			ABSOLUTE_BLOCK = 1,
			LOGICAL_BLOCK = 2,
			REWIND = 0,
			SPACE_END_OF_DATA = 4,
			SPACE_FILEMARKS = 6,
			SPACE_RELATIVE_BLOCKS = 5,
			SPACE_SEQUENTIAL_FMKS = 7,
			SPACE_SEQUENTIAL_SMKS = 9,
			SPACE_SETMARKS = 8,
		}
		public enum NT_CREATE_FILE_DISPOSITION : uint32
		{
			SUPERSEDE = 0,
			CREATE = 2,
			OPEN = 1,
			OPEN_IF = 3,
			OVERWRITE = 4,
			OVERWRITE_IF = 5,
		}
		public enum TAPE_INFORMATION_TYPE : uint32
		{
			DRIVE_INFORMATION = 1,
			MEDIA_INFORMATION = 0,
		}
		public enum NTMS_OMID_TYPE : uint32
		{
			FILESYSTEM_INFO = 2,
			RAW_LABEL = 1,
		}
		public enum LOCK_FILE_FLAGS : uint32
		{
			EXCLUSIVE_LOCK = 2,
			FAIL_IMMEDIATELY = 1,
		}
		public enum LPPROGRESS_ROUTINE_CALLBACK_REASON : uint32
		{
			CHUNK_FINISHED = 0,
			STREAM_SWITCH = 1,
		}
		public enum PREPARE_TAPE_OPERATION : int32
		{
			FORMAT = 5,
			LOAD = 0,
			LOCK = 3,
			TENSION = 2,
			UNLOAD = 1,
			UNLOCK = 4,
		}
		public enum GET_TAPE_DRIVE_PARAMETERS_OPERATION : uint32
		{
			DRIVE_INFORMATION = 1,
			MEDIA_INFORMATION = 0,
		}
		public enum ERASE_TAPE_TYPE : int32
		{
			LONG = 1,
			SHORT = 0,
		}
		public enum FILE_ACTION : uint32
		{
			ADDED = 1,
			REMOVED = 2,
			MODIFIED = 3,
			RENAMED_OLD_NAME = 4,
			RENAMED_NEW_NAME = 5,
		}
		public enum SHARE_INFO_PERMISSIONS : uint32
		{
			READ = 1,
			WRITE = 2,
			CREATE = 4,
			EXEC = 8,
			DELETE = 16,
			ATRIB = 32,
			PERM = 64,
			ALL = 32768,
		}
		public enum FILE_DEVICE_TYPE : uint32
		{
			CD_ROM = 2,
			DISK = 7,
			TAPE = 31,
			DVD = 51,
		}
		public enum SESSION_INFO_USER_FLAGS : uint32
		{
			GUEST = 1,
			NOENCRYPTION = 2,
		}
		public enum WIN_STREAM_ID : uint32
		{
			ALTERNATE_DATA = 4,
			DATA = 1,
			EA_DATA = 2,
			LINK = 5,
			OBJECT_ID = 7,
			PROPERTY_DATA = 6,
			REPARSE_DATA = 8,
			SECURITY_DATA = 3,
			SPARSE_BLOCK = 9,
			TXFS_DATA = 10,
		}
		public enum TXF_LOG_RECORD_TYPE : uint16
		{
			AFFECTED_FILE = 4,
			TRUNCATE = 2,
			WRITE = 1,
		}
		public enum FILE_INFO_FLAGS_PERMISSIONS : uint32
		{
			READ = 1,
			WRITE = 2,
			CREATE = 4,
		}
		public enum SYMBOLIC_LINK_FLAGS : uint32
		{
			DIRECTORY = 1,
			ALLOW_UNPRIVILEGED_CREATE = 2,
		}
		public enum FINDEX_INFO_LEVELS : int32
		{
			Standard = 0,
			Basic = 1,
			MaxInfoLevel = 2,
		}
		public enum FINDEX_SEARCH_OPS : int32
		{
			NameMatch = 0,
			LimitToDirectories = 1,
			LimitToDevices = 2,
			MaxSearchOp = 3,
		}
		public enum READ_DIRECTORY_NOTIFY_INFORMATION_CLASS : int32
		{
			Information = 1,
			ExtendedInformation = 2,
		}
		public enum GET_FILEEX_INFO_LEVELS : int32
		{
			InfoStandard = 0,
			MaxInfoLevel = 1,
		}
		public enum FILE_INFO_BY_HANDLE_CLASS : int32
		{
			FileBasicInfo = 0,
			FileStandardInfo = 1,
			FileNameInfo = 2,
			FileRenameInfo = 3,
			FileDispositionInfo = 4,
			FileAllocationInfo = 5,
			FileEndOfFileInfo = 6,
			FileStreamInfo = 7,
			FileCompressionInfo = 8,
			FileAttributeTagInfo = 9,
			FileIdBothDirectoryInfo = 10,
			FileIdBothDirectoryRestartInfo = 11,
			FileIoPriorityHintInfo = 12,
			FileRemoteProtocolInfo = 13,
			FileFullDirectoryInfo = 14,
			FileFullDirectoryRestartInfo = 15,
			FileStorageInfo = 16,
			FileAlignmentInfo = 17,
			FileIdInfo = 18,
			FileIdExtdDirectoryInfo = 19,
			FileIdExtdDirectoryRestartInfo = 20,
			FileDispositionInfoEx = 21,
			FileRenameInfoEx = 22,
			FileCaseSensitiveInfo = 23,
			FileNormalizedNameInfo = 24,
			MaximumFileInfoByHandleClass = 25,
		}
		public enum STREAM_INFO_LEVELS : int32
		{
			Standard = 0,
			MaxInfoLevel = 1,
		}
		public enum NtmsObjectsTypes : int32
		{
			UNKNOWN = 0,
			OBJECT = 1,
			CHANGER = 2,
			CHANGER_TYPE = 3,
			COMPUTER = 4,
			DRIVE = 5,
			DRIVE_TYPE = 6,
			IEDOOR = 7,
			IEPORT = 8,
			LIBRARY = 9,
			LIBREQUEST = 10,
			LOGICAL_MEDIA = 11,
			MEDIA_POOL = 12,
			MEDIA_TYPE = 13,
			PARTITION = 14,
			PHYSICAL_MEDIA = 15,
			STORAGESLOT = 16,
			OPREQUEST = 17,
			UI_DESTINATION = 18,
			NUMBER_OF_OBJECT_TYPES = 19,
		}
		public enum NtmsAsyncStatus : int32
		{
			QUEUED = 0,
			WAIT_RESOURCE = 1,
			WAIT_OPERATOR = 2,
			INPROCESS = 3,
			COMPLETE = 4,
		}
		public enum NtmsAsyncOperations : int32
		{
			NTMS_ASYNCOP_MOUNT = 1,
		}
		public enum NtmsSessionOptions : int32
		{
			NTMS_SESSION_QUERYEXPEDITE = 1,
		}
		[AllowDuplicates]
		public enum NtmsMountOptions : int32
		{
			READ = 1,
			WRITE = 2,
			ERROR_NOT_AVAILABLE = 4,
			ERROR_IF_UNAVAILABLE = 4,
			ERROR_OFFLINE = 8,
			ERROR_IF_OFFLINE = 8,
			SPECIFIC_DRIVE = 16,
			NOWAIT = 32,
		}
		public enum NtmsDismountOptions : int32
		{
			DEFERRED = 1,
			IMMEDIATE = 2,
		}
		[AllowDuplicates]
		public enum NtmsMountPriority : int32
		{
			DEFAULT = 0,
			HIGHEST = 15,
			HIGH = 7,
			NORMAL = 0,
			LOW = -7,
			LOWEST = -15,
		}
		public enum NtmsAllocateOptions : int32
		{
			NEW = 1,
			NEXT = 2,
			ERROR_IF_UNAVAILABLE = 4,
		}
		public enum NtmsCreateOptions : int32
		{
			OPEN_EXISTING = 1,
			CREATE_NEW = 2,
			OPEN_ALWAYS = 3,
		}
		public enum NtmsDriveState : int32
		{
			DISMOUNTED = 0,
			MOUNTED = 1,
			LOADED = 2,
			UNLOADED = 5,
			BEING_CLEANED = 6,
			DISMOUNTABLE = 7,
		}
		public enum NtmsLibraryType : int32
		{
			UNKNOWN = 0,
			OFFLINE = 1,
			ONLINE = 2,
			STANDALONE = 3,
		}
		public enum NtmsLibraryFlags : int32
		{
			FIXEDOFFLINE = 1,
			CLEANERPRESENT = 2,
			AUTODETECTCHANGE = 4,
			IGNORECLEANERUSESREMAINING = 8,
			RECOGNIZECLEANERBARCODE = 16,
		}
		public enum NtmsInventoryMethod : int32
		{
			NONE = 0,
			FAST = 1,
			OMID = 2,
			DEFAULT = 3,
			SLOT = 4,
			STOP = 5,
			MAX = 6,
		}
		public enum NtmsSlotState : int32
		{
			UNKNOWN = 0,
			FULL = 1,
			EMPTY = 2,
			NOTPRESENT = 3,
			NEEDSINVENTORY = 4,
		}
		public enum NtmsDoorState : int32
		{
			UNKNOWN = 0,
			CLOSED = 1,
			OPEN = 2,
		}
		public enum NtmsPortPosition : int32
		{
			UNKNOWN = 0,
			EXTENDED = 1,
			RETRACTED = 2,
		}
		public enum NtmsPortContent : int32
		{
			UNKNOWN = 0,
			FULL = 1,
			EMPTY = 2,
		}
		public enum NtmsBarCodeState : int32
		{
			OK = 1,
			UNREADABLE = 2,
		}
		public enum NtmsMediaState : int32
		{
			IDLE = 0,
			INUSE = 1,
			MOUNTED = 2,
			LOADED = 3,
			UNLOADED = 4,
			OPERROR = 5,
			OPREQ = 6,
		}
		public enum NtmsPartitionState : int32
		{
			UNKNOWN = 0,
			UNPREPARED = 1,
			INCOMPATIBLE = 2,
			DECOMMISSIONED = 3,
			AVAILABLE = 4,
			ALLOCATED = 5,
			COMPLETE = 6,
			FOREIGN = 7,
			IMPORT = 8,
			RESERVED = 9,
		}
		public enum NtmsPoolType : int32
		{
			UNKNOWN = 0,
			SCRATCH = 1,
			FOREIGN = 2,
			IMPORT = 3,
			APPLICATION = 1000,
		}
		public enum NtmsAllocationPolicy : int32
		{
			NTMS_ALLOCATE_FROMSCRATCH = 1,
		}
		public enum NtmsDeallocationPolicy : int32
		{
			NTMS_DEALLOCATE_TOSCRATCH = 1,
		}
		public enum NtmsReadWriteCharacteristics : int32
		{
			UNKNOWN = 0,
			REWRITABLE = 1,
			WRITEONCE = 2,
			READONLY = 3,
		}
		[AllowDuplicates]
		public enum NtmsLmOperation : int32
		{
			REMOVE = 0,
			DISABLECHANGER = 1,
			DISABLELIBRARY = 1,
			ENABLECHANGER = 2,
			ENABLELIBRARY = 2,
			DISABLEDRIVE = 3,
			ENABLEDRIVE = 4,
			DISABLEMEDIA = 5,
			ENABLEMEDIA = 6,
			UPDATEOMID = 7,
			INVENTORY = 8,
			DOORACCESS = 9,
			EJECT = 10,
			EJECTCLEANER = 11,
			INJECT = 12,
			INJECTCLEANER = 13,
			PROCESSOMID = 14,
			CLEANDRIVE = 15,
			DISMOUNT = 16,
			MOUNT = 17,
			WRITESCRATCH = 18,
			CLASSIFY = 19,
			RESERVECLEANER = 20,
			RELEASECLEANER = 21,
			MAXWORKITEM = 22,
		}
		[AllowDuplicates]
		public enum NtmsLmState : int32
		{
			QUEUED = 0,
			INPROCESS = 1,
			PASSED = 2,
			FAILED = 3,
			INVALID = 4,
			WAITING = 5,
			DEFERRED = 6,
			DEFFERED = 6,
			CANCELLED = 7,
			STOPPED = 8,
		}
		public enum NtmsOpreqCommand : int32
		{
			UNKNOWN = 0,
			NEWMEDIA = 1,
			CLEANER = 2,
			DEVICESERVICE = 3,
			MOVEMEDIA = 4,
			MESSAGE = 5,
		}
		public enum NtmsOpreqState : int32
		{
			UNKNOWN = 0,
			SUBMITTED = 1,
			ACTIVE = 2,
			INPROGRESS = 3,
			REFUSED = 4,
			COMPLETE = 5,
		}
		public enum NtmsLibRequestFlags : int32
		{
			NOAUTOPURGE = 1,
			NOFAILEDPURGE = 2,
		}
		public enum NtmsOpRequestFlags : int32
		{
			NOAUTOPURGE = 1,
			NOFAILEDPURGE = 2,
			NOALERTS = 16,
			NOTRAYICON = 32,
		}
		public enum NtmsMediaPoolPolicy : int32
		{
			PURGEOFFLINESCRATCH = 1,
			KEEPOFFLINEIMPORT = 2,
		}
		public enum NtmsOperationalState : int32
		{
			READY = 0,
			INITIALIZING = 10,
			NEEDS_SERVICE = 20,
			NOT_PRESENT = 21,
		}
		public enum NtmsCreateNtmsMediaOptions : int32
		{
			NTMS_ERROR_ON_DUPLICATE = 1,
		}
		public enum NtmsEnumerateOption : int32
		{
			DEFAULT = 0,
			ROOTPOOL = 1,
		}
		public enum NtmsEjectOperation : int32
		{
			START = 0,
			STOP = 1,
			QUEUE = 2,
			FORCE = 3,
			IMMEDIATE = 4,
			ASK_USER = 5,
		}
		public enum NtmsInjectOperation : int32
		{
			START = 0,
			STOP = 1,
			RETRACT = 2,
			STARTMANY = 3,
		}
		public enum NtmsDriveType : int32
		{
			NTMS_UNKNOWN_DRIVE = 0,
		}
		public enum NtmsAccessMask : int32
		{
			USE_ACCESS = 1,
			MODIFY_ACCESS = 2,
			CONTROL_ACCESS = 4,
		}
		public enum NtmsUITypes : int32
		{
			INVALID = 0,
			INFO = 1,
			REQ = 2,
			ERR = 3,
			MAX = 4,
		}
		public enum NtmsUIOperations : int32
		{
			UIDEST_ADD = 1,
			UIDEST_DELETE = 2,
			UIDEST_DELETEALL = 3,
			UIOPERATION_MAX = 4,
		}
		public enum NtmsNotificationOperations : int32
		{
			OBJ_UPDATE = 1,
			OBJ_INSERT = 2,
			OBJ_DELETE = 3,
			EVENT_SIGNAL = 4,
			EVENT_COMPLETE = 5,
		}
		public enum CLS_CONTEXT_MODE : int32
		{
			None = 0,
			UndoNext = 1,
			Previous = 2,
			Forward = 3,
		}
		public enum CLFS_CONTEXT_MODE : int32
		{
			None = 0,
			UndoNext = 1,
			Previous = 2,
			Forward = 3,
		}
		public enum CLS_LOG_INFORMATION_CLASS : int32
		{
			BasicInformation = 0,
			BasicInformationPhysical = 1,
			PhysicalNameInformation = 2,
			StreamIdentifierInformation = 3,
			SystemMarkingInformation = 4,
			PhysicalLsnInformation = 5,
		}
		public enum CLS_IOSTATS_CLASS : int32
		{
			Default = 0,
			Max = 65535,
		}
		public enum CLFS_IOSTATS_CLASS : int32
		{
			Default = 0,
			Max = 65535,
		}
		public enum CLFS_LOG_ARCHIVE_MODE : int32
		{
			Enabled = 1,
			Disabled = 2,
		}
		public enum CLFS_MGMT_POLICY_TYPE : int32
		{
			MaximumSize = 0,
			MinimumSize = 1,
			NewContainerSize = 2,
			GrowthRate = 3,
			LogTail = 4,
			AutoShrink = 5,
			AutoGrow = 6,
			NewContainerPrefix = 7,
			NewContainerSuffix = 8,
			NewContainerExtension = 9,
			Invalid = 10,
		}
		public enum CLFS_MGMT_NOTIFICATION_TYPE : int32
		{
			AdvanceTailNotification = 0,
			LogFullHandlerNotification = 1,
			LogUnpinnedNotification = 2,
			LogWriteNotification = 3,
		}
		public enum SERVER_CERTIFICATE_TYPE : int32
		{
			QUIC = 0,
		}
		public enum IORING_VERSION : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum IORING_FEATURE_FLAGS : int32
		{
			FLAGS_NONE = 0,
			UM_EMULATION = 1,
			SET_COMPLETION_EVENT = 2,
		}
		public enum IORING_OP_CODE : int32
		{
			NOP = 0,
			READ = 1,
			REGISTER_FILES = 2,
			REGISTER_BUFFERS = 3,
			CANCEL = 4,
		}
		public enum IORING_SQE_FLAGS : int32
		{
			IOSQE_FLAGS_NONE = 0,
		}
		public enum IORING_CREATE_REQUIRED_FLAGS : int32
		{
			FLAGS_NONE = 0,
		}
		public enum IORING_CREATE_ADVISORY_FLAGS : int32
		{
			FLAGS_NONE = 0,
		}
		public enum IORING_REF_KIND : int32
		{
			RAW = 0,
			REGISTERED = 1,
		}
		public enum TRANSACTION_OUTCOME : int32
		{
			Undetermined = 1,
			Committed = 2,
			Aborted = 3,
		}
		public enum STORAGE_BUS_TYPE : int32
		{
			TypeUnknown = 0,
			TypeScsi = 1,
			TypeAtapi = 2,
			TypeAta = 3,
			Type1394 = 4,
			TypeSsa = 5,
			TypeFibre = 6,
			TypeUsb = 7,
			TypeRAID = 8,
			TypeiScsi = 9,
			TypeSas = 10,
			TypeSata = 11,
			TypeSd = 12,
			TypeMmc = 13,
			TypeVirtual = 14,
			TypeFileBackedVirtual = 15,
			TypeSpaces = 16,
			TypeNvme = 17,
			TypeSCM = 18,
			TypeUfs = 19,
			TypeMax = 20,
			TypeMaxReserved = 127,
		}
		public enum COPYFILE2_MESSAGE_TYPE : int32
		{
			NONE = 0,
			CHUNK_STARTED = 1,
			CHUNK_FINISHED = 2,
			STREAM_STARTED = 3,
			STREAM_FINISHED = 4,
			POLL_CONTINUE = 5,
			ERROR = 6,
			MAX = 7,
		}
		public enum COPYFILE2_MESSAGE_ACTION : int32
		{
			CONTINUE = 0,
			CANCEL = 1,
			STOP = 2,
			QUIET = 3,
			PAUSE = 4,
		}
		public enum COPYFILE2_COPY_PHASE : int32
		{
			NONE = 0,
			PREPARE_SOURCE = 1,
			PREPARE_DEST = 2,
			READ_SOURCE = 3,
			WRITE_DESTINATION = 4,
			SERVER_COPY = 5,
			NAMEGRAFT_COPY = 6,
			MAX = 7,
		}
		public enum PRIORITY_HINT : int32
		{
			IoPriorityHintVeryLow = 0,
			IoPriorityHintLow = 1,
			IoPriorityHintNormal = 2,
			MaximumIoPriorityHintType = 3,
		}
		public enum FILE_ID_TYPE : int32
		{
			FileIdType = 0,
			ObjectIdType = 1,
			ExtendedFileIdType = 2,
			MaximumFileIdType = 3,
		}
		
		// --- Function Pointers ---
		
		public function uint32 MAXMEDIALABEL(out uint32 pMaxSize);
		public function uint32 CLAIMMEDIALABEL(in uint8 pBuffer, uint32 nBufferSize, out MediaLabelInfo pLabelInfo);
		public function uint32 CLAIMMEDIALABELEX(in uint8 pBuffer, uint32 nBufferSize, out MediaLabelInfo pLabelInfo, out Guid LabelGuid);
		public function void* CLFS_BLOCK_ALLOCATION(uint32 cbBufferLength, void* pvUserContext);
		public function void CLFS_BLOCK_DEALLOCATION(void* pvBuffer, void* pvUserContext);
		public function void PCLFS_COMPLETION_ROUTINE(void* pvOverlapped, uint32 ulReserved);
		public function void PLOG_TAIL_ADVANCE_CALLBACK(HANDLE hLogFile, CLS_LSN lsnTarget, void* pvClientContext);
		public function void PLOG_FULL_HANDLER_CALLBACK(HANDLE hLogFile, uint32 dwError, BOOL fLogIsPinned, void* pvClientContext);
		public function void PLOG_UNPINNED_CALLBACK(HANDLE hLogFile, void* pvClientContext);
		public function BOOL WofEnumEntryProc(void* EntryInfo, void* UserData);
		public function BOOL WofEnumFilesProc(PWSTR FilePath, void* ExternalFileInfo, void* UserData);
		public function void PFN_IO_COMPLETION(out FIO_CONTEXT pContext, out FH_OVERLAPPED lpo, uint32 cb, uint32 dwCompletionStatus);
		public function HANDLE FCACHE_CREATE_CALLBACK(PSTR lpstrName, void* lpvData, out uint32 cbFileSize, out uint32 cbFileSizeHigh);
		public function HANDLE FCACHE_RICHCREATE_CALLBACK(PSTR lpstrName, void* lpvData, out uint32 cbFileSize, out uint32 cbFileSizeHigh, out BOOL pfDidWeScanIt, out BOOL pfIsStuffed, out BOOL pfStoredWithDots, out BOOL pfStoredWithTerminatingDot);
		public function int32 CACHE_KEY_COMPARE(uint32 cbKey1, out uint8 lpbKey1, uint32 cbKey2, out uint8 lpbKey2);
		public function uint32 CACHE_KEY_HASH(out uint8 lpbKey, uint32 cbKey);
		public function BOOL CACHE_READ_CALLBACK(uint32 cb, out uint8 lpb, void* lpvContext);
		public function void CACHE_DESTROY_CALLBACK(uint32 cb, out uint8 lpb);
		public function BOOL CACHE_ACCESS_CHECK(out SECURITY_DESCRIPTOR pSecurityDescriptor, HANDLE hClientToken, uint32 dwDesiredAccess, out GENERIC_MAPPING GenericMapping, out PRIVILEGE_SET PrivilegeSet, out uint32 PrivilegeSetLength, out uint32 GrantedAccess, out int32 AccessStatus);
		public function uint32 PFE_EXPORT_FUNC(ref uint8 pbData, void* pvCallbackContext, uint32 ulLength);
		public function uint32 PFE_IMPORT_FUNC(out uint8 pbData, void* pvCallbackContext, out uint32 ulLength);
		public function uint32 LPPROGRESS_ROUTINE(LARGE_INTEGER TotalFileSize, LARGE_INTEGER TotalBytesTransferred, LARGE_INTEGER StreamSize, LARGE_INTEGER StreamBytesTransferred, uint32 dwStreamNumber, LPPROGRESS_ROUTINE_CALLBACK_REASON dwCallbackReason, HANDLE hSourceFile, HANDLE hDestinationFile, void* lpData);
		public function COPYFILE2_MESSAGE_ACTION PCOPYFILE2_PROGRESS_ROUTINE(in COPYFILE2_MESSAGE pMessage, void* pvCallbackContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct WIN32_FIND_DATAA
		{
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
			public uint32 dwReserved0;
			public uint32 dwReserved1;
			public CHAR[260] cFileName;
			public CHAR[14] cAlternateFileName;
		}
		[CRepr]
		public struct WIN32_FIND_DATAW
		{
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
			public uint32 dwReserved0;
			public uint32 dwReserved1;
			public char16[260] cFileName;
			public char16[14] cAlternateFileName;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION
		{
			public void* TransactionKey;
			public uint32 TransactionNotification;
			public LARGE_INTEGER TmVirtualClock;
			public uint32 ArgumentLength;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION_RECOVERY_ARGUMENT
		{
			public Guid EnlistmentId;
			public Guid UOW;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION_TM_ONLINE_ARGUMENT
		{
			public Guid TmIdentity;
			public uint32 Flags;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION_SAVEPOINT_ARGUMENT
		{
			public uint32 SavepointId;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT
		{
			public uint32 PropagationCookie;
			public Guid UOW;
			public Guid TmIdentity;
			public uint32 BufferLength;
		}
		[CRepr]
		public struct TRANSACTION_NOTIFICATION_MARSHAL_ARGUMENT
		{
			public uint32 MarshalCookie;
			public Guid UOW;
		}
		[CRepr]
		public struct KCRM_MARSHAL_HEADER
		{
			public uint32 VersionMajor;
			public uint32 VersionMinor;
			public uint32 NumProtocols;
			public uint32 Unused;
		}
		[CRepr]
		public struct KCRM_TRANSACTION_BLOB
		{
			public Guid UOW;
			public Guid TmIdentity;
			public uint32 IsolationLevel;
			public uint32 IsolationFlags;
			public uint32 Timeout;
			public char16[64] Description;
		}
		[CRepr]
		public struct KCRM_PROTOCOL_BLOB
		{
			public Guid ProtocolId;
			public uint32 StaticInfoLength;
			public uint32 TransactionIdInfoLength;
			public uint32 Unused1;
			public uint32 Unused2;
		}
		[CRepr]
		public struct DISK_SPACE_INFORMATION
		{
			public uint64 ActualTotalAllocationUnits;
			public uint64 ActualAvailableAllocationUnits;
			public uint64 ActualPoolUnavailableAllocationUnits;
			public uint64 CallerTotalAllocationUnits;
			public uint64 CallerAvailableAllocationUnits;
			public uint64 CallerPoolUnavailableAllocationUnits;
			public uint64 UsedAllocationUnits;
			public uint64 TotalReservedAllocationUnits;
			public uint64 VolumeStorageReserveAllocationUnits;
			public uint64 AvailableCommittedAllocationUnits;
			public uint64 PoolAvailableAllocationUnits;
			public uint32 SectorsPerAllocationUnit;
			public uint32 BytesPerSector;
		}
		[CRepr]
		public struct WIN32_FILE_ATTRIBUTE_DATA
		{
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
		}
		[CRepr]
		public struct BY_HANDLE_FILE_INFORMATION
		{
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 dwVolumeSerialNumber;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
			public uint32 nNumberOfLinks;
			public uint32 nFileIndexHigh;
			public uint32 nFileIndexLow;
		}
		[CRepr]
		public struct CREATEFILE2_EXTENDED_PARAMETERS
		{
			public uint32 dwSize;
			public uint32 dwFileAttributes;
			public uint32 dwFileFlags;
			public uint32 dwSecurityQosFlags;
			public SECURITY_ATTRIBUTES* lpSecurityAttributes;
			public HANDLE hTemplateFile;
		}
		[CRepr]
		public struct WIN32_FIND_STREAM_DATA
		{
			public LARGE_INTEGER StreamSize;
			public char16[296] cStreamName;
		}
		[CRepr]
		public struct VS_FIXEDFILEINFO
		{
			public uint32 dwSignature;
			public uint32 dwStrucVersion;
			public uint32 dwFileVersionMS;
			public uint32 dwFileVersionLS;
			public uint32 dwProductVersionMS;
			public uint32 dwProductVersionLS;
			public uint32 dwFileFlagsMask;
			public VS_FIXEDFILEINFO_FILE_FLAGS dwFileFlags;
			public VS_FIXEDFILEINFO_FILE_OS dwFileOS;
			public VS_FIXEDFILEINFO_FILE_TYPE dwFileType;
			public VS_FIXEDFILEINFO_FILE_SUBTYPE dwFileSubtype;
			public uint32 dwFileDateMS;
			public uint32 dwFileDateLS;
		}
		[CRepr]
		public struct NTMS_ASYNC_IO
		{
			public Guid OperationId;
			public Guid EventId;
			public uint32 dwOperationType;
			public uint32 dwResult;
			public uint32 dwAsyncState;
			public HANDLE hEvent;
			public BOOL bOnStateChange;
		}
		[CRepr]
		public struct NTMS_MOUNT_INFORMATION
		{
			public uint32 dwSize;
			public void* lpReserved;
		}
		[CRepr]
		public struct NTMS_ALLOCATION_INFORMATION
		{
			public uint32 dwSize;
			public void* lpReserved;
			public Guid AllocatedFrom;
		}
		[CRepr]
		public struct NTMS_DRIVEINFORMATIONA
		{
			public uint32 Number;
			public NtmsDriveState State;
			public Guid DriveType;
			public CHAR[64] szDeviceName;
			public CHAR[32] szSerialNumber;
			public CHAR[32] szRevision;
			public uint16 ScsiPort;
			public uint16 ScsiBus;
			public uint16 ScsiTarget;
			public uint16 ScsiLun;
			public uint32 dwMountCount;
			public SYSTEMTIME LastCleanedTs;
			public Guid SavedPartitionId;
			public Guid Library;
			public Guid Reserved;
			public uint32 dwDeferDismountDelay;
		}
		[CRepr]
		public struct NTMS_DRIVEINFORMATIONW
		{
			public uint32 Number;
			public NtmsDriveState State;
			public Guid DriveType;
			public char16[64] szDeviceName;
			public char16[32] szSerialNumber;
			public char16[32] szRevision;
			public uint16 ScsiPort;
			public uint16 ScsiBus;
			public uint16 ScsiTarget;
			public uint16 ScsiLun;
			public uint32 dwMountCount;
			public SYSTEMTIME LastCleanedTs;
			public Guid SavedPartitionId;
			public Guid Library;
			public Guid Reserved;
			public uint32 dwDeferDismountDelay;
		}
		[CRepr]
		public struct NTMS_LIBRARYINFORMATION
		{
			public NtmsLibraryType LibraryType;
			public Guid CleanerSlot;
			public Guid CleanerSlotDefault;
			public BOOL LibrarySupportsDriveCleaning;
			public BOOL BarCodeReaderInstalled;
			public NtmsInventoryMethod InventoryMethod;
			public uint32 dwCleanerUsesRemaining;
			public uint32 FirstDriveNumber;
			public uint32 dwNumberOfDrives;
			public uint32 FirstSlotNumber;
			public uint32 dwNumberOfSlots;
			public uint32 FirstDoorNumber;
			public uint32 dwNumberOfDoors;
			public uint32 FirstPortNumber;
			public uint32 dwNumberOfPorts;
			public uint32 FirstChangerNumber;
			public uint32 dwNumberOfChangers;
			public uint32 dwNumberOfMedia;
			public uint32 dwNumberOfMediaTypes;
			public uint32 dwNumberOfLibRequests;
			public Guid Reserved;
			public BOOL AutoRecovery;
			public NtmsLibraryFlags dwFlags;
		}
		[CRepr]
		public struct NTMS_CHANGERINFORMATIONA
		{
			public uint32 Number;
			public Guid ChangerType;
			public CHAR[32] szSerialNumber;
			public CHAR[32] szRevision;
			public CHAR[64] szDeviceName;
			public uint16 ScsiPort;
			public uint16 ScsiBus;
			public uint16 ScsiTarget;
			public uint16 ScsiLun;
			public Guid Library;
		}
		[CRepr]
		public struct NTMS_CHANGERINFORMATIONW
		{
			public uint32 Number;
			public Guid ChangerType;
			public char16[32] szSerialNumber;
			public char16[32] szRevision;
			public char16[64] szDeviceName;
			public uint16 ScsiPort;
			public uint16 ScsiBus;
			public uint16 ScsiTarget;
			public uint16 ScsiLun;
			public Guid Library;
		}
		[CRepr]
		public struct NTMS_STORAGESLOTINFORMATION
		{
			public uint32 Number;
			public uint32 State;
			public Guid Library;
		}
		[CRepr]
		public struct NTMS_IEDOORINFORMATION
		{
			public uint32 Number;
			public NtmsDoorState State;
			public uint16 MaxOpenSecs;
			public Guid Library;
		}
		[CRepr]
		public struct NTMS_IEPORTINFORMATION
		{
			public uint32 Number;
			public NtmsPortContent Content;
			public NtmsPortPosition Position;
			public uint16 MaxExtendSecs;
			public Guid Library;
		}
		[CRepr]
		public struct NTMS_PMIDINFORMATIONA
		{
			public Guid CurrentLibrary;
			public Guid MediaPool;
			public Guid Location;
			public uint32 LocationType;
			public Guid MediaType;
			public Guid HomeSlot;
			public CHAR[64] szBarCode;
			public NtmsBarCodeState BarCodeState;
			public CHAR[32] szSequenceNumber;
			public NtmsMediaState MediaState;
			public uint32 dwNumberOfPartitions;
			public uint32 dwMediaTypeCode;
			public uint32 dwDensityCode;
			public Guid MountedPartition;
		}
		[CRepr]
		public struct NTMS_PMIDINFORMATIONW
		{
			public Guid CurrentLibrary;
			public Guid MediaPool;
			public Guid Location;
			public uint32 LocationType;
			public Guid MediaType;
			public Guid HomeSlot;
			public char16[64] szBarCode;
			public NtmsBarCodeState BarCodeState;
			public char16[32] szSequenceNumber;
			public NtmsMediaState MediaState;
			public uint32 dwNumberOfPartitions;
			public uint32 dwMediaTypeCode;
			public uint32 dwDensityCode;
			public Guid MountedPartition;
		}
		[CRepr]
		public struct NTMS_LMIDINFORMATION
		{
			public Guid MediaPool;
			public uint32 dwNumberOfPartitions;
		}
		[CRepr]
		public struct NTMS_PARTITIONINFORMATIONA
		{
			public Guid PhysicalMedia;
			public Guid LogicalMedia;
			public NtmsPartitionState State;
			public uint16 Side;
			public uint32 dwOmidLabelIdLength;
			public uint8[255] OmidLabelId;
			public CHAR[64] szOmidLabelType;
			public CHAR[256] szOmidLabelInfo;
			public uint32 dwMountCount;
			public uint32 dwAllocateCount;
			public LARGE_INTEGER Capacity;
		}
		[CRepr]
		public struct NTMS_PARTITIONINFORMATIONW
		{
			public Guid PhysicalMedia;
			public Guid LogicalMedia;
			public NtmsPartitionState State;
			public uint16 Side;
			public uint32 dwOmidLabelIdLength;
			public uint8[255] OmidLabelId;
			public char16[64] szOmidLabelType;
			public char16[256] szOmidLabelInfo;
			public uint32 dwMountCount;
			public uint32 dwAllocateCount;
			public LARGE_INTEGER Capacity;
		}
		[CRepr]
		public struct NTMS_MEDIAPOOLINFORMATION
		{
			public uint32 PoolType;
			public Guid MediaType;
			public Guid Parent;
			public uint32 AllocationPolicy;
			public uint32 DeallocationPolicy;
			public uint32 dwMaxAllocates;
			public uint32 dwNumberOfPhysicalMedia;
			public uint32 dwNumberOfLogicalMedia;
			public uint32 dwNumberOfMediaPools;
		}
		[CRepr]
		public struct NTMS_MEDIATYPEINFORMATION
		{
			public uint32 MediaType;
			public uint32 NumberOfSides;
			public NtmsReadWriteCharacteristics ReadWriteCharacteristics;
			public FILE_DEVICE_TYPE DeviceType;
		}
		[CRepr]
		public struct NTMS_DRIVETYPEINFORMATIONA
		{
			public CHAR[128] szVendor;
			public CHAR[128] szProduct;
			public uint32 NumberOfHeads;
			public FILE_DEVICE_TYPE DeviceType;
		}
		[CRepr]
		public struct NTMS_DRIVETYPEINFORMATIONW
		{
			public char16[128] szVendor;
			public char16[128] szProduct;
			public uint32 NumberOfHeads;
			public FILE_DEVICE_TYPE DeviceType;
		}
		[CRepr]
		public struct NTMS_CHANGERTYPEINFORMATIONA
		{
			public CHAR[128] szVendor;
			public CHAR[128] szProduct;
			public uint32 DeviceType;
		}
		[CRepr]
		public struct NTMS_CHANGERTYPEINFORMATIONW
		{
			public char16[128] szVendor;
			public char16[128] szProduct;
			public uint32 DeviceType;
		}
		[CRepr]
		public struct NTMS_LIBREQUESTINFORMATIONA
		{
			public NtmsLmOperation OperationCode;
			public uint32 OperationOption;
			public NtmsLmState State;
			public Guid PartitionId;
			public Guid DriveId;
			public Guid PhysMediaId;
			public Guid Library;
			public Guid SlotId;
			public SYSTEMTIME TimeQueued;
			public SYSTEMTIME TimeCompleted;
			public CHAR[64] szApplication;
			public CHAR[64] szUser;
			public CHAR[64] szComputer;
			public uint32 dwErrorCode;
			public Guid WorkItemId;
			public uint32 dwPriority;
		}
		[CRepr]
		public struct NTMS_LIBREQUESTINFORMATIONW
		{
			public NtmsLmOperation OperationCode;
			public uint32 OperationOption;
			public NtmsLmState State;
			public Guid PartitionId;
			public Guid DriveId;
			public Guid PhysMediaId;
			public Guid Library;
			public Guid SlotId;
			public SYSTEMTIME TimeQueued;
			public SYSTEMTIME TimeCompleted;
			public char16[64] szApplication;
			public char16[64] szUser;
			public char16[64] szComputer;
			public uint32 dwErrorCode;
			public Guid WorkItemId;
			public uint32 dwPriority;
		}
		[CRepr]
		public struct NTMS_OPREQUESTINFORMATIONA
		{
			public NtmsOpreqCommand Request;
			public SYSTEMTIME Submitted;
			public NtmsOpreqState State;
			public CHAR[256] szMessage;
			public NtmsObjectsTypes Arg1Type;
			public Guid Arg1;
			public NtmsObjectsTypes Arg2Type;
			public Guid Arg2;
			public CHAR[64] szApplication;
			public CHAR[64] szUser;
			public CHAR[64] szComputer;
		}
		[CRepr]
		public struct NTMS_OPREQUESTINFORMATIONW
		{
			public NtmsOpreqCommand Request;
			public SYSTEMTIME Submitted;
			public NtmsOpreqState State;
			public char16[256] szMessage;
			public NtmsObjectsTypes Arg1Type;
			public Guid Arg1;
			public NtmsObjectsTypes Arg2Type;
			public Guid Arg2;
			public char16[64] szApplication;
			public char16[64] szUser;
			public char16[64] szComputer;
		}
		[CRepr]
		public struct NTMS_COMPUTERINFORMATION
		{
			public uint32 dwLibRequestPurgeTime;
			public uint32 dwOpRequestPurgeTime;
			public uint32 dwLibRequestFlags;
			public uint32 dwOpRequestFlags;
			public uint32 dwMediaPoolPolicy;
		}
		[CRepr]
		public struct NTMS_OBJECTINFORMATIONA
		{
			public uint32 dwSize;
			public NtmsObjectsTypes dwType;
			public SYSTEMTIME Created;
			public SYSTEMTIME Modified;
			public Guid ObjectGuid;
			public BOOL Enabled;
			public NtmsOperationalState dwOperationalState;
			public CHAR[64] szName;
			public CHAR[127] szDescription;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public NTMS_DRIVEINFORMATIONA Drive;
				public NTMS_DRIVETYPEINFORMATIONA DriveType;
				public NTMS_LIBRARYINFORMATION Library;
				public NTMS_CHANGERINFORMATIONA Changer;
				public NTMS_CHANGERTYPEINFORMATIONA ChangerType;
				public NTMS_STORAGESLOTINFORMATION StorageSlot;
				public NTMS_IEDOORINFORMATION IEDoor;
				public NTMS_IEPORTINFORMATION IEPort;
				public NTMS_PMIDINFORMATIONA PhysicalMedia;
				public NTMS_LMIDINFORMATION LogicalMedia;
				public NTMS_PARTITIONINFORMATIONA Partition;
				public NTMS_MEDIAPOOLINFORMATION MediaPool;
				public NTMS_MEDIATYPEINFORMATION MediaType;
				public NTMS_LIBREQUESTINFORMATIONA LibRequest;
				public NTMS_OPREQUESTINFORMATIONA OpRequest;
				public NTMS_COMPUTERINFORMATION Computer;
			}
		}
		[CRepr]
		public struct NTMS_OBJECTINFORMATIONW
		{
			public uint32 dwSize;
			public NtmsObjectsTypes dwType;
			public SYSTEMTIME Created;
			public SYSTEMTIME Modified;
			public Guid ObjectGuid;
			public BOOL Enabled;
			public NtmsOperationalState dwOperationalState;
			public char16[64] szName;
			public char16[127] szDescription;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public NTMS_DRIVEINFORMATIONW Drive;
				public NTMS_DRIVETYPEINFORMATIONW DriveType;
				public NTMS_LIBRARYINFORMATION Library;
				public NTMS_CHANGERINFORMATIONW Changer;
				public NTMS_CHANGERTYPEINFORMATIONW ChangerType;
				public NTMS_STORAGESLOTINFORMATION StorageSlot;
				public NTMS_IEDOORINFORMATION IEDoor;
				public NTMS_IEPORTINFORMATION IEPort;
				public NTMS_PMIDINFORMATIONW PhysicalMedia;
				public NTMS_LMIDINFORMATION LogicalMedia;
				public NTMS_PARTITIONINFORMATIONW Partition;
				public NTMS_MEDIAPOOLINFORMATION MediaPool;
				public NTMS_MEDIATYPEINFORMATION MediaType;
				public NTMS_LIBREQUESTINFORMATIONW LibRequest;
				public NTMS_OPREQUESTINFORMATIONW OpRequest;
				public NTMS_COMPUTERINFORMATION Computer;
			}
		}
		[CRepr]
		public struct NTMS_I1_LIBRARYINFORMATION
		{
			public uint32 LibraryType;
			public Guid CleanerSlot;
			public Guid CleanerSlotDefault;
			public BOOL LibrarySupportsDriveCleaning;
			public BOOL BarCodeReaderInstalled;
			public uint32 InventoryMethod;
			public uint32 dwCleanerUsesRemaining;
			public uint32 FirstDriveNumber;
			public uint32 dwNumberOfDrives;
			public uint32 FirstSlotNumber;
			public uint32 dwNumberOfSlots;
			public uint32 FirstDoorNumber;
			public uint32 dwNumberOfDoors;
			public uint32 FirstPortNumber;
			public uint32 dwNumberOfPorts;
			public uint32 FirstChangerNumber;
			public uint32 dwNumberOfChangers;
			public uint32 dwNumberOfMedia;
			public uint32 dwNumberOfMediaTypes;
			public uint32 dwNumberOfLibRequests;
			public Guid Reserved;
		}
		[CRepr]
		public struct NTMS_I1_LIBREQUESTINFORMATIONA
		{
			public uint32 OperationCode;
			public uint32 OperationOption;
			public uint32 State;
			public Guid PartitionId;
			public Guid DriveId;
			public Guid PhysMediaId;
			public Guid Library;
			public Guid SlotId;
			public SYSTEMTIME TimeQueued;
			public SYSTEMTIME TimeCompleted;
			public CHAR[64] szApplication;
			public CHAR[64] szUser;
			public CHAR[64] szComputer;
		}
		[CRepr]
		public struct NTMS_I1_LIBREQUESTINFORMATIONW
		{
			public uint32 OperationCode;
			public uint32 OperationOption;
			public uint32 State;
			public Guid PartitionId;
			public Guid DriveId;
			public Guid PhysMediaId;
			public Guid Library;
			public Guid SlotId;
			public SYSTEMTIME TimeQueued;
			public SYSTEMTIME TimeCompleted;
			public char16[64] szApplication;
			public char16[64] szUser;
			public char16[64] szComputer;
		}
		[CRepr]
		public struct NTMS_I1_PMIDINFORMATIONA
		{
			public Guid CurrentLibrary;
			public Guid MediaPool;
			public Guid Location;
			public uint32 LocationType;
			public Guid MediaType;
			public Guid HomeSlot;
			public CHAR[64] szBarCode;
			public uint32 BarCodeState;
			public CHAR[32] szSequenceNumber;
			public uint32 MediaState;
			public uint32 dwNumberOfPartitions;
		}
		[CRepr]
		public struct NTMS_I1_PMIDINFORMATIONW
		{
			public Guid CurrentLibrary;
			public Guid MediaPool;
			public Guid Location;
			public uint32 LocationType;
			public Guid MediaType;
			public Guid HomeSlot;
			public char16[64] szBarCode;
			public uint32 BarCodeState;
			public char16[32] szSequenceNumber;
			public uint32 MediaState;
			public uint32 dwNumberOfPartitions;
		}
		[CRepr]
		public struct NTMS_I1_PARTITIONINFORMATIONA
		{
			public Guid PhysicalMedia;
			public Guid LogicalMedia;
			public uint32 State;
			public uint16 Side;
			public uint32 dwOmidLabelIdLength;
			public uint8[255] OmidLabelId;
			public CHAR[64] szOmidLabelType;
			public CHAR[256] szOmidLabelInfo;
			public uint32 dwMountCount;
			public uint32 dwAllocateCount;
		}
		[CRepr]
		public struct NTMS_I1_PARTITIONINFORMATIONW
		{
			public Guid PhysicalMedia;
			public Guid LogicalMedia;
			public uint32 State;
			public uint16 Side;
			public uint32 dwOmidLabelIdLength;
			public uint8[255] OmidLabelId;
			public char16[64] szOmidLabelType;
			public char16[256] szOmidLabelInfo;
			public uint32 dwMountCount;
			public uint32 dwAllocateCount;
		}
		[CRepr]
		public struct NTMS_I1_OPREQUESTINFORMATIONA
		{
			public uint32 Request;
			public SYSTEMTIME Submitted;
			public uint32 State;
			public CHAR[127] szMessage;
			public uint32 Arg1Type;
			public Guid Arg1;
			public uint32 Arg2Type;
			public Guid Arg2;
			public CHAR[64] szApplication;
			public CHAR[64] szUser;
			public CHAR[64] szComputer;
		}
		[CRepr]
		public struct NTMS_I1_OPREQUESTINFORMATIONW
		{
			public uint32 Request;
			public SYSTEMTIME Submitted;
			public uint32 State;
			public char16[127] szMessage;
			public uint32 Arg1Type;
			public Guid Arg1;
			public uint32 Arg2Type;
			public Guid Arg2;
			public char16[64] szApplication;
			public char16[64] szUser;
			public char16[64] szComputer;
		}
		[CRepr]
		public struct NTMS_I1_OBJECTINFORMATIONA
		{
			public uint32 dwSize;
			public uint32 dwType;
			public SYSTEMTIME Created;
			public SYSTEMTIME Modified;
			public Guid ObjectGuid;
			public BOOL Enabled;
			public uint32 dwOperationalState;
			public CHAR[64] szName;
			public CHAR[127] szDescription;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public NTMS_DRIVEINFORMATIONA Drive;
				public NTMS_DRIVETYPEINFORMATIONA DriveType;
				public NTMS_I1_LIBRARYINFORMATION Library;
				public NTMS_CHANGERINFORMATIONA Changer;
				public NTMS_CHANGERTYPEINFORMATIONA ChangerType;
				public NTMS_STORAGESLOTINFORMATION StorageSlot;
				public NTMS_IEDOORINFORMATION IEDoor;
				public NTMS_IEPORTINFORMATION IEPort;
				public NTMS_I1_PMIDINFORMATIONA PhysicalMedia;
				public NTMS_LMIDINFORMATION LogicalMedia;
				public NTMS_I1_PARTITIONINFORMATIONA Partition;
				public NTMS_MEDIAPOOLINFORMATION MediaPool;
				public NTMS_MEDIATYPEINFORMATION MediaType;
				public NTMS_I1_LIBREQUESTINFORMATIONA LibRequest;
				public NTMS_I1_OPREQUESTINFORMATIONA OpRequest;
			}
		}
		[CRepr]
		public struct NTMS_I1_OBJECTINFORMATIONW
		{
			public uint32 dwSize;
			public uint32 dwType;
			public SYSTEMTIME Created;
			public SYSTEMTIME Modified;
			public Guid ObjectGuid;
			public BOOL Enabled;
			public uint32 dwOperationalState;
			public char16[64] szName;
			public char16[127] szDescription;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public NTMS_DRIVEINFORMATIONW Drive;
				public NTMS_DRIVETYPEINFORMATIONW DriveType;
				public NTMS_I1_LIBRARYINFORMATION Library;
				public NTMS_CHANGERINFORMATIONW Changer;
				public NTMS_CHANGERTYPEINFORMATIONW ChangerType;
				public NTMS_STORAGESLOTINFORMATION StorageSlot;
				public NTMS_IEDOORINFORMATION IEDoor;
				public NTMS_IEPORTINFORMATION IEPort;
				public NTMS_I1_PMIDINFORMATIONW PhysicalMedia;
				public NTMS_LMIDINFORMATION LogicalMedia;
				public NTMS_I1_PARTITIONINFORMATIONW Partition;
				public NTMS_MEDIAPOOLINFORMATION MediaPool;
				public NTMS_MEDIATYPEINFORMATION MediaType;
				public NTMS_I1_LIBREQUESTINFORMATIONW LibRequest;
				public NTMS_I1_OPREQUESTINFORMATIONW OpRequest;
			}
		}
		[CRepr]
		public struct NTMS_FILESYSTEM_INFO
		{
			public char16[64] FileSystemType;
			public char16[256] VolumeName;
			public uint32 SerialNumber;
		}
		[CRepr]
		public struct NTMS_NOTIFICATIONINFORMATION
		{
			public NtmsNotificationOperations dwOperation;
			public Guid ObjectId;
		}
		[CRepr]
		public struct MediaLabelInfo
		{
			public char16[64] LabelType;
			public uint32 LabelIDSize;
			public uint8[256] LabelID;
			public char16[256] LabelAppDescr;
		}
		[CRepr]
		public struct CLS_LSN
		{
			public uint64 Internal;
		}
		[CRepr]
		public struct CLFS_NODE_ID
		{
			public uint32 cType;
			public uint32 cbNode;
		}
		[CRepr]
		public struct CLS_WRITE_ENTRY
		{
			public void* Buffer;
			public uint32 ByteLength;
		}
		[CRepr]
		public struct CLS_INFORMATION
		{
			public int64 TotalAvailable;
			public int64 CurrentAvailable;
			public int64 TotalReservation;
			public uint64 BaseFileSize;
			public uint64 ContainerSize;
			public uint32 TotalContainers;
			public uint32 FreeContainers;
			public uint32 TotalClients;
			public uint32 Attributes;
			public uint32 FlushThreshold;
			public uint32 SectorSize;
			public CLS_LSN MinArchiveTailLsn;
			public CLS_LSN BaseLsn;
			public CLS_LSN LastFlushedLsn;
			public CLS_LSN LastLsn;
			public CLS_LSN RestartLsn;
			public Guid Identity;
		}
		[CRepr]
		public struct CLFS_LOG_NAME_INFORMATION
		{
			public uint16 NameLengthInBytes;
			public char16[0] Name;
		}
		[CRepr]
		public struct CLFS_STREAM_ID_INFORMATION
		{
			public uint8 StreamIdentifier;
		}
		[CRepr]
		public struct CLFS_PHYSICAL_LSN_INFORMATION
		{
			public uint8 StreamIdentifier;
			public CLS_LSN VirtualLsn;
			public CLS_LSN PhysicalLsn;
		}
		[CRepr]
		public struct CLS_CONTAINER_INFORMATION
		{
			public uint32 FileAttributes;
			public uint64 CreationTime;
			public uint64 LastAccessTime;
			public uint64 LastWriteTime;
			public int64 ContainerSize;
			public uint32 FileNameActualLength;
			public uint32 FileNameLength;
			public char16[256] FileName;
			public uint32 State;
			public uint32 PhysicalContainerId;
			public uint32 LogicalContainerId;
		}
		[CRepr]
		public struct CLS_IO_STATISTICS_HEADER
		{
			public uint8 ubMajorVersion;
			public uint8 ubMinorVersion;
			public CLFS_IOSTATS_CLASS eStatsClass;
			public uint16 cbLength;
			public uint32 coffData;
		}
		[CRepr]
		public struct CLS_IO_STATISTICS
		{
			public CLS_IO_STATISTICS_HEADER hdrIoStats;
			public uint64 cFlush;
			public uint64 cbFlush;
			public uint64 cMetaFlush;
			public uint64 cbMetaFlush;
		}
		[CRepr]
		public struct CLS_SCAN_CONTEXT
		{
			public CLFS_NODE_ID cidNode;
			public HANDLE hLog;
			public uint32 cIndex;
			public uint32 cContainers;
			public uint32 cContainersReturned;
			public uint8 eScanMode;
			public CLS_CONTAINER_INFORMATION* pinfoContainer;
		}
		[CRepr]
		public struct CLS_ARCHIVE_DESCRIPTOR
		{
			public uint64 coffLow;
			public uint64 coffHigh;
			public CLS_CONTAINER_INFORMATION infoContainer;
		}
		[CRepr]
		public struct CLFS_MGMT_POLICY
		{
			public uint32 Version;
			public uint32 LengthInBytes;
			public uint32 PolicyFlags;
			public CLFS_MGMT_POLICY_TYPE PolicyType;
			public _PolicyParameters_e__Union PolicyParameters;
			
			[CRepr, Union]
			public struct _PolicyParameters_e__Union
			{
				public _MaximumSize_e__Struct MaximumSize;
				public _MinimumSize_e__Struct MinimumSize;
				public _NewContainerSize_e__Struct NewContainerSize;
				public _GrowthRate_e__Struct GrowthRate;
				public _LogTail_e__Struct LogTail;
				public _AutoShrink_e__Struct AutoShrink;
				public _AutoGrow_e__Struct AutoGrow;
				public _NewContainerPrefix_e__Struct NewContainerPrefix;
				public _NewContainerSuffix_e__Struct NewContainerSuffix;
				public _NewContainerExtension_e__Struct NewContainerExtension;
				
				[CRepr]
				public struct _NewContainerExtension_e__Struct
				{
					public uint16 ExtensionLengthInBytes;
					public char16[0] ExtensionString;
				}
				[CRepr]
				public struct _NewContainerPrefix_e__Struct
				{
					public uint16 PrefixLengthInBytes;
					public char16[0] PrefixString;
				}
				[CRepr]
				public struct _AutoShrink_e__Struct
				{
					public uint32 Percentage;
				}
				[CRepr]
				public struct _GrowthRate_e__Struct
				{
					public uint32 AbsoluteGrowthInContainers;
					public uint32 RelativeGrowthPercentage;
				}
				[CRepr]
				public struct _MinimumSize_e__Struct
				{
					public uint32 Containers;
				}
				[CRepr]
				public struct _NewContainerSuffix_e__Struct
				{
					public uint64 NextContainerSuffix;
				}
				[CRepr]
				public struct _LogTail_e__Struct
				{
					public uint32 MinimumAvailablePercentage;
					public uint32 MinimumAvailableContainers;
				}
				[CRepr]
				public struct _MaximumSize_e__Struct
				{
					public uint32 Containers;
				}
				[CRepr]
				public struct _AutoGrow_e__Struct
				{
					public uint32 Enabled;
				}
				[CRepr]
				public struct _NewContainerSize_e__Struct
				{
					public uint32 SizeInBytes;
				}
			}
		}
		[CRepr]
		public struct CLFS_MGMT_NOTIFICATION
		{
			public CLFS_MGMT_NOTIFICATION_TYPE Notification;
			public CLS_LSN Lsn;
			public uint16 LogIsPinned;
		}
		[CRepr]
		public struct LOG_MANAGEMENT_CALLBACKS
		{
			public void* CallbackContext;
			public PLOG_TAIL_ADVANCE_CALLBACK AdvanceTailCallback;
			public PLOG_FULL_HANDLER_CALLBACK LogFullHandlerCallback;
			public PLOG_UNPINNED_CALLBACK LogUnpinnedCallback;
		}
		[CRepr]
		public struct DISKQUOTA_USER_INFORMATION
		{
			public int64 QuotaUsed;
			public int64 QuotaThreshold;
			public int64 QuotaLimit;
		}
		[CRepr]
		public struct EFS_CERTIFICATE_BLOB
		{
			public uint32 dwCertEncodingType;
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct EFS_HASH_BLOB
		{
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct EFS_RPC_BLOB
		{
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct EFS_PIN_BLOB
		{
			public uint32 cbPadding;
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct EFS_KEY_INFO
		{
			public uint32 dwVersion;
			public uint32 Entropy;
			public uint32 Algorithm;
			public uint32 KeyLength;
		}
		[CRepr]
		public struct EFS_COMPATIBILITY_INFO
		{
			public uint32 EfsVersion;
		}
		[CRepr]
		public struct EFS_VERSION_INFO
		{
			public uint32 EfsVersion;
			public uint32 SubVersion;
		}
		[CRepr]
		public struct EFS_DECRYPTION_STATUS_INFO
		{
			public uint32 dwDecryptionError;
			public uint32 dwHashOffset;
			public uint32 cbHash;
		}
		[CRepr]
		public struct EFS_ENCRYPTION_STATUS_INFO
		{
			public BOOL bHasCurrentKey;
			public uint32 dwEncryptionError;
		}
		[CRepr]
		public struct ENCRYPTION_CERTIFICATE
		{
			public uint32 cbTotalLength;
			public SID* pUserSid;
			public EFS_CERTIFICATE_BLOB* pCertBlob;
		}
		[CRepr]
		public struct ENCRYPTION_CERTIFICATE_HASH
		{
			public uint32 cbTotalLength;
			public SID* pUserSid;
			public EFS_HASH_BLOB* pHash;
			public PWSTR lpDisplayInformation;
		}
		[CRepr]
		public struct ENCRYPTION_CERTIFICATE_HASH_LIST
		{
			public uint32 nCert_Hash;
			public ENCRYPTION_CERTIFICATE_HASH** pUsers;
		}
		[CRepr]
		public struct ENCRYPTION_CERTIFICATE_LIST
		{
			public uint32 nUsers;
			public ENCRYPTION_CERTIFICATE** pUsers;
		}
		[CRepr]
		public struct ENCRYPTED_FILE_METADATA_SIGNATURE
		{
			public uint32 dwEfsAccessType;
			public ENCRYPTION_CERTIFICATE_HASH_LIST* pCertificatesAdded;
			public ENCRYPTION_CERTIFICATE* pEncryptionCertificate;
			public EFS_RPC_BLOB* pEfsStreamSignature;
		}
		[CRepr]
		public struct ENCRYPTION_PROTECTOR
		{
			public uint32 cbTotalLength;
			public SID* pUserSid;
			public PWSTR lpProtectorDescriptor;
		}
		[CRepr]
		public struct ENCRYPTION_PROTECTOR_LIST
		{
			public uint32 nProtectors;
			public ENCRYPTION_PROTECTOR** pProtectors;
		}
		[CRepr]
		public struct WIM_ENTRY_INFO
		{
			public uint32 WimEntryInfoSize;
			public uint32 WimType;
			public LARGE_INTEGER DataSourceId;
			public Guid WimGuid;
			public PWSTR WimPath;
			public uint32 WimIndex;
			public uint32 Flags;
		}
		[CRepr]
		public struct WIM_EXTERNAL_FILE_INFO
		{
			public LARGE_INTEGER DataSourceId;
			public uint8[20] ResourceHash;
			public uint32 Flags;
		}
		[CRepr]
		public struct WOF_FILE_COMPRESSION_INFO_V0
		{
			public uint32 Algorithm;
		}
		[CRepr]
		public struct WOF_FILE_COMPRESSION_INFO_V1
		{
			public uint32 Algorithm;
			public uint32 Flags;
		}
		[CRepr]
		public struct TXF_ID
		{
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr, Packed(4)]
			public struct _Anonymous_e__Struct
			{
				public int64 LowPart;
				public int64 HighPart;
			}
		}
		[CRepr]
		public struct TXF_LOG_RECORD_BASE
		{
			public uint16 Version;
			public TXF_LOG_RECORD_TYPE RecordType;
			public uint32 RecordLength;
		}
		[CRepr, Packed(4)]
		public struct TXF_LOG_RECORD_WRITE
		{
			public uint16 Version;
			public uint16 RecordType;
			public uint32 RecordLength;
			public uint32 Flags;
			public TXF_ID TxfFileId;
			public Guid KtmGuid;
			public int64 ByteOffsetInFile;
			public uint32 NumBytesWritten;
			public uint32 ByteOffsetInStructure;
			public uint32 FileNameLength;
			public uint32 FileNameByteOffsetInStructure;
		}
		[CRepr, Packed(4)]
		public struct TXF_LOG_RECORD_TRUNCATE
		{
			public uint16 Version;
			public uint16 RecordType;
			public uint32 RecordLength;
			public uint32 Flags;
			public TXF_ID TxfFileId;
			public Guid KtmGuid;
			public int64 NewFileSize;
			public uint32 FileNameLength;
			public uint32 FileNameByteOffsetInStructure;
		}
		[CRepr]
		public struct TXF_LOG_RECORD_AFFECTED_FILE
		{
			public uint16 Version;
			public uint32 RecordLength;
			public uint32 Flags;
			public TXF_ID TxfFileId;
			public Guid KtmGuid;
			public uint32 FileNameLength;
			public uint32 FileNameByteOffsetInStructure;
		}
		[CRepr]
		public struct VOLUME_FAILOVER_SET
		{
			public uint32 NumberOfDisks;
			public uint32[0] DiskNumbers;
		}
		[CRepr]
		public struct VOLUME_NUMBER
		{
			public uint32 VolumeNumber;
			public char16[8] VolumeManagerName;
		}
		[CRepr]
		public struct VOLUME_LOGICAL_OFFSET
		{
			public int64 LogicalOffset;
		}
		[CRepr]
		public struct VOLUME_PHYSICAL_OFFSET
		{
			public uint32 DiskNumber;
			public int64 Offset;
		}
		[CRepr]
		public struct VOLUME_PHYSICAL_OFFSETS
		{
			public uint32 NumberOfPhysicalOffsets;
			public VOLUME_PHYSICAL_OFFSET[0] PhysicalOffset;
		}
		[CRepr]
		public struct VOLUME_READ_PLEX_INPUT
		{
			public LARGE_INTEGER ByteOffset;
			public uint32 Length;
			public uint32 PlexNumber;
		}
		[CRepr]
		public struct VOLUME_SET_GPT_ATTRIBUTES_INFORMATION
		{
			public uint64 GptAttributes;
			public BOOLEAN RevertOnClose;
			public BOOLEAN ApplyToAllConnectedVolumes;
			public uint16 Reserved1;
			public uint32 Reserved2;
		}
		[CRepr]
		public struct VOLUME_GET_BC_PROPERTIES_INPUT
		{
			public uint32 Version;
			public uint32 Reserved1;
			public uint64 LowestByteOffset;
			public uint64 HighestByteOffset;
			public uint32 AccessType;
			public uint32 AccessMode;
		}
		[CRepr]
		public struct VOLUME_GET_BC_PROPERTIES_OUTPUT
		{
			public uint32 MaximumRequestsPerPeriod;
			public uint32 MinimumPeriod;
			public uint64 MaximumRequestSize;
			public uint32 EstimatedTimePerRequest;
			public uint32 NumOutStandingRequests;
			public uint64 RequestSize;
		}
		[CRepr]
		public struct VOLUME_ALLOCATE_BC_STREAM_INPUT
		{
			public uint32 Version;
			public uint32 RequestsPerPeriod;
			public uint32 Period;
			public BOOLEAN RetryFailures;
			public BOOLEAN Discardable;
			public BOOLEAN[2] Reserved1;
			public uint64 LowestByteOffset;
			public uint64 HighestByteOffset;
			public uint32 AccessType;
			public uint32 AccessMode;
		}
		[CRepr]
		public struct VOLUME_ALLOCATE_BC_STREAM_OUTPUT
		{
			public uint64 RequestSize;
			public uint32 NumOutStandingRequests;
		}
		[CRepr]
		public struct FILE_EXTENT
		{
			public uint64 VolumeOffset;
			public uint64 ExtentLength;
		}
		[CRepr]
		public struct VOLUME_CRITICAL_IO
		{
			public uint32 AccessType;
			public uint32 ExtentsCount;
			public FILE_EXTENT[0] Extents;
		}
		[CRepr]
		public struct VOLUME_ALLOCATION_HINT_INPUT
		{
			public uint32 ClusterSize;
			public uint32 NumberOfClusters;
			public int64 StartingClusterNumber;
		}
		[CRepr]
		public struct VOLUME_ALLOCATION_HINT_OUTPUT
		{
			public uint32[0] Bitmap;
		}
		[CRepr]
		public struct VOLUME_SHRINK_INFO
		{
			public uint64 VolumeSize;
		}
		[CRepr]
		public struct SHARE_INFO_0
		{
			public PWSTR shi0_netname;
		}
		[CRepr]
		public struct SHARE_INFO_1
		{
			public PWSTR shi1_netname;
			public SHARE_TYPE shi1_type;
			public PWSTR shi1_remark;
		}
		[CRepr]
		public struct SHARE_INFO_2
		{
			public PWSTR shi2_netname;
			public SHARE_TYPE shi2_type;
			public PWSTR shi2_remark;
			public SHARE_INFO_PERMISSIONS shi2_permissions;
			public uint32 shi2_max_uses;
			public uint32 shi2_current_uses;
			public PWSTR shi2_path;
			public PWSTR shi2_passwd;
		}
		[CRepr]
		public struct SHARE_INFO_501
		{
			public PWSTR shi501_netname;
			public SHARE_TYPE shi501_type;
			public PWSTR shi501_remark;
			public uint32 shi501_flags;
		}
		[CRepr]
		public struct SHARE_INFO_502
		{
			public PWSTR shi502_netname;
			public SHARE_TYPE shi502_type;
			public PWSTR shi502_remark;
			public SHARE_INFO_PERMISSIONS shi502_permissions;
			public uint32 shi502_max_uses;
			public uint32 shi502_current_uses;
			public PWSTR shi502_path;
			public PWSTR shi502_passwd;
			public uint32 shi502_reserved;
			public SECURITY_DESCRIPTOR* shi502_security_descriptor;
		}
		[CRepr]
		public struct SHARE_INFO_503
		{
			public PWSTR shi503_netname;
			public SHARE_TYPE shi503_type;
			public PWSTR shi503_remark;
			public SHARE_INFO_PERMISSIONS shi503_permissions;
			public uint32 shi503_max_uses;
			public uint32 shi503_current_uses;
			public PWSTR shi503_path;
			public PWSTR shi503_passwd;
			public PWSTR shi503_servername;
			public uint32 shi503_reserved;
			public SECURITY_DESCRIPTOR* shi503_security_descriptor;
		}
		[CRepr]
		public struct SHARE_INFO_1004
		{
			public PWSTR shi1004_remark;
		}
		[CRepr]
		public struct SHARE_INFO_1005
		{
			public uint32 shi1005_flags;
		}
		[CRepr]
		public struct SHARE_INFO_1006
		{
			public uint32 shi1006_max_uses;
		}
		[CRepr]
		public struct SHARE_INFO_1501
		{
			public uint32 shi1501_reserved;
			public SECURITY_DESCRIPTOR* shi1501_security_descriptor;
		}
		[CRepr]
		public struct SHARE_INFO_1503
		{
			public Guid shi1503_sharefilter;
		}
		[CRepr]
		public struct SERVER_ALIAS_INFO_0
		{
			public PWSTR srvai0_alias;
			public PWSTR srvai0_target;
			public BOOLEAN srvai0_default;
			public uint32 srvai0_reserved;
		}
		[CRepr]
		public struct SESSION_INFO_0
		{
			public PWSTR sesi0_cname;
		}
		[CRepr]
		public struct SESSION_INFO_1
		{
			public PWSTR sesi1_cname;
			public PWSTR sesi1_username;
			public uint32 sesi1_num_opens;
			public uint32 sesi1_time;
			public uint32 sesi1_idle_time;
			public SESSION_INFO_USER_FLAGS sesi1_user_flags;
		}
		[CRepr]
		public struct SESSION_INFO_2
		{
			public PWSTR sesi2_cname;
			public PWSTR sesi2_username;
			public uint32 sesi2_num_opens;
			public uint32 sesi2_time;
			public uint32 sesi2_idle_time;
			public SESSION_INFO_USER_FLAGS sesi2_user_flags;
			public PWSTR sesi2_cltype_name;
		}
		[CRepr]
		public struct SESSION_INFO_10
		{
			public PWSTR sesi10_cname;
			public PWSTR sesi10_username;
			public uint32 sesi10_time;
			public uint32 sesi10_idle_time;
		}
		[CRepr]
		public struct SESSION_INFO_502
		{
			public PWSTR sesi502_cname;
			public PWSTR sesi502_username;
			public uint32 sesi502_num_opens;
			public uint32 sesi502_time;
			public uint32 sesi502_idle_time;
			public SESSION_INFO_USER_FLAGS sesi502_user_flags;
			public PWSTR sesi502_cltype_name;
			public PWSTR sesi502_transport;
		}
		[CRepr]
		public struct CONNECTION_INFO_0
		{
			public uint32 coni0_id;
		}
		[CRepr]
		public struct CONNECTION_INFO_1
		{
			public uint32 coni1_id;
			public SHARE_TYPE coni1_type;
			public uint32 coni1_num_opens;
			public uint32 coni1_num_users;
			public uint32 coni1_time;
			public PWSTR coni1_username;
			public PWSTR coni1_netname;
		}
		[CRepr]
		public struct FILE_INFO_2
		{
			public uint32 fi2_id;
		}
		[CRepr]
		public struct FILE_INFO_3
		{
			public uint32 fi3_id;
			public FILE_INFO_FLAGS_PERMISSIONS fi3_permissions;
			public uint32 fi3_num_locks;
			public PWSTR fi3_pathname;
			public PWSTR fi3_username;
		}
		[CRepr]
		public struct SERVER_CERTIFICATE_INFO_0
		{
			public PWSTR srvci0_name;
			public PWSTR srvci0_subject;
			public PWSTR srvci0_issuer;
			public PWSTR srvci0_thumbprint;
			public PWSTR srvci0_friendlyname;
			public PWSTR srvci0_notbefore;
			public PWSTR srvci0_notafter;
			public PWSTR srvci0_storelocation;
			public PWSTR srvci0_storename;
			public PWSTR srvci0_renewalchain;
			public uint32 srvci0_type;
			public uint32 srvci0_flags;
		}
		[CRepr]
		public struct STAT_WORKSTATION_0
		{
			public LARGE_INTEGER StatisticsStartTime;
			public LARGE_INTEGER BytesReceived;
			public LARGE_INTEGER SmbsReceived;
			public LARGE_INTEGER PagingReadBytesRequested;
			public LARGE_INTEGER NonPagingReadBytesRequested;
			public LARGE_INTEGER CacheReadBytesRequested;
			public LARGE_INTEGER NetworkReadBytesRequested;
			public LARGE_INTEGER BytesTransmitted;
			public LARGE_INTEGER SmbsTransmitted;
			public LARGE_INTEGER PagingWriteBytesRequested;
			public LARGE_INTEGER NonPagingWriteBytesRequested;
			public LARGE_INTEGER CacheWriteBytesRequested;
			public LARGE_INTEGER NetworkWriteBytesRequested;
			public uint32 InitiallyFailedOperations;
			public uint32 FailedCompletionOperations;
			public uint32 ReadOperations;
			public uint32 RandomReadOperations;
			public uint32 ReadSmbs;
			public uint32 LargeReadSmbs;
			public uint32 SmallReadSmbs;
			public uint32 WriteOperations;
			public uint32 RandomWriteOperations;
			public uint32 WriteSmbs;
			public uint32 LargeWriteSmbs;
			public uint32 SmallWriteSmbs;
			public uint32 RawReadsDenied;
			public uint32 RawWritesDenied;
			public uint32 NetworkErrors;
			public uint32 Sessions;
			public uint32 FailedSessions;
			public uint32 Reconnects;
			public uint32 CoreConnects;
			public uint32 Lanman20Connects;
			public uint32 Lanman21Connects;
			public uint32 LanmanNtConnects;
			public uint32 ServerDisconnects;
			public uint32 HungSessions;
			public uint32 UseCount;
			public uint32 FailedUseCount;
			public uint32 CurrentCommands;
		}
		[CRepr]
		public struct STAT_SERVER_0
		{
			public uint32 sts0_start;
			public uint32 sts0_fopens;
			public uint32 sts0_devopens;
			public uint32 sts0_jobsqueued;
			public uint32 sts0_sopens;
			public uint32 sts0_stimedout;
			public uint32 sts0_serrorout;
			public uint32 sts0_pwerrors;
			public uint32 sts0_permerrors;
			public uint32 sts0_syserrors;
			public uint32 sts0_bytessent_low;
			public uint32 sts0_bytessent_high;
			public uint32 sts0_bytesrcvd_low;
			public uint32 sts0_bytesrcvd_high;
			public uint32 sts0_avresponse;
			public uint32 sts0_reqbufneed;
			public uint32 sts0_bigbufneed;
		}
		[CRepr]
		public struct FH_OVERLAPPED
		{
			public uint Internal;
			public uint InternalHigh;
			public uint32 Offset;
			public uint32 OffsetHigh;
			public HANDLE hEvent;
			public PFN_IO_COMPLETION pfnCompletion;
			public uint Reserved1;
			public uint Reserved2;
			public uint Reserved3;
			public uint Reserved4;
		}
		[CRepr]
		public struct FIO_CONTEXT
		{
			public uint32 m_dwTempHack;
			public uint32 m_dwSignature;
			public HANDLE m_hFile;
			public uint32 m_dwLinesOffset;
			public uint32 m_dwHeaderLength;
		}
		[CRepr]
		public struct NAME_CACHE_CONTEXT
		{
			public uint32 m_dwSignature;
		}
		[CRepr]
		public struct IORING_BUFFER_INFO
		{
			public void* Address;
			public uint32 Length;
		}
		[CRepr]
		public struct IORING_REGISTERED_BUFFER
		{
			public uint32 BufferIndex;
			public uint32 Offset;
		}
		[CRepr]
		public struct HIORING__
		{
			public int32 unused;
		}
		[CRepr]
		public struct IORING_CREATE_FLAGS
		{
			public IORING_CREATE_REQUIRED_FLAGS Required;
			public IORING_CREATE_ADVISORY_FLAGS Advisory;
		}
		[CRepr]
		public struct IORING_INFO
		{
			public IORING_VERSION IoRingVersion;
			public IORING_CREATE_FLAGS Flags;
			public uint32 SubmissionQueueSize;
			public uint32 CompletionQueueSize;
		}
		[CRepr]
		public struct IORING_CAPABILITIES
		{
			public IORING_VERSION MaxVersion;
			public uint32 MaxSubmissionQueueSize;
			public uint32 MaxCompletionQueueSize;
			public IORING_FEATURE_FLAGS FeatureFlags;
		}
		[CRepr]
		public struct IORING_HANDLE_REF
		{
			public IORING_REF_KIND Kind;
			public HandleUnion Handle;
			
			[CRepr, Union]
			public struct HandleUnion
			{
				public HANDLE Handle;
				public uint32 Index;
			}
		}
		[CRepr]
		public struct IORING_BUFFER_REF
		{
			public IORING_REF_KIND Kind;
			public BufferUnion Buffer;
			
			[CRepr, Union]
			public struct BufferUnion
			{
				public void* Address;
				public IORING_REGISTERED_BUFFER IndexAndOffset;
			}
		}
		[CRepr]
		public struct IORING_CQE
		{
			public uint UserData;
			public HRESULT ResultCode;
			public uint Information;
		}
		[CRepr]
		public struct FILE_ID_128
		{
			public uint8[16] Identifier;
		}
		[CRepr]
		public struct FILE_NOTIFY_INFORMATION
		{
			public uint32 NextEntryOffset;
			public FILE_ACTION Action;
			public uint32 FileNameLength;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_NOTIFY_EXTENDED_INFORMATION
		{
			public uint32 NextEntryOffset;
			public FILE_ACTION Action;
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastModificationTime;
			public LARGE_INTEGER LastChangeTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER AllocatedLength;
			public LARGE_INTEGER FileSize;
			public uint32 FileAttributes;
			public uint32 ReparsePointTag;
			public LARGE_INTEGER FileId;
			public LARGE_INTEGER ParentFileId;
			public uint32 FileNameLength;
			public char16[0] FileName;
		}
		[CRepr, Union]
		public struct FILE_SEGMENT_ELEMENT
		{
			public void* Buffer;
			public uint64 Alignment;
		}
		[CRepr]
		public struct REPARSE_GUID_DATA_BUFFER
		{
			public uint32 ReparseTag;
			public uint16 ReparseDataLength;
			public uint16 Reserved;
			public Guid ReparseGuid;
			public _GenericReparseBuffer_e__Struct GenericReparseBuffer;
			
			[CRepr]
			public struct _GenericReparseBuffer_e__Struct
			{
				public uint8[0] DataBuffer;
			}
		}
		[CRepr]
		public struct TAPE_ERASE
		{
			public ERASE_TAPE_TYPE Type;
			public BOOLEAN Immediate;
		}
		[CRepr]
		public struct TAPE_PREPARE
		{
			public PREPARE_TAPE_OPERATION Operation;
			public BOOLEAN Immediate;
		}
		[CRepr]
		public struct TAPE_WRITE_MARKS
		{
			public TAPEMARK_TYPE Type;
			public uint32 Count;
			public BOOLEAN Immediate;
		}
		[CRepr]
		public struct TAPE_GET_POSITION
		{
			public TAPE_POSITION_TYPE Type;
			public uint32 Partition;
			public LARGE_INTEGER Offset;
		}
		[CRepr]
		public struct TAPE_SET_POSITION
		{
			public TAPE_POSITION_METHOD Method;
			public uint32 Partition;
			public LARGE_INTEGER Offset;
			public BOOLEAN Immediate;
		}
		[CRepr]
		public struct OFSTRUCT
		{
			public uint8 cBytes;
			public uint8 fFixedDisk;
			public uint16 nErrCode;
			public uint16 Reserved1;
			public uint16 Reserved2;
			public CHAR[128] szPathName;
		}
		[CRepr]
		public struct WIN32_STREAM_ID
		{
			public WIN_STREAM_ID dwStreamId;
			public uint32 dwStreamAttributes;
			public LARGE_INTEGER Size;
			public uint32 dwStreamNameSize;
			public char16[0] cStreamName;
		}
		[CRepr]
		public struct COPYFILE2_MESSAGE
		{
			public COPYFILE2_MESSAGE_TYPE Type;
			public uint32 dwPadding;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public _ChunkStarted_e__Struct ChunkStarted;
				public _ChunkFinished_e__Struct ChunkFinished;
				public _StreamStarted_e__Struct StreamStarted;
				public _StreamFinished_e__Struct StreamFinished;
				public _PollContinue_e__Struct PollContinue;
				public _Error_e__Struct Error;
				
				[CRepr]
				public struct _Error_e__Struct
				{
					public COPYFILE2_COPY_PHASE CopyPhase;
					public uint32 dwStreamNumber;
					public HRESULT hrFailure;
					public uint32 dwReserved;
					public ULARGE_INTEGER uliChunkNumber;
					public ULARGE_INTEGER uliStreamSize;
					public ULARGE_INTEGER uliStreamBytesTransferred;
					public ULARGE_INTEGER uliTotalFileSize;
					public ULARGE_INTEGER uliTotalBytesTransferred;
				}
				[CRepr]
				public struct _StreamFinished_e__Struct
				{
					public uint32 dwStreamNumber;
					public uint32 dwReserved;
					public HANDLE hSourceFile;
					public HANDLE hDestinationFile;
					public ULARGE_INTEGER uliStreamSize;
					public ULARGE_INTEGER uliStreamBytesTransferred;
					public ULARGE_INTEGER uliTotalFileSize;
					public ULARGE_INTEGER uliTotalBytesTransferred;
				}
				[CRepr]
				public struct _ChunkFinished_e__Struct
				{
					public uint32 dwStreamNumber;
					public uint32 dwFlags;
					public HANDLE hSourceFile;
					public HANDLE hDestinationFile;
					public ULARGE_INTEGER uliChunkNumber;
					public ULARGE_INTEGER uliChunkSize;
					public ULARGE_INTEGER uliStreamSize;
					public ULARGE_INTEGER uliStreamBytesTransferred;
					public ULARGE_INTEGER uliTotalFileSize;
					public ULARGE_INTEGER uliTotalBytesTransferred;
				}
				[CRepr]
				public struct _PollContinue_e__Struct
				{
					public uint32 dwReserved;
				}
				[CRepr]
				public struct _ChunkStarted_e__Struct
				{
					public uint32 dwStreamNumber;
					public uint32 dwReserved;
					public HANDLE hSourceFile;
					public HANDLE hDestinationFile;
					public ULARGE_INTEGER uliChunkNumber;
					public ULARGE_INTEGER uliChunkSize;
					public ULARGE_INTEGER uliStreamSize;
					public ULARGE_INTEGER uliTotalFileSize;
				}
				[CRepr]
				public struct _StreamStarted_e__Struct
				{
					public uint32 dwStreamNumber;
					public uint32 dwReserved;
					public HANDLE hSourceFile;
					public HANDLE hDestinationFile;
					public ULARGE_INTEGER uliStreamSize;
					public ULARGE_INTEGER uliTotalFileSize;
				}
			}
		}
		[CRepr]
		public struct COPYFILE2_EXTENDED_PARAMETERS
		{
			public uint32 dwSize;
			public uint32 dwCopyFlags;
			public BOOL* pfCancel;
			public PCOPYFILE2_PROGRESS_ROUTINE pProgressRoutine;
			public void* pvCallbackContext;
		}
		[CRepr]
		public struct COPYFILE2_EXTENDED_PARAMETERS_V2
		{
			public uint32 dwSize;
			public uint32 dwCopyFlags;
			public BOOL* pfCancel;
			public PCOPYFILE2_PROGRESS_ROUTINE pProgressRoutine;
			public void* pvCallbackContext;
			public uint32 dwCopyFlagsV2;
			public uint32 ioDesiredSize;
			public uint32 ioDesiredRate;
			public void*[8] reserved;
		}
		[CRepr]
		public struct FILE_BASIC_INFO
		{
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER LastWriteTime;
			public LARGE_INTEGER ChangeTime;
			public uint32 FileAttributes;
		}
		[CRepr]
		public struct FILE_STANDARD_INFO
		{
			public LARGE_INTEGER AllocationSize;
			public LARGE_INTEGER EndOfFile;
			public uint32 NumberOfLinks;
			public BOOLEAN DeletePending;
			public BOOLEAN Directory;
		}
		[CRepr]
		public struct FILE_NAME_INFO
		{
			public uint32 FileNameLength;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_RENAME_INFO
		{
			public _Anonymous_e__Union Anonymous;
			public HANDLE RootDirectory;
			public uint32 FileNameLength;
			public char16[0] FileName;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public BOOLEAN ReplaceIfExists;
				public uint32 Flags;
			}
		}
		[CRepr]
		public struct FILE_ALLOCATION_INFO
		{
			public LARGE_INTEGER AllocationSize;
		}
		[CRepr]
		public struct FILE_END_OF_FILE_INFO
		{
			public LARGE_INTEGER EndOfFile;
		}
		[CRepr]
		public struct FILE_STREAM_INFO
		{
			public uint32 NextEntryOffset;
			public uint32 StreamNameLength;
			public LARGE_INTEGER StreamSize;
			public LARGE_INTEGER StreamAllocationSize;
			public char16[0] StreamName;
		}
		[CRepr]
		public struct FILE_COMPRESSION_INFO
		{
			public LARGE_INTEGER CompressedFileSize;
			public uint16 CompressionFormat;
			public uint8 CompressionUnitShift;
			public uint8 ChunkShift;
			public uint8 ClusterShift;
			public uint8[3] Reserved;
		}
		[CRepr]
		public struct FILE_ATTRIBUTE_TAG_INFO
		{
			public uint32 FileAttributes;
			public uint32 ReparseTag;
		}
		[CRepr]
		public struct FILE_DISPOSITION_INFO
		{
			public BOOLEAN DeleteFileA;
		}
		[CRepr]
		public struct FILE_ID_BOTH_DIR_INFO
		{
			public uint32 NextEntryOffset;
			public uint32 FileIndex;
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER LastWriteTime;
			public LARGE_INTEGER ChangeTime;
			public LARGE_INTEGER EndOfFile;
			public LARGE_INTEGER AllocationSize;
			public uint32 FileAttributes;
			public uint32 FileNameLength;
			public uint32 EaSize;
			public int8 ShortNameLength;
			public char16[12] ShortName;
			public LARGE_INTEGER FileId;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_FULL_DIR_INFO
		{
			public uint32 NextEntryOffset;
			public uint32 FileIndex;
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER LastWriteTime;
			public LARGE_INTEGER ChangeTime;
			public LARGE_INTEGER EndOfFile;
			public LARGE_INTEGER AllocationSize;
			public uint32 FileAttributes;
			public uint32 FileNameLength;
			public uint32 EaSize;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_IO_PRIORITY_HINT_INFO
		{
			public PRIORITY_HINT PriorityHint;
		}
		[CRepr]
		public struct FILE_ALIGNMENT_INFO
		{
			public uint32 AlignmentRequirement;
		}
		[CRepr]
		public struct FILE_STORAGE_INFO
		{
			public uint32 LogicalBytesPerSector;
			public uint32 PhysicalBytesPerSectorForAtomicity;
			public uint32 PhysicalBytesPerSectorForPerformance;
			public uint32 FileSystemEffectivePhysicalBytesPerSectorForAtomicity;
			public uint32 Flags;
			public uint32 ByteOffsetForSectorAlignment;
			public uint32 ByteOffsetForPartitionAlignment;
		}
		[CRepr]
		public struct FILE_ID_INFO
		{
			public uint64 VolumeSerialNumber;
			public FILE_ID_128 FileId;
		}
		[CRepr]
		public struct FILE_ID_EXTD_DIR_INFO
		{
			public uint32 NextEntryOffset;
			public uint32 FileIndex;
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER LastWriteTime;
			public LARGE_INTEGER ChangeTime;
			public LARGE_INTEGER EndOfFile;
			public LARGE_INTEGER AllocationSize;
			public uint32 FileAttributes;
			public uint32 FileNameLength;
			public uint32 EaSize;
			public uint32 ReparsePointTag;
			public FILE_ID_128 FileId;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_REMOTE_PROTOCOL_INFO
		{
			public uint16 StructureVersion;
			public uint16 StructureSize;
			public uint32 Protocol;
			public uint16 ProtocolMajorVersion;
			public uint16 ProtocolMinorVersion;
			public uint16 ProtocolRevision;
			public uint16 Reserved;
			public uint32 Flags;
			public _GenericReserved_e__Struct GenericReserved;
			public _ProtocolSpecific_e__Union ProtocolSpecific;
			
			[CRepr, Union]
			public struct _ProtocolSpecific_e__Union
			{
				public _Smb2_e__Struct Smb2;
				public uint32[16] Reserved;
				
				[CRepr]
				public struct _Smb2_e__Struct
				{
					public _Server_e__Struct Server;
					public _Share_e__Struct Share;
					
					[CRepr]
					public struct _Server_e__Struct
					{
						public uint32 Capabilities;
					}
					[CRepr]
					public struct _Share_e__Struct
					{
						public uint32 Capabilities;
						public uint32 CachingFlags;
					}
				}
			}
			[CRepr]
			public struct _GenericReserved_e__Struct
			{
				public uint32[8] Reserved;
			}
		}
		[CRepr]
		public struct FILE_ID_DESCRIPTOR
		{
			public uint32 dwSize;
			public FILE_ID_TYPE Type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public LARGE_INTEGER FileId;
				public Guid ObjectId;
				public FILE_ID_128 ExtendedFileId;
			}
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDiskQuotaUser : IUnknown
		{
			public const new Guid IID = .(0x7988b574, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetID(out uint32 pulID) mut => VT.GetID(ref this, out pulID);
			public HRESULT GetName(PWSTR pszAccountContainer, uint32 cchAccountContainer, PWSTR pszLogonName, uint32 cchLogonName, PWSTR pszDisplayName, uint32 cchDisplayName) mut => VT.GetName(ref this, pszAccountContainer, cchAccountContainer, pszLogonName, cchLogonName, pszDisplayName, cchDisplayName);
			public HRESULT GetSidLength(out uint32 pdwLength) mut => VT.GetSidLength(ref this, out pdwLength);
			public HRESULT GetSid(out uint8 pbSidBuffer, uint32 cbSidBuffer) mut => VT.GetSid(ref this, out pbSidBuffer, cbSidBuffer);
			public HRESULT GetQuotaThreshold(out int64 pllThreshold) mut => VT.GetQuotaThreshold(ref this, out pllThreshold);
			public HRESULT GetQuotaThresholdText(PWSTR pszText, uint32 cchText) mut => VT.GetQuotaThresholdText(ref this, pszText, cchText);
			public HRESULT GetQuotaLimit(out int64 pllLimit) mut => VT.GetQuotaLimit(ref this, out pllLimit);
			public HRESULT GetQuotaLimitText(PWSTR pszText, uint32 cchText) mut => VT.GetQuotaLimitText(ref this, pszText, cchText);
			public HRESULT GetQuotaUsed(out int64 pllUsed) mut => VT.GetQuotaUsed(ref this, out pllUsed);
			public HRESULT GetQuotaUsedText(PWSTR pszText, uint32 cchText) mut => VT.GetQuotaUsedText(ref this, pszText, cchText);
			public HRESULT GetQuotaInformation(void* pbQuotaInfo, uint32 cbQuotaInfo) mut => VT.GetQuotaInformation(ref this, pbQuotaInfo, cbQuotaInfo);
			public HRESULT SetQuotaThreshold(int64 llThreshold, BOOL fWriteThrough) mut => VT.SetQuotaThreshold(ref this, llThreshold, fWriteThrough);
			public HRESULT SetQuotaLimit(int64 llLimit, BOOL fWriteThrough) mut => VT.SetQuotaLimit(ref this, llLimit, fWriteThrough);
			public HRESULT Invalidate() mut => VT.Invalidate(ref this);
			public HRESULT GetAccountStatus(out uint32 pdwStatus) mut => VT.GetAccountStatus(ref this, out pdwStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out uint32 pulID) GetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, PWSTR pszAccountContainer, uint32 cchAccountContainer, PWSTR pszLogonName, uint32 cchLogonName, PWSTR pszDisplayName, uint32 cchDisplayName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out uint32 pdwLength) GetSidLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out uint8 pbSidBuffer, uint32 cbSidBuffer) GetSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out int64 pllThreshold) GetQuotaThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, PWSTR pszText, uint32 cchText) GetQuotaThresholdText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out int64 pllLimit) GetQuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, PWSTR pszText, uint32 cchText) GetQuotaLimitText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out int64 pllUsed) GetQuotaUsed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, PWSTR pszText, uint32 cchText) GetQuotaUsedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, void* pbQuotaInfo, uint32 cbQuotaInfo) GetQuotaInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, int64 llThreshold, BOOL fWriteThrough) SetQuotaThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, int64 llLimit, BOOL fWriteThrough) SetQuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self) Invalidate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUser self, out uint32 pdwStatus) GetAccountStatus;
			}
		}
		[CRepr]
		public struct IEnumDiskQuotaUsers : IUnknown
		{
			public const new Guid IID = .(0x7988b577, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cUsers, out IDiskQuotaUser* rgUsers, out uint32 pcUsersFetched) mut => VT.Next(ref this, cUsers, out rgUsers, out pcUsersFetched);
			public HRESULT Skip(uint32 cUsers) mut => VT.Skip(ref this, cUsers);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumDiskQuotaUsers* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiskQuotaUsers self, uint32 cUsers, out IDiskQuotaUser* rgUsers, out uint32 pcUsersFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiskQuotaUsers self, uint32 cUsers) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiskQuotaUsers self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiskQuotaUsers self, out IEnumDiskQuotaUsers* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IDiskQuotaUserBatch : IUnknown
		{
			public const new Guid IID = .(0x7988b576, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(ref IDiskQuotaUser pUser) mut => VT.Add(ref this, ref pUser);
			public HRESULT Remove(ref IDiskQuotaUser pUser) mut => VT.Remove(ref this, ref pUser);
			public HRESULT RemoveAll() mut => VT.RemoveAll(ref this);
			public HRESULT FlushToDisk() mut => VT.FlushToDisk(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUserBatch self, ref IDiskQuotaUser pUser) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUserBatch self, ref IDiskQuotaUser pUser) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUserBatch self) RemoveAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaUserBatch self) FlushToDisk;
			}
		}
		[CRepr]
		public struct IDiskQuotaControl : IConnectionPointContainer
		{
			public const new Guid IID = .(0x7988b572, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszPath, BOOL bReadWrite) mut => VT.Initialize(ref this, pszPath, bReadWrite);
			public HRESULT SetQuotaState(uint32 dwState) mut => VT.SetQuotaState(ref this, dwState);
			public HRESULT GetQuotaState(out uint32 pdwState) mut => VT.GetQuotaState(ref this, out pdwState);
			public HRESULT SetQuotaLogFlags(uint32 dwFlags) mut => VT.SetQuotaLogFlags(ref this, dwFlags);
			public HRESULT GetQuotaLogFlags(out uint32 pdwFlags) mut => VT.GetQuotaLogFlags(ref this, out pdwFlags);
			public HRESULT SetDefaultQuotaThreshold(int64 llThreshold) mut => VT.SetDefaultQuotaThreshold(ref this, llThreshold);
			public HRESULT GetDefaultQuotaThreshold(out int64 pllThreshold) mut => VT.GetDefaultQuotaThreshold(ref this, out pllThreshold);
			public HRESULT GetDefaultQuotaThresholdText(PWSTR pszText, uint32 cchText) mut => VT.GetDefaultQuotaThresholdText(ref this, pszText, cchText);
			public HRESULT SetDefaultQuotaLimit(int64 llLimit) mut => VT.SetDefaultQuotaLimit(ref this, llLimit);
			public HRESULT GetDefaultQuotaLimit(out int64 pllLimit) mut => VT.GetDefaultQuotaLimit(ref this, out pllLimit);
			public HRESULT GetDefaultQuotaLimitText(PWSTR pszText, uint32 cchText) mut => VT.GetDefaultQuotaLimitText(ref this, pszText, cchText);
			public HRESULT AddUserSid(PSID pUserSid, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) mut => VT.AddUserSid(ref this, pUserSid, fNameResolution, out ppUser);
			public HRESULT AddUserName(PWSTR pszLogonName, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) mut => VT.AddUserName(ref this, pszLogonName, fNameResolution, out ppUser);
			public HRESULT DeleteUser(ref IDiskQuotaUser pUser) mut => VT.DeleteUser(ref this, ref pUser);
			public HRESULT FindUserSid(PSID pUserSid, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) mut => VT.FindUserSid(ref this, pUserSid, fNameResolution, out ppUser);
			public HRESULT FindUserName(PWSTR pszLogonName, out IDiskQuotaUser* ppUser) mut => VT.FindUserName(ref this, pszLogonName, out ppUser);
			public HRESULT CreateEnumUsers(out PSID rgpUserSids, uint32 cpSids, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IEnumDiskQuotaUsers* ppEnum) mut => VT.CreateEnumUsers(ref this, out rgpUserSids, cpSids, fNameResolution, out ppEnum);
			public HRESULT CreateUserBatch(out IDiskQuotaUserBatch* ppBatch) mut => VT.CreateUserBatch(ref this, out ppBatch);
			public HRESULT InvalidateSidNameCache() mut => VT.InvalidateSidNameCache(ref this);
			public HRESULT GiveUserNameResolutionPriority(ref IDiskQuotaUser pUser) mut => VT.GiveUserNameResolutionPriority(ref this, ref pUser);
			public HRESULT ShutdownNameResolution() mut => VT.ShutdownNameResolution(ref this);

			[CRepr]
			public struct VTable : IConnectionPointContainer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PWSTR pszPath, BOOL bReadWrite) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, uint32 dwState) SetQuotaState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out uint32 pdwState) GetQuotaState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, uint32 dwFlags) SetQuotaLogFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out uint32 pdwFlags) GetQuotaLogFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, int64 llThreshold) SetDefaultQuotaThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out int64 pllThreshold) GetDefaultQuotaThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PWSTR pszText, uint32 cchText) GetDefaultQuotaThresholdText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, int64 llLimit) SetDefaultQuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out int64 pllLimit) GetDefaultQuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PWSTR pszText, uint32 cchText) GetDefaultQuotaLimitText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PSID pUserSid, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) AddUserSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PWSTR pszLogonName, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) AddUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, ref IDiskQuotaUser pUser) DeleteUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PSID pUserSid, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IDiskQuotaUser* ppUser) FindUserSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, PWSTR pszLogonName, out IDiskQuotaUser* ppUser) FindUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out PSID rgpUserSids, uint32 cpSids, DISKQUOTA_USERNAME_RESOLVE fNameResolution, out IEnumDiskQuotaUsers* ppEnum) CreateEnumUsers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, out IDiskQuotaUserBatch* ppBatch) CreateUserBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self) InvalidateSidNameCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self, ref IDiskQuotaUser pUser) GiveUserNameResolutionPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaControl self) ShutdownNameResolution;
			}
		}
		[CRepr]
		public struct IDiskQuotaEvents : IUnknown
		{
			public const new Guid IID = .(0x7988b579, 0xec89, 0x11cf, 0x9c, 0x00, 0x00, 0xaa, 0x00, 0xa1, 0x4f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUserNameChanged(ref IDiskQuotaUser pUser) mut => VT.OnUserNameChanged(ref this, ref pUser);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiskQuotaEvents self, ref IDiskQuotaUser pUser) OnUserNameChanged;
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SearchPathW(PWSTR lpPath, PWSTR lpFileName, PWSTR lpExtension, uint32 nBufferLength, char16* lpBuffer, PWSTR* lpFilePart);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SearchPathA(PSTR lpPath, PSTR lpFileName, PSTR lpExtension, uint32 nBufferLength, uint8* lpBuffer, PSTR* lpFilePart);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CompareFileTime(in FILETIME lpFileTime1, in FILETIME lpFileTime2);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryA(PSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryW(PWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFileA(PSTR lpFileName, FILE_ACCESS_FLAGS dwDesiredAccess, FILE_SHARE_MODE dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, FILE_CREATION_DISPOSITION dwCreationDisposition, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes, HANDLE hTemplateFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFileW(PWSTR lpFileName, FILE_ACCESS_FLAGS dwDesiredAccess, FILE_SHARE_MODE dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, FILE_CREATION_DISPOSITION dwCreationDisposition, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes, HANDLE hTemplateFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DefineDosDeviceW(DEFINE_DOS_DEVICE_FLAGS dwFlags, PWSTR lpDeviceName, PWSTR lpTargetPath);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFileA(PSTR lpFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFileW(PWSTR lpFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteVolumeMountPointW(PWSTR lpszVolumeMountPoint);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FileTimeToLocalFileTime(in FILETIME lpFileTime, out FILETIME lpLocalFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindClose(FindFileHandle hFindFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindCloseChangeNotification(FindChangeNotificationHandle hChangeHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindChangeNotificationHandle FindFirstChangeNotificationA(PSTR lpPathName, BOOL bWatchSubtree, FILE_NOTIFY_CHANGE dwNotifyFilter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindChangeNotificationHandle FindFirstChangeNotificationW(PWSTR lpPathName, BOOL bWatchSubtree, FILE_NOTIFY_CHANGE dwNotifyFilter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileA(PSTR lpFileName, out WIN32_FIND_DATAA lpFindFileData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileW(PWSTR lpFileName, out WIN32_FIND_DATAW lpFindFileData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileExA(PSTR lpFileName, FINDEX_INFO_LEVELS fInfoLevelId, void* lpFindFileData, FINDEX_SEARCH_OPS fSearchOp, void* lpSearchFilter, FIND_FIRST_EX_FLAGS dwAdditionalFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileExW(PWSTR lpFileName, FINDEX_INFO_LEVELS fInfoLevelId, void* lpFindFileData, FINDEX_SEARCH_OPS fSearchOp, void* lpSearchFilter, FIND_FIRST_EX_FLAGS dwAdditionalFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindVolumeHandle FindFirstVolumeW(char16* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextChangeNotification(FindChangeNotificationHandle hChangeHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextFileA(FindFileHandle hFindFile, out WIN32_FIND_DATAA lpFindFileData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextFileW(HANDLE hFindFile, out WIN32_FIND_DATAW lpFindFileData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextVolumeW(FindVolumeHandle hFindVolume, char16* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindVolumeClose(FindVolumeHandle hFindVolume);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushFileBuffers(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDiskFreeSpaceA(PSTR lpRootPathName, uint32* lpSectorsPerCluster, uint32* lpBytesPerSector, uint32* lpNumberOfFreeClusters, uint32* lpTotalNumberOfClusters);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDiskFreeSpaceW(PWSTR lpRootPathName, uint32* lpSectorsPerCluster, uint32* lpBytesPerSector, uint32* lpNumberOfFreeClusters, uint32* lpTotalNumberOfClusters);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDiskFreeSpaceExA(PSTR lpDirectoryName, ULARGE_INTEGER* lpFreeBytesAvailableToCaller, ULARGE_INTEGER* lpTotalNumberOfBytes, ULARGE_INTEGER* lpTotalNumberOfFreeBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDiskFreeSpaceExW(PWSTR lpDirectoryName, ULARGE_INTEGER* lpFreeBytesAvailableToCaller, ULARGE_INTEGER* lpTotalNumberOfBytes, ULARGE_INTEGER* lpTotalNumberOfFreeBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDiskSpaceInformationA(PSTR rootPath, out DISK_SPACE_INFORMATION diskSpaceInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDiskSpaceInformationW(PWSTR rootPath, out DISK_SPACE_INFORMATION diskSpaceInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDriveTypeA(PSTR lpRootPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDriveTypeW(PWSTR lpRootPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileAttributesA(PSTR lpFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileAttributesW(PWSTR lpFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileAttributesExA(PSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, void* lpFileInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileAttributesExW(PWSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, void* lpFileInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileInformationByHandle(HANDLE hFile, out BY_HANDLE_FILE_INFORMATION lpFileInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileSize(HANDLE hFile, uint32* lpFileSizeHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileSizeEx(HANDLE hFile, out LARGE_INTEGER lpFileSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileType(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFinalPathNameByHandleA(HANDLE hFile, uint8* lpszFilePath, uint32 cchFilePath, FILE_NAME dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFinalPathNameByHandleW(HANDLE hFile, char16* lpszFilePath, uint32 cchFilePath, FILE_NAME dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileTime(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFullPathNameW(PWSTR lpFileName, uint32 nBufferLength, char16* lpBuffer, PWSTR* lpFilePart);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFullPathNameA(PSTR lpFileName, uint32 nBufferLength, uint8* lpBuffer, PSTR* lpFilePart);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLogicalDrives();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLogicalDriveStringsW(uint32 nBufferLength, char16* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLongPathNameA(PSTR lpszShortPath, uint8* lpszLongPath, uint32 cchBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLongPathNameW(PWSTR lpszShortPath, char16* lpszLongPath, uint32 cchBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AreShortNamesEnabled(HANDLE Handle, out BOOL Enabled);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetShortPathNameW(PWSTR lpszLongPath, char16* lpszShortPath, uint32 cchBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempFileNameW(PWSTR lpPathName, PWSTR lpPrefixString, uint32 uUnique, char16* lpTempFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumeInformationByHandleW(HANDLE hFile, char16* lpVolumeNameBuffer, uint32 nVolumeNameSize, uint32* lpVolumeSerialNumber, uint32* lpMaximumComponentLength, uint32* lpFileSystemFlags, char16* lpFileSystemNameBuffer, uint32 nFileSystemNameSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumeInformationW(PWSTR lpRootPathName, char16* lpVolumeNameBuffer, uint32 nVolumeNameSize, uint32* lpVolumeSerialNumber, uint32* lpMaximumComponentLength, uint32* lpFileSystemFlags, char16* lpFileSystemNameBuffer, uint32 nFileSystemNameSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumePathNameW(PWSTR lpszFileName, char16* lpszVolumePathName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LocalFileTimeToFileTime(in FILETIME lpLocalFileTime, out FILETIME lpFileTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LockFile(HANDLE hFile, uint32 dwFileOffsetLow, uint32 dwFileOffsetHigh, uint32 nNumberOfBytesToLockLow, uint32 nNumberOfBytesToLockHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LockFileEx(HANDLE hFile, LOCK_FILE_FLAGS dwFlags, uint32 dwReserved, uint32 nNumberOfBytesToLockLow, uint32 nNumberOfBytesToLockHigh, out OVERLAPPED lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryDosDeviceW(PWSTR lpDeviceName, char16* lpTargetPath, uint32 ucchMax);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadFile(HANDLE hFile, void* lpBuffer, uint32 nNumberOfBytesToRead, uint32* lpNumberOfBytesRead, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadFileEx(HANDLE hFile, void* lpBuffer, uint32 nNumberOfBytesToRead, out OVERLAPPED lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadFileScatter(HANDLE hFile, ref FILE_SEGMENT_ELEMENT aSegmentArray, uint32 nNumberOfBytesToRead, out uint32 lpReserved, out OVERLAPPED lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDirectoryA(PSTR lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDirectoryW(PWSTR lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetEndOfFile(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileAttributesA(PSTR lpFileName, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileAttributesW(PWSTR lpFileName, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileInformationByHandle(HANDLE hFile, FILE_INFO_BY_HANDLE_CLASS FileInformationClass, void* lpFileInformation, uint32 dwBufferSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetFilePointer(HANDLE hFile, int32 lDistanceToMove, int32* lpDistanceToMoveHigh, SET_FILE_POINTER_MOVE_METHOD dwMoveMethod);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFilePointerEx(HANDLE hFile, LARGE_INTEGER liDistanceToMove, LARGE_INTEGER* lpNewFilePointer, SET_FILE_POINTER_MOVE_METHOD dwMoveMethod);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileTime(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileValidData(HANDLE hFile, int64 ValidDataLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnlockFile(HANDLE hFile, uint32 dwFileOffsetLow, uint32 dwFileOffsetHigh, uint32 nNumberOfBytesToUnlockLow, uint32 nNumberOfBytesToUnlockHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnlockFileEx(HANDLE hFile, uint32 dwReserved, uint32 nNumberOfBytesToUnlockLow, uint32 nNumberOfBytesToUnlockHigh, out OVERLAPPED lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteFile(HANDLE hFile, void* lpBuffer, uint32 nNumberOfBytesToWrite, uint32* lpNumberOfBytesWritten, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteFileEx(HANDLE hFile, void* lpBuffer, uint32 nNumberOfBytesToWrite, out OVERLAPPED lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteFileGather(HANDLE hFile, ref FILE_SEGMENT_ELEMENT aSegmentArray, uint32 nNumberOfBytesToWrite, out uint32 lpReserved, out OVERLAPPED lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempPathW(uint32 nBufferLength, char16* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumeNameForVolumeMountPointW(PWSTR lpszVolumeMountPoint, char16* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumePathNamesForVolumeNameW(PWSTR lpszVolumeName, char16* lpszVolumePathNames, uint32 cchBufferLength, out uint32 lpcchReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFile2(PWSTR lpFileName, FILE_ACCESS_FLAGS dwDesiredAccess, FILE_SHARE_MODE dwShareMode, FILE_CREATION_DISPOSITION dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileIoOverlappedRange(HANDLE FileHandle, ref uint8 OverlappedRangeStart, uint32 Length);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCompressedFileSizeA(PSTR lpFileName, uint32* lpFileSizeHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCompressedFileSizeW(PWSTR lpFileName, uint32* lpFileSizeHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindStreamHandle FindFirstStreamW(PWSTR lpFileName, STREAM_INFO_LEVELS InfoLevel, void* lpFindStreamData, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextStreamW(FindStreamHandle hFindStream, void* lpFindStreamData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AreFileApisANSI();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempPathA(uint32 nBufferLength, uint8* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileNameHandle FindFirstFileNameW(PWSTR lpFileName, uint32 dwFlags, out uint32 StringLength, char16* LinkName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextFileNameW(FindFileNameHandle hFindStream, out uint32 StringLength, char16* LinkName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumeInformationA(PSTR lpRootPathName, uint8* lpVolumeNameBuffer, uint32 nVolumeNameSize, uint32* lpVolumeSerialNumber, uint32* lpMaximumComponentLength, uint32* lpFileSystemFlags, uint8* lpFileSystemNameBuffer, uint32 nFileSystemNameSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempFileNameA(PSTR lpPathName, PSTR lpPrefixString, uint32 uUnique, uint8* lpTempFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetFileApisToOEM();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetFileApisToANSI();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempPath2W(uint32 BufferLength, char16* Buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTempPath2A(uint32 BufferLength, uint8* Buffer);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileFromAppW(PWSTR lpExistingFileName, PWSTR lpNewFileName, BOOL bFailIfExists);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryFromAppW(PWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFileFromAppW(PWSTR lpFileName, uint32 dwDesiredAccess, uint32 dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, uint32 dwCreationDisposition, uint32 dwFlagsAndAttributes, HANDLE hTemplateFile);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFile2FromAppW(PWSTR lpFileName, uint32 dwDesiredAccess, uint32 dwShareMode, uint32 dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFileFromAppW(PWSTR lpFileName);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindFirstFileExFromAppW(PWSTR lpFileName, FINDEX_INFO_LEVELS fInfoLevelId, void* lpFindFileData, FINDEX_SEARCH_OPS fSearchOp, void* lpSearchFilter, uint32 dwAdditionalFlags);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileAttributesExFromAppW(PWSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, void* lpFileInformation);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileFromAppW(PWSTR lpExistingFileName, PWSTR lpNewFileName);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDirectoryFromAppW(PWSTR lpPathName);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReplaceFileFromAppW(PWSTR lpReplacedFileName, PWSTR lpReplacementFileName, PWSTR lpBackupFileName, uint32 dwReplaceFlags, void* lpExclude, void* lpReserved);
		[Import("api-ms-win-core-file-fromapp-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileAttributesFromAppW(PWSTR lpFileName, uint32 dwFileAttributes);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern VER_FIND_FILE_STATUS VerFindFileA(VER_FIND_FILE_FLAGS uFlags, PSTR szFileName, PSTR szWinDir, PSTR szAppDir, uint8* szCurDir, out uint32 puCurDirLen, uint8* szDestDir, out uint32 puDestDirLen);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern VER_FIND_FILE_STATUS VerFindFileW(VER_FIND_FILE_FLAGS uFlags, PWSTR szFileName, PWSTR szWinDir, PWSTR szAppDir, char16* szCurDir, out uint32 puCurDirLen, char16* szDestDir, out uint32 puDestDirLen);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern VER_INSTALL_FILE_STATUS VerInstallFileA(VER_INSTALL_FILE_FLAGS uFlags, PSTR szSrcFileName, PSTR szDestFileName, PSTR szSrcDir, PSTR szDestDir, PSTR szCurDir, uint8* szTmpFile, out uint32 puTmpFileLen);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern VER_INSTALL_FILE_STATUS VerInstallFileW(VER_INSTALL_FILE_FLAGS uFlags, PWSTR szSrcFileName, PWSTR szDestFileName, PWSTR szSrcDir, PWSTR szDestDir, PWSTR szCurDir, char16* szTmpFile, out uint32 puTmpFileLen);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileVersionInfoSizeA(PSTR lptstrFilename, uint32* lpdwHandle);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileVersionInfoSizeW(PWSTR lptstrFilename, uint32* lpdwHandle);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileVersionInfoA(PSTR lptstrFilename, uint32 dwHandle, uint32 dwLen, void* lpData);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileVersionInfoW(PWSTR lptstrFilename, uint32 dwHandle, uint32 dwLen, void* lpData);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileVersionInfoSizeExA(GET_FILE_VERSION_INFO_FLAGS dwFlags, PSTR lpwstrFilename, out uint32 lpdwHandle);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFileVersionInfoSizeExW(GET_FILE_VERSION_INFO_FLAGS dwFlags, PWSTR lpwstrFilename, out uint32 lpdwHandle);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileVersionInfoExA(GET_FILE_VERSION_INFO_FLAGS dwFlags, PSTR lpwstrFilename, uint32 dwHandle, uint32 dwLen, void* lpData);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileVersionInfoExW(GET_FILE_VERSION_INFO_FLAGS dwFlags, PWSTR lpwstrFilename, uint32 dwHandle, uint32 dwLen, void* lpData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VerLanguageNameA(uint32 wLang, uint8* szLang, uint32 cchLang);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VerLanguageNameW(uint32 wLang, char16* szLang, uint32 cchLang);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VerQueryValueA(void* pBlock, PSTR lpSubBlock, void** lplpBuffer, out uint32 puLen);
		[Import("version.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VerQueryValueW(void* pBlock, PWSTR lpSubBlock, void** lplpBuffer, out uint32 puLen);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN LsnEqual(in CLS_LSN plsn1, in CLS_LSN plsn2);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN LsnLess(in CLS_LSN plsn1, in CLS_LSN plsn2);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN LsnGreater(in CLS_LSN plsn1, in CLS_LSN plsn2);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN LsnNull(in CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LsnContainer(in CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLS_LSN LsnCreate(uint32 cidContainer, uint32 offBlock, uint32 cRecord);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LsnBlockOffset(in CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LsnRecordSequence(in CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN LsnInvalid(in CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLS_LSN LsnIncrement(ref CLS_LSN plsn);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateLogFile(PWSTR pszLogFileName, FILE_ACCESS_FLAGS fDesiredAccess, FILE_SHARE_MODE dwShareMode, out SECURITY_ATTRIBUTES psaLogFile, FILE_CREATION_DISPOSITION fCreateDisposition, FILE_FLAGS_AND_ATTRIBUTES fFlagsAndAttributes);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteLogByHandle(HANDLE hLog);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteLogFile(PWSTR pszLogFileName, void* pvReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddLogContainer(HANDLE hLog, uint64* pcbContainer, PWSTR pwszContainerPath, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddLogContainerSet(HANDLE hLog, uint16 cContainer, uint64* pcbContainer, PWSTR* rgwszContainerPath, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveLogContainer(HANDLE hLog, PWSTR pwszContainerPath, BOOL fForce, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveLogContainerSet(HANDLE hLog, uint16 cContainer, PWSTR* rgwszContainerPath, BOOL fForce, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetLogArchiveTail(HANDLE hLog, out CLS_LSN plsnArchiveTail, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetEndOfLog(HANDLE hLog, out CLS_LSN plsnEnd, out OVERLAPPED lpOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TruncateLog(void* pvMarshal, ref CLS_LSN plsnEnd, OVERLAPPED* lpOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateLogContainerScanContext(HANDLE hLog, uint32 cFromContainer, uint32 cContainers, uint8 eScanMode, out CLS_SCAN_CONTEXT pcxScan, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScanLogContainers(out CLS_SCAN_CONTEXT pcxScan, uint8 eScanMode, void* pReserved);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AlignReservedLog(void* pvMarshal, uint32 cReservedRecords, out int64 rgcbReservation, out int64 pcbAlignReservation);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllocReservedLog(void* pvMarshal, uint32 cReservedRecords, out int64 pcbAdjustment);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeReservedLog(void* pvMarshal, uint32 cReservedRecords, out int64 pcbAdjustment);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogFileInformation(HANDLE hLog, out CLS_INFORMATION pinfoBuffer, out uint32 cbBuffer);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetLogArchiveMode(HANDLE hLog, CLFS_LOG_ARCHIVE_MODE eMode);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadLogRestartArea(void* pvMarshal, void** ppvRestartBuffer, out uint32 pcbRestartBuffer, out CLS_LSN plsn, void** ppvContext, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadPreviousLogRestartArea(void* pvReadContext, void** ppvRestartBuffer, out uint32 pcbRestartBuffer, out CLS_LSN plsnRestart, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteLogRestartArea(void* pvMarshal, void* pvRestartBuffer, uint32 cbRestartBuffer, out CLS_LSN plsnBase, CLFS_FLAG fFlags, out uint32 pcbWritten, out CLS_LSN plsnNext, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogReservationInfo(void* pvMarshal, out uint32 pcbRecordNumber, out int64 pcbUserReservation, out int64 pcbCommitReservation);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AdvanceLogBase(void* pvMarshal, out CLS_LSN plsnBase, uint32 fFlags, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseAndResetLogFile(HANDLE hLog);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateLogMarshallingArea(HANDLE hLog, CLFS_BLOCK_ALLOCATION pfnAllocBuffer, CLFS_BLOCK_DEALLOCATION pfnFreeBuffer, void* pvBlockAllocContext, uint32 cbMarshallingBuffer, uint32 cMaxWriteBuffers, uint32 cMaxReadBuffers, void** ppvMarshal);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteLogMarshallingArea(void* pvMarshal);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReserveAndAppendLog(void* pvMarshal, out CLS_WRITE_ENTRY rgWriteEntries, uint32 cWriteEntries, out CLS_LSN plsnUndoNext, out CLS_LSN plsnPrevious, uint32 cReserveRecords, out int64 rgcbReservation, CLFS_FLAG fFlags, out CLS_LSN plsn, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReserveAndAppendLogAligned(void* pvMarshal, out CLS_WRITE_ENTRY rgWriteEntries, uint32 cWriteEntries, uint32 cbEntryAlignment, out CLS_LSN plsnUndoNext, out CLS_LSN plsnPrevious, uint32 cReserveRecords, out int64 rgcbReservation, CLFS_FLAG fFlags, out CLS_LSN plsn, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushLogBuffers(void* pvMarshal, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushLogToLsn(void* pvMarshalContext, out CLS_LSN plsnFlush, out CLS_LSN plsnLastFlushed, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadLogRecord(void* pvMarshal, out CLS_LSN plsnFirst, CLFS_CONTEXT_MODE eContextMode, void** ppvReadBuffer, out uint32 pcbReadBuffer, out uint8 peRecordType, out CLS_LSN plsnUndoNext, out CLS_LSN plsnPrevious, void** ppvReadContext, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadNextLogRecord(void* pvReadContext, void** ppvBuffer, out uint32 pcbBuffer, out uint8 peRecordType, out CLS_LSN plsnUser, out CLS_LSN plsnUndoNext, out CLS_LSN plsnPrevious, out CLS_LSN plsnRecord, out OVERLAPPED pOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TerminateReadLog(void* pvCursorContext);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrepareLogArchive(HANDLE hLog, char16* pszBaseLogFileName, uint32 cLen, CLS_LSN* plsnLow, CLS_LSN* plsnHigh, uint32* pcActualLength, out uint64 poffBaseLogFileData, out uint64 pcbBaseLogFileLength, out CLS_LSN plsnBase, out CLS_LSN plsnLast, out CLS_LSN plsnCurrentArchiveTail, void** ppvArchiveContext);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadLogArchiveMetadata(void* pvArchiveContext, uint32 cbOffset, uint32 cbBytesToRead, out uint8 pbReadBuffer, out uint32 pcbBytesRead);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNextLogArchiveExtent(void* pvArchiveContext, out CLS_ARCHIVE_DESCRIPTOR rgadExtent, uint32 cDescriptors, out uint32 pcDescriptorsReturned);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TerminateLogArchive(void* pvArchiveContext);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ValidateLog(PWSTR pszLogFileName, out SECURITY_ATTRIBUTES psaLogFile, out CLS_INFORMATION pinfoBuffer, out uint32 pcbBuffer);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogContainerName(HANDLE hLog, uint32 cidLogicalContainer, PWSTR pwstrContainerName, uint32 cLenContainerName, out uint32 pcActualLenContainerName);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogIoStatistics(HANDLE hLog, void* pvStatsBuffer, uint32 cbStatsBuffer, CLFS_IOSTATS_CLASS eStatsClass, out uint32 pcbStatsWritten);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterManageableLogClient(HANDLE hLog, out LOG_MANAGEMENT_CALLBACKS pCallbacks);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeregisterManageableLogClient(HANDLE hLog);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadLogNotification(HANDLE hLog, out CLFS_MGMT_NOTIFICATION pNotification, out OVERLAPPED lpOverlapped);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InstallLogPolicy(HANDLE hLog, out CLFS_MGMT_POLICY pPolicy);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveLogPolicy(HANDLE hLog, CLFS_MGMT_POLICY_TYPE ePolicyType);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryLogPolicy(HANDLE hLog, CLFS_MGMT_POLICY_TYPE ePolicyType, out CLFS_MGMT_POLICY pPolicyBuffer, out uint32 pcbPolicyBuffer);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetLogFileSizeWithPolicy(HANDLE hLog, out uint64 pDesiredSize, out uint64 pResultingSize);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL HandleLogFull(HANDLE hLog);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LogTailAdvanceFailure(HANDLE hLog, uint32 dwReason);
		[Import("clfsw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterForLogWriteNotification(HANDLE hLog, uint32 cbThreshold, BOOL fEnable);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryUsersOnEncryptedFile(PWSTR lpFileName, out ENCRYPTION_CERTIFICATE_HASH_LIST* pUsers);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryRecoveryAgentsOnEncryptedFile(PWSTR lpFileName, out ENCRYPTION_CERTIFICATE_HASH_LIST* pRecoveryAgents);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RemoveUsersFromEncryptedFile(PWSTR lpFileName, ref ENCRYPTION_CERTIFICATE_HASH_LIST pHashes);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AddUsersToEncryptedFile(PWSTR lpFileName, ref ENCRYPTION_CERTIFICATE_LIST pEncryptionCertificates);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetUserFileEncryptionKey(ENCRYPTION_CERTIFICATE* pEncryptionCertificate);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetUserFileEncryptionKeyEx(ENCRYPTION_CERTIFICATE* pEncryptionCertificate, uint32 dwCapabilities, uint32 dwFlags, void* pvReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeEncryptionCertificateHashList(ref ENCRYPTION_CERTIFICATE_HASH_LIST pUsers);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EncryptionDisable(PWSTR DirPath, BOOL Disable);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DuplicateEncryptionInfoFile(PWSTR SrcFileName, PWSTR DstFileName, uint32 dwCreationDistribution, uint32 dwAttributes, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEncryptedFileMetadata(PWSTR lpFileName, out uint32 pcbMetadata, out uint8* ppbMetadata);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetEncryptedFileMetadata(PWSTR lpFileName, uint8* pbOldMetadata, ref uint8 pbNewMetadata, ref ENCRYPTION_CERTIFICATE_HASH pOwnerHash, uint32 dwOperation, ENCRYPTION_CERTIFICATE_HASH_LIST* pCertificatesAdded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeEncryptedFileMetadata(ref uint8 pbMetadata);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZStart();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LZDone();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CopyLZFile(int32 hfSource, int32 hfDest);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZCopy(int32 hfSource, int32 hfDest);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZInit(int32 hfSource);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetExpandedNameA(PSTR lpszSource, uint8* lpszBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetExpandedNameW(PWSTR lpszSource, char16* lpszBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZOpenFileA(PSTR lpFileName, out OFSTRUCT lpReOpenBuf, LZOPENFILE_STYLE wStyle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZOpenFileW(PWSTR lpFileName, out OFSTRUCT lpReOpenBuf, LZOPENFILE_STYLE wStyle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZSeek(int32 hFile, int32 lOffset, int32 iOrigin);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LZRead(int32 hFile, PSTR lpBuffer, int32 cbRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LZClose(int32 hFile);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WofShouldCompressBinaries(PWSTR Volume, out uint32 Algorithm);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofGetDriverVersion(HANDLE FileOrVolumeHandle, uint32 Provider, out uint32 WofVersion);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofSetFileDataLocation(HANDLE FileHandle, uint32 Provider, void* ExternalFileInfo, uint32 Length);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofIsExternalFile(PWSTR FilePath, BOOL* IsExternalFile, uint32* Provider, void* ExternalFileInfo, uint32* BufferLength);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofEnumEntries(PWSTR VolumeName, uint32 Provider, WofEnumEntryProc EnumProc, void* UserData);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofWimAddEntry(PWSTR VolumeName, PWSTR WimPath, uint32 WimType, uint32 WimIndex, out LARGE_INTEGER DataSourceId);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofWimEnumFiles(PWSTR VolumeName, LARGE_INTEGER DataSourceId, WofEnumFilesProc EnumProc, void* UserData);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofWimSuspendEntry(PWSTR VolumeName, LARGE_INTEGER DataSourceId);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofWimRemoveEntry(PWSTR VolumeName, LARGE_INTEGER DataSourceId);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofWimUpdateEntry(PWSTR VolumeName, LARGE_INTEGER DataSourceId, PWSTR NewWimPath);
		[Import("wofutil.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WofFileEnumFiles(PWSTR VolumeName, uint32 Algorithm, WofEnumFilesProc EnumProc, void* UserData);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogCreateFileReadContext(PWSTR LogPath, CLS_LSN BeginningLsn, CLS_LSN EndingLsn, ref TXF_ID TxfFileId, void** TxfLogContext);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogCreateRangeReadContext(PWSTR LogPath, CLS_LSN BeginningLsn, CLS_LSN EndingLsn, ref LARGE_INTEGER BeginningVirtualClock, ref LARGE_INTEGER EndingVirtualClock, uint32 RecordTypeMask, void** TxfLogContext);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogDestroyReadContext(void* TxfLogContext);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogReadRecords(void* TxfLogContext, uint32 BufferLength, void* Buffer, out uint32 BytesUsed, out uint32 RecordCount);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfReadMetadataInfo(HANDLE FileHandle, out TXF_ID TxfFileId, out CLS_LSN LastLsn, out uint32 TransactionState, out Guid LockingTransaction);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogRecordGetFileName(void* RecordBuffer, uint32 RecordBufferLengthInBytes, PWSTR NameBuffer, out uint32 NameBufferLengthInBytes, TXF_ID* TxfId);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TxfLogRecordGetGenericType(void* RecordBuffer, uint32 RecordBufferLengthInBytes, out uint32 GenericType, LARGE_INTEGER* VirtualClock);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void TxfSetThreadMiniVersionForCreate(uint16 MiniVersion);
		[Import("txfw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void TxfGetThreadMiniVersionForCreate(out uint16 MiniVersion);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateTransaction(out SECURITY_ATTRIBUTES lpTransactionAttributes, out Guid UOW, uint32 CreateOptions, uint32 IsolationLevel, uint32 IsolationFlags, uint32 Timeout, PWSTR Description);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenTransaction(uint32 dwDesiredAccess, out Guid TransactionId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommitTransaction(HANDLE TransactionHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommitTransactionAsync(HANDLE TransactionHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RollbackTransaction(HANDLE TransactionHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RollbackTransactionAsync(HANDLE TransactionHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTransactionId(HANDLE TransactionHandle, out Guid TransactionId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTransactionInformation(HANDLE TransactionHandle, out uint32 Outcome, out uint32 IsolationLevel, out uint32 IsolationFlags, out uint32 Timeout, uint32 BufferLength, char16* Description);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetTransactionInformation(HANDLE TransactionHandle, uint32 IsolationLevel, uint32 IsolationFlags, uint32 Timeout, PWSTR Description);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateTransactionManager(out SECURITY_ATTRIBUTES lpTransactionAttributes, PWSTR LogFileName, uint32 CreateOptions, uint32 CommitStrength);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenTransactionManager(PWSTR LogFileName, uint32 DesiredAccess, uint32 OpenOptions);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenTransactionManagerById(ref Guid TransactionManagerId, uint32 DesiredAccess, uint32 OpenOptions);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RenameTransactionManager(PWSTR LogFileName, out Guid ExistingTransactionManagerGuid);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RollforwardTransactionManager(HANDLE TransactionManagerHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RecoverTransactionManager(HANDLE TransactionManagerHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentClockTransactionManager(HANDLE TransactionManagerHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTransactionManagerId(HANDLE TransactionManagerHandle, out Guid TransactionManagerId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateResourceManager(out SECURITY_ATTRIBUTES lpResourceManagerAttributes, out Guid ResourceManagerId, uint32 CreateOptions, HANDLE TmHandle, PWSTR Description);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenResourceManager(uint32 dwDesiredAccess, HANDLE TmHandle, out Guid ResourceManagerId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RecoverResourceManager(HANDLE ResourceManagerHandle);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNotificationResourceManager(HANDLE ResourceManagerHandle, out TRANSACTION_NOTIFICATION TransactionNotification, uint32 NotificationLength, uint32 dwMilliseconds, out uint32 ReturnLength);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNotificationResourceManagerAsync(HANDLE ResourceManagerHandle, out TRANSACTION_NOTIFICATION TransactionNotification, uint32 TransactionNotificationLength, out uint32 ReturnLength, out OVERLAPPED lpOverlapped);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetResourceManagerCompletionPort(HANDLE ResourceManagerHandle, HANDLE IoCompletionPortHandle, uint CompletionKey);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateEnlistment(out SECURITY_ATTRIBUTES lpEnlistmentAttributes, HANDLE ResourceManagerHandle, HANDLE TransactionHandle, uint32 NotificationMask, uint32 CreateOptions, void* EnlistmentKey);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenEnlistment(uint32 dwDesiredAccess, HANDLE ResourceManagerHandle, out Guid EnlistmentId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RecoverEnlistment(HANDLE EnlistmentHandle, void* EnlistmentKey);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetEnlistmentRecoveryInformation(HANDLE EnlistmentHandle, uint32 BufferSize, void* Buffer, out uint32 BufferUsed);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetEnlistmentId(HANDLE EnlistmentHandle, out Guid EnlistmentId);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetEnlistmentRecoveryInformation(HANDLE EnlistmentHandle, uint32 BufferSize, void* Buffer);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrepareEnlistment(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrePrepareEnlistment(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommitEnlistment(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RollbackEnlistment(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrePrepareComplete(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrepareComplete(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadOnlyEnlistment(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommitComplete(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RollbackComplete(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("ktmw32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SinglePhaseReject(HANDLE EnlistmentHandle, out LARGE_INTEGER TmVirtualClock);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareAdd(PWSTR servername, uint32 level, ref uint8 buf, uint32* parm_err);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareEnum(PWSTR servername, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint32* resume_handle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareEnumSticky(PWSTR servername, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint32* resume_handle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareGetInfo(PWSTR servername, PWSTR netname, uint32 level, out uint8* bufptr);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareSetInfo(PWSTR servername, PWSTR netname, uint32 level, ref uint8 buf, uint32* parm_err);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareDel(PWSTR servername, PWSTR netname, uint32 reserved);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareDelSticky(PWSTR servername, PWSTR netname, uint32 reserved);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareCheck(PWSTR servername, PWSTR device, out uint32 type);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetShareDelEx(PWSTR servername, uint32 level, ref uint8 buf);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetServerAliasAdd(PWSTR servername, uint32 level, ref uint8 buf);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetServerAliasDel(PWSTR servername, uint32 level, ref uint8 buf);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetServerAliasEnum(PWSTR servername, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint32* resumehandle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetSessionEnum(PWSTR servername, PWSTR UncClientName, PWSTR username, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint32* resume_handle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetSessionDel(PWSTR servername, PWSTR UncClientName, PWSTR username);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetSessionGetInfo(PWSTR servername, PWSTR UncClientName, PWSTR username, uint32 level, out uint8* bufptr);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetConnectionEnum(PWSTR servername, PWSTR qualifier, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint32* resume_handle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetFileClose(PWSTR servername, uint32 fileid);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetFileEnum(PWSTR servername, PWSTR basepath, PWSTR username, uint32 level, out uint8* bufptr, uint32 prefmaxlen, out uint32 entriesread, out uint32 totalentries, uint* resume_handle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetFileGetInfo(PWSTR servername, uint32 fileid, uint32 level, out uint8* bufptr);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NetStatisticsGet(ref int8 ServerName, ref int8 Service, uint32 Level, uint32 Options, out uint8* Buffer);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT QueryIoRingCapabilities(out IORING_CAPABILITIES capabilities);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsIoRingOpSupported(ref HIORING__ ioRing, IORING_OP_CODE op);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateIoRing(IORING_VERSION ioringVersion, IORING_CREATE_FLAGS flags, uint32 submissionQueueSize, uint32 completionQueueSize, out HIORING__* h);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetIoRingInfo(ref HIORING__ ioRing, out IORING_INFO info);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SubmitIoRing(ref HIORING__ ioRing, uint32 waitOperations, uint32 milliseconds, uint32* submittedEntries);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CloseIoRing(ref HIORING__ ioRing);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PopIoRingCompletion(ref HIORING__ ioRing, out IORING_CQE cqe);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetIoRingCompletionEvent(ref HIORING__ ioRing, HANDLE hEvent);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BuildIoRingCancelRequest(ref HIORING__ ioRing, IORING_HANDLE_REF file, uint opToCancel, uint userData);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BuildIoRingReadFile(ref HIORING__ ioRing, IORING_HANDLE_REF fileRef, IORING_BUFFER_REF dataRef, uint32 numberOfBytesToRead, uint64 fileOffset, uint userData, IORING_SQE_FLAGS flags);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BuildIoRingRegisterFileHandles(ref HIORING__ ioRing, uint32 count, HANDLE* handles, uint userData);
		[Import("api-ms-win-core-ioring-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BuildIoRingRegisterBuffers(ref HIORING__ ioRing, uint32 count, IORING_BUFFER_INFO* buffers, uint userData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN Wow64EnableWow64FsRedirection(BOOLEAN Wow64FsEnableRedirection);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Wow64DisableWow64FsRedirection(void** OldValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Wow64RevertWow64FsRedirection(void* OlValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetBinaryTypeA(PSTR lpApplicationName, out uint32 lpBinaryType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetBinaryTypeW(PWSTR lpApplicationName, out uint32 lpBinaryType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetShortPathNameA(PSTR lpszLongPath, uint8* lpszShortPath, uint32 cchBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLongPathNameTransactedA(PSTR lpszShortPath, uint8* lpszLongPath, uint32 cchBuffer, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLongPathNameTransactedW(PWSTR lpszShortPath, char16* lpszLongPath, uint32 cchBuffer, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileCompletionNotificationModes(HANDLE FileHandle, uint8 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileShortNameA(HANDLE hFile, PSTR lpShortName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileShortNameW(HANDLE hFile, PWSTR lpShortName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTapePosition(HANDLE hDevice, TAPE_POSITION_METHOD dwPositionMethod, uint32 dwPartition, uint32 dwOffsetLow, uint32 dwOffsetHigh, BOOL bImmediate);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTapePosition(HANDLE hDevice, TAPE_POSITION_TYPE dwPositionType, out uint32 lpdwPartition, out uint32 lpdwOffsetLow, out uint32 lpdwOffsetHigh);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrepareTape(HANDLE hDevice, PREPARE_TAPE_OPERATION dwOperation, BOOL bImmediate);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EraseTape(HANDLE hDevice, ERASE_TAPE_TYPE dwEraseType, BOOL bImmediate);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateTapePartition(HANDLE hDevice, CREATE_TAPE_PARTITION_METHOD dwPartitionMethod, uint32 dwCount, uint32 dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WriteTapemark(HANDLE hDevice, TAPEMARK_TYPE dwTapemarkType, uint32 dwTapemarkCount, BOOL bImmediate);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTapeStatus(HANDLE hDevice);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTapeParameters(HANDLE hDevice, GET_TAPE_DRIVE_PARAMETERS_OPERATION dwOperation, out uint32 lpdwSize, void* lpTapeInformation);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTapeParameters(HANDLE hDevice, TAPE_INFORMATION_TYPE dwOperation, void* lpTapeInformation);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EncryptFileA(PSTR lpFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EncryptFileW(PWSTR lpFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DecryptFileA(PSTR lpFileName, uint32 dwReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DecryptFileW(PWSTR lpFileName, uint32 dwReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FileEncryptionStatusA(PSTR lpFileName, out uint32 lpStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FileEncryptionStatusW(PWSTR lpFileName, out uint32 lpStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OpenEncryptedFileRawA(PSTR lpFileName, uint32 ulFlags, void** pvContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OpenEncryptedFileRawW(PWSTR lpFileName, uint32 ulFlags, void** pvContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ReadEncryptedFileRaw(PFE_EXPORT_FUNC pfExportCallback, void* pvCallbackContext, void* pvContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WriteEncryptedFileRaw(PFE_IMPORT_FUNC pfImportCallback, void* pvCallbackContext, void* pvContext);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseEncryptedFileRaw(void* pvContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenFile(PSTR lpFileName, out OFSTRUCT lpReOpenBuff, LZOPENFILE_STYLE uStyle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BackupRead(HANDLE hFile, out uint8 lpBuffer, uint32 nNumberOfBytesToRead, out uint32 lpNumberOfBytesRead, BOOL bAbort, BOOL bProcessSecurity, void** lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BackupSeek(HANDLE hFile, uint32 dwLowBytesToSeek, uint32 dwHighBytesToSeek, out uint32 lpdwLowByteSeeked, out uint32 lpdwHighByteSeeked, void** lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BackupWrite(HANDLE hFile, ref uint8 lpBuffer, uint32 nNumberOfBytesToWrite, out uint32 lpNumberOfBytesWritten, BOOL bAbort, BOOL bProcessSecurity, void** lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLogicalDriveStringsA(uint32 nBufferLength, uint8* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetSearchPathMode(uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryExA(PSTR lpTemplateDirectory, PSTR lpNewDirectory, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryExW(PWSTR lpTemplateDirectory, PWSTR lpNewDirectory, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryTransactedA(PSTR lpTemplateDirectory, PSTR lpNewDirectory, SECURITY_ATTRIBUTES* lpSecurityAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDirectoryTransactedW(PWSTR lpTemplateDirectory, PWSTR lpNewDirectory, SECURITY_ATTRIBUTES* lpSecurityAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDirectoryTransactedA(PSTR lpPathName, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDirectoryTransactedW(PWSTR lpPathName, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFullPathNameTransactedA(PSTR lpFileName, uint32 nBufferLength, uint8* lpBuffer, PSTR* lpFilePart, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFullPathNameTransactedW(PWSTR lpFileName, uint32 nBufferLength, char16* lpBuffer, PWSTR* lpFilePart, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DefineDosDeviceA(DEFINE_DOS_DEVICE_FLAGS dwFlags, PSTR lpDeviceName, PSTR lpTargetPath);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryDosDeviceA(PSTR lpDeviceName, uint8* lpTargetPath, uint32 ucchMax);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFileTransactedA(PSTR lpFileName, uint32 dwDesiredAccess, FILE_SHARE_MODE dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, FILE_CREATION_DISPOSITION dwCreationDisposition, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes, HANDLE hTemplateFile, HANDLE hTransaction, TXFS_MINIVERSION* pusMiniVersion, void* lpExtendedParameter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateFileTransactedW(PWSTR lpFileName, uint32 dwDesiredAccess, FILE_SHARE_MODE dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, FILE_CREATION_DISPOSITION dwCreationDisposition, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes, HANDLE hTemplateFile, HANDLE hTransaction, TXFS_MINIVERSION* pusMiniVersion, void* lpExtendedParameter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE ReOpenFile(HANDLE hOriginalFile, FILE_ACCESS_FLAGS dwDesiredAccess, FILE_SHARE_MODE dwShareMode, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileAttributesTransactedA(PSTR lpFileName, uint32 dwFileAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileAttributesTransactedW(PWSTR lpFileName, uint32 dwFileAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileAttributesTransactedA(PSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, void* lpFileInformation, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileAttributesTransactedW(PWSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, void* lpFileInformation, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCompressedFileSizeTransactedA(PSTR lpFileName, uint32* lpFileSizeHigh, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCompressedFileSizeTransactedW(PWSTR lpFileName, uint32* lpFileSizeHigh, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFileTransactedA(PSTR lpFileName, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFileTransactedW(PWSTR lpFileName, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckNameLegalDOS8Dot3A(PSTR lpName, uint8* lpOemName, uint32 OemNameSize, BOOL* pbNameContainsSpaces, out BOOL pbNameLegal);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckNameLegalDOS8Dot3W(PWSTR lpName, uint8* lpOemName, uint32 OemNameSize, BOOL* pbNameContainsSpaces, out BOOL pbNameLegal);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileTransactedA(PSTR lpFileName, FINDEX_INFO_LEVELS fInfoLevelId, void* lpFindFileData, FINDEX_SEARCH_OPS fSearchOp, void* lpSearchFilter, uint32 dwAdditionalFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileHandle FindFirstFileTransactedW(PWSTR lpFileName, FINDEX_INFO_LEVELS fInfoLevelId, void* lpFindFileData, FINDEX_SEARCH_OPS fSearchOp, void* lpSearchFilter, uint32 dwAdditionalFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileA(PSTR lpExistingFileName, PSTR lpNewFileName, BOOL bFailIfExists);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileW(PWSTR lpExistingFileName, PWSTR lpNewFileName, BOOL bFailIfExists);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileExA(PSTR lpExistingFileName, PSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, int32* pbCancel, uint32 dwCopyFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileExW(PWSTR lpExistingFileName, PWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, int32* pbCancel, uint32 dwCopyFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileTransactedA(PSTR lpExistingFileName, PSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, int32* pbCancel, uint32 dwCopyFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyFileTransactedW(PWSTR lpExistingFileName, PWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, int32* pbCancel, uint32 dwCopyFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CopyFile2(PWSTR pwszExistingFileName, PWSTR pwszNewFileName, COPYFILE2_EXTENDED_PARAMETERS* pExtendedParameters);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileA(PSTR lpExistingFileName, PSTR lpNewFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileW(PWSTR lpExistingFileName, PWSTR lpNewFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileExA(PSTR lpExistingFileName, PSTR lpNewFileName, MOVE_FILE_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileExW(PWSTR lpExistingFileName, PWSTR lpNewFileName, MOVE_FILE_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileWithProgressA(PSTR lpExistingFileName, PSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, MOVE_FILE_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileWithProgressW(PWSTR lpExistingFileName, PWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, MOVE_FILE_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileTransactedA(PSTR lpExistingFileName, PSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, MOVE_FILE_FLAGS dwFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveFileTransactedW(PWSTR lpExistingFileName, PWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, MOVE_FILE_FLAGS dwFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReplaceFileA(PSTR lpReplacedFileName, PSTR lpReplacementFileName, PSTR lpBackupFileName, REPLACE_FILE_FLAGS dwReplaceFlags, void* lpExclude, void* lpReserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReplaceFileW(PWSTR lpReplacedFileName, PWSTR lpReplacementFileName, PWSTR lpBackupFileName, REPLACE_FILE_FLAGS dwReplaceFlags, void* lpExclude, void* lpReserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateHardLinkA(PSTR lpFileName, PSTR lpExistingFileName, out SECURITY_ATTRIBUTES lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateHardLinkW(PWSTR lpFileName, PWSTR lpExistingFileName, out SECURITY_ATTRIBUTES lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateHardLinkTransactedA(PSTR lpFileName, PSTR lpExistingFileName, out SECURITY_ATTRIBUTES lpSecurityAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateHardLinkTransactedW(PWSTR lpFileName, PWSTR lpExistingFileName, out SECURITY_ATTRIBUTES lpSecurityAttributes, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindStreamHandle FindFirstStreamTransactedW(PWSTR lpFileName, STREAM_INFO_LEVELS InfoLevel, void* lpFindStreamData, uint32 dwFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindFileNameHandle FindFirstFileNameTransactedW(PWSTR lpFileName, uint32 dwFlags, out uint32 StringLength, char16* LinkName, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetVolumeLabelA(PSTR lpRootPathName, PSTR lpVolumeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetVolumeLabelW(PWSTR lpRootPathName, PWSTR lpVolumeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFileBandwidthReservation(HANDLE hFile, uint32 nPeriodMilliseconds, uint32 nBytesPerPeriod, BOOL bDiscardable, out uint32 lpTransferSize, out uint32 lpNumOutstandingRequests);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileBandwidthReservation(HANDLE hFile, out uint32 lpPeriodMilliseconds, out uint32 lpBytesPerPeriod, out int32 pDiscardable, out uint32 lpTransferSize, out uint32 lpNumOutstandingRequests);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadDirectoryChangesW(HANDLE hDirectory, void* lpBuffer, uint32 nBufferLength, BOOL bWatchSubtree, FILE_NOTIFY_CHANGE dwNotifyFilter, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadDirectoryChangesExW(HANDLE hDirectory, void* lpBuffer, uint32 nBufferLength, BOOL bWatchSubtree, FILE_NOTIFY_CHANGE dwNotifyFilter, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, READ_DIRECTORY_NOTIFY_INFORMATION_CLASS ReadDirectoryNotifyInformationClass);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindVolumeHandle FindFirstVolumeA(uint8* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextVolumeA(FindVolumeHandle hFindVolume, uint8* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindVolumeMointPointHandle FindFirstVolumeMountPointA(PSTR lpszRootPathName, uint8* lpszVolumeMountPoint, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FindVolumeMointPointHandle FindFirstVolumeMountPointW(PWSTR lpszRootPathName, char16* lpszVolumeMountPoint, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextVolumeMountPointA(FindVolumeMointPointHandle hFindVolumeMountPoint, uint8* lpszVolumeMountPoint, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextVolumeMountPointW(FindVolumeMointPointHandle hFindVolumeMountPoint, char16* lpszVolumeMountPoint, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindVolumeMountPointClose(FindVolumeMointPointHandle hFindVolumeMountPoint);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetVolumeMountPointA(PSTR lpszVolumeMountPoint, PSTR lpszVolumeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetVolumeMountPointW(PWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteVolumeMountPointA(PSTR lpszVolumeMountPoint);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumeNameForVolumeMountPointA(PSTR lpszVolumeMountPoint, uint8* lpszVolumeName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumePathNameA(PSTR lpszFileName, uint8* lpszVolumePathName, uint32 cchBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetVolumePathNamesForVolumeNameA(PSTR lpszVolumeName, uint8* lpszVolumePathNames, uint32 cchBufferLength, out uint32 lpcchReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileInformationByHandleEx(HANDLE hFile, FILE_INFO_BY_HANDLE_CLASS FileInformationClass, void* lpFileInformation, uint32 dwBufferSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenFileById(HANDLE hVolumeHint, ref FILE_ID_DESCRIPTOR lpFileId, FILE_ACCESS_FLAGS dwDesiredAccess, FILE_SHARE_MODE dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, FILE_FLAGS_AND_ATTRIBUTES dwFlagsAndAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN CreateSymbolicLinkA(PSTR lpSymlinkFileName, PSTR lpTargetFileName, SYMBOLIC_LINK_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN CreateSymbolicLinkW(PWSTR lpSymlinkFileName, PWSTR lpTargetFileName, SYMBOLIC_LINK_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN CreateSymbolicLinkTransactedA(PSTR lpSymlinkFileName, PSTR lpTargetFileName, SYMBOLIC_LINK_FLAGS dwFlags, HANDLE hTransaction);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN CreateSymbolicLinkTransactedW(PWSTR lpSymlinkFileName, PWSTR lpTargetFileName, SYMBOLIC_LINK_FLAGS dwFlags, HANDLE hTransaction);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NtCreateFile(out HANDLE FileHandle, uint32 DesiredAccess, out OBJECT_ATTRIBUTES ObjectAttributes, out IO_STATUS_BLOCK IoStatusBlock, out LARGE_INTEGER AllocationSize, uint32 FileAttributes, FILE_SHARE_MODE ShareAccess, NT_CREATE_FILE_DISPOSITION CreateDisposition, uint32 CreateOptions, void* EaBuffer, uint32 EaLength);
	}
}
