using System;

// namespace System.Com.Urlmon
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MKSYS_URLMONIKER = 6;
		public const uint32 URL_MK_LEGACY = 0;
		public const uint32 URL_MK_UNIFORM = 1;
		public const uint32 URL_MK_NO_CANONICALIZE = 2;
		public const uint32 FIEF_FLAG_FORCE_JITUI = 1;
		public const uint32 FIEF_FLAG_PEEK = 2;
		public const uint32 FIEF_FLAG_SKIP_INSTALLED_VERSION_CHECK = 4;
		public const uint32 FIEF_FLAG_RESERVED_0 = 8;
		public const uint32 FMFD_DEFAULT = 0;
		public const uint32 FMFD_URLASFILENAME = 1;
		public const uint32 FMFD_ENABLEMIMESNIFFING = 2;
		public const uint32 FMFD_IGNOREMIMETEXTPLAIN = 4;
		public const uint32 FMFD_SERVERMIME = 8;
		public const uint32 FMFD_RESPECTTEXTPLAIN = 16;
		public const uint32 FMFD_RETURNUPDATEDIMGMIMES = 32;
		public const uint32 FMFD_RESERVED_1 = 64;
		public const uint32 FMFD_RESERVED_2 = 128;
		public const uint32 UAS_EXACTLEGACY = 4096;
		public const uint32 URLMON_OPTION_USERAGENT = 268435457;
		public const uint32 URLMON_OPTION_USERAGENT_REFRESH = 268435458;
		public const uint32 URLMON_OPTION_URL_ENCODING = 268435460;
		public const uint32 URLMON_OPTION_USE_BINDSTRINGCREDS = 268435464;
		public const uint32 URLMON_OPTION_USE_BROWSERAPPSDOCUMENTS = 268435472;
		public const uint32 CF_NULL = 0;
		public const HRESULT MK_S_ASYNCHRONOUS = 262632;
		public const int32 S_ASYNCHRONOUS = 262632;
		public const HRESULT E_PENDING = -2147483638;
		public const HRESULT INET_E_INVALID_URL = -2146697214;
		public const HRESULT INET_E_NO_SESSION = -2146697213;
		public const HRESULT INET_E_CANNOT_CONNECT = -2146697212;
		public const HRESULT INET_E_RESOURCE_NOT_FOUND = -2146697211;
		public const HRESULT INET_E_OBJECT_NOT_FOUND = -2146697210;
		public const HRESULT INET_E_DATA_NOT_AVAILABLE = -2146697209;
		public const HRESULT INET_E_DOWNLOAD_FAILURE = -2146697208;
		public const HRESULT INET_E_AUTHENTICATION_REQUIRED = -2146697207;
		public const HRESULT INET_E_NO_VALID_MEDIA = -2146697206;
		public const HRESULT INET_E_CONNECTION_TIMEOUT = -2146697205;
		public const HRESULT INET_E_INVALID_REQUEST = -2146697204;
		public const HRESULT INET_E_UNKNOWN_PROTOCOL = -2146697203;
		public const HRESULT INET_E_SECURITY_PROBLEM = -2146697202;
		public const HRESULT INET_E_CANNOT_LOAD_DATA = -2146697201;
		public const HRESULT INET_E_CANNOT_INSTANTIATE_OBJECT = -2146697200;
		public const HRESULT INET_E_INVALID_CERTIFICATE = -2146697191;
		public const HRESULT INET_E_REDIRECT_FAILED = -2146697196;
		public const HRESULT INET_E_REDIRECT_TO_DIR = -2146697195;
		public const HRESULT INET_E_CANNOT_LOCK_REQUEST = -2146697194;
		public const HRESULT INET_E_USE_EXTEND_BINDING = -2146697193;
		public const HRESULT INET_E_TERMINATED_BIND = -2146697192;
		public const HRESULT INET_E_RESERVED_1 = -2146697190;
		public const HRESULT INET_E_BLOCKED_REDIRECT_XSECURITYID = -2146697189;
		public const HRESULT INET_E_DOMINJECTIONVALIDATION = -2146697188;
		public const HRESULT INET_E_VTAB_SWITCH_FORCE_ENGINE = -2146697187;
		public const HRESULT INET_E_HSTS_CERTIFICATE_ERROR = -2146697186;
		public const HRESULT INET_E_RESERVED_2 = -2146697185;
		public const HRESULT INET_E_RESERVED_3 = -2146697184;
		public const HRESULT INET_E_RESERVED_4 = -2146697183;
		public const HRESULT INET_E_RESERVED_5 = -2146697182;
		public const HRESULT INET_E_ERROR_FIRST = -2146697214;
		public const HRESULT INET_E_CODE_DOWNLOAD_DECLINED = -2146696960;
		public const HRESULT INET_E_RESULT_DISPATCHED = -2146696704;
		public const HRESULT INET_E_CANNOT_REPLACE_SFP_FILE = -2146696448;
		public const HRESULT INET_E_CODE_INSTALL_SUPPRESSED = -2146696192;
		public const HRESULT INET_E_CODE_INSTALL_BLOCKED_BY_HASH_POLICY = -2146695936;
		public const HRESULT INET_E_DOWNLOAD_BLOCKED_BY_INPRIVATE = -2146695935;
		public const HRESULT INET_E_CODE_INSTALL_BLOCKED_IMMERSIVE = -2146695934;
		public const HRESULT INET_E_FORBIDFRAMING = -2146695933;
		public const HRESULT INET_E_CODE_INSTALL_BLOCKED_ARM = -2146695932;
		public const HRESULT INET_E_BLOCKED_PLUGGABLE_PROTOCOL = -2146695931;
		public const HRESULT INET_E_BLOCKED_ENHANCEDPROTECTEDMODE = -2146695930;
		public const HRESULT INET_E_CODE_INSTALL_BLOCKED_BITNESS = -2146695929;
		public const HRESULT INET_E_DOWNLOAD_BLOCKED_BY_CSP = -2146695928;
		public const int32 INET_E_ERROR_LAST = -2146695928;
		public const uint32 Uri_DISPLAY_NO_FRAGMENT = 1;
		public const uint32 Uri_PUNYCODE_IDN_HOST = 2;
		public const uint32 Uri_DISPLAY_IDN_HOST = 4;
		public const uint32 Uri_DISPLAY_NO_PUNYCODE = 8;
		public const uint32 Uri_ENCODING_USER_INFO_AND_PATH_IS_PERCENT_ENCODED_UTF8 = 1;
		public const uint32 Uri_ENCODING_USER_INFO_AND_PATH_IS_CP = 2;
		public const uint32 Uri_ENCODING_HOST_IS_IDN = 4;
		public const uint32 Uri_ENCODING_HOST_IS_PERCENT_ENCODED_UTF8 = 8;
		public const uint32 Uri_ENCODING_HOST_IS_PERCENT_ENCODED_CP = 16;
		public const uint32 Uri_ENCODING_QUERY_AND_FRAGMENT_IS_PERCENT_ENCODED_UTF8 = 32;
		public const uint32 Uri_ENCODING_QUERY_AND_FRAGMENT_IS_CP = 64;
		public const uint32 UriBuilder_USE_ORIGINAL_FLAGS = 1;
		public const uint32 WININETINFO_OPTION_LOCK_HANDLE = 65534;
		public const uint32 URLOSTRM_USECACHEDCOPY_ONLY = 1;
		public const uint32 URLOSTRM_USECACHEDCOPY = 2;
		public const uint32 URLOSTRM_GETNEWESTVERSION = 3;
		public const uint32 SET_FEATURE_ON_THREAD = 1;
		public const uint32 SET_FEATURE_ON_PROCESS = 2;
		public const uint32 SET_FEATURE_IN_REGISTRY = 4;
		public const uint32 SET_FEATURE_ON_THREAD_LOCALMACHINE = 8;
		public const uint32 SET_FEATURE_ON_THREAD_INTRANET = 16;
		public const uint32 SET_FEATURE_ON_THREAD_TRUSTED = 32;
		public const uint32 SET_FEATURE_ON_THREAD_INTERNET = 64;
		public const uint32 SET_FEATURE_ON_THREAD_RESTRICTED = 128;
		public const uint32 GET_FEATURE_FROM_THREAD = 1;
		public const uint32 GET_FEATURE_FROM_PROCESS = 2;
		public const uint32 GET_FEATURE_FROM_REGISTRY = 4;
		public const uint32 GET_FEATURE_FROM_THREAD_LOCALMACHINE = 8;
		public const uint32 GET_FEATURE_FROM_THREAD_INTRANET = 16;
		public const uint32 GET_FEATURE_FROM_THREAD_TRUSTED = 32;
		public const uint32 GET_FEATURE_FROM_THREAD_INTERNET = 64;
		public const uint32 GET_FEATURE_FROM_THREAD_RESTRICTED = 128;
		public const HRESULT INET_E_USE_DEFAULT_PROTOCOLHANDLER = -2146697199;
		public const HRESULT INET_E_USE_DEFAULT_SETTING = -2146697198;
		public const int32 INET_E_DEFAULT_ACTION = -2146697199;
		public const HRESULT INET_E_QUERYOPTION_UNKNOWN = -2146697197;
		public const HRESULT INET_E_REDIRECTING = -2146697196;
		public const uint32 PROTOCOLFLAG_NO_PICS_CHECK = 1;
		public const uint32 MUTZ_NOSAVEDFILECHECK = 1;
		public const uint32 MUTZ_ISFILE = 2;
		public const uint32 MUTZ_ACCEPT_WILDCARD_SCHEME = 128;
		public const uint32 MUTZ_ENFORCERESTRICTED = 256;
		public const uint32 MUTZ_RESERVED = 512;
		public const uint32 MUTZ_REQUIRESAVEDFILECHECK = 1024;
		public const uint32 MUTZ_DONT_UNESCAPE = 2048;
		public const uint32 MUTZ_DONT_USE_CACHE = 4096;
		public const uint32 MUTZ_FORCE_INTRANET_FLAGS = 8192;
		public const uint32 MUTZ_IGNORE_ZONE_MAPPINGS = 16384;
		public const uint32 MAX_SIZE_SECURITY_ID = 512;
		public const uint32 URLACTION_MIN = 4096;
		public const uint32 URLACTION_DOWNLOAD_MIN = 4096;
		public const uint32 URLACTION_DOWNLOAD_SIGNED_ACTIVEX = 4097;
		public const uint32 URLACTION_DOWNLOAD_UNSIGNED_ACTIVEX = 4100;
		public const uint32 URLACTION_DOWNLOAD_CURR_MAX = 4100;
		public const uint32 URLACTION_DOWNLOAD_MAX = 4607;
		public const uint32 URLACTION_ACTIVEX_MIN = 4608;
		public const uint32 URLACTION_ACTIVEX_RUN = 4608;
		public const uint32 URLPOLICY_ACTIVEX_CHECK_LIST = 65536;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY = 4609;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_DATA_SAFETY = 4610;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY = 4611;
		public const uint32 URLACTION_SCRIPT_OVERRIDE_SAFETY = 5121;
		public const uint32 URLACTION_ACTIVEX_CONFIRM_NOOBJECTSAFETY = 4612;
		public const uint32 URLACTION_ACTIVEX_TREATASUNTRUSTED = 4613;
		public const uint32 URLACTION_ACTIVEX_NO_WEBOC_SCRIPT = 4614;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_REPURPOSEDETECTION = 4615;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_OPTIN = 4616;
		public const uint32 URLACTION_ACTIVEX_SCRIPTLET_RUN = 4617;
		public const uint32 URLACTION_ACTIVEX_DYNSRC_VIDEO_AND_ANIMATION = 4618;
		public const uint32 URLACTION_ACTIVEX_OVERRIDE_DOMAINLIST = 4619;
		public const uint32 URLACTION_ACTIVEX_ALLOW_TDC = 4620;
		public const uint32 URLACTION_ACTIVEX_CURR_MAX = 4620;
		public const uint32 URLACTION_ACTIVEX_MAX = 5119;
		public const uint32 URLACTION_SCRIPT_MIN = 5120;
		public const uint32 URLACTION_SCRIPT_RUN = 5120;
		public const uint32 URLACTION_SCRIPT_JAVA_USE = 5122;
		public const uint32 URLACTION_SCRIPT_SAFE_ACTIVEX = 5125;
		public const uint32 URLACTION_CROSS_DOMAIN_DATA = 5126;
		public const uint32 URLACTION_SCRIPT_PASTE = 5127;
		public const uint32 URLACTION_ALLOW_XDOMAIN_SUBFRAME_RESIZE = 5128;
		public const uint32 URLACTION_SCRIPT_XSSFILTER = 5129;
		public const uint32 URLACTION_SCRIPT_NAVIGATE = 5130;
		public const uint32 URLACTION_PLUGGABLE_PROTOCOL_XHR = 5131;
		public const uint32 URLACTION_ALLOW_VBSCRIPT_IE = 5132;
		public const uint32 URLACTION_ALLOW_JSCRIPT_IE = 5133;
		public const uint32 URLACTION_SCRIPT_CURR_MAX = 5133;
		public const uint32 URLACTION_SCRIPT_MAX = 5631;
		public const uint32 URLACTION_HTML_MIN = 5632;
		public const uint32 URLACTION_HTML_SUBMIT_FORMS = 5633;
		public const uint32 URLACTION_HTML_SUBMIT_FORMS_FROM = 5634;
		public const uint32 URLACTION_HTML_SUBMIT_FORMS_TO = 5635;
		public const uint32 URLACTION_HTML_FONT_DOWNLOAD = 5636;
		public const uint32 URLACTION_HTML_JAVA_RUN = 5637;
		public const uint32 URLACTION_HTML_USERDATA_SAVE = 5638;
		public const uint32 URLACTION_HTML_SUBFRAME_NAVIGATE = 5639;
		public const uint32 URLACTION_HTML_META_REFRESH = 5640;
		public const uint32 URLACTION_HTML_MIXED_CONTENT = 5641;
		public const uint32 URLACTION_HTML_INCLUDE_FILE_PATH = 5642;
		public const uint32 URLACTION_HTML_ALLOW_INJECTED_DYNAMIC_HTML = 5643;
		public const uint32 URLACTION_HTML_REQUIRE_UTF8_DOCUMENT_CODEPAGE = 5644;
		public const uint32 URLACTION_HTML_ALLOW_CROSS_DOMAIN_CANVAS = 5645;
		public const uint32 URLACTION_HTML_ALLOW_WINDOW_CLOSE = 5646;
		public const uint32 URLACTION_HTML_ALLOW_CROSS_DOMAIN_WEBWORKER = 5647;
		public const uint32 URLACTION_HTML_ALLOW_CROSS_DOMAIN_TEXTTRACK = 5648;
		public const uint32 URLACTION_HTML_ALLOW_INDEXEDDB = 5649;
		public const uint32 URLACTION_HTML_MAX = 6143;
		public const uint32 URLACTION_SHELL_MIN = 6144;
		public const uint32 URLACTION_SHELL_INSTALL_DTITEMS = 6144;
		public const uint32 URLACTION_SHELL_MOVE_OR_COPY = 6146;
		public const uint32 URLACTION_SHELL_FILE_DOWNLOAD = 6147;
		public const uint32 URLACTION_SHELL_VERB = 6148;
		public const uint32 URLACTION_SHELL_WEBVIEW_VERB = 6149;
		public const uint32 URLACTION_SHELL_SHELLEXECUTE = 6150;
		public const uint32 URLACTION_SHELL_EXECUTE_HIGHRISK = 6150;
		public const uint32 URLACTION_SHELL_EXECUTE_MODRISK = 6151;
		public const uint32 URLACTION_SHELL_EXECUTE_LOWRISK = 6152;
		public const uint32 URLACTION_SHELL_POPUPMGR = 6153;
		public const uint32 URLACTION_SHELL_RTF_OBJECTS_LOAD = 6154;
		public const uint32 URLACTION_SHELL_ENHANCED_DRAGDROP_SECURITY = 6155;
		public const uint32 URLACTION_SHELL_EXTENSIONSECURITY = 6156;
		public const uint32 URLACTION_SHELL_SECURE_DRAGSOURCE = 6157;
		public const uint32 URLACTION_SHELL_REMOTEQUERY = 6158;
		public const uint32 URLACTION_SHELL_PREVIEW = 6159;
		public const uint32 URLACTION_SHELL_SHARE = 6160;
		public const uint32 URLACTION_SHELL_ALLOW_CROSS_SITE_SHARE = 6161;
		public const uint32 URLACTION_SHELL_TOCTOU_RISK = 6162;
		public const uint32 URLACTION_SHELL_CURR_MAX = 6162;
		public const uint32 URLACTION_SHELL_MAX = 6655;
		public const uint32 URLACTION_NETWORK_MIN = 6656;
		public const uint32 URLACTION_CREDENTIALS_USE = 6656;
		public const uint32 URLPOLICY_CREDENTIALS_SILENT_LOGON_OK = 0;
		public const uint32 URLPOLICY_CREDENTIALS_MUST_PROMPT_USER = 65536;
		public const uint32 URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT = 131072;
		public const uint32 URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY = 196608;
		public const uint32 URLACTION_AUTHENTICATE_CLIENT = 6657;
		public const uint32 URLPOLICY_AUTHENTICATE_CLEARTEXT_OK = 0;
		public const uint32 URLPOLICY_AUTHENTICATE_CHALLENGE_RESPONSE = 65536;
		public const uint32 URLPOLICY_AUTHENTICATE_MUTUAL_ONLY = 196608;
		public const uint32 URLACTION_COOKIES = 6658;
		public const uint32 URLACTION_COOKIES_SESSION = 6659;
		public const uint32 URLACTION_CLIENT_CERT_PROMPT = 6660;
		public const uint32 URLACTION_COOKIES_THIRD_PARTY = 6661;
		public const uint32 URLACTION_COOKIES_SESSION_THIRD_PARTY = 6662;
		public const uint32 URLACTION_COOKIES_ENABLED = 6672;
		public const uint32 URLACTION_NETWORK_CURR_MAX = 6672;
		public const uint32 URLACTION_NETWORK_MAX = 7167;
		public const uint32 URLACTION_JAVA_MIN = 7168;
		public const uint32 URLACTION_JAVA_PERMISSIONS = 7168;
		public const uint32 URLPOLICY_JAVA_PROHIBIT = 0;
		public const uint32 URLPOLICY_JAVA_HIGH = 65536;
		public const uint32 URLPOLICY_JAVA_MEDIUM = 131072;
		public const uint32 URLPOLICY_JAVA_LOW = 196608;
		public const uint32 URLPOLICY_JAVA_CUSTOM = 8388608;
		public const uint32 URLACTION_JAVA_CURR_MAX = 7168;
		public const uint32 URLACTION_JAVA_MAX = 7423;
		public const uint32 URLACTION_INFODELIVERY_MIN = 7424;
		public const uint32 URLACTION_INFODELIVERY_NO_ADDING_CHANNELS = 7424;
		public const uint32 URLACTION_INFODELIVERY_NO_EDITING_CHANNELS = 7425;
		public const uint32 URLACTION_INFODELIVERY_NO_REMOVING_CHANNELS = 7426;
		public const uint32 URLACTION_INFODELIVERY_NO_ADDING_SUBSCRIPTIONS = 7427;
		public const uint32 URLACTION_INFODELIVERY_NO_EDITING_SUBSCRIPTIONS = 7428;
		public const uint32 URLACTION_INFODELIVERY_NO_REMOVING_SUBSCRIPTIONS = 7429;
		public const uint32 URLACTION_INFODELIVERY_NO_CHANNEL_LOGGING = 7430;
		public const uint32 URLACTION_INFODELIVERY_CURR_MAX = 7430;
		public const uint32 URLACTION_INFODELIVERY_MAX = 7679;
		public const uint32 URLACTION_CHANNEL_SOFTDIST_MIN = 7680;
		public const uint32 URLACTION_CHANNEL_SOFTDIST_PERMISSIONS = 7685;
		public const uint32 URLPOLICY_CHANNEL_SOFTDIST_PROHIBIT = 65536;
		public const uint32 URLPOLICY_CHANNEL_SOFTDIST_PRECACHE = 131072;
		public const uint32 URLPOLICY_CHANNEL_SOFTDIST_AUTOINSTALL = 196608;
		public const uint32 URLACTION_CHANNEL_SOFTDIST_MAX = 7935;
		public const uint32 URLACTION_DOTNET_USERCONTROLS = 8197;
		public const uint32 URLACTION_BEHAVIOR_MIN = 8192;
		public const uint32 URLACTION_BEHAVIOR_RUN = 8192;
		public const uint32 URLPOLICY_BEHAVIOR_CHECK_LIST = 65536;
		public const uint32 URLACTION_FEATURE_MIN = 8448;
		public const uint32 URLACTION_FEATURE_MIME_SNIFFING = 8448;
		public const uint32 URLACTION_FEATURE_ZONE_ELEVATION = 8449;
		public const uint32 URLACTION_FEATURE_WINDOW_RESTRICTIONS = 8450;
		public const uint32 URLACTION_FEATURE_SCRIPT_STATUS_BAR = 8451;
		public const uint32 URLACTION_FEATURE_FORCE_ADDR_AND_STATUS = 8452;
		public const uint32 URLACTION_FEATURE_BLOCK_INPUT_PROMPTS = 8453;
		public const uint32 URLACTION_FEATURE_DATA_BINDING = 8454;
		public const uint32 URLACTION_FEATURE_CROSSDOMAIN_FOCUS_CHANGE = 8455;
		public const uint32 URLACTION_AUTOMATIC_DOWNLOAD_UI_MIN = 8704;
		public const uint32 URLACTION_AUTOMATIC_DOWNLOAD_UI = 8704;
		public const uint32 URLACTION_AUTOMATIC_ACTIVEX_UI = 8705;
		public const uint32 URLACTION_ALLOW_RESTRICTEDPROTOCOLS = 8960;
		public const uint32 URLACTION_ALLOW_APEVALUATION = 8961;
		public const uint32 URLACTION_ALLOW_XHR_EVALUATION = 8962;
		public const uint32 URLACTION_WINDOWS_BROWSER_APPLICATIONS = 9216;
		public const uint32 URLACTION_XPS_DOCUMENTS = 9217;
		public const uint32 URLACTION_LOOSE_XAML = 9218;
		public const uint32 URLACTION_LOWRIGHTS = 9472;
		public const uint32 URLACTION_WINFX_SETUP = 9728;
		public const uint32 URLACTION_INPRIVATE_BLOCKING = 9984;
		public const uint32 URLACTION_ALLOW_AUDIO_VIDEO = 9985;
		public const uint32 URLACTION_ALLOW_ACTIVEX_FILTERING = 9986;
		public const uint32 URLACTION_ALLOW_STRUCTURED_STORAGE_SNIFFING = 9987;
		public const uint32 URLACTION_ALLOW_AUDIO_VIDEO_PLUGINS = 9988;
		public const uint32 URLACTION_ALLOW_ZONE_ELEVATION_VIA_OPT_OUT = 9989;
		public const uint32 URLACTION_ALLOW_ZONE_ELEVATION_OPT_OUT_ADDITION = 9990;
		public const uint32 URLACTION_ALLOW_CROSSDOMAIN_DROP_WITHIN_WINDOW = 9992;
		public const uint32 URLACTION_ALLOW_CROSSDOMAIN_DROP_ACROSS_WINDOWS = 9993;
		public const uint32 URLACTION_ALLOW_CROSSDOMAIN_APPCACHE_MANIFEST = 9994;
		public const uint32 URLACTION_ALLOW_RENDER_LEGACY_DXTFILTERS = 9995;
		public const uint32 URLACTION_ALLOW_ANTIMALWARE_SCANNING_OF_ACTIVEX = 9996;
		public const uint32 URLACTION_ALLOW_CSS_EXPRESSIONS = 9997;
		public const uint32 URLPOLICY_ALLOW = 0;
		public const uint32 URLPOLICY_QUERY = 1;
		public const uint32 URLPOLICY_DISALLOW = 3;
		public const uint32 URLPOLICY_NOTIFY_ON_ALLOW = 16;
		public const uint32 URLPOLICY_NOTIFY_ON_DISALLOW = 32;
		public const uint32 URLPOLICY_LOG_ON_ALLOW = 64;
		public const uint32 URLPOLICY_LOG_ON_DISALLOW = 128;
		public const uint32 URLPOLICY_MASK_PERMISSIONS = 15;
		public const uint32 URLPOLICY_DONTCHECKDLGBOX = 256;
		public const uint32 URLZONE_ESC_FLAG = 256;
		public const uint32 SECURITY_IE_STATE_GREEN = 0;
		public const uint32 SECURITY_IE_STATE_RED = 1;
		public const uint32 SOFTDIST_FLAG_USAGE_EMAIL = 1;
		public const uint32 SOFTDIST_FLAG_USAGE_PRECACHE = 2;
		public const uint32 SOFTDIST_FLAG_USAGE_AUTOINSTALL = 4;
		public const uint32 SOFTDIST_FLAG_DELETE_SUBSCRIPTION = 8;
		public const uint32 SOFTDIST_ADSTATE_NONE = 0;
		public const uint32 SOFTDIST_ADSTATE_AVAILABLE = 1;
		public const uint32 SOFTDIST_ADSTATE_DOWNLOADED = 2;
		public const uint32 SOFTDIST_ADSTATE_INSTALLED = 3;
		public const uint32 CONFIRMSAFETYACTION_LOADOBJECT = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum IEObjectType : int32
		{
			IE_EPM_OBJECT_EVENT = 0,
			IE_EPM_OBJECT_MUTEX = 1,
			IE_EPM_OBJECT_SEMAPHORE = 2,
			IE_EPM_OBJECT_SHARED_MEMORY = 3,
			IE_EPM_OBJECT_WAITABLE_TIMER = 4,
			IE_EPM_OBJECT_FILE = 5,
			IE_EPM_OBJECT_NAMED_PIPE = 6,
			IE_EPM_OBJECT_REGISTRY = 7,
		}
		[AllowDuplicates]
		public enum MONIKERPROPERTY : int32
		{
			MIMETYPEPROP = 0,
			USE_SRC_URL = 1,
			CLASSIDPROP = 2,
			TRUSTEDDOWNLOADPROP = 3,
			POPUPLEVELPROP = 4,
		}
		[AllowDuplicates]
		public enum BINDVERB : int32
		{
			BINDVERB_GET = 0,
			BINDVERB_POST = 1,
			BINDVERB_PUT = 2,
			BINDVERB_CUSTOM = 3,
			BINDVERB_RESERVED1 = 4,
		}
		[AllowDuplicates]
		public enum BINDF : int32
		{
			BINDF_ASYNCHRONOUS = 1,
			BINDF_ASYNCSTORAGE = 2,
			BINDF_NOPROGRESSIVERENDERING = 4,
			BINDF_OFFLINEOPERATION = 8,
			BINDF_GETNEWESTVERSION = 16,
			BINDF_NOWRITECACHE = 32,
			BINDF_NEEDFILE = 64,
			BINDF_PULLDATA = 128,
			BINDF_IGNORESECURITYPROBLEM = 256,
			BINDF_RESYNCHRONIZE = 512,
			BINDF_HYPERLINK = 1024,
			BINDF_NO_UI = 2048,
			BINDF_SILENTOPERATION = 4096,
			BINDF_PRAGMA_NO_CACHE = 8192,
			BINDF_GETCLASSOBJECT = 16384,
			BINDF_RESERVED_1 = 32768,
			BINDF_FREE_THREADED = 65536,
			BINDF_DIRECT_READ = 131072,
			BINDF_FORMS_SUBMIT = 262144,
			BINDF_GETFROMCACHE_IF_NET_FAIL = 524288,
			BINDF_FROMURLMON = 1048576,
			BINDF_FWD_BACK = 2097152,
			BINDF_PREFERDEFAULTHANDLER = 4194304,
			BINDF_ENFORCERESTRICTED = 8388608,
			BINDF_RESERVED_2 = -2147483648,
			BINDF_RESERVED_3 = 16777216,
			BINDF_RESERVED_4 = 33554432,
			BINDF_RESERVED_5 = 67108864,
			BINDF_RESERVED_6 = 134217728,
			BINDF_RESERVED_7 = 1073741824,
			BINDF_RESERVED_8 = 536870912,
		}
		[AllowDuplicates]
		public enum URL_ENCODING : int32
		{
			URL_ENCODING_NONE = 0,
			URL_ENCODING_ENABLE_UTF8 = 268435456,
			URL_ENCODING_DISABLE_UTF8 = 536870912,
		}
		[AllowDuplicates]
		public enum BINDINFO_OPTIONS : int32
		{
			BINDINFO_OPTIONS_WININETFLAG = 65536,
			BINDINFO_OPTIONS_ENABLE_UTF8 = 131072,
			BINDINFO_OPTIONS_DISABLE_UTF8 = 262144,
			BINDINFO_OPTIONS_USE_IE_ENCODING = 524288,
			BINDINFO_OPTIONS_BINDTOOBJECT = 1048576,
			BINDINFO_OPTIONS_SECURITYOPTOUT = 2097152,
			BINDINFO_OPTIONS_IGNOREMIMETEXTPLAIN = 4194304,
			BINDINFO_OPTIONS_USEBINDSTRINGCREDS = 8388608,
			BINDINFO_OPTIONS_IGNOREHTTPHTTPSREDIRECTS = 16777216,
			BINDINFO_OPTIONS_IGNORE_SSLERRORS_ONCE = 33554432,
			BINDINFO_WPC_DOWNLOADBLOCKED = 134217728,
			BINDINFO_WPC_LOGGING_ENABLED = 268435456,
			BINDINFO_OPTIONS_ALLOWCONNECTDATA = 536870912,
			BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS = 1073741824,
			BINDINFO_OPTIONS_SHDOCVW_NAVIGATE = -2147483648,
		}
		[AllowDuplicates]
		public enum BSCF : int32
		{
			BSCF_FIRSTDATANOTIFICATION = 1,
			BSCF_INTERMEDIATEDATANOTIFICATION = 2,
			BSCF_LASTDATANOTIFICATION = 4,
			BSCF_DATAFULLYAVAILABLE = 8,
			BSCF_AVAILABLEDATASIZEUNKNOWN = 16,
			BSCF_SKIPDRAINDATAFORFILEURLS = 32,
			BSCF_64BITLENGTHDOWNLOAD = 64,
		}
		[AllowDuplicates]
		public enum BINDSTATUS : int32
		{
			BINDSTATUS_FINDINGRESOURCE = 1,
			BINDSTATUS_CONNECTING = 2,
			BINDSTATUS_REDIRECTING = 3,
			BINDSTATUS_BEGINDOWNLOADDATA = 4,
			BINDSTATUS_DOWNLOADINGDATA = 5,
			BINDSTATUS_ENDDOWNLOADDATA = 6,
			BINDSTATUS_BEGINDOWNLOADCOMPONENTS = 7,
			BINDSTATUS_INSTALLINGCOMPONENTS = 8,
			BINDSTATUS_ENDDOWNLOADCOMPONENTS = 9,
			BINDSTATUS_USINGCACHEDCOPY = 10,
			BINDSTATUS_SENDINGREQUEST = 11,
			BINDSTATUS_CLASSIDAVAILABLE = 12,
			BINDSTATUS_MIMETYPEAVAILABLE = 13,
			BINDSTATUS_CACHEFILENAMEAVAILABLE = 14,
			BINDSTATUS_BEGINSYNCOPERATION = 15,
			BINDSTATUS_ENDSYNCOPERATION = 16,
			BINDSTATUS_BEGINUPLOADDATA = 17,
			BINDSTATUS_UPLOADINGDATA = 18,
			BINDSTATUS_ENDUPLOADDATA = 19,
			BINDSTATUS_PROTOCOLCLASSID = 20,
			BINDSTATUS_ENCODING = 21,
			BINDSTATUS_VERIFIEDMIMETYPEAVAILABLE = 22,
			BINDSTATUS_CLASSINSTALLLOCATION = 23,
			BINDSTATUS_DECODING = 24,
			BINDSTATUS_LOADINGMIMEHANDLER = 25,
			BINDSTATUS_CONTENTDISPOSITIONATTACH = 26,
			BINDSTATUS_FILTERREPORTMIMETYPE = 27,
			BINDSTATUS_CLSIDCANINSTANTIATE = 28,
			BINDSTATUS_IUNKNOWNAVAILABLE = 29,
			BINDSTATUS_DIRECTBIND = 30,
			BINDSTATUS_RAWMIMETYPE = 31,
			BINDSTATUS_PROXYDETECTING = 32,
			BINDSTATUS_ACCEPTRANGES = 33,
			BINDSTATUS_COOKIE_SENT = 34,
			BINDSTATUS_COMPACT_POLICY_RECEIVED = 35,
			BINDSTATUS_COOKIE_SUPPRESSED = 36,
			BINDSTATUS_COOKIE_STATE_UNKNOWN = 37,
			BINDSTATUS_COOKIE_STATE_ACCEPT = 38,
			BINDSTATUS_COOKIE_STATE_REJECT = 39,
			BINDSTATUS_COOKIE_STATE_PROMPT = 40,
			BINDSTATUS_COOKIE_STATE_LEASH = 41,
			BINDSTATUS_COOKIE_STATE_DOWNGRADE = 42,
			BINDSTATUS_POLICY_HREF = 43,
			BINDSTATUS_P3P_HEADER = 44,
			BINDSTATUS_SESSION_COOKIE_RECEIVED = 45,
			BINDSTATUS_PERSISTENT_COOKIE_RECEIVED = 46,
			BINDSTATUS_SESSION_COOKIES_ALLOWED = 47,
			BINDSTATUS_CACHECONTROL = 48,
			BINDSTATUS_CONTENTDISPOSITIONFILENAME = 49,
			BINDSTATUS_MIMETEXTPLAINMISMATCH = 50,
			BINDSTATUS_PUBLISHERAVAILABLE = 51,
			BINDSTATUS_DISPLAYNAMEAVAILABLE = 52,
			BINDSTATUS_SSLUX_NAVBLOCKED = 53,
			BINDSTATUS_SERVER_MIMETYPEAVAILABLE = 54,
			BINDSTATUS_SNIFFED_CLASSIDAVAILABLE = 55,
			BINDSTATUS_64BIT_PROGRESS = 56,
			BINDSTATUS_LAST = 56,
			BINDSTATUS_RESERVED_0 = 57,
			BINDSTATUS_RESERVED_1 = 58,
			BINDSTATUS_RESERVED_2 = 59,
			BINDSTATUS_RESERVED_3 = 60,
			BINDSTATUS_RESERVED_4 = 61,
			BINDSTATUS_RESERVED_5 = 62,
			BINDSTATUS_RESERVED_6 = 63,
			BINDSTATUS_RESERVED_7 = 64,
			BINDSTATUS_RESERVED_8 = 65,
			BINDSTATUS_RESERVED_9 = 66,
			BINDSTATUS_RESERVED_A = 67,
			BINDSTATUS_RESERVED_B = 68,
			BINDSTATUS_RESERVED_C = 69,
			BINDSTATUS_RESERVED_D = 70,
			BINDSTATUS_RESERVED_E = 71,
			BINDSTATUS_RESERVED_F = 72,
			BINDSTATUS_RESERVED_10 = 73,
			BINDSTATUS_RESERVED_11 = 74,
			BINDSTATUS_RESERVED_12 = 75,
			BINDSTATUS_RESERVED_13 = 76,
			BINDSTATUS_RESERVED_14 = 77,
			BINDSTATUS_LAST_PRIVATE = 77,
		}
		[AllowDuplicates]
		public enum BINDF2 : int32
		{
			BINDF2_DISABLEBASICOVERHTTP = 1,
			BINDF2_DISABLEAUTOCOOKIEHANDLING = 2,
			BINDF2_READ_DATA_GREATER_THAN_4GB = 4,
			BINDF2_DISABLE_HTTP_REDIRECT_XSECURITYID = 8,
			BINDF2_SETDOWNLOADMODE = 32,
			BINDF2_DISABLE_HTTP_REDIRECT_CACHING = 64,
			BINDF2_KEEP_CALLBACK_MODULE_LOADED = 128,
			BINDF2_ALLOW_PROXY_CRED_PROMPT = 256,
			BINDF2_RESERVED_17 = 512,
			BINDF2_RESERVED_16 = 1024,
			BINDF2_RESERVED_15 = 2048,
			BINDF2_RESERVED_14 = 4096,
			BINDF2_RESERVED_13 = 8192,
			BINDF2_RESERVED_12 = 16384,
			BINDF2_RESERVED_11 = 32768,
			BINDF2_RESERVED_10 = 65536,
			BINDF2_RESERVED_F = 131072,
			BINDF2_RESERVED_E = 262144,
			BINDF2_RESERVED_D = 524288,
			BINDF2_RESERVED_C = 1048576,
			BINDF2_RESERVED_B = 2097152,
			BINDF2_RESERVED_A = 4194304,
			BINDF2_RESERVED_9 = 8388608,
			BINDF2_RESERVED_8 = 16777216,
			BINDF2_RESERVED_7 = 33554432,
			BINDF2_RESERVED_6 = 67108864,
			BINDF2_RESERVED_5 = 134217728,
			BINDF2_RESERVED_4 = 268435456,
			BINDF2_RESERVED_3 = 536870912,
			BINDF2_RESERVED_2 = 1073741824,
			BINDF2_RESERVED_1 = -2147483648,
		}
		[AllowDuplicates]
		public enum AUTHENTICATEF : int32
		{
			AUTHENTICATEF_PROXY = 1,
			AUTHENTICATEF_BASIC = 2,
			AUTHENTICATEF_HTTP = 4,
		}
		[AllowDuplicates]
		public enum CIP_STATUS : int32
		{
			CIP_DISK_FULL = 0,
			CIP_ACCESS_DENIED = 1,
			CIP_NEWER_VERSION_EXISTS = 2,
			CIP_OLDER_VERSION_EXISTS = 3,
			CIP_NAME_CONFLICT = 4,
			CIP_TRUST_VERIFICATION_COMPONENT_MISSING = 5,
			CIP_EXE_SELF_REGISTERATION_TIMEOUT = 6,
			CIP_UNSAFE_TO_ABORT = 7,
			CIP_NEED_REBOOT = 8,
			CIP_NEED_REBOOT_UI_PERMISSION = 9,
		}
		[AllowDuplicates]
		public enum Uri_HOST_TYPE : int32
		{
			Uri_HOST_UNKNOWN = 0,
			Uri_HOST_DNS = 1,
			Uri_HOST_IPV4 = 2,
			Uri_HOST_IPV6 = 3,
			Uri_HOST_IDN = 4,
		}
		[AllowDuplicates]
		public enum BINDSTRING : int32
		{
			BINDSTRING_HEADERS = 1,
			BINDSTRING_ACCEPT_MIMES = 2,
			BINDSTRING_EXTRA_URL = 3,
			BINDSTRING_LANGUAGE = 4,
			BINDSTRING_USERNAME = 5,
			BINDSTRING_PASSWORD = 6,
			BINDSTRING_UA_PIXELS = 7,
			BINDSTRING_UA_COLOR = 8,
			BINDSTRING_OS = 9,
			BINDSTRING_USER_AGENT = 10,
			BINDSTRING_ACCEPT_ENCODINGS = 11,
			BINDSTRING_POST_COOKIE = 12,
			BINDSTRING_POST_DATA_MIME = 13,
			BINDSTRING_URL = 14,
			BINDSTRING_IID = 15,
			BINDSTRING_FLAG_BIND_TO_OBJECT = 16,
			BINDSTRING_PTR_BIND_CONTEXT = 17,
			BINDSTRING_XDR_ORIGIN = 18,
			BINDSTRING_DOWNLOADPATH = 19,
			BINDSTRING_ROOTDOC_URL = 20,
			BINDSTRING_INITIAL_FILENAME = 21,
			BINDSTRING_PROXY_USERNAME = 22,
			BINDSTRING_PROXY_PASSWORD = 23,
			BINDSTRING_ENTERPRISE_ID = 24,
			BINDSTRING_DOC_URL = 25,
			BINDSTRING_SAMESITE_COOKIE_LEVEL = 26,
		}
		[AllowDuplicates]
		public enum PI_FLAGS : int32
		{
			PI_PARSE_URL = 1,
			PI_FILTER_MODE = 2,
			PI_FORCE_ASYNC = 4,
			PI_USE_WORKERTHREAD = 8,
			PI_MIMEVERIFICATION = 16,
			PI_CLSIDLOOKUP = 32,
			PI_DATAPROGRESS = 64,
			PI_SYNCHRONOUS = 128,
			PI_APARTMENTTHREADED = 256,
			PI_CLASSINSTALL = 512,
			PI_PASSONBINDCTX = 8192,
			PI_NOMIMEHANDLER = 32768,
			PI_LOADAPPDIRECT = 16384,
			PD_FORCE_SWITCH = 65536,
			PI_PREFERDEFAULTHANDLER = 131072,
		}
		[AllowDuplicates]
		public enum OIBDG_FLAGS : int32
		{
			OIBDG_APARTMENTTHREADED = 256,
			OIBDG_DATAONLY = 4096,
		}
		[AllowDuplicates]
		public enum PARSEACTION : int32
		{
			PARSE_CANONICALIZE = 1,
			PARSE_FRIENDLY = 2,
			PARSE_SECURITY_URL = 3,
			PARSE_ROOTDOCUMENT = 4,
			PARSE_DOCUMENT = 5,
			PARSE_ANCHOR = 6,
			PARSE_ENCODE_IS_UNESCAPE = 7,
			PARSE_DECODE_IS_ESCAPE = 8,
			PARSE_PATH_FROM_URL = 9,
			PARSE_URL_FROM_PATH = 10,
			PARSE_MIME = 11,
			PARSE_SERVER = 12,
			PARSE_SCHEMA = 13,
			PARSE_SITE = 14,
			PARSE_DOMAIN = 15,
			PARSE_LOCATION = 16,
			PARSE_SECURITY_DOMAIN = 17,
			PARSE_ESCAPE = 18,
			PARSE_UNESCAPE = 19,
		}
		[AllowDuplicates]
		public enum PSUACTION : int32
		{
			PSU_DEFAULT = 1,
			PSU_SECURITY_URL_ONLY = 2,
		}
		[AllowDuplicates]
		public enum QUERYOPTION : int32
		{
			QUERY_EXPIRATION_DATE = 1,
			QUERY_TIME_OF_LAST_CHANGE = 2,
			QUERY_CONTENT_ENCODING = 3,
			QUERY_CONTENT_TYPE = 4,
			QUERY_REFRESH = 5,
			QUERY_RECOMBINE = 6,
			QUERY_CAN_NAVIGATE = 7,
			QUERY_USES_NETWORK = 8,
			QUERY_IS_CACHED = 9,
			QUERY_IS_INSTALLEDENTRY = 10,
			QUERY_IS_CACHED_OR_MAPPED = 11,
			QUERY_USES_CACHE = 12,
			QUERY_IS_SECURE = 13,
			QUERY_IS_SAFE = 14,
			QUERY_USES_HISTORYFOLDER = 15,
			QUERY_IS_CACHED_AND_USABLE_OFFLINE = 16,
		}
		[AllowDuplicates]
		public enum INTERNETFEATURELIST : int32
		{
			FEATURE_OBJECT_CACHING = 0,
			FEATURE_ZONE_ELEVATION = 1,
			FEATURE_MIME_HANDLING = 2,
			FEATURE_MIME_SNIFFING = 3,
			FEATURE_WINDOW_RESTRICTIONS = 4,
			FEATURE_WEBOC_POPUPMANAGEMENT = 5,
			FEATURE_BEHAVIORS = 6,
			FEATURE_DISABLE_MK_PROTOCOL = 7,
			FEATURE_LOCALMACHINE_LOCKDOWN = 8,
			FEATURE_SECURITYBAND = 9,
			FEATURE_RESTRICT_ACTIVEXINSTALL = 10,
			FEATURE_VALIDATE_NAVIGATE_URL = 11,
			FEATURE_RESTRICT_FILEDOWNLOAD = 12,
			FEATURE_ADDON_MANAGEMENT = 13,
			FEATURE_PROTOCOL_LOCKDOWN = 14,
			FEATURE_HTTP_USERNAME_PASSWORD_DISABLE = 15,
			FEATURE_SAFE_BINDTOOBJECT = 16,
			FEATURE_UNC_SAVEDFILECHECK = 17,
			FEATURE_GET_URL_DOM_FILEPATH_UNENCODED = 18,
			FEATURE_TABBED_BROWSING = 19,
			FEATURE_SSLUX = 20,
			FEATURE_DISABLE_NAVIGATION_SOUNDS = 21,
			FEATURE_DISABLE_LEGACY_COMPRESSION = 22,
			FEATURE_FORCE_ADDR_AND_STATUS = 23,
			FEATURE_XMLHTTP = 24,
			FEATURE_DISABLE_TELNET_PROTOCOL = 25,
			FEATURE_FEEDS = 26,
			FEATURE_BLOCK_INPUT_PROMPTS = 27,
			FEATURE_ENTRY_COUNT = 28,
		}
		[AllowDuplicates]
		public enum PUAF : int32
		{
			PUAF_DEFAULT = 0,
			PUAF_NOUI = 1,
			PUAF_ISFILE = 2,
			PUAF_WARN_IF_DENIED = 4,
			PUAF_FORCEUI_FOREGROUND = 8,
			PUAF_CHECK_TIFS = 16,
			PUAF_DONTCHECKBOXINDIALOG = 32,
			PUAF_TRUSTED = 64,
			PUAF_ACCEPT_WILDCARD_SCHEME = 128,
			PUAF_ENFORCERESTRICTED = 256,
			PUAF_NOSAVEDFILECHECK = 512,
			PUAF_REQUIRESAVEDFILECHECK = 1024,
			PUAF_DONT_USE_CACHE = 4096,
			PUAF_RESERVED1 = 8192,
			PUAF_RESERVED2 = 16384,
			PUAF_LMZ_UNLOCKED = 65536,
			PUAF_LMZ_LOCKED = 131072,
			PUAF_DEFAULTZONEPOL = 262144,
			PUAF_NPL_USE_LOCKED_IF_RESTRICTED = 524288,
			PUAF_NOUIIFLOCKED = 1048576,
			PUAF_DRAGPROTOCOLCHECK = 2097152,
		}
		[AllowDuplicates]
		public enum PUAFOUT : int32
		{
			PUAFOUT_DEFAULT = 0,
			PUAFOUT_ISLOCKZONEPOLICY = 1,
		}
		[AllowDuplicates]
		public enum SZM_FLAGS : int32
		{
			SZM_CREATE = 0,
			SZM_DELETE = 1,
		}
		[AllowDuplicates]
		public enum URLZONE : int32
		{
			URLZONE_INVALID = -1,
			URLZONE_PREDEFINED_MIN = 0,
			URLZONE_LOCAL_MACHINE = 0,
			URLZONE_INTRANET = 1,
			URLZONE_TRUSTED = 2,
			URLZONE_INTERNET = 3,
			URLZONE_UNTRUSTED = 4,
			URLZONE_PREDEFINED_MAX = 999,
			URLZONE_USER_MIN = 1000,
			URLZONE_USER_MAX = 10000,
		}
		[AllowDuplicates]
		public enum URLTEMPLATE : int32
		{
			URLTEMPLATE_CUSTOM = 0,
			URLTEMPLATE_PREDEFINED_MIN = 65536,
			URLTEMPLATE_LOW = 65536,
			URLTEMPLATE_MEDLOW = 66816,
			URLTEMPLATE_MEDIUM = 69632,
			URLTEMPLATE_MEDHIGH = 70912,
			URLTEMPLATE_HIGH = 73728,
			URLTEMPLATE_PREDEFINED_MAX = 131072,
		}
		[AllowDuplicates]
		public enum INET_ZONE_MANAGER_CONSTANTS : int32
		{
			MAX_ZONE_PATH = 260,
			MAX_ZONE_DESCRIPTION = 200,
		}
		[AllowDuplicates]
		public enum ZAFLAGS : int32
		{
			ZAFLAGS_CUSTOM_EDIT = 1,
			ZAFLAGS_ADD_SITES = 2,
			ZAFLAGS_REQUIRE_VERIFICATION = 4,
			ZAFLAGS_INCLUDE_PROXY_OVERRIDE = 8,
			ZAFLAGS_INCLUDE_INTRANET_SITES = 16,
			ZAFLAGS_NO_UI = 32,
			ZAFLAGS_SUPPORTS_VERIFICATION = 64,
			ZAFLAGS_UNC_AS_INTRANET = 128,
			ZAFLAGS_DETECT_INTRANET = 256,
			ZAFLAGS_USE_LOCKED_ZONES = 65536,
			ZAFLAGS_VERIFY_TEMPLATE_SETTINGS = 131072,
			ZAFLAGS_NO_CACHE = 262144,
		}
		[AllowDuplicates]
		public enum URLZONEREG : int32
		{
			URLZONEREG_DEFAULT = 0,
			URLZONEREG_HKLM = 1,
			URLZONEREG_HKCU = 2,
		}
		[AllowDuplicates]
		public enum BINDHANDLETYPES : int32
		{
			BINDHANDLETYPES_APPCACHE = 0,
			BINDHANDLETYPES_DEPENDENCY = 1,
			BINDHANDLETYPES_COUNT = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct REMSECURITY_ATTRIBUTES
		{
			public uint32 nLength;
			public uint32 lpSecurityDescriptor;
			public BOOL bInheritHandle;
		}
		[CRepr]
		public struct RemBINDINFO
		{
			public uint32 cbSize;
			public PWSTR szExtraInfo;
			public uint32 grfBindInfoF;
			public uint32 dwBindVerb;
			public PWSTR szCustomVerb;
			public uint32 cbstgmedData;
			public uint32 dwOptions;
			public uint32 dwOptionsFlags;
			public uint32 dwCodePage;
			public REMSECURITY_ATTRIBUTES securityAttributes;
			public Guid iid;
			public IUnknown pUnk;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct RemFORMATETC
		{
			public uint32 cfFormat;
			public uint32 ptd;
			public uint32 dwAspect;
			public int32 lindex;
			public uint32 tymed;
		}
		[CRepr]
		public struct PROTOCOLDATA
		{
			public uint32 grfFlags;
			public uint32 dwState;
			public void* pData;
			public uint32 cbData;
		}
		[CRepr]
		public struct StartParam
		{
			public Guid iid;
			public IBindCtx pIBindCtx;
			public IUnknown pItf;
		}
		[CRepr]
		public struct ZONEATTRIBUTES
		{
			public uint32 cbSize;
			public char16[260] szDisplayName;
			public char16[200] szDescription;
			public char16[260] szIconPath;
			public uint32 dwTemplateMinLevel;
			public uint32 dwTemplateRecommended;
			public uint32 dwTemplateCurrentLevel;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct CODEBASEHOLD
		{
			public uint32 cbSize;
			public PWSTR szDistUnit;
			public PWSTR szCodeBase;
			public uint32 dwVersionMS;
			public uint32 dwVersionLS;
			public uint32 dwStyle;
		}
		[CRepr]
		public struct SOFTDISTINFO
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 dwAdState;
			public PWSTR szTitle;
			public PWSTR szAbstract;
			public PWSTR szHREF;
			public uint32 dwInstalledVersionMS;
			public uint32 dwInstalledVersionLS;
			public uint32 dwUpdateVersionMS;
			public uint32 dwUpdateVersionLS;
			public uint32 dwAdvertisedVersionMS;
			public uint32 dwAdvertisedVersionLS;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct PROTOCOLFILTERDATA
		{
			public uint32 cbSize;
			public IInternetProtocolSink pProtocolSink;
			public IInternetProtocol pProtocol;
			public IUnknown pUnk;
			public uint32 dwFilterFlags;
		}
		[CRepr]
		public struct DATAINFO
		{
			public uint32 ulTotalSize;
			public uint32 ulavrPacketSize;
			public uint32 ulConnectSpeed;
			public uint32 ulProcessorSpeed;
		}
		[CRepr]
		public struct HIT_LOGGING_INFO
		{
			public uint32 dwStructSize;
			public PSTR lpszLoggedUrlName;
			public SYSTEMTIME StartTime;
			public SYSTEMTIME EndTime;
			public PSTR lpszExtendedInfo;
		}
		[CRepr]
		public struct CONFIRMSAFETY
		{
			public Guid clsid;
			public IUnknown pUnk;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct PROTOCOL_ARGUMENT
		{
			public PWSTR szMethod;
			public PWSTR szTargetUrl;
		}
		
		// --- COM Interfaces ---
		
		public struct IPersistMoniker {}
		public struct IMonikerProp {}
		public struct IBindProtocol {}
		public struct IHttpNegotiate {}
		public struct IHttpNegotiate2 {}
		public struct IHttpNegotiate3 {}
		public struct IWinInetFileStream {}
		public struct IWindowForBindingUI {}
		public struct ICodeInstall {}
		public struct IUriContainer {}
		public struct IUriBuilderFactory {}
		public struct IWinInetInfo {}
		public struct IHttpSecurity {}
		public struct IWinInetHttpInfo {}
		public struct IWinInetHttpTimeouts {}
		public struct IWinInetCacheHints {}
		public struct IWinInetCacheHints2 {}
		public struct IInternet {}
		public struct IInternetBindInfo {}
		public struct IInternetBindInfoEx {}
		public struct IInternetProtocolRoot {}
		public struct IInternetProtocol {}
		public struct IInternetProtocolEx {}
		public struct IInternetProtocolSink {}
		public struct IInternetProtocolSinkStackable {}
		public struct IInternetSession {}
		public struct IInternetThreadSwitch {}
		public struct IInternetPriority {}
		public struct IInternetProtocolInfo {}
		public struct IInternetSecurityMgrSite {}
		public struct IInternetSecurityManager {}
		public struct IInternetSecurityManagerEx {}
		public struct IInternetSecurityManagerEx2 {}
		public struct IZoneIdentifier {}
		public struct IZoneIdentifier2 {}
		public struct IInternetHostSecurityManager {}
		public struct IInternetZoneManager {}
		public struct IInternetZoneManagerEx {}
		public struct IInternetZoneManagerEx2 {}
		public struct ISoftDistExt {}
		public struct ICatalogFileInfo {}
		public struct IDataFilter {}
		public struct IEncodingFilterFactory {}
		public struct IWrappedProtocol {}
		public struct IGetBindHandle {}
		public struct IBindCallbackRedirect {}
		public struct IBindHttpSecurity {}
		
		// --- Functions ---
		
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateURLMoniker(IMoniker pMkCtx, PWSTR szURL, IMoniker* ppmk);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateURLMonikerEx(IMoniker pMkCtx, PWSTR szURL, IMoniker* ppmk, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetClassURL(PWSTR szURL, Guid* pClsID);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAsyncBindCtx(uint32 reserved, IBindStatusCallback pBSCb, IEnumFORMATETC pEFetc, IBindCtx* ppBC);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateURLMonikerEx2(IMoniker pMkCtx, IUri pUri, IMoniker* ppmk, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAsyncBindCtxEx(IBindCtx pbc, uint32 dwOptions, IBindStatusCallback pBSCb, IEnumFORMATETC pEnum, IBindCtx* ppBC, uint32 reserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MkParseDisplayNameEx(IBindCtx pbc, PWSTR szDisplayName, uint32* pchEaten, IMoniker* ppmk);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterBindStatusCallback(IBindCtx pBC, IBindStatusCallback pBSCb, IBindStatusCallback* ppBSCBPrev, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeBindStatusCallback(IBindCtx pBC, IBindStatusCallback pBSCb);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetClassFileOrMime(IBindCtx pBC, PWSTR szFilename, void* pBuffer, uint32 cbSize, PWSTR szMime, uint32 dwReserved, Guid* pclsid);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsValidURL(IBindCtx pBC, PWSTR szURL, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetClassObjectFromURL(Guid* rCLASSID, PWSTR szCODE, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR szTYPE, IBindCtx pBindCtx, CLSCTX dwClsContext, void* pvReserved, Guid* riid, void** ppv);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IEInstallScope(uint32* pdwScope);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FaultInIEFeature(HWND hWnd, uCLSSPEC* pClassSpec, QUERYCONTEXT* pQuery, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetComponentIDFromCLSSPEC(uCLSSPEC* pClassspec, PSTR* ppszComponentID);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsAsyncMoniker(IMoniker pmk);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterMediaTypes(uint32 ctypes, PSTR* rgszTypes, uint16* rgcfTypes);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FindMediaType(PSTR rgszTypes, uint16* rgcfTypes);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateFormatEnumerator(uint32 cfmtetc, FORMATETC* rgfmtetc, IEnumFORMATETC* ppenumfmtetc);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterFormatEnumerator(IBindCtx pBC, IEnumFORMATETC pEFetc, uint32 reserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeFormatEnumerator(IBindCtx pBC, IEnumFORMATETC pEFetc);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterMediaTypeClass(IBindCtx pBC, uint32 ctypes, PSTR* rgszTypes, Guid* rgclsID, uint32 reserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FindMediaTypeClass(IBindCtx pBC, PSTR szType, Guid* pclsID, uint32 reserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlMkSetSessionOption(uint32 dwOption, void* pBuffer, uint32 dwBufferLength, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlMkGetSessionOption(uint32 dwOption, void* pBuffer, uint32 dwBufferLength, uint32* pdwBufferLengthOut, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FindMimeFromData(IBindCtx pBC, PWSTR pwzUrl, void* pBuffer, uint32 cbSize, PWSTR pwzMimeProposed, uint32 dwMimeFlags, PWSTR* ppwzMimeOut, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ObtainUserAgentString(uint32 dwOption, uint8* pszUAOut, uint32* cbSize);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CompareSecurityIds(uint8* pbSecurityId1, uint32 dwLen1, uint8* pbSecurityId2, uint32 dwLen2, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CompatFlagsFromClsid(Guid* pclsid, uint32* pdwCompatFlags, uint32* pdwMiscStatusFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetAccessForIEAppContainer(HANDLE hObject, IEObjectType ieObjectType, uint32 dwAccessMask);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkSimpleNavigateToString(PWSTR szTarget, PWSTR szLocation, PWSTR szTargetFrameName, IUnknown pUnk, IBindCtx pbc, IBindStatusCallback param5, uint32 grfHLNF, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkSimpleNavigateToMoniker(IMoniker pmkTarget, PWSTR szLocation, PWSTR szTargetFrameName, IUnknown pUnk, IBindCtx pbc, IBindStatusCallback param5, uint32 grfHLNF, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenStreamA(IUnknown param0, PSTR param1, uint32 param2, IBindStatusCallback param3);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenStreamW(IUnknown param0, PWSTR param1, uint32 param2, IBindStatusCallback param3);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenPullStreamA(IUnknown param0, PSTR param1, uint32 param2, IBindStatusCallback param3);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenPullStreamW(IUnknown param0, PWSTR param1, uint32 param2, IBindStatusCallback param3);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLDownloadToFileA(IUnknown param0, PSTR param1, PSTR param2, uint32 param3, IBindStatusCallback param4);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLDownloadToFileW(IUnknown param0, PWSTR param1, PWSTR param2, uint32 param3, IBindStatusCallback param4);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLDownloadToCacheFileA(IUnknown param0, PSTR param1, uint8* param2, uint32 cchFileName, uint32 param4, IBindStatusCallback param5);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLDownloadToCacheFileW(IUnknown param0, PWSTR param1, char16* param2, uint32 cchFileName, uint32 param4, IBindStatusCallback param5);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenBlockingStreamA(IUnknown param0, PSTR param1, IStream* param2, uint32 param3, IBindStatusCallback param4);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT URLOpenBlockingStreamW(IUnknown param0, PWSTR param1, IStream* param2, uint32 param3, IBindStatusCallback param4);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkGoBack(IUnknown pUnk);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkGoForward(IUnknown pUnk);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigateString(IUnknown pUnk, PWSTR szTarget);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigateMoniker(IUnknown pUnk, IMoniker pmkTarget);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetParseUrl(PWSTR pwzUrl, PARSEACTION ParseAction, uint32 dwFlags, char16* pszResult, uint32 cchResult, uint32* pcchResult, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetParseIUri(IUri pIUri, PARSEACTION ParseAction, uint32 dwFlags, char16* pwzResult, uint32 cchResult, uint32* pcchResult, uint dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCombineUrl(PWSTR pwzBaseUrl, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, char16* pszResult, uint32 cchResult, uint32* pcchResult, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCombineUrlEx(IUri pBaseUri, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, IUri* ppCombinedUri, uint dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCombineIUri(IUri pBaseUri, IUri pRelativeUri, uint32 dwCombineFlags, IUri* ppCombinedUri, uint dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCompareUrl(PWSTR pwzUrl1, PWSTR pwzUrl2, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetGetProtocolFlags(PWSTR pwzUrl, uint32* pdwFlags, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetQueryInfo(PWSTR pwzUrl, QUERYOPTION QueryOptions, uint32 dwQueryFlags, void* pvBuffer, uint32 cbBuffer, uint32* pcbBuffer, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetGetSession(uint32 dwSessionMode, IInternetSession* ppIInternetSession, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetGetSecurityUrl(PWSTR pwszUrl, PWSTR* ppwszSecUrl, PSUACTION psuAction, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetGetSecurityUrlEx(IUri pUri, IUri* ppSecUri, PSUACTION psuAction, uint dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetSetFeatureEnabled(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, BOOL fEnable);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetIsFeatureEnabled(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetIsFeatureEnabledForUrl(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, PWSTR szURL, IInternetSecurityManager pSecMgr);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetIsFeatureEnabledForIUri(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, IUri pIUri, IInternetSecurityManagerEx2 pSecMgr);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetIsFeatureZoneElevationEnabled(PWSTR szFromURL, PWSTR szToURL, IInternetSecurityManager pSecMgr, uint32 dwFlags);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CopyStgMedium(STGMEDIUM* pcstgmedSrc, STGMEDIUM* pstgmedDest);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CopyBindInfo(BINDINFO* pcbiSrc, BINDINFO* pbiDest);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseBindInfo(BINDINFO* pbindinfo);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR IEGetUserPrivateNamespaceName();
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCreateSecurityManager(IServiceProvider pSP, IInternetSecurityManager* ppSM, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInternetCreateZoneManager(IServiceProvider pSP, IInternetZoneManager* ppZM, uint32 dwReserved);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetSoftwareUpdateInfo(PWSTR szDistUnit, SOFTDISTINFO* psdi);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetSoftwareUpdateAdvertisementState(PWSTR szDistUnit, uint32 dwAdState, uint32 dwAdvertisedVersionMS, uint32 dwAdvertisedVersionLS);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsLoggingEnabledA(PSTR pszUrl);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsLoggingEnabledW(PWSTR pwszUrl);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteHitLogging(HIT_LOGGING_INFO* lpLogginginfo);
		
	}
}
