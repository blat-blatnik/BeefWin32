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
		
		public enum PERF_DETAIL : uint32
		{
			NOVICE = 100,
			ADVANCED = 200,
			EXPERT = 300,
			WIZARD = 400,
		}
		public enum REAL_TIME_DATA_SOURCE_ID_FLAGS : uint32
		{
			REGISTRY = 1,
			WBEM = 4,
		}
		public enum PDH_PATH_FLAGS : uint32
		{
			RESULT = 1,
			INPUT = 2,
			NONE = 0,
		}
		public enum PDH_FMT : uint32
		{
			DOUBLE = 512,
			LARGE = 1024,
			LONG = 256,
		}
		public enum PDH_LOG_TYPE : uint32
		{
			UNDEFINED = 0,
			CSV = 1,
			SQL = 7,
			TSV = 2,
			BINARY = 8,
			PERFMON = 6,
		}
		public enum PDH_LOG : uint32
		{
			READ_ACCESS = 65536,
			WRITE_ACCESS = 131072,
			UPDATE_ACCESS = 262144,
		}
		public enum PDH_SELECT_DATA_SOURCE_FLAGS : uint32
		{
			FILE_BROWSER_ONLY = 1,
			NONE = 0,
		}
		public enum PDH_DLL_VERSION : uint32
		{
			CVERSION_WIN50 = 1280,
			VERSION = 1283,
		}
		public enum PERF_COUNTER_AGGREGATE_FUNC : uint32
		{
			UNDEFINED = 0,
			TOTAL = 1,
			AVG = 2,
			MIN = 3,
		}
		public enum DataCollectorType : int32
		{
			PerformanceCounter = 0,
			Trace = 1,
			Configuration = 2,
			Alert = 3,
			ApiTrace = 4,
		}
		public enum FileFormat : int32
		{
			CommaSeparated = 0,
			TabSeparated = 1,
			Sql = 2,
			Binary = 3,
		}
		public enum AutoPathFormat : int32
		{
			None = 0,
			Pattern = 1,
			Computer = 2,
			MonthDayHour = 256,
			SerialNumber = 512,
			YearDayOfYear = 1024,
			YearMonth = 2048,
			YearMonthDay = 4096,
			YearMonthDayHour = 8192,
			MonthDayHourMinute = 16384,
		}
		public enum DataCollectorSetStatus : int32
		{
			Stopped = 0,
			Running = 1,
			Compiling = 2,
			Pending = 3,
			Undefined = 4,
		}
		public enum ClockType : int32
		{
			TimeStamp = 0,
			Performance = 1,
			System = 2,
			Cycle = 3,
		}
		public enum StreamMode : int32
		{
			File = 1,
			RealTime = 2,
			Both = 3,
			Buffering = 4,
		}
		public enum CommitMode : int32
		{
			CreateNew = 1,
			Modify = 2,
			CreateOrModify = 3,
			UpdateRunningInstance = 16,
			FlushTrace = 32,
			ValidateOnly = 4096,
		}
		public enum ValueMapType : int32
		{
			Index = 1,
			Flag = 2,
			FlagArray = 3,
			Validation = 4,
		}
		public enum WeekDays : int32
		{
			RunOnce = 0,
			Sunday = 1,
			Monday = 2,
			Tuesday = 4,
			Wednesday = 8,
			Thursday = 16,
			Friday = 32,
			Saturday = 64,
			Everyday = 127,
		}
		public enum ResourcePolicy : int32
		{
			Largest = 0,
			Oldest = 1,
		}
		public enum DataManagerSteps : int32
		{
			CreateReport = 1,
			RunRules = 2,
			CreateHtml = 4,
			FolderActions = 8,
			ResourceFreeing = 16,
		}
		public enum FolderActionSteps : int32
		{
			CreateCab = 1,
			DeleteData = 2,
			SendCab = 4,
			DeleteCab = 8,
			DeleteReport = 16,
		}
		public enum PerfRegInfoType : int32
		{
			COUNTERSET_STRUCT = 1,
			COUNTER_STRUCT = 2,
			COUNTERSET_NAME_STRING = 3,
			COUNTERSET_HELP_STRING = 4,
			COUNTER_NAME_STRINGS = 5,
			COUNTER_HELP_STRINGS = 6,
			PROVIDER_NAME = 7,
			PROVIDER_GUID = 8,
			COUNTERSET_ENGLISH_NAME = 9,
			COUNTER_ENGLISH_NAMES = 10,
		}
		public enum PerfCounterDataType : int32
		{
			ERROR_RETURN = 0,
			SINGLE_COUNTER = 1,
			MULTIPLE_COUNTERS = 2,
			MULTIPLE_INSTANCES = 4,
			COUNTERSET = 6,
		}
		public enum DisplayTypeConstants : int32
		{
			LineGraph = 1,
			Histogram = 2,
			Report = 3,
			ChartArea = 4,
			ChartStackedArea = 5,
		}
		public enum ReportValueTypeConstants : int32
		{
			DefaultValue = 0,
			CurrentValue = 1,
			Average = 2,
			Minimum = 3,
			Maximum = 4,
		}
		public enum DataSourceTypeConstants : int32
		{
			NullDataSource = -1,
			CurrentActivity = 1,
			LogFiles = 2,
			SqlLog = 3,
		}
		public enum SysmonFileType : int32
		{
			Html = 1,
			Report = 2,
			Csv = 3,
			Tsv = 4,
			Blg = 5,
			RetiredBlg = 6,
			Gif = 7,
		}
		public enum SysmonDataType : int32
		{
			Avg = 1,
			Min = 2,
			Max = 3,
			Time = 4,
			Count = 5,
		}
		public enum SysmonBatchReason : int32
		{
			None = 0,
			AddFiles = 1,
			AddCounters = 2,
			AddFilesAutoCounters = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PLA_CABEXTRACT_CALLBACK(PWSTR FileName, void* Context);
		public function uint32 PERFLIBREQUEST(uint32 RequestCode, void* Buffer, uint32 BufferSize);
		public function void* PERF_MEM_ALLOC(uint AllocSize, void* pContext);
		public function void PERF_MEM_FREE(void* pBuffer, void* pContext);
		public function uint32 PM_OPEN_PROC(PWSTR pContext);
		public function uint32 PM_COLLECT_PROC(PWSTR pValueName, void** ppData, out uint32 pcbTotalBytes, out uint32 pNumObjectTypes);
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
			public uint32[0] DataBuffer;
			
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
			public uint32[0] DataBuffer;
			
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
			public uint8[0] RawBytes;
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
			
			public HRESULT get_DataCollectors(IDataCollectorCollection** collectors) mut => VT.get_DataCollectors(ref this, collectors);
			public HRESULT get_Duration(out uint32 seconds) mut => VT.get_Duration(ref this, out seconds);
			public HRESULT put_Duration(uint32 seconds) mut => VT.put_Duration(ref this, seconds);
			public HRESULT get_Description(BSTR* description) mut => VT.get_Description(ref this, description);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT get_DescriptionUnresolved(BSTR* Descr) mut => VT.get_DescriptionUnresolved(ref this, Descr);
			public HRESULT get_DisplayName(BSTR* DisplayName) mut => VT.get_DisplayName(ref this, DisplayName);
			public HRESULT put_DisplayName(BSTR DisplayName) mut => VT.put_DisplayName(ref this, DisplayName);
			public HRESULT get_DisplayNameUnresolved(BSTR* name) mut => VT.get_DisplayNameUnresolved(ref this, name);
			public HRESULT get_Keywords(SAFEARRAY** keywords) mut => VT.get_Keywords(ref this, keywords);
			public HRESULT put_Keywords(ref SAFEARRAY keywords) mut => VT.put_Keywords(ref this, ref keywords);
			public HRESULT get_LatestOutputLocation(BSTR* path) mut => VT.get_LatestOutputLocation(ref this, path);
			public HRESULT put_LatestOutputLocation(BSTR path) mut => VT.put_LatestOutputLocation(ref this, path);
			public HRESULT get_Name(BSTR* name) mut => VT.get_Name(ref this, name);
			public HRESULT get_OutputLocation(BSTR* path) mut => VT.get_OutputLocation(ref this, path);
			public HRESULT get_RootPath(BSTR* folder) mut => VT.get_RootPath(ref this, folder);
			public HRESULT put_RootPath(BSTR folder) mut => VT.put_RootPath(ref this, folder);
			public HRESULT get_Segment(out int16 segment) mut => VT.get_Segment(ref this, out segment);
			public HRESULT put_Segment(int16 segment) mut => VT.put_Segment(ref this, segment);
			public HRESULT get_SegmentMaxDuration(out uint32 seconds) mut => VT.get_SegmentMaxDuration(ref this, out seconds);
			public HRESULT put_SegmentMaxDuration(uint32 seconds) mut => VT.put_SegmentMaxDuration(ref this, seconds);
			public HRESULT get_SegmentMaxSize(out uint32 size) mut => VT.get_SegmentMaxSize(ref this, out size);
			public HRESULT put_SegmentMaxSize(uint32 size) mut => VT.put_SegmentMaxSize(ref this, size);
			public HRESULT get_SerialNumber(out uint32 index) mut => VT.get_SerialNumber(ref this, out index);
			public HRESULT put_SerialNumber(uint32 index) mut => VT.put_SerialNumber(ref this, index);
			public HRESULT get_Server(BSTR* server) mut => VT.get_Server(ref this, server);
			public HRESULT get_Status(out DataCollectorSetStatus status) mut => VT.get_Status(ref this, out status);
			public HRESULT get_Subdirectory(BSTR* folder) mut => VT.get_Subdirectory(ref this, folder);
			public HRESULT put_Subdirectory(BSTR folder) mut => VT.put_Subdirectory(ref this, folder);
			public HRESULT get_SubdirectoryFormat(out AutoPathFormat format) mut => VT.get_SubdirectoryFormat(ref this, out format);
			public HRESULT put_SubdirectoryFormat(AutoPathFormat format) mut => VT.put_SubdirectoryFormat(ref this, format);
			public HRESULT get_SubdirectoryFormatPattern(BSTR* pattern) mut => VT.get_SubdirectoryFormatPattern(ref this, pattern);
			public HRESULT put_SubdirectoryFormatPattern(BSTR pattern) mut => VT.put_SubdirectoryFormatPattern(ref this, pattern);
			public HRESULT get_Task(BSTR* task) mut => VT.get_Task(ref this, task);
			public HRESULT put_Task(BSTR task) mut => VT.put_Task(ref this, task);
			public HRESULT get_TaskRunAsSelf(out int16 RunAsSelf) mut => VT.get_TaskRunAsSelf(ref this, out RunAsSelf);
			public HRESULT put_TaskRunAsSelf(int16 RunAsSelf) mut => VT.put_TaskRunAsSelf(ref this, RunAsSelf);
			public HRESULT get_TaskArguments(BSTR* task) mut => VT.get_TaskArguments(ref this, task);
			public HRESULT put_TaskArguments(BSTR task) mut => VT.put_TaskArguments(ref this, task);
			public HRESULT get_TaskUserTextArguments(BSTR* UserText) mut => VT.get_TaskUserTextArguments(ref this, UserText);
			public HRESULT put_TaskUserTextArguments(BSTR UserText) mut => VT.put_TaskUserTextArguments(ref this, UserText);
			public HRESULT get_Schedules(IScheduleCollection** ppSchedules) mut => VT.get_Schedules(ref this, ppSchedules);
			public HRESULT get_SchedulesEnabled(out int16 enabled) mut => VT.get_SchedulesEnabled(ref this, out enabled);
			public HRESULT put_SchedulesEnabled(int16 enabled) mut => VT.put_SchedulesEnabled(ref this, enabled);
			public HRESULT get_UserAccount(BSTR* user) mut => VT.get_UserAccount(ref this, user);
			public HRESULT get_Xml(BSTR* xml) mut => VT.get_Xml(ref this, xml);
			public HRESULT get_Security(BSTR* pbstrSecurity) mut => VT.get_Security(ref this, pbstrSecurity);
			public HRESULT put_Security(BSTR bstrSecurity) mut => VT.put_Security(ref this, bstrSecurity);
			public HRESULT get_StopOnCompletion(out int16 Stop) mut => VT.get_StopOnCompletion(ref this, out Stop);
			public HRESULT put_StopOnCompletion(int16 Stop) mut => VT.put_StopOnCompletion(ref this, Stop);
			public HRESULT get_DataManager(IDataManager** DataManager) mut => VT.get_DataManager(ref this, DataManager);
			public HRESULT SetCredentials(BSTR user, BSTR password) mut => VT.SetCredentials(ref this, user, password);
			public HRESULT Query(BSTR name, BSTR server) mut => VT.Query(ref this, name, server);
			public HRESULT Commit(BSTR name, BSTR server, CommitMode mode, IValueMap** validation) mut => VT.Commit(ref this, name, server, mode, validation);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Start(int16 Synchronous) mut => VT.Start(ref this, Synchronous);
			public HRESULT Stop(int16 Synchronous) mut => VT.Stop(ref this, Synchronous);
			public HRESULT SetXml(BSTR xml, IValueMap** validation) mut => VT.SetXml(ref this, xml, validation);
			public HRESULT SetValue(BSTR key, BSTR value) mut => VT.SetValue(ref this, key, value);
			public HRESULT GetValue(BSTR key, BSTR* value) mut => VT.GetValue(ref this, key, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, IDataCollectorCollection** collectors) get_DataCollectors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out uint32 seconds) get_Duration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, uint32 seconds) put_Duration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* Descr) get_DescriptionUnresolved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* DisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR DisplayName) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* name) get_DisplayNameUnresolved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, SAFEARRAY** keywords) get_Keywords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, ref SAFEARRAY keywords) put_Keywords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* path) get_LatestOutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR path) put_LatestOutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* path) get_OutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* folder) get_RootPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR folder) put_RootPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out int16 segment) get_Segment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 segment) put_Segment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out uint32 seconds) get_SegmentMaxDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, uint32 seconds) put_SegmentMaxDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out uint32 size) get_SegmentMaxSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, uint32 size) put_SegmentMaxSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out uint32 index) get_SerialNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, uint32 index) put_SerialNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* server) get_Server;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out DataCollectorSetStatus status) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* folder) get_Subdirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR folder) put_Subdirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out AutoPathFormat format) get_SubdirectoryFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, AutoPathFormat format) put_SubdirectoryFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* pattern) get_SubdirectoryFormatPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR pattern) put_SubdirectoryFormatPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* task) get_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR task) put_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out int16 RunAsSelf) get_TaskRunAsSelf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 RunAsSelf) put_TaskRunAsSelf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* task) get_TaskArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR task) put_TaskArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* UserText) get_TaskUserTextArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR UserText) put_TaskUserTextArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, IScheduleCollection** ppSchedules) get_Schedules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out int16 enabled) get_SchedulesEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 enabled) put_SchedulesEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* user) get_UserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* xml) get_Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR* pbstrSecurity) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR bstrSecurity) put_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, out int16 Stop) get_StopOnCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 Stop) put_StopOnCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, IDataManager** DataManager) get_DataManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR user, BSTR password) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR name, BSTR server) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR name, BSTR server, CommitMode mode, IValueMap** validation) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 Synchronous) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, int16 Synchronous) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR xml, IValueMap** validation) SetXml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR key, BSTR value) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSet self, BSTR key, BSTR* value) GetValue;
			}
		}
		[CRepr]
		public struct IDataManager : IDispatch
		{
			public const new Guid IID = .(0x03837541, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Enabled(out int16 pfEnabled) mut => VT.get_Enabled(ref this, out pfEnabled);
			public HRESULT put_Enabled(int16 fEnabled) mut => VT.put_Enabled(ref this, fEnabled);
			public HRESULT get_CheckBeforeRunning(out int16 pfCheck) mut => VT.get_CheckBeforeRunning(ref this, out pfCheck);
			public HRESULT put_CheckBeforeRunning(int16 fCheck) mut => VT.put_CheckBeforeRunning(ref this, fCheck);
			public HRESULT get_MinFreeDisk(out uint32 MinFreeDisk) mut => VT.get_MinFreeDisk(ref this, out MinFreeDisk);
			public HRESULT put_MinFreeDisk(uint32 MinFreeDisk) mut => VT.put_MinFreeDisk(ref this, MinFreeDisk);
			public HRESULT get_MaxSize(out uint32 pulMaxSize) mut => VT.get_MaxSize(ref this, out pulMaxSize);
			public HRESULT put_MaxSize(uint32 ulMaxSize) mut => VT.put_MaxSize(ref this, ulMaxSize);
			public HRESULT get_MaxFolderCount(out uint32 pulMaxFolderCount) mut => VT.get_MaxFolderCount(ref this, out pulMaxFolderCount);
			public HRESULT put_MaxFolderCount(uint32 ulMaxFolderCount) mut => VT.put_MaxFolderCount(ref this, ulMaxFolderCount);
			public HRESULT get_ResourcePolicy(out ResourcePolicy pPolicy) mut => VT.get_ResourcePolicy(ref this, out pPolicy);
			public HRESULT put_ResourcePolicy(ResourcePolicy Policy) mut => VT.put_ResourcePolicy(ref this, Policy);
			public HRESULT get_FolderActions(IFolderActionCollection** Actions) mut => VT.get_FolderActions(ref this, Actions);
			public HRESULT get_ReportSchema(BSTR* ReportSchema) mut => VT.get_ReportSchema(ref this, ReportSchema);
			public HRESULT put_ReportSchema(BSTR ReportSchema) mut => VT.put_ReportSchema(ref this, ReportSchema);
			public HRESULT get_ReportFileName(BSTR* pbstrFilename) mut => VT.get_ReportFileName(ref this, pbstrFilename);
			public HRESULT put_ReportFileName(BSTR pbstrFilename) mut => VT.put_ReportFileName(ref this, pbstrFilename);
			public HRESULT get_RuleTargetFileName(BSTR* Filename) mut => VT.get_RuleTargetFileName(ref this, Filename);
			public HRESULT put_RuleTargetFileName(BSTR Filename) mut => VT.put_RuleTargetFileName(ref this, Filename);
			public HRESULT get_EventsFileName(BSTR* pbstrFilename) mut => VT.get_EventsFileName(ref this, pbstrFilename);
			public HRESULT put_EventsFileName(BSTR pbstrFilename) mut => VT.put_EventsFileName(ref this, pbstrFilename);
			public HRESULT get_Rules(BSTR* pbstrXml) mut => VT.get_Rules(ref this, pbstrXml);
			public HRESULT put_Rules(BSTR bstrXml) mut => VT.put_Rules(ref this, bstrXml);
			public HRESULT Run(DataManagerSteps Steps, BSTR bstrFolder, IValueMap** Errors) mut => VT.Run(ref this, Steps, bstrFolder, Errors);
			public HRESULT Extract(BSTR CabFilename, BSTR DestinationPath) mut => VT.Extract(ref this, CabFilename, DestinationPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out int16 pfEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, int16 fEnabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out int16 pfCheck) get_CheckBeforeRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, int16 fCheck) put_CheckBeforeRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out uint32 MinFreeDisk) get_MinFreeDisk;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, uint32 MinFreeDisk) put_MinFreeDisk;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out uint32 pulMaxSize) get_MaxSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, uint32 ulMaxSize) put_MaxSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out uint32 pulMaxFolderCount) get_MaxFolderCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, uint32 ulMaxFolderCount) put_MaxFolderCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, out ResourcePolicy pPolicy) get_ResourcePolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, ResourcePolicy Policy) put_ResourcePolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, IFolderActionCollection** Actions) get_FolderActions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR* ReportSchema) get_ReportSchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR ReportSchema) put_ReportSchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR* pbstrFilename) get_ReportFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR pbstrFilename) put_ReportFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR* Filename) get_RuleTargetFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR Filename) put_RuleTargetFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR* pbstrFilename) get_EventsFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR pbstrFilename) put_EventsFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR* pbstrXml) get_Rules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR bstrXml) put_Rules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, DataManagerSteps Steps, BSTR bstrFolder, IValueMap** Errors) Run;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataManager self, BSTR CabFilename, BSTR DestinationPath) Extract;
			}
		}
		[CRepr]
		public struct IFolderAction : IDispatch
		{
			public const new Guid IID = .(0x03837543, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Age(out uint32 pulAge) mut => VT.get_Age(ref this, out pulAge);
			public HRESULT put_Age(uint32 ulAge) mut => VT.put_Age(ref this, ulAge);
			public HRESULT get_Size(out uint32 pulAge) mut => VT.get_Size(ref this, out pulAge);
			public HRESULT put_Size(uint32 ulAge) mut => VT.put_Size(ref this, ulAge);
			public HRESULT get_Actions(out FolderActionSteps Steps) mut => VT.get_Actions(ref this, out Steps);
			public HRESULT put_Actions(FolderActionSteps Steps) mut => VT.put_Actions(ref this, Steps);
			public HRESULT get_SendCabTo(BSTR* pbstrDestination) mut => VT.get_SendCabTo(ref this, pbstrDestination);
			public HRESULT put_SendCabTo(BSTR bstrDestination) mut => VT.put_SendCabTo(ref this, bstrDestination);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, out uint32 pulAge) get_Age;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, uint32 ulAge) put_Age;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, out uint32 pulAge) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, uint32 ulAge) put_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, out FolderActionSteps Steps) get_Actions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, FolderActionSteps Steps) put_Actions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, BSTR* pbstrDestination) get_SendCabTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderAction self, BSTR bstrDestination) put_SendCabTo;
			}
		}
		[CRepr]
		public struct IFolderActionCollection : IDispatch
		{
			public const new Guid IID = .(0x03837544, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out uint32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT get_Item(VARIANT Index, IFolderAction** Action) mut => VT.get_Item(ref this, Index, Action);
			public HRESULT get__NewEnum(IUnknown** Enum) mut => VT.get__NewEnum(ref this, Enum);
			public HRESULT Add(IFolderAction* Action) mut => VT.Add(ref this, Action);
			public HRESULT Remove(VARIANT Index) mut => VT.Remove(ref this, Index);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(IFolderActionCollection* Actions) mut => VT.AddRange(ref this, Actions);
			public HRESULT CreateFolderAction(IFolderAction** FolderAction) mut => VT.CreateFolderAction(ref this, FolderAction);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, out uint32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, VARIANT Index, IFolderAction** Action) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, IUnknown** Enum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, IFolderAction* Action) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, VARIANT Index) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, IFolderActionCollection* Actions) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderActionCollection self, IFolderAction** FolderAction) CreateFolderAction;
			}
		}
		[CRepr]
		public struct IDataCollector : IDispatch
		{
			public const new Guid IID = .(0x038374ff, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataCollectorSet(IDataCollectorSet** group) mut => VT.get_DataCollectorSet(ref this, group);
			public HRESULT put_DataCollectorSet(IDataCollectorSet* group) mut => VT.put_DataCollectorSet(ref this, group);
			public HRESULT get_DataCollectorType(out DataCollectorType type) mut => VT.get_DataCollectorType(ref this, out type);
			public HRESULT get_FileName(BSTR* name) mut => VT.get_FileName(ref this, name);
			public HRESULT put_FileName(BSTR name) mut => VT.put_FileName(ref this, name);
			public HRESULT get_FileNameFormat(out AutoPathFormat format) mut => VT.get_FileNameFormat(ref this, out format);
			public HRESULT put_FileNameFormat(AutoPathFormat format) mut => VT.put_FileNameFormat(ref this, format);
			public HRESULT get_FileNameFormatPattern(BSTR* pattern) mut => VT.get_FileNameFormatPattern(ref this, pattern);
			public HRESULT put_FileNameFormatPattern(BSTR pattern) mut => VT.put_FileNameFormatPattern(ref this, pattern);
			public HRESULT get_LatestOutputLocation(BSTR* path) mut => VT.get_LatestOutputLocation(ref this, path);
			public HRESULT put_LatestOutputLocation(BSTR path) mut => VT.put_LatestOutputLocation(ref this, path);
			public HRESULT get_LogAppend(out int16 @append) mut => VT.get_LogAppend(ref this, out @append);
			public HRESULT put_LogAppend(int16 @append) mut => VT.put_LogAppend(ref this, @append);
			public HRESULT get_LogCircular(out int16 circular) mut => VT.get_LogCircular(ref this, out circular);
			public HRESULT put_LogCircular(int16 circular) mut => VT.put_LogCircular(ref this, circular);
			public HRESULT get_LogOverwrite(out int16 overwrite) mut => VT.get_LogOverwrite(ref this, out overwrite);
			public HRESULT put_LogOverwrite(int16 overwrite) mut => VT.put_LogOverwrite(ref this, overwrite);
			public HRESULT get_Name(BSTR* name) mut => VT.get_Name(ref this, name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_OutputLocation(BSTR* path) mut => VT.get_OutputLocation(ref this, path);
			public HRESULT get_Index(out int32 index) mut => VT.get_Index(ref this, out index);
			public HRESULT put_Index(int32 index) mut => VT.put_Index(ref this, index);
			public HRESULT get_Xml(BSTR* Xml) mut => VT.get_Xml(ref this, Xml);
			public HRESULT SetXml(BSTR Xml, IValueMap** Validation) mut => VT.SetXml(ref this, Xml, Validation);
			public HRESULT CreateOutputLocation(int16 Latest, BSTR* Location) mut => VT.CreateOutputLocation(ref this, Latest, Location);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, IDataCollectorSet** group) get_DataCollectorSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, IDataCollectorSet* group) put_DataCollectorSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out DataCollectorType type) get_DataCollectorType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* name) get_FileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR name) put_FileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out AutoPathFormat format) get_FileNameFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, AutoPathFormat format) put_FileNameFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* pattern) get_FileNameFormatPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR pattern) put_FileNameFormatPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* path) get_LatestOutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR path) put_LatestOutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out int16 @append) get_LogAppend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, int16 @append) put_LogAppend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out int16 circular) get_LogCircular;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, int16 circular) put_LogCircular;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out int16 overwrite) get_LogOverwrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, int16 overwrite) put_LogOverwrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* path) get_OutputLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, out int32 index) get_Index;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, int32 index) put_Index;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR* Xml) get_Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, BSTR Xml, IValueMap** Validation) SetXml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollector self, int16 Latest, BSTR* Location) CreateOutputLocation;
			}
		}
		[CRepr]
		public struct IPerformanceCounterDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837506, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataSourceName(BSTR* dsn) mut => VT.get_DataSourceName(ref this, dsn);
			public HRESULT put_DataSourceName(BSTR dsn) mut => VT.put_DataSourceName(ref this, dsn);
			public HRESULT get_PerformanceCounters(SAFEARRAY** counters) mut => VT.get_PerformanceCounters(ref this, counters);
			public HRESULT put_PerformanceCounters(ref SAFEARRAY counters) mut => VT.put_PerformanceCounters(ref this, ref counters);
			public HRESULT get_LogFileFormat(out FileFormat format) mut => VT.get_LogFileFormat(ref this, out format);
			public HRESULT put_LogFileFormat(FileFormat format) mut => VT.put_LogFileFormat(ref this, format);
			public HRESULT get_SampleInterval(out uint32 interval) mut => VT.get_SampleInterval(ref this, out interval);
			public HRESULT put_SampleInterval(uint32 interval) mut => VT.put_SampleInterval(ref this, interval);
			public HRESULT get_SegmentMaxRecords(out uint32 records) mut => VT.get_SegmentMaxRecords(ref this, out records);
			public HRESULT put_SegmentMaxRecords(uint32 records) mut => VT.put_SegmentMaxRecords(ref this, records);

			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, BSTR* dsn) get_DataSourceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, BSTR dsn) put_DataSourceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, SAFEARRAY** counters) get_PerformanceCounters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, ref SAFEARRAY counters) put_PerformanceCounters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, out FileFormat format) get_LogFileFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, FileFormat format) put_LogFileFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, out uint32 interval) get_SampleInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, uint32 interval) put_SampleInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, out uint32 records) get_SegmentMaxRecords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerformanceCounterDataCollector self, uint32 records) put_SegmentMaxRecords;
			}
		}
		[CRepr]
		public struct ITraceDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383750b, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BufferSize(out uint32 size) mut => VT.get_BufferSize(ref this, out size);
			public HRESULT put_BufferSize(uint32 size) mut => VT.put_BufferSize(ref this, size);
			public HRESULT get_BuffersLost(out uint32 buffers) mut => VT.get_BuffersLost(ref this, out buffers);
			public HRESULT put_BuffersLost(uint32 buffers) mut => VT.put_BuffersLost(ref this, buffers);
			public HRESULT get_BuffersWritten(out uint32 buffers) mut => VT.get_BuffersWritten(ref this, out buffers);
			public HRESULT put_BuffersWritten(uint32 buffers) mut => VT.put_BuffersWritten(ref this, buffers);
			public HRESULT get_ClockType(out ClockType clock) mut => VT.get_ClockType(ref this, out clock);
			public HRESULT put_ClockType(ClockType clock) mut => VT.put_ClockType(ref this, clock);
			public HRESULT get_EventsLost(out uint32 events) mut => VT.get_EventsLost(ref this, out events);
			public HRESULT put_EventsLost(uint32 events) mut => VT.put_EventsLost(ref this, events);
			public HRESULT get_ExtendedModes(out uint32 mode) mut => VT.get_ExtendedModes(ref this, out mode);
			public HRESULT put_ExtendedModes(uint32 mode) mut => VT.put_ExtendedModes(ref this, mode);
			public HRESULT get_FlushTimer(out uint32 seconds) mut => VT.get_FlushTimer(ref this, out seconds);
			public HRESULT put_FlushTimer(uint32 seconds) mut => VT.put_FlushTimer(ref this, seconds);
			public HRESULT get_FreeBuffers(out uint32 buffers) mut => VT.get_FreeBuffers(ref this, out buffers);
			public HRESULT put_FreeBuffers(uint32 buffers) mut => VT.put_FreeBuffers(ref this, buffers);
			public HRESULT get_Guid(out Guid guid) mut => VT.get_Guid(ref this, out guid);
			public HRESULT put_Guid(Guid guid) mut => VT.put_Guid(ref this, guid);
			public HRESULT get_IsKernelTrace(out int16 kernel) mut => VT.get_IsKernelTrace(ref this, out kernel);
			public HRESULT get_MaximumBuffers(out uint32 buffers) mut => VT.get_MaximumBuffers(ref this, out buffers);
			public HRESULT put_MaximumBuffers(uint32 buffers) mut => VT.put_MaximumBuffers(ref this, buffers);
			public HRESULT get_MinimumBuffers(out uint32 buffers) mut => VT.get_MinimumBuffers(ref this, out buffers);
			public HRESULT put_MinimumBuffers(uint32 buffers) mut => VT.put_MinimumBuffers(ref this, buffers);
			public HRESULT get_NumberOfBuffers(out uint32 buffers) mut => VT.get_NumberOfBuffers(ref this, out buffers);
			public HRESULT put_NumberOfBuffers(uint32 buffers) mut => VT.put_NumberOfBuffers(ref this, buffers);
			public HRESULT get_PreallocateFile(out int16 allocate) mut => VT.get_PreallocateFile(ref this, out allocate);
			public HRESULT put_PreallocateFile(int16 allocate) mut => VT.put_PreallocateFile(ref this, allocate);
			public HRESULT get_ProcessMode(out int16 process) mut => VT.get_ProcessMode(ref this, out process);
			public HRESULT put_ProcessMode(int16 process) mut => VT.put_ProcessMode(ref this, process);
			public HRESULT get_RealTimeBuffersLost(out uint32 buffers) mut => VT.get_RealTimeBuffersLost(ref this, out buffers);
			public HRESULT put_RealTimeBuffersLost(uint32 buffers) mut => VT.put_RealTimeBuffersLost(ref this, buffers);
			public HRESULT get_SessionId(out uint64 id) mut => VT.get_SessionId(ref this, out id);
			public HRESULT put_SessionId(uint64 id) mut => VT.put_SessionId(ref this, id);
			public HRESULT get_SessionName(BSTR* name) mut => VT.get_SessionName(ref this, name);
			public HRESULT put_SessionName(BSTR name) mut => VT.put_SessionName(ref this, name);
			public HRESULT get_SessionThreadId(out uint32 tid) mut => VT.get_SessionThreadId(ref this, out tid);
			public HRESULT put_SessionThreadId(uint32 tid) mut => VT.put_SessionThreadId(ref this, tid);
			public HRESULT get_StreamMode(out StreamMode mode) mut => VT.get_StreamMode(ref this, out mode);
			public HRESULT put_StreamMode(StreamMode mode) mut => VT.put_StreamMode(ref this, mode);
			public HRESULT get_TraceDataProviders(ITraceDataProviderCollection** providers) mut => VT.get_TraceDataProviders(ref this, providers);

			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 size) get_BufferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 size) put_BufferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_BuffersLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_BuffersLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_BuffersWritten;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_BuffersWritten;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out ClockType clock) get_ClockType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, ClockType clock) put_ClockType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 events) get_EventsLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 events) put_EventsLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 mode) get_ExtendedModes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 mode) put_ExtendedModes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 seconds) get_FlushTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 seconds) put_FlushTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_FreeBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_FreeBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out Guid guid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, Guid guid) put_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out int16 kernel) get_IsKernelTrace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_MaximumBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_MaximumBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_MinimumBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_MinimumBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_NumberOfBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_NumberOfBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out int16 allocate) get_PreallocateFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, int16 allocate) put_PreallocateFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out int16 process) get_ProcessMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, int16 process) put_ProcessMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 buffers) get_RealTimeBuffersLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 buffers) put_RealTimeBuffersLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint64 id) get_SessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint64 id) put_SessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, BSTR* name) get_SessionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, BSTR name) put_SessionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out uint32 tid) get_SessionThreadId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, uint32 tid) put_SessionThreadId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, out StreamMode mode) get_StreamMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, StreamMode mode) put_StreamMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataCollector self, ITraceDataProviderCollection** providers) get_TraceDataProviders;
			}
		}
		[CRepr]
		public struct IConfigurationDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837514, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FileMaxCount(out uint32 count) mut => VT.get_FileMaxCount(ref this, out count);
			public HRESULT put_FileMaxCount(uint32 count) mut => VT.put_FileMaxCount(ref this, count);
			public HRESULT get_FileMaxRecursiveDepth(out uint32 depth) mut => VT.get_FileMaxRecursiveDepth(ref this, out depth);
			public HRESULT put_FileMaxRecursiveDepth(uint32 depth) mut => VT.put_FileMaxRecursiveDepth(ref this, depth);
			public HRESULT get_FileMaxTotalSize(out uint32 size) mut => VT.get_FileMaxTotalSize(ref this, out size);
			public HRESULT put_FileMaxTotalSize(uint32 size) mut => VT.put_FileMaxTotalSize(ref this, size);
			public HRESULT get_Files(SAFEARRAY** Files) mut => VT.get_Files(ref this, Files);
			public HRESULT put_Files(ref SAFEARRAY Files) mut => VT.put_Files(ref this, ref Files);
			public HRESULT get_ManagementQueries(SAFEARRAY** Queries) mut => VT.get_ManagementQueries(ref this, Queries);
			public HRESULT put_ManagementQueries(ref SAFEARRAY Queries) mut => VT.put_ManagementQueries(ref this, ref Queries);
			public HRESULT get_QueryNetworkAdapters(out int16 network) mut => VT.get_QueryNetworkAdapters(ref this, out network);
			public HRESULT put_QueryNetworkAdapters(int16 network) mut => VT.put_QueryNetworkAdapters(ref this, network);
			public HRESULT get_RegistryKeys(SAFEARRAY** query) mut => VT.get_RegistryKeys(ref this, query);
			public HRESULT put_RegistryKeys(ref SAFEARRAY query) mut => VT.put_RegistryKeys(ref this, ref query);
			public HRESULT get_RegistryMaxRecursiveDepth(out uint32 depth) mut => VT.get_RegistryMaxRecursiveDepth(ref this, out depth);
			public HRESULT put_RegistryMaxRecursiveDepth(uint32 depth) mut => VT.put_RegistryMaxRecursiveDepth(ref this, depth);
			public HRESULT get_SystemStateFile(BSTR* FileName) mut => VT.get_SystemStateFile(ref this, FileName);
			public HRESULT put_SystemStateFile(BSTR FileName) mut => VT.put_SystemStateFile(ref this, FileName);

			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, out uint32 count) get_FileMaxCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, uint32 count) put_FileMaxCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, out uint32 depth) get_FileMaxRecursiveDepth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, uint32 depth) put_FileMaxRecursiveDepth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, out uint32 size) get_FileMaxTotalSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, uint32 size) put_FileMaxTotalSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, SAFEARRAY** Files) get_Files;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, ref SAFEARRAY Files) put_Files;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, SAFEARRAY** Queries) get_ManagementQueries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, ref SAFEARRAY Queries) put_ManagementQueries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, out int16 network) get_QueryNetworkAdapters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, int16 network) put_QueryNetworkAdapters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, SAFEARRAY** query) get_RegistryKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, ref SAFEARRAY query) put_RegistryKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, out uint32 depth) get_RegistryMaxRecursiveDepth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, uint32 depth) put_RegistryMaxRecursiveDepth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, BSTR* FileName) get_SystemStateFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConfigurationDataCollector self, BSTR FileName) put_SystemStateFile;
			}
		}
		[CRepr]
		public struct IAlertDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x03837516, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AlertThresholds(SAFEARRAY** alerts) mut => VT.get_AlertThresholds(ref this, alerts);
			public HRESULT put_AlertThresholds(ref SAFEARRAY alerts) mut => VT.put_AlertThresholds(ref this, ref alerts);
			public HRESULT get_EventLog(out int16 log) mut => VT.get_EventLog(ref this, out log);
			public HRESULT put_EventLog(int16 log) mut => VT.put_EventLog(ref this, log);
			public HRESULT get_SampleInterval(out uint32 interval) mut => VT.get_SampleInterval(ref this, out interval);
			public HRESULT put_SampleInterval(uint32 interval) mut => VT.put_SampleInterval(ref this, interval);
			public HRESULT get_Task(BSTR* task) mut => VT.get_Task(ref this, task);
			public HRESULT put_Task(BSTR task) mut => VT.put_Task(ref this, task);
			public HRESULT get_TaskRunAsSelf(out int16 RunAsSelf) mut => VT.get_TaskRunAsSelf(ref this, out RunAsSelf);
			public HRESULT put_TaskRunAsSelf(int16 RunAsSelf) mut => VT.put_TaskRunAsSelf(ref this, RunAsSelf);
			public HRESULT get_TaskArguments(BSTR* task) mut => VT.get_TaskArguments(ref this, task);
			public HRESULT put_TaskArguments(BSTR task) mut => VT.put_TaskArguments(ref this, task);
			public HRESULT get_TaskUserTextArguments(BSTR* task) mut => VT.get_TaskUserTextArguments(ref this, task);
			public HRESULT put_TaskUserTextArguments(BSTR task) mut => VT.put_TaskUserTextArguments(ref this, task);
			public HRESULT get_TriggerDataCollectorSet(BSTR* name) mut => VT.get_TriggerDataCollectorSet(ref this, name);
			public HRESULT put_TriggerDataCollectorSet(BSTR name) mut => VT.put_TriggerDataCollectorSet(ref this, name);

			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, SAFEARRAY** alerts) get_AlertThresholds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, ref SAFEARRAY alerts) put_AlertThresholds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, out int16 log) get_EventLog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, int16 log) put_EventLog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, out uint32 interval) get_SampleInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, uint32 interval) put_SampleInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR* task) get_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR task) put_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, out int16 RunAsSelf) get_TaskRunAsSelf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, int16 RunAsSelf) put_TaskRunAsSelf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR* task) get_TaskArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR task) put_TaskArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR* task) get_TaskUserTextArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR task) put_TaskUserTextArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR* name) get_TriggerDataCollectorSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlertDataCollector self, BSTR name) put_TriggerDataCollectorSet;
			}
		}
		[CRepr]
		public struct IApiTracingDataCollector : IDataCollector
		{
			public const new Guid IID = .(0x0383751a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LogApiNamesOnly(out int16 logapinames) mut => VT.get_LogApiNamesOnly(ref this, out logapinames);
			public HRESULT put_LogApiNamesOnly(int16 logapinames) mut => VT.put_LogApiNamesOnly(ref this, logapinames);
			public HRESULT get_LogApisRecursively(out int16 logrecursively) mut => VT.get_LogApisRecursively(ref this, out logrecursively);
			public HRESULT put_LogApisRecursively(int16 logrecursively) mut => VT.put_LogApisRecursively(ref this, logrecursively);
			public HRESULT get_ExePath(BSTR* exepath) mut => VT.get_ExePath(ref this, exepath);
			public HRESULT put_ExePath(BSTR exepath) mut => VT.put_ExePath(ref this, exepath);
			public HRESULT get_LogFilePath(BSTR* logfilepath) mut => VT.get_LogFilePath(ref this, logfilepath);
			public HRESULT put_LogFilePath(BSTR logfilepath) mut => VT.put_LogFilePath(ref this, logfilepath);
			public HRESULT get_IncludeModules(SAFEARRAY** includemodules) mut => VT.get_IncludeModules(ref this, includemodules);
			public HRESULT put_IncludeModules(ref SAFEARRAY includemodules) mut => VT.put_IncludeModules(ref this, ref includemodules);
			public HRESULT get_IncludeApis(SAFEARRAY** includeapis) mut => VT.get_IncludeApis(ref this, includeapis);
			public HRESULT put_IncludeApis(ref SAFEARRAY includeapis) mut => VT.put_IncludeApis(ref this, ref includeapis);
			public HRESULT get_ExcludeApis(SAFEARRAY** excludeapis) mut => VT.get_ExcludeApis(ref this, excludeapis);
			public HRESULT put_ExcludeApis(ref SAFEARRAY excludeapis) mut => VT.put_ExcludeApis(ref this, ref excludeapis);

			[CRepr]
			public struct VTable : IDataCollector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, out int16 logapinames) get_LogApiNamesOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, int16 logapinames) put_LogApiNamesOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, out int16 logrecursively) get_LogApisRecursively;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, int16 logrecursively) put_LogApisRecursively;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, BSTR* exepath) get_ExePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, BSTR exepath) put_ExePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, BSTR* logfilepath) get_LogFilePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, BSTR logfilepath) put_LogFilePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, SAFEARRAY** includemodules) get_IncludeModules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, ref SAFEARRAY includemodules) put_IncludeModules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, SAFEARRAY** includeapis) get_IncludeApis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, ref SAFEARRAY includeapis) put_IncludeApis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, SAFEARRAY** excludeapis) get_ExcludeApis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IApiTracingDataCollector self, ref SAFEARRAY excludeapis) put_ExcludeApis;
			}
		}
		[CRepr]
		public struct IDataCollectorCollection : IDispatch
		{
			public const new Guid IID = .(0x03837502, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retVal) mut => VT.get_Count(ref this, out retVal);
			public HRESULT get_Item(VARIANT index, IDataCollector** collector) mut => VT.get_Item(ref this, index, collector);
			public HRESULT get__NewEnum(IUnknown** retVal) mut => VT.get__NewEnum(ref this, retVal);
			public HRESULT Add(IDataCollector* collector) mut => VT.Add(ref this, collector);
			public HRESULT Remove(VARIANT collector) mut => VT.Remove(ref this, collector);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(IDataCollectorCollection* collectors) mut => VT.AddRange(ref this, collectors);
			public HRESULT CreateDataCollectorFromXml(BSTR bstrXml, IValueMap** pValidation, IDataCollector** pCollector) mut => VT.CreateDataCollectorFromXml(ref this, bstrXml, pValidation, pCollector);
			public HRESULT CreateDataCollector(DataCollectorType Type, IDataCollector** Collector) mut => VT.CreateDataCollector(ref this, Type, Collector);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, out int32 retVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, VARIANT index, IDataCollector** collector) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, IUnknown** retVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, IDataCollector* collector) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, VARIANT collector) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, IDataCollectorCollection* collectors) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, BSTR bstrXml, IValueMap** pValidation, IDataCollector** pCollector) CreateDataCollectorFromXml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorCollection self, DataCollectorType Type, IDataCollector** Collector) CreateDataCollector;
			}
		}
		[CRepr]
		public struct IDataCollectorSetCollection : IDispatch
		{
			public const new Guid IID = .(0x03837524, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retVal) mut => VT.get_Count(ref this, out retVal);
			public HRESULT get_Item(VARIANT index, IDataCollectorSet** set) mut => VT.get_Item(ref this, index, set);
			public HRESULT get__NewEnum(IUnknown** retVal) mut => VT.get__NewEnum(ref this, retVal);
			public HRESULT Add(IDataCollectorSet* set) mut => VT.Add(ref this, set);
			public HRESULT Remove(VARIANT set) mut => VT.Remove(ref this, set);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(IDataCollectorSetCollection* sets) mut => VT.AddRange(ref this, sets);
			public HRESULT GetDataCollectorSets(BSTR server, BSTR filter) mut => VT.GetDataCollectorSets(ref this, server, filter);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, out int32 retVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, VARIANT index, IDataCollectorSet** set) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, IUnknown** retVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, IDataCollectorSet* set) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, VARIANT set) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, IDataCollectorSetCollection* sets) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataCollectorSetCollection self, BSTR server, BSTR filter) GetDataCollectorSets;
			}
		}
		[CRepr]
		public struct ITraceDataProvider : IDispatch
		{
			public const new Guid IID = .(0x03837512, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(BSTR* name) mut => VT.get_DisplayName(ref this, name);
			public HRESULT put_DisplayName(BSTR name) mut => VT.put_DisplayName(ref this, name);
			public HRESULT get_Guid(out Guid guid) mut => VT.get_Guid(ref this, out guid);
			public HRESULT put_Guid(Guid guid) mut => VT.put_Guid(ref this, guid);
			public HRESULT get_Level(IValueMap** ppLevel) mut => VT.get_Level(ref this, ppLevel);
			public HRESULT get_KeywordsAny(IValueMap** ppKeywords) mut => VT.get_KeywordsAny(ref this, ppKeywords);
			public HRESULT get_KeywordsAll(IValueMap** ppKeywords) mut => VT.get_KeywordsAll(ref this, ppKeywords);
			public HRESULT get_Properties(IValueMap** ppProperties) mut => VT.get_Properties(ref this, ppProperties);
			public HRESULT get_FilterEnabled(out int16 FilterEnabled) mut => VT.get_FilterEnabled(ref this, out FilterEnabled);
			public HRESULT put_FilterEnabled(int16 FilterEnabled) mut => VT.put_FilterEnabled(ref this, FilterEnabled);
			public HRESULT get_FilterType(out uint32 pulType) mut => VT.get_FilterType(ref this, out pulType);
			public HRESULT put_FilterType(uint32 ulType) mut => VT.put_FilterType(ref this, ulType);
			public HRESULT get_FilterData(SAFEARRAY** ppData) mut => VT.get_FilterData(ref this, ppData);
			public HRESULT put_FilterData(ref SAFEARRAY pData) mut => VT.put_FilterData(ref this, ref pData);
			public HRESULT Query(BSTR bstrName, BSTR bstrServer) mut => VT.Query(ref this, bstrName, bstrServer);
			public HRESULT Resolve(IDispatch* pFrom) mut => VT.Resolve(ref this, pFrom);
			public HRESULT SetSecurity(BSTR Sddl) mut => VT.SetSecurity(ref this, Sddl);
			public HRESULT GetSecurity(uint32 SecurityInfo, BSTR* Sddl) mut => VT.GetSecurity(ref this, SecurityInfo, Sddl);
			public HRESULT GetRegisteredProcesses(IValueMap** Processes) mut => VT.GetRegisteredProcesses(ref this, Processes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, BSTR* name) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, BSTR name) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, out Guid guid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, Guid guid) put_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IValueMap** ppLevel) get_Level;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IValueMap** ppKeywords) get_KeywordsAny;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IValueMap** ppKeywords) get_KeywordsAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IValueMap** ppProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, out int16 FilterEnabled) get_FilterEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, int16 FilterEnabled) put_FilterEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, out uint32 pulType) get_FilterType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, uint32 ulType) put_FilterType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, SAFEARRAY** ppData) get_FilterData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, ref SAFEARRAY pData) put_FilterData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, BSTR bstrName, BSTR bstrServer) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IDispatch* pFrom) Resolve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, BSTR Sddl) SetSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, uint32 SecurityInfo, BSTR* Sddl) GetSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProvider self, IValueMap** Processes) GetRegisteredProcesses;
			}
		}
		[CRepr]
		public struct ITraceDataProviderCollection : IDispatch
		{
			public const new Guid IID = .(0x03837510, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retVal) mut => VT.get_Count(ref this, out retVal);
			public HRESULT get_Item(VARIANT index, ITraceDataProvider** ppProvider) mut => VT.get_Item(ref this, index, ppProvider);
			public HRESULT get__NewEnum(IUnknown** retVal) mut => VT.get__NewEnum(ref this, retVal);
			public HRESULT Add(ITraceDataProvider* pProvider) mut => VT.Add(ref this, pProvider);
			public HRESULT Remove(VARIANT vProvider) mut => VT.Remove(ref this, vProvider);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(ITraceDataProviderCollection* providers) mut => VT.AddRange(ref this, providers);
			public HRESULT CreateTraceDataProvider(ITraceDataProvider** Provider) mut => VT.CreateTraceDataProvider(ref this, Provider);
			public HRESULT GetTraceDataProviders(BSTR server) mut => VT.GetTraceDataProviders(ref this, server);
			public HRESULT GetTraceDataProvidersByProcess(BSTR Server, uint32 Pid) mut => VT.GetTraceDataProvidersByProcess(ref this, Server, Pid);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, out int32 retVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, VARIANT index, ITraceDataProvider** ppProvider) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, IUnknown** retVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, ITraceDataProvider* pProvider) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, VARIANT vProvider) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, ITraceDataProviderCollection* providers) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, ITraceDataProvider** Provider) CreateTraceDataProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, BSTR server) GetTraceDataProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITraceDataProviderCollection self, BSTR Server, uint32 Pid) GetTraceDataProvidersByProcess;
			}
		}
		[CRepr]
		public struct ISchedule : IDispatch
		{
			public const new Guid IID = .(0x0383753a, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StartDate(out VARIANT start) mut => VT.get_StartDate(ref this, out start);
			public HRESULT put_StartDate(VARIANT start) mut => VT.put_StartDate(ref this, start);
			public HRESULT get_EndDate(out VARIANT end) mut => VT.get_EndDate(ref this, out end);
			public HRESULT put_EndDate(VARIANT end) mut => VT.put_EndDate(ref this, end);
			public HRESULT get_StartTime(out VARIANT start) mut => VT.get_StartTime(ref this, out start);
			public HRESULT put_StartTime(VARIANT start) mut => VT.put_StartTime(ref this, start);
			public HRESULT get_Days(out WeekDays days) mut => VT.get_Days(ref this, out days);
			public HRESULT put_Days(WeekDays days) mut => VT.put_Days(ref this, days);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, out VARIANT start) get_StartDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, VARIANT start) put_StartDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, out VARIANT end) get_EndDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, VARIANT end) put_EndDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, out VARIANT start) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, VARIANT start) put_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, out WeekDays days) get_Days;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISchedule self, WeekDays days) put_Days;
			}
		}
		[CRepr]
		public struct IScheduleCollection : IDispatch
		{
			public const new Guid IID = .(0x0383753d, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retVal) mut => VT.get_Count(ref this, out retVal);
			public HRESULT get_Item(VARIANT index, ISchedule** ppSchedule) mut => VT.get_Item(ref this, index, ppSchedule);
			public HRESULT get__NewEnum(IUnknown** ienum) mut => VT.get__NewEnum(ref this, ienum);
			public HRESULT Add(ISchedule* pSchedule) mut => VT.Add(ref this, pSchedule);
			public HRESULT Remove(VARIANT vSchedule) mut => VT.Remove(ref this, vSchedule);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(IScheduleCollection* pSchedules) mut => VT.AddRange(ref this, pSchedules);
			public HRESULT CreateSchedule(ISchedule** Schedule) mut => VT.CreateSchedule(ref this, Schedule);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, out int32 retVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, VARIANT index, ISchedule** ppSchedule) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, IUnknown** ienum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, ISchedule* pSchedule) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, VARIANT vSchedule) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, IScheduleCollection* pSchedules) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduleCollection self, ISchedule** Schedule) CreateSchedule;
			}
		}
		[CRepr]
		public struct IValueMapItem : IDispatch
		{
			public const new Guid IID = .(0x03837533, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* description) mut => VT.get_Description(ref this, description);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_Key(BSTR* key) mut => VT.get_Key(ref this, key);
			public HRESULT put_Key(BSTR key) mut => VT.put_Key(ref this, key);
			public HRESULT get_Value(out VARIANT Value) mut => VT.get_Value(ref this, out Value);
			public HRESULT put_Value(VARIANT Value) mut => VT.put_Value(ref this, Value);
			public HRESULT get_ValueMapType(out ValueMapType type) mut => VT.get_ValueMapType(ref this, out type);
			public HRESULT put_ValueMapType(ValueMapType type) mut => VT.put_ValueMapType(ref this, type);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, BSTR* description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, BSTR* key) get_Key;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, BSTR key) put_Key;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, out VARIANT Value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, VARIANT Value) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, out ValueMapType type) get_ValueMapType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMapItem self, ValueMapType type) put_ValueMapType;
			}
		}
		[CRepr]
		public struct IValueMap : IDispatch
		{
			public const new Guid IID = .(0x03837534, 0x098b, 0x11d8, 0x94, 0x14, 0x50, 0x50, 0x54, 0x50, 0x30, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retVal) mut => VT.get_Count(ref this, out retVal);
			public HRESULT get_Item(VARIANT index, IValueMapItem** value) mut => VT.get_Item(ref this, index, value);
			public HRESULT get__NewEnum(IUnknown** retVal) mut => VT.get__NewEnum(ref this, retVal);
			public HRESULT get_Description(BSTR* description) mut => VT.get_Description(ref this, description);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT get_Value(out VARIANT Value) mut => VT.get_Value(ref this, out Value);
			public HRESULT put_Value(VARIANT Value) mut => VT.put_Value(ref this, Value);
			public HRESULT get_ValueMapType(out ValueMapType type) mut => VT.get_ValueMapType(ref this, out type);
			public HRESULT put_ValueMapType(ValueMapType type) mut => VT.put_ValueMapType(ref this, type);
			public HRESULT Add(VARIANT value) mut => VT.Add(ref this, value);
			public HRESULT Remove(VARIANT value) mut => VT.Remove(ref this, value);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddRange(IValueMap* map) mut => VT.AddRange(ref this, map);
			public HRESULT CreateValueMapItem(IValueMapItem** Item) mut => VT.CreateValueMapItem(ref this, Item);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, out int32 retVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, VARIANT index, IValueMapItem** value) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, IUnknown** retVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, BSTR* description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, out VARIANT Value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, VARIANT Value) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, out ValueMapType type) get_ValueMapType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, ValueMapType type) put_ValueMapType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, VARIANT value) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, VARIANT value) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, IValueMap* map) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueMap self, IValueMapItem** Item) CreateValueMapItem;
			}
		}
		[CRepr]
		public struct ICounterItem : IUnknown
		{
			public const new Guid IID = .(0x771a9520, 0xee28, 0x11ce, 0x94, 0x1e, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out double pdblValue) mut => VT.get_Value(ref this, out pdblValue);
			public HRESULT put_Color(uint32 Color) mut => VT.put_Color(ref this, Color);
			public HRESULT get_Color(out uint32 pColor) mut => VT.get_Color(ref this, out pColor);
			public HRESULT put_Width(int32 iWidth) mut => VT.put_Width(ref this, iWidth);
			public HRESULT get_Width(out int32 piValue) mut => VT.get_Width(ref this, out piValue);
			public HRESULT put_LineStyle(int32 iLineStyle) mut => VT.put_LineStyle(ref this, iLineStyle);
			public HRESULT get_LineStyle(out int32 piValue) mut => VT.get_LineStyle(ref this, out piValue);
			public HRESULT put_ScaleFactor(int32 iScale) mut => VT.put_ScaleFactor(ref this, iScale);
			public HRESULT get_ScaleFactor(out int32 piValue) mut => VT.get_ScaleFactor(ref this, out piValue);
			public HRESULT get_Path(BSTR* pstrValue) mut => VT.get_Path(ref this, pstrValue);
			public HRESULT GetValue(out double Value, out int32 Status) mut => VT.GetValue(ref this, out Value, out Status);
			public HRESULT GetStatistics(out double Max, out double Min, out double Avg, out int32 Status) mut => VT.GetStatistics(ref this, out Max, out Min, out Avg, out Status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out double pdblValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, uint32 Color) put_Color;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out uint32 pColor) get_Color;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, int32 iWidth) put_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out int32 piValue) get_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, int32 iLineStyle) put_LineStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out int32 piValue) get_LineStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, int32 iScale) put_ScaleFactor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out int32 piValue) get_ScaleFactor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, BSTR* pstrValue) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out double Value, out int32 Status) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem self, out double Max, out double Min, out double Avg, out int32 Status) GetStatistics;
			}
		}
		[CRepr]
		public struct ICounterItem2 : ICounterItem
		{
			public const new Guid IID = .(0xeefcd4e1, 0xea1c, 0x4435, 0xb7, 0xf4, 0xe3, 0x41, 0xba, 0x03, 0xb4, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Selected(int16 bState) mut => VT.put_Selected(ref this, bState);
			public HRESULT get_Selected(out int16 pbState) mut => VT.get_Selected(ref this, out pbState);
			public HRESULT put_Visible(int16 bState) mut => VT.put_Visible(ref this, bState);
			public HRESULT get_Visible(out int16 pbState) mut => VT.get_Visible(ref this, out pbState);
			public HRESULT GetDataAt(int32 iIndex, SysmonDataType iWhich, out VARIANT pVariant) mut => VT.GetDataAt(ref this, iIndex, iWhich, out pVariant);

			[CRepr]
			public struct VTable : ICounterItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem2 self, int16 bState) put_Selected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem2 self, out int16 pbState) get_Selected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem2 self, int16 bState) put_Visible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem2 self, out int16 pbState) get_Visible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounterItem2 self, int32 iIndex, SysmonDataType iWhich, out VARIANT pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct _ICounterItemUnion : IUnknown
		{
			public const new Guid IID = .(0xde1a6b74, 0x9182, 0x4c41, 0x8e, 0x2c, 0x24, 0xc2, 0xcd, 0x30, 0xee, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out double pdblValue) mut => VT.get_Value(ref this, out pdblValue);
			public HRESULT put_Color(uint32 Color) mut => VT.put_Color(ref this, Color);
			public HRESULT get_Color(out uint32 pColor) mut => VT.get_Color(ref this, out pColor);
			public HRESULT put_Width(int32 iWidth) mut => VT.put_Width(ref this, iWidth);
			public HRESULT get_Width(out int32 piValue) mut => VT.get_Width(ref this, out piValue);
			public HRESULT put_LineStyle(int32 iLineStyle) mut => VT.put_LineStyle(ref this, iLineStyle);
			public HRESULT get_LineStyle(out int32 piValue) mut => VT.get_LineStyle(ref this, out piValue);
			public HRESULT put_ScaleFactor(int32 iScale) mut => VT.put_ScaleFactor(ref this, iScale);
			public HRESULT get_ScaleFactor(out int32 piValue) mut => VT.get_ScaleFactor(ref this, out piValue);
			public HRESULT get_Path(BSTR* pstrValue) mut => VT.get_Path(ref this, pstrValue);
			public HRESULT GetValue(out double Value, out int32 Status) mut => VT.GetValue(ref this, out Value, out Status);
			public HRESULT GetStatistics(out double Max, out double Min, out double Avg, out int32 Status) mut => VT.GetStatistics(ref this, out Max, out Min, out Avg, out Status);
			public HRESULT put_Selected(int16 bState) mut => VT.put_Selected(ref this, bState);
			public HRESULT get_Selected(out int16 pbState) mut => VT.get_Selected(ref this, out pbState);
			public HRESULT put_Visible(int16 bState) mut => VT.put_Visible(ref this, bState);
			public HRESULT get_Visible(out int16 pbState) mut => VT.get_Visible(ref this, out pbState);
			public HRESULT GetDataAt(int32 iIndex, SysmonDataType iWhich, out VARIANT pVariant) mut => VT.GetDataAt(ref this, iIndex, iWhich, out pVariant);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out double pdblValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, uint32 Color) put_Color;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out uint32 pColor) get_Color;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int32 iWidth) put_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out int32 piValue) get_Width;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int32 iLineStyle) put_LineStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out int32 piValue) get_LineStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int32 iScale) put_ScaleFactor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out int32 piValue) get_ScaleFactor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, BSTR* pstrValue) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out double Value, out int32 Status) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out double Max, out double Min, out double Avg, out int32 Status) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int16 bState) put_Selected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out int16 pbState) get_Selected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int16 bState) put_Visible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, out int16 pbState) get_Visible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ICounterItemUnion self, int32 iIndex, SysmonDataType iWhich, out VARIANT pVariant) GetDataAt;
			}
		}
		[CRepr]
		public struct DICounterItem : IDispatch
		{
			public const new Guid IID = .(0xc08c4ff2, 0x0e2e, 0x11cf, 0x94, 0x2c, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ICounters : IDispatch
		{
			public const new Guid IID = .(0x79167962, 0x28fc, 0x11cf, 0x94, 0x2f, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pLong) mut => VT.get_Count(ref this, out pLong);
			public HRESULT get__NewEnum(IUnknown** ppIunk) mut => VT.get__NewEnum(ref this, ppIunk);
			public HRESULT get_Item(VARIANT index, DICounterItem** ppI) mut => VT.get_Item(ref this, index, ppI);
			public HRESULT Add(BSTR pathname, DICounterItem** ppI) mut => VT.Add(ref this, pathname, ppI);
			public HRESULT Remove(VARIANT index) mut => VT.Remove(ref this, index);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounters self, out int32 pLong) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounters self, IUnknown** ppIunk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounters self, VARIANT index, DICounterItem** ppI) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounters self, BSTR pathname, DICounterItem** ppI) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICounters self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ILogFileItem : IUnknown
		{
			public const new Guid IID = .(0xd6b518dd, 0x05c7, 0x418a, 0x89, 0xe6, 0x4f, 0x9c, 0xe8, 0xc6, 0x84, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pstrValue) mut => VT.get_Path(ref this, pstrValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFileItem self, BSTR* pstrValue) get_Path;
			}
		}
		[CRepr]
		public struct DILogFileItem : IDispatch
		{
			public const new Guid IID = .(0x8d093ffc, 0xf777, 0x4917, 0x82, 0xd1, 0x83, 0x3f, 0xbc, 0x54, 0xc5, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ILogFiles : IDispatch
		{
			public const new Guid IID = .(0x6a2a97e6, 0x6851, 0x41ea, 0x87, 0xad, 0x2a, 0x82, 0x25, 0x33, 0x58, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pLong) mut => VT.get_Count(ref this, out pLong);
			public HRESULT get__NewEnum(IUnknown** ppIunk) mut => VT.get__NewEnum(ref this, ppIunk);
			public HRESULT get_Item(VARIANT index, DILogFileItem** ppI) mut => VT.get_Item(ref this, index, ppI);
			public HRESULT Add(BSTR pathname, DILogFileItem** ppI) mut => VT.Add(ref this, pathname, ppI);
			public HRESULT Remove(VARIANT index) mut => VT.Remove(ref this, index);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFiles self, out int32 pLong) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFiles self, IUnknown** ppIunk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFiles self, VARIANT index, DILogFileItem** ppI) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFiles self, BSTR pathname, DILogFileItem** ppI) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogFiles self, VARIANT index) Remove;
			}
		}
		[CRepr]
		public struct ISystemMonitor : IUnknown
		{
			public const new Guid IID = .(0x194eb241, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Appearance(out int32 iAppearance) mut => VT.get_Appearance(ref this, out iAppearance);
			public HRESULT put_Appearance(int32 iAppearance) mut => VT.put_Appearance(ref this, iAppearance);
			public HRESULT get_BackColor(out uint32 pColor) mut => VT.get_BackColor(ref this, out pColor);
			public HRESULT put_BackColor(uint32 Color) mut => VT.put_BackColor(ref this, Color);
			public HRESULT get_BorderStyle(out int32 iBorderStyle) mut => VT.get_BorderStyle(ref this, out iBorderStyle);
			public HRESULT put_BorderStyle(int32 iBorderStyle) mut => VT.put_BorderStyle(ref this, iBorderStyle);
			public HRESULT get_ForeColor(out uint32 pColor) mut => VT.get_ForeColor(ref this, out pColor);
			public HRESULT put_ForeColor(uint32 Color) mut => VT.put_ForeColor(ref this, Color);
			public HRESULT get_Font(IFontDisp** ppFont) mut => VT.get_Font(ref this, ppFont);
			public HRESULT putref_Font(IFontDisp* pFont) mut => VT.putref_Font(ref this, pFont);
			public HRESULT get_Counters(ICounters** ppICounters) mut => VT.get_Counters(ref this, ppICounters);
			public HRESULT put_ShowVerticalGrid(int16 bState) mut => VT.put_ShowVerticalGrid(ref this, bState);
			public HRESULT get_ShowVerticalGrid(out int16 pbState) mut => VT.get_ShowVerticalGrid(ref this, out pbState);
			public HRESULT put_ShowHorizontalGrid(int16 bState) mut => VT.put_ShowHorizontalGrid(ref this, bState);
			public HRESULT get_ShowHorizontalGrid(out int16 pbState) mut => VT.get_ShowHorizontalGrid(ref this, out pbState);
			public HRESULT put_ShowLegend(int16 bState) mut => VT.put_ShowLegend(ref this, bState);
			public HRESULT get_ShowLegend(out int16 pbState) mut => VT.get_ShowLegend(ref this, out pbState);
			public HRESULT put_ShowScaleLabels(int16 bState) mut => VT.put_ShowScaleLabels(ref this, bState);
			public HRESULT get_ShowScaleLabels(out int16 pbState) mut => VT.get_ShowScaleLabels(ref this, out pbState);
			public HRESULT put_ShowValueBar(int16 bState) mut => VT.put_ShowValueBar(ref this, bState);
			public HRESULT get_ShowValueBar(out int16 pbState) mut => VT.get_ShowValueBar(ref this, out pbState);
			public HRESULT put_MaximumScale(int32 iValue) mut => VT.put_MaximumScale(ref this, iValue);
			public HRESULT get_MaximumScale(out int32 piValue) mut => VT.get_MaximumScale(ref this, out piValue);
			public HRESULT put_MinimumScale(int32 iValue) mut => VT.put_MinimumScale(ref this, iValue);
			public HRESULT get_MinimumScale(out int32 piValue) mut => VT.get_MinimumScale(ref this, out piValue);
			public HRESULT put_UpdateInterval(float fValue) mut => VT.put_UpdateInterval(ref this, fValue);
			public HRESULT get_UpdateInterval(out float pfValue) mut => VT.get_UpdateInterval(ref this, out pfValue);
			public HRESULT put_DisplayType(DisplayTypeConstants eDisplayType) mut => VT.put_DisplayType(ref this, eDisplayType);
			public HRESULT get_DisplayType(out DisplayTypeConstants peDisplayType) mut => VT.get_DisplayType(ref this, out peDisplayType);
			public HRESULT put_ManualUpdate(int16 bState) mut => VT.put_ManualUpdate(ref this, bState);
			public HRESULT get_ManualUpdate(out int16 pbState) mut => VT.get_ManualUpdate(ref this, out pbState);
			public HRESULT put_GraphTitle(BSTR bsTitle) mut => VT.put_GraphTitle(ref this, bsTitle);
			public HRESULT get_GraphTitle(BSTR* pbsTitle) mut => VT.get_GraphTitle(ref this, pbsTitle);
			public HRESULT put_YAxisLabel(BSTR bsTitle) mut => VT.put_YAxisLabel(ref this, bsTitle);
			public HRESULT get_YAxisLabel(BSTR* pbsTitle) mut => VT.get_YAxisLabel(ref this, pbsTitle);
			public HRESULT CollectSample() mut => VT.CollectSample(ref this);
			public HRESULT UpdateGraph() mut => VT.UpdateGraph(ref this);
			public HRESULT BrowseCounters() mut => VT.BrowseCounters(ref this);
			public HRESULT DisplayProperties() mut => VT.DisplayProperties(ref this);
			public HRESULT Counter(int32 iIndex, ICounterItem** ppICounter) mut => VT.Counter(ref this, iIndex, ppICounter);
			public HRESULT AddCounter(BSTR bsPath, ICounterItem** ppICounter) mut => VT.AddCounter(ref this, bsPath, ppICounter);
			public HRESULT DeleteCounter(ICounterItem* pCtr) mut => VT.DeleteCounter(ref this, pCtr);
			public HRESULT get_BackColorCtl(out uint32 pColor) mut => VT.get_BackColorCtl(ref this, out pColor);
			public HRESULT put_BackColorCtl(uint32 Color) mut => VT.put_BackColorCtl(ref this, Color);
			public HRESULT put_LogFileName(BSTR bsFileName) mut => VT.put_LogFileName(ref this, bsFileName);
			public HRESULT get_LogFileName(BSTR* bsFileName) mut => VT.get_LogFileName(ref this, bsFileName);
			public HRESULT put_LogViewStart(double StartTime) mut => VT.put_LogViewStart(ref this, StartTime);
			public HRESULT get_LogViewStart(out double StartTime) mut => VT.get_LogViewStart(ref this, out StartTime);
			public HRESULT put_LogViewStop(double StopTime) mut => VT.put_LogViewStop(ref this, StopTime);
			public HRESULT get_LogViewStop(out double StopTime) mut => VT.get_LogViewStop(ref this, out StopTime);
			public HRESULT get_GridColor(out uint32 pColor) mut => VT.get_GridColor(ref this, out pColor);
			public HRESULT put_GridColor(uint32 Color) mut => VT.put_GridColor(ref this, Color);
			public HRESULT get_TimeBarColor(out uint32 pColor) mut => VT.get_TimeBarColor(ref this, out pColor);
			public HRESULT put_TimeBarColor(uint32 Color) mut => VT.put_TimeBarColor(ref this, Color);
			public HRESULT get_Highlight(out int16 pbState) mut => VT.get_Highlight(ref this, out pbState);
			public HRESULT put_Highlight(int16 bState) mut => VT.put_Highlight(ref this, bState);
			public HRESULT get_ShowToolbar(out int16 pbState) mut => VT.get_ShowToolbar(ref this, out pbState);
			public HRESULT put_ShowToolbar(int16 bState) mut => VT.put_ShowToolbar(ref this, bState);
			public HRESULT Paste() mut => VT.Paste(ref this);
			public HRESULT Copy() mut => VT.Copy(ref this);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT put_ReadOnly(int16 bState) mut => VT.put_ReadOnly(ref this, bState);
			public HRESULT get_ReadOnly(out int16 pbState) mut => VT.get_ReadOnly(ref this, out pbState);
			public HRESULT put_ReportValueType(ReportValueTypeConstants eReportValueType) mut => VT.put_ReportValueType(ref this, eReportValueType);
			public HRESULT get_ReportValueType(out ReportValueTypeConstants peReportValueType) mut => VT.get_ReportValueType(ref this, out peReportValueType);
			public HRESULT put_MonitorDuplicateInstances(int16 bState) mut => VT.put_MonitorDuplicateInstances(ref this, bState);
			public HRESULT get_MonitorDuplicateInstances(out int16 pbState) mut => VT.get_MonitorDuplicateInstances(ref this, out pbState);
			public HRESULT put_DisplayFilter(int32 iValue) mut => VT.put_DisplayFilter(ref this, iValue);
			public HRESULT get_DisplayFilter(out int32 piValue) mut => VT.get_DisplayFilter(ref this, out piValue);
			public HRESULT get_LogFiles(ILogFiles** ppILogFiles) mut => VT.get_LogFiles(ref this, ppILogFiles);
			public HRESULT put_DataSourceType(DataSourceTypeConstants eDataSourceType) mut => VT.put_DataSourceType(ref this, eDataSourceType);
			public HRESULT get_DataSourceType(out DataSourceTypeConstants peDataSourceType) mut => VT.get_DataSourceType(ref this, out peDataSourceType);
			public HRESULT put_SqlDsnName(BSTR bsSqlDsnName) mut => VT.put_SqlDsnName(ref this, bsSqlDsnName);
			public HRESULT get_SqlDsnName(BSTR* bsSqlDsnName) mut => VT.get_SqlDsnName(ref this, bsSqlDsnName);
			public HRESULT put_SqlLogSetName(BSTR bsSqlLogSetName) mut => VT.put_SqlLogSetName(ref this, bsSqlLogSetName);
			public HRESULT get_SqlLogSetName(BSTR* bsSqlLogSetName) mut => VT.get_SqlLogSetName(ref this, bsSqlLogSetName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int32 iAppearance) get_Appearance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iAppearance) put_Appearance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out uint32 pColor) get_BackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, uint32 Color) put_BackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int32 iBorderStyle) get_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iBorderStyle) put_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out uint32 pColor) get_ForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, uint32 Color) put_ForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, IFontDisp** ppFont) get_Font;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, IFontDisp* pFont) putref_Font;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, ICounters** ppICounters) get_Counters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowVerticalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowVerticalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowHorizontalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowHorizontalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowLegend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowLegend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowScaleLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowScaleLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowValueBar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowValueBar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iValue) put_MaximumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int32 piValue) get_MaximumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iValue) put_MinimumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int32 piValue) get_MinimumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, float fValue) put_UpdateInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out float pfValue) get_UpdateInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out DisplayTypeConstants peDisplayType) get_DisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ManualUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ManualUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsTitle) put_GraphTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR* pbsTitle) get_GraphTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsTitle) put_YAxisLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR* pbsTitle) get_YAxisLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) CollectSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) UpdateGraph;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) BrowseCounters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) DisplayProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, ICounterItem* pCtr) DeleteCounter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out uint32 pColor) get_BackColorCtl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, uint32 Color) put_BackColorCtl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsFileName) put_LogFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR* bsFileName) get_LogFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, double StartTime) put_LogViewStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out double StartTime) get_LogViewStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, double StopTime) put_LogViewStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out double StopTime) get_LogViewStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out uint32 pColor) get_GridColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, uint32 Color) put_GridColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out uint32 pColor) get_TimeBarColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, uint32 Color) put_TimeBarColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_Highlight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_Highlight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ShowToolbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ShowToolbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) Paste;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) Copy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out ReportValueTypeConstants peReportValueType) get_ReportValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int16 bState) put_MonitorDuplicateInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int16 pbState) get_MonitorDuplicateInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, int32 iValue) put_DisplayFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out int32 piValue) get_DisplayFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, ILogFiles** ppILogFiles) get_LogFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, out DataSourceTypeConstants peDataSourceType) get_DataSourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsSqlDsnName) put_SqlDsnName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
			}
		}
		[CRepr]
		public struct ISystemMonitor2 : ISystemMonitor
		{
			public const new Guid IID = .(0x08e3206a, 0x5fd2, 0x4fde, 0xa8, 0xa5, 0x8c, 0xb3, 0xb6, 0x3d, 0x26, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_EnableDigitGrouping(int16 bState) mut => VT.put_EnableDigitGrouping(ref this, bState);
			public HRESULT get_EnableDigitGrouping(out int16 pbState) mut => VT.get_EnableDigitGrouping(ref this, out pbState);
			public HRESULT put_EnableToolTips(int16 bState) mut => VT.put_EnableToolTips(ref this, bState);
			public HRESULT get_EnableToolTips(out int16 pbState) mut => VT.get_EnableToolTips(ref this, out pbState);
			public HRESULT put_ShowTimeAxisLabels(int16 bState) mut => VT.put_ShowTimeAxisLabels(ref this, bState);
			public HRESULT get_ShowTimeAxisLabels(out int16 pbState) mut => VT.get_ShowTimeAxisLabels(ref this, out pbState);
			public HRESULT put_ChartScroll(int16 bScroll) mut => VT.put_ChartScroll(ref this, bScroll);
			public HRESULT get_ChartScroll(out int16 pbScroll) mut => VT.get_ChartScroll(ref this, out pbScroll);
			public HRESULT put_DataPointCount(int32 iNewCount) mut => VT.put_DataPointCount(ref this, iNewCount);
			public HRESULT get_DataPointCount(out int32 piDataPointCount) mut => VT.get_DataPointCount(ref this, out piDataPointCount);
			public HRESULT ScaleToFit(int16 bSelectedCountersOnly) mut => VT.ScaleToFit(ref this, bSelectedCountersOnly);
			public HRESULT SaveAs(BSTR bstrFileName, SysmonFileType eSysmonFileType) mut => VT.SaveAs(ref this, bstrFileName, eSysmonFileType);
			public HRESULT Relog(BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) mut => VT.Relog(ref this, bstrFileName, eSysmonFileType, iFilter);
			public HRESULT ClearData() mut => VT.ClearData(ref this);
			public HRESULT get_LogSourceStartTime(out double pDate) mut => VT.get_LogSourceStartTime(ref this, out pDate);
			public HRESULT get_LogSourceStopTime(out double pDate) mut => VT.get_LogSourceStopTime(ref this, out pDate);
			public HRESULT SetLogViewRange(double StartTime, double StopTime) mut => VT.SetLogViewRange(ref this, StartTime, StopTime);
			public HRESULT GetLogViewRange(out double StartTime, out double StopTime) mut => VT.GetLogViewRange(ref this, out StartTime, out StopTime);
			public HRESULT BatchingLock(int16 fLock, SysmonBatchReason eBatchReason) mut => VT.BatchingLock(ref this, fLock, eBatchReason);
			public HRESULT LoadSettings(BSTR bstrSettingFileName) mut => VT.LoadSettings(ref this, bstrSettingFileName);

			[CRepr]
			public struct VTable : ISystemMonitor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 bState) put_EnableDigitGrouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out int16 pbState) get_EnableDigitGrouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 bState) put_EnableToolTips;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out int16 pbState) get_EnableToolTips;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 bState) put_ShowTimeAxisLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out int16 pbState) get_ShowTimeAxisLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 bScroll) put_ChartScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out int16 pbScroll) get_ChartScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int32 iNewCount) put_DataPointCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out int32 piDataPointCount) get_DataPointCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 bSelectedCountersOnly) ScaleToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self) ClearData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out double pDate) get_LogSourceStartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out double pDate) get_LogSourceStopTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, double StartTime, double StopTime) SetLogViewRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, out double StartTime, out double StopTime) GetLogViewRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemMonitor2 self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct _ISystemMonitorUnion : IUnknown
		{
			public const new Guid IID = .(0xc8a77338, 0x265f, 0x4de5, 0xaa, 0x25, 0xc7, 0xda, 0x1c, 0xe5, 0xa8, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Appearance(out int32 iAppearance) mut => VT.get_Appearance(ref this, out iAppearance);
			public HRESULT put_Appearance(int32 iAppearance) mut => VT.put_Appearance(ref this, iAppearance);
			public HRESULT get_BackColor(out uint32 pColor) mut => VT.get_BackColor(ref this, out pColor);
			public HRESULT put_BackColor(uint32 Color) mut => VT.put_BackColor(ref this, Color);
			public HRESULT get_BorderStyle(out int32 iBorderStyle) mut => VT.get_BorderStyle(ref this, out iBorderStyle);
			public HRESULT put_BorderStyle(int32 iBorderStyle) mut => VT.put_BorderStyle(ref this, iBorderStyle);
			public HRESULT get_ForeColor(out uint32 pColor) mut => VT.get_ForeColor(ref this, out pColor);
			public HRESULT put_ForeColor(uint32 Color) mut => VT.put_ForeColor(ref this, Color);
			public HRESULT get_Font(IFontDisp** ppFont) mut => VT.get_Font(ref this, ppFont);
			public HRESULT putref_Font(IFontDisp* pFont) mut => VT.putref_Font(ref this, pFont);
			public HRESULT get_Counters(ICounters** ppICounters) mut => VT.get_Counters(ref this, ppICounters);
			public HRESULT put_ShowVerticalGrid(int16 bState) mut => VT.put_ShowVerticalGrid(ref this, bState);
			public HRESULT get_ShowVerticalGrid(out int16 pbState) mut => VT.get_ShowVerticalGrid(ref this, out pbState);
			public HRESULT put_ShowHorizontalGrid(int16 bState) mut => VT.put_ShowHorizontalGrid(ref this, bState);
			public HRESULT get_ShowHorizontalGrid(out int16 pbState) mut => VT.get_ShowHorizontalGrid(ref this, out pbState);
			public HRESULT put_ShowLegend(int16 bState) mut => VT.put_ShowLegend(ref this, bState);
			public HRESULT get_ShowLegend(out int16 pbState) mut => VT.get_ShowLegend(ref this, out pbState);
			public HRESULT put_ShowScaleLabels(int16 bState) mut => VT.put_ShowScaleLabels(ref this, bState);
			public HRESULT get_ShowScaleLabels(out int16 pbState) mut => VT.get_ShowScaleLabels(ref this, out pbState);
			public HRESULT put_ShowValueBar(int16 bState) mut => VT.put_ShowValueBar(ref this, bState);
			public HRESULT get_ShowValueBar(out int16 pbState) mut => VT.get_ShowValueBar(ref this, out pbState);
			public HRESULT put_MaximumScale(int32 iValue) mut => VT.put_MaximumScale(ref this, iValue);
			public HRESULT get_MaximumScale(out int32 piValue) mut => VT.get_MaximumScale(ref this, out piValue);
			public HRESULT put_MinimumScale(int32 iValue) mut => VT.put_MinimumScale(ref this, iValue);
			public HRESULT get_MinimumScale(out int32 piValue) mut => VT.get_MinimumScale(ref this, out piValue);
			public HRESULT put_UpdateInterval(float fValue) mut => VT.put_UpdateInterval(ref this, fValue);
			public HRESULT get_UpdateInterval(out float pfValue) mut => VT.get_UpdateInterval(ref this, out pfValue);
			public HRESULT put_DisplayType(DisplayTypeConstants eDisplayType) mut => VT.put_DisplayType(ref this, eDisplayType);
			public HRESULT get_DisplayType(out DisplayTypeConstants peDisplayType) mut => VT.get_DisplayType(ref this, out peDisplayType);
			public HRESULT put_ManualUpdate(int16 bState) mut => VT.put_ManualUpdate(ref this, bState);
			public HRESULT get_ManualUpdate(out int16 pbState) mut => VT.get_ManualUpdate(ref this, out pbState);
			public HRESULT put_GraphTitle(BSTR bsTitle) mut => VT.put_GraphTitle(ref this, bsTitle);
			public HRESULT get_GraphTitle(BSTR* pbsTitle) mut => VT.get_GraphTitle(ref this, pbsTitle);
			public HRESULT put_YAxisLabel(BSTR bsTitle) mut => VT.put_YAxisLabel(ref this, bsTitle);
			public HRESULT get_YAxisLabel(BSTR* pbsTitle) mut => VT.get_YAxisLabel(ref this, pbsTitle);
			public HRESULT CollectSample() mut => VT.CollectSample(ref this);
			public HRESULT UpdateGraph() mut => VT.UpdateGraph(ref this);
			public HRESULT BrowseCounters() mut => VT.BrowseCounters(ref this);
			public HRESULT DisplayProperties() mut => VT.DisplayProperties(ref this);
			public HRESULT Counter(int32 iIndex, ICounterItem** ppICounter) mut => VT.Counter(ref this, iIndex, ppICounter);
			public HRESULT AddCounter(BSTR bsPath, ICounterItem** ppICounter) mut => VT.AddCounter(ref this, bsPath, ppICounter);
			public HRESULT DeleteCounter(ICounterItem* pCtr) mut => VT.DeleteCounter(ref this, pCtr);
			public HRESULT get_BackColorCtl(out uint32 pColor) mut => VT.get_BackColorCtl(ref this, out pColor);
			public HRESULT put_BackColorCtl(uint32 Color) mut => VT.put_BackColorCtl(ref this, Color);
			public HRESULT put_LogFileName(BSTR bsFileName) mut => VT.put_LogFileName(ref this, bsFileName);
			public HRESULT get_LogFileName(BSTR* bsFileName) mut => VT.get_LogFileName(ref this, bsFileName);
			public HRESULT put_LogViewStart(double StartTime) mut => VT.put_LogViewStart(ref this, StartTime);
			public HRESULT get_LogViewStart(out double StartTime) mut => VT.get_LogViewStart(ref this, out StartTime);
			public HRESULT put_LogViewStop(double StopTime) mut => VT.put_LogViewStop(ref this, StopTime);
			public HRESULT get_LogViewStop(out double StopTime) mut => VT.get_LogViewStop(ref this, out StopTime);
			public HRESULT get_GridColor(out uint32 pColor) mut => VT.get_GridColor(ref this, out pColor);
			public HRESULT put_GridColor(uint32 Color) mut => VT.put_GridColor(ref this, Color);
			public HRESULT get_TimeBarColor(out uint32 pColor) mut => VT.get_TimeBarColor(ref this, out pColor);
			public HRESULT put_TimeBarColor(uint32 Color) mut => VT.put_TimeBarColor(ref this, Color);
			public HRESULT get_Highlight(out int16 pbState) mut => VT.get_Highlight(ref this, out pbState);
			public HRESULT put_Highlight(int16 bState) mut => VT.put_Highlight(ref this, bState);
			public HRESULT get_ShowToolbar(out int16 pbState) mut => VT.get_ShowToolbar(ref this, out pbState);
			public HRESULT put_ShowToolbar(int16 bState) mut => VT.put_ShowToolbar(ref this, bState);
			public HRESULT Paste() mut => VT.Paste(ref this);
			public HRESULT Copy() mut => VT.Copy(ref this);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT put_ReadOnly(int16 bState) mut => VT.put_ReadOnly(ref this, bState);
			public HRESULT get_ReadOnly(out int16 pbState) mut => VT.get_ReadOnly(ref this, out pbState);
			public HRESULT put_ReportValueType(ReportValueTypeConstants eReportValueType) mut => VT.put_ReportValueType(ref this, eReportValueType);
			public HRESULT get_ReportValueType(out ReportValueTypeConstants peReportValueType) mut => VT.get_ReportValueType(ref this, out peReportValueType);
			public HRESULT put_MonitorDuplicateInstances(int16 bState) mut => VT.put_MonitorDuplicateInstances(ref this, bState);
			public HRESULT get_MonitorDuplicateInstances(out int16 pbState) mut => VT.get_MonitorDuplicateInstances(ref this, out pbState);
			public HRESULT put_DisplayFilter(int32 iValue) mut => VT.put_DisplayFilter(ref this, iValue);
			public HRESULT get_DisplayFilter(out int32 piValue) mut => VT.get_DisplayFilter(ref this, out piValue);
			public HRESULT get_LogFiles(ILogFiles** ppILogFiles) mut => VT.get_LogFiles(ref this, ppILogFiles);
			public HRESULT put_DataSourceType(DataSourceTypeConstants eDataSourceType) mut => VT.put_DataSourceType(ref this, eDataSourceType);
			public HRESULT get_DataSourceType(out DataSourceTypeConstants peDataSourceType) mut => VT.get_DataSourceType(ref this, out peDataSourceType);
			public HRESULT put_SqlDsnName(BSTR bsSqlDsnName) mut => VT.put_SqlDsnName(ref this, bsSqlDsnName);
			public HRESULT get_SqlDsnName(BSTR* bsSqlDsnName) mut => VT.get_SqlDsnName(ref this, bsSqlDsnName);
			public HRESULT put_SqlLogSetName(BSTR bsSqlLogSetName) mut => VT.put_SqlLogSetName(ref this, bsSqlLogSetName);
			public HRESULT get_SqlLogSetName(BSTR* bsSqlLogSetName) mut => VT.get_SqlLogSetName(ref this, bsSqlLogSetName);
			public HRESULT put_EnableDigitGrouping(int16 bState) mut => VT.put_EnableDigitGrouping(ref this, bState);
			public HRESULT get_EnableDigitGrouping(out int16 pbState) mut => VT.get_EnableDigitGrouping(ref this, out pbState);
			public HRESULT put_EnableToolTips(int16 bState) mut => VT.put_EnableToolTips(ref this, bState);
			public HRESULT get_EnableToolTips(out int16 pbState) mut => VT.get_EnableToolTips(ref this, out pbState);
			public HRESULT put_ShowTimeAxisLabels(int16 bState) mut => VT.put_ShowTimeAxisLabels(ref this, bState);
			public HRESULT get_ShowTimeAxisLabels(out int16 pbState) mut => VT.get_ShowTimeAxisLabels(ref this, out pbState);
			public HRESULT put_ChartScroll(int16 bScroll) mut => VT.put_ChartScroll(ref this, bScroll);
			public HRESULT get_ChartScroll(out int16 pbScroll) mut => VT.get_ChartScroll(ref this, out pbScroll);
			public HRESULT put_DataPointCount(int32 iNewCount) mut => VT.put_DataPointCount(ref this, iNewCount);
			public HRESULT get_DataPointCount(out int32 piDataPointCount) mut => VT.get_DataPointCount(ref this, out piDataPointCount);
			public HRESULT ScaleToFit(int16 bSelectedCountersOnly) mut => VT.ScaleToFit(ref this, bSelectedCountersOnly);
			public HRESULT SaveAs(BSTR bstrFileName, SysmonFileType eSysmonFileType) mut => VT.SaveAs(ref this, bstrFileName, eSysmonFileType);
			public HRESULT Relog(BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) mut => VT.Relog(ref this, bstrFileName, eSysmonFileType, iFilter);
			public HRESULT ClearData() mut => VT.ClearData(ref this);
			public HRESULT get_LogSourceStartTime(out double pDate) mut => VT.get_LogSourceStartTime(ref this, out pDate);
			public HRESULT get_LogSourceStopTime(out double pDate) mut => VT.get_LogSourceStopTime(ref this, out pDate);
			public HRESULT SetLogViewRange(double StartTime, double StopTime) mut => VT.SetLogViewRange(ref this, StartTime, StopTime);
			public HRESULT GetLogViewRange(out double StartTime, out double StopTime) mut => VT.GetLogViewRange(ref this, out StartTime, out StopTime);
			public HRESULT BatchingLock(int16 fLock, SysmonBatchReason eBatchReason) mut => VT.BatchingLock(ref this, fLock, eBatchReason);
			public HRESULT LoadSettings(BSTR bstrSettingFileName) mut => VT.LoadSettings(ref this, bstrSettingFileName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 iAppearance) get_Appearance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iAppearance) put_Appearance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out uint32 pColor) get_BackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, uint32 Color) put_BackColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 iBorderStyle) get_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iBorderStyle) put_BorderStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out uint32 pColor) get_ForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, uint32 Color) put_ForeColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, IFontDisp** ppFont) get_Font;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, IFontDisp* pFont) putref_Font;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, ICounters** ppICounters) get_Counters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowVerticalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowVerticalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowHorizontalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowHorizontalGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowLegend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowLegend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowScaleLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowScaleLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowValueBar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowValueBar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iValue) put_MaximumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 piValue) get_MaximumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iValue) put_MinimumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 piValue) get_MinimumScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, float fValue) put_UpdateInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out float pfValue) get_UpdateInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, DisplayTypeConstants eDisplayType) put_DisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out DisplayTypeConstants peDisplayType) get_DisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ManualUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ManualUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsTitle) put_GraphTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR* pbsTitle) get_GraphTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsTitle) put_YAxisLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR* pbsTitle) get_YAxisLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) CollectSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) UpdateGraph;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) BrowseCounters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) DisplayProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iIndex, ICounterItem** ppICounter) Counter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsPath, ICounterItem** ppICounter) AddCounter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, ICounterItem* pCtr) DeleteCounter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out uint32 pColor) get_BackColorCtl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, uint32 Color) put_BackColorCtl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsFileName) put_LogFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR* bsFileName) get_LogFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, double StartTime) put_LogViewStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out double StartTime) get_LogViewStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, double StopTime) put_LogViewStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out double StopTime) get_LogViewStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out uint32 pColor) get_GridColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, uint32 Color) put_GridColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out uint32 pColor) get_TimeBarColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, uint32 Color) put_TimeBarColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_Highlight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_Highlight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowToolbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowToolbar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) Paste;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) Copy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, ReportValueTypeConstants eReportValueType) put_ReportValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out ReportValueTypeConstants peReportValueType) get_ReportValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_MonitorDuplicateInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_MonitorDuplicateInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iValue) put_DisplayFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 piValue) get_DisplayFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, ILogFiles** ppILogFiles) get_LogFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, DataSourceTypeConstants eDataSourceType) put_DataSourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out DataSourceTypeConstants peDataSourceType) get_DataSourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsSqlDsnName) put_SqlDsnName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR* bsSqlDsnName) get_SqlDsnName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bsSqlLogSetName) put_SqlLogSetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR* bsSqlLogSetName) get_SqlLogSetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_EnableDigitGrouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_EnableDigitGrouping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_EnableToolTips;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_EnableToolTips;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bState) put_ShowTimeAxisLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbState) get_ShowTimeAxisLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bScroll) put_ChartScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int16 pbScroll) get_ChartScroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int32 iNewCount) put_DataPointCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out int32 piDataPointCount) get_DataPointCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 bSelectedCountersOnly) ScaleToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bstrFileName, SysmonFileType eSysmonFileType) SaveAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bstrFileName, SysmonFileType eSysmonFileType, int32 iFilter) Relog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self) ClearData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out double pDate) get_LogSourceStartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out double pDate) get_LogSourceStopTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, double StartTime, double StopTime) SetLogViewRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, out double StartTime, out double StopTime) GetLogViewRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, int16 fLock, SysmonBatchReason eBatchReason) BatchingLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _ISystemMonitorUnion self, BSTR bstrSettingFileName) LoadSettings;
			}
		}
		[CRepr]
		public struct DISystemMonitor : IDispatch
		{
			public const new Guid IID = .(0x13d73d81, 0xc32e, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct DISystemMonitorInternal : IDispatch
		{
			public const new Guid IID = .(0x194eb242, 0xc32c, 0x11cf, 0x93, 0x98, 0x00, 0xaa, 0x00, 0xa3, 0xdd, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ISystemMonitorEvents : IUnknown
		{
			public const new Guid IID = .(0xee660ea0, 0x4abd, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnCounterSelected(int32 Index) mut => VT.OnCounterSelected(ref this, Index);
			public void OnCounterAdded(int32 Index) mut => VT.OnCounterAdded(ref this, Index);
			public void OnCounterDeleted(int32 Index) mut => VT.OnCounterDeleted(ref this, Index);
			public void OnSampleCollected() mut => VT.OnSampleCollected(ref this);
			public void OnDblClick(int32 Index) mut => VT.OnDblClick(ref this, Index);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ISystemMonitorEvents self, int32 Index) OnCounterSelected;
				public new function [CallingConvention(.Stdcall)] void(ref ISystemMonitorEvents self, int32 Index) OnCounterAdded;
				public new function [CallingConvention(.Stdcall)] void(ref ISystemMonitorEvents self, int32 Index) OnCounterDeleted;
				public new function [CallingConvention(.Stdcall)] void(ref ISystemMonitorEvents self) OnSampleCollected;
				public new function [CallingConvention(.Stdcall)] void(ref ISystemMonitorEvents self, int32 Index) OnDblClick;
			}
		}
		[CRepr]
		public struct DISystemMonitorEvents : IDispatch
		{
			public const new Guid IID = .(0x84979930, 0x4ab3, 0x11cf, 0x94, 0x3a, 0x00, 0x80, 0x29, 0x00, 0x43, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryPerformanceCounter(out LARGE_INTEGER lpPerformanceCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryPerformanceFrequency(out LARGE_INTEGER lpFrequency);
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
		public static extern uint32 PerfStartProvider(ref Guid ProviderGuid, PERFLIBREQUEST ControlCallback, out PerfProviderHandle phProvider);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfStartProviderEx(ref Guid ProviderGuid, PERF_PROVIDER_CONTEXT* ProviderContext, out PerfProviderHandle Provider);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfStopProvider(PerfProviderHandle ProviderHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetCounterSetInfo(HANDLE ProviderHandle, out PERF_COUNTERSET_INFO Template, uint32 TemplateSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PERF_COUNTERSET_INSTANCE* PerfCreateInstance(PerfProviderHandle ProviderHandle, in Guid CounterSetGuid, PWSTR Name, uint32 Id);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDeleteInstance(PerfProviderHandle Provider, ref PERF_COUNTERSET_INSTANCE InstanceBlock);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PERF_COUNTERSET_INSTANCE* PerfQueryInstance(HANDLE ProviderHandle, in Guid CounterSetGuid, PWSTR Name, uint32 Id);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetCounterRefValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, void* Address);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetULongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfSetULongLongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfIncrementULongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfIncrementULongLongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDecrementULongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint32 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDecrementULongLongCounterValue(HANDLE Provider, out PERF_COUNTERSET_INSTANCE Instance, uint32 CounterId, uint64 Value);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfEnumerateCounterSet(PWSTR szMachine, Guid* pCounterSetIds, uint32 cCounterSetIds, out uint32 pcCounterSetIdsActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfEnumerateCounterSetInstances(PWSTR szMachine, in Guid pCounterSetId, PERF_INSTANCE_HEADER* pInstances, uint32 cbInstances, out uint32 pcbInstancesActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterSetRegistrationInfo(PWSTR szMachine, in Guid pCounterSetId, PerfRegInfoType requestCode, uint32 requestLangId, uint8* pbRegInfo, uint32 cbRegInfo, out uint32 pcbRegInfoActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfOpenQueryHandle(PWSTR szMachine, out PerfQueryHandle phQuery);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfCloseQueryHandle(HANDLE hQuery);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterInfo(PerfQueryHandle hQuery, PERF_COUNTER_IDENTIFIER* pCounters, uint32 cbCounters, out uint32 pcbCountersActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfQueryCounterData(PerfQueryHandle hQuery, PERF_DATA_HEADER* pCounterBlock, uint32 cbCounterBlock, out uint32 pcbCounterBlockActual);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfAddCounters(PerfQueryHandle hQuery, ref PERF_COUNTER_IDENTIFIER pCounters, uint32 cbCounters);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PerfDeleteCounters(PerfQueryHandle hQuery, ref PERF_COUNTER_IDENTIFIER pCounters, uint32 cbCounters);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDllVersion(PDH_DLL_VERSION* lpdwVersion);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryW(PWSTR szDataSource, uint dwUserData, out int phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryA(PSTR szDataSource, uint dwUserData, out int phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddCounterW(int hQuery, PWSTR szFullCounterPath, uint dwUserData, out int phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddCounterA(int hQuery, PSTR szFullCounterPath, uint dwUserData, out int phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddEnglishCounterW(int hQuery, PWSTR szFullCounterPath, uint dwUserData, out int phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhAddEnglishCounterA(int hQuery, PSTR szFullCounterPath, uint dwUserData, out int phCounter);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCollectQueryDataWithTime(int hQuery, out int64 pllTimeStamp);
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
		public static extern int32 PdhGetFormattedCounterValue(int hCounter, PDH_FMT dwFormat, uint32* lpdwType, out PDH_FMT_COUNTERVALUE pValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetFormattedCounterArrayA(int hCounter, PDH_FMT dwFormat, out uint32 lpdwBufferSize, out uint32 lpdwItemCount, PDH_FMT_COUNTERVALUE_ITEM_A* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetFormattedCounterArrayW(int hCounter, PDH_FMT dwFormat, out uint32 lpdwBufferSize, out uint32 lpdwItemCount, PDH_FMT_COUNTERVALUE_ITEM_W* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterValue(int hCounter, uint32* lpdwType, out PDH_RAW_COUNTER pValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterArrayA(int hCounter, out uint32 lpdwBufferSize, out uint32 lpdwItemCount, PDH_RAW_COUNTER_ITEM_A* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetRawCounterArrayW(int hCounter, out uint32 lpdwBufferSize, out uint32 lpdwItemCount, PDH_RAW_COUNTER_ITEM_W* ItemBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCalculateCounterFromRawValue(int hCounter, PDH_FMT dwFormat, ref PDH_RAW_COUNTER rawValue1, ref PDH_RAW_COUNTER rawValue2, out PDH_FMT_COUNTERVALUE fmtValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhComputeCounterStatistics(int hCounter, PDH_FMT dwFormat, uint32 dwFirstEntry, uint32 dwNumEntries, ref PDH_RAW_COUNTER lpRawValueArray, out PDH_STATISTICS data);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterInfoW(int hCounter, BOOLEAN bRetrieveExplainText, out uint32 pdwBufferSize, PDH_COUNTER_INFO_W* lpBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterInfoA(int hCounter, BOOLEAN bRetrieveExplainText, out uint32 pdwBufferSize, PDH_COUNTER_INFO_A* lpBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetCounterScaleFactor(int hCounter, int32 lFactor);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhConnectMachineW(PWSTR szMachineName);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhConnectMachineA(PSTR szMachineName);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesW(PWSTR szDataSource, PWSTR mszMachineList, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesA(PSTR szDataSource, PSTR mszMachineList, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsW(PWSTR szDataSource, PWSTR szMachineName, PWSTR mszObjectList, out uint32 pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsA(PSTR szDataSource, PSTR szMachineName, PSTR mszObjectList, out uint32 pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR mszCounterList, out uint32 pcchCounterListLength, PWSTR mszInstanceList, out uint32 pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsA(PSTR szDataSource, PSTR szMachineName, PSTR szObjectName, PSTR mszCounterList, out uint32 pcchCounterListLength, PSTR mszInstanceList, out uint32 pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhMakeCounterPathW(ref PDH_COUNTER_PATH_ELEMENTS_W pCounterPathElements, PWSTR szFullPathBuffer, out uint32 pcchBufferSize, PDH_PATH_FLAGS dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhMakeCounterPathA(ref PDH_COUNTER_PATH_ELEMENTS_A pCounterPathElements, PSTR szFullPathBuffer, out uint32 pcchBufferSize, PDH_PATH_FLAGS dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseCounterPathW(PWSTR szFullPathBuffer, PDH_COUNTER_PATH_ELEMENTS_W* pCounterPathElements, out uint32 pdwBufferSize, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseCounterPathA(PSTR szFullPathBuffer, PDH_COUNTER_PATH_ELEMENTS_A* pCounterPathElements, out uint32 pdwBufferSize, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseInstanceNameW(PWSTR szInstanceString, PWSTR szInstanceName, out uint32 pcchInstanceNameLength, PWSTR szParentName, out uint32 pcchParentNameLength, out uint32 lpIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhParseInstanceNameA(PSTR szInstanceString, PSTR szInstanceName, out uint32 pcchInstanceNameLength, PSTR szParentName, out uint32 pcchParentNameLength, out uint32 lpIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathW(PWSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhValidatePathA(PSTR szFullPathBuffer);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szDefaultObjectName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectA(PSTR szDataSource, PSTR szMachineName, PSTR szDefaultObjectName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterW(PWSTR szDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR szDefaultCounterName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterA(PSTR szDataSource, PSTR szMachineName, PSTR szObjectName, PSTR szDefaultCounterName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersW(ref PDH_BROWSE_DLG_CONFIG_W pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersA(ref PDH_BROWSE_DLG_CONFIG_A pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandCounterPathW(PWSTR szWildCardPath, PWSTR mszExpandedPathList, out uint32 pcchPathListLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandCounterPathA(PSTR szWildCardPath, PSTR mszExpandedPathList, out uint32 pcchPathListLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfNameByIndexW(PWSTR szMachineName, uint32 dwNameIndex, PWSTR szNameBuffer, out uint32 pcchNameBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfNameByIndexA(PSTR szMachineName, uint32 dwNameIndex, PSTR szNameBuffer, out uint32 pcchNameBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfIndexByNameW(PWSTR szMachineName, PWSTR szNameBuffer, out uint32 pdwIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhLookupPerfIndexByNameA(PSTR szMachineName, PSTR szNameBuffer, out uint32 pdwIndex);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathA(PSTR szDataSource, PSTR szWildCardPath, PSTR mszExpandedPathList, out uint32 pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathW(PWSTR szDataSource, PWSTR szWildCardPath, PWSTR mszExpandedPathList, out uint32 pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenLogW(PWSTR szLogFileName, PDH_LOG dwAccessFlags, out PDH_LOG_TYPE lpdwLogType, int hQuery, uint32 dwMaxSize, PWSTR szUserCaption, out int phLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenLogA(PSTR szLogFileName, PDH_LOG dwAccessFlags, out PDH_LOG_TYPE lpdwLogType, int hQuery, uint32 dwMaxSize, PSTR szUserCaption, out int phLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogW(int hLog, PWSTR szUserString);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogA(int hLog, PSTR szUserString);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhUpdateLogFileCatalog(int hLog);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetLogFileSize(int hLog, out int64 llSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCloseLog(int hLog, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSelectDataSourceW(HWND hWndOwner, PDH_SELECT_DATA_SOURCE_FLAGS dwFlags, PWSTR szDataSource, out uint32 pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSelectDataSourceA(HWND hWndOwner, PDH_SELECT_DATA_SOURCE_FLAGS dwFlags, PSTR szDataSource, out uint32 pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PdhIsRealTimeQuery(int hQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetQueryTimeRange(int hQuery, ref PDH_TIME_INFO pInfo);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeW(PWSTR szDataSource, out uint32 pdwNumEntries, out PDH_TIME_INFO pInfo, out uint32 pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeA(PSTR szDataSource, out uint32 pdwNumEntries, out PDH_TIME_INFO pInfo, out uint32 pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCollectQueryDataEx(int hQuery, uint32 dwIntervalTime, HANDLE hNewDataEvent);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhFormatFromRawValue(uint32 dwCounterType, PDH_FMT dwFormat, int64* pTimeBase, ref PDH_RAW_COUNTER pRawValue1, ref PDH_RAW_COUNTER pRawValue2, out PDH_FMT_COUNTERVALUE pFmtValue);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetCounterTimeBase(int hCounter, out int64 pTimeBase);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhReadRawLogRecord(int hLog, FILETIME ftRecord, PDH_RAW_LOG_RECORD* pRawLogRecord, out uint32 pdwBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetDefaultRealTimeDataSource(REAL_TIME_DATA_SOURCE_ID_FLAGS dwDataSourceId);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBindInputDataSourceW(out int phDataSource, PWSTR LogFileNameList);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBindInputDataSourceA(out int phDataSource, PSTR LogFileNameList);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhOpenQueryH(int hDataSource, uint dwUserData, out int phQuery);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesHW(int hDataSource, PWSTR mszMachineList, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumMachinesHA(int hDataSource, PSTR mszMachineList, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsHW(int hDataSource, PWSTR szMachineName, PWSTR mszObjectList, out uint32 pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectsHA(int hDataSource, PSTR szMachineName, PSTR mszObjectList, out uint32 pcchBufferSize, PERF_DETAIL dwDetailLevel, BOOL bRefresh);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsHW(int hDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR mszCounterList, out uint32 pcchCounterListLength, PWSTR mszInstanceList, out uint32 pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumObjectItemsHA(int hDataSource, PSTR szMachineName, PSTR szObjectName, PSTR mszCounterList, out uint32 pcchCounterListLength, PSTR mszInstanceList, out uint32 pcchInstanceListLength, PERF_DETAIL dwDetailLevel, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathHW(int hDataSource, PWSTR szWildCardPath, PWSTR mszExpandedPathList, out uint32 pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhExpandWildCardPathHA(int hDataSource, PSTR szWildCardPath, PSTR mszExpandedPathList, out uint32 pcchPathListLength, uint32 dwFlags);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDataSourceTimeRangeH(int hDataSource, out uint32 pdwNumEntries, out PDH_TIME_INFO pInfo, out uint32 pdwBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectHW(int hDataSource, PWSTR szMachineName, PWSTR szDefaultObjectName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfObjectHA(int hDataSource, PSTR szMachineName, PSTR szDefaultObjectName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterHW(int hDataSource, PWSTR szMachineName, PWSTR szObjectName, PWSTR szDefaultCounterName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetDefaultPerfCounterHA(int hDataSource, PSTR szMachineName, PSTR szObjectName, PSTR szDefaultCounterName, out uint32 pcchBufferSize);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersHW(ref PDH_BROWSE_DLG_CONFIG_HW pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhBrowseCountersHA(ref PDH_BROWSE_DLG_CONFIG_HA pBrowseDlgData);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhVerifySQLDBW(PWSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhVerifySQLDBA(PSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCreateSQLTablesW(PWSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhCreateSQLTablesA(PSTR szDataSource);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumLogSetNamesW(PWSTR szDataSource, PWSTR mszDataSetNameList, out uint32 pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhEnumLogSetNamesA(PSTR szDataSource, PSTR mszDataSetNameList, out uint32 pcchBufferLength);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhGetLogSetGUID(int hLog, Guid* pGuid, int32* pRunId);
		[Import("pdh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PdhSetLogSetRunID(int hLog, int32 RunId);
	}
}
