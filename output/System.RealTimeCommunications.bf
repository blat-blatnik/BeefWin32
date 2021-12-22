using System;

// namespace System.RealTimeCommunications
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RTCCS_FORCE_PROFILE = 1;
		public const uint32 RTCCS_FAIL_ON_REDIRECT = 2;
		public const uint32 RTCMT_AUDIO_SEND = 1;
		public const uint32 RTCMT_AUDIO_RECEIVE = 2;
		public const uint32 RTCMT_VIDEO_SEND = 4;
		public const uint32 RTCMT_VIDEO_RECEIVE = 8;
		public const uint32 RTCMT_T120_SENDRECV = 16;
		public const uint32 RTCSI_PC_TO_PC = 1;
		public const uint32 RTCSI_PC_TO_PHONE = 2;
		public const uint32 RTCSI_PHONE_TO_PHONE = 4;
		public const uint32 RTCSI_IM = 8;
		public const uint32 RTCSI_MULTIPARTY_IM = 16;
		public const uint32 RTCSI_APPLICATION = 32;
		public const uint32 RTCTR_UDP = 1;
		public const uint32 RTCTR_TCP = 2;
		public const uint32 RTCTR_TLS = 4;
		public const uint32 RTCAU_BASIC = 1;
		public const uint32 RTCAU_DIGEST = 2;
		public const uint32 RTCAU_NTLM = 4;
		public const uint32 RTCAU_KERBEROS = 8;
		public const uint32 RTCAU_USE_LOGON_CRED = 65536;
		public const uint32 RTCRF_REGISTER_INVITE_SESSIONS = 1;
		public const uint32 RTCRF_REGISTER_MESSAGE_SESSIONS = 2;
		public const uint32 RTCRF_REGISTER_PRESENCE = 4;
		public const uint32 RTCRF_REGISTER_NOTIFY = 8;
		public const uint32 RTCRF_REGISTER_ALL = 15;
		public const uint32 RTCRMF_BUDDY_ROAMING = 1;
		public const uint32 RTCRMF_WATCHER_ROAMING = 2;
		public const uint32 RTCRMF_PRESENCE_ROAMING = 4;
		public const uint32 RTCRMF_PROFILE_ROAMING = 8;
		public const uint32 RTCRMF_ALL_ROAMING = 15;
		public const uint32 RTCEF_CLIENT = 1;
		public const uint32 RTCEF_REGISTRATION_STATE_CHANGE = 2;
		public const uint32 RTCEF_SESSION_STATE_CHANGE = 4;
		public const uint32 RTCEF_SESSION_OPERATION_COMPLETE = 8;
		public const uint32 RTCEF_PARTICIPANT_STATE_CHANGE = 16;
		public const uint32 RTCEF_MEDIA = 32;
		public const uint32 RTCEF_INTENSITY = 64;
		public const uint32 RTCEF_MESSAGING = 128;
		public const uint32 RTCEF_BUDDY = 256;
		public const uint32 RTCEF_WATCHER = 512;
		public const uint32 RTCEF_PROFILE = 1024;
		public const uint32 RTCEF_USERSEARCH = 2048;
		public const uint32 RTCEF_INFO = 4096;
		public const uint32 RTCEF_GROUP = 8192;
		public const uint32 RTCEF_MEDIA_REQUEST = 16384;
		public const uint32 RTCEF_ROAMING = 65536;
		public const uint32 RTCEF_PRESENCE_PROPERTY = 131072;
		public const uint32 RTCEF_BUDDY2 = 262144;
		public const uint32 RTCEF_WATCHER2 = 524288;
		public const uint32 RTCEF_SESSION_REFER_STATUS = 1048576;
		public const uint32 RTCEF_SESSION_REFERRED = 2097152;
		public const uint32 RTCEF_REINVITE = 4194304;
		public const uint32 RTCEF_PRESENCE_DATA = 8388608;
		public const uint32 RTCEF_PRESENCE_STATUS = 16777216;
		public const uint32 RTCEF_ALL = 33554431;
		public const uint32 RTCIF_DISABLE_MEDIA = 1;
		public const uint32 RTCIF_DISABLE_UPNP = 2;
		public const uint32 RTCIF_ENABLE_SERVER_CLASS = 4;
		public const uint32 RTCIF_DISABLE_STRICT_DNS = 8;
		public const uint32 FACILITY_RTC_INTERFACE = 238;
		public const uint32 FACILITY_SIP_STATUS_CODE = 239;
		public const uint32 FACILITY_PINT_STATUS_CODE = 240;
		public const uint32 STATUS_SEVERITY_RTC_ERROR = 2;
		public const HRESULT RTC_E_SIP_CODECS_DO_NOT_MATCH = -2131886080;
		public const HRESULT RTC_E_SIP_STREAM_PRESENT = -2131886079;
		public const HRESULT RTC_E_SIP_STREAM_NOT_PRESENT = -2131886078;
		public const HRESULT RTC_E_SIP_NO_STREAM = -2131886077;
		public const HRESULT RTC_E_SIP_PARSE_FAILED = -2131886076;
		public const HRESULT RTC_E_SIP_HEADER_NOT_PRESENT = -2131886075;
		public const HRESULT RTC_E_SDP_NOT_PRESENT = -2131886074;
		public const HRESULT RTC_E_SDP_PARSE_FAILED = -2131886073;
		public const HRESULT RTC_E_SDP_UPDATE_FAILED = -2131886072;
		public const HRESULT RTC_E_SDP_MULTICAST = -2131886071;
		public const HRESULT RTC_E_SDP_CONNECTION_ADDR = -2131886070;
		public const HRESULT RTC_E_SDP_NO_MEDIA = -2131886069;
		public const HRESULT RTC_E_SIP_TIMEOUT = -2131886068;
		public const HRESULT RTC_E_SDP_FAILED_TO_BUILD = -2131886067;
		public const HRESULT RTC_E_SIP_INVITE_TRANSACTION_PENDING = -2131886066;
		public const HRESULT RTC_E_SIP_AUTH_HEADER_SENT = -2131886065;
		public const HRESULT RTC_E_SIP_AUTH_TYPE_NOT_SUPPORTED = -2131886064;
		public const HRESULT RTC_E_SIP_AUTH_FAILED = -2131886063;
		public const HRESULT RTC_E_INVALID_SIP_URL = -2131886062;
		public const HRESULT RTC_E_DESTINATION_ADDRESS_LOCAL = -2131886061;
		public const HRESULT RTC_E_INVALID_ADDRESS_LOCAL = -2131886060;
		public const HRESULT RTC_E_DESTINATION_ADDRESS_MULTICAST = -2131886059;
		public const HRESULT RTC_E_INVALID_PROXY_ADDRESS = -2131886058;
		public const HRESULT RTC_E_SIP_TRANSPORT_NOT_SUPPORTED = -2131886057;
		public const HRESULT RTC_E_SIP_NEED_MORE_DATA = -2131886056;
		public const HRESULT RTC_E_SIP_CALL_DISCONNECTED = -2131886055;
		public const HRESULT RTC_E_SIP_REQUEST_DESTINATION_ADDR_NOT_PRESENT = -2131886054;
		public const HRESULT RTC_E_SIP_UDP_SIZE_EXCEEDED = -2131886053;
		public const HRESULT RTC_E_SIP_SSL_TUNNEL_FAILED = -2131886052;
		public const HRESULT RTC_E_SIP_SSL_NEGOTIATION_TIMEOUT = -2131886051;
		public const HRESULT RTC_E_SIP_STACK_SHUTDOWN = -2131886050;
		public const HRESULT RTC_E_MEDIA_CONTROLLER_STATE = -2131886049;
		public const HRESULT RTC_E_MEDIA_NEED_TERMINAL = -2131886048;
		public const HRESULT RTC_E_MEDIA_AUDIO_DEVICE_NOT_AVAILABLE = -2131886047;
		public const HRESULT RTC_E_MEDIA_VIDEO_DEVICE_NOT_AVAILABLE = -2131886046;
		public const HRESULT RTC_E_START_STREAM = -2131886045;
		public const HRESULT RTC_E_MEDIA_AEC = -2131886044;
		public const HRESULT RTC_E_CLIENT_NOT_INITIALIZED = -2131886043;
		public const HRESULT RTC_E_CLIENT_ALREADY_INITIALIZED = -2131886042;
		public const HRESULT RTC_E_CLIENT_ALREADY_SHUT_DOWN = -2131886041;
		public const HRESULT RTC_E_PRESENCE_NOT_ENABLED = -2131886040;
		public const HRESULT RTC_E_INVALID_SESSION_TYPE = -2131886039;
		public const HRESULT RTC_E_INVALID_SESSION_STATE = -2131886038;
		public const HRESULT RTC_E_NO_PROFILE = -2131886037;
		public const HRESULT RTC_E_LOCAL_PHONE_NEEDED = -2131886036;
		public const HRESULT RTC_E_NO_DEVICE = -2131886035;
		public const HRESULT RTC_E_INVALID_PROFILE = -2131886034;
		public const HRESULT RTC_E_PROFILE_NO_PROVISION = -2131886033;
		public const HRESULT RTC_E_PROFILE_NO_KEY = -2131886032;
		public const HRESULT RTC_E_PROFILE_NO_NAME = -2131886031;
		public const HRESULT RTC_E_PROFILE_NO_USER = -2131886030;
		public const HRESULT RTC_E_PROFILE_NO_USER_URI = -2131886029;
		public const HRESULT RTC_E_PROFILE_NO_SERVER = -2131886028;
		public const HRESULT RTC_E_PROFILE_NO_SERVER_ADDRESS = -2131886027;
		public const HRESULT RTC_E_PROFILE_NO_SERVER_PROTOCOL = -2131886026;
		public const HRESULT RTC_E_PROFILE_INVALID_SERVER_PROTOCOL = -2131886025;
		public const HRESULT RTC_E_PROFILE_INVALID_SERVER_AUTHMETHOD = -2131886024;
		public const HRESULT RTC_E_PROFILE_INVALID_SERVER_ROLE = -2131886023;
		public const HRESULT RTC_E_PROFILE_MULTIPLE_REGISTRARS = -2131886022;
		public const HRESULT RTC_E_PROFILE_INVALID_SESSION = -2131886021;
		public const HRESULT RTC_E_PROFILE_INVALID_SESSION_PARTY = -2131886020;
		public const HRESULT RTC_E_PROFILE_INVALID_SESSION_TYPE = -2131886019;
		public const HRESULT RTC_E_OPERATION_WITH_TOO_MANY_PARTICIPANTS = -2131886018;
		public const HRESULT RTC_E_BASIC_AUTH_SET_TLS = -2131886017;
		public const HRESULT RTC_E_SIP_HIGH_SECURITY_SET_TLS = -2131886016;
		public const HRESULT RTC_S_ROAMING_NOT_SUPPORTED = 15597633;
		public const HRESULT RTC_E_PROFILE_SERVER_UNAUTHORIZED = -2131886014;
		public const HRESULT RTC_E_DUPLICATE_REALM = -2131886013;
		public const HRESULT RTC_E_POLICY_NOT_ALLOW = -2131886012;
		public const HRESULT RTC_E_PORT_MAPPING_UNAVAILABLE = -2131886011;
		public const HRESULT RTC_E_PORT_MAPPING_FAILED = -2131886010;
		public const HRESULT RTC_E_SECURITY_LEVEL_NOT_COMPATIBLE = -2131886009;
		public const HRESULT RTC_E_SECURITY_LEVEL_NOT_DEFINED = -2131886008;
		public const HRESULT RTC_E_SECURITY_LEVEL_NOT_SUPPORTED_BY_PARTICIPANT = -2131886007;
		public const HRESULT RTC_E_DUPLICATE_BUDDY = -2131886006;
		public const HRESULT RTC_E_DUPLICATE_WATCHER = -2131886005;
		public const HRESULT RTC_E_MALFORMED_XML = -2131886004;
		public const HRESULT RTC_E_ROAMING_OPERATION_INTERRUPTED = -2131886003;
		public const HRESULT RTC_E_ROAMING_FAILED = -2131886002;
		public const HRESULT RTC_E_INVALID_BUDDY_LIST = -2131886001;
		public const HRESULT RTC_E_INVALID_ACL_LIST = -2131886000;
		public const HRESULT RTC_E_NO_GROUP = -2131885999;
		public const HRESULT RTC_E_DUPLICATE_GROUP = -2131885998;
		public const HRESULT RTC_E_TOO_MANY_GROUPS = -2131885997;
		public const HRESULT RTC_E_NO_BUDDY = -2131885996;
		public const HRESULT RTC_E_NO_WATCHER = -2131885995;
		public const HRESULT RTC_E_NO_REALM = -2131885994;
		public const HRESULT RTC_E_NO_TRANSPORT = -2131885993;
		public const HRESULT RTC_E_NOT_EXIST = -2131885992;
		public const HRESULT RTC_E_INVALID_PREFERENCE_LIST = -2131885991;
		public const HRESULT RTC_E_MAX_PENDING_OPERATIONS = -2131885990;
		public const HRESULT RTC_E_TOO_MANY_RETRIES = -2131885989;
		public const HRESULT RTC_E_INVALID_PORTRANGE = -2131885988;
		public const HRESULT RTC_E_SIP_CALL_CONNECTION_NOT_ESTABLISHED = -2131885987;
		public const HRESULT RTC_E_SIP_ADDITIONAL_PARTY_IN_TWO_PARTY_SESSION = -2131885986;
		public const HRESULT RTC_E_SIP_PARTY_ALREADY_IN_SESSION = -2131885985;
		public const HRESULT RTC_E_SIP_OTHER_PARTY_JOIN_IN_PROGRESS = -2131885984;
		public const HRESULT RTC_E_INVALID_OBJECT_STATE = -2131885983;
		public const HRESULT RTC_E_PRESENCE_ENABLED = -2131885982;
		public const HRESULT RTC_E_ROAMING_ENABLED = -2131885981;
		public const HRESULT RTC_E_SIP_TLS_INCOMPATIBLE_ENCRYPTION = -2131885980;
		public const HRESULT RTC_E_SIP_INVALID_CERTIFICATE = -2131885979;
		public const HRESULT RTC_E_SIP_DNS_FAIL = -2131885978;
		public const HRESULT RTC_E_SIP_TCP_FAIL = -2131885977;
		public const HRESULT RTC_E_TOO_SMALL_EXPIRES_VALUE = -2131885976;
		public const HRESULT RTC_E_SIP_TLS_FAIL = -2131885975;
		public const HRESULT RTC_E_NOT_PRESENCE_PROFILE = -2131885974;
		public const HRESULT RTC_E_SIP_INVITEE_PARTY_TIMEOUT = -2131885973;
		public const HRESULT RTC_E_SIP_AUTH_TIME_SKEW = -2131885972;
		public const HRESULT RTC_E_INVALID_REGISTRATION_STATE = -2131885971;
		public const HRESULT RTC_E_MEDIA_DISABLED = -2131885970;
		public const HRESULT RTC_E_MEDIA_ENABLED = -2131885969;
		public const HRESULT RTC_E_REFER_NOT_ACCEPTED = -2131885968;
		public const HRESULT RTC_E_REFER_NOT_ALLOWED = -2131885967;
		public const HRESULT RTC_E_REFER_NOT_EXIST = -2131885966;
		public const HRESULT RTC_E_SIP_HOLD_OPERATION_PENDING = -2131885965;
		public const HRESULT RTC_E_SIP_UNHOLD_OPERATION_PENDING = -2131885964;
		public const HRESULT RTC_E_MEDIA_SESSION_NOT_EXIST = -2131885963;
		public const HRESULT RTC_E_MEDIA_SESSION_IN_HOLD = -2131885962;
		public const HRESULT RTC_E_ANOTHER_MEDIA_SESSION_ACTIVE = -2131885961;
		public const HRESULT RTC_E_MAX_REDIRECTS = -2131885960;
		public const HRESULT RTC_E_REDIRECT_PROCESSING_FAILED = -2131885959;
		public const HRESULT RTC_E_LISTENING_SOCKET_NOT_EXIST = -2131885958;
		public const HRESULT RTC_E_INVALID_LISTEN_SOCKET = -2131885957;
		public const HRESULT RTC_E_PORT_MANAGER_ALREADY_SET = -2131885956;
		public const HRESULT RTC_E_SECURITY_LEVEL_ALREADY_SET = -2131885955;
		public const HRESULT RTC_E_UDP_NOT_SUPPORTED = -2131885954;
		public const HRESULT RTC_E_SIP_REFER_OPERATION_PENDING = -2131885953;
		public const HRESULT RTC_E_PLATFORM_NOT_SUPPORTED = -2131885952;
		public const HRESULT RTC_E_SIP_PEER_PARTICIPANT_IN_MULTIPARTY_SESSION = -2131885951;
		public const HRESULT RTC_E_NOT_ALLOWED = -2131885950;
		public const HRESULT RTC_E_REGISTRATION_DEACTIVATED = -2131885949;
		public const HRESULT RTC_E_REGISTRATION_REJECTED = -2131885948;
		public const HRESULT RTC_E_REGISTRATION_UNREGISTERED = -2131885947;
		public const HRESULT RTC_E_STATUS_INFO_TRYING = 15663204;
		public const HRESULT RTC_E_STATUS_INFO_RINGING = 15663284;
		public const HRESULT RTC_E_STATUS_INFO_CALL_FORWARDING = 15663285;
		public const HRESULT RTC_E_STATUS_INFO_QUEUED = 15663286;
		public const HRESULT RTC_E_STATUS_SESSION_PROGRESS = 15663287;
		public const HRESULT RTC_E_STATUS_SUCCESS = 15663304;
		public const HRESULT RTC_E_STATUS_REDIRECT_MULTIPLE_CHOICES = -2131820244;
		public const HRESULT RTC_E_STATUS_REDIRECT_MOVED_PERMANENTLY = -2131820243;
		public const HRESULT RTC_E_STATUS_REDIRECT_MOVED_TEMPORARILY = -2131820242;
		public const HRESULT RTC_E_STATUS_REDIRECT_SEE_OTHER = -2131820241;
		public const HRESULT RTC_E_STATUS_REDIRECT_USE_PROXY = -2131820239;
		public const HRESULT RTC_E_STATUS_REDIRECT_ALTERNATIVE_SERVICE = -2131820164;
		public const HRESULT RTC_E_STATUS_CLIENT_BAD_REQUEST = -2131820144;
		public const HRESULT RTC_E_STATUS_CLIENT_UNAUTHORIZED = -2131820143;
		public const HRESULT RTC_E_STATUS_CLIENT_PAYMENT_REQUIRED = -2131820142;
		public const HRESULT RTC_E_STATUS_CLIENT_FORBIDDEN = -2131820141;
		public const HRESULT RTC_E_STATUS_CLIENT_NOT_FOUND = -2131820140;
		public const HRESULT RTC_E_STATUS_CLIENT_METHOD_NOT_ALLOWED = -2131820139;
		public const HRESULT RTC_E_STATUS_CLIENT_NOT_ACCEPTABLE = -2131820138;
		public const HRESULT RTC_E_STATUS_CLIENT_PROXY_AUTHENTICATION_REQUIRED = -2131820137;
		public const HRESULT RTC_E_STATUS_CLIENT_REQUEST_TIMEOUT = -2131820136;
		public const HRESULT RTC_E_STATUS_CLIENT_CONFLICT = -2131820135;
		public const HRESULT RTC_E_STATUS_CLIENT_GONE = -2131820134;
		public const HRESULT RTC_E_STATUS_CLIENT_LENGTH_REQUIRED = -2131820133;
		public const HRESULT RTC_E_STATUS_CLIENT_REQUEST_ENTITY_TOO_LARGE = -2131820131;
		public const HRESULT RTC_E_STATUS_CLIENT_REQUEST_URI_TOO_LARGE = -2131820130;
		public const HRESULT RTC_E_STATUS_CLIENT_UNSUPPORTED_MEDIA_TYPE = -2131820129;
		public const HRESULT RTC_E_STATUS_CLIENT_BAD_EXTENSION = -2131820124;
		public const HRESULT RTC_E_STATUS_CLIENT_TEMPORARILY_NOT_AVAILABLE = -2131820064;
		public const HRESULT RTC_E_STATUS_CLIENT_TRANSACTION_DOES_NOT_EXIST = -2131820063;
		public const HRESULT RTC_E_STATUS_CLIENT_LOOP_DETECTED = -2131820062;
		public const HRESULT RTC_E_STATUS_CLIENT_TOO_MANY_HOPS = -2131820061;
		public const HRESULT RTC_E_STATUS_CLIENT_ADDRESS_INCOMPLETE = -2131820060;
		public const HRESULT RTC_E_STATUS_CLIENT_AMBIGUOUS = -2131820059;
		public const HRESULT RTC_E_STATUS_CLIENT_BUSY_HERE = -2131820058;
		public const HRESULT RTC_E_STATUS_REQUEST_TERMINATED = -2131820057;
		public const HRESULT RTC_E_STATUS_NOT_ACCEPTABLE_HERE = -2131820056;
		public const HRESULT RTC_E_STATUS_SERVER_INTERNAL_ERROR = -2131820044;
		public const HRESULT RTC_E_STATUS_SERVER_NOT_IMPLEMENTED = -2131820043;
		public const HRESULT RTC_E_STATUS_SERVER_BAD_GATEWAY = -2131820042;
		public const HRESULT RTC_E_STATUS_SERVER_SERVICE_UNAVAILABLE = -2131820041;
		public const HRESULT RTC_E_STATUS_SERVER_SERVER_TIMEOUT = -2131820040;
		public const HRESULT RTC_E_STATUS_SERVER_VERSION_NOT_SUPPORTED = -2131820039;
		public const HRESULT RTC_E_STATUS_GLOBAL_BUSY_EVERYWHERE = -2131819944;
		public const HRESULT RTC_E_STATUS_GLOBAL_DECLINE = -2131819941;
		public const HRESULT RTC_E_STATUS_GLOBAL_DOES_NOT_EXIST_ANYWHERE = -2131819940;
		public const HRESULT RTC_E_STATUS_GLOBAL_NOT_ACCEPTABLE = -2131819938;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_BUSY = -2131755003;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_NO_ANSWER = -2131755002;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_ALL_BUSY = -2131755001;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_PL_FAILED = -2131755000;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_SW_FAILED = -2131754999;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_CANCELLED = -2131754998;
		public const HRESULT RTC_E_PINT_STATUS_REJECTED_BADNUMBER = -2131754997;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum RTC_AUDIO_DEVICE : int32
		{
			RTCAD_SPEAKER = 0,
			RTCAD_MICROPHONE = 1,
		}
		[AllowDuplicates]
		public enum RTC_VIDEO_DEVICE : int32
		{
			RTCVD_RECEIVE = 0,
			RTCVD_PREVIEW = 1,
		}
		[AllowDuplicates]
		public enum RTC_EVENT : int32
		{
			RTCE_CLIENT = 0,
			RTCE_REGISTRATION_STATE_CHANGE = 1,
			RTCE_SESSION_STATE_CHANGE = 2,
			RTCE_SESSION_OPERATION_COMPLETE = 3,
			RTCE_PARTICIPANT_STATE_CHANGE = 4,
			RTCE_MEDIA = 5,
			RTCE_INTENSITY = 6,
			RTCE_MESSAGING = 7,
			RTCE_BUDDY = 8,
			RTCE_WATCHER = 9,
			RTCE_PROFILE = 10,
			RTCE_USERSEARCH = 11,
			RTCE_INFO = 12,
			RTCE_GROUP = 13,
			RTCE_MEDIA_REQUEST = 14,
			RTCE_ROAMING = 15,
			RTCE_PRESENCE_PROPERTY = 16,
			RTCE_PRESENCE_DATA = 17,
			RTCE_PRESENCE_STATUS = 18,
			RTCE_SESSION_REFER_STATUS = 19,
			RTCE_SESSION_REFERRED = 20,
			RTCE_REINVITE = 21,
		}
		[AllowDuplicates]
		public enum RTC_LISTEN_MODE : int32
		{
			RTCLM_NONE = 0,
			RTCLM_DYNAMIC = 1,
			RTCLM_BOTH = 2,
		}
		[AllowDuplicates]
		public enum RTC_CLIENT_EVENT_TYPE : int32
		{
			RTCCET_VOLUME_CHANGE = 0,
			RTCCET_DEVICE_CHANGE = 1,
			RTCCET_NETWORK_QUALITY_CHANGE = 2,
			RTCCET_ASYNC_CLEANUP_DONE = 3,
		}
		[AllowDuplicates]
		public enum RTC_BUDDY_EVENT_TYPE : int32
		{
			RTCBET_BUDDY_ADD = 0,
			RTCBET_BUDDY_REMOVE = 1,
			RTCBET_BUDDY_UPDATE = 2,
			RTCBET_BUDDY_STATE_CHANGE = 3,
			RTCBET_BUDDY_ROAMED = 4,
			RTCBET_BUDDY_SUBSCRIBED = 5,
		}
		[AllowDuplicates]
		public enum RTC_WATCHER_EVENT_TYPE : int32
		{
			RTCWET_WATCHER_ADD = 0,
			RTCWET_WATCHER_REMOVE = 1,
			RTCWET_WATCHER_UPDATE = 2,
			RTCWET_WATCHER_OFFERING = 3,
			RTCWET_WATCHER_ROAMED = 4,
		}
		[AllowDuplicates]
		public enum RTC_GROUP_EVENT_TYPE : int32
		{
			RTCGET_GROUP_ADD = 0,
			RTCGET_GROUP_REMOVE = 1,
			RTCGET_GROUP_UPDATE = 2,
			RTCGET_GROUP_BUDDY_ADD = 3,
			RTCGET_GROUP_BUDDY_REMOVE = 4,
			RTCGET_GROUP_ROAMED = 5,
		}
		[AllowDuplicates]
		public enum RTC_TERMINATE_REASON : int32
		{
			RTCTR_NORMAL = 0,
			RTCTR_DND = 1,
			RTCTR_BUSY = 2,
			RTCTR_REJECT = 3,
			RTCTR_TIMEOUT = 4,
			RTCTR_SHUTDOWN = 5,
			RTCTR_INSUFFICIENT_SECURITY_LEVEL = 6,
			RTCTR_NOT_SUPPORTED = 7,
		}
		[AllowDuplicates]
		public enum RTC_REGISTRATION_STATE : int32
		{
			RTCRS_NOT_REGISTERED = 0,
			RTCRS_REGISTERING = 1,
			RTCRS_REGISTERED = 2,
			RTCRS_REJECTED = 3,
			RTCRS_UNREGISTERING = 4,
			RTCRS_ERROR = 5,
			RTCRS_LOGGED_OFF = 6,
			RTCRS_LOCAL_PA_LOGGED_OFF = 7,
			RTCRS_REMOTE_PA_LOGGED_OFF = 8,
		}
		[AllowDuplicates]
		public enum RTC_SESSION_STATE : int32
		{
			RTCSS_IDLE = 0,
			RTCSS_INCOMING = 1,
			RTCSS_ANSWERING = 2,
			RTCSS_INPROGRESS = 3,
			RTCSS_CONNECTED = 4,
			RTCSS_DISCONNECTED = 5,
			RTCSS_HOLD = 6,
			RTCSS_REFER = 7,
		}
		[AllowDuplicates]
		public enum RTC_PARTICIPANT_STATE : int32
		{
			RTCPS_IDLE = 0,
			RTCPS_PENDING = 1,
			RTCPS_INCOMING = 2,
			RTCPS_ANSWERING = 3,
			RTCPS_INPROGRESS = 4,
			RTCPS_ALERTING = 5,
			RTCPS_CONNECTED = 6,
			RTCPS_DISCONNECTING = 7,
			RTCPS_DISCONNECTED = 8,
		}
		[AllowDuplicates]
		public enum RTC_WATCHER_STATE : int32
		{
			RTCWS_UNKNOWN = 0,
			RTCWS_OFFERING = 1,
			RTCWS_ALLOWED = 2,
			RTCWS_BLOCKED = 3,
			RTCWS_DENIED = 4,
			RTCWS_PROMPT = 5,
		}
		[AllowDuplicates]
		public enum RTC_ACE_SCOPE : int32
		{
			RTCAS_SCOPE_USER = 0,
			RTCAS_SCOPE_DOMAIN = 1,
			RTCAS_SCOPE_ALL = 2,
		}
		[AllowDuplicates]
		public enum RTC_OFFER_WATCHER_MODE : int32
		{
			RTCOWM_OFFER_WATCHER_EVENT = 0,
			RTCOWM_AUTOMATICALLY_ADD_WATCHER = 1,
		}
		[AllowDuplicates]
		public enum RTC_WATCHER_MATCH_MODE : int32
		{
			RTCWMM_EXACT_MATCH = 0,
			RTCWMM_BEST_ACE_MATCH = 1,
		}
		[AllowDuplicates]
		public enum RTC_PRIVACY_MODE : int32
		{
			RTCPM_BLOCK_LIST_EXCLUDED = 0,
			RTCPM_ALLOW_LIST_ONLY = 1,
		}
		[AllowDuplicates]
		public enum RTC_SESSION_TYPE : int32
		{
			RTCST_PC_TO_PC = 0,
			RTCST_PC_TO_PHONE = 1,
			RTCST_PHONE_TO_PHONE = 2,
			RTCST_IM = 3,
			RTCST_MULTIPARTY_IM = 4,
			RTCST_APPLICATION = 5,
		}
		[AllowDuplicates]
		public enum RTC_PRESENCE_STATUS : int32
		{
			RTCXS_PRESENCE_OFFLINE = 0,
			RTCXS_PRESENCE_ONLINE = 1,
			RTCXS_PRESENCE_AWAY = 2,
			RTCXS_PRESENCE_IDLE = 3,
			RTCXS_PRESENCE_BUSY = 4,
			RTCXS_PRESENCE_BE_RIGHT_BACK = 5,
			RTCXS_PRESENCE_ON_THE_PHONE = 6,
			RTCXS_PRESENCE_OUT_TO_LUNCH = 7,
		}
		[AllowDuplicates]
		public enum RTC_BUDDY_SUBSCRIPTION_TYPE : int32
		{
			RTCBT_SUBSCRIBED = 0,
			RTCBT_ALWAYS_OFFLINE = 1,
			RTCBT_ALWAYS_ONLINE = 2,
			RTCBT_POLL = 3,
		}
		[AllowDuplicates]
		public enum RTC_MEDIA_EVENT_TYPE : int32
		{
			RTCMET_STOPPED = 0,
			RTCMET_STARTED = 1,
			RTCMET_FAILED = 2,
		}
		[AllowDuplicates]
		public enum RTC_MEDIA_EVENT_REASON : int32
		{
			RTCMER_NORMAL = 0,
			RTCMER_HOLD = 1,
			RTCMER_TIMEOUT = 2,
			RTCMER_BAD_DEVICE = 3,
			RTCMER_NO_PORT = 4,
			RTCMER_PORT_MAPPING_FAILED = 5,
			RTCMER_REMOTE_REQUEST = 6,
		}
		[AllowDuplicates]
		public enum RTC_MESSAGING_EVENT_TYPE : int32
		{
			RTCMSET_MESSAGE = 0,
			RTCMSET_STATUS = 1,
		}
		[AllowDuplicates]
		public enum RTC_MESSAGING_USER_STATUS : int32
		{
			RTCMUS_IDLE = 0,
			RTCMUS_TYPING = 1,
		}
		[AllowDuplicates]
		public enum RTC_DTMF : int32
		{
			RTC_DTMF_0 = 0,
			RTC_DTMF_1 = 1,
			RTC_DTMF_2 = 2,
			RTC_DTMF_3 = 3,
			RTC_DTMF_4 = 4,
			RTC_DTMF_5 = 5,
			RTC_DTMF_6 = 6,
			RTC_DTMF_7 = 7,
			RTC_DTMF_8 = 8,
			RTC_DTMF_9 = 9,
			RTC_DTMF_STAR = 10,
			RTC_DTMF_POUND = 11,
			RTC_DTMF_A = 12,
			RTC_DTMF_B = 13,
			RTC_DTMF_C = 14,
			RTC_DTMF_D = 15,
			RTC_DTMF_FLASH = 16,
		}
		[AllowDuplicates]
		public enum RTC_PROVIDER_URI : int32
		{
			RTCPU_URIHOMEPAGE = 0,
			RTCPU_URIHELPDESK = 1,
			RTCPU_URIPERSONALACCOUNT = 2,
			RTCPU_URIDISPLAYDURINGCALL = 3,
			RTCPU_URIDISPLAYDURINGIDLE = 4,
		}
		[AllowDuplicates]
		public enum RTC_RING_TYPE : int32
		{
			RTCRT_PHONE = 0,
			RTCRT_MESSAGE = 1,
			RTCRT_RINGBACK = 2,
		}
		[AllowDuplicates]
		public enum RTC_T120_APPLET : int32
		{
			RTCTA_WHITEBOARD = 0,
			RTCTA_APPSHARING = 1,
		}
		[AllowDuplicates]
		public enum RTC_PORT_TYPE : int32
		{
			RTCPT_AUDIO_RTP = 0,
			RTCPT_AUDIO_RTCP = 1,
			RTCPT_VIDEO_RTP = 2,
			RTCPT_VIDEO_RTCP = 3,
			RTCPT_SIP = 4,
		}
		[AllowDuplicates]
		public enum RTC_USER_SEARCH_COLUMN : int32
		{
			RTCUSC_URI = 0,
			RTCUSC_DISPLAYNAME = 1,
			RTCUSC_TITLE = 2,
			RTCUSC_OFFICE = 3,
			RTCUSC_PHONE = 4,
			RTCUSC_COMPANY = 5,
			RTCUSC_CITY = 6,
			RTCUSC_STATE = 7,
			RTCUSC_COUNTRY = 8,
			RTCUSC_EMAIL = 9,
		}
		[AllowDuplicates]
		public enum RTC_USER_SEARCH_PREFERENCE : int32
		{
			RTCUSP_MAX_MATCHES = 0,
			RTCUSP_TIME_LIMIT = 1,
		}
		[AllowDuplicates]
		public enum RTC_ROAMING_EVENT_TYPE : int32
		{
			RTCRET_BUDDY_ROAMING = 0,
			RTCRET_WATCHER_ROAMING = 1,
			RTCRET_PRESENCE_ROAMING = 2,
			RTCRET_PROFILE_ROAMING = 3,
			RTCRET_WPENDING_ROAMING = 4,
		}
		[AllowDuplicates]
		public enum RTC_PROFILE_EVENT_TYPE : int32
		{
			RTCPFET_PROFILE_GET = 0,
			RTCPFET_PROFILE_UPDATE = 1,
		}
		[AllowDuplicates]
		public enum RTC_ANSWER_MODE : int32
		{
			RTCAM_OFFER_SESSION_EVENT = 0,
			RTCAM_AUTOMATICALLY_ACCEPT = 1,
			RTCAM_AUTOMATICALLY_REJECT = 2,
			RTCAM_NOT_SUPPORTED = 3,
		}
		[AllowDuplicates]
		public enum RTC_SESSION_REFER_STATUS : int32
		{
			RTCSRS_REFERRING = 0,
			RTCSRS_ACCEPTED = 1,
			RTCSRS_ERROR = 2,
			RTCSRS_REJECTED = 3,
			RTCSRS_DROPPED = 4,
			RTCSRS_DONE = 5,
		}
		[AllowDuplicates]
		public enum RTC_PRESENCE_PROPERTY : int32
		{
			RTCPP_PHONENUMBER = 0,
			RTCPP_DISPLAYNAME = 1,
			RTCPP_EMAIL = 2,
			RTCPP_DEVICE_NAME = 3,
			RTCPP_MULTIPLE = 4,
		}
		[AllowDuplicates]
		public enum RTC_SECURITY_TYPE : int32
		{
			RTCSECT_AUDIO_VIDEO_MEDIA_ENCRYPTION = 0,
			RTCSECT_T120_MEDIA_ENCRYPTION = 1,
		}
		[AllowDuplicates]
		public enum RTC_SECURITY_LEVEL : int32
		{
			RTCSECL_UNSUPPORTED = 1,
			RTCSECL_SUPPORTED = 2,
			RTCSECL_REQUIRED = 3,
		}
		[AllowDuplicates]
		public enum RTC_REINVITE_STATE : int32
		{
			RTCRIN_INCOMING = 0,
			RTCRIN_SUCCEEDED = 1,
			RTCRIN_FAIL = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TRANSPORT_SETTING
		{
			public TRANSPORT_SETTING_ID SettingId;
			public uint32* Length;
			public uint8* Value;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RTCClient = .(0x7a42ea29, 0xa2b7, 0x40c4, 0xb0, 0x91, 0xf6, 0xf0, 0x24, 0xaa, 0x89, 0xbe);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRTCClient : IUnknown
		{
			public const new Guid IID = .(0x07829e45, 0x9a34, 0x408e, 0xa0, 0x11, 0xbd, 0xdf, 0x13, 0x48, 0x7c, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			public HRESULT Shutdown() mut
			{
				return VT.Shutdown(&this);
			}
			public HRESULT PrepareForShutdown() mut
			{
				return VT.PrepareForShutdown(&this);
			}
			public HRESULT put_EventFilter(int32 lFilter) mut
			{
				return VT.put_EventFilter(&this, lFilter);
			}
			public HRESULT get_EventFilter(int32* plFilter) mut
			{
				return VT.get_EventFilter(&this, plFilter);
			}
			public HRESULT SetPreferredMediaTypes(int32 lMediaTypes, int16 fPersistent) mut
			{
				return VT.SetPreferredMediaTypes(&this, lMediaTypes, fPersistent);
			}
			public HRESULT get_PreferredMediaTypes(int32* plMediaTypes) mut
			{
				return VT.get_PreferredMediaTypes(&this, plMediaTypes);
			}
			public HRESULT get_MediaCapabilities(int32* plMediaTypes) mut
			{
				return VT.get_MediaCapabilities(&this, plMediaTypes);
			}
			public HRESULT CreateSession(RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags, IRTCSession** ppSession) mut
			{
				return VT.CreateSession(&this, enType, bstrLocalPhoneURI, pProfile, lFlags, ppSession);
			}
			public HRESULT put_ListenForIncomingSessions(RTC_LISTEN_MODE enListen) mut
			{
				return VT.put_ListenForIncomingSessions(&this, enListen);
			}
			public HRESULT get_ListenForIncomingSessions(RTC_LISTEN_MODE* penListen) mut
			{
				return VT.get_ListenForIncomingSessions(&this, penListen);
			}
			public HRESULT get_NetworkAddresses(int16 fTCP, int16 fExternal, VARIANT* pvAddresses) mut
			{
				return VT.get_NetworkAddresses(&this, fTCP, fExternal, pvAddresses);
			}
			public HRESULT put_Volume(RTC_AUDIO_DEVICE enDevice, int32 lVolume) mut
			{
				return VT.put_Volume(&this, enDevice, lVolume);
			}
			public HRESULT get_Volume(RTC_AUDIO_DEVICE enDevice, int32* plVolume) mut
			{
				return VT.get_Volume(&this, enDevice, plVolume);
			}
			public HRESULT put_AudioMuted(RTC_AUDIO_DEVICE enDevice, int16 fMuted) mut
			{
				return VT.put_AudioMuted(&this, enDevice, fMuted);
			}
			public HRESULT get_AudioMuted(RTC_AUDIO_DEVICE enDevice, int16* pfMuted) mut
			{
				return VT.get_AudioMuted(&this, enDevice, pfMuted);
			}
			public HRESULT get_IVideoWindow(RTC_VIDEO_DEVICE enDevice, IVideoWindow** ppIVideoWindow) mut
			{
				return VT.get_IVideoWindow(&this, enDevice, ppIVideoWindow);
			}
			public HRESULT put_PreferredAudioDevice(RTC_AUDIO_DEVICE enDevice, BSTR bstrDeviceName) mut
			{
				return VT.put_PreferredAudioDevice(&this, enDevice, bstrDeviceName);
			}
			public HRESULT get_PreferredAudioDevice(RTC_AUDIO_DEVICE enDevice, BSTR* pbstrDeviceName) mut
			{
				return VT.get_PreferredAudioDevice(&this, enDevice, pbstrDeviceName);
			}
			public HRESULT put_PreferredVolume(RTC_AUDIO_DEVICE enDevice, int32 lVolume) mut
			{
				return VT.put_PreferredVolume(&this, enDevice, lVolume);
			}
			public HRESULT get_PreferredVolume(RTC_AUDIO_DEVICE enDevice, int32* plVolume) mut
			{
				return VT.get_PreferredVolume(&this, enDevice, plVolume);
			}
			public HRESULT put_PreferredAEC(int16 bEnable) mut
			{
				return VT.put_PreferredAEC(&this, bEnable);
			}
			public HRESULT get_PreferredAEC(int16* pbEnabled) mut
			{
				return VT.get_PreferredAEC(&this, pbEnabled);
			}
			public HRESULT put_PreferredVideoDevice(BSTR bstrDeviceName) mut
			{
				return VT.put_PreferredVideoDevice(&this, bstrDeviceName);
			}
			public HRESULT get_PreferredVideoDevice(BSTR* pbstrDeviceName) mut
			{
				return VT.get_PreferredVideoDevice(&this, pbstrDeviceName);
			}
			public HRESULT get_ActiveMedia(int32* plMediaType) mut
			{
				return VT.get_ActiveMedia(&this, plMediaType);
			}
			public HRESULT put_MaxBitrate(int32 lMaxBitrate) mut
			{
				return VT.put_MaxBitrate(&this, lMaxBitrate);
			}
			public HRESULT get_MaxBitrate(int32* plMaxBitrate) mut
			{
				return VT.get_MaxBitrate(&this, plMaxBitrate);
			}
			public HRESULT put_TemporalSpatialTradeOff(int32 lValue) mut
			{
				return VT.put_TemporalSpatialTradeOff(&this, lValue);
			}
			public HRESULT get_TemporalSpatialTradeOff(int32* plValue) mut
			{
				return VT.get_TemporalSpatialTradeOff(&this, plValue);
			}
			public HRESULT get_NetworkQuality(int32* plNetworkQuality) mut
			{
				return VT.get_NetworkQuality(&this, plNetworkQuality);
			}
			public HRESULT StartT120Applet(RTC_T120_APPLET enApplet) mut
			{
				return VT.StartT120Applet(&this, enApplet);
			}
			public HRESULT StopT120Applets() mut
			{
				return VT.StopT120Applets(&this);
			}
			public HRESULT get_IsT120AppletRunning(RTC_T120_APPLET enApplet, int16* pfRunning) mut
			{
				return VT.get_IsT120AppletRunning(&this, enApplet, pfRunning);
			}
			public HRESULT get_LocalUserURI(BSTR* pbstrUserURI) mut
			{
				return VT.get_LocalUserURI(&this, pbstrUserURI);
			}
			public HRESULT put_LocalUserURI(BSTR bstrUserURI) mut
			{
				return VT.put_LocalUserURI(&this, bstrUserURI);
			}
			public HRESULT get_LocalUserName(BSTR* pbstrUserName) mut
			{
				return VT.get_LocalUserName(&this, pbstrUserName);
			}
			public HRESULT put_LocalUserName(BSTR bstrUserName) mut
			{
				return VT.put_LocalUserName(&this, bstrUserName);
			}
			public HRESULT PlayRing(RTC_RING_TYPE enType, int16 bPlay) mut
			{
				return VT.PlayRing(&this, enType, bPlay);
			}
			public HRESULT SendDTMF(RTC_DTMF enDTMF) mut
			{
				return VT.SendDTMF(&this, enDTMF);
			}
			public HRESULT InvokeTuningWizard(int hwndParent) mut
			{
				return VT.InvokeTuningWizard(&this, hwndParent);
			}
			public HRESULT get_IsTuned(int16* pfTuned) mut
			{
				return VT.get_IsTuned(&this, pfTuned);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCClient *self) Initialize;
				public new function HRESULT(IRTCClient *self) Shutdown;
				public new function HRESULT(IRTCClient *self) PrepareForShutdown;
				public new function HRESULT(IRTCClient *self, int32 lFilter) put_EventFilter;
				public new function HRESULT(IRTCClient *self, int32* plFilter) get_EventFilter;
				public new function HRESULT(IRTCClient *self, int32 lMediaTypes, int16 fPersistent) SetPreferredMediaTypes;
				public new function HRESULT(IRTCClient *self, int32* plMediaTypes) get_PreferredMediaTypes;
				public new function HRESULT(IRTCClient *self, int32* plMediaTypes) get_MediaCapabilities;
				public new function HRESULT(IRTCClient *self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags, IRTCSession** ppSession) CreateSession;
				public new function HRESULT(IRTCClient *self, RTC_LISTEN_MODE enListen) put_ListenForIncomingSessions;
				public new function HRESULT(IRTCClient *self, RTC_LISTEN_MODE* penListen) get_ListenForIncomingSessions;
				public new function HRESULT(IRTCClient *self, int16 fTCP, int16 fExternal, VARIANT* pvAddresses) get_NetworkAddresses;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_Volume;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32* plVolume) get_Volume;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int16 fMuted) put_AudioMuted;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int16* pfMuted) get_AudioMuted;
				public new function HRESULT(IRTCClient *self, RTC_VIDEO_DEVICE enDevice, IVideoWindow** ppIVideoWindow) get_IVideoWindow;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, BSTR bstrDeviceName) put_PreferredAudioDevice;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, BSTR* pbstrDeviceName) get_PreferredAudioDevice;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_PreferredVolume;
				public new function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32* plVolume) get_PreferredVolume;
				public new function HRESULT(IRTCClient *self, int16 bEnable) put_PreferredAEC;
				public new function HRESULT(IRTCClient *self, int16* pbEnabled) get_PreferredAEC;
				public new function HRESULT(IRTCClient *self, BSTR bstrDeviceName) put_PreferredVideoDevice;
				public new function HRESULT(IRTCClient *self, BSTR* pbstrDeviceName) get_PreferredVideoDevice;
				public new function HRESULT(IRTCClient *self, int32* plMediaType) get_ActiveMedia;
				public new function HRESULT(IRTCClient *self, int32 lMaxBitrate) put_MaxBitrate;
				public new function HRESULT(IRTCClient *self, int32* plMaxBitrate) get_MaxBitrate;
				public new function HRESULT(IRTCClient *self, int32 lValue) put_TemporalSpatialTradeOff;
				public new function HRESULT(IRTCClient *self, int32* plValue) get_TemporalSpatialTradeOff;
				public new function HRESULT(IRTCClient *self, int32* plNetworkQuality) get_NetworkQuality;
				public new function HRESULT(IRTCClient *self, RTC_T120_APPLET enApplet) StartT120Applet;
				public new function HRESULT(IRTCClient *self) StopT120Applets;
				public new function HRESULT(IRTCClient *self, RTC_T120_APPLET enApplet, int16* pfRunning) get_IsT120AppletRunning;
				public new function HRESULT(IRTCClient *self, BSTR* pbstrUserURI) get_LocalUserURI;
				public new function HRESULT(IRTCClient *self, BSTR bstrUserURI) put_LocalUserURI;
				public new function HRESULT(IRTCClient *self, BSTR* pbstrUserName) get_LocalUserName;
				public new function HRESULT(IRTCClient *self, BSTR bstrUserName) put_LocalUserName;
				public new function HRESULT(IRTCClient *self, RTC_RING_TYPE enType, int16 bPlay) PlayRing;
				public new function HRESULT(IRTCClient *self, RTC_DTMF enDTMF) SendDTMF;
				public new function HRESULT(IRTCClient *self, int hwndParent) InvokeTuningWizard;
				public new function HRESULT(IRTCClient *self, int16* pfTuned) get_IsTuned;
			}
		}
		[CRepr]
		public struct IRTCClient2 : IRTCClient
		{
			public const new Guid IID = .(0x0c91d71d, 0x1064, 0x42da, 0xbf, 0xa5, 0x57, 0x2b, 0xeb, 0x8e, 0xea, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_AnswerMode(RTC_SESSION_TYPE enType, RTC_ANSWER_MODE enMode) mut
			{
				return VT.put_AnswerMode(&this, enType, enMode);
			}
			public HRESULT get_AnswerMode(RTC_SESSION_TYPE enType, RTC_ANSWER_MODE* penMode) mut
			{
				return VT.get_AnswerMode(&this, enType, penMode);
			}
			public HRESULT InvokeTuningWizardEx(int hwndParent, int16 fAllowAudio, int16 fAllowVideo) mut
			{
				return VT.InvokeTuningWizardEx(&this, hwndParent, fAllowAudio, fAllowVideo);
			}
			public HRESULT get_Version(int32* plVersion) mut
			{
				return VT.get_Version(&this, plVersion);
			}
			public HRESULT put_ClientName(BSTR bstrClientName) mut
			{
				return VT.put_ClientName(&this, bstrClientName);
			}
			public HRESULT put_ClientCurVer(BSTR bstrClientCurVer) mut
			{
				return VT.put_ClientCurVer(&this, bstrClientCurVer);
			}
			public HRESULT InitializeEx(int32 lFlags) mut
			{
				return VT.InitializeEx(&this, lFlags);
			}
			public HRESULT CreateSessionWithDescription(BSTR bstrContentType, BSTR bstrSessionDescription, IRTCProfile* pProfile, int32 lFlags, IRTCSession2** ppSession2) mut
			{
				return VT.CreateSessionWithDescription(&this, bstrContentType, bstrSessionDescription, pProfile, lFlags, ppSession2);
			}
			public HRESULT SetSessionDescriptionManager(IRTCSessionDescriptionManager* pSessionDescriptionManager) mut
			{
				return VT.SetSessionDescriptionManager(&this, pSessionDescriptionManager);
			}
			public HRESULT put_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) mut
			{
				return VT.put_PreferredSecurityLevel(&this, enSecurityType, enSecurityLevel);
			}
			public HRESULT get_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) mut
			{
				return VT.get_PreferredSecurityLevel(&this, enSecurityType, penSecurityLevel);
			}
			public HRESULT put_AllowedPorts(int32 lTransport, RTC_LISTEN_MODE enListenMode) mut
			{
				return VT.put_AllowedPorts(&this, lTransport, enListenMode);
			}
			public HRESULT get_AllowedPorts(int32 lTransport, RTC_LISTEN_MODE* penListenMode) mut
			{
				return VT.get_AllowedPorts(&this, lTransport, penListenMode);
			}
			[CRepr]
			public struct VTable : IRTCClient.VTable
			{
				public new function HRESULT(IRTCClient2 *self, RTC_SESSION_TYPE enType, RTC_ANSWER_MODE enMode) put_AnswerMode;
				public new function HRESULT(IRTCClient2 *self, RTC_SESSION_TYPE enType, RTC_ANSWER_MODE* penMode) get_AnswerMode;
				public new function HRESULT(IRTCClient2 *self, int hwndParent, int16 fAllowAudio, int16 fAllowVideo) InvokeTuningWizardEx;
				public new function HRESULT(IRTCClient2 *self, int32* plVersion) get_Version;
				public new function HRESULT(IRTCClient2 *self, BSTR bstrClientName) put_ClientName;
				public new function HRESULT(IRTCClient2 *self, BSTR bstrClientCurVer) put_ClientCurVer;
				public new function HRESULT(IRTCClient2 *self, int32 lFlags) InitializeEx;
				public new function HRESULT(IRTCClient2 *self, BSTR bstrContentType, BSTR bstrSessionDescription, IRTCProfile* pProfile, int32 lFlags, IRTCSession2** ppSession2) CreateSessionWithDescription;
				public new function HRESULT(IRTCClient2 *self, IRTCSessionDescriptionManager* pSessionDescriptionManager) SetSessionDescriptionManager;
				public new function HRESULT(IRTCClient2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
				public new function HRESULT(IRTCClient2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_PreferredSecurityLevel;
				public new function HRESULT(IRTCClient2 *self, int32 lTransport, RTC_LISTEN_MODE enListenMode) put_AllowedPorts;
				public new function HRESULT(IRTCClient2 *self, int32 lTransport, RTC_LISTEN_MODE* penListenMode) get_AllowedPorts;
			}
		}
		[CRepr]
		public struct IRTCClientPresence : IUnknown
		{
			public const new Guid IID = .(0x11c3cbcc, 0x0744, 0x42d1, 0x96, 0x8a, 0x51, 0xaa, 0x1b, 0xb2, 0x74, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnablePresence(int16 fUseStorage, VARIANT varStorage) mut
			{
				return VT.EnablePresence(&this, fUseStorage, varStorage);
			}
			public HRESULT Export(VARIANT varStorage) mut
			{
				return VT.Export(&this, varStorage);
			}
			public HRESULT Import(VARIANT varStorage, int16 fReplaceAll) mut
			{
				return VT.Import(&this, varStorage, fReplaceAll);
			}
			public HRESULT EnumerateBuddies(IRTCEnumBuddies** ppEnum) mut
			{
				return VT.EnumerateBuddies(&this, ppEnum);
			}
			public HRESULT get_Buddies(IRTCCollection** ppCollection) mut
			{
				return VT.get_Buddies(&this, ppCollection);
			}
			public HRESULT get_Buddy(BSTR bstrPresentityURI, IRTCBuddy** ppBuddy) mut
			{
				return VT.get_Buddy(&this, bstrPresentityURI, ppBuddy);
			}
			public HRESULT AddBuddy(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy** ppBuddy) mut
			{
				return VT.AddBuddy(&this, bstrPresentityURI, bstrUserName, bstrData, fPersistent, pProfile, lFlags, ppBuddy);
			}
			public HRESULT RemoveBuddy(IRTCBuddy* pBuddy) mut
			{
				return VT.RemoveBuddy(&this, pBuddy);
			}
			public HRESULT EnumerateWatchers(IRTCEnumWatchers** ppEnum) mut
			{
				return VT.EnumerateWatchers(&this, ppEnum);
			}
			public HRESULT get_Watchers(IRTCCollection** ppCollection) mut
			{
				return VT.get_Watchers(&this, ppCollection);
			}
			public HRESULT get_Watcher(BSTR bstrPresentityURI, IRTCWatcher** ppWatcher) mut
			{
				return VT.get_Watcher(&this, bstrPresentityURI, ppWatcher);
			}
			public HRESULT AddWatcher(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fBlocked, int16 fPersistent, IRTCWatcher** ppWatcher) mut
			{
				return VT.AddWatcher(&this, bstrPresentityURI, bstrUserName, bstrData, fBlocked, fPersistent, ppWatcher);
			}
			public HRESULT RemoveWatcher(IRTCWatcher* pWatcher) mut
			{
				return VT.RemoveWatcher(&this, pWatcher);
			}
			public HRESULT SetLocalPresenceInfo(RTC_PRESENCE_STATUS enStatus, BSTR bstrNotes) mut
			{
				return VT.SetLocalPresenceInfo(&this, enStatus, bstrNotes);
			}
			public HRESULT get_OfferWatcherMode(RTC_OFFER_WATCHER_MODE* penMode) mut
			{
				return VT.get_OfferWatcherMode(&this, penMode);
			}
			public HRESULT put_OfferWatcherMode(RTC_OFFER_WATCHER_MODE enMode) mut
			{
				return VT.put_OfferWatcherMode(&this, enMode);
			}
			public HRESULT get_PrivacyMode(RTC_PRIVACY_MODE* penMode) mut
			{
				return VT.get_PrivacyMode(&this, penMode);
			}
			public HRESULT put_PrivacyMode(RTC_PRIVACY_MODE enMode) mut
			{
				return VT.put_PrivacyMode(&this, enMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCClientPresence *self, int16 fUseStorage, VARIANT varStorage) EnablePresence;
				public new function HRESULT(IRTCClientPresence *self, VARIANT varStorage) Export;
				public new function HRESULT(IRTCClientPresence *self, VARIANT varStorage, int16 fReplaceAll) Import;
				public new function HRESULT(IRTCClientPresence *self, IRTCEnumBuddies** ppEnum) EnumerateBuddies;
				public new function HRESULT(IRTCClientPresence *self, IRTCCollection** ppCollection) get_Buddies;
				public new function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, IRTCBuddy** ppBuddy) get_Buddy;
				public new function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy** ppBuddy) AddBuddy;
				public new function HRESULT(IRTCClientPresence *self, IRTCBuddy* pBuddy) RemoveBuddy;
				public new function HRESULT(IRTCClientPresence *self, IRTCEnumWatchers** ppEnum) EnumerateWatchers;
				public new function HRESULT(IRTCClientPresence *self, IRTCCollection** ppCollection) get_Watchers;
				public new function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, IRTCWatcher** ppWatcher) get_Watcher;
				public new function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fBlocked, int16 fPersistent, IRTCWatcher** ppWatcher) AddWatcher;
				public new function HRESULT(IRTCClientPresence *self, IRTCWatcher* pWatcher) RemoveWatcher;
				public new function HRESULT(IRTCClientPresence *self, RTC_PRESENCE_STATUS enStatus, BSTR bstrNotes) SetLocalPresenceInfo;
				public new function HRESULT(IRTCClientPresence *self, RTC_OFFER_WATCHER_MODE* penMode) get_OfferWatcherMode;
				public new function HRESULT(IRTCClientPresence *self, RTC_OFFER_WATCHER_MODE enMode) put_OfferWatcherMode;
				public new function HRESULT(IRTCClientPresence *self, RTC_PRIVACY_MODE* penMode) get_PrivacyMode;
				public new function HRESULT(IRTCClientPresence *self, RTC_PRIVACY_MODE enMode) put_PrivacyMode;
			}
		}
		[CRepr]
		public struct IRTCClientPresence2 : IRTCClientPresence
		{
			public const new Guid IID = .(0xad1809e8, 0x62f7, 0x4783, 0x90, 0x9a, 0x29, 0xc9, 0xd2, 0xcb, 0x1d, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnablePresenceEx(IRTCProfile* pProfile, VARIANT varStorage, int32 lFlags) mut
			{
				return VT.EnablePresenceEx(&this, pProfile, varStorage, lFlags);
			}
			public HRESULT DisablePresence() mut
			{
				return VT.DisablePresence(&this);
			}
			public HRESULT AddGroup(BSTR bstrGroupName, BSTR bstrData, IRTCProfile* pProfile, int32 lFlags, IRTCBuddyGroup** ppGroup) mut
			{
				return VT.AddGroup(&this, bstrGroupName, bstrData, pProfile, lFlags, ppGroup);
			}
			public HRESULT RemoveGroup(IRTCBuddyGroup* pGroup) mut
			{
				return VT.RemoveGroup(&this, pGroup);
			}
			public HRESULT EnumerateGroups(IRTCEnumGroups** ppEnum) mut
			{
				return VT.EnumerateGroups(&this, ppEnum);
			}
			public HRESULT get_Groups(IRTCCollection** ppCollection) mut
			{
				return VT.get_Groups(&this, ppCollection);
			}
			public HRESULT get_Group(BSTR bstrGroupName, IRTCBuddyGroup** ppGroup) mut
			{
				return VT.get_Group(&this, bstrGroupName, ppGroup);
			}
			public HRESULT AddWatcherEx(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, RTC_WATCHER_STATE enState, int16 fPersistent, RTC_ACE_SCOPE enScope, IRTCProfile* pProfile, int32 lFlags, IRTCWatcher2** ppWatcher) mut
			{
				return VT.AddWatcherEx(&this, bstrPresentityURI, bstrUserName, bstrData, enState, fPersistent, enScope, pProfile, lFlags, ppWatcher);
			}
			public HRESULT get_WatcherEx(RTC_WATCHER_MATCH_MODE enMode, BSTR bstrPresentityURI, IRTCWatcher2** ppWatcher) mut
			{
				return VT.get_WatcherEx(&this, enMode, bstrPresentityURI, ppWatcher);
			}
			public HRESULT put_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, BSTR bstrProperty) mut
			{
				return VT.put_PresenceProperty(&this, enProperty, bstrProperty);
			}
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) mut
			{
				return VT.get_PresenceProperty(&this, enProperty, pbstrProperty);
			}
			public HRESULT SetPresenceData(BSTR bstrNamespace, BSTR bstrData) mut
			{
				return VT.SetPresenceData(&this, bstrNamespace, bstrData);
			}
			public HRESULT GetPresenceData(BSTR* pbstrNamespace, BSTR* pbstrData) mut
			{
				return VT.GetPresenceData(&this, pbstrNamespace, pbstrData);
			}
			public HRESULT GetLocalPresenceInfo(RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) mut
			{
				return VT.GetLocalPresenceInfo(&this, penStatus, pbstrNotes);
			}
			public HRESULT AddBuddyEx(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, RTC_BUDDY_SUBSCRIPTION_TYPE enSubscriptionType, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy2** ppBuddy) mut
			{
				return VT.AddBuddyEx(&this, bstrPresentityURI, bstrUserName, bstrData, fPersistent, enSubscriptionType, pProfile, lFlags, ppBuddy);
			}
			[CRepr]
			public struct VTable : IRTCClientPresence.VTable
			{
				public new function HRESULT(IRTCClientPresence2 *self, IRTCProfile* pProfile, VARIANT varStorage, int32 lFlags) EnablePresenceEx;
				public new function HRESULT(IRTCClientPresence2 *self) DisablePresence;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR bstrGroupName, BSTR bstrData, IRTCProfile* pProfile, int32 lFlags, IRTCBuddyGroup** ppGroup) AddGroup;
				public new function HRESULT(IRTCClientPresence2 *self, IRTCBuddyGroup* pGroup) RemoveGroup;
				public new function HRESULT(IRTCClientPresence2 *self, IRTCEnumGroups** ppEnum) EnumerateGroups;
				public new function HRESULT(IRTCClientPresence2 *self, IRTCCollection** ppCollection) get_Groups;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR bstrGroupName, IRTCBuddyGroup** ppGroup) get_Group;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, RTC_WATCHER_STATE enState, int16 fPersistent, RTC_ACE_SCOPE enScope, IRTCProfile* pProfile, int32 lFlags, IRTCWatcher2** ppWatcher) AddWatcherEx;
				public new function HRESULT(IRTCClientPresence2 *self, RTC_WATCHER_MATCH_MODE enMode, BSTR bstrPresentityURI, IRTCWatcher2** ppWatcher) get_WatcherEx;
				public new function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR bstrProperty) put_PresenceProperty;
				public new function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR bstrNamespace, BSTR bstrData) SetPresenceData;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
				public new function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) GetLocalPresenceInfo;
				public new function HRESULT(IRTCClientPresence2 *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, RTC_BUDDY_SUBSCRIPTION_TYPE enSubscriptionType, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy2** ppBuddy) AddBuddyEx;
			}
		}
		[CRepr]
		public struct IRTCClientProvisioning : IUnknown
		{
			public const new Guid IID = .(0xb9f5cf06, 0x65b9, 0x4a80, 0xa0, 0xe6, 0x73, 0xca, 0xe3, 0xef, 0x38, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProfile(BSTR bstrProfileXML, IRTCProfile** ppProfile) mut
			{
				return VT.CreateProfile(&this, bstrProfileXML, ppProfile);
			}
			public HRESULT EnableProfile(IRTCProfile* pProfile, int32 lRegisterFlags) mut
			{
				return VT.EnableProfile(&this, pProfile, lRegisterFlags);
			}
			public HRESULT DisableProfile(IRTCProfile* pProfile) mut
			{
				return VT.DisableProfile(&this, pProfile);
			}
			public HRESULT EnumerateProfiles(IRTCEnumProfiles** ppEnum) mut
			{
				return VT.EnumerateProfiles(&this, ppEnum);
			}
			public HRESULT get_Profiles(IRTCCollection** ppCollection) mut
			{
				return VT.get_Profiles(&this, ppCollection);
			}
			public HRESULT GetProfile(BSTR bstrUserAccount, BSTR bstrUserPassword, BSTR bstrUserURI, BSTR bstrServer, int32 lTransport, int lCookie) mut
			{
				return VT.GetProfile(&this, bstrUserAccount, bstrUserPassword, bstrUserURI, bstrServer, lTransport, lCookie);
			}
			public HRESULT get_SessionCapabilities(int32* plSupportedSessions) mut
			{
				return VT.get_SessionCapabilities(&this, plSupportedSessions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCClientProvisioning *self, BSTR bstrProfileXML, IRTCProfile** ppProfile) CreateProfile;
				public new function HRESULT(IRTCClientProvisioning *self, IRTCProfile* pProfile, int32 lRegisterFlags) EnableProfile;
				public new function HRESULT(IRTCClientProvisioning *self, IRTCProfile* pProfile) DisableProfile;
				public new function HRESULT(IRTCClientProvisioning *self, IRTCEnumProfiles** ppEnum) EnumerateProfiles;
				public new function HRESULT(IRTCClientProvisioning *self, IRTCCollection** ppCollection) get_Profiles;
				public new function HRESULT(IRTCClientProvisioning *self, BSTR bstrUserAccount, BSTR bstrUserPassword, BSTR bstrUserURI, BSTR bstrServer, int32 lTransport, int lCookie) GetProfile;
				public new function HRESULT(IRTCClientProvisioning *self, int32* plSupportedSessions) get_SessionCapabilities;
			}
		}
		[CRepr]
		public struct IRTCClientProvisioning2 : IRTCClientProvisioning
		{
			public const new Guid IID = .(0xa70909b5, 0xf40e, 0x4587, 0xbb, 0x75, 0xe6, 0xbc, 0x08, 0x45, 0x02, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableProfileEx(IRTCProfile* pProfile, int32 lRegisterFlags, int32 lRoamingFlags) mut
			{
				return VT.EnableProfileEx(&this, pProfile, lRegisterFlags, lRoamingFlags);
			}
			[CRepr]
			public struct VTable : IRTCClientProvisioning.VTable
			{
				public new function HRESULT(IRTCClientProvisioning2 *self, IRTCProfile* pProfile, int32 lRegisterFlags, int32 lRoamingFlags) EnableProfileEx;
			}
		}
		[CRepr]
		public struct IRTCProfile : IUnknown
		{
			public const new Guid IID = .(0xd07eca9e, 0x4062, 0x4dd4, 0x9e, 0x7d, 0x72, 0x2a, 0x49, 0xba, 0x73, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Key(BSTR* pbstrKey) mut
			{
				return VT.get_Key(&this, pbstrKey);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT get_XML(BSTR* pbstrXML) mut
			{
				return VT.get_XML(&this, pbstrXML);
			}
			public HRESULT get_ProviderName(BSTR* pbstrName) mut
			{
				return VT.get_ProviderName(&this, pbstrName);
			}
			public HRESULT get_ProviderURI(RTC_PROVIDER_URI enURI, BSTR* pbstrURI) mut
			{
				return VT.get_ProviderURI(&this, enURI, pbstrURI);
			}
			public HRESULT get_ProviderData(BSTR* pbstrData) mut
			{
				return VT.get_ProviderData(&this, pbstrData);
			}
			public HRESULT get_ClientName(BSTR* pbstrName) mut
			{
				return VT.get_ClientName(&this, pbstrName);
			}
			public HRESULT get_ClientBanner(int16* pfBanner) mut
			{
				return VT.get_ClientBanner(&this, pfBanner);
			}
			public HRESULT get_ClientMinVer(BSTR* pbstrMinVer) mut
			{
				return VT.get_ClientMinVer(&this, pbstrMinVer);
			}
			public HRESULT get_ClientCurVer(BSTR* pbstrCurVer) mut
			{
				return VT.get_ClientCurVer(&this, pbstrCurVer);
			}
			public HRESULT get_ClientUpdateURI(BSTR* pbstrUpdateURI) mut
			{
				return VT.get_ClientUpdateURI(&this, pbstrUpdateURI);
			}
			public HRESULT get_ClientData(BSTR* pbstrData) mut
			{
				return VT.get_ClientData(&this, pbstrData);
			}
			public HRESULT get_UserURI(BSTR* pbstrUserURI) mut
			{
				return VT.get_UserURI(&this, pbstrUserURI);
			}
			public HRESULT get_UserName(BSTR* pbstrUserName) mut
			{
				return VT.get_UserName(&this, pbstrUserName);
			}
			public HRESULT get_UserAccount(BSTR* pbstrUserAccount) mut
			{
				return VT.get_UserAccount(&this, pbstrUserAccount);
			}
			public HRESULT SetCredentials(BSTR bstrUserURI, BSTR bstrUserAccount, BSTR bstrPassword) mut
			{
				return VT.SetCredentials(&this, bstrUserURI, bstrUserAccount, bstrPassword);
			}
			public HRESULT get_SessionCapabilities(int32* plSupportedSessions) mut
			{
				return VT.get_SessionCapabilities(&this, plSupportedSessions);
			}
			public HRESULT get_State(RTC_REGISTRATION_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrKey) get_Key;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrXML) get_XML;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_ProviderName;
				public new function HRESULT(IRTCProfile *self, RTC_PROVIDER_URI enURI, BSTR* pbstrURI) get_ProviderURI;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrData) get_ProviderData;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_ClientName;
				public new function HRESULT(IRTCProfile *self, int16* pfBanner) get_ClientBanner;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrMinVer) get_ClientMinVer;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrCurVer) get_ClientCurVer;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrUpdateURI) get_ClientUpdateURI;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrData) get_ClientData;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrUserURI) get_UserURI;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrUserName) get_UserName;
				public new function HRESULT(IRTCProfile *self, BSTR* pbstrUserAccount) get_UserAccount;
				public new function HRESULT(IRTCProfile *self, BSTR bstrUserURI, BSTR bstrUserAccount, BSTR bstrPassword) SetCredentials;
				public new function HRESULT(IRTCProfile *self, int32* plSupportedSessions) get_SessionCapabilities;
				public new function HRESULT(IRTCProfile *self, RTC_REGISTRATION_STATE* penState) get_State;
			}
		}
		[CRepr]
		public struct IRTCProfile2 : IRTCProfile
		{
			public const new Guid IID = .(0x4b81f84e, 0xbdc7, 0x4184, 0x91, 0x54, 0x3c, 0xb2, 0xdd, 0x79, 0x17, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Realm(BSTR* pbstrRealm) mut
			{
				return VT.get_Realm(&this, pbstrRealm);
			}
			public HRESULT put_Realm(BSTR bstrRealm) mut
			{
				return VT.put_Realm(&this, bstrRealm);
			}
			public HRESULT get_AllowedAuth(int32* plAllowedAuth) mut
			{
				return VT.get_AllowedAuth(&this, plAllowedAuth);
			}
			public HRESULT put_AllowedAuth(int32 lAllowedAuth) mut
			{
				return VT.put_AllowedAuth(&this, lAllowedAuth);
			}
			[CRepr]
			public struct VTable : IRTCProfile.VTable
			{
				public new function HRESULT(IRTCProfile2 *self, BSTR* pbstrRealm) get_Realm;
				public new function HRESULT(IRTCProfile2 *self, BSTR bstrRealm) put_Realm;
				public new function HRESULT(IRTCProfile2 *self, int32* plAllowedAuth) get_AllowedAuth;
				public new function HRESULT(IRTCProfile2 *self, int32 lAllowedAuth) put_AllowedAuth;
			}
		}
		[CRepr]
		public struct IRTCSession : IUnknown
		{
			public const new Guid IID = .(0x387c8086, 0x99be, 0x42fb, 0x99, 0x73, 0x7c, 0x0f, 0xc0, 0xca, 0x9f, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Client(IRTCClient** ppClient) mut
			{
				return VT.get_Client(&this, ppClient);
			}
			public HRESULT get_State(RTC_SESSION_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT get_Type(RTC_SESSION_TYPE* penType) mut
			{
				return VT.get_Type(&this, penType);
			}
			public HRESULT get_Profile(IRTCProfile** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_Participants(IRTCCollection** ppCollection) mut
			{
				return VT.get_Participants(&this, ppCollection);
			}
			public HRESULT Answer() mut
			{
				return VT.Answer(&this);
			}
			public HRESULT Terminate(RTC_TERMINATE_REASON enReason) mut
			{
				return VT.Terminate(&this, enReason);
			}
			public HRESULT Redirect(RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags) mut
			{
				return VT.Redirect(&this, enType, bstrLocalPhoneURI, pProfile, lFlags);
			}
			public HRESULT AddParticipant(BSTR bstrAddress, BSTR bstrName, IRTCParticipant** ppParticipant) mut
			{
				return VT.AddParticipant(&this, bstrAddress, bstrName, ppParticipant);
			}
			public HRESULT RemoveParticipant(IRTCParticipant* pParticipant) mut
			{
				return VT.RemoveParticipant(&this, pParticipant);
			}
			public HRESULT EnumerateParticipants(IRTCEnumParticipants** ppEnum) mut
			{
				return VT.EnumerateParticipants(&this, ppEnum);
			}
			public HRESULT get_CanAddParticipants(int16* pfCanAdd) mut
			{
				return VT.get_CanAddParticipants(&this, pfCanAdd);
			}
			public HRESULT get_RedirectedUserURI(BSTR* pbstrUserURI) mut
			{
				return VT.get_RedirectedUserURI(&this, pbstrUserURI);
			}
			public HRESULT get_RedirectedUserName(BSTR* pbstrUserName) mut
			{
				return VT.get_RedirectedUserName(&this, pbstrUserName);
			}
			public HRESULT NextRedirectedUser() mut
			{
				return VT.NextRedirectedUser(&this);
			}
			public HRESULT SendMessage(BSTR bstrMessageHeader, BSTR bstrMessage, int lCookie) mut
			{
				return VT.SendMessage(&this, bstrMessageHeader, bstrMessage, lCookie);
			}
			public HRESULT SendMessageStatus(RTC_MESSAGING_USER_STATUS enUserStatus, int lCookie) mut
			{
				return VT.SendMessageStatus(&this, enUserStatus, lCookie);
			}
			public HRESULT AddStream(int32 lMediaType, int lCookie) mut
			{
				return VT.AddStream(&this, lMediaType, lCookie);
			}
			public HRESULT RemoveStream(int32 lMediaType, int lCookie) mut
			{
				return VT.RemoveStream(&this, lMediaType, lCookie);
			}
			public HRESULT put_EncryptionKey(int32 lMediaType, BSTR EncryptionKey) mut
			{
				return VT.put_EncryptionKey(&this, lMediaType, EncryptionKey);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCSession *self, IRTCClient** ppClient) get_Client;
				public new function HRESULT(IRTCSession *self, RTC_SESSION_STATE* penState) get_State;
				public new function HRESULT(IRTCSession *self, RTC_SESSION_TYPE* penType) get_Type;
				public new function HRESULT(IRTCSession *self, IRTCProfile** ppProfile) get_Profile;
				public new function HRESULT(IRTCSession *self, IRTCCollection** ppCollection) get_Participants;
				public new function HRESULT(IRTCSession *self) Answer;
				public new function HRESULT(IRTCSession *self, RTC_TERMINATE_REASON enReason) Terminate;
				public new function HRESULT(IRTCSession *self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags) Redirect;
				public new function HRESULT(IRTCSession *self, BSTR bstrAddress, BSTR bstrName, IRTCParticipant** ppParticipant) AddParticipant;
				public new function HRESULT(IRTCSession *self, IRTCParticipant* pParticipant) RemoveParticipant;
				public new function HRESULT(IRTCSession *self, IRTCEnumParticipants** ppEnum) EnumerateParticipants;
				public new function HRESULT(IRTCSession *self, int16* pfCanAdd) get_CanAddParticipants;
				public new function HRESULT(IRTCSession *self, BSTR* pbstrUserURI) get_RedirectedUserURI;
				public new function HRESULT(IRTCSession *self, BSTR* pbstrUserName) get_RedirectedUserName;
				public new function HRESULT(IRTCSession *self) NextRedirectedUser;
				public new function HRESULT(IRTCSession *self, BSTR bstrMessageHeader, BSTR bstrMessage, int lCookie) SendMessage;
				public new function HRESULT(IRTCSession *self, RTC_MESSAGING_USER_STATUS enUserStatus, int lCookie) SendMessageStatus;
				public new function HRESULT(IRTCSession *self, int32 lMediaType, int lCookie) AddStream;
				public new function HRESULT(IRTCSession *self, int32 lMediaType, int lCookie) RemoveStream;
				public new function HRESULT(IRTCSession *self, int32 lMediaType, BSTR EncryptionKey) put_EncryptionKey;
			}
		}
		[CRepr]
		public struct IRTCSession2 : IRTCSession
		{
			public const new Guid IID = .(0x17d7cdfc, 0xb007, 0x484c, 0x99, 0xd2, 0x86, 0xa8, 0xa8, 0x20, 0x99, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendInfo(BSTR bstrInfoHeader, BSTR bstrInfo, int lCookie) mut
			{
				return VT.SendInfo(&this, bstrInfoHeader, bstrInfo, lCookie);
			}
			public HRESULT put_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) mut
			{
				return VT.put_PreferredSecurityLevel(&this, enSecurityType, enSecurityLevel);
			}
			public HRESULT get_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) mut
			{
				return VT.get_PreferredSecurityLevel(&this, enSecurityType, penSecurityLevel);
			}
			public HRESULT IsSecurityEnabled(RTC_SECURITY_TYPE enSecurityType, int16* pfSecurityEnabled) mut
			{
				return VT.IsSecurityEnabled(&this, enSecurityType, pfSecurityEnabled);
			}
			public HRESULT AnswerWithSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription) mut
			{
				return VT.AnswerWithSessionDescription(&this, bstrContentType, bstrSessionDescription);
			}
			public HRESULT ReInviteWithSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription, int lCookie) mut
			{
				return VT.ReInviteWithSessionDescription(&this, bstrContentType, bstrSessionDescription, lCookie);
			}
			[CRepr]
			public struct VTable : IRTCSession.VTable
			{
				public new function HRESULT(IRTCSession2 *self, BSTR bstrInfoHeader, BSTR bstrInfo, int lCookie) SendInfo;
				public new function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
				public new function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_PreferredSecurityLevel;
				public new function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, int16* pfSecurityEnabled) IsSecurityEnabled;
				public new function HRESULT(IRTCSession2 *self, BSTR bstrContentType, BSTR bstrSessionDescription) AnswerWithSessionDescription;
				public new function HRESULT(IRTCSession2 *self, BSTR bstrContentType, BSTR bstrSessionDescription, int lCookie) ReInviteWithSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCSessionCallControl : IUnknown
		{
			public const new Guid IID = .(0xe9a50d94, 0x190b, 0x4f82, 0x95, 0x30, 0x3b, 0x8e, 0xbf, 0x60, 0x75, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Hold(int lCookie) mut
			{
				return VT.Hold(&this, lCookie);
			}
			public HRESULT UnHold(int lCookie) mut
			{
				return VT.UnHold(&this, lCookie);
			}
			public HRESULT Forward(BSTR bstrForwardToURI) mut
			{
				return VT.Forward(&this, bstrForwardToURI);
			}
			public HRESULT Refer(BSTR bstrReferToURI, BSTR bstrReferCookie) mut
			{
				return VT.Refer(&this, bstrReferToURI, bstrReferCookie);
			}
			public HRESULT put_ReferredByURI(BSTR bstrReferredByURI) mut
			{
				return VT.put_ReferredByURI(&this, bstrReferredByURI);
			}
			public HRESULT get_ReferredByURI(BSTR* pbstrReferredByURI) mut
			{
				return VT.get_ReferredByURI(&this, pbstrReferredByURI);
			}
			public HRESULT put_ReferCookie(BSTR bstrReferCookie) mut
			{
				return VT.put_ReferCookie(&this, bstrReferCookie);
			}
			public HRESULT get_ReferCookie(BSTR* pbstrReferCookie) mut
			{
				return VT.get_ReferCookie(&this, pbstrReferCookie);
			}
			public HRESULT get_IsReferred(int16* pfIsReferred) mut
			{
				return VT.get_IsReferred(&this, pfIsReferred);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCSessionCallControl *self, int lCookie) Hold;
				public new function HRESULT(IRTCSessionCallControl *self, int lCookie) UnHold;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR bstrForwardToURI) Forward;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferToURI, BSTR bstrReferCookie) Refer;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferredByURI) put_ReferredByURI;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR* pbstrReferredByURI) get_ReferredByURI;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferCookie) put_ReferCookie;
				public new function HRESULT(IRTCSessionCallControl *self, BSTR* pbstrReferCookie) get_ReferCookie;
				public new function HRESULT(IRTCSessionCallControl *self, int16* pfIsReferred) get_IsReferred;
			}
		}
		[CRepr]
		public struct IRTCParticipant : IUnknown
		{
			public const new Guid IID = .(0xae86add5, 0x26b1, 0x4414, 0xaf, 0x1d, 0xb9, 0x4c, 0xd9, 0x38, 0xd7, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserURI(BSTR* pbstrUserURI) mut
			{
				return VT.get_UserURI(&this, pbstrUserURI);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT get_Removable(int16* pfRemovable) mut
			{
				return VT.get_Removable(&this, pfRemovable);
			}
			public HRESULT get_State(RTC_PARTICIPANT_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT get_Session(IRTCSession** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCParticipant *self, BSTR* pbstrUserURI) get_UserURI;
				public new function HRESULT(IRTCParticipant *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IRTCParticipant *self, int16* pfRemovable) get_Removable;
				public new function HRESULT(IRTCParticipant *self, RTC_PARTICIPANT_STATE* penState) get_State;
				public new function HRESULT(IRTCParticipant *self, IRTCSession** ppSession) get_Session;
			}
		}
		[CRepr]
		public struct IRTCRoamingEvent : IDispatch
		{
			public const new Guid IID = .(0x79960a6b, 0x0cb1, 0x4dc8, 0xa8, 0x05, 0x73, 0x18, 0xe9, 0x99, 0x02, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_ROAMING_EVENT_TYPE* pEventType) mut
			{
				return VT.get_EventType(&this, pEventType);
			}
			public HRESULT get_Profile(IRTCProfile2** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCRoamingEvent *self, RTC_ROAMING_EVENT_TYPE* pEventType) get_EventType;
				public new function HRESULT(IRTCRoamingEvent *self, IRTCProfile2** ppProfile) get_Profile;
				public new function HRESULT(IRTCRoamingEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCRoamingEvent *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCProfileEvent : IDispatch
		{
			public const new Guid IID = .(0xd6d5ab3b, 0x770e, 0x43e8, 0x80, 0x0a, 0x79, 0xb0, 0x62, 0x39, 0x5f, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(IRTCProfile** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_Cookie(int* plCookie) mut
			{
				return VT.get_Cookie(&this, plCookie);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCProfileEvent *self, IRTCProfile** ppProfile) get_Profile;
				public new function HRESULT(IRTCProfileEvent *self, int* plCookie) get_Cookie;
				public new function HRESULT(IRTCProfileEvent *self, int32* plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCProfileEvent2 : IRTCProfileEvent
		{
			public const new Guid IID = .(0x62e56edc, 0x03fa, 0x4121, 0x94, 0xfb, 0x23, 0x49, 0x3f, 0xd0, 0xae, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_PROFILE_EVENT_TYPE* pEventType) mut
			{
				return VT.get_EventType(&this, pEventType);
			}
			[CRepr]
			public struct VTable : IRTCProfileEvent.VTable
			{
				public new function HRESULT(IRTCProfileEvent2 *self, RTC_PROFILE_EVENT_TYPE* pEventType) get_EventType;
			}
		}
		[CRepr]
		public struct IRTCClientEvent : IDispatch
		{
			public const new Guid IID = .(0x2b493b7a, 0x3cba, 0x4170, 0x9c, 0x8b, 0x76, 0xa9, 0xda, 0xcd, 0xd6, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_CLIENT_EVENT_TYPE* penEventType) mut
			{
				return VT.get_EventType(&this, penEventType);
			}
			public HRESULT get_Client(IRTCClient** ppClient) mut
			{
				return VT.get_Client(&this, ppClient);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCClientEvent *self, RTC_CLIENT_EVENT_TYPE* penEventType) get_EventType;
				public new function HRESULT(IRTCClientEvent *self, IRTCClient** ppClient) get_Client;
			}
		}
		[CRepr]
		public struct IRTCRegistrationStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x62d0991b, 0x50ab, 0x4f02, 0xb9, 0x48, 0xca, 0x94, 0xf2, 0x6f, 0x8f, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(IRTCProfile** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_State(RTC_REGISTRATION_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCRegistrationStateChangeEvent *self, IRTCProfile** ppProfile) get_Profile;
				public new function HRESULT(IRTCRegistrationStateChangeEvent *self, RTC_REGISTRATION_STATE* penState) get_State;
				public new function HRESULT(IRTCRegistrationStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCRegistrationStateChangeEvent *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0xb5bad703, 0x5952, 0x48b3, 0x93, 0x21, 0x7f, 0x45, 0x00, 0x52, 0x15, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_State(RTC_SESSION_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCSessionStateChangeEvent *self, IRTCSession** ppSession) get_Session;
				public new function HRESULT(IRTCSessionStateChangeEvent *self, RTC_SESSION_STATE* penState) get_State;
				public new function HRESULT(IRTCSessionStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCSessionStateChangeEvent *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent2 : IRTCSessionStateChangeEvent
		{
			public const new Guid IID = .(0x4f933171, 0x6f95, 0x4880, 0x80, 0xd9, 0x2e, 0xc8, 0xd4, 0x95, 0xd2, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MediaTypes(int32* pMediaTypes) mut
			{
				return VT.get_MediaTypes(&this, pMediaTypes);
			}
			public HRESULT get_RemotePreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) mut
			{
				return VT.get_RemotePreferredSecurityLevel(&this, enSecurityType, penSecurityLevel);
			}
			public HRESULT get_IsForked(int16* pfIsForked) mut
			{
				return VT.get_IsForked(&this, pfIsForked);
			}
			public HRESULT GetRemoteSessionDescription(BSTR* pbstrContentType, BSTR* pbstrSessionDescription) mut
			{
				return VT.GetRemoteSessionDescription(&this, pbstrContentType, pbstrSessionDescription);
			}
			[CRepr]
			public struct VTable : IRTCSessionStateChangeEvent.VTable
			{
				public new function HRESULT(IRTCSessionStateChangeEvent2 *self, int32* pMediaTypes) get_MediaTypes;
				public new function HRESULT(IRTCSessionStateChangeEvent2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_RemotePreferredSecurityLevel;
				public new function HRESULT(IRTCSessionStateChangeEvent2 *self, int16* pfIsForked) get_IsForked;
				public new function HRESULT(IRTCSessionStateChangeEvent2 *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent : IDispatch
		{
			public const new Guid IID = .(0xa6bff4c0, 0xf7c8, 0x4d3c, 0x9a, 0x41, 0x35, 0x50, 0xf7, 0x8a, 0x95, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_Cookie(int* plCookie) mut
			{
				return VT.get_Cookie(&this, plCookie);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCSessionOperationCompleteEvent *self, IRTCSession** ppSession) get_Session;
				public new function HRESULT(IRTCSessionOperationCompleteEvent *self, int* plCookie) get_Cookie;
				public new function HRESULT(IRTCSessionOperationCompleteEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCSessionOperationCompleteEvent *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent2 : IRTCSessionOperationCompleteEvent
		{
			public const new Guid IID = .(0xf6fc2a9b, 0xd5bc, 0x4241, 0xb4, 0x36, 0x1b, 0x84, 0x60, 0xc1, 0x38, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Participant(IRTCParticipant** ppParticipant) mut
			{
				return VT.get_Participant(&this, ppParticipant);
			}
			public HRESULT GetRemoteSessionDescription(BSTR* pbstrContentType, BSTR* pbstrSessionDescription) mut
			{
				return VT.GetRemoteSessionDescription(&this, pbstrContentType, pbstrSessionDescription);
			}
			[CRepr]
			public struct VTable : IRTCSessionOperationCompleteEvent.VTable
			{
				public new function HRESULT(IRTCSessionOperationCompleteEvent2 *self, IRTCParticipant** ppParticipant) get_Participant;
				public new function HRESULT(IRTCSessionOperationCompleteEvent2 *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCParticipantStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x09bcb597, 0xf0fa, 0x48f9, 0xb4, 0x20, 0x46, 0x8c, 0xea, 0x7f, 0xde, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Participant(IRTCParticipant** ppParticipant) mut
			{
				return VT.get_Participant(&this, ppParticipant);
			}
			public HRESULT get_State(RTC_PARTICIPANT_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCParticipantStateChangeEvent *self, IRTCParticipant** ppParticipant) get_Participant;
				public new function HRESULT(IRTCParticipantStateChangeEvent *self, RTC_PARTICIPANT_STATE* penState) get_State;
				public new function HRESULT(IRTCParticipantStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCMediaEvent : IDispatch
		{
			public const new Guid IID = .(0x099944fb, 0xbcda, 0x453e, 0x8c, 0x41, 0xe1, 0x3d, 0xa2, 0xad, 0xf7, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MediaType(int32* pMediaType) mut
			{
				return VT.get_MediaType(&this, pMediaType);
			}
			public HRESULT get_EventType(RTC_MEDIA_EVENT_TYPE* penEventType) mut
			{
				return VT.get_EventType(&this, penEventType);
			}
			public HRESULT get_EventReason(RTC_MEDIA_EVENT_REASON* penEventReason) mut
			{
				return VT.get_EventReason(&this, penEventReason);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCMediaEvent *self, int32* pMediaType) get_MediaType;
				public new function HRESULT(IRTCMediaEvent *self, RTC_MEDIA_EVENT_TYPE* penEventType) get_EventType;
				public new function HRESULT(IRTCMediaEvent *self, RTC_MEDIA_EVENT_REASON* penEventReason) get_EventReason;
			}
		}
		[CRepr]
		public struct IRTCIntensityEvent : IDispatch
		{
			public const new Guid IID = .(0x4c23bf51, 0x390c, 0x4992, 0xa4, 0x1d, 0x41, 0xee, 0xc0, 0x5b, 0x2a, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Level(int32* plLevel) mut
			{
				return VT.get_Level(&this, plLevel);
			}
			public HRESULT get_Min(int32* plMin) mut
			{
				return VT.get_Min(&this, plMin);
			}
			public HRESULT get_Max(int32* plMax) mut
			{
				return VT.get_Max(&this, plMax);
			}
			public HRESULT get_Direction(RTC_AUDIO_DEVICE* penDirection) mut
			{
				return VT.get_Direction(&this, penDirection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCIntensityEvent *self, int32* plLevel) get_Level;
				public new function HRESULT(IRTCIntensityEvent *self, int32* plMin) get_Min;
				public new function HRESULT(IRTCIntensityEvent *self, int32* plMax) get_Max;
				public new function HRESULT(IRTCIntensityEvent *self, RTC_AUDIO_DEVICE* penDirection) get_Direction;
			}
		}
		[CRepr]
		public struct IRTCMessagingEvent : IDispatch
		{
			public const new Guid IID = .(0xd3609541, 0x1b29, 0x4de5, 0xa4, 0xad, 0x5a, 0xeb, 0xaf, 0x31, 0x95, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_Participant(IRTCParticipant** ppParticipant) mut
			{
				return VT.get_Participant(&this, ppParticipant);
			}
			public HRESULT get_EventType(RTC_MESSAGING_EVENT_TYPE* penEventType) mut
			{
				return VT.get_EventType(&this, penEventType);
			}
			public HRESULT get_Message(BSTR* pbstrMessage) mut
			{
				return VT.get_Message(&this, pbstrMessage);
			}
			public HRESULT get_MessageHeader(BSTR* pbstrMessageHeader) mut
			{
				return VT.get_MessageHeader(&this, pbstrMessageHeader);
			}
			public HRESULT get_UserStatus(RTC_MESSAGING_USER_STATUS* penUserStatus) mut
			{
				return VT.get_UserStatus(&this, penUserStatus);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCMessagingEvent *self, IRTCSession** ppSession) get_Session;
				public new function HRESULT(IRTCMessagingEvent *self, IRTCParticipant** ppParticipant) get_Participant;
				public new function HRESULT(IRTCMessagingEvent *self, RTC_MESSAGING_EVENT_TYPE* penEventType) get_EventType;
				public new function HRESULT(IRTCMessagingEvent *self, BSTR* pbstrMessage) get_Message;
				public new function HRESULT(IRTCMessagingEvent *self, BSTR* pbstrMessageHeader) get_MessageHeader;
				public new function HRESULT(IRTCMessagingEvent *self, RTC_MESSAGING_USER_STATUS* penUserStatus) get_UserStatus;
			}
		}
		[CRepr]
		public struct IRTCBuddyEvent : IDispatch
		{
			public const new Guid IID = .(0xf36d755d, 0x17e6, 0x404e, 0x95, 0x4f, 0x0f, 0xc0, 0x75, 0x74, 0xc7, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Buddy(IRTCBuddy** ppBuddy) mut
			{
				return VT.get_Buddy(&this, ppBuddy);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCBuddyEvent *self, IRTCBuddy** ppBuddy) get_Buddy;
			}
		}
		[CRepr]
		public struct IRTCBuddyEvent2 : IRTCBuddyEvent
		{
			public const new Guid IID = .(0x484a7f1e, 0x73f0, 0x4990, 0xbf, 0xc2, 0x60, 0xbc, 0x39, 0x78, 0xa7, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_BUDDY_EVENT_TYPE* pEventType) mut
			{
				return VT.get_EventType(&this, pEventType);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IRTCBuddyEvent.VTable
			{
				public new function HRESULT(IRTCBuddyEvent2 *self, RTC_BUDDY_EVENT_TYPE* pEventType) get_EventType;
				public new function HRESULT(IRTCBuddyEvent2 *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCBuddyEvent2 *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCWatcherEvent : IDispatch
		{
			public const new Guid IID = .(0xf30d7261, 0x587a, 0x424f, 0x82, 0x2c, 0x31, 0x27, 0x88, 0xf4, 0x35, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Watcher(IRTCWatcher** ppWatcher) mut
			{
				return VT.get_Watcher(&this, ppWatcher);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCWatcherEvent *self, IRTCWatcher** ppWatcher) get_Watcher;
			}
		}
		[CRepr]
		public struct IRTCWatcherEvent2 : IRTCWatcherEvent
		{
			public const new Guid IID = .(0xe52891e8, 0x188c, 0x49af, 0xb0, 0x05, 0x98, 0xed, 0x13, 0xf8, 0x3f, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_WATCHER_EVENT_TYPE* pEventType) mut
			{
				return VT.get_EventType(&this, pEventType);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			[CRepr]
			public struct VTable : IRTCWatcherEvent.VTable
			{
				public new function HRESULT(IRTCWatcherEvent2 *self, RTC_WATCHER_EVENT_TYPE* pEventType) get_EventType;
				public new function HRESULT(IRTCWatcherEvent2 *self, int32* plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCBuddyGroupEvent : IDispatch
		{
			public const new Guid IID = .(0x3a79e1d1, 0xb736, 0x4414, 0x96, 0xf8, 0xbb, 0xc7, 0xf0, 0x88, 0x63, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(RTC_GROUP_EVENT_TYPE* pEventType) mut
			{
				return VT.get_EventType(&this, pEventType);
			}
			public HRESULT get_Group(IRTCBuddyGroup** ppGroup) mut
			{
				return VT.get_Group(&this, ppGroup);
			}
			public HRESULT get_Buddy(IRTCBuddy2** ppBuddy) mut
			{
				return VT.get_Buddy(&this, ppBuddy);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCBuddyGroupEvent *self, RTC_GROUP_EVENT_TYPE* pEventType) get_EventType;
				public new function HRESULT(IRTCBuddyGroupEvent *self, IRTCBuddyGroup** ppGroup) get_Group;
				public new function HRESULT(IRTCBuddyGroupEvent *self, IRTCBuddy2** ppBuddy) get_Buddy;
				public new function HRESULT(IRTCBuddyGroupEvent *self, int32* plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCInfoEvent : IDispatch
		{
			public const new Guid IID = .(0x4e1d68ae, 0x1912, 0x4f49, 0xb2, 0xc3, 0x59, 0x4f, 0xad, 0xfd, 0x42, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession2** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_Participant(IRTCParticipant** ppParticipant) mut
			{
				return VT.get_Participant(&this, ppParticipant);
			}
			public HRESULT get_Info(BSTR* pbstrInfo) mut
			{
				return VT.get_Info(&this, pbstrInfo);
			}
			public HRESULT get_InfoHeader(BSTR* pbstrInfoHeader) mut
			{
				return VT.get_InfoHeader(&this, pbstrInfoHeader);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCInfoEvent *self, IRTCSession2** ppSession) get_Session;
				public new function HRESULT(IRTCInfoEvent *self, IRTCParticipant** ppParticipant) get_Participant;
				public new function HRESULT(IRTCInfoEvent *self, BSTR* pbstrInfo) get_Info;
				public new function HRESULT(IRTCInfoEvent *self, BSTR* pbstrInfoHeader) get_InfoHeader;
			}
		}
		[CRepr]
		public struct IRTCMediaRequestEvent : IDispatch
		{
			public const new Guid IID = .(0x52572d15, 0x148c, 0x4d97, 0xa3, 0x6c, 0x2d, 0xa5, 0x5c, 0x28, 0x9d, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession2** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_ProposedMedia(int32* plMediaTypes) mut
			{
				return VT.get_ProposedMedia(&this, plMediaTypes);
			}
			public HRESULT get_CurrentMedia(int32* plMediaTypes) mut
			{
				return VT.get_CurrentMedia(&this, plMediaTypes);
			}
			public HRESULT Accept(int32 lMediaTypes) mut
			{
				return VT.Accept(&this, lMediaTypes);
			}
			public HRESULT get_RemotePreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) mut
			{
				return VT.get_RemotePreferredSecurityLevel(&this, enSecurityType, penSecurityLevel);
			}
			public HRESULT Reject() mut
			{
				return VT.Reject(&this);
			}
			public HRESULT get_State(RTC_REINVITE_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCMediaRequestEvent *self, IRTCSession2** ppSession) get_Session;
				public new function HRESULT(IRTCMediaRequestEvent *self, int32* plMediaTypes) get_ProposedMedia;
				public new function HRESULT(IRTCMediaRequestEvent *self, int32* plMediaTypes) get_CurrentMedia;
				public new function HRESULT(IRTCMediaRequestEvent *self, int32 lMediaTypes) Accept;
				public new function HRESULT(IRTCMediaRequestEvent *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_RemotePreferredSecurityLevel;
				public new function HRESULT(IRTCMediaRequestEvent *self) Reject;
				public new function HRESULT(IRTCMediaRequestEvent *self, RTC_REINVITE_STATE* pState) get_State;
			}
		}
		[CRepr]
		public struct IRTCReInviteEvent : IDispatch
		{
			public const new Guid IID = .(0x11558d84, 0x204c, 0x43e7, 0x99, 0xb0, 0x20, 0x34, 0xe9, 0x41, 0x7f, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession2** ppSession2) mut
			{
				return VT.get_Session(&this, ppSession2);
			}
			public HRESULT Accept(BSTR bstrContentType, BSTR bstrSessionDescription) mut
			{
				return VT.Accept(&this, bstrContentType, bstrSessionDescription);
			}
			public HRESULT Reject() mut
			{
				return VT.Reject(&this);
			}
			public HRESULT get_State(RTC_REINVITE_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			public HRESULT GetRemoteSessionDescription(BSTR* pbstrContentType, BSTR* pbstrSessionDescription) mut
			{
				return VT.GetRemoteSessionDescription(&this, pbstrContentType, pbstrSessionDescription);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCReInviteEvent *self, IRTCSession2** ppSession2) get_Session;
				public new function HRESULT(IRTCReInviteEvent *self, BSTR bstrContentType, BSTR bstrSessionDescription) Accept;
				public new function HRESULT(IRTCReInviteEvent *self) Reject;
				public new function HRESULT(IRTCReInviteEvent *self, RTC_REINVITE_STATE* pState) get_State;
				public new function HRESULT(IRTCReInviteEvent *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCPresencePropertyEvent : IDispatch
		{
			public const new Guid IID = .(0xf777f570, 0xa820, 0x49d5, 0x86, 0xbd, 0xe0, 0x99, 0x49, 0x3f, 0x15, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY* penPresProp) mut
			{
				return VT.get_PresenceProperty(&this, penPresProp);
			}
			public HRESULT get_Value(BSTR* pbstrValue) mut
			{
				return VT.get_Value(&this, pbstrValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCPresencePropertyEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCPresencePropertyEvent *self, BSTR* pbstrStatusText) get_StatusText;
				public new function HRESULT(IRTCPresencePropertyEvent *self, RTC_PRESENCE_PROPERTY* penPresProp) get_PresenceProperty;
				public new function HRESULT(IRTCPresencePropertyEvent *self, BSTR* pbstrValue) get_Value;
			}
		}
		[CRepr]
		public struct IRTCPresenceDataEvent : IDispatch
		{
			public const new Guid IID = .(0x38f0e78c, 0x8b87, 0x4c04, 0xa8, 0x2d, 0xae, 0xdd, 0x83, 0xc9, 0x09, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			public HRESULT GetPresenceData(BSTR* pbstrNamespace, BSTR* pbstrData) mut
			{
				return VT.GetPresenceData(&this, pbstrNamespace, pbstrData);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCPresenceDataEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCPresenceDataEvent *self, BSTR* pbstrStatusText) get_StatusText;
				public new function HRESULT(IRTCPresenceDataEvent *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
			}
		}
		[CRepr]
		public struct IRTCPresenceStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x78673f32, 0x4a0f, 0x462c, 0x89, 0xaa, 0xee, 0x77, 0x06, 0x70, 0x76, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			public HRESULT GetLocalPresenceInfo(RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) mut
			{
				return VT.GetLocalPresenceInfo(&this, penStatus, pbstrNotes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCPresenceStatusEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCPresenceStatusEvent *self, BSTR* pbstrStatusText) get_StatusText;
				public new function HRESULT(IRTCPresenceStatusEvent *self, RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) GetLocalPresenceInfo;
			}
		}
		[CRepr]
		public struct IRTCCollection : IDispatch
		{
			public const new Guid IID = .(0xec7c8096, 0xb918, 0x4044, 0x94, 0xf1, 0xe4, 0xfb, 0xa0, 0x36, 0x1d, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* lCount) mut
			{
				return VT.get_Count(&this, lCount);
			}
			public HRESULT get_Item(int32 Index, VARIANT* pVariant) mut
			{
				return VT.get_Item(&this, Index, pVariant);
			}
			public HRESULT get__NewEnum(IUnknown** ppNewEnum) mut
			{
				return VT.get__NewEnum(&this, ppNewEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCCollection *self, int32* lCount) get_Count;
				public new function HRESULT(IRTCCollection *self, int32 Index, VARIANT* pVariant) get_Item;
				public new function HRESULT(IRTCCollection *self, IUnknown** ppNewEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IRTCEnumParticipants : IUnknown
		{
			public const new Guid IID = .(0xfcd56f29, 0x4a4f, 0x41b2, 0xba, 0x5c, 0xf5, 0xbc, 0xcc, 0x06, 0x0b, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCParticipant** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumParticipants** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumParticipants *self, uint32 celt, IRTCParticipant** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumParticipants *self) Reset;
				public new function HRESULT(IRTCEnumParticipants *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumParticipants *self, IRTCEnumParticipants** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumProfiles : IUnknown
		{
			public const new Guid IID = .(0x29b7c41c, 0xed82, 0x4bca, 0x84, 0xad, 0x39, 0xd5, 0x10, 0x1b, 0x58, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCProfile** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumProfiles** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumProfiles *self, uint32 celt, IRTCProfile** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumProfiles *self) Reset;
				public new function HRESULT(IRTCEnumProfiles *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumProfiles *self, IRTCEnumProfiles** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumBuddies : IUnknown
		{
			public const new Guid IID = .(0xf7296917, 0x5569, 0x4b3b, 0xb3, 0xaf, 0x98, 0xd1, 0x14, 0x4b, 0x2b, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCBuddy** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumBuddies** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumBuddies *self, uint32 celt, IRTCBuddy** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumBuddies *self) Reset;
				public new function HRESULT(IRTCEnumBuddies *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumBuddies *self, IRTCEnumBuddies** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumWatchers : IUnknown
		{
			public const new Guid IID = .(0xa87d55d7, 0xdb74, 0x4ed1, 0x9c, 0xa4, 0x77, 0xa0, 0xe4, 0x1b, 0x41, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCWatcher** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumWatchers** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumWatchers *self, uint32 celt, IRTCWatcher** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumWatchers *self) Reset;
				public new function HRESULT(IRTCEnumWatchers *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumWatchers *self, IRTCEnumWatchers** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumGroups : IUnknown
		{
			public const new Guid IID = .(0x742378d6, 0xa141, 0x4415, 0x8f, 0x27, 0x35, 0xd9, 0x90, 0x76, 0xcf, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCBuddyGroup** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumGroups** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumGroups *self, uint32 celt, IRTCBuddyGroup** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumGroups *self) Reset;
				public new function HRESULT(IRTCEnumGroups *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumGroups *self, IRTCEnumGroups** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCPresenceContact : IUnknown
		{
			public const new Guid IID = .(0x8b22f92c, 0xcd90, 0x42db, 0xa7, 0x33, 0x21, 0x22, 0x05, 0xc3, 0xe3, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PresentityURI(BSTR* pbstrPresentityURI) mut
			{
				return VT.get_PresentityURI(&this, pbstrPresentityURI);
			}
			public HRESULT put_PresentityURI(BSTR bstrPresentityURI) mut
			{
				return VT.put_PresentityURI(&this, bstrPresentityURI);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Data(BSTR* pbstrData) mut
			{
				return VT.get_Data(&this, pbstrData);
			}
			public HRESULT put_Data(BSTR bstrData) mut
			{
				return VT.put_Data(&this, bstrData);
			}
			public HRESULT get_Persistent(int16* pfPersistent) mut
			{
				return VT.get_Persistent(&this, pfPersistent);
			}
			public HRESULT put_Persistent(int16 fPersistent) mut
			{
				return VT.put_Persistent(&this, fPersistent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCPresenceContact *self, BSTR* pbstrPresentityURI) get_PresentityURI;
				public new function HRESULT(IRTCPresenceContact *self, BSTR bstrPresentityURI) put_PresentityURI;
				public new function HRESULT(IRTCPresenceContact *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IRTCPresenceContact *self, BSTR bstrName) put_Name;
				public new function HRESULT(IRTCPresenceContact *self, BSTR* pbstrData) get_Data;
				public new function HRESULT(IRTCPresenceContact *self, BSTR bstrData) put_Data;
				public new function HRESULT(IRTCPresenceContact *self, int16* pfPersistent) get_Persistent;
				public new function HRESULT(IRTCPresenceContact *self, int16 fPersistent) put_Persistent;
			}
		}
		[CRepr]
		public struct IRTCBuddy : IRTCPresenceContact
		{
			public const new Guid IID = .(0xfcb136c8, 0x7b90, 0x4e0c, 0xbe, 0xfe, 0x56, 0xed, 0xf0, 0xba, 0x6f, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(RTC_PRESENCE_STATUS* penStatus) mut
			{
				return VT.get_Status(&this, penStatus);
			}
			public HRESULT get_Notes(BSTR* pbstrNotes) mut
			{
				return VT.get_Notes(&this, pbstrNotes);
			}
			[CRepr]
			public struct VTable : IRTCPresenceContact.VTable
			{
				public new function HRESULT(IRTCBuddy *self, RTC_PRESENCE_STATUS* penStatus) get_Status;
				public new function HRESULT(IRTCBuddy *self, BSTR* pbstrNotes) get_Notes;
			}
		}
		[CRepr]
		public struct IRTCBuddy2 : IRTCBuddy
		{
			public const new Guid IID = .(0x102f9588, 0x23e7, 0x40e3, 0x95, 0x4d, 0xcd, 0x7a, 0x1d, 0x5c, 0x03, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(IRTCProfile2** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT EnumerateGroups(IRTCEnumGroups** ppEnum) mut
			{
				return VT.EnumerateGroups(&this, ppEnum);
			}
			public HRESULT get_Groups(IRTCCollection** ppCollection) mut
			{
				return VT.get_Groups(&this, ppCollection);
			}
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) mut
			{
				return VT.get_PresenceProperty(&this, enProperty, pbstrProperty);
			}
			public HRESULT EnumeratePresenceDevices(IRTCEnumPresenceDevices** ppEnumDevices) mut
			{
				return VT.EnumeratePresenceDevices(&this, ppEnumDevices);
			}
			public HRESULT get_PresenceDevices(IRTCCollection** ppDevicesCollection) mut
			{
				return VT.get_PresenceDevices(&this, ppDevicesCollection);
			}
			public HRESULT get_SubscriptionType(RTC_BUDDY_SUBSCRIPTION_TYPE* penSubscriptionType) mut
			{
				return VT.get_SubscriptionType(&this, penSubscriptionType);
			}
			[CRepr]
			public struct VTable : IRTCBuddy.VTable
			{
				public new function HRESULT(IRTCBuddy2 *self, IRTCProfile2** ppProfile) get_Profile;
				public new function HRESULT(IRTCBuddy2 *self) Refresh;
				public new function HRESULT(IRTCBuddy2 *self, IRTCEnumGroups** ppEnum) EnumerateGroups;
				public new function HRESULT(IRTCBuddy2 *self, IRTCCollection** ppCollection) get_Groups;
				public new function HRESULT(IRTCBuddy2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
				public new function HRESULT(IRTCBuddy2 *self, IRTCEnumPresenceDevices** ppEnumDevices) EnumeratePresenceDevices;
				public new function HRESULT(IRTCBuddy2 *self, IRTCCollection** ppDevicesCollection) get_PresenceDevices;
				public new function HRESULT(IRTCBuddy2 *self, RTC_BUDDY_SUBSCRIPTION_TYPE* penSubscriptionType) get_SubscriptionType;
			}
		}
		[CRepr]
		public struct IRTCWatcher : IRTCPresenceContact
		{
			public const new Guid IID = .(0xc7cedad8, 0x346b, 0x4d1b, 0xac, 0x02, 0xa2, 0x08, 0x8d, 0xf9, 0xbe, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_State(RTC_WATCHER_STATE* penState) mut
			{
				return VT.get_State(&this, penState);
			}
			public HRESULT put_State(RTC_WATCHER_STATE enState) mut
			{
				return VT.put_State(&this, enState);
			}
			[CRepr]
			public struct VTable : IRTCPresenceContact.VTable
			{
				public new function HRESULT(IRTCWatcher *self, RTC_WATCHER_STATE* penState) get_State;
				public new function HRESULT(IRTCWatcher *self, RTC_WATCHER_STATE enState) put_State;
			}
		}
		[CRepr]
		public struct IRTCWatcher2 : IRTCWatcher
		{
			public const new Guid IID = .(0xd4d9967f, 0xd011, 0x4b1d, 0x91, 0xe3, 0xab, 0xa7, 0x8f, 0x96, 0x39, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(IRTCProfile2** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_Scope(RTC_ACE_SCOPE* penScope) mut
			{
				return VT.get_Scope(&this, penScope);
			}
			[CRepr]
			public struct VTable : IRTCWatcher.VTable
			{
				public new function HRESULT(IRTCWatcher2 *self, IRTCProfile2** ppProfile) get_Profile;
				public new function HRESULT(IRTCWatcher2 *self, RTC_ACE_SCOPE* penScope) get_Scope;
			}
		}
		[CRepr]
		public struct IRTCBuddyGroup : IUnknown
		{
			public const new Guid IID = .(0x60361e68, 0x9164, 0x4389, 0xa4, 0xc6, 0xd0, 0xb3, 0x92, 0x5b, 0xda, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrGroupName) mut
			{
				return VT.get_Name(&this, pbstrGroupName);
			}
			public HRESULT put_Name(BSTR bstrGroupName) mut
			{
				return VT.put_Name(&this, bstrGroupName);
			}
			public HRESULT AddBuddy(IRTCBuddy* pBuddy) mut
			{
				return VT.AddBuddy(&this, pBuddy);
			}
			public HRESULT RemoveBuddy(IRTCBuddy* pBuddy) mut
			{
				return VT.RemoveBuddy(&this, pBuddy);
			}
			public HRESULT EnumerateBuddies(IRTCEnumBuddies** ppEnum) mut
			{
				return VT.EnumerateBuddies(&this, ppEnum);
			}
			public HRESULT get_Buddies(IRTCCollection** ppCollection) mut
			{
				return VT.get_Buddies(&this, ppCollection);
			}
			public HRESULT get_Data(BSTR* pbstrData) mut
			{
				return VT.get_Data(&this, pbstrData);
			}
			public HRESULT put_Data(BSTR bstrData) mut
			{
				return VT.put_Data(&this, bstrData);
			}
			public HRESULT get_Profile(IRTCProfile2** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCBuddyGroup *self, BSTR* pbstrGroupName) get_Name;
				public new function HRESULT(IRTCBuddyGroup *self, BSTR bstrGroupName) put_Name;
				public new function HRESULT(IRTCBuddyGroup *self, IRTCBuddy* pBuddy) AddBuddy;
				public new function HRESULT(IRTCBuddyGroup *self, IRTCBuddy* pBuddy) RemoveBuddy;
				public new function HRESULT(IRTCBuddyGroup *self, IRTCEnumBuddies** ppEnum) EnumerateBuddies;
				public new function HRESULT(IRTCBuddyGroup *self, IRTCCollection** ppCollection) get_Buddies;
				public new function HRESULT(IRTCBuddyGroup *self, BSTR* pbstrData) get_Data;
				public new function HRESULT(IRTCBuddyGroup *self, BSTR bstrData) put_Data;
				public new function HRESULT(IRTCBuddyGroup *self, IRTCProfile2** ppProfile) get_Profile;
			}
		}
		[CRepr]
		public struct IRTCEventNotification : IUnknown
		{
			public const new Guid IID = .(0x13fa24c7, 0x5748, 0x4b21, 0x91, 0xf5, 0x73, 0x97, 0x60, 0x9c, 0xe7, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Event(RTC_EVENT RTCEvent, IDispatch* pEvent) mut
			{
				return VT.Event(&this, RTCEvent, pEvent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEventNotification *self, RTC_EVENT RTCEvent, IDispatch* pEvent) Event;
			}
		}
		[CRepr]
		public struct IRTCPortManager : IUnknown
		{
			public const new Guid IID = .(0xda77c14b, 0x6208, 0x43ca, 0x8d, 0xdf, 0x5b, 0x60, 0xa0, 0xa6, 0x9f, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMapping(BSTR bstrRemoteAddress, RTC_PORT_TYPE enPortType, BSTR* pbstrInternalLocalAddress, int32* plInternalLocalPort, BSTR* pbstrExternalLocalAddress, int32* plExternalLocalPort) mut
			{
				return VT.GetMapping(&this, bstrRemoteAddress, enPortType, pbstrInternalLocalAddress, plInternalLocalPort, pbstrExternalLocalAddress, plExternalLocalPort);
			}
			public HRESULT UpdateRemoteAddress(BSTR bstrRemoteAddress, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalPort) mut
			{
				return VT.UpdateRemoteAddress(&this, bstrRemoteAddress, bstrInternalLocalAddress, lInternalLocalPort, bstrExternalLocalAddress, lExternalLocalPort);
			}
			public HRESULT ReleaseMapping(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalAddress) mut
			{
				return VT.ReleaseMapping(&this, bstrInternalLocalAddress, lInternalLocalPort, bstrExternalLocalAddress, lExternalLocalAddress);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCPortManager *self, BSTR bstrRemoteAddress, RTC_PORT_TYPE enPortType, BSTR* pbstrInternalLocalAddress, int32* plInternalLocalPort, BSTR* pbstrExternalLocalAddress, int32* plExternalLocalPort) GetMapping;
				public new function HRESULT(IRTCPortManager *self, BSTR bstrRemoteAddress, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalPort) UpdateRemoteAddress;
				public new function HRESULT(IRTCPortManager *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalAddress) ReleaseMapping;
			}
		}
		[CRepr]
		public struct IRTCSessionPortManagement : IUnknown
		{
			public const new Guid IID = .(0xa072f1d6, 0x0286, 0x4e1f, 0x85, 0xf2, 0x17, 0xa2, 0x94, 0x84, 0x56, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPortManager(IRTCPortManager* pPortManager) mut
			{
				return VT.SetPortManager(&this, pPortManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCSessionPortManagement *self, IRTCPortManager* pPortManager) SetPortManager;
			}
		}
		[CRepr]
		public struct IRTCClientPortManagement : IUnknown
		{
			public const new Guid IID = .(0xd5df3f03, 0x4bde, 0x4417, 0xae, 0xfe, 0x71, 0x17, 0x7b, 0xda, 0xea, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListenAddressAndPort(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) mut
			{
				return VT.StartListenAddressAndPort(&this, bstrInternalLocalAddress, lInternalLocalPort);
			}
			public HRESULT StopListenAddressAndPort(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) mut
			{
				return VT.StopListenAddressAndPort(&this, bstrInternalLocalAddress, lInternalLocalPort);
			}
			public HRESULT GetPortRange(RTC_PORT_TYPE enPortType, int32* plMinValue, int32* plMaxValue) mut
			{
				return VT.GetPortRange(&this, enPortType, plMinValue, plMaxValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCClientPortManagement *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StartListenAddressAndPort;
				public new function HRESULT(IRTCClientPortManagement *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StopListenAddressAndPort;
				public new function HRESULT(IRTCClientPortManagement *self, RTC_PORT_TYPE enPortType, int32* plMinValue, int32* plMaxValue) GetPortRange;
			}
		}
		[CRepr]
		public struct IRTCUserSearch : IUnknown
		{
			public const new Guid IID = .(0xb619882b, 0x860c, 0x4db4, 0xbe, 0x1b, 0x69, 0x3b, 0x65, 0x05, 0xbb, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateQuery(IRTCUserSearchQuery** ppQuery) mut
			{
				return VT.CreateQuery(&this, ppQuery);
			}
			public HRESULT ExecuteSearch(IRTCUserSearchQuery* pQuery, IRTCProfile* pProfile, int lCookie) mut
			{
				return VT.ExecuteSearch(&this, pQuery, pProfile, lCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCUserSearch *self, IRTCUserSearchQuery** ppQuery) CreateQuery;
				public new function HRESULT(IRTCUserSearch *self, IRTCUserSearchQuery* pQuery, IRTCProfile* pProfile, int lCookie) ExecuteSearch;
			}
		}
		[CRepr]
		public struct IRTCUserSearchQuery : IUnknown
		{
			public const new Guid IID = .(0x288300f5, 0xd23a, 0x4365, 0x9a, 0x73, 0x99, 0x85, 0xc9, 0x8c, 0x28, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_SearchTerm(BSTR bstrName, BSTR bstrValue) mut
			{
				return VT.put_SearchTerm(&this, bstrName, bstrValue);
			}
			public HRESULT get_SearchTerm(BSTR bstrName, BSTR* pbstrValue) mut
			{
				return VT.get_SearchTerm(&this, bstrName, pbstrValue);
			}
			public HRESULT get_SearchTerms(BSTR* pbstrNames) mut
			{
				return VT.get_SearchTerms(&this, pbstrNames);
			}
			public HRESULT put_SearchPreference(RTC_USER_SEARCH_PREFERENCE enPreference, int32 lValue) mut
			{
				return VT.put_SearchPreference(&this, enPreference, lValue);
			}
			public HRESULT get_SearchPreference(RTC_USER_SEARCH_PREFERENCE enPreference, int32* plValue) mut
			{
				return VT.get_SearchPreference(&this, enPreference, plValue);
			}
			public HRESULT put_SearchDomain(BSTR bstrDomain) mut
			{
				return VT.put_SearchDomain(&this, bstrDomain);
			}
			public HRESULT get_SearchDomain(BSTR* pbstrDomain) mut
			{
				return VT.get_SearchDomain(&this, pbstrDomain);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCUserSearchQuery *self, BSTR bstrName, BSTR bstrValue) put_SearchTerm;
				public new function HRESULT(IRTCUserSearchQuery *self, BSTR bstrName, BSTR* pbstrValue) get_SearchTerm;
				public new function HRESULT(IRTCUserSearchQuery *self, BSTR* pbstrNames) get_SearchTerms;
				public new function HRESULT(IRTCUserSearchQuery *self, RTC_USER_SEARCH_PREFERENCE enPreference, int32 lValue) put_SearchPreference;
				public new function HRESULT(IRTCUserSearchQuery *self, RTC_USER_SEARCH_PREFERENCE enPreference, int32* plValue) get_SearchPreference;
				public new function HRESULT(IRTCUserSearchQuery *self, BSTR bstrDomain) put_SearchDomain;
				public new function HRESULT(IRTCUserSearchQuery *self, BSTR* pbstrDomain) get_SearchDomain;
			}
		}
		[CRepr]
		public struct IRTCUserSearchResult : IUnknown
		{
			public const new Guid IID = .(0x851278b2, 0x9592, 0x480f, 0x8d, 0xb5, 0x2d, 0xe8, 0x6b, 0x26, 0xb5, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(RTC_USER_SEARCH_COLUMN enColumn, BSTR* pbstrValue) mut
			{
				return VT.get_Value(&this, enColumn, pbstrValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCUserSearchResult *self, RTC_USER_SEARCH_COLUMN enColumn, BSTR* pbstrValue) get_Value;
			}
		}
		[CRepr]
		public struct IRTCEnumUserSearchResults : IUnknown
		{
			public const new Guid IID = .(0x83d4d877, 0xaa5d, 0x4a5b, 0x8d, 0x0e, 0x00, 0x2a, 0x80, 0x67, 0xe0, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCUserSearchResult** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumUserSearchResults** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumUserSearchResults *self, uint32 celt, IRTCUserSearchResult** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumUserSearchResults *self) Reset;
				public new function HRESULT(IRTCEnumUserSearchResults *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumUserSearchResults *self, IRTCEnumUserSearchResults** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCUserSearchResultsEvent : IDispatch
		{
			public const new Guid IID = .(0xd8c8c3cd, 0x7fac, 0x4088, 0x81, 0xc5, 0xc2, 0x4c, 0xbc, 0x09, 0x38, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumerateResults(IRTCEnumUserSearchResults** ppEnum) mut
			{
				return VT.EnumerateResults(&this, ppEnum);
			}
			public HRESULT get_Results(IRTCCollection** ppCollection) mut
			{
				return VT.get_Results(&this, ppCollection);
			}
			public HRESULT get_Profile(IRTCProfile2** ppProfile) mut
			{
				return VT.get_Profile(&this, ppProfile);
			}
			public HRESULT get_Query(IRTCUserSearchQuery** ppQuery) mut
			{
				return VT.get_Query(&this, ppQuery);
			}
			public HRESULT get_Cookie(int* plCookie) mut
			{
				return VT.get_Cookie(&this, plCookie);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_MoreAvailable(int16* pfMoreAvailable) mut
			{
				return VT.get_MoreAvailable(&this, pfMoreAvailable);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCUserSearchResultsEvent *self, IRTCEnumUserSearchResults** ppEnum) EnumerateResults;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, IRTCCollection** ppCollection) get_Results;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, IRTCProfile2** ppProfile) get_Profile;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, IRTCUserSearchQuery** ppQuery) get_Query;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, int* plCookie) get_Cookie;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCUserSearchResultsEvent *self, int16* pfMoreAvailable) get_MoreAvailable;
			}
		}
		[CRepr]
		public struct IRTCSessionReferStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x3d8fc2cd, 0x5d76, 0x44ab, 0xbb, 0x68, 0x2a, 0x80, 0x35, 0x3b, 0x34, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession2** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_ReferStatus(RTC_SESSION_REFER_STATUS* penReferStatus) mut
			{
				return VT.get_ReferStatus(&this, penReferStatus);
			}
			public HRESULT get_StatusCode(int32* plStatusCode) mut
			{
				return VT.get_StatusCode(&this, plStatusCode);
			}
			public HRESULT get_StatusText(BSTR* pbstrStatusText) mut
			{
				return VT.get_StatusText(&this, pbstrStatusText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCSessionReferStatusEvent *self, IRTCSession2** ppSession) get_Session;
				public new function HRESULT(IRTCSessionReferStatusEvent *self, RTC_SESSION_REFER_STATUS* penReferStatus) get_ReferStatus;
				public new function HRESULT(IRTCSessionReferStatusEvent *self, int32* plStatusCode) get_StatusCode;
				public new function HRESULT(IRTCSessionReferStatusEvent *self, BSTR* pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionReferredEvent : IDispatch
		{
			public const new Guid IID = .(0x176a6828, 0x4fcc, 0x4f28, 0xa8, 0x62, 0x04, 0x59, 0x7a, 0x6c, 0xf1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(IRTCSession2** ppSession) mut
			{
				return VT.get_Session(&this, ppSession);
			}
			public HRESULT get_ReferredByURI(BSTR* pbstrReferredByURI) mut
			{
				return VT.get_ReferredByURI(&this, pbstrReferredByURI);
			}
			public HRESULT get_ReferToURI(BSTR* pbstrReferoURI) mut
			{
				return VT.get_ReferToURI(&this, pbstrReferoURI);
			}
			public HRESULT get_ReferCookie(BSTR* pbstrReferCookie) mut
			{
				return VT.get_ReferCookie(&this, pbstrReferCookie);
			}
			public HRESULT Accept() mut
			{
				return VT.Accept(&this);
			}
			public HRESULT Reject() mut
			{
				return VT.Reject(&this);
			}
			public HRESULT SetReferredSessionState(RTC_SESSION_STATE enState) mut
			{
				return VT.SetReferredSessionState(&this, enState);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRTCSessionReferredEvent *self, IRTCSession2** ppSession) get_Session;
				public new function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferredByURI) get_ReferredByURI;
				public new function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferoURI) get_ReferToURI;
				public new function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferCookie) get_ReferCookie;
				public new function HRESULT(IRTCSessionReferredEvent *self) Accept;
				public new function HRESULT(IRTCSessionReferredEvent *self) Reject;
				public new function HRESULT(IRTCSessionReferredEvent *self, RTC_SESSION_STATE enState) SetReferredSessionState;
			}
		}
		[CRepr]
		public struct IRTCSessionDescriptionManager : IUnknown
		{
			public const new Guid IID = .(0xba7f518e, 0xd336, 0x4070, 0x93, 0xa6, 0x86, 0x53, 0x95, 0xc8, 0x43, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EvaluateSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription, int16* pfApplicationSession) mut
			{
				return VT.EvaluateSessionDescription(&this, bstrContentType, bstrSessionDescription, pfApplicationSession);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCSessionDescriptionManager *self, BSTR bstrContentType, BSTR bstrSessionDescription, int16* pfApplicationSession) EvaluateSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCEnumPresenceDevices : IUnknown
		{
			public const new Guid IID = .(0x708c2ab7, 0x8bf8, 0x42f8, 0x8c, 0x7d, 0x63, 0x51, 0x97, 0xad, 0x55, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCPresenceDevice** ppElements, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, ppElements, pceltFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Clone(IRTCEnumPresenceDevices** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCEnumPresenceDevices *self, uint32 celt, IRTCPresenceDevice** ppElements, uint32* pceltFetched) Next;
				public new function HRESULT(IRTCEnumPresenceDevices *self) Reset;
				public new function HRESULT(IRTCEnumPresenceDevices *self, uint32 celt) Skip;
				public new function HRESULT(IRTCEnumPresenceDevices *self, IRTCEnumPresenceDevices** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCPresenceDevice : IUnknown
		{
			public const new Guid IID = .(0xbc6a90dd, 0xad9a, 0x48da, 0x9b, 0x0c, 0x25, 0x15, 0xe3, 0x85, 0x21, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(RTC_PRESENCE_STATUS* penStatus) mut
			{
				return VT.get_Status(&this, penStatus);
			}
			public HRESULT get_Notes(BSTR* pbstrNotes) mut
			{
				return VT.get_Notes(&this, pbstrNotes);
			}
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) mut
			{
				return VT.get_PresenceProperty(&this, enProperty, pbstrProperty);
			}
			public HRESULT GetPresenceData(BSTR* pbstrNamespace, BSTR* pbstrData) mut
			{
				return VT.GetPresenceData(&this, pbstrNamespace, pbstrData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRTCPresenceDevice *self, RTC_PRESENCE_STATUS* penStatus) get_Status;
				public new function HRESULT(IRTCPresenceDevice *self, BSTR* pbstrNotes) get_Notes;
				public new function HRESULT(IRTCPresenceDevice *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
				public new function HRESULT(IRTCPresenceDevice *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
			}
		}
		[CRepr]
		public struct IRTCDispatchEventNotification : IDispatch
		{
			public const new Guid IID = .(0x176ddfbe, 0xfec0, 0x4d55, 0xbc, 0x87, 0x84, 0xcf, 0xf1, 0xef, 0x7f, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ITransportSettingsInternal : IUnknown
		{
			public const new Guid IID = .(0x5123e076, 0x29e3, 0x4bfd, 0x84, 0xfe, 0x01, 0x92, 0xd4, 0x11, 0xe3, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySetting(TRANSPORT_SETTING* Setting) mut
			{
				return VT.ApplySetting(&this, Setting);
			}
			public HRESULT QuerySetting(TRANSPORT_SETTING* Setting) mut
			{
				return VT.QuerySetting(&this, Setting);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransportSettingsInternal *self, TRANSPORT_SETTING* Setting) ApplySetting;
				public new function HRESULT(ITransportSettingsInternal *self, TRANSPORT_SETTING* Setting) QuerySetting;
			}
		}
		[CRepr]
		public struct INetworkTransportSettings : IUnknown
		{
			public const new Guid IID = .(0x5e7abb2c, 0xf2c1, 0x4a61, 0xbd, 0x35, 0xde, 0xb7, 0xa0, 0x8a, 0xb0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySetting(TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) mut
			{
				return VT.ApplySetting(&this, SettingId, LengthIn, ValueIn, LengthOut, ValueOut);
			}
			public HRESULT QuerySetting(TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) mut
			{
				return VT.QuerySetting(&this, SettingId, LengthIn, ValueIn, LengthOut, ValueOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkTransportSettings *self, TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) ApplySetting;
				public new function HRESULT(INetworkTransportSettings *self, TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) QuerySetting;
			}
		}
		[CRepr]
		public struct INotificationTransportSync : IUnknown
		{
			public const new Guid IID = .(0x79eb1402, 0x0ab8, 0x49c0, 0x9e, 0x14, 0xa1, 0xae, 0x4b, 0xa9, 0x30, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompleteDelivery() mut
			{
				return VT.CompleteDelivery(&this);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INotificationTransportSync *self) CompleteDelivery;
				public new function HRESULT(INotificationTransportSync *self) Flush;
			}
		}
		
	}
}
