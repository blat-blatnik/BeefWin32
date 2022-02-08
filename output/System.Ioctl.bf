using System;

// namespace System.Ioctl
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 IOCTL_STORAGE_BASE = 45;
		public const uint32 IOCTL_SCMBUS_BASE = 89;
		public const uint32 IOCTL_DISK_BASE = 7;
		public const uint32 IOCTL_CHANGER_BASE = 48;
		public const uint32 FILE_SPECIAL_ACCESS = 0;
		public const uint32 FILE_DEVICE_UNKNOWN = 34;
		public const Guid GUID_DEVINTERFACE_DISK = .(0x53f56307, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_CDROM = .(0x53f56308, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_PARTITION = .(0x53f5630a, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_TAPE = .(0x53f5630b, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_WRITEONCEDISK = .(0x53f5630c, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_VOLUME = .(0x53f5630d, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_MEDIUMCHANGER = .(0x53f56310, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_FLOPPY = .(0x53f56311, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_CDCHANGER = .(0x53f56312, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_STORAGEPORT = .(0x2accfe60, 0xc130, 0x11d2, 0xb0, 0x82, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
		public const Guid GUID_DEVINTERFACE_VMLUN = .(0x6f416619, 0x9f29, 0x42a5, 0xb2, 0x0b, 0x37, 0xe2, 0x19, 0xca, 0x02, 0xb0);
		public const Guid GUID_DEVINTERFACE_SES = .(0x1790c9ec, 0x47d5, 0x4df3, 0xb5, 0xaf, 0x9a, 0xdf, 0x3c, 0xf2, 0x3e, 0x48);
		public const Guid GUID_DEVINTERFACE_ZNSDISK = .(0xb87941c5, 0xffdb, 0x43c7, 0xb6, 0xb1, 0x20, 0xb6, 0x32, 0xf0, 0xb1, 0x09);
		public const Guid GUID_DEVINTERFACE_SERVICE_VOLUME = .(0x6ead3d82, 0x25ec, 0x46bc, 0xb7, 0xfd, 0xc1, 0xf0, 0xdf, 0x8f, 0x50, 0x37);
		public const Guid GUID_DEVINTERFACE_HIDDEN_VOLUME = .(0x7f108a28, 0x9833, 0x4b3b, 0xb7, 0x80, 0x2c, 0x6b, 0x5f, 0xa5, 0xc0, 0x62);
		public const Guid GUID_DEVINTERFACE_UNIFIED_ACCESS_RPMB = .(0x27447c21, 0xbcc3, 0x4d07, 0xa0, 0x5b, 0xa3, 0x39, 0x5b, 0xb4, 0xee, 0xe7);
		public const Guid GUID_DEVICEDUMP_STORAGE_DEVICE = .(0xd8e2592f, 0x1aab, 0x4d56, 0xa7, 0x46, 0x1f, 0x75, 0x85, 0xdf, 0x40, 0xf4);
		public const Guid GUID_DEVICEDUMP_DRIVER_STORAGE_PORT = .(0xda82441d, 0x7142, 0x4bc1, 0xb8, 0x44, 0x08, 0x07, 0xc5, 0xa4, 0xb6, 0x7f);
		public const PROPERTYKEY DEVPKEY_Storage_Portable = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 2);
		public const PROPERTYKEY DEVPKEY_Storage_Removable_Media = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 3);
		public const PROPERTYKEY DEVPKEY_Storage_System_Critical = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 4);
		public const PROPERTYKEY DEVPKEY_Storage_Disk_Number = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 5);
		public const PROPERTYKEY DEVPKEY_Storage_Partition_Number = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 6);
		public const PROPERTYKEY DEVPKEY_Storage_Mbr_Type = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 7);
		public const PROPERTYKEY DEVPKEY_Storage_Gpt_Type = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 8);
		public const PROPERTYKEY DEVPKEY_Storage_Gpt_Name = .(.(0x4d1ebee8, 0x0803, 0x4774, 0x98, 0x42, 0xb7, 0x7d, 0xb5, 0x02, 0x65, 0xe9), 9);
		public const uint32 IOCTL_STORAGE_CHECK_VERIFY = 2967552;
		public const uint32 IOCTL_STORAGE_CHECK_VERIFY2 = 2951168;
		public const uint32 IOCTL_STORAGE_MEDIA_REMOVAL = 2967556;
		public const uint32 IOCTL_STORAGE_EJECT_MEDIA = 2967560;
		public const uint32 IOCTL_STORAGE_LOAD_MEDIA = 2967564;
		public const uint32 IOCTL_STORAGE_LOAD_MEDIA2 = 2951180;
		public const uint32 IOCTL_STORAGE_RESERVE = 2967568;
		public const uint32 IOCTL_STORAGE_RELEASE = 2967572;
		public const uint32 IOCTL_STORAGE_FIND_NEW_DEVICES = 2967576;
		public const uint32 IOCTL_STORAGE_MANAGE_BYPASS_IO = 2951360;
		public const uint32 IOCTL_STORAGE_EJECTION_CONTROL = 2951488;
		public const uint32 IOCTL_STORAGE_MCN_CONTROL = 2951492;
		public const uint32 IOCTL_STORAGE_GET_MEDIA_TYPES = 2952192;
		public const uint32 IOCTL_STORAGE_GET_MEDIA_TYPES_EX = 2952196;
		public const uint32 IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER = 2952208;
		public const uint32 IOCTL_STORAGE_GET_HOTPLUG_INFO = 2952212;
		public const uint32 IOCTL_STORAGE_SET_HOTPLUG_INFO = 3001368;
		public const uint32 IOCTL_STORAGE_RESET_BUS = 2969600;
		public const uint32 IOCTL_STORAGE_RESET_DEVICE = 2969604;
		public const uint32 IOCTL_STORAGE_BREAK_RESERVATION = 2969620;
		public const uint32 IOCTL_STORAGE_PERSISTENT_RESERVE_IN = 2969624;
		public const uint32 IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = 3002396;
		public const uint32 IOCTL_STORAGE_GET_DEVICE_NUMBER = 2953344;
		public const uint32 IOCTL_STORAGE_GET_DEVICE_NUMBER_EX = 2953348;
		public const uint32 IOCTL_STORAGE_PREDICT_FAILURE = 2953472;
		public const uint32 IOCTL_STORAGE_FAILURE_PREDICTION_CONFIG = 2953476;
		public const uint32 IOCTL_STORAGE_GET_COUNTERS = 2953480;
		public const uint32 IOCTL_STORAGE_READ_CAPACITY = 2969920;
		public const uint32 IOCTL_STORAGE_GET_DEVICE_TELEMETRY = 3002816;
		public const uint32 IOCTL_STORAGE_DEVICE_TELEMETRY_NOTIFY = 3002820;
		public const uint32 IOCTL_STORAGE_DEVICE_TELEMETRY_QUERY_CAPS = 3002824;
		public const uint32 IOCTL_STORAGE_GET_DEVICE_TELEMETRY_RAW = 3002828;
		public const uint32 IOCTL_STORAGE_SET_TEMPERATURE_THRESHOLD = 3002880;
		public const uint32 IOCTL_STORAGE_PROTOCOL_COMMAND = 3003328;
		public const uint32 IOCTL_STORAGE_SET_PROPERTY = 2987004;
		public const uint32 IOCTL_STORAGE_QUERY_PROPERTY = 2954240;
		public const uint32 IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES = 2987012;
		public const uint32 IOCTL_STORAGE_GET_LB_PROVISIONING_MAP_RESOURCES = 2970632;
		public const uint32 IOCTL_STORAGE_REINITIALIZE_MEDIA = 2987584;
		public const uint32 IOCTL_STORAGE_GET_BC_PROPERTIES = 2971648;
		public const uint32 IOCTL_STORAGE_ALLOCATE_BC_STREAM = 3004420;
		public const uint32 IOCTL_STORAGE_FREE_BC_STREAM = 3004424;
		public const uint32 IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT = 2955392;
		public const uint32 IOCTL_STORAGE_START_DATA_INTEGRITY_CHECK = 3004548;
		public const uint32 IOCTL_STORAGE_STOP_DATA_INTEGRITY_CHECK = 3004552;
		public const uint32 OBSOLETE_IOCTL_STORAGE_RESET_BUS = 3002368;
		public const uint32 OBSOLETE_IOCTL_STORAGE_RESET_DEVICE = 3002372;
		public const uint32 IOCTL_STORAGE_FIRMWARE_GET_INFO = 2956288;
		public const uint32 IOCTL_STORAGE_FIRMWARE_DOWNLOAD = 3005444;
		public const uint32 IOCTL_STORAGE_FIRMWARE_ACTIVATE = 3005448;
		public const uint32 IOCTL_STORAGE_ENABLE_IDLE_POWER = 2956416;
		public const uint32 IOCTL_STORAGE_GET_IDLE_POWERUP_REASON = 2956420;
		public const uint32 IOCTL_STORAGE_POWER_ACTIVE = 2956424;
		public const uint32 IOCTL_STORAGE_POWER_IDLE = 2956428;
		public const uint32 IOCTL_STORAGE_EVENT_NOTIFICATION = 2956432;
		public const uint32 IOCTL_STORAGE_DEVICE_POWER_CAP = 2956436;
		public const uint32 IOCTL_STORAGE_RPMB_COMMAND = 2956440;
		public const uint32 IOCTL_STORAGE_ATTRIBUTE_MANAGEMENT = 3005596;
		public const uint32 IOCTL_STORAGE_DIAGNOSTIC = 2956448;
		public const uint32 IOCTL_STORAGE_GET_PHYSICAL_ELEMENT_STATUS = 2956452;
		public const uint32 IOCTL_STORAGE_REMOVE_ELEMENT_AND_TRUNCATE = 2956480;
		public const uint32 IOCTL_STORAGE_GET_DEVICE_INTERNAL_LOG = 2956484;
		public const uint32 STORAGE_DEVICE_FLAGS_RANDOM_DEVICEGUID_REASON_CONFLICT = 1;
		public const uint32 STORAGE_DEVICE_FLAGS_RANDOM_DEVICEGUID_REASON_NOHWID = 2;
		public const uint32 STORAGE_DEVICE_FLAGS_PAGE_83_DEVICEGUID = 4;
		public const uint32 RECOVERED_WRITES_VALID = 1;
		public const uint32 UNRECOVERED_WRITES_VALID = 2;
		public const uint32 RECOVERED_READS_VALID = 4;
		public const uint32 UNRECOVERED_READS_VALID = 8;
		public const uint32 WRITE_COMPRESSION_INFO_VALID = 16;
		public const uint32 READ_COMPRESSION_INFO_VALID = 32;
		public const int32 TAPE_RETURN_STATISTICS = 0;
		public const int32 TAPE_RETURN_ENV_INFO = 1;
		public const int32 TAPE_RESET_STATISTICS = 2;
		public const uint32 MEDIA_ERASEABLE = 1;
		public const uint32 MEDIA_WRITE_ONCE = 2;
		public const uint32 MEDIA_READ_ONLY = 4;
		public const uint32 MEDIA_READ_WRITE = 8;
		public const uint32 MEDIA_WRITE_PROTECTED = 256;
		public const uint32 MEDIA_CURRENTLY_MOUNTED = 2147483648;
		public const uint32 STORAGE_FAILURE_PREDICTION_CONFIG_V1 = 1;
		public const uint32 SRB_TYPE_SCSI_REQUEST_BLOCK = 0;
		public const uint32 SRB_TYPE_STORAGE_REQUEST_BLOCK = 1;
		public const uint32 STORAGE_ADDRESS_TYPE_BTL8 = 0;
		public const uint32 STORAGE_RPMB_DESCRIPTOR_VERSION_1 = 1;
		public const uint32 STORAGE_RPMB_MINIMUM_RELIABLE_WRITE_SIZE = 512;
		public const uint32 STORAGE_CRYPTO_CAPABILITY_VERSION_1 = 1;
		public const uint32 STORAGE_CRYPTO_DESCRIPTOR_VERSION_1 = 1;
		public const uint32 STORAGE_TIER_NAME_LENGTH = 256;
		public const uint32 STORAGE_TIER_DESCRIPTION_LENGTH = 512;
		public const uint32 STORAGE_TIER_FLAG_NO_SEEK_PENALTY = 131072;
		public const uint32 STORAGE_TIER_FLAG_WRITE_BACK_CACHE = 2097152;
		public const uint32 STORAGE_TIER_FLAG_READ_CACHE = 4194304;
		public const uint32 STORAGE_TIER_FLAG_PARITY = 8388608;
		public const uint32 STORAGE_TIER_FLAG_SMR = 16777216;
		public const uint32 STORAGE_TEMPERATURE_VALUE_NOT_REPORTED = 32768;
		public const uint32 STORAGE_TEMPERATURE_THRESHOLD_FLAG_ADAPTER_REQUEST = 1;
		public const uint32 STORAGE_COMPONENT_ROLE_CACHE = 1;
		public const uint32 STORAGE_COMPONENT_ROLE_TIERING = 2;
		public const uint32 STORAGE_COMPONENT_ROLE_DATA = 4;
		public const uint32 STORAGE_ATTRIBUTE_BYTE_ADDRESSABLE_IO = 1;
		public const uint32 STORAGE_ATTRIBUTE_BLOCK_IO = 2;
		public const uint32 STORAGE_ATTRIBUTE_DYNAMIC_PERSISTENCE = 4;
		public const uint32 STORAGE_ATTRIBUTE_VOLATILE = 8;
		public const uint32 STORAGE_ATTRIBUTE_ASYNC_EVENT_NOTIFICATION = 16;
		public const uint32 STORAGE_ATTRIBUTE_PERF_SIZE_INDEPENDENT = 32;
		public const uint32 STORAGE_DEVICE_MAX_OPERATIONAL_STATUS = 16;
		public const uint32 STORAGE_ADAPTER_SERIAL_NUMBER_V1_MAX_LENGTH = 128;
		public const uint32 DeviceDsmActionFlag_NonDestructive = 2147483648;
		public const uint32 DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE = 1;
		public const uint32 DEVICE_DSM_FLAG_TRIM_NOT_FS_ALLOCATED = 2147483648;
		public const uint32 DEVICE_DSM_FLAG_TRIM_BYPASS_RZAT = 1073741824;
		public const uint32 DEVICE_DSM_NOTIFY_FLAG_BEGIN = 1;
		public const uint32 DEVICE_DSM_NOTIFY_FLAG_END = 2;
		public const uint32 STORAGE_OFFLOAD_MAX_TOKEN_LENGTH = 512;
		public const uint32 STORAGE_OFFLOAD_TOKEN_ID_LENGTH = 504;
		public const uint32 STORAGE_OFFLOAD_TOKEN_TYPE_ZERO_DATA = 4294901761;
		public const uint32 STORAGE_OFFLOAD_READ_RANGE_TRUNCATED = 1;
		public const uint32 STORAGE_OFFLOAD_WRITE_RANGE_TRUNCATED = 1;
		public const uint32 STORAGE_OFFLOAD_TOKEN_INVALID = 2;
		public const uint32 DEVICE_DSM_FLAG_ALLOCATION_CONSOLIDATEABLE_ONLY = 1073741824;
		public const uint32 DEVICE_DSM_PARAMETERS_V1 = 1;
		public const uint32 DEVICE_DATA_SET_LBP_STATE_PARAMETERS_VERSION_V1 = 1;
		public const uint32 DEVICE_DSM_FLAG_REPAIR_INPUT_TOPOLOGY_ID_PRESENT = 1073741824;
		public const uint32 DEVICE_DSM_FLAG_REPAIR_OUTPUT_PARITY_EXTENT = 536870912;
		public const uint32 DEVICE_DSM_FLAG_SCRUB_SKIP_IN_SYNC = 268435456;
		public const uint32 DEVICE_DSM_FLAG_SCRUB_OUTPUT_PARITY_EXTENT = 536870912;
		public const uint32 DEVICE_DSM_FLAG_PHYSICAL_ADDRESSES_OMIT_TOTAL_RANGES = 268435456;
		public const uint32 DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT_V1 = 1;
		public const uint32 DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT_VERSION_V1 = 1;
		public const uint32 DEVICE_STORAGE_NO_ERRORS = 1;
		public const uint32 DEVICE_DSM_RANGE_ERROR_OUTPUT_V1 = 1;
		public const uint32 DEVICE_DSM_RANGE_ERROR_INFO_VERSION_V1 = 1;
		public const uint32 IOCTL_STORAGE_BC_VERSION = 1;
		public const uint32 STORAGE_PRIORITY_HINT_SUPPORTED = 1;
		public const uint32 STORAGE_DIAGNOSTIC_FLAG_ADAPTER_REQUEST = 1;
		public const uint32 ERROR_HISTORY_DIRECTORY_ENTRY_DEFAULT_COUNT = 8;
		public const uint32 DEVICEDUMP_STRUCTURE_VERSION_V1 = 1;
		public const uint32 DEVICEDUMP_MAX_IDSTRING = 32;
		public const uint32 MAX_FW_BUCKET_ID_LENGTH = 132;
		public const uint32 DDUMP_FLAG_DATA_READ_FROM_DEVICE = 1;
		public const uint32 FW_ISSUEID_NO_ISSUE = 0;
		public const uint32 FW_ISSUEID_UNKNOWN = 4294967295;
		public const uint32 TC_PUBLIC_DEVICEDUMP_CONTENT_SMART = 1;
		public const uint32 TC_PUBLIC_DEVICEDUMP_CONTENT_GPLOG = 2;
		public const uint32 TC_PUBLIC_DEVICEDUMP_CONTENT_GPLOG_MAX = 16;
		public const uint32 TC_DEVICEDUMP_SUBSECTION_DESC_LENGTH = 16;
		public const uint32 CDB_SIZE = 16;
		public const uint32 TELEMETRY_COMMAND_SIZE = 16;
		public const uint32 DEVICEDUMP_CAP_PRIVATE_SECTION = 1;
		public const uint32 DEVICEDUMP_CAP_RESTRICTED_SECTION = 2;
		public const uint32 STORAGE_IDLE_POWERUP_REASON_VERSION_V1 = 1;
		public const uint32 STORAGE_DEVICE_POWER_CAP_VERSION_V1 = 1;
		public const uint32 STORAGE_EVENT_NOTIFICATION_VERSION_V1 = 1;
		public const uint64 STORAGE_EVENT_MEDIA_STATUS = 1uL;
		public const uint64 STORAGE_EVENT_DEVICE_STATUS = 2uL;
		public const uint64 STORAGE_EVENT_DEVICE_OPERATION = 4uL;
		public const uint32 READ_COPY_NUMBER_KEY = 1380142592;
		public const uint32 READ_COPY_NUMBER_BYPASS_CACHE_FLAG = 256;
		public const uint32 STORAGE_HW_FIRMWARE_REQUEST_FLAG_CONTROLLER = 1;
		public const uint32 STORAGE_HW_FIRMWARE_REQUEST_FLAG_LAST_SEGMENT = 2;
		public const uint32 STORAGE_HW_FIRMWARE_REQUEST_FLAG_FIRST_SEGMENT = 4;
		public const uint32 STORAGE_HW_FIRMWARE_REQUEST_FLAG_SWITCH_TO_EXISTING_FIRMWARE = 2147483648;
		public const uint32 STORAGE_HW_FIRMWARE_INVALID_SLOT = 255;
		public const uint32 STORAGE_HW_FIRMWARE_REVISION_LENGTH = 16;
		public const uint32 STORAGE_PROTOCOL_STRUCTURE_VERSION = 1;
		public const uint32 STORAGE_PROTOCOL_COMMAND_FLAG_ADAPTER_REQUEST = 2147483648;
		public const uint32 STORAGE_PROTOCOL_STATUS_PENDING = 0;
		public const uint32 STORAGE_PROTOCOL_STATUS_SUCCESS = 1;
		public const uint32 STORAGE_PROTOCOL_STATUS_ERROR = 2;
		public const uint32 STORAGE_PROTOCOL_STATUS_INVALID_REQUEST = 3;
		public const uint32 STORAGE_PROTOCOL_STATUS_NO_DEVICE = 4;
		public const uint32 STORAGE_PROTOCOL_STATUS_BUSY = 5;
		public const uint32 STORAGE_PROTOCOL_STATUS_DATA_OVERRUN = 6;
		public const uint32 STORAGE_PROTOCOL_STATUS_INSUFFICIENT_RESOURCES = 7;
		public const uint32 STORAGE_PROTOCOL_STATUS_THROTTLED_REQUEST = 8;
		public const uint32 STORAGE_PROTOCOL_STATUS_NOT_SUPPORTED = 255;
		public const uint32 STORAGE_PROTOCOL_COMMAND_LENGTH_NVME = 64;
		public const uint32 STORAGE_PROTOCOL_SPECIFIC_NVME_ADMIN_COMMAND = 1;
		public const uint32 STORAGE_PROTOCOL_SPECIFIC_NVME_NVM_COMMAND = 2;
		public const uint32 STORATTRIBUTE_NONE = 0;
		public const uint32 STORATTRIBUTE_MANAGEMENT_STATE = 1;
		public const uint32 STORAGE_SUPPORTED_FEATURES_BYPASS_IO = 1;
		public const uint32 STORAGE_SUPPORTED_FEATURES_MASK = 1;
		public const Guid GUID_DEVINTERFACE_SCM_PHYSICAL_DEVICE = .(0x4283609d, 0x4dc2, 0x43be, 0xbb, 0xb4, 0x4f, 0x15, 0xdf, 0xce, 0x2c, 0x61);
		public const Guid GUID_SCM_PD_HEALTH_NOTIFICATION = .(0x9da2d386, 0x72f5, 0x4ee3, 0x81, 0x55, 0xec, 0xa0, 0x67, 0x8e, 0x3b, 0x06);
		public const Guid GUID_SCM_PD_PASSTHROUGH_INVDIMM = .(0x4309ac30, 0x0d11, 0x11e4, 0x91, 0x91, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66);
		public const Guid GUID_DEVINTERFACE_COMPORT = .(0x86e0d1e0, 0x8089, 0x11d0, 0x9c, 0xe4, 0x08, 0x00, 0x3e, 0x30, 0x1f, 0x73);
		public const Guid GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR = .(0x4d36e978, 0xe325, 0x11ce, 0xbf, 0xc1, 0x08, 0x00, 0x2b, 0xe1, 0x03, 0x18);
		public const uint32 FILE_DEVICE_BEEP = 1;
		public const uint32 FILE_DEVICE_CD_ROM_FILE_SYSTEM = 3;
		public const uint32 FILE_DEVICE_CONTROLLER = 4;
		public const uint32 FILE_DEVICE_DATALINK = 5;
		public const uint32 FILE_DEVICE_DFS = 6;
		public const uint32 FILE_DEVICE_DISK_FILE_SYSTEM = 8;
		public const uint32 FILE_DEVICE_FILE_SYSTEM = 9;
		public const uint32 FILE_DEVICE_INPORT_PORT = 10;
		public const uint32 FILE_DEVICE_KEYBOARD = 11;
		public const uint32 FILE_DEVICE_MAILSLOT = 12;
		public const uint32 FILE_DEVICE_MIDI_IN = 13;
		public const uint32 FILE_DEVICE_MIDI_OUT = 14;
		public const uint32 FILE_DEVICE_MOUSE = 15;
		public const uint32 FILE_DEVICE_MULTI_UNC_PROVIDER = 16;
		public const uint32 FILE_DEVICE_NAMED_PIPE = 17;
		public const uint32 FILE_DEVICE_NETWORK = 18;
		public const uint32 FILE_DEVICE_NETWORK_BROWSER = 19;
		public const uint32 FILE_DEVICE_NETWORK_FILE_SYSTEM = 20;
		public const uint32 FILE_DEVICE_NULL = 21;
		public const uint32 FILE_DEVICE_PARALLEL_PORT = 22;
		public const uint32 FILE_DEVICE_PHYSICAL_NETCARD = 23;
		public const uint32 FILE_DEVICE_PRINTER = 24;
		public const uint32 FILE_DEVICE_SCANNER = 25;
		public const uint32 FILE_DEVICE_SERIAL_MOUSE_PORT = 26;
		public const uint32 FILE_DEVICE_SERIAL_PORT = 27;
		public const uint32 FILE_DEVICE_SCREEN = 28;
		public const uint32 FILE_DEVICE_SOUND = 29;
		public const uint32 FILE_DEVICE_STREAMS = 30;
		public const uint32 FILE_DEVICE_TAPE_FILE_SYSTEM = 32;
		public const uint32 FILE_DEVICE_TRANSPORT = 33;
		public const uint32 FILE_DEVICE_VIDEO = 35;
		public const uint32 FILE_DEVICE_VIRTUAL_DISK = 36;
		public const uint32 FILE_DEVICE_WAVE_IN = 37;
		public const uint32 FILE_DEVICE_WAVE_OUT = 38;
		public const uint32 FILE_DEVICE_8042_PORT = 39;
		public const uint32 FILE_DEVICE_NETWORK_REDIRECTOR = 40;
		public const uint32 FILE_DEVICE_BATTERY = 41;
		public const uint32 FILE_DEVICE_BUS_EXTENDER = 42;
		public const uint32 FILE_DEVICE_MODEM = 43;
		public const uint32 FILE_DEVICE_VDM = 44;
		public const uint32 FILE_DEVICE_MASS_STORAGE = 45;
		public const uint32 FILE_DEVICE_SMB = 46;
		public const uint32 FILE_DEVICE_KS = 47;
		public const uint32 FILE_DEVICE_CHANGER = 48;
		public const uint32 FILE_DEVICE_ACPI = 50;
		public const uint32 FILE_DEVICE_FULLSCREEN_VIDEO = 52;
		public const uint32 FILE_DEVICE_DFS_FILE_SYSTEM = 53;
		public const uint32 FILE_DEVICE_DFS_VOLUME = 54;
		public const uint32 FILE_DEVICE_SERENUM = 55;
		public const uint32 FILE_DEVICE_TERMSRV = 56;
		public const uint32 FILE_DEVICE_KSEC = 57;
		public const uint32 FILE_DEVICE_FIPS = 58;
		public const uint32 FILE_DEVICE_INFINIBAND = 59;
		public const uint32 FILE_DEVICE_VMBUS = 62;
		public const uint32 FILE_DEVICE_CRYPT_PROVIDER = 63;
		public const uint32 FILE_DEVICE_WPD = 64;
		public const uint32 FILE_DEVICE_BLUETOOTH = 65;
		public const uint32 FILE_DEVICE_MT_COMPOSITE = 66;
		public const uint32 FILE_DEVICE_MT_TRANSPORT = 67;
		public const uint32 FILE_DEVICE_BIOMETRIC = 68;
		public const uint32 FILE_DEVICE_PMI = 69;
		public const uint32 FILE_DEVICE_EHSTOR = 70;
		public const uint32 FILE_DEVICE_DEVAPI = 71;
		public const uint32 FILE_DEVICE_GPIO = 72;
		public const uint32 FILE_DEVICE_USBEX = 73;
		public const uint32 FILE_DEVICE_CONSOLE = 80;
		public const uint32 FILE_DEVICE_NFP = 81;
		public const uint32 FILE_DEVICE_SYSENV = 82;
		public const uint32 FILE_DEVICE_VIRTUAL_BLOCK = 83;
		public const uint32 FILE_DEVICE_POINT_OF_SERVICE = 84;
		public const uint32 FILE_DEVICE_STORAGE_REPLICATION = 85;
		public const uint32 FILE_DEVICE_TRUST_ENV = 86;
		public const uint32 FILE_DEVICE_UCM = 87;
		public const uint32 FILE_DEVICE_UCMTCPCI = 88;
		public const uint32 FILE_DEVICE_PERSISTENT_MEMORY = 89;
		public const uint32 FILE_DEVICE_NVDIMM = 90;
		public const uint32 FILE_DEVICE_HOLOGRAPHIC = 91;
		public const uint32 FILE_DEVICE_SDFXHCI = 92;
		public const uint32 FILE_DEVICE_UCMUCSI = 93;
		public const uint32 FILE_DEVICE_PRM = 94;
		public const uint32 FILE_DEVICE_EVENT_COLLECTOR = 95;
		public const uint32 FILE_DEVICE_USB4 = 96;
		public const uint32 FILE_DEVICE_SOUNDWIRE = 97;
		public const uint32 METHOD_BUFFERED = 0;
		public const uint32 METHOD_IN_DIRECT = 1;
		public const uint32 METHOD_OUT_DIRECT = 2;
		public const uint32 METHOD_NEITHER = 3;
		public const uint32 METHOD_DIRECT_TO_HARDWARE = 1;
		public const uint32 METHOD_DIRECT_FROM_HARDWARE = 2;
		public const uint32 FILE_ANY_ACCESS = 0;
		public const uint32 FILE_READ_ACCESS = 1;
		public const uint32 FILE_WRITE_ACCESS = 2;
		public const uint32 STORAGE_DEVICE_NUMA_NODE_UNKNOWN = 4294967295;
		public const uint32 IOCTL_SCMBUS_DEVICE_FUNCTION_BASE = 0;
		public const uint32 IOCTL_SCM_LOGICAL_DEVICE_FUNCTION_BASE = 768;
		public const uint32 IOCTL_SCM_PHYSICAL_DEVICE_FUNCTION_BASE = 1536;
		public const uint32 IOCTL_SCM_BUS_GET_LOGICAL_DEVICES = 5832704;
		public const uint32 IOCTL_SCM_BUS_GET_PHYSICAL_DEVICES = 5832708;
		public const uint32 IOCTL_SCM_BUS_GET_REGIONS = 5832712;
		public const uint32 IOCTL_SCM_BUS_QUERY_PROPERTY = 5832716;
		public const uint32 IOCTL_SCM_BUS_SET_PROPERTY = 5865492;
		public const uint32 IOCTL_SCM_BUS_RUNTIME_FW_ACTIVATE = 5865488;
		public const uint32 IOCTL_SCM_LD_GET_INTERLEAVE_SET = 5835776;
		public const uint32 IOCTL_SCM_PD_QUERY_PROPERTY = 5838848;
		public const uint32 IOCTL_SCM_PD_FIRMWARE_DOWNLOAD = 5871620;
		public const uint32 IOCTL_SCM_PD_FIRMWARE_ACTIVATE = 5871624;
		public const uint32 IOCTL_SCM_PD_PASSTHROUGH = 5888012;
		public const uint32 IOCTL_SCM_PD_UPDATE_MANAGEMENT_STATUS = 5838864;
		public const uint32 IOCTL_SCM_PD_REINITIALIZE_MEDIA = 5871636;
		public const uint32 IOCTL_SCM_PD_SET_PROPERTY = 5871640;
		public const uint32 SCM_MAX_SYMLINK_LEN_IN_CHARS = 256;
		public const uint32 MAX_INTERFACE_CODES = 8;
		public const uint32 SCM_PD_FIRMWARE_REVISION_LENGTH_BYTES = 32;
		public const uint32 SCM_PD_PROPERTY_NAME_LENGTH_IN_CHARS = 128;
		public const uint32 SCM_PD_MAX_OPERATIONAL_STATUS = 16;
		public const uint32 SCM_PD_FIRMWARE_LAST_DOWNLOAD = 1;
		public const uint32 IOCTL_DISK_GET_DRIVE_GEOMETRY = 458752;
		public const uint32 IOCTL_DISK_GET_PARTITION_INFO = 475140;
		public const uint32 IOCTL_DISK_SET_PARTITION_INFO = 507912;
		public const uint32 IOCTL_DISK_GET_DRIVE_LAYOUT = 475148;
		public const uint32 IOCTL_DISK_SET_DRIVE_LAYOUT = 507920;
		public const uint32 IOCTL_DISK_VERIFY = 458772;
		public const uint32 IOCTL_DISK_FORMAT_TRACKS = 507928;
		public const uint32 IOCTL_DISK_REASSIGN_BLOCKS = 507932;
		public const uint32 IOCTL_DISK_PERFORMANCE = 458784;
		public const uint32 IOCTL_DISK_IS_WRITABLE = 458788;
		public const uint32 IOCTL_DISK_LOGGING = 458792;
		public const uint32 IOCTL_DISK_FORMAT_TRACKS_EX = 507948;
		public const uint32 IOCTL_DISK_HISTOGRAM_STRUCTURE = 458800;
		public const uint32 IOCTL_DISK_HISTOGRAM_DATA = 458804;
		public const uint32 IOCTL_DISK_HISTOGRAM_RESET = 458808;
		public const uint32 IOCTL_DISK_REQUEST_STRUCTURE = 458812;
		public const uint32 IOCTL_DISK_REQUEST_DATA = 458816;
		public const uint32 IOCTL_DISK_PERFORMANCE_OFF = 458848;
		public const uint32 IOCTL_DISK_CONTROLLER_NUMBER = 458820;
		public const uint32 SMART_GET_VERSION = 475264;
		public const uint32 SMART_SEND_DRIVE_COMMAND = 508036;
		public const uint32 SMART_RCV_DRIVE_DATA = 508040;
		public const uint32 SMART_RCV_DRIVE_DATA_EX = 458892;
		public const uint32 IOCTL_DISK_GET_PARTITION_INFO_EX = 458824;
		public const uint32 IOCTL_DISK_SET_PARTITION_INFO_EX = 507980;
		public const uint32 IOCTL_DISK_GET_DRIVE_LAYOUT_EX = 458832;
		public const uint32 IOCTL_DISK_SET_DRIVE_LAYOUT_EX = 507988;
		public const uint32 IOCTL_DISK_CREATE_DISK = 507992;
		public const uint32 IOCTL_DISK_GET_LENGTH_INFO = 475228;
		public const uint32 IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = 458912;
		public const uint32 IOCTL_DISK_REASSIGN_BLOCKS_EX = 508068;
		public const uint32 IOCTL_DISK_UPDATE_DRIVE_SIZE = 508104;
		public const uint32 IOCTL_DISK_GROW_PARTITION = 508112;
		public const uint32 IOCTL_DISK_GET_CACHE_INFORMATION = 475348;
		public const uint32 IOCTL_DISK_SET_CACHE_INFORMATION = 508120;
		public const uint32 IOCTL_DISK_GET_WRITE_CACHE_STATE = 475356;
		public const uint32 OBSOLETE_DISK_GET_WRITE_CACHE_STATE = 475356;
		public const uint32 IOCTL_DISK_DELETE_DRIVE_LAYOUT = 508160;
		public const uint32 IOCTL_DISK_UPDATE_PROPERTIES = 459072;
		public const uint32 IOCTL_DISK_FORMAT_DRIVE = 508876;
		public const uint32 IOCTL_DISK_SENSE_DEVICE = 459744;
		public const uint32 IOCTL_DISK_CHECK_VERIFY = 477184;
		public const uint32 IOCTL_DISK_MEDIA_REMOVAL = 477188;
		public const uint32 IOCTL_DISK_EJECT_MEDIA = 477192;
		public const uint32 IOCTL_DISK_LOAD_MEDIA = 477196;
		public const uint32 IOCTL_DISK_RESERVE = 477200;
		public const uint32 IOCTL_DISK_RELEASE = 477204;
		public const uint32 IOCTL_DISK_FIND_NEW_DEVICES = 477208;
		public const uint32 IOCTL_DISK_GET_MEDIA_TYPES = 461824;
		public const uint32 PARTITION_ENTRY_UNUSED = 0;
		public const uint32 PARTITION_FAT_12 = 1;
		public const uint32 PARTITION_XENIX_1 = 2;
		public const uint32 PARTITION_XENIX_2 = 3;
		public const uint32 PARTITION_FAT_16 = 4;
		public const uint32 PARTITION_EXTENDED = 5;
		public const uint32 PARTITION_HUGE = 6;
		public const uint32 PARTITION_IFS = 7;
		public const uint32 PARTITION_OS2BOOTMGR = 10;
		public const uint32 PARTITION_FAT32 = 11;
		public const uint32 PARTITION_FAT32_XINT13 = 12;
		public const uint32 PARTITION_XINT13 = 14;
		public const uint32 PARTITION_XINT13_EXTENDED = 15;
		public const uint32 PARTITION_MSFT_RECOVERY = 39;
		public const uint32 PARTITION_MAIN_OS = 40;
		public const uint32 PARTIITON_OS_DATA = 41;
		public const uint32 PARTITION_PRE_INSTALLED = 42;
		public const uint32 PARTITION_BSP = 43;
		public const uint32 PARTITION_DPP = 44;
		public const uint32 PARTITION_WINDOWS_SYSTEM = 45;
		public const uint32 PARTITION_PREP = 65;
		public const uint32 PARTITION_LDM = 66;
		public const uint32 PARTITION_DM = 84;
		public const uint32 PARTITION_EZDRIVE = 85;
		public const uint32 PARTITION_UNIX = 99;
		public const uint32 PARTITION_SPACES_DATA = 215;
		public const uint32 PARTITION_SPACES = 231;
		public const uint32 PARTITION_GPT = 238;
		public const uint32 PARTITION_SYSTEM = 239;
		public const uint32 VALID_NTFT = 192;
		public const uint32 PARTITION_NTFT = 128;
		public const uint64 GPT_ATTRIBUTE_NO_BLOCK_IO_PROTOCOL = 2uL;
		public const uint64 GPT_ATTRIBUTE_LEGACY_BIOS_BOOTABLE = 4uL;
		public const uint64 GPT_BASIC_DATA_ATTRIBUTE_OFFLINE = 576460752303423488uL;
		public const uint64 GPT_BASIC_DATA_ATTRIBUTE_DAX = 288230376151711744uL;
		public const uint64 GPT_BASIC_DATA_ATTRIBUTE_SERVICE = 144115188075855872uL;
		public const uint64 GPT_SPACES_ATTRIBUTE_NO_METADATA = 9223372036854775808uL;
		public const uint32 HIST_NO_OF_BUCKETS = 24;
		public const uint32 DISK_LOGGING_START = 0;
		public const uint32 DISK_LOGGING_STOP = 1;
		public const uint32 DISK_LOGGING_DUMP = 2;
		public const uint32 DISK_BINNING = 3;
		public const uint32 CAP_ATA_ID_CMD = 1;
		public const uint32 CAP_ATAPI_ID_CMD = 2;
		public const uint32 CAP_SMART_CMD = 4;
		public const uint32 ATAPI_ID_CMD = 161;
		public const uint32 ID_CMD = 236;
		public const uint32 SMART_CMD = 176;
		public const uint32 SMART_CYL_LOW = 79;
		public const uint32 SMART_CYL_HI = 194;
		public const uint32 SMART_NO_ERROR = 0;
		public const uint32 SMART_IDE_ERROR = 1;
		public const uint32 SMART_INVALID_FLAG = 2;
		public const uint32 SMART_INVALID_COMMAND = 3;
		public const uint32 SMART_INVALID_BUFFER = 4;
		public const uint32 SMART_INVALID_DRIVE = 5;
		public const uint32 SMART_INVALID_IOCTL = 6;
		public const uint32 SMART_ERROR_NO_MEM = 7;
		public const uint32 SMART_INVALID_REGISTER = 8;
		public const uint32 SMART_NOT_SUPPORTED = 9;
		public const uint32 SMART_NO_IDE_DEVICE = 10;
		public const uint32 SMART_OFFLINE_ROUTINE_OFFLINE = 0;
		public const uint32 SMART_SHORT_SELFTEST_OFFLINE = 1;
		public const uint32 SMART_EXTENDED_SELFTEST_OFFLINE = 2;
		public const uint32 SMART_ABORT_OFFLINE_SELFTEST = 127;
		public const uint32 SMART_SHORT_SELFTEST_CAPTIVE = 129;
		public const uint32 SMART_EXTENDED_SELFTEST_CAPTIVE = 130;
		public const uint32 READ_ATTRIBUTE_BUFFER_SIZE = 512;
		public const uint32 IDENTIFY_BUFFER_SIZE = 512;
		public const uint32 READ_THRESHOLD_BUFFER_SIZE = 512;
		public const uint32 SMART_LOG_SECTOR_SIZE = 512;
		public const uint32 READ_ATTRIBUTES = 208;
		public const uint32 READ_THRESHOLDS = 209;
		public const uint32 ENABLE_DISABLE_AUTOSAVE = 210;
		public const uint32 SAVE_ATTRIBUTE_VALUES = 211;
		public const uint32 EXECUTE_OFFLINE_DIAGS = 212;
		public const uint32 SMART_READ_LOG = 213;
		public const uint32 SMART_WRITE_LOG = 214;
		public const uint32 ENABLE_SMART = 216;
		public const uint32 DISABLE_SMART = 217;
		public const uint32 RETURN_SMART_STATUS = 218;
		public const uint32 ENABLE_DISABLE_AUTO_OFFLINE = 219;
		public const uint32 IOCTL_DISK_GET_DISK_ATTRIBUTES = 458992;
		public const uint32 IOCTL_DISK_SET_DISK_ATTRIBUTES = 508148;
		public const uint64 DISK_ATTRIBUTE_OFFLINE = 1uL;
		public const uint64 DISK_ATTRIBUTE_READ_ONLY = 2uL;
		public const uint32 IOCTL_DISK_RESET_SNAPSHOT_INFO = 508432;
		public const uint32 IOCTL_CHANGER_GET_PARAMETERS = 3162112;
		public const uint32 IOCTL_CHANGER_GET_STATUS = 3162116;
		public const uint32 IOCTL_CHANGER_GET_PRODUCT_DATA = 3162120;
		public const uint32 IOCTL_CHANGER_SET_ACCESS = 3194896;
		public const uint32 IOCTL_CHANGER_GET_ELEMENT_STATUS = 3194900;
		public const uint32 IOCTL_CHANGER_INITIALIZE_ELEMENT_STATUS = 3162136;
		public const uint32 IOCTL_CHANGER_SET_POSITION = 3162140;
		public const uint32 IOCTL_CHANGER_EXCHANGE_MEDIUM = 3162144;
		public const uint32 IOCTL_CHANGER_MOVE_MEDIUM = 3162148;
		public const uint32 IOCTL_CHANGER_REINITIALIZE_TRANSPORT = 3162152;
		public const uint32 IOCTL_CHANGER_QUERY_VOLUME_TAGS = 3194924;
		public const uint32 MAX_VOLUME_ID_SIZE = 36;
		public const uint32 MAX_VOLUME_TEMPLATE_SIZE = 40;
		public const uint32 VENDOR_ID_LENGTH = 8;
		public const uint32 PRODUCT_ID_LENGTH = 16;
		public const uint32 REVISION_LENGTH = 4;
		public const uint32 SERIAL_NUMBER_LENGTH = 32;
		public const uint32 CHANGER_RESERVED_BIT = 2147483648;
		public const uint32 CHANGER_TO_TRANSPORT = 1;
		public const uint32 CHANGER_TO_SLOT = 2;
		public const uint32 CHANGER_TO_IEPORT = 4;
		public const uint32 CHANGER_TO_DRIVE = 8;
		public const uint32 LOCK_UNLOCK_IEPORT = 1;
		public const uint32 LOCK_UNLOCK_DOOR = 2;
		public const uint32 LOCK_UNLOCK_KEYPAD = 4;
		public const uint32 LOCK_ELEMENT = 0;
		public const uint32 UNLOCK_ELEMENT = 1;
		public const uint32 EXTEND_IEPORT = 2;
		public const uint32 RETRACT_IEPORT = 3;
		public const uint32 ERROR_LABEL_UNREADABLE = 1;
		public const uint32 ERROR_LABEL_QUESTIONABLE = 2;
		public const uint32 ERROR_SLOT_NOT_PRESENT = 4;
		public const uint32 ERROR_DRIVE_NOT_INSTALLED = 8;
		public const uint32 ERROR_TRAY_MALFUNCTION = 16;
		public const uint32 ERROR_INIT_STATUS_NEEDED = 17;
		public const uint32 ERROR_UNHANDLED_ERROR = 4294967295;
		public const uint32 SEARCH_ALL = 0;
		public const uint32 SEARCH_PRIMARY = 1;
		public const uint32 SEARCH_ALTERNATE = 2;
		public const uint32 SEARCH_ALL_NO_SEQ = 4;
		public const uint32 SEARCH_PRI_NO_SEQ = 5;
		public const uint32 SEARCH_ALT_NO_SEQ = 6;
		public const uint32 ASSERT_PRIMARY = 8;
		public const uint32 ASSERT_ALTERNATE = 9;
		public const uint32 REPLACE_PRIMARY = 10;
		public const uint32 REPLACE_ALTERNATE = 11;
		public const uint32 UNDEFINE_PRIMARY = 12;
		public const uint32 UNDEFINE_ALTERNATE = 13;
		public const uint32 IOCTL_SERIAL_LSRMST_INSERT = 1769596;
		public const uint32 IOCTL_SERENUM_EXPOSE_HARDWARE = 3604992;
		public const uint32 IOCTL_SERENUM_REMOVE_HARDWARE = 3604996;
		public const uint32 IOCTL_SERENUM_PORT_DESC = 3605000;
		public const uint32 IOCTL_SERENUM_GET_PORT_NAME = 3605004;
		public const uint32 FSCTL_REQUEST_OPLOCK_LEVEL_1 = 589824;
		public const uint32 FSCTL_REQUEST_OPLOCK_LEVEL_2 = 589828;
		public const uint32 FSCTL_REQUEST_BATCH_OPLOCK = 589832;
		public const uint32 FSCTL_OPLOCK_BREAK_ACKNOWLEDGE = 589836;
		public const uint32 FSCTL_OPBATCH_ACK_CLOSE_PENDING = 589840;
		public const uint32 FSCTL_OPLOCK_BREAK_NOTIFY = 589844;
		public const uint32 FSCTL_LOCK_VOLUME = 589848;
		public const uint32 FSCTL_UNLOCK_VOLUME = 589852;
		public const uint32 FSCTL_DISMOUNT_VOLUME = 589856;
		public const uint32 FSCTL_IS_VOLUME_MOUNTED = 589864;
		public const uint32 FSCTL_IS_PATHNAME_VALID = 589868;
		public const uint32 FSCTL_MARK_VOLUME_DIRTY = 589872;
		public const uint32 FSCTL_QUERY_RETRIEVAL_POINTERS = 589883;
		public const uint32 FSCTL_GET_COMPRESSION = 589884;
		public const uint32 FSCTL_SET_COMPRESSION = 639040;
		public const uint32 FSCTL_SET_BOOTLOADER_ACCESSED = 589903;
		public const uint32 FSCTL_MARK_AS_SYSTEM_HIVE = 589903;
		public const uint32 FSCTL_OPLOCK_BREAK_ACK_NO_2 = 589904;
		public const uint32 FSCTL_INVALIDATE_VOLUMES = 589908;
		public const uint32 FSCTL_QUERY_FAT_BPB = 589912;
		public const uint32 FSCTL_REQUEST_FILTER_OPLOCK = 589916;
		public const uint32 FSCTL_FILESYSTEM_GET_STATISTICS = 589920;
		public const uint32 FSCTL_GET_NTFS_VOLUME_DATA = 589924;
		public const uint32 FSCTL_GET_NTFS_FILE_RECORD = 589928;
		public const uint32 FSCTL_GET_VOLUME_BITMAP = 589935;
		public const uint32 FSCTL_GET_RETRIEVAL_POINTERS = 589939;
		public const uint32 FSCTL_MOVE_FILE = 589940;
		public const uint32 FSCTL_IS_VOLUME_DIRTY = 589944;
		public const uint32 FSCTL_ALLOW_EXTENDED_DASD_IO = 589955;
		public const uint32 FSCTL_FIND_FILES_BY_SID = 589967;
		public const uint32 FSCTL_SET_OBJECT_ID = 589976;
		public const uint32 FSCTL_GET_OBJECT_ID = 589980;
		public const uint32 FSCTL_DELETE_OBJECT_ID = 589984;
		public const uint32 FSCTL_SET_REPARSE_POINT = 589988;
		public const uint32 FSCTL_GET_REPARSE_POINT = 589992;
		public const uint32 FSCTL_DELETE_REPARSE_POINT = 589996;
		public const uint32 FSCTL_ENUM_USN_DATA = 590003;
		public const uint32 FSCTL_SECURITY_ID_CHECK = 606391;
		public const uint32 FSCTL_READ_USN_JOURNAL = 590011;
		public const uint32 FSCTL_SET_OBJECT_ID_EXTENDED = 590012;
		public const uint32 FSCTL_CREATE_OR_GET_OBJECT_ID = 590016;
		public const uint32 FSCTL_SET_SPARSE = 590020;
		public const uint32 FSCTL_SET_ZERO_DATA = 622792;
		public const uint32 FSCTL_QUERY_ALLOCATED_RANGES = 606415;
		public const uint32 FSCTL_ENABLE_UPGRADE = 622800;
		public const uint32 FSCTL_SET_ENCRYPTION = 590039;
		public const uint32 FSCTL_ENCRYPTION_FSCTL_IO = 590043;
		public const uint32 FSCTL_WRITE_RAW_ENCRYPTED = 590047;
		public const uint32 FSCTL_READ_RAW_ENCRYPTED = 590051;
		public const uint32 FSCTL_CREATE_USN_JOURNAL = 590055;
		public const uint32 FSCTL_READ_FILE_USN_DATA = 590059;
		public const uint32 FSCTL_WRITE_USN_CLOSE_RECORD = 590063;
		public const uint32 FSCTL_EXTEND_VOLUME = 590064;
		public const uint32 FSCTL_QUERY_USN_JOURNAL = 590068;
		public const uint32 FSCTL_DELETE_USN_JOURNAL = 590072;
		public const uint32 FSCTL_MARK_HANDLE = 590076;
		public const uint32 FSCTL_SIS_COPYFILE = 590080;
		public const uint32 FSCTL_SIS_LINK_FILES = 639236;
		public const uint32 FSCTL_RECALL_FILE = 590103;
		public const uint32 FSCTL_READ_FROM_PLEX = 606494;
		public const uint32 FSCTL_FILE_PREFETCH = 590112;
		public const uint32 FSCTL_MAKE_MEDIA_COMPATIBLE = 622896;
		public const uint32 FSCTL_SET_DEFECT_MANAGEMENT = 622900;
		public const uint32 FSCTL_QUERY_SPARING_INFO = 590136;
		public const uint32 FSCTL_QUERY_ON_DISK_VOLUME_INFO = 590140;
		public const uint32 FSCTL_SET_VOLUME_COMPRESSION_STATE = 590144;
		public const uint32 FSCTL_TXFS_MODIFY_RM = 622916;
		public const uint32 FSCTL_TXFS_QUERY_RM_INFORMATION = 606536;
		public const uint32 FSCTL_TXFS_ROLLFORWARD_REDO = 622928;
		public const uint32 FSCTL_TXFS_ROLLFORWARD_UNDO = 622932;
		public const uint32 FSCTL_TXFS_START_RM = 622936;
		public const uint32 FSCTL_TXFS_SHUTDOWN_RM = 622940;
		public const uint32 FSCTL_TXFS_READ_BACKUP_INFORMATION = 606560;
		public const uint32 FSCTL_TXFS_WRITE_BACKUP_INFORMATION = 622948;
		public const uint32 FSCTL_TXFS_CREATE_SECONDARY_RM = 622952;
		public const uint32 FSCTL_TXFS_GET_METADATA_INFO = 606572;
		public const uint32 FSCTL_TXFS_GET_TRANSACTED_VERSION = 606576;
		public const uint32 FSCTL_TXFS_SAVEPOINT_INFORMATION = 622968;
		public const uint32 FSCTL_TXFS_CREATE_MINIVERSION = 622972;
		public const uint32 FSCTL_TXFS_TRANSACTION_ACTIVE = 606604;
		public const uint32 FSCTL_SET_ZERO_ON_DEALLOCATION = 590228;
		public const uint32 FSCTL_SET_REPAIR = 590232;
		public const uint32 FSCTL_GET_REPAIR = 590236;
		public const uint32 FSCTL_WAIT_FOR_REPAIR = 590240;
		public const uint32 FSCTL_INITIATE_REPAIR = 590248;
		public const uint32 FSCTL_CSC_INTERNAL = 590255;
		public const uint32 FSCTL_SHRINK_VOLUME = 590256;
		public const uint32 FSCTL_SET_SHORT_NAME_BEHAVIOR = 590260;
		public const uint32 FSCTL_DFSR_SET_GHOST_HANDLE_STATE = 590264;
		public const uint32 FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES = 606688;
		public const uint32 FSCTL_TXFS_LIST_TRANSACTIONS = 606692;
		public const uint32 FSCTL_QUERY_PAGEFILE_ENCRYPTION = 590312;
		public const uint32 FSCTL_RESET_VOLUME_ALLOCATION_HINTS = 590316;
		public const uint32 FSCTL_QUERY_DEPENDENT_VOLUME = 590320;
		public const uint32 FSCTL_SD_GLOBAL_CHANGE = 590324;
		public const uint32 FSCTL_TXFS_READ_BACKUP_INFORMATION2 = 590328;
		public const uint32 FSCTL_LOOKUP_STREAM_FROM_CLUSTER = 590332;
		public const uint32 FSCTL_TXFS_WRITE_BACKUP_INFORMATION2 = 590336;
		public const uint32 FSCTL_FILE_TYPE_NOTIFICATION = 590340;
		public const uint32 FSCTL_FILE_LEVEL_TRIM = 623112;
		public const uint32 FSCTL_GET_BOOT_AREA_INFO = 590384;
		public const uint32 FSCTL_GET_RETRIEVAL_POINTER_BASE = 590388;
		public const uint32 FSCTL_SET_PERSISTENT_VOLUME_STATE = 590392;
		public const uint32 FSCTL_QUERY_PERSISTENT_VOLUME_STATE = 590396;
		public const uint32 FSCTL_REQUEST_OPLOCK = 590400;
		public const uint32 FSCTL_CSV_TUNNEL_REQUEST = 590404;
		public const uint32 FSCTL_IS_CSV_FILE = 590408;
		public const uint32 FSCTL_QUERY_FILE_SYSTEM_RECOGNITION = 590412;
		public const uint32 FSCTL_CSV_GET_VOLUME_PATH_NAME = 590416;
		public const uint32 FSCTL_CSV_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT = 590420;
		public const uint32 FSCTL_CSV_GET_VOLUME_PATH_NAMES_FOR_VOLUME_NAME = 590424;
		public const uint32 FSCTL_IS_FILE_ON_CSV_VOLUME = 590428;
		public const uint32 FSCTL_CORRUPTION_HANDLING = 590432;
		public const uint32 FSCTL_OFFLOAD_READ = 606820;
		public const uint32 FSCTL_OFFLOAD_WRITE = 623208;
		public const uint32 FSCTL_CSV_INTERNAL = 590444;
		public const uint32 FSCTL_SET_PURGE_FAILURE_MODE = 590448;
		public const uint32 FSCTL_QUERY_FILE_LAYOUT = 590455;
		public const uint32 FSCTL_IS_VOLUME_OWNED_BYCSVFS = 590456;
		public const uint32 FSCTL_GET_INTEGRITY_INFORMATION = 590460;
		public const uint32 FSCTL_SET_INTEGRITY_INFORMATION = 639616;
		public const uint32 FSCTL_QUERY_FILE_REGIONS = 590468;
		public const uint32 FSCTL_RKF_INTERNAL = 590511;
		public const uint32 FSCTL_SCRUB_DATA = 590512;
		public const uint32 FSCTL_REPAIR_COPIES = 639668;
		public const uint32 FSCTL_DISABLE_LOCAL_BUFFERING = 590520;
		public const uint32 FSCTL_CSV_MGMT_LOCK = 590524;
		public const uint32 FSCTL_CSV_QUERY_DOWN_LEVEL_FILE_SYSTEM_CHARACTERISTICS = 590528;
		public const uint32 FSCTL_ADVANCE_FILE_ID = 590532;
		public const uint32 FSCTL_CSV_SYNC_TUNNEL_REQUEST = 590536;
		public const uint32 FSCTL_CSV_QUERY_VETO_FILE_DIRECT_IO = 590540;
		public const uint32 FSCTL_WRITE_USN_REASON = 590544;
		public const uint32 FSCTL_CSV_CONTROL = 590548;
		public const uint32 FSCTL_GET_REFS_VOLUME_DATA = 590552;
		public const uint32 FSCTL_CSV_H_BREAKING_SYNC_TUNNEL_REQUEST = 590564;
		public const uint32 FSCTL_QUERY_STORAGE_CLASSES = 590572;
		public const uint32 FSCTL_QUERY_REGION_INFO = 590576;
		public const uint32 FSCTL_USN_TRACK_MODIFIED_RANGES = 590580;
		public const uint32 FSCTL_QUERY_SHARED_VIRTUAL_DISK_SUPPORT = 590592;
		public const uint32 FSCTL_SVHDX_SYNC_TUNNEL_REQUEST = 590596;
		public const uint32 FSCTL_SVHDX_SET_INITIATOR_INFORMATION = 590600;
		public const uint32 FSCTL_SET_EXTERNAL_BACKING = 590604;
		public const uint32 FSCTL_GET_EXTERNAL_BACKING = 590608;
		public const uint32 FSCTL_DELETE_EXTERNAL_BACKING = 590612;
		public const uint32 FSCTL_ENUM_EXTERNAL_BACKING = 590616;
		public const uint32 FSCTL_ENUM_OVERLAY = 590623;
		public const uint32 FSCTL_ADD_OVERLAY = 623408;
		public const uint32 FSCTL_REMOVE_OVERLAY = 623412;
		public const uint32 FSCTL_UPDATE_OVERLAY = 623416;
		public const uint32 FSCTL_SHUFFLE_FILE = 639808;
		public const uint32 FSCTL_DUPLICATE_EXTENTS_TO_FILE = 623428;
		public const uint32 FSCTL_SPARSE_OVERALLOCATE = 590668;
		public const uint32 FSCTL_STORAGE_QOS_CONTROL = 590672;
		public const uint32 FSCTL_INITIATE_FILE_METADATA_OPTIMIZATION = 590684;
		public const uint32 FSCTL_QUERY_FILE_METADATA_OPTIMIZATION = 590688;
		public const uint32 FSCTL_SVHDX_ASYNC_TUNNEL_REQUEST = 590692;
		public const uint32 FSCTL_GET_WOF_VERSION = 590696;
		public const uint32 FSCTL_HCS_SYNC_TUNNEL_REQUEST = 590700;
		public const uint32 FSCTL_HCS_ASYNC_TUNNEL_REQUEST = 590704;
		public const uint32 FSCTL_QUERY_EXTENT_READ_CACHE_INFO = 590711;
		public const uint32 FSCTL_QUERY_REFS_VOLUME_COUNTER_INFO = 590715;
		public const uint32 FSCTL_CLEAN_VOLUME_METADATA = 590716;
		public const uint32 FSCTL_SET_INTEGRITY_INFORMATION_EX = 590720;
		public const uint32 FSCTL_SUSPEND_OVERLAY = 590724;
		public const uint32 FSCTL_VIRTUAL_STORAGE_QUERY_PROPERTY = 590728;
		public const uint32 FSCTL_FILESYSTEM_GET_STATISTICS_EX = 590732;
		public const uint32 FSCTL_QUERY_VOLUME_CONTAINER_STATE = 590736;
		public const uint32 FSCTL_SET_LAYER_ROOT = 590740;
		public const uint32 FSCTL_QUERY_DIRECT_ACCESS_EXTENTS = 590747;
		public const uint32 FSCTL_NOTIFY_STORAGE_SPACE_ALLOCATION = 590748;
		public const uint32 FSCTL_SSDI_STORAGE_REQUEST = 590752;
		public const uint32 FSCTL_QUERY_DIRECT_IMAGE_ORIGINAL_BASE = 590756;
		public const uint32 FSCTL_READ_UNPRIVILEGED_USN_JOURNAL = 590763;
		public const uint32 FSCTL_GHOST_FILE_EXTENTS = 623532;
		public const uint32 FSCTL_QUERY_GHOSTED_FILE_EXTENTS = 590768;
		public const uint32 FSCTL_UNMAP_SPACE = 590772;
		public const uint32 FSCTL_HCS_SYNC_NO_WRITE_TUNNEL_REQUEST = 590776;
		public const uint32 FSCTL_START_VIRTUALIZATION_INSTANCE = 590784;
		public const uint32 FSCTL_GET_FILTER_FILE_IDENTIFIER = 590788;
		public const uint32 FSCTL_STREAMS_QUERY_PARAMETERS = 590788;
		public const uint32 FSCTL_STREAMS_ASSOCIATE_ID = 590792;
		public const uint32 FSCTL_STREAMS_QUERY_ID = 590796;
		public const uint32 FSCTL_GET_RETRIEVAL_POINTERS_AND_REFCOUNT = 590803;
		public const uint32 FSCTL_QUERY_VOLUME_NUMA_INFO = 590804;
		public const uint32 FSCTL_REFS_DEALLOCATE_RANGES = 590808;
		public const uint32 FSCTL_QUERY_REFS_SMR_VOLUME_INFO = 590812;
		public const uint32 FSCTL_SET_REFS_SMR_VOLUME_GC_PARAMETERS = 590816;
		public const uint32 FSCTL_SET_REFS_FILE_STRICTLY_SEQUENTIAL = 590820;
		public const uint32 FSCTL_DUPLICATE_EXTENTS_TO_FILE_EX = 623592;
		public const uint32 FSCTL_QUERY_BAD_RANGES = 590828;
		public const uint32 FSCTL_SET_DAX_ALLOC_ALIGNMENT_HINT = 590832;
		public const uint32 FSCTL_DELETE_CORRUPTED_REFS_CONTAINER = 590836;
		public const uint32 FSCTL_SCRUB_UNDISCOVERABLE_ID = 590840;
		public const uint32 FSCTL_NOTIFY_DATA_CHANGE = 590844;
		public const uint32 FSCTL_START_VIRTUALIZATION_INSTANCE_EX = 590848;
		public const uint32 FSCTL_ENCRYPTION_KEY_CONTROL = 590852;
		public const uint32 FSCTL_VIRTUAL_STORAGE_SET_BEHAVIOR = 590856;
		public const uint32 FSCTL_SET_REPARSE_POINT_EX = 590860;
		public const uint32 FSCTL_REARRANGE_FILE = 640032;
		public const uint32 FSCTL_VIRTUAL_STORAGE_PASSTHROUGH = 590884;
		public const uint32 FSCTL_GET_RETRIEVAL_POINTER_COUNT = 590891;
		public const uint32 FSCTL_ENABLE_PER_IO_FLAGS = 590892;
		public const uint32 FSCTL_QUERY_ASYNC_DUPLICATE_EXTENTS_STATUS = 590896;
		public const uint32 FSCTL_SMB_SHARE_FLUSH_AND_PURGE = 590908;
		public const uint32 FSCTL_REFS_STREAM_SNAPSHOT_MANAGEMENT = 590912;
		public const uint32 FSCTL_MANAGE_BYPASS_IO = 590920;
		public const uint32 GET_VOLUME_BITMAP_FLAG_MASK_METADATA = 1;
		public const uint32 FLAG_USN_TRACK_MODIFIED_RANGES_ENABLE = 1;
		public const uint32 USN_PAGE_SIZE = 4096;
		public const uint32 USN_REASON_DATA_OVERWRITE = 1;
		public const uint32 USN_REASON_DATA_EXTEND = 2;
		public const uint32 USN_REASON_DATA_TRUNCATION = 4;
		public const uint32 USN_REASON_NAMED_DATA_OVERWRITE = 16;
		public const uint32 USN_REASON_NAMED_DATA_EXTEND = 32;
		public const uint32 USN_REASON_NAMED_DATA_TRUNCATION = 64;
		public const uint32 USN_REASON_FILE_CREATE = 256;
		public const uint32 USN_REASON_FILE_DELETE = 512;
		public const uint32 USN_REASON_EA_CHANGE = 1024;
		public const uint32 USN_REASON_SECURITY_CHANGE = 2048;
		public const uint32 USN_REASON_RENAME_OLD_NAME = 4096;
		public const uint32 USN_REASON_RENAME_NEW_NAME = 8192;
		public const uint32 USN_REASON_INDEXABLE_CHANGE = 16384;
		public const uint32 USN_REASON_BASIC_INFO_CHANGE = 32768;
		public const uint32 USN_REASON_HARD_LINK_CHANGE = 65536;
		public const uint32 USN_REASON_COMPRESSION_CHANGE = 131072;
		public const uint32 USN_REASON_ENCRYPTION_CHANGE = 262144;
		public const uint32 USN_REASON_OBJECT_ID_CHANGE = 524288;
		public const uint32 USN_REASON_REPARSE_POINT_CHANGE = 1048576;
		public const uint32 USN_REASON_STREAM_CHANGE = 2097152;
		public const uint32 USN_REASON_TRANSACTED_CHANGE = 4194304;
		public const uint32 USN_REASON_INTEGRITY_CHANGE = 8388608;
		public const uint32 USN_REASON_DESIRED_STORAGE_CLASS_CHANGE = 16777216;
		public const uint32 USN_REASON_CLOSE = 2147483648;
		public const uint32 USN_DELETE_VALID_FLAGS = 3;
		public const uint32 MARK_HANDLE_PROTECT_CLUSTERS = 1;
		public const uint32 MARK_HANDLE_TXF_SYSTEM_LOG = 4;
		public const uint32 MARK_HANDLE_NOT_TXF_SYSTEM_LOG = 8;
		public const uint32 MARK_HANDLE_REALTIME = 32;
		public const uint32 MARK_HANDLE_NOT_REALTIME = 64;
		public const uint32 MARK_HANDLE_CLOUD_SYNC = 2048;
		public const uint32 MARK_HANDLE_READ_COPY = 128;
		public const uint32 MARK_HANDLE_NOT_READ_COPY = 256;
		public const uint32 MARK_HANDLE_FILTER_METADATA = 512;
		public const uint32 MARK_HANDLE_RETURN_PURGE_FAILURE = 1024;
		public const uint32 MARK_HANDLE_DISABLE_FILE_METADATA_OPTIMIZATION = 4096;
		public const uint32 MARK_HANDLE_ENABLE_USN_SOURCE_ON_PAGING_IO = 8192;
		public const uint32 MARK_HANDLE_SKIP_COHERENCY_SYNC_DISALLOW_WRITES = 16384;
		public const uint32 MARK_HANDLE_SUPPRESS_VOLUME_OPEN_FLUSH = 32768;
		public const uint32 MARK_HANDLE_ENABLE_CPU_CACHE = 268435456;
		public const uint32 VOLUME_IS_DIRTY = 1;
		public const uint32 VOLUME_UPGRADE_SCHEDULED = 2;
		public const uint32 VOLUME_SESSION_OPEN = 4;
		public const uint32 FILE_PREFETCH_TYPE_FOR_CREATE = 1;
		public const uint32 FILE_PREFETCH_TYPE_FOR_DIRENUM = 2;
		public const uint32 FILE_PREFETCH_TYPE_FOR_CREATE_EX = 3;
		public const uint32 FILE_PREFETCH_TYPE_FOR_DIRENUM_EX = 4;
		public const uint32 FILE_PREFETCH_TYPE_MAX = 4;
		public const uint32 FILESYSTEM_STATISTICS_TYPE_REFS = 4;
		public const uint32 FILE_ZERO_DATA_INFORMATION_FLAG_PRESERVE_CACHED_DATA = 1;
		public const uint32 FILE_SET_ENCRYPTION = 1;
		public const uint32 FILE_CLEAR_ENCRYPTION = 2;
		public const uint32 STREAM_SET_ENCRYPTION = 3;
		public const uint32 STREAM_CLEAR_ENCRYPTION = 4;
		public const uint32 MAXIMUM_ENCRYPTION_VALUE = 4;
		public const uint32 ENCRYPTION_FORMAT_DEFAULT = 1;
		public const uint32 ENCRYPTED_DATA_INFO_SPARSE_FILE = 1;
		public const uint32 COPYFILE_SIS_LINK = 1;
		public const uint32 COPYFILE_SIS_REPLACE = 2;
		public const uint32 COPYFILE_SIS_FLAGS = 3;
		public const uint32 SET_REPAIR_ENABLED = 1;
		public const uint32 SET_REPAIR_WARN_ABOUT_DATA_LOSS = 8;
		public const uint32 SET_REPAIR_DISABLED_AND_BUGCHECK_ON_CORRUPT = 16;
		public const uint32 SET_REPAIR_VALID_MASK = 25;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_NOT_IN_USE = 1uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_REUSED = 2uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_NOT_EXIST = 4uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_NOT_BASE_RECORD = 8uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_SYSTEM_FILE = 16uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_NOT_IMPLEMENTED = 32uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_UNABLE_TO_REPAIR = 64uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_REPAIR_DISABLED = 128uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_RECURSIVELY_CORRUPTED = 256uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_ORPHAN_GENERATED = 512uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_REPAIRED = 1024uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_NOTHING_WRONG = 2048uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_ATTRIBUTE_NOT_FOUND = 4096uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_POTENTIAL_CROSSLINK = 8192uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_STALE_INFORMATION = 16384uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_CLUSTERS_ALREADY_IN_USE = 32768uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_LCN_NOT_EXIST = 65536uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_RUN_LENGTH = 131072uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_NOT_ORPHAN = 262144uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_FILE_RECORD_IS_BASE_RECORD = 524288uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_ARRAY_LENGTH_COUNT = 1048576uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_SID_VALID = 2097152uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_SID_MISMATCH = 4194304uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_PARENT = 8388608uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PARENT_FILE_RECORD_NOT_IN_USE = 16777216uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PARENT_FILE_RECORD_REUSED = 33554432uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PARENT_FILE_RECORD_NOT_EXIST = 67108864uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PARENT_FILE_RECORD_NOT_BASE_RECORD = 134217728uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PARENT_FILE_RECORD_NOT_INDEX = 268435456uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_VALID_INDEX_ENTRY = 536870912uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_OUT_OF_GENERIC_NAMES = 1073741824uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_OUT_OF_RESOURCE = 2147483648uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_LCN = 4294967296uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_VCN = 8589934592uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_NAME_CONFLICT = 17179869184uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_ORPHAN = 34359738368uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_ATTRIBUTE_TOO_SMALL = 68719476736uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_ATTRIBUTE_NON_RESIDENT = 137438953472uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_DENY_DEFRAG = 274877906944uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_PREVIOUS_PARENT_STILL_VALID = 549755813888uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INDEX_ENTRY_MISMATCH = 1099511627776uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_INVALID_ORPHAN_RECOVERY_NAME = 2199023255552uL;
		public const uint64 FILE_INITIATE_REPAIR_HINT1_MULTIPLE_FILE_NAME_ATTRIBUTES = 4398046511104uL;
		public const uint32 TXFS_LOGGING_MODE_SIMPLE = 1;
		public const uint32 TXFS_LOGGING_MODE_FULL = 2;
		public const uint32 TXFS_TRANSACTION_STATE_NONE = 0;
		public const uint32 TXFS_TRANSACTION_STATE_ACTIVE = 1;
		public const uint32 TXFS_TRANSACTION_STATE_PREPARED = 2;
		public const uint32 TXFS_TRANSACTION_STATE_NOTACTIVE = 3;
		public const uint32 TXFS_RM_STATE_NOT_STARTED = 0;
		public const uint32 TXFS_RM_STATE_STARTING = 1;
		public const uint32 TXFS_RM_STATE_ACTIVE = 2;
		public const uint32 TXFS_RM_STATE_SHUTTING_DOWN = 3;
		public const uint32 TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_REDO_LSN = 1;
		public const uint32 TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_VIRTUAL_CLOCK = 2;
		public const uint32 TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MAX = 1;
		public const uint32 TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MIN = 2;
		public const uint32 TXFS_START_RM_FLAG_LOG_CONTAINER_SIZE = 4;
		public const uint32 TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS = 8;
		public const uint32 TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT = 16;
		public const uint32 TXFS_START_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE = 32;
		public const uint32 TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX = 64;
		public const uint32 TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN = 128;
		public const uint32 TXFS_START_RM_FLAG_RECOVER_BEST_EFFORT = 512;
		public const uint32 TXFS_START_RM_FLAG_LOGGING_MODE = 1024;
		public const uint32 TXFS_START_RM_FLAG_PRESERVE_CHANGES = 2048;
		public const uint32 TXFS_START_RM_FLAG_PREFER_CONSISTENCY = 4096;
		public const uint32 TXFS_START_RM_FLAG_PREFER_AVAILABILITY = 8192;
		public const uint32 TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_CREATED = 1;
		public const uint32 TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_DELETED = 2;
		public const uint32 TXFS_TRANSACTED_VERSION_NONTRANSACTED = 4294967294;
		public const uint32 TXFS_TRANSACTED_VERSION_UNCOMMITTED = 4294967295;
		public const uint32 TXFS_SAVEPOINT_SET = 1;
		public const uint32 TXFS_SAVEPOINT_ROLLBACK = 2;
		public const uint32 TXFS_SAVEPOINT_CLEAR = 4;
		public const uint32 TXFS_SAVEPOINT_CLEAR_ALL = 16;
		public const uint32 PERSISTENT_VOLUME_STATE_SHORT_NAME_CREATION_DISABLED = 1;
		public const uint32 PERSISTENT_VOLUME_STATE_VOLUME_SCRUB_DISABLED = 2;
		public const uint32 PERSISTENT_VOLUME_STATE_GLOBAL_METADATA_NO_SEEK_PENALTY = 4;
		public const uint32 PERSISTENT_VOLUME_STATE_LOCAL_METADATA_NO_SEEK_PENALTY = 8;
		public const uint32 PERSISTENT_VOLUME_STATE_NO_HEAT_GATHERING = 16;
		public const uint32 PERSISTENT_VOLUME_STATE_CONTAINS_BACKING_WIM = 32;
		public const uint32 PERSISTENT_VOLUME_STATE_BACKED_BY_WIM = 64;
		public const uint32 PERSISTENT_VOLUME_STATE_NO_WRITE_AUTO_TIERING = 128;
		public const uint32 PERSISTENT_VOLUME_STATE_TXF_DISABLED = 256;
		public const uint32 PERSISTENT_VOLUME_STATE_REALLOCATE_ALL_DATA_WRITES = 512;
		public const uint32 PERSISTENT_VOLUME_STATE_CHKDSK_RAN_ONCE = 1024;
		public const uint32 PERSISTENT_VOLUME_STATE_MODIFIED_BY_CHKDSK = 2048;
		public const uint32 PERSISTENT_VOLUME_STATE_DAX_FORMATTED = 4096;
		public const uint32 OPLOCK_LEVEL_CACHE_READ = 1;
		public const uint32 OPLOCK_LEVEL_CACHE_HANDLE = 2;
		public const uint32 OPLOCK_LEVEL_CACHE_WRITE = 4;
		public const uint32 REQUEST_OPLOCK_INPUT_FLAG_REQUEST = 1;
		public const uint32 REQUEST_OPLOCK_INPUT_FLAG_ACK = 2;
		public const uint32 REQUEST_OPLOCK_INPUT_FLAG_COMPLETE_ACK_ON_CLOSE = 4;
		public const uint32 REQUEST_OPLOCK_CURRENT_VERSION = 1;
		public const uint32 REQUEST_OPLOCK_OUTPUT_FLAG_ACK_REQUIRED = 1;
		public const uint32 REQUEST_OPLOCK_OUTPUT_FLAG_MODES_PROVIDED = 2;
		public const uint32 QUERY_DEPENDENT_VOLUME_REQUEST_FLAG_HOST_VOLUMES = 1;
		public const uint32 QUERY_DEPENDENT_VOLUME_REQUEST_FLAG_GUEST_VOLUMES = 2;
		public const uint32 SD_GLOBAL_CHANGE_TYPE_MACHINE_SID = 1;
		public const uint32 SD_GLOBAL_CHANGE_TYPE_QUERY_STATS = 65536;
		public const uint32 SD_GLOBAL_CHANGE_TYPE_ENUM_SDS = 131072;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_PAGE_FILE = 1;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_DENY_DEFRAG_SET = 2;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_FS_SYSTEM_FILE = 4;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_TXF_SYSTEM_FILE = 8;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_MASK = 4278190080;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_DATA = 16777216;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_INDEX = 33554432;
		public const uint32 LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_SYSTEM = 50331648;
		public const uint32 FILE_TYPE_NOTIFICATION_FLAG_USAGE_BEGIN = 1;
		public const uint32 FILE_TYPE_NOTIFICATION_FLAG_USAGE_END = 2;
		public const Guid FILE_TYPE_NOTIFICATION_GUID_PAGE_FILE = .(0x0d0a64a1, 0x38fc, 0x4db8, 0x9f, 0xe7, 0x3f, 0x43, 0x52, 0xcd, 0x7c, 0x5c);
		public const Guid FILE_TYPE_NOTIFICATION_GUID_HIBERNATION_FILE = .(0xb7624d64, 0xb9a3, 0x4cf8, 0x80, 0x11, 0x5b, 0x86, 0xc9, 0x40, 0xe7, 0xb7);
		public const Guid FILE_TYPE_NOTIFICATION_GUID_CRASHDUMP_FILE = .(0x9d453eb7, 0xd2a6, 0x4dbd, 0xa2, 0xe3, 0xfb, 0xd0, 0xed, 0x91, 0x09, 0xa9);
		public const uint32 CSV_MGMTLOCK_CHECK_VOLUME_REDIRECTED = 1;
		public const uint32 CSV_INVALID_DEVICE_NUMBER = 4294967295;
		public const uint32 CSV_QUERY_MDS_PATH_V2_VERSION_1 = 1;
		public const uint32 CSV_QUERY_MDS_PATH_FLAG_STORAGE_ON_THIS_NODE_IS_CONNECTED = 1;
		public const uint32 CSV_QUERY_MDS_PATH_FLAG_CSV_DIRECT_IO_ENABLED = 2;
		public const uint32 CSV_QUERY_MDS_PATH_FLAG_SMB_BYPASS_CSV_ENABLED = 4;
		public const uint32 QUERY_FILE_LAYOUT_RESTART = 1;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_NAMES = 2;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAMS = 4;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_EXTENTS = 8;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_EXTRA_INFO = 16;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAMS_WITH_NO_CLUSTERS_ALLOCATED = 32;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_FULL_PATH_IN_NAMES = 64;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION = 128;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_DSC_ATTRIBUTE = 256;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_TXF_ATTRIBUTE = 512;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_EFS_ATTRIBUTE = 1024;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_ONLY_FILES_WITH_SPECIFIC_ATTRIBUTES = 2048;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_FILES_WITH_DSC_ATTRIBUTE = 4096;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_DATA_ATTRIBUTE = 8192;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_REPARSE_ATTRIBUTE = 16384;
		public const uint32 QUERY_FILE_LAYOUT_INCLUDE_STREAM_INFORMATION_FOR_EA_ATTRIBUTE = 32768;
		public const uint32 QUERY_FILE_LAYOUT_SINGLE_INSTANCED = 1;
		public const uint32 FILE_LAYOUT_NAME_ENTRY_PRIMARY = 1;
		public const uint32 FILE_LAYOUT_NAME_ENTRY_DOS = 2;
		public const uint32 STREAM_LAYOUT_ENTRY_IMMOVABLE = 1;
		public const uint32 STREAM_LAYOUT_ENTRY_PINNED = 2;
		public const uint32 STREAM_LAYOUT_ENTRY_RESIDENT = 4;
		public const uint32 STREAM_LAYOUT_ENTRY_NO_CLUSTERS_ALLOCATED = 8;
		public const uint32 STREAM_LAYOUT_ENTRY_HAS_INFORMATION = 16;
		public const uint32 STREAM_EXTENT_ENTRY_AS_RETRIEVAL_POINTERS = 1;
		public const uint32 STREAM_EXTENT_ENTRY_ALL_EXTENTS = 2;
		public const int32 CHECKSUM_TYPE_UNCHANGED = -1;
		public const uint32 CHECKSUM_TYPE_NONE = 0;
		public const uint32 CHECKSUM_TYPE_CRC32 = 1;
		public const uint32 CHECKSUM_TYPE_CRC64 = 2;
		public const uint32 CHECKSUM_TYPE_ECC = 3;
		public const uint32 CHECKSUM_TYPE_FIRST_UNUSED_TYPE = 4;
		public const uint32 FSCTL_INTEGRITY_FLAG_CHECKSUM_ENFORCEMENT_OFF = 1;
		public const uint32 OFFLOAD_READ_FLAG_ALL_ZERO_BEYOND_CURRENT_RANGE = 1;
		public const uint32 SET_PURGE_FAILURE_MODE_ENABLED = 1;
		public const uint32 SET_PURGE_FAILURE_MODE_DISABLED = 2;
		public const uint32 FILE_REGION_USAGE_VALID_CACHED_DATA = 1;
		public const uint32 FILE_REGION_USAGE_VALID_NONCACHED_DATA = 2;
		public const uint32 FILE_REGION_USAGE_OTHER_PAGE_ALIGNMENT = 4;
		public const uint32 FILE_REGION_USAGE_LARGE_PAGE_ALIGNMENT = 8;
		public const uint32 FILE_REGION_USAGE_HUGE_PAGE_ALIGNMENT = 16;
		public const uint32 FILE_REGION_USAGE_QUERY_ALIGNMENT = 8;
		public const uint32 FILE_STORAGE_TIER_NAME_LENGTH = 256;
		public const uint32 FILE_STORAGE_TIER_DESCRIPTION_LENGTH = 512;
		public const uint32 FILE_STORAGE_TIER_FLAG_WRITE_BACK_CACHE = 2097152;
		public const uint32 FILE_STORAGE_TIER_FLAG_READ_CACHE = 4194304;
		public const uint32 FILE_STORAGE_TIER_FLAG_PARITY = 8388608;
		public const uint32 FILE_STORAGE_TIER_FLAG_SMR = 16777216;
		public const uint32 QUERY_STORAGE_CLASSES_FLAGS_MEASURE_WRITE = 2147483648;
		public const uint32 QUERY_STORAGE_CLASSES_FLAGS_MEASURE_READ = 1073741824;
		public const uint32 QUERY_STORAGE_CLASSES_FLAGS_NO_DEFRAG_VOLUME = 536870912;
		public const uint32 QUERY_FILE_LAYOUT_REPARSE_DATA_INVALID = 1;
		public const uint32 QUERY_FILE_LAYOUT_REPARSE_TAG_INVALID = 2;
		public const uint32 DUPLICATE_EXTENTS_DATA_EX_SOURCE_ATOMIC = 1;
		public const uint32 DUPLICATE_EXTENTS_DATA_EX_ASYNC = 2;
		public const uint32 REFS_SMR_VOLUME_INFO_OUTPUT_VERSION_V0 = 0;
		public const uint32 REFS_SMR_VOLUME_INFO_OUTPUT_VERSION_V1 = 1;
		public const uint32 REFS_SMR_VOLUME_GC_PARAMETERS_VERSION_V1 = 1;
		public const uint32 STREAMS_INVALID_ID = 0;
		public const uint32 STREAMS_MAX_ID = 65535;
		public const uint32 STREAMS_ASSOCIATE_ID_CLEAR = 1;
		public const uint32 STREAMS_ASSOCIATE_ID_SET = 2;
		public const uint32 DAX_ALLOC_ALIGNMENT_FLAG_MANDATORY = 1;
		public const uint32 DAX_ALLOC_ALIGNMENT_FLAG_FALLBACK_SPECIFIED = 2;
		public const uint32 WOF_CURRENT_VERSION = 1;
		public const uint32 WOF_PROVIDER_CLOUD = 3;
		public const uint32 WIM_PROVIDER_CURRENT_VERSION = 1;
		public const uint32 WIM_PROVIDER_EXTERNAL_FLAG_NOT_ACTIVE = 1;
		public const uint32 WIM_PROVIDER_EXTERNAL_FLAG_SUSPENDED = 2;
		public const uint32 FILE_PROVIDER_CURRENT_VERSION = 1;
		public const uint32 FILE_PROVIDER_SINGLE_FILE = 1;
		public const uint32 FILE_PROVIDER_COMPRESSION_MAXIMUM = 4;
		public const uint32 FILE_PROVIDER_FLAG_COMPRESS_ON_WRITE = 1;
		public const uint32 CONTAINER_VOLUME_STATE_HOSTING_CONTAINER = 1;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_SCRATCH_ROOT = 1;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_LAYER_ROOT = 2;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_VIRTUALIZATION_ROOT = 4;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_VIRTUALIZATION_TARGET_ROOT = 8;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_VIRTUALIZATION_EXCEPTION_ROOT = 16;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_BIND_ROOT = 32;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_BIND_TARGET_ROOT = 64;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_BIND_EXCEPTION_ROOT = 128;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_BIND_DO_NOT_MAP_NAME = 256;
		public const uint32 CONTAINER_ROOT_INFO_FLAG_UNION_LAYER_ROOT = 512;
		public const uint32 CONTAINER_ROOT_INFO_VALID_FLAGS = 1023;
		public const uint32 PROJFS_PROTOCOL_VERSION = 3;
		public const uint32 EFS_TRACKED_OFFSET_HEADER_FLAG = 1;
		public const uint32 SPACES_TRACKED_OFFSET_HEADER_FLAG = 2;
		
		// --- Enums ---
		
		public enum GPT_ATTRIBUTES : uint64
		{
			ATTRIBUTE_PLATFORM_REQUIRED = 1uL,
			BASIC_DATA_ATTRIBUTE_NO_DRIVE_LETTER = 9223372036854775808uL,
			BASIC_DATA_ATTRIBUTE_HIDDEN = 4611686018427387904uL,
			BASIC_DATA_ATTRIBUTE_SHADOW_COPY = 2305843009213693952uL,
			BASIC_DATA_ATTRIBUTE_READ_ONLY = 1152921504606846976uL,
		}
		public enum USN_DELETE_FLAGS : uint32
		{
			DELETE = 1,
			NOTIFY = 2,
		}
		public enum CHANGER_FEATURES : uint32
		{
			BAR_CODE_SCANNER_INSTALLED = 1,
			CARTRIDGE_MAGAZINE = 256,
			CLEANER_ACCESS_NOT_VALID = 262144,
			CLEANER_SLOT = 64,
			CLOSE_IEPORT = 4,
			DEVICE_REINITIALIZE_CAPABLE = 134217728,
			DRIVE_CLEANING_REQUIRED = 65536,
			DRIVE_EMPTY_ON_DOOR_ACCESS = 536870912,
			EXCHANGE_MEDIA = 32,
			INIT_ELEM_STAT_WITH_RANGE = 2,
			KEYPAD_ENABLE_DISABLE = 268435456,
			LOCK_UNLOCK = 128,
			MEDIUM_FLIP = 512,
			OPEN_IEPORT = 8,
			POSITION_TO_ELEMENT = 1024,
			PREDISMOUNT_EJECT_REQUIRED = 131072,
			PREMOUNT_EJECT_REQUIRED = 524288,
			REPORT_IEPORT_STATE = 2048,
			SERIAL_NUMBER_VALID = 67108864,
			STATUS_NON_VOLATILE = 16,
			STORAGE_DRIVE = 4096,
			STORAGE_IEPORT = 8192,
			STORAGE_SLOT = 16384,
			STORAGE_TRANSPORT = 32768,
			VOLUME_ASSERT = 4194304,
			VOLUME_IDENTIFICATION = 1048576,
			VOLUME_REPLACE = 8388608,
			VOLUME_SEARCH = 2097152,
			VOLUME_UNDEFINE = 16777216,
		}
		public enum TXFS_RMF_LAGS : uint32
		{
			LOGGING_MODE = 1,
			RENAME_RM = 2,
			LOG_CONTAINER_COUNT_MAX = 4,
			LOG_CONTAINER_COUNT_MIN = 8,
			LOG_GROWTH_INCREMENT_NUM_CONTAINERS = 16,
			LOG_GROWTH_INCREMENT_PERCENT = 32,
			LOG_AUTO_SHRINK_PERCENTAGE = 64,
			LOG_NO_CONTAINER_COUNT_MAX = 128,
			LOG_NO_CONTAINER_COUNT_MIN = 256,
			GROW_LOG = 1024,
			SHRINK_LOG = 2048,
			ENFORCE_MINIMUM_SIZE = 4096,
			PRESERVE_CHANGES = 8192,
			RESET_RM_AT_NEXT_START = 16384,
			DO_NOT_RESET_RM_AT_NEXT_START = 32768,
			PREFER_CONSISTENCY = 65536,
			PREFER_AVAILABILITY = 131072,
		}
		public enum FILESYSTEM_STATISTICS_TYPE : uint16
		{
			EXFAT = 3,
			FAT = 2,
			NTFS = 1,
		}
		public enum USN_SOURCE_INFO_ID : uint32
		{
			AUXILIARY_DATA = 2,
			DATA_MANAGEMENT = 1,
			REPLICATION_MANAGEMENT = 4,
			CLIENT_REPLICATION_MANAGEMENT = 8,
		}
		public enum FILE_STORAGE_TIER_FLAGS : uint32
		{
			FLAG_NO_SEEK_PENALTY = 131072,
		}
		public enum CHANGER_ELEMENT_STATUS_FLAGS : uint32
		{
			ACCESS = 8,
			AVOLTAG = 536870912,
			EXCEPT = 4,
			EXENAB = 16,
			FULL = 1,
			ID_VALID = 8192,
			IMPEXP = 2,
			INENAB = 32,
			INVERT = 4194304,
			LUN_VALID = 4096,
			NOT_BUS = 32768,
			PVOLTAG = 268435456,
			SVALID = 8388608,
			PRODUCT_DATA = 64,
		}
		public enum GET_CHANGER_PARAMETERS_FEATURES1 : uint32
		{
			CLEANER_AUTODISMOUNT = 2147483652,
			CLEANER_OPS_NOT_SUPPORTED = 2147483712,
			IEPORT_USER_CONTROL_CLOSE = 2147483904,
			IEPORT_USER_CONTROL_OPEN = 2147483776,
			MOVE_EXTENDS_IEPORT = 2147484160,
			MOVE_RETRACTS_IEPORT = 2147484672,
			PREDISMOUNT_ALIGN_TO_DRIVE = 2147483650,
			PREDISMOUNT_ALIGN_TO_SLOT = 2147483649,
			RTN_MEDIA_TO_ORIGINAL_ADDR = 2147483680,
			SLOTS_USE_TRAYS = 2147483664,
			TRUE_EXCHANGE_CAPABLE = 2147483656,
		}
		public enum STORAGE_MEDIA_TYPE : int32
		{
			DDS_4mm = 32,
			MiniQic = 33,
			Travan = 34,
			QIC = 35,
			MP_8mm = 36,
			AME_8mm = 37,
			AIT1_8mm = 38,
			DLT = 39,
			NCTP = 40,
			IBM_3480 = 41,
			IBM_3490E = 42,
			IBM_Magstar_3590 = 43,
			IBM_Magstar_MP = 44,
			STK_DATA_D3 = 45,
			SONY_DTF = 46,
			DV_6mm = 47,
			DMI = 48,
			SONY_D2 = 49,
			CLEANER_CARTRIDGE = 50,
			CD_ROM = 51,
			CD_R = 52,
			CD_RW = 53,
			DVD_ROM = 54,
			DVD_R = 55,
			DVD_RW = 56,
			MO_3_RW = 57,
			MO_5_WO = 58,
			MO_5_RW = 59,
			MO_5_LIMDOW = 60,
			PC_5_WO = 61,
			PC_5_RW = 62,
			PD_5_RW = 63,
			ABL_5_WO = 64,
			PINNACLE_APEX_5_RW = 65,
			SONY_12_WO = 66,
			PHILIPS_12_WO = 67,
			HITACHI_12_WO = 68,
			CYGNET_12_WO = 69,
			KODAK_14_WO = 70,
			MO_NFR_525 = 71,
			NIKON_12_RW = 72,
			IOMEGA_ZIP = 73,
			IOMEGA_JAZ = 74,
			SYQUEST_EZ135 = 75,
			SYQUEST_EZFLYER = 76,
			SYQUEST_SYJET = 77,
			AVATAR_F2 = 78,
			MP2_8mm = 79,
			DST_S = 80,
			DST_M = 81,
			DST_L = 82,
			VXATape_1 = 83,
			VXATape_2 = 84,
			STK_9840 = 85,
			LTO_Ultrium = 86,
			LTO_Accelis = 87,
			DVD_RAM = 88,
			AIT_8mm = 89,
			ADR_1 = 90,
			ADR_2 = 91,
			STK_9940 = 92,
			SAIT = 93,
			VXATape = 94,
		}
		public enum STORAGE_QUERY_TYPE : int32
		{
			StandardQuery = 0,
			ExistsQuery = 1,
			MaskQuery = 2,
			QueryMaxDefined = 3,
		}
		public enum STORAGE_SET_TYPE : int32
		{
			StandardSet = 0,
			ExistsSet = 1,
			SetMaxDefined = 2,
		}
		public enum STORAGE_PROPERTY_ID : int32
		{
			DeviceProperty = 0,
			AdapterProperty = 1,
			DeviceIdProperty = 2,
			DeviceUniqueIdProperty = 3,
			DeviceWriteCacheProperty = 4,
			MiniportProperty = 5,
			AccessAlignmentProperty = 6,
			DeviceSeekPenaltyProperty = 7,
			DeviceTrimProperty = 8,
			DeviceWriteAggregationProperty = 9,
			DeviceDeviceTelemetryProperty = 10,
			DeviceLBProvisioningProperty = 11,
			DevicePowerProperty = 12,
			DeviceCopyOffloadProperty = 13,
			DeviceResiliencyProperty = 14,
			DeviceMediumProductType = 15,
			AdapterRpmbProperty = 16,
			AdapterCryptoProperty = 17,
			DeviceIoCapabilityProperty = 48,
			AdapterProtocolSpecificProperty = 49,
			DeviceProtocolSpecificProperty = 50,
			AdapterTemperatureProperty = 51,
			DeviceTemperatureProperty = 52,
			AdapterPhysicalTopologyProperty = 53,
			DevicePhysicalTopologyProperty = 54,
			DeviceAttributesProperty = 55,
			DeviceManagementStatus = 56,
			AdapterSerialNumberProperty = 57,
			DeviceLocationProperty = 58,
			DeviceNumaProperty = 59,
			DeviceZonedDeviceProperty = 60,
			DeviceUnsafeShutdownCount = 61,
			DeviceEnduranceProperty = 62,
			DeviceLedStateProperty = 63,
			DeviceSelfEncryptionProperty = 64,
			FruIdProperty = 65,
		}
		public enum STORAGE_PORT_CODE_SET : int32
		{
			Reserved = 0,
			Storport = 1,
			SCSIport = 2,
			Spaceport = 3,
			ATAport = 4,
			USBport = 5,
			SBP2port = 6,
			SDport = 7,
		}
		public enum STORAGE_IDENTIFIER_CODE_SET : int32
		{
			Reserved = 0,
			Binary = 1,
			Ascii = 2,
			Utf8 = 3,
		}
		public enum STORAGE_IDENTIFIER_TYPE : int32
		{
			VendorSpecific = 0,
			VendorId = 1,
			EUI64 = 2,
			FCPHName = 3,
			PortRelative = 4,
			TargetPortGroup = 5,
			LogicalUnitGroup = 6,
			MD5LogicalUnitIdentifier = 7,
			ScsiNameString = 8,
		}
		public enum STORAGE_ID_NAA_FORMAT : int32
		{
			IEEEExtended = 2,
			IEEERegistered = 3,
			IEEEERegisteredExtended = 5,
		}
		public enum STORAGE_ASSOCIATION_TYPE : int32
		{
			Device = 0,
			Port = 1,
			Target = 2,
		}
		public enum STORAGE_RPMB_FRAME_TYPE : int32
		{
			Unknown = 0,
			Standard = 1,
			Max = 2,
		}
		public enum STORAGE_CRYPTO_ALGORITHM_ID : int32
		{
			Unknown = 0,
			XTSAES = 1,
			BitlockerAESCBC = 2,
			AESECB = 3,
			ESSIVAESCBC = 4,
			Max = 5,
		}
		public enum STORAGE_CRYPTO_KEY_SIZE : int32
		{
			SizeUnknown = 0,
			Size128Bits = 1,
			Size192Bits = 2,
			Size256Bits = 3,
			Size512Bits = 4,
		}
		public enum STORAGE_TIER_MEDIA_TYPE : int32
		{
			Unspecified = 0,
			Disk = 1,
			Ssd = 2,
			Scm = 4,
			Max = 5,
		}
		public enum STORAGE_TIER_CLASS : int32
		{
			Unspecified = 0,
			Capacity = 1,
			Performance = 2,
			Max = 3,
		}
		public enum STORAGE_PROTOCOL_TYPE : int32
		{
			Unknown = 0,
			Scsi = 1,
			Ata = 2,
			Nvme = 3,
			Sd = 4,
			Ufs = 5,
			Proprietary = 126,
			MaxReserved = 127,
		}
		public enum STORAGE_PROTOCOL_NVME_DATA_TYPE : int32
		{
			Unknown = 0,
			Identify = 1,
			LogPage = 2,
			Feature = 3,
		}
		public enum STORAGE_PROTOCOL_ATA_DATA_TYPE : int32
		{
			Unknown = 0,
			Identify = 1,
			LogPage = 2,
		}
		public enum STORAGE_PROTOCOL_UFS_DATA_TYPE : int32
		{
			Unknown = 0,
			QueryDescriptor = 1,
			QueryAttribute = 2,
			QueryFlag = 3,
			QueryDmeAttribute = 4,
			QueryDmePeerAttribute = 5,
			Max = 6,
		}
		public enum STORAGE_DEVICE_FORM_FACTOR : int32
		{
			FactorUnknown = 0,
			Factor3_5 = 1,
			Factor2_5 = 2,
			Factor1_8 = 3,
			Factor1_8Less = 4,
			FactorEmbedded = 5,
			FactorMemoryCard = 6,
			FactormSata = 7,
			FactorM_2 = 8,
			FactorPCIeBoard = 9,
			FactorDimm = 10,
		}
		public enum STORAGE_COMPONENT_HEALTH_STATUS : int32
		{
			Unknown = 0,
			Normal = 1,
			Throttled = 2,
			Warning = 3,
			Disabled = 4,
			Failed = 5,
		}
		public enum STORAGE_DISK_HEALTH_STATUS : int32
		{
			Unknown = 0,
			Unhealthy = 1,
			Warning = 2,
			Healthy = 3,
			Max = 4,
		}
		public enum STORAGE_DISK_OPERATIONAL_STATUS : int32
		{
			None = 0,
			Unknown = 1,
			Ok = 2,
			PredictingFailure = 3,
			InService = 4,
			HardwareError = 5,
			NotUsable = 6,
			TransientError = 7,
			Missing = 8,
		}
		public enum STORAGE_OPERATIONAL_STATUS_REASON : int32
		{
			Unknown = 0,
			ScsiSenseCode = 1,
			Media = 2,
			Io = 3,
			ThresholdExceeded = 4,
			LostData = 5,
			EnergySource = 6,
			Configuration = 7,
			DeviceController = 8,
			MediaController = 9,
			Component = 10,
			NVDIMM_N = 11,
			BackgroundOperation = 12,
			InvalidFirmware = 13,
			HealthCheck = 14,
			LostDataPersistence = 15,
			DisabledByPlatform = 16,
			LostWritePersistence = 17,
			DataPersistenceLossImminent = 18,
			WritePersistenceLossImminent = 19,
			Max = 20,
		}
		public enum STORAGE_ZONED_DEVICE_TYPES : int32
		{
			Unknown = 0,
			HostManaged = 1,
			HostAware = 2,
			DeviceManaged = 3,
		}
		public enum STORAGE_ZONE_TYPES : int32
		{
			Unknown = 0,
			Conventional = 1,
			SequentialWriteRequired = 2,
			SequentialWritePreferred = 3,
			Max = 4,
		}
		public enum STORAGE_ZONES_ATTRIBUTES : int32
		{
			AndLengthMayDifferent = 0,
			SameLengthSame = 1,
			SameLastZoneLengthDifferent = 2,
			MayDifferentLengthSame = 3,
		}
		public enum STORAGE_ZONE_CONDITION : int32
		{
			Conventional = 0,
			Empty = 1,
			ImplicitlyOpened = 2,
			ExplicitlyOpened = 3,
			Closed = 4,
			ReadOnly = 13,
			Full = 14,
			Offline = 15,
		}
		public enum STORAGE_DIAGNOSTIC_LEVEL : int32
		{
			Default = 0,
			Max = 1,
		}
		public enum STORAGE_DIAGNOSTIC_TARGET_TYPE : int32
		{
			Undefined = 0,
			Port = 1,
			Miniport = 2,
			HbaFirmware = 3,
			Max = 4,
		}
		public enum DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE : int32
		{
			InternalStatusDataRequestTypeUndefined = 0,
			CurrentInternalStatusDataHeader = 1,
			CurrentInternalStatusData = 2,
			SavedInternalStatusDataHeader = 3,
			SavedInternalStatusData = 4,
		}
		public enum DEVICE_INTERNAL_STATUS_DATA_SET : int32
		{
			SetUndefined = 0,
			Set1 = 1,
			Set2 = 2,
			Set3 = 3,
			Set4 = 4,
			SetMax = 5,
		}
		public enum STORAGE_SANITIZE_METHOD : int32
		{
			Default = 0,
			BlockErase = 1,
			CryptoErase = 2,
		}
		public enum WRITE_CACHE_TYPE : int32
		{
			Unknown = 0,
			None = 1,
			WriteBack = 2,
			WriteThrough = 3,
		}
		public enum WRITE_CACHE_ENABLE : int32
		{
			EnableUnknown = 0,
			Disabled = 1,
			Enabled = 2,
		}
		public enum WRITE_CACHE_CHANGE : int32
		{
			ChangeUnknown = 0,
			NotChangeable = 1,
			Changeable = 2,
		}
		public enum WRITE_THROUGH : int32
		{
			Unknown = 0,
			NotSupported = 1,
			Supported = 2,
		}
		public enum _DEVICEDUMP_COLLECTION_TYPE : int32
		{
			BugCheck = 1,
			ApplicationRequested = 2,
			DeviceRequested = 3,
		}
		public enum STORAGE_POWERUP_REASON_TYPE : int32
		{
			Unknown = 0,
			IO = 1,
			DeviceAttention = 2,
		}
		public enum STORAGE_DEVICE_POWER_CAP_UNITS : int32
		{
			Percent = 0,
			Milliwatts = 1,
		}
		public enum STORAGE_RPMB_COMMAND_TYPE : int32
		{
			ProgramAuthKey = 1,
			QueryWriteCounter = 2,
			AuthenticatedWrite = 3,
			AuthenticatedRead = 4,
			ReadResultRequest = 5,
			AuthenticatedDeviceConfigWrite = 6,
			AuthenticatedDeviceConfigRead = 7,
		}
		public enum STORAGE_COUNTER_TYPE : int32
		{
			Unknown = 0,
			TemperatureCelsius = 1,
			TemperatureCelsiusMax = 2,
			ReadErrorsTotal = 3,
			ReadErrorsCorrected = 4,
			ReadErrorsUncorrected = 5,
			WriteErrorsTotal = 6,
			WriteErrorsCorrected = 7,
			WriteErrorsUncorrected = 8,
			ManufactureDate = 9,
			StartStopCycleCount = 10,
			StartStopCycleCountMax = 11,
			LoadUnloadCycleCount = 12,
			LoadUnloadCycleCountMax = 13,
			WearPercentage = 14,
			WearPercentageWarning = 15,
			WearPercentageMax = 16,
			PowerOnHours = 17,
			ReadLatency100NSMax = 18,
			WriteLatency100NSMax = 19,
			FlushLatency100NSMax = 20,
			Max = 21,
		}
		public enum STORAGE_ATTRIBUTE_MGMT_ACTION : int32
		{
			ClearAttribute = 0,
			SetAttribute = 1,
			ResetAttribute = 2,
		}
		public enum SCM_REGION_FLAG : int32
		{
			None = 0,
			Label = 1,
		}
		public enum SCM_BUS_QUERY_TYPE : int32
		{
			Descriptor = 0,
			IsSupported = 1,
			Max = 2,
		}
		public enum SCM_BUS_SET_TYPE : int32
		{
			Descriptor = 0,
			IsSupported = 1,
			Max = 2,
		}
		public enum SCM_BUS_PROPERTY_ID : int32
		{
			RuntimeFwActivationInfo = 0,
			DedicatedMemoryInfo = 1,
			DedicatedMemoryState = 2,
			Max = 3,
		}
		public enum SCM_BUS_FIRMWARE_ACTIVATION_STATE : int32
		{
			Idle = 0,
			Armed = 1,
			Busy = 2,
		}
		public enum SCM_PD_QUERY_TYPE : int32
		{
			Descriptor = 0,
			IsSupported = 1,
			Max = 2,
		}
		public enum SCM_PD_SET_TYPE : int32
		{
			Descriptor = 0,
			IsSupported = 1,
			Max = 2,
		}
		public enum SCM_PD_PROPERTY_ID : int32
		{
			DeviceInfo = 0,
			ManagementStatus = 1,
			FirmwareInfo = 2,
			LocationString = 3,
			DeviceSpecificInfo = 4,
			DeviceHandle = 5,
			FruIdString = 6,
			RuntimeFwActivationInfo = 7,
			RuntimeFwActivationArmState = 8,
			Max = 9,
		}
		public enum SCM_PD_HEALTH_STATUS : int32
		{
			Unknown = 0,
			Unhealthy = 1,
			Warning = 2,
			Healthy = 3,
			Max = 4,
		}
		public enum SCM_PD_OPERATIONAL_STATUS : int32
		{
			Unknown = 0,
			Ok = 1,
			PredictingFailure = 2,
			InService = 3,
			HardwareError = 4,
			NotUsable = 5,
			TransientError = 6,
			Missing = 7,
			Max = 8,
		}
		public enum SCM_PD_OPERATIONAL_STATUS_REASON : int32
		{
			Unknown = 0,
			Media = 1,
			ThresholdExceeded = 2,
			LostData = 3,
			EnergySource = 4,
			Configuration = 5,
			DeviceController = 6,
			MediaController = 7,
			Component = 8,
			BackgroundOperation = 9,
			InvalidFirmware = 10,
			HealthCheck = 11,
			LostDataPersistence = 12,
			DisabledByPlatform = 13,
			PermanentError = 14,
			LostWritePersistence = 15,
			FatalError = 16,
			DataPersistenceLossImminent = 17,
			WritePersistenceLossImminent = 18,
			MediaRemainingSpareBlock = 19,
			PerformanceDegradation = 20,
			ExcessiveTemperature = 21,
			InternalFailure = 22,
			Max = 23,
		}
		public enum SCM_PD_LAST_FW_ACTIVATION_STATUS : int32
		{
			ActivationStatus_None = 0,
			ActivationStatus_Success = 1,
			ActivationStatus_FwNotFound = 2,
			ActivationStatus_ColdRebootRequired = 3,
			ActivaitonStatus_ActivationInProgress = 4,
			ActivaitonStatus_Retry = 5,
			ActivaitonStatus_FwUnsupported = 6,
			ActivaitonStatus_UnknownError = 7,
		}
		public enum SCM_PD_FIRMWARE_ACTIVATION_STATE : int32
		{
			Idle = 0,
			Armed = 1,
			Busy = 2,
		}
		public enum SCM_PD_MEDIA_REINITIALIZATION_STATUS : int32
		{
			Success = 0,
			RebootNeeded = 1,
			ColdBootNeeded = 2,
			Max = 3,
		}
		public enum MEDIA_TYPE : int32
		{
			Unknown = 0,
			F5_1Pt2_512 = 1,
			F3_1Pt44_512 = 2,
			F3_2Pt88_512 = 3,
			F3_20Pt8_512 = 4,
			F3_720_512 = 5,
			F5_360_512 = 6,
			F5_320_512 = 7,
			F5_320_1024 = 8,
			F5_180_512 = 9,
			F5_160_512 = 10,
			RemovableMedia = 11,
			FixedMedia = 12,
			F3_120M_512 = 13,
			F3_640_512 = 14,
			F5_640_512 = 15,
			F5_720_512 = 16,
			F3_1Pt2_512 = 17,
			F3_1Pt23_1024 = 18,
			F5_1Pt23_1024 = 19,
			F3_128Mb_512 = 20,
			F3_230Mb_512 = 21,
			F8_256_128 = 22,
			F3_200Mb_512 = 23,
			F3_240M_512 = 24,
			F3_32M_512 = 25,
		}
		public enum PARTITION_STYLE : int32
		{
			MBR = 0,
			GPT = 1,
			RAW = 2,
		}
		public enum DETECTION_TYPE : int32
		{
			None = 0,
			Int13 = 1,
			ExInt13 = 2,
		}
		public enum DISK_CACHE_RETENTION_PRIORITY : int32
		{
			EqualPriority = 0,
			KeepPrefetchedData = 1,
			KeepReadData = 2,
		}
		public enum BIN_TYPES : int32
		{
			Size = 0,
			Location = 1,
		}
		public enum ELEMENT_TYPE : int32
		{
			AllElements = 0,
			ChangerTransport = 1,
			ChangerSlot = 2,
			ChangerIEPort = 3,
			ChangerDrive = 4,
			ChangerDoor = 5,
			ChangerKeypad = 6,
			ChangerMaxElement = 7,
		}
		public enum CHANGER_DEVICE_PROBLEM_TYPE : int32
		{
			None = 0,
			Hardware = 1,
			CHMError = 2,
			DoorOpen = 3,
			CalibrationError = 4,
			TargetFailure = 5,
			CHMMoveError = 6,
			CHMZeroError = 7,
			CartridgeInsertError = 8,
			PositionError = 9,
			SensorError = 10,
			CartridgeEjectError = 11,
			GripperError = 12,
			DriveError = 13,
		}
		public enum SHRINK_VOLUME_REQUEST_TYPES : int32
		{
			Prepare = 1,
			Commit = 2,
			Abort = 3,
		}
		public enum CSV_CONTROL_OP : int32
		{
			StartRedirectFile = 2,
			StopRedirectFile = 3,
			QueryRedirectState = 4,
			QueryFileRevision = 6,
			QueryMdsPath = 8,
			QueryFileRevisionFileId128 = 9,
			QueryVolumeRedirectState = 10,
			EnableUSNRangeModificationTracking = 13,
			MarkHandleLocalVolumeMount = 14,
			UnmarkHandleLocalVolumeMount = 15,
			GetCsvFsMdsPathV2 = 18,
			DisableCaching = 19,
			EnableCaching = 20,
			StartForceDFO = 21,
			StopForceDFO = 22,
			QueryMdsPathNoPause = 23,
			SetVolumeId = 24,
			QueryVolumeId = 25,
		}
		public enum CSVFS_DISK_CONNECTIVITY : int32
		{
			None = 0,
			MdsNodeOnly = 1,
			SubsetOfNodes = 2,
			AllNodes = 3,
		}
		public enum STORAGE_RESERVE_ID : int32
		{
			None = 0,
			Hard = 1,
			Soft = 2,
			UpdateScratch = 3,
			Max = 4,
		}
		public enum QUERY_FILE_LAYOUT_FILTER_TYPE : int32
		{
			FILTER_TYPE_NONE = 0,
			FILTER_TYPE_CLUSTERS = 1,
			FILTER_TYPE_FILEID = 2,
			FILTER_TYPE_STORAGE_RESERVE_ID = 3,
			NUM_FILTER_TYPES = 4,
		}
		public enum FILE_STORAGE_TIER_MEDIA_TYPE : int32
		{
			Unspecified = 0,
			Disk = 1,
			Ssd = 2,
			Scm = 4,
			Max = 5,
		}
		public enum FILE_STORAGE_TIER_CLASS : int32
		{
			Unspecified = 0,
			Capacity = 1,
			Performance = 2,
			Max = 3,
		}
		public enum DUPLICATE_EXTENTS_STATE : int32
		{
			Inactive = 0,
			Source = 1,
			Target = 2,
		}
		public enum REFS_SMR_VOLUME_GC_STATE : int32
		{
			Inactive = 0,
			Paused = 1,
			Active = 2,
			ActiveFullSpeed = 3,
		}
		public enum REFS_SMR_VOLUME_GC_ACTION : int32
		{
			Start = 1,
			StartFullSpeed = 2,
			Pause = 3,
			Stop = 4,
		}
		public enum REFS_SMR_VOLUME_GC_METHOD : int32
		{
			Compaction = 1,
			Compression = 2,
			Rotation = 3,
		}
		public enum VIRTUAL_STORAGE_BEHAVIOR_CODE : int32
		{
			Undefined = 0,
			CacheWriteThrough = 1,
			CacheWriteBack = 2,
			StopIoProcessing = 3,
			RestartIoProcessing = 4,
		}
		public enum FS_BPIO_OPERATIONS : int32
		{
			ENABLE = 1,
			DISABLE = 2,
			QUERY = 3,
			VOLUME_STACK_PAUSE = 4,
			VOLUME_STACK_RESUME = 5,
			STREAM_PAUSE = 6,
			STREAM_RESUME = 7,
			GET_INFO = 8,
			MAX_OPERATION = 9,
		}
		public enum FS_BPIO_INFLAGS : int32
		{
			None = 0,
			SKIP_STORAGE_STACK_QUERY = 1,
		}
		public enum FS_BPIO_OUTFLAGS : int32
		{
			None = 0,
			VOLUME_STACK_BYPASS_PAUSED = 1,
			STREAM_BYPASS_PAUSED = 2,
			FILTER_ATTACH_BLOCKED = 4,
			COMPATIBLE_STORAGE_DRIVER = 8,
		}
		
		// --- Function Pointers ---
		
		public function void PIO_IRP_EXT_PROCESS_TRACKED_OFFSET_CALLBACK(ref IO_IRP_EXT_TRACK_OFFSET_HEADER SourceContext, out IO_IRP_EXT_TRACK_OFFSET_HEADER TargetContext, int64 RelativeOffset);
		
		// --- Structs ---
		
		[CRepr]
		public struct STORAGE_HOTPLUG_INFO
		{
			public uint32 Size;
			public BOOLEAN MediaRemovable;
			public BOOLEAN MediaHotplug;
			public BOOLEAN DeviceHotplug;
			public BOOLEAN WriteCacheEnableOverride;
		}
		[CRepr]
		public struct STORAGE_DEVICE_NUMBER
		{
			public uint32 DeviceType;
			public uint32 DeviceNumber;
			public uint32 PartitionNumber;
		}
		[CRepr]
		public struct STORAGE_DEVICE_NUMBERS
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumberOfDevices;
			public STORAGE_DEVICE_NUMBER[0] Devices;
		}
		[CRepr]
		public struct STORAGE_DEVICE_NUMBER_EX
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 DeviceType;
			public uint32 DeviceNumber;
			public Guid DeviceGuid;
			public uint32 PartitionNumber;
		}
		[CRepr]
		public struct STORAGE_BUS_RESET_REQUEST
		{
			public uint8 PathId;
		}
		[CRepr]
		public struct STORAGE_BREAK_RESERVATION_REQUEST
		{
			public uint32 Length;
			public uint8 _unused;
			public uint8 PathId;
			public uint8 TargetId;
			public uint8 Lun;
		}
		[CRepr]
		public struct PREVENT_MEDIA_REMOVAL
		{
			public BOOLEAN PreventMediaRemoval;
		}
		[CRepr]
		public struct CLASS_MEDIA_CHANGE_CONTEXT
		{
			public uint32 MediaChangeCount;
			public uint32 NewState;
		}
		[CRepr]
		public struct TAPE_STATISTICS
		{
			public uint32 Version;
			public uint32 Flags;
			public LARGE_INTEGER RecoveredWrites;
			public LARGE_INTEGER UnrecoveredWrites;
			public LARGE_INTEGER RecoveredReads;
			public LARGE_INTEGER UnrecoveredReads;
			public uint8 CompressionRatioReads;
			public uint8 CompressionRatioWrites;
		}
		[CRepr]
		public struct TAPE_GET_STATISTICS
		{
			public uint32 Operation;
		}
		[CRepr]
		public struct DEVICE_MEDIA_INFO
		{
			public _DeviceSpecific_e__Union DeviceSpecific;
			
			[CRepr, Union]
			public struct _DeviceSpecific_e__Union
			{
				public _DiskInfo_e__Struct DiskInfo;
				public _RemovableDiskInfo_e__Struct RemovableDiskInfo;
				public _TapeInfo_e__Struct TapeInfo;
				
				[CRepr]
				public struct _TapeInfo_e__Struct
				{
					public STORAGE_MEDIA_TYPE MediaType;
					public uint32 MediaCharacteristics;
					public uint32 CurrentBlockSize;
					public STORAGE_BUS_TYPE BusType;
					public _BusSpecificData_e__Union BusSpecificData;
					
					[CRepr, Union]
					public struct _BusSpecificData_e__Union
					{
						public _ScsiInformation_e__Struct ScsiInformation;
						
						[CRepr]
						public struct _ScsiInformation_e__Struct
						{
							public uint8 MediumType;
							public uint8 DensityCode;
						}
					}
				}
				[CRepr]
				public struct _DiskInfo_e__Struct
				{
					public LARGE_INTEGER Cylinders;
					public STORAGE_MEDIA_TYPE MediaType;
					public uint32 TracksPerCylinder;
					public uint32 SectorsPerTrack;
					public uint32 BytesPerSector;
					public uint32 NumberMediaSides;
					public uint32 MediaCharacteristics;
				}
				[CRepr]
				public struct _RemovableDiskInfo_e__Struct
				{
					public LARGE_INTEGER Cylinders;
					public STORAGE_MEDIA_TYPE MediaType;
					public uint32 TracksPerCylinder;
					public uint32 SectorsPerTrack;
					public uint32 BytesPerSector;
					public uint32 NumberMediaSides;
					public uint32 MediaCharacteristics;
				}
			}
		}
		[CRepr]
		public struct GET_MEDIA_TYPES
		{
			public uint32 DeviceType;
			public uint32 MediaInfoCount;
			public DEVICE_MEDIA_INFO[0] MediaInfo;
		}
		[CRepr]
		public struct STORAGE_PREDICT_FAILURE
		{
			public uint32 PredictFailure;
			public uint8[512] VendorSpecific;
		}
		[CRepr]
		public struct STORAGE_FAILURE_PREDICTION_CONFIG
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN Set;
			public BOOLEAN Enabled;
			public uint16 Reserved;
		}
		[CRepr]
		public struct STORAGE_PROPERTY_QUERY
		{
			public STORAGE_PROPERTY_ID PropertyId;
			public STORAGE_QUERY_TYPE QueryType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct STORAGE_PROPERTY_SET
		{
			public STORAGE_PROPERTY_ID PropertyId;
			public STORAGE_SET_TYPE SetType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct STORAGE_DESCRIPTOR_HEADER
		{
			public uint32 Version;
			public uint32 Size;
		}
		[CRepr]
		public struct STORAGE_DEVICE_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 DeviceType;
			public uint8 DeviceTypeModifier;
			public BOOLEAN RemovableMedia;
			public BOOLEAN CommandQueueing;
			public uint32 VendorIdOffset;
			public uint32 ProductIdOffset;
			public uint32 ProductRevisionOffset;
			public uint32 SerialNumberOffset;
			public STORAGE_BUS_TYPE BusType;
			public uint32 RawPropertiesLength;
			public uint8[0] RawDeviceProperties;
		}
		[CRepr]
		public struct STORAGE_ADAPTER_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 MaximumTransferLength;
			public uint32 MaximumPhysicalPages;
			public uint32 AlignmentMask;
			public BOOLEAN AdapterUsesPio;
			public BOOLEAN AdapterScansDown;
			public BOOLEAN CommandQueueing;
			public BOOLEAN AcceleratedTransfer;
			public uint8 BusType;
			public uint16 BusMajorVersion;
			public uint16 BusMinorVersion;
			public uint8 SrbType;
			public uint8 AddressType;
		}
		[CRepr]
		public struct STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 BytesPerCacheLine;
			public uint32 BytesOffsetForCacheAlignment;
			public uint32 BytesPerLogicalSector;
			public uint32 BytesPerPhysicalSector;
			public uint32 BytesOffsetForSectorAlignment;
		}
		[CRepr]
		public struct STORAGE_MEDIUM_PRODUCT_TYPE_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 MediumProductType;
		}
		[CRepr]
		public struct STORAGE_MINIPORT_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_PORT_CODE_SET Portdriver;
			public BOOLEAN LUNResetSupported;
			public BOOLEAN TargetResetSupported;
			public uint16 IoTimeoutValue;
			public BOOLEAN ExtraIoInfoSupported;
			public _Flags_e__Union Flags;
			public uint8[2] Reserved0;
			public uint32 Reserved1;
			
			[CRepr, Union]
			public struct _Flags_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint8 AsBYTE;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 _bitfield;
				}
			}
		}
		[CRepr]
		public struct STORAGE_IDENTIFIER
		{
			public STORAGE_IDENTIFIER_CODE_SET CodeSet;
			public STORAGE_IDENTIFIER_TYPE Type;
			public uint16 IdentifierSize;
			public uint16 NextOffset;
			public STORAGE_ASSOCIATION_TYPE Association;
			public uint8[0] Identifier;
		}
		[CRepr]
		public struct STORAGE_DEVICE_ID_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumberOfIdentifiers;
			public uint8[0] Identifiers;
		}
		[CRepr]
		public struct DEVICE_SEEK_PENALTY_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN IncursSeekPenalty;
		}
		[CRepr]
		public struct DEVICE_WRITE_AGGREGATION_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN BenefitsFromWriteAggregation;
		}
		[CRepr]
		public struct DEVICE_TRIM_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN TrimEnabled;
		}
		[CRepr]
		public struct DEVICE_LB_PROVISIONING_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 _bitfield;
			public uint8[7] Reserved1;
			public uint64 OptimalUnmapGranularity;
			public uint64 UnmapGranularityAlignment;
			public uint32 MaxUnmapLbaCount;
			public uint32 MaxUnmapBlockDescriptorCount;
		}
		[CRepr]
		public struct STORAGE_LB_PROVISIONING_MAP_RESOURCES
		{
			public uint32 Size;
			public uint32 Version;
			public uint8 _bitfield1;
			public uint8[3] Reserved1;
			public uint8 _bitfield2;
			public uint8[3] Reserved3;
			public uint64 AvailableMappingResources;
			public uint64 UsedMappingResources;
		}
		[CRepr]
		public struct DEVICE_POWER_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN DeviceAttentionSupported;
			public BOOLEAN AsynchronousNotificationSupported;
			public BOOLEAN IdlePowerManagementEnabled;
			public BOOLEAN D3ColdEnabled;
			public BOOLEAN D3ColdSupported;
			public BOOLEAN NoVerifyDuringIdlePower;
			public uint8[2] Reserved;
			public uint32 IdleTimeoutInMS;
		}
		[CRepr]
		public struct DEVICE_COPY_OFFLOAD_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 MaximumTokenLifetime;
			public uint32 DefaultTokenLifetime;
			public uint64 MaximumTransferSize;
			public uint64 OptimalTransferCount;
			public uint32 MaximumDataDescriptors;
			public uint32 MaximumTransferLengthPerDescriptor;
			public uint32 OptimalTransferLengthPerDescriptor;
			public uint16 OptimalTransferLengthGranularity;
			public uint8[2] Reserved;
		}
		[CRepr]
		public struct STORAGE_DEVICE_RESILIENCY_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NameOffset;
			public uint32 NumberOfLogicalCopies;
			public uint32 NumberOfPhysicalCopies;
			public uint32 PhysicalDiskRedundancy;
			public uint32 NumberOfColumns;
			public uint32 Interleave;
		}
		[CRepr]
		public struct STORAGE_RPMB_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 SizeInBytes;
			public uint32 MaxReliableWriteSizeInBytes;
			public STORAGE_RPMB_FRAME_TYPE FrameFormat;
		}
		[CRepr]
		public struct STORAGE_CRYPTO_CAPABILITY
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 CryptoCapabilityIndex;
			public STORAGE_CRYPTO_ALGORITHM_ID AlgorithmId;
			public STORAGE_CRYPTO_KEY_SIZE KeySize;
			public uint32 DataUnitSizeBitmask;
		}
		[CRepr]
		public struct STORAGE_CRYPTO_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumKeysSupported;
			public uint32 NumCryptoCapabilities;
			public STORAGE_CRYPTO_CAPABILITY[0] CryptoCapabilities;
		}
		[CRepr]
		public struct STORAGE_TIER
		{
			public Guid Id;
			public char16[256] Name;
			public char16[256] Description;
			public uint64 Flags;
			public uint64 ProvisionedCapacity;
			public STORAGE_TIER_MEDIA_TYPE MediaType;
			public STORAGE_TIER_CLASS Class;
		}
		[CRepr]
		public struct STORAGE_DEVICE_TIERING_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 TotalNumberOfTiers;
			public uint32 NumberOfTiersReturned;
			public STORAGE_TIER[0] Tiers;
		}
		[CRepr]
		public struct STORAGE_DEVICE_FAULT_DOMAIN_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumberOfFaultDomains;
			public Guid[0] FaultDomainIds;
		}
		[CRepr, Union]
		public struct STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUlong;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct STORAGE_PROTOCOL_SPECIFIC_DATA
		{
			public STORAGE_PROTOCOL_TYPE ProtocolType;
			public uint32 DataType;
			public uint32 ProtocolDataRequestValue;
			public uint32 ProtocolDataRequestSubValue;
			public uint32 ProtocolDataOffset;
			public uint32 ProtocolDataLength;
			public uint32 FixedProtocolReturnData;
			public uint32 ProtocolDataRequestSubValue2;
			public uint32 ProtocolDataRequestSubValue3;
			public uint32 ProtocolDataRequestSubValue4;
		}
		[CRepr]
		public struct STORAGE_PROTOCOL_SPECIFIC_DATA_EXT
		{
			public STORAGE_PROTOCOL_TYPE ProtocolType;
			public uint32 DataType;
			public uint32 ProtocolDataValue;
			public uint32 ProtocolDataSubValue;
			public uint32 ProtocolDataOffset;
			public uint32 ProtocolDataLength;
			public uint32 FixedProtocolReturnData;
			public uint32 ProtocolDataSubValue2;
			public uint32 ProtocolDataSubValue3;
			public uint32 ProtocolDataSubValue4;
			public uint32 ProtocolDataSubValue5;
			public uint32[5] Reserved;
		}
		[CRepr]
		public struct STORAGE_PROTOCOL_DATA_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_PROTOCOL_SPECIFIC_DATA ProtocolSpecificData;
		}
		[CRepr]
		public struct STORAGE_PROTOCOL_DATA_DESCRIPTOR_EXT
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_PROTOCOL_SPECIFIC_DATA_EXT ProtocolSpecificData;
		}
		[CRepr]
		public struct STORAGE_TEMPERATURE_INFO
		{
			public uint16 Index;
			public int16 Temperature;
			public int16 OverThreshold;
			public int16 UnderThreshold;
			public BOOLEAN OverThresholdChangable;
			public BOOLEAN UnderThresholdChangable;
			public BOOLEAN EventGenerated;
			public uint8 Reserved0;
			public uint32 Reserved1;
		}
		[CRepr]
		public struct STORAGE_TEMPERATURE_DATA_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public int16 CriticalTemperature;
			public int16 WarningTemperature;
			public uint16 InfoCount;
			public uint8[2] Reserved0;
			public uint32[2] Reserved1;
			public STORAGE_TEMPERATURE_INFO[0] TemperatureInfo;
		}
		[CRepr]
		public struct STORAGE_TEMPERATURE_THRESHOLD
		{
			public uint32 Version;
			public uint32 Size;
			public uint16 Flags;
			public uint16 Index;
			public int16 Threshold;
			public BOOLEAN OverThreshold;
			public uint8 Reserved;
		}
		[CRepr, Union]
		public struct STORAGE_SPEC_VERSION
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUlong;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public _MinorVersion_e__Union MinorVersion;
				public uint16 MajorVersion;
				
				[CRepr, Union]
				public struct _MinorVersion_e__Union
				{
					public _Anonymous_e__Struct Anonymous;
					public uint16 AsUshort;
					
					[CRepr]
					public struct _Anonymous_e__Struct
					{
						public uint8 SubMinor;
						public uint8 Minor;
					}
				}
			}
		}
		[CRepr]
		public struct STORAGE_PHYSICAL_DEVICE_DATA
		{
			public uint32 DeviceId;
			public uint32 Role;
			public STORAGE_COMPONENT_HEALTH_STATUS HealthStatus;
			public STORAGE_PROTOCOL_TYPE CommandProtocol;
			public STORAGE_SPEC_VERSION SpecVersion;
			public STORAGE_DEVICE_FORM_FACTOR FormFactor;
			public uint8[8] Vendor;
			public uint8[40] Model;
			public uint8[16] FirmwareRevision;
			public uint64 Capacity;
			public uint8[32] PhysicalLocation;
			public uint32[2] Reserved;
		}
		[CRepr]
		public struct STORAGE_PHYSICAL_ADAPTER_DATA
		{
			public uint32 AdapterId;
			public STORAGE_COMPONENT_HEALTH_STATUS HealthStatus;
			public STORAGE_PROTOCOL_TYPE CommandProtocol;
			public STORAGE_SPEC_VERSION SpecVersion;
			public uint8[8] Vendor;
			public uint8[40] Model;
			public uint8[16] FirmwareRevision;
			public uint8[32] PhysicalLocation;
			public BOOLEAN ExpanderConnected;
			public uint8[3] Reserved0;
			public uint32[3] Reserved1;
		}
		[CRepr]
		public struct STORAGE_PHYSICAL_NODE_DATA
		{
			public uint32 NodeId;
			public uint32 AdapterCount;
			public uint32 AdapterDataLength;
			public uint32 AdapterDataOffset;
			public uint32 DeviceCount;
			public uint32 DeviceDataLength;
			public uint32 DeviceDataOffset;
			public uint32[3] Reserved;
		}
		[CRepr]
		public struct STORAGE_PHYSICAL_TOPOLOGY_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NodeCount;
			public uint32 Reserved;
			public STORAGE_PHYSICAL_NODE_DATA[0] Node;
		}
		[CRepr]
		public struct STORAGE_DEVICE_IO_CAPABILITY_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 LunMaxIoCount;
			public uint32 AdapterMaxIoCount;
		}
		[CRepr]
		public struct STORAGE_DEVICE_ATTRIBUTES_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 Attributes;
		}
		[CRepr]
		public struct STORAGE_OPERATIONAL_REASON
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_OPERATIONAL_STATUS_REASON Reason;
			public _RawBytes_e__Union RawBytes;
			
			[CRepr, Union]
			public struct _RawBytes_e__Union
			{
				public _ScsiSenseKey_e__Struct ScsiSenseKey;
				public _NVDIMM_N_e__Struct NVDIMM_N;
				public uint32 AsUlong;
				
				[CRepr]
				public struct _ScsiSenseKey_e__Struct
				{
					public uint8 SenseKey;
					public uint8 ASC;
					public uint8 ASCQ;
					public uint8 Reserved;
				}
				[CRepr]
				public struct _NVDIMM_N_e__Struct
				{
					public uint8 CriticalHealth;
					public uint8[2] ModuleHealth;
					public uint8 ErrorThresholdStatus;
				}
			}
		}
		[CRepr]
		public struct STORAGE_DEVICE_MANAGEMENT_STATUS
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_DISK_HEALTH_STATUS Health;
			public uint32 NumberOfOperationalStatus;
			public uint32 NumberOfAdditionalReasons;
			public STORAGE_DISK_OPERATIONAL_STATUS[16] OperationalStatus;
			public STORAGE_OPERATIONAL_REASON[0] AdditionalReasons;
		}
		[CRepr]
		public struct STORAGE_ADAPTER_SERIAL_NUMBER
		{
			public uint32 Version;
			public uint32 Size;
			public char16[128] SerialNumber;
		}
		[CRepr]
		public struct STORAGE_ZONE_GROUP
		{
			public uint32 ZoneCount;
			public STORAGE_ZONE_TYPES ZoneType;
			public uint64 ZoneSize;
		}
		[CRepr]
		public struct STORAGE_ZONED_DEVICE_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_ZONED_DEVICE_TYPES DeviceType;
			public uint32 ZoneCount;
			public _ZoneAttributes_e__Union ZoneAttributes;
			public uint32 ZoneGroupCount;
			public STORAGE_ZONE_GROUP[0] ZoneGroup;
			
			[CRepr, Union]
			public struct _ZoneAttributes_e__Union
			{
				public _SequentialRequiredZone_e__Struct SequentialRequiredZone;
				public _SequentialPreferredZone_e__Struct SequentialPreferredZone;
				
				[CRepr]
				public struct _SequentialRequiredZone_e__Struct
				{
					public uint32 MaxOpenZoneCount;
					public BOOLEAN UnrestrictedRead;
					public uint8[3] Reserved;
				}
				[CRepr]
				public struct _SequentialPreferredZone_e__Struct
				{
					public uint32 OptimalOpenZoneCount;
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct DEVICE_LOCATION
		{
			public uint32 Socket;
			public uint32 Slot;
			public uint32 Adapter;
			public uint32 Port;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 Channel;
					public uint32 Device;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 Target;
					public uint32 Lun;
				}
			}
		}
		[CRepr]
		public struct STORAGE_DEVICE_LOCATION_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public DEVICE_LOCATION Location;
			public uint32 StringOffset;
		}
		[CRepr]
		public struct STORAGE_DEVICE_NUMA_PROPERTY
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumaNode;
		}
		[CRepr]
		public struct STORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 UnsafeShutdownCount;
		}
		[CRepr]
		public struct STORAGE_HW_ENDURANCE_INFO
		{
			public uint32 ValidFields;
			public uint32 GroupId;
			public _Flags_e__Struct Flags;
			public uint32 LifePercentage;
			public uint8[16] BytesReadCount;
			public uint8[16] ByteWriteCount;
			
			[CRepr]
			public struct _Flags_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct STORAGE_HW_ENDURANCE_DATA_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_HW_ENDURANCE_INFO EnduranceInfo;
		}
		[CRepr]
		public struct STORAGE_DEVICE_LED_STATE_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 State;
		}
		[CRepr]
		public struct STORAGE_DEVICE_SELF_ENCRYPTION_PROPERTY
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN SupportsSelfEncryption;
		}
		[CRepr]
		public struct STORAGE_FRU_ID_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 IdentifierSize;
			public uint8[0] Identifier;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_RANGE
		{
			public int64 StartingOffset;
			public uint64 LengthInBytes;
		}
		[CRepr]
		public struct DEVICE_MANAGE_DATA_SET_ATTRIBUTES
		{
			public uint32 Size;
			public uint32 Action;
			public uint32 Flags;
			public uint32 ParameterBlockOffset;
			public uint32 ParameterBlockLength;
			public uint32 DataSetRangesOffset;
			public uint32 DataSetRangesLength;
		}
		[CRepr]
		public struct DEVICE_MANAGE_DATA_SET_ATTRIBUTES_OUTPUT
		{
			public uint32 Size;
			public uint32 Action;
			public uint32 Flags;
			public uint32 OperationStatus;
			public uint32 ExtendedError;
			public uint32 TargetDetailedError;
			public uint32 ReservedStatus;
			public uint32 OutputBlockOffset;
			public uint32 OutputBlockLength;
		}
		[CRepr]
		public struct DEVICE_DSM_DEFINITION
		{
			public uint32 Action;
			public BOOLEAN SingleRange;
			public uint32 ParameterBlockAlignment;
			public uint32 ParameterBlockLength;
			public BOOLEAN HasOutput;
			public uint32 OutputBlockAlignment;
			public uint32 OutputBlockLength;
		}
		[CRepr]
		public struct DEVICE_DSM_NOTIFICATION_PARAMETERS
		{
			public uint32 Size;
			public uint32 Flags;
			public uint32 NumFileTypeIDs;
			public Guid[0] FileTypeID;
		}
		[CRepr]
		public struct STORAGE_OFFLOAD_TOKEN
		{
			public uint8[4] TokenType;
			public uint8[2] Reserved;
			public uint8[2] TokenIdLength;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _StorageOffloadZeroDataToken_e__Struct StorageOffloadZeroDataToken;
				public uint8[504] Token;
				
				[CRepr]
				public struct _StorageOffloadZeroDataToken_e__Struct
				{
					public uint8[504] Reserved2;
				}
			}
		}
		[CRepr]
		public struct DEVICE_DSM_OFFLOAD_READ_PARAMETERS
		{
			public uint32 Flags;
			public uint32 TimeToLive;
			public uint32[2] Reserved;
		}
		[CRepr]
		public struct STORAGE_OFFLOAD_READ_OUTPUT
		{
			public uint32 OffloadReadFlags;
			public uint32 Reserved;
			public uint64 LengthProtected;
			public uint32 TokenLength;
			public STORAGE_OFFLOAD_TOKEN Token;
		}
		[CRepr]
		public struct DEVICE_DSM_OFFLOAD_WRITE_PARAMETERS
		{
			public uint32 Flags;
			public uint32 Reserved;
			public uint64 TokenOffset;
			public STORAGE_OFFLOAD_TOKEN Token;
		}
		[CRepr]
		public struct STORAGE_OFFLOAD_WRITE_OUTPUT
		{
			public uint32 OffloadWriteFlags;
			public uint32 Reserved;
			public uint64 LengthCopied;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_LBP_STATE_PARAMETERS
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 OutputVersion;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_LB_PROVISIONING_STATE
		{
			public uint32 Size;
			public uint32 Version;
			public uint64 SlabSizeInBytes;
			public uint32 SlabOffsetDeltaInBytes;
			public uint32 SlabAllocationBitMapBitCount;
			public uint32 SlabAllocationBitMapLength;
			public uint32[0] SlabAllocationBitMap;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_LB_PROVISIONING_STATE_V2
		{
			public uint32 Size;
			public uint32 Version;
			public uint64 SlabSizeInBytes;
			public uint64 SlabOffsetDeltaInBytes;
			public uint32 SlabAllocationBitMapBitCount;
			public uint32 SlabAllocationBitMapLength;
			public uint32[0] SlabAllocationBitMap;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_REPAIR_PARAMETERS
		{
			public uint32 NumberOfRepairCopies;
			public uint32 SourceCopy;
			public uint32[0] RepairCopies;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_REPAIR_OUTPUT
		{
			public DEVICE_DATA_SET_RANGE ParityExtent;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_SCRUB_OUTPUT
		{
			public uint64 BytesProcessed;
			public uint64 BytesRepaired;
			public uint64 BytesFailed;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_SCRUB_EX_OUTPUT
		{
			public uint64 BytesProcessed;
			public uint64 BytesRepaired;
			public uint64 BytesFailed;
			public DEVICE_DATA_SET_RANGE ParityExtent;
			public uint64 BytesScrubbed;
		}
		[CRepr]
		public struct DEVICE_DSM_TIERING_QUERY_INPUT
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 NumberOfTierIds;
			public Guid[0] TierIds;
		}
		[CRepr]
		public struct STORAGE_TIER_REGION
		{
			public Guid TierId;
			public uint64 Offset;
			public uint64 Length;
		}
		[CRepr]
		public struct DEVICE_DSM_TIERING_QUERY_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 Reserved;
			public uint64 Alignment;
			public uint32 TotalNumberOfRegions;
			public uint32 NumberOfRegionsReturned;
			public STORAGE_TIER_REGION[0] Regions;
		}
		[CRepr]
		public struct DEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS
		{
			public uint32 Size;
			public uint8 TargetPriority;
			public uint8[3] Reserved;
		}
		[CRepr]
		public struct DEVICE_DATA_SET_TOPOLOGY_ID_QUERY_OUTPUT
		{
			public uint64 TopologyRangeBytes;
			public uint8[16] TopologyId;
		}
		[CRepr]
		public struct DEVICE_STORAGE_ADDRESS_RANGE
		{
			public int64 StartAddress;
			public uint64 LengthInBytes;
		}
		[CRepr]
		public struct DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 TotalNumberOfRanges;
			public uint32 NumberOfRangesReturned;
			public DEVICE_STORAGE_ADDRESS_RANGE[0] Ranges;
		}
		[CRepr]
		public struct DEVICE_DSM_REPORT_ZONES_PARAMETERS
		{
			public uint32 Size;
			public uint8 ReportOption;
			public uint8 Partial;
			public uint8[2] Reserved;
		}
		[CRepr]
		public struct STORAGE_ZONE_DESCRIPTOR
		{
			public uint32 Size;
			public STORAGE_ZONE_TYPES ZoneType;
			public STORAGE_ZONE_CONDITION ZoneCondition;
			public BOOLEAN ResetWritePointerRecommend;
			public uint8[3] Reserved0;
			public uint64 ZoneSize;
			public uint64 WritePointerOffset;
		}
		[CRepr]
		public struct DEVICE_DSM_REPORT_ZONES_DATA
		{
			public uint32 Size;
			public uint32 ZoneCount;
			public STORAGE_ZONES_ATTRIBUTES Attributes;
			public uint32 Reserved0;
			public STORAGE_ZONE_DESCRIPTOR[0] ZoneDescriptors;
		}
		[CRepr]
		public struct DEVICE_STORAGE_RANGE_ATTRIBUTES
		{
			public uint64 LengthInBytes;
			public _Anonymous_e__Union Anonymous;
			public uint32 Reserved;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 AllFlags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct DEVICE_DSM_RANGE_ERROR_INFO
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 TotalNumberOfRanges;
			public uint32 NumberOfRangesReturned;
			public DEVICE_STORAGE_RANGE_ATTRIBUTES[0] Ranges;
		}
		[CRepr]
		public struct DEVICE_DSM_LOST_QUERY_PARAMETERS
		{
			public uint32 Version;
			public uint64 Granularity;
		}
		[CRepr]
		public struct DEVICE_DSM_LOST_QUERY_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 Alignment;
			public uint32 NumberOfBits;
			public uint32[0] BitMap;
		}
		[CRepr]
		public struct DEVICE_DSM_FREE_SPACE_OUTPUT
		{
			public uint32 Version;
			public uint64 FreeSpace;
		}
		[CRepr]
		public struct DEVICE_DSM_CONVERSION_OUTPUT
		{
			public uint32 Version;
			public Guid Source;
		}
		[CRepr]
		public struct STORAGE_GET_BC_PROPERTIES_OUTPUT
		{
			public uint32 MaximumRequestsPerPeriod;
			public uint32 MinimumPeriod;
			public uint64 MaximumRequestSize;
			public uint32 EstimatedTimePerRequest;
			public uint32 NumOutStandingRequests;
			public uint64 RequestSize;
		}
		[CRepr]
		public struct STORAGE_ALLOCATE_BC_STREAM_INPUT
		{
			public uint32 Version;
			public uint32 RequestsPerPeriod;
			public uint32 Period;
			public BOOLEAN RetryFailures;
			public BOOLEAN Discardable;
			public BOOLEAN[2] Reserved1;
			public uint32 AccessType;
			public uint32 AccessMode;
		}
		[CRepr]
		public struct STORAGE_ALLOCATE_BC_STREAM_OUTPUT
		{
			public uint64 RequestSize;
			public uint32 NumOutStandingRequests;
		}
		[CRepr]
		public struct STORAGE_PRIORITY_HINT_SUPPORT
		{
			public uint32 SupportFlags;
		}
		[CRepr]
		public struct STORAGE_DIAGNOSTIC_REQUEST
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public STORAGE_DIAGNOSTIC_TARGET_TYPE TargetType;
			public STORAGE_DIAGNOSTIC_LEVEL Level;
		}
		[CRepr]
		public struct STORAGE_DIAGNOSTIC_DATA
		{
			public uint32 Version;
			public uint32 Size;
			public Guid ProviderId;
			public uint32 BufferSize;
			public uint32 Reserved;
			public uint8[0] DiagnosticDataBuffer;
		}
		[CRepr]
		public struct PHYSICAL_ELEMENT_STATUS_REQUEST
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 StartingElement;
			public uint8 Filter;
			public uint8 ReportType;
			public uint8[2] Reserved;
		}
		[CRepr]
		public struct PHYSICAL_ELEMENT_STATUS_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 ElementIdentifier;
			public uint8 PhysicalElementType;
			public uint8 PhysicalElementHealth;
			public uint8[2] Reserved1;
			public uint64 AssociatedCapacity;
			public uint32[4] Reserved2;
		}
		[CRepr]
		public struct PHYSICAL_ELEMENT_STATUS
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 DescriptorCount;
			public uint32 ReturnedDescriptorCount;
			public uint32 ElementIdentifierBeingDepoped;
			public uint32 Reserved;
			public PHYSICAL_ELEMENT_STATUS_DESCRIPTOR[0] Descriptors;
		}
		[CRepr]
		public struct REMOVE_ELEMENT_AND_TRUNCATE_REQUEST
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 RequestCapacity;
			public uint32 ElementIdentifier;
			public uint32 Reserved;
		}
		[CRepr]
		public struct GET_DEVICE_INTERNAL_STATUS_DATA_REQUEST
		{
			public uint32 Version;
			public uint32 Size;
			public DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE RequestDataType;
			public DEVICE_INTERNAL_STATUS_DATA_SET RequestDataSet;
		}
		[CRepr]
		public struct DEVICE_INTERNAL_STATUS_DATA
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 T10VendorId;
			public uint32 DataSet1Length;
			public uint32 DataSet2Length;
			public uint32 DataSet3Length;
			public uint32 DataSet4Length;
			public uint8 StatusDataVersion;
			public uint8[3] Reserved;
			public uint8[128] ReasonIdentifier;
			public uint32 StatusDataLength;
			public uint8[0] StatusData;
		}
		[CRepr]
		public struct STORAGE_REINITIALIZE_MEDIA
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 TimeoutInSeconds;
			public _SanitizeOption_e__Struct SanitizeOption;
			
			[CRepr]
			public struct _SanitizeOption_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct STORAGE_MEDIA_SERIAL_NUMBER_DATA
		{
			public uint16 Reserved;
			public uint16 SerialNumberLength;
			public uint8[0] SerialNumber;
		}
		[CRepr]
		public struct STORAGE_READ_CAPACITY
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 BlockLength;
			public LARGE_INTEGER NumberOfBlocks;
			public LARGE_INTEGER DiskLength;
		}
		[CRepr]
		public struct STORAGE_WRITE_CACHE_PROPERTY
		{
			public uint32 Version;
			public uint32 Size;
			public WRITE_CACHE_TYPE WriteCacheType;
			public WRITE_CACHE_ENABLE WriteCacheEnabled;
			public WRITE_CACHE_CHANGE WriteCacheChangeable;
			public WRITE_THROUGH WriteThroughSupported;
			public BOOLEAN FlushCacheSupported;
			public BOOLEAN UserDefinedPowerProtection;
			public BOOLEAN NVCacheEnabled;
		}
		[CRepr]
		public struct PERSISTENT_RESERVE_COMMAND
		{
			public uint32 Version;
			public uint32 Size;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _PR_IN_e__Struct PR_IN;
				public _PR_OUT_e__Struct PR_OUT;
				
				[CRepr]
				public struct _PR_IN_e__Struct
				{
					public uint8 _bitfield;
					public uint16 AllocationLength;
				}
				[CRepr]
				public struct _PR_OUT_e__Struct
				{
					public uint8 _bitfield1;
					public uint8 _bitfield2;
					public uint8[0] ParameterList;
				}
			}
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_SUBSECTION_POINTER
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwOffset;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_STRUCTURE_VERSION
		{
			public uint32 dwSignature;
			public uint32 dwVersion;
			public uint32 dwSize;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_SECTION_HEADER
		{
			public Guid guidDeviceDataId;
			public uint8[16] sOrganizationID;
			public uint32 dwFirmwareRevision;
			public uint8[32] sModelNumber;
			public uint8[32] szDeviceManufacturingID;
			public uint32 dwFlags;
			public uint32 bRestrictedPrivateDataVersion;
			public uint32 dwFirmwareIssueId;
			public uint8[132] szIssueDescriptionString;
		}
		[CRepr, Packed(1)]
		public struct GP_LOG_PAGE_DESCRIPTOR
		{
			public uint16 LogAddress;
			public uint16 LogSectors;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_PUBLIC_SUBSECTION
		{
			public uint32 dwFlags;
			public GP_LOG_PAGE_DESCRIPTOR[16] GPLogTable;
			public CHAR[16] szDescription;
			public uint8[0] bData;
		}
		[CRepr]
		public struct DEVICEDUMP_RESTRICTED_SUBSECTION
		{
			public uint8[0] bData;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_PRIVATE_SUBSECTION
		{
			public uint32 dwFlags;
			public GP_LOG_PAGE_DESCRIPTOR GPLogId;
			public uint8[0] bData;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_STORAGEDEVICE_DATA
		{
			public DEVICEDUMP_STRUCTURE_VERSION Descriptor;
			public DEVICEDUMP_SECTION_HEADER SectionHeader;
			public uint32 dwBufferSize;
			public uint32 dwReasonForCollection;
			public DEVICEDUMP_SUBSECTION_POINTER PublicData;
			public DEVICEDUMP_SUBSECTION_POINTER RestrictedData;
			public DEVICEDUMP_SUBSECTION_POINTER PrivateData;
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD
		{
			public uint8[16] Cdb;
			public uint8[16] Command;
			public uint64 StartTime;
			public uint64 EndTime;
			public uint32 OperationStatus;
			public uint32 OperationError;
			public _StackSpecific_e__Union StackSpecific;
			
			[CRepr, Union]
			public struct _StackSpecific_e__Union
			{
				public _ExternalStack_e__Struct ExternalStack;
				public _AtaPort_e__Struct AtaPort;
				public _StorPort_e__Struct StorPort;
				
				[CRepr, Packed(1)]
				public struct _StorPort_e__Struct
				{
					public uint32 SrbTag;
				}
				[CRepr, Packed(1)]
				public struct _ExternalStack_e__Struct
				{
					public uint32 dwReserved;
				}
				[CRepr, Packed(1)]
				public struct _AtaPort_e__Struct
				{
					public uint32 dwAtaPortSpecific;
				}
			}
		}
		[CRepr, Packed(1)]
		public struct DEVICEDUMP_STORAGESTACK_PUBLIC_DUMP
		{
			public DEVICEDUMP_STRUCTURE_VERSION Descriptor;
			public uint32 dwReasonForCollection;
			public uint8[16] cDriverName;
			public uint32 uiNumRecords;
			public DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD[0] RecordArray;
		}
		[CRepr]
		public struct STORAGE_IDLE_POWER
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 _bitfield;
			public uint32 D3IdleTimeout;
		}
		[CRepr]
		public struct STORAGE_IDLE_POWERUP_REASON
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_POWERUP_REASON_TYPE PowerupReason;
		}
		[CRepr]
		public struct STORAGE_DEVICE_POWER_CAP
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_DEVICE_POWER_CAP_UNITS Units;
			public uint64 MaxPower;
		}
		[CRepr]
		public struct STORAGE_RPMB_DATA_FRAME
		{
			public uint8[196] Stuff;
			public uint8[32] KeyOrMAC;
			public uint8[256] Data;
			public uint8[16] Nonce;
			public uint8[4] WriteCounter;
			public uint8[2] Address;
			public uint8[2] BlockCount;
			public uint8[2] OperationResult;
			public uint8[2] RequestOrResponseType;
		}
		[CRepr]
		public struct STORAGE_EVENT_NOTIFICATION
		{
			public uint32 Version;
			public uint32 Size;
			public uint64 Events;
		}
		[CRepr]
		public struct STORAGE_COUNTER
		{
			public STORAGE_COUNTER_TYPE Type;
			public _Value_e__Union Value;
			
			[CRepr, Union]
			public struct _Value_e__Union
			{
				public _ManufactureDate_e__Struct ManufactureDate;
				public uint64 AsUlonglong;
				
				[CRepr]
				public struct _ManufactureDate_e__Struct
				{
					public uint32 Week;
					public uint32 Year;
				}
			}
		}
		[CRepr]
		public struct STORAGE_COUNTERS
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumberOfCounters;
			public STORAGE_COUNTER[0] Counters;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_INFO_QUERY
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 Reserved;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_SLOT_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 SlotNumber;
			public uint8 _bitfield;
			public uint8[6] Reserved1;
			public uint8[16] Revision;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 _bitfield;
			public uint8 SlotCount;
			public uint8 ActiveSlot;
			public uint8 PendingActivateSlot;
			public BOOLEAN FirmwareShared;
			public uint8[3] Reserved;
			public uint32 ImagePayloadAlignment;
			public uint32 ImagePayloadMaxSize;
			public STORAGE_HW_FIRMWARE_SLOT_INFO[0] Slot;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_DOWNLOAD
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint8 Slot;
			public uint8[3] Reserved;
			public uint64 Offset;
			public uint64 BufferSize;
			public uint8[0] ImageBuffer;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_DOWNLOAD_V2
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint8 Slot;
			public uint8[3] Reserved;
			public uint64 Offset;
			public uint64 BufferSize;
			public uint32 ImageSize;
			public uint32 Reserved2;
			public uint8[0] ImageBuffer;
		}
		[CRepr]
		public struct STORAGE_HW_FIRMWARE_ACTIVATE
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint8 Slot;
			public uint8[3] Reserved0;
		}
		[CRepr]
		public struct STORAGE_PROTOCOL_COMMAND
		{
			public uint32 Version;
			public uint32 Length;
			public STORAGE_PROTOCOL_TYPE ProtocolType;
			public uint32 Flags;
			public uint32 ReturnStatus;
			public uint32 ErrorCode;
			public uint32 CommandLength;
			public uint32 ErrorInfoLength;
			public uint32 DataToDeviceTransferLength;
			public uint32 DataFromDeviceTransferLength;
			public uint32 TimeOutValue;
			public uint32 ErrorInfoOffset;
			public uint32 DataToDeviceBufferOffset;
			public uint32 DataFromDeviceBufferOffset;
			public uint32 CommandSpecific;
			public uint32 Reserved0;
			public uint32 FixedProtocolReturnData;
			public uint32[3] Reserved1;
			public uint8[0] Command;
		}
		[CRepr]
		public struct STORAGE_ATTRIBUTE_MGMT
		{
			public uint32 Version;
			public uint32 Size;
			public STORAGE_ATTRIBUTE_MGMT_ACTION Action;
			public uint32 Attribute;
		}
		[CRepr]
		public struct SCM_PD_HEALTH_NOTIFICATION_DATA
		{
			public Guid DeviceGuid;
		}
		[CRepr]
		public struct SCM_LOGICAL_DEVICE_INSTANCE
		{
			public uint32 Version;
			public uint32 Size;
			public Guid DeviceGuid;
			public char16[256] SymbolicLink;
		}
		[CRepr]
		public struct SCM_LOGICAL_DEVICES
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 DeviceCount;
			public SCM_LOGICAL_DEVICE_INSTANCE[0] Devices;
		}
		[CRepr]
		public struct SCM_PHYSICAL_DEVICE_INSTANCE
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NfitHandle;
			public char16[256] SymbolicLink;
		}
		[CRepr]
		public struct SCM_PHYSICAL_DEVICES
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 DeviceCount;
			public SCM_PHYSICAL_DEVICE_INSTANCE[0] Devices;
		}
		[CRepr]
		public struct SCM_REGION
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 NfitHandle;
			public Guid LogicalDeviceGuid;
			public Guid AddressRangeType;
			public uint32 AssociatedId;
			public uint64 Length;
			public uint64 StartingDPA;
			public uint64 BaseSPA;
			public uint64 SPAOffset;
			public uint64 RegionOffset;
		}
		[CRepr]
		public struct SCM_REGIONS
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 RegionCount;
			public SCM_REGION[0] Regions;
		}
		[CRepr]
		public struct SCM_BUS_PROPERTY_QUERY
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_BUS_PROPERTY_ID PropertyId;
			public SCM_BUS_QUERY_TYPE QueryType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct SCM_BUS_RUNTIME_FW_ACTIVATION_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public BOOLEAN RuntimeFwActivationSupported;
			public SCM_BUS_FIRMWARE_ACTIVATION_STATE FirmwareActivationState;
			public _FirmwareActivationCapability_e__Struct FirmwareActivationCapability;
			public uint64 EstimatedFirmwareActivationTimeInUSecs;
			public uint64 EstimatedProcessorAccessQuiesceTimeInUSecs;
			public uint64 EstimatedIOAccessQuiesceTimeInUSecs;
			public uint64 PlatformSupportedMaxIOAccessQuiesceTimeInUSecs;
			
			[CRepr]
			public struct _FirmwareActivationCapability_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO
		{
			public Guid DeviceGuid;
			public uint32 DeviceNumber;
			public _Flags_e__Struct Flags;
			public uint64 DeviceSize;
			
			[CRepr]
			public struct _Flags_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct SCM_BUS_DEDICATED_MEMORY_DEVICES_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 DeviceCount;
			public SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO[0] Devices;
		}
		[CRepr]
		public struct SCM_BUS_PROPERTY_SET
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_BUS_PROPERTY_ID PropertyId;
			public SCM_BUS_SET_TYPE SetType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct SCM_BUS_DEDICATED_MEMORY_STATE
		{
			public BOOLEAN ActivateState;
		}
		[CRepr]
		public struct SCM_INTERLEAVED_PD_INFO
		{
			public uint32 DeviceHandle;
			public Guid DeviceGuid;
		}
		[CRepr]
		public struct SCM_LD_INTERLEAVE_SET_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 InterleaveSetSize;
			public SCM_INTERLEAVED_PD_INFO[0] InterleaveSet;
		}
		[CRepr]
		public struct SCM_PD_PROPERTY_QUERY
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_PD_PROPERTY_ID PropertyId;
			public SCM_PD_QUERY_TYPE QueryType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct SCM_PD_PROPERTY_SET
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_PD_PROPERTY_ID PropertyId;
			public SCM_PD_SET_TYPE SetType;
			public uint8[0] AdditionalParameters;
		}
		[CRepr]
		public struct SCM_PD_RUNTIME_FW_ACTIVATION_ARM_STATE
		{
			public BOOLEAN ArmState;
		}
		[CRepr]
		public struct SCM_PD_DESCRIPTOR_HEADER
		{
			public uint32 Version;
			public uint32 Size;
		}
		[CRepr]
		public struct SCM_PD_DEVICE_HANDLE
		{
			public uint32 Version;
			public uint32 Size;
			public Guid DeviceGuid;
			public uint32 DeviceHandle;
		}
		[CRepr]
		public struct SCM_PD_DEVICE_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public Guid DeviceGuid;
			public uint32 UnsafeShutdownCount;
			public uint64 PersistentMemorySizeInBytes;
			public uint64 VolatileMemorySizeInBytes;
			public uint64 TotalMemorySizeInBytes;
			public uint32 SlotNumber;
			public uint32 DeviceHandle;
			public uint16 PhysicalId;
			public uint8 NumberOfFormatInterfaceCodes;
			public uint16[8] FormatInterfaceCodes;
			public uint32 VendorId;
			public uint32 ProductId;
			public uint32 SubsystemDeviceId;
			public uint32 SubsystemVendorId;
			public uint8 ManufacturingLocation;
			public uint8 ManufacturingWeek;
			public uint8 ManufacturingYear;
			public uint32 SerialNumber4Byte;
			public uint32 SerialNumberLengthInChars;
			public CHAR[0] SerialNumber;
		}
		[CRepr]
		public struct SCM_PD_DEVICE_SPECIFIC_PROPERTY
		{
			public char16[128] Name;
			public int64 Value;
		}
		[CRepr]
		public struct SCM_PD_DEVICE_SPECIFIC_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 NumberOfProperties;
			public SCM_PD_DEVICE_SPECIFIC_PROPERTY[0] DeviceSpecificProperties;
		}
		[CRepr]
		public struct SCM_PD_FIRMWARE_SLOT_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 SlotNumber;
			public uint8 _bitfield;
			public uint8[6] Reserved1;
			public uint8[32] Revision;
		}
		[CRepr]
		public struct SCM_PD_FIRMWARE_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public uint8 ActiveSlot;
			public uint8 NextActiveSlot;
			public uint8 SlotCount;
			public SCM_PD_FIRMWARE_SLOT_INFO[0] Slots;
		}
		[CRepr]
		public struct SCM_PD_MANAGEMENT_STATUS
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_PD_HEALTH_STATUS Health;
			public uint32 NumberOfOperationalStatus;
			public uint32 NumberOfAdditionalReasons;
			public SCM_PD_OPERATIONAL_STATUS[16] OperationalStatus;
			public SCM_PD_OPERATIONAL_STATUS_REASON[0] AdditionalReasons;
		}
		[CRepr]
		public struct SCM_PD_LOCATION_STRING
		{
			public uint32 Version;
			public uint32 Size;
			public char16[0] Location;
		}
		[CRepr]
		public struct SCM_PD_FRU_ID_STRING
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 IdentifierSize;
			public uint8[0] Identifier;
		}
		[CRepr]
		public struct SCM_PD_FIRMWARE_DOWNLOAD
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint8 Slot;
			public uint8[3] Reserved;
			public uint64 Offset;
			public uint32 FirmwareImageSizeInBytes;
			public uint8[0] FirmwareImage;
		}
		[CRepr]
		public struct SCM_PD_FIRMWARE_ACTIVATE
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint8 Slot;
		}
		[CRepr]
		public struct SCM_PD_RUNTIME_FW_ACTIVATION_INFO
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_PD_LAST_FW_ACTIVATION_STATUS LastFirmwareActivationStatus;
			public SCM_PD_FIRMWARE_ACTIVATION_STATE FirmwareActivationState;
		}
		[CRepr]
		public struct SCM_PD_PASSTHROUGH_INPUT
		{
			public uint32 Version;
			public uint32 Size;
			public Guid ProtocolGuid;
			public uint32 DataSize;
			public uint8[0] Data;
		}
		[CRepr]
		public struct SCM_PD_PASSTHROUGH_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public Guid ProtocolGuid;
			public uint32 DataSize;
			public uint8[0] Data;
		}
		[CRepr]
		public struct SCM_PD_PASSTHROUGH_INVDIMM_INPUT
		{
			public uint32 Opcode;
			public uint32 OpcodeParametersLength;
			public uint8[0] OpcodeParameters;
		}
		[CRepr]
		public struct SCM_PD_PASSTHROUGH_INVDIMM_OUTPUT
		{
			public uint16 GeneralStatus;
			public uint16 ExtendedStatus;
			public uint32 OutputDataLength;
			public uint8[0] OutputData;
		}
		[CRepr]
		public struct SCM_PD_REINITIALIZE_MEDIA_INPUT
		{
			public uint32 Version;
			public uint32 Size;
			public _Options_e__Struct Options;
			
			[CRepr]
			public struct _Options_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct SCM_PD_REINITIALIZE_MEDIA_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public SCM_PD_MEDIA_REINITIALIZATION_STATUS Status;
		}
		[CRepr]
		public struct FORMAT_PARAMETERS
		{
			public MEDIA_TYPE MediaType;
			public uint32 StartCylinderNumber;
			public uint32 EndCylinderNumber;
			public uint32 StartHeadNumber;
			public uint32 EndHeadNumber;
		}
		[CRepr]
		public struct FORMAT_EX_PARAMETERS
		{
			public MEDIA_TYPE MediaType;
			public uint32 StartCylinderNumber;
			public uint32 EndCylinderNumber;
			public uint32 StartHeadNumber;
			public uint32 EndHeadNumber;
			public uint16 FormatGapLength;
			public uint16 SectorsPerTrack;
			public uint16[0] SectorNumber;
		}
		[CRepr]
		public struct DISK_GEOMETRY
		{
			public LARGE_INTEGER Cylinders;
			public MEDIA_TYPE MediaType;
			public uint32 TracksPerCylinder;
			public uint32 SectorsPerTrack;
			public uint32 BytesPerSector;
		}
		[CRepr]
		public struct PARTITION_INFORMATION
		{
			public LARGE_INTEGER StartingOffset;
			public LARGE_INTEGER PartitionLength;
			public uint32 HiddenSectors;
			public uint32 PartitionNumber;
			public uint8 PartitionType;
			public BOOLEAN BootIndicator;
			public BOOLEAN RecognizedPartition;
			public BOOLEAN RewritePartition;
		}
		[CRepr]
		public struct SET_PARTITION_INFORMATION
		{
			public uint8 PartitionType;
		}
		[CRepr]
		public struct DRIVE_LAYOUT_INFORMATION
		{
			public uint32 PartitionCount;
			public uint32 Signature;
			public PARTITION_INFORMATION[0] PartitionEntry;
		}
		[CRepr]
		public struct VERIFY_INFORMATION
		{
			public LARGE_INTEGER StartingOffset;
			public uint32 Length;
		}
		[CRepr]
		public struct REASSIGN_BLOCKS
		{
			public uint16 Reserved;
			public uint16 Count;
			public uint32[0] BlockNumber;
		}
		[CRepr, Packed(1)]
		public struct REASSIGN_BLOCKS_EX
		{
			public uint16 Reserved;
			public uint16 Count;
			public LARGE_INTEGER[0] BlockNumber;
		}
		[CRepr]
		public struct PARTITION_INFORMATION_GPT
		{
			public Guid PartitionType;
			public Guid PartitionId;
			public GPT_ATTRIBUTES Attributes;
			public char16[36] Name;
		}
		[CRepr]
		public struct PARTITION_INFORMATION_MBR
		{
			public uint8 PartitionType;
			public BOOLEAN BootIndicator;
			public BOOLEAN RecognizedPartition;
			public uint32 HiddenSectors;
			public Guid PartitionId;
		}
		[CRepr]
		public struct SET_PARTITION_INFORMATION_EX
		{
			public PARTITION_STYLE PartitionStyle;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public SET_PARTITION_INFORMATION Mbr;
				public PARTITION_INFORMATION_GPT Gpt;
			}
		}
		[CRepr]
		public struct CREATE_DISK_GPT
		{
			public Guid DiskId;
			public uint32 MaxPartitionCount;
		}
		[CRepr]
		public struct CREATE_DISK_MBR
		{
			public uint32 Signature;
		}
		[CRepr]
		public struct CREATE_DISK
		{
			public PARTITION_STYLE PartitionStyle;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public CREATE_DISK_MBR Mbr;
				public CREATE_DISK_GPT Gpt;
			}
		}
		[CRepr]
		public struct GET_LENGTH_INFORMATION
		{
			public LARGE_INTEGER Length;
		}
		[CRepr]
		public struct PARTITION_INFORMATION_EX
		{
			public PARTITION_STYLE PartitionStyle;
			public LARGE_INTEGER StartingOffset;
			public LARGE_INTEGER PartitionLength;
			public uint32 PartitionNumber;
			public BOOLEAN RewritePartition;
			public BOOLEAN IsServicePartition;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PARTITION_INFORMATION_MBR Mbr;
				public PARTITION_INFORMATION_GPT Gpt;
			}
		}
		[CRepr]
		public struct DRIVE_LAYOUT_INFORMATION_GPT
		{
			public Guid DiskId;
			public LARGE_INTEGER StartingUsableOffset;
			public LARGE_INTEGER UsableLength;
			public uint32 MaxPartitionCount;
		}
		[CRepr]
		public struct DRIVE_LAYOUT_INFORMATION_MBR
		{
			public uint32 Signature;
			public uint32 CheckSum;
		}
		[CRepr]
		public struct DRIVE_LAYOUT_INFORMATION_EX
		{
			public uint32 PartitionStyle;
			public uint32 PartitionCount;
			public _Anonymous_e__Union Anonymous;
			public PARTITION_INFORMATION_EX[0] PartitionEntry;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public DRIVE_LAYOUT_INFORMATION_MBR Mbr;
				public DRIVE_LAYOUT_INFORMATION_GPT Gpt;
			}
		}
		[CRepr]
		public struct DISK_INT13_INFO
		{
			public uint16 DriveSelect;
			public uint32 MaxCylinders;
			public uint16 SectorsPerTrack;
			public uint16 MaxHeads;
			public uint16 NumberDrives;
		}
		[CRepr]
		public struct DISK_EX_INT13_INFO
		{
			public uint16 ExBufferSize;
			public uint16 ExFlags;
			public uint32 ExCylinders;
			public uint32 ExHeads;
			public uint32 ExSectorsPerTrack;
			public uint64 ExSectorsPerDrive;
			public uint16 ExSectorSize;
			public uint16 ExReserved;
		}
		[CRepr]
		public struct DISK_DETECTION_INFO
		{
			public uint32 SizeOfDetectInfo;
			public DETECTION_TYPE DetectionType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public DISK_INT13_INFO Int13;
					public DISK_EX_INT13_INFO ExInt13;
				}
			}
		}
		[CRepr]
		public struct DISK_PARTITION_INFO
		{
			public uint32 SizeOfPartitionInfo;
			public PARTITION_STYLE PartitionStyle;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Mbr_e__Struct Mbr;
				public _Gpt_e__Struct Gpt;
				
				[CRepr]
				public struct _Gpt_e__Struct
				{
					public Guid DiskId;
				}
				[CRepr]
				public struct _Mbr_e__Struct
				{
					public uint32 Signature;
					public uint32 CheckSum;
				}
			}
		}
		[CRepr]
		public struct DISK_GEOMETRY_EX
		{
			public DISK_GEOMETRY Geometry;
			public LARGE_INTEGER DiskSize;
			public uint8[0] Data;
		}
		[CRepr]
		public struct DISK_CONTROLLER_NUMBER
		{
			public uint32 ControllerNumber;
			public uint32 DiskNumber;
		}
		[CRepr]
		public struct DISK_CACHE_INFORMATION
		{
			public BOOLEAN ParametersSavable;
			public BOOLEAN ReadCacheEnabled;
			public BOOLEAN WriteCacheEnabled;
			public DISK_CACHE_RETENTION_PRIORITY ReadRetentionPriority;
			public DISK_CACHE_RETENTION_PRIORITY WriteRetentionPriority;
			public uint16 DisablePrefetchTransferLength;
			public BOOLEAN PrefetchScalar;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _ScalarPrefetch_e__Struct ScalarPrefetch;
				public _BlockPrefetch_e__Struct BlockPrefetch;
				
				[CRepr]
				public struct _BlockPrefetch_e__Struct
				{
					public uint16 Minimum;
					public uint16 Maximum;
				}
				[CRepr]
				public struct _ScalarPrefetch_e__Struct
				{
					public uint16 Minimum;
					public uint16 Maximum;
					public uint16 MaximumBlocks;
				}
			}
		}
		[CRepr]
		public struct DISK_GROW_PARTITION
		{
			public uint32 PartitionNumber;
			public LARGE_INTEGER BytesToGrow;
		}
		[CRepr]
		public struct HISTOGRAM_BUCKET
		{
			public uint32 Reads;
			public uint32 Writes;
		}
		[CRepr]
		public struct DISK_HISTOGRAM
		{
			public LARGE_INTEGER DiskSize;
			public LARGE_INTEGER Start;
			public LARGE_INTEGER End;
			public LARGE_INTEGER Average;
			public LARGE_INTEGER AverageRead;
			public LARGE_INTEGER AverageWrite;
			public uint32 Granularity;
			public uint32 Size;
			public uint32 ReadCount;
			public uint32 WriteCount;
			public HISTOGRAM_BUCKET* Histogram;
		}
		[CRepr]
		public struct DISK_PERFORMANCE
		{
			public LARGE_INTEGER BytesRead;
			public LARGE_INTEGER BytesWritten;
			public LARGE_INTEGER ReadTime;
			public LARGE_INTEGER WriteTime;
			public LARGE_INTEGER IdleTime;
			public uint32 ReadCount;
			public uint32 WriteCount;
			public uint32 QueueDepth;
			public uint32 SplitCount;
			public LARGE_INTEGER QueryTime;
			public uint32 StorageDeviceNumber;
			public char16[8] StorageManagerName;
		}
		[CRepr]
		public struct DISK_RECORD
		{
			public LARGE_INTEGER ByteOffset;
			public LARGE_INTEGER StartTime;
			public LARGE_INTEGER EndTime;
			public void* VirtualAddress;
			public uint32 NumberOfBytes;
			public uint8 DeviceNumber;
			public BOOLEAN ReadRequest;
		}
		[CRepr]
		public struct DISK_LOGGING
		{
			public uint8 Function;
			public void* BufferAddress;
			public uint32 BufferSize;
		}
		[CRepr]
		public struct BIN_RANGE
		{
			public LARGE_INTEGER StartValue;
			public LARGE_INTEGER Length;
		}
		[CRepr]
		public struct PERF_BIN
		{
			public uint32 NumberOfBins;
			public uint32 TypeOfBin;
			public BIN_RANGE[0] BinsRanges;
		}
		[CRepr]
		public struct BIN_COUNT
		{
			public BIN_RANGE BinRange;
			public uint32 BinCount;
		}
		[CRepr]
		public struct BIN_RESULTS
		{
			public uint32 NumberOfBins;
			public BIN_COUNT[0] BinCounts;
		}
		[CRepr, Packed(1)]
		public struct GETVERSIONINPARAMS
		{
			public uint8 bVersion;
			public uint8 bRevision;
			public uint8 bReserved;
			public uint8 bIDEDeviceMap;
			public uint32 fCapabilities;
			public uint32[4] dwReserved;
		}
		[CRepr]
		public struct IDEREGS
		{
			public uint8 bFeaturesReg;
			public uint8 bSectorCountReg;
			public uint8 bSectorNumberReg;
			public uint8 bCylLowReg;
			public uint8 bCylHighReg;
			public uint8 bDriveHeadReg;
			public uint8 bCommandReg;
			public uint8 bReserved;
		}
		[CRepr, Packed(1)]
		public struct SENDCMDINPARAMS
		{
			public uint32 cBufferSize;
			public IDEREGS irDriveRegs;
			public uint8 bDriveNumber;
			public uint8[3] bReserved;
			public uint32[4] dwReserved;
			public uint8[0] bBuffer;
		}
		[CRepr, Packed(1)]
		public struct DRIVERSTATUS
		{
			public uint8 bDriverError;
			public uint8 bIDEError;
			public uint8[2] bReserved;
			public uint32[2] dwReserved;
		}
		[CRepr, Packed(1)]
		public struct SENDCMDOUTPARAMS
		{
			public uint32 cBufferSize;
			public DRIVERSTATUS DriverStatus;
			public uint8[0] bBuffer;
		}
		[CRepr]
		public struct GET_DISK_ATTRIBUTES
		{
			public uint32 Version;
			public uint32 Reserved1;
			public uint64 Attributes;
		}
		[CRepr]
		public struct SET_DISK_ATTRIBUTES
		{
			public uint32 Version;
			public BOOLEAN Persist;
			public uint8[3] Reserved1;
			public uint64 Attributes;
			public uint64 AttributesMask;
			public uint32[4] Reserved2;
		}
		[CRepr]
		public struct CHANGER_ELEMENT
		{
			public ELEMENT_TYPE ElementType;
			public uint32 ElementAddress;
		}
		[CRepr]
		public struct CHANGER_ELEMENT_LIST
		{
			public CHANGER_ELEMENT Element;
			public uint32 NumberOfElements;
		}
		[CRepr]
		public struct GET_CHANGER_PARAMETERS
		{
			public uint32 Size;
			public uint16 NumberTransportElements;
			public uint16 NumberStorageElements;
			public uint16 NumberCleanerSlots;
			public uint16 NumberIEElements;
			public uint16 NumberDataTransferElements;
			public uint16 NumberOfDoors;
			public uint16 FirstSlotNumber;
			public uint16 FirstDriveNumber;
			public uint16 FirstTransportNumber;
			public uint16 FirstIEPortNumber;
			public uint16 FirstCleanerSlotAddress;
			public uint16 MagazineSize;
			public uint32 DriveCleanTimeout;
			public CHANGER_FEATURES Features0;
			public GET_CHANGER_PARAMETERS_FEATURES1 Features1;
			public uint8 MoveFromTransport;
			public uint8 MoveFromSlot;
			public uint8 MoveFromIePort;
			public uint8 MoveFromDrive;
			public uint8 ExchangeFromTransport;
			public uint8 ExchangeFromSlot;
			public uint8 ExchangeFromIePort;
			public uint8 ExchangeFromDrive;
			public uint8 LockUnlockCapabilities;
			public uint8 PositionCapabilities;
			public uint8[2] Reserved1;
			public uint32[2] Reserved2;
		}
		[CRepr]
		public struct CHANGER_PRODUCT_DATA
		{
			public uint8[8] VendorId;
			public uint8[16] ProductId;
			public uint8[4] Revision;
			public uint8[32] SerialNumber;
			public uint8 DeviceType;
		}
		[CRepr]
		public struct CHANGER_SET_ACCESS
		{
			public CHANGER_ELEMENT Element;
			public uint32 Control;
		}
		[CRepr]
		public struct CHANGER_READ_ELEMENT_STATUS
		{
			public CHANGER_ELEMENT_LIST ElementList;
			public BOOLEAN VolumeTagInfo;
		}
		[CRepr]
		public struct CHANGER_ELEMENT_STATUS
		{
			public CHANGER_ELEMENT Element;
			public CHANGER_ELEMENT SrcElementAddress;
			public CHANGER_ELEMENT_STATUS_FLAGS Flags;
			public uint32 ExceptionCode;
			public uint8 TargetId;
			public uint8 Lun;
			public uint16 Reserved;
			public uint8[36] PrimaryVolumeID;
			public uint8[36] AlternateVolumeID;
		}
		[CRepr]
		public struct CHANGER_ELEMENT_STATUS_EX
		{
			public CHANGER_ELEMENT Element;
			public CHANGER_ELEMENT SrcElementAddress;
			public CHANGER_ELEMENT_STATUS_FLAGS Flags;
			public uint32 ExceptionCode;
			public uint8 TargetId;
			public uint8 Lun;
			public uint16 Reserved;
			public uint8[36] PrimaryVolumeID;
			public uint8[36] AlternateVolumeID;
			public uint8[8] VendorIdentification;
			public uint8[16] ProductIdentification;
			public uint8[32] SerialNumber;
		}
		[CRepr]
		public struct CHANGER_INITIALIZE_ELEMENT_STATUS
		{
			public CHANGER_ELEMENT_LIST ElementList;
			public BOOLEAN BarCodeScan;
		}
		[CRepr]
		public struct CHANGER_SET_POSITION
		{
			public CHANGER_ELEMENT Transport;
			public CHANGER_ELEMENT Destination;
			public BOOLEAN Flip;
		}
		[CRepr]
		public struct CHANGER_EXCHANGE_MEDIUM
		{
			public CHANGER_ELEMENT Transport;
			public CHANGER_ELEMENT Source;
			public CHANGER_ELEMENT Destination1;
			public CHANGER_ELEMENT Destination2;
			public BOOLEAN Flip1;
			public BOOLEAN Flip2;
		}
		[CRepr]
		public struct CHANGER_MOVE_MEDIUM
		{
			public CHANGER_ELEMENT Transport;
			public CHANGER_ELEMENT Source;
			public CHANGER_ELEMENT Destination;
			public BOOLEAN Flip;
		}
		[CRepr]
		public struct CHANGER_SEND_VOLUME_TAG_INFORMATION
		{
			public CHANGER_ELEMENT StartingElement;
			public uint32 ActionCode;
			public uint8[40] VolumeIDTemplate;
		}
		[CRepr]
		public struct READ_ELEMENT_ADDRESS_INFO
		{
			public uint32 NumberOfElements;
			public CHANGER_ELEMENT_STATUS[0] ElementStatus;
		}
		[CRepr]
		public struct PATHNAME_BUFFER
		{
			public uint32 PathNameLength;
			public char16[0] Name;
		}
		[CRepr]
		public struct FSCTL_QUERY_FAT_BPB_BUFFER
		{
			public uint8[36] First0x24BytesOfBootSector;
		}
		[CRepr]
		public struct NTFS_VOLUME_DATA_BUFFER
		{
			public LARGE_INTEGER VolumeSerialNumber;
			public LARGE_INTEGER NumberSectors;
			public LARGE_INTEGER TotalClusters;
			public LARGE_INTEGER FreeClusters;
			public LARGE_INTEGER TotalReserved;
			public uint32 BytesPerSector;
			public uint32 BytesPerCluster;
			public uint32 BytesPerFileRecordSegment;
			public uint32 ClustersPerFileRecordSegment;
			public LARGE_INTEGER MftValidDataLength;
			public LARGE_INTEGER MftStartLcn;
			public LARGE_INTEGER Mft2StartLcn;
			public LARGE_INTEGER MftZoneStart;
			public LARGE_INTEGER MftZoneEnd;
		}
		[CRepr]
		public struct NTFS_EXTENDED_VOLUME_DATA
		{
			public uint32 ByteCount;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint32 BytesPerPhysicalSector;
			public uint16 LfsMajorVersion;
			public uint16 LfsMinorVersion;
			public uint32 MaxDeviceTrimExtentCount;
			public uint32 MaxDeviceTrimByteCount;
			public uint32 MaxVolumeTrimExtentCount;
			public uint32 MaxVolumeTrimByteCount;
		}
		[CRepr]
		public struct REFS_VOLUME_DATA_BUFFER
		{
			public uint32 ByteCount;
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint32 BytesPerPhysicalSector;
			public LARGE_INTEGER VolumeSerialNumber;
			public LARGE_INTEGER NumberSectors;
			public LARGE_INTEGER TotalClusters;
			public LARGE_INTEGER FreeClusters;
			public LARGE_INTEGER TotalReserved;
			public uint32 BytesPerSector;
			public uint32 BytesPerCluster;
			public LARGE_INTEGER MaximumSizeOfResidentFile;
			public uint16 FastTierDataFillRatio;
			public uint16 SlowTierDataFillRatio;
			public uint32 DestagesFastTierToSlowTierRate;
			public LARGE_INTEGER[9] Reserved;
		}
		[CRepr]
		public struct STARTING_LCN_INPUT_BUFFER
		{
			public LARGE_INTEGER StartingLcn;
		}
		[CRepr]
		public struct STARTING_LCN_INPUT_BUFFER_EX
		{
			public LARGE_INTEGER StartingLcn;
			public uint32 Flags;
		}
		[CRepr]
		public struct VOLUME_BITMAP_BUFFER
		{
			public LARGE_INTEGER StartingLcn;
			public LARGE_INTEGER BitmapSize;
			public uint8[0] Buffer;
		}
		[CRepr]
		public struct STARTING_VCN_INPUT_BUFFER
		{
			public LARGE_INTEGER StartingVcn;
		}
		[CRepr]
		public struct RETRIEVAL_POINTERS_BUFFER
		{
			public uint32 ExtentCount;
			public LARGE_INTEGER StartingVcn;
			public _Anonymous_e__Struct[0] Extents;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public LARGE_INTEGER NextVcn;
				public LARGE_INTEGER Lcn;
			}
		}
		[CRepr]
		public struct RETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER
		{
			public uint32 ExtentCount;
			public LARGE_INTEGER StartingVcn;
			public _Anonymous_e__Struct[0] Extents;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public LARGE_INTEGER NextVcn;
				public LARGE_INTEGER Lcn;
				public uint32 ReferenceCount;
			}
		}
		[CRepr]
		public struct RETRIEVAL_POINTER_COUNT
		{
			public uint32 ExtentCount;
		}
		[CRepr]
		public struct NTFS_FILE_RECORD_INPUT_BUFFER
		{
			public LARGE_INTEGER FileReferenceNumber;
		}
		[CRepr]
		public struct NTFS_FILE_RECORD_OUTPUT_BUFFER
		{
			public LARGE_INTEGER FileReferenceNumber;
			public uint32 FileRecordLength;
			public uint8[0] FileRecordBuffer;
		}
		[CRepr]
		public struct MOVE_FILE_DATA
		{
			public HANDLE FileHandle;
			public LARGE_INTEGER StartingVcn;
			public LARGE_INTEGER StartingLcn;
			public uint32 ClusterCount;
		}
		[CRepr]
		public struct MOVE_FILE_RECORD_DATA
		{
			public HANDLE FileHandle;
			public LARGE_INTEGER SourceFileRecord;
			public LARGE_INTEGER TargetFileRecord;
		}
		[CRepr]
		public struct MOVE_FILE_DATA32
		{
			public uint32 FileHandle;
			public LARGE_INTEGER StartingVcn;
			public LARGE_INTEGER StartingLcn;
			public uint32 ClusterCount;
		}
		[CRepr]
		public struct FIND_BY_SID_DATA
		{
			public uint32 Restart;
			public SID Sid;
		}
		[CRepr]
		public struct FIND_BY_SID_OUTPUT
		{
			public uint32 NextEntryOffset;
			public uint32 FileIndex;
			public uint32 FileNameLength;
			public char16[0] FileName;
		}
		[CRepr]
		public struct MFT_ENUM_DATA_V0
		{
			public uint64 StartFileReferenceNumber;
			public int64 LowUsn;
			public int64 HighUsn;
		}
		[CRepr]
		public struct MFT_ENUM_DATA_V1
		{
			public uint64 StartFileReferenceNumber;
			public int64 LowUsn;
			public int64 HighUsn;
			public uint16 MinMajorVersion;
			public uint16 MaxMajorVersion;
		}
		[CRepr]
		public struct CREATE_USN_JOURNAL_DATA
		{
			public uint64 MaximumSize;
			public uint64 AllocationDelta;
		}
		[CRepr]
		public struct READ_FILE_USN_DATA
		{
			public uint16 MinMajorVersion;
			public uint16 MaxMajorVersion;
		}
		[CRepr]
		public struct READ_USN_JOURNAL_DATA_V0
		{
			public int64 StartUsn;
			public uint32 ReasonMask;
			public uint32 ReturnOnlyOnClose;
			public uint64 Timeout;
			public uint64 BytesToWaitFor;
			public uint64 UsnJournalID;
		}
		[CRepr]
		public struct READ_USN_JOURNAL_DATA_V1
		{
			public int64 StartUsn;
			public uint32 ReasonMask;
			public uint32 ReturnOnlyOnClose;
			public uint64 Timeout;
			public uint64 BytesToWaitFor;
			public uint64 UsnJournalID;
			public uint16 MinMajorVersion;
			public uint16 MaxMajorVersion;
		}
		[CRepr]
		public struct USN_TRACK_MODIFIED_RANGES
		{
			public uint32 Flags;
			public uint32 Unused;
			public uint64 ChunkSize;
			public int64 FileSizeThreshold;
		}
		[CRepr]
		public struct USN_RANGE_TRACK_OUTPUT
		{
			public int64 Usn;
		}
		[CRepr]
		public struct USN_RECORD_V2
		{
			public uint32 RecordLength;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint64 FileReferenceNumber;
			public uint64 ParentFileReferenceNumber;
			public int64 Usn;
			public LARGE_INTEGER TimeStamp;
			public uint32 Reason;
			public uint32 SourceInfo;
			public uint32 SecurityId;
			public uint32 FileAttributes;
			public uint16 FileNameLength;
			public uint16 FileNameOffset;
			public char16[0] FileName;
		}
		[CRepr]
		public struct USN_RECORD_V3
		{
			public uint32 RecordLength;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public FILE_ID_128 FileReferenceNumber;
			public FILE_ID_128 ParentFileReferenceNumber;
			public int64 Usn;
			public LARGE_INTEGER TimeStamp;
			public uint32 Reason;
			public uint32 SourceInfo;
			public uint32 SecurityId;
			public uint32 FileAttributes;
			public uint16 FileNameLength;
			public uint16 FileNameOffset;
			public char16[0] FileName;
		}
		[CRepr]
		public struct USN_RECORD_COMMON_HEADER
		{
			public uint32 RecordLength;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
		}
		[CRepr]
		public struct USN_RECORD_EXTENT
		{
			public int64 Offset;
			public int64 Length;
		}
		[CRepr]
		public struct USN_RECORD_V4
		{
			public USN_RECORD_COMMON_HEADER Header;
			public FILE_ID_128 FileReferenceNumber;
			public FILE_ID_128 ParentFileReferenceNumber;
			public int64 Usn;
			public uint32 Reason;
			public USN_SOURCE_INFO_ID SourceInfo;
			public uint32 RemainingExtents;
			public uint16 NumberOfExtents;
			public uint16 ExtentSize;
			public USN_RECORD_EXTENT[0] Extents;
		}
		[CRepr, Union]
		public struct USN_RECORD_UNION
		{
			public USN_RECORD_COMMON_HEADER Header;
			public USN_RECORD_V2 V2;
			public USN_RECORD_V3 V3;
			public USN_RECORD_V4 V4;
		}
		[CRepr]
		public struct USN_JOURNAL_DATA_V0
		{
			public uint64 UsnJournalID;
			public int64 FirstUsn;
			public int64 NextUsn;
			public int64 LowestValidUsn;
			public int64 MaxUsn;
			public uint64 MaximumSize;
			public uint64 AllocationDelta;
		}
		[CRepr]
		public struct USN_JOURNAL_DATA_V1
		{
			public uint64 UsnJournalID;
			public int64 FirstUsn;
			public int64 NextUsn;
			public int64 LowestValidUsn;
			public int64 MaxUsn;
			public uint64 MaximumSize;
			public uint64 AllocationDelta;
			public uint16 MinSupportedMajorVersion;
			public uint16 MaxSupportedMajorVersion;
		}
		[CRepr]
		public struct USN_JOURNAL_DATA_V2
		{
			public uint64 UsnJournalID;
			public int64 FirstUsn;
			public int64 NextUsn;
			public int64 LowestValidUsn;
			public int64 MaxUsn;
			public uint64 MaximumSize;
			public uint64 AllocationDelta;
			public uint16 MinSupportedMajorVersion;
			public uint16 MaxSupportedMajorVersion;
			public uint32 Flags;
			public uint64 RangeTrackChunkSize;
			public int64 RangeTrackFileSizeThreshold;
		}
		[CRepr]
		public struct DELETE_USN_JOURNAL_DATA
		{
			public uint64 UsnJournalID;
			public USN_DELETE_FLAGS DeleteFlags;
		}
		[CRepr]
		public struct MARK_HANDLE_INFO
		{
			public _Anonymous_e__Union Anonymous;
			public HANDLE VolumeHandle;
			public uint32 HandleInfo;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 UsnSourceInfo;
				public uint32 CopyNumber;
			}
		}
		[CRepr]
		public struct MARK_HANDLE_INFO32
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 VolumeHandle;
			public uint32 HandleInfo;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 UsnSourceInfo;
				public uint32 CopyNumber;
			}
		}
		[CRepr]
		public struct BULK_SECURITY_TEST_DATA
		{
			public uint32 DesiredAccess;
			public uint32[0] SecurityIds;
		}
		[CRepr]
		public struct FILE_PREFETCH
		{
			public uint32 Type;
			public uint32 Count;
			public uint64[0] Prefetch;
		}
		[CRepr]
		public struct FILE_PREFETCH_EX
		{
			public uint32 Type;
			public uint32 Count;
			public void* Context;
			public uint64[0] Prefetch;
		}
		[CRepr]
		public struct FILESYSTEM_STATISTICS
		{
			public FILESYSTEM_STATISTICS_TYPE FileSystemType;
			public uint16 Version;
			public uint32 SizeOfCompleteStructure;
			public uint32 UserFileReads;
			public uint32 UserFileReadBytes;
			public uint32 UserDiskReads;
			public uint32 UserFileWrites;
			public uint32 UserFileWriteBytes;
			public uint32 UserDiskWrites;
			public uint32 MetaDataReads;
			public uint32 MetaDataReadBytes;
			public uint32 MetaDataDiskReads;
			public uint32 MetaDataWrites;
			public uint32 MetaDataWriteBytes;
			public uint32 MetaDataDiskWrites;
		}
		[CRepr]
		public struct FAT_STATISTICS
		{
			public uint32 CreateHits;
			public uint32 SuccessfulCreates;
			public uint32 FailedCreates;
			public uint32 NonCachedReads;
			public uint32 NonCachedReadBytes;
			public uint32 NonCachedWrites;
			public uint32 NonCachedWriteBytes;
			public uint32 NonCachedDiskReads;
			public uint32 NonCachedDiskWrites;
		}
		[CRepr]
		public struct EXFAT_STATISTICS
		{
			public uint32 CreateHits;
			public uint32 SuccessfulCreates;
			public uint32 FailedCreates;
			public uint32 NonCachedReads;
			public uint32 NonCachedReadBytes;
			public uint32 NonCachedWrites;
			public uint32 NonCachedWriteBytes;
			public uint32 NonCachedDiskReads;
			public uint32 NonCachedDiskWrites;
		}
		[CRepr]
		public struct NTFS_STATISTICS
		{
			public uint32 LogFileFullExceptions;
			public uint32 OtherExceptions;
			public uint32 MftReads;
			public uint32 MftReadBytes;
			public uint32 MftWrites;
			public uint32 MftWriteBytes;
			public _MftWritesUserLevel_e__Struct MftWritesUserLevel;
			public uint16 MftWritesFlushForLogFileFull;
			public uint16 MftWritesLazyWriter;
			public uint16 MftWritesUserRequest;
			public uint32 Mft2Writes;
			public uint32 Mft2WriteBytes;
			public _Mft2WritesUserLevel_e__Struct Mft2WritesUserLevel;
			public uint16 Mft2WritesFlushForLogFileFull;
			public uint16 Mft2WritesLazyWriter;
			public uint16 Mft2WritesUserRequest;
			public uint32 RootIndexReads;
			public uint32 RootIndexReadBytes;
			public uint32 RootIndexWrites;
			public uint32 RootIndexWriteBytes;
			public uint32 BitmapReads;
			public uint32 BitmapReadBytes;
			public uint32 BitmapWrites;
			public uint32 BitmapWriteBytes;
			public uint16 BitmapWritesFlushForLogFileFull;
			public uint16 BitmapWritesLazyWriter;
			public uint16 BitmapWritesUserRequest;
			public _BitmapWritesUserLevel_e__Struct BitmapWritesUserLevel;
			public uint32 MftBitmapReads;
			public uint32 MftBitmapReadBytes;
			public uint32 MftBitmapWrites;
			public uint32 MftBitmapWriteBytes;
			public uint16 MftBitmapWritesFlushForLogFileFull;
			public uint16 MftBitmapWritesLazyWriter;
			public uint16 MftBitmapWritesUserRequest;
			public _MftBitmapWritesUserLevel_e__Struct MftBitmapWritesUserLevel;
			public uint32 UserIndexReads;
			public uint32 UserIndexReadBytes;
			public uint32 UserIndexWrites;
			public uint32 UserIndexWriteBytes;
			public uint32 LogFileReads;
			public uint32 LogFileReadBytes;
			public uint32 LogFileWrites;
			public uint32 LogFileWriteBytes;
			public _Allocate_e__Struct Allocate;
			public uint32 DiskResourcesExhausted;
			
			[CRepr]
			public struct _Allocate_e__Struct
			{
				public uint32 Calls;
				public uint32 Clusters;
				public uint32 Hints;
				public uint32 RunsReturned;
				public uint32 HintsHonored;
				public uint32 HintsClusters;
				public uint32 Cache;
				public uint32 CacheClusters;
				public uint32 CacheMiss;
				public uint32 CacheMissClusters;
			}
			[CRepr]
			public struct _BitmapWritesUserLevel_e__Struct
			{
				public uint16 Write;
				public uint16 Create;
				public uint16 SetInfo;
			}
			[CRepr]
			public struct _MftWritesUserLevel_e__Struct
			{
				public uint16 Write;
				public uint16 Create;
				public uint16 SetInfo;
				public uint16 Flush;
			}
			[CRepr]
			public struct _MftBitmapWritesUserLevel_e__Struct
			{
				public uint16 Write;
				public uint16 Create;
				public uint16 SetInfo;
				public uint16 Flush;
			}
			[CRepr]
			public struct _Mft2WritesUserLevel_e__Struct
			{
				public uint16 Write;
				public uint16 Create;
				public uint16 SetInfo;
				public uint16 Flush;
			}
		}
		[CRepr]
		public struct FILESYSTEM_STATISTICS_EX
		{
			public FILESYSTEM_STATISTICS_TYPE FileSystemType;
			public uint16 Version;
			public uint32 SizeOfCompleteStructure;
			public uint64 UserFileReads;
			public uint64 UserFileReadBytes;
			public uint64 UserDiskReads;
			public uint64 UserFileWrites;
			public uint64 UserFileWriteBytes;
			public uint64 UserDiskWrites;
			public uint64 MetaDataReads;
			public uint64 MetaDataReadBytes;
			public uint64 MetaDataDiskReads;
			public uint64 MetaDataWrites;
			public uint64 MetaDataWriteBytes;
			public uint64 MetaDataDiskWrites;
		}
		[CRepr]
		public struct NTFS_STATISTICS_EX
		{
			public uint32 LogFileFullExceptions;
			public uint32 OtherExceptions;
			public uint64 MftReads;
			public uint64 MftReadBytes;
			public uint64 MftWrites;
			public uint64 MftWriteBytes;
			public _MftWritesUserLevel_e__Struct MftWritesUserLevel;
			public uint32 MftWritesFlushForLogFileFull;
			public uint32 MftWritesLazyWriter;
			public uint32 MftWritesUserRequest;
			public uint64 Mft2Writes;
			public uint64 Mft2WriteBytes;
			public _Mft2WritesUserLevel_e__Struct Mft2WritesUserLevel;
			public uint32 Mft2WritesFlushForLogFileFull;
			public uint32 Mft2WritesLazyWriter;
			public uint32 Mft2WritesUserRequest;
			public uint64 RootIndexReads;
			public uint64 RootIndexReadBytes;
			public uint64 RootIndexWrites;
			public uint64 RootIndexWriteBytes;
			public uint64 BitmapReads;
			public uint64 BitmapReadBytes;
			public uint64 BitmapWrites;
			public uint64 BitmapWriteBytes;
			public uint32 BitmapWritesFlushForLogFileFull;
			public uint32 BitmapWritesLazyWriter;
			public uint32 BitmapWritesUserRequest;
			public _BitmapWritesUserLevel_e__Struct BitmapWritesUserLevel;
			public uint64 MftBitmapReads;
			public uint64 MftBitmapReadBytes;
			public uint64 MftBitmapWrites;
			public uint64 MftBitmapWriteBytes;
			public uint32 MftBitmapWritesFlushForLogFileFull;
			public uint32 MftBitmapWritesLazyWriter;
			public uint32 MftBitmapWritesUserRequest;
			public _MftBitmapWritesUserLevel_e__Struct MftBitmapWritesUserLevel;
			public uint64 UserIndexReads;
			public uint64 UserIndexReadBytes;
			public uint64 UserIndexWrites;
			public uint64 UserIndexWriteBytes;
			public uint64 LogFileReads;
			public uint64 LogFileReadBytes;
			public uint64 LogFileWrites;
			public uint64 LogFileWriteBytes;
			public _Allocate_e__Struct Allocate;
			public uint32 DiskResourcesExhausted;
			public uint64 VolumeTrimCount;
			public uint64 VolumeTrimTime;
			public uint64 VolumeTrimByteCount;
			public uint64 FileLevelTrimCount;
			public uint64 FileLevelTrimTime;
			public uint64 FileLevelTrimByteCount;
			public uint64 VolumeTrimSkippedCount;
			public uint64 VolumeTrimSkippedByteCount;
			public uint64 NtfsFillStatInfoFromMftRecordCalledCount;
			public uint64 NtfsFillStatInfoFromMftRecordBailedBecauseOfAttributeListCount;
			public uint64 NtfsFillStatInfoFromMftRecordBailedBecauseOfNonResReparsePointCount;
			
			[CRepr]
			public struct _MftBitmapWritesUserLevel_e__Struct
			{
				public uint32 Write;
				public uint32 Create;
				public uint32 SetInfo;
				public uint32 Flush;
			}
			[CRepr]
			public struct _Mft2WritesUserLevel_e__Struct
			{
				public uint32 Write;
				public uint32 Create;
				public uint32 SetInfo;
				public uint32 Flush;
			}
			[CRepr]
			public struct _BitmapWritesUserLevel_e__Struct
			{
				public uint32 Write;
				public uint32 Create;
				public uint32 SetInfo;
				public uint32 Flush;
			}
			[CRepr]
			public struct _Allocate_e__Struct
			{
				public uint32 Calls;
				public uint32 RunsReturned;
				public uint32 Hints;
				public uint32 HintsHonored;
				public uint32 Cache;
				public uint32 CacheMiss;
				public uint64 Clusters;
				public uint64 HintsClusters;
				public uint64 CacheClusters;
				public uint64 CacheMissClusters;
			}
			[CRepr]
			public struct _MftWritesUserLevel_e__Struct
			{
				public uint32 Write;
				public uint32 Create;
				public uint32 SetInfo;
				public uint32 Flush;
			}
		}
		[CRepr]
		public struct FILE_OBJECTID_BUFFER
		{
			public uint8[16] ObjectId;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint8[48] ExtendedInfo;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8[16] BirthVolumeId;
					public uint8[16] BirthObjectId;
					public uint8[16] DomainId;
				}
			}
		}
		[CRepr]
		public struct FILE_SET_SPARSE_BUFFER
		{
			public BOOLEAN SetSparse;
		}
		[CRepr]
		public struct FILE_ZERO_DATA_INFORMATION
		{
			public LARGE_INTEGER FileOffset;
			public LARGE_INTEGER BeyondFinalZero;
		}
		[CRepr]
		public struct FILE_ZERO_DATA_INFORMATION_EX
		{
			public LARGE_INTEGER FileOffset;
			public LARGE_INTEGER BeyondFinalZero;
			public uint32 Flags;
		}
		[CRepr]
		public struct FILE_ALLOCATED_RANGE_BUFFER
		{
			public LARGE_INTEGER FileOffset;
			public LARGE_INTEGER Length;
		}
		[CRepr]
		public struct ENCRYPTION_BUFFER
		{
			public uint32 EncryptionOperation;
			public uint8[0] Private;
		}
		[CRepr]
		public struct DECRYPTION_STATUS_BUFFER
		{
			public BOOLEAN NoEncryptedStreams;
		}
		[CRepr]
		public struct REQUEST_RAW_ENCRYPTED_DATA
		{
			public int64 FileOffset;
			public uint32 Length;
		}
		[CRepr]
		public struct ENCRYPTED_DATA_INFO
		{
			public uint64 StartingFileOffset;
			public uint32 OutputBufferOffset;
			public uint32 BytesWithinFileSize;
			public uint32 BytesWithinValidDataLength;
			public uint16 CompressionFormat;
			public uint8 DataUnitShift;
			public uint8 ChunkShift;
			public uint8 ClusterShift;
			public uint8 EncryptionFormat;
			public uint16 NumberOfDataBlocks;
			public uint32[0] DataBlockSize;
		}
		[CRepr]
		public struct EXTENDED_ENCRYPTED_DATA_INFO
		{
			public uint32 ExtendedCode;
			public uint32 Length;
			public uint32 Flags;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PLEX_READ_DATA_REQUEST
		{
			public LARGE_INTEGER ByteOffset;
			public uint32 ByteLength;
			public uint32 PlexNumber;
		}
		[CRepr]
		public struct SI_COPYFILE
		{
			public uint32 SourceFileNameLength;
			public uint32 DestinationFileNameLength;
			public uint32 Flags;
			public char16[0] FileNameBuffer;
		}
		[CRepr]
		public struct FILE_MAKE_COMPATIBLE_BUFFER
		{
			public BOOLEAN CloseDisc;
		}
		[CRepr]
		public struct FILE_SET_DEFECT_MGMT_BUFFER
		{
			public BOOLEAN Disable;
		}
		[CRepr]
		public struct FILE_QUERY_SPARING_BUFFER
		{
			public uint32 SparingUnitBytes;
			public BOOLEAN SoftwareSparing;
			public uint32 TotalSpareBlocks;
			public uint32 FreeSpareBlocks;
		}
		[CRepr]
		public struct FILE_QUERY_ON_DISK_VOL_INFO_BUFFER
		{
			public LARGE_INTEGER DirectoryCount;
			public LARGE_INTEGER FileCount;
			public uint16 FsFormatMajVersion;
			public uint16 FsFormatMinVersion;
			public char16[12] FsFormatName;
			public LARGE_INTEGER FormatTime;
			public LARGE_INTEGER LastUpdateTime;
			public char16[34] CopyrightInfo;
			public char16[34] AbstractInfo;
			public char16[34] FormattingImplementationInfo;
			public char16[34] LastModifyingImplementationInfo;
		}
		[CRepr]
		public struct FILE_INITIATE_REPAIR_OUTPUT_BUFFER
		{
			public uint64 Hint1;
			public uint64 Hint2;
			public uint64 Clsn;
			public uint32 Status;
		}
		[CRepr]
		public struct SHRINK_VOLUME_INFORMATION
		{
			public SHRINK_VOLUME_REQUEST_TYPES ShrinkRequestType;
			public uint64 Flags;
			public int64 NewNumberOfSectors;
		}
		[CRepr]
		public struct TXFS_MODIFY_RM
		{
			public TXFS_RMF_LAGS Flags;
			public uint32 LogContainerCountMax;
			public uint32 LogContainerCountMin;
			public uint32 LogContainerCount;
			public uint32 LogGrowthIncrement;
			public uint32 LogAutoShrinkPercentage;
			public uint64 Reserved;
			public uint16 LoggingMode;
		}
		[CRepr]
		public struct TXFS_QUERY_RM_INFORMATION
		{
			public uint32 BytesRequired;
			public uint64 TailLsn;
			public uint64 CurrentLsn;
			public uint64 ArchiveTailLsn;
			public uint64 LogContainerSize;
			public LARGE_INTEGER HighestVirtualClock;
			public uint32 LogContainerCount;
			public uint32 LogContainerCountMax;
			public uint32 LogContainerCountMin;
			public uint32 LogGrowthIncrement;
			public uint32 LogAutoShrinkPercentage;
			public TXFS_RMF_LAGS Flags;
			public uint16 LoggingMode;
			public uint16 Reserved;
			public uint32 RmState;
			public uint64 LogCapacity;
			public uint64 LogFree;
			public uint64 TopsSize;
			public uint64 TopsUsed;
			public uint64 TransactionCount;
			public uint64 OnePCCount;
			public uint64 TwoPCCount;
			public uint64 NumberLogFileFull;
			public uint64 OldestTransactionAge;
			public Guid RMName;
			public uint32 TmLogPathOffset;
		}
		[CRepr]
		public struct TXFS_ROLLFORWARD_REDO_INFORMATION
		{
			public LARGE_INTEGER LastVirtualClock;
			public uint64 LastRedoLsn;
			public uint64 HighestRecoveryLsn;
			public uint32 Flags;
		}
		[CRepr]
		public struct TXFS_START_RM_INFORMATION
		{
			public uint32 Flags;
			public uint64 LogContainerSize;
			public uint32 LogContainerCountMin;
			public uint32 LogContainerCountMax;
			public uint32 LogGrowthIncrement;
			public uint32 LogAutoShrinkPercentage;
			public uint32 TmLogPathOffset;
			public uint16 TmLogPathLength;
			public uint16 LoggingMode;
			public uint16 LogPathLength;
			public uint16 Reserved;
			public char16[0] LogPath;
		}
		[CRepr]
		public struct TXFS_GET_METADATA_INFO_OUT
		{
			public _TxfFileId_e__Struct TxfFileId;
			public Guid LockingTransaction;
			public uint64 LastLsn;
			public uint32 TransactionState;
			
			[CRepr]
			public struct _TxfFileId_e__Struct
			{
				public int64 LowPart;
				public int64 HighPart;
			}
		}
		[CRepr]
		public struct TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY
		{
			public uint64 Offset;
			public uint32 NameFlags;
			public int64 FileId;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public int64 Reserved3;
			public char16[0] FileName;
		}
		[CRepr]
		public struct TXFS_LIST_TRANSACTION_LOCKED_FILES
		{
			public Guid KtmTransaction;
			public uint64 NumberOfFiles;
			public uint64 BufferSizeRequired;
			public uint64 Offset;
		}
		[CRepr]
		public struct TXFS_LIST_TRANSACTIONS_ENTRY
		{
			public Guid TransactionId;
			public uint32 TransactionState;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public int64 Reserved3;
		}
		[CRepr]
		public struct TXFS_LIST_TRANSACTIONS
		{
			public uint64 NumberOfTransactions;
			public uint64 BufferSizeRequired;
		}
		[CRepr]
		public struct TXFS_READ_BACKUP_INFORMATION_OUT
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 BufferLength;
				public uint8[0] Buffer;
			}
		}
		[CRepr]
		public struct TXFS_WRITE_BACKUP_INFORMATION
		{
			public uint8[0] Buffer;
		}
		[CRepr]
		public struct TXFS_GET_TRANSACTED_VERSION
		{
			public uint32 ThisBaseVersion;
			public uint32 LatestVersion;
			public uint16 ThisMiniVersion;
			public uint16 FirstMiniVersion;
			public uint16 LatestMiniVersion;
		}
		[CRepr]
		public struct TXFS_SAVEPOINT_INFORMATION
		{
			public HANDLE KtmTransaction;
			public uint32 ActionCode;
			public uint32 SavepointId;
		}
		[CRepr]
		public struct TXFS_CREATE_MINIVERSION_INFO
		{
			public uint16 StructureVersion;
			public uint16 StructureLength;
			public uint32 BaseVersion;
			public uint16 MiniVersion;
		}
		[CRepr]
		public struct TXFS_TRANSACTION_ACTIVE_INFO
		{
			public BOOLEAN TransactionsActiveAtSnapshot;
		}
		[CRepr]
		public struct BOOT_AREA_INFO
		{
			public uint32 BootSectorCount;
			public _Anonymous_e__Struct[2] BootSectors;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public LARGE_INTEGER Offset;
			}
		}
		[CRepr]
		public struct RETRIEVAL_POINTER_BASE
		{
			public LARGE_INTEGER FileAreaOffset;
		}
		[CRepr]
		public struct FILE_FS_PERSISTENT_VOLUME_INFORMATION
		{
			public uint32 VolumeFlags;
			public uint32 FlagMask;
			public uint32 Version;
			public uint32 Reserved;
		}
		[CRepr]
		public struct FILE_SYSTEM_RECOGNITION_INFORMATION
		{
			public CHAR[9] FileSystem;
		}
		[CRepr]
		public struct REQUEST_OPLOCK_INPUT_BUFFER
		{
			public uint16 StructureVersion;
			public uint16 StructureLength;
			public uint32 RequestedOplockLevel;
			public uint32 Flags;
		}
		[CRepr]
		public struct REQUEST_OPLOCK_OUTPUT_BUFFER
		{
			public uint16 StructureVersion;
			public uint16 StructureLength;
			public uint32 OriginalOplockLevel;
			public uint32 NewOplockLevel;
			public uint32 Flags;
			public uint32 AccessMode;
			public uint16 ShareMode;
		}
		[CRepr]
		public struct STORAGE_QUERY_DEPENDENT_VOLUME_REQUEST
		{
			public uint32 RequestLevel;
			public uint32 RequestFlags;
		}
		[CRepr]
		public struct STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY
		{
			public uint32 EntryLength;
			public uint32 DependencyTypeFlags;
			public uint32 ProviderSpecificFlags;
			public VIRTUAL_STORAGE_TYPE VirtualStorageType;
		}
		[CRepr]
		public struct STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY
		{
			public uint32 EntryLength;
			public uint32 DependencyTypeFlags;
			public uint32 ProviderSpecificFlags;
			public VIRTUAL_STORAGE_TYPE VirtualStorageType;
			public uint32 AncestorLevel;
			public uint32 HostVolumeNameOffset;
			public uint32 HostVolumeNameSize;
			public uint32 DependentVolumeNameOffset;
			public uint32 DependentVolumeNameSize;
			public uint32 RelativePathOffset;
			public uint32 RelativePathSize;
			public uint32 DependentDeviceNameOffset;
			public uint32 DependentDeviceNameSize;
		}
		[CRepr]
		public struct STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE
		{
			public uint32 ResponseLevel;
			public uint32 NumberEntries;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY[0] Lev1Depends;
				public STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY[0] Lev2Depends;
			}
		}
		[CRepr]
		public struct SD_CHANGE_MACHINE_SID_INPUT
		{
			public uint16 CurrentMachineSIDOffset;
			public uint16 CurrentMachineSIDLength;
			public uint16 NewMachineSIDOffset;
			public uint16 NewMachineSIDLength;
		}
		[CRepr]
		public struct SD_CHANGE_MACHINE_SID_OUTPUT
		{
			public uint64 NumSDChangedSuccess;
			public uint64 NumSDChangedFail;
			public uint64 NumSDUnused;
			public uint64 NumSDTotal;
			public uint64 NumMftSDChangedSuccess;
			public uint64 NumMftSDChangedFail;
			public uint64 NumMftSDTotal;
		}
		[CRepr]
		public struct SD_QUERY_STATS_INPUT
		{
			public uint32 Reserved;
		}
		[CRepr]
		public struct SD_QUERY_STATS_OUTPUT
		{
			public uint64 SdsStreamSize;
			public uint64 SdsAllocationSize;
			public uint64 SiiStreamSize;
			public uint64 SiiAllocationSize;
			public uint64 SdhStreamSize;
			public uint64 SdhAllocationSize;
			public uint64 NumSDTotal;
			public uint64 NumSDUnused;
		}
		[CRepr]
		public struct SD_ENUM_SDS_INPUT
		{
			public uint64 StartingOffset;
			public uint64 MaxSDEntriesToReturn;
		}
		[CRepr]
		public struct SD_ENUM_SDS_ENTRY
		{
			public uint32 Hash;
			public uint32 SecurityId;
			public uint64 Offset;
			public uint32 Length;
			public uint8[0] Descriptor;
		}
		[CRepr]
		public struct SD_ENUM_SDS_OUTPUT
		{
			public uint64 NextOffset;
			public uint64 NumSDEntriesReturned;
			public uint64 NumSDBytesReturned;
			public SD_ENUM_SDS_ENTRY[0] SDEntry;
		}
		[CRepr]
		public struct SD_GLOBAL_CHANGE_INPUT
		{
			public uint32 Flags;
			public uint32 ChangeType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public SD_CHANGE_MACHINE_SID_INPUT SdChange;
				public SD_QUERY_STATS_INPUT SdQueryStats;
				public SD_ENUM_SDS_INPUT SdEnumSds;
			}
		}
		[CRepr]
		public struct SD_GLOBAL_CHANGE_OUTPUT
		{
			public uint32 Flags;
			public uint32 ChangeType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public SD_CHANGE_MACHINE_SID_OUTPUT SdChange;
				public SD_QUERY_STATS_OUTPUT SdQueryStats;
				public SD_ENUM_SDS_OUTPUT SdEnumSds;
			}
		}
		[CRepr]
		public struct LOOKUP_STREAM_FROM_CLUSTER_INPUT
		{
			public uint32 Flags;
			public uint32 NumberOfClusters;
			public LARGE_INTEGER[0] Cluster;
		}
		[CRepr]
		public struct LOOKUP_STREAM_FROM_CLUSTER_OUTPUT
		{
			public uint32 Offset;
			public uint32 NumberOfMatches;
			public uint32 BufferSizeRequired;
		}
		[CRepr]
		public struct LOOKUP_STREAM_FROM_CLUSTER_ENTRY
		{
			public uint32 OffsetToNext;
			public uint32 Flags;
			public LARGE_INTEGER Reserved;
			public LARGE_INTEGER Cluster;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_TYPE_NOTIFICATION_INPUT
		{
			public uint32 Flags;
			public uint32 NumFileTypeIDs;
			public Guid[0] FileTypeID;
		}
		[CRepr]
		public struct CSV_MGMT_LOCK
		{
			public uint32 Flags;
		}
		[CRepr]
		public struct CSV_NAMESPACE_INFO
		{
			public uint32 Version;
			public uint32 DeviceNumber;
			public LARGE_INTEGER StartingOffset;
			public uint32 SectorSize;
		}
		[CRepr]
		public struct CSV_CONTROL_PARAM
		{
			public CSV_CONTROL_OP Operation;
			public int64 Unused;
		}
		[CRepr]
		public struct CSV_QUERY_REDIRECT_STATE
		{
			public uint32 MdsNodeId;
			public uint32 DsNodeId;
			public BOOLEAN FileRedirected;
		}
		[CRepr]
		public struct CSV_QUERY_FILE_REVISION
		{
			public int64 FileId;
			public int64[3] FileRevision;
		}
		[CRepr]
		public struct CSV_QUERY_FILE_REVISION_FILE_ID_128
		{
			public FILE_ID_128 FileId;
			public int64[3] FileRevision;
		}
		[CRepr]
		public struct CSV_QUERY_MDS_PATH
		{
			public uint32 MdsNodeId;
			public uint32 DsNodeId;
			public uint32 PathLength;
			public char16[0] Path;
		}
		[CRepr]
		public struct CSV_QUERY_VOLUME_REDIRECT_STATE
		{
			public uint32 MdsNodeId;
			public uint32 DsNodeId;
			public BOOLEAN IsDiskConnected;
			public BOOLEAN ClusterEnableDirectIo;
			public CSVFS_DISK_CONNECTIVITY DiskConnectivity;
		}
		[CRepr]
		public struct CSV_QUERY_MDS_PATH_V2
		{
			public int64 Version;
			public uint32 RequiredSize;
			public uint32 MdsNodeId;
			public uint32 DsNodeId;
			public uint32 Flags;
			public CSVFS_DISK_CONNECTIVITY DiskConnectivity;
			public Guid VolumeId;
			public uint32 IpAddressOffset;
			public uint32 IpAddressLength;
			public uint32 PathOffset;
			public uint32 PathLength;
		}
		[CRepr]
		public struct CSV_SET_VOLUME_ID
		{
			public Guid VolumeId;
		}
		[CRepr]
		public struct CSV_QUERY_VOLUME_ID
		{
			public Guid VolumeId;
		}
		[CRepr]
		public struct CSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT
		{
			public uint64 VetoedFromAltitudeIntegral;
			public uint64 VetoedFromAltitudeDecimal;
			public char16[256] Reason;
		}
		[CRepr]
		public struct CSV_IS_OWNED_BY_CSVFS
		{
			public BOOLEAN OwnedByCSVFS;
		}
		[CRepr]
		public struct FILE_LEVEL_TRIM_RANGE
		{
			public uint64 Offset;
			public uint64 Length;
		}
		[CRepr]
		public struct FILE_LEVEL_TRIM
		{
			public uint32 Key;
			public uint32 NumRanges;
			public FILE_LEVEL_TRIM_RANGE[0] Ranges;
		}
		[CRepr]
		public struct FILE_LEVEL_TRIM_OUTPUT
		{
			public uint32 NumRangesProcessed;
		}
		[CRepr]
		public struct CLUSTER_RANGE
		{
			public LARGE_INTEGER StartingCluster;
			public LARGE_INTEGER ClusterCount;
		}
		[CRepr]
		public struct FILE_REFERENCE_RANGE
		{
			public uint64 StartingFileReferenceNumber;
			public uint64 EndingFileReferenceNumber;
		}
		[CRepr]
		public struct QUERY_FILE_LAYOUT_INPUT
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 Flags;
			public QUERY_FILE_LAYOUT_FILTER_TYPE FilterType;
			public uint32 Reserved;
			public _Filter_e__Union Filter;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 FilterEntryCount;
				public uint32 NumberOfPairs;
			}
			[CRepr, Union]
			public struct _Filter_e__Union
			{
				public CLUSTER_RANGE[0] ClusterRanges;
				public FILE_REFERENCE_RANGE[0] FileReferenceRanges;
				public STORAGE_RESERVE_ID[0] StorageReserveIds;
			}
		}
		[CRepr]
		public struct QUERY_FILE_LAYOUT_OUTPUT
		{
			public uint32 FileEntryCount;
			public uint32 FirstFileOffset;
			public uint32 Flags;
			public uint32 Reserved;
		}
		[CRepr]
		public struct FILE_LAYOUT_ENTRY
		{
			public uint32 Version;
			public uint32 NextFileOffset;
			public uint32 Flags;
			public uint32 FileAttributes;
			public uint64 FileReferenceNumber;
			public uint32 FirstNameOffset;
			public uint32 FirstStreamOffset;
			public uint32 ExtraInfoOffset;
			public uint32 ExtraInfoLength;
		}
		[CRepr]
		public struct FILE_LAYOUT_NAME_ENTRY
		{
			public uint32 NextNameOffset;
			public uint32 Flags;
			public uint64 ParentFileReferenceNumber;
			public uint32 FileNameLength;
			public uint32 Reserved;
			public char16[0] FileName;
		}
		[CRepr]
		public struct FILE_LAYOUT_INFO_ENTRY
		{
			public _BasicInformation_e__Struct BasicInformation;
			public uint32 OwnerId;
			public uint32 SecurityId;
			public int64 Usn;
			public STORAGE_RESERVE_ID StorageReserveId;
			
			[CRepr]
			public struct _BasicInformation_e__Struct
			{
				public LARGE_INTEGER CreationTime;
				public LARGE_INTEGER LastAccessTime;
				public LARGE_INTEGER LastWriteTime;
				public LARGE_INTEGER ChangeTime;
				public uint32 FileAttributes;
			}
		}
		[CRepr]
		public struct STREAM_LAYOUT_ENTRY
		{
			public uint32 Version;
			public uint32 NextStreamOffset;
			public uint32 Flags;
			public uint32 ExtentInformationOffset;
			public LARGE_INTEGER AllocationSize;
			public LARGE_INTEGER EndOfFile;
			public uint32 StreamInformationOffset;
			public uint32 AttributeTypeCode;
			public uint32 AttributeFlags;
			public uint32 StreamIdentifierLength;
			public char16[0] StreamIdentifier;
		}
		[CRepr]
		public struct STREAM_EXTENT_ENTRY
		{
			public uint32 Flags;
			public _ExtentInformation_e__Union ExtentInformation;
			
			[CRepr, Union]
			public struct _ExtentInformation_e__Union
			{
				public RETRIEVAL_POINTERS_BUFFER RetrievalPointers;
			}
		}
		[CRepr]
		public struct FSCTL_GET_INTEGRITY_INFORMATION_BUFFER
		{
			public uint16 ChecksumAlgorithm;
			public uint16 Reserved;
			public uint32 Flags;
			public uint32 ChecksumChunkSizeInBytes;
			public uint32 ClusterSizeInBytes;
		}
		[CRepr]
		public struct FSCTL_SET_INTEGRITY_INFORMATION_BUFFER
		{
			public uint16 ChecksumAlgorithm;
			public uint16 Reserved;
			public uint32 Flags;
		}
		[CRepr]
		public struct FSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX
		{
			public uint8 EnableIntegrity;
			public uint8 KeepIntegrityStateUnchanged;
			public uint16 Reserved;
			public uint32 Flags;
			public uint8 Version;
			public uint8[7] Reserved2;
		}
		[CRepr]
		public struct FSCTL_OFFLOAD_READ_INPUT
		{
			public uint32 Size;
			public uint32 Flags;
			public uint32 TokenTimeToLive;
			public uint32 Reserved;
			public uint64 FileOffset;
			public uint64 CopyLength;
		}
		[CRepr]
		public struct FSCTL_OFFLOAD_READ_OUTPUT
		{
			public uint32 Size;
			public uint32 Flags;
			public uint64 TransferLength;
			public uint8[512] Token;
		}
		[CRepr]
		public struct FSCTL_OFFLOAD_WRITE_INPUT
		{
			public uint32 Size;
			public uint32 Flags;
			public uint64 FileOffset;
			public uint64 CopyLength;
			public uint64 TransferOffset;
			public uint8[512] Token;
		}
		[CRepr]
		public struct FSCTL_OFFLOAD_WRITE_OUTPUT
		{
			public uint32 Size;
			public uint32 Flags;
			public uint64 LengthWritten;
		}
		[CRepr]
		public struct SET_PURGE_FAILURE_MODE_INPUT
		{
			public uint32 Flags;
		}
		[CRepr]
		public struct REPAIR_COPIES_INPUT
		{
			public uint32 Size;
			public uint32 Flags;
			public LARGE_INTEGER FileOffset;
			public uint32 Length;
			public uint32 SourceCopy;
			public uint32 NumberOfRepairCopies;
			public uint32[0] RepairCopies;
		}
		[CRepr]
		public struct REPAIR_COPIES_OUTPUT
		{
			public uint32 Size;
			public uint32 Status;
			public LARGE_INTEGER ResumeFileOffset;
		}
		[CRepr]
		public struct FILE_REGION_INFO
		{
			public int64 FileOffset;
			public int64 Length;
			public uint32 Usage;
			public uint32 Reserved;
		}
		[CRepr]
		public struct FILE_REGION_OUTPUT
		{
			public uint32 Flags;
			public uint32 TotalRegionEntryCount;
			public uint32 RegionEntryCount;
			public uint32 Reserved;
			public FILE_REGION_INFO[0] Region;
		}
		[CRepr]
		public struct FILE_REGION_INPUT
		{
			public int64 FileOffset;
			public int64 Length;
			public uint32 DesiredUsage;
		}
		[CRepr]
		public struct WRITE_USN_REASON_INPUT
		{
			public uint32 Flags;
			public uint32 UsnReasonToWrite;
		}
		[CRepr]
		public struct FILE_STORAGE_TIER
		{
			public Guid Id;
			public char16[256] Name;
			public char16[256] Description;
			public FILE_STORAGE_TIER_FLAGS Flags;
			public uint64 ProvisionedCapacity;
			public FILE_STORAGE_TIER_MEDIA_TYPE MediaType;
			public FILE_STORAGE_TIER_CLASS Class;
		}
		[CRepr]
		public struct FSCTL_QUERY_STORAGE_CLASSES_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public FILE_STORAGE_TIER_FLAGS Flags;
			public uint32 TotalNumberOfTiers;
			public uint32 NumberOfTiersReturned;
			public FILE_STORAGE_TIER[0] Tiers;
		}
		[CRepr]
		public struct STREAM_INFORMATION_ENTRY
		{
			public uint32 Version;
			public uint32 Flags;
			public _StreamInformation StreamInformation;
			
			[CRepr, Union]
			public struct _StreamInformation
			{
				public _DesiredStorageClass DesiredStorageClass;
				public _DataStream DataStream;
				public _Reparse Reparse;
				public _Ea Ea;
				
				[CRepr]
				public struct _Reparse
				{
					public uint16 Length;
					public uint16 Flags;
					public uint32 ReparseDataSize;
					public uint32 ReparseDataOffset;
				}
				[CRepr]
				public struct _DesiredStorageClass
				{
					public FILE_STORAGE_TIER_CLASS Class;
					public uint32 Flags;
				}
				[CRepr]
				public struct _DataStream
				{
					public uint16 Length;
					public uint16 Flags;
					public uint32 Reserved;
					public uint64 Vdl;
				}
				[CRepr]
				public struct _Ea
				{
					public uint16 Length;
					public uint16 Flags;
					public uint32 EaSize;
					public uint32 EaInformationOffset;
				}
			}
		}
		[CRepr]
		public struct FSCTL_QUERY_REGION_INFO_INPUT
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 NumberOfTierIds;
			public Guid[0] TierIds;
		}
		[CRepr]
		public struct FILE_STORAGE_TIER_REGION
		{
			public Guid TierId;
			public uint64 Offset;
			public uint64 Length;
		}
		[CRepr]
		public struct FSCTL_QUERY_REGION_INFO_OUTPUT
		{
			public uint32 Version;
			public uint32 Size;
			public uint32 Flags;
			public uint32 Reserved;
			public uint64 Alignment;
			public uint32 TotalNumberOfRegions;
			public uint32 NumberOfRegionsReturned;
			public FILE_STORAGE_TIER_REGION[0] Regions;
		}
		[CRepr]
		public struct FILE_DESIRED_STORAGE_CLASS_INFORMATION
		{
			public FILE_STORAGE_TIER_CLASS Class;
			public uint32 Flags;
		}
		[CRepr]
		public struct DUPLICATE_EXTENTS_DATA
		{
			public HANDLE FileHandle;
			public LARGE_INTEGER SourceFileOffset;
			public LARGE_INTEGER TargetFileOffset;
			public LARGE_INTEGER ByteCount;
		}
		[CRepr]
		public struct DUPLICATE_EXTENTS_DATA32
		{
			public uint32 FileHandle;
			public LARGE_INTEGER SourceFileOffset;
			public LARGE_INTEGER TargetFileOffset;
			public LARGE_INTEGER ByteCount;
		}
		[CRepr]
		public struct DUPLICATE_EXTENTS_DATA_EX
		{
			public uint Size;
			public HANDLE FileHandle;
			public LARGE_INTEGER SourceFileOffset;
			public LARGE_INTEGER TargetFileOffset;
			public LARGE_INTEGER ByteCount;
			public uint32 Flags;
		}
		[CRepr]
		public struct DUPLICATE_EXTENTS_DATA_EX32
		{
			public uint32 Size;
			public uint32 FileHandle;
			public LARGE_INTEGER SourceFileOffset;
			public LARGE_INTEGER TargetFileOffset;
			public LARGE_INTEGER ByteCount;
			public uint32 Flags;
		}
		[CRepr]
		public struct ASYNC_DUPLICATE_EXTENTS_STATUS
		{
			public uint32 Version;
			public DUPLICATE_EXTENTS_STATE State;
			public uint64 SourceFileOffset;
			public uint64 TargetFileOffset;
			public uint64 ByteCount;
			public uint64 BytesDuplicated;
		}
		[CRepr]
		public struct REFS_SMR_VOLUME_INFO_OUTPUT
		{
			public uint32 Version;
			public uint32 Flags;
			public LARGE_INTEGER SizeOfRandomlyWritableTier;
			public LARGE_INTEGER FreeSpaceInRandomlyWritableTier;
			public LARGE_INTEGER SizeofSMRTier;
			public LARGE_INTEGER FreeSpaceInSMRTier;
			public LARGE_INTEGER UsableFreeSpaceInSMRTier;
			public REFS_SMR_VOLUME_GC_STATE VolumeGcState;
			public uint32 VolumeGcLastStatus;
			public uint32 CurrentGcBandFillPercentage;
			public uint64[6] Unused;
		}
		[CRepr]
		public struct REFS_SMR_VOLUME_GC_PARAMETERS
		{
			public uint32 Version;
			public uint32 Flags;
			public REFS_SMR_VOLUME_GC_ACTION Action;
			public REFS_SMR_VOLUME_GC_METHOD Method;
			public uint32 IoGranularity;
			public uint32 CompressionFormat;
			public uint64[8] Unused;
		}
		[CRepr]
		public struct STREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER
		{
			public uint32 OptimalWriteSize;
			public uint32 StreamGranularitySize;
			public uint32 StreamIdMin;
			public uint32 StreamIdMax;
		}
		[CRepr]
		public struct STREAMS_ASSOCIATE_ID_INPUT_BUFFER
		{
			public uint32 Flags;
			public uint32 StreamId;
		}
		[CRepr]
		public struct STREAMS_QUERY_ID_OUTPUT_BUFFER
		{
			public uint32 StreamId;
		}
		[CRepr]
		public struct QUERY_BAD_RANGES_INPUT_RANGE
		{
			public uint64 StartOffset;
			public uint64 LengthInBytes;
		}
		[CRepr]
		public struct QUERY_BAD_RANGES_INPUT
		{
			public uint32 Flags;
			public uint32 NumRanges;
			public QUERY_BAD_RANGES_INPUT_RANGE[0] Ranges;
		}
		[CRepr]
		public struct QUERY_BAD_RANGES_OUTPUT_RANGE
		{
			public uint32 Flags;
			public uint32 Reserved;
			public uint64 StartOffset;
			public uint64 LengthInBytes;
		}
		[CRepr]
		public struct QUERY_BAD_RANGES_OUTPUT
		{
			public uint32 Flags;
			public uint32 NumBadRanges;
			public uint64 NextOffsetToLookUp;
			public QUERY_BAD_RANGES_OUTPUT_RANGE[0] BadRanges;
		}
		[CRepr]
		public struct SET_DAX_ALLOC_ALIGNMENT_HINT_INPUT
		{
			public uint32 Flags;
			public uint32 AlignmentShift;
			public uint64 FileOffsetToAlign;
			public uint32 FallbackAlignmentShift;
		}
		[CRepr]
		public struct VIRTUAL_STORAGE_SET_BEHAVIOR_INPUT
		{
			public uint32 Size;
			public VIRTUAL_STORAGE_BEHAVIOR_CODE BehaviorCode;
		}
		[CRepr]
		public struct ENCRYPTION_KEY_CTRL_INPUT
		{
			public uint32 HeaderSize;
			public uint32 StructureSize;
			public uint16 KeyOffset;
			public uint16 KeySize;
			public uint32 DplLock;
			public uint64 DplUserId;
			public uint64 DplCredentialId;
		}
		[CRepr]
		public struct WOF_EXTERNAL_INFO
		{
			public uint32 Version;
			public uint32 Provider;
		}
		[CRepr]
		public struct WOF_EXTERNAL_FILE_ID
		{
			public FILE_ID_128 FileId;
		}
		[CRepr]
		public struct WOF_VERSION_INFO
		{
			public uint32 WofVersion;
		}
		[CRepr]
		public struct WIM_PROVIDER_EXTERNAL_INFO
		{
			public uint32 Version;
			public uint32 Flags;
			public LARGE_INTEGER DataSourceId;
			public uint8[20] ResourceHash;
		}
		[CRepr]
		public struct WIM_PROVIDER_ADD_OVERLAY_INPUT
		{
			public uint32 WimType;
			public uint32 WimIndex;
			public uint32 WimFileNameOffset;
			public uint32 WimFileNameLength;
		}
		[CRepr]
		public struct WIM_PROVIDER_UPDATE_OVERLAY_INPUT
		{
			public LARGE_INTEGER DataSourceId;
			public uint32 WimFileNameOffset;
			public uint32 WimFileNameLength;
		}
		[CRepr]
		public struct WIM_PROVIDER_REMOVE_OVERLAY_INPUT
		{
			public LARGE_INTEGER DataSourceId;
		}
		[CRepr]
		public struct WIM_PROVIDER_SUSPEND_OVERLAY_INPUT
		{
			public LARGE_INTEGER DataSourceId;
		}
		[CRepr]
		public struct WIM_PROVIDER_OVERLAY_ENTRY
		{
			public uint32 NextEntryOffset;
			public LARGE_INTEGER DataSourceId;
			public Guid WimGuid;
			public uint32 WimFileNameOffset;
			public uint32 WimType;
			public uint32 WimIndex;
			public uint32 Flags;
		}
		[CRepr]
		public struct FILE_PROVIDER_EXTERNAL_INFO_V0
		{
			public uint32 Version;
			public uint32 Algorithm;
		}
		[CRepr]
		public struct FILE_PROVIDER_EXTERNAL_INFO_V1
		{
			public uint32 Version;
			public uint32 Algorithm;
			public uint32 Flags;
		}
		[CRepr]
		public struct CONTAINER_VOLUME_STATE
		{
			public uint32 Flags;
		}
		[CRepr]
		public struct CONTAINER_ROOT_INFO_INPUT
		{
			public uint32 Flags;
		}
		[CRepr]
		public struct CONTAINER_ROOT_INFO_OUTPUT
		{
			public uint16 ContainerRootIdLength;
			public uint8[0] ContainerRootId;
		}
		[CRepr]
		public struct VIRTUALIZATION_INSTANCE_INFO_INPUT
		{
			public uint32 NumberOfWorkerThreads;
			public uint32 Flags;
		}
		[CRepr]
		public struct VIRTUALIZATION_INSTANCE_INFO_INPUT_EX
		{
			public uint16 HeaderSize;
			public uint32 Flags;
			public uint32 NotificationInfoSize;
			public uint16 NotificationInfoOffset;
			public uint16 ProviderMajorVersion;
		}
		[CRepr]
		public struct VIRTUALIZATION_INSTANCE_INFO_OUTPUT
		{
			public Guid VirtualizationInstanceID;
		}
		[CRepr]
		public struct GET_FILTER_FILE_IDENTIFIER_INPUT
		{
			public uint16 AltitudeLength;
			public char16[0] Altitude;
		}
		[CRepr]
		public struct GET_FILTER_FILE_IDENTIFIER_OUTPUT
		{
			public uint16 FilterFileIdentifierLength;
			public uint8[0] FilterFileIdentifier;
		}
		[CRepr]
		public struct FS_BPIO_INPUT
		{
			public FS_BPIO_OPERATIONS Operation;
			public FS_BPIO_INFLAGS InFlags;
			public uint64 Reserved1;
			public uint64 Reserved2;
		}
		[CRepr]
		public struct FS_BPIO_RESULTS
		{
			public uint32 OpStatus;
			public uint16 FailingDriverNameLen;
			public char16[32] FailingDriverName;
			public uint16 FailureReasonLen;
			public char16[128] FailureReason;
		}
		[CRepr]
		public struct FS_BPIO_INFO
		{
			public uint32 ActiveBypassIoCount;
			public uint16 StorageDriverNameLen;
			public char16[32] StorageDriverName;
		}
		[CRepr]
		public struct FS_BPIO_OUTPUT
		{
			public FS_BPIO_OPERATIONS Operation;
			public FS_BPIO_OUTFLAGS OutFlags;
			public uint64 Reserved1;
			public uint64 Reserved2;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public FS_BPIO_RESULTS Enable;
				public FS_BPIO_RESULTS Query;
				public FS_BPIO_RESULTS VolumeStackResume;
				public FS_BPIO_RESULTS StreamResume;
				public FS_BPIO_INFO GetInfo;
			}
		}
		[CRepr]
		public struct SMB_SHARE_FLUSH_AND_PURGE_INPUT
		{
			public uint16 Version;
		}
		[CRepr]
		public struct SMB_SHARE_FLUSH_AND_PURGE_OUTPUT
		{
			public uint32 cEntriesPurged;
		}
		[CRepr]
		public struct DISK_EXTENT
		{
			public uint32 DiskNumber;
			public LARGE_INTEGER StartingOffset;
			public LARGE_INTEGER ExtentLength;
		}
		[CRepr]
		public struct VOLUME_DISK_EXTENTS
		{
			public uint32 NumberOfDiskExtents;
			public DISK_EXTENT[0] Extents;
		}
		[CRepr]
		public struct VOLUME_GET_GPT_ATTRIBUTES_INFORMATION
		{
			public uint64 GptAttributes;
		}
		[CRepr]
		public struct IO_IRP_EXT_TRACK_OFFSET_HEADER
		{
			public uint16 Validation;
			public uint16 Flags;
			public PIO_IRP_EXT_PROCESS_TRACKED_OFFSET_CALLBACK TrackedOffsetCallback;
		}
		
	}
}
