using System;

// namespace Devices.AllJoyn
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 QCC_TRUE = 1;
		public const uint32 QCC_FALSE = 0;
		public const uint32 ALLJOYN_MESSAGE_FLAG_NO_REPLY_EXPECTED = 1;
		public const uint32 ALLJOYN_MESSAGE_FLAG_AUTO_START = 2;
		public const uint32 ALLJOYN_MESSAGE_FLAG_ALLOW_REMOTE_MSG = 4;
		public const uint32 ALLJOYN_MESSAGE_FLAG_SESSIONLESS = 16;
		public const uint32 ALLJOYN_MESSAGE_FLAG_GLOBAL_BROADCAST = 32;
		public const uint32 ALLJOYN_MESSAGE_FLAG_ENCRYPTED = 128;
		public const uint32 ALLJOYN_TRAFFIC_TYPE_MESSAGES = 1;
		public const uint32 ALLJOYN_TRAFFIC_TYPE_RAW_UNRELIABLE = 2;
		public const uint32 ALLJOYN_TRAFFIC_TYPE_RAW_RELIABLE = 4;
		public const uint32 ALLJOYN_PROXIMITY_ANY = 255;
		public const uint32 ALLJOYN_PROXIMITY_PHYSICAL = 1;
		public const uint32 ALLJOYN_PROXIMITY_NETWORK = 2;
		public const uint32 ALLJOYN_READ_READY = 1;
		public const uint32 ALLJOYN_WRITE_READY = 2;
		public const uint32 ALLJOYN_DISCONNECTED = 4;
		public const uint8 ALLJOYN_LITTLE_ENDIAN = 108;
		public const uint8 ALLJOYN_BIG_ENDIAN = 66;
		public const uint32 ALLJOYN_MESSAGE_DEFAULT_TIMEOUT = 25000;
		public const uint16 ALLJOYN_CRED_PASSWORD = 1;
		public const uint16 ALLJOYN_CRED_USER_NAME = 2;
		public const uint16 ALLJOYN_CRED_CERT_CHAIN = 4;
		public const uint16 ALLJOYN_CRED_PRIVATE_KEY = 8;
		public const uint16 ALLJOYN_CRED_LOGON_ENTRY = 16;
		public const uint16 ALLJOYN_CRED_EXPIRATION = 32;
		public const uint16 ALLJOYN_CRED_NEW_PASSWORD = 4097;
		public const uint16 ALLJOYN_CRED_ONE_TIME_PWD = 8193;
		public const uint8 ALLJOYN_PROP_ACCESS_READ = 1;
		public const uint8 ALLJOYN_PROP_ACCESS_WRITE = 2;
		public const uint8 ALLJOYN_PROP_ACCESS_RW = 3;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_NO_REPLY = 1;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_DEPRECATED = 2;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_SESSIONCAST = 4;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_SESSIONLESS = 8;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_UNICAST = 16;
		public const uint8 ALLJOYN_MEMBER_ANNOTATE_GLOBAL_BROADCAST = 32;
		
		// --- Typedefs ---
		
		public typealias alljoyn_aboutdata = int;
		public typealias alljoyn_aboutdatalistener = int;
		public typealias alljoyn_aboutlistener = int;
		public typealias alljoyn_aboutobj = int;
		public typealias alljoyn_aboutobjectdescription = int;
		public typealias alljoyn_aboutproxy = int;
		public typealias alljoyn_applicationstatelistener = int;
		public typealias alljoyn_authlistener = int;
		public typealias alljoyn_autopinger = int;
		public typealias alljoyn_busattachment = int;
		public typealias alljoyn_buslistener = int;
		public typealias alljoyn_busobject = int;
		public typealias alljoyn_credentials = int;
		public typealias alljoyn_interfacedescription = int;
		public typealias alljoyn_keystore = int;
		public typealias alljoyn_keystorelistener = int;
		public typealias alljoyn_message = int;
		public typealias alljoyn_msgarg = int;
		public typealias alljoyn_observer = int;
		public typealias alljoyn_observerlistener = int;
		public typealias alljoyn_permissionconfigurationlistener = int;
		public typealias alljoyn_permissionconfigurator = int;
		public typealias alljoyn_pinglistener = int;
		public typealias alljoyn_proxybusobject = int;
		public typealias alljoyn_proxybusobject_ref = int;
		public typealias alljoyn_securityapplicationproxy = int;
		public typealias alljoyn_sessionlistener = int;
		public typealias alljoyn_sessionopts = int;
		public typealias alljoyn_sessionportlistener = int;
		
		// --- Enums ---
		
		public enum alljoyn_about_announceflag : int32
		{
			UNANNOUNCED = 0,
			ANNOUNCED = 1,
		}
		public enum QStatus : int32
		{
			OK = 0,
			FAIL = 1,
			UTF_CONVERSION_FAILED = 2,
			BUFFER_TOO_SMALL = 3,
			OS_ERROR = 4,
			OUT_OF_MEMORY = 5,
			SOCKET_BIND_ERROR = 6,
			INIT_FAILED = 7,
			WOULDBLOCK = 8,
			NOT_IMPLEMENTED = 9,
			TIMEOUT = 10,
			SOCK_OTHER_END_CLOSED = 11,
			BAD_ARG_1 = 12,
			BAD_ARG_2 = 13,
			BAD_ARG_3 = 14,
			BAD_ARG_4 = 15,
			BAD_ARG_5 = 16,
			BAD_ARG_6 = 17,
			BAD_ARG_7 = 18,
			BAD_ARG_8 = 19,
			INVALID_ADDRESS = 20,
			INVALID_DATA = 21,
			READ_ERROR = 22,
			WRITE_ERROR = 23,
			OPEN_FAILED = 24,
			PARSE_ERROR = 25,
			END_OF_DATA = 26,
			CONN_REFUSED = 27,
			BAD_ARG_COUNT = 28,
			WARNING = 29,
			EOF = 30,
			DEADLOCK = 31,
			COMMON_ERRORS = 4096,
			STOPPING_THREAD = 4097,
			ALERTED_THREAD = 4098,
			XML_MALFORMED = 4099,
			AUTH_FAIL = 4100,
			AUTH_USER_REJECT = 4101,
			NO_SUCH_ALARM = 4102,
			TIMER_FALLBEHIND = 4103,
			SSL_ERRORS = 4104,
			SSL_INIT = 4105,
			SSL_CONNECT = 4106,
			SSL_VERIFY = 4107,
			EXTERNAL_THREAD = 4108,
			CRYPTO_ERROR = 4109,
			CRYPTO_TRUNCATED = 4110,
			CRYPTO_KEY_UNAVAILABLE = 4111,
			BAD_HOSTNAME = 4112,
			CRYPTO_KEY_UNUSABLE = 4113,
			EMPTY_KEY_BLOB = 4114,
			CORRUPT_KEYBLOB = 4115,
			INVALID_KEY_ENCODING = 4116,
			DEAD_THREAD = 4117,
			THREAD_RUNNING = 4118,
			THREAD_STOPPING = 4119,
			BAD_STRING_ENCODING = 4120,
			CRYPTO_INSUFFICIENT_SECURITY = 4121,
			CRYPTO_ILLEGAL_PARAMETERS = 4122,
			CRYPTO_HASH_UNINITIALIZED = 4123,
			THREAD_NO_WAIT = 4124,
			TIMER_EXITING = 4125,
			INVALID_GUID = 4126,
			THREADPOOL_EXHAUSTED = 4127,
			THREADPOOL_STOPPING = 4128,
			INVALID_STREAM = 4129,
			TIMER_FULL = 4130,
			IODISPATCH_STOPPING = 4131,
			SLAP_INVALID_PACKET_LEN = 4132,
			SLAP_HDR_CHECKSUM_ERROR = 4133,
			SLAP_INVALID_PACKET_TYPE = 4134,
			SLAP_LEN_MISMATCH = 4135,
			SLAP_PACKET_TYPE_MISMATCH = 4136,
			SLAP_CRC_ERROR = 4137,
			SLAP_ERROR = 4138,
			SLAP_OTHER_END_CLOSED = 4139,
			TIMER_NOT_ALLOWED = 4140,
			NOT_CONN = 4141,
			XML_CONVERTER_ERROR = 8192,
			XML_INVALID_RULES_COUNT = 8193,
			XML_INTERFACE_MEMBERS_MISSING = 8194,
			XML_INVALID_MEMBER_TYPE = 8195,
			XML_INVALID_MEMBER_ACTION = 8196,
			XML_MEMBER_DENY_ACTION_WITH_OTHER = 8197,
			XML_INVALID_ANNOTATIONS_COUNT = 8198,
			XML_INVALID_ELEMENT_NAME = 8199,
			XML_INVALID_ATTRIBUTE_VALUE = 8200,
			XML_INVALID_SECURITY_LEVEL_ANNOTATION_VALUE = 8201,
			XML_INVALID_ELEMENT_CHILDREN_COUNT = 8202,
			XML_INVALID_POLICY_VERSION = 8203,
			XML_INVALID_POLICY_SERIAL_NUMBER = 8204,
			XML_INVALID_ACL_PEER_TYPE = 8205,
			XML_INVALID_ACL_PEER_CHILDREN_COUNT = 8206,
			XML_ACL_ALL_TYPE_PEER_WITH_OTHERS = 8207,
			XML_INVALID_ACL_PEER_PUBLIC_KEY = 8208,
			XML_ACL_PEER_NOT_UNIQUE = 8209,
			XML_ACL_PEER_PUBLIC_KEY_SET = 8210,
			XML_ACLS_MISSING = 8211,
			XML_ACL_PEERS_MISSING = 8212,
			XML_INVALID_OBJECT_PATH = 8213,
			XML_INVALID_INTERFACE_NAME = 8214,
			XML_INVALID_MEMBER_NAME = 8215,
			XML_INVALID_MANIFEST_VERSION = 8216,
			XML_INVALID_OID = 8217,
			XML_INVALID_BASE64 = 8218,
			XML_INTERFACE_NAME_NOT_UNIQUE = 8219,
			XML_MEMBER_NAME_NOT_UNIQUE = 8220,
			XML_OBJECT_PATH_NOT_UNIQUE = 8221,
			XML_ANNOTATION_NOT_UNIQUE = 8222,
			NONE = 65535,
			BUS_ERRORS = 36864,
			BUS_READ_ERROR = 36865,
			BUS_WRITE_ERROR = 36866,
			BUS_BAD_VALUE_TYPE = 36867,
			BUS_BAD_HEADER_FIELD = 36868,
			BUS_BAD_SIGNATURE = 36869,
			BUS_BAD_OBJ_PATH = 36870,
			BUS_BAD_MEMBER_NAME = 36871,
			BUS_BAD_INTERFACE_NAME = 36872,
			BUS_BAD_ERROR_NAME = 36873,
			BUS_BAD_BUS_NAME = 36874,
			BUS_NAME_TOO_LONG = 36875,
			BUS_BAD_LENGTH = 36876,
			BUS_BAD_VALUE = 36877,
			BUS_BAD_HDR_FLAGS = 36878,
			BUS_BAD_BODY_LEN = 36879,
			BUS_BAD_HEADER_LEN = 36880,
			BUS_UNKNOWN_SERIAL = 36881,
			BUS_UNKNOWN_PATH = 36882,
			BUS_UNKNOWN_INTERFACE = 36883,
			BUS_ESTABLISH_FAILED = 36884,
			BUS_UNEXPECTED_SIGNATURE = 36885,
			BUS_INTERFACE_MISSING = 36886,
			BUS_PATH_MISSING = 36887,
			BUS_MEMBER_MISSING = 36888,
			BUS_REPLY_SERIAL_MISSING = 36889,
			BUS_ERROR_NAME_MISSING = 36890,
			BUS_INTERFACE_NO_SUCH_MEMBER = 36891,
			BUS_NO_SUCH_OBJECT = 36892,
			BUS_OBJECT_NO_SUCH_MEMBER = 36893,
			BUS_OBJECT_NO_SUCH_INTERFACE = 36894,
			BUS_NO_SUCH_INTERFACE = 36895,
			BUS_MEMBER_NO_SUCH_SIGNATURE = 36896,
			BUS_NOT_NUL_TERMINATED = 36897,
			BUS_NO_SUCH_PROPERTY = 36898,
			BUS_SET_WRONG_SIGNATURE = 36899,
			BUS_PROPERTY_VALUE_NOT_SET = 36900,
			BUS_PROPERTY_ACCESS_DENIED = 36901,
			BUS_NO_TRANSPORTS = 36902,
			BUS_BAD_TRANSPORT_ARGS = 36903,
			BUS_NO_ROUTE = 36904,
			BUS_NO_ENDPOINT = 36905,
			BUS_BAD_SEND_PARAMETER = 36906,
			BUS_UNMATCHED_REPLY_SERIAL = 36907,
			BUS_BAD_SENDER_ID = 36908,
			BUS_TRANSPORT_NOT_STARTED = 36909,
			BUS_EMPTY_MESSAGE = 36910,
			BUS_NOT_OWNER = 36911,
			BUS_SET_PROPERTY_REJECTED = 36912,
			BUS_CONNECT_FAILED = 36913,
			BUS_REPLY_IS_ERROR_MESSAGE = 36914,
			BUS_NOT_AUTHENTICATING = 36915,
			BUS_NO_LISTENER = 36916,
			BUS_NOT_ALLOWED = 36918,
			BUS_WRITE_QUEUE_FULL = 36919,
			BUS_ENDPOINT_CLOSING = 36920,
			BUS_INTERFACE_MISMATCH = 36921,
			BUS_MEMBER_ALREADY_EXISTS = 36922,
			BUS_PROPERTY_ALREADY_EXISTS = 36923,
			BUS_IFACE_ALREADY_EXISTS = 36924,
			BUS_ERROR_RESPONSE = 36925,
			BUS_BAD_XML = 36926,
			BUS_BAD_CHILD_PATH = 36927,
			BUS_OBJ_ALREADY_EXISTS = 36928,
			BUS_OBJ_NOT_FOUND = 36929,
			BUS_CANNOT_EXPAND_MESSAGE = 36930,
			BUS_NOT_COMPRESSED = 36931,
			BUS_ALREADY_CONNECTED = 36932,
			BUS_NOT_CONNECTED = 36933,
			BUS_ALREADY_LISTENING = 36934,
			BUS_KEY_UNAVAILABLE = 36935,
			BUS_TRUNCATED = 36936,
			BUS_KEY_STORE_NOT_LOADED = 36937,
			BUS_NO_AUTHENTICATION_MECHANISM = 36938,
			BUS_BUS_ALREADY_STARTED = 36939,
			BUS_BUS_NOT_STARTED = 36940,
			BUS_KEYBLOB_OP_INVALID = 36941,
			BUS_INVALID_HEADER_CHECKSUM = 36942,
			BUS_MESSAGE_NOT_ENCRYPTED = 36943,
			BUS_INVALID_HEADER_SERIAL = 36944,
			BUS_TIME_TO_LIVE_EXPIRED = 36945,
			BUS_HDR_EXPANSION_INVALID = 36946,
			BUS_MISSING_COMPRESSION_TOKEN = 36947,
			BUS_NO_PEER_GUID = 36948,
			BUS_MESSAGE_DECRYPTION_FAILED = 36949,
			BUS_SECURITY_FATAL = 36950,
			BUS_KEY_EXPIRED = 36951,
			BUS_CORRUPT_KEYSTORE = 36952,
			BUS_NO_CALL_FOR_REPLY = 36953,
			BUS_NOT_A_COMPLETE_TYPE = 36954,
			BUS_POLICY_VIOLATION = 36955,
			BUS_NO_SUCH_SERVICE = 36956,
			BUS_TRANSPORT_NOT_AVAILABLE = 36957,
			BUS_INVALID_AUTH_MECHANISM = 36958,
			BUS_KEYSTORE_VERSION_MISMATCH = 36959,
			BUS_BLOCKING_CALL_NOT_ALLOWED = 36960,
			BUS_SIGNATURE_MISMATCH = 36961,
			BUS_STOPPING = 36962,
			BUS_METHOD_CALL_ABORTED = 36963,
			BUS_CANNOT_ADD_INTERFACE = 36964,
			BUS_CANNOT_ADD_HANDLER = 36965,
			BUS_KEYSTORE_NOT_LOADED = 36966,
			BUS_NO_SUCH_HANDLE = 36971,
			BUS_HANDLES_NOT_ENABLED = 36972,
			BUS_HANDLES_MISMATCH = 36973,
			BUS_NO_SESSION = 36975,
			BUS_ELEMENT_NOT_FOUND = 36976,
			BUS_NOT_A_DICTIONARY = 36977,
			BUS_WAIT_FAILED = 36978,
			BUS_BAD_SESSION_OPTS = 36980,
			BUS_CONNECTION_REJECTED = 36981,
			DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER = 36982,
			DBUS_REQUEST_NAME_REPLY_IN_QUEUE = 36983,
			DBUS_REQUEST_NAME_REPLY_EXISTS = 36984,
			DBUS_REQUEST_NAME_REPLY_ALREADY_OWNER = 36985,
			DBUS_RELEASE_NAME_REPLY_RELEASED = 36986,
			DBUS_RELEASE_NAME_REPLY_NON_EXISTENT = 36987,
			DBUS_RELEASE_NAME_REPLY_NOT_OWNER = 36988,
			DBUS_START_REPLY_ALREADY_RUNNING = 36990,
			ALLJOYN_BINDSESSIONPORT_REPLY_ALREADY_EXISTS = 36992,
			ALLJOYN_BINDSESSIONPORT_REPLY_FAILED = 36993,
			ALLJOYN_JOINSESSION_REPLY_NO_SESSION = 36995,
			ALLJOYN_JOINSESSION_REPLY_UNREACHABLE = 36996,
			ALLJOYN_JOINSESSION_REPLY_CONNECT_FAILED = 36997,
			ALLJOYN_JOINSESSION_REPLY_REJECTED = 36998,
			ALLJOYN_JOINSESSION_REPLY_BAD_SESSION_OPTS = 36999,
			ALLJOYN_JOINSESSION_REPLY_FAILED = 37000,
			ALLJOYN_LEAVESESSION_REPLY_NO_SESSION = 37002,
			ALLJOYN_LEAVESESSION_REPLY_FAILED = 37003,
			ALLJOYN_ADVERTISENAME_REPLY_TRANSPORT_NOT_AVAILABLE = 37004,
			ALLJOYN_ADVERTISENAME_REPLY_ALREADY_ADVERTISING = 37005,
			ALLJOYN_ADVERTISENAME_REPLY_FAILED = 37006,
			ALLJOYN_CANCELADVERTISENAME_REPLY_FAILED = 37008,
			ALLJOYN_FINDADVERTISEDNAME_REPLY_TRANSPORT_NOT_AVAILABLE = 37009,
			ALLJOYN_FINDADVERTISEDNAME_REPLY_ALREADY_DISCOVERING = 37010,
			ALLJOYN_FINDADVERTISEDNAME_REPLY_FAILED = 37011,
			ALLJOYN_CANCELFINDADVERTISEDNAME_REPLY_FAILED = 37013,
			BUS_UNEXPECTED_DISPOSITION = 37014,
			BUS_INTERFACE_ACTIVATED = 37015,
			ALLJOYN_UNBINDSESSIONPORT_REPLY_BAD_PORT = 37016,
			ALLJOYN_UNBINDSESSIONPORT_REPLY_FAILED = 37017,
			ALLJOYN_BINDSESSIONPORT_REPLY_INVALID_OPTS = 37018,
			ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED = 37019,
			BUS_SELF_CONNECT = 37020,
			BUS_SECURITY_NOT_ENABLED = 37021,
			BUS_LISTENER_ALREADY_SET = 37022,
			BUS_PEER_AUTH_VERSION_MISMATCH = 37023,
			ALLJOYN_SETLINKTIMEOUT_REPLY_NOT_SUPPORTED = 37024,
			ALLJOYN_SETLINKTIMEOUT_REPLY_NO_DEST_SUPPORT = 37025,
			ALLJOYN_SETLINKTIMEOUT_REPLY_FAILED = 37026,
			ALLJOYN_ACCESS_PERMISSION_WARNING = 37027,
			ALLJOYN_ACCESS_PERMISSION_ERROR = 37028,
			BUS_DESTINATION_NOT_AUTHENTICATED = 37029,
			BUS_ENDPOINT_REDIRECTED = 37030,
			BUS_AUTHENTICATION_PENDING = 37031,
			BUS_NOT_AUTHORIZED = 37032,
			PACKET_BUS_NO_SUCH_CHANNEL = 37033,
			PACKET_BAD_FORMAT = 37034,
			PACKET_CONNECT_TIMEOUT = 37035,
			PACKET_CHANNEL_FAIL = 37036,
			PACKET_TOO_LARGE = 37037,
			PACKET_BAD_PARAMETER = 37038,
			PACKET_BAD_CRC = 37039,
			RENDEZVOUS_SERVER_DEACTIVATED_USER = 37067,
			RENDEZVOUS_SERVER_UNKNOWN_USER = 37068,
			UNABLE_TO_CONNECT_TO_RENDEZVOUS_SERVER = 37069,
			NOT_CONNECTED_TO_RENDEZVOUS_SERVER = 37070,
			UNABLE_TO_SEND_MESSAGE_TO_RENDEZVOUS_SERVER = 37071,
			INVALID_RENDEZVOUS_SERVER_INTERFACE_MESSAGE = 37072,
			INVALID_PERSISTENT_CONNECTION_MESSAGE_RESPONSE = 37073,
			INVALID_ON_DEMAND_CONNECTION_MESSAGE_RESPONSE = 37074,
			INVALID_HTTP_METHOD_USED_FOR_RENDEZVOUS_SERVER_INTERFACE_MESSAGE = 37075,
			RENDEZVOUS_SERVER_ERR500_INTERNAL_ERROR = 37076,
			RENDEZVOUS_SERVER_ERR503_STATUS_UNAVAILABLE = 37077,
			RENDEZVOUS_SERVER_ERR401_UNAUTHORIZED_REQUEST = 37078,
			RENDEZVOUS_SERVER_UNRECOVERABLE_ERROR = 37079,
			RENDEZVOUS_SERVER_ROOT_CERTIFICATE_UNINITIALIZED = 37080,
			BUS_NO_SUCH_ANNOTATION = 37081,
			BUS_ANNOTATION_ALREADY_EXISTS = 37082,
			SOCK_CLOSING = 37083,
			NO_SUCH_DEVICE = 37084,
			P2P = 37085,
			P2P_TIMEOUT = 37086,
			P2P_NOT_CONNECTED = 37087,
			BAD_TRANSPORT_MASK = 37088,
			PROXIMITY_CONNECTION_ESTABLISH_FAIL = 37089,
			PROXIMITY_NO_PEERS_FOUND = 37090,
			BUS_OBJECT_NOT_REGISTERED = 37091,
			P2P_DISABLED = 37092,
			P2P_BUSY = 37093,
			BUS_INCOMPATIBLE_DAEMON = 37094,
			P2P_NO_GO = 37095,
			P2P_NO_STA = 37096,
			P2P_FORBIDDEN = 37097,
			ALLJOYN_ONAPPSUSPEND_REPLY_FAILED = 37098,
			ALLJOYN_ONAPPSUSPEND_REPLY_UNSUPPORTED = 37099,
			ALLJOYN_ONAPPRESUME_REPLY_FAILED = 37100,
			ALLJOYN_ONAPPRESUME_REPLY_UNSUPPORTED = 37101,
			BUS_NO_SUCH_MESSAGE = 37102,
			ALLJOYN_REMOVESESSIONMEMBER_REPLY_NO_SESSION = 37103,
			ALLJOYN_REMOVESESSIONMEMBER_NOT_BINDER = 37104,
			ALLJOYN_REMOVESESSIONMEMBER_NOT_MULTIPOINT = 37105,
			ALLJOYN_REMOVESESSIONMEMBER_NOT_FOUND = 37106,
			ALLJOYN_REMOVESESSIONMEMBER_INCOMPATIBLE_REMOTE_DAEMON = 37107,
			ALLJOYN_REMOVESESSIONMEMBER_REPLY_FAILED = 37108,
			BUS_REMOVED_BY_BINDER = 37109,
			BUS_MATCH_RULE_NOT_FOUND = 37110,
			ALLJOYN_PING_FAILED = 37111,
			ALLJOYN_PING_REPLY_UNREACHABLE = 37112,
			UDP_MSG_TOO_LONG = 37113,
			UDP_DEMUX_NO_ENDPOINT = 37114,
			UDP_NO_NETWORK = 37115,
			UDP_UNEXPECTED_LENGTH = 37116,
			UDP_UNEXPECTED_FLOW = 37117,
			UDP_DISCONNECT = 37118,
			UDP_NOT_IMPLEMENTED = 37119,
			UDP_NO_LISTENER = 37120,
			UDP_STOPPING = 37121,
			ARDP_BACKPRESSURE = 37122,
			UDP_BACKPRESSURE = 37123,
			ARDP_INVALID_STATE = 37124,
			ARDP_TTL_EXPIRED = 37125,
			ARDP_PERSIST_TIMEOUT = 37126,
			ARDP_PROBE_TIMEOUT = 37127,
			ARDP_REMOTE_CONNECTION_RESET = 37128,
			UDP_BUSHELLO = 37129,
			UDP_MESSAGE = 37130,
			UDP_INVALID = 37131,
			UDP_UNSUPPORTED = 37132,
			UDP_ENDPOINT_STALLED = 37133,
			ARDP_INVALID_RESPONSE = 37134,
			ARDP_INVALID_CONNECTION = 37135,
			UDP_LOCAL_DISCONNECT = 37136,
			UDP_EARLY_EXIT = 37137,
			UDP_LOCAL_DISCONNECT_FAIL = 37138,
			ARDP_DISCONNECTING = 37139,
			ALLJOYN_PING_REPLY_INCOMPATIBLE_REMOTE_ROUTING_NODE = 37140,
			ALLJOYN_PING_REPLY_TIMEOUT = 37141,
			ALLJOYN_PING_REPLY_UNKNOWN_NAME = 37142,
			ALLJOYN_PING_REPLY_FAILED = 37143,
			TCP_MAX_UNTRUSTED = 37144,
			ALLJOYN_PING_REPLY_IN_PROGRESS = 37145,
			LANGUAGE_NOT_SUPPORTED = 37146,
			ABOUT_FIELD_ALREADY_SPECIFIED = 37147,
			UDP_NOT_DISCONNECTED = 37148,
			UDP_ENDPOINT_NOT_STARTED = 37149,
			UDP_ENDPOINT_REMOVED = 37150,
			ARDP_VERSION_NOT_SUPPORTED = 37151,
			CONNECTION_LIMIT_EXCEEDED = 37152,
			ARDP_WRITE_BLOCKED = 37153,
			PERMISSION_DENIED = 37154,
			ABOUT_DEFAULT_LANGUAGE_NOT_SPECIFIED = 37155,
			ABOUT_SESSIONPORT_NOT_BOUND = 37156,
			ABOUT_ABOUTDATA_MISSING_REQUIRED_FIELD = 37157,
			ABOUT_INVALID_ABOUTDATA_LISTENER = 37158,
			BUS_PING_GROUP_NOT_FOUND = 37159,
			BUS_REMOVED_BY_BINDER_SELF = 37160,
			INVALID_CONFIG = 37161,
			ABOUT_INVALID_ABOUTDATA_FIELD_VALUE = 37162,
			ABOUT_INVALID_ABOUTDATA_FIELD_APPID_SIZE = 37163,
			BUS_TRANSPORT_ACCESS_DENIED = 37164,
			INVALID_CERTIFICATE = 37165,
			CERTIFICATE_NOT_FOUND = 37166,
			DUPLICATE_CERTIFICATE = 37167,
			UNKNOWN_CERTIFICATE = 37168,
			MISSING_DIGEST_IN_CERTIFICATE = 37169,
			DIGEST_MISMATCH = 37170,
			DUPLICATE_KEY = 37171,
			NO_COMMON_TRUST = 37172,
			MANIFEST_NOT_FOUND = 37173,
			INVALID_CERT_CHAIN = 37174,
			NO_TRUST_ANCHOR = 37175,
			INVALID_APPLICATION_STATE = 37176,
			FEATURE_NOT_AVAILABLE = 37177,
			KEY_STORE_ALREADY_INITIALIZED = 37178,
			KEY_STORE_ID_NOT_YET_SET = 37179,
			POLICY_NOT_NEWER = 37180,
			MANIFEST_REJECTED = 37181,
			INVALID_CERTIFICATE_USAGE = 37182,
			INVALID_SIGNAL_EMISSION_TYPE = 37183,
			APPLICATION_STATE_LISTENER_ALREADY_EXISTS = 37184,
			APPLICATION_STATE_LISTENER_NO_SUCH_LISTENER = 37185,
			MANAGEMENT_ALREADY_STARTED = 37186,
			MANAGEMENT_NOT_STARTED = 37187,
			BUS_DESCRIPTION_ALREADY_EXISTS = 37188,
		}
		public enum alljoyn_typeid : int32
		{
			INVALID = 0,
			ARRAY = 97,
			BOOLEAN = 98,
			DOUBLE = 100,
			DICT_ENTRY = 101,
			SIGNATURE = 103,
			HANDLE = 104,
			INT32 = 105,
			INT16 = 110,
			OBJECT_PATH = 111,
			UINT16 = 113,
			STRUCT = 114,
			STRING = 115,
			UINT64 = 116,
			UINT32 = 117,
			VARIANT = 118,
			INT64 = 120,
			BYTE = 121,
			STRUCT_OPEN = 40,
			STRUCT_CLOSE = 41,
			DICT_ENTRY_OPEN = 123,
			DICT_ENTRY_CLOSE = 125,
			BOOLEAN_ARRAY = 25185,
			DOUBLE_ARRAY = 25697,
			INT32_ARRAY = 26977,
			INT16_ARRAY = 28257,
			UINT16_ARRAY = 29025,
			UINT64_ARRAY = 29793,
			UINT32_ARRAY = 30049,
			INT64_ARRAY = 30817,
			BYTE_ARRAY = 31073,
			WILDCARD = 42,
		}
		public enum alljoyn_applicationstate : int32
		{
			NOT_CLAIMABLE = 0,
			CLAIMABLE = 1,
			CLAIMED = 2,
			NEED_UPDATE = 3,
		}
		public enum alljoyn_claimcapability_masks : int32
		{
			NULL = 1,
			ECDSA = 4,
			SPEKE = 8,
		}
		public enum alljoyn_claimcapabilityadditionalinfo_masks : int32
		{
			SECURITY_MANAGER = 1,
			APPLICATION = 2,
		}
		public enum alljoyn_messagetype : int32
		{
			INVALID = 0,
			METHOD_CALL = 1,
			METHOD_RET = 2,
			ERROR = 3,
			SIGNAL = 4,
		}
		public enum alljoyn_interfacedescription_securitypolicy : int32
		{
			INHERIT = 0,
			REQUIRED = 1,
			OFF = 2,
		}
		public enum alljoyn_sessionlostreason : int32
		{
			INVALID = 0,
			REMOTE_END_LEFT_SESSION = 1,
			REMOTE_END_CLOSED_ABRUPTLY = 2,
			REMOVED_BY_BINDER = 3,
			LINK_TIMEOUT = 4,
			REASON_OTHER = 5,
		}
		
		// --- Function Pointers ---
		
		public function void alljoyn_applicationstatelistener_state_ptr(out int8 busName, out int8 publicKey, alljoyn_applicationstate applicationState, void* context);
		public function QStatus alljoyn_keystorelistener_loadrequest_ptr(void* context, alljoyn_keystorelistener listener, alljoyn_keystore keyStore);
		public function QStatus alljoyn_keystorelistener_storerequest_ptr(void* context, alljoyn_keystorelistener listener, alljoyn_keystore keyStore);
		public function QStatus alljoyn_keystorelistener_acquireexclusivelock_ptr(void* context, alljoyn_keystorelistener listener);
		public function void alljoyn_keystorelistener_releaseexclusivelock_ptr(void* context, alljoyn_keystorelistener listener);
		public function int32 alljoyn_authlistener_requestcredentials_ptr(void* context, PSTR authMechanism, PSTR peerName, uint16 authCount, PSTR userName, uint16 credMask, alljoyn_credentials credentials);
		public function QStatus alljoyn_authlistener_requestcredentialsasync_ptr(void* context, alljoyn_authlistener listener, PSTR authMechanism, PSTR peerName, uint16 authCount, PSTR userName, uint16 credMask, void* authContext);
		public function int32 alljoyn_authlistener_verifycredentials_ptr(void* context, PSTR authMechanism, PSTR peerName, alljoyn_credentials credentials);
		public function QStatus alljoyn_authlistener_verifycredentialsasync_ptr(void* context, alljoyn_authlistener listener, PSTR authMechanism, PSTR peerName, alljoyn_credentials credentials, void* authContext);
		public function void alljoyn_authlistener_securityviolation_ptr(void* context, QStatus status, alljoyn_message msg);
		public function void alljoyn_authlistener_authenticationcomplete_ptr(void* context, PSTR authMechanism, PSTR peerName, int32 success);
		public function void alljoyn_buslistener_listener_registered_ptr(void* context, alljoyn_busattachment bus);
		public function void alljoyn_buslistener_listener_unregistered_ptr(void* context);
		public function void alljoyn_buslistener_found_advertised_name_ptr(void* context, PSTR name, uint16 transport, PSTR namePrefix);
		public function void alljoyn_buslistener_lost_advertised_name_ptr(void* context, PSTR name, uint16 transport, PSTR namePrefix);
		public function void alljoyn_buslistener_name_owner_changed_ptr(void* context, PSTR busName, PSTR previousOwner, PSTR newOwner);
		public function void alljoyn_buslistener_bus_stopping_ptr(void* context);
		public function void alljoyn_buslistener_bus_disconnected_ptr(void* context);
		public function void alljoyn_buslistener_bus_prop_changed_ptr(void* context, PSTR prop_name, alljoyn_msgarg prop_value);
		public function PSTR alljoyn_interfacedescription_translation_callback_ptr(PSTR sourceLanguage, PSTR targetLanguage, PSTR sourceText);
		public function void alljoyn_messagereceiver_methodhandler_ptr(alljoyn_busobject bus, in alljoyn_interfacedescription_member member, alljoyn_message message);
		public function void alljoyn_messagereceiver_replyhandler_ptr(alljoyn_message message, void* context);
		public function void alljoyn_messagereceiver_signalhandler_ptr(in alljoyn_interfacedescription_member member, PSTR srcPath, alljoyn_message message);
		public function QStatus alljoyn_busobject_prop_get_ptr(void* context, PSTR ifcName, PSTR propName, alljoyn_msgarg val);
		public function QStatus alljoyn_busobject_prop_set_ptr(void* context, PSTR ifcName, PSTR propName, alljoyn_msgarg val);
		public function void alljoyn_busobject_object_registration_ptr(void* context);
		public function void alljoyn_proxybusobject_listener_introspectcb_ptr(QStatus status, alljoyn_proxybusobject obj, void* context);
		public function void alljoyn_proxybusobject_listener_getpropertycb_ptr(QStatus status, alljoyn_proxybusobject obj, alljoyn_msgarg value, void* context);
		public function void alljoyn_proxybusobject_listener_getallpropertiescb_ptr(QStatus status, alljoyn_proxybusobject obj, alljoyn_msgarg values, void* context);
		public function void alljoyn_proxybusobject_listener_setpropertycb_ptr(QStatus status, alljoyn_proxybusobject obj, void* context);
		public function void alljoyn_proxybusobject_listener_propertieschanged_ptr(alljoyn_proxybusobject obj, PSTR ifaceName, alljoyn_msgarg changed, alljoyn_msgarg invalidated, void* context);
		public function QStatus alljoyn_permissionconfigurationlistener_factoryreset_ptr(void* context);
		public function void alljoyn_permissionconfigurationlistener_policychanged_ptr(void* context);
		public function void alljoyn_permissionconfigurationlistener_startmanagement_ptr(void* context);
		public function void alljoyn_permissionconfigurationlistener_endmanagement_ptr(void* context);
		public function void alljoyn_sessionlistener_sessionlost_ptr(void* context, uint32 sessionId, alljoyn_sessionlostreason reason);
		public function void alljoyn_sessionlistener_sessionmemberadded_ptr(void* context, uint32 sessionId, PSTR uniqueName);
		public function void alljoyn_sessionlistener_sessionmemberremoved_ptr(void* context, uint32 sessionId, PSTR uniqueName);
		public function int32 alljoyn_sessionportlistener_acceptsessionjoiner_ptr(void* context, uint16 sessionPort, PSTR joiner, alljoyn_sessionopts opts);
		public function void alljoyn_sessionportlistener_sessionjoined_ptr(void* context, uint16 sessionPort, uint32 id, PSTR joiner);
		public function void alljoyn_about_announced_ptr(void* context, PSTR busName, uint16 version, uint16 port, alljoyn_msgarg objectDescriptionArg, alljoyn_msgarg aboutDataArg);
		public function void alljoyn_busattachment_joinsessioncb_ptr(QStatus status, uint32 sessionId, alljoyn_sessionopts opts, void* context);
		public function void alljoyn_busattachment_setlinktimeoutcb_ptr(QStatus status, uint32 timeout, void* context);
		public function QStatus alljoyn_aboutdatalistener_getaboutdata_ptr(void* context, alljoyn_msgarg msgArg, PSTR language);
		public function QStatus alljoyn_aboutdatalistener_getannouncedaboutdata_ptr(void* context, alljoyn_msgarg msgArg);
		public function void alljoyn_autopinger_destination_lost_ptr(void* context, PSTR group, PSTR destination);
		public function void alljoyn_autopinger_destination_found_ptr(void* context, PSTR group, PSTR destination);
		public function void alljoyn_observer_object_discovered_ptr(void* context, alljoyn_proxybusobject_ref proxyref);
		public function void alljoyn_observer_object_lost_ptr(void* context, alljoyn_proxybusobject_ref proxyref);
		
		// --- Structs ---
		
		[CRepr]
		public struct _alljoyn_abouticon_handle {}
		[CRepr]
		public struct alljoyn_certificateid
		{
			public uint8* serial;
			public uint serialLen;
			public int8* issuerPublicKey;
			public uint8* issuerAki;
			public uint issuerAkiLen;
		}
		[CRepr]
		public struct alljoyn_certificateidarray
		{
			public uint count;
			public alljoyn_certificateid* ids;
		}
		[CRepr]
		public struct alljoyn_manifestarray
		{
			public uint count;
			public int8** xmls;
		}
		[CRepr]
		public struct alljoyn_applicationstatelistener_callbacks
		{
			public alljoyn_applicationstatelistener_state_ptr state;
		}
		[CRepr]
		public struct alljoyn_keystorelistener_callbacks
		{
			public alljoyn_keystorelistener_loadrequest_ptr load_request;
			public alljoyn_keystorelistener_storerequest_ptr store_request;
		}
		[CRepr]
		public struct alljoyn_keystorelistener_with_synchronization_callbacks
		{
			public alljoyn_keystorelistener_loadrequest_ptr load_request;
			public alljoyn_keystorelistener_storerequest_ptr store_request;
			public alljoyn_keystorelistener_acquireexclusivelock_ptr acquire_exclusive_lock;
			public alljoyn_keystorelistener_releaseexclusivelock_ptr release_exclusive_lock;
		}
		[CRepr]
		public struct alljoyn_authlistener_callbacks
		{
			public alljoyn_authlistener_requestcredentials_ptr request_credentials;
			public alljoyn_authlistener_verifycredentials_ptr verify_credentials;
			public alljoyn_authlistener_securityviolation_ptr security_violation;
			public alljoyn_authlistener_authenticationcomplete_ptr authentication_complete;
		}
		[CRepr]
		public struct alljoyn_authlistenerasync_callbacks
		{
			public alljoyn_authlistener_requestcredentialsasync_ptr request_credentials;
			public alljoyn_authlistener_verifycredentialsasync_ptr verify_credentials;
			public alljoyn_authlistener_securityviolation_ptr security_violation;
			public alljoyn_authlistener_authenticationcomplete_ptr authentication_complete;
		}
		[CRepr]
		public struct alljoyn_buslistener_callbacks
		{
			public alljoyn_buslistener_listener_registered_ptr listener_registered;
			public alljoyn_buslistener_listener_unregistered_ptr listener_unregistered;
			public alljoyn_buslistener_found_advertised_name_ptr found_advertised_name;
			public alljoyn_buslistener_lost_advertised_name_ptr lost_advertised_name;
			public alljoyn_buslistener_name_owner_changed_ptr name_owner_changed;
			public alljoyn_buslistener_bus_stopping_ptr bus_stopping;
			public alljoyn_buslistener_bus_disconnected_ptr bus_disconnected;
			public alljoyn_buslistener_bus_prop_changed_ptr property_changed;
		}
		[CRepr]
		public struct alljoyn_interfacedescription_member
		{
			public alljoyn_interfacedescription iface;
			public alljoyn_messagetype memberType;
			public PSTR name;
			public PSTR signature;
			public PSTR returnSignature;
			public PSTR argNames;
			public void* internal_member;
		}
		[CRepr]
		public struct alljoyn_interfacedescription_property
		{
			public PSTR name;
			public PSTR signature;
			public uint8 access;
			public void* internal_property;
		}
		[CRepr]
		public struct alljoyn_busobject_callbacks
		{
			public alljoyn_busobject_prop_get_ptr property_get;
			public alljoyn_busobject_prop_set_ptr property_set;
			public alljoyn_busobject_object_registration_ptr object_registered;
			public alljoyn_busobject_object_registration_ptr object_unregistered;
		}
		[CRepr]
		public struct alljoyn_busobject_methodentry
		{
			public alljoyn_interfacedescription_member* member;
			public alljoyn_messagereceiver_methodhandler_ptr method_handler;
		}
		[CRepr]
		public struct alljoyn_permissionconfigurationlistener_callbacks
		{
			public alljoyn_permissionconfigurationlistener_factoryreset_ptr factory_reset;
			public alljoyn_permissionconfigurationlistener_policychanged_ptr policy_changed;
			public alljoyn_permissionconfigurationlistener_startmanagement_ptr start_management;
			public alljoyn_permissionconfigurationlistener_endmanagement_ptr end_management;
		}
		[CRepr]
		public struct alljoyn_sessionlistener_callbacks
		{
			public alljoyn_sessionlistener_sessionlost_ptr session_lost;
			public alljoyn_sessionlistener_sessionmemberadded_ptr session_member_added;
			public alljoyn_sessionlistener_sessionmemberremoved_ptr session_member_removed;
		}
		[CRepr]
		public struct alljoyn_sessionportlistener_callbacks
		{
			public alljoyn_sessionportlistener_acceptsessionjoiner_ptr accept_session_joiner;
			public alljoyn_sessionportlistener_sessionjoined_ptr session_joined;
		}
		[CRepr]
		public struct alljoyn_aboutlistener_callback
		{
			public alljoyn_about_announced_ptr about_listener_announced;
		}
		[CRepr]
		public struct _alljoyn_abouticonobj_handle {}
		[CRepr]
		public struct _alljoyn_abouticonproxy_handle {}
		[CRepr]
		public struct alljoyn_aboutdatalistener_callbacks
		{
			public alljoyn_aboutdatalistener_getaboutdata_ptr about_datalistener_getaboutdata;
			public alljoyn_aboutdatalistener_getannouncedaboutdata_ptr about_datalistener_getannouncedaboutdata;
		}
		[CRepr]
		public struct alljoyn_pinglistener_callback
		{
			public alljoyn_autopinger_destination_found_ptr destination_found;
			public alljoyn_autopinger_destination_lost_ptr destination_lost;
		}
		[CRepr]
		public struct alljoyn_observerlistener_callback
		{
			public alljoyn_observer_object_discovered_ptr object_discovered;
			public alljoyn_observer_object_lost_ptr object_lost;
		}
		
		// --- Functions ---
		
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE AllJoynConnectToBus(PWSTR connectionSpec);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllJoynCloseBusHandle(HANDLE busHandle);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllJoynSendToBus(HANDLE connectedBusHandle, void* buffer, uint32 bytesToWrite, uint32* bytesTransferred, void* reserved);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllJoynReceiveFromBus(HANDLE connectedBusHandle, void* buffer, uint32 bytesToRead, uint32* bytesTransferred, void* reserved);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllJoynEventSelect(HANDLE connectedBusHandle, HANDLE eventHandle, uint32 eventTypes);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllJoynEnumEvents(HANDLE connectedBusHandle, HANDLE eventToReset, out uint32 eventTypes);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE AllJoynCreateBus(uint32 outBufferSize, uint32 inBufferSize, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AllJoynAcceptBusConnection(HANDLE serverBusHandle, HANDLE abortEvent);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_unity_deferred_callbacks_process();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_unity_set_deferred_callback_mainthread_only(int32 mainthread_only);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR QCC_StatusText(QStatus status);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_create();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_create_and_set(PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_msgarg_destroy(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_array_create(uint size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_array_element(alljoyn_msgarg arg, uint index);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set(alljoyn_msgarg arg, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get(alljoyn_msgarg arg, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_copy(alljoyn_msgarg source);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_msgarg_clone(alljoyn_msgarg destination, alljoyn_msgarg source);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_msgarg_equal(alljoyn_msgarg lhv, alljoyn_msgarg rhv);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_array_set(alljoyn_msgarg args, out uint numArgs, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_array_get(alljoyn_msgarg args, uint numArgs, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_tostring(alljoyn_msgarg arg, PSTR str, uint buf, uint indent);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_array_tostring(alljoyn_msgarg args, uint numArgs, PSTR str, uint buf, uint indent);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_signature(alljoyn_msgarg arg, PSTR str, uint buf);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_array_signature(alljoyn_msgarg values, uint numValues, PSTR str, uint buf);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_msgarg_hassignature(alljoyn_msgarg arg, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_getdictelement(alljoyn_msgarg arg, PSTR elemSig);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_typeid alljoyn_msgarg_gettype(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_msgarg_clear(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_msgarg_stabilize(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_array_set_offset(alljoyn_msgarg args, uint argOffset, out uint numArgs, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_and_stabilize(alljoyn_msgarg arg, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint8(alljoyn_msgarg arg, uint8 y);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_bool(alljoyn_msgarg arg, int32 b);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int16(alljoyn_msgarg arg, int16 n);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint16(alljoyn_msgarg arg, uint16 q);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int32(alljoyn_msgarg arg, int32 i);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint32(alljoyn_msgarg arg, uint32 u);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int64(alljoyn_msgarg arg, int64 x);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint64(alljoyn_msgarg arg, uint64 t);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_double(alljoyn_msgarg arg, double d);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_string(alljoyn_msgarg arg, PSTR s);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_objectpath(alljoyn_msgarg arg, PSTR o);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_signature(alljoyn_msgarg arg, PSTR g);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint8(alljoyn_msgarg arg, out uint8 y);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_bool(alljoyn_msgarg arg, out int32 b);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int16(alljoyn_msgarg arg, out int16 n);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint16(alljoyn_msgarg arg, out uint16 q);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int32(alljoyn_msgarg arg, out int32 i);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint32(alljoyn_msgarg arg, out uint32 u);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int64(alljoyn_msgarg arg, out int64 x);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint64(alljoyn_msgarg arg, out uint64 t);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_double(alljoyn_msgarg arg, out double d);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_string(alljoyn_msgarg arg, out int8* s);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_objectpath(alljoyn_msgarg arg, out int8* o);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_signature(alljoyn_msgarg arg, out int8* g);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_variant(alljoyn_msgarg arg, alljoyn_msgarg v);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint8_array(alljoyn_msgarg arg, uint length, out uint8 ay);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_bool_array(alljoyn_msgarg arg, uint length, out int32 ab);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int16_array(alljoyn_msgarg arg, uint length, out int16 an);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint16_array(alljoyn_msgarg arg, uint length, out uint16 aq);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int32_array(alljoyn_msgarg arg, uint length, out int32 ai);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint32_array(alljoyn_msgarg arg, uint length, out uint32 au);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_int64_array(alljoyn_msgarg arg, uint length, out int64 ax);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_uint64_array(alljoyn_msgarg arg, uint length, out uint64 at);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_double_array(alljoyn_msgarg arg, uint length, out double ad);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_string_array(alljoyn_msgarg arg, uint length, in int8* @as);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_objectpath_array(alljoyn_msgarg arg, uint length, in int8* ao);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_set_signature_array(alljoyn_msgarg arg, uint length, in int8* ag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint8_array(alljoyn_msgarg arg, out uint length, out uint8 ay);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_bool_array(alljoyn_msgarg arg, out uint length, out int32 ab);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int16_array(alljoyn_msgarg arg, out uint length, out int16 an);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint16_array(alljoyn_msgarg arg, out uint length, out uint16 aq);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int32_array(alljoyn_msgarg arg, out uint length, out int32 ai);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint32_array(alljoyn_msgarg arg, out uint length, out uint32 au);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_int64_array(alljoyn_msgarg arg, out uint length, out int64 ax);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_uint64_array(alljoyn_msgarg arg, out uint length, out uint64 at);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_double_array(alljoyn_msgarg arg, out uint length, out double ad);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_get_variant_array(alljoyn_msgarg arg, PSTR signature, out uint length, out alljoyn_msgarg av);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_get_array_numberofelements(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_msgarg_get_array_element(alljoyn_msgarg arg, uint index, out alljoyn_msgarg element);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_msgarg_get_array_elementsignature(alljoyn_msgarg arg, uint index);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_getkey(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_getvalue(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_setdictentry(alljoyn_msgarg arg, alljoyn_msgarg key, alljoyn_msgarg value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_msgarg_setstruct(alljoyn_msgarg arg, alljoyn_msgarg struct_members, uint num_members);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_msgarg_getnummembers(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_msgarg_getmember(alljoyn_msgarg arg, uint index);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutdata alljoyn_aboutdata_create_empty();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutdata alljoyn_aboutdata_create(PSTR defaultLanguage);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutdata alljoyn_aboutdata_create_full(alljoyn_msgarg arg, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutdata_destroy(alljoyn_aboutdata data);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_createfromxml(alljoyn_aboutdata data, PSTR aboutDataXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutdata_isvalid(alljoyn_aboutdata data, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_createfrommsgarg(alljoyn_aboutdata data, alljoyn_msgarg arg, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setappid(alljoyn_aboutdata data, in uint8 appId, uint num);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setappid_fromstring(alljoyn_aboutdata data, PSTR appId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getappid(alljoyn_aboutdata data, out uint8* appId, out uint num);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setdefaultlanguage(alljoyn_aboutdata data, PSTR defaultLanguage);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getdefaultlanguage(alljoyn_aboutdata data, out int8* defaultLanguage);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setdevicename(alljoyn_aboutdata data, PSTR deviceName, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getdevicename(alljoyn_aboutdata data, out int8* deviceName, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setdeviceid(alljoyn_aboutdata data, PSTR deviceId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getdeviceid(alljoyn_aboutdata data, out int8* deviceId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setappname(alljoyn_aboutdata data, PSTR appName, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getappname(alljoyn_aboutdata data, out int8* appName, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setmanufacturer(alljoyn_aboutdata data, PSTR manufacturer, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getmanufacturer(alljoyn_aboutdata data, out int8* manufacturer, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setmodelnumber(alljoyn_aboutdata data, PSTR modelNumber);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getmodelnumber(alljoyn_aboutdata data, out int8* modelNumber);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setsupportedlanguage(alljoyn_aboutdata data, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_aboutdata_getsupportedlanguages(alljoyn_aboutdata data, in int8* languageTags, uint num);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setdescription(alljoyn_aboutdata data, PSTR description, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getdescription(alljoyn_aboutdata data, out int8* description, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setdateofmanufacture(alljoyn_aboutdata data, PSTR dateOfManufacture);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getdateofmanufacture(alljoyn_aboutdata data, out int8* dateOfManufacture);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setsoftwareversion(alljoyn_aboutdata data, PSTR softwareVersion);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getsoftwareversion(alljoyn_aboutdata data, out int8* softwareVersion);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getajsoftwareversion(alljoyn_aboutdata data, out int8* ajSoftwareVersion);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_sethardwareversion(alljoyn_aboutdata data, PSTR hardwareVersion);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_gethardwareversion(alljoyn_aboutdata data, out int8* hardwareVersion);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setsupporturl(alljoyn_aboutdata data, PSTR supportUrl);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getsupporturl(alljoyn_aboutdata data, out int8* supportUrl);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_setfield(alljoyn_aboutdata data, PSTR name, alljoyn_msgarg value, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getfield(alljoyn_aboutdata data, PSTR name, out alljoyn_msgarg value, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_aboutdata_getfields(alljoyn_aboutdata data, in int8* fields, uint num_fields);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getaboutdata(alljoyn_aboutdata data, alljoyn_msgarg msgArg, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutdata_getannouncedaboutdata(alljoyn_aboutdata data, alljoyn_msgarg msgArg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutdata_isfieldrequired(alljoyn_aboutdata data, PSTR fieldName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutdata_isfieldannounced(alljoyn_aboutdata data, PSTR fieldName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutdata_isfieldlocalized(alljoyn_aboutdata data, PSTR fieldName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_aboutdata_getfieldsignature(alljoyn_aboutdata data, PSTR fieldName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern _alljoyn_abouticon_handle* alljoyn_abouticon_create();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticon_destroy(out _alljoyn_abouticon_handle icon);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticon_getcontent(out _alljoyn_abouticon_handle icon, in uint8* data, out uint size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_abouticon_setcontent(out _alljoyn_abouticon_handle icon, PSTR type, out uint8 data, uint csize, uint8 ownsData);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticon_geturl(out _alljoyn_abouticon_handle icon, in int8* type, in int8* url);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_abouticon_seturl(out _alljoyn_abouticon_handle icon, PSTR type, PSTR url);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticon_clear(out _alljoyn_abouticon_handle icon);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_abouticon_setcontent_frommsgarg(out _alljoyn_abouticon_handle icon, alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 alljoyn_permissionconfigurator_getdefaultclaimcapabilities();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getapplicationstate(alljoyn_permissionconfigurator configurator, out alljoyn_applicationstate state);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_setapplicationstate(alljoyn_permissionconfigurator configurator, alljoyn_applicationstate state);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getpublickey(alljoyn_permissionconfigurator configurator, out int8* publicKey);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_publickey_destroy(out int8 publicKey);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getmanifesttemplate(alljoyn_permissionconfigurator configurator, out int8* manifestTemplateXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_manifesttemplate_destroy(out int8 manifestTemplateXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_setmanifesttemplatefromxml(alljoyn_permissionconfigurator configurator, out int8 manifestTemplateXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getclaimcapabilities(alljoyn_permissionconfigurator configurator, out uint16 claimCapabilities);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_setclaimcapabilities(alljoyn_permissionconfigurator configurator, uint16 claimCapabilities);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getclaimcapabilitiesadditionalinfo(alljoyn_permissionconfigurator configurator, out uint16 additionalInfo);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_setclaimcapabilitiesadditionalinfo(alljoyn_permissionconfigurator configurator, uint16 additionalInfo);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_reset(alljoyn_permissionconfigurator configurator);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_claim(alljoyn_permissionconfigurator configurator, out int8 caKey, out int8 identityCertificateChain, in uint8 groupId, uint groupSize, out int8 groupAuthority, out int8* manifestsXmls, uint manifestsCount);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_updateidentity(alljoyn_permissionconfigurator configurator, out int8 identityCertificateChain, out int8* manifestsXmls, uint manifestsCount);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getidentity(alljoyn_permissionconfigurator configurator, out int8* identityCertificateChain);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_certificatechain_destroy(out int8 certificateChain);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getmanifests(alljoyn_permissionconfigurator configurator, out alljoyn_manifestarray manifestArray);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_manifestarray_cleanup(out alljoyn_manifestarray manifestArray);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_installmanifests(alljoyn_permissionconfigurator configurator, out int8* manifestsXmls, uint manifestsCount, int32 @append);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getidentitycertificateid(alljoyn_permissionconfigurator configurator, out alljoyn_certificateid certificateId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_certificateid_cleanup(out alljoyn_certificateid certificateId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_updatepolicy(alljoyn_permissionconfigurator configurator, out int8 policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getpolicy(alljoyn_permissionconfigurator configurator, out int8* policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getdefaultpolicy(alljoyn_permissionconfigurator configurator, out int8* policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_policy_destroy(out int8 policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_resetpolicy(alljoyn_permissionconfigurator configurator);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_getmembershipsummaries(alljoyn_permissionconfigurator configurator, out alljoyn_certificateidarray certificateIds);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurator_certificateidarray_cleanup(out alljoyn_certificateidarray certificateIdArray);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_installmembership(alljoyn_permissionconfigurator configurator, out int8 membershipCertificateChain);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_removemembership(alljoyn_permissionconfigurator configurator, in uint8 serial, uint serialLen, out int8 issuerPublicKey, in uint8 issuerAki, uint issuerAkiLen);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_startmanagement(alljoyn_permissionconfigurator configurator);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_permissionconfigurator_endmanagement(alljoyn_permissionconfigurator configurator);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_applicationstatelistener alljoyn_applicationstatelistener_create(in alljoyn_applicationstatelistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_applicationstatelistener_destroy(alljoyn_applicationstatelistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_keystorelistener alljoyn_keystorelistener_create(in alljoyn_keystorelistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_keystorelistener alljoyn_keystorelistener_with_synchronization_create(in alljoyn_keystorelistener_with_synchronization_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_keystorelistener_destroy(alljoyn_keystorelistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_keystorelistener_putkeys(alljoyn_keystorelistener listener, alljoyn_keystore keyStore, PSTR source, PSTR password);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_keystorelistener_getkeys(alljoyn_keystorelistener listener, alljoyn_keystore keyStore, PSTR sink, out uint sink_sz);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_sessionopts alljoyn_sessionopts_create(uint8 traffic, int32 isMultipoint, uint8 proximity, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionopts_destroy(alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_sessionopts_get_traffic(alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionopts_set_traffic(alljoyn_sessionopts opts, uint8 traffic);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_sessionopts_get_multipoint(alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionopts_set_multipoint(alljoyn_sessionopts opts, int32 isMultipoint);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_sessionopts_get_proximity(alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionopts_set_proximity(alljoyn_sessionopts opts, uint8 proximity);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 alljoyn_sessionopts_get_transports(alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionopts_set_transports(alljoyn_sessionopts opts, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_sessionopts_iscompatible(alljoyn_sessionopts one, alljoyn_sessionopts other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_sessionopts_cmp(alljoyn_sessionopts one, alljoyn_sessionopts other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_message alljoyn_message_create(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_message_destroy(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_isbroadcastsignal(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_isglobalbroadcast(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_issessionless(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_message_getflags(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_isexpired(alljoyn_message msg, out uint32 tillExpireMS);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_isunreliable(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_isencrypted(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getauthmechanism(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_messagetype alljoyn_message_gettype(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_message_getargs(alljoyn_message msg, out uint numArgs, out alljoyn_msgarg args);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_msgarg alljoyn_message_getarg(alljoyn_message msg, uint argN);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_message_parseargs(alljoyn_message msg, PSTR signature);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_message_getcallserial(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getsignature(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getobjectpath(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getinterface(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getmembername(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_message_getreplyserial(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getsender(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getreceiveendpointname(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_getdestination(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_message_getcompressiontoken(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_message_getsessionid(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_message_geterrorname(alljoyn_message msg, PSTR errorMessage, out uint errorMessage_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_message_tostring(alljoyn_message msg, PSTR str, uint buf);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_message_description(alljoyn_message msg, PSTR str, uint buf);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_message_gettimestamp(alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_message_eql(alljoyn_message one, alljoyn_message other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_message_setendianess(int8 endian);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_authlistener_requestcredentialsresponse(alljoyn_authlistener listener, void* authContext, int32 accept, alljoyn_credentials credentials);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_authlistener_verifycredentialsresponse(alljoyn_authlistener listener, void* authContext, int32 accept);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_authlistener alljoyn_authlistener_create(in alljoyn_authlistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_authlistener alljoyn_authlistenerasync_create(in alljoyn_authlistenerasync_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_authlistener_destroy(alljoyn_authlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_authlistenerasync_destroy(alljoyn_authlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_authlistener_setsharedsecret(alljoyn_authlistener listener, in uint8 sharedSecret, uint sharedSecretSize);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_credentials alljoyn_credentials_create();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_destroy(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_credentials_isset(alljoyn_credentials cred, uint16 creds);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setpassword(alljoyn_credentials cred, PSTR pwd);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setusername(alljoyn_credentials cred, PSTR userName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setcertchain(alljoyn_credentials cred, PSTR certChain);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setprivatekey(alljoyn_credentials cred, PSTR pk);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setlogonentry(alljoyn_credentials cred, PSTR logonEntry);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_setexpiration(alljoyn_credentials cred, uint32 expiration);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_credentials_getpassword(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_credentials_getusername(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_credentials_getcertchain(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_credentials_getprivateKey(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_credentials_getlogonentry(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_credentials_getexpiration(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_credentials_clear(alljoyn_credentials cred);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_buslistener alljoyn_buslistener_create(in alljoyn_buslistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_buslistener_destroy(alljoyn_buslistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_member_getannotationscount(alljoyn_interfacedescription_member member);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_member_getannotationatindex(alljoyn_interfacedescription_member member, uint index, PSTR name, out uint name_size, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_member_getannotation(alljoyn_interfacedescription_member member, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_member_getargannotationscount(alljoyn_interfacedescription_member member, PSTR argName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_member_getargannotationatindex(alljoyn_interfacedescription_member member, PSTR argName, uint index, PSTR name, out uint name_size, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_member_getargannotation(alljoyn_interfacedescription_member member, PSTR argName, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_property_getannotationscount(alljoyn_interfacedescription_property property);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_property_getannotationatindex(alljoyn_interfacedescription_property property, uint index, PSTR name, out uint name_size, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_property_getannotation(alljoyn_interfacedescription_property property, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_activate(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addannotation(alljoyn_interfacedescription iface, PSTR name, PSTR value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getannotation(alljoyn_interfacedescription iface, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getannotationscount(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_getannotationatindex(alljoyn_interfacedescription iface, uint index, PSTR name, out uint name_size, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getmember(alljoyn_interfacedescription iface, PSTR name, out alljoyn_interfacedescription_member member);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addmember(alljoyn_interfacedescription iface, alljoyn_messagetype type, PSTR name, PSTR inputSig, PSTR outSig, PSTR argNames, uint8 annotation);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addmemberannotation(alljoyn_interfacedescription iface, PSTR member, PSTR name, PSTR value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getmemberannotation(alljoyn_interfacedescription iface, PSTR member, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getmembers(alljoyn_interfacedescription iface, out alljoyn_interfacedescription_member members, uint numMembers);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_hasmember(alljoyn_interfacedescription iface, PSTR name, PSTR inSig, PSTR outSig);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addmethod(alljoyn_interfacedescription iface, PSTR name, PSTR inputSig, PSTR outSig, PSTR argNames, uint8 annotation, PSTR accessPerms);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getmethod(alljoyn_interfacedescription iface, PSTR name, out alljoyn_interfacedescription_member member);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addsignal(alljoyn_interfacedescription iface, PSTR name, PSTR sig, PSTR argNames, uint8 annotation, PSTR accessPerms);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getsignal(alljoyn_interfacedescription iface, PSTR name, out alljoyn_interfacedescription_member member);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getproperty(alljoyn_interfacedescription iface, PSTR name, out alljoyn_interfacedescription_property property);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getproperties(alljoyn_interfacedescription iface, out alljoyn_interfacedescription_property props, uint numProps);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addproperty(alljoyn_interfacedescription iface, PSTR name, PSTR signature, uint8 access);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addpropertyannotation(alljoyn_interfacedescription iface, PSTR property, PSTR name, PSTR value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getpropertyannotation(alljoyn_interfacedescription iface, PSTR property, PSTR name, PSTR value, out uint str_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_hasproperty(alljoyn_interfacedescription iface, PSTR name);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_hasproperties(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_interfacedescription_getname(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_introspect(alljoyn_interfacedescription iface, PSTR str, uint buf, uint indent);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_issecure(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_interfacedescription_securitypolicy alljoyn_interfacedescription_getsecuritypolicy(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_setdescriptionlanguage(alljoyn_interfacedescription iface, PSTR language);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getdescriptionlanguages(alljoyn_interfacedescription iface, in int8* languages, uint size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getdescriptionlanguages2(alljoyn_interfacedescription iface, PSTR languages, uint languagesSize);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_setdescription(alljoyn_interfacedescription iface, PSTR description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR description, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR description, uint maxLanguageLength, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setmemberdescription(alljoyn_interfacedescription iface, PSTR member, PSTR description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setmemberdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR member, PSTR description, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getmemberdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR member, PSTR description, uint maxLanguageLength, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setargdescription(alljoyn_interfacedescription iface, PSTR member, PSTR argName, PSTR description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setargdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR member, PSTR arg, PSTR description, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getargdescriptionforlanguage(alljoyn_interfacedescription iface, PSTR member, PSTR arg, PSTR description, uint maxLanguageLength, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setpropertydescription(alljoyn_interfacedescription iface, PSTR name, PSTR description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_setpropertydescriptionforlanguage(alljoyn_interfacedescription iface, PSTR name, PSTR description, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_interfacedescription_getpropertydescriptionforlanguage(alljoyn_interfacedescription iface, PSTR property, PSTR description, uint maxLanguageLength, PSTR languageTag);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_interfacedescription_setdescriptiontranslationcallback(alljoyn_interfacedescription iface, alljoyn_interfacedescription_translation_callback_ptr translationCallback);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_interfacedescription_translation_callback_ptr alljoyn_interfacedescription_getdescriptiontranslationcallback(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_hasdescription(alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_interfacedescription_addargannotation(alljoyn_interfacedescription iface, PSTR member, PSTR argName, PSTR name, PSTR value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_getmemberargannotation(alljoyn_interfacedescription iface, PSTR member, PSTR argName, PSTR name, PSTR value, out uint value_size);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_eql(alljoyn_interfacedescription one, alljoyn_interfacedescription other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_member_eql(alljoyn_interfacedescription_member one, alljoyn_interfacedescription_member other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_interfacedescription_property_eql(alljoyn_interfacedescription_property one, alljoyn_interfacedescription_property other);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_busobject alljoyn_busobject_create(PSTR path, int32 isPlaceholder, in alljoyn_busobject_callbacks callbacks_in, void* context_in);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busobject_destroy(alljoyn_busobject bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_busobject_getpath(alljoyn_busobject bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busobject_emitpropertychanged(alljoyn_busobject bus, PSTR ifcName, PSTR propName, alljoyn_msgarg val, uint32 id);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busobject_emitpropertieschanged(alljoyn_busobject bus, PSTR ifcName, in int8* propNames, uint numProps, uint32 id);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_busobject_getname(alljoyn_busobject bus, PSTR buffer, uint bufferSz);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_addinterface(alljoyn_busobject bus, alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_addmethodhandler(alljoyn_busobject bus, alljoyn_interfacedescription_member member, alljoyn_messagereceiver_methodhandler_ptr handler, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_addmethodhandlers(alljoyn_busobject bus, in alljoyn_busobject_methodentry entries, uint numEntries);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_methodreply_args(alljoyn_busobject bus, alljoyn_message msg, alljoyn_msgarg args, uint numArgs);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_methodreply_err(alljoyn_busobject bus, alljoyn_message msg, PSTR error, PSTR errorMessage);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_methodreply_status(alljoyn_busobject bus, alljoyn_message msg, QStatus status);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_busattachment alljoyn_busobject_getbusattachment(alljoyn_busobject bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_signal(alljoyn_busobject bus, PSTR destination, uint32 sessionId, alljoyn_interfacedescription_member signal, alljoyn_msgarg args, uint numArgs, uint16 timeToLive, uint8 flags, alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_cancelsessionlessmessage_serial(alljoyn_busobject bus, uint32 serialNumber);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_cancelsessionlessmessage(alljoyn_busobject bus, alljoyn_message msg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_busobject_issecure(alljoyn_busobject bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_busobject_getannouncedinterfacenames(alljoyn_busobject bus, in int8* interfaces, uint numInterfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_setannounceflag(alljoyn_busobject bus, alljoyn_interfacedescription iface, alljoyn_about_announceflag isAnnounced);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busobject_addinterface_announced(alljoyn_busobject bus, alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_proxybusobject_create(alljoyn_busattachment bus, PSTR service, PSTR path, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_proxybusobject_create_secure(alljoyn_busattachment bus, PSTR service, PSTR path, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_proxybusobject_destroy(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_addinterface(alljoyn_proxybusobject proxyObj, alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_addinterface_by_name(alljoyn_proxybusobject proxyObj, PSTR name);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_proxybusobject_getchildren(alljoyn_proxybusobject proxyObj, out alljoyn_proxybusobject children, uint numChildren);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_proxybusobject_getchild(alljoyn_proxybusobject proxyObj, PSTR path);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_addchild(alljoyn_proxybusobject proxyObj, alljoyn_proxybusobject child);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_removechild(alljoyn_proxybusobject proxyObj, PSTR path);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_introspectremoteobject(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_introspectremoteobjectasync(alljoyn_proxybusobject proxyObj, alljoyn_proxybusobject_listener_introspectcb_ptr callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_getproperty(alljoyn_proxybusobject proxyObj, PSTR iface, PSTR property, alljoyn_msgarg value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_getpropertyasync(alljoyn_proxybusobject proxyObj, PSTR iface, PSTR property, alljoyn_proxybusobject_listener_getpropertycb_ptr callback, uint32 timeout, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_getallproperties(alljoyn_proxybusobject proxyObj, PSTR iface, alljoyn_msgarg values);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_getallpropertiesasync(alljoyn_proxybusobject proxyObj, PSTR iface, alljoyn_proxybusobject_listener_getallpropertiescb_ptr callback, uint32 timeout, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_setproperty(alljoyn_proxybusobject proxyObj, PSTR iface, PSTR property, alljoyn_msgarg value);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_registerpropertieschangedlistener(alljoyn_proxybusobject proxyObj, PSTR iface, in int8* properties, uint numProperties, alljoyn_proxybusobject_listener_propertieschanged_ptr callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_unregisterpropertieschangedlistener(alljoyn_proxybusobject proxyObj, PSTR iface, alljoyn_proxybusobject_listener_propertieschanged_ptr callback);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_setpropertyasync(alljoyn_proxybusobject proxyObj, PSTR iface, PSTR property, alljoyn_msgarg value, alljoyn_proxybusobject_listener_setpropertycb_ptr callback, uint32 timeout, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcall(alljoyn_proxybusobject proxyObj, PSTR ifaceName, PSTR methodName, alljoyn_msgarg args, uint numArgs, alljoyn_message replyMsg, uint32 timeout, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcall_member(alljoyn_proxybusobject proxyObj, alljoyn_interfacedescription_member method, alljoyn_msgarg args, uint numArgs, alljoyn_message replyMsg, uint32 timeout, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcall_noreply(alljoyn_proxybusobject proxyObj, PSTR ifaceName, PSTR methodName, alljoyn_msgarg args, uint numArgs, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcall_member_noreply(alljoyn_proxybusobject proxyObj, alljoyn_interfacedescription_member method, alljoyn_msgarg args, uint numArgs, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcallasync(alljoyn_proxybusobject proxyObj, PSTR ifaceName, PSTR methodName, alljoyn_messagereceiver_replyhandler_ptr replyFunc, alljoyn_msgarg args, uint numArgs, void* context, uint32 timeout, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_methodcallasync_member(alljoyn_proxybusobject proxyObj, alljoyn_interfacedescription_member method, alljoyn_messagereceiver_replyhandler_ptr replyFunc, alljoyn_msgarg args, uint numArgs, void* context, uint32 timeout, uint8 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_parsexml(alljoyn_proxybusobject proxyObj, PSTR xml, PSTR identifier);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_secureconnection(alljoyn_proxybusobject proxyObj, int32 forceAuth);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_proxybusobject_secureconnectionasync(alljoyn_proxybusobject proxyObj, int32 forceAuth);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_interfacedescription alljoyn_proxybusobject_getinterface(alljoyn_proxybusobject proxyObj, PSTR iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_proxybusobject_getinterfaces(alljoyn_proxybusobject proxyObj, in alljoyn_interfacedescription ifaces, uint numIfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_proxybusobject_getpath(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_proxybusobject_getservicename(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_proxybusobject_getuniquename(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_proxybusobject_getsessionid(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_proxybusobject_implementsinterface(alljoyn_proxybusobject proxyObj, PSTR iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_proxybusobject_copy(alljoyn_proxybusobject source);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_proxybusobject_isvalid(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_proxybusobject_issecure(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_proxybusobject_enablepropertycaching(alljoyn_proxybusobject proxyObj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_permissionconfigurationlistener alljoyn_permissionconfigurationlistener_create(in alljoyn_permissionconfigurationlistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_permissionconfigurationlistener_destroy(alljoyn_permissionconfigurationlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_sessionlistener alljoyn_sessionlistener_create(in alljoyn_sessionlistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionlistener_destroy(alljoyn_sessionlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_sessionportlistener alljoyn_sessionportlistener_create(in alljoyn_sessionportlistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_sessionportlistener_destroy(alljoyn_sessionportlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutlistener alljoyn_aboutlistener_create(in alljoyn_aboutlistener_callback callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutlistener_destroy(alljoyn_aboutlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_busattachment alljoyn_busattachment_create(PSTR applicationName, int32 allowRemoteMessages);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_busattachment alljoyn_busattachment_create_concurrency(PSTR applicationName, int32 allowRemoteMessages, uint32 concurrency);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_destroy(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_start(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_stop(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_join(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_busattachment_getconcurrency(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_busattachment_getconnectspec(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_enableconcurrentcallbacks(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_createinterface(alljoyn_busattachment bus, PSTR name, out alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_createinterface_secure(alljoyn_busattachment bus, PSTR name, out alljoyn_interfacedescription iface, alljoyn_interfacedescription_securitypolicy secPolicy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_connect(alljoyn_busattachment bus, PSTR connectSpec);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_registerbuslistener(alljoyn_busattachment bus, alljoyn_buslistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_unregisterbuslistener(alljoyn_busattachment bus, alljoyn_buslistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_findadvertisedname(alljoyn_busattachment bus, PSTR namePrefix);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_findadvertisednamebytransport(alljoyn_busattachment bus, PSTR namePrefix, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_cancelfindadvertisedname(alljoyn_busattachment bus, PSTR namePrefix);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_cancelfindadvertisednamebytransport(alljoyn_busattachment bus, PSTR namePrefix, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_advertisename(alljoyn_busattachment bus, PSTR name, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_canceladvertisename(alljoyn_busattachment bus, PSTR name, uint16 transports);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_interfacedescription alljoyn_busattachment_getinterface(alljoyn_busattachment bus, PSTR name);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_joinsession(alljoyn_busattachment bus, PSTR sessionHost, uint16 sessionPort, alljoyn_sessionlistener listener, out uint32 sessionId, alljoyn_sessionopts opts);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_joinsessionasync(alljoyn_busattachment bus, PSTR sessionHost, uint16 sessionPort, alljoyn_sessionlistener listener, alljoyn_sessionopts opts, alljoyn_busattachment_joinsessioncb_ptr callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registerbusobject(alljoyn_busattachment bus, alljoyn_busobject obj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registerbusobject_secure(alljoyn_busattachment bus, alljoyn_busobject obj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_unregisterbusobject(alljoyn_busattachment bus, alljoyn_busobject object);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_requestname(alljoyn_busattachment bus, PSTR requestedName, uint32 flags);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_releasename(alljoyn_busattachment bus, PSTR name);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_bindsessionport(alljoyn_busattachment bus, out uint16 sessionPort, alljoyn_sessionopts opts, alljoyn_sessionportlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_unbindsessionport(alljoyn_busattachment bus, uint16 sessionPort);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_enablepeersecurity(alljoyn_busattachment bus, PSTR authMechanisms, alljoyn_authlistener listener, PSTR keyStoreFileName, int32 isShared);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_enablepeersecuritywithpermissionconfigurationlistener(alljoyn_busattachment bus, PSTR authMechanisms, alljoyn_authlistener authListener, PSTR keyStoreFileName, int32 isShared, alljoyn_permissionconfigurationlistener permissionConfigurationListener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_busattachment_ispeersecurityenabled(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_createinterfacesfromxml(alljoyn_busattachment bus, PSTR xml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_busattachment_getinterfaces(alljoyn_busattachment bus, in alljoyn_interfacedescription ifaces, uint numIfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_deleteinterface(alljoyn_busattachment bus, alljoyn_interfacedescription iface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_busattachment_isstarted(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_busattachment_isstopping(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 alljoyn_busattachment_isconnected(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_disconnect(alljoyn_busattachment bus, PSTR unused);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_busattachment_getdbusproxyobj(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_busattachment_getalljoynproxyobj(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_busattachment_getalljoyndebugobj(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_busattachment_getuniquename(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_busattachment_getglobalguidstring(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registersignalhandler(alljoyn_busattachment bus, alljoyn_messagereceiver_signalhandler_ptr signal_handler, alljoyn_interfacedescription_member member, PSTR srcPath);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registersignalhandlerwithrule(alljoyn_busattachment bus, alljoyn_messagereceiver_signalhandler_ptr signal_handler, alljoyn_interfacedescription_member member, PSTR matchRule);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_unregistersignalhandler(alljoyn_busattachment bus, alljoyn_messagereceiver_signalhandler_ptr signal_handler, alljoyn_interfacedescription_member member, PSTR srcPath);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_unregistersignalhandlerwithrule(alljoyn_busattachment bus, alljoyn_messagereceiver_signalhandler_ptr signal_handler, alljoyn_interfacedescription_member member, PSTR matchRule);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_unregisterallhandlers(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registerkeystorelistener(alljoyn_busattachment bus, alljoyn_keystorelistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_reloadkeystore(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_clearkeystore(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_clearkeys(alljoyn_busattachment bus, PSTR guid);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_setkeyexpiration(alljoyn_busattachment bus, PSTR guid, uint32 timeout);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_getkeyexpiration(alljoyn_busattachment bus, PSTR guid, out uint32 timeout);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_addlogonentry(alljoyn_busattachment bus, PSTR authMechanism, PSTR userName, PSTR password);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_addmatch(alljoyn_busattachment bus, PSTR rule);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_removematch(alljoyn_busattachment bus, PSTR rule);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_setsessionlistener(alljoyn_busattachment bus, uint32 sessionId, alljoyn_sessionlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_leavesession(alljoyn_busattachment bus, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_secureconnection(alljoyn_busattachment bus, PSTR name, int32 forceAuth);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_secureconnectionasync(alljoyn_busattachment bus, PSTR name, int32 forceAuth);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_removesessionmember(alljoyn_busattachment bus, uint32 sessionId, PSTR memberName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_setlinktimeout(alljoyn_busattachment bus, uint32 sessionid, out uint32 linkTimeout);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_setlinktimeoutasync(alljoyn_busattachment bus, uint32 sessionid, uint32 linkTimeout, alljoyn_busattachment_setlinktimeoutcb_ptr callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_namehasowner(alljoyn_busattachment bus, PSTR name, out int32 hasOwner);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_getpeerguid(alljoyn_busattachment bus, PSTR name, PSTR guid, out uint guidSz);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_setdaemondebug(alljoyn_busattachment bus, PSTR module, uint32 level);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_busattachment_gettimestamp();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_ping(alljoyn_busattachment bus, PSTR name, uint32 timeout);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_registeraboutlistener(alljoyn_busattachment bus, alljoyn_aboutlistener aboutListener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_unregisteraboutlistener(alljoyn_busattachment bus, alljoyn_aboutlistener aboutListener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_busattachment_unregisterallaboutlisteners(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_whoimplements_interfaces(alljoyn_busattachment bus, in int8* implementsInterfaces, uint numberInterfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_whoimplements_interface(alljoyn_busattachment bus, PSTR implementsInterface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_cancelwhoimplements_interfaces(alljoyn_busattachment bus, in int8* implementsInterfaces, uint numberInterfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_cancelwhoimplements_interface(alljoyn_busattachment bus, PSTR implementsInterface);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_permissionconfigurator alljoyn_busattachment_getpermissionconfigurator(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_registerapplicationstatelistener(alljoyn_busattachment bus, alljoyn_applicationstatelistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_unregisterapplicationstatelistener(alljoyn_busattachment bus, alljoyn_applicationstatelistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_busattachment_deletedefaultkeystore(PSTR applicationName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern _alljoyn_abouticonobj_handle* alljoyn_abouticonobj_create(alljoyn_busattachment bus, out _alljoyn_abouticon_handle icon);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticonobj_destroy(out _alljoyn_abouticonobj_handle icon);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern _alljoyn_abouticonproxy_handle* alljoyn_abouticonproxy_create(alljoyn_busattachment bus, PSTR busName, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_abouticonproxy_destroy(out _alljoyn_abouticonproxy_handle proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_abouticonproxy_geticon(out _alljoyn_abouticonproxy_handle proxy, out _alljoyn_abouticon_handle icon);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_abouticonproxy_getversion(out _alljoyn_abouticonproxy_handle proxy, out uint16 version);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutdatalistener alljoyn_aboutdatalistener_create(in alljoyn_aboutdatalistener_callbacks callbacks, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutdatalistener_destroy(alljoyn_aboutdatalistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutobj alljoyn_aboutobj_create(alljoyn_busattachment bus, alljoyn_about_announceflag isAnnounced);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutobj_destroy(alljoyn_aboutobj obj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutobj_announce(alljoyn_aboutobj obj, uint16 sessionPort, alljoyn_aboutdata aboutData);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutobj_announce_using_datalistener(alljoyn_aboutobj obj, uint16 sessionPort, alljoyn_aboutdatalistener aboutListener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutobj_unannounce(alljoyn_aboutobj obj);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutobjectdescription alljoyn_aboutobjectdescription_create();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutobjectdescription alljoyn_aboutobjectdescription_create_full(alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutobjectdescription_createfrommsgarg(alljoyn_aboutobjectdescription description, alljoyn_msgarg arg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutobjectdescription_destroy(alljoyn_aboutobjectdescription description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_aboutobjectdescription_getpaths(alljoyn_aboutobjectdescription description, in int8* paths, uint numPaths);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_aboutobjectdescription_getinterfaces(alljoyn_aboutobjectdescription description, PSTR path, in int8* interfaces, uint numInterfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint alljoyn_aboutobjectdescription_getinterfacepaths(alljoyn_aboutobjectdescription description, PSTR interfaceName, in int8* paths, uint numPaths);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutobjectdescription_clear(alljoyn_aboutobjectdescription description);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutobjectdescription_haspath(alljoyn_aboutobjectdescription description, PSTR path);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutobjectdescription_hasinterface(alljoyn_aboutobjectdescription description, PSTR interfaceName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8 alljoyn_aboutobjectdescription_hasinterfaceatpath(alljoyn_aboutobjectdescription description, PSTR path, PSTR interfaceName);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutobjectdescription_getmsgarg(alljoyn_aboutobjectdescription description, alljoyn_msgarg msgArg);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_aboutproxy alljoyn_aboutproxy_create(alljoyn_busattachment bus, PSTR busName, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_aboutproxy_destroy(alljoyn_aboutproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutproxy_getobjectdescription(alljoyn_aboutproxy proxy, alljoyn_msgarg objectDesc);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutproxy_getaboutdata(alljoyn_aboutproxy proxy, PSTR language, alljoyn_msgarg data);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_aboutproxy_getversion(alljoyn_aboutproxy proxy, out uint16 version);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_pinglistener alljoyn_pinglistener_create(in alljoyn_pinglistener_callback callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_pinglistener_destroy(alljoyn_pinglistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_autopinger alljoyn_autopinger_create(alljoyn_busattachment bus);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_autopinger_destroy(alljoyn_autopinger autopinger);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_autopinger_pause(alljoyn_autopinger autopinger);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_autopinger_resume(alljoyn_autopinger autopinger);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_autopinger_addpinggroup(alljoyn_autopinger autopinger, PSTR group, alljoyn_pinglistener listener, uint32 pinginterval);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_autopinger_removepinggroup(alljoyn_autopinger autopinger, PSTR group);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_autopinger_setpinginterval(alljoyn_autopinger autopinger, PSTR group, uint32 pinginterval);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_autopinger_adddestination(alljoyn_autopinger autopinger, PSTR group, PSTR destination);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_autopinger_removedestination(alljoyn_autopinger autopinger, PSTR group, PSTR destination, int32 removeall);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_getversion();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR alljoyn_getbuildinfo();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 alljoyn_getnumericversion();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_init();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_shutdown();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_routerinit();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_routerinitwithconfig(out int8 configXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_routershutdown();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject_ref alljoyn_proxybusobject_ref_create(alljoyn_proxybusobject proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject alljoyn_proxybusobject_ref_get(alljoyn_proxybusobject_ref @ref);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_proxybusobject_ref_incref(alljoyn_proxybusobject_ref @ref);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_proxybusobject_ref_decref(alljoyn_proxybusobject_ref @ref);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_observerlistener alljoyn_observerlistener_create(in alljoyn_observerlistener_callback callback, void* context);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_observerlistener_destroy(alljoyn_observerlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_observer alljoyn_observer_create(alljoyn_busattachment bus, in int8* mandatoryInterfaces, uint numMandatoryInterfaces);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_observer_destroy(alljoyn_observer observer);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_observer_registerlistener(alljoyn_observer observer, alljoyn_observerlistener listener, int32 triggerOnExisting);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_observer_unregisterlistener(alljoyn_observer observer, alljoyn_observerlistener listener);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_observer_unregisteralllisteners(alljoyn_observer observer);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject_ref alljoyn_observer_get(alljoyn_observer observer, PSTR uniqueBusName, PSTR objectPath);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject_ref alljoyn_observer_getfirst(alljoyn_observer observer);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_proxybusobject_ref alljoyn_observer_getnext(alljoyn_observer observer, alljoyn_proxybusobject_ref proxyref);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_passwordmanager_setcredentials(PSTR authMechanism, PSTR password);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 alljoyn_securityapplicationproxy_getpermissionmanagementsessionport();
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern alljoyn_securityapplicationproxy alljoyn_securityapplicationproxy_create(alljoyn_busattachment bus, out int8 appBusName, uint32 sessionId);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_destroy(alljoyn_securityapplicationproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_claim(alljoyn_securityapplicationproxy proxy, out int8 caKey, out int8 identityCertificateChain, in uint8 groupId, uint groupSize, out int8 groupAuthority, out int8* manifestsXmls, uint manifestsCount);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getmanifesttemplate(alljoyn_securityapplicationproxy proxy, out int8* manifestTemplateXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_manifesttemplate_destroy(out int8 manifestTemplateXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getapplicationstate(alljoyn_securityapplicationproxy proxy, out alljoyn_applicationstate applicationState);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getclaimcapabilities(alljoyn_securityapplicationproxy proxy, out uint16 capabilities);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getclaimcapabilitiesadditionalinfo(alljoyn_securityapplicationproxy proxy, out uint16 additionalInfo);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getpolicy(alljoyn_securityapplicationproxy proxy, out int8* policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_getdefaultpolicy(alljoyn_securityapplicationproxy proxy, out int8* policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_policy_destroy(out int8 policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_updatepolicy(alljoyn_securityapplicationproxy proxy, out int8 policyXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_updateidentity(alljoyn_securityapplicationproxy proxy, out int8 identityCertificateChain, out int8* manifestsXmls, uint manifestsCount);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_installmembership(alljoyn_securityapplicationproxy proxy, out int8 membershipCertificateChain);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_reset(alljoyn_securityapplicationproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_resetpolicy(alljoyn_securityapplicationproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_startmanagement(alljoyn_securityapplicationproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_endmanagement(alljoyn_securityapplicationproxy proxy);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_geteccpublickey(alljoyn_securityapplicationproxy proxy, out int8* eccPublicKey);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_eccpublickey_destroy(out int8 eccPublicKey);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_signmanifest(out int8 unsignedManifestXml, out int8 identityCertificatePem, out int8 signingPrivateKeyPem, out int8* signedManifestXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_manifest_destroy(out int8 signedManifestXml);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_computemanifestdigest(out int8 unsignedManifestXml, out int8 identityCertificatePem, out uint8* digest, out uint digestSize);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void alljoyn_securityapplicationproxy_digest_destroy(out uint8 digest);
		[Import("msajapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern QStatus alljoyn_securityapplicationproxy_setmanifestsignature(out int8 unsignedManifestXml, out int8 identityCertificatePem, in uint8 signature, uint signatureSize, out int8* signedManifestXml);
	}
}
