using System;

// namespace System.Diagnostics.Debug
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WOW64_CONTEXT_i386 = 65536;
		public const uint32 WOW64_CONTEXT_i486 = 65536;
		public const uint32 WOW64_CONTEXT_EXCEPTION_ACTIVE = 134217728;
		public const uint32 WOW64_CONTEXT_SERVICE_ACTIVE = 268435456;
		public const uint32 WOW64_CONTEXT_EXCEPTION_REQUEST = 1073741824;
		public const uint32 WOW64_CONTEXT_EXCEPTION_REPORTING = 2147483648;
		public const uint32 WOW64_SIZE_OF_80387_REGISTERS = 80;
		public const uint32 WOW64_MAXIMUM_SUPPORTED_EXTENSION = 512;
		public const uint32 ERROR_DBG_CANCELLED = 3221226695;
		public const uint32 ERROR_DBG_TIMEOUT = 3221226932;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_NO_DOT_COMMANDS = 1;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_NO_EXTENSION_COMMANDS = 2;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_NO_SYMBOLS = 4;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_IS_DOT_COMMAND = 1;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_IS_EXTENSION_COMMAND = 2;
		public const uint32 DEBUG_GET_TEXT_COMPLETIONS_IS_SYMBOL = 4;
		public const uint32 DEBUG_REQUEST_SOURCE_PATH_HAS_SOURCE_SERVER = 0;
		public const uint32 DEBUG_REQUEST_TARGET_EXCEPTION_CONTEXT = 1;
		public const uint32 DEBUG_REQUEST_TARGET_EXCEPTION_THREAD = 2;
		public const uint32 DEBUG_REQUEST_TARGET_EXCEPTION_RECORD = 3;
		public const uint32 DEBUG_REQUEST_GET_ADDITIONAL_CREATE_OPTIONS = 4;
		public const uint32 DEBUG_REQUEST_SET_ADDITIONAL_CREATE_OPTIONS = 5;
		public const uint32 DEBUG_REQUEST_GET_WIN32_MAJOR_MINOR_VERSIONS = 6;
		public const uint32 DEBUG_REQUEST_READ_USER_MINIDUMP_STREAM = 7;
		public const uint32 DEBUG_REQUEST_TARGET_CAN_DETACH = 8;
		public const uint32 DEBUG_REQUEST_SET_LOCAL_IMPLICIT_COMMAND_LINE = 9;
		public const uint32 DEBUG_REQUEST_GET_CAPTURED_EVENT_CODE_OFFSET = 10;
		public const uint32 DEBUG_REQUEST_READ_CAPTURED_EVENT_CODE_STREAM = 11;
		public const uint32 DEBUG_REQUEST_EXT_TYPED_DATA_ANSI = 12;
		public const uint32 DEBUG_REQUEST_GET_EXTENSION_SEARCH_PATH_WIDE = 13;
		public const uint32 DEBUG_REQUEST_GET_TEXT_COMPLETIONS_WIDE = 14;
		public const uint32 DEBUG_REQUEST_GET_CACHED_SYMBOL_INFO = 15;
		public const uint32 DEBUG_REQUEST_ADD_CACHED_SYMBOL_INFO = 16;
		public const uint32 DEBUG_REQUEST_REMOVE_CACHED_SYMBOL_INFO = 17;
		public const uint32 DEBUG_REQUEST_GET_TEXT_COMPLETIONS_ANSI = 18;
		public const uint32 DEBUG_REQUEST_CURRENT_OUTPUT_CALLBACKS_ARE_DML_AWARE = 19;
		public const uint32 DEBUG_REQUEST_GET_OFFSET_UNWIND_INFORMATION = 20;
		public const uint32 DEBUG_REQUEST_GET_DUMP_HEADER = 21;
		public const uint32 DEBUG_REQUEST_SET_DUMP_HEADER = 22;
		public const uint32 DEBUG_REQUEST_MIDORI = 23;
		public const uint32 DEBUG_REQUEST_PROCESS_DESCRIPTORS = 24;
		public const uint32 DEBUG_REQUEST_MISC_INFORMATION = 25;
		public const uint32 DEBUG_REQUEST_OPEN_PROCESS_TOKEN = 26;
		public const uint32 DEBUG_REQUEST_OPEN_THREAD_TOKEN = 27;
		public const uint32 DEBUG_REQUEST_DUPLICATE_TOKEN = 28;
		public const uint32 DEBUG_REQUEST_QUERY_INFO_TOKEN = 29;
		public const uint32 DEBUG_REQUEST_CLOSE_TOKEN = 30;
		public const uint32 DEBUG_REQUEST_WOW_PROCESS = 31;
		public const uint32 DEBUG_REQUEST_WOW_MODULE = 32;
		public const uint32 DEBUG_LIVE_USER_NON_INVASIVE = 33;
		public const uint32 DEBUG_REQUEST_RESUME_THREAD = 34;
		public const uint32 DEBUG_REQUEST_INLINE_QUERY = 35;
		public const uint32 DEBUG_REQUEST_TL_INSTRUMENTATION_AWARE = 36;
		public const uint32 DEBUG_REQUEST_GET_INSTRUMENTATION_VERSION = 37;
		public const uint32 DEBUG_REQUEST_GET_MODULE_ARCHITECTURE = 38;
		public const uint32 DEBUG_SRCFILE_SYMBOL_TOKEN = 0;
		public const uint32 DEBUG_SRCFILE_SYMBOL_TOKEN_SOURCE_COMMAND_WIDE = 1;
		public const uint32 DEBUG_SRCFILE_SYMBOL_CHECKSUMINFO = 2;
		public const uint32 DEBUG_SYMINFO_BREAKPOINT_SOURCE_LINE = 0;
		public const uint32 DEBUG_SYMINFO_IMAGEHLP_MODULEW64 = 1;
		public const uint32 DEBUG_SYMINFO_GET_SYMBOL_NAME_BY_OFFSET_AND_TAG_WIDE = 2;
		public const uint32 DEBUG_SYMINFO_GET_MODULE_SYMBOL_NAMES_AND_OFFSETS = 3;
		public const uint32 DEBUG_SYSOBJINFO_THREAD_BASIC_INFORMATION = 0;
		public const uint32 DEBUG_SYSOBJINFO_THREAD_NAME_WIDE = 1;
		public const uint32 DEBUG_SYSOBJINFO_CURRENT_PROCESS_COOKIE = 2;
		public const uint32 DEBUG_TBINFO_EXIT_STATUS = 1;
		public const uint32 DEBUG_TBINFO_PRIORITY_CLASS = 2;
		public const uint32 DEBUG_TBINFO_PRIORITY = 4;
		public const uint32 DEBUG_TBINFO_TIMES = 8;
		public const uint32 DEBUG_TBINFO_START_OFFSET = 16;
		public const uint32 DEBUG_TBINFO_AFFINITY = 32;
		public const uint32 DEBUG_TBINFO_ALL = 63;
		public const uint32 DEBUG_BREAKPOINT_CODE = 0;
		public const uint32 DEBUG_BREAKPOINT_DATA = 1;
		public const uint32 DEBUG_BREAKPOINT_TIME = 2;
		public const uint32 DEBUG_BREAKPOINT_INLINE = 3;
		public const uint32 DEBUG_BREAKPOINT_GO_ONLY = 1;
		public const uint32 DEBUG_BREAKPOINT_DEFERRED = 2;
		public const uint32 DEBUG_BREAKPOINT_ENABLED = 4;
		public const uint32 DEBUG_BREAKPOINT_ADDER_ONLY = 8;
		public const uint32 DEBUG_BREAKPOINT_ONE_SHOT = 16;
		public const uint32 DEBUG_BREAK_READ = 1;
		public const uint32 DEBUG_BREAK_WRITE = 2;
		public const uint32 DEBUG_BREAK_EXECUTE = 4;
		public const uint32 DEBUG_BREAK_IO = 8;
		public const uint32 DEBUG_ATTACH_KERNEL_CONNECTION = 0;
		public const uint32 DEBUG_ATTACH_LOCAL_KERNEL = 1;
		public const uint32 DEBUG_ATTACH_EXDI_DRIVER = 2;
		public const uint32 DEBUG_ATTACH_INSTALL_DRIVER = 4;
		public const uint32 DEBUG_GET_PROC_DEFAULT = 0;
		public const uint32 DEBUG_GET_PROC_FULL_MATCH = 1;
		public const uint32 DEBUG_GET_PROC_ONLY_MATCH = 2;
		public const uint32 DEBUG_GET_PROC_SERVICE_NAME = 4;
		public const uint32 DEBUG_PROC_DESC_DEFAULT = 0;
		public const uint32 DEBUG_PROC_DESC_NO_PATHS = 1;
		public const uint32 DEBUG_PROC_DESC_NO_SERVICES = 2;
		public const uint32 DEBUG_PROC_DESC_NO_MTS_PACKAGES = 4;
		public const uint32 DEBUG_PROC_DESC_NO_COMMAND_LINE = 8;
		public const uint32 DEBUG_PROC_DESC_NO_SESSION_ID = 16;
		public const uint32 DEBUG_PROC_DESC_NO_USER_NAME = 32;
		public const uint32 DEBUG_PROC_DESC_WITH_PACKAGEFAMILY = 64;
		public const uint32 DEBUG_ATTACH_DEFAULT = 0;
		public const uint32 DEBUG_ATTACH_NONINVASIVE = 1;
		public const uint32 DEBUG_ATTACH_EXISTING = 2;
		public const uint32 DEBUG_ATTACH_NONINVASIVE_NO_SUSPEND = 4;
		public const uint32 DEBUG_ATTACH_INVASIVE_NO_INITIAL_BREAK = 8;
		public const uint32 DEBUG_ATTACH_INVASIVE_RESUME_PROCESS = 16;
		public const uint32 DEBUG_ATTACH_NONINVASIVE_ALLOW_PARTIAL = 32;
		public const uint32 DEBUG_ECREATE_PROCESS_DEFAULT = 0;
		public const uint32 DEBUG_ECREATE_PROCESS_INHERIT_HANDLES = 1;
		public const uint32 DEBUG_ECREATE_PROCESS_USE_VERIFIER_FLAGS = 2;
		public const uint32 DEBUG_ECREATE_PROCESS_USE_IMPLICIT_COMMAND_LINE = 4;
		public const uint32 DEBUG_PROCESS_DETACH_ON_EXIT = 1;
		public const uint32 DEBUG_PROCESS_ONLY_THIS_PROCESS = 2;
		public const uint32 DEBUG_CONNECT_SESSION_DEFAULT = 0;
		public const uint32 DEBUG_CONNECT_SESSION_NO_VERSION = 1;
		public const uint32 DEBUG_CONNECT_SESSION_NO_ANNOUNCE = 2;
		public const uint32 DEBUG_SERVERS_DEBUGGER = 1;
		public const uint32 DEBUG_SERVERS_PROCESS = 2;
		public const uint32 DEBUG_SERVERS_ALL = 3;
		public const uint32 DEBUG_END_PASSIVE = 0;
		public const uint32 DEBUG_END_ACTIVE_TERMINATE = 1;
		public const uint32 DEBUG_END_ACTIVE_DETACH = 2;
		public const uint32 DEBUG_END_REENTRANT = 3;
		public const uint32 DEBUG_END_DISCONNECT = 4;
		public const uint32 DEBUG_OUTPUT_NORMAL = 1;
		public const uint32 DEBUG_OUTPUT_ERROR = 2;
		public const uint32 DEBUG_OUTPUT_WARNING = 4;
		public const uint32 DEBUG_OUTPUT_VERBOSE = 8;
		public const uint32 DEBUG_OUTPUT_PROMPT = 16;
		public const uint32 DEBUG_OUTPUT_PROMPT_REGISTERS = 32;
		public const uint32 DEBUG_OUTPUT_EXTENSION_WARNING = 64;
		public const uint32 DEBUG_OUTPUT_DEBUGGEE = 128;
		public const uint32 DEBUG_OUTPUT_DEBUGGEE_PROMPT = 256;
		public const uint32 DEBUG_OUTPUT_SYMBOLS = 512;
		public const uint32 DEBUG_OUTPUT_STATUS = 1024;
		public const uint32 DEBUG_OUTPUT_XML = 2048;
		public const uint32 DEBUG_IOUTPUT_KD_PROTOCOL = 2147483648;
		public const uint32 DEBUG_IOUTPUT_REMOTING = 1073741824;
		public const uint32 DEBUG_IOUTPUT_BREAKPOINT = 536870912;
		public const uint32 DEBUG_IOUTPUT_EVENT = 268435456;
		public const uint32 DEBUG_IOUTPUT_ADDR_TRANSLATE = 134217728;
		public const uint32 DEBUG_OUTPUT_IDENTITY_DEFAULT = 0;
		public const uint32 DEBUG_CLIENT_UNKNOWN = 0;
		public const uint32 DEBUG_CLIENT_VSINT = 1;
		public const uint32 DEBUG_CLIENT_NTSD = 2;
		public const uint32 DEBUG_CLIENT_NTKD = 3;
		public const uint32 DEBUG_CLIENT_CDB = 4;
		public const uint32 DEBUG_CLIENT_KD = 5;
		public const uint32 DEBUG_CLIENT_WINDBG = 6;
		public const uint32 DEBUG_CLIENT_WINIDE = 7;
		public const uint32 DEBUG_FORMAT_DEFAULT = 0;
		public const uint32 DEBUG_FORMAT_CAB_SECONDARY_ALL_IMAGES = 268435456;
		public const uint32 DEBUG_FORMAT_WRITE_CAB = 536870912;
		public const uint32 DEBUG_FORMAT_CAB_SECONDARY_FILES = 1073741824;
		public const uint32 DEBUG_FORMAT_NO_OVERWRITE = 2147483648;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FULL_MEMORY = 1;
		public const uint32 DEBUG_FORMAT_USER_SMALL_HANDLE_DATA = 2;
		public const uint32 DEBUG_FORMAT_USER_SMALL_UNLOADED_MODULES = 4;
		public const uint32 DEBUG_FORMAT_USER_SMALL_INDIRECT_MEMORY = 8;
		public const uint32 DEBUG_FORMAT_USER_SMALL_DATA_SEGMENTS = 16;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FILTER_MEMORY = 32;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FILTER_PATHS = 64;
		public const uint32 DEBUG_FORMAT_USER_SMALL_PROCESS_THREAD_DATA = 128;
		public const uint32 DEBUG_FORMAT_USER_SMALL_PRIVATE_READ_WRITE_MEMORY = 256;
		public const uint32 DEBUG_FORMAT_USER_SMALL_NO_OPTIONAL_DATA = 512;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FULL_MEMORY_INFO = 1024;
		public const uint32 DEBUG_FORMAT_USER_SMALL_THREAD_INFO = 2048;
		public const uint32 DEBUG_FORMAT_USER_SMALL_CODE_SEGMENTS = 4096;
		public const uint32 DEBUG_FORMAT_USER_SMALL_NO_AUXILIARY_STATE = 8192;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FULL_AUXILIARY_STATE = 16384;
		public const uint32 DEBUG_FORMAT_USER_SMALL_MODULE_HEADERS = 32768;
		public const uint32 DEBUG_FORMAT_USER_SMALL_FILTER_TRIAGE = 65536;
		public const uint32 DEBUG_FORMAT_USER_SMALL_ADD_AVX_XSTATE_CONTEXT = 131072;
		public const uint32 DEBUG_FORMAT_USER_SMALL_IPT_TRACE = 262144;
		public const uint32 DEBUG_FORMAT_USER_SMALL_IGNORE_INACCESSIBLE_MEM = 134217728;
		public const uint32 DEBUG_FORMAT_USER_SMALL_SCAN_PARTIAL_PAGES = 268435456;
		public const uint32 DEBUG_DUMP_FILE_BASE = 4294967295;
		public const uint32 DEBUG_DUMP_FILE_PAGE_FILE_DUMP = 0;
		public const uint32 DEBUG_DUMP_FILE_LOAD_FAILED_INDEX = 4294967295;
		public const uint32 DEBUG_DUMP_FILE_ORIGINAL_CAB_INDEX = 4294967294;
		public const uint32 DEBUG_STATUS_NO_CHANGE = 0;
		public const uint32 DEBUG_STATUS_GO = 1;
		public const uint32 DEBUG_STATUS_GO_HANDLED = 2;
		public const uint32 DEBUG_STATUS_GO_NOT_HANDLED = 3;
		public const uint32 DEBUG_STATUS_STEP_OVER = 4;
		public const uint32 DEBUG_STATUS_STEP_INTO = 5;
		public const uint32 DEBUG_STATUS_BREAK = 6;
		public const uint32 DEBUG_STATUS_NO_DEBUGGEE = 7;
		public const uint32 DEBUG_STATUS_STEP_BRANCH = 8;
		public const uint32 DEBUG_STATUS_IGNORE_EVENT = 9;
		public const uint32 DEBUG_STATUS_RESTART_REQUESTED = 10;
		public const uint32 DEBUG_STATUS_REVERSE_GO = 11;
		public const uint32 DEBUG_STATUS_REVERSE_STEP_BRANCH = 12;
		public const uint32 DEBUG_STATUS_REVERSE_STEP_OVER = 13;
		public const uint32 DEBUG_STATUS_REVERSE_STEP_INTO = 14;
		public const uint32 DEBUG_STATUS_OUT_OF_SYNC = 15;
		public const uint32 DEBUG_STATUS_WAIT_INPUT = 16;
		public const uint32 DEBUG_STATUS_TIMEOUT = 17;
		public const uint32 DEBUG_STATUS_MASK = 31;
		public const uint64 DEBUG_STATUS_INSIDE_WAIT = 4294967296uL;
		public const uint64 DEBUG_STATUS_WAIT_TIMEOUT = 8589934592uL;
		public const uint32 DEBUG_OUTCTL_THIS_CLIENT = 0;
		public const uint32 DEBUG_OUTCTL_ALL_CLIENTS = 1;
		public const uint32 DEBUG_OUTCTL_ALL_OTHER_CLIENTS = 2;
		public const uint32 DEBUG_OUTCTL_IGNORE = 3;
		public const uint32 DEBUG_OUTCTL_LOG_ONLY = 4;
		public const uint32 DEBUG_OUTCTL_SEND_MASK = 7;
		public const uint32 DEBUG_OUTCTL_NOT_LOGGED = 8;
		public const uint32 DEBUG_OUTCTL_OVERRIDE_MASK = 16;
		public const uint32 DEBUG_OUTCTL_DML = 32;
		public const uint32 DEBUG_OUTCTL_AMBIENT_DML = 4294967294;
		public const uint32 DEBUG_OUTCTL_AMBIENT_TEXT = 4294967295;
		public const uint32 DEBUG_OUTCTL_AMBIENT = 4294967295;
		public const uint32 DEBUG_INTERRUPT_ACTIVE = 0;
		public const uint32 DEBUG_INTERRUPT_PASSIVE = 1;
		public const uint32 DEBUG_INTERRUPT_EXIT = 2;
		public const uint32 DEBUG_CURRENT_DEFAULT = 15;
		public const uint32 DEBUG_CURRENT_SYMBOL = 1;
		public const uint32 DEBUG_CURRENT_DISASM = 2;
		public const uint32 DEBUG_CURRENT_REGISTERS = 4;
		public const uint32 DEBUG_CURRENT_SOURCE_LINE = 8;
		public const uint32 DEBUG_DISASM_EFFECTIVE_ADDRESS = 1;
		public const uint32 DEBUG_DISASM_MATCHING_SYMBOLS = 2;
		public const uint32 DEBUG_DISASM_SOURCE_LINE_NUMBER = 4;
		public const uint32 DEBUG_DISASM_SOURCE_FILE_NAME = 8;
		public const uint32 DEBUG_LEVEL_SOURCE = 0;
		public const uint32 DEBUG_LEVEL_ASSEMBLY = 1;
		public const uint32 DEBUG_ENGOPT_IGNORE_DBGHELP_VERSION = 1;
		public const uint32 DEBUG_ENGOPT_IGNORE_EXTENSION_VERSIONS = 2;
		public const uint32 DEBUG_ENGOPT_ALLOW_NETWORK_PATHS = 4;
		public const uint32 DEBUG_ENGOPT_DISALLOW_NETWORK_PATHS = 8;
		public const uint32 DEBUG_ENGOPT_IGNORE_LOADER_EXCEPTIONS = 16;
		public const uint32 DEBUG_ENGOPT_INITIAL_BREAK = 32;
		public const uint32 DEBUG_ENGOPT_INITIAL_MODULE_BREAK = 64;
		public const uint32 DEBUG_ENGOPT_FINAL_BREAK = 128;
		public const uint32 DEBUG_ENGOPT_NO_EXECUTE_REPEAT = 256;
		public const uint32 DEBUG_ENGOPT_FAIL_INCOMPLETE_INFORMATION = 512;
		public const uint32 DEBUG_ENGOPT_ALLOW_READ_ONLY_BREAKPOINTS = 1024;
		public const uint32 DEBUG_ENGOPT_SYNCHRONIZE_BREAKPOINTS = 2048;
		public const uint32 DEBUG_ENGOPT_DISALLOW_SHELL_COMMANDS = 4096;
		public const uint32 DEBUG_ENGOPT_KD_QUIET_MODE = 8192;
		public const uint32 DEBUG_ENGOPT_DISABLE_MANAGED_SUPPORT = 16384;
		public const uint32 DEBUG_ENGOPT_DISABLE_MODULE_SYMBOL_LOAD = 32768;
		public const uint32 DEBUG_ENGOPT_DISABLE_EXECUTION_COMMANDS = 65536;
		public const uint32 DEBUG_ENGOPT_DISALLOW_IMAGE_FILE_MAPPING = 131072;
		public const uint32 DEBUG_ENGOPT_PREFER_DML = 262144;
		public const uint32 DEBUG_ENGOPT_DISABLESQM = 524288;
		public const uint32 DEBUG_ENGOPT_DISABLE_STEPLINES_OPTIONS = 2097152;
		public const uint32 DEBUG_ENGOPT_DEBUGGING_SENSITIVE_DATA = 4194304;
		public const uint32 DEBUG_ENGOPT_PREFER_TRACE_FILES = 8388608;
		public const uint32 DEBUG_ENGOPT_ALL = 15728639;
		public const uint32 DEBUG_ANY_ID = 4294967295;
		public const uint32 DBG_FRAME_DEFAULT = 0;
		public const uint32 DBG_FRAME_IGNORE_INLINE = 4294967295;
		public const uint32 STACK_FRAME_TYPE_INIT = 0;
		public const uint32 STACK_FRAME_TYPE_STACK = 1;
		public const uint32 STACK_FRAME_TYPE_INLINE = 2;
		public const uint32 STACK_FRAME_TYPE_RA = 128;
		public const uint32 STACK_FRAME_TYPE_IGNORE = 255;
		public const uint32 DEBUG_STACK_ARGUMENTS = 1;
		public const uint32 DEBUG_STACK_FUNCTION_INFO = 2;
		public const uint32 DEBUG_STACK_SOURCE_LINE = 4;
		public const uint32 DEBUG_STACK_FRAME_ADDRESSES = 8;
		public const uint32 DEBUG_STACK_COLUMN_NAMES = 16;
		public const uint32 DEBUG_STACK_NONVOLATILE_REGISTERS = 32;
		public const uint32 DEBUG_STACK_FRAME_NUMBERS = 64;
		public const uint32 DEBUG_STACK_PARAMETERS = 128;
		public const uint32 DEBUG_STACK_FRAME_ADDRESSES_RA_ONLY = 256;
		public const uint32 DEBUG_STACK_FRAME_MEMORY_USAGE = 512;
		public const uint32 DEBUG_STACK_PARAMETERS_NEWLINE = 1024;
		public const uint32 DEBUG_STACK_DML = 2048;
		public const uint32 DEBUG_STACK_FRAME_OFFSETS = 4096;
		public const uint32 DEBUG_STACK_PROVIDER = 8192;
		public const uint32 DEBUG_STACK_FRAME_ARCH = 16384;
		public const uint32 DEBUG_CLASS_UNINITIALIZED = 0;
		public const uint32 DEBUG_CLASS_KERNEL = 1;
		public const uint32 DEBUG_CLASS_USER_WINDOWS = 2;
		public const uint32 DEBUG_CLASS_IMAGE_FILE = 3;
		public const uint32 DEBUG_DUMP_SMALL = 1024;
		public const uint32 DEBUG_DUMP_DEFAULT = 1025;
		public const uint32 DEBUG_DUMP_FULL = 1026;
		public const uint32 DEBUG_DUMP_IMAGE_FILE = 1027;
		public const uint32 DEBUG_DUMP_TRACE_LOG = 1028;
		public const uint32 DEBUG_DUMP_WINDOWS_CE = 1029;
		public const uint32 DEBUG_DUMP_ACTIVE = 1030;
		public const uint32 DEBUG_KERNEL_CONNECTION = 0;
		public const uint32 DEBUG_KERNEL_LOCAL = 1;
		public const uint32 DEBUG_KERNEL_EXDI_DRIVER = 2;
		public const uint32 DEBUG_KERNEL_IDNA = 3;
		public const uint32 DEBUG_KERNEL_INSTALL_DRIVER = 4;
		public const uint32 DEBUG_KERNEL_REPT = 5;
		public const uint32 DEBUG_KERNEL_SMALL_DUMP = 1024;
		public const uint32 DEBUG_KERNEL_DUMP = 1025;
		public const uint32 DEBUG_KERNEL_ACTIVE_DUMP = 1030;
		public const uint32 DEBUG_KERNEL_FULL_DUMP = 1026;
		public const uint32 DEBUG_KERNEL_TRACE_LOG = 1028;
		public const uint32 DEBUG_USER_WINDOWS_PROCESS = 0;
		public const uint32 DEBUG_USER_WINDOWS_PROCESS_SERVER = 1;
		public const uint32 DEBUG_USER_WINDOWS_IDNA = 2;
		public const uint32 DEBUG_USER_WINDOWS_REPT = 3;
		public const uint32 DEBUG_USER_WINDOWS_SMALL_DUMP = 1024;
		public const uint32 DEBUG_USER_WINDOWS_DUMP = 1025;
		public const uint32 DEBUG_USER_WINDOWS_DUMP_WINDOWS_CE = 1029;
		public const uint32 DEBUG_EXTENSION_AT_ENGINE = 0;
		public const uint32 DEBUG_EXECUTE_DEFAULT = 0;
		public const uint32 DEBUG_EXECUTE_ECHO = 1;
		public const uint32 DEBUG_EXECUTE_NOT_LOGGED = 2;
		public const uint32 DEBUG_EXECUTE_NO_REPEAT = 4;
		public const uint32 DEBUG_EXECUTE_USER_TYPED = 8;
		public const uint32 DEBUG_EXECUTE_USER_CLICKED = 16;
		public const uint32 DEBUG_EXECUTE_EXTENSION = 32;
		public const uint32 DEBUG_EXECUTE_INTERNAL = 64;
		public const uint32 DEBUG_EXECUTE_SCRIPT = 128;
		public const uint32 DEBUG_EXECUTE_TOOLBAR = 256;
		public const uint32 DEBUG_EXECUTE_MENU = 512;
		public const uint32 DEBUG_EXECUTE_HOTKEY = 1024;
		public const uint32 DEBUG_EXECUTE_EVENT = 2048;
		public const uint32 DEBUG_FILTER_CREATE_THREAD = 0;
		public const uint32 DEBUG_FILTER_EXIT_THREAD = 1;
		public const uint32 DEBUG_FILTER_CREATE_PROCESS = 2;
		public const uint32 DEBUG_FILTER_EXIT_PROCESS = 3;
		public const uint32 DEBUG_FILTER_LOAD_MODULE = 4;
		public const uint32 DEBUG_FILTER_UNLOAD_MODULE = 5;
		public const uint32 DEBUG_FILTER_SYSTEM_ERROR = 6;
		public const uint32 DEBUG_FILTER_INITIAL_BREAKPOINT = 7;
		public const uint32 DEBUG_FILTER_INITIAL_MODULE_LOAD = 8;
		public const uint32 DEBUG_FILTER_DEBUGGEE_OUTPUT = 9;
		public const uint32 DEBUG_FILTER_BREAK = 0;
		public const uint32 DEBUG_FILTER_SECOND_CHANCE_BREAK = 1;
		public const uint32 DEBUG_FILTER_OUTPUT = 2;
		public const uint32 DEBUG_FILTER_IGNORE = 3;
		public const uint32 DEBUG_FILTER_REMOVE = 4;
		public const uint32 DEBUG_FILTER_GO_HANDLED = 0;
		public const uint32 DEBUG_FILTER_GO_NOT_HANDLED = 1;
		public const uint32 DEBUG_WAIT_DEFAULT = 0;
		public const uint32 DEBUG_VALUE_INVALID = 0;
		public const uint32 DEBUG_VALUE_INT8 = 1;
		public const uint32 DEBUG_VALUE_INT16 = 2;
		public const uint32 DEBUG_VALUE_INT32 = 3;
		public const uint32 DEBUG_VALUE_INT64 = 4;
		public const uint32 DEBUG_VALUE_FLOAT32 = 5;
		public const uint32 DEBUG_VALUE_FLOAT64 = 6;
		public const uint32 DEBUG_VALUE_FLOAT80 = 7;
		public const uint32 DEBUG_VALUE_FLOAT82 = 8;
		public const uint32 DEBUG_VALUE_FLOAT128 = 9;
		public const uint32 DEBUG_VALUE_VECTOR64 = 10;
		public const uint32 DEBUG_VALUE_VECTOR128 = 11;
		public const uint32 DEBUG_VALUE_TYPES = 12;
		public const uint32 DEBUG_OUT_TEXT_REPL_DEFAULT = 0;
		public const uint32 DEBUG_ASMOPT_DEFAULT = 0;
		public const uint32 DEBUG_ASMOPT_VERBOSE = 1;
		public const uint32 DEBUG_ASMOPT_NO_CODE_BYTES = 2;
		public const uint32 DEBUG_ASMOPT_IGNORE_OUTPUT_WIDTH = 4;
		public const uint32 DEBUG_ASMOPT_SOURCE_LINE_NUMBER = 8;
		public const uint32 DEBUG_EXPR_MASM = 0;
		public const uint32 DEBUG_EXPR_CPLUSPLUS = 1;
		public const uint32 DEBUG_EINDEX_NAME = 0;
		public const uint32 DEBUG_EINDEX_FROM_START = 0;
		public const uint32 DEBUG_EINDEX_FROM_END = 1;
		public const uint32 DEBUG_EINDEX_FROM_CURRENT = 2;
		public const uint32 DEBUG_LOG_DEFAULT = 0;
		public const uint32 DEBUG_LOG_APPEND = 1;
		public const uint32 DEBUG_LOG_UNICODE = 2;
		public const uint32 DEBUG_LOG_DML = 4;
		public const uint32 DEBUG_SYSVERSTR_SERVICE_PACK = 0;
		public const uint32 DEBUG_SYSVERSTR_BUILD = 1;
		public const uint32 DEBUG_MANAGED_DISABLED = 0;
		public const uint32 DEBUG_MANAGED_ALLOWED = 1;
		public const uint32 DEBUG_MANAGED_DLL_LOADED = 2;
		public const uint32 DEBUG_MANSTR_NONE = 0;
		public const uint32 DEBUG_MANSTR_LOADED_SUPPORT_DLL = 1;
		public const uint32 DEBUG_MANSTR_LOAD_STATUS = 2;
		public const uint32 DEBUG_MANRESET_DEFAULT = 0;
		public const uint32 DEBUG_MANRESET_LOAD_DLL = 1;
		public const uint32 DEBUG_EXEC_FLAGS_NONBLOCK = 1;
		public const uint32 DEBUG_DATA_SPACE_VIRTUAL = 0;
		public const uint32 DEBUG_DATA_SPACE_PHYSICAL = 1;
		public const uint32 DEBUG_DATA_SPACE_CONTROL = 2;
		public const uint32 DEBUG_DATA_SPACE_IO = 3;
		public const uint32 DEBUG_DATA_SPACE_MSR = 4;
		public const uint32 DEBUG_DATA_SPACE_BUS_DATA = 5;
		public const uint32 DEBUG_DATA_SPACE_DEBUGGER_DATA = 6;
		public const uint32 DEBUG_DATA_SPACE_COUNT = 7;
		public const uint32 DEBUG_DATA_KernBase = 24;
		public const uint32 DEBUG_DATA_BreakpointWithStatusAddr = 32;
		public const uint32 DEBUG_DATA_SavedContextAddr = 40;
		public const uint32 DEBUG_DATA_KiCallUserModeAddr = 56;
		public const uint32 DEBUG_DATA_KeUserCallbackDispatcherAddr = 64;
		public const uint32 DEBUG_DATA_PsLoadedModuleListAddr = 72;
		public const uint32 DEBUG_DATA_PsActiveProcessHeadAddr = 80;
		public const uint32 DEBUG_DATA_PspCidTableAddr = 88;
		public const uint32 DEBUG_DATA_ExpSystemResourcesListAddr = 96;
		public const uint32 DEBUG_DATA_ExpPagedPoolDescriptorAddr = 104;
		public const uint32 DEBUG_DATA_ExpNumberOfPagedPoolsAddr = 112;
		public const uint32 DEBUG_DATA_KeTimeIncrementAddr = 120;
		public const uint32 DEBUG_DATA_KeBugCheckCallbackListHeadAddr = 128;
		public const uint32 DEBUG_DATA_KiBugcheckDataAddr = 136;
		public const uint32 DEBUG_DATA_IopErrorLogListHeadAddr = 144;
		public const uint32 DEBUG_DATA_ObpRootDirectoryObjectAddr = 152;
		public const uint32 DEBUG_DATA_ObpTypeObjectTypeAddr = 160;
		public const uint32 DEBUG_DATA_MmSystemCacheStartAddr = 168;
		public const uint32 DEBUG_DATA_MmSystemCacheEndAddr = 176;
		public const uint32 DEBUG_DATA_MmSystemCacheWsAddr = 184;
		public const uint32 DEBUG_DATA_MmPfnDatabaseAddr = 192;
		public const uint32 DEBUG_DATA_MmSystemPtesStartAddr = 200;
		public const uint32 DEBUG_DATA_MmSystemPtesEndAddr = 208;
		public const uint32 DEBUG_DATA_MmSubsectionBaseAddr = 216;
		public const uint32 DEBUG_DATA_MmNumberOfPagingFilesAddr = 224;
		public const uint32 DEBUG_DATA_MmLowestPhysicalPageAddr = 232;
		public const uint32 DEBUG_DATA_MmHighestPhysicalPageAddr = 240;
		public const uint32 DEBUG_DATA_MmNumberOfPhysicalPagesAddr = 248;
		public const uint32 DEBUG_DATA_MmMaximumNonPagedPoolInBytesAddr = 256;
		public const uint32 DEBUG_DATA_MmNonPagedSystemStartAddr = 264;
		public const uint32 DEBUG_DATA_MmNonPagedPoolStartAddr = 272;
		public const uint32 DEBUG_DATA_MmNonPagedPoolEndAddr = 280;
		public const uint32 DEBUG_DATA_MmPagedPoolStartAddr = 288;
		public const uint32 DEBUG_DATA_MmPagedPoolEndAddr = 296;
		public const uint32 DEBUG_DATA_MmPagedPoolInformationAddr = 304;
		public const uint32 DEBUG_DATA_MmPageSize = 312;
		public const uint32 DEBUG_DATA_MmSizeOfPagedPoolInBytesAddr = 320;
		public const uint32 DEBUG_DATA_MmTotalCommitLimitAddr = 328;
		public const uint32 DEBUG_DATA_MmTotalCommittedPagesAddr = 336;
		public const uint32 DEBUG_DATA_MmSharedCommitAddr = 344;
		public const uint32 DEBUG_DATA_MmDriverCommitAddr = 352;
		public const uint32 DEBUG_DATA_MmProcessCommitAddr = 360;
		public const uint32 DEBUG_DATA_MmPagedPoolCommitAddr = 368;
		public const uint32 DEBUG_DATA_MmExtendedCommitAddr = 376;
		public const uint32 DEBUG_DATA_MmZeroedPageListHeadAddr = 384;
		public const uint32 DEBUG_DATA_MmFreePageListHeadAddr = 392;
		public const uint32 DEBUG_DATA_MmStandbyPageListHeadAddr = 400;
		public const uint32 DEBUG_DATA_MmModifiedPageListHeadAddr = 408;
		public const uint32 DEBUG_DATA_MmModifiedNoWritePageListHeadAddr = 416;
		public const uint32 DEBUG_DATA_MmAvailablePagesAddr = 424;
		public const uint32 DEBUG_DATA_MmResidentAvailablePagesAddr = 432;
		public const uint32 DEBUG_DATA_PoolTrackTableAddr = 440;
		public const uint32 DEBUG_DATA_NonPagedPoolDescriptorAddr = 448;
		public const uint32 DEBUG_DATA_MmHighestUserAddressAddr = 456;
		public const uint32 DEBUG_DATA_MmSystemRangeStartAddr = 464;
		public const uint32 DEBUG_DATA_MmUserProbeAddressAddr = 472;
		public const uint32 DEBUG_DATA_KdPrintCircularBufferAddr = 480;
		public const uint32 DEBUG_DATA_KdPrintCircularBufferEndAddr = 488;
		public const uint32 DEBUG_DATA_KdPrintWritePointerAddr = 496;
		public const uint32 DEBUG_DATA_KdPrintRolloverCountAddr = 504;
		public const uint32 DEBUG_DATA_MmLoadedUserImageListAddr = 512;
		public const uint32 DEBUG_DATA_NtBuildLabAddr = 520;
		public const uint32 DEBUG_DATA_KiNormalSystemCall = 528;
		public const uint32 DEBUG_DATA_KiProcessorBlockAddr = 536;
		public const uint32 DEBUG_DATA_MmUnloadedDriversAddr = 544;
		public const uint32 DEBUG_DATA_MmLastUnloadedDriverAddr = 552;
		public const uint32 DEBUG_DATA_MmTriageActionTakenAddr = 560;
		public const uint32 DEBUG_DATA_MmSpecialPoolTagAddr = 568;
		public const uint32 DEBUG_DATA_KernelVerifierAddr = 576;
		public const uint32 DEBUG_DATA_MmVerifierDataAddr = 584;
		public const uint32 DEBUG_DATA_MmAllocatedNonPagedPoolAddr = 592;
		public const uint32 DEBUG_DATA_MmPeakCommitmentAddr = 600;
		public const uint32 DEBUG_DATA_MmTotalCommitLimitMaximumAddr = 608;
		public const uint32 DEBUG_DATA_CmNtCSDVersionAddr = 616;
		public const uint32 DEBUG_DATA_MmPhysicalMemoryBlockAddr = 624;
		public const uint32 DEBUG_DATA_MmSessionBase = 632;
		public const uint32 DEBUG_DATA_MmSessionSize = 640;
		public const uint32 DEBUG_DATA_MmSystemParentTablePage = 648;
		public const uint32 DEBUG_DATA_MmVirtualTranslationBase = 656;
		public const uint32 DEBUG_DATA_OffsetKThreadNextProcessor = 664;
		public const uint32 DEBUG_DATA_OffsetKThreadTeb = 666;
		public const uint32 DEBUG_DATA_OffsetKThreadKernelStack = 668;
		public const uint32 DEBUG_DATA_OffsetKThreadInitialStack = 670;
		public const uint32 DEBUG_DATA_OffsetKThreadApcProcess = 672;
		public const uint32 DEBUG_DATA_OffsetKThreadState = 674;
		public const uint32 DEBUG_DATA_OffsetKThreadBStore = 676;
		public const uint32 DEBUG_DATA_OffsetKThreadBStoreLimit = 678;
		public const uint32 DEBUG_DATA_SizeEProcess = 680;
		public const uint32 DEBUG_DATA_OffsetEprocessPeb = 682;
		public const uint32 DEBUG_DATA_OffsetEprocessParentCID = 684;
		public const uint32 DEBUG_DATA_OffsetEprocessDirectoryTableBase = 686;
		public const uint32 DEBUG_DATA_SizePrcb = 688;
		public const uint32 DEBUG_DATA_OffsetPrcbDpcRoutine = 690;
		public const uint32 DEBUG_DATA_OffsetPrcbCurrentThread = 692;
		public const uint32 DEBUG_DATA_OffsetPrcbMhz = 694;
		public const uint32 DEBUG_DATA_OffsetPrcbCpuType = 696;
		public const uint32 DEBUG_DATA_OffsetPrcbVendorString = 698;
		public const uint32 DEBUG_DATA_OffsetPrcbProcessorState = 700;
		public const uint32 DEBUG_DATA_OffsetPrcbNumber = 702;
		public const uint32 DEBUG_DATA_SizeEThread = 704;
		public const uint32 DEBUG_DATA_KdPrintCircularBufferPtrAddr = 712;
		public const uint32 DEBUG_DATA_KdPrintBufferSizeAddr = 720;
		public const uint32 DEBUG_DATA_MmBadPagesDetected = 800;
		public const uint32 DEBUG_DATA_EtwpDebuggerData = 816;
		public const uint32 DEBUG_DATA_PteBase = 864;
		public const uint32 DEBUG_DATA_PaeEnabled = 100000;
		public const uint32 DEBUG_DATA_SharedUserData = 100008;
		public const uint32 DEBUG_DATA_ProductType = 100016;
		public const uint32 DEBUG_DATA_SuiteMask = 100024;
		public const uint32 DEBUG_DATA_DumpWriterStatus = 100032;
		public const uint32 DEBUG_DATA_DumpFormatVersion = 100040;
		public const uint32 DEBUG_DATA_DumpWriterVersion = 100048;
		public const uint32 DEBUG_DATA_DumpPowerState = 100056;
		public const uint32 DEBUG_DATA_DumpMmStorage = 100064;
		public const uint32 DEBUG_DATA_DumpAttributes = 100072;
		public const uint32 DEBUG_DATA_KPCR_OFFSET = 0;
		public const uint32 DEBUG_DATA_KPRCB_OFFSET = 1;
		public const uint32 DEBUG_DATA_KTHREAD_OFFSET = 2;
		public const uint32 DEBUG_DATA_BASE_TRANSLATION_VIRTUAL_OFFSET = 3;
		public const uint32 DEBUG_DATA_PROCESSOR_IDENTIFICATION = 4;
		public const uint32 DEBUG_DATA_PROCESSOR_SPEED = 5;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_BASIC = 0;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_TYPE_NAME = 1;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_OBJECT_NAME = 2;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_HANDLE_COUNT = 3;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_TYPE_NAME_WIDE = 4;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_OBJECT_NAME_WIDE = 5;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_THREAD_1 = 6;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_MUTANT_1 = 7;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_MUTANT_2 = 8;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_PER_HANDLE_OPERATIONS = 9;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_ALL_HANDLE_OPERATIONS = 10;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_PROCESS_1 = 11;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_PROCESS_2 = 12;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_EVENT_1 = 13;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_SECTION_1 = 14;
		public const uint32 DEBUG_HANDLE_DATA_TYPE_MINI_SEMAPHORE_1 = 15;
		public const uint32 DEBUG_OFFSINFO_VIRTUAL_SOURCE = 1;
		public const uint32 DEBUG_VSOURCE_INVALID = 0;
		public const uint32 DEBUG_VSOURCE_DEBUGGEE = 1;
		public const uint32 DEBUG_VSOURCE_MAPPED_IMAGE = 2;
		public const uint32 DEBUG_VSOURCE_DUMP_WITHOUT_MEMINFO = 3;
		public const uint32 DEBUG_VSEARCH_DEFAULT = 0;
		public const uint32 DEBUG_VSEARCH_WRITABLE_ONLY = 1;
		public const uint32 DEBUG_PHYSICAL_DEFAULT = 0;
		public const uint32 DEBUG_PHYSICAL_CACHED = 1;
		public const uint32 DEBUG_PHYSICAL_UNCACHED = 2;
		public const uint32 DEBUG_PHYSICAL_WRITE_COMBINED = 3;
		public const uint32 DEBUG_EVENT_BREAKPOINT = 1;
		public const uint32 DEBUG_EVENT_EXCEPTION = 2;
		public const uint32 DEBUG_EVENT_CREATE_THREAD = 4;
		public const uint32 DEBUG_EVENT_EXIT_THREAD = 8;
		public const uint32 DEBUG_EVENT_CREATE_PROCESS = 16;
		public const uint32 DEBUG_EVENT_EXIT_PROCESS = 32;
		public const uint32 DEBUG_EVENT_LOAD_MODULE = 64;
		public const uint32 DEBUG_EVENT_UNLOAD_MODULE = 128;
		public const uint32 DEBUG_EVENT_SYSTEM_ERROR = 256;
		public const uint32 DEBUG_EVENT_SESSION_STATUS = 512;
		public const uint32 DEBUG_EVENT_CHANGE_DEBUGGEE_STATE = 1024;
		public const uint32 DEBUG_EVENT_CHANGE_ENGINE_STATE = 2048;
		public const uint32 DEBUG_EVENT_CHANGE_SYMBOL_STATE = 4096;
		public const uint32 DEBUG_EVENT_SERVICE_EXCEPTION = 8192;
		public const uint32 DEBUG_SESSION_ACTIVE = 0;
		public const uint32 DEBUG_SESSION_END_SESSION_ACTIVE_TERMINATE = 1;
		public const uint32 DEBUG_SESSION_END_SESSION_ACTIVE_DETACH = 2;
		public const uint32 DEBUG_SESSION_END_SESSION_PASSIVE = 3;
		public const uint32 DEBUG_SESSION_END = 4;
		public const uint32 DEBUG_SESSION_REBOOT = 5;
		public const uint32 DEBUG_SESSION_HIBERNATE = 6;
		public const uint32 DEBUG_SESSION_FAILURE = 7;
		public const uint32 DEBUG_CDS_ALL = 4294967295;
		public const uint32 DEBUG_CDS_REGISTERS = 1;
		public const uint32 DEBUG_CDS_DATA = 2;
		public const uint32 DEBUG_CDS_REFRESH = 4;
		public const uint32 DEBUG_CDS_REFRESH_EVALUATE = 1;
		public const uint32 DEBUG_CDS_REFRESH_EXECUTE = 2;
		public const uint32 DEBUG_CDS_REFRESH_EXECUTECOMMANDFILE = 3;
		public const uint32 DEBUG_CDS_REFRESH_ADDBREAKPOINT = 4;
		public const uint32 DEBUG_CDS_REFRESH_REMOVEBREAKPOINT = 5;
		public const uint32 DEBUG_CDS_REFRESH_WRITEVIRTUAL = 6;
		public const uint32 DEBUG_CDS_REFRESH_WRITEVIRTUALUNCACHED = 7;
		public const uint32 DEBUG_CDS_REFRESH_WRITEPHYSICAL = 8;
		public const uint32 DEBUG_CDS_REFRESH_WRITEPHYSICAL2 = 9;
		public const uint32 DEBUG_CDS_REFRESH_SETVALUE = 10;
		public const uint32 DEBUG_CDS_REFRESH_SETVALUE2 = 11;
		public const uint32 DEBUG_CDS_REFRESH_SETSCOPE = 12;
		public const uint32 DEBUG_CDS_REFRESH_SETSCOPEFRAMEBYINDEX = 13;
		public const uint32 DEBUG_CDS_REFRESH_SETSCOPEFROMJITDEBUGINFO = 14;
		public const uint32 DEBUG_CDS_REFRESH_SETSCOPEFROMSTOREDEVENT = 15;
		public const uint32 DEBUG_CDS_REFRESH_INLINESTEP = 16;
		public const uint32 DEBUG_CDS_REFRESH_INLINESTEP_PSEUDO = 17;
		public const uint32 DEBUG_CES_ALL = 4294967295;
		public const uint32 DEBUG_CES_CURRENT_THREAD = 1;
		public const uint32 DEBUG_CES_EFFECTIVE_PROCESSOR = 2;
		public const uint32 DEBUG_CES_BREAKPOINTS = 4;
		public const uint32 DEBUG_CES_CODE_LEVEL = 8;
		public const uint32 DEBUG_CES_EXECUTION_STATUS = 16;
		public const uint32 DEBUG_CES_ENGINE_OPTIONS = 32;
		public const uint32 DEBUG_CES_LOG_FILE = 64;
		public const uint32 DEBUG_CES_RADIX = 128;
		public const uint32 DEBUG_CES_EVENT_FILTERS = 256;
		public const uint32 DEBUG_CES_PROCESS_OPTIONS = 512;
		public const uint32 DEBUG_CES_EXTENSIONS = 1024;
		public const uint32 DEBUG_CES_SYSTEMS = 2048;
		public const uint32 DEBUG_CES_ASSEMBLY_OPTIONS = 4096;
		public const uint32 DEBUG_CES_EXPRESSION_SYNTAX = 8192;
		public const uint32 DEBUG_CES_TEXT_REPLACEMENTS = 16384;
		public const uint32 DEBUG_CSS_ALL = 4294967295;
		public const uint32 DEBUG_CSS_LOADS = 1;
		public const uint32 DEBUG_CSS_UNLOADS = 2;
		public const uint32 DEBUG_CSS_SCOPE = 4;
		public const uint32 DEBUG_CSS_PATHS = 8;
		public const uint32 DEBUG_CSS_SYMBOL_OPTIONS = 16;
		public const uint32 DEBUG_CSS_TYPE_OPTIONS = 32;
		public const uint32 DEBUG_CSS_COLLAPSE_CHILDREN = 64;
		public const uint32 DEBUG_OUTCBI_EXPLICIT_FLUSH = 1;
		public const uint32 DEBUG_OUTCBI_TEXT = 2;
		public const uint32 DEBUG_OUTCBI_DML = 4;
		public const uint32 DEBUG_OUTCBI_ANY_FORMAT = 6;
		public const uint32 DEBUG_OUTCB_TEXT = 0;
		public const uint32 DEBUG_OUTCB_DML = 1;
		public const uint32 DEBUG_OUTCB_EXPLICIT_FLUSH = 2;
		public const uint32 DEBUG_OUTCBF_COMBINED_EXPLICIT_FLUSH = 1;
		public const uint32 DEBUG_OUTCBF_DML_HAS_TAGS = 2;
		public const uint32 DEBUG_OUTCBF_DML_HAS_SPECIAL_CHARACTERS = 4;
		public const uint32 DEBUG_REGISTERS_DEFAULT = 0;
		public const uint32 DEBUG_REGISTERS_INT32 = 1;
		public const uint32 DEBUG_REGISTERS_INT64 = 2;
		public const uint32 DEBUG_REGISTERS_FLOAT = 4;
		public const uint32 DEBUG_REGISTERS_ALL = 7;
		public const uint32 DEBUG_REGISTER_SUB_REGISTER = 1;
		public const uint32 DEBUG_REGSRC_DEBUGGEE = 0;
		public const uint32 DEBUG_REGSRC_EXPLICIT = 1;
		public const uint32 DEBUG_REGSRC_FRAME = 2;
		public const uint32 DEBUG_OUTPUT_SYMBOLS_DEFAULT = 0;
		public const uint32 DEBUG_OUTPUT_SYMBOLS_NO_NAMES = 1;
		public const uint32 DEBUG_OUTPUT_SYMBOLS_NO_OFFSETS = 2;
		public const uint32 DEBUG_OUTPUT_SYMBOLS_NO_VALUES = 4;
		public const uint32 DEBUG_OUTPUT_SYMBOLS_NO_TYPES = 16;
		public const uint32 DEBUG_SYMBOL_EXPANSION_LEVEL_MASK = 15;
		public const uint32 DEBUG_SYMBOL_EXPANDED = 16;
		public const uint32 DEBUG_SYMBOL_READ_ONLY = 32;
		public const uint32 DEBUG_SYMBOL_IS_ARRAY = 64;
		public const uint32 DEBUG_SYMBOL_IS_FLOAT = 128;
		public const uint32 DEBUG_SYMBOL_IS_ARGUMENT = 256;
		public const uint32 DEBUG_SYMBOL_IS_LOCAL = 512;
		public const uint32 DEBUG_SYMENT_IS_CODE = 1;
		public const uint32 DEBUG_SYMENT_IS_DATA = 2;
		public const uint32 DEBUG_SYMENT_IS_PARAMETER = 4;
		public const uint32 DEBUG_SYMENT_IS_LOCAL = 8;
		public const uint32 DEBUG_SYMENT_IS_MANAGED = 16;
		public const uint32 DEBUG_SYMENT_IS_SYNTHETIC = 32;
		public const uint32 DEBUG_MODULE_LOADED = 0;
		public const uint32 DEBUG_MODULE_UNLOADED = 1;
		public const uint32 DEBUG_MODULE_USER_MODE = 2;
		public const uint32 DEBUG_MODULE_EXE_MODULE = 4;
		public const uint32 DEBUG_MODULE_EXPLICIT = 8;
		public const uint32 DEBUG_MODULE_SECONDARY = 16;
		public const uint32 DEBUG_MODULE_SYNTHETIC = 32;
		public const uint32 DEBUG_MODULE_SYM_BAD_CHECKSUM = 65536;
		public const uint32 DEBUG_SYMTYPE_NONE = 0;
		public const uint32 DEBUG_SYMTYPE_COFF = 1;
		public const uint32 DEBUG_SYMTYPE_CODEVIEW = 2;
		public const uint32 DEBUG_SYMTYPE_PDB = 3;
		public const uint32 DEBUG_SYMTYPE_EXPORT = 4;
		public const uint32 DEBUG_SYMTYPE_DEFERRED = 5;
		public const uint32 DEBUG_SYMTYPE_SYM = 6;
		public const uint32 DEBUG_SYMTYPE_DIA = 7;
		public const uint32 DEBUG_SCOPE_GROUP_ARGUMENTS = 1;
		public const uint32 DEBUG_SCOPE_GROUP_LOCALS = 2;
		public const uint32 DEBUG_SCOPE_GROUP_ALL = 3;
		public const uint32 DEBUG_SCOPE_GROUP_BY_DATAMODEL = 4;
		public const uint32 DEBUG_OUTTYPE_DEFAULT = 0;
		public const uint32 DEBUG_OUTTYPE_NO_INDENT = 1;
		public const uint32 DEBUG_OUTTYPE_NO_OFFSET = 2;
		public const uint32 DEBUG_OUTTYPE_VERBOSE = 4;
		public const uint32 DEBUG_OUTTYPE_COMPACT_OUTPUT = 8;
		public const uint32 DEBUG_OUTTYPE_ADDRESS_OF_FIELD = 65536;
		public const uint32 DEBUG_OUTTYPE_ADDRESS_AT_END = 131072;
		public const uint32 DEBUG_OUTTYPE_BLOCK_RECURSE = 2097152;
		public const uint32 DEBUG_FIND_SOURCE_DEFAULT = 0;
		public const uint32 DEBUG_FIND_SOURCE_FULL_PATH = 1;
		public const uint32 DEBUG_FIND_SOURCE_BEST_MATCH = 2;
		public const uint32 DEBUG_FIND_SOURCE_NO_SRCSRV = 4;
		public const uint32 DEBUG_FIND_SOURCE_TOKEN_LOOKUP = 8;
		public const uint32 DEBUG_FIND_SOURCE_WITH_CHECKSUM = 16;
		public const uint32 DEBUG_FIND_SOURCE_WITH_CHECKSUM_STRICT = 32;
		public const uint32 MODULE_ORDERS_MASK = 4026531840;
		public const uint32 MODULE_ORDERS_LOADTIME = 268435456;
		public const uint32 MODULE_ORDERS_MODULENAME = 536870912;
		public const uint32 DEBUG_MODNAME_IMAGE = 0;
		public const uint32 DEBUG_MODNAME_MODULE = 1;
		public const uint32 DEBUG_MODNAME_LOADED_IMAGE = 2;
		public const uint32 DEBUG_MODNAME_SYMBOL_FILE = 3;
		public const uint32 DEBUG_MODNAME_MAPPED_IMAGE = 4;
		public const uint32 DEBUG_TYPEOPTS_UNICODE_DISPLAY = 1;
		public const uint32 DEBUG_TYPEOPTS_LONGSTATUS_DISPLAY = 2;
		public const uint32 DEBUG_TYPEOPTS_FORCERADIX_OUTPUT = 4;
		public const uint32 DEBUG_TYPEOPTS_MATCH_MAXSIZE = 8;
		public const uint32 DEBUG_GETMOD_DEFAULT = 0;
		public const uint32 DEBUG_GETMOD_NO_LOADED_MODULES = 1;
		public const uint32 DEBUG_GETMOD_NO_UNLOADED_MODULES = 2;
		public const uint32 DEBUG_ADDSYNTHMOD_DEFAULT = 0;
		public const uint32 DEBUG_ADDSYNTHMOD_ZEROBASE = 1;
		public const uint32 DEBUG_ADDSYNTHSYM_DEFAULT = 0;
		public const uint32 DEBUG_OUTSYM_DEFAULT = 0;
		public const uint32 DEBUG_OUTSYM_FORCE_OFFSET = 1;
		public const uint32 DEBUG_OUTSYM_SOURCE_LINE = 2;
		public const uint32 DEBUG_OUTSYM_ALLOW_DISPLACEMENT = 4;
		public const uint32 DEBUG_GETFNENT_DEFAULT = 0;
		public const uint32 DEBUG_GETFNENT_RAW_ENTRY_ONLY = 1;
		public const uint32 DEBUG_SOURCE_IS_STATEMENT = 1;
		public const uint32 DEBUG_GSEL_DEFAULT = 0;
		public const uint32 DEBUG_GSEL_NO_SYMBOL_LOADS = 1;
		public const uint32 DEBUG_GSEL_ALLOW_LOWER = 2;
		public const uint32 DEBUG_GSEL_ALLOW_HIGHER = 4;
		public const uint32 DEBUG_GSEL_NEAREST_ONLY = 8;
		public const uint32 DEBUG_GSEL_INLINE_CALLSITE = 16;
		public const uint32 DEBUG_FRAME_DEFAULT = 0;
		public const uint32 DEBUG_FRAME_IGNORE_INLINE = 1;
		public const uint32 DEBUG_COMMAND_EXCEPTION_ID = 3688893886;
		public const uint32 DEBUG_CMDEX_INVALID = 0;
		public const uint32 DEBUG_CMDEX_ADD_EVENT_STRING = 1;
		public const uint32 DEBUG_CMDEX_RESET_EVENT_STRINGS = 2;
		public const uint32 DEBUG_EXTINIT_HAS_COMMAND_HELP = 1;
		public const uint32 DEBUG_NOTIFY_SESSION_ACTIVE = 0;
		public const uint32 DEBUG_NOTIFY_SESSION_INACTIVE = 1;
		public const uint32 DEBUG_NOTIFY_SESSION_ACCESSIBLE = 2;
		public const uint32 DEBUG_NOTIFY_SESSION_INACCESSIBLE = 3;
		public const uint32 DEBUG_KNOWN_STRUCT_GET_NAMES = 1;
		public const uint32 DEBUG_KNOWN_STRUCT_GET_SINGLE_LINE_OUTPUT = 2;
		public const uint32 DEBUG_KNOWN_STRUCT_SUPPRESS_TYPE_NAME = 3;
		public const uint32 DEBUG_EXT_QVALUE_DEFAULT = 0;
		public const uint32 DEBUG_EXT_PVALUE_DEFAULT = 0;
		public const uint32 DEBUG_EXT_PVTYPE_IS_VALUE = 0;
		public const uint32 DEBUG_EXT_PVTYPE_IS_POINTER = 1;
		public const uint32 CROSS_PLATFORM_MAXIMUM_PROCESSORS = 2048;
		public const uint32 EXT_API_VERSION_NUMBER = 5;
		public const uint32 EXT_API_VERSION_NUMBER32 = 5;
		public const uint32 EXT_API_VERSION_NUMBER64 = 6;
		public const uint32 IG_KD_CONTEXT = 1;
		public const uint32 IG_READ_CONTROL_SPACE = 2;
		public const uint32 IG_WRITE_CONTROL_SPACE = 3;
		public const uint32 IG_READ_IO_SPACE = 4;
		public const uint32 IG_WRITE_IO_SPACE = 5;
		public const uint32 IG_READ_PHYSICAL = 6;
		public const uint32 IG_WRITE_PHYSICAL = 7;
		public const uint32 IG_READ_IO_SPACE_EX = 8;
		public const uint32 IG_WRITE_IO_SPACE_EX = 9;
		public const uint32 IG_KSTACK_HELP = 10;
		public const uint32 IG_SET_THREAD = 11;
		public const uint32 IG_READ_MSR = 12;
		public const uint32 IG_WRITE_MSR = 13;
		public const uint32 IG_GET_DEBUGGER_DATA = 14;
		public const uint32 IG_GET_KERNEL_VERSION = 15;
		public const uint32 IG_RELOAD_SYMBOLS = 16;
		public const uint32 IG_GET_SET_SYMPATH = 17;
		public const uint32 IG_GET_EXCEPTION_RECORD = 18;
		public const uint32 IG_IS_PTR64 = 19;
		public const uint32 IG_GET_BUS_DATA = 20;
		public const uint32 IG_SET_BUS_DATA = 21;
		public const uint32 IG_DUMP_SYMBOL_INFO = 22;
		public const uint32 IG_LOWMEM_CHECK = 23;
		public const uint32 IG_SEARCH_MEMORY = 24;
		public const uint32 IG_GET_CURRENT_THREAD = 25;
		public const uint32 IG_GET_CURRENT_PROCESS = 26;
		public const uint32 IG_GET_TYPE_SIZE = 27;
		public const uint32 IG_GET_CURRENT_PROCESS_HANDLE = 28;
		public const uint32 IG_GET_INPUT_LINE = 29;
		public const uint32 IG_GET_EXPRESSION_EX = 30;
		public const uint32 IG_TRANSLATE_VIRTUAL_TO_PHYSICAL = 31;
		public const uint32 IG_GET_CACHE_SIZE = 32;
		public const uint32 IG_READ_PHYSICAL_WITH_FLAGS = 33;
		public const uint32 IG_WRITE_PHYSICAL_WITH_FLAGS = 34;
		public const uint32 IG_POINTER_SEARCH_PHYSICAL = 35;
		public const uint32 IG_OBSOLETE_PLACEHOLDER_36 = 36;
		public const uint32 IG_GET_THREAD_OS_INFO = 37;
		public const uint32 IG_GET_CLR_DATA_INTERFACE = 38;
		public const uint32 IG_MATCH_PATTERN_A = 39;
		public const uint32 IG_FIND_FILE = 40;
		public const uint32 IG_TYPED_DATA_OBSOLETE = 41;
		public const uint32 IG_QUERY_TARGET_INTERFACE = 42;
		public const uint32 IG_TYPED_DATA = 43;
		public const uint32 IG_DISASSEMBLE_BUFFER = 44;
		public const uint32 IG_GET_ANY_MODULE_IN_RANGE = 45;
		public const uint32 IG_VIRTUAL_TO_PHYSICAL = 46;
		public const uint32 IG_PHYSICAL_TO_VIRTUAL = 47;
		public const uint32 IG_GET_CONTEXT_EX = 48;
		public const uint32 IG_GET_TEB_ADDRESS = 128;
		public const uint32 IG_GET_PEB_ADDRESS = 129;
		public const uint32 PHYS_FLAG_DEFAULT = 0;
		public const uint32 PHYS_FLAG_CACHED = 1;
		public const uint32 PHYS_FLAG_UNCACHED = 2;
		public const uint32 PHYS_FLAG_WRITE_COMBINED = 3;
		public const uint32 PTR_SEARCH_PHYS_ALL_HITS = 1;
		public const uint32 PTR_SEARCH_PHYS_PTE = 2;
		public const uint32 PTR_SEARCH_PHYS_RANGE_CHECK_ONLY = 4;
		public const uint32 PTR_SEARCH_PHYS_SIZE_SHIFT = 3;
		public const uint32 PTR_SEARCH_NO_SYMBOL_CHECK = 2147483648;
		public const uint32 EXT_FIND_FILE_ALLOW_GIVEN_PATH = 1;
		public const uint32 DEBUG_TYPED_DATA_IS_IN_MEMORY = 1;
		public const uint32 DEBUG_TYPED_DATA_PHYSICAL_DEFAULT = 2;
		public const uint32 DEBUG_TYPED_DATA_PHYSICAL_CACHED = 4;
		public const uint32 DEBUG_TYPED_DATA_PHYSICAL_UNCACHED = 6;
		public const uint32 DEBUG_TYPED_DATA_PHYSICAL_WRITE_COMBINED = 8;
		public const uint32 DEBUG_TYPED_DATA_PHYSICAL_MEMORY = 14;
		public const uint32 EXT_TDF_PHYSICAL_DEFAULT = 2;
		public const uint32 EXT_TDF_PHYSICAL_CACHED = 4;
		public const uint32 EXT_TDF_PHYSICAL_UNCACHED = 6;
		public const uint32 EXT_TDF_PHYSICAL_WRITE_COMBINED = 8;
		public const uint32 EXT_TDF_PHYSICAL_MEMORY = 14;
		public const uint32 WDBGEXTS_ADDRESS_DEFAULT = 0;
		public const uint32 WDBGEXTS_ADDRESS_SEG16 = 1;
		public const uint32 WDBGEXTS_ADDRESS_SEG32 = 2;
		public const uint32 WDBGEXTS_ADDRESS_RESERVED0 = 2147483648;
		public const uint32 DBGKD_VERS_FLAG_MP = 1;
		public const uint32 DBGKD_VERS_FLAG_DATA = 2;
		public const uint32 DBGKD_VERS_FLAG_PTR64 = 4;
		public const uint32 DBGKD_VERS_FLAG_NOMM = 8;
		public const uint32 DBGKD_VERS_FLAG_HSS = 16;
		public const uint32 DBGKD_VERS_FLAG_PARTITIONS = 32;
		public const uint32 DBGKD_VERS_FLAG_HAL_IN_NTOS = 64;
		public const uint32 KD_SECONDARY_VERSION_DEFAULT = 0;
		public const uint32 KD_SECONDARY_VERSION_AMD64_OBSOLETE_CONTEXT_1 = 0;
		public const uint32 KD_SECONDARY_VERSION_AMD64_OBSOLETE_CONTEXT_2 = 1;
		public const uint32 KD_SECONDARY_VERSION_AMD64_CONTEXT = 2;
		public const uint32 CURRENT_KD_SECONDARY_VERSION = 2;
		public const uint32 DBG_DUMP_NO_INDENT = 1;
		public const uint32 DBG_DUMP_NO_OFFSET = 2;
		public const uint32 DBG_DUMP_VERBOSE = 4;
		public const uint32 DBG_DUMP_CALL_FOR_EACH = 8;
		public const uint32 DBG_DUMP_LIST = 32;
		public const uint32 DBG_DUMP_NO_PRINT = 64;
		public const uint32 DBG_DUMP_GET_SIZE_ONLY = 128;
		public const uint32 DBG_DUMP_COMPACT_OUT = 8192;
		public const uint32 DBG_DUMP_ARRAY = 32768;
		public const uint32 DBG_DUMP_ADDRESS_OF_FIELD = 65536;
		public const uint32 DBG_DUMP_ADDRESS_AT_END = 131072;
		public const uint32 DBG_DUMP_COPY_TYPE_DATA = 262144;
		public const uint32 DBG_DUMP_READ_PHYSICAL = 524288;
		public const uint32 DBG_DUMP_FUNCTION_FORMAT = 1048576;
		public const uint32 DBG_DUMP_BLOCK_RECURSE = 2097152;
		public const uint32 DBG_DUMP_MATCH_SIZE = 4194304;
		public const uint32 DBG_RETURN_TYPE = 0;
		public const uint32 DBG_RETURN_SUBTYPES = 0;
		public const uint32 DBG_RETURN_TYPE_VALUES = 0;
		public const uint32 DBG_DUMP_FIELD_CALL_BEFORE_PRINT = 1;
		public const uint32 DBG_DUMP_FIELD_NO_CALLBACK_REQ = 2;
		public const uint32 DBG_DUMP_FIELD_RECUR_ON_THIS = 4;
		public const uint32 DBG_DUMP_FIELD_FULL_NAME = 8;
		public const uint32 DBG_DUMP_FIELD_ARRAY = 16;
		public const uint32 DBG_DUMP_FIELD_COPY_FIELD_DATA = 32;
		public const uint32 DBG_DUMP_FIELD_RETURN_ADDRESS = 4096;
		public const uint32 DBG_DUMP_FIELD_SIZE_IN_BITS = 8192;
		public const uint32 DBG_DUMP_FIELD_NO_PRINT = 16384;
		public const uint32 DBG_DUMP_FIELD_DEFAULT_STRING = 65536;
		public const uint32 DBG_DUMP_FIELD_WCHAR_STRING = 131072;
		public const uint32 DBG_DUMP_FIELD_MULTI_STRING = 262144;
		public const uint32 DBG_DUMP_FIELD_GUID_STRING = 524288;
		public const uint32 DBG_DUMP_FIELD_UTF32_STRING = 1048576;
		public const uint32 MEMORY_READ_ERROR = 1;
		public const uint32 SYMBOL_TYPE_INDEX_NOT_FOUND = 2;
		public const uint32 SYMBOL_TYPE_INFO_NOT_FOUND = 3;
		public const uint32 FIELDS_DID_NOT_MATCH = 4;
		public const uint32 NULL_SYM_DUMP_PARAM = 5;
		public const uint32 NULL_FIELD_NAME = 6;
		public const uint32 INCORRECT_VERSION_INFO = 7;
		public const uint32 EXIT_ON_CONTROLC = 8;
		public const uint32 CANNOT_ALLOCATE_MEMORY = 9;
		public const uint32 INSUFFICIENT_SPACE_TO_COPY = 10;
		public const uint32 ADDRESS_TYPE_INDEX_NOT_FOUND = 11;
		public const uint32 UNAVAILABLE_ERROR = 12;
		public const Guid CATID_ActiveScript = .(0xf0b7a1a1, 0x9847, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		public const Guid CATID_ActiveScriptParse = .(0xf0b7a1a2, 0x9847, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		public const Guid CATID_ActiveScriptEncode = .(0xf0b7a1a3, 0x9847, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		public const Guid OID_VBSSIP = .(0x1629f04e, 0x2799, 0x4db5, 0x8f, 0xe5, 0xac, 0xe1, 0x0f, 0x17, 0xeb, 0xab);
		public const Guid OID_JSSIP = .(0x06c9e010, 0x38ce, 0x11d4, 0xa2, 0xa3, 0x00, 0x10, 0x4b, 0xd3, 0x50, 0x90);
		public const Guid OID_WSFSIP = .(0x1a610570, 0x38ce, 0x11d4, 0xa2, 0xa3, 0x00, 0x10, 0x4b, 0xd3, 0x50, 0x90);
		public const uint32 SCRIPTITEM_ISVISIBLE = 2;
		public const uint32 SCRIPTITEM_ISSOURCE = 4;
		public const uint32 SCRIPTITEM_GLOBALMEMBERS = 8;
		public const uint32 SCRIPTITEM_ISPERSISTENT = 64;
		public const uint32 SCRIPTITEM_CODEONLY = 512;
		public const uint32 SCRIPTITEM_NOCODE = 1024;
		public const uint32 SCRIPTTYPELIB_ISCONTROL = 16;
		public const uint32 SCRIPTTYPELIB_ISPERSISTENT = 64;
		public const uint32 SCRIPTTEXT_DELAYEXECUTION = 1;
		public const uint32 SCRIPTTEXT_ISVISIBLE = 2;
		public const uint32 SCRIPTTEXT_ISEXPRESSION = 32;
		public const uint32 SCRIPTTEXT_ISPERSISTENT = 64;
		public const uint32 SCRIPTTEXT_HOSTMANAGESSOURCE = 128;
		public const uint32 SCRIPTTEXT_ISXDOMAIN = 256;
		public const uint32 SCRIPTTEXT_ISNONUSERCODE = 512;
		public const uint32 SCRIPTPROC_ISEXPRESSION = 32;
		public const uint32 SCRIPTPROC_HOSTMANAGESSOURCE = 128;
		public const uint32 SCRIPTPROC_IMPLICIT_THIS = 256;
		public const uint32 SCRIPTPROC_IMPLICIT_PARENTS = 512;
		public const uint32 SCRIPTPROC_ISXDOMAIN = 1024;
		public const uint32 SCRIPTINFO_IUNKNOWN = 1;
		public const uint32 SCRIPTINFO_ITYPEINFO = 2;
		public const uint32 SCRIPTINTERRUPT_DEBUG = 1;
		public const uint32 SCRIPTINTERRUPT_RAISEEXCEPTION = 2;
		public const uint32 SCRIPTSTAT_STATEMENT_COUNT = 1;
		public const uint32 SCRIPTSTAT_INSTRUCTION_COUNT = 2;
		public const uint32 SCRIPTSTAT_INTSTRUCTION_TIME = 3;
		public const uint32 SCRIPTSTAT_TOTAL_TIME = 4;
		public const uint32 SCRIPT_ENCODE_SECTION = 1;
		public const uint32 SCRIPT_ENCODE_DEFAULT_LANGUAGE = 1;
		public const uint32 SCRIPT_ENCODE_NO_ASP_LANGUAGE = 2;
		public const uint32 SCRIPTPROP_NAME = 0;
		public const uint32 SCRIPTPROP_MAJORVERSION = 1;
		public const uint32 SCRIPTPROP_MINORVERSION = 2;
		public const uint32 SCRIPTPROP_BUILDNUMBER = 3;
		public const uint32 SCRIPTPROP_DELAYEDEVENTSINKING = 4096;
		public const uint32 SCRIPTPROP_CATCHEXCEPTION = 4097;
		public const uint32 SCRIPTPROP_CONVERSIONLCID = 4098;
		public const uint32 SCRIPTPROP_HOSTSTACKREQUIRED = 4099;
		public const uint32 SCRIPTPROP_SCRIPTSAREFULLYTRUSTED = 4100;
		public const uint32 SCRIPTPROP_DEBUGGER = 4352;
		public const uint32 SCRIPTPROP_JITDEBUG = 4353;
		public const uint32 SCRIPTPROP_GCCONTROLSOFTCLOSE = 8192;
		public const uint32 SCRIPTPROP_INTEGERMODE = 12288;
		public const uint32 SCRIPTPROP_STRINGCOMPAREINSTANCE = 12289;
		public const uint32 SCRIPTPROP_INVOKEVERSIONING = 16384;
		public const uint32 SCRIPTPROP_HACK_FIBERSUPPORT = 1879048192;
		public const uint32 SCRIPTPROP_HACK_TRIDENTEVENTSINK = 1879048193;
		public const uint32 SCRIPTPROP_ABBREVIATE_GLOBALNAME_RESOLUTION = 1879048194;
		public const uint32 SCRIPTPROP_HOSTKEEPALIVE = 1879048196;
		public const int32 SCRIPT_E_RECORDED = -2040119292;
		public const int32 SCRIPT_E_REPORTED = -2147352319;
		public const int32 SCRIPT_E_PROPAGATE = -2147352318;
		public const uint32 MINIDUMP_VERSION = 42899;
		public const uint32 MINIDUMP_MISC1_PROCESSOR_POWER_INFO = 4;
		public const uint32 MINIDUMP_MISC3_PROCESS_INTEGRITY = 16;
		public const uint32 MINIDUMP_MISC3_PROCESS_EXECUTE_FLAGS = 32;
		public const uint32 MINIDUMP_MISC3_TIMEZONE = 64;
		public const uint32 MINIDUMP_MISC3_PROTECTED_PROCESS = 128;
		public const uint32 MINIDUMP_MISC4_BUILDSTRING = 256;
		public const uint32 MINIDUMP_MISC5_PROCESS_COOKIE = 512;
		public const uint32 MINIDUMP_SYSMEMINFO1_FILECACHE_TRANSITIONREPURPOSECOUNT_FLAGS = 1;
		public const uint32 MINIDUMP_SYSMEMINFO1_BASICPERF = 2;
		public const uint32 MINIDUMP_SYSMEMINFO1_PERF_CCTOTALDIRTYPAGES_CCDIRTYPAGETHRESHOLD = 4;
		public const uint32 MINIDUMP_SYSMEMINFO1_PERF_RESIDENTAVAILABLEPAGES_SHAREDCOMMITPAGES = 8;
		public const uint32 MINIDUMP_PROCESS_VM_COUNTERS = 1;
		public const uint32 MINIDUMP_PROCESS_VM_COUNTERS_VIRTUALSIZE = 2;
		public const uint32 MINIDUMP_PROCESS_VM_COUNTERS_EX = 4;
		public const uint32 MINIDUMP_PROCESS_VM_COUNTERS_EX2 = 8;
		public const uint32 MINIDUMP_PROCESS_VM_COUNTERS_JOB = 16;
		public const uint32 MAX_SYM_NAME = 2000;
		public const uint32 BIND_NO_BOUND_IMPORTS = 1;
		public const uint32 BIND_NO_UPDATE = 2;
		public const uint32 BIND_ALL_IMAGES = 4;
		public const uint32 BIND_CACHE_IMPORT_DLLS = 8;
		public const uint32 BIND_REPORT_64BIT_VA = 16;
		public const uint32 CHECKSUM_SUCCESS = 0;
		public const uint32 CHECKSUM_OPEN_FAILURE = 1;
		public const uint32 CHECKSUM_MAP_FAILURE = 2;
		public const uint32 CHECKSUM_MAPVIEW_FAILURE = 3;
		public const uint32 CHECKSUM_UNICODE_FAILURE = 4;
		public const uint32 SPLITSYM_REMOVE_PRIVATE = 1;
		public const uint32 SPLITSYM_EXTRACT_ALL = 2;
		public const uint32 SPLITSYM_SYMBOLPATH_IS_SRC = 4;
		public const uint32 CERT_PE_IMAGE_DIGEST_DEBUG_INFO = 1;
		public const uint32 CERT_PE_IMAGE_DIGEST_RESOURCES = 2;
		public const uint32 CERT_PE_IMAGE_DIGEST_ALL_IMPORT_INFO = 4;
		public const uint32 CERT_PE_IMAGE_DIGEST_NON_PE_INFO = 8;
		public const uint32 CERT_SECTION_TYPE_ANY = 255;
		public const uint32 ERROR_IMAGE_NOT_STRIPPED = 34816;
		public const uint32 ERROR_NO_DBG_POINTER = 34817;
		public const uint32 ERROR_NO_PDB_POINTER = 34818;
		public const uint32 UNDNAME_COMPLETE = 0;
		public const uint32 UNDNAME_NO_LEADING_UNDERSCORES = 1;
		public const uint32 UNDNAME_NO_MS_KEYWORDS = 2;
		public const uint32 UNDNAME_NO_FUNCTION_RETURNS = 4;
		public const uint32 UNDNAME_NO_ALLOCATION_MODEL = 8;
		public const uint32 UNDNAME_NO_ALLOCATION_LANGUAGE = 16;
		public const uint32 UNDNAME_NO_MS_THISTYPE = 32;
		public const uint32 UNDNAME_NO_CV_THISTYPE = 64;
		public const uint32 UNDNAME_NO_THISTYPE = 96;
		public const uint32 UNDNAME_NO_ACCESS_SPECIFIERS = 128;
		public const uint32 UNDNAME_NO_THROW_SIGNATURES = 256;
		public const uint32 UNDNAME_NO_MEMBER_TYPE = 512;
		public const uint32 UNDNAME_NO_RETURN_UDT_MODEL = 1024;
		public const uint32 UNDNAME_32_BIT_DECODE = 2048;
		public const uint32 UNDNAME_NAME_ONLY = 4096;
		public const uint32 UNDNAME_NO_ARGUMENTS = 8192;
		public const uint32 UNDNAME_NO_SPECIAL_SYMS = 16384;
		public const uint32 DBHHEADER_PDBGUID = 3;
		public const uint32 INLINE_FRAME_CONTEXT_INIT = 0;
		public const uint32 INLINE_FRAME_CONTEXT_IGNORE = 4294967295;
		public const uint32 SYM_STKWALK_DEFAULT = 0;
		public const uint32 SYM_STKWALK_FORCE_FRAMEPTR = 1;
		public const uint32 SYM_STKWALK_ZEROEXTEND_PTRS = 2;
		public const uint32 API_VERSION_NUMBER = 12;
		public const uint32 SYMFLAG_NULL = 524288;
		public const uint32 SYMFLAG_FUNC_NO_RETURN = 1048576;
		public const uint32 SYMFLAG_SYNTHETIC_ZEROBASE = 2097152;
		public const uint32 SYMFLAG_PUBLIC_CODE = 4194304;
		public const uint32 SYMFLAG_REGREL_ALIASINDIR = 8388608;
		public const uint32 SYMFLAG_FIXUP_ARM64X = 16777216;
		public const uint32 SYMFLAG_GLOBAL = 33554432;
		public const uint32 SYMFLAG_RESET = 2147483648;
		public const uint32 IMAGEHLP_MODULE_REGION_DLLBASE = 1;
		public const uint32 IMAGEHLP_MODULE_REGION_DLLRANGE = 2;
		public const uint32 IMAGEHLP_MODULE_REGION_ADDITIONAL = 4;
		public const uint32 IMAGEHLP_MODULE_REGION_JIT = 8;
		public const uint32 IMAGEHLP_MODULE_REGION_ALL = 255;
		public const uint32 CBA_DEFERRED_SYMBOL_LOAD_START = 1;
		public const uint32 CBA_DEFERRED_SYMBOL_LOAD_COMPLETE = 2;
		public const uint32 CBA_DEFERRED_SYMBOL_LOAD_FAILURE = 3;
		public const uint32 CBA_SYMBOLS_UNLOADED = 4;
		public const uint32 CBA_DUPLICATE_SYMBOL = 5;
		public const uint32 CBA_READ_MEMORY = 6;
		public const uint32 CBA_DEFERRED_SYMBOL_LOAD_CANCEL = 7;
		public const uint32 CBA_SET_OPTIONS = 8;
		public const uint32 CBA_EVENT = 16;
		public const uint32 CBA_DEFERRED_SYMBOL_LOAD_PARTIAL = 32;
		public const uint32 CBA_DEBUG_INFO = 268435456;
		public const uint32 CBA_SRCSRV_INFO = 536870912;
		public const uint32 CBA_SRCSRV_EVENT = 1073741824;
		public const uint32 CBA_UPDATE_STATUS_BAR = 1342177280;
		public const uint32 CBA_ENGINE_PRESENT = 1610612736;
		public const uint32 CBA_CHECK_ENGOPT_DISALLOW_NETWORK_PATHS = 1879048192;
		public const uint32 CBA_CHECK_ARM_MACHINE_THUMB_TYPE_OVERRIDE = 2147483648;
		public const uint32 CBA_XML_LOG = 2415919104;
		public const uint32 CBA_MAP_JIT_SYMBOL = 2684354560;
		public const uint32 EVENT_SRCSPEW_START = 100;
		public const uint32 EVENT_SRCSPEW = 100;
		public const uint32 EVENT_SRCSPEW_END = 199;
		public const uint32 DSLFLAG_MISMATCHED_PDB = 1;
		public const uint32 DSLFLAG_MISMATCHED_DBG = 2;
		public const uint32 FLAG_ENGINE_PRESENT = 4;
		public const uint32 FLAG_ENGOPT_DISALLOW_NETWORK_PATHS = 8;
		public const uint32 FLAG_OVERRIDE_ARM_MACHINE_TYPE = 16;
		public const uint32 SYMOPT_CASE_INSENSITIVE = 1;
		public const uint32 SYMOPT_UNDNAME = 2;
		public const uint32 SYMOPT_DEFERRED_LOADS = 4;
		public const uint32 SYMOPT_NO_CPP = 8;
		public const uint32 SYMOPT_LOAD_LINES = 16;
		public const uint32 SYMOPT_OMAP_FIND_NEAREST = 32;
		public const uint32 SYMOPT_LOAD_ANYTHING = 64;
		public const uint32 SYMOPT_IGNORE_CVREC = 128;
		public const uint32 SYMOPT_NO_UNQUALIFIED_LOADS = 256;
		public const uint32 SYMOPT_FAIL_CRITICAL_ERRORS = 512;
		public const uint32 SYMOPT_EXACT_SYMBOLS = 1024;
		public const uint32 SYMOPT_ALLOW_ABSOLUTE_SYMBOLS = 2048;
		public const uint32 SYMOPT_IGNORE_NT_SYMPATH = 4096;
		public const uint32 SYMOPT_INCLUDE_32BIT_MODULES = 8192;
		public const uint32 SYMOPT_PUBLICS_ONLY = 16384;
		public const uint32 SYMOPT_NO_PUBLICS = 32768;
		public const uint32 SYMOPT_AUTO_PUBLICS = 65536;
		public const uint32 SYMOPT_NO_IMAGE_SEARCH = 131072;
		public const uint32 SYMOPT_SECURE = 262144;
		public const uint32 SYMOPT_NO_PROMPTS = 524288;
		public const uint32 SYMOPT_OVERWRITE = 1048576;
		public const uint32 SYMOPT_IGNORE_IMAGEDIR = 2097152;
		public const uint32 SYMOPT_FLAT_DIRECTORY = 4194304;
		public const uint32 SYMOPT_FAVOR_COMPRESSED = 8388608;
		public const uint32 SYMOPT_ALLOW_ZERO_ADDRESS = 16777216;
		public const uint32 SYMOPT_DISABLE_SYMSRV_AUTODETECT = 33554432;
		public const uint32 SYMOPT_READONLY_CACHE = 67108864;
		public const uint32 SYMOPT_SYMPATH_LAST = 134217728;
		public const uint32 SYMOPT_DISABLE_FAST_SYMBOLS = 268435456;
		public const uint32 SYMOPT_DISABLE_SYMSRV_TIMEOUT = 536870912;
		public const uint32 SYMOPT_DISABLE_SRVSTAR_ON_STARTUP = 1073741824;
		public const uint32 SYMOPT_DEBUG = 2147483648;
		public const uint32 SYM_INLINE_COMP_ERROR = 0;
		public const uint32 SYM_INLINE_COMP_IDENTICAL = 1;
		public const uint32 SYM_INLINE_COMP_STEPIN = 2;
		public const uint32 SYM_INLINE_COMP_STEPOUT = 3;
		public const uint32 SYM_INLINE_COMP_STEPOVER = 4;
		public const uint32 SYM_INLINE_COMP_DIFFERENT = 5;
		public const uint32 ESLFLAG_FULLPATH = 1;
		public const uint32 ESLFLAG_NEAREST = 2;
		public const uint32 ESLFLAG_PREV = 4;
		public const uint32 ESLFLAG_NEXT = 8;
		public const uint32 ESLFLAG_INLINE_SITE = 16;
		public const uint32 SYMENUM_OPTIONS_DEFAULT = 1;
		public const uint32 SYMENUM_OPTIONS_INLINE = 2;
		public const uint32 SYMSEARCH_MASKOBJS = 1;
		public const uint32 SYMSEARCH_RECURSE = 2;
		public const uint32 SYMSEARCH_GLOBALSONLY = 4;
		public const uint32 SYMSEARCH_ALLITEMS = 8;
		public const uint32 EXT_OUTPUT_VER = 1;
		public const uint32 SYMSRV_VERSION = 2;
		public const uint32 SSRVOPT_CALLBACK = 1;
		public const uint32 SSRVOPT_OLDGUIDPTR = 16;
		public const uint32 SSRVOPT_UNATTENDED = 32;
		public const uint32 SSRVOPT_NOCOPY = 64;
		public const uint32 SSRVOPT_GETPATH = 64;
		public const uint32 SSRVOPT_PARENTWIN = 128;
		public const uint32 SSRVOPT_PARAMTYPE = 256;
		public const uint32 SSRVOPT_SECURE = 512;
		public const uint32 SSRVOPT_TRACE = 1024;
		public const uint32 SSRVOPT_SETCONTEXT = 2048;
		public const uint32 SSRVOPT_PROXY = 4096;
		public const uint32 SSRVOPT_DOWNSTREAM_STORE = 8192;
		public const uint32 SSRVOPT_OVERWRITE = 16384;
		public const uint32 SSRVOPT_RESETTOU = 32768;
		public const uint32 SSRVOPT_CALLBACKW = 65536;
		public const uint32 SSRVOPT_FLAT_DEFAULT_STORE = 131072;
		public const uint32 SSRVOPT_PROXYW = 262144;
		public const uint32 SSRVOPT_MESSAGE = 524288;
		public const uint32 SSRVOPT_SERVICE = 1048576;
		public const uint32 SSRVOPT_FAVOR_COMPRESSED = 2097152;
		public const uint32 SSRVOPT_STRING = 4194304;
		public const uint32 SSRVOPT_WINHTTP = 8388608;
		public const uint32 SSRVOPT_WININET = 16777216;
		public const uint32 SSRVOPT_DONT_UNCOMPRESS = 33554432;
		public const uint32 SSRVOPT_DISABLE_PING_HOST = 67108864;
		public const uint32 SSRVOPT_DISABLE_TIMEOUT = 134217728;
		public const uint32 SSRVOPT_ENABLE_COMM_MSG = 268435456;
		public const uint32 SSRVOPT_URI_FILTER = 536870912;
		public const uint32 SSRVOPT_URI_TIERS = 1073741824;
		public const uint32 SSRVOPT_RETRY_APP_HANG = 2147483648;
		public const uint32 SSRVOPT_MAX = 2147483648;
		public const uint32 NUM_SSRVOPTS = 32;
		public const uint32 SSRVURI_HTTP_NORMAL = 1;
		public const uint32 SSRVURI_HTTP_COMPRESSED = 2;
		public const uint32 SSRVURI_HTTP_FILEPTR = 4;
		public const uint32 SSRVURI_UNC_NORMAL = 16;
		public const uint32 SSRVURI_UNC_COMPRESSED = 32;
		public const uint32 SSRVURI_UNC_FILEPTR = 64;
		public const uint32 SSRVURI_HTTP_MASK = 15;
		public const uint32 SSRVURI_UNC_MASK = 240;
		public const uint32 SSRVURI_ALL = 255;
		public const uint32 SSRVURI_NORMAL = 1;
		public const uint32 SSRVURI_COMPRESSED = 2;
		public const uint32 SSRVURI_FILEPTR = 4;
		public const uint32 SSRVACTION_TRACE = 1;
		public const uint32 SSRVACTION_QUERYCANCEL = 2;
		public const uint32 SSRVACTION_EVENT = 3;
		public const uint32 SSRVACTION_EVENTW = 4;
		public const uint32 SSRVACTION_SIZE = 5;
		public const uint32 SSRVACTION_HTTPSTATUS = 6;
		public const uint32 SSRVACTION_XMLOUTPUT = 7;
		public const uint32 SSRVACTION_CHECKSUMSTATUS = 8;
		public const uint32 SYMSTOREOPT_ALT_INDEX = 16;
		public const uint32 SYMSTOREOPT_UNICODE = 32;
		public const uint32 SYMF_OMAP_GENERATED = 1;
		public const uint32 SYMF_OMAP_MODIFIED = 2;
		public const uint32 SYMF_REGISTER = 8;
		public const uint32 SYMF_REGREL = 16;
		public const uint32 SYMF_FRAMEREL = 32;
		public const uint32 SYMF_PARAMETER = 64;
		public const uint32 SYMF_LOCAL = 128;
		public const uint32 SYMF_CONSTANT = 256;
		public const uint32 SYMF_EXPORT = 512;
		public const uint32 SYMF_FORWARDER = 1024;
		public const uint32 SYMF_FUNCTION = 2048;
		public const uint32 SYMF_VIRTUAL = 4096;
		public const uint32 SYMF_THUNK = 8192;
		public const uint32 SYMF_TLSREL = 16384;
		public const uint32 IMAGEHLP_SYMBOL_INFO_VALUEPRESENT = 1;
		public const uint32 IMAGEHLP_SYMBOL_INFO_REGISTER = 8;
		public const uint32 IMAGEHLP_SYMBOL_INFO_REGRELATIVE = 16;
		public const uint32 IMAGEHLP_SYMBOL_INFO_FRAMERELATIVE = 32;
		public const uint32 IMAGEHLP_SYMBOL_INFO_PARAMETER = 64;
		public const uint32 IMAGEHLP_SYMBOL_INFO_LOCAL = 128;
		public const uint32 IMAGEHLP_SYMBOL_INFO_CONSTANT = 256;
		public const uint32 IMAGEHLP_SYMBOL_FUNCTION = 2048;
		public const uint32 IMAGEHLP_SYMBOL_VIRTUAL = 4096;
		public const uint32 IMAGEHLP_SYMBOL_THUNK = 8192;
		public const uint32 IMAGEHLP_SYMBOL_INFO_TLSRELATIVE = 16384;
		public const uint32 IMAGEHLP_RMAP_MAPPED_FLAT = 1;
		public const uint32 IMAGEHLP_RMAP_BIG_ENDIAN = 2;
		public const uint32 IMAGEHLP_RMAP_IGNORE_MISCOMPARE = 4;
		public const uint32 IMAGEHLP_RMAP_FIXUP_ARM64X = 268435456;
		public const uint32 IMAGEHLP_RMAP_LOAD_RW_DATA_SECTIONS = 536870912;
		public const uint32 IMAGEHLP_RMAP_OMIT_SHARED_RW_DATA_SECTIONS = 1073741824;
		public const uint32 IMAGEHLP_RMAP_FIXUP_IMAGEBASE = 2147483648;
		public const uint32 WCT_MAX_NODE_COUNT = 16;
		public const uint32 WCT_OBJNAME_LENGTH = 128;
		public const uint32 WCT_NETWORK_IO_FLAG = 8;
		public const uint32 APPBREAKFLAG_DEBUGGER_BLOCK = 1;
		public const uint32 APPBREAKFLAG_DEBUGGER_HALT = 2;
		public const uint32 APPBREAKFLAG_STEP = 65536;
		public const uint32 APPBREAKFLAG_NESTED = 131072;
		public const uint32 APPBREAKFLAG_STEPTYPE_SOURCE = 0;
		public const uint32 APPBREAKFLAG_STEPTYPE_BYTECODE = 1048576;
		public const uint32 APPBREAKFLAG_STEPTYPE_MACHINE = 2097152;
		public const uint32 APPBREAKFLAG_STEPTYPE_MASK = 15728640;
		public const uint32 APPBREAKFLAG_IN_BREAKPOINT = 2147483648;
		public const uint32 SOURCETEXT_ATTR_KEYWORD = 1;
		public const uint32 SOURCETEXT_ATTR_COMMENT = 2;
		public const uint32 SOURCETEXT_ATTR_NONSOURCE = 4;
		public const uint32 SOURCETEXT_ATTR_OPERATOR = 8;
		public const uint32 SOURCETEXT_ATTR_NUMBER = 16;
		public const uint32 SOURCETEXT_ATTR_STRING = 32;
		public const uint32 SOURCETEXT_ATTR_FUNCTION_START = 64;
		public const uint32 TEXT_DOC_ATTR_READONLY = 1;
		public const uint32 TEXT_DOC_ATTR_TYPE_PRIMARY = 2;
		public const uint32 TEXT_DOC_ATTR_TYPE_WORKER = 4;
		public const uint32 TEXT_DOC_ATTR_TYPE_SCRIPT = 8;
		public const uint32 DEBUG_TEXT_ISEXPRESSION = 1;
		public const uint32 DEBUG_TEXT_RETURNVALUE = 2;
		public const uint32 DEBUG_TEXT_NOSIDEEFFECTS = 4;
		public const uint32 DEBUG_TEXT_ALLOWBREAKPOINTS = 8;
		public const uint32 DEBUG_TEXT_ALLOWERRORREPORT = 16;
		public const uint32 DEBUG_TEXT_EVALUATETOCODECONTEXT = 32;
		public const uint32 DEBUG_TEXT_ISNONUSERCODE = 64;
		public const uint32 THREAD_STATE_RUNNING = 1;
		public const uint32 THREAD_STATE_SUSPENDED = 2;
		public const uint32 THREAD_BLOCKED = 4;
		public const uint32 THREAD_OUT_OF_CONTEXT = 8;
		public const Guid CATID_ActiveScriptAuthor = .(0x0aee2a92, 0xbcbb, 0x11d0, 0x8c, 0x72, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
		public const uint32 FACILITY_JsDEBUG = 3527;
		public const HRESULT E_JsDEBUG_MISMATCHED_RUNTIME = -1916338175;
		public const HRESULT E_JsDEBUG_UNKNOWN_THREAD = -1916338174;
		public const HRESULT E_JsDEBUG_OUTSIDE_OF_VM = -1916338172;
		public const HRESULT E_JsDEBUG_INVALID_MEMORY_ADDRESS = -1916338171;
		public const HRESULT E_JsDEBUG_SOURCE_LOCATION_NOT_FOUND = -1916338170;
		public const HRESULT E_JsDEBUG_RUNTIME_NOT_IN_DEBUG_MODE = -1916338169;
		public const uint32 DMP_PHYSICAL_MEMORY_BLOCK_SIZE_32 = 700;
		public const uint32 DMP_CONTEXT_RECORD_SIZE_32 = 1200;
		public const uint32 DMP_RESERVED_0_SIZE_32 = 1760;
		public const uint32 DMP_RESERVED_2_SIZE_32 = 16;
		public const uint32 DMP_RESERVED_3_SIZE_32 = 56;
		public const uint32 DMP_PHYSICAL_MEMORY_BLOCK_SIZE_64 = 700;
		public const uint32 DMP_CONTEXT_RECORD_SIZE_64 = 3000;
		public const uint32 DMP_RESERVED_0_SIZE_64 = 4008;
		public const uint32 DMP_HEADER_COMMENT_SIZE = 128;
		public const uint32 DUMP_SUMMARY_VALID_KERNEL_VA = 1;
		public const uint32 DUMP_SUMMARY_VALID_CURRENT_USER_VA = 2;
		public const uint32 INTERFACESAFE_FOR_UNTRUSTED_CALLER = 1;
		public const uint32 INTERFACESAFE_FOR_UNTRUSTED_DATA = 2;
		public const uint32 INTERFACE_USES_DISPEX = 4;
		public const uint32 INTERFACE_USES_SECURITY_MANAGER = 8;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_VERSION_10 = 10;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_VERSION_11 = 11;
		public const uint32 WHEA_MAX_MC_BANKS = 32;
		public const uint32 WHEA_ERROR_SOURCE_FLAG_FIRMWAREFIRST = 1;
		public const uint32 WHEA_ERROR_SOURCE_FLAG_GLOBAL = 2;
		public const uint32 WHEA_ERROR_SOURCE_FLAG_GHES_ASSIST = 4;
		public const uint32 WHEA_ERROR_SOURCE_FLAG_DEFAULTSOURCE = 2147483648;
		public const uint32 WHEA_ERROR_SOURCE_INVALID_RELATED_SOURCE = 65535;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_XPFMCE = 0;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_XPFCMC = 1;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_XPFNMI = 2;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_IPFMCA = 3;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_IPFCMC = 4;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_IPFCPE = 5;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_AERROOTPORT = 6;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_AERENDPOINT = 7;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_AERBRIDGE = 8;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_GENERIC = 9;
		public const uint32 WHEA_ERROR_SOURCE_DESCRIPTOR_TYPE_GENERIC_V2 = 10;
		public const uint32 WHEA_XPF_MC_BANK_STATUSFORMAT_IA32MCA = 0;
		public const uint32 WHEA_XPF_MC_BANK_STATUSFORMAT_Intel64MCA = 1;
		public const uint32 WHEA_XPF_MC_BANK_STATUSFORMAT_AMD64MCA = 2;
		public const uint32 WHEA_NOTIFICATION_TYPE_POLLED = 0;
		public const uint32 WHEA_NOTIFICATION_TYPE_EXTERNALINTERRUPT = 1;
		public const uint32 WHEA_NOTIFICATION_TYPE_LOCALINTERRUPT = 2;
		public const uint32 WHEA_NOTIFICATION_TYPE_SCI = 3;
		public const uint32 WHEA_NOTIFICATION_TYPE_NMI = 4;
		public const uint32 WHEA_NOTIFICATION_TYPE_CMCI = 5;
		public const uint32 WHEA_NOTIFICATION_TYPE_MCE = 6;
		public const uint32 WHEA_NOTIFICATION_TYPE_GPIO_SIGNAL = 7;
		public const uint32 WHEA_NOTIFICATION_TYPE_ARMV8_SEA = 8;
		public const uint32 WHEA_NOTIFICATION_TYPE_ARMV8_SEI = 9;
		public const uint32 WHEA_NOTIFICATION_TYPE_EXTERNALINTERRUPT_GSIV = 10;
		public const uint32 WHEA_NOTIFICATION_TYPE_SDEI = 11;
		public const uint32 WHEA_DEVICE_DRIVER_CONFIG_V1 = 1;
		public const uint32 WHEA_DEVICE_DRIVER_CONFIG_V2 = 2;
		public const uint32 WHEA_DEVICE_DRIVER_CONFIG_MIN = 1;
		public const uint32 WHEA_DEVICE_DRIVER_CONFIG_MAX = 2;
		public const uint32 WHEA_DEVICE_DRIVER_BUFFER_SET_V1 = 1;
		public const uint32 WHEA_DEVICE_DRIVER_BUFFER_SET_MIN = 1;
		public const uint32 WHEA_DEVICE_DRIVER_BUFFER_SET_MAX = 1;
		public const uint32 WHEA_DISABLE_OFFLINE = 0;
		public const uint32 WHEA_MEM_PERSISTOFFLINE = 1;
		public const uint32 WHEA_MEM_PFA_DISABLE = 2;
		public const uint32 WHEA_MEM_PFA_PAGECOUNT = 3;
		public const uint32 WHEA_MEM_PFA_THRESHOLD = 4;
		public const uint32 WHEA_MEM_PFA_TIMEOUT = 5;
		public const uint32 WHEA_DISABLE_DUMMY_WRITE = 6;
		public const uint32 WHEA_RESTORE_CMCI_ENABLED = 7;
		public const uint32 WHEA_RESTORE_CMCI_ATTEMPTS = 8;
		public const uint32 WHEA_RESTORE_CMCI_ERR_LIMIT = 9;
		public const uint32 WHEA_CMCI_THRESHOLD_COUNT = 10;
		public const uint32 WHEA_CMCI_THRESHOLD_TIME = 11;
		public const uint32 WHEA_CMCI_THRESHOLD_POLL_COUNT = 12;
		public const uint32 WHEA_PENDING_PAGE_LIST_SZ = 13;
		public const uint32 WHEA_BAD_PAGE_LIST_MAX_SIZE = 14;
		public const uint32 WHEA_BAD_PAGE_LIST_LOCATION = 15;
		public const uint32 WHEA_NOTIFY_ALL_OFFLINES = 16;
		public const uint32 IPMI_OS_SEL_RECORD_VERSION_1 = 1;
		public const uint32 IPMI_OS_SEL_RECORD_VERSION = 1;
		public const uint32 IPMI_IOCTL_INDEX = 1024;
		public const uint32 IOCTL_IPMI_INTERNAL_RECORD_SEL_EVENT = 2232320;
		public const uint32 IPMI_OS_SEL_RECORD_MASK = 65535;
		public const int32 DBGKD_SIMULATION_NONE = 0;
		public const int32 DBGKD_SIMULATION_EXDI = 1;
		public const HRESULT ACTIVPROF_E_PROFILER_PRESENT = -2147220992;
		public const HRESULT ACTIVPROF_E_PROFILER_ABSENT = -2147220991;
		public const HRESULT ACTIVPROF_E_UNABLE_TO_APPLY_ACTION = -2147220990;
		public const uint32 PROFILER_HEAP_OBJECT_NAME_ID_UNAVAILABLE = 4294967295;
		public const int32 sevMax = 4;
		public const uint32 fasaPreferInternalHandler = 1;
		public const uint32 fasaSupportInternalHandler = 2;
		public const uint32 fasaCaseSensitive = 4;
		public const uint32 SCRIPT_CMPL_NOLIST = 0;
		public const uint32 SCRIPT_CMPL_MEMBERLIST = 1;
		public const uint32 SCRIPT_CMPL_ENUMLIST = 2;
		public const uint32 SCRIPT_CMPL_PARAMTIP = 4;
		public const uint32 SCRIPT_CMPL_GLOBALLIST = 8;
		public const uint32 SCRIPT_CMPL_ENUM_TRIGGER = 1;
		public const uint32 SCRIPT_CMPL_MEMBER_TRIGGER = 2;
		public const uint32 SCRIPT_CMPL_PARAM_TRIGGER = 3;
		public const uint32 SCRIPT_CMPL_COMMIT = 4;
		public const uint32 GETATTRTYPE_NORMAL = 0;
		public const uint32 GETATTRTYPE_DEPSCAN = 1;
		public const uint32 GETATTRFLAG_THIS = 256;
		public const uint32 GETATTRFLAG_HUMANTEXT = 32768;
		public const uint32 SOURCETEXT_ATTR_HUMANTEXT = 32768;
		public const uint32 SOURCETEXT_ATTR_IDENTIFIER = 256;
		public const uint32 SOURCETEXT_ATTR_MEMBERLOOKUP = 512;
		public const uint32 SOURCETEXT_ATTR_THIS = 1024;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SYM_LOAD_FLAGS : uint32
		{
			SLMFLAG_NONE = 0,
			SLMFLAG_VIRTUAL = 1,
			SLMFLAG_ALT_INDEX = 2,
			SLMFLAG_NO_SYMBOLS = 4,
		}
		[AllowDuplicates]
		public enum IMAGE_SECTION_CHARACTERISTICS : uint32
		{
			IMAGE_SCN_TYPE_NO_PAD = 8,
			IMAGE_SCN_CNT_CODE = 32,
			IMAGE_SCN_CNT_INITIALIZED_DATA = 64,
			IMAGE_SCN_CNT_UNINITIALIZED_DATA = 128,
			IMAGE_SCN_LNK_OTHER = 256,
			IMAGE_SCN_LNK_INFO = 512,
			IMAGE_SCN_LNK_REMOVE = 2048,
			IMAGE_SCN_LNK_COMDAT = 4096,
			IMAGE_SCN_NO_DEFER_SPEC_EXC = 16384,
			IMAGE_SCN_GPREL = 32768,
			IMAGE_SCN_MEM_FARDATA = 32768,
			IMAGE_SCN_MEM_PURGEABLE = 131072,
			IMAGE_SCN_MEM_16BIT = 131072,
			IMAGE_SCN_MEM_LOCKED = 262144,
			IMAGE_SCN_MEM_PRELOAD = 524288,
			IMAGE_SCN_ALIGN_1BYTES = 1048576,
			IMAGE_SCN_ALIGN_2BYTES = 2097152,
			IMAGE_SCN_ALIGN_4BYTES = 3145728,
			IMAGE_SCN_ALIGN_8BYTES = 4194304,
			IMAGE_SCN_ALIGN_16BYTES = 5242880,
			IMAGE_SCN_ALIGN_32BYTES = 6291456,
			IMAGE_SCN_ALIGN_64BYTES = 7340032,
			IMAGE_SCN_ALIGN_128BYTES = 8388608,
			IMAGE_SCN_ALIGN_256BYTES = 9437184,
			IMAGE_SCN_ALIGN_512BYTES = 10485760,
			IMAGE_SCN_ALIGN_1024BYTES = 11534336,
			IMAGE_SCN_ALIGN_2048BYTES = 12582912,
			IMAGE_SCN_ALIGN_4096BYTES = 13631488,
			IMAGE_SCN_ALIGN_8192BYTES = 14680064,
			IMAGE_SCN_ALIGN_MASK = 15728640,
			IMAGE_SCN_LNK_NRELOC_OVFL = 16777216,
			IMAGE_SCN_MEM_DISCARDABLE = 33554432,
			IMAGE_SCN_MEM_NOT_CACHED = 67108864,
			IMAGE_SCN_MEM_NOT_PAGED = 134217728,
			IMAGE_SCN_MEM_SHARED = 268435456,
			IMAGE_SCN_MEM_EXECUTE = 536870912,
			IMAGE_SCN_MEM_READ = 1073741824,
			IMAGE_SCN_MEM_WRITE = 2147483648,
			IMAGE_SCN_SCALE_INDEX = 1,
		}
		[AllowDuplicates]
		public enum IMAGE_FILE_MACHINE : uint16
		{
			IMAGE_FILE_MACHINE_AXP64 = 644,
			IMAGE_FILE_MACHINE_I386 = 332,
			IMAGE_FILE_MACHINE_IA64 = 512,
			IMAGE_FILE_MACHINE_AMD64 = 34404,
			IMAGE_FILE_MACHINE_UNKNOWN = 0,
			IMAGE_FILE_MACHINE_TARGET_HOST = 1,
			IMAGE_FILE_MACHINE_R3000 = 354,
			IMAGE_FILE_MACHINE_R4000 = 358,
			IMAGE_FILE_MACHINE_R10000 = 360,
			IMAGE_FILE_MACHINE_WCEMIPSV2 = 361,
			IMAGE_FILE_MACHINE_ALPHA = 388,
			IMAGE_FILE_MACHINE_SH3 = 418,
			IMAGE_FILE_MACHINE_SH3DSP = 419,
			IMAGE_FILE_MACHINE_SH3E = 420,
			IMAGE_FILE_MACHINE_SH4 = 422,
			IMAGE_FILE_MACHINE_SH5 = 424,
			IMAGE_FILE_MACHINE_ARM = 448,
			IMAGE_FILE_MACHINE_THUMB = 450,
			IMAGE_FILE_MACHINE_ARMNT = 452,
			IMAGE_FILE_MACHINE_AM33 = 467,
			IMAGE_FILE_MACHINE_POWERPC = 496,
			IMAGE_FILE_MACHINE_POWERPCFP = 497,
			IMAGE_FILE_MACHINE_MIPS16 = 614,
			IMAGE_FILE_MACHINE_ALPHA64 = 644,
			IMAGE_FILE_MACHINE_MIPSFPU = 870,
			IMAGE_FILE_MACHINE_MIPSFPU16 = 1126,
			IMAGE_FILE_MACHINE_TRICORE = 1312,
			IMAGE_FILE_MACHINE_CEF = 3311,
			IMAGE_FILE_MACHINE_EBC = 3772,
			IMAGE_FILE_MACHINE_M32R = 36929,
			IMAGE_FILE_MACHINE_ARM64 = 43620,
			IMAGE_FILE_MACHINE_CEE = 49390,
		}
		[AllowDuplicates]
		public enum IMAGE_SUBSYSTEM : uint16
		{
			IMAGE_SUBSYSTEM_UNKNOWN = 0,
			IMAGE_SUBSYSTEM_NATIVE = 1,
			IMAGE_SUBSYSTEM_WINDOWS_GUI = 2,
			IMAGE_SUBSYSTEM_WINDOWS_CUI = 3,
			IMAGE_SUBSYSTEM_OS2_CUI = 5,
			IMAGE_SUBSYSTEM_POSIX_CUI = 7,
			IMAGE_SUBSYSTEM_NATIVE_WINDOWS = 8,
			IMAGE_SUBSYSTEM_WINDOWS_CE_GUI = 9,
			IMAGE_SUBSYSTEM_EFI_APPLICATION = 10,
			IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER = 11,
			IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER = 12,
			IMAGE_SUBSYSTEM_EFI_ROM = 13,
			IMAGE_SUBSYSTEM_XBOX = 14,
			IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION = 16,
			IMAGE_SUBSYSTEM_XBOX_CODE_CATALOG = 17,
		}
		[AllowDuplicates]
		public enum IMAGE_DLL_CHARACTERISTICS : uint16
		{
			IMAGE_DLLCHARACTERISTICS_HIGH_ENTROPY_VA = 32,
			IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE = 64,
			IMAGE_DLLCHARACTERISTICS_FORCE_INTEGRITY = 128,
			IMAGE_DLLCHARACTERISTICS_NX_COMPAT = 256,
			IMAGE_DLLCHARACTERISTICS_NO_ISOLATION = 512,
			IMAGE_DLLCHARACTERISTICS_NO_SEH = 1024,
			IMAGE_DLLCHARACTERISTICS_NO_BIND = 2048,
			IMAGE_DLLCHARACTERISTICS_APPCONTAINER = 4096,
			IMAGE_DLLCHARACTERISTICS_WDM_DRIVER = 8192,
			IMAGE_DLLCHARACTERISTICS_GUARD_CF = 16384,
			IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE = 32768,
			IMAGE_DLLCHARACTERISTICS_EX_CET_COMPAT = 1,
			IMAGE_DLLCHARACTERISTICS_EX_CET_COMPAT_STRICT_MODE = 2,
			IMAGE_DLLCHARACTERISTICS_EX_CET_SET_CONTEXT_IP_VALIDATION_RELAXED_MODE = 4,
			IMAGE_DLLCHARACTERISTICS_EX_CET_DYNAMIC_APIS_ALLOW_IN_PROC = 8,
			IMAGE_DLLCHARACTERISTICS_EX_CET_RESERVED_1 = 16,
			IMAGE_DLLCHARACTERISTICS_EX_CET_RESERVED_2 = 32,
		}
		[AllowDuplicates]
		public enum IMAGE_OPTIONAL_HEADER_MAGIC : uint16
		{
			IMAGE_NT_OPTIONAL_HDR_MAGIC = 523,
			IMAGE_NT_OPTIONAL_HDR32_MAGIC = 267,
			IMAGE_NT_OPTIONAL_HDR64_MAGIC = 523,
			IMAGE_ROM_OPTIONAL_HDR_MAGIC = 263,
		}
		[AllowDuplicates]
		public enum BUGCHECK_ERROR : uint32
		{
			HARDWARE_PROFILE_UNDOCKED_STRING = 1073807361,
			HARDWARE_PROFILE_DOCKED_STRING = 1073807362,
			HARDWARE_PROFILE_UNKNOWN_STRING = 1073807363,
			WINDOWS_NT_BANNER = 1073741950,
			WINDOWS_NT_CSD_STRING = 1073741959,
			WINDOWS_NT_INFO_STRING = 1073741960,
			WINDOWS_NT_MP_STRING = 1073741961,
			THREAD_TERMINATE_HELD_MUTEX = 1073741962,
			WINDOWS_NT_INFO_STRING_PLURAL = 1073741981,
			WINDOWS_NT_RC_STRING = 1073741982,
			APC_INDEX_MISMATCH = 1,
			DEVICE_QUEUE_NOT_BUSY = 2,
			INVALID_AFFINITY_SET = 3,
			INVALID_DATA_ACCESS_TRAP = 4,
			INVALID_PROCESS_ATTACH_ATTEMPT = 5,
			INVALID_PROCESS_DETACH_ATTEMPT = 6,
			INVALID_SOFTWARE_INTERRUPT = 7,
			IRQL_NOT_DISPATCH_LEVEL = 8,
			IRQL_NOT_GREATER_OR_EQUAL = 9,
			IRQL_NOT_LESS_OR_EQUAL = 10,
			NO_EXCEPTION_HANDLING_SUPPORT = 11,
			MAXIMUM_WAIT_OBJECTS_EXCEEDED = 12,
			MUTEX_LEVEL_NUMBER_VIOLATION = 13,
			NO_USER_MODE_CONTEXT = 14,
			SPIN_LOCK_ALREADY_OWNED = 15,
			SPIN_LOCK_NOT_OWNED = 16,
			THREAD_NOT_MUTEX_OWNER = 17,
			TRAP_CAUSE_UNKNOWN = 18,
			EMPTY_THREAD_REAPER_LIST = 19,
			CREATE_DELETE_LOCK_NOT_LOCKED = 20,
			LAST_CHANCE_CALLED_FROM_KMODE = 21,
			CID_HANDLE_CREATION = 22,
			CID_HANDLE_DELETION = 23,
			REFERENCE_BY_POINTER = 24,
			BAD_POOL_HEADER = 25,
			MEMORY_MANAGEMENT = 26,
			PFN_SHARE_COUNT = 27,
			PFN_REFERENCE_COUNT = 28,
			NO_SPIN_LOCK_AVAILABLE = 29,
			KMODE_EXCEPTION_NOT_HANDLED = 30,
			SHARED_RESOURCE_CONV_ERROR = 31,
			KERNEL_APC_PENDING_DURING_EXIT = 32,
			QUOTA_UNDERFLOW = 33,
			FILE_SYSTEM = 34,
			FAT_FILE_SYSTEM = 35,
			NTFS_FILE_SYSTEM = 36,
			NPFS_FILE_SYSTEM = 37,
			CDFS_FILE_SYSTEM = 38,
			RDR_FILE_SYSTEM = 39,
			CORRUPT_ACCESS_TOKEN = 40,
			SECURITY_SYSTEM = 41,
			INCONSISTENT_IRP = 42,
			PANIC_STACK_SWITCH = 43,
			PORT_DRIVER_INTERNAL = 44,
			SCSI_DISK_DRIVER_INTERNAL = 45,
			DATA_BUS_ERROR = 46,
			INSTRUCTION_BUS_ERROR = 47,
			SET_OF_INVALID_CONTEXT = 48,
			PHASE0_INITIALIZATION_FAILED = 49,
			PHASE1_INITIALIZATION_FAILED = 50,
			UNEXPECTED_INITIALIZATION_CALL = 51,
			CACHE_MANAGER = 52,
			NO_MORE_IRP_STACK_LOCATIONS = 53,
			DEVICE_REFERENCE_COUNT_NOT_ZERO = 54,
			FLOPPY_INTERNAL_ERROR = 55,
			SERIAL_DRIVER_INTERNAL = 56,
			SYSTEM_EXIT_OWNED_MUTEX = 57,
			SYSTEM_UNWIND_PREVIOUS_USER = 58,
			SYSTEM_SERVICE_EXCEPTION = 59,
			INTERRUPT_UNWIND_ATTEMPTED = 60,
			INTERRUPT_EXCEPTION_NOT_HANDLED = 61,
			MULTIPROCESSOR_CONFIGURATION_NOT_SUPPORTED = 62,
			NO_MORE_SYSTEM_PTES = 63,
			TARGET_MDL_TOO_SMALL = 64,
			MUST_SUCCEED_POOL_EMPTY = 65,
			ATDISK_DRIVER_INTERNAL = 66,
			NO_SUCH_PARTITION = 67,
			MULTIPLE_IRP_COMPLETE_REQUESTS = 68,
			INSUFFICIENT_SYSTEM_MAP_REGS = 69,
			DEREF_UNKNOWN_LOGON_SESSION = 70,
			REF_UNKNOWN_LOGON_SESSION = 71,
			CANCEL_STATE_IN_COMPLETED_IRP = 72,
			PAGE_FAULT_WITH_INTERRUPTS_OFF = 73,
			IRQL_GT_ZERO_AT_SYSTEM_SERVICE = 74,
			STREAMS_INTERNAL_ERROR = 75,
			FATAL_UNHANDLED_HARD_ERROR = 76,
			NO_PAGES_AVAILABLE = 77,
			PFN_LIST_CORRUPT = 78,
			NDIS_INTERNAL_ERROR = 79,
			PAGE_FAULT_IN_NONPAGED_AREA = 80,
			PAGE_FAULT_IN_NONPAGED_AREA_M = 268435536,
			REGISTRY_ERROR = 81,
			MAILSLOT_FILE_SYSTEM = 82,
			NO_BOOT_DEVICE = 83,
			LM_SERVER_INTERNAL_ERROR = 84,
			DATA_COHERENCY_EXCEPTION = 85,
			INSTRUCTION_COHERENCY_EXCEPTION = 86,
			XNS_INTERNAL_ERROR = 87,
			VOLMGRX_INTERNAL_ERROR = 88,
			PINBALL_FILE_SYSTEM = 89,
			CRITICAL_SERVICE_FAILED = 90,
			SET_ENV_VAR_FAILED = 91,
			HAL_INITIALIZATION_FAILED = 92,
			UNSUPPORTED_PROCESSOR = 93,
			OBJECT_INITIALIZATION_FAILED = 94,
			SECURITY_INITIALIZATION_FAILED = 95,
			PROCESS_INITIALIZATION_FAILED = 96,
			HAL1_INITIALIZATION_FAILED = 97,
			OBJECT1_INITIALIZATION_FAILED = 98,
			SECURITY1_INITIALIZATION_FAILED = 99,
			SYMBOLIC_INITIALIZATION_FAILED = 100,
			MEMORY1_INITIALIZATION_FAILED = 101,
			CACHE_INITIALIZATION_FAILED = 102,
			CONFIG_INITIALIZATION_FAILED = 103,
			FILE_INITIALIZATION_FAILED = 104,
			IO1_INITIALIZATION_FAILED = 105,
			LPC_INITIALIZATION_FAILED = 106,
			PROCESS1_INITIALIZATION_FAILED = 107,
			REFMON_INITIALIZATION_FAILED = 108,
			SESSION1_INITIALIZATION_FAILED = 109,
			BOOTPROC_INITIALIZATION_FAILED = 110,
			VSL_INITIALIZATION_FAILED = 111,
			SOFT_RESTART_FATAL_ERROR = 112,
			ASSIGN_DRIVE_LETTERS_FAILED = 114,
			CONFIG_LIST_FAILED = 115,
			BAD_SYSTEM_CONFIG_INFO = 116,
			CANNOT_WRITE_CONFIGURATION = 117,
			PROCESS_HAS_LOCKED_PAGES = 118,
			KERNEL_STACK_INPAGE_ERROR = 119,
			PHASE0_EXCEPTION = 120,
			MISMATCHED_HAL = 121,
			KERNEL_DATA_INPAGE_ERROR = 122,
			INACCESSIBLE_BOOT_DEVICE = 123,
			BUGCODE_NDIS_DRIVER = 124,
			INSTALL_MORE_MEMORY = 125,
			SYSTEM_THREAD_EXCEPTION_NOT_HANDLED = 126,
			SYSTEM_THREAD_EXCEPTION_NOT_HANDLED_M = 268435582,
			UNEXPECTED_KERNEL_MODE_TRAP = 127,
			UNEXPECTED_KERNEL_MODE_TRAP_M = 268435583,
			NMI_HARDWARE_FAILURE = 128,
			SPIN_LOCK_INIT_FAILURE = 129,
			DFS_FILE_SYSTEM = 130,
			OFS_FILE_SYSTEM = 131,
			RECOM_DRIVER = 132,
			SETUP_FAILURE = 133,
			AUDIT_FAILURE = 134,
			MBR_CHECKSUM_MISMATCH = 139,
			KERNEL_MODE_EXCEPTION_NOT_HANDLED = 142,
			KERNEL_MODE_EXCEPTION_NOT_HANDLED_M = 268435598,
			PP0_INITIALIZATION_FAILED = 143,
			PP1_INITIALIZATION_FAILED = 144,
			WIN32K_INIT_OR_RIT_FAILURE = 145,
			UP_DRIVER_ON_MP_SYSTEM = 146,
			INVALID_KERNEL_HANDLE = 147,
			KERNEL_STACK_LOCKED_AT_EXIT = 148,
			PNP_INTERNAL_ERROR = 149,
			INVALID_WORK_QUEUE_ITEM = 150,
			BOUND_IMAGE_UNSUPPORTED = 151,
			END_OF_NT_EVALUATION_PERIOD = 152,
			INVALID_REGION_OR_SEGMENT = 153,
			SYSTEM_LICENSE_VIOLATION = 154,
			UDFS_FILE_SYSTEM = 155,
			MACHINE_CHECK_EXCEPTION = 156,
			USER_MODE_HEALTH_MONITOR = 158,
			DRIVER_POWER_STATE_FAILURE = 159,
			INTERNAL_POWER_ERROR = 160,
			PCI_BUS_DRIVER_INTERNAL = 161,
			MEMORY_IMAGE_CORRUPT = 162,
			ACPI_DRIVER_INTERNAL = 163,
			CNSS_FILE_SYSTEM_FILTER = 164,
			ACPI_BIOS_ERROR = 165,
			FP_EMULATION_ERROR = 166,
			BAD_EXHANDLE = 167,
			BOOTING_IN_SAFEMODE_MINIMAL = 168,
			BOOTING_IN_SAFEMODE_NETWORK = 169,
			BOOTING_IN_SAFEMODE_DSREPAIR = 170,
			SESSION_HAS_VALID_POOL_ON_EXIT = 171,
			HAL_MEMORY_ALLOCATION = 172,
			VIDEO_DRIVER_DEBUG_REPORT_REQUEST = 1073741997,
			BGI_DETECTED_VIOLATION = 177,
			VIDEO_DRIVER_INIT_FAILURE = 180,
			BOOTLOG_LOADED = 181,
			BOOTLOG_NOT_LOADED = 182,
			BOOTLOG_ENABLED = 183,
			ATTEMPTED_SWITCH_FROM_DPC = 184,
			CHIPSET_DETECTED_ERROR = 185,
			SESSION_HAS_VALID_VIEWS_ON_EXIT = 186,
			NETWORK_BOOT_INITIALIZATION_FAILED = 187,
			NETWORK_BOOT_DUPLICATE_ADDRESS = 188,
			INVALID_HIBERNATED_STATE = 189,
			ATTEMPTED_WRITE_TO_READONLY_MEMORY = 190,
			MUTEX_ALREADY_OWNED = 191,
			PCI_CONFIG_SPACE_ACCESS_FAILURE = 192,
			SPECIAL_POOL_DETECTED_MEMORY_CORRUPTION = 193,
			BAD_POOL_CALLER = 194,
			SYSTEM_IMAGE_BAD_SIGNATURE = 195,
			DRIVER_VERIFIER_DETECTED_VIOLATION = 196,
			DRIVER_CORRUPTED_EXPOOL = 197,
			DRIVER_CAUGHT_MODIFYING_FREED_POOL = 198,
			TIMER_OR_DPC_INVALID = 199,
			IRQL_UNEXPECTED_VALUE = 200,
			DRIVER_VERIFIER_IOMANAGER_VIOLATION = 201,
			PNP_DETECTED_FATAL_ERROR = 202,
			DRIVER_LEFT_LOCKED_PAGES_IN_PROCESS = 203,
			PAGE_FAULT_IN_FREED_SPECIAL_POOL = 204,
			PAGE_FAULT_BEYOND_END_OF_ALLOCATION = 205,
			DRIVER_UNLOADED_WITHOUT_CANCELLING_PENDING_OPERATIONS = 206,
			TERMINAL_SERVER_DRIVER_MADE_INCORRECT_MEMORY_REFERENCE = 207,
			DRIVER_CORRUPTED_MMPOOL = 208,
			DRIVER_IRQL_NOT_LESS_OR_EQUAL = 209,
			BUGCODE_ID_DRIVER = 210,
			DRIVER_PORTION_MUST_BE_NONPAGED = 211,
			SYSTEM_SCAN_AT_RAISED_IRQL_CAUGHT_IMPROPER_DRIVER_UNLOAD = 212,
			DRIVER_PAGE_FAULT_IN_FREED_SPECIAL_POOL = 213,
			DRIVER_PAGE_FAULT_BEYOND_END_OF_ALLOCATION = 214,
			DRIVER_PAGE_FAULT_BEYOND_END_OF_ALLOCATION_M = 268435670,
			DRIVER_UNMAPPING_INVALID_VIEW = 215,
			DRIVER_USED_EXCESSIVE_PTES = 216,
			LOCKED_PAGES_TRACKER_CORRUPTION = 217,
			SYSTEM_PTE_MISUSE = 218,
			DRIVER_CORRUPTED_SYSPTES = 219,
			DRIVER_INVALID_STACK_ACCESS = 220,
			POOL_CORRUPTION_IN_FILE_AREA = 222,
			IMPERSONATING_WORKER_THREAD = 223,
			ACPI_BIOS_FATAL_ERROR = 224,
			WORKER_THREAD_RETURNED_AT_BAD_IRQL = 225,
			MANUALLY_INITIATED_CRASH = 226,
			RESOURCE_NOT_OWNED = 227,
			WORKER_INVALID = 228,
			POWER_FAILURE_SIMULATE = 229,
			DRIVER_VERIFIER_DMA_VIOLATION = 230,
			INVALID_FLOATING_POINT_STATE = 231,
			INVALID_CANCEL_OF_FILE_OPEN = 232,
			ACTIVE_EX_WORKER_THREAD_TERMINATION = 233,
			SAVER_UNSPECIFIED = 61440,
			SAVER_BLANKSCREEN = 61442,
			SAVER_INPUT = 61443,
			SAVER_WATCHDOG = 61444,
			SAVER_STARTNOTVISIBLE = 61445,
			SAVER_NAVIGATIONMODEL = 61446,
			SAVER_OUTOFMEMORY = 61447,
			SAVER_GRAPHICS = 61448,
			SAVER_NAVSERVERTIMEOUT = 61449,
			SAVER_CHROMEPROCESSCRASH = 61450,
			SAVER_NOTIFICATIONDISMISSAL = 61451,
			SAVER_SPEECHDISMISSAL = 61452,
			SAVER_CALLDISMISSAL = 61453,
			SAVER_APPBARDISMISSAL = 61454,
			SAVER_RILADAPTATIONCRASH = 61455,
			SAVER_APPLISTUNREACHABLE = 61456,
			SAVER_REPORTNOTIFICATIONFAILURE = 61457,
			SAVER_UNEXPECTEDSHUTDOWN = 61458,
			SAVER_RPCFAILURE = 61459,
			SAVER_AUXILIARYFULLDUMP = 61460,
			SAVER_ACCOUNTPROVSVCINITFAILURE = 61461,
			SAVER_MTBFCOMMANDTIMEOUT = 789,
			SAVER_MTBFCOMMANDHANG = 61697,
			SAVER_MTBFPASSBUGCHECK = 61698,
			SAVER_MTBFIOERROR = 61699,
			SAVER_RENDERTHREADHANG = 61952,
			SAVER_RENDERMOBILEUIOOM = 61953,
			SAVER_DEVICEUPDATEUNSPECIFIED = 62208,
			SAVER_AUDIODRIVERHANG = 62464,
			SAVER_BATTERYPULLOUT = 62720,
			SAVER_MEDIACORETESTHANG = 62976,
			SAVER_RESOURCEMANAGEMENT = 63232,
			SAVER_CAPTURESERVICE = 63488,
			SAVER_WAITFORSHELLREADY = 63744,
			SAVER_NONRESPONSIVEPROCESS = 404,
			SAVER_SICKAPPLICATION = 34918,
			THREAD_STUCK_IN_DEVICE_DRIVER = 234,
			THREAD_STUCK_IN_DEVICE_DRIVER_M = 268435690,
			DIRTY_MAPPED_PAGES_CONGESTION = 235,
			SESSION_HAS_VALID_SPECIAL_POOL_ON_EXIT = 236,
			UNMOUNTABLE_BOOT_VOLUME = 237,
			CRITICAL_PROCESS_DIED = 239,
			STORAGE_MINIPORT_ERROR = 240,
			SCSI_VERIFIER_DETECTED_VIOLATION = 241,
			HARDWARE_INTERRUPT_STORM = 242,
			DISORDERLY_SHUTDOWN = 243,
			CRITICAL_OBJECT_TERMINATION = 244,
			FLTMGR_FILE_SYSTEM = 245,
			PCI_VERIFIER_DETECTED_VIOLATION = 246,
			DRIVER_OVERRAN_STACK_BUFFER = 247,
			RAMDISK_BOOT_INITIALIZATION_FAILED = 248,
			DRIVER_RETURNED_STATUS_REPARSE_FOR_VOLUME_OPEN = 249,
			HTTP_DRIVER_CORRUPTED = 250,
			RECURSIVE_MACHINE_CHECK = 251,
			ATTEMPTED_EXECUTE_OF_NOEXECUTE_MEMORY = 252,
			DIRTY_NOWRITE_PAGES_CONGESTION = 253,
			BUGCODE_USB_DRIVER = 254,
			BC_BLUETOOTH_VERIFIER_FAULT = 3070,
			BC_BTHMINI_VERIFIER_FAULT = 3071,
			RESERVE_QUEUE_OVERFLOW = 255,
			LOADER_BLOCK_MISMATCH = 256,
			CLOCK_WATCHDOG_TIMEOUT = 257,
			DPC_WATCHDOG_TIMEOUT = 258,
			MUP_FILE_SYSTEM = 259,
			AGP_INVALID_ACCESS = 260,
			AGP_GART_CORRUPTION = 261,
			AGP_ILLEGALLY_REPROGRAMMED = 262,
			KERNEL_EXPAND_STACK_ACTIVE = 263,
			THIRD_PARTY_FILE_SYSTEM_FAILURE = 264,
			CRITICAL_STRUCTURE_CORRUPTION = 265,
			APP_TAGGING_INITIALIZATION_FAILED = 266,
			DFSC_FILE_SYSTEM = 267,
			FSRTL_EXTRA_CREATE_PARAMETER_VIOLATION = 268,
			WDF_VIOLATION = 269,
			VIDEO_MEMORY_MANAGEMENT_INTERNAL = 270,
			DRIVER_INVALID_CRUNTIME_PARAMETER = 272,
			RECURSIVE_NMI = 273,
			MSRPC_STATE_VIOLATION = 274,
			VIDEO_DXGKRNL_FATAL_ERROR = 275,
			VIDEO_SHADOW_DRIVER_FATAL_ERROR = 276,
			AGP_INTERNAL = 277,
			VIDEO_TDR_FAILURE = 278,
			VIDEO_TDR_TIMEOUT_DETECTED = 279,
			NTHV_GUEST_ERROR = 280,
			VIDEO_SCHEDULER_INTERNAL_ERROR = 281,
			EM_INITIALIZATION_ERROR = 282,
			DRIVER_RETURNED_HOLDING_CANCEL_LOCK = 283,
			ATTEMPTED_WRITE_TO_CM_PROTECTED_STORAGE = 284,
			EVENT_TRACING_FATAL_ERROR = 285,
			TOO_MANY_RECURSIVE_FAULTS = 286,
			INVALID_DRIVER_HANDLE = 287,
			BITLOCKER_FATAL_ERROR = 288,
			DRIVER_VIOLATION = 289,
			WHEA_INTERNAL_ERROR = 290,
			CRYPTO_SELF_TEST_FAILURE = 291,
			WHEA_UNCORRECTABLE_ERROR = 292,
			NMR_INVALID_STATE = 293,
			NETIO_INVALID_POOL_CALLER = 294,
			PAGE_NOT_ZERO = 295,
			WORKER_THREAD_RETURNED_WITH_BAD_IO_PRIORITY = 296,
			WORKER_THREAD_RETURNED_WITH_BAD_PAGING_IO_PRIORITY = 297,
			MUI_NO_VALID_SYSTEM_LANGUAGE = 298,
			FAULTY_HARDWARE_CORRUPTED_PAGE = 299,
			EXFAT_FILE_SYSTEM = 300,
			VOLSNAP_OVERLAPPED_TABLE_ACCESS = 301,
			INVALID_MDL_RANGE = 302,
			VHD_BOOT_INITIALIZATION_FAILED = 303,
			DYNAMIC_ADD_PROCESSOR_MISMATCH = 304,
			INVALID_EXTENDED_PROCESSOR_STATE = 305,
			RESOURCE_OWNER_POINTER_INVALID = 306,
			DPC_WATCHDOG_VIOLATION = 307,
			DRIVE_EXTENDER = 308,
			REGISTRY_FILTER_DRIVER_EXCEPTION = 309,
			VHD_BOOT_HOST_VOLUME_NOT_ENOUGH_SPACE = 310,
			WIN32K_HANDLE_MANAGER = 311,
			GPIO_CONTROLLER_DRIVER_ERROR = 312,
			KERNEL_SECURITY_CHECK_FAILURE = 313,
			KERNEL_MODE_HEAP_CORRUPTION = 314,
			PASSIVE_INTERRUPT_ERROR = 315,
			INVALID_IO_BOOST_STATE = 316,
			CRITICAL_INITIALIZATION_FAILURE = 317,
			ERRATA_WORKAROUND_UNSUCCESSFUL = 318,
			REGISTRY_CALLBACK_DRIVER_EXCEPTION = 319,
			STORAGE_DEVICE_ABNORMALITY_DETECTED = 320,
			VIDEO_ENGINE_TIMEOUT_DETECTED = 321,
			VIDEO_TDR_APPLICATION_BLOCKED = 322,
			PROCESSOR_DRIVER_INTERNAL = 323,
			BUGCODE_USB3_DRIVER = 324,
			SECURE_BOOT_VIOLATION = 325,
			NDIS_NET_BUFFER_LIST_INFO_ILLEGALLY_TRANSFERRED = 326,
			ABNORMAL_RESET_DETECTED = 327,
			IO_OBJECT_INVALID = 328,
			REFS_FILE_SYSTEM = 329,
			KERNEL_WMI_INTERNAL = 330,
			SOC_SUBSYSTEM_FAILURE = 331,
			FATAL_ABNORMAL_RESET_ERROR = 332,
			EXCEPTION_SCOPE_INVALID = 333,
			SOC_CRITICAL_DEVICE_REMOVED = 334,
			PDC_WATCHDOG_TIMEOUT = 335,
			TCPIP_AOAC_NIC_ACTIVE_REFERENCE_LEAK = 336,
			UNSUPPORTED_INSTRUCTION_MODE = 337,
			INVALID_PUSH_LOCK_FLAGS = 338,
			KERNEL_LOCK_ENTRY_LEAKED_ON_THREAD_TERMINATION = 339,
			UNEXPECTED_STORE_EXCEPTION = 340,
			OS_DATA_TAMPERING = 341,
			WINSOCK_DETECTED_HUNG_CLOSESOCKET_LIVEDUMP = 342,
			KERNEL_THREAD_PRIORITY_FLOOR_VIOLATION = 343,
			ILLEGAL_IOMMU_PAGE_FAULT = 344,
			HAL_ILLEGAL_IOMMU_PAGE_FAULT = 345,
			SDBUS_INTERNAL_ERROR = 346,
			WORKER_THREAD_RETURNED_WITH_SYSTEM_PAGE_PRIORITY_ACTIVE = 347,
			PDC_WATCHDOG_TIMEOUT_LIVEDUMP = 348,
			SOC_SUBSYSTEM_FAILURE_LIVEDUMP = 349,
			BUGCODE_NDIS_DRIVER_LIVE_DUMP = 350,
			CONNECTED_STANDBY_WATCHDOG_TIMEOUT_LIVEDUMP = 351,
			WIN32K_ATOMIC_CHECK_FAILURE = 352,
			LIVE_SYSTEM_DUMP = 353,
			KERNEL_AUTO_BOOST_INVALID_LOCK_RELEASE = 354,
			WORKER_THREAD_TEST_CONDITION = 355,
			WIN32K_CRITICAL_FAILURE = 356,
			CLUSTER_CSV_STATUS_IO_TIMEOUT_LIVEDUMP = 357,
			CLUSTER_RESOURCE_CALL_TIMEOUT_LIVEDUMP = 358,
			CLUSTER_CSV_SNAPSHOT_DEVICE_INFO_TIMEOUT_LIVEDUMP = 359,
			CLUSTER_CSV_STATE_TRANSITION_TIMEOUT_LIVEDUMP = 360,
			CLUSTER_CSV_VOLUME_ARRIVAL_LIVEDUMP = 361,
			CLUSTER_CSV_VOLUME_REMOVAL_LIVEDUMP = 362,
			CLUSTER_CSV_CLUSTER_WATCHDOG_LIVEDUMP = 363,
			INVALID_RUNDOWN_PROTECTION_FLAGS = 364,
			INVALID_SLOT_ALLOCATOR_FLAGS = 365,
			ERESOURCE_INVALID_RELEASE = 366,
			CLUSTER_CSV_STATE_TRANSITION_INTERVAL_TIMEOUT_LIVEDUMP = 367,
			CLUSTER_CSV_CLUSSVC_DISCONNECT_WATCHDOG = 368,
			CRYPTO_LIBRARY_INTERNAL_ERROR = 369,
			COREMSGCALL_INTERNAL_ERROR = 371,
			COREMSG_INTERNAL_ERROR = 372,
			PREVIOUS_FATAL_ABNORMAL_RESET_ERROR = 373,
			ELAM_DRIVER_DETECTED_FATAL_ERROR = 376,
			CLUSTER_CLUSPORT_STATUS_IO_TIMEOUT_LIVEDUMP = 377,
			PROFILER_CONFIGURATION_ILLEGAL = 379,
			PDC_LOCK_WATCHDOG_LIVEDUMP = 380,
			PDC_UNEXPECTED_REVOCATION_LIVEDUMP = 381,
			MICROCODE_REVISION_MISMATCH = 382,
			HYPERGUARD_INITIALIZATION_FAILURE = 383,
			WVR_LIVEDUMP_REPLICATION_IOCONTEXT_TIMEOUT = 384,
			WVR_LIVEDUMP_STATE_TRANSITION_TIMEOUT = 385,
			WVR_LIVEDUMP_RECOVERY_IOCONTEXT_TIMEOUT = 386,
			WVR_LIVEDUMP_APP_IO_TIMEOUT = 387,
			WVR_LIVEDUMP_MANUALLY_INITIATED = 388,
			WVR_LIVEDUMP_STATE_FAILURE = 389,
			WVR_LIVEDUMP_CRITICAL_ERROR = 390,
			VIDEO_DWMINIT_TIMEOUT_FALLBACK_BDD = 391,
			CLUSTER_CSVFS_LIVEDUMP = 392,
			BAD_OBJECT_HEADER = 393,
			SILO_CORRUPT = 394,
			SECURE_KERNEL_ERROR = 395,
			HYPERGUARD_VIOLATION = 396,
			SECURE_FAULT_UNHANDLED = 397,
			KERNEL_PARTITION_REFERENCE_VIOLATION = 398,
			SYNTHETIC_EXCEPTION_UNHANDLED = 399,
			WIN32K_CRITICAL_FAILURE_LIVEDUMP = 400,
			PF_DETECTED_CORRUPTION = 401,
			KERNEL_AUTO_BOOST_LOCK_ACQUISITION_WITH_RAISED_IRQL = 402,
			VIDEO_DXGKRNL_LIVEDUMP = 403,
			KERNEL_STORAGE_SLOT_IN_USE = 409,
			SMB_SERVER_LIVEDUMP = 405,
			LOADER_ROLLBACK_DETECTED = 406,
			WIN32K_SECURITY_FAILURE = 407,
			UFX_LIVEDUMP = 408,
			WORKER_THREAD_RETURNED_WHILE_ATTACHED_TO_SILO = 410,
			TTM_FATAL_ERROR = 411,
			WIN32K_POWER_WATCHDOG_TIMEOUT = 412,
			CLUSTER_SVHDX_LIVEDUMP = 413,
			BUGCODE_NETADAPTER_DRIVER = 414,
			PDC_PRIVILEGE_CHECK_LIVEDUMP = 415,
			TTM_WATCHDOG_TIMEOUT = 416,
			WIN32K_CALLOUT_WATCHDOG_LIVEDUMP = 417,
			WIN32K_CALLOUT_WATCHDOG_BUGCHECK = 418,
			CALL_HAS_NOT_RETURNED_WATCHDOG_TIMEOUT_LIVEDUMP = 419,
			DRIPS_SW_HW_DIVERGENCE_LIVEDUMP = 420,
			USB_DRIPS_BLOCKER_SURPRISE_REMOVAL_LIVEDUMP = 421,
			BLUETOOTH_ERROR_RECOVERY_LIVEDUMP = 422,
			SMB_REDIRECTOR_LIVEDUMP = 423,
			VIDEO_DXGKRNL_BLACK_SCREEN_LIVEDUMP = 424,
			DIRECTED_FX_TRANSITION_LIVEDUMP = 425,
			EXCEPTION_ON_INVALID_STACK = 426,
			UNWIND_ON_INVALID_STACK = 427,
			VIDEO_MINIPORT_FAILED_LIVEDUMP = 432,
			VIDEO_MINIPORT_BLACK_SCREEN_LIVEDUMP = 440,
			DRIVER_VERIFIER_DETECTED_VIOLATION_LIVEDUMP = 452,
			IO_THREADPOOL_DEADLOCK_LIVEDUMP = 453,
			FAST_ERESOURCE_PRECONDITION_VIOLATION = 454,
			STORE_DATA_STRUCTURE_CORRUPTION = 455,
			MANUALLY_INITIATED_POWER_BUTTON_HOLD = 456,
			USER_MODE_HEALTH_MONITOR_LIVEDUMP = 457,
			SYNTHETIC_WATCHDOG_TIMEOUT = 458,
			INVALID_SILO_DETACH = 459,
			EXRESOURCE_TIMEOUT_LIVEDUMP = 460,
			INVALID_CALLBACK_STACK_ADDRESS = 461,
			INVALID_KERNEL_STACK_ADDRESS = 462,
			HARDWARE_WATCHDOG_TIMEOUT = 463,
			ACPI_FIRMWARE_WATCHDOG_TIMEOUT = 464,
			TELEMETRY_ASSERTS_LIVEDUMP = 465,
			WORKER_THREAD_INVALID_STATE = 466,
			WFP_INVALID_OPERATION = 467,
			UCMUCSI_LIVEDUMP = 468,
			DRIVER_PNP_WATCHDOG = 469,
			WORKER_THREAD_RETURNED_WITH_NON_DEFAULT_WORKLOAD_CLASS = 470,
			EFS_FATAL_ERROR = 471,
			UCMUCSI_FAILURE = 472,
			HAL_IOMMU_INTERNAL_ERROR = 473,
			HAL_BLOCKED_PROCESSOR_INTERNAL_ERROR = 474,
			IPI_WATCHDOG_TIMEOUT = 475,
			DMA_COMMON_BUFFER_VECTOR_ERROR = 476,
			BUGCODE_MBBADAPTER_DRIVER = 477,
			BUGCODE_WIFIADAPTER_DRIVER = 478,
			PROCESSOR_START_TIMEOUT = 479,
			INVALID_ALTERNATE_SYSTEM_CALL_HANDLER_REGISTRATION = 480,
			DEVICE_DIAGNOSTIC_LOG_LIVEDUMP = 481,
			AZURE_DEVICE_FW_DUMP = 482,
			BREAKAWAY_CABLE_TRANSITION = 483,
			VIDEO_DXGKRNL_SYSMM_FATAL_ERROR = 484,
			DRIVER_VERIFIER_TRACKING_LIVE_DUMP = 485,
			CRASHDUMP_WATCHDOG_TIMEOUT = 486,
			REGISTRY_LIVE_DUMP = 487,
			INVALID_THREAD_AFFINITY_STATE = 488,
			ILLEGAL_ATS_INITIALIZATION = 489,
			SECURE_PCI_CONFIG_SPACE_ACCESS_VIOLATION = 490,
			DAM_WATCHDOG_TIMEOUT = 491,
			XBOX_VMCTRL_CS_TIMEOUT = 854,
			XBOX_CORRUPTED_IMAGE = 855,
			XBOX_INVERTED_FUNCTION_TABLE_OVERFLOW = 856,
			XBOX_CORRUPTED_IMAGE_BASE = 857,
			XBOX_XDS_WATCHDOG_TIMEOUT = 858,
			XBOX_SHUTDOWN_WATCHDOG_TIMEOUT = 859,
			XBOX_360_SYSTEM_CRASH = 864,
			XBOX_360_SYSTEM_CRASH_RESERVED = 1056,
			XBOX_SECURITY_FAILUE = 1057,
			KERNEL_CFG_INIT_FAILURE = 1058,
			MANUALLY_INITIATED_POWER_BUTTON_HOLD_LIVE_DUMP = 4552,
			HYPERVISOR_ERROR = 131073,
			WINLOGON_FATAL_ERROR = 3221226010,
			MANUALLY_INITIATED_CRASH1 = 3735936685,
			BUGCHECK_CONTEXT_MODIFIER = 2147483648,
		}
		[AllowDuplicates]
		public enum FACILITY_CODE : uint32
		{
			FACILITY_NULL = 0,
			FACILITY_RPC = 1,
			FACILITY_DISPATCH = 2,
			FACILITY_STORAGE = 3,
			FACILITY_ITF = 4,
			FACILITY_WIN32 = 7,
			FACILITY_WINDOWS = 8,
			FACILITY_SSPI = 9,
			FACILITY_SECURITY = 9,
			FACILITY_CONTROL = 10,
			FACILITY_CERT = 11,
			FACILITY_INTERNET = 12,
			FACILITY_MEDIASERVER = 13,
			FACILITY_MSMQ = 14,
			FACILITY_SETUPAPI = 15,
			FACILITY_SCARD = 16,
			FACILITY_COMPLUS = 17,
			FACILITY_AAF = 18,
			FACILITY_URT = 19,
			FACILITY_ACS = 20,
			FACILITY_DPLAY = 21,
			FACILITY_UMI = 22,
			FACILITY_SXS = 23,
			FACILITY_WINDOWS_CE = 24,
			FACILITY_HTTP = 25,
			FACILITY_USERMODE_COMMONLOG = 26,
			FACILITY_WER = 27,
			FACILITY_USERMODE_FILTER_MANAGER = 31,
			FACILITY_BACKGROUNDCOPY = 32,
			FACILITY_CONFIGURATION = 33,
			FACILITY_WIA = 33,
			FACILITY_STATE_MANAGEMENT = 34,
			FACILITY_METADIRECTORY = 35,
			FACILITY_WINDOWSUPDATE = 36,
			FACILITY_DIRECTORYSERVICE = 37,
			FACILITY_GRAPHICS = 38,
			FACILITY_SHELL = 39,
			FACILITY_NAP = 39,
			FACILITY_TPM_SERVICES = 40,
			FACILITY_TPM_SOFTWARE = 41,
			FACILITY_UI = 42,
			FACILITY_XAML = 43,
			FACILITY_ACTION_QUEUE = 44,
			FACILITY_PLA = 48,
			FACILITY_WINDOWS_SETUP = 48,
			FACILITY_FVE = 49,
			FACILITY_FWP = 50,
			FACILITY_WINRM = 51,
			FACILITY_NDIS = 52,
			FACILITY_USERMODE_HYPERVISOR = 53,
			FACILITY_CMI = 54,
			FACILITY_USERMODE_VIRTUALIZATION = 55,
			FACILITY_USERMODE_VOLMGR = 56,
			FACILITY_BCD = 57,
			FACILITY_USERMODE_VHD = 58,
			FACILITY_USERMODE_HNS = 59,
			FACILITY_SDIAG = 60,
			FACILITY_WEBSERVICES = 61,
			FACILITY_WINPE = 61,
			FACILITY_WPN = 62,
			FACILITY_WINDOWS_STORE = 63,
			FACILITY_INPUT = 64,
			FACILITY_QUIC = 65,
			FACILITY_EAP = 66,
			FACILITY_IORING = 70,
			FACILITY_WINDOWS_DEFENDER = 80,
			FACILITY_OPC = 81,
			FACILITY_XPS = 82,
			FACILITY_MBN = 84,
			FACILITY_POWERSHELL = 84,
			FACILITY_RAS = 83,
			FACILITY_P2P_INT = 98,
			FACILITY_P2P = 99,
			FACILITY_DAF = 100,
			FACILITY_BLUETOOTH_ATT = 101,
			FACILITY_AUDIO = 102,
			FACILITY_STATEREPOSITORY = 103,
			FACILITY_VISUALCPP = 109,
			FACILITY_SCRIPT = 112,
			FACILITY_PARSE = 113,
			FACILITY_BLB = 120,
			FACILITY_BLB_CLI = 121,
			FACILITY_WSBAPP = 122,
			FACILITY_BLBUI = 128,
			FACILITY_USN = 129,
			FACILITY_USERMODE_VOLSNAP = 130,
			FACILITY_TIERING = 131,
			FACILITY_WSB_ONLINE = 133,
			FACILITY_ONLINE_ID = 134,
			FACILITY_DEVICE_UPDATE_AGENT = 135,
			FACILITY_DRVSERVICING = 136,
			FACILITY_DLS = 153,
			FACILITY_DELIVERY_OPTIMIZATION = 208,
			FACILITY_USERMODE_SPACES = 231,
			FACILITY_USER_MODE_SECURITY_CORE = 232,
			FACILITY_USERMODE_LICENSING = 234,
			FACILITY_SOS = 160,
			FACILITY_OCP_UPDATE_AGENT = 173,
			FACILITY_DEBUGGERS = 176,
			FACILITY_SPP = 256,
			FACILITY_RESTORE = 256,
			FACILITY_DMSERVER = 256,
			FACILITY_DEPLOYMENT_SERVICES_SERVER = 257,
			FACILITY_DEPLOYMENT_SERVICES_IMAGING = 258,
			FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT = 259,
			FACILITY_DEPLOYMENT_SERVICES_UTIL = 260,
			FACILITY_DEPLOYMENT_SERVICES_BINLSVC = 261,
			FACILITY_DEPLOYMENT_SERVICES_PXE = 263,
			FACILITY_DEPLOYMENT_SERVICES_TFTP = 264,
			FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT = 272,
			FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING = 278,
			FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER = 289,
			FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT = 290,
			FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER = 293,
			FACILITY_HSP_SERVICES = 296,
			FACILITY_HSP_SOFTWARE = 297,
			FACILITY_LINGUISTIC_SERVICES = 305,
			FACILITY_AUDIOSTREAMING = 1094,
			FACILITY_TTD = 1490,
			FACILITY_ACCELERATOR = 1536,
			FACILITY_WMAAECMA = 1996,
			FACILITY_DIRECTMUSIC = 2168,
			FACILITY_DIRECT3D10 = 2169,
			FACILITY_DXGI = 2170,
			FACILITY_DXGI_DDI = 2171,
			FACILITY_DIRECT3D11 = 2172,
			FACILITY_DIRECT3D11_DEBUG = 2173,
			FACILITY_DIRECT3D12 = 2174,
			FACILITY_DIRECT3D12_DEBUG = 2175,
			FACILITY_DXCORE = 2176,
			FACILITY_PRESENTATION = 2177,
			FACILITY_LEAP = 2184,
			FACILITY_AUDCLNT = 2185,
			FACILITY_WINCODEC_DWRITE_DWM = 2200,
			FACILITY_WINML = 2192,
			FACILITY_DIRECT2D = 2201,
			FACILITY_DEFRAG = 2304,
			FACILITY_USERMODE_SDBUS = 2305,
			FACILITY_JSCRIPT = 2306,
			FACILITY_PIDGENX = 2561,
			FACILITY_EAS = 85,
			FACILITY_WEB = 885,
			FACILITY_WEB_SOCKET = 886,
			FACILITY_MOBILE = 1793,
			FACILITY_SQLITE = 1967,
			FACILITY_SERVICE_FABRIC = 1968,
			FACILITY_UTC = 1989,
			FACILITY_WEP = 2049,
			FACILITY_SYNCENGINE = 2050,
			FACILITY_XBOX = 2339,
			FACILITY_GAME = 2340,
			FACILITY_PIX = 2748,
			FACILITY_NT_BIT = 268435456,
		}
		[AllowDuplicates]
		public enum THREAD_ERROR_MODE : uint32
		{
			SEM_ALL_ERRORS = 0,
			SEM_FAILCRITICALERRORS = 1,
			SEM_NOGPFAULTERRORBOX = 2,
			SEM_NOOPENFILEERRORBOX = 32768,
			SEM_NOALIGNMENTFAULTEXCEPT = 4,
		}
		[AllowDuplicates]
		public enum FORMAT_MESSAGE_OPTIONS : uint32
		{
			FORMAT_MESSAGE_ALLOCATE_BUFFER = 256,
			FORMAT_MESSAGE_ARGUMENT_ARRAY = 8192,
			FORMAT_MESSAGE_FROM_HMODULE = 2048,
			FORMAT_MESSAGE_FROM_STRING = 1024,
			FORMAT_MESSAGE_FROM_SYSTEM = 4096,
			FORMAT_MESSAGE_IGNORE_INSERTS = 512,
		}
		[AllowDuplicates]
		public enum RTL_VIRTUAL_UNWIND_HANDLER_TYPE : uint32
		{
			UNW_FLAG_NHANDLER = 0,
			UNW_FLAG_EHANDLER = 1,
			UNW_FLAG_UHANDLER = 2,
			UNW_FLAG_CHAININFO = 4,
		}
		[AllowDuplicates]
		public enum OPEN_THREAD_WAIT_CHAIN_SESSION_FLAGS : uint32
		{
			WCT_ASYNC_OPEN_FLAG = 1,
		}
		[AllowDuplicates]
		public enum SYM_SRV_STORE_FILE_FLAGS : uint32
		{
			SYMSTOREOPT_COMPRESS = 1,
			SYMSTOREOPT_OVERWRITE = 2,
			SYMSTOREOPT_PASS_IF_EXISTS = 64,
			SYMSTOREOPT_POINTER = 8,
			SYMSTOREOPT_RETURNINDEX = 4,
		}
		[AllowDuplicates]
		public enum PROCESSOR_ARCHITECTURE : uint16
		{
			PROCESSOR_ARCHITECTURE_AMD64 = 9,
			PROCESSOR_ARCHITECTURE_IA64 = 6,
			PROCESSOR_ARCHITECTURE_INTEL = 0,
			PROCESSOR_ARCHITECTURE_ARM = 5,
			PROCESSOR_ARCHITECTURE_UNKNOWN = 65535,
		}
		[AllowDuplicates]
		public enum IMAGE_DIRECTORY_ENTRY : uint32
		{
			IMAGE_DIRECTORY_ENTRY_ARCHITECTURE = 7,
			IMAGE_DIRECTORY_ENTRY_BASERELOC = 5,
			IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT = 11,
			IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR = 14,
			IMAGE_DIRECTORY_ENTRY_DEBUG = 6,
			IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT = 13,
			IMAGE_DIRECTORY_ENTRY_EXCEPTION = 3,
			IMAGE_DIRECTORY_ENTRY_EXPORT = 0,
			IMAGE_DIRECTORY_ENTRY_GLOBALPTR = 8,
			IMAGE_DIRECTORY_ENTRY_IAT = 12,
			IMAGE_DIRECTORY_ENTRY_IMPORT = 1,
			IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG = 10,
			IMAGE_DIRECTORY_ENTRY_RESOURCE = 2,
			IMAGE_DIRECTORY_ENTRY_SECURITY = 4,
			IMAGE_DIRECTORY_ENTRY_TLS = 9,
		}
		[AllowDuplicates]
		public enum WAIT_CHAIN_THREAD_OPTIONS : uint32
		{
			WCT_OUT_OF_PROC_COM_FLAG = 2,
			WCT_OUT_OF_PROC_CS_FLAG = 4,
			WCT_OUT_OF_PROC_FLAG = 1,
		}
		[AllowDuplicates]
		public enum SYM_FIND_ID_OPTION : uint32
		{
			SSRVOPT_DWORD = 2,
			SSRVOPT_DWORDPTR = 4,
			SSRVOPT_GUIDPTR = 8,
		}
		[AllowDuplicates]
		public enum IMAGE_FILE_CHARACTERISTICS : uint16
		{
			IMAGE_FILE_RELOCS_STRIPPED = 1,
			IMAGE_FILE_EXECUTABLE_IMAGE = 2,
			IMAGE_FILE_LINE_NUMS_STRIPPED = 4,
			IMAGE_FILE_LOCAL_SYMS_STRIPPED = 8,
			IMAGE_FILE_AGGRESIVE_WS_TRIM = 16,
			IMAGE_FILE_LARGE_ADDRESS_AWARE = 32,
			IMAGE_FILE_BYTES_REVERSED_LO = 128,
			IMAGE_FILE_32BIT_MACHINE = 256,
			IMAGE_FILE_DEBUG_STRIPPED = 512,
			IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP = 1024,
			IMAGE_FILE_NET_RUN_FROM_SWAP = 2048,
			IMAGE_FILE_SYSTEM = 4096,
			IMAGE_FILE_DLL = 8192,
			IMAGE_FILE_UP_SYSTEM_ONLY = 16384,
			IMAGE_FILE_BYTES_REVERSED_HI = 32768,
		}
		[AllowDuplicates]
		public enum IMAGE_FILE_CHARACTERISTICS2 : uint32
		{
			IMAGE_FILE_RELOCS_STRIPPED2 = 1,
			IMAGE_FILE_EXECUTABLE_IMAGE2 = 2,
			IMAGE_FILE_LINE_NUMS_STRIPPED2 = 4,
			IMAGE_FILE_LOCAL_SYMS_STRIPPED2 = 8,
			IMAGE_FILE_AGGRESIVE_WS_TRIM2 = 16,
			IMAGE_FILE_LARGE_ADDRESS_AWARE2 = 32,
			IMAGE_FILE_BYTES_REVERSED_LO2 = 128,
			IMAGE_FILE_32BIT_MACHINE2 = 256,
			IMAGE_FILE_DEBUG_STRIPPED2 = 512,
			IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP2 = 1024,
			IMAGE_FILE_NET_RUN_FROM_SWAP2 = 2048,
			IMAGE_FILE_SYSTEM_2 = 4096,
			IMAGE_FILE_DLL_2 = 8192,
			IMAGE_FILE_UP_SYSTEM_ONLY_2 = 16384,
			IMAGE_FILE_BYTES_REVERSED_HI_2 = 32768,
		}
		[AllowDuplicates]
		public enum SYMBOL_INFO_FLAGS : uint32
		{
			SYMFLAG_CLR_TOKEN = 262144,
			SYMFLAG_CONSTANT = 256,
			SYMFLAG_EXPORT = 512,
			SYMFLAG_FORWARDER = 1024,
			SYMFLAG_FRAMEREL = 32,
			SYMFLAG_FUNCTION = 2048,
			SYMFLAG_ILREL = 65536,
			SYMFLAG_LOCAL = 128,
			SYMFLAG_METADATA = 131072,
			SYMFLAG_PARAMETER = 64,
			SYMFLAG_REGISTER = 8,
			SYMFLAG_REGREL = 16,
			SYMFLAG_SLOT = 32768,
			SYMFLAG_THUNK = 8192,
			SYMFLAG_TLSREL = 16384,
			SYMFLAG_VALUEPRESENT = 1,
			SYMFLAG_VIRTUAL = 4096,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_CBA_EVENT_SEVERITY : uint32
		{
			sevInfo = 0,
			sevProblem = 1,
			sevAttn = 2,
			sevFatal = 3,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_GET_TYPE_INFO_FLAGS : uint32
		{
			IMAGEHLP_GET_TYPE_INFO_CHILDREN = 2,
			IMAGEHLP_GET_TYPE_INFO_UNCACHED = 1,
		}
		[AllowDuplicates]
		public enum RIP_INFO_TYPE : uint32
		{
			SLE_ERROR = 1,
			SLE_MINORERROR = 2,
			SLE_WARNING = 3,
		}
		[AllowDuplicates]
		public enum VER_PLATFORM : uint32
		{
			VER_PLATFORM_WIN32s = 0,
			VER_PLATFORM_WIN32_WINDOWS = 1,
			VER_PLATFORM_WIN32_NT = 2,
		}
		[AllowDuplicates]
		public enum IMAGE_DEBUG_TYPE : uint32
		{
			IMAGE_DEBUG_TYPE_UNKNOWN = 0,
			IMAGE_DEBUG_TYPE_COFF = 1,
			IMAGE_DEBUG_TYPE_CODEVIEW = 2,
			IMAGE_DEBUG_TYPE_FPO = 3,
			IMAGE_DEBUG_TYPE_MISC = 4,
			IMAGE_DEBUG_TYPE_EXCEPTION = 5,
			IMAGE_DEBUG_TYPE_FIXUP = 6,
			IMAGE_DEBUG_TYPE_BORLAND = 9,
		}
		[AllowDuplicates]
		public enum MINIDUMP_THREAD_INFO_DUMP_FLAGS : uint32
		{
			MINIDUMP_THREAD_INFO_ERROR_THREAD = 1,
			MINIDUMP_THREAD_INFO_EXITED_THREAD = 4,
			MINIDUMP_THREAD_INFO_INVALID_CONTEXT = 16,
			MINIDUMP_THREAD_INFO_INVALID_INFO = 8,
			MINIDUMP_THREAD_INFO_INVALID_TEB = 32,
			MINIDUMP_THREAD_INFO_WRITING_THREAD = 2,
		}
		[AllowDuplicates]
		public enum DEBUG_EVENT_CODE : uint32
		{
			CREATE_PROCESS_DEBUG_EVENT = 3,
			CREATE_THREAD_DEBUG_EVENT = 2,
			EXCEPTION_DEBUG_EVENT = 1,
			EXIT_PROCESS_DEBUG_EVENT = 5,
			EXIT_THREAD_DEBUG_EVENT = 4,
			LOAD_DLL_DEBUG_EVENT = 6,
			OUTPUT_DEBUG_STRING_EVENT = 8,
			RIP_EVENT = 9,
			UNLOAD_DLL_DEBUG_EVENT = 7,
		}
		[AllowDuplicates]
		public enum MINIDUMP_MISC_INFO_FLAGS : uint32
		{
			MINIDUMP_MISC1_PROCESS_ID = 1,
			MINIDUMP_MISC1_PROCESS_TIMES = 2,
		}
		[AllowDuplicates]
		public enum MODLOAD_DATA_TYPE : uint32
		{
			DBHHEADER_DEBUGDIRS = 1,
			DBHHEADER_CVMISC = 2,
		}
		[AllowDuplicates]
		public enum ModelObjectKind : int32
		{
			ObjectPropertyAccessor = 0,
			ObjectContext = 1,
			ObjectTargetObject = 2,
			ObjectTargetObjectReference = 3,
			ObjectSynthetic = 4,
			ObjectNoValue = 5,
			ObjectError = 6,
			ObjectIntrinsic = 7,
			ObjectMethod = 8,
			ObjectKeyReference = 9,
		}
		[AllowDuplicates]
		public enum SymbolKind : int32
		{
			Symbol = 0,
			SymbolModule = 1,
			SymbolType = 2,
			SymbolField = 3,
			SymbolConstant = 4,
			SymbolData = 5,
			SymbolBaseClass = 6,
			SymbolPublic = 7,
			SymbolFunction = 8,
		}
		[AllowDuplicates]
		public enum TypeKind : int32
		{
			TypeUDT = 0,
			TypePointer = 1,
			TypeMemberPointer = 2,
			TypeArray = 3,
			TypeFunction = 4,
			TypeTypedef = 5,
			TypeEnum = 6,
			TypeIntrinsic = 7,
			TypeExtendedArray = 8,
		}
		[AllowDuplicates]
		public enum IntrinsicKind : int32
		{
			IntrinsicVoid = 0,
			IntrinsicBool = 1,
			IntrinsicChar = 2,
			IntrinsicWChar = 3,
			IntrinsicInt = 4,
			IntrinsicUInt = 5,
			IntrinsicLong = 6,
			IntrinsicULong = 7,
			IntrinsicFloat = 8,
			IntrinsicHRESULT = 9,
			IntrinsicChar16 = 10,
			IntrinsicChar32 = 11,
		}
		[AllowDuplicates]
		public enum PointerKind : int32
		{
			PointerStandard = 0,
			PointerReference = 1,
			PointerRValueReference = 2,
			PointerCXHat = 3,
			PointerManagedReference = 4,
		}
		[AllowDuplicates]
		public enum CallingConventionKind : int32
		{
			CallingConventionUnknown = 0,
			CallingConventionCDecl = 1,
			CallingConventionFastCall = 2,
			CallingConventionStdCall = 3,
			CallingConventionSysCall = 4,
			CallingConventionThisCall = 5,
		}
		[AllowDuplicates]
		public enum LocationKind : int32
		{
			LocationMember = 0,
			LocationStatic = 1,
			LocationConstant = 2,
			LocationNone = 3,
		}
		[AllowDuplicates]
		public enum PreferredFormat : int32
		{
			FormatNone = 0,
			FormatSingleCharacter = 1,
			FormatQuotedString = 2,
			FormatString = 3,
			FormatQuotedUnicodeString = 4,
			FormatUnicodeString = 5,
			FormatQuotedUTF8String = 6,
			FormatUTF8String = 7,
			FormatBSTRString = 8,
			FormatQuotedHString = 9,
			FormatHString = 10,
			FormatRaw = 11,
			FormatEnumNameOnly = 12,
			FormatEscapedStringWithQuote = 13,
			FormatUTF32String = 14,
			FormatQuotedUTF32String = 15,
		}
		[AllowDuplicates]
		public enum RawSearchFlags : int32
		{
			RawSearchNone = 0,
			RawSearchNoBases = 1,
		}
		[AllowDuplicates]
		public enum ErrorClass : int32
		{
			ErrorClassWarning = 0,
			ErrorClassError = 1,
		}
		[AllowDuplicates]
		public enum SignatureComparison : int32
		{
			Unrelated = 0,
			Ambiguous = 1,
			LessSpecific = 2,
			MoreSpecific = 3,
			Identical = 4,
		}
		[AllowDuplicates]
		public enum SymbolSearchOptions : int32
		{
			SymbolSearchNone = 0,
			SymbolSearchCompletion = 1,
			SymbolSearchCaseInsensitive = 2,
		}
		[AllowDuplicates]
		public enum LanguageKind : int32
		{
			LanguageUnknown = 0,
			LanguageC = 1,
			LanguageCPP = 2,
			LanguageAssembly = 3,
		}
		[AllowDuplicates]
		public enum VarArgsKind : int32
		{
			VarArgsNone = 0,
			VarArgsCStyle = 1,
		}
		[AllowDuplicates]
		public enum ScriptChangeKind : int32
		{
			ScriptRename = 0,
		}
		[AllowDuplicates]
		public enum ScriptDebugState : int32
		{
			ScriptDebugNoDebugger = 0,
			ScriptDebugNotExecuting = 1,
			ScriptDebugExecuting = 2,
			ScriptDebugBreak = 3,
		}
		[AllowDuplicates]
		public enum ScriptDebugEventFilter : int32
		{
			ScriptDebugEventFilterEntry = 0,
			ScriptDebugEventFilterException = 1,
			ScriptDebugEventFilterUnhandledException = 2,
			ScriptDebugEventFilterAbort = 3,
		}
		[AllowDuplicates]
		public enum ScriptDebugEvent : int32
		{
			ScriptDebugBreakpoint = 0,
			ScriptDebugStep = 1,
			ScriptDebugException = 2,
			ScriptDebugAsyncBreak = 3,
		}
		[AllowDuplicates]
		public enum ScriptExecutionKind : int32
		{
			ScriptExecutionNormal = 0,
			ScriptExecutionStepIn = 1,
			ScriptExecutionStepOut = 2,
			ScriptExecutionStepOver = 3,
		}
		[AllowDuplicates]
		public enum EXT_TDOP : int32
		{
			EXT_TDOP_COPY = 0,
			EXT_TDOP_RELEASE = 1,
			EXT_TDOP_SET_FROM_EXPR = 2,
			EXT_TDOP_SET_FROM_U64_EXPR = 3,
			EXT_TDOP_GET_FIELD = 4,
			EXT_TDOP_EVALUATE = 5,
			EXT_TDOP_GET_TYPE_NAME = 6,
			EXT_TDOP_OUTPUT_TYPE_NAME = 7,
			EXT_TDOP_OUTPUT_SIMPLE_VALUE = 8,
			EXT_TDOP_OUTPUT_FULL_VALUE = 9,
			EXT_TDOP_HAS_FIELD = 10,
			EXT_TDOP_GET_FIELD_OFFSET = 11,
			EXT_TDOP_GET_ARRAY_ELEMENT = 12,
			EXT_TDOP_GET_DEREFERENCE = 13,
			EXT_TDOP_GET_TYPE_SIZE = 14,
			EXT_TDOP_OUTPUT_TYPE_DEFINITION = 15,
			EXT_TDOP_GET_POINTER_TO = 16,
			EXT_TDOP_SET_FROM_TYPE_ID_AND_U64 = 17,
			EXT_TDOP_SET_PTR_FROM_TYPE_ID_AND_U64 = 18,
			EXT_TDOP_COUNT = 19,
		}
		[AllowDuplicates]
		public enum DBGKD_MAJOR_TYPES : int32
		{
			DBGKD_MAJOR_NT = 0,
			DBGKD_MAJOR_XBOX = 1,
			DBGKD_MAJOR_BIG = 2,
			DBGKD_MAJOR_EXDI = 3,
			DBGKD_MAJOR_NTBD = 4,
			DBGKD_MAJOR_EFI = 5,
			DBGKD_MAJOR_TNT = 6,
			DBGKD_MAJOR_SINGULARITY = 7,
			DBGKD_MAJOR_HYPERVISOR = 8,
			DBGKD_MAJOR_MIDORI = 9,
			DBGKD_MAJOR_CE = 10,
			DBGKD_MAJOR_COUNT = 11,
		}
		[AllowDuplicates]
		public enum WCT_OBJECT_TYPE : int32
		{
			WctCriticalSectionType = 1,
			WctSendMessageType = 2,
			WctMutexType = 3,
			WctAlpcType = 4,
			WctComType = 5,
			WctThreadWaitType = 6,
			WctProcessWaitType = 7,
			WctThreadType = 8,
			WctComActivationType = 9,
			WctUnknownType = 10,
			WctSocketIoType = 11,
			WctSmbIoType = 12,
			WctMaxType = 13,
		}
		[AllowDuplicates]
		public enum WCT_OBJECT_STATUS : int32
		{
			WctStatusNoAccess = 1,
			WctStatusRunning = 2,
			WctStatusBlocked = 3,
			WctStatusPidOnly = 4,
			WctStatusPidOnlyRpcss = 5,
			WctStatusOwned = 6,
			WctStatusNotOwned = 7,
			WctStatusAbandoned = 8,
			WctStatusUnknown = 9,
			WctStatusError = 10,
			WctStatusMax = 11,
		}
		[AllowDuplicates]
		public enum MINIDUMP_STREAM_TYPE : int32
		{
			UnusedStream = 0,
			ReservedStream0 = 1,
			ReservedStream1 = 2,
			ThreadListStream = 3,
			ModuleListStream = 4,
			MemoryListStream = 5,
			ExceptionStream = 6,
			SystemInfoStream = 7,
			ThreadExListStream = 8,
			Memory64ListStream = 9,
			CommentStreamA = 10,
			CommentStreamW = 11,
			HandleDataStream = 12,
			FunctionTableStream = 13,
			UnloadedModuleListStream = 14,
			MiscInfoStream = 15,
			MemoryInfoListStream = 16,
			ThreadInfoListStream = 17,
			HandleOperationListStream = 18,
			TokenStream = 19,
			JavaScriptDataStream = 20,
			SystemMemoryInfoStream = 21,
			ProcessVmCountersStream = 22,
			IptTraceStream = 23,
			ThreadNamesStream = 24,
			ceStreamNull = 32768,
			ceStreamSystemInfo = 32769,
			ceStreamException = 32770,
			ceStreamModuleList = 32771,
			ceStreamProcessList = 32772,
			ceStreamThreadList = 32773,
			ceStreamThreadContextList = 32774,
			ceStreamThreadCallStackList = 32775,
			ceStreamMemoryVirtualList = 32776,
			ceStreamMemoryPhysicalList = 32777,
			ceStreamBucketParameters = 32778,
			ceStreamProcessModuleMap = 32779,
			ceStreamDiagnosisList = 32780,
			LastReservedStream = 65535,
		}
		[AllowDuplicates]
		public enum MINIDUMP_HANDLE_OBJECT_INFORMATION_TYPE : int32
		{
			MiniHandleObjectInformationNone = 0,
			MiniThreadInformation1 = 1,
			MiniMutantInformation1 = 2,
			MiniMutantInformation2 = 3,
			MiniProcessInformation1 = 4,
			MiniProcessInformation2 = 5,
			MiniEventInformation1 = 6,
			MiniSectionInformation1 = 7,
			MiniSemaphoreInformation1 = 8,
			MiniHandleObjectInformationTypeMax = 9,
		}
		[AllowDuplicates]
		public enum MINIDUMP_CALLBACK_TYPE : int32
		{
			ModuleCallback = 0,
			ThreadCallback = 1,
			ThreadExCallback = 2,
			IncludeThreadCallback = 3,
			IncludeModuleCallback = 4,
			MemoryCallback = 5,
			CancelCallback = 6,
			WriteKernelMinidumpCallback = 7,
			KernelMinidumpStatusCallback = 8,
			RemoveMemoryCallback = 9,
			IncludeVmRegionCallback = 10,
			IoStartCallback = 11,
			IoWriteAllCallback = 12,
			IoFinishCallback = 13,
			ReadMemoryFailureCallback = 14,
			SecondaryFlagsCallback = 15,
			IsProcessSnapshotCallback = 16,
			VmStartCallback = 17,
			VmQueryCallback = 18,
			VmPreReadCallback = 19,
			VmPostReadCallback = 20,
		}
		[AllowDuplicates]
		public enum THREAD_WRITE_FLAGS : int32
		{
			ThreadWriteThread = 1,
			ThreadWriteStack = 2,
			ThreadWriteContext = 4,
			ThreadWriteBackingStore = 8,
			ThreadWriteInstructionWindow = 16,
			ThreadWriteThreadData = 32,
			ThreadWriteThreadInfo = 64,
		}
		[AllowDuplicates]
		public enum MODULE_WRITE_FLAGS : int32
		{
			ModuleWriteModule = 1,
			ModuleWriteDataSeg = 2,
			ModuleWriteMiscRecord = 4,
			ModuleWriteCvRecord = 8,
			ModuleReferencedByMemory = 16,
			ModuleWriteTlsData = 32,
			ModuleWriteCodeSegs = 64,
		}
		[AllowDuplicates]
		public enum MINIDUMP_TYPE : uint32
		{
			MiniDumpNormal = 0,
			MiniDumpWithDataSegs = 1,
			MiniDumpWithFullMemory = 2,
			MiniDumpWithHandleData = 4,
			MiniDumpFilterMemory = 8,
			MiniDumpScanMemory = 16,
			MiniDumpWithUnloadedModules = 32,
			MiniDumpWithIndirectlyReferencedMemory = 64,
			MiniDumpFilterModulePaths = 128,
			MiniDumpWithProcessThreadData = 256,
			MiniDumpWithPrivateReadWriteMemory = 512,
			MiniDumpWithoutOptionalData = 1024,
			MiniDumpWithFullMemoryInfo = 2048,
			MiniDumpWithThreadInfo = 4096,
			MiniDumpWithCodeSegs = 8192,
			MiniDumpWithoutAuxiliaryState = 16384,
			MiniDumpWithFullAuxiliaryState = 32768,
			MiniDumpWithPrivateWriteCopyMemory = 65536,
			MiniDumpIgnoreInaccessibleMemory = 131072,
			MiniDumpWithTokenInformation = 262144,
			MiniDumpWithModuleHeaders = 524288,
			MiniDumpFilterTriage = 1048576,
			MiniDumpWithAvxXStateContext = 2097152,
			MiniDumpWithIptTrace = 4194304,
			MiniDumpScanInaccessiblePartialPages = 8388608,
			MiniDumpFilterWriteCombinedMemory = 16777216,
			MiniDumpValidTypeFlags = 33554431,
		}
		[AllowDuplicates]
		public enum MINIDUMP_SECONDARY_FLAGS : int32
		{
			MiniSecondaryWithoutPowerInfo = 1,
			MiniSecondaryValidFlags = 1,
		}
		[AllowDuplicates]
		public enum SCRIPTLANGUAGEVERSION : int32
		{
			SCRIPTLANGUAGEVERSION_DEFAULT = 0,
			SCRIPTLANGUAGEVERSION_5_7 = 1,
			SCRIPTLANGUAGEVERSION_5_8 = 2,
			SCRIPTLANGUAGEVERSION_MAX = 255,
		}
		[AllowDuplicates]
		public enum SCRIPTSTATE : int32
		{
			SCRIPTSTATE_UNINITIALIZED = 0,
			SCRIPTSTATE_INITIALIZED = 5,
			SCRIPTSTATE_STARTED = 1,
			SCRIPTSTATE_CONNECTED = 2,
			SCRIPTSTATE_DISCONNECTED = 3,
			SCRIPTSTATE_CLOSED = 4,
		}
		[AllowDuplicates]
		public enum SCRIPTTRACEINFO : int32
		{
			SCRIPTTRACEINFO_SCRIPTSTART = 0,
			SCRIPTTRACEINFO_SCRIPTEND = 1,
			SCRIPTTRACEINFO_COMCALLSTART = 2,
			SCRIPTTRACEINFO_COMCALLEND = 3,
			SCRIPTTRACEINFO_CREATEOBJSTART = 4,
			SCRIPTTRACEINFO_CREATEOBJEND = 5,
			SCRIPTTRACEINFO_GETOBJSTART = 6,
			SCRIPTTRACEINFO_GETOBJEND = 7,
		}
		[AllowDuplicates]
		public enum SCRIPTTHREADSTATE : int32
		{
			SCRIPTTHREADSTATE_NOTINSCRIPT = 0,
			SCRIPTTHREADSTATE_RUNNING = 1,
		}
		[AllowDuplicates]
		public enum SCRIPTGCTYPE : int32
		{
			SCRIPTGCTYPE_NORMAL = 0,
			SCRIPTGCTYPE_EXHAUSTIVE = 1,
		}
		[AllowDuplicates]
		public enum SCRIPTUICITEM : int32
		{
			SCRIPTUICITEM_INPUTBOX = 1,
			SCRIPTUICITEM_MSGBOX = 2,
		}
		[AllowDuplicates]
		public enum SCRIPTUICHANDLING : int32
		{
			SCRIPTUICHANDLING_ALLOW = 0,
			SCRIPTUICHANDLING_NOUIERROR = 1,
			SCRIPTUICHANDLING_NOUIDEFAULT = 2,
		}
		[AllowDuplicates]
		public enum DBGPROP_ATTRIB_FLAGS : uint32
		{
			DBGPROP_ATTRIB_NO_ATTRIB = 0,
			DBGPROP_ATTRIB_VALUE_IS_INVALID = 8,
			DBGPROP_ATTRIB_VALUE_IS_EXPANDABLE = 16,
			DBGPROP_ATTRIB_VALUE_IS_FAKE = 32,
			DBGPROP_ATTRIB_VALUE_IS_METHOD = 256,
			DBGPROP_ATTRIB_VALUE_IS_EVENT = 512,
			DBGPROP_ATTRIB_VALUE_IS_RAW_STRING = 1024,
			DBGPROP_ATTRIB_VALUE_READONLY = 2048,
			DBGPROP_ATTRIB_ACCESS_PUBLIC = 4096,
			DBGPROP_ATTRIB_ACCESS_PRIVATE = 8192,
			DBGPROP_ATTRIB_ACCESS_PROTECTED = 16384,
			DBGPROP_ATTRIB_ACCESS_FINAL = 32768,
			DBGPROP_ATTRIB_STORAGE_GLOBAL = 65536,
			DBGPROP_ATTRIB_STORAGE_STATIC = 131072,
			DBGPROP_ATTRIB_STORAGE_FIELD = 262144,
			DBGPROP_ATTRIB_STORAGE_VIRTUAL = 524288,
			DBGPROP_ATTRIB_TYPE_IS_CONSTANT = 1048576,
			DBGPROP_ATTRIB_TYPE_IS_SYNCHRONIZED = 2097152,
			DBGPROP_ATTRIB_TYPE_IS_VOLATILE = 4194304,
			DBGPROP_ATTRIB_HAS_EXTENDED_ATTRIBS = 8388608,
			DBGPROP_ATTRIB_FRAME_INTRYBLOCK = 16777216,
			DBGPROP_ATTRIB_FRAME_INCATCHBLOCK = 33554432,
			DBGPROP_ATTRIB_FRAME_INFINALLYBLOCK = 67108864,
			DBGPROP_ATTRIB_VALUE_IS_RETURN_VALUE = 134217728,
			DBGPROP_ATTRIB_VALUE_PENDING_MUTATION = 268435456,
		}
		[AllowDuplicates]
		public enum DBGPROP_INFO : uint32
		{
			DBGPROP_INFO_NAME = 1,
			DBGPROP_INFO_TYPE = 2,
			DBGPROP_INFO_VALUE = 4,
			DBGPROP_INFO_FULLNAME = 32,
			DBGPROP_INFO_ATTRIBUTES = 8,
			DBGPROP_INFO_DEBUGPROP = 16,
			DBGPROP_INFO_BEAUTIFY = 33554432,
			DBGPROP_INFO_CALLTOSTRING = 67108864,
			DBGPROP_INFO_AUTOEXPAND = 134217728,
		}
		[AllowDuplicates]
		public enum OBJECT_ATTRIB_FLAG : uint32
		{
			OBJECT_ATTRIB_NO_ATTRIB = 0,
			OBJECT_ATTRIB_NO_NAME = 1,
			OBJECT_ATTRIB_NO_TYPE = 2,
			OBJECT_ATTRIB_NO_VALUE = 4,
			OBJECT_ATTRIB_VALUE_IS_INVALID = 8,
			OBJECT_ATTRIB_VALUE_IS_OBJECT = 16,
			OBJECT_ATTRIB_VALUE_IS_ENUM = 32,
			OBJECT_ATTRIB_VALUE_IS_CUSTOM = 64,
			OBJECT_ATTRIB_OBJECT_IS_EXPANDABLE = 112,
			OBJECT_ATTRIB_VALUE_HAS_CODE = 128,
			OBJECT_ATTRIB_TYPE_IS_OBJECT = 256,
			OBJECT_ATTRIB_TYPE_HAS_CODE = 512,
			OBJECT_ATTRIB_TYPE_IS_EXPANDABLE = 256,
			OBJECT_ATTRIB_SLOT_IS_CATEGORY = 1024,
			OBJECT_ATTRIB_VALUE_READONLY = 2048,
			OBJECT_ATTRIB_ACCESS_PUBLIC = 4096,
			OBJECT_ATTRIB_ACCESS_PRIVATE = 8192,
			OBJECT_ATTRIB_ACCESS_PROTECTED = 16384,
			OBJECT_ATTRIB_ACCESS_FINAL = 32768,
			OBJECT_ATTRIB_STORAGE_GLOBAL = 65536,
			OBJECT_ATTRIB_STORAGE_STATIC = 131072,
			OBJECT_ATTRIB_STORAGE_FIELD = 262144,
			OBJECT_ATTRIB_STORAGE_VIRTUAL = 524288,
			OBJECT_ATTRIB_TYPE_IS_CONSTANT = 1048576,
			OBJECT_ATTRIB_TYPE_IS_SYNCHRONIZED = 2097152,
			OBJECT_ATTRIB_TYPE_IS_VOLATILE = 4194304,
			OBJECT_ATTRIB_HAS_EXTENDED_ATTRIBS = 8388608,
			OBJECT_ATTRIB_IS_CLASS = 16777216,
			OBJECT_ATTRIB_IS_FUNCTION = 33554432,
			OBJECT_ATTRIB_IS_VARIABLE = 67108864,
			OBJECT_ATTRIB_IS_PROPERTY = 134217728,
			OBJECT_ATTRIB_IS_MACRO = 268435456,
			OBJECT_ATTRIB_IS_TYPE = 536870912,
			OBJECT_ATTRIB_IS_INHERITED = 1073741824,
			OBJECT_ATTRIB_IS_INTERFACE = 2147483648,
		}
		[AllowDuplicates]
		public enum PROP_INFO_FLAGS : int32
		{
			PROP_INFO_NAME = 1,
			PROP_INFO_TYPE = 2,
			PROP_INFO_VALUE = 4,
			PROP_INFO_FULLNAME = 32,
			PROP_INFO_ATTRIBUTES = 8,
			PROP_INFO_DEBUGPROP = 16,
			PROP_INFO_AUTOEXPAND = 134217728,
		}
		[AllowDuplicates]
		public enum EX_PROP_INFO_FLAGS : int32
		{
			EX_PROP_INFO_ID = 256,
			EX_PROP_INFO_NTYPE = 512,
			EX_PROP_INFO_NVALUE = 1024,
			EX_PROP_INFO_LOCKBYTES = 2048,
			EX_PROP_INFO_DEBUGEXTPROP = 4096,
		}
		[AllowDuplicates]
		public enum BREAKPOINT_STATE : int32
		{
			BREAKPOINT_DELETED = 0,
			BREAKPOINT_DISABLED = 1,
			BREAKPOINT_ENABLED = 2,
		}
		[AllowDuplicates]
		public enum BREAKREASON : int32
		{
			BREAKREASON_STEP = 0,
			BREAKREASON_BREAKPOINT = 1,
			BREAKREASON_DEBUGGER_BLOCK = 2,
			BREAKREASON_HOST_INITIATED = 3,
			BREAKREASON_LANGUAGE_INITIATED = 4,
			BREAKREASON_DEBUGGER_HALT = 5,
			BREAKREASON_ERROR = 6,
			BREAKREASON_JIT = 7,
			BREAKREASON_MUTATION_BREAKPOINT = 8,
		}
		[AllowDuplicates]
		public enum BREAKRESUME_ACTION : int32
		{
			BREAKRESUMEACTION_ABORT = 0,
			BREAKRESUMEACTION_CONTINUE = 1,
			BREAKRESUMEACTION_STEP_INTO = 2,
			BREAKRESUMEACTION_STEP_OVER = 3,
			BREAKRESUMEACTION_STEP_OUT = 4,
			BREAKRESUMEACTION_IGNORE = 5,
			BREAKRESUMEACTION_STEP_DOCUMENT = 6,
		}
		[AllowDuplicates]
		public enum ERRORRESUMEACTION : int32
		{
			ERRORRESUMEACTION_ReexecuteErrorStatement = 0,
			ERRORRESUMEACTION_AbortCallAndReturnErrorToCaller = 1,
			ERRORRESUMEACTION_SkipErrorStatement = 2,
		}
		[AllowDuplicates]
		public enum DOCUMENTNAMETYPE : int32
		{
			DOCUMENTNAMETYPE_APPNODE = 0,
			DOCUMENTNAMETYPE_TITLE = 1,
			DOCUMENTNAMETYPE_FILE_TAIL = 2,
			DOCUMENTNAMETYPE_URL = 3,
			DOCUMENTNAMETYPE_UNIQUE_TITLE = 4,
			DOCUMENTNAMETYPE_SOURCE_MAP_URL = 5,
		}
		[AllowDuplicates]
		public enum PROFILER_SCRIPT_TYPE : int32
		{
			PROFILER_SCRIPT_TYPE_USER = 0,
			PROFILER_SCRIPT_TYPE_DYNAMIC = 1,
			PROFILER_SCRIPT_TYPE_NATIVE = 2,
			PROFILER_SCRIPT_TYPE_DOM = 3,
		}
		[AllowDuplicates]
		public enum PROFILER_EVENT_MASK : uint32
		{
			PROFILER_EVENT_MASK_TRACE_SCRIPT_FUNCTION_CALL = 1,
			PROFILER_EVENT_MASK_TRACE_NATIVE_FUNCTION_CALL = 2,
			PROFILER_EVENT_MASK_TRACE_DOM_FUNCTION_CALL = 4,
			PROFILER_EVENT_MASK_TRACE_ALL = 3,
			PROFILER_EVENT_MASK_TRACE_ALL_WITH_DOM = 7,
		}
		[AllowDuplicates]
		public enum PROFILER_HEAP_OBJECT_FLAGS : uint32
		{
			PROFILER_HEAP_OBJECT_FLAGS_NEW_OBJECT = 1,
			PROFILER_HEAP_OBJECT_FLAGS_IS_ROOT = 2,
			PROFILER_HEAP_OBJECT_FLAGS_SITE_CLOSED = 4,
			PROFILER_HEAP_OBJECT_FLAGS_EXTERNAL = 8,
			PROFILER_HEAP_OBJECT_FLAGS_EXTERNAL_UNKNOWN = 16,
			PROFILER_HEAP_OBJECT_FLAGS_EXTERNAL_DISPATCH = 32,
			PROFILER_HEAP_OBJECT_FLAGS_SIZE_APPROXIMATE = 64,
			PROFILER_HEAP_OBJECT_FLAGS_SIZE_UNAVAILABLE = 128,
			PROFILER_HEAP_OBJECT_FLAGS_NEW_STATE_UNAVAILABLE = 256,
			PROFILER_HEAP_OBJECT_FLAGS_WINRT_INSTANCE = 512,
			PROFILER_HEAP_OBJECT_FLAGS_WINRT_RUNTIMECLASS = 1024,
			PROFILER_HEAP_OBJECT_FLAGS_WINRT_DELEGATE = 2048,
			PROFILER_HEAP_OBJECT_FLAGS_WINRT_NAMESPACE = 4096,
		}
		[AllowDuplicates]
		public enum PROFILER_HEAP_OBJECT_OPTIONAL_INFO_TYPE : int32
		{
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_PROTOTYPE = 1,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_FUNCTION_NAME = 2,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_SCOPE_LIST = 3,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_INTERNAL_PROPERTY = 4,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_NAME_PROPERTIES = 5,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_INDEX_PROPERTIES = 6,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_ELEMENT_ATTRIBUTES_SIZE = 7,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_ELEMENT_TEXT_CHILDREN_SIZE = 8,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_RELATIONSHIPS = 9,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_WINRTEVENTS = 10,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_WEAKMAP_COLLECTION_LIST = 11,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_MAP_COLLECTION_LIST = 12,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_SET_COLLECTION_LIST = 13,
			PROFILER_HEAP_OBJECT_OPTIONAL_INFO_MAX_VALUE = 13,
		}
		[AllowDuplicates]
		public enum PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS : uint32
		{
			PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS_NONE = 0,
			PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS_IS_GET_ACCESSOR = 65536,
			PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS_IS_SET_ACCESSOR = 131072,
			PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS_LET_VARIABLE = 262144,
			PROFILER_HEAP_OBJECT_RELATIONSHIP_FLAGS_CONST_VARIABLE = 524288,
		}
		[AllowDuplicates]
		public enum PROFILER_HEAP_ENUM_FLAGS : uint32
		{
			PROFILER_HEAP_ENUM_FLAGS_NONE = 0,
			PROFILER_HEAP_ENUM_FLAGS_STORE_RELATIONSHIP_FLAGS = 1,
			PROFILER_HEAP_ENUM_FLAGS_SUBSTRINGS = 2,
			PROFILER_HEAP_ENUM_FLAGS_RELATIONSHIP_SUBSTRINGS = 3,
		}
		[AllowDuplicates]
		public enum PROFILER_RELATIONSHIP_INFO : int32
		{
			PROFILER_PROPERTY_TYPE_NUMBER = 1,
			PROFILER_PROPERTY_TYPE_STRING = 2,
			PROFILER_PROPERTY_TYPE_HEAP_OBJECT = 3,
			PROFILER_PROPERTY_TYPE_EXTERNAL_OBJECT = 4,
			PROFILER_PROPERTY_TYPE_BSTR = 5,
			PROFILER_PROPERTY_TYPE_SUBSTRING = 6,
		}
		[AllowDuplicates]
		public enum PROFILER_HEAP_SUMMARY_VERSION : int32
		{
			PROFILER_HEAP_SUMMARY_VERSION_1 = 1,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_STATUS_REASON : int32
		{
			BindOutOfMemory = 0,
			BindRvaToVaFailed = 1,
			BindNoRoomInImage = 2,
			BindImportModuleFailed = 3,
			BindImportProcedureFailed = 4,
			BindImportModule = 5,
			BindImportProcedure = 6,
			BindForwarder = 7,
			BindForwarderNOT = 8,
			BindImageModified = 9,
			BindExpandFileHeaders = 10,
			BindImageComplete = 11,
			BindMismatchedSymbols = 12,
			BindSymbolsNotUpdated = 13,
			BindImportProcedure32 = 14,
			BindImportProcedure64 = 15,
			BindForwarder32 = 16,
			BindForwarder64 = 17,
			BindForwarderNOT32 = 18,
			BindForwarderNOT64 = 19,
		}
		[AllowDuplicates]
		public enum ADDRESS_MODE : int32
		{
			AddrMode1616 = 0,
			AddrMode1632 = 1,
			AddrModeReal = 2,
			AddrModeFlat = 3,
		}
		[AllowDuplicates]
		public enum SYM_TYPE : int32
		{
			SymNone = 0,
			SymCoff = 1,
			SymCv = 2,
			SymPdb = 3,
			SymExport = 4,
			SymDeferred = 5,
			SymSym = 6,
			SymDia = 7,
			SymVirtual = 8,
			NumSymTypes = 9,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_HD_TYPE : int32
		{
			hdBase = 0,
			hdSym = 1,
			hdSrc = 2,
			hdMax = 3,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_EXTENDED_OPTIONS : int32
		{
			SYMOPT_EX_DISABLEACCESSTIMEUPDATE = 0,
			SYMOPT_EX_LASTVALIDDEBUGDIRECTORY = 1,
			SYMOPT_EX_NOIMPLICITPATTERNSEARCH = 2,
			SYMOPT_EX_NEVERLOADSYMBOLS = 3,
			SYMOPT_EX_MAX = 4,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_SYMBOL_TYPE_INFO : int32
		{
			TI_GET_SYMTAG = 0,
			TI_GET_SYMNAME = 1,
			TI_GET_LENGTH = 2,
			TI_GET_TYPE = 3,
			TI_GET_TYPEID = 4,
			TI_GET_BASETYPE = 5,
			TI_GET_ARRAYINDEXTYPEID = 6,
			TI_FINDCHILDREN = 7,
			TI_GET_DATAKIND = 8,
			TI_GET_ADDRESSOFFSET = 9,
			TI_GET_OFFSET = 10,
			TI_GET_VALUE = 11,
			TI_GET_COUNT = 12,
			TI_GET_CHILDRENCOUNT = 13,
			TI_GET_BITPOSITION = 14,
			TI_GET_VIRTUALBASECLASS = 15,
			TI_GET_VIRTUALTABLESHAPEID = 16,
			TI_GET_VIRTUALBASEPOINTEROFFSET = 17,
			TI_GET_CLASSPARENTID = 18,
			TI_GET_NESTED = 19,
			TI_GET_SYMINDEX = 20,
			TI_GET_LEXICALPARENT = 21,
			TI_GET_ADDRESS = 22,
			TI_GET_THISADJUST = 23,
			TI_GET_UDTKIND = 24,
			TI_IS_EQUIV_TO = 25,
			TI_GET_CALLING_CONVENTION = 26,
			TI_IS_CLOSE_EQUIV_TO = 27,
			TI_GTIEX_REQS_VALID = 28,
			TI_GET_VIRTUALBASEOFFSET = 29,
			TI_GET_VIRTUALBASEDISPINDEX = 30,
			TI_GET_IS_REFERENCE = 31,
			TI_GET_INDIRECTVIRTUALBASECLASS = 32,
			TI_GET_VIRTUALBASETABLETYPE = 33,
			TI_GET_OBJECTPOINTERTYPE = 34,
			IMAGEHLP_SYMBOL_TYPE_INFO_MAX = 35,
		}
		[AllowDuplicates]
		public enum IMAGEHLP_SF_TYPE : int32
		{
			sfImage = 0,
			sfDbg = 1,
			sfPdb = 2,
			sfMpd = 3,
			sfMax = 4,
		}
		[AllowDuplicates]
		public enum APPLICATION_NODE_EVENT_FILTER : int32
		{
			FILTER_EXCLUDE_NOTHING = 0,
			FILTER_EXCLUDE_ANONYMOUS_CODE = 1,
			FILTER_EXCLUDE_EVAL_CODE = 2,
		}
		[AllowDuplicates]
		public enum SCRIPT_DEBUGGER_OPTIONS : int32
		{
			SDO_NONE = 0,
			SDO_ENABLE_FIRST_CHANCE_EXCEPTIONS = 1,
			SDO_ENABLE_WEB_WORKER_SUPPORT = 2,
			SDO_ENABLE_NONUSER_CODE_SUPPORT = 4,
			SDO_ENABLE_LIBRARY_STACK_FRAME = 8,
		}
		[AllowDuplicates]
		public enum SCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND : int32
		{
			ETK_FIRST_CHANCE = 0,
			ETK_USER_UNHANDLED = 1,
			ETK_UNHANDLED = 2,
		}
		[AllowDuplicates]
		public enum SCRIPT_INVOCATION_CONTEXT_TYPE : int32
		{
			SICT_Event = 0,
			SICT_SetTimeout = 1,
			SICT_SetInterval = 2,
			SICT_SetImmediate = 3,
			SICT_RequestAnimationFrame = 4,
			SICT_ToString = 5,
			SICT_MutationObserverCheckpoint = 6,
			SICT_WWAExecUnsafeLocalFunction = 7,
			SICT_WWAExecAtPriority = 8,
		}
		[AllowDuplicates]
		public enum DEBUG_STACKFRAME_TYPE : int32
		{
			DST_SCRIPT_FRAME = 0,
			DST_INTERNAL_FRAME = 1,
			DST_INVOCATION_FRAME = 2,
		}
		[AllowDuplicates]
		public enum DEBUG_EVENT_INFO_TYPE : int32
		{
			DEIT_GENERAL = 0,
			DEIT_ASMJS_IN_DEBUGGING = 1,
			DEIT_ASMJS_SUCCEEDED = 2,
			DEIT_ASMJS_FAILED = 3,
		}
		[AllowDuplicates]
		public enum JS_PROPERTY_MEMBERS : int32
		{
			JS_PROPERTY_MEMBERS_ALL = 0,
			JS_PROPERTY_MEMBERS_ARGUMENTS = 1,
		}
		[AllowDuplicates]
		public enum JS_PROPERTY_ATTRIBUTES : int32
		{
			JS_PROPERTY_ATTRIBUTE_NONE = 0,
			JS_PROPERTY_HAS_CHILDREN = 1,
			JS_PROPERTY_FAKE = 2,
			JS_PROPERTY_METHOD = 4,
			JS_PROPERTY_READONLY = 8,
			JS_PROPERTY_NATIVE_WINRT_POINTER = 16,
			JS_PROPERTY_FRAME_INTRYBLOCK = 32,
			JS_PROPERTY_FRAME_INCATCHBLOCK = 64,
			JS_PROPERTY_FRAME_INFINALLYBLOCK = 128,
		}
		[AllowDuplicates]
		public enum JsDebugReadMemoryFlags : int32
		{
			None = 0,
			JsDebugAllowPartialRead = 1,
		}
		[AllowDuplicates]
		public enum _DUMP_TYPES : int32
		{
			DUMP_TYPE_INVALID = -1,
			DUMP_TYPE_UNKNOWN = 0,
			DUMP_TYPE_FULL = 1,
			DUMP_TYPE_SUMMARY = 2,
			DUMP_TYPE_HEADER = 3,
			DUMP_TYPE_TRIAGE = 4,
			DUMP_TYPE_BITMAP_FULL = 5,
			DUMP_TYPE_BITMAP_KERNEL = 6,
			DUMP_TYPE_AUTOMATIC = 7,
		}
		[AllowDuplicates]
		public enum WHEA_ERROR_SOURCE_TYPE : int32
		{
			WheaErrSrcTypeMCE = 0,
			WheaErrSrcTypeCMC = 1,
			WheaErrSrcTypeCPE = 2,
			WheaErrSrcTypeNMI = 3,
			WheaErrSrcTypePCIe = 4,
			WheaErrSrcTypeGeneric = 5,
			WheaErrSrcTypeINIT = 6,
			WheaErrSrcTypeBOOT = 7,
			WheaErrSrcTypeSCIGeneric = 8,
			WheaErrSrcTypeIPFMCA = 9,
			WheaErrSrcTypeIPFCMC = 10,
			WheaErrSrcTypeIPFCPE = 11,
			WheaErrSrcTypeGenericV2 = 12,
			WheaErrSrcTypeSCIGenericV2 = 13,
			WheaErrSrcTypeBMC = 14,
			WheaErrSrcTypePMEM = 15,
			WheaErrSrcTypeDeviceDriver = 16,
			WheaErrSrcTypeMax = 17,
		}
		[AllowDuplicates]
		public enum WHEA_ERROR_SOURCE_STATE : int32
		{
			WheaErrSrcStateStopped = 1,
			WheaErrSrcStateStarted = 2,
			WheaErrSrcStateRemoved = 3,
			WheaErrSrcStateRemovePending = 4,
		}
		[AllowDuplicates]
		public enum IPMI_OS_SEL_RECORD_TYPE : int32
		{
			IpmiOsSelRecordTypeWhea = 0,
			IpmiOsSelRecordTypeOther = 1,
			IpmiOsSelRecordTypeWheaErrorXpfMca = 2,
			IpmiOsSelRecordTypeWheaErrorPci = 3,
			IpmiOsSelRecordTypeWheaErrorNmi = 4,
			IpmiOsSelRecordTypeWheaErrorOther = 5,
			IpmiOsSelRecordTypeRaw = 6,
			IpmiOsSelRecordTypeDriver = 7,
			IpmiOsSelRecordTypeBugcheckRecovery = 8,
			IpmiOsSelRecordTypeBugcheckData = 9,
			IpmiOsSelRecordTypeMax = 10,
		}
		
		// --- Function Pointers ---
		
		public function IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* PGET_RUNTIME_FUNCTION_CALLBACK(uint64 ControlPc, void* Context);
		public function HRESULT PDEBUG_EXTENSION_INITIALIZE(uint32* Version, uint32* Flags);
		public function void PDEBUG_EXTENSION_UNINITIALIZE();
		public function HRESULT PDEBUG_EXTENSION_CANUNLOAD();
		public function void PDEBUG_EXTENSION_UNLOAD();
		public function void PDEBUG_EXTENSION_NOTIFY(uint32 Notify, uint64 Argument);
		public function HRESULT PDEBUG_EXTENSION_CALL(IDebugClient* Client, PSTR Args);
		public function HRESULT PDEBUG_EXTENSION_KNOWN_STRUCT(uint32 Flags, uint64 Offset, PSTR TypeName, uint8* Buffer, uint32* BufferChars);
		public function HRESULT PDEBUG_EXTENSION_KNOWN_STRUCT_EX(IDebugClient* Client, uint32 Flags, uint64 Offset, PSTR TypeName, uint8* Buffer, uint32* BufferChars);
		public function HRESULT PDEBUG_EXTENSION_QUERY_VALUE_NAMES(IDebugClient* Client, uint32 Flags, char16* Buffer, uint32 BufferChars, uint32* BufferNeeded);
		public function HRESULT PDEBUG_EXTENSION_PROVIDE_VALUE(IDebugClient* Client, uint32 Flags, PWSTR Name, uint64* Value, uint64* TypeModBase, uint32* TypeId, uint32* TypeFlags);
		public function HRESULT PDEBUG_STACK_PROVIDER_BEGINTHREADSTACKRECONSTRUCTION(uint32 StreamType, void* MiniDumpStreamBuffer, uint32 BufferSize);
		public function HRESULT PDEBUG_STACK_PROVIDER_RECONSTRUCTSTACK(uint32 SystemThreadId, DEBUG_STACK_FRAME_EX* NativeFrames, uint32 CountNativeFrames, STACK_SYM_FRAME_INFO** StackSymFrames, uint32* StackSymFramesFilled);
		public function HRESULT PDEBUG_STACK_PROVIDER_FREESTACKSYMFRAMES(STACK_SYM_FRAME_INFO* StackSymFrames);
		public function HRESULT PDEBUG_STACK_PROVIDER_ENDTHREADSTACKRECONSTRUCTION();
		public function void PWINDBG_OUTPUT_ROUTINE(PSTR lpFormat);
		public function uint PWINDBG_GET_EXPRESSION(PSTR lpExpression);
		public function uint32 PWINDBG_GET_EXPRESSION32(PSTR lpExpression);
		public function uint64 PWINDBG_GET_EXPRESSION64(PSTR lpExpression);
		public function void PWINDBG_GET_SYMBOL(void* offset, PSTR pchBuffer, uint* pDisplacement);
		public function void PWINDBG_GET_SYMBOL32(uint32 offset, PSTR pchBuffer, uint32* pDisplacement);
		public function void PWINDBG_GET_SYMBOL64(uint64 offset, PSTR pchBuffer, uint64* pDisplacement);
		public function uint32 PWINDBG_DISASM(uint* lpOffset, PSTR lpBuffer, uint32 fShowEffectiveAddress);
		public function uint32 PWINDBG_DISASM32(uint32* lpOffset, PSTR lpBuffer, uint32 fShowEffectiveAddress);
		public function uint32 PWINDBG_DISASM64(uint64* lpOffset, PSTR lpBuffer, uint32 fShowEffectiveAddress);
		public function uint32 PWINDBG_CHECK_CONTROL_C();
		public function uint32 PWINDBG_READ_PROCESS_MEMORY_ROUTINE(uint offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesRead);
		public function uint32 PWINDBG_READ_PROCESS_MEMORY_ROUTINE32(uint32 offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesRead);
		public function uint32 PWINDBG_READ_PROCESS_MEMORY_ROUTINE64(uint64 offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesRead);
		public function uint32 PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE(uint offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesWritten);
		public function uint32 PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32(uint32 offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesWritten);
		public function uint32 PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE64(uint64 offset, void* lpBuffer, uint32 cb, uint32* lpcbBytesWritten);
		public function uint32 PWINDBG_GET_THREAD_CONTEXT_ROUTINE(uint32 Processor, CONTEXT* lpContext, uint32 cbSizeOfContext);
		public function uint32 PWINDBG_SET_THREAD_CONTEXT_ROUTINE(uint32 Processor, CONTEXT* lpContext, uint32 cbSizeOfContext);
		public function uint32 PWINDBG_IOCTL_ROUTINE(uint16 IoctlType, void* lpvData, uint32 cbSize);
		public function uint32 PWINDBG_OLDKD_READ_PHYSICAL_MEMORY(uint64 address, void* buffer, uint32 count, uint32* bytesread);
		public function uint32 PWINDBG_OLDKD_WRITE_PHYSICAL_MEMORY(uint64 address, void* buffer, uint32 length, uint32* byteswritten);
		public function uint32 PWINDBG_STACKTRACE_ROUTINE(uint32 FramePointer, uint32 StackPointer, uint32 ProgramCounter, EXTSTACKTRACE* StackFrames, uint32 Frames);
		public function uint32 PWINDBG_STACKTRACE_ROUTINE32(uint32 FramePointer, uint32 StackPointer, uint32 ProgramCounter, EXTSTACKTRACE32* StackFrames, uint32 Frames);
		public function uint32 PWINDBG_STACKTRACE_ROUTINE64(uint64 FramePointer, uint64 StackPointer, uint64 ProgramCounter, EXTSTACKTRACE64* StackFrames, uint32 Frames);
		public function void PWINDBG_OLD_EXTENSION_ROUTINE(uint32 dwCurrentPc, WINDBG_EXTENSION_APIS* lpExtensionApis, PSTR lpArgumentString);
		public function void PWINDBG_EXTENSION_ROUTINE(HANDLE hCurrentProcess, HANDLE hCurrentThread, uint32 dwCurrentPc, uint32 dwProcessor, PSTR lpArgumentString);
		public function void PWINDBG_EXTENSION_ROUTINE32(HANDLE hCurrentProcess, HANDLE hCurrentThread, uint32 dwCurrentPc, uint32 dwProcessor, PSTR lpArgumentString);
		public function void PWINDBG_EXTENSION_ROUTINE64(HANDLE hCurrentProcess, HANDLE hCurrentThread, uint64 dwCurrentPc, uint32 dwProcessor, PSTR lpArgumentString);
		public function void PWINDBG_OLDKD_EXTENSION_ROUTINE(uint32 dwCurrentPc, WINDBG_OLDKD_EXTENSION_APIS* lpExtensionApis, PSTR lpArgumentString);
		public function void PWINDBG_EXTENSION_DLL_INIT(WINDBG_EXTENSION_APIS* lpExtensionApis, uint16 MajorVersion, uint16 MinorVersion);
		public function void PWINDBG_EXTENSION_DLL_INIT32(WINDBG_EXTENSION_APIS32* lpExtensionApis, uint16 MajorVersion, uint16 MinorVersion);
		public function void PWINDBG_EXTENSION_DLL_INIT64(WINDBG_EXTENSION_APIS64* lpExtensionApis, uint16 MajorVersion, uint16 MinorVersion);
		public function uint32 PWINDBG_CHECK_VERSION();
		public function EXT_API_VERSION* PWINDBG_EXTENSION_API_VERSION();
		public function uint32 PSYM_DUMP_FIELD_CALLBACK(FIELD_INFO* pField, void* UserContext);
		public function int32 PVECTORED_EXCEPTION_HANDLER(EXCEPTION_POINTERS* ExceptionInfo);
		public function int32 LPTOP_LEVEL_EXCEPTION_FILTER(EXCEPTION_POINTERS* ExceptionInfo);
		public function void PWAITCHAINCALLBACK(void* WctHandle, uint Context, uint32 CallbackStatus, uint32* NodeCount, WAITCHAIN_NODE_INFO* NodeInfoArray, int32* IsCycle);
		public function HRESULT PCOGETCALLSTATE(int32 param0, uint32* param1);
		public function HRESULT PCOGETACTIVATIONSTATE(Guid param0, uint32 param1, uint32* param2);
		public function BOOL MINIDUMP_CALLBACK_ROUTINE(void* CallbackParam, MINIDUMP_CALLBACK_INPUT* CallbackInput, MINIDUMP_CALLBACK_OUTPUT* CallbackOutput);
		public function BOOL PIMAGEHLP_STATUS_ROUTINE(IMAGEHLP_STATUS_REASON Reason, PSTR ImageName, PSTR DllName, uint Va, uint Parameter);
		public function BOOL PIMAGEHLP_STATUS_ROUTINE32(IMAGEHLP_STATUS_REASON Reason, PSTR ImageName, PSTR DllName, uint32 Va, uint Parameter);
		public function BOOL PIMAGEHLP_STATUS_ROUTINE64(IMAGEHLP_STATUS_REASON Reason, PSTR ImageName, PSTR DllName, uint64 Va, uint Parameter);
		public function BOOL DIGEST_FUNCTION(void* refdata, uint8* pData, uint32 dwLength);
		public function BOOL PFIND_DEBUG_FILE_CALLBACK(HANDLE FileHandle, PSTR FileName, void* CallerData);
		public function BOOL PFIND_DEBUG_FILE_CALLBACKW(HANDLE FileHandle, PWSTR FileName, void* CallerData);
		public function BOOL PFINDFILEINPATHCALLBACK(PSTR filename, void* context);
		public function BOOL PFINDFILEINPATHCALLBACKW(PWSTR filename, void* context);
		public function BOOL PFIND_EXE_FILE_CALLBACK(HANDLE FileHandle, PSTR FileName, void* CallerData);
		public function BOOL PFIND_EXE_FILE_CALLBACKW(HANDLE FileHandle, PWSTR FileName, void* CallerData);
		public function BOOL PENUMDIRTREE_CALLBACK(PSTR FilePath, void* CallerData);
		public function BOOL PENUMDIRTREE_CALLBACKW(PWSTR FilePath, void* CallerData);
		public function BOOL PREAD_PROCESS_MEMORY_ROUTINE64(HANDLE hProcess, uint64 qwBaseAddress, void* lpBuffer, uint32 nSize, uint32* lpNumberOfBytesRead);
		public function void* PFUNCTION_TABLE_ACCESS_ROUTINE64(HANDLE ahProcess, uint64 AddrBase);
		public function uint64 PGET_MODULE_BASE_ROUTINE64(HANDLE hProcess, uint64 Address);
		public function uint64 PTRANSLATE_ADDRESS_ROUTINE64(HANDLE hProcess, HANDLE hThread, ADDRESS64* lpaddr);
		public function BOOL PSYM_ENUMMODULES_CALLBACK64(PSTR ModuleName, uint64 BaseOfDll, void* UserContext);
		public function BOOL PSYM_ENUMMODULES_CALLBACKW64(PWSTR ModuleName, uint64 BaseOfDll, void* UserContext);
		public function BOOL PENUMLOADED_MODULES_CALLBACK64(PSTR ModuleName, uint64 ModuleBase, uint32 ModuleSize, void* UserContext);
		public function BOOL PENUMLOADED_MODULES_CALLBACKW64(PWSTR ModuleName, uint64 ModuleBase, uint32 ModuleSize, void* UserContext);
		public function BOOL PSYM_ENUMSYMBOLS_CALLBACK64(PSTR SymbolName, uint64 SymbolAddress, uint32 SymbolSize, void* UserContext);
		public function BOOL PSYM_ENUMSYMBOLS_CALLBACK64W(PWSTR SymbolName, uint64 SymbolAddress, uint32 SymbolSize, void* UserContext);
		public function BOOL PSYMBOL_REGISTERED_CALLBACK64(HANDLE hProcess, uint32 ActionCode, uint64 CallbackData, uint64 UserContext);
		public function void* PSYMBOL_FUNCENTRY_CALLBACK(HANDLE hProcess, uint32 AddrBase, void* UserContext);
		public function void* PSYMBOL_FUNCENTRY_CALLBACK64(HANDLE hProcess, uint64 AddrBase, uint64 UserContext);
		public function BOOL PSYM_ENUMSOURCEFILES_CALLBACK(SOURCEFILE* pSourceFile, void* UserContext);
		public function BOOL PSYM_ENUMSOURCEFILES_CALLBACKW(SOURCEFILEW* pSourceFile, void* UserContext);
		public function BOOL PSYM_ENUMLINES_CALLBACK(SRCCODEINFO* LineInfo, void* UserContext);
		public function BOOL PSYM_ENUMLINES_CALLBACKW(SRCCODEINFOW* LineInfo, void* UserContext);
		public function BOOL PENUMSOURCEFILETOKENSCALLBACK(void* token, uint size);
		public function BOOL PSYM_ENUMPROCESSES_CALLBACK(HANDLE hProcess, void* UserContext);
		public function BOOL PSYM_ENUMERATESYMBOLS_CALLBACK(SYMBOL_INFO* pSymInfo, uint32 SymbolSize, void* UserContext);
		public function BOOL PSYM_ENUMERATESYMBOLS_CALLBACKW(SYMBOL_INFOW* pSymInfo, uint32 SymbolSize, void* UserContext);
		public function BOOL SYMADDSOURCESTREAM(HANDLE param0, uint64 param1, PSTR param2, uint8* param3, uint param4);
		public function BOOL SYMADDSOURCESTREAMA(HANDLE param0, uint64 param1, PSTR param2, uint8* param3, uint param4);
		public function BOOL PDBGHELP_CREATE_USER_DUMP_CALLBACK(uint32 DataType, void** Data, uint32* DataLength, void* UserData);
		public function BOOL PSYMBOLSERVERPROC(PSTR param0, PSTR param1, void* param2, uint32 param3, uint32 param4, PSTR param5);
		public function BOOL PSYMBOLSERVERPROCA(PSTR param0, PSTR param1, void* param2, uint32 param3, uint32 param4, PSTR param5);
		public function BOOL PSYMBOLSERVERPROCW(PWSTR param0, PWSTR param1, void* param2, uint32 param3, uint32 param4, PWSTR param5);
		public function BOOL PSYMBOLSERVERBYINDEXPROC(PSTR param0, PSTR param1, PSTR param2, PSTR param3);
		public function BOOL PSYMBOLSERVERBYINDEXPROCA(PSTR param0, PSTR param1, PSTR param2, PSTR param3);
		public function BOOL PSYMBOLSERVERBYINDEXPROCW(PWSTR param0, PWSTR param1, PWSTR param2, PWSTR param3);
		public function BOOL PSYMBOLSERVEROPENPROC();
		public function BOOL PSYMBOLSERVERCLOSEPROC();
		public function BOOL PSYMBOLSERVERSETOPTIONSPROC(uint param0, uint64 param1);
		public function BOOL PSYMBOLSERVERSETOPTIONSWPROC(uint param0, uint64 param1);
		public function BOOL PSYMBOLSERVERCALLBACKPROC(uint action, uint64 data, uint64 context);
		public function uint PSYMBOLSERVERGETOPTIONSPROC();
		public function BOOL PSYMBOLSERVERPINGPROC(PSTR param0);
		public function BOOL PSYMBOLSERVERPINGPROCA(PSTR param0);
		public function BOOL PSYMBOLSERVERPINGPROCW(PWSTR param0);
		public function BOOL PSYMBOLSERVERGETVERSION(API_VERSION* param0);
		public function BOOL PSYMBOLSERVERDELTANAME(PSTR param0, void* param1, uint32 param2, uint32 param3, void* param4, uint32 param5, uint32 param6, PSTR param7, uint param8);
		public function BOOL PSYMBOLSERVERDELTANAMEW(PWSTR param0, void* param1, uint32 param2, uint32 param3, void* param4, uint32 param5, uint32 param6, PWSTR param7, uint param8);
		public function BOOL PSYMBOLSERVERGETSUPPLEMENT(PSTR param0, PSTR param1, PSTR param2, PSTR param3, uint param4);
		public function BOOL PSYMBOLSERVERGETSUPPLEMENTW(PWSTR param0, PWSTR param1, PWSTR param2, PWSTR param3, uint param4);
		public function BOOL PSYMBOLSERVERSTORESUPPLEMENT(PSTR param0, PSTR param1, PSTR param2, PSTR param3, uint param4, uint32 param5);
		public function BOOL PSYMBOLSERVERSTORESUPPLEMENTW(PWSTR param0, PWSTR param1, PWSTR param2, PWSTR param3, uint param4, uint32 param5);
		public function BOOL PSYMBOLSERVERGETINDEXSTRING(void* param0, uint32 param1, uint32 param2, PSTR param3, uint param4);
		public function BOOL PSYMBOLSERVERGETINDEXSTRINGW(void* param0, uint32 param1, uint32 param2, PWSTR param3, uint param4);
		public function BOOL PSYMBOLSERVERSTOREFILE(PSTR param0, PSTR param1, void* param2, uint32 param3, uint32 param4, PSTR param5, uint param6, uint32 param7);
		public function BOOL PSYMBOLSERVERSTOREFILEW(PWSTR param0, PWSTR param1, void* param2, uint32 param3, uint32 param4, PWSTR param5, uint param6, uint32 param7);
		public function BOOL PSYMBOLSERVERISSTORE(PSTR param0);
		public function BOOL PSYMBOLSERVERISSTOREW(PWSTR param0);
		public function uint32 PSYMBOLSERVERVERSION();
		public function BOOL PSYMBOLSERVERMESSAGEPROC(uint action, uint64 data, uint64 context);
		public function BOOL PSYMBOLSERVERWEXPROC(PWSTR param0, PWSTR param1, void* param2, uint32 param3, uint32 param4, PWSTR param5, SYMSRV_EXTENDED_OUTPUT_DATA* param6);
		public function BOOL PSYMBOLSERVERPINGPROCWEX(PWSTR param0);
		public function BOOL PSYMBOLSERVERGETOPTIONDATAPROC(uint param0, uint64* param1);
		public function BOOL PSYMBOLSERVERSETHTTPAUTHHEADER(PWSTR pszAuthHeader);
		public function uint32 LPCALL_BACK_USER_INTERRUPT_ROUTINE();
		public function NTSTATUS WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER(void* Context, uint32 ErrorSourceId);
		public function void WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER(void* Context);
		public function NTSTATUS WHEA_ERROR_SOURCE_CORRECT_DEVICE_DRIVER(void* ErrorSourceDesc, uint32* MaximumSectionLength);
		public function BOOL PREAD_PROCESS_MEMORY_ROUTINE(HANDLE hProcess, uint32 lpBaseAddress, void* lpBuffer, uint32 nSize, uint32* lpNumberOfBytesRead);
		public function void* PFUNCTION_TABLE_ACCESS_ROUTINE(HANDLE hProcess, uint32 AddrBase);
		public function uint32 PGET_MODULE_BASE_ROUTINE(HANDLE hProcess, uint32 Address);
		public function uint32 PTRANSLATE_ADDRESS_ROUTINE(HANDLE hProcess, HANDLE hThread, ADDRESS* lpaddr);
		public function BOOL PSYM_ENUMMODULES_CALLBACK(PSTR ModuleName, uint32 BaseOfDll, void* UserContext);
		public function BOOL PSYM_ENUMSYMBOLS_CALLBACK(PSTR SymbolName, uint32 SymbolAddress, uint32 SymbolSize, void* UserContext);
		public function BOOL PSYM_ENUMSYMBOLS_CALLBACKW(PWSTR SymbolName, uint32 SymbolAddress, uint32 SymbolSize, void* UserContext);
		public function BOOL PENUMLOADED_MODULES_CALLBACK(PSTR ModuleName, uint32 ModuleBase, uint32 ModuleSize, void* UserContext);
		public function BOOL PSYMBOL_REGISTERED_CALLBACK(HANDLE hProcess, uint32 ActionCode, void* CallbackData, void* UserContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct CONTEXT
		{
			public uint32 ContextFlags;
			public uint32 Cpsr;
			public _Anonymous_e__Union Anonymous;
			public uint64 Sp;
			public uint64 Pc;
			public ARM64_NT_NEON128[32] V;
			public uint32 Fpcr;
			public uint32 Fpsr;
			public uint32[8] Bcr;
			public uint64[8] Bvr;
			public uint32[2] Wcr;
			public uint64[2] Wvr;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64[31] X;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint64 X0;
					public uint64 X1;
					public uint64 X2;
					public uint64 X3;
					public uint64 X4;
					public uint64 X5;
					public uint64 X6;
					public uint64 X7;
					public uint64 X8;
					public uint64 X9;
					public uint64 X10;
					public uint64 X11;
					public uint64 X12;
					public uint64 X13;
					public uint64 X14;
					public uint64 X15;
					public uint64 X16;
					public uint64 X17;
					public uint64 X18;
					public uint64 X19;
					public uint64 X20;
					public uint64 X21;
					public uint64 X22;
					public uint64 X23;
					public uint64 X24;
					public uint64 X25;
					public uint64 X26;
					public uint64 X27;
					public uint64 X28;
					public uint64 Fp;
					public uint64 Lr;
				}
			}
		}
		[CRepr]
		public struct DISPATCHER_CONTEXT
		{
			public uint ControlPc;
			public uint ImageBase;
			public IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionEntry;
			public uint EstablisherFrame;
			public uint TargetPc;
			public CONTEXT* ContextRecord;
			public EXCEPTION_ROUTINE LanguageHandler;
			public void* HandlerData;
			public UNWIND_HISTORY_TABLE* HistoryTable;
			public uint32 ScopeIndex;
			public BOOLEAN ControlPcIsUnwound;
			public uint8* NonVolatileRegisters;
		}
		[CRepr]
		public struct KNONVOLATILE_CONTEXT_POINTERS_ARM64
		{
			public uint64* X19;
			public uint64* X20;
			public uint64* X21;
			public uint64* X22;
			public uint64* X23;
			public uint64* X24;
			public uint64* X25;
			public uint64* X26;
			public uint64* X27;
			public uint64* X28;
			public uint64* Fp;
			public uint64* Lr;
			public uint64* D8;
			public uint64* D9;
			public uint64* D10;
			public uint64* D11;
			public uint64* D12;
			public uint64* D13;
			public uint64* D14;
			public uint64* D15;
		}
		[CRepr]
		public struct UNWIND_HISTORY_TABLE_ENTRY
		{
			public uint ImageBase;
			public IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionEntry;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_CALLBACK
		{
			public uint32 ThreadId;
			public HANDLE ThreadHandle;
			public uint32 Pad;
			public CONTEXT Context;
			public uint32 SizeOfContext;
			public uint64 StackBase;
			public uint64 StackEnd;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_EX_CALLBACK
		{
			public uint32 ThreadId;
			public HANDLE ThreadHandle;
			public uint32 Pad;
			public CONTEXT Context;
			public uint32 SizeOfContext;
			public uint64 StackBase;
			public uint64 StackEnd;
			public uint64 BackingStoreBase;
			public uint64 BackingStoreEnd;
		}
		[CRepr]
		public struct EXCEPTION_DEBUG_INFO
		{
			public EXCEPTION_RECORD ExceptionRecord;
			public uint32 dwFirstChance;
		}
		[CRepr]
		public struct CREATE_THREAD_DEBUG_INFO
		{
			public HANDLE hThread;
			public void* lpThreadLocalBase;
			public LPTHREAD_START_ROUTINE lpStartAddress;
		}
		[CRepr]
		public struct CREATE_PROCESS_DEBUG_INFO
		{
			public HANDLE hFile;
			public HANDLE hProcess;
			public HANDLE hThread;
			public void* lpBaseOfImage;
			public uint32 dwDebugInfoFileOffset;
			public uint32 nDebugInfoSize;
			public void* lpThreadLocalBase;
			public LPTHREAD_START_ROUTINE lpStartAddress;
			public void* lpImageName;
			public uint16 fUnicode;
		}
		[CRepr]
		public struct EXIT_THREAD_DEBUG_INFO
		{
			public uint32 dwExitCode;
		}
		[CRepr]
		public struct EXIT_PROCESS_DEBUG_INFO
		{
			public uint32 dwExitCode;
		}
		[CRepr]
		public struct LOAD_DLL_DEBUG_INFO
		{
			public HANDLE hFile;
			public void* lpBaseOfDll;
			public uint32 dwDebugInfoFileOffset;
			public uint32 nDebugInfoSize;
			public void* lpImageName;
			public uint16 fUnicode;
		}
		[CRepr]
		public struct UNLOAD_DLL_DEBUG_INFO
		{
			public void* lpBaseOfDll;
		}
		[CRepr]
		public struct OUTPUT_DEBUG_STRING_INFO
		{
			public PSTR lpDebugStringData;
			public uint16 fUnicode;
			public uint16 nDebugStringLength;
		}
		[CRepr]
		public struct RIP_INFO
		{
			public uint32 dwError;
			public RIP_INFO_TYPE dwType;
		}
		[CRepr]
		public struct DEBUG_EVENT
		{
			public DEBUG_EVENT_CODE dwDebugEventCode;
			public uint32 dwProcessId;
			public uint32 dwThreadId;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public EXCEPTION_DEBUG_INFO Exception;
				public CREATE_THREAD_DEBUG_INFO CreateThread;
				public CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;
				public EXIT_THREAD_DEBUG_INFO ExitThread;
				public EXIT_PROCESS_DEBUG_INFO ExitProcess;
				public LOAD_DLL_DEBUG_INFO LoadDll;
				public UNLOAD_DLL_DEBUG_INFO UnloadDll;
				public OUTPUT_DEBUG_STRING_INFO DebugString;
				public RIP_INFO RipInfo;
			}
		}
		[CRepr]
		public struct DEBUG_OFFSET_REGION
		{
			public uint64 Base;
			public uint64 Size;
		}
		[CRepr]
		public struct DEBUG_READ_USER_MINIDUMP_STREAM
		{
			public uint32 StreamType;
			public uint32 Flags;
			public uint64 Offset;
			public void* Buffer;
			public uint32 BufferSize;
			public uint32 BufferUsed;
		}
		[CRepr]
		public struct DEBUG_GET_TEXT_COMPLETIONS_IN
		{
			public uint32 Flags;
			public uint32 MatchCountLimit;
			public uint64[3] Reserved;
		}
		[CRepr]
		public struct DEBUG_GET_TEXT_COMPLETIONS_OUT
		{
			public uint32 Flags;
			public uint32 ReplaceIndex;
			public uint32 MatchCount;
			public uint32 Reserved1;
			public uint64[2] Reserved2;
		}
		[CRepr]
		public struct DEBUG_CACHED_SYMBOL_INFO
		{
			public uint64 ModBase;
			public uint64 Arg1;
			public uint64 Arg2;
			public uint32 Id;
			public uint32 Arg3;
		}
		[CRepr]
		public struct PROCESS_NAME_ENTRY
		{
			public uint32 ProcessId;
			public uint32 NameOffset;
			public uint32 NameSize;
			public uint32 NextEntry;
		}
		[CRepr]
		public struct DEBUG_THREAD_BASIC_INFORMATION
		{
			public uint32 Valid;
			public uint32 ExitStatus;
			public uint32 PriorityClass;
			public uint32 Priority;
			public uint64 CreateTime;
			public uint64 ExitTime;
			public uint64 KernelTime;
			public uint64 UserTime;
			public uint64 StartOffset;
			public uint64 Affinity;
		}
		[CRepr]
		public struct SYMBOL_INFO_EX
		{
			public uint32 SizeOfStruct;
			public uint32 TypeOfInfo;
			public uint64 Offset;
			public uint32 Line;
			public uint32 Displacement;
			public uint32[4] Reserved;
		}
		[CRepr]
		public struct DEBUG_BREAKPOINT_PARAMETERS
		{
			public uint64 Offset;
			public uint32 Id;
			public uint32 BreakType;
			public uint32 ProcType;
			public uint32 Flags;
			public uint32 DataSize;
			public uint32 DataAccessType;
			public uint32 PassCount;
			public uint32 CurrentPassCount;
			public uint32 MatchThread;
			public uint32 CommandSize;
			public uint32 OffsetExpressionSize;
		}
		[CRepr]
		public struct DEBUG_CREATE_PROCESS_OPTIONS
		{
			public uint32 CreateFlags;
			public uint32 EngCreateFlags;
			public uint32 VerifierFlags;
			public uint32 Reserved;
		}
		[CRepr]
		public struct DEBUG_CLIENT_CONTEXT
		{
			public uint32 cbSize;
			public uint32 eClient;
		}
		[CRepr]
		public struct DEBUG_STACK_FRAME
		{
			public uint64 InstructionOffset;
			public uint64 ReturnOffset;
			public uint64 FrameOffset;
			public uint64 StackOffset;
			public uint64 FuncTableEntry;
			public uint64[4] Params;
			public uint64[6] Reserved;
			public BOOL Virtual;
			public uint32 FrameNumber;
		}
		[CRepr]
		public struct DEBUG_STACK_FRAME_EX
		{
			public uint64 InstructionOffset;
			public uint64 ReturnOffset;
			public uint64 FrameOffset;
			public uint64 StackOffset;
			public uint64 FuncTableEntry;
			public uint64[4] Params;
			public uint64[6] Reserved;
			public BOOL Virtual;
			public uint32 FrameNumber;
			public uint32 InlineFrameContext;
			public uint32 Reserved1;
		}
		[CRepr, Union]
		public struct INLINE_FRAME_CONTEXT
		{
			public uint32 ContextValue;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint8 FrameId;
				public uint8 FrameType;
				public uint16 FrameSignature;
			}
		}
		[CRepr]
		public struct STACK_SRC_INFO
		{
			public PWSTR ImagePath;
			public PWSTR ModuleName;
			public PWSTR Function;
			public uint32 Displacement;
			public uint32 Row;
			public uint32 Column;
		}
		[CRepr]
		public struct STACK_SYM_FRAME_INFO
		{
			public DEBUG_STACK_FRAME_EX StackFrameEx;
			public STACK_SRC_INFO SrcInfo;
		}
		[CRepr]
		public struct DEBUG_SPECIFIC_FILTER_PARAMETERS
		{
			public uint32 ExecutionOption;
			public uint32 ContinueOption;
			public uint32 TextSize;
			public uint32 CommandSize;
			public uint32 ArgumentSize;
		}
		[CRepr]
		public struct DEBUG_EXCEPTION_FILTER_PARAMETERS
		{
			public uint32 ExecutionOption;
			public uint32 ContinueOption;
			public uint32 TextSize;
			public uint32 CommandSize;
			public uint32 SecondCommandSize;
			public uint32 ExceptionCode;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_BREAKPOINT
		{
			public uint32 Id;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_EXCEPTION
		{
			public EXCEPTION_RECORD64 ExceptionRecord;
			public uint32 FirstChance;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_EXIT_THREAD
		{
			public uint32 ExitCode;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_EXIT_PROCESS
		{
			public uint32 ExitCode;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_LOAD_MODULE
		{
			public uint64 Base;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_UNLOAD_MODULE
		{
			public uint64 Base;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_SYSTEM_ERROR
		{
			public uint32 Error;
			public uint32 Level;
		}
		[CRepr]
		public struct DEBUG_LAST_EVENT_INFO_SERVICE_EXCEPTION
		{
			public uint32 Kind;
			public uint32 DataSize;
			public uint64 Address;
		}
		[CRepr]
		public struct DEBUG_VALUE
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 TailOfRawBytes;
			public uint32 Type;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint8 I8;
				public uint16 I16;
				public uint32 I32;
				public _Anonymous_e__Struct Anonymous;
				public float F32;
				public double F64;
				public uint8[10] F80Bytes;
				public uint8[11] F82Bytes;
				public uint8[16] F128Bytes;
				public uint8[16] VI8;
				public uint16[8] VI16;
				public uint32[4] VI32;
				public uint64[2] VI64;
				public float[4] VF32;
				public double[2] VF64;
				public _I64Parts32_e__Struct I64Parts32;
				public _F128Parts64_e__Struct F128Parts64;
				public uint8[24] RawBytes;
				
				[CRepr]
				public struct _I64Parts32_e__Struct
				{
					public uint32 LowPart;
					public uint32 HighPart;
				}
				[CRepr]
				public struct _F128Parts64_e__Struct
				{
					public uint64 LowPart;
					public int64 HighPart;
				}
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint64 I64;
					public BOOL Nat;
				}
			}
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_ALPHA
		{
			public uint32 Type;
			public uint32 Revision;
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_AMD64
		{
			public uint32 Family;
			public uint32 Model;
			public uint32 Stepping;
			public CHAR[16] VendorString;
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_IA64
		{
			public uint32 Model;
			public uint32 Revision;
			public uint32 Family;
			public uint32 ArchRev;
			public CHAR[16] VendorString;
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_X86
		{
			public uint32 Family;
			public uint32 Model;
			public uint32 Stepping;
			public CHAR[16] VendorString;
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_ARM
		{
			public uint32 Model;
			public uint32 Revision;
			public CHAR[16] VendorString;
		}
		[CRepr]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_ARM64
		{
			public uint32 Model;
			public uint32 Revision;
			public CHAR[16] VendorString;
		}
		[CRepr, Union]
		public struct DEBUG_PROCESSOR_IDENTIFICATION_ALL
		{
			public DEBUG_PROCESSOR_IDENTIFICATION_ALPHA Alpha;
			public DEBUG_PROCESSOR_IDENTIFICATION_AMD64 Amd64;
			public DEBUG_PROCESSOR_IDENTIFICATION_IA64 Ia64;
			public DEBUG_PROCESSOR_IDENTIFICATION_X86 X86;
			public DEBUG_PROCESSOR_IDENTIFICATION_ARM Arm;
			public DEBUG_PROCESSOR_IDENTIFICATION_ARM64 Arm64;
		}
		[CRepr]
		public struct DEBUG_HANDLE_DATA_BASIC
		{
			public uint32 TypeNameSize;
			public uint32 ObjectNameSize;
			public uint32 Attributes;
			public uint32 GrantedAccess;
			public uint32 HandleCount;
			public uint32 PointerCount;
		}
		[CRepr]
		public struct DEBUG_EVENT_CONTEXT
		{
			public uint32 Size;
			public uint32 ProcessEngineId;
			public uint32 ThreadEngineId;
			public uint32 FrameEngineId;
		}
		[CRepr]
		public struct DEBUG_REGISTER_DESCRIPTION
		{
			public uint32 Type;
			public uint32 Flags;
			public uint32 SubregMaster;
			public uint32 SubregLength;
			public uint64 SubregMask;
			public uint32 SubregShift;
			public uint32 Reserved0;
		}
		[CRepr]
		public struct DEBUG_SYMBOL_PARAMETERS
		{
			public uint64 Module;
			public uint32 TypeId;
			public uint32 ParentSymbol;
			public uint32 SubElements;
			public uint32 Flags;
			public uint64 Reserved;
		}
		[CRepr]
		public struct DEBUG_SYMBOL_ENTRY
		{
			public uint64 ModuleBase;
			public uint64 Offset;
			public uint64 Id;
			public uint64 Arg64;
			public uint32 Size;
			public uint32 Flags;
			public uint32 TypeId;
			public uint32 NameSize;
			public uint32 Token;
			public uint32 Tag;
			public uint32 Arg32;
			public uint32 Reserved;
		}
		[CRepr]
		public struct DEBUG_MODULE_PARAMETERS
		{
			public uint64 Base;
			public uint32 Size;
			public uint32 TimeDateStamp;
			public uint32 Checksum;
			public uint32 Flags;
			public uint32 SymbolType;
			public uint32 ImageNameSize;
			public uint32 ModuleNameSize;
			public uint32 LoadedImageNameSize;
			public uint32 SymbolFileNameSize;
			public uint32 MappedImageNameSize;
			public uint64[2] Reserved;
		}
		[CRepr]
		public struct DEBUG_MODULE_AND_ID
		{
			public uint64 ModuleBase;
			public uint64 Id;
		}
		[CRepr]
		public struct DEBUG_SYMBOL_SOURCE_ENTRY
		{
			public uint64 ModuleBase;
			public uint64 Offset;
			public uint64 FileNameId;
			public uint64 EngineInternal;
			public uint32 Size;
			public uint32 Flags;
			public uint32 FileNameSize;
			public uint32 StartLine;
			public uint32 EndLine;
			public uint32 StartColumn;
			public uint32 EndColumn;
			public uint32 Reserved;
		}
		[CRepr]
		public struct Location
		{
			public uint64 HostDefined;
			public uint64 Offset;
		}
		[CRepr]
		public struct ArrayDimension
		{
			public int64 LowerBound;
			public uint64 Length;
			public uint64 Stride;
		}
		[CRepr]
		public struct ScriptDebugPosition
		{
			public uint32 Line;
			public uint32 Column;
		}
		[CRepr]
		public struct ScriptDebugEventInformation
		{
			public ScriptDebugEvent DebugEvent;
			public ScriptDebugPosition EventPosition;
			public ScriptDebugPosition EventSpanEnd;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public _ExceptionInformation_e__Struct ExceptionInformation;
				public _BreakpointInformation_e__Struct BreakpointInformation;
				
				[CRepr]
				public struct _ExceptionInformation_e__Struct
				{
					public Boolean IsUncaught;
				}
				[CRepr]
				public struct _BreakpointInformation_e__Struct
				{
					public uint64 BreakpointId;
				}
			}
		}
		[CRepr]
		public struct EXTSTACKTRACE
		{
			public uint32 FramePointer;
			public uint32 ProgramCounter;
			public uint32 ReturnAddress;
			public uint32[4] Args;
		}
		[CRepr]
		public struct EXTSTACKTRACE32
		{
			public uint32 FramePointer;
			public uint32 ProgramCounter;
			public uint32 ReturnAddress;
			public uint32[4] Args;
		}
		[CRepr]
		public struct EXTSTACKTRACE64
		{
			public uint64 FramePointer;
			public uint64 ProgramCounter;
			public uint64 ReturnAddress;
			public uint64[4] Args;
		}
		[CRepr]
		public struct WINDBG_EXTENSION_APIS
		{
			public uint32 nSize;
			public PWINDBG_OUTPUT_ROUTINE lpOutputRoutine;
			public PWINDBG_GET_EXPRESSION lpGetExpressionRoutine;
			public PWINDBG_GET_SYMBOL lpGetSymbolRoutine;
			public PWINDBG_DISASM lpDisasmRoutine;
			public PWINDBG_CHECK_CONTROL_C lpCheckControlCRoutine;
			public PWINDBG_READ_PROCESS_MEMORY_ROUTINE lpReadProcessMemoryRoutine;
			public PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE lpWriteProcessMemoryRoutine;
			public PWINDBG_GET_THREAD_CONTEXT_ROUTINE lpGetThreadContextRoutine;
			public PWINDBG_SET_THREAD_CONTEXT_ROUTINE lpSetThreadContextRoutine;
			public PWINDBG_IOCTL_ROUTINE lpIoctlRoutine;
			public PWINDBG_STACKTRACE_ROUTINE lpStackTraceRoutine;
		}
		[CRepr]
		public struct WINDBG_EXTENSION_APIS32
		{
			public uint32 nSize;
			public PWINDBG_OUTPUT_ROUTINE lpOutputRoutine;
			public PWINDBG_GET_EXPRESSION32 lpGetExpressionRoutine;
			public PWINDBG_GET_SYMBOL32 lpGetSymbolRoutine;
			public PWINDBG_DISASM32 lpDisasmRoutine;
			public PWINDBG_CHECK_CONTROL_C lpCheckControlCRoutine;
			public PWINDBG_READ_PROCESS_MEMORY_ROUTINE32 lpReadProcessMemoryRoutine;
			public PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32 lpWriteProcessMemoryRoutine;
			public PWINDBG_GET_THREAD_CONTEXT_ROUTINE lpGetThreadContextRoutine;
			public PWINDBG_SET_THREAD_CONTEXT_ROUTINE lpSetThreadContextRoutine;
			public PWINDBG_IOCTL_ROUTINE lpIoctlRoutine;
			public PWINDBG_STACKTRACE_ROUTINE32 lpStackTraceRoutine;
		}
		[CRepr]
		public struct WINDBG_EXTENSION_APIS64
		{
			public uint32 nSize;
			public PWINDBG_OUTPUT_ROUTINE lpOutputRoutine;
			public PWINDBG_GET_EXPRESSION64 lpGetExpressionRoutine;
			public PWINDBG_GET_SYMBOL64 lpGetSymbolRoutine;
			public PWINDBG_DISASM64 lpDisasmRoutine;
			public PWINDBG_CHECK_CONTROL_C lpCheckControlCRoutine;
			public PWINDBG_READ_PROCESS_MEMORY_ROUTINE64 lpReadProcessMemoryRoutine;
			public PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE64 lpWriteProcessMemoryRoutine;
			public PWINDBG_GET_THREAD_CONTEXT_ROUTINE lpGetThreadContextRoutine;
			public PWINDBG_SET_THREAD_CONTEXT_ROUTINE lpSetThreadContextRoutine;
			public PWINDBG_IOCTL_ROUTINE lpIoctlRoutine;
			public PWINDBG_STACKTRACE_ROUTINE64 lpStackTraceRoutine;
		}
		[CRepr]
		public struct WINDBG_OLD_EXTENSION_APIS
		{
			public uint32 nSize;
			public PWINDBG_OUTPUT_ROUTINE lpOutputRoutine;
			public PWINDBG_GET_EXPRESSION lpGetExpressionRoutine;
			public PWINDBG_GET_SYMBOL lpGetSymbolRoutine;
			public PWINDBG_DISASM lpDisasmRoutine;
			public PWINDBG_CHECK_CONTROL_C lpCheckControlCRoutine;
		}
		[CRepr]
		public struct WINDBG_OLDKD_EXTENSION_APIS
		{
			public uint32 nSize;
			public PWINDBG_OUTPUT_ROUTINE lpOutputRoutine;
			public PWINDBG_GET_EXPRESSION32 lpGetExpressionRoutine;
			public PWINDBG_GET_SYMBOL32 lpGetSymbolRoutine;
			public PWINDBG_DISASM32 lpDisasmRoutine;
			public PWINDBG_CHECK_CONTROL_C lpCheckControlCRoutine;
			public PWINDBG_READ_PROCESS_MEMORY_ROUTINE32 lpReadVirtualMemRoutine;
			public PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32 lpWriteVirtualMemRoutine;
			public PWINDBG_OLDKD_READ_PHYSICAL_MEMORY lpReadPhysicalMemRoutine;
			public PWINDBG_OLDKD_WRITE_PHYSICAL_MEMORY lpWritePhysicalMemRoutine;
		}
		[CRepr]
		public struct EXT_API_VERSION
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint16 Revision;
			public uint16 Reserved;
		}
		[CRepr]
		public struct PROCESSORINFO
		{
			public uint16 Processor;
			public uint16 NumberProcessors;
		}
		[CRepr]
		public struct READCONTROLSPACE
		{
			public uint16 Processor;
			public uint32 Address;
			public uint32 BufLen;
			public uint8[] Buf;
		}
		[CRepr]
		public struct READCONTROLSPACE32
		{
			public uint16 Processor;
			public uint32 Address;
			public uint32 BufLen;
			public uint8[] Buf;
		}
		[CRepr]
		public struct READCONTROLSPACE64
		{
			public uint16 Processor;
			public uint64 Address;
			public uint32 BufLen;
			public uint8[] Buf;
		}
		[CRepr]
		public struct IOSPACE
		{
			public uint32 Address;
			public uint32 Length;
			public uint32 Data;
		}
		[CRepr]
		public struct IOSPACE32
		{
			public uint32 Address;
			public uint32 Length;
			public uint32 Data;
		}
		[CRepr]
		public struct IOSPACE64
		{
			public uint64 Address;
			public uint32 Length;
			public uint32 Data;
		}
		[CRepr]
		public struct IOSPACE_EX
		{
			public uint32 Address;
			public uint32 Length;
			public uint32 Data;
			public uint32 InterfaceType;
			public uint32 BusNumber;
			public uint32 AddressSpace;
		}
		[CRepr]
		public struct IOSPACE_EX32
		{
			public uint32 Address;
			public uint32 Length;
			public uint32 Data;
			public uint32 InterfaceType;
			public uint32 BusNumber;
			public uint32 AddressSpace;
		}
		[CRepr]
		public struct IOSPACE_EX64
		{
			public uint64 Address;
			public uint32 Length;
			public uint32 Data;
			public uint32 InterfaceType;
			public uint32 BusNumber;
			public uint32 AddressSpace;
		}
		[CRepr]
		public struct _GETSETBUSDATA
		{
			public uint32 BusDataType;
			public uint32 BusNumber;
			public uint32 SlotNumber;
			public void* Buffer;
			public uint32 Offset;
			public uint32 Length;
		}
		[CRepr]
		public struct SEARCHMEMORY
		{
			public uint64 SearchAddress;
			public uint64 SearchLength;
			public uint64 FoundAddress;
			public uint32 PatternLength;
			public void* Pattern;
		}
		[CRepr]
		public struct PHYSICAL
		{
			public uint64 Address;
			public uint32 BufLen;
			public uint8[] Buf;
		}
		[CRepr]
		public struct PHYSICAL_WITH_FLAGS
		{
			public uint64 Address;
			public uint32 BufLen;
			public uint32 Flags;
			public uint8[] Buf;
		}
		[CRepr]
		public struct READ_WRITE_MSR
		{
			public uint32 Msr;
			public int64 Value;
		}
		[CRepr]
		public struct GET_SET_SYMPATH
		{
			public PSTR Args;
			public PSTR Result;
			public int32 Length;
		}
		[CRepr]
		public struct GET_TEB_ADDRESS
		{
			public uint64 Address;
		}
		[CRepr]
		public struct GET_PEB_ADDRESS
		{
			public uint64 CurrentThread;
			public uint64 Address;
		}
		[CRepr]
		public struct GET_CURRENT_THREAD_ADDRESS
		{
			public uint32 Processor;
			public uint64 Address;
		}
		[CRepr]
		public struct GET_CURRENT_PROCESS_ADDRESS
		{
			public uint32 Processor;
			public uint64 CurrentThread;
			public uint64 Address;
		}
		[CRepr]
		public struct GET_INPUT_LINE
		{
			public PSTR Prompt;
			public PSTR Buffer;
			public uint32 BufferSize;
			public uint32 InputSize;
		}
		[CRepr]
		public struct GET_EXPRESSION_EX
		{
			public PSTR Expression;
			public PSTR Remainder;
			public uint64 Value;
		}
		[CRepr]
		public struct TRANSLATE_VIRTUAL_TO_PHYSICAL
		{
			public uint64 Virtual;
			public uint64 Physical;
		}
		[CRepr]
		public struct VIRTUAL_TO_PHYSICAL
		{
			public uint32 Status;
			public uint32 Size;
			public uint64 PdeAddress;
			public uint64 Virtual;
			public uint64 Physical;
		}
		[CRepr]
		public struct PHYSICAL_TO_VIRTUAL
		{
			public uint32 Status;
			public uint32 Size;
			public uint64 PdeAddress;
		}
		[CRepr]
		public struct GET_CONTEXT_EX
		{
			public uint32 Status;
			public uint32 ContextSize;
			public void* pContext;
		}
		[CRepr]
		public struct POINTER_SEARCH_PHYSICAL
		{
			public uint64 Offset;
			public uint64 Length;
			public uint64 PointerMin;
			public uint64 PointerMax;
			public uint32 Flags;
			public uint64* MatchOffsets;
			public uint32 MatchOffsetsSize;
			public uint32 MatchOffsetsCount;
		}
		[CRepr]
		public struct WDBGEXTS_THREAD_OS_INFO
		{
			public uint32 ThreadId;
			public uint32 ExitStatus;
			public uint32 PriorityClass;
			public uint32 Priority;
			public uint64 CreateTime;
			public uint64 ExitTime;
			public uint64 KernelTime;
			public uint64 UserTime;
			public uint64 StartOffset;
			public uint64 Affinity;
		}
		[CRepr]
		public struct WDBGEXTS_CLR_DATA_INTERFACE
		{
			public Guid* Iid;
			public void* Iface;
		}
		[CRepr]
		public struct EXT_MATCH_PATTERN_A
		{
			public PSTR Str;
			public PSTR Pattern;
			public uint32 CaseSensitive;
		}
		[CRepr]
		public struct EXT_FIND_FILE
		{
			public PWSTR FileName;
			public uint64 IndexedSize;
			public uint32 ImageTimeDateStamp;
			public uint32 ImageCheckSum;
			public void* ExtraInfo;
			public uint32 ExtraInfoSize;
			public uint32 Flags;
			public void* FileMapping;
			public uint64 FileMappingSize;
			public HANDLE FileHandle;
			public PWSTR FoundFileName;
			public uint32 FoundFileNameChars;
		}
		[CRepr]
		public struct DEBUG_TYPED_DATA
		{
			public uint64 ModBase;
			public uint64 Offset;
			public uint64 EngineHandle;
			public uint64 Data;
			public uint32 Size;
			public uint32 Flags;
			public uint32 TypeId;
			public uint32 BaseTypeId;
			public uint32 Tag;
			public uint32 Register;
			public uint64[9] Internal;
		}
		[CRepr]
		public struct EXT_TYPED_DATA
		{
			public EXT_TDOP Operation;
			public uint32 Flags;
			public DEBUG_TYPED_DATA InData;
			public DEBUG_TYPED_DATA OutData;
			public uint32 InStrIndex;
			public uint32 In32;
			public uint32 Out32;
			public uint64 In64;
			public uint64 Out64;
			public uint32 StrBufferIndex;
			public uint32 StrBufferChars;
			public uint32 StrCharsNeeded;
			public uint32 DataBufferIndex;
			public uint32 DataBufferBytes;
			public uint32 DataBytesNeeded;
			public HRESULT Status;
			public uint64[8] Reserved;
		}
		[CRepr]
		public struct WDBGEXTS_QUERY_INTERFACE
		{
			public Guid* Iid;
			public void* Iface;
		}
		[CRepr]
		public struct WDBGEXTS_DISASSEMBLE_BUFFER
		{
			public uint64 InOffset;
			public uint64 OutOffset;
			public uint32 AddrFlags;
			public uint32 FormatFlags;
			public uint32 DataBufferBytes;
			public uint32 DisasmBufferChars;
			public void* DataBuffer;
			public PWSTR DisasmBuffer;
			public uint64[3] Reserved0;
		}
		[CRepr]
		public struct WDBGEXTS_MODULE_IN_RANGE
		{
			public uint64 Start;
			public uint64 End;
			public uint64 FoundModBase;
			public uint32 FoundModSize;
		}
		[CRepr]
		public struct DBGKD_GET_VERSION32
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint16 ProtocolVersion;
			public uint16 Flags;
			public uint32 KernBase;
			public uint32 PsLoadedModuleList;
			public uint16 MachineType;
			public uint16 ThCallbackStack;
			public uint16 NextCallback;
			public uint16 FramePointer;
			public uint32 KiCallUserMode;
			public uint32 KeUserCallbackDispatcher;
			public uint32 BreakpointWithStatus;
			public uint32 DebuggerDataList;
		}
		[CRepr]
		public struct DBGKD_DEBUG_DATA_HEADER32
		{
			public LIST_ENTRY32 List;
			public uint32 OwnerTag;
			public uint32 Size;
		}
		[CRepr]
		public struct KDDEBUGGER_DATA32
		{
			public DBGKD_DEBUG_DATA_HEADER32 Header;
			public uint32 KernBase;
			public uint32 BreakpointWithStatus;
			public uint32 SavedContext;
			public uint16 ThCallbackStack;
			public uint16 NextCallback;
			public uint16 FramePointer;
			public uint16 _bitfield;
			public uint32 KiCallUserMode;
			public uint32 KeUserCallbackDispatcher;
			public uint32 PsLoadedModuleList;
			public uint32 PsActiveProcessHead;
			public uint32 PspCidTable;
			public uint32 ExpSystemResourcesList;
			public uint32 ExpPagedPoolDescriptor;
			public uint32 ExpNumberOfPagedPools;
			public uint32 KeTimeIncrement;
			public uint32 KeBugCheckCallbackListHead;
			public uint32 KiBugcheckData;
			public uint32 IopErrorLogListHead;
			public uint32 ObpRootDirectoryObject;
			public uint32 ObpTypeObjectType;
			public uint32 MmSystemCacheStart;
			public uint32 MmSystemCacheEnd;
			public uint32 MmSystemCacheWs;
			public uint32 MmPfnDatabase;
			public uint32 MmSystemPtesStart;
			public uint32 MmSystemPtesEnd;
			public uint32 MmSubsectionBase;
			public uint32 MmNumberOfPagingFiles;
			public uint32 MmLowestPhysicalPage;
			public uint32 MmHighestPhysicalPage;
			public uint32 MmNumberOfPhysicalPages;
			public uint32 MmMaximumNonPagedPoolInBytes;
			public uint32 MmNonPagedSystemStart;
			public uint32 MmNonPagedPoolStart;
			public uint32 MmNonPagedPoolEnd;
			public uint32 MmPagedPoolStart;
			public uint32 MmPagedPoolEnd;
			public uint32 MmPagedPoolInformation;
			public uint32 MmPageSize;
			public uint32 MmSizeOfPagedPoolInBytes;
			public uint32 MmTotalCommitLimit;
			public uint32 MmTotalCommittedPages;
			public uint32 MmSharedCommit;
			public uint32 MmDriverCommit;
			public uint32 MmProcessCommit;
			public uint32 MmPagedPoolCommit;
			public uint32 MmExtendedCommit;
			public uint32 MmZeroedPageListHead;
			public uint32 MmFreePageListHead;
			public uint32 MmStandbyPageListHead;
			public uint32 MmModifiedPageListHead;
			public uint32 MmModifiedNoWritePageListHead;
			public uint32 MmAvailablePages;
			public uint32 MmResidentAvailablePages;
			public uint32 PoolTrackTable;
			public uint32 NonPagedPoolDescriptor;
			public uint32 MmHighestUserAddress;
			public uint32 MmSystemRangeStart;
			public uint32 MmUserProbeAddress;
			public uint32 KdPrintCircularBuffer;
			public uint32 KdPrintCircularBufferEnd;
			public uint32 KdPrintWritePointer;
			public uint32 KdPrintRolloverCount;
			public uint32 MmLoadedUserImageList;
		}
		[CRepr]
		public struct DBGKD_GET_VERSION64
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint8 ProtocolVersion;
			public uint8 KdSecondaryVersion;
			public uint16 Flags;
			public uint16 MachineType;
			public uint8 MaxPacketType;
			public uint8 MaxStateChange;
			public uint8 MaxManipulate;
			public uint8 Simulation;
			public uint16[] Unused;
			public uint64 KernBase;
			public uint64 PsLoadedModuleList;
			public uint64 DebuggerDataList;
		}
		[CRepr]
		public struct DBGKD_DEBUG_DATA_HEADER64
		{
			public LIST_ENTRY64 List;
			public uint32 OwnerTag;
			public uint32 Size;
		}
		[CRepr]
		public struct KDDEBUGGER_DATA64
		{
			public DBGKD_DEBUG_DATA_HEADER64 Header;
			public uint64 KernBase;
			public uint64 BreakpointWithStatus;
			public uint64 SavedContext;
			public uint16 ThCallbackStack;
			public uint16 NextCallback;
			public uint16 FramePointer;
			public uint16 _bitfield;
			public uint64 KiCallUserMode;
			public uint64 KeUserCallbackDispatcher;
			public uint64 PsLoadedModuleList;
			public uint64 PsActiveProcessHead;
			public uint64 PspCidTable;
			public uint64 ExpSystemResourcesList;
			public uint64 ExpPagedPoolDescriptor;
			public uint64 ExpNumberOfPagedPools;
			public uint64 KeTimeIncrement;
			public uint64 KeBugCheckCallbackListHead;
			public uint64 KiBugcheckData;
			public uint64 IopErrorLogListHead;
			public uint64 ObpRootDirectoryObject;
			public uint64 ObpTypeObjectType;
			public uint64 MmSystemCacheStart;
			public uint64 MmSystemCacheEnd;
			public uint64 MmSystemCacheWs;
			public uint64 MmPfnDatabase;
			public uint64 MmSystemPtesStart;
			public uint64 MmSystemPtesEnd;
			public uint64 MmSubsectionBase;
			public uint64 MmNumberOfPagingFiles;
			public uint64 MmLowestPhysicalPage;
			public uint64 MmHighestPhysicalPage;
			public uint64 MmNumberOfPhysicalPages;
			public uint64 MmMaximumNonPagedPoolInBytes;
			public uint64 MmNonPagedSystemStart;
			public uint64 MmNonPagedPoolStart;
			public uint64 MmNonPagedPoolEnd;
			public uint64 MmPagedPoolStart;
			public uint64 MmPagedPoolEnd;
			public uint64 MmPagedPoolInformation;
			public uint64 MmPageSize;
			public uint64 MmSizeOfPagedPoolInBytes;
			public uint64 MmTotalCommitLimit;
			public uint64 MmTotalCommittedPages;
			public uint64 MmSharedCommit;
			public uint64 MmDriverCommit;
			public uint64 MmProcessCommit;
			public uint64 MmPagedPoolCommit;
			public uint64 MmExtendedCommit;
			public uint64 MmZeroedPageListHead;
			public uint64 MmFreePageListHead;
			public uint64 MmStandbyPageListHead;
			public uint64 MmModifiedPageListHead;
			public uint64 MmModifiedNoWritePageListHead;
			public uint64 MmAvailablePages;
			public uint64 MmResidentAvailablePages;
			public uint64 PoolTrackTable;
			public uint64 NonPagedPoolDescriptor;
			public uint64 MmHighestUserAddress;
			public uint64 MmSystemRangeStart;
			public uint64 MmUserProbeAddress;
			public uint64 KdPrintCircularBuffer;
			public uint64 KdPrintCircularBufferEnd;
			public uint64 KdPrintWritePointer;
			public uint64 KdPrintRolloverCount;
			public uint64 MmLoadedUserImageList;
			public uint64 NtBuildLab;
			public uint64 KiNormalSystemCall;
			public uint64 KiProcessorBlock;
			public uint64 MmUnloadedDrivers;
			public uint64 MmLastUnloadedDriver;
			public uint64 MmTriageActionTaken;
			public uint64 MmSpecialPoolTag;
			public uint64 KernelVerifier;
			public uint64 MmVerifierData;
			public uint64 MmAllocatedNonPagedPool;
			public uint64 MmPeakCommitment;
			public uint64 MmTotalCommitLimitMaximum;
			public uint64 CmNtCSDVersion;
			public uint64 MmPhysicalMemoryBlock;
			public uint64 MmSessionBase;
			public uint64 MmSessionSize;
			public uint64 MmSystemParentTablePage;
			public uint64 MmVirtualTranslationBase;
			public uint16 OffsetKThreadNextProcessor;
			public uint16 OffsetKThreadTeb;
			public uint16 OffsetKThreadKernelStack;
			public uint16 OffsetKThreadInitialStack;
			public uint16 OffsetKThreadApcProcess;
			public uint16 OffsetKThreadState;
			public uint16 OffsetKThreadBStore;
			public uint16 OffsetKThreadBStoreLimit;
			public uint16 SizeEProcess;
			public uint16 OffsetEprocessPeb;
			public uint16 OffsetEprocessParentCID;
			public uint16 OffsetEprocessDirectoryTableBase;
			public uint16 SizePrcb;
			public uint16 OffsetPrcbDpcRoutine;
			public uint16 OffsetPrcbCurrentThread;
			public uint16 OffsetPrcbMhz;
			public uint16 OffsetPrcbCpuType;
			public uint16 OffsetPrcbVendorString;
			public uint16 OffsetPrcbProcStateContext;
			public uint16 OffsetPrcbNumber;
			public uint16 SizeEThread;
			public uint8 L1tfHighPhysicalBitIndex;
			public uint8 L1tfSwizzleBitIndex;
			public uint32 Padding0;
			public uint64 KdPrintCircularBufferPtr;
			public uint64 KdPrintBufferSize;
			public uint64 KeLoaderBlock;
			public uint16 SizePcr;
			public uint16 OffsetPcrSelfPcr;
			public uint16 OffsetPcrCurrentPrcb;
			public uint16 OffsetPcrContainedPrcb;
			public uint16 OffsetPcrInitialBStore;
			public uint16 OffsetPcrBStoreLimit;
			public uint16 OffsetPcrInitialStack;
			public uint16 OffsetPcrStackLimit;
			public uint16 OffsetPrcbPcrPage;
			public uint16 OffsetPrcbProcStateSpecialReg;
			public uint16 GdtR0Code;
			public uint16 GdtR0Data;
			public uint16 GdtR0Pcr;
			public uint16 GdtR3Code;
			public uint16 GdtR3Data;
			public uint16 GdtR3Teb;
			public uint16 GdtLdt;
			public uint16 GdtTss;
			public uint16 Gdt64R3CmCode;
			public uint16 Gdt64R3CmTeb;
			public uint64 IopNumTriageDumpDataBlocks;
			public uint64 IopTriageDumpDataBlocks;
			public uint64 VfCrashDataBlock;
			public uint64 MmBadPagesDetected;
			public uint64 MmZeroedPageSingleBitErrorsDetected;
			public uint64 EtwpDebuggerData;
			public uint16 OffsetPrcbContext;
			public uint16 OffsetPrcbMaxBreakpoints;
			public uint16 OffsetPrcbMaxWatchpoints;
			public uint32 OffsetKThreadStackLimit;
			public uint32 OffsetKThreadStackBase;
			public uint32 OffsetKThreadQueueListEntry;
			public uint32 OffsetEThreadIrpList;
			public uint16 OffsetPrcbIdleThread;
			public uint16 OffsetPrcbNormalDpcState;
			public uint16 OffsetPrcbDpcStack;
			public uint16 OffsetPrcbIsrStack;
			public uint16 SizeKDPC_STACK_FRAME;
			public uint16 OffsetKPriQueueThreadListHead;
			public uint16 OffsetKThreadWaitReason;
			public uint16 Padding1;
			public uint64 PteBase;
			public uint64 RetpolineStubFunctionTable;
			public uint32 RetpolineStubFunctionTableSize;
			public uint32 RetpolineStubOffset;
			public uint32 RetpolineStubSize;
			public uint16 OffsetEProcessMmHotPatchContext;
		}
		[CRepr]
		public struct FIELD_INFO
		{
			public uint8* fName;
			public uint8* printName;
			public uint32 size;
			public uint32 fOptions;
			public uint64 address;
			public _Anonymous_e__Union Anonymous;
			public uint32 TypeId;
			public uint32 FieldOffset;
			public uint32 BufferSize;
			public _BitField BitField;
			public uint32 _bitfield;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* fieldCallBack;
				public void* pBuffer;
			}
			[CRepr]
			public struct _BitField
			{
				public uint16 Position;
				public uint16 Size;
			}
		}
		[CRepr]
		public struct SYM_DUMP_PARAM
		{
			public uint32 size;
			public uint8* sName;
			public uint32 Options;
			public uint64 addr;
			public FIELD_INFO* listLink;
			public _Anonymous_e__Union Anonymous;
			public PSYM_DUMP_FIELD_CALLBACK CallbackRoutine;
			public uint32 nFields;
			public FIELD_INFO* Fields;
			public uint64 ModBase;
			public uint32 TypeId;
			public uint32 TypeSize;
			public uint32 BufferSize;
			public uint32 _bitfield;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* Context;
				public void* pBuffer;
			}
		}
		[CRepr]
		public struct M128A
		{
			public uint64 Low;
			public int64 High;
		}
		[CRepr]
		public struct XSAVE_FORMAT
		{
			public uint16 ControlWord;
			public uint16 StatusWord;
			public uint8 TagWord;
			public uint8 Reserved1;
			public uint16 ErrorOpcode;
			public uint32 ErrorOffset;
			public uint16 ErrorSelector;
			public uint16 Reserved2;
			public uint32 DataOffset;
			public uint16 DataSelector;
			public uint16 Reserved3;
			public uint32 MxCsr;
			public uint32 MxCsr_Mask;
			public M128A[8] FloatRegisters;
			public M128A[16] XmmRegisters;
			public uint8[96] Reserved4;
		}
		[CRepr]
		public struct XSAVE_AREA_HEADER
		{
			public uint64 Mask;
			public uint64 CompactionMask;
			public uint64[6] Reserved2;
		}
		[CRepr]
		public struct XSAVE_AREA
		{
			public XSAVE_FORMAT LegacyState;
			public XSAVE_AREA_HEADER Header;
		}
		[CRepr]
		public struct XSTATE_CONTEXT
		{
			public uint64 Mask;
			public uint32 Length;
			public uint32 Reserved1;
			public XSAVE_AREA* Area;
			public void* Buffer;
		}
		[CRepr]
		public struct KNONVOLATILE_CONTEXT_POINTERS
		{
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint64*[16] IntegerContext;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint64* Rax;
					public uint64* Rcx;
					public uint64* Rdx;
					public uint64* Rbx;
					public uint64* Rsp;
					public uint64* Rbp;
					public uint64* Rsi;
					public uint64* Rdi;
					public uint64* R8;
					public uint64* R9;
					public uint64* R10;
					public uint64* R11;
					public uint64* R12;
					public uint64* R13;
					public uint64* R14;
					public uint64* R15;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public M128A*[16] FloatingContext;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public M128A* Xmm0;
					public M128A* Xmm1;
					public M128A* Xmm2;
					public M128A* Xmm3;
					public M128A* Xmm4;
					public M128A* Xmm5;
					public M128A* Xmm6;
					public M128A* Xmm7;
					public M128A* Xmm8;
					public M128A* Xmm9;
					public M128A* Xmm10;
					public M128A* Xmm11;
					public M128A* Xmm12;
					public M128A* Xmm13;
					public M128A* Xmm14;
					public M128A* Xmm15;
				}
			}
		}
		[CRepr, Union]
		public struct ARM64_NT_NEON128
		{
			public _Anonymous_e__Struct Anonymous;
			public double[2] D;
			public float[4] S;
			public uint16[8] H;
			public uint8[16] B;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 Low;
				public int64 High;
			}
		}
		[CRepr]
		public struct ARM64_NT_CONTEXT
		{
			public uint32 ContextFlags;
			public uint32 Cpsr;
			public _Anonymous_e__Union Anonymous;
			public uint64 Sp;
			public uint64 Pc;
			public ARM64_NT_NEON128[32] V;
			public uint32 Fpcr;
			public uint32 Fpsr;
			public uint32[8] Bcr;
			public uint64[8] Bvr;
			public uint32[2] Wcr;
			public uint64[2] Wvr;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64[31] X;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint64 X0;
					public uint64 X1;
					public uint64 X2;
					public uint64 X3;
					public uint64 X4;
					public uint64 X5;
					public uint64 X6;
					public uint64 X7;
					public uint64 X8;
					public uint64 X9;
					public uint64 X10;
					public uint64 X11;
					public uint64 X12;
					public uint64 X13;
					public uint64 X14;
					public uint64 X15;
					public uint64 X16;
					public uint64 X17;
					public uint64 X18;
					public uint64 X19;
					public uint64 X20;
					public uint64 X21;
					public uint64 X22;
					public uint64 X23;
					public uint64 X24;
					public uint64 X25;
					public uint64 X26;
					public uint64 X27;
					public uint64 X28;
					public uint64 Fp;
					public uint64 Lr;
				}
			}
		}
		[CRepr]
		public struct DISPATCHER_CONTEXT_ARM64
		{
			public uint ControlPc;
			public uint ImageBase;
			public IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionEntry;
			public uint EstablisherFrame;
			public uint TargetPc;
			public ARM64_NT_CONTEXT* ContextRecord;
			public EXCEPTION_ROUTINE LanguageHandler;
			public void* HandlerData;
			public UNWIND_HISTORY_TABLE* HistoryTable;
			public uint32 ScopeIndex;
			public BOOLEAN ControlPcIsUnwound;
			public uint8* NonVolatileRegisters;
		}
		[CRepr]
		public struct LDT_ENTRY
		{
			public uint16 LimitLow;
			public uint16 BaseLow;
			public _HighWord_e__Union HighWord;
			
			[CRepr, Union]
			public struct _HighWord_e__Union
			{
				public _Bytes_e__Struct Bytes;
				public _Bits_e__Struct Bits;
				
				[CRepr]
				public struct _Bytes_e__Struct
				{
					public uint8 BaseMid;
					public uint8 Flags1;
					public uint8 Flags2;
					public uint8 BaseHi;
				}
				[CRepr]
				public struct _Bits_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct WOW64_FLOATING_SAVE_AREA
		{
			public uint32 ControlWord;
			public uint32 StatusWord;
			public uint32 TagWord;
			public uint32 ErrorOffset;
			public uint32 ErrorSelector;
			public uint32 DataOffset;
			public uint32 DataSelector;
			public uint8[80] RegisterArea;
			public uint32 Cr0NpxState;
		}
		[CRepr]
		public struct WOW64_CONTEXT
		{
			public uint32 ContextFlags;
			public uint32 Dr0;
			public uint32 Dr1;
			public uint32 Dr2;
			public uint32 Dr3;
			public uint32 Dr6;
			public uint32 Dr7;
			public WOW64_FLOATING_SAVE_AREA FloatSave;
			public uint32 SegGs;
			public uint32 SegFs;
			public uint32 SegEs;
			public uint32 SegDs;
			public uint32 Edi;
			public uint32 Esi;
			public uint32 Ebx;
			public uint32 Edx;
			public uint32 Ecx;
			public uint32 Eax;
			public uint32 Ebp;
			public uint32 Eip;
			public uint32 SegCs;
			public uint32 EFlags;
			public uint32 Esp;
			public uint32 SegSs;
			public uint8[512] ExtendedRegisters;
		}
		[CRepr]
		public struct WOW64_LDT_ENTRY
		{
			public uint16 LimitLow;
			public uint16 BaseLow;
			public _HighWord_e__Union HighWord;
			
			[CRepr, Union]
			public struct _HighWord_e__Union
			{
				public _Bytes_e__Struct Bytes;
				public _Bits_e__Struct Bits;
				
				[CRepr]
				public struct _Bytes_e__Struct
				{
					public uint8 BaseMid;
					public uint8 Flags1;
					public uint8 Flags2;
					public uint8 BaseHi;
				}
				[CRepr]
				public struct _Bits_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct WOW64_DESCRIPTOR_TABLE_ENTRY
		{
			public uint32 Selector;
			public WOW64_LDT_ENTRY Descriptor;
		}
		[CRepr]
		public struct EXCEPTION_RECORD
		{
			public NTSTATUS ExceptionCode;
			public uint32 ExceptionFlags;
			public EXCEPTION_RECORD* ExceptionRecord;
			public void* ExceptionAddress;
			public uint32 NumberParameters;
			public uint[15] ExceptionInformation;
		}
		[CRepr]
		public struct EXCEPTION_RECORD32
		{
			public NTSTATUS ExceptionCode;
			public uint32 ExceptionFlags;
			public uint32 ExceptionRecord;
			public uint32 ExceptionAddress;
			public uint32 NumberParameters;
			public uint32[15] ExceptionInformation;
		}
		[CRepr]
		public struct EXCEPTION_RECORD64
		{
			public NTSTATUS ExceptionCode;
			public uint32 ExceptionFlags;
			public uint64 ExceptionRecord;
			public uint64 ExceptionAddress;
			public uint32 NumberParameters;
			public uint32 __unusedAlignment;
			public uint64[15] ExceptionInformation;
		}
		[CRepr]
		public struct EXCEPTION_POINTERS
		{
			public EXCEPTION_RECORD* ExceptionRecord;
			public CONTEXT* ContextRecord;
		}
		[CRepr]
		public struct XSTATE_FEATURE
		{
			public uint32 Offset;
			public uint32 Size;
		}
		[CRepr]
		public struct XSTATE_CONFIGURATION
		{
			public uint64 EnabledFeatures;
			public uint64 EnabledVolatileFeatures;
			public uint32 Size;
			public _Anonymous_e__Union Anonymous;
			public XSTATE_FEATURE[64] Features;
			public uint64 EnabledSupervisorFeatures;
			public uint64 AlignedFeatures;
			public uint32 AllFeatureSize;
			public uint32[64] AllFeatures;
			public uint64 EnabledUserVisibleSupervisorFeatures;
			public uint64 ExtendedFeatureDisableFeatures;
			public uint32 AllNonLargeFeatureSize;
			public uint32 Spare;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ControlFlags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct IMAGE_FILE_HEADER
		{
			public IMAGE_FILE_MACHINE Machine;
			public uint16 NumberOfSections;
			public uint32 TimeDateStamp;
			public uint32 PointerToSymbolTable;
			public uint32 NumberOfSymbols;
			public uint16 SizeOfOptionalHeader;
			public IMAGE_FILE_CHARACTERISTICS Characteristics;
		}
		[CRepr]
		public struct IMAGE_DATA_DIRECTORY
		{
			public uint32 VirtualAddress;
			public uint32 Size;
		}
		[CRepr]
		public struct IMAGE_OPTIONAL_HEADER32
		{
			public IMAGE_OPTIONAL_HEADER_MAGIC Magic;
			public uint8 MajorLinkerVersion;
			public uint8 MinorLinkerVersion;
			public uint32 SizeOfCode;
			public uint32 SizeOfInitializedData;
			public uint32 SizeOfUninitializedData;
			public uint32 AddressOfEntryPoint;
			public uint32 BaseOfCode;
			public uint32 BaseOfData;
			public uint32 ImageBase;
			public uint32 SectionAlignment;
			public uint32 FileAlignment;
			public uint16 MajorOperatingSystemVersion;
			public uint16 MinorOperatingSystemVersion;
			public uint16 MajorImageVersion;
			public uint16 MinorImageVersion;
			public uint16 MajorSubsystemVersion;
			public uint16 MinorSubsystemVersion;
			public uint32 Win32VersionValue;
			public uint32 SizeOfImage;
			public uint32 SizeOfHeaders;
			public uint32 CheckSum;
			public IMAGE_SUBSYSTEM Subsystem;
			public IMAGE_DLL_CHARACTERISTICS DllCharacteristics;
			public uint32 SizeOfStackReserve;
			public uint32 SizeOfStackCommit;
			public uint32 SizeOfHeapReserve;
			public uint32 SizeOfHeapCommit;
			public uint32 LoaderFlags;
			public uint32 NumberOfRvaAndSizes;
			public IMAGE_DATA_DIRECTORY[16] DataDirectory;
		}
		[CRepr]
		public struct IMAGE_ROM_OPTIONAL_HEADER
		{
			public uint16 Magic;
			public uint8 MajorLinkerVersion;
			public uint8 MinorLinkerVersion;
			public uint32 SizeOfCode;
			public uint32 SizeOfInitializedData;
			public uint32 SizeOfUninitializedData;
			public uint32 AddressOfEntryPoint;
			public uint32 BaseOfCode;
			public uint32 BaseOfData;
			public uint32 BaseOfBss;
			public uint32 GprMask;
			public uint32[4] CprMask;
			public uint32 GpValue;
		}
		[CRepr]
		public struct IMAGE_OPTIONAL_HEADER64
		{
			public IMAGE_OPTIONAL_HEADER_MAGIC Magic;
			public uint8 MajorLinkerVersion;
			public uint8 MinorLinkerVersion;
			public uint32 SizeOfCode;
			public uint32 SizeOfInitializedData;
			public uint32 SizeOfUninitializedData;
			public uint32 AddressOfEntryPoint;
			public uint32 BaseOfCode;
			public uint64 ImageBase;
			public uint32 SectionAlignment;
			public uint32 FileAlignment;
			public uint16 MajorOperatingSystemVersion;
			public uint16 MinorOperatingSystemVersion;
			public uint16 MajorImageVersion;
			public uint16 MinorImageVersion;
			public uint16 MajorSubsystemVersion;
			public uint16 MinorSubsystemVersion;
			public uint32 Win32VersionValue;
			public uint32 SizeOfImage;
			public uint32 SizeOfHeaders;
			public uint32 CheckSum;
			public IMAGE_SUBSYSTEM Subsystem;
			public IMAGE_DLL_CHARACTERISTICS DllCharacteristics;
			public uint64 SizeOfStackReserve;
			public uint64 SizeOfStackCommit;
			public uint64 SizeOfHeapReserve;
			public uint64 SizeOfHeapCommit;
			public uint32 LoaderFlags;
			public uint32 NumberOfRvaAndSizes;
			public IMAGE_DATA_DIRECTORY[16] DataDirectory;
		}
		[CRepr]
		public struct IMAGE_NT_HEADERS64
		{
			public uint32 Signature;
			public IMAGE_FILE_HEADER FileHeader;
			public IMAGE_OPTIONAL_HEADER64 OptionalHeader;
		}
		[CRepr]
		public struct IMAGE_NT_HEADERS32
		{
			public uint32 Signature;
			public IMAGE_FILE_HEADER FileHeader;
			public IMAGE_OPTIONAL_HEADER32 OptionalHeader;
		}
		[CRepr]
		public struct IMAGE_ROM_HEADERS
		{
			public IMAGE_FILE_HEADER FileHeader;
			public IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
		}
		[CRepr]
		public struct IMAGE_SECTION_HEADER
		{
			public uint8[8] Name;
			public _Misc_e__Union Misc;
			public uint32 VirtualAddress;
			public uint32 SizeOfRawData;
			public uint32 PointerToRawData;
			public uint32 PointerToRelocations;
			public uint32 PointerToLinenumbers;
			public uint16 NumberOfRelocations;
			public uint16 NumberOfLinenumbers;
			public IMAGE_SECTION_CHARACTERISTICS Characteristics;
			
			[CRepr, Union]
			public struct _Misc_e__Union
			{
				public uint32 PhysicalAddress;
				public uint32 VirtualSize;
			}
		}
		[CRepr]
		public struct IMAGE_LOAD_CONFIG_CODE_INTEGRITY
		{
			public uint16 Flags;
			public uint16 Catalog;
			public uint32 CatalogOffset;
			public uint32 Reserved;
		}
		[CRepr]
		public struct IMAGE_LOAD_CONFIG_DIRECTORY32
		{
			public uint32 Size;
			public uint32 TimeDateStamp;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint32 GlobalFlagsClear;
			public uint32 GlobalFlagsSet;
			public uint32 CriticalSectionDefaultTimeout;
			public uint32 DeCommitFreeBlockThreshold;
			public uint32 DeCommitTotalFreeThreshold;
			public uint32 LockPrefixTable;
			public uint32 MaximumAllocationSize;
			public uint32 VirtualMemoryThreshold;
			public uint32 ProcessHeapFlags;
			public uint32 ProcessAffinityMask;
			public uint16 CSDVersion;
			public uint16 DependentLoadFlags;
			public uint32 EditList;
			public uint32 SecurityCookie;
			public uint32 SEHandlerTable;
			public uint32 SEHandlerCount;
			public uint32 GuardCFCheckFunctionPointer;
			public uint32 GuardCFDispatchFunctionPointer;
			public uint32 GuardCFFunctionTable;
			public uint32 GuardCFFunctionCount;
			public uint32 GuardFlags;
			public IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;
			public uint32 GuardAddressTakenIatEntryTable;
			public uint32 GuardAddressTakenIatEntryCount;
			public uint32 GuardLongJumpTargetTable;
			public uint32 GuardLongJumpTargetCount;
			public uint32 DynamicValueRelocTable;
			public uint32 CHPEMetadataPointer;
			public uint32 GuardRFFailureRoutine;
			public uint32 GuardRFFailureRoutineFunctionPointer;
			public uint32 DynamicValueRelocTableOffset;
			public uint16 DynamicValueRelocTableSection;
			public uint16 Reserved2;
			public uint32 GuardRFVerifyStackPointerFunctionPointer;
			public uint32 HotPatchTableOffset;
			public uint32 Reserved3;
			public uint32 EnclaveConfigurationPointer;
			public uint32 VolatileMetadataPointer;
			public uint32 GuardEHContinuationTable;
			public uint32 GuardEHContinuationCount;
			public uint32 GuardXFGCheckFunctionPointer;
			public uint32 GuardXFGDispatchFunctionPointer;
			public uint32 GuardXFGTableDispatchFunctionPointer;
			public uint32 CastGuardOsDeterminedFailureMode;
		}
		[CRepr]
		public struct IMAGE_LOAD_CONFIG_DIRECTORY64
		{
			public uint32 Size;
			public uint32 TimeDateStamp;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint32 GlobalFlagsClear;
			public uint32 GlobalFlagsSet;
			public uint32 CriticalSectionDefaultTimeout;
			public uint64 DeCommitFreeBlockThreshold;
			public uint64 DeCommitTotalFreeThreshold;
			public uint64 LockPrefixTable;
			public uint64 MaximumAllocationSize;
			public uint64 VirtualMemoryThreshold;
			public uint64 ProcessAffinityMask;
			public uint32 ProcessHeapFlags;
			public uint16 CSDVersion;
			public uint16 DependentLoadFlags;
			public uint64 EditList;
			public uint64 SecurityCookie;
			public uint64 SEHandlerTable;
			public uint64 SEHandlerCount;
			public uint64 GuardCFCheckFunctionPointer;
			public uint64 GuardCFDispatchFunctionPointer;
			public uint64 GuardCFFunctionTable;
			public uint64 GuardCFFunctionCount;
			public uint32 GuardFlags;
			public IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;
			public uint64 GuardAddressTakenIatEntryTable;
			public uint64 GuardAddressTakenIatEntryCount;
			public uint64 GuardLongJumpTargetTable;
			public uint64 GuardLongJumpTargetCount;
			public uint64 DynamicValueRelocTable;
			public uint64 CHPEMetadataPointer;
			public uint64 GuardRFFailureRoutine;
			public uint64 GuardRFFailureRoutineFunctionPointer;
			public uint32 DynamicValueRelocTableOffset;
			public uint16 DynamicValueRelocTableSection;
			public uint16 Reserved2;
			public uint64 GuardRFVerifyStackPointerFunctionPointer;
			public uint32 HotPatchTableOffset;
			public uint32 Reserved3;
			public uint64 EnclaveConfigurationPointer;
			public uint64 VolatileMetadataPointer;
			public uint64 GuardEHContinuationTable;
			public uint64 GuardEHContinuationCount;
			public uint64 GuardXFGCheckFunctionPointer;
			public uint64 GuardXFGDispatchFunctionPointer;
			public uint64 GuardXFGTableDispatchFunctionPointer;
			public uint64 CastGuardOsDeterminedFailureMode;
		}
		[CRepr]
		public struct IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY
		{
			public uint32 BeginAddress;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 UnwindData;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct IMAGE_RUNTIME_FUNCTION_ENTRY
		{
			public uint32 BeginAddress;
			public uint32 EndAddress;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 UnwindInfoAddress;
				public uint32 UnwindData;
			}
		}
		[CRepr]
		public struct IMAGE_DEBUG_DIRECTORY
		{
			public uint32 Characteristics;
			public uint32 TimeDateStamp;
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public IMAGE_DEBUG_TYPE Type;
			public uint32 SizeOfData;
			public uint32 AddressOfRawData;
			public uint32 PointerToRawData;
		}
		[CRepr]
		public struct IMAGE_COFF_SYMBOLS_HEADER
		{
			public uint32 NumberOfSymbols;
			public uint32 LvaToFirstSymbol;
			public uint32 NumberOfLinenumbers;
			public uint32 LvaToFirstLinenumber;
			public uint32 RvaToFirstByteOfCode;
			public uint32 RvaToLastByteOfCode;
			public uint32 RvaToFirstByteOfData;
			public uint32 RvaToLastByteOfData;
		}
		[CRepr]
		public struct FPO_DATA
		{
			public uint32 ulOffStart;
			public uint32 cbProcSize;
			public uint32 cdwLocals;
			public uint16 cdwParams;
			public uint16 _bitfield;
		}
		[CRepr]
		public struct IMAGE_FUNCTION_ENTRY
		{
			public uint32 StartingAddress;
			public uint32 EndingAddress;
			public uint32 EndOfPrologue;
		}
		[CRepr]
		public struct IMAGE_FUNCTION_ENTRY64
		{
			public uint64 StartingAddress;
			public uint64 EndingAddress;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 EndOfPrologue;
				public uint64 UnwindInfoAddress;
			}
		}
		[CRepr]
		public struct IMAGE_COR20_HEADER
		{
			public uint32 cb;
			public uint16 MajorRuntimeVersion;
			public uint16 MinorRuntimeVersion;
			public IMAGE_DATA_DIRECTORY MetaData;
			public uint32 Flags;
			public _Anonymous_e__Union Anonymous;
			public IMAGE_DATA_DIRECTORY Resources;
			public IMAGE_DATA_DIRECTORY StrongNameSignature;
			public IMAGE_DATA_DIRECTORY CodeManagerTable;
			public IMAGE_DATA_DIRECTORY VTableFixups;
			public IMAGE_DATA_DIRECTORY ExportAddressTableJumps;
			public IMAGE_DATA_DIRECTORY ManagedNativeHeader;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 EntryPointToken;
				public uint32 EntryPointRVA;
			}
		}
		[CRepr]
		public struct UNWIND_HISTORY_TABLE
		{
			public uint32 Count;
			public uint8 LocalHint;
			public uint8 GlobalHint;
			public uint8 Search;
			public uint8 Once;
			public uint LowAddress;
			public uint HighAddress;
			public UNWIND_HISTORY_TABLE_ENTRY[12] Entry;
		}
		[CRepr]
		public struct WAITCHAIN_NODE_INFO
		{
			public WCT_OBJECT_TYPE ObjectType;
			public WCT_OBJECT_STATUS ObjectStatus;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _LockObject_e__Struct LockObject;
				public _ThreadObject_e__Struct ThreadObject;
				
				[CRepr]
				public struct _LockObject_e__Struct
				{
					public char16[128] ObjectName;
					public LARGE_INTEGER Timeout;
					public BOOL Alertable;
				}
				[CRepr]
				public struct _ThreadObject_e__Struct
				{
					public uint32 ProcessId;
					public uint32 ThreadId;
					public uint32 WaitTime;
					public uint32 ContextSwitches;
				}
			}
		}
		[CRepr]
		public struct MINIDUMP_LOCATION_DESCRIPTOR
		{
			public uint32 DataSize;
			public uint32 Rva;
		}
		[CRepr]
		public struct MINIDUMP_LOCATION_DESCRIPTOR64
		{
			public uint64 DataSize;
			public uint64 Rva;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY_DESCRIPTOR
		{
			public uint64 StartOfMemoryRange;
			public MINIDUMP_LOCATION_DESCRIPTOR Memory;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY_DESCRIPTOR64
		{
			public uint64 StartOfMemoryRange;
			public uint64 DataSize;
		}
		[CRepr]
		public struct MINIDUMP_HEADER
		{
			public uint32 Signature;
			public uint32 Version;
			public uint32 NumberOfStreams;
			public uint32 StreamDirectoryRva;
			public uint32 CheckSum;
			public _Anonymous_e__Union Anonymous;
			public uint64 Flags;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 Reserved;
				public uint32 TimeDateStamp;
			}
		}
		[CRepr]
		public struct MINIDUMP_DIRECTORY
		{
			public uint32 StreamType;
			public MINIDUMP_LOCATION_DESCRIPTOR Location;
		}
		[CRepr]
		public struct MINIDUMP_STRING
		{
			public uint32 Length;
			public char16[] Buffer;
		}
		[CRepr, Union]
		public struct CPU_INFORMATION
		{
			public _X86CpuInfo_e__Struct X86CpuInfo;
			public _OtherCpuInfo_e__Struct OtherCpuInfo;
			
			[CRepr]
			public struct _X86CpuInfo_e__Struct
			{
				public uint32[3] VendorId;
				public uint32 VersionInformation;
				public uint32 FeatureInformation;
				public uint32 AMDExtendedCpuFeatures;
			}
			[CRepr]
			public struct _OtherCpuInfo_e__Struct
			{
				public uint64[2] ProcessorFeatures;
			}
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_INFO
		{
			public PROCESSOR_ARCHITECTURE ProcessorArchitecture;
			public uint16 ProcessorLevel;
			public uint16 ProcessorRevision;
			public _Anonymous1_e__Union Anonymous1;
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint32 BuildNumber;
			public VER_PLATFORM PlatformId;
			public uint32 CSDVersionRva;
			public _Anonymous2_e__Union Anonymous2;
			public CPU_INFORMATION Cpu;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 Reserved1;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 SuiteMask;
					public uint16 Reserved2;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint16 Reserved0;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 NumberOfProcessors;
					public uint8 ProductType;
				}
			}
		}
		[CRepr]
		public struct MINIDUMP_THREAD
		{
			public uint32 ThreadId;
			public uint32 SuspendCount;
			public uint32 PriorityClass;
			public uint32 Priority;
			public uint64 Teb;
			public MINIDUMP_MEMORY_DESCRIPTOR Stack;
			public MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_LIST
		{
			public uint32 NumberOfThreads;
			public MINIDUMP_THREAD[] Threads;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_EX
		{
			public uint32 ThreadId;
			public uint32 SuspendCount;
			public uint32 PriorityClass;
			public uint32 Priority;
			public uint64 Teb;
			public MINIDUMP_MEMORY_DESCRIPTOR Stack;
			public MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
			public MINIDUMP_MEMORY_DESCRIPTOR BackingStore;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_EX_LIST
		{
			public uint32 NumberOfThreads;
			public MINIDUMP_THREAD_EX[] Threads;
		}
		[CRepr]
		public struct MINIDUMP_EXCEPTION
		{
			public uint32 ExceptionCode;
			public uint32 ExceptionFlags;
			public uint64 ExceptionRecord;
			public uint64 ExceptionAddress;
			public uint32 NumberParameters;
			public uint32 __unusedAlignment;
			public uint64[15] ExceptionInformation;
		}
		[CRepr]
		public struct MINIDUMP_EXCEPTION_STREAM
		{
			public uint32 ThreadId;
			public uint32 __alignment;
			public MINIDUMP_EXCEPTION ExceptionRecord;
			public MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
		}
		[CRepr]
		public struct MINIDUMP_MODULE
		{
			public uint64 BaseOfImage;
			public uint32 SizeOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public uint32 ModuleNameRva;
			public VS_FIXEDFILEINFO VersionInfo;
			public MINIDUMP_LOCATION_DESCRIPTOR CvRecord;
			public MINIDUMP_LOCATION_DESCRIPTOR MiscRecord;
			public uint64 Reserved0;
			public uint64 Reserved1;
		}
		[CRepr]
		public struct MINIDUMP_MODULE_LIST
		{
			public uint32 NumberOfModules;
			public MINIDUMP_MODULE[] Modules;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY_LIST
		{
			public uint32 NumberOfMemoryRanges;
			public MINIDUMP_MEMORY_DESCRIPTOR[] MemoryRanges;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY64_LIST
		{
			public uint64 NumberOfMemoryRanges;
			public uint64 BaseRva;
			public MINIDUMP_MEMORY_DESCRIPTOR64[] MemoryRanges;
		}
		[CRepr]
		public struct MINIDUMP_EXCEPTION_INFORMATION
		{
			public uint32 ThreadId;
			public EXCEPTION_POINTERS* ExceptionPointers;
			public BOOL ClientPointers;
		}
		[CRepr]
		public struct MINIDUMP_EXCEPTION_INFORMATION64
		{
			public uint32 ThreadId;
			public uint64 ExceptionRecord;
			public uint64 ContextRecord;
			public BOOL ClientPointers;
		}
		[CRepr]
		public struct MINIDUMP_HANDLE_OBJECT_INFORMATION
		{
			public uint32 NextInfoRva;
			public uint32 InfoType;
			public uint32 SizeOfInfo;
		}
		[CRepr]
		public struct MINIDUMP_HANDLE_DESCRIPTOR
		{
			public uint64 Handle;
			public uint32 TypeNameRva;
			public uint32 ObjectNameRva;
			public uint32 Attributes;
			public uint32 GrantedAccess;
			public uint32 HandleCount;
			public uint32 PointerCount;
		}
		[CRepr]
		public struct MINIDUMP_HANDLE_DESCRIPTOR_2
		{
			public uint64 Handle;
			public uint32 TypeNameRva;
			public uint32 ObjectNameRva;
			public uint32 Attributes;
			public uint32 GrantedAccess;
			public uint32 HandleCount;
			public uint32 PointerCount;
			public uint32 ObjectInfoRva;
			public uint32 Reserved0;
		}
		[CRepr]
		public struct MINIDUMP_HANDLE_DATA_STREAM
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfDescriptor;
			public uint32 NumberOfDescriptors;
			public uint32 Reserved;
		}
		[CRepr]
		public struct MINIDUMP_HANDLE_OPERATION_LIST
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfEntry;
			public uint32 NumberOfEntries;
			public uint32 Reserved;
		}
		[CRepr]
		public struct MINIDUMP_FUNCTION_TABLE_DESCRIPTOR
		{
			public uint64 MinimumAddress;
			public uint64 MaximumAddress;
			public uint64 BaseAddress;
			public uint32 EntryCount;
			public uint32 SizeOfAlignPad;
		}
		[CRepr]
		public struct MINIDUMP_FUNCTION_TABLE_STREAM
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfDescriptor;
			public uint32 SizeOfNativeDescriptor;
			public uint32 SizeOfFunctionEntry;
			public uint32 NumberOfDescriptors;
			public uint32 SizeOfAlignPad;
		}
		[CRepr]
		public struct MINIDUMP_UNLOADED_MODULE
		{
			public uint64 BaseOfImage;
			public uint32 SizeOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public uint32 ModuleNameRva;
		}
		[CRepr]
		public struct MINIDUMP_UNLOADED_MODULE_LIST
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfEntry;
			public uint32 NumberOfEntries;
		}
		[CRepr]
		public struct XSTATE_CONFIG_FEATURE_MSC_INFO
		{
			public uint32 SizeOfInfo;
			public uint32 ContextSize;
			public uint64 EnabledFeatures;
			public XSTATE_FEATURE[64] Features;
		}
		[CRepr]
		public struct MINIDUMP_MISC_INFO
		{
			public uint32 SizeOfInfo;
			public MINIDUMP_MISC_INFO_FLAGS Flags1;
			public uint32 ProcessId;
			public uint32 ProcessCreateTime;
			public uint32 ProcessUserTime;
			public uint32 ProcessKernelTime;
		}
		[CRepr]
		public struct MINIDUMP_MISC_INFO_2
		{
			public uint32 SizeOfInfo;
			public uint32 Flags1;
			public uint32 ProcessId;
			public uint32 ProcessCreateTime;
			public uint32 ProcessUserTime;
			public uint32 ProcessKernelTime;
			public uint32 ProcessorMaxMhz;
			public uint32 ProcessorCurrentMhz;
			public uint32 ProcessorMhzLimit;
			public uint32 ProcessorMaxIdleState;
			public uint32 ProcessorCurrentIdleState;
		}
		[CRepr]
		public struct MINIDUMP_MISC_INFO_3
		{
			public uint32 SizeOfInfo;
			public uint32 Flags1;
			public uint32 ProcessId;
			public uint32 ProcessCreateTime;
			public uint32 ProcessUserTime;
			public uint32 ProcessKernelTime;
			public uint32 ProcessorMaxMhz;
			public uint32 ProcessorCurrentMhz;
			public uint32 ProcessorMhzLimit;
			public uint32 ProcessorMaxIdleState;
			public uint32 ProcessorCurrentIdleState;
			public uint32 ProcessIntegrityLevel;
			public uint32 ProcessExecuteFlags;
			public uint32 ProtectedProcess;
			public uint32 TimeZoneId;
			public TIME_ZONE_INFORMATION TimeZone;
		}
		[CRepr]
		public struct MINIDUMP_MISC_INFO_4
		{
			public uint32 SizeOfInfo;
			public uint32 Flags1;
			public uint32 ProcessId;
			public uint32 ProcessCreateTime;
			public uint32 ProcessUserTime;
			public uint32 ProcessKernelTime;
			public uint32 ProcessorMaxMhz;
			public uint32 ProcessorCurrentMhz;
			public uint32 ProcessorMhzLimit;
			public uint32 ProcessorMaxIdleState;
			public uint32 ProcessorCurrentIdleState;
			public uint32 ProcessIntegrityLevel;
			public uint32 ProcessExecuteFlags;
			public uint32 ProtectedProcess;
			public uint32 TimeZoneId;
			public TIME_ZONE_INFORMATION TimeZone;
			public char16[260] BuildString;
			public char16[40] DbgBldStr;
		}
		[CRepr]
		public struct MINIDUMP_MISC_INFO_5
		{
			public uint32 SizeOfInfo;
			public uint32 Flags1;
			public uint32 ProcessId;
			public uint32 ProcessCreateTime;
			public uint32 ProcessUserTime;
			public uint32 ProcessKernelTime;
			public uint32 ProcessorMaxMhz;
			public uint32 ProcessorCurrentMhz;
			public uint32 ProcessorMhzLimit;
			public uint32 ProcessorMaxIdleState;
			public uint32 ProcessorCurrentIdleState;
			public uint32 ProcessIntegrityLevel;
			public uint32 ProcessExecuteFlags;
			public uint32 ProtectedProcess;
			public uint32 TimeZoneId;
			public TIME_ZONE_INFORMATION TimeZone;
			public char16[260] BuildString;
			public char16[40] DbgBldStr;
			public XSTATE_CONFIG_FEATURE_MSC_INFO XStateData;
			public uint32 ProcessCookie;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY_INFO
		{
			public uint64 BaseAddress;
			public uint64 AllocationBase;
			public uint32 AllocationProtect;
			public uint32 __alignment1;
			public uint64 RegionSize;
			public VIRTUAL_ALLOCATION_TYPE State;
			public uint32 Protect;
			public uint32 Type;
			public uint32 __alignment2;
		}
		[CRepr]
		public struct MINIDUMP_MEMORY_INFO_LIST
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfEntry;
			public uint64 NumberOfEntries;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_NAME
		{
			public uint32 ThreadId;
			public uint64 RvaOfThreadName;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_NAME_LIST
		{
			public uint32 NumberOfThreadNames;
			public MINIDUMP_THREAD_NAME[] ThreadNames;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_INFO
		{
			public uint32 ThreadId;
			public MINIDUMP_THREAD_INFO_DUMP_FLAGS DumpFlags;
			public uint32 DumpError;
			public uint32 ExitStatus;
			public uint64 CreateTime;
			public uint64 ExitTime;
			public uint64 KernelTime;
			public uint64 UserTime;
			public uint64 StartAddress;
			public uint64 Affinity;
		}
		[CRepr]
		public struct MINIDUMP_THREAD_INFO_LIST
		{
			public uint32 SizeOfHeader;
			public uint32 SizeOfEntry;
			public uint32 NumberOfEntries;
		}
		[CRepr]
		public struct MINIDUMP_TOKEN_INFO_HEADER
		{
			public uint32 TokenSize;
			public uint32 TokenId;
			public uint64 TokenHandle;
		}
		[CRepr]
		public struct MINIDUMP_TOKEN_INFO_LIST
		{
			public uint32 TokenListSize;
			public uint32 TokenListEntries;
			public uint32 ListHeaderSize;
			public uint32 ElementHeaderSize;
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_BASIC_INFORMATION
		{
			public uint32 TimerResolution;
			public uint32 PageSize;
			public uint32 NumberOfPhysicalPages;
			public uint32 LowestPhysicalPageNumber;
			public uint32 HighestPhysicalPageNumber;
			public uint32 AllocationGranularity;
			public uint64 MinimumUserModeAddress;
			public uint64 MaximumUserModeAddress;
			public uint64 ActiveProcessorsAffinityMask;
			public uint32 NumberOfProcessors;
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_FILECACHE_INFORMATION
		{
			public uint64 CurrentSize;
			public uint64 PeakSize;
			public uint32 PageFaultCount;
			public uint64 MinimumWorkingSet;
			public uint64 MaximumWorkingSet;
			public uint64 CurrentSizeIncludingTransitionInPages;
			public uint64 PeakSizeIncludingTransitionInPages;
			public uint32 TransitionRePurposeCount;
			public uint32 Flags;
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION
		{
			public uint64 AvailablePages;
			public uint64 CommittedPages;
			public uint64 CommitLimit;
			public uint64 PeakCommitment;
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION
		{
			public uint64 IdleProcessTime;
			public uint64 IoReadTransferCount;
			public uint64 IoWriteTransferCount;
			public uint64 IoOtherTransferCount;
			public uint32 IoReadOperationCount;
			public uint32 IoWriteOperationCount;
			public uint32 IoOtherOperationCount;
			public uint32 AvailablePages;
			public uint32 CommittedPages;
			public uint32 CommitLimit;
			public uint32 PeakCommitment;
			public uint32 PageFaultCount;
			public uint32 CopyOnWriteCount;
			public uint32 TransitionCount;
			public uint32 CacheTransitionCount;
			public uint32 DemandZeroCount;
			public uint32 PageReadCount;
			public uint32 PageReadIoCount;
			public uint32 CacheReadCount;
			public uint32 CacheIoCount;
			public uint32 DirtyPagesWriteCount;
			public uint32 DirtyWriteIoCount;
			public uint32 MappedPagesWriteCount;
			public uint32 MappedWriteIoCount;
			public uint32 PagedPoolPages;
			public uint32 NonPagedPoolPages;
			public uint32 PagedPoolAllocs;
			public uint32 PagedPoolFrees;
			public uint32 NonPagedPoolAllocs;
			public uint32 NonPagedPoolFrees;
			public uint32 FreeSystemPtes;
			public uint32 ResidentSystemCodePage;
			public uint32 TotalSystemDriverPages;
			public uint32 TotalSystemCodePages;
			public uint32 NonPagedPoolLookasideHits;
			public uint32 PagedPoolLookasideHits;
			public uint32 AvailablePagedPoolPages;
			public uint32 ResidentSystemCachePage;
			public uint32 ResidentPagedPoolPage;
			public uint32 ResidentSystemDriverPage;
			public uint32 CcFastReadNoWait;
			public uint32 CcFastReadWait;
			public uint32 CcFastReadResourceMiss;
			public uint32 CcFastReadNotPossible;
			public uint32 CcFastMdlReadNoWait;
			public uint32 CcFastMdlReadWait;
			public uint32 CcFastMdlReadResourceMiss;
			public uint32 CcFastMdlReadNotPossible;
			public uint32 CcMapDataNoWait;
			public uint32 CcMapDataWait;
			public uint32 CcMapDataNoWaitMiss;
			public uint32 CcMapDataWaitMiss;
			public uint32 CcPinMappedDataCount;
			public uint32 CcPinReadNoWait;
			public uint32 CcPinReadWait;
			public uint32 CcPinReadNoWaitMiss;
			public uint32 CcPinReadWaitMiss;
			public uint32 CcCopyReadNoWait;
			public uint32 CcCopyReadWait;
			public uint32 CcCopyReadNoWaitMiss;
			public uint32 CcCopyReadWaitMiss;
			public uint32 CcMdlReadNoWait;
			public uint32 CcMdlReadWait;
			public uint32 CcMdlReadNoWaitMiss;
			public uint32 CcMdlReadWaitMiss;
			public uint32 CcReadAheadIos;
			public uint32 CcLazyWriteIos;
			public uint32 CcLazyWritePages;
			public uint32 CcDataFlushes;
			public uint32 CcDataPages;
			public uint32 ContextSwitches;
			public uint32 FirstLevelTbFills;
			public uint32 SecondLevelTbFills;
			public uint32 SystemCalls;
			public uint64 CcTotalDirtyPages;
			public uint64 CcDirtyPageThreshold;
			public int64 ResidentAvailablePages;
			public uint64 SharedCommittedPages;
		}
		[CRepr]
		public struct MINIDUMP_SYSTEM_MEMORY_INFO_1
		{
			public uint16 Revision;
			public uint16 Flags;
			public MINIDUMP_SYSTEM_BASIC_INFORMATION BasicInfo;
			public MINIDUMP_SYSTEM_FILECACHE_INFORMATION FileCacheInfo;
			public MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION BasicPerfInfo;
			public MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION PerfInfo;
		}
		[CRepr]
		public struct MINIDUMP_PROCESS_VM_COUNTERS_1
		{
			public uint16 Revision;
			public uint32 PageFaultCount;
			public uint64 PeakWorkingSetSize;
			public uint64 WorkingSetSize;
			public uint64 QuotaPeakPagedPoolUsage;
			public uint64 QuotaPagedPoolUsage;
			public uint64 QuotaPeakNonPagedPoolUsage;
			public uint64 QuotaNonPagedPoolUsage;
			public uint64 PagefileUsage;
			public uint64 PeakPagefileUsage;
			public uint64 PrivateUsage;
		}
		[CRepr]
		public struct MINIDUMP_PROCESS_VM_COUNTERS_2
		{
			public uint16 Revision;
			public uint16 Flags;
			public uint32 PageFaultCount;
			public uint64 PeakWorkingSetSize;
			public uint64 WorkingSetSize;
			public uint64 QuotaPeakPagedPoolUsage;
			public uint64 QuotaPagedPoolUsage;
			public uint64 QuotaPeakNonPagedPoolUsage;
			public uint64 QuotaNonPagedPoolUsage;
			public uint64 PagefileUsage;
			public uint64 PeakPagefileUsage;
			public uint64 PeakVirtualSize;
			public uint64 VirtualSize;
			public uint64 PrivateUsage;
			public uint64 PrivateWorkingSetSize;
			public uint64 SharedCommitUsage;
			public uint64 JobSharedCommitUsage;
			public uint64 JobPrivateCommitUsage;
			public uint64 JobPeakPrivateCommitUsage;
			public uint64 JobPrivateCommitLimit;
			public uint64 JobTotalCommitLimit;
		}
		[CRepr]
		public struct MINIDUMP_USER_RECORD
		{
			public uint32 Type;
			public MINIDUMP_LOCATION_DESCRIPTOR Memory;
		}
		[CRepr]
		public struct MINIDUMP_USER_STREAM
		{
			public uint32 Type;
			public uint32 BufferSize;
			public void* Buffer;
		}
		[CRepr]
		public struct MINIDUMP_USER_STREAM_INFORMATION
		{
			public uint32 UserStreamCount;
			public MINIDUMP_USER_STREAM* UserStreamArray;
		}
		[CRepr]
		public struct MINIDUMP_INCLUDE_THREAD_CALLBACK
		{
			public uint32 ThreadId;
		}
		[CRepr]
		public struct MINIDUMP_MODULE_CALLBACK
		{
			public PWSTR FullPath;
			public uint64 BaseOfImage;
			public uint32 SizeOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public VS_FIXEDFILEINFO VersionInfo;
			public void* CvRecord;
			public uint32 SizeOfCvRecord;
			public void* MiscRecord;
			public uint32 SizeOfMiscRecord;
		}
		[CRepr]
		public struct MINIDUMP_INCLUDE_MODULE_CALLBACK
		{
			public uint64 BaseOfImage;
		}
		[CRepr]
		public struct MINIDUMP_IO_CALLBACK
		{
			public HANDLE Handle;
			public uint64 Offset;
			public void* Buffer;
			public uint32 BufferBytes;
		}
		[CRepr]
		public struct MINIDUMP_READ_MEMORY_FAILURE_CALLBACK
		{
			public uint64 Offset;
			public uint32 Bytes;
			public HRESULT FailureStatus;
		}
		[CRepr]
		public struct MINIDUMP_VM_QUERY_CALLBACK
		{
			public uint64 Offset;
		}
		[CRepr]
		public struct MINIDUMP_VM_PRE_READ_CALLBACK
		{
			public uint64 Offset;
			public void* Buffer;
			public uint32 Size;
		}
		[CRepr]
		public struct MINIDUMP_VM_POST_READ_CALLBACK
		{
			public uint64 Offset;
			public void* Buffer;
			public uint32 Size;
			public uint32 Completed;
			public HRESULT Status;
		}
		[CRepr]
		public struct MINIDUMP_CALLBACK_INPUT
		{
			public uint32 ProcessId;
			public HANDLE ProcessHandle;
			public uint32 CallbackType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HRESULT Status;
				public MINIDUMP_THREAD_CALLBACK Thread;
				public MINIDUMP_THREAD_EX_CALLBACK ThreadEx;
				public MINIDUMP_MODULE_CALLBACK Module;
				public MINIDUMP_INCLUDE_THREAD_CALLBACK IncludeThread;
				public MINIDUMP_INCLUDE_MODULE_CALLBACK IncludeModule;
				public MINIDUMP_IO_CALLBACK Io;
				public MINIDUMP_READ_MEMORY_FAILURE_CALLBACK ReadMemoryFailure;
				public uint32 SecondaryFlags;
				public MINIDUMP_VM_QUERY_CALLBACK VmQuery;
				public MINIDUMP_VM_PRE_READ_CALLBACK VmPreRead;
				public MINIDUMP_VM_POST_READ_CALLBACK VmPostRead;
			}
		}
		[CRepr]
		public struct MINIDUMP_CALLBACK_OUTPUT
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ModuleWriteFlags;
				public uint32 ThreadWriteFlags;
				public uint32 SecondaryFlags;
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public HANDLE Handle;
				public _Anonymous3_e__Struct Anonymous3;
				public _Anonymous4_e__Struct Anonymous4;
				public _Anonymous5_e__Struct Anonymous5;
				public HRESULT Status;
				
				[CRepr]
				public struct _Anonymous4_e__Struct
				{
					public HRESULT VmQueryStatus;
					public MINIDUMP_MEMORY_INFO VmQueryResult;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public BOOL CheckCancel;
					public BOOL Cancel;
				}
				[CRepr]
				public struct _Anonymous5_e__Struct
				{
					public HRESULT VmReadStatus;
					public uint32 VmReadBytesCompleted;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint64 MemoryBase;
					public uint32 MemorySize;
				}
				[CRepr]
				public struct _Anonymous3_e__Struct
				{
					public MINIDUMP_MEMORY_INFO VmRegion;
					public BOOL Continue;
				}
			}
		}
		[CRepr]
		public struct MINIDUMP_CALLBACK_INFORMATION
		{
			public MINIDUMP_CALLBACK_ROUTINE CallbackRoutine;
			public void* CallbackParam;
		}
		[CRepr]
		public struct DebugPropertyInfo
		{
			public uint32 m_dwValidFields;
			public BSTR m_bstrName;
			public BSTR m_bstrType;
			public BSTR m_bstrValue;
			public BSTR m_bstrFullName;
			public uint32 m_dwAttrib;
			public IDebugProperty* m_pDebugProp;
		}
		[CRepr]
		public struct ExtendedDebugPropertyInfo
		{
			public uint32 dwValidFields;
			public PWSTR pszName;
			public PWSTR pszType;
			public PWSTR pszValue;
			public PWSTR pszFullName;
			public uint32 dwAttrib;
			public IDebugProperty* pDebugProp;
			public uint32 nDISPID;
			public uint32 nType;
			public VARIANT varValue;
			public ILockBytes* plbValue;
			public IDebugExtendedProperty* pDebugExtProp;
		}
		[CRepr]
		public struct DebugStackFrameDescriptor
		{
			public IDebugStackFrame* pdsf;
			public uint32 dwMin;
			public uint32 dwLim;
			public BOOL fFinal;
			public IUnknown* punkFinal;
		}
		[CRepr]
		public struct DebugStackFrameDescriptor64
		{
			public IDebugStackFrame* pdsf;
			public uint64 dwMin;
			public uint64 dwLim;
			public BOOL fFinal;
			public IUnknown* punkFinal;
		}
		[CRepr]
		public struct PROFILER_HEAP_OBJECT_SCOPE_LIST
		{
			public uint32 count;
			public uint[] scopes;
		}
		[CRepr]
		public struct PROFILER_PROPERTY_TYPE_SUBSTRING_INFO
		{
			public uint32 length;
			public PWSTR value;
		}
		[CRepr]
		public struct PROFILER_HEAP_OBJECT_RELATIONSHIP
		{
			public uint32 relationshipId;
			public PROFILER_RELATIONSHIP_INFO relationshipInfo;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public double numberValue;
				public PWSTR stringValue;
				public BSTR bstrValue;
				public uint objectId;
				public void* externalObjectAddress;
				public PROFILER_PROPERTY_TYPE_SUBSTRING_INFO* subString;
			}
		}
		[CRepr]
		public struct PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST
		{
			public uint32 count;
			public PROFILER_HEAP_OBJECT_RELATIONSHIP[] elements;
		}
		[CRepr]
		public struct PROFILER_HEAP_OBJECT_OPTIONAL_INFO
		{
			public PROFILER_HEAP_OBJECT_OPTIONAL_INFO_TYPE infoType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint prototype;
				public PWSTR functionName;
				public uint32 elementAttributesSize;
				public uint32 elementTextChildrenSize;
				public PROFILER_HEAP_OBJECT_SCOPE_LIST* scopeList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP* internalProperty;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* namePropertyList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* indexPropertyList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* relationshipList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* eventList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* weakMapCollectionList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* mapCollectionList;
				public PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST* setCollectionList;
			}
		}
		[CRepr]
		public struct PROFILER_HEAP_OBJECT
		{
			public uint32 size;
			public _Anonymous_e__Union Anonymous;
			public uint32 typeNameId;
			public uint32 flags;
			public uint16 unused;
			public uint16 optionalInfoCount;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint objectId;
				public void* externalObjectAddress;
			}
		}
		[CRepr]
		public struct PROFILER_HEAP_SUMMARY
		{
			public PROFILER_HEAP_SUMMARY_VERSION version;
			public uint32 totalHeapSize;
		}
		[CRepr]
		public struct LOADED_IMAGE
		{
			public PSTR ModuleName;
			public HANDLE hFile;
			public uint8* MappedAddress;
			public IMAGE_NT_HEADERS64* FileHeader;
			public IMAGE_SECTION_HEADER* LastRvaSection;
			public uint32 NumberOfSections;
			public IMAGE_SECTION_HEADER* Sections;
			public IMAGE_FILE_CHARACTERISTICS2 Characteristics;
			public BOOLEAN fSystemImage;
			public BOOLEAN fDOSImage;
			public BOOLEAN fReadOnly;
			public uint8 Version;
			public LIST_ENTRY Links;
			public uint32 SizeOfImage;
		}
		[CRepr]
		public struct MODLOAD_DATA
		{
			public uint32 ssize;
			public MODLOAD_DATA_TYPE ssig;
			public void* data;
			public uint32 size;
			public uint32 flags;
		}
		[CRepr]
		public struct MODLOAD_CVMISC
		{
			public uint32 oCV;
			public uint cCV;
			public uint32 oMisc;
			public uint cMisc;
			public uint32 dtImage;
			public uint32 cImage;
		}
		[CRepr]
		public struct MODLOAD_PDBGUID_PDBAGE
		{
			public Guid PdbGuid;
			public uint32 PdbAge;
		}
		[CRepr]
		public struct ADDRESS64
		{
			public uint64 Offset;
			public uint16 Segment;
			public ADDRESS_MODE Mode;
		}
		[CRepr]
		public struct KDHELP64
		{
			public uint64 Thread;
			public uint32 ThCallbackStack;
			public uint32 ThCallbackBStore;
			public uint32 NextCallback;
			public uint32 FramePointer;
			public uint64 KiCallUserMode;
			public uint64 KeUserCallbackDispatcher;
			public uint64 SystemRangeStart;
			public uint64 KiUserExceptionDispatcher;
			public uint64 StackBase;
			public uint64 StackLimit;
			public uint32 BuildVersion;
			public uint32 RetpolineStubFunctionTableSize;
			public uint64 RetpolineStubFunctionTable;
			public uint32 RetpolineStubOffset;
			public uint32 RetpolineStubSize;
			public uint64[2] Reserved0;
		}
		[CRepr]
		public struct STACKFRAME64
		{
			public ADDRESS64 AddrPC;
			public ADDRESS64 AddrReturn;
			public ADDRESS64 AddrFrame;
			public ADDRESS64 AddrStack;
			public ADDRESS64 AddrBStore;
			public void* FuncTableEntry;
			public uint64[4] Params;
			public BOOL Far;
			public BOOL Virtual;
			public uint64[3] Reserved;
			public KDHELP64 KdHelp;
		}
		[CRepr]
		public struct STACKFRAME_EX
		{
			public ADDRESS64 AddrPC;
			public ADDRESS64 AddrReturn;
			public ADDRESS64 AddrFrame;
			public ADDRESS64 AddrStack;
			public ADDRESS64 AddrBStore;
			public void* FuncTableEntry;
			public uint64[4] Params;
			public BOOL Far;
			public BOOL Virtual;
			public uint64[3] Reserved;
			public KDHELP64 KdHelp;
			public uint32 StackFrameSize;
			public uint32 InlineFrameContext;
		}
		[CRepr]
		public struct API_VERSION
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
			public uint16 Revision;
			public uint16 Reserved;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOL64
		{
			public uint32 SizeOfStruct;
			public uint64 Address;
			public uint32 Size;
			public uint32 Flags;
			public uint32 MaxNameLength;
			public CHAR[] Name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOL64_PACKAGE
		{
			public IMAGEHLP_SYMBOL64 sym;
			public CHAR[2001] name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOLW64
		{
			public uint32 SizeOfStruct;
			public uint64 Address;
			public uint32 Size;
			public uint32 Flags;
			public uint32 MaxNameLength;
			public char16[] Name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOLW64_PACKAGE
		{
			public IMAGEHLP_SYMBOLW64 sym;
			public char16[2001] name;
		}
		[CRepr]
		public struct IMAGEHLP_MODULE64
		{
			public uint32 SizeOfStruct;
			public uint64 BaseOfImage;
			public uint32 ImageSize;
			public uint32 TimeDateStamp;
			public uint32 CheckSum;
			public uint32 NumSyms;
			public SYM_TYPE SymType;
			public CHAR[32] ModuleName;
			public CHAR[256] ImageName;
			public CHAR[256] LoadedImageName;
			public CHAR[256] LoadedPdbName;
			public uint32 CVSig;
			public CHAR[780] CVData;
			public uint32 PdbSig;
			public Guid PdbSig70;
			public uint32 PdbAge;
			public BOOL PdbUnmatched;
			public BOOL DbgUnmatched;
			public BOOL LineNumbers;
			public BOOL GlobalSymbols;
			public BOOL TypeInfo;
			public BOOL SourceIndexed;
			public BOOL Publics;
			public uint32 MachineType;
			public uint32 Reserved;
		}
		[CRepr]
		public struct IMAGEHLP_MODULE64_EX
		{
			public IMAGEHLP_MODULE64 Module;
			public uint32 RegionFlags;
		}
		[CRepr]
		public struct IMAGEHLP_MODULEW64
		{
			public uint32 SizeOfStruct;
			public uint64 BaseOfImage;
			public uint32 ImageSize;
			public uint32 TimeDateStamp;
			public uint32 CheckSum;
			public uint32 NumSyms;
			public SYM_TYPE SymType;
			public char16[32] ModuleName;
			public char16[256] ImageName;
			public char16[256] LoadedImageName;
			public char16[256] LoadedPdbName;
			public uint32 CVSig;
			public char16[780] CVData;
			public uint32 PdbSig;
			public Guid PdbSig70;
			public uint32 PdbAge;
			public BOOL PdbUnmatched;
			public BOOL DbgUnmatched;
			public BOOL LineNumbers;
			public BOOL GlobalSymbols;
			public BOOL TypeInfo;
			public BOOL SourceIndexed;
			public BOOL Publics;
			public uint32 MachineType;
			public uint32 Reserved;
		}
		[CRepr]
		public struct IMAGEHLP_MODULEW64_EX
		{
			public IMAGEHLP_MODULEW64 Module;
			public uint32 RegionFlags;
		}
		[CRepr]
		public struct IMAGEHLP_LINE64
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint32 LineNumber;
			public PSTR FileName;
			public uint64 Address;
		}
		[CRepr]
		public struct IMAGEHLP_LINEW64
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint32 LineNumber;
			public PWSTR FileName;
			public uint64 Address;
		}
		[CRepr]
		public struct SOURCEFILE
		{
			public uint64 ModBase;
			public PSTR FileName;
		}
		[CRepr]
		public struct SOURCEFILEW
		{
			public uint64 ModBase;
			public PWSTR FileName;
		}
		[CRepr]
		public struct IMAGEHLP_CBA_READ_MEMORY
		{
			public uint64 addr;
			public void* buf;
			public uint32 bytes;
			public uint32* bytesread;
		}
		[CRepr]
		public struct IMAGEHLP_CBA_EVENT
		{
			public IMAGEHLP_CBA_EVENT_SEVERITY severity;
			public uint32 code;
			public PSTR desc;
			public void* object;
		}
		[CRepr]
		public struct IMAGEHLP_CBA_EVENTW
		{
			public IMAGEHLP_CBA_EVENT_SEVERITY severity;
			public uint32 code;
			public PWSTR desc;
			public void* object;
		}
		[CRepr]
		public struct IMAGEHLP_DEFERRED_SYMBOL_LOAD64
		{
			public uint32 SizeOfStruct;
			public uint64 BaseOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public CHAR[260] FileName;
			public BOOLEAN Reparse;
			public HANDLE hFile;
			public uint32 Flags;
		}
		[CRepr]
		public struct IMAGEHLP_DEFERRED_SYMBOL_LOADW64
		{
			public uint32 SizeOfStruct;
			public uint64 BaseOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public char16[261] FileName;
			public BOOLEAN Reparse;
			public HANDLE hFile;
			public uint32 Flags;
		}
		[CRepr]
		public struct IMAGEHLP_DUPLICATE_SYMBOL64
		{
			public uint32 SizeOfStruct;
			public uint32 NumberOfDups;
			public IMAGEHLP_SYMBOL64* Symbol;
			public uint32 SelectedSymbol;
		}
		[CRepr]
		public struct _IMAGEHLP_JIT_SYMBOL_MAP
		{
			public uint32 SizeOfStruct;
			public uint64 Address;
			public uint64 BaseOfImage;
		}
		[CRepr]
		public struct OMAP
		{
			public uint32 rva;
			public uint32 rvaTo;
		}
		[CRepr]
		public struct SRCCODEINFO
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint64 ModBase;
			public CHAR[261] Obj;
			public CHAR[261] FileName;
			public uint32 LineNumber;
			public uint64 Address;
		}
		[CRepr]
		public struct SRCCODEINFOW
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint64 ModBase;
			public char16[261] Obj;
			public char16[261] FileName;
			public uint32 LineNumber;
			public uint64 Address;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOL_SRC
		{
			public uint32 sizeofstruct;
			public uint32 type;
			public CHAR[260] file;
		}
		[CRepr]
		public struct MODULE_TYPE_INFO
		{
			public uint16 dataLength;
			public uint16 leaf;
			public uint8[] data;
		}
		[CRepr]
		public struct SYMBOL_INFO
		{
			public uint32 SizeOfStruct;
			public uint32 TypeIndex;
			public uint64[2] Reserved;
			public uint32 Index;
			public uint32 Size;
			public uint64 ModBase;
			public SYMBOL_INFO_FLAGS Flags;
			public uint64 Value;
			public uint64 Address;
			public uint32 Register;
			public uint32 Scope;
			public uint32 Tag;
			public uint32 NameLen;
			public uint32 MaxNameLen;
			public CHAR[] Name;
		}
		[CRepr]
		public struct SYMBOL_INFO_PACKAGE
		{
			public SYMBOL_INFO si;
			public CHAR[2001] name;
		}
		[CRepr]
		public struct SYMBOL_INFOW
		{
			public uint32 SizeOfStruct;
			public uint32 TypeIndex;
			public uint64[2] Reserved;
			public uint32 Index;
			public uint32 Size;
			public uint64 ModBase;
			public SYMBOL_INFO_FLAGS Flags;
			public uint64 Value;
			public uint64 Address;
			public uint32 Register;
			public uint32 Scope;
			public uint32 Tag;
			public uint32 NameLen;
			public uint32 MaxNameLen;
			public char16[] Name;
		}
		[CRepr]
		public struct SYMBOL_INFO_PACKAGEW
		{
			public SYMBOL_INFOW si;
			public char16[2001] name;
		}
		[CRepr]
		public struct IMAGEHLP_STACK_FRAME
		{
			public uint64 InstructionOffset;
			public uint64 ReturnOffset;
			public uint64 FrameOffset;
			public uint64 StackOffset;
			public uint64 BackingStoreOffset;
			public uint64 FuncTableEntry;
			public uint64[4] Params;
			public uint64[5] Reserved;
			public BOOL Virtual;
			public uint32 Reserved2;
		}
		[CRepr]
		public struct TI_FINDCHILDREN_PARAMS
		{
			public uint32 Count;
			public uint32 Start;
			public uint32[] ChildId;
		}
		[CRepr]
		public struct IMAGEHLP_GET_TYPE_INFO_PARAMS
		{
			public uint32 SizeOfStruct;
			public IMAGEHLP_GET_TYPE_INFO_FLAGS Flags;
			public uint32 NumIds;
			public uint32* TypeIds;
			public uint64 TagFilter;
			public uint32 NumReqs;
			public IMAGEHLP_SYMBOL_TYPE_INFO* ReqKinds;
			public uint* ReqOffsets;
			public uint32* ReqSizes;
			public uint ReqStride;
			public uint BufferSize;
			public void* Buffer;
			public uint32 EntriesMatched;
			public uint32 EntriesFilled;
			public uint64 TagsFound;
			public uint64 AllReqsValid;
			public uint32 NumReqsValid;
			public uint64* ReqsValid;
		}
		[CRepr]
		public struct SYMSRV_INDEX_INFO
		{
			public uint32 sizeofstruct;
			public CHAR[261] file;
			public BOOL stripped;
			public uint32 timestamp;
			public uint32 size;
			public CHAR[261] dbgfile;
			public CHAR[261] pdbfile;
			public Guid guid;
			public uint32 sig;
			public uint32 age;
		}
		[CRepr]
		public struct SYMSRV_INDEX_INFOW
		{
			public uint32 sizeofstruct;
			public char16[261] file;
			public BOOL stripped;
			public uint32 timestamp;
			public uint32 size;
			public char16[261] dbgfile;
			public char16[261] pdbfile;
			public Guid guid;
			public uint32 sig;
			public uint32 age;
		}
		[CRepr]
		public struct SYMSRV_EXTENDED_OUTPUT_DATA
		{
			public uint32 sizeOfStruct;
			public uint32 version;
			public char16[261] filePtrMsg;
		}
		[CRepr]
		public struct DBGHELP_DATA_REPORT_STRUCT
		{
			public PWSTR pBinPathNonExist;
			public PWSTR pSymbolPathNonExist;
		}
		[CRepr]
		public struct TEXT_DOCUMENT_ARRAY
		{
			public uint32 dwCount;
			public IDebugDocumentText** Members;
		}
		[CRepr]
		public struct JsDebugPropertyInfo
		{
			public BSTR name;
			public BSTR type;
			public BSTR value;
			public BSTR fullName;
			public JS_PROPERTY_ATTRIBUTES attr;
		}
		[CRepr]
		public struct __MIDL___MIDL_itf_jscript9diag_0000_0007_0001
		{
			public uint64 InstructionOffset;
			public uint64 ReturnOffset;
			public uint64 FrameOffset;
			public uint64 StackOffset;
		}
		[CRepr]
		public struct PHYSICAL_MEMORY_RUN32
		{
			public uint32 BasePage;
			public uint32 PageCount;
		}
		[CRepr]
		public struct PHYSICAL_MEMORY_DESCRIPTOR32
		{
			public uint32 NumberOfRuns;
			public uint32 NumberOfPages;
			public PHYSICAL_MEMORY_RUN32[] Run;
		}
		[CRepr]
		public struct PHYSICAL_MEMORY_RUN64
		{
			public uint64 BasePage;
			public uint64 PageCount;
		}
		[CRepr]
		public struct PHYSICAL_MEMORY_DESCRIPTOR64
		{
			public uint32 NumberOfRuns;
			public uint64 NumberOfPages;
			public PHYSICAL_MEMORY_RUN64[] Run;
		}
		[CRepr, Union]
		public struct DUMP_FILE_ATTRIBUTES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 Attributes;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct DUMP_HEADER32
		{
			public uint32 Signature;
			public uint32 ValidDump;
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint32 DirectoryTableBase;
			public uint32 PfnDataBase;
			public uint32 PsLoadedModuleList;
			public uint32 PsActiveProcessHead;
			public uint32 MachineImageType;
			public uint32 NumberProcessors;
			public uint32 BugCheckCode;
			public uint32 BugCheckParameter1;
			public uint32 BugCheckParameter2;
			public uint32 BugCheckParameter3;
			public uint32 BugCheckParameter4;
			public CHAR[32] VersionUser;
			public uint8 PaeEnabled;
			public uint8 KdSecondaryVersion;
			public uint8[2] Spare3;
			public uint32 KdDebuggerDataBlock;
			public _Anonymous_e__Union Anonymous;
			public uint8[1200] ContextRecord;
			public EXCEPTION_RECORD32 Exception;
			public CHAR[128] Comment;
			public DUMP_FILE_ATTRIBUTES Attributes;
			public uint32 BootId;
			public uint8[1760] _reserved0;
			public uint32 DumpType;
			public uint32 MiniDumpFields;
			public uint32 SecondaryDataState;
			public uint32 ProductType;
			public uint32 SuiteMask;
			public uint32 WriterStatus;
			public LARGE_INTEGER RequiredDumpSpace;
			public uint8[16] _reserved2;
			public LARGE_INTEGER SystemUpTime;
			public LARGE_INTEGER SystemTime;
			public uint8[56] _reserved3;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PHYSICAL_MEMORY_DESCRIPTOR32 PhysicalMemoryBlock;
				public uint8[700] PhysicalMemoryBlockBuffer;
			}
		}
		[CRepr]
		public struct DUMP_HEADER64
		{
			public uint32 Signature;
			public uint32 ValidDump;
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint64 DirectoryTableBase;
			public uint64 PfnDataBase;
			public uint64 PsLoadedModuleList;
			public uint64 PsActiveProcessHead;
			public uint32 MachineImageType;
			public uint32 NumberProcessors;
			public uint32 BugCheckCode;
			public uint64 BugCheckParameter1;
			public uint64 BugCheckParameter2;
			public uint64 BugCheckParameter3;
			public uint64 BugCheckParameter4;
			public CHAR[32] VersionUser;
			public uint64 KdDebuggerDataBlock;
			public _Anonymous_e__Union Anonymous;
			public uint8[3000] ContextRecord;
			public EXCEPTION_RECORD64 Exception;
			public uint32 DumpType;
			public LARGE_INTEGER RequiredDumpSpace;
			public LARGE_INTEGER SystemTime;
			public CHAR[128] Comment;
			public LARGE_INTEGER SystemUpTime;
			public uint32 MiniDumpFields;
			public uint32 SecondaryDataState;
			public uint32 ProductType;
			public uint32 SuiteMask;
			public uint32 WriterStatus;
			public uint8 Unused1;
			public uint8 KdSecondaryVersion;
			public uint8[2] Unused;
			public DUMP_FILE_ATTRIBUTES Attributes;
			public uint32 BootId;
			public uint8[4008] _reserved0;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PHYSICAL_MEMORY_DESCRIPTOR64 PhysicalMemoryBlock;
				public uint8[700] PhysicalMemoryBlockBuffer;
			}
		}
		[CRepr]
		public struct WHEA_ERROR_SOURCE_CONFIGURATION_DD
		{
			public WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER Initialize;
			public WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER Uninitialize;
			public WHEA_ERROR_SOURCE_CORRECT_DEVICE_DRIVER Correct;
		}
		[CRepr]
		public struct WHEA_ERROR_SOURCE_CONFIGURATION_DEVICE_DRIVER_V1
		{
			public uint32 Version;
			public Guid SourceGuid;
			public uint16 LogTag;
			public uint8[6] Reserved;
			public WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER Initialize;
			public WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER Uninitialize;
		}
		[CRepr]
		public struct WHEA_ERROR_SOURCE_CONFIGURATION_DEVICE_DRIVER
		{
			public uint32 Version;
			public Guid SourceGuid;
			public uint16 LogTag;
			public uint8[6] Reserved;
			public WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER Initialize;
			public WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER Uninitialize;
			public uint32 MaxSectionDataLength;
			public uint32 MaxSectionsPerReport;
			public Guid CreatorId;
			public Guid PartitionId;
		}
		[CRepr]
		public struct WHEA_DRIVER_BUFFER_SET
		{
			public uint32 Version;
			public uint8* Data;
			public uint32 DataSize;
			public Guid* SectionTypeGuid;
			public uint8* SectionFriendlyName;
			public uint8* Flags;
		}
		[CRepr, Union]
		public struct WHEA_NOTIFICATION_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint16 AsUSHORT;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr, Union]
		public struct XPF_MC_BANK_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint8 AsUCHAR;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint8 _bitfield;
			}
		}
		[CRepr, Union]
		public struct XPF_MCE_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsULONG;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr, Union]
		public struct AER_ROOTPORT_DESCRIPTOR_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint16 AsUSHORT;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr, Union]
		public struct AER_ENDPOINT_DESCRIPTOR_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint16 AsUSHORT;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr, Union]
		public struct AER_BRIDGE_DESCRIPTOR_FLAGS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint16 AsUSHORT;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr]
		public struct WHEA_NOTIFICATION_DESCRIPTOR
		{
			public uint8 Type;
			public uint8 Length;
			public WHEA_NOTIFICATION_FLAGS Flags;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public _Polled_e__Struct Polled;
				public _Interrupt_e__Struct Interrupt;
				public _LocalInterrupt_e__Struct LocalInterrupt;
				public _Sci_e__Struct Sci;
				public _Nmi_e__Struct Nmi;
				public _Sea_e__Struct Sea;
				public _Sei_e__Struct Sei;
				public _Gsiv_e__Struct Gsiv;
				
				[CRepr]
				public struct _Sei_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _Nmi_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _LocalInterrupt_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _Polled_e__Struct
				{
					public uint32 PollInterval;
				}
				[CRepr]
				public struct _Sea_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _Interrupt_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _Sci_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
				[CRepr]
				public struct _Gsiv_e__Struct
				{
					public uint32 PollInterval;
					public uint32 Vector;
					public uint32 SwitchToPollingThreshold;
					public uint32 SwitchToPollingWindow;
					public uint32 ErrorThreshold;
					public uint32 ErrorThresholdWindow;
				}
			}
		}
		[CRepr]
		public struct WHEA_XPF_MC_BANK_DESCRIPTOR
		{
			public uint8 BankNumber;
			public BOOLEAN ClearOnInitialization;
			public uint8 StatusDataFormat;
			public XPF_MC_BANK_FLAGS Flags;
			public uint32 ControlMsr;
			public uint32 StatusMsr;
			public uint32 AddressMsr;
			public uint32 MiscMsr;
			public uint64 ControlData;
		}
		[CRepr]
		public struct WHEA_XPF_MCE_DESCRIPTOR
		{
			public uint16 Type;
			public uint8 Enabled;
			public uint8 NumberOfBanks;
			public XPF_MCE_FLAGS Flags;
			public uint64 MCG_Capability;
			public uint64 MCG_GlobalControl;
			public WHEA_XPF_MC_BANK_DESCRIPTOR[32] Banks;
		}
		[CRepr]
		public struct WHEA_XPF_CMC_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
			public uint8 NumberOfBanks;
			public uint32 Reserved;
			public WHEA_NOTIFICATION_DESCRIPTOR Notify;
			public WHEA_XPF_MC_BANK_DESCRIPTOR[32] Banks;
		}
		[CRepr]
		public struct WHEA_PCI_SLOT_NUMBER
		{
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public _bits_e__Struct bits;
				public uint32 AsULONG;
				
				[CRepr]
				public struct _bits_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct WHEA_XPF_NMI_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
		}
		[CRepr]
		public struct WHEA_AER_ROOTPORT_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
			public uint8 Reserved;
			public uint32 BusNumber;
			public WHEA_PCI_SLOT_NUMBER Slot;
			public uint16 DeviceControl;
			public AER_ROOTPORT_DESCRIPTOR_FLAGS Flags;
			public uint32 UncorrectableErrorMask;
			public uint32 UncorrectableErrorSeverity;
			public uint32 CorrectableErrorMask;
			public uint32 AdvancedCapsAndControl;
			public uint32 RootErrorCommand;
		}
		[CRepr]
		public struct WHEA_AER_ENDPOINT_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
			public uint8 Reserved;
			public uint32 BusNumber;
			public WHEA_PCI_SLOT_NUMBER Slot;
			public uint16 DeviceControl;
			public AER_ENDPOINT_DESCRIPTOR_FLAGS Flags;
			public uint32 UncorrectableErrorMask;
			public uint32 UncorrectableErrorSeverity;
			public uint32 CorrectableErrorMask;
			public uint32 AdvancedCapsAndControl;
		}
		[CRepr]
		public struct WHEA_AER_BRIDGE_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
			public uint8 Reserved;
			public uint32 BusNumber;
			public WHEA_PCI_SLOT_NUMBER Slot;
			public uint16 DeviceControl;
			public AER_BRIDGE_DESCRIPTOR_FLAGS Flags;
			public uint32 UncorrectableErrorMask;
			public uint32 UncorrectableErrorSeverity;
			public uint32 CorrectableErrorMask;
			public uint32 AdvancedCapsAndControl;
			public uint32 SecondaryUncorrectableErrorMask;
			public uint32 SecondaryUncorrectableErrorSev;
			public uint32 SecondaryCapsAndControl;
		}
		[CRepr]
		public struct WHEA_GENERIC_ERROR_DESCRIPTOR
		{
			public uint16 Type;
			public uint8 Reserved;
			public uint8 Enabled;
			public uint32 ErrStatusBlockLength;
			public uint32 RelatedErrorSourceId;
			public uint8 ErrStatusAddressSpaceID;
			public uint8 ErrStatusAddressBitWidth;
			public uint8 ErrStatusAddressBitOffset;
			public uint8 ErrStatusAddressAccessSize;
			public LARGE_INTEGER ErrStatusAddress;
			public WHEA_NOTIFICATION_DESCRIPTOR Notify;
		}
		[CRepr]
		public struct WHEA_GENERIC_ERROR_DESCRIPTOR_V2
		{
			public uint16 Type;
			public uint8 Reserved;
			public uint8 Enabled;
			public uint32 ErrStatusBlockLength;
			public uint32 RelatedErrorSourceId;
			public uint8 ErrStatusAddressSpaceID;
			public uint8 ErrStatusAddressBitWidth;
			public uint8 ErrStatusAddressBitOffset;
			public uint8 ErrStatusAddressAccessSize;
			public LARGE_INTEGER ErrStatusAddress;
			public WHEA_NOTIFICATION_DESCRIPTOR Notify;
			public uint8 ReadAckAddressSpaceID;
			public uint8 ReadAckAddressBitWidth;
			public uint8 ReadAckAddressBitOffset;
			public uint8 ReadAckAddressAccessSize;
			public LARGE_INTEGER ReadAckAddress;
			public uint64 ReadAckPreserveMask;
			public uint64 ReadAckWriteMask;
		}
		[CRepr]
		public struct WHEA_DEVICE_DRIVER_DESCRIPTOR
		{
			public uint16 Type;
			public BOOLEAN Enabled;
			public uint8 Reserved;
			public Guid SourceGuid;
			public uint16 LogTag;
			public uint16 Reserved2;
			public uint32 PacketLength;
			public uint32 PacketCount;
			public uint8* PacketBuffer;
			public WHEA_ERROR_SOURCE_CONFIGURATION_DD Config;
			public Guid CreatorId;
			public Guid PartitionId;
			public uint32 MaxSectionDataLength;
			public uint32 MaxSectionsPerRecord;
			public uint8* PacketStateBuffer;
			public int32 OpenHandles;
		}
		[CRepr]
		public struct WHEA_IPF_MCA_DESCRIPTOR
		{
			public uint16 Type;
			public uint8 Enabled;
			public uint8 Reserved;
		}
		[CRepr]
		public struct WHEA_IPF_CMC_DESCRIPTOR
		{
			public uint16 Type;
			public uint8 Enabled;
			public uint8 Reserved;
		}
		[CRepr]
		public struct WHEA_IPF_CPE_DESCRIPTOR
		{
			public uint16 Type;
			public uint8 Enabled;
			public uint8 Reserved;
		}
		[CRepr]
		public struct WHEA_ERROR_SOURCE_DESCRIPTOR
		{
			public uint32 Length;
			public uint32 Version;
			public WHEA_ERROR_SOURCE_TYPE Type;
			public WHEA_ERROR_SOURCE_STATE State;
			public uint32 MaxRawDataLength;
			public uint32 NumRecordsToPreallocate;
			public uint32 MaxSectionsPerRecord;
			public uint32 ErrorSourceId;
			public uint32 PlatformErrorSourceId;
			public uint32 Flags;
			public _Info_e__Union Info;
			
			[CRepr, Union]
			public struct _Info_e__Union
			{
				public WHEA_XPF_MCE_DESCRIPTOR XpfMceDescriptor;
				public WHEA_XPF_CMC_DESCRIPTOR XpfCmcDescriptor;
				public WHEA_XPF_NMI_DESCRIPTOR XpfNmiDescriptor;
				public WHEA_IPF_MCA_DESCRIPTOR IpfMcaDescriptor;
				public WHEA_IPF_CMC_DESCRIPTOR IpfCmcDescriptor;
				public WHEA_IPF_CPE_DESCRIPTOR IpfCpeDescriptor;
				public WHEA_AER_ROOTPORT_DESCRIPTOR AerRootportDescriptor;
				public WHEA_AER_ENDPOINT_DESCRIPTOR AerEndpointDescriptor;
				public WHEA_AER_BRIDGE_DESCRIPTOR AerBridgeDescriptor;
				public WHEA_GENERIC_ERROR_DESCRIPTOR GenErrDescriptor;
				public WHEA_GENERIC_ERROR_DESCRIPTOR_V2 GenErrDescriptorV2;
				public WHEA_DEVICE_DRIVER_DESCRIPTOR DeviceDriverDescriptor;
			}
		}
		[CRepr]
		public struct IPMI_OS_SEL_RECORD
		{
			public uint32 Signature;
			public uint32 Version;
			public uint32 Length;
			public IPMI_OS_SEL_RECORD_TYPE RecordType;
			public uint32 DataLength;
			public uint8[] Data;
		}
		[CRepr]
		public struct IMAGE_DEBUG_INFORMATION
		{
			public LIST_ENTRY List;
			public uint32 ReservedSize;
			public void* ReservedMappedBase;
			public uint16 ReservedMachine;
			public uint16 ReservedCharacteristics;
			public uint32 ReservedCheckSum;
			public uint32 ImageBase;
			public uint32 SizeOfImage;
			public uint32 ReservedNumberOfSections;
			public IMAGE_SECTION_HEADER* ReservedSections;
			public uint32 ReservedExportedNamesSize;
			public PSTR ReservedExportedNames;
			public uint32 ReservedNumberOfFunctionTableEntries;
			public IMAGE_FUNCTION_ENTRY* ReservedFunctionTableEntries;
			public uint32 ReservedLowestFunctionStartingAddress;
			public uint32 ReservedHighestFunctionEndingAddress;
			public uint32 ReservedNumberOfFpoTableEntries;
			public FPO_DATA* ReservedFpoTableEntries;
			public uint32 SizeOfCoffSymbols;
			public IMAGE_COFF_SYMBOLS_HEADER* CoffSymbols;
			public uint32 ReservedSizeOfCodeViewSymbols;
			public void* ReservedCodeViewSymbols;
			public PSTR ImageFilePath;
			public PSTR ImageFileName;
			public PSTR ReservedDebugFilePath;
			public uint32 ReservedTimeDateStamp;
			public BOOL ReservedRomImage;
			public IMAGE_DEBUG_DIRECTORY* ReservedDebugDirectory;
			public uint32 ReservedNumberOfDebugDirectories;
			public uint32 ReservedOriginalFunctionTableBaseAddress;
			public uint32[2] Reserved;
		}
		[CRepr]
		public struct ADDRESS
		{
			public uint32 Offset;
			public uint16 Segment;
			public ADDRESS_MODE Mode;
		}
		[CRepr]
		public struct KDHELP
		{
			public uint32 Thread;
			public uint32 ThCallbackStack;
			public uint32 NextCallback;
			public uint32 FramePointer;
			public uint32 KiCallUserMode;
			public uint32 KeUserCallbackDispatcher;
			public uint32 SystemRangeStart;
			public uint32 ThCallbackBStore;
			public uint32 KiUserExceptionDispatcher;
			public uint32 StackBase;
			public uint32 StackLimit;
			public uint32[5] Reserved;
		}
		[CRepr]
		public struct STACKFRAME
		{
			public ADDRESS AddrPC;
			public ADDRESS AddrReturn;
			public ADDRESS AddrFrame;
			public ADDRESS AddrStack;
			public void* FuncTableEntry;
			public uint32[4] Params;
			public BOOL Far;
			public BOOL Virtual;
			public uint32[3] Reserved;
			public KDHELP KdHelp;
			public ADDRESS AddrBStore;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOL
		{
			public uint32 SizeOfStruct;
			public uint32 Address;
			public uint32 Size;
			public uint32 Flags;
			public uint32 MaxNameLength;
			public CHAR[] Name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOL_PACKAGE
		{
			public IMAGEHLP_SYMBOL sym;
			public CHAR[2001] name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOLW
		{
			public uint32 SizeOfStruct;
			public uint32 Address;
			public uint32 Size;
			public uint32 Flags;
			public uint32 MaxNameLength;
			public char16[] Name;
		}
		[CRepr]
		public struct IMAGEHLP_SYMBOLW_PACKAGE
		{
			public IMAGEHLP_SYMBOLW sym;
			public char16[2001] name;
		}
		[CRepr]
		public struct IMAGEHLP_MODULE
		{
			public uint32 SizeOfStruct;
			public uint32 BaseOfImage;
			public uint32 ImageSize;
			public uint32 TimeDateStamp;
			public uint32 CheckSum;
			public uint32 NumSyms;
			public SYM_TYPE SymType;
			public CHAR[32] ModuleName;
			public CHAR[256] ImageName;
			public CHAR[256] LoadedImageName;
		}
		[CRepr]
		public struct IMAGEHLP_MODULEW
		{
			public uint32 SizeOfStruct;
			public uint32 BaseOfImage;
			public uint32 ImageSize;
			public uint32 TimeDateStamp;
			public uint32 CheckSum;
			public uint32 NumSyms;
			public SYM_TYPE SymType;
			public char16[32] ModuleName;
			public char16[256] ImageName;
			public char16[256] LoadedImageName;
		}
		[CRepr]
		public struct IMAGEHLP_LINE
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint32 LineNumber;
			public PSTR FileName;
			public uint32 Address;
		}
		[CRepr]
		public struct IMAGEHLP_LINEW
		{
			public uint32 SizeOfStruct;
			public void* Key;
			public uint32 LineNumber;
			public PSTR FileName;
			public uint64 Address;
		}
		[CRepr]
		public struct IMAGEHLP_DEFERRED_SYMBOL_LOAD
		{
			public uint32 SizeOfStruct;
			public uint32 BaseOfImage;
			public uint32 CheckSum;
			public uint32 TimeDateStamp;
			public CHAR[260] FileName;
			public BOOLEAN Reparse;
			public HANDLE hFile;
		}
		[CRepr]
		public struct IMAGEHLP_DUPLICATE_SYMBOL
		{
			public uint32 SizeOfStruct;
			public uint32 NumberOfDups;
			public IMAGEHLP_SYMBOL* Symbol;
			public uint32 SelectedSymbol;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_ProcessDebugManager = .(0x78a51822, 0x51f4, 0x11d0, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		public const Guid CLSID_DebugHelper = .(0x0bfcc060, 0x8c1d, 0x11d0, 0xac, 0xcd, 0x00, 0xaa, 0x00, 0x60, 0x27, 0x5c);
		public const Guid CLSID_CDebugDocumentHelper = .(0x83b8bca6, 0x687c, 0x11d0, 0xa4, 0x05, 0x00, 0xaa, 0x00, 0x60, 0x27, 0x5c);
		public const Guid CLSID_MachineDebugManager_RETAIL = .(0x0c0a3666, 0x30c9, 0x11d0, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		public const Guid CLSID_MachineDebugManager_DEBUG = .(0x49769cec, 0x3a55, 0x4bb0, 0xb6, 0x97, 0x88, 0xfe, 0xde, 0x77, 0xe8, 0xea);
		public const Guid CLSID_DefaultDebugSessionProvider = .(0x834128a2, 0x51f4, 0x11d0, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDebugAdvanced : IUnknown
		{
			public const new Guid IID = .(0xf2df5f53, 0x071f, 0x47bd, 0x9d, 0xe6, 0x57, 0x34, 0xc3, 0xfe, 0xd6, 0x89);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAdvanced *self, void* Context, uint32 ContextSize) GetThreadContext;
				public function HRESULT(IDebugAdvanced *self, void* Context, uint32 ContextSize) SetThreadContext;
			}
		}
		[CRepr]
		public struct IDebugAdvanced2 : IUnknown
		{
			public const new Guid IID = .(0x716d14c9, 0x119b, 0x4ba5, 0xaf, 0x1f, 0x08, 0x90, 0xe6, 0x72, 0x41, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAdvanced2 *self, void* Context, uint32 ContextSize) GetThreadContext;
				public function HRESULT(IDebugAdvanced2 *self, void* Context, uint32 ContextSize) SetThreadContext;
				public function HRESULT(IDebugAdvanced2 *self, uint32 Request, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, uint32* OutSize) Request;
				public function HRESULT(IDebugAdvanced2 *self, uint32 Which, PSTR SourceFile, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSourceFileInformation;
				public function HRESULT(IDebugAdvanced2 *self, uint32 StartElement, uint64 ModAddr, PSTR File, uint32 Flags, void* FileToken, uint32 FileTokenSize, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileAndToken;
				public function HRESULT(IDebugAdvanced2 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, uint8* StringBuffer, uint32 StringBufferSize, uint32* StringSize) GetSymbolInformation;
				public function HRESULT(IDebugAdvanced2 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSystemObjectInformation;
			}
		}
		[CRepr]
		public struct IDebugAdvanced3 : IUnknown
		{
			public const new Guid IID = .(0xcba4abb4, 0x84c4, 0x444d, 0x87, 0xca, 0xa0, 0x4e, 0x13, 0x28, 0x67, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAdvanced3 *self, void* Context, uint32 ContextSize) GetThreadContext;
				public function HRESULT(IDebugAdvanced3 *self, void* Context, uint32 ContextSize) SetThreadContext;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Request, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, uint32* OutSize) Request;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Which, PSTR SourceFile, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSourceFileInformation;
				public function HRESULT(IDebugAdvanced3 *self, uint32 StartElement, uint64 ModAddr, PSTR File, uint32 Flags, void* FileToken, uint32 FileTokenSize, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileAndToken;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, uint8* StringBuffer, uint32 StringBufferSize, uint32* StringSize) GetSymbolInformation;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSystemObjectInformation;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Which, PWSTR SourceFile, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSourceFileInformationWide;
				public function HRESULT(IDebugAdvanced3 *self, uint32 StartElement, uint64 ModAddr, PWSTR File, uint32 Flags, void* FileToken, uint32 FileTokenSize, uint32* FoundElement, char16* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileAndTokenWide;
				public function HRESULT(IDebugAdvanced3 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, char16* StringBuffer, uint32 StringBufferSize, uint32* StringSize) GetSymbolInformationWide;
			}
		}
		[CRepr]
		public struct IDebugAdvanced4 : IUnknown
		{
			public const new Guid IID = .(0xd1069067, 0x2a65, 0x4bf0, 0xae, 0x97, 0x76, 0x18, 0x4b, 0x67, 0x85, 0x6b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAdvanced4 *self, void* Context, uint32 ContextSize) GetThreadContext;
				public function HRESULT(IDebugAdvanced4 *self, void* Context, uint32 ContextSize) SetThreadContext;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Request, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, uint32* OutSize) Request;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, PSTR SourceFile, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSourceFileInformation;
				public function HRESULT(IDebugAdvanced4 *self, uint32 StartElement, uint64 ModAddr, PSTR File, uint32 Flags, void* FileToken, uint32 FileTokenSize, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileAndToken;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, uint8* StringBuffer, uint32 StringBufferSize, uint32* StringSize) GetSymbolInformation;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSystemObjectInformation;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, PWSTR SourceFile, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetSourceFileInformationWide;
				public function HRESULT(IDebugAdvanced4 *self, uint32 StartElement, uint64 ModAddr, PWSTR File, uint32 Flags, void* FileToken, uint32 FileTokenSize, uint32* FoundElement, char16* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileAndTokenWide;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, char16* StringBuffer, uint32 StringBufferSize, uint32* StringSize) GetSymbolInformationWide;
				public function HRESULT(IDebugAdvanced4 *self, uint32 Which, uint64 Arg64, uint32 Arg32, void* Buffer, uint32 BufferSize, uint32* InfoSize, char16* StringBuffer, uint32 StringBufferSize, uint32* StringSize, SYMBOL_INFO_EX* pInfoEx) GetSymbolInformationWideEx;
			}
		}
		[CRepr]
		public struct IDebugBreakpoint : IUnknown
		{
			public const new Guid IID = .(0x5bd9d474, 0x5975, 0x423a, 0xb8, 0x8b, 0x65, 0xa8, 0xe7, 0x11, 0x0e, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugBreakpoint *self, uint32* Id) GetId;
				public function HRESULT(IDebugBreakpoint *self, uint32* BreakType, uint32* ProcType) GetType;
				public function HRESULT(IDebugBreakpoint *self, IDebugClient** Adder) GetAdder;
				public function HRESULT(IDebugBreakpoint *self, uint32* Flags) GetFlags;
				public function HRESULT(IDebugBreakpoint *self, uint32 Flags) AddFlags;
				public function HRESULT(IDebugBreakpoint *self, uint32 Flags) RemoveFlags;
				public function HRESULT(IDebugBreakpoint *self, uint32 Flags) SetFlags;
				public function HRESULT(IDebugBreakpoint *self, uint64* Offset) GetOffset;
				public function HRESULT(IDebugBreakpoint *self, uint64 Offset) SetOffset;
				public function HRESULT(IDebugBreakpoint *self, uint32* Size, uint32* AccessType) GetDataParameters;
				public function HRESULT(IDebugBreakpoint *self, uint32 Size, uint32 AccessType) SetDataParameters;
				public function HRESULT(IDebugBreakpoint *self, uint32* Count) GetPassCount;
				public function HRESULT(IDebugBreakpoint *self, uint32 Count) SetPassCount;
				public function HRESULT(IDebugBreakpoint *self, uint32* Count) GetCurrentPassCount;
				public function HRESULT(IDebugBreakpoint *self, uint32* Id) GetMatchThreadId;
				public function HRESULT(IDebugBreakpoint *self, uint32 Thread) SetMatchThreadId;
				public function HRESULT(IDebugBreakpoint *self, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetCommand;
				public function HRESULT(IDebugBreakpoint *self, PSTR Command) SetCommand;
				public function HRESULT(IDebugBreakpoint *self, uint8* Buffer, uint32 BufferSize, uint32* ExpressionSize) GetOffsetExpression;
				public function HRESULT(IDebugBreakpoint *self, PSTR Expression) SetOffsetExpression;
				public function HRESULT(IDebugBreakpoint *self, DEBUG_BREAKPOINT_PARAMETERS* Params) GetParameters;
			}
		}
		[CRepr]
		public struct IDebugBreakpoint2 : IUnknown
		{
			public const new Guid IID = .(0x1b278d20, 0x79f2, 0x426e, 0xa3, 0xf9, 0xc1, 0xdd, 0xf3, 0x75, 0xd4, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Id) GetId;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* BreakType, uint32* ProcType) GetType;
				public function HRESULT(IDebugBreakpoint2 *self, IDebugClient** Adder) GetAdder;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Flags) GetFlags;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Flags) AddFlags;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Flags) RemoveFlags;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Flags) SetFlags;
				public function HRESULT(IDebugBreakpoint2 *self, uint64* Offset) GetOffset;
				public function HRESULT(IDebugBreakpoint2 *self, uint64 Offset) SetOffset;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Size, uint32* AccessType) GetDataParameters;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Size, uint32 AccessType) SetDataParameters;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Count) GetPassCount;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Count) SetPassCount;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Count) GetCurrentPassCount;
				public function HRESULT(IDebugBreakpoint2 *self, uint32* Id) GetMatchThreadId;
				public function HRESULT(IDebugBreakpoint2 *self, uint32 Thread) SetMatchThreadId;
				public function HRESULT(IDebugBreakpoint2 *self, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetCommand;
				public function HRESULT(IDebugBreakpoint2 *self, PSTR Command) SetCommand;
				public function HRESULT(IDebugBreakpoint2 *self, uint8* Buffer, uint32 BufferSize, uint32* ExpressionSize) GetOffsetExpression;
				public function HRESULT(IDebugBreakpoint2 *self, PSTR Expression) SetOffsetExpression;
				public function HRESULT(IDebugBreakpoint2 *self, DEBUG_BREAKPOINT_PARAMETERS* Params) GetParameters;
				public function HRESULT(IDebugBreakpoint2 *self, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetCommandWide;
				public function HRESULT(IDebugBreakpoint2 *self, PWSTR Command) SetCommandWide;
				public function HRESULT(IDebugBreakpoint2 *self, char16* Buffer, uint32 BufferSize, uint32* ExpressionSize) GetOffsetExpressionWide;
				public function HRESULT(IDebugBreakpoint2 *self, PWSTR Expression) SetOffsetExpressionWide;
			}
		}
		[CRepr]
		public struct IDebugBreakpoint3 : IUnknown
		{
			public const new Guid IID = .(0x38f5c249, 0xb448, 0x43bb, 0x98, 0x35, 0x57, 0x9d, 0x4e, 0xc0, 0x22, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Id) GetId;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* BreakType, uint32* ProcType) GetType;
				public function HRESULT(IDebugBreakpoint3 *self, IDebugClient** Adder) GetAdder;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Flags) GetFlags;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Flags) AddFlags;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Flags) RemoveFlags;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Flags) SetFlags;
				public function HRESULT(IDebugBreakpoint3 *self, uint64* Offset) GetOffset;
				public function HRESULT(IDebugBreakpoint3 *self, uint64 Offset) SetOffset;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Size, uint32* AccessType) GetDataParameters;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Size, uint32 AccessType) SetDataParameters;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Count) GetPassCount;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Count) SetPassCount;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Count) GetCurrentPassCount;
				public function HRESULT(IDebugBreakpoint3 *self, uint32* Id) GetMatchThreadId;
				public function HRESULT(IDebugBreakpoint3 *self, uint32 Thread) SetMatchThreadId;
				public function HRESULT(IDebugBreakpoint3 *self, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetCommand;
				public function HRESULT(IDebugBreakpoint3 *self, PSTR Command) SetCommand;
				public function HRESULT(IDebugBreakpoint3 *self, uint8* Buffer, uint32 BufferSize, uint32* ExpressionSize) GetOffsetExpression;
				public function HRESULT(IDebugBreakpoint3 *self, PSTR Expression) SetOffsetExpression;
				public function HRESULT(IDebugBreakpoint3 *self, DEBUG_BREAKPOINT_PARAMETERS* Params) GetParameters;
				public function HRESULT(IDebugBreakpoint3 *self, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetCommandWide;
				public function HRESULT(IDebugBreakpoint3 *self, PWSTR Command) SetCommandWide;
				public function HRESULT(IDebugBreakpoint3 *self, char16* Buffer, uint32 BufferSize, uint32* ExpressionSize) GetOffsetExpressionWide;
				public function HRESULT(IDebugBreakpoint3 *self, PWSTR Expression) SetOffsetExpressionWide;
				public function HRESULT(IDebugBreakpoint3 *self, Guid* Guid) GetGuid;
			}
		}
		[CRepr]
		public struct IDebugClient : IUnknown
		{
			public const new Guid IID = .(0x27fe5639, 0x8407, 0x4f47, 0x83, 0x64, 0xee, 0x11, 0x8f, 0xb0, 0x8a, 0xc8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient *self) TerminateProcesses;
				public function HRESULT(IDebugClient *self) DetachProcesses;
				public function HRESULT(IDebugClient *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient *self) FlushCallbacks;
			}
		}
		[CRepr]
		public struct IDebugClient2 : IUnknown
		{
			public const new Guid IID = .(0xedbed635, 0x372e, 0x4dab, 0xbb, 0xfe, 0xed, 0x0d, 0x2f, 0x63, 0xbe, 0x81);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient2 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient2 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient2 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient2 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient2 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient2 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient2 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient2 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient2 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient2 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient2 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient2 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient2 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient2 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient2 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient2 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient2 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient2 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient2 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient2 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient2 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient2 *self) TerminateProcesses;
				public function HRESULT(IDebugClient2 *self) DetachProcesses;
				public function HRESULT(IDebugClient2 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient2 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient2 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient2 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient2 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient2 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient2 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient2 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient2 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient2 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient2 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient2 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient2 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient2 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient2 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient2 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient2 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient2 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient2 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient2 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient2 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient2 *self) FlushCallbacks;
				public function HRESULT(IDebugClient2 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient2 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient2 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient2 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient2 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient2 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient2 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient2 *self) AbandonCurrentProcess;
			}
		}
		[CRepr]
		public struct IDebugClient3 : IUnknown
		{
			public const new Guid IID = .(0xdd492d7f, 0x71b8, 0x4ad6, 0xa8, 0xdc, 0x1c, 0x88, 0x74, 0x79, 0xff, 0x91);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient3 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient3 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient3 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient3 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient3 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient3 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient3 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient3 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient3 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient3 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient3 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient3 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient3 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient3 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient3 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient3 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient3 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient3 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient3 *self) TerminateProcesses;
				public function HRESULT(IDebugClient3 *self) DetachProcesses;
				public function HRESULT(IDebugClient3 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient3 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient3 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient3 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient3 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient3 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient3 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient3 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient3 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient3 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient3 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient3 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient3 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient3 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient3 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient3 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient3 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient3 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient3 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient3 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient3 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient3 *self) FlushCallbacks;
				public function HRESULT(IDebugClient3 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient3 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient3 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient3 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient3 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient3 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient3 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient3 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient3 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient3 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
			}
		}
		[CRepr]
		public struct IDebugClient4 : IUnknown
		{
			public const new Guid IID = .(0xca83c3de, 0x5089, 0x4cf8, 0x93, 0xc8, 0xd8, 0x92, 0x38, 0x7f, 0x2a, 0x5e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient4 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient4 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient4 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient4 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient4 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient4 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient4 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient4 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient4 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient4 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient4 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient4 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient4 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient4 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient4 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient4 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient4 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient4 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient4 *self) TerminateProcesses;
				public function HRESULT(IDebugClient4 *self) DetachProcesses;
				public function HRESULT(IDebugClient4 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient4 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient4 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient4 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient4 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient4 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient4 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient4 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient4 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient4 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient4 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient4 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient4 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient4 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient4 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient4 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient4 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient4 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient4 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient4 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient4 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient4 *self) FlushCallbacks;
				public function HRESULT(IDebugClient4 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient4 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient4 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient4 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient4 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient4 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient4 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient4 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient4 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient4 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
				public function HRESULT(IDebugClient4 *self, PWSTR FileName, uint64 FileHandle) OpenDumpFileWide;
				public function HRESULT(IDebugClient4 *self, PWSTR FileName, uint64 FileHandle, uint32 Qualifier, uint32 FormatFlags, PWSTR Comment) WriteDumpFileWide;
				public function HRESULT(IDebugClient4 *self, PWSTR FileName, uint64 FileHandle, uint32 Type) AddDumpInformationFileWide;
				public function HRESULT(IDebugClient4 *self, uint32* Number) GetNumberDumpFiles;
				public function HRESULT(IDebugClient4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFile;
				public function HRESULT(IDebugClient4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFileWide;
			}
		}
		[CRepr]
		public struct IDebugClient5 : IUnknown
		{
			public const new Guid IID = .(0xe3acb9d7, 0x7ec2, 0x4f0c, 0xa0, 0xda, 0xe8, 0x1e, 0x0c, 0xbb, 0xe6, 0x28);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient5 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient5 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient5 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient5 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient5 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient5 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient5 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient5 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient5 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient5 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient5 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient5 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient5 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient5 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient5 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient5 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient5 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient5 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient5 *self) TerminateProcesses;
				public function HRESULT(IDebugClient5 *self) DetachProcesses;
				public function HRESULT(IDebugClient5 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient5 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient5 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient5 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient5 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient5 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient5 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient5 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient5 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient5 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient5 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient5 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient5 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient5 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient5 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient5 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient5 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient5 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient5 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient5 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient5 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient5 *self) FlushCallbacks;
				public function HRESULT(IDebugClient5 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient5 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient5 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient5 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient5 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient5 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient5 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient5 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient5 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
				public function HRESULT(IDebugClient5 *self, PWSTR FileName, uint64 FileHandle) OpenDumpFileWide;
				public function HRESULT(IDebugClient5 *self, PWSTR FileName, uint64 FileHandle, uint32 Qualifier, uint32 FormatFlags, PWSTR Comment) WriteDumpFileWide;
				public function HRESULT(IDebugClient5 *self, PWSTR FileName, uint64 FileHandle, uint32 Type) AddDumpInformationFileWide;
				public function HRESULT(IDebugClient5 *self, uint32* Number) GetNumberDumpFiles;
				public function HRESULT(IDebugClient5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFile;
				public function HRESULT(IDebugClient5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFileWide;
				public function HRESULT(IDebugClient5 *self, uint32 Flags, PWSTR ConnectOptions) AttachKernelWide;
				public function HRESULT(IDebugClient5 *self, char16* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient5 *self, PWSTR Options) SetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient5 *self, uint32 Flags, PWSTR Options, void* Reserved) StartProcessServerWide;
				public function HRESULT(IDebugClient5 *self, PWSTR RemoteOptions, uint64* Server) ConnectProcessServerWide;
				public function HRESULT(IDebugClient5 *self, PWSTR Options) StartServerWide;
				public function HRESULT(IDebugClient5 *self, uint32 OutputControl, PWSTR Machine, uint32 Flags) OutputServersWide;
				public function HRESULT(IDebugClient5 *self, IDebugOutputCallbacksWide** Callbacks) GetOutputCallbacksWide;
				public function HRESULT(IDebugClient5 *self, IDebugOutputCallbacksWide* Callbacks) SetOutputCallbacksWide;
				public function HRESULT(IDebugClient5 *self, char16* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefixWide;
				public function HRESULT(IDebugClient5 *self, PWSTR Prefix) SetOutputLinePrefixWide;
				public function HRESULT(IDebugClient5 *self, char16* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentityWide;
				public function HRESULT(IDebugClient5 *self, uint32 OutputControl, uint32 Flags, PWSTR Format) OutputIdentityWide;
				public function HRESULT(IDebugClient5 *self, IDebugEventCallbacksWide** Callbacks) GetEventCallbacksWide;
				public function HRESULT(IDebugClient5 *self, IDebugEventCallbacksWide* Callbacks) SetEventCallbacksWide;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment) CreateProcess2;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment) CreateProcess2Wide;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2;
				public function HRESULT(IDebugClient5 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2Wide;
				public function HRESULT(IDebugClient5 *self, PSTR NewPrefix, uint64* Handle) PushOutputLinePrefix;
				public function HRESULT(IDebugClient5 *self, PWSTR NewPrefix, uint64* Handle) PushOutputLinePrefixWide;
				public function HRESULT(IDebugClient5 *self, uint64 Handle) PopOutputLinePrefix;
				public function HRESULT(IDebugClient5 *self, uint32* Count) GetNumberInputCallbacks;
				public function HRESULT(IDebugClient5 *self, uint32* Count) GetNumberOutputCallbacks;
				public function HRESULT(IDebugClient5 *self, uint32 EventFlags, uint32* Count) GetNumberEventCallbacks;
				public function HRESULT(IDebugClient5 *self, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockString;
				public function HRESULT(IDebugClient5 *self, PSTR String) SetQuitLockString;
				public function HRESULT(IDebugClient5 *self, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockStringWide;
				public function HRESULT(IDebugClient5 *self, PWSTR String) SetQuitLockStringWide;
			}
		}
		[CRepr]
		public struct IDebugClient6 : IUnknown
		{
			public const new Guid IID = .(0xfd28b4c5, 0xc498, 0x4686, 0xa2, 0x8e, 0x62, 0xca, 0xd2, 0x15, 0x4e, 0xb3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient6 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient6 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient6 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient6 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient6 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient6 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient6 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient6 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient6 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient6 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient6 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient6 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient6 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient6 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient6 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient6 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient6 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient6 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient6 *self) TerminateProcesses;
				public function HRESULT(IDebugClient6 *self) DetachProcesses;
				public function HRESULT(IDebugClient6 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient6 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient6 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient6 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient6 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient6 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient6 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient6 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient6 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient6 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient6 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient6 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient6 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient6 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient6 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient6 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient6 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient6 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient6 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient6 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient6 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient6 *self) FlushCallbacks;
				public function HRESULT(IDebugClient6 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient6 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient6 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient6 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient6 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient6 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient6 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient6 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient6 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
				public function HRESULT(IDebugClient6 *self, PWSTR FileName, uint64 FileHandle) OpenDumpFileWide;
				public function HRESULT(IDebugClient6 *self, PWSTR FileName, uint64 FileHandle, uint32 Qualifier, uint32 FormatFlags, PWSTR Comment) WriteDumpFileWide;
				public function HRESULT(IDebugClient6 *self, PWSTR FileName, uint64 FileHandle, uint32 Type) AddDumpInformationFileWide;
				public function HRESULT(IDebugClient6 *self, uint32* Number) GetNumberDumpFiles;
				public function HRESULT(IDebugClient6 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFile;
				public function HRESULT(IDebugClient6 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFileWide;
				public function HRESULT(IDebugClient6 *self, uint32 Flags, PWSTR ConnectOptions) AttachKernelWide;
				public function HRESULT(IDebugClient6 *self, char16* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient6 *self, PWSTR Options) SetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient6 *self, uint32 Flags, PWSTR Options, void* Reserved) StartProcessServerWide;
				public function HRESULT(IDebugClient6 *self, PWSTR RemoteOptions, uint64* Server) ConnectProcessServerWide;
				public function HRESULT(IDebugClient6 *self, PWSTR Options) StartServerWide;
				public function HRESULT(IDebugClient6 *self, uint32 OutputControl, PWSTR Machine, uint32 Flags) OutputServersWide;
				public function HRESULT(IDebugClient6 *self, IDebugOutputCallbacksWide** Callbacks) GetOutputCallbacksWide;
				public function HRESULT(IDebugClient6 *self, IDebugOutputCallbacksWide* Callbacks) SetOutputCallbacksWide;
				public function HRESULT(IDebugClient6 *self, char16* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefixWide;
				public function HRESULT(IDebugClient6 *self, PWSTR Prefix) SetOutputLinePrefixWide;
				public function HRESULT(IDebugClient6 *self, char16* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentityWide;
				public function HRESULT(IDebugClient6 *self, uint32 OutputControl, uint32 Flags, PWSTR Format) OutputIdentityWide;
				public function HRESULT(IDebugClient6 *self, IDebugEventCallbacksWide** Callbacks) GetEventCallbacksWide;
				public function HRESULT(IDebugClient6 *self, IDebugEventCallbacksWide* Callbacks) SetEventCallbacksWide;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment) CreateProcess2;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment) CreateProcess2Wide;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2;
				public function HRESULT(IDebugClient6 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2Wide;
				public function HRESULT(IDebugClient6 *self, PSTR NewPrefix, uint64* Handle) PushOutputLinePrefix;
				public function HRESULT(IDebugClient6 *self, PWSTR NewPrefix, uint64* Handle) PushOutputLinePrefixWide;
				public function HRESULT(IDebugClient6 *self, uint64 Handle) PopOutputLinePrefix;
				public function HRESULT(IDebugClient6 *self, uint32* Count) GetNumberInputCallbacks;
				public function HRESULT(IDebugClient6 *self, uint32* Count) GetNumberOutputCallbacks;
				public function HRESULT(IDebugClient6 *self, uint32 EventFlags, uint32* Count) GetNumberEventCallbacks;
				public function HRESULT(IDebugClient6 *self, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockString;
				public function HRESULT(IDebugClient6 *self, PSTR String) SetQuitLockString;
				public function HRESULT(IDebugClient6 *self, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockStringWide;
				public function HRESULT(IDebugClient6 *self, PWSTR String) SetQuitLockStringWide;
				public function HRESULT(IDebugClient6 *self, IDebugEventContextCallbacks* Callbacks) SetEventContextCallbacks;
			}
		}
		[CRepr]
		public struct IDebugClient7 : IUnknown
		{
			public const new Guid IID = .(0x13586be3, 0x542e, 0x481e, 0xb1, 0xf2, 0x84, 0x97, 0xba, 0x74, 0xf9, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient7 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient7 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient7 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient7 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient7 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient7 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient7 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient7 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient7 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient7 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient7 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient7 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient7 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient7 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient7 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient7 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient7 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient7 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient7 *self) TerminateProcesses;
				public function HRESULT(IDebugClient7 *self) DetachProcesses;
				public function HRESULT(IDebugClient7 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient7 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient7 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient7 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient7 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient7 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient7 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient7 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient7 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient7 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient7 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient7 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient7 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient7 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient7 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient7 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient7 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient7 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient7 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient7 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient7 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient7 *self) FlushCallbacks;
				public function HRESULT(IDebugClient7 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient7 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient7 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient7 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient7 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient7 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient7 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient7 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient7 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
				public function HRESULT(IDebugClient7 *self, PWSTR FileName, uint64 FileHandle) OpenDumpFileWide;
				public function HRESULT(IDebugClient7 *self, PWSTR FileName, uint64 FileHandle, uint32 Qualifier, uint32 FormatFlags, PWSTR Comment) WriteDumpFileWide;
				public function HRESULT(IDebugClient7 *self, PWSTR FileName, uint64 FileHandle, uint32 Type) AddDumpInformationFileWide;
				public function HRESULT(IDebugClient7 *self, uint32* Number) GetNumberDumpFiles;
				public function HRESULT(IDebugClient7 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFile;
				public function HRESULT(IDebugClient7 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFileWide;
				public function HRESULT(IDebugClient7 *self, uint32 Flags, PWSTR ConnectOptions) AttachKernelWide;
				public function HRESULT(IDebugClient7 *self, char16* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient7 *self, PWSTR Options) SetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient7 *self, uint32 Flags, PWSTR Options, void* Reserved) StartProcessServerWide;
				public function HRESULT(IDebugClient7 *self, PWSTR RemoteOptions, uint64* Server) ConnectProcessServerWide;
				public function HRESULT(IDebugClient7 *self, PWSTR Options) StartServerWide;
				public function HRESULT(IDebugClient7 *self, uint32 OutputControl, PWSTR Machine, uint32 Flags) OutputServersWide;
				public function HRESULT(IDebugClient7 *self, IDebugOutputCallbacksWide** Callbacks) GetOutputCallbacksWide;
				public function HRESULT(IDebugClient7 *self, IDebugOutputCallbacksWide* Callbacks) SetOutputCallbacksWide;
				public function HRESULT(IDebugClient7 *self, char16* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefixWide;
				public function HRESULT(IDebugClient7 *self, PWSTR Prefix) SetOutputLinePrefixWide;
				public function HRESULT(IDebugClient7 *self, char16* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentityWide;
				public function HRESULT(IDebugClient7 *self, uint32 OutputControl, uint32 Flags, PWSTR Format) OutputIdentityWide;
				public function HRESULT(IDebugClient7 *self, IDebugEventCallbacksWide** Callbacks) GetEventCallbacksWide;
				public function HRESULT(IDebugClient7 *self, IDebugEventCallbacksWide* Callbacks) SetEventCallbacksWide;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment) CreateProcess2;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment) CreateProcess2Wide;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2;
				public function HRESULT(IDebugClient7 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2Wide;
				public function HRESULT(IDebugClient7 *self, PSTR NewPrefix, uint64* Handle) PushOutputLinePrefix;
				public function HRESULT(IDebugClient7 *self, PWSTR NewPrefix, uint64* Handle) PushOutputLinePrefixWide;
				public function HRESULT(IDebugClient7 *self, uint64 Handle) PopOutputLinePrefix;
				public function HRESULT(IDebugClient7 *self, uint32* Count) GetNumberInputCallbacks;
				public function HRESULT(IDebugClient7 *self, uint32* Count) GetNumberOutputCallbacks;
				public function HRESULT(IDebugClient7 *self, uint32 EventFlags, uint32* Count) GetNumberEventCallbacks;
				public function HRESULT(IDebugClient7 *self, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockString;
				public function HRESULT(IDebugClient7 *self, PSTR String) SetQuitLockString;
				public function HRESULT(IDebugClient7 *self, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockStringWide;
				public function HRESULT(IDebugClient7 *self, PWSTR String) SetQuitLockStringWide;
				public function HRESULT(IDebugClient7 *self, IDebugEventContextCallbacks* Callbacks) SetEventContextCallbacks;
				public function HRESULT(IDebugClient7 *self, void* Context, uint32 ContextSize) SetClientContext;
			}
		}
		[CRepr]
		public struct IDebugClient8 : IUnknown
		{
			public const new Guid IID = .(0xcec43add, 0x6375, 0x469e, 0x83, 0xd5, 0x41, 0x4e, 0x40, 0x33, 0xc1, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugClient8 *self, uint32 Flags, PSTR ConnectOptions) AttachKernel;
				public function HRESULT(IDebugClient8 *self, uint8* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptions;
				public function HRESULT(IDebugClient8 *self, PSTR Options) SetKernelConnectionOptions;
				public function HRESULT(IDebugClient8 *self, uint32 Flags, PSTR Options, void* Reserved) StartProcessServer;
				public function HRESULT(IDebugClient8 *self, PSTR RemoteOptions, uint64* Server) ConnectProcessServer;
				public function HRESULT(IDebugClient8 *self, uint64 Server) DisconnectProcessServer;
				public function HRESULT(IDebugClient8 *self, uint64 Server, uint32* Ids, uint32 Count, uint32* ActualCount) GetRunningProcessSystemIds;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableName;
				public function HRESULT(IDebugClient8 *self, uint64 Server, uint32 SystemId, uint32 Flags, uint8* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, uint8* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescription;
				public function HRESULT(IDebugClient8 *self, uint64 Server, uint32 ProcessId, uint32 AttachFlags) AttachProcess;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags) CreateProcessA;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach;
				public function HRESULT(IDebugClient8 *self, uint32* Options) GetProcessOptions;
				public function HRESULT(IDebugClient8 *self, uint32 Options) AddProcessOptions;
				public function HRESULT(IDebugClient8 *self, uint32 Options) RemoveProcessOptions;
				public function HRESULT(IDebugClient8 *self, uint32 Options) SetProcessOptions;
				public function HRESULT(IDebugClient8 *self, PSTR DumpFile) OpenDumpFile;
				public function HRESULT(IDebugClient8 *self, PSTR DumpFile, uint32 Qualifier) WriteDumpFile;
				public function HRESULT(IDebugClient8 *self, uint32 Flags, uint32 HistoryLimit) ConnectSession;
				public function HRESULT(IDebugClient8 *self, PSTR Options) StartServer;
				public function HRESULT(IDebugClient8 *self, uint32 OutputControl, PSTR Machine, uint32 Flags) OutputServers;
				public function HRESULT(IDebugClient8 *self) TerminateProcesses;
				public function HRESULT(IDebugClient8 *self) DetachProcesses;
				public function HRESULT(IDebugClient8 *self, uint32 Flags) EndSession;
				public function HRESULT(IDebugClient8 *self, uint32* Code) GetExitCode;
				public function HRESULT(IDebugClient8 *self, uint32 Timeout) DispatchCallbacks;
				public function HRESULT(IDebugClient8 *self, IDebugClient* Client) ExitDispatch;
				public function HRESULT(IDebugClient8 *self, IDebugClient** Client) CreateClient;
				public function HRESULT(IDebugClient8 *self, IDebugInputCallbacks** Callbacks) GetInputCallbacks;
				public function HRESULT(IDebugClient8 *self, IDebugInputCallbacks* Callbacks) SetInputCallbacks;
				public function HRESULT(IDebugClient8 *self, IDebugOutputCallbacks** Callbacks) GetOutputCallbacks;
				public function HRESULT(IDebugClient8 *self, IDebugOutputCallbacks* Callbacks) SetOutputCallbacks;
				public function HRESULT(IDebugClient8 *self, uint32* Mask) GetOutputMask;
				public function HRESULT(IDebugClient8 *self, uint32 Mask) SetOutputMask;
				public function HRESULT(IDebugClient8 *self, IDebugClient* Client, uint32* Mask) GetOtherOutputMask;
				public function HRESULT(IDebugClient8 *self, IDebugClient* Client, uint32 Mask) SetOtherOutputMask;
				public function HRESULT(IDebugClient8 *self, uint32* Columns) GetOutputWidth;
				public function HRESULT(IDebugClient8 *self, uint32 Columns) SetOutputWidth;
				public function HRESULT(IDebugClient8 *self, uint8* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefix;
				public function HRESULT(IDebugClient8 *self, PSTR Prefix) SetOutputLinePrefix;
				public function HRESULT(IDebugClient8 *self, uint8* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentity;
				public function HRESULT(IDebugClient8 *self, uint32 OutputControl, uint32 Flags, PSTR Format) OutputIdentity;
				public function HRESULT(IDebugClient8 *self, IDebugEventCallbacks** Callbacks) GetEventCallbacks;
				public function HRESULT(IDebugClient8 *self, IDebugEventCallbacks* Callbacks) SetEventCallbacks;
				public function HRESULT(IDebugClient8 *self) FlushCallbacks;
				public function HRESULT(IDebugClient8 *self, PSTR DumpFile, uint32 Qualifier, uint32 FormatFlags, PSTR Comment) WriteDumpFile2;
				public function HRESULT(IDebugClient8 *self, PSTR InfoFile, uint32 Type) AddDumpInformationFile;
				public function HRESULT(IDebugClient8 *self, uint64 Server) EndProcessServer;
				public function HRESULT(IDebugClient8 *self, uint32 Timeout) WaitForProcessServerEnd;
				public function HRESULT(IDebugClient8 *self) IsKernelDebuggerEnabled;
				public function HRESULT(IDebugClient8 *self) TerminateCurrentProcess;
				public function HRESULT(IDebugClient8 *self) DetachCurrentProcess;
				public function HRESULT(IDebugClient8 *self) AbandonCurrentProcess;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PWSTR ExeName, uint32 Flags, uint32* Id) GetRunningProcessSystemIdByExecutableNameWide;
				public function HRESULT(IDebugClient8 *self, uint64 Server, uint32 SystemId, uint32 Flags, char16* ExeName, uint32 ExeNameSize, uint32* ActualExeNameSize, char16* Description, uint32 DescriptionSize, uint32* ActualDescriptionSize) GetRunningProcessDescriptionWide;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags) CreateProcessWide;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PWSTR CommandLine, uint32 CreateFlags, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttachWide;
				public function HRESULT(IDebugClient8 *self, PWSTR FileName, uint64 FileHandle) OpenDumpFileWide;
				public function HRESULT(IDebugClient8 *self, PWSTR FileName, uint64 FileHandle, uint32 Qualifier, uint32 FormatFlags, PWSTR Comment) WriteDumpFileWide;
				public function HRESULT(IDebugClient8 *self, PWSTR FileName, uint64 FileHandle, uint32 Type) AddDumpInformationFileWide;
				public function HRESULT(IDebugClient8 *self, uint32* Number) GetNumberDumpFiles;
				public function HRESULT(IDebugClient8 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFile;
				public function HRESULT(IDebugClient8 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize, uint64* Handle, uint32* Type) GetDumpFileWide;
				public function HRESULT(IDebugClient8 *self, uint32 Flags, PWSTR ConnectOptions) AttachKernelWide;
				public function HRESULT(IDebugClient8 *self, char16* Buffer, uint32 BufferSize, uint32* OptionsSize) GetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient8 *self, PWSTR Options) SetKernelConnectionOptionsWide;
				public function HRESULT(IDebugClient8 *self, uint32 Flags, PWSTR Options, void* Reserved) StartProcessServerWide;
				public function HRESULT(IDebugClient8 *self, PWSTR RemoteOptions, uint64* Server) ConnectProcessServerWide;
				public function HRESULT(IDebugClient8 *self, PWSTR Options) StartServerWide;
				public function HRESULT(IDebugClient8 *self, uint32 OutputControl, PWSTR Machine, uint32 Flags) OutputServersWide;
				public function HRESULT(IDebugClient8 *self, IDebugOutputCallbacksWide** Callbacks) GetOutputCallbacksWide;
				public function HRESULT(IDebugClient8 *self, IDebugOutputCallbacksWide* Callbacks) SetOutputCallbacksWide;
				public function HRESULT(IDebugClient8 *self, char16* Buffer, uint32 BufferSize, uint32* PrefixSize) GetOutputLinePrefixWide;
				public function HRESULT(IDebugClient8 *self, PWSTR Prefix) SetOutputLinePrefixWide;
				public function HRESULT(IDebugClient8 *self, char16* Buffer, uint32 BufferSize, uint32* IdentitySize) GetIdentityWide;
				public function HRESULT(IDebugClient8 *self, uint32 OutputControl, uint32 Flags, PWSTR Format) OutputIdentityWide;
				public function HRESULT(IDebugClient8 *self, IDebugEventCallbacksWide** Callbacks) GetEventCallbacksWide;
				public function HRESULT(IDebugClient8 *self, IDebugEventCallbacksWide* Callbacks) SetEventCallbacksWide;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment) CreateProcess2;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment) CreateProcess2Wide;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PSTR InitialDirectory, PSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2;
				public function HRESULT(IDebugClient8 *self, uint64 Server, PWSTR CommandLine, void* OptionsBuffer, uint32 OptionsBufferSize, PWSTR InitialDirectory, PWSTR Environment, uint32 ProcessId, uint32 AttachFlags) CreateProcessAndAttach2Wide;
				public function HRESULT(IDebugClient8 *self, PSTR NewPrefix, uint64* Handle) PushOutputLinePrefix;
				public function HRESULT(IDebugClient8 *self, PWSTR NewPrefix, uint64* Handle) PushOutputLinePrefixWide;
				public function HRESULT(IDebugClient8 *self, uint64 Handle) PopOutputLinePrefix;
				public function HRESULT(IDebugClient8 *self, uint32* Count) GetNumberInputCallbacks;
				public function HRESULT(IDebugClient8 *self, uint32* Count) GetNumberOutputCallbacks;
				public function HRESULT(IDebugClient8 *self, uint32 EventFlags, uint32* Count) GetNumberEventCallbacks;
				public function HRESULT(IDebugClient8 *self, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockString;
				public function HRESULT(IDebugClient8 *self, PSTR String) SetQuitLockString;
				public function HRESULT(IDebugClient8 *self, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetQuitLockStringWide;
				public function HRESULT(IDebugClient8 *self, PWSTR String) SetQuitLockStringWide;
				public function HRESULT(IDebugClient8 *self, IDebugEventContextCallbacks* Callbacks) SetEventContextCallbacks;
				public function HRESULT(IDebugClient8 *self, void* Context, uint32 ContextSize) SetClientContext;
				public function HRESULT(IDebugClient8 *self, PWSTR FileName, uint64 FileHandle, uint32 AlternateArch) OpenDumpFileWide2;
			}
		}
		[CRepr]
		public struct IDebugPlmClient : IUnknown
		{
			public const new Guid IID = .(0xa02b66c4, 0xaea3, 0x4234, 0xa9, 0xf7, 0xfe, 0x4c, 0x38, 0x3d, 0x4e, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugPlmClient *self, uint64 Server, uint32 Timeout, PWSTR PackageFullName, PWSTR AppName, PWSTR Arguments, uint32* ProcessId, uint32* ThreadId) LaunchPlmPackageForDebugWide;
			}
		}
		[CRepr]
		public struct IDebugPlmClient2 : IUnknown
		{
			public const new Guid IID = .(0x597c980d, 0xe7bd, 0x4309, 0x96, 0x2c, 0x9d, 0x9b, 0x69, 0xa7, 0x37, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugPlmClient2 *self, uint64 Server, uint32 Timeout, PWSTR PackageFullName, PWSTR AppName, PWSTR Arguments, uint32* ProcessId, uint32* ThreadId) LaunchPlmPackageForDebugWide;
				public function HRESULT(IDebugPlmClient2 *self, uint64 Server, uint32 Timeout, PWSTR PackageFullName, PWSTR BackgroundTaskId, uint32* ProcessId, uint32* ThreadId) LaunchPlmBgTaskForDebugWide;
			}
		}
		[CRepr]
		public struct IDebugPlmClient3 : IUnknown
		{
			public const new Guid IID = .(0xd4a5dbd1, 0xca02, 0x4d90, 0x85, 0x6a, 0x2a, 0x92, 0xbf, 0xd0, 0xf2, 0x0f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, uint32 Timeout, PWSTR PackageFullName, PWSTR AppName, PWSTR Arguments, uint32* ProcessId, uint32* ThreadId) LaunchPlmPackageForDebugWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, uint32 Timeout, PWSTR PackageFullName, PWSTR BackgroundTaskId, uint32* ProcessId, uint32* ThreadId) LaunchPlmBgTaskForDebugWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName, IDebugOutputStream* Stream) QueryPlmPackageWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, IDebugOutputStream* Stream) QueryPlmPackageList;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName) EnablePlmPackageDebugWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName) DisablePlmPackageDebugWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName) SuspendPlmPackageWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName) ResumePlmPackageWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName) TerminatePlmPackageWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName, PWSTR AppName, PWSTR Arguments) LaunchAndDebugPlmAppWide;
				public function HRESULT(IDebugPlmClient3 *self, uint64 Server, PWSTR PackageFullName, PWSTR BackgroundTaskId) ActivateAndDebugPlmBgTaskWide;
			}
		}
		[CRepr]
		public struct IDebugOutputStream : IUnknown
		{
			public const new Guid IID = .(0x7782d8f2, 0x2b85, 0x4059, 0xab, 0x88, 0x28, 0xce, 0xdd, 0xca, 0x1c, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugOutputStream *self, PWSTR psz) Write;
			}
		}
		[CRepr]
		public struct IDebugControl : IUnknown
		{
			public const new Guid IID = .(0x5182e668, 0x105e, 0x416e, 0xad, 0x92, 0x24, 0xef, 0x80, 0x04, 0x24, 0xba);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl *self) GetInterrupt;
				public function HRESULT(IDebugControl *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl *self) CloseLogFile;
				public function HRESULT(IDebugControl *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl *self) IsPointer64Bit;
				public function HRESULT(IDebugControl *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
			}
		}
		[CRepr]
		public struct IDebugControl2 : IUnknown
		{
			public const new Guid IID = .(0xd4366723, 0x44df, 0x4bed, 0x8c, 0x7e, 0x4c, 0x05, 0x42, 0x4f, 0x45, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl2 *self) GetInterrupt;
				public function HRESULT(IDebugControl2 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl2 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl2 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl2 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl2 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl2 *self) CloseLogFile;
				public function HRESULT(IDebugControl2 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl2 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl2 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl2 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl2 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl2 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl2 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl2 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl2 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl2 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl2 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl2 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl2 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl2 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl2 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl2 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl2 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl2 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl2 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl2 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl2 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl2 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl2 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl2 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl2 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl2 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl2 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl2 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl2 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl2 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl2 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl2 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl2 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl2 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl2 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl2 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl2 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl2 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl2 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl2 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl2 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl2 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl2 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl2 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl2 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl2 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl2 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl2 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl2 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl2 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl2 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl2 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl2 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl2 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl2 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl2 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl2 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl2 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl2 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl2 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl2 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl2 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl2 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl2 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl2 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl2 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl2 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl2 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl2 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl2 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl2 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl2 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl2 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl2 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl2 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl2 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl2 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl2 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
			}
		}
		[CRepr]
		public struct IDebugControl3 : IUnknown
		{
			public const new Guid IID = .(0x7df74a86, 0xb03f, 0x407f, 0x90, 0xab, 0xa2, 0x0d, 0xad, 0xce, 0xad, 0x08);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl3 *self) GetInterrupt;
				public function HRESULT(IDebugControl3 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl3 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl3 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl3 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl3 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl3 *self) CloseLogFile;
				public function HRESULT(IDebugControl3 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl3 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl3 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl3 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl3 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl3 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl3 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl3 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl3 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl3 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl3 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl3 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl3 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl3 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl3 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl3 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl3 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl3 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl3 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl3 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl3 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl3 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl3 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl3 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl3 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl3 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl3 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl3 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl3 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl3 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl3 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl3 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl3 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl3 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl3 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl3 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl3 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl3 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl3 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl3 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl3 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl3 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl3 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl3 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl3 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl3 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl3 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl3 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl3 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl3 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl3 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl3 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl3 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl3 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl3 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl3 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl3 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl3 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl3 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl3 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl3 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl3 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl3 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl3 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl3 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl3 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl3 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl3 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl3 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl3 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl3 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl3 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl3 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl3 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl3 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
				public function HRESULT(IDebugControl3 *self, uint32* Options) GetAssemblyOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) AddAssemblyOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) RemoveAssemblyOptions;
				public function HRESULT(IDebugControl3 *self, uint32 Options) SetAssemblyOptions;
				public function HRESULT(IDebugControl3 *self, uint32* Flags) GetExpressionSyntax;
				public function HRESULT(IDebugControl3 *self, uint32 Flags) SetExpressionSyntax;
				public function HRESULT(IDebugControl3 *self, PSTR AbbrevName) SetExpressionSyntaxByName;
				public function HRESULT(IDebugControl3 *self, uint32* Number) GetNumberExpressionSyntaxes;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNames;
				public function HRESULT(IDebugControl3 *self, uint32* Events) GetNumberEvents;
				public function HRESULT(IDebugControl3 *self, uint32 Index, uint32 Which, PSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescription;
				public function HRESULT(IDebugControl3 *self, uint32* Index) GetCurrentEventIndex;
				public function HRESULT(IDebugControl3 *self, uint32 Relation, uint32 Value, uint32* NextIndex) SetNextEventIndex;
			}
		}
		[CRepr]
		public struct IDebugControl4 : IUnknown
		{
			public const new Guid IID = .(0x94e60ce9, 0x9b41, 0x4b19, 0x9f, 0xc0, 0x6d, 0x9e, 0xb3, 0x52, 0x72, 0xb3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl4 *self) GetInterrupt;
				public function HRESULT(IDebugControl4 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl4 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl4 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl4 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl4 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl4 *self) CloseLogFile;
				public function HRESULT(IDebugControl4 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl4 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl4 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl4 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl4 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl4 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl4 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl4 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl4 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl4 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl4 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl4 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl4 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl4 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl4 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl4 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl4 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl4 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl4 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl4 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl4 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl4 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl4 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl4 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl4 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl4 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl4 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl4 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl4 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl4 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl4 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl4 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl4 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl4 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl4 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl4 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl4 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl4 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl4 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl4 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl4 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl4 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl4 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl4 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl4 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl4 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl4 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl4 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl4 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl4 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl4 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl4 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl4 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl4 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl4 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl4 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl4 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl4 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl4 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl4 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl4 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl4 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl4 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl4 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl4 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl4 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl4 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl4 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl4 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl4 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl4 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
				public function HRESULT(IDebugControl4 *self, uint32* Options) GetAssemblyOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) AddAssemblyOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) RemoveAssemblyOptions;
				public function HRESULT(IDebugControl4 *self, uint32 Options) SetAssemblyOptions;
				public function HRESULT(IDebugControl4 *self, uint32* Flags) GetExpressionSyntax;
				public function HRESULT(IDebugControl4 *self, uint32 Flags) SetExpressionSyntax;
				public function HRESULT(IDebugControl4 *self, PSTR AbbrevName) SetExpressionSyntaxByName;
				public function HRESULT(IDebugControl4 *self, uint32* Number) GetNumberExpressionSyntaxes;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNames;
				public function HRESULT(IDebugControl4 *self, uint32* Events) GetNumberEvents;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint32 Which, PSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescription;
				public function HRESULT(IDebugControl4 *self, uint32* Index) GetCurrentEventIndex;
				public function HRESULT(IDebugControl4 *self, uint32 Relation, uint32 Value, uint32* NextIndex) SetNextEventIndex;
				public function HRESULT(IDebugControl4 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFileWide;
				public function HRESULT(IDebugControl4 *self, PWSTR File, BOOL Append) OpenLogFileWide;
				public function HRESULT(IDebugControl4 *self, char16* Buffer, uint32 BufferSize, uint32* InputSize) InputWide;
				public function HRESULT(IDebugControl4 *self, PWSTR Buffer) ReturnInputWide;
				public function HRESULT(IDebugControl4 *self, uint32 Mask, PWSTR Format) OutputWide;
				public function HRESULT(IDebugControl4 *self, uint32 Mask, PWSTR Format, int8* Args) OutputVaListWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Mask, PWSTR Format) ControlledOutputWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, uint32 Mask, PWSTR Format, int8* Args) ControlledOutputVaListWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PWSTR Format) OutputPromptWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PWSTR Format, int8* Args) OutputPromptVaListWide;
				public function HRESULT(IDebugControl4 *self, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptTextWide;
				public function HRESULT(IDebugControl4 *self, uint64 Offset, PWSTR Instr, uint64* EndOffset) AssembleWide;
				public function HRESULT(IDebugControl4 *self, uint64 Offset, uint32 Flags, char16* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) DisassembleWide;
				public function HRESULT(IDebugControl4 *self, uint32 Type, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNamesWide;
				public function HRESULT(IDebugControl4 *self, uint32 Slot, char16* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacroWide;
				public function HRESULT(IDebugControl4 *self, uint32 Slot, PWSTR Macro) SetTextMacroWide;
				public function HRESULT(IDebugControl4 *self, PWSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) EvaluateWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PWSTR Command, uint32 Flags) ExecuteWide;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, PWSTR CommandFile, uint32 Flags) ExecuteCommandFileWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, IDebugBreakpoint2** Bp) GetBreakpointByIndex2;
				public function HRESULT(IDebugControl4 *self, uint32 Id, IDebugBreakpoint2** Bp) GetBreakpointById2;
				public function HRESULT(IDebugControl4 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint2** Bp) AddBreakpoint2;
				public function HRESULT(IDebugControl4 *self, IDebugBreakpoint2* Bp) RemoveBreakpoint2;
				public function HRESULT(IDebugControl4 *self, PWSTR Path, uint32 Flags, uint64* Handle) AddExtensionWide;
				public function HRESULT(IDebugControl4 *self, PWSTR Path, uint64* Handle) GetExtensionByPathWide;
				public function HRESULT(IDebugControl4 *self, uint64 Handle, PWSTR Function, PWSTR Arguments) CallExtensionWide;
				public function HRESULT(IDebugControl4 *self, uint64 Handle, PWSTR FuncName, FARPROC* Function) GetExtensionFunctionWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterTextWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommandWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PWSTR Command) SetEventFilterCommandWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PWSTR Argument) SetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, PWSTR Command) SetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl4 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, char16* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformationWide;
				public function HRESULT(IDebugControl4 *self, PWSTR SrcText, uint32 Index, char16* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, char16* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacementWide;
				public function HRESULT(IDebugControl4 *self, PWSTR SrcText, PWSTR DstText) SetTextReplacementWide;
				public function HRESULT(IDebugControl4 *self, PWSTR AbbrevName) SetExpressionSyntaxByNameWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNamesWide;
				public function HRESULT(IDebugControl4 *self, uint32 Index, uint32 Which, PWSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescriptionWide;
				public function HRESULT(IDebugControl4 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2;
				public function HRESULT(IDebugControl4 *self, PSTR File, uint32 Flags) OpenLogFile2;
				public function HRESULT(IDebugControl4 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2Wide;
				public function HRESULT(IDebugControl4 *self, PWSTR File, uint32 Flags) OpenLogFile2Wide;
				public function HRESULT(IDebugControl4 *self, uint32* PlatformId, uint32* Win32Major, uint32* Win32Minor, uint32* KdMajor, uint32* KdMinor) GetSystemVersionValues;
				public function HRESULT(IDebugControl4 *self, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionString;
				public function HRESULT(IDebugControl4 *self, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionStringWide;
				public function HRESULT(IDebugControl4 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTrace;
				public function HRESULT(IDebugControl4 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTrace;
				public function HRESULT(IDebugControl4 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* Context, uint32 ContextSize, uint32* ContextUsed, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed) GetStoredEventInformation;
				public function HRESULT(IDebugControl4 *self, uint32* Flags, uint32 WhichString, uint8* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatus;
				public function HRESULT(IDebugControl4 *self, uint32* Flags, uint32 WhichString, char16* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatusWide;
				public function HRESULT(IDebugControl4 *self, uint32 Flags) ResetManagedStatus;
			}
		}
		[CRepr]
		public struct IDebugControl5 : IUnknown
		{
			public const new Guid IID = .(0xb2ffe162, 0x2412, 0x429f, 0x8d, 0x1d, 0x5b, 0xf6, 0xdd, 0x82, 0x46, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl5 *self) GetInterrupt;
				public function HRESULT(IDebugControl5 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl5 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl5 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl5 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl5 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl5 *self) CloseLogFile;
				public function HRESULT(IDebugControl5 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl5 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl5 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl5 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl5 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl5 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl5 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl5 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl5 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl5 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl5 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl5 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl5 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl5 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl5 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl5 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl5 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl5 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl5 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl5 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl5 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl5 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl5 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl5 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl5 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl5 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl5 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl5 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl5 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl5 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl5 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl5 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl5 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl5 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl5 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl5 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl5 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl5 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl5 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl5 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl5 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl5 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl5 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl5 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl5 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl5 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl5 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl5 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl5 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl5 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl5 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl5 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl5 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl5 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl5 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl5 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl5 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl5 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl5 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl5 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl5 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl5 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl5 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl5 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl5 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl5 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl5 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl5 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl5 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl5 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl5 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
				public function HRESULT(IDebugControl5 *self, uint32* Options) GetAssemblyOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) AddAssemblyOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) RemoveAssemblyOptions;
				public function HRESULT(IDebugControl5 *self, uint32 Options) SetAssemblyOptions;
				public function HRESULT(IDebugControl5 *self, uint32* Flags) GetExpressionSyntax;
				public function HRESULT(IDebugControl5 *self, uint32 Flags) SetExpressionSyntax;
				public function HRESULT(IDebugControl5 *self, PSTR AbbrevName) SetExpressionSyntaxByName;
				public function HRESULT(IDebugControl5 *self, uint32* Number) GetNumberExpressionSyntaxes;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNames;
				public function HRESULT(IDebugControl5 *self, uint32* Events) GetNumberEvents;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint32 Which, PSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescription;
				public function HRESULT(IDebugControl5 *self, uint32* Index) GetCurrentEventIndex;
				public function HRESULT(IDebugControl5 *self, uint32 Relation, uint32 Value, uint32* NextIndex) SetNextEventIndex;
				public function HRESULT(IDebugControl5 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFileWide;
				public function HRESULT(IDebugControl5 *self, PWSTR File, BOOL Append) OpenLogFileWide;
				public function HRESULT(IDebugControl5 *self, char16* Buffer, uint32 BufferSize, uint32* InputSize) InputWide;
				public function HRESULT(IDebugControl5 *self, PWSTR Buffer) ReturnInputWide;
				public function HRESULT(IDebugControl5 *self, uint32 Mask, PWSTR Format) OutputWide;
				public function HRESULT(IDebugControl5 *self, uint32 Mask, PWSTR Format, int8* Args) OutputVaListWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Mask, PWSTR Format) ControlledOutputWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, uint32 Mask, PWSTR Format, int8* Args) ControlledOutputVaListWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PWSTR Format) OutputPromptWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PWSTR Format, int8* Args) OutputPromptVaListWide;
				public function HRESULT(IDebugControl5 *self, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptTextWide;
				public function HRESULT(IDebugControl5 *self, uint64 Offset, PWSTR Instr, uint64* EndOffset) AssembleWide;
				public function HRESULT(IDebugControl5 *self, uint64 Offset, uint32 Flags, char16* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) DisassembleWide;
				public function HRESULT(IDebugControl5 *self, uint32 Type, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNamesWide;
				public function HRESULT(IDebugControl5 *self, uint32 Slot, char16* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacroWide;
				public function HRESULT(IDebugControl5 *self, uint32 Slot, PWSTR Macro) SetTextMacroWide;
				public function HRESULT(IDebugControl5 *self, PWSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) EvaluateWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PWSTR Command, uint32 Flags) ExecuteWide;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, PWSTR CommandFile, uint32 Flags) ExecuteCommandFileWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, IDebugBreakpoint2** Bp) GetBreakpointByIndex2;
				public function HRESULT(IDebugControl5 *self, uint32 Id, IDebugBreakpoint2** Bp) GetBreakpointById2;
				public function HRESULT(IDebugControl5 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint2** Bp) AddBreakpoint2;
				public function HRESULT(IDebugControl5 *self, IDebugBreakpoint2* Bp) RemoveBreakpoint2;
				public function HRESULT(IDebugControl5 *self, PWSTR Path, uint32 Flags, uint64* Handle) AddExtensionWide;
				public function HRESULT(IDebugControl5 *self, PWSTR Path, uint64* Handle) GetExtensionByPathWide;
				public function HRESULT(IDebugControl5 *self, uint64 Handle, PWSTR Function, PWSTR Arguments) CallExtensionWide;
				public function HRESULT(IDebugControl5 *self, uint64 Handle, PWSTR FuncName, FARPROC* Function) GetExtensionFunctionWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterTextWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommandWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PWSTR Command) SetEventFilterCommandWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PWSTR Argument) SetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, PWSTR Command) SetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl5 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, char16* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformationWide;
				public function HRESULT(IDebugControl5 *self, PWSTR SrcText, uint32 Index, char16* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, char16* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacementWide;
				public function HRESULT(IDebugControl5 *self, PWSTR SrcText, PWSTR DstText) SetTextReplacementWide;
				public function HRESULT(IDebugControl5 *self, PWSTR AbbrevName) SetExpressionSyntaxByNameWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNamesWide;
				public function HRESULT(IDebugControl5 *self, uint32 Index, uint32 Which, PWSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescriptionWide;
				public function HRESULT(IDebugControl5 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2;
				public function HRESULT(IDebugControl5 *self, PSTR File, uint32 Flags) OpenLogFile2;
				public function HRESULT(IDebugControl5 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2Wide;
				public function HRESULT(IDebugControl5 *self, PWSTR File, uint32 Flags) OpenLogFile2Wide;
				public function HRESULT(IDebugControl5 *self, uint32* PlatformId, uint32* Win32Major, uint32* Win32Minor, uint32* KdMajor, uint32* KdMinor) GetSystemVersionValues;
				public function HRESULT(IDebugControl5 *self, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionString;
				public function HRESULT(IDebugControl5 *self, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionStringWide;
				public function HRESULT(IDebugControl5 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTrace;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTrace;
				public function HRESULT(IDebugControl5 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* Context, uint32 ContextSize, uint32* ContextUsed, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed) GetStoredEventInformation;
				public function HRESULT(IDebugControl5 *self, uint32* Flags, uint32 WhichString, uint8* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatus;
				public function HRESULT(IDebugControl5 *self, uint32* Flags, uint32 WhichString, char16* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatusWide;
				public function HRESULT(IDebugControl5 *self, uint32 Flags) ResetManagedStatus;
				public function HRESULT(IDebugControl5 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTraceEx;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32 Flags) OutputStackTraceEx;
				public function HRESULT(IDebugControl5 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTraceEx;
				public function HRESULT(IDebugControl5 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTraceEx;
				public function HRESULT(IDebugControl5 *self, Guid* Guid, IDebugBreakpoint3** Bp) GetBreakpointByGuid;
			}
		}
		[CRepr]
		public struct IDebugControl6 : IUnknown
		{
			public const new Guid IID = .(0xbc0d583f, 0x126d, 0x43a1, 0x9c, 0xc4, 0xa8, 0x60, 0xab, 0x1d, 0x53, 0x7b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl6 *self) GetInterrupt;
				public function HRESULT(IDebugControl6 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl6 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl6 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl6 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl6 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl6 *self) CloseLogFile;
				public function HRESULT(IDebugControl6 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl6 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl6 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl6 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl6 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl6 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl6 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl6 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl6 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl6 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl6 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl6 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl6 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl6 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl6 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl6 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl6 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl6 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl6 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl6 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl6 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl6 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl6 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl6 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl6 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl6 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl6 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl6 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl6 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl6 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl6 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl6 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl6 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl6 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl6 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl6 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl6 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl6 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl6 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl6 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl6 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl6 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl6 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl6 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl6 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl6 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl6 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl6 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl6 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl6 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl6 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl6 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl6 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl6 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl6 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl6 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl6 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl6 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl6 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl6 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl6 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl6 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl6 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl6 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl6 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl6 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl6 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl6 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl6 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl6 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl6 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
				public function HRESULT(IDebugControl6 *self, uint32* Options) GetAssemblyOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) AddAssemblyOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) RemoveAssemblyOptions;
				public function HRESULT(IDebugControl6 *self, uint32 Options) SetAssemblyOptions;
				public function HRESULT(IDebugControl6 *self, uint32* Flags) GetExpressionSyntax;
				public function HRESULT(IDebugControl6 *self, uint32 Flags) SetExpressionSyntax;
				public function HRESULT(IDebugControl6 *self, PSTR AbbrevName) SetExpressionSyntaxByName;
				public function HRESULT(IDebugControl6 *self, uint32* Number) GetNumberExpressionSyntaxes;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNames;
				public function HRESULT(IDebugControl6 *self, uint32* Events) GetNumberEvents;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint32 Which, PSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescription;
				public function HRESULT(IDebugControl6 *self, uint32* Index) GetCurrentEventIndex;
				public function HRESULT(IDebugControl6 *self, uint32 Relation, uint32 Value, uint32* NextIndex) SetNextEventIndex;
				public function HRESULT(IDebugControl6 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFileWide;
				public function HRESULT(IDebugControl6 *self, PWSTR File, BOOL Append) OpenLogFileWide;
				public function HRESULT(IDebugControl6 *self, char16* Buffer, uint32 BufferSize, uint32* InputSize) InputWide;
				public function HRESULT(IDebugControl6 *self, PWSTR Buffer) ReturnInputWide;
				public function HRESULT(IDebugControl6 *self, uint32 Mask, PWSTR Format) OutputWide;
				public function HRESULT(IDebugControl6 *self, uint32 Mask, PWSTR Format, int8* Args) OutputVaListWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Mask, PWSTR Format) ControlledOutputWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, uint32 Mask, PWSTR Format, int8* Args) ControlledOutputVaListWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PWSTR Format) OutputPromptWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PWSTR Format, int8* Args) OutputPromptVaListWide;
				public function HRESULT(IDebugControl6 *self, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptTextWide;
				public function HRESULT(IDebugControl6 *self, uint64 Offset, PWSTR Instr, uint64* EndOffset) AssembleWide;
				public function HRESULT(IDebugControl6 *self, uint64 Offset, uint32 Flags, char16* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) DisassembleWide;
				public function HRESULT(IDebugControl6 *self, uint32 Type, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNamesWide;
				public function HRESULT(IDebugControl6 *self, uint32 Slot, char16* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacroWide;
				public function HRESULT(IDebugControl6 *self, uint32 Slot, PWSTR Macro) SetTextMacroWide;
				public function HRESULT(IDebugControl6 *self, PWSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) EvaluateWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PWSTR Command, uint32 Flags) ExecuteWide;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, PWSTR CommandFile, uint32 Flags) ExecuteCommandFileWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, IDebugBreakpoint2** Bp) GetBreakpointByIndex2;
				public function HRESULT(IDebugControl6 *self, uint32 Id, IDebugBreakpoint2** Bp) GetBreakpointById2;
				public function HRESULT(IDebugControl6 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint2** Bp) AddBreakpoint2;
				public function HRESULT(IDebugControl6 *self, IDebugBreakpoint2* Bp) RemoveBreakpoint2;
				public function HRESULT(IDebugControl6 *self, PWSTR Path, uint32 Flags, uint64* Handle) AddExtensionWide;
				public function HRESULT(IDebugControl6 *self, PWSTR Path, uint64* Handle) GetExtensionByPathWide;
				public function HRESULT(IDebugControl6 *self, uint64 Handle, PWSTR Function, PWSTR Arguments) CallExtensionWide;
				public function HRESULT(IDebugControl6 *self, uint64 Handle, PWSTR FuncName, FARPROC* Function) GetExtensionFunctionWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterTextWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommandWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PWSTR Command) SetEventFilterCommandWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PWSTR Argument) SetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, PWSTR Command) SetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl6 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, char16* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformationWide;
				public function HRESULT(IDebugControl6 *self, PWSTR SrcText, uint32 Index, char16* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, char16* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacementWide;
				public function HRESULT(IDebugControl6 *self, PWSTR SrcText, PWSTR DstText) SetTextReplacementWide;
				public function HRESULT(IDebugControl6 *self, PWSTR AbbrevName) SetExpressionSyntaxByNameWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNamesWide;
				public function HRESULT(IDebugControl6 *self, uint32 Index, uint32 Which, PWSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescriptionWide;
				public function HRESULT(IDebugControl6 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2;
				public function HRESULT(IDebugControl6 *self, PSTR File, uint32 Flags) OpenLogFile2;
				public function HRESULT(IDebugControl6 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2Wide;
				public function HRESULT(IDebugControl6 *self, PWSTR File, uint32 Flags) OpenLogFile2Wide;
				public function HRESULT(IDebugControl6 *self, uint32* PlatformId, uint32* Win32Major, uint32* Win32Minor, uint32* KdMajor, uint32* KdMinor) GetSystemVersionValues;
				public function HRESULT(IDebugControl6 *self, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionString;
				public function HRESULT(IDebugControl6 *self, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionStringWide;
				public function HRESULT(IDebugControl6 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTrace;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTrace;
				public function HRESULT(IDebugControl6 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* Context, uint32 ContextSize, uint32* ContextUsed, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed) GetStoredEventInformation;
				public function HRESULT(IDebugControl6 *self, uint32* Flags, uint32 WhichString, uint8* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatus;
				public function HRESULT(IDebugControl6 *self, uint32* Flags, uint32 WhichString, char16* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatusWide;
				public function HRESULT(IDebugControl6 *self, uint32 Flags) ResetManagedStatus;
				public function HRESULT(IDebugControl6 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTraceEx;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32 Flags) OutputStackTraceEx;
				public function HRESULT(IDebugControl6 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTraceEx;
				public function HRESULT(IDebugControl6 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTraceEx;
				public function HRESULT(IDebugControl6 *self, Guid* Guid, IDebugBreakpoint3** Bp) GetBreakpointByGuid;
				public function HRESULT(IDebugControl6 *self, uint32* Status) GetExecutionStatusEx;
				public function HRESULT(IDebugControl6 *self, uint32* SendsAttempted, uint32* SecondsSinceLastResponse) GetSynchronizationStatus;
			}
		}
		[CRepr]
		public struct IDebugControl7 : IUnknown
		{
			public const new Guid IID = .(0xb86fb3b1, 0x80d4, 0x475b, 0xae, 0xa3, 0xcf, 0x06, 0x53, 0x9c, 0xf6, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugControl7 *self) GetInterrupt;
				public function HRESULT(IDebugControl7 *self, uint32 Flags) SetInterrupt;
				public function HRESULT(IDebugControl7 *self, uint32* Seconds) GetInterruptTimeout;
				public function HRESULT(IDebugControl7 *self, uint32 Seconds) SetInterruptTimeout;
				public function HRESULT(IDebugControl7 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFile;
				public function HRESULT(IDebugControl7 *self, PSTR File, BOOL Append) OpenLogFile;
				public function HRESULT(IDebugControl7 *self) CloseLogFile;
				public function HRESULT(IDebugControl7 *self, uint32* Mask) GetLogMask;
				public function HRESULT(IDebugControl7 *self, uint32 Mask) SetLogMask;
				public function HRESULT(IDebugControl7 *self, uint8* Buffer, uint32 BufferSize, uint32* InputSize) Input;
				public function HRESULT(IDebugControl7 *self, PSTR Buffer) ReturnInput;
				public function HRESULT(IDebugControl7 *self, uint32 Mask, PSTR Format) Output;
				public function HRESULT(IDebugControl7 *self, uint32 Mask, PSTR Format, int8* Args) OutputVaList;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Mask, PSTR Format) ControlledOutput;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Mask, PSTR Format, int8* Args) ControlledOutputVaList;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PSTR Format) OutputPrompt;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PSTR Format, int8* Args) OutputPromptVaList;
				public function HRESULT(IDebugControl7 *self, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptText;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Flags) OutputCurrentState;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl) OutputVersionInformation;
				public function HRESULT(IDebugControl7 *self, uint64* Handle) GetNotifyEventHandle;
				public function HRESULT(IDebugControl7 *self, uint64 Handle) SetNotifyEventHandle;
				public function HRESULT(IDebugControl7 *self, uint64 Offset, PSTR Instr, uint64* EndOffset) Assemble;
				public function HRESULT(IDebugControl7 *self, uint64 Offset, uint32 Flags, uint8* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) Disassemble;
				public function HRESULT(IDebugControl7 *self, uint64* Offset) GetDisassembleEffectiveOffset;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint64 Offset, uint32 Flags, uint64* EndOffset) OutputDisassembly;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 PreviousLines, uint32 TotalLines, uint64 Offset, uint32 Flags, uint32* OffsetLine, uint64* StartOffset, uint64* EndOffset, uint64* LineOffsets) OutputDisassemblyLines;
				public function HRESULT(IDebugControl7 *self, uint64 Offset, int32 Delta, uint64* NearOffset) GetNearInstruction;
				public function HRESULT(IDebugControl7 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTrace;
				public function HRESULT(IDebugControl7 *self, uint64* Offset) GetReturnOffset;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, uint32 Flags) OutputStackTrace;
				public function HRESULT(IDebugControl7 *self, uint32* Class, uint32* Qualifier) GetDebuggeeType;
				public function HRESULT(IDebugControl7 *self, uint32* Type) GetActualProcessorType;
				public function HRESULT(IDebugControl7 *self, uint32* Type) GetExecutingProcessorType;
				public function HRESULT(IDebugControl7 *self, uint32* Number) GetNumberPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl7 *self, uint32 Start, uint32 Count, uint32* Types) GetPossibleExecutingProcessorTypes;
				public function HRESULT(IDebugControl7 *self, uint32* Number) GetNumberProcessors;
				public function HRESULT(IDebugControl7 *self, uint32* PlatformId, uint32* Major, uint32* Minor, uint8* ServicePackString, uint32 ServicePackStringSize, uint32* ServicePackStringUsed, uint32* ServicePackNumber, uint8* BuildString, uint32 BuildStringSize, uint32* BuildStringUsed) GetSystemVersion;
				public function HRESULT(IDebugControl7 *self, uint32* Size) GetPageSize;
				public function HRESULT(IDebugControl7 *self) IsPointer64Bit;
				public function HRESULT(IDebugControl7 *self, uint32* Code, uint64* Arg1, uint64* Arg2, uint64* Arg3, uint64* Arg4) ReadBugCheckData;
				public function HRESULT(IDebugControl7 *self, uint32* Number) GetNumberSupportedProcessorTypes;
				public function HRESULT(IDebugControl7 *self, uint32 Start, uint32 Count, uint32* Types) GetSupportedProcessorTypes;
				public function HRESULT(IDebugControl7 *self, uint32 Type, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNames;
				public function HRESULT(IDebugControl7 *self, uint32* Type) GetEffectiveProcessorType;
				public function HRESULT(IDebugControl7 *self, uint32 Type) SetEffectiveProcessorType;
				public function HRESULT(IDebugControl7 *self, uint32* Status) GetExecutionStatus;
				public function HRESULT(IDebugControl7 *self, uint32 Status) SetExecutionStatus;
				public function HRESULT(IDebugControl7 *self, uint32* Level) GetCodeLevel;
				public function HRESULT(IDebugControl7 *self, uint32 Level) SetCodeLevel;
				public function HRESULT(IDebugControl7 *self, uint32* Options) GetEngineOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) AddEngineOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) RemoveEngineOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) SetEngineOptions;
				public function HRESULT(IDebugControl7 *self, uint32* OutputLevel, uint32* BreakLevel) GetSystemErrorControl;
				public function HRESULT(IDebugControl7 *self, uint32 OutputLevel, uint32 BreakLevel) SetSystemErrorControl;
				public function HRESULT(IDebugControl7 *self, uint32 Slot, uint8* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacro;
				public function HRESULT(IDebugControl7 *self, uint32 Slot, PSTR Macro) SetTextMacro;
				public function HRESULT(IDebugControl7 *self, uint32* Radix) GetRadix;
				public function HRESULT(IDebugControl7 *self, uint32 Radix) SetRadix;
				public function HRESULT(IDebugControl7 *self, PSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) Evaluate;
				public function HRESULT(IDebugControl7 *self, DEBUG_VALUE* In, uint32 OutType, DEBUG_VALUE* Out) CoerceValue;
				public function HRESULT(IDebugControl7 *self, uint32 Count, DEBUG_VALUE* In, uint32* OutTypes, DEBUG_VALUE* Out) CoerceValues;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PSTR Command, uint32 Flags) Execute;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PSTR CommandFile, uint32 Flags) ExecuteCommandFile;
				public function HRESULT(IDebugControl7 *self, uint32* Number) GetNumberBreakpoints;
				public function HRESULT(IDebugControl7 *self, uint32 Index, IDebugBreakpoint** Bp) GetBreakpointByIndex;
				public function HRESULT(IDebugControl7 *self, uint32 Id, IDebugBreakpoint** Bp) GetBreakpointById;
				public function HRESULT(IDebugControl7 *self, uint32 Count, uint32* Ids, uint32 Start, DEBUG_BREAKPOINT_PARAMETERS* Params) GetBreakpointParameters;
				public function HRESULT(IDebugControl7 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint** Bp) AddBreakpoint;
				public function HRESULT(IDebugControl7 *self, IDebugBreakpoint* Bp) RemoveBreakpoint;
				public function HRESULT(IDebugControl7 *self, PSTR Path, uint32 Flags, uint64* Handle) AddExtension;
				public function HRESULT(IDebugControl7 *self, uint64 Handle) RemoveExtension;
				public function HRESULT(IDebugControl7 *self, PSTR Path, uint64* Handle) GetExtensionByPath;
				public function HRESULT(IDebugControl7 *self, uint64 Handle, PSTR Function, PSTR Arguments) CallExtension;
				public function HRESULT(IDebugControl7 *self, uint64 Handle, PSTR FuncName, FARPROC* Function) GetExtensionFunction;
				public function HRESULT(IDebugControl7 *self, WINDBG_EXTENSION_APIS32* Api) GetWindbgExtensionApis32;
				public function HRESULT(IDebugControl7 *self, WINDBG_EXTENSION_APIS64* Api) GetWindbgExtensionApis64;
				public function HRESULT(IDebugControl7 *self, uint32* SpecificEvents, uint32* SpecificExceptions, uint32* ArbitraryExceptions) GetNumberEventFilters;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterText;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommand;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PSTR Command) SetEventFilterCommand;
				public function HRESULT(IDebugControl7 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) GetSpecificFilterParameters;
				public function HRESULT(IDebugControl7 *self, uint32 Start, uint32 Count, DEBUG_SPECIFIC_FILTER_PARAMETERS* Params) SetSpecificFilterParameters;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgument;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PSTR Argument) SetSpecificFilterArgument;
				public function HRESULT(IDebugControl7 *self, uint32 Count, uint32* Codes, uint32 Start, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) GetExceptionFilterParameters;
				public function HRESULT(IDebugControl7 *self, uint32 Count, DEBUG_EXCEPTION_FILTER_PARAMETERS* Params) SetExceptionFilterParameters;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PSTR Command) SetExceptionFilterSecondCommand;
				public function HRESULT(IDebugControl7 *self, uint32 Flags, uint32 Timeout) WaitForEvent;
				public function HRESULT(IDebugControl7 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, uint8* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformation;
				public function HRESULT(IDebugControl7 *self, uint32* TimeDate) GetCurrentTimeDate;
				public function HRESULT(IDebugControl7 *self, uint32* UpTime) GetCurrentSystemUpTime;
				public function HRESULT(IDebugControl7 *self, uint32* FormatFlags) GetDumpFormatFlags;
				public function HRESULT(IDebugControl7 *self, uint32* NumRepl) GetNumberTextReplacements;
				public function HRESULT(IDebugControl7 *self, PSTR SrcText, uint32 Index, uint8* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, uint8* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacement;
				public function HRESULT(IDebugControl7 *self, PSTR SrcText, PSTR DstText) SetTextReplacement;
				public function HRESULT(IDebugControl7 *self) RemoveTextReplacements;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Flags) OutputTextReplacements;
				public function HRESULT(IDebugControl7 *self, uint32* Options) GetAssemblyOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) AddAssemblyOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) RemoveAssemblyOptions;
				public function HRESULT(IDebugControl7 *self, uint32 Options) SetAssemblyOptions;
				public function HRESULT(IDebugControl7 *self, uint32* Flags) GetExpressionSyntax;
				public function HRESULT(IDebugControl7 *self, uint32 Flags) SetExpressionSyntax;
				public function HRESULT(IDebugControl7 *self, PSTR AbbrevName) SetExpressionSyntaxByName;
				public function HRESULT(IDebugControl7 *self, uint32* Number) GetNumberExpressionSyntaxes;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint8* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, uint8* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNames;
				public function HRESULT(IDebugControl7 *self, uint32* Events) GetNumberEvents;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint32 Which, PSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescription;
				public function HRESULT(IDebugControl7 *self, uint32* Index) GetCurrentEventIndex;
				public function HRESULT(IDebugControl7 *self, uint32 Relation, uint32 Value, uint32* NextIndex) SetNextEventIndex;
				public function HRESULT(IDebugControl7 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, BOOL* Append) GetLogFileWide;
				public function HRESULT(IDebugControl7 *self, PWSTR File, BOOL Append) OpenLogFileWide;
				public function HRESULT(IDebugControl7 *self, char16* Buffer, uint32 BufferSize, uint32* InputSize) InputWide;
				public function HRESULT(IDebugControl7 *self, PWSTR Buffer) ReturnInputWide;
				public function HRESULT(IDebugControl7 *self, uint32 Mask, PWSTR Format) OutputWide;
				public function HRESULT(IDebugControl7 *self, uint32 Mask, PWSTR Format, int8* Args) OutputVaListWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Mask, PWSTR Format) ControlledOutputWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, uint32 Mask, PWSTR Format, int8* Args) ControlledOutputVaListWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PWSTR Format) OutputPromptWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PWSTR Format, int8* Args) OutputPromptVaListWide;
				public function HRESULT(IDebugControl7 *self, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetPromptTextWide;
				public function HRESULT(IDebugControl7 *self, uint64 Offset, PWSTR Instr, uint64* EndOffset) AssembleWide;
				public function HRESULT(IDebugControl7 *self, uint64 Offset, uint32 Flags, char16* Buffer, uint32 BufferSize, uint32* DisassemblySize, uint64* EndOffset) DisassembleWide;
				public function HRESULT(IDebugControl7 *self, uint32 Type, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetProcessorTypeNamesWide;
				public function HRESULT(IDebugControl7 *self, uint32 Slot, char16* Buffer, uint32 BufferSize, uint32* MacroSize) GetTextMacroWide;
				public function HRESULT(IDebugControl7 *self, uint32 Slot, PWSTR Macro) SetTextMacroWide;
				public function HRESULT(IDebugControl7 *self, PWSTR Expression, uint32 DesiredType, DEBUG_VALUE* Value, uint32* RemainderIndex) EvaluateWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PWSTR Command, uint32 Flags) ExecuteWide;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, PWSTR CommandFile, uint32 Flags) ExecuteCommandFileWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, IDebugBreakpoint2** Bp) GetBreakpointByIndex2;
				public function HRESULT(IDebugControl7 *self, uint32 Id, IDebugBreakpoint2** Bp) GetBreakpointById2;
				public function HRESULT(IDebugControl7 *self, uint32 Type, uint32 DesiredId, IDebugBreakpoint2** Bp) AddBreakpoint2;
				public function HRESULT(IDebugControl7 *self, IDebugBreakpoint2* Bp) RemoveBreakpoint2;
				public function HRESULT(IDebugControl7 *self, PWSTR Path, uint32 Flags, uint64* Handle) AddExtensionWide;
				public function HRESULT(IDebugControl7 *self, PWSTR Path, uint64* Handle) GetExtensionByPathWide;
				public function HRESULT(IDebugControl7 *self, uint64 Handle, PWSTR Function, PWSTR Arguments) CallExtensionWide;
				public function HRESULT(IDebugControl7 *self, uint64 Handle, PWSTR FuncName, FARPROC* Function) GetExtensionFunctionWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* TextSize) GetEventFilterTextWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetEventFilterCommandWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PWSTR Command) SetEventFilterCommandWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ArgumentSize) GetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PWSTR Argument) SetSpecificFilterArgumentWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* CommandSize) GetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, PWSTR Command) SetExceptionFilterSecondCommandWide;
				public function HRESULT(IDebugControl7 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed, char16* Description, uint32 DescriptionSize, uint32* DescriptionUsed) GetLastEventInformationWide;
				public function HRESULT(IDebugControl7 *self, PWSTR SrcText, uint32 Index, char16* SrcBuffer, uint32 SrcBufferSize, uint32* SrcSize, char16* DstBuffer, uint32 DstBufferSize, uint32* DstSize) GetTextReplacementWide;
				public function HRESULT(IDebugControl7 *self, PWSTR SrcText, PWSTR DstText) SetTextReplacementWide;
				public function HRESULT(IDebugControl7 *self, PWSTR AbbrevName) SetExpressionSyntaxByNameWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, char16* FullNameBuffer, uint32 FullNameBufferSize, uint32* FullNameSize, char16* AbbrevNameBuffer, uint32 AbbrevNameBufferSize, uint32* AbbrevNameSize) GetExpressionSyntaxNamesWide;
				public function HRESULT(IDebugControl7 *self, uint32 Index, uint32 Which, PWSTR Buffer, uint32 BufferSize, uint32* DescSize) GetEventIndexDescriptionWide;
				public function HRESULT(IDebugControl7 *self, uint8* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2;
				public function HRESULT(IDebugControl7 *self, PSTR File, uint32 Flags) OpenLogFile2;
				public function HRESULT(IDebugControl7 *self, char16* Buffer, uint32 BufferSize, uint32* FileSize, uint32* Flags) GetLogFile2Wide;
				public function HRESULT(IDebugControl7 *self, PWSTR File, uint32 Flags) OpenLogFile2Wide;
				public function HRESULT(IDebugControl7 *self, uint32* PlatformId, uint32* Win32Major, uint32* Win32Minor, uint32* KdMajor, uint32* KdMinor) GetSystemVersionValues;
				public function HRESULT(IDebugControl7 *self, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionString;
				public function HRESULT(IDebugControl7 *self, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSystemVersionStringWide;
				public function HRESULT(IDebugControl7 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTrace;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, DEBUG_STACK_FRAME* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTrace;
				public function HRESULT(IDebugControl7 *self, uint32* Type, uint32* ProcessId, uint32* ThreadId, void* Context, uint32 ContextSize, uint32* ContextUsed, void* ExtraInformation, uint32 ExtraInformationSize, uint32* ExtraInformationUsed) GetStoredEventInformation;
				public function HRESULT(IDebugControl7 *self, uint32* Flags, uint32 WhichString, uint8* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatus;
				public function HRESULT(IDebugControl7 *self, uint32* Flags, uint32 WhichString, char16* String, uint32 StringSize, uint32* StringNeeded) GetManagedStatusWide;
				public function HRESULT(IDebugControl7 *self, uint32 Flags) ResetManagedStatus;
				public function HRESULT(IDebugControl7 *self, uint64 FrameOffset, uint64 StackOffset, uint64 InstructionOffset, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32* FramesFilled) GetStackTraceEx;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, uint32 Flags) OutputStackTraceEx;
				public function HRESULT(IDebugControl7 *self, void* StartContext, uint32 StartContextSize, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32* FramesFilled) GetContextStackTraceEx;
				public function HRESULT(IDebugControl7 *self, uint32 OutputControl, DEBUG_STACK_FRAME_EX* Frames, uint32 FramesSize, void* FrameContexts, uint32 FrameContextsSize, uint32 FrameContextsEntrySize, uint32 Flags) OutputContextStackTraceEx;
				public function HRESULT(IDebugControl7 *self, Guid* Guid, IDebugBreakpoint3** Bp) GetBreakpointByGuid;
				public function HRESULT(IDebugControl7 *self, uint32* Status) GetExecutionStatusEx;
				public function HRESULT(IDebugControl7 *self, uint32* SendsAttempted, uint32* SecondsSinceLastResponse) GetSynchronizationStatus;
				public function HRESULT(IDebugControl7 *self, uint32 Flags, uint32* Class, uint32* Qualifier) GetDebuggeeType2;
			}
		}
		[CRepr]
		public struct IDebugDataSpaces : IUnknown
		{
			public const new Guid IID = .(0x88f7dfab, 0x3ea7, 0x4c3a, 0xae, 0xfb, 0xc4, 0xe8, 0x10, 0x61, 0x73, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtual;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtual;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, uint64 Length, void* Pattern, uint32 PatternSize, uint32 PatternGranularity, uint64* MatchOffset) SearchVirtual;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtualUncached;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtualUncached;
				public function HRESULT(IDebugDataSpaces *self, uint32 Count, uint64 Offset, uint64* Ptrs) ReadPointersVirtual;
				public function HRESULT(IDebugDataSpaces *self, uint32 Count, uint64 Offset, uint64* Ptrs) WritePointersVirtual;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadPhysical;
				public function HRESULT(IDebugDataSpaces *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WritePhysical;
				public function HRESULT(IDebugDataSpaces *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadControl;
				public function HRESULT(IDebugDataSpaces *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteControl;
				public function HRESULT(IDebugDataSpaces *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadIo;
				public function HRESULT(IDebugDataSpaces *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteIo;
				public function HRESULT(IDebugDataSpaces *self, uint32 Msr, uint64* Value) ReadMsr;
				public function HRESULT(IDebugDataSpaces *self, uint32 Msr, uint64 Value) WriteMsr;
				public function HRESULT(IDebugDataSpaces *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadBusData;
				public function HRESULT(IDebugDataSpaces *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteBusData;
				public function HRESULT(IDebugDataSpaces *self) CheckLowMemory;
				public function HRESULT(IDebugDataSpaces *self, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadDebuggerData;
				public function HRESULT(IDebugDataSpaces *self, uint32 Processor, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadProcessorSystemData;
			}
		}
		[CRepr]
		public struct IDebugDataSpaces2 : IUnknown
		{
			public const new Guid IID = .(0x7a5e852f, 0x96e9, 0x468f, 0xac, 0x1b, 0x0b, 0x3a, 0xdd, 0xc4, 0xa0, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, uint64 Length, void* Pattern, uint32 PatternSize, uint32 PatternGranularity, uint64* MatchOffset) SearchVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtualUncached;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtualUncached;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Count, uint64 Offset, uint64* Ptrs) ReadPointersVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Count, uint64 Offset, uint64* Ptrs) WritePointersVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadPhysical;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WritePhysical;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadControl;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteControl;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadIo;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteIo;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Msr, uint64* Value) ReadMsr;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Msr, uint64 Value) WriteMsr;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadBusData;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteBusData;
				public function HRESULT(IDebugDataSpaces2 *self) CheckLowMemory;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadDebuggerData;
				public function HRESULT(IDebugDataSpaces2 *self, uint32 Processor, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadProcessorSystemData;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Virtual, uint64* Physical) VirtualToPhysical;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Virtual, uint64* Offsets, uint32 OffsetsSize, uint32* Levels) GetVirtualTranslationPhysicalOffsets;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Handle, uint32 DataType, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadHandleData;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillVirtual;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillPhysical;
				public function HRESULT(IDebugDataSpaces2 *self, uint64 Offset, MEMORY_BASIC_INFORMATION64* Info) QueryVirtual;
			}
		}
		[CRepr]
		public struct IDebugDataSpaces3 : IUnknown
		{
			public const new Guid IID = .(0x23f79d6c, 0x8aaf, 0x4f7c, 0xa6, 0x07, 0x99, 0x95, 0xf5, 0x40, 0x7e, 0x63);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, uint64 Length, void* Pattern, uint32 PatternSize, uint32 PatternGranularity, uint64* MatchOffset) SearchVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtualUncached;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtualUncached;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Count, uint64 Offset, uint64* Ptrs) ReadPointersVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Count, uint64 Offset, uint64* Ptrs) WritePointersVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadPhysical;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WritePhysical;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadControl;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteControl;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadIo;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteIo;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Msr, uint64* Value) ReadMsr;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Msr, uint64 Value) WriteMsr;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadBusData;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteBusData;
				public function HRESULT(IDebugDataSpaces3 *self) CheckLowMemory;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadDebuggerData;
				public function HRESULT(IDebugDataSpaces3 *self, uint32 Processor, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadProcessorSystemData;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Virtual, uint64* Physical) VirtualToPhysical;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Virtual, uint64* Offsets, uint32 OffsetsSize, uint32* Levels) GetVirtualTranslationPhysicalOffsets;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Handle, uint32 DataType, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadHandleData;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillPhysical;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Offset, MEMORY_BASIC_INFORMATION64* Info) QueryVirtual;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 ImageBase, IMAGE_NT_HEADERS64* Headers) ReadImageNtHeaders;
				public function HRESULT(IDebugDataSpaces3 *self, Guid* Tag, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* TotalSize) ReadTagged;
				public function HRESULT(IDebugDataSpaces3 *self, uint64* Handle) StartEnumTagged;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Handle, Guid* Tag, uint32* Size) GetNextTagged;
				public function HRESULT(IDebugDataSpaces3 *self, uint64 Handle) EndEnumTagged;
			}
		}
		[CRepr]
		public struct IDebugDataSpaces4 : IUnknown
		{
			public const new Guid IID = .(0xd98ada1f, 0x29e9, 0x4ef5, 0xa6, 0xc0, 0xe5, 0x33, 0x49, 0x88, 0x32, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint64 Length, void* Pattern, uint32 PatternSize, uint32 PatternGranularity, uint64* MatchOffset) SearchVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadVirtualUncached;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteVirtualUncached;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Count, uint64 Offset, uint64* Ptrs) ReadPointersVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Count, uint64 Offset, uint64* Ptrs) WritePointersVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadPhysical;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WritePhysical;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadControl;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Processor, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteControl;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadIo;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 InterfaceType, uint32 BusNumber, uint32 AddressSpace, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteIo;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Msr, uint64* Value) ReadMsr;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Msr, uint64 Value) WriteMsr;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadBusData;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 BusDataType, uint32 BusNumber, uint32 SlotNumber, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteBusData;
				public function HRESULT(IDebugDataSpaces4 *self) CheckLowMemory;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadDebuggerData;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Processor, uint32 Index, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadProcessorSystemData;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Virtual, uint64* Physical) VirtualToPhysical;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Virtual, uint64* Offsets, uint32 OffsetsSize, uint32* Levels) GetVirtualTranslationPhysicalOffsets;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Handle, uint32 DataType, void* Buffer, uint32 BufferSize, uint32* DataSize) ReadHandleData;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Start, uint32 Size, void* Pattern, uint32 PatternSize, uint32* Filled) FillPhysical;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, MEMORY_BASIC_INFORMATION64* Info) QueryVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 ImageBase, IMAGE_NT_HEADERS64* Headers) ReadImageNtHeaders;
				public function HRESULT(IDebugDataSpaces4 *self, Guid* Tag, uint32 Offset, void* Buffer, uint32 BufferSize, uint32* TotalSize) ReadTagged;
				public function HRESULT(IDebugDataSpaces4 *self, uint64* Handle) StartEnumTagged;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Handle, Guid* Tag, uint32* Size) GetNextTagged;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Handle) EndEnumTagged;
				public function HRESULT(IDebugDataSpaces4 *self, uint32 Space, uint32 Which, uint64 Offset, void* Buffer, uint32 BufferSize, uint32* InfoSize) GetOffsetInformation;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint64* NextOffset) GetNextDifferentlyValidOffsetVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Base, uint32 Size, uint64* ValidBase, uint32* ValidSize) GetValidRegionVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint64 Length, uint32 Flags, void* Pattern, uint32 PatternSize, uint32 PatternGranularity, uint64* MatchOffset) SearchVirtual2;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 MaxBytes, uint8* Buffer, uint32 BufferSize, uint32* StringBytes) ReadMultiByteStringVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 MaxBytes, uint32 CodePage, char16* Buffer, uint32 BufferSize, uint32* StringBytes) ReadMultiByteStringVirtualWide;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 MaxBytes, uint32 CodePage, uint8* Buffer, uint32 BufferSize, uint32* StringBytes) ReadUnicodeStringVirtual;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 MaxBytes, char16* Buffer, uint32 BufferSize, uint32* StringBytes) ReadUnicodeStringVirtualWide;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 Flags, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadPhysical2;
				public function HRESULT(IDebugDataSpaces4 *self, uint64 Offset, uint32 Flags, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WritePhysical2;
			}
		}
		[CRepr]
		public struct IDebugEventCallbacks : IUnknown
		{
			public const new Guid IID = .(0x337be28b, 0x5036, 0x4d72, 0xb6, 0xbf, 0xc4, 0x5f, 0xbb, 0x9f, 0x2e, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugEventCallbacks *self, uint32* Mask) GetInterestMask;
				public function HRESULT(IDebugEventCallbacks *self, IDebugBreakpoint* Bp) Breakpoint;
				public function HRESULT(IDebugEventCallbacks *self, EXCEPTION_RECORD64* Exception, uint32 FirstChance) Exception;
				public function HRESULT(IDebugEventCallbacks *self, uint64 Handle, uint64 DataOffset, uint64 StartOffset) CreateThread;
				public function HRESULT(IDebugEventCallbacks *self, uint32 ExitCode) ExitThread;
				public function HRESULT(IDebugEventCallbacks *self, uint64 ImageFileHandle, uint64 Handle, uint64 BaseOffset, uint32 ModuleSize, PSTR ModuleName, PSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp, uint64 InitialThreadHandle, uint64 ThreadDataOffset, uint64 StartOffset) CreateProcessA;
				public function HRESULT(IDebugEventCallbacks *self, uint32 ExitCode) ExitProcess;
				public function HRESULT(IDebugEventCallbacks *self, uint64 ImageFileHandle, uint64 BaseOffset, uint32 ModuleSize, PSTR ModuleName, PSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp) LoadModule;
				public function HRESULT(IDebugEventCallbacks *self, PSTR ImageBaseName, uint64 BaseOffset) UnloadModule;
				public function HRESULT(IDebugEventCallbacks *self, uint32 Error, uint32 Level) SystemError;
				public function HRESULT(IDebugEventCallbacks *self, uint32 Status) SessionStatus;
				public function HRESULT(IDebugEventCallbacks *self, uint32 Flags, uint64 Argument) ChangeDebuggeeState;
				public function HRESULT(IDebugEventCallbacks *self, uint32 Flags, uint64 Argument) ChangeEngineState;
				public function HRESULT(IDebugEventCallbacks *self, uint32 Flags, uint64 Argument) ChangeSymbolState;
			}
		}
		[CRepr]
		public struct IDebugEventCallbacksWide : IUnknown
		{
			public const new Guid IID = .(0x0690e046, 0x9c23, 0x45ac, 0xa0, 0x4f, 0x98, 0x7a, 0xc2, 0x9a, 0xd0, 0xd3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugEventCallbacksWide *self, uint32* Mask) GetInterestMask;
				public function HRESULT(IDebugEventCallbacksWide *self, IDebugBreakpoint2* Bp) Breakpoint;
				public function HRESULT(IDebugEventCallbacksWide *self, EXCEPTION_RECORD64* Exception, uint32 FirstChance) Exception;
				public function HRESULT(IDebugEventCallbacksWide *self, uint64 Handle, uint64 DataOffset, uint64 StartOffset) CreateThread;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 ExitCode) ExitThread;
				public function HRESULT(IDebugEventCallbacksWide *self, uint64 ImageFileHandle, uint64 Handle, uint64 BaseOffset, uint32 ModuleSize, PWSTR ModuleName, PWSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp, uint64 InitialThreadHandle, uint64 ThreadDataOffset, uint64 StartOffset) CreateProcessA;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 ExitCode) ExitProcess;
				public function HRESULT(IDebugEventCallbacksWide *self, uint64 ImageFileHandle, uint64 BaseOffset, uint32 ModuleSize, PWSTR ModuleName, PWSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp) LoadModule;
				public function HRESULT(IDebugEventCallbacksWide *self, PWSTR ImageBaseName, uint64 BaseOffset) UnloadModule;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 Error, uint32 Level) SystemError;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 Status) SessionStatus;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 Flags, uint64 Argument) ChangeDebuggeeState;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 Flags, uint64 Argument) ChangeEngineState;
				public function HRESULT(IDebugEventCallbacksWide *self, uint32 Flags, uint64 Argument) ChangeSymbolState;
			}
		}
		[CRepr]
		public struct IDebugEventContextCallbacks : IUnknown
		{
			public const new Guid IID = .(0x61a4905b, 0x23f9, 0x4247, 0xb3, 0xc5, 0x53, 0xd0, 0x87, 0x52, 0x9a, 0xb7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugEventContextCallbacks *self, uint32* Mask) GetInterestMask;
				public function HRESULT(IDebugEventContextCallbacks *self, IDebugBreakpoint2* Bp, void* Context, uint32 ContextSize) Breakpoint;
				public function HRESULT(IDebugEventContextCallbacks *self, EXCEPTION_RECORD64* Exception, uint32 FirstChance, void* Context, uint32 ContextSize) Exception;
				public function HRESULT(IDebugEventContextCallbacks *self, uint64 Handle, uint64 DataOffset, uint64 StartOffset, void* Context, uint32 ContextSize) CreateThread;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 ExitCode, void* Context, uint32 ContextSize) ExitThread;
				public function HRESULT(IDebugEventContextCallbacks *self, uint64 ImageFileHandle, uint64 Handle, uint64 BaseOffset, uint32 ModuleSize, PWSTR ModuleName, PWSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp, uint64 InitialThreadHandle, uint64 ThreadDataOffset, uint64 StartOffset, void* Context, uint32 ContextSize) CreateProcessA;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 ExitCode, void* Context, uint32 ContextSize) ExitProcess;
				public function HRESULT(IDebugEventContextCallbacks *self, uint64 ImageFileHandle, uint64 BaseOffset, uint32 ModuleSize, PWSTR ModuleName, PWSTR ImageName, uint32 CheckSum, uint32 TimeDateStamp, void* Context, uint32 ContextSize) LoadModule;
				public function HRESULT(IDebugEventContextCallbacks *self, PWSTR ImageBaseName, uint64 BaseOffset, void* Context, uint32 ContextSize) UnloadModule;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 Error, uint32 Level, void* Context, uint32 ContextSize) SystemError;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 Status) SessionStatus;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 Flags, uint64 Argument, void* Context, uint32 ContextSize) ChangeDebuggeeState;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 Flags, uint64 Argument, void* Context, uint32 ContextSize) ChangeEngineState;
				public function HRESULT(IDebugEventContextCallbacks *self, uint32 Flags, uint64 Argument) ChangeSymbolState;
			}
		}
		[CRepr]
		public struct IDebugInputCallbacks : IUnknown
		{
			public const new Guid IID = .(0x9f50e42c, 0xf136, 0x499e, 0x9a, 0x97, 0x73, 0x03, 0x6c, 0x94, 0xed, 0x2d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugInputCallbacks *self, uint32 BufferSize) StartInput;
				public function HRESULT(IDebugInputCallbacks *self) EndInput;
			}
		}
		[CRepr]
		public struct IDebugOutputCallbacks : IUnknown
		{
			public const new Guid IID = .(0x4bf58045, 0xd654, 0x4c40, 0xb0, 0xaf, 0x68, 0x30, 0x90, 0xf3, 0x56, 0xdc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugOutputCallbacks *self, uint32 Mask, PSTR Text) Output;
			}
		}
		[CRepr]
		public struct IDebugOutputCallbacksWide : IUnknown
		{
			public const new Guid IID = .(0x4c7fd663, 0xc394, 0x4e26, 0x8e, 0xf1, 0x34, 0xad, 0x5e, 0xd3, 0x76, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugOutputCallbacksWide *self, uint32 Mask, PWSTR Text) Output;
			}
		}
		[CRepr]
		public struct IDebugOutputCallbacks2 : IUnknown
		{
			public const new Guid IID = .(0x67721fe9, 0x56d2, 0x4a44, 0xa3, 0x25, 0x2b, 0x65, 0x51, 0x3c, 0xe6, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugOutputCallbacks2 *self, uint32 Mask, PSTR Text) Output;
				public function HRESULT(IDebugOutputCallbacks2 *self, uint32* Mask) GetInterestMask;
				public function HRESULT(IDebugOutputCallbacks2 *self, uint32 Which, uint32 Flags, uint64 Arg, PWSTR Text) Output2;
			}
		}
		[CRepr]
		public struct IDebugRegisters : IUnknown
		{
			public const new Guid IID = .(0xce289126, 0x9e84, 0x45a7, 0x93, 0x7e, 0x67, 0xbb, 0x18, 0x69, 0x14, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugRegisters *self, uint32* Number) GetNumberRegisters;
				public function HRESULT(IDebugRegisters *self, uint32 Register, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, DEBUG_REGISTER_DESCRIPTION* Desc) GetDescription;
				public function HRESULT(IDebugRegisters *self, PSTR Name, uint32* Index) GetIndexByName;
				public function HRESULT(IDebugRegisters *self, uint32 Register, DEBUG_VALUE* Value) GetValue;
				public function HRESULT(IDebugRegisters *self, uint32 Register, DEBUG_VALUE* Value) SetValue;
				public function HRESULT(IDebugRegisters *self, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) GetValues;
				public function HRESULT(IDebugRegisters *self, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) SetValues;
				public function HRESULT(IDebugRegisters *self, uint32 OutputControl, uint32 Flags) OutputRegisters;
				public function HRESULT(IDebugRegisters *self, uint64* Offset) GetInstructionOffset;
				public function HRESULT(IDebugRegisters *self, uint64* Offset) GetStackOffset;
				public function HRESULT(IDebugRegisters *self, uint64* Offset) GetFrameOffset;
			}
		}
		[CRepr]
		public struct IDebugRegisters2 : IUnknown
		{
			public const new Guid IID = .(0x1656afa9, 0x19c6, 0x4e3a, 0x97, 0xe7, 0x5d, 0xc9, 0x16, 0x0c, 0xf9, 0xc4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugRegisters2 *self, uint32* Number) GetNumberRegisters;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, DEBUG_REGISTER_DESCRIPTION* Desc) GetDescription;
				public function HRESULT(IDebugRegisters2 *self, PSTR Name, uint32* Index) GetIndexByName;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, DEBUG_VALUE* Value) GetValue;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, DEBUG_VALUE* Value) SetValue;
				public function HRESULT(IDebugRegisters2 *self, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) GetValues;
				public function HRESULT(IDebugRegisters2 *self, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) SetValues;
				public function HRESULT(IDebugRegisters2 *self, uint32 OutputControl, uint32 Flags) OutputRegisters;
				public function HRESULT(IDebugRegisters2 *self, uint64* Offset) GetInstructionOffset;
				public function HRESULT(IDebugRegisters2 *self, uint64* Offset) GetStackOffset;
				public function HRESULT(IDebugRegisters2 *self, uint64* Offset) GetFrameOffset;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, DEBUG_REGISTER_DESCRIPTION* Desc) GetDescriptionWide;
				public function HRESULT(IDebugRegisters2 *self, PWSTR Name, uint32* Index) GetIndexByNameWide;
				public function HRESULT(IDebugRegisters2 *self, uint32* Number) GetNumberPseudoRegisters;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* TypeModule, uint32* TypeId) GetPseudoDescription;
				public function HRESULT(IDebugRegisters2 *self, uint32 Register, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* TypeModule, uint32* TypeId) GetPseudoDescriptionWide;
				public function HRESULT(IDebugRegisters2 *self, PSTR Name, uint32* Index) GetPseudoIndexByName;
				public function HRESULT(IDebugRegisters2 *self, PWSTR Name, uint32* Index) GetPseudoIndexByNameWide;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) GetPseudoValues;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) SetPseudoValues;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) GetValues2;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint32 Count, uint32* Indices, uint32 Start, DEBUG_VALUE* Values) SetValues2;
				public function HRESULT(IDebugRegisters2 *self, uint32 OutputControl, uint32 Source, uint32 Flags) OutputRegisters2;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint64* Offset) GetInstructionOffset2;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint64* Offset) GetStackOffset2;
				public function HRESULT(IDebugRegisters2 *self, uint32 Source, uint64* Offset) GetFrameOffset2;
			}
		}
		[CRepr]
		public struct IDebugSymbolGroup : IUnknown
		{
			public const new Guid IID = .(0xf2528316, 0x0f1a, 0x4431, 0xae, 0xed, 0x11, 0xd0, 0x96, 0xe1, 0xe2, 0xab);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbolGroup *self, uint32* Number) GetNumberSymbols;
				public function HRESULT(IDebugSymbolGroup *self, PSTR Name, uint32* Index) AddSymbol;
				public function HRESULT(IDebugSymbolGroup *self, PSTR Name) RemoveSymbolByName;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Index) RemoveSymbolByIndex;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolName;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Start, uint32 Count, DEBUG_SYMBOL_PARAMETERS* Params) GetSymbolParameters;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Index, BOOL Expand) ExpandSymbol;
				public function HRESULT(IDebugSymbolGroup *self, uint32 OutputControl, uint32 Flags, uint32 Start, uint32 Count) OutputSymbols;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Index, PSTR Value) WriteSymbol;
				public function HRESULT(IDebugSymbolGroup *self, uint32 Index, PSTR Type) OutputAsType;
			}
		}
		[CRepr]
		public struct IDebugSymbolGroup2 : IUnknown
		{
			public const new Guid IID = .(0x6a7ccc5f, 0xfb5e, 0x4dcc, 0xb4, 0x1c, 0x6c, 0x20, 0x30, 0x7b, 0xcc, 0xc7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbolGroup2 *self, uint32* Number) GetNumberSymbols;
				public function HRESULT(IDebugSymbolGroup2 *self, PSTR Name, uint32* Index) AddSymbol;
				public function HRESULT(IDebugSymbolGroup2 *self, PSTR Name) RemoveSymbolByName;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index) RemoveSymbolByIndex;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolName;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Start, uint32 Count, DEBUG_SYMBOL_PARAMETERS* Params) GetSymbolParameters;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, BOOL Expand) ExpandSymbol;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 OutputControl, uint32 Flags, uint32 Start, uint32 Count) OutputSymbols;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, PSTR Value) WriteSymbol;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, PSTR Type) OutputAsType;
				public function HRESULT(IDebugSymbolGroup2 *self, PWSTR Name, uint32* Index) AddSymbolWide;
				public function HRESULT(IDebugSymbolGroup2 *self, PWSTR Name) RemoveSymbolByNameWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolNameWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, PWSTR Value) WriteSymbolWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, PWSTR Type) OutputAsTypeWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolTypeName;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolTypeNameWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint32* Size) GetSymbolSize;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint64* Offset) GetSymbolOffset;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint32* Register) GetSymbolRegister;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolValueText;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetSymbolValueTextWide;
				public function HRESULT(IDebugSymbolGroup2 *self, uint32 Index, DEBUG_SYMBOL_ENTRY* Entry) GetSymbolEntryInformation;
			}
		}
		[CRepr]
		public struct IDebugSymbols : IUnknown
		{
			public const new Guid IID = .(0x8c31e98c, 0x983a, 0x48a5, 0x90, 0x16, 0x6f, 0xe5, 0xd6, 0x67, 0xa9, 0x50);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbols *self, uint32* Options) GetSymbolOptions;
				public function HRESULT(IDebugSymbols *self, uint32 Options) AddSymbolOptions;
				public function HRESULT(IDebugSymbols *self, uint32 Options) RemoveSymbolOptions;
				public function HRESULT(IDebugSymbols *self, uint32 Options) SetSymbolOptions;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffset;
				public function HRESULT(IDebugSymbols *self, PSTR Symbol, uint64* Offset) GetOffsetByName;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, int32 Delta, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffset;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffset;
				public function HRESULT(IDebugSymbols *self, uint32 Line, PSTR File, uint64* Offset) GetOffsetByLine;
				public function HRESULT(IDebugSymbols *self, uint32* Loaded, uint32* Unloaded) GetNumberModules;
				public function HRESULT(IDebugSymbols *self, uint32 Index, uint64* Base) GetModuleByIndex;
				public function HRESULT(IDebugSymbols *self, PSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleName;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByOffset;
				public function HRESULT(IDebugSymbols *self, uint32 Index, uint64 Base, uint8* ImageNameBuffer, uint32 ImageNameBufferSize, uint32* ImageNameSize, uint8* ModuleNameBuffer, uint32 ModuleNameBufferSize, uint32* ModuleNameSize, uint8* LoadedImageNameBuffer, uint32 LoadedImageNameBufferSize, uint32* LoadedImageNameSize) GetModuleNames;
				public function HRESULT(IDebugSymbols *self, uint32 Count, uint64* Bases, uint32 Start, DEBUG_MODULE_PARAMETERS* Params) GetModuleParameters;
				public function HRESULT(IDebugSymbols *self, PSTR Symbol, uint64* Base) GetSymbolModule;
				public function HRESULT(IDebugSymbols *self, uint64 Module, uint32 TypeId, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeName;
				public function HRESULT(IDebugSymbols *self, uint64 Module, PSTR Name, uint32* TypeId) GetTypeId;
				public function HRESULT(IDebugSymbols *self, uint64 Module, uint32 TypeId, uint32* Size) GetTypeSize;
				public function HRESULT(IDebugSymbols *self, uint64 Module, uint32 TypeId, PSTR Field, uint32* Offset) GetFieldOffset;
				public function HRESULT(IDebugSymbols *self, PSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeId;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint32* TypeId, uint64* Module) GetOffsetTypeId;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataVirtual;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataVirtual;
				public function HRESULT(IDebugSymbols *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataVirtual;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataPhysical;
				public function HRESULT(IDebugSymbols *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataPhysical;
				public function HRESULT(IDebugSymbols *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataPhysical;
				public function HRESULT(IDebugSymbols *self, uint64* InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScope;
				public function HRESULT(IDebugSymbols *self, uint64 InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScope;
				public function HRESULT(IDebugSymbols *self) ResetScope;
				public function HRESULT(IDebugSymbols *self, uint32 Flags, IDebugSymbolGroup* Update, IDebugSymbolGroup** Symbols) GetScopeSymbolGroup;
				public function HRESULT(IDebugSymbols *self, IDebugSymbolGroup** Group) CreateSymbolGroup;
				public function HRESULT(IDebugSymbols *self, PSTR Pattern, uint64* Handle) StartSymbolMatch;
				public function HRESULT(IDebugSymbols *self, uint64 Handle, uint8* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatch;
				public function HRESULT(IDebugSymbols *self, uint64 Handle) EndSymbolMatch;
				public function HRESULT(IDebugSymbols *self, PSTR Module) Reload;
				public function HRESULT(IDebugSymbols *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPath;
				public function HRESULT(IDebugSymbols *self, PSTR Path) SetSymbolPath;
				public function HRESULT(IDebugSymbols *self, PSTR Addition) AppendSymbolPath;
				public function HRESULT(IDebugSymbols *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePath;
				public function HRESULT(IDebugSymbols *self, PSTR Path) SetImagePath;
				public function HRESULT(IDebugSymbols *self, PSTR Addition) AppendImagePath;
				public function HRESULT(IDebugSymbols *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePath;
				public function HRESULT(IDebugSymbols *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElement;
				public function HRESULT(IDebugSymbols *self, PSTR Path) SetSourcePath;
				public function HRESULT(IDebugSymbols *self, PSTR Addition) AppendSourcePath;
				public function HRESULT(IDebugSymbols *self, uint32 StartElement, PSTR File, uint32 Flags, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFile;
				public function HRESULT(IDebugSymbols *self, PSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsets;
			}
		}
		[CRepr]
		public struct IDebugSymbols2 : IUnknown
		{
			public const new Guid IID = .(0x3a707211, 0xafdd, 0x4495, 0xad, 0x4f, 0x56, 0xfe, 0xcd, 0xf8, 0x16, 0x3f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbols2 *self, uint32* Options) GetSymbolOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) AddSymbolOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) RemoveSymbolOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) SetSymbolOptions;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffset;
				public function HRESULT(IDebugSymbols2 *self, PSTR Symbol, uint64* Offset) GetOffsetByName;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, int32 Delta, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffset;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffset;
				public function HRESULT(IDebugSymbols2 *self, uint32 Line, PSTR File, uint64* Offset) GetOffsetByLine;
				public function HRESULT(IDebugSymbols2 *self, uint32* Loaded, uint32* Unloaded) GetNumberModules;
				public function HRESULT(IDebugSymbols2 *self, uint32 Index, uint64* Base) GetModuleByIndex;
				public function HRESULT(IDebugSymbols2 *self, PSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleName;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByOffset;
				public function HRESULT(IDebugSymbols2 *self, uint32 Index, uint64 Base, uint8* ImageNameBuffer, uint32 ImageNameBufferSize, uint32* ImageNameSize, uint8* ModuleNameBuffer, uint32 ModuleNameBufferSize, uint32* ModuleNameSize, uint8* LoadedImageNameBuffer, uint32 LoadedImageNameBufferSize, uint32* LoadedImageNameSize) GetModuleNames;
				public function HRESULT(IDebugSymbols2 *self, uint32 Count, uint64* Bases, uint32 Start, DEBUG_MODULE_PARAMETERS* Params) GetModuleParameters;
				public function HRESULT(IDebugSymbols2 *self, PSTR Symbol, uint64* Base) GetSymbolModule;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, uint32 TypeId, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeName;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, PSTR Name, uint32* TypeId) GetTypeId;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, uint32 TypeId, uint32* Size) GetTypeSize;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, uint32 TypeId, PSTR Field, uint32* Offset) GetFieldOffset;
				public function HRESULT(IDebugSymbols2 *self, PSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeId;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint32* TypeId, uint64* Module) GetOffsetTypeId;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataVirtual;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataVirtual;
				public function HRESULT(IDebugSymbols2 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataVirtual;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataPhysical;
				public function HRESULT(IDebugSymbols2 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataPhysical;
				public function HRESULT(IDebugSymbols2 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataPhysical;
				public function HRESULT(IDebugSymbols2 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScope;
				public function HRESULT(IDebugSymbols2 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScope;
				public function HRESULT(IDebugSymbols2 *self) ResetScope;
				public function HRESULT(IDebugSymbols2 *self, uint32 Flags, IDebugSymbolGroup* Update, IDebugSymbolGroup** Symbols) GetScopeSymbolGroup;
				public function HRESULT(IDebugSymbols2 *self, IDebugSymbolGroup** Group) CreateSymbolGroup;
				public function HRESULT(IDebugSymbols2 *self, PSTR Pattern, uint64* Handle) StartSymbolMatch;
				public function HRESULT(IDebugSymbols2 *self, uint64 Handle, uint8* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatch;
				public function HRESULT(IDebugSymbols2 *self, uint64 Handle) EndSymbolMatch;
				public function HRESULT(IDebugSymbols2 *self, PSTR Module) Reload;
				public function HRESULT(IDebugSymbols2 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPath;
				public function HRESULT(IDebugSymbols2 *self, PSTR Path) SetSymbolPath;
				public function HRESULT(IDebugSymbols2 *self, PSTR Addition) AppendSymbolPath;
				public function HRESULT(IDebugSymbols2 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePath;
				public function HRESULT(IDebugSymbols2 *self, PSTR Path) SetImagePath;
				public function HRESULT(IDebugSymbols2 *self, PSTR Addition) AppendImagePath;
				public function HRESULT(IDebugSymbols2 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePath;
				public function HRESULT(IDebugSymbols2 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElement;
				public function HRESULT(IDebugSymbols2 *self, PSTR Path) SetSourcePath;
				public function HRESULT(IDebugSymbols2 *self, PSTR Addition) AppendSourcePath;
				public function HRESULT(IDebugSymbols2 *self, uint32 StartElement, PSTR File, uint32 Flags, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFile;
				public function HRESULT(IDebugSymbols2 *self, PSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsets;
				public function HRESULT(IDebugSymbols2 *self, uint32 Index, uint64 Base, PSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformation;
				public function HRESULT(IDebugSymbols2 *self, uint32 Which, uint32 Index, uint64 Base, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameString;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, uint32 TypeId, uint64 Value, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantName;
				public function HRESULT(IDebugSymbols2 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldName;
				public function HRESULT(IDebugSymbols2 *self, uint32* Options) GetTypeOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) AddTypeOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) RemoveTypeOptions;
				public function HRESULT(IDebugSymbols2 *self, uint32 Options) SetTypeOptions;
			}
		}
		[CRepr]
		public struct IDebugSymbols3 : IUnknown
		{
			public const new Guid IID = .(0xf02fbecc, 0x50ac, 0x4f36, 0x9a, 0xd9, 0xc9, 0x75, 0xe8, 0xf3, 0x2f, 0xf8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbols3 *self, uint32* Options) GetSymbolOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) AddSymbolOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) RemoveSymbolOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) SetSymbolOptions;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffset;
				public function HRESULT(IDebugSymbols3 *self, PSTR Symbol, uint64* Offset) GetOffsetByName;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, int32 Delta, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint32 Line, PSTR File, uint64* Offset) GetOffsetByLine;
				public function HRESULT(IDebugSymbols3 *self, uint32* Loaded, uint32* Unloaded) GetNumberModules;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint64* Base) GetModuleByIndex;
				public function HRESULT(IDebugSymbols3 *self, PSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleName;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint64 Base, uint8* ImageNameBuffer, uint32 ImageNameBufferSize, uint32* ImageNameSize, uint8* ModuleNameBuffer, uint32 ModuleNameBufferSize, uint32* ModuleNameSize, uint8* LoadedImageNameBuffer, uint32 LoadedImageNameBufferSize, uint32* LoadedImageNameSize) GetModuleNames;
				public function HRESULT(IDebugSymbols3 *self, uint32 Count, uint64* Bases, uint32 Start, DEBUG_MODULE_PARAMETERS* Params) GetModuleParameters;
				public function HRESULT(IDebugSymbols3 *self, PSTR Symbol, uint64* Base) GetSymbolModule;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeName;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, PSTR Name, uint32* TypeId) GetTypeId;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint32* Size) GetTypeSize;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, PSTR Field, uint32* Offset) GetFieldOffset;
				public function HRESULT(IDebugSymbols3 *self, PSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeId;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32* TypeId, uint64* Module) GetOffsetTypeId;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataVirtual;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataVirtual;
				public function HRESULT(IDebugSymbols3 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataVirtual;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataPhysical;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataPhysical;
				public function HRESULT(IDebugSymbols3 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataPhysical;
				public function HRESULT(IDebugSymbols3 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScope;
				public function HRESULT(IDebugSymbols3 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScope;
				public function HRESULT(IDebugSymbols3 *self) ResetScope;
				public function HRESULT(IDebugSymbols3 *self, uint32 Flags, IDebugSymbolGroup* Update, IDebugSymbolGroup** Symbols) GetScopeSymbolGroup;
				public function HRESULT(IDebugSymbols3 *self, IDebugSymbolGroup** Group) CreateSymbolGroup;
				public function HRESULT(IDebugSymbols3 *self, PSTR Pattern, uint64* Handle) StartSymbolMatch;
				public function HRESULT(IDebugSymbols3 *self, uint64 Handle, uint8* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatch;
				public function HRESULT(IDebugSymbols3 *self, uint64 Handle) EndSymbolMatch;
				public function HRESULT(IDebugSymbols3 *self, PSTR Module) Reload;
				public function HRESULT(IDebugSymbols3 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPath;
				public function HRESULT(IDebugSymbols3 *self, PSTR Path) SetSymbolPath;
				public function HRESULT(IDebugSymbols3 *self, PSTR Addition) AppendSymbolPath;
				public function HRESULT(IDebugSymbols3 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePath;
				public function HRESULT(IDebugSymbols3 *self, PSTR Path) SetImagePath;
				public function HRESULT(IDebugSymbols3 *self, PSTR Addition) AppendImagePath;
				public function HRESULT(IDebugSymbols3 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePath;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElement;
				public function HRESULT(IDebugSymbols3 *self, PSTR Path) SetSourcePath;
				public function HRESULT(IDebugSymbols3 *self, PSTR Addition) AppendSourcePath;
				public function HRESULT(IDebugSymbols3 *self, uint32 StartElement, PSTR File, uint32 Flags, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFile;
				public function HRESULT(IDebugSymbols3 *self, PSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsets;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint64 Base, PSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformation;
				public function HRESULT(IDebugSymbols3 *self, uint32 Which, uint32 Index, uint64 Base, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameString;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint64 Value, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantName;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldName;
				public function HRESULT(IDebugSymbols3 *self, uint32* Options) GetTypeOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) AddTypeOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) RemoveTypeOptions;
				public function HRESULT(IDebugSymbols3 *self, uint32 Options) SetTypeOptions;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffsetWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Symbol, uint64* Offset) GetOffsetByNameWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, int32 Delta, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffsetWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32* Line, char16* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffsetWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Line, PWSTR File, uint64* Offset) GetOffsetByLineWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleNameWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Symbol, uint64* Base) GetSymbolModuleWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeNameWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, PWSTR Name, uint32* TypeId) GetTypeIdWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, PWSTR Field, uint32* Offset) GetFieldOffsetWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeIdWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Flags, IDebugSymbolGroup2* Update, IDebugSymbolGroup2** Symbols) GetScopeSymbolGroup2;
				public function HRESULT(IDebugSymbols3 *self, IDebugSymbolGroup2** Group) CreateSymbolGroup2;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Pattern, uint64* Handle) StartSymbolMatchWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Handle, char16* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatchWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Module) ReloadWide;
				public function HRESULT(IDebugSymbols3 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPathWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Path) SetSymbolPathWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Addition) AppendSymbolPathWide;
				public function HRESULT(IDebugSymbols3 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePathWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Path) SetImagePathWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Addition) AppendImagePathWide;
				public function HRESULT(IDebugSymbols3 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePathWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElementWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Path) SetSourcePathWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Addition) AppendSourcePathWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 StartElement, PWSTR File, uint32 Flags, uint32* FoundElement, char16* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileWide;
				public function HRESULT(IDebugSymbols3 *self, PWSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsetsWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint64 Base, PWSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformationWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Which, uint32 Index, uint64 Base, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameStringWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint64 Value, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantNameWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldNameWide;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index, uint64 Base) IsManagedModule;
				public function HRESULT(IDebugSymbols3 *self, PSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2Wide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByOffset2;
				public function HRESULT(IDebugSymbols3 *self, uint64 Base, uint32 Size, PSTR ImagePath, PSTR ModuleName, uint32 Flags) AddSyntheticModule;
				public function HRESULT(IDebugSymbols3 *self, uint64 Base, uint32 Size, PWSTR ImagePath, PWSTR ModuleName, uint32 Flags) AddSyntheticModuleWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Base) RemoveSyntheticModule;
				public function HRESULT(IDebugSymbols3 *self, uint32* Index) GetCurrentScopeFrameIndex;
				public function HRESULT(IDebugSymbols3 *self, uint32 Index) SetScopeFrameByIndex;
				public function HRESULT(IDebugSymbols3 *self, uint32 OutputControl, uint64 InfoOffset) SetScopeFromJitDebugInfo;
				public function HRESULT(IDebugSymbols3 *self) SetScopeFromStoredEvent;
				public function HRESULT(IDebugSymbols3 *self, uint32 OutputControl, uint32 Flags, uint64 Offset) OutputSymbolByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 Flags, void* Buffer, uint32 BufferSize, uint32* BufferNeeded) GetFunctionEntryByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 ContainerTypeId, PSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffset;
				public function HRESULT(IDebugSymbols3 *self, uint64 Module, uint32 ContainerTypeId, PWSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffsetWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 Size, PSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbol;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 Size, PWSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbolWide;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* Id) RemoveSyntheticSymbol;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint64* Displacements, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByOffset;
				public function HRESULT(IDebugSymbols3 *self, PSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByName;
				public function HRESULT(IDebugSymbols3 *self, PWSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByNameWide;
				public function HRESULT(IDebugSymbols3 *self, uint64 ModuleBase, uint32 Token, DEBUG_MODULE_AND_ID* Id) GetSymbolEntryByToken;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* Id, DEBUG_SYMBOL_ENTRY* Info) GetSymbolEntryInformation;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryString;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryStringWide;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* Id, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSymbolEntryOffsetRegions;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_MODULE_AND_ID* FromId, uint32 Flags, DEBUG_MODULE_AND_ID* ToId) GetSymbolEntryBySymbolEntry;
				public function HRESULT(IDebugSymbols3 *self, uint64 Offset, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByOffset;
				public function HRESULT(IDebugSymbols3 *self, uint32 Line, PSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLine;
				public function HRESULT(IDebugSymbols3 *self, uint32 Line, PWSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLineWide;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryString;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryStringWide;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSourceEntryOffsetRegions;
				public function HRESULT(IDebugSymbols3 *self, DEBUG_SYMBOL_SOURCE_ENTRY* FromEntry, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* ToEntry) GetSourceEntryBySourceEntry;
			}
		}
		[CRepr]
		public struct IDebugSymbols4 : IUnknown
		{
			public const new Guid IID = .(0xe391bbd8, 0x9d8c, 0x4418, 0x84, 0x0b, 0xc0, 0x06, 0x59, 0x2a, 0x17, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbols4 *self, uint32* Options) GetSymbolOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) AddSymbolOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) RemoveSymbolOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) SetSymbolOptions;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffset;
				public function HRESULT(IDebugSymbols4 *self, PSTR Symbol, uint64* Offset) GetOffsetByName;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, int32 Delta, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint32 Line, PSTR File, uint64* Offset) GetOffsetByLine;
				public function HRESULT(IDebugSymbols4 *self, uint32* Loaded, uint32* Unloaded) GetNumberModules;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint64* Base) GetModuleByIndex;
				public function HRESULT(IDebugSymbols4 *self, PSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleName;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint64 Base, uint8* ImageNameBuffer, uint32 ImageNameBufferSize, uint32* ImageNameSize, uint8* ModuleNameBuffer, uint32 ModuleNameBufferSize, uint32* ModuleNameSize, uint8* LoadedImageNameBuffer, uint32 LoadedImageNameBufferSize, uint32* LoadedImageNameSize) GetModuleNames;
				public function HRESULT(IDebugSymbols4 *self, uint32 Count, uint64* Bases, uint32 Start, DEBUG_MODULE_PARAMETERS* Params) GetModuleParameters;
				public function HRESULT(IDebugSymbols4 *self, PSTR Symbol, uint64* Base) GetSymbolModule;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeName;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, PSTR Name, uint32* TypeId) GetTypeId;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint32* Size) GetTypeSize;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, PSTR Field, uint32* Offset) GetFieldOffset;
				public function HRESULT(IDebugSymbols4 *self, PSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeId;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32* TypeId, uint64* Module) GetOffsetTypeId;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataVirtual;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataVirtual;
				public function HRESULT(IDebugSymbols4 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataVirtual;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataPhysical;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataPhysical;
				public function HRESULT(IDebugSymbols4 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataPhysical;
				public function HRESULT(IDebugSymbols4 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScope;
				public function HRESULT(IDebugSymbols4 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScope;
				public function HRESULT(IDebugSymbols4 *self) ResetScope;
				public function HRESULT(IDebugSymbols4 *self, uint32 Flags, IDebugSymbolGroup* Update, IDebugSymbolGroup** Symbols) GetScopeSymbolGroup;
				public function HRESULT(IDebugSymbols4 *self, IDebugSymbolGroup** Group) CreateSymbolGroup;
				public function HRESULT(IDebugSymbols4 *self, PSTR Pattern, uint64* Handle) StartSymbolMatch;
				public function HRESULT(IDebugSymbols4 *self, uint64 Handle, uint8* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatch;
				public function HRESULT(IDebugSymbols4 *self, uint64 Handle) EndSymbolMatch;
				public function HRESULT(IDebugSymbols4 *self, PSTR Module) Reload;
				public function HRESULT(IDebugSymbols4 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPath;
				public function HRESULT(IDebugSymbols4 *self, PSTR Path) SetSymbolPath;
				public function HRESULT(IDebugSymbols4 *self, PSTR Addition) AppendSymbolPath;
				public function HRESULT(IDebugSymbols4 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePath;
				public function HRESULT(IDebugSymbols4 *self, PSTR Path) SetImagePath;
				public function HRESULT(IDebugSymbols4 *self, PSTR Addition) AppendImagePath;
				public function HRESULT(IDebugSymbols4 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePath;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElement;
				public function HRESULT(IDebugSymbols4 *self, PSTR Path) SetSourcePath;
				public function HRESULT(IDebugSymbols4 *self, PSTR Addition) AppendSourcePath;
				public function HRESULT(IDebugSymbols4 *self, uint32 StartElement, PSTR File, uint32 Flags, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFile;
				public function HRESULT(IDebugSymbols4 *self, PSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsets;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint64 Base, PSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformation;
				public function HRESULT(IDebugSymbols4 *self, uint32 Which, uint32 Index, uint64 Base, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameString;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint64 Value, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantName;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldName;
				public function HRESULT(IDebugSymbols4 *self, uint32* Options) GetTypeOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) AddTypeOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) RemoveTypeOptions;
				public function HRESULT(IDebugSymbols4 *self, uint32 Options) SetTypeOptions;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffsetWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Symbol, uint64* Offset) GetOffsetByNameWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, int32 Delta, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffsetWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32* Line, char16* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffsetWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Line, PWSTR File, uint64* Offset) GetOffsetByLineWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleNameWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Symbol, uint64* Base) GetSymbolModuleWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeNameWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, PWSTR Name, uint32* TypeId) GetTypeIdWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, PWSTR Field, uint32* Offset) GetFieldOffsetWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeIdWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Flags, IDebugSymbolGroup2* Update, IDebugSymbolGroup2** Symbols) GetScopeSymbolGroup2;
				public function HRESULT(IDebugSymbols4 *self, IDebugSymbolGroup2** Group) CreateSymbolGroup2;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Pattern, uint64* Handle) StartSymbolMatchWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Handle, char16* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatchWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Module) ReloadWide;
				public function HRESULT(IDebugSymbols4 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPathWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Path) SetSymbolPathWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Addition) AppendSymbolPathWide;
				public function HRESULT(IDebugSymbols4 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePathWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Path) SetImagePathWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Addition) AppendImagePathWide;
				public function HRESULT(IDebugSymbols4 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePathWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElementWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Path) SetSourcePathWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Addition) AppendSourcePathWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 StartElement, PWSTR File, uint32 Flags, uint32* FoundElement, char16* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileWide;
				public function HRESULT(IDebugSymbols4 *self, PWSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsetsWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint64 Base, PWSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformationWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Which, uint32 Index, uint64 Base, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameStringWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint64 Value, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantNameWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldNameWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index, uint64 Base) IsManagedModule;
				public function HRESULT(IDebugSymbols4 *self, PSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2Wide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByOffset2;
				public function HRESULT(IDebugSymbols4 *self, uint64 Base, uint32 Size, PSTR ImagePath, PSTR ModuleName, uint32 Flags) AddSyntheticModule;
				public function HRESULT(IDebugSymbols4 *self, uint64 Base, uint32 Size, PWSTR ImagePath, PWSTR ModuleName, uint32 Flags) AddSyntheticModuleWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Base) RemoveSyntheticModule;
				public function HRESULT(IDebugSymbols4 *self, uint32* Index) GetCurrentScopeFrameIndex;
				public function HRESULT(IDebugSymbols4 *self, uint32 Index) SetScopeFrameByIndex;
				public function HRESULT(IDebugSymbols4 *self, uint32 OutputControl, uint64 InfoOffset) SetScopeFromJitDebugInfo;
				public function HRESULT(IDebugSymbols4 *self) SetScopeFromStoredEvent;
				public function HRESULT(IDebugSymbols4 *self, uint32 OutputControl, uint32 Flags, uint64 Offset) OutputSymbolByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 Flags, void* Buffer, uint32 BufferSize, uint32* BufferNeeded) GetFunctionEntryByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 ContainerTypeId, PSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffset;
				public function HRESULT(IDebugSymbols4 *self, uint64 Module, uint32 ContainerTypeId, PWSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffsetWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 Size, PSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbol;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 Size, PWSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbolWide;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* Id) RemoveSyntheticSymbol;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint64* Displacements, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByOffset;
				public function HRESULT(IDebugSymbols4 *self, PSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByName;
				public function HRESULT(IDebugSymbols4 *self, PWSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByNameWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 ModuleBase, uint32 Token, DEBUG_MODULE_AND_ID* Id) GetSymbolEntryByToken;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* Id, DEBUG_SYMBOL_ENTRY* Info) GetSymbolEntryInformation;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryString;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryStringWide;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* Id, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSymbolEntryOffsetRegions;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_MODULE_AND_ID* FromId, uint32 Flags, DEBUG_MODULE_AND_ID* ToId) GetSymbolEntryBySymbolEntry;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByOffset;
				public function HRESULT(IDebugSymbols4 *self, uint32 Line, PSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLine;
				public function HRESULT(IDebugSymbols4 *self, uint32 Line, PWSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLineWide;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryString;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryStringWide;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSourceEntryOffsetRegions;
				public function HRESULT(IDebugSymbols4 *self, DEBUG_SYMBOL_SOURCE_ENTRY* FromEntry, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* ToEntry) GetSourceEntryBySourceEntry;
				public function HRESULT(IDebugSymbols4 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME_EX* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScopeEx;
				public function HRESULT(IDebugSymbols4 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME_EX* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScopeEx;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 InlineContext, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByInlineContext;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 InlineContext, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByInlineContextWide;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 InlineContext, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByInlineContext;
				public function HRESULT(IDebugSymbols4 *self, uint64 Offset, uint32 InlineContext, uint32* Line, char16* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByInlineContextWide;
				public function HRESULT(IDebugSymbols4 *self, uint32 OutputControl, uint32 Flags, uint64 Offset, uint32 InlineContext) OutputSymbolByInlineContext;
			}
		}
		[CRepr]
		public struct IDebugSymbols5 : IUnknown
		{
			public const new Guid IID = .(0xc65fa83e, 0x1e69, 0x475e, 0x8e, 0x0e, 0xb5, 0xd7, 0x9e, 0x9c, 0xc1, 0x7e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSymbols5 *self, uint32* Options) GetSymbolOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) AddSymbolOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) RemoveSymbolOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) SetSymbolOptions;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffset;
				public function HRESULT(IDebugSymbols5 *self, PSTR Symbol, uint64* Offset) GetOffsetByName;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, int32 Delta, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint32 Line, PSTR File, uint64* Offset) GetOffsetByLine;
				public function HRESULT(IDebugSymbols5 *self, uint32* Loaded, uint32* Unloaded) GetNumberModules;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint64* Base) GetModuleByIndex;
				public function HRESULT(IDebugSymbols5 *self, PSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleName;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint64 Base, uint8* ImageNameBuffer, uint32 ImageNameBufferSize, uint32* ImageNameSize, uint8* ModuleNameBuffer, uint32 ModuleNameBufferSize, uint32* ModuleNameSize, uint8* LoadedImageNameBuffer, uint32 LoadedImageNameBufferSize, uint32* LoadedImageNameSize) GetModuleNames;
				public function HRESULT(IDebugSymbols5 *self, uint32 Count, uint64* Bases, uint32 Start, DEBUG_MODULE_PARAMETERS* Params) GetModuleParameters;
				public function HRESULT(IDebugSymbols5 *self, PSTR Symbol, uint64* Base) GetSymbolModule;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeName;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, PSTR Name, uint32* TypeId) GetTypeId;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint32* Size) GetTypeSize;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, PSTR Field, uint32* Offset) GetFieldOffset;
				public function HRESULT(IDebugSymbols5 *self, PSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeId;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32* TypeId, uint64* Module) GetOffsetTypeId;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataVirtual;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataVirtual;
				public function HRESULT(IDebugSymbols5 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataVirtual;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesRead) ReadTypedDataPhysical;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint64 Module, uint32 TypeId, void* Buffer, uint32 BufferSize, uint32* BytesWritten) WriteTypedDataPhysical;
				public function HRESULT(IDebugSymbols5 *self, uint32 OutputControl, uint64 Offset, uint64 Module, uint32 TypeId, uint32 Flags) OutputTypedDataPhysical;
				public function HRESULT(IDebugSymbols5 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScope;
				public function HRESULT(IDebugSymbols5 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScope;
				public function HRESULT(IDebugSymbols5 *self) ResetScope;
				public function HRESULT(IDebugSymbols5 *self, uint32 Flags, IDebugSymbolGroup* Update, IDebugSymbolGroup** Symbols) GetScopeSymbolGroup;
				public function HRESULT(IDebugSymbols5 *self, IDebugSymbolGroup** Group) CreateSymbolGroup;
				public function HRESULT(IDebugSymbols5 *self, PSTR Pattern, uint64* Handle) StartSymbolMatch;
				public function HRESULT(IDebugSymbols5 *self, uint64 Handle, uint8* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatch;
				public function HRESULT(IDebugSymbols5 *self, uint64 Handle) EndSymbolMatch;
				public function HRESULT(IDebugSymbols5 *self, PSTR Module) Reload;
				public function HRESULT(IDebugSymbols5 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPath;
				public function HRESULT(IDebugSymbols5 *self, PSTR Path) SetSymbolPath;
				public function HRESULT(IDebugSymbols5 *self, PSTR Addition) AppendSymbolPath;
				public function HRESULT(IDebugSymbols5 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePath;
				public function HRESULT(IDebugSymbols5 *self, PSTR Path) SetImagePath;
				public function HRESULT(IDebugSymbols5 *self, PSTR Addition) AppendImagePath;
				public function HRESULT(IDebugSymbols5 *self, uint8* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePath;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint8* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElement;
				public function HRESULT(IDebugSymbols5 *self, PSTR Path) SetSourcePath;
				public function HRESULT(IDebugSymbols5 *self, PSTR Addition) AppendSourcePath;
				public function HRESULT(IDebugSymbols5 *self, uint32 StartElement, PSTR File, uint32 Flags, uint32* FoundElement, uint8* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFile;
				public function HRESULT(IDebugSymbols5 *self, PSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsets;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint64 Base, PSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformation;
				public function HRESULT(IDebugSymbols5 *self, uint32 Which, uint32 Index, uint64 Base, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameString;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint64 Value, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantName;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldName;
				public function HRESULT(IDebugSymbols5 *self, uint32* Options) GetTypeOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) AddTypeOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) RemoveTypeOptions;
				public function HRESULT(IDebugSymbols5 *self, uint32 Options) SetTypeOptions;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByOffsetWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Symbol, uint64* Offset) GetOffsetByNameWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, int32 Delta, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNearNameByOffsetWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32* Line, char16* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByOffsetWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Line, PWSTR File, uint64* Offset) GetOffsetByLineWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Name, uint32 StartIndex, uint32* Index, uint64* Base) GetModuleByModuleNameWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Symbol, uint64* Base) GetSymbolModuleWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetTypeNameWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, PWSTR Name, uint32* TypeId) GetTypeIdWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, PWSTR Field, uint32* Offset) GetFieldOffsetWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Symbol, uint32* TypeId, uint64* Module) GetSymbolTypeIdWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Flags, IDebugSymbolGroup2* Update, IDebugSymbolGroup2** Symbols) GetScopeSymbolGroup2;
				public function HRESULT(IDebugSymbols5 *self, IDebugSymbolGroup2** Group) CreateSymbolGroup2;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Pattern, uint64* Handle) StartSymbolMatchWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Handle, char16* Buffer, uint32 BufferSize, uint32* MatchSize, uint64* Offset) GetNextSymbolMatchWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Module) ReloadWide;
				public function HRESULT(IDebugSymbols5 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSymbolPathWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Path) SetSymbolPathWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Addition) AppendSymbolPathWide;
				public function HRESULT(IDebugSymbols5 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetImagePathWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Path) SetImagePathWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Addition) AppendImagePathWide;
				public function HRESULT(IDebugSymbols5 *self, char16* Buffer, uint32 BufferSize, uint32* PathSize) GetSourcePathWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, char16* Buffer, uint32 BufferSize, uint32* ElementSize) GetSourcePathElementWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Path) SetSourcePathWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Addition) AppendSourcePathWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 StartElement, PWSTR File, uint32 Flags, uint32* FoundElement, char16* Buffer, uint32 BufferSize, uint32* FoundSize) FindSourceFileWide;
				public function HRESULT(IDebugSymbols5 *self, PWSTR File, uint64* Buffer, uint32 BufferLines, uint32* FileLines) GetSourceFileLineOffsetsWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint64 Base, PWSTR Item, void* Buffer, uint32 BufferSize, uint32* VerInfoSize) GetModuleVersionInformationWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Which, uint32 Index, uint64 Base, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetModuleNameStringWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint64 Value, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetConstantNameWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 TypeId, uint32 FieldIndex, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize) GetFieldNameWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index, uint64 Base) IsManagedModule;
				public function HRESULT(IDebugSymbols5 *self, PSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Name, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByModuleName2Wide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 StartIndex, uint32 Flags, uint32* Index, uint64* Base) GetModuleByOffset2;
				public function HRESULT(IDebugSymbols5 *self, uint64 Base, uint32 Size, PSTR ImagePath, PSTR ModuleName, uint32 Flags) AddSyntheticModule;
				public function HRESULT(IDebugSymbols5 *self, uint64 Base, uint32 Size, PWSTR ImagePath, PWSTR ModuleName, uint32 Flags) AddSyntheticModuleWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Base) RemoveSyntheticModule;
				public function HRESULT(IDebugSymbols5 *self, uint32* Index) GetCurrentScopeFrameIndex;
				public function HRESULT(IDebugSymbols5 *self, uint32 Index) SetScopeFrameByIndex;
				public function HRESULT(IDebugSymbols5 *self, uint32 OutputControl, uint64 InfoOffset) SetScopeFromJitDebugInfo;
				public function HRESULT(IDebugSymbols5 *self) SetScopeFromStoredEvent;
				public function HRESULT(IDebugSymbols5 *self, uint32 OutputControl, uint32 Flags, uint64 Offset) OutputSymbolByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 Flags, void* Buffer, uint32 BufferSize, uint32* BufferNeeded) GetFunctionEntryByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 ContainerTypeId, PSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffset;
				public function HRESULT(IDebugSymbols5 *self, uint64 Module, uint32 ContainerTypeId, PWSTR Field, uint32* FieldTypeId, uint32* Offset) GetFieldTypeAndOffsetWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 Size, PSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbol;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 Size, PWSTR Name, uint32 Flags, DEBUG_MODULE_AND_ID* Id) AddSyntheticSymbolWide;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* Id) RemoveSyntheticSymbol;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint64* Displacements, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByOffset;
				public function HRESULT(IDebugSymbols5 *self, PSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByName;
				public function HRESULT(IDebugSymbols5 *self, PWSTR Symbol, uint32 Flags, DEBUG_MODULE_AND_ID* Ids, uint32 IdsCount, uint32* Entries) GetSymbolEntriesByNameWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 ModuleBase, uint32 Token, DEBUG_MODULE_AND_ID* Id) GetSymbolEntryByToken;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* Id, DEBUG_SYMBOL_ENTRY* Info) GetSymbolEntryInformation;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryString;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* Id, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSymbolEntryStringWide;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* Id, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSymbolEntryOffsetRegions;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_MODULE_AND_ID* FromId, uint32 Flags, DEBUG_MODULE_AND_ID* ToId) GetSymbolEntryBySymbolEntry;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByOffset;
				public function HRESULT(IDebugSymbols5 *self, uint32 Line, PSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLine;
				public function HRESULT(IDebugSymbols5 *self, uint32 Line, PWSTR File, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* Entries, uint32 EntriesCount, uint32* EntriesAvail) GetSourceEntriesByLineWide;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, uint8* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryString;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Which, char16* Buffer, uint32 BufferSize, uint32* StringSize) GetSourceEntryStringWide;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_SYMBOL_SOURCE_ENTRY* Entry, uint32 Flags, DEBUG_OFFSET_REGION* Regions, uint32 RegionsCount, uint32* RegionsAvail) GetSourceEntryOffsetRegions;
				public function HRESULT(IDebugSymbols5 *self, DEBUG_SYMBOL_SOURCE_ENTRY* FromEntry, uint32 Flags, DEBUG_SYMBOL_SOURCE_ENTRY* ToEntry) GetSourceEntryBySourceEntry;
				public function HRESULT(IDebugSymbols5 *self, uint64* InstructionOffset, DEBUG_STACK_FRAME_EX* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) GetScopeEx;
				public function HRESULT(IDebugSymbols5 *self, uint64 InstructionOffset, DEBUG_STACK_FRAME_EX* ScopeFrame, void* ScopeContext, uint32 ScopeContextSize) SetScopeEx;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 InlineContext, uint8* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByInlineContext;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 InlineContext, char16* NameBuffer, uint32 NameBufferSize, uint32* NameSize, uint64* Displacement) GetNameByInlineContextWide;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 InlineContext, uint32* Line, uint8* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByInlineContext;
				public function HRESULT(IDebugSymbols5 *self, uint64 Offset, uint32 InlineContext, uint32* Line, char16* FileBuffer, uint32 FileBufferSize, uint32* FileSize, uint64* Displacement) GetLineByInlineContextWide;
				public function HRESULT(IDebugSymbols5 *self, uint32 OutputControl, uint32 Flags, uint64 Offset, uint32 InlineContext) OutputSymbolByInlineContext;
				public function HRESULT(IDebugSymbols5 *self, uint32 Flags, uint32* Index) GetCurrentScopeFrameIndexEx;
				public function HRESULT(IDebugSymbols5 *self, uint32 Flags, uint32 Index) SetScopeFrameByIndexEx;
			}
		}
		[CRepr]
		public struct IDebugSystemObjects : IUnknown
		{
			public const new Guid IID = .(0x6b86fe2c, 0x2c4f, 0x4f0c, 0x9d, 0xa2, 0x17, 0x43, 0x11, 0xac, 0xc3, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSystemObjects *self, uint32* Id) GetEventThread;
				public function HRESULT(IDebugSystemObjects *self, uint32* Id) GetEventProcess;
				public function HRESULT(IDebugSystemObjects *self, uint32* Id) GetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects *self, uint32 Id) SetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects *self, uint32* Id) GetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects *self, uint32 Id) SetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects *self, uint32* Number) GetNumberThreads;
				public function HRESULT(IDebugSystemObjects *self, uint32* Total, uint32* LargestProcess) GetTotalNumberThreads;
				public function HRESULT(IDebugSystemObjects *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetThreadIdsByIndex;
				public function HRESULT(IDebugSystemObjects *self, uint32 Processor, uint32* Id) GetThreadIdByProcessor;
				public function HRESULT(IDebugSystemObjects *self, uint64* Offset) GetCurrentThreadDataOffset;
				public function HRESULT(IDebugSystemObjects *self, uint64 Offset, uint32* Id) GetThreadIdByDataOffset;
				public function HRESULT(IDebugSystemObjects *self, uint64* Offset) GetCurrentThreadTeb;
				public function HRESULT(IDebugSystemObjects *self, uint64 Offset, uint32* Id) GetThreadIdByTeb;
				public function HRESULT(IDebugSystemObjects *self, uint32* SysId) GetCurrentThreadSystemId;
				public function HRESULT(IDebugSystemObjects *self, uint32 SysId, uint32* Id) GetThreadIdBySystemId;
				public function HRESULT(IDebugSystemObjects *self, uint64* Handle) GetCurrentThreadHandle;
				public function HRESULT(IDebugSystemObjects *self, uint64 Handle, uint32* Id) GetThreadIdByHandle;
				public function HRESULT(IDebugSystemObjects *self, uint32* Number) GetNumberProcesses;
				public function HRESULT(IDebugSystemObjects *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetProcessIdsByIndex;
				public function HRESULT(IDebugSystemObjects *self, uint64* Offset) GetCurrentProcessDataOffset;
				public function HRESULT(IDebugSystemObjects *self, uint64 Offset, uint32* Id) GetProcessIdByDataOffset;
				public function HRESULT(IDebugSystemObjects *self, uint64* Offset) GetCurrentProcessPeb;
				public function HRESULT(IDebugSystemObjects *self, uint64 Offset, uint32* Id) GetProcessIdByPeb;
				public function HRESULT(IDebugSystemObjects *self, uint32* SysId) GetCurrentProcessSystemId;
				public function HRESULT(IDebugSystemObjects *self, uint32 SysId, uint32* Id) GetProcessIdBySystemId;
				public function HRESULT(IDebugSystemObjects *self, uint64* Handle) GetCurrentProcessHandle;
				public function HRESULT(IDebugSystemObjects *self, uint64 Handle, uint32* Id) GetProcessIdByHandle;
				public function HRESULT(IDebugSystemObjects *self, uint8* Buffer, uint32 BufferSize, uint32* ExeSize) GetCurrentProcessExecutableName;
			}
		}
		[CRepr]
		public struct IDebugSystemObjects2 : IUnknown
		{
			public const new Guid IID = .(0x0ae9f5ff, 0x1852, 0x4679, 0xb0, 0x55, 0x49, 0x4b, 0xee, 0x64, 0x07, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Id) GetEventThread;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Id) GetEventProcess;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Id) GetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 Id) SetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Id) GetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 Id) SetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Number) GetNumberThreads;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Total, uint32* LargestProcess) GetTotalNumberThreads;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetThreadIdsByIndex;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 Processor, uint32* Id) GetThreadIdByProcessor;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetCurrentThreadDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset, uint32* Id) GetThreadIdByDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetCurrentThreadTeb;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset, uint32* Id) GetThreadIdByTeb;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* SysId) GetCurrentThreadSystemId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 SysId, uint32* Id) GetThreadIdBySystemId;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Handle) GetCurrentThreadHandle;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Handle, uint32* Id) GetThreadIdByHandle;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* Number) GetNumberProcesses;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetProcessIdsByIndex;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetCurrentProcessDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset, uint32* Id) GetProcessIdByDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetCurrentProcessPeb;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset, uint32* Id) GetProcessIdByPeb;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* SysId) GetCurrentProcessSystemId;
				public function HRESULT(IDebugSystemObjects2 *self, uint32 SysId, uint32* Id) GetProcessIdBySystemId;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Handle) GetCurrentProcessHandle;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Handle, uint32* Id) GetProcessIdByHandle;
				public function HRESULT(IDebugSystemObjects2 *self, uint8* Buffer, uint32 BufferSize, uint32* ExeSize) GetCurrentProcessExecutableName;
				public function HRESULT(IDebugSystemObjects2 *self, uint32* UpTime) GetCurrentProcessUpTime;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset) SetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64* Offset) GetImplicitProcessDataOffset;
				public function HRESULT(IDebugSystemObjects2 *self, uint64 Offset) SetImplicitProcessDataOffset;
			}
		}
		[CRepr]
		public struct IDebugSystemObjects3 : IUnknown
		{
			public const new Guid IID = .(0xe9676e2f, 0xe286, 0x4ea3, 0xb0, 0xf9, 0xdf, 0xe5, 0xd9, 0xfc, 0x33, 0x0e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetEventThread;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetEventProcess;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Id) SetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Id) SetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Number) GetNumberThreads;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Total, uint32* LargestProcess) GetTotalNumberThreads;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetThreadIdsByIndex;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Processor, uint32* Id) GetThreadIdByProcessor;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetCurrentThreadDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset, uint32* Id) GetThreadIdByDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetCurrentThreadTeb;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset, uint32* Id) GetThreadIdByTeb;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* SysId) GetCurrentThreadSystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 SysId, uint32* Id) GetThreadIdBySystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Handle) GetCurrentThreadHandle;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Handle, uint32* Id) GetThreadIdByHandle;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Number) GetNumberProcesses;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetProcessIdsByIndex;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetCurrentProcessDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset, uint32* Id) GetProcessIdByDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetCurrentProcessPeb;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset, uint32* Id) GetProcessIdByPeb;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* SysId) GetCurrentProcessSystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 SysId, uint32* Id) GetProcessIdBySystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Handle) GetCurrentProcessHandle;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Handle, uint32* Id) GetProcessIdByHandle;
				public function HRESULT(IDebugSystemObjects3 *self, uint8* Buffer, uint32 BufferSize, uint32* ExeSize) GetCurrentProcessExecutableName;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* UpTime) GetCurrentProcessUpTime;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset) SetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Offset) GetImplicitProcessDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Offset) SetImplicitProcessDataOffset;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetEventSystem;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Id) GetCurrentSystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Id) SetCurrentSystemId;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* Number) GetNumberSystems;
				public function HRESULT(IDebugSystemObjects3 *self, uint32 Start, uint32 Count, uint32* Ids) GetSystemIdsByIndex;
				public function HRESULT(IDebugSystemObjects3 *self, uint32* TotalThreads, uint32* TotalProcesses, uint32* LargestProcessThreads, uint32* LargestSystemThreads, uint32* LargestSystemProcesses) GetTotalNumberThreadsAndProcesses;
				public function HRESULT(IDebugSystemObjects3 *self, uint64* Server) GetCurrentSystemServer;
				public function HRESULT(IDebugSystemObjects3 *self, uint64 Server, uint32* Id) GetSystemByServer;
				public function HRESULT(IDebugSystemObjects3 *self, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetCurrentSystemServerName;
			}
		}
		[CRepr]
		public struct IDebugSystemObjects4 : IUnknown
		{
			public const new Guid IID = .(0x489468e6, 0x7d0f, 0x4af5, 0x87, 0xab, 0x25, 0x20, 0x74, 0x54, 0xd5, 0x53);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetEventThread;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetEventProcess;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Id) SetCurrentThreadId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Id) SetCurrentProcessId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Number) GetNumberThreads;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Total, uint32* LargestProcess) GetTotalNumberThreads;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetThreadIdsByIndex;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Processor, uint32* Id) GetThreadIdByProcessor;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetCurrentThreadDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset, uint32* Id) GetThreadIdByDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetCurrentThreadTeb;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset, uint32* Id) GetThreadIdByTeb;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* SysId) GetCurrentThreadSystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 SysId, uint32* Id) GetThreadIdBySystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Handle) GetCurrentThreadHandle;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Handle, uint32* Id) GetThreadIdByHandle;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Number) GetNumberProcesses;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Start, uint32 Count, uint32* Ids, uint32* SysIds) GetProcessIdsByIndex;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetCurrentProcessDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset, uint32* Id) GetProcessIdByDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetCurrentProcessPeb;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset, uint32* Id) GetProcessIdByPeb;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* SysId) GetCurrentProcessSystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 SysId, uint32* Id) GetProcessIdBySystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Handle) GetCurrentProcessHandle;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Handle, uint32* Id) GetProcessIdByHandle;
				public function HRESULT(IDebugSystemObjects4 *self, uint8* Buffer, uint32 BufferSize, uint32* ExeSize) GetCurrentProcessExecutableName;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* UpTime) GetCurrentProcessUpTime;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset) SetImplicitThreadDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Offset) GetImplicitProcessDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Offset) SetImplicitProcessDataOffset;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetEventSystem;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Id) GetCurrentSystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Id) SetCurrentSystemId;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* Number) GetNumberSystems;
				public function HRESULT(IDebugSystemObjects4 *self, uint32 Start, uint32 Count, uint32* Ids) GetSystemIdsByIndex;
				public function HRESULT(IDebugSystemObjects4 *self, uint32* TotalThreads, uint32* TotalProcesses, uint32* LargestProcessThreads, uint32* LargestSystemThreads, uint32* LargestSystemProcesses) GetTotalNumberThreadsAndProcesses;
				public function HRESULT(IDebugSystemObjects4 *self, uint64* Server) GetCurrentSystemServer;
				public function HRESULT(IDebugSystemObjects4 *self, uint64 Server, uint32* Id) GetSystemByServer;
				public function HRESULT(IDebugSystemObjects4 *self, uint8* Buffer, uint32 BufferSize, uint32* NameSize) GetCurrentSystemServerName;
				public function HRESULT(IDebugSystemObjects4 *self, char16* Buffer, uint32 BufferSize, uint32* ExeSize) GetCurrentProcessExecutableNameWide;
				public function HRESULT(IDebugSystemObjects4 *self, char16* Buffer, uint32 BufferSize, uint32* NameSize) GetCurrentSystemServerNameWide;
			}
		}
		[CRepr]
		public struct DebugBaseEventCallbacks : IDebugEventCallbacks
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugEventCallbacks.VTable
			{
			}
		}
		[CRepr]
		public struct DebugBaseEventCallbacksWide : IDebugEventCallbacksWide
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugEventCallbacksWide.VTable
			{
			}
		}
		[CRepr]
		public struct IHostDataModelAccess : IUnknown
		{
			public const new Guid IID = .(0xf2bce54e, 0x4835, 0x4f8a, 0x83, 0x6e, 0x79, 0x81, 0xe2, 0x99, 0x04, 0xd1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IHostDataModelAccess *self, IDataModelManager** manager, IDebugHost** host) GetDataModel;
			}
		}
		[CRepr]
		public struct IKeyStore : IUnknown
		{
			public const new Guid IID = .(0x0fc7557d, 0x401d, 0x4fca, 0x93, 0x65, 0xda, 0x1e, 0x98, 0x50, 0x69, 0x7c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IKeyStore *self, PWSTR key, IModelObject** object, IKeyStore** metadata) GetKey;
				public function HRESULT(IKeyStore *self, PWSTR key, IModelObject* object, IKeyStore* metadata) SetKey;
				public function HRESULT(IKeyStore *self, PWSTR key, IModelObject** object, IKeyStore** metadata) GetKeyValue;
				public function HRESULT(IKeyStore *self, PWSTR key, IModelObject* object) SetKeyValue;
				public function HRESULT(IKeyStore *self) ClearKeys;
			}
		}
		[CRepr]
		public struct IModelObject : IUnknown
		{
			public const new Guid IID = .(0xe28c7893, 0x3f4b, 0x4b96, 0xba, 0xca, 0x29, 0x3c, 0xdc, 0x55, 0xf4, 0x5d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IModelObject *self, IDebugHostContext** context) GetContext;
				public function HRESULT(IModelObject *self, ModelObjectKind* kind) GetKind;
				public function HRESULT(IModelObject *self, VARIANT* intrinsicData) GetIntrinsicValue;
				public function HRESULT(IModelObject *self, uint16 vt, VARIANT* intrinsicData) GetIntrinsicValueAs;
				public function HRESULT(IModelObject *self, PWSTR key, IModelObject** object, IKeyStore** metadata) GetKeyValue;
				public function HRESULT(IModelObject *self, PWSTR key, IModelObject* object) SetKeyValue;
				public function HRESULT(IModelObject *self, IKeyEnumerator** enumerator) EnumerateKeyValues;
				public function HRESULT(IModelObject *self, SymbolKind kind, PWSTR name, uint32 searchFlags, IModelObject** object) GetRawValue;
				public function HRESULT(IModelObject *self, SymbolKind kind, uint32 searchFlags, IRawEnumerator** enumerator) EnumerateRawValues;
				public function HRESULT(IModelObject *self, IModelObject** object) Dereference;
				public function HRESULT(IModelObject *self, IModelObject** runtimeTypedObject) TryCastToRuntimeType;
				public function HRESULT(IModelObject *self, Guid* conceptId, IUnknown** conceptInterface, IKeyStore** conceptMetadata) GetConcept;
				public function HRESULT(IModelObject *self, Location* location) GetLocation;
				public function HRESULT(IModelObject *self, IDebugHostType** type) GetTypeInfo;
				public function HRESULT(IModelObject *self, Location* location, IDebugHostType** type) GetTargetInfo;
				public function HRESULT(IModelObject *self, uint64* numModels) GetNumberOfParentModels;
				public function HRESULT(IModelObject *self, uint64 i, IModelObject** model, IModelObject** contextObject) GetParentModel;
				public function HRESULT(IModelObject *self, IModelObject* model, IModelObject* contextObject, uint8 @override) AddParentModel;
				public function HRESULT(IModelObject *self, IModelObject* model) RemoveParentModel;
				public function HRESULT(IModelObject *self, PWSTR key, IModelObject** object, IKeyStore** metadata) GetKey;
				public function HRESULT(IModelObject *self, PWSTR key, IModelObject** objectReference, IKeyStore** metadata) GetKeyReference;
				public function HRESULT(IModelObject *self, PWSTR key, IModelObject* object, IKeyStore* metadata) SetKey;
				public function HRESULT(IModelObject *self) ClearKeys;
				public function HRESULT(IModelObject *self, IKeyEnumerator** enumerator) EnumerateKeys;
				public function HRESULT(IModelObject *self, IKeyEnumerator** enumerator) EnumerateKeyReferences;
				public function HRESULT(IModelObject *self, Guid* conceptId, IUnknown* conceptInterface, IKeyStore* conceptMetadata) SetConcept;
				public function HRESULT(IModelObject *self) ClearConcepts;
				public function HRESULT(IModelObject *self, SymbolKind kind, PWSTR name, uint32 searchFlags, IModelObject** object) GetRawReference;
				public function HRESULT(IModelObject *self, SymbolKind kind, uint32 searchFlags, IRawEnumerator** enumerator) EnumerateRawReferences;
				public function HRESULT(IModelObject *self, IModelObject* dataModelObject, IUnknown* context) SetContextForDataModel;
				public function HRESULT(IModelObject *self, IModelObject* dataModelObject, IUnknown** context) GetContextForDataModel;
				public function HRESULT(IModelObject *self, IModelObject* other, IModelObject** ppResult) Compare;
				public function HRESULT(IModelObject *self, IModelObject* other, Boolean* equal) IsEqualTo;
			}
		}
		[CRepr]
		public struct IDataModelManager : IUnknown
		{
			public const new Guid IID = .(0x73fe19f4, 0xa110, 0x4500, 0x8e, 0xd9, 0x3c, 0x28, 0x89, 0x6f, 0x50, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelManager *self) Close;
				public function HRESULT(IDataModelManager *self, IModelObject** object) CreateNoValue;
				public function HRESULT(IDataModelManager *self, HRESULT hrError, PWSTR pwszMessage, IModelObject** object) CreateErrorObject;
				public function HRESULT(IDataModelManager *self, IDebugHostContext* context, Location objectLocation, IDebugHostType* objectType, IModelObject** object) CreateTypedObject;
				public function HRESULT(IDataModelManager *self, IDebugHostContext* context, Location objectLocation, IDebugHostType* objectType, IModelObject** object) CreateTypedObjectReference;
				public function HRESULT(IDataModelManager *self, IDebugHostContext* context, IModelObject** object) CreateSyntheticObject;
				public function HRESULT(IDataModelManager *self, IDataModelConcept* dataModel, IModelObject** object) CreateDataModelObject;
				public function HRESULT(IDataModelManager *self, ModelObjectKind objectKind, VARIANT* intrinsicData, IModelObject** object) CreateIntrinsicObject;
				public function HRESULT(IDataModelManager *self, VARIANT* intrinsicData, IDebugHostType* type, IModelObject** object) CreateTypedIntrinsicObject;
				public function HRESULT(IDataModelManager *self, IDebugHostTypeSignature* typeSignature, IModelObject** dataModel) GetModelForTypeSignature;
				public function HRESULT(IDataModelManager *self, IDebugHostType* type, IModelObject** dataModel, IDebugHostTypeSignature** typeSignature, IDebugHostSymbolEnumerator** wildcardMatches) GetModelForType;
				public function HRESULT(IDataModelManager *self, IDebugHostTypeSignature* typeSignature, IModelObject* dataModel) RegisterModelForTypeSignature;
				public function HRESULT(IDataModelManager *self, IModelObject* dataModel, IDebugHostTypeSignature* typeSignature) UnregisterModelForTypeSignature;
				public function HRESULT(IDataModelManager *self, IDebugHostTypeSignature* typeSignature, IModelObject* dataModel) RegisterExtensionForTypeSignature;
				public function HRESULT(IDataModelManager *self, IModelObject* dataModel, IDebugHostTypeSignature* typeSignature) UnregisterExtensionForTypeSignature;
				public function HRESULT(IDataModelManager *self, IKeyStore* parentStore, IKeyStore** metadataStore) CreateMetadataStore;
				public function HRESULT(IDataModelManager *self, IModelObject** rootNamespace) GetRootNamespace;
				public function HRESULT(IDataModelManager *self, PWSTR modelName, IModelObject* modeObject) RegisterNamedModel;
				public function HRESULT(IDataModelManager *self, PWSTR modelName) UnregisterNamedModel;
				public function HRESULT(IDataModelManager *self, PWSTR modelName, IModelObject** modelObject) AcquireNamedModel;
			}
		}
		[CRepr]
		public struct IModelKeyReference : IUnknown
		{
			public const new Guid IID = .(0x5253dcf8, 0x5aff, 0x4c62, 0xb3, 0x02, 0x56, 0xa2, 0x89, 0xe0, 0x09, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IModelKeyReference *self, BSTR* keyName) GetKeyName;
				public function HRESULT(IModelKeyReference *self, IModelObject** originalObject) GetOriginalObject;
				public function HRESULT(IModelKeyReference *self, IModelObject** containingObject) GetContextObject;
				public function HRESULT(IModelKeyReference *self, IModelObject** object, IKeyStore** metadata) GetKey;
				public function HRESULT(IModelKeyReference *self, IModelObject** object, IKeyStore** metadata) GetKeyValue;
				public function HRESULT(IModelKeyReference *self, IModelObject* object, IKeyStore* metadata) SetKey;
				public function HRESULT(IModelKeyReference *self, IModelObject* object) SetKeyValue;
			}
		}
		[CRepr]
		public struct IModelPropertyAccessor : IUnknown
		{
			public const new Guid IID = .(0x5a0c63d9, 0x0526, 0x42b8, 0x96, 0x0c, 0x95, 0x16, 0xa3, 0x25, 0x4c, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IModelPropertyAccessor *self, PWSTR key, IModelObject* contextObject, IModelObject** value) GetValue;
				public function HRESULT(IModelPropertyAccessor *self, PWSTR key, IModelObject* contextObject, IModelObject* value) SetValue;
			}
		}
		[CRepr]
		public struct IModelMethod : IUnknown
		{
			public const new Guid IID = .(0x80600c1f, 0xb90b, 0x4896, 0x82, 0xad, 0x1c, 0x00, 0x20, 0x79, 0x09, 0xe8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IModelMethod *self, IModelObject* pContextObject, uint64 argCount, IModelObject** ppArguments, IModelObject** ppResult, IKeyStore** ppMetadata) Call;
			}
		}
		[CRepr]
		public struct IKeyEnumerator : IUnknown
		{
			public const new Guid IID = .(0x345fa92e, 0x5e00, 0x4319, 0x9c, 0xae, 0x97, 0x1f, 0x76, 0x01, 0xcd, 0xcf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IKeyEnumerator *self) Reset;
				public function HRESULT(IKeyEnumerator *self, BSTR* key, IModelObject** value, IKeyStore** metadata) GetNext;
			}
		}
		[CRepr]
		public struct IRawEnumerator : IUnknown
		{
			public const new Guid IID = .(0xe13613f9, 0x3a3c, 0x40b5, 0x8f, 0x48, 0x1e, 0x5e, 0xbf, 0xb9, 0xb2, 0x1b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRawEnumerator *self) Reset;
				public function HRESULT(IRawEnumerator *self, BSTR* name, SymbolKind* kind, IModelObject** value) GetNext;
			}
		}
		[CRepr]
		public struct IDataModelConcept : IUnknown
		{
			public const new Guid IID = .(0xfcb98d1d, 0x1114, 0x4fbf, 0xb2, 0x4c, 0xef, 0xfc, 0xb5, 0xde, 0xf0, 0xd3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelConcept *self, IModelObject* modelObject, IDebugHostTypeSignature* matchingTypeSignature, IDebugHostSymbolEnumerator* wildcardMatches) InitializeObject;
				public function HRESULT(IDataModelConcept *self, BSTR* modelName) GetName;
			}
		}
		[CRepr]
		public struct IStringDisplayableConcept : IUnknown
		{
			public const new Guid IID = .(0xd28e8d70, 0x6c00, 0x4205, 0x94, 0x0d, 0x50, 0x10, 0x16, 0x60, 0x1e, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStringDisplayableConcept *self, IModelObject* contextObject, IKeyStore* metadata, BSTR* displayString) ToDisplayString;
			}
		}
		[CRepr]
		public struct ICodeAddressConcept : IUnknown
		{
			public const new Guid IID = .(0xc7371568, 0x5c78, 0x4a00, 0xa4, 0xab, 0x6e, 0xf8, 0x82, 0x31, 0x84, 0xcb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICodeAddressConcept *self, IModelObject* pContextObject, IDebugHostSymbol** ppSymbol) GetContainingSymbol;
			}
		}
		[CRepr]
		public struct IModelIterator : IUnknown
		{
			public const new Guid IID = .(0xe4622136, 0x927d, 0x4490, 0x87, 0x4f, 0x58, 0x1f, 0x3e, 0x4e, 0x36, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IModelIterator *self) Reset;
				public function HRESULT(IModelIterator *self, IModelObject** object, uint64 dimensions, IModelObject** indexers, IKeyStore** metadata) GetNext;
			}
		}
		[CRepr]
		public struct IIterableConcept : IUnknown
		{
			public const new Guid IID = .(0xf5d49d0c, 0x0b02, 0x4301, 0x9c, 0x9b, 0xb3, 0xa6, 0x03, 0x76, 0x28, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIterableConcept *self, IModelObject* contextObject, uint64* dimensionality) GetDefaultIndexDimensionality;
				public function HRESULT(IIterableConcept *self, IModelObject* contextObject, IModelIterator** iterator) GetIterator;
			}
		}
		[CRepr]
		public struct IIndexableConcept : IUnknown
		{
			public const new Guid IID = .(0xd1fad99f, 0x3f53, 0x4457, 0x85, 0x0c, 0x80, 0x51, 0xdf, 0x2d, 0x3f, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIndexableConcept *self, IModelObject* contextObject, uint64* dimensionality) GetDimensionality;
				public function HRESULT(IIndexableConcept *self, IModelObject* contextObject, uint64 indexerCount, IModelObject** indexers, IModelObject** object, IKeyStore** metadata) GetAt;
				public function HRESULT(IIndexableConcept *self, IModelObject* contextObject, uint64 indexerCount, IModelObject** indexers, IModelObject* value) SetAt;
			}
		}
		[CRepr]
		public struct IPreferredRuntimeTypeConcept : IUnknown
		{
			public const new Guid IID = .(0x9d6c1d7b, 0xa76f, 0x4618, 0x80, 0x68, 0x5f, 0x76, 0xbd, 0x9a, 0x4e, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPreferredRuntimeTypeConcept *self, IModelObject* contextObject, IModelObject** object) CastToPreferredRuntimeType;
			}
		}
		[CRepr]
		public struct IDebugHost : IUnknown
		{
			public const new Guid IID = .(0xb8c74943, 0x6b2c, 0x4eeb, 0xb5, 0xc5, 0x35, 0xd3, 0x78, 0xa6, 0xd9, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHost *self, IUnknown** hostUnk) GetHostDefinedInterface;
				public function HRESULT(IDebugHost *self, IDebugHostContext** context) GetCurrentContext;
				public function HRESULT(IDebugHost *self, IKeyStore** defaultMetadataStore) GetDefaultMetadata;
			}
		}
		[CRepr]
		public struct IDebugHostContext : IUnknown
		{
			public const new Guid IID = .(0xa68c70d8, 0x5ec0, 0x46e5, 0xb7, 0x75, 0x31, 0x34, 0xa4, 0x8e, 0xa2, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostContext *self, IDebugHostContext* pContext, Boolean* pIsEqual) IsEqualTo;
			}
		}
		[CRepr]
		public struct IDebugHostErrorSink : IUnknown
		{
			public const new Guid IID = .(0xc8ff0f0b, 0xfce9, 0x467e, 0x8b, 0xb3, 0x5d, 0x69, 0xef, 0x10, 0x9c, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostErrorSink *self, ErrorClass errClass, HRESULT hrError, PWSTR message) ReportError;
			}
		}
		[CRepr]
		public struct IDebugHostSymbol : IUnknown
		{
			public const new Guid IID = .(0x0f819103, 0x87de, 0x4e96, 0x82, 0x77, 0xe0, 0x5c, 0xd4, 0x41, 0xfb, 0x22);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostSymbol *self, IDebugHostContext** context) GetContext;
				public function HRESULT(IDebugHostSymbol *self, SymbolKind kind, PWSTR name, IDebugHostSymbolEnumerator** ppEnum) EnumerateChildren;
				public function HRESULT(IDebugHostSymbol *self, SymbolKind* kind) GetSymbolKind;
				public function HRESULT(IDebugHostSymbol *self, BSTR* symbolName) GetName;
				public function HRESULT(IDebugHostSymbol *self, IDebugHostType** type) GetType;
				public function HRESULT(IDebugHostSymbol *self, IDebugHostModule** containingModule) GetContainingModule;
				public function HRESULT(IDebugHostSymbol *self, IDebugHostSymbol* pComparisonSymbol, uint32 comparisonFlags, Boolean* pMatches) CompareAgainst;
			}
		}
		[CRepr]
		public struct IDebugHostSymbolEnumerator : IUnknown
		{
			public const new Guid IID = .(0x28d96c86, 0x10a3, 0x4976, 0xb1, 0x4e, 0xea, 0xef, 0x47, 0x90, 0xaa, 0x1f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostSymbolEnumerator *self) Reset;
				public function HRESULT(IDebugHostSymbolEnumerator *self, IDebugHostSymbol** symbol) GetNext;
			}
		}
		[CRepr]
		public struct IDebugHostModule : IDebugHostSymbol
		{
			public const new Guid IID = .(0xc9ba3e18, 0xd070, 0x4378, 0xbb, 0xd0, 0x34, 0x61, 0x3b, 0x34, 0x6e, 0x1e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostModule *self, uint8 allowPath, BSTR* imageName) GetImageName;
				public function HRESULT(IDebugHostModule *self, Location* moduleBaseLocation) GetBaseLocation;
				public function HRESULT(IDebugHostModule *self, uint64* fileVersion, uint64* productVersion) GetVersion;
				public function HRESULT(IDebugHostModule *self, PWSTR typeName, IDebugHostType** type) FindTypeByName;
				public function HRESULT(IDebugHostModule *self, uint64 rva, IDebugHostSymbol** symbol) FindSymbolByRVA;
				public function HRESULT(IDebugHostModule *self, PWSTR symbolName, IDebugHostSymbol** symbol) FindSymbolByName;
			}
		}
		[CRepr]
		public struct IDebugHostType : IDebugHostSymbol
		{
			public const new Guid IID = .(0x3aadc353, 0x2b14, 0x4abb, 0x98, 0x93, 0x5e, 0x03, 0x45, 0x8e, 0x07, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostType *self, TypeKind* kind) GetTypeKind;
				public function HRESULT(IDebugHostType *self, uint64* size) GetSize;
				public function HRESULT(IDebugHostType *self, IDebugHostType** baseType) GetBaseType;
				public function HRESULT(IDebugHostType *self, uint32* hashCode) GetHashCode;
				public function HRESULT(IDebugHostType *self, IntrinsicKind* intrinsicKind, uint16* carrierType) GetIntrinsicType;
				public function HRESULT(IDebugHostType *self, uint32* lsbOfField, uint32* lengthOfField) GetBitField;
				public function HRESULT(IDebugHostType *self, PointerKind* pointerKind) GetPointerKind;
				public function HRESULT(IDebugHostType *self, IDebugHostType** memberType) GetMemberType;
				public function HRESULT(IDebugHostType *self, PointerKind kind, IDebugHostType** newType) CreatePointerTo;
				public function HRESULT(IDebugHostType *self, uint64* arrayDimensionality) GetArrayDimensionality;
				public function HRESULT(IDebugHostType *self, uint64 dimensions, ArrayDimension* pDimensions) GetArrayDimensions;
				public function HRESULT(IDebugHostType *self, uint64 dimensions, ArrayDimension* pDimensions, IDebugHostType** newType) CreateArrayOf;
				public function HRESULT(IDebugHostType *self, CallingConventionKind* conventionKind) GetFunctionCallingConvention;
				public function HRESULT(IDebugHostType *self, IDebugHostType** returnType) GetFunctionReturnType;
				public function HRESULT(IDebugHostType *self, uint64* count) GetFunctionParameterTypeCount;
				public function HRESULT(IDebugHostType *self, uint64 i, IDebugHostType** parameterType) GetFunctionParameterTypeAt;
				public function HRESULT(IDebugHostType *self, Boolean* isGeneric) IsGeneric;
				public function HRESULT(IDebugHostType *self, uint64* argCount) GetGenericArgumentCount;
				public function HRESULT(IDebugHostType *self, uint64 i, IDebugHostSymbol** argument) GetGenericArgumentAt;
			}
		}
		[CRepr]
		public struct IDebugHostConstant : IDebugHostSymbol
		{
			public const new Guid IID = .(0x62787edc, 0xfa76, 0x4690, 0xbd, 0x71, 0x5e, 0x8c, 0x3e, 0x29, 0x37, 0xec);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostConstant *self, VARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct IDebugHostField : IDebugHostSymbol
		{
			public const new Guid IID = .(0xe06f6495, 0x16bc, 0x4cc9, 0xb1, 0x1d, 0x2a, 0x6b, 0x23, 0xfa, 0x72, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostField *self, LocationKind* locationKind) GetLocationKind;
				public function HRESULT(IDebugHostField *self, uint64* offset) GetOffset;
				public function HRESULT(IDebugHostField *self, Location* location) GetLocation;
				public function HRESULT(IDebugHostField *self, VARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct IDebugHostData : IDebugHostSymbol
		{
			public const new Guid IID = .(0xa3d64993, 0x826c, 0x44fa, 0x89, 0x7d, 0x92, 0x6f, 0x2f, 0xe7, 0xad, 0x0b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostData *self, LocationKind* locationKind) GetLocationKind;
				public function HRESULT(IDebugHostData *self, Location* location) GetLocation;
				public function HRESULT(IDebugHostData *self, VARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct IDebugHostPublic : IDebugHostSymbol
		{
			public const new Guid IID = .(0x6c597ac9, 0xfb4d, 0x4f6d, 0x9f, 0x39, 0x22, 0x48, 0x85, 0x39, 0xf8, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostPublic *self, LocationKind* locationKind) GetLocationKind;
				public function HRESULT(IDebugHostPublic *self, Location* location) GetLocation;
			}
		}
		[CRepr]
		public struct IDebugHostBaseClass : IDebugHostSymbol
		{
			public const new Guid IID = .(0xb94d57d2, 0x390b, 0x40f7, 0xb5, 0xb4, 0xb6, 0xdb, 0x89, 0x7d, 0x97, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostBaseClass *self, uint64* offset) GetOffset;
			}
		}
		[CRepr]
		public struct IDebugHostSymbols : IUnknown
		{
			public const new Guid IID = .(0x854fd751, 0xc2e1, 0x4eb2, 0xb5, 0x25, 0x66, 0x19, 0xcb, 0x97, 0xa5, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostSymbols *self, PWSTR pwszModuleName, PWSTR pwszMinVersion, PWSTR pwszMaxVersion, IDebugHostModuleSignature** ppModuleSignature) CreateModuleSignature;
				public function HRESULT(IDebugHostSymbols *self, PWSTR signatureSpecification, IDebugHostModule* module, IDebugHostTypeSignature** typeSignature) CreateTypeSignature;
				public function HRESULT(IDebugHostSymbols *self, PWSTR signatureSpecification, PWSTR moduleName, PWSTR minVersion, PWSTR maxVersion, IDebugHostTypeSignature** typeSignature) CreateTypeSignatureForModuleRange;
				public function HRESULT(IDebugHostSymbols *self, IDebugHostContext* context, IDebugHostSymbolEnumerator** moduleEnum) EnumerateModules;
				public function HRESULT(IDebugHostSymbols *self, IDebugHostContext* context, PWSTR moduleName, IDebugHostModule** module) FindModuleByName;
				public function HRESULT(IDebugHostSymbols *self, IDebugHostContext* context, Location moduleLocation, IDebugHostModule** module) FindModuleByLocation;
				public function HRESULT(IDebugHostSymbols *self, IDebugHostContext* pContext, Location location, IDebugHostType* objectType, Location* derivedLocation, IDebugHostType** derivedType) GetMostDerivedObject;
			}
		}
		[CRepr]
		public struct IDebugHostMemory : IUnknown
		{
			public const new Guid IID = .(0x212149c9, 0x9183, 0x4a3e, 0xb0, 0x0e, 0x4f, 0xd1, 0xdc, 0x95, 0x33, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostMemory *self, IDebugHostContext* context, Location location, void* buffer, uint64 bufferSize, uint64* bytesRead) ReadBytes;
				public function HRESULT(IDebugHostMemory *self, IDebugHostContext* context, Location location, void* buffer, uint64 bufferSize, uint64* bytesWritten) WriteBytes;
				public function HRESULT(IDebugHostMemory *self, IDebugHostContext* context, Location location, uint64 count, uint64* pointers) ReadPointers;
				public function HRESULT(IDebugHostMemory *self, IDebugHostContext* context, Location location, uint64 count, uint64* pointers) WritePointers;
				public function HRESULT(IDebugHostMemory *self, IDebugHostContext* context, Location location, uint8 verbose, BSTR* locationName) GetDisplayStringForLocation;
			}
		}
		[CRepr]
		public struct IDebugHostEvaluator : IUnknown
		{
			public const new Guid IID = .(0x0fef9a21, 0x577e, 0x4997, 0xac, 0x7b, 0x1c, 0x48, 0x83, 0x24, 0x1d, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostEvaluator *self, IDebugHostContext* context, PWSTR expression, IModelObject* bindingContext, IModelObject** result, IKeyStore** metadata) EvaluateExpression;
				public function HRESULT(IDebugHostEvaluator *self, IDebugHostContext* context, PWSTR expression, IModelObject* bindingContext, IModelObject** result, IKeyStore** metadata) EvaluateExtendedExpression;
			}
		}
		[CRepr]
		public struct IDebugHostModuleSignature : IUnknown
		{
			public const new Guid IID = .(0x31e53a5a, 0x01ee, 0x4bbb, 0xb8, 0x99, 0x4b, 0x46, 0xae, 0x7d, 0x59, 0x5c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostModuleSignature *self, IDebugHostModule* pModule, Boolean* isMatch) IsMatch;
			}
		}
		[CRepr]
		public struct IDebugHostTypeSignature : IUnknown
		{
			public const new Guid IID = .(0x3aadc353, 0x2b14, 0x4abb, 0x98, 0x93, 0x5e, 0x03, 0x45, 0x8e, 0x07, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostTypeSignature *self, uint32* hashCode) GetHashCode;
				public function HRESULT(IDebugHostTypeSignature *self, IDebugHostType* type, Boolean* isMatch, IDebugHostSymbolEnumerator** wildcardMatches) IsMatch;
				public function HRESULT(IDebugHostTypeSignature *self, IDebugHostTypeSignature* typeSignature, SignatureComparison* result) CompareAgainst;
			}
		}
		[CRepr]
		public struct IDebugHostSymbol2 : IDebugHostSymbol
		{
			public const new Guid IID = .(0x21515b67, 0x6720, 0x4257, 0x8a, 0x68, 0x07, 0x7d, 0xc9, 0x44, 0x47, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostSymbol.VTable
			{
				public function HRESULT(IDebugHostSymbol2 *self, LanguageKind* pKind) GetLanguage;
			}
		}
		[CRepr]
		public struct IDebugHostType2 : IDebugHostType
		{
			public const new Guid IID = .(0xb28632b9, 0x8506, 0x4676, 0x87, 0xce, 0x8f, 0x7e, 0x05, 0xe5, 0x98, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostType.VTable
			{
				public function HRESULT(IDebugHostType2 *self, Boolean* isTypedef) IsTypedef;
				public function HRESULT(IDebugHostType2 *self, IDebugHostType2** baseType) GetTypedefBaseType;
				public function HRESULT(IDebugHostType2 *self, IDebugHostType2** finalBaseType) GetTypedefFinalBaseType;
				public function HRESULT(IDebugHostType2 *self, VarArgsKind* varArgsKind) GetFunctionVarArgsKind;
				public function HRESULT(IDebugHostType2 *self, IDebugHostType2** instancePointerType) GetFunctionInstancePointerType;
			}
		}
		[CRepr]
		public struct IDebugHostStatus : IUnknown
		{
			public const new Guid IID = .(0x4f3e1ce2, 0x86b2, 0x4c7a, 0x9c, 0x65, 0xd0, 0xa9, 0xd0, 0xee, 0xcf, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostStatus *self, Boolean* interruptRequested) PollUserInterrupt;
			}
		}
		[CRepr]
		public struct IDataModelScriptClient : IUnknown
		{
			public const new Guid IID = .(0x3b362b0e, 0x89f0, 0x46c6, 0xa6, 0x63, 0xdf, 0xdc, 0x95, 0x19, 0x4a, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptClient *self, ErrorClass errClass, HRESULT hrFail, PWSTR message, uint32 line, uint32 position) ReportError;
			}
		}
		[CRepr]
		public struct IDataModelScriptTemplate : IUnknown
		{
			public const new Guid IID = .(0x1303dec4, 0xfa3b, 0x4f1b, 0x92, 0x24, 0xb9, 0x53, 0xd1, 0x6b, 0xab, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptTemplate *self, BSTR* templateName) GetName;
				public function HRESULT(IDataModelScriptTemplate *self, BSTR* templateDescription) GetDescription;
				public function HRESULT(IDataModelScriptTemplate *self, IStream** contentStream) GetContent;
			}
		}
		[CRepr]
		public struct IDataModelScript : IUnknown
		{
			public const new Guid IID = .(0x7b4d30fc, 0xb14a, 0x49f8, 0x8d, 0x87, 0xd9, 0xa1, 0x48, 0x0c, 0x97, 0xf7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScript *self, BSTR* scriptName) GetName;
				public function HRESULT(IDataModelScript *self, PWSTR scriptName) Rename;
				public function HRESULT(IDataModelScript *self, IStream* contentStream) Populate;
				public function HRESULT(IDataModelScript *self, IDataModelScriptClient* client) Execute;
				public function HRESULT(IDataModelScript *self) Unlink;
				public function HRESULT(IDataModelScript *self, Boolean* isInvocable) IsInvocable;
				public function HRESULT(IDataModelScript *self, IDataModelScriptClient* client) InvokeMain;
			}
		}
		[CRepr]
		public struct IDataModelScriptTemplateEnumerator : IUnknown
		{
			public const new Guid IID = .(0x69ce6ae2, 0x2268, 0x4e6f, 0xb0, 0x62, 0x20, 0xce, 0x62, 0xbf, 0xe6, 0x77);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptTemplateEnumerator *self) Reset;
				public function HRESULT(IDataModelScriptTemplateEnumerator *self, IDataModelScriptTemplate** templateContent) GetNext;
			}
		}
		[CRepr]
		public struct IDataModelScriptProvider : IUnknown
		{
			public const new Guid IID = .(0x513461e0, 0x4fca, 0x48ce, 0x86, 0x58, 0x32, 0xf3, 0xe2, 0x05, 0x6f, 0x3b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptProvider *self, BSTR* name) GetName;
				public function HRESULT(IDataModelScriptProvider *self, BSTR* @extension) GetExtension;
				public function HRESULT(IDataModelScriptProvider *self, IDataModelScript** script) CreateScript;
				public function HRESULT(IDataModelScriptProvider *self, IDataModelScriptTemplate** templateContent) GetDefaultTemplateContent;
				public function HRESULT(IDataModelScriptProvider *self, IDataModelScriptTemplateEnumerator** enumerator) EnumerateTemplates;
			}
		}
		[CRepr]
		public struct IDataModelScriptProviderEnumerator : IUnknown
		{
			public const new Guid IID = .(0x95ba00e2, 0x704a, 0x4fe2, 0xa8, 0xf1, 0xa7, 0xe7, 0xd8, 0xfb, 0x09, 0x41);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptProviderEnumerator *self) Reset;
				public function HRESULT(IDataModelScriptProviderEnumerator *self, IDataModelScriptProvider** provider) GetNext;
			}
		}
		[CRepr]
		public struct IDataModelScriptManager : IUnknown
		{
			public const new Guid IID = .(0x6fd11e33, 0xe5ad, 0x410b, 0x80, 0x11, 0x68, 0xc6, 0xbc, 0x4b, 0xf8, 0x0d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptManager *self, IDataModelNameBinder** ppNameBinder) GetDefaultNameBinder;
				public function HRESULT(IDataModelScriptManager *self, IDataModelScriptProvider* provider) RegisterScriptProvider;
				public function HRESULT(IDataModelScriptManager *self, IDataModelScriptProvider* provider) UnregisterScriptProvider;
				public function HRESULT(IDataModelScriptManager *self, PWSTR scriptType, IDataModelScriptProvider** provider) FindProviderForScriptType;
				public function HRESULT(IDataModelScriptManager *self, PWSTR scriptExtension, IDataModelScriptProvider** provider) FindProviderForScriptExtension;
				public function HRESULT(IDataModelScriptManager *self, IDataModelScriptProviderEnumerator** enumerator) EnumerateScriptProviders;
			}
		}
		[CRepr]
		public struct IDynamicKeyProviderConcept : IUnknown
		{
			public const new Guid IID = .(0xe7983fa1, 0x80a7, 0x498c, 0x98, 0x8f, 0x51, 0x8d, 0xdc, 0x5d, 0x40, 0x25);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDynamicKeyProviderConcept *self, IModelObject* contextObject, PWSTR key, IModelObject** keyValue, IKeyStore** metadata, Boolean* hasKey) GetKey;
				public function HRESULT(IDynamicKeyProviderConcept *self, IModelObject* contextObject, PWSTR key, IModelObject* keyValue, IKeyStore* metadata) SetKey;
				public function HRESULT(IDynamicKeyProviderConcept *self, IModelObject* contextObject, IKeyEnumerator** ppEnumerator) EnumerateKeys;
			}
		}
		[CRepr]
		public struct IDynamicConceptProviderConcept : IUnknown
		{
			public const new Guid IID = .(0x95a7f7dd, 0x602e, 0x483f, 0x9d, 0x06, 0xa1, 0x5c, 0x0e, 0xe1, 0x31, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDynamicConceptProviderConcept *self, IModelObject* contextObject, Guid* conceptId, IUnknown** conceptInterface, IKeyStore** conceptMetadata, Boolean* hasConcept) GetConcept;
				public function HRESULT(IDynamicConceptProviderConcept *self, IModelObject* contextObject, Guid* conceptId, IUnknown* conceptInterface, IKeyStore* conceptMetadata) SetConcept;
				public function HRESULT(IDynamicConceptProviderConcept *self, IModelObject* parentModel) NotifyParent;
				public function HRESULT(IDynamicConceptProviderConcept *self, IModelObject* parentModel) NotifyParentChange;
				public function HRESULT(IDynamicConceptProviderConcept *self) NotifyDestruct;
			}
		}
		[CRepr]
		public struct IDataModelScriptHostContext : IUnknown
		{
			public const new Guid IID = .(0x014d366a, 0x1f23, 0x4981, 0x92, 0x19, 0xb2, 0xdb, 0x8b, 0x40, 0x20, 0x54);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptHostContext *self, IDataModelScript* script, ScriptChangeKind changeKind) NotifyScriptChange;
				public function HRESULT(IDataModelScriptHostContext *self, IModelObject** namespaceObject) GetNamespaceObject;
			}
		}
		[CRepr]
		public struct IDebugHostScriptHost : IUnknown
		{
			public const new Guid IID = .(0xb70334a4, 0xb92c, 0x4570, 0x93, 0xa1, 0xd3, 0xeb, 0x68, 0x66, 0x49, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostScriptHost *self, IDataModelScript* script, IDataModelScriptHostContext** scriptContext) CreateContext;
			}
		}
		[CRepr]
		public struct IDataModelNameBinder : IUnknown
		{
			public const new Guid IID = .(0xaf352b7b, 0x8292, 0x4c01, 0xb3, 0x60, 0x2d, 0xc3, 0x69, 0x6c, 0x65, 0xe7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelNameBinder *self, IModelObject* contextObject, PWSTR name, IModelObject** value, IKeyStore** metadata) BindValue;
				public function HRESULT(IDataModelNameBinder *self, IModelObject* contextObject, PWSTR name, IModelObject** reference, IKeyStore** metadata) BindReference;
				public function HRESULT(IDataModelNameBinder *self, IModelObject* contextObject, IKeyEnumerator** enumerator) EnumerateValues;
				public function HRESULT(IDataModelNameBinder *self, IModelObject* contextObject, IKeyEnumerator** enumerator) EnumerateReferences;
			}
		}
		[CRepr]
		public struct IModelKeyReference2 : IModelKeyReference
		{
			public const new Guid IID = .(0x80e2f7c5, 0x7159, 0x4e92, 0x88, 0x7e, 0x7e, 0x03, 0x47, 0xe8, 0x84, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IModelKeyReference.VTable
			{
				public function HRESULT(IModelKeyReference2 *self, IModelObject* newContextObject) OverrideContextObject;
			}
		}
		[CRepr]
		public struct IDebugHostEvaluator2 : IDebugHostEvaluator
		{
			public const new Guid IID = .(0xa117a435, 0x1fb4, 0x4092, 0xa2, 0xab, 0xa9, 0x29, 0x57, 0x6c, 0x1e, 0x87);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostEvaluator.VTable
			{
				public function HRESULT(IDebugHostEvaluator2 *self, IModelObject* assignmentReference, IModelObject* assignmentValue, IModelObject** assignmentResult, IKeyStore** assignmentMetadata) AssignTo;
			}
		}
		[CRepr]
		public struct IDataModelManager2 : IDataModelManager
		{
			public const new Guid IID = .(0xf412c5ea, 0x2284, 0x4622, 0xa6, 0x60, 0xa6, 0x97, 0x16, 0x0d, 0x33, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataModelManager.VTable
			{
				public function HRESULT(IDataModelManager2 *self, PWSTR modelName, PWSTR subNamespaceModelName, PWSTR accessName, IKeyStore* metadata, IModelObject** namespaceModelObject) AcquireSubNamespace;
				public function HRESULT(IDataModelManager2 *self, IDebugHostContext* context, VARIANT* intrinsicData, IDebugHostType* type, IModelObject** object) CreateTypedIntrinsicObjectEx;
			}
		}
		[CRepr]
		public struct IDebugHostMemory2 : IDebugHostMemory
		{
			public const new Guid IID = .(0xeea033de, 0x38f6, 0x416b, 0xa2, 0x51, 0x1d, 0x37, 0x71, 0x00, 0x12, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostMemory.VTable
			{
				public function HRESULT(IDebugHostMemory2 *self, IDebugHostContext* context, Location location, Location* pLinearizedLocation) LinearizeLocation;
			}
		}
		[CRepr]
		public struct IDebugHostExtensibility : IUnknown
		{
			public const new Guid IID = .(0x3c2b24e1, 0x11d0, 0x4f86, 0x8a, 0xe5, 0x4d, 0xf1, 0x66, 0xf7, 0x32, 0x53);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHostExtensibility *self, PWSTR aliasName, IModelObject* functionObject) CreateFunctionAlias;
				public function HRESULT(IDebugHostExtensibility *self, PWSTR aliasName) DestroyFunctionAlias;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugClient : IUnknown
		{
			public const new Guid IID = .(0x53159b6d, 0xd4c4, 0x471b, 0xa8, 0x63, 0x5b, 0x11, 0x0c, 0xa8, 0x00, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptDebugClient *self, ScriptDebugEventInformation* pEventInfo, IDataModelScript* pScript, IModelObject* pEventDataObject, ScriptExecutionKind* resumeEventKind) NotifyDebugEvent;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugVariableSetEnumerator : IUnknown
		{
			public const new Guid IID = .(0x0f9feed7, 0xd045, 0x4ac3, 0x98, 0xa8, 0xa9, 0x89, 0x42, 0xcf, 0x6a, 0x35);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptDebugVariableSetEnumerator *self) Reset;
				public function HRESULT(IDataModelScriptDebugVariableSetEnumerator *self, BSTR* variableName, IModelObject** variableValue, IKeyStore** variableMetadata) GetNext;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugStackFrame : IUnknown
		{
			public const new Guid IID = .(0xdec6ed5e, 0x6360, 0x4941, 0xab, 0x4c, 0xa2, 0x64, 0x09, 0xde, 0x4f, 0x82);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptDebugStackFrame *self, BSTR* name) GetName;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, ScriptDebugPosition* position, ScriptDebugPosition* positionSpanEnd, BSTR* lineText) GetPosition;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, Boolean* isTransitionPoint) IsTransitionPoint;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, IDataModelScript** transitionScript, Boolean* isTransitionContiguous) GetTransition;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, PWSTR pwszExpression, IModelObject** ppResult) Evaluate;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, IDataModelScriptDebugVariableSetEnumerator** variablesEnum) EnumerateLocals;
				public function HRESULT(IDataModelScriptDebugStackFrame *self, IDataModelScriptDebugVariableSetEnumerator** variablesEnum) EnumerateArguments;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugStack : IUnknown
		{
			public const new Guid IID = .(0x051364dd, 0xe449, 0x443e, 0x97, 0x62, 0xfe, 0x57, 0x8f, 0x4a, 0x54, 0x73);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint64(IDataModelScriptDebugStack *self) GetFrameCount;
				public function HRESULT(IDataModelScriptDebugStack *self, uint64 frameNumber, IDataModelScriptDebugStackFrame** stackFrame) GetStackFrame;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugBreakpoint : IUnknown
		{
			public const new Guid IID = .(0x6bb27b35, 0x02e6, 0x47cb, 0x90, 0xa0, 0x53, 0x71, 0x24, 0x40, 0x32, 0xde);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint64(IDataModelScriptDebugBreakpoint *self) GetId;
				public function Boolean(IDataModelScriptDebugBreakpoint *self) IsEnabled;
				public function void(IDataModelScriptDebugBreakpoint *self) Enable;
				public function void(IDataModelScriptDebugBreakpoint *self) Disable;
				public function void(IDataModelScriptDebugBreakpoint *self) Remove;
				public function HRESULT(IDataModelScriptDebugBreakpoint *self, ScriptDebugPosition* position, ScriptDebugPosition* positionSpanEnd, BSTR* lineText) GetPosition;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebugBreakpointEnumerator : IUnknown
		{
			public const new Guid IID = .(0x39484a75, 0xb4f3, 0x4799, 0x86, 0xda, 0x69, 0x1a, 0xfa, 0x57, 0xb2, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataModelScriptDebugBreakpointEnumerator *self) Reset;
				public function HRESULT(IDataModelScriptDebugBreakpointEnumerator *self, IDataModelScriptDebugBreakpoint** breakpoint) GetNext;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebug : IUnknown
		{
			public const new Guid IID = .(0xde8e0945, 0x9750, 0x4471, 0xab, 0x76, 0xa8, 0xf7, 0x9d, 0x6e, 0xc3, 0x50);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function ScriptDebugState(IDataModelScriptDebug *self) GetDebugState;
				public function HRESULT(IDataModelScriptDebug *self, ScriptDebugPosition* currentPosition, ScriptDebugPosition* positionSpanEnd, BSTR* lineText) GetCurrentPosition;
				public function HRESULT(IDataModelScriptDebug *self, IDataModelScriptDebugStack** @stack) GetStack;
				public function HRESULT(IDataModelScriptDebug *self, uint32 linePosition, uint32 columnPosition, IDataModelScriptDebugBreakpoint** breakpoint) SetBreakpoint;
				public function HRESULT(IDataModelScriptDebug *self, uint64 breakpointId, IDataModelScriptDebugBreakpoint** breakpoint) FindBreakpointById;
				public function HRESULT(IDataModelScriptDebug *self, IDataModelScriptDebugBreakpointEnumerator** breakpointEnum) EnumerateBreakpoints;
				public function HRESULT(IDataModelScriptDebug *self, ScriptDebugEventFilter eventFilter, Boolean* isBreakEnabled) GetEventFilter;
				public function HRESULT(IDataModelScriptDebug *self, ScriptDebugEventFilter eventFilter, uint8 isBreakEnabled) SetEventFilter;
				public function HRESULT(IDataModelScriptDebug *self, IDataModelScriptDebugClient* debugClient) StartDebugging;
				public function HRESULT(IDataModelScriptDebug *self, IDataModelScriptDebugClient* debugClient) StopDebugging;
			}
		}
		[CRepr]
		public struct IDataModelScriptDebug2 : IDataModelScriptDebug
		{
			public const new Guid IID = .(0xcbb10ed3, 0x839e, 0x426c, 0x92, 0x43, 0xe2, 0x35, 0x35, 0xc1, 0xae, 0x1a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDataModelScriptDebug.VTable
			{
				public function HRESULT(IDataModelScriptDebug2 *self, PWSTR functionName, IDataModelScriptDebugBreakpoint** breakpoint) SetBreakpointAtFunction;
			}
		}
		[CRepr]
		public struct IDebugHostModule2 : IDebugHostModule
		{
			public const new Guid IID = .(0xb51887e8, 0xbcd0, 0x4e8f, 0xa8, 0xc7, 0x43, 0x43, 0x98, 0xb7, 0x8c, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugHostModule.VTable
			{
				public function HRESULT(IDebugHostModule2 *self, uint64 rva, IDebugHostSymbol** symbol, uint64* offset) FindContainingSymbolByRVA;
			}
		}
		[CRepr]
		public struct IComparableConcept : IUnknown
		{
			public const new Guid IID = .(0xa7830646, 0x9f0c, 0x4a31, 0xba, 0x19, 0x50, 0x3f, 0x33, 0xe6, 0xc8, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IComparableConcept *self, IModelObject* contextObject, IModelObject* otherObject, int32* comparisonResult) CompareObjects;
			}
		}
		[CRepr]
		public struct IEquatableConcept : IUnknown
		{
			public const new Guid IID = .(0xc52d5d3d, 0x609d, 0x4d5d, 0x8a, 0x82, 0x46, 0xb0, 0xac, 0xde, 0xc4, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEquatableConcept *self, IModelObject* contextObject, IModelObject* otherObject, Boolean* isEqual) AreObjectsEqual;
			}
		}
		[CRepr]
		public struct IActiveScriptSite : IUnknown
		{
			public const new Guid IID = .(0xdb01a1e3, 0xa42b, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSite *self, uint32* plcid) GetLCID;
				public function HRESULT(IActiveScriptSite *self, PWSTR pstrName, uint32 dwReturnMask, IUnknown** ppiunkItem, ITypeInfo** ppti) GetItemInfo;
				public function HRESULT(IActiveScriptSite *self, BSTR* pbstrVersion) GetDocVersionString;
				public function HRESULT(IActiveScriptSite *self, VARIANT* pvarResult, EXCEPINFO* pexcepinfo) OnScriptTerminate;
				public function HRESULT(IActiveScriptSite *self, SCRIPTSTATE ssScriptState) OnStateChange;
				public function HRESULT(IActiveScriptSite *self, IActiveScriptError* pscripterror) OnScriptError;
				public function HRESULT(IActiveScriptSite *self) OnEnterScript;
				public function HRESULT(IActiveScriptSite *self) OnLeaveScript;
			}
		}
		[CRepr]
		public struct IActiveScriptError : IUnknown
		{
			public const new Guid IID = .(0xeae1ba61, 0xa4ed, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptError *self, EXCEPINFO* pexcepinfo) GetExceptionInfo;
				public function HRESULT(IActiveScriptError *self, uint32* pdwSourceContext, uint32* pulLineNumber, int32* plCharacterPosition) GetSourcePosition;
				public function HRESULT(IActiveScriptError *self, BSTR* pbstrSourceLine) GetSourceLineText;
			}
		}
		[CRepr]
		public struct IActiveScriptError64 : IActiveScriptError
		{
			public const new Guid IID = .(0xb21fb2a1, 0x5b8f, 0x4963, 0x8c, 0x21, 0x21, 0x45, 0x0f, 0x84, 0xed, 0x7f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptError.VTable
			{
				public function HRESULT(IActiveScriptError64 *self, uint64* pdwSourceContext, uint32* pulLineNumber, int32* plCharacterPosition) GetSourcePosition64;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteWindow : IUnknown
		{
			public const new Guid IID = .(0xd10f6761, 0x83e9, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteWindow *self, HWND* phwnd) GetWindow;
				public function HRESULT(IActiveScriptSiteWindow *self, BOOL fEnable) EnableModeless;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteUIControl : IUnknown
		{
			public const new Guid IID = .(0xaedae97e, 0xd7ee, 0x4796, 0xb9, 0x60, 0x7f, 0x09, 0x2a, 0xe8, 0x44, 0xab);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteUIControl *self, SCRIPTUICITEM UicItem, SCRIPTUICHANDLING* pUicHandling) GetUIBehavior;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteInterruptPoll : IUnknown
		{
			public const new Guid IID = .(0x539698a0, 0xcdca, 0x11cf, 0xa5, 0xeb, 0x00, 0xaa, 0x00, 0x47, 0xa0, 0x63);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteInterruptPoll *self) QueryContinue;
			}
		}
		[CRepr]
		public struct IActiveScript : IUnknown
		{
			public const new Guid IID = .(0xbb1a2ae1, 0xa4f9, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScript *self, IActiveScriptSite* pass) SetScriptSite;
				public function HRESULT(IActiveScript *self, Guid* riid, void** ppvObject) GetScriptSite;
				public function HRESULT(IActiveScript *self, SCRIPTSTATE ss) SetScriptState;
				public function HRESULT(IActiveScript *self, SCRIPTSTATE* pssState) GetScriptState;
				public function HRESULT(IActiveScript *self) Close;
				public function HRESULT(IActiveScript *self, PWSTR pstrName, uint32 dwFlags) AddNamedItem;
				public function HRESULT(IActiveScript *self, Guid* rguidTypeLib, uint32 dwMajor, uint32 dwMinor, uint32 dwFlags) AddTypeLib;
				public function HRESULT(IActiveScript *self, PWSTR pstrItemName, IDispatch** ppdisp) GetScriptDispatch;
				public function HRESULT(IActiveScript *self, uint32* pstidThread) GetCurrentScriptThreadID;
				public function HRESULT(IActiveScript *self, uint32 dwWin32ThreadId, uint32* pstidThread) GetScriptThreadID;
				public function HRESULT(IActiveScript *self, uint32 stidThread, SCRIPTTHREADSTATE* pstsState) GetScriptThreadState;
				public function HRESULT(IActiveScript *self, uint32 stidThread, EXCEPINFO* pexcepinfo, uint32 dwFlags) InterruptScriptThread;
				public function HRESULT(IActiveScript *self, IActiveScript** ppscript) Clone;
			}
		}
		[CRepr]
		public struct IActiveScriptParse32 : IUnknown
		{
			public const new Guid IID = .(0xbb1a2ae2, 0xa4f9, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParse32 *self) InitNew;
				public function HRESULT(IActiveScriptParse32 *self, PWSTR pstrDefaultName, PWSTR pstrCode, PWSTR pstrItemName, PWSTR pstrSubItemName, PWSTR pstrEventName, PWSTR pstrDelimiter, uint32 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, BSTR* pbstrName, EXCEPINFO* pexcepinfo) AddScriptlet;
				public function HRESULT(IActiveScriptParse32 *self, PWSTR pstrCode, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint32 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, VARIANT* pvarResult, EXCEPINFO* pexcepinfo) ParseScriptText;
			}
		}
		[CRepr]
		public struct IActiveScriptParse64 : IUnknown
		{
			public const new Guid IID = .(0xc7ef7658, 0xe1ee, 0x480e, 0x97, 0xea, 0xd5, 0x2c, 0xb4, 0xd7, 0x6d, 0x17);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParse64 *self) InitNew;
				public function HRESULT(IActiveScriptParse64 *self, PWSTR pstrDefaultName, PWSTR pstrCode, PWSTR pstrItemName, PWSTR pstrSubItemName, PWSTR pstrEventName, PWSTR pstrDelimiter, uint64 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, BSTR* pbstrName, EXCEPINFO* pexcepinfo) AddScriptlet;
				public function HRESULT(IActiveScriptParse64 *self, PWSTR pstrCode, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint64 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, VARIANT* pvarResult, EXCEPINFO* pexcepinfo) ParseScriptText;
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedureOld32 : IUnknown
		{
			public const new Guid IID = .(0x1cff0050, 0x6fdd, 0x11d0, 0x93, 0x28, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParseProcedureOld32 *self, PWSTR pstrCode, PWSTR pstrFormalParams, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint32 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, IDispatch** ppdisp) ParseProcedureText;
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedureOld64 : IUnknown
		{
			public const new Guid IID = .(0x21f57128, 0x08c9, 0x4638, 0xba, 0x12, 0x22, 0xd1, 0x5d, 0x88, 0xdc, 0x5c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParseProcedureOld64 *self, PWSTR pstrCode, PWSTR pstrFormalParams, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint64 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, IDispatch** ppdisp) ParseProcedureText;
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedure32 : IUnknown
		{
			public const new Guid IID = .(0xaa5b6a80, 0xb834, 0x11d0, 0x93, 0x2f, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParseProcedure32 *self, PWSTR pstrCode, PWSTR pstrFormalParams, PWSTR pstrProcedureName, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint32 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, IDispatch** ppdisp) ParseProcedureText;
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedure64 : IUnknown
		{
			public const new Guid IID = .(0xc64713b6, 0xe029, 0x4cc5, 0x92, 0x00, 0x43, 0x8b, 0x72, 0x89, 0x0b, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptParseProcedure64 *self, PWSTR pstrCode, PWSTR pstrFormalParams, PWSTR pstrProcedureName, PWSTR pstrItemName, IUnknown* punkContext, PWSTR pstrDelimiter, uint64 dwSourceContextCookie, uint32 ulStartingLineNumber, uint32 dwFlags, IDispatch** ppdisp) ParseProcedureText;
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedure2_32 : IActiveScriptParseProcedure32
		{
			public const new Guid IID = .(0x71ee5b20, 0xfb04, 0x11d1, 0xb3, 0xa8, 0x00, 0xa0, 0xc9, 0x11, 0xe8, 0xb2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptParseProcedure32.VTable
			{
			}
		}
		[CRepr]
		public struct IActiveScriptParseProcedure2_64 : IActiveScriptParseProcedure64
		{
			public const new Guid IID = .(0xfe7c4271, 0x210c, 0x448d, 0x9f, 0x54, 0x76, 0xda, 0xb7, 0x04, 0x7b, 0x28);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptParseProcedure64.VTable
			{
			}
		}
		[CRepr]
		public struct IActiveScriptEncode : IUnknown
		{
			public const new Guid IID = .(0xbb1a2ae3, 0xa4f9, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptEncode *self, PWSTR pchIn, uint32 cchIn, PWSTR pchOut, uint32 cchOut, uint32* pcchRet) EncodeSection;
				public function HRESULT(IActiveScriptEncode *self, PWSTR pchIn, uint32 cchIn, PWSTR pchOut, uint32 cchOut, uint32* pcchRet) DecodeScript;
				public function HRESULT(IActiveScriptEncode *self, BSTR* pbstrOut) GetEncodeProgId;
			}
		}
		[CRepr]
		public struct IActiveScriptHostEncode : IUnknown
		{
			public const new Guid IID = .(0xbee9b76e, 0xcfe3, 0x11d1, 0xb7, 0x47, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptHostEncode *self, BSTR bstrInFile, BSTR* pbstrOutFile, uint32 cFlags, BSTR bstrDefaultLang) EncodeScriptHostFile;
			}
		}
		[CRepr]
		public struct IBindEventHandler : IUnknown
		{
			public const new Guid IID = .(0x63cdbcb0, 0xc1b1, 0x11d0, 0x93, 0x36, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBindEventHandler *self, PWSTR pstrEvent, IDispatch* pdisp) BindHandler;
			}
		}
		[CRepr]
		public struct IActiveScriptStats : IUnknown
		{
			public const new Guid IID = .(0xb8da6310, 0xe19b, 0x11d0, 0x93, 0x3c, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptStats *self, uint32 stid, uint32* pluHi, uint32* pluLo) GetStat;
				public function HRESULT(IActiveScriptStats *self, Guid* guid, uint32* pluHi, uint32* pluLo) GetStatEx;
				public function HRESULT(IActiveScriptStats *self) ResetStats;
			}
		}
		[CRepr]
		public struct IActiveScriptProperty : IUnknown
		{
			public const new Guid IID = .(0x4954e0d0, 0xfbc7, 0x11d1, 0x84, 0x10, 0x00, 0x60, 0x08, 0xc3, 0xfb, 0xfc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptProperty *self, uint32 dwProperty, VARIANT* pvarIndex, VARIANT* pvarValue) GetProperty;
				public function HRESULT(IActiveScriptProperty *self, uint32 dwProperty, VARIANT* pvarIndex, VARIANT* pvarValue) SetProperty;
			}
		}
		[CRepr]
		public struct ITridentEventSink : IUnknown
		{
			public const new Guid IID = .(0x1dc9ca50, 0x06ef, 0x11d2, 0x84, 0x15, 0x00, 0x60, 0x08, 0xc3, 0xfb, 0xfc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITridentEventSink *self, PWSTR pstrEvent, DISPPARAMS* pdp, VARIANT* pvarRes, EXCEPINFO* pei) FireEvent;
			}
		}
		[CRepr]
		public struct IActiveScriptGarbageCollector : IUnknown
		{
			public const new Guid IID = .(0x6aa2c4a0, 0x2b53, 0x11d4, 0xa2, 0xa0, 0x00, 0x10, 0x4b, 0xd3, 0x50, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptGarbageCollector *self, SCRIPTGCTYPE scriptgctype) CollectGarbage;
			}
		}
		[CRepr]
		public struct IActiveScriptSIPInfo : IUnknown
		{
			public const new Guid IID = .(0x764651d0, 0x38de, 0x11d4, 0xa2, 0xa3, 0x00, 0x10, 0x4b, 0xd3, 0x50, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSIPInfo *self, Guid* poid_sip) GetSIPOID;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteTraceInfo : IUnknown
		{
			public const new Guid IID = .(0x4b7272ae, 0x1955, 0x4bfe, 0x98, 0xb0, 0x78, 0x06, 0x21, 0x88, 0x85, 0x69);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteTraceInfo *self, SCRIPTTRACEINFO stiEventType, Guid guidContextID, uint32 dwScriptContextCookie, int32 lScriptStatementStart, int32 lScriptStatementEnd, uint64 dwReserved) SendScriptTraceInfo;
			}
		}
		[CRepr]
		public struct IActiveScriptTraceInfo : IUnknown
		{
			public const new Guid IID = .(0xc35456e7, 0xbebf, 0x4a1b, 0x86, 0xa9, 0x24, 0xd5, 0x6b, 0xe8, 0xb3, 0x69);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptTraceInfo *self, IActiveScriptSiteTraceInfo* pSiteTraceInfo, Guid guidContextID) StartScriptTracing;
				public function HRESULT(IActiveScriptTraceInfo *self) StopScriptTracing;
			}
		}
		[CRepr]
		public struct IActiveScriptStringCompare : IUnknown
		{
			public const new Guid IID = .(0x58562769, 0xed52, 0x42f7, 0x84, 0x03, 0x49, 0x63, 0x51, 0x4e, 0x1f, 0x11);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptStringCompare *self, BSTR bszStr1, BSTR bszStr2, int32* iRet) StrComp;
			}
		}
		[CRepr]
		public struct IDebugProperty : IUnknown
		{
			public const new Guid IID = .(0x51973c50, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugProperty *self, uint32 dwFieldSpec, uint32 nRadix, DebugPropertyInfo* pPropertyInfo) GetPropertyInfo;
				public function HRESULT(IDebugProperty *self, uint32 cInfos, Guid* rgguidExtendedInfo, VARIANT* rgvar) GetExtendedInfo;
				public function HRESULT(IDebugProperty *self, PWSTR pszValue, uint32 nRadix) SetValueAsString;
				public function HRESULT(IDebugProperty *self, uint32 dwFieldSpec, uint32 nRadix, Guid* refiid, IEnumDebugPropertyInfo** ppepi) EnumMembers;
				public function HRESULT(IDebugProperty *self, IDebugProperty** ppDebugProp) GetParent;
			}
		}
		[CRepr]
		public struct IEnumDebugPropertyInfo : IUnknown
		{
			public const new Guid IID = .(0x51973c51, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugPropertyInfo *self, uint32 celt, DebugPropertyInfo* pi, uint32* pcEltsfetched) Next;
				public function HRESULT(IEnumDebugPropertyInfo *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugPropertyInfo *self) Reset;
				public function HRESULT(IEnumDebugPropertyInfo *self, IEnumDebugPropertyInfo** ppepi) Clone;
				public function HRESULT(IEnumDebugPropertyInfo *self, uint32* pcelt) GetCount;
			}
		}
		[CRepr]
		public struct IDebugExtendedProperty : IDebugProperty
		{
			public const new Guid IID = .(0x51973c52, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugProperty.VTable
			{
				public function HRESULT(IDebugExtendedProperty *self, uint32 dwFieldSpec, uint32 nRadix, ExtendedDebugPropertyInfo* pExtendedPropertyInfo) GetExtendedPropertyInfo;
				public function HRESULT(IDebugExtendedProperty *self, uint32 dwFieldSpec, uint32 nRadix, IEnumDebugExtendedPropertyInfo** ppeepi) EnumExtendedMembers;
			}
		}
		[CRepr]
		public struct IEnumDebugExtendedPropertyInfo : IUnknown
		{
			public const new Guid IID = .(0x51973c53, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugExtendedPropertyInfo *self, uint32 celt, ExtendedDebugPropertyInfo* rgExtendedPropertyInfo, uint32* pceltFetched) Next;
				public function HRESULT(IEnumDebugExtendedPropertyInfo *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugExtendedPropertyInfo *self) Reset;
				public function HRESULT(IEnumDebugExtendedPropertyInfo *self, IEnumDebugExtendedPropertyInfo** pedpe) Clone;
				public function HRESULT(IEnumDebugExtendedPropertyInfo *self, uint32* pcelt) GetCount;
			}
		}
		[CRepr]
		public struct IPerPropertyBrowsing2 : IUnknown
		{
			public const new Guid IID = .(0x51973c54, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPerPropertyBrowsing2 *self, int32 dispid, BSTR* pBstr) GetDisplayString;
				public function HRESULT(IPerPropertyBrowsing2 *self, int32 dispid, Guid* pClsidPropPage) MapPropertyToPage;
				public function HRESULT(IPerPropertyBrowsing2 *self, int32 dispid, CALPOLESTR* pCaStrings, CADWORD* pCaCookies) GetPredefinedStrings;
				public function HRESULT(IPerPropertyBrowsing2 *self, int32 dispid, uint32 dwCookie) SetPredefinedValue;
			}
		}
		[CRepr]
		public struct IDebugPropertyEnumType_All : IUnknown
		{
			public const new Guid IID = .(0x51973c55, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugPropertyEnumType_All *self, BSTR* __MIDL__IDebugPropertyEnumType_All0000) GetName;
			}
		}
		[CRepr]
		public struct IDebugPropertyEnumType_Locals : IDebugPropertyEnumType_All
		{
			public const new Guid IID = .(0x51973c56, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugPropertyEnumType_All.VTable
			{
			}
		}
		[CRepr]
		public struct IDebugPropertyEnumType_Arguments : IDebugPropertyEnumType_All
		{
			public const new Guid IID = .(0x51973c57, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugPropertyEnumType_All.VTable
			{
			}
		}
		[CRepr]
		public struct IDebugPropertyEnumType_LocalsPlusArgs : IDebugPropertyEnumType_All
		{
			public const new Guid IID = .(0x51973c58, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugPropertyEnumType_All.VTable
			{
			}
		}
		[CRepr]
		public struct IDebugPropertyEnumType_Registers : IDebugPropertyEnumType_All
		{
			public const new Guid IID = .(0x51973c59, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugPropertyEnumType_All.VTable
			{
			}
		}
		[CRepr]
		public struct IActiveScriptDebug32 : IUnknown
		{
			public const new Guid IID = .(0x51973c10, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptDebug32 *self, char16* pstrCode, uint32 uNumCodeChars, PWSTR pstrDelimiter, uint32 dwFlags, uint16* pattr) GetScriptTextAttributes;
				public function HRESULT(IActiveScriptDebug32 *self, char16* pstrCode, uint32 uNumCodeChars, PWSTR pstrDelimiter, uint32 dwFlags, uint16* pattr) GetScriptletTextAttributes;
				public function HRESULT(IActiveScriptDebug32 *self, uint32 dwSourceContext, uint32 uCharacterOffset, uint32 uNumChars, IEnumDebugCodeContexts** ppescc) EnumCodeContextsOfPosition;
			}
		}
		[CRepr]
		public struct IActiveScriptDebug64 : IUnknown
		{
			public const new Guid IID = .(0xbc437e23, 0xf5b8, 0x47f4, 0xbb, 0x79, 0x7d, 0x1c, 0xe5, 0x48, 0x3b, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptDebug64 *self, char16* pstrCode, uint32 uNumCodeChars, PWSTR pstrDelimiter, uint32 dwFlags, uint16* pattr) GetScriptTextAttributes;
				public function HRESULT(IActiveScriptDebug64 *self, char16* pstrCode, uint32 uNumCodeChars, PWSTR pstrDelimiter, uint32 dwFlags, uint16* pattr) GetScriptletTextAttributes;
				public function HRESULT(IActiveScriptDebug64 *self, uint64 dwSourceContext, uint32 uCharacterOffset, uint32 uNumChars, IEnumDebugCodeContexts** ppescc) EnumCodeContextsOfPosition;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteDebug32 : IUnknown
		{
			public const new Guid IID = .(0x51973c11, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteDebug32 *self, uint32 dwSourceContext, uint32 uCharacterOffset, uint32 uNumChars, IDebugDocumentContext** ppsc) GetDocumentContextFromPosition;
				public function HRESULT(IActiveScriptSiteDebug32 *self, IDebugApplication32** ppda) GetApplication;
				public function HRESULT(IActiveScriptSiteDebug32 *self, IDebugApplicationNode** ppdanRoot) GetRootApplicationNode;
				public function HRESULT(IActiveScriptSiteDebug32 *self, IActiveScriptErrorDebug* pErrorDebug, BOOL* pfEnterDebugger, BOOL* pfCallOnScriptErrorWhenContinuing) OnScriptErrorDebug;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteDebug64 : IUnknown
		{
			public const new Guid IID = .(0xd6b96b0a, 0x7463, 0x402c, 0x92, 0xac, 0x89, 0x98, 0x42, 0x26, 0x94, 0x2f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteDebug64 *self, uint64 dwSourceContext, uint32 uCharacterOffset, uint32 uNumChars, IDebugDocumentContext** ppsc) GetDocumentContextFromPosition;
				public function HRESULT(IActiveScriptSiteDebug64 *self, IDebugApplication64** ppda) GetApplication;
				public function HRESULT(IActiveScriptSiteDebug64 *self, IDebugApplicationNode** ppdanRoot) GetRootApplicationNode;
				public function HRESULT(IActiveScriptSiteDebug64 *self, IActiveScriptErrorDebug* pErrorDebug, BOOL* pfEnterDebugger, BOOL* pfCallOnScriptErrorWhenContinuing) OnScriptErrorDebug;
			}
		}
		[CRepr]
		public struct IActiveScriptSiteDebugEx : IUnknown
		{
			public const new Guid IID = .(0xbb722ccb, 0x6ad2, 0x41c6, 0xb7, 0x80, 0xaf, 0x9c, 0x03, 0xee, 0x69, 0xf5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptSiteDebugEx *self, IActiveScriptErrorDebug* pErrorDebug, BOOL* pfCallOnScriptErrorWhenContinuing) OnCanNotJITScriptErrorDebug;
			}
		}
		[CRepr]
		public struct IActiveScriptErrorDebug : IActiveScriptError
		{
			public const new Guid IID = .(0x51973c12, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptError.VTable
			{
				public function HRESULT(IActiveScriptErrorDebug *self, IDebugDocumentContext** ppssc) GetDocumentContext;
				public function HRESULT(IActiveScriptErrorDebug *self, IDebugStackFrame** ppdsf) GetStackFrame;
			}
		}
		[CRepr]
		public struct IDebugCodeContext : IUnknown
		{
			public const new Guid IID = .(0x51973c13, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugCodeContext *self, IDebugDocumentContext** ppsc) GetDocumentContext;
				public function HRESULT(IDebugCodeContext *self, BREAKPOINT_STATE bps) SetBreakPoint;
			}
		}
		[CRepr]
		public struct IDebugExpression : IUnknown
		{
			public const new Guid IID = .(0x51973c14, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugExpression *self, IDebugExpressionCallBack* pdecb) Start;
				public function HRESULT(IDebugExpression *self) Abort;
				public function HRESULT(IDebugExpression *self) QueryIsComplete;
				public function HRESULT(IDebugExpression *self, HRESULT* phrResult, BSTR* pbstrResult) GetResultAsString;
				public function HRESULT(IDebugExpression *self, HRESULT* phrResult, IDebugProperty** ppdp) GetResultAsDebugProperty;
			}
		}
		[CRepr]
		public struct IDebugExpressionContext : IUnknown
		{
			public const new Guid IID = .(0x51973c15, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugExpressionContext *self, PWSTR pstrCode, uint32 nRadix, PWSTR pstrDelimiter, uint32 dwFlags, IDebugExpression** ppe) ParseLanguageText;
				public function HRESULT(IDebugExpressionContext *self, BSTR* pbstrLanguageName, Guid* pLanguageID) GetLanguageInfo;
			}
		}
		[CRepr]
		public struct IDebugExpressionCallBack : IUnknown
		{
			public const new Guid IID = .(0x51973c16, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugExpressionCallBack *self) onComplete;
			}
		}
		[CRepr]
		public struct IDebugStackFrame : IUnknown
		{
			public const new Guid IID = .(0x51973c17, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugStackFrame *self, IDebugCodeContext** ppcc) GetCodeContext;
				public function HRESULT(IDebugStackFrame *self, BOOL fLong, BSTR* pbstrDescription) GetDescriptionString;
				public function HRESULT(IDebugStackFrame *self, BOOL fLong, BSTR* pbstrLanguage) GetLanguageString;
				public function HRESULT(IDebugStackFrame *self, IDebugApplicationThread** ppat) GetThread;
				public function HRESULT(IDebugStackFrame *self, IDebugProperty** ppDebugProp) GetDebugProperty;
			}
		}
		[CRepr]
		public struct IDebugStackFrameSniffer : IUnknown
		{
			public const new Guid IID = .(0x51973c18, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugStackFrameSniffer *self, IEnumDebugStackFrames** ppedsf) EnumStackFrames;
			}
		}
		[CRepr]
		public struct IDebugStackFrameSnifferEx32 : IDebugStackFrameSniffer
		{
			public const new Guid IID = .(0x51973c19, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugStackFrameSniffer.VTable
			{
				public function HRESULT(IDebugStackFrameSnifferEx32 *self, uint32 dwSpMin, IEnumDebugStackFrames** ppedsf) EnumStackFramesEx32;
			}
		}
		[CRepr]
		public struct IDebugStackFrameSnifferEx64 : IDebugStackFrameSniffer
		{
			public const new Guid IID = .(0x8cd12af4, 0x49c1, 0x4d52, 0x8d, 0x8a, 0xc1, 0x46, 0xf4, 0x75, 0x81, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugStackFrameSniffer.VTable
			{
				public function HRESULT(IDebugStackFrameSnifferEx64 *self, uint64 dwSpMin, IEnumDebugStackFrames64** ppedsf) EnumStackFramesEx64;
			}
		}
		[CRepr]
		public struct IDebugSyncOperation : IUnknown
		{
			public const new Guid IID = .(0x51973c1a, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSyncOperation *self, IDebugApplicationThread** ppatTarget) GetTargetThread;
				public function HRESULT(IDebugSyncOperation *self, IUnknown** ppunkResult) Execute;
				public function HRESULT(IDebugSyncOperation *self) InProgressAbort;
			}
		}
		[CRepr]
		public struct IDebugAsyncOperation : IUnknown
		{
			public const new Guid IID = .(0x51973c1b, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAsyncOperation *self, IDebugSyncOperation** ppsdo) GetSyncDebugOperation;
				public function HRESULT(IDebugAsyncOperation *self, IDebugAsyncOperationCallBack* padocb) Start;
				public function HRESULT(IDebugAsyncOperation *self) Abort;
				public function HRESULT(IDebugAsyncOperation *self) QueryIsComplete;
				public function HRESULT(IDebugAsyncOperation *self, HRESULT* phrResult, IUnknown** ppunkResult) GetResult;
			}
		}
		[CRepr]
		public struct IDebugAsyncOperationCallBack : IUnknown
		{
			public const new Guid IID = .(0x51973c1c, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugAsyncOperationCallBack *self) onComplete;
			}
		}
		[CRepr]
		public struct IEnumDebugCodeContexts : IUnknown
		{
			public const new Guid IID = .(0x51973c1d, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugCodeContexts *self, uint32 celt, IDebugCodeContext** pscc, uint32* pceltFetched) Next;
				public function HRESULT(IEnumDebugCodeContexts *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugCodeContexts *self) Reset;
				public function HRESULT(IEnumDebugCodeContexts *self, IEnumDebugCodeContexts** ppescc) Clone;
			}
		}
		[CRepr]
		public struct IEnumDebugStackFrames : IUnknown
		{
			public const new Guid IID = .(0x51973c1e, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugStackFrames *self, uint32 celt, DebugStackFrameDescriptor* prgdsfd, uint32* pceltFetched) Next;
				public function HRESULT(IEnumDebugStackFrames *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugStackFrames *self) Reset;
				public function HRESULT(IEnumDebugStackFrames *self, IEnumDebugStackFrames** ppedsf) Clone;
			}
		}
		[CRepr]
		public struct IEnumDebugStackFrames64 : IEnumDebugStackFrames
		{
			public const new Guid IID = .(0x0dc38853, 0xc1b0, 0x4176, 0xa9, 0x84, 0xb2, 0x98, 0x36, 0x10, 0x27, 0xaf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IEnumDebugStackFrames.VTable
			{
				public function HRESULT(IEnumDebugStackFrames64 *self, uint32 celt, DebugStackFrameDescriptor64* prgdsfd, uint32* pceltFetched) Next64;
			}
		}
		[CRepr]
		public struct IDebugDocumentInfo : IUnknown
		{
			public const new Guid IID = .(0x51973c1f, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentInfo *self, DOCUMENTNAMETYPE dnt, BSTR* pbstrName) GetName;
				public function HRESULT(IDebugDocumentInfo *self, Guid* pclsidDocument) GetDocumentClassId;
			}
		}
		[CRepr]
		public struct IDebugDocumentProvider : IDebugDocumentInfo
		{
			public const new Guid IID = .(0x51973c20, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugDocumentInfo.VTable
			{
				public function HRESULT(IDebugDocumentProvider *self, IDebugDocument** ppssd) GetDocument;
			}
		}
		[CRepr]
		public struct IDebugDocument : IDebugDocumentInfo
		{
			public const new Guid IID = .(0x51973c21, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugDocumentInfo.VTable
			{
			}
		}
		[CRepr]
		public struct IDebugDocumentText : IDebugDocument
		{
			public const new Guid IID = .(0x51973c22, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugDocument.VTable
			{
				public function HRESULT(IDebugDocumentText *self, uint32* ptextdocattr) GetDocumentAttributes;
				public function HRESULT(IDebugDocumentText *self, uint32* pcNumLines, uint32* pcNumChars) GetSize;
				public function HRESULT(IDebugDocumentText *self, uint32 cLineNumber, uint32* pcCharacterPosition) GetPositionOfLine;
				public function HRESULT(IDebugDocumentText *self, uint32 cCharacterPosition, uint32* pcLineNumber, uint32* pcCharacterOffsetInLine) GetLineOfPosition;
				public function HRESULT(IDebugDocumentText *self, uint32 cCharacterPosition, char16* pcharText, uint16* pstaTextAttr, uint32* pcNumChars, uint32 cMaxChars) GetText;
				public function HRESULT(IDebugDocumentText *self, IDebugDocumentContext* psc, uint32* pcCharacterPosition, uint32* cNumChars) GetPositionOfContext;
				public function HRESULT(IDebugDocumentText *self, uint32 cCharacterPosition, uint32 cNumChars, IDebugDocumentContext** ppsc) GetContextOfPosition;
			}
		}
		[CRepr]
		public struct IDebugDocumentTextEvents : IUnknown
		{
			public const new Guid IID = .(0x51973c23, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentTextEvents *self) onDestroy;
				public function HRESULT(IDebugDocumentTextEvents *self, uint32 cCharacterPosition, uint32 cNumToInsert) onInsertText;
				public function HRESULT(IDebugDocumentTextEvents *self, uint32 cCharacterPosition, uint32 cNumToRemove) onRemoveText;
				public function HRESULT(IDebugDocumentTextEvents *self, uint32 cCharacterPosition, uint32 cNumToReplace) onReplaceText;
				public function HRESULT(IDebugDocumentTextEvents *self, uint32 cCharacterPosition, uint32 cNumToUpdate) onUpdateTextAttributes;
				public function HRESULT(IDebugDocumentTextEvents *self, uint32 textdocattr) onUpdateDocumentAttributes;
			}
		}
		[CRepr]
		public struct IDebugDocumentTextAuthor : IDebugDocumentText
		{
			public const new Guid IID = .(0x51973c24, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugDocumentText.VTable
			{
				public function HRESULT(IDebugDocumentTextAuthor *self, uint32 cCharacterPosition, uint32 cNumToInsert, char16* pcharText) InsertText;
				public function HRESULT(IDebugDocumentTextAuthor *self, uint32 cCharacterPosition, uint32 cNumToRemove) RemoveText;
				public function HRESULT(IDebugDocumentTextAuthor *self, uint32 cCharacterPosition, uint32 cNumToReplace, char16* pcharText) ReplaceText;
			}
		}
		[CRepr]
		public struct IDebugDocumentTextExternalAuthor : IUnknown
		{
			public const new Guid IID = .(0x51973c25, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentTextExternalAuthor *self, BSTR* pbstrLongName, BOOL* pfIsOriginalFile) GetPathName;
				public function HRESULT(IDebugDocumentTextExternalAuthor *self, BSTR* pbstrShortName) GetFileName;
				public function HRESULT(IDebugDocumentTextExternalAuthor *self) NotifyChanged;
			}
		}
		[CRepr]
		public struct IDebugDocumentHelper32 : IUnknown
		{
			public const new Guid IID = .(0x51973c26, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentHelper32 *self, IDebugApplication32* pda, PWSTR pszShortName, PWSTR pszLongName, uint32 docAttr) Init;
				public function HRESULT(IDebugDocumentHelper32 *self, IDebugDocumentHelper32* pddhParent) Attach;
				public function HRESULT(IDebugDocumentHelper32 *self) Detach;
				public function HRESULT(IDebugDocumentHelper32 *self, PWSTR pszText) AddUnicodeText;
				public function HRESULT(IDebugDocumentHelper32 *self, PSTR pszText) AddDBCSText;
				public function HRESULT(IDebugDocumentHelper32 *self, IDebugDocumentHost* pddh) SetDebugDocumentHost;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 cChars, uint32 dwTextStartCookie) AddDeferredText;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 ulCharOffset, uint32 cChars, IActiveScript* pas, BOOL fScriptlet, uint32* pdwSourceContext) DefineScriptBlock;
				public function HRESULT(IDebugDocumentHelper32 *self, uint16 staTextAttr) SetDefaultTextAttr;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 ulCharOffset, uint32 cChars, uint16* pstaTextAttr) SetTextAttributes;
				public function HRESULT(IDebugDocumentHelper32 *self, PWSTR pszLongName) SetLongName;
				public function HRESULT(IDebugDocumentHelper32 *self, PWSTR pszShortName) SetShortName;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 pszAttributes) SetDocumentAttr;
				public function HRESULT(IDebugDocumentHelper32 *self, IDebugApplicationNode** ppdan) GetDebugApplicationNode;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 dwSourceContext, IActiveScript** ppasd, uint32* piCharPos, uint32* pcChars) GetScriptBlockInfo;
				public function HRESULT(IDebugDocumentHelper32 *self, uint32 iCharPos, uint32 cChars, IDebugDocumentContext** ppddc) CreateDebugDocumentContext;
				public function HRESULT(IDebugDocumentHelper32 *self) BringDocumentToTop;
				public function HRESULT(IDebugDocumentHelper32 *self, IDebugDocumentContext* pddc) BringDocumentContextToTop;
			}
		}
		[CRepr]
		public struct IDebugDocumentHelper64 : IUnknown
		{
			public const new Guid IID = .(0xc4c7363c, 0x20fd, 0x47f9, 0xbd, 0x82, 0x48, 0x55, 0xe0, 0x15, 0x08, 0x71);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentHelper64 *self, IDebugApplication64* pda, PWSTR pszShortName, PWSTR pszLongName, uint32 docAttr) Init;
				public function HRESULT(IDebugDocumentHelper64 *self, IDebugDocumentHelper64* pddhParent) Attach;
				public function HRESULT(IDebugDocumentHelper64 *self) Detach;
				public function HRESULT(IDebugDocumentHelper64 *self, PWSTR pszText) AddUnicodeText;
				public function HRESULT(IDebugDocumentHelper64 *self, PSTR pszText) AddDBCSText;
				public function HRESULT(IDebugDocumentHelper64 *self, IDebugDocumentHost* pddh) SetDebugDocumentHost;
				public function HRESULT(IDebugDocumentHelper64 *self, uint32 cChars, uint32 dwTextStartCookie) AddDeferredText;
				public function HRESULT(IDebugDocumentHelper64 *self, uint32 ulCharOffset, uint32 cChars, IActiveScript* pas, BOOL fScriptlet, uint64* pdwSourceContext) DefineScriptBlock;
				public function HRESULT(IDebugDocumentHelper64 *self, uint16 staTextAttr) SetDefaultTextAttr;
				public function HRESULT(IDebugDocumentHelper64 *self, uint32 ulCharOffset, uint32 cChars, uint16* pstaTextAttr) SetTextAttributes;
				public function HRESULT(IDebugDocumentHelper64 *self, PWSTR pszLongName) SetLongName;
				public function HRESULT(IDebugDocumentHelper64 *self, PWSTR pszShortName) SetShortName;
				public function HRESULT(IDebugDocumentHelper64 *self, uint32 pszAttributes) SetDocumentAttr;
				public function HRESULT(IDebugDocumentHelper64 *self, IDebugApplicationNode** ppdan) GetDebugApplicationNode;
				public function HRESULT(IDebugDocumentHelper64 *self, uint64 dwSourceContext, IActiveScript** ppasd, uint32* piCharPos, uint32* pcChars) GetScriptBlockInfo;
				public function HRESULT(IDebugDocumentHelper64 *self, uint32 iCharPos, uint32 cChars, IDebugDocumentContext** ppddc) CreateDebugDocumentContext;
				public function HRESULT(IDebugDocumentHelper64 *self) BringDocumentToTop;
				public function HRESULT(IDebugDocumentHelper64 *self, IDebugDocumentContext* pddc) BringDocumentContextToTop;
			}
		}
		[CRepr]
		public struct IDebugDocumentHost : IUnknown
		{
			public const new Guid IID = .(0x51973c27, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentHost *self, uint32 dwTextStartCookie, char16* pcharText, uint16* pstaTextAttr, uint32* pcNumChars, uint32 cMaxChars) GetDeferredText;
				public function HRESULT(IDebugDocumentHost *self, char16* pstrCode, uint32 uNumCodeChars, PWSTR pstrDelimiter, uint32 dwFlags, uint16* pattr) GetScriptTextAttributes;
				public function HRESULT(IDebugDocumentHost *self, IUnknown** ppunkOuter) OnCreateDocumentContext;
				public function HRESULT(IDebugDocumentHost *self, BSTR* pbstrLongName, BOOL* pfIsOriginalFile) GetPathName;
				public function HRESULT(IDebugDocumentHost *self, BSTR* pbstrShortName) GetFileName;
				public function HRESULT(IDebugDocumentHost *self) NotifyChanged;
			}
		}
		[CRepr]
		public struct IDebugDocumentContext : IUnknown
		{
			public const new Guid IID = .(0x51973c28, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugDocumentContext *self, IDebugDocument** ppsd) GetDocument;
				public function HRESULT(IDebugDocumentContext *self, IEnumDebugCodeContexts** ppescc) EnumCodeContexts;
			}
		}
		[CRepr]
		public struct IDebugSessionProvider : IUnknown
		{
			public const new Guid IID = .(0x51973c29, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugSessionProvider *self, IRemoteDebugApplication* pda) StartDebugSession;
			}
		}
		[CRepr]
		public struct IApplicationDebugger : IUnknown
		{
			public const new Guid IID = .(0x51973c2a, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IApplicationDebugger *self) QueryAlive;
				public function HRESULT(IApplicationDebugger *self, Guid* rclsid, IUnknown* pUnkOuter, uint32 dwClsContext, Guid* riid, IUnknown** ppvObject) CreateInstanceAtDebugger;
				public function HRESULT(IApplicationDebugger *self, PWSTR pstr) onDebugOutput;
				public function HRESULT(IApplicationDebugger *self, IRemoteDebugApplicationThread* prpt, BREAKREASON br, IActiveScriptErrorDebug* pError) onHandleBreakPoint;
				public function HRESULT(IApplicationDebugger *self) onClose;
				public function HRESULT(IApplicationDebugger *self, Guid* riid, IUnknown* punk) onDebuggerEvent;
			}
		}
		[CRepr]
		public struct IApplicationDebuggerUI : IUnknown
		{
			public const new Guid IID = .(0x51973c2b, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IApplicationDebuggerUI *self, IDebugDocumentText* pddt) BringDocumentToTop;
				public function HRESULT(IApplicationDebuggerUI *self, IDebugDocumentContext* pddc) BringDocumentContextToTop;
			}
		}
		[CRepr]
		public struct IMachineDebugManager : IUnknown
		{
			public const new Guid IID = .(0x51973c2c, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMachineDebugManager *self, IRemoteDebugApplication* pda, uint32* pdwAppCookie) AddApplication;
				public function HRESULT(IMachineDebugManager *self, uint32 dwAppCookie) RemoveApplication;
				public function HRESULT(IMachineDebugManager *self, IEnumRemoteDebugApplications** ppeda) EnumApplications;
			}
		}
		[CRepr]
		public struct IMachineDebugManagerCookie : IUnknown
		{
			public const new Guid IID = .(0x51973c2d, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMachineDebugManagerCookie *self, IRemoteDebugApplication* pda, uint32 dwDebugAppCookie, uint32* pdwAppCookie) AddApplication;
				public function HRESULT(IMachineDebugManagerCookie *self, uint32 dwDebugAppCookie, uint32 dwAppCookie) RemoveApplication;
				public function HRESULT(IMachineDebugManagerCookie *self, IEnumRemoteDebugApplications** ppeda) EnumApplications;
			}
		}
		[CRepr]
		public struct IMachineDebugManagerEvents : IUnknown
		{
			public const new Guid IID = .(0x51973c2e, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMachineDebugManagerEvents *self, IRemoteDebugApplication* pda, uint32 dwAppCookie) onAddApplication;
				public function HRESULT(IMachineDebugManagerEvents *self, IRemoteDebugApplication* pda, uint32 dwAppCookie) onRemoveApplication;
			}
		}
		[CRepr]
		public struct IProcessDebugManager32 : IUnknown
		{
			public const new Guid IID = .(0x51973c2f, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProcessDebugManager32 *self, IDebugApplication32** ppda) CreateApplication;
				public function HRESULT(IProcessDebugManager32 *self, IDebugApplication32** ppda) GetDefaultApplication;
				public function HRESULT(IProcessDebugManager32 *self, IDebugApplication32* pda, uint32* pdwAppCookie) AddApplication;
				public function HRESULT(IProcessDebugManager32 *self, uint32 dwAppCookie) RemoveApplication;
				public function HRESULT(IProcessDebugManager32 *self, IUnknown* punkOuter, IDebugDocumentHelper32** pddh) CreateDebugDocumentHelper;
			}
		}
		[CRepr]
		public struct IProcessDebugManager64 : IUnknown
		{
			public const new Guid IID = .(0x56b9fc1c, 0x63a9, 0x4cc1, 0xac, 0x21, 0x08, 0x7d, 0x69, 0xa1, 0x7f, 0xab);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProcessDebugManager64 *self, IDebugApplication64** ppda) CreateApplication;
				public function HRESULT(IProcessDebugManager64 *self, IDebugApplication64** ppda) GetDefaultApplication;
				public function HRESULT(IProcessDebugManager64 *self, IDebugApplication64* pda, uint32* pdwAppCookie) AddApplication;
				public function HRESULT(IProcessDebugManager64 *self, uint32 dwAppCookie) RemoveApplication;
				public function HRESULT(IProcessDebugManager64 *self, IUnknown* punkOuter, IDebugDocumentHelper64** pddh) CreateDebugDocumentHelper;
			}
		}
		[CRepr]
		public struct IRemoteDebugApplication : IUnknown
		{
			public const new Guid IID = .(0x51973c30, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugApplication *self, IRemoteDebugApplicationThread* prptFocus, BREAKRESUME_ACTION bra, ERRORRESUMEACTION era) ResumeFromBreakPoint;
				public function HRESULT(IRemoteDebugApplication *self) CauseBreak;
				public function HRESULT(IRemoteDebugApplication *self, IApplicationDebugger* pad) ConnectDebugger;
				public function HRESULT(IRemoteDebugApplication *self) DisconnectDebugger;
				public function HRESULT(IRemoteDebugApplication *self, IApplicationDebugger** pad) GetDebugger;
				public function HRESULT(IRemoteDebugApplication *self, Guid* rclsid, IUnknown* pUnkOuter, uint32 dwClsContext, Guid* riid, IUnknown** ppvObject) CreateInstanceAtApplication;
				public function HRESULT(IRemoteDebugApplication *self) QueryAlive;
				public function HRESULT(IRemoteDebugApplication *self, IEnumRemoteDebugApplicationThreads** pperdat) EnumThreads;
				public function HRESULT(IRemoteDebugApplication *self, BSTR* pbstrName) GetName;
				public function HRESULT(IRemoteDebugApplication *self, IDebugApplicationNode** ppdanRoot) GetRootNode;
				public function HRESULT(IRemoteDebugApplication *self, IEnumDebugExpressionContexts** ppedec) EnumGlobalExpressionContexts;
			}
		}
		[CRepr]
		public struct IDebugApplication32 : IRemoteDebugApplication
		{
			public const new Guid IID = .(0x51973c32, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRemoteDebugApplication.VTable
			{
				public function HRESULT(IDebugApplication32 *self, PWSTR pstrName) SetName;
				public function HRESULT(IDebugApplication32 *self) StepOutComplete;
				public function HRESULT(IDebugApplication32 *self, PWSTR pstr) DebugOutput;
				public function HRESULT(IDebugApplication32 *self) StartDebugSession;
				public function HRESULT(IDebugApplication32 *self, BREAKREASON br, BREAKRESUME_ACTION* pbra) HandleBreakPoint;
				public function HRESULT(IDebugApplication32 *self) Close;
				public function HRESULT(IDebugApplication32 *self, uint32* pabf, IRemoteDebugApplicationThread** pprdatSteppingThread) GetBreakFlags;
				public function HRESULT(IDebugApplication32 *self, IDebugApplicationThread** pat) GetCurrentThread;
				public function HRESULT(IDebugApplication32 *self, IDebugSyncOperation* psdo, IDebugAsyncOperation** ppado) CreateAsyncDebugOperation;
				public function HRESULT(IDebugApplication32 *self, IDebugStackFrameSniffer* pdsfs, uint32* pdwCookie) AddStackFrameSniffer;
				public function HRESULT(IDebugApplication32 *self, uint32 dwCookie) RemoveStackFrameSniffer;
				public function HRESULT(IDebugApplication32 *self) QueryCurrentThreadIsDebuggerThread;
				public function HRESULT(IDebugApplication32 *self, IDebugThreadCall32* pptc, uint32 dwParam1, uint32 dwParam2, uint32 dwParam3) SynchronousCallInDebuggerThread;
				public function HRESULT(IDebugApplication32 *self, IDebugApplicationNode** ppdanNew) CreateApplicationNode;
				public function HRESULT(IDebugApplication32 *self, Guid* riid, IUnknown* punk) FireDebuggerEvent;
				public function HRESULT(IDebugApplication32 *self, IActiveScriptErrorDebug* pErrorDebug, IActiveScriptSite* pScriptSite, BREAKRESUME_ACTION* pbra, ERRORRESUMEACTION* perra, BOOL* pfCallOnScriptError) HandleRuntimeError;
				public function BOOL(IDebugApplication32 *self) FCanJitDebug;
				public function BOOL(IDebugApplication32 *self) FIsAutoJitDebugEnabled;
				public function HRESULT(IDebugApplication32 *self, IProvideExpressionContexts* pdsfs, uint32* pdwCookie) AddGlobalExpressionContextProvider;
				public function HRESULT(IDebugApplication32 *self, uint32 dwCookie) RemoveGlobalExpressionContextProvider;
			}
		}
		[CRepr]
		public struct IDebugApplication64 : IRemoteDebugApplication
		{
			public const new Guid IID = .(0x4dedc754, 0x04c7, 0x4f10, 0x9e, 0x60, 0x16, 0xa3, 0x90, 0xfe, 0x6e, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRemoteDebugApplication.VTable
			{
				public function HRESULT(IDebugApplication64 *self, PWSTR pstrName) SetName;
				public function HRESULT(IDebugApplication64 *self) StepOutComplete;
				public function HRESULT(IDebugApplication64 *self, PWSTR pstr) DebugOutput;
				public function HRESULT(IDebugApplication64 *self) StartDebugSession;
				public function HRESULT(IDebugApplication64 *self, BREAKREASON br, BREAKRESUME_ACTION* pbra) HandleBreakPoint;
				public function HRESULT(IDebugApplication64 *self) Close;
				public function HRESULT(IDebugApplication64 *self, uint32* pabf, IRemoteDebugApplicationThread** pprdatSteppingThread) GetBreakFlags;
				public function HRESULT(IDebugApplication64 *self, IDebugApplicationThread** pat) GetCurrentThread;
				public function HRESULT(IDebugApplication64 *self, IDebugSyncOperation* psdo, IDebugAsyncOperation** ppado) CreateAsyncDebugOperation;
				public function HRESULT(IDebugApplication64 *self, IDebugStackFrameSniffer* pdsfs, uint32* pdwCookie) AddStackFrameSniffer;
				public function HRESULT(IDebugApplication64 *self, uint32 dwCookie) RemoveStackFrameSniffer;
				public function HRESULT(IDebugApplication64 *self) QueryCurrentThreadIsDebuggerThread;
				public function HRESULT(IDebugApplication64 *self, IDebugThreadCall64* pptc, uint64 dwParam1, uint64 dwParam2, uint64 dwParam3) SynchronousCallInDebuggerThread;
				public function HRESULT(IDebugApplication64 *self, IDebugApplicationNode** ppdanNew) CreateApplicationNode;
				public function HRESULT(IDebugApplication64 *self, Guid* riid, IUnknown* punk) FireDebuggerEvent;
				public function HRESULT(IDebugApplication64 *self, IActiveScriptErrorDebug* pErrorDebug, IActiveScriptSite* pScriptSite, BREAKRESUME_ACTION* pbra, ERRORRESUMEACTION* perra, BOOL* pfCallOnScriptError) HandleRuntimeError;
				public function BOOL(IDebugApplication64 *self) FCanJitDebug;
				public function BOOL(IDebugApplication64 *self) FIsAutoJitDebugEnabled;
				public function HRESULT(IDebugApplication64 *self, IProvideExpressionContexts* pdsfs, uint64* pdwCookie) AddGlobalExpressionContextProvider;
				public function HRESULT(IDebugApplication64 *self, uint64 dwCookie) RemoveGlobalExpressionContextProvider;
			}
		}
		[CRepr]
		public struct IRemoteDebugApplicationEvents : IUnknown
		{
			public const new Guid IID = .(0x51973c33, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugApplicationEvents *self, IApplicationDebugger* pad) OnConnectDebugger;
				public function HRESULT(IRemoteDebugApplicationEvents *self) OnDisconnectDebugger;
				public function HRESULT(IRemoteDebugApplicationEvents *self, PWSTR pstrName) OnSetName;
				public function HRESULT(IRemoteDebugApplicationEvents *self, PWSTR pstr) OnDebugOutput;
				public function HRESULT(IRemoteDebugApplicationEvents *self) OnClose;
				public function HRESULT(IRemoteDebugApplicationEvents *self, IRemoteDebugApplicationThread* prdat) OnEnterBreakPoint;
				public function HRESULT(IRemoteDebugApplicationEvents *self, IRemoteDebugApplicationThread* prdat) OnLeaveBreakPoint;
				public function HRESULT(IRemoteDebugApplicationEvents *self, IRemoteDebugApplicationThread* prdat) OnCreateThread;
				public function HRESULT(IRemoteDebugApplicationEvents *self, IRemoteDebugApplicationThread* prdat) OnDestroyThread;
				public function HRESULT(IRemoteDebugApplicationEvents *self, uint32 abf, IRemoteDebugApplicationThread* prdatSteppingThread) OnBreakFlagChange;
			}
		}
		[CRepr]
		public struct IDebugApplicationNode : IDebugDocumentProvider
		{
			public const new Guid IID = .(0x51973c34, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugDocumentProvider.VTable
			{
				public function HRESULT(IDebugApplicationNode *self, IEnumDebugApplicationNodes** pperddp) EnumChildren;
				public function HRESULT(IDebugApplicationNode *self, IDebugApplicationNode** pprddp) GetParent;
				public function HRESULT(IDebugApplicationNode *self, IDebugDocumentProvider* pddp) SetDocumentProvider;
				public function HRESULT(IDebugApplicationNode *self) Close;
				public function HRESULT(IDebugApplicationNode *self, IDebugApplicationNode* pdanParent) Attach;
				public function HRESULT(IDebugApplicationNode *self) Detach;
			}
		}
		[CRepr]
		public struct IDebugApplicationNodeEvents : IUnknown
		{
			public const new Guid IID = .(0x51973c35, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpChild) onAddChild;
				public function HRESULT(IDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpChild) onRemoveChild;
				public function HRESULT(IDebugApplicationNodeEvents *self) onDetach;
				public function HRESULT(IDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpParent) onAttach;
			}
		}
		[CRepr]
		public struct AsyncIDebugApplicationNodeEvents : IUnknown
		{
			public const new Guid IID = .(0xa2e3aa3b, 0xaa8d, 0x4ebf, 0x84, 0xcd, 0x64, 0x8b, 0x73, 0x7b, 0x8c, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpChild) Begin_onAddChild;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self) Finish_onAddChild;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpChild) Begin_onRemoveChild;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self) Finish_onRemoveChild;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self) Begin_onDetach;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self) Finish_onDetach;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self, IDebugApplicationNode* prddpParent) Begin_onAttach;
				public function HRESULT(AsyncIDebugApplicationNodeEvents *self) Finish_onAttach;
			}
		}
		[CRepr]
		public struct IDebugThreadCall32 : IUnknown
		{
			public const new Guid IID = .(0x51973c36, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugThreadCall32 *self, uint32 dwParam1, uint32 dwParam2, uint32 dwParam3) ThreadCallHandler;
			}
		}
		[CRepr]
		public struct IDebugThreadCall64 : IUnknown
		{
			public const new Guid IID = .(0xcb3fa335, 0xe979, 0x42fd, 0x9f, 0xcf, 0xa7, 0x54, 0x6a, 0x0f, 0x39, 0x05);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugThreadCall64 *self, uint64 dwParam1, uint64 dwParam2, uint64 dwParam3) ThreadCallHandler;
			}
		}
		[CRepr]
		public struct IRemoteDebugApplicationThread : IUnknown
		{
			public const new Guid IID = .(0x51973c37, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugApplicationThread *self, uint32* dwThreadId) GetSystemThreadId;
				public function HRESULT(IRemoteDebugApplicationThread *self, IRemoteDebugApplication** pprda) GetApplication;
				public function HRESULT(IRemoteDebugApplicationThread *self, IEnumDebugStackFrames** ppedsf) EnumStackFrames;
				public function HRESULT(IRemoteDebugApplicationThread *self, BSTR* pbstrDescription, BSTR* pbstrState) GetDescription;
				public function HRESULT(IRemoteDebugApplicationThread *self, IDebugStackFrame* pStackFrame, IDebugCodeContext* pCodeContext) SetNextStatement;
				public function HRESULT(IRemoteDebugApplicationThread *self, uint32* pState) GetState;
				public function HRESULT(IRemoteDebugApplicationThread *self, uint32* pdwCount) Suspend;
				public function HRESULT(IRemoteDebugApplicationThread *self, uint32* pdwCount) Resume;
				public function HRESULT(IRemoteDebugApplicationThread *self, uint32* pdwCount) GetSuspendCount;
			}
		}
		[CRepr]
		public struct IDebugApplicationThread : IRemoteDebugApplicationThread
		{
			public const new Guid IID = .(0x51973c38, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRemoteDebugApplicationThread.VTable
			{
				public function HRESULT(IDebugApplicationThread *self, IDebugThreadCall32* pstcb, uint32 dwParam1, uint32 dwParam2, uint32 dwParam3) SynchronousCallIntoThread32;
				public function HRESULT(IDebugApplicationThread *self) QueryIsCurrentThread;
				public function HRESULT(IDebugApplicationThread *self) QueryIsDebuggerThread;
				public function HRESULT(IDebugApplicationThread *self, PWSTR pstrDescription) SetDescription;
				public function HRESULT(IDebugApplicationThread *self, PWSTR pstrState) SetStateString;
			}
		}
		[CRepr]
		public struct IDebugApplicationThread64 : IDebugApplicationThread
		{
			public const new Guid IID = .(0x9dac5886, 0xdbad, 0x456d, 0x9d, 0xee, 0x5d, 0xec, 0x39, 0xab, 0x3d, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugApplicationThread.VTable
			{
				public function HRESULT(IDebugApplicationThread64 *self, IDebugThreadCall64* pstcb, uint64 dwParam1, uint64 dwParam2, uint64 dwParam3) SynchronousCallIntoThread64;
			}
		}
		[CRepr]
		public struct IDebugCookie : IUnknown
		{
			public const new Guid IID = .(0x51973c39, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugCookie *self, uint32 dwDebugAppCookie) SetDebugCookie;
			}
		}
		[CRepr]
		public struct IEnumDebugApplicationNodes : IUnknown
		{
			public const new Guid IID = .(0x51973c3a, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugApplicationNodes *self, uint32 celt, IDebugApplicationNode** pprddp, uint32* pceltFetched) Next;
				public function HRESULT(IEnumDebugApplicationNodes *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugApplicationNodes *self) Reset;
				public function HRESULT(IEnumDebugApplicationNodes *self, IEnumDebugApplicationNodes** pperddp) Clone;
			}
		}
		[CRepr]
		public struct IEnumRemoteDebugApplications : IUnknown
		{
			public const new Guid IID = .(0x51973c3b, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumRemoteDebugApplications *self, uint32 celt, IRemoteDebugApplication** ppda, uint32* pceltFetched) Next;
				public function HRESULT(IEnumRemoteDebugApplications *self, uint32 celt) Skip;
				public function HRESULT(IEnumRemoteDebugApplications *self) Reset;
				public function HRESULT(IEnumRemoteDebugApplications *self, IEnumRemoteDebugApplications** ppessd) Clone;
			}
		}
		[CRepr]
		public struct IEnumRemoteDebugApplicationThreads : IUnknown
		{
			public const new Guid IID = .(0x51973c3c, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumRemoteDebugApplicationThreads *self, uint32 celt, IRemoteDebugApplicationThread** pprdat, uint32* pceltFetched) Next;
				public function HRESULT(IEnumRemoteDebugApplicationThreads *self, uint32 celt) Skip;
				public function HRESULT(IEnumRemoteDebugApplicationThreads *self) Reset;
				public function HRESULT(IEnumRemoteDebugApplicationThreads *self, IEnumRemoteDebugApplicationThreads** pperdat) Clone;
			}
		}
		[CRepr]
		public struct IDebugFormatter : IUnknown
		{
			public const new Guid IID = .(0x51973c05, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugFormatter *self, VARIANT* pvar, uint32 nRadix, BSTR* pbstrValue) GetStringForVariant;
				public function HRESULT(IDebugFormatter *self, PWSTR pwstrValue, VARIANT* pvar) GetVariantForString;
				public function HRESULT(IDebugFormatter *self, uint16 vt, TYPEDESC* ptdescArrayType, BSTR* pbstr) GetStringForVarType;
			}
		}
		[CRepr]
		public struct ISimpleConnectionPoint : IUnknown
		{
			public const new Guid IID = .(0x51973c3e, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISimpleConnectionPoint *self, uint32* pulCount) GetEventCount;
				public function HRESULT(ISimpleConnectionPoint *self, uint32 iEvent, uint32 cEvents, int32* prgid, BSTR* prgbstr, uint32* pcEventsFetched) DescribeEvents;
				public function HRESULT(ISimpleConnectionPoint *self, IDispatch* pdisp, uint32* pdwCookie) Advise;
				public function HRESULT(ISimpleConnectionPoint *self, uint32 dwCookie) Unadvise;
			}
		}
		[CRepr]
		public struct IDebugHelper : IUnknown
		{
			public const new Guid IID = .(0x51973c3f, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugHelper *self, VARIANT* pvar, PWSTR bstrName, IDebugApplicationThread* pdat, IDebugProperty** ppdob) CreatePropertyBrowser;
				public function HRESULT(IDebugHelper *self, VARIANT* pvar, PWSTR bstrName, IDebugApplicationThread* pdat, IDebugFormatter* pdf, IDebugProperty** ppdob) CreatePropertyBrowserEx;
				public function HRESULT(IDebugHelper *self, IDispatch* pdisp, ISimpleConnectionPoint** ppscp) CreateSimpleConnectionPoint;
			}
		}
		[CRepr]
		public struct IEnumDebugExpressionContexts : IUnknown
		{
			public const new Guid IID = .(0x51973c40, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumDebugExpressionContexts *self, uint32 celt, IDebugExpressionContext** ppdec, uint32* pceltFetched) Next;
				public function HRESULT(IEnumDebugExpressionContexts *self, uint32 celt) Skip;
				public function HRESULT(IEnumDebugExpressionContexts *self) Reset;
				public function HRESULT(IEnumDebugExpressionContexts *self, IEnumDebugExpressionContexts** ppedec) Clone;
			}
		}
		[CRepr]
		public struct IProvideExpressionContexts : IUnknown
		{
			public const new Guid IID = .(0x51973c41, 0xcb0c, 0x11d0, 0xb5, 0xc9, 0x00, 0xa0, 0x24, 0x4a, 0x0e, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProvideExpressionContexts *self, IEnumDebugExpressionContexts** ppedec) EnumExpressionContexts;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerControl : IUnknown
		{
			public const new Guid IID = .(0x784b5ff0, 0x69b0, 0x47d1, 0xa7, 0xdc, 0x25, 0x18, 0xf4, 0x23, 0x0e, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptProfilerControl *self, Guid* clsidProfilerObject, uint32 dwEventMask, uint32 dwContext) StartProfiling;
				public function HRESULT(IActiveScriptProfilerControl *self, uint32 dwEventMask) SetProfilerEventMask;
				public function HRESULT(IActiveScriptProfilerControl *self, HRESULT hrShutdownReason) StopProfiling;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerControl2 : IActiveScriptProfilerControl
		{
			public const new Guid IID = .(0x47810165, 0x498f, 0x40be, 0x94, 0xf1, 0x65, 0x35, 0x57, 0xe9, 0xe7, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerControl.VTable
			{
				public function HRESULT(IActiveScriptProfilerControl2 *self) CompleteProfilerStart;
				public function HRESULT(IActiveScriptProfilerControl2 *self) PrepareProfilerStop;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerHeapEnum : IUnknown
		{
			public const new Guid IID = .(0x32e4694e, 0x0d37, 0x419b, 0xb9, 0x3d, 0xfa, 0x20, 0xde, 0xd6, 0xe8, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptProfilerHeapEnum *self, uint32 celt, PROFILER_HEAP_OBJECT** heapObjects, uint32* pceltFetched) Next;
				public function HRESULT(IActiveScriptProfilerHeapEnum *self, PROFILER_HEAP_OBJECT* heapObject, uint32 celt, PROFILER_HEAP_OBJECT_OPTIONAL_INFO* optionalInfo) GetOptionalInfo;
				public function HRESULT(IActiveScriptProfilerHeapEnum *self, uint32 celt, PROFILER_HEAP_OBJECT** heapObjects) FreeObjectAndOptionalInfo;
				public function HRESULT(IActiveScriptProfilerHeapEnum *self, PWSTR*** pNameList, uint32* pcelt) GetNameIdMap;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerControl3 : IActiveScriptProfilerControl2
		{
			public const new Guid IID = .(0x0b403015, 0xf381, 0x4023, 0xa5, 0xd0, 0x6f, 0xed, 0x07, 0x6d, 0xe7, 0x16);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerControl2.VTable
			{
				public function HRESULT(IActiveScriptProfilerControl3 *self, IActiveScriptProfilerHeapEnum** ppEnum) EnumHeap;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerControl4 : IActiveScriptProfilerControl3
		{
			public const new Guid IID = .(0x160f94fd, 0x9dbc, 0x40d4, 0x9e, 0xac, 0x2b, 0x71, 0xdb, 0x31, 0x32, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerControl3.VTable
			{
				public function HRESULT(IActiveScriptProfilerControl4 *self, PROFILER_HEAP_SUMMARY* heapSummary) SummarizeHeap;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerControl5 : IActiveScriptProfilerControl4
		{
			public const new Guid IID = .(0x1c01a2d1, 0x8f0f, 0x46a5, 0x97, 0x20, 0x0d, 0x7e, 0xd2, 0xc6, 0x2f, 0x0a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerControl4.VTable
			{
				public function HRESULT(IActiveScriptProfilerControl5 *self, PROFILER_HEAP_ENUM_FLAGS enumFlags, IActiveScriptProfilerHeapEnum** ppEnum) EnumHeap2;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerCallback : IUnknown
		{
			public const new Guid IID = .(0x740eca23, 0x7d9d, 0x42e5, 0xba, 0x9d, 0xf8, 0xb2, 0x4b, 0x1c, 0x7a, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptProfilerCallback *self, uint32 dwContext) Initialize;
				public function HRESULT(IActiveScriptProfilerCallback *self, HRESULT hrReason) Shutdown;
				public function HRESULT(IActiveScriptProfilerCallback *self, int32 scriptId, PROFILER_SCRIPT_TYPE type, IUnknown* pIDebugDocumentContext) ScriptCompiled;
				public function HRESULT(IActiveScriptProfilerCallback *self, int32 functionId, int32 scriptId, PWSTR pwszFunctionName, PWSTR pwszFunctionNameHint, IUnknown* pIDebugDocumentContext) FunctionCompiled;
				public function HRESULT(IActiveScriptProfilerCallback *self, int32 scriptId, int32 functionId) OnFunctionEnter;
				public function HRESULT(IActiveScriptProfilerCallback *self, int32 scriptId, int32 functionId) OnFunctionExit;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerCallback2 : IActiveScriptProfilerCallback
		{
			public const new Guid IID = .(0x31b7f8ad, 0xa637, 0x409c, 0xb2, 0x2f, 0x04, 0x09, 0x95, 0xb6, 0x10, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerCallback.VTable
			{
				public function HRESULT(IActiveScriptProfilerCallback2 *self, PWSTR pwszFunctionName, PROFILER_SCRIPT_TYPE type) OnFunctionEnterByName;
				public function HRESULT(IActiveScriptProfilerCallback2 *self, PWSTR pwszFunctionName, PROFILER_SCRIPT_TYPE type) OnFunctionExitByName;
			}
		}
		[CRepr]
		public struct IActiveScriptProfilerCallback3 : IActiveScriptProfilerCallback2
		{
			public const new Guid IID = .(0x6ac5ad25, 0x2037, 0x4687, 0x91, 0xdf, 0xb5, 0x99, 0x79, 0xd9, 0x3d, 0x73);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptProfilerCallback2.VTable
			{
				public function HRESULT(IActiveScriptProfilerCallback3 *self, uint32 webWorkerId) SetWebWorkerId;
			}
		}
		[CRepr]
		public struct IScriptNode : IUnknown
		{
			public const new Guid IID = .(0x0aee2a94, 0xbcbb, 0x11d0, 0x8c, 0x72, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IScriptNode *self) Alive;
				public function HRESULT(IScriptNode *self) Delete;
				public function HRESULT(IScriptNode *self, IScriptNode** ppsnParent) GetParent;
				public function HRESULT(IScriptNode *self, uint32* pisn) GetIndexInParent;
				public function HRESULT(IScriptNode *self, uint32* pdwCookie) GetCookie;
				public function HRESULT(IScriptNode *self, uint32* pcsn) GetNumberOfChildren;
				public function HRESULT(IScriptNode *self, uint32 isn, IScriptNode** ppsn) GetChild;
				public function HRESULT(IScriptNode *self, BSTR* pbstr) GetLanguage;
				public function HRESULT(IScriptNode *self, uint32 isn, uint32 dwCookie, PWSTR pszDelimiter, IScriptEntry** ppse) CreateChildEntry;
				public function HRESULT(IScriptNode *self, PWSTR pszDefaultName, PWSTR* prgpszNames, uint32 cpszNames, PWSTR pszEvent, PWSTR pszDelimiter, ITypeInfo* ptiSignature, uint32 iMethodSignature, uint32 isn, uint32 dwCookie, IScriptEntry** ppse) CreateChildHandler;
			}
		}
		[CRepr]
		public struct IScriptEntry : IScriptNode
		{
			public const new Guid IID = .(0x0aee2a95, 0xbcbb, 0x11d0, 0x8c, 0x72, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IScriptNode.VTable
			{
				public function HRESULT(IScriptEntry *self, BSTR* pbstr) GetText;
				public function HRESULT(IScriptEntry *self, PWSTR psz) SetText;
				public function HRESULT(IScriptEntry *self, BSTR* pbstr) GetBody;
				public function HRESULT(IScriptEntry *self, PWSTR psz) SetBody;
				public function HRESULT(IScriptEntry *self, BSTR* pbstr) GetName;
				public function HRESULT(IScriptEntry *self, PWSTR psz) SetName;
				public function HRESULT(IScriptEntry *self, BSTR* pbstr) GetItemName;
				public function HRESULT(IScriptEntry *self, PWSTR psz) SetItemName;
				public function HRESULT(IScriptEntry *self, ITypeInfo** ppti, uint32* piMethod) GetSignature;
				public function HRESULT(IScriptEntry *self, ITypeInfo* pti, uint32 iMethod) SetSignature;
				public function HRESULT(IScriptEntry *self, uint32* pichMin, uint32* pcch) GetRange;
			}
		}
		[CRepr]
		public struct IScriptScriptlet : IScriptEntry
		{
			public const new Guid IID = .(0x0aee2a96, 0xbcbb, 0x11d0, 0x8c, 0x72, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IScriptEntry.VTable
			{
				public function HRESULT(IScriptScriptlet *self, BSTR* pbstr) GetSubItemName;
				public function HRESULT(IScriptScriptlet *self, PWSTR psz) SetSubItemName;
				public function HRESULT(IScriptScriptlet *self, BSTR* pbstr) GetEventName;
				public function HRESULT(IScriptScriptlet *self, PWSTR psz) SetEventName;
				public function HRESULT(IScriptScriptlet *self, BSTR* pbstr) GetSimpleEventName;
				public function HRESULT(IScriptScriptlet *self, PWSTR psz) SetSimpleEventName;
			}
		}
		[CRepr]
		public struct IActiveScriptAuthor : IUnknown
		{
			public const new Guid IID = .(0x9c109da0, 0x7006, 0x11d1, 0xb3, 0x6c, 0x00, 0xa0, 0xc9, 0x11, 0xe8, 0xb2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptAuthor *self, PWSTR pszName, uint32 dwFlags, IDispatch* pdisp) AddNamedItem;
				public function HRESULT(IActiveScriptAuthor *self, PWSTR pszDefaultName, PWSTR pszCode, PWSTR pszItemName, PWSTR pszSubItemName, PWSTR pszEventName, PWSTR pszDelimiter, uint32 dwCookie, uint32 dwFlags) AddScriptlet;
				public function HRESULT(IActiveScriptAuthor *self, PWSTR pszCode, PWSTR pszItemName, PWSTR pszDelimiter, uint32 dwCookie, uint32 dwFlags) ParseScriptText;
				public function HRESULT(IActiveScriptAuthor *self, char16* pszCode, uint32 cch, PWSTR pszDelimiter, uint32 dwFlags, uint16* pattr) GetScriptTextAttributes;
				public function HRESULT(IActiveScriptAuthor *self, char16* pszCode, uint32 cch, PWSTR pszDelimiter, uint32 dwFlags, uint16* pattr) GetScriptletTextAttributes;
				public function HRESULT(IActiveScriptAuthor *self, IScriptNode** ppsp) GetRoot;
				public function HRESULT(IActiveScriptAuthor *self, uint32* pgrfasa) GetLanguageFlags;
				public function HRESULT(IActiveScriptAuthor *self, IDispatch* pdisp, PWSTR pszItem, PWSTR pszSubItem, PWSTR pszEvent, IScriptEntry** ppse) GetEventHandler;
				public function HRESULT(IActiveScriptAuthor *self, PWSTR pszName) RemoveNamedItem;
				public function HRESULT(IActiveScriptAuthor *self, Guid* rguidTypeLib, uint32 dwMajor, uint32 dwMinor, uint32 dwFlags) AddTypeLib;
				public function HRESULT(IActiveScriptAuthor *self, Guid* rguidTypeLib, uint32 dwMajor, uint32 dwMinor) RemoveTypeLib;
				public function HRESULT(IActiveScriptAuthor *self, uint32 fRequestedList, BSTR* pbstrChars) GetChars;
				public function HRESULT(IActiveScriptAuthor *self, PWSTR pszCode, uint32 cchCode, uint32 ichCurrentPosition, uint32 dwListTypesRequested, uint32* pdwListTypesProvided, uint32* pichListAnchorPosition, uint32* pichFuncAnchorPosition, int32* pmemid, int32* piCurrentParameter, IUnknown** ppunk) GetInfoFromContext;
				public function HRESULT(IActiveScriptAuthor *self, char16 ch, BOOL* pfcommit) IsCommitChar;
			}
		}
		[CRepr]
		public struct IActiveScriptAuthorProcedure : IUnknown
		{
			public const new Guid IID = .(0x7e2d4b70, 0xbd9a, 0x11d0, 0x93, 0x36, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptAuthorProcedure *self, PWSTR pszCode, PWSTR pszFormalParams, PWSTR pszProcedureName, PWSTR pszItemName, PWSTR pszDelimiter, uint32 dwCookie, uint32 dwFlags, IDispatch* pdispFor) ParseProcedureText;
			}
		}
		[CRepr]
		public struct IDebugApplicationNode100 : IUnknown
		{
			public const new Guid IID = .(0x90a7734e, 0x841b, 0x4f77, 0x93, 0x84, 0xa2, 0x89, 0x1e, 0x76, 0xe7, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugApplicationNode100 *self, uint32 dwCookie, APPLICATION_NODE_EVENT_FILTER filter) SetFilterForEventSink;
				public function HRESULT(IDebugApplicationNode100 *self, APPLICATION_NODE_EVENT_FILTER filter, TEXT_DOCUMENT_ARRAY* pDocuments) GetExcludedDocuments;
				public function HRESULT(IDebugApplicationNode100 *self, IDebugDocument* pSearchKey) QueryIsChildNode;
			}
		}
		[CRepr]
		public struct IWebAppDiagnosticsSetup : IUnknown
		{
			public const new Guid IID = .(0x379bfbe1, 0xc6c9, 0x432a, 0x93, 0xe1, 0x6d, 0x17, 0x65, 0x6c, 0x53, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebAppDiagnosticsSetup *self, int16* pRetVal) DiagnosticsSupported;
				public function HRESULT(IWebAppDiagnosticsSetup *self, Guid* rclsid, uint32 dwClsContext, Guid* riid, uint hPassToObject) CreateObjectWithSiteAtWebApp;
			}
		}
		[CRepr]
		public struct IRemoteDebugApplication110 : IUnknown
		{
			public const new Guid IID = .(0xd5fe005b, 0x2836, 0x485e, 0xb1, 0xf9, 0x89, 0xd9, 0x1a, 0xa2, 0x4f, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugApplication110 *self, SCRIPT_DEBUGGER_OPTIONS mask, SCRIPT_DEBUGGER_OPTIONS value) SetDebuggerOptions;
				public function HRESULT(IRemoteDebugApplication110 *self, SCRIPT_DEBUGGER_OPTIONS* pCurrentOptions) GetCurrentDebuggerOptions;
				public function HRESULT(IRemoteDebugApplication110 *self, IRemoteDebugApplicationThread** ppThread) GetMainThread;
			}
		}
		[CRepr]
		public struct IDebugApplication11032 : IRemoteDebugApplication110
		{
			public const new Guid IID = .(0xbdb3b5de, 0x89f2, 0x4e11, 0x84, 0xa5, 0x97, 0x44, 0x5f, 0x94, 0x1c, 0x7d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRemoteDebugApplication110.VTable
			{
				public function HRESULT(IDebugApplication11032 *self, IDebugThreadCall32* pptc, uint dwParam1, uint dwParam2, uint dwParam3) SynchronousCallInMainThread;
				public function HRESULT(IDebugApplication11032 *self, IDebugThreadCall32* pptc, uint dwParam1, uint dwParam2, uint dwParam3) AsynchronousCallInMainThread;
				public function HRESULT(IDebugApplication11032 *self, uint32 handleCount, HANDLE* pHandles, uint32* pIndex) CallableWaitForHandles;
			}
		}
		[CRepr]
		public struct IDebugApplication11064 : IRemoteDebugApplication110
		{
			public const new Guid IID = .(0x2039d958, 0x4eeb, 0x496a, 0x87, 0xbb, 0x2e, 0x52, 0x01, 0xea, 0xde, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRemoteDebugApplication110.VTable
			{
				public function HRESULT(IDebugApplication11064 *self, IDebugThreadCall64* pptc, uint dwParam1, uint dwParam2, uint dwParam3) SynchronousCallInMainThread;
				public function HRESULT(IDebugApplication11064 *self, IDebugThreadCall64* pptc, uint dwParam1, uint dwParam2, uint dwParam3) AsynchronousCallInMainThread;
				public function HRESULT(IDebugApplication11064 *self, uint32 handleCount, HANDLE* pHandles, uint32* pIndex) CallableWaitForHandles;
			}
		}
		[CRepr]
		public struct IWebAppDiagnosticsObjectInitialization : IUnknown
		{
			public const new Guid IID = .(0x16ff3a42, 0xa5f5, 0x432b, 0xb6, 0x25, 0x8e, 0x8e, 0x16, 0xf5, 0x7e, 0x15);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebAppDiagnosticsObjectInitialization *self, HANDLE_PTR hPassedHandle, IUnknown* pDebugApplication) Initialize;
			}
		}
		[CRepr]
		public struct IActiveScriptWinRTErrorDebug : IActiveScriptError
		{
			public const new Guid IID = .(0x73a3f82a, 0x0fe9, 0x4b33, 0xba, 0x3b, 0xfe, 0x09, 0x5f, 0x69, 0x7e, 0x0a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IActiveScriptError.VTable
			{
				public function HRESULT(IActiveScriptWinRTErrorDebug *self, BSTR* errorString) GetRestrictedErrorString;
				public function HRESULT(IActiveScriptWinRTErrorDebug *self, BSTR* referenceString) GetRestrictedErrorReference;
				public function HRESULT(IActiveScriptWinRTErrorDebug *self, BSTR* capabilitySid) GetCapabilitySid;
			}
		}
		[CRepr]
		public struct IActiveScriptErrorDebug110 : IUnknown
		{
			public const new Guid IID = .(0x516e42b6, 0x89a8, 0x4530, 0x93, 0x7b, 0x5f, 0x07, 0x08, 0x43, 0x14, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveScriptErrorDebug110 *self, SCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND* pExceptionKind) GetExceptionThrownKind;
			}
		}
		[CRepr]
		public struct IDebugApplicationThreadEvents110 : IUnknown
		{
			public const new Guid IID = .(0x84e5e468, 0xd5da, 0x48a8, 0x83, 0xf4, 0x40, 0x36, 0x64, 0x29, 0x00, 0x7b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugApplicationThreadEvents110 *self) OnSuspendForBreakPoint;
				public function HRESULT(IDebugApplicationThreadEvents110 *self) OnResumeFromBreakPoint;
				public function HRESULT(IDebugApplicationThreadEvents110 *self) OnThreadRequestComplete;
				public function HRESULT(IDebugApplicationThreadEvents110 *self) OnBeginThreadRequest;
			}
		}
		[CRepr]
		public struct IDebugApplicationThread11032 : IUnknown
		{
			public const new Guid IID = .(0x2194ac5c, 0x6561, 0x404a, 0xa2, 0xe9, 0xf5, 0x7d, 0x72, 0xde, 0x37, 0x02);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugApplicationThread11032 *self, uint32* puiThreadRequests) GetActiveThreadRequestCount;
				public function HRESULT(IDebugApplicationThread11032 *self, BOOL* pfIsSuspended) IsSuspendedForBreakPoint;
				public function HRESULT(IDebugApplicationThread11032 *self, BOOL* pfIsCallable) IsThreadCallable;
				public function HRESULT(IDebugApplicationThread11032 *self, IDebugThreadCall32* pptc, uint dwParam1, uint dwParam2, uint dwParam3) AsynchronousCallIntoThread;
			}
		}
		[CRepr]
		public struct IDebugApplicationThread11064 : IUnknown
		{
			public const new Guid IID = .(0x420aa4cc, 0xefd8, 0x4dac, 0x98, 0x3b, 0x47, 0x12, 0x78, 0x26, 0x91, 0x7d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDebugApplicationThread11064 *self, uint32* puiThreadRequests) GetActiveThreadRequestCount;
				public function HRESULT(IDebugApplicationThread11064 *self, BOOL* pfIsSuspended) IsSuspendedForBreakPoint;
				public function HRESULT(IDebugApplicationThread11064 *self, BOOL* pfIsCallable) IsThreadCallable;
				public function HRESULT(IDebugApplicationThread11064 *self, IDebugThreadCall64* pptc, uint dwParam1, uint dwParam2, uint dwParam3) AsynchronousCallIntoThread;
			}
		}
		[CRepr]
		public struct IRemoteDebugCriticalErrorEvent110 : IUnknown
		{
			public const new Guid IID = .(0x2f69c611, 0x6b14, 0x47e8, 0x92, 0x60, 0x4b, 0xb7, 0xc5, 0x2f, 0x50, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugCriticalErrorEvent110 *self, BSTR* pbstrSource, int32* pMessageId, BSTR* pbstrMessage, IDebugDocumentContext** ppLocation) GetErrorInfo;
			}
		}
		[CRepr]
		public struct IScriptInvocationContext : IUnknown
		{
			public const new Guid IID = .(0x5d7741b7, 0xaf7e, 0x4a2a, 0x85, 0xe5, 0xc7, 0x7f, 0x4d, 0x06, 0x59, 0xfb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IScriptInvocationContext *self, SCRIPT_INVOCATION_CONTEXT_TYPE* pInvocationContextType) GetContextType;
				public function HRESULT(IScriptInvocationContext *self, BSTR* pDescription) GetContextDescription;
				public function HRESULT(IScriptInvocationContext *self, IUnknown** ppContextObject) GetContextObject;
			}
		}
		[CRepr]
		public struct IDebugStackFrame110 : IDebugStackFrame
		{
			public const new Guid IID = .(0x4b509611, 0xb6ea, 0x4b24, 0xad, 0xcb, 0xd0, 0xcc, 0xfd, 0x1a, 0x7e, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDebugStackFrame.VTable
			{
				public function HRESULT(IDebugStackFrame110 *self, DEBUG_STACKFRAME_TYPE* pStackFrameKind) GetStackFrameType;
				public function HRESULT(IDebugStackFrame110 *self, IScriptInvocationContext** ppInvocationContext) GetScriptInvocationContext;
			}
		}
		[CRepr]
		public struct IRemoteDebugInfoEvent110 : IUnknown
		{
			public const new Guid IID = .(0x9ff56bb6, 0xeb89, 0x4c0f, 0x88, 0x23, 0xcc, 0x2a, 0x4c, 0x0b, 0x7f, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRemoteDebugInfoEvent110 *self, DEBUG_EVENT_INFO_TYPE* pMessageType, BSTR* pbstrMessage, BSTR* pbstrUrl, IDebugDocumentContext** ppLocation) GetEventInfo;
			}
		}
		[CRepr]
		public struct IJsDebug : IUnknown
		{
			public const new Guid IID = .(0xbe0e89da, 0x2ac5, 0x4c04, 0xac, 0x5e, 0x59, 0x95, 0x6a, 0xae, 0x36, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebug *self, uint32 processId, uint64 runtimeJsBaseAddress, IJsDebugDataTarget* pDataTarget, IJsDebugProcess** ppProcess) OpenVirtualProcess;
			}
		}
		[CRepr]
		public struct IJsDebugProcess : IUnknown
		{
			public const new Guid IID = .(0x3d587168, 0x6a2d, 0x4041, 0xbd, 0x3b, 0x0d, 0xe6, 0x74, 0x50, 0x28, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugProcess *self, uint32 threadId, IJsDebugStackWalker** ppStackWalker) CreateStackWalker;
				public function HRESULT(IJsDebugProcess *self, uint64 documentId, uint32 characterOffset, uint32 characterCount, BOOL isEnabled, IJsDebugBreakPoint** ppDebugBreakPoint) CreateBreakPoint;
				public function HRESULT(IJsDebugProcess *self, uint32 threadId) PerformAsyncBreak;
				public function HRESULT(IJsDebugProcess *self, uint64* pCodeAddress) GetExternalStepAddress;
			}
		}
		[CRepr]
		public struct IJsDebugStackWalker : IUnknown
		{
			public const new Guid IID = .(0xdb24b094, 0x73c4, 0x456c, 0xa4, 0xec, 0xe9, 0x0e, 0xa0, 0x0b, 0xdf, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugStackWalker *self, IJsDebugFrame** ppFrame) GetNext;
			}
		}
		[CRepr]
		public struct IJsDebugFrame : IUnknown
		{
			public const new Guid IID = .(0xc9196637, 0xab9d, 0x44b2, 0xba, 0xd2, 0x13, 0xb9, 0x5b, 0x3f, 0x39, 0x0e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugFrame *self, uint64* pStart, uint64* pEnd) GetStackRange;
				public function HRESULT(IJsDebugFrame *self, BSTR* pName) GetName;
				public function HRESULT(IJsDebugFrame *self, uint64* pDocumentId, uint32* pCharacterOffset, uint32* pStatementCharCount) GetDocumentPositionWithId;
				public function HRESULT(IJsDebugFrame *self, BSTR* pDocumentName, uint32* pLine, uint32* pColumn) GetDocumentPositionWithName;
				public function HRESULT(IJsDebugFrame *self, IJsDebugProperty** ppDebugProperty) GetDebugProperty;
				public function HRESULT(IJsDebugFrame *self, uint64* pReturnAddress) GetReturnAddress;
				public function HRESULT(IJsDebugFrame *self, PWSTR pExpressionText, IJsDebugProperty** ppDebugProperty, BSTR* pError) Evaluate;
			}
		}
		[CRepr]
		public struct IJsDebugProperty : IUnknown
		{
			public const new Guid IID = .(0xf8ffcf2b, 0x3aa4, 0x4320, 0x85, 0xc3, 0x52, 0xa3, 0x12, 0xba, 0x96, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugProperty *self, uint32 nRadix, JsDebugPropertyInfo* pPropertyInfo) GetPropertyInfo;
				public function HRESULT(IJsDebugProperty *self, JS_PROPERTY_MEMBERS members, IJsEnumDebugProperty** ppEnum) GetMembers;
			}
		}
		[CRepr]
		public struct IJsEnumDebugProperty : IUnknown
		{
			public const new Guid IID = .(0x4092432f, 0x2f0f, 0x4fe1, 0xb6, 0x38, 0x5b, 0x74, 0xa5, 0x2c, 0xdc, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsEnumDebugProperty *self, uint32 count, IJsDebugProperty** ppDebugProperty, uint32* pActualCount) Next;
				public function HRESULT(IJsEnumDebugProperty *self, uint32* pCount) GetCount;
			}
		}
		[CRepr]
		public struct IJsDebugBreakPoint : IUnknown
		{
			public const new Guid IID = .(0xdf6773e3, 0xed8d, 0x488b, 0x8a, 0x3e, 0x58, 0x12, 0x57, 0x7d, 0x15, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugBreakPoint *self, BOOL* pIsEnabled) IsEnabled;
				public function HRESULT(IJsDebugBreakPoint *self) Enable;
				public function HRESULT(IJsDebugBreakPoint *self) Disable;
				public function HRESULT(IJsDebugBreakPoint *self) Delete;
				public function HRESULT(IJsDebugBreakPoint *self, uint64* pDocumentId, uint32* pCharacterOffset, uint32* pStatementCharCount) GetDocumentPosition;
			}
		}
		[CRepr]
		public struct IEnumJsStackFrames : IUnknown
		{
			public const new Guid IID = .(0x5e7da34b, 0xfb51, 0x4791, 0xab, 0xe7, 0xcb, 0x5b, 0xdf, 0x41, 0x97, 0x55);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumJsStackFrames *self, uint32 cFrameCount, __MIDL___MIDL_itf_jscript9diag_0000_0007_0001* pFrames, uint32* pcFetched) Next;
				public function HRESULT(IEnumJsStackFrames *self) Reset;
			}
		}
		[CRepr]
		public struct IJsDebugDataTarget : IUnknown
		{
			public const new Guid IID = .(0x53b28977, 0x53a1, 0x48e5, 0x90, 0x00, 0x5d, 0x0d, 0xfa, 0x89, 0x39, 0x31);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, JsDebugReadMemoryFlags flags, uint8* pBuffer, uint32 size, uint32* pBytesRead) ReadMemory;
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, uint8* pMemory, uint32 size) WriteMemory;
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, uint32 size, uint32 allocationType, uint32 pageProtection, uint64* pAllocatedAddress) AllocateVirtualMemory;
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, uint32 size, uint32 freeType) FreeVirtualMemory;
				public function HRESULT(IJsDebugDataTarget *self, uint32 threadId, uint32 tlsIndex, uint64* pValue) GetTlsValue;
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, BSTR* pString) ReadBSTR;
				public function HRESULT(IJsDebugDataTarget *self, uint64 address, uint16 characterSize, uint32 maxCharacters, BSTR* pString) ReadNullTerminatedString;
				public function HRESULT(IJsDebugDataTarget *self, uint32 threadId, IEnumJsStackFrames** ppEnumerator) CreateStackFrameEnumerator;
				public function HRESULT(IJsDebugDataTarget *self, uint32 threadId, uint32 contextFlags, uint32 contextSize, void* pContext) GetThreadContext;
			}
		}
		[CRepr]
		public struct IObjectSafety : IUnknown
		{
			public const new Guid IID = .(0xcb5bdc81, 0x93c1, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IObjectSafety *self, Guid* riid, uint32* pdwSupportedOptions, uint32* pdwEnabledOptions) GetInterfaceSafetyOptions;
				public function HRESULT(IObjectSafety *self, Guid* riid, uint32 dwOptionSetMask, uint32 dwEnabledOptions) SetInterfaceSafetyOptions;
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN RtlAddFunctionTable(IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionTable, uint32 EntryCount, uint BaseAddress);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN RtlDeleteFunctionTable(IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionTable);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlAddGrowableFunctionTable(void** DynamicTable, IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionTable, uint32 EntryCount, uint32 MaximumEntryCount, uint RangeBase, uint RangeEnd);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* RtlLookupFunctionEntry(uint ControlPc, uint* ImageBase, UNWIND_HISTORY_TABLE* HistoryTable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EXCEPTION_ROUTINE RtlVirtualUnwind(RTL_VIRTUAL_UNWIND_HANDLER_TYPE HandlerType, uint ImageBase, uint ControlPc, IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY* FunctionEntry, CONTEXT* ContextRecord, void** HandlerData, uint* EstablisherFrame, KNONVOLATILE_CONTEXT_POINTERS_ARM64* ContextPointers);
		[Import("dbgeng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DebugConnect(PSTR RemoteOptions, Guid* InterfaceId, void** Interface);
		[Import("dbgeng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DebugConnectWide(PWSTR RemoteOptions, Guid* InterfaceId, void** Interface);
		[Import("dbgeng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DebugCreate(Guid* InterfaceId, void** Interface);
		[Import("dbgeng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DebugCreateEx(Guid* InterfaceId, uint32 DbgEngOptions, void** Interface);
		[Import("dbgmodel.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataModelManager(IDebugHost* debugHost, IDataModelManager** manager);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadProcessMemory(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, uint nSize, uint* lpNumberOfBytesRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteProcessMemory(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, uint nSize, uint* lpNumberOfBytesWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetThreadContext(HANDLE hThread, CONTEXT* lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetThreadContext(HANDLE hThread, CONTEXT* lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushInstructionCache(HANDLE hProcess, void* lpBaseAddress, uint dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Wow64GetThreadContext(HANDLE hThread, WOW64_CONTEXT* lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Wow64SetThreadContext(HANDLE hThread, WOW64_CONTEXT* lpContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 RtlCaptureStackBackTrace(uint32 FramesToSkip, uint32 FramesToCapture, void** BackTrace, uint32* BackTraceHash);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlCaptureContext(CONTEXT* ContextRecord);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlCaptureContext2(CONTEXT* ContextRecord);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlUnwind(void* TargetFrame, void* TargetIp, EXCEPTION_RECORD* ExceptionRecord, void* ReturnValue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN RtlInstallFunctionTableCallback(uint64 TableIdentifier, uint64 BaseAddress, uint32 Length, PGET_RUNTIME_FUNCTION_CALLBACK Callback, void* Context, PWSTR OutOfProcessCallbackDll);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlGrowFunctionTable(void* DynamicTable, uint32 NewEntryCount);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlDeleteGrowableFunctionTable(void* DynamicTable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlRestoreContext(CONTEXT* ContextRecord, EXCEPTION_RECORD* ExceptionRecord);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlUnwindEx(void* TargetFrame, void* TargetIp, EXCEPTION_RECORD* ExceptionRecord, void* ReturnValue, CONTEXT* ContextRecord, UNWIND_HISTORY_TABLE* HistoryTable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlRaiseException(EXCEPTION_RECORD* ExceptionRecord);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RtlPcToFileHeader(void* PcValue, void** BaseOfImage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsDebuggerPresent();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DebugBreak();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void OutputDebugStringA(PSTR lpOutputString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void OutputDebugStringW(PWSTR lpOutputString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ContinueDebugEvent(uint32 dwProcessId, uint32 dwThreadId, uint32 dwContinueStatus);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WaitForDebugEvent(DEBUG_EVENT* lpDebugEvent, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DebugActiveProcess(uint32 dwProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DebugActiveProcessStop(uint32 dwProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckRemoteDebuggerPresent(HANDLE hProcess, BOOL* pbDebuggerPresent);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WaitForDebugEventEx(DEBUG_EVENT* lpDebugEvent, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* EncodePointer(void* Ptr);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* DecodePointer(void* Ptr);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* EncodeSystemPointer(void* Ptr);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* DecodeSystemPointer(void* Ptr);
		[Import("api-ms-win-core-util-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EncodeRemotePointer(HANDLE ProcessHandle, void* Ptr, void** EncodedPtr);
		[Import("api-ms-win-core-util-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DecodeRemotePointer(HANDLE ProcessHandle, void* Ptr, void** DecodedPtr);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Beep(uint32 dwFreq, uint32 dwDuration);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RaiseException(uint32 dwExceptionCode, uint32 dwExceptionFlags, uint32 nNumberOfArguments, uint* lpArguments);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UnhandledExceptionFilter(EXCEPTION_POINTERS* ExceptionInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LPTOP_LEVEL_EXCEPTION_FILTER SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetErrorMode();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetErrorMode(THREAD_ERROR_MODE uMode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* AddVectoredExceptionHandler(uint32 First, PVECTORED_EXCEPTION_HANDLER Handler);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RemoveVectoredExceptionHandler(void* Handle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* AddVectoredContinueHandler(uint32 First, PVECTORED_EXCEPTION_HANDLER Handler);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RemoveVectoredContinueHandler(void* Handle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RaiseFailFastException(EXCEPTION_RECORD* pExceptionRecord, CONTEXT* pContextRecord, uint32 dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FatalAppExitA(uint32 uAction, PSTR lpMessageText);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FatalAppExitW(uint32 uAction, PWSTR lpMessageText);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetThreadErrorMode();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetThreadErrorMode(THREAD_ERROR_MODE dwNewMode, THREAD_ERROR_MODE* lpOldMode);
		[Import("api-ms-win-core-errorhandling-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void TerminateProcessOnMemoryExhaustion(uint FailedAllocationSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* OpenThreadWaitChainSession(OPEN_THREAD_WAIT_CHAIN_SESSION_FLAGS Flags, PWAITCHAINCALLBACK callback);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseThreadWaitChainSession(void* WctHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetThreadWaitChain(void* WctHandle, uint Context, WAIT_CHAIN_THREAD_OPTIONS Flags, uint32 ThreadId, uint32* NodeCount, WAITCHAIN_NODE_INFO* NodeInfoArray, int32* IsCycle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void RegisterWaitChainCOMCallback(PCOGETCALLSTATE CallStateCallback, PCOGETACTIVATIONSTATE ActivationStateCallback);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MiniDumpWriteDump(HANDLE hProcess, uint32 ProcessId, HANDLE hFile, MINIDUMP_TYPE DumpType, MINIDUMP_EXCEPTION_INFORMATION* ExceptionParam, MINIDUMP_USER_STREAM_INFORMATION* UserStreamParam, MINIDUMP_CALLBACK_INFORMATION* CallbackParam);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MiniDumpReadDumpStream(void* BaseOfDump, uint32 StreamNumber, MINIDUMP_DIRECTORY** Dir, void** StreamPointer, uint32* StreamSize);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BindImage(PSTR ImageName, PSTR DllPath, PSTR SymbolPath);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BindImageEx(uint32 Flags, PSTR ImageName, PSTR DllPath, PSTR SymbolPath, PIMAGEHLP_STATUS_ROUTINE StatusRoutine);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReBaseImage(PSTR CurrentImageName, PSTR SymbolPath, BOOL fReBase, BOOL fRebaseSysfileOk, BOOL fGoingDown, uint32 CheckImageSize, uint32* OldImageSize, uint* OldImageBase, uint32* NewImageSize, uint* NewImageBase, uint32 TimeStamp);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReBaseImage64(PSTR CurrentImageName, PSTR SymbolPath, BOOL fReBase, BOOL fRebaseSysfileOk, BOOL fGoingDown, uint32 CheckImageSize, uint32* OldImageSize, uint64* OldImageBase, uint32* NewImageSize, uint64* NewImageBase, uint32 TimeStamp);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IMAGE_NT_HEADERS64* CheckSumMappedFile(void* BaseAddress, uint32 FileLength, uint32* HeaderSum, uint32* CheckSum);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapFileAndCheckSumA(PSTR Filename, uint32* HeaderSum, uint32* CheckSum);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapFileAndCheckSumW(PWSTR Filename, uint32* HeaderSum, uint32* CheckSum);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetImageConfigInformation(LOADED_IMAGE* LoadedImage, IMAGE_LOAD_CONFIG_DIRECTORY64* ImageConfigInformation);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetImageUnusedHeaderBytes(LOADED_IMAGE* LoadedImage, uint32* SizeUnusedHeaderBytes);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetImageConfigInformation(LOADED_IMAGE* LoadedImage, IMAGE_LOAD_CONFIG_DIRECTORY64* ImageConfigInformation);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageGetDigestStream(HANDLE FileHandle, uint32 DigestLevel, DIGEST_FUNCTION DigestFunction, void* DigestHandle);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageAddCertificate(HANDLE FileHandle, WIN_CERTIFICATE* Certificate, uint32* Index);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageRemoveCertificate(HANDLE FileHandle, uint32 Index);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageEnumerateCertificates(HANDLE FileHandle, uint16 TypeFilter, uint32* CertificateCount, uint32* Indices, uint32 IndexCount);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageGetCertificateData(HANDLE FileHandle, uint32 CertificateIndex, WIN_CERTIFICATE* Certificate, uint32* RequiredLength);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageGetCertificateHeader(HANDLE FileHandle, uint32 CertificateIndex, WIN_CERTIFICATE* Certificateheader);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LOADED_IMAGE* ImageLoad(PSTR DllName, PSTR DllPath);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageUnload(LOADED_IMAGE* LoadedImage);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MapAndLoad(PSTR ImageName, PSTR DllPath, LOADED_IMAGE* LoadedImage, BOOL DotDll, BOOL ReadOnly);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnMapAndLoad(LOADED_IMAGE* LoadedImage);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TouchFileTimes(HANDLE FileHandle, SYSTEMTIME* pSystemTime);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateDebugInfoFile(PSTR ImageFileName, PSTR SymbolPath, PSTR DebugFilePath, IMAGE_NT_HEADERS32* NtHeaders);
		[Import("imagehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateDebugInfoFileEx(PSTR ImageFileName, PSTR SymbolPath, PSTR DebugFilePath, IMAGE_NT_HEADERS32* NtHeaders, uint32 OldCheckSum);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SymFindDebugInfoFile(HANDLE hProcess, PSTR FileName, PSTR DebugFilePath, PFIND_DEBUG_FILE_CALLBACK Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SymFindDebugInfoFileW(HANDLE hProcess, PWSTR FileName, PWSTR DebugFilePath, PFIND_DEBUG_FILE_CALLBACKW Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindDebugInfoFile(PSTR FileName, PSTR SymbolPath, PSTR DebugFilePath);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindDebugInfoFileEx(PSTR FileName, PSTR SymbolPath, PSTR DebugFilePath, PFIND_DEBUG_FILE_CALLBACK Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindDebugInfoFileExW(PWSTR FileName, PWSTR SymbolPath, PWSTR DebugFilePath, PFIND_DEBUG_FILE_CALLBACKW Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFindFileInPath(HANDLE hprocess, PSTR SearchPathA, PSTR FileName, void* id, uint32 two, uint32 three, SYM_FIND_ID_OPTION flags, PSTR FoundFile, PFINDFILEINPATHCALLBACK callback, void* context);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFindFileInPathW(HANDLE hprocess, PWSTR SearchPathA, PWSTR FileName, void* id, uint32 two, uint32 three, SYM_FIND_ID_OPTION flags, PWSTR FoundFile, PFINDFILEINPATHCALLBACKW callback, void* context);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SymFindExecutableImage(HANDLE hProcess, PSTR FileName, PSTR ImageFilePath, PFIND_EXE_FILE_CALLBACK Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SymFindExecutableImageW(HANDLE hProcess, PWSTR FileName, PWSTR ImageFilePath, PFIND_EXE_FILE_CALLBACKW Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindExecutableImage(PSTR FileName, PSTR SymbolPath, PSTR ImageFilePath);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindExecutableImageEx(PSTR FileName, PSTR SymbolPath, PSTR ImageFilePath, PFIND_EXE_FILE_CALLBACK Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindExecutableImageExW(PWSTR FileName, PWSTR SymbolPath, PWSTR ImageFilePath, PFIND_EXE_FILE_CALLBACKW Callback, void* CallerData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IMAGE_NT_HEADERS64* ImageNtHeader(void* Base);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ImageDirectoryEntryToDataEx(void* Base, BOOLEAN MappedAsImage, IMAGE_DIRECTORY_ENTRY DirectoryEntry, uint32* Size, IMAGE_SECTION_HEADER** FoundHeader);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ImageDirectoryEntryToData(void* Base, BOOLEAN MappedAsImage, IMAGE_DIRECTORY_ENTRY DirectoryEntry, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IMAGE_SECTION_HEADER* ImageRvaToSection(IMAGE_NT_HEADERS64* NtHeaders, void* Base, uint32 Rva);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ImageRvaToVa(IMAGE_NT_HEADERS64* NtHeaders, void* Base, uint32 Rva, IMAGE_SECTION_HEADER** LastRvaSection);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SearchTreeForFile(PSTR RootPath, PSTR InputPathName, PSTR OutputPathBuffer);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SearchTreeForFileW(PWSTR RootPath, PWSTR InputPathName, PWSTR OutputPathBuffer);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDirTree(HANDLE hProcess, PSTR RootPath, PSTR InputPathName, PSTR OutputPathBuffer, PENUMDIRTREE_CALLBACK cb, void* data);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDirTreeW(HANDLE hProcess, PWSTR RootPath, PWSTR InputPathName, PWSTR OutputPathBuffer, PENUMDIRTREE_CALLBACKW cb, void* data);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MakeSureDirectoryPathExists(PSTR DirPath);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnDecorateSymbolName(PSTR name, uint8* outputString, uint32 maxStringLength, uint32 flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnDecorateSymbolNameW(PWSTR name, char16* outputString, uint32 maxStringLength, uint32 flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StackWalk64(uint32 MachineType, HANDLE hProcess, HANDLE hThread, STACKFRAME64* StackFrame, void* ContextRecord, PREAD_PROCESS_MEMORY_ROUTINE64 ReadMemoryRoutine, PFUNCTION_TABLE_ACCESS_ROUTINE64 FunctionTableAccessRoutine, PGET_MODULE_BASE_ROUTINE64 GetModuleBaseRoutine, PTRANSLATE_ADDRESS_ROUTINE64 TranslateAddress);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StackWalkEx(uint32 MachineType, HANDLE hProcess, HANDLE hThread, STACKFRAME_EX* StackFrame, void* ContextRecord, PREAD_PROCESS_MEMORY_ROUTINE64 ReadMemoryRoutine, PFUNCTION_TABLE_ACCESS_ROUTINE64 FunctionTableAccessRoutine, PGET_MODULE_BASE_ROUTINE64 GetModuleBaseRoutine, PTRANSLATE_ADDRESS_ROUTINE64 TranslateAddress, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern API_VERSION* ImagehlpApiVersion();
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern API_VERSION* ImagehlpApiVersionEx(API_VERSION* AppVersion);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTimestampForLoadedLibrary(HINSTANCE Module);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetParentWindow(HWND hwnd);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymSetHomeDirectory(HANDLE hProcess, PSTR dir);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymSetHomeDirectoryW(HANDLE hProcess, PWSTR dir);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymGetHomeDirectory(IMAGEHLP_HD_TYPE type, uint8* dir, uint size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymGetHomeDirectoryW(IMAGEHLP_HD_TYPE type, char16* dir, uint size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetOmaps(HANDLE hProcess, uint64 BaseOfDll, OMAP** OmapTo, uint64* cOmapTo, OMAP** OmapFrom, uint64* cOmapFrom);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymSetOptions(uint32 SymOptions);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymGetOptions();
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymCleanup(HANDLE hProcess);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option, BOOL value);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymMatchString(PSTR string, PSTR expression, BOOL fCase);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymMatchStringA(PSTR string, PSTR expression, BOOL fCase);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymMatchStringW(PWSTR string, PWSTR expression, BOOL fCase);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSourceFiles(HANDLE hProcess, uint64 ModBase, PSTR Mask, PSYM_ENUMSOURCEFILES_CALLBACK cbSrcFiles, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSourceFilesW(HANDLE hProcess, uint64 ModBase, PWSTR Mask, PSYM_ENUMSOURCEFILES_CALLBACKW cbSrcFiles, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateModules64(HANDLE hProcess, PSYM_ENUMMODULES_CALLBACK64 EnumModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateModulesW64(HANDLE hProcess, PSYM_ENUMMODULES_CALLBACKW64 EnumModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumerateLoadedModulesEx(HANDLE hProcess, PENUMLOADED_MODULES_CALLBACK64 EnumLoadedModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumerateLoadedModulesExW(HANDLE hProcess, PENUMLOADED_MODULES_CALLBACKW64 EnumLoadedModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumerateLoadedModules64(HANDLE hProcess, PENUMLOADED_MODULES_CALLBACK64 EnumLoadedModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumerateLoadedModulesW64(HANDLE hProcess, PENUMLOADED_MODULES_CALLBACKW64 EnumLoadedModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SymFunctionTableAccess64(HANDLE hProcess, uint64 AddrBase);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SymFunctionTableAccess64AccessRoutines(HANDLE hProcess, uint64 AddrBase, PREAD_PROCESS_MEMORY_ROUTINE64 ReadMemoryRoutine, PGET_MODULE_BASE_ROUTINE64 GetModuleBaseRoutine);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetUnwindInfo(HANDLE hProcess, uint64 Address, void* Buffer, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetModuleInfo64(HANDLE hProcess, uint64 qwAddr, IMAGEHLP_MODULE64* ModuleInfo);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetModuleInfoW64(HANDLE hProcess, uint64 qwAddr, IMAGEHLP_MODULEW64* ModuleInfo);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 SymGetModuleBase64(HANDLE hProcess, uint64 qwAddr);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumLines(HANDLE hProcess, uint64 Base, PSTR Obj, PSTR File, PSYM_ENUMLINES_CALLBACK EnumLinesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumLinesW(HANDLE hProcess, uint64 Base, PWSTR Obj, PWSTR File, PSYM_ENUMLINES_CALLBACKW EnumLinesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromAddr64(HANDLE hProcess, uint64 qwAddr, uint32* pdwDisplacement, IMAGEHLP_LINE64* Line64);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromAddrW64(HANDLE hProcess, uint64 dwAddr, uint32* pdwDisplacement, IMAGEHLP_LINEW64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromInlineContext(HANDLE hProcess, uint64 qwAddr, uint32 InlineContext, uint64 qwModuleBaseAddress, uint32* pdwDisplacement, IMAGEHLP_LINE64* Line64);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromInlineContextW(HANDLE hProcess, uint64 dwAddr, uint32 InlineContext, uint64 qwModuleBaseAddress, uint32* pdwDisplacement, IMAGEHLP_LINEW64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSourceLines(HANDLE hProcess, uint64 Base, PSTR Obj, PSTR File, uint32 Line, uint32 Flags, PSYM_ENUMLINES_CALLBACK EnumLinesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSourceLinesW(HANDLE hProcess, uint64 Base, PWSTR Obj, PWSTR File, uint32 Line, uint32 Flags, PSYM_ENUMLINES_CALLBACKW EnumLinesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymAddrIncludeInlineTrace(HANDLE hProcess, uint64 Address);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymCompareInlineTrace(HANDLE hProcess, uint64 Address1, uint32 InlineContext1, uint64 RetAddress1, uint64 Address2, uint64 RetAddress2);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymQueryInlineTrace(HANDLE hProcess, uint64 StartAddress, uint32 StartContext, uint64 StartRetAddress, uint64 CurAddress, uint32* CurContext, uint32* CurFrameIndex);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromName64(HANDLE hProcess, PSTR ModuleName, PSTR FileName, uint32 dwLineNumber, int32* plDisplacement, IMAGEHLP_LINE64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromNameW64(HANDLE hProcess, PWSTR ModuleName, PWSTR FileName, uint32 dwLineNumber, int32* plDisplacement, IMAGEHLP_LINEW64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineNext64(HANDLE hProcess, IMAGEHLP_LINE64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineNextW64(HANDLE hProcess, IMAGEHLP_LINEW64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLinePrev64(HANDLE hProcess, IMAGEHLP_LINE64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLinePrevW64(HANDLE hProcess, IMAGEHLP_LINEW64* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymGetFileLineOffsets64(HANDLE hProcess, PSTR ModuleName, PSTR FileName, uint64* Buffer, uint32 BufferLines);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymMatchFileName(PSTR FileName, PSTR Match, PSTR* FileNameStop, PSTR* MatchStop);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymMatchFileNameW(PWSTR FileName, PWSTR Match, PWSTR* FileNameStop, PWSTR* MatchStop);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFile(HANDLE hProcess, uint64 Base, PSTR Params, PSTR FileSpec, uint8* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileW(HANDLE hProcess, uint64 Base, PWSTR Params, PWSTR FileSpec, char16* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileToken(HANDLE hProcess, uint64 Base, PSTR FileSpec, void** Token, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileTokenByTokenName(HANDLE hProcess, uint64 Base, PSTR FileSpec, PSTR TokenName, PSTR TokenParameters, void** Token, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileChecksumW(HANDLE hProcess, uint64 Base, PWSTR FileSpec, uint32* pCheckSumType, uint8* pChecksum, uint32 checksumSize, uint32* pActualBytesWritten);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileChecksum(HANDLE hProcess, uint64 Base, PSTR FileSpec, uint32* pCheckSumType, uint8* pChecksum, uint32 checksumSize, uint32* pActualBytesWritten);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileTokenW(HANDLE hProcess, uint64 Base, PWSTR FileSpec, void** Token, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileTokenByTokenNameW(HANDLE hProcess, uint64 Base, PWSTR FileSpec, PWSTR TokenName, PWSTR TokenParameters, void** Token, uint32* Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileFromToken(HANDLE hProcess, void* Token, PSTR Params, uint8* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileFromTokenByTokenName(HANDLE hProcess, void* Token, PSTR TokenName, PSTR Params, uint8* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileFromTokenW(HANDLE hProcess, void* Token, PWSTR Params, char16* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceFileFromTokenByTokenNameW(HANDLE hProcess, void* Token, PWSTR TokenName, PWSTR Params, char16* FilePath, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceVarFromToken(HANDLE hProcess, void* Token, PSTR Params, PSTR VarName, uint8* Value, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSourceVarFromTokenW(HANDLE hProcess, void* Token, PWSTR Params, PWSTR VarName, char16* Value, uint32 Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSourceFileTokens(HANDLE hProcess, uint64 Base, PENUMSOURCEFILETOKENSCALLBACK Callback);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymInitialize(HANDLE hProcess, PSTR UserSearchPath, BOOL fInvadeProcess);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymInitializeW(HANDLE hProcess, PWSTR UserSearchPath, BOOL fInvadeProcess);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSearchPath(HANDLE hProcess, uint8* SearchPathA, uint32 SearchPathLength);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSearchPathW(HANDLE hProcess, char16* SearchPathA, uint32 SearchPathLength);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetSearchPath(HANDLE hProcess, PSTR SearchPathA);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetSearchPathW(HANDLE hProcess, PWSTR SearchPathA);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 SymLoadModuleEx(HANDLE hProcess, HANDLE hFile, PSTR ImageName, PSTR ModuleName, uint64 BaseOfDll, uint32 DllSize, MODLOAD_DATA* Data, SYM_LOAD_FLAGS Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 SymLoadModuleExW(HANDLE hProcess, HANDLE hFile, PWSTR ImageName, PWSTR ModuleName, uint64 BaseOfDll, uint32 DllSize, MODLOAD_DATA* Data, SYM_LOAD_FLAGS Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymUnloadModule64(HANDLE hProcess, uint64 BaseOfDll);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymUnDName64(IMAGEHLP_SYMBOL64* sym, uint8* UnDecName, uint32 UnDecNameLength);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRegisterCallback64(HANDLE hProcess, PSYMBOL_REGISTERED_CALLBACK64 CallbackFunction, uint64 UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRegisterCallbackW64(HANDLE hProcess, PSYMBOL_REGISTERED_CALLBACK64 CallbackFunction, uint64 UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRegisterFunctionEntryCallback64(HANDLE hProcess, PSYMBOL_FUNCENTRY_CALLBACK64 CallbackFunction, uint64 UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetContext(HANDLE hProcess, IMAGEHLP_STACK_FRAME* StackFrame, void* Context);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetScopeFromAddr(HANDLE hProcess, uint64 Address);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetScopeFromInlineContext(HANDLE hProcess, uint64 Address, uint32 InlineContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSetScopeFromIndex(HANDLE hProcess, uint64 BaseOfDll, uint32 Index);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumProcesses(PSYM_ENUMPROCESSES_CALLBACK EnumProcessesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromAddr(HANDLE hProcess, uint64 Address, uint64* Displacement, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromAddrW(HANDLE hProcess, uint64 Address, uint64* Displacement, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromInlineContext(HANDLE hProcess, uint64 Address, uint32 InlineContext, uint64* Displacement, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromInlineContextW(HANDLE hProcess, uint64 Address, uint32 InlineContext, uint64* Displacement, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromToken(HANDLE hProcess, uint64 Base, uint32 Token, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromTokenW(HANDLE hProcess, uint64 Base, uint32 Token, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymNext(HANDLE hProcess, SYMBOL_INFO* si);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymNextW(HANDLE hProcess, SYMBOL_INFOW* siw);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymPrev(HANDLE hProcess, SYMBOL_INFO* si);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymPrevW(HANDLE hProcess, SYMBOL_INFOW* siw);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromName(HANDLE hProcess, PSTR Name, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromNameW(HANDLE hProcess, PWSTR Name, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbols(HANDLE hProcess, uint64 BaseOfDll, PSTR Mask, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbolsEx(HANDLE hProcess, uint64 BaseOfDll, PSTR Mask, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext, uint32 Options);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbolsW(HANDLE hProcess, uint64 BaseOfDll, PWSTR Mask, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbolsExW(HANDLE hProcess, uint64 BaseOfDll, PWSTR Mask, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext, uint32 Options);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbolsForAddr(HANDLE hProcess, uint64 Address, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSymbolsForAddrW(HANDLE hProcess, uint64 Address, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSearch(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, uint32 SymTag, PSTR Mask, uint64 Address, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext, uint32 Options);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSearchW(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, uint32 SymTag, PWSTR Mask, uint64 Address, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext, uint32 Options);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetScope(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetScopeW(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromIndex(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymFromIndexW(HANDLE hProcess, uint64 BaseOfDll, uint32 Index, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetTypeInfo(HANDLE hProcess, uint64 ModBase, uint32 TypeId, IMAGEHLP_SYMBOL_TYPE_INFO GetType, void* pInfo);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetTypeInfoEx(HANDLE hProcess, uint64 ModBase, IMAGEHLP_GET_TYPE_INFO_PARAMS* Params);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumTypes(HANDLE hProcess, uint64 BaseOfDll, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumTypesW(HANDLE hProcess, uint64 BaseOfDll, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumTypesByName(HANDLE hProcess, uint64 BaseOfDll, PSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumTypesByNameW(HANDLE hProcess, uint64 BaseOfDll, PWSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetTypeFromName(HANDLE hProcess, uint64 BaseOfDll, PSTR Name, SYMBOL_INFO* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetTypeFromNameW(HANDLE hProcess, uint64 BaseOfDll, PWSTR Name, SYMBOL_INFOW* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymAddSymbol(HANDLE hProcess, uint64 BaseOfDll, PSTR Name, uint64 Address, uint32 Size, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymAddSymbolW(HANDLE hProcess, uint64 BaseOfDll, PWSTR Name, uint64 Address, uint32 Size, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymDeleteSymbol(HANDLE hProcess, uint64 BaseOfDll, PSTR Name, uint64 Address, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymDeleteSymbolW(HANDLE hProcess, uint64 BaseOfDll, PWSTR Name, uint64 Address, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRefreshModuleList(HANDLE hProcess);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymAddSourceStream(HANDLE hProcess, uint64 Base, PSTR StreamFile, uint8* Buffer, uint Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymAddSourceStreamA(HANDLE hProcess, uint64 Base, PSTR StreamFile, uint8* Buffer, uint Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymAddSourceStreamW(HANDLE hProcess, uint64 Base, PWSTR FileSpec, uint8* Buffer, uint Size);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvIsStoreW(HANDLE hProcess, PWSTR path);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvIsStore(HANDLE hProcess, PSTR path);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymSrvDeltaName(HANDLE hProcess, PSTR SymPath, PSTR Type, PSTR File1, PSTR File2);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymSrvDeltaNameW(HANDLE hProcess, PWSTR SymPath, PWSTR Type, PWSTR File1, PWSTR File2);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymSrvGetSupplement(HANDLE hProcess, PSTR SymPath, PSTR Node, PSTR File);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymSrvGetSupplementW(HANDLE hProcess, PWSTR SymPath, PWSTR Node, PWSTR File);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexes(PSTR File, Guid* Id, uint32* Val1, uint32* Val2, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexesW(PWSTR File, Guid* Id, uint32* Val1, uint32* Val2, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexStringW(HANDLE hProcess, PWSTR SrvPath, PWSTR File, char16* Index, uint Size, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexString(HANDLE hProcess, PSTR SrvPath, PSTR File, uint8* Index, uint Size, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexInfo(PSTR File, SYMSRV_INDEX_INFO* Info, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymSrvGetFileIndexInfoW(PWSTR File, SYMSRV_INDEX_INFOW* Info, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymSrvStoreSupplement(HANDLE hProcess, PSTR SrvPath, PSTR Node, PSTR File, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymSrvStoreSupplementW(HANDLE hProcess, PWSTR SymPath, PWSTR Node, PWSTR File, uint32 Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SymSrvStoreFile(HANDLE hProcess, PSTR SrvPath, PSTR File, SYM_SRV_STORE_FILE_FLAGS Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR SymSrvStoreFileW(HANDLE hProcess, PWSTR SrvPath, PWSTR File, SYM_SRV_STORE_FILE_FLAGS Flags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymbolFile(HANDLE hProcess, PSTR SymPath, PSTR ImageFile, IMAGEHLP_SF_TYPE Type, uint8* SymbolFile, uint cSymbolFile, uint8* DbgFile, uint cDbgFile);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymbolFileW(HANDLE hProcess, PWSTR SymPath, PWSTR ImageFile, IMAGEHLP_SF_TYPE Type, char16* SymbolFile, uint cSymbolFile, char16* DbgFile, uint cDbgFile);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DbgHelpCreateUserDump(PSTR FileName, PDBGHELP_CREATE_USER_DUMP_CALLBACK Callback, void* UserData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DbgHelpCreateUserDumpW(PWSTR FileName, PDBGHELP_CREATE_USER_DUMP_CALLBACK Callback, void* UserData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymFromAddr64(HANDLE hProcess, uint64 qwAddr, uint64* pdwDisplacement, IMAGEHLP_SYMBOL64* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymFromName64(HANDLE hProcess, PSTR Name, IMAGEHLP_SYMBOL64* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindFileInPath(HANDLE hprocess, PSTR SearchPathA, PSTR FileName, void* id, uint32 two, uint32 three, uint32 flags, PSTR FilePath);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindFileInSearchPath(HANDLE hprocess, PSTR SearchPathA, PSTR FileName, uint32 one, uint32 two, uint32 three, PSTR FilePath);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumSym(HANDLE hProcess, uint64 BaseOfDll, PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateSymbols64(HANDLE hProcess, uint64 BaseOfDll, PSYM_ENUMSYMBOLS_CALLBACK64 EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateSymbolsW64(HANDLE hProcess, uint64 BaseOfDll, PSYM_ENUMSYMBOLS_CALLBACK64W EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 SymLoadModule64(HANDLE hProcess, HANDLE hFile, PSTR ImageName, PSTR ModuleName, uint64 BaseOfDll, uint32 SizeOfDll);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymNext64(HANDLE hProcess, IMAGEHLP_SYMBOL64* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymPrev64(HANDLE hProcess, IMAGEHLP_SYMBOL64* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetCheckUserInterruptShared(LPCALL_BACK_USER_INTERRUPT_ROUTINE lpStartAddress);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSymLoadError();
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetSymLoadError(uint32 error);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReportSymbolLoadSummary(HANDLE hProcess, PWSTR pLoadModule, DBGHELP_DATA_REPORT_STRUCT* pSymbolData);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RemoveInvalidModuleList(HANDLE hProcess);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RangeMapCreate();
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RangeMapFree(void* RmapHandle);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RangeMapAddPeImageSections(void* RmapHandle, PWSTR ImageName, void* MappedImage, uint32 MappingBytes, uint64 ImageBase, uint64 UserTag, uint32 MappingFlags);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RangeMapRemove(void* RmapHandle, uint64 UserTag);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RangeMapRead(void* RmapHandle, uint64 Offset, void* Buffer, uint32 RequestBytes, uint32 Flags, uint32* DoneBytes);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RangeMapWrite(void* RmapHandle, uint64 Offset, void* Buffer, uint32 RequestBytes, uint32 Flags, uint32* DoneBytes);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MessageBeep(uint32 uType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FatalExit(int32 ExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetThreadSelectorEntry(HANDLE hThread, uint32 dwSelector, LDT_ENTRY* lpSelectorEntry);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Wow64GetThreadSelectorEntry(HANDLE hThread, uint32 dwSelector, WOW64_LDT_ENTRY* lpSelectorEntry);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DebugSetProcessKillOnExit(BOOL KillOnExit);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DebugBreakProcess(HANDLE Process);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FormatMessageA(FORMAT_MESSAGE_OPTIONS dwFlags, void* lpSource, uint32 dwMessageId, uint32 dwLanguageId, PSTR lpBuffer, uint32 nSize, int8** Arguments);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FormatMessageW(FORMAT_MESSAGE_OPTIONS dwFlags, void* lpSource, uint32 dwMessageId, uint32 dwLanguageId, PWSTR lpBuffer, uint32 nSize, int8** Arguments);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyContext(CONTEXT* Destination, uint32 ContextFlags, CONTEXT* Source);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitializeContext(void* Buffer, uint32 ContextFlags, CONTEXT** Context, uint32* ContextLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitializeContext2(void* Buffer, uint32 ContextFlags, CONTEXT** Context, uint32* ContextLength, uint64 XStateCompactionMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 GetEnabledXStateFeatures();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetXStateFeaturesMask(CONTEXT* Context, uint64* FeatureMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* LocateXStateFeature(CONTEXT* Context, uint32 FeatureId, uint32* Length);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetXStateFeaturesMask(CONTEXT* Context, uint64 FeatureMask);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StackWalk(uint32 MachineType, HANDLE hProcess, HANDLE hThread, STACKFRAME* StackFrame, void* ContextRecord, PREAD_PROCESS_MEMORY_ROUTINE ReadMemoryRoutine, PFUNCTION_TABLE_ACCESS_ROUTINE FunctionTableAccessRoutine, PGET_MODULE_BASE_ROUTINE GetModuleBaseRoutine, PTRANSLATE_ADDRESS_ROUTINE TranslateAddress);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateModules(HANDLE hProcess, PSYM_ENUMMODULES_CALLBACK EnumModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumerateLoadedModules(HANDLE hProcess, PENUMLOADED_MODULES_CALLBACK EnumLoadedModulesCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SymFunctionTableAccess(HANDLE hProcess, uint32 AddrBase);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetModuleInfo(HANDLE hProcess, uint32 dwAddr, IMAGEHLP_MODULE* ModuleInfo);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetModuleInfoW(HANDLE hProcess, uint32 dwAddr, IMAGEHLP_MODULEW* ModuleInfo);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymGetModuleBase(HANDLE hProcess, uint32 dwAddr);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromAddr(HANDLE hProcess, uint32 dwAddr, uint32* pdwDisplacement, IMAGEHLP_LINE* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineFromName(HANDLE hProcess, PSTR ModuleName, PSTR FileName, uint32 dwLineNumber, int32* plDisplacement, IMAGEHLP_LINE* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLineNext(HANDLE hProcess, IMAGEHLP_LINE* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetLinePrev(HANDLE hProcess, IMAGEHLP_LINE* Line);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymUnloadModule(HANDLE hProcess, uint32 BaseOfDll);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymUnDName(IMAGEHLP_SYMBOL* sym, uint8* UnDecName, uint32 UnDecNameLength);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRegisterCallback(HANDLE hProcess, PSYMBOL_REGISTERED_CALLBACK CallbackFunction, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymRegisterFunctionEntryCallback(HANDLE hProcess, PSYMBOL_FUNCENTRY_CALLBACK CallbackFunction, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymFromAddr(HANDLE hProcess, uint32 dwAddr, uint32* pdwDisplacement, IMAGEHLP_SYMBOL* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymFromName(HANDLE hProcess, PSTR Name, IMAGEHLP_SYMBOL* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateSymbols(HANDLE hProcess, uint32 BaseOfDll, PSYM_ENUMSYMBOLS_CALLBACK EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymEnumerateSymbolsW(HANDLE hProcess, uint32 BaseOfDll, PSYM_ENUMSYMBOLS_CALLBACKW EnumSymbolsCallback, void* UserContext);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SymLoadModule(HANDLE hProcess, HANDLE hFile, PSTR ImageName, PSTR ModuleName, uint32 BaseOfDll, uint32 SizeOfDll);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymNext(HANDLE hProcess, IMAGEHLP_SYMBOL* Symbol);
		[Import("dbghelp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SymGetSymPrev(HANDLE hProcess, IMAGEHLP_SYMBOL* Symbol);
		
	}
}
