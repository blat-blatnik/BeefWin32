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
		
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum MI_PromptType : int32
		{
			NORMAL = 0,
			CRITICAL = 1,
		}
		[AllowDuplicates]
		public enum MI_CallbackMode : int32
		{
			REPORT = 0,
			INQUIRE = 1,
			IGNORE = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum MI_LocaleType : int32
		{
			REQUESTED_UI = 0,
			REQUESTED_DATA = 1,
			CLOSEST_UI = 2,
			CLOSEST_DATA = 3,
		}
		[AllowDuplicates]
		public enum MI_CancellationReason : int32
		{
			NONE = 0,
			TIMEOUT = 1,
			SHUTDOWN = 2,
			SERVICESTOP = 3,
		}
		[AllowDuplicates]
		public enum MI_OperationCallback_ResponseType : int32
		{
			No = 0,
			Yes = 1,
			NoToAll = 2,
			YesToAll = 3,
		}
		[AllowDuplicates]
		public enum MI_SubscriptionDeliveryType : int32
		{
			ll = 1,
			sh = 2,
		}
		[AllowDuplicates]
		public enum MI_DestinationOptions_ImpersonationType : int32
		{
			Default = 0,
			None = 1,
			Identify = 2,
			Impersonate = 3,
			Delegate = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_PATH_CREATE_FLAG : int32
		{
			CREATE_ACCEPT_RELATIVE = 1,
			CREATE_ACCEPT_ABSOLUTE = 2,
			CREATE_ACCEPT_ALL = 4,
			TREAT_SINGLE_IDENT_AS_NS = 8,
		}
		[AllowDuplicates]
		public enum WBEM_GET_TEXT_FLAGS : int32
		{
			COMPRESSED = 1,
			GET_RELATIVE_ONLY = 2,
			GET_SERVER_TOO = 4,
			GET_SERVER_AND_NAMESPACE_ONLY = 8,
			GET_NAMESPACE_ONLY = 16,
			GET_ORIGINAL = 32,
		}
		[AllowDuplicates]
		public enum WBEM_GET_KEY_FLAGS : int32
		{
			TEXT = 1,
			QUOTEDTEXT = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
			_1_BASIC_SELECT = 1,
			_2_CLASS_NAME_IN_QUERY = 2,
			_3_STRING_CASE_FUNCTIONS = 3,
			_4_PROP_TO_PROP_TESTS = 4,
			_5_COUNT_STAR = 5,
			_6_ORDER_BY = 6,
			_7_DISTINCT = 7,
			_8_ISA = 8,
			_9_THIS = 9,
			_10_COMPEX_SUBEXPRESSIONS = 10,
			_11_ALIASING = 11,
			_12_GROUP_BY_HAVING = 12,
			_13_WMI_WITHIN = 13,
			_14_SQL_WRITE_OPERATIONS = 14,
			_15_GO = 15,
			_16_SINGLE_LEVEL_TRANSACTIONS = 16,
			_17_QUALIFIED_NAMES = 17,
			_18_ASSOCIATONS = 18,
			_19_SYSTEM_PROPERTIES = 19,
			_20_EXTENDED_SYSTEM_PROPERTIES = 20,
			_21_SQL89_JOINS = 21,
			_22_SQL92_JOINS = 22,
			_23_SUBSELECTS = 23,
			_24_UMI_EXTENSIONS = 24,
			_25_DATEPART = 25,
			_26_LIKE = 26,
			_27_CIM_TEMPORAL_CONSTRUCTS = 27,
			_28_STANDARD_AGGREGATES = 28,
			_29_MULTI_LEVEL_ORDER_BY = 29,
			_30_WMI_PRAGMAS = 30,
			_31_QUALIFIER_TESTS = 31,
			_32_SP_EXECUTE = 32,
			_33_ARRAY_ACCESS = 33,
			_34_UNION = 34,
			_35_COMPLEX_SELECT_TARGET = 35,
			_36_REFERENCE_TESTS = 36,
			_37_SELECT_INTO = 37,
			_38_BASIC_DATETIME_TESTS = 38,
			_39_COUNT_COLUMN = 39,
			_40_BETWEEN = 40,
			_LAST = 40,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_QUERY_FLAG_TYPE : int32
		{
			DEEP = 0,
			SHALLOW = 1,
			PROTOTYPE = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_LIMITATION_FLAG_TYPE : int32
		{
			OBJECT_QUALIFIERS = 16,
			PROPERTY_QUALIFIERS = 32,
		}
		[AllowDuplicates]
		public enum WBEM_TEXT_FLAG_TYPE : int32
		{
			WBEM_FLAG_NO_FLAVORS = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_LOCKING : int32
		{
			WBEM_FLAG_ALLOW_READ = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_BACKUP_RESTORE_FLAGS : int32
		{
			DEFAULT = 0,
			FORCE_SHUTDOWN = 1,
		}
		[AllowDuplicates]
		public enum WBEM_REFRESHER_FLAGS : int32
		{
			AUTO_RECONNECT = 0,
			NO_AUTO_RECONNECT = 1,
		}
		[AllowDuplicates]
		public enum WBEM_SHUTDOWN_FLAGS : int32
		{
			UNLOAD_COMPONENT = 1,
			WMI = 2,
			OS = 3,
		}
		[AllowDuplicates]
		public enum WBEMSTATUS_FORMAT : int32
		{
			EWLINE = 0,
			O_NEWLINE = 1,
		}
		[AllowDuplicates]
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
			_NO_ERROR = 0,
			_S_NO_ERROR = 0,
			_S_SAME = 0,
			_S_FALSE = 1,
			_S_ALREADY_EXISTS = 262145,
			_S_RESET_TO_DEFAULT = 262146,
			_S_DIFFERENT = 262147,
			_S_TIMEDOUT = 262148,
			_S_NO_MORE_DATA = 262149,
			_S_OPERATION_CANCELLED = 262150,
			_S_PENDING = 262151,
			_S_DUPLICATE_OBJECTS = 262152,
			_S_ACCESS_DENIED = 262153,
			_S_PARTIAL_RESULTS = 262160,
			_S_SOURCE_NOT_AVAILABLE = 262167,
			_E_FAILED = -2147217407,
			_E_NOT_FOUND = -2147217406,
			_E_ACCESS_DENIED = -2147217405,
			_E_PROVIDER_FAILURE = -2147217404,
			_E_TYPE_MISMATCH = -2147217403,
			_E_OUT_OF_MEMORY = -2147217402,
			_E_INVALID_CONTEXT = -2147217401,
			_E_INVALID_PARAMETER = -2147217400,
			_E_NOT_AVAILABLE = -2147217399,
			_E_CRITICAL_ERROR = -2147217398,
			_E_INVALID_STREAM = -2147217397,
			_E_NOT_SUPPORTED = -2147217396,
			_E_INVALID_SUPERCLASS = -2147217395,
			_E_INVALID_NAMESPACE = -2147217394,
			_E_INVALID_OBJECT = -2147217393,
			_E_INVALID_CLASS = -2147217392,
			_E_PROVIDER_NOT_FOUND = -2147217391,
			_E_INVALID_PROVIDER_REGISTRATION = -2147217390,
			_E_PROVIDER_LOAD_FAILURE = -2147217389,
			_E_INITIALIZATION_FAILURE = -2147217388,
			_E_TRANSPORT_FAILURE = -2147217387,
			_E_INVALID_OPERATION = -2147217386,
			_E_INVALID_QUERY = -2147217385,
			_E_INVALID_QUERY_TYPE = -2147217384,
			_E_ALREADY_EXISTS = -2147217383,
			_E_OVERRIDE_NOT_ALLOWED = -2147217382,
			_E_PROPAGATED_QUALIFIER = -2147217381,
			_E_PROPAGATED_PROPERTY = -2147217380,
			_E_UNEXPECTED = -2147217379,
			_E_ILLEGAL_OPERATION = -2147217378,
			_E_CANNOT_BE_KEY = -2147217377,
			_E_INCOMPLETE_CLASS = -2147217376,
			_E_INVALID_SYNTAX = -2147217375,
			_E_NONDECORATED_OBJECT = -2147217374,
			_E_READ_ONLY = -2147217373,
			_E_PROVIDER_NOT_CAPABLE = -2147217372,
			_E_CLASS_HAS_CHILDREN = -2147217371,
			_E_CLASS_HAS_INSTANCES = -2147217370,
			_E_QUERY_NOT_IMPLEMENTED = -2147217369,
			_E_ILLEGAL_NULL = -2147217368,
			_E_INVALID_QUALIFIER_TYPE = -2147217367,
			_E_INVALID_PROPERTY_TYPE = -2147217366,
			_E_VALUE_OUT_OF_RANGE = -2147217365,
			_E_CANNOT_BE_SINGLETON = -2147217364,
			_E_INVALID_CIM_TYPE = -2147217363,
			_E_INVALID_METHOD = -2147217362,
			_E_INVALID_METHOD_PARAMETERS = -2147217361,
			_E_SYSTEM_PROPERTY = -2147217360,
			_E_INVALID_PROPERTY = -2147217359,
			_E_CALL_CANCELLED = -2147217358,
			_E_SHUTTING_DOWN = -2147217357,
			_E_PROPAGATED_METHOD = -2147217356,
			_E_UNSUPPORTED_PARAMETER = -2147217355,
			_E_MISSING_PARAMETER_ID = -2147217354,
			_E_INVALID_PARAMETER_ID = -2147217353,
			_E_NONCONSECUTIVE_PARAMETER_IDS = -2147217352,
			_E_PARAMETER_ID_ON_RETVAL = -2147217351,
			_E_INVALID_OBJECT_PATH = -2147217350,
			_E_OUT_OF_DISK_SPACE = -2147217349,
			_E_BUFFER_TOO_SMALL = -2147217348,
			_E_UNSUPPORTED_PUT_EXTENSION = -2147217347,
			_E_UNKNOWN_OBJECT_TYPE = -2147217346,
			_E_UNKNOWN_PACKET_TYPE = -2147217345,
			_E_MARSHAL_VERSION_MISMATCH = -2147217344,
			_E_MARSHAL_INVALID_SIGNATURE = -2147217343,
			_E_INVALID_QUALIFIER = -2147217342,
			_E_INVALID_DUPLICATE_PARAMETER = -2147217341,
			_E_TOO_MUCH_DATA = -2147217340,
			_E_SERVER_TOO_BUSY = -2147217339,
			_E_INVALID_FLAVOR = -2147217338,
			_E_CIRCULAR_REFERENCE = -2147217337,
			_E_UNSUPPORTED_CLASS_UPDATE = -2147217336,
			_E_CANNOT_CHANGE_KEY_INHERITANCE = -2147217335,
			_E_CANNOT_CHANGE_INDEX_INHERITANCE = -2147217328,
			_E_TOO_MANY_PROPERTIES = -2147217327,
			_E_UPDATE_TYPE_MISMATCH = -2147217326,
			_E_UPDATE_OVERRIDE_NOT_ALLOWED = -2147217325,
			_E_UPDATE_PROPAGATED_METHOD = -2147217324,
			_E_METHOD_NOT_IMPLEMENTED = -2147217323,
			_E_METHOD_DISABLED = -2147217322,
			_E_REFRESHER_BUSY = -2147217321,
			_E_UNPARSABLE_QUERY = -2147217320,
			_E_NOT_EVENT_CLASS = -2147217319,
			_E_MISSING_GROUP_WITHIN = -2147217318,
			_E_MISSING_AGGREGATION_LIST = -2147217317,
			_E_PROPERTY_NOT_AN_OBJECT = -2147217316,
			_E_AGGREGATING_BY_OBJECT = -2147217315,
			_E_UNINTERPRETABLE_PROVIDER_QUERY = -2147217313,
			_E_BACKUP_RESTORE_WINMGMT_RUNNING = -2147217312,
			_E_QUEUE_OVERFLOW = -2147217311,
			_E_PRIVILEGE_NOT_HELD = -2147217310,
			_E_INVALID_OPERATOR = -2147217309,
			_E_LOCAL_CREDENTIALS = -2147217308,
			_E_CANNOT_BE_ABSTRACT = -2147217307,
			_E_AMENDED_OBJECT = -2147217306,
			_E_CLIENT_TOO_SLOW = -2147217305,
			_E_NULL_SECURITY_DESCRIPTOR = -2147217304,
			_E_TIMED_OUT = -2147217303,
			_E_INVALID_ASSOCIATION = -2147217302,
			_E_AMBIGUOUS_OPERATION = -2147217301,
			_E_QUOTA_VIOLATION = -2147217300,
			_E_RESERVED_001 = -2147217299,
			_E_RESERVED_002 = -2147217298,
			_E_UNSUPPORTED_LOCALE = -2147217297,
			_E_HANDLE_OUT_OF_DATE = -2147217296,
			_E_CONNECTION_FAILED = -2147217295,
			_E_INVALID_HANDLE_REQUEST = -2147217294,
			_E_PROPERTY_NAME_TOO_WIDE = -2147217293,
			_E_CLASS_NAME_TOO_WIDE = -2147217292,
			_E_METHOD_NAME_TOO_WIDE = -2147217291,
			_E_QUALIFIER_NAME_TOO_WIDE = -2147217290,
			_E_RERUN_COMMAND = -2147217289,
			_E_DATABASE_VER_MISMATCH = -2147217288,
			_E_VETO_DELETE = -2147217287,
			_E_VETO_PUT = -2147217286,
			_E_INVALID_LOCALE = -2147217280,
			_E_PROVIDER_SUSPENDED = -2147217279,
			_E_SYNCHRONIZATION_REQUIRED = -2147217278,
			_E_NO_SCHEMA = -2147217277,
			_E_PROVIDER_ALREADY_REGISTERED = -2147217276,
			_E_PROVIDER_NOT_REGISTERED = -2147217275,
			_E_FATAL_TRANSPORT_ERROR = -2147217274,
			_E_ENCRYPTED_CONNECTION_REQUIRED = -2147217273,
			_E_PROVIDER_TIMED_OUT = -2147217272,
			_E_NO_KEY = -2147217271,
			_E_PROVIDER_DISABLED = -2147217270,
			ESS_E_REGISTRATION_TOO_BROAD = -2147213311,
			ESS_E_REGISTRATION_TOO_PRECISE = -2147213310,
			ESS_E_AUTHZ_NOT_PRIVILEGED = -2147213309,
			MOF_E_EXPECTED_QUALIFIER_NAME = -2147205119,
			MOF_E_EXPECTED_SEMI = -2147205118,
			MOF_E_EXPECTED_OPEN_BRACE = -2147205117,
			MOF_E_EXPECTED_CLOSE_BRACE = -2147205116,
			MOF_E_EXPECTED_CLOSE_BRACKET = -2147205115,
			MOF_E_EXPECTED_CLOSE_PAREN = -2147205114,
			MOF_E_ILLEGAL_CONSTANT_VALUE = -2147205113,
			MOF_E_EXPECTED_TYPE_IDENTIFIER = -2147205112,
			MOF_E_EXPECTED_OPEN_PAREN = -2147205111,
			MOF_E_UNRECOGNIZED_TOKEN = -2147205110,
			MOF_E_UNRECOGNIZED_TYPE = -2147205109,
			MOF_E_EXPECTED_PROPERTY_NAME = -2147205108,
			MOF_E_TYPEDEF_NOT_SUPPORTED = -2147205107,
			MOF_E_UNEXPECTED_ALIAS = -2147205106,
			MOF_E_UNEXPECTED_ARRAY_INIT = -2147205105,
			MOF_E_INVALID_AMENDMENT_SYNTAX = -2147205104,
			MOF_E_INVALID_DUPLICATE_AMENDMENT = -2147205103,
			MOF_E_INVALID_PRAGMA = -2147205102,
			MOF_E_INVALID_NAMESPACE_SYNTAX = -2147205101,
			MOF_E_EXPECTED_CLASS_NAME = -2147205100,
			MOF_E_TYPE_MISMATCH = -2147205099,
			MOF_E_EXPECTED_ALIAS_NAME = -2147205098,
			MOF_E_INVALID_CLASS_DECLARATION = -2147205097,
			MOF_E_INVALID_INSTANCE_DECLARATION = -2147205096,
			MOF_E_EXPECTED_DOLLAR = -2147205095,
			MOF_E_CIMTYPE_QUALIFIER = -2147205094,
			MOF_E_DUPLICATE_PROPERTY = -2147205093,
			MOF_E_INVALID_NAMESPACE_SPECIFICATION = -2147205092,
			MOF_E_OUT_OF_RANGE = -2147205091,
			MOF_E_INVALID_FILE = -2147205090,
			MOF_E_ALIASES_IN_EMBEDDED = -2147205089,
			MOF_E_NULL_ARRAY_ELEM = -2147205088,
			MOF_E_DUPLICATE_QUALIFIER = -2147205087,
			MOF_E_EXPECTED_FLAVOR_TYPE = -2147205086,
			MOF_E_INCOMPATIBLE_FLAVOR_TYPES = -2147205085,
			MOF_E_MULTIPLE_ALIASES = -2147205084,
			MOF_E_INCOMPATIBLE_FLAVOR_TYPES2 = -2147205083,
			MOF_E_NO_ARRAYS_RETURNED = -2147205082,
			MOF_E_MUST_BE_IN_OR_OUT = -2147205081,
			MOF_E_INVALID_FLAGS_SYNTAX = -2147205080,
			MOF_E_EXPECTED_BRACE_OR_BAD_TYPE = -2147205079,
			MOF_E_UNSUPPORTED_CIMV22_QUAL_VALUE = -2147205078,
			MOF_E_UNSUPPORTED_CIMV22_DATA_TYPE = -2147205077,
			MOF_E_INVALID_DELETEINSTANCE_SYNTAX = -2147205076,
			MOF_E_INVALID_QUALIFIER_SYNTAX = -2147205075,
			MOF_E_QUALIFIER_USED_OUTSIDE_SCOPE = -2147205074,
			MOF_E_ERROR_CREATING_TEMP_FILE = -2147205073,
			MOF_E_ERROR_INVALID_INCLUDE_FILE = -2147205072,
			MOF_E_INVALID_DELETECLASS_SYNTAX = -2147205071,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WBEM_CONNECT_OPTIONS : int32
		{
			REPOSITORY_ONLY = 64,
			USE_MAX_WAIT = 128,
			PROVIDERS = 256,
		}
		[AllowDuplicates]
		public enum WBEM_UNSECAPP_FLAG_TYPE : int32
		{
			DEFAULT_CHECK_ACCESS = 0,
			CHECK_ACCESS = 1,
			DONT_CHECK_ACCESS = 2,
		}
		[AllowDuplicates]
		public enum WBEM_INFORMATION_FLAG_TYPE : int32
		{
			SHORT_NAME = 1,
			LONG_NAME = 2,
		}
		[AllowDuplicates]
		public enum WBEM_PROVIDER_REQUIREMENTS_TYPE : int32
		{
			START_POSTFILTER = 0,
			STOP_POSTFILTER = 1,
			RECHECK_SUBSCRIPTIONS = 2,
		}
		[AllowDuplicates]
		public enum WBEM_EXTRA_RETURN_CODES : int32
		{
			S_INITIALIZED = 0,
			S_LIMITED_SERVICE = 274433,
			S_INDIRECTLY_UPDATED = 274434,
			S_SUBJECT_TO_SDS = 274435,
			E_RETRY_LATER = -2147209215,
			E_RESOURCE_CONTENTION = -2147209214,
		}
		[AllowDuplicates]
		public enum WBEM_PROVIDER_FLAGS : int32
		{
			WBEM_FLAG_OWNER_UPDATE = 65536,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WbemQueryFlagEnum : int32
		{
			Deep = 0,
			Shallow = 1,
			Prototype = 2,
		}
		[AllowDuplicates]
		public enum WbemTextFlagEnum : int32
		{
			wbemTextFlagNoFlavors = 1,
		}
		[AllowDuplicates]
		public enum WbemTimeout : int32
		{
			wbemTimeoutInfinite = -1,
		}
		[AllowDuplicates]
		public enum WbemComparisonFlagEnum : int32
		{
			ncludeAll = 0,
			gnoreQualifiers = 1,
			gnoreObjectSource = 2,
			gnoreDefaultValues = 4,
			gnoreClass = 8,
			gnoreCase = 16,
			gnoreFlavor = 32,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WbemImpersonationLevelEnum : int32
		{
			Anonymous = 1,
			Identify = 2,
			Impersonate = 3,
			Delegate = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WbemObjectTextFormatEnum : int32
		{
			CIMDTD20 = 1,
			WMIDTD20 = 2,
		}
		[AllowDuplicates]
		public enum WbemConnectOptionsEnum : int32
		{
			wbemConnectFlagUseMaxWait = 128,
		}
		[AllowDuplicates]
		public enum tag_WBEM_LOGIN_TYPE : int32
		{
			FLAG_INPROC_LOGIN = 0,
			FLAG_LOCAL_LOGIN = 1,
			FLAG_REMOTE_LOGIN = 2,
			AUTHENTICATION_METHOD_MASK = 15,
			FLAG_USE_MULTIPLE_CHALLENGES = 16,
		}
		
		// --- Function Pointers ---
		
		public function void MI_MethodDecl_Invoke(void* self, MI_Context* context, uint16* nameSpace, uint16* className, uint16* methodName, MI_Instance* instanceName, MI_Instance* parameters);
		public function void MI_ProviderFT_Load(void** self, MI_Module_Self* selfModule, MI_Context* context);
		public function void MI_ProviderFT_Unload(void* self, MI_Context* context);
		public function void MI_ProviderFT_GetInstance(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* instanceName, MI_PropertySet* propertySet);
		public function void MI_ProviderFT_EnumerateInstances(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_CreateInstance(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* newInstance);
		public function void MI_ProviderFT_ModifyInstance(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* modifiedInstance, MI_PropertySet* propertySet);
		public function void MI_ProviderFT_DeleteInstance(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* instanceName);
		public function void MI_ProviderFT_AssociatorInstances(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* instanceName, uint16* resultClass, uint16* role, uint16* resultRole, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_ReferenceInstances(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Instance* instanceName, uint16* role, MI_PropertySet* propertySet, uint8 keysOnly, MI_Filter* filter);
		public function void MI_ProviderFT_EnableIndications(void* self, MI_Context* indicationsContext, uint16* nameSpace, uint16* className);
		public function void MI_ProviderFT_DisableIndications(void* self, MI_Context* indicationsContext, uint16* nameSpace, uint16* className);
		public function void MI_ProviderFT_Subscribe(void* self, MI_Context* context, uint16* nameSpace, uint16* className, MI_Filter* filter, uint16* bookmark, uint64 subscriptionID, void** subscriptionSelf);
		public function void MI_ProviderFT_Unsubscribe(void* self, MI_Context* context, uint16* nameSpace, uint16* className, uint64 subscriptionID, void* subscriptionSelf);
		public function void MI_ProviderFT_Invoke(void* self, MI_Context* context, uint16* nameSpace, uint16* className, uint16* methodName, MI_Instance* instanceName, MI_Instance* inputParameters);
		public function void MI_Module_Load(MI_Module_Self** self, MI_Context* context);
		public function void MI_Module_Unload(MI_Module_Self* self, MI_Context* context);
		public function void MI_CancelCallback(MI_CancellationReason reason, void* callbackData);
		public function MI_Module* MI_MainFunction(MI_Server* server);
		public function void MI_OperationCallback_PromptUser(MI_Operation* operation, void* callbackContext, uint16* message, MI_PromptType promptType, int promptUserResult);
		public function void MI_OperationCallback_WriteError(MI_Operation* operation, void* callbackContext, MI_Instance* instance, int writeErrorResult);
		public function void MI_OperationCallback_WriteMessage(MI_Operation* operation, void* callbackContext, uint32 channel, uint16* message);
		public function void MI_OperationCallback_WriteProgress(MI_Operation* operation, void* callbackContext, uint16* activity, uint16* currentOperation, uint16* statusDescription, uint32 percentageComplete, uint32 secondsRemaining);
		public function void MI_OperationCallback_Instance(MI_Operation* operation, void* callbackContext, MI_Instance* instance, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function void MI_OperationCallback_StreamedParameter(MI_Operation* operation, void* callbackContext, uint16* parameterName, MI_Type resultType, MI_Value* result, int resultAcknowledgement);
		public function void MI_OperationCallback_Indication(MI_Operation* operation, void* callbackContext, MI_Instance* instance, uint16* bookmark, uint16* machineID, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function void MI_OperationCallback_Class(MI_Operation* operation, void* callbackContext, MI_Class* classResult, uint8 moreResults, MI_Result resultCode, uint16* errorString, MI_Instance* errorDetails, int resultAcknowledgement);
		public function MI_Result MI_Deserializer_ClassObjectNeeded(void* context, uint16* serverName, uint16* namespaceName, uint16* className, MI_Class** requestedClassObject);
		
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
		public struct MI_Module_Self
		{
		}
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
			
			public HRESULT GetCount(uint32* puKeyCount) mut
			{
				return VT.GetCount(&this, puKeyCount);
			}
			public HRESULT SetKey(PWSTR wszName, uint32 uFlags, uint32 uCimType, void* pKeyVal) mut
			{
				return VT.SetKey(&this, wszName, uFlags, uCimType, pKeyVal);
			}
			public HRESULT SetKey2(PWSTR wszName, uint32 uFlags, uint32 uCimType, VARIANT* pKeyVal) mut
			{
				return VT.SetKey2(&this, wszName, uFlags, uCimType, pKeyVal);
			}
			public HRESULT GetKey(uint32 uKeyIx, uint32 uFlags, uint32* puNameBufSize, char16* pszKeyName, uint32* puKeyValBufSize, void* pKeyVal, uint32* puApparentCimType) mut
			{
				return VT.GetKey(&this, uKeyIx, uFlags, puNameBufSize, pszKeyName, puKeyValBufSize, pKeyVal, puApparentCimType);
			}
			public HRESULT GetKey2(uint32 uKeyIx, uint32 uFlags, uint32* puNameBufSize, char16* pszKeyName, VARIANT* pKeyValue, uint32* puApparentCimType) mut
			{
				return VT.GetKey2(&this, uKeyIx, uFlags, puNameBufSize, pszKeyName, pKeyValue, puApparentCimType);
			}
			public HRESULT RemoveKey(PWSTR wszName, uint32 uFlags) mut
			{
				return VT.RemoveKey(&this, wszName, uFlags);
			}
			public HRESULT RemoveAllKeys(uint32 uFlags) mut
			{
				return VT.RemoveAllKeys(&this, uFlags);
			}
			public HRESULT MakeSingleton(uint8 bSet) mut
			{
				return VT.MakeSingleton(&this, bSet);
			}
			public HRESULT GetInfo(uint32 uRequestedInfo, uint64* puResponse) mut
			{
				return VT.GetInfo(&this, uRequestedInfo, puResponse);
			}
			public HRESULT GetText(int32 lFlags, uint32* puBuffLength, char16* pszText) mut
			{
				return VT.GetText(&this, lFlags, puBuffLength, pszText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemPathKeyList *self, uint32* puKeyCount) GetCount;
				public new function HRESULT(IWbemPathKeyList *self, PWSTR wszName, uint32 uFlags, uint32 uCimType, void* pKeyVal) SetKey;
				public new function HRESULT(IWbemPathKeyList *self, PWSTR wszName, uint32 uFlags, uint32 uCimType, VARIANT* pKeyVal) SetKey2;
				public new function HRESULT(IWbemPathKeyList *self, uint32 uKeyIx, uint32 uFlags, uint32* puNameBufSize, char16* pszKeyName, uint32* puKeyValBufSize, void* pKeyVal, uint32* puApparentCimType) GetKey;
				public new function HRESULT(IWbemPathKeyList *self, uint32 uKeyIx, uint32 uFlags, uint32* puNameBufSize, char16* pszKeyName, VARIANT* pKeyValue, uint32* puApparentCimType) GetKey2;
				public new function HRESULT(IWbemPathKeyList *self, PWSTR wszName, uint32 uFlags) RemoveKey;
				public new function HRESULT(IWbemPathKeyList *self, uint32 uFlags) RemoveAllKeys;
				public new function HRESULT(IWbemPathKeyList *self, uint8 bSet) MakeSingleton;
				public new function HRESULT(IWbemPathKeyList *self, uint32 uRequestedInfo, uint64* puResponse) GetInfo;
				public new function HRESULT(IWbemPathKeyList *self, int32 lFlags, uint32* puBuffLength, char16* pszText) GetText;
			}
		}
		[CRepr]
		public struct IWbemPath : IUnknown
		{
			public const new Guid IID = .(0x3bc15af2, 0x736c, 0x477e, 0x9e, 0x51, 0x23, 0x8a, 0xf8, 0x66, 0x7d, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetText(uint32 uMode, PWSTR pszPath) mut
			{
				return VT.SetText(&this, uMode, pszPath);
			}
			public HRESULT GetText(int32 lFlags, uint32* puBuffLength, char16* pszText) mut
			{
				return VT.GetText(&this, lFlags, puBuffLength, pszText);
			}
			public HRESULT GetInfo(uint32 uRequestedInfo, uint64* puResponse) mut
			{
				return VT.GetInfo(&this, uRequestedInfo, puResponse);
			}
			public HRESULT SetServer(PWSTR Name) mut
			{
				return VT.SetServer(&this, Name);
			}
			public HRESULT GetServer(uint32* puNameBufLength, char16* pName) mut
			{
				return VT.GetServer(&this, puNameBufLength, pName);
			}
			public HRESULT GetNamespaceCount(uint32* puCount) mut
			{
				return VT.GetNamespaceCount(&this, puCount);
			}
			public HRESULT SetNamespaceAt(uint32 uIndex, PWSTR pszName) mut
			{
				return VT.SetNamespaceAt(&this, uIndex, pszName);
			}
			public HRESULT GetNamespaceAt(uint32 uIndex, uint32* puNameBufLength, char16* pName) mut
			{
				return VT.GetNamespaceAt(&this, uIndex, puNameBufLength, pName);
			}
			public HRESULT RemoveNamespaceAt(uint32 uIndex) mut
			{
				return VT.RemoveNamespaceAt(&this, uIndex);
			}
			public HRESULT RemoveAllNamespaces() mut
			{
				return VT.RemoveAllNamespaces(&this);
			}
			public HRESULT GetScopeCount(uint32* puCount) mut
			{
				return VT.GetScopeCount(&this, puCount);
			}
			public HRESULT SetScope(uint32 uIndex, PWSTR pszClass) mut
			{
				return VT.SetScope(&this, uIndex, pszClass);
			}
			public HRESULT SetScopeFromText(uint32 uIndex, PWSTR pszText) mut
			{
				return VT.SetScopeFromText(&this, uIndex, pszText);
			}
			public HRESULT GetScope(uint32 uIndex, uint32* puClassNameBufSize, char16* pszClass, IWbemPathKeyList** pKeyList) mut
			{
				return VT.GetScope(&this, uIndex, puClassNameBufSize, pszClass, pKeyList);
			}
			public HRESULT GetScopeAsText(uint32 uIndex, uint32* puTextBufSize, char16* pszText) mut
			{
				return VT.GetScopeAsText(&this, uIndex, puTextBufSize, pszText);
			}
			public HRESULT RemoveScope(uint32 uIndex) mut
			{
				return VT.RemoveScope(&this, uIndex);
			}
			public HRESULT RemoveAllScopes() mut
			{
				return VT.RemoveAllScopes(&this);
			}
			public HRESULT SetClassName(PWSTR Name) mut
			{
				return VT.SetClassName(&this, Name);
			}
			public HRESULT GetClassName(uint32* puBuffLength, char16* pszName) mut
			{
				return VT.GetClassName(&this, puBuffLength, pszName);
			}
			public HRESULT GetKeyList(IWbemPathKeyList** pOut) mut
			{
				return VT.GetKeyList(&this, pOut);
			}
			public HRESULT CreateClassPart(int32 lFlags, PWSTR Name) mut
			{
				return VT.CreateClassPart(&this, lFlags, Name);
			}
			public HRESULT DeleteClassPart(int32 lFlags) mut
			{
				return VT.DeleteClassPart(&this, lFlags);
			}
			public BOOL IsRelative(PWSTR wszMachine, PWSTR wszNamespace) mut
			{
				return VT.IsRelative(&this, wszMachine, wszNamespace);
			}
			public BOOL IsRelativeOrChild(PWSTR wszMachine, PWSTR wszNamespace, int32 lFlags) mut
			{
				return VT.IsRelativeOrChild(&this, wszMachine, wszNamespace, lFlags);
			}
			public BOOL IsLocal(PWSTR wszMachine) mut
			{
				return VT.IsLocal(&this, wszMachine);
			}
			public BOOL IsSameClassName(PWSTR wszClass) mut
			{
				return VT.IsSameClassName(&this, wszClass);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemPath *self, uint32 uMode, PWSTR pszPath) SetText;
				public new function HRESULT(IWbemPath *self, int32 lFlags, uint32* puBuffLength, char16* pszText) GetText;
				public new function HRESULT(IWbemPath *self, uint32 uRequestedInfo, uint64* puResponse) GetInfo;
				public new function HRESULT(IWbemPath *self, PWSTR Name) SetServer;
				public new function HRESULT(IWbemPath *self, uint32* puNameBufLength, char16* pName) GetServer;
				public new function HRESULT(IWbemPath *self, uint32* puCount) GetNamespaceCount;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, PWSTR pszName) SetNamespaceAt;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, uint32* puNameBufLength, char16* pName) GetNamespaceAt;
				public new function HRESULT(IWbemPath *self, uint32 uIndex) RemoveNamespaceAt;
				public new function HRESULT(IWbemPath *self) RemoveAllNamespaces;
				public new function HRESULT(IWbemPath *self, uint32* puCount) GetScopeCount;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, PWSTR pszClass) SetScope;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, PWSTR pszText) SetScopeFromText;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, uint32* puClassNameBufSize, char16* pszClass, IWbemPathKeyList** pKeyList) GetScope;
				public new function HRESULT(IWbemPath *self, uint32 uIndex, uint32* puTextBufSize, char16* pszText) GetScopeAsText;
				public new function HRESULT(IWbemPath *self, uint32 uIndex) RemoveScope;
				public new function HRESULT(IWbemPath *self) RemoveAllScopes;
				public new function HRESULT(IWbemPath *self, PWSTR Name) SetClassName;
				public new function HRESULT(IWbemPath *self, uint32* puBuffLength, char16* pszName) GetClassName;
				public new function HRESULT(IWbemPath *self, IWbemPathKeyList** pOut) GetKeyList;
				public new function HRESULT(IWbemPath *self, int32 lFlags, PWSTR Name) CreateClassPart;
				public new function HRESULT(IWbemPath *self, int32 lFlags) DeleteClassPart;
				public new function BOOL(IWbemPath *self, PWSTR wszMachine, PWSTR wszNamespace) IsRelative;
				public new function BOOL(IWbemPath *self, PWSTR wszMachine, PWSTR wszNamespace, int32 lFlags) IsRelativeOrChild;
				public new function BOOL(IWbemPath *self, PWSTR wszMachine) IsLocal;
				public new function BOOL(IWbemPath *self, PWSTR wszClass) IsSameClassName;
			}
		}
		[CRepr]
		public struct IWbemQuery : IUnknown
		{
			public const new Guid IID = .(0x81166f58, 0xdd98, 0x11d3, 0xa1, 0x20, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Empty() mut
			{
				return VT.Empty(&this);
			}
			public HRESULT SetLanguageFeatures(uint32 uFlags, uint32 uArraySize, uint32* puFeatures) mut
			{
				return VT.SetLanguageFeatures(&this, uFlags, uArraySize, puFeatures);
			}
			public HRESULT TestLanguageFeatures(uint32 uFlags, uint32* uArraySize, uint32* puFeatures) mut
			{
				return VT.TestLanguageFeatures(&this, uFlags, uArraySize, puFeatures);
			}
			public HRESULT Parse(PWSTR pszLang, PWSTR pszQuery, uint32 uFlags) mut
			{
				return VT.Parse(&this, pszLang, pszQuery, uFlags);
			}
			public HRESULT GetAnalysis(uint32 uAnalysisType, uint32 uFlags, void** pAnalysis) mut
			{
				return VT.GetAnalysis(&this, uAnalysisType, uFlags, pAnalysis);
			}
			public HRESULT FreeMemory(void* pMem) mut
			{
				return VT.FreeMemory(&this, pMem);
			}
			public HRESULT GetQueryInfo(uint32 uAnalysisType, uint32 uInfoId, uint32 uBufSize, void* pDestBuf) mut
			{
				return VT.GetQueryInfo(&this, uAnalysisType, uInfoId, uBufSize, pDestBuf);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemQuery *self) Empty;
				public new function HRESULT(IWbemQuery *self, uint32 uFlags, uint32 uArraySize, uint32* puFeatures) SetLanguageFeatures;
				public new function HRESULT(IWbemQuery *self, uint32 uFlags, uint32* uArraySize, uint32* puFeatures) TestLanguageFeatures;
				public new function HRESULT(IWbemQuery *self, PWSTR pszLang, PWSTR pszQuery, uint32 uFlags) Parse;
				public new function HRESULT(IWbemQuery *self, uint32 uAnalysisType, uint32 uFlags, void** pAnalysis) GetAnalysis;
				public new function HRESULT(IWbemQuery *self, void* pMem) FreeMemory;
				public new function HRESULT(IWbemQuery *self, uint32 uAnalysisType, uint32 uInfoId, uint32 uBufSize, void* pDestBuf) GetQueryInfo;
			}
		}
		[CRepr]
		public struct IWbemClassObject : IUnknown
		{
			public const new Guid IID = .(0xdc12a681, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetQualifierSet(IWbemQualifierSet** ppQualSet) mut
			{
				return VT.GetQualifierSet(&this, ppQualSet);
			}
			public HRESULT Get(PWSTR wszName, int32 lFlags, VARIANT* pVal, int32* pType, int32* plFlavor) mut
			{
				return VT.Get(&this, wszName, lFlags, pVal, pType, plFlavor);
			}
			public HRESULT Put(PWSTR wszName, int32 lFlags, VARIANT* pVal, int32 Type) mut
			{
				return VT.Put(&this, wszName, lFlags, pVal, Type);
			}
			public HRESULT Delete(PWSTR wszName) mut
			{
				return VT.Delete(&this, wszName);
			}
			public HRESULT GetNames(PWSTR wszQualifierName, int32 lFlags, VARIANT* pQualifierVal, SAFEARRAY** pNames) mut
			{
				return VT.GetNames(&this, wszQualifierName, lFlags, pQualifierVal, pNames);
			}
			public HRESULT BeginEnumeration(int32 lEnumFlags) mut
			{
				return VT.BeginEnumeration(&this, lEnumFlags);
			}
			public HRESULT Next(int32 lFlags, BSTR* strName, VARIANT* pVal, int32* pType, int32* plFlavor) mut
			{
				return VT.Next(&this, lFlags, strName, pVal, pType, plFlavor);
			}
			public HRESULT EndEnumeration() mut
			{
				return VT.EndEnumeration(&this);
			}
			public HRESULT GetPropertyQualifierSet(PWSTR wszProperty, IWbemQualifierSet** ppQualSet) mut
			{
				return VT.GetPropertyQualifierSet(&this, wszProperty, ppQualSet);
			}
			public HRESULT Clone(IWbemClassObject** ppCopy) mut
			{
				return VT.Clone(&this, ppCopy);
			}
			public HRESULT GetObjectText(int32 lFlags, BSTR* pstrObjectText) mut
			{
				return VT.GetObjectText(&this, lFlags, pstrObjectText);
			}
			public HRESULT SpawnDerivedClass(int32 lFlags, IWbemClassObject** ppNewClass) mut
			{
				return VT.SpawnDerivedClass(&this, lFlags, ppNewClass);
			}
			public HRESULT SpawnInstance(int32 lFlags, IWbemClassObject** ppNewInstance) mut
			{
				return VT.SpawnInstance(&this, lFlags, ppNewInstance);
			}
			public HRESULT CompareTo(int32 lFlags, IWbemClassObject* pCompareTo) mut
			{
				return VT.CompareTo(&this, lFlags, pCompareTo);
			}
			public HRESULT GetPropertyOrigin(PWSTR wszName, BSTR* pstrClassName) mut
			{
				return VT.GetPropertyOrigin(&this, wszName, pstrClassName);
			}
			public HRESULT InheritsFrom(PWSTR strAncestor) mut
			{
				return VT.InheritsFrom(&this, strAncestor);
			}
			public HRESULT GetMethod(PWSTR wszName, int32 lFlags, IWbemClassObject** ppInSignature, IWbemClassObject** ppOutSignature) mut
			{
				return VT.GetMethod(&this, wszName, lFlags, ppInSignature, ppOutSignature);
			}
			public HRESULT PutMethod(PWSTR wszName, int32 lFlags, IWbemClassObject* pInSignature, IWbemClassObject* pOutSignature) mut
			{
				return VT.PutMethod(&this, wszName, lFlags, pInSignature, pOutSignature);
			}
			public HRESULT DeleteMethod(PWSTR wszName) mut
			{
				return VT.DeleteMethod(&this, wszName);
			}
			public HRESULT BeginMethodEnumeration(int32 lEnumFlags) mut
			{
				return VT.BeginMethodEnumeration(&this, lEnumFlags);
			}
			public HRESULT NextMethod(int32 lFlags, BSTR* pstrName, IWbemClassObject** ppInSignature, IWbemClassObject** ppOutSignature) mut
			{
				return VT.NextMethod(&this, lFlags, pstrName, ppInSignature, ppOutSignature);
			}
			public HRESULT EndMethodEnumeration() mut
			{
				return VT.EndMethodEnumeration(&this);
			}
			public HRESULT GetMethodQualifierSet(PWSTR wszMethod, IWbemQualifierSet** ppQualSet) mut
			{
				return VT.GetMethodQualifierSet(&this, wszMethod, ppQualSet);
			}
			public HRESULT GetMethodOrigin(PWSTR wszMethodName, BSTR* pstrClassName) mut
			{
				return VT.GetMethodOrigin(&this, wszMethodName, pstrClassName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemClassObject *self, IWbemQualifierSet** ppQualSet) GetQualifierSet;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName, int32 lFlags, VARIANT* pVal, int32* pType, int32* plFlavor) Get;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName, int32 lFlags, VARIANT* pVal, int32 Type) Put;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName) Delete;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszQualifierName, int32 lFlags, VARIANT* pQualifierVal, SAFEARRAY** pNames) GetNames;
				public new function HRESULT(IWbemClassObject *self, int32 lEnumFlags) BeginEnumeration;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, BSTR* strName, VARIANT* pVal, int32* pType, int32* plFlavor) Next;
				public new function HRESULT(IWbemClassObject *self) EndEnumeration;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszProperty, IWbemQualifierSet** ppQualSet) GetPropertyQualifierSet;
				public new function HRESULT(IWbemClassObject *self, IWbemClassObject** ppCopy) Clone;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, BSTR* pstrObjectText) GetObjectText;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, IWbemClassObject** ppNewClass) SpawnDerivedClass;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, IWbemClassObject** ppNewInstance) SpawnInstance;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, IWbemClassObject* pCompareTo) CompareTo;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName, BSTR* pstrClassName) GetPropertyOrigin;
				public new function HRESULT(IWbemClassObject *self, PWSTR strAncestor) InheritsFrom;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName, int32 lFlags, IWbemClassObject** ppInSignature, IWbemClassObject** ppOutSignature) GetMethod;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName, int32 lFlags, IWbemClassObject* pInSignature, IWbemClassObject* pOutSignature) PutMethod;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszName) DeleteMethod;
				public new function HRESULT(IWbemClassObject *self, int32 lEnumFlags) BeginMethodEnumeration;
				public new function HRESULT(IWbemClassObject *self, int32 lFlags, BSTR* pstrName, IWbemClassObject** ppInSignature, IWbemClassObject** ppOutSignature) NextMethod;
				public new function HRESULT(IWbemClassObject *self) EndMethodEnumeration;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszMethod, IWbemQualifierSet** ppQualSet) GetMethodQualifierSet;
				public new function HRESULT(IWbemClassObject *self, PWSTR wszMethodName, BSTR* pstrClassName) GetMethodOrigin;
			}
		}
		[CRepr]
		public struct IWbemObjectAccess : IWbemClassObject
		{
			public const new Guid IID = .(0x49353c9a, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyHandle(PWSTR wszPropertyName, int32* pType, int32* plHandle) mut
			{
				return VT.GetPropertyHandle(&this, wszPropertyName, pType, plHandle);
			}
			public HRESULT WritePropertyValue(int32 lHandle, int32 lNumBytes, uint8* aData) mut
			{
				return VT.WritePropertyValue(&this, lHandle, lNumBytes, aData);
			}
			public HRESULT ReadPropertyValue(int32 lHandle, int32 lBufferSize, int32* plNumBytes, uint8* aData) mut
			{
				return VT.ReadPropertyValue(&this, lHandle, lBufferSize, plNumBytes, aData);
			}
			public HRESULT ReadDWORD(int32 lHandle, uint32* pdw) mut
			{
				return VT.ReadDWORD(&this, lHandle, pdw);
			}
			public HRESULT WriteDWORD(int32 lHandle, uint32 dw) mut
			{
				return VT.WriteDWORD(&this, lHandle, dw);
			}
			public HRESULT ReadQWORD(int32 lHandle, uint64* pqw) mut
			{
				return VT.ReadQWORD(&this, lHandle, pqw);
			}
			public HRESULT WriteQWORD(int32 lHandle, uint64 pw) mut
			{
				return VT.WriteQWORD(&this, lHandle, pw);
			}
			public HRESULT GetPropertyInfoByHandle(int32 lHandle, BSTR* pstrName, int32* pType) mut
			{
				return VT.GetPropertyInfoByHandle(&this, lHandle, pstrName, pType);
			}
			public HRESULT Lock(int32 lFlags) mut
			{
				return VT.Lock(&this, lFlags);
			}
			public HRESULT Unlock(int32 lFlags) mut
			{
				return VT.Unlock(&this, lFlags);
			}
			[CRepr]
			public struct VTable : IWbemClassObject.VTable
			{
				public new function HRESULT(IWbemObjectAccess *self, PWSTR wszPropertyName, int32* pType, int32* plHandle) GetPropertyHandle;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, int32 lNumBytes, uint8* aData) WritePropertyValue;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, int32 lBufferSize, int32* plNumBytes, uint8* aData) ReadPropertyValue;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, uint32* pdw) ReadDWORD;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, uint32 dw) WriteDWORD;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, uint64* pqw) ReadQWORD;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, uint64 pw) WriteQWORD;
				public new function HRESULT(IWbemObjectAccess *self, int32 lHandle, BSTR* pstrName, int32* pType) GetPropertyInfoByHandle;
				public new function HRESULT(IWbemObjectAccess *self, int32 lFlags) Lock;
				public new function HRESULT(IWbemObjectAccess *self, int32 lFlags) Unlock;
			}
		}
		[CRepr]
		public struct IWbemQualifierSet : IUnknown
		{
			public const new Guid IID = .(0xdc12a680, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(PWSTR wszName, int32 lFlags, VARIANT* pVal, int32* plFlavor) mut
			{
				return VT.Get(&this, wszName, lFlags, pVal, plFlavor);
			}
			public HRESULT Put(PWSTR wszName, VARIANT* pVal, int32 lFlavor) mut
			{
				return VT.Put(&this, wszName, pVal, lFlavor);
			}
			public HRESULT Delete(PWSTR wszName) mut
			{
				return VT.Delete(&this, wszName);
			}
			public HRESULT GetNames(int32 lFlags, SAFEARRAY** pNames) mut
			{
				return VT.GetNames(&this, lFlags, pNames);
			}
			public HRESULT BeginEnumeration(int32 lFlags) mut
			{
				return VT.BeginEnumeration(&this, lFlags);
			}
			public HRESULT Next(int32 lFlags, BSTR* pstrName, VARIANT* pVal, int32* plFlavor) mut
			{
				return VT.Next(&this, lFlags, pstrName, pVal, plFlavor);
			}
			public HRESULT EndEnumeration() mut
			{
				return VT.EndEnumeration(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemQualifierSet *self, PWSTR wszName, int32 lFlags, VARIANT* pVal, int32* plFlavor) Get;
				public new function HRESULT(IWbemQualifierSet *self, PWSTR wszName, VARIANT* pVal, int32 lFlavor) Put;
				public new function HRESULT(IWbemQualifierSet *self, PWSTR wszName) Delete;
				public new function HRESULT(IWbemQualifierSet *self, int32 lFlags, SAFEARRAY** pNames) GetNames;
				public new function HRESULT(IWbemQualifierSet *self, int32 lFlags) BeginEnumeration;
				public new function HRESULT(IWbemQualifierSet *self, int32 lFlags, BSTR* pstrName, VARIANT* pVal, int32* plFlavor) Next;
				public new function HRESULT(IWbemQualifierSet *self) EndEnumeration;
			}
		}
		[CRepr]
		public struct IWbemServices : IUnknown
		{
			public const new Guid IID = .(0x9556dc99, 0x828c, 0x11cf, 0xa3, 0x7e, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenNamespace(BSTR strNamespace, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppWorkingNamespace, IWbemCallResult** ppResult) mut
			{
				return VT.OpenNamespace(&this, strNamespace, lFlags, pCtx, ppWorkingNamespace, ppResult);
			}
			public HRESULT CancelAsyncCall(IWbemObjectSink* pSink) mut
			{
				return VT.CancelAsyncCall(&this, pSink);
			}
			public HRESULT QueryObjectSink(int32 lFlags, IWbemObjectSink** ppResponseHandler) mut
			{
				return VT.QueryObjectSink(&this, lFlags, ppResponseHandler);
			}
			public HRESULT GetObject(BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemClassObject** ppObject, IWbemCallResult** ppCallResult) mut
			{
				return VT.GetObject(&this, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);
			}
			public HRESULT GetObjectAsync(BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.GetObjectAsync(&this, strObjectPath, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT PutClass(IWbemClassObject* pObject, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) mut
			{
				return VT.PutClass(&this, pObject, lFlags, pCtx, ppCallResult);
			}
			public HRESULT PutClassAsync(IWbemClassObject* pObject, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.PutClassAsync(&this, pObject, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT DeleteClass(BSTR strClass, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) mut
			{
				return VT.DeleteClass(&this, strClass, lFlags, pCtx, ppCallResult);
			}
			public HRESULT DeleteClassAsync(BSTR strClass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.DeleteClassAsync(&this, strClass, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT CreateClassEnum(BSTR strSuperclass, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) mut
			{
				return VT.CreateClassEnum(&this, strSuperclass, lFlags, pCtx, ppEnum);
			}
			public HRESULT CreateClassEnumAsync(BSTR strSuperclass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.CreateClassEnumAsync(&this, strSuperclass, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT PutInstance(IWbemClassObject* pInst, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) mut
			{
				return VT.PutInstance(&this, pInst, lFlags, pCtx, ppCallResult);
			}
			public HRESULT PutInstanceAsync(IWbemClassObject* pInst, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.PutInstanceAsync(&this, pInst, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT DeleteInstance(BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) mut
			{
				return VT.DeleteInstance(&this, strObjectPath, lFlags, pCtx, ppCallResult);
			}
			public HRESULT DeleteInstanceAsync(BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.DeleteInstanceAsync(&this, strObjectPath, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT CreateInstanceEnum(BSTR strFilter, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) mut
			{
				return VT.CreateInstanceEnum(&this, strFilter, lFlags, pCtx, ppEnum);
			}
			public HRESULT CreateInstanceEnumAsync(BSTR strFilter, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.CreateInstanceEnumAsync(&this, strFilter, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT ExecQuery(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) mut
			{
				return VT.ExecQuery(&this, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);
			}
			public HRESULT ExecQueryAsync(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.ExecQueryAsync(&this, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT ExecNotificationQuery(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) mut
			{
				return VT.ExecNotificationQuery(&this, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);
			}
			public HRESULT ExecNotificationQueryAsync(BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.ExecNotificationQueryAsync(&this, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);
			}
			public HRESULT ExecMethod(BSTR strObjectPath, BSTR strMethodName, int32 lFlags, IWbemContext* pCtx, IWbemClassObject* pInParams, IWbemClassObject** ppOutParams, IWbemCallResult** ppCallResult) mut
			{
				return VT.ExecMethod(&this, strObjectPath, strMethodName, lFlags, pCtx, pInParams, ppOutParams, ppCallResult);
			}
			public HRESULT ExecMethodAsync(BSTR strObjectPath, BSTR strMethodName, int32 lFlags, IWbemContext* pCtx, IWbemClassObject* pInParams, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.ExecMethodAsync(&this, strObjectPath, strMethodName, lFlags, pCtx, pInParams, pResponseHandler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemServices *self, BSTR strNamespace, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppWorkingNamespace, IWbemCallResult** ppResult) OpenNamespace;
				public new function HRESULT(IWbemServices *self, IWbemObjectSink* pSink) CancelAsyncCall;
				public new function HRESULT(IWbemServices *self, int32 lFlags, IWbemObjectSink** ppResponseHandler) QueryObjectSink;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemClassObject** ppObject, IWbemCallResult** ppCallResult) GetObject;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) GetObjectAsync;
				public new function HRESULT(IWbemServices *self, IWbemClassObject* pObject, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) PutClass;
				public new function HRESULT(IWbemServices *self, IWbemClassObject* pObject, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) PutClassAsync;
				public new function HRESULT(IWbemServices *self, BSTR strClass, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) DeleteClass;
				public new function HRESULT(IWbemServices *self, BSTR strClass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) DeleteClassAsync;
				public new function HRESULT(IWbemServices *self, BSTR strSuperclass, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) CreateClassEnum;
				public new function HRESULT(IWbemServices *self, BSTR strSuperclass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) CreateClassEnumAsync;
				public new function HRESULT(IWbemServices *self, IWbemClassObject* pInst, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) PutInstance;
				public new function HRESULT(IWbemServices *self, IWbemClassObject* pInst, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) PutInstanceAsync;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemCallResult** ppCallResult) DeleteInstance;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) DeleteInstanceAsync;
				public new function HRESULT(IWbemServices *self, BSTR strFilter, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) CreateInstanceEnum;
				public new function HRESULT(IWbemServices *self, BSTR strFilter, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) CreateInstanceEnumAsync;
				public new function HRESULT(IWbemServices *self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) ExecQuery;
				public new function HRESULT(IWbemServices *self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) ExecQueryAsync;
				public new function HRESULT(IWbemServices *self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IEnumWbemClassObject** ppEnum) ExecNotificationQuery;
				public new function HRESULT(IWbemServices *self, BSTR strQueryLanguage, BSTR strQuery, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pResponseHandler) ExecNotificationQueryAsync;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, BSTR strMethodName, int32 lFlags, IWbemContext* pCtx, IWbemClassObject* pInParams, IWbemClassObject** ppOutParams, IWbemCallResult** ppCallResult) ExecMethod;
				public new function HRESULT(IWbemServices *self, BSTR strObjectPath, BSTR strMethodName, int32 lFlags, IWbemContext* pCtx, IWbemClassObject* pInParams, IWbemObjectSink* pResponseHandler) ExecMethodAsync;
			}
		}
		[CRepr]
		public struct IWbemLocator : IUnknown
		{
			public const new Guid IID = .(0xdc12a687, 0x737f, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, IWbemContext* pCtx, IWbemServices** ppNamespace) mut
			{
				return VT.ConnectServer(&this, strNetworkResource, strUser, strPassword, strLocale, lSecurityFlags, strAuthority, pCtx, ppNamespace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemLocator *self, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, IWbemContext* pCtx, IWbemServices** ppNamespace) ConnectServer;
			}
		}
		[CRepr]
		public struct IWbemObjectSink : IUnknown
		{
			public const new Guid IID = .(0x7c857801, 0x7381, 0x11cf, 0x88, 0x4d, 0x00, 0xaa, 0x00, 0x4b, 0x2e, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Indicate(int32 lObjectCount, IWbemClassObject** apObjArray) mut
			{
				return VT.Indicate(&this, lObjectCount, apObjArray);
			}
			public HRESULT SetStatus(int32 lFlags, HRESULT hResult, BSTR strParam, IWbemClassObject* pObjParam) mut
			{
				return VT.SetStatus(&this, lFlags, hResult, strParam, pObjParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemObjectSink *self, int32 lObjectCount, IWbemClassObject** apObjArray) Indicate;
				public new function HRESULT(IWbemObjectSink *self, int32 lFlags, HRESULT hResult, BSTR strParam, IWbemClassObject* pObjParam) SetStatus;
			}
		}
		[CRepr]
		public struct IEnumWbemClassObject : IUnknown
		{
			public const new Guid IID = .(0x027947e1, 0xd731, 0x11ce, 0xa3, 0x57, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Next(int32 lTimeout, uint32 uCount, IWbemClassObject** apObjects, uint32* puReturned) mut
			{
				return VT.Next(&this, lTimeout, uCount, apObjects, puReturned);
			}
			public HRESULT NextAsync(uint32 uCount, IWbemObjectSink* pSink) mut
			{
				return VT.NextAsync(&this, uCount, pSink);
			}
			public HRESULT Clone(IEnumWbemClassObject** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Skip(int32 lTimeout, uint32 nCount) mut
			{
				return VT.Skip(&this, lTimeout, nCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumWbemClassObject *self) Reset;
				public new function HRESULT(IEnumWbemClassObject *self, int32 lTimeout, uint32 uCount, IWbemClassObject** apObjects, uint32* puReturned) Next;
				public new function HRESULT(IEnumWbemClassObject *self, uint32 uCount, IWbemObjectSink* pSink) NextAsync;
				public new function HRESULT(IEnumWbemClassObject *self, IEnumWbemClassObject** ppEnum) Clone;
				public new function HRESULT(IEnumWbemClassObject *self, int32 lTimeout, uint32 nCount) Skip;
			}
		}
		[CRepr]
		public struct IWbemCallResult : IUnknown
		{
			public const new Guid IID = .(0x44aca675, 0xe8fc, 0x11d0, 0xa0, 0x7c, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResultObject(int32 lTimeout, IWbemClassObject** ppResultObject) mut
			{
				return VT.GetResultObject(&this, lTimeout, ppResultObject);
			}
			public HRESULT GetResultString(int32 lTimeout, BSTR* pstrResultString) mut
			{
				return VT.GetResultString(&this, lTimeout, pstrResultString);
			}
			public HRESULT GetResultServices(int32 lTimeout, IWbemServices** ppServices) mut
			{
				return VT.GetResultServices(&this, lTimeout, ppServices);
			}
			public HRESULT GetCallStatus(int32 lTimeout, int32* plStatus) mut
			{
				return VT.GetCallStatus(&this, lTimeout, plStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemCallResult *self, int32 lTimeout, IWbemClassObject** ppResultObject) GetResultObject;
				public new function HRESULT(IWbemCallResult *self, int32 lTimeout, BSTR* pstrResultString) GetResultString;
				public new function HRESULT(IWbemCallResult *self, int32 lTimeout, IWbemServices** ppServices) GetResultServices;
				public new function HRESULT(IWbemCallResult *self, int32 lTimeout, int32* plStatus) GetCallStatus;
			}
		}
		[CRepr]
		public struct IWbemContext : IUnknown
		{
			public const new Guid IID = .(0x44aca674, 0xe8fc, 0x11d0, 0xa0, 0x7c, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IWbemContext** ppNewCopy) mut
			{
				return VT.Clone(&this, ppNewCopy);
			}
			public HRESULT GetNames(int32 lFlags, SAFEARRAY** pNames) mut
			{
				return VT.GetNames(&this, lFlags, pNames);
			}
			public HRESULT BeginEnumeration(int32 lFlags) mut
			{
				return VT.BeginEnumeration(&this, lFlags);
			}
			public HRESULT Next(int32 lFlags, BSTR* pstrName, VARIANT* pValue) mut
			{
				return VT.Next(&this, lFlags, pstrName, pValue);
			}
			public HRESULT EndEnumeration() mut
			{
				return VT.EndEnumeration(&this);
			}
			public HRESULT SetValue(PWSTR wszName, int32 lFlags, VARIANT* pValue) mut
			{
				return VT.SetValue(&this, wszName, lFlags, pValue);
			}
			public HRESULT GetValue(PWSTR wszName, int32 lFlags, VARIANT* pValue) mut
			{
				return VT.GetValue(&this, wszName, lFlags, pValue);
			}
			public HRESULT DeleteValue(PWSTR wszName, int32 lFlags) mut
			{
				return VT.DeleteValue(&this, wszName, lFlags);
			}
			public HRESULT DeleteAll() mut
			{
				return VT.DeleteAll(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemContext *self, IWbemContext** ppNewCopy) Clone;
				public new function HRESULT(IWbemContext *self, int32 lFlags, SAFEARRAY** pNames) GetNames;
				public new function HRESULT(IWbemContext *self, int32 lFlags) BeginEnumeration;
				public new function HRESULT(IWbemContext *self, int32 lFlags, BSTR* pstrName, VARIANT* pValue) Next;
				public new function HRESULT(IWbemContext *self) EndEnumeration;
				public new function HRESULT(IWbemContext *self, PWSTR wszName, int32 lFlags, VARIANT* pValue) SetValue;
				public new function HRESULT(IWbemContext *self, PWSTR wszName, int32 lFlags, VARIANT* pValue) GetValue;
				public new function HRESULT(IWbemContext *self, PWSTR wszName, int32 lFlags) DeleteValue;
				public new function HRESULT(IWbemContext *self) DeleteAll;
			}
		}
		[CRepr]
		public struct IUnsecuredApartment : IUnknown
		{
			public const new Guid IID = .(0x1cfaba8c, 0x1523, 0x11d1, 0xad, 0x79, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObjectStub(IUnknown* pObject, IUnknown** ppStub) mut
			{
				return VT.CreateObjectStub(&this, pObject, ppStub);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUnsecuredApartment *self, IUnknown* pObject, IUnknown** ppStub) CreateObjectStub;
			}
		}
		[CRepr]
		public struct IWbemUnsecuredApartment : IUnsecuredApartment
		{
			public const new Guid IID = .(0x31739d04, 0x3471, 0x4cf4, 0x9a, 0x7c, 0x57, 0xa4, 0x4a, 0xe7, 0x19, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSinkStub(IWbemObjectSink* pSink, uint32 dwFlags, PWSTR wszReserved, IWbemObjectSink** ppStub) mut
			{
				return VT.CreateSinkStub(&this, pSink, dwFlags, wszReserved, ppStub);
			}
			[CRepr]
			public struct VTable : IUnsecuredApartment.VTable
			{
				public new function HRESULT(IWbemUnsecuredApartment *self, IWbemObjectSink* pSink, uint32 dwFlags, PWSTR wszReserved, IWbemObjectSink** ppStub) CreateSinkStub;
			}
		}
		[CRepr]
		public struct IWbemStatusCodeText : IUnknown
		{
			public const new Guid IID = .(0xeb87e1bc, 0x3233, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetErrorCodeText(HRESULT hRes, uint32 LocaleId, int32 lFlags, BSTR* MessageText) mut
			{
				return VT.GetErrorCodeText(&this, hRes, LocaleId, lFlags, MessageText);
			}
			public HRESULT GetFacilityCodeText(HRESULT hRes, uint32 LocaleId, int32 lFlags, BSTR* MessageText) mut
			{
				return VT.GetFacilityCodeText(&this, hRes, LocaleId, lFlags, MessageText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemStatusCodeText *self, HRESULT hRes, uint32 LocaleId, int32 lFlags, BSTR* MessageText) GetErrorCodeText;
				public new function HRESULT(IWbemStatusCodeText *self, HRESULT hRes, uint32 LocaleId, int32 lFlags, BSTR* MessageText) GetFacilityCodeText;
			}
		}
		[CRepr]
		public struct IWbemBackupRestore : IUnknown
		{
			public const new Guid IID = .(0xc49e32c7, 0xbc8b, 0x11d2, 0x85, 0xd4, 0x00, 0x10, 0x5a, 0x1f, 0x83, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Backup(PWSTR strBackupToFile, int32 lFlags) mut
			{
				return VT.Backup(&this, strBackupToFile, lFlags);
			}
			public HRESULT Restore(PWSTR strRestoreFromFile, int32 lFlags) mut
			{
				return VT.Restore(&this, strRestoreFromFile, lFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemBackupRestore *self, PWSTR strBackupToFile, int32 lFlags) Backup;
				public new function HRESULT(IWbemBackupRestore *self, PWSTR strRestoreFromFile, int32 lFlags) Restore;
			}
		}
		[CRepr]
		public struct IWbemBackupRestoreEx : IWbemBackupRestore
		{
			public const new Guid IID = .(0xa359dec5, 0xe813, 0x4834, 0x8a, 0x2a, 0xba, 0x7f, 0x1d, 0x77, 0x7d, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			[CRepr]
			public struct VTable : IWbemBackupRestore.VTable
			{
				public new function HRESULT(IWbemBackupRestoreEx *self) Pause;
				public new function HRESULT(IWbemBackupRestoreEx *self) Resume;
			}
		}
		[CRepr]
		public struct IWbemRefresher : IUnknown
		{
			public const new Guid IID = .(0x49353c99, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Refresh(int32 lFlags) mut
			{
				return VT.Refresh(&this, lFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemRefresher *self, int32 lFlags) Refresh;
			}
		}
		[CRepr]
		public struct IWbemHiPerfEnum : IUnknown
		{
			public const new Guid IID = .(0x2705c288, 0x79ae, 0x11d2, 0xb3, 0x48, 0x00, 0x10, 0x5a, 0x1f, 0x81, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddObjects(int32 lFlags, uint32 uNumObjects, int32* apIds, IWbemObjectAccess** apObj) mut
			{
				return VT.AddObjects(&this, lFlags, uNumObjects, apIds, apObj);
			}
			public HRESULT RemoveObjects(int32 lFlags, uint32 uNumObjects, int32* apIds) mut
			{
				return VT.RemoveObjects(&this, lFlags, uNumObjects, apIds);
			}
			public HRESULT GetObjects(int32 lFlags, uint32 uNumObjects, IWbemObjectAccess** apObj, uint32* puReturned) mut
			{
				return VT.GetObjects(&this, lFlags, uNumObjects, apObj, puReturned);
			}
			public HRESULT RemoveAll(int32 lFlags) mut
			{
				return VT.RemoveAll(&this, lFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemHiPerfEnum *self, int32 lFlags, uint32 uNumObjects, int32* apIds, IWbemObjectAccess** apObj) AddObjects;
				public new function HRESULT(IWbemHiPerfEnum *self, int32 lFlags, uint32 uNumObjects, int32* apIds) RemoveObjects;
				public new function HRESULT(IWbemHiPerfEnum *self, int32 lFlags, uint32 uNumObjects, IWbemObjectAccess** apObj, uint32* puReturned) GetObjects;
				public new function HRESULT(IWbemHiPerfEnum *self, int32 lFlags) RemoveAll;
			}
		}
		[CRepr]
		public struct IWbemConfigureRefresher : IUnknown
		{
			public const new Guid IID = .(0x49353c92, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddObjectByPath(IWbemServices* pNamespace, PWSTR wszPath, int32 lFlags, IWbemContext* pContext, IWbemClassObject** ppRefreshable, int32* plId) mut
			{
				return VT.AddObjectByPath(&this, pNamespace, wszPath, lFlags, pContext, ppRefreshable, plId);
			}
			public HRESULT AddObjectByTemplate(IWbemServices* pNamespace, IWbemClassObject* pTemplate, int32 lFlags, IWbemContext* pContext, IWbemClassObject** ppRefreshable, int32* plId) mut
			{
				return VT.AddObjectByTemplate(&this, pNamespace, pTemplate, lFlags, pContext, ppRefreshable, plId);
			}
			public HRESULT AddRefresher(IWbemRefresher* pRefresher, int32 lFlags, int32* plId) mut
			{
				return VT.AddRefresher(&this, pRefresher, lFlags, plId);
			}
			public HRESULT Remove(int32 lId, int32 lFlags) mut
			{
				return VT.Remove(&this, lId, lFlags);
			}
			public HRESULT AddEnum(IWbemServices* pNamespace, PWSTR wszClassName, int32 lFlags, IWbemContext* pContext, IWbemHiPerfEnum** ppEnum, int32* plId) mut
			{
				return VT.AddEnum(&this, pNamespace, wszClassName, lFlags, pContext, ppEnum, plId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemConfigureRefresher *self, IWbemServices* pNamespace, PWSTR wszPath, int32 lFlags, IWbemContext* pContext, IWbemClassObject** ppRefreshable, int32* plId) AddObjectByPath;
				public new function HRESULT(IWbemConfigureRefresher *self, IWbemServices* pNamespace, IWbemClassObject* pTemplate, int32 lFlags, IWbemContext* pContext, IWbemClassObject** ppRefreshable, int32* plId) AddObjectByTemplate;
				public new function HRESULT(IWbemConfigureRefresher *self, IWbemRefresher* pRefresher, int32 lFlags, int32* plId) AddRefresher;
				public new function HRESULT(IWbemConfigureRefresher *self, int32 lId, int32 lFlags) Remove;
				public new function HRESULT(IWbemConfigureRefresher *self, IWbemServices* pNamespace, PWSTR wszClassName, int32 lFlags, IWbemContext* pContext, IWbemHiPerfEnum** ppEnum, int32* plId) AddEnum;
			}
		}
		[CRepr]
		public struct IWbemObjectSinkEx : IWbemObjectSink
		{
			public const new Guid IID = .(0xe7d35cfa, 0x348b, 0x485e, 0xb5, 0x24, 0x25, 0x27, 0x25, 0xd6, 0x97, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteMessage(uint32 uChannel, BSTR strMessage) mut
			{
				return VT.WriteMessage(&this, uChannel, strMessage);
			}
			public HRESULT WriteError(IWbemClassObject* pObjError, uint8* puReturned) mut
			{
				return VT.WriteError(&this, pObjError, puReturned);
			}
			public HRESULT PromptUser(BSTR strMessage, uint8 uPromptType, uint8* puReturned) mut
			{
				return VT.PromptUser(&this, strMessage, uPromptType, puReturned);
			}
			public HRESULT WriteProgress(BSTR strActivity, BSTR strCurrentOperation, BSTR strStatusDescription, uint32 uPercentComplete, uint32 uSecondsRemaining) mut
			{
				return VT.WriteProgress(&this, strActivity, strCurrentOperation, strStatusDescription, uPercentComplete, uSecondsRemaining);
			}
			public HRESULT WriteStreamParameter(BSTR strName, VARIANT* vtValue, uint32 ulType, uint32 ulFlags) mut
			{
				return VT.WriteStreamParameter(&this, strName, vtValue, ulType, ulFlags);
			}
			[CRepr]
			public struct VTable : IWbemObjectSink.VTable
			{
				public new function HRESULT(IWbemObjectSinkEx *self, uint32 uChannel, BSTR strMessage) WriteMessage;
				public new function HRESULT(IWbemObjectSinkEx *self, IWbemClassObject* pObjError, uint8* puReturned) WriteError;
				public new function HRESULT(IWbemObjectSinkEx *self, BSTR strMessage, uint8 uPromptType, uint8* puReturned) PromptUser;
				public new function HRESULT(IWbemObjectSinkEx *self, BSTR strActivity, BSTR strCurrentOperation, BSTR strStatusDescription, uint32 uPercentComplete, uint32 uSecondsRemaining) WriteProgress;
				public new function HRESULT(IWbemObjectSinkEx *self, BSTR strName, VARIANT* vtValue, uint32 ulType, uint32 ulFlags) WriteStreamParameter;
			}
		}
		[CRepr]
		public struct IWbemShutdown : IUnknown
		{
			public const new Guid IID = .(0xb7b31df9, 0xd515, 0x11d3, 0xa1, 0x1c, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Shutdown(int32 uReason, uint32 uMaxMilliseconds, IWbemContext* pCtx) mut
			{
				return VT.Shutdown(&this, uReason, uMaxMilliseconds, pCtx);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemShutdown *self, int32 uReason, uint32 uMaxMilliseconds, IWbemContext* pCtx) Shutdown;
			}
		}
		[CRepr]
		public struct IWbemObjectTextSrc : IUnknown
		{
			public const new Guid IID = .(0xbfbf883a, 0xcad7, 0x11d3, 0xa1, 0x1b, 0x00, 0x10, 0x5a, 0x1f, 0x51, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(int32 lFlags, IWbemClassObject* pObj, uint32 uObjTextFormat, IWbemContext* pCtx, BSTR* strText) mut
			{
				return VT.GetText(&this, lFlags, pObj, uObjTextFormat, pCtx, strText);
			}
			public HRESULT CreateFromText(int32 lFlags, BSTR strText, uint32 uObjTextFormat, IWbemContext* pCtx, IWbemClassObject** pNewObj) mut
			{
				return VT.CreateFromText(&this, lFlags, strText, uObjTextFormat, pCtx, pNewObj);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemObjectTextSrc *self, int32 lFlags, IWbemClassObject* pObj, uint32 uObjTextFormat, IWbemContext* pCtx, BSTR* strText) GetText;
				public new function HRESULT(IWbemObjectTextSrc *self, int32 lFlags, BSTR strText, uint32 uObjTextFormat, IWbemContext* pCtx, IWbemClassObject** pNewObj) CreateFromText;
			}
		}
		[CRepr]
		public struct IMofCompiler : IUnknown
		{
			public const new Guid IID = .(0x6daf974e, 0x2e37, 0x11d2, 0xae, 0xc9, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompileFile(PWSTR FileName, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) mut
			{
				return VT.CompileFile(&this, FileName, ServerAndNamespace, User, Authority, Password, lOptionFlags, lClassFlags, lInstanceFlags, pInfo);
			}
			public HRESULT CompileBuffer(int32 BuffSize, uint8* pBuffer, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) mut
			{
				return VT.CompileBuffer(&this, BuffSize, pBuffer, ServerAndNamespace, User, Authority, Password, lOptionFlags, lClassFlags, lInstanceFlags, pInfo);
			}
			public HRESULT CreateBMOF(PWSTR TextFileName, PWSTR BMOFFileName, PWSTR ServerAndNamespace, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) mut
			{
				return VT.CreateBMOF(&this, TextFileName, BMOFFileName, ServerAndNamespace, lOptionFlags, lClassFlags, lInstanceFlags, pInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMofCompiler *self, PWSTR FileName, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) CompileFile;
				public new function HRESULT(IMofCompiler *self, int32 BuffSize, uint8* pBuffer, PWSTR ServerAndNamespace, PWSTR User, PWSTR Authority, PWSTR Password, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) CompileBuffer;
				public new function HRESULT(IMofCompiler *self, PWSTR TextFileName, PWSTR BMOFFileName, PWSTR ServerAndNamespace, int32 lOptionFlags, int32 lClassFlags, int32 lInstanceFlags, WBEM_COMPILE_STATUS_INFO* pInfo) CreateBMOF;
			}
		}
		[CRepr]
		public struct IWbemPropertyProvider : IUnknown
		{
			public const new Guid IID = .(0xce61e841, 0x65bc, 0x11d0, 0xb6, 0xbd, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, VARIANT* pvValue) mut
			{
				return VT.GetProperty(&this, lFlags, strLocale, strClassMapping, strInstMapping, strPropMapping, pvValue);
			}
			public HRESULT PutProperty(int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, VARIANT* pvValue) mut
			{
				return VT.PutProperty(&this, lFlags, strLocale, strClassMapping, strInstMapping, strPropMapping, pvValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemPropertyProvider *self, int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, VARIANT* pvValue) GetProperty;
				public new function HRESULT(IWbemPropertyProvider *self, int32 lFlags, BSTR strLocale, BSTR strClassMapping, BSTR strInstMapping, BSTR strPropMapping, VARIANT* pvValue) PutProperty;
			}
		}
		[CRepr]
		public struct IWbemUnboundObjectSink : IUnknown
		{
			public const new Guid IID = .(0xe246107b, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IndicateToConsumer(IWbemClassObject* pLogicalConsumer, int32 lNumObjects, IWbemClassObject** apObjects) mut
			{
				return VT.IndicateToConsumer(&this, pLogicalConsumer, lNumObjects, apObjects);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemUnboundObjectSink *self, IWbemClassObject* pLogicalConsumer, int32 lNumObjects, IWbemClassObject** apObjects) IndicateToConsumer;
			}
		}
		[CRepr]
		public struct IWbemEventProvider : IUnknown
		{
			public const new Guid IID = .(0xe245105b, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProvideEvents(IWbemObjectSink* pSink, int32 lFlags) mut
			{
				return VT.ProvideEvents(&this, pSink, lFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemEventProvider *self, IWbemObjectSink* pSink, int32 lFlags) ProvideEvents;
			}
		}
		[CRepr]
		public struct IWbemEventProviderQuerySink : IUnknown
		{
			public const new Guid IID = .(0x580acaf8, 0xfa1c, 0x11d0, 0xad, 0x72, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewQuery(uint32 dwId, uint16* wszQueryLanguage, uint16* wszQuery) mut
			{
				return VT.NewQuery(&this, dwId, wszQueryLanguage, wszQuery);
			}
			public HRESULT CancelQuery(uint32 dwId) mut
			{
				return VT.CancelQuery(&this, dwId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemEventProviderQuerySink *self, uint32 dwId, uint16* wszQueryLanguage, uint16* wszQuery) NewQuery;
				public new function HRESULT(IWbemEventProviderQuerySink *self, uint32 dwId) CancelQuery;
			}
		}
		[CRepr]
		public struct IWbemEventProviderSecurity : IUnknown
		{
			public const new Guid IID = .(0x631f7d96, 0xd993, 0x11d2, 0xb3, 0x39, 0x00, 0x10, 0x5a, 0x1f, 0x4a, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AccessCheck(uint16* wszQueryLanguage, uint16* wszQuery, int32 lSidLength, uint8* pSid) mut
			{
				return VT.AccessCheck(&this, wszQueryLanguage, wszQuery, lSidLength, pSid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemEventProviderSecurity *self, uint16* wszQueryLanguage, uint16* wszQuery, int32 lSidLength, uint8* pSid) AccessCheck;
			}
		}
		[CRepr]
		public struct IWbemEventConsumerProvider : IUnknown
		{
			public const new Guid IID = .(0xe246107a, 0xb06e, 0x11d0, 0xad, 0x61, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindConsumer(IWbemClassObject* pLogicalConsumer, IWbemUnboundObjectSink** ppConsumer) mut
			{
				return VT.FindConsumer(&this, pLogicalConsumer, ppConsumer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemEventConsumerProvider *self, IWbemClassObject* pLogicalConsumer, IWbemUnboundObjectSink** ppConsumer) FindConsumer;
			}
		}
		[CRepr]
		public struct IWbemProviderInitSink : IUnknown
		{
			public const new Guid IID = .(0x1be41571, 0x91dd, 0x11d1, 0xae, 0xb2, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStatus(int32 lStatus, int32 lFlags) mut
			{
				return VT.SetStatus(&this, lStatus, lFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemProviderInitSink *self, int32 lStatus, int32 lFlags) SetStatus;
			}
		}
		[CRepr]
		public struct IWbemProviderInit : IUnknown
		{
			public const new Guid IID = .(0x1be41572, 0x91dd, 0x11d1, 0xae, 0xb2, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR wszUser, int32 lFlags, PWSTR wszNamespace, PWSTR wszLocale, IWbemServices* pNamespace, IWbemContext* pCtx, IWbemProviderInitSink* pInitSink) mut
			{
				return VT.Initialize(&this, wszUser, lFlags, wszNamespace, wszLocale, pNamespace, pCtx, pInitSink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemProviderInit *self, PWSTR wszUser, int32 lFlags, PWSTR wszNamespace, PWSTR wszLocale, IWbemServices* pNamespace, IWbemContext* pCtx, IWbemProviderInitSink* pInitSink) Initialize;
			}
		}
		[CRepr]
		public struct IWbemHiPerfProvider : IUnknown
		{
			public const new Guid IID = .(0x49353c93, 0x516b, 0x11d1, 0xae, 0xa6, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInstances(IWbemServices* pNamespace, PWSTR wszClass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pSink) mut
			{
				return VT.QueryInstances(&this, pNamespace, wszClass, lFlags, pCtx, pSink);
			}
			public HRESULT CreateRefresher(IWbemServices* pNamespace, int32 lFlags, IWbemRefresher** ppRefresher) mut
			{
				return VT.CreateRefresher(&this, pNamespace, lFlags, ppRefresher);
			}
			public HRESULT CreateRefreshableObject(IWbemServices* pNamespace, IWbemObjectAccess* pTemplate, IWbemRefresher* pRefresher, int32 lFlags, IWbemContext* pContext, IWbemObjectAccess** ppRefreshable, int32* plId) mut
			{
				return VT.CreateRefreshableObject(&this, pNamespace, pTemplate, pRefresher, lFlags, pContext, ppRefreshable, plId);
			}
			public HRESULT StopRefreshing(IWbemRefresher* pRefresher, int32 lId, int32 lFlags) mut
			{
				return VT.StopRefreshing(&this, pRefresher, lId, lFlags);
			}
			public HRESULT CreateRefreshableEnum(IWbemServices* pNamespace, PWSTR wszClass, IWbemRefresher* pRefresher, int32 lFlags, IWbemContext* pContext, IWbemHiPerfEnum* pHiPerfEnum, int32* plId) mut
			{
				return VT.CreateRefreshableEnum(&this, pNamespace, wszClass, pRefresher, lFlags, pContext, pHiPerfEnum, plId);
			}
			public HRESULT GetObjects(IWbemServices* pNamespace, int32 lNumObjects, IWbemObjectAccess** apObj, int32 lFlags, IWbemContext* pContext) mut
			{
				return VT.GetObjects(&this, pNamespace, lNumObjects, apObj, lFlags, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemServices* pNamespace, PWSTR wszClass, int32 lFlags, IWbemContext* pCtx, IWbemObjectSink* pSink) QueryInstances;
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemServices* pNamespace, int32 lFlags, IWbemRefresher** ppRefresher) CreateRefresher;
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemServices* pNamespace, IWbemObjectAccess* pTemplate, IWbemRefresher* pRefresher, int32 lFlags, IWbemContext* pContext, IWbemObjectAccess** ppRefreshable, int32* plId) CreateRefreshableObject;
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemRefresher* pRefresher, int32 lId, int32 lFlags) StopRefreshing;
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemServices* pNamespace, PWSTR wszClass, IWbemRefresher* pRefresher, int32 lFlags, IWbemContext* pContext, IWbemHiPerfEnum* pHiPerfEnum, int32* plId) CreateRefreshableEnum;
				public new function HRESULT(IWbemHiPerfProvider *self, IWbemServices* pNamespace, int32 lNumObjects, IWbemObjectAccess** apObj, int32 lFlags, IWbemContext* pContext) GetObjects;
			}
		}
		[CRepr]
		public struct IWbemDecoupledRegistrar : IUnknown
		{
			public const new Guid IID = .(0x1005cbcf, 0xe64f, 0x4646, 0xbc, 0xd3, 0x3a, 0x08, 0x9d, 0x8a, 0x84, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(int32 a_Flags, IWbemContext* a_Context, PWSTR a_User, PWSTR a_Locale, PWSTR a_Scope, PWSTR a_Registration, IUnknown* pIUnknown) mut
			{
				return VT.Register(&this, a_Flags, a_Context, a_User, a_Locale, a_Scope, a_Registration, pIUnknown);
			}
			public HRESULT UnRegister() mut
			{
				return VT.UnRegister(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemDecoupledRegistrar *self, int32 a_Flags, IWbemContext* a_Context, PWSTR a_User, PWSTR a_Locale, PWSTR a_Scope, PWSTR a_Registration, IUnknown* pIUnknown) Register;
				public new function HRESULT(IWbemDecoupledRegistrar *self) UnRegister;
			}
		}
		[CRepr]
		public struct IWbemProviderIdentity : IUnknown
		{
			public const new Guid IID = .(0x631f7d97, 0xd993, 0x11d2, 0xb3, 0x39, 0x00, 0x10, 0x5a, 0x1f, 0x4a, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRegistrationObject(int32 lFlags, IWbemClassObject* pProvReg) mut
			{
				return VT.SetRegistrationObject(&this, lFlags, pProvReg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemProviderIdentity *self, int32 lFlags, IWbemClassObject* pProvReg) SetRegistrationObject;
			}
		}
		[CRepr]
		public struct IWbemDecoupledBasicEventProvider : IWbemDecoupledRegistrar
		{
			public const new Guid IID = .(0x86336d20, 0xca11, 0x4786, 0x9e, 0xf1, 0xbc, 0x8a, 0x94, 0x6b, 0x42, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSink(int32 a_Flags, IWbemContext* a_Context, IWbemObjectSink** a_Sink) mut
			{
				return VT.GetSink(&this, a_Flags, a_Context, a_Sink);
			}
			public HRESULT GetService(int32 a_Flags, IWbemContext* a_Context, IWbemServices** a_Service) mut
			{
				return VT.GetService(&this, a_Flags, a_Context, a_Service);
			}
			[CRepr]
			public struct VTable : IWbemDecoupledRegistrar.VTable
			{
				public new function HRESULT(IWbemDecoupledBasicEventProvider *self, int32 a_Flags, IWbemContext* a_Context, IWbemObjectSink** a_Sink) GetSink;
				public new function HRESULT(IWbemDecoupledBasicEventProvider *self, int32 a_Flags, IWbemContext* a_Context, IWbemServices** a_Service) GetService;
			}
		}
		[CRepr]
		public struct IWbemEventSink : IWbemObjectSink
		{
			public const new Guid IID = .(0x3ae0080a, 0x7e3a, 0x4366, 0xbf, 0x89, 0x0f, 0xee, 0xdc, 0x93, 0x16, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSinkSecurity(int32 lSDLength, uint8* pSD) mut
			{
				return VT.SetSinkSecurity(&this, lSDLength, pSD);
			}
			public HRESULT IsActive() mut
			{
				return VT.IsActive(&this);
			}
			public HRESULT GetRestrictedSink(int32 lNumQueries, PWSTR* awszQueries, IUnknown* pCallback, IWbemEventSink** ppSink) mut
			{
				return VT.GetRestrictedSink(&this, lNumQueries, awszQueries, pCallback, ppSink);
			}
			public HRESULT SetBatchingParameters(int32 lFlags, uint32 dwMaxBufferSize, uint32 dwMaxSendLatency) mut
			{
				return VT.SetBatchingParameters(&this, lFlags, dwMaxBufferSize, dwMaxSendLatency);
			}
			[CRepr]
			public struct VTable : IWbemObjectSink.VTable
			{
				public new function HRESULT(IWbemEventSink *self, int32 lSDLength, uint8* pSD) SetSinkSecurity;
				public new function HRESULT(IWbemEventSink *self) IsActive;
				public new function HRESULT(IWbemEventSink *self, int32 lNumQueries, PWSTR* awszQueries, IUnknown* pCallback, IWbemEventSink** ppSink) GetRestrictedSink;
				public new function HRESULT(IWbemEventSink *self, int32 lFlags, uint32 dwMaxBufferSize, uint32 dwMaxSendLatency) SetBatchingParameters;
			}
		}
		[CRepr]
		public struct ISWbemServices : IDispatch
		{
			public const new Guid IID = .(0x76a6415c, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemObject) mut
			{
				return VT.Get(&this, strObjectPath, iFlags, objWbemNamedValueSet, objWbemObject);
			}
			public HRESULT GetAsync(IDispatch* objWbemSink, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.GetAsync(&this, objWbemSink, strObjectPath, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Delete(BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet) mut
			{
				return VT.Delete(&this, strObjectPath, iFlags, objWbemNamedValueSet);
			}
			public HRESULT DeleteAsync(IDispatch* objWbemSink, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.DeleteAsync(&this, objWbemSink, strObjectPath, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT InstancesOf(BSTR strClass, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.InstancesOf(&this, strClass, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT InstancesOfAsync(IDispatch* objWbemSink, BSTR strClass, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.InstancesOfAsync(&this, objWbemSink, strClass, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT SubclassesOf(BSTR strSuperclass, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.SubclassesOf(&this, strSuperclass, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT SubclassesOfAsync(IDispatch* objWbemSink, BSTR strSuperclass, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.SubclassesOfAsync(&this, objWbemSink, strSuperclass, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT ExecQuery(BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.ExecQuery(&this, strQuery, strQueryLanguage, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT ExecQueryAsync(IDispatch* objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 lFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ExecQueryAsync(&this, objWbemSink, strQuery, strQueryLanguage, lFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT AssociatorsOf(BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.AssociatorsOf(&this, strObjectPath, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT AssociatorsOfAsync(IDispatch* objWbemSink, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.AssociatorsOfAsync(&this, objWbemSink, strObjectPath, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT ReferencesTo(BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.ReferencesTo(&this, strObjectPath, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT ReferencesToAsync(IDispatch* objWbemSink, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ReferencesToAsync(&this, objWbemSink, strObjectPath, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT ExecNotificationQuery(BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemEventSource** objWbemEventSource) mut
			{
				return VT.ExecNotificationQuery(&this, strQuery, strQueryLanguage, iFlags, objWbemNamedValueSet, objWbemEventSource);
			}
			public HRESULT ExecNotificationQueryAsync(IDispatch* objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ExecNotificationQueryAsync(&this, objWbemSink, strQuery, strQueryLanguage, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT ExecMethod(BSTR strObjectPath, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemOutParameters) mut
			{
				return VT.ExecMethod(&this, strObjectPath, strMethodName, objWbemInParameters, iFlags, objWbemNamedValueSet, objWbemOutParameters);
			}
			public HRESULT ExecMethodAsync(IDispatch* objWbemSink, BSTR strObjectPath, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ExecMethodAsync(&this, objWbemSink, strObjectPath, strMethodName, objWbemInParameters, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemServices *self, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemObject) Get;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) GetAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet) Delete;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strObjectPath, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) DeleteAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strClass, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) InstancesOf;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strClass, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) InstancesOfAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strSuperclass, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) SubclassesOf;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strSuperclass, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) SubclassesOfAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) ExecQuery;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 lFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ExecQueryAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) AssociatorsOf;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strObjectPath, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) AssociatorsOfAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) ReferencesTo;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strObjectPath, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ReferencesToAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemEventSource** objWbemEventSource) ExecNotificationQuery;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strQuery, BSTR strQueryLanguage, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ExecNotificationQueryAsync;
				public new function HRESULT(ISWbemServices *self, BSTR strObjectPath, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemOutParameters) ExecMethod;
				public new function HRESULT(ISWbemServices *self, IDispatch* objWbemSink, BSTR strObjectPath, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ExecMethodAsync;
				public new function HRESULT(ISWbemServices *self, ISWbemSecurity** objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemLocator : IDispatch
		{
			public const new Guid IID = .(0x76a6415b, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strServer, BSTR strNamespace, BSTR strUser, BSTR strPassword, BSTR strLocale, BSTR strAuthority, int32 iSecurityFlags, IDispatch* objWbemNamedValueSet, ISWbemServices** objWbemServices) mut
			{
				return VT.ConnectServer(&this, strServer, strNamespace, strUser, strPassword, strLocale, strAuthority, iSecurityFlags, objWbemNamedValueSet, objWbemServices);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemLocator *self, BSTR strServer, BSTR strNamespace, BSTR strUser, BSTR strPassword, BSTR strLocale, BSTR strAuthority, int32 iSecurityFlags, IDispatch* objWbemNamedValueSet, ISWbemServices** objWbemServices) ConnectServer;
				public new function HRESULT(ISWbemLocator *self, ISWbemSecurity** objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObject : IDispatch
		{
			public const new Guid IID = .(0x76a6415a, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Put_(int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectPath** objWbemObjectPath) mut
			{
				return VT.Put_(&this, iFlags, objWbemNamedValueSet, objWbemObjectPath);
			}
			public HRESULT PutAsync_(IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.PutAsync_(&this, objWbemSink, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Delete_(int32 iFlags, IDispatch* objWbemNamedValueSet) mut
			{
				return VT.Delete_(&this, iFlags, objWbemNamedValueSet);
			}
			public HRESULT DeleteAsync_(IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.DeleteAsync_(&this, objWbemSink, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Instances_(int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.Instances_(&this, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT InstancesAsync_(IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.InstancesAsync_(&this, objWbemSink, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Subclasses_(int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.Subclasses_(&this, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT SubclassesAsync_(IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.SubclassesAsync_(&this, objWbemSink, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Associators_(BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.Associators_(&this, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT AssociatorsAsync_(IDispatch* objWbemSink, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.AssociatorsAsync_(&this, objWbemSink, strAssocClass, strResultClass, strResultRole, strRole, bClassesOnly, bSchemaOnly, strRequiredAssocQualifier, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT References_(BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.References_(&this, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemObjectSet);
			}
			public HRESULT ReferencesAsync_(IDispatch* objWbemSink, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ReferencesAsync_(&this, objWbemSink, strResultClass, strRole, bClassesOnly, bSchemaOnly, strRequiredQualifier, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT ExecMethod_(BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemOutParameters) mut
			{
				return VT.ExecMethod_(&this, strMethodName, objWbemInParameters, iFlags, objWbemNamedValueSet, objWbemOutParameters);
			}
			public HRESULT ExecMethodAsync_(IDispatch* objWbemSink, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.ExecMethodAsync_(&this, objWbemSink, strMethodName, objWbemInParameters, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			public HRESULT Clone_(ISWbemObject** objWbemObject) mut
			{
				return VT.Clone_(&this, objWbemObject);
			}
			public HRESULT GetObjectText_(int32 iFlags, BSTR* strObjectText) mut
			{
				return VT.GetObjectText_(&this, iFlags, strObjectText);
			}
			public HRESULT SpawnDerivedClass_(int32 iFlags, ISWbemObject** objWbemObject) mut
			{
				return VT.SpawnDerivedClass_(&this, iFlags, objWbemObject);
			}
			public HRESULT SpawnInstance_(int32 iFlags, ISWbemObject** objWbemObject) mut
			{
				return VT.SpawnInstance_(&this, iFlags, objWbemObject);
			}
			public HRESULT CompareTo_(IDispatch* objWbemObject, int32 iFlags, int16* bResult) mut
			{
				return VT.CompareTo_(&this, objWbemObject, iFlags, bResult);
			}
			public HRESULT get_Qualifiers_(ISWbemQualifierSet** objWbemQualifierSet) mut
			{
				return VT.get_Qualifiers_(&this, objWbemQualifierSet);
			}
			public HRESULT get_Properties_(ISWbemPropertySet** objWbemPropertySet) mut
			{
				return VT.get_Properties_(&this, objWbemPropertySet);
			}
			public HRESULT get_Methods_(ISWbemMethodSet** objWbemMethodSet) mut
			{
				return VT.get_Methods_(&this, objWbemMethodSet);
			}
			public HRESULT get_Derivation_(VARIANT* strClassNameArray) mut
			{
				return VT.get_Derivation_(&this, strClassNameArray);
			}
			public HRESULT get_Path_(ISWbemObjectPath** objWbemObjectPath) mut
			{
				return VT.get_Path_(&this, objWbemObjectPath);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemObject *self, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectPath** objWbemObjectPath) Put_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) PutAsync_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, IDispatch* objWbemNamedValueSet) Delete_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) DeleteAsync_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) Instances_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) InstancesAsync_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) Subclasses_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) SubclassesAsync_;
				public new function HRESULT(ISWbemObject *self, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) Associators_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, BSTR strAssocClass, BSTR strResultClass, BSTR strResultRole, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredAssocQualifier, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) AssociatorsAsync_;
				public new function HRESULT(ISWbemObject *self, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectSet** objWbemObjectSet) References_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, BSTR strResultClass, BSTR strRole, int16 bClassesOnly, int16 bSchemaOnly, BSTR strRequiredQualifier, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ReferencesAsync_;
				public new function HRESULT(ISWbemObject *self, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObject** objWbemOutParameters) ExecMethod_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemSink, BSTR strMethodName, IDispatch* objWbemInParameters, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) ExecMethodAsync_;
				public new function HRESULT(ISWbemObject *self, ISWbemObject** objWbemObject) Clone_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, BSTR* strObjectText) GetObjectText_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, ISWbemObject** objWbemObject) SpawnDerivedClass_;
				public new function HRESULT(ISWbemObject *self, int32 iFlags, ISWbemObject** objWbemObject) SpawnInstance_;
				public new function HRESULT(ISWbemObject *self, IDispatch* objWbemObject, int32 iFlags, int16* bResult) CompareTo_;
				public new function HRESULT(ISWbemObject *self, ISWbemQualifierSet** objWbemQualifierSet) get_Qualifiers_;
				public new function HRESULT(ISWbemObject *self, ISWbemPropertySet** objWbemPropertySet) get_Properties_;
				public new function HRESULT(ISWbemObject *self, ISWbemMethodSet** objWbemMethodSet) get_Methods_;
				public new function HRESULT(ISWbemObject *self, VARIANT* strClassNameArray) get_Derivation_;
				public new function HRESULT(ISWbemObject *self, ISWbemObjectPath** objWbemObjectPath) get_Path_;
				public new function HRESULT(ISWbemObject *self, ISWbemSecurity** objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObjectSet : IDispatch
		{
			public const new Guid IID = .(0x76a6415f, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(BSTR strObjectPath, int32 iFlags, ISWbemObject** objWbemObject) mut
			{
				return VT.Item(&this, strObjectPath, iFlags, objWbemObject);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			public HRESULT ItemIndex(int32 lIndex, ISWbemObject** objWbemObject) mut
			{
				return VT.ItemIndex(&this, lIndex, objWbemObject);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemObjectSet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemObjectSet *self, BSTR strObjectPath, int32 iFlags, ISWbemObject** objWbemObject) Item;
				public new function HRESULT(ISWbemObjectSet *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemObjectSet *self, ISWbemSecurity** objWbemSecurity) get_Security_;
				public new function HRESULT(ISWbemObjectSet *self, int32 lIndex, ISWbemObject** objWbemObject) ItemIndex;
			}
		}
		[CRepr]
		public struct ISWbemNamedValue : IDispatch
		{
			public const new Guid IID = .(0x76a64164, 0xcb41, 0x11d1, 0x8b, 0x02, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(VARIANT* varValue) mut
			{
				return VT.get_Value(&this, varValue);
			}
			public HRESULT put_Value(VARIANT* varValue) mut
			{
				return VT.put_Value(&this, varValue);
			}
			public HRESULT get_Name(BSTR* strName) mut
			{
				return VT.get_Name(&this, strName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemNamedValue *self, VARIANT* varValue) get_Value;
				public new function HRESULT(ISWbemNamedValue *self, VARIANT* varValue) put_Value;
				public new function HRESULT(ISWbemNamedValue *self, BSTR* strName) get_Name;
			}
		}
		[CRepr]
		public struct ISWbemNamedValueSet : IDispatch
		{
			public const new Guid IID = .(0xcf2376ea, 0xce8c, 0x11d1, 0x8b, 0x05, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(BSTR strName, int32 iFlags, ISWbemNamedValue** objWbemNamedValue) mut
			{
				return VT.Item(&this, strName, iFlags, objWbemNamedValue);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT Add(BSTR strName, VARIANT* varValue, int32 iFlags, ISWbemNamedValue** objWbemNamedValue) mut
			{
				return VT.Add(&this, strName, varValue, iFlags, objWbemNamedValue);
			}
			public HRESULT Remove(BSTR strName, int32 iFlags) mut
			{
				return VT.Remove(&this, strName, iFlags);
			}
			public HRESULT Clone(ISWbemNamedValueSet** objWbemNamedValueSet) mut
			{
				return VT.Clone(&this, objWbemNamedValueSet);
			}
			public HRESULT DeleteAll() mut
			{
				return VT.DeleteAll(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemNamedValueSet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemNamedValueSet *self, BSTR strName, int32 iFlags, ISWbemNamedValue** objWbemNamedValue) Item;
				public new function HRESULT(ISWbemNamedValueSet *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemNamedValueSet *self, BSTR strName, VARIANT* varValue, int32 iFlags, ISWbemNamedValue** objWbemNamedValue) Add;
				public new function HRESULT(ISWbemNamedValueSet *self, BSTR strName, int32 iFlags) Remove;
				public new function HRESULT(ISWbemNamedValueSet *self, ISWbemNamedValueSet** objWbemNamedValueSet) Clone;
				public new function HRESULT(ISWbemNamedValueSet *self) DeleteAll;
			}
		}
		[CRepr]
		public struct ISWbemQualifier : IDispatch
		{
			public const new Guid IID = .(0x79b05932, 0xd3b7, 0x11d1, 0x8b, 0x06, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(VARIANT* varValue) mut
			{
				return VT.get_Value(&this, varValue);
			}
			public HRESULT put_Value(VARIANT* varValue) mut
			{
				return VT.put_Value(&this, varValue);
			}
			public HRESULT get_Name(BSTR* strName) mut
			{
				return VT.get_Name(&this, strName);
			}
			public HRESULT get_IsLocal(int16* bIsLocal) mut
			{
				return VT.get_IsLocal(&this, bIsLocal);
			}
			public HRESULT get_PropagatesToSubclass(int16* bPropagatesToSubclass) mut
			{
				return VT.get_PropagatesToSubclass(&this, bPropagatesToSubclass);
			}
			public HRESULT put_PropagatesToSubclass(int16 bPropagatesToSubclass) mut
			{
				return VT.put_PropagatesToSubclass(&this, bPropagatesToSubclass);
			}
			public HRESULT get_PropagatesToInstance(int16* bPropagatesToInstance) mut
			{
				return VT.get_PropagatesToInstance(&this, bPropagatesToInstance);
			}
			public HRESULT put_PropagatesToInstance(int16 bPropagatesToInstance) mut
			{
				return VT.put_PropagatesToInstance(&this, bPropagatesToInstance);
			}
			public HRESULT get_IsOverridable(int16* bIsOverridable) mut
			{
				return VT.get_IsOverridable(&this, bIsOverridable);
			}
			public HRESULT put_IsOverridable(int16 bIsOverridable) mut
			{
				return VT.put_IsOverridable(&this, bIsOverridable);
			}
			public HRESULT get_IsAmended(int16* bIsAmended) mut
			{
				return VT.get_IsAmended(&this, bIsAmended);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemQualifier *self, VARIANT* varValue) get_Value;
				public new function HRESULT(ISWbemQualifier *self, VARIANT* varValue) put_Value;
				public new function HRESULT(ISWbemQualifier *self, BSTR* strName) get_Name;
				public new function HRESULT(ISWbemQualifier *self, int16* bIsLocal) get_IsLocal;
				public new function HRESULT(ISWbemQualifier *self, int16* bPropagatesToSubclass) get_PropagatesToSubclass;
				public new function HRESULT(ISWbemQualifier *self, int16 bPropagatesToSubclass) put_PropagatesToSubclass;
				public new function HRESULT(ISWbemQualifier *self, int16* bPropagatesToInstance) get_PropagatesToInstance;
				public new function HRESULT(ISWbemQualifier *self, int16 bPropagatesToInstance) put_PropagatesToInstance;
				public new function HRESULT(ISWbemQualifier *self, int16* bIsOverridable) get_IsOverridable;
				public new function HRESULT(ISWbemQualifier *self, int16 bIsOverridable) put_IsOverridable;
				public new function HRESULT(ISWbemQualifier *self, int16* bIsAmended) get_IsAmended;
			}
		}
		[CRepr]
		public struct ISWbemQualifierSet : IDispatch
		{
			public const new Guid IID = .(0x9b16ed16, 0xd3df, 0x11d1, 0x8b, 0x08, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(BSTR name, int32 iFlags, ISWbemQualifier** objWbemQualifier) mut
			{
				return VT.Item(&this, name, iFlags, objWbemQualifier);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT Add(BSTR strName, VARIANT* varVal, int16 bPropagatesToSubclass, int16 bPropagatesToInstance, int16 bIsOverridable, int32 iFlags, ISWbemQualifier** objWbemQualifier) mut
			{
				return VT.Add(&this, strName, varVal, bPropagatesToSubclass, bPropagatesToInstance, bIsOverridable, iFlags, objWbemQualifier);
			}
			public HRESULT Remove(BSTR strName, int32 iFlags) mut
			{
				return VT.Remove(&this, strName, iFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemQualifierSet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemQualifierSet *self, BSTR name, int32 iFlags, ISWbemQualifier** objWbemQualifier) Item;
				public new function HRESULT(ISWbemQualifierSet *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemQualifierSet *self, BSTR strName, VARIANT* varVal, int16 bPropagatesToSubclass, int16 bPropagatesToInstance, int16 bIsOverridable, int32 iFlags, ISWbemQualifier** objWbemQualifier) Add;
				public new function HRESULT(ISWbemQualifierSet *self, BSTR strName, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct ISWbemProperty : IDispatch
		{
			public const new Guid IID = .(0x1a388f98, 0xd4ba, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(VARIANT* varValue) mut
			{
				return VT.get_Value(&this, varValue);
			}
			public HRESULT put_Value(VARIANT* varValue) mut
			{
				return VT.put_Value(&this, varValue);
			}
			public HRESULT get_Name(BSTR* strName) mut
			{
				return VT.get_Name(&this, strName);
			}
			public HRESULT get_IsLocal(int16* bIsLocal) mut
			{
				return VT.get_IsLocal(&this, bIsLocal);
			}
			public HRESULT get_Origin(BSTR* strOrigin) mut
			{
				return VT.get_Origin(&this, strOrigin);
			}
			public HRESULT get_CIMType(WbemCimtypeEnum* iCimType) mut
			{
				return VT.get_CIMType(&this, iCimType);
			}
			public HRESULT get_Qualifiers_(ISWbemQualifierSet** objWbemQualifierSet) mut
			{
				return VT.get_Qualifiers_(&this, objWbemQualifierSet);
			}
			public HRESULT get_IsArray(int16* bIsArray) mut
			{
				return VT.get_IsArray(&this, bIsArray);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemProperty *self, VARIANT* varValue) get_Value;
				public new function HRESULT(ISWbemProperty *self, VARIANT* varValue) put_Value;
				public new function HRESULT(ISWbemProperty *self, BSTR* strName) get_Name;
				public new function HRESULT(ISWbemProperty *self, int16* bIsLocal) get_IsLocal;
				public new function HRESULT(ISWbemProperty *self, BSTR* strOrigin) get_Origin;
				public new function HRESULT(ISWbemProperty *self, WbemCimtypeEnum* iCimType) get_CIMType;
				public new function HRESULT(ISWbemProperty *self, ISWbemQualifierSet** objWbemQualifierSet) get_Qualifiers_;
				public new function HRESULT(ISWbemProperty *self, int16* bIsArray) get_IsArray;
			}
		}
		[CRepr]
		public struct ISWbemPropertySet : IDispatch
		{
			public const new Guid IID = .(0xdea0a7b2, 0xd4ba, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(BSTR strName, int32 iFlags, ISWbemProperty** objWbemProperty) mut
			{
				return VT.Item(&this, strName, iFlags, objWbemProperty);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT Add(BSTR strName, WbemCimtypeEnum iCIMType, int16 bIsArray, int32 iFlags, ISWbemProperty** objWbemProperty) mut
			{
				return VT.Add(&this, strName, iCIMType, bIsArray, iFlags, objWbemProperty);
			}
			public HRESULT Remove(BSTR strName, int32 iFlags) mut
			{
				return VT.Remove(&this, strName, iFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemPropertySet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemPropertySet *self, BSTR strName, int32 iFlags, ISWbemProperty** objWbemProperty) Item;
				public new function HRESULT(ISWbemPropertySet *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemPropertySet *self, BSTR strName, WbemCimtypeEnum iCIMType, int16 bIsArray, int32 iFlags, ISWbemProperty** objWbemProperty) Add;
				public new function HRESULT(ISWbemPropertySet *self, BSTR strName, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct ISWbemMethod : IDispatch
		{
			public const new Guid IID = .(0x422e8e90, 0xd955, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* strName) mut
			{
				return VT.get_Name(&this, strName);
			}
			public HRESULT get_Origin(BSTR* strOrigin) mut
			{
				return VT.get_Origin(&this, strOrigin);
			}
			public HRESULT get_InParameters(ISWbemObject** objWbemInParameters) mut
			{
				return VT.get_InParameters(&this, objWbemInParameters);
			}
			public HRESULT get_OutParameters(ISWbemObject** objWbemOutParameters) mut
			{
				return VT.get_OutParameters(&this, objWbemOutParameters);
			}
			public HRESULT get_Qualifiers_(ISWbemQualifierSet** objWbemQualifierSet) mut
			{
				return VT.get_Qualifiers_(&this, objWbemQualifierSet);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemMethod *self, BSTR* strName) get_Name;
				public new function HRESULT(ISWbemMethod *self, BSTR* strOrigin) get_Origin;
				public new function HRESULT(ISWbemMethod *self, ISWbemObject** objWbemInParameters) get_InParameters;
				public new function HRESULT(ISWbemMethod *self, ISWbemObject** objWbemOutParameters) get_OutParameters;
				public new function HRESULT(ISWbemMethod *self, ISWbemQualifierSet** objWbemQualifierSet) get_Qualifiers_;
			}
		}
		[CRepr]
		public struct ISWbemMethodSet : IDispatch
		{
			public const new Guid IID = .(0xc93ba292, 0xd955, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(BSTR strName, int32 iFlags, ISWbemMethod** objWbemMethod) mut
			{
				return VT.Item(&this, strName, iFlags, objWbemMethod);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemMethodSet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemMethodSet *self, BSTR strName, int32 iFlags, ISWbemMethod** objWbemMethod) Item;
				public new function HRESULT(ISWbemMethodSet *self, int32* iCount) get_Count;
			}
		}
		[CRepr]
		public struct ISWbemEventSource : IDispatch
		{
			public const new Guid IID = .(0x27d54d92, 0x0ebe, 0x11d2, 0x8b, 0x22, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextEvent(int32 iTimeoutMs, ISWbemObject** objWbemObject) mut
			{
				return VT.NextEvent(&this, iTimeoutMs, objWbemObject);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemEventSource *self, int32 iTimeoutMs, ISWbemObject** objWbemObject) NextEvent;
				public new function HRESULT(ISWbemEventSource *self, ISWbemSecurity** objWbemSecurity) get_Security_;
			}
		}
		[CRepr]
		public struct ISWbemObjectPath : IDispatch
		{
			public const new Guid IID = .(0x5791bc27, 0xce9c, 0x11d1, 0x97, 0xbf, 0x00, 0x00, 0xf8, 0x1e, 0x84, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* strPath) mut
			{
				return VT.get_Path(&this, strPath);
			}
			public HRESULT put_Path(BSTR strPath) mut
			{
				return VT.put_Path(&this, strPath);
			}
			public HRESULT get_RelPath(BSTR* strRelPath) mut
			{
				return VT.get_RelPath(&this, strRelPath);
			}
			public HRESULT put_RelPath(BSTR strRelPath) mut
			{
				return VT.put_RelPath(&this, strRelPath);
			}
			public HRESULT get_Server(BSTR* strServer) mut
			{
				return VT.get_Server(&this, strServer);
			}
			public HRESULT put_Server(BSTR strServer) mut
			{
				return VT.put_Server(&this, strServer);
			}
			public HRESULT get_Namespace(BSTR* strNamespace) mut
			{
				return VT.get_Namespace(&this, strNamespace);
			}
			public HRESULT put_Namespace(BSTR strNamespace) mut
			{
				return VT.put_Namespace(&this, strNamespace);
			}
			public HRESULT get_ParentNamespace(BSTR* strParentNamespace) mut
			{
				return VT.get_ParentNamespace(&this, strParentNamespace);
			}
			public HRESULT get_DisplayName(BSTR* strDisplayName) mut
			{
				return VT.get_DisplayName(&this, strDisplayName);
			}
			public HRESULT put_DisplayName(BSTR strDisplayName) mut
			{
				return VT.put_DisplayName(&this, strDisplayName);
			}
			public HRESULT get_Class(BSTR* strClass) mut
			{
				return VT.get_Class(&this, strClass);
			}
			public HRESULT put_Class(BSTR strClass) mut
			{
				return VT.put_Class(&this, strClass);
			}
			public HRESULT get_IsClass(int16* bIsClass) mut
			{
				return VT.get_IsClass(&this, bIsClass);
			}
			public HRESULT SetAsClass() mut
			{
				return VT.SetAsClass(&this);
			}
			public HRESULT get_IsSingleton(int16* bIsSingleton) mut
			{
				return VT.get_IsSingleton(&this, bIsSingleton);
			}
			public HRESULT SetAsSingleton() mut
			{
				return VT.SetAsSingleton(&this);
			}
			public HRESULT get_Keys(ISWbemNamedValueSet** objWbemNamedValueSet) mut
			{
				return VT.get_Keys(&this, objWbemNamedValueSet);
			}
			public HRESULT get_Security_(ISWbemSecurity** objWbemSecurity) mut
			{
				return VT.get_Security_(&this, objWbemSecurity);
			}
			public HRESULT get_Locale(BSTR* strLocale) mut
			{
				return VT.get_Locale(&this, strLocale);
			}
			public HRESULT put_Locale(BSTR strLocale) mut
			{
				return VT.put_Locale(&this, strLocale);
			}
			public HRESULT get_Authority(BSTR* strAuthority) mut
			{
				return VT.get_Authority(&this, strAuthority);
			}
			public HRESULT put_Authority(BSTR strAuthority) mut
			{
				return VT.put_Authority(&this, strAuthority);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strPath) get_Path;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strPath) put_Path;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strRelPath) get_RelPath;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strRelPath) put_RelPath;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strServer) get_Server;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strServer) put_Server;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strNamespace) get_Namespace;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strNamespace) put_Namespace;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strParentNamespace) get_ParentNamespace;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strDisplayName) get_DisplayName;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strDisplayName) put_DisplayName;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strClass) get_Class;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strClass) put_Class;
				public new function HRESULT(ISWbemObjectPath *self, int16* bIsClass) get_IsClass;
				public new function HRESULT(ISWbemObjectPath *self) SetAsClass;
				public new function HRESULT(ISWbemObjectPath *self, int16* bIsSingleton) get_IsSingleton;
				public new function HRESULT(ISWbemObjectPath *self) SetAsSingleton;
				public new function HRESULT(ISWbemObjectPath *self, ISWbemNamedValueSet** objWbemNamedValueSet) get_Keys;
				public new function HRESULT(ISWbemObjectPath *self, ISWbemSecurity** objWbemSecurity) get_Security_;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strLocale) get_Locale;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strLocale) put_Locale;
				public new function HRESULT(ISWbemObjectPath *self, BSTR* strAuthority) get_Authority;
				public new function HRESULT(ISWbemObjectPath *self, BSTR strAuthority) put_Authority;
			}
		}
		[CRepr]
		public struct ISWbemLastError : ISWbemObject
		{
			public const new Guid IID = .(0xd962db84, 0xd4bb, 0x11d1, 0x8b, 0x09, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ISWbemObject.VTable
			{
			}
		}
		[CRepr]
		public struct ISWbemSinkEvents : IDispatch
		{
			public const new Guid IID = .(0x75718ca0, 0xf029, 0x11d1, 0xa1, 0xac, 0x00, 0xc0, 0x4f, 0xb6, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ISWbemSink : IDispatch
		{
			public const new Guid IID = .(0x75718c9f, 0xf029, 0x11d1, 0xa1, 0xac, 0x00, 0xc0, 0x4f, 0xb6, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemSink *self) Cancel;
			}
		}
		[CRepr]
		public struct ISWbemSecurity : IDispatch
		{
			public const new Guid IID = .(0xb54d66e6, 0x2287, 0x11d2, 0x8b, 0x33, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ImpersonationLevel(WbemImpersonationLevelEnum* iImpersonationLevel) mut
			{
				return VT.get_ImpersonationLevel(&this, iImpersonationLevel);
			}
			public HRESULT put_ImpersonationLevel(WbemImpersonationLevelEnum iImpersonationLevel) mut
			{
				return VT.put_ImpersonationLevel(&this, iImpersonationLevel);
			}
			public HRESULT get_AuthenticationLevel(WbemAuthenticationLevelEnum* iAuthenticationLevel) mut
			{
				return VT.get_AuthenticationLevel(&this, iAuthenticationLevel);
			}
			public HRESULT put_AuthenticationLevel(WbemAuthenticationLevelEnum iAuthenticationLevel) mut
			{
				return VT.put_AuthenticationLevel(&this, iAuthenticationLevel);
			}
			public HRESULT get_Privileges(ISWbemPrivilegeSet** objWbemPrivilegeSet) mut
			{
				return VT.get_Privileges(&this, objWbemPrivilegeSet);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemSecurity *self, WbemImpersonationLevelEnum* iImpersonationLevel) get_ImpersonationLevel;
				public new function HRESULT(ISWbemSecurity *self, WbemImpersonationLevelEnum iImpersonationLevel) put_ImpersonationLevel;
				public new function HRESULT(ISWbemSecurity *self, WbemAuthenticationLevelEnum* iAuthenticationLevel) get_AuthenticationLevel;
				public new function HRESULT(ISWbemSecurity *self, WbemAuthenticationLevelEnum iAuthenticationLevel) put_AuthenticationLevel;
				public new function HRESULT(ISWbemSecurity *self, ISWbemPrivilegeSet** objWbemPrivilegeSet) get_Privileges;
			}
		}
		[CRepr]
		public struct ISWbemPrivilege : IDispatch
		{
			public const new Guid IID = .(0x26ee67bd, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsEnabled(int16* bIsEnabled) mut
			{
				return VT.get_IsEnabled(&this, bIsEnabled);
			}
			public HRESULT put_IsEnabled(int16 bIsEnabled) mut
			{
				return VT.put_IsEnabled(&this, bIsEnabled);
			}
			public HRESULT get_Name(BSTR* strDisplayName) mut
			{
				return VT.get_Name(&this, strDisplayName);
			}
			public HRESULT get_DisplayName(BSTR* strDisplayName) mut
			{
				return VT.get_DisplayName(&this, strDisplayName);
			}
			public HRESULT get_Identifier(WbemPrivilegeEnum* iPrivilege) mut
			{
				return VT.get_Identifier(&this, iPrivilege);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemPrivilege *self, int16* bIsEnabled) get_IsEnabled;
				public new function HRESULT(ISWbemPrivilege *self, int16 bIsEnabled) put_IsEnabled;
				public new function HRESULT(ISWbemPrivilege *self, BSTR* strDisplayName) get_Name;
				public new function HRESULT(ISWbemPrivilege *self, BSTR* strDisplayName) get_DisplayName;
				public new function HRESULT(ISWbemPrivilege *self, WbemPrivilegeEnum* iPrivilege) get_Identifier;
			}
		}
		[CRepr]
		public struct ISWbemPrivilegeSet : IDispatch
		{
			public const new Guid IID = .(0x26ee67bf, 0x5804, 0x11d2, 0x8b, 0x4a, 0x00, 0x60, 0x08, 0x06, 0xd9, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(WbemPrivilegeEnum iPrivilege, ISWbemPrivilege** objWbemPrivilege) mut
			{
				return VT.Item(&this, iPrivilege, objWbemPrivilege);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT Add(WbemPrivilegeEnum iPrivilege, int16 bIsEnabled, ISWbemPrivilege** objWbemPrivilege) mut
			{
				return VT.Add(&this, iPrivilege, bIsEnabled, objWbemPrivilege);
			}
			public HRESULT Remove(WbemPrivilegeEnum iPrivilege) mut
			{
				return VT.Remove(&this, iPrivilege);
			}
			public HRESULT DeleteAll() mut
			{
				return VT.DeleteAll(&this);
			}
			public HRESULT AddAsString(BSTR strPrivilege, int16 bIsEnabled, ISWbemPrivilege** objWbemPrivilege) mut
			{
				return VT.AddAsString(&this, strPrivilege, bIsEnabled, objWbemPrivilege);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemPrivilegeSet *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemPrivilegeSet *self, WbemPrivilegeEnum iPrivilege, ISWbemPrivilege** objWbemPrivilege) Item;
				public new function HRESULT(ISWbemPrivilegeSet *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemPrivilegeSet *self, WbemPrivilegeEnum iPrivilege, int16 bIsEnabled, ISWbemPrivilege** objWbemPrivilege) Add;
				public new function HRESULT(ISWbemPrivilegeSet *self, WbemPrivilegeEnum iPrivilege) Remove;
				public new function HRESULT(ISWbemPrivilegeSet *self) DeleteAll;
				public new function HRESULT(ISWbemPrivilegeSet *self, BSTR strPrivilege, int16 bIsEnabled, ISWbemPrivilege** objWbemPrivilege) AddAsString;
			}
		}
		[CRepr]
		public struct ISWbemServicesEx : ISWbemServices
		{
			public const new Guid IID = .(0xd2f68443, 0x85dc, 0x427e, 0x91, 0xd8, 0x36, 0x65, 0x54, 0xcc, 0x75, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Put(ISWbemObjectEx* objWbemObject, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectPath** objWbemObjectPath) mut
			{
				return VT.Put(&this, objWbemObject, iFlags, objWbemNamedValueSet, objWbemObjectPath);
			}
			public HRESULT PutAsync(ISWbemSink* objWbemSink, ISWbemObjectEx* objWbemObject, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) mut
			{
				return VT.PutAsync(&this, objWbemSink, objWbemObject, iFlags, objWbemNamedValueSet, objWbemAsyncContext);
			}
			[CRepr]
			public struct VTable : ISWbemServices.VTable
			{
				public new function HRESULT(ISWbemServicesEx *self, ISWbemObjectEx* objWbemObject, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemObjectPath** objWbemObjectPath) Put;
				public new function HRESULT(ISWbemServicesEx *self, ISWbemSink* objWbemSink, ISWbemObjectEx* objWbemObject, int32 iFlags, IDispatch* objWbemNamedValueSet, IDispatch* objWbemAsyncContext) PutAsync;
			}
		}
		[CRepr]
		public struct ISWbemObjectEx : ISWbemObject
		{
			public const new Guid IID = .(0x269ad56a, 0x8a67, 0x4129, 0xbc, 0x8c, 0x05, 0x06, 0xdc, 0xfe, 0x98, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Refresh_(int32 iFlags, IDispatch* objWbemNamedValueSet) mut
			{
				return VT.Refresh_(&this, iFlags, objWbemNamedValueSet);
			}
			public HRESULT get_SystemProperties_(ISWbemPropertySet** objWbemPropertySet) mut
			{
				return VT.get_SystemProperties_(&this, objWbemPropertySet);
			}
			public HRESULT GetText_(WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, IDispatch* objWbemNamedValueSet, BSTR* bsText) mut
			{
				return VT.GetText_(&this, iObjectTextFormat, iFlags, objWbemNamedValueSet, bsText);
			}
			public HRESULT SetFromText_(BSTR bsText, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, IDispatch* objWbemNamedValueSet) mut
			{
				return VT.SetFromText_(&this, bsText, iObjectTextFormat, iFlags, objWbemNamedValueSet);
			}
			[CRepr]
			public struct VTable : ISWbemObject.VTable
			{
				public new function HRESULT(ISWbemObjectEx *self, int32 iFlags, IDispatch* objWbemNamedValueSet) Refresh_;
				public new function HRESULT(ISWbemObjectEx *self, ISWbemPropertySet** objWbemPropertySet) get_SystemProperties_;
				public new function HRESULT(ISWbemObjectEx *self, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, IDispatch* objWbemNamedValueSet, BSTR* bsText) GetText_;
				public new function HRESULT(ISWbemObjectEx *self, BSTR bsText, WbemObjectTextFormatEnum iObjectTextFormat, int32 iFlags, IDispatch* objWbemNamedValueSet) SetFromText_;
			}
		}
		[CRepr]
		public struct ISWbemDateTime : IDispatch
		{
			public const new Guid IID = .(0x5e97458a, 0xcf77, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(BSTR* strValue) mut
			{
				return VT.get_Value(&this, strValue);
			}
			public HRESULT put_Value(BSTR strValue) mut
			{
				return VT.put_Value(&this, strValue);
			}
			public HRESULT get_Year(int32* iYear) mut
			{
				return VT.get_Year(&this, iYear);
			}
			public HRESULT put_Year(int32 iYear) mut
			{
				return VT.put_Year(&this, iYear);
			}
			public HRESULT get_YearSpecified(int16* bYearSpecified) mut
			{
				return VT.get_YearSpecified(&this, bYearSpecified);
			}
			public HRESULT put_YearSpecified(int16 bYearSpecified) mut
			{
				return VT.put_YearSpecified(&this, bYearSpecified);
			}
			public HRESULT get_Month(int32* iMonth) mut
			{
				return VT.get_Month(&this, iMonth);
			}
			public HRESULT put_Month(int32 iMonth) mut
			{
				return VT.put_Month(&this, iMonth);
			}
			public HRESULT get_MonthSpecified(int16* bMonthSpecified) mut
			{
				return VT.get_MonthSpecified(&this, bMonthSpecified);
			}
			public HRESULT put_MonthSpecified(int16 bMonthSpecified) mut
			{
				return VT.put_MonthSpecified(&this, bMonthSpecified);
			}
			public HRESULT get_Day(int32* iDay) mut
			{
				return VT.get_Day(&this, iDay);
			}
			public HRESULT put_Day(int32 iDay) mut
			{
				return VT.put_Day(&this, iDay);
			}
			public HRESULT get_DaySpecified(int16* bDaySpecified) mut
			{
				return VT.get_DaySpecified(&this, bDaySpecified);
			}
			public HRESULT put_DaySpecified(int16 bDaySpecified) mut
			{
				return VT.put_DaySpecified(&this, bDaySpecified);
			}
			public HRESULT get_Hours(int32* iHours) mut
			{
				return VT.get_Hours(&this, iHours);
			}
			public HRESULT put_Hours(int32 iHours) mut
			{
				return VT.put_Hours(&this, iHours);
			}
			public HRESULT get_HoursSpecified(int16* bHoursSpecified) mut
			{
				return VT.get_HoursSpecified(&this, bHoursSpecified);
			}
			public HRESULT put_HoursSpecified(int16 bHoursSpecified) mut
			{
				return VT.put_HoursSpecified(&this, bHoursSpecified);
			}
			public HRESULT get_Minutes(int32* iMinutes) mut
			{
				return VT.get_Minutes(&this, iMinutes);
			}
			public HRESULT put_Minutes(int32 iMinutes) mut
			{
				return VT.put_Minutes(&this, iMinutes);
			}
			public HRESULT get_MinutesSpecified(int16* bMinutesSpecified) mut
			{
				return VT.get_MinutesSpecified(&this, bMinutesSpecified);
			}
			public HRESULT put_MinutesSpecified(int16 bMinutesSpecified) mut
			{
				return VT.put_MinutesSpecified(&this, bMinutesSpecified);
			}
			public HRESULT get_Seconds(int32* iSeconds) mut
			{
				return VT.get_Seconds(&this, iSeconds);
			}
			public HRESULT put_Seconds(int32 iSeconds) mut
			{
				return VT.put_Seconds(&this, iSeconds);
			}
			public HRESULT get_SecondsSpecified(int16* bSecondsSpecified) mut
			{
				return VT.get_SecondsSpecified(&this, bSecondsSpecified);
			}
			public HRESULT put_SecondsSpecified(int16 bSecondsSpecified) mut
			{
				return VT.put_SecondsSpecified(&this, bSecondsSpecified);
			}
			public HRESULT get_Microseconds(int32* iMicroseconds) mut
			{
				return VT.get_Microseconds(&this, iMicroseconds);
			}
			public HRESULT put_Microseconds(int32 iMicroseconds) mut
			{
				return VT.put_Microseconds(&this, iMicroseconds);
			}
			public HRESULT get_MicrosecondsSpecified(int16* bMicrosecondsSpecified) mut
			{
				return VT.get_MicrosecondsSpecified(&this, bMicrosecondsSpecified);
			}
			public HRESULT put_MicrosecondsSpecified(int16 bMicrosecondsSpecified) mut
			{
				return VT.put_MicrosecondsSpecified(&this, bMicrosecondsSpecified);
			}
			public HRESULT get_UTC(int32* iUTC) mut
			{
				return VT.get_UTC(&this, iUTC);
			}
			public HRESULT put_UTC(int32 iUTC) mut
			{
				return VT.put_UTC(&this, iUTC);
			}
			public HRESULT get_UTCSpecified(int16* bUTCSpecified) mut
			{
				return VT.get_UTCSpecified(&this, bUTCSpecified);
			}
			public HRESULT put_UTCSpecified(int16 bUTCSpecified) mut
			{
				return VT.put_UTCSpecified(&this, bUTCSpecified);
			}
			public HRESULT get_IsInterval(int16* bIsInterval) mut
			{
				return VT.get_IsInterval(&this, bIsInterval);
			}
			public HRESULT put_IsInterval(int16 bIsInterval) mut
			{
				return VT.put_IsInterval(&this, bIsInterval);
			}
			public HRESULT GetVarDate(int16 bIsLocal, double* dVarDate) mut
			{
				return VT.GetVarDate(&this, bIsLocal, dVarDate);
			}
			public HRESULT SetVarDate(double dVarDate, int16 bIsLocal) mut
			{
				return VT.SetVarDate(&this, dVarDate, bIsLocal);
			}
			public HRESULT GetFileTime(int16 bIsLocal, BSTR* strFileTime) mut
			{
				return VT.GetFileTime(&this, bIsLocal, strFileTime);
			}
			public HRESULT SetFileTime(BSTR strFileTime, int16 bIsLocal) mut
			{
				return VT.SetFileTime(&this, strFileTime, bIsLocal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemDateTime *self, BSTR* strValue) get_Value;
				public new function HRESULT(ISWbemDateTime *self, BSTR strValue) put_Value;
				public new function HRESULT(ISWbemDateTime *self, int32* iYear) get_Year;
				public new function HRESULT(ISWbemDateTime *self, int32 iYear) put_Year;
				public new function HRESULT(ISWbemDateTime *self, int16* bYearSpecified) get_YearSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bYearSpecified) put_YearSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iMonth) get_Month;
				public new function HRESULT(ISWbemDateTime *self, int32 iMonth) put_Month;
				public new function HRESULT(ISWbemDateTime *self, int16* bMonthSpecified) get_MonthSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bMonthSpecified) put_MonthSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iDay) get_Day;
				public new function HRESULT(ISWbemDateTime *self, int32 iDay) put_Day;
				public new function HRESULT(ISWbemDateTime *self, int16* bDaySpecified) get_DaySpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bDaySpecified) put_DaySpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iHours) get_Hours;
				public new function HRESULT(ISWbemDateTime *self, int32 iHours) put_Hours;
				public new function HRESULT(ISWbemDateTime *self, int16* bHoursSpecified) get_HoursSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bHoursSpecified) put_HoursSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iMinutes) get_Minutes;
				public new function HRESULT(ISWbemDateTime *self, int32 iMinutes) put_Minutes;
				public new function HRESULT(ISWbemDateTime *self, int16* bMinutesSpecified) get_MinutesSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bMinutesSpecified) put_MinutesSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iSeconds) get_Seconds;
				public new function HRESULT(ISWbemDateTime *self, int32 iSeconds) put_Seconds;
				public new function HRESULT(ISWbemDateTime *self, int16* bSecondsSpecified) get_SecondsSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bSecondsSpecified) put_SecondsSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iMicroseconds) get_Microseconds;
				public new function HRESULT(ISWbemDateTime *self, int32 iMicroseconds) put_Microseconds;
				public new function HRESULT(ISWbemDateTime *self, int16* bMicrosecondsSpecified) get_MicrosecondsSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bMicrosecondsSpecified) put_MicrosecondsSpecified;
				public new function HRESULT(ISWbemDateTime *self, int32* iUTC) get_UTC;
				public new function HRESULT(ISWbemDateTime *self, int32 iUTC) put_UTC;
				public new function HRESULT(ISWbemDateTime *self, int16* bUTCSpecified) get_UTCSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16 bUTCSpecified) put_UTCSpecified;
				public new function HRESULT(ISWbemDateTime *self, int16* bIsInterval) get_IsInterval;
				public new function HRESULT(ISWbemDateTime *self, int16 bIsInterval) put_IsInterval;
				public new function HRESULT(ISWbemDateTime *self, int16 bIsLocal, double* dVarDate) GetVarDate;
				public new function HRESULT(ISWbemDateTime *self, double dVarDate, int16 bIsLocal) SetVarDate;
				public new function HRESULT(ISWbemDateTime *self, int16 bIsLocal, BSTR* strFileTime) GetFileTime;
				public new function HRESULT(ISWbemDateTime *self, BSTR strFileTime, int16 bIsLocal) SetFileTime;
			}
		}
		[CRepr]
		public struct ISWbemRefresher : IDispatch
		{
			public const new Guid IID = .(0x14d8250e, 0xd9c2, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pUnk) mut
			{
				return VT.get__NewEnum(&this, pUnk);
			}
			public HRESULT Item(int32 iIndex, ISWbemRefreshableItem** objWbemRefreshableItem) mut
			{
				return VT.Item(&this, iIndex, objWbemRefreshableItem);
			}
			public HRESULT get_Count(int32* iCount) mut
			{
				return VT.get_Count(&this, iCount);
			}
			public HRESULT Add(ISWbemServicesEx* objWbemServices, BSTR bsInstancePath, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemRefreshableItem** objWbemRefreshableItem) mut
			{
				return VT.Add(&this, objWbemServices, bsInstancePath, iFlags, objWbemNamedValueSet, objWbemRefreshableItem);
			}
			public HRESULT AddEnum(ISWbemServicesEx* objWbemServices, BSTR bsClassName, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemRefreshableItem** objWbemRefreshableItem) mut
			{
				return VT.AddEnum(&this, objWbemServices, bsClassName, iFlags, objWbemNamedValueSet, objWbemRefreshableItem);
			}
			public HRESULT Remove(int32 iIndex, int32 iFlags) mut
			{
				return VT.Remove(&this, iIndex, iFlags);
			}
			public HRESULT Refresh(int32 iFlags) mut
			{
				return VT.Refresh(&this, iFlags);
			}
			public HRESULT get_AutoReconnect(int16* bCount) mut
			{
				return VT.get_AutoReconnect(&this, bCount);
			}
			public HRESULT put_AutoReconnect(int16 bCount) mut
			{
				return VT.put_AutoReconnect(&this, bCount);
			}
			public HRESULT DeleteAll() mut
			{
				return VT.DeleteAll(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemRefresher *self, IUnknown** pUnk) get__NewEnum;
				public new function HRESULT(ISWbemRefresher *self, int32 iIndex, ISWbemRefreshableItem** objWbemRefreshableItem) Item;
				public new function HRESULT(ISWbemRefresher *self, int32* iCount) get_Count;
				public new function HRESULT(ISWbemRefresher *self, ISWbemServicesEx* objWbemServices, BSTR bsInstancePath, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemRefreshableItem** objWbemRefreshableItem) Add;
				public new function HRESULT(ISWbemRefresher *self, ISWbemServicesEx* objWbemServices, BSTR bsClassName, int32 iFlags, IDispatch* objWbemNamedValueSet, ISWbemRefreshableItem** objWbemRefreshableItem) AddEnum;
				public new function HRESULT(ISWbemRefresher *self, int32 iIndex, int32 iFlags) Remove;
				public new function HRESULT(ISWbemRefresher *self, int32 iFlags) Refresh;
				public new function HRESULT(ISWbemRefresher *self, int16* bCount) get_AutoReconnect;
				public new function HRESULT(ISWbemRefresher *self, int16 bCount) put_AutoReconnect;
				public new function HRESULT(ISWbemRefresher *self) DeleteAll;
			}
		}
		[CRepr]
		public struct ISWbemRefreshableItem : IDispatch
		{
			public const new Guid IID = .(0x5ad4bf92, 0xdaab, 0x11d3, 0xb3, 0x8f, 0x00, 0x10, 0x5a, 0x1f, 0x47, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(int32* iIndex) mut
			{
				return VT.get_Index(&this, iIndex);
			}
			public HRESULT get_Refresher(ISWbemRefresher** objWbemRefresher) mut
			{
				return VT.get_Refresher(&this, objWbemRefresher);
			}
			public HRESULT get_IsSet(int16* bIsSet) mut
			{
				return VT.get_IsSet(&this, bIsSet);
			}
			public HRESULT get_Object(ISWbemObjectEx** objWbemObject) mut
			{
				return VT.get_Object(&this, objWbemObject);
			}
			public HRESULT get_ObjectSet(ISWbemObjectSet** objWbemObjectSet) mut
			{
				return VT.get_ObjectSet(&this, objWbemObjectSet);
			}
			public HRESULT Remove(int32 iFlags) mut
			{
				return VT.Remove(&this, iFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISWbemRefreshableItem *self, int32* iIndex) get_Index;
				public new function HRESULT(ISWbemRefreshableItem *self, ISWbemRefresher** objWbemRefresher) get_Refresher;
				public new function HRESULT(ISWbemRefreshableItem *self, int16* bIsSet) get_IsSet;
				public new function HRESULT(ISWbemRefreshableItem *self, ISWbemObjectEx** objWbemObject) get_Object;
				public new function HRESULT(ISWbemRefreshableItem *self, ISWbemObjectSet** objWbemObjectSet) get_ObjectSet;
				public new function HRESULT(ISWbemRefreshableItem *self, int32 iFlags) Remove;
			}
		}
		[CRepr]
		public struct IWMIExtension : IDispatch
		{
			public const new Guid IID = .(0xadc1f06e, 0x5c7e, 0x11d2, 0x8b, 0x74, 0x00, 0x10, 0x4b, 0x2a, 0xfb, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WMIObjectPath(BSTR* strWMIObjectPath) mut
			{
				return VT.get_WMIObjectPath(&this, strWMIObjectPath);
			}
			public HRESULT GetWMIObject(ISWbemObject** objWMIObject) mut
			{
				return VT.GetWMIObject(&this, objWMIObject);
			}
			public HRESULT GetWMIServices(ISWbemServices** objWMIServices) mut
			{
				return VT.GetWMIServices(&this, objWMIServices);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMIExtension *self, BSTR* strWMIObjectPath) get_WMIObjectPath;
				public new function HRESULT(IWMIExtension *self, ISWbemObject** objWMIObject) GetWMIObject;
				public new function HRESULT(IWMIExtension *self, ISWbemServices** objWMIServices) GetWMIServices;
			}
		}
		[CRepr]
		public struct IWbemTransport : IUnknown
		{
			public const new Guid IID = .(0x553fe584, 0x2156, 0x11d0, 0xb6, 0xae, 0x00, 0xaa, 0x00, 0x32, 0x40, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemTransport *self) Initialize;
			}
		}
		[CRepr]
		public struct IWbemLevel1Login : IUnknown
		{
			public const new Guid IID = .(0xf309ad18, 0xd86a, 0x11d0, 0xa0, 0x75, 0x00, 0xc0, 0x4f, 0xb6, 0x88, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EstablishPosition(PWSTR wszLocaleList, uint32 dwNumLocales, uint32* reserved) mut
			{
				return VT.EstablishPosition(&this, wszLocaleList, dwNumLocales, reserved);
			}
			public HRESULT RequestChallenge(PWSTR wszNetworkResource, PWSTR wszUser, uint8* Nonce) mut
			{
				return VT.RequestChallenge(&this, wszNetworkResource, wszUser, Nonce);
			}
			public HRESULT WBEMLogin(PWSTR wszPreferredLocale, uint8* AccessToken, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppNamespace) mut
			{
				return VT.WBEMLogin(&this, wszPreferredLocale, AccessToken, lFlags, pCtx, ppNamespace);
			}
			public HRESULT NTLMLogin(PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppNamespace) mut
			{
				return VT.NTLMLogin(&this, wszNetworkResource, wszPreferredLocale, lFlags, pCtx, ppNamespace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemLevel1Login *self, PWSTR wszLocaleList, uint32 dwNumLocales, uint32* reserved) EstablishPosition;
				public new function HRESULT(IWbemLevel1Login *self, PWSTR wszNetworkResource, PWSTR wszUser, uint8* Nonce) RequestChallenge;
				public new function HRESULT(IWbemLevel1Login *self, PWSTR wszPreferredLocale, uint8* AccessToken, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppNamespace) WBEMLogin;
				public new function HRESULT(IWbemLevel1Login *self, PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, IWbemContext* pCtx, IWbemServices** ppNamespace) NTLMLogin;
			}
		}
		[CRepr]
		public struct IWbemConnectorLogin : IUnknown
		{
			public const new Guid IID = .(0xd8ec9cb1, 0xb135, 0x4f10, 0x8b, 0x1b, 0xc7, 0x18, 0x8b, 0xb0, 0xd1, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectorLogin(PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, void** pInterface) mut
			{
				return VT.ConnectorLogin(&this, wszNetworkResource, wszPreferredLocale, lFlags, pCtx, riid, pInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemConnectorLogin *self, PWSTR wszNetworkResource, PWSTR wszPreferredLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, void** pInterface) ConnectorLogin;
			}
		}
		[CRepr]
		public struct IWbemAddressResolution : IUnknown
		{
			public const new Guid IID = .(0xf7ce2e12, 0x8c90, 0x11d1, 0x9e, 0x7b, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resolve(PWSTR wszNamespacePath, PWSTR wszAddressType, uint32* pdwAddressLength, uint8** pabBinaryAddress) mut
			{
				return VT.Resolve(&this, wszNamespacePath, wszAddressType, pdwAddressLength, pabBinaryAddress);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemAddressResolution *self, PWSTR wszNamespacePath, PWSTR wszAddressType, uint32* pdwAddressLength, uint8** pabBinaryAddress) Resolve;
			}
		}
		[CRepr]
		public struct IWbemClientTransport : IUnknown
		{
			public const new Guid IID = .(0xf7ce2e11, 0x8c90, 0x11d1, 0x9e, 0x7b, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectServer(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, IWbemContext* pCtx, IWbemServices** ppNamespace) mut
			{
				return VT.ConnectServer(&this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strNetworkResource, strUser, strPassword, strLocale, lSecurityFlags, strAuthority, pCtx, ppNamespace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemClientTransport *self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strNetworkResource, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lSecurityFlags, BSTR strAuthority, IWbemContext* pCtx, IWbemServices** ppNamespace) ConnectServer;
			}
		}
		[CRepr]
		public struct IWbemClientConnectionTransport : IUnknown
		{
			public const new Guid IID = .(0xa889c72a, 0xfcc1, 0x4a9e, 0xaf, 0x61, 0xed, 0x07, 0x13, 0x33, 0xfb, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, void** pInterface, IWbemCallResult** pCallRes) mut
			{
				return VT.Open(&this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strObject, strUser, strPassword, strLocale, lFlags, pCtx, riid, pInterface, pCallRes);
			}
			public HRESULT OpenAsync(BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, IWbemObjectSink* pResponseHandler) mut
			{
				return VT.OpenAsync(&this, strAddressType, dwBinaryAddressLength, abBinaryAddress, strObject, strUser, strPassword, strLocale, lFlags, pCtx, riid, pResponseHandler);
			}
			public HRESULT Cancel(int32 lFlags, IWbemObjectSink* pHandler) mut
			{
				return VT.Cancel(&this, lFlags, pHandler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemClientConnectionTransport *self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, void** pInterface, IWbemCallResult** pCallRes) Open;
				public new function HRESULT(IWbemClientConnectionTransport *self, BSTR strAddressType, uint32 dwBinaryAddressLength, uint8* abBinaryAddress, BSTR strObject, BSTR strUser, BSTR strPassword, BSTR strLocale, int32 lFlags, IWbemContext* pCtx, Guid* riid, IWbemObjectSink* pResponseHandler) OpenAsync;
				public new function HRESULT(IWbemClientConnectionTransport *self, int32 lFlags, IWbemObjectSink* pHandler) Cancel;
			}
		}
		[CRepr]
		public struct IWbemConstructClassObject : IUnknown
		{
			public const new Guid IID = .(0x9ef76194, 0x70d5, 0x11d1, 0xad, 0x90, 0x00, 0xc0, 0x4f, 0xd8, 0xfd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInheritanceChain(int32 lNumAntecedents, PWSTR* awszAntecedents) mut
			{
				return VT.SetInheritanceChain(&this, lNumAntecedents, awszAntecedents);
			}
			public HRESULT SetPropertyOrigin(PWSTR wszPropertyName, int32 lOriginIndex) mut
			{
				return VT.SetPropertyOrigin(&this, wszPropertyName, lOriginIndex);
			}
			public HRESULT SetMethodOrigin(PWSTR wszMethodName, int32 lOriginIndex) mut
			{
				return VT.SetMethodOrigin(&this, wszMethodName, lOriginIndex);
			}
			public HRESULT SetServerNamespace(PWSTR wszServer, PWSTR wszNamespace) mut
			{
				return VT.SetServerNamespace(&this, wszServer, wszNamespace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWbemConstructClassObject *self, int32 lNumAntecedents, PWSTR* awszAntecedents) SetInheritanceChain;
				public new function HRESULT(IWbemConstructClassObject *self, PWSTR wszPropertyName, int32 lOriginIndex) SetPropertyOrigin;
				public new function HRESULT(IWbemConstructClassObject *self, PWSTR wszMethodName, int32 lOriginIndex) SetMethodOrigin;
				public new function HRESULT(IWbemConstructClassObject *self, PWSTR wszServer, PWSTR wszNamespace) SetServerNamespace;
			}
		}
		
		// --- Functions ---
		
		[Import("mi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MI_Result MI_Application_InitializeV1(uint32 flags, uint16* applicationID, MI_Instance** extendedError, MI_Application* application);
		
	}
}
