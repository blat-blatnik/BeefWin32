namespace Win32.System.Com.Urlmon;

using System;
using Win32.Data.Xml.MsXml;
using Win32.Foundation;
using Win32.System.Com;

static
{
	#region Constants
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
	#endregion
	
	#region Enums
	public enum IEObjectType : int32
	{
		EVENT = 0,
		MUTEX = 1,
		SEMAPHORE = 2,
		SHARED_MEMORY = 3,
		WAITABLE_TIMER = 4,
		FILE = 5,
		NAMED_PIPE = 6,
		REGISTRY = 7,
	}
	public enum MONIKERPROPERTY : int32
	{
		MIMETYPEPROP = 0,
		USE_SRC_URL = 1,
		CLASSIDPROP = 2,
		TRUSTEDDOWNLOADPROP = 3,
		POPUPLEVELPROP = 4,
	}
	public enum BINDVERB : int32
	{
		GET = 0,
		POST = 1,
		PUT = 2,
		CUSTOM = 3,
		RESERVED1 = 4,
	}
	public enum BINDF : int32
	{
		ASYNCHRONOUS = 1,
		ASYNCSTORAGE = 2,
		NOPROGRESSIVERENDERING = 4,
		OFFLINEOPERATION = 8,
		GETNEWESTVERSION = 16,
		NOWRITECACHE = 32,
		NEEDFILE = 64,
		PULLDATA = 128,
		IGNORESECURITYPROBLEM = 256,
		RESYNCHRONIZE = 512,
		HYPERLINK = 1024,
		NO_UI = 2048,
		SILENTOPERATION = 4096,
		PRAGMA_NO_CACHE = 8192,
		GETCLASSOBJECT = 16384,
		RESERVED_1 = 32768,
		FREE_THREADED = 65536,
		DIRECT_READ = 131072,
		FORMS_SUBMIT = 262144,
		GETFROMCACHE_IF_NET_FAIL = 524288,
		FROMURLMON = 1048576,
		FWD_BACK = 2097152,
		PREFERDEFAULTHANDLER = 4194304,
		ENFORCERESTRICTED = 8388608,
		RESERVED_2 = -2147483648,
		RESERVED_3 = 16777216,
		RESERVED_4 = 33554432,
		RESERVED_5 = 67108864,
		RESERVED_6 = 134217728,
		RESERVED_7 = 1073741824,
		RESERVED_8 = 536870912,
	}
	public enum URL_ENCODING : int32
	{
		NONE = 0,
		ENABLE_UTF8 = 268435456,
		DISABLE_UTF8 = 536870912,
	}
	public enum BINDINFO_OPTIONS : int32
	{
		OPTIONS_WININETFLAG = 65536,
		OPTIONS_ENABLE_UTF8 = 131072,
		OPTIONS_DISABLE_UTF8 = 262144,
		OPTIONS_USE_IE_ENCODING = 524288,
		OPTIONS_BINDTOOBJECT = 1048576,
		OPTIONS_SECURITYOPTOUT = 2097152,
		OPTIONS_IGNOREMIMETEXTPLAIN = 4194304,
		OPTIONS_USEBINDSTRINGCREDS = 8388608,
		OPTIONS_IGNOREHTTPHTTPSREDIRECTS = 16777216,
		OPTIONS_IGNORE_SSLERRORS_ONCE = 33554432,
		WPC_DOWNLOADBLOCKED = 134217728,
		WPC_LOGGING_ENABLED = 268435456,
		OPTIONS_ALLOWCONNECTDATA = 536870912,
		OPTIONS_DISABLEAUTOREDIRECTS = 1073741824,
		OPTIONS_SHDOCVW_NAVIGATE = -2147483648,
	}
	public enum BSCF : int32
	{
		FIRSTDATANOTIFICATION = 1,
		INTERMEDIATEDATANOTIFICATION = 2,
		LASTDATANOTIFICATION = 4,
		DATAFULLYAVAILABLE = 8,
		AVAILABLEDATASIZEUNKNOWN = 16,
		SKIPDRAINDATAFORFILEURLS = 32,
		_64BITLENGTHDOWNLOAD = 64,
	}
	[AllowDuplicates]
	public enum BINDSTATUS : int32
	{
		FINDINGRESOURCE = 1,
		CONNECTING = 2,
		REDIRECTING = 3,
		BEGINDOWNLOADDATA = 4,
		DOWNLOADINGDATA = 5,
		ENDDOWNLOADDATA = 6,
		BEGINDOWNLOADCOMPONENTS = 7,
		INSTALLINGCOMPONENTS = 8,
		ENDDOWNLOADCOMPONENTS = 9,
		USINGCACHEDCOPY = 10,
		SENDINGREQUEST = 11,
		CLASSIDAVAILABLE = 12,
		MIMETYPEAVAILABLE = 13,
		CACHEFILENAMEAVAILABLE = 14,
		BEGINSYNCOPERATION = 15,
		ENDSYNCOPERATION = 16,
		BEGINUPLOADDATA = 17,
		UPLOADINGDATA = 18,
		ENDUPLOADDATA = 19,
		PROTOCOLCLASSID = 20,
		ENCODING = 21,
		VERIFIEDMIMETYPEAVAILABLE = 22,
		CLASSINSTALLLOCATION = 23,
		DECODING = 24,
		LOADINGMIMEHANDLER = 25,
		CONTENTDISPOSITIONATTACH = 26,
		FILTERREPORTMIMETYPE = 27,
		CLSIDCANINSTANTIATE = 28,
		IUNKNOWNAVAILABLE = 29,
		DIRECTBIND = 30,
		RAWMIMETYPE = 31,
		PROXYDETECTING = 32,
		ACCEPTRANGES = 33,
		COOKIE_SENT = 34,
		COMPACT_POLICY_RECEIVED = 35,
		COOKIE_SUPPRESSED = 36,
		COOKIE_STATE_UNKNOWN = 37,
		COOKIE_STATE_ACCEPT = 38,
		COOKIE_STATE_REJECT = 39,
		COOKIE_STATE_PROMPT = 40,
		COOKIE_STATE_LEASH = 41,
		COOKIE_STATE_DOWNGRADE = 42,
		POLICY_HREF = 43,
		P3P_HEADER = 44,
		SESSION_COOKIE_RECEIVED = 45,
		PERSISTENT_COOKIE_RECEIVED = 46,
		SESSION_COOKIES_ALLOWED = 47,
		CACHECONTROL = 48,
		CONTENTDISPOSITIONFILENAME = 49,
		MIMETEXTPLAINMISMATCH = 50,
		PUBLISHERAVAILABLE = 51,
		DISPLAYNAMEAVAILABLE = 52,
		SSLUX_NAVBLOCKED = 53,
		SERVER_MIMETYPEAVAILABLE = 54,
		SNIFFED_CLASSIDAVAILABLE = 55,
		_64BIT_PROGRESS = 56,
		LAST = 56,
		RESERVED_0 = 57,
		RESERVED_1 = 58,
		RESERVED_2 = 59,
		RESERVED_3 = 60,
		RESERVED_4 = 61,
		RESERVED_5 = 62,
		RESERVED_6 = 63,
		RESERVED_7 = 64,
		RESERVED_8 = 65,
		RESERVED_9 = 66,
		RESERVED_A = 67,
		RESERVED_B = 68,
		RESERVED_C = 69,
		RESERVED_D = 70,
		RESERVED_E = 71,
		RESERVED_F = 72,
		RESERVED_10 = 73,
		RESERVED_11 = 74,
		RESERVED_12 = 75,
		RESERVED_13 = 76,
		RESERVED_14 = 77,
		LAST_PRIVATE = 77,
	}
	public enum BINDF2 : int32
	{
		DISABLEBASICOVERHTTP = 1,
		DISABLEAUTOCOOKIEHANDLING = 2,
		READ_DATA_GREATER_THAN_4GB = 4,
		DISABLE_HTTP_REDIRECT_XSECURITYID = 8,
		SETDOWNLOADMODE = 32,
		DISABLE_HTTP_REDIRECT_CACHING = 64,
		KEEP_CALLBACK_MODULE_LOADED = 128,
		ALLOW_PROXY_CRED_PROMPT = 256,
		RESERVED_17 = 512,
		RESERVED_16 = 1024,
		RESERVED_15 = 2048,
		RESERVED_14 = 4096,
		RESERVED_13 = 8192,
		RESERVED_12 = 16384,
		RESERVED_11 = 32768,
		RESERVED_10 = 65536,
		RESERVED_F = 131072,
		RESERVED_E = 262144,
		RESERVED_D = 524288,
		RESERVED_C = 1048576,
		RESERVED_B = 2097152,
		RESERVED_A = 4194304,
		RESERVED_9 = 8388608,
		RESERVED_8 = 16777216,
		RESERVED_7 = 33554432,
		RESERVED_6 = 67108864,
		RESERVED_5 = 134217728,
		RESERVED_4 = 268435456,
		RESERVED_3 = 536870912,
		RESERVED_2 = 1073741824,
		RESERVED_1 = -2147483648,
	}
	public enum AUTHENTICATEF : int32
	{
		PROXY = 1,
		BASIC = 2,
		HTTP = 4,
	}
	public enum CIP_STATUS : int32
	{
		DISK_FULL = 0,
		ACCESS_DENIED = 1,
		NEWER_VERSION_EXISTS = 2,
		OLDER_VERSION_EXISTS = 3,
		NAME_CONFLICT = 4,
		TRUST_VERIFICATION_COMPONENT_MISSING = 5,
		EXE_SELF_REGISTERATION_TIMEOUT = 6,
		UNSAFE_TO_ABORT = 7,
		NEED_REBOOT = 8,
		NEED_REBOOT_UI_PERMISSION = 9,
	}
	public enum Uri_HOST_TYPE : int32
	{
		UNKNOWN = 0,
		DNS = 1,
		IPV4 = 2,
		IPV6 = 3,
		IDN = 4,
	}
	public enum BINDSTRING : int32
	{
		HEADERS = 1,
		ACCEPT_MIMES = 2,
		EXTRA_URL = 3,
		LANGUAGE = 4,
		USERNAME = 5,
		PASSWORD = 6,
		UA_PIXELS = 7,
		UA_COLOR = 8,
		OS = 9,
		USER_AGENT = 10,
		ACCEPT_ENCODINGS = 11,
		POST_COOKIE = 12,
		POST_DATA_MIME = 13,
		URL = 14,
		IID = 15,
		FLAG_BIND_TO_OBJECT = 16,
		PTR_BIND_CONTEXT = 17,
		XDR_ORIGIN = 18,
		DOWNLOADPATH = 19,
		ROOTDOC_URL = 20,
		INITIAL_FILENAME = 21,
		PROXY_USERNAME = 22,
		PROXY_PASSWORD = 23,
		ENTERPRISE_ID = 24,
		DOC_URL = 25,
		SAMESITE_COOKIE_LEVEL = 26,
	}
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
	public enum OIBDG_FLAGS : int32
	{
		APARTMENTTHREADED = 256,
		DATAONLY = 4096,
	}
	public enum PARSEACTION : int32
	{
		CANONICALIZE = 1,
		FRIENDLY = 2,
		SECURITY_URL = 3,
		ROOTDOCUMENT = 4,
		DOCUMENT = 5,
		ANCHOR = 6,
		ENCODE_IS_UNESCAPE = 7,
		DECODE_IS_ESCAPE = 8,
		PATH_FROM_URL = 9,
		URL_FROM_PATH = 10,
		MIME = 11,
		SERVER = 12,
		SCHEMA = 13,
		SITE = 14,
		DOMAIN = 15,
		LOCATION = 16,
		SECURITY_DOMAIN = 17,
		ESCAPE = 18,
		UNESCAPE = 19,
	}
	public enum PSUACTION : int32
	{
		DEFAULT = 1,
		SECURITY_URL_ONLY = 2,
	}
	public enum QUERYOPTION : int32
	{
		EXPIRATION_DATE = 1,
		TIME_OF_LAST_CHANGE = 2,
		CONTENT_ENCODING = 3,
		CONTENT_TYPE = 4,
		REFRESH = 5,
		RECOMBINE = 6,
		CAN_NAVIGATE = 7,
		USES_NETWORK = 8,
		IS_CACHED = 9,
		IS_INSTALLEDENTRY = 10,
		IS_CACHED_OR_MAPPED = 11,
		USES_CACHE = 12,
		IS_SECURE = 13,
		IS_SAFE = 14,
		USES_HISTORYFOLDER = 15,
		IS_CACHED_AND_USABLE_OFFLINE = 16,
	}
	public enum INTERNETFEATURELIST : int32
	{
		OBJECT_CACHING = 0,
		ZONE_ELEVATION = 1,
		MIME_HANDLING = 2,
		MIME_SNIFFING = 3,
		WINDOW_RESTRICTIONS = 4,
		WEBOC_POPUPMANAGEMENT = 5,
		BEHAVIORS = 6,
		DISABLE_MK_PROTOCOL = 7,
		LOCALMACHINE_LOCKDOWN = 8,
		SECURITYBAND = 9,
		RESTRICT_ACTIVEXINSTALL = 10,
		VALIDATE_NAVIGATE_URL = 11,
		RESTRICT_FILEDOWNLOAD = 12,
		ADDON_MANAGEMENT = 13,
		PROTOCOL_LOCKDOWN = 14,
		HTTP_USERNAME_PASSWORD_DISABLE = 15,
		SAFE_BINDTOOBJECT = 16,
		UNC_SAVEDFILECHECK = 17,
		GET_URL_DOM_FILEPATH_UNENCODED = 18,
		TABBED_BROWSING = 19,
		SSLUX = 20,
		DISABLE_NAVIGATION_SOUNDS = 21,
		DISABLE_LEGACY_COMPRESSION = 22,
		FORCE_ADDR_AND_STATUS = 23,
		XMLHTTP = 24,
		DISABLE_TELNET_PROTOCOL = 25,
		FEEDS = 26,
		BLOCK_INPUT_PROMPTS = 27,
		ENTRY_COUNT = 28,
	}
	public enum PUAF : int32
	{
		DEFAULT = 0,
		NOUI = 1,
		ISFILE = 2,
		WARN_IF_DENIED = 4,
		FORCEUI_FOREGROUND = 8,
		CHECK_TIFS = 16,
		DONTCHECKBOXINDIALOG = 32,
		TRUSTED = 64,
		ACCEPT_WILDCARD_SCHEME = 128,
		ENFORCERESTRICTED = 256,
		NOSAVEDFILECHECK = 512,
		REQUIRESAVEDFILECHECK = 1024,
		DONT_USE_CACHE = 4096,
		RESERVED1 = 8192,
		RESERVED2 = 16384,
		LMZ_UNLOCKED = 65536,
		LMZ_LOCKED = 131072,
		DEFAULTZONEPOL = 262144,
		NPL_USE_LOCKED_IF_RESTRICTED = 524288,
		NOUIIFLOCKED = 1048576,
		DRAGPROTOCOLCHECK = 2097152,
	}
	public enum PUAFOUT : int32
	{
		DEFAULT = 0,
		ISLOCKZONEPOLICY = 1,
	}
	public enum SZM_FLAGS : int32
	{
		CREATE = 0,
		DELETE = 1,
	}
	[AllowDuplicates]
	public enum URLZONE : int32
	{
		INVALID = -1,
		PREDEFINED_MIN = 0,
		LOCAL_MACHINE = 0,
		INTRANET = 1,
		TRUSTED = 2,
		INTERNET = 3,
		UNTRUSTED = 4,
		PREDEFINED_MAX = 999,
		USER_MIN = 1000,
		USER_MAX = 10000,
	}
	[AllowDuplicates]
	public enum URLTEMPLATE : int32
	{
		CUSTOM = 0,
		PREDEFINED_MIN = 65536,
		LOW = 65536,
		MEDLOW = 66816,
		MEDIUM = 69632,
		MEDHIGH = 70912,
		HIGH = 73728,
		PREDEFINED_MAX = 131072,
	}
	public enum INET_ZONE_MANAGER_CONSTANTS : int32
	{
		PATH = 260,
		DESCRIPTION = 200,
	}
	public enum ZAFLAGS : int32
	{
		CUSTOM_EDIT = 1,
		ADD_SITES = 2,
		REQUIRE_VERIFICATION = 4,
		INCLUDE_PROXY_OVERRIDE = 8,
		INCLUDE_INTRANET_SITES = 16,
		NO_UI = 32,
		SUPPORTS_VERIFICATION = 64,
		UNC_AS_INTRANET = 128,
		DETECT_INTRANET = 256,
		USE_LOCKED_ZONES = 65536,
		VERIFY_TEMPLATE_SETTINGS = 131072,
		NO_CACHE = 262144,
	}
	public enum URLZONEREG : int32
	{
		DEFAULT = 0,
		HKLM = 1,
		HKCU = 2,
	}
	public enum BINDHANDLETYPES : int32
	{
		APPCACHE = 0,
		DEPENDENCY = 1,
		COUNT = 2,
	}
	#endregion
	
	#region Structs
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
		public IUnknown* pUnk;
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
		public IBindCtx* pIBindCtx;
		public IUnknown* pItf;
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
		public IInternetProtocolSink* pProtocolSink;
		public IInternetProtocol* pProtocol;
		public IUnknown* pUnk;
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
		public IUnknown* pUnk;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct PROTOCOL_ARGUMENT
	{
		public PWSTR szMethod;
		public PWSTR szTargetUrl;
	}
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IPersistMoniker : IUnknown
	{
		public const new Guid IID = .(0x79eac9c9, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetClassID(out Guid pClassID) mut => VT.GetClassID(ref this, out pClassID);
		public HRESULT IsDirty() mut => VT.IsDirty(ref this);
		public HRESULT Load(BOOL fFullyAvailable, ref IMoniker pimkName, ref IBindCtx pibc, uint32 grfMode) mut => VT.Load(ref this, fFullyAvailable, ref pimkName, ref pibc, grfMode);
		public HRESULT Save(ref IMoniker pimkName, ref IBindCtx pbc, BOOL fRemember) mut => VT.Save(ref this, ref pimkName, ref pbc, fRemember);
		public HRESULT SaveCompleted(ref IMoniker pimkName, ref IBindCtx pibc) mut => VT.SaveCompleted(ref this, ref pimkName, ref pibc);
		public HRESULT GetCurMoniker(out IMoniker* ppimkName) mut => VT.GetCurMoniker(ref this, out ppimkName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self, out Guid pClassID) GetClassID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self) IsDirty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self, BOOL fFullyAvailable, ref IMoniker pimkName, ref IBindCtx pibc, uint32 grfMode) Load;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self, ref IMoniker pimkName, ref IBindCtx pbc, BOOL fRemember) Save;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self, ref IMoniker pimkName, ref IBindCtx pibc) SaveCompleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMoniker self, out IMoniker* ppimkName) GetCurMoniker;
		}
	}
	[CRepr]
	public struct IMonikerProp : IUnknown
	{
		public const new Guid IID = .(0xa5ca5f7f, 0x1847, 0x4d87, 0x9c, 0x5b, 0x91, 0x85, 0x09, 0xf7, 0x51, 0x1d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PutProperty(MONIKERPROPERTY mkp, PWSTR val) mut => VT.PutProperty(ref this, mkp, val);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonikerProp self, MONIKERPROPERTY mkp, PWSTR val) PutProperty;
		}
	}
	[CRepr]
	public struct IBindProtocol : IUnknown
	{
		public const new Guid IID = .(0x79eac9cd, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateBinding(PWSTR szUrl, ref IBindCtx pbc, out IBinding* ppb) mut => VT.CreateBinding(ref this, szUrl, ref pbc, out ppb);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindProtocol self, PWSTR szUrl, ref IBindCtx pbc, out IBinding* ppb) CreateBinding;
		}
	}
	[CRepr]
	public struct IHttpNegotiate : IUnknown
	{
		public const new Guid IID = .(0x79eac9d2, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BeginningTransaction(PWSTR szURL, PWSTR szHeaders, uint32 dwReserved, out PWSTR pszAdditionalHeaders) mut => VT.BeginningTransaction(ref this, szURL, szHeaders, dwReserved, out pszAdditionalHeaders);
		public HRESULT OnResponse(uint32 dwResponseCode, PWSTR szResponseHeaders, PWSTR szRequestHeaders, out PWSTR pszAdditionalRequestHeaders) mut => VT.OnResponse(ref this, dwResponseCode, szResponseHeaders, szRequestHeaders, out pszAdditionalRequestHeaders);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHttpNegotiate self, PWSTR szURL, PWSTR szHeaders, uint32 dwReserved, out PWSTR pszAdditionalHeaders) BeginningTransaction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHttpNegotiate self, uint32 dwResponseCode, PWSTR szResponseHeaders, PWSTR szRequestHeaders, out PWSTR pszAdditionalRequestHeaders) OnResponse;
		}
	}
	[CRepr]
	public struct IHttpNegotiate2 : IHttpNegotiate
	{
		public const new Guid IID = .(0x4f9f9fcb, 0xe0f4, 0x48eb, 0xb7, 0xab, 0xfa, 0x2e, 0xa9, 0x36, 0x5c, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRootSecurityId(uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) mut => VT.GetRootSecurityId(ref this, pbSecurityId, out pcbSecurityId, dwReserved);

		[CRepr]
		public struct VTable : IHttpNegotiate.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHttpNegotiate2 self, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) GetRootSecurityId;
		}
	}
	[CRepr]
	public struct IHttpNegotiate3 : IHttpNegotiate2
	{
		public const new Guid IID = .(0x57b6c80a, 0x34c2, 0x4602, 0xbc, 0x26, 0x66, 0xa0, 0x2f, 0xc5, 0x71, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSerializedClientCertContext(uint8** ppbCert, out uint32 pcbCert) mut => VT.GetSerializedClientCertContext(ref this, ppbCert, out pcbCert);

		[CRepr]
		public struct VTable : IHttpNegotiate2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHttpNegotiate3 self, uint8** ppbCert, out uint32 pcbCert) GetSerializedClientCertContext;
		}
	}
	[CRepr]
	public struct IWinInetFileStream : IUnknown
	{
		public const new Guid IID = .(0xf134c4b7, 0xb1f8, 0x4e75, 0xb8, 0x86, 0x74, 0xb9, 0x09, 0x43, 0xbe, 0xcb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetHandleForUnlock(uint hWinInetLockHandle, uint dwReserved) mut => VT.SetHandleForUnlock(ref this, hWinInetLockHandle, dwReserved);
		public HRESULT SetDeleteFile(uint dwReserved) mut => VT.SetDeleteFile(ref this, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetFileStream self, uint hWinInetLockHandle, uint dwReserved) SetHandleForUnlock;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetFileStream self, uint dwReserved) SetDeleteFile;
		}
	}
	[CRepr]
	public struct IWindowForBindingUI : IUnknown
	{
		public const new Guid IID = .(0x79eac9d5, 0xbafa, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetWindow(in Guid rguidReason, out HWND phwnd) mut => VT.GetWindow(ref this, rguidReason, out phwnd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowForBindingUI self, in Guid rguidReason, out HWND phwnd) GetWindow;
		}
	}
	[CRepr]
	public struct ICodeInstall : IWindowForBindingUI
	{
		public const new Guid IID = .(0x79eac9d1, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnCodeInstallProblem(uint32 ulStatusCode, PWSTR szDestination, PWSTR szSource, uint32 dwReserved) mut => VT.OnCodeInstallProblem(ref this, ulStatusCode, szDestination, szSource, dwReserved);

		[CRepr]
		public struct VTable : IWindowForBindingUI.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodeInstall self, uint32 ulStatusCode, PWSTR szDestination, PWSTR szSource, uint32 dwReserved) OnCodeInstallProblem;
		}
	}
	[CRepr]
	public struct IUriContainer : IUnknown
	{
		public const new Guid IID = .(0xa158a630, 0xed6f, 0x45fb, 0xb9, 0x87, 0xf6, 0x86, 0x76, 0xf5, 0x77, 0x52);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIUri(out IUri* ppIUri) mut => VT.GetIUri(ref this, out ppIUri);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriContainer self, out IUri* ppIUri) GetIUri;
		}
	}
	[CRepr]
	public struct IUriBuilderFactory : IUnknown
	{
		public const new Guid IID = .(0xe982ce48, 0x0b96, 0x440c, 0xbc, 0x37, 0x0c, 0x86, 0x9b, 0x27, 0xa2, 0x9e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateIUriBuilder(uint32 dwFlags, uint dwReserved, out IUriBuilder* ppIUriBuilder) mut => VT.CreateIUriBuilder(ref this, dwFlags, dwReserved, out ppIUriBuilder);
		public HRESULT CreateInitializedIUriBuilder(uint32 dwFlags, uint dwReserved, out IUriBuilder* ppIUriBuilder) mut => VT.CreateInitializedIUriBuilder(ref this, dwFlags, dwReserved, out ppIUriBuilder);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilderFactory self, uint32 dwFlags, uint dwReserved, out IUriBuilder* ppIUriBuilder) CreateIUriBuilder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilderFactory self, uint32 dwFlags, uint dwReserved, out IUriBuilder* ppIUriBuilder) CreateInitializedIUriBuilder;
		}
	}
	[CRepr]
	public struct IWinInetInfo : IUnknown
	{
		public const new Guid IID = .(0x79eac9d6, 0xbafa, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryOption(uint32 dwOption, void* pBuffer, out uint32 pcbBuf) mut => VT.QueryOption(ref this, dwOption, pBuffer, out pcbBuf);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetInfo self, uint32 dwOption, void* pBuffer, out uint32 pcbBuf) QueryOption;
		}
	}
	[CRepr]
	public struct IHttpSecurity : IWindowForBindingUI
	{
		public const new Guid IID = .(0x79eac9d7, 0xbafa, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnSecurityProblem(uint32 dwProblem) mut => VT.OnSecurityProblem(ref this, dwProblem);

		[CRepr]
		public struct VTable : IWindowForBindingUI.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHttpSecurity self, uint32 dwProblem) OnSecurityProblem;
		}
	}
	[CRepr]
	public struct IWinInetHttpInfo : IWinInetInfo
	{
		public const new Guid IID = .(0x79eac9d8, 0xbafa, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryInfo(uint32 dwOption, void* pBuffer, out uint32 pcbBuf, out uint32 pdwFlags, out uint32 pdwReserved) mut => VT.QueryInfo(ref this, dwOption, pBuffer, out pcbBuf, out pdwFlags, out pdwReserved);

		[CRepr]
		public struct VTable : IWinInetInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetHttpInfo self, uint32 dwOption, void* pBuffer, out uint32 pcbBuf, out uint32 pdwFlags, out uint32 pdwReserved) QueryInfo;
		}
	}
	[CRepr]
	public struct IWinInetHttpTimeouts : IUnknown
	{
		public const new Guid IID = .(0xf286fa56, 0xc1fd, 0x4270, 0x8e, 0x67, 0xb3, 0xeb, 0x79, 0x0a, 0x81, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRequestTimeouts(out uint32 pdwConnectTimeout, out uint32 pdwSendTimeout, out uint32 pdwReceiveTimeout) mut => VT.GetRequestTimeouts(ref this, out pdwConnectTimeout, out pdwSendTimeout, out pdwReceiveTimeout);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetHttpTimeouts self, out uint32 pdwConnectTimeout, out uint32 pdwSendTimeout, out uint32 pdwReceiveTimeout) GetRequestTimeouts;
		}
	}
	[CRepr]
	public struct IWinInetCacheHints : IUnknown
	{
		public const new Guid IID = .(0xdd1ec3b3, 0x8391, 0x4fdb, 0xa9, 0xe6, 0x34, 0x7c, 0x3c, 0xaa, 0xa7, 0xdd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCacheExtension(PWSTR pwzExt, void* pszCacheFile, out uint32 pcbCacheFile, out uint32 pdwWinInetError, out uint32 pdwReserved) mut => VT.SetCacheExtension(ref this, pwzExt, pszCacheFile, out pcbCacheFile, out pdwWinInetError, out pdwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetCacheHints self, PWSTR pwzExt, void* pszCacheFile, out uint32 pcbCacheFile, out uint32 pdwWinInetError, out uint32 pdwReserved) SetCacheExtension;
		}
	}
	[CRepr]
	public struct IWinInetCacheHints2 : IWinInetCacheHints
	{
		public const new Guid IID = .(0x7857aeac, 0xd31f, 0x49bf, 0x88, 0x4e, 0xdd, 0x46, 0xdf, 0x36, 0x78, 0x0a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCacheExtension2(PWSTR pwzExt, PWSTR pwzCacheFile, out uint32 pcchCacheFile, out uint32 pdwWinInetError, out uint32 pdwReserved) mut => VT.SetCacheExtension2(ref this, pwzExt, pwzCacheFile, out pcchCacheFile, out pdwWinInetError, out pdwReserved);

		[CRepr]
		public struct VTable : IWinInetCacheHints.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinInetCacheHints2 self, PWSTR pwzExt, PWSTR pwzCacheFile, out uint32 pcchCacheFile, out uint32 pdwWinInetError, out uint32 pdwReserved) SetCacheExtension2;
		}
	}
	[CRepr]
	public struct IInternet : IUnknown
	{
		public const new Guid IID = .(0x79eac9e0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IInternetBindInfo : IUnknown
	{
		public const new Guid IID = .(0x79eac9e1, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBindInfo(out uint32 grfBINDF, out BINDINFO pbindinfo) mut => VT.GetBindInfo(ref this, out grfBINDF, out pbindinfo);
		public HRESULT GetBindString(uint32 ulStringType, out PWSTR ppwzStr, uint32 cEl, out uint32 pcElFetched) mut => VT.GetBindString(ref this, ulStringType, out ppwzStr, cEl, out pcElFetched);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetBindInfo self, out uint32 grfBINDF, out BINDINFO pbindinfo) GetBindInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetBindInfo self, uint32 ulStringType, out PWSTR ppwzStr, uint32 cEl, out uint32 pcElFetched) GetBindString;
		}
	}
	[CRepr]
	public struct IInternetBindInfoEx : IInternetBindInfo
	{
		public const new Guid IID = .(0xa3e015b7, 0xa82c, 0x4dcd, 0xa1, 0x50, 0x56, 0x9a, 0xee, 0xed, 0x36, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBindInfoEx(out uint32 grfBINDF, out BINDINFO pbindinfo, out uint32 grfBINDF2, out uint32 pdwReserved) mut => VT.GetBindInfoEx(ref this, out grfBINDF, out pbindinfo, out grfBINDF2, out pdwReserved);

		[CRepr]
		public struct VTable : IInternetBindInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetBindInfoEx self, out uint32 grfBINDF, out BINDINFO pbindinfo, out uint32 grfBINDF2, out uint32 pdwReserved) GetBindInfoEx;
		}
	}
	[CRepr]
	public struct IInternetProtocolRoot : IUnknown
	{
		public const new Guid IID = .(0x79eac9e3, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Start(PWSTR szUrl, ref IInternetProtocolSink pOIProtSink, ref IInternetBindInfo pOIBindInfo, uint32 grfPI, HANDLE_PTR dwReserved) mut => VT.Start(ref this, szUrl, ref pOIProtSink, ref pOIBindInfo, grfPI, dwReserved);
		public HRESULT Continue(ref PROTOCOLDATA pProtocolData) mut => VT.Continue(ref this, ref pProtocolData);
		public HRESULT Abort(HRESULT hrReason, uint32 dwOptions) mut => VT.Abort(ref this, hrReason, dwOptions);
		public HRESULT Terminate(uint32 dwOptions) mut => VT.Terminate(ref this, dwOptions);
		public HRESULT Suspend() mut => VT.Suspend(ref this);
		public HRESULT Resume() mut => VT.Resume(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self, PWSTR szUrl, ref IInternetProtocolSink pOIProtSink, ref IInternetBindInfo pOIBindInfo, uint32 grfPI, HANDLE_PTR dwReserved) Start;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self, ref PROTOCOLDATA pProtocolData) Continue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self, HRESULT hrReason, uint32 dwOptions) Abort;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self, uint32 dwOptions) Terminate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self) Suspend;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolRoot self) Resume;
		}
	}
	[CRepr]
	public struct IInternetProtocol : IInternetProtocolRoot
	{
		public const new Guid IID = .(0x79eac9e4, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Read(void* pv, uint32 cb, out uint32 pcbRead) mut => VT.Read(ref this, pv, cb, out pcbRead);
		public HRESULT Seek(LARGE_INTEGER dlibMove, uint32 dwOrigin, out ULARGE_INTEGER plibNewPosition) mut => VT.Seek(ref this, dlibMove, dwOrigin, out plibNewPosition);
		public HRESULT LockRequest(uint32 dwOptions) mut => VT.LockRequest(ref this, dwOptions);
		public HRESULT UnlockRequest() mut => VT.UnlockRequest(ref this);

		[CRepr]
		public struct VTable : IInternetProtocolRoot.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocol self, void* pv, uint32 cb, out uint32 pcbRead) Read;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocol self, LARGE_INTEGER dlibMove, uint32 dwOrigin, out ULARGE_INTEGER plibNewPosition) Seek;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocol self, uint32 dwOptions) LockRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocol self) UnlockRequest;
		}
	}
	[CRepr]
	public struct IInternetProtocolEx : IInternetProtocol
	{
		public const new Guid IID = .(0xc7a98e66, 0x1010, 0x492c, 0xa1, 0xc8, 0xc8, 0x09, 0xe1, 0xf7, 0x59, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StartEx(ref IUri pUri, ref IInternetProtocolSink pOIProtSink, ref IInternetBindInfo pOIBindInfo, uint32 grfPI, HANDLE_PTR dwReserved) mut => VT.StartEx(ref this, ref pUri, ref pOIProtSink, ref pOIBindInfo, grfPI, dwReserved);

		[CRepr]
		public struct VTable : IInternetProtocol.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolEx self, ref IUri pUri, ref IInternetProtocolSink pOIProtSink, ref IInternetBindInfo pOIBindInfo, uint32 grfPI, HANDLE_PTR dwReserved) StartEx;
		}
	}
	[CRepr]
	public struct IInternetProtocolSink : IUnknown
	{
		public const new Guid IID = .(0x79eac9e5, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Switch(ref PROTOCOLDATA pProtocolData) mut => VT.Switch(ref this, ref pProtocolData);
		public HRESULT ReportProgress(uint32 ulStatusCode, PWSTR szStatusText) mut => VT.ReportProgress(ref this, ulStatusCode, szStatusText);
		public HRESULT ReportData(uint32 grfBSCF, uint32 ulProgress, uint32 ulProgressMax) mut => VT.ReportData(ref this, grfBSCF, ulProgress, ulProgressMax);
		public HRESULT ReportResult(HRESULT hrResult, uint32 dwError, PWSTR szResult) mut => VT.ReportResult(ref this, hrResult, dwError, szResult);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSink self, ref PROTOCOLDATA pProtocolData) Switch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSink self, uint32 ulStatusCode, PWSTR szStatusText) ReportProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSink self, uint32 grfBSCF, uint32 ulProgress, uint32 ulProgressMax) ReportData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSink self, HRESULT hrResult, uint32 dwError, PWSTR szResult) ReportResult;
		}
	}
	[CRepr]
	public struct IInternetProtocolSinkStackable : IUnknown
	{
		public const new Guid IID = .(0x79eac9f0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SwitchSink(ref IInternetProtocolSink pOIProtSink) mut => VT.SwitchSink(ref this, ref pOIProtSink);
		public HRESULT CommitSwitch() mut => VT.CommitSwitch(ref this);
		public HRESULT RollbackSwitch() mut => VT.RollbackSwitch(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSinkStackable self, ref IInternetProtocolSink pOIProtSink) SwitchSink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSinkStackable self) CommitSwitch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolSinkStackable self) RollbackSwitch;
		}
	}
	[CRepr]
	public struct IInternetSession : IUnknown
	{
		public const new Guid IID = .(0x79eac9e7, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterNameSpace(ref IClassFactory pCF, in Guid rclsid, PWSTR pwzProtocol, uint32 cPatterns, in PWSTR ppwzPatterns, uint32 dwReserved) mut => VT.RegisterNameSpace(ref this, ref pCF, rclsid, pwzProtocol, cPatterns, ppwzPatterns, dwReserved);
		public HRESULT UnregisterNameSpace(ref IClassFactory pCF, PWSTR pszProtocol) mut => VT.UnregisterNameSpace(ref this, ref pCF, pszProtocol);
		public HRESULT RegisterMimeFilter(ref IClassFactory pCF, in Guid rclsid, PWSTR pwzType) mut => VT.RegisterMimeFilter(ref this, ref pCF, rclsid, pwzType);
		public HRESULT UnregisterMimeFilter(ref IClassFactory pCF, PWSTR pwzType) mut => VT.UnregisterMimeFilter(ref this, ref pCF, pwzType);
		public HRESULT CreateBinding(ref IBindCtx pBC, PWSTR szUrl, ref IUnknown pUnkOuter, out IUnknown* ppUnk, out IInternetProtocol* ppOInetProt, uint32 dwOption) mut => VT.CreateBinding(ref this, ref pBC, szUrl, ref pUnkOuter, out ppUnk, out ppOInetProt, dwOption);
		public HRESULT SetSessionOption(uint32 dwOption, void* pBuffer, uint32 dwBufferLength, uint32 dwReserved) mut => VT.SetSessionOption(ref this, dwOption, pBuffer, dwBufferLength, dwReserved);
		public HRESULT GetSessionOption(uint32 dwOption, void* pBuffer, out uint32 pdwBufferLength, uint32 dwReserved) mut => VT.GetSessionOption(ref this, dwOption, pBuffer, out pdwBufferLength, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, ref IClassFactory pCF, in Guid rclsid, PWSTR pwzProtocol, uint32 cPatterns, in PWSTR ppwzPatterns, uint32 dwReserved) RegisterNameSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, ref IClassFactory pCF, PWSTR pszProtocol) UnregisterNameSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, ref IClassFactory pCF, in Guid rclsid, PWSTR pwzType) RegisterMimeFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, ref IClassFactory pCF, PWSTR pwzType) UnregisterMimeFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, ref IBindCtx pBC, PWSTR szUrl, ref IUnknown pUnkOuter, out IUnknown* ppUnk, out IInternetProtocol* ppOInetProt, uint32 dwOption) CreateBinding;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, uint32 dwOption, void* pBuffer, uint32 dwBufferLength, uint32 dwReserved) SetSessionOption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSession self, uint32 dwOption, void* pBuffer, out uint32 pdwBufferLength, uint32 dwReserved) GetSessionOption;
		}
	}
	[CRepr]
	public struct IInternetThreadSwitch : IUnknown
	{
		public const new Guid IID = .(0x79eac9e8, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Prepare() mut => VT.Prepare(ref this);
		public HRESULT Continue() mut => VT.Continue(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetThreadSwitch self) Prepare;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetThreadSwitch self) Continue;
		}
	}
	[CRepr]
	public struct IInternetPriority : IUnknown
	{
		public const new Guid IID = .(0x79eac9eb, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPriority(int32 nPriority) mut => VT.SetPriority(ref this, nPriority);
		public HRESULT GetPriority(out int32 pnPriority) mut => VT.GetPriority(ref this, out pnPriority);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetPriority self, int32 nPriority) SetPriority;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetPriority self, out int32 pnPriority) GetPriority;
		}
	}
	[CRepr]
	public struct IInternetProtocolInfo : IUnknown
	{
		public const new Guid IID = .(0x79eac9ec, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ParseUrl(PWSTR pwzUrl, PARSEACTION ParseAction, uint32 dwParseFlags, PWSTR pwzResult, uint32 cchResult, out uint32 pcchResult, uint32 dwReserved) mut => VT.ParseUrl(ref this, pwzUrl, ParseAction, dwParseFlags, pwzResult, cchResult, out pcchResult, dwReserved);
		public HRESULT CombineUrl(PWSTR pwzBaseUrl, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, PWSTR pwzResult, uint32 cchResult, out uint32 pcchResult, uint32 dwReserved) mut => VT.CombineUrl(ref this, pwzBaseUrl, pwzRelativeUrl, dwCombineFlags, pwzResult, cchResult, out pcchResult, dwReserved);
		public HRESULT CompareUrl(PWSTR pwzUrl1, PWSTR pwzUrl2, uint32 dwCompareFlags) mut => VT.CompareUrl(ref this, pwzUrl1, pwzUrl2, dwCompareFlags);
		public HRESULT QueryInfo(PWSTR pwzUrl, QUERYOPTION OueryOption, uint32 dwQueryFlags, void* pBuffer, uint32 cbBuffer, out uint32 pcbBuf, uint32 dwReserved) mut => VT.QueryInfo(ref this, pwzUrl, OueryOption, dwQueryFlags, pBuffer, cbBuffer, out pcbBuf, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolInfo self, PWSTR pwzUrl, PARSEACTION ParseAction, uint32 dwParseFlags, PWSTR pwzResult, uint32 cchResult, out uint32 pcchResult, uint32 dwReserved) ParseUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolInfo self, PWSTR pwzBaseUrl, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, PWSTR pwzResult, uint32 cchResult, out uint32 pcchResult, uint32 dwReserved) CombineUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolInfo self, PWSTR pwzUrl1, PWSTR pwzUrl2, uint32 dwCompareFlags) CompareUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetProtocolInfo self, PWSTR pwzUrl, QUERYOPTION OueryOption, uint32 dwQueryFlags, void* pBuffer, uint32 cbBuffer, out uint32 pcbBuf, uint32 dwReserved) QueryInfo;
		}
	}
	[CRepr]
	public struct IInternetSecurityMgrSite : IUnknown
	{
		public const new Guid IID = .(0x79eac9ed, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetWindow(out HWND phwnd) mut => VT.GetWindow(ref this, out phwnd);
		public HRESULT EnableModeless(BOOL fEnable) mut => VT.EnableModeless(ref this, fEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityMgrSite self, out HWND phwnd) GetWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityMgrSite self, BOOL fEnable) EnableModeless;
		}
	}
	[CRepr]
	public struct IInternetSecurityManager : IUnknown
	{
		public const new Guid IID = .(0x79eac9ee, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSecuritySite(ref IInternetSecurityMgrSite pSite) mut => VT.SetSecuritySite(ref this, ref pSite);
		public HRESULT GetSecuritySite(out IInternetSecurityMgrSite* ppSite) mut => VT.GetSecuritySite(ref this, out ppSite);
		public HRESULT MapUrlToZone(PWSTR pwszUrl, out uint32 pdwZone, uint32 dwFlags) mut => VT.MapUrlToZone(ref this, pwszUrl, out pdwZone, dwFlags);
		public HRESULT GetSecurityId(PWSTR pwszUrl, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) mut => VT.GetSecurityId(ref this, pwszUrl, pbSecurityId, out pcbSecurityId, dwReserved);
		public HRESULT ProcessUrlAction(PWSTR pwszUrl, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved) mut => VT.ProcessUrlAction(ref this, pwszUrl, dwAction, pPolicy, cbPolicy, ref pContext, cbContext, dwFlags, dwReserved);
		public HRESULT QueryCustomPolicy(PWSTR pwszUrl, in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwReserved) mut => VT.QueryCustomPolicy(ref this, pwszUrl, guidKey, ppPolicy, out pcbPolicy, ref pContext, cbContext, dwReserved);
		public HRESULT SetZoneMapping(uint32 dwZone, PWSTR lpszPattern, uint32 dwFlags) mut => VT.SetZoneMapping(ref this, dwZone, lpszPattern, dwFlags);
		public HRESULT GetZoneMappings(uint32 dwZone, out IEnumString* ppenumString, uint32 dwFlags) mut => VT.GetZoneMappings(ref this, dwZone, out ppenumString, dwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, ref IInternetSecurityMgrSite pSite) SetSecuritySite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, out IInternetSecurityMgrSite* ppSite) GetSecuritySite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, PWSTR pwszUrl, out uint32 pdwZone, uint32 dwFlags) MapUrlToZone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, PWSTR pwszUrl, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) GetSecurityId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, PWSTR pwszUrl, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved) ProcessUrlAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, PWSTR pwszUrl, in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwReserved) QueryCustomPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, uint32 dwZone, PWSTR lpszPattern, uint32 dwFlags) SetZoneMapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManager self, uint32 dwZone, out IEnumString* ppenumString, uint32 dwFlags) GetZoneMappings;
		}
	}
	[CRepr]
	public struct IInternetSecurityManagerEx : IInternetSecurityManager
	{
		public const new Guid IID = .(0xf164edf1, 0xcc7c, 0x4f0d, 0x9a, 0x94, 0x34, 0x22, 0x26, 0x25, 0xc3, 0x93);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ProcessUrlActionEx(PWSTR pwszUrl, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved, out uint32 pdwOutFlags) mut => VT.ProcessUrlActionEx(ref this, pwszUrl, dwAction, pPolicy, cbPolicy, ref pContext, cbContext, dwFlags, dwReserved, out pdwOutFlags);

		[CRepr]
		public struct VTable : IInternetSecurityManager.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManagerEx self, PWSTR pwszUrl, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved, out uint32 pdwOutFlags) ProcessUrlActionEx;
		}
	}
	[CRepr]
	public struct IInternetSecurityManagerEx2 : IInternetSecurityManagerEx
	{
		public const new Guid IID = .(0xf1e50292, 0xa795, 0x4117, 0x8e, 0x09, 0x2b, 0x56, 0x0a, 0x72, 0xac, 0x60);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MapUrlToZoneEx2(ref IUri pUri, out uint32 pdwZone, uint32 dwFlags, PWSTR* ppwszMappedUrl, uint32* pdwOutFlags) mut => VT.MapUrlToZoneEx2(ref this, ref pUri, out pdwZone, dwFlags, ppwszMappedUrl, pdwOutFlags);
		public HRESULT ProcessUrlActionEx2(ref IUri pUri, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint dwReserved, out uint32 pdwOutFlags) mut => VT.ProcessUrlActionEx2(ref this, ref pUri, dwAction, pPolicy, cbPolicy, ref pContext, cbContext, dwFlags, dwReserved, out pdwOutFlags);
		public HRESULT GetSecurityIdEx2(ref IUri pUri, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) mut => VT.GetSecurityIdEx2(ref this, ref pUri, pbSecurityId, out pcbSecurityId, dwReserved);
		public HRESULT QueryCustomPolicyEx2(ref IUri pUri, in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, ref uint8 pContext, uint32 cbContext, uint dwReserved) mut => VT.QueryCustomPolicyEx2(ref this, ref pUri, guidKey, ppPolicy, out pcbPolicy, ref pContext, cbContext, dwReserved);

		[CRepr]
		public struct VTable : IInternetSecurityManagerEx.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManagerEx2 self, ref IUri pUri, out uint32 pdwZone, uint32 dwFlags, PWSTR* ppwszMappedUrl, uint32* pdwOutFlags) MapUrlToZoneEx2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManagerEx2 self, ref IUri pUri, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, ref uint8 pContext, uint32 cbContext, uint32 dwFlags, uint dwReserved, out uint32 pdwOutFlags) ProcessUrlActionEx2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManagerEx2 self, ref IUri pUri, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) GetSecurityIdEx2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetSecurityManagerEx2 self, ref IUri pUri, in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, ref uint8 pContext, uint32 cbContext, uint dwReserved) QueryCustomPolicyEx2;
		}
	}
	[CRepr]
	public struct IZoneIdentifier : IUnknown
	{
		public const new Guid IID = .(0xcd45f185, 0x1b21, 0x48e2, 0x96, 0x7b, 0xea, 0xd7, 0x43, 0xa8, 0x91, 0x4e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetId(out uint32 pdwZone) mut => VT.GetId(ref this, out pdwZone);
		public HRESULT SetId(uint32 dwZone) mut => VT.SetId(ref this, dwZone);
		public HRESULT Remove() mut => VT.Remove(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier self, out uint32 pdwZone) GetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier self, uint32 dwZone) SetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier self) Remove;
		}
	}
	[CRepr]
	public struct IZoneIdentifier2 : IZoneIdentifier
	{
		public const new Guid IID = .(0xeb5e760c, 0x09ef, 0x45c0, 0xb5, 0x10, 0x70, 0x83, 0x0c, 0xe3, 0x1e, 0x6a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLastWriterPackageFamilyName(out PWSTR packageFamilyName) mut => VT.GetLastWriterPackageFamilyName(ref this, out packageFamilyName);
		public HRESULT SetLastWriterPackageFamilyName(PWSTR packageFamilyName) mut => VT.SetLastWriterPackageFamilyName(ref this, packageFamilyName);
		public HRESULT RemoveLastWriterPackageFamilyName() mut => VT.RemoveLastWriterPackageFamilyName(ref this);
		public HRESULT GetAppZoneId(out uint32 zone) mut => VT.GetAppZoneId(ref this, out zone);
		public HRESULT SetAppZoneId(uint32 zone) mut => VT.SetAppZoneId(ref this, zone);
		public HRESULT RemoveAppZoneId() mut => VT.RemoveAppZoneId(ref this);

		[CRepr]
		public struct VTable : IZoneIdentifier.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self, out PWSTR packageFamilyName) GetLastWriterPackageFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self, PWSTR packageFamilyName) SetLastWriterPackageFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self) RemoveLastWriterPackageFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self, out uint32 zone) GetAppZoneId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self, uint32 zone) SetAppZoneId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoneIdentifier2 self) RemoveAppZoneId;
		}
	}
	[CRepr]
	public struct IInternetHostSecurityManager : IUnknown
	{
		public const new Guid IID = .(0x3af280b6, 0xcb3f, 0x11d0, 0x89, 0x1e, 0x00, 0xc0, 0x4f, 0xb6, 0xbf, 0xc4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSecurityId(uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) mut => VT.GetSecurityId(ref this, pbSecurityId, out pcbSecurityId, dwReserved);
		public HRESULT ProcessUrlAction(uint32 dwAction, out uint8 pPolicy, uint32 cbPolicy, uint8* pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved) mut => VT.ProcessUrlAction(ref this, dwAction, out pPolicy, cbPolicy, pContext, cbContext, dwFlags, dwReserved);
		public HRESULT QueryCustomPolicy(in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, uint8* pContext, uint32 cbContext, uint32 dwReserved) mut => VT.QueryCustomPolicy(ref this, guidKey, ppPolicy, out pcbPolicy, pContext, cbContext, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetHostSecurityManager self, uint8* pbSecurityId, out uint32 pcbSecurityId, uint dwReserved) GetSecurityId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetHostSecurityManager self, uint32 dwAction, out uint8 pPolicy, uint32 cbPolicy, uint8* pContext, uint32 cbContext, uint32 dwFlags, uint32 dwReserved) ProcessUrlAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetHostSecurityManager self, in Guid guidKey, uint8** ppPolicy, out uint32 pcbPolicy, uint8* pContext, uint32 cbContext, uint32 dwReserved) QueryCustomPolicy;
		}
	}
	[CRepr]
	public struct IInternetZoneManager : IUnknown
	{
		public const new Guid IID = .(0x79eac9ef, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetZoneAttributes(uint32 dwZone, out ZONEATTRIBUTES pZoneAttributes) mut => VT.GetZoneAttributes(ref this, dwZone, out pZoneAttributes);
		public HRESULT SetZoneAttributes(uint32 dwZone, ref ZONEATTRIBUTES pZoneAttributes) mut => VT.SetZoneAttributes(ref this, dwZone, ref pZoneAttributes);
		public HRESULT GetZoneCustomPolicy(uint32 dwZone, in Guid guidKey, out uint8* ppPolicy, out uint32 pcbPolicy, URLZONEREG urlZoneReg) mut => VT.GetZoneCustomPolicy(ref this, dwZone, guidKey, out ppPolicy, out pcbPolicy, urlZoneReg);
		public HRESULT SetZoneCustomPolicy(uint32 dwZone, in Guid guidKey, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) mut => VT.SetZoneCustomPolicy(ref this, dwZone, guidKey, pPolicy, cbPolicy, urlZoneReg);
		public HRESULT GetZoneActionPolicy(uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) mut => VT.GetZoneActionPolicy(ref this, dwZone, dwAction, pPolicy, cbPolicy, urlZoneReg);
		public HRESULT SetZoneActionPolicy(uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) mut => VT.SetZoneActionPolicy(ref this, dwZone, dwAction, pPolicy, cbPolicy, urlZoneReg);
		public HRESULT PromptAction(uint32 dwAction, HWND hwndParent, PWSTR pwszUrl, PWSTR pwszText, uint32 dwPromptFlags) mut => VT.PromptAction(ref this, dwAction, hwndParent, pwszUrl, pwszText, dwPromptFlags);
		public HRESULT LogAction(uint32 dwAction, PWSTR pwszUrl, PWSTR pwszText, uint32 dwLogFlags) mut => VT.LogAction(ref this, dwAction, pwszUrl, pwszText, dwLogFlags);
		public HRESULT CreateZoneEnumerator(out uint32 pdwEnum, out uint32 pdwCount, uint32 dwFlags) mut => VT.CreateZoneEnumerator(ref this, out pdwEnum, out pdwCount, dwFlags);
		public HRESULT GetZoneAt(uint32 dwEnum, uint32 dwIndex, out uint32 pdwZone) mut => VT.GetZoneAt(ref this, dwEnum, dwIndex, out pdwZone);
		public HRESULT DestroyZoneEnumerator(uint32 dwEnum) mut => VT.DestroyZoneEnumerator(ref this, dwEnum);
		public HRESULT CopyTemplatePoliciesToZone(uint32 dwTemplate, uint32 dwZone, uint32 dwReserved) mut => VT.CopyTemplatePoliciesToZone(ref this, dwTemplate, dwZone, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, out ZONEATTRIBUTES pZoneAttributes) GetZoneAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, ref ZONEATTRIBUTES pZoneAttributes) SetZoneAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, in Guid guidKey, out uint8* ppPolicy, out uint32 pcbPolicy, URLZONEREG urlZoneReg) GetZoneCustomPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, in Guid guidKey, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) SetZoneCustomPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) GetZoneActionPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg) SetZoneActionPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwAction, HWND hwndParent, PWSTR pwszUrl, PWSTR pwszText, uint32 dwPromptFlags) PromptAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwAction, PWSTR pwszUrl, PWSTR pwszText, uint32 dwLogFlags) LogAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, out uint32 pdwEnum, out uint32 pdwCount, uint32 dwFlags) CreateZoneEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwEnum, uint32 dwIndex, out uint32 pdwZone) GetZoneAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwEnum) DestroyZoneEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManager self, uint32 dwTemplate, uint32 dwZone, uint32 dwReserved) CopyTemplatePoliciesToZone;
		}
	}
	[CRepr]
	public struct IInternetZoneManagerEx : IInternetZoneManager
	{
		public const new Guid IID = .(0xa4c23339, 0x8e06, 0x431e, 0x9b, 0xf4, 0x7e, 0x71, 0x1c, 0x08, 0x56, 0x48);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetZoneActionPolicyEx(uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg, uint32 dwFlags) mut => VT.GetZoneActionPolicyEx(ref this, dwZone, dwAction, pPolicy, cbPolicy, urlZoneReg, dwFlags);
		public HRESULT SetZoneActionPolicyEx(uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg, uint32 dwFlags) mut => VT.SetZoneActionPolicyEx(ref this, dwZone, dwAction, pPolicy, cbPolicy, urlZoneReg, dwFlags);

		[CRepr]
		public struct VTable : IInternetZoneManager.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx self, uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg, uint32 dwFlags) GetZoneActionPolicyEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx self, uint32 dwZone, uint32 dwAction, uint8* pPolicy, uint32 cbPolicy, URLZONEREG urlZoneReg, uint32 dwFlags) SetZoneActionPolicyEx;
		}
	}
	[CRepr]
	public struct IInternetZoneManagerEx2 : IInternetZoneManagerEx
	{
		public const new Guid IID = .(0xedc17559, 0xdd5d, 0x4846, 0x8e, 0xef, 0x8b, 0xec, 0xba, 0x5a, 0x4a, 0xbf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetZoneAttributesEx(uint32 dwZone, out ZONEATTRIBUTES pZoneAttributes, uint32 dwFlags) mut => VT.GetZoneAttributesEx(ref this, dwZone, out pZoneAttributes, dwFlags);
		public HRESULT GetZoneSecurityState(uint32 dwZoneIndex, BOOL fRespectPolicy, out uint32 pdwState, out BOOL pfPolicyEncountered) mut => VT.GetZoneSecurityState(ref this, dwZoneIndex, fRespectPolicy, out pdwState, out pfPolicyEncountered);
		public HRESULT GetIESecurityState(BOOL fRespectPolicy, out uint32 pdwState, out BOOL pfPolicyEncountered, BOOL fNoCache) mut => VT.GetIESecurityState(ref this, fRespectPolicy, out pdwState, out pfPolicyEncountered, fNoCache);
		public HRESULT FixUnsecureSettings() mut => VT.FixUnsecureSettings(ref this);

		[CRepr]
		public struct VTable : IInternetZoneManagerEx.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx2 self, uint32 dwZone, out ZONEATTRIBUTES pZoneAttributes, uint32 dwFlags) GetZoneAttributesEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx2 self, uint32 dwZoneIndex, BOOL fRespectPolicy, out uint32 pdwState, out BOOL pfPolicyEncountered) GetZoneSecurityState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx2 self, BOOL fRespectPolicy, out uint32 pdwState, out BOOL pfPolicyEncountered, BOOL fNoCache) GetIESecurityState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternetZoneManagerEx2 self) FixUnsecureSettings;
		}
	}
	[CRepr]
	public struct ISoftDistExt : IUnknown
	{
		public const new Guid IID = .(0xb15b8dc1, 0xc7e1, 0x11d0, 0x86, 0x80, 0x00, 0xaa, 0x00, 0xbd, 0xcb, 0x71);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ProcessSoftDist(PWSTR szCDFURL, ref IXMLElement pSoftDistElement, out SOFTDISTINFO lpsdi) mut => VT.ProcessSoftDist(ref this, szCDFURL, ref pSoftDistElement, out lpsdi);
		public HRESULT GetFirstCodeBase(ref PWSTR szCodeBase, ref uint32 dwMaxSize) mut => VT.GetFirstCodeBase(ref this, ref szCodeBase, ref dwMaxSize);
		public HRESULT GetNextCodeBase(ref PWSTR szCodeBase, ref uint32 dwMaxSize) mut => VT.GetNextCodeBase(ref this, ref szCodeBase, ref dwMaxSize);
		public HRESULT AsyncInstallDistributionUnit(ref IBindCtx pbc, void* pvReserved, uint32 flags, ref CODEBASEHOLD lpcbh) mut => VT.AsyncInstallDistributionUnit(ref this, ref pbc, pvReserved, flags, ref lpcbh);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftDistExt self, PWSTR szCDFURL, ref IXMLElement pSoftDistElement, out SOFTDISTINFO lpsdi) ProcessSoftDist;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftDistExt self, ref PWSTR szCodeBase, ref uint32 dwMaxSize) GetFirstCodeBase;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftDistExt self, ref PWSTR szCodeBase, ref uint32 dwMaxSize) GetNextCodeBase;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftDistExt self, ref IBindCtx pbc, void* pvReserved, uint32 flags, ref CODEBASEHOLD lpcbh) AsyncInstallDistributionUnit;
		}
	}
	[CRepr]
	public struct ICatalogFileInfo : IUnknown
	{
		public const new Guid IID = .(0x711c7600, 0x6b48, 0x11d1, 0xb4, 0x03, 0x00, 0xaa, 0x00, 0xb9, 0x2a, 0xf1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCatalogFile(out PSTR ppszCatalogFile) mut => VT.GetCatalogFile(ref this, out ppszCatalogFile);
		public HRESULT GetJavaTrust(void** ppJavaTrust) mut => VT.GetJavaTrust(ref this, ppJavaTrust);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogFileInfo self, out PSTR ppszCatalogFile) GetCatalogFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogFileInfo self, void** ppJavaTrust) GetJavaTrust;
		}
	}
	[CRepr]
	public struct IDataFilter : IUnknown
	{
		public const new Guid IID = .(0x69d14c80, 0xc18e, 0x11d0, 0xa9, 0xce, 0x00, 0x60, 0x97, 0x94, 0x23, 0x11);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DoEncode(uint32 dwFlags, int32 lInBufferSize, uint8* pbInBuffer, int32 lOutBufferSize, uint8* pbOutBuffer, int32 lInBytesAvailable, out int32 plInBytesRead, out int32 plOutBytesWritten, uint32 dwReserved) mut => VT.DoEncode(ref this, dwFlags, lInBufferSize, pbInBuffer, lOutBufferSize, pbOutBuffer, lInBytesAvailable, out plInBytesRead, out plOutBytesWritten, dwReserved);
		public HRESULT DoDecode(uint32 dwFlags, int32 lInBufferSize, uint8* pbInBuffer, int32 lOutBufferSize, uint8* pbOutBuffer, int32 lInBytesAvailable, out int32 plInBytesRead, out int32 plOutBytesWritten, uint32 dwReserved) mut => VT.DoDecode(ref this, dwFlags, lInBufferSize, pbInBuffer, lOutBufferSize, pbOutBuffer, lInBytesAvailable, out plInBytesRead, out plOutBytesWritten, dwReserved);
		public HRESULT SetEncodingLevel(uint32 dwEncLevel) mut => VT.SetEncodingLevel(ref this, dwEncLevel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataFilter self, uint32 dwFlags, int32 lInBufferSize, uint8* pbInBuffer, int32 lOutBufferSize, uint8* pbOutBuffer, int32 lInBytesAvailable, out int32 plInBytesRead, out int32 plOutBytesWritten, uint32 dwReserved) DoEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataFilter self, uint32 dwFlags, int32 lInBufferSize, uint8* pbInBuffer, int32 lOutBufferSize, uint8* pbOutBuffer, int32 lInBytesAvailable, out int32 plInBytesRead, out int32 plOutBytesWritten, uint32 dwReserved) DoDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataFilter self, uint32 dwEncLevel) SetEncodingLevel;
		}
	}
	[CRepr]
	public struct IEncodingFilterFactory : IUnknown
	{
		public const new Guid IID = .(0x70bdde00, 0xc18e, 0x11d0, 0xa9, 0xce, 0x00, 0x60, 0x97, 0x94, 0x23, 0x11);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FindBestFilter(PWSTR pwzCodeIn, PWSTR pwzCodeOut, DATAINFO info, out IDataFilter* ppDF) mut => VT.FindBestFilter(ref this, pwzCodeIn, pwzCodeOut, info, out ppDF);
		public HRESULT GetDefaultFilter(PWSTR pwzCodeIn, PWSTR pwzCodeOut, out IDataFilter* ppDF) mut => VT.GetDefaultFilter(ref this, pwzCodeIn, pwzCodeOut, out ppDF);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEncodingFilterFactory self, PWSTR pwzCodeIn, PWSTR pwzCodeOut, DATAINFO info, out IDataFilter* ppDF) FindBestFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEncodingFilterFactory self, PWSTR pwzCodeIn, PWSTR pwzCodeOut, out IDataFilter* ppDF) GetDefaultFilter;
		}
	}
	[CRepr]
	public struct IWrappedProtocol : IUnknown
	{
		public const new Guid IID = .(0x53c84785, 0x8425, 0x4dc5, 0x97, 0x1b, 0xe5, 0x8d, 0x9c, 0x19, 0xf9, 0xb6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetWrapperCode(out int32 pnCode, uint dwReserved) mut => VT.GetWrapperCode(ref this, out pnCode, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWrappedProtocol self, out int32 pnCode, uint dwReserved) GetWrapperCode;
		}
	}
	[CRepr]
	public struct IGetBindHandle : IUnknown
	{
		public const new Guid IID = .(0xaf0ff408, 0x129d, 0x4b20, 0x91, 0xf0, 0x02, 0xbd, 0x23, 0xd8, 0x83, 0x52);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBindHandle(BINDHANDLETYPES enumRequestedHandle, out HANDLE pRetHandle) mut => VT.GetBindHandle(ref this, enumRequestedHandle, out pRetHandle);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetBindHandle self, BINDHANDLETYPES enumRequestedHandle, out HANDLE pRetHandle) GetBindHandle;
		}
	}
	[CRepr]
	public struct IBindCallbackRedirect : IUnknown
	{
		public const new Guid IID = .(0x11c81bc2, 0x121e, 0x4ed5, 0xb9, 0xc4, 0xb4, 0x30, 0xbd, 0x54, 0xf2, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Redirect(PWSTR lpcUrl, out int16 vbCancel) mut => VT.Redirect(ref this, lpcUrl, out vbCancel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCallbackRedirect self, PWSTR lpcUrl, out int16 vbCancel) Redirect;
		}
	}
	[CRepr]
	public struct IBindHttpSecurity : IUnknown
	{
		public const new Guid IID = .(0xa9eda967, 0xf50e, 0x4a33, 0xb3, 0x58, 0x20, 0x6f, 0x6e, 0xf3, 0x08, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIgnoreCertMask(out uint32 pdwIgnoreCertMask) mut => VT.GetIgnoreCertMask(ref this, out pdwIgnoreCertMask);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindHttpSecurity self, out uint32 pdwIgnoreCertMask) GetIgnoreCertMask;
		}
	}
	#endregion
	
	#region Functions
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateURLMoniker(IMoniker* pMkCtx, PWSTR szURL, out IMoniker* ppmk);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateURLMonikerEx(IMoniker* pMkCtx, PWSTR szURL, out IMoniker* ppmk, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetClassURL(PWSTR szURL, out Guid pClsID);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateAsyncBindCtx(uint32 reserved, ref IBindStatusCallback pBSCb, IEnumFORMATETC* pEFetc, out IBindCtx* ppBC);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateURLMonikerEx2(IMoniker* pMkCtx, ref IUri pUri, out IMoniker* ppmk, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateAsyncBindCtxEx(ref IBindCtx pbc, uint32 dwOptions, ref IBindStatusCallback pBSCb, IEnumFORMATETC* pEnum, out IBindCtx* ppBC, uint32 reserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MkParseDisplayNameEx(ref IBindCtx pbc, PWSTR szDisplayName, out uint32 pchEaten, out IMoniker* ppmk);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterBindStatusCallback(ref IBindCtx pBC, ref IBindStatusCallback pBSCb, out IBindStatusCallback* ppBSCBPrev, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RevokeBindStatusCallback(ref IBindCtx pBC, ref IBindStatusCallback pBSCb);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetClassFileOrMime(IBindCtx* pBC, PWSTR szFilename, void* pBuffer, uint32 cbSize, PWSTR szMime, uint32 dwReserved, out Guid pclsid);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IsValidURL(IBindCtx* pBC, PWSTR szURL, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoGetClassObjectFromURL(in Guid rCLASSID, PWSTR szCODE, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR szTYPE, ref IBindCtx pBindCtx, CLSCTX dwClsContext, void* pvReserved, in Guid riid, void** ppv);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IEInstallScope(out uint32 pdwScope);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT FaultInIEFeature(HWND hWnd, ref uCLSSPEC pClassSpec, QUERYCONTEXT* pQuery, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetComponentIDFromCLSSPEC(ref uCLSSPEC pClassspec, out PSTR ppszComponentID);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IsAsyncMoniker(ref IMoniker pmk);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterMediaTypes(uint32 ctypes, PSTR* rgszTypes, uint16* rgcfTypes);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT FindMediaType(PSTR rgszTypes, out uint16 rgcfTypes);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateFormatEnumerator(uint32 cfmtetc, FORMATETC* rgfmtetc, out IEnumFORMATETC* ppenumfmtetc);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterFormatEnumerator(ref IBindCtx pBC, ref IEnumFORMATETC pEFetc, uint32 reserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RevokeFormatEnumerator(ref IBindCtx pBC, ref IEnumFORMATETC pEFetc);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterMediaTypeClass(ref IBindCtx pBC, uint32 ctypes, PSTR* rgszTypes, Guid* rgclsID, uint32 reserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT FindMediaTypeClass(ref IBindCtx pBC, PSTR szType, out Guid pclsID, uint32 reserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlMkSetSessionOption(uint32 dwOption, void* pBuffer, uint32 dwBufferLength, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlMkGetSessionOption(uint32 dwOption, void* pBuffer, uint32 dwBufferLength, out uint32 pdwBufferLengthOut, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT FindMimeFromData(IBindCtx* pBC, PWSTR pwzUrl, void* pBuffer, uint32 cbSize, PWSTR pwzMimeProposed, uint32 dwMimeFlags, out PWSTR ppwzMimeOut, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ObtainUserAgentString(uint32 dwOption, uint8* pszUAOut, out uint32 cbSize);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CompareSecurityIds(uint8* pbSecurityId1, uint32 dwLen1, uint8* pbSecurityId2, uint32 dwLen2, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CompatFlagsFromClsid(ref Guid pclsid, out uint32 pdwCompatFlags, out uint32 pdwMiscStatusFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SetAccessForIEAppContainer(HANDLE hObject, IEObjectType ieObjectType, uint32 dwAccessMask);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkSimpleNavigateToString(PWSTR szTarget, PWSTR szLocation, PWSTR szTargetFrameName, ref IUnknown pUnk, IBindCtx* pbc, IBindStatusCallback* param5, uint32 grfHLNF, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkSimpleNavigateToMoniker(IMoniker* pmkTarget, PWSTR szLocation, PWSTR szTargetFrameName, IUnknown* pUnk, IBindCtx* pbc, IBindStatusCallback* param5, uint32 grfHLNF, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenStreamA(IUnknown* param0, PSTR param1, uint32 param2, IBindStatusCallback* param3);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenStreamW(IUnknown* param0, PWSTR param1, uint32 param2, IBindStatusCallback* param3);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenPullStreamA(IUnknown* param0, PSTR param1, uint32 param2, IBindStatusCallback* param3);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenPullStreamW(IUnknown* param0, PWSTR param1, uint32 param2, IBindStatusCallback* param3);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLDownloadToFileA(IUnknown* param0, PSTR param1, PSTR param2, uint32 param3, IBindStatusCallback* param4);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLDownloadToFileW(IUnknown* param0, PWSTR param1, PWSTR param2, uint32 param3, IBindStatusCallback* param4);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLDownloadToCacheFileA(IUnknown* param0, PSTR param1, uint8* param2, uint32 cchFileName, uint32 param4, IBindStatusCallback* param5);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLDownloadToCacheFileW(IUnknown* param0, PWSTR param1, char16* param2, uint32 cchFileName, uint32 param4, IBindStatusCallback* param5);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenBlockingStreamA(IUnknown* param0, PSTR param1, out IStream* param2, uint32 param3, IBindStatusCallback* param4);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT URLOpenBlockingStreamW(IUnknown* param0, PWSTR param1, out IStream* param2, uint32 param3, IBindStatusCallback* param4);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkGoBack(ref IUnknown pUnk);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkGoForward(ref IUnknown pUnk);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkNavigateString(IUnknown* pUnk, PWSTR szTarget);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkNavigateMoniker(IUnknown* pUnk, IMoniker* pmkTarget);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetParseUrl(PWSTR pwzUrl, PARSEACTION ParseAction, uint32 dwFlags, char16* pszResult, uint32 cchResult, out uint32 pcchResult, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetParseIUri(ref IUri pIUri, PARSEACTION ParseAction, uint32 dwFlags, char16* pwzResult, uint32 cchResult, out uint32 pcchResult, uint dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCombineUrl(PWSTR pwzBaseUrl, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, char16* pszResult, uint32 cchResult, uint32* pcchResult, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCombineUrlEx(IUri* pBaseUri, PWSTR pwzRelativeUrl, uint32 dwCombineFlags, out IUri* ppCombinedUri, uint dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCombineIUri(ref IUri pBaseUri, ref IUri pRelativeUri, uint32 dwCombineFlags, out IUri* ppCombinedUri, uint dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCompareUrl(PWSTR pwzUrl1, PWSTR pwzUrl2, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetGetProtocolFlags(PWSTR pwzUrl, out uint32 pdwFlags, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetQueryInfo(PWSTR pwzUrl, QUERYOPTION QueryOptions, uint32 dwQueryFlags, void* pvBuffer, uint32 cbBuffer, uint32* pcbBuffer, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetGetSession(uint32 dwSessionMode, out IInternetSession* ppIInternetSession, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetGetSecurityUrl(PWSTR pwszUrl, out PWSTR ppwszSecUrl, PSUACTION psuAction, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetGetSecurityUrlEx(ref IUri pUri, out IUri* ppSecUri, PSUACTION psuAction, uint dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetSetFeatureEnabled(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, BOOL fEnable);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetIsFeatureEnabled(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetIsFeatureEnabledForUrl(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, PWSTR szURL, IInternetSecurityManager* pSecMgr);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetIsFeatureEnabledForIUri(INTERNETFEATURELIST FeatureEntry, uint32 dwFlags, IUri* pIUri, IInternetSecurityManagerEx2* pSecMgr);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetIsFeatureZoneElevationEnabled(PWSTR szFromURL, PWSTR szToURL, IInternetSecurityManager* pSecMgr, uint32 dwFlags);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CopyStgMedium(in STGMEDIUM pcstgmedSrc, out STGMEDIUM pstgmedDest);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CopyBindInfo(in BINDINFO pcbiSrc, out BINDINFO pbiDest);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ReleaseBindInfo(out BINDINFO pbindinfo);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR IEGetUserPrivateNamespaceName();
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCreateSecurityManager(IServiceProvider* pSP, out IInternetSecurityManager* ppSM, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CoInternetCreateZoneManager(IServiceProvider* pSP, out IInternetZoneManager* ppZM, uint32 dwReserved);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetSoftwareUpdateInfo(PWSTR szDistUnit, out SOFTDISTINFO psdi);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SetSoftwareUpdateAdvertisementState(PWSTR szDistUnit, uint32 dwAdState, uint32 dwAdvertisedVersionMS, uint32 dwAdvertisedVersionLS);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsLoggingEnabledA(PSTR pszUrl);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsLoggingEnabledW(PWSTR pwszUrl);
	[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL WriteHitLogging(ref HIT_LOGGING_INFO lpLogginginfo);
	#endregion
}
