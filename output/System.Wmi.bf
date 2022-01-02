using System;

// namespace System.Wmi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MI_FLAG_ANY = 127;
		public const uint32 MI_FLAG_VERSION = 469762048;
		public const uint32 MI_FLAG_ADOPT = 2147483648;
		public const uint32 MI_FLAG_CLASS = 1;
		public const uint32 MI_FLAG_METHOD = 2;
		public const uint32 MI_FLAG_PROPERTY = 4;
		public const uint32 MI_FLAG_PARAMETER = 8;
		public const uint32 MI_FLAG_ASSOCIATION = 16;
		public const uint32 MI_FLAG_INDICATION = 32;
		public const uint32 MI_FLAG_REFERENCE = 64;
		public const uint32 MI_FLAG_ENABLEOVERRIDE = 128;
		public const uint32 MI_FLAG_DISABLEOVERRIDE = 256;
		public const uint32 MI_FLAG_RESTRICTED = 512;
		public const uint32 MI_FLAG_TOSUBCLASS = 1024;
		public const uint32 MI_FLAG_TRANSLATABLE = 2048;
		public const uint32 MI_FLAG_KEY = 4096;
		public const uint32 MI_FLAG_IN = 8192;
		public const uint32 MI_FLAG_OUT = 16384;
		public const uint32 MI_FLAG_REQUIRED = 32768;
		public const uint32 MI_FLAG_STATIC = 65536;
		public const uint32 MI_FLAG_ABSTRACT = 131072;
		public const uint32 MI_FLAG_TERMINAL = 262144;
		public const uint32 MI_FLAG_EXPENSIVE = 524288;
		public const uint32 MI_FLAG_STREAM = 1048576;
		public const uint32 MI_FLAG_READONLY = 2097152;
		public const uint32 MI_FLAG_EXTENDED = 4096;
		public const uint32 MI_FLAG_NOT_MODIFIED = 33554432;
		public const uint32 MI_FLAG_NULL = 536870912;
		public const uint32 MI_FLAG_BORROW = 1073741824;
		public const uint32 MI_MODULE_FLAG_STANDARD_QUALIFIERS = 1;
		public const uint32 MI_MODULE_FLAG_DESCRIPTIONS = 2;
		public const uint32 MI_MODULE_FLAG_VALUES = 4;
		public const uint32 MI_MODULE_FLAG_MAPPING_STRINGS = 8;
		public const uint32 MI_MODULE_FLAG_BOOLEANS = 16;
		public const uint32 MI_MODULE_FLAG_CPLUSPLUS = 32;
		public const uint32 MI_MODULE_FLAG_LOCALIZED = 64;
		public const uint32 MI_MODULE_FLAG_FILTER_SUPPORT = 128;
		public const uint32 MI_MAX_LOCALE_SIZE = 128;
		public const uint32 MI_WRITEMESSAGE_CHANNEL_WARNING = 0;
		public const uint32 MI_WRITEMESSAGE_CHANNEL_VERBOSE = 1;
		public const uint32 MI_WRITEMESSAGE_CHANNEL_DEBUG = 2;
		public const uint32 MI_CALL_VERSION = 1;
		public const uint32 MI_OPERATIONFLAGS_MANUAL_ACK_RESULTS = 1;
		public const uint32 MI_OPERATIONFLAGS_NO_RTTI = 1024;
		public const uint32 MI_OPERATIONFLAGS_BASIC_RTTI = 2;
		public const uint32 MI_OPERATIONFLAGS_STANDARD_RTTI = 2048;
		public const uint32 MI_OPERATIONFLAGS_FULL_RTTI = 4;
		public const uint32 MI_OPERATIONFLAGS_DEFAULT_RTTI = 0;
		public const uint32 MI_OPERATIONFLAGS_LOCALIZED_QUALIFIERS = 8;
		public const uint32 MI_OPERATIONFLAGS_EXPENSIVE_PROPERTIES = 64;
		public const uint32 MI_OPERATIONFLAGS_POLYMORPHISM_SHALLOW = 128;
		public const uint32 MI_OPERATIONFLAGS_POLYMORPHISM_DEEP_BASE_PROPS_ONLY = 384;
		public const uint32 MI_OPERATIONFLAGS_REPORT_OPERATION_STARTED = 512;
		public const uint32 MI_SERIALIZER_FLAGS_CLASS_DEEP = 1;
		public const uint32 MI_SERIALIZER_FLAGS_INSTANCE_WITH_CLASS = 1;
		public const uint32 WBEMS_DISPID_DERIVATION = 23;
		public const uint32 WBEMS_DISPID_OBJECT_READY = 1;
		public const uint32 WBEMS_DISPID_COMPLETED = 2;
		public const uint32 WBEMS_DISPID_PROGRESS = 3;
		public const uint32 WBEMS_DISPID_OBJECT_PUT = 4;
		public const uint32 WBEMS_DISPID_CONNECTION_READY = 5;
		
		// --- Enums ---
		
		public enum MI_Result : int32
		{
			OK = 0,
			FAILED = 1,
			ACCESS_DENIED = 2,
			INVALID_NAMESPACE = 3,
			INVALID_PARAMETER = 4,
			INVALID_CLASS = 5,
			NOT_FOUND = 6,
			NOT_SUPPORTED = 7,
			CLASS_HAS_CHILDREN = 8,
			CLASS_HAS_INSTANCES = 9,
			INVALID_SUPERCLASS = 10,
			ALREADY_EXISTS = 11,
			NO_SUCH_PROPERTY = 12,
			TYPE_MISMATCH = 13,
			QUERY_LANGUAGE_NOT_SUPPORTED = 14,
			INVALID_QUERY = 15,
			METHOD_NOT_AVAILABLE = 16,
			METHOD_NOT_FOUND = 17,
			NAMESPACE_NOT_EMPTY = 20,
			INVALID_ENUMERATION_CONTEXT = 21,
			INVALID_OPERATION_TIMEOUT = 22,
			PULL_HAS_BEEN_ABANDONED = 23,
			PULL_CANNOT_BE_ABANDONED = 24,
			FILTERED_ENUMERATION_NOT_SUPPORTED = 25,
			CONTINUATION_ON_ERROR_NOT_SUPPORTED = 26,
			SERVER_LIMITS_EXCEEDED = 27,
			SERVER_IS_SHUTTING_DOWN = 28,
		}
		public enum MI_ErrorCategory : int32
		{
			NOT_SPECIFIED = 0,
			OPEN_ERROR = 1,
			CLOS_EERROR = 2,
			DEVICE_ERROR = 3,
			DEADLOCK_DETECTED = 4,
			INVALID_ARGUMENT = 5,
			INVALID_DATA = 6,
			INVALID_OPERATION = 7,
			INVALID_RESULT = 8,
			INVALID_TYPE = 9,
			METADATA_ERROR = 10,
			NOT_IMPLEMENTED = 11,
			NOT_INSTALLED = 12,
			OBJECT_NOT_FOUND = 13,
			OPERATION_STOPPED = 14,
			OPERATION_TIMEOUT = 15,
			SYNTAX_ERROR = 16,
			PARSER_ERROR = 17,
			ACCESS_DENIED = 18,
			RESOURCE_BUSY = 19,
			RESOURCE_EXISTS = 20,
			RESOURCE_UNAVAILABLE = 21,
			READ_ERROR = 22,
			WRITE_ERROR = 23,
			FROM_STDERR = 24,
			SECURITY_ERROR = 25,
			PROTOCOL_ERROR = 26,
			CONNECTION_ERROR = 27,
			AUTHENTICATION_ERROR = 28,
			LIMITS_EXCEEDED = 29,
			QUOTA_EXCEEDED = 30,
			NOT_ENABLED = 31,
		}
		public enum MI_PromptType : int32
		{
			NORMAL = 0,
			CRITICAL = 1,
		}
		public enum MI_CallbackMode : int32
		{
			REPORT = 0,
			INQUIRE = 1,
			IGNORE = 2,
		}
		public enum MI_ProviderArchitecture : int32
		{
			_32BIT = 0,
			_64BIT = 1,
		}
		[AllowDuplicates]
		public enum MI_Type : int32
		{
			BOOLEAN = 0,
			UINT8 = 1,
			SINT8 = 2,
			UINT16 = 3,
			SINT16 = 4,
			UINT32 = 5,
			SINT32 = 6,
			UINT64 = 7,
			SINT64 = 8,
			REAL32 = 9,
			REAL64 = 10,
			CHAR16 = 11,
			DATETIME = 12,
			STRING = 13,
			REFERENCE = 14,
			INSTANCE = 15,
			BOOLEANA = 16,
			UINT8A = 17,
			SINT8A = 18,
			UINT16A = 19,
			SINT16A = 20,
			UINT32A = 21,
			SINT32A = 22,
			UINT64A = 23,
			SINT64A = 24,
			REAL32A = 25,
			REAL64A = 26,
			CHAR16A = 27,
			DATETIMEA = 28,
			STRINGA = 29,
			REFERENCEA = 30,
			INSTANCEA = 31,
			ARRAY = 16,
		}
		public enum MI_LocaleType : int32
		{
			REQUESTED_UI = 0,
			REQUESTED_DATA = 1,
			CLOSEST_UI = 2,
			CLOSEST_DATA = 3,
		}
		public enum MI_CancellationReason : int32
		{
			NONE = 0,
			TIMEOUT = 1,
			SHUTDOWN = 2,
			SERVICESTOP = 3,
		}
		public enum MI_OperationCallback_ResponseType : int32
		{
			No = 0,
			Yes = 1,
			NoToAll = 2,
			YesToAll = 3,
		}
		public enum MI_SubscriptionDeliveryType : int32
		{
			Pull = 1,
			Push = 2,
		}
		public enum MI_DestinationOptions_ImpersonationType : int32
		{
			Default = 0,
			None = 1,
			Identify = 2,
			Impersonate = 3,
			Delegate = 4,
		}
		public enum WBEM_PATH_STATUS_FLAG : int32
		{
			ANON_LOCAL_MACHINE = 1,
			HAS_MACHINE_NAME = 2,
			IS_CLASS_REF = 4,
			IS_INST_REF = 8,
			HAS_SUBSCOPES = 16,
			IS_COMPOUND = 32,
			HAS_V2_REF_PATHS = 64,
			HAS_IMPLIED_KEY = 128,
			CONTAINS_SINGLETON = 256,
			V1_COMPLIANT = 512,
			V2_COMPLIANT = 1024,
			CIM_COMPLIANT = 2048,
			IS_SINGLETON = 4096,
			IS_PARENT = 8192,
			SERVER_NAMESPACE_ONLY = 16384,
			NATIVE_PATH = 32768,
			WMI_PATH = 65536,
			PATH_HAD_SERVER = 131072,
		}
		public enum WBEM_PATH_CREATE_FLAG : int32
		{
			CREATE_ACCEPT_RELATIVE = 1,
			CREATE_ACCEPT_ABSOLUTE = 2,
			CREATE_ACCEPT_ALL = 4,
			TREAT_SINGLE_IDENT_AS_NS = 8,
		}
		public enum WBEM_GET_TEXT_FLAGS : int32
		{
			COMPRESSED = 1,
			GET_RELATIVE_ONLY = 2,
			GET_SERVER_TOO = 4,
			GET_SERVER_AND_NAMESPACE_ONLY = 8,
			GET_NAMESPACE_ONLY = 16,
			GET_ORIGINAL = 32,
		}
		public enum WBEM_GET_KEY_FLAGS : int32
		{
			TEXT = 1,
			QUOTEDTEXT = 2,
		}
		public enum WMIQ_ANALYSIS_TYPE : int32
		{
			RPN_SEQUENCE = 1,
			ASSOC_QUERY = 2,
			PROP_ANALYSIS_MATRIX = 3,
			QUERY_TEXT = 4,
			RESERVED = 134217728,
		}
		[AllowDuplicates]
		public enum WMIQ_RPN_TOKEN_FLAGS : int32
		{
			TOKEN_EXPRESSION = 1,
			TOKEN_AND = 2,
			TOKEN_OR = 3,
			TOKEN_NOT = 4,
			OP_UNDEFINED = 0,
			OP_EQ = 1,
			OP_NE = 2,
			OP_GE = 3,
			OP_LE = 4,
			OP_LT = 5,
			OP_GT = 6,
			OP_LIKE = 7,
			OP_ISA = 8,
			OP_ISNOTA = 9,
			OP_ISNULL = 10,
			OP_ISNOTNULL = 11,
			LEFT_PROPERTY_NAME = 1,
			RIGHT_PROPERTY_NAME = 2,
			CONST2 = 4,
			CONST = 8,
			RELOP = 16,
			LEFT_FUNCTION = 32,
			RIGHT_FUNCTION = 64,
			GET_TOKEN_TYPE = 1,
			GET_EXPR_SHAPE = 2,
			GET_LEFT_FUNCTION = 3,
			GET_RIGHT_FUNCTION = 4,
			GET_RELOP = 5,
			NEXT_TOKEN = 1,
			FROM_UNARY = 1,
			FROM_PATH = 2,
			FROM_CLASS_LIST = 4,
			FROM_MULTIPLE = 8,
		}
		public enum WMIQ_ASSOCQ_FLAGS : int32
		{
			ASSOCIATORS = 1,
			REFERENCES = 2,
			RESULTCLASS = 4,
			ASSOCCLASS = 8,
			ROLE = 16,
			RESULTROLE = 32,
			REQUIREDQUALIFIER = 64,
			REQUIREDASSOCQUALIFIER = 128,
			CLASSDEFSONLY = 256,
			KEYSONLY = 512,
			SCHEMAONLY = 1024,
			CLASSREFSONLY = 2048,
		}
		[AllowDuplicates]
		public enum WMIQ_LANGUAGE_FEATURES : int32
		{
			LF1_BASIC_SELECT = 1,
			LF2_CLASS_NAME_IN_QUERY = 2,
			LF3_STRING_CASE_FUNCTIONS = 3,
			LF4_PROP_TO_PROP_TESTS = 4,
			LF5_COUNT_STAR = 5,
			LF6_ORDER_BY = 6,
			LF7_DISTINCT = 7,
			LF8_ISA = 8,
			LF9_THIS = 9,
			LF10_COMPEX_SUBEXPRESSIONS = 10,
			LF11_ALIASING = 11,
			LF12_GROUP_BY_HAVING = 12,
			LF13_WMI_WITHIN = 13,
			LF14_SQL_WRITE_OPERATIONS = 14,
			LF15_GO = 15,
			LF16_SINGLE_LEVEL_TRANSACTIONS = 16,
			LF17_QUALIFIED_NAMES = 17,
			LF18_ASSOCIATONS = 18,
			LF19_SYSTEM_PROPERTIES = 19,
			LF20_EXTENDED_SYSTEM_PROPERTIES = 20,
			LF21_SQL89_JOINS = 21,
			LF22_SQL92_JOINS = 22,
			LF23_SUBSELECTS = 23,
			LF24_UMI_EXTENSIONS = 24,
			LF25_DATEPART = 25,
			LF26_LIKE = 26,
			LF27_CIM_TEMPORAL_CONSTRUCTS = 27,
			LF28_STANDARD_AGGREGATES = 28,
			LF29_MULTI_LEVEL_ORDER_BY = 29,
			LF30_WMI_PRAGMAS = 30,
			LF31_QUALIFIER_TESTS = 31,
			LF32_SP_EXECUTE = 32,
			LF33_ARRAY_ACCESS = 33,
			LF34_UNION = 34,
			LF35_COMPLEX_SELECT_TARGET = 35,
			LF36_REFERENCE_TESTS = 36,
			LF37_SELECT_INTO = 37,
			LF38_BASIC_DATETIME_TESTS = 38,
			LF39_COUNT_COLUMN = 39,
			LF40_BETWEEN = 40,
			LF_LAST = 40,
		}
		public enum WMIQ_RPNQ_FEATURE : int32
		{
			WHERE_CLAUSE_PRESENT = 1,
			QUERY_IS_CONJUNCTIVE = 2,
			QUERY_IS_DISJUNCTIVE = 4,
			PROJECTION = 8,
			FEATURE_SELECT_STAR = 16,
			EQUALITY_TESTS_ONLY = 32,
			COUNT_STAR = 64,
			QUALIFIED_NAMES_USED = 128,
			SYSPROP_CLASS_USED = 256,
			PROP_TO_PROP_TESTS = 512,
			ORDER_BY = 1024,
			ISA_USED = 2048,
			GROUP_BY_HAVING = 4096,
			ARRAY_ACCESS_USED = 8192,
		}
		public enum WBEM_GENUS_TYPE : int32
		{
			CLASS = 1,
			INSTANCE = 2,
		}
		[AllowDuplicates]
		public enum WBEM_CHANGE_FLAG_TYPE : int32
		{
			FLAG_CREATE_OR_UPDATE = 0,
			FLAG_UPDATE_ONLY = 1,
			FLAG_CREATE_ONLY = 2,
			FLAG_UPDATE_COMPATIBLE = 0,
			FLAG_UPDATE_SAFE_MODE = 32,
			FLAG_UPDATE_FORCE_MODE = 64,
			MASK_UPDATE_MODE = 96,
			FLAG_ADVISORY = 65536,
		}
		[AllowDuplicates]
		public enum WBEM_GENERIC_FLAG_TYPE : int32
		{
			FLAG_RETURN_IMMEDIATELY = 16,
			FLAG_RETURN_WBEM_COMPLETE = 0,
			FLAG_BIDIRECTIONAL = 0,
			FLAG_FORWARD_ONLY = 32,
			FLAG_NO_ERROR_OBJECT = 64,
			FLAG_RETURN_ERROR_OBJECT = 0,
			FLAG_SEND_STATUS = 128,
			FLAG_DONT_SEND_STATUS = 0,
			FLAG_ENSURE_LOCATABLE = 256,
			FLAG_DIRECT_READ = 512,
			FLAG_SEND_ONLY_SELECTED = 0,
			RETURN_WHEN_COMPLETE = 0,
			RETURN_IMMEDIATELY = 16,
			MASK_RESERVED_FLAGS = 126976,
			FLAG_USE_AMENDED_QUALIFIERS = 131072,
			FLAG_STRONG_VALIDATION = 1048576,
		}
		public enum WBEM_STATUS_TYPE : int32
		{
			COMPLETE = 0,
			REQUIREMENTS = 1,
			PROGRESS = 2,
			LOGGING_INFORMATION = 256,
			LOGGING_INFORMATION_PROVIDER = 512,
			LOGGING_INFORMATION_HOST = 1024,
			LOGGING_INFORMATION_REPOSITORY = 2048,
			LOGGING_INFORMATION_ESS = 4096,
		}
		public enum WBEM_TIMEOUT_TYPE : int32
		{
			NO_WAIT = 0,
			INFINITE = -1,
		}
		[AllowDuplicates]
		public enum WBEM_CONDITION_FLAG_TYPE : int32
		{
			FLAG_ALWAYS = 0,
			FLAG_ONLY_IF_TRUE = 1,
			FLAG_ONLY_IF_FALSE = 2,
			FLAG_ONLY_IF_IDENTICAL = 3,
			MASK_PRIMARY_CONDITION = 3,
			FLAG_KEYS_ONLY = 4,
			FLAG_REFS_ONLY = 8,
			FLAG_LOCAL_ONLY = 16,
			FLAG_PROPAGATED_ONLY = 32,
			FLAG_SYSTEM_ONLY = 48,
			FLAG_NONSYSTEM_ONLY = 64,
			MASK_CONDITION_ORIGIN = 112,
			FLAG_CLASS_OVERRIDES_ONLY = 256,
			FLAG_CLASS_LOCAL_AND_OVERRIDES = 512,
			MASK_CLASS_CONDITION = 768,
		}
		[AllowDuplicates]
		public enum WBEM_FLAVOR_TYPE : int32
		{
			DONT_PROPAGATE = 0,
			FLAG_PROPAGATE_TO_INSTANCE = 1,
			FLAG_PROPAGATE_TO_DERIVED_CLASS = 2,
			MASK_PROPAGATION = 15,
			OVERRIDABLE = 0,
			NOT_OVERRIDABLE = 16,
			MASK_PERMISSIONS = 16,
			ORIGIN_LOCAL = 0,
			ORIGIN_PROPAGATED = 32,
			ORIGIN_SYSTEM = 64,
			MASK_ORIGIN = 96,
			NOT_AMENDED = 0,
			AMENDED = 128,
			MASK_AMENDED = 128,
		}
		public enum WBEM_QUERY_FLAG_TYPE : int32
		{
			DEEP = 0,
			SHALLOW = 1,
			PROTOTYPE = 2,
		}
		public enum WBEM_SECURITY_FLAGS : int32
		{
			ENABLE = 1,
			METHOD_EXECUTE = 2,
			FULL_WRITE_REP = 4,
			PARTIAL_WRITE_REP = 8,
			WRITE_PROVIDER = 16,
			REMOTE_ACCESS = 32,
			RIGHT_SUBSCRIBE = 64,
			RIGHT_PUBLISH = 128,
		}
		public enum WBEM_LIMITATION_FLAG_TYPE : int32
		{
			OBJECT_QUALIFIERS = 16,
			PROPERTY_QUALIFIERS = 32,
		}
		public enum WBEM_TEXT_FLAG_TYPE : int32
		{
			FLAG_NO_FLAVORS = 1,
		}
		public enum WBEM_COMPARISON_FLAG : int32
		{
			COMPARISON_INCLUDE_ALL = 0,
			FLAG_IGNORE_QUALIFIERS = 1,
			FLAG_IGNORE_OBJECT_SOURCE = 2,
			FLAG_IGNORE_DEFAULT_VALUES = 4,
			FLAG_IGNORE_CLASS = 8,
			FLAG_IGNORE_CASE = 16,
			FLAG_IGNORE_FLAVOR = 32,
		}
		public enum WBEM_LOCKING : int32
		{
			FLAG_ALLOW_READ = 1,
		}
		public enum CIMTYPE_ENUMERATION : int32
		{
			ILLEGAL = 4095,
			EMPTY = 0,
			SINT8 = 16,
			UINT8 = 17,
			SINT16 = 2,
			UINT16 = 18,
			SINT32 = 3,
			UINT32 = 19,
			SINT64 = 20,
			UINT64 = 21,
			REAL32 = 4,
			REAL64 = 5,
			BOOLEAN = 11,
			STRING = 8,
			DATETIME = 101,
			REFERENCE = 102,
			CHAR16 = 103,
			OBJECT = 13,
			FLAG_ARRAY = 8192,
		}
		public enum WBEM_BACKUP_RESTORE_FLAGS : int32
		{
			DEFAULT = 0,
			FORCE_SHUTDOWN = 1,
		}
		public enum WBEM_REFRESHER_FLAGS : int32
		{
			AUTO_RECONNECT = 0,
			NO_AUTO_RECONNECT = 1,
		}
		public enum WBEM_SHUTDOWN_FLAGS : int32
		{
			UNLOAD_COMPONENT = 1,
			WMI = 2,
			OS = 3,
		}
		public enum WBEMSTATUS_FORMAT : int32
		{
			NEWLINE = 0,
			NO_NEWLINE = 1,
		}
		public enum WBEM_LIMITS : int32
		{
			IDENTIFIER = 4096,
			QUERY = 16384,
			PATH = 8192,
			OBJECT_NESTING = 64,
			USER_PROPERTIES = 1024,
		}
		[AllowDuplicates]
		public enum WBEMSTATUS : int32
		{
			WBEM_NO_ERROR = 0,
			WBEM_S_NO_ERROR = 0,
			WBEM_S_SAME = 0,
			WBEM_S_FALSE = 1,
			WBEM_S_ALREADY_EXISTS = 262145,
			WBEM_S_RESET_TO_DEFAULT = 262146,
			WBEM_S_DIFFERENT = 262147,
			WBEM_S_TIMEDOUT = 262148,
			WBEM_S_NO_MORE_DATA = 262149,
			WBEM_S_OPERATION_CANCELLED = 262150,
			WBEM_S_PENDING = 262151,
			WBEM_S_DUPLICATE_OBJECTS = 262152,
			WBEM_S_ACCESS_DENIED = 262153,
			WBEM_S_PARTIAL_RESULTS = 262160,
			WBEM_S_SOURCE_NOT_AVAILABLE = 262167,
			WBEM_E_FAILED = -2147217407,
			WBEM_E_NOT_FOUND = -2147217406,
			WBEM_E_ACCESS_DENIED = -2147217405,
			WBEM_E_PROVIDER_FAILURE = -2147217404,
			WBEM_E_TYPE_MISMATCH = -2147217403,
			WBEM_E_OUT_OF_MEMORY = -2147217402,
			WBEM_E_INVALID_CONTEXT = -2147217401,
			WBEM_E_INVALID_PARAMETER = -2147217400,
			WBEM_E_NOT_AVAILABLE = -2147217399,
			WBEM_E_CRITICAL_ERROR = -2147217398,
			WBEM_E_INVALID_STREAM = -2147217397,
			WBEM_E_NOT_SUPPORTED = -2147217396,
			WBEM_E_INVALID_SUPERCLASS = -2147217395,
			WBEM_E_INVALID_NAMESPACE = -2147217394,
			WBEM_E_INVALID_OBJECT = -2147217393,
			WBEM_E_INVALID_CLASS = -2147217392,
			WBEM_E_PROVIDER_NOT_FOUND = -2147217391,
			WBEM_E_INVALID_PROVIDER_REGISTRATION = -2147217390,
			WBEM_E_PROVIDER_LOAD_FAILURE = -2147217389,
			WBEM_E_INITIALIZATION_FAILURE = -2147217388,
			WBEM_E_TRANSPORT_FAILURE = -2147217387,
			WBEM_E_INVALID_OPERATION = -2147217386,
			WBEM_E_INVALID_QUERY = -2147217385,
			WBEM_E_INVALID_QUERY_TYPE = -2147217384,
			WBEM_E_ALREADY_EXISTS = -2147217383,
			WBEM_E_OVERRIDE_NOT_ALLOWED = -2147217382,
			WBEM_E_PROPAGATED_QUALIFIER = -2147217381,
			WBEM_E_PROPAGATED_PROPERTY = -2147217380,
			WBEM_E_UNEXPECTED = -2147217379,
			WBEM_E_ILLEGAL_OPERATION = -2147217378,
			WBEM_E_CANNOT_BE_KEY = -2147217377,
			WBEM_E_INCOMPLETE_CLASS = -2147217376,
			WBEM_E_INVALID_SYNTAX = -2147217375,
			WBEM_E_NONDECORATED_OBJECT = -2147217374,
			WBEM_E_READ_ONLY = -2147217373,
			WBEM_E_PROVIDER_NOT_CAPABLE = -2147217372,
			WBEM_E_CLASS_HAS_CHILDREN = -2147217371,
			WBEM_E_CLASS_HAS_INSTANCES = -2147217370,
			WBEM_E_QUERY_NOT_IMPLEMENTED = -2147217369,
			WBEM_E_ILLEGAL_NULL = -2147217368,
			WBEM_E_INVALID_QUALIFIER_TYPE = -2147217367,
			WBEM_E_INVALID_PROPERTY_TYPE = -2147217366,
			WBEM_E_VALUE_OUT_OF_RANGE = -2147217365,
			WBEM_E_CANNOT_BE_SINGLETON = -2147217364,
			WBEM_E_INVALID_CIM_TYPE = -2147217363,
			WBEM_E_INVALID_METHOD = -2147217362,
			WBEM_E_INVALID_METHOD_PARAMETERS = -2147217361,
			WBEM_E_SYSTEM_PROPERTY = -2147217360,
			WBEM_E_INVALID_PROPERTY = -2147217359,
			WBEM_E_CALL_CANCELLED = -2147217358,
			WBEM_E_SHUTTING_DOWN = -2147217357,
			WBEM_E_PROPAGATED_METHOD = -2147217356,
			WBEM_E_UNSUPPORTED_PARAMETER = -2147217355,
			WBEM_E_MISSING_PARAMETER_ID = -2147217354,
			WBEM_E_INVALID_PARAMETER_ID = -2147217353,
			WBEM_E_NONCONSECUTIVE_PARAMETER_IDS = -2147217352,
			WBEM_E_PARAMETER_ID_ON_RETVAL = -2147217351,
			WBEM_E_INVALID_OBJECT_PATH = -2147217350,
			WBEM_E_OUT_OF_DISK_SPACE = -2147217349,
			WBEM_E_BUFFER_TOO_SMALL = -2147217348,
			WBEM_E_UNSUPPORTED_PUT_EXTENSION = -2147217347,
			WBEM_E_UNKNOWN_OBJECT_TYPE = -2147217346,
			WBEM_E_UNKNOWN_PACKET_TYPE = -2147217345,
			WBEM_E_MARSHAL_VERSION_MISMATCH = -2147217344,
			WBEM_E_MARSHAL_INVALID_SIGNATURE = -2147217343,
			WBEM_E_INVALID_QUALIFIER = -2147217342,
			WBEM_E_INVALID_DUPLICATE_PARAMETER = -2147217341,
			WBEM_E_TOO_MUCH_DATA = -2147217340,
			WBEM_E_SERVER_TOO_BUSY = -2147217339,
			WBEM_E_INVALID_FLAVOR = -2147217338,
			WBEM_E_CIRCULAR_REFERENCE = -2147217337,
			WBEM_E_UNSUPPORTED_CLASS_UPDATE = -2147217336,
			WBEM_E_CANNOT_CHANGE_KEY_INHERITANCE = -2147217335,
			WBEM_E_CANNOT_CHANGE_INDEX_INHERITANCE = -2147217328,
			WBEM_E_TOO_MANY_PROPERTIES = -2147217327,
			WBEM_E_UPDATE_TYPE_MISMATCH = -2147217326,
			WBEM_E_UPDATE_OVERRIDE_NOT_ALLOWED = -2147217325,
			WBEM_E_UPDATE_PROPAGATED_METHOD = -2147217324,
			WBEM_E_METHOD_NOT_IMPLEMENTED = -2147217323,
			WBEM_E_METHOD_DISABLED = -2147217322,
			WBEM_E_REFRESHER_BUSY = -2147217321,
			WBEM_E_UNPARSABLE_QUERY = -2147217320,
			WBEM_E_NOT_EVENT_CLASS = -2147217319,
			WBEM_E_MISSING_GROUP_WITHIN = -2147217318,
			WBEM_E_MISSING_AGGREGATION_LIST = -2147217317,
			WBEM_E_PROPERTY_NOT_AN_OBJECT = -2147217316,
			WBEM_E_AGGREGATING_BY_OBJECT = -2147217315,
			WBEM_E_UNINTERPRETABLE_PROVIDER_QUERY = -2147217313,
			WBEM_E_BACKUP_RESTORE_WINMGMT_RUNNING = -2147217312,
			WBEM_E_QUEUE_OVERFLOW = -2147217311,
			WBEM_E_PRIVILEGE_NOT_HELD = -2147217310,
			WBEM_E_INVALID_OPERATOR = -2147217309,
			WBEM_E_LOCAL_CREDENTIALS = -2147217308,
			WBEM_E_CANNOT_BE_ABSTRACT = -2147217307,
			WBEM_E_AMENDED_OBJECT = -2147217306,
			WBEM_E_CLIENT_TOO_SLOW = -2147217305,
			WBEM_E_NULL_SECURITY_DESCRIPTOR = -2147217304,
			WBEM_E_TIMED_OUT = -2147217303,
			WBEM_E_INVALID_ASSOCIATION = -2147217302,
			WBEM_E_AMBIGUOUS_OPERATION = -2147217301,
			WBEM_E_QUOTA_VIOLATION = -2147217300,
			WBEM_E_RESERVED_001 = -2147217299,
			WBEM_E_RESERVED_002 = -2147217298,
			WBEM_E_UNSUPPORTED_LOCALE = -2147217297,
			WBEM_E_HANDLE_OUT_OF_DATE = -2147217296,
			WBEM_E_CONNECTION_FAILED = -2147217295,
			WBEM_E_INVALID_HANDLE_REQUEST = -2147217294,
			WBEM_E_PROPERTY_NAME_TOO_WIDE = -2147217293,
			WBEM_E_CLASS_NAME_TOO_WIDE = -2147217292,
			WBEM_E_METHOD_NAME_TOO_WIDE = -2147217291,
			WBEM_E_QUALIFIER_NAME_TOO_WIDE = -2147217290,
			WBEM_E_RERUN_COMMAND = -2147217289,
			WBEM_E_DATABASE_VER_MISMATCH = -2147217288,
			WBEM_E_VETO_DELETE = -2147217287,
			WBEM_E_VETO_PUT = -2147217286,
			WBEM_E_INVALID_LOCALE = -2147217280,
			WBEM_E_PROVIDER_SUSPENDED = -2147217279,
			WBEM_E_SYNCHRONIZATION_REQUIRED = -2147217278,
			WBEM_E_NO_SCHEMA = -2147217277,
			WBEM_E_PROVIDER_ALREADY_REGISTERED = -2147217276,
			WBEM_E_PROVIDER_NOT_REGISTERED = -2147217275,
			WBEM_E_FATAL_TRANSPORT_ERROR = -2147217274,
			WBEM_E_ENCRYPTED_CONNECTION_REQUIRED = -2147217273,
			WBEM_E_PROVIDER_TIMED_OUT = -2147217272,
			WBEM_E_NO_KEY = -2147217271,
			WBEM_E_PROVIDER_DISABLED = -2147217270,
			WBEMESS_E_REGISTRATION_TOO_BROAD = -2147213311,
			WBEMESS_E_REGISTRATION_TOO_PRECISE = -2147213310,
			WBEMESS_E_AUTHZ_NOT_PRIVILEGED = -2147213309,
			WBEMMOF_E_EXPECTED_QUALIFIER_NAME = -2147205119,
			WBEMMOF_E_EXPECTED_SEMI = -2147205118,
			WBEMMOF_E_EXPECTED_OPEN_BRACE = -2147205117,
			WBEMMOF_E_EXPECTED_CLOSE_BRACE = -2147205116,
			WBEMMOF_E_EXPECTED_CLOSE_BRACKET = -2147205115,
			WBEMMOF_E_EXPECTED_CLOSE_PAREN = -2147205114,
			WBEMMOF_E_ILLEGAL_CONSTANT_VALUE = -2147205113,
			WBEMMOF_E_EXPECTED_TYPE_IDENTIFIER = -2147205112,
			WBEMMOF_E_EXPECTED_OPEN_PAREN = -2147205111,
			WBEMMOF_E_UNRECOGNIZED_TOKEN = -2147205110,
			WBEMMOF_E_UNRECOGNIZED_TYPE = -2147205109,
			WBEMMOF_E_EXPECTED_PROPERTY_NAME = -2147205108,
			WBEMMOF_E_TYPEDEF_NOT_SUPPORTED = -2147205107,
			WBEMMOF_E_UNEXPECTED_ALIAS = -2147205106,
			WBEMMOF_E_UNEXPECTED_ARRAY_INIT = -2147205105,
			WBEMMOF_E_INVALID_AMENDMENT_SYNTAX = -2147205104,
			WBEMMOF_E_INVALID_DUPLICATE_AMENDMENT = -2147205103,
			WBEMMOF_E_INVALID_PRAGMA = -2147205102,
			WBEMMOF_E_INVALID_NAMESPACE_SYNTAX = -2147205101,
			WBEMMOF_E_EXPECTED_CLASS_NAME = -2147205100,
			WBEMMOF_E_TYPE_MISMATCH = -2147205099,
			WBEMMOF_E_EXPECTED_ALIAS_NAME = -2147205098,
			WBEMMOF_E_INVALID_CLASS_DECLARATION = -2147205097,
			WBEMMOF_E_INVALID_INSTANCE_DECLARATION = -2147205096,
			WBEMMOF_E_EXPECTED_DOLLAR = -2147205095,
			WBEMMOF_E_CIMTYPE_QUALIFIER = -2147205094,
			WBEMMOF_E_DUPLICATE_PROPERTY = -2147205093,
			WBEMMOF_E_INVALID_NAMESPACE_SPECIFICATION = -2147205092,
			WBEMMOF_E_OUT_OF_RANGE = -2147205091,
			WBEMMOF_E_INVALID_FILE = -2147205090,
			WBEMMOF_E_ALIASES_IN_EMBEDDED = -2147205089,
			WBEMMOF_E_NULL_ARRAY_ELEM = -2147205088,
			WBEMMOF_E_DUPLICATE_QUALIFIER = -2147205087,
			WBEMMOF_E_EXPECTED_FLAVOR_TYPE = -2147205086,
			WBEMMOF_E_INCOMPATIBLE_FLAVOR_TYPES = -2147205085,
			WBEMMOF_E_MULTIPLE_ALIASES = -2147205084,
			WBEMMOF_E_INCOMPATIBLE_FLAVOR_TYPES2 = -2147205083,
			WBEMMOF_E_NO_ARRAYS_RETURNED = -2147205082,
			WBEMMOF_E_MUST_BE_IN_OR_OUT = -2147205081,
			WBEMMOF_E_INVALID_FLAGS_SYNTAX = -2147205080,
			WBEMMOF_E_EXPECTED_BRACE_OR_BAD_TYPE = -2147205079,
			WBEMMOF_E_UNSUPPORTED_CIMV22_QUAL_VALUE = -2147205078,
			WBEMMOF_E_UNSUPPORTED_CIMV22_DATA_TYPE = -2147205077,
			WBEMMOF_E_INVALID_DELETEINSTANCE_SYNTAX = -2147205076,
			WBEMMOF_E_INVALID_QUALIFIER_SYNTAX = -2147205075,
			WBEMMOF_E_QUALIFIER_USED_OUTSIDE_SCOPE = -2147205074,
			WBEMMOF_E_ERROR_CREATING_TEMP_FILE = -2147205073,
			WBEMMOF_E_ERROR_INVALID_INCLUDE_FILE = -2147205072,
			WBEMMOF_E_INVALID_DELETECLASS_SYNTAX = -2147205071,
		}
		public enum WMI_OBJ_TEXT : int32
		{
			CIM_DTD_2_0 = 1,
			WMI_DTD_2_0 = 2,
			WMI_EXT1 = 3,
			WMI_EXT2 = 4,
			WMI_EXT3 = 5,
			WMI_EXT4 = 6,
			WMI_EXT5 = 7,
			WMI_EXT6 = 8,
			WMI_EXT7 = 9,
			WMI_EXT8 = 10,
			WMI_EXT9 = 11,
			WMI_EXT10 = 12,
			LAST = 13,
		}
		public enum WBEM_COMPILER_OPTIONS : int32
		{
			CHECK_ONLY = 1,
			AUTORECOVER = 2,
			WMI_CHECK = 4,
			CONSOLE_PRINT = 8,
			DONT_ADD_TO_LIST = 16,
			SPLIT_FILES = 32,
			STORE_FILE = 256,
		}
		public enum WBEM_CONNECT_OPTIONS : int32
		{
			REPOSITORY_ONLY = 64,
			USE_MAX_WAIT = 128,
			PROVIDERS = 256,
		}
		public enum WBEM_UNSECAPP_FLAG_TYPE : int32
		{
			DEFAULT_CHECK_ACCESS = 0,
			CHECK_ACCESS = 1,
			DONT_CHECK_ACCESS = 2,
		}
		public enum WBEM_INFORMATION_FLAG_TYPE : int32
		{
			SHORT_NAME = 1,
			LONG_NAME = 2,
		}
		public enum WBEM_PROVIDER_REQUIREMENTS_TYPE : int32
		{
			START_POSTFILTER = 0,
			STOP_POSTFILTER = 1,
			RECHECK_SUBSCRIPTIONS = 2,
		}
		public enum WBEM_EXTRA_RETURN_CODES : int32
		{
			S_INITIALIZED = 0,
			S_LIMITED_SERVICE = 274433,
			S_INDIRECTLY_UPDATED = 274434,
			S_SUBJECT_TO_SDS = 274435,
			E_RETRY_LATER = -2147209215,
			E_RESOURCE_CONTENTION = -2147209214,
		}
		public enum WBEM_PROVIDER_FLAGS : int32
		{
			FLAG_OWNER_UPDATE = 65536,
		}
		public enum WBEM_BATCH_TYPE : int32
		{
			BATCH_IF_NEEDED = 0,
			MUST_BATCH = 1,
			MUST_NOT_BATCH = 2,
		}
		[AllowDuplicates]
		public enum WbemChangeFlagEnum : int32
		{
			CreateOrUpdate = 0,
			UpdateOnly = 1,
			CreateOnly = 2,
			UpdateCompatible = 0,
			UpdateSafeMode = 32,
			UpdateForceMode = 64,
			StrongValidation = 128,
			Advisory = 65536,
		}
		[AllowDuplicates]
		public enum WbemFlagEnum : int32
		{
			ReturnImmediately = 16,
			ReturnWhenComplete = 0,
			Bidirectional = 0,
			ForwardOnly = 32,
			NoErrorObject = 64,
			ReturnErrorObject = 0,
			SendStatus = 128,
			DontSendStatus = 0,
			EnsureLocatable = 256,
			DirectRead = 512,
			SendOnlySelected = 0,
			UseAmendedQualifiers = 131072,
			GetDefault = 0,
			SpawnInstance = 1,
			UseCurrentTime = 1,
		}
		public enum WbemQueryFlagEnum : int32
		{
			Deep = 0,
			Shallow = 1,
			Prototype = 2,
		}
		public enum WbemTextFlagEnum : int32
		{
			wbemTextFlagNoFlavors = 1,
		}
		public enum WbemTimeout : int32
		{
			wbemTimeoutInfinite = -1,
		}
		public enum WbemComparisonFlagEnum : int32
		{
			IncludeAll = 0,
			IgnoreQualifiers = 1,
			IgnoreObjectSource = 2,
			IgnoreDefaultValues = 4,
			IgnoreClass = 8,
			IgnoreCase = 16,
			IgnoreFlavor = 32,
		}
		public enum WbemCimtypeEnum : int32
		{
			Sint8 = 16,
			Uint8 = 17,
			Sint16 = 2,
			Uint16 = 18,
			Sint32 = 3,
			Uint32 = 19,
			Sint64 = 20,
			Uint64 = 21,
			Real32 = 4,
			Real64 = 5,
			Boolean = 11,
			String = 8,
			Datetime = 101,
			Reference = 102,
			Char16 = 103,
			Object = 13,
		}
		public enum WbemErrorEnum : int32
		{
			NoErr = 0,
			ErrFailed = -2147217407,
			ErrNotFound = -2147217406,
			ErrAccessDenied = -2147217405,
			ErrProviderFailure = -2147217404,
			ErrTypeMismatch = -2147217403,
			ErrOutOfMemory = -2147217402,
			ErrInvalidContext = -2147217401,
			ErrInvalidParameter = -2147217400,
			ErrNotAvailable = -2147217399,
			ErrCriticalError = -2147217398,
			ErrInvalidStream = -2147217397,
			ErrNotSupported = -2147217396,
			ErrInvalidSuperclass = -2147217395,
			ErrInvalidNamespace = -2147217394,
			ErrInvalidObject = -2147217393,
			ErrInvalidClass = -2147217392,
			ErrProviderNotFound = -2147217391,
			ErrInvalidProviderRegistration = -2147217390,
			ErrProviderLoadFailure = -2147217389,
			ErrInitializationFailure = -2147217388,
			ErrTransportFailure = -2147217387,
			ErrInvalidOperation = -2147217386,
			ErrInvalidQuery = -2147217385,
			ErrInvalidQueryType = -2147217384,
			ErrAlreadyExists = -2147217383,
			ErrOverrideNotAllowed = -2147217382,
			ErrPropagatedQualifier = -2147217381,
			ErrPropagatedProperty = -2147217380,
			ErrUnexpected = -2147217379,
			ErrIllegalOperation = -2147217378,
			ErrCannotBeKey = -2147217377,
			ErrIncompleteClass = -2147217376,
			ErrInvalidSyntax = -2147217375,
			ErrNondecoratedObject = -2147217374,
			ErrReadOnly = -2147217373,
			ErrProviderNotCapable = -2147217372,
			ErrClassHasChildren = -2147217371,
			ErrClassHasInstances = -2147217370,
			ErrQueryNotImplemented = -2147217369,
			ErrIllegalNull = -2147217368,
			ErrInvalidQualifierType = -2147217367,
			ErrInvalidPropertyType = -2147217366,
			ErrValueOutOfRange = -2147217365,
			ErrCannotBeSingleton = -2147217364,
			ErrInvalidCimType = -2147217363,
			ErrInvalidMethod = -2147217362,
			ErrInvalidMethodParameters = -2147217361,
			ErrSystemProperty = -2147217360,
			ErrInvalidProperty = -2147217359,
			ErrCallCancelled = -2147217358,
			ErrShuttingDown = -2147217357,
			ErrPropagatedMethod = -2147217356,
			ErrUnsupportedParameter = -2147217355,
			ErrMissingParameter = -2147217354,
			ErrInvalidParameterId = -2147217353,
			ErrNonConsecutiveParameterIds = -2147217352,
			ErrParameterIdOnRetval = -2147217351,
			ErrInvalidObjectPath = -2147217350,
			ErrOutOfDiskSpace = -2147217349,
			ErrBufferTooSmall = -2147217348,
			ErrUnsupportedPutExtension = -2147217347,
			ErrUnknownObjectType = -2147217346,
			ErrUnknownPacketType = -2147217345,
			ErrMarshalVersionMismatch = -2147217344,
			ErrMarshalInvalidSignature = -2147217343,
			ErrInvalidQualifier = -2147217342,
			ErrInvalidDuplicateParameter = -2147217341,
			ErrTooMuchData = -2147217340,
			ErrServerTooBusy = -2147217339,
			ErrInvalidFlavor = -2147217338,
			ErrCircularReference = -2147217337,
			ErrUnsupportedClassUpdate = -2147217336,
			ErrCannotChangeKeyInheritance = -2147217335,
			ErrCannotChangeIndexInheritance = -2147217328,
			ErrTooManyProperties = -2147217327,
			ErrUpdateTypeMismatch = -2147217326,
			ErrUpdateOverrideNotAllowed = -2147217325,
			ErrUpdatePropagatedMethod = -2147217324,
			ErrMethodNotImplemented = -2147217323,
			ErrMethodDisabled = -2147217322,
			ErrRefresherBusy = -2147217321,
			ErrUnparsableQuery = -2147217320,
			ErrNotEventClass = -2147217319,
			ErrMissingGroupWithin = -2147217318,
			ErrMissingAggregationList = -2147217317,
			ErrPropertyNotAnObject = -2147217316,
			ErrAggregatingByObject = -2147217315,
			ErrUninterpretableProviderQuery = -2147217313,
			ErrBackupRestoreWinmgmtRunning = -2147217312,
			ErrQueueOverflow = -2147217311,
			ErrPrivilegeNotHeld = -2147217310,
			ErrInvalidOperator = -2147217309,
			ErrLocalCredentials = -2147217308,
			ErrCannotBeAbstract = -2147217307,
			ErrAmendedObject = -2147217306,
			ErrClientTooSlow = -2147217305,
			ErrNullSecurityDescriptor = -2147217304,
			ErrTimeout = -2147217303,
			ErrInvalidAssociation = -2147217302,
			ErrAmbiguousOperation = -2147217301,
			ErrQuotaViolation = -2147217300,
			ErrTransactionConflict = -2147217299,
			ErrForcedRollback = -2147217298,
			ErrUnsupportedLocale = -2147217297,
			ErrHandleOutOfDate = -2147217296,
			ErrConnectionFailed = -2147217295,
			ErrInvalidHandleRequest = -2147217294,
			ErrPropertyNameTooWide = -2147217293,
			ErrClassNameTooWide = -2147217292,
			ErrMethodNameTooWide = -2147217291,
			ErrQualifierNameTooWide = -2147217290,
			ErrRerunCommand = -2147217289,
			ErrDatabaseVerMismatch = -2147217288,
			ErrVetoPut = -2147217287,
			ErrVetoDelete = -2147217286,
			ErrInvalidLocale = -2147217280,
			ErrProviderSuspended = -2147217279,
			ErrSynchronizationRequired = -2147217278,
			ErrNoSchema = -2147217277,
			ErrProviderAlreadyRegistered = -2147217276,
			ErrProviderNotRegistered = -2147217275,
			ErrFatalTransportError = -2147217274,
			ErrEncryptedConnectionRequired = -2147217273,
			ErrRegistrationTooBroad = -2147213311,
			ErrRegistrationTooPrecise = -2147213310,
			ErrTimedout = -2147209215,
			ErrResetToDefault = -2147209214,
		}
		public enum WbemAuthenticationLevelEnum : int32
		{
			Default = 0,
			None = 1,
			Connect = 2,
			Call = 3,
			Pkt = 4,
			PktIntegrity = 5,
			PktPrivacy = 6,
		}
		public enum WbemImpersonationLevelEnum : int32
		{
			Anonymous = 1,
			Identify = 2,
			Impersonate = 3,
			Delegate = 4,
		}
		public enum WbemPrivilegeEnum : int32
		{
			CreateToken = 1,
			PrimaryToken = 2,
			LockMemory = 3,
			IncreaseQuota = 4,
			MachineAccount = 5,
			Tcb = 6,
			Security = 7,
			TakeOwnership = 8,
			LoadDriver = 9,
			SystemProfile = 10,
			Systemtime = 11,
			ProfileSingleProcess = 12,
			IncreaseBasePriority = 13,
			CreatePagefile = 14,
			CreatePermanent = 15,
			Backup = 16,
			Restore = 17,
			Shutdown = 18,
			Debug = 19,
			Audit = 20,
			SystemEnvironment = 21,
			ChangeNotify = 22,
			RemoteShutdown = 23,
			Undock = 24,
			SyncAgent = 25,
			EnableDelegation = 26,
			ManageVolume = 27,
		}
		public enum WbemObjectTextFormatEnum : int32
		{
			CIMDTD20 = 1,
			WMIDTD20 = 2,
		}
		public enum WbemConnectOptionsEnum : int32
		{
			wbemConnectFlagUseMaxWait = 128,
		}
		public enum tag_WBEM_LOGIN_TYPE : int32
		{
			FLAG_INPROC_LOGIN = 0,
			FLAG_LOCAL_LOGIN = 1,
			FLAG_REMOTE_LOGIN = 2,
			AUTHENTICATION_METHOD_MASK = 15,
			FLAG_USE_MULTIPLE_CHALLENGES = 16,
		}
		
		// --- Function Pointers ---
		
		public function void MI_MethodDecl_Invoke(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in uint16 methodName, in MI_Instance instanceName, in MI_Instance parameters);
		public function void MI_ProviderFT_Load(void** self, MI_Module_Self* selfModule, ref MI_Context context);
		public function void MI_ProviderFT_Unload(void* self, ref MI_Context context);
		public function void MI_ProviderFT_GetInstance(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance instanceName, MI_PropertySet* propertySet);
		public function void MI_ProviderFT_EnumerateInstances(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_CreateInstance(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance newInstance);
		public function void MI_ProviderFT_ModifyInstance(void* self, out MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance modifiedInstance, in MI_PropertySet propertySet);
		public function void MI_ProviderFT_DeleteInstance(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance instanceName);
		public function void MI_ProviderFT_AssociatorInstances(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance instanceName, uint16* resultClass, uint16* role, uint16* resultRole, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_ReferenceInstances(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in MI_Instance instanceName, uint16* role, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_EnableIndications(void* self, ref MI_Context indicationsContext, in uint16 nameSpace, in uint16 className);
		public function void MI_ProviderFT_DisableIndications(void* self, ref MI_Context indicationsContext, in uint16 nameSpace, in uint16 className);
		public function void MI_ProviderFT_Subscribe(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, MI_Filter* filter, uint16* bookmark, uint64 subscriptionID, void** subscriptionSelf);
		public function void MI_ProviderFT_Unsubscribe(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, uint64 subscriptionID, void* subscriptionSelf);
		public function void MI_ProviderFT_Invoke(void* self, ref MI_Context context, in uint16 nameSpace, in uint16 className, in uint16 methodName, in MI_Instance instanceName, in MI_Instance inputParameters);
		public function void MI_Module_Load(out MI_Module_Self* self, ref MI_Context context);
		public function void MI_Module_Unload(MI_Module_Self* self, ref MI_Context context);
		public function void MI_CancelCallback(MI_CancellationReason reason, void* callbackData);
		public function MI_Module* MI_MainFunction(out MI_Server server);
		public function void MI_OperationCallback_PromptUser(ref MI_Operation operation, void* callbackContext, in uint16 message, MI_PromptType promptType, int promptUserResult);
		public function void MI_OperationCallback_WriteError(ref MI_Operation operation, void* callbackContext, ref MI_Instance instance, int writeErrorResult);
		public function void MI_OperationCallback_WriteMessage(ref MI_Operation operation, void* callbackContext, uint32 channel, in uint16 message);
		public function void MI_OperationCallback_WriteProgress(ref MI_Operation operation, void* callbackContext, in uint16 activity, in uint16 currentOperation, in uint16 statusDescription, uint32 percentageComplete, uint32 secondsRemaining);
		public function void MI_OperationCallback_Instance(MI_Operation* operation, void* callbackContext, MI_Instance* instance, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function void MI_OperationCallback_StreamedParameter(ref MI_Operation operation, void* callbackContext, in uint16 parameterName, MI_Type resultType, in MI_Value result, int resultAcknowledgement);
		public function void MI_OperationCallback_Indication(MI_Operation* operation, void* callbackContext, MI_Instance* instance, uint16* bookmark, uint16* machineID, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function void MI_OperationCallback_Class(MI_Operation* operation, void* callbackContext, MI_Class* classResult, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function MI_Result MI_Deserializer_ClassObjectNeeded(void* context, uint16* serverName, uint16* namespaceName, in uint16 className, out MI_Class* requestedClassObject);
		
		// --- Structs ---
		
		[CRepr]
		public struct MI_Timestamp
		{
			public uint32 year;
			public uint32 month;
			public uint32 day;
			public uint32 hour;
			public uint32 minute;
			public uint32 second;
			public uint32 microseconds;
			public int32 utc;
		}
		[CRepr]
		public struct MI_Interval
		{
			public uint32 days;
			public uint32 hours;
			public uint32 minutes;
			public uint32 seconds;
			public uint32 microseconds;
			public uint32 __padding1;
			public uint32 __padding2;
			public uint32 __padding3;
		}
		[CRepr]
		public struct MI_Datetime
		{
			public uint32 isTimestamp;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public MI_Timestamp timestamp;
				public MI_Interval interval;
			}
		}
		[CRepr]
		public struct MI_BooleanA
		{
			public uint8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Uint8A
		{
			public uint8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Sint8A
		{
			public int8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Uint16A
		{
			public uint16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Sint16A
		{
			public int16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Uint32A
		{
			public uint32* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Sint32A
		{
			public int32* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Uint64A
		{
			public uint64* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Sint64A
		{
			public int64* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Real32A
		{
			public float* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Real64A
		{
			public double* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Char16A
		{
			public uint16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_DatetimeA
		{
			public MI_Datetime* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_StringA
		{
			public uint16** data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ReferenceA
		{
			public MI_Instance** data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_InstanceA
		{
			public MI_Instance** data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_Array
		{
			public void* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstBooleanA
		{
			public uint8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstUint8A
		{
			public uint8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstSint8A
		{
			public int8* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstUint16A
		{
			public uint16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstSint16A
		{
			public int16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstUint32A
		{
			public uint32* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstSint32A
		{
			public int32* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstUint64A
		{
			public uint64* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstSint64A
		{
			public int64* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstReal32A
		{
			public float* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstReal64A
		{
			public double* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstChar16A
		{
			public uint16* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstDatetimeA
		{
			public MI_Datetime* data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstStringA
		{
			public uint16** data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstReferenceA
		{
			public MI_Instance** data;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ConstInstanceA
		{
			public MI_Instance** data;
			public uint32 size;
		}
		[CRepr, Union]
		public struct MI_Value
		{
			public uint8 boolean;
			public uint8 uint8;
			public int8 sint8;
			public uint16 uint16;
			public int16 sint16;
			public uint32 uint32;
			public int32 sint32;
			public uint64 uint64;
			public int64 sint64;
			public float real32;
			public double real64;
			public uint16 char16;
			public MI_Datetime datetime;
			public uint16* string;
			public MI_Instance* instance;
			public MI_Instance* reference;
			public MI_BooleanA booleana;
			public MI_Uint8A uint8a;
			public MI_Sint8A sint8a;
			public MI_Uint16A uint16a;
			public MI_Sint16A sint16a;
			public MI_Uint32A uint32a;
			public MI_Sint32A sint32a;
			public MI_Uint64A uint64a;
			public MI_Sint64A sint64a;
			public MI_Real32A real32a;
			public MI_Real64A real64a;
			public MI_Char16A char16a;
			public MI_DatetimeA datetimea;
			public MI_StringA stringa;
			public MI_ReferenceA referencea;
			public MI_InstanceA instancea;
			public MI_Array array;
		}
		[CRepr]
		public struct MI_BooleanField
		{
			public uint8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint8Field
		{
			public int8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint8Field
		{
			public uint8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint16Field
		{
			public int16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint16Field
		{
			public uint16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint32Field
		{
			public int32 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint32Field
		{
			public uint32 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint64Field
		{
			public int64 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint64Field
		{
			public uint64 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Real32Field
		{
			public float value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Real64Field
		{
			public double value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Char16Field
		{
			public uint16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_DatetimeField
		{
			public MI_Datetime value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_StringField
		{
			public uint16* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ReferenceField
		{
			public MI_Instance* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_InstanceField
		{
			public MI_Instance* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_BooleanAField
		{
			public MI_BooleanA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint8AField
		{
			public MI_Uint8A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint8AField
		{
			public MI_Sint8A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint16AField
		{
			public MI_Uint16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint16AField
		{
			public MI_Sint16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint32AField
		{
			public MI_Uint32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint32AField
		{
			public MI_Sint32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Uint64AField
		{
			public MI_Uint64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Sint64AField
		{
			public MI_Sint64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Real32AField
		{
			public MI_Real32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Real64AField
		{
			public MI_Real64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_Char16AField
		{
			public MI_Char16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_DatetimeAField
		{
			public MI_DatetimeA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_StringAField
		{
			public MI_StringA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ReferenceAField
		{
			public MI_ReferenceA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_InstanceAField
		{
			public MI_InstanceA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ArrayField
		{
			public MI_Array value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstBooleanField
		{
			public uint8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint8Field
		{
			public int8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint8Field
		{
			public uint8 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint16Field
		{
			public int16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint16Field
		{
			public uint16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint32Field
		{
			public int32 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint32Field
		{
			public uint32 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint64Field
		{
			public int64 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint64Field
		{
			public uint64 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReal32Field
		{
			public float value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReal64Field
		{
			public double value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstChar16Field
		{
			public uint16 value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstDatetimeField
		{
			public MI_Datetime value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstStringField
		{
			public uint16* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReferenceField
		{
			public MI_Instance* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstInstanceField
		{
			public MI_Instance* value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstBooleanAField
		{
			public MI_ConstBooleanA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint8AField
		{
			public MI_ConstUint8A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint8AField
		{
			public MI_ConstSint8A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint16AField
		{
			public MI_ConstUint16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint16AField
		{
			public MI_ConstSint16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint32AField
		{
			public MI_ConstUint32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint32AField
		{
			public MI_ConstSint32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstUint64AField
		{
			public MI_ConstUint64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstSint64AField
		{
			public MI_ConstSint64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReal32AField
		{
			public MI_ConstReal32A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReal64AField
		{
			public MI_ConstReal64A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstChar16AField
		{
			public MI_ConstChar16A value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstDatetimeAField
		{
			public MI_ConstDatetimeA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstStringAField
		{
			public MI_ConstStringA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstReferenceAField
		{
			public MI_ConstReferenceA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ConstInstanceAField
		{
			public MI_ConstInstanceA value;
			public uint8 exists;
			public uint8 flags;
		}
		[CRepr]
		public struct MI_ServerFT
		{
			public int GetVersion;
			public int GetSystemName;
		}
		[CRepr]
		public struct MI_Server
		{
			public MI_ServerFT* serverFT;
			public MI_ContextFT* contextFT;
			public MI_InstanceFT* instanceFT;
			public MI_PropertySetFT* propertySetFT;
			public MI_FilterFT* filterFT;
		}
		[CRepr]
		public struct MI_FilterFT
		{
			public int Evaluate;
			public int GetExpression;
		}
		[CRepr]
		public struct MI_Filter
		{
			public MI_FilterFT* ft;
			public int[3] reserved;
		}
		[CRepr]
		public struct MI_PropertySetFT
		{
			public int GetElementCount;
			public int ContainsElement;
			public int AddElement;
			public int GetElementAt;
			public int Clear;
			public int Destruct;
			public int Delete;
			public int Clone;
		}
		[CRepr]
		public struct MI_PropertySet
		{
			public MI_PropertySetFT* ft;
			public int[3] reserved;
		}
		[CRepr]
		public struct MI_ObjectDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
			public MI_PropertyDecl** properties;
			public uint32 numProperties;
			public uint32 size;
		}
		[CRepr]
		public struct MI_ClassDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
			public MI_PropertyDecl** properties;
			public uint32 numProperties;
			public uint32 size;
			public uint16* superClass;
			public MI_ClassDecl* superClassDecl;
			public MI_MethodDecl** methods;
			public uint32 numMethods;
			public MI_SchemaDecl* schema;
			public MI_ProviderFT* providerFT;
			public MI_Class* owningClass;
		}
		[CRepr]
		public struct MI_FeatureDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
		}
		[CRepr]
		public struct MI_ParameterDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
			public uint32 type;
			public uint16* className;
			public uint32 subscript;
			public uint32 offset;
		}
		[CRepr]
		public struct MI_PropertyDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
			public uint32 type;
			public uint16* className;
			public uint32 subscript;
			public uint32 offset;
			public uint16* origin;
			public uint16* propagator;
			public void* value;
		}
		[CRepr]
		public struct MI_MethodDecl
		{
			public uint32 flags;
			public uint32 code;
			public uint16* name;
			public MI_Qualifier** qualifiers;
			public uint32 numQualifiers;
			public MI_ParameterDecl** parameters;
			public uint32 numParameters;
			public uint32 size;
			public uint32 returnType;
			public uint16* origin;
			public uint16* propagator;
			public MI_SchemaDecl* schema;
			public MI_MethodDecl_Invoke @function;
		}
		[CRepr]
		public struct MI_QualifierDecl
		{
			public uint16* name;
			public uint32 type;
			public uint32 @scope;
			public uint32 flavor;
			public uint32 subscript;
			public void* value;
		}
		[CRepr]
		public struct MI_Qualifier
		{
			public uint16* name;
			public uint32 type;
			public uint32 flavor;
			public void* value;
		}
		[CRepr]
		public struct MI_SchemaDecl
		{
			public MI_QualifierDecl** qualifierDecls;
			public uint32 numQualifierDecls;
			public MI_ClassDecl** classDecls;
			public uint32 numClassDecls;
		}
		[CRepr]
		public struct MI_Module_Self {}
		[CRepr]
		public struct MI_ProviderFT
		{
			public MI_ProviderFT_Load Load;
			public MI_ProviderFT_Unload Unload;
			public MI_ProviderFT_GetInstance GetInstance;
			public MI_ProviderFT_EnumerateInstances EnumerateInstances;
			public MI_ProviderFT_CreateInstance CreateInstance;
			public MI_ProviderFT_ModifyInstance ModifyInstance;
			public MI_ProviderFT_DeleteInstance DeleteInstance;
			public MI_ProviderFT_AssociatorInstances AssociatorInstances;
			public MI_ProviderFT_ReferenceInstances ReferenceInstances;
			public MI_ProviderFT_EnableIndications EnableIndications;
			public MI_ProviderFT_DisableIndications DisableIndications;
			public MI_ProviderFT_Subscribe Subscribe;
			public MI_ProviderFT_Unsubscribe Unsubscribe;
			public MI_ProviderFT_Invoke Invoke;
		}
		[CRepr]
		public struct MI_Module
		{
			public uint32 version;
			public uint32 generatorVersion;
			public uint32 flags;
			public uint32 charSize;
			public MI_SchemaDecl* schemaDecl;
			public MI_Module_Load Load;
			public MI_Module_Unload Unload;
			public MI_ProviderFT* dynamicProviderFT;
		}
		[CRepr]
		public struct MI_InstanceFT
		{
			public int Clone;
			public int Destruct;
			public int Delete;
			public int IsA;
			public int GetClassNameA;
			public int SetNameSpace;
			public int GetNameSpace;
			public int GetElementCount;
			public int AddElement;
			public int SetElement;
			public int SetElementAt;
			public int GetElement;
			public int GetElementAt;
			public int ClearElement;
			public int ClearElementAt;
			public int GetServerName;
			public int SetServerName;
			public int GetClass;
		}
		[CRepr]
		public struct MI_InstanceExFT
		{
			public MI_InstanceFT parent;
			public int Normalize;
		}
		[CRepr]
		public struct MI_Instance
		{
			public MI_InstanceFT* ft;
			public MI_ClassDecl* classDecl;
			public uint16* serverName;
			public uint16* nameSpace;
			public int[4] reserved;
		}
		[CRepr]
		public struct MI_ContextFT
		{
			public int PostResult;
			public int PostInstance;
			public int PostIndication;
			public int ConstructInstance;
			public int ConstructParameters;
			public int NewInstance;
			public int NewDynamicInstance;
			public int NewParameters;
			public int Canceled;
			public int GetLocale;
			public int RegisterCancel;
			public int RequestUnload;
			public int RefuseUnload;
			public int GetLocalSession;
			public int SetStringOption;
			public int GetStringOption;
			public int GetNumberOption;
			public int GetCustomOption;
			public int GetCustomOptionCount;
			public int GetCustomOptionAt;
			public int WriteMessage;
			public int WriteProgress;
			public int WriteStreamParameter;
			public int WriteCimError;
			public int PromptUser;
			public int ShouldProcess;
			public int ShouldContinue;
			public int PostError;
			public int PostCimError;
			public int WriteError;
		}
		[CRepr]
		public struct MI_Context
		{
			public MI_ContextFT* ft;
			public int[3] reserved;
		}
		[CRepr]
		public struct MI_QualifierSetFT
		{
			public int GetQualifierCount;
			public int GetQualifierAt;
			public int GetQualifier;
		}
		[CRepr]
		public struct MI_QualifierSet
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_QualifierSetFT* ft;
		}
		[CRepr]
		public struct MI_ParameterSetFT
		{
			public int GetMethodReturnType;
			public int GetParameterCount;
			public int GetParameterAt;
			public int GetParameter;
		}
		[CRepr]
		public struct MI_ParameterSet
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_ParameterSetFT* ft;
		}
		[CRepr]
		public struct MI_ClassFT
		{
			public int GetClassNameA;
			public int GetNameSpace;
			public int GetServerName;
			public int GetElementCount;
			public int GetElement;
			public int GetElementAt;
			public int GetClassQualifierSet;
			public int GetMethodCount;
			public int GetMethodAt;
			public int GetMethod;
			public int GetParentClassName;
			public int GetParentClass;
			public int Delete;
			public int Clone;
		}
		[CRepr]
		public struct MI_Class
		{
			public MI_ClassFT* ft;
			public MI_ClassDecl* classDecl;
			public uint16* namespaceName;
			public uint16* serverName;
			public int[4] reserved;
		}
		[CRepr]
		public struct MI_OperationCallbacks
		{
			public void* callbackContext;
			public MI_OperationCallback_PromptUser promptUser;
			public MI_OperationCallback_WriteError writeError;
			public MI_OperationCallback_WriteMessage writeMessage;
			public MI_OperationCallback_WriteProgress writeProgress;
			public MI_OperationCallback_Instance instanceResult;
			public MI_OperationCallback_Indication indicationResult;
			public MI_OperationCallback_Class classResult;
			public MI_OperationCallback_StreamedParameter streamedParameterResult;
		}
		[CRepr]
		public struct MI_SessionCallbacks
		{
			public void* callbackContext;
			public int writeMessage;
			public int writeError;
		}
		[CRepr]
		public struct MI_UsernamePasswordCreds
		{
			public uint16* domain;
			public uint16* username;
			public uint16* password;
		}
		[CRepr]
		public struct MI_UserCredentials
		{
			public uint16* authenticationType;
			public _credentials_e__Union credentials;
			
			[CRepr, Union]
			public struct _credentials_e__Union
			{
				public MI_UsernamePasswordCreds usernamePassword;
				public uint16* certificateThumbprint;
			}
		}
		[CRepr]
		public struct MI_SubscriptionDeliveryOptionsFT
		{
			public int SetString;
			public int SetNumber;
			public int SetDateTime;
			public int SetInterval;
			public int AddCredentials;
			public int Delete;
			public int GetString;
			public int GetNumber;
			public int GetDateTime;
			public int GetInterval;
			public int GetOptionCount;
			public int GetOptionAt;
			public int GetOption;
			public int GetCredentialsCount;
			public int GetCredentialsAt;
			public int GetCredentialsPasswordAt;
			public int Clone;
		}
		[CRepr]
		public struct MI_SubscriptionDeliveryOptions
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_SubscriptionDeliveryOptionsFT* ft;
		}
		[CRepr]
		public struct MI_Serializer
		{
			public uint64 reserved1;
			public int reserved2;
		}
		[CRepr]
		public struct MI_Deserializer
		{
			public uint64 reserved1;
			public int reserved2;
		}
		[CRepr]
		public struct MI_SerializerFT
		{
			public int Close;
			public int SerializeClass;
			public int SerializeInstance;
		}
		[CRepr]
		public struct MI_DeserializerFT
		{
			public int Close;
			public int DeserializeClass;
			public int Class_GetClassName;
			public int Class_GetParentClassName;
			public int DeserializeInstance;
			public int Instance_GetClassName;
		}
		[CRepr]
		public struct MI_ApplicationFT
		{
			public int Close;
			public int NewSession;
			public int NewHostedProvider;
			public int NewInstance;
			public int NewDestinationOptions;
			public int NewOperationOptions;
			public int NewSubscriptionDeliveryOptions;
			public int NewSerializer;
			public int NewDeserializer;
			public int NewInstanceFromClass;
			public int NewClass;
		}
		[CRepr]
		public struct MI_HostedProviderFT
		{
			public int Close;
			public int GetApplication;
		}
		[CRepr]
		public struct MI_SessionFT
		{
			public int Close;
			public int GetApplication;
			public int GetInstance;
			public int ModifyInstance;
			public int CreateInstance;
			public int DeleteInstance;
			public int Invoke;
			public int EnumerateInstances;
			public int QueryInstances;
			public int AssociatorInstances;
			public int ReferenceInstances;
			public int Subscribe;
			public int GetClass;
			public int EnumerateClasses;
			public int TestConnection;
		}
		[CRepr]
		public struct MI_OperationFT
		{
			public int Close;
			public int Cancel;
			public int GetSession;
			public int GetInstance;
			public int GetIndication;
			public int GetClass;
		}
		[CRepr]
		public struct MI_DestinationOptionsFT
		{
			public int Delete;
			public int SetString;
			public int SetNumber;
			public int AddCredentials;
			public int GetString;
			public int GetNumber;
			public int GetOptionCount;
			public int GetOptionAt;
			public int GetOption;
			public int GetCredentialsCount;
			public int GetCredentialsAt;
			public int GetCredentialsPasswordAt;
			public int Clone;
			public int SetInterval;
			public int GetInterval;
		}
		[CRepr]
		public struct MI_OperationOptionsFT
		{
			public int Delete;
			public int SetString;
			public int SetNumber;
			public int SetCustomOption;
			public int GetString;
			public int GetNumber;
			public int GetOptionCount;
			public int GetOptionAt;
			public int GetOption;
			public int GetEnabledChannels;
			public int Clone;
			public int SetInterval;
			public int GetInterval;
		}
		[CRepr]
		public struct MI_Application
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_ApplicationFT* ft;
		}
		[CRepr]
		public struct MI_Session
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_SessionFT* ft;
		}
		[CRepr]
		public struct MI_Operation
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_OperationFT* ft;
		}
		[CRepr]
		public struct MI_HostedProvider
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_HostedProviderFT* ft;
		}
		[CRepr]
		public struct MI_DestinationOptions
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_DestinationOptionsFT* ft;
		}
		[CRepr]
		public struct MI_OperationOptions
		{
			public uint64 reserved1;
			public int reserved2;
			public MI_OperationOptionsFT* ft;
		}
		[CRepr]
		public struct MI_UtilitiesFT
		{
			public int MapErrorToMiErrorCategory;
			public int CimErrorFromErrorCode;
		}
		[CRepr]
		public struct MI_ClientFT_V1
		{
			public MI_ApplicationFT* applicationFT;
			public MI_SessionFT* sessionFT;
			public MI_OperationFT* operationFT;
			public MI_HostedProviderFT* hostedProviderFT;
			public MI_SerializerFT* serializerFT;
			public MI_DeserializerFT* deserializerFT;
			public MI_SubscriptionDeliveryOptionsFT* subscribeDeliveryOptionsFT;
			public MI_DestinationOptionsFT* destinationOptionsFT;
			public MI_OperationOptionsFT* operationOptionsFT;
			public MI_UtilitiesFT* utilitiesFT;
		}
		[CRepr]
		public struct SWbemQueryQualifiedName
		{
			public uint32 m_uVersion;
			public uint32 m_uTokenType;
			public uint32 m_uNameListSize;
			public PWSTR* m_ppszNameList;
			public BOOL m_bArraysUsed;
			public BOOL* m_pbArrayElUsed;
			public uint32* m_puArrayIndex;
		}
		[CRepr, Union]
		public struct SWbemRpnConst
		{
			public PWSTR m_pszStrVal;
			public BOOL m_bBoolVal;
			public int32 m_lLongVal;
			public uint32 m_uLongVal;
			public double m_dblVal;
			public int64 m_lVal64;
			public int64 m_uVal64;
		}
		[CRepr]
		public struct SWbemRpnQueryToken
		{
			public uint32 m_uVersion;
			public uint32 m_uTokenType;
			public uint32 m_uSubexpressionShape;
			public uint32 m_uOperator;
			public SWbemQueryQualifiedName* m_pRightIdent;
			public SWbemQueryQualifiedName* m_pLeftIdent;
			public uint32 m_uConstApparentType;
			public SWbemRpnConst m_Const;
			public uint32 m_uConst2ApparentType;
			public SWbemRpnConst m_Const2;
			public PWSTR m_pszRightFunc;
			public PWSTR m_pszLeftFunc;
		}
		[CRepr]
		public struct SWbemRpnTokenList
		{
			public uint32 m_uVersion;
			public uint32 m_uTokenType;
			public uint32 m_uNumTokens;
		}
		[CRepr]
		public struct SWbemRpnEncodedQuery
		{
			public uint32 m_uVersion;
			public uint32 m_uTokenType;
			public uint64 m_uParsedFeatureMask;
			public uint32 m_uDetectedArraySize;
			public uint32* m_puDetectedFeatures;
			public uint32 m_uSelectListSize;
			public SWbemQueryQualifiedName** m_ppSelectList;
			public uint32 m_uFromTargetType;
			public PWSTR m_pszOptionalFromPath;
			public uint32 m_uFromListSize;
			public PWSTR* m_ppszFromList;
			public uint32 m_uWhereClauseSize;
			public SWbemRpnQueryToken** m_ppRpnWhereClause;
			public double m_dblWithinPolling;
			public double m_dblWithinWindow;
			public uint32 m_uOrderByListSize;
			public PWSTR* m_ppszOrderByList;
			public uint32* m_uOrderDirectionEl;
		}
		[CRepr]
		public struct SWbemAnalysisMatrix
		{
			public uint32 m_uVersion;
			public uint32 m_uMatrixType;
			public PWSTR m_pszProperty;
			public uint32 m_uPropertyType;
			public uint32 m_uEntries;
			public void** m_pValues;
			public BOOL* m_pbTruthTable;
		}
		[CRepr]
		public struct SWbemAnalysisMatrixList
		{
			public uint32 m_uVersion;
			public uint32 m_uMatrixType;
			public uint32 m_uNumMatrices;
			public SWbemAnalysisMatrix* m_pMatrices;
		}
		[CRepr]
		public struct SWbemAssocQueryInf
		{
			public uint32 m_uVersion;
			public uint32 m_uAnalysisType;
			public uint32 m_uFeatureMask;
			public IWbemPath* m_pPath;
			public PWSTR m_pszPath;
			public PWSTR m_pszQueryText;
			public PWSTR m_pszResultClass;
			public PWSTR m_pszAssocClass;
			public PWSTR m_pszRole;
			public PWSTR m_pszResultRole;
			public PWSTR m_pszRequiredQualifier;
			public PWSTR m_pszRequiredAssocQualifier;
		}
		[CRepr]
		public struct WBEM_COMPILE_STATUS_INFO
		{
			public int32 lPhaseError;
			public HRESULT hRes;
			public int32 ObjectNum;
			public int32 FirstLine;
			public int32 LastLine;
			public uint32 dwOutFlags;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WbemDefPath = .(0xcf4cc405, 0xe2c5, 0x4ddd, 0xb3, 0xce, 0x5e, 0x75, 0x82, 0xd8, 0xc9, 0xfa);
		public const Guid CLSID_WbemQuery = .(0xeac8a024, 0x21e2, 0x4523, 0xad, 0x73, 0xa7, 0x1a, 0x0a, 0xa2, 0xf5, 0x6a);
		public const Guid CLSID_WbemLocator = .(0x4590f811, 0x1d3a, 0x11d0, 0x89, 0x1f, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
		public const Guid CLSID_WbemContext = .(0x674b6698, 0xee92, 0x11d0, 0xad, 0x71, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_UnsecuredApartment = .(0x49bd2028, 0x1523, 0x11d1, 0xad, 0x79, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_WbemClassObject = .(0x9a653086, 0x174f, 0x11d2, 0xb5, 0xf9, 0x00, 0x10, 0x4b, 0x70, 0x3e, 0xfd);
		public const Guid CLSID_MofCompiler = .(0x6daf9757, 0x2e37, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
		public const Guid CLSID_WbemStatusCodeText = .(0xeb87e1bd, 0x3233, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
		public const Guid CLSID_WbemBackupRestore = .(0xc49e32c6, 0xbc8b, 0x11d2, 0x85, 0xd4, 0x00, 0x10, 0x5a, 0x1f, 0x83, 0x04);
		public const Guid CLSID_WbemRefresher = .(0xc71566f2, 0x561e, 0x11d1, 0xad, 0x87, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_WbemObjectTextSrc = .(0x8d1c559d, 0x84f0, 0x4bb3, 0xa7, 0xd5, 0x56, 0xa7, 0x43, 0x5a, 0x9b, 0xa6);
		public const Guid CLSID_WbemAdministrativeLocator = .(0xcb8555cc, 0x9128, 0x11d1, 0xad, 0x9b, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_WbemAuthenticatedLocator = .(0xcd184336, 0x9128, 0x11d1, 0xad, 0x9b, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_WbemUnauthenticatedLocator = .(0x443e7b79, 0xde31, 0x11d2, 0xb3, 0x40, 0x00, 0x10, 0x4b, 0xcc, 0x4b, 0x4a);
		public const Guid CLSID_WbemDecoupledRegistrar = .(0x4cfc7932, 0x0f9d, 0x4bef, 0x9c, 0x32, 0x8e, 0xa2, 0xa6, 0xb5, 0x6f, 0xcb);
		public const Guid CLSID_WbemDecoupledBasicEventProvider = .(0xf5f75737, 0x2843, 0x4f22, 0x93, 0x3d, 0xc7, 0x6a, 0x97, 0xcd, 0xa6, 0x2f);
		public const Guid CLSID_SWbemLocator = .(0x76a64158, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemNamedValueSet = .(0x9aed384e, 0xce8b, 0x11d1, 0x8b, 0x05, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemObjectPath = .(0x5791bc26, 0xce9c, 0x11d1, 0x97, 0xbf, 0x00, 0x00, 0xf8, 0x1e, 0x84, 0x9c);
		public const Guid CLSID_SWbemLastError = .(0xc2feeeac, 0xcfcd, 0x11d1, 0x8b, 0x05, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemSink = .(0x75718c9a, 0xf029, 0x11d1, 0xa1, 0xac, 0x00, 0xc0, 0x4f, 0xb6, 0xc2, 0x23);
		public const Guid CLSID_SWbemDateTime = .(0x47dfbe54, 0xcf76, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
		public const Guid CLSID_SWbemRefresher = .(0xd269bf5c, 0xd9c1, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
		public const Guid CLSID_SWbemServices = .(0x04b83d63, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemServicesEx = .(0x62e522dc, 0x8cf3, 0x40a8, 0x8b, 0x2e, 0x37, 0xd5, 0x95, 0x65, 0x1e, 0x40);
		public const Guid CLSID_SWbemObject = .(0x04b83d62, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemObjectEx = .(0xd6bdafb2, 0x9435, 0x491f, 0xbb, 0x87, 0x6a, 0xa0, 0xf0, 0xbc, 0x31, 0xa2);
		public const Guid CLSID_SWbemObjectSet = .(0x04b83d61, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemNamedValue = .(0x04b83d60, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemQualifier = .(0x04b83d5f, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemQualifierSet = .(0x04b83d5e, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemProperty = .(0x04b83d5d, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemPropertySet = .(0x04b83d5c, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemMethod = .(0x04b83d5b, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemMethodSet = .(0x04b83d5a, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemEventSource = .(0x04b83d58, 0x21ae, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemSecurity = .(0xb54d66e9, 0x2287, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemPrivilege = .(0x26ee67bc, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemPrivilegeSet = .(0x26ee67be, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
		public const Guid CLSID_SWbemRefreshableItem = .(0x8c6854bc, 0xde4b, 0x11d3, 0xb3, 0x90, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
		public const Guid CLSID_WMIExtension = .(0xf0975afe, 0x5c7f, 0x11d2, 0x8b, 0x74, 0x00, 0x10, 0x4b, 0x2a, 0xfb, 0x41);
		public const Guid CLSID_WbemLevel1Login = .(0x8bc3f05e, 0xd86b, 0x11d0, 0xa0, 0x75, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
		public const Guid CLSID_WbemLocalAddrRes = .(0xa1044801, 0x8f7e, 0x11d1, 0x9e, 0x7c, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
		public const Guid CLSID_WbemUninitializedClassObject = .(0x7a0227f6, 0x7108, 0x11d1, 0xad, 0x90, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
		public const Guid CLSID_WbemDCOMTransport = .(0xf7ce2e13, 0x8c90, 0x11d1, 0x9e, 0x7b, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWbemPathKeyList : IUnknown
		{
			public const new Guid IID = .(0x9ae62877, 0x7544, 0x4bb0, 0xaa, 0x26, 0xa1, 0x38, 0x24, 0x65, 0x9e, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 puKeyCount) mut => VT.GetCount(ref this, out puKeyCount);
			public HRESULT SetKey(PWSTR wszName, uint32 uFlags, uint32 uCimType, void* pKeyVal) mut => VT.SetKey(ref this, wszName, uFlags, uCimType, pKeyVal);
			public HRESULT SetKey2(PWSTR wszName, uint32 uFlags, uint32 uCimType, ref VARIANT pKeyVal) mut => VT.SetKey2(ref this, wszName, uFlags, uCimType, ref pKeyVal);
			public HRESULT GetKey(uint32 uKeyIx, uint32 uFlags, out uint32 puNameBufSize, char16* pszKeyName, out uint32 puKeyValBufSize, void* pKeyVal, out uint32 puApparentCimType) mut => VT.GetKey(ref this, uKeyIx, uFlags, out puNameBufSize, pszKeyName, out puKeyValBufSize, pKeyVal, out puApparentCimType);
			public HRESULT GetKey2(uint32 uKeyIx, uint32 uFlags, out uint32 puNameBufSize, char16* pszKeyName, out VARIANT pKeyValue, out uint32 puApparentCimType) mut => VT.GetKey2(ref this, uKeyIx, uFlags, out puNameBufSize, pszKeyName, out pKeyValue, out puApparentCimType);
			public HRESULT RemoveKey(PWSTR wszName, uint32 uFlags) mut => VT.RemoveKey(ref this, wszName, uFlags);
			public HRESULT RemoveAllKeys(uint32 uFlags) mut => VT.RemoveAllKeys(ref this, uFlags);
			public HRESULT MakeSingleton(uint8 bSet) mut => VT.MakeSingleton(ref this, bSet);
			public HRESULT GetInfo(uint32 uRequestedInfo, out uint64 puResponse) mut => VT.GetInfo(ref this, uRequestedInfo, out puResponse);
			public HRESULT GetText(int32 lFlags, out uint32 puBuffLength, char16* pszText) mut => VT.GetText(ref this, lFlags, out puBuffLength, pszText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, out uint32 puKeyCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, PWSTR wszName, uint32 uFlags, uint32 uCimType, void* pKeyVal) SetKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, PWSTR wszName, uint32 uFlags, uint32 uCimType, ref VARIANT pKeyVal) SetKey2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, uint32 uKeyIx, uint32 uFlags, out uint32 puNameBufSize, char16* pszKeyName, out uint32 puKeyValBufSize, void* pKeyVal, out uint32 puApparentCimType) GetKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, uint32 uKeyIx, uint32 uFlags, out uint32 puNameBufSize, char16* pszKeyName, out VARIANT pKeyValue, out uint32 puApparentCimType) GetKey2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, PWSTR wszName, uint32 uFlags) RemoveKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, uint32 uFlags) RemoveAllKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, uint8 bSet) MakeSingleton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, uint32 uRequestedInfo, out uint64 puResponse) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPathKeyList self, int32 lFlags, out uint32 puBuffLength, char16* pszText) GetText;
			}
		}
		[CRepr]
		public struct IWbemPath : IUnknown
		{
			public const new Guid IID = .(0x3bc15af2, 0x736c, 0x477e, 0x9e, 0x51, 0x23, 0x8a, 0xf8, 0x66, 0x7d, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetText(uint32 uMode, PWSTR pszPath) mut => VT.SetText(ref this, uMode, pszPath);
			public HRESULT GetText(int32 lFlags, out uint32 puBuffLength, char16* pszText) mut => VT.GetText(ref this, lFlags, out puBuffLength, pszText);
			public HRESULT GetInfo(uint32 uRequestedInfo, out uint64 puResponse) mut => VT.GetInfo(ref this, uRequestedInfo, out puResponse);
			public HRESULT SetServer(PWSTR Name) mut => VT.SetServer(ref this, Name);
			public HRESULT GetServer(out uint32 puNameBufLength, char16* pName) mut => VT.GetServer(ref this, out puNameBufLength, pName);
			public HRESULT GetNamespaceCount(out uint32 puCount) mut => VT.GetNamespaceCount(ref this, out puCount);
			public HRESULT SetNamespaceAt(uint32 uIndex, PWSTR pszName) mut => VT.SetNamespaceAt(ref this, uIndex, pszName);
			public HRESULT GetNamespaceAt(uint32 uIndex, out uint32 puNameBufLength, char16* pName) mut => VT.GetNamespaceAt(ref this, uIndex, out puNameBufLength, pName);
			public HRESULT RemoveNamespaceAt(uint32 uIndex) mut => VT.RemoveNamespaceAt(ref this, uIndex);
			public HRESULT RemoveAllNamespaces() mut => VT.RemoveAllNamespaces(ref this);
			public HRESULT GetScopeCount(out uint32 puCount) mut => VT.GetScopeCount(ref this, out puCount);
			public HRESULT SetScope(uint32 uIndex, PWSTR pszClass) mut => VT.SetScope(ref this, uIndex, pszClass);
			public HRESULT SetScopeFromText(uint32 uIndex, PWSTR pszText) mut => VT.SetScopeFromText(ref this, uIndex, pszText);
			public HRESULT GetScope(uint32 uIndex, out uint32 puClassNameBufSize, char16* pszClass, out IWbemPathKeyList* pKeyList) mut => VT.GetScope(ref this, uIndex, out puClassNameBufSize, pszClass, out pKeyList);
			public HRESULT GetScopeAsText(uint32 uIndex, out uint32 puTextBufSize, char16* pszText) mut => VT.GetScopeAsText(ref this, uIndex, out puTextBufSize, pszText);
			public HRESULT RemoveScope(uint32 uIndex) mut => VT.RemoveScope(ref this, uIndex);
			public HRESULT RemoveAllScopes() mut => VT.RemoveAllScopes(ref this);
			public HRESULT SetClassName(PWSTR Name) mut => VT.SetClassName(ref this, Name);
			public HRESULT GetClassName(out uint32 puBuffLength, char16* pszName) mut => VT.GetClassName(ref this, out puBuffLength, pszName);
			public HRESULT GetKeyList(out IWbemPathKeyList* pOut) mut => VT.GetKeyList(ref this, out pOut);
			public HRESULT CreateClassPart(int32 lFlags, PWSTR Name) mut => VT.CreateClassPart(ref this, lFlags, Name);
			public HRESULT DeleteClassPart(int32 lFlags) mut => VT.DeleteClassPart(ref this, lFlags);
			public BOOL IsRelative(PWSTR wszMachine, PWSTR wszNamespace) mut => VT.IsRelative(ref this, wszMachine, wszNamespace);
			public BOOL IsRelativeOrChild(PWSTR wszMachine, PWSTR wszNamespace, int32 lFlags) mut => VT.IsRelativeOrChild(ref this, wszMachine, wszNamespace, lFlags);
			public BOOL IsLocal(PWSTR wszMachine) mut => VT.IsLocal(ref this, wszMachine);
			public BOOL IsSameClassName(PWSTR wszClass) mut => VT.IsSameClassName(ref this, wszClass);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uMode, PWSTR pszPath) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, int32 lFlags, out uint32 puBuffLength, char16* pszText) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uRequestedInfo, out uint64 puResponse) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, PWSTR Name) SetServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, out uint32 puNameBufLength, char16* pName) GetServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, out uint32 puCount) GetNamespaceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, PWSTR pszName) SetNamespaceAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, out uint32 puNameBufLength, char16* pName) GetNamespaceAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex) RemoveNamespaceAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self) RemoveAllNamespaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, out uint32 puCount) GetScopeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, PWSTR pszClass) SetScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, PWSTR pszText) SetScopeFromText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, out uint32 puClassNameBufSize, char16* pszClass, out IWbemPathKeyList* pKeyList) GetScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex, out uint32 puTextBufSize, char16* pszText) GetScopeAsText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, uint32 uIndex) RemoveScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self) RemoveAllScopes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, PWSTR Name) SetClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, out uint32 puBuffLength, char16* pszName) GetClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, out IWbemPathKeyList* pOut) GetKeyList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, int32 lFlags, PWSTR Name) CreateClassPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPath self, int32 lFlags) DeleteClassPart;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IWbemPath self, PWSTR wszMachine, PWSTR wszNamespace) IsRelative;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IWbemPath self, PWSTR wszMachine, PWSTR wszNamespace, int32 lFlags) IsRelativeOrChild;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IWbemPath self, PWSTR wszMachine) IsLocal;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IWbemPath self, PWSTR wszClass) IsSameClassName;
			}
		}
		[CRepr]
		public struct IWbemQuery : IUnknown
		{
			public const new Guid IID = .(0x81166f58, 0xdd98, 0x11d3, 0xa1, 0x20, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Empty() mut => VT.Empty(ref this);
			public HRESULT SetLanguageFeatures(uint32 uFlags, uint32 uArraySize, ref uint32 puFeatures) mut => VT.SetLanguageFeatures(ref this, uFlags, uArraySize, ref puFeatures);
			public HRESULT TestLanguageFeatures(uint32 uFlags, out uint32 uArraySize, out uint32 puFeatures) mut => VT.TestLanguageFeatures(ref this, uFlags, out uArraySize, out puFeatures);
			public HRESULT Parse(PWSTR pszLang, PWSTR pszQuery, uint32 uFlags) mut => VT.Parse(ref this, pszLang, pszQuery, uFlags);
			public HRESULT GetAnalysis(uint32 uAnalysisType, uint32 uFlags, void** pAnalysis) mut => VT.GetAnalysis(ref this, uAnalysisType, uFlags, pAnalysis);
			public HRESULT FreeMemory(void* pMem) mut => VT.FreeMemory(ref this, pMem);
			public HRESULT GetQueryInfo(uint32 uAnalysisType, uint32 uInfoId, uint32 uBufSize, void* pDestBuf) mut => VT.GetQueryInfo(ref this, uAnalysisType, uInfoId, uBufSize, pDestBuf);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self) Empty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, uint32 uFlags, uint32 uArraySize, ref uint32 puFeatures) SetLanguageFeatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, uint32 uFlags, out uint32 uArraySize, out uint32 puFeatures) TestLanguageFeatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, PWSTR pszLang, PWSTR pszQuery, uint32 uFlags) Parse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, uint32 uAnalysisType, uint32 uFlags, void** pAnalysis) GetAnalysis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, void* pMem) FreeMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQuery self, uint32 uAnalysisType, uint32 uInfoId, uint32 uBufSize, void* pDestBuf) GetQueryInfo;
			}
		}
		[CRepr]
		public struct IWbemClassObject : IUnknown
		{
			public const new Guid IID = .(0xdc12a681, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetQualifierSet(out IWbemQualifierSet* ppQualSet) mut => VT.GetQualifierSet(ref this, out ppQualSet);
			public HRESULT Get(PWSTR wszName, int32 lFlags, out VARIANT pVal, out int32 pType, out int32 plFlavor) mut => VT.Get(ref this, wszName, lFlags, out pVal, out pType, out plFlavor);
			public HRESULT Put(PWSTR wszName, int32 lFlags, ref VARIANT pVal, int32 Type) mut => VT.Put(ref this, wszName, lFlags, ref pVal, Type);
			public HRESULT Delete(PWSTR wszName) mut => VT.Delete(ref this, wszName);
			public HRESULT GetNames(PWSTR wszQualifierName, int32 lFlags, ref VARIANT pQualifierVal, out SAFEARRAY* pNames) mut => VT.GetNames(ref this, wszQualifierName, lFlags, ref pQualifierVal, out pNames);
			public HRESULT BeginEnumeration(int32 lEnumFlags) mut => VT.BeginEnumeration(ref this, lEnumFlags);
			public HRESULT Next(int32 lFlags, out BSTR strName, out VARIANT pVal, out int32 pType, out int32 plFlavor) mut => VT.Next(ref this, lFlags, out strName, out pVal, out pType, out plFlavor);
			public HRESULT EndEnumeration() mut => VT.EndEnumeration(ref this);
			public HRESULT GetPropertyQualifierSet(PWSTR wszProperty, out IWbemQualifierSet* ppQualSet) mut => VT.GetPropertyQualifierSet(ref this, wszProperty, out ppQualSet);
			public HRESULT Clone(out IWbemClassObject* ppCopy) mut => VT.Clone(ref this, out ppCopy);
			public HRESULT GetObjectText(int32 lFlags, out BSTR pstrObjectText) mut => VT.GetObjectText(ref this, lFlags, out pstrObjectText);
			public HRESULT SpawnDerivedClass(int32 lFlags, out IWbemClassObject* ppNewClass) mut => VT.SpawnDerivedClass(ref this, lFlags, out ppNewClass);
			public HRESULT SpawnInstance(int32 lFlags, out IWbemClassObject* ppNewInstance) mut => VT.SpawnInstance(ref this, lFlags, out ppNewInstance);
			public HRESULT CompareTo(int32 lFlags, ref IWbemClassObject pCompareTo) mut => VT.CompareTo(ref this, lFlags, ref pCompareTo);
			public HRESULT GetPropertyOrigin(PWSTR wszName, out BSTR pstrClassName) mut => VT.GetPropertyOrigin(ref this, wszName, out pstrClassName);
			public HRESULT InheritsFrom(PWSTR strAncestor) mut => VT.InheritsFrom(ref this, strAncestor);
			public HRESULT GetMethod(PWSTR wszName, int32 lFlags, out IWbemClassObject* ppInSignature, out IWbemClassObject* ppOutSignature) mut => VT.GetMethod(ref this, wszName, lFlags, out ppInSignature, out ppOutSignature);
			public HRESULT PutMethod(PWSTR wszName, int32 lFlags, ref IWbemClassObject pInSignature, ref IWbemClassObject pOutSignature) mut => VT.PutMethod(ref this, wszName, lFlags, ref pInSignature, ref pOutSignature);
			public HRESULT DeleteMethod(PWSTR wszName) mut => VT.DeleteMethod(ref this, wszName);
			public HRESULT BeginMethodEnumeration(int32 lEnumFlags) mut => VT.BeginMethodEnumeration(ref this, lEnumFlags);
			public HRESULT NextMethod(int32 lFlags, out BSTR pstrName, out IWbemClassObject* ppInSignature, out IWbemClassObject* ppOutSignature) mut => VT.NextMethod(ref this, lFlags, out pstrName, out ppInSignature, out ppOutSignature);
			public HRESULT EndMethodEnumeration() mut => VT.EndMethodEnumeration(ref this);
			public HRESULT GetMethodQualifierSet(PWSTR wszMethod, out IWbemQualifierSet* ppQualSet) mut => VT.GetMethodQualifierSet(ref this, wszMethod, out ppQualSet);
			public HRESULT GetMethodOrigin(PWSTR wszMethodName, out BSTR pstrClassName) mut => VT.GetMethodOrigin(ref this, wszMethodName, out pstrClassName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, out IWbemQualifierSet* ppQualSet) GetQualifierSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName, int32 lFlags, out VARIANT pVal, out int32 pType, out int32 plFlavor) Get;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName, int32 lFlags, ref VARIANT pVal, int32 Type) Put;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszQualifierName, int32 lFlags, ref VARIANT pQualifierVal, out SAFEARRAY* pNames) GetNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lEnumFlags) BeginEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, out BSTR strName, out VARIANT pVal, out int32 pType, out int32 plFlavor) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self) EndEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszProperty, out IWbemQualifierSet* ppQualSet) GetPropertyQualifierSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, out IWbemClassObject* ppCopy) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, out BSTR pstrObjectText) GetObjectText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, out IWbemClassObject* ppNewClass) SpawnDerivedClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, out IWbemClassObject* ppNewInstance) SpawnInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, ref IWbemClassObject pCompareTo) CompareTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName, out BSTR pstrClassName) GetPropertyOrigin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR strAncestor) InheritsFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName, int32 lFlags, out IWbemClassObject* ppInSignature, out IWbemClassObject* ppOutSignature) GetMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName, int32 lFlags, ref IWbemClassObject pInSignature, ref IWbemClassObject pOutSignature) PutMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszName) DeleteMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lEnumFlags) BeginMethodEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, int32 lFlags, out BSTR pstrName, out IWbemClassObject* ppInSignature, out IWbemClassObject* ppOutSignature) NextMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self) EndMethodEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszMethod, out IWbemQualifierSet* ppQualSet) GetMethodQualifierSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClassObject self, PWSTR wszMethodName, out BSTR pstrClassName) GetMethodOrigin;
			}
		}
		[CRepr]
		public struct IWbemObjectAccess : IWbemClassObject
		{
			public const new Guid IID = .(0x49353c9a, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyHandle(PWSTR wszPropertyName, out int32 pType, out int32 plHandle) mut => VT.GetPropertyHandle(ref this, wszPropertyName, out pType, out plHandle);
			public HRESULT WritePropertyValue(int32 lHandle, int32 lNumBytes, uint8* aData) mut => VT.WritePropertyValue(ref this, lHandle, lNumBytes, aData);
			public HRESULT ReadPropertyValue(int32 lHandle, int32 lBufferSize, out int32 plNumBytes, uint8* aData) mut => VT.ReadPropertyValue(ref this, lHandle, lBufferSize, out plNumBytes, aData);
			public HRESULT ReadDWORD(int32 lHandle, out uint32 pdw) mut => VT.ReadDWORD(ref this, lHandle, out pdw);
			public HRESULT WriteDWORD(int32 lHandle, uint32 dw) mut => VT.WriteDWORD(ref this, lHandle, dw);
			public HRESULT ReadQWORD(int32 lHandle, out uint64 pqw) mut => VT.ReadQWORD(ref this, lHandle, out pqw);
			public HRESULT WriteQWORD(int32 lHandle, uint64 pw) mut => VT.WriteQWORD(ref this, lHandle, pw);
			public HRESULT GetPropertyInfoByHandle(int32 lHandle, out BSTR pstrName, out int32 pType) mut => VT.GetPropertyInfoByHandle(ref this, lHandle, out pstrName, out pType);
			public HRESULT Lock(int32 lFlags) mut => VT.Lock(ref this, lFlags);
			public HRESULT Unlock(int32 lFlags) mut => VT.Unlock(ref this, lFlags);

			[CRepr]
			public struct VTable : IWbemClassObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, PWSTR wszPropertyName, out int32 pType, out int32 plHandle) GetPropertyHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, int32 lNumBytes, uint8* aData) WritePropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, int32 lBufferSize, out int32 plNumBytes, uint8* aData) ReadPropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, out uint32 pdw) ReadDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, uint32 dw) WriteDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, out uint64 pqw) ReadQWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, uint64 pw) WriteQWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lHandle, out BSTR pstrName, out int32 pType) GetPropertyInfoByHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lFlags) Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectAccess self, int32 lFlags) Unlock;
			}
		}
		[CRepr]
		public struct IWbemQualifierSet : IUnknown
		{
			public const new Guid IID = .(0xdc12a680, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(PWSTR wszName, int32 lFlags, out VARIANT pVal, out int32 plFlavor) mut => VT.Get(ref this, wszName, lFlags, out pVal, out plFlavor);
			public HRESULT Put(PWSTR wszName, ref VARIANT pVal, int32 lFlavor) mut => VT.Put(ref this, wszName, ref pVal, lFlavor);
			public HRESULT Delete(PWSTR wszName) mut => VT.Delete(ref this, wszName);
			public HRESULT GetNames(int32 lFlags, out SAFEARRAY* pNames) mut => VT.GetNames(ref this, lFlags, out pNames);
			public HRESULT BeginEnumeration(int32 lFlags) mut => VT.BeginEnumeration(ref this, lFlags);
			public HRESULT Next(int32 lFlags, out BSTR pstrName, out VARIANT pVal, out int32 plFlavor) mut => VT.Next(ref this, lFlags, out pstrName, out pVal, out plFlavor);
			public HRESULT EndEnumeration() mut => VT.EndEnumeration(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, PWSTR wszName, int32 lFlags, out VARIANT pVal, out int32 plFlavor) Get;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, PWSTR wszName, ref VARIANT pVal, int32 lFlavor) Put;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, PWSTR wszName) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, int32 lFlags, out SAFEARRAY* pNames) GetNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, int32 lFlags) BeginEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self, int32 lFlags, out BSTR pstrName, out VARIANT pVal, out int32 plFlavor) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemQualifierSet self) EndEnumeration;
			}
		}
		[CRepr]
		public struct IWbemServices : IUnknown
		{
			public const new Guid IID = .(0x9556dc99, 0x828c, 0x11cf, 0xa3, 0x7e, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenNamespace(BSTR strNamespace, int32 lFlags, ref IWbemContext pCtx, IWbemServices** ppWorkingNamespace, IWbemCallResult** ppResult) mut => VT.OpenNamespace(ref this, strNamespace, lFlags, ref pCtx, ppWorkingNamespace, ppResult);
			public HRESULT CancelAsyncCall(ref IWbemObjectSink pSink) mut => VT.CancelAsyncCall(ref this, ref pSink);
			public HRESULT QueryObjectSink(int32 lFlags, out IWbemObjectSink* ppResponseHandler) mut => VT.QueryObjectSink(ref this, lFlags, out ppResponseHandler);
			public HRESULT GetObject(BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, IWbemClassObject** ppObject, IWbemCallResult** ppCallResult) mut => VT.GetObject(ref this, strObjectPath, lFlags, ref pCtx, ppObject, ppCallResult);
			public HRESULT GetObjectAsync(BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.GetObjectAsync(ref this, strObjectPath, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT PutClass(ref IWbemClassObject pObject, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) mut => VT.PutClass(ref this, ref pObject, lFlags, ref pCtx, ppCallResult);
			public HRESULT PutClassAsync(ref IWbemClassObject pObject, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.PutClassAsync(ref this, ref pObject, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT DeleteClass(BSTR strClass, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) mut => VT.DeleteClass(ref this, strClass, lFlags, ref pCtx, ppCallResult);
			public HRESULT DeleteClassAsync(BSTR strClass, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.DeleteClassAsync(ref this, strClass, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT CreateClassEnum(BSTR strSuperclass, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) mut => VT.CreateClassEnum(ref this, strSuperclass, lFlags, ref pCtx, out ppEnum);
			public HRESULT CreateClassEnumAsync(BSTR strSuperclass, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.CreateClassEnumAsync(ref this, strSuperclass, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT PutInstance(ref IWbemClassObject pInst, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) mut => VT.PutInstance(ref this, ref pInst, lFlags, ref pCtx, ppCallResult);
			public HRESULT PutInstanceAsync(ref IWbemClassObject pInst, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.PutInstanceAsync(ref this, ref pInst, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT DeleteInstance(BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) mut => VT.DeleteInstance(ref this, strObjectPath, lFlags, ref pCtx, ppCallResult);
			public HRESULT DeleteInstanceAsync(BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.DeleteInstanceAsync(ref this, strObjectPath, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT CreateInstanceEnum(BSTR strFilter, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) mut => VT.CreateInstanceEnum(ref this, strFilter, lFlags, ref pCtx, out ppEnum);
			public HRESULT CreateInstanceEnumAsync(BSTR strFilter, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.CreateInstanceEnumAsync(ref this, strFilter, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT ExecQuery(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) mut => VT.ExecQuery(ref this, strQueryLanguage, strQuery, lFlags, ref pCtx, out ppEnum);
			public HRESULT ExecQueryAsync(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.ExecQueryAsync(ref this, strQueryLanguage, strQuery, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT ExecNotificationQuery(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) mut => VT.ExecNotificationQuery(ref this, strQueryLanguage, strQuery, lFlags, ref pCtx, out ppEnum);
			public HRESULT ExecNotificationQueryAsync(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) mut => VT.ExecNotificationQueryAsync(ref this, strQueryLanguage, strQuery, lFlags, ref pCtx, ref pResponseHandler);
			public HRESULT ExecMethod(BSTR strObjectPath, BSTR strMethodName, int32 lFlags, ref IWbemContext pCtx, ref IWbemClassObject pInParams, IWbemClassObject** ppOutParams, IWbemCallResult** ppCallResult) mut => VT.ExecMethod(ref this, strObjectPath, strMethodName, lFlags, ref pCtx, ref pInParams, ppOutParams, ppCallResult);
			public HRESULT ExecMethodAsync(BSTR strObjectPath, BSTR strMethodName, int32 lFlags, ref IWbemContext pCtx, ref IWbemClassObject pInParams, ref IWbemObjectSink pResponseHandler) mut => VT.ExecMethodAsync(ref this, strObjectPath, strMethodName, lFlags, ref pCtx, ref pInParams, ref pResponseHandler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strNamespace, int32 lFlags, ref IWbemContext pCtx, IWbemServices** ppWorkingNamespace, IWbemCallResult** ppResult) OpenNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, ref IWbemObjectSink pSink) CancelAsyncCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, int32 lFlags, out IWbemObjectSink* ppResponseHandler) QueryObjectSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, IWbemClassObject** ppObject, IWbemCallResult** ppCallResult) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) GetObjectAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, ref IWbemClassObject pObject, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) PutClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, ref IWbemClassObject pObject, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) PutClassAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strClass, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) DeleteClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strClass, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) DeleteClassAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strSuperclass, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) CreateClassEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strSuperclass, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) CreateClassEnumAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, ref IWbemClassObject pInst, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) PutInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, ref IWbemClassObject pInst, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) PutInstanceAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, IWbemCallResult** ppCallResult) DeleteInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) DeleteInstanceAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strFilter, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) CreateInstanceEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strFilter, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) CreateInstanceEnumAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) ExecQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) ExecQueryAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, out IEnumWbemClassObject* ppEnum) ExecNotificationQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, ref IWbemContext pCtx, ref IWbemObjectSink pResponseHandler) ExecNotificationQueryAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, BSTR strMethodName, int32 lFlags, ref IWbemContext pCtx, ref IWbemClassObject pInParams, IWbemClassObject** ppOutParams, IWbemCallResult** ppCallResult) ExecMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemServices self, BSTR strObjectPath, BSTR strMethodName, int32 lFlags, ref IWbemContext pCtx, ref IWbemClassObject pInParams, ref IWbemObjectSink pResponseHandler) ExecMethodAsync;
			}
		}
		[CRepr]
		public struct IWbemLocator : IUnknown
		{
			public const new Guid IID = .(0xdc12a687, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, ref IWbemContext pCtx, out IWbemServices* ppNamespace) mut => VT.ConnectServer(ref this, strNetworkResource, strUser, strPassword, strLocale, lSecurityFlags, strAuthority, ref pCtx, out ppNamespace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemLocator self, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, ref IWbemContext pCtx, out IWbemServices* ppNamespace) ConnectServer;
			}
		}
		[CRepr]
		public struct IWbemObjectSink : IUnknown
		{
			public const new Guid IID = .(0x7c857801, 0x7381, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Indicate(int32 lObjectCount, IWbemClassObject** apObjArray) mut => VT.Indicate(ref this, lObjectCount, apObjArray);
			public HRESULT SetStatus(int32 lFlags, HRESULT hResult, BSTR strParam, ref IWbemClassObject pObjParam) mut => VT.SetStatus(ref this, lFlags, hResult, strParam, ref pObjParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSink self, int32 lObjectCount, IWbemClassObject** apObjArray) Indicate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSink self, int32 lFlags, HRESULT hResult, BSTR strParam, ref IWbemClassObject pObjParam) SetStatus;
			}
		}
		[CRepr]
		public struct IEnumWbemClassObject : IUnknown
		{
			public const new Guid IID = .(0x027947e1, 0xd731, 0x11ce, 0xa3, 0x57, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next(int32 lTimeout, uint32 uCount, IWbemClassObject** apObjects, out uint32 puReturned) mut => VT.Next(ref this, lTimeout, uCount, apObjects, out puReturned);
			public HRESULT NextAsync(uint32 uCount, ref IWbemObjectSink pSink) mut => VT.NextAsync(ref this, uCount, ref pSink);
			public HRESULT Clone(out IEnumWbemClassObject* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Skip(int32 lTimeout, uint32 nCount) mut => VT.Skip(ref this, lTimeout, nCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWbemClassObject self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWbemClassObject self, int32 lTimeout, uint32 uCount, IWbemClassObject** apObjects, out uint32 puReturned) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWbemClassObject self, uint32 uCount, ref IWbemObjectSink pSink) NextAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWbemClassObject self, out IEnumWbemClassObject* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWbemClassObject self, int32 lTimeout, uint32 nCount) Skip;
			}
		}
		[CRepr]
		public struct IWbemCallResult : IUnknown
		{
			public const new Guid IID = .(0x44aca675, 0xe8fc, 0x11d0, 0xa0, 0x7c, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResultObject(int32 lTimeout, out IWbemClassObject* ppResultObject) mut => VT.GetResultObject(ref this, lTimeout, out ppResultObject);
			public HRESULT GetResultString(int32 lTimeout, out BSTR pstrResultString) mut => VT.GetResultString(ref this, lTimeout, out pstrResultString);
			public HRESULT GetResultServices(int32 lTimeout, out IWbemServices* ppServices) mut => VT.GetResultServices(ref this, lTimeout, out ppServices);
			public HRESULT GetCallStatus(int32 lTimeout, out int32 plStatus) mut => VT.GetCallStatus(ref this, lTimeout, out plStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemCallResult self, int32 lTimeout, out IWbemClassObject* ppResultObject) GetResultObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemCallResult self, int32 lTimeout, out BSTR pstrResultString) GetResultString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemCallResult self, int32 lTimeout, out IWbemServices* ppServices) GetResultServices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemCallResult self, int32 lTimeout, out int32 plStatus) GetCallStatus;
			}
		}
		[CRepr]
		public struct IWbemContext : IUnknown
		{
			public const new Guid IID = .(0x44aca674, 0xe8fc, 0x11d0, 0xa0, 0x7c, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IWbemContext* ppNewCopy) mut => VT.Clone(ref this, out ppNewCopy);
			public HRESULT GetNames(int32 lFlags, out SAFEARRAY* pNames) mut => VT.GetNames(ref this, lFlags, out pNames);
			public HRESULT BeginEnumeration(int32 lFlags) mut => VT.BeginEnumeration(ref this, lFlags);
			public HRESULT Next(int32 lFlags, out BSTR pstrName, out VARIANT pValue) mut => VT.Next(ref this, lFlags, out pstrName, out pValue);
			public HRESULT EndEnumeration() mut => VT.EndEnumeration(ref this);
			public HRESULT SetValue(PWSTR wszName, int32 lFlags, ref VARIANT pValue) mut => VT.SetValue(ref this, wszName, lFlags, ref pValue);
			public HRESULT GetValue(PWSTR wszName, int32 lFlags, out VARIANT pValue) mut => VT.GetValue(ref this, wszName, lFlags, out pValue);
			public HRESULT DeleteValue(PWSTR wszName, int32 lFlags) mut => VT.DeleteValue(ref this, wszName, lFlags);
			public HRESULT DeleteAll() mut => VT.DeleteAll(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, out IWbemContext* ppNewCopy) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, int32 lFlags, out SAFEARRAY* pNames) GetNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, int32 lFlags) BeginEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, int32 lFlags, out BSTR pstrName, out VARIANT pValue) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self) EndEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, PWSTR wszName, int32 lFlags, ref VARIANT pValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, PWSTR wszName, int32 lFlags, out VARIANT pValue) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self, PWSTR wszName, int32 lFlags) DeleteValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemContext self) DeleteAll;
			}
		}
		[CRepr]
		public struct IUnsecuredApartment : IUnknown
		{
			public const new Guid IID = .(0x1cfaba8c, 0x1523, 0x11d1, 0xad, 0x79, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObjectStub(ref IUnknown pObject, out IUnknown* ppStub) mut => VT.CreateObjectStub(ref this, ref pObject, out ppStub);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUnsecuredApartment self, ref IUnknown pObject, out IUnknown* ppStub) CreateObjectStub;
			}
		}
		[CRepr]
		public struct IWbemUnsecuredApartment : IUnsecuredApartment
		{
			public const new Guid IID = .(0x31739d04, 0x3471, 0x4cf4, 0x9a, 0x7c, 0x57, 0xa4, 0x4a, 0xe7, 0x19, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSinkStub(ref IWbemObjectSink pSink, uint32 dwFlags, PWSTR wszReserved, out IWbemObjectSink* ppStub) mut => VT.CreateSinkStub(ref this, ref pSink, dwFlags, wszReserved, out ppStub);

			[CRepr]
			public struct VTable : IUnsecuredApartment.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemUnsecuredApartment self, ref IWbemObjectSink pSink, uint32 dwFlags, PWSTR wszReserved, out IWbemObjectSink* ppStub) CreateSinkStub;
			}
		}
		[CRepr]
		public struct IWbemStatusCodeText : IUnknown
		{
			public const new Guid IID = .(0xeb87e1bc, 0x3233, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetErrorCodeText(HRESULT hRes, uint32 LocaleId, int32 lFlags, out BSTR MessageText) mut => VT.GetErrorCodeText(ref this, hRes, LocaleId, lFlags, out MessageText);
			public HRESULT GetFacilityCodeText(HRESULT hRes, uint32 LocaleId, int32 lFlags, out BSTR MessageText) mut => VT.GetFacilityCodeText(ref this, hRes, LocaleId, lFlags, out MessageText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemStatusCodeText self, HRESULT hRes, uint32 LocaleId, int32 lFlags, out BSTR MessageText) GetErrorCodeText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemStatusCodeText self, HRESULT hRes, uint32 LocaleId, int32 lFlags, out BSTR MessageText) GetFacilityCodeText;
			}
		}
		[CRepr]
		public struct IWbemBackupRestore : IUnknown
		{
			public const new Guid IID = .(0xc49e32c7, 0xbc8b, 0x11d2, 0x85, 0xd4, 0x00, 0x10, 0x5a, 0x1f, 0x83, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Backup(PWSTR strBackupToFile, int32 lFlags) mut => VT.Backup(ref this, strBackupToFile, lFlags);
			public HRESULT Restore(PWSTR strRestoreFromFile, int32 lFlags) mut => VT.Restore(ref this, strRestoreFromFile, lFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemBackupRestore self, PWSTR strBackupToFile, int32 lFlags) Backup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemBackupRestore self, PWSTR strRestoreFromFile, int32 lFlags) Restore;
			}
		}
		[CRepr]
		public struct IWbemBackupRestoreEx : IWbemBackupRestore
		{
			public const new Guid IID = .(0xa359dec5, 0xe813, 0x4834, 0x8a, 0x2a, 0xba, 0x7f, 0x1d, 0x77, 0x7d, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);

			[CRepr]
			public struct VTable : IWbemBackupRestore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemBackupRestoreEx self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemBackupRestoreEx self) Resume;
			}
		}
		[CRepr]
		public struct IWbemRefresher : IUnknown
		{
			public const new Guid IID = .(0x49353c99, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Refresh(int32 lFlags) mut => VT.Refresh(ref this, lFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemRefresher self, int32 lFlags) Refresh;
			}
		}
		[CRepr]
		public struct IWbemHiPerfEnum : IUnknown
		{
			public const new Guid IID = .(0x2705c288, 0x79ae, 0x11d2, 0xb3, 0x48, 0x00, 0x10, 0x5a, 0x1f, 0x81, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddObjects(int32 lFlags, uint32 uNumObjects, int32* apIds, IWbemObjectAccess** apObj) mut => VT.AddObjects(ref this, lFlags, uNumObjects, apIds, apObj);
			public HRESULT RemoveObjects(int32 lFlags, uint32 uNumObjects, int32* apIds) mut => VT.RemoveObjects(ref this, lFlags, uNumObjects, apIds);
			public HRESULT GetObjects(int32 lFlags, uint32 uNumObjects, IWbemObjectAccess** apObj, out uint32 puReturned) mut => VT.GetObjects(ref this, lFlags, uNumObjects, apObj, out puReturned);
			public HRESULT RemoveAll(int32 lFlags) mut => VT.RemoveAll(ref this, lFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfEnum self, int32 lFlags, uint32 uNumObjects, int32* apIds, IWbemObjectAccess** apObj) AddObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfEnum self, int32 lFlags, uint32 uNumObjects, int32* apIds) RemoveObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfEnum self, int32 lFlags, uint32 uNumObjects, IWbemObjectAccess** apObj, out uint32 puReturned) GetObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfEnum self, int32 lFlags) RemoveAll;
			}
		}
		[CRepr]
		public struct IWbemConfigureRefresher : IUnknown
		{
			public const new Guid IID = .(0x49353c92, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddObjectByPath(ref IWbemServices pNamespace, PWSTR wszPath, int32 lFlags, ref IWbemContext pContext, out IWbemClassObject* ppRefreshable, out int32 plId) mut => VT.AddObjectByPath(ref this, ref pNamespace, wszPath, lFlags, ref pContext, out ppRefreshable, out plId);
			public HRESULT AddObjectByTemplate(ref IWbemServices pNamespace, ref IWbemClassObject pTemplate, int32 lFlags, ref IWbemContext pContext, out IWbemClassObject* ppRefreshable, out int32 plId) mut => VT.AddObjectByTemplate(ref this, ref pNamespace, ref pTemplate, lFlags, ref pContext, out ppRefreshable, out plId);
			public HRESULT AddRefresher(ref IWbemRefresher pRefresher, int32 lFlags, out int32 plId) mut => VT.AddRefresher(ref this, ref pRefresher, lFlags, out plId);
			public HRESULT Remove(int32 lId, int32 lFlags) mut => VT.Remove(ref this, lId, lFlags);
			public HRESULT AddEnum(ref IWbemServices pNamespace, PWSTR wszClassName, int32 lFlags, ref IWbemContext pContext, out IWbemHiPerfEnum* ppEnum, out int32 plId) mut => VT.AddEnum(ref this, ref pNamespace, wszClassName, lFlags, ref pContext, out ppEnum, out plId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConfigureRefresher self, ref IWbemServices pNamespace, PWSTR wszPath, int32 lFlags, ref IWbemContext pContext, out IWbemClassObject* ppRefreshable, out int32 plId) AddObjectByPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConfigureRefresher self, ref IWbemServices pNamespace, ref IWbemClassObject pTemplate, int32 lFlags, ref IWbemContext pContext, out IWbemClassObject* ppRefreshable, out int32 plId) AddObjectByTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConfigureRefresher self, ref IWbemRefresher pRefresher, int32 lFlags, out int32 plId) AddRefresher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConfigureRefresher self, int32 lId, int32 lFlags) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConfigureRefresher self, ref IWbemServices pNamespace, PWSTR wszClassName, int32 lFlags, ref IWbemContext pContext, out IWbemHiPerfEnum* ppEnum, out int32 plId) AddEnum;
			}
		}
		[CRepr]
		public struct IWbemObjectSinkEx : IWbemObjectSink
		{
			public const new Guid IID = .(0xe7d35cfa, 0x348b, 0x485e, 0xb5, 0x24, 0x25, 0x27, 0x25, 0xd6, 0x97, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteMessage(uint32 uChannel, BSTR strMessage) mut => VT.WriteMessage(ref this, uChannel, strMessage);
			public HRESULT WriteError(ref IWbemClassObject pObjError, out uint8 puReturned) mut => VT.WriteError(ref this, ref pObjError, out puReturned);
			public HRESULT PromptUser(BSTR strMessage, uint8 uPromptType, out uint8 puReturned) mut => VT.PromptUser(ref this, strMessage, uPromptType, out puReturned);
			public HRESULT WriteProgress(BSTR strActivity, BSTR strCurrentOperation, BSTR strStatusDescription, uint32 uPercentComplete, uint32 uSecondsRemaining) mut => VT.WriteProgress(ref this, strActivity, strCurrentOperation, strStatusDescription, uPercentComplete, uSecondsRemaining);
			public HRESULT WriteStreamParameter(BSTR strName, ref VARIANT vtValue, uint32 ulType, uint32 ulFlags) mut => VT.WriteStreamParameter(ref this, strName, ref vtValue, ulType, ulFlags);

			[CRepr]
			public struct VTable : IWbemObjectSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSinkEx self, uint32 uChannel, BSTR strMessage) WriteMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSinkEx self, ref IWbemClassObject pObjError, out uint8 puReturned) WriteError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSinkEx self, BSTR strMessage, uint8 uPromptType, out uint8 puReturned) PromptUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSinkEx self, BSTR strActivity, BSTR strCurrentOperation, BSTR strStatusDescription, uint32 uPercentComplete, uint32 uSecondsRemaining) WriteProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectSinkEx self, BSTR strName, ref VARIANT vtValue, uint32 ulType, uint32 ulFlags) WriteStreamParameter;
			}
		}
		[CRepr]
		public struct IWbemShutdown : IUnknown
		{
			public const new Guid IID = .(0xb7b31df9, 0xd515, 0x11d3, 0xa1, 0x1c, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Shutdown(int32 uReason, uint32 uMaxMilliseconds, ref IWbemContext pCtx) mut => VT.Shutdown(ref this, uReason, uMaxMilliseconds, ref pCtx);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemShutdown self, int32 uReason, uint32 uMaxMilliseconds, ref IWbemContext pCtx) Shutdown;
			}
		}
		[CRepr]
		public struct IWbemObjectTextSrc : IUnknown
		{
			public const new Guid IID = .(0xbfbf883a, 0xcad7, 0x11d3, 0xa1, 0x1b, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(int32 lFlags, ref IWbemClassObject pObj, uint32 uObjTextFormat, ref IWbemContext pCtx, out BSTR strText) mut => VT.GetText(ref this, lFlags, ref pObj, uObjTextFormat, ref pCtx, out strText);
			public HRESULT CreateFromText(int32 lFlags, BSTR strText, uint32 uObjTextFormat, ref IWbemContext pCtx, out IWbemClassObject* pNewObj) mut => VT.CreateFromText(ref this, lFlags, strText, uObjTextFormat, ref pCtx, out pNewObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectTextSrc self, int32 lFlags, ref IWbemClassObject pObj, uint32 uObjTextFormat, ref IWbemContext pCtx, out BSTR strText) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemObjectTextSrc self, int32 lFlags, BSTR strText, uint32 uObjTextFormat, ref IWbemContext pCtx, out IWbemClassObject* pNewObj) CreateFromText;
			}
		}
		[CRepr]
		public struct IMofCompiler : IUnknown
		{
			public const new Guid IID = .(0x6daf974e, 0x2e37, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompileFile(PWSTR FileName, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) mut => VT.CompileFile(ref this, FileName, ServerAndNamespace, User, Authority, Password, lOptionFlags, lClassFlags, lInstanceFlags, out pInfo);
			public HRESULT CompileBuffer(int32 BuffSize, ref uint8 pBuffer, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) mut => VT.CompileBuffer(ref this, BuffSize, ref pBuffer, ServerAndNamespace, User, Authority, Password, lOptionFlags, lClassFlags, lInstanceFlags, out pInfo);
			public HRESULT CreateBMOF(PWSTR TextFileName, PWSTR BMOFFileName, PWSTR ServerAndNamespace, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) mut => VT.CreateBMOF(ref this, TextFileName, BMOFFileName, ServerAndNamespace, lOptionFlags, lClassFlags, lInstanceFlags, out pInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMofCompiler self, PWSTR FileName, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) CompileFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMofCompiler self, int32 BuffSize, ref uint8 pBuffer, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) CompileBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMofCompiler self, PWSTR TextFileName, PWSTR BMOFFileName, PWSTR ServerAndNamespace, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, out WBEM_COMPILE_STATUS_INFO pInfo) CreateBMOF;
			}
		}
		[CRepr]
		public struct IWbemPropertyProvider : IUnknown
		{
			public const new Guid IID = .(0xce61e841, 0x65bc, 0x11d0, 0xb6, 0xbd, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, out VARIANT pvValue) mut => VT.GetProperty(ref this, lFlags, strLocale, strClassMapping, strInstMapping, strPropMapping, out pvValue);
			public HRESULT PutProperty(int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, in VARIANT pvValue) mut => VT.PutProperty(ref this, lFlags, strLocale, strClassMapping, strInstMapping, strPropMapping, pvValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPropertyProvider self, int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, out VARIANT pvValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemPropertyProvider self, int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, in VARIANT pvValue) PutProperty;
			}
		}
		[CRepr]
		public struct IWbemUnboundObjectSink : IUnknown
		{
			public const new Guid IID = .(0xe246107b, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IndicateToConsumer(ref IWbemClassObject pLogicalConsumer, int32 lNumObjects, IWbemClassObject** apObjects) mut => VT.IndicateToConsumer(ref this, ref pLogicalConsumer, lNumObjects, apObjects);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemUnboundObjectSink self, ref IWbemClassObject pLogicalConsumer, int32 lNumObjects, IWbemClassObject** apObjects) IndicateToConsumer;
			}
		}
		[CRepr]
		public struct IWbemEventProvider : IUnknown
		{
			public const new Guid IID = .(0xe245105b, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProvideEvents(ref IWbemObjectSink pSink, int32 lFlags) mut => VT.ProvideEvents(ref this, ref pSink, lFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventProvider self, ref IWbemObjectSink pSink, int32 lFlags) ProvideEvents;
			}
		}
		[CRepr]
		public struct IWbemEventProviderQuerySink : IUnknown
		{
			public const new Guid IID = .(0x580acaf8, 0xfa1c, 0x11d0, 0xad, 0x72, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewQuery(uint32 dwId, ref uint16 wszQueryLanguage, ref uint16 wszQuery) mut => VT.NewQuery(ref this, dwId, ref wszQueryLanguage, ref wszQuery);
			public HRESULT CancelQuery(uint32 dwId) mut => VT.CancelQuery(ref this, dwId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventProviderQuerySink self, uint32 dwId, ref uint16 wszQueryLanguage, ref uint16 wszQuery) NewQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventProviderQuerySink self, uint32 dwId) CancelQuery;
			}
		}
		[CRepr]
		public struct IWbemEventProviderSecurity : IUnknown
		{
			public const new Guid IID = .(0x631f7d96, 0xd993, 0x11d2, 0xb3, 0x39, 0x00, 0x10, 0x5a, 0x1f, 0x4a, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AccessCheck(ref uint16 wszQueryLanguage, ref uint16 wszQuery, int32 lSidLength, uint8* pSid) mut => VT.AccessCheck(ref this, ref wszQueryLanguage, ref wszQuery, lSidLength, pSid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventProviderSecurity self, ref uint16 wszQueryLanguage, ref uint16 wszQuery, int32 lSidLength, uint8* pSid) AccessCheck;
			}
		}
		[CRepr]
		public struct IWbemEventConsumerProvider : IUnknown
		{
			public const new Guid IID = .(0xe246107a, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindConsumer(ref IWbemClassObject pLogicalConsumer, out IWbemUnboundObjectSink* ppConsumer) mut => VT.FindConsumer(ref this, ref pLogicalConsumer, out ppConsumer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventConsumerProvider self, ref IWbemClassObject pLogicalConsumer, out IWbemUnboundObjectSink* ppConsumer) FindConsumer;
			}
		}
		[CRepr]
		public struct IWbemProviderInitSink : IUnknown
		{
			public const new Guid IID = .(0x1be41571, 0x91dd, 0x11d1, 0xae, 0xb2, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStatus(int32 lStatus, int32 lFlags) mut => VT.SetStatus(ref this, lStatus, lFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemProviderInitSink self, int32 lStatus, int32 lFlags) SetStatus;
			}
		}
		[CRepr]
		public struct IWbemProviderInit : IUnknown
		{
			public const new Guid IID = .(0x1be41572, 0x91dd, 0x11d1, 0xae, 0xb2, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR wszUser, int32 lFlags, PWSTR wszNamespace, PWSTR wszLocale, ref IWbemServices pNamespace, ref IWbemContext pCtx, ref IWbemProviderInitSink pInitSink) mut => VT.Initialize(ref this, wszUser, lFlags, wszNamespace, wszLocale, ref pNamespace, ref pCtx, ref pInitSink);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemProviderInit self, PWSTR wszUser, int32 lFlags, PWSTR wszNamespace, PWSTR wszLocale, ref IWbemServices pNamespace, ref IWbemContext pCtx, ref IWbemProviderInitSink pInitSink) Initialize;
			}
		}
		[CRepr]
		public struct IWbemHiPerfProvider : IUnknown
		{
			public const new Guid IID = .(0x49353c93, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInstances(ref IWbemServices pNamespace, PWSTR wszClass, int32 lFlags, ref IWbemContext pCtx, out IWbemObjectSink pSink) mut => VT.QueryInstances(ref this, ref pNamespace, wszClass, lFlags, ref pCtx, out pSink);
			public HRESULT CreateRefresher(ref IWbemServices pNamespace, int32 lFlags, out IWbemRefresher* ppRefresher) mut => VT.CreateRefresher(ref this, ref pNamespace, lFlags, out ppRefresher);
			public HRESULT CreateRefreshableObject(ref IWbemServices pNamespace, ref IWbemObjectAccess pTemplate, ref IWbemRefresher pRefresher, int32 lFlags, ref IWbemContext pContext, out IWbemObjectAccess* ppRefreshable, out int32 plId) mut => VT.CreateRefreshableObject(ref this, ref pNamespace, ref pTemplate, ref pRefresher, lFlags, ref pContext, out ppRefreshable, out plId);
			public HRESULT StopRefreshing(ref IWbemRefresher pRefresher, int32 lId, int32 lFlags) mut => VT.StopRefreshing(ref this, ref pRefresher, lId, lFlags);
			public HRESULT CreateRefreshableEnum(ref IWbemServices pNamespace, PWSTR wszClass, ref IWbemRefresher pRefresher, int32 lFlags, ref IWbemContext pContext, ref IWbemHiPerfEnum pHiPerfEnum, out int32 plId) mut => VT.CreateRefreshableEnum(ref this, ref pNamespace, wszClass, ref pRefresher, lFlags, ref pContext, ref pHiPerfEnum, out plId);
			public HRESULT GetObjects(ref IWbemServices pNamespace, int32 lNumObjects, IWbemObjectAccess** apObj, int32 lFlags, ref IWbemContext pContext) mut => VT.GetObjects(ref this, ref pNamespace, lNumObjects, apObj, lFlags, ref pContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemServices pNamespace, PWSTR wszClass, int32 lFlags, ref IWbemContext pCtx, out IWbemObjectSink pSink) QueryInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemServices pNamespace, int32 lFlags, out IWbemRefresher* ppRefresher) CreateRefresher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemServices pNamespace, ref IWbemObjectAccess pTemplate, ref IWbemRefresher pRefresher, int32 lFlags, ref IWbemContext pContext, out IWbemObjectAccess* ppRefreshable, out int32 plId) CreateRefreshableObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemRefresher pRefresher, int32 lId, int32 lFlags) StopRefreshing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemServices pNamespace, PWSTR wszClass, ref IWbemRefresher pRefresher, int32 lFlags, ref IWbemContext pContext, ref IWbemHiPerfEnum pHiPerfEnum, out int32 plId) CreateRefreshableEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemHiPerfProvider self, ref IWbemServices pNamespace, int32 lNumObjects, IWbemObjectAccess** apObj, int32 lFlags, ref IWbemContext pContext) GetObjects;
			}
		}
		[CRepr]
		public struct IWbemDecoupledRegistrar : IUnknown
		{
			public const new Guid IID = .(0x1005cbcf, 0xe64f, 0x4646, 0xbc, 0xd3, 0x3a, 0x08, 0x9d, 0x8a, 0x84, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(int32 a_Flags, ref IWbemContext a_Context, PWSTR a_User, PWSTR a_Locale, PWSTR a_Scope, PWSTR a_Registration, ref IUnknown pIUnknown) mut => VT.Register(ref this, a_Flags, ref a_Context, a_User, a_Locale, a_Scope, a_Registration, ref pIUnknown);
			public HRESULT UnRegister() mut => VT.UnRegister(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemDecoupledRegistrar self, int32 a_Flags, ref IWbemContext a_Context, PWSTR a_User, PWSTR a_Locale, PWSTR a_Scope, PWSTR a_Registration, ref IUnknown pIUnknown) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemDecoupledRegistrar self) UnRegister;
			}
		}
		[CRepr]
		public struct IWbemProviderIdentity : IUnknown
		{
			public const new Guid IID = .(0x631f7d97, 0xd993, 0x11d2, 0xb3, 0x39, 0x00, 0x10, 0x5a, 0x1f, 0x4a, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRegistrationObject(int32 lFlags, ref IWbemClassObject pProvReg) mut => VT.SetRegistrationObject(ref this, lFlags, ref pProvReg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemProviderIdentity self, int32 lFlags, ref IWbemClassObject pProvReg) SetRegistrationObject;
			}
		}
		[CRepr]
		public struct IWbemDecoupledBasicEventProvider : IWbemDecoupledRegistrar
		{
			public const new Guid IID = .(0x86336d20, 0xca11, 0x4786, 0x9e, 0xf1, 0xbc, 0x8a, 0x94, 0x6b, 0x42, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSink(int32 a_Flags, ref IWbemContext a_Context, out IWbemObjectSink* a_Sink) mut => VT.GetSink(ref this, a_Flags, ref a_Context, out a_Sink);
			public HRESULT GetService(int32 a_Flags, ref IWbemContext a_Context, out IWbemServices* a_Service) mut => VT.GetService(ref this, a_Flags, ref a_Context, out a_Service);

			[CRepr]
			public struct VTable : IWbemDecoupledRegistrar.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemDecoupledBasicEventProvider self, int32 a_Flags, ref IWbemContext a_Context, out IWbemObjectSink* a_Sink) GetSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemDecoupledBasicEventProvider self, int32 a_Flags, ref IWbemContext a_Context, out IWbemServices* a_Service) GetService;
			}
		}
		[CRepr]
		public struct IWbemEventSink : IWbemObjectSink
		{
			public const new Guid IID = .(0x3ae0080a, 0x7e3a, 0x4366, 0xbf, 0x89, 0x0f, 0xee, 0xdc, 0x93, 0x16, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSinkSecurity(int32 lSDLength, uint8* pSD) mut => VT.SetSinkSecurity(ref this, lSDLength, pSD);
			public HRESULT IsActive() mut => VT.IsActive(ref this);
			public HRESULT GetRestrictedSink(int32 lNumQueries, PWSTR* awszQueries, ref IUnknown pCallback, out IWbemEventSink* ppSink) mut => VT.GetRestrictedSink(ref this, lNumQueries, awszQueries, ref pCallback, out ppSink);
			public HRESULT SetBatchingParameters(int32 lFlags, uint32 dwMaxBufferSize, uint32 dwMaxSendLatency) mut => VT.SetBatchingParameters(ref this, lFlags, dwMaxBufferSize, dwMaxSendLatency);

			[CRepr]
			public struct VTable : IWbemObjectSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventSink self, int32 lSDLength, uint8* pSD) SetSinkSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventSink self) IsActive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventSink self, int32 lNumQueries, PWSTR* awszQueries, ref IUnknown pCallback, out IWbemEventSink* ppSink) GetRestrictedSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemEventSink self, int32 lFlags, uint32 dwMaxBufferSize, uint32 dwMaxSendLatency) SetBatchingParameters;
			}
		}
		[CRepr]
		public struct ISWbemServices : IDispatch
		{
			public const new Guid IID = .(0x76a6415c, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemObject) mut => VT.Get(ref this, strObjectPath, iFlags, ref objWbemNamedValueSet, out objWbemObject);
			public HRESULT GetAsync(ref IDispatch objWbemSink, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.GetAsync(ref this, ref objWbemSink, strObjectPath, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Delete(BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet) mut => VT.Delete(ref this, strObjectPath, iFlags, ref objWbemNamedValueSet);
			public HRESULT DeleteAsync(ref IDispatch objWbemSink, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.DeleteAsync(ref this, ref objWbemSink, strObjectPath, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT InstancesOf(BSTR strClass, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.InstancesOf(ref this, strClass, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT InstancesOfAsync(ref IDispatch objWbemSink, BSTR strClass, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.InstancesOfAsync(ref this, ref objWbemSink, strClass, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT SubclassesOf(BSTR strSuperclass, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.SubclassesOf(ref this, strSuperclass, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT SubclassesOfAsync(ref IDispatch objWbemSink, BSTR strSuperclass, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.SubclassesOfAsync(ref this, ref objWbemSink, strSuperclass, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT ExecQuery(BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.ExecQuery(ref this, strQuery, strQueryLanguage, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT ExecQueryAsync(ref IDispatch objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 lFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ExecQueryAsync(ref this, ref objWbemSink, strQuery, strQueryLanguage, lFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT AssociatorsOf(BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.AssociatorsOf(ref this, strObjectPath, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT AssociatorsOfAsync(ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.AssociatorsOfAsync(ref this, ref objWbemSink, strObjectPath, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT ReferencesTo(BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.ReferencesTo(ref this, strObjectPath, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT ReferencesToAsync(ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ReferencesToAsync(ref this, ref objWbemSink, strObjectPath, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT ExecNotificationQuery(BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemEventSource* objWbemEventSource) mut => VT.ExecNotificationQuery(ref this, strQuery, strQueryLanguage, iFlags, ref objWbemNamedValueSet, out objWbemEventSource);
			public HRESULT ExecNotificationQueryAsync(ref IDispatch objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ExecNotificationQueryAsync(ref this, ref objWbemSink, strQuery, strQueryLanguage, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT ExecMethod(BSTR strObjectPath, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemOutParameters) mut => VT.ExecMethod(ref this, strObjectPath, strMethodName, ref objWbemInParameters, iFlags, ref objWbemNamedValueSet, out objWbemOutParameters);
			public HRESULT ExecMethodAsync(ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ExecMethodAsync(ref this, ref objWbemSink, strObjectPath, strMethodName, ref objWbemInParameters, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemObject) Get;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) GetAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strObjectPath, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) DeleteAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strClass, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) InstancesOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strClass, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) InstancesOfAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strSuperclass, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) SubclassesOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strSuperclass, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) SubclassesOfAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) ExecQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 lFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ExecQueryAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) AssociatorsOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) AssociatorsOfAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) ReferencesTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ReferencesToAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemEventSource* objWbemEventSource) ExecNotificationQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ExecNotificationQueryAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, BSTR strObjectPath, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemOutParameters) ExecMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, ref IDispatch objWbemSink, BSTR strObjectPath, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ExecMethodAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServices self, out ISWbemSecurity* objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemLocator : IDispatch
		{
			public const new Guid IID = .(0x76a6415b, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strServer, BSTR strNamespace, BSTR strUser, BSTR strPassword, BSTR strLocale, BSTR strAuthority, int32 iSecurityFlags, ref IDispatch objWbemNamedValueSet, out ISWbemServices* objWbemServices) mut => VT.ConnectServer(ref this, strServer, strNamespace, strUser, strPassword, strLocale, strAuthority, iSecurityFlags, ref objWbemNamedValueSet, out objWbemServices);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemLocator self, BSTR strServer, BSTR strNamespace, BSTR strUser, BSTR strPassword, BSTR strLocale, BSTR strAuthority, int32 iSecurityFlags, ref IDispatch objWbemNamedValueSet, out ISWbemServices* objWbemServices) ConnectServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemLocator self, out ISWbemSecurity* objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObject : IDispatch
		{
			public const new Guid IID = .(0x76a6415a, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Put_(int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectPath* objWbemObjectPath) mut => VT.Put_(ref this, iFlags, ref objWbemNamedValueSet, out objWbemObjectPath);
			public HRESULT PutAsync_(ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.PutAsync_(ref this, ref objWbemSink, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Delete_(int32 iFlags, ref IDispatch objWbemNamedValueSet) mut => VT.Delete_(ref this, iFlags, ref objWbemNamedValueSet);
			public HRESULT DeleteAsync_(ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.DeleteAsync_(ref this, ref objWbemSink, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Instances_(int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.Instances_(ref this, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT InstancesAsync_(ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.InstancesAsync_(ref this, ref objWbemSink, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Subclasses_(int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.Subclasses_(ref this, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT SubclassesAsync_(ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.SubclassesAsync_(ref this, ref objWbemSink, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Associators_(BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.Associators_(ref this, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT AssociatorsAsync_(ref IDispatch objWbemSink, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.AssociatorsAsync_(ref this, ref objWbemSink, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT References_(BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) mut => VT.References_(ref this, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, out objWbemObjectSet);
			public HRESULT ReferencesAsync_(ref IDispatch objWbemSink, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ReferencesAsync_(ref this, ref objWbemSink, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT ExecMethod_(BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemOutParameters) mut => VT.ExecMethod_(ref this, strMethodName, ref objWbemInParameters, iFlags, ref objWbemNamedValueSet, out objWbemOutParameters);
			public HRESULT ExecMethodAsync_(ref IDispatch objWbemSink, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.ExecMethodAsync_(ref this, ref objWbemSink, strMethodName, ref objWbemInParameters, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);
			public HRESULT Clone_(out ISWbemObject* objWbemObject) mut => VT.Clone_(ref this, out objWbemObject);
			public HRESULT GetObjectText_(int32 iFlags, out BSTR strObjectText) mut => VT.GetObjectText_(ref this, iFlags, out strObjectText);
			public HRESULT SpawnDerivedClass_(int32 iFlags, out ISWbemObject* objWbemObject) mut => VT.SpawnDerivedClass_(ref this, iFlags, out objWbemObject);
			public HRESULT SpawnInstance_(int32 iFlags, out ISWbemObject* objWbemObject) mut => VT.SpawnInstance_(ref this, iFlags, out objWbemObject);
			public HRESULT CompareTo_(ref IDispatch objWbemObject, int32 iFlags, out int16 bResult) mut => VT.CompareTo_(ref this, ref objWbemObject, iFlags, out bResult);
			public HRESULT get_Qualifiers_(out ISWbemQualifierSet* objWbemQualifierSet) mut => VT.get_Qualifiers_(ref this, out objWbemQualifierSet);
			public HRESULT get_Properties_(out ISWbemPropertySet* objWbemPropertySet) mut => VT.get_Properties_(ref this, out objWbemPropertySet);
			public HRESULT get_Methods_(out ISWbemMethodSet* objWbemMethodSet) mut => VT.get_Methods_(ref this, out objWbemMethodSet);
			public HRESULT get_Derivation_(out VARIANT strClassNameArray) mut => VT.get_Derivation_(ref this, out strClassNameArray);
			public HRESULT get_Path_(out ISWbemObjectPath* objWbemObjectPath) mut => VT.get_Path_(ref this, out objWbemObjectPath);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectPath* objWbemObjectPath) Put_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) PutAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, ref IDispatch objWbemNamedValueSet) Delete_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) DeleteAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) Instances_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) InstancesAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) Subclasses_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) SubclassesAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) Associators_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) AssociatorsAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectSet* objWbemObjectSet) References_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ReferencesAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObject* objWbemOutParameters) ExecMethod_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemSink, BSTR strMethodName, ref IDispatch objWbemInParameters, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) ExecMethodAsync_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemObject* objWbemObject) Clone_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, out BSTR strObjectText) GetObjectText_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, out ISWbemObject* objWbemObject) SpawnDerivedClass_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, int32 iFlags, out ISWbemObject* objWbemObject) SpawnInstance_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, ref IDispatch objWbemObject, int32 iFlags, out int16 bResult) CompareTo_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemQualifierSet* objWbemQualifierSet) get_Qualifiers_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemPropertySet* objWbemPropertySet) get_Properties_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemMethodSet* objWbemMethodSet) get_Methods_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out VARIANT strClassNameArray) get_Derivation_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemObjectPath* objWbemObjectPath) get_Path_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObject self, out ISWbemSecurity* objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObjectSet : IDispatch
		{
			public const new Guid IID = .(0x76a6415f, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(BSTR strObjectPath, int32 iFlags, out ISWbemObject* objWbemObject) mut => VT.Item(ref this, strObjectPath, iFlags, out objWbemObject);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);
			public HRESULT ItemIndex(int32 lIndex, out ISWbemObject* objWbemObject) mut => VT.ItemIndex(ref this, lIndex, out objWbemObject);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectSet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectSet self, BSTR strObjectPath, int32 iFlags, out ISWbemObject* objWbemObject) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectSet self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectSet self, out ISWbemSecurity* objWbemSecurity) get_Security_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectSet self, int32 lIndex, out ISWbemObject* objWbemObject) ItemIndex;
			}
		}
		[CRepr]
		public struct ISWbemNamedValue : IDispatch
		{
			public const new Guid IID = .(0x76a64164, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT varValue) mut => VT.get_Value(ref this, out varValue);
			public HRESULT put_Value(ref VARIANT varValue) mut => VT.put_Value(ref this, ref varValue);
			public HRESULT get_Name(out BSTR strName) mut => VT.get_Name(ref this, out strName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValue self, out VARIANT varValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValue self, ref VARIANT varValue) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValue self, out BSTR strName) get_Name;
			}
		}
		[CRepr]
		public struct ISWbemNamedValueSet : IDispatch
		{
			public const new Guid IID = .(0xcf2376ea, 0xce8c, 0x11d1, 0x8b, 0x05, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(BSTR strName, int32 iFlags, out ISWbemNamedValue* objWbemNamedValue) mut => VT.Item(ref this, strName, iFlags, out objWbemNamedValue);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT Add(BSTR strName, ref VARIANT varValue, int32 iFlags, out ISWbemNamedValue* objWbemNamedValue) mut => VT.Add(ref this, strName, ref varValue, iFlags, out objWbemNamedValue);
			public HRESULT Remove(BSTR strName, int32 iFlags) mut => VT.Remove(ref this, strName, iFlags);
			public HRESULT Clone(out ISWbemNamedValueSet* objWbemNamedValueSet) mut => VT.Clone(ref this, out objWbemNamedValueSet);
			public HRESULT DeleteAll() mut => VT.DeleteAll(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, BSTR strName, int32 iFlags, out ISWbemNamedValue* objWbemNamedValue) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, BSTR strName, ref VARIANT varValue, int32 iFlags, out ISWbemNamedValue* objWbemNamedValue) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, BSTR strName, int32 iFlags) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self, out ISWbemNamedValueSet* objWbemNamedValueSet) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemNamedValueSet self) DeleteAll;
			}
		}
		[CRepr]
		public struct ISWbemQualifier : IDispatch
		{
			public const new Guid IID = .(0x79b05932, 0xd3b7, 0x11d1, 0x8b, 0x06, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT varValue) mut => VT.get_Value(ref this, out varValue);
			public HRESULT put_Value(ref VARIANT varValue) mut => VT.put_Value(ref this, ref varValue);
			public HRESULT get_Name(out BSTR strName) mut => VT.get_Name(ref this, out strName);
			public HRESULT get_IsLocal(out int16 bIsLocal) mut => VT.get_IsLocal(ref this, out bIsLocal);
			public HRESULT get_PropagatesToSubclass(out int16 bPropagatesToSubclass) mut => VT.get_PropagatesToSubclass(ref this, out bPropagatesToSubclass);
			public HRESULT put_PropagatesToSubclass(int16 bPropagatesToSubclass) mut => VT.put_PropagatesToSubclass(ref this, bPropagatesToSubclass);
			public HRESULT get_PropagatesToInstance(out int16 bPropagatesToInstance) mut => VT.get_PropagatesToInstance(ref this, out bPropagatesToInstance);
			public HRESULT put_PropagatesToInstance(int16 bPropagatesToInstance) mut => VT.put_PropagatesToInstance(ref this, bPropagatesToInstance);
			public HRESULT get_IsOverridable(out int16 bIsOverridable) mut => VT.get_IsOverridable(ref this, out bIsOverridable);
			public HRESULT put_IsOverridable(int16 bIsOverridable) mut => VT.put_IsOverridable(ref this, bIsOverridable);
			public HRESULT get_IsAmended(out int16 bIsAmended) mut => VT.get_IsAmended(ref this, out bIsAmended);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out VARIANT varValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, ref VARIANT varValue) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out BSTR strName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out int16 bIsLocal) get_IsLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out int16 bPropagatesToSubclass) get_PropagatesToSubclass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, int16 bPropagatesToSubclass) put_PropagatesToSubclass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out int16 bPropagatesToInstance) get_PropagatesToInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, int16 bPropagatesToInstance) put_PropagatesToInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out int16 bIsOverridable) get_IsOverridable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, int16 bIsOverridable) put_IsOverridable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifier self, out int16 bIsAmended) get_IsAmended;
			}
		}
		[CRepr]
		public struct ISWbemQualifierSet : IDispatch
		{
			public const new Guid IID = .(0x9b16ed16, 0xd3df, 0x11d1, 0x8b, 0x08, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(BSTR name, int32 iFlags, out ISWbemQualifier* objWbemQualifier) mut => VT.Item(ref this, name, iFlags, out objWbemQualifier);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT Add(BSTR strName, ref VARIANT varVal, int16 bPropagatesToSubclass, int16 bPropagatesToInstance, int16 bIsOverridable, int32 iFlags, out ISWbemQualifier* objWbemQualifier) mut => VT.Add(ref this, strName, ref varVal, bPropagatesToSubclass, bPropagatesToInstance, bIsOverridable, iFlags, out objWbemQualifier);
			public HRESULT Remove(BSTR strName, int32 iFlags) mut => VT.Remove(ref this, strName, iFlags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifierSet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifierSet self, BSTR name, int32 iFlags, out ISWbemQualifier* objWbemQualifier) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifierSet self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifierSet self, BSTR strName, ref VARIANT varVal, int16 bPropagatesToSubclass, int16 bPropagatesToInstance, int16 bIsOverridable, int32 iFlags, out ISWbemQualifier* objWbemQualifier) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemQualifierSet self, BSTR strName, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct ISWbemProperty : IDispatch
		{
			public const new Guid IID = .(0x1a388f98, 0xd4ba, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT varValue) mut => VT.get_Value(ref this, out varValue);
			public HRESULT put_Value(ref VARIANT varValue) mut => VT.put_Value(ref this, ref varValue);
			public HRESULT get_Name(out BSTR strName) mut => VT.get_Name(ref this, out strName);
			public HRESULT get_IsLocal(out int16 bIsLocal) mut => VT.get_IsLocal(ref this, out bIsLocal);
			public HRESULT get_Origin(out BSTR strOrigin) mut => VT.get_Origin(ref this, out strOrigin);
			public HRESULT get_CIMType(out WbemCimtypeEnum iCimType) mut => VT.get_CIMType(ref this, out iCimType);
			public HRESULT get_Qualifiers_(out ISWbemQualifierSet* objWbemQualifierSet) mut => VT.get_Qualifiers_(ref this, out objWbemQualifierSet);
			public HRESULT get_IsArray(out int16 bIsArray) mut => VT.get_IsArray(ref this, out bIsArray);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out VARIANT varValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, ref VARIANT varValue) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out BSTR strName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out int16 bIsLocal) get_IsLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out BSTR strOrigin) get_Origin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out WbemCimtypeEnum iCimType) get_CIMType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out ISWbemQualifierSet* objWbemQualifierSet) get_Qualifiers_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemProperty self, out int16 bIsArray) get_IsArray;
			}
		}
		[CRepr]
		public struct ISWbemPropertySet : IDispatch
		{
			public const new Guid IID = .(0xdea0a7b2, 0xd4ba, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(BSTR strName, int32 iFlags, out ISWbemProperty* objWbemProperty) mut => VT.Item(ref this, strName, iFlags, out objWbemProperty);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT Add(BSTR strName, WbemCimtypeEnum iCIMType, int16 bIsArray, int32 iFlags, out ISWbemProperty* objWbemProperty) mut => VT.Add(ref this, strName, iCIMType, bIsArray, iFlags, out objWbemProperty);
			public HRESULT Remove(BSTR strName, int32 iFlags) mut => VT.Remove(ref this, strName, iFlags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPropertySet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPropertySet self, BSTR strName, int32 iFlags, out ISWbemProperty* objWbemProperty) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPropertySet self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPropertySet self, BSTR strName, WbemCimtypeEnum iCIMType, int16 bIsArray, int32 iFlags, out ISWbemProperty* objWbemProperty) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPropertySet self, BSTR strName, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct ISWbemMethod : IDispatch
		{
			public const new Guid IID = .(0x422e8e90, 0xd955, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR strName) mut => VT.get_Name(ref this, out strName);
			public HRESULT get_Origin(out BSTR strOrigin) mut => VT.get_Origin(ref this, out strOrigin);
			public HRESULT get_InParameters(out ISWbemObject* objWbemInParameters) mut => VT.get_InParameters(ref this, out objWbemInParameters);
			public HRESULT get_OutParameters(out ISWbemObject* objWbemOutParameters) mut => VT.get_OutParameters(ref this, out objWbemOutParameters);
			public HRESULT get_Qualifiers_(out ISWbemQualifierSet* objWbemQualifierSet) mut => VT.get_Qualifiers_(ref this, out objWbemQualifierSet);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethod self, out BSTR strName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethod self, out BSTR strOrigin) get_Origin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethod self, out ISWbemObject* objWbemInParameters) get_InParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethod self, out ISWbemObject* objWbemOutParameters) get_OutParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethod self, out ISWbemQualifierSet* objWbemQualifierSet) get_Qualifiers_;
			}
		}
		[CRepr]
		public struct ISWbemMethodSet : IDispatch
		{
			public const new Guid IID = .(0xc93ba292, 0xd955, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(BSTR strName, int32 iFlags, out ISWbemMethod* objWbemMethod) mut => VT.Item(ref this, strName, iFlags, out objWbemMethod);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethodSet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethodSet self, BSTR strName, int32 iFlags, out ISWbemMethod* objWbemMethod) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemMethodSet self, out int32 iCount) get_Count;
			}
		}
		[CRepr]
		public struct ISWbemEventSource : IDispatch
		{
			public const new Guid IID = .(0x27d54d92, 0x0ebe, 0x11d2, 0x8b, 0x22, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextEvent(int32 iTimeoutMs, out ISWbemObject* objWbemObject) mut => VT.NextEvent(ref this, iTimeoutMs, out objWbemObject);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemEventSource self, int32 iTimeoutMs, out ISWbemObject* objWbemObject) NextEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemEventSource self, out ISWbemSecurity* objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObjectPath : IDispatch
		{
			public const new Guid IID = .(0x5791bc27, 0xce9c, 0x11d1, 0x97, 0xbf, 0x00, 0x00, 0xf8, 0x1e, 0x84, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR strPath) mut => VT.get_Path(ref this, out strPath);
			public HRESULT put_Path(BSTR strPath) mut => VT.put_Path(ref this, strPath);
			public HRESULT get_RelPath(out BSTR strRelPath) mut => VT.get_RelPath(ref this, out strRelPath);
			public HRESULT put_RelPath(BSTR strRelPath) mut => VT.put_RelPath(ref this, strRelPath);
			public HRESULT get_Server(out BSTR strServer) mut => VT.get_Server(ref this, out strServer);
			public HRESULT put_Server(BSTR strServer) mut => VT.put_Server(ref this, strServer);
			public HRESULT get_Namespace(out BSTR strNamespace) mut => VT.get_Namespace(ref this, out strNamespace);
			public HRESULT put_Namespace(BSTR strNamespace) mut => VT.put_Namespace(ref this, strNamespace);
			public HRESULT get_ParentNamespace(out BSTR strParentNamespace) mut => VT.get_ParentNamespace(ref this, out strParentNamespace);
			public HRESULT get_DisplayName(out BSTR strDisplayName) mut => VT.get_DisplayName(ref this, out strDisplayName);
			public HRESULT put_DisplayName(BSTR strDisplayName) mut => VT.put_DisplayName(ref this, strDisplayName);
			public HRESULT get_Class(out BSTR strClass) mut => VT.get_Class(ref this, out strClass);
			public HRESULT put_Class(BSTR strClass) mut => VT.put_Class(ref this, strClass);
			public HRESULT get_IsClass(out int16 bIsClass) mut => VT.get_IsClass(ref this, out bIsClass);
			public HRESULT SetAsClass() mut => VT.SetAsClass(ref this);
			public HRESULT get_IsSingleton(out int16 bIsSingleton) mut => VT.get_IsSingleton(ref this, out bIsSingleton);
			public HRESULT SetAsSingleton() mut => VT.SetAsSingleton(ref this);
			public HRESULT get_Keys(out ISWbemNamedValueSet* objWbemNamedValueSet) mut => VT.get_Keys(ref this, out objWbemNamedValueSet);
			public HRESULT get_Security_(out ISWbemSecurity* objWbemSecurity) mut => VT.get_Security_(ref this, out objWbemSecurity);
			public HRESULT get_Locale(out BSTR strLocale) mut => VT.get_Locale(ref this, out strLocale);
			public HRESULT put_Locale(BSTR strLocale) mut => VT.put_Locale(ref this, strLocale);
			public HRESULT get_Authority(out BSTR strAuthority) mut => VT.get_Authority(ref this, out strAuthority);
			public HRESULT put_Authority(BSTR strAuthority) mut => VT.put_Authority(ref this, strAuthority);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strPath) put_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strRelPath) get_RelPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strRelPath) put_RelPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strServer) get_Server;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strServer) put_Server;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strNamespace) get_Namespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strNamespace) put_Namespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strParentNamespace) get_ParentNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strDisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strDisplayName) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strClass) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strClass) put_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out int16 bIsClass) get_IsClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self) SetAsClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out int16 bIsSingleton) get_IsSingleton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self) SetAsSingleton;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out ISWbemNamedValueSet* objWbemNamedValueSet) get_Keys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out ISWbemSecurity* objWbemSecurity) get_Security_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strLocale) get_Locale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strLocale) put_Locale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, out BSTR strAuthority) get_Authority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectPath self, BSTR strAuthority) put_Authority;
			}
		}
		[CRepr]
		public struct ISWbemLastError : ISWbemObject
		{
			public const new Guid IID = .(0xd962db84, 0xd4bb, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ISWbemObject.VTable {}
		}
		[CRepr]
		public struct ISWbemSinkEvents : IDispatch
		{
			public const new Guid IID = .(0x75718ca0, 0xf029, 0x11d1, 0xa1, 0xac, 0x00, 0xc0, 0x4f, 0xb6, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ISWbemSink : IDispatch
		{
			public const new Guid IID = .(0x75718c9f, 0xf029, 0x11d1, 0xa1, 0xac, 0x00, 0xc0, 0x4f, 0xb6, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSink self) Cancel;
			}
		}
		[CRepr]
		public struct ISWbemSecurity : IDispatch
		{
			public const new Guid IID = .(0xb54d66e6, 0x2287, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ImpersonationLevel(out WbemImpersonationLevelEnum iImpersonationLevel) mut => VT.get_ImpersonationLevel(ref this, out iImpersonationLevel);
			public HRESULT put_ImpersonationLevel(WbemImpersonationLevelEnum iImpersonationLevel) mut => VT.put_ImpersonationLevel(ref this, iImpersonationLevel);
			public HRESULT get_AuthenticationLevel(out WbemAuthenticationLevelEnum iAuthenticationLevel) mut => VT.get_AuthenticationLevel(ref this, out iAuthenticationLevel);
			public HRESULT put_AuthenticationLevel(WbemAuthenticationLevelEnum iAuthenticationLevel) mut => VT.put_AuthenticationLevel(ref this, iAuthenticationLevel);
			public HRESULT get_Privileges(out ISWbemPrivilegeSet* objWbemPrivilegeSet) mut => VT.get_Privileges(ref this, out objWbemPrivilegeSet);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSecurity self, out WbemImpersonationLevelEnum iImpersonationLevel) get_ImpersonationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSecurity self, WbemImpersonationLevelEnum iImpersonationLevel) put_ImpersonationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSecurity self, out WbemAuthenticationLevelEnum iAuthenticationLevel) get_AuthenticationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSecurity self, WbemAuthenticationLevelEnum iAuthenticationLevel) put_AuthenticationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemSecurity self, out ISWbemPrivilegeSet* objWbemPrivilegeSet) get_Privileges;
			}
		}
		[CRepr]
		public struct ISWbemPrivilege : IDispatch
		{
			public const new Guid IID = .(0x26ee67bd, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsEnabled(out int16 bIsEnabled) mut => VT.get_IsEnabled(ref this, out bIsEnabled);
			public HRESULT put_IsEnabled(int16 bIsEnabled) mut => VT.put_IsEnabled(ref this, bIsEnabled);
			public HRESULT get_Name(out BSTR strDisplayName) mut => VT.get_Name(ref this, out strDisplayName);
			public HRESULT get_DisplayName(out BSTR strDisplayName) mut => VT.get_DisplayName(ref this, out strDisplayName);
			public HRESULT get_Identifier(out WbemPrivilegeEnum iPrivilege) mut => VT.get_Identifier(ref this, out iPrivilege);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilege self, out int16 bIsEnabled) get_IsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilege self, int16 bIsEnabled) put_IsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilege self, out BSTR strDisplayName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilege self, out BSTR strDisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilege self, out WbemPrivilegeEnum iPrivilege) get_Identifier;
			}
		}
		[CRepr]
		public struct ISWbemPrivilegeSet : IDispatch
		{
			public const new Guid IID = .(0x26ee67bf, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(WbemPrivilegeEnum iPrivilege, out ISWbemPrivilege* objWbemPrivilege) mut => VT.Item(ref this, iPrivilege, out objWbemPrivilege);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT Add(WbemPrivilegeEnum iPrivilege, int16 bIsEnabled, out ISWbemPrivilege* objWbemPrivilege) mut => VT.Add(ref this, iPrivilege, bIsEnabled, out objWbemPrivilege);
			public HRESULT Remove(WbemPrivilegeEnum iPrivilege) mut => VT.Remove(ref this, iPrivilege);
			public HRESULT DeleteAll() mut => VT.DeleteAll(ref this);
			public HRESULT AddAsString(BSTR strPrivilege, int16 bIsEnabled, out ISWbemPrivilege* objWbemPrivilege) mut => VT.AddAsString(ref this, strPrivilege, bIsEnabled, out objWbemPrivilege);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, WbemPrivilegeEnum iPrivilege, out ISWbemPrivilege* objWbemPrivilege) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, WbemPrivilegeEnum iPrivilege, int16 bIsEnabled, out ISWbemPrivilege* objWbemPrivilege) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, WbemPrivilegeEnum iPrivilege) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self) DeleteAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemPrivilegeSet self, BSTR strPrivilege, int16 bIsEnabled, out ISWbemPrivilege* objWbemPrivilege) AddAsString;
			}
		}
		[CRepr]
		public struct ISWbemServicesEx : ISWbemServices
		{
			public const new Guid IID = .(0xd2f68443, 0x85dc, 0x427e, 0x91, 0xd8, 0x36, 0x65, 0x54, 0xcc, 0x75, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Put(ref ISWbemObjectEx objWbemObject, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectPath* objWbemObjectPath) mut => VT.Put(ref this, ref objWbemObject, iFlags, ref objWbemNamedValueSet, out objWbemObjectPath);
			public HRESULT PutAsync(ref ISWbemSink objWbemSink, ref ISWbemObjectEx objWbemObject, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) mut => VT.PutAsync(ref this, ref objWbemSink, ref objWbemObject, iFlags, ref objWbemNamedValueSet, ref objWbemAsyncContext);

			[CRepr]
			public struct VTable : ISWbemServices.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServicesEx self, ref ISWbemObjectEx objWbemObject, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemObjectPath* objWbemObjectPath) Put;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemServicesEx self, ref ISWbemSink objWbemSink, ref ISWbemObjectEx objWbemObject, int32 iFlags, ref IDispatch objWbemNamedValueSet, ref IDispatch objWbemAsyncContext) PutAsync;
			}
		}
		[CRepr]
		public struct ISWbemObjectEx : ISWbemObject
		{
			public const new Guid IID = .(0x269ad56a, 0x8a67, 0x4129, 0xbc, 0x8c, 0x05, 0x06, 0xdc, 0xfe, 0x98, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Refresh_(int32 iFlags, ref IDispatch objWbemNamedValueSet) mut => VT.Refresh_(ref this, iFlags, ref objWbemNamedValueSet);
			public HRESULT get_SystemProperties_(out ISWbemPropertySet* objWbemPropertySet) mut => VT.get_SystemProperties_(ref this, out objWbemPropertySet);
			public HRESULT GetText_(WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, ref IDispatch objWbemNamedValueSet, out BSTR bsText) mut => VT.GetText_(ref this, iObjectTextFormat, iFlags, ref objWbemNamedValueSet, out bsText);
			public HRESULT SetFromText_(BSTR bsText, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, ref IDispatch objWbemNamedValueSet) mut => VT.SetFromText_(ref this, bsText, iObjectTextFormat, iFlags, ref objWbemNamedValueSet);

			[CRepr]
			public struct VTable : ISWbemObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectEx self, int32 iFlags, ref IDispatch objWbemNamedValueSet) Refresh_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectEx self, out ISWbemPropertySet* objWbemPropertySet) get_SystemProperties_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectEx self, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, ref IDispatch objWbemNamedValueSet, out BSTR bsText) GetText_;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemObjectEx self, BSTR bsText, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, ref IDispatch objWbemNamedValueSet) SetFromText_;
			}
		}
		[CRepr]
		public struct ISWbemDateTime : IDispatch
		{
			public const new Guid IID = .(0x5e97458a, 0xcf77, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out BSTR strValue) mut => VT.get_Value(ref this, out strValue);
			public HRESULT put_Value(BSTR strValue) mut => VT.put_Value(ref this, strValue);
			public HRESULT get_Year(out int32 iYear) mut => VT.get_Year(ref this, out iYear);
			public HRESULT put_Year(int32 iYear) mut => VT.put_Year(ref this, iYear);
			public HRESULT get_YearSpecified(out int16 bYearSpecified) mut => VT.get_YearSpecified(ref this, out bYearSpecified);
			public HRESULT put_YearSpecified(int16 bYearSpecified) mut => VT.put_YearSpecified(ref this, bYearSpecified);
			public HRESULT get_Month(out int32 iMonth) mut => VT.get_Month(ref this, out iMonth);
			public HRESULT put_Month(int32 iMonth) mut => VT.put_Month(ref this, iMonth);
			public HRESULT get_MonthSpecified(out int16 bMonthSpecified) mut => VT.get_MonthSpecified(ref this, out bMonthSpecified);
			public HRESULT put_MonthSpecified(int16 bMonthSpecified) mut => VT.put_MonthSpecified(ref this, bMonthSpecified);
			public HRESULT get_Day(out int32 iDay) mut => VT.get_Day(ref this, out iDay);
			public HRESULT put_Day(int32 iDay) mut => VT.put_Day(ref this, iDay);
			public HRESULT get_DaySpecified(out int16 bDaySpecified) mut => VT.get_DaySpecified(ref this, out bDaySpecified);
			public HRESULT put_DaySpecified(int16 bDaySpecified) mut => VT.put_DaySpecified(ref this, bDaySpecified);
			public HRESULT get_Hours(out int32 iHours) mut => VT.get_Hours(ref this, out iHours);
			public HRESULT put_Hours(int32 iHours) mut => VT.put_Hours(ref this, iHours);
			public HRESULT get_HoursSpecified(out int16 bHoursSpecified) mut => VT.get_HoursSpecified(ref this, out bHoursSpecified);
			public HRESULT put_HoursSpecified(int16 bHoursSpecified) mut => VT.put_HoursSpecified(ref this, bHoursSpecified);
			public HRESULT get_Minutes(out int32 iMinutes) mut => VT.get_Minutes(ref this, out iMinutes);
			public HRESULT put_Minutes(int32 iMinutes) mut => VT.put_Minutes(ref this, iMinutes);
			public HRESULT get_MinutesSpecified(out int16 bMinutesSpecified) mut => VT.get_MinutesSpecified(ref this, out bMinutesSpecified);
			public HRESULT put_MinutesSpecified(int16 bMinutesSpecified) mut => VT.put_MinutesSpecified(ref this, bMinutesSpecified);
			public HRESULT get_Seconds(out int32 iSeconds) mut => VT.get_Seconds(ref this, out iSeconds);
			public HRESULT put_Seconds(int32 iSeconds) mut => VT.put_Seconds(ref this, iSeconds);
			public HRESULT get_SecondsSpecified(out int16 bSecondsSpecified) mut => VT.get_SecondsSpecified(ref this, out bSecondsSpecified);
			public HRESULT put_SecondsSpecified(int16 bSecondsSpecified) mut => VT.put_SecondsSpecified(ref this, bSecondsSpecified);
			public HRESULT get_Microseconds(out int32 iMicroseconds) mut => VT.get_Microseconds(ref this, out iMicroseconds);
			public HRESULT put_Microseconds(int32 iMicroseconds) mut => VT.put_Microseconds(ref this, iMicroseconds);
			public HRESULT get_MicrosecondsSpecified(out int16 bMicrosecondsSpecified) mut => VT.get_MicrosecondsSpecified(ref this, out bMicrosecondsSpecified);
			public HRESULT put_MicrosecondsSpecified(int16 bMicrosecondsSpecified) mut => VT.put_MicrosecondsSpecified(ref this, bMicrosecondsSpecified);
			public HRESULT get_UTC(out int32 iUTC) mut => VT.get_UTC(ref this, out iUTC);
			public HRESULT put_UTC(int32 iUTC) mut => VT.put_UTC(ref this, iUTC);
			public HRESULT get_UTCSpecified(out int16 bUTCSpecified) mut => VT.get_UTCSpecified(ref this, out bUTCSpecified);
			public HRESULT put_UTCSpecified(int16 bUTCSpecified) mut => VT.put_UTCSpecified(ref this, bUTCSpecified);
			public HRESULT get_IsInterval(out int16 bIsInterval) mut => VT.get_IsInterval(ref this, out bIsInterval);
			public HRESULT put_IsInterval(int16 bIsInterval) mut => VT.put_IsInterval(ref this, bIsInterval);
			public HRESULT GetVarDate(int16 bIsLocal, out double dVarDate) mut => VT.GetVarDate(ref this, bIsLocal, out dVarDate);
			public HRESULT SetVarDate(double dVarDate, int16 bIsLocal) mut => VT.SetVarDate(ref this, dVarDate, bIsLocal);
			public HRESULT GetFileTime(int16 bIsLocal, out BSTR strFileTime) mut => VT.GetFileTime(ref this, bIsLocal, out strFileTime);
			public HRESULT SetFileTime(BSTR strFileTime, int16 bIsLocal) mut => VT.SetFileTime(ref this, strFileTime, bIsLocal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out BSTR strValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, BSTR strValue) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iYear) get_Year;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iYear) put_Year;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bYearSpecified) get_YearSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bYearSpecified) put_YearSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iMonth) get_Month;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iMonth) put_Month;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bMonthSpecified) get_MonthSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bMonthSpecified) put_MonthSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iDay) get_Day;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iDay) put_Day;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bDaySpecified) get_DaySpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bDaySpecified) put_DaySpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iHours) get_Hours;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iHours) put_Hours;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bHoursSpecified) get_HoursSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bHoursSpecified) put_HoursSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iMinutes) get_Minutes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iMinutes) put_Minutes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bMinutesSpecified) get_MinutesSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bMinutesSpecified) put_MinutesSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iSeconds) get_Seconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iSeconds) put_Seconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bSecondsSpecified) get_SecondsSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bSecondsSpecified) put_SecondsSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iMicroseconds) get_Microseconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iMicroseconds) put_Microseconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bMicrosecondsSpecified) get_MicrosecondsSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bMicrosecondsSpecified) put_MicrosecondsSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int32 iUTC) get_UTC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int32 iUTC) put_UTC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bUTCSpecified) get_UTCSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bUTCSpecified) put_UTCSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, out int16 bIsInterval) get_IsInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bIsInterval) put_IsInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bIsLocal, out double dVarDate) GetVarDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, double dVarDate, int16 bIsLocal) SetVarDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, int16 bIsLocal, out BSTR strFileTime) GetFileTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemDateTime self, BSTR strFileTime, int16 bIsLocal) SetFileTime;
			}
		}
		[CRepr]
		public struct ISWbemRefresher : IDispatch
		{
			public const new Guid IID = .(0x14d8250e, 0xd9c2, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* pUnk) mut => VT.get__NewEnum(ref this, out pUnk);
			public HRESULT Item(int32 iIndex, out ISWbemRefreshableItem* objWbemRefreshableItem) mut => VT.Item(ref this, iIndex, out objWbemRefreshableItem);
			public HRESULT get_Count(out int32 iCount) mut => VT.get_Count(ref this, out iCount);
			public HRESULT Add(ref ISWbemServicesEx objWbemServices, BSTR bsInstancePath, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemRefreshableItem* objWbemRefreshableItem) mut => VT.Add(ref this, ref objWbemServices, bsInstancePath, iFlags, ref objWbemNamedValueSet, out objWbemRefreshableItem);
			public HRESULT AddEnum(ref ISWbemServicesEx objWbemServices, BSTR bsClassName, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemRefreshableItem* objWbemRefreshableItem) mut => VT.AddEnum(ref this, ref objWbemServices, bsClassName, iFlags, ref objWbemNamedValueSet, out objWbemRefreshableItem);
			public HRESULT Remove(int32 iIndex, int32 iFlags) mut => VT.Remove(ref this, iIndex, iFlags);
			public HRESULT Refresh(int32 iFlags) mut => VT.Refresh(ref this, iFlags);
			public HRESULT get_AutoReconnect(out int16 bCount) mut => VT.get_AutoReconnect(ref this, out bCount);
			public HRESULT put_AutoReconnect(int16 bCount) mut => VT.put_AutoReconnect(ref this, bCount);
			public HRESULT DeleteAll() mut => VT.DeleteAll(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, out IUnknown* pUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, int32 iIndex, out ISWbemRefreshableItem* objWbemRefreshableItem) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, out int32 iCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, ref ISWbemServicesEx objWbemServices, BSTR bsInstancePath, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemRefreshableItem* objWbemRefreshableItem) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, ref ISWbemServicesEx objWbemServices, BSTR bsClassName, int32 iFlags, ref IDispatch objWbemNamedValueSet, out ISWbemRefreshableItem* objWbemRefreshableItem) AddEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, int32 iIndex, int32 iFlags) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, int32 iFlags) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, out int16 bCount) get_AutoReconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self, int16 bCount) put_AutoReconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefresher self) DeleteAll;
			}
		}
		[CRepr]
		public struct ISWbemRefreshableItem : IDispatch
		{
			public const new Guid IID = .(0x5ad4bf92, 0xdaab, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(out int32 iIndex) mut => VT.get_Index(ref this, out iIndex);
			public HRESULT get_Refresher(out ISWbemRefresher* objWbemRefresher) mut => VT.get_Refresher(ref this, out objWbemRefresher);
			public HRESULT get_IsSet(out int16 bIsSet) mut => VT.get_IsSet(ref this, out bIsSet);
			public HRESULT get_Object(out ISWbemObjectEx* objWbemObject) mut => VT.get_Object(ref this, out objWbemObject);
			public HRESULT get_ObjectSet(out ISWbemObjectSet* objWbemObjectSet) mut => VT.get_ObjectSet(ref this, out objWbemObjectSet);
			public HRESULT Remove(int32 iFlags) mut => VT.Remove(ref this, iFlags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, out int32 iIndex) get_Index;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, out ISWbemRefresher* objWbemRefresher) get_Refresher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, out int16 bIsSet) get_IsSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, out ISWbemObjectEx* objWbemObject) get_Object;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, out ISWbemObjectSet* objWbemObjectSet) get_ObjectSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISWbemRefreshableItem self, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct IWMIExtension : IDispatch
		{
			public const new Guid IID = .(0xadc1f06e, 0x5c7e, 0x11d2, 0x8b, 0x74, 0x00, 0x10, 0x4b, 0x2a, 0xfb, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WMIObjectPath(out BSTR strWMIObjectPath) mut => VT.get_WMIObjectPath(ref this, out strWMIObjectPath);
			public HRESULT GetWMIObject(out ISWbemObject* objWMIObject) mut => VT.GetWMIObject(ref this, out objWMIObject);
			public HRESULT GetWMIServices(out ISWbemServices* objWMIServices) mut => VT.GetWMIServices(ref this, out objWMIServices);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIExtension self, out BSTR strWMIObjectPath) get_WMIObjectPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIExtension self, out ISWbemObject* objWMIObject) GetWMIObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIExtension self, out ISWbemServices* objWMIServices) GetWMIServices;
			}
		}
		[CRepr]
		public struct IWbemTransport : IUnknown
		{
			public const new Guid IID = .(0x553fe584, 0x2156, 0x11d0, 0xb6, 0xae, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut => VT.Initialize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemTransport self) Initialize;
			}
		}
		[CRepr]
		public struct IWbemLevel1Login : IUnknown
		{
			public const new Guid IID = .(0xf309ad18, 0xd86a, 0x11d0, 0xa0, 0x75, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EstablishPosition(PWSTR wszLocaleList, uint32 dwNumLocales, out uint32 reserved) mut => VT.EstablishPosition(ref this, wszLocaleList, dwNumLocales, out reserved);
			public HRESULT RequestChallenge(PWSTR wszNetworkResource, PWSTR wszUser, out uint8 Nonce) mut => VT.RequestChallenge(ref this, wszNetworkResource, wszUser, out Nonce);
			public HRESULT WBEMLogin(PWSTR wszPreferredLocale, ref uint8 AccessToken, int32 lFlags, ref IWbemContext pCtx, out IWbemServices* ppNamespace) mut => VT.WBEMLogin(ref this, wszPreferredLocale, ref AccessToken, lFlags, ref pCtx, out ppNamespace);
			public HRESULT NTLMLogin(PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, ref IWbemContext pCtx, out IWbemServices* ppNamespace) mut => VT.NTLMLogin(ref this, wszNetworkResource, wszPreferredLocale, lFlags, ref pCtx, out ppNamespace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemLevel1Login self, PWSTR wszLocaleList, uint32 dwNumLocales, out uint32 reserved) EstablishPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemLevel1Login self, PWSTR wszNetworkResource, PWSTR wszUser, out uint8 Nonce) RequestChallenge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemLevel1Login self, PWSTR wszPreferredLocale, ref uint8 AccessToken, int32 lFlags, ref IWbemContext pCtx, out IWbemServices* ppNamespace) WBEMLogin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemLevel1Login self, PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, ref IWbemContext pCtx, out IWbemServices* ppNamespace) NTLMLogin;
			}
		}
		[CRepr]
		public struct IWbemConnectorLogin : IUnknown
		{
			public const new Guid IID = .(0xd8ec9cb1, 0xb135, 0x4f10, 0x8b, 0x1b, 0xc7, 0x18, 0x8b, 0xb0, 0xd1, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectorLogin(PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, void** pInterface) mut => VT.ConnectorLogin(ref this, wszNetworkResource, wszPreferredLocale, lFlags, ref pCtx, riid, pInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConnectorLogin self, PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, void** pInterface) ConnectorLogin;
			}
		}
		[CRepr]
		public struct IWbemAddressResolution : IUnknown
		{
			public const new Guid IID = .(0xf7ce2e12, 0x8c90, 0x11d1, 0x9e, 0x7b, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resolve(PWSTR wszNamespacePath, PWSTR wszAddressType, out uint32 pdwAddressLength, out uint8* pabBinaryAddress) mut => VT.Resolve(ref this, wszNamespacePath, wszAddressType, out pdwAddressLength, out pabBinaryAddress);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemAddressResolution self, PWSTR wszNamespacePath, PWSTR wszAddressType, out uint32 pdwAddressLength, out uint8* pabBinaryAddress) Resolve;
			}
		}
		[CRepr]
		public struct IWbemClientTransport : IUnknown
		{
			public const new Guid IID = .(0xf7ce2e11, 0x8c90, 0x11d1, 0x9e, 0x7b, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, ref IWbemContext pCtx, out IWbemServices* ppNamespace) mut => VT.ConnectServer(ref this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strNetworkResource, strUser, strPassword, strLocale, lSecurityFlags, strAuthority, ref pCtx, out ppNamespace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClientTransport self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, ref IWbemContext pCtx, out IWbemServices* ppNamespace) ConnectServer;
			}
		}
		[CRepr]
		public struct IWbemClientConnectionTransport : IUnknown
		{
			public const new Guid IID = .(0xa889c72a, 0xfcc1, 0x4a9e, 0xaf, 0x61, 0xed, 0x07, 0x13, 0x33, 0xfb, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, void** pInterface, out IWbemCallResult* pCallRes) mut => VT.Open(ref this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strObject, strUser, strPassword, strLocale, lFlags, ref pCtx, riid, pInterface, out pCallRes);
			public HRESULT OpenAsync(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, ref IWbemObjectSink pResponseHandler) mut => VT.OpenAsync(ref this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strObject, strUser, strPassword, strLocale, lFlags, ref pCtx, riid, ref pResponseHandler);
			public HRESULT Cancel(int32 lFlags, ref IWbemObjectSink pHandler) mut => VT.Cancel(ref this, lFlags, ref pHandler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClientConnectionTransport self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, void** pInterface, out IWbemCallResult* pCallRes) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClientConnectionTransport self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, ref IWbemContext pCtx, in Guid riid, ref IWbemObjectSink pResponseHandler) OpenAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemClientConnectionTransport self, int32 lFlags, ref IWbemObjectSink pHandler) Cancel;
			}
		}
		[CRepr]
		public struct IWbemConstructClassObject : IUnknown
		{
			public const new Guid IID = .(0x9ef76194, 0x70d5, 0x11d1, 0xad, 0x90, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInheritanceChain(int32 lNumAntecedents, ref PWSTR awszAntecedents) mut => VT.SetInheritanceChain(ref this, lNumAntecedents, ref awszAntecedents);
			public HRESULT SetPropertyOrigin(PWSTR wszPropertyName, int32 lOriginIndex) mut => VT.SetPropertyOrigin(ref this, wszPropertyName, lOriginIndex);
			public HRESULT SetMethodOrigin(PWSTR wszMethodName, int32 lOriginIndex) mut => VT.SetMethodOrigin(ref this, wszMethodName, lOriginIndex);
			public HRESULT SetServerNamespace(PWSTR wszServer, PWSTR wszNamespace) mut => VT.SetServerNamespace(ref this, wszServer, wszNamespace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConstructClassObject self, int32 lNumAntecedents, ref PWSTR awszAntecedents) SetInheritanceChain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConstructClassObject self, PWSTR wszPropertyName, int32 lOriginIndex) SetPropertyOrigin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConstructClassObject self, PWSTR wszMethodName, int32 lOriginIndex) SetMethodOrigin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWbemConstructClassObject self, PWSTR wszServer, PWSTR wszNamespace) SetServerNamespace;
			}
		}
		
		// --- Functions ---
		
		[Import("mi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MI_Result MI_Application_InitializeV1(uint32 flags, uint16* applicationID, MI_Instance** extendedError, out MI_Application application);
	}
}
