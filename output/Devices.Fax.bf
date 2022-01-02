using System;

// namespace Devices.Fax
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FS_INITIALIZING = 536870912;
		public const uint32 FS_DIALING = 536870913;
		public const uint32 FS_TRANSMITTING = 536870914;
		public const uint32 FS_RECEIVING = 536870916;
		public const uint32 FS_COMPLETED = 536870920;
		public const uint32 FS_HANDLED = 536870928;
		public const uint32 FS_LINE_UNAVAILABLE = 536870944;
		public const uint32 FS_BUSY = 536870976;
		public const uint32 FS_NO_ANSWER = 536871040;
		public const uint32 FS_BAD_ADDRESS = 536871168;
		public const uint32 FS_NO_DIAL_TONE = 536871424;
		public const uint32 FS_DISCONNECTED = 536871936;
		public const uint32 FS_FATAL_ERROR = 536872960;
		public const uint32 FS_NOT_FAX_CALL = 536875008;
		public const uint32 FS_CALL_DELAYED = 536879104;
		public const uint32 FS_CALL_BLACKLISTED = 536887296;
		public const uint32 FS_USER_ABORT = 538968064;
		public const uint32 FS_ANSWERED = 545259520;
		public const uint32 FAXDEVRECEIVE_SIZE = 4096;
		public const uint32 FAXDEVREPORTSTATUS_SIZE = 4096;
		public const int32 FAX_ERR_START = 7001;
		public const int32 FAX_ERR_SRV_OUTOFMEMORY = 7001;
		public const int32 FAX_ERR_GROUP_NOT_FOUND = 7002;
		public const int32 FAX_ERR_BAD_GROUP_CONFIGURATION = 7003;
		public const int32 FAX_ERR_GROUP_IN_USE = 7004;
		public const int32 FAX_ERR_RULE_NOT_FOUND = 7005;
		public const int32 FAX_ERR_NOT_NTFS = 7006;
		public const int32 FAX_ERR_DIRECTORY_IN_USE = 7007;
		public const int32 FAX_ERR_FILE_ACCESS_DENIED = 7008;
		public const int32 FAX_ERR_MESSAGE_NOT_FOUND = 7009;
		public const int32 FAX_ERR_DEVICE_NUM_LIMIT_EXCEEDED = 7010;
		public const int32 FAX_ERR_NOT_SUPPORTED_ON_THIS_SKU = 7011;
		public const int32 FAX_ERR_VERSION_MISMATCH = 7012;
		public const int32 FAX_ERR_RECIPIENTS_LIMIT = 7013;
		public const int32 FAX_ERR_END = 7013;
		public const HRESULT FAX_E_SRV_OUTOFMEMORY = -2147214503;
		public const HRESULT FAX_E_GROUP_NOT_FOUND = -2147214502;
		public const HRESULT FAX_E_BAD_GROUP_CONFIGURATION = -2147214501;
		public const HRESULT FAX_E_GROUP_IN_USE = -2147214500;
		public const HRESULT FAX_E_RULE_NOT_FOUND = -2147214499;
		public const HRESULT FAX_E_NOT_NTFS = -2147214498;
		public const HRESULT FAX_E_DIRECTORY_IN_USE = -2147214497;
		public const HRESULT FAX_E_FILE_ACCESS_DENIED = -2147214496;
		public const HRESULT FAX_E_MESSAGE_NOT_FOUND = -2147214495;
		public const HRESULT FAX_E_DEVICE_NUM_LIMIT_EXCEEDED = -2147214494;
		public const HRESULT FAX_E_NOT_SUPPORTED_ON_THIS_SKU = -2147214493;
		public const HRESULT FAX_E_VERSION_MISMATCH = -2147214492;
		public const HRESULT FAX_E_RECIPIENTS_LIMIT = -2147214491;
		public const uint32 JT_UNKNOWN = 0;
		public const uint32 JT_SEND = 1;
		public const uint32 JT_RECEIVE = 2;
		public const uint32 JT_ROUTING = 3;
		public const uint32 JT_FAIL_RECEIVE = 4;
		public const uint32 JS_PENDING = 0;
		public const uint32 JS_INPROGRESS = 1;
		public const uint32 JS_DELETING = 2;
		public const uint32 JS_FAILED = 4;
		public const uint32 JS_PAUSED = 8;
		public const uint32 JS_NOLINE = 16;
		public const uint32 JS_RETRYING = 32;
		public const uint32 JS_RETRIES_EXCEEDED = 64;
		public const uint32 FPS_DIALING = 536870913;
		public const uint32 FPS_SENDING = 536870914;
		public const uint32 FPS_RECEIVING = 536870916;
		public const uint32 FPS_COMPLETED = 536870920;
		public const uint32 FPS_HANDLED = 536870928;
		public const uint32 FPS_UNAVAILABLE = 536870944;
		public const uint32 FPS_BUSY = 536870976;
		public const uint32 FPS_NO_ANSWER = 536871040;
		public const uint32 FPS_BAD_ADDRESS = 536871168;
		public const uint32 FPS_NO_DIAL_TONE = 536871424;
		public const uint32 FPS_DISCONNECTED = 536871936;
		public const uint32 FPS_FATAL_ERROR = 536872960;
		public const uint32 FPS_NOT_FAX_CALL = 536875008;
		public const uint32 FPS_CALL_DELAYED = 536879104;
		public const uint32 FPS_CALL_BLACKLISTED = 536887296;
		public const uint32 FPS_INITIALIZING = 536903680;
		public const uint32 FPS_OFFLINE = 536936448;
		public const uint32 FPS_RINGING = 537001984;
		public const uint32 FPS_AVAILABLE = 537919488;
		public const uint32 FPS_ABORTING = 538968064;
		public const uint32 FPS_ROUTING = 541065216;
		public const uint32 FPS_ANSWERED = 545259520;
		public const uint32 FPF_RECEIVE = 1;
		public const uint32 FPF_SEND = 2;
		public const uint32 FPF_VIRTUAL = 4;
		public const uint32 FEI_DIALING = 1;
		public const uint32 FEI_SENDING = 2;
		public const uint32 FEI_RECEIVING = 3;
		public const uint32 FEI_COMPLETED = 4;
		public const uint32 FEI_BUSY = 5;
		public const uint32 FEI_NO_ANSWER = 6;
		public const uint32 FEI_BAD_ADDRESS = 7;
		public const uint32 FEI_NO_DIAL_TONE = 8;
		public const uint32 FEI_DISCONNECTED = 9;
		public const uint32 FEI_FATAL_ERROR = 10;
		public const uint32 FEI_NOT_FAX_CALL = 11;
		public const uint32 FEI_CALL_DELAYED = 12;
		public const uint32 FEI_CALL_BLACKLISTED = 13;
		public const uint32 FEI_RINGING = 14;
		public const uint32 FEI_ABORTING = 15;
		public const uint32 FEI_ROUTING = 16;
		public const uint32 FEI_MODEM_POWERED_ON = 17;
		public const uint32 FEI_MODEM_POWERED_OFF = 18;
		public const uint32 FEI_IDLE = 19;
		public const uint32 FEI_FAXSVC_ENDED = 20;
		public const uint32 FEI_ANSWERED = 21;
		public const uint32 FEI_JOB_QUEUED = 22;
		public const uint32 FEI_DELETED = 23;
		public const uint32 FEI_INITIALIZING = 24;
		public const uint32 FEI_LINE_UNAVAILABLE = 25;
		public const uint32 FEI_HANDLED = 26;
		public const uint32 FEI_FAXSVC_STARTED = 27;
		public const uint32 FEI_NEVENTS = 27;
		public const uint32 FAX_JOB_SUBMIT = 1;
		public const uint32 FAX_JOB_QUERY = 2;
		public const uint32 FAX_CONFIG_QUERY = 4;
		public const uint32 FAX_CONFIG_SET = 8;
		public const uint32 FAX_PORT_QUERY = 16;
		public const uint32 FAX_PORT_SET = 32;
		public const uint32 FAX_JOB_MANAGE = 64;
		public const uint32 STI_UNICODE = 1;
		public const Guid CLSID_Sti = .(0xb323f8e0, 0x2e68, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
		public const Guid GUID_DeviceArrivedLaunch = .(0x740d9ee6, 0x70f1, 0x11d1, 0xad, 0x10, 0x00, 0xa0, 0x24, 0x38, 0xad, 0x48);
		public const Guid GUID_ScanImage = .(0xa6c5a715, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const Guid GUID_ScanPrintImage = .(0xb441f425, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const Guid GUID_ScanFaxImage = .(0xc00eb793, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const Guid GUID_STIUserDefined1 = .(0xc00eb795, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const Guid GUID_STIUserDefined2 = .(0xc77ae9c5, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const Guid GUID_STIUserDefined3 = .(0xc77ae9c6, 0x8c6e, 0x11d2, 0x97, 0x7a, 0x00, 0x00, 0xf8, 0x7a, 0x92, 0x6f);
		public const uint32 STI_VERSION_FLAG_MASK = 4278190080;
		public const uint32 STI_VERSION_FLAG_UNICODE = 16777216;
		public const uint32 STI_VERSION_REAL = 2;
		public const uint32 STI_VERSION_MIN_ALLOWED = 2;
		public const uint32 STI_VERSION = 2;
		public const uint32 STI_MAX_INTERNAL_NAME_LENGTH = 128;
		public const uint32 STI_GENCAP_NOTIFICATIONS = 1;
		public const uint32 STI_GENCAP_POLLING_NEEDED = 2;
		public const uint32 STI_GENCAP_GENERATE_ARRIVALEVENT = 4;
		public const uint32 STI_GENCAP_AUTO_PORTSELECT = 8;
		public const uint32 STI_GENCAP_WIA = 16;
		public const uint32 STI_GENCAP_SUBSET = 32;
		public const uint32 WIA_INCOMPAT_XP = 1;
		public const uint32 STI_HW_CONFIG_UNKNOWN = 1;
		public const uint32 STI_HW_CONFIG_SCSI = 2;
		public const uint32 STI_HW_CONFIG_USB = 4;
		public const uint32 STI_HW_CONFIG_SERIAL = 8;
		public const uint32 STI_HW_CONFIG_PARALLEL = 16;
		public const uint32 STI_DEVSTATUS_ONLINE_STATE = 1;
		public const uint32 STI_DEVSTATUS_EVENTS_STATE = 2;
		public const uint32 STI_ONLINESTATE_OPERATIONAL = 1;
		public const uint32 STI_ONLINESTATE_PENDING = 2;
		public const uint32 STI_ONLINESTATE_ERROR = 4;
		public const uint32 STI_ONLINESTATE_PAUSED = 8;
		public const uint32 STI_ONLINESTATE_PAPER_JAM = 16;
		public const uint32 STI_ONLINESTATE_PAPER_PROBLEM = 32;
		public const uint32 STI_ONLINESTATE_OFFLINE = 64;
		public const uint32 STI_ONLINESTATE_IO_ACTIVE = 128;
		public const uint32 STI_ONLINESTATE_BUSY = 256;
		public const uint32 STI_ONLINESTATE_TRANSFERRING = 512;
		public const uint32 STI_ONLINESTATE_INITIALIZING = 1024;
		public const uint32 STI_ONLINESTATE_WARMING_UP = 2048;
		public const uint32 STI_ONLINESTATE_USER_INTERVENTION = 4096;
		public const uint32 STI_ONLINESTATE_POWER_SAVE = 8192;
		public const uint32 STI_EVENTHANDLING_ENABLED = 1;
		public const uint32 STI_EVENTHANDLING_POLLING = 2;
		public const uint32 STI_EVENTHANDLING_PENDING = 4;
		public const uint32 STI_DIAGCODE_HWPRESENCE = 1;
		public const uint32 STI_TRACE_INFORMATION = 1;
		public const uint32 STI_TRACE_WARNING = 2;
		public const uint32 STI_TRACE_ERROR = 4;
		public const uint32 STI_SUBSCRIBE_FLAG_WINDOW = 1;
		public const uint32 STI_SUBSCRIBE_FLAG_EVENT = 2;
		public const uint32 MAX_NOTIFICATION_DATA = 64;
		public const uint32 STI_DEVICE_CREATE_STATUS = 1;
		public const uint32 STI_DEVICE_CREATE_DATA = 2;
		public const uint32 STI_DEVICE_CREATE_BOTH = 3;
		public const uint32 STI_DEVICE_CREATE_MASK = 65535;
		public const uint32 STIEDFL_ALLDEVICES = 0;
		public const uint32 STIEDFL_ATTACHEDONLY = 1;
		public const uint32 STI_RAW_RESERVED = 4096;
		public const int32 STI_OK = 0;
		public const int32 STI_ERROR_NO_ERROR = 0;
		public const int32 STI_NOTCONNECTED = 1;
		public const int32 STI_CHANGENOEFFECT = 1;
		public const HRESULT STIERR_OLD_VERSION = -2147023746;
		public const HRESULT STIERR_BETA_VERSION = -2147023743;
		public const HRESULT STIERR_BADDRIVER = -2147024777;
		public const int32 STIERR_DEVICENOTREG = -2147221164;
		public const HRESULT STIERR_OBJECTNOTFOUND = -2147024894;
		public const int32 STIERR_INVALID_PARAM = -2147024809;
		public const int32 STIERR_NOINTERFACE = -2147467262;
		public const int32 STIERR_GENERIC = -2147467259;
		public const int32 STIERR_OUTOFMEMORY = -2147024882;
		public const int32 STIERR_UNSUPPORTED = -2147467263;
		public const HRESULT STIERR_NOT_INITIALIZED = -2147024875;
		public const HRESULT STIERR_ALREADY_INITIALIZED = -2147023649;
		public const HRESULT STIERR_DEVICE_LOCKED = -2147024863;
		public const int32 STIERR_READONLY = -2147024891;
		public const int32 STIERR_NOTINITIALIZED = -2147024891;
		public const HRESULT STIERR_NEEDS_LOCK = -2147024738;
		public const HRESULT STIERR_SHARING_VIOLATION = -2147024864;
		public const HRESULT STIERR_HANDLEEXISTS = -2147024713;
		public const HRESULT STIERR_INVALID_DEVICE_NAME = -2147024773;
		public const HRESULT STIERR_INVALID_HW_TYPE = -2147024883;
		public const HRESULT STIERR_NOEVENTS = -2147024637;
		public const HRESULT STIERR_DEVICE_NOTREADY = -2147024875;
		public const uint32 IS_DIGITAL_CAMERA_VAL = 1;
		public const uint32 SUPPORTS_MSCPLUS_VAL = 1;
		public const PROPERTYKEY DEVPKEY_WIA_DeviceType = .(.(0x6bdd1fc6, 0x810f, 0x11d0, 0xbe, 0xc7, 0x08, 0x00, 0x2b, 0xe2, 0x09, 0x2f), 2);
		public const PROPERTYKEY DEVPKEY_WIA_USDClassId = .(.(0x6bdd1fc6, 0x810f, 0x11d0, 0xbe, 0xc7, 0x08, 0x00, 0x2b, 0xe2, 0x09, 0x2f), 3);
		public const uint32 STI_USD_GENCAP_NATIVE_PUSHSUPPORT = 1;
		public const uint32 STI_DEVICE_CREATE_FOR_MONITOR = 16777216;
		public const int32 lDEFAULT_PREFETCH_SIZE = 100;
		public const uint16 wcharREASSIGN_RECIPIENTS_DELIMITER = 59;
		
		// --- Enums ---
		
		public enum FAX_ENUM_LOG_LEVELS : int32
		{
			NONE = 0,
			MIN = 1,
			MED = 2,
			MAX = 3,
		}
		public enum FAX_ENUM_LOG_CATEGORIES : int32
		{
			INIT = 1,
			OUTBOUND = 2,
			INBOUND = 3,
			UNKNOWN = 4,
		}
		public enum FAX_ENUM_JOB_COMMANDS : int32
		{
			UNKNOWN = 0,
			DELETE = 1,
			PAUSE = 2,
			RESUME = 3,
		}
		public enum FAX_ENUM_JOB_SEND_ATTRIBUTES : int32
		{
			NOW = 0,
			SPECIFIC_TIME = 1,
			DISCOUNT_PERIOD = 2,
		}
		public enum FAX_ENUM_DELIVERY_REPORT_TYPES : int32
		{
			NONE = 0,
			EMAIL = 1,
			INBOX = 2,
		}
		public enum FAX_ENUM_PORT_OPEN_TYPE : int32
		{
			QUERY = 1,
			MODIFY = 2,
		}
		public enum FAX_JOB_STATUS_ENUM : int32
		{
			PENDING = 1,
			INPROGRESS = 2,
			FAILED = 8,
			PAUSED = 16,
			NOLINE = 32,
			RETRYING = 64,
			RETRIES_EXCEEDED = 128,
			COMPLETED = 256,
			CANCELED = 512,
			CANCELING = 1024,
			ROUTING = 2048,
		}
		public enum FAX_JOB_EXTENDED_STATUS_ENUM : int32
		{
			NONE = 0,
			DISCONNECTED = 1,
			INITIALIZING = 2,
			DIALING = 3,
			TRANSMITTING = 4,
			ANSWERED = 5,
			RECEIVING = 6,
			LINE_UNAVAILABLE = 7,
			BUSY = 8,
			NO_ANSWER = 9,
			BAD_ADDRESS = 10,
			NO_DIAL_TONE = 11,
			FATAL_ERROR = 12,
			CALL_DELAYED = 13,
			CALL_BLACKLISTED = 14,
			NOT_FAX_CALL = 15,
			PARTIALLY_RECEIVED = 16,
			HANDLED = 17,
			CALL_COMPLETED = 18,
			CALL_ABORTED = 19,
			PROPRIETARY = 16777216,
		}
		public enum FAX_JOB_OPERATIONS_ENUM : int32
		{
			VIEW = 1,
			PAUSE = 2,
			RESUME = 4,
			RESTART = 8,
			DELETE = 16,
			RECIPIENT_INFO = 32,
			SENDER_INFO = 64,
		}
		public enum FAX_JOB_TYPE_ENUM : int32
		{
			SEND = 0,
			RECEIVE = 1,
			ROUTING = 2,
		}
		public enum FAX_SERVER_EVENTS_TYPE_ENUM : int32
		{
			NONE = 0,
			IN_QUEUE = 1,
			OUT_QUEUE = 2,
			CONFIG = 4,
			ACTIVITY = 8,
			QUEUE_STATE = 16,
			IN_ARCHIVE = 32,
			OUT_ARCHIVE = 64,
			FXSSVC_ENDED = 128,
			DEVICE_STATUS = 256,
			INCOMING_CALL = 512,
		}
		public enum FAX_SERVER_APIVERSION_ENUM : int32
		{
			_0 = 0,
			_1 = 65536,
			_2 = 131072,
			_3 = 196608,
		}
		public enum FAX_SMTP_AUTHENTICATION_TYPE_ENUM : int32
		{
			ANONYMOUS = 0,
			BASIC = 1,
			NTLM = 2,
		}
		public enum FAX_RECEIPT_TYPE_ENUM : int32
		{
			NONE = 0,
			MAIL = 1,
			MSGBOX = 4,
		}
		public enum FAX_ACCESS_RIGHTS_ENUM : int32
		{
			SUBMIT_LOW = 1,
			SUBMIT_NORMAL = 2,
			SUBMIT_HIGH = 4,
			QUERY_JOBS = 8,
			MANAGE_JOBS = 16,
			QUERY_CONFIG = 32,
			MANAGE_CONFIG = 64,
			QUERY_IN_ARCHIVE = 128,
			MANAGE_IN_ARCHIVE = 256,
			QUERY_OUT_ARCHIVE = 512,
			MANAGE_OUT_ARCHIVE = 1024,
		}
		public enum FAX_PRIORITY_TYPE_ENUM : int32
		{
			LOW = 0,
			NORMAL = 1,
			HIGH = 2,
		}
		public enum FAX_COVERPAGE_TYPE_ENUM : int32
		{
			NONE = 0,
			LOCAL = 1,
			SERVER = 2,
		}
		public enum FAX_SCHEDULE_TYPE_ENUM : int32
		{
			NOW = 0,
			SPECIFIC_TIME = 1,
			DISCOUNT_PERIOD = 2,
		}
		public enum FAX_PROVIDER_STATUS_ENUM : int32
		{
			SUCCESS = 0,
			SERVER_ERROR = 1,
			BAD_GUID = 2,
			BAD_VERSION = 3,
			CANT_LOAD = 4,
			CANT_LINK = 5,
			CANT_INIT = 6,
		}
		public enum FAX_DEVICE_RECEIVE_MODE_ENUM : int32
		{
			NO_ANSWER = 0,
			AUTO_ANSWER = 1,
			MANUAL_ANSWER = 2,
		}
		public enum FAX_LOG_LEVEL_ENUM : int32
		{
			NONE = 0,
			MIN = 1,
			MED = 2,
			MAX = 3,
		}
		public enum FAX_GROUP_STATUS_ENUM : int32
		{
			ALL_DEV_VALID = 0,
			EMPTY = 1,
			ALL_DEV_NOT_VALID = 2,
			SOME_DEV_NOT_VALID = 3,
		}
		public enum FAX_RULE_STATUS_ENUM : int32
		{
			VALID = 0,
			EMPTY_GROUP = 1,
			ALL_GROUP_DEV_NOT_VALID = 2,
			SOME_GROUP_DEV_NOT_VALID = 3,
			BAD_DEVICE = 4,
		}
		public enum FAX_ACCOUNT_EVENTS_TYPE_ENUM : int32
		{
			NONE = 0,
			IN_QUEUE = 1,
			OUT_QUEUE = 2,
			IN_ARCHIVE = 4,
			OUT_ARCHIVE = 8,
			FXSSVC_ENDED = 16,
		}
		public enum FAX_ACCESS_RIGHTS_ENUM_2 : int32
		{
			far2SUBMIT_LOW = 1,
			far2SUBMIT_NORMAL = 2,
			far2SUBMIT_HIGH = 4,
			far2QUERY_OUT_JOBS = 8,
			far2MANAGE_OUT_JOBS = 16,
			far2QUERY_CONFIG = 32,
			far2MANAGE_CONFIG = 64,
			far2QUERY_ARCHIVES = 128,
			far2MANAGE_ARCHIVES = 256,
			far2MANAGE_RECEIVE_FOLDER = 512,
		}
		public enum FAX_ROUTING_RULE_CODE_ENUM : int32
		{
			frrcANY_CODE = 0,
		}
		public enum FAXROUTE_ENABLE : int32
		{
			QUERY_STATUS = -1,
			STATUS_DISABLE = 0,
			STATUS_ENABLE = 1,
		}
		public enum FAX_ENUM_DEVICE_ID_SOURCE : int32
		{
			FAX = 0,
			TAPI = 1,
		}
		public enum SendToMode : int32
		{
			SEND_TO_FAX_RECIPIENT_ATTACHMENT = 0,
		}
		public enum STI_DEVICE_MJ_TYPE : int32
		{
			Default = 0,
			Scanner = 1,
			DigitalCamera = 2,
			StreamingVideo = 3,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PFAXCONNECTFAXSERVERA(PSTR MachineName, out HANDLE FaxHandle);
		public function BOOL PFAXCONNECTFAXSERVERW(PWSTR MachineName, out HANDLE FaxHandle);
		public function BOOL PFAXCLOSE(HANDLE FaxHandle);
		public function BOOL PFAXOPENPORT(HANDLE FaxHandle, uint32 DeviceId, uint32 Flags, out HANDLE FaxPortHandle);
		public function BOOL PFAXCOMPLETEJOBPARAMSA(out FAX_JOB_PARAMA* JobParams, out FAX_COVERPAGE_INFOA* CoverpageInfo);
		public function BOOL PFAXCOMPLETEJOBPARAMSW(out FAX_JOB_PARAMW* JobParams, out FAX_COVERPAGE_INFOW* CoverpageInfo);
		public function BOOL PFAXSENDDOCUMENTA(HANDLE FaxHandle, PSTR FileName, out FAX_JOB_PARAMA JobParams, in FAX_COVERPAGE_INFOA CoverpageInfo, out uint32 FaxJobId);
		public function BOOL PFAXSENDDOCUMENTW(HANDLE FaxHandle, PWSTR FileName, out FAX_JOB_PARAMW JobParams, in FAX_COVERPAGE_INFOW CoverpageInfo, out uint32 FaxJobId);
		public function BOOL PFAX_RECIPIENT_CALLBACKA(HANDLE FaxHandle, uint32 RecipientNumber, void* Context, out FAX_JOB_PARAMA JobParams, out FAX_COVERPAGE_INFOA CoverpageInfo);
		public function BOOL PFAX_RECIPIENT_CALLBACKW(HANDLE FaxHandle, uint32 RecipientNumber, void* Context, out FAX_JOB_PARAMW JobParams, out FAX_COVERPAGE_INFOW CoverpageInfo);
		public function BOOL PFAXSENDDOCUMENTFORBROADCASTA(HANDLE FaxHandle, PSTR FileName, out uint32 FaxJobId, PFAX_RECIPIENT_CALLBACKA FaxRecipientCallback, void* Context);
		public function BOOL PFAXSENDDOCUMENTFORBROADCASTW(HANDLE FaxHandle, PWSTR FileName, out uint32 FaxJobId, PFAX_RECIPIENT_CALLBACKW FaxRecipientCallback, void* Context);
		public function BOOL PFAXENUMJOBSA(HANDLE FaxHandle, out FAX_JOB_ENTRYA* JobEntry, out uint32 JobsReturned);
		public function BOOL PFAXENUMJOBSW(HANDLE FaxHandle, out FAX_JOB_ENTRYW* JobEntry, out uint32 JobsReturned);
		public function BOOL PFAXGETJOBA(HANDLE FaxHandle, uint32 JobId, out FAX_JOB_ENTRYA* JobEntry);
		public function BOOL PFAXGETJOBW(HANDLE FaxHandle, uint32 JobId, out FAX_JOB_ENTRYW* JobEntry);
		public function BOOL PFAXSETJOBA(HANDLE FaxHandle, uint32 JobId, uint32 Command, in FAX_JOB_ENTRYA JobEntry);
		public function BOOL PFAXSETJOBW(HANDLE FaxHandle, uint32 JobId, uint32 Command, in FAX_JOB_ENTRYW JobEntry);
		public function BOOL PFAXGETPAGEDATA(HANDLE FaxHandle, uint32 JobId, out uint8* Buffer, out uint32 BufferSize, out uint32 ImageWidth, out uint32 ImageHeight);
		public function BOOL PFAXGETDEVICESTATUSA(HANDLE FaxPortHandle, out FAX_DEVICE_STATUSA* DeviceStatus);
		public function BOOL PFAXGETDEVICESTATUSW(HANDLE FaxPortHandle, out FAX_DEVICE_STATUSW* DeviceStatus);
		public function BOOL PFAXABORT(HANDLE FaxHandle, uint32 JobId);
		public function BOOL PFAXGETCONFIGURATIONA(HANDLE FaxHandle, out FAX_CONFIGURATIONA* FaxConfig);
		public function BOOL PFAXGETCONFIGURATIONW(HANDLE FaxHandle, out FAX_CONFIGURATIONW* FaxConfig);
		public function BOOL PFAXSETCONFIGURATIONA(HANDLE FaxHandle, in FAX_CONFIGURATIONA FaxConfig);
		public function BOOL PFAXSETCONFIGURATIONW(HANDLE FaxHandle, in FAX_CONFIGURATIONW FaxConfig);
		public function BOOL PFAXGETLOGGINGCATEGORIESA(HANDLE FaxHandle, out FAX_LOG_CATEGORYA* Categories, out uint32 NumberCategories);
		public function BOOL PFAXGETLOGGINGCATEGORIESW(HANDLE FaxHandle, out FAX_LOG_CATEGORYW* Categories, out uint32 NumberCategories);
		public function BOOL PFAXSETLOGGINGCATEGORIESA(HANDLE FaxHandle, in FAX_LOG_CATEGORYA Categories, uint32 NumberCategories);
		public function BOOL PFAXSETLOGGINGCATEGORIESW(HANDLE FaxHandle, in FAX_LOG_CATEGORYW Categories, uint32 NumberCategories);
		public function BOOL PFAXENUMPORTSA(HANDLE FaxHandle, out FAX_PORT_INFOA* PortInfo, out uint32 PortsReturned);
		public function BOOL PFAXENUMPORTSW(HANDLE FaxHandle, out FAX_PORT_INFOW* PortInfo, out uint32 PortsReturned);
		public function BOOL PFAXGETPORTA(HANDLE FaxPortHandle, out FAX_PORT_INFOA* PortInfo);
		public function BOOL PFAXGETPORTW(HANDLE FaxPortHandle, out FAX_PORT_INFOW* PortInfo);
		public function BOOL PFAXSETPORTA(HANDLE FaxPortHandle, in FAX_PORT_INFOA PortInfo);
		public function BOOL PFAXSETPORTW(HANDLE FaxPortHandle, in FAX_PORT_INFOW PortInfo);
		public function BOOL PFAXENUMROUTINGMETHODSA(HANDLE FaxPortHandle, out FAX_ROUTING_METHODA* RoutingMethod, out uint32 MethodsReturned);
		public function BOOL PFAXENUMROUTINGMETHODSW(HANDLE FaxPortHandle, out FAX_ROUTING_METHODW* RoutingMethod, out uint32 MethodsReturned);
		public function BOOL PFAXENABLEROUTINGMETHODA(HANDLE FaxPortHandle, PSTR RoutingGuid, BOOL Enabled);
		public function BOOL PFAXENABLEROUTINGMETHODW(HANDLE FaxPortHandle, PWSTR RoutingGuid, BOOL Enabled);
		public function BOOL PFAXENUMGLOBALROUTINGINFOA(HANDLE FaxHandle, out FAX_GLOBAL_ROUTING_INFOA* RoutingInfo, out uint32 MethodsReturned);
		public function BOOL PFAXENUMGLOBALROUTINGINFOW(HANDLE FaxHandle, out FAX_GLOBAL_ROUTING_INFOW* RoutingInfo, out uint32 MethodsReturned);
		public function BOOL PFAXSETGLOBALROUTINGINFOA(HANDLE FaxPortHandle, in FAX_GLOBAL_ROUTING_INFOA RoutingInfo);
		public function BOOL PFAXSETGLOBALROUTINGINFOW(HANDLE FaxPortHandle, in FAX_GLOBAL_ROUTING_INFOW RoutingInfo);
		public function BOOL PFAXGETROUTINGINFOA(HANDLE FaxPortHandle, PSTR RoutingGuid, out uint8* RoutingInfoBuffer, out uint32 RoutingInfoBufferSize);
		public function BOOL PFAXGETROUTINGINFOW(HANDLE FaxPortHandle, PWSTR RoutingGuid, out uint8* RoutingInfoBuffer, out uint32 RoutingInfoBufferSize);
		public function BOOL PFAXSETROUTINGINFOA(HANDLE FaxPortHandle, PSTR RoutingGuid, in uint8 RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		public function BOOL PFAXSETROUTINGINFOW(HANDLE FaxPortHandle, PWSTR RoutingGuid, in uint8 RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		public function BOOL PFAXINITIALIZEEVENTQUEUE(HANDLE FaxHandle, HANDLE CompletionPort, uint CompletionKey, HWND hWnd, uint32 MessageStart);
		public function void PFAXFREEBUFFER(void* Buffer);
		public function BOOL PFAXSTARTPRINTJOBA(PSTR PrinterName, in FAX_PRINT_INFOA PrintInfo, out uint32 FaxJobId, out FAX_CONTEXT_INFOA FaxContextInfo);
		public function BOOL PFAXSTARTPRINTJOBW(PWSTR PrinterName, in FAX_PRINT_INFOW PrintInfo, out uint32 FaxJobId, out FAX_CONTEXT_INFOW FaxContextInfo);
		public function BOOL PFAXPRINTCOVERPAGEA(in FAX_CONTEXT_INFOA FaxContextInfo, in FAX_COVERPAGE_INFOA CoverPageInfo);
		public function BOOL PFAXPRINTCOVERPAGEW(in FAX_CONTEXT_INFOW FaxContextInfo, in FAX_COVERPAGE_INFOW CoverPageInfo);
		public function BOOL PFAXREGISTERSERVICEPROVIDERW(PWSTR DeviceProvider, PWSTR FriendlyName, PWSTR ImageName, PWSTR TspName);
		public function BOOL PFAXUNREGISTERSERVICEPROVIDERW(PWSTR DeviceProvider);
		public function BOOL PFAX_ROUTING_INSTALLATION_CALLBACKW(HANDLE FaxHandle, void* Context, PWSTR MethodName, PWSTR FriendlyName, PWSTR FunctionName, PWSTR Guid);
		public function BOOL PFAXREGISTERROUTINGEXTENSIONW(HANDLE FaxHandle, PWSTR ExtensionName, PWSTR FriendlyName, PWSTR ImageName, PFAX_ROUTING_INSTALLATION_CALLBACKW CallBack, void* Context);
		public function BOOL PFAXACCESSCHECK(HANDLE FaxHandle, uint32 AccessMask);
		public function BOOL PFAX_SERVICE_CALLBACK(HANDLE FaxHandle, uint32 DeviceId, uint Param1, uint Param2, uint Param3);
		public function void PFAX_LINECALLBACK(HANDLE FaxHandle, uint32 hDevice, uint32 dwMessage, uint dwInstance, uint dwParam1, uint dwParam2, uint dwParam3);
		public function BOOL PFAX_SEND_CALLBACK(HANDLE FaxHandle, uint32 CallHandle, uint32 Reserved1, uint32 Reserved2);
		public function BOOL PFAXDEVINITIALIZE(uint32 param0, HANDLE param1, out PFAX_LINECALLBACK param2, PFAX_SERVICE_CALLBACK param3);
		public function BOOL PFAXDEVVIRTUALDEVICECREATION(out uint32 DeviceCount, char16* DeviceNamePrefix, out uint32 DeviceIdPrefix, HANDLE CompletionPort, uint CompletionKey);
		public function BOOL PFAXDEVSTARTJOB(uint32 param0, uint32 param1, out HANDLE param2, HANDLE param3, uint param4);
		public function BOOL PFAXDEVENDJOB(HANDLE param0);
		public function BOOL PFAXDEVSEND(HANDLE param0, out FAX_SEND param1, PFAX_SEND_CALLBACK param2);
		public function BOOL PFAXDEVRECEIVE(HANDLE param0, uint32 param1, out FAX_RECEIVE param2);
		public function BOOL PFAXDEVREPORTSTATUS(HANDLE param0, out FAX_DEV_STATUS param1, uint32 param2, out uint32 param3);
		public function BOOL PFAXDEVABORTOPERATION(HANDLE param0);
		public function BOOL PFAXDEVCONFIGURE(out HPROPSHEETPAGE param0);
		public function HRESULT PFAXDEVSHUTDOWN();
		public function int32 PFAXROUTEADDFILE(uint32 JobId, PWSTR FileName, out Guid Guid);
		public function int32 PFAXROUTEDELETEFILE(uint32 JobId, PWSTR FileName);
		public function BOOL PFAXROUTEGETFILE(uint32 JobId, uint32 Index, PWSTR FileNameBuffer, out uint32 RequiredSize);
		public function BOOL PFAXROUTEENUMFILE(uint32 JobId, out Guid GuidOwner, out Guid GuidCaller, PWSTR FileName, void* Context);
		public function BOOL PFAXROUTEENUMFILES(uint32 JobId, out Guid Guid, PFAXROUTEENUMFILE FileEnumerator, void* Context);
		public function BOOL PFAXROUTEMODIFYROUTINGDATA(uint32 JobId, PWSTR RoutingGuid, out uint8 RoutingData, uint32 RoutingDataSize);
		public function BOOL PFAXROUTEINITIALIZE(HANDLE param0, out FAX_ROUTE_CALLBACKROUTINES param1);
		public function BOOL PFAXROUTEMETHOD(in FAX_ROUTE param0, void** param1, out uint32 param2);
		public function BOOL PFAXROUTEDEVICEENABLE(PWSTR param0, uint32 param1, int32 param2);
		public function BOOL PFAXROUTEDEVICECHANGENOTIFICATION(uint32 param0, BOOL param1);
		public function BOOL PFAXROUTEGETROUTINGINFO(PWSTR param0, uint32 param1, out uint8 param2, out uint32 param3);
		public function BOOL PFAXROUTESETROUTINGINFO(PWSTR param0, uint32 param1, in uint8 param2, uint32 param3);
		public function uint32 PFAX_EXT_GET_DATA(uint32 param0, FAX_ENUM_DEVICE_ID_SOURCE param1, PWSTR param2, out uint8* param3, out uint32 param4);
		public function uint32 PFAX_EXT_SET_DATA(HINSTANCE param0, uint32 param1, FAX_ENUM_DEVICE_ID_SOURCE param2, PWSTR param3, out uint8 param4, uint32 param5);
		public function HRESULT PFAX_EXT_CONFIG_CHANGE(uint32 param0, PWSTR param1, out uint8 param2, uint32 param3);
		public function HANDLE PFAX_EXT_REGISTER_FOR_EVENTS(HINSTANCE param0, uint32 param1, FAX_ENUM_DEVICE_ID_SOURCE param2, PWSTR param3, PFAX_EXT_CONFIG_CHANGE param4);
		public function uint32 PFAX_EXT_UNREGISTER_FOR_EVENTS(HANDLE param0);
		public function void PFAX_EXT_FREE_BUFFER(void* param0);
		public function HRESULT PFAX_EXT_INITIALIZE_CONFIG(PFAX_EXT_GET_DATA param0, PFAX_EXT_SET_DATA param1, PFAX_EXT_REGISTER_FOR_EVENTS param2, PFAX_EXT_UNREGISTER_FOR_EVENTS param3, PFAX_EXT_FREE_BUFFER param4);
		
		// --- Structs ---
		
		[CRepr]
		public struct FAX_LOG_CATEGORYA
		{
			public PSTR Name;
			public uint32 Category;
			public uint32 Level;
		}
		[CRepr]
		public struct FAX_LOG_CATEGORYW
		{
			public PWSTR Name;
			public uint32 Category;
			public uint32 Level;
		}
		[CRepr]
		public struct FAX_TIME
		{
			public uint16 Hour;
			public uint16 Minute;
		}
		[CRepr]
		public struct FAX_CONFIGURATIONA
		{
			public uint32 SizeOfStruct;
			public uint32 Retries;
			public uint32 RetryDelay;
			public uint32 DirtyDays;
			public BOOL Branding;
			public BOOL UseDeviceTsid;
			public BOOL ServerCp;
			public BOOL PauseServerQueue;
			public FAX_TIME StartCheapTime;
			public FAX_TIME StopCheapTime;
			public BOOL ArchiveOutgoingFaxes;
			public PSTR ArchiveDirectory;
			public PSTR Reserved;
		}
		[CRepr]
		public struct FAX_CONFIGURATIONW
		{
			public uint32 SizeOfStruct;
			public uint32 Retries;
			public uint32 RetryDelay;
			public uint32 DirtyDays;
			public BOOL Branding;
			public BOOL UseDeviceTsid;
			public BOOL ServerCp;
			public BOOL PauseServerQueue;
			public FAX_TIME StartCheapTime;
			public FAX_TIME StopCheapTime;
			public BOOL ArchiveOutgoingFaxes;
			public PWSTR ArchiveDirectory;
			public PWSTR Reserved;
		}
		[CRepr]
		public struct FAX_DEVICE_STATUSA
		{
			public uint32 SizeOfStruct;
			public PSTR CallerId;
			public PSTR Csid;
			public uint32 CurrentPage;
			public uint32 DeviceId;
			public PSTR DeviceName;
			public PSTR DocumentName;
			public uint32 JobType;
			public PSTR PhoneNumber;
			public PSTR RoutingString;
			public PSTR SenderName;
			public PSTR RecipientName;
			public uint32 Size;
			public FILETIME StartTime;
			public uint32 Status;
			public PSTR StatusString;
			public FILETIME SubmittedTime;
			public uint32 TotalPages;
			public PSTR Tsid;
			public PSTR UserName;
		}
		[CRepr]
		public struct FAX_DEVICE_STATUSW
		{
			public uint32 SizeOfStruct;
			public PWSTR CallerId;
			public PWSTR Csid;
			public uint32 CurrentPage;
			public uint32 DeviceId;
			public PWSTR DeviceName;
			public PWSTR DocumentName;
			public uint32 JobType;
			public PWSTR PhoneNumber;
			public PWSTR RoutingString;
			public PWSTR SenderName;
			public PWSTR RecipientName;
			public uint32 Size;
			public FILETIME StartTime;
			public uint32 Status;
			public PWSTR StatusString;
			public FILETIME SubmittedTime;
			public uint32 TotalPages;
			public PWSTR Tsid;
			public PWSTR UserName;
		}
		[CRepr]
		public struct FAX_JOB_ENTRYA
		{
			public uint32 SizeOfStruct;
			public uint32 JobId;
			public PSTR UserName;
			public uint32 JobType;
			public uint32 QueueStatus;
			public uint32 Status;
			public uint32 Size;
			public uint32 PageCount;
			public PSTR RecipientNumber;
			public PSTR RecipientName;
			public PSTR Tsid;
			public PSTR SenderName;
			public PSTR SenderCompany;
			public PSTR SenderDept;
			public PSTR BillingCode;
			public uint32 ScheduleAction;
			public SYSTEMTIME ScheduleTime;
			public uint32 DeliveryReportType;
			public PSTR DeliveryReportAddress;
			public PSTR DocumentName;
		}
		[CRepr]
		public struct FAX_JOB_ENTRYW
		{
			public uint32 SizeOfStruct;
			public uint32 JobId;
			public PWSTR UserName;
			public uint32 JobType;
			public uint32 QueueStatus;
			public uint32 Status;
			public uint32 Size;
			public uint32 PageCount;
			public PWSTR RecipientNumber;
			public PWSTR RecipientName;
			public PWSTR Tsid;
			public PWSTR SenderName;
			public PWSTR SenderCompany;
			public PWSTR SenderDept;
			public PWSTR BillingCode;
			public uint32 ScheduleAction;
			public SYSTEMTIME ScheduleTime;
			public uint32 DeliveryReportType;
			public PWSTR DeliveryReportAddress;
			public PWSTR DocumentName;
		}
		[CRepr]
		public struct FAX_PORT_INFOA
		{
			public uint32 SizeOfStruct;
			public uint32 DeviceId;
			public uint32 State;
			public uint32 Flags;
			public uint32 Rings;
			public uint32 Priority;
			public PSTR DeviceName;
			public PSTR Tsid;
			public PSTR Csid;
		}
		[CRepr]
		public struct FAX_PORT_INFOW
		{
			public uint32 SizeOfStruct;
			public uint32 DeviceId;
			public uint32 State;
			public uint32 Flags;
			public uint32 Rings;
			public uint32 Priority;
			public PWSTR DeviceName;
			public PWSTR Tsid;
			public PWSTR Csid;
		}
		[CRepr]
		public struct FAX_ROUTING_METHODA
		{
			public uint32 SizeOfStruct;
			public uint32 DeviceId;
			public BOOL Enabled;
			public PSTR DeviceName;
			public PSTR Guid;
			public PSTR FriendlyName;
			public PSTR FunctionName;
			public PSTR ExtensionImageName;
			public PSTR ExtensionFriendlyName;
		}
		[CRepr]
		public struct FAX_ROUTING_METHODW
		{
			public uint32 SizeOfStruct;
			public uint32 DeviceId;
			public BOOL Enabled;
			public PWSTR DeviceName;
			public PWSTR Guid;
			public PWSTR FriendlyName;
			public PWSTR FunctionName;
			public PWSTR ExtensionImageName;
			public PWSTR ExtensionFriendlyName;
		}
		[CRepr]
		public struct FAX_GLOBAL_ROUTING_INFOA
		{
			public uint32 SizeOfStruct;
			public uint32 Priority;
			public PSTR Guid;
			public PSTR FriendlyName;
			public PSTR FunctionName;
			public PSTR ExtensionImageName;
			public PSTR ExtensionFriendlyName;
		}
		[CRepr]
		public struct FAX_GLOBAL_ROUTING_INFOW
		{
			public uint32 SizeOfStruct;
			public uint32 Priority;
			public PWSTR Guid;
			public PWSTR FriendlyName;
			public PWSTR FunctionName;
			public PWSTR ExtensionImageName;
			public PWSTR ExtensionFriendlyName;
		}
		[CRepr]
		public struct FAX_COVERPAGE_INFOA
		{
			public uint32 SizeOfStruct;
			public PSTR CoverPageName;
			public BOOL UseServerCoverPage;
			public PSTR RecName;
			public PSTR RecFaxNumber;
			public PSTR RecCompany;
			public PSTR RecStreetAddress;
			public PSTR RecCity;
			public PSTR RecState;
			public PSTR RecZip;
			public PSTR RecCountry;
			public PSTR RecTitle;
			public PSTR RecDepartment;
			public PSTR RecOfficeLocation;
			public PSTR RecHomePhone;
			public PSTR RecOfficePhone;
			public PSTR SdrName;
			public PSTR SdrFaxNumber;
			public PSTR SdrCompany;
			public PSTR SdrAddress;
			public PSTR SdrTitle;
			public PSTR SdrDepartment;
			public PSTR SdrOfficeLocation;
			public PSTR SdrHomePhone;
			public PSTR SdrOfficePhone;
			public PSTR Note;
			public PSTR Subject;
			public SYSTEMTIME TimeSent;
			public uint32 PageCount;
		}
		[CRepr]
		public struct FAX_COVERPAGE_INFOW
		{
			public uint32 SizeOfStruct;
			public PWSTR CoverPageName;
			public BOOL UseServerCoverPage;
			public PWSTR RecName;
			public PWSTR RecFaxNumber;
			public PWSTR RecCompany;
			public PWSTR RecStreetAddress;
			public PWSTR RecCity;
			public PWSTR RecState;
			public PWSTR RecZip;
			public PWSTR RecCountry;
			public PWSTR RecTitle;
			public PWSTR RecDepartment;
			public PWSTR RecOfficeLocation;
			public PWSTR RecHomePhone;
			public PWSTR RecOfficePhone;
			public PWSTR SdrName;
			public PWSTR SdrFaxNumber;
			public PWSTR SdrCompany;
			public PWSTR SdrAddress;
			public PWSTR SdrTitle;
			public PWSTR SdrDepartment;
			public PWSTR SdrOfficeLocation;
			public PWSTR SdrHomePhone;
			public PWSTR SdrOfficePhone;
			public PWSTR Note;
			public PWSTR Subject;
			public SYSTEMTIME TimeSent;
			public uint32 PageCount;
		}
		[CRepr]
		public struct FAX_JOB_PARAMA
		{
			public uint32 SizeOfStruct;
			public PSTR RecipientNumber;
			public PSTR RecipientName;
			public PSTR Tsid;
			public PSTR SenderName;
			public PSTR SenderCompany;
			public PSTR SenderDept;
			public PSTR BillingCode;
			public uint32 ScheduleAction;
			public SYSTEMTIME ScheduleTime;
			public uint32 DeliveryReportType;
			public PSTR DeliveryReportAddress;
			public PSTR DocumentName;
			public uint32 CallHandle;
			public uint[3] Reserved;
		}
		[CRepr]
		public struct FAX_JOB_PARAMW
		{
			public uint32 SizeOfStruct;
			public PWSTR RecipientNumber;
			public PWSTR RecipientName;
			public PWSTR Tsid;
			public PWSTR SenderName;
			public PWSTR SenderCompany;
			public PWSTR SenderDept;
			public PWSTR BillingCode;
			public uint32 ScheduleAction;
			public SYSTEMTIME ScheduleTime;
			public uint32 DeliveryReportType;
			public PWSTR DeliveryReportAddress;
			public PWSTR DocumentName;
			public uint32 CallHandle;
			public uint[3] Reserved;
		}
		[CRepr]
		public struct FAX_EVENTA
		{
			public uint32 SizeOfStruct;
			public FILETIME TimeStamp;
			public uint32 DeviceId;
			public uint32 EventId;
			public uint32 JobId;
		}
		[CRepr]
		public struct FAX_EVENTW
		{
			public uint32 SizeOfStruct;
			public FILETIME TimeStamp;
			public uint32 DeviceId;
			public uint32 EventId;
			public uint32 JobId;
		}
		[CRepr]
		public struct FAX_PRINT_INFOA
		{
			public uint32 SizeOfStruct;
			public PSTR DocName;
			public PSTR RecipientName;
			public PSTR RecipientNumber;
			public PSTR SenderName;
			public PSTR SenderCompany;
			public PSTR SenderDept;
			public PSTR SenderBillingCode;
			public PSTR Reserved;
			public PSTR DrEmailAddress;
			public PSTR OutputFileName;
		}
		[CRepr]
		public struct FAX_PRINT_INFOW
		{
			public uint32 SizeOfStruct;
			public PWSTR DocName;
			public PWSTR RecipientName;
			public PWSTR RecipientNumber;
			public PWSTR SenderName;
			public PWSTR SenderCompany;
			public PWSTR SenderDept;
			public PWSTR SenderBillingCode;
			public PWSTR Reserved;
			public PWSTR DrEmailAddress;
			public PWSTR OutputFileName;
		}
		[CRepr]
		public struct FAX_CONTEXT_INFOA
		{
			public uint32 SizeOfStruct;
			public HDC hDC;
			public CHAR[16] ServerName;
		}
		[CRepr]
		public struct FAX_CONTEXT_INFOW
		{
			public uint32 SizeOfStruct;
			public HDC hDC;
			public char16[16] ServerName;
		}
		[CRepr]
		public struct FAX_SEND
		{
			public uint32 SizeOfStruct;
			public PWSTR FileName;
			public PWSTR CallerName;
			public PWSTR CallerNumber;
			public PWSTR ReceiverName;
			public PWSTR ReceiverNumber;
			public BOOL Branding;
			public uint32 CallHandle;
			public uint32[3] Reserved;
		}
		[CRepr]
		public struct FAX_RECEIVE
		{
			public uint32 SizeOfStruct;
			public PWSTR FileName;
			public PWSTR ReceiverName;
			public PWSTR ReceiverNumber;
			public uint32[4] Reserved;
		}
		[CRepr]
		public struct FAX_DEV_STATUS
		{
			public uint32 SizeOfStruct;
			public uint32 StatusId;
			public uint32 StringId;
			public uint32 PageCount;
			public PWSTR CSI;
			public PWSTR CallerId;
			public PWSTR RoutingInfo;
			public uint32 ErrorCode;
			public uint32[3] Reserved;
		}
		[CRepr]
		public struct FAX_ROUTE_CALLBACKROUTINES
		{
			public uint32 SizeOfStruct;
			public PFAXROUTEADDFILE FaxRouteAddFile;
			public PFAXROUTEDELETEFILE FaxRouteDeleteFile;
			public PFAXROUTEGETFILE FaxRouteGetFile;
			public PFAXROUTEENUMFILES FaxRouteEnumFiles;
			public PFAXROUTEMODIFYROUTINGDATA FaxRouteModifyRoutingData;
		}
		[CRepr]
		public struct FAX_ROUTE
		{
			public uint32 SizeOfStruct;
			public uint32 JobId;
			public uint64 ElapsedTime;
			public uint64 ReceiveTime;
			public uint32 PageCount;
			public PWSTR Csid;
			public PWSTR Tsid;
			public PWSTR CallerId;
			public PWSTR RoutingInfo;
			public PWSTR ReceiverName;
			public PWSTR ReceiverNumber;
			public PWSTR DeviceName;
			public uint32 DeviceId;
			public uint8* RoutingInfoData;
			public uint32 RoutingInfoDataSize;
		}
		[CRepr]
		public struct STI_DEV_CAPS
		{
			public uint32 dwGeneric;
		}
		[CRepr]
		public struct STI_DEVICE_INFORMATIONW
		{
			public uint32 dwSize;
			public uint32 DeviceType;
			public char16[128] szDeviceInternalName;
			public STI_DEV_CAPS DeviceCapabilitiesA;
			public uint32 dwHardwareConfiguration;
			public PWSTR pszVendorDescription;
			public PWSTR pszDeviceDescription;
			public PWSTR pszPortName;
			public PWSTR pszPropProvider;
			public PWSTR pszLocalName;
		}
		[CRepr]
		public struct STI_WIA_DEVICE_INFORMATIONW
		{
			public uint32 dwSize;
			public uint32 DeviceType;
			public char16[128] szDeviceInternalName;
			public STI_DEV_CAPS DeviceCapabilitiesA;
			public uint32 dwHardwareConfiguration;
			public PWSTR pszVendorDescription;
			public PWSTR pszDeviceDescription;
			public PWSTR pszPortName;
			public PWSTR pszPropProvider;
			public PWSTR pszLocalName;
			public PWSTR pszUiDll;
			public PWSTR pszServer;
		}
		[CRepr]
		public struct STI_DEVICE_STATUS
		{
			public uint32 dwSize;
			public uint32 StatusMask;
			public uint32 dwOnlineState;
			public uint32 dwHardwareStatusCode;
			public uint32 dwEventHandlingState;
			public uint32 dwPollingInterval;
		}
		[CRepr]
		public struct _ERROR_INFOW
		{
			public uint32 dwSize;
			public uint32 dwGenericError;
			public uint32 dwVendorError;
			public char16[255] szExtendedErrorText;
		}
		[CRepr]
		public struct STI_DIAG
		{
			public uint32 dwSize;
			public uint32 dwBasicDiagCode;
			public uint32 dwVendorDiagCode;
			public uint32 dwStatusMask;
			public _ERROR_INFOW sErrorInfo;
		}
		[CRepr]
		public struct STISUBSCRIBE
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwFilter;
			public HWND hWndNotify;
			public HANDLE hEvent;
			public uint32 uiNotificationMessage;
		}
		[CRepr]
		public struct STINOTIFY
		{
			public uint32 dwSize;
			public Guid guidNotificationCode;
			public uint8[64] abNotificationData;
		}
		[CRepr]
		public struct IStiDeviceW {}
		[CRepr]
		public struct STI_USD_CAPS
		{
			public uint32 dwVersion;
			public uint32 dwGenericCaps;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FaxServer = .(0xcda8acb0, 0x8cf5, 0x4f6c, 0x9b, 0xa2, 0x59, 0x31, 0xd4, 0x0c, 0x8c, 0xae);
		public const Guid CLSID_FaxDeviceProviders = .(0xeb8fe768, 0x875a, 0x4f5f, 0x82, 0xc5, 0x03, 0xf2, 0x3a, 0xac, 0x1b, 0xd7);
		public const Guid CLSID_FaxDevices = .(0x5589e28e, 0x23cb, 0x4919, 0x88, 0x08, 0xe6, 0x10, 0x18, 0x46, 0xe8, 0x0d);
		public const Guid CLSID_FaxInboundRouting = .(0xe80248ed, 0xad65, 0x4218, 0x81, 0x08, 0x99, 0x19, 0x24, 0xd4, 0xe7, 0xed);
		public const Guid CLSID_FaxFolders = .(0xc35211d7, 0x5776, 0x48cb, 0xaf, 0x44, 0xc3, 0x1b, 0xe3, 0xb2, 0xcf, 0xe5);
		public const Guid CLSID_FaxLoggingOptions = .(0x1bf9eea6, 0xece0, 0x4785, 0xa1, 0x8b, 0xde, 0x56, 0xe9, 0xee, 0xf9, 0x6a);
		public const Guid CLSID_FaxActivity = .(0xcfef5d0e, 0xe84d, 0x462e, 0xaa, 0xbb, 0x87, 0xd3, 0x1e, 0xb0, 0x4f, 0xef);
		public const Guid CLSID_FaxOutboundRouting = .(0xc81b385e, 0xb869, 0x4afd, 0x86, 0xc0, 0x61, 0x64, 0x98, 0xed, 0x9b, 0xe2);
		public const Guid CLSID_FaxReceiptOptions = .(0x6982487b, 0x227b, 0x4c96, 0xa6, 0x1c, 0x24, 0x83, 0x48, 0xb0, 0x5a, 0xb6);
		public const Guid CLSID_FaxSecurity = .(0x10c4ddde, 0xabf0, 0x43df, 0x96, 0x4f, 0x7f, 0x3a, 0xc2, 0x1a, 0x4c, 0x7b);
		public const Guid CLSID_FaxDocument = .(0x0f3f9f91, 0xc838, 0x415e, 0xa4, 0xf3, 0x3e, 0x82, 0x8c, 0xa4, 0x45, 0xe0);
		public const Guid CLSID_FaxSender = .(0x265d84d0, 0x1850, 0x4360, 0xb7, 0xc8, 0x75, 0x8b, 0xbb, 0x5f, 0x0b, 0x96);
		public const Guid CLSID_FaxRecipients = .(0xea9bdf53, 0x10a9, 0x4d4f, 0xa0, 0x67, 0x63, 0xc8, 0xf8, 0x4f, 0x01, 0xb0);
		public const Guid CLSID_FaxIncomingArchive = .(0x8426c56a, 0x35a1, 0x4c6f, 0xaf, 0x93, 0xfc, 0x95, 0x24, 0x22, 0xe2, 0xc2);
		public const Guid CLSID_FaxIncomingQueue = .(0x69131717, 0xf3f1, 0x40e3, 0x80, 0x9d, 0xa6, 0xcb, 0xf7, 0xbd, 0x85, 0xe5);
		public const Guid CLSID_FaxOutgoingArchive = .(0x43c28403, 0xe04f, 0x474d, 0x99, 0x0c, 0xb9, 0x46, 0x69, 0x14, 0x8f, 0x59);
		public const Guid CLSID_FaxOutgoingQueue = .(0x7421169e, 0x8c43, 0x4b0d, 0xbb, 0x16, 0x64, 0x5c, 0x8f, 0xa4, 0x03, 0x57);
		public const Guid CLSID_FaxIncomingMessageIterator = .(0x6088e1d8, 0x3fc8, 0x45c2, 0x87, 0xb1, 0x90, 0x9a, 0x29, 0x60, 0x7e, 0xa9);
		public const Guid CLSID_FaxIncomingMessage = .(0x1932fcf7, 0x9d43, 0x4d5a, 0x89, 0xff, 0x03, 0x86, 0x1b, 0x32, 0x17, 0x36);
		public const Guid CLSID_FaxOutgoingJobs = .(0x92bf2a6c, 0x37be, 0x43fa, 0xa3, 0x7d, 0xcb, 0x0e, 0x5f, 0x75, 0x3b, 0x35);
		public const Guid CLSID_FaxOutgoingJob = .(0x71bb429c, 0x0ef9, 0x4915, 0xbe, 0xc5, 0xa5, 0xd8, 0x97, 0xa3, 0xe9, 0x24);
		public const Guid CLSID_FaxOutgoingMessageIterator = .(0x8a3224d0, 0xd30b, 0x49de, 0x98, 0x13, 0xcb, 0x38, 0x57, 0x90, 0xfb, 0xbb);
		public const Guid CLSID_FaxOutgoingMessage = .(0x91b4a378, 0x4ad8, 0x4aef, 0xa4, 0xdc, 0x97, 0xd9, 0x6e, 0x93, 0x9a, 0x3a);
		public const Guid CLSID_FaxIncomingJobs = .(0xa1bb8a43, 0x8866, 0x4fb7, 0xa1, 0x5d, 0x62, 0x66, 0xc8, 0x75, 0xa5, 0xcc);
		public const Guid CLSID_FaxIncomingJob = .(0xc47311ec, 0xae32, 0x41b8, 0xae, 0x4b, 0x3e, 0xae, 0x06, 0x29, 0xd0, 0xc9);
		public const Guid CLSID_FaxDeviceProvider = .(0x17cf1aa3, 0xf5eb, 0x484a, 0x9c, 0x9a, 0x44, 0x40, 0xa5, 0xba, 0xab, 0xfc);
		public const Guid CLSID_FaxDevice = .(0x59e3a5b2, 0xd676, 0x484b, 0xa6, 0xde, 0x72, 0x0b, 0xfa, 0x89, 0xb5, 0xaf);
		public const Guid CLSID_FaxActivityLogging = .(0xf0a0294e, 0x3bbd, 0x48b8, 0x8f, 0x13, 0x8c, 0x59, 0x1a, 0x55, 0xbd, 0xbc);
		public const Guid CLSID_FaxEventLogging = .(0xa6850930, 0xa0f6, 0x4a6f, 0x95, 0xb7, 0xdb, 0x2e, 0xbf, 0x3d, 0x02, 0xe3);
		public const Guid CLSID_FaxOutboundRoutingGroups = .(0xccbea1a5, 0xe2b4, 0x4b57, 0x94, 0x21, 0xb0, 0x4b, 0x62, 0x89, 0x46, 0x4b);
		public const Guid CLSID_FaxOutboundRoutingGroup = .(0x0213f3e0, 0x6791, 0x4d77, 0xa2, 0x71, 0x04, 0xd2, 0x35, 0x7c, 0x50, 0xd6);
		public const Guid CLSID_FaxDeviceIds = .(0xcdc539ea, 0x7277, 0x460e, 0x8d, 0xe0, 0x48, 0xa0, 0xa5, 0x76, 0x0d, 0x1f);
		public const Guid CLSID_FaxOutboundRoutingRules = .(0xd385beca, 0xe624, 0x4473, 0xbf, 0xaa, 0x9f, 0x40, 0x00, 0x83, 0x1f, 0x54);
		public const Guid CLSID_FaxOutboundRoutingRule = .(0x6549eebf, 0x08d1, 0x475a, 0x82, 0x8b, 0x3b, 0xf1, 0x05, 0x95, 0x2f, 0xa0);
		public const Guid CLSID_FaxInboundRoutingExtensions = .(0x189a48ed, 0x623c, 0x4c0d, 0x80, 0xf2, 0xd6, 0x6c, 0x7b, 0x9e, 0xfe, 0xc2);
		public const Guid CLSID_FaxInboundRoutingExtension = .(0x1d7dfb51, 0x7207, 0x4436, 0xa0, 0xd9, 0x24, 0xe3, 0x2e, 0xe5, 0x69, 0x88);
		public const Guid CLSID_FaxInboundRoutingMethods = .(0x25fcb76a, 0xb750, 0x4b82, 0x92, 0x66, 0xfb, 0xbb, 0xae, 0x89, 0x22, 0xba);
		public const Guid CLSID_FaxInboundRoutingMethod = .(0x4b9fd75c, 0x0194, 0x4b72, 0x9c, 0xe5, 0x02, 0xa8, 0x20, 0x5a, 0xc7, 0xd4);
		public const Guid CLSID_FaxJobStatus = .(0x7bf222f4, 0xbe8d, 0x442f, 0x84, 0x1d, 0x61, 0x32, 0x74, 0x24, 0x23, 0xbb);
		public const Guid CLSID_FaxRecipient = .(0x60bf3301, 0x7df8, 0x4bd8, 0x91, 0x48, 0x7b, 0x58, 0x01, 0xf9, 0xef, 0xdf);
		public const Guid CLSID_FaxConfiguration = .(0x5857326f, 0xe7b3, 0x41a7, 0x9c, 0x19, 0xa9, 0x1b, 0x46, 0x3e, 0x2d, 0x56);
		public const Guid CLSID_FaxAccountSet = .(0xfbc23c4b, 0x79e0, 0x4291, 0xbc, 0x56, 0xc1, 0x2e, 0x25, 0x3b, 0xbf, 0x3a);
		public const Guid CLSID_FaxAccounts = .(0xda1f94aa, 0xee2c, 0x47c0, 0x8f, 0x4f, 0x2a, 0x21, 0x70, 0x75, 0xb7, 0x6e);
		public const Guid CLSID_FaxAccount = .(0xa7e0647f, 0x4524, 0x4464, 0xa5, 0x6d, 0xb9, 0xfe, 0x66, 0x6f, 0x71, 0x5e);
		public const Guid CLSID_FaxAccountFolders = .(0x85398f49, 0xc034, 0x4a3f, 0x82, 0x1c, 0xdb, 0x7d, 0x68, 0x5e, 0x81, 0x29);
		public const Guid CLSID_FaxAccountIncomingQueue = .(0x9bcf6094, 0xb4da, 0x45f4, 0xb8, 0xd6, 0xdd, 0xeb, 0x21, 0x86, 0x65, 0x2c);
		public const Guid CLSID_FaxAccountOutgoingQueue = .(0xfeeceefb, 0xc149, 0x48ba, 0xba, 0xb8, 0xb7, 0x91, 0xe1, 0x01, 0xf6, 0x2f);
		public const Guid CLSID_FaxAccountIncomingArchive = .(0x14b33db5, 0x4c40, 0x4ecf, 0x9e, 0xf8, 0xa3, 0x60, 0xcb, 0xe8, 0x09, 0xed);
		public const Guid CLSID_FaxAccountOutgoingArchive = .(0x851e7af5, 0x433a, 0x4739, 0xa2, 0xdf, 0xad, 0x24, 0x5c, 0x2c, 0xb9, 0x8e);
		public const Guid CLSID_FaxSecurity2 = .(0x735c1248, 0xec89, 0x4c30, 0xa1, 0x27, 0x65, 0x6e, 0x92, 0xe3, 0xc4, 0xea);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFaxJobStatus : IDispatch
		{
			public const new Guid IID = .(0x8b86f485, 0xfd7f, 0x4824, 0x88, 0x6b, 0x40, 0xc5, 0xca, 0xa6, 0x17, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out FAX_JOB_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_Pages(out int32 plPages) mut => VT.get_Pages(ref this, out plPages);
			public HRESULT get_Size(out int32 plSize) mut => VT.get_Size(ref this, out plSize);
			public HRESULT get_CurrentPage(out int32 plCurrentPage) mut => VT.get_CurrentPage(ref this, out plCurrentPage);
			public HRESULT get_DeviceId(out int32 plDeviceId) mut => VT.get_DeviceId(ref this, out plDeviceId);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT get_ExtendedStatusCode(out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) mut => VT.get_ExtendedStatusCode(ref this, out pExtendedStatusCode);
			public HRESULT get_ExtendedStatus(BSTR* pbstrExtendedStatus) mut => VT.get_ExtendedStatus(ref this, pbstrExtendedStatus);
			public HRESULT get_AvailableOperations(out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) mut => VT.get_AvailableOperations(ref this, out pAvailableOperations);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT get_JobType(out FAX_JOB_TYPE_ENUM pJobType) mut => VT.get_JobType(ref this, out pJobType);
			public HRESULT get_ScheduledTime(out double pdateScheduledTime) mut => VT.get_ScheduledTime(ref this, out pdateScheduledTime);
			public HRESULT get_TransmissionStart(out double pdateTransmissionStart) mut => VT.get_TransmissionStart(ref this, out pdateTransmissionStart);
			public HRESULT get_TransmissionEnd(out double pdateTransmissionEnd) mut => VT.get_TransmissionEnd(ref this, out pdateTransmissionEnd);
			public HRESULT get_CallerId(BSTR* pbstrCallerId) mut => VT.get_CallerId(ref this, pbstrCallerId);
			public HRESULT get_RoutingInformation(BSTR* pbstrRoutingInformation) mut => VT.get_RoutingInformation(ref this, pbstrRoutingInformation);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out FAX_JOB_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out int32 plPages) get_Pages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out int32 plSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out int32 plCurrentPage) get_CurrentPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out int32 plDeviceId) get_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) get_ExtendedStatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) get_AvailableOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out FAX_JOB_TYPE_ENUM pJobType) get_JobType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out double pdateScheduledTime) get_ScheduledTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out double pdateTransmissionStart) get_TransmissionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, out double pdateTransmissionEnd) get_TransmissionEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, BSTR* pbstrCallerId) get_CallerId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxJobStatus self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
			}
		}
		[CRepr]
		public struct IFaxServer : IDispatch
		{
			public const new Guid IID = .(0x475b6469, 0x90a5, 0x4878, 0xa5, 0x77, 0x17, 0xa8, 0x6e, 0x8e, 0x34, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(BSTR bstrServerName) mut => VT.Connect(ref this, bstrServerName);
			public HRESULT get_ServerName(BSTR* pbstrServerName) mut => VT.get_ServerName(ref this, pbstrServerName);
			public HRESULT GetDeviceProviders(IFaxDeviceProviders** ppFaxDeviceProviders) mut => VT.GetDeviceProviders(ref this, ppFaxDeviceProviders);
			public HRESULT GetDevices(IFaxDevices** ppFaxDevices) mut => VT.GetDevices(ref this, ppFaxDevices);
			public HRESULT get_InboundRouting(IFaxInboundRouting** ppFaxInboundRouting) mut => VT.get_InboundRouting(ref this, ppFaxInboundRouting);
			public HRESULT get_Folders(IFaxFolders** pFaxFolders) mut => VT.get_Folders(ref this, pFaxFolders);
			public HRESULT get_LoggingOptions(IFaxLoggingOptions** ppFaxLoggingOptions) mut => VT.get_LoggingOptions(ref this, ppFaxLoggingOptions);
			public HRESULT get_MajorVersion(out int32 plMajorVersion) mut => VT.get_MajorVersion(ref this, out plMajorVersion);
			public HRESULT get_MinorVersion(out int32 plMinorVersion) mut => VT.get_MinorVersion(ref this, out plMinorVersion);
			public HRESULT get_MajorBuild(out int32 plMajorBuild) mut => VT.get_MajorBuild(ref this, out plMajorBuild);
			public HRESULT get_MinorBuild(out int32 plMinorBuild) mut => VT.get_MinorBuild(ref this, out plMinorBuild);
			public HRESULT get_Debug(out int16 pbDebug) mut => VT.get_Debug(ref this, out pbDebug);
			public HRESULT get_Activity(IFaxActivity** ppFaxActivity) mut => VT.get_Activity(ref this, ppFaxActivity);
			public HRESULT get_OutboundRouting(IFaxOutboundRouting** ppFaxOutboundRouting) mut => VT.get_OutboundRouting(ref this, ppFaxOutboundRouting);
			public HRESULT get_ReceiptOptions(IFaxReceiptOptions** ppFaxReceiptOptions) mut => VT.get_ReceiptOptions(ref this, ppFaxReceiptOptions);
			public HRESULT get_Security(IFaxSecurity** ppFaxSecurity) mut => VT.get_Security(ref this, ppFaxSecurity);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT GetExtensionProperty(BSTR bstrGUID, out VARIANT pvProperty) mut => VT.GetExtensionProperty(ref this, bstrGUID, out pvProperty);
			public HRESULT SetExtensionProperty(BSTR bstrGUID, VARIANT vProperty) mut => VT.SetExtensionProperty(ref this, bstrGUID, vProperty);
			public HRESULT ListenToServerEvents(FAX_SERVER_EVENTS_TYPE_ENUM EventTypes) mut => VT.ListenToServerEvents(ref this, EventTypes);
			public HRESULT RegisterDeviceProvider(BSTR bstrGUID, BSTR bstrFriendlyName, BSTR bstrImageName, BSTR TspName, int32 lFSPIVersion) mut => VT.RegisterDeviceProvider(ref this, bstrGUID, bstrFriendlyName, bstrImageName, TspName, lFSPIVersion);
			public HRESULT UnregisterDeviceProvider(BSTR bstrUniqueName) mut => VT.UnregisterDeviceProvider(ref this, bstrUniqueName);
			public HRESULT RegisterInboundRoutingExtension(BSTR bstrExtensionName, BSTR bstrFriendlyName, BSTR bstrImageName, VARIANT vMethods) mut => VT.RegisterInboundRoutingExtension(ref this, bstrExtensionName, bstrFriendlyName, bstrImageName, vMethods);
			public HRESULT UnregisterInboundRoutingExtension(BSTR bstrExtensionUniqueName) mut => VT.UnregisterInboundRoutingExtension(ref this, bstrExtensionUniqueName);
			public HRESULT get_RegisteredEvents(out FAX_SERVER_EVENTS_TYPE_ENUM pEventTypes) mut => VT.get_RegisteredEvents(ref this, out pEventTypes);
			public HRESULT get_APIVersion(out FAX_SERVER_APIVERSION_ENUM pAPIVersion) mut => VT.get_APIVersion(ref this, out pAPIVersion);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrServerName) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR* pbstrServerName) get_ServerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxDeviceProviders** ppFaxDeviceProviders) GetDeviceProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxDevices** ppFaxDevices) GetDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxInboundRouting** ppFaxInboundRouting) get_InboundRouting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxFolders** pFaxFolders) get_Folders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxLoggingOptions** ppFaxLoggingOptions) get_LoggingOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out int32 plMajorVersion) get_MajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out int32 plMinorVersion) get_MinorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out int32 plMajorBuild) get_MajorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out int32 plMinorBuild) get_MinorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out int16 pbDebug) get_Debug;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxActivity** ppFaxActivity) get_Activity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxOutboundRouting** ppFaxOutboundRouting) get_OutboundRouting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxReceiptOptions** ppFaxReceiptOptions) get_ReceiptOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, IFaxSecurity** ppFaxSecurity) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrGUID, out VARIANT pvProperty) GetExtensionProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrGUID, VARIANT vProperty) SetExtensionProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, FAX_SERVER_EVENTS_TYPE_ENUM EventTypes) ListenToServerEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrGUID, BSTR bstrFriendlyName, BSTR bstrImageName, BSTR TspName, int32 lFSPIVersion) RegisterDeviceProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrUniqueName) UnregisterDeviceProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrExtensionName, BSTR bstrFriendlyName, BSTR bstrImageName, VARIANT vMethods) RegisterInboundRoutingExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, BSTR bstrExtensionUniqueName) UnregisterInboundRoutingExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out FAX_SERVER_EVENTS_TYPE_ENUM pEventTypes) get_RegisteredEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer self, out FAX_SERVER_APIVERSION_ENUM pAPIVersion) get_APIVersion;
			}
		}
		[CRepr]
		public struct IFaxDeviceProviders : IDispatch
		{
			public const new Guid IID = .(0x9fb76f62, 0x4c7e, 0x43a5, 0xb6, 0xfd, 0x50, 0x28, 0x93, 0xf7, 0xe1, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxDeviceProvider** pFaxDeviceProvider) mut => VT.get_Item(ref this, vIndex, pFaxDeviceProvider);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProviders self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProviders self, VARIANT vIndex, IFaxDeviceProvider** pFaxDeviceProvider) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProviders self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxDevices : IDispatch
		{
			public const new Guid IID = .(0x9e46783e, 0xf34f, 0x482e, 0xa3, 0x60, 0x04, 0x16, 0xbe, 0xcb, 0xbd, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxDevice** pFaxDevice) mut => VT.get_Item(ref this, vIndex, pFaxDevice);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get_ItemById(int32 lId, IFaxDevice** ppFaxDevice) mut => VT.get_ItemById(ref this, lId, ppFaxDevice);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevices self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevices self, VARIANT vIndex, IFaxDevice** pFaxDevice) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevices self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevices self, int32 lId, IFaxDevice** ppFaxDevice) get_ItemById;
			}
		}
		[CRepr]
		public struct IFaxInboundRouting : IDispatch
		{
			public const new Guid IID = .(0x8148c20f, 0x9d52, 0x45b1, 0xbf, 0x96, 0x38, 0xfc, 0x12, 0x71, 0x35, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetExtensions(IFaxInboundRoutingExtensions** pFaxInboundRoutingExtensions) mut => VT.GetExtensions(ref this, pFaxInboundRoutingExtensions);
			public HRESULT GetMethods(IFaxInboundRoutingMethods** pFaxInboundRoutingMethods) mut => VT.GetMethods(ref this, pFaxInboundRoutingMethods);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRouting self, IFaxInboundRoutingExtensions** pFaxInboundRoutingExtensions) GetExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRouting self, IFaxInboundRoutingMethods** pFaxInboundRoutingMethods) GetMethods;
			}
		}
		[CRepr]
		public struct IFaxFolders : IDispatch
		{
			public const new Guid IID = .(0xdce3b2a8, 0xa7ab, 0x42bc, 0x9d, 0x0a, 0x31, 0x49, 0x45, 0x72, 0x61, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OutgoingQueue(IFaxOutgoingQueue** pFaxOutgoingQueue) mut => VT.get_OutgoingQueue(ref this, pFaxOutgoingQueue);
			public HRESULT get_IncomingQueue(IFaxIncomingQueue** pFaxIncomingQueue) mut => VT.get_IncomingQueue(ref this, pFaxIncomingQueue);
			public HRESULT get_IncomingArchive(IFaxIncomingArchive** pFaxIncomingArchive) mut => VT.get_IncomingArchive(ref this, pFaxIncomingArchive);
			public HRESULT get_OutgoingArchive(IFaxOutgoingArchive** pFaxOutgoingArchive) mut => VT.get_OutgoingArchive(ref this, pFaxOutgoingArchive);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxFolders self, IFaxOutgoingQueue** pFaxOutgoingQueue) get_OutgoingQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxFolders self, IFaxIncomingQueue** pFaxIncomingQueue) get_IncomingQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxFolders self, IFaxIncomingArchive** pFaxIncomingArchive) get_IncomingArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxFolders self, IFaxOutgoingArchive** pFaxOutgoingArchive) get_OutgoingArchive;
			}
		}
		[CRepr]
		public struct IFaxLoggingOptions : IDispatch
		{
			public const new Guid IID = .(0x34e64fb9, 0x6b31, 0x4d32, 0x8b, 0x27, 0xd2, 0x86, 0xc0, 0xc3, 0x36, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventLogging(IFaxEventLogging** pFaxEventLogging) mut => VT.get_EventLogging(ref this, pFaxEventLogging);
			public HRESULT get_ActivityLogging(IFaxActivityLogging** pFaxActivityLogging) mut => VT.get_ActivityLogging(ref this, pFaxActivityLogging);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxLoggingOptions self, IFaxEventLogging** pFaxEventLogging) get_EventLogging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxLoggingOptions self, IFaxActivityLogging** pFaxActivityLogging) get_ActivityLogging;
			}
		}
		[CRepr]
		public struct IFaxActivity : IDispatch
		{
			public const new Guid IID = .(0x4b106f97, 0x3df5, 0x40f2, 0xbc, 0x3c, 0x44, 0xcb, 0x81, 0x15, 0xeb, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IncomingMessages(out int32 plIncomingMessages) mut => VT.get_IncomingMessages(ref this, out plIncomingMessages);
			public HRESULT get_RoutingMessages(out int32 plRoutingMessages) mut => VT.get_RoutingMessages(ref this, out plRoutingMessages);
			public HRESULT get_OutgoingMessages(out int32 plOutgoingMessages) mut => VT.get_OutgoingMessages(ref this, out plOutgoingMessages);
			public HRESULT get_QueuedMessages(out int32 plQueuedMessages) mut => VT.get_QueuedMessages(ref this, out plQueuedMessages);
			public HRESULT Refresh() mut => VT.Refresh(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivity self, out int32 plIncomingMessages) get_IncomingMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivity self, out int32 plRoutingMessages) get_RoutingMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivity self, out int32 plOutgoingMessages) get_OutgoingMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivity self, out int32 plQueuedMessages) get_QueuedMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivity self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxOutboundRouting : IDispatch
		{
			public const new Guid IID = .(0x25dc05a4, 0x9909, 0x41bd, 0xa9, 0x5b, 0x7e, 0x5d, 0x1d, 0xec, 0x1d, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGroups(IFaxOutboundRoutingGroups** pFaxOutboundRoutingGroups) mut => VT.GetGroups(ref this, pFaxOutboundRoutingGroups);
			public HRESULT GetRules(IFaxOutboundRoutingRules** pFaxOutboundRoutingRules) mut => VT.GetRules(ref this, pFaxOutboundRoutingRules);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRouting self, IFaxOutboundRoutingGroups** pFaxOutboundRoutingGroups) GetGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRouting self, IFaxOutboundRoutingRules** pFaxOutboundRoutingRules) GetRules;
			}
		}
		[CRepr]
		public struct IFaxReceiptOptions : IDispatch
		{
			public const new Guid IID = .(0x378efaeb, 0x5fcb, 0x4afb, 0xb2, 0xee, 0xe1, 0x6e, 0x80, 0x61, 0x44, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AuthenticationType(out FAX_SMTP_AUTHENTICATION_TYPE_ENUM pType) mut => VT.get_AuthenticationType(ref this, out pType);
			public HRESULT put_AuthenticationType(FAX_SMTP_AUTHENTICATION_TYPE_ENUM Type) mut => VT.put_AuthenticationType(ref this, Type);
			public HRESULT get_SMTPServer(BSTR* pbstrSMTPServer) mut => VT.get_SMTPServer(ref this, pbstrSMTPServer);
			public HRESULT put_SMTPServer(BSTR bstrSMTPServer) mut => VT.put_SMTPServer(ref this, bstrSMTPServer);
			public HRESULT get_SMTPPort(out int32 plSMTPPort) mut => VT.get_SMTPPort(ref this, out plSMTPPort);
			public HRESULT put_SMTPPort(int32 lSMTPPort) mut => VT.put_SMTPPort(ref this, lSMTPPort);
			public HRESULT get_SMTPSender(BSTR* pbstrSMTPSender) mut => VT.get_SMTPSender(ref this, pbstrSMTPSender);
			public HRESULT put_SMTPSender(BSTR bstrSMTPSender) mut => VT.put_SMTPSender(ref this, bstrSMTPSender);
			public HRESULT get_SMTPUser(BSTR* pbstrSMTPUser) mut => VT.get_SMTPUser(ref this, pbstrSMTPUser);
			public HRESULT put_SMTPUser(BSTR bstrSMTPUser) mut => VT.put_SMTPUser(ref this, bstrSMTPUser);
			public HRESULT get_AllowedReceipts(out FAX_RECEIPT_TYPE_ENUM pAllowedReceipts) mut => VT.get_AllowedReceipts(ref this, out pAllowedReceipts);
			public HRESULT put_AllowedReceipts(FAX_RECEIPT_TYPE_ENUM AllowedReceipts) mut => VT.put_AllowedReceipts(ref this, AllowedReceipts);
			public HRESULT get_SMTPPassword(BSTR* pbstrSMTPPassword) mut => VT.get_SMTPPassword(ref this, pbstrSMTPPassword);
			public HRESULT put_SMTPPassword(BSTR bstrSMTPPassword) mut => VT.put_SMTPPassword(ref this, bstrSMTPPassword);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT get_UseForInboundRouting(out int16 pbUseForInboundRouting) mut => VT.get_UseForInboundRouting(ref this, out pbUseForInboundRouting);
			public HRESULT put_UseForInboundRouting(int16 bUseForInboundRouting) mut => VT.put_UseForInboundRouting(ref this, bUseForInboundRouting);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, out FAX_SMTP_AUTHENTICATION_TYPE_ENUM pType) get_AuthenticationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, FAX_SMTP_AUTHENTICATION_TYPE_ENUM Type) put_AuthenticationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR* pbstrSMTPServer) get_SMTPServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR bstrSMTPServer) put_SMTPServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, out int32 plSMTPPort) get_SMTPPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, int32 lSMTPPort) put_SMTPPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR* pbstrSMTPSender) get_SMTPSender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR bstrSMTPSender) put_SMTPSender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR* pbstrSMTPUser) get_SMTPUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR bstrSMTPUser) put_SMTPUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, out FAX_RECEIPT_TYPE_ENUM pAllowedReceipts) get_AllowedReceipts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, FAX_RECEIPT_TYPE_ENUM AllowedReceipts) put_AllowedReceipts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR* pbstrSMTPPassword) get_SMTPPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, BSTR bstrSMTPPassword) put_SMTPPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, out int16 pbUseForInboundRouting) get_UseForInboundRouting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxReceiptOptions self, int16 bUseForInboundRouting) put_UseForInboundRouting;
			}
		}
		[CRepr]
		public struct IFaxSecurity : IDispatch
		{
			public const new Guid IID = .(0x77b508c1, 0x09c0, 0x47a2, 0x91, 0xeb, 0xfc, 0xe7, 0xfd, 0xf2, 0x69, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Descriptor(out VARIANT pvDescriptor) mut => VT.get_Descriptor(ref this, out pvDescriptor);
			public HRESULT put_Descriptor(VARIANT vDescriptor) mut => VT.put_Descriptor(ref this, vDescriptor);
			public HRESULT get_GrantedRights(out FAX_ACCESS_RIGHTS_ENUM pGrantedRights) mut => VT.get_GrantedRights(ref this, out pGrantedRights);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT get_InformationType(out int32 plInformationType) mut => VT.get_InformationType(ref this, out plInformationType);
			public HRESULT put_InformationType(int32 lInformationType) mut => VT.put_InformationType(ref this, lInformationType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self, out VARIANT pvDescriptor) get_Descriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self, VARIANT vDescriptor) put_Descriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self, out FAX_ACCESS_RIGHTS_ENUM pGrantedRights) get_GrantedRights;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self, out int32 plInformationType) get_InformationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity self, int32 lInformationType) put_InformationType;
			}
		}
		[CRepr]
		public struct IFaxDocument : IDispatch
		{
			public const new Guid IID = .(0xb207a246, 0x09e3, 0x4a4e, 0xa7, 0xdc, 0xfe, 0xa3, 0x1d, 0x29, 0x45, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Body(BSTR* pbstrBody) mut => VT.get_Body(ref this, pbstrBody);
			public HRESULT put_Body(BSTR bstrBody) mut => VT.put_Body(ref this, bstrBody);
			public HRESULT get_Sender(IFaxSender** ppFaxSender) mut => VT.get_Sender(ref this, ppFaxSender);
			public HRESULT get_Recipients(IFaxRecipients** ppFaxRecipients) mut => VT.get_Recipients(ref this, ppFaxRecipients);
			public HRESULT get_CoverPage(BSTR* pbstrCoverPage) mut => VT.get_CoverPage(ref this, pbstrCoverPage);
			public HRESULT put_CoverPage(BSTR bstrCoverPage) mut => VT.put_CoverPage(ref this, bstrCoverPage);
			public HRESULT get_Subject(BSTR* pbstrSubject) mut => VT.get_Subject(ref this, pbstrSubject);
			public HRESULT put_Subject(BSTR bstrSubject) mut => VT.put_Subject(ref this, bstrSubject);
			public HRESULT get_Note(BSTR* pbstrNote) mut => VT.get_Note(ref this, pbstrNote);
			public HRESULT put_Note(BSTR bstrNote) mut => VT.put_Note(ref this, bstrNote);
			public HRESULT get_ScheduleTime(out double pdateScheduleTime) mut => VT.get_ScheduleTime(ref this, out pdateScheduleTime);
			public HRESULT put_ScheduleTime(double dateScheduleTime) mut => VT.put_ScheduleTime(ref this, dateScheduleTime);
			public HRESULT get_ReceiptAddress(BSTR* pbstrReceiptAddress) mut => VT.get_ReceiptAddress(ref this, pbstrReceiptAddress);
			public HRESULT put_ReceiptAddress(BSTR bstrReceiptAddress) mut => VT.put_ReceiptAddress(ref this, bstrReceiptAddress);
			public HRESULT get_DocumentName(BSTR* pbstrDocumentName) mut => VT.get_DocumentName(ref this, pbstrDocumentName);
			public HRESULT put_DocumentName(BSTR bstrDocumentName) mut => VT.put_DocumentName(ref this, bstrDocumentName);
			public HRESULT get_CallHandle(out int32 plCallHandle) mut => VT.get_CallHandle(ref this, out plCallHandle);
			public HRESULT put_CallHandle(int32 lCallHandle) mut => VT.put_CallHandle(ref this, lCallHandle);
			public HRESULT get_CoverPageType(out FAX_COVERPAGE_TYPE_ENUM pCoverPageType) mut => VT.get_CoverPageType(ref this, out pCoverPageType);
			public HRESULT put_CoverPageType(FAX_COVERPAGE_TYPE_ENUM CoverPageType) mut => VT.put_CoverPageType(ref this, CoverPageType);
			public HRESULT get_ScheduleType(out FAX_SCHEDULE_TYPE_ENUM pScheduleType) mut => VT.get_ScheduleType(ref this, out pScheduleType);
			public HRESULT put_ScheduleType(FAX_SCHEDULE_TYPE_ENUM ScheduleType) mut => VT.put_ScheduleType(ref this, ScheduleType);
			public HRESULT get_ReceiptType(out FAX_RECEIPT_TYPE_ENUM pReceiptType) mut => VT.get_ReceiptType(ref this, out pReceiptType);
			public HRESULT put_ReceiptType(FAX_RECEIPT_TYPE_ENUM ReceiptType) mut => VT.put_ReceiptType(ref this, ReceiptType);
			public HRESULT get_GroupBroadcastReceipts(out int16 pbUseGrouping) mut => VT.get_GroupBroadcastReceipts(ref this, out pbUseGrouping);
			public HRESULT put_GroupBroadcastReceipts(int16 bUseGrouping) mut => VT.put_GroupBroadcastReceipts(ref this, bUseGrouping);
			public HRESULT get_Priority(out FAX_PRIORITY_TYPE_ENUM pPriority) mut => VT.get_Priority(ref this, out pPriority);
			public HRESULT put_Priority(FAX_PRIORITY_TYPE_ENUM Priority) mut => VT.put_Priority(ref this, Priority);
			public HRESULT get_TapiConnection(IDispatch** ppTapiConnection) mut => VT.get_TapiConnection(ref this, ppTapiConnection);
			public HRESULT putref_TapiConnection(IDispatch* pTapiConnection) mut => VT.putref_TapiConnection(ref this, pTapiConnection);
			public HRESULT Submit(BSTR bstrFaxServerName, out VARIANT pvFaxOutgoingJobIDs) mut => VT.Submit(ref this, bstrFaxServerName, out pvFaxOutgoingJobIDs);
			public HRESULT ConnectedSubmit(IFaxServer* pFaxServer, out VARIANT pvFaxOutgoingJobIDs) mut => VT.ConnectedSubmit(ref this, pFaxServer, out pvFaxOutgoingJobIDs);
			public HRESULT get_AttachFaxToReceipt(out int16 pbAttachFax) mut => VT.get_AttachFaxToReceipt(ref this, out pbAttachFax);
			public HRESULT put_AttachFaxToReceipt(int16 bAttachFax) mut => VT.put_AttachFaxToReceipt(ref this, bAttachFax);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrBody) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, IFaxSender** ppFaxSender) get_Sender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, IFaxRecipients** ppFaxRecipients) get_Recipients;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrCoverPage) get_CoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrCoverPage) put_CoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrSubject) get_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrSubject) put_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrNote) get_Note;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrNote) put_Note;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out double pdateScheduleTime) get_ScheduleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, double dateScheduleTime) put_ScheduleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrReceiptAddress) put_ReceiptAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR* pbstrDocumentName) get_DocumentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrDocumentName) put_DocumentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out int32 plCallHandle) get_CallHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, int32 lCallHandle) put_CallHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out FAX_COVERPAGE_TYPE_ENUM pCoverPageType) get_CoverPageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, FAX_COVERPAGE_TYPE_ENUM CoverPageType) put_CoverPageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out FAX_SCHEDULE_TYPE_ENUM pScheduleType) get_ScheduleType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, FAX_SCHEDULE_TYPE_ENUM ScheduleType) put_ScheduleType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out FAX_RECEIPT_TYPE_ENUM pReceiptType) get_ReceiptType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, FAX_RECEIPT_TYPE_ENUM ReceiptType) put_ReceiptType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out int16 pbUseGrouping) get_GroupBroadcastReceipts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, int16 bUseGrouping) put_GroupBroadcastReceipts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out FAX_PRIORITY_TYPE_ENUM pPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, FAX_PRIORITY_TYPE_ENUM Priority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, IDispatch** ppTapiConnection) get_TapiConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, IDispatch* pTapiConnection) putref_TapiConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, BSTR bstrFaxServerName, out VARIANT pvFaxOutgoingJobIDs) Submit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, IFaxServer* pFaxServer, out VARIANT pvFaxOutgoingJobIDs) ConnectedSubmit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, out int16 pbAttachFax) get_AttachFaxToReceipt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument self, int16 bAttachFax) put_AttachFaxToReceipt;
			}
		}
		[CRepr]
		public struct IFaxSender : IDispatch
		{
			public const new Guid IID = .(0x0d879d7d, 0xf57a, 0x4cc6, 0xa6, 0xf9, 0x3e, 0xe5, 0xd5, 0x27, 0xb4, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BillingCode(BSTR* pbstrBillingCode) mut => VT.get_BillingCode(ref this, pbstrBillingCode);
			public HRESULT put_BillingCode(BSTR bstrBillingCode) mut => VT.put_BillingCode(ref this, bstrBillingCode);
			public HRESULT get_City(BSTR* pbstrCity) mut => VT.get_City(ref this, pbstrCity);
			public HRESULT put_City(BSTR bstrCity) mut => VT.put_City(ref this, bstrCity);
			public HRESULT get_Company(BSTR* pbstrCompany) mut => VT.get_Company(ref this, pbstrCompany);
			public HRESULT put_Company(BSTR bstrCompany) mut => VT.put_Company(ref this, bstrCompany);
			public HRESULT get_Country(BSTR* pbstrCountry) mut => VT.get_Country(ref this, pbstrCountry);
			public HRESULT put_Country(BSTR bstrCountry) mut => VT.put_Country(ref this, bstrCountry);
			public HRESULT get_Department(BSTR* pbstrDepartment) mut => VT.get_Department(ref this, pbstrDepartment);
			public HRESULT put_Department(BSTR bstrDepartment) mut => VT.put_Department(ref this, bstrDepartment);
			public HRESULT get_Email(BSTR* pbstrEmail) mut => VT.get_Email(ref this, pbstrEmail);
			public HRESULT put_Email(BSTR bstrEmail) mut => VT.put_Email(ref this, bstrEmail);
			public HRESULT get_FaxNumber(BSTR* pbstrFaxNumber) mut => VT.get_FaxNumber(ref this, pbstrFaxNumber);
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut => VT.put_FaxNumber(ref this, bstrFaxNumber);
			public HRESULT get_HomePhone(BSTR* pbstrHomePhone) mut => VT.get_HomePhone(ref this, pbstrHomePhone);
			public HRESULT put_HomePhone(BSTR bstrHomePhone) mut => VT.put_HomePhone(ref this, bstrHomePhone);
			public HRESULT get_Name(BSTR* pbstrName) mut => VT.get_Name(ref this, pbstrName);
			public HRESULT put_Name(BSTR bstrName) mut => VT.put_Name(ref this, bstrName);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT put_TSID(BSTR bstrTSID) mut => VT.put_TSID(ref this, bstrTSID);
			public HRESULT get_OfficePhone(BSTR* pbstrOfficePhone) mut => VT.get_OfficePhone(ref this, pbstrOfficePhone);
			public HRESULT put_OfficePhone(BSTR bstrOfficePhone) mut => VT.put_OfficePhone(ref this, bstrOfficePhone);
			public HRESULT get_OfficeLocation(BSTR* pbstrOfficeLocation) mut => VT.get_OfficeLocation(ref this, pbstrOfficeLocation);
			public HRESULT put_OfficeLocation(BSTR bstrOfficeLocation) mut => VT.put_OfficeLocation(ref this, bstrOfficeLocation);
			public HRESULT get_State(BSTR* pbstrState) mut => VT.get_State(ref this, pbstrState);
			public HRESULT put_State(BSTR bstrState) mut => VT.put_State(ref this, bstrState);
			public HRESULT get_StreetAddress(BSTR* pbstrStreetAddress) mut => VT.get_StreetAddress(ref this, pbstrStreetAddress);
			public HRESULT put_StreetAddress(BSTR bstrStreetAddress) mut => VT.put_StreetAddress(ref this, bstrStreetAddress);
			public HRESULT get_Title(BSTR* pbstrTitle) mut => VT.get_Title(ref this, pbstrTitle);
			public HRESULT put_Title(BSTR bstrTitle) mut => VT.put_Title(ref this, bstrTitle);
			public HRESULT get_ZipCode(BSTR* pbstrZipCode) mut => VT.get_ZipCode(ref this, pbstrZipCode);
			public HRESULT put_ZipCode(BSTR bstrZipCode) mut => VT.put_ZipCode(ref this, bstrZipCode);
			public HRESULT LoadDefaultSender() mut => VT.LoadDefaultSender(ref this);
			public HRESULT SaveDefaultSender() mut => VT.SaveDefaultSender(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrBillingCode) get_BillingCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrBillingCode) put_BillingCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrCity) get_City;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrCity) put_City;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrCompany) get_Company;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrCompany) put_Company;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrCountry) get_Country;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrCountry) put_Country;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrDepartment) get_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrDepartment) put_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrEmail) get_Email;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrEmail) put_Email;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrFaxNumber) get_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrHomePhone) get_HomePhone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrHomePhone) put_HomePhone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrName) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrTSID) put_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrOfficePhone) get_OfficePhone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrOfficePhone) put_OfficePhone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrOfficeLocation) get_OfficeLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrOfficeLocation) put_OfficeLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrState) put_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrStreetAddress) get_StreetAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrStreetAddress) put_StreetAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrTitle) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrTitle) put_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR* pbstrZipCode) get_ZipCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self, BSTR bstrZipCode) put_ZipCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self) LoadDefaultSender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSender self) SaveDefaultSender;
			}
		}
		[CRepr]
		public struct IFaxRecipient : IDispatch
		{
			public const new Guid IID = .(0x9a3da3a0, 0x538d, 0x42b6, 0x94, 0x44, 0xaa, 0xa5, 0x7d, 0x0c, 0xe2, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FaxNumber(BSTR* pbstrFaxNumber) mut => VT.get_FaxNumber(ref this, pbstrFaxNumber);
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut => VT.put_FaxNumber(ref this, bstrFaxNumber);
			public HRESULT get_Name(BSTR* pbstrName) mut => VT.get_Name(ref this, pbstrName);
			public HRESULT put_Name(BSTR bstrName) mut => VT.put_Name(ref this, bstrName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipient self, BSTR* pbstrFaxNumber) get_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipient self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipient self, BSTR* pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipient self, BSTR bstrName) put_Name;
			}
		}
		[CRepr]
		public struct IFaxRecipients : IDispatch
		{
			public const new Guid IID = .(0xb9c9de5a, 0x894e, 0x4492, 0x9f, 0xa3, 0x08, 0xc6, 0x27, 0xc1, 0x1d, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(int32 lIndex, IFaxRecipient** ppFaxRecipient) mut => VT.get_Item(ref this, lIndex, ppFaxRecipient);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT Add(BSTR bstrFaxNumber, BSTR bstrRecipientName, IFaxRecipient** ppFaxRecipient) mut => VT.Add(ref this, bstrFaxNumber, bstrRecipientName, ppFaxRecipient);
			public HRESULT Remove(int32 lIndex) mut => VT.Remove(ref this, lIndex);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipients self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipients self, int32 lIndex, IFaxRecipient** ppFaxRecipient) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipients self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipients self, BSTR bstrFaxNumber, BSTR bstrRecipientName, IFaxRecipient** ppFaxRecipient) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxRecipients self, int32 lIndex) Remove;
			}
		}
		[CRepr]
		public struct IFaxIncomingArchive : IDispatch
		{
			public const new Guid IID = .(0x76062cc7, 0xf714, 0x4fbd, 0xaa, 0x06, 0xed, 0x6e, 0x4a, 0x4b, 0x70, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UseArchive(out int16 pbUseArchive) mut => VT.get_UseArchive(ref this, out pbUseArchive);
			public HRESULT put_UseArchive(int16 bUseArchive) mut => VT.put_UseArchive(ref this, bUseArchive);
			public HRESULT get_ArchiveFolder(BSTR* pbstrArchiveFolder) mut => VT.get_ArchiveFolder(ref this, pbstrArchiveFolder);
			public HRESULT put_ArchiveFolder(BSTR bstrArchiveFolder) mut => VT.put_ArchiveFolder(ref this, bstrArchiveFolder);
			public HRESULT get_SizeQuotaWarning(out int16 pbSizeQuotaWarning) mut => VT.get_SizeQuotaWarning(ref this, out pbSizeQuotaWarning);
			public HRESULT put_SizeQuotaWarning(int16 bSizeQuotaWarning) mut => VT.put_SizeQuotaWarning(ref this, bSizeQuotaWarning);
			public HRESULT get_HighQuotaWaterMark(out int32 plHighQuotaWaterMark) mut => VT.get_HighQuotaWaterMark(ref this, out plHighQuotaWaterMark);
			public HRESULT put_HighQuotaWaterMark(int32 lHighQuotaWaterMark) mut => VT.put_HighQuotaWaterMark(ref this, lHighQuotaWaterMark);
			public HRESULT get_LowQuotaWaterMark(out int32 plLowQuotaWaterMark) mut => VT.get_LowQuotaWaterMark(ref this, out plLowQuotaWaterMark);
			public HRESULT put_LowQuotaWaterMark(int32 lLowQuotaWaterMark) mut => VT.put_LowQuotaWaterMark(ref this, lLowQuotaWaterMark);
			public HRESULT get_AgeLimit(out int32 plAgeLimit) mut => VT.get_AgeLimit(ref this, out plAgeLimit);
			public HRESULT put_AgeLimit(int32 lAgeLimit) mut => VT.put_AgeLimit(ref this, lAgeLimit);
			public HRESULT get_SizeLow(out int32 plSizeLow) mut => VT.get_SizeLow(ref this, out plSizeLow);
			public HRESULT get_SizeHigh(out int32 plSizeHigh) mut => VT.get_SizeHigh(ref this, out plSizeHigh);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetMessages(int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) mut => VT.GetMessages(ref this, lPrefetchSize, pFaxIncomingMessageIterator);
			public HRESULT GetMessage(BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) mut => VT.GetMessage(ref this, bstrMessageId, pFaxIncomingMessage);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int16 pbUseArchive) get_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int16 bUseArchive) put_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, BSTR* pbstrArchiveFolder) get_ArchiveFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, BSTR bstrArchiveFolder) put_ArchiveFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int16 pbSizeQuotaWarning) get_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int32 plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int32 plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int32 plAgeLimit) get_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int32 lAgeLimit) put_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int32 plSizeLow) get_SizeLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, out int32 plSizeHigh) get_SizeHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) GetMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingArchive self, BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxIncomingQueue : IDispatch
		{
			public const new Guid IID = .(0x902e64ef, 0x8fd8, 0x4b75, 0x97, 0x25, 0x60, 0x14, 0xdf, 0x16, 0x15, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Blocked(out int16 pbBlocked) mut => VT.get_Blocked(ref this, out pbBlocked);
			public HRESULT put_Blocked(int16 bBlocked) mut => VT.put_Blocked(ref this, bBlocked);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetJobs(IFaxIncomingJobs** pFaxIncomingJobs) mut => VT.GetJobs(ref this, pFaxIncomingJobs);
			public HRESULT GetJob(BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) mut => VT.GetJob(ref this, bstrJobId, pFaxIncomingJob);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self, out int16 pbBlocked) get_Blocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self, int16 bBlocked) put_Blocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self, IFaxIncomingJobs** pFaxIncomingJobs) GetJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingQueue self, BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxOutgoingArchive : IDispatch
		{
			public const new Guid IID = .(0xc9c28f40, 0x8d80, 0x4e53, 0x81, 0x0f, 0x9a, 0x79, 0x91, 0x9b, 0x49, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UseArchive(out int16 pbUseArchive) mut => VT.get_UseArchive(ref this, out pbUseArchive);
			public HRESULT put_UseArchive(int16 bUseArchive) mut => VT.put_UseArchive(ref this, bUseArchive);
			public HRESULT get_ArchiveFolder(BSTR* pbstrArchiveFolder) mut => VT.get_ArchiveFolder(ref this, pbstrArchiveFolder);
			public HRESULT put_ArchiveFolder(BSTR bstrArchiveFolder) mut => VT.put_ArchiveFolder(ref this, bstrArchiveFolder);
			public HRESULT get_SizeQuotaWarning(out int16 pbSizeQuotaWarning) mut => VT.get_SizeQuotaWarning(ref this, out pbSizeQuotaWarning);
			public HRESULT put_SizeQuotaWarning(int16 bSizeQuotaWarning) mut => VT.put_SizeQuotaWarning(ref this, bSizeQuotaWarning);
			public HRESULT get_HighQuotaWaterMark(out int32 plHighQuotaWaterMark) mut => VT.get_HighQuotaWaterMark(ref this, out plHighQuotaWaterMark);
			public HRESULT put_HighQuotaWaterMark(int32 lHighQuotaWaterMark) mut => VT.put_HighQuotaWaterMark(ref this, lHighQuotaWaterMark);
			public HRESULT get_LowQuotaWaterMark(out int32 plLowQuotaWaterMark) mut => VT.get_LowQuotaWaterMark(ref this, out plLowQuotaWaterMark);
			public HRESULT put_LowQuotaWaterMark(int32 lLowQuotaWaterMark) mut => VT.put_LowQuotaWaterMark(ref this, lLowQuotaWaterMark);
			public HRESULT get_AgeLimit(out int32 plAgeLimit) mut => VT.get_AgeLimit(ref this, out plAgeLimit);
			public HRESULT put_AgeLimit(int32 lAgeLimit) mut => VT.put_AgeLimit(ref this, lAgeLimit);
			public HRESULT get_SizeLow(out int32 plSizeLow) mut => VT.get_SizeLow(ref this, out plSizeLow);
			public HRESULT get_SizeHigh(out int32 plSizeHigh) mut => VT.get_SizeHigh(ref this, out plSizeHigh);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetMessages(int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) mut => VT.GetMessages(ref this, lPrefetchSize, pFaxOutgoingMessageIterator);
			public HRESULT GetMessage(BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) mut => VT.GetMessage(ref this, bstrMessageId, pFaxOutgoingMessage);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int16 pbUseArchive) get_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int16 bUseArchive) put_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, BSTR* pbstrArchiveFolder) get_ArchiveFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, BSTR bstrArchiveFolder) put_ArchiveFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int16 pbSizeQuotaWarning) get_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int32 plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int32 plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int32 plAgeLimit) get_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int32 lAgeLimit) put_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int32 plSizeLow) get_SizeLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, out int32 plSizeHigh) get_SizeHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) GetMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingArchive self, BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxOutgoingQueue : IDispatch
		{
			public const new Guid IID = .(0x80b1df24, 0xd9ac, 0x4333, 0xb3, 0x73, 0x48, 0x7c, 0xed, 0xc8, 0x0c, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Blocked(out int16 pbBlocked) mut => VT.get_Blocked(ref this, out pbBlocked);
			public HRESULT put_Blocked(int16 bBlocked) mut => VT.put_Blocked(ref this, bBlocked);
			public HRESULT get_Paused(out int16 pbPaused) mut => VT.get_Paused(ref this, out pbPaused);
			public HRESULT put_Paused(int16 bPaused) mut => VT.put_Paused(ref this, bPaused);
			public HRESULT get_AllowPersonalCoverPages(out int16 pbAllowPersonalCoverPages) mut => VT.get_AllowPersonalCoverPages(ref this, out pbAllowPersonalCoverPages);
			public HRESULT put_AllowPersonalCoverPages(int16 bAllowPersonalCoverPages) mut => VT.put_AllowPersonalCoverPages(ref this, bAllowPersonalCoverPages);
			public HRESULT get_UseDeviceTSID(out int16 pbUseDeviceTSID) mut => VT.get_UseDeviceTSID(ref this, out pbUseDeviceTSID);
			public HRESULT put_UseDeviceTSID(int16 bUseDeviceTSID) mut => VT.put_UseDeviceTSID(ref this, bUseDeviceTSID);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT put_Retries(int32 lRetries) mut => VT.put_Retries(ref this, lRetries);
			public HRESULT get_RetryDelay(out int32 plRetryDelay) mut => VT.get_RetryDelay(ref this, out plRetryDelay);
			public HRESULT put_RetryDelay(int32 lRetryDelay) mut => VT.put_RetryDelay(ref this, lRetryDelay);
			public HRESULT get_DiscountRateStart(out double pdateDiscountRateStart) mut => VT.get_DiscountRateStart(ref this, out pdateDiscountRateStart);
			public HRESULT put_DiscountRateStart(double dateDiscountRateStart) mut => VT.put_DiscountRateStart(ref this, dateDiscountRateStart);
			public HRESULT get_DiscountRateEnd(out double pdateDiscountRateEnd) mut => VT.get_DiscountRateEnd(ref this, out pdateDiscountRateEnd);
			public HRESULT put_DiscountRateEnd(double dateDiscountRateEnd) mut => VT.put_DiscountRateEnd(ref this, dateDiscountRateEnd);
			public HRESULT get_AgeLimit(out int32 plAgeLimit) mut => VT.get_AgeLimit(ref this, out plAgeLimit);
			public HRESULT put_AgeLimit(int32 lAgeLimit) mut => VT.put_AgeLimit(ref this, lAgeLimit);
			public HRESULT get_Branding(out int16 pbBranding) mut => VT.get_Branding(ref this, out pbBranding);
			public HRESULT put_Branding(int16 bBranding) mut => VT.put_Branding(ref this, bBranding);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetJobs(IFaxOutgoingJobs** pFaxOutgoingJobs) mut => VT.GetJobs(ref this, pFaxOutgoingJobs);
			public HRESULT GetJob(BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) mut => VT.GetJob(ref this, bstrJobId, pFaxOutgoingJob);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int16 pbBlocked) get_Blocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int16 bBlocked) put_Blocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int16 pbPaused) get_Paused;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int16 bPaused) put_Paused;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int16 pbAllowPersonalCoverPages) get_AllowPersonalCoverPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int16 bAllowPersonalCoverPages) put_AllowPersonalCoverPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int16 pbUseDeviceTSID) get_UseDeviceTSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int16 bUseDeviceTSID) put_UseDeviceTSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int32 lRetries) put_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int32 plRetryDelay) get_RetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int32 lRetryDelay) put_RetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out double pdateDiscountRateStart) get_DiscountRateStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, double dateDiscountRateStart) put_DiscountRateStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out double pdateDiscountRateEnd) get_DiscountRateEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, double dateDiscountRateEnd) put_DiscountRateEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int32 plAgeLimit) get_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int32 lAgeLimit) put_AgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, out int16 pbBranding) get_Branding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, int16 bBranding) put_Branding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, IFaxOutgoingJobs** pFaxOutgoingJobs) GetJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingQueue self, BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessageIterator : IDispatch
		{
			public const new Guid IID = .(0xfd73ecc4, 0x6f06, 0x4f52, 0x82, 0xa8, 0xf7, 0xba, 0x06, 0xae, 0x31, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Message(IFaxIncomingMessage** pFaxIncomingMessage) mut => VT.get_Message(ref this, pFaxIncomingMessage);
			public HRESULT get_PrefetchSize(out int32 plPrefetchSize) mut => VT.get_PrefetchSize(ref this, out plPrefetchSize);
			public HRESULT put_PrefetchSize(int32 lPrefetchSize) mut => VT.put_PrefetchSize(ref this, lPrefetchSize);
			public HRESULT get_AtEOF(out int16 pbEOF) mut => VT.get_AtEOF(ref this, out pbEOF);
			public HRESULT MoveFirst() mut => VT.MoveFirst(ref this);
			public HRESULT MoveNext() mut => VT.MoveNext(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self, IFaxIncomingMessage** pFaxIncomingMessage) get_Message;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self, out int32 plPrefetchSize) get_PrefetchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self, int32 lPrefetchSize) put_PrefetchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self, out int16 pbEOF) get_AtEOF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self) MoveFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessageIterator self) MoveNext;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessage : IDispatch
		{
			public const new Guid IID = .(0x7cab88fa, 0x2ef9, 0x4851, 0xb2, 0xf3, 0x1d, 0x14, 0x8f, 0xed, 0x84, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* pbstrId) mut => VT.get_Id(ref this, pbstrId);
			public HRESULT get_Pages(out int32 plPages) mut => VT.get_Pages(ref this, out plPages);
			public HRESULT get_Size(out int32 plSize) mut => VT.get_Size(ref this, out plSize);
			public HRESULT get_DeviceName(BSTR* pbstrDeviceName) mut => VT.get_DeviceName(ref this, pbstrDeviceName);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT get_TransmissionStart(out double pdateTransmissionStart) mut => VT.get_TransmissionStart(ref this, out pdateTransmissionStart);
			public HRESULT get_TransmissionEnd(out double pdateTransmissionEnd) mut => VT.get_TransmissionEnd(ref this, out pdateTransmissionEnd);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT get_CallerId(BSTR* pbstrCallerId) mut => VT.get_CallerId(ref this, pbstrCallerId);
			public HRESULT get_RoutingInformation(BSTR* pbstrRoutingInformation) mut => VT.get_RoutingInformation(ref this, pbstrRoutingInformation);
			public HRESULT CopyTiff(BSTR bstrTiffPath) mut => VT.CopyTiff(ref this, bstrTiffPath);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, out int32 plPages) get_Pages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, out int32 plSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrDeviceName) get_DeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, out double pdateTransmissionStart) get_TransmissionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, out double pdateTransmissionEnd) get_TransmissionEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrCallerId) get_CallerId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self, BSTR bstrTiffPath) CopyTiff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage self) Delete;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJobs : IDispatch
		{
			public const new Guid IID = .(0x2c56d8e6, 0x8c2f, 0x4573, 0x94, 0x4c, 0xe5, 0x05, 0xf8, 0xf5, 0xae, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxOutgoingJob** pFaxOutgoingJob) mut => VT.get_Item(ref this, vIndex, pFaxOutgoingJob);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJobs self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJobs self, VARIANT vIndex, IFaxOutgoingJob** pFaxOutgoingJob) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJobs self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJob : IDispatch
		{
			public const new Guid IID = .(0x6356daad, 0x6614, 0x4583, 0xbf, 0x7a, 0x3a, 0xd6, 0x7b, 0xbf, 0xc7, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Subject(BSTR* pbstrSubject) mut => VT.get_Subject(ref this, pbstrSubject);
			public HRESULT get_DocumentName(BSTR* pbstrDocumentName) mut => VT.get_DocumentName(ref this, pbstrDocumentName);
			public HRESULT get_Pages(out int32 plPages) mut => VT.get_Pages(ref this, out plPages);
			public HRESULT get_Size(out int32 plSize) mut => VT.get_Size(ref this, out plSize);
			public HRESULT get_SubmissionId(BSTR* pbstrSubmissionId) mut => VT.get_SubmissionId(ref this, pbstrSubmissionId);
			public HRESULT get_Id(BSTR* pbstrId) mut => VT.get_Id(ref this, pbstrId);
			public HRESULT get_OriginalScheduledTime(out double pdateOriginalScheduledTime) mut => VT.get_OriginalScheduledTime(ref this, out pdateOriginalScheduledTime);
			public HRESULT get_SubmissionTime(out double pdateSubmissionTime) mut => VT.get_SubmissionTime(ref this, out pdateSubmissionTime);
			public HRESULT get_ReceiptType(out FAX_RECEIPT_TYPE_ENUM pReceiptType) mut => VT.get_ReceiptType(ref this, out pReceiptType);
			public HRESULT get_Priority(out FAX_PRIORITY_TYPE_ENUM pPriority) mut => VT.get_Priority(ref this, out pPriority);
			public HRESULT get_Sender(IFaxSender** ppFaxSender) mut => VT.get_Sender(ref this, ppFaxSender);
			public HRESULT get_Recipient(IFaxRecipient** ppFaxRecipient) mut => VT.get_Recipient(ref this, ppFaxRecipient);
			public HRESULT get_CurrentPage(out int32 plCurrentPage) mut => VT.get_CurrentPage(ref this, out plCurrentPage);
			public HRESULT get_DeviceId(out int32 plDeviceId) mut => VT.get_DeviceId(ref this, out plDeviceId);
			public HRESULT get_Status(out FAX_JOB_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_ExtendedStatusCode(out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) mut => VT.get_ExtendedStatusCode(ref this, out pExtendedStatusCode);
			public HRESULT get_ExtendedStatus(BSTR* pbstrExtendedStatus) mut => VT.get_ExtendedStatus(ref this, pbstrExtendedStatus);
			public HRESULT get_AvailableOperations(out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) mut => VT.get_AvailableOperations(ref this, out pAvailableOperations);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT get_ScheduledTime(out double pdateScheduledTime) mut => VT.get_ScheduledTime(ref this, out pdateScheduledTime);
			public HRESULT get_TransmissionStart(out double pdateTransmissionStart) mut => VT.get_TransmissionStart(ref this, out pdateTransmissionStart);
			public HRESULT get_TransmissionEnd(out double pdateTransmissionEnd) mut => VT.get_TransmissionEnd(ref this, out pdateTransmissionEnd);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT get_GroupBroadcastReceipts(out int16 pbGroupBroadcastReceipts) mut => VT.get_GroupBroadcastReceipts(ref this, out pbGroupBroadcastReceipts);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT Restart() mut => VT.Restart(ref this);
			public HRESULT CopyTiff(BSTR bstrTiffPath) mut => VT.CopyTiff(ref this, bstrTiffPath);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrSubject) get_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrDocumentName) get_DocumentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int32 plPages) get_Pages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int32 plSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out double pdateOriginalScheduledTime) get_OriginalScheduledTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out double pdateSubmissionTime) get_SubmissionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out FAX_RECEIPT_TYPE_ENUM pReceiptType) get_ReceiptType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out FAX_PRIORITY_TYPE_ENUM pPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, IFaxSender** ppFaxSender) get_Sender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, IFaxRecipient** ppFaxRecipient) get_Recipient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int32 plCurrentPage) get_CurrentPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int32 plDeviceId) get_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out FAX_JOB_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) get_ExtendedStatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) get_AvailableOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out double pdateScheduledTime) get_ScheduledTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out double pdateTransmissionStart) get_TransmissionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out double pdateTransmissionEnd) get_TransmissionEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, out int16 pbGroupBroadcastReceipts) get_GroupBroadcastReceipts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self) Restart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self, BSTR bstrTiffPath) CopyTiff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob self) Cancel;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessageIterator : IDispatch
		{
			public const new Guid IID = .(0xf5ec5d4f, 0xb840, 0x432f, 0x99, 0x80, 0x11, 0x2f, 0xe4, 0x2a, 0x9b, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Message(IFaxOutgoingMessage** pFaxOutgoingMessage) mut => VT.get_Message(ref this, pFaxOutgoingMessage);
			public HRESULT get_AtEOF(out int16 pbEOF) mut => VT.get_AtEOF(ref this, out pbEOF);
			public HRESULT get_PrefetchSize(out int32 plPrefetchSize) mut => VT.get_PrefetchSize(ref this, out plPrefetchSize);
			public HRESULT put_PrefetchSize(int32 lPrefetchSize) mut => VT.put_PrefetchSize(ref this, lPrefetchSize);
			public HRESULT MoveFirst() mut => VT.MoveFirst(ref this);
			public HRESULT MoveNext() mut => VT.MoveNext(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self, IFaxOutgoingMessage** pFaxOutgoingMessage) get_Message;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self, out int16 pbEOF) get_AtEOF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self, out int32 plPrefetchSize) get_PrefetchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self, int32 lPrefetchSize) put_PrefetchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self) MoveFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessageIterator self) MoveNext;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessage : IDispatch
		{
			public const new Guid IID = .(0xf0ea35de, 0xcaa5, 0x4a7c, 0x82, 0xc7, 0x2b, 0x60, 0xba, 0x5f, 0x2b, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubmissionId(BSTR* pbstrSubmissionId) mut => VT.get_SubmissionId(ref this, pbstrSubmissionId);
			public HRESULT get_Id(BSTR* pbstrId) mut => VT.get_Id(ref this, pbstrId);
			public HRESULT get_Subject(BSTR* pbstrSubject) mut => VT.get_Subject(ref this, pbstrSubject);
			public HRESULT get_DocumentName(BSTR* pbstrDocumentName) mut => VT.get_DocumentName(ref this, pbstrDocumentName);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT get_Pages(out int32 plPages) mut => VT.get_Pages(ref this, out plPages);
			public HRESULT get_Size(out int32 plSize) mut => VT.get_Size(ref this, out plSize);
			public HRESULT get_OriginalScheduledTime(out double pdateOriginalScheduledTime) mut => VT.get_OriginalScheduledTime(ref this, out pdateOriginalScheduledTime);
			public HRESULT get_SubmissionTime(out double pdateSubmissionTime) mut => VT.get_SubmissionTime(ref this, out pdateSubmissionTime);
			public HRESULT get_Priority(out FAX_PRIORITY_TYPE_ENUM pPriority) mut => VT.get_Priority(ref this, out pPriority);
			public HRESULT get_Sender(IFaxSender** ppFaxSender) mut => VT.get_Sender(ref this, ppFaxSender);
			public HRESULT get_Recipient(IFaxRecipient** ppFaxRecipient) mut => VT.get_Recipient(ref this, ppFaxRecipient);
			public HRESULT get_DeviceName(BSTR* pbstrDeviceName) mut => VT.get_DeviceName(ref this, pbstrDeviceName);
			public HRESULT get_TransmissionStart(out double pdateTransmissionStart) mut => VT.get_TransmissionStart(ref this, out pdateTransmissionStart);
			public HRESULT get_TransmissionEnd(out double pdateTransmissionEnd) mut => VT.get_TransmissionEnd(ref this, out pdateTransmissionEnd);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT CopyTiff(BSTR bstrTiffPath) mut => VT.CopyTiff(ref this, bstrTiffPath);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrSubject) get_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrDocumentName) get_DocumentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out int32 plPages) get_Pages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out int32 plSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out double pdateOriginalScheduledTime) get_OriginalScheduledTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out double pdateSubmissionTime) get_SubmissionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out FAX_PRIORITY_TYPE_ENUM pPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, IFaxSender** ppFaxSender) get_Sender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, IFaxRecipient** ppFaxRecipient) get_Recipient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrDeviceName) get_DeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out double pdateTransmissionStart) get_TransmissionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, out double pdateTransmissionEnd) get_TransmissionEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self, BSTR bstrTiffPath) CopyTiff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage self) Delete;
			}
		}
		[CRepr]
		public struct IFaxIncomingJobs : IDispatch
		{
			public const new Guid IID = .(0x011f04e9, 0x4fd6, 0x4c23, 0x95, 0x13, 0xb6, 0xb6, 0x6b, 0xb2, 0x6b, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxIncomingJob** pFaxIncomingJob) mut => VT.get_Item(ref this, vIndex, pFaxIncomingJob);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJobs self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJobs self, VARIANT vIndex, IFaxIncomingJob** pFaxIncomingJob) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJobs self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxIncomingJob : IDispatch
		{
			public const new Guid IID = .(0x207529e6, 0x654a, 0x4916, 0x9f, 0x88, 0x4d, 0x23, 0x2e, 0xe8, 0xa1, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Size(out int32 plSize) mut => VT.get_Size(ref this, out plSize);
			public HRESULT get_Id(BSTR* pbstrId) mut => VT.get_Id(ref this, pbstrId);
			public HRESULT get_CurrentPage(out int32 plCurrentPage) mut => VT.get_CurrentPage(ref this, out plCurrentPage);
			public HRESULT get_DeviceId(out int32 plDeviceId) mut => VT.get_DeviceId(ref this, out plDeviceId);
			public HRESULT get_Status(out FAX_JOB_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_ExtendedStatusCode(out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) mut => VT.get_ExtendedStatusCode(ref this, out pExtendedStatusCode);
			public HRESULT get_ExtendedStatus(BSTR* pbstrExtendedStatus) mut => VT.get_ExtendedStatus(ref this, pbstrExtendedStatus);
			public HRESULT get_AvailableOperations(out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) mut => VT.get_AvailableOperations(ref this, out pAvailableOperations);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT get_TransmissionStart(out double pdateTransmissionStart) mut => VT.get_TransmissionStart(ref this, out pdateTransmissionStart);
			public HRESULT get_TransmissionEnd(out double pdateTransmissionEnd) mut => VT.get_TransmissionEnd(ref this, out pdateTransmissionEnd);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT get_CallerId(BSTR* pbstrCallerId) mut => VT.get_CallerId(ref this, pbstrCallerId);
			public HRESULT get_RoutingInformation(BSTR* pbstrRoutingInformation) mut => VT.get_RoutingInformation(ref this, pbstrRoutingInformation);
			public HRESULT get_JobType(out FAX_JOB_TYPE_ENUM pJobType) mut => VT.get_JobType(ref this, out pJobType);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT CopyTiff(BSTR bstrTiffPath) mut => VT.CopyTiff(ref this, bstrTiffPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out int32 plSize) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out int32 plCurrentPage) get_CurrentPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out int32 plDeviceId) get_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out FAX_JOB_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out FAX_JOB_EXTENDED_STATUS_ENUM pExtendedStatusCode) get_ExtendedStatusCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out FAX_JOB_OPERATIONS_ENUM pAvailableOperations) get_AvailableOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out double pdateTransmissionStart) get_TransmissionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out double pdateTransmissionEnd) get_TransmissionEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrCallerId) get_CallerId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, out FAX_JOB_TYPE_ENUM pJobType) get_JobType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingJob self, BSTR bstrTiffPath) CopyTiff;
			}
		}
		[CRepr]
		public struct IFaxDeviceProvider : IDispatch
		{
			public const new Guid IID = .(0x290eac63, 0x83ec, 0x449c, 0x84, 0x17, 0xf1, 0x48, 0xdf, 0x8c, 0x68, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FriendlyName(BSTR* pbstrFriendlyName) mut => VT.get_FriendlyName(ref this, pbstrFriendlyName);
			public HRESULT get_ImageName(BSTR* pbstrImageName) mut => VT.get_ImageName(ref this, pbstrImageName);
			public HRESULT get_UniqueName(BSTR* pbstrUniqueName) mut => VT.get_UniqueName(ref this, pbstrUniqueName);
			public HRESULT get_TapiProviderName(BSTR* pbstrTapiProviderName) mut => VT.get_TapiProviderName(ref this, pbstrTapiProviderName);
			public HRESULT get_MajorVersion(out int32 plMajorVersion) mut => VT.get_MajorVersion(ref this, out plMajorVersion);
			public HRESULT get_MinorVersion(out int32 plMinorVersion) mut => VT.get_MinorVersion(ref this, out plMinorVersion);
			public HRESULT get_MajorBuild(out int32 plMajorBuild) mut => VT.get_MajorBuild(ref this, out plMajorBuild);
			public HRESULT get_MinorBuild(out int32 plMinorBuild) mut => VT.get_MinorBuild(ref this, out plMinorBuild);
			public HRESULT get_Debug(out int16 pbDebug) mut => VT.get_Debug(ref this, out pbDebug);
			public HRESULT get_Status(out FAX_PROVIDER_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_InitErrorCode(out int32 plInitErrorCode) mut => VT.get_InitErrorCode(ref this, out plInitErrorCode);
			public HRESULT get_DeviceIds(out VARIANT pvDeviceIds) mut => VT.get_DeviceIds(ref this, out pvDeviceIds);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, BSTR* pbstrFriendlyName) get_FriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, BSTR* pbstrImageName) get_ImageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, BSTR* pbstrUniqueName) get_UniqueName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, BSTR* pbstrTapiProviderName) get_TapiProviderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int32 plMajorVersion) get_MajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int32 plMinorVersion) get_MinorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int32 plMajorBuild) get_MajorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int32 plMinorBuild) get_MinorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int16 pbDebug) get_Debug;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out FAX_PROVIDER_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out int32 plInitErrorCode) get_InitErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceProvider self, out VARIANT pvDeviceIds) get_DeviceIds;
			}
		}
		[CRepr]
		public struct IFaxDevice : IDispatch
		{
			public const new Guid IID = .(0x49306c59, 0xb52e, 0x4867, 0x9d, 0xf4, 0xca, 0x58, 0x41, 0xc9, 0x56, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(out int32 plId) mut => VT.get_Id(ref this, out plId);
			public HRESULT get_DeviceName(BSTR* pbstrDeviceName) mut => VT.get_DeviceName(ref this, pbstrDeviceName);
			public HRESULT get_ProviderUniqueName(BSTR* pbstrProviderUniqueName) mut => VT.get_ProviderUniqueName(ref this, pbstrProviderUniqueName);
			public HRESULT get_PoweredOff(out int16 pbPoweredOff) mut => VT.get_PoweredOff(ref this, out pbPoweredOff);
			public HRESULT get_ReceivingNow(out int16 pbReceivingNow) mut => VT.get_ReceivingNow(ref this, out pbReceivingNow);
			public HRESULT get_SendingNow(out int16 pbSendingNow) mut => VT.get_SendingNow(ref this, out pbSendingNow);
			public HRESULT get_UsedRoutingMethods(out VARIANT pvUsedRoutingMethods) mut => VT.get_UsedRoutingMethods(ref this, out pvUsedRoutingMethods);
			public HRESULT get_Description(BSTR* pbstrDescription) mut => VT.get_Description(ref this, pbstrDescription);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_SendEnabled(out int16 pbSendEnabled) mut => VT.get_SendEnabled(ref this, out pbSendEnabled);
			public HRESULT put_SendEnabled(int16 bSendEnabled) mut => VT.put_SendEnabled(ref this, bSendEnabled);
			public HRESULT get_ReceiveMode(out FAX_DEVICE_RECEIVE_MODE_ENUM pReceiveMode) mut => VT.get_ReceiveMode(ref this, out pReceiveMode);
			public HRESULT put_ReceiveMode(FAX_DEVICE_RECEIVE_MODE_ENUM ReceiveMode) mut => VT.put_ReceiveMode(ref this, ReceiveMode);
			public HRESULT get_RingsBeforeAnswer(out int32 plRingsBeforeAnswer) mut => VT.get_RingsBeforeAnswer(ref this, out plRingsBeforeAnswer);
			public HRESULT put_RingsBeforeAnswer(int32 lRingsBeforeAnswer) mut => VT.put_RingsBeforeAnswer(ref this, lRingsBeforeAnswer);
			public HRESULT get_CSID(BSTR* pbstrCSID) mut => VT.get_CSID(ref this, pbstrCSID);
			public HRESULT put_CSID(BSTR bstrCSID) mut => VT.put_CSID(ref this, bstrCSID);
			public HRESULT get_TSID(BSTR* pbstrTSID) mut => VT.get_TSID(ref this, pbstrTSID);
			public HRESULT put_TSID(BSTR bstrTSID) mut => VT.put_TSID(ref this, bstrTSID);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetExtensionProperty(BSTR bstrGUID, out VARIANT pvProperty) mut => VT.GetExtensionProperty(ref this, bstrGUID, out pvProperty);
			public HRESULT SetExtensionProperty(BSTR bstrGUID, VARIANT vProperty) mut => VT.SetExtensionProperty(ref this, bstrGUID, vProperty);
			public HRESULT UseRoutingMethod(BSTR bstrMethodGUID, int16 bUse) mut => VT.UseRoutingMethod(ref this, bstrMethodGUID, bUse);
			public HRESULT get_RingingNow(out int16 pbRingingNow) mut => VT.get_RingingNow(ref this, out pbRingingNow);
			public HRESULT AnswerCall() mut => VT.AnswerCall(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int32 plId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR* pbstrDeviceName) get_DeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR* pbstrProviderUniqueName) get_ProviderUniqueName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int16 pbPoweredOff) get_PoweredOff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int16 pbReceivingNow) get_ReceivingNow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int16 pbSendingNow) get_SendingNow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out VARIANT pvUsedRoutingMethods) get_UsedRoutingMethods;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR* pbstrDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int16 pbSendEnabled) get_SendEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, int16 bSendEnabled) put_SendEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out FAX_DEVICE_RECEIVE_MODE_ENUM pReceiveMode) get_ReceiveMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, FAX_DEVICE_RECEIVE_MODE_ENUM ReceiveMode) put_ReceiveMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int32 plRingsBeforeAnswer) get_RingsBeforeAnswer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, int32 lRingsBeforeAnswer) put_RingsBeforeAnswer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR* pbstrCSID) get_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrCSID) put_CSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR* pbstrTSID) get_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrTSID) put_TSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrGUID, out VARIANT pvProperty) GetExtensionProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrGUID, VARIANT vProperty) SetExtensionProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, BSTR bstrMethodGUID, int16 bUse) UseRoutingMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self, out int16 pbRingingNow) get_RingingNow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDevice self) AnswerCall;
			}
		}
		[CRepr]
		public struct IFaxActivityLogging : IDispatch
		{
			public const new Guid IID = .(0x1e29078b, 0x5a69, 0x497b, 0x95, 0x92, 0x49, 0xb7, 0xe7, 0xfa, 0xdd, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LogIncoming(out int16 pbLogIncoming) mut => VT.get_LogIncoming(ref this, out pbLogIncoming);
			public HRESULT put_LogIncoming(int16 bLogIncoming) mut => VT.put_LogIncoming(ref this, bLogIncoming);
			public HRESULT get_LogOutgoing(out int16 pbLogOutgoing) mut => VT.get_LogOutgoing(ref this, out pbLogOutgoing);
			public HRESULT put_LogOutgoing(int16 bLogOutgoing) mut => VT.put_LogOutgoing(ref this, bLogOutgoing);
			public HRESULT get_DatabasePath(BSTR* pbstrDatabasePath) mut => VT.get_DatabasePath(ref this, pbstrDatabasePath);
			public HRESULT put_DatabasePath(BSTR bstrDatabasePath) mut => VT.put_DatabasePath(ref this, bstrDatabasePath);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, out int16 pbLogIncoming) get_LogIncoming;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, int16 bLogIncoming) put_LogIncoming;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, out int16 pbLogOutgoing) get_LogOutgoing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, int16 bLogOutgoing) put_LogOutgoing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, BSTR* pbstrDatabasePath) get_DatabasePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self, BSTR bstrDatabasePath) put_DatabasePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxActivityLogging self) Save;
			}
		}
		[CRepr]
		public struct IFaxEventLogging : IDispatch
		{
			public const new Guid IID = .(0x0880d965, 0x20e8, 0x42e4, 0x8e, 0x17, 0x94, 0x4f, 0x19, 0x2c, 0xaa, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InitEventsLevel(out FAX_LOG_LEVEL_ENUM pInitEventLevel) mut => VT.get_InitEventsLevel(ref this, out pInitEventLevel);
			public HRESULT put_InitEventsLevel(FAX_LOG_LEVEL_ENUM InitEventLevel) mut => VT.put_InitEventsLevel(ref this, InitEventLevel);
			public HRESULT get_InboundEventsLevel(out FAX_LOG_LEVEL_ENUM pInboundEventLevel) mut => VT.get_InboundEventsLevel(ref this, out pInboundEventLevel);
			public HRESULT put_InboundEventsLevel(FAX_LOG_LEVEL_ENUM InboundEventLevel) mut => VT.put_InboundEventsLevel(ref this, InboundEventLevel);
			public HRESULT get_OutboundEventsLevel(out FAX_LOG_LEVEL_ENUM pOutboundEventLevel) mut => VT.get_OutboundEventsLevel(ref this, out pOutboundEventLevel);
			public HRESULT put_OutboundEventsLevel(FAX_LOG_LEVEL_ENUM OutboundEventLevel) mut => VT.put_OutboundEventsLevel(ref this, OutboundEventLevel);
			public HRESULT get_GeneralEventsLevel(out FAX_LOG_LEVEL_ENUM pGeneralEventLevel) mut => VT.get_GeneralEventsLevel(ref this, out pGeneralEventLevel);
			public HRESULT put_GeneralEventsLevel(FAX_LOG_LEVEL_ENUM GeneralEventLevel) mut => VT.put_GeneralEventsLevel(ref this, GeneralEventLevel);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, out FAX_LOG_LEVEL_ENUM pInitEventLevel) get_InitEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, FAX_LOG_LEVEL_ENUM InitEventLevel) put_InitEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, out FAX_LOG_LEVEL_ENUM pInboundEventLevel) get_InboundEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, FAX_LOG_LEVEL_ENUM InboundEventLevel) put_InboundEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, out FAX_LOG_LEVEL_ENUM pOutboundEventLevel) get_OutboundEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, FAX_LOG_LEVEL_ENUM OutboundEventLevel) put_OutboundEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, out FAX_LOG_LEVEL_ENUM pGeneralEventLevel) get_GeneralEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self, FAX_LOG_LEVEL_ENUM GeneralEventLevel) put_GeneralEventsLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxEventLogging self) Save;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingGroups : IDispatch
		{
			public const new Guid IID = .(0x235cbef7, 0xc2de, 0x4bfd, 0xb8, 0xda, 0x75, 0x09, 0x7c, 0x82, 0xc8, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) mut => VT.get_Item(ref this, vIndex, pFaxOutboundRoutingGroup);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT Add(BSTR bstrName, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) mut => VT.Add(ref this, bstrName, pFaxOutboundRoutingGroup);
			public HRESULT Remove(VARIANT vIndex) mut => VT.Remove(ref this, vIndex);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroups self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroups self, VARIANT vIndex, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroups self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroups self, BSTR bstrName, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroups self, VARIANT vIndex) Remove;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingGroup : IDispatch
		{
			public const new Guid IID = .(0xca6289a1, 0x7e25, 0x4f87, 0x9a, 0x0b, 0x93, 0x36, 0x57, 0x34, 0x96, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut => VT.get_Name(ref this, pbstrName);
			public HRESULT get_Status(out FAX_GROUP_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_DeviceIds(IFaxDeviceIds** pFaxDeviceIds) mut => VT.get_DeviceIds(ref this, pFaxDeviceIds);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroup self, BSTR* pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroup self, out FAX_GROUP_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingGroup self, IFaxDeviceIds** pFaxDeviceIds) get_DeviceIds;
			}
		}
		[CRepr]
		public struct IFaxDeviceIds : IDispatch
		{
			public const new Guid IID = .(0x2f0f813f, 0x4ce9, 0x443e, 0x8c, 0xa1, 0x73, 0x8c, 0xfa, 0xee, 0xe1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(int32 lIndex, out int32 plDeviceId) mut => VT.get_Item(ref this, lIndex, out plDeviceId);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT Add(int32 lDeviceId) mut => VT.Add(ref this, lDeviceId);
			public HRESULT Remove(int32 lIndex) mut => VT.Remove(ref this, lIndex);
			public HRESULT SetOrder(int32 lDeviceId, int32 lNewOrder) mut => VT.SetOrder(ref this, lDeviceId, lNewOrder);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, int32 lIndex, out int32 plDeviceId) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, int32 lDeviceId) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, int32 lIndex) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDeviceIds self, int32 lDeviceId, int32 lNewOrder) SetOrder;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingRules : IDispatch
		{
			public const new Guid IID = .(0xdcefa1e7, 0xae7d, 0x4ed6, 0x85, 0x21, 0x36, 0x9e, 0xdc, 0xca, 0x51, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(int32 lIndex, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) mut => VT.get_Item(ref this, lIndex, pFaxOutboundRoutingRule);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT ItemByCountryAndArea(int32 lCountryCode, int32 lAreaCode, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) mut => VT.ItemByCountryAndArea(ref this, lCountryCode, lAreaCode, pFaxOutboundRoutingRule);
			public HRESULT RemoveByCountryAndArea(int32 lCountryCode, int32 lAreaCode) mut => VT.RemoveByCountryAndArea(ref this, lCountryCode, lAreaCode);
			public HRESULT Remove(int32 lIndex) mut => VT.Remove(ref this, lIndex);
			public HRESULT Add(int32 lCountryCode, int32 lAreaCode, int16 bUseDevice, BSTR bstrGroupName, int32 lDeviceId, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) mut => VT.Add(ref this, lCountryCode, lAreaCode, bUseDevice, bstrGroupName, lDeviceId, pFaxOutboundRoutingRule);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, int32 lIndex, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, int32 lCountryCode, int32 lAreaCode, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) ItemByCountryAndArea;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, int32 lCountryCode, int32 lAreaCode) RemoveByCountryAndArea;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, int32 lIndex) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRules self, int32 lCountryCode, int32 lAreaCode, int16 bUseDevice, BSTR bstrGroupName, int32 lDeviceId, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) Add;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingRule : IDispatch
		{
			public const new Guid IID = .(0xe1f795d5, 0x07c2, 0x469f, 0xb0, 0x27, 0xac, 0xac, 0xc2, 0x32, 0x19, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CountryCode(out int32 plCountryCode) mut => VT.get_CountryCode(ref this, out plCountryCode);
			public HRESULT get_AreaCode(out int32 plAreaCode) mut => VT.get_AreaCode(ref this, out plAreaCode);
			public HRESULT get_Status(out FAX_RULE_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_UseDevice(out int16 pbUseDevice) mut => VT.get_UseDevice(ref this, out pbUseDevice);
			public HRESULT put_UseDevice(int16 bUseDevice) mut => VT.put_UseDevice(ref this, bUseDevice);
			public HRESULT get_DeviceId(out int32 plDeviceId) mut => VT.get_DeviceId(ref this, out plDeviceId);
			public HRESULT put_DeviceId(int32 DeviceId) mut => VT.put_DeviceId(ref this, DeviceId);
			public HRESULT get_GroupName(BSTR* pbstrGroupName) mut => VT.get_GroupName(ref this, pbstrGroupName);
			public HRESULT put_GroupName(BSTR bstrGroupName) mut => VT.put_GroupName(ref this, bstrGroupName);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, out int32 plCountryCode) get_CountryCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, out int32 plAreaCode) get_AreaCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, out FAX_RULE_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, out int16 pbUseDevice) get_UseDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, int16 bUseDevice) put_UseDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, out int32 plDeviceId) get_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, int32 DeviceId) put_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, BSTR* pbstrGroupName) get_GroupName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self, BSTR bstrGroupName) put_GroupName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutboundRoutingRule self) Save;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingExtensions : IDispatch
		{
			public const new Guid IID = .(0x2f6c9673, 0x7b26, 0x42de, 0x8e, 0xb0, 0x91, 0x5d, 0xcd, 0x2a, 0x4f, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxInboundRoutingExtension** pFaxInboundRoutingExtension) mut => VT.get_Item(ref this, vIndex, pFaxInboundRoutingExtension);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtensions self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtensions self, VARIANT vIndex, IFaxInboundRoutingExtension** pFaxInboundRoutingExtension) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtensions self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingExtension : IDispatch
		{
			public const new Guid IID = .(0x885b5e08, 0xc26c, 0x4ef9, 0xaf, 0x83, 0x51, 0x58, 0x0a, 0x75, 0x0b, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FriendlyName(BSTR* pbstrFriendlyName) mut => VT.get_FriendlyName(ref this, pbstrFriendlyName);
			public HRESULT get_ImageName(BSTR* pbstrImageName) mut => VT.get_ImageName(ref this, pbstrImageName);
			public HRESULT get_UniqueName(BSTR* pbstrUniqueName) mut => VT.get_UniqueName(ref this, pbstrUniqueName);
			public HRESULT get_MajorVersion(out int32 plMajorVersion) mut => VT.get_MajorVersion(ref this, out plMajorVersion);
			public HRESULT get_MinorVersion(out int32 plMinorVersion) mut => VT.get_MinorVersion(ref this, out plMinorVersion);
			public HRESULT get_MajorBuild(out int32 plMajorBuild) mut => VT.get_MajorBuild(ref this, out plMajorBuild);
			public HRESULT get_MinorBuild(out int32 plMinorBuild) mut => VT.get_MinorBuild(ref this, out plMinorBuild);
			public HRESULT get_Debug(out int16 pbDebug) mut => VT.get_Debug(ref this, out pbDebug);
			public HRESULT get_Status(out FAX_PROVIDER_STATUS_ENUM pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_InitErrorCode(out int32 plInitErrorCode) mut => VT.get_InitErrorCode(ref this, out plInitErrorCode);
			public HRESULT get_Methods(out VARIANT pvMethods) mut => VT.get_Methods(ref this, out pvMethods);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, BSTR* pbstrFriendlyName) get_FriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, BSTR* pbstrImageName) get_ImageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, BSTR* pbstrUniqueName) get_UniqueName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int32 plMajorVersion) get_MajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int32 plMinorVersion) get_MinorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int32 plMajorBuild) get_MajorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int32 plMinorBuild) get_MinorBuild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int16 pbDebug) get_Debug;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out FAX_PROVIDER_STATUS_ENUM pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out int32 plInitErrorCode) get_InitErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingExtension self, out VARIANT pvMethods) get_Methods;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingMethods : IDispatch
		{
			public const new Guid IID = .(0x783fca10, 0x8908, 0x4473, 0x9d, 0x69, 0xf6, 0x7f, 0xbe, 0xa0, 0xc6, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxInboundRoutingMethod** pFaxInboundRoutingMethod) mut => VT.get_Item(ref this, vIndex, pFaxInboundRoutingMethod);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethods self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethods self, VARIANT vIndex, IFaxInboundRoutingMethod** pFaxInboundRoutingMethod) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethods self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingMethod : IDispatch
		{
			public const new Guid IID = .(0x45700061, 0xad9d, 0x4776, 0xa8, 0xc4, 0x64, 0x06, 0x54, 0x92, 0xcf, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut => VT.get_Name(ref this, pbstrName);
			public HRESULT get_GUID(BSTR* pbstrGUID) mut => VT.get_GUID(ref this, pbstrGUID);
			public HRESULT get_FunctionName(BSTR* pbstrFunctionName) mut => VT.get_FunctionName(ref this, pbstrFunctionName);
			public HRESULT get_ExtensionFriendlyName(BSTR* pbstrExtensionFriendlyName) mut => VT.get_ExtensionFriendlyName(ref this, pbstrExtensionFriendlyName);
			public HRESULT get_ExtensionImageName(BSTR* pbstrExtensionImageName) mut => VT.get_ExtensionImageName(ref this, pbstrExtensionImageName);
			public HRESULT get_Priority(out int32 plPriority) mut => VT.get_Priority(ref this, out plPriority);
			public HRESULT put_Priority(int32 lPriority) mut => VT.put_Priority(ref this, lPriority);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, BSTR* pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, BSTR* pbstrGUID) get_GUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, BSTR* pbstrFunctionName) get_FunctionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, BSTR* pbstrExtensionFriendlyName) get_ExtensionFriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, BSTR* pbstrExtensionImageName) get_ExtensionImageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, out int32 plPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self, int32 lPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxInboundRoutingMethod self) Save;
			}
		}
		[CRepr]
		public struct IFaxDocument2 : IFaxDocument
		{
			public const new Guid IID = .(0xe1347661, 0xf9ef, 0x4d6d, 0xb4, 0xa5, 0xc0, 0xa0, 0x68, 0xb6, 0x5c, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubmissionId(BSTR* pbstrSubmissionId) mut => VT.get_SubmissionId(ref this, pbstrSubmissionId);
			public HRESULT get_Bodies(out VARIANT pvBodies) mut => VT.get_Bodies(ref this, out pvBodies);
			public HRESULT put_Bodies(VARIANT vBodies) mut => VT.put_Bodies(ref this, vBodies);
			public HRESULT Submit2(BSTR bstrFaxServerName, out VARIANT pvFaxOutgoingJobIDs, out int32 plErrorBodyFile) mut => VT.Submit2(ref this, bstrFaxServerName, out pvFaxOutgoingJobIDs, out plErrorBodyFile);
			public HRESULT ConnectedSubmit2(IFaxServer* pFaxServer, out VARIANT pvFaxOutgoingJobIDs, out int32 plErrorBodyFile) mut => VT.ConnectedSubmit2(ref this, pFaxServer, out pvFaxOutgoingJobIDs, out plErrorBodyFile);

			[CRepr]
			public struct VTable : IFaxDocument.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument2 self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument2 self, out VARIANT pvBodies) get_Bodies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument2 self, VARIANT vBodies) put_Bodies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument2 self, BSTR bstrFaxServerName, out VARIANT pvFaxOutgoingJobIDs, out int32 plErrorBodyFile) Submit2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxDocument2 self, IFaxServer* pFaxServer, out VARIANT pvFaxOutgoingJobIDs, out int32 plErrorBodyFile) ConnectedSubmit2;
			}
		}
		[CRepr]
		public struct IFaxConfiguration : IDispatch
		{
			public const new Guid IID = .(0x10f4d0f7, 0x0994, 0x4543, 0xab, 0x6e, 0x50, 0x69, 0x49, 0x12, 0x8c, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UseArchive(out int16 pbUseArchive) mut => VT.get_UseArchive(ref this, out pbUseArchive);
			public HRESULT put_UseArchive(int16 bUseArchive) mut => VT.put_UseArchive(ref this, bUseArchive);
			public HRESULT get_ArchiveLocation(BSTR* pbstrArchiveLocation) mut => VT.get_ArchiveLocation(ref this, pbstrArchiveLocation);
			public HRESULT put_ArchiveLocation(BSTR bstrArchiveLocation) mut => VT.put_ArchiveLocation(ref this, bstrArchiveLocation);
			public HRESULT get_SizeQuotaWarning(out int16 pbSizeQuotaWarning) mut => VT.get_SizeQuotaWarning(ref this, out pbSizeQuotaWarning);
			public HRESULT put_SizeQuotaWarning(int16 bSizeQuotaWarning) mut => VT.put_SizeQuotaWarning(ref this, bSizeQuotaWarning);
			public HRESULT get_HighQuotaWaterMark(out int32 plHighQuotaWaterMark) mut => VT.get_HighQuotaWaterMark(ref this, out plHighQuotaWaterMark);
			public HRESULT put_HighQuotaWaterMark(int32 lHighQuotaWaterMark) mut => VT.put_HighQuotaWaterMark(ref this, lHighQuotaWaterMark);
			public HRESULT get_LowQuotaWaterMark(out int32 plLowQuotaWaterMark) mut => VT.get_LowQuotaWaterMark(ref this, out plLowQuotaWaterMark);
			public HRESULT put_LowQuotaWaterMark(int32 lLowQuotaWaterMark) mut => VT.put_LowQuotaWaterMark(ref this, lLowQuotaWaterMark);
			public HRESULT get_ArchiveAgeLimit(out int32 plArchiveAgeLimit) mut => VT.get_ArchiveAgeLimit(ref this, out plArchiveAgeLimit);
			public HRESULT put_ArchiveAgeLimit(int32 lArchiveAgeLimit) mut => VT.put_ArchiveAgeLimit(ref this, lArchiveAgeLimit);
			public HRESULT get_ArchiveSizeLow(out int32 plSizeLow) mut => VT.get_ArchiveSizeLow(ref this, out plSizeLow);
			public HRESULT get_ArchiveSizeHigh(out int32 plSizeHigh) mut => VT.get_ArchiveSizeHigh(ref this, out plSizeHigh);
			public HRESULT get_OutgoingQueueBlocked(out int16 pbOutgoingBlocked) mut => VT.get_OutgoingQueueBlocked(ref this, out pbOutgoingBlocked);
			public HRESULT put_OutgoingQueueBlocked(int16 bOutgoingBlocked) mut => VT.put_OutgoingQueueBlocked(ref this, bOutgoingBlocked);
			public HRESULT get_OutgoingQueuePaused(out int16 pbOutgoingPaused) mut => VT.get_OutgoingQueuePaused(ref this, out pbOutgoingPaused);
			public HRESULT put_OutgoingQueuePaused(int16 bOutgoingPaused) mut => VT.put_OutgoingQueuePaused(ref this, bOutgoingPaused);
			public HRESULT get_AllowPersonalCoverPages(out int16 pbAllowPersonalCoverPages) mut => VT.get_AllowPersonalCoverPages(ref this, out pbAllowPersonalCoverPages);
			public HRESULT put_AllowPersonalCoverPages(int16 bAllowPersonalCoverPages) mut => VT.put_AllowPersonalCoverPages(ref this, bAllowPersonalCoverPages);
			public HRESULT get_UseDeviceTSID(out int16 pbUseDeviceTSID) mut => VT.get_UseDeviceTSID(ref this, out pbUseDeviceTSID);
			public HRESULT put_UseDeviceTSID(int16 bUseDeviceTSID) mut => VT.put_UseDeviceTSID(ref this, bUseDeviceTSID);
			public HRESULT get_Retries(out int32 plRetries) mut => VT.get_Retries(ref this, out plRetries);
			public HRESULT put_Retries(int32 lRetries) mut => VT.put_Retries(ref this, lRetries);
			public HRESULT get_RetryDelay(out int32 plRetryDelay) mut => VT.get_RetryDelay(ref this, out plRetryDelay);
			public HRESULT put_RetryDelay(int32 lRetryDelay) mut => VT.put_RetryDelay(ref this, lRetryDelay);
			public HRESULT get_DiscountRateStart(out double pdateDiscountRateStart) mut => VT.get_DiscountRateStart(ref this, out pdateDiscountRateStart);
			public HRESULT put_DiscountRateStart(double dateDiscountRateStart) mut => VT.put_DiscountRateStart(ref this, dateDiscountRateStart);
			public HRESULT get_DiscountRateEnd(out double pdateDiscountRateEnd) mut => VT.get_DiscountRateEnd(ref this, out pdateDiscountRateEnd);
			public HRESULT put_DiscountRateEnd(double dateDiscountRateEnd) mut => VT.put_DiscountRateEnd(ref this, dateDiscountRateEnd);
			public HRESULT get_OutgoingQueueAgeLimit(out int32 plOutgoingQueueAgeLimit) mut => VT.get_OutgoingQueueAgeLimit(ref this, out plOutgoingQueueAgeLimit);
			public HRESULT put_OutgoingQueueAgeLimit(int32 lOutgoingQueueAgeLimit) mut => VT.put_OutgoingQueueAgeLimit(ref this, lOutgoingQueueAgeLimit);
			public HRESULT get_Branding(out int16 pbBranding) mut => VT.get_Branding(ref this, out pbBranding);
			public HRESULT put_Branding(int16 bBranding) mut => VT.put_Branding(ref this, bBranding);
			public HRESULT get_IncomingQueueBlocked(out int16 pbIncomingBlocked) mut => VT.get_IncomingQueueBlocked(ref this, out pbIncomingBlocked);
			public HRESULT put_IncomingQueueBlocked(int16 bIncomingBlocked) mut => VT.put_IncomingQueueBlocked(ref this, bIncomingBlocked);
			public HRESULT get_AutoCreateAccountOnConnect(out int16 pbAutoCreateAccountOnConnect) mut => VT.get_AutoCreateAccountOnConnect(ref this, out pbAutoCreateAccountOnConnect);
			public HRESULT put_AutoCreateAccountOnConnect(int16 bAutoCreateAccountOnConnect) mut => VT.put_AutoCreateAccountOnConnect(ref this, bAutoCreateAccountOnConnect);
			public HRESULT get_IncomingFaxesArePublic(out int16 pbIncomingFaxesArePublic) mut => VT.get_IncomingFaxesArePublic(ref this, out pbIncomingFaxesArePublic);
			public HRESULT put_IncomingFaxesArePublic(int16 bIncomingFaxesArePublic) mut => VT.put_IncomingFaxesArePublic(ref this, bIncomingFaxesArePublic);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbUseArchive) get_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bUseArchive) put_UseArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, BSTR* pbstrArchiveLocation) get_ArchiveLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, BSTR bstrArchiveLocation) put_ArchiveLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbSizeQuotaWarning) get_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plArchiveAgeLimit) get_ArchiveAgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lArchiveAgeLimit) put_ArchiveAgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plSizeLow) get_ArchiveSizeLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plSizeHigh) get_ArchiveSizeHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbOutgoingBlocked) get_OutgoingQueueBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bOutgoingBlocked) put_OutgoingQueueBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbOutgoingPaused) get_OutgoingQueuePaused;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bOutgoingPaused) put_OutgoingQueuePaused;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbAllowPersonalCoverPages) get_AllowPersonalCoverPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bAllowPersonalCoverPages) put_AllowPersonalCoverPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbUseDeviceTSID) get_UseDeviceTSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bUseDeviceTSID) put_UseDeviceTSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plRetries) get_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lRetries) put_Retries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plRetryDelay) get_RetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lRetryDelay) put_RetryDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out double pdateDiscountRateStart) get_DiscountRateStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, double dateDiscountRateStart) put_DiscountRateStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out double pdateDiscountRateEnd) get_DiscountRateEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, double dateDiscountRateEnd) put_DiscountRateEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int32 plOutgoingQueueAgeLimit) get_OutgoingQueueAgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int32 lOutgoingQueueAgeLimit) put_OutgoingQueueAgeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbBranding) get_Branding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bBranding) put_Branding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbIncomingBlocked) get_IncomingQueueBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bIncomingBlocked) put_IncomingQueueBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbAutoCreateAccountOnConnect) get_AutoCreateAccountOnConnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bAutoCreateAccountOnConnect) put_AutoCreateAccountOnConnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, out int16 pbIncomingFaxesArePublic) get_IncomingFaxesArePublic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self, int16 bIncomingFaxesArePublic) put_IncomingFaxesArePublic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxConfiguration self) Save;
			}
		}
		[CRepr]
		public struct IFaxServer2 : IFaxServer
		{
			public const new Guid IID = .(0x571ced0f, 0x5609, 0x4f40, 0x91, 0x76, 0x54, 0x7e, 0x3a, 0x72, 0xca, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Configuration(IFaxConfiguration** ppFaxConfiguration) mut => VT.get_Configuration(ref this, ppFaxConfiguration);
			public HRESULT get_CurrentAccount(IFaxAccount** ppCurrentAccount) mut => VT.get_CurrentAccount(ref this, ppCurrentAccount);
			public HRESULT get_FaxAccountSet(IFaxAccountSet** ppFaxAccountSet) mut => VT.get_FaxAccountSet(ref this, ppFaxAccountSet);
			public HRESULT get_Security2(IFaxSecurity2** ppFaxSecurity2) mut => VT.get_Security2(ref this, ppFaxSecurity2);

			[CRepr]
			public struct VTable : IFaxServer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer2 self, IFaxConfiguration** ppFaxConfiguration) get_Configuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer2 self, IFaxAccount** ppCurrentAccount) get_CurrentAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer2 self, IFaxAccountSet** ppFaxAccountSet) get_FaxAccountSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxServer2 self, IFaxSecurity2** ppFaxSecurity2) get_Security2;
			}
		}
		[CRepr]
		public struct IFaxAccountSet : IDispatch
		{
			public const new Guid IID = .(0x7428fbae, 0x841e, 0x47b8, 0x86, 0xf4, 0x22, 0x88, 0x94, 0x6d, 0xca, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAccounts(IFaxAccounts** ppFaxAccounts) mut => VT.GetAccounts(ref this, ppFaxAccounts);
			public HRESULT GetAccount(BSTR bstrAccountName, IFaxAccount** pFaxAccount) mut => VT.GetAccount(ref this, bstrAccountName, pFaxAccount);
			public HRESULT AddAccount(BSTR bstrAccountName, IFaxAccount** pFaxAccount) mut => VT.AddAccount(ref this, bstrAccountName, pFaxAccount);
			public HRESULT RemoveAccount(BSTR bstrAccountName) mut => VT.RemoveAccount(ref this, bstrAccountName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountSet self, IFaxAccounts** ppFaxAccounts) GetAccounts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountSet self, BSTR bstrAccountName, IFaxAccount** pFaxAccount) GetAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountSet self, BSTR bstrAccountName, IFaxAccount** pFaxAccount) AddAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountSet self, BSTR bstrAccountName) RemoveAccount;
			}
		}
		[CRepr]
		public struct IFaxAccounts : IDispatch
		{
			public const new Guid IID = .(0x93ea8162, 0x8be7, 0x42d1, 0xae, 0x7b, 0xec, 0x74, 0xe2, 0xd9, 0x89, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnk) mut => VT.get__NewEnum(ref this, ppUnk);
			public HRESULT get_Item(VARIANT vIndex, IFaxAccount** pFaxAccount) mut => VT.get_Item(ref this, vIndex, pFaxAccount);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccounts self, IUnknown** ppUnk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccounts self, VARIANT vIndex, IFaxAccount** pFaxAccount) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccounts self, out int32 plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxAccount : IDispatch
		{
			public const new Guid IID = .(0x68535b33, 0x5dc4, 0x4086, 0xbe, 0x26, 0xb7, 0x6f, 0x9b, 0x71, 0x10, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AccountName(BSTR* pbstrAccountName) mut => VT.get_AccountName(ref this, pbstrAccountName);
			public HRESULT get_Folders(IFaxAccountFolders** ppFolders) mut => VT.get_Folders(ref this, ppFolders);
			public HRESULT ListenToAccountEvents(FAX_ACCOUNT_EVENTS_TYPE_ENUM EventTypes) mut => VT.ListenToAccountEvents(ref this, EventTypes);
			public HRESULT get_RegisteredEvents(out FAX_ACCOUNT_EVENTS_TYPE_ENUM pRegisteredEvents) mut => VT.get_RegisteredEvents(ref this, out pRegisteredEvents);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccount self, BSTR* pbstrAccountName) get_AccountName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccount self, IFaxAccountFolders** ppFolders) get_Folders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccount self, FAX_ACCOUNT_EVENTS_TYPE_ENUM EventTypes) ListenToAccountEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccount self, out FAX_ACCOUNT_EVENTS_TYPE_ENUM pRegisteredEvents) get_RegisteredEvents;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJob2 : IFaxOutgoingJob
		{
			public const new Guid IID = .(0x418a8d96, 0x59a0, 0x4789, 0xb1, 0x76, 0xed, 0xf3, 0xdc, 0x8f, 0xa8, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HasCoverPage(out int16 pbHasCoverPage) mut => VT.get_HasCoverPage(ref this, out pbHasCoverPage);
			public HRESULT get_ReceiptAddress(BSTR* pbstrReceiptAddress) mut => VT.get_ReceiptAddress(ref this, pbstrReceiptAddress);
			public HRESULT get_ScheduleType(out FAX_SCHEDULE_TYPE_ENUM pScheduleType) mut => VT.get_ScheduleType(ref this, out pScheduleType);

			[CRepr]
			public struct VTable : IFaxOutgoingJob.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob2 self, out int16 pbHasCoverPage) get_HasCoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob2 self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingJob2 self, out FAX_SCHEDULE_TYPE_ENUM pScheduleType) get_ScheduleType;
			}
		}
		[CRepr]
		public struct IFaxAccountFolders : IDispatch
		{
			public const new Guid IID = .(0x6463f89d, 0x23d8, 0x46a9, 0x8f, 0x86, 0xc4, 0x7b, 0x77, 0xca, 0x79, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OutgoingQueue(IFaxAccountOutgoingQueue** pFaxOutgoingQueue) mut => VT.get_OutgoingQueue(ref this, pFaxOutgoingQueue);
			public HRESULT get_IncomingQueue(IFaxAccountIncomingQueue** pFaxIncomingQueue) mut => VT.get_IncomingQueue(ref this, pFaxIncomingQueue);
			public HRESULT get_IncomingArchive(IFaxAccountIncomingArchive** pFaxIncomingArchive) mut => VT.get_IncomingArchive(ref this, pFaxIncomingArchive);
			public HRESULT get_OutgoingArchive(IFaxAccountOutgoingArchive** pFaxOutgoingArchive) mut => VT.get_OutgoingArchive(ref this, pFaxOutgoingArchive);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountFolders self, IFaxAccountOutgoingQueue** pFaxOutgoingQueue) get_OutgoingQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountFolders self, IFaxAccountIncomingQueue** pFaxIncomingQueue) get_IncomingQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountFolders self, IFaxAccountIncomingArchive** pFaxIncomingArchive) get_IncomingArchive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountFolders self, IFaxAccountOutgoingArchive** pFaxOutgoingArchive) get_OutgoingArchive;
			}
		}
		[CRepr]
		public struct IFaxAccountIncomingQueue : IDispatch
		{
			public const new Guid IID = .(0xdd142d92, 0x0186, 0x4a95, 0xa0, 0x90, 0xcb, 0xc3, 0xea, 0xdb, 0xa6, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetJobs(IFaxIncomingJobs** pFaxIncomingJobs) mut => VT.GetJobs(ref this, pFaxIncomingJobs);
			public HRESULT GetJob(BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) mut => VT.GetJob(ref this, bstrJobId, pFaxIncomingJob);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingQueue self, IFaxIncomingJobs** pFaxIncomingJobs) GetJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingQueue self, BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxAccountOutgoingQueue : IDispatch
		{
			public const new Guid IID = .(0x0f1424e9, 0xf22d, 0x4553, 0xb7, 0xa5, 0x0d, 0x24, 0xbd, 0x0d, 0x7e, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetJobs(IFaxOutgoingJobs** pFaxOutgoingJobs) mut => VT.GetJobs(ref this, pFaxOutgoingJobs);
			public HRESULT GetJob(BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) mut => VT.GetJob(ref this, bstrJobId, pFaxOutgoingJob);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingQueue self, IFaxOutgoingJobs** pFaxOutgoingJobs) GetJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingQueue self, BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessage2 : IFaxOutgoingMessage
		{
			public const new Guid IID = .(0xb37df687, 0xbc88, 0x4b46, 0xb3, 0xbe, 0xb4, 0x58, 0xb3, 0xea, 0x9e, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HasCoverPage(out int16 pbHasCoverPage) mut => VT.get_HasCoverPage(ref this, out pbHasCoverPage);
			public HRESULT get_ReceiptType(out FAX_RECEIPT_TYPE_ENUM pReceiptType) mut => VT.get_ReceiptType(ref this, out pReceiptType);
			public HRESULT get_ReceiptAddress(BSTR* pbstrReceiptAddress) mut => VT.get_ReceiptAddress(ref this, pbstrReceiptAddress);
			public HRESULT get_Read(out int16 pbRead) mut => VT.get_Read(ref this, out pbRead);
			public HRESULT put_Read(int16 bRead) mut => VT.put_Read(ref this, bRead);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT Refresh() mut => VT.Refresh(ref this);

			[CRepr]
			public struct VTable : IFaxOutgoingMessage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self, out int16 pbHasCoverPage) get_HasCoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self, out FAX_RECEIPT_TYPE_ENUM pReceiptType) get_ReceiptType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self, out int16 pbRead) get_Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self, int16 bRead) put_Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxOutgoingMessage2 self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxAccountIncomingArchive : IDispatch
		{
			public const new Guid IID = .(0xa8a5b6ef, 0xe0d6, 0x4aee, 0x95, 0x5c, 0x91, 0x62, 0x5b, 0xec, 0x9d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SizeLow(out int32 plSizeLow) mut => VT.get_SizeLow(ref this, out plSizeLow);
			public HRESULT get_SizeHigh(out int32 plSizeHigh) mut => VT.get_SizeHigh(ref this, out plSizeHigh);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT GetMessages(int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) mut => VT.GetMessages(ref this, lPrefetchSize, pFaxIncomingMessageIterator);
			public HRESULT GetMessage(BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) mut => VT.GetMessage(ref this, bstrMessageId, pFaxIncomingMessage);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingArchive self, out int32 plSizeLow) get_SizeLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingArchive self, out int32 plSizeHigh) get_SizeHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingArchive self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingArchive self, int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) GetMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountIncomingArchive self, BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxAccountOutgoingArchive : IDispatch
		{
			public const new Guid IID = .(0x5463076d, 0xec14, 0x491f, 0x92, 0x6e, 0xb3, 0xce, 0xda, 0x5e, 0x56, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SizeLow(out int32 plSizeLow) mut => VT.get_SizeLow(ref this, out plSizeLow);
			public HRESULT get_SizeHigh(out int32 plSizeHigh) mut => VT.get_SizeHigh(ref this, out plSizeHigh);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT GetMessages(int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) mut => VT.GetMessages(ref this, lPrefetchSize, pFaxOutgoingMessageIterator);
			public HRESULT GetMessage(BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) mut => VT.GetMessage(ref this, bstrMessageId, pFaxOutgoingMessage);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingArchive self, out int32 plSizeLow) get_SizeLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingArchive self, out int32 plSizeHigh) get_SizeHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingArchive self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingArchive self, int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) GetMessages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxAccountOutgoingArchive self, BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxSecurity2 : IDispatch
		{
			public const new Guid IID = .(0x17d851f4, 0xd09b, 0x48fc, 0x99, 0xc9, 0x8f, 0x24, 0xc4, 0xdb, 0x9a, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Descriptor(out VARIANT pvDescriptor) mut => VT.get_Descriptor(ref this, out pvDescriptor);
			public HRESULT put_Descriptor(VARIANT vDescriptor) mut => VT.put_Descriptor(ref this, vDescriptor);
			public HRESULT get_GrantedRights(out FAX_ACCESS_RIGHTS_ENUM_2 pGrantedRights) mut => VT.get_GrantedRights(ref this, out pGrantedRights);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT get_InformationType(out int32 plInformationType) mut => VT.get_InformationType(ref this, out plInformationType);
			public HRESULT put_InformationType(int32 lInformationType) mut => VT.put_InformationType(ref this, lInformationType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self, out VARIANT pvDescriptor) get_Descriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self, VARIANT vDescriptor) put_Descriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self, out FAX_ACCESS_RIGHTS_ENUM_2 pGrantedRights) get_GrantedRights;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self, out int32 plInformationType) get_InformationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxSecurity2 self, int32 lInformationType) put_InformationType;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessage2 : IFaxIncomingMessage
		{
			public const new Guid IID = .(0xf9208503, 0xe2bc, 0x48f3, 0x9e, 0xc0, 0xe6, 0x23, 0x6f, 0x9b, 0x50, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Subject(BSTR* pbstrSubject) mut => VT.get_Subject(ref this, pbstrSubject);
			public HRESULT put_Subject(BSTR bstrSubject) mut => VT.put_Subject(ref this, bstrSubject);
			public HRESULT get_SenderName(BSTR* pbstrSenderName) mut => VT.get_SenderName(ref this, pbstrSenderName);
			public HRESULT put_SenderName(BSTR bstrSenderName) mut => VT.put_SenderName(ref this, bstrSenderName);
			public HRESULT get_SenderFaxNumber(BSTR* pbstrSenderFaxNumber) mut => VT.get_SenderFaxNumber(ref this, pbstrSenderFaxNumber);
			public HRESULT put_SenderFaxNumber(BSTR bstrSenderFaxNumber) mut => VT.put_SenderFaxNumber(ref this, bstrSenderFaxNumber);
			public HRESULT get_HasCoverPage(out int16 pbHasCoverPage) mut => VT.get_HasCoverPage(ref this, out pbHasCoverPage);
			public HRESULT put_HasCoverPage(int16 bHasCoverPage) mut => VT.put_HasCoverPage(ref this, bHasCoverPage);
			public HRESULT get_Recipients(BSTR* pbstrRecipients) mut => VT.get_Recipients(ref this, pbstrRecipients);
			public HRESULT put_Recipients(BSTR bstrRecipients) mut => VT.put_Recipients(ref this, bstrRecipients);
			public HRESULT get_WasReAssigned(out int16 pbWasReAssigned) mut => VT.get_WasReAssigned(ref this, out pbWasReAssigned);
			public HRESULT get_Read(out int16 pbRead) mut => VT.get_Read(ref this, out pbRead);
			public HRESULT put_Read(int16 bRead) mut => VT.put_Read(ref this, bRead);
			public HRESULT ReAssign() mut => VT.ReAssign(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT Refresh() mut => VT.Refresh(ref this);

			[CRepr]
			public struct VTable : IFaxIncomingMessage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR* pbstrSubject) get_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR bstrSubject) put_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR* pbstrSenderName) get_SenderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR bstrSenderName) put_SenderName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR* pbstrSenderFaxNumber) get_SenderFaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR bstrSenderFaxNumber) put_SenderFaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, out int16 pbHasCoverPage) get_HasCoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, int16 bHasCoverPage) put_HasCoverPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR* pbstrRecipients) get_Recipients;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, BSTR bstrRecipients) put_Recipients;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, out int16 pbWasReAssigned) get_WasReAssigned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, out int16 pbRead) get_Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self, int16 bRead) put_Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self) ReAssign;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFaxIncomingMessage2 self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxServerNotify : IDispatch
		{
			public const new Guid IID = .(0x2e037b27, 0xcf8a, 0x4abd, 0xb1, 0xe0, 0x57, 0x04, 0x94, 0x3b, 0xea, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct _IFaxServerNotify2 : IDispatch
		{
			public const new Guid IID = .(0xec9c69b9, 0x5fe7, 0x4805, 0x94, 0x67, 0x82, 0xfc, 0xd9, 0x6a, 0xf9, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIncomingJobAdded(IFaxServer2* pFaxServer, BSTR bstrJobId) mut => VT.OnIncomingJobAdded(ref this, pFaxServer, bstrJobId);
			public HRESULT OnIncomingJobRemoved(IFaxServer2* pFaxServer, BSTR bstrJobId) mut => VT.OnIncomingJobRemoved(ref this, pFaxServer, bstrJobId);
			public HRESULT OnIncomingJobChanged(IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) mut => VT.OnIncomingJobChanged(ref this, pFaxServer, bstrJobId, pJobStatus);
			public HRESULT OnOutgoingJobAdded(IFaxServer2* pFaxServer, BSTR bstrJobId) mut => VT.OnOutgoingJobAdded(ref this, pFaxServer, bstrJobId);
			public HRESULT OnOutgoingJobRemoved(IFaxServer2* pFaxServer, BSTR bstrJobId) mut => VT.OnOutgoingJobRemoved(ref this, pFaxServer, bstrJobId);
			public HRESULT OnOutgoingJobChanged(IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) mut => VT.OnOutgoingJobChanged(ref this, pFaxServer, bstrJobId, pJobStatus);
			public HRESULT OnIncomingMessageAdded(IFaxServer2* pFaxServer, BSTR bstrMessageId) mut => VT.OnIncomingMessageAdded(ref this, pFaxServer, bstrMessageId);
			public HRESULT OnIncomingMessageRemoved(IFaxServer2* pFaxServer, BSTR bstrMessageId) mut => VT.OnIncomingMessageRemoved(ref this, pFaxServer, bstrMessageId);
			public HRESULT OnOutgoingMessageAdded(IFaxServer2* pFaxServer, BSTR bstrMessageId) mut => VT.OnOutgoingMessageAdded(ref this, pFaxServer, bstrMessageId);
			public HRESULT OnOutgoingMessageRemoved(IFaxServer2* pFaxServer, BSTR bstrMessageId) mut => VT.OnOutgoingMessageRemoved(ref this, pFaxServer, bstrMessageId);
			public HRESULT OnReceiptOptionsChange(IFaxServer2* pFaxServer) mut => VT.OnReceiptOptionsChange(ref this, pFaxServer);
			public HRESULT OnActivityLoggingConfigChange(IFaxServer2* pFaxServer) mut => VT.OnActivityLoggingConfigChange(ref this, pFaxServer);
			public HRESULT OnSecurityConfigChange(IFaxServer2* pFaxServer) mut => VT.OnSecurityConfigChange(ref this, pFaxServer);
			public HRESULT OnEventLoggingConfigChange(IFaxServer2* pFaxServer) mut => VT.OnEventLoggingConfigChange(ref this, pFaxServer);
			public HRESULT OnOutgoingQueueConfigChange(IFaxServer2* pFaxServer) mut => VT.OnOutgoingQueueConfigChange(ref this, pFaxServer);
			public HRESULT OnOutgoingArchiveConfigChange(IFaxServer2* pFaxServer) mut => VT.OnOutgoingArchiveConfigChange(ref this, pFaxServer);
			public HRESULT OnIncomingArchiveConfigChange(IFaxServer2* pFaxServer) mut => VT.OnIncomingArchiveConfigChange(ref this, pFaxServer);
			public HRESULT OnDevicesConfigChange(IFaxServer2* pFaxServer) mut => VT.OnDevicesConfigChange(ref this, pFaxServer);
			public HRESULT OnOutboundRoutingGroupsConfigChange(IFaxServer2* pFaxServer) mut => VT.OnOutboundRoutingGroupsConfigChange(ref this, pFaxServer);
			public HRESULT OnOutboundRoutingRulesConfigChange(IFaxServer2* pFaxServer) mut => VT.OnOutboundRoutingRulesConfigChange(ref this, pFaxServer);
			public HRESULT OnServerActivityChange(IFaxServer2* pFaxServer, int32 lIncomingMessages, int32 lRoutingMessages, int32 lOutgoingMessages, int32 lQueuedMessages) mut => VT.OnServerActivityChange(ref this, pFaxServer, lIncomingMessages, lRoutingMessages, lOutgoingMessages, lQueuedMessages);
			public HRESULT OnQueuesStatusChange(IFaxServer2* pFaxServer, int16 bOutgoingQueueBlocked, int16 bOutgoingQueuePaused, int16 bIncomingQueueBlocked) mut => VT.OnQueuesStatusChange(ref this, pFaxServer, bOutgoingQueueBlocked, bOutgoingQueuePaused, bIncomingQueueBlocked);
			public HRESULT OnNewCall(IFaxServer2* pFaxServer, int32 lCallId, int32 lDeviceId, BSTR bstrCallerId) mut => VT.OnNewCall(ref this, pFaxServer, lCallId, lDeviceId, bstrCallerId);
			public HRESULT OnServerShutDown(IFaxServer2* pFaxServer) mut => VT.OnServerShutDown(ref this, pFaxServer);
			public HRESULT OnDeviceStatusChange(IFaxServer2* pFaxServer, int32 lDeviceId, int16 bPoweredOff, int16 bSending, int16 bReceiving, int16 bRinging) mut => VT.OnDeviceStatusChange(ref this, pFaxServer, lDeviceId, bPoweredOff, bSending, bReceiving, bRinging);
			public HRESULT OnGeneralServerConfigChanged(IFaxServer2* pFaxServer) mut => VT.OnGeneralServerConfigChanged(ref this, pFaxServer);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnIncomingJobAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnIncomingJobRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnIncomingJobChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnOutgoingJobAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnOutgoingJobRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnOutgoingJobChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnIncomingMessageAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnIncomingMessageRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnOutgoingMessageAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnOutgoingMessageRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnReceiptOptionsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnActivityLoggingConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnSecurityConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnEventLoggingConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnOutgoingQueueConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnOutgoingArchiveConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnIncomingArchiveConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnDevicesConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnOutboundRoutingGroupsConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnOutboundRoutingRulesConfigChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, int32 lIncomingMessages, int32 lRoutingMessages, int32 lOutgoingMessages, int32 lQueuedMessages) OnServerActivityChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, int16 bOutgoingQueueBlocked, int16 bOutgoingQueuePaused, int16 bIncomingQueueBlocked) OnQueuesStatusChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, int32 lCallId, int32 lDeviceId, BSTR bstrCallerId) OnNewCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnServerShutDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer, int32 lDeviceId, int16 bPoweredOff, int16 bSending, int16 bReceiving, int16 bRinging) OnDeviceStatusChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxServerNotify2 self, IFaxServer2* pFaxServer) OnGeneralServerConfigChanged;
			}
		}
		[CRepr]
		public struct IFaxServerNotify2 : IDispatch
		{
			public const new Guid IID = .(0x616ca8d6, 0xa77a, 0x4062, 0xab, 0xfd, 0x0e, 0x47, 0x12, 0x41, 0xc7, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct _IFaxAccountNotify : IDispatch
		{
			public const new Guid IID = .(0xb9b3bc81, 0xac1b, 0x46f3, 0xb3, 0x9d, 0x0a, 0xdc, 0x30, 0xe1, 0xb7, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIncomingJobAdded(IFaxAccount* pFaxAccount, BSTR bstrJobId) mut => VT.OnIncomingJobAdded(ref this, pFaxAccount, bstrJobId);
			public HRESULT OnIncomingJobRemoved(IFaxAccount* pFaxAccount, BSTR bstrJobId) mut => VT.OnIncomingJobRemoved(ref this, pFaxAccount, bstrJobId);
			public HRESULT OnIncomingJobChanged(IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) mut => VT.OnIncomingJobChanged(ref this, pFaxAccount, bstrJobId, pJobStatus);
			public HRESULT OnOutgoingJobAdded(IFaxAccount* pFaxAccount, BSTR bstrJobId) mut => VT.OnOutgoingJobAdded(ref this, pFaxAccount, bstrJobId);
			public HRESULT OnOutgoingJobRemoved(IFaxAccount* pFaxAccount, BSTR bstrJobId) mut => VT.OnOutgoingJobRemoved(ref this, pFaxAccount, bstrJobId);
			public HRESULT OnOutgoingJobChanged(IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) mut => VT.OnOutgoingJobChanged(ref this, pFaxAccount, bstrJobId, pJobStatus);
			public HRESULT OnIncomingMessageAdded(IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fAddedToReceiveFolder) mut => VT.OnIncomingMessageAdded(ref this, pFaxAccount, bstrMessageId, fAddedToReceiveFolder);
			public HRESULT OnIncomingMessageRemoved(IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fRemovedFromReceiveFolder) mut => VT.OnIncomingMessageRemoved(ref this, pFaxAccount, bstrMessageId, fRemovedFromReceiveFolder);
			public HRESULT OnOutgoingMessageAdded(IFaxAccount* pFaxAccount, BSTR bstrMessageId) mut => VT.OnOutgoingMessageAdded(ref this, pFaxAccount, bstrMessageId);
			public HRESULT OnOutgoingMessageRemoved(IFaxAccount* pFaxAccount, BSTR bstrMessageId) mut => VT.OnOutgoingMessageRemoved(ref this, pFaxAccount, bstrMessageId);
			public HRESULT OnServerShutDown(IFaxServer2* pFaxServer) mut => VT.OnServerShutDown(ref this, pFaxServer);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnIncomingJobAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnIncomingJobRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnIncomingJobChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnOutgoingJobAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnOutgoingJobRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnOutgoingJobChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fAddedToReceiveFolder) OnIncomingMessageAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fRemovedFromReceiveFolder) OnIncomingMessageRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrMessageId) OnOutgoingMessageAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxAccount* pFaxAccount, BSTR bstrMessageId) OnOutgoingMessageRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IFaxAccountNotify self, IFaxServer2* pFaxServer) OnServerShutDown;
			}
		}
		[CRepr]
		public struct IFaxAccountNotify : IDispatch
		{
			public const new Guid IID = .(0x0b5e5bd1, 0xb8a9, 0x47a0, 0xa3, 0x23, 0xef, 0x4a, 0x29, 0x3b, 0xa0, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IStillImageW : IUnknown
		{
			public const new Guid IID = .(0x641bd880, 0x2dc8, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HINSTANCE hinst, uint32 dwVersion) mut => VT.Initialize(ref this, hinst, dwVersion);
			public HRESULT GetDeviceList(uint32 dwType, uint32 dwFlags, out uint32 pdwItemsReturned, void** ppBuffer) mut => VT.GetDeviceList(ref this, dwType, dwFlags, out pdwItemsReturned, ppBuffer);
			public HRESULT GetDeviceInfo(PWSTR pwszDeviceName, void** ppBuffer) mut => VT.GetDeviceInfo(ref this, pwszDeviceName, ppBuffer);
			public HRESULT CreateDevice(PWSTR pwszDeviceName, uint32 dwMode, out IStiDevice* pDevice, IUnknown* punkOuter) mut => VT.CreateDevice(ref this, pwszDeviceName, dwMode, out pDevice, punkOuter);
			public HRESULT GetDeviceValue(PWSTR pwszDeviceName, PWSTR pValueName, out uint32 pType, out uint8 pData, out uint32 cbData) mut => VT.GetDeviceValue(ref this, pwszDeviceName, pValueName, out pType, out pData, out cbData);
			public HRESULT SetDeviceValue(PWSTR pwszDeviceName, PWSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData) mut => VT.SetDeviceValue(ref this, pwszDeviceName, pValueName, Type, ref pData, cbData);
			public HRESULT GetSTILaunchInformation(char16* pwszDeviceName, uint32* pdwEventCode, char16* pwszEventName) mut => VT.GetSTILaunchInformation(ref this, pwszDeviceName, pdwEventCode, pwszEventName);
			public HRESULT RegisterLaunchApplication(PWSTR pwszAppName, PWSTR pwszCommandLine) mut => VT.RegisterLaunchApplication(ref this, pwszAppName, pwszCommandLine);
			public HRESULT UnregisterLaunchApplication(PWSTR pwszAppName) mut => VT.UnregisterLaunchApplication(ref this, pwszAppName);
			public HRESULT EnableHwNotifications(PWSTR pwszDeviceName, BOOL bNewState) mut => VT.EnableHwNotifications(ref this, pwszDeviceName, bNewState);
			public HRESULT GetHwNotificationState(PWSTR pwszDeviceName, out BOOL pbCurrentState) mut => VT.GetHwNotificationState(ref this, pwszDeviceName, out pbCurrentState);
			public HRESULT RefreshDeviceBus(PWSTR pwszDeviceName) mut => VT.RefreshDeviceBus(ref this, pwszDeviceName);
			public HRESULT LaunchApplicationForDevice(PWSTR pwszDeviceName, PWSTR pwszAppName, ref STINOTIFY pStiNotify) mut => VT.LaunchApplicationForDevice(ref this, pwszDeviceName, pwszAppName, ref pStiNotify);
			public HRESULT SetupDeviceParameters(out STI_DEVICE_INFORMATIONW param0) mut => VT.SetupDeviceParameters(ref this, out param0);
			public HRESULT WriteToErrorLog(uint32 dwMessageType, PWSTR pszMessage) mut => VT.WriteToErrorLog(ref this, dwMessageType, pszMessage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, HINSTANCE hinst, uint32 dwVersion) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, uint32 dwType, uint32 dwFlags, out uint32 pdwItemsReturned, void** ppBuffer) GetDeviceList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, void** ppBuffer) GetDeviceInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, uint32 dwMode, out IStiDevice* pDevice, IUnknown* punkOuter) CreateDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, PWSTR pValueName, out uint32 pType, out uint8 pData, out uint32 cbData) GetDeviceValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, PWSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData) SetDeviceValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, char16* pwszDeviceName, uint32* pdwEventCode, char16* pwszEventName) GetSTILaunchInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszAppName, PWSTR pwszCommandLine) RegisterLaunchApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszAppName) UnregisterLaunchApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, BOOL bNewState) EnableHwNotifications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, out BOOL pbCurrentState) GetHwNotificationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName) RefreshDeviceBus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, PWSTR pwszDeviceName, PWSTR pwszAppName, ref STINOTIFY pStiNotify) LaunchApplicationForDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, out STI_DEVICE_INFORMATIONW param0) SetupDeviceParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStillImageW self, uint32 dwMessageType, PWSTR pszMessage) WriteToErrorLog;
			}
		}
		[CRepr]
		public struct IStiDevice : IUnknown
		{
			public const new Guid IID = .(0x6cfa5a80, 0x2dc8, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HINSTANCE hinst, PWSTR pwszDeviceName, uint32 dwVersion, uint32 dwMode) mut => VT.Initialize(ref this, hinst, pwszDeviceName, dwVersion, dwMode);
			public HRESULT GetCapabilities(out STI_DEV_CAPS pDevCaps) mut => VT.GetCapabilities(ref this, out pDevCaps);
			public HRESULT GetStatus(out STI_DEVICE_STATUS pDevStatus) mut => VT.GetStatus(ref this, out pDevStatus);
			public HRESULT DeviceReset() mut => VT.DeviceReset(ref this);
			public HRESULT Diagnostic(out STI_DIAG pBuffer) mut => VT.Diagnostic(ref this, out pBuffer);
			public HRESULT Escape(uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, out uint32 pdwActualData) mut => VT.Escape(ref this, EscapeFunction, lpInData, cbInDataSize, pOutData, dwOutDataSize, out pdwActualData);
			public HRESULT GetLastError(out uint32 pdwLastDeviceError) mut => VT.GetLastError(ref this, out pdwLastDeviceError);
			public HRESULT LockDevice(uint32 dwTimeOut) mut => VT.LockDevice(ref this, dwTimeOut);
			public HRESULT UnLockDevice() mut => VT.UnLockDevice(ref this);
			public HRESULT RawReadData(void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawReadData(ref this, lpBuffer, out lpdwNumberOfBytes, lpOverlapped);
			public HRESULT RawWriteData(void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawWriteData(ref this, lpBuffer, nNumberOfBytes, lpOverlapped);
			public HRESULT RawReadCommand(void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawReadCommand(ref this, lpBuffer, out lpdwNumberOfBytes, lpOverlapped);
			public HRESULT RawWriteCommand(void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawWriteCommand(ref this, lpBuffer, nNumberOfBytes, lpOverlapped);
			public HRESULT Subscribe(out STISUBSCRIBE lpSubsribe) mut => VT.Subscribe(ref this, out lpSubsribe);
			public HRESULT GetLastNotificationData(out STINOTIFY lpNotify) mut => VT.GetLastNotificationData(ref this, out lpNotify);
			public HRESULT UnSubscribe() mut => VT.UnSubscribe(ref this);
			public HRESULT GetLastErrorInfo(out _ERROR_INFOW pLastErrorInfo) mut => VT.GetLastErrorInfo(ref this, out pLastErrorInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, HINSTANCE hinst, PWSTR pwszDeviceName, uint32 dwVersion, uint32 dwMode) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out STI_DEV_CAPS pDevCaps) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out STI_DEVICE_STATUS pDevStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self) DeviceReset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out STI_DIAG pBuffer) Diagnostic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, out uint32 pdwActualData) Escape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out uint32 pdwLastDeviceError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, uint32 dwTimeOut) LockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self) UnLockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out STISUBSCRIBE lpSubsribe) Subscribe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out STINOTIFY lpNotify) GetLastNotificationData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self) UnSubscribe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDevice self, out _ERROR_INFOW pLastErrorInfo) GetLastErrorInfo;
			}
		}
		[CRepr]
		public struct IStiDeviceControl : IUnknown
		{
			public const new Guid IID = .(0x128a9860, 0x52dc, 0x11d0, 0x9e, 0xdf, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint32 dwDeviceType, uint32 dwMode, PWSTR pwszPortName, uint32 dwFlags) mut => VT.Initialize(ref this, dwDeviceType, dwMode, pwszPortName, dwFlags);
			public HRESULT RawReadData(void* lpBuffer, out uint32 lpdwNumberOfBytes, out OVERLAPPED lpOverlapped) mut => VT.RawReadData(ref this, lpBuffer, out lpdwNumberOfBytes, out lpOverlapped);
			public HRESULT RawWriteData(void* lpBuffer, uint32 nNumberOfBytes, out OVERLAPPED lpOverlapped) mut => VT.RawWriteData(ref this, lpBuffer, nNumberOfBytes, out lpOverlapped);
			public HRESULT RawReadCommand(void* lpBuffer, out uint32 lpdwNumberOfBytes, out OVERLAPPED lpOverlapped) mut => VT.RawReadCommand(ref this, lpBuffer, out lpdwNumberOfBytes, out lpOverlapped);
			public HRESULT RawWriteCommand(void* lpBuffer, uint32 nNumberOfBytes, out OVERLAPPED lpOverlapped) mut => VT.RawWriteCommand(ref this, lpBuffer, nNumberOfBytes, out lpOverlapped);
			public HRESULT RawDeviceControl(uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, out uint32 pdwActualData) mut => VT.RawDeviceControl(ref this, EscapeFunction, lpInData, cbInDataSize, pOutData, dwOutDataSize, out pdwActualData);
			public HRESULT GetLastError(out uint32 lpdwLastError) mut => VT.GetLastError(ref this, out lpdwLastError);
			public HRESULT GetMyDevicePortName(char16* lpszDevicePath, uint32 cwDevicePathSize) mut => VT.GetMyDevicePortName(ref this, lpszDevicePath, cwDevicePathSize);
			public HRESULT GetMyDeviceHandle(out HANDLE lph) mut => VT.GetMyDeviceHandle(ref this, out lph);
			public HRESULT GetMyDeviceOpenMode(out uint32 pdwOpenMode) mut => VT.GetMyDeviceOpenMode(ref this, out pdwOpenMode);
			public HRESULT WriteToErrorLog(uint32 dwMessageType, PWSTR pszMessage, uint32 dwErrorCode) mut => VT.WriteToErrorLog(ref this, dwMessageType, pszMessage, dwErrorCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, uint32 dwDeviceType, uint32 dwMode, PWSTR pwszPortName, uint32 dwFlags) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, void* lpBuffer, out uint32 lpdwNumberOfBytes, out OVERLAPPED lpOverlapped) RawReadData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, void* lpBuffer, uint32 nNumberOfBytes, out OVERLAPPED lpOverlapped) RawWriteData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, void* lpBuffer, out uint32 lpdwNumberOfBytes, out OVERLAPPED lpOverlapped) RawReadCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, void* lpBuffer, uint32 nNumberOfBytes, out OVERLAPPED lpOverlapped) RawWriteCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, out uint32 pdwActualData) RawDeviceControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, out uint32 lpdwLastError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, char16* lpszDevicePath, uint32 cwDevicePathSize) GetMyDevicePortName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, out HANDLE lph) GetMyDeviceHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, out uint32 pdwOpenMode) GetMyDeviceOpenMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiDeviceControl self, uint32 dwMessageType, PWSTR pszMessage, uint32 dwErrorCode) WriteToErrorLog;
			}
		}
		[CRepr]
		public struct IStiUSD : IUnknown
		{
			public const new Guid IID = .(0x0c9bb460, 0x51ac, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IStiDeviceControl pHelDcb, uint32 dwStiVersion, HKEY hParametersKey) mut => VT.Initialize(ref this, ref pHelDcb, dwStiVersion, hParametersKey);
			public HRESULT GetCapabilities(out STI_USD_CAPS pDevCaps) mut => VT.GetCapabilities(ref this, out pDevCaps);
			public HRESULT GetStatus(out STI_DEVICE_STATUS pDevStatus) mut => VT.GetStatus(ref this, out pDevStatus);
			public HRESULT DeviceReset() mut => VT.DeviceReset(ref this);
			public HRESULT Diagnostic(out STI_DIAG pBuffer) mut => VT.Diagnostic(ref this, out pBuffer);
			public HRESULT Escape(uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 cbOutDataSize, out uint32 pdwActualData) mut => VT.Escape(ref this, EscapeFunction, lpInData, cbInDataSize, pOutData, cbOutDataSize, out pdwActualData);
			public HRESULT GetLastError(out uint32 pdwLastDeviceError) mut => VT.GetLastError(ref this, out pdwLastDeviceError);
			public HRESULT LockDevice() mut => VT.LockDevice(ref this);
			public HRESULT UnLockDevice() mut => VT.UnLockDevice(ref this);
			public HRESULT RawReadData(void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawReadData(ref this, lpBuffer, out lpdwNumberOfBytes, lpOverlapped);
			public HRESULT RawWriteData(void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawWriteData(ref this, lpBuffer, nNumberOfBytes, lpOverlapped);
			public HRESULT RawReadCommand(void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawReadCommand(ref this, lpBuffer, out lpdwNumberOfBytes, lpOverlapped);
			public HRESULT RawWriteCommand(void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) mut => VT.RawWriteCommand(ref this, lpBuffer, nNumberOfBytes, lpOverlapped);
			public HRESULT SetNotificationHandle(HANDLE hEvent) mut => VT.SetNotificationHandle(ref this, hEvent);
			public HRESULT GetNotificationData(out STINOTIFY lpNotify) mut => VT.GetNotificationData(ref this, out lpNotify);
			public HRESULT GetLastErrorInfo(out _ERROR_INFOW pLastErrorInfo) mut => VT.GetLastErrorInfo(ref this, out pLastErrorInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, ref IStiDeviceControl pHelDcb, uint32 dwStiVersion, HKEY hParametersKey) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out STI_USD_CAPS pDevCaps) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out STI_DEVICE_STATUS pDevStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self) DeviceReset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out STI_DIAG pBuffer) Diagnostic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 cbOutDataSize, out uint32 pdwActualData) Escape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out uint32 pdwLastDeviceError) GetLastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self) LockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self) UnLockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, void* lpBuffer, out uint32 lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, HANDLE hEvent) SetNotificationHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out STINOTIFY lpNotify) GetNotificationData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStiUSD self, out _ERROR_INFOW pLastErrorInfo) GetLastErrorInfo;
			}
		}
		
		// --- Functions ---
		
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxConnectFaxServerA(PSTR MachineName, out HANDLE FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxConnectFaxServerW(PWSTR MachineName, out HANDLE FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxClose(HANDLE FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxOpenPort(HANDLE FaxHandle, uint32 DeviceId, uint32 Flags, out HANDLE FaxPortHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxCompleteJobParamsA(out FAX_JOB_PARAMA* JobParams, out FAX_COVERPAGE_INFOA* CoverpageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxCompleteJobParamsW(out FAX_JOB_PARAMW* JobParams, out FAX_COVERPAGE_INFOW* CoverpageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentA(HANDLE FaxHandle, PSTR FileName, out FAX_JOB_PARAMA JobParams, in FAX_COVERPAGE_INFOA CoverpageInfo, out uint32 FaxJobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentW(HANDLE FaxHandle, PWSTR FileName, out FAX_JOB_PARAMW JobParams, in FAX_COVERPAGE_INFOW CoverpageInfo, out uint32 FaxJobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentForBroadcastA(HANDLE FaxHandle, PSTR FileName, out uint32 FaxJobId, PFAX_RECIPIENT_CALLBACKA FaxRecipientCallback, void* Context);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentForBroadcastW(HANDLE FaxHandle, PWSTR FileName, out uint32 FaxJobId, PFAX_RECIPIENT_CALLBACKW FaxRecipientCallback, void* Context);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumJobsA(HANDLE FaxHandle, out FAX_JOB_ENTRYA* JobEntry, out uint32 JobsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumJobsW(HANDLE FaxHandle, out FAX_JOB_ENTRYW* JobEntry, out uint32 JobsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetJobA(HANDLE FaxHandle, uint32 JobId, out FAX_JOB_ENTRYA* JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetJobW(HANDLE FaxHandle, uint32 JobId, out FAX_JOB_ENTRYW* JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetJobA(HANDLE FaxHandle, uint32 JobId, uint32 Command, in FAX_JOB_ENTRYA JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetJobW(HANDLE FaxHandle, uint32 JobId, uint32 Command, in FAX_JOB_ENTRYW JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPageData(HANDLE FaxHandle, uint32 JobId, out uint8* Buffer, out uint32 BufferSize, out uint32 ImageWidth, out uint32 ImageHeight);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetDeviceStatusA(HANDLE FaxPortHandle, out FAX_DEVICE_STATUSA* DeviceStatus);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetDeviceStatusW(HANDLE FaxPortHandle, out FAX_DEVICE_STATUSW* DeviceStatus);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxAbort(HANDLE FaxHandle, uint32 JobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetConfigurationA(HANDLE FaxHandle, out FAX_CONFIGURATIONA* FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetConfigurationW(HANDLE FaxHandle, out FAX_CONFIGURATIONW* FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetConfigurationA(HANDLE FaxHandle, in FAX_CONFIGURATIONA FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetConfigurationW(HANDLE FaxHandle, in FAX_CONFIGURATIONW FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetLoggingCategoriesA(HANDLE FaxHandle, out FAX_LOG_CATEGORYA* Categories, out uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetLoggingCategoriesW(HANDLE FaxHandle, out FAX_LOG_CATEGORYW* Categories, out uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetLoggingCategoriesA(HANDLE FaxHandle, in FAX_LOG_CATEGORYA Categories, uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetLoggingCategoriesW(HANDLE FaxHandle, in FAX_LOG_CATEGORYW Categories, uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumPortsA(HANDLE FaxHandle, out FAX_PORT_INFOA* PortInfo, out uint32 PortsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumPortsW(HANDLE FaxHandle, out FAX_PORT_INFOW* PortInfo, out uint32 PortsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPortA(HANDLE FaxPortHandle, out FAX_PORT_INFOA* PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPortW(HANDLE FaxPortHandle, out FAX_PORT_INFOW* PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetPortA(HANDLE FaxPortHandle, in FAX_PORT_INFOA PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetPortW(HANDLE FaxPortHandle, in FAX_PORT_INFOW PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumRoutingMethodsA(HANDLE FaxPortHandle, out FAX_ROUTING_METHODA* RoutingMethod, out uint32 MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumRoutingMethodsW(HANDLE FaxPortHandle, out FAX_ROUTING_METHODW* RoutingMethod, out uint32 MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnableRoutingMethodA(HANDLE FaxPortHandle, PSTR RoutingGuid, BOOL Enabled);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnableRoutingMethodW(HANDLE FaxPortHandle, PWSTR RoutingGuid, BOOL Enabled);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumGlobalRoutingInfoA(HANDLE FaxHandle, out FAX_GLOBAL_ROUTING_INFOA* RoutingInfo, out uint32 MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumGlobalRoutingInfoW(HANDLE FaxHandle, out FAX_GLOBAL_ROUTING_INFOW* RoutingInfo, out uint32 MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetGlobalRoutingInfoA(HANDLE FaxHandle, in FAX_GLOBAL_ROUTING_INFOA RoutingInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetGlobalRoutingInfoW(HANDLE FaxHandle, in FAX_GLOBAL_ROUTING_INFOW RoutingInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetRoutingInfoA(HANDLE FaxPortHandle, PSTR RoutingGuid, out uint8* RoutingInfoBuffer, out uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetRoutingInfoW(HANDLE FaxPortHandle, PWSTR RoutingGuid, out uint8* RoutingInfoBuffer, out uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetRoutingInfoA(HANDLE FaxPortHandle, PSTR RoutingGuid, in uint8 RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetRoutingInfoW(HANDLE FaxPortHandle, PWSTR RoutingGuid, in uint8 RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxInitializeEventQueue(HANDLE FaxHandle, HANDLE CompletionPort, uint CompletionKey, HWND hWnd, uint32 MessageStart);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FaxFreeBuffer(void* Buffer);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxStartPrintJobA(PSTR PrinterName, in FAX_PRINT_INFOA PrintInfo, out uint32 FaxJobId, out FAX_CONTEXT_INFOA FaxContextInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxStartPrintJobW(PWSTR PrinterName, in FAX_PRINT_INFOW PrintInfo, out uint32 FaxJobId, out FAX_CONTEXT_INFOW FaxContextInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxPrintCoverPageA(in FAX_CONTEXT_INFOA FaxContextInfo, in FAX_COVERPAGE_INFOA CoverPageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxPrintCoverPageW(in FAX_CONTEXT_INFOW FaxContextInfo, in FAX_COVERPAGE_INFOW CoverPageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxRegisterServiceProviderW(PWSTR DeviceProvider, PWSTR FriendlyName, PWSTR ImageName, PWSTR TspName);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxUnregisterServiceProviderW(PWSTR DeviceProvider);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxRegisterRoutingExtensionW(HANDLE FaxHandle, PWSTR ExtensionName, PWSTR FriendlyName, PWSTR ImageName, PFAX_ROUTING_INSTALLATION_CALLBACKW CallBack, void* Context);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxAccessCheck(HANDLE FaxHandle, uint32 AccessMask);
		[Import("fxsutility.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CanSendToFaxRecipient();
		[Import("fxsutility.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SendToFaxRecipient(SendToMode sndMode, PWSTR lpFileName);
		[Import("sti.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StiCreateInstanceW(HINSTANCE hinst, uint32 dwVer, out IStillImageW* ppSti, ref IUnknown punkOuter);
	}
}
