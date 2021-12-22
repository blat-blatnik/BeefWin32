using System;

// namespace System.Performance
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAX_COUNTER_PATH = 256;
		public const uint32 PDH_MAX_COUNTER_NAME = 1024;
		public const uint32 PDH_MAX_INSTANCE_NAME = 1024;
		public const uint32 PDH_MAX_COUNTER_PATH = 2048;
		public const uint32 PDH_MAX_DATASOURCE_PATH = 1024;
		public const int32 H_WBEM_DATASOURCE = -1;
		public const int32 PDH_MAX_SCALE = 7;
		public const int32 PDH_MIN_SCALE = -7;
		public const uint32 PDH_NOEXPANDCOUNTERS = 1;
		public const uint32 PDH_NOEXPANDINSTANCES = 2;
		public const uint32 PDH_REFRESHCOUNTERS = 4;
		public const uint32 PDH_LOG_TYPE_RETIRED_BIN = 3;
		public const uint32 PDH_LOG_TYPE_TRACE_KERNEL = 4;
		public const uint32 PDH_LOG_TYPE_TRACE_GENERIC = 5;
		public const uint32 PERF_PROVIDER_USER_MODE = 0;
		public const uint32 PERF_PROVIDER_KERNEL_MODE = 1;
		public const uint32 PERF_PROVIDER_DRIVER = 2;
		public const uint32 PERF_COUNTERSET_FLAG_MULTIPLE = 2;
		public const uint32 PERF_COUNTERSET_FLAG_AGGREGATE = 4;
		public const uint32 PERF_COUNTERSET_FLAG_HISTORY = 8;
		public const uint32 PERF_COUNTERSET_FLAG_INSTANCE = 16;
		public const uint32 PERF_COUNTERSET_SINGLE_INSTANCE = 0;
		public const uint32 PERF_COUNTERSET_MULTI_INSTANCES = 2;
		public const uint32 PERF_COUNTERSET_SINGLE_AGGREGATE = 4;
		public const uint32 PERF_AGGREGATE_MAX = 4;
		public const uint64 PERF_ATTRIB_BY_REFERENCE = 1uL;
		public const uint64 PERF_ATTRIB_NO_DISPLAYABLE = 2uL;
		public const uint64 PERF_ATTRIB_NO_GROUP_SEPARATOR = 4uL;
		public const uint64 PERF_ATTRIB_DISPLAY_AS_REAL = 8uL;
		public const uint64 PERF_ATTRIB_DISPLAY_AS_HEX = 16uL;
		public const uint32 PERF_WILDCARD_COUNTER = 4294967295;
		public const uint32 PERF_MAX_INSTANCE_NAME = 1024;
		public const uint32 PERF_ADD_COUNTER = 1;
		public const uint32 PERF_REMOVE_COUNTER = 2;
		public const uint32 PERF_ENUM_INSTANCES = 3;
		public const uint32 PERF_COLLECT_START = 5;
		public const uint32 PERF_COLLECT_END = 6;
		public const uint32 PERF_FILTER = 9;
		public const uint32 PERF_DATA_VERSION = 1;
		public const uint32 PERF_DATA_REVISION = 1;
		public const int32 PERF_NO_INSTANCES = -1;
		public const int32 PERF_METADATA_MULTIPLE_INSTANCES = -2;
		public const int32 PERF_METADATA_NO_INSTANCES = -3;
		public const uint32 PERF_SIZE_DWORD = 0;
		public const uint32 PERF_SIZE_LARGE = 256;
		public const uint32 PERF_SIZE_ZERO = 512;
		public const uint32 PERF_SIZE_VARIABLE_LEN = 768;
		public const uint32 PERF_TYPE_NUMBER = 0;
		public const uint32 PERF_TYPE_COUNTER = 1024;
		public const uint32 PERF_TYPE_TEXT = 2048;
		public const uint32 PERF_TYPE_ZERO = 3072;
		public const uint32 PERF_NUMBER_HEX = 0;
		public const uint32 PERF_NUMBER_DECIMAL = 65536;
		public const uint32 PERF_NUMBER_DEC_1000 = 131072;
		public const uint32 PERF_COUNTER_VALUE = 0;
		public const uint32 PERF_COUNTER_RATE = 65536;
		public const uint32 PERF_COUNTER_FRACTION = 131072;
		public const uint32 PERF_COUNTER_BASE = 196608;
		public const uint32 PERF_COUNTER_ELAPSED = 262144;
		public const uint32 PERF_COUNTER_QUEUELEN = 327680;
		public const uint32 PERF_COUNTER_HISTOGRAM = 393216;
		public const uint32 PERF_COUNTER_PRECISION = 458752;
		public const uint32 PERF_TEXT_UNICODE = 0;
		public const uint32 PERF_TEXT_ASCII = 65536;
		public const uint32 PERF_TIMER_TICK = 0;
		public const uint32 PERF_TIMER_100NS = 1048576;
		public const uint32 PERF_OBJECT_TIMER = 2097152;
		public const uint32 PERF_DELTA_COUNTER = 4194304;
		public const uint32 PERF_DELTA_BASE = 8388608;
		public const uint32 PERF_INVERSE_COUNTER = 16777216;
		public const uint32 PERF_MULTI_COUNTER = 33554432;
		public const uint32 PERF_DISPLAY_NO_SUFFIX = 0;
		public const uint32 PERF_DISPLAY_PER_SEC = 268435456;
		public const uint32 PERF_DISPLAY_PERCENT = 536870912;
		public const uint32 PERF_DISPLAY_SECONDS = 805306368;
		public const uint32 PERF_DISPLAY_NOSHOW = 1073741824;
		public const uint32 PERF_COUNTER_HISTOGRAM_TYPE = 2147483648;
		public const int32 PERF_NO_UNIQUE_ID = -1;
		public const int32 MAX_PERF_OBJECTS_IN_QUERY_FUNCTION = 64;
		public const uint32 WINPERF_LOG_NONE = 0;
		public const uint32 WINPERF_LOG_USER = 1;
		public const uint32 WINPERF_LOG_DEBUG = 2;
		public const uint32 WINPERF_LOG_VERBOSE = 3;
		public const Guid LIBID_SystemMonitor = .(0x1b773e42, 0x2509, 0x11cf, 0x94, 0x2f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid DIID_DICounterItem = .(0xc08c4ff2, 0x0e2e, 0x11cf, 0x94, 0x2c, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid DIID_DILogFileItem = .(0x8d093ffc, 0xf777, 0x4917, 0x82, 0xd1, 0x83, 0x3f, 0xbc, 0x54, 0xc5, 0x8f);
		public const Guid DIID_DISystemMonitor = .(0x13d73d81, 0xc32e, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
		public const Guid DIID_DISystemMonitorInternal = .(0x194eb242, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
		public const Guid DIID_DISystemMonitorEvents = .(0x84979930, 0x4ab3, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const int32 PDH_CSTATUS_VALID_DATA = 0;
		public const int32 PDH_CSTATUS_NEW_DATA = 1;
		public const int32 PDH_CSTATUS_NO_MACHINE = -2147481648;
		public const int32 PDH_CSTATUS_NO_INSTANCE = -2147481647;
		public const int32 PDH_MORE_DATA = -2147481646;
		public const int32 PDH_CSTATUS_ITEM_NOT_VALIDATED = -2147481645;
		public const int32 PDH_RETRY = -2147481644;
		public const int32 PDH_NO_DATA = -2147481643;
		public const int32 PDH_CALC_NEGATIVE_DENOMINATOR = -2147481642;
		public const int32 PDH_CALC_NEGATIVE_TIMEBASE = -2147481641;
		public const int32 PDH_CALC_NEGATIVE_VALUE = -2147481640;
		public const int32 PDH_DIALOG_CANCELLED = -2147481639;
		public const int32 PDH_END_OF_LOG_FILE = -2147481638;
		public const int32 PDH_ASYNC_QUERY_TIMEOUT = -2147481637;
		public const int32 PDH_CANNOT_SET_DEFAULT_REALTIME_DATASOURCE = -2147481636;
		public const int32 PDH_UNABLE_MAP_NAME_FILES = -2147480619;
		public const int32 PDH_PLA_VALIDATION_WARNING = -2147480589;
		public const int32 PDH_CSTATUS_NO_OBJECT = -1073738824;
		public const int32 PDH_CSTATUS_NO_COUNTER = -1073738823;
		public const int32 PDH_CSTATUS_INVALID_DATA = -1073738822;
		public const int32 PDH_MEMORY_ALLOCATION_FAILURE = -1073738821;
		public const int32 PDH_INVALID_HANDLE = -1073738820;
		public const int32 PDH_INVALID_ARGUMENT = -1073738819;
		public const int32 PDH_FUNCTION_NOT_FOUND = -1073738818;
		public const int32 PDH_CSTATUS_NO_COUNTERNAME = -1073738817;
		public const int32 PDH_CSTATUS_BAD_COUNTERNAME = -1073738816;
		public const int32 PDH_INVALID_BUFFER = -1073738815;
		public const int32 PDH_INSUFFICIENT_BUFFER = -1073738814;
		public const int32 PDH_CANNOT_CONNECT_MACHINE = -1073738813;
		public const int32 PDH_INVALID_PATH = -1073738812;
		public const int32 PDH_INVALID_INSTANCE = -1073738811;
		public const int32 PDH_INVALID_DATA = -1073738810;
		public const int32 PDH_NO_DIALOG_DATA = -1073738809;
		public const int32 PDH_CANNOT_READ_NAME_STRINGS = -1073738808;
		public const int32 PDH_LOG_FILE_CREATE_ERROR = -1073738807;
		public const int32 PDH_LOG_FILE_OPEN_ERROR = -1073738806;
		public const int32 PDH_LOG_TYPE_NOT_FOUND = -1073738805;
		public const int32 PDH_NO_MORE_DATA = -1073738804;
		public const int32 PDH_ENTRY_NOT_IN_LOG_FILE = -1073738803;
		public const int32 PDH_DATA_SOURCE_IS_LOG_FILE = -1073738802;
		public const int32 PDH_DATA_SOURCE_IS_REAL_TIME = -1073738801;
		public const int32 PDH_UNABLE_READ_LOG_HEADER = -1073738800;
		public const int32 PDH_FILE_NOT_FOUND = -1073738799;
		public const int32 PDH_FILE_ALREADY_EXISTS = -1073738798;
		public const int32 PDH_NOT_IMPLEMENTED = -1073738797;
		public const int32 PDH_STRING_NOT_FOUND = -1073738796;
		public const int32 PDH_UNKNOWN_LOG_FORMAT = -1073738794;
		public const int32 PDH_UNKNOWN_LOGSVC_COMMAND = -1073738793;
		public const int32 PDH_LOGSVC_QUERY_NOT_FOUND = -1073738792;
		public const int32 PDH_LOGSVC_NOT_OPENED = -1073738791;
		public const int32 PDH_WBEM_ERROR = -1073738790;
		public const int32 PDH_ACCESS_DENIED = -1073738789;
		public const int32 PDH_LOG_FILE_TOO_SMALL = -1073738788;
		public const int32 PDH_INVALID_DATASOURCE = -1073738787;
		public const int32 PDH_INVALID_SQLDB = -1073738786;
		public const int32 PDH_NO_COUNTERS = -1073738785;
		public const int32 PDH_SQL_ALLOC_FAILED = -1073738784;
		public const int32 PDH_SQL_ALLOCCON_FAILED = -1073738783;
		public const int32 PDH_SQL_EXEC_DIRECT_FAILED = -1073738782;
		public const int32 PDH_SQL_FETCH_FAILED = -1073738781;
		public const int32 PDH_SQL_ROWCOUNT_FAILED = -1073738780;
		public const int32 PDH_SQL_MORE_RESULTS_FAILED = -1073738779;
		public const int32 PDH_SQL_CONNECT_FAILED = -1073738778;
		public const int32 PDH_SQL_BIND_FAILED = -1073738777;
		public const int32 PDH_CANNOT_CONNECT_WMI_SERVER = -1073738776;
		public const int32 PDH_PLA_COLLECTION_ALREADY_RUNNING = -1073738775;
		public const int32 PDH_PLA_ERROR_SCHEDULE_OVERLAP = -1073738774;
		public const int32 PDH_PLA_COLLECTION_NOT_FOUND = -1073738773;
		public const int32 PDH_PLA_ERROR_SCHEDULE_ELAPSED = -1073738772;
		public const int32 PDH_PLA_ERROR_NOSTART = -1073738771;
		public const int32 PDH_PLA_ERROR_ALREADY_EXISTS = -1073738770;
		public const int32 PDH_PLA_ERROR_TYPE_MISMATCH = -1073738769;
		public const int32 PDH_PLA_ERROR_FILEPATH = -1073738768;
		public const int32 PDH_PLA_SERVICE_ERROR = -1073738767;
		public const int32 PDH_PLA_VALIDATION_ERROR = -1073738766;
		public const int32 PDH_PLA_ERROR_NAME_TOO_LONG = -1073738764;
		public const int32 PDH_INVALID_SQL_LOG_FORMAT = -1073738763;
		public const int32 PDH_COUNTER_ALREADY_IN_QUERY = -1073738762;
		public const int32 PDH_BINARY_LOG_CORRUPT = -1073738761;
		public const int32 PDH_LOG_SAMPLE_TOO_SMALL = -1073738760;
		public const int32 PDH_OS_LATER_VERSION = -1073738759;
		public const int32 PDH_OS_EARLIER_VERSION = -1073738758;
		public const int32 PDH_INCORRECT_APPEND_TIME = -1073738757;
		public const int32 PDH_UNMATCHED_APPEND_COUNTER = -1073738756;
		public const int32 PDH_SQL_ALTER_DETAIL_FAILED = -1073738755;
		public const int32 PDH_QUERY_PERF_DATA_TIMEOUT = -1073738754;
		public const uint32 PLA_CAPABILITY_LOCAL = 268435456;
		public const uint32 PLA_CAPABILITY_V1_SVC = 1;
		public const uint32 PLA_CAPABILITY_V1_SESSION = 2;
		public const uint32 PLA_CAPABILITY_V1_SYSTEM = 4;
		public const uint32 PLA_CAPABILITY_LEGACY_SESSION = 8;
		public const uint32 PLA_CAPABILITY_LEGACY_SVC = 16;
		public const uint32 PLA_CAPABILITY_AUTOLOGGER = 32;
		public const Guid S_PDH = .(0x04d66358, 0xc4a1, 0x419b, 0x80, 0x23, 0x23, 0xb7, 0x39, 0x02, 0xde, 0x2c);
		
		// --- Typedefs ---
		
		public typealias PerfProviderHandle = int;
		public typealias PerfQueryHandle = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PERF_DETAIL : uint32
		{
			PERF_DETAIL_NOVICE = 100,
			PERF_DETAIL_ADVANCED = 200,
			PERF_DETAIL_EXPERT = 300,
			PERF_DETAIL_WIZARD = 400,
		}
		[AllowDuplicates]
		public enum REAL_TIME_DATA_SOURCE_ID_FLAGS : uint32
		{
			DATA_SOURCE_REGISTRY = 1,
			DATA_SOURCE_WBEM = 4,
		}
		[AllowDuplicates]
		public enum PDH_PATH_FLAGS : uint32
		{
			PDH_PATH_WBEM_RESULT = 1,
			PDH_PATH_WBEM_INPUT = 2,
			PDH_PATH_WBEM_NONE = 0,
		}
		[AllowDuplicates]
		public enum PDH_FMT : uint32
		{
			PDH_FMT_DOUBLE = 512,
			PDH_FMT_LARGE = 1024,
			PDH_FMT_LONG = 256,
		}
		[AllowDuplicates]
		public enum PDH_LOG_TYPE : uint32
		{
			PDH_LOG_TYPE_UNDEFINED = 0,
			PDH_LOG_TYPE_CSV = 1,
			PDH_LOG_TYPE_SQL = 7,
			PDH_LOG_TYPE_TSV = 2,
			PDH_LOG_TYPE_BINARY = 8,
			PDH_LOG_TYPE_PERFMON = 6,
		}
		[AllowDuplicates]
		public enum PDH_LOG : uint32
		{
			PDH_LOG_READ_ACCESS = 65536,
			PDH_LOG_WRITE_ACCESS = 131072,
			PDH_LOG_UPDATE_ACCESS = 262144,
		}
		[AllowDuplicates]
		public enum PDH_SELECT_DATA_SOURCE_FLAGS : uint32
		{
			PDH_FLAGS_FILE_BROWSER_ONLY = 1,
			PDH_FLAGS_NONE = 0,
		}
		[AllowDuplicates]
		public enum PDH_DLL_VERSION : uint32
		{
			PDH_CVERSION_WIN50 = 1280,
			PDH_VERSION = 1283,
		}
		[AllowDuplicates]
		public enum PERF_COUNTER_AGGREGATE_FUNC : uint32
		{
			PERF_AGGREGATE_UNDEFINED = 0,
			PERF_AGGREGATE_TOTAL = 1,
			PERF_AGGREGATE_AVG = 2,
			PERF_AGGREGATE_MIN = 3,
		}
		[AllowDuplicates]
		public enum DataCollectorType : int32
		{
			plaPerformanceCounter = 0,
			plaTrace = 1,
			plaConfiguration = 2,
			plaAlert = 3,
			plaApiTrace = 4,
		}
		[AllowDuplicates]
		public enum FileFormat : int32
		{
			plaCommaSeparated = 0,
			plaTabSeparated = 1,
			plaSql = 2,
			plaBinary = 3,
		}
		[AllowDuplicates]
		public enum AutoPathFormat : int32
		{
			plaNone = 0,
			plaPattern = 1,
			plaComputer = 2,
			plaMonthDayHour = 256,
			plaSerialNumber = 512,
			plaYearDayOfYear = 1024,
			plaYearMonth = 2048,
			plaYearMonthDay = 4096,
			plaYearMonthDayHour = 8192,
			plaMonthDayHourMinute = 16384,
		}
		[AllowDuplicates]
		public enum DataCollectorSetStatus : int32
		{
			plaStopped = 0,
			plaRunning = 1,
			plaCompiling = 2,
			plaPending = 3,
			plaUndefined = 4,
		}
		[AllowDuplicates]
		public enum ClockType : int32
		{
			plaTimeStamp = 0,
			plaPerformance = 1,
			plaSystem = 2,
			plaCycle = 3,
		}
		[AllowDuplicates]
		public enum StreamMode : int32
		{
			plaFile = 1,
			plaRealTime = 2,
			plaBoth = 3,
			plaBuffering = 4,
		}
		[AllowDuplicates]
		public enum CommitMode : int32
		{
			plaCreateNew = 1,
			plaModify = 2,
			plaCreateOrModify = 3,
			plaUpdateRunningInstance = 16,
			plaFlushTrace = 32,
			plaValidateOnly = 4096,
		}
		[AllowDuplicates]
		public enum ValueMapType : int32
		{
			plaIndex = 1,
			plaFlag = 2,
			plaFlagArray = 3,
			plaValidation = 4,
		}
		[AllowDuplicates]
		public enum WeekDays : int32
		{
			plaRunOnce = 0,
			plaSunday = 1,
			plaMonday = 2,
			plaTuesday = 4,
			plaWednesday = 8,
			plaThursday = 16,
			plaFriday = 32,
			plaSaturday = 64,
			plaEveryday = 127,
		}
		[AllowDuplicates]
		public enum ResourcePolicy : int32
		{
			plaDeleteLargest = 0,
			plaDeleteOldest = 1,
		}
		[AllowDuplicates]
		public enum DataManagerSteps : int32
		{
			plaCreateReport = 1,
			plaRunRules = 2,
			plaCreateHtml = 4,
			plaFolderActions = 8,
			plaResourceFreeing = 16,
		}
		[AllowDuplicates]
		public enum FolderActionSteps : int32
		{
			plaCreateCab = 1,
			plaDeleteData = 2,
			plaSendCab = 4,
			plaDeleteCab = 8,
			plaDeleteReport = 16,
		}
		[AllowDuplicates]
		public enum PerfRegInfoType : int32
		{
			PERF_REG_COUNTERSET_STRUCT = 1,
			PERF_REG_COUNTER_STRUCT = 2,
			PERF_REG_COUNTERSET_NAME_STRING = 3,
			PERF_REG_COUNTERSET_HELP_STRING = 4,
			PERF_REG_COUNTER_NAME_STRINGS = 5,
			PERF_REG_COUNTER_HELP_STRINGS = 6,
			PERF_REG_PROVIDER_NAME = 7,
			PERF_REG_PROVIDER_GUID = 8,
			PERF_REG_COUNTERSET_ENGLISH_NAME = 9,
			PERF_REG_COUNTER_ENGLISH_NAMES = 10,
		}
		[AllowDuplicates]
		public enum PerfCounterDataType : int32
		{
			PERF_ERROR_RETURN = 0,
			PERF_SINGLE_COUNTER = 1,
			PERF_MULTIPLE_COUNTERS = 2,
			PERF_MULTIPLE_INSTANCES = 4,
			PERF_COUNTERSET = 6,
		}
		[AllowDuplicates]
		public enum DisplayTypeConstants : int32
		{
			sysmonLineGraph = 1,
			sysmonHistogram = 2,
			sysmonReport = 3,
			sysmonChartArea = 4,
			sysmonChartStackedArea = 5,
		}
		[AllowDuplicates]
		public enum ReportValueTypeConstants : int32
		{
			sysmonDefaultValue = 0,
			sysmonCurrentValue = 1,
			sysmonAverage = 2,
			sysmonMinimum = 3,
			sysmonMaximum = 4,
		}
		[AllowDuplicates]
		public enum DataSourceTypeConstants : int32
		{
			sysmonNullDataSource = -1,
			sysmonCurrentActivity = 1,
			sysmonLogFiles = 2,
			sysmonSqlLog = 3,
		}
		[AllowDuplicates]
		public enum SysmonFileType : int32
		{
			sysmonFileHtml = 1,
			sysmonFileReport = 2,
			sysmonFileCsv = 3,
			sysmonFileTsv = 4,
			sysmonFileBlg = 5,
			sysmonFileRetiredBlg = 6,
			sysmonFileGif = 7,
		}
		[AllowDuplicates]
		public enum SysmonDataType : int32
		{
			sysmonDataAvg = 1,
			sysmonDataMin = 2,
			sysmonDataMax = 3,
			sysmonDataTime = 4,
			sysmonDataCount = 5,
		}
		[AllowDuplicates]
		public enum SysmonBatchReason : int32
		{
			sysmonBatchNone = 0,
			sysmonBatchAddFiles = 1,
			sysmonBatchAddCounters = 2,
			sysmonBatchAddFilesAutoCounters = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PLA_CABEXTRACT_CALLBACK(PWSTR FileName, void* Context);
		public function uint32 PERFLIBREQUEST(uint32 RequestCode, void* Buffer, uint32 BufferSize);
		public function void* PERF_MEM_ALLOC(uint AllocSize, void* pContext);
		public function void PERF_MEM_FREE(void* pBuffer, void* pContext);
		public function uint32 PM_OPEN_PROC(PWSTR pContext);
		public function uint32 PM_COLLECT_PROC(PWSTR pValueName, void** ppData, uint32* pcbTotalBytes, uint32* pNumObjectTypes);
		public function uint32 PM_CLOSE_PROC();
		public function int32 CounterPathCallBack(uint param0);
		
		// --- Structs ---
		
		[CRepr]
		public struct PERF_COUNTERSET_INFO
		{
			public Guid CounterSetGuid;
			public Guid ProviderGuid;
			public uint32 NumCounters;
			public uint32 InstanceType;
		}
		[CRepr]
		public struct PERF_COUNTER_INFO
		{
			public uint32 CounterId;
			public uint32 Type;
			public uint64 Attrib;
			public uint32 Size;
			public uint32 DetailLevel;
			public int32 Scale;
			public uint32 Offset;
		}
		[CRepr]
		public struct PERF_COUNTERSET_INSTANCE
		{
			public Guid CounterSetGuid;
			public uint32 dwSize;
			public uint32 InstanceId;
			public uint32 InstanceNameOffset;
			public uint32 InstanceNameSize;
		}
		[CRepr]
		public struct PERF_COUNTER_IDENTITY
		{
			public Guid CounterSetGuid;
			public uint32 BufferSize;
			public uint32 CounterId;
			public uint32 InstanceId;
			public uint32 MachineOffset;
			public uint32 NameOffset;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PERF_PROVIDER_CONTEXT
		{
			public uint32 ContextSize;
			public uint32 Reserved;
			public PERFLIBREQUEST ControlCallback;
			public PERF_MEM_ALLOC MemAllocRoutine;
			public PERF_MEM_FREE MemFreeRoutine;
			public void* pMemContext;
		}
		[CRepr]
		public struct PERF_INSTANCE_HEADER
		{
			public uint32 Size;
			public uint32 InstanceId;
		}
		[CRepr]
		public struct PERF_COUNTERSET_REG_INFO
		{
			public Guid CounterSetGuid;
			public uint32 CounterSetType;
			public uint32 DetailLevel;
			public uint32 NumCounters;
			public uint32 InstanceType;
		}
		[CRepr]
		public struct PERF_COUNTER_REG_INFO
		{
			public uint32 CounterId;
			public uint32 Type;
			public uint64 Attrib;
			public uint32 DetailLevel;
			public int32 DefaultScale;
			public uint32 BaseCounterId;
			public uint32 PerfTimeId;
			public uint32 PerfFreqId;
			public uint32 MultiId;
			public PERF_COUNTER_AGGREGATE_FUNC AggregateFunc;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PERF_STRING_BUFFER_HEADER
		{
			public uint32 dwSize;
			public uint32 dwCounters;
		}
		[CRepr]
		public struct PERF_STRING_COUNTER_HEADER
		{
			public uint32 dwCounterId;
			public uint32 dwOffset;
		}
		[CRepr]
		public struct PERF_COUNTER_IDENTIFIER
		{
			public Guid CounterSetGuid;
			public uint32 Status;
			public uint32 Size;
			public uint32 CounterId;
			public uint32 InstanceId;
			public uint32 Index;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PERF_DATA_HEADER
		{
			public uint32 dwTotalSize;
			public uint32 dwNumCounters;
			public int64 PerfTimeStamp;
			public int64 PerfTime100NSec;
			public int64 PerfFreq;
			public SYSTEMTIME SystemTime;
		}
		[CRepr]
		public struct PERF_COUNTER_HEADER
		{
			public uint32 dwStatus;
			public PerfCounterDataType dwType;
			public uint32 dwSize;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PERF_MULTI_INSTANCES
		{
			public uint32 dwTotalSize;
			public uint32 dwInstances;
		}
		[CRepr]
		public struct PERF_MULTI_COUNTERS
		{
			public uint32 dwSize;
			public uint32 dwCounters;
		}
		[CRepr]
		public struct PERF_COUNTER_DATA
		{
			public uint32 dwDataSize;
			public uint32 dwSize;
		}
		[CRepr]
		public struct PERF_DATA_BLOCK
		{
			public char16[4] Signature;
			public uint32 LittleEndian;
			public uint32 Version;
			public uint32 Revision;
			public uint32 TotalByteLength;
			public uint32 HeaderLength;
			public uint32 NumObjectTypes;
			public int32 DefaultObject;
			public SYSTEMTIME SystemTime;
			public LARGE_INTEGER PerfTime;
			public LARGE_INTEGER PerfFreq;
			public LARGE_INTEGER PerfTime100nSec;
			public uint32 SystemNameLength;
			public uint32 SystemNameOffset;
		}
		[CRepr]
		public struct PERF_OBJECT_TYPE
		{
			public uint32 TotalByteLength;
			public uint32 DefinitionLength;
			public uint32 HeaderLength;
			public uint32 ObjectNameTitleIndex;
			public uint32 ObjectNameTitle;
			public uint32 ObjectHelpTitleIndex;
			public uint32 ObjectHelpTitle;
			public uint32 DetailLevel;
			public uint32 NumCounters;
			public int32 DefaultCounter;
			public int32 NumInstances;
			public uint32 CodePage;
			public LARGE_INTEGER PerfTime;
			public LARGE_INTEGER PerfFreq;
		}
		[CRepr]
		public struct PERF_COUNTER_DEFINITION
		{
			public uint32 ByteLength;
			public uint32 CounterNameTitleIndex;
			public uint32 CounterNameTitle;
			public uint32 CounterHelpTitleIndex;
			public uint32 CounterHelpTitle;
			public int32 DefaultScale;
			public uint32 DetailLevel;
			public uint32 CounterType;
			public uint32 CounterSize;
			public uint32 CounterOffset;
		}
		[CRepr]
		public struct PERF_INSTANCE_DEFINITION
		{
			public uint32 ByteLength;
			public uint32 ParentObjectTitleIndex;
			public uint32 ParentObjectInstance;
			public int32 UniqueID;
			public uint32 NameOffset;
			public uint32 NameLength;
		}
		[CRepr]
		public struct PERF_COUNTER_BLOCK
		{
			public uint32 ByteLength;
		}
		[CRepr]
		public struct PDH_RAW_COUNTER
		{
			public uint32 CStatus;
			public FILETIME TimeStamp;
			public int64 FirstValue;
			public int64 SecondValue;
			public uint32 MultiCount;
		}
		[CRepr]
		public struct PDH_RAW_COUNTER_ITEM_A
		{
			public PSTR szName;
			public PDH_RAW_COUNTER RawValue;
		}
		[CRepr]
		public struct PDH_RAW_COUNTER_ITEM_W
		{
			public PWSTR szName;
			public PDH_RAW_COUNTER RawValue;
		}
		[CRepr]
		public struct PDH_FMT_COUNTERVALUE
		{
			public uint32 CStatus;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 longValue;
				public double doubleValue;
				public int64 largeValue;
				public PSTR AnsiStringValue;
				public PWSTR WideStringValue;
			}
		}
		[CRepr]
		public struct PDH_FMT_COUNTERVALUE_ITEM_A
		{
			public PSTR szName;
			public PDH_FMT_COUNTERVALUE FmtValue;
		}
		[CRepr]
		public struct PDH_FMT_COUNTERVALUE_ITEM_W
		{
			public PWSTR szName;
			public PDH_FMT_COUNTERVALUE FmtValue;
		}
		[CRepr]
		public struct PDH_STATISTICS
		{
			public uint32 dwFormat;
			public uint32 count;
			public PDH_FMT_COUNTERVALUE min;
			public PDH_FMT_COUNTERVALUE max;
			public PDH_FMT_COUNTERVALUE mean;
		}
		[CRepr]
		public struct PDH_COUNTER_PATH_ELEMENTS_A
		{
			public PSTR szMachineName;
			public PSTR szObjectName;
			public PSTR szInstanceName;
			public PSTR szParentInstance;
			public uint32 dwInstanceIndex;
			public PSTR szCounterName;
		}
		[CRepr]
		public struct PDH_COUNTER_PATH_ELEMENTS_W
		{
			public PWSTR szMachineName;
			public PWSTR szObjectName;
			public PWSTR szInstanceName;
			public PWSTR szParentInstance;
			public uint32 dwInstanceIndex;
			public PWSTR szCounterName;
		}
		[CRepr]
		public struct PDH_DATA_ITEM_PATH_ELEMENTS_A
		{
			public PSTR szMachineName;
			public Guid ObjectGUID;
			public uint32 dwItemId;
			public PSTR szInstanceName;
		}
		[CRepr]
		public struct PDH_DATA_ITEM_PATH_ELEMENTS_W
		{
			public PWSTR szMachineName;
			public Guid ObjectGUID;
			public uint32 dwItemId;
			public PWSTR szInstanceName;
		}
		[CRepr]
		public struct PDH_COUNTER_INFO_A
		{
			public uint32 dwLength;
			public uint32 dwType;
			public uint32 CVersion;
			public uint32 CStatus;
			public int32 lScale;
			public int32 lDefaultScale;
			public uint dwUserData;
			public uint dwQueryUserData;
			public PSTR szFullPath;
			public _Anonymous_e__Union Anonymous;
			public PSTR szExplainText;
			public uint32[] DataBuffer;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PDH_DATA_ITEM_PATH_ELEMENTS_A DataItemPath;
				public PDH_COUNTER_PATH_ELEMENTS_A CounterPath;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public PSTR szMachineName;
					public PSTR szObjectName;
					public PSTR szInstanceName;
					public PSTR szParentInstance;
					public uint32 dwInstanceIndex;
					public PSTR szCounterName;
				}
			}
		}
		[CRepr]
		public struct PDH_COUNTER_INFO_W
		{
			public uint32 dwLength;
			public uint32 dwType;
			public uint32 CVersion;
			public uint32 CStatus;
			public int32 lScale;
			public int32 lDefaultScale;
			public uint dwUserData;
			public uint dwQueryUserData;
			public PWSTR szFullPath;
			public _Anonymous_e__Union Anonymous;
			public PWSTR szExplainText;
			public uint32[] DataBuffer;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PDH_DATA_ITEM_PATH_ELEMENTS_W DataItemPath;
				public PDH_COUNTER_PATH_ELEMENTS_W CounterPath;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public PWSTR szMachineName;
					public PWSTR szObjectName;
					public PWSTR szInstanceName;
					public PWSTR szParentInstance;
					public uint32 dwInstanceIndex;
					public PWSTR szCounterName;
				}
			}
		}
		[CRepr]
		public struct PDH_TIME_INFO
		{
			public int64 StartTime;
			public int64 EndTime;
			public uint32 SampleCount;
		}
		[CRepr]
		public struct PDH_RAW_LOG_RECORD
		{
			public uint32 dwStructureSize;
			public PDH_LOG_TYPE dwRecordType;
			public uint32 dwItems;
			public uint8[] RawBytes;
		}
		[CRepr]
		public struct PDH_LOG_SERVICE_QUERY_INFO_A
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwLogQuota;
			public PSTR szLogFileCaption;
			public PSTR szDefaultDir;
			public PSTR szBaseFileName;
			public uint32 dwFileType;
			public uint32 dwReserved;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 PdlAutoNameInterval;
					public uint32 PdlAutoNameUnits;
					public PSTR PdlCommandFilename;
					public PSTR PdlCounterList;
					public uint32 PdlAutoNameFormat;
					public uint32 PdlSampleInterval;
					public FILETIME PdlLogStartTime;
					public FILETIME PdlLogEndTime;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 TlNumberOfBuffers;
					public uint32 TlMinimumBuffers;
					public uint32 TlMaximumBuffers;
					public uint32 TlFreeBuffers;
					public uint32 TlBufferSize;
					public uint32 TlEventsLost;
					public uint32 TlLoggerThreadId;
					public uint32 TlBuffersWritten;
					public uint32 TlLogHandle;
					public PSTR TlLogFileName;
				}
			}
		}
		[CRepr]
		public struct PDH_LOG_SERVICE_QUERY_INFO_W
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwLogQuota;
			public PWSTR szLogFileCaption;
			public PWSTR szDefaultDir;
			public PWSTR szBaseFileName;
			public uint32 dwFileType;
			public uint32 dwReserved;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 PdlAutoNameInterval;
					public uint32 PdlAutoNameUnits;
					public PWSTR PdlCommandFilename;
					public PWSTR PdlCounterList;
					public uint32 PdlAutoNameFormat;
					public uint32 PdlSampleInterval;
					public FILETIME PdlLogStartTime;
					public FILETIME PdlLogEndTime;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 TlNumberOfBuffers;
					public uint32 TlMinimumBuffers;
					public uint32 TlMaximumBuffers;
					public uint32 TlFreeBuffers;
					public uint32 TlBufferSize;
					public uint32 TlEventsLost;
					public uint32 TlLoggerThreadId;
					public uint32 TlBuffersWritten;
					public uint32 TlLogHandle;
					public PWSTR TlLogFileName;
				}
			}
		}
		[CRepr]
		public struct PDH_BROWSE_DLG_CONFIG_HW
		{
			public uint32 _bitfield;
			public HWND hWndOwner;
			public int hDataSource;
			public PWSTR szReturnPathBuffer;
			public uint32 cchReturnPathLength;
			public CounterPathCallBack pCallBack;
			public uint dwCallBackArg;
			public int32 CallBackStatus;
			public PERF_DETAIL dwDefaultDetailLevel;
			public PWSTR szDialogBoxCaption;
		}
		[CRepr]
		public struct PDH_BROWSE_DLG_CONFIG_HA
		{
			public uint32 _bitfield;
			public HWND hWndOwner;
			public int hDataSource;
			public PSTR szReturnPathBuffer;
			public uint32 cchReturnPathLength;
			public CounterPathCallBack pCallBack;
			public uint dwCallBackArg;
			public int32 CallBackStatus;
			public PERF_DETAIL dwDefaultDetailLevel;
			public PSTR szDialogBoxCaption;
		}
		[CRepr]
		public struct PDH_BROWSE_DLG_CONFIG_W
		{
			public uint32 _bitfield;
			public HWND hWndOwner;
			public PWSTR szDataSource;
			public PWSTR szReturnPathBuffer;
			public uint32 cchReturnPathLength;
			public CounterPathCallBack pCallBack;
			public uint dwCallBackArg;
			public int32 CallBackStatus;
			public PERF_DETAIL dwDefaultDetailLevel;
			public PWSTR szDialogBoxCaption;
		}
		[CRepr]
		public struct PDH_BROWSE_DLG_CONFIG_A
		{
			public uint32 _bitfield;
			public HWND hWndOwner;
			public PSTR szDataSource;
			public PSTR szReturnPathBuffer;
			public uint32 cchReturnPathLength;
			public CounterPathCallBack pCallBack;
			public uint dwCallBackArg;
			public int32 CallBackStatus;
			public PERF_DETAIL dwDefaultDetailLevel;
			public PSTR szDialogBoxCaption;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_DataCollectorSet = .(0x03837521, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_TraceSession = .(0x0383751c, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_TraceSessionCollection = .(0x03837530, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_TraceDataProvider = .(0x03837513, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_TraceDataProviderCollection = .(0x03837511, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_DataCollectorSetCollection = .(0x03837525, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_LegacyDataCollectorSet = .(0x03837526, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_LegacyDataCollectorSetCollection = .(0x03837527, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_LegacyTraceSession = .(0x03837528, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_LegacyTraceSessionCollection = .(0x03837529, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_ServerDataCollectorSet = .(0x03837531, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_ServerDataCollectorSetCollection = .(0x03837532, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_SystemDataCollectorSet = .(0x03837546, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_SystemDataCollectorSetCollection = .(0x03837547, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_BootTraceSession = .(0x03837538, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_BootTraceSessionCollection = .(0x03837539, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
		public const Guid CLSID_SystemMonitor = .(0xc4d2d8e0, 0xd1dd, 0x11ce, 0x94, 0x0f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid CLSID_CounterItem = .(0xc4d2d8e0, 0xd1dd, 0x11ce, 0x94, 0x0f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x48);
		public const Guid CLSID_Counters = .(0xb2b066d2, 0x2aac, 0x11cf, 0x94, 0x2f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid CLSID_LogFileItem = .(0x16ec5be8, 0xdf93, 0x4237, 0x94, 0xe4, 0x9e, 0xe9, 0x18, 0x11, 0x1d, 0x71);
		public const Guid CLSID_LogFiles = .(0x2735d9fd, 0xf6b9, 0x4f19, 0xa5, 0xd9, 0xe2, 0xd0, 0x68, 0x58, 0x4b, 0xc5);
		public const Guid CLSID_CounterItem2 = .(0x43196c62, 0xc31f, 0x4ce3, 0xa0, 0x2e, 0x79, 0xef, 0xe0, 0xf6, 0xa5, 0x25);
		public const Guid CLSID_SystemMonitor2 = .(0x7f30578c, 0x5f38, 0x4612, 0xac, 0xfe, 0x6e, 0xd0, 0x4c, 0x7b, 0x7a, 0xf8);
		public const Guid CLSID_AppearPropPage = .(0xe49741e9, 0x93a8, 0x4ab1, 0x8e, 0x96, 0xbf, 0x44, 0x82, 0x28, 0x2e, 0x9c);
		public const Guid CLSID_GeneralPropPage = .(0xc3e5d3d2, 0x1a03, 0x11cf, 0x94, 0x2d, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid CLSID_GraphPropPage = .(0xc3e5d3d3, 0x1a03, 0x11cf, 0x94, 0x2d, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		public const Guid CLSID_SourcePropPage = .(0x0cf32aa1, 0x7571, 0x11d0, 0x93, 0xc4, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
		public const Guid CLSID_CounterPropPage = .(0xcf948561, 0xede8, 0x11ce, 0x94, 0x1e, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDataCollectorSet : IDispatch
		{
			public const new Guid IID = .(0x03837520, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataCollectors(IDataCollectorCollection** collectors) mut
			{
				return VT.get_DataCollectors(&this, collectors);
			}
			public HRESULT get_Duration(uint32* seconds) mut
			{
				return VT.get_Duration(&this, seconds);
			}
			public HRESULT put_Duration(uint32 seconds) mut
			{
				return VT.put_Duration(&this, seconds);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT get_DescriptionUnresolved(BSTR* Descr) mut
			{
				return VT.get_DescriptionUnresolved(&this, Descr);
			}
			public HRESULT get_DisplayName(BSTR* DisplayName) mut
			{
				return VT.get_DisplayName(&this, DisplayName);
			}
			public HRESULT put_DisplayName(BSTR DisplayName) mut
			{
				return VT.put_DisplayName(&this, DisplayName);
			}
			public HRESULT get_DisplayNameUnresolved(BSTR* name) mut
			{
				return VT.get_DisplayNameUnresolved(&this, name);
			}
			public HRESULT get_Keywords(SAFEARRAY** keywords) mut
			{
				return VT.get_Keywords(&this, keywords);
			}
			public HRESULT put_Keywords(SAFEARRAY* keywords) mut
			{
				return VT.put_Keywords(&this, keywords);
			}
			public HRESULT get_LatestOutputLocation(BSTR* path) mut
			{
				return VT.get_LatestOutputLocation(&this, path);
			}
			public HRESULT put_LatestOutputLocation(BSTR path) mut
			{
				return VT.put_LatestOutputLocation(&this, path);
			}
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_OutputLocation(BSTR* path) mut
			{
				return VT.get_OutputLocation(&this, path);
			}
			public HRESULT get_RootPath(BSTR* folder) mut
			{
				return VT.get_RootPath(&this, folder);
			}
			public HRESULT put_RootPath(BSTR folder) mut
			{
				return VT.put_RootPath(&this, folder);
			}
			public HRESULT get_Segment(int16* segment) mut
			{
				return VT.get_Segment(&this, segment);
			}
			public HRESULT put_Segment(int16 segment) mut
			{
				return VT.put_Segment(&this, segment);
			}
			public HRESULT get_SegmentMaxDuration(uint32* seconds) mut
			{
				return VT.get_SegmentMaxDuration(&this, seconds);
			}
			public HRESULT put_SegmentMaxDuration(uint32 seconds) mut
			{
				return VT.put_SegmentMaxDuration(&this, seconds);
			}
			public HRESULT get_SegmentMaxSize(uint32* size) mut
			{
				return VT.get_SegmentMaxSize(&this, size);
			}
			public HRESULT put_SegmentMaxSize(uint32 size) mut
			{
				return VT.put_SegmentMaxSize(&this, size);
			}
			public HRESULT get_SerialNumber(uint32* index) mut
			{
				return VT.get_SerialNumber(&this, index);
			}
			public HRESULT put_SerialNumber(uint32 index) mut
			{
				return VT.put_SerialNumber(&this, index);
			}
			public HRESULT get_Server(BSTR* server) mut
			{
				return VT.get_Server(&this, server);
			}
			public HRESULT get_Status(DataCollectorSetStatus* status) mut
			{
				return VT.get_Status(&this, status);
			}
			public HRESULT get_Subdirectory(BSTR* folder) mut
			{
				return VT.get_Subdirectory(&this, folder);
			}
			public HRESULT put_Subdirectory(BSTR folder) mut
			{
				return VT.put_Subdirectory(&this, folder);
			}
			public HRESULT get_SubdirectoryFormat(AutoPathFormat* format) mut
			{
				return VT.get_SubdirectoryFormat(&this, format);
			}
			public HRESULT put_SubdirectoryFormat(AutoPathFormat format) mut
			{
				return VT.put_SubdirectoryFormat(&this, format);
			}
			public HRESULT get_SubdirectoryFormatPattern(BSTR* pattern) mut
			{
				return VT.get_SubdirectoryFormatPattern(&this, pattern);
			}
			public HRESULT put_SubdirectoryFormatPattern(BSTR pattern) mut
			{
				return VT.put_SubdirectoryFormatPattern(&this, pattern);
			}
			public HRESULT get_Task(BSTR* task) mut
			{
				return VT.get_Task(&this, task);
			}
			public HRESULT put_Task(BSTR task) mut
			{
				return VT.put_Task(&this, task);
			}
			public HRESULT get_TaskRunAsSelf(int16* RunAsSelf) mut
			{
				return VT.get_TaskRunAsSelf(&this, RunAsSelf);
			}
			public HRESULT put_TaskRunAsSelf(int16 RunAsSelf) mut
			{
				return VT.put_TaskRunAsSelf(&this, RunAsSelf);
			}
			public HRESULT get_TaskArguments(BSTR* task) mut
			{
				return VT.get_TaskArguments(&this, task);
			}
			public HRESULT put_TaskArguments(BSTR task) mut
			{
				return VT.put_TaskArguments(&this, task);
			}
			public HRESULT get_TaskUserTextArguments(BSTR* UserText) mut
			{
				return VT.get_TaskUserTextArguments(&this, UserText);
			}
			public HRESULT put_TaskUserTextArguments(BSTR UserText) mut
			{
				return VT.put_TaskUserTextArguments(&this, UserText);
			}
			public HRESULT get_Schedules(IScheduleCollection** ppSchedules) mut
			{
				return VT.get_Schedules(&this, ppSchedules);
			}
			public HRESULT get_SchedulesEnabled(int16* enabled) mut
			{
				return VT.get_SchedulesEnabled(&this, enabled);
			}
			public HRESULT put_SchedulesEnabled(int16 enabled) mut
			{
				return VT.put_SchedulesEnabled(&this, enabled);
			}
			public HRESULT get_UserAccount(BSTR* user) mut
			{
				return VT.get_UserAccount(&this, user);
			}
			public HRESULT get_Xml(BSTR* xml) mut
			{
				return VT.get_Xml(&this, xml);
			}
			public HRESULT get_Security(BSTR* pbstrSecurity) mut
			{
				return VT.get_Security(&this, pbstrSecurity);
			}
			public HRESULT put_Security(BSTR bstrSecurity) mut
			{
				return VT.put_Security(&this, bstrSecurity);
			}
			public HRESULT get_StopOnCompletion(int16* Stop) mut
			{
				return VT.get_StopOnCompletion(&this, Stop);
			}
			public HRESULT put_StopOnCompletion(int16 Stop) mut
			{
				return VT.put_StopOnCompletion(&this, Stop);
			}
			public HRESULT get_DataManager(IDataManager** DataManager) mut
			{
				return VT.get_DataManager(&this, DataManager);
			}
			public HRESULT SetCredentials(BSTR user, BSTR password) mut
			{
				return VT.SetCredentials(&this, user, password);
			}
			public HRESULT Query(BSTR name, BSTR server) mut
			{
				return VT.Query(&this, name, server);
			}
			public HRESULT Commit(BSTR name, BSTR server, CommitMode mode, IValueMap** validation) mut
			{
				return VT.Commit(&this, name, server, mode, validation);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Start(int16 Synchronous) mut
			{
				return VT.Start(&this, Synchronous);
			}
			public HRESULT Stop(int16 Synchronous) mut
			{
				return VT.Stop(&this, Synchronous);
			}
			public HRESULT SetXml(BSTR xml, IValueMap** validation) mut
			{
				return VT.SetXml(&this, xml, validation);
			}
			public HRESULT SetValue(BSTR key, BSTR value) mut
			{
				return VT.SetValue(&this, key, value);
			}
			public HRESULT GetValue(BSTR key, BSTR* value) mut
			{
				return VT.GetValue(&this, key, value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDataCollectorSet *self, IDataCollectorCollection** collectors) get_DataCollectors;
				public new function HRESULT(IDataCollectorSet *self, uint32* seconds) get_Duration;
				public new function HRESULT(IDataCollectorSet *self, uint32 seconds) put_Duration;
				public new function HRESULT(IDataCollectorSet *self, BSTR* description) get_Description;
				public new function HRESULT(IDataCollectorSet *self, BSTR description) put_Description;
				public new function HRESULT(IDataCollectorSet *self, BSTR* Descr) get_DescriptionUnresolved;
				public new function HRESULT(IDataCollectorSet *self, BSTR* DisplayName) get_DisplayName;
				public new function HRESULT(IDataCollectorSet *self, BSTR DisplayName) put_DisplayName;
				public new function HRESULT(IDataCollectorSet *self, BSTR* name) get_DisplayNameUnresolved;
				public new function HRESULT(IDataCollectorSet *self, SAFEARRAY** keywords) get_Keywords;
				public new function HRESULT(IDataCollectorSet *self, SAFEARRAY* keywords) put_Keywords;
				public new function HRESULT(IDataCollectorSet *self, BSTR* path) get_LatestOutputLocation;
				public new function HRESULT(IDataCollectorSet *self, BSTR path) put_LatestOutputLocation;
				public new function HRESULT(IDataCollectorSet *self, BSTR* name) get_Name;
				public new function HRESULT(IDataCollectorSet *self, BSTR* path) get_OutputLocation;
				public new function HRESULT(IDataCollectorSet *self, BSTR* folder) get_RootPath;
				public new function HRESULT(IDataCollectorSet *self, BSTR folder) put_RootPath;
				public new function HRESULT(IDataCollectorSet *self, int16* segment) get_Segment;
				public new function HRESULT(IDataCollectorSet *self, int16 segment) put_Segment;
				public new function HRESULT(IDataCollectorSet *self, uint32* seconds) get_SegmentMaxDuration;
				public new function HRESULT(IDataCollectorSet *self, uint32 seconds) put_SegmentMaxDuration;
				public new function HRESULT(IDataCollectorSet *self, uint32* size) get_SegmentMaxSize;
				public new function HRESULT(IDataCollectorSet *self, uint32 size) put_SegmentMaxSize;
				public new function HRESULT(IDataCollectorSet *self, uint32* index) get_SerialNumber;
				public new function HRESULT(IDataCollectorSet *self, uint32 index) put_SerialNumber;
				public new function HRESULT(IDataCollectorSet *self, BSTR* server) get_Server;
				public new function HRESULT(IDataCollectorSet *self, DataCollectorSetStatus* status) get_Status;
				public new function HRESULT(IDataCollectorSet *self, BSTR* folder) get_Subdirectory;
				public new function HRESULT(IDataCollectorSet *self, BSTR folder) put_Subdirectory;
				public new function HRESULT(IDataCollectorSet *self, AutoPathFormat* format) get_SubdirectoryFormat;
				public new function HRESULT(IDataCollectorSet *self, AutoPathFormat format) put_SubdirectoryFormat;
				public new function HRESULT(IDataCollectorSet *self, BSTR* pattern) get_SubdirectoryFormatPattern;
				public new function HRESULT(IDataCollectorSet *self, BSTR pattern) put_SubdirectoryFormatPattern;
				public new function HRESULT(IDataCollectorSet *self, BSTR* task) get_Task;
				public new function HRESULT(IDataCollectorSet *self, BSTR task) put_Task;
				public new function HRESULT(IDataCollectorSet *self, int16* RunAsSelf) get_TaskRunAsSelf;
				public new function HRESULT(IDataCollectorSet *self, int16 RunAsSelf) put_TaskRunAsSelf;
				public new function HRESULT(IDataCollectorSet *self, BSTR* task) get_TaskArguments;
				public new function HRESULT(IDataCollectorSet *self, BSTR task) put_TaskArguments;
				public new function HRESULT(IDataCollectorSet *self, BSTR* UserText) get_TaskUserTextArguments;
				public new function HRESULT(IDataCollectorSet *self, BSTR UserText) put_TaskUserTextArguments;
				public new function HRESULT(IDataCollectorSet *self, IScheduleCollection** ppSchedules) get_Schedules;
				public new function HRESULT(IDataCollectorSet *self, int16* enabled) get_SchedulesEnabled;
				public new function HRESULT(IDataCollectorSet *self, int16 enabled) put_SchedulesEnabled;
				public new function HRESULT(IDataCollectorSet *self, BSTR* user) get_UserAccount;
				public new function HRESULT(IDataCollectorSet *self, BSTR* xml) get_Xml;
				public new function HRESULT(IDataCollectorSet *self, BSTR* pbstrSecurity) get_Security;
				public new function HRESULT(IDataCollectorSet *self, BSTR bstrSecurity) put_Security;
				public new function HRESULT(IDataCollectorSet *self, int16* Stop) get_StopOnCompletion;
				public new function HRESULT(IDataCollectorSet *self, int16 Stop) put_StopOnCompletion;
				public new function HRESULT(IDataCollectorSet *self, IDataManager** DataManager) get_DataManager;
				public new function HRESULT(IDataCollectorSet *self, BSTR user, BSTR password) SetCredentials;
				public new function HRESULT(IDataCollectorSet *self, BSTR name, BSTR server) Query;
				public new function HRESULT(IDataCollectorSet *self, BSTR name, BSTR server, CommitMode mode, IValueMap** validation) Commit;
				public new function HRESULT(IDataCollectorSet *self) Delete;
				public new function HRESULT(IDataCollectorSet *self, int16 Synchronous) Start;
				public new function HRESULT(IDataCollectorSet *self, int16 Synchronous) Stop;
				public new function HRESULT(IDataCollectorSet *self, BSTR xml, IValueMap** validation) SetXml;
				public new function HRESULT(IDataCollectorSet *self, BSTR key, BSTR value) SetValue;
				public new function HRESULT(IDataCollectorSet *self, BSTR key, BSTR* value) GetValue;
			}
		}
		[CRepr]
		public struct IDataManager : IDispatch
		{
			public const new Guid IID = .(0x03837541, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Enabled(int16* pfEnabled) mut
			{
				return VT.get_Enabled(&this, pfEnabled);
			}
			public HRESULT put_Enabled(int16 fEnabled) mut
			{
				return VT.put_Enabled(&this, fEnabled);
			}
			public HRESULT get_CheckBeforeRunning(int16* pfCheck) mut
			{
				return VT.get_CheckBeforeRunning(&this, pfCheck);
			}
			public HRESULT put_CheckBeforeRunning(int16 fCheck) mut
			{
				return VT.put_CheckBeforeRunning(&this, fCheck);
			}
			public HRESULT get_MinFreeDisk(uint32* MinFreeDisk) mut
			{
				return VT.get_MinFreeDisk(&this, MinFreeDisk);
			}
			public HRESULT put_MinFreeDisk(uint32 MinFreeDisk) mut
			{
				return VT.put_MinFreeDisk(&this, MinFreeDisk);
			}
			public HRESULT get_MaxSize(uint32* pulMaxSize) mut
			{
				return VT.get_MaxSize(&this, pulMaxSize);
			}
			public HRESULT put_MaxSize(uint32 ulMaxSize) mut
			{
				return VT.put_MaxSize(&this, ulMaxSize);
			}
			public HRESULT get_MaxFolderCount(uint32* pulMaxFolderCount) mut
			{
				return VT.get_MaxFolderCount(&this, pulMaxFolderCount);
			}
			public HRESULT put_MaxFolderCount(uint32 ulMaxFolderCount) mut
			{
				return VT.put_MaxFolderCount(&this, ulMaxFolderCount);
			}
			public HRESULT get_ResourcePolicy(ResourcePolicy* pPolicy) mut
			{
				return VT.get_ResourcePolicy(&this, pPolicy);
			}
			public HRESULT put_ResourcePolicy(ResourcePolicy Policy) mut
			{
				return VT.put_ResourcePolicy(&this, Policy);
			}
			public HRESULT get_FolderActions(IFolderActionCollection** Actions) mut
			{
				return VT.get_FolderActions(&this, Actions);
			}
			public HRESULT get_ReportSchema(BSTR* ReportSchema) mut
			{
				return VT.get_ReportSchema(&this, ReportSchema);
			}
			public HRESULT put_ReportSchema(BSTR ReportSchema) mut
			{
				return VT.put_ReportSchema(&this, ReportSchema);
			}
			public HRESULT get_ReportFileName(BSTR* pbstrFilename) mut
			{
				return VT.get_ReportFileName(&this, pbstrFilename);
			}
			public HRESULT put_ReportFileName(BSTR pbstrFilename) mut
			{
				return VT.put_ReportFileName(&this, pbstrFilename);
			}
			public HRESULT get_RuleTargetFileName(BSTR* Filename) mut
			{
				return VT.get_RuleTargetFileName(&this, Filename);
			}
			public HRESULT put_RuleTargetFileName(BSTR Filename) mut
			{
				return VT.put_RuleTargetFileName(&this, Filename);
			}
			public HRESULT get_EventsFileName(BSTR* pbstrFilename) mut
			{
				return VT.get_EventsFileName(&this, pbstrFilename);
			}
			public HRESULT put_EventsFileName(BSTR pbstrFilename) mut
			{
				return VT.put_EventsFileName(&this, pbstrFilename);
			}
			public HRESULT get_Rules(BSTR* pbstrXml) mut
			{
				return VT.get_Rules(&this, pbstrXml);
			}
			public HRESULT put_Rules(BSTR bstrXml) mut
			{
				return VT.put_Rules(&this, bstrXml);
			}
			public HRESULT Run(DataManagerSteps Steps, BSTR bstrFolder, IValueMap** Errors) mut
			{
				return VT.Run(&this, Steps, bstrFolder, Errors);
			}
			public HRESULT Extract(BSTR CabFilename, BSTR DestinationPath) mut
			{
				return VT.Extract(&this, CabFilename, DestinationPath);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDataManager *self, int16* pfEnabled) get_Enabled;
				public new function HRESULT(IDataManager *self, int16 fEnabled) put_Enabled;
				public new function HRESULT(IDataManager *self, int16* pfCheck) get_CheckBeforeRunning;
				public new function HRESULT(IDataManager *self, int16 fCheck) put_CheckBeforeRunning;
				public new function HRESULT(IDataManager *self, uint32* MinFreeDisk) get_MinFreeDisk;
				public new function HRESULT(IDataManager *self, uint32 MinFreeDisk) put_MinFreeDisk;
				public new function HRESULT(IDataManager *self, uint32* pulMaxSize) get_MaxSize;
				public new function HRESULT(IDataManager *self, uint32 ulMaxSize) put_MaxSize;
				public new function HRESULT(IDataManager *self, uint32* pulMaxFolderCount) get_MaxFolderCount;
				public new function HRESULT(IDataManager *self, uint32 ulMaxFolderCount) put_MaxFolderCount;
				public new function HRESULT(IDataManager *self, ResourcePolicy* pPolicy) get_ResourcePolicy;
				public new function HRESULT(IDataManager *self, ResourcePolicy Policy) put_ResourcePolicy;
				public new function HRESULT(IDataManager *self, IFolderActionCollection** Actions) get_FolderActions;
				public new function HRESULT(IDataManager *self, BSTR* ReportSchema) get_ReportSchema;
				public new function HRESULT(IDataManager *self, BSTR ReportSchema) put_ReportSchema;
				public new function HRESULT(IDataManager *self, BSTR* pbstrFilename) get_ReportFileName;
				public new function HRESULT(IDataManager *self, BSTR pbstrFilename) put_ReportFileName;
				public new function HRESULT(IDataManager *self, BSTR* Filename) get_RuleTargetFileName;
				public new function HRESULT(IDataManager *self, BSTR Filename) put_RuleTargetFileName;
				public new function HRESULT(IDataManager *self, BSTR* pbstrFilename) get_EventsFileName;
				public new function HRESULT(IDataManager *self, BSTR pbstrFilename) put_EventsFileName;
				public new function HRESULT(IDataManager *self, BSTR* pbstrXml) get_Rules;
				public new function HRESULT(IDataManager *self, BSTR bstrXml) put_Rules;
				public new function HRESULT(IDataManager *self, DataManagerSteps Steps, BSTR bstrFolder, IValueMap** Errors) Run;
				public new function HRESULT(IDataManager *self, BSTR CabFilename, BSTR DestinationPath) Extract;
			}
		}
		[CRepr]
		public struct IFolderAction : IDispatch
		{
			public const new Guid IID = .(0x03837543, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Age(uint32* pulAge) mut
			{
				return VT.get_Age(&this, pulAge);
			}
			public HRESULT put_Age(uint32 ulAge) mut
			{
				return VT.put_Age(&this, ulAge);
			}
			public HRESULT get_Size(uint32* pulAge) mut
			{
				return VT.get_Size(&this, pulAge);
			}
			public HRESULT put_Size(uint32 ulAge) mut
			{
				return VT.put_Size(&this, ulAge);
			}
			public HRESULT get_Actions(FolderActionSteps* Steps) mut
			{
				return VT.get_Actions(&this, Steps);
			}
			public HRESULT put_Actions(FolderActionSteps Steps) mut
			{
				return VT.put_Actions(&this, Steps);
			}
			public HRESULT get_SendCabTo(BSTR* pbstrDestination) mut
			{
				return VT.get_SendCabTo(&this, pbstrDestination);
			}
			public HRESULT put_SendCabTo(BSTR bstrDestination) mut
			{
				return VT.put_SendCabTo(&this, bstrDestination);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFolderAction *self, uint32* pulAge) get_Age;
				public new function HRESULT(IFolderAction *self, uint32 ulAge) put_Age;
				public new function HRESULT(IFolderAction *self, uint32* pulAge) get_Size;
				public new function HRESULT(IFolderAction *self, uint32 ulAge) put_Size;
				public new function HRESULT(IFolderAction *self, FolderActionSteps* Steps) get_Actions;
				public new function HRESULT(IFolderAction *self, FolderActionSteps Steps) put_Actions;
				public new function HRESULT(IFolderAction *self, BSTR* pbstrDestination) get_SendCabTo;
				public new function HRESULT(IFolderAction *self, BSTR bstrDestination) put_SendCabTo;
			}
		}
		[CRepr]
		public struct IFolderActionCollection : IDispatch
		{
			public const new Guid IID = .(0x03837544, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(uint32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get_Item(VARIANT Index, IFolderAction** Action) mut
			{
				return VT.get_Item(&this, Index, Action);
			}
			public HRESULT get__NewEnum(IUnknown** Enum) mut
			{
				return VT.get__NewEnum(&this, Enum);
			}
			public HRESULT Add(IFolderAction* Action) mut
			{
				return VT.Add(&this, Action);
			}
			public HRESULT Remove(VARIANT Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IFolderActionCollection* Actions) mut
			{
				return VT.AddRange(&this, Actions);
			}
			public HRESULT CreateFolderAction(IFolderAction** FolderAction) mut
			{
				return VT.CreateFolderAction(&this, FolderAction);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFolderActionCollection *self, uint32* Count) get_Count;
				public new function HRESULT(IFolderActionCollection *self, VARIANT Index, IFolderAction** Action) get_Item;
				public new function HRESULT(IFolderActionCollection *self, IUnknown** Enum) get__NewEnum;
				public new function HRESULT(IFolderActionCollection *self, IFolderAction* Action) Add;
				public new function HRESULT(IFolderActionCollection *self, VARIANT Index) Remove;
				public new function HRESULT(IFolderActionCollection *self) Clear;
				public new function HRESULT(IFolderActionCollection *self, IFolderActionCollection* Actions) AddRange;
				public new function HRESULT(IFolderActionCollection *self, IFolderAction** FolderAction) CreateFolderAction;
			}
		}
		[CRepr]
		public struct IDataCollector : IDispatch
		{
			public const new Guid IID = .(0x038374ff, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataCollectorSet(IDataCollectorSet** group) mut
			{
				return VT.get_DataCollectorSet(&this, group);
			}
			public HRESULT put_DataCollectorSet(IDataCollectorSet* group) mut
			{
				return VT.put_DataCollectorSet(&this, group);
			}
			public HRESULT get_DataCollectorType(DataCollectorType* type) mut
			{
				return VT.get_DataCollectorType(&this, type);
			}
			public HRESULT get_FileName(BSTR* name) mut
			{
				return VT.get_FileName(&this, name);
			}
			public HRESULT put_FileName(BSTR name) mut
			{
				return VT.put_FileName(&this, name);
			}
			public HRESULT get_FileNameFormat(AutoPathFormat* format) mut
			{
				return VT.get_FileNameFormat(&this, format);
			}
			public HRESULT put_FileNameFormat(AutoPathFormat format) mut
			{
				return VT.put_FileNameFormat(&this, format);
			}
			public HRESULT get_FileNameFormatPattern(BSTR* pattern) mut
			{
				return VT.get_FileNameFormatPattern(&this, pattern);
			}
			public HRESULT put_FileNameFormatPattern(BSTR pattern) mut
			{
				return VT.put_FileNameFormatPattern(&this, pattern);
			}
			public HRESULT get_LatestOutputLocation(BSTR* path) mut
			{
				return VT.get_LatestOutputLocation(&this, path);
			}
			public HRESULT put_LatestOutputLocation(BSTR path) mut
			{
				return VT.put_LatestOutputLocation(&this, path);
			}
			public HRESULT get_LogAppend(int16* @append) mut
			{
				return VT.get_LogAppend(&this, @append);
			}
			public HRESULT put_LogAppend(int16 @append) mut
			{
				return VT.put_LogAppend(&this, @append);
			}
			public HRESULT get_LogCircular(int16* circular) mut
			{
				return VT.get_LogCircular(&this, circular);
			}
			public HRESULT put_LogCircular(int16 circular) mut
			{
				return VT.put_LogCircular(&this, circular);
			}
			public HRESULT get_LogOverwrite(int16* overwrite) mut
			{
				return VT.get_LogOverwrite(&this, overwrite);
			}
			public HRESULT put_LogOverwrite(int16 overwrite) mut
			{
				return VT.put_LogOverwrite(&this, overwrite);
			}
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_OutputLocation(BSTR* path) mut
			{
				return VT.get_OutputLocation(&this, path);
			}
			public HRESULT get_Index(int32* index) mut
			{
				return VT.get_Index(&this, index);
			}
			public HRESULT put_Index(int32 index) mut
			{
				return VT.put_Index(&this, index);
			}
			public HRESULT get_Xml(BSTR* Xml) mut
			{
				return VT.get_Xml(&this, Xml);
			}
			public HRESULT SetXml(BSTR Xml, IValueMap** Validation) mut
			{
				return VT.SetXml(&this, Xml, Validation);
			}
			public HRESULT CreateOutputLocation(int16 Latest, BSTR* Location) mut
			{
				return VT.CreateOutputLocation(&this, Latest, Location);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDataCollector *self, IDataCollectorSet** group) get_DataCollectorSet;
				public new function HRESULT(IDataCollector *self, IDataCollectorSet* group) put_DataCollectorSet;
				public new function HRESULT(IDataCollector *self, DataCollectorType* type) get_DataCollectorType;
				public new function HRESULT(IDataCollector *self, BSTR* name) get_FileName;
				public new function HRESULT(IDataCollector *self, BSTR name) put_FileName;
				public new function HRESULT(IDataCollector *self, AutoPathFormat* format) get_FileNameFormat;
				public new function HRESULT(IDataCollector *self, AutoPathFormat format) put_FileNameFormat;
				public new function HRESULT(IDataCollector *self, BSTR* pattern) get_FileNameFormatPattern;
				public new function HRESULT(IDataCollector *self, BSTR pattern) put_FileNameFormatPattern;
				public new function HRESULT(IDataCollector *self, BSTR* path) get_LatestOutputLocation;
				public new function HRESULT(IDataCollector *self, BSTR path) put_LatestOutputLocation;
				public new function HRESULT(IDataCollector *self, int16* @append) get_LogAppend;
				public new function HRESULT(IDataCollector *self, int16 @append) put_LogAppend;
				public new function HRESULT(IDataCollector *self, int16* circular) get_LogCircular;
				public new function HRESULT(IDataCollector *self, int16 circular) put_LogCircular;
				public new function HRESULT(IDataCollector *self, int16* overwrite) get_LogOverwrite;
				public new function HRESULT(IDataCollector *self, int16 overwrite) put_LogOverwrite;
				public new function HRESULT(IDataCollector *self, BSTR* name) get_Name;
				public new function HRESULT(IDataCollector *self, BSTR name) put_Name;
				public new function HRESULT(IDataCollector *self, BSTR* path) get_OutputLocation;
				public new function HRESULT(IDataCollector *self, int32* index) get_Index;
				public new function HRESULT(IDataCollector *self, int32 index) put_Index;
				public new function HRESULT(IDataCollector *self, BSTR* Xml) get_Xml;
				public new function HRESULT(IDataCollector *self, BSTR Xml, IValueMap** Validation) SetXml;
				public new function HRESULT(IDataCollector *self, int16 Latest, BSTR* Location) CreateOutputLocation;
			}
		}
		[CRepr]
		public struct IPerformanceCounterDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837506, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataSourceName(BSTR* dsn) mut
			{
				return VT.get_DataSourceName(&this, dsn);
			}
			public HRESULT put_DataSourceName(BSTR dsn) mut
			{
				return VT.put_DataSourceName(&this, dsn);
			}
			public HRESULT get_PerformanceCounters(SAFEARRAY** counters) mut
			{
				return VT.get_PerformanceCounters(&this, counters);
			}
			public HRESULT put_PerformanceCounters(SAFEARRAY* counters) mut
			{
				return VT.put_PerformanceCounters(&this, counters);
			}
			public HRESULT get_LogFileFormat(FileFormat* format) mut
			{
				return VT.get_LogFileFormat(&this, format);
			}
			public HRESULT put_LogFileFormat(FileFormat format) mut
			{
				return VT.put_LogFileFormat(&this, format);
			}
			public HRESULT get_SampleInterval(uint32* interval) mut
			{
				return VT.get_SampleInterval(&this, interval);
			}
			public HRESULT put_SampleInterval(uint32 interval) mut
			{
				return VT.put_SampleInterval(&this, interval);
			}
			public HRESULT get_SegmentMaxRecords(uint32* records) mut
			{
				return VT.get_SegmentMaxRecords(&this, records);
			}
			public HRESULT put_SegmentMaxRecords(uint32 records) mut
			{
				return VT.put_SegmentMaxRecords(&this, records);
			}
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function HRESULT(IPerformanceCounterDataCollector *self, BSTR* dsn) get_DataSourceName;
				public new function HRESULT(IPerformanceCounterDataCollector *self, BSTR dsn) put_DataSourceName;
				public new function HRESULT(IPerformanceCounterDataCollector *self, SAFEARRAY** counters) get_PerformanceCounters;
				public new function HRESULT(IPerformanceCounterDataCollector *self, SAFEARRAY* counters) put_PerformanceCounters;
				public new function HRESULT(IPerformanceCounterDataCollector *self, FileFormat* format) get_LogFileFormat;
				public new function HRESULT(IPerformanceCounterDataCollector *self, FileFormat format) put_LogFileFormat;
				public new function HRESULT(IPerformanceCounterDataCollector *self, uint32* interval) get_SampleInterval;
				public new function HRESULT(IPerformanceCounterDataCollector *self, uint32 interval) put_SampleInterval;
				public new function HRESULT(IPerformanceCounterDataCollector *self, uint32* records) get_SegmentMaxRecords;
				public new function HRESULT(IPerformanceCounterDataCollector *self, uint32 records) put_SegmentMaxRecords;
			}
		}
		[CRepr]
		public struct ITraceDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383750b, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BufferSize(uint32* size) mut
			{
				return VT.get_BufferSize(&this, size);
			}
			public HRESULT put_BufferSize(uint32 size) mut
			{
				return VT.put_BufferSize(&this, size);
			}
			public HRESULT get_BuffersLost(uint32* buffers) mut
			{
				return VT.get_BuffersLost(&this, buffers);
			}
			public HRESULT put_BuffersLost(uint32 buffers) mut
			{
				return VT.put_BuffersLost(&this, buffers);
			}
			public HRESULT get_BuffersWritten(uint32* buffers) mut
			{
				return VT.get_BuffersWritten(&this, buffers);
			}
			public HRESULT put_BuffersWritten(uint32 buffers) mut
			{
				return VT.put_BuffersWritten(&this, buffers);
			}
			public HRESULT get_ClockType(ClockType* clock) mut
			{
				return VT.get_ClockType(&this, clock);
			}
			public HRESULT put_ClockType(ClockType clock) mut
			{
				return VT.put_ClockType(&this, clock);
			}
			public HRESULT get_EventsLost(uint32* events) mut
			{
				return VT.get_EventsLost(&this, events);
			}
			public HRESULT put_EventsLost(uint32 events) mut
			{
				return VT.put_EventsLost(&this, events);
			}
			public HRESULT get_ExtendedModes(uint32* mode) mut
			{
				return VT.get_ExtendedModes(&this, mode);
			}
			public HRESULT put_ExtendedModes(uint32 mode) mut
			{
				return VT.put_ExtendedModes(&this, mode);
			}
			public HRESULT get_FlushTimer(uint32* seconds) mut
			{
				return VT.get_FlushTimer(&this, seconds);
			}
			public HRESULT put_FlushTimer(uint32 seconds) mut
			{
				return VT.put_FlushTimer(&this, seconds);
			}
			public HRESULT get_FreeBuffers(uint32* buffers) mut
			{
				return VT.get_FreeBuffers(&this, buffers);
			}
			public HRESULT put_FreeBuffers(uint32 buffers) mut
			{
				return VT.put_FreeBuffers(&this, buffers);
			}
			public HRESULT get_Guid(Guid* guid) mut
			{
				return VT.get_Guid(&this, guid);
			}
			public HRESULT put_Guid(Guid guid) mut
			{
				return VT.put_Guid(&this, guid);
			}
			public HRESULT get_IsKernelTrace(int16* kernel) mut
			{
				return VT.get_IsKernelTrace(&this, kernel);
			}
			public HRESULT get_MaximumBuffers(uint32* buffers) mut
			{
				return VT.get_MaximumBuffers(&this, buffers);
			}
			public HRESULT put_MaximumBuffers(uint32 buffers) mut
			{
				return VT.put_MaximumBuffers(&this, buffers);
			}
			public HRESULT get_MinimumBuffers(uint32* buffers) mut
			{
				return VT.get_MinimumBuffers(&this, buffers);
			}
			public HRESULT put_MinimumBuffers(uint32 buffers) mut
			{
				return VT.put_MinimumBuffers(&this, buffers);
			}
			public HRESULT get_NumberOfBuffers(uint32* buffers) mut
			{
				return VT.get_NumberOfBuffers(&this, buffers);
			}
			public HRESULT put_NumberOfBuffers(uint32 buffers) mut
			{
				return VT.put_NumberOfBuffers(&this, buffers);
			}
			public HRESULT get_PreallocateFile(int16* allocate) mut
			{
				return VT.get_PreallocateFile(&this, allocate);
			}
			public HRESULT put_PreallocateFile(int16 allocate) mut
			{
				return VT.put_PreallocateFile(&this, allocate);
			}
			public HRESULT get_ProcessMode(int16* process) mut
			{
				return VT.get_ProcessMode(&this, process);
			}
			public HRESULT put_ProcessMode(int16 process) mut
			{
				return VT.put_ProcessMode(&this, process);
			}
			public HRESULT get_RealTimeBuffersLost(uint32* buffers) mut
			{
				return VT.get_RealTimeBuffersLost(&this, buffers);
			}
			public HRESULT put_RealTimeBuffersLost(uint32 buffers) mut
			{
				return VT.put_RealTimeBuffersLost(&this, buffers);
			}
			public HRESULT get_SessionId(uint64* id) mut
			{
				return VT.get_SessionId(&this, id);
			}
			public HRESULT put_SessionId(uint64 id) mut
			{
				return VT.put_SessionId(&this, id);
			}
			public HRESULT get_SessionName(BSTR* name) mut
			{
				return VT.get_SessionName(&this, name);
			}
			public HRESULT put_SessionName(BSTR name) mut
			{
				return VT.put_SessionName(&this, name);
			}
			public HRESULT get_SessionThreadId(uint32* tid) mut
			{
				return VT.get_SessionThreadId(&this, tid);
			}
			public HRESULT put_SessionThreadId(uint32 tid) mut
			{
				return VT.put_SessionThreadId(&this, tid);
			}
			public HRESULT get_StreamMode(StreamMode* mode) mut
			{
				return VT.get_StreamMode(&this, mode);
			}
			public HRESULT put_StreamMode(StreamMode mode) mut
			{
				return VT.put_StreamMode(&this, mode);
			}
			public HRESULT get_TraceDataProviders(ITraceDataProviderCollection** providers) mut
			{
				return VT.get_TraceDataProviders(&this, providers);
			}
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function HRESULT(ITraceDataCollector *self, uint32* size) get_BufferSize;
				public new function HRESULT(ITraceDataCollector *self, uint32 size) put_BufferSize;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_BuffersLost;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_BuffersLost;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_BuffersWritten;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_BuffersWritten;
				public new function HRESULT(ITraceDataCollector *self, ClockType* clock) get_ClockType;
				public new function HRESULT(ITraceDataCollector *self, ClockType clock) put_ClockType;
				public new function HRESULT(ITraceDataCollector *self, uint32* events) get_EventsLost;
				public new function HRESULT(ITraceDataCollector *self, uint32 events) put_EventsLost;
				public new function HRESULT(ITraceDataCollector *self, uint32* mode) get_ExtendedModes;
				public new function HRESULT(ITraceDataCollector *self, uint32 mode) put_ExtendedModes;
				public new function HRESULT(ITraceDataCollector *self, uint32* seconds) get_FlushTimer;
				public new function HRESULT(ITraceDataCollector *self, uint32 seconds) put_FlushTimer;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_FreeBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_FreeBuffers;
				public new function HRESULT(ITraceDataCollector *self, Guid* guid) get_Guid;
				public new function HRESULT(ITraceDataCollector *self, Guid guid) put_Guid;
				public new function HRESULT(ITraceDataCollector *self, int16* kernel) get_IsKernelTrace;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_MaximumBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_MaximumBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_MinimumBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_MinimumBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_NumberOfBuffers;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_NumberOfBuffers;
				public new function HRESULT(ITraceDataCollector *self, int16* allocate) get_PreallocateFile;
				public new function HRESULT(ITraceDataCollector *self, int16 allocate) put_PreallocateFile;
				public new function HRESULT(ITraceDataCollector *self, int16* process) get_ProcessMode;
				public new function HRESULT(ITraceDataCollector *self, int16 process) put_ProcessMode;
				public new function HRESULT(ITraceDataCollector *self, uint32* buffers) get_RealTimeBuffersLost;
				public new function HRESULT(ITraceDataCollector *self, uint32 buffers) put_RealTimeBuffersLost;
				public new function HRESULT(ITraceDataCollector *self, uint64* id) get_SessionId;
				public new function HRESULT(ITraceDataCollector *self, uint64 id) put_SessionId;
				public new function HRESULT(ITraceDataCollector *self, BSTR* name) get_SessionName;
				public new function HRESULT(ITraceDataCollector *self, BSTR name) put_SessionName;
				public new function HRESULT(ITraceDataCollector *self, uint32* tid) get_SessionThreadId;
				public new function HRESULT(ITraceDataCollector *self, uint32 tid) put_SessionThreadId;
				public new function HRESULT(ITraceDataCollector *self, StreamMode* mode) get_StreamMode;
				public new function HRESULT(ITraceDataCollector *self, StreamMode mode) put_StreamMode;
				public new function HRESULT(ITraceDataCollector *self, ITraceDataProviderCollection** providers) get_TraceDataProviders;
			}
		}
		[CRepr]
		public struct IConfigurationDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837514, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FileMaxCount(uint32* count) mut
			{
				return VT.get_FileMaxCount(&this, count);
			}
			public HRESULT put_FileMaxCount(uint32 count) mut
			{
				return VT.put_FileMaxCount(&this, count);
			}
			public HRESULT get_FileMaxRecursiveDepth(uint32* depth) mut
			{
				return VT.get_FileMaxRecursiveDepth(&this, depth);
			}
			public HRESULT put_FileMaxRecursiveDepth(uint32 depth) mut
			{
				return VT.put_FileMaxRecursiveDepth(&this, depth);
			}
			public HRESULT get_FileMaxTotalSize(uint32* size) mut
			{
				return VT.get_FileMaxTotalSize(&this, size);
			}
			public HRESULT put_FileMaxTotalSize(uint32 size) mut
			{
				return VT.put_FileMaxTotalSize(&this, size);
			}
			public HRESULT get_Files(SAFEARRAY** Files) mut
			{
				return VT.get_Files(&this, Files);
			}
			public HRESULT put_Files(SAFEARRAY* Files) mut
			{
				return VT.put_Files(&this, Files);
			}
			public HRESULT get_ManagementQueries(SAFEARRAY** Queries) mut
			{
				return VT.get_ManagementQueries(&this, Queries);
			}
			public HRESULT put_ManagementQueries(SAFEARRAY* Queries) mut
			{
				return VT.put_ManagementQueries(&this, Queries);
			}
			public HRESULT get_QueryNetworkAdapters(int16* network) mut
			{
				return VT.get_QueryNetworkAdapters(&this, network);
			}
			public HRESULT put_QueryNetworkAdapters(int16 network) mut
			{
				return VT.put_QueryNetworkAdapters(&this, network);
			}
			public HRESULT get_RegistryKeys(SAFEARRAY** query) mut
			{
				return VT.get_RegistryKeys(&this, query);
			}
			public HRESULT put_RegistryKeys(SAFEARRAY* query) mut
			{
				return VT.put_RegistryKeys(&this, query);
			}
			public HRESULT get_RegistryMaxRecursiveDepth(uint32* depth) mut
			{
				return VT.get_RegistryMaxRecursiveDepth(&this, depth);
			}
			public HRESULT put_RegistryMaxRecursiveDepth(uint32 depth) mut
			{
				return VT.put_RegistryMaxRecursiveDepth(&this, depth);
			}
			public HRESULT get_SystemStateFile(BSTR* FileName) mut
			{
				return VT.get_SystemStateFile(&this, FileName);
			}
			public HRESULT put_SystemStateFile(BSTR FileName) mut
			{
				return VT.put_SystemStateFile(&this, FileName);
			}
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function HRESULT(IConfigurationDataCollector *self, uint32* count) get_FileMaxCount;
				public new function HRESULT(IConfigurationDataCollector *self, uint32 count) put_FileMaxCount;
				public new function HRESULT(IConfigurationDataCollector *self, uint32* depth) get_FileMaxRecursiveDepth;
				public new function HRESULT(IConfigurationDataCollector *self, uint32 depth) put_FileMaxRecursiveDepth;
				public new function HRESULT(IConfigurationDataCollector *self, uint32* size) get_FileMaxTotalSize;
				public new function HRESULT(IConfigurationDataCollector *self, uint32 size) put_FileMaxTotalSize;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** Files) get_Files;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* Files) put_Files;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** Queries) get_ManagementQueries;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* Queries) put_ManagementQueries;
				public new function HRESULT(IConfigurationDataCollector *self, int16* network) get_QueryNetworkAdapters;
				public new function HRESULT(IConfigurationDataCollector *self, int16 network) put_QueryNetworkAdapters;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** query) get_RegistryKeys;
				public new function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* query) put_RegistryKeys;
				public new function HRESULT(IConfigurationDataCollector *self, uint32* depth) get_RegistryMaxRecursiveDepth;
				public new function HRESULT(IConfigurationDataCollector *self, uint32 depth) put_RegistryMaxRecursiveDepth;
				public new function HRESULT(IConfigurationDataCollector *self, BSTR* FileName) get_SystemStateFile;
				public new function HRESULT(IConfigurationDataCollector *self, BSTR FileName) put_SystemStateFile;
			}
		}
		[CRepr]
		public struct IAlertDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837516, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AlertThresholds(SAFEARRAY** alerts) mut
			{
				return VT.get_AlertThresholds(&this, alerts);
			}
			public HRESULT put_AlertThresholds(SAFEARRAY* alerts) mut
			{
				return VT.put_AlertThresholds(&this, alerts);
			}
			public HRESULT get_EventLog(int16* log) mut
			{
				return VT.get_EventLog(&this, log);
			}
			public HRESULT put_EventLog(int16 log) mut
			{
				return VT.put_EventLog(&this, log);
			}
			public HRESULT get_SampleInterval(uint32* interval) mut
			{
				return VT.get_SampleInterval(&this, interval);
			}
			public HRESULT put_SampleInterval(uint32 interval) mut
			{
				return VT.put_SampleInterval(&this, interval);
			}
			public HRESULT get_Task(BSTR* task) mut
			{
				return VT.get_Task(&this, task);
			}
			public HRESULT put_Task(BSTR task) mut
			{
				return VT.put_Task(&this, task);
			}
			public HRESULT get_TaskRunAsSelf(int16* RunAsSelf) mut
			{
				return VT.get_TaskRunAsSelf(&this, RunAsSelf);
			}
			public HRESULT put_TaskRunAsSelf(int16 RunAsSelf) mut
			{
				return VT.put_TaskRunAsSelf(&this, RunAsSelf);
			}
			public HRESULT get_TaskArguments(BSTR* task) mut
			{
				return VT.get_TaskArguments(&this, task);
			}
			public HRESULT put_TaskArguments(BSTR task) mut
			{
				return VT.put_TaskArguments(&this, task);
			}
			public HRESULT get_TaskUserTextArguments(BSTR* task) mut
			{
				return VT.get_TaskUserTextArguments(&this, task);
			}
			public HRESULT put_TaskUserTextArguments(BSTR task) mut
			{
				return VT.put_TaskUserTextArguments(&this, task);
			}
			public HRESULT get_TriggerDataCollectorSet(BSTR* name) mut
			{
				return VT.get_TriggerDataCollectorSet(&this, name);
			}
			public HRESULT put_TriggerDataCollectorSet(BSTR name) mut
			{
				return VT.put_TriggerDataCollectorSet(&this, name);
			}
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function HRESULT(IAlertDataCollector *self, SAFEARRAY** alerts) get_AlertThresholds;
				public new function HRESULT(IAlertDataCollector *self, SAFEARRAY* alerts) put_AlertThresholds;
				public new function HRESULT(IAlertDataCollector *self, int16* log) get_EventLog;
				public new function HRESULT(IAlertDataCollector *self, int16 log) put_EventLog;
				public new function HRESULT(IAlertDataCollector *self, uint32* interval) get_SampleInterval;
				public new function HRESULT(IAlertDataCollector *self, uint32 interval) put_SampleInterval;
				public new function HRESULT(IAlertDataCollector *self, BSTR* task) get_Task;
				public new function HRESULT(IAlertDataCollector *self, BSTR task) put_Task;
				public new function HRESULT(IAlertDataCollector *self, int16* RunAsSelf) get_TaskRunAsSelf;
				public new function HRESULT(IAlertDataCollector *self, int16 RunAsSelf) put_TaskRunAsSelf;
				public new function HRESULT(IAlertDataCollector *self, BSTR* task) get_TaskArguments;
				public new function HRESULT(IAlertDataCollector *self, BSTR task) put_TaskArguments;
				public new function HRESULT(IAlertDataCollector *self, BSTR* task) get_TaskUserTextArguments;
				public new function HRESULT(IAlertDataCollector *self, BSTR task) put_TaskUserTextArguments;
				public new function HRESULT(IAlertDataCollector *self, BSTR* name) get_TriggerDataCollectorSet;
				public new function HRESULT(IAlertDataCollector *self, BSTR name) put_TriggerDataCollectorSet;
			}
		}
		[CRepr]
		public struct IApiTracingDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383751a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LogApiNamesOnly(int16* logapinames) mut
			{
				return VT.get_LogApiNamesOnly(&this, logapinames);
			}
			public HRESULT put_LogApiNamesOnly(int16 logapinames) mut
			{
				return VT.put_LogApiNamesOnly(&this, logapinames);
			}
			public HRESULT get_LogApisRecursively(int16* logrecursively) mut
			{
				return VT.get_LogApisRecursively(&this, logrecursively);
			}
			public HRESULT put_LogApisRecursively(int16 logrecursively) mut
			{
				return VT.put_LogApisRecursively(&this, logrecursively);
			}
			public HRESULT get_ExePath(BSTR* exepath) mut
			{
				return VT.get_ExePath(&this, exepath);
			}
			public HRESULT put_ExePath(BSTR exepath) mut
			{
				return VT.put_ExePath(&this, exepath);
			}
			public HRESULT get_LogFilePath(BSTR* logfilepath) mut
			{
				return VT.get_LogFilePath(&this, logfilepath);
			}
			public HRESULT put_LogFilePath(BSTR logfilepath) mut
			{
				return VT.put_LogFilePath(&this, logfilepath);
			}
			public HRESULT get_IncludeModules(SAFEARRAY** includemodules) mut
			{
				return VT.get_IncludeModules(&this, includemodules);
			}
			public HRESULT put_IncludeModules(SAFEARRAY* includemodules) mut
			{
				return VT.put_IncludeModules(&this, includemodules);
			}
			public HRESULT get_IncludeApis(SAFEARRAY** includeapis) mut
			{
				return VT.get_IncludeApis(&this, includeapis);
			}
			public HRESULT put_IncludeApis(SAFEARRAY* includeapis) mut
			{
				return VT.put_IncludeApis(&this, includeapis);
			}
			public HRESULT get_ExcludeApis(SAFEARRAY** excludeapis) mut
			{
				return VT.get_ExcludeApis(&this, excludeapis);
			}
			public HRESULT put_ExcludeApis(SAFEARRAY* excludeapis) mut
			{
				return VT.put_ExcludeApis(&this, excludeapis);
			}
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function HRESULT(IApiTracingDataCollector *self, int16* logapinames) get_LogApiNamesOnly;
				public new function HRESULT(IApiTracingDataCollector *self, int16 logapinames) put_LogApiNamesOnly;
				public new function HRESULT(IApiTracingDataCollector *self, int16* logrecursively) get_LogApisRecursively;
				public new function HRESULT(IApiTracingDataCollector *self, int16 logrecursively) put_LogApisRecursively;
				public new function HRESULT(IApiTracingDataCollector *self, BSTR* exepath) get_ExePath;
				public new function HRESULT(IApiTracingDataCollector *self, BSTR exepath) put_ExePath;
				public new function HRESULT(IApiTracingDataCollector *self, BSTR* logfilepath) get_LogFilePath;
				public new function HRESULT(IApiTracingDataCollector *self, BSTR logfilepath) put_LogFilePath;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** includemodules) get_IncludeModules;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* includemodules) put_IncludeModules;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** includeapis) get_IncludeApis;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* includeapis) put_IncludeApis;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** excludeapis) get_ExcludeApis;
				public new function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* excludeapis) put_ExcludeApis;
			}
		}
		[CRepr]
		public struct IDataCollectorCollection : IDispatch
		{
			public const new Guid IID = .(0x03837502, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retVal) mut
			{
				return VT.get_Count(&this, retVal);
			}
			public HRESULT get_Item(VARIANT index, IDataCollector** collector) mut
			{
				return VT.get_Item(&this, index, collector);
			}
			public HRESULT get__NewEnum(IUnknown** retVal) mut
			{
				return VT.get__NewEnum(&this, retVal);
			}
			public HRESULT Add(IDataCollector* collector) mut
			{
				return VT.Add(&this, collector);
			}
			public HRESULT Remove(VARIANT collector) mut
			{
				return VT.Remove(&this, collector);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IDataCollectorCollection* collectors) mut
			{
				return VT.AddRange(&this, collectors);
			}
			public HRESULT CreateDataCollectorFromXml(BSTR bstrXml, IValueMap** pValidation, IDataCollector** pCollector) mut
			{
				return VT.CreateDataCollectorFromXml(&this, bstrXml, pValidation, pCollector);
			}
			public HRESULT CreateDataCollector(DataCollectorType Type, IDataCollector** Collector) mut
			{
				return VT.CreateDataCollector(&this, Type, Collector);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDataCollectorCollection *self, int32* retVal) get_Count;
				public new function HRESULT(IDataCollectorCollection *self, VARIANT index, IDataCollector** collector) get_Item;
				public new function HRESULT(IDataCollectorCollection *self, IUnknown** retVal) get__NewEnum;
				public new function HRESULT(IDataCollectorCollection *self, IDataCollector* collector) Add;
				public new function HRESULT(IDataCollectorCollection *self, VARIANT collector) Remove;
				public new function HRESULT(IDataCollectorCollection *self) Clear;
				public new function HRESULT(IDataCollectorCollection *self, IDataCollectorCollection* collectors) AddRange;
				public new function HRESULT(IDataCollectorCollection *self, BSTR bstrXml, IValueMap** pValidation, IDataCollector** pCollector) CreateDataCollectorFromXml;
				public new function HRESULT(IDataCollectorCollection *self, DataCollectorType Type, IDataCollector** Collector) CreateDataCollector;
			}
		}
		[CRepr]
		public struct IDataCollectorSetCollection : IDispatch
		{
			public const new Guid IID = .(0x03837524, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retVal) mut
			{
				return VT.get_Count(&this, retVal);
			}
			public HRESULT get_Item(VARIANT index, IDataCollectorSet** set) mut
			{
				return VT.get_Item(&this, index, set);
			}
			public HRESULT get__NewEnum(IUnknown** retVal) mut
			{
				return VT.get__NewEnum(&this, retVal);
			}
			public HRESULT Add(IDataCollectorSet* set) mut
			{
				return VT.Add(&this, set);
			}
			public HRESULT Remove(VARIANT set) mut
			{
				return VT.Remove(&this, set);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IDataCollectorSetCollection* sets) mut
			{
				return VT.AddRange(&this, sets);
			}
			public HRESULT GetDataCollectorSets(BSTR server, BSTR filter) mut
			{
				return VT.GetDataCollectorSets(&this, server, filter);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDataCollectorSetCollection *self, int32* retVal) get_Count;
				public new function HRESULT(IDataCollectorSetCollection *self, VARIANT index, IDataCollectorSet** set) get_Item;
				public new function HRESULT(IDataCollectorSetCollection *self, IUnknown** retVal) get__NewEnum;
				public new function HRESULT(IDataCollectorSetCollection *self, IDataCollectorSet* set) Add;
				public new function HRESULT(IDataCollectorSetCollection *self, VARIANT set) Remove;
				public new function HRESULT(IDataCollectorSetCollection *self) Clear;
				public new function HRESULT(IDataCollectorSetCollection *self, IDataCollectorSetCollection* sets) AddRange;
				public new function HRESULT(IDataCollectorSetCollection *self, BSTR server, BSTR filter) GetDataCollectorSets;
			}
		}
		[CRepr]
		public struct ITraceDataProvider : IDispatch
		{
			public const new Guid IID = .(0x03837512, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(BSTR* name) mut
			{
				return VT.get_DisplayName(&this, name);
			}
			public HRESULT put_DisplayName(BSTR name) mut
			{
				return VT.put_DisplayName(&this, name);
			}
			public HRESULT get_Guid(Guid* guid) mut
			{
				return VT.get_Guid(&this, guid);
			}
			public HRESULT put_Guid(Guid guid) mut
			{
				return VT.put_Guid(&this, guid);
			}
			public HRESULT get_Level(IValueMap** ppLevel) mut
			{
				return VT.get_Level(&this, ppLevel);
			}
			public HRESULT get_KeywordsAny(IValueMap** ppKeywords) mut
			{
				return VT.get_KeywordsAny(&this, ppKeywords);
			}
			public HRESULT get_KeywordsAll(IValueMap** ppKeywords) mut
			{
				return VT.get_KeywordsAll(&this, ppKeywords);
			}
			public HRESULT get_Properties(IValueMap** ppProperties) mut
			{
				return VT.get_Properties(&this, ppProperties);
			}
			public HRESULT get_FilterEnabled(int16* FilterEnabled) mut
			{
				return VT.get_FilterEnabled(&this, FilterEnabled);
			}
			public HRESULT put_FilterEnabled(int16 FilterEnabled) mut
			{
				return VT.put_FilterEnabled(&this, FilterEnabled);
			}
			public HRESULT get_FilterType(uint32* pulType) mut
			{
				return VT.get_FilterType(&this, pulType);
			}
			public HRESULT put_FilterType(uint32 ulType) mut
			{
				return VT.put_FilterType(&this, ulType);
			}
			public HRESULT get_FilterData(SAFEARRAY** ppData) mut
			{
				return VT.get_FilterData(&this, ppData);
			}
			public HRESULT put_FilterData(SAFEARRAY* pData) mut
			{
				return VT.put_FilterData(&this, pData);
			}
			public HRESULT Query(BSTR bstrName, BSTR bstrServer) mut
			{
				return VT.Query(&this, bstrName, bstrServer);
			}
			public HRESULT Resolve(IDispatch* pFrom) mut
			{
				return VT.Resolve(&this, pFrom);
			}
			public HRESULT SetSecurity(BSTR Sddl) mut
			{
				return VT.SetSecurity(&this, Sddl);
			}
			public HRESULT GetSecurity(uint32 SecurityInfo, BSTR* Sddl) mut
			{
				return VT.GetSecurity(&this, SecurityInfo, Sddl);
			}
			public HRESULT GetRegisteredProcesses(IValueMap** Processes) mut
			{
				return VT.GetRegisteredProcesses(&this, Processes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITraceDataProvider *self, BSTR* name) get_DisplayName;
				public new function HRESULT(ITraceDataProvider *self, BSTR name) put_DisplayName;
				public new function HRESULT(ITraceDataProvider *self, Guid* guid) get_Guid;
				public new function HRESULT(ITraceDataProvider *self, Guid guid) put_Guid;
				public new function HRESULT(ITraceDataProvider *self, IValueMap** ppLevel) get_Level;
				public new function HRESULT(ITraceDataProvider *self, IValueMap** ppKeywords) get_KeywordsAny;
				public new function HRESULT(ITraceDataProvider *self, IValueMap** ppKeywords) get_KeywordsAll;
				public new function HRESULT(ITraceDataProvider *self, IValueMap** ppProperties) get_Properties;
				public new function HRESULT(ITraceDataProvider *self, int16* FilterEnabled) get_FilterEnabled;
				public new function HRESULT(ITraceDataProvider *self, int16 FilterEnabled) put_FilterEnabled;
				public new function HRESULT(ITraceDataProvider *self, uint32* pulType) get_FilterType;
				public new function HRESULT(ITraceDataProvider *self, uint32 ulType) put_FilterType;
				public new function HRESULT(ITraceDataProvider *self, SAFEARRAY** ppData) get_FilterData;
				public new function HRESULT(ITraceDataProvider *self, SAFEARRAY* pData) put_FilterData;
				public new function HRESULT(ITraceDataProvider *self, BSTR bstrName, BSTR bstrServer) Query;
				public new function HRESULT(ITraceDataProvider *self, IDispatch* pFrom) Resolve;
				public new function HRESULT(ITraceDataProvider *self, BSTR Sddl) SetSecurity;
				public new function HRESULT(ITraceDataProvider *self, uint32 SecurityInfo, BSTR* Sddl) GetSecurity;
				public new function HRESULT(ITraceDataProvider *self, IValueMap** Processes) GetRegisteredProcesses;
			}
		}
		[CRepr]
		public struct ITraceDataProviderCollection : IDispatch
		{
			public const new Guid IID = .(0x03837510, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retVal) mut
			{
				return VT.get_Count(&this, retVal);
			}
			public HRESULT get_Item(VARIANT index, ITraceDataProvider** ppProvider) mut
			{
				return VT.get_Item(&this, index, ppProvider);
			}
			public HRESULT get__NewEnum(IUnknown** retVal) mut
			{
				return VT.get__NewEnum(&this, retVal);
			}
			public HRESULT Add(ITraceDataProvider* pProvider) mut
			{
				return VT.Add(&this, pProvider);
			}
			public HRESULT Remove(VARIANT vProvider) mut
			{
				return VT.Remove(&this, vProvider);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(ITraceDataProviderCollection* providers) mut
			{
				return VT.AddRange(&this, providers);
			}
			public HRESULT CreateTraceDataProvider(ITraceDataProvider** Provider) mut
			{
				return VT.CreateTraceDataProvider(&this, Provider);
			}
			public HRESULT GetTraceDataProviders(BSTR server) mut
			{
				return VT.GetTraceDataProviders(&this, server);
			}
			public HRESULT GetTraceDataProvidersByProcess(BSTR Server, uint32 Pid) mut
			{
				return VT.GetTraceDataProvidersByProcess(&this, Server, Pid);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITraceDataProviderCollection *self, int32* retVal) get_Count;
				public new function HRESULT(ITraceDataProviderCollection *self, VARIANT index, ITraceDataProvider** ppProvider) get_Item;
				public new function HRESULT(ITraceDataProviderCollection *self, IUnknown** retVal) get__NewEnum;
				public new function HRESULT(ITraceDataProviderCollection *self, ITraceDataProvider* pProvider) Add;
				public new function HRESULT(ITraceDataProviderCollection *self, VARIANT vProvider) Remove;
				public new function HRESULT(ITraceDataProviderCollection *self) Clear;
				public new function HRESULT(ITraceDataProviderCollection *self, ITraceDataProviderCollection* providers) AddRange;
				public new function HRESULT(ITraceDataProviderCollection *self, ITraceDataProvider** Provider) CreateTraceDataProvider;
				public new function HRESULT(ITraceDataProviderCollection *self, BSTR server) GetTraceDataProviders;
				public new function HRESULT(ITraceDataProviderCollection *self, BSTR Server, uint32 Pid) GetTraceDataProvidersByProcess;
			}
		}
		[CRepr]
		public struct ISchedule : IDispatch
		{
			public const new Guid IID = .(0x0383753a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StartDate(VARIANT* start) mut
			{
				return VT.get_StartDate(&this, start);
			}
			public HRESULT put_StartDate(VARIANT start) mut
			{
				return VT.put_StartDate(&this, start);
			}
			public HRESULT get_EndDate(VARIANT* end) mut
			{
				return VT.get_EndDate(&this, end);
			}
			public HRESULT put_EndDate(VARIANT end) mut
			{
				return VT.put_EndDate(&this, end);
			}
			public HRESULT get_StartTime(VARIANT* start) mut
			{
				return VT.get_StartTime(&this, start);
			}
			public HRESULT put_StartTime(VARIANT start) mut
			{
				return VT.put_StartTime(&this, start);
			}
			public HRESULT get_Days(WeekDays* days) mut
			{
				return VT.get_Days(&this, days);
			}
			public HRESULT put_Days(WeekDays days) mut
			{
				return VT.put_Days(&this, days);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISchedule *self, VARIANT* start) get_StartDate;
				public new function HRESULT(ISchedule *self, VARIANT start) put_StartDate;
				public new function HRESULT(ISchedule *self, VARIANT* end) get_EndDate;
				public new function HRESULT(ISchedule *self, VARIANT end) put_EndDate;
				public new function HRESULT(ISchedule *self, VARIANT* start) get_StartTime;
				public new function HRESULT(ISchedule *self, VARIANT start) put_StartTime;
				public new function HRESULT(ISchedule *self, WeekDays* days) get_Days;
				public new function HRESULT(ISchedule *self, WeekDays days) put_Days;
			}
		}
		[CRepr]
		public struct IScheduleCollection : IDispatch
		{
			public const new Guid IID = .(0x0383753d, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retVal) mut
			{
				return VT.get_Count(&this, retVal);
			}
			public HRESULT get_Item(VARIANT index, ISchedule** ppSchedule) mut
			{
				return VT.get_Item(&this, index, ppSchedule);
			}
			public HRESULT get__NewEnum(IUnknown** ienum) mut
			{
				return VT.get__NewEnum(&this, ienum);
			}
			public HRESULT Add(ISchedule* pSchedule) mut
			{
				return VT.Add(&this, pSchedule);
			}
			public HRESULT Remove(VARIANT vSchedule) mut
			{
				return VT.Remove(&this, vSchedule);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IScheduleCollection* pSchedules) mut
			{
				return VT.AddRange(&this, pSchedules);
			}
			public HRESULT CreateSchedule(ISchedule** Schedule) mut
			{
				return VT.CreateSchedule(&this, Schedule);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IScheduleCollection *self, int32* retVal) get_Count;
				public new function HRESULT(IScheduleCollection *self, VARIANT index, ISchedule** ppSchedule) get_Item;
				public new function HRESULT(IScheduleCollection *self, IUnknown** ienum) get__NewEnum;
				public new function HRESULT(IScheduleCollection *self, ISchedule* pSchedule) Add;
				public new function HRESULT(IScheduleCollection *self, VARIANT vSchedule) Remove;
				public new function HRESULT(IScheduleCollection *self) Clear;
				public new function HRESULT(IScheduleCollection *self, IScheduleCollection* pSchedules) AddRange;
				public new function HRESULT(IScheduleCollection *self, ISchedule** Schedule) CreateSchedule;
			}
		}
		[CRepr]
		public struct IValueMapItem : IDispatch
		{
			public const new Guid IID = .(0x03837533, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_Key(BSTR* key) mut
			{
				return VT.get_Key(&this, key);
			}
			public HRESULT put_Key(BSTR key) mut
			{
				return VT.put_Key(&this, key);
			}
			public HRESULT get_Value(VARIANT* Value) mut
			{
				return VT.get_Value(&this, Value);
			}
			public HRESULT put_Value(VARIANT Value) mut
			{
				return VT.put_Value(&this, Value);
			}
			public HRESULT get_ValueMapType(ValueMapType* type) mut
			{
				return VT.get_ValueMapType(&this, type);
			}
			public HRESULT put_ValueMapType(ValueMapType type) mut
			{
				return VT.put_ValueMapType(&this, type);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IValueMapItem *self, BSTR* description) get_Description;
				public new function HRESULT(IValueMapItem *self, BSTR description) put_Description;
				public new function HRESULT(IValueMapItem *self, int16* enabled) get_Enabled;
				public new function HRESULT(IValueMapItem *self, int16 enabled) put_Enabled;
				public new function HRESULT(IValueMapItem *self, BSTR* key) get_Key;
				public new function HRESULT(IValueMapItem *self, BSTR key) put_Key;
				public new function HRESULT(IValueMapItem *self, VARIANT* Value) get_Value;
				public new function HRESULT(IValueMapItem *self, VARIANT Value) put_Value;
				public new function HRESULT(IValueMapItem *self, ValueMapType* type) get_ValueMapType;
				public new function HRESULT(IValueMapItem *self, ValueMapType type) put_ValueMapType;
			}
		}
		[CRepr]
		public struct IValueMap : IDispatch
		{
			public const new Guid IID = .(0x03837534, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retVal) mut
			{
				return VT.get_Count(&this, retVal);
			}
			public HRESULT get_Item(VARIANT index, IValueMapItem** value) mut
			{
				return VT.get_Item(&this, index, value);
			}
			public HRESULT get__NewEnum(IUnknown** retVal) mut
			{
				return VT.get__NewEnum(&this, retVal);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT get_Value(VARIANT* Value) mut
			{
				return VT.get_Value(&this, Value);
			}
			public HRESULT put_Value(VARIANT Value) mut
			{
				return VT.put_Value(&this, Value);
			}
			public HRESULT get_ValueMapType(ValueMapType* type) mut
			{
				return VT.get_ValueMapType(&this, type);
			}
			public HRESULT put_ValueMapType(ValueMapType type) mut
			{
				return VT.put_ValueMapType(&this, type);
			}
			public HRESULT Add(VARIANT value) mut
			{
				return VT.Add(&this, value);
			}
			public HRESULT Remove(VARIANT value) mut
			{
				return VT.Remove(&this, value);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IValueMap* map) mut
			{
				return VT.AddRange(&this, map);
			}
			public HRESULT CreateValueMapItem(IValueMapItem** Item) mut
			{
				return VT.CreateValueMapItem(&this, Item);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IValueMap *self, int32* retVal) get_Count;
				public new function HRESULT(IValueMap *self, VARIANT index, IValueMapItem** value) get_Item;
				public new function HRESULT(IValueMap *self, IUnknown** retVal) get__NewEnum;
				public new function HRESULT(IValueMap *self, BSTR* description) get_Description;
				public new function HRESULT(IValueMap *self, BSTR description) put_Description;
				public new function HRESULT(IValueMap *self, VARIANT* Value) get_Value;
				public new function HRESULT(IValueMap *self, VARIANT Value) put_Value;
				public new function HRESULT(IValueMap *self, ValueMapType* type) get_ValueMapType;
				public new function HRESULT(IValueMap *self, ValueMapType type) put_ValueMapType;
				public new function HRESULT(IValueMap *self, VARIANT value) Add;
				public new function HRESULT(IValueMap *self, VARIANT value) Remove;
				public new function HRESULT(IValueMap *self) Clear;
				public new function HRESULT(IValueMap *self, IValueMap* map) AddRange;
				public new function HRESULT(IValueMap *self, IValueMapItem** Item) CreateValueMapItem;
			}
		}
		[CRepr]
		public struct ICounterItem : IUnknown
		{
			public const new Guid IID = .(0x771a9520, 0xee28, 0x11ce, 0x94, 0x1e, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(double* pdblValue) mut
			{
				return VT.get_Value(&this, pdblValue);
			}
			public HRESULT put_Color(uint32 Color) mut
			{
				return VT.put_Color(&this, Color);
			}
			public HRESULT get_Color(uint32* pColor) mut
			{
				return VT.get_Color(&this, pColor);
			}
			public HRESULT put_Width(int32 iWidth) mut
			{
				return VT.put_Width(&this, iWidth);
			}
			public HRESULT get_Width(int32* piValue) mut
			{
				return VT.get_Width(&this, piValue);
			}
			public HRESULT put_LineStyle(int32 iLineStyle) mut
			{
				return VT.put_LineStyle(&this, iLineStyle);
			}
			public HRESULT get_LineStyle(int32* piValue) mut
			{
				return VT.get_LineStyle(&this, piValue);
			}
			public HRESULT put_ScaleFactor(int32 iScale) mut
			{
				return VT.put_ScaleFactor(&this, iScale);
			}
			public HRESULT get_ScaleFactor(int32* piValue) mut
			{
				return VT.get_ScaleFactor(&this, piValue);
			}
			public HRESULT get_Path(BSTR* pstrValue) mut
			{
				return VT.get_Path(&this, pstrValue);
			}
			public HRESULT GetValue(double* Value, int32* Status) mut
			{
				return VT.GetValue(&this, Value, Status);
			}
			public HRESULT GetStatistics(double* Max, double* Min, double* Avg, int32* Status) mut
			{
				return VT.GetStatistics(&this, Max, Min, Avg, Status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICounterItem *self, double* pdblValue) get_Value;
				public new function HRESULT(ICounterItem *self, uint32 Color) put_Color;
				public new function HRESULT(ICounterItem *self, uint32* pColor) get_Color;
				public new function HRESULT(ICounterItem *self, int32 iWidth) put_Width;
				public new function HRESULT(ICounterItem *self, int32* piValue) get_Width;
				public new function HRESULT(ICounterItem *self, int32 iLineStyle) put_LineStyle;
				public new function HRESULT(ICounterItem *self, int32* piValue) get_LineStyle;
				public new function HRESULT(ICounterItem *self, int32 iScale) put_ScaleFactor;
				public new function HRESULT(ICounterItem *self, int32* piValue) get_ScaleFactor;
				public new function HRESULT(ICounterItem *self, BSTR* pstrValue) get_Path;
				public new function HRESULT(ICounterItem *self, double* Value, int32* Status) GetValue;
				public new function HRESULT(ICounterItem *self, double* Max, double* Min, double* Avg, int32* Status) GetStatistics;
			}
		}
		[CRepr]
		public struct ICounterItem2 : ICounterItem
		{
			public const new Guid IID = .(0xeefcd4e1, 0xea1c, 0x4435, 0xb7, 0xf4, 0xe3, 0x41, 0xba, 0x03, 0xb4, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Selected(int16 bState) mut
			{
				return VT.put_Selected(&this, bState);
			}
			public HRESULT get_Selected(int16* pbState) mut
			{
				return VT.get_Selected(&this, pbState);
			}
			public HRESULT put_Visible(int16 bState) mut
			{
				return VT.put_Visible(&this, bState);
			}
			public HRESULT get_Visible(int16* pbState) mut
			{
				return VT.get_Visible(&this, pbState);
			}
			public HRESULT GetDataAt(int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) mut
			{
				return VT.GetDataAt(&this, iIndex, iWhich, pVariant);
			}
			[CRepr]
			public struct VTable : ICounterItem.VTable
			{
				public new function HRESULT(ICounterItem2 *self, int16 bState) put_Selected;
				public new function HRESULT(ICounterItem2 *self, int16* pbState) get_Selected;
				public new function HRESULT(ICounterItem2 *self, int16 bState) put_Visible;
				public new function HRESULT(ICounterItem2 *self, int16* pbState) get_Visible;
				public new function HRESULT(ICounterItem2 *self, int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct _ICounterItemUnion : IUnknown
		{
			public const new Guid IID = .(0xde1a6b74, 0x9182, 0x4c41, 0x8e, 0x2c, 0x24, 0xc2, 0xcd, 0x30, 0xee, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(double* pdblValue) mut
			{
				return VT.get_Value(&this, pdblValue);
			}
			public HRESULT put_Color(uint32 Color) mut
			{
				return VT.put_Color(&this, Color);
			}
			public HRESULT get_Color(uint32* pColor) mut
			{
				return VT.get_Color(&this, pColor);
			}
			public HRESULT put_Width(int32 iWidth) mut
			{
				return VT.put_Width(&this, iWidth);
			}
			public HRESULT get_Width(int32* piValue) mut
			{
				return VT.get_Width(&this, piValue);
			}
			public HRESULT put_LineStyle(int32 iLineStyle) mut
			{
				return VT.put_LineStyle(&this, iLineStyle);
			}
			public HRESULT get_LineStyle(int32* piValue) mut
			{
				return VT.get_LineStyle(&this, piValue);
			}
			public HRESULT put_ScaleFactor(int32 iScale) mut
			{
				return VT.put_ScaleFactor(&this, iScale);
			}
			public HRESULT get_ScaleFactor(int32* piValue) mut
			{
				return VT.get_ScaleFactor(&this, piValue);
			}
			public HRESULT get_Path(BSTR* pstrValue) mut
			{
				return VT.get_Path(&this, pstrValue);
			}
			public HRESULT GetValue(double* Value, int32* Status) mut
			{
				return VT.GetValue(&this, Value, Status);
			}
			public HRESULT GetStatistics(double* Max, double* Min, double* Avg, int32* Status) mut
			{
				return VT.GetStatistics(&this, Max, Min, Avg, Status);
			}
			public HRESULT put_Selected(int16 bState) mut
			{
				return VT.put_Selected(&this, bState);
			}
			public HRESULT get_Selected(int16* pbState) mut
			{
				return VT.get_Selected(&this, pbState);
			}
			public HRESULT put_Visible(int16 bState) mut
			{
				return VT.put_Visible(&this, bState);
			}
			public HRESULT get_Visible(int16* pbState) mut
			{
				return VT.get_Visible(&this, pbState);
			}
			public HRESULT GetDataAt(int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) mut
			{
				return VT.GetDataAt(&this, iIndex, iWhich, pVariant);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(_ICounterItemUnion *self, double* pdblValue) get_Value;
				public new function HRESULT(_ICounterItemUnion *self, uint32 Color) put_Color;
				public new function HRESULT(_ICounterItemUnion *self, uint32* pColor) get_Color;
				public new function HRESULT(_ICounterItemUnion *self, int32 iWidth) put_Width;
				public new function HRESULT(_ICounterItemUnion *self, int32* piValue) get_Width;
				public new function HRESULT(_ICounterItemUnion *self, int32 iLineStyle) put_LineStyle;
				public new function HRESULT(_ICounterItemUnion *self, int32* piValue) get_LineStyle;
				public new function HRESULT(_ICounterItemUnion *self, int32 iScale) put_ScaleFactor;
				public new function HRESULT(_ICounterItemUnion *self, int32* piValue) get_ScaleFactor;
				public new function HRESULT(_ICounterItemUnion *self, BSTR* pstrValue) get_Path;
				public new function HRESULT(_ICounterItemUnion *self, double* Value, int32* Status) GetValue;
				public new function HRESULT(_ICounterItemUnion *self, double* Max, double* Min, double* Avg, int32* Status) GetStatistics;
				public new function HRESULT(_ICounterItemUnion *self, int16 bState) put_Selected;
				public new function HRESULT(_ICounterItemUnion *self, int16* pbState) get_Selected;
				public new function HRESULT(_ICounterItemUnion *self, int16 bState) put_Visible;
				public new function HRESULT(_ICounterItemUnion *self, int16* pbState) get_Visible;
				public new function HRESULT(_ICounterItemUnion *self, int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct DICounterItem : IDispatch
		{
			public const new Guid IID = .(0xc08c4ff2, 0x0e2e, 0x11cf, 0x94, 0x2c, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ICounters : IDispatch
		{
			public const new Guid IID = .(0x79167962, 0x28fc, 0x11cf, 0x94, 0x2f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pLong) mut
			{
				return VT.get_Count(&this, pLong);
			}
			public HRESULT get__NewEnum(IUnknown** ppIunk) mut
			{
				return VT.get__NewEnum(&this, ppIunk);
			}
			public HRESULT get_Item(VARIANT index, DICounterItem** ppI) mut
			{
				return VT.get_Item(&this, index, ppI);
			}
			public HRESULT Add(BSTR pathname, DICounterItem** ppI) mut
			{
				return VT.Add(&this, pathname, ppI);
			}
			public HRESULT Remove(VARIANT index) mut
			{
				return VT.Remove(&this, index);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICounters *self, int32* pLong) get_Count;
				public new function HRESULT(ICounters *self, IUnknown** ppIunk) get__NewEnum;
				public new function HRESULT(ICounters *self, VARIANT index, DICounterItem** ppI) get_Item;
				public new function HRESULT(ICounters *self, BSTR pathname, DICounterItem** ppI) Add;
				public new function HRESULT(ICounters *self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ILogFileItem : IUnknown
		{
			public const new Guid IID = .(0xd6b518dd, 0x05c7, 0x418a, 0x89, 0xe6, 0x4f, 0x9c, 0xe8, 0xc6, 0x84, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pstrValue) mut
			{
				return VT.get_Path(&this, pstrValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILogFileItem *self, BSTR* pstrValue) get_Path;
			}
		}
		[CRepr]
		public struct DILogFileItem : IDispatch
		{
			public const new Guid IID = .(0x8d093ffc, 0xf777, 0x4917, 0x82, 0xd1, 0x83, 0x3f, 0xbc, 0x54, 0xc5, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ILogFiles : IDispatch
		{
			public const new Guid IID = .(0x6a2a97e6, 0x6851, 0x41ea, 0x87, 0xad, 0x2a, 0x82, 0x25, 0x33, 0x58, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pLong) mut
			{
				return VT.get_Count(&this, pLong);
			}
			public HRESULT get__NewEnum(IUnknown** ppIunk) mut
			{
				return VT.get__NewEnum(&this, ppIunk);
			}
			public HRESULT get_Item(VARIANT index, DILogFileItem** ppI) mut
			{
				return VT.get_Item(&this, index, ppI);
			}
			public HRESULT Add(BSTR pathname, DILogFileItem** ppI) mut
			{
				return VT.Add(&this, pathname, ppI);
			}
			public HRESULT Remove(VARIANT index) mut
			{
				return VT.Remove(&this, index);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ILogFiles *self, int32* pLong) get_Count;
				public new function HRESULT(ILogFiles *self, IUnknown** ppIunk) get__NewEnum;
				public new function HRESULT(ILogFiles *self, VARIANT index, DILogFileItem** ppI) get_Item;
				public new function HRESULT(ILogFiles *self, BSTR pathname, DILogFileItem** ppI) Add;
				public new function HRESULT(ILogFiles *self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ISystemMonitor : IUnknown
		{
			public const new Guid IID = .(0x194eb241, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Appearance(int32* iAppearance) mut
			{
				return VT.get_Appearance(&this, iAppearance);
			}
			public HRESULT put_Appearance(int32 iAppearance) mut
			{
				return VT.put_Appearance(&this, iAppearance);
			}
			public HRESULT get_BackColor(uint32* pColor) mut
			{
				return VT.get_BackColor(&this, pColor);
			}
			public HRESULT put_BackColor(uint32 Color) mut
			{
				return VT.put_BackColor(&this, Color);
			}
			public HRESULT get_BorderStyle(int32* iBorderStyle) mut
			{
				return VT.get_BorderStyle(&this, iBorderStyle);
			}
			public HRESULT put_BorderStyle(int32 iBorderStyle) mut
			{
				return VT.put_BorderStyle(&this, iBorderStyle);
			}
			public HRESULT get_ForeColor(uint32* pColor) mut
			{
				return VT.get_ForeColor(&this, pColor);
			}
			public HRESULT put_ForeColor(uint32 Color) mut
			{
				return VT.put_ForeColor(&this, Color);
			}
			public HRESULT get_Font(IFontDisp** ppFont) mut
			{
				return VT.get_Font(&this, ppFont);
			}
			public HRESULT putref_Font(IFontDisp* pFont) mut
			{
				return VT.putref_Font(&this, pFont);
			}
			public HRESULT get_Counters(ICounters** ppICounters) mut
			{
				return VT.get_Counters(&this, ppICounters);
			}
			public HRESULT put_ShowVerticalGrid(int16 bState) mut
			{
				return VT.put_ShowVerticalGrid(&this, bState);
			}
			public HRESULT get_ShowVerticalGrid(int16* pbState) mut
			{
				return VT.get_ShowVerticalGrid(&this, pbState);
			}
			public HRESULT put_ShowHorizontalGrid(int16 bState) mut
			{
				return VT.put_ShowHorizontalGrid(&this, bState);
			}
			public HRESULT get_ShowHorizontalGrid(int16* pbState) mut
			{
				return VT.get_ShowHorizontalGrid(&this, pbState);
			}
			public HRESULT put_ShowLegend(int16 bState) mut
			{
				return VT.put_ShowLegend(&this, bState);
			}
			public HRESULT get_ShowLegend(int16* pbState) mut
			{
				return VT.get_ShowLegend(&this, pbState);
			}
			public HRESULT put_ShowScaleLabels(int16 bState) mut
			{
				return VT.put_ShowScaleLabels(&this, bState);
			}
			public HRESULT get_ShowScaleLabels(int16* pbState) mut
			{
				return VT.get_ShowScaleLabels(&this, pbState);
			}
			public HRESULT put_ShowValueBar(int16 bState) mut
			{
				return VT.put_ShowValueBar(&this, bState);
			}
			public HRESULT get_ShowValueBar(int16* pbState) mut
			{
				return VT.get_ShowValueBar(&this, pbState);
			}
			public HRESULT put_MaximumScale(int32 iValue) mut
			{
				return VT.put_MaximumScale(&this, iValue);
			}
			public HRESULT get_MaximumScale(int32* piValue) mut
			{
				return VT.get_MaximumScale(&this, piValue);
			}
			public HRESULT put_MinimumScale(int32 iValue) mut
			{
				return VT.put_MinimumScale(&this, iValue);
			}
			public HRESULT get_MinimumScale(int32* piValue) mut
			{
				return VT.get_MinimumScale(&this, piValue);
			}
			public HRESULT put_UpdateInterval(float fValue) mut
			{
				return VT.put_UpdateInterval(&this, fValue);
			}
			public HRESULT get_UpdateInterval(float* pfValue) mut
			{
				return VT.get_UpdateInterval(&this, pfValue);
			}
			public HRESULT put_DisplayType(DisplayTypeConstants eDisplayType) mut
			{
				return VT.put_DisplayType(&this, eDisplayType);
			}
			public HRESULT get_DisplayType(DisplayTypeConstants* peDisplayType) mut
			{
				return VT.get_DisplayType(&this, peDisplayType);
			}
			public HRESULT put_ManualUpdate(int16 bState) mut
			{
				return VT.put_ManualUpdate(&this, bState);
			}
			public HRESULT get_ManualUpdate(int16* pbState) mut
			{
				return VT.get_ManualUpdate(&this, pbState);
			}
			public HRESULT put_GraphTitle(BSTR bsTitle) mut
			{
				return VT.put_GraphTitle(&this, bsTitle);
			}
			public HRESULT get_GraphTitle(BSTR* pbsTitle) mut
			{
				return VT.get_GraphTitle(&this, pbsTitle);
			}
			public HRESULT put_YAxisLabel(BSTR bsTitle) mut
			{
				return VT.put_YAxisLabel(&this, bsTitle);
			}
			public HRESULT get_YAxisLabel(BSTR* pbsTitle) mut
			{
				return VT.get_YAxisLabel(&this, pbsTitle);
			}
			public HRESULT CollectSample() mut
			{
				return VT.CollectSample(&this);
			}
			public HRESULT UpdateGraph() mut
			{
				return VT.UpdateGraph(&this);
			}
			public HRESULT BrowseCounters() mut
			{
				return VT.BrowseCounters(&this);
			}
			public HRESULT DisplayProperties() mut
			{
				return VT.DisplayProperties(&this);
			}
			public HRESULT Counter(int32 iIndex, ICounterItem** ppICounter) mut
			{
				return VT.Counter(&this, iIndex, ppICounter);
			}
			public HRESULT AddCounter(BSTR bsPath, ICounterItem** ppICounter) mut
			{
				return VT.AddCounter(&this, bsPath, ppICounter);
			}
			public HRESULT DeleteCounter(ICounterItem* pCtr) mut
			{
				return VT.DeleteCounter(&this, pCtr);
			}
			public HRESULT get_BackColorCtl(uint32* pColor) mut
			{
				return VT.get_BackColorCtl(&this, pColor);
			}
			public HRESULT put_BackColorCtl(uint32 Color) mut
			{
				return VT.put_BackColorCtl(&this, Color);
			}
			public HRESULT put_LogFileName(BSTR bsFileName) mut
			{
				return VT.put_LogFileName(&this, bsFileName);
			}
			public HRESULT get_LogFileName(BSTR* bsFileName) mut
			{
				return VT.get_LogFileName(&this, bsFileName);
			}
			public HRESULT put_LogViewStart(double StartTime) mut
			{
				return VT.put_LogViewStart(&this, StartTime);
			}
			public HRESULT get_LogViewStart(double* StartTime) mut
			{
				return VT.get_LogViewStart(&this, StartTime);
			}
			public HRESULT put_LogViewStop(double StopTime) mut
			{
				return VT.put_LogViewStop(&this, StopTime);
			}
			public HRESULT get_LogViewStop(double* StopTime) mut
			{
				return VT.get_LogViewStop(&this, StopTime);
			}
			public HRESULT get_GridColor(uint32* pColor) mut
			{
				return VT.get_GridColor(&this, pColor);
			}
			public HRESULT put_GridColor(uint32 Color) mut
			{
				return VT.put_GridColor(&this, Color);
			}
			public HRESULT get_TimeBarColor(uint32* pColor) mut
			{
				return VT.get_TimeBarColor(&this, pColor);
			}
			public HRESULT put_TimeBarColor(uint32 Color) mut
			{
				return VT.put_TimeBarColor(&this, Color);
			}
			public HRESULT get_Highlight(int16* pbState) mut
			{
				return VT.get_Highlight(&this, pbState);
			}
			public HRESULT put_Highlight(int16 bState) mut
			{
				return VT.put_Highlight(&this, bState);
			}
			public HRESULT get_ShowToolbar(int16* pbState) mut
			{
				return VT.get_ShowToolbar(&this, pbState);
			}
			public HRESULT put_ShowToolbar(int16 bState) mut
			{
				return VT.put_ShowToolbar(&this, bState);
			}
			public HRESULT Paste() mut
			{
				return VT.Paste(&this);
			}
			public HRESULT Copy() mut
			{
				return VT.Copy(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT put_ReadOnly(int16 bState) mut
			{
				return VT.put_ReadOnly(&this, bState);
			}
			public HRESULT get_ReadOnly(int16* pbState) mut
			{
				return VT.get_ReadOnly(&this, pbState);
			}
			public HRESULT put_ReportValueType(ReportValueTypeConstants eReportValueType) mut
			{
				return VT.put_ReportValueType(&this, eReportValueType);
			}
			public HRESULT get_ReportValueType(ReportValueTypeConstants* peReportValueType) mut
			{
				return VT.get_ReportValueType(&this, peReportValueType);
			}
			public HRESULT put_MonitorDuplicateInstances(int16 bState) mut
			{
				return VT.put_MonitorDuplicateInstances(&this, bState);
			}
			public HRESULT get_MonitorDuplicateInstances(int16* pbState) mut
			{
				return VT.get_MonitorDuplicateInstances(&this, pbState);
			}
			public HRESULT put_DisplayFilter(int32 iValue) mut
			{
				return VT.put_DisplayFilter(&this, iValue);
			}
			public HRESULT get_DisplayFilter(int32* piValue) mut
			{
				return VT.get_DisplayFilter(&this, piValue);
			}
			public HRESULT get_LogFiles(ILogFiles** ppILogFiles) mut
			{
				return VT.get_LogFiles(&this, ppILogFiles);
			}
			public HRESULT put_DataSourceType(DataSourceTypeConstants eDataSourceType) mut
			{
				return VT.put_DataSourceType(&this, eDataSourceType);
			}
			public HRESULT get_DataSourceType(DataSourceTypeConstants* peDataSourceType) mut
			{
				return VT.get_DataSourceType(&this, peDataSourceType);
			}
			public HRESULT put_SqlDsnName(BSTR bsSqlDsnName) mut
			{
				return VT.put_SqlDsnName(&this, bsSqlDsnName);
			}
			public HRESULT get_SqlDsnName(BSTR* bsSqlDsnName) mut
			{
				return VT.get_SqlDsnName(&this, bsSqlDsnName);
			}
			public HRESULT put_SqlLogSetName(BSTR bsSqlLogSetName) mut
			{
				return VT.put_SqlLogSetName(&this, bsSqlLogSetName);
			}
			public HRESULT get_SqlLogSetName(BSTR* bsSqlLogSetName) mut
			{
				return VT.get_SqlLogSetName(&this, bsSqlLogSetName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISystemMonitor *self, int32* iAppearance) get_Appearance;
				public new function HRESULT(ISystemMonitor *self, int32 iAppearance) put_Appearance;
				public new function HRESULT(ISystemMonitor *self, uint32* pColor) get_BackColor;
				public new function HRESULT(ISystemMonitor *self, uint32 Color) put_BackColor;
				public new function HRESULT(ISystemMonitor *self, int32* iBorderStyle) get_BorderStyle;
				public new function HRESULT(ISystemMonitor *self, int32 iBorderStyle) put_BorderStyle;
				public new function HRESULT(ISystemMonitor *self, uint32* pColor) get_ForeColor;
				public new function HRESULT(ISystemMonitor *self, uint32 Color) put_ForeColor;
				public new function HRESULT(ISystemMonitor *self, IFontDisp** ppFont) get_Font;
				public new function HRESULT(ISystemMonitor *self, IFontDisp* pFont) putref_Font;
				public new function HRESULT(ISystemMonitor *self, ICounters** ppICounters) get_Counters;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowVerticalGrid;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowVerticalGrid;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowHorizontalGrid;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowHorizontalGrid;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowLegend;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowLegend;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowScaleLabels;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowScaleLabels;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowValueBar;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowValueBar;
				public new function HRESULT(ISystemMonitor *self, int32 iValue) put_MaximumScale;
				public new function HRESULT(ISystemMonitor *self, int32* piValue) get_MaximumScale;
				public new function HRESULT(ISystemMonitor *self, int32 iValue) put_MinimumScale;
				public new function HRESULT(ISystemMonitor *self, int32* piValue) get_MinimumScale;
				public new function HRESULT(ISystemMonitor *self, float fValue) put_UpdateInterval;
				public new function HRESULT(ISystemMonitor *self, float* pfValue) get_UpdateInterval;
				public new function HRESULT(ISystemMonitor *self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public new function HRESULT(ISystemMonitor *self, DisplayTypeConstants* peDisplayType) get_DisplayType;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ManualUpdate;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ManualUpdate;
				public new function HRESULT(ISystemMonitor *self, BSTR bsTitle) put_GraphTitle;
				public new function HRESULT(ISystemMonitor *self, BSTR* pbsTitle) get_GraphTitle;
				public new function HRESULT(ISystemMonitor *self, BSTR bsTitle) put_YAxisLabel;
				public new function HRESULT(ISystemMonitor *self, BSTR* pbsTitle) get_YAxisLabel;
				public new function HRESULT(ISystemMonitor *self) CollectSample;
				public new function HRESULT(ISystemMonitor *self) UpdateGraph;
				public new function HRESULT(ISystemMonitor *self) BrowseCounters;
				public new function HRESULT(ISystemMonitor *self) DisplayProperties;
				public new function HRESULT(ISystemMonitor *self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public new function HRESULT(ISystemMonitor *self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public new function HRESULT(ISystemMonitor *self, ICounterItem* pCtr) DeleteCounter;
				public new function HRESULT(ISystemMonitor *self, uint32* pColor) get_BackColorCtl;
				public new function HRESULT(ISystemMonitor *self, uint32 Color) put_BackColorCtl;
				public new function HRESULT(ISystemMonitor *self, BSTR bsFileName) put_LogFileName;
				public new function HRESULT(ISystemMonitor *self, BSTR* bsFileName) get_LogFileName;
				public new function HRESULT(ISystemMonitor *self, double StartTime) put_LogViewStart;
				public new function HRESULT(ISystemMonitor *self, double* StartTime) get_LogViewStart;
				public new function HRESULT(ISystemMonitor *self, double StopTime) put_LogViewStop;
				public new function HRESULT(ISystemMonitor *self, double* StopTime) get_LogViewStop;
				public new function HRESULT(ISystemMonitor *self, uint32* pColor) get_GridColor;
				public new function HRESULT(ISystemMonitor *self, uint32 Color) put_GridColor;
				public new function HRESULT(ISystemMonitor *self, uint32* pColor) get_TimeBarColor;
				public new function HRESULT(ISystemMonitor *self, uint32 Color) put_TimeBarColor;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_Highlight;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_Highlight;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowToolbar;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ShowToolbar;
				public new function HRESULT(ISystemMonitor *self) Paste;
				public new function HRESULT(ISystemMonitor *self) Copy;
				public new function HRESULT(ISystemMonitor *self) Reset;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_ReadOnly;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_ReadOnly;
				public new function HRESULT(ISystemMonitor *self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public new function HRESULT(ISystemMonitor *self, ReportValueTypeConstants* peReportValueType) get_ReportValueType;
				public new function HRESULT(ISystemMonitor *self, int16 bState) put_MonitorDuplicateInstances;
				public new function HRESULT(ISystemMonitor *self, int16* pbState) get_MonitorDuplicateInstances;
				public new function HRESULT(ISystemMonitor *self, int32 iValue) put_DisplayFilter;
				public new function HRESULT(ISystemMonitor *self, int32* piValue) get_DisplayFilter;
				public new function HRESULT(ISystemMonitor *self, ILogFiles** ppILogFiles) get_LogFiles;
				public new function HRESULT(ISystemMonitor *self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public new function HRESULT(ISystemMonitor *self, DataSourceTypeConstants* peDataSourceType) get_DataSourceType;
				public new function HRESULT(ISystemMonitor *self, BSTR bsSqlDsnName) put_SqlDsnName;
				public new function HRESULT(ISystemMonitor *self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public new function HRESULT(ISystemMonitor *self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public new function HRESULT(ISystemMonitor *self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
			}
		}
		[CRepr]
		public struct ISystemMonitor2 : ISystemMonitor
		{
			public const new Guid IID = .(0x08e3206a, 0x5fd2, 0x4fde, 0xa8, 0xa5, 0x8c, 0xb3, 0xb6, 0x3d, 0x26, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_EnableDigitGrouping(int16 bState) mut
			{
				return VT.put_EnableDigitGrouping(&this, bState);
			}
			public HRESULT get_EnableDigitGrouping(int16* pbState) mut
			{
				return VT.get_EnableDigitGrouping(&this, pbState);
			}
			public HRESULT put_EnableToolTips(int16 bState) mut
			{
				return VT.put_EnableToolTips(&this, bState);
			}
			public HRESULT get_EnableToolTips(int16* pbState) mut
			{
				return VT.get_EnableToolTips(&this, pbState);
			}
			public HRESULT put_ShowTimeAxisLabels(int16 bState) mut
			{
				return VT.put_ShowTimeAxisLabels(&this, bState);
			}
			public HRESULT get_ShowTimeAxisLabels(int16* pbState) mut
			{
				return VT.get_ShowTimeAxisLabels(&this, pbState);
			}
			public HRESULT put_ChartScroll(int16 bScroll) mut
			{
				return VT.put_ChartScroll(&this, bScroll);
			}
			public HRESULT get_ChartScroll(int16* pbScroll) mut
			{
				return VT.get_ChartScroll(&this, pbScroll);
			}
			public HRESULT put_DataPointCount(int32 iNewCount) mut
			{
				return VT.put_DataPointCount(&this, iNewCount);
			}
			public HRESULT get_DataPointCount(int32* piDataPointCount) mut
			{
				return VT.get_DataPointCount(&this, piDataPointCount);
			}
			public HRESULT ScaleToFit(int16 bSelectedCountersOnly) mut
			{
				return VT.ScaleToFit(&this, bSelectedCountersOnly);
			}
			public HRESULT SaveAs(BSTR bstrFileName, SysmonFileType eSysmonFileType) mut
			{
				return VT.SaveAs(&this, bstrFileName, eSysmonFileType);
			}
			public HRESULT Relog(BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) mut
			{
				return VT.Relog(&this, bstrFileName, eSysmonFileType, iFilter);
			}
			public HRESULT ClearData() mut
			{
				return VT.ClearData(&this);
			}
			public HRESULT get_LogSourceStartTime(double* pDate) mut
			{
				return VT.get_LogSourceStartTime(&this, pDate);
			}
			public HRESULT get_LogSourceStopTime(double* pDate) mut
			{
				return VT.get_LogSourceStopTime(&this, pDate);
			}
			public HRESULT SetLogViewRange(double StartTime, double StopTime) mut
			{
				return VT.SetLogViewRange(&this, StartTime, StopTime);
			}
			public HRESULT GetLogViewRange(double* StartTime, double* StopTime) mut
			{
				return VT.GetLogViewRange(&this, StartTime, StopTime);
			}
			public HRESULT BatchingLock(int16 fLock, SysmonBatchReason eBatchReason) mut
			{
				return VT.BatchingLock(&this, fLock, eBatchReason);
			}
			public HRESULT LoadSettings(BSTR bstrSettingFileName) mut
			{
				return VT.LoadSettings(&this, bstrSettingFileName);
			}
			[CRepr]
			public struct VTable : ISystemMonitor.VTable
			{
				public new function HRESULT(ISystemMonitor2 *self, int16 bState) put_EnableDigitGrouping;
				public new function HRESULT(ISystemMonitor2 *self, int16* pbState) get_EnableDigitGrouping;
				public new function HRESULT(ISystemMonitor2 *self, int16 bState) put_EnableToolTips;
				public new function HRESULT(ISystemMonitor2 *self, int16* pbState) get_EnableToolTips;
				public new function HRESULT(ISystemMonitor2 *self, int16 bState) put_ShowTimeAxisLabels;
				public new function HRESULT(ISystemMonitor2 *self, int16* pbState) get_ShowTimeAxisLabels;
				public new function HRESULT(ISystemMonitor2 *self, int16 bScroll) put_ChartScroll;
				public new function HRESULT(ISystemMonitor2 *self, int16* pbScroll) get_ChartScroll;
				public new function HRESULT(ISystemMonitor2 *self, int32 iNewCount) put_DataPointCount;
				public new function HRESULT(ISystemMonitor2 *self, int32* piDataPointCount) get_DataPointCount;
				public new function HRESULT(ISystemMonitor2 *self, int16 bSelectedCountersOnly) ScaleToFit;
				public new function HRESULT(ISystemMonitor2 *self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public new function HRESULT(ISystemMonitor2 *self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public new function HRESULT(ISystemMonitor2 *self) ClearData;
				public new function HRESULT(ISystemMonitor2 *self, double* pDate) get_LogSourceStartTime;
				public new function HRESULT(ISystemMonitor2 *self, double* pDate) get_LogSourceStopTime;
				public new function HRESULT(ISystemMonitor2 *self, double StartTime, double StopTime) SetLogViewRange;
				public new function HRESULT(ISystemMonitor2 *self, double* StartTime, double* StopTime) GetLogViewRange;
				public new function HRESULT(ISystemMonitor2 *self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public new function HRESULT(ISystemMonitor2 *self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct _ISystemMonitorUnion : IUnknown
		{
			public const new Guid IID = .(0xc8a77338, 0x265f, 0x4de5, 0xaa, 0x25, 0xc7, 0xda, 0x1c, 0xe5, 0xa8, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Appearance(int32* iAppearance) mut
			{
				return VT.get_Appearance(&this, iAppearance);
			}
			public HRESULT put_Appearance(int32 iAppearance) mut
			{
				return VT.put_Appearance(&this, iAppearance);
			}
			public HRESULT get_BackColor(uint32* pColor) mut
			{
				return VT.get_BackColor(&this, pColor);
			}
			public HRESULT put_BackColor(uint32 Color) mut
			{
				return VT.put_BackColor(&this, Color);
			}
			public HRESULT get_BorderStyle(int32* iBorderStyle) mut
			{
				return VT.get_BorderStyle(&this, iBorderStyle);
			}
			public HRESULT put_BorderStyle(int32 iBorderStyle) mut
			{
				return VT.put_BorderStyle(&this, iBorderStyle);
			}
			public HRESULT get_ForeColor(uint32* pColor) mut
			{
				return VT.get_ForeColor(&this, pColor);
			}
			public HRESULT put_ForeColor(uint32 Color) mut
			{
				return VT.put_ForeColor(&this, Color);
			}
			public HRESULT get_Font(IFontDisp** ppFont) mut
			{
				return VT.get_Font(&this, ppFont);
			}
			public HRESULT putref_Font(IFontDisp* pFont) mut
			{
				return VT.putref_Font(&this, pFont);
			}
			public HRESULT get_Counters(ICounters** ppICounters) mut
			{
				return VT.get_Counters(&this, ppICounters);
			}
			public HRESULT put_ShowVerticalGrid(int16 bState) mut
			{
				return VT.put_ShowVerticalGrid(&this, bState);
			}
			public HRESULT get_ShowVerticalGrid(int16* pbState) mut
			{
				return VT.get_ShowVerticalGrid(&this, pbState);
			}
			public HRESULT put_ShowHorizontalGrid(int16 bState) mut
			{
				return VT.put_ShowHorizontalGrid(&this, bState);
			}
			public HRESULT get_ShowHorizontalGrid(int16* pbState) mut
			{
				return VT.get_ShowHorizontalGrid(&this, pbState);
			}
			public HRESULT put_ShowLegend(int16 bState) mut
			{
				return VT.put_ShowLegend(&this, bState);
			}
			public HRESULT get_ShowLegend(int16* pbState) mut
			{
				return VT.get_ShowLegend(&this, pbState);
			}
			public HRESULT put_ShowScaleLabels(int16 bState) mut
			{
				return VT.put_ShowScaleLabels(&this, bState);
			}
			public HRESULT get_ShowScaleLabels(int16* pbState) mut
			{
				return VT.get_ShowScaleLabels(&this, pbState);
			}
			public HRESULT put_ShowValueBar(int16 bState) mut
			{
				return VT.put_ShowValueBar(&this, bState);
			}
			public HRESULT get_ShowValueBar(int16* pbState) mut
			{
				return VT.get_ShowValueBar(&this, pbState);
			}
			public HRESULT put_MaximumScale(int32 iValue) mut
			{
				return VT.put_MaximumScale(&this, iValue);
			}
			public HRESULT get_MaximumScale(int32* piValue) mut
			{
				return VT.get_MaximumScale(&this, piValue);
			}
			public HRESULT put_MinimumScale(int32 iValue) mut
			{
				return VT.put_MinimumScale(&this, iValue);
			}
			public HRESULT get_MinimumScale(int32* piValue) mut
			{
				return VT.get_MinimumScale(&this, piValue);
			}
			public HRESULT put_UpdateInterval(float fValue) mut
			{
				return VT.put_UpdateInterval(&this, fValue);
			}
			public HRESULT get_UpdateInterval(float* pfValue) mut
			{
				return VT.get_UpdateInterval(&this, pfValue);
			}
			public HRESULT put_DisplayType(DisplayTypeConstants eDisplayType) mut
			{
				return VT.put_DisplayType(&this, eDisplayType);
			}
			public HRESULT get_DisplayType(DisplayTypeConstants* peDisplayType) mut
			{
				return VT.get_DisplayType(&this, peDisplayType);
			}
			public HRESULT put_ManualUpdate(int16 bState) mut
			{
				return VT.put_ManualUpdate(&this, bState);
			}
			public HRESULT get_ManualUpdate(int16* pbState) mut
			{
				return VT.get_ManualUpdate(&this, pbState);
			}
			public HRESULT put_GraphTitle(BSTR bsTitle) mut
			{
				return VT.put_GraphTitle(&this, bsTitle);
			}
			public HRESULT get_GraphTitle(BSTR* pbsTitle) mut
			{
				return VT.get_GraphTitle(&this, pbsTitle);
			}
			public HRESULT put_YAxisLabel(BSTR bsTitle) mut
			{
				return VT.put_YAxisLabel(&this, bsTitle);
			}
			public HRESULT get_YAxisLabel(BSTR* pbsTitle) mut
			{
				return VT.get_YAxisLabel(&this, pbsTitle);
			}
			public HRESULT CollectSample() mut
			{
				return VT.CollectSample(&this);
			}
			public HRESULT UpdateGraph() mut
			{
				return VT.UpdateGraph(&this);
			}
			public HRESULT BrowseCounters() mut
			{
				return VT.BrowseCounters(&this);
			}
			public HRESULT DisplayProperties() mut
			{
				return VT.DisplayProperties(&this);
			}
			public HRESULT Counter(int32 iIndex, ICounterItem** ppICounter) mut
			{
				return VT.Counter(&this, iIndex, ppICounter);
			}
			public HRESULT AddCounter(BSTR bsPath, ICounterItem** ppICounter) mut
			{
				return VT.AddCounter(&this, bsPath, ppICounter);
			}
			public HRESULT DeleteCounter(ICounterItem* pCtr) mut
			{
				return VT.DeleteCounter(&this, pCtr);
			}
			public HRESULT get_BackColorCtl(uint32* pColor) mut
			{
				return VT.get_BackColorCtl(&this, pColor);
			}
			public HRESULT put_BackColorCtl(uint32 Color) mut
			{
				return VT.put_BackColorCtl(&this, Color);
			}
			public HRESULT put_LogFileName(BSTR bsFileName) mut
			{
				return VT.put_LogFileName(&this, bsFileName);
			}
			public HRESULT get_LogFileName(BSTR* bsFileName) mut
			{
				return VT.get_LogFileName(&this, bsFileName);
			}
			public HRESULT put_LogViewStart(double StartTime) mut
			{
				return VT.put_LogViewStart(&this, StartTime);
			}
			public HRESULT get_LogViewStart(double* StartTime) mut
			{
				return VT.get_LogViewStart(&this, StartTime);
			}
			public HRESULT put_LogViewStop(double StopTime) mut
			{
				return VT.put_LogViewStop(&this, StopTime);
			}
			public HRESULT get_LogViewStop(double* StopTime) mut
			{
				return VT.get_LogViewStop(&this, StopTime);
			}
			public HRESULT get_GridColor(uint32* pColor) mut
			{
				return VT.get_GridColor(&this, pColor);
			}
			public HRESULT put_GridColor(uint32 Color) mut
			{
				return VT.put_GridColor(&this, Color);
			}
			public HRESULT get_TimeBarColor(uint32* pColor) mut
			{
				return VT.get_TimeBarColor(&this, pColor);
			}
			public HRESULT put_TimeBarColor(uint32 Color) mut
			{
				return VT.put_TimeBarColor(&this, Color);
			}
			public HRESULT get_Highlight(int16* pbState) mut
			{
				return VT.get_Highlight(&this, pbState);
			}
			public HRESULT put_Highlight(int16 bState) mut
			{
				return VT.put_Highlight(&this, bState);
			}
			public HRESULT get_ShowToolbar(int16* pbState) mut
			{
				return VT.get_ShowToolbar(&this, pbState);
			}
			public HRESULT put_ShowToolbar(int16 bState) mut
			{
				return VT.put_ShowToolbar(&this, bState);
			}
			public HRESULT Paste() mut
			{
				return VT.Paste(&this);
			}
			public HRESULT Copy() mut
			{
				return VT.Copy(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT put_ReadOnly(int16 bState) mut
			{
				return VT.put_ReadOnly(&this, bState);
			}
			public HRESULT get_ReadOnly(int16* pbState) mut
			{
				return VT.get_ReadOnly(&this, pbState);
			}
			public HRESULT put_ReportValueType(ReportValueTypeConstants eReportValueType) mut
			{
				return VT.put_ReportValueType(&this, eReportValueType);
			}
			public HRESULT get_ReportValueType(ReportValueTypeConstants* peReportValueType) mut
			{
				return VT.get_ReportValueType(&this, peReportValueType);
			}
			public HRESULT put_MonitorDuplicateInstances(int16 bState) mut
			{
				return VT.put_MonitorDuplicateInstances(&this, bState);
			}
			public HRESULT get_MonitorDuplicateInstances(int16* pbState) mut
			{
				return VT.get_MonitorDuplicateInstances(&this, pbState);
			}
			public HRESULT put_DisplayFilter(int32 iValue) mut
			{
				return VT.put_DisplayFilter(&this, iValue);
			}
			public HRESULT get_DisplayFilter(int32* piValue) mut
			{
				return VT.get_DisplayFilter(&this, piValue);
			}
			public HRESULT get_LogFiles(ILogFiles** ppILogFiles) mut
			{
				return VT.get_LogFiles(&this, ppILogFiles);
			}
			public HRESULT put_DataSourceType(DataSourceTypeConstants eDataSourceType) mut
			{
				return VT.put_DataSourceType(&this, eDataSourceType);
			}
			public HRESULT get_DataSourceType(DataSourceTypeConstants* peDataSourceType) mut
			{
				return VT.get_DataSourceType(&this, peDataSourceType);
			}
			public HRESULT put_SqlDsnName(BSTR bsSqlDsnName) mut
			{
				return VT.put_SqlDsnName(&this, bsSqlDsnName);
			}
			public HRESULT get_SqlDsnName(BSTR* bsSqlDsnName) mut
			{
				return VT.get_SqlDsnName(&this, bsSqlDsnName);
			}
			public HRESULT put_SqlLogSetName(BSTR bsSqlLogSetName) mut
			{
				return VT.put_SqlLogSetName(&this, bsSqlLogSetName);
			}
			public HRESULT get_SqlLogSetName(BSTR* bsSqlLogSetName) mut
			{
				return VT.get_SqlLogSetName(&this, bsSqlLogSetName);
			}
			public HRESULT put_EnableDigitGrouping(int16 bState) mut
			{
				return VT.put_EnableDigitGrouping(&this, bState);
			}
			public HRESULT get_EnableDigitGrouping(int16* pbState) mut
			{
				return VT.get_EnableDigitGrouping(&this, pbState);
			}
			public HRESULT put_EnableToolTips(int16 bState) mut
			{
				return VT.put_EnableToolTips(&this, bState);
			}
			public HRESULT get_EnableToolTips(int16* pbState) mut
			{
				return VT.get_EnableToolTips(&this, pbState);
			}
			public HRESULT put_ShowTimeAxisLabels(int16 bState) mut
			{
				return VT.put_ShowTimeAxisLabels(&this, bState);
			}
			public HRESULT get_ShowTimeAxisLabels(int16* pbState) mut
			{
				return VT.get_ShowTimeAxisLabels(&this, pbState);
			}
			public HRESULT put_ChartScroll(int16 bScroll) mut
			{
				return VT.put_ChartScroll(&this, bScroll);
			}
			public HRESULT get_ChartScroll(int16* pbScroll) mut
			{
				return VT.get_ChartScroll(&this, pbScroll);
			}
			public HRESULT put_DataPointCount(int32 iNewCount) mut
			{
				return VT.put_DataPointCount(&this, iNewCount);
			}
			public HRESULT get_DataPointCount(int32* piDataPointCount) mut
			{
				return VT.get_DataPointCount(&this, piDataPointCount);
			}
			public HRESULT ScaleToFit(int16 bSelectedCountersOnly) mut
			{
				return VT.ScaleToFit(&this, bSelectedCountersOnly);
			}
			public HRESULT SaveAs(BSTR bstrFileName, SysmonFileType eSysmonFileType) mut
			{
				return VT.SaveAs(&this, bstrFileName, eSysmonFileType);
			}
			public HRESULT Relog(BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) mut
			{
				return VT.Relog(&this, bstrFileName, eSysmonFileType, iFilter);
			}
			public HRESULT ClearData() mut
			{
				return VT.ClearData(&this);
			}
			public HRESULT get_LogSourceStartTime(double* pDate) mut
			{
				return VT.get_LogSourceStartTime(&this, pDate);
			}
			public HRESULT get_LogSourceStopTime(double* pDate) mut
			{
				return VT.get_LogSourceStopTime(&this, pDate);
			}
			public HRESULT SetLogViewRange(double StartTime, double StopTime) mut
			{
				return VT.SetLogViewRange(&this, StartTime, StopTime);
			}
			public HRESULT GetLogViewRange(double* StartTime, double* StopTime) mut
			{
				return VT.GetLogViewRange(&this, StartTime, StopTime);
			}
			public HRESULT BatchingLock(int16 fLock, SysmonBatchReason eBatchReason) mut
			{
				return VT.BatchingLock(&this, fLock, eBatchReason);
			}
			public HRESULT LoadSettings(BSTR bstrSettingFileName) mut
			{
				return VT.LoadSettings(&this, bstrSettingFileName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(_ISystemMonitorUnion *self, int32* iAppearance) get_Appearance;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iAppearance) put_Appearance;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_BackColor;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_BackColor;
				public new function HRESULT(_ISystemMonitorUnion *self, int32* iBorderStyle) get_BorderStyle;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iBorderStyle) put_BorderStyle;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_ForeColor;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_ForeColor;
				public new function HRESULT(_ISystemMonitorUnion *self, IFontDisp** ppFont) get_Font;
				public new function HRESULT(_ISystemMonitorUnion *self, IFontDisp* pFont) putref_Font;
				public new function HRESULT(_ISystemMonitorUnion *self, ICounters** ppICounters) get_Counters;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowVerticalGrid;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowVerticalGrid;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowHorizontalGrid;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowHorizontalGrid;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowLegend;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowLegend;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowScaleLabels;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowScaleLabels;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowValueBar;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowValueBar;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_MaximumScale;
				public new function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_MaximumScale;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_MinimumScale;
				public new function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_MinimumScale;
				public new function HRESULT(_ISystemMonitorUnion *self, float fValue) put_UpdateInterval;
				public new function HRESULT(_ISystemMonitorUnion *self, float* pfValue) get_UpdateInterval;
				public new function HRESULT(_ISystemMonitorUnion *self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public new function HRESULT(_ISystemMonitorUnion *self, DisplayTypeConstants* peDisplayType) get_DisplayType;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ManualUpdate;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ManualUpdate;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsTitle) put_GraphTitle;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR* pbsTitle) get_GraphTitle;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsTitle) put_YAxisLabel;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR* pbsTitle) get_YAxisLabel;
				public new function HRESULT(_ISystemMonitorUnion *self) CollectSample;
				public new function HRESULT(_ISystemMonitorUnion *self) UpdateGraph;
				public new function HRESULT(_ISystemMonitorUnion *self) BrowseCounters;
				public new function HRESULT(_ISystemMonitorUnion *self) DisplayProperties;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public new function HRESULT(_ISystemMonitorUnion *self, ICounterItem* pCtr) DeleteCounter;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_BackColorCtl;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_BackColorCtl;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsFileName) put_LogFileName;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR* bsFileName) get_LogFileName;
				public new function HRESULT(_ISystemMonitorUnion *self, double StartTime) put_LogViewStart;
				public new function HRESULT(_ISystemMonitorUnion *self, double* StartTime) get_LogViewStart;
				public new function HRESULT(_ISystemMonitorUnion *self, double StopTime) put_LogViewStop;
				public new function HRESULT(_ISystemMonitorUnion *self, double* StopTime) get_LogViewStop;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_GridColor;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_GridColor;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_TimeBarColor;
				public new function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_TimeBarColor;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_Highlight;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_Highlight;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowToolbar;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowToolbar;
				public new function HRESULT(_ISystemMonitorUnion *self) Paste;
				public new function HRESULT(_ISystemMonitorUnion *self) Copy;
				public new function HRESULT(_ISystemMonitorUnion *self) Reset;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ReadOnly;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ReadOnly;
				public new function HRESULT(_ISystemMonitorUnion *self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public new function HRESULT(_ISystemMonitorUnion *self, ReportValueTypeConstants* peReportValueType) get_ReportValueType;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_MonitorDuplicateInstances;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_MonitorDuplicateInstances;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_DisplayFilter;
				public new function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_DisplayFilter;
				public new function HRESULT(_ISystemMonitorUnion *self, ILogFiles** ppILogFiles) get_LogFiles;
				public new function HRESULT(_ISystemMonitorUnion *self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public new function HRESULT(_ISystemMonitorUnion *self, DataSourceTypeConstants* peDataSourceType) get_DataSourceType;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsSqlDsnName) put_SqlDsnName;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_EnableDigitGrouping;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_EnableDigitGrouping;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_EnableToolTips;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_EnableToolTips;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowTimeAxisLabels;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowTimeAxisLabels;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bScroll) put_ChartScroll;
				public new function HRESULT(_ISystemMonitorUnion *self, int16* pbScroll) get_ChartScroll;
				public new function HRESULT(_ISystemMonitorUnion *self, int32 iNewCount) put_DataPointCount;
				public new function HRESULT(_ISystemMonitorUnion *self, int32* piDataPointCount) get_DataPointCount;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 bSelectedCountersOnly) ScaleToFit;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public new function HRESULT(_ISystemMonitorUnion *self) ClearData;
				public new function HRESULT(_ISystemMonitorUnion *self, double* pDate) get_LogSourceStartTime;
				public new function HRESULT(_ISystemMonitorUnion *self, double* pDate) get_LogSourceStopTime;
				public new function HRESULT(_ISystemMonitorUnion *self, double StartTime, double StopTime) SetLogViewRange;
				public new function HRESULT(_ISystemMonitorUnion *self, double* StartTime, double* StopTime) GetLogViewRange;
				public new function HRESULT(_ISystemMonitorUnion *self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public new function HRESULT(_ISystemMonitorUnion *self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct DISystemMonitor : IDispatch
		{
			public const new Guid IID = .(0x13d73d81, 0xc32e, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct DISystemMonitorInternal : IDispatch
		{
			public const new Guid IID = .(0x194eb242, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ISystemMonitorEvents : IUnknown
		{
			public const new Guid IID = .(0xee660ea0, 0x4abd, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnCounterSelected(int32 Index) mut
			{
				VT.OnCounterSelected(&this, Index);
			}
			public void OnCounterAdded(int32 Index) mut
			{
				VT.OnCounterAdded(&this, Index);
			}
			public void OnCounterDeleted(int32 Index) mut
			{
				VT.OnCounterDeleted(&this, Index);
			}
			public void OnSampleCollected() mut
			{
				VT.OnSampleCollected(&this);
			}
			public void OnDblClick(int32 Index) mut
			{
				VT.OnDblClick(&this, Index);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ISystemMonitorEvents *self, int32 Index) OnCounterSelected;
				public new function void(ISystemMonitorEvents *self, int32 Index) OnCounterAdded;
				public new function void(ISystemMonitorEvents *self, int32 Index) OnCounterDeleted;
				public new function void(ISystemMonitorEvents *self) OnSampleCollected;
				public new function void(ISystemMonitorEvents *self, int32 Index) OnDblClick;
			}
		}
		[CRepr]
		public struct DISystemMonitorEvents : IDispatch
		{
			public const new Guid IID = .(0x84979930, 0x4ab3, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryPerformanceCounter(LARGE_INTEGER* lpPerformanceCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryPerformanceFrequency(LARGE_INTEGER* lpFrequency);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InstallPerfDllW(PWSTR szComputerName, PWSTR lpIniFile, uint dwFlags);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InstallPerfDllA(PSTR szComputerName, PSTR lpIniFile, uint dwFlags);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LoadPerfCounterTextStringsA(PSTR lpCommandLine, BOOL bQuietModeArg);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LoadPerfCounterTextStringsW(PWSTR lpCommandLine, BOOL bQuietModeArg);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnloadPerfCounterTextStringsW(PWSTR lpCommandLine, BOOL bQuietModeArg);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnloadPerfCounterTextStringsA(PSTR lpCommandLine, BOOL bQuietModeArg);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UpdatePerfNameFilesA(PSTR szNewCtrFilePath, PSTR szNewHlpFilePath, PSTR szLanguageID, uint dwFlags);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UpdatePerfNameFilesW(PWSTR szNewCtrFilePath, PWSTR szNewHlpFilePath, PWSTR szLanguageID, uint dwFlags);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetServiceAsTrustedA(PSTR szReserved, PSTR szServiceName);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetServiceAsTrustedW(PWSTR szReserved, PWSTR szServiceName);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BackupPerfRegistryToFileW(PWSTR szFileName, PWSTR szCommentString);
		[Import("loadperf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RestorePerfRegistryFromFileW(PWSTR szFileName, PWSTR szLangId);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfStartProvider(Guid* ProviderGuid, PERFLIBREQUEST ControlCallback, PerfProviderHandle* phProvider);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfStartProviderEx(Guid* ProviderGuid, PERF_PROVIDER_CONTEXT* ProviderContext, PerfProviderHandle* Provider);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfStopProvider(PerfProviderHandle ProviderHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetCounterSetInfo(HANDLE ProviderHandle, PERF_COUNTERSET_INFO* Template, uint32 TemplateSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PERF_COUNTERSET_INSTANCE* PerfCreateInstance(PerfProviderHandle ProviderHandle, Guid* CounterSetGuid, PWSTR Name, uint32 Id);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDeleteInstance(PerfProviderHandle Provider, PERF_COUNTERSET_INSTANCE* InstanceBlock);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PERF_COUNTERSET_INSTANCE* PerfQueryInstance(HANDLE ProviderHandle, Guid* CounterSetGuid, PWSTR Name, uint32 Id);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetCounterRefValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, void* Address);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetULongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetULongLongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfIncrementULongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfIncrementULongLongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDecrementULongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDecrementULongLongCounterValue(HANDLE Provider, PERF_COUNTERSET_INSTANCE* Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfEnumerateCounterSet(PWSTR szMachine, Guid* pCounterSetIds, uint32 cCounterSetIds, uint32* pcCounterSetIdsActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfEnumerateCounterSetInstances(PWSTR szMachine, Guid* pCounterSetId, PERF_INSTANCE_HEADER* pInstances, uint32 cbInstances, uint32* pcbInstancesActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterSetRegistrationInfo(PWSTR szMachine, Guid* pCounterSetId, PerfRegInfoType requestCode, uint32 requestLangId, uint8* pbRegInfo, uint32 cbRegInfo, uint32* pcbRegInfoActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfOpenQueryHandle(PWSTR szMachine, PerfQueryHandle* phQuery);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfCloseQueryHandle(HANDLE hQuery);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterInfo(PerfQueryHandle hQuery, PERF_COUNTER_IDENTIFIER* pCounters, uint32 cbCounters, uint32* pcbCountersActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterData(PerfQueryHandle hQuery, PERF_DATA_HEADER* pCounterBlock, uint32 cbCounterBlock, uint32* pcbCounterBlockActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfAddCounters(PerfQueryHandle hQuery, PERF_COUNTER_IDENTIFIER* pCounters, uint32 cbCounters);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDeleteCounters(PerfQueryHandle hQuery, PERF_COUNTER_IDENTIFIER* pCounters, uint32 cbCounters);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDllVersion(PDH_DLL_VERSION* lpdwVersion);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryW(PWSTR szDataSource, uint dwUserData, int* phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryA(PSTR szDataSource, uint dwUserData, int* phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddCounterW(int hQuery, PWSTR szFullCounterPath, uint dwUserData, int* phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddCounterA(int hQuery, PSTR szFullCounterPath, uint dwUserData, int* phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddEnglishCounterW(int hQuery, PWSTR szFullCounterPath, uint dwUserData, int* phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddEnglishCounterA(int hQuery, PSTR szFullCounterPath, uint dwUserData, int* phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCollectQueryDataWithTime(int hQuery, int64* pllTimeStamp);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathExW(int hDataSource, PWSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathExA(int hDataSource, PSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhRemoveCounter(int hCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCollectQueryData(int hQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCloseQuery(int hQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetFormattedCounterValue(int hCounter, PDH_FMT dwFormat, uint32* lpdwType, PDH_FMT_COUNTERVALUE* pValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetFormattedCounterArrayA(int hCounter, PDH_FMT dwFormat, uint32* lpdwBufferSize, uint32* lpdwItemCount, PDH_FMT_COUNTERVALUE_ITEM_A* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetFormattedCounterArrayW(int hCounter, PDH_FMT dwFormat, uint32* lpdwBufferSize, uint32* lpdwItemCount, PDH_FMT_COUNTERVALUE_ITEM_W* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterValue(int hCounter, uint32* lpdwType, PDH_RAW_COUNTER* pValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterArrayA(int hCounter, uint32* lpdwBufferSize, uint32* lpdwItemCount, PDH_RAW_COUNTER_ITEM_A* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterArrayW(int hCounter, uint32* lpdwBufferSize, uint32* lpdwItemCount, PDH_RAW_COUNTER_ITEM_W* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCalculateCounterFromRawValue(int hCounter, PDH_FMT dwFormat, PDH_RAW_COUNTER* rawValue1, PDH_RAW_COUNTER* rawValue2, PDH_FMT_COUNTERVALUE* fmtValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhComputeCounterStatistics(int hCounter, PDH_FMT dwFormat, uint32 dwFirstEntry, uint32 dwNumEntries, PDH_RAW_COUNTER* lpRawValueArray, PDH_STATISTICS* data);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterInfoW(int hCounter, BOOLEAN bRetrieveExplainText, uint32* pdwBufferSize, PDH_COUNTER_INFO_W* lpBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterInfoA(int hCounter, BOOLEAN bRetrieveExplainText, uint32* pdwBufferSize, PDH_COUNTER_INFO_A* lpBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetCounterScaleFactor(int hCounter, int32 lFactor);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhConnectMachineW(PWSTR szMachineName);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhConnectMachineA(PSTR szMachineName);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesW(PWSTR szDataSource, PWSTR mszMachineList, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesA(PSTR szDataSource, PSTR mszMachineList, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsW(PWSTR szDataSource, PWSTR szMachineName, PWSTR mszObjectList, uint32* pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsA(PSTR szDataSource, PSTR szMachineName, PSTR mszObjectList, uint32* pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR mszCounterList, uint32* pcchCounterListLength, PWSTR mszInstanceList, uint32* pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsA(PSTR szDataSource, PSTR szMachineName, PSTR szObjectName, PSTR mszCounterList, uint32* pcchCounterListLength, PSTR mszInstanceList, uint32* pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhMakeCounterPathW(PDH_COUNTER_PATH_ELEMENTS_W* pCounterPathElements, PWSTR szFullPathBuffer, uint32* pcchBufferSize, PDH_PATH_FLAGS dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhMakeCounterPathA(PDH_COUNTER_PATH_ELEMENTS_A* pCounterPathElements, PSTR szFullPathBuffer, uint32* pcchBufferSize, PDH_PATH_FLAGS dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseCounterPathW(PWSTR szFullPathBuffer, PDH_COUNTER_PATH_ELEMENTS_W* pCounterPathElements, uint32* pdwBufferSize, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseCounterPathA(PSTR szFullPathBuffer, PDH_COUNTER_PATH_ELEMENTS_A* pCounterPathElements, uint32* pdwBufferSize, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseInstanceNameW(PWSTR szInstanceString, PWSTR szInstanceName, uint32* pcchInstanceNameLength, PWSTR szParentName, uint32* pcchParentNameLength, uint32* lpIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseInstanceNameA(PSTR szInstanceString, PSTR szInstanceName, uint32* pcchInstanceNameLength, PSTR szParentName, uint32* pcchParentNameLength, uint32* lpIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathW(PWSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathA(PSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szDefaultObjectName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectA(PSTR szDataSource, PSTR szMachineName, PSTR szDefaultObjectName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR szDefaultCounterName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterA(PSTR szDataSource, PSTR szMachineName, PSTR szObjectName, PSTR szDefaultCounterName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersW(PDH_BROWSE_DLG_CONFIG_W* pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersA(PDH_BROWSE_DLG_CONFIG_A* pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandCounterPathW(PWSTR szWildCardPath, PWSTR mszExpandedPathList, uint32* pcchPathListLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandCounterPathA(PSTR szWildCardPath, PSTR mszExpandedPathList, uint32* pcchPathListLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfNameByIndexW(PWSTR szMachineName, uint32 dwNameIndex, PWSTR szNameBuffer, uint32* pcchNameBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfNameByIndexA(PSTR szMachineName, uint32 dwNameIndex, PSTR szNameBuffer, uint32* pcchNameBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfIndexByNameW(PWSTR szMachineName, PWSTR szNameBuffer, uint32* pdwIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfIndexByNameA(PSTR szMachineName, PSTR szNameBuffer, uint32* pdwIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathA(PSTR szDataSource, PSTR szWildCardPath, PSTR mszExpandedPathList, uint32* pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathW(PWSTR szDataSource, PWSTR szWildCardPath, PWSTR mszExpandedPathList, uint32* pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenLogW(PWSTR szLogFileName, PDH_LOG dwAccessFlags, PDH_LOG_TYPE* lpdwLogType, int hQuery, uint32 dwMaxSize, PWSTR szUserCaption, int* phLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenLogA(PSTR szLogFileName, PDH_LOG dwAccessFlags, PDH_LOG_TYPE* lpdwLogType, int hQuery, uint32 dwMaxSize, PSTR szUserCaption, int* phLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogW(int hLog, PWSTR szUserString);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogA(int hLog, PSTR szUserString);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogFileCatalog(int hLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetLogFileSize(int hLog, int64* llSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCloseLog(int hLog, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSelectDataSourceW(HWND hWndOwner, PDH_SELECT_DATA_SOURCE_FLAGS dwFlags, PWSTR szDataSource, uint32* pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSelectDataSourceA(HWND hWndOwner, PDH_SELECT_DATA_SOURCE_FLAGS dwFlags, PSTR szDataSource, uint32* pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PdhIsRealTimeQuery(int hQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetQueryTimeRange(int hQuery, PDH_TIME_INFO* pInfo);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeW(PWSTR szDataSource, uint32* pdwNumEntries, PDH_TIME_INFO* pInfo, uint32* pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeA(PSTR szDataSource, uint32* pdwNumEntries, PDH_TIME_INFO* pInfo, uint32* pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCollectQueryDataEx(int hQuery, uint32 dwIntervalTime, HANDLE hNewDataEvent);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhFormatFromRawValue(uint32 dwCounterType, PDH_FMT dwFormat, int64* pTimeBase, PDH_RAW_COUNTER* pRawValue1, PDH_RAW_COUNTER* pRawValue2, PDH_FMT_COUNTERVALUE* pFmtValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterTimeBase(int hCounter, int64* pTimeBase);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhReadRawLogRecord(int hLog, FILETIME ftRecord, PDH_RAW_LOG_RECORD* pRawLogRecord, uint32* pdwBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetDefaultRealTimeDataSource(REAL_TIME_DATA_SOURCE_ID_FLAGS dwDataSourceId);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBindInputDataSourceW(int* phDataSource, PWSTR LogFileNameList);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBindInputDataSourceA(int* phDataSource, PSTR LogFileNameList);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryH(int hDataSource, uint dwUserData, int* phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesHW(int hDataSource, PWSTR mszMachineList, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesHA(int hDataSource, PSTR mszMachineList, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsHW(int hDataSource, PWSTR szMachineName, PWSTR mszObjectList, uint32* pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsHA(int hDataSource, PSTR szMachineName, PSTR mszObjectList, uint32* pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsHW(int hDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR mszCounterList, uint32* pcchCounterListLength, PWSTR mszInstanceList, uint32* pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsHA(int hDataSource, PSTR szMachineName, PSTR szObjectName, PSTR mszCounterList, uint32* pcchCounterListLength, PSTR mszInstanceList, uint32* pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathHW(int hDataSource, PWSTR szWildCardPath, PWSTR mszExpandedPathList, uint32* pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathHA(int hDataSource, PSTR szWildCardPath, PSTR mszExpandedPathList, uint32* pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeH(int hDataSource, uint32* pdwNumEntries, PDH_TIME_INFO* pInfo, uint32* pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectHW(int hDataSource, PWSTR szMachineName, PWSTR szDefaultObjectName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectHA(int hDataSource, PSTR szMachineName, PSTR szDefaultObjectName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterHW(int hDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR szDefaultCounterName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterHA(int hDataSource, PSTR szMachineName, PSTR szObjectName, PSTR szDefaultCounterName, uint32* pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersHW(PDH_BROWSE_DLG_CONFIG_HW* pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersHA(PDH_BROWSE_DLG_CONFIG_HA* pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhVerifySQLDBW(PWSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhVerifySQLDBA(PSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCreateSQLTablesW(PWSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCreateSQLTablesA(PSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumLogSetNamesW(PWSTR szDataSource, PWSTR mszDataSetNameList, uint32* pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumLogSetNamesA(PSTR szDataSource, PSTR mszDataSetNameList, uint32* pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetLogSetGUID(int hLog, Guid* pGuid, int32* pRunId);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetLogSetRunID(int hLog, int32 RunId);
		
	}
}
