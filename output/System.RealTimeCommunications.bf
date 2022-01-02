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
		
		public enum RTC_AUDIO_DEVICE : int32
		{
			SPEAKER = 0,
			MICROPHONE = 1,
		}
		public enum RTC_VIDEO_DEVICE : int32
		{
			RECEIVE = 0,
			PREVIEW = 1,
		}
		public enum RTC_EVENT : int32
		{
			CLIENT = 0,
			REGISTRATION_STATE_CHANGE = 1,
			SESSION_STATE_CHANGE = 2,
			SESSION_OPERATION_COMPLETE = 3,
			PARTICIPANT_STATE_CHANGE = 4,
			MEDIA = 5,
			INTENSITY = 6,
			MESSAGING = 7,
			BUDDY = 8,
			WATCHER = 9,
			PROFILE = 10,
			USERSEARCH = 11,
			INFO = 12,
			GROUP = 13,
			MEDIA_REQUEST = 14,
			ROAMING = 15,
			PRESENCE_PROPERTY = 16,
			PRESENCE_DATA = 17,
			PRESENCE_STATUS = 18,
			SESSION_REFER_STATUS = 19,
			SESSION_REFERRED = 20,
			REINVITE = 21,
		}
		public enum RTC_LISTEN_MODE : int32
		{
			NONE = 0,
			DYNAMIC = 1,
			BOTH = 2,
		}
		public enum RTC_CLIENT_EVENT_TYPE : int32
		{
			VOLUME_CHANGE = 0,
			DEVICE_CHANGE = 1,
			NETWORK_QUALITY_CHANGE = 2,
			ASYNC_CLEANUP_DONE = 3,
		}
		public enum RTC_BUDDY_EVENT_TYPE : int32
		{
			ADD = 0,
			REMOVE = 1,
			UPDATE = 2,
			STATE_CHANGE = 3,
			ROAMED = 4,
			SUBSCRIBED = 5,
		}
		public enum RTC_WATCHER_EVENT_TYPE : int32
		{
			ADD = 0,
			REMOVE = 1,
			UPDATE = 2,
			OFFERING = 3,
			ROAMED = 4,
		}
		public enum RTC_GROUP_EVENT_TYPE : int32
		{
			ADD = 0,
			REMOVE = 1,
			UPDATE = 2,
			BUDDY_ADD = 3,
			BUDDY_REMOVE = 4,
			ROAMED = 5,
		}
		public enum RTC_TERMINATE_REASON : int32
		{
			NORMAL = 0,
			DND = 1,
			BUSY = 2,
			REJECT = 3,
			TIMEOUT = 4,
			SHUTDOWN = 5,
			INSUFFICIENT_SECURITY_LEVEL = 6,
			NOT_SUPPORTED = 7,
		}
		public enum RTC_REGISTRATION_STATE : int32
		{
			NOT_REGISTERED = 0,
			REGISTERING = 1,
			REGISTERED = 2,
			REJECTED = 3,
			UNREGISTERING = 4,
			ERROR = 5,
			LOGGED_OFF = 6,
			LOCAL_PA_LOGGED_OFF = 7,
			REMOTE_PA_LOGGED_OFF = 8,
		}
		public enum RTC_SESSION_STATE : int32
		{
			IDLE = 0,
			INCOMING = 1,
			ANSWERING = 2,
			INPROGRESS = 3,
			CONNECTED = 4,
			DISCONNECTED = 5,
			HOLD = 6,
			REFER = 7,
		}
		public enum RTC_PARTICIPANT_STATE : int32
		{
			IDLE = 0,
			PENDING = 1,
			INCOMING = 2,
			ANSWERING = 3,
			INPROGRESS = 4,
			ALERTING = 5,
			CONNECTED = 6,
			DISCONNECTING = 7,
			DISCONNECTED = 8,
		}
		public enum RTC_WATCHER_STATE : int32
		{
			UNKNOWN = 0,
			OFFERING = 1,
			ALLOWED = 2,
			BLOCKED = 3,
			DENIED = 4,
			PROMPT = 5,
		}
		public enum RTC_ACE_SCOPE : int32
		{
			USER = 0,
			DOMAIN = 1,
			ALL = 2,
		}
		public enum RTC_OFFER_WATCHER_MODE : int32
		{
			OFFER_WATCHER_EVENT = 0,
			AUTOMATICALLY_ADD_WATCHER = 1,
		}
		public enum RTC_WATCHER_MATCH_MODE : int32
		{
			EXACT_MATCH = 0,
			BEST_ACE_MATCH = 1,
		}
		public enum RTC_PRIVACY_MODE : int32
		{
			BLOCK_LIST_EXCLUDED = 0,
			ALLOW_LIST_ONLY = 1,
		}
		public enum RTC_SESSION_TYPE : int32
		{
			PC_TO_PC = 0,
			PC_TO_PHONE = 1,
			PHONE_TO_PHONE = 2,
			IM = 3,
			MULTIPARTY_IM = 4,
			APPLICATION = 5,
		}
		public enum RTC_PRESENCE_STATUS : int32
		{
			OFFLINE = 0,
			ONLINE = 1,
			AWAY = 2,
			IDLE = 3,
			BUSY = 4,
			BE_RIGHT_BACK = 5,
			ON_THE_PHONE = 6,
			OUT_TO_LUNCH = 7,
		}
		public enum RTC_BUDDY_SUBSCRIPTION_TYPE : int32
		{
			SUBSCRIBED = 0,
			ALWAYS_OFFLINE = 1,
			ALWAYS_ONLINE = 2,
			POLL = 3,
		}
		public enum RTC_MEDIA_EVENT_TYPE : int32
		{
			STOPPED = 0,
			STARTED = 1,
			FAILED = 2,
		}
		public enum RTC_MEDIA_EVENT_REASON : int32
		{
			NORMAL = 0,
			HOLD = 1,
			TIMEOUT = 2,
			BAD_DEVICE = 3,
			NO_PORT = 4,
			PORT_MAPPING_FAILED = 5,
			REMOTE_REQUEST = 6,
		}
		public enum RTC_MESSAGING_EVENT_TYPE : int32
		{
			MESSAGE = 0,
			STATUS = 1,
		}
		public enum RTC_MESSAGING_USER_STATUS : int32
		{
			IDLE = 0,
			TYPING = 1,
		}
		public enum RTC_DTMF : int32
		{
			_0 = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
			_4 = 4,
			_5 = 5,
			_6 = 6,
			_7 = 7,
			_8 = 8,
			_9 = 9,
			STAR = 10,
			POUND = 11,
			A = 12,
			B = 13,
			C = 14,
			D = 15,
			FLASH = 16,
		}
		public enum RTC_PROVIDER_URI : int32
		{
			URIHOMEPAGE = 0,
			URIHELPDESK = 1,
			URIPERSONALACCOUNT = 2,
			URIDISPLAYDURINGCALL = 3,
			URIDISPLAYDURINGIDLE = 4,
		}
		public enum RTC_RING_TYPE : int32
		{
			PHONE = 0,
			MESSAGE = 1,
			RINGBACK = 2,
		}
		public enum RTC_T120_APPLET : int32
		{
			WHITEBOARD = 0,
			APPSHARING = 1,
		}
		public enum RTC_PORT_TYPE : int32
		{
			AUDIO_RTP = 0,
			AUDIO_RTCP = 1,
			VIDEO_RTP = 2,
			VIDEO_RTCP = 3,
			SIP = 4,
		}
		public enum RTC_USER_SEARCH_COLUMN : int32
		{
			URI = 0,
			DISPLAYNAME = 1,
			TITLE = 2,
			OFFICE = 3,
			PHONE = 4,
			COMPANY = 5,
			CITY = 6,
			STATE = 7,
			COUNTRY = 8,
			EMAIL = 9,
		}
		public enum RTC_USER_SEARCH_PREFERENCE : int32
		{
			MAX_MATCHES = 0,
			TIME_LIMIT = 1,
		}
		public enum RTC_ROAMING_EVENT_TYPE : int32
		{
			BUDDY_ROAMING = 0,
			WATCHER_ROAMING = 1,
			PRESENCE_ROAMING = 2,
			PROFILE_ROAMING = 3,
			WPENDING_ROAMING = 4,
		}
		public enum RTC_PROFILE_EVENT_TYPE : int32
		{
			GET = 0,
			UPDATE = 1,
		}
		public enum RTC_ANSWER_MODE : int32
		{
			OFFER_SESSION_EVENT = 0,
			AUTOMATICALLY_ACCEPT = 1,
			AUTOMATICALLY_REJECT = 2,
			NOT_SUPPORTED = 3,
		}
		public enum RTC_SESSION_REFER_STATUS : int32
		{
			REFERRING = 0,
			ACCEPTED = 1,
			ERROR = 2,
			REJECTED = 3,
			DROPPED = 4,
			DONE = 5,
		}
		public enum RTC_PRESENCE_PROPERTY : int32
		{
			PHONENUMBER = 0,
			DISPLAYNAME = 1,
			EMAIL = 2,
			DEVICE_NAME = 3,
			MULTIPLE = 4,
		}
		public enum RTC_SECURITY_TYPE : int32
		{
			AUDIO_VIDEO_MEDIA_ENCRYPTION = 0,
			T120_MEDIA_ENCRYPTION = 1,
		}
		public enum RTC_SECURITY_LEVEL : int32
		{
			UNSUPPORTED = 1,
			SUPPORTED = 2,
			REQUIRED = 3,
		}
		public enum RTC_REINVITE_STATE : int32
		{
			INCOMING = 0,
			SUCCEEDED = 1,
			FAIL = 2,
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
			
			public HRESULT Initialize() mut => VT.Initialize(ref this);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT PrepareForShutdown() mut => VT.PrepareForShutdown(ref this);
			public HRESULT put_EventFilter(int32 lFilter) mut => VT.put_EventFilter(ref this, lFilter);
			public HRESULT get_EventFilter(out int32 plFilter) mut => VT.get_EventFilter(ref this, out plFilter);
			public HRESULT SetPreferredMediaTypes(int32 lMediaTypes, int16 fPersistent) mut => VT.SetPreferredMediaTypes(ref this, lMediaTypes, fPersistent);
			public HRESULT get_PreferredMediaTypes(out int32 plMediaTypes) mut => VT.get_PreferredMediaTypes(ref this, out plMediaTypes);
			public HRESULT get_MediaCapabilities(out int32 plMediaTypes) mut => VT.get_MediaCapabilities(ref this, out plMediaTypes);
			public HRESULT CreateSession(RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, ref IRTCProfile pProfile, int32 lFlags, out IRTCSession* ppSession) mut => VT.CreateSession(ref this, enType, bstrLocalPhoneURI, ref pProfile, lFlags, out ppSession);
			public HRESULT put_ListenForIncomingSessions(RTC_LISTEN_MODE enListen) mut => VT.put_ListenForIncomingSessions(ref this, enListen);
			public HRESULT get_ListenForIncomingSessions(out RTC_LISTEN_MODE penListen) mut => VT.get_ListenForIncomingSessions(ref this, out penListen);
			public HRESULT get_NetworkAddresses(int16 fTCP, int16 fExternal, out VARIANT pvAddresses) mut => VT.get_NetworkAddresses(ref this, fTCP, fExternal, out pvAddresses);
			public HRESULT put_Volume(RTC_AUDIO_DEVICE enDevice, int32 lVolume) mut => VT.put_Volume(ref this, enDevice, lVolume);
			public HRESULT get_Volume(RTC_AUDIO_DEVICE enDevice, out int32 plVolume) mut => VT.get_Volume(ref this, enDevice, out plVolume);
			public HRESULT put_AudioMuted(RTC_AUDIO_DEVICE enDevice, int16 fMuted) mut => VT.put_AudioMuted(ref this, enDevice, fMuted);
			public HRESULT get_AudioMuted(RTC_AUDIO_DEVICE enDevice, out int16 pfMuted) mut => VT.get_AudioMuted(ref this, enDevice, out pfMuted);
			public HRESULT get_IVideoWindow(RTC_VIDEO_DEVICE enDevice, out IVideoWindow* ppIVideoWindow) mut => VT.get_IVideoWindow(ref this, enDevice, out ppIVideoWindow);
			public HRESULT put_PreferredAudioDevice(RTC_AUDIO_DEVICE enDevice, BSTR bstrDeviceName) mut => VT.put_PreferredAudioDevice(ref this, enDevice, bstrDeviceName);
			public HRESULT get_PreferredAudioDevice(RTC_AUDIO_DEVICE enDevice, out BSTR pbstrDeviceName) mut => VT.get_PreferredAudioDevice(ref this, enDevice, out pbstrDeviceName);
			public HRESULT put_PreferredVolume(RTC_AUDIO_DEVICE enDevice, int32 lVolume) mut => VT.put_PreferredVolume(ref this, enDevice, lVolume);
			public HRESULT get_PreferredVolume(RTC_AUDIO_DEVICE enDevice, out int32 plVolume) mut => VT.get_PreferredVolume(ref this, enDevice, out plVolume);
			public HRESULT put_PreferredAEC(int16 bEnable) mut => VT.put_PreferredAEC(ref this, bEnable);
			public HRESULT get_PreferredAEC(out int16 pbEnabled) mut => VT.get_PreferredAEC(ref this, out pbEnabled);
			public HRESULT put_PreferredVideoDevice(BSTR bstrDeviceName) mut => VT.put_PreferredVideoDevice(ref this, bstrDeviceName);
			public HRESULT get_PreferredVideoDevice(out BSTR pbstrDeviceName) mut => VT.get_PreferredVideoDevice(ref this, out pbstrDeviceName);
			public HRESULT get_ActiveMedia(out int32 plMediaType) mut => VT.get_ActiveMedia(ref this, out plMediaType);
			public HRESULT put_MaxBitrate(int32 lMaxBitrate) mut => VT.put_MaxBitrate(ref this, lMaxBitrate);
			public HRESULT get_MaxBitrate(out int32 plMaxBitrate) mut => VT.get_MaxBitrate(ref this, out plMaxBitrate);
			public HRESULT put_TemporalSpatialTradeOff(int32 lValue) mut => VT.put_TemporalSpatialTradeOff(ref this, lValue);
			public HRESULT get_TemporalSpatialTradeOff(out int32 plValue) mut => VT.get_TemporalSpatialTradeOff(ref this, out plValue);
			public HRESULT get_NetworkQuality(out int32 plNetworkQuality) mut => VT.get_NetworkQuality(ref this, out plNetworkQuality);
			public HRESULT StartT120Applet(RTC_T120_APPLET enApplet) mut => VT.StartT120Applet(ref this, enApplet);
			public HRESULT StopT120Applets() mut => VT.StopT120Applets(ref this);
			public HRESULT get_IsT120AppletRunning(RTC_T120_APPLET enApplet, out int16 pfRunning) mut => VT.get_IsT120AppletRunning(ref this, enApplet, out pfRunning);
			public HRESULT get_LocalUserURI(out BSTR pbstrUserURI) mut => VT.get_LocalUserURI(ref this, out pbstrUserURI);
			public HRESULT put_LocalUserURI(BSTR bstrUserURI) mut => VT.put_LocalUserURI(ref this, bstrUserURI);
			public HRESULT get_LocalUserName(out BSTR pbstrUserName) mut => VT.get_LocalUserName(ref this, out pbstrUserName);
			public HRESULT put_LocalUserName(BSTR bstrUserName) mut => VT.put_LocalUserName(ref this, bstrUserName);
			public HRESULT PlayRing(RTC_RING_TYPE enType, int16 bPlay) mut => VT.PlayRing(ref this, enType, bPlay);
			public HRESULT SendDTMF(RTC_DTMF enDTMF) mut => VT.SendDTMF(ref this, enDTMF);
			public HRESULT InvokeTuningWizard(int hwndParent) mut => VT.InvokeTuningWizard(ref this, hwndParent);
			public HRESULT get_IsTuned(out int16 pfTuned) mut => VT.get_IsTuned(ref this, out pfTuned);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self) PrepareForShutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int32 lFilter) put_EventFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plFilter) get_EventFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int32 lMediaTypes, int16 fPersistent) SetPreferredMediaTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plMediaTypes) get_PreferredMediaTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plMediaTypes) get_MediaCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, ref IRTCProfile pProfile, int32 lFlags, out IRTCSession* ppSession) CreateSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_LISTEN_MODE enListen) put_ListenForIncomingSessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out RTC_LISTEN_MODE penListen) get_ListenForIncomingSessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int16 fTCP, int16 fExternal, out VARIANT pvAddresses) get_NetworkAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, out int32 plVolume) get_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, int16 fMuted) put_AudioMuted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, out int16 pfMuted) get_AudioMuted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_VIDEO_DEVICE enDevice, out IVideoWindow* ppIVideoWindow) get_IVideoWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, BSTR bstrDeviceName) put_PreferredAudioDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, out BSTR pbstrDeviceName) get_PreferredAudioDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, int32 lVolume) put_PreferredVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_AUDIO_DEVICE enDevice, out int32 plVolume) get_PreferredVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int16 bEnable) put_PreferredAEC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int16 pbEnabled) get_PreferredAEC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, BSTR bstrDeviceName) put_PreferredVideoDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out BSTR pbstrDeviceName) get_PreferredVideoDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plMediaType) get_ActiveMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int32 lMaxBitrate) put_MaxBitrate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plMaxBitrate) get_MaxBitrate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int32 lValue) put_TemporalSpatialTradeOff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plValue) get_TemporalSpatialTradeOff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int32 plNetworkQuality) get_NetworkQuality;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_T120_APPLET enApplet) StartT120Applet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self) StopT120Applets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_T120_APPLET enApplet, out int16 pfRunning) get_IsT120AppletRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out BSTR pbstrUserURI) get_LocalUserURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, BSTR bstrUserURI) put_LocalUserURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out BSTR pbstrUserName) get_LocalUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, BSTR bstrUserName) put_LocalUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_RING_TYPE enType, int16 bPlay) PlayRing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, RTC_DTMF enDTMF) SendDTMF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, int hwndParent) InvokeTuningWizard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient self, out int16 pfTuned) get_IsTuned;
			}
		}
		[CRepr]
		public struct IRTCClient2 : IRTCClient
		{
			public const new Guid IID = .(0x0c91d71d, 0x1064, 0x42da, 0xbf, 0xa5, 0x57, 0x2b, 0xeb, 0x8e, 0xea, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_AnswerMode(RTC_SESSION_TYPE enType, RTC_ANSWER_MODE enMode) mut => VT.put_AnswerMode(ref this, enType, enMode);
			public HRESULT get_AnswerMode(RTC_SESSION_TYPE enType, out RTC_ANSWER_MODE penMode) mut => VT.get_AnswerMode(ref this, enType, out penMode);
			public HRESULT InvokeTuningWizardEx(int hwndParent, int16 fAllowAudio, int16 fAllowVideo) mut => VT.InvokeTuningWizardEx(ref this, hwndParent, fAllowAudio, fAllowVideo);
			public HRESULT get_Version(out int32 plVersion) mut => VT.get_Version(ref this, out plVersion);
			public HRESULT put_ClientName(BSTR bstrClientName) mut => VT.put_ClientName(ref this, bstrClientName);
			public HRESULT put_ClientCurVer(BSTR bstrClientCurVer) mut => VT.put_ClientCurVer(ref this, bstrClientCurVer);
			public HRESULT InitializeEx(int32 lFlags) mut => VT.InitializeEx(ref this, lFlags);
			public HRESULT CreateSessionWithDescription(BSTR bstrContentType, BSTR bstrSessionDescription, ref IRTCProfile pProfile, int32 lFlags, out IRTCSession2* ppSession2) mut => VT.CreateSessionWithDescription(ref this, bstrContentType, bstrSessionDescription, ref pProfile, lFlags, out ppSession2);
			public HRESULT SetSessionDescriptionManager(ref IRTCSessionDescriptionManager pSessionDescriptionManager) mut => VT.SetSessionDescriptionManager(ref this, ref pSessionDescriptionManager);
			public HRESULT put_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) mut => VT.put_PreferredSecurityLevel(ref this, enSecurityType, enSecurityLevel);
			public HRESULT get_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) mut => VT.get_PreferredSecurityLevel(ref this, enSecurityType, out penSecurityLevel);
			public HRESULT put_AllowedPorts(int32 lTransport, RTC_LISTEN_MODE enListenMode) mut => VT.put_AllowedPorts(ref this, lTransport, enListenMode);
			public HRESULT get_AllowedPorts(int32 lTransport, out RTC_LISTEN_MODE penListenMode) mut => VT.get_AllowedPorts(ref this, lTransport, out penListenMode);

			[CRepr]
			public struct VTable : IRTCClient.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, RTC_SESSION_TYPE enType, RTC_ANSWER_MODE enMode) put_AnswerMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, RTC_SESSION_TYPE enType, out RTC_ANSWER_MODE penMode) get_AnswerMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, int hwndParent, int16 fAllowAudio, int16 fAllowVideo) InvokeTuningWizardEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, out int32 plVersion) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, BSTR bstrClientName) put_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, BSTR bstrClientCurVer) put_ClientCurVer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, int32 lFlags) InitializeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, BSTR bstrContentType, BSTR bstrSessionDescription, ref IRTCProfile pProfile, int32 lFlags, out IRTCSession2* ppSession2) CreateSessionWithDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, ref IRTCSessionDescriptionManager pSessionDescriptionManager) SetSessionDescriptionManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) get_PreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, int32 lTransport, RTC_LISTEN_MODE enListenMode) put_AllowedPorts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClient2 self, int32 lTransport, out RTC_LISTEN_MODE penListenMode) get_AllowedPorts;
			}
		}
		[CRepr]
		public struct IRTCClientPresence : IUnknown
		{
			public const new Guid IID = .(0x11c3cbcc, 0x0744, 0x42d1, 0x96, 0x8a, 0x51, 0xaa, 0x1b, 0xb2, 0x74, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnablePresence(int16 fUseStorage, VARIANT varStorage) mut => VT.EnablePresence(ref this, fUseStorage, varStorage);
			public HRESULT Export(VARIANT varStorage) mut => VT.Export(ref this, varStorage);
			public HRESULT Import(VARIANT varStorage, int16 fReplaceAll) mut => VT.Import(ref this, varStorage, fReplaceAll);
			public HRESULT EnumerateBuddies(out IRTCEnumBuddies* ppEnum) mut => VT.EnumerateBuddies(ref this, out ppEnum);
			public HRESULT get_Buddies(out IRTCCollection* ppCollection) mut => VT.get_Buddies(ref this, out ppCollection);
			public HRESULT get_Buddy(BSTR bstrPresentityURI, out IRTCBuddy* ppBuddy) mut => VT.get_Buddy(ref this, bstrPresentityURI, out ppBuddy);
			public HRESULT AddBuddy(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddy* ppBuddy) mut => VT.AddBuddy(ref this, bstrPresentityURI, bstrUserName, bstrData, fPersistent, ref pProfile, lFlags, out ppBuddy);
			public HRESULT RemoveBuddy(ref IRTCBuddy pBuddy) mut => VT.RemoveBuddy(ref this, ref pBuddy);
			public HRESULT EnumerateWatchers(out IRTCEnumWatchers* ppEnum) mut => VT.EnumerateWatchers(ref this, out ppEnum);
			public HRESULT get_Watchers(out IRTCCollection* ppCollection) mut => VT.get_Watchers(ref this, out ppCollection);
			public HRESULT get_Watcher(BSTR bstrPresentityURI, out IRTCWatcher* ppWatcher) mut => VT.get_Watcher(ref this, bstrPresentityURI, out ppWatcher);
			public HRESULT AddWatcher(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fBlocked, int16 fPersistent, out IRTCWatcher* ppWatcher) mut => VT.AddWatcher(ref this, bstrPresentityURI, bstrUserName, bstrData, fBlocked, fPersistent, out ppWatcher);
			public HRESULT RemoveWatcher(ref IRTCWatcher pWatcher) mut => VT.RemoveWatcher(ref this, ref pWatcher);
			public HRESULT SetLocalPresenceInfo(RTC_PRESENCE_STATUS enStatus, BSTR bstrNotes) mut => VT.SetLocalPresenceInfo(ref this, enStatus, bstrNotes);
			public HRESULT get_OfferWatcherMode(out RTC_OFFER_WATCHER_MODE penMode) mut => VT.get_OfferWatcherMode(ref this, out penMode);
			public HRESULT put_OfferWatcherMode(RTC_OFFER_WATCHER_MODE enMode) mut => VT.put_OfferWatcherMode(ref this, enMode);
			public HRESULT get_PrivacyMode(out RTC_PRIVACY_MODE penMode) mut => VT.get_PrivacyMode(ref this, out penMode);
			public HRESULT put_PrivacyMode(RTC_PRIVACY_MODE enMode) mut => VT.put_PrivacyMode(ref this, enMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, int16 fUseStorage, VARIANT varStorage) EnablePresence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, VARIANT varStorage) Export;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, VARIANT varStorage, int16 fReplaceAll) Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out IRTCEnumBuddies* ppEnum) EnumerateBuddies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out IRTCCollection* ppCollection) get_Buddies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, BSTR bstrPresentityURI, out IRTCBuddy* ppBuddy) get_Buddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddy* ppBuddy) AddBuddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, ref IRTCBuddy pBuddy) RemoveBuddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out IRTCEnumWatchers* ppEnum) EnumerateWatchers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out IRTCCollection* ppCollection) get_Watchers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, BSTR bstrPresentityURI, out IRTCWatcher* ppWatcher) get_Watcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fBlocked, int16 fPersistent, out IRTCWatcher* ppWatcher) AddWatcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, ref IRTCWatcher pWatcher) RemoveWatcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, RTC_PRESENCE_STATUS enStatus, BSTR bstrNotes) SetLocalPresenceInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out RTC_OFFER_WATCHER_MODE penMode) get_OfferWatcherMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, RTC_OFFER_WATCHER_MODE enMode) put_OfferWatcherMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, out RTC_PRIVACY_MODE penMode) get_PrivacyMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence self, RTC_PRIVACY_MODE enMode) put_PrivacyMode;
			}
		}
		[CRepr]
		public struct IRTCClientPresence2 : IRTCClientPresence
		{
			public const new Guid IID = .(0xad1809e8, 0x62f7, 0x4783, 0x90, 0x9a, 0x29, 0xc9, 0xd2, 0xcb, 0x1d, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnablePresenceEx(ref IRTCProfile pProfile, VARIANT varStorage, int32 lFlags) mut => VT.EnablePresenceEx(ref this, ref pProfile, varStorage, lFlags);
			public HRESULT DisablePresence() mut => VT.DisablePresence(ref this);
			public HRESULT AddGroup(BSTR bstrGroupName, BSTR bstrData, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddyGroup* ppGroup) mut => VT.AddGroup(ref this, bstrGroupName, bstrData, ref pProfile, lFlags, out ppGroup);
			public HRESULT RemoveGroup(ref IRTCBuddyGroup pGroup) mut => VT.RemoveGroup(ref this, ref pGroup);
			public HRESULT EnumerateGroups(out IRTCEnumGroups* ppEnum) mut => VT.EnumerateGroups(ref this, out ppEnum);
			public HRESULT get_Groups(out IRTCCollection* ppCollection) mut => VT.get_Groups(ref this, out ppCollection);
			public HRESULT get_Group(BSTR bstrGroupName, out IRTCBuddyGroup* ppGroup) mut => VT.get_Group(ref this, bstrGroupName, out ppGroup);
			public HRESULT AddWatcherEx(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, RTC_WATCHER_STATE enState, int16 fPersistent, RTC_ACE_SCOPE enScope, ref IRTCProfile pProfile, int32 lFlags, out IRTCWatcher2* ppWatcher) mut => VT.AddWatcherEx(ref this, bstrPresentityURI, bstrUserName, bstrData, enState, fPersistent, enScope, ref pProfile, lFlags, out ppWatcher);
			public HRESULT get_WatcherEx(RTC_WATCHER_MATCH_MODE enMode, BSTR bstrPresentityURI, out IRTCWatcher2* ppWatcher) mut => VT.get_WatcherEx(ref this, enMode, bstrPresentityURI, out ppWatcher);
			public HRESULT put_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, BSTR bstrProperty) mut => VT.put_PresenceProperty(ref this, enProperty, bstrProperty);
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) mut => VT.get_PresenceProperty(ref this, enProperty, out pbstrProperty);
			public HRESULT SetPresenceData(BSTR bstrNamespace, BSTR bstrData) mut => VT.SetPresenceData(ref this, bstrNamespace, bstrData);
			public HRESULT GetPresenceData(out BSTR pbstrNamespace, out BSTR pbstrData) mut => VT.GetPresenceData(ref this, out pbstrNamespace, out pbstrData);
			public HRESULT GetLocalPresenceInfo(out RTC_PRESENCE_STATUS penStatus, out BSTR pbstrNotes) mut => VT.GetLocalPresenceInfo(ref this, out penStatus, out pbstrNotes);
			public HRESULT AddBuddyEx(BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, RTC_BUDDY_SUBSCRIPTION_TYPE enSubscriptionType, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddy2* ppBuddy) mut => VT.AddBuddyEx(ref this, bstrPresentityURI, bstrUserName, bstrData, fPersistent, enSubscriptionType, ref pProfile, lFlags, out ppBuddy);

			[CRepr]
			public struct VTable : IRTCClientPresence.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, ref IRTCProfile pProfile, VARIANT varStorage, int32 lFlags) EnablePresenceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self) DisablePresence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, BSTR bstrGroupName, BSTR bstrData, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddyGroup* ppGroup) AddGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, ref IRTCBuddyGroup pGroup) RemoveGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, out IRTCEnumGroups* ppEnum) EnumerateGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, out IRTCCollection* ppCollection) get_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, BSTR bstrGroupName, out IRTCBuddyGroup* ppGroup) get_Group;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, RTC_WATCHER_STATE enState, int16 fPersistent, RTC_ACE_SCOPE enScope, ref IRTCProfile pProfile, int32 lFlags, out IRTCWatcher2* ppWatcher) AddWatcherEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, RTC_WATCHER_MATCH_MODE enMode, BSTR bstrPresentityURI, out IRTCWatcher2* ppWatcher) get_WatcherEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, RTC_PRESENCE_PROPERTY enProperty, BSTR bstrProperty) put_PresenceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) get_PresenceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, BSTR bstrNamespace, BSTR bstrData) SetPresenceData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, out BSTR pbstrNamespace, out BSTR pbstrData) GetPresenceData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, out RTC_PRESENCE_STATUS penStatus, out BSTR pbstrNotes) GetLocalPresenceInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPresence2 self, BSTR bstrPresentityURI, BSTR bstrUserName, BSTR bstrData, int16 fPersistent, RTC_BUDDY_SUBSCRIPTION_TYPE enSubscriptionType, ref IRTCProfile pProfile, int32 lFlags, out IRTCBuddy2* ppBuddy) AddBuddyEx;
			}
		}
		[CRepr]
		public struct IRTCClientProvisioning : IUnknown
		{
			public const new Guid IID = .(0xb9f5cf06, 0x65b9, 0x4a80, 0xa0, 0xe6, 0x73, 0xca, 0xe3, 0xef, 0x38, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProfile(BSTR bstrProfileXML, out IRTCProfile* ppProfile) mut => VT.CreateProfile(ref this, bstrProfileXML, out ppProfile);
			public HRESULT EnableProfile(ref IRTCProfile pProfile, int32 lRegisterFlags) mut => VT.EnableProfile(ref this, ref pProfile, lRegisterFlags);
			public HRESULT DisableProfile(ref IRTCProfile pProfile) mut => VT.DisableProfile(ref this, ref pProfile);
			public HRESULT EnumerateProfiles(out IRTCEnumProfiles* ppEnum) mut => VT.EnumerateProfiles(ref this, out ppEnum);
			public HRESULT get_Profiles(out IRTCCollection* ppCollection) mut => VT.get_Profiles(ref this, out ppCollection);
			public HRESULT GetProfile(BSTR bstrUserAccount, BSTR bstrUserPassword, BSTR bstrUserURI, BSTR bstrServer, int32 lTransport, int lCookie) mut => VT.GetProfile(ref this, bstrUserAccount, bstrUserPassword, bstrUserURI, bstrServer, lTransport, lCookie);
			public HRESULT get_SessionCapabilities(out int32 plSupportedSessions) mut => VT.get_SessionCapabilities(ref this, out plSupportedSessions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, BSTR bstrProfileXML, out IRTCProfile* ppProfile) CreateProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, ref IRTCProfile pProfile, int32 lRegisterFlags) EnableProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, ref IRTCProfile pProfile) DisableProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, out IRTCEnumProfiles* ppEnum) EnumerateProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, out IRTCCollection* ppCollection) get_Profiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, BSTR bstrUserAccount, BSTR bstrUserPassword, BSTR bstrUserURI, BSTR bstrServer, int32 lTransport, int lCookie) GetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning self, out int32 plSupportedSessions) get_SessionCapabilities;
			}
		}
		[CRepr]
		public struct IRTCClientProvisioning2 : IRTCClientProvisioning
		{
			public const new Guid IID = .(0xa70909b5, 0xf40e, 0x4587, 0xbb, 0x75, 0xe6, 0xbc, 0x08, 0x45, 0x02, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableProfileEx(ref IRTCProfile pProfile, int32 lRegisterFlags, int32 lRoamingFlags) mut => VT.EnableProfileEx(ref this, ref pProfile, lRegisterFlags, lRoamingFlags);

			[CRepr]
			public struct VTable : IRTCClientProvisioning.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientProvisioning2 self, ref IRTCProfile pProfile, int32 lRegisterFlags, int32 lRoamingFlags) EnableProfileEx;
			}
		}
		[CRepr]
		public struct IRTCProfile : IUnknown
		{
			public const new Guid IID = .(0xd07eca9e, 0x4062, 0x4dd4, 0x9e, 0x7d, 0x72, 0x2a, 0x49, 0xba, 0x73, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Key(out BSTR pbstrKey) mut => VT.get_Key(ref this, out pbstrKey);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_XML(out BSTR pbstrXML) mut => VT.get_XML(ref this, out pbstrXML);
			public HRESULT get_ProviderName(out BSTR pbstrName) mut => VT.get_ProviderName(ref this, out pbstrName);
			public HRESULT get_ProviderURI(RTC_PROVIDER_URI enURI, out BSTR pbstrURI) mut => VT.get_ProviderURI(ref this, enURI, out pbstrURI);
			public HRESULT get_ProviderData(out BSTR pbstrData) mut => VT.get_ProviderData(ref this, out pbstrData);
			public HRESULT get_ClientName(out BSTR pbstrName) mut => VT.get_ClientName(ref this, out pbstrName);
			public HRESULT get_ClientBanner(out int16 pfBanner) mut => VT.get_ClientBanner(ref this, out pfBanner);
			public HRESULT get_ClientMinVer(out BSTR pbstrMinVer) mut => VT.get_ClientMinVer(ref this, out pbstrMinVer);
			public HRESULT get_ClientCurVer(out BSTR pbstrCurVer) mut => VT.get_ClientCurVer(ref this, out pbstrCurVer);
			public HRESULT get_ClientUpdateURI(out BSTR pbstrUpdateURI) mut => VT.get_ClientUpdateURI(ref this, out pbstrUpdateURI);
			public HRESULT get_ClientData(out BSTR pbstrData) mut => VT.get_ClientData(ref this, out pbstrData);
			public HRESULT get_UserURI(out BSTR pbstrUserURI) mut => VT.get_UserURI(ref this, out pbstrUserURI);
			public HRESULT get_UserName(out BSTR pbstrUserName) mut => VT.get_UserName(ref this, out pbstrUserName);
			public HRESULT get_UserAccount(out BSTR pbstrUserAccount) mut => VT.get_UserAccount(ref this, out pbstrUserAccount);
			public HRESULT SetCredentials(BSTR bstrUserURI, BSTR bstrUserAccount, BSTR bstrPassword) mut => VT.SetCredentials(ref this, bstrUserURI, bstrUserAccount, bstrPassword);
			public HRESULT get_SessionCapabilities(out int32 plSupportedSessions) mut => VT.get_SessionCapabilities(ref this, out plSupportedSessions);
			public HRESULT get_State(out RTC_REGISTRATION_STATE penState) mut => VT.get_State(ref this, out penState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrKey) get_Key;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrXML) get_XML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrName) get_ProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, RTC_PROVIDER_URI enURI, out BSTR pbstrURI) get_ProviderURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrData) get_ProviderData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrName) get_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out int16 pfBanner) get_ClientBanner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrMinVer) get_ClientMinVer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrCurVer) get_ClientCurVer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrUpdateURI) get_ClientUpdateURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrData) get_ClientData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrUserURI) get_UserURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrUserName) get_UserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out BSTR pbstrUserAccount) get_UserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, BSTR bstrUserURI, BSTR bstrUserAccount, BSTR bstrPassword) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out int32 plSupportedSessions) get_SessionCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile self, out RTC_REGISTRATION_STATE penState) get_State;
			}
		}
		[CRepr]
		public struct IRTCProfile2 : IRTCProfile
		{
			public const new Guid IID = .(0x4b81f84e, 0xbdc7, 0x4184, 0x91, 0x54, 0x3c, 0xb2, 0xdd, 0x79, 0x17, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Realm(out BSTR pbstrRealm) mut => VT.get_Realm(ref this, out pbstrRealm);
			public HRESULT put_Realm(BSTR bstrRealm) mut => VT.put_Realm(ref this, bstrRealm);
			public HRESULT get_AllowedAuth(out int32 plAllowedAuth) mut => VT.get_AllowedAuth(ref this, out plAllowedAuth);
			public HRESULT put_AllowedAuth(int32 lAllowedAuth) mut => VT.put_AllowedAuth(ref this, lAllowedAuth);

			[CRepr]
			public struct VTable : IRTCProfile.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile2 self, out BSTR pbstrRealm) get_Realm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile2 self, BSTR bstrRealm) put_Realm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile2 self, out int32 plAllowedAuth) get_AllowedAuth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfile2 self, int32 lAllowedAuth) put_AllowedAuth;
			}
		}
		[CRepr]
		public struct IRTCSession : IUnknown
		{
			public const new Guid IID = .(0x387c8086, 0x99be, 0x42fb, 0x99, 0x73, 0x7c, 0x0f, 0xc0, 0xca, 0x9f, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Client(out IRTCClient* ppClient) mut => VT.get_Client(ref this, out ppClient);
			public HRESULT get_State(out RTC_SESSION_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT get_Type(out RTC_SESSION_TYPE penType) mut => VT.get_Type(ref this, out penType);
			public HRESULT get_Profile(out IRTCProfile* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_Participants(out IRTCCollection* ppCollection) mut => VT.get_Participants(ref this, out ppCollection);
			public HRESULT Answer() mut => VT.Answer(ref this);
			public HRESULT Terminate(RTC_TERMINATE_REASON enReason) mut => VT.Terminate(ref this, enReason);
			public HRESULT Redirect(RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, ref IRTCProfile pProfile, int32 lFlags) mut => VT.Redirect(ref this, enType, bstrLocalPhoneURI, ref pProfile, lFlags);
			public HRESULT AddParticipant(BSTR bstrAddress, BSTR bstrName, out IRTCParticipant* ppParticipant) mut => VT.AddParticipant(ref this, bstrAddress, bstrName, out ppParticipant);
			public HRESULT RemoveParticipant(ref IRTCParticipant pParticipant) mut => VT.RemoveParticipant(ref this, ref pParticipant);
			public HRESULT EnumerateParticipants(out IRTCEnumParticipants* ppEnum) mut => VT.EnumerateParticipants(ref this, out ppEnum);
			public HRESULT get_CanAddParticipants(out int16 pfCanAdd) mut => VT.get_CanAddParticipants(ref this, out pfCanAdd);
			public HRESULT get_RedirectedUserURI(out BSTR pbstrUserURI) mut => VT.get_RedirectedUserURI(ref this, out pbstrUserURI);
			public HRESULT get_RedirectedUserName(out BSTR pbstrUserName) mut => VT.get_RedirectedUserName(ref this, out pbstrUserName);
			public HRESULT NextRedirectedUser() mut => VT.NextRedirectedUser(ref this);
			public HRESULT SendMessage(BSTR bstrMessageHeader, BSTR bstrMessage, int lCookie) mut => VT.SendMessage(ref this, bstrMessageHeader, bstrMessage, lCookie);
			public HRESULT SendMessageStatus(RTC_MESSAGING_USER_STATUS enUserStatus, int lCookie) mut => VT.SendMessageStatus(ref this, enUserStatus, lCookie);
			public HRESULT AddStream(int32 lMediaType, int lCookie) mut => VT.AddStream(ref this, lMediaType, lCookie);
			public HRESULT RemoveStream(int32 lMediaType, int lCookie) mut => VT.RemoveStream(ref this, lMediaType, lCookie);
			public HRESULT put_EncryptionKey(int32 lMediaType, BSTR EncryptionKey) mut => VT.put_EncryptionKey(ref this, lMediaType, EncryptionKey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out IRTCClient* ppClient) get_Client;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out RTC_SESSION_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out RTC_SESSION_TYPE penType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out IRTCProfile* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out IRTCCollection* ppCollection) get_Participants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self) Answer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, RTC_TERMINATE_REASON enReason) Terminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, RTC_SESSION_TYPE enType, BSTR bstrLocalPhoneURI, ref IRTCProfile pProfile, int32 lFlags) Redirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, BSTR bstrAddress, BSTR bstrName, out IRTCParticipant* ppParticipant) AddParticipant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, ref IRTCParticipant pParticipant) RemoveParticipant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out IRTCEnumParticipants* ppEnum) EnumerateParticipants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out int16 pfCanAdd) get_CanAddParticipants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out BSTR pbstrUserURI) get_RedirectedUserURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, out BSTR pbstrUserName) get_RedirectedUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self) NextRedirectedUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, BSTR bstrMessageHeader, BSTR bstrMessage, int lCookie) SendMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, RTC_MESSAGING_USER_STATUS enUserStatus, int lCookie) SendMessageStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, int32 lMediaType, int lCookie) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, int32 lMediaType, int lCookie) RemoveStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession self, int32 lMediaType, BSTR EncryptionKey) put_EncryptionKey;
			}
		}
		[CRepr]
		public struct IRTCSession2 : IRTCSession
		{
			public const new Guid IID = .(0x17d7cdfc, 0xb007, 0x484c, 0x99, 0xd2, 0x86, 0xa8, 0xa8, 0x20, 0x99, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendInfo(BSTR bstrInfoHeader, BSTR bstrInfo, int lCookie) mut => VT.SendInfo(ref this, bstrInfoHeader, bstrInfo, lCookie);
			public HRESULT put_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) mut => VT.put_PreferredSecurityLevel(ref this, enSecurityType, enSecurityLevel);
			public HRESULT get_PreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) mut => VT.get_PreferredSecurityLevel(ref this, enSecurityType, out penSecurityLevel);
			public HRESULT IsSecurityEnabled(RTC_SECURITY_TYPE enSecurityType, out int16 pfSecurityEnabled) mut => VT.IsSecurityEnabled(ref this, enSecurityType, out pfSecurityEnabled);
			public HRESULT AnswerWithSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription) mut => VT.AnswerWithSessionDescription(ref this, bstrContentType, bstrSessionDescription);
			public HRESULT ReInviteWithSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription, int lCookie) mut => VT.ReInviteWithSessionDescription(ref this, bstrContentType, bstrSessionDescription, lCookie);

			[CRepr]
			public struct VTable : IRTCSession.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, BSTR bstrInfoHeader, BSTR bstrInfo, int lCookie) SendInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, RTC_SECURITY_TYPE enSecurityType, RTC_SECURITY_LEVEL enSecurityLevel) put_PreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) get_PreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, RTC_SECURITY_TYPE enSecurityType, out int16 pfSecurityEnabled) IsSecurityEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, BSTR bstrContentType, BSTR bstrSessionDescription) AnswerWithSessionDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSession2 self, BSTR bstrContentType, BSTR bstrSessionDescription, int lCookie) ReInviteWithSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCSessionCallControl : IUnknown
		{
			public const new Guid IID = .(0xe9a50d94, 0x190b, 0x4f82, 0x95, 0x30, 0x3b, 0x8e, 0xbf, 0x60, 0x75, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Hold(int lCookie) mut => VT.Hold(ref this, lCookie);
			public HRESULT UnHold(int lCookie) mut => VT.UnHold(ref this, lCookie);
			public HRESULT Forward(BSTR bstrForwardToURI) mut => VT.Forward(ref this, bstrForwardToURI);
			public HRESULT Refer(BSTR bstrReferToURI, BSTR bstrReferCookie) mut => VT.Refer(ref this, bstrReferToURI, bstrReferCookie);
			public HRESULT put_ReferredByURI(BSTR bstrReferredByURI) mut => VT.put_ReferredByURI(ref this, bstrReferredByURI);
			public HRESULT get_ReferredByURI(out BSTR pbstrReferredByURI) mut => VT.get_ReferredByURI(ref this, out pbstrReferredByURI);
			public HRESULT put_ReferCookie(BSTR bstrReferCookie) mut => VT.put_ReferCookie(ref this, bstrReferCookie);
			public HRESULT get_ReferCookie(out BSTR pbstrReferCookie) mut => VT.get_ReferCookie(ref this, out pbstrReferCookie);
			public HRESULT get_IsReferred(out int16 pfIsReferred) mut => VT.get_IsReferred(ref this, out pfIsReferred);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, int lCookie) Hold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, int lCookie) UnHold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, BSTR bstrForwardToURI) Forward;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, BSTR bstrReferToURI, BSTR bstrReferCookie) Refer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, BSTR bstrReferredByURI) put_ReferredByURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, out BSTR pbstrReferredByURI) get_ReferredByURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, BSTR bstrReferCookie) put_ReferCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, out BSTR pbstrReferCookie) get_ReferCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionCallControl self, out int16 pfIsReferred) get_IsReferred;
			}
		}
		[CRepr]
		public struct IRTCParticipant : IUnknown
		{
			public const new Guid IID = .(0xae86add5, 0x26b1, 0x4414, 0xaf, 0x1d, 0xb9, 0x4c, 0xd9, 0x38, 0xd7, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserURI(out BSTR pbstrUserURI) mut => VT.get_UserURI(ref this, out pbstrUserURI);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_Removable(out int16 pfRemovable) mut => VT.get_Removable(ref this, out pfRemovable);
			public HRESULT get_State(out RTC_PARTICIPANT_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT get_Session(out IRTCSession* ppSession) mut => VT.get_Session(ref this, out ppSession);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipant self, out BSTR pbstrUserURI) get_UserURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipant self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipant self, out int16 pfRemovable) get_Removable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipant self, out RTC_PARTICIPANT_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipant self, out IRTCSession* ppSession) get_Session;
			}
		}
		[CRepr]
		public struct IRTCRoamingEvent : IDispatch
		{
			public const new Guid IID = .(0x79960a6b, 0x0cb1, 0x4dc8, 0xa8, 0x05, 0x73, 0x18, 0xe9, 0x99, 0x02, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_ROAMING_EVENT_TYPE pEventType) mut => VT.get_EventType(ref this, out pEventType);
			public HRESULT get_Profile(out IRTCProfile2* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRoamingEvent self, out RTC_ROAMING_EVENT_TYPE pEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRoamingEvent self, out IRTCProfile2* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRoamingEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRoamingEvent self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCProfileEvent : IDispatch
		{
			public const new Guid IID = .(0xd6d5ab3b, 0x770e, 0x43e8, 0x80, 0x0a, 0x79, 0xb0, 0x62, 0x39, 0x5f, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(out IRTCProfile* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_Cookie(out int plCookie) mut => VT.get_Cookie(ref this, out plCookie);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfileEvent self, out IRTCProfile* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfileEvent self, out int plCookie) get_Cookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfileEvent self, out int32 plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCProfileEvent2 : IRTCProfileEvent
		{
			public const new Guid IID = .(0x62e56edc, 0x03fa, 0x4121, 0x94, 0xfb, 0x23, 0x49, 0x3f, 0xd0, 0xae, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_PROFILE_EVENT_TYPE pEventType) mut => VT.get_EventType(ref this, out pEventType);

			[CRepr]
			public struct VTable : IRTCProfileEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCProfileEvent2 self, out RTC_PROFILE_EVENT_TYPE pEventType) get_EventType;
			}
		}
		[CRepr]
		public struct IRTCClientEvent : IDispatch
		{
			public const new Guid IID = .(0x2b493b7a, 0x3cba, 0x4170, 0x9c, 0x8b, 0x76, 0xa9, 0xda, 0xcd, 0xd6, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_CLIENT_EVENT_TYPE penEventType) mut => VT.get_EventType(ref this, out penEventType);
			public HRESULT get_Client(out IRTCClient* ppClient) mut => VT.get_Client(ref this, out ppClient);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientEvent self, out RTC_CLIENT_EVENT_TYPE penEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientEvent self, out IRTCClient* ppClient) get_Client;
			}
		}
		[CRepr]
		public struct IRTCRegistrationStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x62d0991b, 0x50ab, 0x4f02, 0xb9, 0x48, 0xca, 0x94, 0xf2, 0x6f, 0x8f, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(out IRTCProfile* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_State(out RTC_REGISTRATION_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRegistrationStateChangeEvent self, out IRTCProfile* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRegistrationStateChangeEvent self, out RTC_REGISTRATION_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRegistrationStateChangeEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCRegistrationStateChangeEvent self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0xb5bad703, 0x5952, 0x48b3, 0x93, 0x21, 0x7f, 0x45, 0x00, 0x52, 0x15, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_State(out RTC_SESSION_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent self, out IRTCSession* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent self, out RTC_SESSION_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionStateChangeEvent2 : IRTCSessionStateChangeEvent
		{
			public const new Guid IID = .(0x4f933171, 0x6f95, 0x4880, 0x80, 0xd9, 0x2e, 0xc8, 0xd4, 0x95, 0xd2, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MediaTypes(out int32 pMediaTypes) mut => VT.get_MediaTypes(ref this, out pMediaTypes);
			public HRESULT get_RemotePreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) mut => VT.get_RemotePreferredSecurityLevel(ref this, enSecurityType, out penSecurityLevel);
			public HRESULT get_IsForked(out int16 pfIsForked) mut => VT.get_IsForked(ref this, out pfIsForked);
			public HRESULT GetRemoteSessionDescription(out BSTR pbstrContentType, out BSTR pbstrSessionDescription) mut => VT.GetRemoteSessionDescription(ref this, out pbstrContentType, out pbstrSessionDescription);

			[CRepr]
			public struct VTable : IRTCSessionStateChangeEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent2 self, out int32 pMediaTypes) get_MediaTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent2 self, RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) get_RemotePreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent2 self, out int16 pfIsForked) get_IsForked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionStateChangeEvent2 self, out BSTR pbstrContentType, out BSTR pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent : IDispatch
		{
			public const new Guid IID = .(0xa6bff4c0, 0xf7c8, 0x4d3c, 0x9a, 0x41, 0x35, 0x50, 0xf7, 0x8a, 0x95, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_Cookie(out int plCookie) mut => VT.get_Cookie(ref this, out plCookie);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent self, out IRTCSession* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent self, out int plCookie) get_Cookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionOperationCompleteEvent2 : IRTCSessionOperationCompleteEvent
		{
			public const new Guid IID = .(0xf6fc2a9b, 0xd5bc, 0x4241, 0xb4, 0x36, 0x1b, 0x84, 0x60, 0xc1, 0x38, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Participant(out IRTCParticipant* ppParticipant) mut => VT.get_Participant(ref this, out ppParticipant);
			public HRESULT GetRemoteSessionDescription(out BSTR pbstrContentType, out BSTR pbstrSessionDescription) mut => VT.GetRemoteSessionDescription(ref this, out pbstrContentType, out pbstrSessionDescription);

			[CRepr]
			public struct VTable : IRTCSessionOperationCompleteEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent2 self, out IRTCParticipant* ppParticipant) get_Participant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionOperationCompleteEvent2 self, out BSTR pbstrContentType, out BSTR pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCParticipantStateChangeEvent : IDispatch
		{
			public const new Guid IID = .(0x09bcb597, 0xf0fa, 0x48f9, 0xb4, 0x20, 0x46, 0x8c, 0xea, 0x7f, 0xde, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Participant(out IRTCParticipant* ppParticipant) mut => VT.get_Participant(ref this, out ppParticipant);
			public HRESULT get_State(out RTC_PARTICIPANT_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipantStateChangeEvent self, out IRTCParticipant* ppParticipant) get_Participant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipantStateChangeEvent self, out RTC_PARTICIPANT_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCParticipantStateChangeEvent self, out int32 plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCMediaEvent : IDispatch
		{
			public const new Guid IID = .(0x099944fb, 0xbcda, 0x453e, 0x8c, 0x41, 0xe1, 0x3d, 0xa2, 0xad, 0xf7, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MediaType(out int32 pMediaType) mut => VT.get_MediaType(ref this, out pMediaType);
			public HRESULT get_EventType(out RTC_MEDIA_EVENT_TYPE penEventType) mut => VT.get_EventType(ref this, out penEventType);
			public HRESULT get_EventReason(out RTC_MEDIA_EVENT_REASON penEventReason) mut => VT.get_EventReason(ref this, out penEventReason);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaEvent self, out int32 pMediaType) get_MediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaEvent self, out RTC_MEDIA_EVENT_TYPE penEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaEvent self, out RTC_MEDIA_EVENT_REASON penEventReason) get_EventReason;
			}
		}
		[CRepr]
		public struct IRTCIntensityEvent : IDispatch
		{
			public const new Guid IID = .(0x4c23bf51, 0x390c, 0x4992, 0xa4, 0x1d, 0x41, 0xee, 0xc0, 0x5b, 0x2a, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Level(out int32 plLevel) mut => VT.get_Level(ref this, out plLevel);
			public HRESULT get_Min(out int32 plMin) mut => VT.get_Min(ref this, out plMin);
			public HRESULT get_Max(out int32 plMax) mut => VT.get_Max(ref this, out plMax);
			public HRESULT get_Direction(out RTC_AUDIO_DEVICE penDirection) mut => VT.get_Direction(ref this, out penDirection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCIntensityEvent self, out int32 plLevel) get_Level;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCIntensityEvent self, out int32 plMin) get_Min;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCIntensityEvent self, out int32 plMax) get_Max;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCIntensityEvent self, out RTC_AUDIO_DEVICE penDirection) get_Direction;
			}
		}
		[CRepr]
		public struct IRTCMessagingEvent : IDispatch
		{
			public const new Guid IID = .(0xd3609541, 0x1b29, 0x4de5, 0xa4, 0xad, 0x5a, 0xeb, 0xaf, 0x31, 0x95, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_Participant(out IRTCParticipant* ppParticipant) mut => VT.get_Participant(ref this, out ppParticipant);
			public HRESULT get_EventType(out RTC_MESSAGING_EVENT_TYPE penEventType) mut => VT.get_EventType(ref this, out penEventType);
			public HRESULT get_Message(out BSTR pbstrMessage) mut => VT.get_Message(ref this, out pbstrMessage);
			public HRESULT get_MessageHeader(out BSTR pbstrMessageHeader) mut => VT.get_MessageHeader(ref this, out pbstrMessageHeader);
			public HRESULT get_UserStatus(out RTC_MESSAGING_USER_STATUS penUserStatus) mut => VT.get_UserStatus(ref this, out penUserStatus);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out IRTCSession* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out IRTCParticipant* ppParticipant) get_Participant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out RTC_MESSAGING_EVENT_TYPE penEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out BSTR pbstrMessage) get_Message;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out BSTR pbstrMessageHeader) get_MessageHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMessagingEvent self, out RTC_MESSAGING_USER_STATUS penUserStatus) get_UserStatus;
			}
		}
		[CRepr]
		public struct IRTCBuddyEvent : IDispatch
		{
			public const new Guid IID = .(0xf36d755d, 0x17e6, 0x404e, 0x95, 0x4f, 0x0f, 0xc0, 0x75, 0x74, 0xc7, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Buddy(out IRTCBuddy* ppBuddy) mut => VT.get_Buddy(ref this, out ppBuddy);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyEvent self, out IRTCBuddy* ppBuddy) get_Buddy;
			}
		}
		[CRepr]
		public struct IRTCBuddyEvent2 : IRTCBuddyEvent
		{
			public const new Guid IID = .(0x484a7f1e, 0x73f0, 0x4990, 0xbf, 0xc2, 0x60, 0xbc, 0x39, 0x78, 0xa7, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_BUDDY_EVENT_TYPE pEventType) mut => VT.get_EventType(ref this, out pEventType);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IRTCBuddyEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyEvent2 self, out RTC_BUDDY_EVENT_TYPE pEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyEvent2 self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyEvent2 self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCWatcherEvent : IDispatch
		{
			public const new Guid IID = .(0xf30d7261, 0x587a, 0x424f, 0x82, 0x2c, 0x31, 0x27, 0x88, 0xf4, 0x35, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Watcher(out IRTCWatcher* ppWatcher) mut => VT.get_Watcher(ref this, out ppWatcher);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcherEvent self, out IRTCWatcher* ppWatcher) get_Watcher;
			}
		}
		[CRepr]
		public struct IRTCWatcherEvent2 : IRTCWatcherEvent
		{
			public const new Guid IID = .(0xe52891e8, 0x188c, 0x49af, 0xb0, 0x05, 0x98, 0xed, 0x13, 0xf8, 0x3f, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_WATCHER_EVENT_TYPE pEventType) mut => VT.get_EventType(ref this, out pEventType);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);

			[CRepr]
			public struct VTable : IRTCWatcherEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcherEvent2 self, out RTC_WATCHER_EVENT_TYPE pEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcherEvent2 self, out int32 plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCBuddyGroupEvent : IDispatch
		{
			public const new Guid IID = .(0x3a79e1d1, 0xb736, 0x4414, 0x96, 0xf8, 0xbb, 0xc7, 0xf0, 0x88, 0x63, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out RTC_GROUP_EVENT_TYPE pEventType) mut => VT.get_EventType(ref this, out pEventType);
			public HRESULT get_Group(out IRTCBuddyGroup* ppGroup) mut => VT.get_Group(ref this, out ppGroup);
			public HRESULT get_Buddy(out IRTCBuddy2* ppBuddy) mut => VT.get_Buddy(ref this, out ppBuddy);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroupEvent self, out RTC_GROUP_EVENT_TYPE pEventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroupEvent self, out IRTCBuddyGroup* ppGroup) get_Group;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroupEvent self, out IRTCBuddy2* ppBuddy) get_Buddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroupEvent self, out int32 plStatusCode) get_StatusCode;
			}
		}
		[CRepr]
		public struct IRTCInfoEvent : IDispatch
		{
			public const new Guid IID = .(0x4e1d68ae, 0x1912, 0x4f49, 0xb2, 0xc3, 0x59, 0x4f, 0xad, 0xfd, 0x42, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession2* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_Participant(out IRTCParticipant* ppParticipant) mut => VT.get_Participant(ref this, out ppParticipant);
			public HRESULT get_Info(out BSTR pbstrInfo) mut => VT.get_Info(ref this, out pbstrInfo);
			public HRESULT get_InfoHeader(out BSTR pbstrInfoHeader) mut => VT.get_InfoHeader(ref this, out pbstrInfoHeader);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCInfoEvent self, out IRTCSession2* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCInfoEvent self, out IRTCParticipant* ppParticipant) get_Participant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCInfoEvent self, out BSTR pbstrInfo) get_Info;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCInfoEvent self, out BSTR pbstrInfoHeader) get_InfoHeader;
			}
		}
		[CRepr]
		public struct IRTCMediaRequestEvent : IDispatch
		{
			public const new Guid IID = .(0x52572d15, 0x148c, 0x4d97, 0xa3, 0x6c, 0x2d, 0xa5, 0x5c, 0x28, 0x9d, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession2* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_ProposedMedia(out int32 plMediaTypes) mut => VT.get_ProposedMedia(ref this, out plMediaTypes);
			public HRESULT get_CurrentMedia(out int32 plMediaTypes) mut => VT.get_CurrentMedia(ref this, out plMediaTypes);
			public HRESULT Accept(int32 lMediaTypes) mut => VT.Accept(ref this, lMediaTypes);
			public HRESULT get_RemotePreferredSecurityLevel(RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) mut => VT.get_RemotePreferredSecurityLevel(ref this, enSecurityType, out penSecurityLevel);
			public HRESULT Reject() mut => VT.Reject(ref this);
			public HRESULT get_State(out RTC_REINVITE_STATE pState) mut => VT.get_State(ref this, out pState);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, out IRTCSession2* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, out int32 plMediaTypes) get_ProposedMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, out int32 plMediaTypes) get_CurrentMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, int32 lMediaTypes) Accept;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, RTC_SECURITY_TYPE enSecurityType, out RTC_SECURITY_LEVEL penSecurityLevel) get_RemotePreferredSecurityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self) Reject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCMediaRequestEvent self, out RTC_REINVITE_STATE pState) get_State;
			}
		}
		[CRepr]
		public struct IRTCReInviteEvent : IDispatch
		{
			public const new Guid IID = .(0x11558d84, 0x204c, 0x43e7, 0x99, 0xb0, 0x20, 0x34, 0xe9, 0x41, 0x7f, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession2* ppSession2) mut => VT.get_Session(ref this, out ppSession2);
			public HRESULT Accept(BSTR bstrContentType, BSTR bstrSessionDescription) mut => VT.Accept(ref this, bstrContentType, bstrSessionDescription);
			public HRESULT Reject() mut => VT.Reject(ref this);
			public HRESULT get_State(out RTC_REINVITE_STATE pState) mut => VT.get_State(ref this, out pState);
			public HRESULT GetRemoteSessionDescription(out BSTR pbstrContentType, out BSTR pbstrSessionDescription) mut => VT.GetRemoteSessionDescription(ref this, out pbstrContentType, out pbstrSessionDescription);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCReInviteEvent self, out IRTCSession2* ppSession2) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCReInviteEvent self, BSTR bstrContentType, BSTR bstrSessionDescription) Accept;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCReInviteEvent self) Reject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCReInviteEvent self, out RTC_REINVITE_STATE pState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCReInviteEvent self, out BSTR pbstrContentType, out BSTR pbstrSessionDescription) GetRemoteSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCPresencePropertyEvent : IDispatch
		{
			public const new Guid IID = .(0xf777f570, 0xa820, 0x49d5, 0x86, 0xbd, 0xe0, 0x99, 0x49, 0x3f, 0x15, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);
			public HRESULT get_PresenceProperty(out RTC_PRESENCE_PROPERTY penPresProp) mut => VT.get_PresenceProperty(ref this, out penPresProp);
			public HRESULT get_Value(out BSTR pbstrValue) mut => VT.get_Value(ref this, out pbstrValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresencePropertyEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresencePropertyEvent self, out BSTR pbstrStatusText) get_StatusText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresencePropertyEvent self, out RTC_PRESENCE_PROPERTY penPresProp) get_PresenceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresencePropertyEvent self, out BSTR pbstrValue) get_Value;
			}
		}
		[CRepr]
		public struct IRTCPresenceDataEvent : IDispatch
		{
			public const new Guid IID = .(0x38f0e78c, 0x8b87, 0x4c04, 0xa8, 0x2d, 0xae, 0xdd, 0x83, 0xc9, 0x09, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);
			public HRESULT GetPresenceData(out BSTR pbstrNamespace, out BSTR pbstrData) mut => VT.GetPresenceData(ref this, out pbstrNamespace, out pbstrData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDataEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDataEvent self, out BSTR pbstrStatusText) get_StatusText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDataEvent self, out BSTR pbstrNamespace, out BSTR pbstrData) GetPresenceData;
			}
		}
		[CRepr]
		public struct IRTCPresenceStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x78673f32, 0x4a0f, 0x462c, 0x89, 0xaa, 0xee, 0x77, 0x06, 0x70, 0x76, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);
			public HRESULT GetLocalPresenceInfo(out RTC_PRESENCE_STATUS penStatus, out BSTR pbstrNotes) mut => VT.GetLocalPresenceInfo(ref this, out penStatus, out pbstrNotes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceStatusEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceStatusEvent self, out BSTR pbstrStatusText) get_StatusText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceStatusEvent self, out RTC_PRESENCE_STATUS penStatus, out BSTR pbstrNotes) GetLocalPresenceInfo;
			}
		}
		[CRepr]
		public struct IRTCCollection : IDispatch
		{
			public const new Guid IID = .(0xec7c8096, 0xb918, 0x4044, 0x94, 0xf1, 0xe4, 0xfb, 0xa0, 0x36, 0x1d, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 lCount) mut => VT.get_Count(ref this, out lCount);
			public HRESULT get_Item(int32 Index, out VARIANT pVariant) mut => VT.get_Item(ref this, Index, out pVariant);
			public HRESULT get__NewEnum(out IUnknown* ppNewEnum) mut => VT.get__NewEnum(ref this, out ppNewEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCCollection self, out int32 lCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCCollection self, int32 Index, out VARIANT pVariant) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCCollection self, out IUnknown* ppNewEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IRTCEnumParticipants : IUnknown
		{
			public const new Guid IID = .(0xfcd56f29, 0x4a4f, 0x41b2, 0xba, 0x5c, 0xf5, 0xbc, 0xcc, 0x06, 0x0b, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCParticipant** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumParticipants* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumParticipants self, uint32 celt, IRTCParticipant** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumParticipants self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumParticipants self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumParticipants self, out IRTCEnumParticipants* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumProfiles : IUnknown
		{
			public const new Guid IID = .(0x29b7c41c, 0xed82, 0x4bca, 0x84, 0xad, 0x39, 0xd5, 0x10, 0x1b, 0x58, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCProfile** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumProfiles* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumProfiles self, uint32 celt, IRTCProfile** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumProfiles self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumProfiles self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumProfiles self, out IRTCEnumProfiles* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumBuddies : IUnknown
		{
			public const new Guid IID = .(0xf7296917, 0x5569, 0x4b3b, 0xb3, 0xaf, 0x98, 0xd1, 0x14, 0x4b, 0x2b, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCBuddy** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumBuddies* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumBuddies self, uint32 celt, IRTCBuddy** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumBuddies self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumBuddies self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumBuddies self, out IRTCEnumBuddies* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumWatchers : IUnknown
		{
			public const new Guid IID = .(0xa87d55d7, 0xdb74, 0x4ed1, 0x9c, 0xa4, 0x77, 0xa0, 0xe4, 0x1b, 0x41, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCWatcher** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumWatchers* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumWatchers self, uint32 celt, IRTCWatcher** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumWatchers self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumWatchers self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumWatchers self, out IRTCEnumWatchers* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCEnumGroups : IUnknown
		{
			public const new Guid IID = .(0x742378d6, 0xa141, 0x4415, 0x8f, 0x27, 0x35, 0xd9, 0x90, 0x76, 0xcf, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCBuddyGroup** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumGroups* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumGroups self, uint32 celt, IRTCBuddyGroup** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumGroups self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumGroups self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumGroups self, out IRTCEnumGroups* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCPresenceContact : IUnknown
		{
			public const new Guid IID = .(0x8b22f92c, 0xcd90, 0x42db, 0xa7, 0x33, 0x21, 0x22, 0x05, 0xc3, 0xe3, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PresentityURI(out BSTR pbstrPresentityURI) mut => VT.get_PresentityURI(ref this, out pbstrPresentityURI);
			public HRESULT put_PresentityURI(BSTR bstrPresentityURI) mut => VT.put_PresentityURI(ref this, bstrPresentityURI);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT put_Name(BSTR bstrName) mut => VT.put_Name(ref this, bstrName);
			public HRESULT get_Data(out BSTR pbstrData) mut => VT.get_Data(ref this, out pbstrData);
			public HRESULT put_Data(BSTR bstrData) mut => VT.put_Data(ref this, bstrData);
			public HRESULT get_Persistent(out int16 pfPersistent) mut => VT.get_Persistent(ref this, out pfPersistent);
			public HRESULT put_Persistent(int16 fPersistent) mut => VT.put_Persistent(ref this, fPersistent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, out BSTR pbstrPresentityURI) get_PresentityURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, BSTR bstrPresentityURI) put_PresentityURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, BSTR bstrName) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, out BSTR pbstrData) get_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, BSTR bstrData) put_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, out int16 pfPersistent) get_Persistent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceContact self, int16 fPersistent) put_Persistent;
			}
		}
		[CRepr]
		public struct IRTCBuddy : IRTCPresenceContact
		{
			public const new Guid IID = .(0xfcb136c8, 0x7b90, 0x4e0c, 0xbe, 0xfe, 0x56, 0xed, 0xf0, 0xba, 0x6f, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out RTC_PRESENCE_STATUS penStatus) mut => VT.get_Status(ref this, out penStatus);
			public HRESULT get_Notes(out BSTR pbstrNotes) mut => VT.get_Notes(ref this, out pbstrNotes);

			[CRepr]
			public struct VTable : IRTCPresenceContact.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy self, out RTC_PRESENCE_STATUS penStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy self, out BSTR pbstrNotes) get_Notes;
			}
		}
		[CRepr]
		public struct IRTCBuddy2 : IRTCBuddy
		{
			public const new Guid IID = .(0x102f9588, 0x23e7, 0x40e3, 0x95, 0x4d, 0xcd, 0x7a, 0x1d, 0x5c, 0x03, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(out IRTCProfile2* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT EnumerateGroups(out IRTCEnumGroups* ppEnum) mut => VT.EnumerateGroups(ref this, out ppEnum);
			public HRESULT get_Groups(out IRTCCollection* ppCollection) mut => VT.get_Groups(ref this, out ppCollection);
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) mut => VT.get_PresenceProperty(ref this, enProperty, out pbstrProperty);
			public HRESULT EnumeratePresenceDevices(out IRTCEnumPresenceDevices* ppEnumDevices) mut => VT.EnumeratePresenceDevices(ref this, out ppEnumDevices);
			public HRESULT get_PresenceDevices(out IRTCCollection* ppDevicesCollection) mut => VT.get_PresenceDevices(ref this, out ppDevicesCollection);
			public HRESULT get_SubscriptionType(out RTC_BUDDY_SUBSCRIPTION_TYPE penSubscriptionType) mut => VT.get_SubscriptionType(ref this, out penSubscriptionType);

			[CRepr]
			public struct VTable : IRTCBuddy.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out IRTCProfile2* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out IRTCEnumGroups* ppEnum) EnumerateGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out IRTCCollection* ppCollection) get_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) get_PresenceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out IRTCEnumPresenceDevices* ppEnumDevices) EnumeratePresenceDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out IRTCCollection* ppDevicesCollection) get_PresenceDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddy2 self, out RTC_BUDDY_SUBSCRIPTION_TYPE penSubscriptionType) get_SubscriptionType;
			}
		}
		[CRepr]
		public struct IRTCWatcher : IRTCPresenceContact
		{
			public const new Guid IID = .(0xc7cedad8, 0x346b, 0x4d1b, 0xac, 0x02, 0xa2, 0x08, 0x8d, 0xf9, 0xbe, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_State(out RTC_WATCHER_STATE penState) mut => VT.get_State(ref this, out penState);
			public HRESULT put_State(RTC_WATCHER_STATE enState) mut => VT.put_State(ref this, enState);

			[CRepr]
			public struct VTable : IRTCPresenceContact.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcher self, out RTC_WATCHER_STATE penState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcher self, RTC_WATCHER_STATE enState) put_State;
			}
		}
		[CRepr]
		public struct IRTCWatcher2 : IRTCWatcher
		{
			public const new Guid IID = .(0xd4d9967f, 0xd011, 0x4b1d, 0x91, 0xe3, 0xab, 0xa7, 0x8f, 0x96, 0x39, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Profile(out IRTCProfile2* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_Scope(out RTC_ACE_SCOPE penScope) mut => VT.get_Scope(ref this, out penScope);

			[CRepr]
			public struct VTable : IRTCWatcher.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcher2 self, out IRTCProfile2* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCWatcher2 self, out RTC_ACE_SCOPE penScope) get_Scope;
			}
		}
		[CRepr]
		public struct IRTCBuddyGroup : IUnknown
		{
			public const new Guid IID = .(0x60361e68, 0x9164, 0x4389, 0xa4, 0xc6, 0xd0, 0xb3, 0x92, 0x5b, 0xda, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pbstrGroupName) mut => VT.get_Name(ref this, out pbstrGroupName);
			public HRESULT put_Name(BSTR bstrGroupName) mut => VT.put_Name(ref this, bstrGroupName);
			public HRESULT AddBuddy(ref IRTCBuddy pBuddy) mut => VT.AddBuddy(ref this, ref pBuddy);
			public HRESULT RemoveBuddy(ref IRTCBuddy pBuddy) mut => VT.RemoveBuddy(ref this, ref pBuddy);
			public HRESULT EnumerateBuddies(out IRTCEnumBuddies* ppEnum) mut => VT.EnumerateBuddies(ref this, out ppEnum);
			public HRESULT get_Buddies(out IRTCCollection* ppCollection) mut => VT.get_Buddies(ref this, out ppCollection);
			public HRESULT get_Data(out BSTR pbstrData) mut => VT.get_Data(ref this, out pbstrData);
			public HRESULT put_Data(BSTR bstrData) mut => VT.put_Data(ref this, bstrData);
			public HRESULT get_Profile(out IRTCProfile2* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, out BSTR pbstrGroupName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, BSTR bstrGroupName) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, ref IRTCBuddy pBuddy) AddBuddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, ref IRTCBuddy pBuddy) RemoveBuddy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, out IRTCEnumBuddies* ppEnum) EnumerateBuddies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, out IRTCCollection* ppCollection) get_Buddies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, out BSTR pbstrData) get_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, BSTR bstrData) put_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCBuddyGroup self, out IRTCProfile2* ppProfile) get_Profile;
			}
		}
		[CRepr]
		public struct IRTCEventNotification : IUnknown
		{
			public const new Guid IID = .(0x13fa24c7, 0x5748, 0x4b21, 0x91, 0xf5, 0x73, 0x97, 0x60, 0x9c, 0xe7, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Event(RTC_EVENT RTCEvent, ref IDispatch pEvent) mut => VT.Event(ref this, RTCEvent, ref pEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEventNotification self, RTC_EVENT RTCEvent, ref IDispatch pEvent) Event;
			}
		}
		[CRepr]
		public struct IRTCPortManager : IUnknown
		{
			public const new Guid IID = .(0xda77c14b, 0x6208, 0x43ca, 0x8d, 0xdf, 0x5b, 0x60, 0xa0, 0xa6, 0x9f, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMapping(BSTR bstrRemoteAddress, RTC_PORT_TYPE enPortType, out BSTR pbstrInternalLocalAddress, out int32 plInternalLocalPort, out BSTR pbstrExternalLocalAddress, out int32 plExternalLocalPort) mut => VT.GetMapping(ref this, bstrRemoteAddress, enPortType, out pbstrInternalLocalAddress, out plInternalLocalPort, out pbstrExternalLocalAddress, out plExternalLocalPort);
			public HRESULT UpdateRemoteAddress(BSTR bstrRemoteAddress, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalPort) mut => VT.UpdateRemoteAddress(ref this, bstrRemoteAddress, bstrInternalLocalAddress, lInternalLocalPort, bstrExternalLocalAddress, lExternalLocalPort);
			public HRESULT ReleaseMapping(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalAddress) mut => VT.ReleaseMapping(ref this, bstrInternalLocalAddress, lInternalLocalPort, bstrExternalLocalAddress, lExternalLocalAddress);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPortManager self, BSTR bstrRemoteAddress, RTC_PORT_TYPE enPortType, out BSTR pbstrInternalLocalAddress, out int32 plInternalLocalPort, out BSTR pbstrExternalLocalAddress, out int32 plExternalLocalPort) GetMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPortManager self, BSTR bstrRemoteAddress, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalPort) UpdateRemoteAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPortManager self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort, BSTR bstrExternalLocalAddress, int32 lExternalLocalAddress) ReleaseMapping;
			}
		}
		[CRepr]
		public struct IRTCSessionPortManagement : IUnknown
		{
			public const new Guid IID = .(0xa072f1d6, 0x0286, 0x4e1f, 0x85, 0xf2, 0x17, 0xa2, 0x94, 0x84, 0x56, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPortManager(ref IRTCPortManager pPortManager) mut => VT.SetPortManager(ref this, ref pPortManager);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionPortManagement self, ref IRTCPortManager pPortManager) SetPortManager;
			}
		}
		[CRepr]
		public struct IRTCClientPortManagement : IUnknown
		{
			public const new Guid IID = .(0xd5df3f03, 0x4bde, 0x4417, 0xae, 0xfe, 0x71, 0x17, 0x7b, 0xda, 0xea, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListenAddressAndPort(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) mut => VT.StartListenAddressAndPort(ref this, bstrInternalLocalAddress, lInternalLocalPort);
			public HRESULT StopListenAddressAndPort(BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) mut => VT.StopListenAddressAndPort(ref this, bstrInternalLocalAddress, lInternalLocalPort);
			public HRESULT GetPortRange(RTC_PORT_TYPE enPortType, out int32 plMinValue, out int32 plMaxValue) mut => VT.GetPortRange(ref this, enPortType, out plMinValue, out plMaxValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPortManagement self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StartListenAddressAndPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPortManagement self, BSTR bstrInternalLocalAddress, int32 lInternalLocalPort) StopListenAddressAndPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCClientPortManagement self, RTC_PORT_TYPE enPortType, out int32 plMinValue, out int32 plMaxValue) GetPortRange;
			}
		}
		[CRepr]
		public struct IRTCUserSearch : IUnknown
		{
			public const new Guid IID = .(0xb619882b, 0x860c, 0x4db4, 0xbe, 0x1b, 0x69, 0x3b, 0x65, 0x05, 0xbb, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateQuery(out IRTCUserSearchQuery* ppQuery) mut => VT.CreateQuery(ref this, out ppQuery);
			public HRESULT ExecuteSearch(ref IRTCUserSearchQuery pQuery, ref IRTCProfile pProfile, int lCookie) mut => VT.ExecuteSearch(ref this, ref pQuery, ref pProfile, lCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearch self, out IRTCUserSearchQuery* ppQuery) CreateQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearch self, ref IRTCUserSearchQuery pQuery, ref IRTCProfile pProfile, int lCookie) ExecuteSearch;
			}
		}
		[CRepr]
		public struct IRTCUserSearchQuery : IUnknown
		{
			public const new Guid IID = .(0x288300f5, 0xd23a, 0x4365, 0x9a, 0x73, 0x99, 0x85, 0xc9, 0x8c, 0x28, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_SearchTerm(BSTR bstrName, BSTR bstrValue) mut => VT.put_SearchTerm(ref this, bstrName, bstrValue);
			public HRESULT get_SearchTerm(BSTR bstrName, out BSTR pbstrValue) mut => VT.get_SearchTerm(ref this, bstrName, out pbstrValue);
			public HRESULT get_SearchTerms(out BSTR pbstrNames) mut => VT.get_SearchTerms(ref this, out pbstrNames);
			public HRESULT put_SearchPreference(RTC_USER_SEARCH_PREFERENCE enPreference, int32 lValue) mut => VT.put_SearchPreference(ref this, enPreference, lValue);
			public HRESULT get_SearchPreference(RTC_USER_SEARCH_PREFERENCE enPreference, out int32 plValue) mut => VT.get_SearchPreference(ref this, enPreference, out plValue);
			public HRESULT put_SearchDomain(BSTR bstrDomain) mut => VT.put_SearchDomain(ref this, bstrDomain);
			public HRESULT get_SearchDomain(out BSTR pbstrDomain) mut => VT.get_SearchDomain(ref this, out pbstrDomain);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, BSTR bstrName, BSTR bstrValue) put_SearchTerm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, BSTR bstrName, out BSTR pbstrValue) get_SearchTerm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, out BSTR pbstrNames) get_SearchTerms;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, RTC_USER_SEARCH_PREFERENCE enPreference, int32 lValue) put_SearchPreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, RTC_USER_SEARCH_PREFERENCE enPreference, out int32 plValue) get_SearchPreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, BSTR bstrDomain) put_SearchDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchQuery self, out BSTR pbstrDomain) get_SearchDomain;
			}
		}
		[CRepr]
		public struct IRTCUserSearchResult : IUnknown
		{
			public const new Guid IID = .(0x851278b2, 0x9592, 0x480f, 0x8d, 0xb5, 0x2d, 0xe8, 0x6b, 0x26, 0xb5, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(RTC_USER_SEARCH_COLUMN enColumn, out BSTR pbstrValue) mut => VT.get_Value(ref this, enColumn, out pbstrValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResult self, RTC_USER_SEARCH_COLUMN enColumn, out BSTR pbstrValue) get_Value;
			}
		}
		[CRepr]
		public struct IRTCEnumUserSearchResults : IUnknown
		{
			public const new Guid IID = .(0x83d4d877, 0xaa5d, 0x4a5b, 0x8d, 0x0e, 0x00, 0x2a, 0x80, 0x67, 0xe0, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCUserSearchResult** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumUserSearchResults* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumUserSearchResults self, uint32 celt, IRTCUserSearchResult** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumUserSearchResults self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumUserSearchResults self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumUserSearchResults self, out IRTCEnumUserSearchResults* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCUserSearchResultsEvent : IDispatch
		{
			public const new Guid IID = .(0xd8c8c3cd, 0x7fac, 0x4088, 0x81, 0xc5, 0xc2, 0x4c, 0xbc, 0x09, 0x38, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumerateResults(out IRTCEnumUserSearchResults* ppEnum) mut => VT.EnumerateResults(ref this, out ppEnum);
			public HRESULT get_Results(out IRTCCollection* ppCollection) mut => VT.get_Results(ref this, out ppCollection);
			public HRESULT get_Profile(out IRTCProfile2* ppProfile) mut => VT.get_Profile(ref this, out ppProfile);
			public HRESULT get_Query(out IRTCUserSearchQuery* ppQuery) mut => VT.get_Query(ref this, out ppQuery);
			public HRESULT get_Cookie(out int plCookie) mut => VT.get_Cookie(ref this, out plCookie);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_MoreAvailable(out int16 pfMoreAvailable) mut => VT.get_MoreAvailable(ref this, out pfMoreAvailable);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out IRTCEnumUserSearchResults* ppEnum) EnumerateResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out IRTCCollection* ppCollection) get_Results;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out IRTCProfile2* ppProfile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out IRTCUserSearchQuery* ppQuery) get_Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out int plCookie) get_Cookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCUserSearchResultsEvent self, out int16 pfMoreAvailable) get_MoreAvailable;
			}
		}
		[CRepr]
		public struct IRTCSessionReferStatusEvent : IDispatch
		{
			public const new Guid IID = .(0x3d8fc2cd, 0x5d76, 0x44ab, 0xbb, 0x68, 0x2a, 0x80, 0x35, 0x3b, 0x34, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession2* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_ReferStatus(out RTC_SESSION_REFER_STATUS penReferStatus) mut => VT.get_ReferStatus(ref this, out penReferStatus);
			public HRESULT get_StatusCode(out int32 plStatusCode) mut => VT.get_StatusCode(ref this, out plStatusCode);
			public HRESULT get_StatusText(out BSTR pbstrStatusText) mut => VT.get_StatusText(ref this, out pbstrStatusText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferStatusEvent self, out IRTCSession2* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferStatusEvent self, out RTC_SESSION_REFER_STATUS penReferStatus) get_ReferStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferStatusEvent self, out int32 plStatusCode) get_StatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferStatusEvent self, out BSTR pbstrStatusText) get_StatusText;
			}
		}
		[CRepr]
		public struct IRTCSessionReferredEvent : IDispatch
		{
			public const new Guid IID = .(0x176a6828, 0x4fcc, 0x4f28, 0xa8, 0x62, 0x04, 0x59, 0x7a, 0x6c, 0xf1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Session(out IRTCSession2* ppSession) mut => VT.get_Session(ref this, out ppSession);
			public HRESULT get_ReferredByURI(out BSTR pbstrReferredByURI) mut => VT.get_ReferredByURI(ref this, out pbstrReferredByURI);
			public HRESULT get_ReferToURI(out BSTR pbstrReferoURI) mut => VT.get_ReferToURI(ref this, out pbstrReferoURI);
			public HRESULT get_ReferCookie(out BSTR pbstrReferCookie) mut => VT.get_ReferCookie(ref this, out pbstrReferCookie);
			public HRESULT Accept() mut => VT.Accept(ref this);
			public HRESULT Reject() mut => VT.Reject(ref this);
			public HRESULT SetReferredSessionState(RTC_SESSION_STATE enState) mut => VT.SetReferredSessionState(ref this, enState);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self, out IRTCSession2* ppSession) get_Session;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self, out BSTR pbstrReferredByURI) get_ReferredByURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self, out BSTR pbstrReferoURI) get_ReferToURI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self, out BSTR pbstrReferCookie) get_ReferCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self) Accept;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self) Reject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionReferredEvent self, RTC_SESSION_STATE enState) SetReferredSessionState;
			}
		}
		[CRepr]
		public struct IRTCSessionDescriptionManager : IUnknown
		{
			public const new Guid IID = .(0xba7f518e, 0xd336, 0x4070, 0x93, 0xa6, 0x86, 0x53, 0x95, 0xc8, 0x43, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EvaluateSessionDescription(BSTR bstrContentType, BSTR bstrSessionDescription, out int16 pfApplicationSession) mut => VT.EvaluateSessionDescription(ref this, bstrContentType, bstrSessionDescription, out pfApplicationSession);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCSessionDescriptionManager self, BSTR bstrContentType, BSTR bstrSessionDescription, out int16 pfApplicationSession) EvaluateSessionDescription;
			}
		}
		[CRepr]
		public struct IRTCEnumPresenceDevices : IUnknown
		{
			public const new Guid IID = .(0x708c2ab7, 0x8bf8, 0x42f8, 0x8c, 0x7d, 0x63, 0x51, 0x97, 0xad, 0x55, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IRTCPresenceDevice** ppElements, uint32* pceltFetched) mut => VT.Next(ref this, celt, ppElements, pceltFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Clone(out IRTCEnumPresenceDevices* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumPresenceDevices self, uint32 celt, IRTCPresenceDevice** ppElements, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumPresenceDevices self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumPresenceDevices self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCEnumPresenceDevices self, out IRTCEnumPresenceDevices* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRTCPresenceDevice : IUnknown
		{
			public const new Guid IID = .(0xbc6a90dd, 0xad9a, 0x48da, 0x9b, 0x0c, 0x25, 0x15, 0xe3, 0x85, 0x21, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out RTC_PRESENCE_STATUS penStatus) mut => VT.get_Status(ref this, out penStatus);
			public HRESULT get_Notes(out BSTR pbstrNotes) mut => VT.get_Notes(ref this, out pbstrNotes);
			public HRESULT get_PresenceProperty(RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) mut => VT.get_PresenceProperty(ref this, enProperty, out pbstrProperty);
			public HRESULT GetPresenceData(out BSTR pbstrNamespace, out BSTR pbstrData) mut => VT.GetPresenceData(ref this, out pbstrNamespace, out pbstrData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDevice self, out RTC_PRESENCE_STATUS penStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDevice self, out BSTR pbstrNotes) get_Notes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDevice self, RTC_PRESENCE_PROPERTY enProperty, out BSTR pbstrProperty) get_PresenceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRTCPresenceDevice self, out BSTR pbstrNamespace, out BSTR pbstrData) GetPresenceData;
			}
		}
		[CRepr]
		public struct IRTCDispatchEventNotification : IDispatch
		{
			public const new Guid IID = .(0x176ddfbe, 0xfec0, 0x4d55, 0xbc, 0x87, 0x84, 0xcf, 0xf1, 0xef, 0x7f, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ITransportSettingsInternal : IUnknown
		{
			public const new Guid IID = .(0x5123e076, 0x29e3, 0x4bfd, 0x84, 0xfe, 0x01, 0x92, 0xd4, 0x11, 0xe3, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySetting(out TRANSPORT_SETTING Setting) mut => VT.ApplySetting(ref this, out Setting);
			public HRESULT QuerySetting(out TRANSPORT_SETTING Setting) mut => VT.QuerySetting(ref this, out Setting);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransportSettingsInternal self, out TRANSPORT_SETTING Setting) ApplySetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransportSettingsInternal self, out TRANSPORT_SETTING Setting) QuerySetting;
			}
		}
		[CRepr]
		public struct INetworkTransportSettings : IUnknown
		{
			public const new Guid IID = .(0x5e7abb2c, 0xf2c1, 0x4a61, 0xbd, 0x35, 0xde, 0xb7, 0xa0, 0x8a, 0xb0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySetting(in TRANSPORT_SETTING_ID SettingId, uint32 LengthIn, uint8* ValueIn, out uint32 LengthOut, uint8** ValueOut) mut => VT.ApplySetting(ref this, SettingId, LengthIn, ValueIn, out LengthOut, ValueOut);
			public HRESULT QuerySetting(in TRANSPORT_SETTING_ID SettingId, uint32 LengthIn, uint8* ValueIn, out uint32 LengthOut, uint8** ValueOut) mut => VT.QuerySetting(ref this, SettingId, LengthIn, ValueIn, out LengthOut, ValueOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkTransportSettings self, in TRANSPORT_SETTING_ID SettingId, uint32 LengthIn, uint8* ValueIn, out uint32 LengthOut, uint8** ValueOut) ApplySetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkTransportSettings self, in TRANSPORT_SETTING_ID SettingId, uint32 LengthIn, uint8* ValueIn, out uint32 LengthOut, uint8** ValueOut) QuerySetting;
			}
		}
		[CRepr]
		public struct INotificationTransportSync : IUnknown
		{
			public const new Guid IID = .(0x79eb1402, 0x0ab8, 0x49c0, 0x9e, 0x14, 0xa1, 0xae, 0x4b, 0xa9, 0x30, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompleteDelivery() mut => VT.CompleteDelivery(ref this);
			public HRESULT Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INotificationTransportSync self) CompleteDelivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INotificationTransportSync self) Flush;
			}
		}
		
	}
}
