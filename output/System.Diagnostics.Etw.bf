using System;

// namespace System.Diagnostics.Etw
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WNODE_FLAG_ALL_DATA = 1;
		public const uint32 WNODE_FLAG_SINGLE_INSTANCE = 2;
		public const uint32 WNODE_FLAG_SINGLE_ITEM = 4;
		public const uint32 WNODE_FLAG_EVENT_ITEM = 8;
		public const uint32 WNODE_FLAG_FIXED_INSTANCE_SIZE = 16;
		public const uint32 WNODE_FLAG_TOO_SMALL = 32;
		public const uint32 WNODE_FLAG_INSTANCES_SAME = 64;
		public const uint32 WNODE_FLAG_STATIC_INSTANCE_NAMES = 128;
		public const uint32 WNODE_FLAG_INTERNAL = 256;
		public const uint32 WNODE_FLAG_USE_TIMESTAMP = 512;
		public const uint32 WNODE_FLAG_PERSIST_EVENT = 1024;
		public const uint32 WNODE_FLAG_EVENT_REFERENCE = 8192;
		public const uint32 WNODE_FLAG_ANSI_INSTANCENAMES = 16384;
		public const uint32 WNODE_FLAG_METHOD_ITEM = 32768;
		public const uint32 WNODE_FLAG_PDO_INSTANCE_NAMES = 65536;
		public const uint32 WNODE_FLAG_TRACED_GUID = 131072;
		public const uint32 WNODE_FLAG_LOG_WNODE = 262144;
		public const uint32 WNODE_FLAG_USE_GUID_PTR = 524288;
		public const uint32 WNODE_FLAG_USE_MOF_PTR = 1048576;
		public const uint32 WNODE_FLAG_NO_HEADER = 2097152;
		public const uint32 WNODE_FLAG_SEND_DATA_BLOCK = 4194304;
		public const uint32 WNODE_FLAG_VERSIONED_PROPERTIES = 8388608;
		public const uint32 WNODE_FLAG_SEVERITY_MASK = 4278190080;
		public const uint32 WMIREG_FLAG_EXPENSIVE = 1;
		public const uint32 WMIREG_FLAG_INSTANCE_LIST = 4;
		public const uint32 WMIREG_FLAG_INSTANCE_BASENAME = 8;
		public const uint32 WMIREG_FLAG_INSTANCE_PDO = 32;
		public const uint32 WMIREG_FLAG_REMOVE_GUID = 65536;
		public const uint32 WMIREG_FLAG_RESERVED1 = 131072;
		public const uint32 WMIREG_FLAG_RESERVED2 = 262144;
		public const uint32 WMIREG_FLAG_TRACED_GUID = 524288;
		public const uint32 WMIREG_FLAG_TRACE_CONTROL_GUID = 4096;
		public const uint32 WMIREG_FLAG_EVENT_ONLY_GUID = 64;
		public const uint32 WMI_GUIDTYPE_TRACECONTROL = 0;
		public const uint32 WMI_GUIDTYPE_TRACE = 1;
		public const uint32 WMI_GUIDTYPE_DATA = 2;
		public const uint32 WMI_GUIDTYPE_EVENT = 3;
		public const uint32 WMIGUID_QUERY = 1;
		public const uint32 WMIGUID_SET = 2;
		public const uint32 WMIGUID_NOTIFICATION = 4;
		public const uint32 WMIGUID_READ_DESCRIPTION = 8;
		public const uint32 WMIGUID_EXECUTE = 16;
		public const uint32 TRACELOG_CREATE_REALTIME = 32;
		public const uint32 TRACELOG_CREATE_ONDISK = 64;
		public const uint32 TRACELOG_GUID_ENABLE = 128;
		public const uint32 TRACELOG_ACCESS_KERNEL_LOGGER = 256;
		public const uint32 TRACELOG_LOG_EVENT = 512;
		public const uint32 TRACELOG_CREATE_INPROC = 512;
		public const uint32 TRACELOG_ACCESS_REALTIME = 1024;
		public const uint32 TRACELOG_REGISTER_GUIDS = 2048;
		public const uint32 TRACELOG_JOIN_GROUP = 4096;
		public const uint32 WMI_GLOBAL_LOGGER_ID = 1;
		public const uint32 MAX_PAYLOAD_PREDICATES = 8;
		public const Guid EventTraceGuid = .(0x68fdd900, 0x4a3e, 0x11d1, 0x84, 0xf4, 0x00, 0x00, 0xf8, 0x04, 0x64, 0xe3);
		public const Guid SystemTraceControlGuid = .(0x9e814aad, 0x3204, 0x11d2, 0x9a, 0x82, 0x00, 0x60, 0x08, 0xa8, 0x69, 0x39);
		public const Guid EventTraceConfigGuid = .(0x01853a65, 0x418f, 0x4f36, 0xae, 0xfc, 0xdc, 0x0f, 0x1d, 0x2f, 0xd2, 0x35);
		public const Guid DefaultTraceSecurityGuid = .(0x0811c1af, 0x7a07, 0x4a06, 0x82, 0xed, 0x86, 0x94, 0x55, 0xcd, 0xf7, 0x13);
		public const Guid PrivateLoggerNotificationGuid = .(0x3595ab5c, 0x042a, 0x4c8e, 0xb9, 0x42, 0x2d, 0x05, 0x9b, 0xfe, 0xb1, 0xb1);
		public const Guid SystemIoFilterProviderGuid = .(0xfbd09363, 0x9e22, 0x4661, 0xb8, 0xbf, 0xe7, 0xa3, 0x4b, 0x53, 0x5b, 0x8c);
		public const Guid SystemObjectProviderGuid = .(0xfebd7460, 0x3d1d, 0x47eb, 0xaf, 0x49, 0xc9, 0xee, 0xb1, 0xe1, 0x46, 0xf2);
		public const Guid SystemPowerProviderGuid = .(0xc134884a, 0x32d5, 0x4488, 0x80, 0xe5, 0x14, 0xed, 0x7a, 0xbb, 0x82, 0x69);
		public const Guid SystemHypervisorProviderGuid = .(0xbafa072a, 0x918a, 0x4bed, 0xb6, 0x22, 0xbc, 0x15, 0x20, 0x97, 0x09, 0x8f);
		public const Guid SystemLockProviderGuid = .(0x721ddfd3, 0xdacc, 0x4e1e, 0xb2, 0x6a, 0xa2, 0xcb, 0x31, 0xd4, 0x70, 0x5a);
		public const Guid SystemConfigProviderGuid = .(0xfef3a8b6, 0x318d, 0x4b67, 0xa9, 0x6a, 0x3b, 0x0f, 0x6b, 0x8f, 0x18, 0xfe);
		public const Guid SystemCpuProviderGuid = .(0xc6c5265f, 0xeae8, 0x4650, 0xaa, 0xe4, 0x9d, 0x48, 0x60, 0x3d, 0x85, 0x10);
		public const Guid SystemSchedulerProviderGuid = .(0x599a2a76, 0x4d91, 0x4910, 0x9a, 0xc7, 0x7d, 0x33, 0xf2, 0xe9, 0x7a, 0x6c);
		public const Guid SystemProfileProviderGuid = .(0xbfeb0324, 0x1cee, 0x496f, 0xa4, 0x09, 0x2a, 0xc2, 0xb4, 0x8a, 0x63, 0x22);
		public const Guid SystemIoProviderGuid = .(0x3d5c43e3, 0x0f1c, 0x4202, 0xb8, 0x17, 0x17, 0x4c, 0x00, 0x70, 0xdc, 0x79);
		public const Guid SystemMemoryProviderGuid = .(0x82958ca9, 0xb6cd, 0x47f8, 0xa3, 0xa8, 0x03, 0xae, 0x85, 0xa4, 0xbc, 0x24);
		public const Guid SystemRegistryProviderGuid = .(0x16156bd9, 0xfab4, 0x4cfa, 0xa2, 0x32, 0x89, 0xd1, 0x09, 0x90, 0x58, 0xe3);
		public const Guid SystemProcessProviderGuid = .(0x151f55dc, 0x467d, 0x471f, 0x83, 0xb5, 0x5f, 0x88, 0x9d, 0x46, 0xff, 0x66);
		public const Guid SystemAlpcProviderGuid = .(0xfcb9baaf, 0xe529, 0x4980, 0x92, 0xe9, 0xce, 0xd1, 0xa6, 0xaa, 0xdf, 0xdf);
		public const Guid SystemSyscallProviderGuid = .(0x434286f7, 0x6f1b, 0x45bb, 0xb3, 0x7e, 0x95, 0xf6, 0x23, 0x04, 0x6c, 0x7c);
		public const Guid SystemInterruptProviderGuid = .(0xd4bbee17, 0xb545, 0x4888, 0x85, 0x8b, 0x74, 0x41, 0x69, 0x01, 0x5b, 0x25);
		public const Guid SystemTimerProviderGuid = .(0x4f061568, 0xe215, 0x499f, 0xab, 0x2e, 0xed, 0xa0, 0xae, 0x89, 0x0a, 0x5b);
		public const uint32 MAX_MOF_FIELDS = 16;
		public const uint32 SYSTEM_EVENT_TYPE = 1;
		public const uint32 EVENT_TRACE_TYPE_INFO = 0;
		public const uint32 EVENT_TRACE_TYPE_START = 1;
		public const uint32 EVENT_TRACE_TYPE_END = 2;
		public const uint32 EVENT_TRACE_TYPE_STOP = 2;
		public const uint32 EVENT_TRACE_TYPE_DC_START = 3;
		public const uint32 EVENT_TRACE_TYPE_DC_END = 4;
		public const uint32 EVENT_TRACE_TYPE_EXTENSION = 5;
		public const uint32 EVENT_TRACE_TYPE_REPLY = 6;
		public const uint32 EVENT_TRACE_TYPE_DEQUEUE = 7;
		public const uint32 EVENT_TRACE_TYPE_RESUME = 7;
		public const uint32 EVENT_TRACE_TYPE_CHECKPOINT = 8;
		public const uint32 EVENT_TRACE_TYPE_SUSPEND = 8;
		public const uint32 EVENT_TRACE_TYPE_WINEVT_SEND = 9;
		public const uint32 EVENT_TRACE_TYPE_WINEVT_RECEIVE = 240;
		public const uint32 TRACE_LEVEL_NONE = 0;
		public const uint32 TRACE_LEVEL_CRITICAL = 1;
		public const uint32 TRACE_LEVEL_FATAL = 1;
		public const uint32 TRACE_LEVEL_ERROR = 2;
		public const uint32 TRACE_LEVEL_WARNING = 3;
		public const uint32 TRACE_LEVEL_INFORMATION = 4;
		public const uint32 TRACE_LEVEL_VERBOSE = 5;
		public const uint32 TRACE_LEVEL_RESERVED6 = 6;
		public const uint32 TRACE_LEVEL_RESERVED7 = 7;
		public const uint32 TRACE_LEVEL_RESERVED8 = 8;
		public const uint32 TRACE_LEVEL_RESERVED9 = 9;
		public const uint32 EVENT_TRACE_TYPE_LOAD = 10;
		public const uint32 EVENT_TRACE_TYPE_TERMINATE = 11;
		public const uint32 EVENT_TRACE_TYPE_IO_READ = 10;
		public const uint32 EVENT_TRACE_TYPE_IO_WRITE = 11;
		public const uint32 EVENT_TRACE_TYPE_IO_READ_INIT = 12;
		public const uint32 EVENT_TRACE_TYPE_IO_WRITE_INIT = 13;
		public const uint32 EVENT_TRACE_TYPE_IO_FLUSH = 14;
		public const uint32 EVENT_TRACE_TYPE_IO_FLUSH_INIT = 15;
		public const uint32 EVENT_TRACE_TYPE_IO_REDIRECTED_INIT = 16;
		public const uint32 EVENT_TRACE_TYPE_MM_TF = 10;
		public const uint32 EVENT_TRACE_TYPE_MM_DZF = 11;
		public const uint32 EVENT_TRACE_TYPE_MM_COW = 12;
		public const uint32 EVENT_TRACE_TYPE_MM_GPF = 13;
		public const uint32 EVENT_TRACE_TYPE_MM_HPF = 14;
		public const uint32 EVENT_TRACE_TYPE_MM_AV = 15;
		public const uint32 EVENT_TRACE_TYPE_SEND = 10;
		public const uint32 EVENT_TRACE_TYPE_RECEIVE = 11;
		public const uint32 EVENT_TRACE_TYPE_CONNECT = 12;
		public const uint32 EVENT_TRACE_TYPE_DISCONNECT = 13;
		public const uint32 EVENT_TRACE_TYPE_RETRANSMIT = 14;
		public const uint32 EVENT_TRACE_TYPE_ACCEPT = 15;
		public const uint32 EVENT_TRACE_TYPE_RECONNECT = 16;
		public const uint32 EVENT_TRACE_TYPE_CONNFAIL = 17;
		public const uint32 EVENT_TRACE_TYPE_COPY_TCP = 18;
		public const uint32 EVENT_TRACE_TYPE_COPY_ARP = 19;
		public const uint32 EVENT_TRACE_TYPE_ACKFULL = 20;
		public const uint32 EVENT_TRACE_TYPE_ACKPART = 21;
		public const uint32 EVENT_TRACE_TYPE_ACKDUP = 22;
		public const uint32 EVENT_TRACE_TYPE_GUIDMAP = 10;
		public const uint32 EVENT_TRACE_TYPE_CONFIG = 11;
		public const uint32 EVENT_TRACE_TYPE_SIDINFO = 12;
		public const uint32 EVENT_TRACE_TYPE_SECURITY = 13;
		public const uint32 EVENT_TRACE_TYPE_DBGID_RSDS = 64;
		public const uint32 EVENT_TRACE_TYPE_REGCREATE = 10;
		public const uint32 EVENT_TRACE_TYPE_REGOPEN = 11;
		public const uint32 EVENT_TRACE_TYPE_REGDELETE = 12;
		public const uint32 EVENT_TRACE_TYPE_REGQUERY = 13;
		public const uint32 EVENT_TRACE_TYPE_REGSETVALUE = 14;
		public const uint32 EVENT_TRACE_TYPE_REGDELETEVALUE = 15;
		public const uint32 EVENT_TRACE_TYPE_REGQUERYVALUE = 16;
		public const uint32 EVENT_TRACE_TYPE_REGENUMERATEKEY = 17;
		public const uint32 EVENT_TRACE_TYPE_REGENUMERATEVALUEKEY = 18;
		public const uint32 EVENT_TRACE_TYPE_REGQUERYMULTIPLEVALUE = 19;
		public const uint32 EVENT_TRACE_TYPE_REGSETINFORMATION = 20;
		public const uint32 EVENT_TRACE_TYPE_REGFLUSH = 21;
		public const uint32 EVENT_TRACE_TYPE_REGKCBCREATE = 22;
		public const uint32 EVENT_TRACE_TYPE_REGKCBDELETE = 23;
		public const uint32 EVENT_TRACE_TYPE_REGKCBRUNDOWNBEGIN = 24;
		public const uint32 EVENT_TRACE_TYPE_REGKCBRUNDOWNEND = 25;
		public const uint32 EVENT_TRACE_TYPE_REGVIRTUALIZE = 26;
		public const uint32 EVENT_TRACE_TYPE_REGCLOSE = 27;
		public const uint32 EVENT_TRACE_TYPE_REGSETSECURITY = 28;
		public const uint32 EVENT_TRACE_TYPE_REGQUERYSECURITY = 29;
		public const uint32 EVENT_TRACE_TYPE_REGCOMMIT = 30;
		public const uint32 EVENT_TRACE_TYPE_REGPREPARE = 31;
		public const uint32 EVENT_TRACE_TYPE_REGROLLBACK = 32;
		public const uint32 EVENT_TRACE_TYPE_REGMOUNTHIVE = 33;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_CPU = 10;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PHYSICALDISK = 11;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_LOGICALDISK = 12;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_NIC = 13;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_VIDEO = 14;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_SERVICES = 15;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_POWER = 16;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_NETINFO = 17;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_OPTICALMEDIA = 18;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_IRQ = 21;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PNP = 22;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_IDECHANNEL = 23;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_NUMANODE = 24;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PLATFORM = 25;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PROCESSORGROUP = 26;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PROCESSORNUMBER = 27;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_DPI = 28;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_CI_INFO = 29;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_MACHINEID = 30;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_DEFRAG = 31;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_MOBILEPLATFORM = 32;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_DEVICEFAMILY = 33;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_FLIGHTID = 34;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_PROCESSOR = 35;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_VIRTUALIZATION = 36;
		public const uint32 EVENT_TRACE_TYPE_CONFIG_BOOT = 37;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_READ = 55;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_WRITE = 56;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_FLUSH = 57;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_READ_INIT = 58;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_WRITE_INIT = 59;
		public const uint32 EVENT_TRACE_TYPE_OPTICAL_IO_FLUSH_INIT = 60;
		public const uint32 EVENT_TRACE_TYPE_FLT_PREOP_INIT = 96;
		public const uint32 EVENT_TRACE_TYPE_FLT_POSTOP_INIT = 97;
		public const uint32 EVENT_TRACE_TYPE_FLT_PREOP_COMPLETION = 98;
		public const uint32 EVENT_TRACE_TYPE_FLT_POSTOP_COMPLETION = 99;
		public const uint32 EVENT_TRACE_TYPE_FLT_PREOP_FAILURE = 100;
		public const uint32 EVENT_TRACE_TYPE_FLT_POSTOP_FAILURE = 101;
		public const uint32 EVENT_TRACE_FLAG_DEBUG_EVENTS = 4194304;
		public const uint32 EVENT_TRACE_FLAG_EXTENSION = 2147483648;
		public const uint32 EVENT_TRACE_FLAG_FORWARD_WMI = 1073741824;
		public const uint32 EVENT_TRACE_FLAG_ENABLE_RESERVE = 536870912;
		public const uint32 EVENT_TRACE_FILE_MODE_NONE = 0;
		public const uint32 EVENT_TRACE_FILE_MODE_SEQUENTIAL = 1;
		public const uint32 EVENT_TRACE_FILE_MODE_CIRCULAR = 2;
		public const uint32 EVENT_TRACE_FILE_MODE_APPEND = 4;
		public const uint32 EVENT_TRACE_REAL_TIME_MODE = 256;
		public const uint32 EVENT_TRACE_DELAY_OPEN_FILE_MODE = 512;
		public const uint32 EVENT_TRACE_BUFFERING_MODE = 1024;
		public const uint32 EVENT_TRACE_PRIVATE_LOGGER_MODE = 2048;
		public const uint32 EVENT_TRACE_ADD_HEADER_MODE = 4096;
		public const uint32 EVENT_TRACE_USE_GLOBAL_SEQUENCE = 16384;
		public const uint32 EVENT_TRACE_USE_LOCAL_SEQUENCE = 32768;
		public const uint32 EVENT_TRACE_RELOG_MODE = 65536;
		public const uint32 EVENT_TRACE_USE_PAGED_MEMORY = 16777216;
		public const uint32 EVENT_TRACE_FILE_MODE_NEWFILE = 8;
		public const uint32 EVENT_TRACE_FILE_MODE_PREALLOCATE = 32;
		public const uint32 EVENT_TRACE_NONSTOPPABLE_MODE = 64;
		public const uint32 EVENT_TRACE_SECURE_MODE = 128;
		public const uint32 EVENT_TRACE_USE_KBYTES_FOR_SIZE = 8192;
		public const uint32 EVENT_TRACE_PRIVATE_IN_PROC = 131072;
		public const uint32 EVENT_TRACE_MODE_RESERVED = 1048576;
		public const uint32 EVENT_TRACE_NO_PER_PROCESSOR_BUFFERING = 268435456;
		public const uint32 EVENT_TRACE_SYSTEM_LOGGER_MODE = 33554432;
		public const uint32 EVENT_TRACE_ADDTO_TRIAGE_DUMP = 2147483648;
		public const uint32 EVENT_TRACE_STOP_ON_HYBRID_SHUTDOWN = 4194304;
		public const uint32 EVENT_TRACE_PERSIST_ON_HYBRID_SHUTDOWN = 8388608;
		public const uint32 EVENT_TRACE_INDEPENDENT_SESSION_MODE = 134217728;
		public const uint32 EVENT_TRACE_COMPRESSED_MODE = 67108864;
		public const uint32 EVENT_TRACE_CONTROL_INCREMENT_FILE = 4;
		public const uint32 EVENT_TRACE_CONTROL_CONVERT_TO_REALTIME = 5;
		public const uint32 TRACE_MESSAGE_PERFORMANCE_TIMESTAMP = 16;
		public const uint32 TRACE_MESSAGE_POINTER32 = 64;
		public const uint32 TRACE_MESSAGE_POINTER64 = 128;
		public const uint32 TRACE_MESSAGE_FLAG_MASK = 65535;
		public const uint32 EVENT_TRACE_USE_PROCTIME = 1;
		public const uint32 EVENT_TRACE_USE_NOCPUTIME = 2;
		public const uint32 TRACE_HEADER_FLAG_USE_TIMESTAMP = 512;
		public const uint32 TRACE_HEADER_FLAG_TRACED_GUID = 131072;
		public const uint32 TRACE_HEADER_FLAG_LOG_WNODE = 262144;
		public const uint32 TRACE_HEADER_FLAG_USE_GUID_PTR = 524288;
		public const uint32 TRACE_HEADER_FLAG_USE_MOF_PTR = 1048576;
		public const uint64 SYSTEM_ALPC_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_CONFIG_KW_SYSTEM = 1uL;
		public const uint64 SYSTEM_CONFIG_KW_GRAPHICS = 2uL;
		public const uint64 SYSTEM_CONFIG_KW_STORAGE = 4uL;
		public const uint64 SYSTEM_CONFIG_KW_NETWORK = 8uL;
		public const uint64 SYSTEM_CONFIG_KW_SERVICES = 16uL;
		public const uint64 SYSTEM_CONFIG_KW_PNP = 32uL;
		public const uint64 SYSTEM_CONFIG_KW_OPTICAL = 64uL;
		public const uint64 SYSTEM_CPU_KW_CONFIG = 1uL;
		public const uint64 SYSTEM_CPU_KW_CACHE_FLUSH = 2uL;
		public const uint64 SYSTEM_CPU_KW_SPEC_CONTROL = 4uL;
		public const uint64 SYSTEM_HYPERVISOR_KW_PROFILE = 1uL;
		public const uint64 SYSTEM_HYPERVISOR_KW_CALLOUTS = 2uL;
		public const uint64 SYSTEM_HYPERVISOR_KW_VTL_CHANGE = 4uL;
		public const uint64 SYSTEM_INTERRUPT_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_INTERRUPT_KW_CLOCK_INTERRUPT = 2uL;
		public const uint64 SYSTEM_INTERRUPT_KW_DPC = 4uL;
		public const uint64 SYSTEM_INTERRUPT_KW_DPC_QUEUE = 8uL;
		public const uint64 SYSTEM_INTERRUPT_KW_WDF_DPC = 16uL;
		public const uint64 SYSTEM_INTERRUPT_KW_WDF_INTERRUPT = 32uL;
		public const uint64 SYSTEM_INTERRUPT_KW_IPI = 64uL;
		public const uint64 SYSTEM_IO_KW_DISK = 1uL;
		public const uint64 SYSTEM_IO_KW_DISK_INIT = 2uL;
		public const uint64 SYSTEM_IO_KW_FILENAME = 4uL;
		public const uint64 SYSTEM_IO_KW_SPLIT = 8uL;
		public const uint64 SYSTEM_IO_KW_FILE = 16uL;
		public const uint64 SYSTEM_IO_KW_OPTICAL = 32uL;
		public const uint64 SYSTEM_IO_KW_OPTICAL_INIT = 64uL;
		public const uint64 SYSTEM_IO_KW_DRIVERS = 128uL;
		public const uint64 SYSTEM_IO_KW_CC = 256uL;
		public const uint64 SYSTEM_IO_KW_NETWORK = 512uL;
		public const uint64 SYSTEM_IOFILTER_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_IOFILTER_KW_INIT = 2uL;
		public const uint64 SYSTEM_IOFILTER_KW_FASTIO = 4uL;
		public const uint64 SYSTEM_IOFILTER_KW_FAILURE = 8uL;
		public const uint64 SYSTEM_LOCK_KW_SPINLOCK = 1uL;
		public const uint64 SYSTEM_LOCK_KW_SPINLOCK_COUNTERS = 2uL;
		public const uint64 SYSTEM_LOCK_KW_SYNC_OBJECTS = 4uL;
		public const uint64 SYSTEM_MEMORY_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_MEMORY_KW_HARD_FAULTS = 2uL;
		public const uint64 SYSTEM_MEMORY_KW_ALL_FAULTS = 4uL;
		public const uint64 SYSTEM_MEMORY_KW_POOL = 8uL;
		public const uint64 SYSTEM_MEMORY_KW_MEMINFO = 16uL;
		public const uint64 SYSTEM_MEMORY_KW_PFSECTION = 32uL;
		public const uint64 SYSTEM_MEMORY_KW_MEMINFO_WS = 64uL;
		public const uint64 SYSTEM_MEMORY_KW_HEAP = 128uL;
		public const uint64 SYSTEM_MEMORY_KW_WS = 256uL;
		public const uint64 SYSTEM_MEMORY_KW_CONTMEM_GEN = 512uL;
		public const uint64 SYSTEM_MEMORY_KW_VIRTUAL_ALLOC = 1024uL;
		public const uint64 SYSTEM_MEMORY_KW_FOOTPRINT = 2048uL;
		public const uint64 SYSTEM_MEMORY_KW_SESSION = 4096uL;
		public const uint64 SYSTEM_MEMORY_KW_REFSET = 8192uL;
		public const uint64 SYSTEM_MEMORY_KW_VAMAP = 16384uL;
		public const uint64 SYSTEM_MEMORY_KW_NONTRADEABLE = 32768uL;
		public const uint64 SYSTEM_OBJECT_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_OBJECT_KW_HANDLE = 2uL;
		public const uint64 SYSTEM_POWER_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_POWER_KW_HIBER_RUNDOWN = 2uL;
		public const uint64 SYSTEM_POWER_KW_PROCESSOR_IDLE = 4uL;
		public const uint64 SYSTEM_POWER_KW_IDLE_SELECTION = 8uL;
		public const uint64 SYSTEM_POWER_KW_PPM_EXIT_LATENCY = 16uL;
		public const uint64 SYSTEM_PROCESS_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_PROCESS_KW_INSWAP = 2uL;
		public const uint64 SYSTEM_PROCESS_KW_FREEZE = 4uL;
		public const uint64 SYSTEM_PROCESS_KW_PERF_COUNTER = 8uL;
		public const uint64 SYSTEM_PROCESS_KW_WAKE_COUNTER = 16uL;
		public const uint64 SYSTEM_PROCESS_KW_WAKE_DROP = 32uL;
		public const uint64 SYSTEM_PROCESS_KW_WAKE_EVENT = 64uL;
		public const uint64 SYSTEM_PROCESS_KW_DEBUG_EVENTS = 128uL;
		public const uint64 SYSTEM_PROCESS_KW_DBGPRINT = 256uL;
		public const uint64 SYSTEM_PROCESS_KW_JOB = 512uL;
		public const uint64 SYSTEM_PROCESS_KW_WORKER_THREAD = 1024uL;
		public const uint64 SYSTEM_PROCESS_KW_THREAD = 2048uL;
		public const uint64 SYSTEM_PROCESS_KW_LOADER = 4096uL;
		public const uint64 SYSTEM_PROFILE_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_PROFILE_KW_PMC_PROFILE = 2uL;
		public const uint64 SYSTEM_REGISTRY_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_REGISTRY_KW_HIVE = 2uL;
		public const uint64 SYSTEM_REGISTRY_KW_NOTIFICATION = 4uL;
		public const uint64 SYSTEM_SCHEDULER_KW_XSCHEDULER = 1uL;
		public const uint64 SYSTEM_SCHEDULER_KW_DISPATCHER = 2uL;
		public const uint64 SYSTEM_SCHEDULER_KW_KERNEL_QUEUE = 4uL;
		public const uint64 SYSTEM_SCHEDULER_KW_SHOULD_YIELD = 8uL;
		public const uint64 SYSTEM_SCHEDULER_KW_ANTI_STARVATION = 16uL;
		public const uint64 SYSTEM_SCHEDULER_KW_LOAD_BALANCER = 32uL;
		public const uint64 SYSTEM_SCHEDULER_KW_AFFINITY = 64uL;
		public const uint64 SYSTEM_SCHEDULER_KW_PRIORITY = 128uL;
		public const uint64 SYSTEM_SCHEDULER_KW_IDEAL_PROCESSOR = 256uL;
		public const uint64 SYSTEM_SCHEDULER_KW_CONTEXT_SWITCH = 512uL;
		public const uint64 SYSTEM_SCHEDULER_KW_COMPACT_CSWITCH = 1024uL;
		public const uint64 SYSTEM_SYSCALL_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_TIMER_KW_GENERAL = 1uL;
		public const uint64 SYSTEM_TIMER_KW_CLOCK_TIMER = 2uL;
		public const uint32 SYSTEM_MEMORY_POOL_FILTER_ID = 1;
		public const uint32 ETW_NULL_TYPE_VALUE = 0;
		public const uint32 ETW_OBJECT_TYPE_VALUE = 1;
		public const uint32 ETW_STRING_TYPE_VALUE = 2;
		public const uint32 ETW_SBYTE_TYPE_VALUE = 3;
		public const uint32 ETW_BYTE_TYPE_VALUE = 4;
		public const uint32 ETW_INT16_TYPE_VALUE = 5;
		public const uint32 ETW_UINT16_TYPE_VALUE = 6;
		public const uint32 ETW_INT32_TYPE_VALUE = 7;
		public const uint32 ETW_UINT32_TYPE_VALUE = 8;
		public const uint32 ETW_INT64_TYPE_VALUE = 9;
		public const uint32 ETW_UINT64_TYPE_VALUE = 10;
		public const uint32 ETW_CHAR_TYPE_VALUE = 11;
		public const uint32 ETW_SINGLE_TYPE_VALUE = 12;
		public const uint32 ETW_DOUBLE_TYPE_VALUE = 13;
		public const uint32 ETW_BOOLEAN_TYPE_VALUE = 14;
		public const uint32 ETW_DECIMAL_TYPE_VALUE = 15;
		public const uint32 ETW_GUID_TYPE_VALUE = 101;
		public const uint32 ETW_ASCIICHAR_TYPE_VALUE = 102;
		public const uint32 ETW_ASCIISTRING_TYPE_VALUE = 103;
		public const uint32 ETW_COUNTED_STRING_TYPE_VALUE = 104;
		public const uint32 ETW_POINTER_TYPE_VALUE = 105;
		public const uint32 ETW_SIZET_TYPE_VALUE = 106;
		public const uint32 ETW_HIDDEN_TYPE_VALUE = 107;
		public const uint32 ETW_BOOL_TYPE_VALUE = 108;
		public const uint32 ETW_COUNTED_ANSISTRING_TYPE_VALUE = 109;
		public const uint32 ETW_REVERSED_COUNTED_STRING_TYPE_VALUE = 110;
		public const uint32 ETW_REVERSED_COUNTED_ANSISTRING_TYPE_VALUE = 111;
		public const uint32 ETW_NON_NULL_TERMINATED_STRING_TYPE_VALUE = 112;
		public const uint32 ETW_REDUCED_ANSISTRING_TYPE_VALUE = 113;
		public const uint32 ETW_REDUCED_STRING_TYPE_VALUE = 114;
		public const uint32 ETW_SID_TYPE_VALUE = 115;
		public const uint32 ETW_VARIANT_TYPE_VALUE = 116;
		public const uint32 ETW_PTVECTOR_TYPE_VALUE = 117;
		public const uint32 ETW_WMITIME_TYPE_VALUE = 118;
		public const uint32 ETW_DATETIME_TYPE_VALUE = 119;
		public const uint32 ETW_REFRENCE_TYPE_VALUE = 120;
		public const uint32 TRACE_PROVIDER_FLAG_LEGACY = 1;
		public const uint32 TRACE_PROVIDER_FLAG_PRE_ENABLE = 2;
		public const uint32 ENABLE_TRACE_PARAMETERS_VERSION = 1;
		public const uint32 ENABLE_TRACE_PARAMETERS_VERSION_2 = 2;
		public const uint32 EVENT_MIN_LEVEL = 0;
		public const uint32 EVENT_MAX_LEVEL = 255;
		public const uint32 EVENT_ACTIVITY_CTRL_GET_ID = 1;
		public const uint32 EVENT_ACTIVITY_CTRL_SET_ID = 2;
		public const uint32 EVENT_ACTIVITY_CTRL_CREATE_ID = 3;
		public const uint32 EVENT_ACTIVITY_CTRL_GET_SET_ID = 4;
		public const uint32 EVENT_ACTIVITY_CTRL_CREATE_SET_ID = 5;
		public const uint32 MAX_EVENT_DATA_DESCRIPTORS = 128;
		public const uint32 MAX_EVENT_FILTER_DATA_SIZE = 1024;
		public const uint32 MAX_EVENT_FILTER_PAYLOAD_SIZE = 4096;
		public const uint32 MAX_EVENT_FILTER_EVENT_NAME_SIZE = 4096;
		public const uint32 MAX_EVENT_FILTERS_COUNT = 13;
		public const uint32 MAX_EVENT_FILTER_PID_COUNT = 8;
		public const uint32 MAX_EVENT_FILTER_EVENT_ID_COUNT = 64;
		public const uint32 EVENT_FILTER_TYPE_NONE = 0;
		public const uint32 EVENT_FILTER_TYPE_SCHEMATIZED = 2147483648;
		public const uint32 EVENT_FILTER_TYPE_SYSTEM_FLAGS = 2147483649;
		public const uint32 EVENT_FILTER_TYPE_TRACEHANDLE = 2147483650;
		public const uint32 EVENT_FILTER_TYPE_PID = 2147483652;
		public const uint32 EVENT_FILTER_TYPE_EXECUTABLE_NAME = 2147483656;
		public const uint32 EVENT_FILTER_TYPE_PACKAGE_ID = 2147483664;
		public const uint32 EVENT_FILTER_TYPE_PACKAGE_APP_ID = 2147483680;
		public const uint32 EVENT_FILTER_TYPE_PAYLOAD = 2147483904;
		public const uint32 EVENT_FILTER_TYPE_EVENT_ID = 2147484160;
		public const uint32 EVENT_FILTER_TYPE_EVENT_NAME = 2147484672;
		public const uint32 EVENT_FILTER_TYPE_STACKWALK = 2147487744;
		public const uint32 EVENT_FILTER_TYPE_STACKWALK_NAME = 2147491840;
		public const uint32 EVENT_FILTER_TYPE_STACKWALK_LEVEL_KW = 2147500032;
		public const uint32 EVENT_FILTER_TYPE_CONTAINER = 2147516416;
		public const uint32 EVENT_DATA_DESCRIPTOR_TYPE_NONE = 0;
		public const uint32 EVENT_DATA_DESCRIPTOR_TYPE_EVENT_METADATA = 1;
		public const uint32 EVENT_DATA_DESCRIPTOR_TYPE_PROVIDER_METADATA = 2;
		public const uint32 EVENT_DATA_DESCRIPTOR_TYPE_TIMESTAMP_OVERRIDE = 3;
		public const uint32 EVENT_WRITE_FLAG_NO_FAULTING = 1;
		public const uint32 EVENT_WRITE_FLAG_INPRIVATE = 2;
		public const uint32 EVENT_HEADER_EXT_TYPE_RELATED_ACTIVITYID = 1;
		public const uint32 EVENT_HEADER_EXT_TYPE_SID = 2;
		public const uint32 EVENT_HEADER_EXT_TYPE_TS_ID = 3;
		public const uint32 EVENT_HEADER_EXT_TYPE_INSTANCE_INFO = 4;
		public const uint32 EVENT_HEADER_EXT_TYPE_STACK_TRACE32 = 5;
		public const uint32 EVENT_HEADER_EXT_TYPE_STACK_TRACE64 = 6;
		public const uint32 EVENT_HEADER_EXT_TYPE_PEBS_INDEX = 7;
		public const uint32 EVENT_HEADER_EXT_TYPE_PMC_COUNTERS = 8;
		public const uint32 EVENT_HEADER_EXT_TYPE_PSM_KEY = 9;
		public const uint32 EVENT_HEADER_EXT_TYPE_EVENT_KEY = 10;
		public const uint32 EVENT_HEADER_EXT_TYPE_EVENT_SCHEMA_TL = 11;
		public const uint32 EVENT_HEADER_EXT_TYPE_PROV_TRAITS = 12;
		public const uint32 EVENT_HEADER_EXT_TYPE_PROCESS_START_KEY = 13;
		public const uint32 EVENT_HEADER_EXT_TYPE_CONTROL_GUID = 14;
		public const uint32 EVENT_HEADER_EXT_TYPE_QPC_DELTA = 15;
		public const uint32 EVENT_HEADER_EXT_TYPE_CONTAINER_ID = 16;
		public const uint32 EVENT_HEADER_EXT_TYPE_STACK_KEY32 = 17;
		public const uint32 EVENT_HEADER_EXT_TYPE_STACK_KEY64 = 18;
		public const uint32 EVENT_HEADER_EXT_TYPE_MAX = 19;
		public const uint32 EVENT_HEADER_PROPERTY_XML = 1;
		public const uint32 EVENT_HEADER_PROPERTY_FORWARDED_XML = 2;
		public const uint32 EVENT_HEADER_PROPERTY_LEGACY_EVENTLOG = 4;
		public const uint32 EVENT_HEADER_PROPERTY_RELOGGABLE = 8;
		public const uint32 EVENT_HEADER_FLAG_EXTENDED_INFO = 1;
		public const uint32 EVENT_HEADER_FLAG_PRIVATE_SESSION = 2;
		public const uint32 EVENT_HEADER_FLAG_STRING_ONLY = 4;
		public const uint32 EVENT_HEADER_FLAG_TRACE_MESSAGE = 8;
		public const uint32 EVENT_HEADER_FLAG_NO_CPUTIME = 16;
		public const uint32 EVENT_HEADER_FLAG_32_BIT_HEADER = 32;
		public const uint32 EVENT_HEADER_FLAG_64_BIT_HEADER = 64;
		public const uint32 EVENT_HEADER_FLAG_DECODE_GUID = 128;
		public const uint32 EVENT_HEADER_FLAG_CLASSIC_HEADER = 256;
		public const uint32 EVENT_HEADER_FLAG_PROCESSOR_INDEX = 512;
		public const uint32 EVENT_ENABLE_PROPERTY_SID = 1;
		public const uint32 EVENT_ENABLE_PROPERTY_TS_ID = 2;
		public const uint32 EVENT_ENABLE_PROPERTY_STACK_TRACE = 4;
		public const uint32 EVENT_ENABLE_PROPERTY_PSM_KEY = 8;
		public const uint32 EVENT_ENABLE_PROPERTY_IGNORE_KEYWORD_0 = 16;
		public const uint32 EVENT_ENABLE_PROPERTY_PROVIDER_GROUP = 32;
		public const uint32 EVENT_ENABLE_PROPERTY_ENABLE_KEYWORD_0 = 64;
		public const uint32 EVENT_ENABLE_PROPERTY_PROCESS_START_KEY = 128;
		public const uint32 EVENT_ENABLE_PROPERTY_EVENT_KEY = 256;
		public const uint32 EVENT_ENABLE_PROPERTY_EXCLUDE_INPRIVATE = 512;
		public const uint32 EVENT_ENABLE_PROPERTY_ENABLE_SILOS = 1024;
		public const uint32 EVENT_ENABLE_PROPERTY_SOURCE_CONTAINER_TRACKING = 2048;
		public const uint32 PROCESS_TRACE_MODE_REAL_TIME = 256;
		public const uint32 PROCESS_TRACE_MODE_RAW_TIMESTAMP = 4096;
		public const uint32 PROCESS_TRACE_MODE_EVENT_RECORD = 268435456;
		public const Guid CLSID_TraceRelogger = .(0x7b40792d, 0x05ff, 0x44c4, 0x90, 0x58, 0xf4, 0x40, 0xc7, 0x1f, 0x17, 0xd4);
		
		// --- Typedefs ---
		
		public typealias TDH_HANDLE = int;
		
		// --- Enums ---
		
		public enum TRACE_MESSAGE_FLAGS : uint32
		{
			COMPONENTID = 4,
			GUID = 2,
			SEQUENCE = 1,
			SYSTEMINFO = 32,
			TIMESTAMP = 8,
		}
		public enum ENABLECALLBACK_ENABLED_STATE : uint32
		{
			DISABLE_PROVIDER = 0,
			ENABLE_PROVIDER = 1,
			CAPTURE_STATE = 2,
		}
		public enum EVENT_TRACE_CONTROL : uint32
		{
			FLUSH = 3,
			QUERY = 0,
			STOP = 1,
			UPDATE = 2,
		}
		public enum EVENT_TRACE_FLAG : uint32
		{
			ALPC = 1048576,
			CSWITCH = 16,
			DBGPRINT = 262144,
			DISK_FILE_IO = 512,
			DISK_IO = 256,
			DISK_IO_INIT = 1024,
			DISPATCHER = 2048,
			DPC = 32,
			DRIVER = 8388608,
			FILE_IO = 33554432,
			FILE_IO_INIT = 67108864,
			IMAGE_LOAD = 4,
			INTERRUPT = 64,
			JOB = 524288,
			MEMORY_HARD_FAULTS = 8192,
			MEMORY_PAGE_FAULTS = 4096,
			NETWORK_TCPIP = 65536,
			NO_SYSCONFIG = 268435456,
			PROCESS = 1,
			PROCESS_COUNTERS = 8,
			PROFILE = 16777216,
			REGISTRY = 131072,
			SPLIT_IO = 2097152,
			SYSTEMCALL = 128,
			THREAD = 2,
			VAMAP = 32768,
			VIRTUAL_ALLOC = 16384,
		}
		public enum WMIDPREQUESTCODE : int32
		{
			GET_ALL_DATA = 0,
			GET_SINGLE_INSTANCE = 1,
			SET_SINGLE_INSTANCE = 2,
			SET_SINGLE_ITEM = 3,
			ENABLE_EVENTS = 4,
			DISABLE_EVENTS = 5,
			ENABLE_COLLECTION = 6,
			DISABLE_COLLECTION = 7,
			REGINFO = 8,
			EXECUTE_METHOD = 9,
			CAPTURE_STATE = 10,
		}
		public enum ETW_COMPRESSION_RESUMPTION_MODE : int32
		{
			Restart = 0,
			NoDisable = 1,
			NoRestart = 2,
		}
		public enum ETW_PMC_COUNTER_OWNER_TYPE : int32
		{
			Free = 0,
			Untagged = 1,
			Tagged = 2,
			TaggedWithSource = 3,
		}
		public enum TRACE_QUERY_INFO_CLASS : int32
		{
			TraceGuidQueryList = 0,
			TraceGuidQueryInfo = 1,
			TraceGuidQueryProcess = 2,
			TraceStackTracingInfo = 3,
			TraceSystemTraceEnableFlagsInfo = 4,
			TraceSampledProfileIntervalInfo = 5,
			TraceProfileSourceConfigInfo = 6,
			TraceProfileSourceListInfo = 7,
			TracePmcEventListInfo = 8,
			TracePmcCounterListInfo = 9,
			TraceSetDisallowList = 10,
			TraceVersionInfo = 11,
			TraceGroupQueryList = 12,
			TraceGroupQueryInfo = 13,
			TraceDisallowListQuery = 14,
			TraceInfoReserved15 = 15,
			TracePeriodicCaptureStateListInfo = 16,
			TracePeriodicCaptureStateInfo = 17,
			TraceProviderBinaryTracking = 18,
			TraceMaxLoggersQuery = 19,
			TraceLbrConfigurationInfo = 20,
			TraceLbrEventListInfo = 21,
			TraceMaxPmcCounterQuery = 22,
			TraceStreamCount = 23,
			TraceStackCachingInfo = 24,
			TracePmcCounterOwners = 25,
			TraceUnifiedStackCachingInfo = 26,
			MaxTraceSetInfoClass = 27,
		}
		public enum ETW_PROCESS_HANDLE_INFO_TYPE : int32
		{
			PartitionInformation = 1,
			PartitionInformationV2 = 2,
			LastDroppedTimes = 3,
			ProcessHandleInfoMax = 4,
		}
		public enum EVENT_INFO_CLASS : int32
		{
			EventProviderBinaryTrackInfo = 0,
			EventProviderSetReserved1 = 1,
			EventProviderSetTraits = 2,
			EventProviderUseDescriptorType = 3,
			MaxEventInfo = 4,
		}
		public enum ETW_PROVIDER_TRAIT_TYPE : int32
		{
			TypeGroup = 1,
			DecodeGuid = 2,
			TypeMax = 3,
		}
		public enum EVENTSECURITYOPERATION : int32
		{
			SetDACL = 0,
			SetSACL = 1,
			AddDACL = 2,
			AddSACL = 3,
			Max = 4,
		}
		public enum MAP_FLAGS : int32
		{
			MANIFEST_VALUEMAP = 1,
			MANIFEST_BITMAP = 2,
			MANIFEST_PATTERNMAP = 4,
			WBEM_VALUEMAP = 8,
			WBEM_BITMAP = 16,
			WBEM_FLAG = 32,
			WBEM_NO_MAP = 64,
		}
		public enum MAP_VALUETYPE : int32
		{
			ULONG = 0,
			STRING = 1,
		}
		public enum _TDH_IN_TYPE : int32
		{
			NULL = 0,
			UNICODESTRING = 1,
			ANSISTRING = 2,
			INT8 = 3,
			UINT8 = 4,
			INT16 = 5,
			UINT16 = 6,
			INT32 = 7,
			UINT32 = 8,
			INT64 = 9,
			UINT64 = 10,
			FLOAT = 11,
			DOUBLE = 12,
			BOOLEAN = 13,
			BINARY = 14,
			GUID = 15,
			POINTER = 16,
			FILETIME = 17,
			SYSTEMTIME = 18,
			SID = 19,
			HEXINT32 = 20,
			HEXINT64 = 21,
			MANIFEST_COUNTEDSTRING = 22,
			MANIFEST_COUNTEDANSISTRING = 23,
			RESERVED24 = 24,
			MANIFEST_COUNTEDBINARY = 25,
			COUNTEDSTRING = 300,
			COUNTEDANSISTRING = 301,
			REVERSEDCOUNTEDSTRING = 302,
			REVERSEDCOUNTEDANSISTRING = 303,
			NONNULLTERMINATEDSTRING = 304,
			NONNULLTERMINATEDANSISTRING = 305,
			UNICODECHAR = 306,
			ANSICHAR = 307,
			SIZET = 308,
			HEXDUMP = 309,
			WBEMSID = 310,
		}
		public enum _TDH_OUT_TYPE : int32
		{
			NULL = 0,
			STRING = 1,
			DATETIME = 2,
			BYTE = 3,
			UNSIGNEDBYTE = 4,
			SHORT = 5,
			UNSIGNEDSHORT = 6,
			INT = 7,
			UNSIGNEDINT = 8,
			LONG = 9,
			UNSIGNEDLONG = 10,
			FLOAT = 11,
			DOUBLE = 12,
			BOOLEAN = 13,
			GUID = 14,
			HEXBINARY = 15,
			HEXINT8 = 16,
			HEXINT16 = 17,
			HEXINT32 = 18,
			HEXINT64 = 19,
			PID = 20,
			TID = 21,
			PORT = 22,
			IPV4 = 23,
			IPV6 = 24,
			SOCKETADDRESS = 25,
			CIMDATETIME = 26,
			ETWTIME = 27,
			XML = 28,
			ERRORCODE = 29,
			WIN32ERROR = 30,
			NTSTATUS = 31,
			HRESULT = 32,
			CULTURE_INSENSITIVE_DATETIME = 33,
			JSON = 34,
			UTF8 = 35,
			PKCS7_WITH_TYPE_INFO = 36,
			CODE_POINTER = 37,
			DATETIME_UTC = 38,
			REDUCEDSTRING = 300,
			NOPRINT = 301,
		}
		public enum PROPERTY_FLAGS : int32
		{
			Struct = 1,
			ParamLength = 2,
			ParamCount = 4,
			WBEMXmlFragment = 8,
			ParamFixedLength = 16,
			ParamFixedCount = 32,
			HasTags = 64,
			HasCustomSchema = 128,
		}
		public enum DECODING_SOURCE : int32
		{
			XMLFile = 0,
			Wbem = 1,
			WPP = 2,
			Tlg = 3,
			Max = 4,
		}
		public enum TEMPLATE_FLAGS : int32
		{
			EVENT_DATA = 1,
			USER_DATA = 2,
			CONTROL_GUID = 4,
		}
		public enum PAYLOAD_OPERATOR : int32
		{
			EQ = 0,
			NE = 1,
			LE = 2,
			GT = 3,
			LT = 4,
			GE = 5,
			BETWEEN = 6,
			NOTBETWEEN = 7,
			MODULO = 8,
			CONTAINS = 20,
			DOESNTCONTAIN = 21,
			IS = 30,
			ISNOT = 31,
			INVALID = 32,
		}
		public enum EVENT_FIELD_TYPE : int32
		{
			KeywordInformation = 0,
			LevelInformation = 1,
			ChannelInformation = 2,
			TaskInformation = 3,
			OpcodeInformation = 4,
			InformationMax = 5,
		}
		public enum TDH_CONTEXT_TYPE : int32
		{
			WPP_TMFFILE = 0,
			WPP_TMFSEARCHPATH = 1,
			WPP_GMT = 2,
			POINTERSIZE = 3,
			PDB_PATH = 4,
			MAXIMUM = 5,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PEVENT_TRACE_BUFFER_CALLBACKW(out EVENT_TRACE_LOGFILEW Logfile);
		public function uint32 PEVENT_TRACE_BUFFER_CALLBACKA(out EVENT_TRACE_LOGFILEA Logfile);
		public function void PEVENT_CALLBACK(out EVENT_TRACE pEvent);
		public function void PEVENT_RECORD_CALLBACK(out EVENT_RECORD EventRecord);
		public function uint32 WMIDPREQUEST(WMIDPREQUESTCODE RequestCode, void* RequestContext, out uint32 BufferSize, void* Buffer);
		public function void PENABLECALLBACK(in Guid SourceId, ENABLECALLBACK_ENABLED_STATE IsEnabled, uint8 Level, uint64 MatchAnyKeyword, uint64 MatchAllKeyword, EVENT_FILTER_DESCRIPTOR* FilterData, void* CallbackContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct WNODE_HEADER
		{
			public uint32 BufferSize;
			public uint32 ProviderId;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public Guid Guid;
			public uint32 ClientContext;
			public uint32 Flags;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 CountLost;
				public HANDLE KernelHandle;
				public LARGE_INTEGER TimeStamp;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint64 HistoricalContext;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Version;
					public uint32 Linkage;
				}
			}
		}
		[CRepr]
		public struct OFFSETINSTANCEDATAANDLENGTH
		{
			public uint32 OffsetInstanceData;
			public uint32 LengthInstanceData;
		}
		[CRepr]
		public struct WNODE_ALL_DATA
		{
			public WNODE_HEADER WnodeHeader;
			public uint32 DataBlockOffset;
			public uint32 InstanceCount;
			public uint32 OffsetInstanceNameOffsets;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 FixedInstanceSize;
				public OFFSETINSTANCEDATAANDLENGTH[0] OffsetInstanceDataAndLength;
			}
		}
		[CRepr]
		public struct WNODE_SINGLE_INSTANCE
		{
			public WNODE_HEADER WnodeHeader;
			public uint32 OffsetInstanceName;
			public uint32 InstanceIndex;
			public uint32 DataBlockOffset;
			public uint32 SizeDataBlock;
			public uint8[0] VariableData;
		}
		[CRepr]
		public struct WNODE_SINGLE_ITEM
		{
			public WNODE_HEADER WnodeHeader;
			public uint32 OffsetInstanceName;
			public uint32 InstanceIndex;
			public uint32 ItemId;
			public uint32 DataBlockOffset;
			public uint32 SizeDataItem;
			public uint8[0] VariableData;
		}
		[CRepr]
		public struct WNODE_METHOD_ITEM
		{
			public WNODE_HEADER WnodeHeader;
			public uint32 OffsetInstanceName;
			public uint32 InstanceIndex;
			public uint32 MethodId;
			public uint32 DataBlockOffset;
			public uint32 SizeDataBlock;
			public uint8[0] VariableData;
		}
		[CRepr]
		public struct WNODE_EVENT_ITEM
		{
			public WNODE_HEADER WnodeHeader;
		}
		[CRepr]
		public struct WNODE_EVENT_REFERENCE
		{
			public WNODE_HEADER WnodeHeader;
			public Guid TargetGuid;
			public uint32 TargetDataBlockSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 TargetInstanceIndex;
				public char16[0] TargetInstanceName;
			}
		}
		[CRepr]
		public struct WNODE_TOO_SMALL
		{
			public WNODE_HEADER WnodeHeader;
			public uint32 SizeNeeded;
		}
		[CRepr]
		public struct WMIREGGUIDW
		{
			public Guid Guid;
			public uint32 Flags;
			public uint32 InstanceCount;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 InstanceNameList;
				public uint32 BaseNameOffset;
				public uint Pdo;
				public uint InstanceInfo;
			}
		}
		[CRepr]
		public struct WMIREGINFOW
		{
			public uint32 BufferSize;
			public uint32 NextWmiRegInfo;
			public uint32 RegistryPath;
			public uint32 MofResourceName;
			public uint32 GuidCount;
			public WMIREGGUIDW[0] WmiRegGuid;
		}
		[CRepr]
		public struct EVENT_TRACE_HEADER
		{
			public uint16 Size;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 ThreadId;
			public uint32 ProcessId;
			public LARGE_INTEGER TimeStamp;
			public _Anonymous3_e__Union Anonymous3;
			public _Anonymous4_e__Union Anonymous4;
			
			[CRepr, Union]
			public struct _Anonymous4_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public uint64 ProcessorTime;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 ClientContext;
					public uint32 Flags;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 KernelTime;
					public uint32 UserTime;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 Version;
				public _Class_e__Struct Class;
				
				[CRepr]
				public struct _Class_e__Struct
				{
					public uint8 Type;
					public uint8 Level;
					public uint16 Version;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint16 FieldTypeFlags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 HeaderType;
					public uint8 MarkerFlags;
				}
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public Guid Guid;
				public uint64 GuidPtr;
			}
		}
		[CRepr]
		public struct EVENT_INSTANCE_HEADER
		{
			public uint16 Size;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 ThreadId;
			public uint32 ProcessId;
			public LARGE_INTEGER TimeStamp;
			public uint64 RegHandle;
			public uint32 InstanceId;
			public uint32 ParentInstanceId;
			public _Anonymous3_e__Union Anonymous3;
			public uint64 ParentRegHandle;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public uint64 ProcessorTime;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 EventId;
					public uint32 Flags;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 KernelTime;
					public uint32 UserTime;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 Version;
				public _Class_e__Struct Class;
				
				[CRepr]
				public struct _Class_e__Struct
				{
					public uint8 Type;
					public uint8 Level;
					public uint16 Version;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint16 FieldTypeFlags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 HeaderType;
					public uint8 MarkerFlags;
				}
			}
		}
		[CRepr]
		public struct MOF_FIELD
		{
			public uint64 DataPtr;
			public uint32 Length;
			public uint32 DataType;
		}
		[CRepr]
		public struct TRACE_LOGFILE_HEADER
		{
			public uint32 BufferSize;
			public _Anonymous1_e__Union Anonymous1;
			public uint32 ProviderVersion;
			public uint32 NumberOfProcessors;
			public LARGE_INTEGER EndTime;
			public uint32 TimerResolution;
			public uint32 MaximumFileSize;
			public uint32 LogFileMode;
			public uint32 BuffersWritten;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR LoggerName;
			public PWSTR LogFileName;
			public TIME_ZONE_INFORMATION TimeZone;
			public LARGE_INTEGER BootTime;
			public LARGE_INTEGER PerfFreq;
			public LARGE_INTEGER StartTime;
			public uint32 ReservedFlags;
			public uint32 BuffersLost;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public Guid LogInstanceGuid;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 StartBuffers;
					public uint32 PointerSize;
					public uint32 EventsLost;
					public uint32 CpuSpeedInMHz;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 Version;
				public _VersionDetail_e__Struct VersionDetail;
				
				[CRepr]
				public struct _VersionDetail_e__Struct
				{
					public uint8 MajorVersion;
					public uint8 MinorVersion;
					public uint8 SubVersion;
					public uint8 SubMinorVersion;
				}
			}
		}
		[CRepr]
		public struct TRACE_LOGFILE_HEADER32
		{
			public uint32 BufferSize;
			public _Anonymous1_e__Union Anonymous1;
			public uint32 ProviderVersion;
			public uint32 NumberOfProcessors;
			public LARGE_INTEGER EndTime;
			public uint32 TimerResolution;
			public uint32 MaximumFileSize;
			public uint32 LogFileMode;
			public uint32 BuffersWritten;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 LoggerName;
			public uint32 LogFileName;
			public TIME_ZONE_INFORMATION TimeZone;
			public LARGE_INTEGER BootTime;
			public LARGE_INTEGER PerfFreq;
			public LARGE_INTEGER StartTime;
			public uint32 ReservedFlags;
			public uint32 BuffersLost;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public Guid LogInstanceGuid;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 StartBuffers;
					public uint32 PointerSize;
					public uint32 EventsLost;
					public uint32 CpuSpeedInMHz;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 Version;
				public _VersionDetail_e__Struct VersionDetail;
				
				[CRepr]
				public struct _VersionDetail_e__Struct
				{
					public uint8 MajorVersion;
					public uint8 MinorVersion;
					public uint8 SubVersion;
					public uint8 SubMinorVersion;
				}
			}
		}
		[CRepr]
		public struct TRACE_LOGFILE_HEADER64
		{
			public uint32 BufferSize;
			public _Anonymous1_e__Union Anonymous1;
			public uint32 ProviderVersion;
			public uint32 NumberOfProcessors;
			public LARGE_INTEGER EndTime;
			public uint32 TimerResolution;
			public uint32 MaximumFileSize;
			public uint32 LogFileMode;
			public uint32 BuffersWritten;
			public _Anonymous2_e__Union Anonymous2;
			public uint64 LoggerName;
			public uint64 LogFileName;
			public TIME_ZONE_INFORMATION TimeZone;
			public LARGE_INTEGER BootTime;
			public LARGE_INTEGER PerfFreq;
			public LARGE_INTEGER StartTime;
			public uint32 ReservedFlags;
			public uint32 BuffersLost;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public Guid LogInstanceGuid;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 StartBuffers;
					public uint32 PointerSize;
					public uint32 EventsLost;
					public uint32 CpuSpeedInMHz;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 Version;
				public _VersionDetail_e__Struct VersionDetail;
				
				[CRepr]
				public struct _VersionDetail_e__Struct
				{
					public uint8 MajorVersion;
					public uint8 MinorVersion;
					public uint8 SubVersion;
					public uint8 SubMinorVersion;
				}
			}
		}
		[CRepr]
		public struct EVENT_INSTANCE_INFO
		{
			public HANDLE RegHandle;
			public uint32 InstanceId;
		}
		[CRepr]
		public struct EVENT_TRACE_PROPERTIES
		{
			public WNODE_HEADER Wnode;
			public uint32 BufferSize;
			public uint32 MinimumBuffers;
			public uint32 MaximumBuffers;
			public uint32 MaximumFileSize;
			public uint32 LogFileMode;
			public uint32 FlushTimer;
			public EVENT_TRACE_FLAG EnableFlags;
			public _Anonymous_e__Union Anonymous;
			public uint32 NumberOfBuffers;
			public uint32 FreeBuffers;
			public uint32 EventsLost;
			public uint32 BuffersWritten;
			public uint32 LogBuffersLost;
			public uint32 RealTimeBuffersLost;
			public HANDLE LoggerThreadId;
			public uint32 LogFileNameOffset;
			public uint32 LoggerNameOffset;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 AgeLimit;
				public int32 FlushThreshold;
			}
		}
		[CRepr]
		public struct EVENT_TRACE_PROPERTIES_V2
		{
			public WNODE_HEADER Wnode;
			public uint32 BufferSize;
			public uint32 MinimumBuffers;
			public uint32 MaximumBuffers;
			public uint32 MaximumFileSize;
			public uint32 LogFileMode;
			public uint32 FlushTimer;
			public EVENT_TRACE_FLAG EnableFlags;
			public _Anonymous1_e__Union Anonymous1;
			public uint32 NumberOfBuffers;
			public uint32 FreeBuffers;
			public uint32 EventsLost;
			public uint32 BuffersWritten;
			public uint32 LogBuffersLost;
			public uint32 RealTimeBuffersLost;
			public HANDLE LoggerThreadId;
			public uint32 LogFileNameOffset;
			public uint32 LoggerNameOffset;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 FilterDescCount;
			public EVENT_FILTER_DESCRIPTOR* FilterDesc;
			public _Anonymous3_e__Union Anonymous3;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64 V2Options;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 V2Control;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public int32 AgeLimit;
				public int32 FlushThreshold;
			}
		}
		[CRepr]
		public struct TRACE_GUID_REGISTRATION
		{
			public Guid* Guid;
			public HANDLE RegHandle;
		}
		[CRepr]
		public struct TRACE_GUID_PROPERTIES
		{
			public Guid Guid;
			public uint32 GuidType;
			public uint32 LoggerId;
			public uint32 EnableLevel;
			public uint32 EnableFlags;
			public BOOLEAN IsEnable;
		}
		[CRepr]
		public struct ETW_BUFFER_CONTEXT
		{
			public _Anonymous_e__Union Anonymous;
			public uint16 LoggerId;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint16 ProcessorIndex;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 ProcessorNumber;
					public uint8 Alignment;
				}
			}
		}
		[CRepr]
		public struct TRACE_ENABLE_INFO
		{
			public uint32 IsEnabled;
			public uint8 Level;
			public uint8 Reserved1;
			public uint16 LoggerId;
			public uint32 EnableProperty;
			public uint32 Reserved2;
			public uint64 MatchAnyKeyword;
			public uint64 MatchAllKeyword;
		}
		[CRepr]
		public struct TRACE_PROVIDER_INSTANCE_INFO
		{
			public uint32 NextOffset;
			public uint32 EnableCount;
			public uint32 Pid;
			public uint32 Flags;
		}
		[CRepr]
		public struct TRACE_GUID_INFO
		{
			public uint32 InstanceCount;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PROFILE_SOURCE_INFO
		{
			public uint32 NextEntryOffset;
			public uint32 Source;
			public uint32 MinInterval;
			public uint32 MaxInterval;
			public uint64 Reserved;
			public char16[0] Description;
		}
		[CRepr]
		public struct ETW_PMC_COUNTER_OWNER
		{
			public ETW_PMC_COUNTER_OWNER_TYPE OwnerType;
			public uint32 ProfileSource;
			public uint32 OwnerTag;
		}
		[CRepr]
		public struct ETW_PMC_COUNTER_OWNERSHIP_STATUS
		{
			public uint32 ProcessorNumber;
			public uint32 NumberOfCounters;
			public ETW_PMC_COUNTER_OWNER[0] CounterOwners;
		}
		[CRepr]
		public struct EVENT_TRACE
		{
			public EVENT_TRACE_HEADER Header;
			public uint32 InstanceId;
			public uint32 ParentInstanceId;
			public Guid ParentGuid;
			public void* MofData;
			public uint32 MofLength;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ClientContext;
				public ETW_BUFFER_CONTEXT BufferContext;
			}
		}
		[CRepr]
		public struct EVENT_TRACE_LOGFILEW
		{
			public PWSTR LogFileName;
			public PWSTR LoggerName;
			public int64 CurrentTime;
			public uint32 BuffersRead;
			public _Anonymous1_e__Union Anonymous1;
			public EVENT_TRACE CurrentEvent;
			public TRACE_LOGFILE_HEADER LogfileHeader;
			public PEVENT_TRACE_BUFFER_CALLBACKW BufferCallback;
			public uint32 BufferSize;
			public uint32 Filled;
			public uint32 EventsLost;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 IsKernelTrace;
			public void* Context;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 LogFileMode;
				public uint32 ProcessTraceMode;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public PEVENT_CALLBACK EventCallback;
				public PEVENT_RECORD_CALLBACK EventRecordCallback;
			}
		}
		[CRepr]
		public struct EVENT_TRACE_LOGFILEA
		{
			public PSTR LogFileName;
			public PSTR LoggerName;
			public int64 CurrentTime;
			public uint32 BuffersRead;
			public _Anonymous1_e__Union Anonymous1;
			public EVENT_TRACE CurrentEvent;
			public TRACE_LOGFILE_HEADER LogfileHeader;
			public PEVENT_TRACE_BUFFER_CALLBACKA BufferCallback;
			public uint32 BufferSize;
			public uint32 Filled;
			public uint32 EventsLost;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 IsKernelTrace;
			public void* Context;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 LogFileMode;
				public uint32 ProcessTraceMode;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public PEVENT_CALLBACK EventCallback;
				public PEVENT_RECORD_CALLBACK EventRecordCallback;
			}
		}
		[CRepr]
		public struct ENABLE_TRACE_PARAMETERS_V1
		{
			public uint32 Version;
			public uint32 EnableProperty;
			public uint32 ControlFlags;
			public Guid SourceId;
			public EVENT_FILTER_DESCRIPTOR* EnableFilterDesc;
		}
		[CRepr]
		public struct ENABLE_TRACE_PARAMETERS
		{
			public uint32 Version;
			public uint32 EnableProperty;
			public uint32 ControlFlags;
			public Guid SourceId;
			public EVENT_FILTER_DESCRIPTOR* EnableFilterDesc;
			public uint32 FilterDescCount;
		}
		[CRepr]
		public struct CLASSIC_EVENT_ID
		{
			public Guid EventGuid;
			public uint8 Type;
			public uint8[7] Reserved;
		}
		[CRepr]
		public struct TRACE_STACK_CACHING_INFO
		{
			public BOOLEAN Enabled;
			public uint32 CacheSize;
			public uint32 BucketCount;
		}
		[CRepr]
		public struct TRACE_PROFILE_INTERVAL
		{
			public uint32 Source;
			public uint32 Interval;
		}
		[CRepr]
		public struct TRACE_VERSION_INFO
		{
			public uint32 EtwTraceProcessingVersion;
			public uint32 Reserved;
		}
		[CRepr]
		public struct TRACE_PERIODIC_CAPTURE_STATE_INFO
		{
			public uint32 CaptureStateFrequencyInSeconds;
			public uint16 ProviderCount;
			public uint16 Reserved;
		}
		[CRepr]
		public struct ETW_TRACE_PARTITION_INFORMATION
		{
			public Guid PartitionId;
			public Guid ParentId;
			public int64 QpcOffsetFromRoot;
			public uint32 PartitionType;
		}
		[CRepr]
		public struct ETW_TRACE_PARTITION_INFORMATION_V2
		{
			public int64 QpcOffsetFromRoot;
			public uint32 PartitionType;
			public PWSTR PartitionId;
			public PWSTR ParentId;
		}
		[CRepr]
		public struct EVENT_DATA_DESCRIPTOR
		{
			public uint64 Ptr;
			public uint32 Size;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 Reserved;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 Type;
					public uint8 Reserved1;
					public uint16 Reserved2;
				}
			}
		}
		[CRepr]
		public struct EVENT_DESCRIPTOR
		{
			public uint16 Id;
			public uint8 Version;
			public uint8 Channel;
			public uint8 Level;
			public uint8 Opcode;
			public uint16 Task;
			public uint64 Keyword;
		}
		[CRepr]
		public struct EVENT_FILTER_DESCRIPTOR
		{
			public uint64 Ptr;
			public uint32 Size;
			public uint32 Type;
		}
		[CRepr]
		public struct EVENT_FILTER_HEADER
		{
			public uint16 Id;
			public uint8 Version;
			public uint8[5] Reserved;
			public uint64 InstanceId;
			public uint32 Size;
			public uint32 NextOffset;
		}
		[CRepr]
		public struct EVENT_FILTER_EVENT_ID
		{
			public BOOLEAN FilterIn;
			public uint8 Reserved;
			public uint16 Count;
			public uint16[0] Events;
		}
		[CRepr]
		public struct EVENT_FILTER_EVENT_NAME
		{
			public uint64 MatchAnyKeyword;
			public uint64 MatchAllKeyword;
			public uint8 Level;
			public BOOLEAN FilterIn;
			public uint16 NameCount;
			public uint8[0] Names;
		}
		[CRepr]
		public struct EVENT_FILTER_LEVEL_KW
		{
			public uint64 MatchAnyKeyword;
			public uint64 MatchAllKeyword;
			public uint8 Level;
			public BOOLEAN FilterIn;
		}
		[CRepr]
		public struct EVENT_HEADER_EXTENDED_DATA_ITEM
		{
			public uint16 Reserved1;
			public uint16 ExtType;
			public _Anonymous_e__Struct Anonymous;
			public uint16 DataSize;
			public uint64 DataPtr;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_INSTANCE
		{
			public uint32 InstanceId;
			public uint32 ParentInstanceId;
			public Guid ParentGuid;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_RELATED_ACTIVITYID
		{
			public Guid RelatedActivityId;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_TS_ID
		{
			public uint32 SessionId;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_STACK_TRACE32
		{
			public uint64 MatchId;
			public uint32[0] Address;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_STACK_TRACE64
		{
			public uint64 MatchId;
			public uint64[0] Address;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_STACK_KEY32
		{
			public uint64 MatchId;
			public uint32 StackKey;
			public uint32 Padding;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_STACK_KEY64
		{
			public uint64 MatchId;
			public uint64 StackKey;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_PEBS_INDEX
		{
			public uint64 PebsIndex;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_PMC_COUNTERS
		{
			public uint64[0] Counter;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_PROCESS_START_KEY
		{
			public uint64 ProcessStartKey;
		}
		[CRepr]
		public struct EVENT_EXTENDED_ITEM_EVENT_KEY
		{
			public uint64 Key;
		}
		[CRepr]
		public struct EVENT_HEADER
		{
			public uint16 Size;
			public uint16 HeaderType;
			public uint16 Flags;
			public uint16 EventProperty;
			public uint32 ThreadId;
			public uint32 ProcessId;
			public LARGE_INTEGER TimeStamp;
			public Guid ProviderId;
			public EVENT_DESCRIPTOR EventDescriptor;
			public _Anonymous_e__Union Anonymous;
			public Guid ActivityId;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64 ProcessorTime;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 KernelTime;
					public uint32 UserTime;
				}
			}
		}
		[CRepr]
		public struct EVENT_RECORD
		{
			public EVENT_HEADER EventHeader;
			public ETW_BUFFER_CONTEXT BufferContext;
			public uint16 ExtendedDataCount;
			public uint16 UserDataLength;
			public EVENT_HEADER_EXTENDED_DATA_ITEM* ExtendedData;
			public void* UserData;
			public void* UserContext;
		}
		[CRepr]
		public struct EVENT_MAP_ENTRY
		{
			public uint32 OutputOffset;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 Value;
				public uint32 InputOffset;
			}
		}
		[CRepr]
		public struct EVENT_MAP_INFO
		{
			public uint32 NameOffset;
			public MAP_FLAGS Flag;
			public uint32 EntryCount;
			public _Anonymous_e__Union Anonymous;
			public EVENT_MAP_ENTRY[0] MapEntryArray;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public MAP_VALUETYPE MapEntryValueType;
				public uint32 FormatStringOffset;
			}
		}
		[CRepr]
		public struct EVENT_PROPERTY_INFO
		{
			public PROPERTY_FLAGS Flags;
			public uint32 NameOffset;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public _Anonymous4_e__Union Anonymous4;
			
			[CRepr, Union]
			public struct _Anonymous4_e__Union
			{
				public uint32 Reserved;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint16 count;
				public uint16 countPropertyIndex;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public _nonStructType nonStructType;
				public _structType structType;
				public _customSchemaType customSchemaType;
				
				[CRepr]
				public struct _customSchemaType
				{
					public uint16 InType;
					public uint16 OutType;
					public uint32 CustomSchemaOffset;
				}
				[CRepr]
				public struct _nonStructType
				{
					public uint16 InType;
					public uint16 OutType;
					public uint32 MapNameOffset;
				}
				[CRepr]
				public struct _structType
				{
					public uint16 StructStartIndex;
					public uint16 NumOfStructMembers;
					public uint32 padding;
				}
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public uint16 length;
				public uint16 lengthPropertyIndex;
			}
		}
		[CRepr]
		public struct TRACE_EVENT_INFO
		{
			public Guid ProviderGuid;
			public Guid EventGuid;
			public EVENT_DESCRIPTOR EventDescriptor;
			public DECODING_SOURCE DecodingSource;
			public uint32 ProviderNameOffset;
			public uint32 LevelNameOffset;
			public uint32 ChannelNameOffset;
			public uint32 KeywordsNameOffset;
			public uint32 TaskNameOffset;
			public uint32 OpcodeNameOffset;
			public uint32 EventMessageOffset;
			public uint32 ProviderMessageOffset;
			public uint32 BinaryXMLOffset;
			public uint32 BinaryXMLSize;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 PropertyCount;
			public uint32 TopLevelPropertyCount;
			public _Anonymous3_e__Union Anonymous3;
			public EVENT_PROPERTY_INFO[0] EventPropertyInfoArray;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public TEMPLATE_FLAGS Flags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 EventNameOffset;
				public uint32 ActivityIDNameOffset;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 EventAttributesOffset;
				public uint32 RelatedActivityIDNameOffset;
			}
		}
		[CRepr]
		public struct PROPERTY_DATA_DESCRIPTOR
		{
			public uint64 PropertyName;
			public uint32 ArrayIndex;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PAYLOAD_FILTER_PREDICATE
		{
			public PWSTR FieldName;
			public uint16 CompareOp;
			public PWSTR Value;
		}
		[CRepr]
		public struct PROVIDER_FILTER_INFO
		{
			public uint8 Id;
			public uint8 Version;
			public uint32 MessageOffset;
			public uint32 Reserved;
			public uint32 PropertyCount;
			public EVENT_PROPERTY_INFO[0] EventPropertyInfoArray;
		}
		[CRepr]
		public struct PROVIDER_FIELD_INFO
		{
			public uint32 NameOffset;
			public uint32 DescriptionOffset;
			public uint64 Value;
		}
		[CRepr]
		public struct PROVIDER_FIELD_INFOARRAY
		{
			public uint32 NumberOfElements;
			public EVENT_FIELD_TYPE FieldType;
			public PROVIDER_FIELD_INFO[0] FieldInfoArray;
		}
		[CRepr]
		public struct TRACE_PROVIDER_INFO
		{
			public Guid ProviderGuid;
			public uint32 SchemaSource;
			public uint32 ProviderNameOffset;
		}
		[CRepr]
		public struct PROVIDER_ENUMERATION_INFO
		{
			public uint32 NumberOfProviders;
			public uint32 Reserved;
			public TRACE_PROVIDER_INFO[0] TraceProviderInfoArray;
		}
		[CRepr]
		public struct PROVIDER_EVENT_INFO
		{
			public uint32 NumberOfEvents;
			public uint32 Reserved;
			public EVENT_DESCRIPTOR[0] EventDescriptorsArray;
		}
		[CRepr]
		public struct TDH_CONTEXT
		{
			public uint64 ParameterValue;
			public TDH_CONTEXT_TYPE ParameterType;
			public uint32 ParameterSize;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CTraceRelogger = .(0x7b40792d, 0x05ff, 0x44c4, 0x90, 0x58, 0xf4, 0x40, 0xc7, 0x1f, 0x17, 0xd4);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ITraceEvent : IUnknown
		{
			public const new Guid IID = .(0x8cc97f40, 0x9028, 0x4ff3, 0x9b, 0x62, 0x7d, 0x1f, 0x79, 0xca, 0x7b, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out ITraceEvent* NewEvent) mut => VT.Clone(ref this, out NewEvent);
			public HRESULT GetUserContext(void** UserContext) mut => VT.GetUserContext(ref this, UserContext);
			public HRESULT GetEventRecord(out EVENT_RECORD* EventRecord) mut => VT.GetEventRecord(ref this, out EventRecord);
			public HRESULT SetPayload(uint8* Payload, uint32 PayloadSize) mut => VT.SetPayload(ref this, Payload, PayloadSize);
			public HRESULT SetEventDescriptor(in EVENT_DESCRIPTOR EventDescriptor) mut => VT.SetEventDescriptor(ref this, EventDescriptor);
			public HRESULT SetProcessId(uint32 ProcessId) mut => VT.SetProcessId(ref this, ProcessId);
			public HRESULT SetProcessorIndex(uint32 ProcessorIndex) mut => VT.SetProcessorIndex(ref this, ProcessorIndex);
			public HRESULT SetThreadId(uint32 ThreadId) mut => VT.SetThreadId(ref this, ThreadId);
			public HRESULT SetThreadTimes(uint32 KernelTime, uint32 UserTime) mut => VT.SetThreadTimes(ref this, KernelTime, UserTime);
			public HRESULT SetActivityId(in Guid ActivityId) mut => VT.SetActivityId(ref this, ActivityId);
			public HRESULT SetTimeStamp(ref LARGE_INTEGER TimeStamp) mut => VT.SetTimeStamp(ref this, ref TimeStamp);
			public HRESULT SetProviderId(in Guid ProviderId) mut => VT.SetProviderId(ref this, ProviderId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, out ITraceEvent* NewEvent) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, void** UserContext) GetUserContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, out EVENT_RECORD* EventRecord) GetEventRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, uint8* Payload, uint32 PayloadSize) SetPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, in EVENT_DESCRIPTOR EventDescriptor) SetEventDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, uint32 ProcessId) SetProcessId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, uint32 ProcessorIndex) SetProcessorIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, uint32 ThreadId) SetThreadId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, uint32 KernelTime, uint32 UserTime) SetThreadTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, in Guid ActivityId) SetActivityId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, ref LARGE_INTEGER TimeStamp) SetTimeStamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEvent self, in Guid ProviderId) SetProviderId;
			}
		}
		[CRepr]
		public struct ITraceEventCallback : IUnknown
		{
			public const new Guid IID = .(0x3ed25501, 0x593f, 0x43e9, 0x8f, 0x38, 0x3a, 0xb4, 0x6f, 0x5a, 0x4a, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBeginProcessTrace(ref ITraceEvent HeaderEvent, ref ITraceRelogger Relogger) mut => VT.OnBeginProcessTrace(ref this, ref HeaderEvent, ref Relogger);
			public HRESULT OnFinalizeProcessTrace(ref ITraceRelogger Relogger) mut => VT.OnFinalizeProcessTrace(ref this, ref Relogger);
			public HRESULT OnEvent(ref ITraceEvent Event, ref ITraceRelogger Relogger) mut => VT.OnEvent(ref this, ref Event, ref Relogger);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEventCallback self, ref ITraceEvent HeaderEvent, ref ITraceRelogger Relogger) OnBeginProcessTrace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEventCallback self, ref ITraceRelogger Relogger) OnFinalizeProcessTrace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceEventCallback self, ref ITraceEvent Event, ref ITraceRelogger Relogger) OnEvent;
			}
		}
		[CRepr]
		public struct ITraceRelogger : IUnknown
		{
			public const new Guid IID = .(0xf754ad43, 0x3bcc, 0x4286, 0x80, 0x09, 0x9c, 0x5d, 0xa2, 0x14, 0xe8, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddLogfileTraceStream(BSTR LogfileName, void* UserContext, out uint64 TraceHandle) mut => VT.AddLogfileTraceStream(ref this, LogfileName, UserContext, out TraceHandle);
			public HRESULT AddRealtimeTraceStream(BSTR LoggerName, void* UserContext, out uint64 TraceHandle) mut => VT.AddRealtimeTraceStream(ref this, LoggerName, UserContext, out TraceHandle);
			public HRESULT RegisterCallback(ref ITraceEventCallback Callback) mut => VT.RegisterCallback(ref this, ref Callback);
			public HRESULT Inject(ref ITraceEvent Event) mut => VT.Inject(ref this, ref Event);
			public HRESULT CreateEventInstance(uint64 TraceHandle, uint32 Flags, out ITraceEvent* Event) mut => VT.CreateEventInstance(ref this, TraceHandle, Flags, out Event);
			public HRESULT ProcessTrace() mut => VT.ProcessTrace(ref this);
			public HRESULT SetOutputFilename(BSTR LogfileName) mut => VT.SetOutputFilename(ref this, LogfileName);
			public HRESULT SetCompressionMode(BOOLEAN CompressionMode) mut => VT.SetCompressionMode(ref this, CompressionMode);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, BSTR LogfileName, void* UserContext, out uint64 TraceHandle) AddLogfileTraceStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, BSTR LoggerName, void* UserContext, out uint64 TraceHandle) AddRealtimeTraceStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, ref ITraceEventCallback Callback) RegisterCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, ref ITraceEvent Event) Inject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, uint64 TraceHandle, uint32 Flags, out ITraceEvent* Event) CreateEventInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self) ProcessTrace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, BSTR LogfileName) SetOutputFilename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self, BOOLEAN CompressionMode) SetCompressionMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceRelogger self) Cancel;
			}
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StartTraceW(out uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StartTraceA(out uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StopTraceW(uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StopTraceA(uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryTraceW(uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryTraceA(uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UpdateTraceW(uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UpdateTraceA(uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FlushTraceW(uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FlushTraceA(uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ControlTraceW(uint64 TraceHandle, PWSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties, EVENT_TRACE_CONTROL ControlCode);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ControlTraceA(uint64 TraceHandle, PSTR InstanceName, out EVENT_TRACE_PROPERTIES Properties, EVENT_TRACE_CONTROL ControlCode);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryAllTracesW(EVENT_TRACE_PROPERTIES** PropertyArray, uint32 PropertyArrayCount, out uint32 LoggerCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryAllTracesA(EVENT_TRACE_PROPERTIES** PropertyArray, uint32 PropertyArrayCount, out uint32 LoggerCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnableTrace(uint32 Enable, uint32 EnableFlag, uint32 EnableLevel, in Guid ControlGuid, uint64 TraceHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnableTraceEx(in Guid ProviderId, Guid* SourceId, uint64 TraceHandle, uint32 IsEnabled, uint8 Level, uint64 MatchAnyKeyword, uint64 MatchAllKeyword, uint32 EnableProperty, EVENT_FILTER_DESCRIPTOR* EnableFilterDesc);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnableTraceEx2(uint64 TraceHandle, in Guid ProviderId, uint32 ControlCode, uint8 Level, uint64 MatchAnyKeyword, uint64 MatchAllKeyword, uint32 Timeout, ENABLE_TRACE_PARAMETERS* EnableParameters);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumerateTraceGuidsEx(TRACE_QUERY_INFO_CLASS TraceQueryInfoClass, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceSetInformation(uint64 SessionHandle, TRACE_QUERY_INFO_CLASS InformationClass, void* TraceInformation, uint32 InformationLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceQueryInformation(uint64 SessionHandle, TRACE_QUERY_INFO_CLASS InformationClass, void* TraceInformation, uint32 InformationLength, uint32* ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateTraceInstanceId(HANDLE RegHandle, out EVENT_INSTANCE_INFO InstInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceEvent(uint64 TraceHandle, ref EVENT_TRACE_HEADER EventTrace);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceEventInstance(uint64 TraceHandle, ref EVENT_INSTANCE_HEADER EventTrace, ref EVENT_INSTANCE_INFO InstInfo, EVENT_INSTANCE_INFO* ParentInstInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterTraceGuidsW(WMIDPREQUEST RequestAddress, void* RequestContext, in Guid ControlGuid, uint32 GuidCount, TRACE_GUID_REGISTRATION* TraceGuidReg, PWSTR MofImagePath, PWSTR MofResourceName, out uint64 RegistrationHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterTraceGuidsA(WMIDPREQUEST RequestAddress, void* RequestContext, in Guid ControlGuid, uint32 GuidCount, TRACE_GUID_REGISTRATION* TraceGuidReg, PSTR MofImagePath, PSTR MofResourceName, out uint64 RegistrationHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumerateTraceGuids(TRACE_GUID_PROPERTIES** GuidPropertiesArray, uint32 PropertyArrayCount, out uint32 GuidCount);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnregisterTraceGuids(uint64 RegistrationHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 GetTraceLoggerHandle(void* Buffer);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 GetTraceEnableLevel(uint64 TraceHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTraceEnableFlags(uint64 TraceHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 OpenTraceW(out EVENT_TRACE_LOGFILEW Logfile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessTrace(uint64* HandleArray, uint32 HandleCount, FILETIME* StartTime, FILETIME* EndTime);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CloseTrace(uint64 TraceHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryTraceProcessingHandle(uint64 ProcessingHandle, ETW_PROCESS_HANDLE_INFO_TYPE InformationClass, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 ReturnLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 OpenTraceA(out EVENT_TRACE_LOGFILEA Logfile);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTraceCallback(in Guid pGuid, PEVENT_CALLBACK EventCallback);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RemoveTraceCallback(in Guid pGuid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceMessage(uint64 LoggerHandle, TRACE_MESSAGE_FLAGS MessageFlags, in Guid MessageGuid, uint16 MessageNumber);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TraceMessageVa(uint64 LoggerHandle, TRACE_MESSAGE_FLAGS MessageFlags, in Guid MessageGuid, uint16 MessageNumber, ref int8 MessageArgList);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventRegister(in Guid ProviderId, PENABLECALLBACK EnableCallback, void* CallbackContext, out uint64 RegHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventUnregister(uint64 RegHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventSetInformation(uint64 RegHandle, EVENT_INFO_CLASS InformationClass, void* EventInformation, uint32 InformationLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN EventEnabled(uint64 RegHandle, in EVENT_DESCRIPTOR EventDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN EventProviderEnabled(uint64 RegHandle, uint8 Level, uint64 Keyword);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventWrite(uint64 RegHandle, in EVENT_DESCRIPTOR EventDescriptor, uint32 UserDataCount, EVENT_DATA_DESCRIPTOR* UserData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventWriteTransfer(uint64 RegHandle, in EVENT_DESCRIPTOR EventDescriptor, Guid* ActivityId, Guid* RelatedActivityId, uint32 UserDataCount, EVENT_DATA_DESCRIPTOR* UserData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventWriteEx(uint64 RegHandle, in EVENT_DESCRIPTOR EventDescriptor, uint64 Filter, uint32 Flags, Guid* ActivityId, Guid* RelatedActivityId, uint32 UserDataCount, EVENT_DATA_DESCRIPTOR* UserData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventWriteString(uint64 RegHandle, uint8 Level, uint64 Keyword, PWSTR String);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventActivityIdControl(uint32 ControlCode, out Guid ActivityId);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventAccessControl(ref Guid Guid, uint32 Operation, PSID Sid, uint32 Rights, BOOLEAN AllowOrDeny);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventAccessQuery(ref Guid Guid, SECURITY_DESCRIPTOR* Buffer, out uint32 BufferSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EventAccessRemove(ref Guid Guid);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhCreatePayloadFilter(in Guid ProviderGuid, in EVENT_DESCRIPTOR EventDescriptor, BOOLEAN EventMatchANY, uint32 PayloadPredicateCount, PAYLOAD_FILTER_PREDICATE* PayloadPredicates, void** PayloadFilter);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhDeletePayloadFilter(void** PayloadFilter);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhAggregatePayloadFilters(uint32 PayloadFilterCount, void** PayloadFilterPtrs, BOOLEAN* EventMatchALLFlags, out EVENT_FILTER_DESCRIPTOR EventFilterDescriptor);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhCleanupPayloadEventFilterDescriptor(out EVENT_FILTER_DESCRIPTOR EventFilterDescriptor);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetEventInformation(ref EVENT_RECORD Event, uint32 TdhContextCount, TDH_CONTEXT* TdhContext, TRACE_EVENT_INFO* Buffer, out uint32 BufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetEventMapInformation(ref EVENT_RECORD pEvent, PWSTR pMapName, EVENT_MAP_INFO* pBuffer, out uint32 pBufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetPropertySize(ref EVENT_RECORD pEvent, uint32 TdhContextCount, TDH_CONTEXT* pTdhContext, uint32 PropertyDataCount, PROPERTY_DATA_DESCRIPTOR* pPropertyData, out uint32 pPropertySize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetProperty(ref EVENT_RECORD pEvent, uint32 TdhContextCount, TDH_CONTEXT* pTdhContext, uint32 PropertyDataCount, PROPERTY_DATA_DESCRIPTOR* pPropertyData, uint32 BufferSize, out uint8 pBuffer);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhEnumerateProviders(PROVIDER_ENUMERATION_INFO* pBuffer, out uint32 pBufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhEnumerateProvidersForDecodingSource(DECODING_SOURCE filter, PROVIDER_ENUMERATION_INFO* buffer, uint32 bufferSize, out uint32 bufferRequired);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhQueryProviderFieldInformation(ref Guid pGuid, uint64 EventFieldValue, EVENT_FIELD_TYPE EventFieldType, PROVIDER_FIELD_INFOARRAY* pBuffer, out uint32 pBufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhEnumerateProviderFieldInformation(ref Guid pGuid, EVENT_FIELD_TYPE EventFieldType, PROVIDER_FIELD_INFOARRAY* pBuffer, out uint32 pBufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhEnumerateProviderFilters(ref Guid Guid, uint32 TdhContextCount, TDH_CONTEXT* TdhContext, out uint32 FilterCount, PROVIDER_FILTER_INFO** Buffer, out uint32 BufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhLoadManifest(PWSTR Manifest);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhLoadManifestFromMemory(void* pData, uint32 cbData);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhUnloadManifest(PWSTR Manifest);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhUnloadManifestFromMemory(void* pData, uint32 cbData);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhFormatProperty(ref TRACE_EVENT_INFO EventInfo, EVENT_MAP_INFO* MapInfo, uint32 PointerSize, uint16 PropertyInType, uint16 PropertyOutType, uint16 PropertyLength, uint16 UserDataLength, ref uint8 UserData, out uint32 BufferSize, PWSTR Buffer, out uint16 UserDataConsumed);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhOpenDecodingHandle(out TDH_HANDLE Handle);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhSetDecodingParameter(TDH_HANDLE Handle, ref TDH_CONTEXT TdhContext);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetDecodingParameter(TDH_HANDLE Handle, out TDH_CONTEXT TdhContext);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetWppProperty(TDH_HANDLE Handle, ref EVENT_RECORD EventRecord, PWSTR PropertyName, out uint32 BufferSize, out uint8 Buffer);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetWppMessage(TDH_HANDLE Handle, ref EVENT_RECORD EventRecord, out uint32 BufferSize, out uint8 Buffer);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhCloseDecodingHandle(TDH_HANDLE Handle);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhLoadManifestFromBinary(PWSTR BinaryPath);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhEnumerateManifestProviderEvents(ref Guid ProviderGuid, PROVIDER_EVENT_INFO* Buffer, out uint32 BufferSize);
		[Import("tdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TdhGetManifestEventInformation(ref Guid ProviderGuid, ref EVENT_DESCRIPTOR EventDescriptor, TRACE_EVENT_INFO* Buffer, out uint32 BufferSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CveEventWrite(PWSTR CveId, PWSTR AdditionalDetails);
	}
}
