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
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IDataCollectorSet *self, IDataCollectorCollection** collectors) get_DataCollectors;
				public function HRESULT(IDataCollectorSet *self, uint32* seconds) get_Duration;
				public function HRESULT(IDataCollectorSet *self, uint32 seconds) put_Duration;
				public function HRESULT(IDataCollectorSet *self, BSTR* description) get_Description;
				public function HRESULT(IDataCollectorSet *self, BSTR description) put_Description;
				public function HRESULT(IDataCollectorSet *self, BSTR* Descr) get_DescriptionUnresolved;
				public function HRESULT(IDataCollectorSet *self, BSTR* DisplayName) get_DisplayName;
				public function HRESULT(IDataCollectorSet *self, BSTR DisplayName) put_DisplayName;
				public function HRESULT(IDataCollectorSet *self, BSTR* name) get_DisplayNameUnresolved;
				public function HRESULT(IDataCollectorSet *self, SAFEARRAY** keywords) get_Keywords;
				public function HRESULT(IDataCollectorSet *self, SAFEARRAY* keywords) put_Keywords;
				public function HRESULT(IDataCollectorSet *self, BSTR* path) get_LatestOutputLocation;
				public function HRESULT(IDataCollectorSet *self, BSTR path) put_LatestOutputLocation;
				public function HRESULT(IDataCollectorSet *self, BSTR* name) get_Name;
				public function HRESULT(IDataCollectorSet *self, BSTR* path) get_OutputLocation;
				public function HRESULT(IDataCollectorSet *self, BSTR* folder) get_RootPath;
				public function HRESULT(IDataCollectorSet *self, BSTR folder) put_RootPath;
				public function HRESULT(IDataCollectorSet *self, int16* segment) get_Segment;
				public function HRESULT(IDataCollectorSet *self, int16 segment) put_Segment;
				public function HRESULT(IDataCollectorSet *self, uint32* seconds) get_SegmentMaxDuration;
				public function HRESULT(IDataCollectorSet *self, uint32 seconds) put_SegmentMaxDuration;
				public function HRESULT(IDataCollectorSet *self, uint32* size) get_SegmentMaxSize;
				public function HRESULT(IDataCollectorSet *self, uint32 size) put_SegmentMaxSize;
				public function HRESULT(IDataCollectorSet *self, uint32* index) get_SerialNumber;
				public function HRESULT(IDataCollectorSet *self, uint32 index) put_SerialNumber;
				public function HRESULT(IDataCollectorSet *self, BSTR* server) get_Server;
				public function HRESULT(IDataCollectorSet *self, DataCollectorSetStatus* status) get_Status;
				public function HRESULT(IDataCollectorSet *self, BSTR* folder) get_Subdirectory;
				public function HRESULT(IDataCollectorSet *self, BSTR folder) put_Subdirectory;
				public function HRESULT(IDataCollectorSet *self, AutoPathFormat* format) get_SubdirectoryFormat;
				public function HRESULT(IDataCollectorSet *self, AutoPathFormat format) put_SubdirectoryFormat;
				public function HRESULT(IDataCollectorSet *self, BSTR* pattern) get_SubdirectoryFormatPattern;
				public function HRESULT(IDataCollectorSet *self, BSTR pattern) put_SubdirectoryFormatPattern;
				public function HRESULT(IDataCollectorSet *self, BSTR* task) get_Task;
				public function HRESULT(IDataCollectorSet *self, BSTR task) put_Task;
				public function HRESULT(IDataCollectorSet *self, int16* RunAsSelf) get_TaskRunAsSelf;
				public function HRESULT(IDataCollectorSet *self, int16 RunAsSelf) put_TaskRunAsSelf;
				public function HRESULT(IDataCollectorSet *self, BSTR* task) get_TaskArguments;
				public function HRESULT(IDataCollectorSet *self, BSTR task) put_TaskArguments;
				public function HRESULT(IDataCollectorSet *self, BSTR* UserText) get_TaskUserTextArguments;
				public function HRESULT(IDataCollectorSet *self, BSTR UserText) put_TaskUserTextArguments;
				public function HRESULT(IDataCollectorSet *self, IScheduleCollection** ppSchedules) get_Schedules;
				public function HRESULT(IDataCollectorSet *self, int16* enabled) get_SchedulesEnabled;
				public function HRESULT(IDataCollectorSet *self, int16 enabled) put_SchedulesEnabled;
				public function HRESULT(IDataCollectorSet *self, BSTR* user) get_UserAccount;
				public function HRESULT(IDataCollectorSet *self, BSTR* xml) get_Xml;
				public function HRESULT(IDataCollectorSet *self, BSTR* pbstrSecurity) get_Security;
				public function HRESULT(IDataCollectorSet *self, BSTR bstrSecurity) put_Security;
				public function HRESULT(IDataCollectorSet *self, int16* Stop) get_StopOnCompletion;
				public function HRESULT(IDataCollectorSet *self, int16 Stop) put_StopOnCompletion;
				public function HRESULT(IDataCollectorSet *self, IDataManager** DataManager) get_DataManager;
				public function HRESULT(IDataCollectorSet *self, BSTR user, BSTR password) SetCredentials;
				public function HRESULT(IDataCollectorSet *self, BSTR name, BSTR server) Query;
				public function HRESULT(IDataCollectorSet *self, BSTR name, BSTR server, CommitMode mode, IValueMap** validation) Commit;
				public function HRESULT(IDataCollectorSet *self) Delete;
				public function HRESULT(IDataCollectorSet *self, int16 Synchronous) Start;
				public function HRESULT(IDataCollectorSet *self, int16 Synchronous) Stop;
				public function HRESULT(IDataCollectorSet *self, BSTR xml, IValueMap** validation) SetXml;
				public function HRESULT(IDataCollectorSet *self, BSTR key, BSTR value) SetValue;
				public function HRESULT(IDataCollectorSet *self, BSTR key, BSTR* value) GetValue;
			}
		}
		[CRepr]
		public struct IDataManager : IDispatch
		{
			public const new Guid IID = .(0x03837541, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IDataManager *self, int16* pfEnabled) get_Enabled;
				public function HRESULT(IDataManager *self, int16 fEnabled) put_Enabled;
				public function HRESULT(IDataManager *self, int16* pfCheck) get_CheckBeforeRunning;
				public function HRESULT(IDataManager *self, int16 fCheck) put_CheckBeforeRunning;
				public function HRESULT(IDataManager *self, uint32* MinFreeDisk) get_MinFreeDisk;
				public function HRESULT(IDataManager *self, uint32 MinFreeDisk) put_MinFreeDisk;
				public function HRESULT(IDataManager *self, uint32* pulMaxSize) get_MaxSize;
				public function HRESULT(IDataManager *self, uint32 ulMaxSize) put_MaxSize;
				public function HRESULT(IDataManager *self, uint32* pulMaxFolderCount) get_MaxFolderCount;
				public function HRESULT(IDataManager *self, uint32 ulMaxFolderCount) put_MaxFolderCount;
				public function HRESULT(IDataManager *self, ResourcePolicy* pPolicy) get_ResourcePolicy;
				public function HRESULT(IDataManager *self, ResourcePolicy Policy) put_ResourcePolicy;
				public function HRESULT(IDataManager *self, IFolderActionCollection** Actions) get_FolderActions;
				public function HRESULT(IDataManager *self, BSTR* ReportSchema) get_ReportSchema;
				public function HRESULT(IDataManager *self, BSTR ReportSchema) put_ReportSchema;
				public function HRESULT(IDataManager *self, BSTR* pbstrFilename) get_ReportFileName;
				public function HRESULT(IDataManager *self, BSTR pbstrFilename) put_ReportFileName;
				public function HRESULT(IDataManager *self, BSTR* Filename) get_RuleTargetFileName;
				public function HRESULT(IDataManager *self, BSTR Filename) put_RuleTargetFileName;
				public function HRESULT(IDataManager *self, BSTR* pbstrFilename) get_EventsFileName;
				public function HRESULT(IDataManager *self, BSTR pbstrFilename) put_EventsFileName;
				public function HRESULT(IDataManager *self, BSTR* pbstrXml) get_Rules;
				public function HRESULT(IDataManager *self, BSTR bstrXml) put_Rules;
				public function HRESULT(IDataManager *self, DataManagerSteps Steps, BSTR bstrFolder, IValueMap** Errors) Run;
				public function HRESULT(IDataManager *self, BSTR CabFilename, BSTR DestinationPath) Extract;
			}
		}
		[CRepr]
		public struct IFolderAction : IDispatch
		{
			public const new Guid IID = .(0x03837543, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFolderAction *self, uint32* pulAge) get_Age;
				public function HRESULT(IFolderAction *self, uint32 ulAge) put_Age;
				public function HRESULT(IFolderAction *self, uint32* pulAge) get_Size;
				public function HRESULT(IFolderAction *self, uint32 ulAge) put_Size;
				public function HRESULT(IFolderAction *self, FolderActionSteps* Steps) get_Actions;
				public function HRESULT(IFolderAction *self, FolderActionSteps Steps) put_Actions;
				public function HRESULT(IFolderAction *self, BSTR* pbstrDestination) get_SendCabTo;
				public function HRESULT(IFolderAction *self, BSTR bstrDestination) put_SendCabTo;
			}
		}
		[CRepr]
		public struct IFolderActionCollection : IDispatch
		{
			public const new Guid IID = .(0x03837544, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFolderActionCollection *self, uint32* Count) get_Count;
				public function HRESULT(IFolderActionCollection *self, VARIANT Index, IFolderAction** Action) get_Item;
				public function HRESULT(IFolderActionCollection *self, IUnknown** Enum) get__NewEnum;
				public function HRESULT(IFolderActionCollection *self, IFolderAction* Action) Add;
				public function HRESULT(IFolderActionCollection *self, VARIANT Index) Remove;
				public function HRESULT(IFolderActionCollection *self) Clear;
				public function HRESULT(IFolderActionCollection *self, IFolderActionCollection* Actions) AddRange;
				public function HRESULT(IFolderActionCollection *self, IFolderAction** FolderAction) CreateFolderAction;
			}
		}
		[CRepr]
		public struct IDataCollector : IDispatch
		{
			public const new Guid IID = .(0x038374ff, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IDataCollector *self, IDataCollectorSet** group) get_DataCollectorSet;
				public function HRESULT(IDataCollector *self, IDataCollectorSet* group) put_DataCollectorSet;
				public function HRESULT(IDataCollector *self, DataCollectorType* type) get_DataCollectorType;
				public function HRESULT(IDataCollector *self, BSTR* name) get_FileName;
				public function HRESULT(IDataCollector *self, BSTR name) put_FileName;
				public function HRESULT(IDataCollector *self, AutoPathFormat* format) get_FileNameFormat;
				public function HRESULT(IDataCollector *self, AutoPathFormat format) put_FileNameFormat;
				public function HRESULT(IDataCollector *self, BSTR* pattern) get_FileNameFormatPattern;
				public function HRESULT(IDataCollector *self, BSTR pattern) put_FileNameFormatPattern;
				public function HRESULT(IDataCollector *self, BSTR* path) get_LatestOutputLocation;
				public function HRESULT(IDataCollector *self, BSTR path) put_LatestOutputLocation;
				public function HRESULT(IDataCollector *self, int16* @append) get_LogAppend;
				public function HRESULT(IDataCollector *self, int16 @append) put_LogAppend;
				public function HRESULT(IDataCollector *self, int16* circular) get_LogCircular;
				public function HRESULT(IDataCollector *self, int16 circular) put_LogCircular;
				public function HRESULT(IDataCollector *self, int16* overwrite) get_LogOverwrite;
				public function HRESULT(IDataCollector *self, int16 overwrite) put_LogOverwrite;
				public function HRESULT(IDataCollector *self, BSTR* name) get_Name;
				public function HRESULT(IDataCollector *self, BSTR name) put_Name;
				public function HRESULT(IDataCollector *self, BSTR* path) get_OutputLocation;
				public function HRESULT(IDataCollector *self, int32* index) get_Index;
				public function HRESULT(IDataCollector *self, int32 index) put_Index;
				public function HRESULT(IDataCollector *self, BSTR* Xml) get_Xml;
				public function HRESULT(IDataCollector *self, BSTR Xml, IValueMap** Validation) SetXml;
				public function HRESULT(IDataCollector *self, int16 Latest, BSTR* Location) CreateOutputLocation;
			}
		}
		[CRepr]
		public struct IPerformanceCounterDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837506, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public function HRESULT(IPerformanceCounterDataCollector *self, BSTR* dsn) get_DataSourceName;
				public function HRESULT(IPerformanceCounterDataCollector *self, BSTR dsn) put_DataSourceName;
				public function HRESULT(IPerformanceCounterDataCollector *self, SAFEARRAY** counters) get_PerformanceCounters;
				public function HRESULT(IPerformanceCounterDataCollector *self, SAFEARRAY* counters) put_PerformanceCounters;
				public function HRESULT(IPerformanceCounterDataCollector *self, FileFormat* format) get_LogFileFormat;
				public function HRESULT(IPerformanceCounterDataCollector *self, FileFormat format) put_LogFileFormat;
				public function HRESULT(IPerformanceCounterDataCollector *self, uint32* interval) get_SampleInterval;
				public function HRESULT(IPerformanceCounterDataCollector *self, uint32 interval) put_SampleInterval;
				public function HRESULT(IPerformanceCounterDataCollector *self, uint32* records) get_SegmentMaxRecords;
				public function HRESULT(IPerformanceCounterDataCollector *self, uint32 records) put_SegmentMaxRecords;
			}
		}
		[CRepr]
		public struct ITraceDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383750b, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public function HRESULT(ITraceDataCollector *self, uint32* size) get_BufferSize;
				public function HRESULT(ITraceDataCollector *self, uint32 size) put_BufferSize;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_BuffersLost;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_BuffersLost;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_BuffersWritten;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_BuffersWritten;
				public function HRESULT(ITraceDataCollector *self, ClockType* clock) get_ClockType;
				public function HRESULT(ITraceDataCollector *self, ClockType clock) put_ClockType;
				public function HRESULT(ITraceDataCollector *self, uint32* events) get_EventsLost;
				public function HRESULT(ITraceDataCollector *self, uint32 events) put_EventsLost;
				public function HRESULT(ITraceDataCollector *self, uint32* mode) get_ExtendedModes;
				public function HRESULT(ITraceDataCollector *self, uint32 mode) put_ExtendedModes;
				public function HRESULT(ITraceDataCollector *self, uint32* seconds) get_FlushTimer;
				public function HRESULT(ITraceDataCollector *self, uint32 seconds) put_FlushTimer;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_FreeBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_FreeBuffers;
				public function HRESULT(ITraceDataCollector *self, Guid* guid) get_Guid;
				public function HRESULT(ITraceDataCollector *self, Guid guid) put_Guid;
				public function HRESULT(ITraceDataCollector *self, int16* kernel) get_IsKernelTrace;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_MaximumBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_MaximumBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_MinimumBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_MinimumBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_NumberOfBuffers;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_NumberOfBuffers;
				public function HRESULT(ITraceDataCollector *self, int16* allocate) get_PreallocateFile;
				public function HRESULT(ITraceDataCollector *self, int16 allocate) put_PreallocateFile;
				public function HRESULT(ITraceDataCollector *self, int16* process) get_ProcessMode;
				public function HRESULT(ITraceDataCollector *self, int16 process) put_ProcessMode;
				public function HRESULT(ITraceDataCollector *self, uint32* buffers) get_RealTimeBuffersLost;
				public function HRESULT(ITraceDataCollector *self, uint32 buffers) put_RealTimeBuffersLost;
				public function HRESULT(ITraceDataCollector *self, uint64* id) get_SessionId;
				public function HRESULT(ITraceDataCollector *self, uint64 id) put_SessionId;
				public function HRESULT(ITraceDataCollector *self, BSTR* name) get_SessionName;
				public function HRESULT(ITraceDataCollector *self, BSTR name) put_SessionName;
				public function HRESULT(ITraceDataCollector *self, uint32* tid) get_SessionThreadId;
				public function HRESULT(ITraceDataCollector *self, uint32 tid) put_SessionThreadId;
				public function HRESULT(ITraceDataCollector *self, StreamMode* mode) get_StreamMode;
				public function HRESULT(ITraceDataCollector *self, StreamMode mode) put_StreamMode;
				public function HRESULT(ITraceDataCollector *self, ITraceDataProviderCollection** providers) get_TraceDataProviders;
			}
		}
		[CRepr]
		public struct IConfigurationDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837514, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public function HRESULT(IConfigurationDataCollector *self, uint32* count) get_FileMaxCount;
				public function HRESULT(IConfigurationDataCollector *self, uint32 count) put_FileMaxCount;
				public function HRESULT(IConfigurationDataCollector *self, uint32* depth) get_FileMaxRecursiveDepth;
				public function HRESULT(IConfigurationDataCollector *self, uint32 depth) put_FileMaxRecursiveDepth;
				public function HRESULT(IConfigurationDataCollector *self, uint32* size) get_FileMaxTotalSize;
				public function HRESULT(IConfigurationDataCollector *self, uint32 size) put_FileMaxTotalSize;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** Files) get_Files;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* Files) put_Files;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** Queries) get_ManagementQueries;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* Queries) put_ManagementQueries;
				public function HRESULT(IConfigurationDataCollector *self, int16* network) get_QueryNetworkAdapters;
				public function HRESULT(IConfigurationDataCollector *self, int16 network) put_QueryNetworkAdapters;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY** query) get_RegistryKeys;
				public function HRESULT(IConfigurationDataCollector *self, SAFEARRAY* query) put_RegistryKeys;
				public function HRESULT(IConfigurationDataCollector *self, uint32* depth) get_RegistryMaxRecursiveDepth;
				public function HRESULT(IConfigurationDataCollector *self, uint32 depth) put_RegistryMaxRecursiveDepth;
				public function HRESULT(IConfigurationDataCollector *self, BSTR* FileName) get_SystemStateFile;
				public function HRESULT(IConfigurationDataCollector *self, BSTR FileName) put_SystemStateFile;
			}
		}
		[CRepr]
		public struct IAlertDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837516, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public function HRESULT(IAlertDataCollector *self, SAFEARRAY** alerts) get_AlertThresholds;
				public function HRESULT(IAlertDataCollector *self, SAFEARRAY* alerts) put_AlertThresholds;
				public function HRESULT(IAlertDataCollector *self, int16* log) get_EventLog;
				public function HRESULT(IAlertDataCollector *self, int16 log) put_EventLog;
				public function HRESULT(IAlertDataCollector *self, uint32* interval) get_SampleInterval;
				public function HRESULT(IAlertDataCollector *self, uint32 interval) put_SampleInterval;
				public function HRESULT(IAlertDataCollector *self, BSTR* task) get_Task;
				public function HRESULT(IAlertDataCollector *self, BSTR task) put_Task;
				public function HRESULT(IAlertDataCollector *self, int16* RunAsSelf) get_TaskRunAsSelf;
				public function HRESULT(IAlertDataCollector *self, int16 RunAsSelf) put_TaskRunAsSelf;
				public function HRESULT(IAlertDataCollector *self, BSTR* task) get_TaskArguments;
				public function HRESULT(IAlertDataCollector *self, BSTR task) put_TaskArguments;
				public function HRESULT(IAlertDataCollector *self, BSTR* task) get_TaskUserTextArguments;
				public function HRESULT(IAlertDataCollector *self, BSTR task) put_TaskUserTextArguments;
				public function HRESULT(IAlertDataCollector *self, BSTR* name) get_TriggerDataCollectorSet;
				public function HRESULT(IAlertDataCollector *self, BSTR name) put_TriggerDataCollectorSet;
			}
		}
		[CRepr]
		public struct IApiTracingDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383751a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public function HRESULT(IApiTracingDataCollector *self, int16* logapinames) get_LogApiNamesOnly;
				public function HRESULT(IApiTracingDataCollector *self, int16 logapinames) put_LogApiNamesOnly;
				public function HRESULT(IApiTracingDataCollector *self, int16* logrecursively) get_LogApisRecursively;
				public function HRESULT(IApiTracingDataCollector *self, int16 logrecursively) put_LogApisRecursively;
				public function HRESULT(IApiTracingDataCollector *self, BSTR* exepath) get_ExePath;
				public function HRESULT(IApiTracingDataCollector *self, BSTR exepath) put_ExePath;
				public function HRESULT(IApiTracingDataCollector *self, BSTR* logfilepath) get_LogFilePath;
				public function HRESULT(IApiTracingDataCollector *self, BSTR logfilepath) put_LogFilePath;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** includemodules) get_IncludeModules;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* includemodules) put_IncludeModules;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** includeapis) get_IncludeApis;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* includeapis) put_IncludeApis;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY** excludeapis) get_ExcludeApis;
				public function HRESULT(IApiTracingDataCollector *self, SAFEARRAY* excludeapis) put_ExcludeApis;
			}
		}
		[CRepr]
		public struct IDataCollectorCollection : IDispatch
		{
			public const new Guid IID = .(0x03837502, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IDataCollectorCollection *self, int32* retVal) get_Count;
				public function HRESULT(IDataCollectorCollection *self, VARIANT index, IDataCollector** collector) get_Item;
				public function HRESULT(IDataCollectorCollection *self, IUnknown** retVal) get__NewEnum;
				public function HRESULT(IDataCollectorCollection *self, IDataCollector* collector) Add;
				public function HRESULT(IDataCollectorCollection *self, VARIANT collector) Remove;
				public function HRESULT(IDataCollectorCollection *self) Clear;
				public function HRESULT(IDataCollectorCollection *self, IDataCollectorCollection* collectors) AddRange;
				public function HRESULT(IDataCollectorCollection *self, BSTR bstrXml, IValueMap** pValidation, IDataCollector** pCollector) CreateDataCollectorFromXml;
				public function HRESULT(IDataCollectorCollection *self, DataCollectorType Type, IDataCollector** Collector) CreateDataCollector;
			}
		}
		[CRepr]
		public struct IDataCollectorSetCollection : IDispatch
		{
			public const new Guid IID = .(0x03837524, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IDataCollectorSetCollection *self, int32* retVal) get_Count;
				public function HRESULT(IDataCollectorSetCollection *self, VARIANT index, IDataCollectorSet** set) get_Item;
				public function HRESULT(IDataCollectorSetCollection *self, IUnknown** retVal) get__NewEnum;
				public function HRESULT(IDataCollectorSetCollection *self, IDataCollectorSet* set) Add;
				public function HRESULT(IDataCollectorSetCollection *self, VARIANT set) Remove;
				public function HRESULT(IDataCollectorSetCollection *self) Clear;
				public function HRESULT(IDataCollectorSetCollection *self, IDataCollectorSetCollection* sets) AddRange;
				public function HRESULT(IDataCollectorSetCollection *self, BSTR server, BSTR filter) GetDataCollectorSets;
			}
		}
		[CRepr]
		public struct ITraceDataProvider : IDispatch
		{
			public const new Guid IID = .(0x03837512, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITraceDataProvider *self, BSTR* name) get_DisplayName;
				public function HRESULT(ITraceDataProvider *self, BSTR name) put_DisplayName;
				public function HRESULT(ITraceDataProvider *self, Guid* guid) get_Guid;
				public function HRESULT(ITraceDataProvider *self, Guid guid) put_Guid;
				public function HRESULT(ITraceDataProvider *self, IValueMap** ppLevel) get_Level;
				public function HRESULT(ITraceDataProvider *self, IValueMap** ppKeywords) get_KeywordsAny;
				public function HRESULT(ITraceDataProvider *self, IValueMap** ppKeywords) get_KeywordsAll;
				public function HRESULT(ITraceDataProvider *self, IValueMap** ppProperties) get_Properties;
				public function HRESULT(ITraceDataProvider *self, int16* FilterEnabled) get_FilterEnabled;
				public function HRESULT(ITraceDataProvider *self, int16 FilterEnabled) put_FilterEnabled;
				public function HRESULT(ITraceDataProvider *self, uint32* pulType) get_FilterType;
				public function HRESULT(ITraceDataProvider *self, uint32 ulType) put_FilterType;
				public function HRESULT(ITraceDataProvider *self, SAFEARRAY** ppData) get_FilterData;
				public function HRESULT(ITraceDataProvider *self, SAFEARRAY* pData) put_FilterData;
				public function HRESULT(ITraceDataProvider *self, BSTR bstrName, BSTR bstrServer) Query;
				public function HRESULT(ITraceDataProvider *self, IDispatch* pFrom) Resolve;
				public function HRESULT(ITraceDataProvider *self, BSTR Sddl) SetSecurity;
				public function HRESULT(ITraceDataProvider *self, uint32 SecurityInfo, BSTR* Sddl) GetSecurity;
				public function HRESULT(ITraceDataProvider *self, IValueMap** Processes) GetRegisteredProcesses;
			}
		}
		[CRepr]
		public struct ITraceDataProviderCollection : IDispatch
		{
			public const new Guid IID = .(0x03837510, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITraceDataProviderCollection *self, int32* retVal) get_Count;
				public function HRESULT(ITraceDataProviderCollection *self, VARIANT index, ITraceDataProvider** ppProvider) get_Item;
				public function HRESULT(ITraceDataProviderCollection *self, IUnknown** retVal) get__NewEnum;
				public function HRESULT(ITraceDataProviderCollection *self, ITraceDataProvider* pProvider) Add;
				public function HRESULT(ITraceDataProviderCollection *self, VARIANT vProvider) Remove;
				public function HRESULT(ITraceDataProviderCollection *self) Clear;
				public function HRESULT(ITraceDataProviderCollection *self, ITraceDataProviderCollection* providers) AddRange;
				public function HRESULT(ITraceDataProviderCollection *self, ITraceDataProvider** Provider) CreateTraceDataProvider;
				public function HRESULT(ITraceDataProviderCollection *self, BSTR server) GetTraceDataProviders;
				public function HRESULT(ITraceDataProviderCollection *self, BSTR Server, uint32 Pid) GetTraceDataProvidersByProcess;
			}
		}
		[CRepr]
		public struct ISchedule : IDispatch
		{
			public const new Guid IID = .(0x0383753a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ISchedule *self, VARIANT* start) get_StartDate;
				public function HRESULT(ISchedule *self, VARIANT start) put_StartDate;
				public function HRESULT(ISchedule *self, VARIANT* end) get_EndDate;
				public function HRESULT(ISchedule *self, VARIANT end) put_EndDate;
				public function HRESULT(ISchedule *self, VARIANT* start) get_StartTime;
				public function HRESULT(ISchedule *self, VARIANT start) put_StartTime;
				public function HRESULT(ISchedule *self, WeekDays* days) get_Days;
				public function HRESULT(ISchedule *self, WeekDays days) put_Days;
			}
		}
		[CRepr]
		public struct IScheduleCollection : IDispatch
		{
			public const new Guid IID = .(0x0383753d, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IScheduleCollection *self, int32* retVal) get_Count;
				public function HRESULT(IScheduleCollection *self, VARIANT index, ISchedule** ppSchedule) get_Item;
				public function HRESULT(IScheduleCollection *self, IUnknown** ienum) get__NewEnum;
				public function HRESULT(IScheduleCollection *self, ISchedule* pSchedule) Add;
				public function HRESULT(IScheduleCollection *self, VARIANT vSchedule) Remove;
				public function HRESULT(IScheduleCollection *self) Clear;
				public function HRESULT(IScheduleCollection *self, IScheduleCollection* pSchedules) AddRange;
				public function HRESULT(IScheduleCollection *self, ISchedule** Schedule) CreateSchedule;
			}
		}
		[CRepr]
		public struct IValueMapItem : IDispatch
		{
			public const new Guid IID = .(0x03837533, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IValueMapItem *self, BSTR* description) get_Description;
				public function HRESULT(IValueMapItem *self, BSTR description) put_Description;
				public function HRESULT(IValueMapItem *self, int16* enabled) get_Enabled;
				public function HRESULT(IValueMapItem *self, int16 enabled) put_Enabled;
				public function HRESULT(IValueMapItem *self, BSTR* key) get_Key;
				public function HRESULT(IValueMapItem *self, BSTR key) put_Key;
				public function HRESULT(IValueMapItem *self, VARIANT* Value) get_Value;
				public function HRESULT(IValueMapItem *self, VARIANT Value) put_Value;
				public function HRESULT(IValueMapItem *self, ValueMapType* type) get_ValueMapType;
				public function HRESULT(IValueMapItem *self, ValueMapType type) put_ValueMapType;
			}
		}
		[CRepr]
		public struct IValueMap : IDispatch
		{
			public const new Guid IID = .(0x03837534, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IValueMap *self, int32* retVal) get_Count;
				public function HRESULT(IValueMap *self, VARIANT index, IValueMapItem** value) get_Item;
				public function HRESULT(IValueMap *self, IUnknown** retVal) get__NewEnum;
				public function HRESULT(IValueMap *self, BSTR* description) get_Description;
				public function HRESULT(IValueMap *self, BSTR description) put_Description;
				public function HRESULT(IValueMap *self, VARIANT* Value) get_Value;
				public function HRESULT(IValueMap *self, VARIANT Value) put_Value;
				public function HRESULT(IValueMap *self, ValueMapType* type) get_ValueMapType;
				public function HRESULT(IValueMap *self, ValueMapType type) put_ValueMapType;
				public function HRESULT(IValueMap *self, VARIANT value) Add;
				public function HRESULT(IValueMap *self, VARIANT value) Remove;
				public function HRESULT(IValueMap *self) Clear;
				public function HRESULT(IValueMap *self, IValueMap* map) AddRange;
				public function HRESULT(IValueMap *self, IValueMapItem** Item) CreateValueMapItem;
			}
		}
		[CRepr]
		public struct ICounterItem : IUnknown
		{
			public const new Guid IID = .(0x771a9520, 0xee28, 0x11ce, 0x94, 0x1e, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICounterItem *self, double* pdblValue) get_Value;
				public function HRESULT(ICounterItem *self, uint32 Color) put_Color;
				public function HRESULT(ICounterItem *self, uint32* pColor) get_Color;
				public function HRESULT(ICounterItem *self, int32 iWidth) put_Width;
				public function HRESULT(ICounterItem *self, int32* piValue) get_Width;
				public function HRESULT(ICounterItem *self, int32 iLineStyle) put_LineStyle;
				public function HRESULT(ICounterItem *self, int32* piValue) get_LineStyle;
				public function HRESULT(ICounterItem *self, int32 iScale) put_ScaleFactor;
				public function HRESULT(ICounterItem *self, int32* piValue) get_ScaleFactor;
				public function HRESULT(ICounterItem *self, BSTR* pstrValue) get_Path;
				public function HRESULT(ICounterItem *self, double* Value, int32* Status) GetValue;
				public function HRESULT(ICounterItem *self, double* Max, double* Min, double* Avg, int32* Status) GetStatistics;
			}
		}
		[CRepr]
		public struct ICounterItem2 : ICounterItem
		{
			public const new Guid IID = .(0xeefcd4e1, 0xea1c, 0x4435, 0xb7, 0xf4, 0xe3, 0x41, 0xba, 0x03, 0xb4, 0xf9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ICounterItem.VTable
			{
				public function HRESULT(ICounterItem2 *self, int16 bState) put_Selected;
				public function HRESULT(ICounterItem2 *self, int16* pbState) get_Selected;
				public function HRESULT(ICounterItem2 *self, int16 bState) put_Visible;
				public function HRESULT(ICounterItem2 *self, int16* pbState) get_Visible;
				public function HRESULT(ICounterItem2 *self, int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct _ICounterItemUnion : IUnknown
		{
			public const new Guid IID = .(0xde1a6b74, 0x9182, 0x4c41, 0x8e, 0x2c, 0x24, 0xc2, 0xcd, 0x30, 0xee, 0x83);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(_ICounterItemUnion *self, double* pdblValue) get_Value;
				public function HRESULT(_ICounterItemUnion *self, uint32 Color) put_Color;
				public function HRESULT(_ICounterItemUnion *self, uint32* pColor) get_Color;
				public function HRESULT(_ICounterItemUnion *self, int32 iWidth) put_Width;
				public function HRESULT(_ICounterItemUnion *self, int32* piValue) get_Width;
				public function HRESULT(_ICounterItemUnion *self, int32 iLineStyle) put_LineStyle;
				public function HRESULT(_ICounterItemUnion *self, int32* piValue) get_LineStyle;
				public function HRESULT(_ICounterItemUnion *self, int32 iScale) put_ScaleFactor;
				public function HRESULT(_ICounterItemUnion *self, int32* piValue) get_ScaleFactor;
				public function HRESULT(_ICounterItemUnion *self, BSTR* pstrValue) get_Path;
				public function HRESULT(_ICounterItemUnion *self, double* Value, int32* Status) GetValue;
				public function HRESULT(_ICounterItemUnion *self, double* Max, double* Min, double* Avg, int32* Status) GetStatistics;
				public function HRESULT(_ICounterItemUnion *self, int16 bState) put_Selected;
				public function HRESULT(_ICounterItemUnion *self, int16* pbState) get_Selected;
				public function HRESULT(_ICounterItemUnion *self, int16 bState) put_Visible;
				public function HRESULT(_ICounterItemUnion *self, int16* pbState) get_Visible;
				public function HRESULT(_ICounterItemUnion *self, int32 iIndex, SysmonDataType iWhich, VARIANT* pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct DICounterItem : IDispatch
		{
			public const new Guid IID = .(0xc08c4ff2, 0x0e2e, 0x11cf, 0x94, 0x2c, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ICounters : IDispatch
		{
			public const new Guid IID = .(0x79167962, 0x28fc, 0x11cf, 0x94, 0x2f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ICounters *self, int32* pLong) get_Count;
				public function HRESULT(ICounters *self, IUnknown** ppIunk) get__NewEnum;
				public function HRESULT(ICounters *self, VARIANT index, DICounterItem** ppI) get_Item;
				public function HRESULT(ICounters *self, BSTR pathname, DICounterItem** ppI) Add;
				public function HRESULT(ICounters *self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ILogFileItem : IUnknown
		{
			public const new Guid IID = .(0xd6b518dd, 0x05c7, 0x418a, 0x89, 0xe6, 0x4f, 0x9c, 0xe8, 0xc6, 0x84, 0x1e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ILogFileItem *self, BSTR* pstrValue) get_Path;
			}
		}
		[CRepr]
		public struct DILogFileItem : IDispatch
		{
			public const new Guid IID = .(0x8d093ffc, 0xf777, 0x4917, 0x82, 0xd1, 0x83, 0x3f, 0xbc, 0x54, 0xc5, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ILogFiles : IDispatch
		{
			public const new Guid IID = .(0x6a2a97e6, 0x6851, 0x41ea, 0x87, 0xad, 0x2a, 0x82, 0x25, 0x33, 0x58, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ILogFiles *self, int32* pLong) get_Count;
				public function HRESULT(ILogFiles *self, IUnknown** ppIunk) get__NewEnum;
				public function HRESULT(ILogFiles *self, VARIANT index, DILogFileItem** ppI) get_Item;
				public function HRESULT(ILogFiles *self, BSTR pathname, DILogFileItem** ppI) Add;
				public function HRESULT(ILogFiles *self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ISystemMonitor : IUnknown
		{
			public const new Guid IID = .(0x194eb241, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISystemMonitor *self, int32* iAppearance) get_Appearance;
				public function HRESULT(ISystemMonitor *self, int32 iAppearance) put_Appearance;
				public function HRESULT(ISystemMonitor *self, uint32* pColor) get_BackColor;
				public function HRESULT(ISystemMonitor *self, uint32 Color) put_BackColor;
				public function HRESULT(ISystemMonitor *self, int32* iBorderStyle) get_BorderStyle;
				public function HRESULT(ISystemMonitor *self, int32 iBorderStyle) put_BorderStyle;
				public function HRESULT(ISystemMonitor *self, uint32* pColor) get_ForeColor;
				public function HRESULT(ISystemMonitor *self, uint32 Color) put_ForeColor;
				public function HRESULT(ISystemMonitor *self, IFontDisp** ppFont) get_Font;
				public function HRESULT(ISystemMonitor *self, IFontDisp* pFont) putref_Font;
				public function HRESULT(ISystemMonitor *self, ICounters** ppICounters) get_Counters;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowVerticalGrid;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowVerticalGrid;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowHorizontalGrid;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowHorizontalGrid;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowLegend;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowLegend;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowScaleLabels;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowScaleLabels;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowValueBar;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowValueBar;
				public function HRESULT(ISystemMonitor *self, int32 iValue) put_MaximumScale;
				public function HRESULT(ISystemMonitor *self, int32* piValue) get_MaximumScale;
				public function HRESULT(ISystemMonitor *self, int32 iValue) put_MinimumScale;
				public function HRESULT(ISystemMonitor *self, int32* piValue) get_MinimumScale;
				public function HRESULT(ISystemMonitor *self, float fValue) put_UpdateInterval;
				public function HRESULT(ISystemMonitor *self, float* pfValue) get_UpdateInterval;
				public function HRESULT(ISystemMonitor *self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public function HRESULT(ISystemMonitor *self, DisplayTypeConstants* peDisplayType) get_DisplayType;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ManualUpdate;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ManualUpdate;
				public function HRESULT(ISystemMonitor *self, BSTR bsTitle) put_GraphTitle;
				public function HRESULT(ISystemMonitor *self, BSTR* pbsTitle) get_GraphTitle;
				public function HRESULT(ISystemMonitor *self, BSTR bsTitle) put_YAxisLabel;
				public function HRESULT(ISystemMonitor *self, BSTR* pbsTitle) get_YAxisLabel;
				public function HRESULT(ISystemMonitor *self) CollectSample;
				public function HRESULT(ISystemMonitor *self) UpdateGraph;
				public function HRESULT(ISystemMonitor *self) BrowseCounters;
				public function HRESULT(ISystemMonitor *self) DisplayProperties;
				public function HRESULT(ISystemMonitor *self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public function HRESULT(ISystemMonitor *self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public function HRESULT(ISystemMonitor *self, ICounterItem* pCtr) DeleteCounter;
				public function HRESULT(ISystemMonitor *self, uint32* pColor) get_BackColorCtl;
				public function HRESULT(ISystemMonitor *self, uint32 Color) put_BackColorCtl;
				public function HRESULT(ISystemMonitor *self, BSTR bsFileName) put_LogFileName;
				public function HRESULT(ISystemMonitor *self, BSTR* bsFileName) get_LogFileName;
				public function HRESULT(ISystemMonitor *self, double StartTime) put_LogViewStart;
				public function HRESULT(ISystemMonitor *self, double* StartTime) get_LogViewStart;
				public function HRESULT(ISystemMonitor *self, double StopTime) put_LogViewStop;
				public function HRESULT(ISystemMonitor *self, double* StopTime) get_LogViewStop;
				public function HRESULT(ISystemMonitor *self, uint32* pColor) get_GridColor;
				public function HRESULT(ISystemMonitor *self, uint32 Color) put_GridColor;
				public function HRESULT(ISystemMonitor *self, uint32* pColor) get_TimeBarColor;
				public function HRESULT(ISystemMonitor *self, uint32 Color) put_TimeBarColor;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_Highlight;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_Highlight;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ShowToolbar;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ShowToolbar;
				public function HRESULT(ISystemMonitor *self) Paste;
				public function HRESULT(ISystemMonitor *self) Copy;
				public function HRESULT(ISystemMonitor *self) Reset;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_ReadOnly;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_ReadOnly;
				public function HRESULT(ISystemMonitor *self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public function HRESULT(ISystemMonitor *self, ReportValueTypeConstants* peReportValueType) get_ReportValueType;
				public function HRESULT(ISystemMonitor *self, int16 bState) put_MonitorDuplicateInstances;
				public function HRESULT(ISystemMonitor *self, int16* pbState) get_MonitorDuplicateInstances;
				public function HRESULT(ISystemMonitor *self, int32 iValue) put_DisplayFilter;
				public function HRESULT(ISystemMonitor *self, int32* piValue) get_DisplayFilter;
				public function HRESULT(ISystemMonitor *self, ILogFiles** ppILogFiles) get_LogFiles;
				public function HRESULT(ISystemMonitor *self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public function HRESULT(ISystemMonitor *self, DataSourceTypeConstants* peDataSourceType) get_DataSourceType;
				public function HRESULT(ISystemMonitor *self, BSTR bsSqlDsnName) put_SqlDsnName;
				public function HRESULT(ISystemMonitor *self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public function HRESULT(ISystemMonitor *self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public function HRESULT(ISystemMonitor *self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
			}
		}
		[CRepr]
		public struct ISystemMonitor2 : ISystemMonitor
		{
			public const new Guid IID = .(0x08e3206a, 0x5fd2, 0x4fde, 0xa8, 0xa5, 0x8c, 0xb3, 0xb6, 0x3d, 0x26, 0x77);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISystemMonitor.VTable
			{
				public function HRESULT(ISystemMonitor2 *self, int16 bState) put_EnableDigitGrouping;
				public function HRESULT(ISystemMonitor2 *self, int16* pbState) get_EnableDigitGrouping;
				public function HRESULT(ISystemMonitor2 *self, int16 bState) put_EnableToolTips;
				public function HRESULT(ISystemMonitor2 *self, int16* pbState) get_EnableToolTips;
				public function HRESULT(ISystemMonitor2 *self, int16 bState) put_ShowTimeAxisLabels;
				public function HRESULT(ISystemMonitor2 *self, int16* pbState) get_ShowTimeAxisLabels;
				public function HRESULT(ISystemMonitor2 *self, int16 bScroll) put_ChartScroll;
				public function HRESULT(ISystemMonitor2 *self, int16* pbScroll) get_ChartScroll;
				public function HRESULT(ISystemMonitor2 *self, int32 iNewCount) put_DataPointCount;
				public function HRESULT(ISystemMonitor2 *self, int32* piDataPointCount) get_DataPointCount;
				public function HRESULT(ISystemMonitor2 *self, int16 bSelectedCountersOnly) ScaleToFit;
				public function HRESULT(ISystemMonitor2 *self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public function HRESULT(ISystemMonitor2 *self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public function HRESULT(ISystemMonitor2 *self) ClearData;
				public function HRESULT(ISystemMonitor2 *self, double* pDate) get_LogSourceStartTime;
				public function HRESULT(ISystemMonitor2 *self, double* pDate) get_LogSourceStopTime;
				public function HRESULT(ISystemMonitor2 *self, double StartTime, double StopTime) SetLogViewRange;
				public function HRESULT(ISystemMonitor2 *self, double* StartTime, double* StopTime) GetLogViewRange;
				public function HRESULT(ISystemMonitor2 *self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public function HRESULT(ISystemMonitor2 *self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct _ISystemMonitorUnion : IUnknown
		{
			public const new Guid IID = .(0xc8a77338, 0x265f, 0x4de5, 0xaa, 0x25, 0xc7, 0xda, 0x1c, 0xe5, 0xa8, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(_ISystemMonitorUnion *self, int32* iAppearance) get_Appearance;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iAppearance) put_Appearance;
				public function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_BackColor;
				public function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_BackColor;
				public function HRESULT(_ISystemMonitorUnion *self, int32* iBorderStyle) get_BorderStyle;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iBorderStyle) put_BorderStyle;
				public function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_ForeColor;
				public function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_ForeColor;
				public function HRESULT(_ISystemMonitorUnion *self, IFontDisp** ppFont) get_Font;
				public function HRESULT(_ISystemMonitorUnion *self, IFontDisp* pFont) putref_Font;
				public function HRESULT(_ISystemMonitorUnion *self, ICounters** ppICounters) get_Counters;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowVerticalGrid;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowVerticalGrid;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowHorizontalGrid;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowHorizontalGrid;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowLegend;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowLegend;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowScaleLabels;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowScaleLabels;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowValueBar;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowValueBar;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_MaximumScale;
				public function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_MaximumScale;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_MinimumScale;
				public function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_MinimumScale;
				public function HRESULT(_ISystemMonitorUnion *self, float fValue) put_UpdateInterval;
				public function HRESULT(_ISystemMonitorUnion *self, float* pfValue) get_UpdateInterval;
				public function HRESULT(_ISystemMonitorUnion *self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public function HRESULT(_ISystemMonitorUnion *self, DisplayTypeConstants* peDisplayType) get_DisplayType;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ManualUpdate;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ManualUpdate;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsTitle) put_GraphTitle;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR* pbsTitle) get_GraphTitle;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsTitle) put_YAxisLabel;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR* pbsTitle) get_YAxisLabel;
				public function HRESULT(_ISystemMonitorUnion *self) CollectSample;
				public function HRESULT(_ISystemMonitorUnion *self) UpdateGraph;
				public function HRESULT(_ISystemMonitorUnion *self) BrowseCounters;
				public function HRESULT(_ISystemMonitorUnion *self) DisplayProperties;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public function HRESULT(_ISystemMonitorUnion *self, ICounterItem* pCtr) DeleteCounter;
				public function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_BackColorCtl;
				public function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_BackColorCtl;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsFileName) put_LogFileName;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR* bsFileName) get_LogFileName;
				public function HRESULT(_ISystemMonitorUnion *self, double StartTime) put_LogViewStart;
				public function HRESULT(_ISystemMonitorUnion *self, double* StartTime) get_LogViewStart;
				public function HRESULT(_ISystemMonitorUnion *self, double StopTime) put_LogViewStop;
				public function HRESULT(_ISystemMonitorUnion *self, double* StopTime) get_LogViewStop;
				public function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_GridColor;
				public function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_GridColor;
				public function HRESULT(_ISystemMonitorUnion *self, uint32* pColor) get_TimeBarColor;
				public function HRESULT(_ISystemMonitorUnion *self, uint32 Color) put_TimeBarColor;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_Highlight;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_Highlight;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowToolbar;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowToolbar;
				public function HRESULT(_ISystemMonitorUnion *self) Paste;
				public function HRESULT(_ISystemMonitorUnion *self) Copy;
				public function HRESULT(_ISystemMonitorUnion *self) Reset;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ReadOnly;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ReadOnly;
				public function HRESULT(_ISystemMonitorUnion *self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public function HRESULT(_ISystemMonitorUnion *self, ReportValueTypeConstants* peReportValueType) get_ReportValueType;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_MonitorDuplicateInstances;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_MonitorDuplicateInstances;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iValue) put_DisplayFilter;
				public function HRESULT(_ISystemMonitorUnion *self, int32* piValue) get_DisplayFilter;
				public function HRESULT(_ISystemMonitorUnion *self, ILogFiles** ppILogFiles) get_LogFiles;
				public function HRESULT(_ISystemMonitorUnion *self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public function HRESULT(_ISystemMonitorUnion *self, DataSourceTypeConstants* peDataSourceType) get_DataSourceType;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsSqlDsnName) put_SqlDsnName;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_EnableDigitGrouping;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_EnableDigitGrouping;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_EnableToolTips;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_EnableToolTips;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bState) put_ShowTimeAxisLabels;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbState) get_ShowTimeAxisLabels;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bScroll) put_ChartScroll;
				public function HRESULT(_ISystemMonitorUnion *self, int16* pbScroll) get_ChartScroll;
				public function HRESULT(_ISystemMonitorUnion *self, int32 iNewCount) put_DataPointCount;
				public function HRESULT(_ISystemMonitorUnion *self, int32* piDataPointCount) get_DataPointCount;
				public function HRESULT(_ISystemMonitorUnion *self, int16 bSelectedCountersOnly) ScaleToFit;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public function HRESULT(_ISystemMonitorUnion *self) ClearData;
				public function HRESULT(_ISystemMonitorUnion *self, double* pDate) get_LogSourceStartTime;
				public function HRESULT(_ISystemMonitorUnion *self, double* pDate) get_LogSourceStopTime;
				public function HRESULT(_ISystemMonitorUnion *self, double StartTime, double StopTime) SetLogViewRange;
				public function HRESULT(_ISystemMonitorUnion *self, double* StartTime, double* StopTime) GetLogViewRange;
				public function HRESULT(_ISystemMonitorUnion *self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public function HRESULT(_ISystemMonitorUnion *self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct DISystemMonitor : IDispatch
		{
			public const new Guid IID = .(0x13d73d81, 0xc32e, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct DISystemMonitorInternal : IDispatch
		{
			public const new Guid IID = .(0x194eb242, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ISystemMonitorEvents : IUnknown
		{
			public const new Guid IID = .(0xee660ea0, 0x4abd, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(ISystemMonitorEvents *self, int32 Index) OnCounterSelected;
				public function void(ISystemMonitorEvents *self, int32 Index) OnCounterAdded;
				public function void(ISystemMonitorEvents *self, int32 Index) OnCounterDeleted;
				public function void(ISystemMonitorEvents *self) OnSampleCollected;
				public function void(ISystemMonitorEvents *self, int32 Index) OnDblClick;
			}
		}
		[CRepr]
		public struct DISystemMonitorEvents : IDispatch
		{
			public const new Guid IID = .(0x84979930, 0x4ab3, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public VTable* VT { get => (.)vt; }			
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
