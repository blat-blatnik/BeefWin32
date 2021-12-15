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
		
		[AllowDuplicates]
		public enum FAX_ENUM_LOG_LEVELS : int32
		{
			FAXLOG_LEVEL_NONE = 0,
			FAXLOG_LEVEL_MIN = 1,
			FAXLOG_LEVEL_MED = 2,
			FAXLOG_LEVEL_MAX = 3,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_LOG_CATEGORIES : int32
		{
			FAXLOG_CATEGORY_INIT = 1,
			FAXLOG_CATEGORY_OUTBOUND = 2,
			FAXLOG_CATEGORY_INBOUND = 3,
			FAXLOG_CATEGORY_UNKNOWN = 4,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_JOB_COMMANDS : int32
		{
			JC_UNKNOWN = 0,
			JC_DELETE = 1,
			JC_PAUSE = 2,
			JC_RESUME = 3,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_JOB_SEND_ATTRIBUTES : int32
		{
			JSA_NOW = 0,
			JSA_SPECIFIC_TIME = 1,
			JSA_DISCOUNT_PERIOD = 2,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_DELIVERY_REPORT_TYPES : int32
		{
			DRT_NONE = 0,
			DRT_EMAIL = 1,
			DRT_INBOX = 2,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_PORT_OPEN_TYPE : int32
		{
			PORT_OPEN_QUERY = 1,
			PORT_OPEN_MODIFY = 2,
		}
		[AllowDuplicates]
		public enum FAX_JOB_STATUS_ENUM : int32
		{
			fjsPENDING = 1,
			fjsINPROGRESS = 2,
			fjsFAILED = 8,
			fjsPAUSED = 16,
			fjsNOLINE = 32,
			fjsRETRYING = 64,
			fjsRETRIES_EXCEEDED = 128,
			fjsCOMPLETED = 256,
			fjsCANCELED = 512,
			fjsCANCELING = 1024,
			fjsROUTING = 2048,
		}
		[AllowDuplicates]
		public enum FAX_JOB_EXTENDED_STATUS_ENUM : int32
		{
			fjesNONE = 0,
			fjesDISCONNECTED = 1,
			fjesINITIALIZING = 2,
			fjesDIALING = 3,
			fjesTRANSMITTING = 4,
			fjesANSWERED = 5,
			fjesRECEIVING = 6,
			fjesLINE_UNAVAILABLE = 7,
			fjesBUSY = 8,
			fjesNO_ANSWER = 9,
			fjesBAD_ADDRESS = 10,
			fjesNO_DIAL_TONE = 11,
			fjesFATAL_ERROR = 12,
			fjesCALL_DELAYED = 13,
			fjesCALL_BLACKLISTED = 14,
			fjesNOT_FAX_CALL = 15,
			fjesPARTIALLY_RECEIVED = 16,
			fjesHANDLED = 17,
			fjesCALL_COMPLETED = 18,
			fjesCALL_ABORTED = 19,
			fjesPROPRIETARY = 16777216,
		}
		[AllowDuplicates]
		public enum FAX_JOB_OPERATIONS_ENUM : int32
		{
			fjoVIEW = 1,
			fjoPAUSE = 2,
			fjoRESUME = 4,
			fjoRESTART = 8,
			fjoDELETE = 16,
			fjoRECIPIENT_INFO = 32,
			fjoSENDER_INFO = 64,
		}
		[AllowDuplicates]
		public enum FAX_JOB_TYPE_ENUM : int32
		{
			fjtSEND = 0,
			fjtRECEIVE = 1,
			fjtROUTING = 2,
		}
		[AllowDuplicates]
		public enum FAX_SERVER_EVENTS_TYPE_ENUM : int32
		{
			fsetNONE = 0,
			fsetIN_QUEUE = 1,
			fsetOUT_QUEUE = 2,
			fsetCONFIG = 4,
			fsetACTIVITY = 8,
			fsetQUEUE_STATE = 16,
			fsetIN_ARCHIVE = 32,
			fsetOUT_ARCHIVE = 64,
			fsetFXSSVC_ENDED = 128,
			fsetDEVICE_STATUS = 256,
			fsetINCOMING_CALL = 512,
		}
		[AllowDuplicates]
		public enum FAX_SERVER_APIVERSION_ENUM : int32
		{
			fsAPI_VERSION_0 = 0,
			fsAPI_VERSION_1 = 65536,
			fsAPI_VERSION_2 = 131072,
			fsAPI_VERSION_3 = 196608,
		}
		[AllowDuplicates]
		public enum FAX_SMTP_AUTHENTICATION_TYPE_ENUM : int32
		{
			fsatANONYMOUS = 0,
			fsatBASIC = 1,
			fsatNTLM = 2,
		}
		[AllowDuplicates]
		public enum FAX_RECEIPT_TYPE_ENUM : int32
		{
			frtNONE = 0,
			frtMAIL = 1,
			frtMSGBOX = 4,
		}
		[AllowDuplicates]
		public enum FAX_ACCESS_RIGHTS_ENUM : int32
		{
			farSUBMIT_LOW = 1,
			farSUBMIT_NORMAL = 2,
			farSUBMIT_HIGH = 4,
			farQUERY_JOBS = 8,
			farMANAGE_JOBS = 16,
			farQUERY_CONFIG = 32,
			farMANAGE_CONFIG = 64,
			farQUERY_IN_ARCHIVE = 128,
			farMANAGE_IN_ARCHIVE = 256,
			farQUERY_OUT_ARCHIVE = 512,
			farMANAGE_OUT_ARCHIVE = 1024,
		}
		[AllowDuplicates]
		public enum FAX_PRIORITY_TYPE_ENUM : int32
		{
			fptLOW = 0,
			fptNORMAL = 1,
			fptHIGH = 2,
		}
		[AllowDuplicates]
		public enum FAX_COVERPAGE_TYPE_ENUM : int32
		{
			fcptNONE = 0,
			fcptLOCAL = 1,
			fcptSERVER = 2,
		}
		[AllowDuplicates]
		public enum FAX_SCHEDULE_TYPE_ENUM : int32
		{
			fstNOW = 0,
			fstSPECIFIC_TIME = 1,
			fstDISCOUNT_PERIOD = 2,
		}
		[AllowDuplicates]
		public enum FAX_PROVIDER_STATUS_ENUM : int32
		{
			fpsSUCCESS = 0,
			fpsSERVER_ERROR = 1,
			fpsBAD_GUID = 2,
			fpsBAD_VERSION = 3,
			fpsCANT_LOAD = 4,
			fpsCANT_LINK = 5,
			fpsCANT_INIT = 6,
		}
		[AllowDuplicates]
		public enum FAX_DEVICE_RECEIVE_MODE_ENUM : int32
		{
			fdrmNO_ANSWER = 0,
			fdrmAUTO_ANSWER = 1,
			fdrmMANUAL_ANSWER = 2,
		}
		[AllowDuplicates]
		public enum FAX_LOG_LEVEL_ENUM : int32
		{
			fllNONE = 0,
			fllMIN = 1,
			fllMED = 2,
			fllMAX = 3,
		}
		[AllowDuplicates]
		public enum FAX_GROUP_STATUS_ENUM : int32
		{
			fgsALL_DEV_VALID = 0,
			fgsEMPTY = 1,
			fgsALL_DEV_NOT_VALID = 2,
			fgsSOME_DEV_NOT_VALID = 3,
		}
		[AllowDuplicates]
		public enum FAX_RULE_STATUS_ENUM : int32
		{
			frsVALID = 0,
			frsEMPTY_GROUP = 1,
			frsALL_GROUP_DEV_NOT_VALID = 2,
			frsSOME_GROUP_DEV_NOT_VALID = 3,
			frsBAD_DEVICE = 4,
		}
		[AllowDuplicates]
		public enum FAX_ACCOUNT_EVENTS_TYPE_ENUM : int32
		{
			faetNONE = 0,
			faetIN_QUEUE = 1,
			faetOUT_QUEUE = 2,
			faetIN_ARCHIVE = 4,
			faetOUT_ARCHIVE = 8,
			faetFXSSVC_ENDED = 16,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum FAX_ROUTING_RULE_CODE_ENUM : int32
		{
			frrcANY_CODE = 0,
		}
		[AllowDuplicates]
		public enum FAXROUTE_ENABLE : int32
		{
			QUERY_STATUS = -1,
			STATUS_DISABLE = 0,
			STATUS_ENABLE = 1,
		}
		[AllowDuplicates]
		public enum FAX_ENUM_DEVICE_ID_SOURCE : int32
		{
			DEV_ID_SRC_FAX = 0,
			DEV_ID_SRC_TAPI = 1,
		}
		[AllowDuplicates]
		public enum SendToMode : int32
		{
			SEND_TO_FAX_RECIPIENT_ATTACHMENT = 0,
		}
		[AllowDuplicates]
		public enum STI_DEVICE_MJ_TYPE : int32
		{
			StiDeviceTypeDefault = 0,
			StiDeviceTypeScanner = 1,
			StiDeviceTypeDigitalCamera = 2,
			StiDeviceTypeStreamingVideo = 3,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PFAXCONNECTFAXSERVERA(PSTR MachineName, HANDLE* FaxHandle);
		public function BOOL PFAXCONNECTFAXSERVERW(PWSTR MachineName, HANDLE* FaxHandle);
		public function BOOL PFAXCLOSE(HANDLE FaxHandle);
		public function BOOL PFAXOPENPORT(HANDLE FaxHandle, uint32 DeviceId, uint32 Flags, HANDLE* FaxPortHandle);
		public function BOOL PFAXCOMPLETEJOBPARAMSA(FAX_JOB_PARAMA** JobParams, FAX_COVERPAGE_INFOA** CoverpageInfo);
		public function BOOL PFAXCOMPLETEJOBPARAMSW(FAX_JOB_PARAMW** JobParams, FAX_COVERPAGE_INFOW** CoverpageInfo);
		public function BOOL PFAXSENDDOCUMENTA(HANDLE FaxHandle, PSTR FileName, FAX_JOB_PARAMA* JobParams, FAX_COVERPAGE_INFOA* CoverpageInfo, uint32* FaxJobId);
		public function BOOL PFAXSENDDOCUMENTW(HANDLE FaxHandle, PWSTR FileName, FAX_JOB_PARAMW* JobParams, FAX_COVERPAGE_INFOW* CoverpageInfo, uint32* FaxJobId);
		public function BOOL PFAX_RECIPIENT_CALLBACKA(HANDLE FaxHandle, uint32 RecipientNumber, void* Context, FAX_JOB_PARAMA* JobParams, FAX_COVERPAGE_INFOA* CoverpageInfo);
		public function BOOL PFAX_RECIPIENT_CALLBACKW(HANDLE FaxHandle, uint32 RecipientNumber, void* Context, FAX_JOB_PARAMW* JobParams, FAX_COVERPAGE_INFOW* CoverpageInfo);
		public function BOOL PFAXSENDDOCUMENTFORBROADCASTA(HANDLE FaxHandle, PSTR FileName, uint32* FaxJobId, PFAX_RECIPIENT_CALLBACKA FaxRecipientCallback, void* Context);
		public function BOOL PFAXSENDDOCUMENTFORBROADCASTW(HANDLE FaxHandle, PWSTR FileName, uint32* FaxJobId, PFAX_RECIPIENT_CALLBACKW FaxRecipientCallback, void* Context);
		public function BOOL PFAXENUMJOBSA(HANDLE FaxHandle, FAX_JOB_ENTRYA** JobEntry, uint32* JobsReturned);
		public function BOOL PFAXENUMJOBSW(HANDLE FaxHandle, FAX_JOB_ENTRYW** JobEntry, uint32* JobsReturned);
		public function BOOL PFAXGETJOBA(HANDLE FaxHandle, uint32 JobId, FAX_JOB_ENTRYA** JobEntry);
		public function BOOL PFAXGETJOBW(HANDLE FaxHandle, uint32 JobId, FAX_JOB_ENTRYW** JobEntry);
		public function BOOL PFAXSETJOBA(HANDLE FaxHandle, uint32 JobId, uint32 Command, FAX_JOB_ENTRYA* JobEntry);
		public function BOOL PFAXSETJOBW(HANDLE FaxHandle, uint32 JobId, uint32 Command, FAX_JOB_ENTRYW* JobEntry);
		public function BOOL PFAXGETPAGEDATA(HANDLE FaxHandle, uint32 JobId, uint8** Buffer, uint32* BufferSize, uint32* ImageWidth, uint32* ImageHeight);
		public function BOOL PFAXGETDEVICESTATUSA(HANDLE FaxPortHandle, FAX_DEVICE_STATUSA** DeviceStatus);
		public function BOOL PFAXGETDEVICESTATUSW(HANDLE FaxPortHandle, FAX_DEVICE_STATUSW** DeviceStatus);
		public function BOOL PFAXABORT(HANDLE FaxHandle, uint32 JobId);
		public function BOOL PFAXGETCONFIGURATIONA(HANDLE FaxHandle, FAX_CONFIGURATIONA** FaxConfig);
		public function BOOL PFAXGETCONFIGURATIONW(HANDLE FaxHandle, FAX_CONFIGURATIONW** FaxConfig);
		public function BOOL PFAXSETCONFIGURATIONA(HANDLE FaxHandle, FAX_CONFIGURATIONA* FaxConfig);
		public function BOOL PFAXSETCONFIGURATIONW(HANDLE FaxHandle, FAX_CONFIGURATIONW* FaxConfig);
		public function BOOL PFAXGETLOGGINGCATEGORIESA(HANDLE FaxHandle, FAX_LOG_CATEGORYA** Categories, uint32* NumberCategories);
		public function BOOL PFAXGETLOGGINGCATEGORIESW(HANDLE FaxHandle, FAX_LOG_CATEGORYW** Categories, uint32* NumberCategories);
		public function BOOL PFAXSETLOGGINGCATEGORIESA(HANDLE FaxHandle, FAX_LOG_CATEGORYA* Categories, uint32 NumberCategories);
		public function BOOL PFAXSETLOGGINGCATEGORIESW(HANDLE FaxHandle, FAX_LOG_CATEGORYW* Categories, uint32 NumberCategories);
		public function BOOL PFAXENUMPORTSA(HANDLE FaxHandle, FAX_PORT_INFOA** PortInfo, uint32* PortsReturned);
		public function BOOL PFAXENUMPORTSW(HANDLE FaxHandle, FAX_PORT_INFOW** PortInfo, uint32* PortsReturned);
		public function BOOL PFAXGETPORTA(HANDLE FaxPortHandle, FAX_PORT_INFOA** PortInfo);
		public function BOOL PFAXGETPORTW(HANDLE FaxPortHandle, FAX_PORT_INFOW** PortInfo);
		public function BOOL PFAXSETPORTA(HANDLE FaxPortHandle, FAX_PORT_INFOA* PortInfo);
		public function BOOL PFAXSETPORTW(HANDLE FaxPortHandle, FAX_PORT_INFOW* PortInfo);
		public function BOOL PFAXENUMROUTINGMETHODSA(HANDLE FaxPortHandle, FAX_ROUTING_METHODA** RoutingMethod, uint32* MethodsReturned);
		public function BOOL PFAXENUMROUTINGMETHODSW(HANDLE FaxPortHandle, FAX_ROUTING_METHODW** RoutingMethod, uint32* MethodsReturned);
		public function BOOL PFAXENABLEROUTINGMETHODA(HANDLE FaxPortHandle, PSTR RoutingGuid, BOOL Enabled);
		public function BOOL PFAXENABLEROUTINGMETHODW(HANDLE FaxPortHandle, PWSTR RoutingGuid, BOOL Enabled);
		public function BOOL PFAXENUMGLOBALROUTINGINFOA(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOA** RoutingInfo, uint32* MethodsReturned);
		public function BOOL PFAXENUMGLOBALROUTINGINFOW(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOW** RoutingInfo, uint32* MethodsReturned);
		public function BOOL PFAXSETGLOBALROUTINGINFOA(HANDLE FaxPortHandle, FAX_GLOBAL_ROUTING_INFOA* RoutingInfo);
		public function BOOL PFAXSETGLOBALROUTINGINFOW(HANDLE FaxPortHandle, FAX_GLOBAL_ROUTING_INFOW* RoutingInfo);
		public function BOOL PFAXGETROUTINGINFOA(HANDLE FaxPortHandle, PSTR RoutingGuid, uint8** RoutingInfoBuffer, uint32* RoutingInfoBufferSize);
		public function BOOL PFAXGETROUTINGINFOW(HANDLE FaxPortHandle, PWSTR RoutingGuid, uint8** RoutingInfoBuffer, uint32* RoutingInfoBufferSize);
		public function BOOL PFAXSETROUTINGINFOA(HANDLE FaxPortHandle, PSTR RoutingGuid, uint8* RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		public function BOOL PFAXSETROUTINGINFOW(HANDLE FaxPortHandle, PWSTR RoutingGuid, uint8* RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		public function BOOL PFAXINITIALIZEEVENTQUEUE(HANDLE FaxHandle, HANDLE CompletionPort, uint CompletionKey, HWND hWnd, uint32 MessageStart);
		public function void PFAXFREEBUFFER(void* Buffer);
		public function BOOL PFAXSTARTPRINTJOBA(PSTR PrinterName, FAX_PRINT_INFOA* PrintInfo, uint32* FaxJobId, FAX_CONTEXT_INFOA* FaxContextInfo);
		public function BOOL PFAXSTARTPRINTJOBW(PWSTR PrinterName, FAX_PRINT_INFOW* PrintInfo, uint32* FaxJobId, FAX_CONTEXT_INFOW* FaxContextInfo);
		public function BOOL PFAXPRINTCOVERPAGEA(FAX_CONTEXT_INFOA* FaxContextInfo, FAX_COVERPAGE_INFOA* CoverPageInfo);
		public function BOOL PFAXPRINTCOVERPAGEW(FAX_CONTEXT_INFOW* FaxContextInfo, FAX_COVERPAGE_INFOW* CoverPageInfo);
		public function BOOL PFAXREGISTERSERVICEPROVIDERW(PWSTR DeviceProvider, PWSTR FriendlyName, PWSTR ImageName, PWSTR TspName);
		public function BOOL PFAXUNREGISTERSERVICEPROVIDERW(PWSTR DeviceProvider);
		public function BOOL PFAX_ROUTING_INSTALLATION_CALLBACKW(HANDLE FaxHandle, void* Context, PWSTR MethodName, PWSTR FriendlyName, PWSTR FunctionName, PWSTR Guid);
		public function BOOL PFAXREGISTERROUTINGEXTENSIONW(HANDLE FaxHandle, PWSTR ExtensionName, PWSTR FriendlyName, PWSTR ImageName, PFAX_ROUTING_INSTALLATION_CALLBACKW CallBack, void* Context);
		public function BOOL PFAXACCESSCHECK(HANDLE FaxHandle, uint32 AccessMask);
		public function BOOL PFAX_SERVICE_CALLBACK(HANDLE FaxHandle, uint32 DeviceId, uint Param1, uint Param2, uint Param3);
		public function void PFAX_LINECALLBACK(HANDLE FaxHandle, uint32 hDevice, uint32 dwMessage, uint dwInstance, uint dwParam1, uint dwParam2, uint dwParam3);
		public function BOOL PFAX_SEND_CALLBACK(HANDLE FaxHandle, uint32 CallHandle, uint32 Reserved1, uint32 Reserved2);
		public function BOOL PFAXDEVINITIALIZE(uint32 param0, HANDLE param1, PFAX_LINECALLBACK* param2, PFAX_SERVICE_CALLBACK param3);
		public function BOOL PFAXDEVVIRTUALDEVICECREATION(uint32* DeviceCount, char16* DeviceNamePrefix, uint32* DeviceIdPrefix, HANDLE CompletionPort, uint CompletionKey);
		public function BOOL PFAXDEVSTARTJOB(uint32 param0, uint32 param1, HANDLE* param2, HANDLE param3, uint param4);
		public function BOOL PFAXDEVENDJOB(HANDLE param0);
		public function BOOL PFAXDEVSEND(HANDLE param0, FAX_SEND* param1, PFAX_SEND_CALLBACK param2);
		public function BOOL PFAXDEVRECEIVE(HANDLE param0, uint32 param1, FAX_RECEIVE* param2);
		public function BOOL PFAXDEVREPORTSTATUS(HANDLE param0, FAX_DEV_STATUS* param1, uint32 param2, uint32* param3);
		public function BOOL PFAXDEVABORTOPERATION(HANDLE param0);
		public function BOOL PFAXDEVCONFIGURE(HPROPSHEETPAGE* param0);
		public function HRESULT PFAXDEVSHUTDOWN();
		public function int32 PFAXROUTEADDFILE(uint32 JobId, PWSTR FileName, Guid* Guid);
		public function int32 PFAXROUTEDELETEFILE(uint32 JobId, PWSTR FileName);
		public function BOOL PFAXROUTEGETFILE(uint32 JobId, uint32 Index, PWSTR FileNameBuffer, uint32* RequiredSize);
		public function BOOL PFAXROUTEENUMFILE(uint32 JobId, Guid* GuidOwner, Guid* GuidCaller, PWSTR FileName, void* Context);
		public function BOOL PFAXROUTEENUMFILES(uint32 JobId, Guid* Guid, PFAXROUTEENUMFILE FileEnumerator, void* Context);
		public function BOOL PFAXROUTEMODIFYROUTINGDATA(uint32 JobId, PWSTR RoutingGuid, uint8* RoutingData, uint32 RoutingDataSize);
		public function BOOL PFAXROUTEINITIALIZE(HANDLE param0, FAX_ROUTE_CALLBACKROUTINES* param1);
		public function BOOL PFAXROUTEMETHOD(FAX_ROUTE* param0, void** param1, uint32* param2);
		public function BOOL PFAXROUTEDEVICEENABLE(PWSTR param0, uint32 param1, int32 param2);
		public function BOOL PFAXROUTEDEVICECHANGENOTIFICATION(uint32 param0, BOOL param1);
		public function BOOL PFAXROUTEGETROUTINGINFO(PWSTR param0, uint32 param1, uint8* param2, uint32* param3);
		public function BOOL PFAXROUTESETROUTINGINFO(PWSTR param0, uint32 param1, uint8* param2, uint32 param3);
		public function uint32 PFAX_EXT_GET_DATA(uint32 param0, FAX_ENUM_DEVICE_ID_SOURCE param1, PWSTR param2, uint8** param3, uint32* param4);
		public function uint32 PFAX_EXT_SET_DATA(HINSTANCE param0, uint32 param1, FAX_ENUM_DEVICE_ID_SOURCE param2, PWSTR param3, uint8* param4, uint32 param5);
		public function HRESULT PFAX_EXT_CONFIG_CHANGE(uint32 param0, PWSTR param1, uint8* param2, uint32 param3);
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
		public struct IStiDeviceW
		{
		}
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
		
		public struct IFaxJobStatus {}
		public struct IFaxServer {}
		public struct IFaxDeviceProviders {}
		public struct IFaxDevices {}
		public struct IFaxInboundRouting {}
		public struct IFaxFolders {}
		public struct IFaxLoggingOptions {}
		public struct IFaxActivity {}
		public struct IFaxOutboundRouting {}
		public struct IFaxReceiptOptions {}
		public struct IFaxSecurity {}
		public struct IFaxDocument {}
		public struct IFaxSender {}
		public struct IFaxRecipient {}
		public struct IFaxRecipients {}
		public struct IFaxIncomingArchive {}
		public struct IFaxIncomingQueue {}
		public struct IFaxOutgoingArchive {}
		public struct IFaxOutgoingQueue {}
		public struct IFaxIncomingMessageIterator {}
		public struct IFaxIncomingMessage {}
		public struct IFaxOutgoingJobs {}
		public struct IFaxOutgoingJob {}
		public struct IFaxOutgoingMessageIterator {}
		public struct IFaxOutgoingMessage {}
		public struct IFaxIncomingJobs {}
		public struct IFaxIncomingJob {}
		public struct IFaxDeviceProvider {}
		public struct IFaxDevice {}
		public struct IFaxActivityLogging {}
		public struct IFaxEventLogging {}
		public struct IFaxOutboundRoutingGroups {}
		public struct IFaxOutboundRoutingGroup {}
		public struct IFaxDeviceIds {}
		public struct IFaxOutboundRoutingRules {}
		public struct IFaxOutboundRoutingRule {}
		public struct IFaxInboundRoutingExtensions {}
		public struct IFaxInboundRoutingExtension {}
		public struct IFaxInboundRoutingMethods {}
		public struct IFaxInboundRoutingMethod {}
		public struct IFaxDocument2 {}
		public struct IFaxConfiguration {}
		public struct IFaxServer2 {}
		public struct IFaxAccountSet {}
		public struct IFaxAccounts {}
		public struct IFaxAccount {}
		public struct IFaxOutgoingJob2 {}
		public struct IFaxAccountFolders {}
		public struct IFaxAccountIncomingQueue {}
		public struct IFaxAccountOutgoingQueue {}
		public struct IFaxOutgoingMessage2 {}
		public struct IFaxAccountIncomingArchive {}
		public struct IFaxAccountOutgoingArchive {}
		public struct IFaxSecurity2 {}
		public struct IFaxIncomingMessage2 {}
		public struct IFaxServerNotify {}
		public struct _IFaxServerNotify2 {}
		public struct IFaxServerNotify2 {}
		public struct _IFaxAccountNotify {}
		public struct IFaxAccountNotify {}
		public struct IStillImageW {}
		public struct IStiDevice {}
		public struct IStiDeviceControl {}
		public struct IStiUSD {}
		
		// --- Functions ---
		
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxConnectFaxServerA(PSTR MachineName, HANDLE* FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxConnectFaxServerW(PWSTR MachineName, HANDLE* FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxClose(HANDLE FaxHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxOpenPort(HANDLE FaxHandle, uint32 DeviceId, uint32 Flags, HANDLE* FaxPortHandle);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxCompleteJobParamsA(FAX_JOB_PARAMA** JobParams, FAX_COVERPAGE_INFOA** CoverpageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxCompleteJobParamsW(FAX_JOB_PARAMW** JobParams, FAX_COVERPAGE_INFOW** CoverpageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentA(HANDLE FaxHandle, PSTR FileName, FAX_JOB_PARAMA* JobParams, FAX_COVERPAGE_INFOA* CoverpageInfo, uint32* FaxJobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentW(HANDLE FaxHandle, PWSTR FileName, FAX_JOB_PARAMW* JobParams, FAX_COVERPAGE_INFOW* CoverpageInfo, uint32* FaxJobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentForBroadcastA(HANDLE FaxHandle, PSTR FileName, uint32* FaxJobId, PFAX_RECIPIENT_CALLBACKA FaxRecipientCallback, void* Context);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSendDocumentForBroadcastW(HANDLE FaxHandle, PWSTR FileName, uint32* FaxJobId, PFAX_RECIPIENT_CALLBACKW FaxRecipientCallback, void* Context);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumJobsA(HANDLE FaxHandle, FAX_JOB_ENTRYA** JobEntry, uint32* JobsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumJobsW(HANDLE FaxHandle, FAX_JOB_ENTRYW** JobEntry, uint32* JobsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetJobA(HANDLE FaxHandle, uint32 JobId, FAX_JOB_ENTRYA** JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetJobW(HANDLE FaxHandle, uint32 JobId, FAX_JOB_ENTRYW** JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetJobA(HANDLE FaxHandle, uint32 JobId, uint32 Command, FAX_JOB_ENTRYA* JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetJobW(HANDLE FaxHandle, uint32 JobId, uint32 Command, FAX_JOB_ENTRYW* JobEntry);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPageData(HANDLE FaxHandle, uint32 JobId, uint8** Buffer, uint32* BufferSize, uint32* ImageWidth, uint32* ImageHeight);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetDeviceStatusA(HANDLE FaxPortHandle, FAX_DEVICE_STATUSA** DeviceStatus);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetDeviceStatusW(HANDLE FaxPortHandle, FAX_DEVICE_STATUSW** DeviceStatus);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxAbort(HANDLE FaxHandle, uint32 JobId);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetConfigurationA(HANDLE FaxHandle, FAX_CONFIGURATIONA** FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetConfigurationW(HANDLE FaxHandle, FAX_CONFIGURATIONW** FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetConfigurationA(HANDLE FaxHandle, FAX_CONFIGURATIONA* FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetConfigurationW(HANDLE FaxHandle, FAX_CONFIGURATIONW* FaxConfig);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetLoggingCategoriesA(HANDLE FaxHandle, FAX_LOG_CATEGORYA** Categories, uint32* NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetLoggingCategoriesW(HANDLE FaxHandle, FAX_LOG_CATEGORYW** Categories, uint32* NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetLoggingCategoriesA(HANDLE FaxHandle, FAX_LOG_CATEGORYA* Categories, uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetLoggingCategoriesW(HANDLE FaxHandle, FAX_LOG_CATEGORYW* Categories, uint32 NumberCategories);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumPortsA(HANDLE FaxHandle, FAX_PORT_INFOA** PortInfo, uint32* PortsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumPortsW(HANDLE FaxHandle, FAX_PORT_INFOW** PortInfo, uint32* PortsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPortA(HANDLE FaxPortHandle, FAX_PORT_INFOA** PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetPortW(HANDLE FaxPortHandle, FAX_PORT_INFOW** PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetPortA(HANDLE FaxPortHandle, FAX_PORT_INFOA* PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetPortW(HANDLE FaxPortHandle, FAX_PORT_INFOW* PortInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumRoutingMethodsA(HANDLE FaxPortHandle, FAX_ROUTING_METHODA** RoutingMethod, uint32* MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumRoutingMethodsW(HANDLE FaxPortHandle, FAX_ROUTING_METHODW** RoutingMethod, uint32* MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnableRoutingMethodA(HANDLE FaxPortHandle, PSTR RoutingGuid, BOOL Enabled);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnableRoutingMethodW(HANDLE FaxPortHandle, PWSTR RoutingGuid, BOOL Enabled);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumGlobalRoutingInfoA(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOA** RoutingInfo, uint32* MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxEnumGlobalRoutingInfoW(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOW** RoutingInfo, uint32* MethodsReturned);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetGlobalRoutingInfoA(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOA* RoutingInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetGlobalRoutingInfoW(HANDLE FaxHandle, FAX_GLOBAL_ROUTING_INFOW* RoutingInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetRoutingInfoA(HANDLE FaxPortHandle, PSTR RoutingGuid, uint8** RoutingInfoBuffer, uint32* RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxGetRoutingInfoW(HANDLE FaxPortHandle, PWSTR RoutingGuid, uint8** RoutingInfoBuffer, uint32* RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetRoutingInfoA(HANDLE FaxPortHandle, PSTR RoutingGuid, uint8* RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxSetRoutingInfoW(HANDLE FaxPortHandle, PWSTR RoutingGuid, uint8* RoutingInfoBuffer, uint32 RoutingInfoBufferSize);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxInitializeEventQueue(HANDLE FaxHandle, HANDLE CompletionPort, uint CompletionKey, HWND hWnd, uint32 MessageStart);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FaxFreeBuffer(void* Buffer);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxStartPrintJobA(PSTR PrinterName, FAX_PRINT_INFOA* PrintInfo, uint32* FaxJobId, FAX_CONTEXT_INFOA* FaxContextInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxStartPrintJobW(PWSTR PrinterName, FAX_PRINT_INFOW* PrintInfo, uint32* FaxJobId, FAX_CONTEXT_INFOW* FaxContextInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxPrintCoverPageA(FAX_CONTEXT_INFOA* FaxContextInfo, FAX_COVERPAGE_INFOA* CoverPageInfo);
		[Import("winfax.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FaxPrintCoverPageW(FAX_CONTEXT_INFOW* FaxContextInfo, FAX_COVERPAGE_INFOW* CoverPageInfo);
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
		public static extern HRESULT StiCreateInstanceW(HINSTANCE hinst, uint32 dwVer, IStillImageW* ppSti, IUnknown punkOuter);
		
	}
}
