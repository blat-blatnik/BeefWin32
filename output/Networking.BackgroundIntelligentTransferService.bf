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
		
		public enum BG_TOKEN : uint32
		{
			LOCAL_FILE = 1,
			NETWORK = 2,
		}
		public enum BG_ERROR_CONTEXT : int32
		{
			NONE = 0,
			UNKNOWN = 1,
			GENERAL_QUEUE_MANAGER = 2,
			QUEUE_MANAGER_NOTIFICATION = 3,
			LOCAL_FILE = 4,
			REMOTE_FILE = 5,
			GENERAL_TRANSPORT = 6,
			REMOTE_APPLICATION = 7,
			SERVER_CERTIFICATE_CALLBACK = 8,
		}
		public enum BG_JOB_PRIORITY : int32
		{
			FOREGROUND = 0,
			HIGH = 1,
			NORMAL = 2,
			LOW = 3,
		}
		public enum BG_JOB_STATE : int32
		{
			QUEUED = 0,
			CONNECTING = 1,
			TRANSFERRING = 2,
			SUSPENDED = 3,
			ERROR = 4,
			TRANSIENT_ERROR = 5,
			TRANSFERRED = 6,
			ACKNOWLEDGED = 7,
			CANCELLED = 8,
		}
		public enum BG_JOB_TYPE : int32
		{
			DOWNLOAD = 0,
			UPLOAD = 1,
			UPLOAD_REPLY = 2,
		}
		public enum BG_JOB_PROXY_USAGE : int32
		{
			PRECONFIG = 0,
			NO_PROXY = 1,
			OVERRIDE = 2,
			AUTODETECT = 3,
		}
		public enum BG_AUTH_TARGET : int32
		{
			SERVER = 1,
			PROXY = 2,
		}
		public enum BG_AUTH_SCHEME : int32
		{
			BASIC = 1,
			DIGEST = 2,
			NTLM = 3,
			NEGOTIATE = 4,
			PASSPORT = 5,
		}
		public enum BG_CERT_STORE_LOCATION : int32
		{
			CURRENT_USER = 0,
			LOCAL_MACHINE = 1,
			CURRENT_SERVICE = 2,
			SERVICES = 3,
			USERS = 4,
			CURRENT_USER_GROUP_POLICY = 5,
			LOCAL_MACHINE_GROUP_POLICY = 6,
			LOCAL_MACHINE_ENTERPRISE = 7,
		}
		public enum BITS_JOB_TRANSFER_POLICY : int32
		{
			ALWAYS = -2147483393,
			NOT_ROAMING = -2147483521,
			NO_SURCHARGE = -2147483537,
			STANDARD = -2147483545,
			UNRESTRICTED = -2147483615,
		}
		public enum BITS_JOB_PROPERTY_ID : int32
		{
			ID_COST_FLAGS = 1,
			NOTIFICATION_CLSID = 2,
			DYNAMIC_CONTENT = 3,
			HIGH_PERFORMANCE = 4,
			MAX_DOWNLOAD_SIZE = 5,
			USE_STORED_CREDENTIALS = 7,
			MINIMUM_NOTIFICATION_INTERVAL_MS = 9,
			ON_DEMAND_MODE = 10,
		}
		public enum BITS_FILE_PROPERTY_ID : int32
		{
			ID_HTTP_RESPONSE_HEADERS = 1,
		}
		public enum GROUPPROP : int32
		{
			PRIORITY = 0,
			REMOTEUSERID = 1,
			REMOTEUSERPWD = 2,
			LOCALUSERID = 3,
			LOCALUSERPWD = 4,
			PROTOCOLFLAGS = 5,
			NOTIFYFLAGS = 6,
			NOTIFYCLSID = 7,
			PROGRESSSIZE = 8,
			PROGRESSPERCENT = 9,
			PROGRESSTIME = 10,
			DISPLAYNAME = 11,
			DESCRIPTION = 12,
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
		
		[CRepr]
		public struct IBackgroundCopyFile : IUnknown
		{
			public const new Guid IID = .(0x01b7bd23, 0xfb88, 0x4a77, 0x84, 0x90, 0x58, 0x91, 0xd3, 0xe4, 0x65, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRemoteName(out PWSTR pVal) mut => VT.GetRemoteName(ref this, out pVal);
			public HRESULT GetLocalName(out PWSTR pVal) mut => VT.GetLocalName(ref this, out pVal);
			public HRESULT GetProgress(out BG_FILE_PROGRESS pVal) mut => VT.GetProgress(ref this, out pVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile self, out PWSTR pVal) GetRemoteName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile self, out PWSTR pVal) GetLocalName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile self, out BG_FILE_PROGRESS pVal) GetProgress;
			}
		}
		[CRepr]
		public struct IEnumBackgroundCopyFiles : IUnknown
		{
			public const new Guid IID = .(0xca51e165, 0xc365, 0x424c, 0x8d, 0x41, 0x24, 0xaa, 0xa4, 0xff, 0x3c, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out IBackgroundCopyFile* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBackgroundCopyFiles* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyFiles self, uint32 celt, out IBackgroundCopyFile* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyFiles self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyFiles self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyFiles self, out IEnumBackgroundCopyFiles* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyFiles self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBackgroundCopyError : IUnknown
		{
			public const new Guid IID = .(0x19c613a0, 0xfcb8, 0x4f28, 0x81, 0xae, 0x89, 0x7c, 0x3d, 0x07, 0x8f, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetError(out BG_ERROR_CONTEXT pContext, out HRESULT pCode) mut => VT.GetError(ref this, out pContext, out pCode);
			public HRESULT GetFile(out IBackgroundCopyFile* pVal) mut => VT.GetFile(ref this, out pVal);
			public HRESULT GetErrorDescription(uint32 LanguageId, PWSTR* pErrorDescription) mut => VT.GetErrorDescription(ref this, LanguageId, pErrorDescription);
			public HRESULT GetErrorContextDescription(uint32 LanguageId, PWSTR* pContextDescription) mut => VT.GetErrorContextDescription(ref this, LanguageId, pContextDescription);
			public HRESULT GetProtocol(PWSTR* pProtocol) mut => VT.GetProtocol(ref this, pProtocol);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyError self, out BG_ERROR_CONTEXT pContext, out HRESULT pCode) GetError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyError self, out IBackgroundCopyFile* pVal) GetFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyError self, uint32 LanguageId, PWSTR* pErrorDescription) GetErrorDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyError self, uint32 LanguageId, PWSTR* pContextDescription) GetErrorContextDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyError self, PWSTR* pProtocol) GetProtocol;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob : IUnknown
		{
			public const new Guid IID = .(0x37668d37, 0x507e, 0x4160, 0x93, 0x16, 0x26, 0x30, 0x6d, 0x15, 0x0b, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFileSet(uint32 cFileCount, BG_FILE_INFO* pFileSet) mut => VT.AddFileSet(ref this, cFileCount, pFileSet);
			public HRESULT AddFile(PWSTR RemoteUrl, PWSTR LocalName) mut => VT.AddFile(ref this, RemoteUrl, LocalName);
			public HRESULT EnumFiles(out IEnumBackgroundCopyFiles* pEnum) mut => VT.EnumFiles(ref this, out pEnum);
			public HRESULT Suspend() mut => VT.Suspend(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Complete() mut => VT.Complete(ref this);
			public HRESULT GetId(out Guid pVal) mut => VT.GetId(ref this, out pVal);
			public HRESULT ComGetType(out BG_JOB_TYPE pVal) mut => VT.ComGetType(ref this, out pVal);
			public HRESULT GetProgress(out BG_JOB_PROGRESS pVal) mut => VT.GetProgress(ref this, out pVal);
			public HRESULT GetTimes(out BG_JOB_TIMES pVal) mut => VT.GetTimes(ref this, out pVal);
			public HRESULT GetState(out BG_JOB_STATE pVal) mut => VT.GetState(ref this, out pVal);
			public HRESULT GetError(out IBackgroundCopyError* ppError) mut => VT.GetError(ref this, out ppError);
			public HRESULT GetOwner(out PWSTR pVal) mut => VT.GetOwner(ref this, out pVal);
			public HRESULT SetDisplayName(PWSTR Val) mut => VT.SetDisplayName(ref this, Val);
			public HRESULT GetDisplayName(out PWSTR pVal) mut => VT.GetDisplayName(ref this, out pVal);
			public HRESULT SetDescription(PWSTR Val) mut => VT.SetDescription(ref this, Val);
			public HRESULT GetDescription(out PWSTR pVal) mut => VT.GetDescription(ref this, out pVal);
			public HRESULT SetPriority(BG_JOB_PRIORITY Val) mut => VT.SetPriority(ref this, Val);
			public HRESULT GetPriority(out BG_JOB_PRIORITY pVal) mut => VT.GetPriority(ref this, out pVal);
			public HRESULT SetNotifyFlags(uint32 Val) mut => VT.SetNotifyFlags(ref this, Val);
			public HRESULT GetNotifyFlags(out uint32 pVal) mut => VT.GetNotifyFlags(ref this, out pVal);
			public HRESULT SetNotifyInterface(ref IUnknown Val) mut => VT.SetNotifyInterface(ref this, ref Val);
			public HRESULT GetNotifyInterface(out IUnknown* pVal) mut => VT.GetNotifyInterface(ref this, out pVal);
			public HRESULT SetMinimumRetryDelay(uint32 Seconds) mut => VT.SetMinimumRetryDelay(ref this, Seconds);
			public HRESULT GetMinimumRetryDelay(out uint32 Seconds) mut => VT.GetMinimumRetryDelay(ref this, out Seconds);
			public HRESULT SetNoProgressTimeout(uint32 Seconds) mut => VT.SetNoProgressTimeout(ref this, Seconds);
			public HRESULT GetNoProgressTimeout(out uint32 Seconds) mut => VT.GetNoProgressTimeout(ref this, out Seconds);
			public HRESULT GetErrorCount(out uint32 Errors) mut => VT.GetErrorCount(ref this, out Errors);
			public HRESULT SetProxySettings(BG_JOB_PROXY_USAGE ProxyUsage, PWSTR ProxyList, PWSTR ProxyBypassList) mut => VT.SetProxySettings(ref this, ProxyUsage, ProxyList, ProxyBypassList);
			public HRESULT GetProxySettings(out BG_JOB_PROXY_USAGE pProxyUsage, out PWSTR pProxyList, out PWSTR pProxyBypassList) mut => VT.GetProxySettings(ref this, out pProxyUsage, out pProxyList, out pProxyBypassList);
			public HRESULT TakeOwnership() mut => VT.TakeOwnership(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, uint32 cFileCount, BG_FILE_INFO* pFileSet) AddFileSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, PWSTR RemoteUrl, PWSTR LocalName) AddFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out IEnumBackgroundCopyFiles* pEnum) EnumFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self) Suspend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self) Complete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out Guid pVal) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_TYPE pVal) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_PROGRESS pVal) GetProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_TIMES pVal) GetTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_STATE pVal) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out IBackgroundCopyError* ppError) GetError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out PWSTR pVal) GetOwner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, PWSTR Val) SetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out PWSTR pVal) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, PWSTR Val) SetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out PWSTR pVal) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, BG_JOB_PRIORITY Val) SetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_PRIORITY pVal) GetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, uint32 Val) SetNotifyFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out uint32 pVal) GetNotifyFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, ref IUnknown Val) SetNotifyInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out IUnknown* pVal) GetNotifyInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, uint32 Seconds) SetMinimumRetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out uint32 Seconds) GetMinimumRetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, uint32 Seconds) SetNoProgressTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out uint32 Seconds) GetNoProgressTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out uint32 Errors) GetErrorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, BG_JOB_PROXY_USAGE ProxyUsage, PWSTR ProxyList, PWSTR ProxyBypassList) SetProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self, out BG_JOB_PROXY_USAGE pProxyUsage, out PWSTR pProxyList, out PWSTR pProxyBypassList) GetProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob self) TakeOwnership;
			}
		}
		[CRepr]
		public struct IEnumBackgroundCopyJobs : IUnknown
		{
			public const new Guid IID = .(0x1af4f612, 0x3b71, 0x466f, 0x8f, 0x58, 0x7b, 0x6f, 0x73, 0xac, 0x57, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out IBackgroundCopyJob* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBackgroundCopyJobs* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs self, uint32 celt, out IBackgroundCopyJob* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs self, out IEnumBackgroundCopyJobs* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBackgroundCopyCallback : IUnknown
		{
			public const new Guid IID = .(0x97ea99c7, 0x0186, 0x4ad4, 0x8d, 0xf9, 0xc5, 0xb4, 0xe0, 0xed, 0x6b, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT JobTransferred(ref IBackgroundCopyJob pJob) mut => VT.JobTransferred(ref this, ref pJob);
			public HRESULT JobError(ref IBackgroundCopyJob pJob, ref IBackgroundCopyError pError) mut => VT.JobError(ref this, ref pJob, ref pError);
			public HRESULT JobModification(ref IBackgroundCopyJob pJob, uint32 dwReserved) mut => VT.JobModification(ref this, ref pJob, dwReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback self, ref IBackgroundCopyJob pJob) JobTransferred;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback self, ref IBackgroundCopyJob pJob, ref IBackgroundCopyError pError) JobError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback self, ref IBackgroundCopyJob pJob, uint32 dwReserved) JobModification;
			}
		}
		[CRepr]
		public struct AsyncIBackgroundCopyCallback : IUnknown
		{
			public const new Guid IID = .(0xca29d251, 0xb4bb, 0x4679, 0xa3, 0xd9, 0xae, 0x80, 0x06, 0x11, 0x9d, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_JobTransferred(ref IBackgroundCopyJob pJob) mut => VT.Begin_JobTransferred(ref this, ref pJob);
			public HRESULT Finish_JobTransferred() mut => VT.Finish_JobTransferred(ref this);
			public HRESULT Begin_JobError(ref IBackgroundCopyJob pJob, ref IBackgroundCopyError pError) mut => VT.Begin_JobError(ref this, ref pJob, ref pError);
			public HRESULT Finish_JobError() mut => VT.Finish_JobError(ref this);
			public HRESULT Begin_JobModification(ref IBackgroundCopyJob pJob, uint32 dwReserved) mut => VT.Begin_JobModification(ref this, ref pJob, dwReserved);
			public HRESULT Finish_JobModification() mut => VT.Finish_JobModification(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self, ref IBackgroundCopyJob pJob) Begin_JobTransferred;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self) Finish_JobTransferred;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self, ref IBackgroundCopyJob pJob, ref IBackgroundCopyError pError) Begin_JobError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self) Finish_JobError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self, ref IBackgroundCopyJob pJob, uint32 dwReserved) Begin_JobModification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIBackgroundCopyCallback self) Finish_JobModification;
			}
		}
		[CRepr]
		public struct IBackgroundCopyManager : IUnknown
		{
			public const new Guid IID = .(0x5ce34c0d, 0x0dc9, 0x4c1f, 0x89, 0x7c, 0xda, 0xa1, 0xb7, 0x8c, 0xee, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateJob(PWSTR DisplayName, BG_JOB_TYPE Type, out Guid pJobId, out IBackgroundCopyJob* ppJob) mut => VT.CreateJob(ref this, DisplayName, Type, out pJobId, out ppJob);
			public HRESULT GetJob(in Guid jobID, out IBackgroundCopyJob* ppJob) mut => VT.GetJob(ref this, jobID, out ppJob);
			public HRESULT EnumJobs(uint32 dwFlags, out IEnumBackgroundCopyJobs* ppEnum) mut => VT.EnumJobs(ref this, dwFlags, out ppEnum);
			public HRESULT GetErrorDescription(HRESULT hResult, uint32 LanguageId, out PWSTR pErrorDescription) mut => VT.GetErrorDescription(ref this, hResult, LanguageId, out pErrorDescription);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyManager self, PWSTR DisplayName, BG_JOB_TYPE Type, out Guid pJobId, out IBackgroundCopyJob* ppJob) CreateJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyManager self, in Guid jobID, out IBackgroundCopyJob* ppJob) GetJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyManager self, uint32 dwFlags, out IEnumBackgroundCopyJobs* ppEnum) EnumJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyManager self, HRESULT hResult, uint32 LanguageId, out PWSTR pErrorDescription) GetErrorDescription;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob2 : IBackgroundCopyJob
		{
			public const new Guid IID = .(0x54b50739, 0x686f, 0x45eb, 0x9d, 0xff, 0xd6, 0xa9, 0xa0, 0xfa, 0xa9, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNotifyCmdLine(PWSTR Program, PWSTR Parameters) mut => VT.SetNotifyCmdLine(ref this, Program, Parameters);
			public HRESULT GetNotifyCmdLine(out PWSTR pProgram, out PWSTR pParameters) mut => VT.GetNotifyCmdLine(ref this, out pProgram, out pParameters);
			public HRESULT GetReplyProgress(out BG_JOB_REPLY_PROGRESS pProgress) mut => VT.GetReplyProgress(ref this, out pProgress);
			public HRESULT GetReplyData(uint8** ppBuffer, out uint64 pLength) mut => VT.GetReplyData(ref this, ppBuffer, out pLength);
			public HRESULT SetReplyFileName(PWSTR ReplyFileName) mut => VT.SetReplyFileName(ref this, ReplyFileName);
			public HRESULT GetReplyFileName(out PWSTR pReplyFileName) mut => VT.GetReplyFileName(ref this, out pReplyFileName);
			public HRESULT SetCredentials(ref BG_AUTH_CREDENTIALS credentials) mut => VT.SetCredentials(ref this, ref credentials);
			public HRESULT RemoveCredentials(BG_AUTH_TARGET Target, BG_AUTH_SCHEME Scheme) mut => VT.RemoveCredentials(ref this, Target, Scheme);

			[CRepr]
			public struct VTable : IBackgroundCopyJob.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, PWSTR Program, PWSTR Parameters) SetNotifyCmdLine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, out PWSTR pProgram, out PWSTR pParameters) GetNotifyCmdLine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, out BG_JOB_REPLY_PROGRESS pProgress) GetReplyProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, uint8** ppBuffer, out uint64 pLength) GetReplyData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, PWSTR ReplyFileName) SetReplyFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, out PWSTR pReplyFileName) GetReplyFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, ref BG_AUTH_CREDENTIALS credentials) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob2 self, BG_AUTH_TARGET Target, BG_AUTH_SCHEME Scheme) RemoveCredentials;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob3 : IBackgroundCopyJob2
		{
			public const new Guid IID = .(0x443c8934, 0x90ff, 0x48ed, 0xbc, 0xde, 0x26, 0xf5, 0xc7, 0x45, 0x00, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReplaceRemotePrefix(PWSTR OldPrefix, PWSTR NewPrefix) mut => VT.ReplaceRemotePrefix(ref this, OldPrefix, NewPrefix);
			public HRESULT AddFileWithRanges(PWSTR RemoteUrl, PWSTR LocalName, uint32 RangeCount, BG_FILE_RANGE* Ranges) mut => VT.AddFileWithRanges(ref this, RemoteUrl, LocalName, RangeCount, Ranges);
			public HRESULT SetFileACLFlags(uint32 Flags) mut => VT.SetFileACLFlags(ref this, Flags);
			public HRESULT GetFileACLFlags(out uint32 Flags) mut => VT.GetFileACLFlags(ref this, out Flags);

			[CRepr]
			public struct VTable : IBackgroundCopyJob2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob3 self, PWSTR OldPrefix, PWSTR NewPrefix) ReplaceRemotePrefix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob3 self, PWSTR RemoteUrl, PWSTR LocalName, uint32 RangeCount, BG_FILE_RANGE* Ranges) AddFileWithRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob3 self, uint32 Flags) SetFileACLFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob3 self, out uint32 Flags) GetFileACLFlags;
			}
		}
		[CRepr]
		public struct IBackgroundCopyFile2 : IBackgroundCopyFile
		{
			public const new Guid IID = .(0x83e81b93, 0x0873, 0x474d, 0x8a, 0x8c, 0xf2, 0x01, 0x8b, 0x1a, 0x93, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileRanges(out uint32 RangeCount, BG_FILE_RANGE** Ranges) mut => VT.GetFileRanges(ref this, out RangeCount, Ranges);
			public HRESULT SetRemoteName(PWSTR Val) mut => VT.SetRemoteName(ref this, Val);

			[CRepr]
			public struct VTable : IBackgroundCopyFile.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile2 self, out uint32 RangeCount, BG_FILE_RANGE** Ranges) GetFileRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile2 self, PWSTR Val) SetRemoteName;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJobHttpOptions : IUnknown
		{
			public const new Guid IID = .(0xf1bd1079, 0x9f01, 0x4bdc, 0x80, 0x36, 0xf0, 0x9b, 0x70, 0x09, 0x50, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetClientCertificateByID(BG_CERT_STORE_LOCATION StoreLocation, PWSTR StoreName, uint8* pCertHashBlob) mut => VT.SetClientCertificateByID(ref this, StoreLocation, StoreName, pCertHashBlob);
			public HRESULT SetClientCertificateByName(BG_CERT_STORE_LOCATION StoreLocation, PWSTR StoreName, PWSTR SubjectName) mut => VT.SetClientCertificateByName(ref this, StoreLocation, StoreName, SubjectName);
			public HRESULT RemoveClientCertificate() mut => VT.RemoveClientCertificate(ref this);
			public HRESULT GetClientCertificate(out BG_CERT_STORE_LOCATION pStoreLocation, PWSTR* pStoreName, uint8** ppCertHashBlob, PWSTR* pSubjectName) mut => VT.GetClientCertificate(ref this, out pStoreLocation, pStoreName, ppCertHashBlob, pSubjectName);
			public HRESULT SetCustomHeaders(PWSTR RequestHeaders) mut => VT.SetCustomHeaders(ref this, RequestHeaders);
			public HRESULT GetCustomHeaders(PWSTR* pRequestHeaders) mut => VT.GetCustomHeaders(ref this, pRequestHeaders);
			public HRESULT SetSecurityFlags(uint32 Flags) mut => VT.SetSecurityFlags(ref this, Flags);
			public HRESULT GetSecurityFlags(out uint32 pFlags) mut => VT.GetSecurityFlags(ref this, out pFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, BG_CERT_STORE_LOCATION StoreLocation, PWSTR StoreName, uint8* pCertHashBlob) SetClientCertificateByID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, BG_CERT_STORE_LOCATION StoreLocation, PWSTR StoreName, PWSTR SubjectName) SetClientCertificateByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self) RemoveClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, out BG_CERT_STORE_LOCATION pStoreLocation, PWSTR* pStoreName, uint8** ppCertHashBlob, PWSTR* pSubjectName) GetClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, PWSTR RequestHeaders) SetCustomHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, PWSTR* pRequestHeaders) GetCustomHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, uint32 Flags) SetSecurityFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions self, out uint32 pFlags) GetSecurityFlags;
			}
		}
		[CRepr]
		public struct IBitsPeerCacheRecord : IUnknown
		{
			public const new Guid IID = .(0x659cdeaf, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetId(out Guid pVal) mut => VT.GetId(ref this, out pVal);
			public HRESULT GetOriginUrl(out PWSTR pVal) mut => VT.GetOriginUrl(ref this, out pVal);
			public HRESULT GetFileSize(out uint64 pVal) mut => VT.GetFileSize(ref this, out pVal);
			public HRESULT GetFileModificationTime(out FILETIME pVal) mut => VT.GetFileModificationTime(ref this, out pVal);
			public HRESULT GetLastAccessTime(out FILETIME pVal) mut => VT.GetLastAccessTime(ref this, out pVal);
			public HRESULT IsFileValidated() mut => VT.IsFileValidated(ref this);
			public HRESULT GetFileRanges(out uint32 pRangeCount, BG_FILE_RANGE** ppRanges) mut => VT.GetFileRanges(ref this, out pRangeCount, ppRanges);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out Guid pVal) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out PWSTR pVal) GetOriginUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out uint64 pVal) GetFileSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out FILETIME pVal) GetFileModificationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out FILETIME pVal) GetLastAccessTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self) IsFileValidated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheRecord self, out uint32 pRangeCount, BG_FILE_RANGE** ppRanges) GetFileRanges;
			}
		}
		[CRepr]
		public struct IEnumBitsPeerCacheRecords : IUnknown
		{
			public const new Guid IID = .(0x659cdea4, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out IBitsPeerCacheRecord* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBitsPeerCacheRecords* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeerCacheRecords self, uint32 celt, out IBitsPeerCacheRecord* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeerCacheRecords self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeerCacheRecords self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeerCacheRecords self, out IEnumBitsPeerCacheRecords* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeerCacheRecords self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBitsPeer : IUnknown
		{
			public const new Guid IID = .(0x659cdea2, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPeerName(PWSTR* pName) mut => VT.GetPeerName(ref this, pName);
			public HRESULT IsAuthenticated(out BOOL pAuth) mut => VT.IsAuthenticated(ref this, out pAuth);
			public HRESULT IsAvailable(out BOOL pOnline) mut => VT.IsAvailable(ref this, out pOnline);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeer self, PWSTR* pName) GetPeerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeer self, out BOOL pAuth) IsAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeer self, out BOOL pOnline) IsAvailable;
			}
		}
		[CRepr]
		public struct IEnumBitsPeers : IUnknown
		{
			public const new Guid IID = .(0x659cdea5, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out IBitsPeer* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBitsPeers* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeers self, uint32 celt, out IBitsPeer* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeers self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeers self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeers self, out IEnumBitsPeers* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBitsPeers self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBitsPeerCacheAdministration : IUnknown
		{
			public const new Guid IID = .(0x659cdead, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaximumCacheSize(out uint32 pBytes) mut => VT.GetMaximumCacheSize(ref this, out pBytes);
			public HRESULT SetMaximumCacheSize(uint32 Bytes) mut => VT.SetMaximumCacheSize(ref this, Bytes);
			public HRESULT GetMaximumContentAge(out uint32 pSeconds) mut => VT.GetMaximumContentAge(ref this, out pSeconds);
			public HRESULT SetMaximumContentAge(uint32 Seconds) mut => VT.SetMaximumContentAge(ref this, Seconds);
			public HRESULT GetConfigurationFlags(out uint32 pFlags) mut => VT.GetConfigurationFlags(ref this, out pFlags);
			public HRESULT SetConfigurationFlags(uint32 Flags) mut => VT.SetConfigurationFlags(ref this, Flags);
			public HRESULT EnumRecords(out IEnumBitsPeerCacheRecords* ppEnum) mut => VT.EnumRecords(ref this, out ppEnum);
			public HRESULT GetRecord(in Guid id, out IBitsPeerCacheRecord* ppRecord) mut => VT.GetRecord(ref this, id, out ppRecord);
			public HRESULT ClearRecords() mut => VT.ClearRecords(ref this);
			public HRESULT DeleteRecord(in Guid id) mut => VT.DeleteRecord(ref this, id);
			public HRESULT DeleteUrl(PWSTR url) mut => VT.DeleteUrl(ref this, url);
			public HRESULT EnumPeers(IEnumBitsPeers** ppEnum) mut => VT.EnumPeers(ref this, ppEnum);
			public HRESULT ClearPeers() mut => VT.ClearPeers(ref this);
			public HRESULT DiscoverPeers() mut => VT.DiscoverPeers(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, out uint32 pBytes) GetMaximumCacheSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, uint32 Bytes) SetMaximumCacheSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, out uint32 pSeconds) GetMaximumContentAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, uint32 Seconds) SetMaximumContentAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, out uint32 pFlags) GetConfigurationFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, uint32 Flags) SetConfigurationFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, out IEnumBitsPeerCacheRecords* ppEnum) EnumRecords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, in Guid id, out IBitsPeerCacheRecord* ppRecord) GetRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self) ClearRecords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, in Guid id) DeleteRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, PWSTR url) DeleteUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self, IEnumBitsPeers** ppEnum) EnumPeers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self) ClearPeers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsPeerCacheAdministration self) DiscoverPeers;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob4 : IBackgroundCopyJob3
		{
			public const new Guid IID = .(0x659cdeae, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPeerCachingFlags(uint32 Flags) mut => VT.SetPeerCachingFlags(ref this, Flags);
			public HRESULT GetPeerCachingFlags(out uint32 pFlags) mut => VT.GetPeerCachingFlags(ref this, out pFlags);
			public HRESULT GetOwnerIntegrityLevel(out uint32 pLevel) mut => VT.GetOwnerIntegrityLevel(ref this, out pLevel);
			public HRESULT GetOwnerElevationState(out BOOL pElevated) mut => VT.GetOwnerElevationState(ref this, out pElevated);
			public HRESULT SetMaximumDownloadTime(uint32 Timeout) mut => VT.SetMaximumDownloadTime(ref this, Timeout);
			public HRESULT GetMaximumDownloadTime(out uint32 pTimeout) mut => VT.GetMaximumDownloadTime(ref this, out pTimeout);

			[CRepr]
			public struct VTable : IBackgroundCopyJob3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, uint32 Flags) SetPeerCachingFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, out uint32 pFlags) GetPeerCachingFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, out uint32 pLevel) GetOwnerIntegrityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, out BOOL pElevated) GetOwnerElevationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, uint32 Timeout) SetMaximumDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob4 self, out uint32 pTimeout) GetMaximumDownloadTime;
			}
		}
		[CRepr]
		public struct IBackgroundCopyFile3 : IBackgroundCopyFile2
		{
			public const new Guid IID = .(0x659cdeaa, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTemporaryName(out PWSTR pFilename) mut => VT.GetTemporaryName(ref this, out pFilename);
			public HRESULT SetValidationState(BOOL state) mut => VT.SetValidationState(ref this, state);
			public HRESULT GetValidationState(out BOOL pState) mut => VT.GetValidationState(ref this, out pState);
			public HRESULT IsDownloadedFromPeer(out BOOL pVal) mut => VT.IsDownloadedFromPeer(ref this, out pVal);

			[CRepr]
			public struct VTable : IBackgroundCopyFile2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile3 self, out PWSTR pFilename) GetTemporaryName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile3 self, BOOL state) SetValidationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile3 self, out BOOL pState) GetValidationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile3 self, out BOOL pVal) IsDownloadedFromPeer;
			}
		}
		[CRepr]
		public struct IBackgroundCopyCallback2 : IBackgroundCopyCallback
		{
			public const new Guid IID = .(0x659cdeac, 0x489e, 0x11d9, 0xa9, 0xcd, 0x00, 0x0d, 0x56, 0x96, 0x52, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FileTransferred(ref IBackgroundCopyJob pJob, ref IBackgroundCopyFile pFile) mut => VT.FileTransferred(ref this, ref pJob, ref pFile);

			[CRepr]
			public struct VTable : IBackgroundCopyCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback2 self, ref IBackgroundCopyJob pJob, ref IBackgroundCopyFile pFile) FileTransferred;
			}
		}
		[CRepr]
		public struct IBitsTokenOptions : IUnknown
		{
			public const new Guid IID = .(0x9a2584c3, 0xf7d2, 0x457a, 0x9a, 0x5e, 0x22, 0xb6, 0x7b, 0xff, 0xc7, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHelperTokenFlags(BG_TOKEN UsageFlags) mut => VT.SetHelperTokenFlags(ref this, UsageFlags);
			public HRESULT GetHelperTokenFlags(out BG_TOKEN pFlags) mut => VT.GetHelperTokenFlags(ref this, out pFlags);
			public HRESULT SetHelperToken() mut => VT.SetHelperToken(ref this);
			public HRESULT ClearHelperToken() mut => VT.ClearHelperToken(ref this);
			public HRESULT GetHelperTokenSid(out PWSTR pSid) mut => VT.GetHelperTokenSid(ref this, out pSid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsTokenOptions self, BG_TOKEN UsageFlags) SetHelperTokenFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsTokenOptions self, out BG_TOKEN pFlags) GetHelperTokenFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsTokenOptions self) SetHelperToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsTokenOptions self) ClearHelperToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBitsTokenOptions self, out PWSTR pSid) GetHelperTokenSid;
			}
		}
		[CRepr]
		public struct IBackgroundCopyFile4 : IBackgroundCopyFile3
		{
			public const new Guid IID = .(0xef7e0655, 0x7888, 0x4960, 0xb0, 0xe5, 0x73, 0x08, 0x46, 0xe0, 0x34, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPeerDownloadStats(out uint64 pFromOrigin, out uint64 pFromPeers) mut => VT.GetPeerDownloadStats(ref this, out pFromOrigin, out pFromPeers);

			[CRepr]
			public struct VTable : IBackgroundCopyFile3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile4 self, out uint64 pFromOrigin, out uint64 pFromPeers) GetPeerDownloadStats;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob5 : IBackgroundCopyJob4
		{
			public const new Guid IID = .(0xe847030c, 0xbbba, 0x4657, 0xaf, 0x6d, 0x48, 0x4a, 0xa4, 0x2b, 0xf1, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProperty(BITS_JOB_PROPERTY_ID PropertyId, BITS_JOB_PROPERTY_VALUE PropertyValue) mut => VT.SetProperty(ref this, PropertyId, PropertyValue);
			public HRESULT GetProperty(BITS_JOB_PROPERTY_ID PropertyId, out BITS_JOB_PROPERTY_VALUE PropertyValue) mut => VT.GetProperty(ref this, PropertyId, out PropertyValue);

			[CRepr]
			public struct VTable : IBackgroundCopyJob4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob5 self, BITS_JOB_PROPERTY_ID PropertyId, BITS_JOB_PROPERTY_VALUE PropertyValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob5 self, BITS_JOB_PROPERTY_ID PropertyId, out BITS_JOB_PROPERTY_VALUE PropertyValue) GetProperty;
			}
		}
		[CRepr]
		public struct IBackgroundCopyFile5 : IBackgroundCopyFile4
		{
			public const new Guid IID = .(0x85c1657f, 0xdafc, 0x40e8, 0x88, 0x34, 0xdf, 0x18, 0xea, 0x25, 0x71, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProperty(BITS_FILE_PROPERTY_ID PropertyId, BITS_FILE_PROPERTY_VALUE PropertyValue) mut => VT.SetProperty(ref this, PropertyId, PropertyValue);
			public HRESULT GetProperty(BITS_FILE_PROPERTY_ID PropertyId, out BITS_FILE_PROPERTY_VALUE PropertyValue) mut => VT.GetProperty(ref this, PropertyId, out PropertyValue);

			[CRepr]
			public struct VTable : IBackgroundCopyFile4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile5 self, BITS_FILE_PROPERTY_ID PropertyId, BITS_FILE_PROPERTY_VALUE PropertyValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile5 self, BITS_FILE_PROPERTY_ID PropertyId, out BITS_FILE_PROPERTY_VALUE PropertyValue) GetProperty;
			}
		}
		[CRepr]
		public struct IBackgroundCopyCallback3 : IBackgroundCopyCallback2
		{
			public const new Guid IID = .(0x98c97bd2, 0xe32b, 0x4ad8, 0xa5, 0x28, 0x95, 0xfd, 0x8b, 0x16, 0xbd, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FileRangesTransferred(ref IBackgroundCopyJob job, ref IBackgroundCopyFile file, uint32 rangeCount, BG_FILE_RANGE* ranges) mut => VT.FileRangesTransferred(ref this, ref job, ref file, rangeCount, ranges);

			[CRepr]
			public struct VTable : IBackgroundCopyCallback2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback3 self, ref IBackgroundCopyJob job, ref IBackgroundCopyFile file, uint32 rangeCount, BG_FILE_RANGE* ranges) FileRangesTransferred;
			}
		}
		[CRepr]
		public struct IBackgroundCopyFile6 : IBackgroundCopyFile5
		{
			public const new Guid IID = .(0xcf6784f7, 0xd677, 0x49fd, 0x93, 0x68, 0xcb, 0x47, 0xae, 0xe9, 0xd1, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateDownloadPosition(uint64 offset) mut => VT.UpdateDownloadPosition(ref this, offset);
			public HRESULT RequestFileRanges(uint32 rangeCount, BG_FILE_RANGE* ranges) mut => VT.RequestFileRanges(ref this, rangeCount, ranges);
			public HRESULT GetFilledFileRanges(out uint32 rangeCount, BG_FILE_RANGE** ranges) mut => VT.GetFilledFileRanges(ref this, out rangeCount, ranges);

			[CRepr]
			public struct VTable : IBackgroundCopyFile5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile6 self, uint64 offset) UpdateDownloadPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile6 self, uint32 rangeCount, BG_FILE_RANGE* ranges) RequestFileRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyFile6 self, out uint32 rangeCount, BG_FILE_RANGE** ranges) GetFilledFileRanges;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJobHttpOptions2 : IBackgroundCopyJobHttpOptions
		{
			public const new Guid IID = .(0xb591a192, 0xa405, 0x4fc3, 0x83, 0x23, 0x4c, 0x5c, 0x54, 0x25, 0x78, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHttpMethod(PWSTR method) mut => VT.SetHttpMethod(ref this, method);
			public HRESULT GetHttpMethod(out PWSTR method) mut => VT.GetHttpMethod(ref this, out method);

			[CRepr]
			public struct VTable : IBackgroundCopyJobHttpOptions.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions2 self, PWSTR method) SetHttpMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions2 self, out PWSTR method) GetHttpMethod;
			}
		}
		[CRepr]
		public struct IBackgroundCopyServerCertificateValidationCallback : IUnknown
		{
			public const new Guid IID = .(0x4cec0d02, 0xdef7, 0x4158, 0x81, 0x3a, 0xc3, 0x2a, 0x46, 0x94, 0x5f, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ValidateServerCertificate(ref IBackgroundCopyJob job, ref IBackgroundCopyFile file, uint32 certLength, uint8* certData, uint32 certEncodingType, uint32 certStoreLength, uint8* certStoreData) mut => VT.ValidateServerCertificate(ref this, ref job, ref file, certLength, certData, certEncodingType, certStoreLength, certStoreData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyServerCertificateValidationCallback self, ref IBackgroundCopyJob job, ref IBackgroundCopyFile file, uint32 certLength, uint8* certData, uint32 certEncodingType, uint32 certStoreLength, uint8* certStoreData) ValidateServerCertificate;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJobHttpOptions3 : IBackgroundCopyJobHttpOptions2
		{
			public const new Guid IID = .(0x8a9263d3, 0xfd4c, 0x4eda, 0x9b, 0x28, 0x30, 0x13, 0x2a, 0x4d, 0x4e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetServerCertificateValidationInterface(ref IUnknown certValidationCallback) mut => VT.SetServerCertificateValidationInterface(ref this, ref certValidationCallback);
			public HRESULT MakeCustomHeadersWriteOnly() mut => VT.MakeCustomHeadersWriteOnly(ref this);

			[CRepr]
			public struct VTable : IBackgroundCopyJobHttpOptions2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions3 self, ref IUnknown certValidationCallback) SetServerCertificateValidationInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJobHttpOptions3 self) MakeCustomHeadersWriteOnly;
			}
		}
		[CRepr]
		public struct IBITSExtensionSetup : IDispatch
		{
			public const new Guid IID = .(0x29cfbbf7, 0x09e4, 0x4b97, 0xb0, 0xbc, 0xf2, 0x28, 0x7e, 0x3d, 0x8e, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableBITSUploads() mut => VT.EnableBITSUploads(ref this);
			public HRESULT DisableBITSUploads() mut => VT.DisableBITSUploads(ref this);
			public HRESULT GetCleanupTaskName(out BSTR pTaskName) mut => VT.GetCleanupTaskName(ref this, out pTaskName);
			public HRESULT GetCleanupTask(in Guid riid, out IUnknown* ppUnk) mut => VT.GetCleanupTask(ref this, riid, out ppUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBITSExtensionSetup self) EnableBITSUploads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBITSExtensionSetup self) DisableBITSUploads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBITSExtensionSetup self, out BSTR pTaskName) GetCleanupTaskName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBITSExtensionSetup self, in Guid riid, out IUnknown* ppUnk) GetCleanupTask;
			}
		}
		[CRepr]
		public struct IBITSExtensionSetupFactory : IDispatch
		{
			public const new Guid IID = .(0xd5d2d542, 0x5503, 0x4e64, 0x8b, 0x48, 0x72, 0xef, 0x91, 0xa3, 0x2e, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObject(BSTR Path, out IBITSExtensionSetup* ppExtensionSetup) mut => VT.GetObject(ref this, Path, out ppExtensionSetup);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBITSExtensionSetupFactory self, BSTR Path, out IBITSExtensionSetup* ppExtensionSetup) GetObject;
			}
		}
		[CRepr]
		public struct IBackgroundCopyJob1 : IUnknown
		{
			public const new Guid IID = .(0x59f5553c, 0x2031, 0x4629, 0xbb, 0x18, 0x26, 0x45, 0xa6, 0x97, 0x09, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CancelJob() mut => VT.CancelJob(ref this);
			public HRESULT GetProgress(uint32 dwFlags, out uint32 pdwProgress) mut => VT.GetProgress(ref this, dwFlags, out pdwProgress);
			public HRESULT GetStatus(out uint32 pdwStatus, out uint32 pdwWin32Result, out uint32 pdwTransportResult, out uint32 pdwNumOfRetries) mut => VT.GetStatus(ref this, out pdwStatus, out pdwWin32Result, out pdwTransportResult, out pdwNumOfRetries);
			public HRESULT AddFiles(uint32 cFileCount, FILESETINFO** ppFileSet) mut => VT.AddFiles(ref this, cFileCount, ppFileSet);
			public HRESULT GetFile(uint32 cFileIndex, out FILESETINFO pFileInfo) mut => VT.GetFile(ref this, cFileIndex, out pFileInfo);
			public HRESULT GetFileCount(out uint32 pdwFileCount) mut => VT.GetFileCount(ref this, out pdwFileCount);
			public HRESULT SwitchToForeground() mut => VT.SwitchToForeground(ref this);
			public HRESULT get_JobID(out Guid pguidJobID) mut => VT.get_JobID(ref this, out pguidJobID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self) CancelJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, uint32 dwFlags, out uint32 pdwProgress) GetProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, out uint32 pdwStatus, out uint32 pdwWin32Result, out uint32 pdwTransportResult, out uint32 pdwNumOfRetries) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, uint32 cFileCount, FILESETINFO** ppFileSet) AddFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, uint32 cFileIndex, out FILESETINFO pFileInfo) GetFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, out uint32 pdwFileCount) GetFileCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self) SwitchToForeground;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyJob1 self, out Guid pguidJobID) get_JobID;
			}
		}
		[CRepr]
		public struct IEnumBackgroundCopyJobs1 : IUnknown
		{
			public const new Guid IID = .(0x8baeba9d, 0x8f1c, 0x42c4, 0xb8, 0x2c, 0x09, 0xae, 0x79, 0x98, 0x0d, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, Guid* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBackgroundCopyJobs1* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs1 self, uint32 celt, Guid* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs1 self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs1 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs1 self, out IEnumBackgroundCopyJobs1* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyJobs1 self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBackgroundCopyGroup : IUnknown
		{
			public const new Guid IID = .(0x1ded80a7, 0x53ea, 0x424f, 0x8a, 0x04, 0x17, 0xfe, 0xa9, 0xad, 0xc4, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProp(GROUPPROP propID, out VARIANT pvarVal) mut => VT.GetProp(ref this, propID, out pvarVal);
			public HRESULT SetProp(GROUPPROP propID, ref VARIANT pvarVal) mut => VT.SetProp(ref this, propID, ref pvarVal);
			public HRESULT GetProgress(uint32 dwFlags, out uint32 pdwProgress) mut => VT.GetProgress(ref this, dwFlags, out pdwProgress);
			public HRESULT GetStatus(out uint32 pdwStatus, out uint32 pdwJobIndex) mut => VT.GetStatus(ref this, out pdwStatus, out pdwJobIndex);
			public HRESULT GetJob(Guid jobID, out IBackgroundCopyJob1* ppJob) mut => VT.GetJob(ref this, jobID, out ppJob);
			public HRESULT SuspendGroup() mut => VT.SuspendGroup(ref this);
			public HRESULT ResumeGroup() mut => VT.ResumeGroup(ref this);
			public HRESULT CancelGroup() mut => VT.CancelGroup(ref this);
			public HRESULT get_Size(out uint32 pdwSize) mut => VT.get_Size(ref this, out pdwSize);
			public HRESULT get_GroupID(out Guid pguidGroupID) mut => VT.get_GroupID(ref this, out pguidGroupID);
			public HRESULT CreateJob(Guid guidJobID, out IBackgroundCopyJob1* ppJob) mut => VT.CreateJob(ref this, guidJobID, out ppJob);
			public HRESULT EnumJobs(uint32 dwFlags, out IEnumBackgroundCopyJobs1* ppEnumJobs) mut => VT.EnumJobs(ref this, dwFlags, out ppEnumJobs);
			public HRESULT SwitchToForeground() mut => VT.SwitchToForeground(ref this);
			public HRESULT QueryNewJobInterface(in Guid iid, out IUnknown* pUnk) mut => VT.QueryNewJobInterface(ref this, iid, out pUnk);
			public HRESULT SetNotificationPointer(in Guid iid, ref IUnknown pUnk) mut => VT.SetNotificationPointer(ref this, iid, ref pUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, GROUPPROP propID, out VARIANT pvarVal) GetProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, GROUPPROP propID, ref VARIANT pvarVal) SetProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, uint32 dwFlags, out uint32 pdwProgress) GetProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, out uint32 pdwStatus, out uint32 pdwJobIndex) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, Guid jobID, out IBackgroundCopyJob1* ppJob) GetJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self) SuspendGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self) ResumeGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self) CancelGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, out uint32 pdwSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, out Guid pguidGroupID) get_GroupID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, Guid guidJobID, out IBackgroundCopyJob1* ppJob) CreateJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, uint32 dwFlags, out IEnumBackgroundCopyJobs1* ppEnumJobs) EnumJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self) SwitchToForeground;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, in Guid iid, out IUnknown* pUnk) QueryNewJobInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyGroup self, in Guid iid, ref IUnknown pUnk) SetNotificationPointer;
			}
		}
		[CRepr]
		public struct IEnumBackgroundCopyGroups : IUnknown
		{
			public const new Guid IID = .(0xd993e603, 0x4aa4, 0x47c5, 0x86, 0x65, 0xc2, 0x0d, 0x39, 0xc2, 0xba, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, Guid* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumBackgroundCopyGroups* ppenum) mut => VT.Clone(ref this, out ppenum);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyGroups self, uint32 celt, Guid* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyGroups self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyGroups self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyGroups self, out IEnumBackgroundCopyGroups* ppenum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumBackgroundCopyGroups self, out uint32 puCount) GetCount;
			}
		}
		[CRepr]
		public struct IBackgroundCopyCallback1 : IUnknown
		{
			public const new Guid IID = .(0x084f6593, 0x3800, 0x4e08, 0x9b, 0x59, 0x99, 0xfa, 0x59, 0xad, 0xdf, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatus(ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwStatus, uint32 dwNumOfRetries, uint32 dwWin32Result, uint32 dwTransportResult) mut => VT.OnStatus(ref this, ref pGroup, ref pJob, dwFileIndex, dwStatus, dwNumOfRetries, dwWin32Result, dwTransportResult);
			public HRESULT OnProgress(uint32 ProgressType, ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwProgressValue) mut => VT.OnProgress(ref this, ProgressType, ref pGroup, ref pJob, dwFileIndex, dwProgressValue);
			public HRESULT OnProgressEx(uint32 ProgressType, ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwProgressValue, uint32 dwByteArraySize, uint8* pByte) mut => VT.OnProgressEx(ref this, ProgressType, ref pGroup, ref pJob, dwFileIndex, dwProgressValue, dwByteArraySize, pByte);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback1 self, ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwStatus, uint32 dwNumOfRetries, uint32 dwWin32Result, uint32 dwTransportResult) OnStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback1 self, uint32 ProgressType, ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwProgressValue) OnProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyCallback1 self, uint32 ProgressType, ref IBackgroundCopyGroup pGroup, ref IBackgroundCopyJob1 pJob, uint32 dwFileIndex, uint32 dwProgressValue, uint32 dwByteArraySize, uint8* pByte) OnProgressEx;
			}
		}
		[CRepr]
		public struct IBackgroundCopyQMgr : IUnknown
		{
			public const new Guid IID = .(0x16f41c69, 0x09f5, 0x41d2, 0x8c, 0xd8, 0x3c, 0x08, 0xc4, 0x7b, 0xc8, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateGroup(Guid guidGroupID, out IBackgroundCopyGroup* ppGroup) mut => VT.CreateGroup(ref this, guidGroupID, out ppGroup);
			public HRESULT GetGroup(Guid groupID, out IBackgroundCopyGroup* ppGroup) mut => VT.GetGroup(ref this, groupID, out ppGroup);
			public HRESULT EnumGroups(uint32 dwFlags, out IEnumBackgroundCopyGroups* ppEnumGroups) mut => VT.EnumGroups(ref this, dwFlags, out ppEnumGroups);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyQMgr self, Guid guidGroupID, out IBackgroundCopyGroup* ppGroup) CreateGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyQMgr self, Guid groupID, out IBackgroundCopyGroup* ppGroup) GetGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBackgroundCopyQMgr self, uint32 dwFlags, out IEnumBackgroundCopyGroups* ppEnumGroups) EnumGroups;
			}
		}
		
	}
}
