using System;

// namespace System.Iis
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 ADMINDATA_MAX_NAME_LEN = 256;
		public const Guid CLSID_MSAdminBase_W = .(0xa9e69610, 0xb80d, 0x11d0, 0xb9, 0xb9, 0x00, 0xa0, 0xc9, 0x22, 0xe7, 0x50);
		public const uint32 IMGCHG_SIZE = 1;
		public const uint32 IMGCHG_VIEW = 2;
		public const uint32 IMGCHG_COMPLETE = 4;
		public const uint32 IMGCHG_ANIMATE = 8;
		public const uint32 IMGCHG_MASK = 15;
		public const uint32 IMGLOAD_NOTLOADED = 1048576;
		public const uint32 IMGLOAD_LOADING = 2097152;
		public const uint32 IMGLOAD_STOPPED = 4194304;
		public const uint32 IMGLOAD_ERROR = 8388608;
		public const uint32 IMGLOAD_COMPLETE = 16777216;
		public const uint32 IMGLOAD_MASK = 32505856;
		public const uint32 IMGBITS_NONE = 33554432;
		public const uint32 IMGBITS_PARTIAL = 67108864;
		public const uint32 IMGBITS_TOTAL = 134217728;
		public const uint32 IMGBITS_MASK = 234881024;
		public const uint32 IMGANIM_ANIMATED = 268435456;
		public const uint32 IMGANIM_MASK = 268435456;
		public const uint32 IMGTRANS_OPAQUE = 536870912;
		public const uint32 IMGTRANS_MASK = 536870912;
		public const uint32 DWN_COLORMODE = 63;
		public const uint32 DWN_DOWNLOADONLY = 64;
		public const uint32 DWN_FORCEDITHER = 128;
		public const uint32 DWN_RAWIMAGE = 256;
		public const uint32 DWN_MIRRORIMAGE = 512;
		public const Guid CLSID_IImgCtx = .(0x3050f3d6, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const uint32 IIS_MD_ADSI_METAID_BEGIN = 130000;
		public const uint32 IIS_MD_UT_SERVER = 1;
		public const uint32 IIS_MD_UT_FILE = 2;
		public const uint32 IIS_MD_UT_WAM = 100;
		public const uint32 ASP_MD_UT_APP = 101;
		public const uint32 IIS_MD_UT_END_RESERVED = 2000;
		public const uint32 IIS_MD_ID_BEGIN_RESERVED = 1;
		public const uint32 IIS_MD_ID_END_RESERVED = 32767;
		public const uint32 ASP_MD_ID_BEGIN_RESERVED = 28672;
		public const uint32 ASP_MD_ID_END_RESERVED = 29951;
		public const uint32 WAM_MD_ID_BEGIN_RESERVED = 29952;
		public const uint32 WAM_MD_ID_END_RESERVED = 32767;
		public const uint32 FP_MD_ID_BEGIN_RESERVED = 32768;
		public const uint32 FP_MD_ID_END_RESERVED = 36863;
		public const uint32 SMTP_MD_ID_BEGIN_RESERVED = 36864;
		public const uint32 SMTP_MD_ID_END_RESERVED = 40959;
		public const uint32 POP3_MD_ID_BEGIN_RESERVED = 40960;
		public const uint32 POP3_MD_ID_END_RESERVED = 45055;
		public const uint32 NNTP_MD_ID_BEGIN_RESERVED = 45056;
		public const uint32 NNTP_MD_ID_END_RESERVED = 49151;
		public const uint32 IMAP_MD_ID_BEGIN_RESERVED = 49152;
		public const uint32 IMAP_MD_ID_END_RESERVED = 53247;
		public const uint32 MSCS_MD_ID_BEGIN_RESERVED = 53248;
		public const uint32 MSCS_MD_ID_END_RESERVED = 57343;
		public const uint32 APPCTR_MD_ID_BEGIN_RESERVED = 57344;
		public const uint32 APPCTR_MD_ID_END_RESERVED = 61439;
		public const uint32 USER_MD_ID_BASE_RESERVED = 65535;
		public const uint32 IIS_MD_SERVER_BASE = 1000;
		public const uint32 MD_MAX_BANDWIDTH = 1000;
		public const uint32 MD_KEY_TYPE = 1002;
		public const uint32 MD_MAX_BANDWIDTH_BLOCKED = 1003;
		public const uint32 MD_SCHEMA_METAID = 1004;
		public const uint32 MD_SERVER_COMMAND = 1012;
		public const uint32 MD_CONNECTION_TIMEOUT = 1013;
		public const uint32 MD_MAX_CONNECTIONS = 1014;
		public const uint32 MD_SERVER_COMMENT = 1015;
		public const uint32 MD_SERVER_STATE = 1016;
		public const uint32 MD_SERVER_AUTOSTART = 1017;
		public const uint32 MD_SERVER_SIZE = 1018;
		public const uint32 MD_SERVER_LISTEN_BACKLOG = 1019;
		public const uint32 MD_SERVER_LISTEN_TIMEOUT = 1020;
		public const uint32 MD_DOWNLEVEL_ADMIN_INSTANCE = 1021;
		public const uint32 MD_LEVELS_TO_SCAN = 1022;
		public const uint32 MD_SERVER_BINDINGS = 1023;
		public const uint32 MD_MAX_ENDPOINT_CONNECTIONS = 1024;
		public const uint32 MD_SERVER_CONFIGURATION_INFO = 1027;
		public const uint32 MD_IISADMIN_EXTENSIONS = 1028;
		public const uint32 MD_DISABLE_SOCKET_POOLING = 1029;
		public const uint32 MD_METADATA_ID_REGISTRATION = 1030;
		public const uint32 IIS_MD_HTTP_BASE = 2000;
		public const uint32 MD_SECURE_BINDINGS = 2021;
		public const uint32 MD_BINDINGS = 2022;
		public const uint32 MD_ENABLEDPROTOCOLS = 2023;
		public const uint32 MD_FILTER_LOAD_ORDER = 2040;
		public const uint32 MD_FILTER_IMAGE_PATH = 2041;
		public const uint32 MD_FILTER_STATE = 2042;
		public const uint32 MD_FILTER_ENABLED = 2043;
		public const uint32 MD_FILTER_FLAGS = 2044;
		public const uint32 MD_FILTER_DESCRIPTION = 2045;
		public const uint32 MD_FILTER_ENABLE_CACHE = 2046;
		public const uint32 MD_ADV_NOTIFY_PWD_EXP_IN_DAYS = 2063;
		public const uint32 MD_ADV_CACHE_TTL = 2064;
		public const uint32 MD_NET_LOGON_WKS = 2065;
		public const uint32 MD_USE_HOST_NAME = 2066;
		public const uint32 MD_AUTH_CHANGE_FLAGS = 2068;
		public const uint32 MD_PROCESS_NTCR_IF_LOGGED_ON = 2070;
		public const uint32 MD_FRONTPAGE_WEB = 2072;
		public const uint32 MD_IN_PROCESS_ISAPI_APPS = 2073;
		public const uint32 MD_AUTH_CHANGE_URL = 2060;
		public const uint32 MD_AUTH_EXPIRED_URL = 2061;
		public const uint32 MD_AUTH_EXPIRED_UNSECUREURL = 2067;
		public const uint32 MD_ALLOW_PATH_INFO_FOR_SCRIPT_MAPPINGS = 2095;
		public const uint32 MD_APP_FRIENDLY_NAME = 2102;
		public const uint32 MD_APP_ROOT = 2103;
		public const uint32 MD_APP_ISOLATED = 2104;
		public const uint32 MD_APP_WAM_CLSID = 2105;
		public const uint32 MD_APP_PACKAGE_ID = 2106;
		public const uint32 MD_APP_PACKAGE_NAME = 2107;
		public const uint32 MD_APP_OOP_RECOVER_LIMIT = 2110;
		public const uint32 MD_APP_PERIODIC_RESTART_TIME = 2111;
		public const uint32 MD_APP_PERIODIC_RESTART_REQUESTS = 2112;
		public const uint32 MD_APP_PERIODIC_RESTART_SCHEDULE = 2113;
		public const uint32 MD_APP_SHUTDOWN_TIME_LIMIT = 2114;
		public const uint32 MD_ADMIN_INSTANCE = 2115;
		public const uint32 MD_NOT_DELETABLE = 2116;
		public const uint32 MD_APP_TRACE_URL_LIST = 2118;
		public const uint32 MD_CENTRAL_W3C_LOGGING_ENABLED = 2119;
		public const uint32 MD_CUSTOM_ERROR_DESC = 2120;
		public const uint32 MD_CAL_VC_PER_CONNECT = 2130;
		public const uint32 MD_CAL_AUTH_RESERVE_TIMEOUT = 2131;
		public const uint32 MD_CAL_SSL_RESERVE_TIMEOUT = 2132;
		public const uint32 MD_CAL_W3_ERROR = 2133;
		public const uint32 MD_CPU_CGI_ENABLED = 2140;
		public const uint32 MD_CPU_APP_ENABLED = 2141;
		public const uint32 MD_CPU_LIMITS_ENABLED = 2143;
		public const uint32 MD_CPU_RESET_INTERVAL = 2144;
		public const uint32 MD_CPU_LOGGING_INTERVAL = 2145;
		public const uint32 MD_CPU_LOGGING_OPTIONS = 2146;
		public const uint32 MD_CPU_CGI_LIMIT = 2148;
		public const uint32 MD_CPU_LIMIT_LOGEVENT = 2149;
		public const uint32 MD_CPU_LIMIT_PRIORITY = 2150;
		public const uint32 MD_CPU_LIMIT_PROCSTOP = 2151;
		public const uint32 MD_CPU_LIMIT_PAUSE = 2152;
		public const uint32 MD_SET_HOST_NAME = 2154;
		public const uint32 MD_CPU_DISABLE_ALL_LOGGING = 0;
		public const uint32 MD_CPU_ENABLE_ALL_PROC_LOGGING = 1;
		public const uint32 MD_CPU_ENABLE_CGI_LOGGING = 2;
		public const uint32 MD_CPU_ENABLE_APP_LOGGING = 4;
		public const uint32 MD_CPU_ENABLE_EVENT = 1;
		public const uint32 MD_CPU_ENABLE_PROC_TYPE = 2;
		public const uint32 MD_CPU_ENABLE_USER_TIME = 4;
		public const uint32 MD_CPU_ENABLE_KERNEL_TIME = 8;
		public const uint32 MD_CPU_ENABLE_PAGE_FAULTS = 16;
		public const uint32 MD_CPU_ENABLE_TOTAL_PROCS = 32;
		public const uint32 MD_CPU_ENABLE_ACTIVE_PROCS = 64;
		public const uint32 MD_CPU_ENABLE_TERMINATED_PROCS = 128;
		public const uint32 MD_CPU_ENABLE_LOGGING = 2147483648;
		public const uint32 MD_ISAPI_RESTRICTION_LIST = 2163;
		public const uint32 MD_CGI_RESTRICTION_LIST = 2164;
		public const uint32 MD_RESTRICTION_LIST_CUSTOM_DESC = 2165;
		public const uint32 MD_SECURITY_SETUP_REQUIRED = 2166;
		public const uint32 MD_APP_DEPENDENCIES = 2167;
		public const uint32 MD_WEB_SVC_EXT_RESTRICTION_LIST = 2168;
		public const uint32 MD_MD_SERVER_SS_AUTH_MAPPING = 2200;
		public const uint32 MD_CERT_NO_REVOC_CHECK = 1;
		public const uint32 MD_CERT_CACHE_RETRIEVAL_ONLY = 2;
		public const uint32 MD_CERT_CHECK_REVOCATION_FRESHNESS_TIME = 4;
		public const uint32 MD_CERT_NO_USAGE_CHECK = 65536;
		public const uint32 MD_HC_COMPRESSION_DIRECTORY = 2210;
		public const uint32 MD_HC_CACHE_CONTROL_HEADER = 2211;
		public const uint32 MD_HC_EXPIRES_HEADER = 2212;
		public const uint32 MD_HC_DO_DYNAMIC_COMPRESSION = 2213;
		public const uint32 MD_HC_DO_STATIC_COMPRESSION = 2214;
		public const uint32 MD_HC_DO_ON_DEMAND_COMPRESSION = 2215;
		public const uint32 MD_HC_DO_DISK_SPACE_LIMITING = 2216;
		public const uint32 MD_HC_NO_COMPRESSION_FOR_HTTP_10 = 2217;
		public const uint32 MD_HC_NO_COMPRESSION_FOR_PROXIES = 2218;
		public const uint32 MD_HC_NO_COMPRESSION_FOR_RANGE = 2219;
		public const uint32 MD_HC_SEND_CACHE_HEADERS = 2220;
		public const uint32 MD_HC_MAX_DISK_SPACE_USAGE = 2221;
		public const uint32 MD_HC_IO_BUFFER_SIZE = 2222;
		public const uint32 MD_HC_COMPRESSION_BUFFER_SIZE = 2223;
		public const uint32 MD_HC_MAX_QUEUE_LENGTH = 2224;
		public const uint32 MD_HC_FILES_DELETED_PER_DISK_FREE = 2225;
		public const uint32 MD_HC_MIN_FILE_SIZE_FOR_COMP = 2226;
		public const uint32 MD_HC_COMPRESSION_DLL = 2237;
		public const uint32 MD_HC_FILE_EXTENSIONS = 2238;
		public const uint32 MD_HC_MIME_TYPE = 2239;
		public const uint32 MD_HC_PRIORITY = 2240;
		public const uint32 MD_HC_DYNAMIC_COMPRESSION_LEVEL = 2241;
		public const uint32 MD_HC_ON_DEMAND_COMP_LEVEL = 2242;
		public const uint32 MD_HC_CREATE_FLAGS = 2243;
		public const uint32 MD_HC_SCRIPT_FILE_EXTENSIONS = 2244;
		public const uint32 MD_HC_DO_NAMESPACE_DYNAMIC_COMPRESSION = 2255;
		public const uint32 MD_HC_DO_NAMESPACE_STATIC_COMPRESSION = 2256;
		public const uint32 MD_WIN32_ERROR = 1099;
		public const uint32 IIS_MD_VR_BASE = 3000;
		public const uint32 MD_VR_PATH = 3001;
		public const uint32 MD_VR_USERNAME = 3002;
		public const uint32 MD_VR_PASSWORD = 3003;
		public const uint32 MD_VR_PASSTHROUGH = 3006;
		public const uint32 MD_VR_NO_CACHE = 3007;
		public const uint32 MD_VR_IGNORE_TRANSLATE = 3008;
		public const uint32 IIS_MD_LOG_BASE = 4000;
		public const uint32 MD_LOG_TYPE = 4000;
		public const uint32 MD_LOGFILE_DIRECTORY = 4001;
		public const uint32 MD_LOG_UNUSED1 = 4002;
		public const uint32 MD_LOGFILE_PERIOD = 4003;
		public const uint32 MD_LOGFILE_TRUNCATE_SIZE = 4004;
		public const uint32 MD_LOG_PLUGIN_MOD_ID = 4005;
		public const uint32 MD_LOG_PLUGIN_UI_ID = 4006;
		public const uint32 MD_LOGSQL_DATA_SOURCES = 4007;
		public const uint32 MD_LOGSQL_TABLE_NAME = 4008;
		public const uint32 MD_LOGSQL_USER_NAME = 4009;
		public const uint32 MD_LOGSQL_PASSWORD = 4010;
		public const uint32 MD_LOG_PLUGIN_ORDER = 4011;
		public const uint32 MD_LOG_PLUGINS_AVAILABLE = 4012;
		public const uint32 MD_LOGEXT_FIELD_MASK = 4013;
		public const uint32 MD_LOGEXT_FIELD_MASK2 = 4014;
		public const uint32 MD_LOGFILE_LOCALTIME_ROLLOVER = 4015;
		public const uint32 IIS_MD_LOG_LAST = 4015;
		public const uint32 MD_GLOBAL_BINARY_LOGGING_ENABLED = 4016;
		public const uint32 MD_LOG_TYPE_DISABLED = 0;
		public const uint32 MD_LOG_TYPE_ENABLED = 1;
		public const uint32 MD_LOGFILE_PERIOD_NONE = 0;
		public const uint32 MD_LOGFILE_PERIOD_MAXSIZE = 0;
		public const uint32 MD_LOGFILE_PERIOD_DAILY = 1;
		public const uint32 MD_LOGFILE_PERIOD_WEEKLY = 2;
		public const uint32 MD_LOGFILE_PERIOD_MONTHLY = 3;
		public const uint32 MD_LOGFILE_PERIOD_HOURLY = 4;
		public const uint32 MD_EXTLOG_DATE = 1;
		public const uint32 MD_EXTLOG_TIME = 2;
		public const uint32 MD_EXTLOG_CLIENT_IP = 4;
		public const uint32 MD_EXTLOG_USERNAME = 8;
		public const uint32 MD_EXTLOG_SITE_NAME = 16;
		public const uint32 MD_EXTLOG_COMPUTER_NAME = 32;
		public const uint32 MD_EXTLOG_SERVER_IP = 64;
		public const uint32 MD_EXTLOG_METHOD = 128;
		public const uint32 MD_EXTLOG_URI_STEM = 256;
		public const uint32 MD_EXTLOG_URI_QUERY = 512;
		public const uint32 MD_EXTLOG_HTTP_STATUS = 1024;
		public const uint32 MD_EXTLOG_WIN32_STATUS = 2048;
		public const uint32 MD_EXTLOG_BYTES_SENT = 4096;
		public const uint32 MD_EXTLOG_BYTES_RECV = 8192;
		public const uint32 MD_EXTLOG_TIME_TAKEN = 16384;
		public const uint32 MD_EXTLOG_SERVER_PORT = 32768;
		public const uint32 MD_EXTLOG_USER_AGENT = 65536;
		public const uint32 MD_EXTLOG_COOKIE = 131072;
		public const uint32 MD_EXTLOG_REFERER = 262144;
		public const uint32 MD_EXTLOG_PROTOCOL_VERSION = 524288;
		public const uint32 MD_EXTLOG_HOST = 1048576;
		public const uint32 MD_EXTLOG_HTTP_SUB_STATUS = 2097152;
		public const uint32 IIS_MD_LOGCUSTOM_BASE = 4500;
		public const uint32 MD_LOGCUSTOM_PROPERTY_NAME = 4501;
		public const uint32 MD_LOGCUSTOM_PROPERTY_HEADER = 4502;
		public const uint32 MD_LOGCUSTOM_PROPERTY_ID = 4503;
		public const uint32 MD_LOGCUSTOM_PROPERTY_MASK = 4504;
		public const uint32 MD_LOGCUSTOM_PROPERTY_DATATYPE = 4505;
		public const uint32 MD_LOGCUSTOM_SERVICES_STRING = 4506;
		public const uint32 MD_CPU_LOGGING_MASK = 4507;
		public const uint32 MD_LOGCUSTOM_PROPERTY_NODE_ID = 4508;
		public const uint32 IIS_MD_LOGCUSTOM_LAST = 4508;
		public const uint32 MD_LOGCUSTOM_DATATYPE_INT = 0;
		public const uint32 MD_LOGCUSTOM_DATATYPE_UINT = 1;
		public const uint32 MD_LOGCUSTOM_DATATYPE_LONG = 2;
		public const uint32 MD_LOGCUSTOM_DATATYPE_ULONG = 3;
		public const uint32 MD_LOGCUSTOM_DATATYPE_FLOAT = 4;
		public const uint32 MD_LOGCUSTOM_DATATYPE_DOUBLE = 5;
		public const uint32 MD_LOGCUSTOM_DATATYPE_LPSTR = 6;
		public const uint32 MD_LOGCUSTOM_DATATYPE_LPWSTR = 7;
		public const uint32 MD_NOTIFY_SECURE_PORT = 1;
		public const uint32 MD_NOTIFY_NONSECURE_PORT = 2;
		public const uint32 MD_NOTIFY_READ_RAW_DATA = 32768;
		public const uint32 MD_NOTIFY_PREPROC_HEADERS = 16384;
		public const uint32 MD_NOTIFY_AUTHENTICATION = 8192;
		public const uint32 MD_NOTIFY_URL_MAP = 4096;
		public const uint32 MD_NOTIFY_ACCESS_DENIED = 2048;
		public const uint32 MD_NOTIFY_SEND_RESPONSE = 64;
		public const uint32 MD_NOTIFY_SEND_RAW_DATA = 1024;
		public const uint32 MD_NOTIFY_LOG = 512;
		public const uint32 MD_NOTIFY_END_OF_REQUEST = 128;
		public const uint32 MD_NOTIFY_END_OF_NET_SESSION = 256;
		public const uint32 MD_NOTIFY_AUTH_COMPLETE = 67108864;
		public const uint32 MD_NOTIFY_ORDER_HIGH = 524288;
		public const uint32 MD_NOTIFY_ORDER_MEDIUM = 262144;
		public const uint32 MD_NOTIFY_ORDER_LOW = 131072;
		public const uint32 MD_NOTIFY_ORDER_DEFAULT = 131072;
		public const uint32 IIS_MD_FTP_BASE = 5000;
		public const uint32 MD_EXIT_MESSAGE = 5001;
		public const uint32 MD_GREETING_MESSAGE = 5002;
		public const uint32 MD_MAX_CLIENTS_MESSAGE = 5003;
		public const uint32 MD_MSDOS_DIR_OUTPUT = 5004;
		public const uint32 MD_ALLOW_ANONYMOUS = 5005;
		public const uint32 MD_ANONYMOUS_ONLY = 5006;
		public const uint32 MD_LOG_ANONYMOUS = 5007;
		public const uint32 MD_LOG_NONANONYMOUS = 5008;
		public const uint32 MD_ALLOW_REPLACE_ON_RENAME = 5009;
		public const uint32 MD_SHOW_4_DIGIT_YEAR = 5010;
		public const uint32 MD_BANNER_MESSAGE = 5011;
		public const uint32 MD_USER_ISOLATION = 5012;
		public const uint32 MD_FTP_LOG_IN_UTF_8 = 5013;
		public const uint32 MD_AD_CONNECTIONS_USERNAME = 5014;
		public const uint32 MD_AD_CONNECTIONS_PASSWORD = 5015;
		public const uint32 MD_PASSIVE_PORT_RANGE = 5016;
		public const uint32 MD_SUPPRESS_DEFAULT_BANNER = 5017;
		public const uint32 MD_FTP_PASV_RESPONSE_IP = 5018;
		public const uint32 MD_FTP_KEEP_PARTIAL_UPLOADS = 5019;
		public const uint32 MD_FTP_UTF8_FILE_NAMES = 5020;
		public const uint32 MD_FTPS_SECURE_CONTROL_CHANNEL = 5050;
		public const uint32 MD_FTPS_SECURE_DATA_CHANNEL = 5051;
		public const uint32 MD_FTPS_SECURE_ANONYMOUS = 5052;
		public const uint32 MD_FTPS_128_BITS = 5053;
		public const uint32 MD_FTPS_ALLOW_CCC = 5054;
		public const uint32 IIS_MD_SSL_BASE = 5500;
		public const uint32 MD_SSL_PUBLIC_KEY = 5500;
		public const uint32 MD_SSL_PRIVATE_KEY = 5501;
		public const uint32 MD_SSL_KEY_PASSWORD = 5502;
		public const uint32 MD_SSL_KEY_REQUEST = 5503;
		public const uint32 MD_SSL_USE_DS_MAPPER = 5519;
		public const uint32 MD_SSL_ALWAYS_NEGO_CLIENT_CERT = 5521;
		public const uint32 IIS_MD_FILE_PROP_BASE = 6000;
		public const uint32 MD_AUTHORIZATION = 6000;
		public const uint32 MD_REALM = 6001;
		public const uint32 MD_HTTP_EXPIRES = 6002;
		public const uint32 MD_HTTP_PICS = 6003;
		public const uint32 MD_HTTP_CUSTOM = 6004;
		public const uint32 MD_DIRECTORY_BROWSING = 6005;
		public const uint32 MD_DEFAULT_LOAD_FILE = 6006;
		public const uint32 MD_CUSTOM_ERROR = 6008;
		public const uint32 MD_FOOTER_DOCUMENT = 6009;
		public const uint32 MD_FOOTER_ENABLED = 6010;
		public const uint32 MD_HTTP_REDIRECT = 6011;
		public const uint32 MD_DEFAULT_LOGON_DOMAIN = 6012;
		public const uint32 MD_LOGON_METHOD = 6013;
		public const uint32 MD_SCRIPT_MAPS = 6014;
		public const uint32 MD_MIME_MAP = 6015;
		public const uint32 MD_ACCESS_PERM = 6016;
		public const uint32 MD_IP_SEC = 6019;
		public const uint32 MD_ANONYMOUS_USER_NAME = 6020;
		public const uint32 MD_ANONYMOUS_PWD = 6021;
		public const uint32 MD_ANONYMOUS_USE_SUBAUTH = 6022;
		public const uint32 MD_DONT_LOG = 6023;
		public const uint32 MD_ADMIN_ACL = 6027;
		public const uint32 MD_SSI_EXEC_DISABLED = 6028;
		public const uint32 MD_DO_REVERSE_DNS = 6029;
		public const uint32 MD_SSL_ACCESS_PERM = 6030;
		public const uint32 MD_AUTHORIZATION_PERSISTENCE = 6031;
		public const uint32 MD_NTAUTHENTICATION_PROVIDERS = 6032;
		public const uint32 MD_SCRIPT_TIMEOUT = 6033;
		public const uint32 MD_CACHE_EXTENSIONS = 6034;
		public const uint32 MD_CREATE_PROCESS_AS_USER = 6035;
		public const uint32 MD_CREATE_PROC_NEW_CONSOLE = 6036;
		public const uint32 MD_POOL_IDC_TIMEOUT = 6037;
		public const uint32 MD_ALLOW_KEEPALIVES = 6038;
		public const uint32 MD_IS_CONTENT_INDEXED = 6039;
		public const uint32 MD_CC_NO_CACHE = 6041;
		public const uint32 MD_CC_MAX_AGE = 6042;
		public const uint32 MD_CC_OTHER = 6043;
		public const uint32 MD_REDIRECT_HEADERS = 6044;
		public const uint32 MD_UPLOAD_READAHEAD_SIZE = 6045;
		public const uint32 MD_PUT_READ_SIZE = 6046;
		public const uint32 MD_USE_DIGEST_SSP = 6047;
		public const uint32 MD_ENABLE_URL_AUTHORIZATION = 6048;
		public const uint32 MD_URL_AUTHORIZATION_STORE_NAME = 6049;
		public const uint32 MD_URL_AUTHORIZATION_SCOPE_NAME = 6050;
		public const uint32 MD_MAX_REQUEST_ENTITY_ALLOWED = 6051;
		public const uint32 MD_PASSPORT_REQUIRE_AD_MAPPING = 6052;
		public const uint32 MD_URL_AUTHORIZATION_IMPERSONATION_LEVEL = 6053;
		public const uint32 MD_HTTP_FORWARDER_CUSTOM = 6054;
		public const uint32 MD_CUSTOM_DEPLOYMENT_DATA = 6055;
		public const uint32 MD_HTTPERRORS_EXISTING_RESPONSE = 6056;
		public const uint32 ASP_MD_SERVER_BASE = 7000;
		public const uint32 MD_ASP_BUFFERINGON = 7000;
		public const uint32 MD_ASP_LOGERRORREQUESTS = 7001;
		public const uint32 MD_ASP_SCRIPTERRORSSENTTOBROWSER = 7002;
		public const uint32 MD_ASP_SCRIPTERRORMESSAGE = 7003;
		public const uint32 MD_ASP_SCRIPTFILECACHESIZE = 7004;
		public const uint32 MD_ASP_SCRIPTENGINECACHEMAX = 7005;
		public const uint32 MD_ASP_SCRIPTTIMEOUT = 7006;
		public const uint32 MD_ASP_SESSIONTIMEOUT = 7007;
		public const uint32 MD_ASP_ENABLEPARENTPATHS = 7008;
		public const uint32 MD_ASP_MEMFREEFACTOR = 7009;
		public const uint32 MD_ASP_MINUSEDBLOCKS = 7010;
		public const uint32 MD_ASP_ALLOWSESSIONSTATE = 7011;
		public const uint32 MD_ASP_SCRIPTLANGUAGE = 7012;
		public const uint32 MD_ASP_QUEUETIMEOUT = 7013;
		public const uint32 MD_ASP_ALLOWOUTOFPROCCOMPONENTS = 7014;
		public const uint32 MD_ASP_ALLOWOUTOFPROCCMPNTS = 7014;
		public const uint32 MD_ASP_EXCEPTIONCATCHENABLE = 7015;
		public const uint32 MD_ASP_CODEPAGE = 7016;
		public const uint32 MD_ASP_SCRIPTLANGUAGELIST = 7017;
		public const uint32 MD_ASP_ENABLESERVERDEBUG = 7018;
		public const uint32 MD_ASP_ENABLECLIENTDEBUG = 7019;
		public const uint32 MD_ASP_TRACKTHREADINGMODEL = 7020;
		public const uint32 MD_ASP_ENABLEASPHTMLFALLBACK = 7021;
		public const uint32 MD_ASP_ENABLECHUNKEDENCODING = 7022;
		public const uint32 MD_ASP_ENABLETYPELIBCACHE = 7023;
		public const uint32 MD_ASP_ERRORSTONTLOG = 7024;
		public const uint32 MD_ASP_PROCESSORTHREADMAX = 7025;
		public const uint32 MD_ASP_REQEUSTQUEUEMAX = 7026;
		public const uint32 MD_ASP_ENABLEAPPLICATIONRESTART = 7027;
		public const uint32 MD_ASP_QUEUECONNECTIONTESTTIME = 7028;
		public const uint32 MD_ASP_SESSIONMAX = 7029;
		public const uint32 MD_ASP_THREADGATEENABLED = 7030;
		public const uint32 MD_ASP_THREADGATETIMESLICE = 7031;
		public const uint32 MD_ASP_THREADGATESLEEPDELAY = 7032;
		public const uint32 MD_ASP_THREADGATESLEEPMAX = 7033;
		public const uint32 MD_ASP_THREADGATELOADLOW = 7034;
		public const uint32 MD_ASP_THREADGATELOADHIGH = 7035;
		public const uint32 MD_ASP_DISKTEMPLATECACHEDIRECTORY = 7036;
		public const uint32 MD_ASP_MAXDISKTEMPLATECACHEFILES = 7040;
		public const uint32 MD_ASP_EXECUTEINMTA = 7041;
		public const uint32 MD_ASP_LCID = 7042;
		public const uint32 MD_ASP_KEEPSESSIONIDSECURE = 7043;
		public const uint32 MD_ASP_SERVICE_FLAGS = 7044;
		public const uint32 MD_ASP_SERVICE_FLAG_TRACKER = 7045;
		public const uint32 MD_ASP_SERVICE_FLAG_FUSION = 7046;
		public const uint32 MD_ASP_SERVICE_FLAG_PARTITIONS = 7047;
		public const uint32 MD_ASP_SERVICE_PARTITION_ID = 7048;
		public const uint32 MD_ASP_SERVICE_SXS_NAME = 7049;
		public const uint32 MD_ASP_SERVICE_ENABLE_TRACKER = 1;
		public const uint32 MD_ASP_SERVICE_ENABLE_SXS = 2;
		public const uint32 MD_ASP_SERVICE_USE_PARTITION = 4;
		public const uint32 MD_ASP_CALCLINENUMBER = 7050;
		public const uint32 MD_ASP_RUN_ONEND_ANON = 7051;
		public const uint32 MD_ASP_BUFFER_LIMIT = 7052;
		public const uint32 MD_ASP_MAX_REQUEST_ENTITY_ALLOWED = 7053;
		public const uint32 MD_ASP_MAXREQUESTENTITY = 7053;
		public const uint32 MD_ASP_ID_LAST = 7053;
		public const uint32 WAM_MD_SERVER_BASE = 7500;
		public const uint32 MD_WAM_USER_NAME = 7501;
		public const uint32 MD_WAM_PWD = 7502;
		public const uint32 WEBDAV_MD_SERVER_BASE = 8500;
		public const uint32 MD_WEBDAV_MAX_ATTRIBUTES_PER_ELEMENT = 8501;
		public const uint32 IIS_MD_APPPOOL_BASE = 9000;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_TIME = 9001;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_REQUEST_COUNT = 9002;
		public const uint32 MD_APPPOOL_MAX_PROCESS_COUNT = 9003;
		public const uint32 MD_APPPOOL_PINGING_ENABLED = 9004;
		public const uint32 MD_APPPOOL_IDLE_TIMEOUT = 9005;
		public const uint32 MD_APPPOOL_RAPID_FAIL_PROTECTION_ENABLED = 9006;
		public const uint32 MD_APPPOOL_SMP_AFFINITIZED = 9007;
		public const uint32 MD_APPPOOL_SMP_AFFINITIZED_PROCESSOR_MASK = 9008;
		public const uint32 MD_APPPOOL_ORPHAN_PROCESSES_FOR_DEBUGGING = 9009;
		public const uint32 MD_APPPOOL_STARTUP_TIMELIMIT = 9011;
		public const uint32 MD_APPPOOL_SHUTDOWN_TIMELIMIT = 9012;
		public const uint32 MD_APPPOOL_PING_INTERVAL = 9013;
		public const uint32 MD_APPPOOL_PING_RESPONSE_TIMELIMIT = 9014;
		public const uint32 MD_APPPOOL_DISALLOW_OVERLAPPING_ROTATION = 9015;
		public const uint32 MD_APPPOOL_UL_APPPOOL_QUEUE_LENGTH = 9017;
		public const uint32 MD_APPPOOL_DISALLOW_ROTATION_ON_CONFIG_CHANGE = 9018;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_SCHEDULE = 9020;
		public const uint32 MD_APPPOOL_IDENTITY_TYPE = 9021;
		public const uint32 MD_CPU_ACTION = 9022;
		public const uint32 MD_CPU_LIMIT = 9023;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_MEMORY = 9024;
		public const uint32 MD_APPPOOL_COMMAND = 9026;
		public const uint32 MD_APPPOOL_STATE = 9027;
		public const uint32 MD_APPPOOL_AUTO_START = 9028;
		public const uint32 MD_RAPID_FAIL_PROTECTION_INTERVAL = 9029;
		public const uint32 MD_RAPID_FAIL_PROTECTION_MAX_CRASHES = 9030;
		public const uint32 MD_APPPOOL_ORPHAN_ACTION_EXE = 9031;
		public const uint32 MD_APPPOOL_ORPHAN_ACTION_PARAMS = 9032;
		public const uint32 MB_DONT_IMPERSONATE = 9033;
		public const uint32 MD_LOAD_BALANCER_CAPABILITIES = 9034;
		public const uint32 MD_APPPOOL_AUTO_SHUTDOWN_EXE = 9035;
		public const uint32 MD_APPPOOL_AUTO_SHUTDOWN_PARAMS = 9036;
		public const uint32 MD_APP_POOL_LOG_EVENT_ON_RECYCLE = 9037;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_PRIVATE_MEMORY = 9038;
		public const uint32 MD_APPPOOL_MANAGED_RUNTIME_VERSION = 9039;
		public const uint32 MD_APPPOOL_32_BIT_APP_ON_WIN64 = 9040;
		public const uint32 MD_APPPOOL_MANAGED_PIPELINE_MODE = 9041;
		public const uint32 MD_APP_POOL_LOG_EVENT_ON_PROCESSMODEL = 9042;
		public const uint32 MD_APP_POOL_PROCESSMODEL_IDLE_TIMEOUT = 1;
		public const uint32 MD_APP_POOL_RECYCLE_TIME = 1;
		public const uint32 MD_APP_POOL_RECYCLE_REQUESTS = 2;
		public const uint32 MD_APP_POOL_RECYCLE_SCHEDULE = 4;
		public const uint32 MD_APP_POOL_RECYCLE_MEMORY = 8;
		public const uint32 MD_APP_POOL_RECYCLE_ISAPI_UNHEALTHY = 16;
		public const uint32 MD_APP_POOL_RECYCLE_ON_DEMAND = 32;
		public const uint32 MD_APP_POOL_RECYCLE_CONFIG_CHANGE = 64;
		public const uint32 MD_APP_POOL_RECYCLE_PRIVATE_MEMORY = 128;
		public const uint32 MD_CPU_NO_ACTION = 0;
		public const uint32 MD_CPU_KILL_W3WP = 1;
		public const uint32 MD_CPU_TRACE = 2;
		public const uint32 MD_CPU_THROTTLE = 3;
		public const uint32 MD_APPPOOL_COMMAND_START = 1;
		public const uint32 MD_APPPOOL_COMMAND_STOP = 2;
		public const uint32 MD_APPPOOL_STATE_STARTING = 1;
		public const uint32 MD_APPPOOL_STATE_STARTED = 2;
		public const uint32 MD_APPPOOL_STATE_STOPPING = 3;
		public const uint32 MD_APPPOOL_STATE_STOPPED = 4;
		public const uint32 MD_APPPOOL_IDENTITY_TYPE_LOCALSYSTEM = 0;
		public const uint32 MD_APPPOOL_IDENTITY_TYPE_LOCALSERVICE = 1;
		public const uint32 MD_APPPOOL_IDENTITY_TYPE_NETWORKSERVICE = 2;
		public const uint32 MD_APPPOOL_IDENTITY_TYPE_SPECIFICUSER = 3;
		public const uint32 MD_LOAD_BALANCER_CAPABILITIES_BASIC = 1;
		public const uint32 MD_LOAD_BALANCER_CAPABILITIES_SOPHISTICATED = 2;
		public const uint32 IIS_MD_APP_BASE = 9100;
		public const uint32 MD_APP_APPPOOL_ID = 9101;
		public const uint32 MD_APP_ALLOW_TRANSIENT_REGISTRATION = 9102;
		public const uint32 MD_APP_AUTO_START = 9103;
		public const uint32 MD_APPPOOL_PERIODIC_RESTART_CONNECTIONS = 9104;
		public const uint32 MD_APPPOOL_APPPOOL_ID = 9201;
		public const uint32 MD_APPPOOL_ALLOW_TRANSIENT_REGISTRATION = 9202;
		public const uint32 IIS_MD_GLOBAL_BASE = 9200;
		public const uint32 MD_MAX_GLOBAL_BANDWIDTH = 9201;
		public const uint32 MD_MAX_GLOBAL_CONNECTIONS = 9202;
		public const uint32 MD_GLOBAL_STANDARD_APP_MODE_ENABLED = 9203;
		public const uint32 MD_HEADER_WAIT_TIMEOUT = 9204;
		public const uint32 MD_MIN_FILE_BYTES_PER_SEC = 9205;
		public const uint32 MD_GLOBAL_LOG_IN_UTF_8 = 9206;
		public const uint32 MD_DEMAND_START_THRESHOLD = 9207;
		public const uint32 MD_GLOBAL_SESSIONKEY = 9999;
		public const uint32 MD_ROOT_ENABLE_EDIT_WHILE_RUNNING = 9998;
		public const uint32 MD_GLOBAL_CHANGE_NUMBER = 9997;
		public const uint32 MD_ROOT_ENABLE_HISTORY = 9996;
		public const uint32 MD_ROOT_MAX_HISTORY_FILES = 9995;
		public const uint32 MD_GLOBAL_EDIT_WHILE_RUNNING_MAJOR_VERSION_NUMBER = 9994;
		public const uint32 MD_GLOBAL_EDIT_WHILE_RUNNING_MINOR_VERSION_NUMBER = 9993;
		public const uint32 MD_GLOBAL_XMLSCHEMATIMESTAMP = 9992;
		public const uint32 MD_GLOBAL_BINSCHEMATIMESTAMP = 9991;
		public const uint32 MD_COMMENTS = 9990;
		public const uint32 MD_LOCATION = 9989;
		public const uint32 MD_MAX_ERROR_FILES = 9988;
		public const uint32 MD_STOP_LISTENING = 9987;
		public const uint32 MD_AUTH_ANONYMOUS = 1;
		public const uint32 MD_AUTH_BASIC = 2;
		public const uint32 MD_AUTH_NT = 4;
		public const uint32 MD_AUTH_MD5 = 16;
		public const uint32 MD_AUTH_PASSPORT = 64;
		public const uint32 MD_AUTH_SINGLEREQUEST = 64;
		public const uint32 MD_AUTH_SINGLEREQUESTIFPROXY = 128;
		public const uint32 MD_AUTH_SINGLEREQUESTALWAYSIFPROXY = 256;
		public const uint32 MD_ACCESS_READ = 1;
		public const uint32 MD_ACCESS_WRITE = 2;
		public const uint32 MD_ACCESS_EXECUTE = 4;
		public const uint32 MD_ACCESS_SOURCE = 16;
		public const uint32 MD_ACCESS_SCRIPT = 512;
		public const uint32 MD_ACCESS_NO_REMOTE_WRITE = 1024;
		public const uint32 MD_ACCESS_NO_REMOTE_READ = 4096;
		public const uint32 MD_ACCESS_NO_REMOTE_EXECUTE = 8192;
		public const uint32 MD_ACCESS_NO_REMOTE_SCRIPT = 16384;
		public const uint32 MD_ACCESS_NO_PHYSICAL_DIR = 32768;
		public const uint32 MD_ACCESS_SSL = 8;
		public const uint32 MD_ACCESS_NEGO_CERT = 32;
		public const uint32 MD_ACCESS_REQUIRE_CERT = 64;
		public const uint32 MD_ACCESS_MAP_CERT = 128;
		public const uint32 MD_ACCESS_SSL128 = 256;
		public const uint32 MD_ACCESS_MASK = 65535;
		public const uint32 MD_DIRBROW_SHOW_DATE = 2;
		public const uint32 MD_DIRBROW_SHOW_TIME = 4;
		public const uint32 MD_DIRBROW_SHOW_SIZE = 8;
		public const uint32 MD_DIRBROW_SHOW_EXTENSION = 16;
		public const uint32 MD_DIRBROW_LONG_DATE = 32;
		public const uint32 MD_DIRBROW_ENABLED = 2147483648;
		public const uint32 MD_DIRBROW_LOADDEFAULT = 1073741824;
		public const uint32 MD_LOGON_INTERACTIVE = 0;
		public const uint32 MD_LOGON_BATCH = 1;
		public const uint32 MD_LOGON_NETWORK = 2;
		public const uint32 MD_LOGON_NETWORK_CLEARTEXT = 3;
		public const uint32 MD_PASSPORT_NO_MAPPING = 0;
		public const uint32 MD_PASSPORT_TRY_MAPPING = 1;
		public const uint32 MD_PASSPORT_NEED_MAPPING = 2;
		public const uint32 MD_NOTIFEXAUTH_NTLMSSL = 1;
		public const uint32 MD_FILTER_STATE_LOADED = 1;
		public const uint32 MD_FILTER_STATE_UNLOADED = 4;
		public const uint32 MD_SERVER_STATE_STARTING = 1;
		public const uint32 MD_SERVER_STATE_STARTED = 2;
		public const uint32 MD_SERVER_STATE_STOPPING = 3;
		public const uint32 MD_SERVER_STATE_STOPPED = 4;
		public const uint32 MD_SERVER_STATE_PAUSING = 5;
		public const uint32 MD_SERVER_STATE_PAUSED = 6;
		public const uint32 MD_SERVER_STATE_CONTINUING = 7;
		public const uint32 MD_SERVER_COMMAND_START = 1;
		public const uint32 MD_SERVER_COMMAND_STOP = 2;
		public const uint32 MD_SERVER_COMMAND_PAUSE = 3;
		public const uint32 MD_SERVER_COMMAND_CONTINUE = 4;
		public const uint32 MD_SERVER_SIZE_SMALL = 0;
		public const uint32 MD_SERVER_SIZE_MEDIUM = 1;
		public const uint32 MD_SERVER_SIZE_LARGE = 2;
		public const uint32 MD_SERVER_CONFIG_SSL_40 = 1;
		public const uint32 MD_SERVER_CONFIG_SSL_128 = 2;
		public const uint32 MD_SERVER_CONFIG_ALLOW_ENCRYPT = 4;
		public const uint32 MD_SERVER_CONFIG_AUTO_PW_SYNC = 8;
		public const uint32 MD_SCRIPTMAPFLAG_SCRIPT = 1;
		public const uint32 MD_SCRIPTMAPFLAG_CHECK_PATH_INFO = 4;
		public const uint32 MD_SCRIPTMAPFLAG_ALLOWED_ON_READ_DIR = 1;
		public const uint32 MD_AUTH_CHANGE_UNSECURE = 1;
		public const uint32 MD_AUTH_CHANGE_DISABLE = 2;
		public const uint32 MD_AUTH_ADVNOTIFY_DISABLE = 4;
		public const uint32 MD_NETLOGON_WKS_NONE = 0;
		public const uint32 MD_NETLOGON_WKS_IP = 1;
		public const uint32 MD_NETLOGON_WKS_DNS = 2;
		public const uint32 MD_ERROR_SUB400_INVALID_DESTINATION = 1;
		public const uint32 MD_ERROR_SUB400_INVALID_DEPTH = 2;
		public const uint32 MD_ERROR_SUB400_INVALID_IF = 3;
		public const uint32 MD_ERROR_SUB400_INVALID_OVERWRITE = 4;
		public const uint32 MD_ERROR_SUB400_INVALID_TRANSLATE = 5;
		public const uint32 MD_ERROR_SUB400_INVALID_REQUEST_BODY = 6;
		public const uint32 MD_ERROR_SUB400_INVALID_CONTENT_LENGTH = 7;
		public const uint32 MD_ERROR_SUB400_INVALID_TIMEOUT = 8;
		public const uint32 MD_ERROR_SUB400_INVALID_LOCK_TOKEN = 9;
		public const uint32 MD_ERROR_SUB400_INVALID_XFF_HEADER = 10;
		public const uint32 MD_ERROR_SUB400_INVALID_WEBSOCKET_REQUEST = 11;
		public const uint32 MD_ERROR_SUB401_LOGON = 1;
		public const uint32 MD_ERROR_SUB401_LOGON_CONFIG = 2;
		public const uint32 MD_ERROR_SUB401_LOGON_ACL = 3;
		public const uint32 MD_ERROR_SUB401_FILTER = 4;
		public const uint32 MD_ERROR_SUB401_APPLICATION = 5;
		public const uint32 MD_ERROR_SUB401_URLAUTH_POLICY = 7;
		public const uint32 MD_ERROR_SUB403_EXECUTE_ACCESS_DENIED = 1;
		public const uint32 MD_ERROR_SUB403_READ_ACCESS_DENIED = 2;
		public const uint32 MD_ERROR_SUB403_WRITE_ACCESS_DENIED = 3;
		public const uint32 MD_ERROR_SUB403_SSL_REQUIRED = 4;
		public const uint32 MD_ERROR_SUB403_SSL128_REQUIRED = 5;
		public const uint32 MD_ERROR_SUB403_ADDR_REJECT = 6;
		public const uint32 MD_ERROR_SUB403_CERT_REQUIRED = 7;
		public const uint32 MD_ERROR_SUB403_SITE_ACCESS_DENIED = 8;
		public const uint32 MD_ERROR_SUB403_TOO_MANY_USERS = 9;
		public const uint32 MD_ERROR_SUB403_INVALID_CNFG = 10;
		public const uint32 MD_ERROR_SUB403_PWD_CHANGE = 11;
		public const uint32 MD_ERROR_SUB403_MAPPER_DENY_ACCESS = 12;
		public const uint32 MD_ERROR_SUB403_CERT_REVOKED = 13;
		public const uint32 MD_ERROR_SUB403_DIR_LIST_DENIED = 14;
		public const uint32 MD_ERROR_SUB403_CAL_EXCEEDED = 15;
		public const uint32 MD_ERROR_SUB403_CERT_BAD = 16;
		public const uint32 MD_ERROR_SUB403_CERT_TIME_INVALID = 17;
		public const uint32 MD_ERROR_SUB403_APPPOOL_DENIED = 18;
		public const uint32 MD_ERROR_SUB403_INSUFFICIENT_PRIVILEGE_FOR_CGI = 19;
		public const uint32 MD_ERROR_SUB403_PASSPORT_LOGIN_FAILURE = 20;
		public const uint32 MD_ERROR_SUB403_SOURCE_ACCESS_DENIED = 21;
		public const uint32 MD_ERROR_SUB403_INFINITE_DEPTH_DENIED = 22;
		public const uint32 MD_ERROR_SUB403_LOCK_TOKEN_REQUIRED = 23;
		public const uint32 MD_ERROR_SUB403_VALIDATION_FAILURE = 24;
		public const uint32 MD_ERROR_SUB404_SITE_NOT_FOUND = 1;
		public const uint32 MD_ERROR_SUB404_DENIED_BY_POLICY = 2;
		public const uint32 MD_ERROR_SUB404_DENIED_BY_MIMEMAP = 3;
		public const uint32 MD_ERROR_SUB404_NO_HANDLER = 4;
		public const uint32 MD_ERROR_SUB404_URL_SEQUENCE_DENIED = 5;
		public const uint32 MD_ERROR_SUB404_VERB_DENIED = 6;
		public const uint32 MD_ERROR_SUB404_FILE_EXTENSION_DENIED = 7;
		public const uint32 MD_ERROR_SUB404_HIDDEN_SEGMENT = 8;
		public const uint32 MD_ERROR_SUB404_FILE_ATTRIBUTE_HIDDEN = 9;
		public const uint32 MD_ERROR_SUB404_URL_DOUBLE_ESCAPED = 11;
		public const uint32 MD_ERROR_SUB404_URL_HAS_HIGH_BIT_CHARS = 12;
		public const uint32 MD_ERROR_SUB404_URL_TOO_LONG = 14;
		public const uint32 MD_ERROR_SUB404_QUERY_STRING_TOO_LONG = 15;
		public const uint32 MD_ERROR_SUB404_STATICFILE_DAV = 16;
		public const uint32 MD_ERROR_SUB404_PRECONDITIONED_HANDLER = 17;
		public const uint32 MD_ERROR_SUB404_QUERY_STRING_SEQUENCE_DENIED = 18;
		public const uint32 MD_ERROR_SUB404_DENIED_BY_FILTERING_RULE = 19;
		public const uint32 MD_ERROR_SUB404_TOO_MANY_URL_SEGMENTS = 20;
		public const uint32 MD_ERROR_SUB413_CONTENT_LENGTH_TOO_LARGE = 1;
		public const uint32 MD_ERROR_SUB423_LOCK_TOKEN_SUBMITTED = 1;
		public const uint32 MD_ERROR_SUB423_NO_CONFLICTING_LOCK = 2;
		public const uint32 MD_ERROR_SUB500_UNC_ACCESS = 16;
		public const uint32 MD_ERROR_SUB500_URLAUTH_NO_STORE = 17;
		public const uint32 MD_ERROR_SUB500_URLAUTH_STORE_ERROR = 18;
		public const uint32 MD_ERROR_SUB500_BAD_METADATA = 19;
		public const uint32 MD_ERROR_SUB500_URLAUTH_NO_SCOPE = 20;
		public const uint32 MD_ERROR_SUB500_HANDLERS_MODULE = 21;
		public const uint32 MD_ERROR_SUB500_ASPNET_MODULES = 22;
		public const uint32 MD_ERROR_SUB500_ASPNET_HANDLERS = 23;
		public const uint32 MD_ERROR_SUB500_ASPNET_IMPERSONATION = 24;
		public const uint32 MD_ERROR_SUB502_TIMEOUT = 1;
		public const uint32 MD_ERROR_SUB502_PREMATURE_EXIT = 2;
		public const uint32 MD_ERROR_SUB502_ARR_CONNECTION_ERROR = 3;
		public const uint32 MD_ERROR_SUB502_ARR_NO_SERVER = 4;
		public const uint32 MD_ERROR_SUB503_CPU_LIMIT = 1;
		public const uint32 MD_ERROR_SUB503_APP_CONCURRENT = 2;
		public const uint32 MD_ERROR_SUB503_ASPNET_QUEUE_FULL = 3;
		public const uint32 MD_ERROR_SUB503_FASTCGI_QUEUE_FULL = 4;
		public const uint32 MD_ERROR_SUB503_CONNECTION_LIMIT = 5;
		public const uint32 MD_ACR_READ = 1;
		public const uint32 MD_ACR_WRITE = 2;
		public const uint32 MD_ACR_RESTRICTED_WRITE = 32;
		public const uint32 MD_ACR_UNSECURE_PROPS_READ = 128;
		public const uint32 MD_ACR_ENUM_KEYS = 8;
		public const uint32 MD_ACR_WRITE_DAC = 262144;
		public const uint32 MD_USER_ISOLATION_NONE = 0;
		public const uint32 MD_USER_ISOLATION_BASIC = 1;
		public const uint32 MD_USER_ISOLATION_AD = 2;
		public const uint32 MD_USER_ISOLATION_LAST = 2;
		public const Guid CLSID_IisServiceControl = .(0xe8fb8621, 0x588f, 0x11d2, 0x9d, 0x61, 0x00, 0xc0, 0x4f, 0x79, 0xc5, 0xfe);
		public const Guid LIBID_IISRSTALib = .(0xe8fb8614, 0x588f, 0x11d2, 0x9d, 0x61, 0x00, 0xc0, 0x4f, 0x79, 0xc5, 0xfe);
		public const Guid LIBID_WAMREGLib = .(0x29822aa8, 0xf302, 0x11d0, 0x99, 0x53, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0xc1);
		public const Guid CLSID_WamAdmin = .(0x61738644, 0xf196, 0x11d0, 0x99, 0x53, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0xc1);
		public const uint32 APPSTATUS_STOPPED = 0;
		public const uint32 APPSTATUS_RUNNING = 1;
		public const uint32 APPSTATUS_NOTDEFINED = 2;
		public const uint32 METADATA_MAX_NAME_LEN = 256;
		public const uint32 METADATA_PERMISSION_READ = 1;
		public const uint32 METADATA_PERMISSION_WRITE = 2;
		public const uint32 METADATA_NO_ATTRIBUTES = 0;
		public const uint32 METADATA_INHERIT = 1;
		public const uint32 METADATA_PARTIAL_PATH = 2;
		public const uint32 METADATA_SECURE = 4;
		public const uint32 METADATA_REFERENCE = 8;
		public const uint32 METADATA_VOLATILE = 16;
		public const uint32 METADATA_ISINHERITED = 32;
		public const uint32 METADATA_INSERT_PATH = 64;
		public const uint32 METADATA_LOCAL_MACHINE_ONLY = 128;
		public const uint32 METADATA_NON_SECURE_ONLY = 256;
		public const uint32 METADATA_DONT_EXPAND = 512;
		public const uint32 MD_BACKUP_OVERWRITE = 1;
		public const uint32 MD_BACKUP_SAVE_FIRST = 2;
		public const uint32 MD_BACKUP_FORCE_BACKUP = 4;
		public const uint32 MD_BACKUP_NEXT_VERSION = 4294967295;
		public const uint32 MD_BACKUP_HIGHEST_VERSION = 4294967294;
		public const uint32 MD_BACKUP_MAX_VERSION = 9999;
		public const uint32 MD_BACKUP_MAX_LEN = 100;
		public const uint32 MD_HISTORY_LATEST = 1;
		public const uint32 MD_EXPORT_INHERITED = 1;
		public const uint32 MD_EXPORT_NODE_ONLY = 2;
		public const uint32 MD_IMPORT_INHERITED = 1;
		public const uint32 MD_IMPORT_NODE_ONLY = 2;
		public const uint32 MD_IMPORT_MERGE = 4;
		public const uint32 METADATA_MASTER_ROOT_HANDLE = 0;
		public const uint32 MD_CHANGE_TYPE_DELETE_OBJECT = 1;
		public const uint32 MD_CHANGE_TYPE_ADD_OBJECT = 2;
		public const uint32 MD_CHANGE_TYPE_SET_DATA = 4;
		public const uint32 MD_CHANGE_TYPE_DELETE_DATA = 8;
		public const uint32 MD_CHANGE_TYPE_RENAME_OBJECT = 16;
		public const uint32 MD_CHANGE_TYPE_RESTORE = 32;
		public const uint32 MD_MAX_CHANGE_ENTRIES = 100;
		public const int32 MD_ERROR_NOT_INITIALIZED = -2146646016;
		public const int32 MD_ERROR_DATA_NOT_FOUND = -2146646015;
		public const int32 MD_ERROR_INVALID_VERSION = -2146646014;
		public const int32 MD_WARNING_PATH_NOT_FOUND = 837635;
		public const int32 MD_WARNING_DUP_NAME = 837636;
		public const int32 MD_WARNING_INVALID_DATA = 837637;
		public const int32 MD_ERROR_SECURE_CHANNEL_FAILURE = -2146646010;
		public const int32 MD_WARNING_PATH_NOT_INSERTED = 837639;
		public const int32 MD_ERROR_CANNOT_REMOVE_SECURE_ATTRIBUTE = -2146646008;
		public const int32 MD_WARNING_SAVE_FAILED = 837641;
		public const int32 MD_ERROR_IISAO_INVALID_SCHEMA = -2146646000;
		public const int32 MD_ERROR_READ_METABASE_FILE = -2146645991;
		public const int32 MD_ERROR_NO_SESSION_KEY = -2146645987;
		public const Guid LIBID_ASPTypeLibrary = .(0xd97a6da0, 0xa85c, 0x11cf, 0x83, 0xae, 0x00, 0xa0, 0xc9, 0x0c, 0x2b, 0xd8);
		public const Guid CLSID_Request = .(0x920c25d0, 0x25d9, 0x11d0, 0xa5, 0x5f, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x91);
		public const Guid CLSID_Response = .(0x46e19ba0, 0x25dd, 0x11d0, 0xa5, 0x5f, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x91);
		public const Guid CLSID_Session = .(0x509f8f20, 0x25de, 0x11d0, 0xa5, 0x5f, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x91);
		public const Guid CLSID_Server = .(0xa506d160, 0x25e0, 0x11d0, 0xa5, 0x5f, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x91);
		public const Guid CLSID_ScriptingContext = .(0xd97a6da0, 0xa868, 0x11cf, 0x83, 0xae, 0x11, 0xb0, 0xc9, 0x0c, 0x2b, 0xd8);
		public const uint32 HSE_VERSION_MAJOR = 8;
		public const uint32 HSE_VERSION_MINOR = 0;
		public const uint32 HSE_LOG_BUFFER_LEN = 80;
		public const uint32 HSE_MAX_EXT_DLL_NAME_LEN = 256;
		public const uint32 HSE_STATUS_SUCCESS = 1;
		public const uint32 HSE_STATUS_SUCCESS_AND_KEEP_CONN = 2;
		public const uint32 HSE_STATUS_PENDING = 3;
		public const uint32 HSE_STATUS_ERROR = 4;
		public const uint32 HSE_REQ_BASE = 0;
		public const uint32 HSE_REQ_SEND_URL_REDIRECT_RESP = 1;
		public const uint32 HSE_REQ_SEND_URL = 2;
		public const uint32 HSE_REQ_SEND_RESPONSE_HEADER = 3;
		public const uint32 HSE_REQ_DONE_WITH_SESSION = 4;
		public const uint32 HSE_REQ_END_RESERVED = 1000;
		public const uint32 HSE_REQ_MAP_URL_TO_PATH = 1001;
		public const uint32 HSE_REQ_GET_SSPI_INFO = 1002;
		public const uint32 HSE_APPEND_LOG_PARAMETER = 1003;
		public const uint32 HSE_REQ_IO_COMPLETION = 1005;
		public const uint32 HSE_REQ_TRANSMIT_FILE = 1006;
		public const uint32 HSE_REQ_REFRESH_ISAPI_ACL = 1007;
		public const uint32 HSE_REQ_IS_KEEP_CONN = 1008;
		public const uint32 HSE_REQ_ASYNC_READ_CLIENT = 1010;
		public const uint32 HSE_REQ_GET_IMPERSONATION_TOKEN = 1011;
		public const uint32 HSE_REQ_MAP_URL_TO_PATH_EX = 1012;
		public const uint32 HSE_REQ_ABORTIVE_CLOSE = 1014;
		public const uint32 HSE_REQ_GET_CERT_INFO_EX = 1015;
		public const uint32 HSE_REQ_SEND_RESPONSE_HEADER_EX = 1016;
		public const uint32 HSE_REQ_CLOSE_CONNECTION = 1017;
		public const uint32 HSE_REQ_IS_CONNECTED = 1018;
		public const uint32 HSE_REQ_MAP_UNICODE_URL_TO_PATH = 1023;
		public const uint32 HSE_REQ_MAP_UNICODE_URL_TO_PATH_EX = 1024;
		public const uint32 HSE_REQ_EXEC_UNICODE_URL = 1025;
		public const uint32 HSE_REQ_EXEC_URL = 1026;
		public const uint32 HSE_REQ_GET_EXEC_URL_STATUS = 1027;
		public const uint32 HSE_REQ_SEND_CUSTOM_ERROR = 1028;
		public const uint32 HSE_REQ_IS_IN_PROCESS = 1030;
		public const uint32 HSE_REQ_REPORT_UNHEALTHY = 1032;
		public const uint32 HSE_REQ_NORMALIZE_URL = 1033;
		public const uint32 HSE_REQ_VECTOR_SEND = 1037;
		public const uint32 HSE_REQ_GET_ANONYMOUS_TOKEN = 1038;
		public const uint32 HSE_REQ_GET_CACHE_INVALIDATION_CALLBACK = 1040;
		public const uint32 HSE_REQ_GET_UNICODE_ANONYMOUS_TOKEN = 1041;
		public const uint32 HSE_REQ_GET_TRACE_INFO = 1042;
		public const uint32 HSE_REQ_SET_FLUSH_FLAG = 1043;
		public const uint32 HSE_REQ_GET_TRACE_INFO_EX = 1044;
		public const uint32 HSE_REQ_RAISE_TRACE_EVENT = 1045;
		public const uint32 HSE_REQ_GET_CONFIG_OBJECT = 1046;
		public const uint32 HSE_REQ_GET_WORKER_PROCESS_SETTINGS = 1047;
		public const uint32 HSE_REQ_GET_PROTOCOL_MANAGER_CUSTOM_INTERFACE_CALLBACK = 1048;
		public const uint32 HSE_REQ_CANCEL_IO = 1049;
		public const uint32 HSE_REQ_GET_CHANNEL_BINDING_TOKEN = 1050;
		public const uint32 HSE_TERM_ADVISORY_UNLOAD = 1;
		public const uint32 HSE_TERM_MUST_UNLOAD = 2;
		public const uint32 HSE_URL_FLAGS_READ = 1;
		public const uint32 HSE_URL_FLAGS_WRITE = 2;
		public const uint32 HSE_URL_FLAGS_EXECUTE = 4;
		public const uint32 HSE_URL_FLAGS_SSL = 8;
		public const uint32 HSE_URL_FLAGS_DONT_CACHE = 16;
		public const uint32 HSE_URL_FLAGS_NEGO_CERT = 32;
		public const uint32 HSE_URL_FLAGS_REQUIRE_CERT = 64;
		public const uint32 HSE_URL_FLAGS_MAP_CERT = 128;
		public const uint32 HSE_URL_FLAGS_SSL128 = 256;
		public const uint32 HSE_URL_FLAGS_SCRIPT = 512;
		public const uint32 HSE_URL_FLAGS_MASK = 1023;
		public const uint32 HSE_EXEC_URL_NO_HEADERS = 2;
		public const uint32 HSE_EXEC_URL_IGNORE_CURRENT_INTERCEPTOR = 4;
		public const uint32 HSE_EXEC_URL_IGNORE_VALIDATION_AND_RANGE = 16;
		public const uint32 HSE_EXEC_URL_DISABLE_CUSTOM_ERROR = 32;
		public const uint32 HSE_EXEC_URL_SSI_CMD = 64;
		public const uint32 HSE_EXEC_URL_HTTP_CACHE_ELIGIBLE = 128;
		public const uint32 HSE_VECTOR_ELEMENT_TYPE_MEMORY_BUFFER = 0;
		public const uint32 HSE_VECTOR_ELEMENT_TYPE_FILE_HANDLE = 1;
		public const uint32 HSE_APP_FLAG_IN_PROCESS = 0;
		public const uint32 HSE_APP_FLAG_ISOLATED_OOP = 1;
		public const uint32 HSE_APP_FLAG_POOLED_OOP = 2;
		public const uint32 SF_MAX_USERNAME = 257;
		public const uint32 SF_MAX_PASSWORD = 257;
		public const uint32 SF_MAX_AUTH_TYPE = 33;
		public const uint32 SF_MAX_FILTER_DESC_LEN = 257;
		public const uint32 SF_DENIED_LOGON = 1;
		public const uint32 SF_DENIED_RESOURCE = 2;
		public const uint32 SF_DENIED_FILTER = 4;
		public const uint32 SF_DENIED_APPLICATION = 8;
		public const uint32 SF_DENIED_BY_CONFIG = 65536;
		public const uint32 SF_NOTIFY_SECURE_PORT = 1;
		public const uint32 SF_NOTIFY_NONSECURE_PORT = 2;
		public const uint32 SF_NOTIFY_READ_RAW_DATA = 32768;
		public const uint32 SF_NOTIFY_PREPROC_HEADERS = 16384;
		public const uint32 SF_NOTIFY_AUTHENTICATION = 8192;
		public const uint32 SF_NOTIFY_URL_MAP = 4096;
		public const uint32 SF_NOTIFY_ACCESS_DENIED = 2048;
		public const uint32 SF_NOTIFY_SEND_RESPONSE = 64;
		public const uint32 SF_NOTIFY_SEND_RAW_DATA = 1024;
		public const uint32 SF_NOTIFY_LOG = 512;
		public const uint32 SF_NOTIFY_END_OF_REQUEST = 128;
		public const uint32 SF_NOTIFY_END_OF_NET_SESSION = 256;
		public const uint32 SF_NOTIFY_AUTH_COMPLETE = 67108864;
		public const uint32 SF_NOTIFY_ORDER_HIGH = 524288;
		public const uint32 SF_NOTIFY_ORDER_MEDIUM = 262144;
		public const uint32 SF_NOTIFY_ORDER_LOW = 131072;
		public const uint32 SF_NOTIFY_ORDER_DEFAULT = 131072;
		public const uint32 DISPID_HTTPREQUEST_BASE = 1;
		public const uint32 DISPID_HTTPREQUEST_OPEN = 1;
		public const uint32 DISPID_HTTPREQUEST_SETREQUESTHEADER = 2;
		public const uint32 DISPID_HTTPREQUEST_GETRESPONSEHEADER = 3;
		public const uint32 DISPID_HTTPREQUEST_GETALLRESPONSEHEADERS = 4;
		public const uint32 DISPID_HTTPREQUEST_SEND = 5;
		public const uint32 DISPID_HTTPREQUEST_OPTION = 6;
		public const uint32 DISPID_HTTPREQUEST_STATUS = 7;
		public const uint32 DISPID_HTTPREQUEST_STATUSTEXT = 8;
		public const uint32 DISPID_HTTPREQUEST_RESPONSETEXT = 9;
		public const uint32 DISPID_HTTPREQUEST_RESPONSEBODY = 10;
		public const uint32 DISPID_HTTPREQUEST_RESPONSESTREAM = 11;
		public const uint32 DISPID_HTTPREQUEST_ABORT = 12;
		public const uint32 DISPID_HTTPREQUEST_SETPROXY = 13;
		public const uint32 DISPID_HTTPREQUEST_SETCREDENTIALS = 14;
		public const uint32 DISPID_HTTPREQUEST_WAITFORRESPONSE = 15;
		public const uint32 DISPID_HTTPREQUEST_SETTIMEOUTS = 16;
		public const uint32 DISPID_HTTPREQUEST_SETCLIENTCERTIFICATE = 17;
		public const uint32 DISPID_HTTPREQUEST_SETAUTOLOGONPOLICY = 18;
		public const uint32 HTTP_TRACE_EVENT_FLAG_STATIC_DESCRIPTIVE_FIELDS = 1;
		public const uint32 HTTP_TRACE_LEVEL_START = 6;
		public const uint32 HTTP_TRACE_LEVEL_END = 7;
		public const Guid GUID_IIS_ALL_TRACE_PROVIDERS = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid GUID_IIS_WWW_SERVER_TRACE_PROVIDER = .(0x3a2a4e84, 0x4c21, 0x4981, 0xae, 0x10, 0x3f, 0xda, 0x0d, 0x9b, 0x0f, 0x83);
		public const Guid GUID_IIS_WWW_SERVER_V2_TRACE_PROVIDER = .(0xde4649c9, 0x15e8, 0x4fea, 0x9d, 0x85, 0x1c, 0xdd, 0xa5, 0x20, 0xc3, 0x34);
		public const Guid GUID_IIS_ASPNET_TRACE_PROVIDER = .(0xaff081fe, 0x0247, 0x4275, 0x9c, 0x4e, 0x02, 0x1f, 0x3d, 0xc1, 0xda, 0x35);
		public const Guid GUID_IIS_ASP_TRACE_TRACE_PROVIDER = .(0x06b94d9a, 0xb15e, 0x456e, 0xa4, 0xef, 0x37, 0xc9, 0x84, 0xa2, 0xcb, 0x4b);
		public const Guid GUID_IIS_WWW_GLOBAL_TRACE_PROVIDER = .(0xd55d3bc9, 0xcba9, 0x44df, 0x82, 0x7e, 0x13, 0x2d, 0x3a, 0x45, 0x96, 0xc2);
		public const Guid GUID_IIS_ISAPI_TRACE_PROVIDER = .(0xa1c2040e, 0x8840, 0x4c31, 0xba, 0x11, 0x98, 0x71, 0x03, 0x1a, 0x19, 0xea);
		
		// --- Enums ---
		
		public enum FTP_ACCESS : int32
		{
			NONE = 0,
			READ = 1,
			WRITE = 2,
			READ_WRITE = 3,
		}
		public enum FTP_PROCESS_STATUS : int32
		{
			CONTINUE = 0,
			CLOSE_SESSION = 1,
			TERMINATE_SESSION = 2,
			REJECT_COMMAND = 3,
		}
		public enum METADATATYPES : int32
		{
			ALL_METADATA = 0,
			DWORD_METADATA = 1,
			STRING_METADATA = 2,
			BINARY_METADATA = 3,
			EXPANDSZ_METADATA = 4,
			MULTISZ_METADATA = 5,
			INVALID_END_METADATA = 6,
		}
		public enum SF_REQ_TYPE : int32
		{
			SEND_RESPONSE_HEADER = 0,
			ADD_HEADERS_ON_DENIAL = 1,
			SET_NEXT_READ_SIZE = 2,
			SET_PROXY_INFO = 3,
			GET_CONNID = 4,
			SET_CERTIFICATE_INFO = 5,
			GET_PROPERTY = 6,
			NORMALIZE_URL = 7,
			DISABLE_NOTIFICATIONS = 8,
		}
		public enum SF_PROPERTY_IIS : int32
		{
			SSL_CTXT = 0,
			INSTANCE_NUM_ID = 1,
		}
		public enum SF_STATUS_TYPE : int32
		{
			FINISHED = 134217728,
			FINISHED_KEEP_CONN = 134217729,
			NEXT_NOTIFICATION = 134217730,
			HANDLED_NOTIFICATION = 134217731,
			ERROR = 134217732,
			READ_NEXT = 134217733,
		}
		public enum HTTP_TRACE_TYPE : int32
		{
			BYTE = 17,
			USHORT = 18,
			ULONG = 19,
			ULONGLONG = 21,
			CHAR = 16,
			SHORT = 2,
			LONG = 3,
			LONGLONG = 20,
			LPCWSTR = 31,
			LPCSTR = 30,
			LPCGUID = 72,
			BOOL = 11,
		}
		
		// --- Function Pointers ---
		
		public function void PFN_HSE_IO_COMPLETION(out EXTENSION_CONTROL_BLOCK pECB, void* pContext, uint32 cbIO, uint32 dwError);
		public function HRESULT PFN_HSE_CACHE_INVALIDATION_CALLBACK(PWSTR pszUrl);
		public function HRESULT PFN_HSE_GET_PROTOCOL_MANAGER_CUSTOM_INTERFACE_CALLBACK(PWSTR pszProtocolManagerDll, PWSTR pszProtocolManagerDllInitFunction, uint32 dwCustomInterfaceId, void** ppCustomInterface);
		public function BOOL PFN_GETEXTENSIONVERSION(out HSE_VERSION_INFO pVer);
		public function uint32 PFN_HTTPEXTENSIONPROC(out EXTENSION_CONTROL_BLOCK pECB);
		public function BOOL PFN_TERMINATEEXTENSION(uint32 dwFlags);
		public function HRESULT PFN_WEB_CORE_SET_METADATA_DLL_ENTRY(PWSTR pszMetadataType, PWSTR pszValue);
		public function HRESULT PFN_WEB_CORE_ACTIVATE(PWSTR pszAppHostConfigFile, PWSTR pszRootWebConfigFile, PWSTR pszInstanceName);
		public function HRESULT PFN_WEB_CORE_SHUTDOWN(uint32 fImmediate);
		
		// --- Structs ---
		
		[CRepr]
		public struct CONFIGURATION_ENTRY
		{
			public BSTR bstrKey;
			public BSTR bstrValue;
		}
		[CRepr]
		public struct LOGGING_PARAMETERS
		{
			public PWSTR pszSessionId;
			public PWSTR pszSiteName;
			public PWSTR pszUserName;
			public PWSTR pszHostName;
			public PWSTR pszRemoteIpAddress;
			public uint32 dwRemoteIpPort;
			public PWSTR pszLocalIpAddress;
			public uint32 dwLocalIpPort;
			public uint64 BytesSent;
			public uint64 BytesReceived;
			public PWSTR pszCommand;
			public PWSTR pszCommandParameters;
			public PWSTR pszFullPath;
			public uint32 dwElapsedMilliseconds;
			public uint32 FtpStatus;
			public uint32 FtpSubStatus;
			public HRESULT hrStatus;
			public PWSTR pszInformation;
		}
		[CRepr]
		public struct PRE_PROCESS_PARAMETERS
		{
			public PWSTR pszSessionId;
			public PWSTR pszSiteName;
			public PWSTR pszUserName;
			public PWSTR pszHostName;
			public PWSTR pszRemoteIpAddress;
			public uint32 dwRemoteIpPort;
			public PWSTR pszLocalIpAddress;
			public uint32 dwLocalIpPort;
			public PWSTR pszCommand;
			public PWSTR pszCommandParameters;
			public FILETIME SessionStartTime;
			public uint64 BytesSentPerSession;
			public uint64 BytesReceivedPerSession;
		}
		[CRepr]
		public struct POST_PROCESS_PARAMETERS
		{
			public PWSTR pszSessionId;
			public PWSTR pszSiteName;
			public PWSTR pszUserName;
			public PWSTR pszHostName;
			public PWSTR pszRemoteIpAddress;
			public uint32 dwRemoteIpPort;
			public PWSTR pszLocalIpAddress;
			public uint32 dwLocalIpPort;
			public uint64 BytesSent;
			public uint64 BytesReceived;
			public PWSTR pszCommand;
			public PWSTR pszCommandParameters;
			public PWSTR pszFullPath;
			public PWSTR pszPhysicalPath;
			public uint32 FtpStatus;
			public uint32 FtpSubStatus;
			public HRESULT hrStatus;
			public FILETIME SessionStartTime;
			public uint64 BytesSentPerSession;
			public uint64 BytesReceivedPerSession;
		}
		[CRepr]
		public struct METADATA_RECORD
		{
			public uint32 dwMDIdentifier;
			public uint32 dwMDAttributes;
			public uint32 dwMDUserType;
			public uint32 dwMDDataType;
			public uint32 dwMDDataLen;
			public uint8* pbMDData;
			public uint32 dwMDDataTag;
		}
		[CRepr]
		public struct METADATA_GETALL_RECORD
		{
			public uint32 dwMDIdentifier;
			public uint32 dwMDAttributes;
			public uint32 dwMDUserType;
			public uint32 dwMDDataType;
			public uint32 dwMDDataLen;
			public uint32 dwMDDataOffset;
			public uint32 dwMDDataTag;
		}
		[CRepr]
		public struct METADATA_GETALL_INTERNAL_RECORD
		{
			public uint32 dwMDIdentifier;
			public uint32 dwMDAttributes;
			public uint32 dwMDUserType;
			public uint32 dwMDDataType;
			public uint32 dwMDDataLen;
			public _Anonymous_e__Union Anonymous;
			public uint32 dwMDDataTag;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint dwMDDataOffset;
				public uint8* pbMDData;
			}
		}
		[CRepr]
		public struct METADATA_HANDLE_INFO
		{
			public uint32 dwMDPermissions;
			public uint32 dwMDSystemChangeNumber;
		}
		[CRepr]
		public struct MD_CHANGE_OBJECT_W
		{
			public PWSTR pszMDPath;
			public uint32 dwMDChangeType;
			public uint32 dwMDNumDataIDs;
			public uint32* pdwMDDataIDs;
		}
		[CRepr]
		public struct _IIS_CRYPTO_BLOB {}
		[CRepr]
		public struct HSE_VERSION_INFO
		{
			public uint32 dwExtensionVersion;
			public CHAR[256] lpszExtensionDesc;
		}
		[CRepr]
		public struct EXTENSION_CONTROL_BLOCK
		{
			public uint32 cbSize;
			public uint32 dwVersion;
			public void* ConnID;
			public uint32 dwHttpStatusCode;
			public CHAR[80] lpszLogData;
			public PSTR lpszMethod;
			public PSTR lpszQueryString;
			public PSTR lpszPathInfo;
			public PSTR lpszPathTranslated;
			public uint32 cbTotalBytes;
			public uint32 cbAvailable;
			public uint8* lpbData;
			public PSTR lpszContentType;
			public int GetServerVariable;
			public int WriteClient;
			public int ReadClient;
			public int ServerSupportFunction;
		}
		[CRepr]
		public struct HSE_URL_MAPEX_INFO
		{
			public CHAR[260] lpszPath;
			public uint32 dwFlags;
			public uint32 cchMatchingPath;
			public uint32 cchMatchingURL;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct HSE_UNICODE_URL_MAPEX_INFO
		{
			public char16[260] lpszPath;
			public uint32 dwFlags;
			public uint32 cchMatchingPath;
			public uint32 cchMatchingURL;
		}
		[CRepr]
		public struct HSE_TF_INFO
		{
			public PFN_HSE_IO_COMPLETION pfnHseIO;
			public void* pContext;
			public HANDLE hFile;
			public PSTR pszStatusCode;
			public uint32 BytesToWrite;
			public uint32 Offset;
			public void* pHead;
			public uint32 HeadLength;
			public void* pTail;
			public uint32 TailLength;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct HSE_SEND_HEADER_EX_INFO
		{
			public PSTR pszStatus;
			public PSTR pszHeader;
			public uint32 cchStatus;
			public uint32 cchHeader;
			public BOOL fKeepConn;
		}
		[CRepr]
		public struct HSE_EXEC_URL_USER_INFO
		{
			public HANDLE hImpersonationToken;
			public PSTR pszCustomUserName;
			public PSTR pszCustomAuthType;
		}
		[CRepr]
		public struct HSE_EXEC_URL_ENTITY_INFO
		{
			public uint32 cbAvailable;
			public void* lpbData;
		}
		[CRepr]
		public struct HSE_EXEC_URL_STATUS
		{
			public uint16 uHttpStatusCode;
			public uint16 uHttpSubStatus;
			public uint32 dwWin32Error;
		}
		[CRepr]
		public struct HSE_EXEC_URL_INFO
		{
			public PSTR pszUrl;
			public PSTR pszMethod;
			public PSTR pszChildHeaders;
			public HSE_EXEC_URL_USER_INFO* pUserInfo;
			public HSE_EXEC_URL_ENTITY_INFO* pEntity;
			public uint32 dwExecUrlFlags;
		}
		[CRepr]
		public struct HSE_EXEC_UNICODE_URL_USER_INFO
		{
			public HANDLE hImpersonationToken;
			public PWSTR pszCustomUserName;
			public PSTR pszCustomAuthType;
		}
		[CRepr]
		public struct HSE_EXEC_UNICODE_URL_INFO
		{
			public PWSTR pszUrl;
			public PSTR pszMethod;
			public PSTR pszChildHeaders;
			public HSE_EXEC_UNICODE_URL_USER_INFO* pUserInfo;
			public HSE_EXEC_URL_ENTITY_INFO* pEntity;
			public uint32 dwExecUrlFlags;
		}
		[CRepr]
		public struct HSE_CUSTOM_ERROR_INFO
		{
			public PSTR pszStatus;
			public uint16 uHttpSubError;
			public BOOL fAsync;
		}
		[CRepr]
		public struct HSE_VECTOR_ELEMENT
		{
			public uint32 ElementType;
			public void* pvContext;
			public uint64 cbOffset;
			public uint64 cbSize;
		}
		[CRepr]
		public struct HSE_RESPONSE_VECTOR
		{
			public uint32 dwFlags;
			public PSTR pszStatus;
			public PSTR pszHeaders;
			public uint32 nElementCount;
			public HSE_VECTOR_ELEMENT* lpElementArray;
		}
		[CRepr]
		public struct CERT_CONTEXT_EX
		{
			public CERT_CONTEXT CertContext;
			public uint32 cbAllocated;
			public uint32 dwCertificateFlags;
		}
		[CRepr]
		public struct HSE_TRACE_INFO
		{
			public BOOL fTraceRequest;
			public uint8[16] TraceContextId;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct HTTP_FILTER_CONTEXT
		{
			public uint32 cbSize;
			public uint32 Revision;
			public void* ServerContext;
			public uint32 ulReserved;
			public BOOL fIsSecurePort;
			public void* pFilterContext;
			public int GetServerVariable;
			public int AddResponseHeaders;
			public int WriteClient;
			public int AllocMem;
			public int ServerSupportFunction;
		}
		[CRepr]
		public struct HTTP_FILTER_RAW_DATA
		{
			public void* pvInData;
			public uint32 cbInData;
			public uint32 cbInBuffer;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct HTTP_FILTER_PREPROC_HEADERS
		{
			public int GetHeader;
			public int SetHeader;
			public int AddHeader;
			public uint32 HttpStatus;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct HTTP_FILTER_AUTHENT
		{
			public PSTR pszUser;
			public uint32 cbUserBuff;
			public PSTR pszPassword;
			public uint32 cbPasswordBuff;
		}
		[CRepr]
		public struct HTTP_FILTER_URL_MAP
		{
			public PSTR pszURL;
			public PSTR pszPhysicalPath;
			public uint32 cbPathBuff;
		}
		[CRepr]
		public struct HTTP_FILTER_URL_MAP_EX
		{
			public PSTR pszURL;
			public PSTR pszPhysicalPath;
			public uint32 cbPathBuff;
			public uint32 dwFlags;
			public uint32 cchMatchingPath;
			public uint32 cchMatchingURL;
			public PSTR pszScriptMapEntry;
		}
		[CRepr]
		public struct HTTP_FILTER_ACCESS_DENIED
		{
			public PSTR pszURL;
			public PSTR pszPhysicalPath;
			public uint32 dwReason;
		}
		[CRepr]
		public struct HTTP_FILTER_LOG
		{
			public PSTR pszClientHostName;
			public PSTR pszClientUserName;
			public PSTR pszServerName;
			public PSTR pszOperation;
			public PSTR pszTarget;
			public PSTR pszParameters;
			public uint32 dwHttpStatus;
			public uint32 dwWin32Status;
			public uint32 dwBytesSent;
			public uint32 dwBytesRecvd;
			public uint32 msTimeForProcessing;
		}
		[CRepr]
		public struct HTTP_FILTER_AUTH_COMPLETE_INFO
		{
			public int GetHeader;
			public int SetHeader;
			public int AddHeader;
			public int GetUserToken;
			public uint32 HttpStatus;
			public BOOL fResetAuth;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct HTTP_FILTER_VERSION
		{
			public uint32 dwServerFilterVersion;
			public uint32 dwFilterVersion;
			public CHAR[257] lpszFilterDesc;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct HTTP_TRACE_EVENT
		{
			public Guid* pProviderGuid;
			public uint32 dwArea;
			public Guid* pAreaGuid;
			public uint32 dwEvent;
			public PWSTR pszEventName;
			public uint32 dwEventVersion;
			public uint32 dwVerbosity;
			public Guid* pActivityGuid;
			public Guid* pRelatedActivityGuid;
			public uint32 dwTimeStamp;
			public uint32 dwFlags;
			public uint32 cEventItems;
			public HTTP_TRACE_EVENT_ITEM* pEventItems;
		}
		[CRepr]
		public struct HTTP_TRACE_EVENT_ITEM
		{
			public PWSTR pszName;
			public HTTP_TRACE_TYPE dwDataType;
			public uint8* pbData;
			public uint32 cbData;
			public PWSTR pszDataDescription;
		}
		[CRepr]
		public struct HTTP_TRACE_CONFIGURATION
		{
			public Guid* pProviderGuid;
			public uint32 dwAreas;
			public uint32 dwVerbosity;
			public BOOL fProviderEnabled;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FtpProvider = .(0x70bdc667, 0x33b2, 0x45f0, 0xac, 0x52, 0xc3, 0xca, 0x46, 0xf7, 0xa6, 0x56);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFtpProviderConstruct : IUnknown
		{
			public const new Guid IID = .(0x4d1a3f7b, 0x412d, 0x447c, 0xb1, 0x99, 0x64, 0xf9, 0x67, 0xe9, 0xa2, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Construct(ref SAFEARRAY configurationEntries) mut => VT.Construct(ref this, ref configurationEntries);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpProviderConstruct self, ref SAFEARRAY configurationEntries) Construct;
			}
		}
		[CRepr]
		public struct IFtpAuthenticationProvider : IUnknown
		{
			public const new Guid IID = .(0x4659f95c, 0xd5a8, 0x4707, 0xb2, 0xfc, 0x6f, 0xd5, 0x79, 0x42, 0x46, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthenticateUser(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszPassword, PWSTR* ppszCanonicalUserName, out BOOL pfAuthenticated) mut => VT.AuthenticateUser(ref this, pszSessionId, pszSiteName, pszUserName, pszPassword, ppszCanonicalUserName, out pfAuthenticated);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpAuthenticationProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszPassword, PWSTR* ppszCanonicalUserName, out BOOL pfAuthenticated) AuthenticateUser;
			}
		}
		[CRepr]
		public struct AsyncIFtpAuthenticationProvider : IUnknown
		{
			public const new Guid IID = .(0xc24efb65, 0x9f3e, 0x4996, 0x8f, 0xb1, 0xce, 0x16, 0x69, 0x16, 0xba, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_AuthenticateUser(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszPassword) mut => VT.Begin_AuthenticateUser(ref this, pszSessionId, pszSiteName, pszUserName, pszPassword);
			public HRESULT Finish_AuthenticateUser(PWSTR* ppszCanonicalUserName, out BOOL pfAuthenticated) mut => VT.Finish_AuthenticateUser(ref this, ppszCanonicalUserName, out pfAuthenticated);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpAuthenticationProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszPassword) Begin_AuthenticateUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpAuthenticationProvider self, PWSTR* ppszCanonicalUserName, out BOOL pfAuthenticated) Finish_AuthenticateUser;
			}
		}
		[CRepr]
		public struct IFtpRoleProvider : IUnknown
		{
			public const new Guid IID = .(0x909c850d, 0x8ca0, 0x4674, 0x96, 0xb8, 0xcc, 0x29, 0x41, 0x53, 0x57, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsUserInRole(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszRole, out BOOL pfIsInRole) mut => VT.IsUserInRole(ref this, pszSessionId, pszSiteName, pszUserName, pszRole, out pfIsInRole);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpRoleProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszRole, out BOOL pfIsInRole) IsUserInRole;
			}
		}
		[CRepr]
		public struct AsyncIFtpRoleProvider : IUnknown
		{
			public const new Guid IID = .(0x3e83bf99, 0x70ec, 0x41ca, 0x84, 0xb6, 0xac, 0xa7, 0xc7, 0xa6, 0x2c, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_IsUserInRole(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszRole) mut => VT.Begin_IsUserInRole(ref this, pszSessionId, pszSiteName, pszUserName, pszRole);
			public HRESULT Finish_IsUserInRole(out BOOL pfIsInRole) mut => VT.Finish_IsUserInRole(ref this, out pfIsInRole);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpRoleProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR pszRole) Begin_IsUserInRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpRoleProvider self, out BOOL pfIsInRole) Finish_IsUserInRole;
			}
		}
		[CRepr]
		public struct IFtpHomeDirectoryProvider : IUnknown
		{
			public const new Guid IID = .(0x0933b392, 0x18dd, 0x4097, 0x8b, 0x9c, 0x83, 0x32, 0x5c, 0x35, 0xd9, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserHomeDirectoryData(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR* ppszHomeDirectoryData) mut => VT.GetUserHomeDirectoryData(ref this, pszSessionId, pszSiteName, pszUserName, ppszHomeDirectoryData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpHomeDirectoryProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName, PWSTR* ppszHomeDirectoryData) GetUserHomeDirectoryData;
			}
		}
		[CRepr]
		public struct AsyncIFtpHomeDirectoryProvider : IUnknown
		{
			public const new Guid IID = .(0x73f81638, 0x6295, 0x42bd, 0xa2, 0xbe, 0x4a, 0x65, 0x7f, 0x7c, 0x47, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetUserHomeDirectoryData(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName) mut => VT.Begin_GetUserHomeDirectoryData(ref this, pszSessionId, pszSiteName, pszUserName);
			public HRESULT Finish_GetUserHomeDirectoryData(PWSTR* ppszHomeDirectoryData) mut => VT.Finish_GetUserHomeDirectoryData(ref this, ppszHomeDirectoryData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpHomeDirectoryProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszUserName) Begin_GetUserHomeDirectoryData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpHomeDirectoryProvider self, PWSTR* ppszHomeDirectoryData) Finish_GetUserHomeDirectoryData;
			}
		}
		[CRepr]
		public struct IFtpLogProvider : IUnknown
		{
			public const new Guid IID = .(0xa18a94cc, 0x8299, 0x4408, 0x81, 0x6c, 0x7c, 0x3b, 0xac, 0xa1, 0xa4, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Log(in LOGGING_PARAMETERS pLoggingParameters) mut => VT.Log(ref this, pLoggingParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpLogProvider self, in LOGGING_PARAMETERS pLoggingParameters) Log;
			}
		}
		[CRepr]
		public struct AsyncIFtpLogProvider : IUnknown
		{
			public const new Guid IID = .(0x00a0ae46, 0x2498, 0x48b2, 0x95, 0xe6, 0xdf, 0x67, 0x8e, 0xd7, 0xd4, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Log(in LOGGING_PARAMETERS pLoggingParameters) mut => VT.Begin_Log(ref this, pLoggingParameters);
			public HRESULT Finish_Log() mut => VT.Finish_Log(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpLogProvider self, in LOGGING_PARAMETERS pLoggingParameters) Begin_Log;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpLogProvider self) Finish_Log;
			}
		}
		[CRepr]
		public struct IFtpAuthorizationProvider : IUnknown
		{
			public const new Guid IID = .(0xa50ae7a1, 0xa35a, 0x42b4, 0xa4, 0xf3, 0xf4, 0xf7, 0x05, 0x7a, 0x05, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserAccessPermission(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszVirtualPath, PWSTR pszUserName, out FTP_ACCESS pFtpAccess) mut => VT.GetUserAccessPermission(ref this, pszSessionId, pszSiteName, pszVirtualPath, pszUserName, out pFtpAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpAuthorizationProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszVirtualPath, PWSTR pszUserName, out FTP_ACCESS pFtpAccess) GetUserAccessPermission;
			}
		}
		[CRepr]
		public struct AsyncIFtpAuthorizationProvider : IUnknown
		{
			public const new Guid IID = .(0x860dc339, 0x07e5, 0x4a5c, 0x9c, 0x61, 0x88, 0x20, 0xce, 0xa0, 0x12, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetUserAccessPermission(PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszVirtualPath, PWSTR pszUserName) mut => VT.Begin_GetUserAccessPermission(ref this, pszSessionId, pszSiteName, pszVirtualPath, pszUserName);
			public HRESULT Finish_GetUserAccessPermission(out FTP_ACCESS pFtpAccess) mut => VT.Finish_GetUserAccessPermission(ref this, out pFtpAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpAuthorizationProvider self, PWSTR pszSessionId, PWSTR pszSiteName, PWSTR pszVirtualPath, PWSTR pszUserName) Begin_GetUserAccessPermission;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpAuthorizationProvider self, out FTP_ACCESS pFtpAccess) Finish_GetUserAccessPermission;
			}
		}
		[CRepr]
		public struct IFtpPreprocessProvider : IUnknown
		{
			public const new Guid IID = .(0xa3c19b60, 0x5a28, 0x471a, 0x8f, 0x93, 0xab, 0x30, 0x41, 0x1c, 0xee, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandlePreprocess(in PRE_PROCESS_PARAMETERS pPreProcessParameters, out FTP_PROCESS_STATUS pFtpProcessStatus) mut => VT.HandlePreprocess(ref this, pPreProcessParameters, out pFtpProcessStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpPreprocessProvider self, in PRE_PROCESS_PARAMETERS pPreProcessParameters, out FTP_PROCESS_STATUS pFtpProcessStatus) HandlePreprocess;
			}
		}
		[CRepr]
		public struct AsyncIFtpPreprocessProvider : IUnknown
		{
			public const new Guid IID = .(0x6ff5fd8f, 0xfd8e, 0x48b1, 0xa3, 0xe0, 0xbf, 0x70, 0x73, 0xdb, 0x4d, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_HandlePreprocess(in PRE_PROCESS_PARAMETERS pPreProcessParameters) mut => VT.Begin_HandlePreprocess(ref this, pPreProcessParameters);
			public HRESULT Finish_HandlePreprocess(out FTP_PROCESS_STATUS pFtpProcessStatus) mut => VT.Finish_HandlePreprocess(ref this, out pFtpProcessStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpPreprocessProvider self, in PRE_PROCESS_PARAMETERS pPreProcessParameters) Begin_HandlePreprocess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpPreprocessProvider self, out FTP_PROCESS_STATUS pFtpProcessStatus) Finish_HandlePreprocess;
			}
		}
		[CRepr]
		public struct IFtpPostprocessProvider : IUnknown
		{
			public const new Guid IID = .(0x4522cbc6, 0x16cd, 0x49ad, 0x86, 0x53, 0x9a, 0x2c, 0x57, 0x9e, 0x42, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandlePostprocess(in POST_PROCESS_PARAMETERS pPostProcessParameters, out FTP_PROCESS_STATUS pFtpProcessStatus) mut => VT.HandlePostprocess(ref this, pPostProcessParameters, out pFtpProcessStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFtpPostprocessProvider self, in POST_PROCESS_PARAMETERS pPostProcessParameters, out FTP_PROCESS_STATUS pFtpProcessStatus) HandlePostprocess;
			}
		}
		[CRepr]
		public struct AsyncIFtpPostprocessProvider : IUnknown
		{
			public const new Guid IID = .(0xa16b2542, 0x9694, 0x4eb1, 0xa5, 0x64, 0x6c, 0x2e, 0x91, 0xfd, 0xc1, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_HandlePostprocess(in POST_PROCESS_PARAMETERS pPostProcessParameters) mut => VT.Begin_HandlePostprocess(ref this, pPostProcessParameters);
			public HRESULT Finish_HandlePostprocess(out FTP_PROCESS_STATUS pFtpProcessStatus) mut => VT.Finish_HandlePostprocess(ref this, out pFtpProcessStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpPostprocessProvider self, in POST_PROCESS_PARAMETERS pPostProcessParameters) Begin_HandlePostprocess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIFtpPostprocessProvider self, out FTP_PROCESS_STATUS pFtpProcessStatus) Finish_HandlePostprocess;
			}
		}
		[CRepr]
		public struct IADMEXT : IUnknown
		{
			public const new Guid IID = .(0x51dfe970, 0xf6f2, 0x11d0, 0xb9, 0xbd, 0x00, 0xa0, 0xc9, 0x22, 0xe7, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut => VT.Initialize(ref this);
			public HRESULT EnumDcomCLSIDs(out Guid pclsidDcom, uint32 dwEnumIndex) mut => VT.EnumDcomCLSIDs(ref this, out pclsidDcom, dwEnumIndex);
			public HRESULT Terminate() mut => VT.Terminate(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADMEXT self) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADMEXT self, out Guid pclsidDcom, uint32 dwEnumIndex) EnumDcomCLSIDs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADMEXT self) Terminate;
			}
		}
		[CRepr]
		public struct IMSAdminBaseW : IUnknown
		{
			public const new Guid IID = .(0x70b51430, 0xb6ca, 0x11d0, 0xb9, 0xb9, 0x00, 0xa0, 0xc9, 0x22, 0xe7, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddKey(uint32 hMDHandle, PWSTR pszMDPath) mut => VT.AddKey(ref this, hMDHandle, pszMDPath);
			public HRESULT DeleteKey(uint32 hMDHandle, PWSTR pszMDPath) mut => VT.DeleteKey(ref this, hMDHandle, pszMDPath);
			public HRESULT DeleteChildKeys(uint32 hMDHandle, PWSTR pszMDPath) mut => VT.DeleteChildKeys(ref this, hMDHandle, pszMDPath);
			public HRESULT EnumKeys(uint32 hMDHandle, PWSTR pszMDPath, char16* pszMDName, uint32 dwMDEnumObjectIndex) mut => VT.EnumKeys(ref this, hMDHandle, pszMDPath, pszMDName, dwMDEnumObjectIndex);
			public HRESULT CopyKey(uint32 hMDSourceHandle, PWSTR pszMDSourcePath, uint32 hMDDestHandle, PWSTR pszMDDestPath, BOOL bMDOverwriteFlag, BOOL bMDCopyFlag) mut => VT.CopyKey(ref this, hMDSourceHandle, pszMDSourcePath, hMDDestHandle, pszMDDestPath, bMDOverwriteFlag, bMDCopyFlag);
			public HRESULT RenameKey(uint32 hMDHandle, PWSTR pszMDPath, PWSTR pszMDNewName) mut => VT.RenameKey(ref this, hMDHandle, pszMDPath, pszMDNewName);
			public HRESULT SetData(uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData) mut => VT.SetData(ref this, hMDHandle, pszMDPath, out pmdrMDData);
			public HRESULT GetData(uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData, out uint32 pdwMDRequiredDataLen) mut => VT.GetData(ref this, hMDHandle, pszMDPath, out pmdrMDData, out pdwMDRequiredDataLen);
			public HRESULT DeleteData(uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDIdentifier, uint32 dwMDDataType) mut => VT.DeleteData(ref this, hMDHandle, pszMDPath, dwMDIdentifier, dwMDDataType);
			public HRESULT EnumData(uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData, uint32 dwMDEnumDataIndex, out uint32 pdwMDRequiredDataLen) mut => VT.EnumData(ref this, hMDHandle, pszMDPath, out pmdrMDData, dwMDEnumDataIndex, out pdwMDRequiredDataLen);
			public HRESULT GetAllData(uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDAttributes, uint32 dwMDUserType, uint32 dwMDDataType, out uint32 pdwMDNumDataEntries, out uint32 pdwMDDataSetNumber, uint32 dwMDBufferSize, out uint8 pbMDBuffer, out uint32 pdwMDRequiredBufferSize) mut => VT.GetAllData(ref this, hMDHandle, pszMDPath, dwMDAttributes, dwMDUserType, dwMDDataType, out pdwMDNumDataEntries, out pdwMDDataSetNumber, dwMDBufferSize, out pbMDBuffer, out pdwMDRequiredBufferSize);
			public HRESULT DeleteAllData(uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDUserType, uint32 dwMDDataType) mut => VT.DeleteAllData(ref this, hMDHandle, pszMDPath, dwMDUserType, dwMDDataType);
			public HRESULT CopyData(uint32 hMDSourceHandle, PWSTR pszMDSourcePath, uint32 hMDDestHandle, PWSTR pszMDDestPath, uint32 dwMDAttributes, uint32 dwMDUserType, uint32 dwMDDataType, BOOL bMDCopyFlag) mut => VT.CopyData(ref this, hMDSourceHandle, pszMDSourcePath, hMDDestHandle, pszMDDestPath, dwMDAttributes, dwMDUserType, dwMDDataType, bMDCopyFlag);
			public HRESULT GetDataPaths(uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDIdentifier, uint32 dwMDDataType, uint32 dwMDBufferSize, char16* pszBuffer, out uint32 pdwMDRequiredBufferSize) mut => VT.GetDataPaths(ref this, hMDHandle, pszMDPath, dwMDIdentifier, dwMDDataType, dwMDBufferSize, pszBuffer, out pdwMDRequiredBufferSize);
			public HRESULT OpenKey(uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDAccessRequested, uint32 dwMDTimeOut, out uint32 phMDNewHandle) mut => VT.OpenKey(ref this, hMDHandle, pszMDPath, dwMDAccessRequested, dwMDTimeOut, out phMDNewHandle);
			public HRESULT CloseKey(uint32 hMDHandle) mut => VT.CloseKey(ref this, hMDHandle);
			public HRESULT ChangePermissions(uint32 hMDHandle, uint32 dwMDTimeOut, uint32 dwMDAccessRequested) mut => VT.ChangePermissions(ref this, hMDHandle, dwMDTimeOut, dwMDAccessRequested);
			public HRESULT SaveData() mut => VT.SaveData(ref this);
			public HRESULT GetHandleInfo(uint32 hMDHandle, out METADATA_HANDLE_INFO pmdhiInfo) mut => VT.GetHandleInfo(ref this, hMDHandle, out pmdhiInfo);
			public HRESULT GetSystemChangeNumber(out uint32 pdwSystemChangeNumber) mut => VT.GetSystemChangeNumber(ref this, out pdwSystemChangeNumber);
			public HRESULT GetDataSetNumber(uint32 hMDHandle, PWSTR pszMDPath, out uint32 pdwMDDataSetNumber) mut => VT.GetDataSetNumber(ref this, hMDHandle, pszMDPath, out pdwMDDataSetNumber);
			public HRESULT SetLastChangeTime(uint32 hMDHandle, PWSTR pszMDPath, ref FILETIME pftMDLastChangeTime, BOOL bLocalTime) mut => VT.SetLastChangeTime(ref this, hMDHandle, pszMDPath, ref pftMDLastChangeTime, bLocalTime);
			public HRESULT GetLastChangeTime(uint32 hMDHandle, PWSTR pszMDPath, out FILETIME pftMDLastChangeTime, BOOL bLocalTime) mut => VT.GetLastChangeTime(ref this, hMDHandle, pszMDPath, out pftMDLastChangeTime, bLocalTime);
			public HRESULT KeyExchangePhase1() mut => VT.KeyExchangePhase1(ref this);
			public HRESULT KeyExchangePhase2() mut => VT.KeyExchangePhase2(ref this);
			public HRESULT Backup(PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags) mut => VT.Backup(ref this, pszMDBackupLocation, dwMDVersion, dwMDFlags);
			public HRESULT Restore(PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags) mut => VT.Restore(ref this, pszMDBackupLocation, dwMDVersion, dwMDFlags);
			public HRESULT EnumBackups(char16* pszMDBackupLocation, out uint32 pdwMDVersion, out FILETIME pftMDBackupTime, uint32 dwMDEnumIndex) mut => VT.EnumBackups(ref this, pszMDBackupLocation, out pdwMDVersion, out pftMDBackupTime, dwMDEnumIndex);
			public HRESULT DeleteBackup(PWSTR pszMDBackupLocation, uint32 dwMDVersion) mut => VT.DeleteBackup(ref this, pszMDBackupLocation, dwMDVersion);
			public HRESULT UnmarshalInterface(IMSAdminBaseW** piadmbwInterface) mut => VT.UnmarshalInterface(ref this, piadmbwInterface);
			public HRESULT GetServerGuid() mut => VT.GetServerGuid(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath) AddKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath) DeleteKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath) DeleteChildKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, char16* pszMDName, uint32 dwMDEnumObjectIndex) EnumKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDSourceHandle, PWSTR pszMDSourcePath, uint32 hMDDestHandle, PWSTR pszMDDestPath, BOOL bMDOverwriteFlag, BOOL bMDCopyFlag) CopyKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, PWSTR pszMDNewName) RenameKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData) SetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData, out uint32 pdwMDRequiredDataLen) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDIdentifier, uint32 dwMDDataType) DeleteData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, out METADATA_RECORD pmdrMDData, uint32 dwMDEnumDataIndex, out uint32 pdwMDRequiredDataLen) EnumData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDAttributes, uint32 dwMDUserType, uint32 dwMDDataType, out uint32 pdwMDNumDataEntries, out uint32 pdwMDDataSetNumber, uint32 dwMDBufferSize, out uint8 pbMDBuffer, out uint32 pdwMDRequiredBufferSize) GetAllData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDUserType, uint32 dwMDDataType) DeleteAllData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDSourceHandle, PWSTR pszMDSourcePath, uint32 hMDDestHandle, PWSTR pszMDDestPath, uint32 dwMDAttributes, uint32 dwMDUserType, uint32 dwMDDataType, BOOL bMDCopyFlag) CopyData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDIdentifier, uint32 dwMDDataType, uint32 dwMDBufferSize, char16* pszBuffer, out uint32 pdwMDRequiredBufferSize) GetDataPaths;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, uint32 dwMDAccessRequested, uint32 dwMDTimeOut, out uint32 phMDNewHandle) OpenKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle) CloseKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, uint32 dwMDTimeOut, uint32 dwMDAccessRequested) ChangePermissions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self) SaveData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, out METADATA_HANDLE_INFO pmdhiInfo) GetHandleInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, out uint32 pdwSystemChangeNumber) GetSystemChangeNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, out uint32 pdwMDDataSetNumber) GetDataSetNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, ref FILETIME pftMDLastChangeTime, BOOL bLocalTime) SetLastChangeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, uint32 hMDHandle, PWSTR pszMDPath, out FILETIME pftMDLastChangeTime, BOOL bLocalTime) GetLastChangeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self) KeyExchangePhase1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self) KeyExchangePhase2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags) Backup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags) Restore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, char16* pszMDBackupLocation, out uint32 pdwMDVersion, out FILETIME pftMDBackupTime, uint32 dwMDEnumIndex) EnumBackups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, PWSTR pszMDBackupLocation, uint32 dwMDVersion) DeleteBackup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self, IMSAdminBaseW** piadmbwInterface) UnmarshalInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseW self) GetServerGuid;
			}
		}
		[CRepr]
		public struct IMSAdminBase2W : IMSAdminBaseW
		{
			public const new Guid IID = .(0x8298d101, 0xf992, 0x43b7, 0x8e, 0xca, 0x50, 0x52, 0xd8, 0x85, 0xb9, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BackupWithPasswd(PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags, PWSTR pszPasswd) mut => VT.BackupWithPasswd(ref this, pszMDBackupLocation, dwMDVersion, dwMDFlags, pszPasswd);
			public HRESULT RestoreWithPasswd(PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags, PWSTR pszPasswd) mut => VT.RestoreWithPasswd(ref this, pszMDBackupLocation, dwMDVersion, dwMDFlags, pszPasswd);
			public HRESULT Export(PWSTR pszPasswd, PWSTR pszFileName, PWSTR pszSourcePath, uint32 dwMDFlags) mut => VT.Export(ref this, pszPasswd, pszFileName, pszSourcePath, dwMDFlags);
			public HRESULT Import(PWSTR pszPasswd, PWSTR pszFileName, PWSTR pszSourcePath, PWSTR pszDestPath, uint32 dwMDFlags) mut => VT.Import(ref this, pszPasswd, pszFileName, pszSourcePath, pszDestPath, dwMDFlags);
			public HRESULT RestoreHistory(PWSTR pszMDHistoryLocation, uint32 dwMDMajorVersion, uint32 dwMDMinorVersion, uint32 dwMDFlags) mut => VT.RestoreHistory(ref this, pszMDHistoryLocation, dwMDMajorVersion, dwMDMinorVersion, dwMDFlags);
			public HRESULT EnumHistory(char16* pszMDHistoryLocation, out uint32 pdwMDMajorVersion, out uint32 pdwMDMinorVersion, out FILETIME pftMDHistoryTime, uint32 dwMDEnumIndex) mut => VT.EnumHistory(ref this, pszMDHistoryLocation, out pdwMDMajorVersion, out pdwMDMinorVersion, out pftMDHistoryTime, dwMDEnumIndex);

			[CRepr]
			public struct VTable : IMSAdminBaseW.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags, PWSTR pszPasswd) BackupWithPasswd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, PWSTR pszMDBackupLocation, uint32 dwMDVersion, uint32 dwMDFlags, PWSTR pszPasswd) RestoreWithPasswd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, PWSTR pszPasswd, PWSTR pszFileName, PWSTR pszSourcePath, uint32 dwMDFlags) Export;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, PWSTR pszPasswd, PWSTR pszFileName, PWSTR pszSourcePath, PWSTR pszDestPath, uint32 dwMDFlags) Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, PWSTR pszMDHistoryLocation, uint32 dwMDMajorVersion, uint32 dwMDMinorVersion, uint32 dwMDFlags) RestoreHistory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase2W self, char16* pszMDHistoryLocation, out uint32 pdwMDMajorVersion, out uint32 pdwMDMinorVersion, out FILETIME pftMDHistoryTime, uint32 dwMDEnumIndex) EnumHistory;
			}
		}
		[CRepr]
		public struct IMSAdminBase3W : IMSAdminBase2W
		{
			public const new Guid IID = .(0xf612954d, 0x3b0b, 0x4c56, 0x95, 0x63, 0x22, 0x7b, 0x7b, 0xe6, 0x24, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChildPaths(uint32 hMDHandle, PWSTR pszMDPath, uint32 cchMDBufferSize, char16* pszBuffer, uint32* pcchMDRequiredBufferSize) mut => VT.GetChildPaths(ref this, hMDHandle, pszMDPath, cchMDBufferSize, pszBuffer, pcchMDRequiredBufferSize);

			[CRepr]
			public struct VTable : IMSAdminBase2W.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBase3W self, uint32 hMDHandle, PWSTR pszMDPath, uint32 cchMDBufferSize, char16* pszBuffer, uint32* pcchMDRequiredBufferSize) GetChildPaths;
			}
		}
		[CRepr]
		public struct IMSImpExpHelpW : IUnknown
		{
			public const new Guid IID = .(0x29ff67ff, 0x8050, 0x480f, 0x9f, 0x30, 0xcc, 0x41, 0x63, 0x5f, 0x2f, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumeratePathsInFile(PWSTR pszFileName, PWSTR pszKeyType, uint32 dwMDBufferSize, char16* pszBuffer, out uint32 pdwMDRequiredBufferSize) mut => VT.EnumeratePathsInFile(ref this, pszFileName, pszKeyType, dwMDBufferSize, pszBuffer, out pdwMDRequiredBufferSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSImpExpHelpW self, PWSTR pszFileName, PWSTR pszKeyType, uint32 dwMDBufferSize, char16* pszBuffer, out uint32 pdwMDRequiredBufferSize) EnumeratePathsInFile;
			}
		}
		[CRepr]
		public struct IMSAdminBaseSinkW : IUnknown
		{
			public const new Guid IID = .(0xa9e69612, 0xb80d, 0x11d0, 0xb9, 0xb9, 0x00, 0xa0, 0xc9, 0x22, 0xe7, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SinkNotify(uint32 dwMDNumElements, MD_CHANGE_OBJECT_W* pcoChangeList) mut => VT.SinkNotify(ref this, dwMDNumElements, pcoChangeList);
			public HRESULT ShutdownNotify() mut => VT.ShutdownNotify(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseSinkW self, uint32 dwMDNumElements, MD_CHANGE_OBJECT_W* pcoChangeList) SinkNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSAdminBaseSinkW self) ShutdownNotify;
			}
		}
		[CRepr]
		public struct AsyncIMSAdminBaseSinkW : IUnknown
		{
			public const new Guid IID = .(0xa9e69613, 0xb80d, 0x11d0, 0xb9, 0xb9, 0x00, 0xa0, 0xc9, 0x22, 0xe7, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_SinkNotify(uint32 dwMDNumElements, MD_CHANGE_OBJECT_W* pcoChangeList) mut => VT.Begin_SinkNotify(ref this, dwMDNumElements, pcoChangeList);
			public HRESULT Finish_SinkNotify() mut => VT.Finish_SinkNotify(ref this);
			public HRESULT Begin_ShutdownNotify() mut => VT.Begin_ShutdownNotify(ref this);
			public HRESULT Finish_ShutdownNotify() mut => VT.Finish_ShutdownNotify(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMSAdminBaseSinkW self, uint32 dwMDNumElements, MD_CHANGE_OBJECT_W* pcoChangeList) Begin_SinkNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMSAdminBaseSinkW self) Finish_SinkNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMSAdminBaseSinkW self) Begin_ShutdownNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMSAdminBaseSinkW self) Finish_ShutdownNotify;
			}
		}
		
		// --- Functions ---
		
		[Import("rpcproxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetExtensionVersion(out HSE_VERSION_INFO pVer);
		[Import("rpcproxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpExtensionProc(ref EXTENSION_CONTROL_BLOCK pECB);
		[Import("rpcproxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpFilterProc(out HTTP_FILTER_CONTEXT pfc, uint32 NotificationType, void* pvNotification);
		[Import("rpcproxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFilterVersion(out HTTP_FILTER_VERSION pVer);
	}
}
