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
			
			public function HRESULT(IRTCClient *self) Initialize;
			public function HRESULT(IRTCClient *self) Shutdown;
			public function HRESULT(IRTCClient *self) PrepareForShutdown;
			public function HRESULT(IRTCClient *self, int32 lFilter) put_EventFilter;
			public function HRESULT(IRTCClient *self, int32* plFilter) get_EventFilter;
			public function HRESULT(IRTCClient *self, int32 lMediaTypes, int16 fPersistent) SetPreferredMediaTypes;
			public function HRESULT(IRTCClient *self, int32* plMediaTypes) get_PreferredMediaTypes;
			public function HRESULT(IRTCClient *self, int32* plMediaTypes) get_MediaCapabilities;
			public function HRESULT(IRTCClient *self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags, IRTCSession** ppSession) CreateSession;
			public function HRESULT(IRTCClient *self, RTC_LISTEN_MODE enListen) put_ListenForIncomingSessions;
			public function HRESULT(IRTCClient *self, RTC_LISTEN_MODE* penListen) get_ListenForIncomingSessions;
			public function HRESULT(IRTCClient *self, int16 fTCP, int16 fExternal, VARIANT* pvAddresses) get_NetworkAddresses;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_Volume;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32* plVolume) get_Volume;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int16 fMuted) put_AudioMuted;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int16* pfMuted) get_AudioMuted;
			public function HRESULT(IRTCClient *self, RTC_VIDEO_DEVICE enDevice, IVideoWindow** ppIVideoWindow) get_IVideoWindow;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, BSTR bstrDeviceName) put_PreferredAudioDevice;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, BSTR* pbstrDeviceName) get_PreferredAudioDevice;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_PreferredVolume;
			public function HRESULT(IRTCClient *self, RTC_AUDIO_DEVICE enDevice, int32* plVolume) get_PreferredVolume;
			public function HRESULT(IRTCClient *self, int16 bEnable) put_PreferredAEC;
			public function HRESULT(IRTCClient *self, int16* pbEnabled) get_PreferredAEC;
			public function HRESULT(IRTCClient *self, BSTR bstrDeviceName) put_PreferredVideoDevice;
			public function HRESULT(IRTCClient *self, BSTR* pbstrDeviceName) get_PreferredVideoDevice;
			public function HRESULT(IRTCClient *self, int32* plMediaType) get_ActiveMedia;
			public function HRESULT(IRTCClient *self, int32 lMaxBitrate) put_MaxBitrate;
			public function HRESULT(IRTCClient *self, int32* plMaxBitrate) get_MaxBitrate;
			public function HRESULT(IRTCClient *self, int32 lValue) put_TemporalSpatialTradeOff;
			public function HRESULT(IRTCClient *self, int32* plValue) get_TemporalSpatialTradeOff;
			public function HRESULT(IRTCClient *self, int32* plNetworkQuality) get_NetworkQuality;
			public function HRESULT(IRTCClient *self, RTC_T120_APPLET enApplet) StartT120Applet;
			public function HRESULT(IRTCClient *self) StopT120Applets;
			public function HRESULT(IRTCClient *self, RTC_T120_APPLET enApplet, int16* pfRunning) get_IsT120AppletRunning;
			public function HRESULT(IRTCClient *self, BSTR* pbstrUserURI) get_LocalUserURI;
			public function HRESULT(IRTCClient *self, BSTR bstrUserURI) put_LocalUserURI;
			public function HRESULT(IRTCClient *self, BSTR* pbstrUserName) get_LocalUserName;
			public function HRESULT(IRTCClient *self, BSTR bstrUserName) put_LocalUserName;
			public function HRESULT(IRTCClient *self, RTC_RING_TYPE enType, int16 bPlay) PlayRing;
			public function HRESULT(IRTCClient *self, RTC_DTMF enDTMF) SendDTMF;
			public function HRESULT(IRTCClient *self, int hwndParent) InvokeTuningWizard;
			public function HRESULT(IRTCClient *self, int16* pfTuned) get_IsTuned;
		}
		[CRepr]
		public struct IRTCClient2 : IRTCClient
		{
			public const new Guid IID = .(0x0c91d71d, 0x1064, 0x42da, 0xbf, 0xa5, 0x57, 0x2b, 0xeb, 0x8e, 0xea, 0x84);
			
			public function HRESULT(IRTCClient2 *self, RTC_SESSION_TYPE enType, RTC_ANSWER_MODE enMode) put_AnswerMode;
			public function HRESULT(IRTCClient2 *self, RTC_SESSION_TYPE enType, RTC_ANSWER_MODE* penMode) get_AnswerMode;
			public function HRESULT(IRTCClient2 *self, int hwndParent, int16 fAllowAudio, int16 fAllowVideo) InvokeTuningWizardEx;
			public function HRESULT(IRTCClient2 *self, int32* plVersion) get_Version;
			public function HRESULT(IRTCClient2 *self, BSTR bstrClientName) put_ClientName;
			public function HRESULT(IRTCClient2 *self, BSTR bstrClientCurVer) put_ClientCurVer;
			public function HRESULT(IRTCClient2 *self, int32 lFlags) InitializeEx;
			public function HRESULT(IRTCClient2 *self, BSTR bstrContentType, BSTR bstrSessionDescription, IRTCProfile* pProfile, int32 lFlags, IRTCSession2** ppSession2) CreateSessionWithDescription;
			public function HRESULT(IRTCClient2 *self, IRTCSessionDescriptionManager* pSessionDescriptionManager) SetSessionDescriptionManager;
			public function HRESULT(IRTCClient2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
			public function HRESULT(IRTCClient2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_PreferredSecurityLevel;
			public function HRESULT(IRTCClient2 *self, int32 lTransport, RTC_LISTEN_MODE enListenMode) put_AllowedPorts;
			public function HRESULT(IRTCClient2 *self, int32 lTransport, RTC_LISTEN_MODE* penListenMode) get_AllowedPorts;
		}
		[CRepr]
		public struct IRTCClientPresence : IUnknown
		{
			public const new Guid IID = .(0x11c3cbcc, 0x0744, 0x42d1, 0x96, 0x8a, 0x51, 0xaa, 0x1b, 0xb2, 0x74, 0xc6);
			
			public function HRESULT(IRTCClientPresence *self, int16 fUseStorage, VARIANT varStorage) EnablePresence;
			public function HRESULT(IRTCClientPresence *self, VARIANT varStorage) Export;
			public function HRESULT(IRTCClientPresence *self, VARIANT varStorage, int16 fReplaceAll) Import;
			public function HRESULT(IRTCClientPresence *self, IRTCEnumBuddies** ppEnum) EnumerateBuddies;
			public function HRESULT(IRTCClientPresence *self, IRTCCollection** ppCollection) get_Buddies;
			public function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, IRTCBuddy** ppBuddy) get_Buddy;
			public function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy** ppBuddy) AddBuddy;
			public function HRESULT(IRTCClientPresence *self, IRTCBuddy* pBuddy) RemoveBuddy;
			public function HRESULT(IRTCClientPresence *self, IRTCEnumWatchers** ppEnum) EnumerateWatchers;
			public function HRESULT(IRTCClientPresence *self, IRTCCollection** ppCollection) get_Watchers;
			public function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, IRTCWatcher** ppWatcher) get_Watcher;
			public function HRESULT(IRTCClientPresence *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fBlocked, int16 fPersistent, IRTCWatcher** ppWatcher) AddWatcher;
			public function HRESULT(IRTCClientPresence *self, IRTCWatcher* pWatcher) RemoveWatcher;
			public function HRESULT(IRTCClientPresence *self, RTC_PRESENCE_STATUS enStatus, BSTR bstrNotes) SetLocalPresenceInfo;
			public function HRESULT(IRTCClientPresence *self, RTC_OFFER_WATCHER_MODE* penMode) get_OfferWatcherMode;
			public function HRESULT(IRTCClientPresence *self, RTC_OFFER_WATCHER_MODE enMode) put_OfferWatcherMode;
			public function HRESULT(IRTCClientPresence *self, RTC_PRIVACY_MODE* penMode) get_PrivacyMode;
			public function HRESULT(IRTCClientPresence *self, RTC_PRIVACY_MODE enMode) put_PrivacyMode;
		}
		[CRepr]
		public struct IRTCClientPresence2 : IRTCClientPresence
		{
			public const new Guid IID = .(0xad1809e8, 0x62f7, 0x4783, 0x90, 0x9a, 0x29, 0xc9, 0xd2, 0xcb, 0x1d, 0x34);
			
			public function HRESULT(IRTCClientPresence2 *self, IRTCProfile* pProfile, VARIANT varStorage, int32 lFlags) EnablePresenceEx;
			public function HRESULT(IRTCClientPresence2 *self) DisablePresence;
			public function HRESULT(IRTCClientPresence2 *self, BSTR bstrGroupName, BSTR bstrData, IRTCProfile* pProfile, int32 lFlags, IRTCBuddyGroup** ppGroup) AddGroup;
			public function HRESULT(IRTCClientPresence2 *self, IRTCBuddyGroup* pGroup) RemoveGroup;
			public function HRESULT(IRTCClientPresence2 *self, IRTCEnumGroups** ppEnum) EnumerateGroups;
			public function HRESULT(IRTCClientPresence2 *self, IRTCCollection** ppCollection) get_Groups;
			public function HRESULT(IRTCClientPresence2 *self, BSTR bstrGroupName, IRTCBuddyGroup** ppGroup) get_Group;
			public function HRESULT(IRTCClientPresence2 *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, RTC_WATCHER_STATE enState, int16 fPersistent, RTC_ACE_SCOPE enScope, IRTCProfile* pProfile, int32 lFlags, IRTCWatcher2** ppWatcher) AddWatcherEx;
			public function HRESULT(IRTCClientPresence2 *self, RTC_WATCHER_MATCH_MODE enMode, BSTR bstrPresentityURI, IRTCWatcher2** ppWatcher) get_WatcherEx;
			public function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR bstrProperty) put_PresenceProperty;
			public function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
			public function HRESULT(IRTCClientPresence2 *self, BSTR bstrNamespace, BSTR bstrData) SetPresenceData;
			public function HRESULT(IRTCClientPresence2 *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
			public function HRESULT(IRTCClientPresence2 *self, RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) GetLocalPresenceInfo;
			public function HRESULT(IRTCClientPresence2 *self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, RTC_BUDDY_SUBSCRIPTION_TYPE enSubscriptionType, IRTCProfile* pProfile, int32 lFlags, IRTCBuddy2** ppBuddy) AddBuddyEx;
		}
		[CRepr]
		public struct IRTCClientProvisioning : IUnknown
		{
			public const new Guid IID = .(0xb9f5cf06, 0x65b9, 0x4a80, 0xa0, 0xe6, 0x73, 0xca, 0xe3, 0xef, 0x38, 0x22);
			
			public function HRESULT(IRTCClientProvisioning *self, BSTR bstrProfileXML, IRTCProfile** ppProfile) CreateProfile;
			public function HRESULT(IRTCClientProvisioning *self, IRTCProfile* pProfile, int32 lRegisterFlags) EnableProfile;
			public function HRESULT(IRTCClientProvisioning *self, IRTCProfile* pProfile) DisableProfile;
			public function HRESULT(IRTCClientProvisioning *self, IRTCEnumProfiles** ppEnum) EnumerateProfiles;
			public function HRESULT(IRTCClientProvisioning *self, IRTCCollection** ppCollection) get_Profiles;
			public function HRESULT(IRTCClientProvisioning *self, BSTR bstrUserAccount, BSTR bstrUserPassword, BSTR bstrUserURI, BSTR bstrServer, int32 lTransport, int lCookie) GetProfile;
			public function HRESULT(IRTCClientProvisioning *self, int32* plSupportedSessions) get_SessionCapabilities;
		}
		[CRepr]
		public struct IRTCClientProvisioning2 : IRTCClientProvisioning
		{
			public const new Guid IID = .(0xa70909b5, 0xf40e, 0x4587, 0xbb, 0x75, 0xe6, 0xbc, 0x08, 0x45, 0x02, 0x3e);
			
			public function HRESULT(IRTCClientProvisioning2 *self, IRTCProfile* pProfile, int32 lRegisterFlags, int32 lRoamingFlags) EnableProfileEx;
		}
		[CRepr]
		public struct IRTCProfile : IUnknown
		{
			public const new Guid IID = .(0xd07eca9e, 0x4062, 0x4dd4, 0x9e, 0x7d, 0x72, 0x2a, 0x49, 0xba, 0x73, 0x03);
			
			public function HRESULT(IRTCProfile *self, BSTR* pbstrKey) get_Key;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrXML) get_XML;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_ProviderName;
			public function HRESULT(IRTCProfile *self, RTC_PROVIDER_URI enURI, BSTR* pbstrURI) get_ProviderURI;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrData) get_ProviderData;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrName) get_ClientName;
			public function HRESULT(IRTCProfile *self, int16* pfBanner) get_ClientBanner;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrMinVer) get_ClientMinVer;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrCurVer) get_ClientCurVer;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrUpdateURI) get_ClientUpdateURI;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrData) get_ClientData;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrUserURI) get_UserURI;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrUserName) get_UserName;
			public function HRESULT(IRTCProfile *self, BSTR* pbstrUserAccount) get_UserAccount;
			public function HRESULT(IRTCProfile *self, BSTR bstrUserURI, BSTR bstrUserAccount, BSTR bstrPassword) SetCredentials;
			public function HRESULT(IRTCProfile *self, int32* plSupportedSessions) get_SessionCapabilities;
			public function HRESULT(IRTCProfile *self, RTC_REGISTRATION_STATE* penState) get_State;
		}
		[CRepr]
		public struct IRTCProfile2 : IRTCProfile
		{
			public const new Guid IID = .(0x4b81f84e, 0xbdc7, 0x4184, 0x91, 0x54, 0x3c, 0xb2, 0xdd, 0x79, 0x17, 0xfb);
			
			public function HRESULT(IRTCProfile2 *self, BSTR* pbstrRealm) get_Realm;
			public function HRESULT(IRTCProfile2 *self, BSTR bstrRealm) put_Realm;
			public function HRESULT(IRTCProfile2 *self, int32* plAllowedAuth) get_AllowedAuth;
			public function HRESULT(IRTCProfile2 *self, int32 lAllowedAuth) put_AllowedAuth;
		}
		[CRepr]
		public struct IRTCSession : IUnknown
		{
			public const new Guid IID = .(0x387c8086, 0x99be, 0x42fb, 0x99, 0x73, 0x7c, 0x0f, 0xc0, 0xca, 0x9f, 0xa8);
			
			public function HRESULT(IRTCSession *self, IRTCClient** ppClient) get_Client;
			public function HRESULT(IRTCSession *self, RTC_SESSION_STATE* penState) get_State;
			public function HRESULT(IRTCSession *self, RTC_SESSION_TYPE* penType) get_Type;
			public function HRESULT(IRTCSession *self, IRTCProfile** ppProfile) get_Profile;
			public function HRESULT(IRTCSession *self, IRTCCollection** ppCollection) get_Participants;
			public function HRESULT(IRTCSession *self) Answer;
			public function HRESULT(IRTCSession *self, RTC_TERMINATE_REASON enReason) Terminate;
			public function HRESULT(IRTCSession *self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, IRTCProfile* pProfile, int32 lFlags) Redirect;
			public function HRESULT(IRTCSession *self, BSTR bstrAddress, BSTR bstrName, IRTCParticipant** ppParticipant) AddParticipant;
			public function HRESULT(IRTCSession *self, IRTCParticipant* pParticipant) RemoveParticipant;
			public function HRESULT(IRTCSession *self, IRTCEnumParticipants** ppEnum) EnumerateParticipants;
			public function HRESULT(IRTCSession *self, int16* pfCanAdd) get_CanAddParticipants;
			public function HRESULT(IRTCSession *self, BSTR* pbstrUserURI) get_RedirectedUserURI;
			public function HRESULT(IRTCSession *self, BSTR* pbstrUserName) get_RedirectedUserName;
			public function HRESULT(IRTCSession *self) NextRedirectedUser;
			public function HRESULT(IRTCSession *self, BSTR bstrMessageHeader, BSTR bstrMessage, int lCookie) SendMessage;
			public function HRESULT(IRTCSession *self, RTC_MESSAGING_USER_STATUS enUserStatus, int lCookie) SendMessageStatus;
			public function HRESULT(IRTCSession *self, int32 lMediaType, int lCookie) AddStream;
			public function HRESULT(IRTCSession *self, int32 lMediaType, int lCookie) RemoveStream;
			public function HRESULT(IRTCSession *self, int32 lMediaType, BSTR EncryptionKey) put_EncryptionKey;
		}
		[CRepr]
		public struct IRTCSession2 : IRTCSession
		{
			public const new Guid IID = .(0x17d7cdfc, 0xb007, 0x484c, 0x99, 0xd2, 0x86, 0xa8, 0xa8, 0x20, 0x99, 0x1d);
			
			public function HRESULT(IRTCSession2 *self, BSTR bstrInfoHeader, BSTR bstrInfo, int lCookie) SendInfo;
			public function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
			public function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_PreferredSecurityLevel;
			public function HRESULT(IRTCSession2 *self, RTC_SECURITY_TYPE enSecurityType, int16* pfSecurityEnabled) IsSecurityEnabled;
			public function HRESULT(IRTCSession2 *self, BSTR bstrContentType, BSTR bstrSessionDescription) AnswerWithSessionDescription;
			public function HRESULT(IRTCSession2 *self, BSTR bstrContentType, BSTR bstrSessionDescription, int lCookie) ReInviteWithSessionDescription;
		}
		[CRepr]
		public struct IRTCSessionCallControl : IUnknown
		{
			public const new Guid IID = .(0xe9a50d94, 0x190b, 0x4f82, 0x95, 0x30, 0x3b, 0x8e, 0xbf, 0x60, 0x75, 0x8a);
			
			public function HRESULT(IRTCSessionCallControl *self, int lCookie) Hold;
			public function HRESULT(IRTCSessionCallControl *self, int lCookie) UnHold;
			public function HRESULT(IRTCSessionCallControl *self, BSTR bstrForwardToURI) Forward;
			public function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferToURI, BSTR bstrReferCookie) Refer;
			public function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferredByURI) put_ReferredByURI;
			public function HRESULT(IRTCSessionCallControl *self, BSTR* pbstrReferredByURI) get_ReferredByURI;
			public function HRESULT(IRTCSessionCallControl *self, BSTR bstrReferCookie) put_ReferCookie;
			public function HRESULT(IRTCSessionCallControl *self, BSTR* pbstrReferCookie) get_ReferCookie;
			public function HRESULT(IRTCSessionCallControl *self, int16* pfIsReferred) get_IsReferred;
		}
		[CRepr]
		public struct IRTCParticipant : IUnknown
		{
			public const new Guid IID = .(0xae86add5, 0x26b1, 0x4414, 0xaf, 0x1d, 0xb9, 0x4c, 0xd9, 0x38, 0xd7, 0x39);
			
			public function HRESULT(IRTCParticipant *self, BSTR* pbstrUserURI) get_UserURI;
			public function HRESULT(IRTCParticipant *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IRTCParticipant *self, int16* pfRemovable) get_Removable;
			public function HRESULT(IRTCParticipant *self, RTC_PARTICIPANT_STATE* penState) get_State;
			public function HRESULT(IRTCParticipant *self, IRTCSession** ppSession) get_Session;
		}
		[CRepr]
		public struct IRTCRoamingEvent : IDispatch
		{
			public const new Guid IID = .(0x79960a6b, 0x0cb1, 0x4dc8, 0xa8, 0x05, 0x73, 0x18, 0xe9, 0x99, 0x02, 0xe8);
			
			public function HRESULT(IRTCRoamingEvent *self, RTC_ROAMING_EVENT_TYPE* pEventType) get_EventType;
			public function HRESULT(IRTCRoamingEvent *self, IRTCProfile2** ppProfile) get_Profile;
			public function HRESULT(IRTCRoamingEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCRoamingEvent *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCProfileEvent : IDispatch
		{
			public const new Guid IID = .(0xd6d5ab3b, 0x770e, 0x43e8, 0x80, 0x0a, 0x79, 0xb0, 0x62, 0x39, 0x5f, 0xca);
			
			public function HRESULT(IRTCProfileEvent *self, IRTCProfile** ppProfile) get_Profile;
			public function HRESULT(IRTCProfileEvent *self, int* plCookie) get_Cookie;
			public function HRESULT(IRTCProfileEvent *self, int32* plStatusCode) get_StatusCode;
		}
		[CRepr]
		public struct IRTCProfileEvent2 : IRTCProfileEvent
		{
			public const new Guid IID = .(0x62e56edc, 0x03fa, 0x4121, 0x94, 0xfb, 0x23, 0x49, 0x3f, 0xd0, 0xae, 0x64);
			
			public function HRESULT(IRTCProfileEvent2 *self, RTC_PROFILE_EVENT_TYPE* pEventType) get_EventType;
		}
		[CRepr]
		public struct IRTCClientEvent : IDispatch
		{
			public const new Guid IID = .(0x2b493b7a, 0x3cba, 0x4170, 0x9c, 0x8b, 0x76, 0xa9, 0xda, 0xcd, 0xd6, 0x44);
			
			public function HRESULT(IRTCClientEvent *self, RTC_CLIENT_EVENT_TYPE* penEventType) get_EventType;
			public function HRESULT(IRTCClientEvent *self, IRTCClient** ppClient) get_Client;
		}
		[CRepr]
		public struct IRTCRegistrationStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x62d0991b, 0x50ab, 0x4f02, 0xb9, 0x48, 0xca, 0x94, 0xf2, 0x6f, 0x8f, 0x95);
			
			public function HRESULT(IRTCRegistrationStateChangeEvent *self, IRTCProfile** ppProfile) get_Profile;
			public function HRESULT(IRTCRegistrationStateChangeEvent *self, RTC_REGISTRATION_STATE* penState) get_State;
			public function HRESULT(IRTCRegistrationStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCRegistrationStateChangeEvent *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0xb5bad703, 0x5952, 0x48b3, 0x93, 0x21, 0x7f, 0x45, 0x00, 0x52, 0x15, 0x06);
			
			public function HRESULT(IRTCSessionStateChangeEvent *self, IRTCSession** ppSession) get_Session;
			public function HRESULT(IRTCSessionStateChangeEvent *self, RTC_SESSION_STATE* penState) get_State;
			public function HRESULT(IRTCSessionStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCSessionStateChangeEvent *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent2 : IRTCSessionStateChangeEvent
		{
			public const new Guid IID = .(0x4f933171, 0x6f95, 0x4880, 0x80, 0xd9, 0x2e, 0xc8, 0xd4, 0x95, 0xd2, 0x61);
			
			public function HRESULT(IRTCSessionStateChangeEvent2 *self, int32* pMediaTypes) get_MediaTypes;
			public function HRESULT(IRTCSessionStateChangeEvent2 *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_RemotePreferredSecurityLevel;
			public function HRESULT(IRTCSessionStateChangeEvent2 *self, int16* pfIsForked) get_IsForked;
			public function HRESULT(IRTCSessionStateChangeEvent2 *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent : IDispatch
		{
			public const new Guid IID = .(0xa6bff4c0, 0xf7c8, 0x4d3c, 0x9a, 0x41, 0x35, 0x50, 0xf7, 0x8a, 0x95, 0xb0);
			
			public function HRESULT(IRTCSessionOperationCompleteEvent *self, IRTCSession** ppSession) get_Session;
			public function HRESULT(IRTCSessionOperationCompleteEvent *self, int* plCookie) get_Cookie;
			public function HRESULT(IRTCSessionOperationCompleteEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCSessionOperationCompleteEvent *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent2 : IRTCSessionOperationCompleteEvent
		{
			public const new Guid IID = .(0xf6fc2a9b, 0xd5bc, 0x4241, 0xb4, 0x36, 0x1b, 0x84, 0x60, 0xc1, 0x38, 0x32);
			
			public function HRESULT(IRTCSessionOperationCompleteEvent2 *self, IRTCParticipant** ppParticipant) get_Participant;
			public function HRESULT(IRTCSessionOperationCompleteEvent2 *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
		}
		[CRepr]
		public struct IRTCParticipantStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x09bcb597, 0xf0fa, 0x48f9, 0xb4, 0x20, 0x46, 0x8c, 0xea, 0x7f, 0xde, 0x04);
			
			public function HRESULT(IRTCParticipantStateChangeEvent *self, IRTCParticipant** ppParticipant) get_Participant;
			public function HRESULT(IRTCParticipantStateChangeEvent *self, RTC_PARTICIPANT_STATE* penState) get_State;
			public function HRESULT(IRTCParticipantStateChangeEvent *self, int32* plStatusCode) get_StatusCode;
		}
		[CRepr]
		public struct IRTCMediaEvent : IDispatch
		{
			public const new Guid IID = .(0x099944fb, 0xbcda, 0x453e, 0x8c, 0x41, 0xe1, 0x3d, 0xa2, 0xad, 0xf7, 0xf3);
			
			public function HRESULT(IRTCMediaEvent *self, int32* pMediaType) get_MediaType;
			public function HRESULT(IRTCMediaEvent *self, RTC_MEDIA_EVENT_TYPE* penEventType) get_EventType;
			public function HRESULT(IRTCMediaEvent *self, RTC_MEDIA_EVENT_REASON* penEventReason) get_EventReason;
		}
		[CRepr]
		public struct IRTCIntensityEvent : IDispatch
		{
			public const new Guid IID = .(0x4c23bf51, 0x390c, 0x4992, 0xa4, 0x1d, 0x41, 0xee, 0xc0, 0x5b, 0x2a, 0x4b);
			
			public function HRESULT(IRTCIntensityEvent *self, int32* plLevel) get_Level;
			public function HRESULT(IRTCIntensityEvent *self, int32* plMin) get_Min;
			public function HRESULT(IRTCIntensityEvent *self, int32* plMax) get_Max;
			public function HRESULT(IRTCIntensityEvent *self, RTC_AUDIO_DEVICE* penDirection) get_Direction;
		}
		[CRepr]
		public struct IRTCMessagingEvent : IDispatch
		{
			public const new Guid IID = .(0xd3609541, 0x1b29, 0x4de5, 0xa4, 0xad, 0x5a, 0xeb, 0xaf, 0x31, 0x95, 0x12);
			
			public function HRESULT(IRTCMessagingEvent *self, IRTCSession** ppSession) get_Session;
			public function HRESULT(IRTCMessagingEvent *self, IRTCParticipant** ppParticipant) get_Participant;
			public function HRESULT(IRTCMessagingEvent *self, RTC_MESSAGING_EVENT_TYPE* penEventType) get_EventType;
			public function HRESULT(IRTCMessagingEvent *self, BSTR* pbstrMessage) get_Message;
			public function HRESULT(IRTCMessagingEvent *self, BSTR* pbstrMessageHeader) get_MessageHeader;
			public function HRESULT(IRTCMessagingEvent *self, RTC_MESSAGING_USER_STATUS* penUserStatus) get_UserStatus;
		}
		[CRepr]
		public struct IRTCBuddyEvent : IDispatch
		{
			public const new Guid IID = .(0xf36d755d, 0x17e6, 0x404e, 0x95, 0x4f, 0x0f, 0xc0, 0x75, 0x74, 0xc7, 0x8d);
			
			public function HRESULT(IRTCBuddyEvent *self, IRTCBuddy** ppBuddy) get_Buddy;
		}
		[CRepr]
		public struct IRTCBuddyEvent2 : IRTCBuddyEvent
		{
			public const new Guid IID = .(0x484a7f1e, 0x73f0, 0x4990, 0xbf, 0xc2, 0x60, 0xbc, 0x39, 0x78, 0xa7, 0x20);
			
			public function HRESULT(IRTCBuddyEvent2 *self, RTC_BUDDY_EVENT_TYPE* pEventType) get_EventType;
			public function HRESULT(IRTCBuddyEvent2 *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCBuddyEvent2 *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCWatcherEvent : IDispatch
		{
			public const new Guid IID = .(0xf30d7261, 0x587a, 0x424f, 0x82, 0x2c, 0x31, 0x27, 0x88, 0xf4, 0x35, 0x48);
			
			public function HRESULT(IRTCWatcherEvent *self, IRTCWatcher** ppWatcher) get_Watcher;
		}
		[CRepr]
		public struct IRTCWatcherEvent2 : IRTCWatcherEvent
		{
			public const new Guid IID = .(0xe52891e8, 0x188c, 0x49af, 0xb0, 0x05, 0x98, 0xed, 0x13, 0xf8, 0x3f, 0x9c);
			
			public function HRESULT(IRTCWatcherEvent2 *self, RTC_WATCHER_EVENT_TYPE* pEventType) get_EventType;
			public function HRESULT(IRTCWatcherEvent2 *self, int32* plStatusCode) get_StatusCode;
		}
		[CRepr]
		public struct IRTCBuddyGroupEvent : IDispatch
		{
			public const new Guid IID = .(0x3a79e1d1, 0xb736, 0x4414, 0x96, 0xf8, 0xbb, 0xc7, 0xf0, 0x88, 0x63, 0xe4);
			
			public function HRESULT(IRTCBuddyGroupEvent *self, RTC_GROUP_EVENT_TYPE* pEventType) get_EventType;
			public function HRESULT(IRTCBuddyGroupEvent *self, IRTCBuddyGroup** ppGroup) get_Group;
			public function HRESULT(IRTCBuddyGroupEvent *self, IRTCBuddy2** ppBuddy) get_Buddy;
			public function HRESULT(IRTCBuddyGroupEvent *self, int32* plStatusCode) get_StatusCode;
		}
		[CRepr]
		public struct IRTCInfoEvent : IDispatch
		{
			public const new Guid IID = .(0x4e1d68ae, 0x1912, 0x4f49, 0xb2, 0xc3, 0x59, 0x4f, 0xad, 0xfd, 0x42, 0x5f);
			
			public function HRESULT(IRTCInfoEvent *self, IRTCSession2** ppSession) get_Session;
			public function HRESULT(IRTCInfoEvent *self, IRTCParticipant** ppParticipant) get_Participant;
			public function HRESULT(IRTCInfoEvent *self, BSTR* pbstrInfo) get_Info;
			public function HRESULT(IRTCInfoEvent *self, BSTR* pbstrInfoHeader) get_InfoHeader;
		}
		[CRepr]
		public struct IRTCMediaRequestEvent : IDispatch
		{
			public const new Guid IID = .(0x52572d15, 0x148c, 0x4d97, 0xa3, 0x6c, 0x2d, 0xa5, 0x5c, 0x28, 0x9d, 0x63);
			
			public function HRESULT(IRTCMediaRequestEvent *self, IRTCSession2** ppSession) get_Session;
			public function HRESULT(IRTCMediaRequestEvent *self, int32* plMediaTypes) get_ProposedMedia;
			public function HRESULT(IRTCMediaRequestEvent *self, int32* plMediaTypes) get_CurrentMedia;
			public function HRESULT(IRTCMediaRequestEvent *self, int32 lMediaTypes) Accept;
			public function HRESULT(IRTCMediaRequestEvent *self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL* penSecurityLevel) get_RemotePreferredSecurityLevel;
			public function HRESULT(IRTCMediaRequestEvent *self) Reject;
			public function HRESULT(IRTCMediaRequestEvent *self, RTC_REINVITE_STATE* pState) get_State;
		}
		[CRepr]
		public struct IRTCReInviteEvent : IDispatch
		{
			public const new Guid IID = .(0x11558d84, 0x204c, 0x43e7, 0x99, 0xb0, 0x20, 0x34, 0xe9, 0x41, 0x7f, 0x7d);
			
			public function HRESULT(IRTCReInviteEvent *self, IRTCSession2** ppSession2) get_Session;
			public function HRESULT(IRTCReInviteEvent *self, BSTR bstrContentType, BSTR bstrSessionDescription) Accept;
			public function HRESULT(IRTCReInviteEvent *self) Reject;
			public function HRESULT(IRTCReInviteEvent *self, RTC_REINVITE_STATE* pState) get_State;
			public function HRESULT(IRTCReInviteEvent *self, BSTR* pbstrContentType, BSTR* pbstrSessionDescription) GetRemoteSessionDescription;
		}
		[CRepr]
		public struct IRTCPresencePropertyEvent : IDispatch
		{
			public const new Guid IID = .(0xf777f570, 0xa820, 0x49d5, 0x86, 0xbd, 0xe0, 0x99, 0x49, 0x3f, 0x15, 0x18);
			
			public function HRESULT(IRTCPresencePropertyEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCPresencePropertyEvent *self, BSTR* pbstrStatusText) get_StatusText;
			public function HRESULT(IRTCPresencePropertyEvent *self, RTC_PRESENCE_PROPERTY* penPresProp) get_PresenceProperty;
			public function HRESULT(IRTCPresencePropertyEvent *self, BSTR* pbstrValue) get_Value;
		}
		[CRepr]
		public struct IRTCPresenceDataEvent : IDispatch
		{
			public const new Guid IID = .(0x38f0e78c, 0x8b87, 0x4c04, 0xa8, 0x2d, 0xae, 0xdd, 0x83, 0xc9, 0x09, 0xbb);
			
			public function HRESULT(IRTCPresenceDataEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCPresenceDataEvent *self, BSTR* pbstrStatusText) get_StatusText;
			public function HRESULT(IRTCPresenceDataEvent *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
		}
		[CRepr]
		public struct IRTCPresenceStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x78673f32, 0x4a0f, 0x462c, 0x89, 0xaa, 0xee, 0x77, 0x06, 0x70, 0x76, 0x78);
			
			public function HRESULT(IRTCPresenceStatusEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCPresenceStatusEvent *self, BSTR* pbstrStatusText) get_StatusText;
			public function HRESULT(IRTCPresenceStatusEvent *self, RTC_PRESENCE_STATUS* penStatus, BSTR* pbstrNotes) GetLocalPresenceInfo;
		}
		[CRepr]
		public struct IRTCCollection : IDispatch
		{
			public const new Guid IID = .(0xec7c8096, 0xb918, 0x4044, 0x94, 0xf1, 0xe4, 0xfb, 0xa0, 0x36, 0x1d, 0x5c);
			
			public function HRESULT(IRTCCollection *self, int32* lCount) get_Count;
			public function HRESULT(IRTCCollection *self, int32 Index, VARIANT* pVariant) get_Item;
			public function HRESULT(IRTCCollection *self, IUnknown** ppNewEnum) get__NewEnum;
		}
		[CRepr]
		public struct IRTCEnumParticipants : IUnknown
		{
			public const new Guid IID = .(0xfcd56f29, 0x4a4f, 0x41b2, 0xba, 0x5c, 0xf5, 0xbc, 0xcc, 0x06, 0x0b, 0xf6);
			
			public function HRESULT(IRTCEnumParticipants *self, uint32 celt, IRTCParticipant** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumParticipants *self) Reset;
			public function HRESULT(IRTCEnumParticipants *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumParticipants *self, IRTCEnumParticipants** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCEnumProfiles : IUnknown
		{
			public const new Guid IID = .(0x29b7c41c, 0xed82, 0x4bca, 0x84, 0xad, 0x39, 0xd5, 0x10, 0x1b, 0x58, 0xe3);
			
			public function HRESULT(IRTCEnumProfiles *self, uint32 celt, IRTCProfile** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumProfiles *self) Reset;
			public function HRESULT(IRTCEnumProfiles *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumProfiles *self, IRTCEnumProfiles** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCEnumBuddies : IUnknown
		{
			public const new Guid IID = .(0xf7296917, 0x5569, 0x4b3b, 0xb3, 0xaf, 0x98, 0xd1, 0x14, 0x4b, 0x2b, 0x87);
			
			public function HRESULT(IRTCEnumBuddies *self, uint32 celt, IRTCBuddy** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumBuddies *self) Reset;
			public function HRESULT(IRTCEnumBuddies *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumBuddies *self, IRTCEnumBuddies** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCEnumWatchers : IUnknown
		{
			public const new Guid IID = .(0xa87d55d7, 0xdb74, 0x4ed1, 0x9c, 0xa4, 0x77, 0xa0, 0xe4, 0x1b, 0x41, 0x3e);
			
			public function HRESULT(IRTCEnumWatchers *self, uint32 celt, IRTCWatcher** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumWatchers *self) Reset;
			public function HRESULT(IRTCEnumWatchers *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumWatchers *self, IRTCEnumWatchers** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCEnumGroups : IUnknown
		{
			public const new Guid IID = .(0x742378d6, 0xa141, 0x4415, 0x8f, 0x27, 0x35, 0xd9, 0x90, 0x76, 0xcf, 0x5d);
			
			public function HRESULT(IRTCEnumGroups *self, uint32 celt, IRTCBuddyGroup** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumGroups *self) Reset;
			public function HRESULT(IRTCEnumGroups *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumGroups *self, IRTCEnumGroups** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCPresenceContact : IUnknown
		{
			public const new Guid IID = .(0x8b22f92c, 0xcd90, 0x42db, 0xa7, 0x33, 0x21, 0x22, 0x05, 0xc3, 0xe3, 0xdf);
			
			public function HRESULT(IRTCPresenceContact *self, BSTR* pbstrPresentityURI) get_PresentityURI;
			public function HRESULT(IRTCPresenceContact *self, BSTR bstrPresentityURI) put_PresentityURI;
			public function HRESULT(IRTCPresenceContact *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IRTCPresenceContact *self, BSTR bstrName) put_Name;
			public function HRESULT(IRTCPresenceContact *self, BSTR* pbstrData) get_Data;
			public function HRESULT(IRTCPresenceContact *self, BSTR bstrData) put_Data;
			public function HRESULT(IRTCPresenceContact *self, int16* pfPersistent) get_Persistent;
			public function HRESULT(IRTCPresenceContact *self, int16 fPersistent) put_Persistent;
		}
		[CRepr]
		public struct IRTCBuddy : IRTCPresenceContact
		{
			public const new Guid IID = .(0xfcb136c8, 0x7b90, 0x4e0c, 0xbe, 0xfe, 0x56, 0xed, 0xf0, 0xba, 0x6f, 0x1c);
			
			public function HRESULT(IRTCBuddy *self, RTC_PRESENCE_STATUS* penStatus) get_Status;
			public function HRESULT(IRTCBuddy *self, BSTR* pbstrNotes) get_Notes;
		}
		[CRepr]
		public struct IRTCBuddy2 : IRTCBuddy
		{
			public const new Guid IID = .(0x102f9588, 0x23e7, 0x40e3, 0x95, 0x4d, 0xcd, 0x7a, 0x1d, 0x5c, 0x03, 0x61);
			
			public function HRESULT(IRTCBuddy2 *self, IRTCProfile2** ppProfile) get_Profile;
			public function HRESULT(IRTCBuddy2 *self) Refresh;
			public function HRESULT(IRTCBuddy2 *self, IRTCEnumGroups** ppEnum) EnumerateGroups;
			public function HRESULT(IRTCBuddy2 *self, IRTCCollection** ppCollection) get_Groups;
			public function HRESULT(IRTCBuddy2 *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
			public function HRESULT(IRTCBuddy2 *self, IRTCEnumPresenceDevices** ppEnumDevices) EnumeratePresenceDevices;
			public function HRESULT(IRTCBuddy2 *self, IRTCCollection** ppDevicesCollection) get_PresenceDevices;
			public function HRESULT(IRTCBuddy2 *self, RTC_BUDDY_SUBSCRIPTION_TYPE* penSubscriptionType) get_SubscriptionType;
		}
		[CRepr]
		public struct IRTCWatcher : IRTCPresenceContact
		{
			public const new Guid IID = .(0xc7cedad8, 0x346b, 0x4d1b, 0xac, 0x02, 0xa2, 0x08, 0x8d, 0xf9, 0xbe, 0x4f);
			
			public function HRESULT(IRTCWatcher *self, RTC_WATCHER_STATE* penState) get_State;
			public function HRESULT(IRTCWatcher *self, RTC_WATCHER_STATE enState) put_State;
		}
		[CRepr]
		public struct IRTCWatcher2 : IRTCWatcher
		{
			public const new Guid IID = .(0xd4d9967f, 0xd011, 0x4b1d, 0x91, 0xe3, 0xab, 0xa7, 0x8f, 0x96, 0x39, 0x3d);
			
			public function HRESULT(IRTCWatcher2 *self, IRTCProfile2** ppProfile) get_Profile;
			public function HRESULT(IRTCWatcher2 *self, RTC_ACE_SCOPE* penScope) get_Scope;
		}
		[CRepr]
		public struct IRTCBuddyGroup : IUnknown
		{
			public const new Guid IID = .(0x60361e68, 0x9164, 0x4389, 0xa4, 0xc6, 0xd0, 0xb3, 0x92, 0x5b, 0xda, 0x5e);
			
			public function HRESULT(IRTCBuddyGroup *self, BSTR* pbstrGroupName) get_Name;
			public function HRESULT(IRTCBuddyGroup *self, BSTR bstrGroupName) put_Name;
			public function HRESULT(IRTCBuddyGroup *self, IRTCBuddy* pBuddy) AddBuddy;
			public function HRESULT(IRTCBuddyGroup *self, IRTCBuddy* pBuddy) RemoveBuddy;
			public function HRESULT(IRTCBuddyGroup *self, IRTCEnumBuddies** ppEnum) EnumerateBuddies;
			public function HRESULT(IRTCBuddyGroup *self, IRTCCollection** ppCollection) get_Buddies;
			public function HRESULT(IRTCBuddyGroup *self, BSTR* pbstrData) get_Data;
			public function HRESULT(IRTCBuddyGroup *self, BSTR bstrData) put_Data;
			public function HRESULT(IRTCBuddyGroup *self, IRTCProfile2** ppProfile) get_Profile;
		}
		[CRepr]
		public struct IRTCEventNotification : IUnknown
		{
			public const new Guid IID = .(0x13fa24c7, 0x5748, 0x4b21, 0x91, 0xf5, 0x73, 0x97, 0x60, 0x9c, 0xe7, 0x47);
			
			public function HRESULT(IRTCEventNotification *self, RTC_EVENT RTCEvent, IDispatch* pEvent) Event;
		}
		[CRepr]
		public struct IRTCPortManager : IUnknown
		{
			public const new Guid IID = .(0xda77c14b, 0x6208, 0x43ca, 0x8d, 0xdf, 0x5b, 0x60, 0xa0, 0xa6, 0x9f, 0xac);
			
			public function HRESULT(IRTCPortManager *self, BSTR bstrRemoteAddress, RTC_PORT_TYPE enPortType, BSTR* pbstrInternalLocalAddress, int32* plInternalLocalPort, BSTR* pbstrExternalLocalAddress, int32* plExternalLocalPort) GetMapping;
			public function HRESULT(IRTCPortManager *self, BSTR bstrRemoteAddress, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalPort) UpdateRemoteAddress;
			public function HRESULT(IRTCPortManager *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalAddress) ReleaseMapping;
		}
		[CRepr]
		public struct IRTCSessionPortManagement : IUnknown
		{
			public const new Guid IID = .(0xa072f1d6, 0x0286, 0x4e1f, 0x85, 0xf2, 0x17, 0xa2, 0x94, 0x84, 0x56, 0xec);
			
			public function HRESULT(IRTCSessionPortManagement *self, IRTCPortManager* pPortManager) SetPortManager;
		}
		[CRepr]
		public struct IRTCClientPortManagement : IUnknown
		{
			public const new Guid IID = .(0xd5df3f03, 0x4bde, 0x4417, 0xae, 0xfe, 0x71, 0x17, 0x7b, 0xda, 0xea, 0x66);
			
			public function HRESULT(IRTCClientPortManagement *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StartListenAddressAndPort;
			public function HRESULT(IRTCClientPortManagement *self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StopListenAddressAndPort;
			public function HRESULT(IRTCClientPortManagement *self, RTC_PORT_TYPE enPortType, int32* plMinValue, int32* plMaxValue) GetPortRange;
		}
		[CRepr]
		public struct IRTCUserSearch : IUnknown
		{
			public const new Guid IID = .(0xb619882b, 0x860c, 0x4db4, 0xbe, 0x1b, 0x69, 0x3b, 0x65, 0x05, 0xbb, 0xe5);
			
			public function HRESULT(IRTCUserSearch *self, IRTCUserSearchQuery** ppQuery) CreateQuery;
			public function HRESULT(IRTCUserSearch *self, IRTCUserSearchQuery* pQuery, IRTCProfile* pProfile, int lCookie) ExecuteSearch;
		}
		[CRepr]
		public struct IRTCUserSearchQuery : IUnknown
		{
			public const new Guid IID = .(0x288300f5, 0xd23a, 0x4365, 0x9a, 0x73, 0x99, 0x85, 0xc9, 0x8c, 0x28, 0x81);
			
			public function HRESULT(IRTCUserSearchQuery *self, BSTR bstrName, BSTR bstrValue) put_SearchTerm;
			public function HRESULT(IRTCUserSearchQuery *self, BSTR bstrName, BSTR* pbstrValue) get_SearchTerm;
			public function HRESULT(IRTCUserSearchQuery *self, BSTR* pbstrNames) get_SearchTerms;
			public function HRESULT(IRTCUserSearchQuery *self, RTC_USER_SEARCH_PREFERENCE enPreference, int32 lValue) put_SearchPreference;
			public function HRESULT(IRTCUserSearchQuery *self, RTC_USER_SEARCH_PREFERENCE enPreference, int32* plValue) get_SearchPreference;
			public function HRESULT(IRTCUserSearchQuery *self, BSTR bstrDomain) put_SearchDomain;
			public function HRESULT(IRTCUserSearchQuery *self, BSTR* pbstrDomain) get_SearchDomain;
		}
		[CRepr]
		public struct IRTCUserSearchResult : IUnknown
		{
			public const new Guid IID = .(0x851278b2, 0x9592, 0x480f, 0x8d, 0xb5, 0x2d, 0xe8, 0x6b, 0x26, 0xb5, 0x4d);
			
			public function HRESULT(IRTCUserSearchResult *self, RTC_USER_SEARCH_COLUMN enColumn, BSTR* pbstrValue) get_Value;
		}
		[CRepr]
		public struct IRTCEnumUserSearchResults : IUnknown
		{
			public const new Guid IID = .(0x83d4d877, 0xaa5d, 0x4a5b, 0x8d, 0x0e, 0x00, 0x2a, 0x80, 0x67, 0xe0, 0xe8);
			
			public function HRESULT(IRTCEnumUserSearchResults *self, uint32 celt, IRTCUserSearchResult** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumUserSearchResults *self) Reset;
			public function HRESULT(IRTCEnumUserSearchResults *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumUserSearchResults *self, IRTCEnumUserSearchResults** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCUserSearchResultsEvent : IDispatch
		{
			public const new Guid IID = .(0xd8c8c3cd, 0x7fac, 0x4088, 0x81, 0xc5, 0xc2, 0x4c, 0xbc, 0x09, 0x38, 0xe3);
			
			public function HRESULT(IRTCUserSearchResultsEvent *self, IRTCEnumUserSearchResults** ppEnum) EnumerateResults;
			public function HRESULT(IRTCUserSearchResultsEvent *self, IRTCCollection** ppCollection) get_Results;
			public function HRESULT(IRTCUserSearchResultsEvent *self, IRTCProfile2** ppProfile) get_Profile;
			public function HRESULT(IRTCUserSearchResultsEvent *self, IRTCUserSearchQuery** ppQuery) get_Query;
			public function HRESULT(IRTCUserSearchResultsEvent *self, int* plCookie) get_Cookie;
			public function HRESULT(IRTCUserSearchResultsEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCUserSearchResultsEvent *self, int16* pfMoreAvailable) get_MoreAvailable;
		}
		[CRepr]
		public struct IRTCSessionReferStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x3d8fc2cd, 0x5d76, 0x44ab, 0xbb, 0x68, 0x2a, 0x80, 0x35, 0x3b, 0x34, 0xa2);
			
			public function HRESULT(IRTCSessionReferStatusEvent *self, IRTCSession2** ppSession) get_Session;
			public function HRESULT(IRTCSessionReferStatusEvent *self, RTC_SESSION_REFER_STATUS* penReferStatus) get_ReferStatus;
			public function HRESULT(IRTCSessionReferStatusEvent *self, int32* plStatusCode) get_StatusCode;
			public function HRESULT(IRTCSessionReferStatusEvent *self, BSTR* pbstrStatusText) get_StatusText;
		}
		[CRepr]
		public struct IRTCSessionReferredEvent : IDispatch
		{
			public const new Guid IID = .(0x176a6828, 0x4fcc, 0x4f28, 0xa8, 0x62, 0x04, 0x59, 0x7a, 0x6c, 0xf1, 0xc4);
			
			public function HRESULT(IRTCSessionReferredEvent *self, IRTCSession2** ppSession) get_Session;
			public function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferredByURI) get_ReferredByURI;
			public function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferoURI) get_ReferToURI;
			public function HRESULT(IRTCSessionReferredEvent *self, BSTR* pbstrReferCookie) get_ReferCookie;
			public function HRESULT(IRTCSessionReferredEvent *self) Accept;
			public function HRESULT(IRTCSessionReferredEvent *self) Reject;
			public function HRESULT(IRTCSessionReferredEvent *self, RTC_SESSION_STATE enState) SetReferredSessionState;
		}
		[CRepr]
		public struct IRTCSessionDescriptionManager : IUnknown
		{
			public const new Guid IID = .(0xba7f518e, 0xd336, 0x4070, 0x93, 0xa6, 0x86, 0x53, 0x95, 0xc8, 0x43, 0xf9);
			
			public function HRESULT(IRTCSessionDescriptionManager *self, BSTR bstrContentType, BSTR bstrSessionDescription, int16* pfApplicationSession) EvaluateSessionDescription;
		}
		[CRepr]
		public struct IRTCEnumPresenceDevices : IUnknown
		{
			public const new Guid IID = .(0x708c2ab7, 0x8bf8, 0x42f8, 0x8c, 0x7d, 0x63, 0x51, 0x97, 0xad, 0x55, 0x39);
			
			public function HRESULT(IRTCEnumPresenceDevices *self, uint32 celt, IRTCPresenceDevice** ppElements, uint32* pceltFetched) Next;
			public function HRESULT(IRTCEnumPresenceDevices *self) Reset;
			public function HRESULT(IRTCEnumPresenceDevices *self, uint32 celt) Skip;
			public function HRESULT(IRTCEnumPresenceDevices *self, IRTCEnumPresenceDevices** ppEnum) Clone;
		}
		[CRepr]
		public struct IRTCPresenceDevice : IUnknown
		{
			public const new Guid IID = .(0xbc6a90dd, 0xad9a, 0x48da, 0x9b, 0x0c, 0x25, 0x15, 0xe3, 0x85, 0x21, 0xad);
			
			public function HRESULT(IRTCPresenceDevice *self, RTC_PRESENCE_STATUS* penStatus) get_Status;
			public function HRESULT(IRTCPresenceDevice *self, BSTR* pbstrNotes) get_Notes;
			public function HRESULT(IRTCPresenceDevice *self, RTC_PRESENCE_PROPERTY enProperty, BSTR* pbstrProperty) get_PresenceProperty;
			public function HRESULT(IRTCPresenceDevice *self, BSTR* pbstrNamespace, BSTR* pbstrData) GetPresenceData;
		}
		[CRepr]
		public struct IRTCDispatchEventNotification : IDispatch
		{
			public const new Guid IID = .(0x176ddfbe, 0xfec0, 0x4d55, 0xbc, 0x87, 0x84, 0xcf, 0xf1, 0xef, 0x7f, 0x91);
			
		}
		[CRepr]
		public struct ITransportSettingsInternal : IUnknown
		{
			public const new Guid IID = .(0x5123e076, 0x29e3, 0x4bfd, 0x84, 0xfe, 0x01, 0x92, 0xd4, 0x11, 0xe3, 0xe8);
			
			public function HRESULT(ITransportSettingsInternal *self, TRANSPORT_SETTING* Setting) ApplySetting;
			public function HRESULT(ITransportSettingsInternal *self, TRANSPORT_SETTING* Setting) QuerySetting;
		}
		[CRepr]
		public struct INetworkTransportSettings : IUnknown
		{
			public const new Guid IID = .(0x5e7abb2c, 0xf2c1, 0x4a61, 0xbd, 0x35, 0xde, 0xb7, 0xa0, 0x8a, 0xb0, 0xf1);
			
			public function HRESULT(INetworkTransportSettings *self, TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) ApplySetting;
			public function HRESULT(INetworkTransportSettings *self, TRANSPORT_SETTING_ID* SettingId, uint32 LengthIn, uint8* ValueIn, uint32* LengthOut, uint8** ValueOut) QuerySetting;
		}
		[CRepr]
		public struct INotificationTransportSync : IUnknown
		{
			public const new Guid IID = .(0x79eb1402, 0x0ab8, 0x49c0, 0x9e, 0x14, 0xa1, 0xae, 0x4b, 0xa9, 0x30, 0x58);
			
			public function HRESULT(INotificationTransportSync *self) CompleteDelivery;
			public function HRESULT(INotificationTransportSync *self) Flush;
		}
		
	}
}
