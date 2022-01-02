using System;

// namespace System.Rpc
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RPC_C_BINDING_INFINITE_TIMEOUT = 10;
		public const uint32 RPC_C_BINDING_MIN_TIMEOUT = 0;
		public const uint32 RPC_C_BINDING_DEFAULT_TIMEOUT = 5;
		public const uint32 RPC_C_BINDING_MAX_TIMEOUT = 9;
		public const int32 RPC_C_CANCEL_INFINITE_TIMEOUT = -1;
		public const uint32 RPC_C_LISTEN_MAX_CALLS_DEFAULT = 1234;
		public const uint32 RPC_C_PROTSEQ_MAX_REQS_DEFAULT = 10;
		public const uint32 RPC_C_BIND_TO_ALL_NICS = 1;
		public const uint32 RPC_C_USE_INTERNET_PORT = 1;
		public const uint32 RPC_C_USE_INTRANET_PORT = 2;
		public const uint32 RPC_C_DONT_FAIL = 4;
		public const uint32 RPC_C_RPCHTTP_USE_LOAD_BALANCE = 8;
		public const uint32 RPC_C_TRY_ENFORCE_MAX_CALLS = 16;
		public const uint32 RPC_C_MQ_TEMPORARY = 0;
		public const uint32 RPC_C_MQ_PERMANENT = 1;
		public const uint32 RPC_C_MQ_CLEAR_ON_OPEN = 2;
		public const uint32 RPC_C_MQ_USE_EXISTING_SECURITY = 4;
		public const uint32 RPC_C_MQ_AUTHN_LEVEL_NONE = 0;
		public const uint32 RPC_C_MQ_AUTHN_LEVEL_PKT_INTEGRITY = 8;
		public const uint32 RPC_C_MQ_AUTHN_LEVEL_PKT_PRIVACY = 16;
		public const uint32 RPC_C_MQ_EXPRESS = 0;
		public const uint32 RPC_C_MQ_RECOVERABLE = 1;
		public const uint32 RPC_C_MQ_JOURNAL_NONE = 0;
		public const uint32 RPC_C_MQ_JOURNAL_DEADLETTER = 1;
		public const uint32 RPC_C_MQ_JOURNAL_ALWAYS = 2;
		public const uint32 RPC_C_OPT_MQ_DELIVERY = 1;
		public const uint32 RPC_C_OPT_MQ_PRIORITY = 2;
		public const uint32 RPC_C_OPT_MQ_JOURNAL = 3;
		public const uint32 RPC_C_OPT_MQ_ACKNOWLEDGE = 4;
		public const uint32 RPC_C_OPT_MQ_AUTHN_SERVICE = 5;
		public const uint32 RPC_C_OPT_MQ_AUTHN_LEVEL = 6;
		public const uint32 RPC_C_OPT_MQ_TIME_TO_REACH_QUEUE = 7;
		public const uint32 RPC_C_OPT_MQ_TIME_TO_BE_RECEIVED = 8;
		public const uint32 RPC_C_OPT_BINDING_NONCAUSAL = 9;
		public const uint32 RPC_C_OPT_SECURITY_CALLBACK = 10;
		public const uint32 RPC_C_OPT_UNIQUE_BINDING = 11;
		public const uint32 RPC_C_OPT_MAX_OPTIONS = 12;
		public const uint32 RPC_C_OPT_CALL_TIMEOUT = 12;
		public const uint32 RPC_C_OPT_DONT_LINGER = 13;
		public const uint32 RPC_C_OPT_TRANS_SEND_BUFFER_SIZE = 5;
		public const uint32 RPC_C_OPT_TRUST_PEER = 14;
		public const uint32 RPC_C_OPT_ASYNC_BLOCK = 15;
		public const uint32 RPC_C_OPT_OPTIMIZE_TIME = 16;
		public const uint32 RPC_C_FULL_CERT_CHAIN = 1;
		public const uint32 RPC_C_STATS_CALLS_IN = 0;
		public const uint32 RPC_C_STATS_CALLS_OUT = 1;
		public const uint32 RPC_C_STATS_PKTS_IN = 2;
		public const uint32 RPC_C_STATS_PKTS_OUT = 3;
		public const uint32 RPC_C_AUTHN_NONE = 0;
		public const uint32 RPC_C_AUTHN_DCE_PRIVATE = 1;
		public const uint32 RPC_C_AUTHN_DCE_PUBLIC = 2;
		public const uint32 RPC_C_AUTHN_DEC_PUBLIC = 4;
		public const uint32 RPC_C_AUTHN_GSS_NEGOTIATE = 9;
		public const uint32 RPC_C_AUTHN_WINNT = 10;
		public const uint32 RPC_C_AUTHN_GSS_SCHANNEL = 14;
		public const uint32 RPC_C_AUTHN_GSS_KERBEROS = 16;
		public const uint32 RPC_C_AUTHN_DPA = 17;
		public const uint32 RPC_C_AUTHN_MSN = 18;
		public const uint32 RPC_C_AUTHN_DIGEST = 21;
		public const uint32 RPC_C_AUTHN_KERNEL = 20;
		public const uint32 RPC_C_AUTHN_NEGO_EXTENDER = 30;
		public const uint32 RPC_C_AUTHN_PKU2U = 31;
		public const uint32 RPC_C_AUTHN_LIVE_SSP = 32;
		public const uint32 RPC_C_AUTHN_LIVEXP_SSP = 35;
		public const uint32 RPC_C_AUTHN_CLOUD_AP = 36;
		public const uint32 RPC_C_AUTHN_MSONLINE = 82;
		public const uint32 RPC_C_AUTHN_MQ = 100;
		public const int32 RPC_C_AUTHN_DEFAULT = -1;
		public const int32 RPC_C_SECURITY_QOS_VERSION = 1;
		public const int32 RPC_C_SECURITY_QOS_VERSION_1 = 1;
		public const int32 RPC_C_SECURITY_QOS_VERSION_2 = 2;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_BASIC = 1;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_NTLM = 2;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_PASSPORT = 4;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_DIGEST = 8;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_NEGOTIATE = 16;
		public const uint32 RPC_C_HTTP_AUTHN_SCHEME_CERT = 65536;
		public const int32 RPC_C_SECURITY_QOS_VERSION_3 = 3;
		public const int32 RPC_C_SECURITY_QOS_VERSION_4 = 4;
		public const int32 RPC_C_SECURITY_QOS_VERSION_5 = 5;
		public const uint32 RPC_PROTSEQ_TCP = 1;
		public const uint32 RPC_PROTSEQ_NMP = 2;
		public const uint32 RPC_PROTSEQ_LRPC = 3;
		public const uint32 RPC_PROTSEQ_HTTP = 4;
		public const uint32 RPC_BHT_OBJECT_UUID_VALID = 1;
		public const uint32 RPC_BHO_EXCLUSIVE_AND_GUARANTEED = 4;
		public const uint32 RPC_C_AUTHZ_NONE = 0;
		public const uint32 RPC_C_AUTHZ_NAME = 1;
		public const uint32 RPC_C_AUTHZ_DCE = 2;
		public const uint32 RPC_C_AUTHZ_DEFAULT = 4294967295;
		public const uint32 DCE_C_ERROR_STRING_LEN = 256;
		public const uint32 RPC_C_EP_ALL_ELTS = 0;
		public const uint32 RPC_C_EP_MATCH_BY_IF = 1;
		public const uint32 RPC_C_EP_MATCH_BY_OBJ = 2;
		public const uint32 RPC_C_EP_MATCH_BY_BOTH = 3;
		public const uint32 RPC_C_VERS_ALL = 1;
		public const uint32 RPC_C_VERS_COMPATIBLE = 2;
		public const uint32 RPC_C_VERS_EXACT = 3;
		public const uint32 RPC_C_VERS_MAJOR_ONLY = 4;
		public const uint32 RPC_C_VERS_UPTO = 5;
		public const uint32 RPC_C_MGMT_INQ_IF_IDS = 0;
		public const uint32 RPC_C_MGMT_INQ_PRINC_NAME = 1;
		public const uint32 RPC_C_MGMT_INQ_STATS = 2;
		public const uint32 RPC_C_MGMT_IS_SERVER_LISTEN = 3;
		public const uint32 RPC_C_MGMT_STOP_SERVER_LISTEN = 4;
		public const uint32 RPC_C_PARM_MAX_PACKET_LENGTH = 1;
		public const uint32 RPC_C_PARM_BUFFER_LENGTH = 2;
		public const uint32 RPC_IF_AUTOLISTEN = 1;
		public const uint32 RPC_IF_OLE = 2;
		public const uint32 RPC_IF_ALLOW_UNKNOWN_AUTHORITY = 4;
		public const uint32 RPC_IF_ALLOW_SECURE_ONLY = 8;
		public const uint32 RPC_IF_ALLOW_CALLBACKS_WITH_NO_AUTH = 16;
		public const uint32 RPC_IF_ALLOW_LOCAL_ONLY = 32;
		public const uint32 RPC_IF_SEC_NO_CACHE = 64;
		public const uint32 RPC_IF_SEC_CACHE_PER_PROC = 128;
		public const uint32 RPC_IF_ASYNC_CALLBACK = 256;
		public const uint32 RPC_FW_IF_FLAG_DCOM = 1;
		public const uint32 RPC_C_NOTIFY_ON_SEND_COMPLETE = 1;
		public const uint32 MaxNumberOfEEInfoParams = 4;
		public const uint32 RPC_EEINFO_VERSION = 1;
		public const uint32 EEInfoPreviousRecordsMissing = 1;
		public const uint32 EEInfoNextRecordsMissing = 2;
		public const uint32 EEInfoUseFileTime = 4;
		public const uint32 EEInfoGCCOM = 11;
		public const uint32 EEInfoGCFRS = 12;
		public const uint32 RPC_CALL_ATTRIBUTES_VERSION = 2;
		public const uint32 RPC_QUERY_SERVER_PRINCIPAL_NAME = 2;
		public const uint32 RPC_QUERY_CLIENT_PRINCIPAL_NAME = 4;
		public const uint32 RPC_QUERY_CALL_LOCAL_ADDRESS = 8;
		public const uint32 RPC_QUERY_CLIENT_PID = 16;
		public const uint32 RPC_QUERY_IS_CLIENT_LOCAL = 32;
		public const uint32 RPC_QUERY_NO_AUTH_REQUIRED = 64;
		public const uint32 RPC_QUERY_CLIENT_ID = 128;
		public const uint32 RPC_CALL_STATUS_CANCELLED = 1;
		public const uint32 RPC_CALL_STATUS_DISCONNECTED = 2;
		public const uint32 RPC_CONTEXT_HANDLE_DEFAULT_FLAGS = 0;
		public const uint32 RPC_CONTEXT_HANDLE_FLAGS = 805306368;
		public const uint32 RPC_CONTEXT_HANDLE_SERIALIZE = 268435456;
		public const uint32 RPC_CONTEXT_HANDLE_DONT_SERIALIZE = 536870912;
		public const uint32 RPC_TYPE_STRICT_CONTEXT_HANDLE = 1073741824;
		public const uint32 RPC_TYPE_DISCONNECT_EVENT_CONTEXT_HANDLE = 2147483648;
		public const uint32 RPC_NCA_FLAGS_DEFAULT = 0;
		public const uint32 RPC_NCA_FLAGS_IDEMPOTENT = 1;
		public const uint32 RPC_NCA_FLAGS_BROADCAST = 2;
		public const uint32 RPC_NCA_FLAGS_MAYBE = 4;
		public const uint32 RPCFLG_HAS_GUARANTEE = 16;
		public const uint32 RPCFLG_WINRT_REMOTE_ASYNC = 32;
		public const uint32 RPC_BUFFER_COMPLETE = 4096;
		public const uint32 RPC_BUFFER_PARTIAL = 8192;
		public const uint32 RPC_BUFFER_EXTRA = 16384;
		public const uint32 RPC_BUFFER_ASYNC = 32768;
		public const uint32 RPC_BUFFER_NONOTIFY = 65536;
		public const uint32 RPCFLG_MESSAGE = 16777216;
		public const uint32 RPCFLG_AUTO_COMPLETE = 134217728;
		public const uint32 RPCFLG_LOCAL_CALL = 268435456;
		public const uint32 RPCFLG_INPUT_SYNCHRONOUS = 536870912;
		public const uint32 RPCFLG_ASYNCHRONOUS = 1073741824;
		public const uint32 RPCFLG_NON_NDR = 2147483648;
		public const uint32 RPCFLG_HAS_MULTI_SYNTAXES = 33554432;
		public const uint32 RPCFLG_HAS_CALLBACK = 67108864;
		public const uint32 RPCFLG_ACCESSIBILITY_BIT1 = 1048576;
		public const uint32 RPCFLG_ACCESSIBILITY_BIT2 = 2097152;
		public const uint32 RPCFLG_ACCESS_LOCAL = 4194304;
		public const uint32 NDR_CUSTOM_OR_DEFAULT_ALLOCATOR = 268435456;
		public const uint32 NDR_DEFAULT_ALLOCATOR = 536870912;
		public const uint32 RPCFLG_NDR64_CONTAINS_ARM_LAYOUT = 67108864;
		public const uint32 RPCFLG_SENDER_WAITING_FOR_REPLY = 8388608;
		public const uint32 RPC_FLAGS_VALID_BIT = 32768;
		public const uint32 NT351_INTERFACE_SIZE = 64;
		public const uint32 RPC_INTERFACE_HAS_PIPES = 1;
		public const uint32 RPC_SYSTEM_HANDLE_FREE_UNRETRIEVED = 1;
		public const uint32 RPC_SYSTEM_HANDLE_FREE_RETRIEVED = 2;
		public const uint32 RPC_SYSTEM_HANDLE_FREE_ALL = 3;
		public const uint32 RPC_SYSTEM_HANDLE_FREE_ERROR_ON_CLOSE = 4;
		public const uint32 TRANSPORT_TYPE_CN = 1;
		public const uint32 TRANSPORT_TYPE_DG = 2;
		public const uint32 TRANSPORT_TYPE_LPC = 4;
		public const uint32 TRANSPORT_TYPE_WMSG = 8;
		public const uint32 RPC_P_ADDR_FORMAT_TCP_IPV4 = 1;
		public const uint32 RPC_P_ADDR_FORMAT_TCP_IPV6 = 2;
		public const uint32 RPC_C_OPT_SESSION_ID = 6;
		public const uint32 RPC_C_OPT_COOKIE_AUTH = 7;
		public const uint32 RPC_C_OPT_RESOURCE_TYPE_UUID = 8;
		public const uint32 RPC_PROXY_CONNECTION_TYPE_IN_PROXY = 0;
		public const uint32 RPC_PROXY_CONNECTION_TYPE_OUT_PROXY = 1;
		public const uint32 RPC_C_OPT_PRIVATE_SUPPRESS_WAKE = 1;
		public const uint32 RPC_C_OPT_PRIVATE_DO_NOT_DISTURB = 2;
		public const uint32 RPC_C_OPT_PRIVATE_BREAK_ON_SUSPEND = 3;
		public const uint32 RPC_C_PROFILE_DEFAULT_ELT = 0;
		public const uint32 RPC_C_PROFILE_ALL_ELT = 1;
		public const uint32 RPC_C_PROFILE_ALL_ELTS = 1;
		public const uint32 RPC_C_PROFILE_MATCH_BY_IF = 2;
		public const uint32 RPC_C_PROFILE_MATCH_BY_MBR = 3;
		public const uint32 RPC_C_PROFILE_MATCH_BY_BOTH = 4;
		public const int32 RPC_C_NS_DEFAULT_EXP_AGE = -1;
		public const uint32 TARGET_IS_NT100_OR_LATER = 1;
		public const uint32 TARGET_IS_NT63_OR_LATER = 1;
		public const uint32 TARGET_IS_NT62_OR_LATER = 1;
		public const uint32 TARGET_IS_NT61_OR_LATER = 1;
		public const uint32 TARGET_IS_NT60_OR_LATER = 1;
		public const uint32 TARGET_IS_NT51_OR_LATER = 1;
		public const uint32 TARGET_IS_NT50_OR_LATER = 1;
		public const uint32 TARGET_IS_NT40_OR_LATER = 1;
		public const uint32 TARGET_IS_NT351_OR_WIN95_OR_LATER = 1;
		public const uint32 USER_CALL_IS_ASYNC = 256;
		public const uint32 USER_CALL_NEW_CORRELATION_DESC = 512;
		public const int32 MIDL_WINRT_TYPE_SERIALIZATION_INFO_CURRENT_VERSION = 1;
		public const uint32 USER_MARSHAL_FC_BYTE = 1;
		public const uint32 USER_MARSHAL_FC_CHAR = 2;
		public const uint32 USER_MARSHAL_FC_SMALL = 3;
		public const uint32 USER_MARSHAL_FC_USMALL = 4;
		public const uint32 USER_MARSHAL_FC_WCHAR = 5;
		public const uint32 USER_MARSHAL_FC_SHORT = 6;
		public const uint32 USER_MARSHAL_FC_USHORT = 7;
		public const uint32 USER_MARSHAL_FC_LONG = 8;
		public const uint32 USER_MARSHAL_FC_ULONG = 9;
		public const uint32 USER_MARSHAL_FC_FLOAT = 10;
		public const uint32 USER_MARSHAL_FC_HYPER = 11;
		public const uint32 USER_MARSHAL_FC_DOUBLE = 12;
		public const uint32 INVALID_FRAGMENT_ID = 0;
		public const uint32 NDR64_FC_EXPLICIT_HANDLE = 0;
		public const uint32 NDR64_FC_BIND_GENERIC = 1;
		public const uint32 NDR64_FC_BIND_PRIMITIVE = 2;
		public const uint32 NDR64_FC_AUTO_HANDLE = 3;
		public const uint32 NDR64_FC_CALLBACK_HANDLE = 4;
		public const uint32 NDR64_FC_NO_HANDLE = 5;
		public const uint32 __RPCPROXY_H_VERSION__ = 475;
		public const int32 MidlInterceptionInfoVersionOne = 1;
		public const int32 MidlWinrtTypeSerializationInfoVersionOne = 1;
		
		// --- Enums ---
		
		public enum RPC_C_QOS_CAPABILITIES : uint32
		{
			DEFAULT = 0,
			MUTUAL_AUTH = 1,
			MAKE_FULLSIC = 2,
			ANY_AUTHORITY = 4,
			IGNORE_DELEGATE_FAILURE = 8,
			LOCAL_MA_HINT = 16,
			SCHANNEL_FULL_AUTH_IDENTITY = 32,
		}
		public enum RPC_C_QOS_IDENTITY : uint32
		{
			STATIC = 0,
			DYNAMIC = 1,
		}
		public enum RPC_C_AUTHN_INFO_TYPE : uint32
		{
			NONE = 0,
			TYPE_HTTP = 1,
		}
		public enum RPC_C_HTTP_FLAGS : uint32
		{
			USE_SSL = 1,
			USE_FIRST_AUTH_SCHEME = 2,
			IGNORE_CERT_CN_INVALID = 8,
			ENABLE_CERT_REVOCATION_CHECK = 16,
		}
		public enum RPC_C_HTTP_AUTHN_TARGET : uint32
		{
			SERVER = 1,
			PROXY = 2,
		}
		public enum RPC_STATUS : int32
		{
			RPC_S_INVALID_STRING_BINDING = 1700,
			RPC_S_WRONG_KIND_OF_BINDING = 1701,
			RPC_S_INVALID_BINDING = 1702,
			RPC_S_PROTSEQ_NOT_SUPPORTED = 1703,
			RPC_S_INVALID_RPC_PROTSEQ = 1704,
			RPC_S_INVALID_STRING_UUID = 1705,
			RPC_S_INVALID_ENDPOINT_FORMAT = 1706,
			RPC_S_INVALID_NET_ADDR = 1707,
			RPC_S_NO_ENDPOINT_FOUND = 1708,
			RPC_S_INVALID_TIMEOUT = 1709,
			RPC_S_OBJECT_NOT_FOUND = 1710,
			RPC_S_ALREADY_REGISTERED = 1711,
			RPC_S_TYPE_ALREADY_REGISTERED = 1712,
			RPC_S_ALREADY_LISTENING = 1713,
			RPC_S_NO_PROTSEQS_REGISTERED = 1714,
			RPC_S_NOT_LISTENING = 1715,
			RPC_S_UNKNOWN_MGR_TYPE = 1716,
			RPC_S_UNKNOWN_IF = 1717,
			RPC_S_NO_BINDINGS = 1718,
			RPC_S_NO_PROTSEQS = 1719,
			RPC_S_CANT_CREATE_ENDPOINT = 1720,
			RPC_S_OUT_OF_RESOURCES = 1721,
			RPC_S_SERVER_UNAVAILABLE = 1722,
			RPC_S_SERVER_TOO_BUSY = 1723,
			RPC_S_INVALID_NETWORK_OPTIONS = 1724,
			RPC_S_NO_CALL_ACTIVE = 1725,
			RPC_S_CALL_FAILED = 1726,
			RPC_S_CALL_FAILED_DNE = 1727,
			RPC_S_PROTOCOL_ERROR = 1728,
			RPC_S_PROXY_ACCESS_DENIED = 1729,
			RPC_S_UNSUPPORTED_TRANS_SYN = 1730,
			RPC_S_UNSUPPORTED_TYPE = 1732,
			RPC_S_INVALID_TAG = 1733,
			RPC_S_INVALID_BOUND = 1734,
			RPC_S_NO_ENTRY_NAME = 1735,
			RPC_S_INVALID_NAME_SYNTAX = 1736,
			RPC_S_UNSUPPORTED_NAME_SYNTAX = 1737,
			RPC_S_UUID_NO_ADDRESS = 1739,
			RPC_S_DUPLICATE_ENDPOINT = 1740,
			RPC_S_UNKNOWN_AUTHN_TYPE = 1741,
			RPC_S_MAX_CALLS_TOO_SMALL = 1742,
			RPC_S_STRING_TOO_LONG = 1743,
			RPC_S_PROTSEQ_NOT_FOUND = 1744,
			RPC_S_PROCNUM_OUT_OF_RANGE = 1745,
			RPC_S_BINDING_HAS_NO_AUTH = 1746,
			RPC_S_UNKNOWN_AUTHN_SERVICE = 1747,
			RPC_S_UNKNOWN_AUTHN_LEVEL = 1748,
			RPC_S_INVALID_AUTH_IDENTITY = 1749,
			RPC_S_UNKNOWN_AUTHZ_SERVICE = 1750,
			EPT_S_INVALID_ENTRY = 1751,
			EPT_S_CANT_PERFORM_OP = 1752,
			EPT_S_NOT_REGISTERED = 1753,
			RPC_S_NOTHING_TO_EXPORT = 1754,
			RPC_S_INCOMPLETE_NAME = 1755,
			RPC_S_INVALID_VERS_OPTION = 1756,
			RPC_S_NO_MORE_MEMBERS = 1757,
			RPC_S_NOT_ALL_OBJS_UNEXPORTED = 1758,
			RPC_S_INTERFACE_NOT_FOUND = 1759,
			RPC_S_ENTRY_ALREADY_EXISTS = 1760,
			RPC_S_ENTRY_NOT_FOUND = 1761,
			RPC_S_NAME_SERVICE_UNAVAILABLE = 1762,
			RPC_S_INVALID_NAF_ID = 1763,
			RPC_S_CANNOT_SUPPORT = 1764,
			RPC_S_NO_CONTEXT_AVAILABLE = 1765,
			RPC_S_INTERNAL_ERROR = 1766,
			RPC_S_ZERO_DIVIDE = 1767,
			RPC_S_ADDRESS_ERROR = 1768,
			RPC_S_FP_DIV_ZERO = 1769,
			RPC_S_FP_UNDERFLOW = 1770,
			RPC_S_FP_OVERFLOW = 1771,
			RPC_S_CALL_IN_PROGRESS = 1791,
			RPC_S_NO_MORE_BINDINGS = 1806,
			RPC_S_NO_INTERFACES = 1817,
			RPC_S_CALL_CANCELLED = 1818,
			RPC_S_BINDING_INCOMPLETE = 1819,
			RPC_S_COMM_FAILURE = 1820,
			RPC_S_UNSUPPORTED_AUTHN_LEVEL = 1821,
			RPC_S_NO_PRINC_NAME = 1822,
			RPC_S_NOT_RPC_ERROR = 1823,
			RPC_S_UUID_LOCAL_ONLY = 1824,
			RPC_S_SEC_PKG_ERROR = 1825,
			RPC_S_NOT_CANCELLED = 1826,
			RPC_S_COOKIE_AUTH_FAILED = 1833,
			RPC_S_DO_NOT_DISTURB = 1834,
			RPC_S_SYSTEM_HANDLE_COUNT_EXCEEDED = 1835,
			RPC_S_SYSTEM_HANDLE_TYPE_MISMATCH = 1836,
			RPC_S_GROUP_MEMBER_NOT_FOUND = 1898,
			EPT_S_CANT_CREATE = 1899,
			RPC_S_INVALID_OBJECT = 1900,
			RPC_S_SEND_INCOMPLETE = 1913,
			RPC_S_INVALID_ASYNC_HANDLE = 1914,
			RPC_S_INVALID_ASYNC_CALL = 1915,
			RPC_S_ENTRY_TYPE_MISMATCH = 1922,
			RPC_S_NOT_ALL_OBJS_EXPORTED = 1923,
			RPC_S_INTERFACE_NOT_EXPORTED = 1924,
			RPC_S_PROFILE_NOT_ADDED = 1925,
			RPC_S_PRF_ELT_NOT_ADDED = 1926,
			RPC_S_PRF_ELT_NOT_REMOVED = 1927,
			RPC_S_GRP_ELT_NOT_ADDED = 1928,
			RPC_S_GRP_ELT_NOT_REMOVED = 1929,
		}
		public enum GROUP_NAME_SYNTAX : uint32
		{
			DEFAULT = 0,
			DCE = 3,
		}
		public enum SEC_WINNT_AUTH_IDENTITY : uint32
		{
			ANSI = 1,
			UNICODE = 2,
		}
		public enum RPC_BINDING_HANDLE_OPTIONS_FLAGS : uint32
		{
			NONCAUSAL = 1,
			DONTLINGER = 2,
		}
		public enum RPC_HTTP_REDIRECTOR_STAGE : int32
		{
			REDIRECT = 1,
			ACCESS_1 = 2,
			SESSION = 3,
			ACCESS_2 = 4,
			INTERFACE = 5,
		}
		public enum RPC_ADDRESS_CHANGE_TYPE : int32
		{
			NOT_LOADED = 1,
			LOADED = 2,
			ADDRESS_CHANGE = 3,
		}
		public enum LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION : int32
		{
			Marshal = 0,
			Unmarshal = 1,
		}
		public enum RpcProxyPerfCounters : int32
		{
			CurrentUniqueUser = 1,
			BackEndConnectionAttempts = 2,
			BackEndConnectionFailed = 3,
			RequestsPerSecond = 4,
			IncomingConnections = 5,
			IncomingBandwidth = 6,
			OutgoingBandwidth = 7,
			AttemptedLbsDecisions = 8,
			FailedLbsDecisions = 9,
			AttemptedLbsMessages = 10,
			FailedLbsMessages = 11,
			LastCounter = 12,
		}
		public enum RPC_NOTIFICATION_TYPES : int32
		{
			None = 0,
			Event = 1,
			Apc = 2,
			Ioc = 3,
			Hwnd = 4,
			Callback = 5,
		}
		public enum RPC_ASYNC_EVENT : int32
		{
			CallComplete = 0,
			SendComplete = 1,
			ReceiveComplete = 2,
			ClientDisconnect = 3,
			ClientCancel = 4,
		}
		public enum ExtendedErrorParamTypes : int32
		{
			AnsiString = 1,
			UnicodeString = 2,
			LongVal = 3,
			ShortVal = 4,
			PointerVal = 5,
			None = 6,
			Binary = 7,
		}
		public enum RpcLocalAddressFormat : int32
		{
			Invalid = 0,
			IPv4 = 1,
			IPv6 = 2,
		}
		public enum RpcCallType : int32
		{
			Invalid = 0,
			Normal = 1,
			Training = 2,
			Guaranteed = 3,
		}
		public enum RpcCallClientLocality : int32
		{
			Invalid = 0,
			Local = 1,
			Remote = 2,
			ClientUnknownLocality = 3,
		}
		public enum RPC_NOTIFICATIONS : int32
		{
			CallNone = 0,
			ClientDisconnect = 1,
			CallCancel = 2,
		}
		public enum USER_MARSHAL_CB_TYPE : int32
		{
			BUFFER_SIZE = 0,
			MARSHALL = 1,
			UNMARSHALL = 2,
			FREE = 3,
		}
		public enum IDL_CS_CONVERT : int32
		{
			NO_CONVERT = 0,
			IN_PLACE_CONVERT = 1,
			NEW_BUFFER_CONVERT = 2,
		}
		public enum XLAT_SIDE : int32
		{
			SERVER = 1,
			CLIENT = 2,
		}
		[AllowDuplicates]
		public enum system_handle_t : int32
		{
			FILE = 0,
			SEMAPHORE = 1,
			EVENT = 2,
			MUTEX = 3,
			PROCESS = 4,
			TOKEN = 5,
			SECTION = 6,
			REG_KEY = 7,
			THREAD = 8,
			COMPOSITION_OBJECT = 9,
			SOCKET = 10,
			JOB = 11,
			PIPE = 12,
			MAX = 12,
			INVALID = 255,
		}
		public enum STUB_PHASE : int32
		{
			UNMARSHAL = 0,
			CALL_SERVER = 1,
			MARSHAL = 2,
			CALL_SERVER_NO_HRESULT = 3,
		}
		public enum PROXY_PHASE : int32
		{
			CALCSIZE = 0,
			GETBUFFER = 1,
			MARSHAL = 2,
			SENDRECEIVE = 3,
			UNMARSHAL = 4,
		}
		public enum MIDL_ES_CODE : int32
		{
			ENCODE = 0,
			DECODE = 1,
			ENCODE_NDR64 = 2,
		}
		public enum MIDL_ES_HANDLE_STYLE : int32
		{
			INCREMENTAL_HANDLE = 0,
			FIXED_BUFFER_HANDLE = 1,
			DYNAMIC_BUFFER_HANDLE = 2,
		}
		[AllowDuplicates]
		public enum EXPR_TOKEN : int32
		{
			START = 0,
			ILLEGAL = 0,
			CONST32 = 1,
			CONST64 = 2,
			VAR = 3,
			OPER = 4,
			NOOP = 5,
			END = 6,
		}
		
		// --- Function Pointers ---
		
		public function void RPC_OBJECT_INQ_FN(ref Guid ObjectUuid, out Guid TypeUuid, out RPC_STATUS Status);
		public function RPC_STATUS RPC_IF_CALLBACK_FN(void* InterfaceUuid, void* Context);
		public function void RPC_SECURITY_CALLBACK_FN(void* Context);
		public function RPC_STATUS RPC_NEW_HTTP_PROXY_CHANNEL(RPC_HTTP_REDIRECTOR_STAGE RedirectorStage, ref uint16 ServerName, ref uint16 ServerPort, uint16* RemoteUser, uint16* AuthType, void* ResourceUuid, void* SessionId, void* Interface, void* Reserved, uint32 Flags, uint16** NewServerName, uint16** NewServerPort);
		public function void RPC_HTTP_PROXY_FREE_STRING(ref uint16 String);
		public function void RPC_AUTH_KEY_RETRIEVAL_FN(void* Arg, ref uint16 ServerPrincName, uint32 KeyVer, void** Key, out RPC_STATUS Status);
		public function int32 RPC_MGMT_AUTHORIZATION_FN(void* ClientBinding, uint32 RequestedMgmtOperation, out RPC_STATUS Status);
		public function void RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN(void* IfGroup, void* IdleCallbackContext, uint32 IsGroupIdle);
		public function RPC_STATUS RPC_FORWARD_FUNCTION(out Guid InterfaceId, out RPC_VERSION InterfaceVersion, out Guid ObjectId, out uint8 Rpcpro, void** ppDestEndpoint);
		public function void RPC_ADDRESS_CHANGE_FN(void* arg);
		public function void RPC_DISPATCH_FUNCTION(out RPC_MESSAGE Message);
		public function void PRPC_RUNDOWN(void* AssociationContext);
		public function void RPCLT_PDU_FILTER_FUNC(void* Buffer, uint32 BufferLength, int32 fDatagram);
		public function void RPC_SETFILTER_FUNC(RPCLT_PDU_FILTER_FUNC pfnFilter);
		public function RPC_STATUS RPC_BLOCKING_FN(void* hWnd, void* Context, void* hSyncEvent);
		public function RPC_STATUS I_RpcProxyIsValidMachineFn(ref uint16 Machine, ref uint16 DotMachine, uint32 PortNumber);
		public function RPC_STATUS I_RpcProxyGetClientAddressFn(void* Context, PSTR Buffer, out uint32 BufferLength);
		public function RPC_STATUS I_RpcProxyGetConnectionTimeoutFn(out uint32 ConnectionTimeout);
		public function RPC_STATUS I_RpcPerformCalloutFn(void* Context, out RDR_CALLOUT_STATE CallOutState, RPC_HTTP_REDIRECTOR_STAGE Stage);
		public function void I_RpcFreeCalloutStateFn(out RDR_CALLOUT_STATE CallOutState);
		public function RPC_STATUS I_RpcProxyGetClientSessionAndResourceUUID(void* Context, int32* SessionIdPresent, Guid* SessionId, out int32 ResourceIdPresent, out Guid ResourceId);
		public function RPC_STATUS I_RpcProxyFilterIfFn(void* Context, ref Guid IfUuid, uint16 IfMajorVersion, out int32 fAllow);
		public function void I_RpcProxyUpdatePerfCounterFn(RpcProxyPerfCounters Counter, int32 ModifyTrend, uint32 Size);
		public function void I_RpcProxyUpdatePerfCounterBackendServerFn(ref uint16 MachineName, int32 IsConnectEvent);
		public function void PFN_RPCNOTIFICATION_ROUTINE(out RPC_ASYNC_STATE pAsync, void* Context, RPC_ASYNC_EVENT Event);
		public function void NDR_RUNDOWN(void* context);
		public function void NDR_NOTIFY_ROUTINE();
		public function void NDR_NOTIFY2_ROUTINE(uint8 flag);
		public function void EXPR_EVAL(out MIDL_STUB_MESSAGE param0);
		public function void* GENERIC_BINDING_ROUTINE(void* param0);
		public function void GENERIC_UNBIND_ROUTINE(void* param0, out uint8 param1);
		public function void XMIT_HELPER_ROUTINE(out MIDL_STUB_MESSAGE param0);
		public function uint32 USER_MARSHAL_SIZING_ROUTINE(out uint32 param0, uint32 param1, void* param2);
		public function uint8* USER_MARSHAL_MARSHALLING_ROUTINE(out uint32 param0, out uint8 param1, void* param2);
		public function uint8* USER_MARSHAL_UNMARSHALLING_ROUTINE(out uint32 param0, out uint8 param1, void* param2);
		public function void USER_MARSHAL_FREEING_ROUTINE(out uint32 param0, void* param1);
		public function void CS_TYPE_NET_SIZE_ROUTINE(void* hBinding, uint32 ulNetworkCodeSet, uint32 ulLocalBufferSize, out IDL_CS_CONVERT conversionType, out uint32 pulNetworkBufferSize, out uint32 pStatus);
		public function void CS_TYPE_LOCAL_SIZE_ROUTINE(void* hBinding, uint32 ulNetworkCodeSet, uint32 ulNetworkBufferSize, out IDL_CS_CONVERT conversionType, out uint32 pulLocalBufferSize, out uint32 pStatus);
		public function void CS_TYPE_TO_NETCS_ROUTINE(void* hBinding, uint32 ulNetworkCodeSet, void* pLocalData, uint32 ulLocalDataLength, out uint8 pNetworkData, out uint32 pulNetworkDataLength, out uint32 pStatus);
		public function void CS_TYPE_FROM_NETCS_ROUTINE(void* hBinding, uint32 ulNetworkCodeSet, out uint8 pNetworkData, uint32 ulNetworkDataLength, uint32 ulLocalBufferSize, void* pLocalData, out uint32 pulLocalDataLength, out uint32 pStatus);
		public function void CS_TAG_GETTING_ROUTINE(void* hBinding, int32 fServerSide, out uint32 pulSendingTag, out uint32 pulDesiredReceivingTag, out uint32 pulReceivingTag, out uint32 pStatus);
		public function void STUB_THUNK(out MIDL_STUB_MESSAGE param0);
		public function int32 SERVER_ROUTINE();
		public function void* RPC_CLIENT_ALLOC(uint Size);
		public function void RPC_CLIENT_FREE(void* Ptr);
		public function void MIDL_ES_ALLOC(void* state, out int8* pbuffer, out uint32 psize);
		public function void MIDL_ES_WRITE(void* state, PSTR buffer, uint32 size);
		public function void MIDL_ES_READ(void* state, out int8* pbuffer, out uint32 psize);
		
		// --- Structs ---
		
		[CRepr]
		public struct NDR_SCONTEXT_1
		{
			public void*[2] pad;
			public void* userContext;
		}
		[CRepr]
		public struct RPC_BINDING_VECTOR
		{
			public uint32 Count;
			public void*[0] BindingH;
		}
		[CRepr]
		public struct UUID_VECTOR
		{
			public uint32 Count;
			public Guid*[0] Uuid;
		}
		[CRepr]
		public struct RPC_IF_ID
		{
			public Guid Uuid;
			public uint16 VersMajor;
			public uint16 VersMinor;
		}
		[CRepr]
		public struct RPC_PROTSEQ_VECTORA
		{
			public uint32 Count;
			public uint8*[0] Protseq;
		}
		[CRepr]
		public struct RPC_PROTSEQ_VECTORW
		{
			public uint32 Count;
			public uint16*[0] Protseq;
		}
		[CRepr]
		public struct RPC_POLICY
		{
			public uint32 Length;
			public uint32 EndpointFlags;
			public uint32 NICFlags;
		}
		[CRepr]
		public struct RPC_STATS_VECTOR
		{
			public uint32 Count;
			public uint32[0] Stats;
		}
		[CRepr]
		public struct RPC_IF_ID_VECTOR
		{
			public uint32 Count;
			public RPC_IF_ID*[0] IfId;
		}
		[CRepr]
		public struct RPC_SECURITY_QOS
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
		}
		[CRepr]
		public struct SEC_WINNT_AUTH_IDENTITY_W
		{
			public uint16* User;
			public uint32 UserLength;
			public uint16* Domain;
			public uint32 DomainLength;
			public uint16* Password;
			public uint32 PasswordLength;
			public SEC_WINNT_AUTH_IDENTITY Flags;
		}
		[CRepr]
		public struct SEC_WINNT_AUTH_IDENTITY_A
		{
			public uint8* User;
			public uint32 UserLength;
			public uint8* Domain;
			public uint32 DomainLength;
			public uint8* Password;
			public uint32 PasswordLength;
			public SEC_WINNT_AUTH_IDENTITY Flags;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_W
		{
			public SEC_WINNT_AUTH_IDENTITY_W* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint16* ServerCertificateSubject;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_A
		{
			public SEC_WINNT_AUTH_IDENTITY_A* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint8* ServerCertificateSubject;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_V2_W
		{
			public SEC_WINNT_AUTH_IDENTITY_W* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint16* ServerCertificateSubject;
			public SEC_WINNT_AUTH_IDENTITY_W* ProxyCredentials;
			public uint32 NumberOfProxyAuthnSchemes;
			public uint32* ProxyAuthnSchemes;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_V2_A
		{
			public SEC_WINNT_AUTH_IDENTITY_A* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint8* ServerCertificateSubject;
			public SEC_WINNT_AUTH_IDENTITY_A* ProxyCredentials;
			public uint32 NumberOfProxyAuthnSchemes;
			public uint32* ProxyAuthnSchemes;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_V3_W
		{
			public void* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint16* ServerCertificateSubject;
			public void* ProxyCredentials;
			public uint32 NumberOfProxyAuthnSchemes;
			public uint32* ProxyAuthnSchemes;
		}
		[CRepr]
		public struct RPC_HTTP_TRANSPORT_CREDENTIALS_V3_A
		{
			public void* TransportCredentials;
			public RPC_C_HTTP_FLAGS Flags;
			public RPC_C_HTTP_AUTHN_TARGET AuthenticationTarget;
			public uint32 NumberOfAuthnSchemes;
			public uint32* AuthnSchemes;
			public uint8* ServerCertificateSubject;
			public void* ProxyCredentials;
			public uint32 NumberOfProxyAuthnSchemes;
			public uint32* ProxyAuthnSchemes;
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V2_W
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_W* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V2_A
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_A* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V3_W
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_W* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V3_A
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_A* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V4_W
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			public uint32 EffectiveOnly;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_W* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V4_A
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			public uint32 EffectiveOnly;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_A* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V5_W
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			public uint32 EffectiveOnly;
			public void* ServerSecurityDescriptor;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_W* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_SECURITY_QOS_V5_A
		{
			public uint32 Version;
			public RPC_C_QOS_CAPABILITIES Capabilities;
			public RPC_C_QOS_IDENTITY IdentityTracking;
			public RPC_C_IMP_LEVEL ImpersonationType;
			public RPC_C_AUTHN_INFO_TYPE AdditionalSecurityInfoType;
			public _u_e__Union u;
			public void* Sid;
			public uint32 EffectiveOnly;
			public void* ServerSecurityDescriptor;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public RPC_HTTP_TRANSPORT_CREDENTIALS_A* HttpCredentials;
			}
		}
		[CRepr]
		public struct RPC_BINDING_HANDLE_TEMPLATE_V1_W
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ProtocolSequence;
			public uint16* NetworkAddress;
			public uint16* StringEndpoint;
			public _u1_e__Union u1;
			public Guid ObjectUuid;
			
			[CRepr, Union]
			public struct _u1_e__Union
			{
				public uint16* Reserved;
			}
		}
		[CRepr]
		public struct RPC_BINDING_HANDLE_TEMPLATE_V1_A
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ProtocolSequence;
			public uint8* NetworkAddress;
			public uint8* StringEndpoint;
			public _u1_e__Union u1;
			public Guid ObjectUuid;
			
			[CRepr, Union]
			public struct _u1_e__Union
			{
				public uint8* Reserved;
			}
		}
		[CRepr]
		public struct RPC_BINDING_HANDLE_SECURITY_V1_W
		{
			public uint32 Version;
			public uint16* ServerPrincName;
			public uint32 AuthnLevel;
			public uint32 AuthnSvc;
			public SEC_WINNT_AUTH_IDENTITY_W* AuthIdentity;
			public RPC_SECURITY_QOS* SecurityQos;
		}
		[CRepr]
		public struct RPC_BINDING_HANDLE_SECURITY_V1_A
		{
			public uint32 Version;
			public uint8* ServerPrincName;
			public uint32 AuthnLevel;
			public uint32 AuthnSvc;
			public SEC_WINNT_AUTH_IDENTITY_A* AuthIdentity;
			public RPC_SECURITY_QOS* SecurityQos;
		}
		[CRepr]
		public struct RPC_BINDING_HANDLE_OPTIONS_V1
		{
			public uint32 Version;
			public RPC_BINDING_HANDLE_OPTIONS_FLAGS Flags;
			public uint32 ComTimeout;
			public uint32 CallTimeout;
		}
		[CRepr]
		public struct RPC_CLIENT_INFORMATION1
		{
			public uint8* UserName;
			public uint8* ComputerName;
			public uint16 Privilege;
			public uint32 AuthFlags;
		}
		[CRepr]
		public struct RPC_ENDPOINT_TEMPLATEW
		{
			public uint32 Version;
			public uint16* ProtSeq;
			public uint16* Endpoint;
			public void* SecurityDescriptor;
			public uint32 Backlog;
		}
		[CRepr]
		public struct RPC_ENDPOINT_TEMPLATEA
		{
			public uint32 Version;
			public uint8* ProtSeq;
			public uint8* Endpoint;
			public void* SecurityDescriptor;
			public uint32 Backlog;
		}
		[CRepr]
		public struct RPC_INTERFACE_TEMPLATEA
		{
			public uint32 Version;
			public void* IfSpec;
			public Guid* MgrTypeUuid;
			public void* MgrEpv;
			public uint32 Flags;
			public uint32 MaxCalls;
			public uint32 MaxRpcSize;
			public RPC_IF_CALLBACK_FN IfCallback;
			public UUID_VECTOR* UuidVector;
			public uint8* Annotation;
			public void* SecurityDescriptor;
		}
		[CRepr]
		public struct RPC_INTERFACE_TEMPLATEW
		{
			public uint32 Version;
			public void* IfSpec;
			public Guid* MgrTypeUuid;
			public void* MgrEpv;
			public uint32 Flags;
			public uint32 MaxCalls;
			public uint32 MaxRpcSize;
			public RPC_IF_CALLBACK_FN IfCallback;
			public UUID_VECTOR* UuidVector;
			public uint16* Annotation;
			public void* SecurityDescriptor;
		}
		[CRepr]
		public struct RPC_VERSION
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
		}
		[CRepr]
		public struct RPC_SYNTAX_IDENTIFIER
		{
			public Guid SyntaxGUID;
			public RPC_VERSION SyntaxVersion;
		}
		[CRepr]
		public struct RPC_MESSAGE
		{
			public void* Handle;
			public uint32 DataRepresentation;
			public void* Buffer;
			public uint32 BufferLength;
			public uint32 ProcNum;
			public RPC_SYNTAX_IDENTIFIER* TransferSyntax;
			public void* RpcInterfaceInformation;
			public void* ReservedForRuntime;
			public void* ManagerEpv;
			public void* ImportContext;
			public uint32 RpcFlags;
		}
		[CRepr]
		public struct RPC_DISPATCH_TABLE
		{
			public uint32 DispatchTableCount;
			public RPC_DISPATCH_FUNCTION DispatchTable;
			public int Reserved;
		}
		[CRepr]
		public struct RPC_PROTSEQ_ENDPOINT
		{
			public uint8* RpcProtocolSequence;
			public uint8* Endpoint;
		}
		[CRepr]
		public struct RPC_SERVER_INTERFACE
		{
			public uint32 Length;
			public RPC_SYNTAX_IDENTIFIER InterfaceId;
			public RPC_SYNTAX_IDENTIFIER TransferSyntax;
			public RPC_DISPATCH_TABLE* DispatchTable;
			public uint32 RpcProtseqEndpointCount;
			public RPC_PROTSEQ_ENDPOINT* RpcProtseqEndpoint;
			public void* DefaultManagerEpv;
			public void* InterpreterInfo;
			public uint32 Flags;
		}
		[CRepr]
		public struct RPC_CLIENT_INTERFACE
		{
			public uint32 Length;
			public RPC_SYNTAX_IDENTIFIER InterfaceId;
			public RPC_SYNTAX_IDENTIFIER TransferSyntax;
			public RPC_DISPATCH_TABLE* DispatchTable;
			public uint32 RpcProtseqEndpointCount;
			public RPC_PROTSEQ_ENDPOINT* RpcProtseqEndpoint;
			public uint Reserved;
			public void* InterpreterInfo;
			public uint32 Flags;
		}
		[CRepr]
		public struct RPC_SEC_CONTEXT_KEY_INFO
		{
			public uint32 EncryptAlgorithm;
			public uint32 KeySize;
			public uint32 SignatureAlgorithm;
		}
		[CRepr]
		public struct RPC_TRANSFER_SYNTAX
		{
			public Guid Uuid;
			public uint16 VersMajor;
			public uint16 VersMinor;
		}
		[CRepr]
		public struct RPC_C_OPT_COOKIE_AUTH_DESCRIPTOR
		{
			public uint32 BufferSize;
			public PSTR Buffer;
		}
		[CRepr]
		public struct RDR_CALLOUT_STATE
		{
			public RPC_STATUS LastError;
			public void* LastEEInfo;
			public RPC_HTTP_REDIRECTOR_STAGE LastCalledStage;
			public uint16* ServerName;
			public uint16* ServerPort;
			public uint16* RemoteUser;
			public uint16* AuthType;
			public uint8 ResourceTypePresent;
			public uint8 SessionIdPresent;
			public uint8 InterfacePresent;
			public Guid ResourceType;
			public Guid SessionId;
			public RPC_SYNTAX_IDENTIFIER Interface;
			public void* CertContext;
		}
		[CRepr]
		public struct I_RpcProxyCallbackInterface
		{
			public I_RpcProxyIsValidMachineFn IsValidMachineFn;
			public I_RpcProxyGetClientAddressFn GetClientAddressFn;
			public I_RpcProxyGetConnectionTimeoutFn GetConnectionTimeoutFn;
			public I_RpcPerformCalloutFn PerformCalloutFn;
			public I_RpcFreeCalloutStateFn FreeCalloutStateFn;
			public I_RpcProxyGetClientSessionAndResourceUUID GetClientSessionAndResourceUUIDFn;
			public I_RpcProxyFilterIfFn ProxyFilterIfFn;
			public I_RpcProxyUpdatePerfCounterFn RpcProxyUpdatePerfCounterFn;
			public I_RpcProxyUpdatePerfCounterBackendServerFn RpcProxyUpdatePerfCounterBackendServerFn;
		}
		[CRepr, Union]
		public struct RPC_ASYNC_NOTIFICATION_INFO
		{
			public _APC_e__Struct APC;
			public _IOC_e__Struct IOC;
			public _IntPtr_e__Struct IntPtr;
			public HANDLE hEvent;
			public PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
			
			[CRepr]
			public struct _IOC_e__Struct
			{
				public HANDLE hIOPort;
				public uint32 dwNumberOfBytesTransferred;
				public uint dwCompletionKey;
				public OVERLAPPED* lpOverlapped;
			}
			[CRepr]
			public struct _APC_e__Struct
			{
				public PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
				public HANDLE hThread;
			}
			[CRepr]
			public struct _IntPtr_e__Struct
			{
				public HWND hWnd;
				public uint32 Msg;
			}
		}
		[CRepr]
		public struct RPC_ASYNC_STATE
		{
			public uint32 Size;
			public uint32 Signature;
			public int32 Lock;
			public uint32 Flags;
			public void* StubInfo;
			public void* UserInfo;
			public void* RuntimeInfo;
			public RPC_ASYNC_EVENT Event;
			public RPC_NOTIFICATION_TYPES NotificationType;
			public RPC_ASYNC_NOTIFICATION_INFO u;
			public int[4] Reserved;
		}
		[CRepr]
		public struct BinaryParam
		{
			public void* Buffer;
			public int16 Size;
		}
		[CRepr]
		public struct RPC_EE_INFO_PARAM
		{
			public ExtendedErrorParamTypes ParameterType;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public PSTR AnsiString;
				public PWSTR UnicodeString;
				public int32 LVal;
				public int16 SVal;
				public uint64 PVal;
				public BinaryParam BVal;
			}
		}
		[CRepr]
		public struct RPC_EXTENDED_ERROR_INFO
		{
			public uint32 Version;
			public PWSTR ComputerName;
			public uint32 ProcessID;
			public _u_e__Union u;
			public uint32 GeneratingComponent;
			public uint32 Status;
			public uint16 DetectionLocation;
			public uint16 Flags;
			public int32 NumberOfParameters;
			public RPC_EE_INFO_PARAM[4] Parameters;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public SYSTEMTIME SystemTime;
				public FILETIME FileTime;
			}
		}
		[CRepr]
		public struct RPC_ERROR_ENUM_HANDLE
		{
			public uint32 Signature;
			public void* CurrentPos;
			public void* Head;
		}
		[CRepr]
		public struct RPC_CALL_LOCAL_ADDRESS_V1
		{
			public uint32 Version;
			public void* Buffer;
			public uint32 BufferSize;
			public RpcLocalAddressFormat AddressFormat;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V1_W
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint16* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint16* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V1_A
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint8* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint8* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V2_W
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint16* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint16* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
			public BOOL KernelModeCaller;
			public uint32 ProtocolSequence;
			public RpcCallClientLocality IsClientLocal;
			public HANDLE ClientPID;
			public uint32 CallStatus;
			public RpcCallType CallType;
			public RPC_CALL_LOCAL_ADDRESS_V1* CallLocalAddress;
			public uint16 OpNum;
			public Guid InterfaceUuid;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V2_A
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint8* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint8* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
			public BOOL KernelModeCaller;
			public uint32 ProtocolSequence;
			public uint32 IsClientLocal;
			public HANDLE ClientPID;
			public uint32 CallStatus;
			public RpcCallType CallType;
			public RPC_CALL_LOCAL_ADDRESS_V1* CallLocalAddress;
			public uint16 OpNum;
			public Guid InterfaceUuid;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V3_W
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint16* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint16* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
			public BOOL KernelModeCaller;
			public uint32 ProtocolSequence;
			public RpcCallClientLocality IsClientLocal;
			public HANDLE ClientPID;
			public uint32 CallStatus;
			public RpcCallType CallType;
			public RPC_CALL_LOCAL_ADDRESS_V1* CallLocalAddress;
			public uint16 OpNum;
			public Guid InterfaceUuid;
			public uint32 ClientIdentifierBufferLength;
			public uint8* ClientIdentifier;
		}
		[CRepr]
		public struct RPC_CALL_ATTRIBUTES_V3_A
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 ServerPrincipalNameBufferLength;
			public uint8* ServerPrincipalName;
			public uint32 ClientPrincipalNameBufferLength;
			public uint8* ClientPrincipalName;
			public uint32 AuthenticationLevel;
			public uint32 AuthenticationService;
			public BOOL NullSession;
			public BOOL KernelModeCaller;
			public uint32 ProtocolSequence;
			public uint32 IsClientLocal;
			public HANDLE ClientPID;
			public uint32 CallStatus;
			public RpcCallType CallType;
			public RPC_CALL_LOCAL_ADDRESS_V1* CallLocalAddress;
			public uint16 OpNum;
			public Guid InterfaceUuid;
			public uint32 ClientIdentifierBufferLength;
			public uint8* ClientIdentifier;
		}
		[CRepr]
		public struct RPC_IMPORT_CONTEXT_P
		{
			public void* LookupContext;
			public void* ProposedHandle;
			public RPC_BINDING_VECTOR* Bindings;
		}
		[CRepr]
		public struct _NDR_SCONTEXT
		{
			public void*[2] pad;
			public void* userContext;
		}
		[CRepr]
		public struct SCONTEXT_QUEUE
		{
			public uint32 NumberOfObjects;
			public NDR_SCONTEXT_1** ArrayOfObjects;
		}
		[CRepr]
		public struct ARRAY_INFO
		{
			public int32 Dimension;
			public uint32* BufferConformanceMark;
			public uint32* BufferVarianceMark;
			public uint32* MaxCountArray;
			public uint32* OffsetArray;
			public uint32* ActualCountArray;
		}
		[CRepr]
		public struct _NDR_ASYNC_MESSAGE {}
		[CRepr]
		public struct _NDR_CORRELATION_INFO {}
		[CRepr]
		public struct NDR_ALLOC_ALL_NODES_CONTEXT {}
		[CRepr]
		public struct NDR_POINTER_QUEUE_STATE {}
		[CRepr]
		public struct _NDR_PROC_CONTEXT {}
		[CRepr]
		public struct MIDL_STUB_MESSAGE
		{
			public RPC_MESSAGE* RpcMsg;
			public uint8* Buffer;
			public uint8* BufferStart;
			public uint8* BufferEnd;
			public uint8* BufferMark;
			public uint32 BufferLength;
			public uint32 MemorySize;
			public uint8* Memory;
			public uint8 IsClient;
			public uint8 Pad;
			public uint16 uFlags2;
			public int32 ReuseBuffer;
			public NDR_ALLOC_ALL_NODES_CONTEXT* pAllocAllNodesContext;
			public NDR_POINTER_QUEUE_STATE* pPointerQueueState;
			public int32 IgnoreEmbeddedPointers;
			public uint8* PointerBufferMark;
			public uint8 CorrDespIncrement;
			public uint8 uFlags;
			public uint16 UniquePtrCount;
			public uint MaxCount;
			public uint32 Offset;
			public uint32 ActualCount;
			public int pfnAllocate;
			public int pfnFree;
			public uint8* StackTop;
			public uint8* pPresentedType;
			public uint8* pTransmitType;
			public void* SavedHandle;
			public MIDL_STUB_DESC* StubDesc;
			public FULL_PTR_XLAT_TABLES* FullPtrXlatTables;
			public uint32 FullPtrRefId;
			public uint32 PointerLength;
			public int32 _bitfield;
			public uint32 dwDestContext;
			public void* pvDestContext;
			public NDR_SCONTEXT_1** SavedContextHandles;
			public int32 ParamNumber;
			public IRpcChannelBuffer* pRpcChannelBuffer;
			public ARRAY_INFO* pArrayInfo;
			public uint32* SizePtrCountArray;
			public uint32* SizePtrOffsetArray;
			public uint32* SizePtrLengthArray;
			public void* pArgQueue;
			public uint32 dwStubPhase;
			public void* LowStackMark;
			public _NDR_ASYNC_MESSAGE* pAsyncMsg;
			public _NDR_CORRELATION_INFO* pCorrInfo;
			public uint8* pCorrMemory;
			public void* pMemoryList;
			public int pCSInfo;
			public uint8* ConformanceMark;
			public uint8* VarianceMark;
			public int Unused;
			public _NDR_PROC_CONTEXT* pContext;
			public void* ContextHandleHash;
			public void* pUserMarshalList;
			public int Reserved51_3;
			public int Reserved51_4;
			public int Reserved51_5;
		}
		[CRepr]
		public struct GENERIC_BINDING_ROUTINE_PAIR
		{
			public GENERIC_BINDING_ROUTINE pfnBind;
			public GENERIC_UNBIND_ROUTINE pfnUnbind;
		}
		[CRepr]
		public struct GENERIC_BINDING_INFO
		{
			public void* pObj;
			public uint32 Size;
			public GENERIC_BINDING_ROUTINE pfnBind;
			public GENERIC_UNBIND_ROUTINE pfnUnbind;
		}
		[CRepr]
		public struct XMIT_ROUTINE_QUINTUPLE
		{
			public XMIT_HELPER_ROUTINE pfnTranslateToXmit;
			public XMIT_HELPER_ROUTINE pfnTranslateFromXmit;
			public XMIT_HELPER_ROUTINE pfnFreeXmit;
			public XMIT_HELPER_ROUTINE pfnFreeInst;
		}
		[CRepr]
		public struct USER_MARSHAL_ROUTINE_QUADRUPLE
		{
			public USER_MARSHAL_SIZING_ROUTINE pfnBufferSize;
			public USER_MARSHAL_MARSHALLING_ROUTINE pfnMarshall;
			public USER_MARSHAL_UNMARSHALLING_ROUTINE pfnUnmarshall;
			public USER_MARSHAL_FREEING_ROUTINE pfnFree;
		}
		[CRepr]
		public struct USER_MARSHAL_CB
		{
			public uint32 Flags;
			public MIDL_STUB_MESSAGE* pStubMsg;
			public uint8* pReserve;
			public uint32 Signature;
			public USER_MARSHAL_CB_TYPE CBType;
			public uint8* pFormat;
			public uint8* pTypeFormat;
		}
		[CRepr]
		public struct MALLOC_FREE_STRUCT
		{
			public int pfnAllocate;
			public int pfnFree;
		}
		[CRepr]
		public struct COMM_FAULT_OFFSETS
		{
			public int16 CommOffset;
			public int16 FaultOffset;
		}
		[CRepr]
		public struct NDR_CS_SIZE_CONVERT_ROUTINES
		{
			public CS_TYPE_NET_SIZE_ROUTINE pfnNetSize;
			public CS_TYPE_TO_NETCS_ROUTINE pfnToNetCs;
			public CS_TYPE_LOCAL_SIZE_ROUTINE pfnLocalSize;
			public CS_TYPE_FROM_NETCS_ROUTINE pfnFromNetCs;
		}
		[CRepr]
		public struct NDR_CS_ROUTINES
		{
			public NDR_CS_SIZE_CONVERT_ROUTINES* pSizeConvertRoutines;
			public CS_TAG_GETTING_ROUTINE* pTagGettingRoutines;
		}
		[CRepr]
		public struct NDR_EXPR_DESC
		{
			public uint16* pOffset;
			public uint8* pFormatExpr;
		}
		[CRepr]
		public struct MIDL_STUB_DESC
		{
			public void* RpcInterfaceInformation;
			public int pfnAllocate;
			public int pfnFree;
			public _IMPLICIT_HANDLE_INFO_e__Union IMPLICIT_HANDLE_INFO;
			public NDR_RUNDOWN* apfnNdrRundownRoutines;
			public GENERIC_BINDING_ROUTINE_PAIR* aGenericBindingRoutinePairs;
			public EXPR_EVAL* apfnExprEval;
			public XMIT_ROUTINE_QUINTUPLE* aXmitQuintuple;
			public uint8* pFormatTypes;
			public int32 fCheckBounds;
			public uint32 Version;
			public MALLOC_FREE_STRUCT* pMallocFreeStruct;
			public int32 MIDLVersion;
			public COMM_FAULT_OFFSETS* CommFaultOffsets;
			public USER_MARSHAL_ROUTINE_QUADRUPLE* aUserMarshalQuadruple;
			public NDR_NOTIFY_ROUTINE* NotifyRoutineTable;
			public uint mFlags;
			public NDR_CS_ROUTINES* CsRoutineTables;
			public void* ProxyServerInfo;
			public NDR_EXPR_DESC* pExprInfo;
			
			[CRepr, Union]
			public struct _IMPLICIT_HANDLE_INFO_e__Union
			{
				public void** pAutoHandle;
				public void** pPrimitiveHandle;
				public GENERIC_BINDING_INFO* pGenericBindingInfo;
			}
		}
		[CRepr]
		public struct MIDL_FORMAT_STRING
		{
			public int16 Pad;
			public uint8[0] Format;
		}
		[CRepr]
		public struct MIDL_METHOD_PROPERTY
		{
			public uint32 Id;
			public uint Value;
		}
		[CRepr]
		public struct MIDL_METHOD_PROPERTY_MAP
		{
			public uint32 Count;
			public MIDL_METHOD_PROPERTY* Properties;
		}
		[CRepr]
		public struct MIDL_INTERFACE_METHOD_PROPERTIES
		{
			public uint16 MethodCount;
			public MIDL_METHOD_PROPERTY_MAP** MethodProperties;
		}
		[CRepr]
		public struct MIDL_SERVER_INFO
		{
			public MIDL_STUB_DESC* pStubDesc;
			public SERVER_ROUTINE* DispatchTable;
			public uint8* ProcString;
			public uint16* FmtStringOffset;
			public STUB_THUNK* ThunkTable;
			public RPC_SYNTAX_IDENTIFIER* pTransferSyntax;
			public uint nCount;
			public MIDL_SYNTAX_INFO* pSyntaxInfo;
		}
		[CRepr]
		public struct MIDL_STUBLESS_PROXY_INFO
		{
			public MIDL_STUB_DESC* pStubDesc;
			public uint8* ProcFormatString;
			public uint16* FormatStringOffset;
			public RPC_SYNTAX_IDENTIFIER* pTransferSyntax;
			public uint nCount;
			public MIDL_SYNTAX_INFO* pSyntaxInfo;
		}
		[CRepr]
		public struct MIDL_SYNTAX_INFO
		{
			public RPC_SYNTAX_IDENTIFIER TransferSyntax;
			public RPC_DISPATCH_TABLE* DispatchTable;
			public uint8* ProcString;
			public uint16* FmtStringOffset;
			public uint8* TypeString;
			public void* aUserMarshalQuadruple;
			public MIDL_INTERFACE_METHOD_PROPERTIES* pMethodProperties;
			public uint pReserved2;
		}
		[CRepr, Union]
		public struct CLIENT_CALL_RETURN
		{
			public void* Pointer;
			public int Simple;
		}
		[CRepr]
		public struct FULL_PTR_XLAT_TABLES
		{
			public void* RefIdToPointer;
			public void* PointerToRefId;
			public uint32 NextRefId;
			public XLAT_SIDE XlatSide;
		}
		[CRepr]
		public struct MIDL_INTERCEPTION_INFO
		{
			public uint32 Version;
			public uint8* ProcString;
			public uint16* ProcFormatOffsetTable;
			public uint32 ProcCount;
			public uint8* TypeString;
		}
		[CRepr]
		public struct MIDL_WINRT_TYPE_SERIALIZATION_INFO
		{
			public uint32 Version;
			public uint8* TypeFormatString;
			public uint16 FormatStringSize;
			public uint16 TypeOffset;
			public MIDL_STUB_DESC* StubDesc;
		}
		[CRepr]
		public struct NDR_USER_MARSHAL_INFO_LEVEL1
		{
			public void* Buffer;
			public uint32 BufferSize;
			public int pfnAllocate;
			public int pfnFree;
			public IRpcChannelBuffer* pRpcChannelBuffer;
			public uint[5] Reserved;
		}
		[CRepr]
		public struct NDR_USER_MARSHAL_INFO
		{
			public uint32 InformationLevel;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public NDR_USER_MARSHAL_INFO_LEVEL1 Level1;
			}
		}
		[CRepr]
		public struct MIDL_TYPE_PICKLING_INFO
		{
			public uint32 Version;
			public uint32 Flags;
			public uint[3] Reserved;
		}
		[CRepr]
		public struct NDR64_PROC_FLAGS
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct NDR64_RPC_FLAGS
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct NDR64_PROC_FORMAT
		{
			public uint32 Flags;
			public uint32 StackSize;
			public uint32 ConstantClientBufferSize;
			public uint32 ConstantServerBufferSize;
			public uint16 RpcFlags;
			public uint16 FloatDoubleMask;
			public uint16 NumberOfParams;
			public uint16 ExtensionSize;
		}
		[CRepr]
		public struct NDR64_PARAM_FLAGS
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct NDR64_PARAM_FORMAT
		{
			public void* Type;
			public NDR64_PARAM_FLAGS Attributes;
			public uint16 Reserved;
			public uint32 StackOffset;
		}
		[CRepr]
		public struct NDR64_RANGE_FORMAT
		{
			public uint8 FormatCode;
			public uint8 RangeType;
			public uint16 Reserved;
			public int64 MinValue;
			public int64 MaxValue;
		}
		[CRepr]
		public struct NDR64_CONTEXT_HANDLE_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_CONTEXT_HANDLE_FORMAT
		{
			public uint8 FormatCode;
			public uint8 ContextFlags;
			public uint8 RundownRoutineIndex;
			public uint8 Ordinal;
		}
		[CRepr]
		public struct NDR64_BIND_PRIMITIVE
		{
			public uint8 HandleType;
			public uint8 Flags;
			public uint16 StackOffset;
			public uint16 Reserved;
		}
		[CRepr]
		public struct NDR64_BIND_GENERIC
		{
			public uint8 HandleType;
			public uint8 Flags;
			public uint16 StackOffset;
			public uint8 RoutineIndex;
			public uint8 Size;
		}
		[CRepr]
		public struct NDR64_BIND_CONTEXT
		{
			public uint8 HandleType;
			public uint8 Flags;
			public uint16 StackOffset;
			public uint8 RoutineIndex;
			public uint8 Ordinal;
		}
		[CRepr, Union]
		public struct NDR64_BINDINGS
		{
			public NDR64_BIND_PRIMITIVE Primitive;
			public NDR64_BIND_GENERIC Generic;
			public NDR64_BIND_CONTEXT Context;
		}
		[CRepr]
		public struct NDR64_BIND_AND_NOTIFY_EXTENSION
		{
			public NDR64_BIND_CONTEXT Binding;
			public uint16 NotifyIndex;
		}
		[CRepr]
		public struct NDR64_SYSTEM_HANDLE_FORMAT
		{
			public uint8 FormatCode;
			public uint8 HandleType;
			public uint32 DesiredAccess;
		}
		[CRepr]
		public struct NDR64_POINTER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 Reserved;
			public void* Pointee;
		}
		[CRepr]
		public struct NDR64_NO_REPEAT_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 Reserved1;
			public uint32 Reserved2;
		}
		[CRepr]
		public struct NDR64_POINTER_INSTANCE_HEADER_FORMAT
		{
			public uint32 Offset;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_POINTER_REPEAT_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_REPEAT_FORMAT
		{
			public uint8 FormatCode;
			public NDR64_POINTER_REPEAT_FLAGS Flags;
			public uint16 Reserved;
			public uint32 Increment;
			public uint32 OffsetToArray;
			public uint32 NumberOfPointers;
		}
		[CRepr]
		public struct NDR64_FIXED_REPEAT_FORMAT
		{
			public NDR64_REPEAT_FORMAT RepeatFormat;
			public uint32 Iterations;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_IID_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_CONSTANT_IID_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 Reserved;
			public Guid Guid;
		}
		[CRepr]
		public struct NDR64_IID_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 Reserved;
			public void* IIDDescriptor;
		}
		[CRepr]
		public struct NDR64_STRUCTURE_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_STRUCTURE_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_STRUCTURE_FLAGS Flags;
			public uint8 Reserve;
			public uint32 MemorySize;
		}
		[CRepr]
		public struct NDR64_CONF_STRUCTURE_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_STRUCTURE_FLAGS Flags;
			public uint8 Reserve;
			public uint32 MemorySize;
			public void* ArrayDescription;
		}
		[CRepr]
		public struct NDR64_BOGUS_STRUCTURE_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_STRUCTURE_FLAGS Flags;
			public uint8 Reserve;
			public uint32 MemorySize;
			public void* OriginalMemberLayout;
			public void* OriginalPointerLayout;
			public void* PointerLayout;
		}
		[CRepr]
		public struct NDR64_CONF_BOGUS_STRUCTURE_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_STRUCTURE_FLAGS Flags;
			public uint8 Dimensions;
			public uint32 MemorySize;
			public void* OriginalMemberLayout;
			public void* OriginalPointerLayout;
			public void* PointerLayout;
			public void* ConfArrayDescription;
		}
		[CRepr]
		public struct NDR64_SIMPLE_MEMBER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Reserved1;
			public uint16 Reserved2;
			public uint32 Reserved3;
		}
		[CRepr]
		public struct NDR64_MEMPAD_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Reserve1;
			public uint16 MemPad;
			public uint32 Reserved2;
		}
		[CRepr]
		public struct NDR64_EMBEDDED_COMPLEX_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Reserve1;
			public uint16 Reserve2;
			public void* Type;
		}
		[CRepr]
		public struct NDR64_BUFFER_ALIGN_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public uint16 Reserved;
			public uint32 Reserved2;
		}
		[CRepr]
		public struct NDR64_SIMPLE_REGION_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public uint16 RegionSize;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_ENCAPSULATED_UNION
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public uint8 Flags;
			public uint8 SwitchType;
			public uint32 MemoryOffset;
			public uint32 MemorySize;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_NON_ENCAPSULATED_UNION
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public uint8 Flags;
			public uint8 SwitchType;
			public uint32 MemorySize;
			public void* Switch;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_UNION_ARM_SELECTOR
		{
			public uint8 Reserved1;
			public uint8 Alignment;
			public uint16 Reserved2;
			public uint32 Arms;
		}
		[CRepr]
		public struct NDR64_UNION_ARM
		{
			public int64 CaseValue;
			public void* Type;
			public uint32 Reserved;
		}
		[CRepr]
		public struct NDR64_ARRAY_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_ARRAY_ELEMENT_INFO
		{
			public uint32 ElementMemSize;
			public void* Element;
		}
		[CRepr]
		public struct NDR64_FIX_ARRAY_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_ARRAY_FLAGS Flags;
			public uint8 Reserved;
			public uint32 TotalSize;
		}
		[CRepr]
		public struct NDR64_CONF_ARRAY_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_ARRAY_FLAGS Flags;
			public uint8 Reserved;
			public uint32 ElementSize;
			public void* ConfDescriptor;
		}
		[CRepr]
		public struct NDR64_CONF_VAR_ARRAY_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_ARRAY_FLAGS Flags;
			public uint8 Reserved;
			public uint32 ElementSize;
			public void* ConfDescriptor;
			public void* VarDescriptor;
		}
		[CRepr]
		public struct NDR64_VAR_ARRAY_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_ARRAY_FLAGS Flags;
			public uint8 Reserved;
			public uint32 TotalSize;
			public uint32 ElementSize;
			public void* VarDescriptor;
		}
		[CRepr]
		public struct NDR64_BOGUS_ARRAY_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Alignment;
			public NDR64_ARRAY_FLAGS Flags;
			public uint8 NumberDims;
			public uint32 NumberElements;
			public void* Element;
		}
		[CRepr]
		public struct NDR64_CONF_VAR_BOGUS_ARRAY_HEADER_FORMAT
		{
			public NDR64_BOGUS_ARRAY_HEADER_FORMAT FixedArrayFormat;
			public void* ConfDescription;
			public void* VarDescription;
			public void* OffsetDescription;
		}
		[CRepr]
		public struct NDR64_STRING_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_STRING_HEADER_FORMAT
		{
			public uint8 FormatCode;
			public NDR64_STRING_FLAGS Flags;
			public uint16 ElementSize;
		}
		[CRepr]
		public struct NDR64_NON_CONFORMANT_STRING_FORMAT
		{
			public NDR64_STRING_HEADER_FORMAT Header;
			public uint32 TotalSize;
		}
		[CRepr]
		public struct NDR64_RANGED_STRING_FORMAT
		{
			public NDR64_STRING_HEADER_FORMAT Header;
			public uint32 Reserved;
			public uint64 Min;
			public uint64 Max;
		}
		[CRepr]
		public struct NDR64_CONFORMANT_STRING_FORMAT
		{
			public NDR64_STRING_HEADER_FORMAT Header;
		}
		[CRepr]
		public struct NDR64_SIZED_CONFORMANT_STRING_FORMAT
		{
			public NDR64_STRING_HEADER_FORMAT Header;
			public void* SizeDescription;
		}
		[CRepr]
		public struct NDR64_EXPR_OPERATOR
		{
			public uint8 ExprType;
			public uint8 Operator;
			public uint8 CastType;
			public uint8 Reserved;
		}
		[CRepr]
		public struct NDR64_EXPR_CONST32
		{
			public uint8 ExprType;
			public uint8 Reserved;
			public uint16 Reserved1;
			public uint32 ConstValue;
		}
		[CRepr]
		public struct NDR64_EXPR_CONST64
		{
			public uint8 ExprType;
			public uint8 Reserved;
			public uint16 Reserved1;
			public int64 ConstValue;
		}
		[CRepr]
		public struct NDR64_EXPR_VAR
		{
			public uint8 ExprType;
			public uint8 VarType;
			public uint16 Reserved;
			public uint32 Offset;
		}
		[CRepr]
		public struct NDR64_EXPR_NOOP
		{
			public uint8 ExprType;
			public uint8 Size;
			public uint16 Reserved;
		}
		[CRepr]
		public struct NDR64_TRANSMIT_AS_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_TRANSMIT_AS_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 RoutineIndex;
			public uint16 TransmittedTypeWireAlignment;
			public uint16 MemoryAlignment;
			public uint32 PresentedTypeMemorySize;
			public uint32 TransmittedTypeBufferSize;
			public void* TransmittedType;
		}
		[CRepr]
		public struct NDR64_USER_MARSHAL_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_USER_MARSHAL_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint16 RoutineIndex;
			public uint16 TransmittedTypeWireAlignment;
			public uint16 MemoryAlignment;
			public uint32 UserTypeMemorySize;
			public uint32 TransmittedTypeBufferSize;
			public void* TransmittedType;
		}
		[CRepr]
		public struct NDR64_PIPE_FLAGS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NDR64_PIPE_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint8 Alignment;
			public uint8 Reserved;
			public void* Type;
			public uint32 MemorySize;
			public uint32 BufferSize;
		}
		[CRepr]
		public struct NDR64_RANGE_PIPE_FORMAT
		{
			public uint8 FormatCode;
			public uint8 Flags;
			public uint8 Alignment;
			public uint8 Reserved;
			public void* Type;
			public uint32 MemorySize;
			public uint32 BufferSize;
			public uint32 MinValue;
			public uint32 MaxValue;
		}
		[CRepr]
		public struct NDR64_TYPE_STRICT_CONTEXT_HANDLE
		{
			public uint8 FormatCode;
			public uint8 RealFormatCode;
			public uint16 Reserved;
			public void* Type;
			public uint32 CtxtFlags;
			public uint32 CtxtID;
		}
		
		// --- Functions ---
		
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_QueryInterface_Proxy(ref IUnknown This, in Guid riid, void** ppvObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IUnknown_AddRef_Proxy(ref IUnknown This);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IUnknown_Release_Proxy(ref IUnknown This);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingCopy(void* SourceBinding, void** DestinationBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingFree(void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetOption(void* hBinding, uint32 option, uint optionValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqOption(void* hBinding, uint32 option, out uint pOptionValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingFromStringBindingA(ref uint8 StringBinding, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingFromStringBindingW(ref uint16 StringBinding, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSsGetContextBinding(void* ContextHandle, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqMaxCalls(void* Binding, out uint32 MaxCalls);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqObject(void* Binding, out Guid ObjectUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingReset(void* Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetObject(void* Binding, ref Guid ObjectUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqDefaultProtectLevel(uint32 AuthnSvc, out uint32 AuthnLevel);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingToStringBindingA(void* Binding, out uint8* StringBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingToStringBindingW(void* Binding, out uint16* StringBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingVectorFree(out RPC_BINDING_VECTOR* BindingVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringBindingComposeA(uint8* ObjUuid, uint8* ProtSeq, uint8* NetworkAddr, uint8* Endpoint, uint8* Options, uint8** StringBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringBindingComposeW(uint16* ObjUuid, uint16* ProtSeq, uint16* NetworkAddr, uint16* Endpoint, uint16* Options, uint16** StringBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringBindingParseA(ref uint8 StringBinding, uint8** ObjUuid, uint8** Protseq, uint8** NetworkAddr, uint8** Endpoint, uint8** NetworkOptions);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringBindingParseW(ref uint16 StringBinding, uint16** ObjUuid, uint16** Protseq, uint16** NetworkAddr, uint16** Endpoint, uint16** NetworkOptions);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringFreeA(out uint8* String);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcStringFreeW(out uint16* String);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcIfInqId(void* RpcIfHandle, out RPC_IF_ID RpcIfId);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNetworkIsProtseqValidA(ref uint8 Protseq);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNetworkIsProtseqValidW(ref uint16 Protseq);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqComTimeout(void* Binding, out uint32 Timeout);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtSetComTimeout(void* Binding, uint32 Timeout);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtSetCancelTimeout(int32 Timeout);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNetworkInqProtseqsA(out RPC_PROTSEQ_VECTORA* ProtseqVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNetworkInqProtseqsW(out RPC_PROTSEQ_VECTORW* ProtseqVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcObjectInqType(ref Guid ObjUuid, Guid* TypeUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcObjectSetInqFn(RPC_OBJECT_INQ_FN InquiryFn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcObjectSetType(ref Guid ObjUuid, Guid* TypeUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcProtseqVectorFreeA(out RPC_PROTSEQ_VECTORA* ProtseqVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcProtseqVectorFreeW(out RPC_PROTSEQ_VECTORW* ProtseqVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqBindings(out RPC_BINDING_VECTOR* BindingVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqBindingsEx(void* SecurityDescriptor, out RPC_BINDING_VECTOR* BindingVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqIf(void* IfSpec, Guid* MgrTypeUuid, void** MgrEpv);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerListen(uint32 MinimumCallThreads, uint32 MaxCalls, uint32 DontWait);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterIf(void* IfSpec, Guid* MgrTypeUuid, void* MgrEpv);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterIfEx(void* IfSpec, Guid* MgrTypeUuid, void* MgrEpv, uint32 Flags, uint32 MaxCalls, RPC_IF_CALLBACK_FN IfCallback);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterIf2(void* IfSpec, Guid* MgrTypeUuid, void* MgrEpv, uint32 Flags, uint32 MaxCalls, uint32 MaxRpcSize, RPC_IF_CALLBACK_FN IfCallbackFn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterIf3(void* IfSpec, Guid* MgrTypeUuid, void* MgrEpv, uint32 Flags, uint32 MaxCalls, uint32 MaxRpcSize, RPC_IF_CALLBACK_FN IfCallback, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUnregisterIf(void* IfSpec, Guid* MgrTypeUuid, uint32 WaitForCallsToComplete);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUnregisterIfEx(void* IfSpec, Guid* MgrTypeUuid, int32 RundownContextHandles);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseAllProtseqs(uint32 MaxCalls, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseAllProtseqsEx(uint32 MaxCalls, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseAllProtseqsIf(uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseAllProtseqsIfEx(uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqA(ref uint8 Protseq, uint32 MaxCalls, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqExA(ref uint8 Protseq, uint32 MaxCalls, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqW(ref uint16 Protseq, uint32 MaxCalls, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqExW(ref uint16 Protseq, uint32 MaxCalls, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqEpA(ref uint8 Protseq, uint32 MaxCalls, ref uint8 Endpoint, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqEpExA(ref uint8 Protseq, uint32 MaxCalls, ref uint8 Endpoint, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqEpW(ref uint16 Protseq, uint32 MaxCalls, ref uint16 Endpoint, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqEpExW(ref uint16 Protseq, uint32 MaxCalls, ref uint16 Endpoint, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqIfA(ref uint8 Protseq, uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqIfExA(ref uint8 Protseq, uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqIfW(ref uint16 Protseq, uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUseProtseqIfExW(ref uint16 Protseq, uint32 MaxCalls, void* IfSpec, void* SecurityDescriptor, ref RPC_POLICY Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcServerYield();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtStatsVectorFree(out RPC_STATS_VECTOR* StatsVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqStats(void* Binding, out RPC_STATS_VECTOR* Statistics);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtIsServerListening(void* Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtStopServerListening(void* Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtWaitServerListen();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtSetServerStackSize(uint32 ThreadStackSize);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsDontSerializeContext();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEnableIdleCleanup();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqIfIds(void* Binding, out RPC_IF_ID_VECTOR* IfIdVector);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcIfIdVectorFree(out RPC_IF_ID_VECTOR* IfIdVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqServerPrincNameA(void* Binding, uint32 AuthnSvc, out uint8* ServerPrincName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtInqServerPrincNameW(void* Binding, uint32 AuthnSvc, out uint16* ServerPrincName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqDefaultPrincNameA(uint32 AuthnSvc, out uint8* PrincName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqDefaultPrincNameW(uint32 AuthnSvc, out uint16* PrincName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpResolveBinding(void* Binding, void* IfSpec);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingInqEntryNameA(void* Binding, uint32 EntryNameSyntax, out uint8* EntryName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingInqEntryNameW(void* Binding, uint32 EntryNameSyntax, out uint16* EntryName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingCreateA(ref RPC_BINDING_HANDLE_TEMPLATE_V1_A Template, RPC_BINDING_HANDLE_SECURITY_V1_A* Security, RPC_BINDING_HANDLE_OPTIONS_V1* Options, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingCreateW(ref RPC_BINDING_HANDLE_TEMPLATE_V1_W Template, RPC_BINDING_HANDLE_SECURITY_V1_W* Security, RPC_BINDING_HANDLE_OPTIONS_V1* Options, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqBindingHandle(void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcImpersonateClient(void* BindingHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcImpersonateClient2(void* BindingHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcRevertToSelfEx(void* BindingHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcRevertToSelf();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcImpersonateClientContainer(void* BindingHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcRevertContainerImpersonation();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthClientA(void* ClientBinding, void** Privs, uint8** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, uint32* AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthClientW(void* ClientBinding, void** Privs, uint16** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, uint32* AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthClientExA(void* ClientBinding, void** Privs, uint8** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, uint32* AuthzSvc, uint32 Flags);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthClientExW(void* ClientBinding, void** Privs, uint16** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, uint32* AuthzSvc, uint32 Flags);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthInfoA(void* Binding, uint8** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, void** AuthIdentity, uint32* AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthInfoW(void* Binding, uint16** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, void** AuthIdentity, uint32* AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetAuthInfoA(void* Binding, uint8* ServerPrincName, uint32 AuthnLevel, uint32 AuthnSvc, void* AuthIdentity, uint32 AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetAuthInfoExA(void* Binding, uint8* ServerPrincName, uint32 AuthnLevel, uint32 AuthnSvc, void* AuthIdentity, uint32 AuthzSvc, RPC_SECURITY_QOS* SecurityQos);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetAuthInfoW(void* Binding, uint16* ServerPrincName, uint32 AuthnLevel, uint32 AuthnSvc, void* AuthIdentity, uint32 AuthzSvc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingSetAuthInfoExW(void* Binding, uint16* ServerPrincName, uint32 AuthnLevel, uint32 AuthnSvc, void* AuthIdentity, uint32 AuthzSvc, RPC_SECURITY_QOS* SecurityQOS);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthInfoExA(void* Binding, uint8** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, void** AuthIdentity, uint32* AuthzSvc, uint32 RpcQosVersion, RPC_SECURITY_QOS* SecurityQOS);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingInqAuthInfoExW(void* Binding, uint16** ServerPrincName, uint32* AuthnLevel, uint32* AuthnSvc, void** AuthIdentity, uint32* AuthzSvc, uint32 RpcQosVersion, RPC_SECURITY_QOS* SecurityQOS);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerCompleteSecurityCallback(void* BindingHandle, RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterAuthInfoA(uint8* ServerPrincName, uint32 AuthnSvc, RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn, void* Arg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerRegisterAuthInfoW(uint16* ServerPrincName, uint32 AuthnSvc, RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn, void* Arg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingServerFromClient(void* ClientBinding, void** ServerBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcRaiseException(RPC_STATUS exception);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcTestCancel();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerTestCancel(void* BindingHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcCancelThread(void* Thread);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcCancelThreadEx(void* Thread, int32 Timeout);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidCreate(out Guid Uuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidCreateSequential(out Guid Uuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidToStringA(in Guid Uuid, out uint8* StringUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidFromStringA(uint8* StringUuid, out Guid Uuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidToStringW(in Guid Uuid, out uint16* StringUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidFromStringW(uint16* StringUuid, out Guid Uuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UuidCompare(ref Guid Uuid1, ref Guid Uuid2, out RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS UuidCreateNil(out Guid NilUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UuidEqual(ref Guid Uuid1, ref Guid Uuid2, out RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 UuidHash(ref Guid Uuid, out RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UuidIsNil(ref Guid Uuid, out RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpRegisterNoReplaceA(void* IfSpec, ref RPC_BINDING_VECTOR BindingVector, UUID_VECTOR* UuidVector, uint8* Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpRegisterNoReplaceW(void* IfSpec, ref RPC_BINDING_VECTOR BindingVector, UUID_VECTOR* UuidVector, uint16* Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpRegisterA(void* IfSpec, ref RPC_BINDING_VECTOR BindingVector, UUID_VECTOR* UuidVector, uint8* Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpRegisterW(void* IfSpec, ref RPC_BINDING_VECTOR BindingVector, UUID_VECTOR* UuidVector, uint16* Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcEpUnregister(void* IfSpec, ref RPC_BINDING_VECTOR BindingVector, UUID_VECTOR* UuidVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS DceErrorInqTextA(RPC_STATUS RpcStatus, uint8* ErrorText);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS DceErrorInqTextW(RPC_STATUS RpcStatus, uint16* ErrorText);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEpEltInqBegin(void* EpBinding, uint32 InquiryType, RPC_IF_ID* IfId, uint32 VersOption, Guid* ObjectUuid, void*** InquiryContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEpEltInqDone(void*** InquiryContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEpEltInqNextA(void** InquiryContext, out RPC_IF_ID IfId, void** Binding, Guid* ObjectUuid, uint8** Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEpEltInqNextW(void** InquiryContext, out RPC_IF_ID IfId, void** Binding, Guid* ObjectUuid, uint16** Annotation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtEpUnregister(void* EpBinding, ref RPC_IF_ID IfId, void* Binding, Guid* ObjectUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcMgmtSetAuthorizationFn(RPC_MGMT_AUTHORIZATION_FN AuthorizationFn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RpcExceptionFilter(uint32 ExceptionCode);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupCreateW(RPC_INTERFACE_TEMPLATEW* Interfaces, uint32 NumIfs, RPC_ENDPOINT_TEMPLATEW* Endpoints, uint32 NumEndpoints, uint32 IdlePeriod, RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN IdleCallbackFn, void* IdleCallbackContext, void** IfGroup);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupCreateA(RPC_INTERFACE_TEMPLATEA* Interfaces, uint32 NumIfs, RPC_ENDPOINT_TEMPLATEA* Endpoints, uint32 NumEndpoints, uint32 IdlePeriod, RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN IdleCallbackFn, void* IdleCallbackContext, void** IfGroup);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupClose(void* IfGroup);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupActivate(void* IfGroup);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupDeactivate(void* IfGroup, uint32 ForceDeactivation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInterfaceGroupInqBindings(void* IfGroup, out RPC_BINDING_VECTOR* BindingVector);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNegotiateTransferSyntax(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcGetBuffer(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcGetBufferWithObject(out RPC_MESSAGE Message, out Guid ObjectUuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcSendReceive(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcFreeBuffer(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcSend(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcReceive(out RPC_MESSAGE Message, uint32 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcFreePipeBuffer(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcReallocPipeBuffer(ref RPC_MESSAGE Message, uint32 NewSize);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcRequestMutex(void** Mutex);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcClearMutex(void* Mutex);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcDeleteMutex(void* Mutex);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* I_RpcAllocate(uint32 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcFree(void* Object);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcPauseExecution(uint32 Milliseconds);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcGetExtendedError();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcSystemHandleTypeSpecificWork(void* Handle, uint8 ActualType, uint8 IdlType, LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION MarshalDirection);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* I_RpcGetCurrentCallHandle();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsInterfaceExported(uint32 EntryNameSyntax, out uint16 EntryName, out RPC_SERVER_INTERFACE RpcInterfaceInformation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsInterfaceUnexported(uint32 EntryNameSyntax, out uint16 EntryName, out RPC_SERVER_INTERFACE RpcInterfaceInformation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingToStaticStringBindingW(void* Binding, out uint16* StringBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqSecurityContext(void* Binding, void** SecurityContextHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqSecurityContextKeyInfo(void* Binding, void* KeyInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqWireIdForSnego(void* Binding, out uint8 WireId);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqMarshalledTargetInfo(void* Binding, out uint32 MarshalledTargetInfoSize, out uint8* MarshalledTargetInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqLocalClientPID(void* Binding, out uint32 Pid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingHandleToAsyncHandle(void* Binding, void** AsyncHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsBindingSetEntryNameW(void* Binding, uint32 EntryNameSyntax, ref uint16 EntryName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsBindingSetEntryNameA(void* Binding, uint32 EntryNameSyntax, ref uint8 EntryName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerUseProtseqEp2A(uint8* NetworkAddress, ref uint8 Protseq, uint32 MaxCalls, ref uint8 Endpoint, void* SecurityDescriptor, void* Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerUseProtseqEp2W(uint16* NetworkAddress, ref uint16 Protseq, uint32 MaxCalls, ref uint16 Endpoint, void* SecurityDescriptor, void* Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerUseProtseq2W(uint16* NetworkAddress, ref uint16 Protseq, uint32 MaxCalls, void* SecurityDescriptor, void* Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerUseProtseq2A(uint8* NetworkAddress, ref uint8 Protseq, uint32 MaxCalls, void* SecurityDescriptor, void* Policy);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerStartService(ref uint16 Protseq, ref uint16 Endpoint, void* IfSpec);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqDynamicEndpointW(void* Binding, uint16** DynamicEndpoint);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqDynamicEndpointA(void* Binding, uint8** DynamicEndpoint);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerCheckClientRestriction(void* Context);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqTransportType(void* Binding, out uint32 Type);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcIfInqTransferSyntaxes(void* RpcIfHandle, out RPC_TRANSFER_SYNTAX TransferSyntaxes, uint32 TransferSyntaxSize, out uint32 TransferSyntaxCount);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_UuidCreate(out Guid Uuid);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingCopy(void* SourceBinding, void** DestinationBinding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingIsClientLocal(void* BindingHandle, out uint32 ClientLocalFlag);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingCreateNP(ref uint16 ServerName, ref uint16 ServiceName, ref uint16 NetworkOptions, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcSsDontSerializeContext();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerRegisterForwardFunction(out RPC_FORWARD_FUNCTION pForwardFunction);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_ADDRESS_CHANGE_FN* I_RpcServerInqAddressChangeFn();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerSetAddressChangeFn(out RPC_ADDRESS_CHANGE_FN pAddressChangeFn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerInqLocalConnAddress(void* Binding, void* Buffer, out uint32 BufferSize, out uint32 AddressFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerInqRemoteConnAddress(void* Binding, void* Buffer, out uint32 BufferSize, out uint32 AddressFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcSessionStrictContextHandle();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcTurnOnEEInfoPropagation();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerInqTransportType(out uint32 Type);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 I_RpcMapWin32Status(RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcRecordCalloutFailure(RPC_STATUS RpcStatus, out RDR_CALLOUT_STATE CallOutState, out uint16 DllName);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcMgmtEnableDedicatedThreadPool();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcGetDefaultSD(void** ppSecurityDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcOpenClientProcess(void* Binding, uint32 DesiredAccess, void** ClientProcess);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingIsServerLocal(void* Binding, out uint32 ServerLocalFlag);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingSetPrivateOption(void* hBinding, uint32 option, uint optionValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerSubscribeForDisconnectNotification(void* Binding, void* hEvent);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerGetAssociationID(void* Binding, out uint32 AssociationID);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 I_RpcServerDisableExceptionFilter();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerSubscribeForDisconnectNotification2(void* Binding, void* hEvent, out Guid SubscriptionId);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcServerUnsubscribeForDisconnectNotification(void* Binding, Guid SubscriptionId);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingExportA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, RPC_BINDING_VECTOR* BindingVec, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingUnexportA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingExportW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, RPC_BINDING_VECTOR* BindingVec, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingUnexportW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingExportPnPA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, UUID_VECTOR* ObjectVector);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingUnexportPnPA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, UUID_VECTOR* ObjectVector);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingExportPnPW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, UUID_VECTOR* ObjectVector);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingUnexportPnPW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, UUID_VECTOR* ObjectVector);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingLookupBeginA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, Guid* ObjUuid, uint32 BindingMaxCount, void** LookupContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingLookupBeginW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, Guid* ObjUuid, uint32 BindingMaxCount, void** LookupContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingLookupNext(void* LookupContext, out RPC_BINDING_VECTOR* BindingVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingLookupDone(void** LookupContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupDeleteA(GROUP_NAME_SYNTAX GroupNameSyntax, uint8* GroupName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrAddA(uint32 GroupNameSyntax, ref uint8 GroupName, uint32 MemberNameSyntax, ref uint8 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrRemoveA(uint32 GroupNameSyntax, ref uint8 GroupName, uint32 MemberNameSyntax, ref uint8 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrInqBeginA(uint32 GroupNameSyntax, ref uint8 GroupName, uint32 MemberNameSyntax, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrInqNextA(void* InquiryContext, out uint8* MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupDeleteW(GROUP_NAME_SYNTAX GroupNameSyntax, uint16* GroupName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrAddW(uint32 GroupNameSyntax, ref uint16 GroupName, uint32 MemberNameSyntax, ref uint16 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrRemoveW(uint32 GroupNameSyntax, ref uint16 GroupName, uint32 MemberNameSyntax, ref uint16 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrInqBeginW(uint32 GroupNameSyntax, ref uint16 GroupName, uint32 MemberNameSyntax, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrInqNextW(void* InquiryContext, out uint16* MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsGroupMbrInqDone(void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileDeleteA(uint32 ProfileNameSyntax, ref uint8 ProfileName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltAddA(uint32 ProfileNameSyntax, ref uint8 ProfileName, RPC_IF_ID* IfId, uint32 MemberNameSyntax, ref uint8 MemberName, uint32 Priority, uint8* Annotation);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltRemoveA(uint32 ProfileNameSyntax, ref uint8 ProfileName, RPC_IF_ID* IfId, uint32 MemberNameSyntax, ref uint8 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltInqBeginA(uint32 ProfileNameSyntax, ref uint8 ProfileName, uint32 InquiryType, RPC_IF_ID* IfId, uint32 VersOption, uint32 MemberNameSyntax, uint8* MemberName, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltInqNextA(void* InquiryContext, RPC_IF_ID* IfId, out uint8* MemberName, out uint32 Priority, out uint8* Annotation);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileDeleteW(uint32 ProfileNameSyntax, ref uint16 ProfileName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltAddW(uint32 ProfileNameSyntax, ref uint16 ProfileName, RPC_IF_ID* IfId, uint32 MemberNameSyntax, ref uint16 MemberName, uint32 Priority, uint16* Annotation);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltRemoveW(uint32 ProfileNameSyntax, ref uint16 ProfileName, RPC_IF_ID* IfId, uint32 MemberNameSyntax, ref uint16 MemberName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltInqBeginW(uint32 ProfileNameSyntax, ref uint16 ProfileName, uint32 InquiryType, RPC_IF_ID* IfId, uint32 VersOption, uint32 MemberNameSyntax, uint16* MemberName, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltInqNextW(void* InquiryContext, RPC_IF_ID* IfId, out uint16* MemberName, out uint32 Priority, out uint16* Annotation);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsProfileEltInqDone(void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryObjectInqBeginA(uint32 EntryNameSyntax, ref uint8 EntryName, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryObjectInqBeginW(uint32 EntryNameSyntax, ref uint16 EntryName, void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryObjectInqNext(void* InquiryContext, out Guid ObjUuid);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryObjectInqDone(void** InquiryContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryExpandNameA(uint32 EntryNameSyntax, ref uint8 EntryName, out uint8* ExpandedName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtBindingUnexportA(uint32 EntryNameSyntax, ref uint8 EntryName, RPC_IF_ID* IfId, uint32 VersOption, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryCreateA(uint32 EntryNameSyntax, ref uint8 EntryName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryDeleteA(uint32 EntryNameSyntax, ref uint8 EntryName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryInqIfIdsA(uint32 EntryNameSyntax, ref uint8 EntryName, out RPC_IF_ID_VECTOR* IfIdVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtHandleSetExpAge(void* NsHandle, uint32 ExpirationAge);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtInqExpAge(out uint32 ExpirationAge);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtSetExpAge(uint32 ExpirationAge);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsEntryExpandNameW(uint32 EntryNameSyntax, ref uint16 EntryName, out uint16* ExpandedName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtBindingUnexportW(uint32 EntryNameSyntax, ref uint16 EntryName, RPC_IF_ID* IfId, uint32 VersOption, UUID_VECTOR* ObjectUuidVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryCreateW(uint32 EntryNameSyntax, ref uint16 EntryName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryDeleteW(uint32 EntryNameSyntax, ref uint16 EntryName);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsMgmtEntryInqIfIdsW(uint32 EntryNameSyntax, ref uint16 EntryName, out RPC_IF_ID_VECTOR* IfIdVec);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingImportBeginA(uint32 EntryNameSyntax, uint8* EntryName, void* IfSpec, Guid* ObjUuid, void** ImportContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingImportBeginW(uint32 EntryNameSyntax, uint16* EntryName, void* IfSpec, Guid* ObjUuid, void** ImportContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingImportNext(void* ImportContext, void** Binding);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingImportDone(void** ImportContext);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcNsBindingSelect(out RPC_BINDING_VECTOR BindingVec, void** Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncRegisterInfo(ref RPC_ASYNC_STATE pAsync);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncInitializeHandle(out RPC_ASYNC_STATE pAsync, uint32 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncGetCallStatus(ref RPC_ASYNC_STATE pAsync);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncCompleteCall(out RPC_ASYNC_STATE pAsync, void* Reply);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncAbortCall(out RPC_ASYNC_STATE pAsync, uint32 ExceptionCode);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcAsyncCancelCall(out RPC_ASYNC_STATE pAsync, BOOL fAbort);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorStartEnumeration(out RPC_ERROR_ENUM_HANDLE EnumHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorGetNextRecord(ref RPC_ERROR_ENUM_HANDLE EnumHandle, BOOL CopyStrings, out RPC_EXTENDED_ERROR_INFO ErrorInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorEndEnumeration(out RPC_ERROR_ENUM_HANDLE EnumHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorResetEnumeration(out RPC_ERROR_ENUM_HANDLE EnumHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorGetNumberOfRecords(ref RPC_ERROR_ENUM_HANDLE EnumHandle, out int32 Records);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorSaveErrorInfo(ref RPC_ERROR_ENUM_HANDLE EnumHandle, void** ErrorBlob, out uint BlobSize);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorLoadErrorInfo(void* ErrorBlob, uint BlobSize, out RPC_ERROR_ENUM_HANDLE EnumHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcErrorAddRecord(ref RPC_EXTENDED_ERROR_INFO ErrorInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcErrorClearInformation();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcGetAuthorizationContextForClient(void* ClientBinding, BOOL ImpersonateOnReturn, void* Reserved1, LARGE_INTEGER* pExpirationTime, LUID Reserved2, uint32 Reserved3, void* Reserved4, void** pAuthzClientContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcFreeAuthorizationContext(void** pAuthzClientContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSsContextLockExclusive(void* ServerBindingHandle, void* UserContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSsContextLockShared(void* ServerBindingHandle, void* UserContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqCallAttributesW(void* ClientBinding, void* RpcCallAttributes);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerInqCallAttributesA(void* ClientBinding, void* RpcCallAttributes);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerSubscribeForNotification(void* Binding, RPC_NOTIFICATIONS Notification, RPC_NOTIFICATION_TYPES NotificationType, ref RPC_ASYNC_NOTIFICATION_INFO NotificationInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcServerUnsubscribeForNotification(void* Binding, RPC_NOTIFICATIONS Notification, out uint32 NotificationsQueued);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingBind(RPC_ASYNC_STATE* pAsync, void* Binding, void* IfSpec);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcBindingUnbind(void* Binding);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcAsyncSetHandle(ref RPC_MESSAGE Message, ref RPC_ASYNC_STATE pAsync);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcAsyncAbortCall(ref RPC_ASYNC_STATE pAsync, uint32 ExceptionCode);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 I_RpcExceptionFilter(uint32 ExceptionCode);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcBindingInqClientTokenAttributes(void* Binding, LUID* TokenId, LUID* AuthenticationId, LUID* ModifiedId);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsGetBuffer(out RPC_MESSAGE Message);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcNsSendReceive(out RPC_MESSAGE Message, void** Handle);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void I_RpcNsRaiseException(out RPC_MESSAGE Message, RPC_STATUS Status);
		[Import("rpcns4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS I_RpcReBindBuffer(out RPC_MESSAGE Message);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* NDRCContextBinding(int CContext);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NDRCContextMarshall(int CContext, void* pBuff);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NDRCContextUnmarshall(int* pCContext, void* hBinding, void* pBuff, uint32 DataRepresentation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NDRSContextMarshall(ref NDR_SCONTEXT_1 CContext, void* pBuff, NDR_RUNDOWN userRunDownIn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NDRSContextUnmarshall(void* pBuff, uint32 DataRepresentation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NDRSContextMarshallEx(void* BindingHandle, ref NDR_SCONTEXT_1 CContext, void* pBuff, NDR_RUNDOWN userRunDownIn);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NDRSContextMarshall2(void* BindingHandle, ref NDR_SCONTEXT_1 CContext, void* pBuff, NDR_RUNDOWN userRunDownIn, void* CtxGuard, uint32 Flags);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NDRSContextUnmarshallEx(void* BindingHandle, void* pBuff, uint32 DataRepresentation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NDRSContextUnmarshall2(void* BindingHandle, void* pBuff, uint32 DataRepresentation, void* CtxGuard, uint32 Flags);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsDestroyClientContext(void** ContextHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrSimpleTypeMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, uint8 FormatChar);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrPointerMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrSimpleStructMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantStructMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantVaryingStructMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrComplexStructMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrFixedArrayMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantArrayMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantVaryingArrayMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrVaryingArrayMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrComplexArrayMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNonConformantStringMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantStringMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrEncapsulatedUnionMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNonEncapsulatedUnionMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrByteCountPointerMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrXmitOrRepAsMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrUserMarshalMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrInterfacePointerMarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrClientContextMarshall(out MIDL_STUB_MESSAGE pStubMsg, int ContextHandle, int32 fCheck);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerContextMarshall(out MIDL_STUB_MESSAGE pStubMsg, out NDR_SCONTEXT_1 ContextHandle, NDR_RUNDOWN RundownRoutine);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerContextNewMarshall(out MIDL_STUB_MESSAGE pStubMsg, out NDR_SCONTEXT_1 ContextHandle, NDR_RUNDOWN RundownRoutine, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrSimpleTypeUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, uint8 FormatChar);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrRangeUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrCorrelationInitialize(out MIDL_STUB_MESSAGE pStubMsg, void* pMemory, uint32 CacheSize, uint32 flags);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrCorrelationPass(out MIDL_STUB_MESSAGE pStubMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrCorrelationFree(out MIDL_STUB_MESSAGE pStubMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrPointerUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrSimpleStructUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantStructUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantVaryingStructUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrComplexStructUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrFixedArrayUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantArrayUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantVaryingArrayUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrVaryingArrayUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrComplexArrayUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNonConformantStringUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrConformantStringUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrEncapsulatedUnionUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNonEncapsulatedUnionUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrByteCountPointerUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrXmitOrRepAsUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrUserMarshalUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrInterfacePointerUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out uint8* ppMemory, out uint8 pFormat, uint8 fMustAlloc);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrClientContextUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out int pContextHandle, void* BindHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NdrServerContextUnmarshall(out MIDL_STUB_MESSAGE pStubMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NdrContextHandleInitialize(ref MIDL_STUB_MESSAGE pStubMsg, ref uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NDR_SCONTEXT_1* NdrServerContextNewUnmarshall(ref MIDL_STUB_MESSAGE pStubMsg, ref uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPointerBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrSimpleStructBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantStructBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantVaryingStructBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrComplexStructBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrFixedArrayBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantArrayBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantVaryingArrayBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrVaryingArrayBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrComplexArrayBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantStringBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrNonConformantStringBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrEncapsulatedUnionBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrNonEncapsulatedUnionBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrByteCountPointerBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrXmitOrRepAsBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrUserMarshalBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrInterfacePointerBufferSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrContextHandleSize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrPointerMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrSimpleStructMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrConformantStructMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrConformantVaryingStructMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrComplexStructMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrFixedArrayMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrConformantArrayMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrConformantVaryingArrayMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrVaryingArrayMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrComplexArrayMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrConformantStringMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrNonConformantStringMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrEncapsulatedUnionMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrNonEncapsulatedUnionMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrXmitOrRepAsMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrUserMarshalMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NdrInterfacePointerMemorySize(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPointerFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrSimpleStructFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantStructFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantVaryingStructFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrComplexStructFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrFixedArrayFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantArrayFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConformantVaryingArrayFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrVaryingArrayFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrComplexArrayFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrEncapsulatedUnionFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrNonEncapsulatedUnionFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrByteCountPointerFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrXmitOrRepAsFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrUserMarshalFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrInterfacePointerFree(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConvert2(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat, int32 NumberParams);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrConvert(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrUserMarshalSimpleTypeConvert(out uint32 pFlags, out uint8 pBuffer, uint8 FormatChar);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrClientInitializeNew(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor, uint32 ProcNum);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrServerInitializeNew(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerInitializePartial(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor, uint32 RequestedBufferSize);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrClientInitialize(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor, uint32 ProcNum);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrServerInitialize(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrServerInitializeUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, out MIDL_STUB_DESC pStubDescriptor, out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerInitializeMarshall(out RPC_MESSAGE pRpcMsg, out MIDL_STUB_MESSAGE pStubMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrGetBuffer(out MIDL_STUB_MESSAGE pStubMsg, uint32 BufferLength, void* Handle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNsGetBuffer(out MIDL_STUB_MESSAGE pStubMsg, uint32 BufferLength, void* Handle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrSendReceive(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pBufferEnd);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* NdrNsSendReceive(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pBufferEnd, void** pAutoHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrFreeBuffer(out MIDL_STUB_MESSAGE pStubMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdrGetDcomProtocolVersion(out MIDL_STUB_MESSAGE pStubMsg, out RPC_VERSION pVersion);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrClientCall2(out MIDL_STUB_DESC pStubDescriptor, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrAsyncClientCall(out MIDL_STUB_DESC pStubDescriptor, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrDcomAsyncClientCall(out MIDL_STUB_DESC pStubDescriptor, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrAsyncServerCall(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 NdrDcomAsyncStubCall(ref IRpcStubBuffer pThis, ref IRpcChannelBuffer pChannel, out RPC_MESSAGE pRpcMsg, out uint32 pdwStubPhase);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 NdrStubCall2(void* pThis, void* pChannel, out RPC_MESSAGE pRpcMsg, out uint32 pdwStubPhase);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerCall2(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS NdrMapCommAndFaultStatus(out MIDL_STUB_MESSAGE pStubMsg, out uint32 pCommStatus, out uint32 pFaultStatus, RPC_STATUS Status);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RpcSsAllocate(uint Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsDisableAllocate();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsEnableAllocate();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsFree(void* NodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RpcSsGetThreadHandle();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsSetClientAllocFree(RPC_CLIENT_ALLOC ClientAlloc, RPC_CLIENT_FREE ClientFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsSetThreadHandle(void* Id);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcSsSwapClientAllocFree(RPC_CLIENT_ALLOC ClientAlloc, RPC_CLIENT_FREE ClientFree, out RPC_CLIENT_ALLOC OldClientAlloc, out RPC_CLIENT_FREE OldClientFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RpcSmAllocate(uint Size, out RPC_STATUS pStatus);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmClientFree(void* pNodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmDestroyClientContext(void** ContextHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmDisableAllocate();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmEnableAllocate();
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmFree(void* NodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RpcSmGetThreadHandle(out RPC_STATUS pStatus);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmSetClientAllocFree(RPC_CLIENT_ALLOC ClientAlloc, RPC_CLIENT_FREE ClientFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmSetThreadHandle(void* Id);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcSmSwapClientAllocFree(RPC_CLIENT_ALLOC ClientAlloc, RPC_CLIENT_FREE ClientFree, out RPC_CLIENT_ALLOC OldClientAlloc, out RPC_CLIENT_FREE OldClientFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrRpcSsEnableAllocate(out MIDL_STUB_MESSAGE pMessage);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrRpcSsDisableAllocate(out MIDL_STUB_MESSAGE pMessage);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrRpcSmSetClientToOsf(out MIDL_STUB_MESSAGE pMessage);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* NdrRpcSmClientAllocate(uint Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrRpcSmClientFree(void* NodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* NdrRpcSsDefaultAllocate(uint Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrRpcSsDefaultFree(void* NodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern FULL_PTR_XLAT_TABLES* NdrFullPointerXlatInit(uint32 NumberOfPointers, XLAT_SIDE XlatSide);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrFullPointerXlatFree(out FULL_PTR_XLAT_TABLES pXlatTables);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* NdrAllocate(out MIDL_STUB_MESSAGE pStubMsg, uint Len);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrClearOutParameters(out MIDL_STUB_MESSAGE pStubMsg, out uint8 pFormat, void* ArgAddr);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* NdrOleAllocate(uint Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrOleFree(void* NodeToFree);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS NdrGetUserMarshalInfo(ref uint32 pFlags, uint32 InformationLevel, out NDR_USER_MARSHAL_INFO pMarshalInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS NdrCreateServerInterfaceFromStub(ref IRpcStubBuffer pStub, out RPC_SERVER_INTERFACE pServerIf);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrClientCall3(out MIDL_STUBLESS_PROXY_INFO pProxyInfo, uint32 nProcNum, void* pReturnValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN Ndr64AsyncClientCall(out MIDL_STUBLESS_PROXY_INFO pProxyInfo, uint32 nProcNum, void* pReturnValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN Ndr64DcomAsyncClientCall(out MIDL_STUBLESS_PROXY_INFO pProxyInfo, uint32 nProcNum, void* pReturnValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void Ndr64AsyncServerCall64(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void Ndr64AsyncServerCallAll(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Ndr64DcomAsyncStubCall(ref IRpcStubBuffer pThis, ref IRpcChannelBuffer pChannel, out RPC_MESSAGE pRpcMsg, out uint32 pdwStubPhase);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 NdrStubCall3(void* pThis, void* pChannel, out RPC_MESSAGE pRpcMsg, out uint32 pdwStubPhase);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerCallAll(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrServerCallNdr64(out RPC_MESSAGE pRpcMsg);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPartialIgnoreClientMarshall(out MIDL_STUB_MESSAGE pStubMsg, void* pMemory);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPartialIgnoreServerUnmarshall(out MIDL_STUB_MESSAGE pStubMsg, void** ppMemory);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPartialIgnoreClientBufferSize(out MIDL_STUB_MESSAGE pStubMsg, void* pMemory);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrPartialIgnoreServerInitialize(out MIDL_STUB_MESSAGE pStubMsg, void** ppMemory, out uint8 pFormat);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RpcUserFree(void* AsyncHandle, void* pBuffer);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesEncodeIncrementalHandleCreate(void* UserState, MIDL_ES_ALLOC AllocFn, MIDL_ES_WRITE WriteFn, void** pHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesDecodeIncrementalHandleCreate(void* UserState, MIDL_ES_READ ReadFn, void** pHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesIncrementalHandleReset(void* Handle, void* UserState, MIDL_ES_ALLOC AllocFn, MIDL_ES_WRITE WriteFn, MIDL_ES_READ ReadFn, MIDL_ES_CODE Operation);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesEncodeFixedBufferHandleCreate(PSTR pBuffer, uint32 BufferSize, out uint32 pEncodedSize, void** pHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesEncodeDynBufferHandleCreate(out int8* pBuffer, out uint32 pEncodedSize, void** pHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesDecodeBufferHandleCreate(PSTR Buffer, uint32 BufferSize, void** pHandle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesBufferHandleReset(void* Handle, uint32 HandleStyle, MIDL_ES_CODE Operation, int8** pBuffer, uint32 BufferSize, uint32* pEncodedSize);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesHandleFree(void* Handle);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS MesInqProcEncodingId(void* Handle, out RPC_SYNTAX_IDENTIFIER pInterfaceId, out uint32 pProcNum);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint NdrMesSimpleTypeAlignSize(void* param0);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesSimpleTypeDecode(void* Handle, void* pObject, int16 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesSimpleTypeEncode(void* Handle, in MIDL_STUB_DESC pStubDesc, void* pObject, int16 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint NdrMesTypeAlignSize(void* Handle, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeEncode(void* Handle, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeDecode(void* Handle, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint NdrMesTypeAlignSize2(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeEncode2(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeDecode2(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeFree2(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesProcEncodeDecode(void* Handle, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrMesProcEncodeDecode2(void* Handle, in MIDL_STUB_DESC pStubDesc, out uint8 pFormatString);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint NdrMesTypeAlignSize3(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, in uint32* ArrTypeOffset, uint32 nTypeIndex, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeEncode3(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, in uint32* ArrTypeOffset, uint32 nTypeIndex, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeDecode3(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, in uint32* ArrTypeOffset, uint32 nTypeIndex, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesTypeFree3(void* Handle, in MIDL_TYPE_PICKLING_INFO pPicklingInfo, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, in uint32* ArrTypeOffset, uint32 nTypeIndex, void* pObject);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CLIENT_CALL_RETURN NdrMesProcEncodeDecode3(void* Handle, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, uint32 nProcNum, void* pReturnValue);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesSimpleTypeDecodeAll(void* Handle, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, void* pObject, int16 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void NdrMesSimpleTypeEncodeAll(void* Handle, in MIDL_STUBLESS_PROXY_INFO pProxyInfo, void* pObject, int16 Size);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint NdrMesSimpleTypeAlignSizeAll(void* Handle, in MIDL_STUBLESS_PROXY_INFO pProxyInfo);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcCertGeneratePrincipalNameW(in CERT_CONTEXT Context, uint32 Flags, out uint16* pBuffer);
		[Import("rpcrt4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern RPC_STATUS RpcCertGeneratePrincipalNameA(in CERT_CONTEXT Context, uint32 Flags, out uint8* pBuffer);
	}
}
