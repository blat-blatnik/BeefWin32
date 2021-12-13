using System;

// namespace Networking.BackgroundIntelligentTransferService
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 BG_NOTIFY_JOB_TRANSFERRED = 1;
		public const uint32 BG_NOTIFY_JOB_ERROR = 2;
		public const uint32 BG_NOTIFY_DISABLE = 4;
		public const uint32 BG_NOTIFY_JOB_MODIFICATION = 8;
		public const uint32 BG_NOTIFY_FILE_TRANSFERRED = 16;
		public const uint32 BG_NOTIFY_FILE_RANGES_TRANSFERRED = 32;
		public const uint32 BG_JOB_ENUM_ALL_USERS = 1;
		public const uint32 BG_COPY_FILE_OWNER = 1;
		public const uint32 BG_COPY_FILE_GROUP = 2;
		public const uint32 BG_COPY_FILE_DACL = 4;
		public const uint32 BG_COPY_FILE_SACL = 8;
		public const uint32 BG_COPY_FILE_ALL = 15;
		public const uint32 BG_SSL_ENABLE_CRL_CHECK = 1;
		public const uint32 BG_SSL_IGNORE_CERT_CN_INVALID = 2;
		public const uint32 BG_SSL_IGNORE_CERT_DATE_INVALID = 4;
		public const uint32 BG_SSL_IGNORE_UNKNOWN_CA = 8;
		public const uint32 BG_SSL_IGNORE_CERT_WRONG_USAGE = 16;
		public const uint32 BG_HTTP_REDIRECT_POLICY_MASK = 1792;
		public const uint32 BG_HTTP_REDIRECT_POLICY_ALLOW_SILENT = 0;
		public const uint32 BG_HTTP_REDIRECT_POLICY_ALLOW_REPORT = 256;
		public const uint32 BG_HTTP_REDIRECT_POLICY_DISALLOW = 512;
		public const uint32 BG_HTTP_REDIRECT_POLICY_ALLOW_HTTPS_TO_HTTP = 2048;
		public const uint32 BG_ENABLE_PEERCACHING_CLIENT = 1;
		public const uint32 BG_ENABLE_PEERCACHING_SERVER = 2;
		public const uint32 BG_DISABLE_BRANCH_CACHE = 4;
		public const uint32 BG_JOB_ENABLE_PEERCACHING_CLIENT = 1;
		public const uint32 BG_JOB_ENABLE_PEERCACHING_SERVER = 2;
		public const uint32 BG_JOB_DISABLE_BRANCH_CACHE = 4;
		public const uint32 BITS_COST_STATE_UNRESTRICTED = 1;
		public const uint32 BITS_COST_STATE_CAPPED_USAGE_UNKNOWN = 2;
		public const uint32 BITS_COST_STATE_BELOW_CAP = 4;
		public const uint32 BITS_COST_STATE_NEAR_CAP = 8;
		public const uint32 BITS_COST_STATE_OVERCAP_CHARGED = 16;
		public const uint32 BITS_COST_STATE_OVERCAP_THROTTLED = 32;
		public const uint32 BITS_COST_STATE_USAGE_BASED = 64;
		public const uint32 BITS_COST_STATE_ROAMING = 128;
		public const uint32 BITS_COST_OPTION_IGNORE_CONGESTION = 2147483648;
		public const uint32 BITS_COST_STATE_RESERVED = 1073741824;
		public const uint32 QM_NOTIFY_FILE_DONE = 1;
		public const uint32 QM_NOTIFY_JOB_DONE = 2;
		public const uint32 QM_NOTIFY_GROUP_DONE = 4;
		public const uint32 QM_NOTIFY_DISABLE_NOTIFY = 64;
		public const uint32 QM_NOTIFY_USE_PROGRESSEX = 128;
		public const uint32 QM_STATUS_FILE_COMPLETE = 1;
		public const uint32 QM_STATUS_FILE_INCOMPLETE = 2;
		public const uint32 QM_STATUS_JOB_COMPLETE = 4;
		public const uint32 QM_STATUS_JOB_INCOMPLETE = 8;
		public const uint32 QM_STATUS_JOB_ERROR = 16;
		public const uint32 QM_STATUS_JOB_FOREGROUND = 32;
		public const uint32 QM_STATUS_GROUP_COMPLETE = 64;
		public const uint32 QM_STATUS_GROUP_INCOMPLETE = 128;
		public const uint32 QM_STATUS_GROUP_SUSPENDED = 256;
		public const uint32 QM_STATUS_GROUP_ERROR = 512;
		public const uint32 QM_STATUS_GROUP_FOREGROUND = 1024;
		public const uint32 QM_PROTOCOL_HTTP = 1;
		public const uint32 QM_PROTOCOL_FTP = 2;
		public const uint32 QM_PROTOCOL_SMB = 3;
		public const uint32 QM_PROTOCOL_CUSTOM = 4;
		public const uint32 QM_PROGRESS_PERCENT_DONE = 1;
		public const uint32 QM_PROGRESS_TIME_DONE = 2;
		public const uint32 QM_PROGRESS_SIZE_DONE = 3;
		public const uint32 QM_E_INVALID_STATE = 2164264961;
		public const uint32 QM_E_SERVICE_UNAVAILABLE = 2164264962;
		public const uint32 QM_E_DOWNLOADER_UNAVAILABLE = 2164264963;
		public const uint32 QM_E_ITEM_NOT_FOUND = 2164264964;
		public const int32 BG_E_NOT_FOUND = -2145386495;
		public const int32 BG_E_INVALID_STATE = -2145386494;
		public const int32 BG_E_EMPTY = -2145386493;
		public const int32 BG_E_FILE_NOT_AVAILABLE = -2145386492;
		public const int32 BG_E_PROTOCOL_NOT_AVAILABLE = -2145386491;
		public const int32 BG_S_ERROR_CONTEXT_NONE = 2097158;
		public const int32 BG_E_ERROR_CONTEXT_UNKNOWN = -2145386489;
		public const int32 BG_E_ERROR_CONTEXT_GENERAL_QUEUE_MANAGER = -2145386488;
		public const int32 BG_E_ERROR_CONTEXT_LOCAL_FILE = -2145386487;
		public const int32 BG_E_ERROR_CONTEXT_REMOTE_FILE = -2145386486;
		public const int32 BG_E_ERROR_CONTEXT_GENERAL_TRANSPORT = -2145386485;
		public const int32 BG_E_ERROR_CONTEXT_QUEUE_MANAGER_NOTIFICATION = -2145386484;
		public const int32 BG_E_DESTINATION_LOCKED = -2145386483;
		public const int32 BG_E_VOLUME_CHANGED = -2145386482;
		public const int32 BG_E_ERROR_INFORMATION_UNAVAILABLE = -2145386481;
		public const int32 BG_E_NETWORK_DISCONNECTED = -2145386480;
		public const int32 BG_E_MISSING_FILE_SIZE = -2145386479;
		public const int32 BG_E_INSUFFICIENT_HTTP_SUPPORT = -2145386478;
		public const int32 BG_E_INSUFFICIENT_RANGE_SUPPORT = -2145386477;
		public const int32 BG_E_REMOTE_NOT_SUPPORTED = -2145386476;
		public const int32 BG_E_NEW_OWNER_DIFF_MAPPING = -2145386475;
		public const int32 BG_E_NEW_OWNER_NO_FILE_ACCESS = -2145386474;
		public const int32 BG_S_PARTIAL_COMPLETE = 2097175;
		public const int32 BG_E_PROXY_LIST_TOO_LARGE = -2145386472;
		public const int32 BG_E_PROXY_BYPASS_LIST_TOO_LARGE = -2145386471;
		public const int32 BG_S_UNABLE_TO_DELETE_FILES = 2097178;
		public const int32 BG_E_INVALID_SERVER_RESPONSE = -2145386469;
		public const int32 BG_E_TOO_MANY_FILES = -2145386468;
		public const int32 BG_E_LOCAL_FILE_CHANGED = -2145386467;
		public const int32 BG_E_ERROR_CONTEXT_REMOTE_APPLICATION = -2145386466;
		public const int32 BG_E_SESSION_NOT_FOUND = -2145386465;
		public const int32 BG_E_TOO_LARGE = -2145386464;
		public const int32 BG_E_STRING_TOO_LONG = -2145386463;
		public const int32 BG_E_CLIENT_SERVER_PROTOCOL_MISMATCH = -2145386462;
		public const int32 BG_E_SERVER_EXECUTE_ENABLE = -2145386461;
		public const int32 BG_E_NO_PROGRESS = -2145386460;
		public const int32 BG_E_USERNAME_TOO_LARGE = -2145386459;
		public const int32 BG_E_PASSWORD_TOO_LARGE = -2145386458;
		public const int32 BG_E_INVALID_AUTH_TARGET = -2145386457;
		public const int32 BG_E_INVALID_AUTH_SCHEME = -2145386456;
		public const int32 BG_E_FILE_NOT_FOUND = -2145386455;
		public const int32 BG_S_PROXY_CHANGED = 2097194;
		public const int32 BG_E_INVALID_RANGE = -2145386453;
		public const int32 BG_E_OVERLAPPING_RANGES = -2145386452;
		public const int32 BG_E_CONNECT_FAILURE = -2145386451;
		public const int32 BG_E_CONNECTION_CLOSED = -2145386450;
		public const int32 BG_E_BLOCKED_BY_POLICY = -2145386434;
		public const int32 BG_E_INVALID_PROXY_INFO = -2145386433;
		public const int32 BG_E_INVALID_CREDENTIALS = -2145386432;
		public const int32 BG_E_INVALID_HASH_ALGORITHM = -2145386431;
		public const int32 BG_E_RECORD_DELETED = -2145386430;
		public const int32 BG_E_COMMIT_IN_PROGRESS = -2145386429;
		public const int32 BG_E_DISCOVERY_IN_PROGRESS = -2145386428;
		public const int32 BG_E_UPNP_ERROR = -2145386427;
		public const int32 BG_E_TEST_OPTION_BLOCKED_DOWNLOAD = -2145386426;
		public const int32 BG_E_PEERCACHING_DISABLED = -2145386425;
		public const int32 BG_E_BUSYCACHERECORD = -2145386424;
		public const int32 BG_E_TOO_MANY_JOBS_PER_USER = -2145386423;
		public const int32 BG_E_TOO_MANY_JOBS_PER_MACHINE = -2145386416;
		public const int32 BG_E_TOO_MANY_FILES_IN_JOB = -2145386415;
		public const int32 BG_E_TOO_MANY_RANGES_IN_FILE = -2145386414;
		public const int32 BG_E_VALIDATION_FAILED = -2145386413;
		public const int32 BG_E_MAXDOWNLOAD_TIMEOUT = -2145386412;
		public const int32 BG_S_OVERRIDDEN_BY_POLICY = 2097237;
		public const int32 BG_E_TOKEN_REQUIRED = -2145386410;
		public const int32 BG_E_UNKNOWN_PROPERTY_ID = -2145386409;
		public const int32 BG_E_READ_ONLY_PROPERTY = -2145386408;
		public const int32 BG_E_BLOCKED_BY_COST_TRANSFER_POLICY = -2145386407;
		public const int32 BG_E_PROPERTY_SUPPORTED_FOR_DOWNLOAD_JOBS_ONLY = -2145386400;
		public const int32 BG_E_READ_ONLY_PROPERTY_AFTER_ADDFILE = -2145386399;
		public const int32 BG_E_READ_ONLY_PROPERTY_AFTER_RESUME = -2145386398;
		public const int32 BG_E_MAX_DOWNLOAD_SIZE_INVALID_VALUE = -2145386397;
		public const int32 BG_E_MAX_DOWNLOAD_SIZE_LIMIT_REACHED = -2145386396;
		public const int32 BG_E_STANDBY_MODE = -2145386395;
		public const int32 BG_E_USE_STORED_CREDENTIALS_NOT_SUPPORTED = -2145386394;
		public const int32 BG_E_BLOCKED_BY_BATTERY_POLICY = -2145386393;
		public const int32 BG_E_BLOCKED_BY_BATTERY_SAVER = -2145386392;
		public const int32 BG_E_WATCHDOG_TIMEOUT = -2145386391;
		public const int32 BG_E_APP_PACKAGE_NOT_FOUND = -2145386390;
		public const int32 BG_E_APP_PACKAGE_SCENARIO_NOT_SUPPORTED = -2145386389;
		public const int32 BG_E_DATABASE_CORRUPT = -2145386388;
		public const int32 BG_E_RANDOM_ACCESS_NOT_SUPPORTED = -2145386387;
		public const int32 BG_E_BLOCKED_BY_BACKGROUND_ACCESS_POLICY = -2145386386;
		public const int32 BG_E_BLOCKED_BY_GAME_MODE = -2145386385;
		public const int32 BG_E_BLOCKED_BY_SYSTEM_POLICY = -2145386384;
		public const int32 BG_E_NOT_SUPPORTED_WITH_CUSTOM_HTTP_METHOD = -2145386383;
		public const int32 BG_E_UNSUPPORTED_JOB_CONFIGURATION = -2145386382;
		public const int32 BG_E_REMOTE_FILE_CHANGED = -2145386381;
		public const int32 BG_E_SERVER_CERT_VALIDATION_INTERFACE_REQUIRED = -2145386380;
		public const int32 BG_E_READ_ONLY_WHEN_JOB_ACTIVE = -2145386379;
		public const int32 BG_E_ERROR_CONTEXT_SERVER_CERTIFICATE_CALLBACK = -2145386378;
		public const int32 BG_E_HTTP_ERROR_100 = -2145845148;
		public const int32 BG_E_HTTP_ERROR_101 = -2145845147;
		public const int32 BG_E_HTTP_ERROR_200 = -2145845048;
		public const int32 BG_E_HTTP_ERROR_201 = -2145845047;
		public const int32 BG_E_HTTP_ERROR_202 = -2145845046;
		public const int32 BG_E_HTTP_ERROR_203 = -2145845045;
		public const int32 BG_E_HTTP_ERROR_204 = -2145845044;
		public const int32 BG_E_HTTP_ERROR_205 = -2145845043;
		public const int32 BG_E_HTTP_ERROR_206 = -2145845042;
		public const int32 BG_E_HTTP_ERROR_300 = -2145844948;
		public const int32 BG_E_HTTP_ERROR_301 = -2145844947;
		public const int32 BG_E_HTTP_ERROR_302 = -2145844946;
		public const int32 BG_E_HTTP_ERROR_303 = -2145844945;
		public const int32 BG_E_HTTP_ERROR_304 = -2145844944;
		public const int32 BG_E_HTTP_ERROR_305 = -2145844943;
		public const int32 BG_E_HTTP_ERROR_307 = -2145844941;
		public const int32 BG_E_HTTP_ERROR_400 = -2145844848;
		public const int32 BG_E_HTTP_ERROR_401 = -2145844847;
		public const int32 BG_E_HTTP_ERROR_402 = -2145844846;
		public const int32 BG_E_HTTP_ERROR_403 = -2145844845;
		public const int32 BG_E_HTTP_ERROR_404 = -2145844844;
		public const int32 BG_E_HTTP_ERROR_405 = -2145844843;
		public const int32 BG_E_HTTP_ERROR_406 = -2145844842;
		public const int32 BG_E_HTTP_ERROR_407 = -2145844841;
		public const int32 BG_E_HTTP_ERROR_408 = -2145844840;
		public const int32 BG_E_HTTP_ERROR_409 = -2145844839;
		public const int32 BG_E_HTTP_ERROR_410 = -2145844838;
		public const int32 BG_E_HTTP_ERROR_411 = -2145844837;
		public const int32 BG_E_HTTP_ERROR_412 = -2145844836;
		public const int32 BG_E_HTTP_ERROR_413 = -2145844835;
		public const int32 BG_E_HTTP_ERROR_414 = -2145844834;
		public const int32 BG_E_HTTP_ERROR_415 = -2145844833;
		public const int32 BG_E_HTTP_ERROR_416 = -2145844832;
		public const int32 BG_E_HTTP_ERROR_417 = -2145844831;
		public const int32 BG_E_HTTP_ERROR_449 = -2145844799;
		public const int32 BG_E_HTTP_ERROR_500 = -2145844748;
		public const int32 BG_E_HTTP_ERROR_501 = -2145844747;
		public const int32 BG_E_HTTP_ERROR_502 = -2145844746;
		public const int32 BG_E_HTTP_ERROR_503 = -2145844745;
		public const int32 BG_E_HTTP_ERROR_504 = -2145844744;
		public const int32 BG_E_HTTP_ERROR_505 = -2145844743;
		public const int32 BITS_MC_JOB_CANCELLED = -2145828864;
		public const int32 BITS_MC_FILE_DELETION_FAILED = -2145828863;
		public const int32 BITS_MC_FILE_DELETION_FAILED_MORE = -2145828862;
		public const int32 BITS_MC_JOB_PROPERTY_CHANGE = -2145828861;
		public const int32 BITS_MC_JOB_TAKE_OWNERSHIP = -2145828860;
		public const int32 BITS_MC_JOB_SCAVENGED = -2145828859;
		public const int32 BITS_MC_JOB_NOTIFICATION_FAILURE = -2145828858;
		public const int32 BITS_MC_STATE_FILE_CORRUPT = -2145828857;
		public const int32 BITS_MC_FAILED_TO_START = -2145828856;
		public const int32 BITS_MC_FATAL_IGD_ERROR = -2145828855;
		public const int32 BITS_MC_PEERCACHING_PORT = -2145828854;
		public const int32 BITS_MC_WSD_PORT = -2145828853;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum BG_TOKEN : uint32
		{
			BG_TOKEN_LOCAL_FILE = 1,
			BG_TOKEN_NETWORK = 2,
		}
		[AllowDuplicates]
		public enum BG_ERROR_CONTEXT : int32
		{
			BG_ERROR_CONTEXT_NONE = 0,
			BG_ERROR_CONTEXT_UNKNOWN = 1,
			BG_ERROR_CONTEXT_GENERAL_QUEUE_MANAGER = 2,
			BG_ERROR_CONTEXT_QUEUE_MANAGER_NOTIFICATION = 3,
			BG_ERROR_CONTEXT_LOCAL_FILE = 4,
			BG_ERROR_CONTEXT_REMOTE_FILE = 5,
			BG_ERROR_CONTEXT_GENERAL_TRANSPORT = 6,
			BG_ERROR_CONTEXT_REMOTE_APPLICATION = 7,
			BG_ERROR_CONTEXT_SERVER_CERTIFICATE_CALLBACK = 8,
		}
		[AllowDuplicates]
		public enum BG_JOB_PRIORITY : int32
		{
			BG_JOB_PRIORITY_FOREGROUND = 0,
			BG_JOB_PRIORITY_HIGH = 1,
			BG_JOB_PRIORITY_NORMAL = 2,
			BG_JOB_PRIORITY_LOW = 3,
		}
		[AllowDuplicates]
		public enum BG_JOB_STATE : int32
		{
			BG_JOB_STATE_QUEUED = 0,
			BG_JOB_STATE_CONNECTING = 1,
			BG_JOB_STATE_TRANSFERRING = 2,
			BG_JOB_STATE_SUSPENDED = 3,
			BG_JOB_STATE_ERROR = 4,
			BG_JOB_STATE_TRANSIENT_ERROR = 5,
			BG_JOB_STATE_TRANSFERRED = 6,
			BG_JOB_STATE_ACKNOWLEDGED = 7,
			BG_JOB_STATE_CANCELLED = 8,
		}
		[AllowDuplicates]
		public enum BG_JOB_TYPE : int32
		{
			BG_JOB_TYPE_DOWNLOAD = 0,
			BG_JOB_TYPE_UPLOAD = 1,
			BG_JOB_TYPE_UPLOAD_REPLY = 2,
		}
		[AllowDuplicates]
		public enum BG_JOB_PROXY_USAGE : int32
		{
			BG_JOB_PROXY_USAGE_PRECONFIG = 0,
			BG_JOB_PROXY_USAGE_NO_PROXY = 1,
			BG_JOB_PROXY_USAGE_OVERRIDE = 2,
			BG_JOB_PROXY_USAGE_AUTODETECT = 3,
		}
		[AllowDuplicates]
		public enum BG_AUTH_TARGET : int32
		{
			BG_AUTH_TARGET_SERVER = 1,
			BG_AUTH_TARGET_PROXY = 2,
		}
		[AllowDuplicates]
		public enum BG_AUTH_SCHEME : int32
		{
			BG_AUTH_SCHEME_BASIC = 1,
			BG_AUTH_SCHEME_DIGEST = 2,
			BG_AUTH_SCHEME_NTLM = 3,
			BG_AUTH_SCHEME_NEGOTIATE = 4,
			BG_AUTH_SCHEME_PASSPORT = 5,
		}
		[AllowDuplicates]
		public enum BG_CERT_STORE_LOCATION : int32
		{
			BG_CERT_STORE_LOCATION_CURRENT_USER = 0,
			BG_CERT_STORE_LOCATION_LOCAL_MACHINE = 1,
			BG_CERT_STORE_LOCATION_CURRENT_SERVICE = 2,
			BG_CERT_STORE_LOCATION_SERVICES = 3,
			BG_CERT_STORE_LOCATION_USERS = 4,
			BG_CERT_STORE_LOCATION_CURRENT_USER_GROUP_POLICY = 5,
			BG_CERT_STORE_LOCATION_LOCAL_MACHINE_GROUP_POLICY = 6,
			BG_CERT_STORE_LOCATION_LOCAL_MACHINE_ENTERPRISE = 7,
		}
		[AllowDuplicates]
		public enum BITS_JOB_TRANSFER_POLICY : int32
		{
			BITS_JOB_TRANSFER_POLICY_ALWAYS = -2147483393,
			BITS_JOB_TRANSFER_POLICY_NOT_ROAMING = -2147483521,
			BITS_JOB_TRANSFER_POLICY_NO_SURCHARGE = -2147483537,
			BITS_JOB_TRANSFER_POLICY_STANDARD = -2147483545,
			BITS_JOB_TRANSFER_POLICY_UNRESTRICTED = -2147483615,
		}
		[AllowDuplicates]
		public enum BITS_JOB_PROPERTY_ID : int32
		{
			BITS_JOB_PROPERTY_ID_COST_FLAGS = 1,
			BITS_JOB_PROPERTY_NOTIFICATION_CLSID = 2,
			BITS_JOB_PROPERTY_DYNAMIC_CONTENT = 3,
			BITS_JOB_PROPERTY_HIGH_PERFORMANCE = 4,
			BITS_JOB_PROPERTY_MAX_DOWNLOAD_SIZE = 5,
			BITS_JOB_PROPERTY_USE_STORED_CREDENTIALS = 7,
			BITS_JOB_PROPERTY_MINIMUM_NOTIFICATION_INTERVAL_MS = 9,
			BITS_JOB_PROPERTY_ON_DEMAND_MODE = 10,
		}
		[AllowDuplicates]
		public enum BITS_FILE_PROPERTY_ID : int32
		{
			BITS_FILE_PROPERTY_ID_HTTP_RESPONSE_HEADERS = 1,
		}
		[AllowDuplicates]
		public enum GROUPPROP : int32
		{
			GROUPPROP_PRIORITY = 0,
			GROUPPROP_REMOTEUSERID = 1,
			GROUPPROP_REMOTEUSERPWD = 2,
			GROUPPROP_LOCALUSERID = 3,
			GROUPPROP_LOCALUSERPWD = 4,
			GROUPPROP_PROTOCOLFLAGS = 5,
			GROUPPROP_NOTIFYFLAGS = 6,
			GROUPPROP_NOTIFYCLSID = 7,
			GROUPPROP_PROGRESSSIZE = 8,
			GROUPPROP_PROGRESSPERCENT = 9,
			GROUPPROP_PROGRESSTIME = 10,
			GROUPPROP_DISPLAYNAME = 11,
			GROUPPROP_DESCRIPTION = 12,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct BG_FILE_PROGRESS
		{
			public uint64 BytesTotal;
			public uint64 BytesTransferred;
			public BOOL Completed;
		}
		[CRepr]
		public struct BG_FILE_INFO
		{
			public PWSTR RemoteName;
			public PWSTR LocalName;
		}
		[CRepr]
		public struct BG_JOB_PROGRESS
		{
			public uint64 BytesTotal;
			public uint64 BytesTransferred;
			public uint32 FilesTotal;
			public uint32 FilesTransferred;
		}
		[CRepr]
		public struct BG_JOB_TIMES
		{
			public FILETIME CreationTime;
			public FILETIME ModificationTime;
			public FILETIME TransferCompletionTime;
		}
		[CRepr]
		public struct BG_JOB_REPLY_PROGRESS
		{
			public uint64 BytesTotal;
			public uint64 BytesTransferred;
		}
		[CRepr]
		public struct BG_BASIC_CREDENTIALS
		{
			public PWSTR UserName;
			public PWSTR Password;
		}
		[CRepr, Union]
		public struct BG_AUTH_CREDENTIALS_UNION
		{
			public BG_BASIC_CREDENTIALS Basic;
		}
		[CRepr]
		public struct BG_AUTH_CREDENTIALS
		{
			public BG_AUTH_TARGET Target;
			public BG_AUTH_SCHEME Scheme;
			public BG_AUTH_CREDENTIALS_UNION Credentials;
		}
		[CRepr]
		public struct BG_FILE_RANGE
		{
			public uint64 InitialOffset;
			public uint64 Length;
		}
		[CRepr, Union]
		public struct BITS_JOB_PROPERTY_VALUE
		{
			public uint32 Dword;
			public Guid ClsID;
			public BOOL Enable;
			public uint64 Uint64;
			public BG_AUTH_TARGET Target;
		}
		[CRepr, Union]
		public struct BITS_FILE_PROPERTY_VALUE
		{
			public PWSTR String;
		}
		[CRepr]
		public struct FILESETINFO
		{
			public BSTR bstrRemoteFile;
			public BSTR bstrLocalFile;
			public uint32 dwSizeHint;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_BackgroundCopyManager = .(0x4991d34b, 0x80a1, 0x4291, 0x83, 0xb6, 0x33, 0x28, 0x36, 0x6b, 0x90, 0x97);
		public const Guid CLSID_BackgroundCopyManager1_5 = .(0xf087771f, 0xd74f, 0x4c1a, 0xbb, 0x8a, 0xe1, 0x6a, 0xca, 0x91, 0x24, 0xea);
		public const Guid CLSID_BackgroundCopyManager2_0 = .(0x6d18ad12, 0xbde3, 0x4393, 0xb3, 0x11, 0x09, 0x9c, 0x34, 0x6e, 0x6d, 0xf9);
		public const Guid CLSID_BackgroundCopyManager2_5 = .(0x03ca98d6, 0xff5d, 0x49b8, 0xab, 0xc6, 0x03, 0xdd, 0x84, 0x12, 0x70, 0x20);
		public const Guid CLSID_BackgroundCopyManager3_0 = .(0x659cdea7, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
		public const Guid CLSID_BackgroundCopyManager4_0 = .(0xbb6df56b, 0xcace, 0x11dc, 0x99, 0x92, 0x00, 0x19, 0xb9, 0x3a, 0x3a, 0x84);
		public const Guid CLSID_BackgroundCopyManager5_0 = .(0x1ecca34c, 0xe88a, 0x44e3, 0x8d, 0x6a, 0x89, 0x21, 0xbd, 0xe9, 0xe4, 0x52);
		public const Guid CLSID_BackgroundCopyManager10_1 = .(0x4bd3e4e1, 0x7bd4, 0x4a2b, 0x99, 0x64, 0x49, 0x64, 0x00, 0xde, 0x51, 0x93);
		public const Guid CLSID_BackgroundCopyManager10_2 = .(0x4575438f, 0xa6c8, 0x4976, 0xb0, 0xfe, 0x2f, 0x26, 0xb8, 0x0d, 0x95, 0x9e);
		public const Guid CLSID_BackgroundCopyManager10_3 = .(0x5fd42ad5, 0xc04e, 0x4d36, 0xad, 0xc7, 0xe0, 0x8f, 0xf1, 0x57, 0x37, 0xad);
		public const Guid CLSID_BITSExtensionSetupFactory = .(0xefbbab68, 0x7286, 0x4783, 0x94, 0xbf, 0x94, 0x61, 0xd8, 0xb7, 0xe7, 0xe9);
		public const Guid CLSID_BackgroundCopyQMgr = .(0x69ad4aee, 0x51be, 0x439b, 0xa9, 0x2c, 0x86, 0xae, 0x49, 0x0e, 0x8b, 0x30);
		
		// --- COM Interfaces ---
		
		public struct IBackgroundCopyFile {}
		public struct IEnumBackgroundCopyFiles {}
		public struct IBackgroundCopyError {}
		public struct IBackgroundCopyJob {}
		public struct IEnumBackgroundCopyJobs {}
		public struct IBackgroundCopyCallback {}
		public struct AsyncIBackgroundCopyCallback {}
		public struct IBackgroundCopyManager {}
		public struct IBackgroundCopyJob2 {}
		public struct IBackgroundCopyJob3 {}
		public struct IBackgroundCopyFile2 {}
		public struct IBackgroundCopyJobHttpOptions {}
		public struct IBitsPeerCacheRecord {}
		public struct IEnumBitsPeerCacheRecords {}
		public struct IBitsPeer {}
		public struct IEnumBitsPeers {}
		public struct IBitsPeerCacheAdministration {}
		public struct IBackgroundCopyJob4 {}
		public struct IBackgroundCopyFile3 {}
		public struct IBackgroundCopyCallback2 {}
		public struct IBitsTokenOptions {}
		public struct IBackgroundCopyFile4 {}
		public struct IBackgroundCopyJob5 {}
		public struct IBackgroundCopyFile5 {}
		public struct IBackgroundCopyCallback3 {}
		public struct IBackgroundCopyFile6 {}
		public struct IBackgroundCopyJobHttpOptions2 {}
		public struct IBackgroundCopyServerCertificateValidationCallback {}
		public struct IBackgroundCopyJobHttpOptions3 {}
		public struct IBITSExtensionSetup {}
		public struct IBITSExtensionSetupFactory {}
		public struct IBackgroundCopyJob1 {}
		public struct IEnumBackgroundCopyJobs1 {}
		public struct IBackgroundCopyGroup {}
		public struct IEnumBackgroundCopyGroups {}
		public struct IBackgroundCopyCallback1 {}
		public struct IBackgroundCopyQMgr {}
		
	}
}
