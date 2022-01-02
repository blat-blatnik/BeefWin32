using System;

// namespace System.MessageQueuing
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PRLT = 0;
		public const uint32 PRLE = 1;
		public const uint32 PRGT = 2;
		public const uint32 PRGE = 3;
		public const uint32 PREQ = 4;
		public const uint32 PRNE = 5;
		public const uint32 QUERY_SORTASCEND = 0;
		public const uint32 QUERY_SORTDESCEND = 1;
		public const uint32 MQ_MOVE_ACCESS = 4;
		public const uint32 MQ_ACTION_RECEIVE = 0;
		public const uint32 MQ_ACTION_PEEK_CURRENT = 2147483648;
		public const uint32 MQ_ACTION_PEEK_NEXT = 2147483649;
		public const uint32 MQ_LOOKUP_PEEK_CURRENT = 1073741840;
		public const uint32 MQ_LOOKUP_PEEK_NEXT = 1073741841;
		public const uint32 MQ_LOOKUP_PEEK_PREV = 1073741842;
		public const uint32 MQ_LOOKUP_PEEK_FIRST = 1073741844;
		public const uint32 MQ_LOOKUP_PEEK_LAST = 1073741848;
		public const uint32 MQ_LOOKUP_RECEIVE_CURRENT = 1073741856;
		public const uint32 MQ_LOOKUP_RECEIVE_NEXT = 1073741857;
		public const uint32 MQ_LOOKUP_RECEIVE_PREV = 1073741858;
		public const uint32 MQ_LOOKUP_RECEIVE_FIRST = 1073741860;
		public const uint32 MQ_LOOKUP_RECEIVE_LAST = 1073741864;
		public const uint32 MQ_LOOKUP_RECEIVE_ALLOW_PEEK = 1073742112;
		public const uint32 PROPID_M_BASE = 0;
		public const uint32 PROPID_M_CLASS = 1;
		public const uint32 PROPID_M_MSGID = 2;
		public const uint32 PROPID_M_CORRELATIONID = 3;
		public const uint32 PROPID_M_PRIORITY = 4;
		public const uint32 PROPID_M_DELIVERY = 5;
		public const uint32 PROPID_M_ACKNOWLEDGE = 6;
		public const uint32 PROPID_M_JOURNAL = 7;
		public const uint32 PROPID_M_APPSPECIFIC = 8;
		public const uint32 PROPID_M_BODY = 9;
		public const uint32 PROPID_M_BODY_SIZE = 10;
		public const uint32 PROPID_M_LABEL = 11;
		public const uint32 PROPID_M_LABEL_LEN = 12;
		public const uint32 PROPID_M_TIME_TO_REACH_QUEUE = 13;
		public const uint32 PROPID_M_TIME_TO_BE_RECEIVED = 14;
		public const uint32 PROPID_M_RESP_QUEUE = 15;
		public const uint32 PROPID_M_RESP_QUEUE_LEN = 16;
		public const uint32 PROPID_M_ADMIN_QUEUE = 17;
		public const uint32 PROPID_M_ADMIN_QUEUE_LEN = 18;
		public const uint32 PROPID_M_VERSION = 19;
		public const uint32 PROPID_M_SENDERID = 20;
		public const uint32 PROPID_M_SENDERID_LEN = 21;
		public const uint32 PROPID_M_SENDERID_TYPE = 22;
		public const uint32 PROPID_M_PRIV_LEVEL = 23;
		public const uint32 PROPID_M_AUTH_LEVEL = 24;
		public const uint32 PROPID_M_AUTHENTICATED = 25;
		public const uint32 PROPID_M_HASH_ALG = 26;
		public const uint32 PROPID_M_ENCRYPTION_ALG = 27;
		public const uint32 PROPID_M_SENDER_CERT = 28;
		public const uint32 PROPID_M_SENDER_CERT_LEN = 29;
		public const uint32 PROPID_M_SRC_MACHINE_ID = 30;
		public const uint32 PROPID_M_SENTTIME = 31;
		public const uint32 PROPID_M_ARRIVEDTIME = 32;
		public const uint32 PROPID_M_DEST_QUEUE = 33;
		public const uint32 PROPID_M_DEST_QUEUE_LEN = 34;
		public const uint32 PROPID_M_EXTENSION = 35;
		public const uint32 PROPID_M_EXTENSION_LEN = 36;
		public const uint32 PROPID_M_SECURITY_CONTEXT = 37;
		public const uint32 PROPID_M_CONNECTOR_TYPE = 38;
		public const uint32 PROPID_M_XACT_STATUS_QUEUE = 39;
		public const uint32 PROPID_M_XACT_STATUS_QUEUE_LEN = 40;
		public const uint32 PROPID_M_TRACE = 41;
		public const uint32 PROPID_M_BODY_TYPE = 42;
		public const uint32 PROPID_M_DEST_SYMM_KEY = 43;
		public const uint32 PROPID_M_DEST_SYMM_KEY_LEN = 44;
		public const uint32 PROPID_M_SIGNATURE = 45;
		public const uint32 PROPID_M_SIGNATURE_LEN = 46;
		public const uint32 PROPID_M_PROV_TYPE = 47;
		public const uint32 PROPID_M_PROV_NAME = 48;
		public const uint32 PROPID_M_PROV_NAME_LEN = 49;
		public const uint32 PROPID_M_FIRST_IN_XACT = 50;
		public const uint32 PROPID_M_LAST_IN_XACT = 51;
		public const uint32 PROPID_M_XACTID = 52;
		public const uint32 PROPID_M_AUTHENTICATED_EX = 53;
		public const uint32 PROPID_M_RESP_FORMAT_NAME = 54;
		public const uint32 PROPID_M_RESP_FORMAT_NAME_LEN = 55;
		public const uint32 PROPID_M_DEST_FORMAT_NAME = 58;
		public const uint32 PROPID_M_DEST_FORMAT_NAME_LEN = 59;
		public const uint32 PROPID_M_LOOKUPID = 60;
		public const uint32 PROPID_M_SOAP_ENVELOPE = 61;
		public const uint32 PROPID_M_SOAP_ENVELOPE_LEN = 62;
		public const uint32 PROPID_M_COMPOUND_MESSAGE = 63;
		public const uint32 PROPID_M_COMPOUND_MESSAGE_SIZE = 64;
		public const uint32 PROPID_M_SOAP_HEADER = 65;
		public const uint32 PROPID_M_SOAP_BODY = 66;
		public const uint32 PROPID_M_DEADLETTER_QUEUE = 67;
		public const uint32 PROPID_M_DEADLETTER_QUEUE_LEN = 68;
		public const uint32 PROPID_M_ABORT_COUNT = 69;
		public const uint32 PROPID_M_MOVE_COUNT = 70;
		public const uint32 PROPID_M_LAST_MOVE_TIME = 75;
		public const uint32 PROPID_M_MSGID_SIZE = 20;
		public const uint32 PROPID_M_CORRELATIONID_SIZE = 20;
		public const uint32 PROPID_M_XACTID_SIZE = 20;
		public const uint32 MQMSG_PRIV_LEVEL_BODY_AES = 5;
		public const uint32 MQMSG_AUTHENTICATED_QM_MESSAGE = 11;
		public const uint32 MQMSG_NOT_FIRST_IN_XACT = 0;
		public const uint32 MQMSG_FIRST_IN_XACT = 1;
		public const uint32 MQMSG_NOT_LAST_IN_XACT = 0;
		public const uint32 MQMSG_LAST_IN_XACT = 1;
		public const uint32 PROPID_Q_BASE = 100;
		public const uint32 PROPID_Q_INSTANCE = 101;
		public const uint32 PROPID_Q_TYPE = 102;
		public const uint32 PROPID_Q_PATHNAME = 103;
		public const uint32 PROPID_Q_JOURNAL = 104;
		public const uint32 PROPID_Q_QUOTA = 105;
		public const uint32 PROPID_Q_BASEPRIORITY = 106;
		public const uint32 PROPID_Q_JOURNAL_QUOTA = 107;
		public const uint32 PROPID_Q_LABEL = 108;
		public const uint32 PROPID_Q_CREATE_TIME = 109;
		public const uint32 PROPID_Q_MODIFY_TIME = 110;
		public const uint32 PROPID_Q_AUTHENTICATE = 111;
		public const uint32 PROPID_Q_PRIV_LEVEL = 112;
		public const uint32 PROPID_Q_TRANSACTION = 113;
		public const uint32 PROPID_Q_PATHNAME_DNS = 124;
		public const uint32 PROPID_Q_MULTICAST_ADDRESS = 125;
		public const uint32 PROPID_Q_ADS_PATH = 126;
		public const uint32 PROPID_QM_BASE = 200;
		public const uint32 PROPID_QM_SITE_ID = 201;
		public const uint32 PROPID_QM_MACHINE_ID = 202;
		public const uint32 PROPID_QM_PATHNAME = 203;
		public const uint32 PROPID_QM_CONNECTION = 204;
		public const uint32 PROPID_QM_ENCRYPTION_PK = 205;
		public const uint32 PROPID_QM_ENCRYPTION_PK_BASE = 231;
		public const uint32 PROPID_QM_ENCRYPTION_PK_ENHANCED = 232;
		public const uint32 PROPID_QM_PATHNAME_DNS = 233;
		public const uint32 PROPID_QM_ENCRYPTION_PK_AES = 244;
		public const uint32 PROPID_PC_BASE = 5800;
		public const uint32 PROPID_PC_VERSION = 5801;
		public const uint32 PROPID_PC_DS_ENABLED = 5802;
		public const uint32 PROPID_MGMT_MSMQ_BASE = 0;
		public const uint32 PROPID_MGMT_MSMQ_ACTIVEQUEUES = 1;
		public const uint32 PROPID_MGMT_MSMQ_PRIVATEQ = 2;
		public const uint32 PROPID_MGMT_MSMQ_DSSERVER = 3;
		public const uint32 PROPID_MGMT_MSMQ_CONNECTED = 4;
		public const uint32 PROPID_MGMT_MSMQ_TYPE = 5;
		public const uint32 PROPID_MGMT_MSMQ_BYTES_IN_ALL_QUEUES = 6;
		public const uint32 PROPID_MGMT_QUEUE_BASE = 0;
		public const uint32 PROPID_MGMT_QUEUE_PATHNAME = 1;
		public const uint32 PROPID_MGMT_QUEUE_FORMATNAME = 2;
		public const uint32 PROPID_MGMT_QUEUE_TYPE = 3;
		public const uint32 PROPID_MGMT_QUEUE_LOCATION = 4;
		public const uint32 PROPID_MGMT_QUEUE_XACT = 5;
		public const uint32 PROPID_MGMT_QUEUE_FOREIGN = 6;
		public const uint32 PROPID_MGMT_QUEUE_MESSAGE_COUNT = 7;
		public const uint32 PROPID_MGMT_QUEUE_BYTES_IN_QUEUE = 8;
		public const uint32 PROPID_MGMT_QUEUE_JOURNAL_MESSAGE_COUNT = 9;
		public const uint32 PROPID_MGMT_QUEUE_BYTES_IN_JOURNAL = 10;
		public const uint32 PROPID_MGMT_QUEUE_STATE = 11;
		public const uint32 PROPID_MGMT_QUEUE_NEXTHOPS = 12;
		public const uint32 PROPID_MGMT_QUEUE_EOD_LAST_ACK = 13;
		public const uint32 PROPID_MGMT_QUEUE_EOD_LAST_ACK_TIME = 14;
		public const uint32 PROPID_MGMT_QUEUE_EOD_LAST_ACK_COUNT = 15;
		public const uint32 PROPID_MGMT_QUEUE_EOD_FIRST_NON_ACK = 16;
		public const uint32 PROPID_MGMT_QUEUE_EOD_LAST_NON_ACK = 17;
		public const uint32 PROPID_MGMT_QUEUE_EOD_NEXT_SEQ = 18;
		public const uint32 PROPID_MGMT_QUEUE_EOD_NO_READ_COUNT = 19;
		public const uint32 PROPID_MGMT_QUEUE_EOD_NO_ACK_COUNT = 20;
		public const uint32 PROPID_MGMT_QUEUE_EOD_RESEND_TIME = 21;
		public const uint32 PROPID_MGMT_QUEUE_EOD_RESEND_INTERVAL = 22;
		public const uint32 PROPID_MGMT_QUEUE_EOD_RESEND_COUNT = 23;
		public const uint32 PROPID_MGMT_QUEUE_EOD_SOURCE_INFO = 24;
		public const uint32 PROPID_MGMT_QUEUE_CONNECTION_HISTORY = 25;
		public const uint32 PROPID_MGMT_QUEUE_SUBQUEUE_COUNT = 26;
		public const uint32 PROPID_MGMT_QUEUE_SUBQUEUE_NAMES = 27;
		public const uint32 PROPID_MGMT_QUEUE_USED_QUOTA = 8;
		public const uint32 PROPID_MGMT_QUEUE_JOURNAL_USED_QUOTA = 10;
		public const uint32 LONG_LIVED = 4294967294;
		public const uint32 MQSEC_DELETE_MESSAGE = 1;
		public const uint32 MQSEC_PEEK_MESSAGE = 2;
		public const uint32 MQSEC_WRITE_MESSAGE = 4;
		public const uint32 MQSEC_DELETE_JOURNAL_MESSAGE = 8;
		public const uint32 MQSEC_SET_QUEUE_PROPERTIES = 16;
		public const uint32 MQSEC_GET_QUEUE_PROPERTIES = 32;
		public const uint32 MQSEC_DELETE_QUEUE = 65536;
		public const uint32 MQSEC_CHANGE_QUEUE_PERMISSIONS = 262144;
		public const uint32 MQSEC_TAKE_QUEUE_OWNERSHIP = 524288;
		public const uint32 MQSEC_QUEUE_GENERIC_EXECUTE = 0;
		public const HRESULT MQ_OK = 0;
		public const HRESULT MQ_ERROR_RESOLVE_ADDRESS = -1072824167;
		public const HRESULT MQ_ERROR_TOO_MANY_PROPERTIES = -1072824166;
		public const HRESULT MQ_ERROR_MESSAGE_NOT_AUTHENTICATED = -1072824165;
		public const HRESULT MQ_ERROR_MESSAGE_LOCKED_UNDER_TRANSACTION = -1072824164;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MQCALG : int32
		{
			MD2 = 32769,
			MD4 = 32770,
			MD5 = 32771,
			SHA = 32772,
			SHA1 = 32772,
			MAC = 32773,
			RSA_SIGN = 9216,
			DSS_SIGN = 8704,
			RSA_KEYX = 41984,
			DES = 26113,
			RC2 = 26114,
			RC4 = 26625,
			SEAL = 26626,
		}
		public enum MQTRANSACTION : int32
		{
			NO_TRANSACTION = 0,
			MTS_TRANSACTION = 1,
			XA_TRANSACTION = 2,
			SINGLE_MESSAGE = 3,
		}
		public enum RELOPS : int32
		{
			NOP = 0,
			EQ = 1,
			NEQ = 2,
			LT = 3,
			GT = 4,
			LE = 5,
			GE = 6,
		}
		public enum MQCERT_REGISTER : int32
		{
			ALWAYS = 1,
			IF_NOT_EXIST = 2,
		}
		public enum MQMSGCURSOR : int32
		{
			FIRST = 0,
			CURRENT = 1,
			NEXT = 2,
		}
		public enum MQMSGCLASS : int32
		{
			NORMAL = 0,
			REPORT = 1,
			ACK_REACH_QUEUE = 2,
			ACK_RECEIVE = 16384,
			NACK_BAD_DST_Q = 32768,
			NACK_PURGED = 32769,
			NACK_REACH_QUEUE_TIMEOUT = 32770,
			NACK_Q_EXCEED_QUOTA = 32771,
			NACK_ACCESS_DENIED = 32772,
			NACK_HOP_COUNT_EXCEEDED = 32773,
			NACK_BAD_SIGNATURE = 32774,
			NACK_BAD_ENCRYPTION = 32775,
			NACK_COULD_NOT_ENCRYPT = 32776,
			NACK_NOT_TRANSACTIONAL_Q = 32777,
			NACK_NOT_TRANSACTIONAL_MSG = 32778,
			NACK_UNSUPPORTED_CRYPTO_PROVIDER = 32779,
			NACK_SOURCE_COMPUTER_GUID_CHANGED = 32780,
			NACK_Q_DELETED = 49152,
			NACK_Q_PURGED = 49153,
			NACK_RECEIVE_TIMEOUT = 49154,
			NACK_RECEIVE_TIMEOUT_AT_SENDER = 49155,
		}
		public enum MQMSGDELIVERY : int32
		{
			EXPRESS = 0,
			RECOVERABLE = 1,
		}
		[AllowDuplicates]
		public enum MQMSGACKNOWLEDGEMENT : int32
		{
			NONE = 0,
			POS_ARRIVAL = 1,
			POS_RECEIVE = 2,
			NEG_ARRIVAL = 4,
			NEG_RECEIVE = 8,
			NACK_REACH_QUEUE = 4,
			FULL_REACH_QUEUE = 5,
			NACK_RECEIVE = 12,
			FULL_RECEIVE = 14,
		}
		public enum MQMSGJOURNAL : int32
		{
			JOURNAL_NONE = 0,
			DEADLETTER = 1,
			JOURNAL = 2,
		}
		public enum MQMSGTRACE : int32
		{
			TRACE_NONE = 0,
			SEND_ROUTE_TO_REPORT_QUEUE = 1,
		}
		public enum MQMSGSENDERIDTYPE : int32
		{
			NONE = 0,
			SID = 1,
		}
		public enum MQMSGPRIVLEVEL : int32
		{
			NONE = 0,
			BODY_BASE = 1,
			BODY_ENHANCED = 3,
		}
		[AllowDuplicates]
		public enum MQMSGAUTHLEVEL : int32
		{
			NONE = 0,
			ALWAYS = 1,
			MSMQ10 = 2,
			SIG10 = 2,
			MSMQ20 = 4,
			SIG20 = 4,
			SIG30 = 8,
		}
		[AllowDuplicates]
		public enum MQMSGIDSIZE : int32
		{
			MSGID_SIZE = 20,
			CORRELATIONID_SIZE = 20,
			XACTID_SIZE = 20,
		}
		public enum MQMSGMAX : int32
		{
			MQ_MAX_MSG_LABEL_LEN = 249,
		}
		[AllowDuplicates]
		public enum MQMSGAUTHENTICATION : int32
		{
			AUTHENTICATION_NOT_REQUESTED = 0,
			AUTHENTICATION_REQUESTED = 1,
			AUTHENTICATED_SIG10 = 1,
			AUTHENTICATION_REQUESTED_EX = 3,
			AUTHENTICATED_SIG20 = 3,
			AUTHENTICATED_SIG30 = 5,
			AUTHENTICATED_SIGXML = 9,
		}
		public enum MQSHARE : int32
		{
			NONE = 0,
			RECEIVE_SHARE = 1,
		}
		public enum MQACCESS : int32
		{
			RECEIVE_ACCESS = 1,
			SEND_ACCESS = 2,
			PEEK_ACCESS = 32,
			ADMIN_ACCESS = 128,
		}
		public enum MQJOURNAL : int32
		{
			JOURNAL_NONE = 0,
			JOURNAL = 1,
		}
		public enum MQTRANSACTIONAL : int32
		{
			TRANSACTIONAL_NONE = 0,
			TRANSACTIONAL = 1,
		}
		public enum MQAUTHENTICATE : int32
		{
			AUTHENTICATE_NONE = 0,
			AUTHENTICATE = 1,
		}
		public enum MQPRIVLEVEL : int32
		{
			NONE = 0,
			OPTIONAL = 1,
			BODY = 2,
		}
		public enum MQPRIORITY : int32
		{
			MIN_PRIORITY = 0,
			MAX_PRIORITY = 7,
		}
		[AllowDuplicates]
		public enum MQMAX : int32
		{
			NAME_LEN = 124,
			LABEL_LEN = 124,
		}
		public enum QUEUE_TYPE : int32
		{
			PUBLIC = 0,
			PRIVATE = 1,
			MACHINE = 2,
			CONNECTOR = 3,
			MULTICAST = 4,
		}
		public enum FOREIGN_STATUS : int32
		{
			FOREIGN = 0,
			NOT_FOREIGN = 1,
			UNKNOWN = 2,
		}
		public enum XACT_STATUS : int32
		{
			XACT = 0,
			NOT_XACT = 1,
			UNKNOWN = 2,
		}
		public enum QUEUE_STATE : int32
		{
			LOCAL_CONNECTION = 0,
			DISCONNECTED = 1,
			WAITING = 2,
			NEEDVALIDATE = 3,
			ONHOLD = 4,
			NONACTIVE = 5,
			CONNECTED = 6,
			DISCONNECTING = 7,
			LOCKED = 8,
		}
		[AllowDuplicates]
		public enum MQDEFAULT : int32
		{
			M_PRIORITY = 3,
			M_DELIVERY = 0,
			M_ACKNOWLEDGE = 0,
			M_JOURNAL = 0,
			M_APPSPECIFIC = 0,
			M_PRIV_LEVEL = 0,
			M_AUTH_LEVEL = 0,
			M_SENDERID_TYPE = 1,
			Q_JOURNAL = 0,
			Q_BASEPRIORITY = 0,
			Q_QUOTA = -1,
			Q_JOURNAL_QUOTA = -1,
			Q_TRANSACTION = 0,
			Q_AUTHENTICATE = 0,
			Q_PRIV_LEVEL = 1,
			M_LOOKUPID = 0,
		}
		[AllowDuplicates]
		public enum MQERROR : int32
		{
			ERROR = -1072824319,
			ERROR_PROPERTY = -1072824318,
			ERROR_QUEUE_NOT_FOUND = -1072824317,
			ERROR_QUEUE_NOT_ACTIVE = -1072824316,
			ERROR_QUEUE_EXISTS = -1072824315,
			ERROR_INVALID_PARAMETER = -1072824314,
			ERROR_INVALID_HANDLE = -1072824313,
			ERROR_OPERATION_CANCELLED = -1072824312,
			ERROR_SHARING_VIOLATION = -1072824311,
			ERROR_SERVICE_NOT_AVAILABLE = -1072824309,
			ERROR_MACHINE_NOT_FOUND = -1072824307,
			ERROR_ILLEGAL_SORT = -1072824304,
			ERROR_ILLEGAL_USER = -1072824303,
			ERROR_NO_DS = -1072824301,
			ERROR_ILLEGAL_QUEUE_PATHNAME = -1072824300,
			ERROR_ILLEGAL_PROPERTY_VALUE = -1072824296,
			ERROR_ILLEGAL_PROPERTY_VT = -1072824295,
			ERROR_BUFFER_OVERFLOW = -1072824294,
			ERROR_IO_TIMEOUT = -1072824293,
			ERROR_ILLEGAL_CURSOR_ACTION = -1072824292,
			ERROR_MESSAGE_ALREADY_RECEIVED = -1072824291,
			ERROR_ILLEGAL_FORMATNAME = -1072824290,
			ERROR_FORMATNAME_BUFFER_TOO_SMALL = -1072824289,
			ERROR_UNSUPPORTED_FORMATNAME_OPERATION = -1072824288,
			ERROR_ILLEGAL_SECURITY_DESCRIPTOR = -1072824287,
			ERROR_SENDERID_BUFFER_TOO_SMALL = -1072824286,
			ERROR_SECURITY_DESCRIPTOR_TOO_SMALL = -1072824285,
			ERROR_CANNOT_IMPERSONATE_CLIENT = -1072824284,
			ERROR_ACCESS_DENIED = -1072824283,
			ERROR_PRIVILEGE_NOT_HELD = -1072824282,
			ERROR_INSUFFICIENT_RESOURCES = -1072824281,
			ERROR_USER_BUFFER_TOO_SMALL = -1072824280,
			ERROR_MESSAGE_STORAGE_FAILED = -1072824278,
			ERROR_SENDER_CERT_BUFFER_TOO_SMALL = -1072824277,
			ERROR_INVALID_CERTIFICATE = -1072824276,
			ERROR_CORRUPTED_INTERNAL_CERTIFICATE = -1072824275,
			ERROR_INTERNAL_USER_CERT_EXIST = -1072824274,
			ERROR_NO_INTERNAL_USER_CERT = -1072824273,
			ERROR_CORRUPTED_SECURITY_DATA = -1072824272,
			ERROR_CORRUPTED_PERSONAL_CERT_STORE = -1072824271,
			ERROR_COMPUTER_DOES_NOT_SUPPORT_ENCRYPTION = -1072824269,
			ERROR_BAD_SECURITY_CONTEXT = -1072824267,
			ERROR_COULD_NOT_GET_USER_SID = -1072824266,
			ERROR_COULD_NOT_GET_ACCOUNT_INFO = -1072824265,
			ERROR_ILLEGAL_MQCOLUMNS = -1072824264,
			ERROR_ILLEGAL_PROPID = -1072824263,
			ERROR_ILLEGAL_RELATION = -1072824262,
			ERROR_ILLEGAL_PROPERTY_SIZE = -1072824261,
			ERROR_ILLEGAL_RESTRICTION_PROPID = -1072824260,
			ERROR_ILLEGAL_MQQUEUEPROPS = -1072824259,
			ERROR_PROPERTY_NOTALLOWED = -1072824258,
			ERROR_INSUFFICIENT_PROPERTIES = -1072824257,
			ERROR_MACHINE_EXISTS = -1072824256,
			ERROR_ILLEGAL_MQQMPROPS = -1072824255,
			ERROR_DS_IS_FULL = -1072824254,
			ERROR_DS_ERROR = -1072824253,
			ERROR_INVALID_OWNER = -1072824252,
			ERROR_UNSUPPORTED_ACCESS_MODE = -1072824251,
			ERROR_RESULT_BUFFER_TOO_SMALL = -1072824250,
			ERROR_DELETE_CN_IN_USE = -1072824248,
			ERROR_NO_RESPONSE_FROM_OBJECT_SERVER = -1072824247,
			ERROR_OBJECT_SERVER_NOT_AVAILABLE = -1072824246,
			ERROR_QUEUE_NOT_AVAILABLE = -1072824245,
			ERROR_DTC_CONNECT = -1072824244,
			ERROR_TRANSACTION_IMPORT = -1072824242,
			ERROR_TRANSACTION_USAGE = -1072824240,
			ERROR_TRANSACTION_SEQUENCE = -1072824239,
			ERROR_MISSING_CONNECTOR_TYPE = -1072824235,
			ERROR_STALE_HANDLE = -1072824234,
			ERROR_TRANSACTION_ENLIST = -1072824232,
			ERROR_QUEUE_DELETED = -1072824230,
			ERROR_ILLEGAL_CONTEXT = -1072824229,
			ERROR_ILLEGAL_SORT_PROPID = -1072824228,
			ERROR_LABEL_TOO_LONG = -1072824227,
			ERROR_LABEL_BUFFER_TOO_SMALL = -1072824226,
			ERROR_MQIS_SERVER_EMPTY = -1072824225,
			ERROR_MQIS_READONLY_MODE = -1072824224,
			ERROR_SYMM_KEY_BUFFER_TOO_SMALL = -1072824223,
			ERROR_SIGNATURE_BUFFER_TOO_SMALL = -1072824222,
			ERROR_PROV_NAME_BUFFER_TOO_SMALL = -1072824221,
			ERROR_ILLEGAL_OPERATION = -1072824220,
			ERROR_WRITE_NOT_ALLOWED = -1072824219,
			ERROR_WKS_CANT_SERVE_CLIENT = -1072824218,
			ERROR_DEPEND_WKS_LICENSE_OVERFLOW = -1072824217,
			CORRUPTED_QUEUE_WAS_DELETED = -1072824216,
			ERROR_REMOTE_MACHINE_NOT_AVAILABLE = -1072824215,
			ERROR_UNSUPPORTED_OPERATION = -1072824214,
			ERROR_ENCRYPTION_PROVIDER_NOT_SUPPORTED = -1072824213,
			ERROR_CANNOT_SET_CRYPTO_SEC_DESCR = -1072824212,
			ERROR_CERTIFICATE_NOT_PROVIDED = -1072824211,
			ERROR_Q_DNS_PROPERTY_NOT_SUPPORTED = -1072824210,
			ERROR_CANT_CREATE_CERT_STORE = -1072824209,
			ERROR_CANNOT_CREATE_CERT_STORE = -1072824209,
			ERROR_CANT_OPEN_CERT_STORE = -1072824208,
			ERROR_CANNOT_OPEN_CERT_STORE = -1072824208,
			ERROR_ILLEGAL_ENTERPRISE_OPERATION = -1072824207,
			ERROR_CANNOT_GRANT_ADD_GUID = -1072824206,
			ERROR_CANNOT_LOAD_MSMQOCM = -1072824205,
			ERROR_NO_ENTRY_POINT_MSMQOCM = -1072824204,
			ERROR_NO_MSMQ_SERVERS_ON_DC = -1072824203,
			ERROR_CANNOT_JOIN_DOMAIN = -1072824202,
			ERROR_CANNOT_CREATE_ON_GC = -1072824201,
			ERROR_GUID_NOT_MATCHING = -1072824200,
			ERROR_PUBLIC_KEY_NOT_FOUND = -1072824199,
			ERROR_PUBLIC_KEY_DOES_NOT_EXIST = -1072824198,
			ERROR_ILLEGAL_MQPRIVATEPROPS = -1072824197,
			ERROR_NO_GC_IN_DOMAIN = -1072824196,
			ERROR_NO_MSMQ_SERVERS_ON_GC = -1072824195,
			ERROR_CANNOT_GET_DN = -1072824194,
			ERROR_CANNOT_HASH_DATA_EX = -1072824193,
			ERROR_CANNOT_SIGN_DATA_EX = -1072824192,
			ERROR_CANNOT_CREATE_HASH_EX = -1072824191,
			ERROR_FAIL_VERIFY_SIGNATURE_EX = -1072824190,
			ERROR_CANNOT_DELETE_PSC_OBJECTS = -1072824189,
			ERROR_NO_MQUSER_OU = -1072824188,
			ERROR_CANNOT_LOAD_MQAD = -1072824187,
			ERROR_CANNOT_LOAD_MQDSSRV = -1072824186,
			ERROR_PROPERTIES_CONFLICT = -1072824185,
			ERROR_MESSAGE_NOT_FOUND = -1072824184,
			ERROR_CANT_RESOLVE_SITES = -1072824183,
			ERROR_NOT_SUPPORTED_BY_DEPENDENT_CLIENTS = -1072824182,
			ERROR_OPERATION_NOT_SUPPORTED_BY_REMOTE_COMPUTER = -1072824181,
			ERROR_NOT_A_CORRECT_OBJECT_CLASS = -1072824180,
			ERROR_MULTI_SORT_KEYS = -1072824179,
			ERROR_GC_NEEDED = -1072824178,
			ERROR_DS_BIND_ROOT_FOREST = -1072824177,
			ERROR_DS_LOCAL_USER = -1072824176,
			ERROR_Q_ADS_PROPERTY_NOT_SUPPORTED = -1072824175,
			ERROR_BAD_XML_FORMAT = -1072824174,
			ERROR_UNSUPPORTED_CLASS = -1072824173,
			ERROR_UNINITIALIZED_OBJECT = -1072824172,
			ERROR_CANNOT_CREATE_PSC_OBJECTS = -1072824171,
			ERROR_CANNOT_UPDATE_PSC_OBJECTS = -1072824170,
		}
		public enum MQWARNING : int32
		{
			PROPERTY = 1074659329,
			ILLEGAL_PROPERTY = 1074659330,
			PROPERTY_IGNORED = 1074659331,
			UNSUPPORTED_PROPERTY = 1074659332,
			DUPLICATE_PROPERTY = 1074659333,
			OPERATION_PENDING = 1074659334,
			FORMATNAME_BUFFER_TOO_SMALL = 1074659337,
			INTERNAL_USER_CERT_EXIST = 1074659338,
			OWNER_IGNORED = 1074659339,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MSMQQuery = .(0xd7d6e073, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQMessage = .(0xd7d6e075, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQQueue = .(0xd7d6e079, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQEvent = .(0xd7d6e07a, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQQueueInfo = .(0xd7d6e07c, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQQueueInfos = .(0xd7d6e07e, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQTransaction = .(0xd7d6e080, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQCoordinatedTransactionDispenser = .(0xd7d6e082, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQTransactionDispenser = .(0xd7d6e084, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQApplication = .(0xd7d6e086, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
		public const Guid CLSID_MSMQDestination = .(0xeba96b18, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
		public const Guid CLSID_MSMQCollection = .(0xf72b9031, 0x2f0c, 0x43e8, 0x92, 0x4e, 0xe6, 0x05, 0x2c, 0xdc, 0x49, 0x3f);
		public const Guid CLSID_MSMQManagement = .(0x39ce96fe, 0xf4c5, 0x4484, 0xa1, 0x43, 0x4c, 0x2d, 0x5d, 0x32, 0x42, 0x29);
		public const Guid CLSID_MSMQOutgoingQueueManagement = .(0x0188401c, 0x247a, 0x4fed, 0x99, 0xc6, 0xbf, 0x14, 0x11, 0x9d, 0x70, 0x55);
		public const Guid CLSID_MSMQQueueManagement = .(0x33b6d07e, 0xf27d, 0x42fa, 0xb2, 0xd7, 0xbf, 0x82, 0xe1, 0x1e, 0x93, 0x74);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMSMQQuery : IDispatch
		{
			public const new Guid IID = .(0xd7d6e072, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupQueue(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos** ppqinfos) mut => VT.LookupQueue(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ppqinfos);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos** ppqinfos) LookupQueue;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfo : IDispatch
		{
			public const new Guid IID = .(0xd7d6e07b, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QueueGuid(BSTR* pbstrGuidQueue) mut => VT.get_QueueGuid(ref this, pbstrGuidQueue);
			public HRESULT get_ServiceTypeGuid(BSTR* pbstrGuidServiceType) mut => VT.get_ServiceTypeGuid(ref this, pbstrGuidServiceType);
			public HRESULT put_ServiceTypeGuid(BSTR bstrGuidServiceType) mut => VT.put_ServiceTypeGuid(ref this, bstrGuidServiceType);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_PathName(BSTR* pbstrPathName) mut => VT.get_PathName(ref this, pbstrPathName);
			public HRESULT put_PathName(BSTR bstrPathName) mut => VT.put_PathName(ref this, bstrPathName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT put_FormatName(BSTR bstrFormatName) mut => VT.put_FormatName(ref this, bstrFormatName);
			public HRESULT get_IsTransactional(out int16 pisTransactional) mut => VT.get_IsTransactional(ref this, out pisTransactional);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_Quota(out int32 plQuota) mut => VT.get_Quota(ref this, out plQuota);
			public HRESULT put_Quota(int32 lQuota) mut => VT.put_Quota(ref this, lQuota);
			public HRESULT get_BasePriority(out int32 plBasePriority) mut => VT.get_BasePriority(ref this, out plBasePriority);
			public HRESULT put_BasePriority(int32 lBasePriority) mut => VT.put_BasePriority(ref this, lBasePriority);
			public HRESULT get_CreateTime(out VARIANT pvarCreateTime) mut => VT.get_CreateTime(ref this, out pvarCreateTime);
			public HRESULT get_ModifyTime(out VARIANT pvarModifyTime) mut => VT.get_ModifyTime(ref this, out pvarModifyTime);
			public HRESULT get_Authenticate(out int32 plAuthenticate) mut => VT.get_Authenticate(ref this, out plAuthenticate);
			public HRESULT put_Authenticate(int32 lAuthenticate) mut => VT.put_Authenticate(ref this, lAuthenticate);
			public HRESULT get_JournalQuota(out int32 plJournalQuota) mut => VT.get_JournalQuota(ref this, out plJournalQuota);
			public HRESULT put_JournalQuota(int32 lJournalQuota) mut => VT.put_JournalQuota(ref this, lJournalQuota);
			public HRESULT get_IsWorldReadable(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable(ref this, out pisWorldReadable);
			public HRESULT Create(ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) mut => VT.Create(ref this, ref IsTransactional, ref IsWorldReadable);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Open(int32 Access, int32 ShareMode, IMSMQQueue** ppq) mut => VT.Open(ref this, Access, ShareMode, ppq);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Update() mut => VT.Update(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR* pbstrGuidQueue) get_QueueGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR* pbstrGuidServiceType) get_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR bstrGuidServiceType) put_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR* pbstrPathName) get_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR bstrPathName) put_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, BSTR bstrFormatName) put_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int16 pisTransactional) get_IsTransactional;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plQuota) get_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lQuota) put_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plBasePriority) get_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lBasePriority) put_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out VARIANT pvarCreateTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out VARIANT pvarModifyTime) get_ModifyTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plAuthenticate) get_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lAuthenticate) put_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int32 plJournalQuota) get_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 lJournalQuota) put_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, out int16 pisWorldReadable) get_IsWorldReadable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self, int32 Access, int32 ShareMode, IMSMQQueue** ppq) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo self) Update;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfo2 : IDispatch
		{
			public const new Guid IID = .(0xfd174a80, 0x89cf, 0x11d2, 0xb0, 0xf2, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QueueGuid(BSTR* pbstrGuidQueue) mut => VT.get_QueueGuid(ref this, pbstrGuidQueue);
			public HRESULT get_ServiceTypeGuid(BSTR* pbstrGuidServiceType) mut => VT.get_ServiceTypeGuid(ref this, pbstrGuidServiceType);
			public HRESULT put_ServiceTypeGuid(BSTR bstrGuidServiceType) mut => VT.put_ServiceTypeGuid(ref this, bstrGuidServiceType);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_PathName(BSTR* pbstrPathName) mut => VT.get_PathName(ref this, pbstrPathName);
			public HRESULT put_PathName(BSTR bstrPathName) mut => VT.put_PathName(ref this, bstrPathName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT put_FormatName(BSTR bstrFormatName) mut => VT.put_FormatName(ref this, bstrFormatName);
			public HRESULT get_IsTransactional(out int16 pisTransactional) mut => VT.get_IsTransactional(ref this, out pisTransactional);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_Quota(out int32 plQuota) mut => VT.get_Quota(ref this, out plQuota);
			public HRESULT put_Quota(int32 lQuota) mut => VT.put_Quota(ref this, lQuota);
			public HRESULT get_BasePriority(out int32 plBasePriority) mut => VT.get_BasePriority(ref this, out plBasePriority);
			public HRESULT put_BasePriority(int32 lBasePriority) mut => VT.put_BasePriority(ref this, lBasePriority);
			public HRESULT get_CreateTime(out VARIANT pvarCreateTime) mut => VT.get_CreateTime(ref this, out pvarCreateTime);
			public HRESULT get_ModifyTime(out VARIANT pvarModifyTime) mut => VT.get_ModifyTime(ref this, out pvarModifyTime);
			public HRESULT get_Authenticate(out int32 plAuthenticate) mut => VT.get_Authenticate(ref this, out plAuthenticate);
			public HRESULT put_Authenticate(int32 lAuthenticate) mut => VT.put_Authenticate(ref this, lAuthenticate);
			public HRESULT get_JournalQuota(out int32 plJournalQuota) mut => VT.get_JournalQuota(ref this, out plJournalQuota);
			public HRESULT put_JournalQuota(int32 lJournalQuota) mut => VT.put_JournalQuota(ref this, lJournalQuota);
			public HRESULT get_IsWorldReadable(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable(ref this, out pisWorldReadable);
			public HRESULT Create(ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) mut => VT.Create(ref this, ref IsTransactional, ref IsWorldReadable);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Open(int32 Access, int32 ShareMode, IMSMQQueue2** ppq) mut => VT.Open(ref this, Access, ShareMode, ppq);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Update() mut => VT.Update(ref this);
			public HRESULT get_PathNameDNS(BSTR* pbstrPathNameDNS) mut => VT.get_PathNameDNS(ref this, pbstrPathNameDNS);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_Security(out VARIANT pvarSecurity) mut => VT.get_Security(ref this, out pvarSecurity);
			public HRESULT put_Security(VARIANT varSecurity) mut => VT.put_Security(ref this, varSecurity);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrGuidQueue) get_QueueGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrGuidServiceType) get_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR bstrGuidServiceType) put_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrPathName) get_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR bstrPathName) put_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR bstrFormatName) put_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int16 pisTransactional) get_IsTransactional;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plQuota) get_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lQuota) put_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plBasePriority) get_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lBasePriority) put_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out VARIANT pvarCreateTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out VARIANT pvarModifyTime) get_ModifyTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plAuthenticate) get_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lAuthenticate) put_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int32 plJournalQuota) get_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 lJournalQuota) put_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out int16 pisWorldReadable) get_IsWorldReadable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, int32 Access, int32 ShareMode, IMSMQQueue2** ppq) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, BSTR* pbstrPathNameDNS) get_PathNameDNS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, out VARIANT pvarSecurity) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo2 self, VARIANT varSecurity) put_Security;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfo3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b1d, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QueueGuid(BSTR* pbstrGuidQueue) mut => VT.get_QueueGuid(ref this, pbstrGuidQueue);
			public HRESULT get_ServiceTypeGuid(BSTR* pbstrGuidServiceType) mut => VT.get_ServiceTypeGuid(ref this, pbstrGuidServiceType);
			public HRESULT put_ServiceTypeGuid(BSTR bstrGuidServiceType) mut => VT.put_ServiceTypeGuid(ref this, bstrGuidServiceType);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_PathName(BSTR* pbstrPathName) mut => VT.get_PathName(ref this, pbstrPathName);
			public HRESULT put_PathName(BSTR bstrPathName) mut => VT.put_PathName(ref this, bstrPathName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT put_FormatName(BSTR bstrFormatName) mut => VT.put_FormatName(ref this, bstrFormatName);
			public HRESULT get_IsTransactional(out int16 pisTransactional) mut => VT.get_IsTransactional(ref this, out pisTransactional);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_Quota(out int32 plQuota) mut => VT.get_Quota(ref this, out plQuota);
			public HRESULT put_Quota(int32 lQuota) mut => VT.put_Quota(ref this, lQuota);
			public HRESULT get_BasePriority(out int32 plBasePriority) mut => VT.get_BasePriority(ref this, out plBasePriority);
			public HRESULT put_BasePriority(int32 lBasePriority) mut => VT.put_BasePriority(ref this, lBasePriority);
			public HRESULT get_CreateTime(out VARIANT pvarCreateTime) mut => VT.get_CreateTime(ref this, out pvarCreateTime);
			public HRESULT get_ModifyTime(out VARIANT pvarModifyTime) mut => VT.get_ModifyTime(ref this, out pvarModifyTime);
			public HRESULT get_Authenticate(out int32 plAuthenticate) mut => VT.get_Authenticate(ref this, out plAuthenticate);
			public HRESULT put_Authenticate(int32 lAuthenticate) mut => VT.put_Authenticate(ref this, lAuthenticate);
			public HRESULT get_JournalQuota(out int32 plJournalQuota) mut => VT.get_JournalQuota(ref this, out plJournalQuota);
			public HRESULT put_JournalQuota(int32 lJournalQuota) mut => VT.put_JournalQuota(ref this, lJournalQuota);
			public HRESULT get_IsWorldReadable(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable(ref this, out pisWorldReadable);
			public HRESULT Create(ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) mut => VT.Create(ref this, ref IsTransactional, ref IsWorldReadable);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Open(int32 Access, int32 ShareMode, IMSMQQueue3** ppq) mut => VT.Open(ref this, Access, ShareMode, ppq);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Update() mut => VT.Update(ref this);
			public HRESULT get_PathNameDNS(BSTR* pbstrPathNameDNS) mut => VT.get_PathNameDNS(ref this, pbstrPathNameDNS);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_Security(out VARIANT pvarSecurity) mut => VT.get_Security(ref this, out pvarSecurity);
			public HRESULT put_Security(VARIANT varSecurity) mut => VT.put_Security(ref this, varSecurity);
			public HRESULT get_IsTransactional2(out int16 pisTransactional) mut => VT.get_IsTransactional2(ref this, out pisTransactional);
			public HRESULT get_IsWorldReadable2(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable2(ref this, out pisWorldReadable);
			public HRESULT get_MulticastAddress(BSTR* pbstrMulticastAddress) mut => VT.get_MulticastAddress(ref this, pbstrMulticastAddress);
			public HRESULT put_MulticastAddress(BSTR bstrMulticastAddress) mut => VT.put_MulticastAddress(ref this, bstrMulticastAddress);
			public HRESULT get_ADsPath(BSTR* pbstrADsPath) mut => VT.get_ADsPath(ref this, pbstrADsPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrGuidQueue) get_QueueGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrGuidServiceType) get_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR bstrGuidServiceType) put_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrPathName) get_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR bstrPathName) put_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR bstrFormatName) put_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int16 pisTransactional) get_IsTransactional;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plQuota) get_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lQuota) put_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plBasePriority) get_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lBasePriority) put_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out VARIANT pvarCreateTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out VARIANT pvarModifyTime) get_ModifyTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plAuthenticate) get_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lAuthenticate) put_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int32 plJournalQuota) get_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 lJournalQuota) put_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int16 pisWorldReadable) get_IsWorldReadable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, int32 Access, int32 ShareMode, IMSMQQueue3** ppq) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrPathNameDNS) get_PathNameDNS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out VARIANT pvarSecurity) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, VARIANT varSecurity) put_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int16 pisTransactional) get_IsTransactional2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, out int16 pisWorldReadable) get_IsWorldReadable2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrMulticastAddress) get_MulticastAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR bstrMulticastAddress) put_MulticastAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo3 self, BSTR* pbstrADsPath) get_ADsPath;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfo4 : IDispatch
		{
			public const new Guid IID = .(0xeba96b21, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QueueGuid(BSTR* pbstrGuidQueue) mut => VT.get_QueueGuid(ref this, pbstrGuidQueue);
			public HRESULT get_ServiceTypeGuid(BSTR* pbstrGuidServiceType) mut => VT.get_ServiceTypeGuid(ref this, pbstrGuidServiceType);
			public HRESULT put_ServiceTypeGuid(BSTR bstrGuidServiceType) mut => VT.put_ServiceTypeGuid(ref this, bstrGuidServiceType);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_PathName(BSTR* pbstrPathName) mut => VT.get_PathName(ref this, pbstrPathName);
			public HRESULT put_PathName(BSTR bstrPathName) mut => VT.put_PathName(ref this, bstrPathName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT put_FormatName(BSTR bstrFormatName) mut => VT.put_FormatName(ref this, bstrFormatName);
			public HRESULT get_IsTransactional(out int16 pisTransactional) mut => VT.get_IsTransactional(ref this, out pisTransactional);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_Quota(out int32 plQuota) mut => VT.get_Quota(ref this, out plQuota);
			public HRESULT put_Quota(int32 lQuota) mut => VT.put_Quota(ref this, lQuota);
			public HRESULT get_BasePriority(out int32 plBasePriority) mut => VT.get_BasePriority(ref this, out plBasePriority);
			public HRESULT put_BasePriority(int32 lBasePriority) mut => VT.put_BasePriority(ref this, lBasePriority);
			public HRESULT get_CreateTime(out VARIANT pvarCreateTime) mut => VT.get_CreateTime(ref this, out pvarCreateTime);
			public HRESULT get_ModifyTime(out VARIANT pvarModifyTime) mut => VT.get_ModifyTime(ref this, out pvarModifyTime);
			public HRESULT get_Authenticate(out int32 plAuthenticate) mut => VT.get_Authenticate(ref this, out plAuthenticate);
			public HRESULT put_Authenticate(int32 lAuthenticate) mut => VT.put_Authenticate(ref this, lAuthenticate);
			public HRESULT get_JournalQuota(out int32 plJournalQuota) mut => VT.get_JournalQuota(ref this, out plJournalQuota);
			public HRESULT put_JournalQuota(int32 lJournalQuota) mut => VT.put_JournalQuota(ref this, lJournalQuota);
			public HRESULT get_IsWorldReadable(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable(ref this, out pisWorldReadable);
			public HRESULT Create(ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) mut => VT.Create(ref this, ref IsTransactional, ref IsWorldReadable);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Open(int32 Access, int32 ShareMode, IMSMQQueue4** ppq) mut => VT.Open(ref this, Access, ShareMode, ppq);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Update() mut => VT.Update(ref this);
			public HRESULT get_PathNameDNS(BSTR* pbstrPathNameDNS) mut => VT.get_PathNameDNS(ref this, pbstrPathNameDNS);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_Security(out VARIANT pvarSecurity) mut => VT.get_Security(ref this, out pvarSecurity);
			public HRESULT put_Security(VARIANT varSecurity) mut => VT.put_Security(ref this, varSecurity);
			public HRESULT get_IsTransactional2(out int16 pisTransactional) mut => VT.get_IsTransactional2(ref this, out pisTransactional);
			public HRESULT get_IsWorldReadable2(out int16 pisWorldReadable) mut => VT.get_IsWorldReadable2(ref this, out pisWorldReadable);
			public HRESULT get_MulticastAddress(BSTR* pbstrMulticastAddress) mut => VT.get_MulticastAddress(ref this, pbstrMulticastAddress);
			public HRESULT put_MulticastAddress(BSTR bstrMulticastAddress) mut => VT.put_MulticastAddress(ref this, bstrMulticastAddress);
			public HRESULT get_ADsPath(BSTR* pbstrADsPath) mut => VT.get_ADsPath(ref this, pbstrADsPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrGuidQueue) get_QueueGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrGuidServiceType) get_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR bstrGuidServiceType) put_ServiceTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrPathName) get_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR bstrPathName) put_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR bstrFormatName) put_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int16 pisTransactional) get_IsTransactional;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plQuota) get_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lQuota) put_Quota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plBasePriority) get_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lBasePriority) put_BasePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out VARIANT pvarCreateTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out VARIANT pvarModifyTime) get_ModifyTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plAuthenticate) get_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lAuthenticate) put_Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int32 plJournalQuota) get_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 lJournalQuota) put_JournalQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int16 pisWorldReadable) get_IsWorldReadable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, ref VARIANT IsTransactional, ref VARIANT IsWorldReadable) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, int32 Access, int32 ShareMode, IMSMQQueue4** ppq) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrPathNameDNS) get_PathNameDNS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out VARIANT pvarSecurity) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, VARIANT varSecurity) put_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int16 pisTransactional) get_IsTransactional2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, out int16 pisWorldReadable) get_IsWorldReadable2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrMulticastAddress) get_MulticastAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR bstrMulticastAddress) put_MulticastAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfo4 self, BSTR* pbstrADsPath) get_ADsPath;
			}
		}
		[CRepr]
		public struct IMSMQQueue : IDispatch
		{
			public const new Guid IID = .(0xd7d6e076, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Access(out int32 plAccess) mut => VT.get_Access(ref this, out plAccess);
			public HRESULT get_ShareMode(out int32 plShareMode) mut => VT.get_ShareMode(ref this, out plShareMode);
			public HRESULT get_QueueInfo(IMSMQQueueInfo** ppqinfo) mut => VT.get_QueueInfo(ref this, ppqinfo);
			public HRESULT get_Handle(out int32 plHandle) mut => VT.get_Handle(ref this, out plHandle);
			public HRESULT get_IsOpen(out int16 pisOpen) mut => VT.get_IsOpen(ref this, out pisOpen);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Receive(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Receive(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Peek(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Peek(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT EnableNotification(IMSMQEvent* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) mut => VT.EnableNotification(ref this, Event, ref Cursor, ref ReceiveTimeout);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT ReceiveCurrent(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.ReceiveCurrent(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekNext(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekNext(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekCurrent(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekCurrent(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, out int32 plAccess) get_Access;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, out int32 plShareMode) get_ShareMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, IMSMQQueueInfo** ppqinfo) get_QueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, out int32 plHandle) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, out int16 pisOpen) get_IsOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Peek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, IMSMQEvent* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) EnableNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) ReceiveCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekCurrent;
			}
		}
		[CRepr]
		public struct IMSMQQueue2 : IDispatch
		{
			public const new Guid IID = .(0xef0574e0, 0x06d8, 0x11d3, 0xb1, 0x00, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Access(out int32 plAccess) mut => VT.get_Access(ref this, out plAccess);
			public HRESULT get_ShareMode(out int32 plShareMode) mut => VT.get_ShareMode(ref this, out plShareMode);
			public HRESULT get_QueueInfo(IMSMQQueueInfo2** ppqinfo) mut => VT.get_QueueInfo(ref this, ppqinfo);
			public HRESULT get_Handle(out int32 plHandle) mut => VT.get_Handle(ref this, out plHandle);
			public HRESULT get_IsOpen(out int16 pisOpen) mut => VT.get_IsOpen(ref this, out pisOpen);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Receive_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Receive_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Peek_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Peek_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT EnableNotification(IMSMQEvent2* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) mut => VT.EnableNotification(ref this, Event, ref Cursor, ref ReceiveTimeout);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT ReceiveCurrent_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.ReceiveCurrent_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekNext_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekNext_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekCurrent_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekCurrent_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Receive(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) mut => VT.Receive(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT Peek(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) mut => VT.Peek(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveCurrent(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) mut => VT.ReceiveCurrent(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekNext(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) mut => VT.PeekNext(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekCurrent(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) mut => VT.PeekCurrent(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, out int32 plAccess) get_Access;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, out int32 plShareMode) get_ShareMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, IMSMQQueueInfo2** ppqinfo) get_QueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, out int32 plHandle) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, out int16 pisOpen) get_IsOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Receive_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Peek_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, IMSMQEvent2* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) EnableNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) ReceiveCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekNext_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) Peek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) ReceiveCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) PeekNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage2** ppmsg) PeekCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQQueue3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b1b, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Access(out int32 plAccess) mut => VT.get_Access(ref this, out plAccess);
			public HRESULT get_ShareMode(out int32 plShareMode) mut => VT.get_ShareMode(ref this, out plShareMode);
			public HRESULT get_QueueInfo(IMSMQQueueInfo3** ppqinfo) mut => VT.get_QueueInfo(ref this, ppqinfo);
			public HRESULT get_Handle(out int32 plHandle) mut => VT.get_Handle(ref this, out plHandle);
			public HRESULT get_IsOpen(out int16 pisOpen) mut => VT.get_IsOpen(ref this, out pisOpen);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Receive_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Receive_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Peek_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Peek_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT EnableNotification(IMSMQEvent3* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) mut => VT.EnableNotification(ref this, Event, ref Cursor, ref ReceiveTimeout);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT ReceiveCurrent_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.ReceiveCurrent_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekNext_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekNext_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekCurrent_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekCurrent_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Receive(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.Receive(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT Peek(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.Peek(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveCurrent(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceiveCurrent(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekNext(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekNext(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekCurrent(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekCurrent(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_Handle2(out VARIANT pvarHandle) mut => VT.get_Handle2(ref this, out pvarHandle);
			public HRESULT ReceiveByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceiveByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveNextByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceiveNextByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceivePreviousByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceivePreviousByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveFirstByLookupId(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceiveFirstByLookupId(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveLastByLookupId(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.ReceiveLastByLookupId(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekNextByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekNextByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekPreviousByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekPreviousByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekFirstByLookupId(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekFirstByLookupId(ref this, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekLastByLookupId(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) mut => VT.PeekLastByLookupId(ref this, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT Purge() mut => VT.Purge(ref this);
			public HRESULT get_IsOpen2(out int16 pisOpen) mut => VT.get_IsOpen2(ref this, out pisOpen);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out int32 plAccess) get_Access;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out int32 plShareMode) get_ShareMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, IMSMQQueueInfo3** ppqinfo) get_QueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out int32 plHandle) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out int16 pisOpen) get_IsOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Receive_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Peek_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, IMSMQEvent3* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) EnableNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) ReceiveCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekNext_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) Peek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceiveCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out VARIANT pvarHandle) get_Handle2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceiveByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceiveNextByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceivePreviousByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceiveFirstByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) ReceiveLastByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekNextByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekPreviousByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekFirstByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage3** ppmsg) PeekLastByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self) Purge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue3 self, out int16 pisOpen) get_IsOpen2;
			}
		}
		[CRepr]
		public struct IMSMQQueue4 : IDispatch
		{
			public const new Guid IID = .(0xeba96b20, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Access(out int32 plAccess) mut => VT.get_Access(ref this, out plAccess);
			public HRESULT get_ShareMode(out int32 plShareMode) mut => VT.get_ShareMode(ref this, out plShareMode);
			public HRESULT get_QueueInfo(IMSMQQueueInfo4** ppqinfo) mut => VT.get_QueueInfo(ref this, ppqinfo);
			public HRESULT get_Handle(out int32 plHandle) mut => VT.get_Handle(ref this, out plHandle);
			public HRESULT get_IsOpen(out int16 pisOpen) mut => VT.get_IsOpen(ref this, out pisOpen);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Receive_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Receive_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Peek_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.Peek_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT EnableNotification(IMSMQEvent3* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) mut => VT.EnableNotification(ref this, Event, ref Cursor, ref ReceiveTimeout);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT ReceiveCurrent_v1(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.ReceiveCurrent_v1(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekNext_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekNext_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT PeekCurrent_v1(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) mut => VT.PeekCurrent_v1(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ppmsg);
			public HRESULT Receive(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.Receive(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT Peek(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.Peek(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveCurrent(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveCurrent(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekNext(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekNext(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT PeekCurrent(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekCurrent(ref this, ref WantDestinationQueue, ref WantBody, ref ReceiveTimeout, ref WantConnectorType, ppmsg);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_Handle2(out VARIANT pvarHandle) mut => VT.get_Handle2(ref this, out pvarHandle);
			public HRESULT ReceiveByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveNextByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveNextByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceivePreviousByLookupId(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceivePreviousByLookupId(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveFirstByLookupId(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveFirstByLookupId(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT ReceiveLastByLookupId(ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveLastByLookupId(ref this, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekNextByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekNextByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekPreviousByLookupId(VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekPreviousByLookupId(ref this, LookupId, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekFirstByLookupId(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekFirstByLookupId(ref this, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT PeekLastByLookupId(ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.PeekLastByLookupId(ref this, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);
			public HRESULT Purge() mut => VT.Purge(ref this);
			public HRESULT get_IsOpen2(out int16 pisOpen) mut => VT.get_IsOpen2(ref this, out pisOpen);
			public HRESULT ReceiveByLookupIdAllowPeek(VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) mut => VT.ReceiveByLookupIdAllowPeek(ref this, LookupId, ref Transaction, ref WantDestinationQueue, ref WantBody, ref WantConnectorType, ppmsg);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out int32 plAccess) get_Access;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out int32 plShareMode) get_ShareMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, IMSMQQueueInfo4** ppqinfo) get_QueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out int32 plHandle) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out int16 pisOpen) get_IsOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Receive_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) Peek_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, IMSMQEvent3* Event, ref VARIANT Cursor, ref VARIANT ReceiveTimeout) EnableNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) ReceiveCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekNext_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, IMSMQMessage** ppmsg) PeekCurrent_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) Peek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT ReceiveTimeout, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out VARIANT pvarHandle) get_Handle2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveNextByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceivePreviousByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveFirstByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveLastByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekNextByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekPreviousByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekFirstByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) PeekLastByLookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self) Purge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, out int16 pisOpen) get_IsOpen2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueue4 self, VARIANT LookupId, ref VARIANT Transaction, ref VARIANT WantDestinationQueue, ref VARIANT WantBody, ref VARIANT WantConnectorType, IMSMQMessage4** ppmsg) ReceiveByLookupIdAllowPeek;
			}
		}
		[CRepr]
		public struct IMSMQMessage : IDispatch
		{
			public const new Guid IID = .(0xd7d6e074, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Class(out int32 plClass) mut => VT.get_Class(ref this, out plClass);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_AuthLevel(out int32 plAuthLevel) mut => VT.get_AuthLevel(ref this, out plAuthLevel);
			public HRESULT put_AuthLevel(int32 lAuthLevel) mut => VT.put_AuthLevel(ref this, lAuthLevel);
			public HRESULT get_IsAuthenticated(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated(ref this, out pisAuthenticated);
			public HRESULT get_Delivery(out int32 plDelivery) mut => VT.get_Delivery(ref this, out plDelivery);
			public HRESULT put_Delivery(int32 lDelivery) mut => VT.put_Delivery(ref this, lDelivery);
			public HRESULT get_Trace(out int32 plTrace) mut => VT.get_Trace(ref this, out plTrace);
			public HRESULT put_Trace(int32 lTrace) mut => VT.put_Trace(ref this, lTrace);
			public HRESULT get_Priority(out int32 plPriority) mut => VT.get_Priority(ref this, out plPriority);
			public HRESULT put_Priority(int32 lPriority) mut => VT.put_Priority(ref this, lPriority);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_ResponseQueueInfo(IMSMQQueueInfo** ppqinfoResponse) mut => VT.get_ResponseQueueInfo(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo(IMSMQQueueInfo* pqinfoResponse) mut => VT.putref_ResponseQueueInfo(ref this, pqinfoResponse);
			public HRESULT get_AppSpecific(out int32 plAppSpecific) mut => VT.get_AppSpecific(ref this, out plAppSpecific);
			public HRESULT put_AppSpecific(int32 lAppSpecific) mut => VT.put_AppSpecific(ref this, lAppSpecific);
			public HRESULT get_SourceMachineGuid(BSTR* pbstrGuidSrcMachine) mut => VT.get_SourceMachineGuid(ref this, pbstrGuidSrcMachine);
			public HRESULT get_BodyLength(out int32 pcbBody) mut => VT.get_BodyLength(ref this, out pcbBody);
			public HRESULT get_Body(out VARIANT pvarBody) mut => VT.get_Body(ref this, out pvarBody);
			public HRESULT put_Body(VARIANT varBody) mut => VT.put_Body(ref this, varBody);
			public HRESULT get_AdminQueueInfo(IMSMQQueueInfo** ppqinfoAdmin) mut => VT.get_AdminQueueInfo(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo(IMSMQQueueInfo* pqinfoAdmin) mut => VT.putref_AdminQueueInfo(ref this, pqinfoAdmin);
			public HRESULT get_Id(out VARIANT pvarMsgId) mut => VT.get_Id(ref this, out pvarMsgId);
			public HRESULT get_CorrelationId(out VARIANT pvarMsgId) mut => VT.get_CorrelationId(ref this, out pvarMsgId);
			public HRESULT put_CorrelationId(VARIANT varMsgId) mut => VT.put_CorrelationId(ref this, varMsgId);
			public HRESULT get_Ack(out int32 plAck) mut => VT.get_Ack(ref this, out plAck);
			public HRESULT put_Ack(int32 lAck) mut => VT.put_Ack(ref this, lAck);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_MaxTimeToReachQueue(out int32 plMaxTimeToReachQueue) mut => VT.get_MaxTimeToReachQueue(ref this, out plMaxTimeToReachQueue);
			public HRESULT put_MaxTimeToReachQueue(int32 lMaxTimeToReachQueue) mut => VT.put_MaxTimeToReachQueue(ref this, lMaxTimeToReachQueue);
			public HRESULT get_MaxTimeToReceive(out int32 plMaxTimeToReceive) mut => VT.get_MaxTimeToReceive(ref this, out plMaxTimeToReceive);
			public HRESULT put_MaxTimeToReceive(int32 lMaxTimeToReceive) mut => VT.put_MaxTimeToReceive(ref this, lMaxTimeToReceive);
			public HRESULT get_HashAlgorithm(out int32 plHashAlg) mut => VT.get_HashAlgorithm(ref this, out plHashAlg);
			public HRESULT put_HashAlgorithm(int32 lHashAlg) mut => VT.put_HashAlgorithm(ref this, lHashAlg);
			public HRESULT get_EncryptAlgorithm(out int32 plEncryptAlg) mut => VT.get_EncryptAlgorithm(ref this, out plEncryptAlg);
			public HRESULT put_EncryptAlgorithm(int32 lEncryptAlg) mut => VT.put_EncryptAlgorithm(ref this, lEncryptAlg);
			public HRESULT get_SentTime(out VARIANT pvarSentTime) mut => VT.get_SentTime(ref this, out pvarSentTime);
			public HRESULT get_ArrivedTime(out VARIANT plArrivedTime) mut => VT.get_ArrivedTime(ref this, out plArrivedTime);
			public HRESULT get_DestinationQueueInfo(IMSMQQueueInfo** ppqinfoDest) mut => VT.get_DestinationQueueInfo(ref this, ppqinfoDest);
			public HRESULT get_SenderCertificate(out VARIANT pvarSenderCert) mut => VT.get_SenderCertificate(ref this, out pvarSenderCert);
			public HRESULT put_SenderCertificate(VARIANT varSenderCert) mut => VT.put_SenderCertificate(ref this, varSenderCert);
			public HRESULT get_SenderId(out VARIANT pvarSenderId) mut => VT.get_SenderId(ref this, out pvarSenderId);
			public HRESULT get_SenderIdType(out int32 plSenderIdType) mut => VT.get_SenderIdType(ref this, out plSenderIdType);
			public HRESULT put_SenderIdType(int32 lSenderIdType) mut => VT.put_SenderIdType(ref this, lSenderIdType);
			public HRESULT Send(IMSMQQueue* DestinationQueue, ref VARIANT Transaction) mut => VT.Send(ref this, DestinationQueue, ref Transaction);
			public HRESULT AttachCurrentSecurityContext() mut => VT.AttachCurrentSecurityContext(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plClass) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plAuthLevel) get_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lAuthLevel) put_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int16 pisAuthenticated) get_IsAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plDelivery) get_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lDelivery) put_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plTrace) get_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lTrace) put_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueueInfo** ppqinfoResponse) get_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueueInfo* pqinfoResponse) putref_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plAppSpecific) get_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lAppSpecific) put_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, BSTR* pbstrGuidSrcMachine) get_SourceMachineGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 pcbBody) get_BodyLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, VARIANT varBody) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueueInfo** ppqinfoAdmin) get_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueueInfo* pqinfoAdmin) putref_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarMsgId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarMsgId) get_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, VARIANT varMsgId) put_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plAck) get_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lAck) put_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plMaxTimeToReachQueue) get_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lMaxTimeToReachQueue) put_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plMaxTimeToReceive) get_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lMaxTimeToReceive) put_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plHashAlg) get_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lHashAlg) put_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plEncryptAlg) get_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lEncryptAlg) put_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarSentTime) get_SentTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT plArrivedTime) get_ArrivedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueueInfo** ppqinfoDest) get_DestinationQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarSenderCert) get_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, VARIANT varSenderCert) put_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out VARIANT pvarSenderId) get_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, out int32 plSenderIdType) get_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, int32 lSenderIdType) put_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self, IMSMQQueue* DestinationQueue, ref VARIANT Transaction) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage self) AttachCurrentSecurityContext;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfos : IDispatch
		{
			public const new Guid IID = .(0xd7d6e07d, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next(IMSMQQueueInfo** ppqinfoNext) mut => VT.Next(ref this, ppqinfoNext);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos self, IMSMQQueueInfo** ppqinfoNext) Next;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfos2 : IDispatch
		{
			public const new Guid IID = .(0xeba96b0f, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next(IMSMQQueueInfo2** ppqinfoNext) mut => VT.Next(ref this, ppqinfoNext);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos2 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos2 self, IMSMQQueueInfo2** ppqinfoNext) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfos3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b1e, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next(IMSMQQueueInfo3** ppqinfoNext) mut => VT.Next(ref this, ppqinfoNext);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos3 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos3 self, IMSMQQueueInfo3** ppqinfoNext) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos3 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQQueueInfos4 : IDispatch
		{
			public const new Guid IID = .(0xeba96b22, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next(IMSMQQueueInfo4** ppqinfoNext) mut => VT.Next(ref this, ppqinfoNext);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos4 self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos4 self, IMSMQQueueInfo4** ppqinfoNext) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueInfos4 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQEvent : IDispatch
		{
			public const new Guid IID = .(0xd7d6e077, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IMSMQEvent2 : IMSMQEvent
		{
			public const new Guid IID = .(0xeba96b12, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IMSMQEvent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQEvent2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQEvent3 : IMSMQEvent2
		{
			public const new Guid IID = .(0xeba96b1c, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMSMQEvent2.VTable {}
		}
		[CRepr]
		public struct IMSMQTransaction : IDispatch
		{
			public const new Guid IID = .(0xd7d6e07f, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Transaction(out int32 plTransaction) mut => VT.get_Transaction(ref this, out plTransaction);
			public HRESULT Commit(ref VARIANT fRetaining, ref VARIANT grfTC, ref VARIANT grfRM) mut => VT.Commit(ref this, ref fRetaining, ref grfTC, ref grfRM);
			public HRESULT Abort(ref VARIANT fRetaining, ref VARIANT fAsync) mut => VT.Abort(ref this, ref fRetaining, ref fAsync);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction self, out int32 plTransaction) get_Transaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction self, ref VARIANT fRetaining, ref VARIANT grfTC, ref VARIANT grfRM) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction self, ref VARIANT fRetaining, ref VARIANT fAsync) Abort;
			}
		}
		[CRepr]
		public struct IMSMQCoordinatedTransactionDispenser : IDispatch
		{
			public const new Guid IID = .(0xd7d6e081, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCoordinatedTransactionDispenser self, IMSMQTransaction** ptransaction) BeginTransaction;
			}
		}
		[CRepr]
		public struct IMSMQTransactionDispenser : IDispatch
		{
			public const new Guid IID = .(0xd7d6e083, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransactionDispenser self, IMSMQTransaction** ptransaction) BeginTransaction;
			}
		}
		[CRepr]
		public struct IMSMQQuery2 : IDispatch
		{
			public const new Guid IID = .(0xeba96b0e, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupQueue(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos2** ppqinfos) mut => VT.LookupQueue(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ppqinfos);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery2 self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos2** ppqinfos) LookupQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQQuery3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b19, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupQueue_v2(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos3** ppqinfos) mut => VT.LookupQueue_v2(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ppqinfos);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT LookupQueue(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, ref VARIANT MulticastAddress, ref VARIANT RelMulticastAddress, IMSMQQueueInfos3** ppqinfos) mut => VT.LookupQueue(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ref MulticastAddress, ref RelMulticastAddress, ppqinfos);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery3 self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos3** ppqinfos) LookupQueue_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery3 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery3 self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, ref VARIANT MulticastAddress, ref VARIANT RelMulticastAddress, IMSMQQueueInfos3** ppqinfos) LookupQueue;
			}
		}
		[CRepr]
		public struct IMSMQQuery4 : IDispatch
		{
			public const new Guid IID = .(0xeba96b24, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupQueue_v2(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos4** ppqinfos) mut => VT.LookupQueue_v2(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ppqinfos);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT LookupQueue(ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, ref VARIANT MulticastAddress, ref VARIANT RelMulticastAddress, IMSMQQueueInfos4** ppqinfos) mut => VT.LookupQueue(ref this, ref QueueGuid, ref ServiceTypeGuid, ref Label, ref CreateTime, ref ModifyTime, ref RelServiceType, ref RelLabel, ref RelCreateTime, ref RelModifyTime, ref MulticastAddress, ref RelMulticastAddress, ppqinfos);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery4 self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, IMSMQQueueInfos4** ppqinfos) LookupQueue_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery4 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQuery4 self, ref VARIANT QueueGuid, ref VARIANT ServiceTypeGuid, ref VARIANT Label, ref VARIANT CreateTime, ref VARIANT ModifyTime, ref VARIANT RelServiceType, ref VARIANT RelLabel, ref VARIANT RelCreateTime, ref VARIANT RelModifyTime, ref VARIANT MulticastAddress, ref VARIANT RelMulticastAddress, IMSMQQueueInfos4** ppqinfos) LookupQueue;
			}
		}
		[CRepr]
		public struct IMSMQMessage2 : IDispatch
		{
			public const new Guid IID = .(0xd9933be0, 0xa567, 0x11d2, 0xb0, 0xf3, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Class(out int32 plClass) mut => VT.get_Class(ref this, out plClass);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_AuthLevel(out int32 plAuthLevel) mut => VT.get_AuthLevel(ref this, out plAuthLevel);
			public HRESULT put_AuthLevel(int32 lAuthLevel) mut => VT.put_AuthLevel(ref this, lAuthLevel);
			public HRESULT get_IsAuthenticated(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated(ref this, out pisAuthenticated);
			public HRESULT get_Delivery(out int32 plDelivery) mut => VT.get_Delivery(ref this, out plDelivery);
			public HRESULT put_Delivery(int32 lDelivery) mut => VT.put_Delivery(ref this, lDelivery);
			public HRESULT get_Trace(out int32 plTrace) mut => VT.get_Trace(ref this, out plTrace);
			public HRESULT put_Trace(int32 lTrace) mut => VT.put_Trace(ref this, lTrace);
			public HRESULT get_Priority(out int32 plPriority) mut => VT.get_Priority(ref this, out plPriority);
			public HRESULT put_Priority(int32 lPriority) mut => VT.put_Priority(ref this, lPriority);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_ResponseQueueInfo_v1(IMSMQQueueInfo** ppqinfoResponse) mut => VT.get_ResponseQueueInfo_v1(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo_v1(IMSMQQueueInfo* pqinfoResponse) mut => VT.putref_ResponseQueueInfo_v1(ref this, pqinfoResponse);
			public HRESULT get_AppSpecific(out int32 plAppSpecific) mut => VT.get_AppSpecific(ref this, out plAppSpecific);
			public HRESULT put_AppSpecific(int32 lAppSpecific) mut => VT.put_AppSpecific(ref this, lAppSpecific);
			public HRESULT get_SourceMachineGuid(BSTR* pbstrGuidSrcMachine) mut => VT.get_SourceMachineGuid(ref this, pbstrGuidSrcMachine);
			public HRESULT get_BodyLength(out int32 pcbBody) mut => VT.get_BodyLength(ref this, out pcbBody);
			public HRESULT get_Body(out VARIANT pvarBody) mut => VT.get_Body(ref this, out pvarBody);
			public HRESULT put_Body(VARIANT varBody) mut => VT.put_Body(ref this, varBody);
			public HRESULT get_AdminQueueInfo_v1(IMSMQQueueInfo** ppqinfoAdmin) mut => VT.get_AdminQueueInfo_v1(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo_v1(IMSMQQueueInfo* pqinfoAdmin) mut => VT.putref_AdminQueueInfo_v1(ref this, pqinfoAdmin);
			public HRESULT get_Id(out VARIANT pvarMsgId) mut => VT.get_Id(ref this, out pvarMsgId);
			public HRESULT get_CorrelationId(out VARIANT pvarMsgId) mut => VT.get_CorrelationId(ref this, out pvarMsgId);
			public HRESULT put_CorrelationId(VARIANT varMsgId) mut => VT.put_CorrelationId(ref this, varMsgId);
			public HRESULT get_Ack(out int32 plAck) mut => VT.get_Ack(ref this, out plAck);
			public HRESULT put_Ack(int32 lAck) mut => VT.put_Ack(ref this, lAck);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_MaxTimeToReachQueue(out int32 plMaxTimeToReachQueue) mut => VT.get_MaxTimeToReachQueue(ref this, out plMaxTimeToReachQueue);
			public HRESULT put_MaxTimeToReachQueue(int32 lMaxTimeToReachQueue) mut => VT.put_MaxTimeToReachQueue(ref this, lMaxTimeToReachQueue);
			public HRESULT get_MaxTimeToReceive(out int32 plMaxTimeToReceive) mut => VT.get_MaxTimeToReceive(ref this, out plMaxTimeToReceive);
			public HRESULT put_MaxTimeToReceive(int32 lMaxTimeToReceive) mut => VT.put_MaxTimeToReceive(ref this, lMaxTimeToReceive);
			public HRESULT get_HashAlgorithm(out int32 plHashAlg) mut => VT.get_HashAlgorithm(ref this, out plHashAlg);
			public HRESULT put_HashAlgorithm(int32 lHashAlg) mut => VT.put_HashAlgorithm(ref this, lHashAlg);
			public HRESULT get_EncryptAlgorithm(out int32 plEncryptAlg) mut => VT.get_EncryptAlgorithm(ref this, out plEncryptAlg);
			public HRESULT put_EncryptAlgorithm(int32 lEncryptAlg) mut => VT.put_EncryptAlgorithm(ref this, lEncryptAlg);
			public HRESULT get_SentTime(out VARIANT pvarSentTime) mut => VT.get_SentTime(ref this, out pvarSentTime);
			public HRESULT get_ArrivedTime(out VARIANT plArrivedTime) mut => VT.get_ArrivedTime(ref this, out plArrivedTime);
			public HRESULT get_DestinationQueueInfo(IMSMQQueueInfo2** ppqinfoDest) mut => VT.get_DestinationQueueInfo(ref this, ppqinfoDest);
			public HRESULT get_SenderCertificate(out VARIANT pvarSenderCert) mut => VT.get_SenderCertificate(ref this, out pvarSenderCert);
			public HRESULT put_SenderCertificate(VARIANT varSenderCert) mut => VT.put_SenderCertificate(ref this, varSenderCert);
			public HRESULT get_SenderId(out VARIANT pvarSenderId) mut => VT.get_SenderId(ref this, out pvarSenderId);
			public HRESULT get_SenderIdType(out int32 plSenderIdType) mut => VT.get_SenderIdType(ref this, out plSenderIdType);
			public HRESULT put_SenderIdType(int32 lSenderIdType) mut => VT.put_SenderIdType(ref this, lSenderIdType);
			public HRESULT Send(IMSMQQueue2* DestinationQueue, ref VARIANT Transaction) mut => VT.Send(ref this, DestinationQueue, ref Transaction);
			public HRESULT AttachCurrentSecurityContext() mut => VT.AttachCurrentSecurityContext(ref this);
			public HRESULT get_SenderVersion(out int32 plSenderVersion) mut => VT.get_SenderVersion(ref this, out plSenderVersion);
			public HRESULT get_Extension(out VARIANT pvarExtension) mut => VT.get_Extension(ref this, out pvarExtension);
			public HRESULT put_Extension(VARIANT varExtension) mut => VT.put_Extension(ref this, varExtension);
			public HRESULT get_ConnectorTypeGuid(BSTR* pbstrGuidConnectorType) mut => VT.get_ConnectorTypeGuid(ref this, pbstrGuidConnectorType);
			public HRESULT put_ConnectorTypeGuid(BSTR bstrGuidConnectorType) mut => VT.put_ConnectorTypeGuid(ref this, bstrGuidConnectorType);
			public HRESULT get_TransactionStatusQueueInfo(IMSMQQueueInfo2** ppqinfoXactStatus) mut => VT.get_TransactionStatusQueueInfo(ref this, ppqinfoXactStatus);
			public HRESULT get_DestinationSymmetricKey(out VARIANT pvarDestSymmKey) mut => VT.get_DestinationSymmetricKey(ref this, out pvarDestSymmKey);
			public HRESULT put_DestinationSymmetricKey(VARIANT varDestSymmKey) mut => VT.put_DestinationSymmetricKey(ref this, varDestSymmKey);
			public HRESULT get_Signature(out VARIANT pvarSignature) mut => VT.get_Signature(ref this, out pvarSignature);
			public HRESULT put_Signature(VARIANT varSignature) mut => VT.put_Signature(ref this, varSignature);
			public HRESULT get_AuthenticationProviderType(out int32 plAuthProvType) mut => VT.get_AuthenticationProviderType(ref this, out plAuthProvType);
			public HRESULT put_AuthenticationProviderType(int32 lAuthProvType) mut => VT.put_AuthenticationProviderType(ref this, lAuthProvType);
			public HRESULT get_AuthenticationProviderName(BSTR* pbstrAuthProvName) mut => VT.get_AuthenticationProviderName(ref this, pbstrAuthProvName);
			public HRESULT put_AuthenticationProviderName(BSTR bstrAuthProvName) mut => VT.put_AuthenticationProviderName(ref this, bstrAuthProvName);
			public HRESULT put_SenderId(VARIANT varSenderId) mut => VT.put_SenderId(ref this, varSenderId);
			public HRESULT get_MsgClass(out int32 plMsgClass) mut => VT.get_MsgClass(ref this, out plMsgClass);
			public HRESULT put_MsgClass(int32 lMsgClass) mut => VT.put_MsgClass(ref this, lMsgClass);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_TransactionId(out VARIANT pvarXactId) mut => VT.get_TransactionId(ref this, out pvarXactId);
			public HRESULT get_IsFirstInTransaction(out int16 pisFirstInXact) mut => VT.get_IsFirstInTransaction(ref this, out pisFirstInXact);
			public HRESULT get_IsLastInTransaction(out int16 pisLastInXact) mut => VT.get_IsLastInTransaction(ref this, out pisLastInXact);
			public HRESULT get_ResponseQueueInfo(IMSMQQueueInfo2** ppqinfoResponse) mut => VT.get_ResponseQueueInfo(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo(IMSMQQueueInfo2* pqinfoResponse) mut => VT.putref_ResponseQueueInfo(ref this, pqinfoResponse);
			public HRESULT get_AdminQueueInfo(IMSMQQueueInfo2** ppqinfoAdmin) mut => VT.get_AdminQueueInfo(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo(IMSMQQueueInfo2* pqinfoAdmin) mut => VT.putref_AdminQueueInfo(ref this, pqinfoAdmin);
			public HRESULT get_ReceivedAuthenticationLevel(out int16 psReceivedAuthenticationLevel) mut => VT.get_ReceivedAuthenticationLevel(ref this, out psReceivedAuthenticationLevel);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plClass) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plAuthLevel) get_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lAuthLevel) put_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int16 pisAuthenticated) get_IsAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plDelivery) get_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lDelivery) put_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plTrace) get_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lTrace) put_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo** ppqinfoResponse) get_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo* pqinfoResponse) putref_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plAppSpecific) get_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lAppSpecific) put_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR* pbstrGuidSrcMachine) get_SourceMachineGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 pcbBody) get_BodyLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varBody) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo** ppqinfoAdmin) get_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo* pqinfoAdmin) putref_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarMsgId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarMsgId) get_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varMsgId) put_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plAck) get_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lAck) put_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plMaxTimeToReachQueue) get_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lMaxTimeToReachQueue) put_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plMaxTimeToReceive) get_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lMaxTimeToReceive) put_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plHashAlg) get_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lHashAlg) put_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plEncryptAlg) get_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lEncryptAlg) put_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarSentTime) get_SentTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT plArrivedTime) get_ArrivedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2** ppqinfoDest) get_DestinationQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarSenderCert) get_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varSenderCert) put_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarSenderId) get_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plSenderIdType) get_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lSenderIdType) put_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueue2* DestinationQueue, ref VARIANT Transaction) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self) AttachCurrentSecurityContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plSenderVersion) get_SenderVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarExtension) get_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varExtension) put_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR* pbstrGuidConnectorType) get_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR bstrGuidConnectorType) put_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2** ppqinfoXactStatus) get_TransactionStatusQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarDestSymmKey) get_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varDestSymmKey) put_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarSignature) get_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varSignature) put_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plAuthProvType) get_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lAuthProvType) put_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR* pbstrAuthProvName) get_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, BSTR bstrAuthProvName) put_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, VARIANT varSenderId) put_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int32 plMsgClass) get_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, int32 lMsgClass) put_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out VARIANT pvarXactId) get_TransactionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int16 pisFirstInXact) get_IsFirstInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int16 pisLastInXact) get_IsLastInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2** ppqinfoResponse) get_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2* pqinfoResponse) putref_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2** ppqinfoAdmin) get_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, IMSMQQueueInfo2* pqinfoAdmin) putref_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage2 self, out int16 psReceivedAuthenticationLevel) get_ReceivedAuthenticationLevel;
			}
		}
		[CRepr]
		public struct IMSMQMessage3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b1a, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Class(out int32 plClass) mut => VT.get_Class(ref this, out plClass);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_AuthLevel(out int32 plAuthLevel) mut => VT.get_AuthLevel(ref this, out plAuthLevel);
			public HRESULT put_AuthLevel(int32 lAuthLevel) mut => VT.put_AuthLevel(ref this, lAuthLevel);
			public HRESULT get_IsAuthenticated(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated(ref this, out pisAuthenticated);
			public HRESULT get_Delivery(out int32 plDelivery) mut => VT.get_Delivery(ref this, out plDelivery);
			public HRESULT put_Delivery(int32 lDelivery) mut => VT.put_Delivery(ref this, lDelivery);
			public HRESULT get_Trace(out int32 plTrace) mut => VT.get_Trace(ref this, out plTrace);
			public HRESULT put_Trace(int32 lTrace) mut => VT.put_Trace(ref this, lTrace);
			public HRESULT get_Priority(out int32 plPriority) mut => VT.get_Priority(ref this, out plPriority);
			public HRESULT put_Priority(int32 lPriority) mut => VT.put_Priority(ref this, lPriority);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_ResponseQueueInfo_v1(IMSMQQueueInfo** ppqinfoResponse) mut => VT.get_ResponseQueueInfo_v1(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo_v1(IMSMQQueueInfo* pqinfoResponse) mut => VT.putref_ResponseQueueInfo_v1(ref this, pqinfoResponse);
			public HRESULT get_AppSpecific(out int32 plAppSpecific) mut => VT.get_AppSpecific(ref this, out plAppSpecific);
			public HRESULT put_AppSpecific(int32 lAppSpecific) mut => VT.put_AppSpecific(ref this, lAppSpecific);
			public HRESULT get_SourceMachineGuid(BSTR* pbstrGuidSrcMachine) mut => VT.get_SourceMachineGuid(ref this, pbstrGuidSrcMachine);
			public HRESULT get_BodyLength(out int32 pcbBody) mut => VT.get_BodyLength(ref this, out pcbBody);
			public HRESULT get_Body(out VARIANT pvarBody) mut => VT.get_Body(ref this, out pvarBody);
			public HRESULT put_Body(VARIANT varBody) mut => VT.put_Body(ref this, varBody);
			public HRESULT get_AdminQueueInfo_v1(IMSMQQueueInfo** ppqinfoAdmin) mut => VT.get_AdminQueueInfo_v1(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo_v1(IMSMQQueueInfo* pqinfoAdmin) mut => VT.putref_AdminQueueInfo_v1(ref this, pqinfoAdmin);
			public HRESULT get_Id(out VARIANT pvarMsgId) mut => VT.get_Id(ref this, out pvarMsgId);
			public HRESULT get_CorrelationId(out VARIANT pvarMsgId) mut => VT.get_CorrelationId(ref this, out pvarMsgId);
			public HRESULT put_CorrelationId(VARIANT varMsgId) mut => VT.put_CorrelationId(ref this, varMsgId);
			public HRESULT get_Ack(out int32 plAck) mut => VT.get_Ack(ref this, out plAck);
			public HRESULT put_Ack(int32 lAck) mut => VT.put_Ack(ref this, lAck);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_MaxTimeToReachQueue(out int32 plMaxTimeToReachQueue) mut => VT.get_MaxTimeToReachQueue(ref this, out plMaxTimeToReachQueue);
			public HRESULT put_MaxTimeToReachQueue(int32 lMaxTimeToReachQueue) mut => VT.put_MaxTimeToReachQueue(ref this, lMaxTimeToReachQueue);
			public HRESULT get_MaxTimeToReceive(out int32 plMaxTimeToReceive) mut => VT.get_MaxTimeToReceive(ref this, out plMaxTimeToReceive);
			public HRESULT put_MaxTimeToReceive(int32 lMaxTimeToReceive) mut => VT.put_MaxTimeToReceive(ref this, lMaxTimeToReceive);
			public HRESULT get_HashAlgorithm(out int32 plHashAlg) mut => VT.get_HashAlgorithm(ref this, out plHashAlg);
			public HRESULT put_HashAlgorithm(int32 lHashAlg) mut => VT.put_HashAlgorithm(ref this, lHashAlg);
			public HRESULT get_EncryptAlgorithm(out int32 plEncryptAlg) mut => VT.get_EncryptAlgorithm(ref this, out plEncryptAlg);
			public HRESULT put_EncryptAlgorithm(int32 lEncryptAlg) mut => VT.put_EncryptAlgorithm(ref this, lEncryptAlg);
			public HRESULT get_SentTime(out VARIANT pvarSentTime) mut => VT.get_SentTime(ref this, out pvarSentTime);
			public HRESULT get_ArrivedTime(out VARIANT plArrivedTime) mut => VT.get_ArrivedTime(ref this, out plArrivedTime);
			public HRESULT get_DestinationQueueInfo(IMSMQQueueInfo3** ppqinfoDest) mut => VT.get_DestinationQueueInfo(ref this, ppqinfoDest);
			public HRESULT get_SenderCertificate(out VARIANT pvarSenderCert) mut => VT.get_SenderCertificate(ref this, out pvarSenderCert);
			public HRESULT put_SenderCertificate(VARIANT varSenderCert) mut => VT.put_SenderCertificate(ref this, varSenderCert);
			public HRESULT get_SenderId(out VARIANT pvarSenderId) mut => VT.get_SenderId(ref this, out pvarSenderId);
			public HRESULT get_SenderIdType(out int32 plSenderIdType) mut => VT.get_SenderIdType(ref this, out plSenderIdType);
			public HRESULT put_SenderIdType(int32 lSenderIdType) mut => VT.put_SenderIdType(ref this, lSenderIdType);
			public HRESULT Send(IDispatch* DestinationQueue, ref VARIANT Transaction) mut => VT.Send(ref this, DestinationQueue, ref Transaction);
			public HRESULT AttachCurrentSecurityContext() mut => VT.AttachCurrentSecurityContext(ref this);
			public HRESULT get_SenderVersion(out int32 plSenderVersion) mut => VT.get_SenderVersion(ref this, out plSenderVersion);
			public HRESULT get_Extension(out VARIANT pvarExtension) mut => VT.get_Extension(ref this, out pvarExtension);
			public HRESULT put_Extension(VARIANT varExtension) mut => VT.put_Extension(ref this, varExtension);
			public HRESULT get_ConnectorTypeGuid(BSTR* pbstrGuidConnectorType) mut => VT.get_ConnectorTypeGuid(ref this, pbstrGuidConnectorType);
			public HRESULT put_ConnectorTypeGuid(BSTR bstrGuidConnectorType) mut => VT.put_ConnectorTypeGuid(ref this, bstrGuidConnectorType);
			public HRESULT get_TransactionStatusQueueInfo(IMSMQQueueInfo3** ppqinfoXactStatus) mut => VT.get_TransactionStatusQueueInfo(ref this, ppqinfoXactStatus);
			public HRESULT get_DestinationSymmetricKey(out VARIANT pvarDestSymmKey) mut => VT.get_DestinationSymmetricKey(ref this, out pvarDestSymmKey);
			public HRESULT put_DestinationSymmetricKey(VARIANT varDestSymmKey) mut => VT.put_DestinationSymmetricKey(ref this, varDestSymmKey);
			public HRESULT get_Signature(out VARIANT pvarSignature) mut => VT.get_Signature(ref this, out pvarSignature);
			public HRESULT put_Signature(VARIANT varSignature) mut => VT.put_Signature(ref this, varSignature);
			public HRESULT get_AuthenticationProviderType(out int32 plAuthProvType) mut => VT.get_AuthenticationProviderType(ref this, out plAuthProvType);
			public HRESULT put_AuthenticationProviderType(int32 lAuthProvType) mut => VT.put_AuthenticationProviderType(ref this, lAuthProvType);
			public HRESULT get_AuthenticationProviderName(BSTR* pbstrAuthProvName) mut => VT.get_AuthenticationProviderName(ref this, pbstrAuthProvName);
			public HRESULT put_AuthenticationProviderName(BSTR bstrAuthProvName) mut => VT.put_AuthenticationProviderName(ref this, bstrAuthProvName);
			public HRESULT put_SenderId(VARIANT varSenderId) mut => VT.put_SenderId(ref this, varSenderId);
			public HRESULT get_MsgClass(out int32 plMsgClass) mut => VT.get_MsgClass(ref this, out plMsgClass);
			public HRESULT put_MsgClass(int32 lMsgClass) mut => VT.put_MsgClass(ref this, lMsgClass);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_TransactionId(out VARIANT pvarXactId) mut => VT.get_TransactionId(ref this, out pvarXactId);
			public HRESULT get_IsFirstInTransaction(out int16 pisFirstInXact) mut => VT.get_IsFirstInTransaction(ref this, out pisFirstInXact);
			public HRESULT get_IsLastInTransaction(out int16 pisLastInXact) mut => VT.get_IsLastInTransaction(ref this, out pisLastInXact);
			public HRESULT get_ResponseQueueInfo_v2(IMSMQQueueInfo2** ppqinfoResponse) mut => VT.get_ResponseQueueInfo_v2(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo_v2(IMSMQQueueInfo2* pqinfoResponse) mut => VT.putref_ResponseQueueInfo_v2(ref this, pqinfoResponse);
			public HRESULT get_AdminQueueInfo_v2(IMSMQQueueInfo2** ppqinfoAdmin) mut => VT.get_AdminQueueInfo_v2(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo_v2(IMSMQQueueInfo2* pqinfoAdmin) mut => VT.putref_AdminQueueInfo_v2(ref this, pqinfoAdmin);
			public HRESULT get_ReceivedAuthenticationLevel(out int16 psReceivedAuthenticationLevel) mut => VT.get_ReceivedAuthenticationLevel(ref this, out psReceivedAuthenticationLevel);
			public HRESULT get_ResponseQueueInfo(IMSMQQueueInfo3** ppqinfoResponse) mut => VT.get_ResponseQueueInfo(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo(IMSMQQueueInfo3* pqinfoResponse) mut => VT.putref_ResponseQueueInfo(ref this, pqinfoResponse);
			public HRESULT get_AdminQueueInfo(IMSMQQueueInfo3** ppqinfoAdmin) mut => VT.get_AdminQueueInfo(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo(IMSMQQueueInfo3* pqinfoAdmin) mut => VT.putref_AdminQueueInfo(ref this, pqinfoAdmin);
			public HRESULT get_ResponseDestination(IDispatch** ppdestResponse) mut => VT.get_ResponseDestination(ref this, ppdestResponse);
			public HRESULT putref_ResponseDestination(IDispatch* pdestResponse) mut => VT.putref_ResponseDestination(ref this, pdestResponse);
			public HRESULT get_Destination(IDispatch** ppdestDestination) mut => VT.get_Destination(ref this, ppdestDestination);
			public HRESULT get_LookupId(out VARIANT pvarLookupId) mut => VT.get_LookupId(ref this, out pvarLookupId);
			public HRESULT get_IsAuthenticated2(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated2(ref this, out pisAuthenticated);
			public HRESULT get_IsFirstInTransaction2(out int16 pisFirstInXact) mut => VT.get_IsFirstInTransaction2(ref this, out pisFirstInXact);
			public HRESULT get_IsLastInTransaction2(out int16 pisLastInXact) mut => VT.get_IsLastInTransaction2(ref this, out pisLastInXact);
			public HRESULT AttachCurrentSecurityContext2() mut => VT.AttachCurrentSecurityContext2(ref this);
			public HRESULT get_SoapEnvelope(BSTR* pbstrSoapEnvelope) mut => VT.get_SoapEnvelope(ref this, pbstrSoapEnvelope);
			public HRESULT get_CompoundMessage(out VARIANT pvarCompoundMessage) mut => VT.get_CompoundMessage(ref this, out pvarCompoundMessage);
			public HRESULT put_SoapHeader(BSTR bstrSoapHeader) mut => VT.put_SoapHeader(ref this, bstrSoapHeader);
			public HRESULT put_SoapBody(BSTR bstrSoapBody) mut => VT.put_SoapBody(ref this, bstrSoapBody);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plClass) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plAuthLevel) get_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lAuthLevel) put_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisAuthenticated) get_IsAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plDelivery) get_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lDelivery) put_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plTrace) get_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lTrace) put_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo** ppqinfoResponse) get_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo* pqinfoResponse) putref_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plAppSpecific) get_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lAppSpecific) put_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR* pbstrGuidSrcMachine) get_SourceMachineGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 pcbBody) get_BodyLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varBody) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo** ppqinfoAdmin) get_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo* pqinfoAdmin) putref_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarMsgId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarMsgId) get_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varMsgId) put_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plAck) get_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lAck) put_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plMaxTimeToReachQueue) get_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lMaxTimeToReachQueue) put_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plMaxTimeToReceive) get_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lMaxTimeToReceive) put_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plHashAlg) get_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lHashAlg) put_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plEncryptAlg) get_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lEncryptAlg) put_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarSentTime) get_SentTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT plArrivedTime) get_ArrivedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3** ppqinfoDest) get_DestinationQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarSenderCert) get_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varSenderCert) put_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarSenderId) get_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plSenderIdType) get_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lSenderIdType) put_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IDispatch* DestinationQueue, ref VARIANT Transaction) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self) AttachCurrentSecurityContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plSenderVersion) get_SenderVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarExtension) get_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varExtension) put_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR* pbstrGuidConnectorType) get_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR bstrGuidConnectorType) put_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3** ppqinfoXactStatus) get_TransactionStatusQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarDestSymmKey) get_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varDestSymmKey) put_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarSignature) get_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varSignature) put_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plAuthProvType) get_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lAuthProvType) put_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR* pbstrAuthProvName) get_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR bstrAuthProvName) put_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, VARIANT varSenderId) put_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int32 plMsgClass) get_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, int32 lMsgClass) put_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarXactId) get_TransactionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisFirstInXact) get_IsFirstInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisLastInXact) get_IsLastInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo2** ppqinfoResponse) get_ResponseQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo2* pqinfoResponse) putref_ResponseQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo2** ppqinfoAdmin) get_AdminQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo2* pqinfoAdmin) putref_AdminQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 psReceivedAuthenticationLevel) get_ReceivedAuthenticationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3** ppqinfoResponse) get_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3* pqinfoResponse) putref_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3** ppqinfoAdmin) get_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IMSMQQueueInfo3* pqinfoAdmin) putref_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IDispatch** ppdestResponse) get_ResponseDestination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IDispatch* pdestResponse) putref_ResponseDestination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, IDispatch** ppdestDestination) get_Destination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarLookupId) get_LookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisAuthenticated) get_IsAuthenticated2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisFirstInXact) get_IsFirstInTransaction2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out int16 pisLastInXact) get_IsLastInTransaction2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self) AttachCurrentSecurityContext2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR* pbstrSoapEnvelope) get_SoapEnvelope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, out VARIANT pvarCompoundMessage) get_CompoundMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR bstrSoapHeader) put_SoapHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage3 self, BSTR bstrSoapBody) put_SoapBody;
			}
		}
		[CRepr]
		public struct IMSMQMessage4 : IDispatch
		{
			public const new Guid IID = .(0xeba96b23, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Class(out int32 plClass) mut => VT.get_Class(ref this, out plClass);
			public HRESULT get_PrivLevel(out int32 plPrivLevel) mut => VT.get_PrivLevel(ref this, out plPrivLevel);
			public HRESULT put_PrivLevel(int32 lPrivLevel) mut => VT.put_PrivLevel(ref this, lPrivLevel);
			public HRESULT get_AuthLevel(out int32 plAuthLevel) mut => VT.get_AuthLevel(ref this, out plAuthLevel);
			public HRESULT put_AuthLevel(int32 lAuthLevel) mut => VT.put_AuthLevel(ref this, lAuthLevel);
			public HRESULT get_IsAuthenticated(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated(ref this, out pisAuthenticated);
			public HRESULT get_Delivery(out int32 plDelivery) mut => VT.get_Delivery(ref this, out plDelivery);
			public HRESULT put_Delivery(int32 lDelivery) mut => VT.put_Delivery(ref this, lDelivery);
			public HRESULT get_Trace(out int32 plTrace) mut => VT.get_Trace(ref this, out plTrace);
			public HRESULT put_Trace(int32 lTrace) mut => VT.put_Trace(ref this, lTrace);
			public HRESULT get_Priority(out int32 plPriority) mut => VT.get_Priority(ref this, out plPriority);
			public HRESULT put_Priority(int32 lPriority) mut => VT.put_Priority(ref this, lPriority);
			public HRESULT get_Journal(out int32 plJournal) mut => VT.get_Journal(ref this, out plJournal);
			public HRESULT put_Journal(int32 lJournal) mut => VT.put_Journal(ref this, lJournal);
			public HRESULT get_ResponseQueueInfo_v1(IMSMQQueueInfo** ppqinfoResponse) mut => VT.get_ResponseQueueInfo_v1(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo_v1(IMSMQQueueInfo* pqinfoResponse) mut => VT.putref_ResponseQueueInfo_v1(ref this, pqinfoResponse);
			public HRESULT get_AppSpecific(out int32 plAppSpecific) mut => VT.get_AppSpecific(ref this, out plAppSpecific);
			public HRESULT put_AppSpecific(int32 lAppSpecific) mut => VT.put_AppSpecific(ref this, lAppSpecific);
			public HRESULT get_SourceMachineGuid(BSTR* pbstrGuidSrcMachine) mut => VT.get_SourceMachineGuid(ref this, pbstrGuidSrcMachine);
			public HRESULT get_BodyLength(out int32 pcbBody) mut => VT.get_BodyLength(ref this, out pcbBody);
			public HRESULT get_Body(out VARIANT pvarBody) mut => VT.get_Body(ref this, out pvarBody);
			public HRESULT put_Body(VARIANT varBody) mut => VT.put_Body(ref this, varBody);
			public HRESULT get_AdminQueueInfo_v1(IMSMQQueueInfo** ppqinfoAdmin) mut => VT.get_AdminQueueInfo_v1(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo_v1(IMSMQQueueInfo* pqinfoAdmin) mut => VT.putref_AdminQueueInfo_v1(ref this, pqinfoAdmin);
			public HRESULT get_Id(out VARIANT pvarMsgId) mut => VT.get_Id(ref this, out pvarMsgId);
			public HRESULT get_CorrelationId(out VARIANT pvarMsgId) mut => VT.get_CorrelationId(ref this, out pvarMsgId);
			public HRESULT put_CorrelationId(VARIANT varMsgId) mut => VT.put_CorrelationId(ref this, varMsgId);
			public HRESULT get_Ack(out int32 plAck) mut => VT.get_Ack(ref this, out plAck);
			public HRESULT put_Ack(int32 lAck) mut => VT.put_Ack(ref this, lAck);
			public HRESULT get_Label(BSTR* pbstrLabel) mut => VT.get_Label(ref this, pbstrLabel);
			public HRESULT put_Label(BSTR bstrLabel) mut => VT.put_Label(ref this, bstrLabel);
			public HRESULT get_MaxTimeToReachQueue(out int32 plMaxTimeToReachQueue) mut => VT.get_MaxTimeToReachQueue(ref this, out plMaxTimeToReachQueue);
			public HRESULT put_MaxTimeToReachQueue(int32 lMaxTimeToReachQueue) mut => VT.put_MaxTimeToReachQueue(ref this, lMaxTimeToReachQueue);
			public HRESULT get_MaxTimeToReceive(out int32 plMaxTimeToReceive) mut => VT.get_MaxTimeToReceive(ref this, out plMaxTimeToReceive);
			public HRESULT put_MaxTimeToReceive(int32 lMaxTimeToReceive) mut => VT.put_MaxTimeToReceive(ref this, lMaxTimeToReceive);
			public HRESULT get_HashAlgorithm(out int32 plHashAlg) mut => VT.get_HashAlgorithm(ref this, out plHashAlg);
			public HRESULT put_HashAlgorithm(int32 lHashAlg) mut => VT.put_HashAlgorithm(ref this, lHashAlg);
			public HRESULT get_EncryptAlgorithm(out int32 plEncryptAlg) mut => VT.get_EncryptAlgorithm(ref this, out plEncryptAlg);
			public HRESULT put_EncryptAlgorithm(int32 lEncryptAlg) mut => VT.put_EncryptAlgorithm(ref this, lEncryptAlg);
			public HRESULT get_SentTime(out VARIANT pvarSentTime) mut => VT.get_SentTime(ref this, out pvarSentTime);
			public HRESULT get_ArrivedTime(out VARIANT plArrivedTime) mut => VT.get_ArrivedTime(ref this, out plArrivedTime);
			public HRESULT get_DestinationQueueInfo(IMSMQQueueInfo4** ppqinfoDest) mut => VT.get_DestinationQueueInfo(ref this, ppqinfoDest);
			public HRESULT get_SenderCertificate(out VARIANT pvarSenderCert) mut => VT.get_SenderCertificate(ref this, out pvarSenderCert);
			public HRESULT put_SenderCertificate(VARIANT varSenderCert) mut => VT.put_SenderCertificate(ref this, varSenderCert);
			public HRESULT get_SenderId(out VARIANT pvarSenderId) mut => VT.get_SenderId(ref this, out pvarSenderId);
			public HRESULT get_SenderIdType(out int32 plSenderIdType) mut => VT.get_SenderIdType(ref this, out plSenderIdType);
			public HRESULT put_SenderIdType(int32 lSenderIdType) mut => VT.put_SenderIdType(ref this, lSenderIdType);
			public HRESULT Send(IDispatch* DestinationQueue, ref VARIANT Transaction) mut => VT.Send(ref this, DestinationQueue, ref Transaction);
			public HRESULT AttachCurrentSecurityContext() mut => VT.AttachCurrentSecurityContext(ref this);
			public HRESULT get_SenderVersion(out int32 plSenderVersion) mut => VT.get_SenderVersion(ref this, out plSenderVersion);
			public HRESULT get_Extension(out VARIANT pvarExtension) mut => VT.get_Extension(ref this, out pvarExtension);
			public HRESULT put_Extension(VARIANT varExtension) mut => VT.put_Extension(ref this, varExtension);
			public HRESULT get_ConnectorTypeGuid(BSTR* pbstrGuidConnectorType) mut => VT.get_ConnectorTypeGuid(ref this, pbstrGuidConnectorType);
			public HRESULT put_ConnectorTypeGuid(BSTR bstrGuidConnectorType) mut => VT.put_ConnectorTypeGuid(ref this, bstrGuidConnectorType);
			public HRESULT get_TransactionStatusQueueInfo(IMSMQQueueInfo4** ppqinfoXactStatus) mut => VT.get_TransactionStatusQueueInfo(ref this, ppqinfoXactStatus);
			public HRESULT get_DestinationSymmetricKey(out VARIANT pvarDestSymmKey) mut => VT.get_DestinationSymmetricKey(ref this, out pvarDestSymmKey);
			public HRESULT put_DestinationSymmetricKey(VARIANT varDestSymmKey) mut => VT.put_DestinationSymmetricKey(ref this, varDestSymmKey);
			public HRESULT get_Signature(out VARIANT pvarSignature) mut => VT.get_Signature(ref this, out pvarSignature);
			public HRESULT put_Signature(VARIANT varSignature) mut => VT.put_Signature(ref this, varSignature);
			public HRESULT get_AuthenticationProviderType(out int32 plAuthProvType) mut => VT.get_AuthenticationProviderType(ref this, out plAuthProvType);
			public HRESULT put_AuthenticationProviderType(int32 lAuthProvType) mut => VT.put_AuthenticationProviderType(ref this, lAuthProvType);
			public HRESULT get_AuthenticationProviderName(BSTR* pbstrAuthProvName) mut => VT.get_AuthenticationProviderName(ref this, pbstrAuthProvName);
			public HRESULT put_AuthenticationProviderName(BSTR bstrAuthProvName) mut => VT.put_AuthenticationProviderName(ref this, bstrAuthProvName);
			public HRESULT put_SenderId(VARIANT varSenderId) mut => VT.put_SenderId(ref this, varSenderId);
			public HRESULT get_MsgClass(out int32 plMsgClass) mut => VT.get_MsgClass(ref this, out plMsgClass);
			public HRESULT put_MsgClass(int32 lMsgClass) mut => VT.put_MsgClass(ref this, lMsgClass);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);
			public HRESULT get_TransactionId(out VARIANT pvarXactId) mut => VT.get_TransactionId(ref this, out pvarXactId);
			public HRESULT get_IsFirstInTransaction(out int16 pisFirstInXact) mut => VT.get_IsFirstInTransaction(ref this, out pisFirstInXact);
			public HRESULT get_IsLastInTransaction(out int16 pisLastInXact) mut => VT.get_IsLastInTransaction(ref this, out pisLastInXact);
			public HRESULT get_ResponseQueueInfo_v2(IMSMQQueueInfo2** ppqinfoResponse) mut => VT.get_ResponseQueueInfo_v2(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo_v2(IMSMQQueueInfo2* pqinfoResponse) mut => VT.putref_ResponseQueueInfo_v2(ref this, pqinfoResponse);
			public HRESULT get_AdminQueueInfo_v2(IMSMQQueueInfo2** ppqinfoAdmin) mut => VT.get_AdminQueueInfo_v2(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo_v2(IMSMQQueueInfo2* pqinfoAdmin) mut => VT.putref_AdminQueueInfo_v2(ref this, pqinfoAdmin);
			public HRESULT get_ReceivedAuthenticationLevel(out int16 psReceivedAuthenticationLevel) mut => VT.get_ReceivedAuthenticationLevel(ref this, out psReceivedAuthenticationLevel);
			public HRESULT get_ResponseQueueInfo(IMSMQQueueInfo4** ppqinfoResponse) mut => VT.get_ResponseQueueInfo(ref this, ppqinfoResponse);
			public HRESULT putref_ResponseQueueInfo(IMSMQQueueInfo4* pqinfoResponse) mut => VT.putref_ResponseQueueInfo(ref this, pqinfoResponse);
			public HRESULT get_AdminQueueInfo(IMSMQQueueInfo4** ppqinfoAdmin) mut => VT.get_AdminQueueInfo(ref this, ppqinfoAdmin);
			public HRESULT putref_AdminQueueInfo(IMSMQQueueInfo4* pqinfoAdmin) mut => VT.putref_AdminQueueInfo(ref this, pqinfoAdmin);
			public HRESULT get_ResponseDestination(IDispatch** ppdestResponse) mut => VT.get_ResponseDestination(ref this, ppdestResponse);
			public HRESULT putref_ResponseDestination(IDispatch* pdestResponse) mut => VT.putref_ResponseDestination(ref this, pdestResponse);
			public HRESULT get_Destination(IDispatch** ppdestDestination) mut => VT.get_Destination(ref this, ppdestDestination);
			public HRESULT get_LookupId(out VARIANT pvarLookupId) mut => VT.get_LookupId(ref this, out pvarLookupId);
			public HRESULT get_IsAuthenticated2(out int16 pisAuthenticated) mut => VT.get_IsAuthenticated2(ref this, out pisAuthenticated);
			public HRESULT get_IsFirstInTransaction2(out int16 pisFirstInXact) mut => VT.get_IsFirstInTransaction2(ref this, out pisFirstInXact);
			public HRESULT get_IsLastInTransaction2(out int16 pisLastInXact) mut => VT.get_IsLastInTransaction2(ref this, out pisLastInXact);
			public HRESULT AttachCurrentSecurityContext2() mut => VT.AttachCurrentSecurityContext2(ref this);
			public HRESULT get_SoapEnvelope(BSTR* pbstrSoapEnvelope) mut => VT.get_SoapEnvelope(ref this, pbstrSoapEnvelope);
			public HRESULT get_CompoundMessage(out VARIANT pvarCompoundMessage) mut => VT.get_CompoundMessage(ref this, out pvarCompoundMessage);
			public HRESULT put_SoapHeader(BSTR bstrSoapHeader) mut => VT.put_SoapHeader(ref this, bstrSoapHeader);
			public HRESULT put_SoapBody(BSTR bstrSoapBody) mut => VT.put_SoapBody(ref this, bstrSoapBody);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plClass) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plPrivLevel) get_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lPrivLevel) put_PrivLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plAuthLevel) get_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lAuthLevel) put_AuthLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisAuthenticated) get_IsAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plDelivery) get_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lDelivery) put_Delivery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plTrace) get_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lTrace) put_Trace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plJournal) get_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lJournal) put_Journal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo** ppqinfoResponse) get_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo* pqinfoResponse) putref_ResponseQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plAppSpecific) get_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lAppSpecific) put_AppSpecific;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR* pbstrGuidSrcMachine) get_SourceMachineGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 pcbBody) get_BodyLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varBody) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo** ppqinfoAdmin) get_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo* pqinfoAdmin) putref_AdminQueueInfo_v1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarMsgId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarMsgId) get_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varMsgId) put_CorrelationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plAck) get_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lAck) put_Ack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR* pbstrLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR bstrLabel) put_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plMaxTimeToReachQueue) get_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lMaxTimeToReachQueue) put_MaxTimeToReachQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plMaxTimeToReceive) get_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lMaxTimeToReceive) put_MaxTimeToReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plHashAlg) get_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lHashAlg) put_HashAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plEncryptAlg) get_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lEncryptAlg) put_EncryptAlgorithm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarSentTime) get_SentTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT plArrivedTime) get_ArrivedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4** ppqinfoDest) get_DestinationQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarSenderCert) get_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varSenderCert) put_SenderCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarSenderId) get_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plSenderIdType) get_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lSenderIdType) put_SenderIdType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IDispatch* DestinationQueue, ref VARIANT Transaction) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self) AttachCurrentSecurityContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plSenderVersion) get_SenderVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarExtension) get_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varExtension) put_Extension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR* pbstrGuidConnectorType) get_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR bstrGuidConnectorType) put_ConnectorTypeGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4** ppqinfoXactStatus) get_TransactionStatusQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarDestSymmKey) get_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varDestSymmKey) put_DestinationSymmetricKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarSignature) get_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varSignature) put_Signature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plAuthProvType) get_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lAuthProvType) put_AuthenticationProviderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR* pbstrAuthProvName) get_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR bstrAuthProvName) put_AuthenticationProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, VARIANT varSenderId) put_SenderId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int32 plMsgClass) get_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, int32 lMsgClass) put_MsgClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IDispatch** ppcolProperties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarXactId) get_TransactionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisFirstInXact) get_IsFirstInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisLastInXact) get_IsLastInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo2** ppqinfoResponse) get_ResponseQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo2* pqinfoResponse) putref_ResponseQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo2** ppqinfoAdmin) get_AdminQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo2* pqinfoAdmin) putref_AdminQueueInfo_v2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 psReceivedAuthenticationLevel) get_ReceivedAuthenticationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4** ppqinfoResponse) get_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4* pqinfoResponse) putref_ResponseQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4** ppqinfoAdmin) get_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IMSMQQueueInfo4* pqinfoAdmin) putref_AdminQueueInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IDispatch** ppdestResponse) get_ResponseDestination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IDispatch* pdestResponse) putref_ResponseDestination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, IDispatch** ppdestDestination) get_Destination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarLookupId) get_LookupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisAuthenticated) get_IsAuthenticated2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisFirstInXact) get_IsFirstInTransaction2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out int16 pisLastInXact) get_IsLastInTransaction2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self) AttachCurrentSecurityContext2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR* pbstrSoapEnvelope) get_SoapEnvelope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, out VARIANT pvarCompoundMessage) get_CompoundMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR bstrSoapHeader) put_SoapHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQMessage4 self, BSTR bstrSoapBody) put_SoapBody;
			}
		}
		[CRepr]
		public struct IMSMQPrivateEvent : IDispatch
		{
			public const new Guid IID = .(0xd7ab3341, 0xc9d3, 0x11d1, 0xbb, 0x47, 0x00, 0x80, 0xc7, 0xc5, 0xa2, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Hwnd(out int32 phwnd) mut => VT.get_Hwnd(ref this, out phwnd);
			public HRESULT FireArrivedEvent(IMSMQQueue* pq, int32 msgcursor) mut => VT.FireArrivedEvent(ref this, pq, msgcursor);
			public HRESULT FireArrivedErrorEvent(IMSMQQueue* pq, HRESULT hrStatus, int32 msgcursor) mut => VT.FireArrivedErrorEvent(ref this, pq, hrStatus, msgcursor);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQPrivateEvent self, out int32 phwnd) get_Hwnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQPrivateEvent self, IMSMQQueue* pq, int32 msgcursor) FireArrivedEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQPrivateEvent self, IMSMQQueue* pq, HRESULT hrStatus, int32 msgcursor) FireArrivedErrorEvent;
			}
		}
		[CRepr]
		public struct _DMSMQEventEvents : IDispatch
		{
			public const new Guid IID = .(0xd7d6e078, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IMSMQTransaction2 : IMSMQTransaction
		{
			public const new Guid IID = .(0x2ce0c5b0, 0x6e67, 0x11d2, 0xb0, 0xe6, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitNew(VARIANT varTransaction) mut => VT.InitNew(ref this, varTransaction);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IMSMQTransaction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction2 self, VARIANT varTransaction) InitNew;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQTransaction3 : IMSMQTransaction2
		{
			public const new Guid IID = .(0xeba96b13, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ITransaction(out VARIANT pvarITransaction) mut => VT.get_ITransaction(ref this, out pvarITransaction);

			[CRepr]
			public struct VTable : IMSMQTransaction2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransaction3 self, out VARIANT pvarITransaction) get_ITransaction;
			}
		}
		[CRepr]
		public struct IMSMQCoordinatedTransactionDispenser2 : IDispatch
		{
			public const new Guid IID = .(0xeba96b10, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction2** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCoordinatedTransactionDispenser2 self, IMSMQTransaction2** ptransaction) BeginTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCoordinatedTransactionDispenser2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQCoordinatedTransactionDispenser3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b14, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction3** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCoordinatedTransactionDispenser3 self, IMSMQTransaction3** ptransaction) BeginTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCoordinatedTransactionDispenser3 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQTransactionDispenser2 : IDispatch
		{
			public const new Guid IID = .(0xeba96b11, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction2** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransactionDispenser2 self, IMSMQTransaction2** ptransaction) BeginTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransactionDispenser2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQTransactionDispenser3 : IDispatch
		{
			public const new Guid IID = .(0xeba96b15, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginTransaction(IMSMQTransaction3** ptransaction) mut => VT.BeginTransaction(ref this, ptransaction);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransactionDispenser3 self, IMSMQTransaction3** ptransaction) BeginTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQTransactionDispenser3 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQApplication : IDispatch
		{
			public const new Guid IID = .(0xd7d6e085, 0xdccd, 0x11d0, 0xaa, 0x4b, 0x00, 0x60, 0x97, 0x0d, 0xeb, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MachineIdOfMachineName(BSTR MachineName, BSTR* pbstrGuid) mut => VT.MachineIdOfMachineName(ref this, MachineName, pbstrGuid);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication self, BSTR MachineName, BSTR* pbstrGuid) MachineIdOfMachineName;
			}
		}
		[CRepr]
		public struct IMSMQApplication2 : IMSMQApplication
		{
			public const new Guid IID = .(0x12a30900, 0x7300, 0x11d2, 0xb0, 0xe6, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCertificate(ref VARIANT Flags, ref VARIANT ExternalCertificate) mut => VT.RegisterCertificate(ref this, ref Flags, ref ExternalCertificate);
			public HRESULT MachineNameOfMachineId(BSTR bstrGuid, BSTR* pbstrMachineName) mut => VT.MachineNameOfMachineId(ref this, bstrGuid, pbstrMachineName);
			public HRESULT get_MSMQVersionMajor(out int16 psMSMQVersionMajor) mut => VT.get_MSMQVersionMajor(ref this, out psMSMQVersionMajor);
			public HRESULT get_MSMQVersionMinor(out int16 psMSMQVersionMinor) mut => VT.get_MSMQVersionMinor(ref this, out psMSMQVersionMinor);
			public HRESULT get_MSMQVersionBuild(out int16 psMSMQVersionBuild) mut => VT.get_MSMQVersionBuild(ref this, out psMSMQVersionBuild);
			public HRESULT get_IsDsEnabled(out int16 pfIsDsEnabled) mut => VT.get_IsDsEnabled(ref this, out pfIsDsEnabled);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IMSMQApplication.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, ref VARIANT Flags, ref VARIANT ExternalCertificate) RegisterCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, BSTR bstrGuid, BSTR* pbstrMachineName) MachineNameOfMachineId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, out int16 psMSMQVersionMajor) get_MSMQVersionMajor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, out int16 psMSMQVersionMinor) get_MSMQVersionMinor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, out int16 psMSMQVersionBuild) get_MSMQVersionBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, out int16 pfIsDsEnabled) get_IsDsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication2 self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQApplication3 : IMSMQApplication2
		{
			public const new Guid IID = .(0xeba96b1f, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActiveQueues(out VARIANT pvActiveQueues) mut => VT.get_ActiveQueues(ref this, out pvActiveQueues);
			public HRESULT get_PrivateQueues(out VARIANT pvPrivateQueues) mut => VT.get_PrivateQueues(ref this, out pvPrivateQueues);
			public HRESULT get_DirectoryServiceServer(BSTR* pbstrDirectoryServiceServer) mut => VT.get_DirectoryServiceServer(ref this, pbstrDirectoryServiceServer);
			public HRESULT get_IsConnected(out int16 pfIsConnected) mut => VT.get_IsConnected(ref this, out pfIsConnected);
			public HRESULT get_BytesInAllQueues(out VARIANT pvBytesInAllQueues) mut => VT.get_BytesInAllQueues(ref this, out pvBytesInAllQueues);
			public HRESULT put_Machine(BSTR bstrMachine) mut => VT.put_Machine(ref this, bstrMachine);
			public HRESULT get_Machine(BSTR* pbstrMachine) mut => VT.get_Machine(ref this, pbstrMachine);
			public HRESULT Connect() mut => VT.Connect(ref this);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT Tidy() mut => VT.Tidy(ref this);

			[CRepr]
			public struct VTable : IMSMQApplication2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, out VARIANT pvActiveQueues) get_ActiveQueues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, out VARIANT pvPrivateQueues) get_PrivateQueues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, BSTR* pbstrDirectoryServiceServer) get_DirectoryServiceServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, out int16 pfIsConnected) get_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, out VARIANT pvBytesInAllQueues) get_BytesInAllQueues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, BSTR bstrMachine) put_Machine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self, BSTR* pbstrMachine) get_Machine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQApplication3 self) Tidy;
			}
		}
		[CRepr]
		public struct IMSMQDestination : IDispatch
		{
			public const new Guid IID = .(0xeba96b16, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open() mut => VT.Open(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT get_IsOpen(out int16 pfIsOpen) mut => VT.get_IsOpen(ref this, out pfIsOpen);
			public HRESULT get_IADs(IDispatch** ppIADs) mut => VT.get_IADs(ref this, ppIADs);
			public HRESULT putref_IADs(IDispatch* pIADs) mut => VT.putref_IADs(ref this, pIADs);
			public HRESULT get_ADsPath(BSTR* pbstrADsPath) mut => VT.get_ADsPath(ref this, pbstrADsPath);
			public HRESULT put_ADsPath(BSTR bstrADsPath) mut => VT.put_ADsPath(ref this, bstrADsPath);
			public HRESULT get_PathName(BSTR* pbstrPathName) mut => VT.get_PathName(ref this, pbstrPathName);
			public HRESULT put_PathName(BSTR bstrPathName) mut => VT.put_PathName(ref this, bstrPathName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT put_FormatName(BSTR bstrFormatName) mut => VT.put_FormatName(ref this, bstrFormatName);
			public HRESULT get_Destinations(IDispatch** ppDestinations) mut => VT.get_Destinations(ref this, ppDestinations);
			public HRESULT putref_Destinations(IDispatch* pDestinations) mut => VT.putref_Destinations(ref this, pDestinations);
			public HRESULT get_Properties(IDispatch** ppcolProperties) mut => VT.get_Properties(ref this, ppcolProperties);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, out int16 pfIsOpen) get_IsOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, IDispatch** ppIADs) get_IADs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, IDispatch* pIADs) putref_IADs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR* pbstrADsPath) get_ADsPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR bstrADsPath) put_ADsPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR* pbstrPathName) get_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR bstrPathName) put_PathName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, BSTR bstrFormatName) put_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, IDispatch** ppDestinations) get_Destinations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, IDispatch* pDestinations) putref_Destinations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQDestination self, IDispatch** ppcolProperties) get_Properties;
			}
		}
		[CRepr]
		public struct IMSMQPrivateDestination : IDispatch
		{
			public const new Guid IID = .(0xeba96b17, 0x2168, 0x11d3, 0x89, 0x8c, 0x00, 0xe0, 0x2c, 0x07, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Handle(out VARIANT pvarHandle) mut => VT.get_Handle(ref this, out pvarHandle);
			public HRESULT put_Handle(VARIANT varHandle) mut => VT.put_Handle(ref this, varHandle);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQPrivateDestination self, out VARIANT pvarHandle) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQPrivateDestination self, VARIANT varHandle) put_Handle;
			}
		}
		[CRepr]
		public struct IMSMQCollection : IDispatch
		{
			public const new Guid IID = .(0x0188ac2f, 0xecb3, 0x4173, 0x97, 0x79, 0x63, 0x5c, 0xa2, 0x03, 0x9c, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(ref VARIANT Index, out VARIANT pvarRet) mut => VT.Item(ref this, ref Index, out pvarRet);
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT _NewEnum(IUnknown** ppunk) mut => VT._NewEnum(ref this, ppunk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCollection self, ref VARIANT Index, out VARIANT pvarRet) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQCollection self, IUnknown** ppunk) _NewEnum;
			}
		}
		[CRepr]
		public struct IMSMQManagement : IDispatch
		{
			public const new Guid IID = .(0xbe5f0241, 0xe489, 0x4957, 0x8c, 0xc4, 0xa4, 0x52, 0xfc, 0xf3, 0xe2, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(ref VARIANT Machine, ref VARIANT Pathname, ref VARIANT FormatName) mut => VT.Init(ref this, ref Machine, ref Pathname, ref FormatName);
			public HRESULT get_FormatName(BSTR* pbstrFormatName) mut => VT.get_FormatName(ref this, pbstrFormatName);
			public HRESULT get_Machine(BSTR* pbstrMachine) mut => VT.get_Machine(ref this, pbstrMachine);
			public HRESULT get_MessageCount(out int32 plMessageCount) mut => VT.get_MessageCount(ref this, out plMessageCount);
			public HRESULT get_ForeignStatus(out int32 plForeignStatus) mut => VT.get_ForeignStatus(ref this, out plForeignStatus);
			public HRESULT get_QueueType(out int32 plQueueType) mut => VT.get_QueueType(ref this, out plQueueType);
			public HRESULT get_IsLocal(out int16 pfIsLocal) mut => VT.get_IsLocal(ref this, out pfIsLocal);
			public HRESULT get_TransactionalStatus(out int32 plTransactionalStatus) mut => VT.get_TransactionalStatus(ref this, out plTransactionalStatus);
			public HRESULT get_BytesInQueue(out VARIANT pvBytesInQueue) mut => VT.get_BytesInQueue(ref this, out pvBytesInQueue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, ref VARIANT Machine, ref VARIANT Pathname, ref VARIANT FormatName) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, BSTR* pbstrFormatName) get_FormatName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, BSTR* pbstrMachine) get_Machine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out int32 plMessageCount) get_MessageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out int32 plForeignStatus) get_ForeignStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out int32 plQueueType) get_QueueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out int16 pfIsLocal) get_IsLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out int32 plTransactionalStatus) get_TransactionalStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQManagement self, out VARIANT pvBytesInQueue) get_BytesInQueue;
			}
		}
		[CRepr]
		public struct IMSMQOutgoingQueueManagement : IMSMQManagement
		{
			public const new Guid IID = .(0x64c478fb, 0xf9b0, 0x4695, 0x8a, 0x7f, 0x43, 0x9a, 0xc9, 0x43, 0x26, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_State(out int32 plState) mut => VT.get_State(ref this, out plState);
			public HRESULT get_NextHops(out VARIANT pvNextHops) mut => VT.get_NextHops(ref this, out pvNextHops);
			public HRESULT EodGetSendInfo(IMSMQCollection** ppCollection) mut => VT.EodGetSendInfo(ref this, ppCollection);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT EodResend() mut => VT.EodResend(ref this);

			[CRepr]
			public struct VTable : IMSMQManagement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self, out int32 plState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self, out VARIANT pvNextHops) get_NextHops;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self, IMSMQCollection** ppCollection) EodGetSendInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQOutgoingQueueManagement self) EodResend;
			}
		}
		[CRepr]
		public struct IMSMQQueueManagement : IMSMQManagement
		{
			public const new Guid IID = .(0x7fbe7759, 0x5760, 0x444d, 0xb8, 0xa5, 0x5e, 0x7a, 0xb9, 0xa8, 0x4c, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_JournalMessageCount(out int32 plJournalMessageCount) mut => VT.get_JournalMessageCount(ref this, out plJournalMessageCount);
			public HRESULT get_BytesInJournal(out VARIANT pvBytesInJournal) mut => VT.get_BytesInJournal(ref this, out pvBytesInJournal);
			public HRESULT EodGetReceiveInfo(out VARIANT pvCollection) mut => VT.EodGetReceiveInfo(ref this, out pvCollection);

			[CRepr]
			public struct VTable : IMSMQManagement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueManagement self, out int32 plJournalMessageCount) get_JournalMessageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueManagement self, out VARIANT pvBytesInJournal) get_BytesInJournal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSMQQueueManagement self, out VARIANT pvCollection) EodGetReceiveInfo;
			}
		}
		
	}
}
