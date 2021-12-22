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
		
		[CRepr]
		public struct IFaxJobStatus : IDispatch
		{
			public const new Guid IID = .(0x8b86f485, 0xfd7f, 0x4824, 0x88, 0x6b, 0x40, 0xc5, 0xca, 0xa6, 0x17, 0xcc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxJobStatus *self, FAX_JOB_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxJobStatus *self, int32* plPages) get_Pages;
				public function HRESULT(IFaxJobStatus *self, int32* plSize) get_Size;
				public function HRESULT(IFaxJobStatus *self, int32* plCurrentPage) get_CurrentPage;
				public function HRESULT(IFaxJobStatus *self, int32* plDeviceId) get_DeviceId;
				public function HRESULT(IFaxJobStatus *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxJobStatus *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxJobStatus *self, FAX_JOB_EXTENDED_STATUS_ENUM* pExtendedStatusCode) get_ExtendedStatusCode;
				public function HRESULT(IFaxJobStatus *self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public function HRESULT(IFaxJobStatus *self, FAX_JOB_OPERATIONS_ENUM* pAvailableOperations) get_AvailableOperations;
				public function HRESULT(IFaxJobStatus *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxJobStatus *self, FAX_JOB_TYPE_ENUM* pJobType) get_JobType;
				public function HRESULT(IFaxJobStatus *self, double* pdateScheduledTime) get_ScheduledTime;
				public function HRESULT(IFaxJobStatus *self, double* pdateTransmissionStart) get_TransmissionStart;
				public function HRESULT(IFaxJobStatus *self, double* pdateTransmissionEnd) get_TransmissionEnd;
				public function HRESULT(IFaxJobStatus *self, BSTR* pbstrCallerId) get_CallerId;
				public function HRESULT(IFaxJobStatus *self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
			}
		}
		[CRepr]
		public struct IFaxServer : IDispatch
		{
			public const new Guid IID = .(0x475b6469, 0x90a5, 0x4878, 0xa5, 0x77, 0x17, 0xa8, 0x6e, 0x8e, 0x34, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxServer *self, BSTR bstrServerName) Connect;
				public function HRESULT(IFaxServer *self, BSTR* pbstrServerName) get_ServerName;
				public function HRESULT(IFaxServer *self, IFaxDeviceProviders** ppFaxDeviceProviders) GetDeviceProviders;
				public function HRESULT(IFaxServer *self, IFaxDevices** ppFaxDevices) GetDevices;
				public function HRESULT(IFaxServer *self, IFaxInboundRouting** ppFaxInboundRouting) get_InboundRouting;
				public function HRESULT(IFaxServer *self, IFaxFolders** pFaxFolders) get_Folders;
				public function HRESULT(IFaxServer *self, IFaxLoggingOptions** ppFaxLoggingOptions) get_LoggingOptions;
				public function HRESULT(IFaxServer *self, int32* plMajorVersion) get_MajorVersion;
				public function HRESULT(IFaxServer *self, int32* plMinorVersion) get_MinorVersion;
				public function HRESULT(IFaxServer *self, int32* plMajorBuild) get_MajorBuild;
				public function HRESULT(IFaxServer *self, int32* plMinorBuild) get_MinorBuild;
				public function HRESULT(IFaxServer *self, int16* pbDebug) get_Debug;
				public function HRESULT(IFaxServer *self, IFaxActivity** ppFaxActivity) get_Activity;
				public function HRESULT(IFaxServer *self, IFaxOutboundRouting** ppFaxOutboundRouting) get_OutboundRouting;
				public function HRESULT(IFaxServer *self, IFaxReceiptOptions** ppFaxReceiptOptions) get_ReceiptOptions;
				public function HRESULT(IFaxServer *self, IFaxSecurity** ppFaxSecurity) get_Security;
				public function HRESULT(IFaxServer *self) Disconnect;
				public function HRESULT(IFaxServer *self, BSTR bstrGUID, VARIANT* pvProperty) GetExtensionProperty;
				public function HRESULT(IFaxServer *self, BSTR bstrGUID, VARIANT vProperty) SetExtensionProperty;
				public function HRESULT(IFaxServer *self, FAX_SERVER_EVENTS_TYPE_ENUM EventTypes) ListenToServerEvents;
				public function HRESULT(IFaxServer *self, BSTR bstrGUID, BSTR bstrFriendlyName, BSTR bstrImageName, BSTR TspName, int32 lFSPIVersion) RegisterDeviceProvider;
				public function HRESULT(IFaxServer *self, BSTR bstrUniqueName) UnregisterDeviceProvider;
				public function HRESULT(IFaxServer *self, BSTR bstrExtensionName, BSTR bstrFriendlyName, BSTR bstrImageName, VARIANT vMethods) RegisterInboundRoutingExtension;
				public function HRESULT(IFaxServer *self, BSTR bstrExtensionUniqueName) UnregisterInboundRoutingExtension;
				public function HRESULT(IFaxServer *self, FAX_SERVER_EVENTS_TYPE_ENUM* pEventTypes) get_RegisteredEvents;
				public function HRESULT(IFaxServer *self, FAX_SERVER_APIVERSION_ENUM* pAPIVersion) get_APIVersion;
			}
		}
		[CRepr]
		public struct IFaxDeviceProviders : IDispatch
		{
			public const new Guid IID = .(0x9fb76f62, 0x4c7e, 0x43a5, 0xb6, 0xfd, 0x50, 0x28, 0x93, 0xf7, 0xe1, 0x3e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDeviceProviders *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxDeviceProviders *self, VARIANT vIndex, IFaxDeviceProvider** pFaxDeviceProvider) get_Item;
				public function HRESULT(IFaxDeviceProviders *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxDevices : IDispatch
		{
			public const new Guid IID = .(0x9e46783e, 0xf34f, 0x482e, 0xa3, 0x60, 0x04, 0x16, 0xbe, 0xcb, 0xbd, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDevices *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxDevices *self, VARIANT vIndex, IFaxDevice** pFaxDevice) get_Item;
				public function HRESULT(IFaxDevices *self, int32* plCount) get_Count;
				public function HRESULT(IFaxDevices *self, int32 lId, IFaxDevice** ppFaxDevice) get_ItemById;
			}
		}
		[CRepr]
		public struct IFaxInboundRouting : IDispatch
		{
			public const new Guid IID = .(0x8148c20f, 0x9d52, 0x45b1, 0xbf, 0x96, 0x38, 0xfc, 0x12, 0x71, 0x35, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxInboundRouting *self, IFaxInboundRoutingExtensions** pFaxInboundRoutingExtensions) GetExtensions;
				public function HRESULT(IFaxInboundRouting *self, IFaxInboundRoutingMethods** pFaxInboundRoutingMethods) GetMethods;
			}
		}
		[CRepr]
		public struct IFaxFolders : IDispatch
		{
			public const new Guid IID = .(0xdce3b2a8, 0xa7ab, 0x42bc, 0x9d, 0x0a, 0x31, 0x49, 0x45, 0x72, 0x61, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxFolders *self, IFaxOutgoingQueue** pFaxOutgoingQueue) get_OutgoingQueue;
				public function HRESULT(IFaxFolders *self, IFaxIncomingQueue** pFaxIncomingQueue) get_IncomingQueue;
				public function HRESULT(IFaxFolders *self, IFaxIncomingArchive** pFaxIncomingArchive) get_IncomingArchive;
				public function HRESULT(IFaxFolders *self, IFaxOutgoingArchive** pFaxOutgoingArchive) get_OutgoingArchive;
			}
		}
		[CRepr]
		public struct IFaxLoggingOptions : IDispatch
		{
			public const new Guid IID = .(0x34e64fb9, 0x6b31, 0x4d32, 0x8b, 0x27, 0xd2, 0x86, 0xc0, 0xc3, 0x36, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxLoggingOptions *self, IFaxEventLogging** pFaxEventLogging) get_EventLogging;
				public function HRESULT(IFaxLoggingOptions *self, IFaxActivityLogging** pFaxActivityLogging) get_ActivityLogging;
			}
		}
		[CRepr]
		public struct IFaxActivity : IDispatch
		{
			public const new Guid IID = .(0x4b106f97, 0x3df5, 0x40f2, 0xbc, 0x3c, 0x44, 0xcb, 0x81, 0x15, 0xeb, 0xdf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxActivity *self, int32* plIncomingMessages) get_IncomingMessages;
				public function HRESULT(IFaxActivity *self, int32* plRoutingMessages) get_RoutingMessages;
				public function HRESULT(IFaxActivity *self, int32* plOutgoingMessages) get_OutgoingMessages;
				public function HRESULT(IFaxActivity *self, int32* plQueuedMessages) get_QueuedMessages;
				public function HRESULT(IFaxActivity *self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxOutboundRouting : IDispatch
		{
			public const new Guid IID = .(0x25dc05a4, 0x9909, 0x41bd, 0xa9, 0x5b, 0x7e, 0x5d, 0x1d, 0xec, 0x1d, 0x43);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutboundRouting *self, IFaxOutboundRoutingGroups** pFaxOutboundRoutingGroups) GetGroups;
				public function HRESULT(IFaxOutboundRouting *self, IFaxOutboundRoutingRules** pFaxOutboundRoutingRules) GetRules;
			}
		}
		[CRepr]
		public struct IFaxReceiptOptions : IDispatch
		{
			public const new Guid IID = .(0x378efaeb, 0x5fcb, 0x4afb, 0xb2, 0xee, 0xe1, 0x6e, 0x80, 0x61, 0x44, 0x87);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxReceiptOptions *self, FAX_SMTP_AUTHENTICATION_TYPE_ENUM* pType) get_AuthenticationType;
				public function HRESULT(IFaxReceiptOptions *self, FAX_SMTP_AUTHENTICATION_TYPE_ENUM Type) put_AuthenticationType;
				public function HRESULT(IFaxReceiptOptions *self, BSTR* pbstrSMTPServer) get_SMTPServer;
				public function HRESULT(IFaxReceiptOptions *self, BSTR bstrSMTPServer) put_SMTPServer;
				public function HRESULT(IFaxReceiptOptions *self, int32* plSMTPPort) get_SMTPPort;
				public function HRESULT(IFaxReceiptOptions *self, int32 lSMTPPort) put_SMTPPort;
				public function HRESULT(IFaxReceiptOptions *self, BSTR* pbstrSMTPSender) get_SMTPSender;
				public function HRESULT(IFaxReceiptOptions *self, BSTR bstrSMTPSender) put_SMTPSender;
				public function HRESULT(IFaxReceiptOptions *self, BSTR* pbstrSMTPUser) get_SMTPUser;
				public function HRESULT(IFaxReceiptOptions *self, BSTR bstrSMTPUser) put_SMTPUser;
				public function HRESULT(IFaxReceiptOptions *self, FAX_RECEIPT_TYPE_ENUM* pAllowedReceipts) get_AllowedReceipts;
				public function HRESULT(IFaxReceiptOptions *self, FAX_RECEIPT_TYPE_ENUM AllowedReceipts) put_AllowedReceipts;
				public function HRESULT(IFaxReceiptOptions *self, BSTR* pbstrSMTPPassword) get_SMTPPassword;
				public function HRESULT(IFaxReceiptOptions *self, BSTR bstrSMTPPassword) put_SMTPPassword;
				public function HRESULT(IFaxReceiptOptions *self) Refresh;
				public function HRESULT(IFaxReceiptOptions *self) Save;
				public function HRESULT(IFaxReceiptOptions *self, int16* pbUseForInboundRouting) get_UseForInboundRouting;
				public function HRESULT(IFaxReceiptOptions *self, int16 bUseForInboundRouting) put_UseForInboundRouting;
			}
		}
		[CRepr]
		public struct IFaxSecurity : IDispatch
		{
			public const new Guid IID = .(0x77b508c1, 0x09c0, 0x47a2, 0x91, 0xeb, 0xfc, 0xe7, 0xfd, 0xf2, 0x69, 0x0e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxSecurity *self, VARIANT* pvDescriptor) get_Descriptor;
				public function HRESULT(IFaxSecurity *self, VARIANT vDescriptor) put_Descriptor;
				public function HRESULT(IFaxSecurity *self, FAX_ACCESS_RIGHTS_ENUM* pGrantedRights) get_GrantedRights;
				public function HRESULT(IFaxSecurity *self) Refresh;
				public function HRESULT(IFaxSecurity *self) Save;
				public function HRESULT(IFaxSecurity *self, int32* plInformationType) get_InformationType;
				public function HRESULT(IFaxSecurity *self, int32 lInformationType) put_InformationType;
			}
		}
		[CRepr]
		public struct IFaxDocument : IDispatch
		{
			public const new Guid IID = .(0xb207a246, 0x09e3, 0x4a4e, 0xa7, 0xdc, 0xfe, 0xa3, 0x1d, 0x29, 0x45, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDocument *self, BSTR* pbstrBody) get_Body;
				public function HRESULT(IFaxDocument *self, BSTR bstrBody) put_Body;
				public function HRESULT(IFaxDocument *self, IFaxSender** ppFaxSender) get_Sender;
				public function HRESULT(IFaxDocument *self, IFaxRecipients** ppFaxRecipients) get_Recipients;
				public function HRESULT(IFaxDocument *self, BSTR* pbstrCoverPage) get_CoverPage;
				public function HRESULT(IFaxDocument *self, BSTR bstrCoverPage) put_CoverPage;
				public function HRESULT(IFaxDocument *self, BSTR* pbstrSubject) get_Subject;
				public function HRESULT(IFaxDocument *self, BSTR bstrSubject) put_Subject;
				public function HRESULT(IFaxDocument *self, BSTR* pbstrNote) get_Note;
				public function HRESULT(IFaxDocument *self, BSTR bstrNote) put_Note;
				public function HRESULT(IFaxDocument *self, double* pdateScheduleTime) get_ScheduleTime;
				public function HRESULT(IFaxDocument *self, double dateScheduleTime) put_ScheduleTime;
				public function HRESULT(IFaxDocument *self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public function HRESULT(IFaxDocument *self, BSTR bstrReceiptAddress) put_ReceiptAddress;
				public function HRESULT(IFaxDocument *self, BSTR* pbstrDocumentName) get_DocumentName;
				public function HRESULT(IFaxDocument *self, BSTR bstrDocumentName) put_DocumentName;
				public function HRESULT(IFaxDocument *self, int32* plCallHandle) get_CallHandle;
				public function HRESULT(IFaxDocument *self, int32 lCallHandle) put_CallHandle;
				public function HRESULT(IFaxDocument *self, FAX_COVERPAGE_TYPE_ENUM* pCoverPageType) get_CoverPageType;
				public function HRESULT(IFaxDocument *self, FAX_COVERPAGE_TYPE_ENUM CoverPageType) put_CoverPageType;
				public function HRESULT(IFaxDocument *self, FAX_SCHEDULE_TYPE_ENUM* pScheduleType) get_ScheduleType;
				public function HRESULT(IFaxDocument *self, FAX_SCHEDULE_TYPE_ENUM ScheduleType) put_ScheduleType;
				public function HRESULT(IFaxDocument *self, FAX_RECEIPT_TYPE_ENUM* pReceiptType) get_ReceiptType;
				public function HRESULT(IFaxDocument *self, FAX_RECEIPT_TYPE_ENUM ReceiptType) put_ReceiptType;
				public function HRESULT(IFaxDocument *self, int16* pbUseGrouping) get_GroupBroadcastReceipts;
				public function HRESULT(IFaxDocument *self, int16 bUseGrouping) put_GroupBroadcastReceipts;
				public function HRESULT(IFaxDocument *self, FAX_PRIORITY_TYPE_ENUM* pPriority) get_Priority;
				public function HRESULT(IFaxDocument *self, FAX_PRIORITY_TYPE_ENUM Priority) put_Priority;
				public function HRESULT(IFaxDocument *self, IDispatch** ppTapiConnection) get_TapiConnection;
				public function HRESULT(IFaxDocument *self, IDispatch* pTapiConnection) putref_TapiConnection;
				public function HRESULT(IFaxDocument *self, BSTR bstrFaxServerName, VARIANT* pvFaxOutgoingJobIDs) Submit;
				public function HRESULT(IFaxDocument *self, IFaxServer* pFaxServer, VARIANT* pvFaxOutgoingJobIDs) ConnectedSubmit;
				public function HRESULT(IFaxDocument *self, int16* pbAttachFax) get_AttachFaxToReceipt;
				public function HRESULT(IFaxDocument *self, int16 bAttachFax) put_AttachFaxToReceipt;
			}
		}
		[CRepr]
		public struct IFaxSender : IDispatch
		{
			public const new Guid IID = .(0x0d879d7d, 0xf57a, 0x4cc6, 0xa6, 0xf9, 0x3e, 0xe5, 0xd5, 0x27, 0xb4, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxSender *self, BSTR* pbstrBillingCode) get_BillingCode;
				public function HRESULT(IFaxSender *self, BSTR bstrBillingCode) put_BillingCode;
				public function HRESULT(IFaxSender *self, BSTR* pbstrCity) get_City;
				public function HRESULT(IFaxSender *self, BSTR bstrCity) put_City;
				public function HRESULT(IFaxSender *self, BSTR* pbstrCompany) get_Company;
				public function HRESULT(IFaxSender *self, BSTR bstrCompany) put_Company;
				public function HRESULT(IFaxSender *self, BSTR* pbstrCountry) get_Country;
				public function HRESULT(IFaxSender *self, BSTR bstrCountry) put_Country;
				public function HRESULT(IFaxSender *self, BSTR* pbstrDepartment) get_Department;
				public function HRESULT(IFaxSender *self, BSTR bstrDepartment) put_Department;
				public function HRESULT(IFaxSender *self, BSTR* pbstrEmail) get_Email;
				public function HRESULT(IFaxSender *self, BSTR bstrEmail) put_Email;
				public function HRESULT(IFaxSender *self, BSTR* pbstrFaxNumber) get_FaxNumber;
				public function HRESULT(IFaxSender *self, BSTR bstrFaxNumber) put_FaxNumber;
				public function HRESULT(IFaxSender *self, BSTR* pbstrHomePhone) get_HomePhone;
				public function HRESULT(IFaxSender *self, BSTR bstrHomePhone) put_HomePhone;
				public function HRESULT(IFaxSender *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IFaxSender *self, BSTR bstrName) put_Name;
				public function HRESULT(IFaxSender *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxSender *self, BSTR bstrTSID) put_TSID;
				public function HRESULT(IFaxSender *self, BSTR* pbstrOfficePhone) get_OfficePhone;
				public function HRESULT(IFaxSender *self, BSTR bstrOfficePhone) put_OfficePhone;
				public function HRESULT(IFaxSender *self, BSTR* pbstrOfficeLocation) get_OfficeLocation;
				public function HRESULT(IFaxSender *self, BSTR bstrOfficeLocation) put_OfficeLocation;
				public function HRESULT(IFaxSender *self, BSTR* pbstrState) get_State;
				public function HRESULT(IFaxSender *self, BSTR bstrState) put_State;
				public function HRESULT(IFaxSender *self, BSTR* pbstrStreetAddress) get_StreetAddress;
				public function HRESULT(IFaxSender *self, BSTR bstrStreetAddress) put_StreetAddress;
				public function HRESULT(IFaxSender *self, BSTR* pbstrTitle) get_Title;
				public function HRESULT(IFaxSender *self, BSTR bstrTitle) put_Title;
				public function HRESULT(IFaxSender *self, BSTR* pbstrZipCode) get_ZipCode;
				public function HRESULT(IFaxSender *self, BSTR bstrZipCode) put_ZipCode;
				public function HRESULT(IFaxSender *self) LoadDefaultSender;
				public function HRESULT(IFaxSender *self) SaveDefaultSender;
			}
		}
		[CRepr]
		public struct IFaxRecipient : IDispatch
		{
			public const new Guid IID = .(0x9a3da3a0, 0x538d, 0x42b6, 0x94, 0x44, 0xaa, 0xa5, 0x7d, 0x0c, 0xe2, 0xbc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxRecipient *self, BSTR* pbstrFaxNumber) get_FaxNumber;
				public function HRESULT(IFaxRecipient *self, BSTR bstrFaxNumber) put_FaxNumber;
				public function HRESULT(IFaxRecipient *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IFaxRecipient *self, BSTR bstrName) put_Name;
			}
		}
		[CRepr]
		public struct IFaxRecipients : IDispatch
		{
			public const new Guid IID = .(0xb9c9de5a, 0x894e, 0x4492, 0x9f, 0xa3, 0x08, 0xc6, 0x27, 0xc1, 0x1d, 0x5d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxRecipients *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxRecipients *self, int32 lIndex, IFaxRecipient** ppFaxRecipient) get_Item;
				public function HRESULT(IFaxRecipients *self, int32* plCount) get_Count;
				public function HRESULT(IFaxRecipients *self, BSTR bstrFaxNumber, BSTR bstrRecipientName, IFaxRecipient** ppFaxRecipient) Add;
				public function HRESULT(IFaxRecipients *self, int32 lIndex) Remove;
			}
		}
		[CRepr]
		public struct IFaxIncomingArchive : IDispatch
		{
			public const new Guid IID = .(0x76062cc7, 0xf714, 0x4fbd, 0xaa, 0x06, 0xed, 0x6e, 0x4a, 0x4b, 0x70, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingArchive *self, int16* pbUseArchive) get_UseArchive;
				public function HRESULT(IFaxIncomingArchive *self, int16 bUseArchive) put_UseArchive;
				public function HRESULT(IFaxIncomingArchive *self, BSTR* pbstrArchiveFolder) get_ArchiveFolder;
				public function HRESULT(IFaxIncomingArchive *self, BSTR bstrArchiveFolder) put_ArchiveFolder;
				public function HRESULT(IFaxIncomingArchive *self, int16* pbSizeQuotaWarning) get_SizeQuotaWarning;
				public function HRESULT(IFaxIncomingArchive *self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public function HRESULT(IFaxIncomingArchive *self, int32* plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public function HRESULT(IFaxIncomingArchive *self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public function HRESULT(IFaxIncomingArchive *self, int32* plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public function HRESULT(IFaxIncomingArchive *self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public function HRESULT(IFaxIncomingArchive *self, int32* plAgeLimit) get_AgeLimit;
				public function HRESULT(IFaxIncomingArchive *self, int32 lAgeLimit) put_AgeLimit;
				public function HRESULT(IFaxIncomingArchive *self, int32* plSizeLow) get_SizeLow;
				public function HRESULT(IFaxIncomingArchive *self, int32* plSizeHigh) get_SizeHigh;
				public function HRESULT(IFaxIncomingArchive *self) Refresh;
				public function HRESULT(IFaxIncomingArchive *self) Save;
				public function HRESULT(IFaxIncomingArchive *self, int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) GetMessages;
				public function HRESULT(IFaxIncomingArchive *self, BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxIncomingQueue : IDispatch
		{
			public const new Guid IID = .(0x902e64ef, 0x8fd8, 0x4b75, 0x97, 0x25, 0x60, 0x14, 0xdf, 0x16, 0x15, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingQueue *self, int16* pbBlocked) get_Blocked;
				public function HRESULT(IFaxIncomingQueue *self, int16 bBlocked) put_Blocked;
				public function HRESULT(IFaxIncomingQueue *self) Refresh;
				public function HRESULT(IFaxIncomingQueue *self) Save;
				public function HRESULT(IFaxIncomingQueue *self, IFaxIncomingJobs** pFaxIncomingJobs) GetJobs;
				public function HRESULT(IFaxIncomingQueue *self, BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxOutgoingArchive : IDispatch
		{
			public const new Guid IID = .(0xc9c28f40, 0x8d80, 0x4e53, 0x81, 0x0f, 0x9a, 0x79, 0x91, 0x9b, 0x49, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingArchive *self, int16* pbUseArchive) get_UseArchive;
				public function HRESULT(IFaxOutgoingArchive *self, int16 bUseArchive) put_UseArchive;
				public function HRESULT(IFaxOutgoingArchive *self, BSTR* pbstrArchiveFolder) get_ArchiveFolder;
				public function HRESULT(IFaxOutgoingArchive *self, BSTR bstrArchiveFolder) put_ArchiveFolder;
				public function HRESULT(IFaxOutgoingArchive *self, int16* pbSizeQuotaWarning) get_SizeQuotaWarning;
				public function HRESULT(IFaxOutgoingArchive *self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public function HRESULT(IFaxOutgoingArchive *self, int32* plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public function HRESULT(IFaxOutgoingArchive *self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public function HRESULT(IFaxOutgoingArchive *self, int32* plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public function HRESULT(IFaxOutgoingArchive *self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public function HRESULT(IFaxOutgoingArchive *self, int32* plAgeLimit) get_AgeLimit;
				public function HRESULT(IFaxOutgoingArchive *self, int32 lAgeLimit) put_AgeLimit;
				public function HRESULT(IFaxOutgoingArchive *self, int32* plSizeLow) get_SizeLow;
				public function HRESULT(IFaxOutgoingArchive *self, int32* plSizeHigh) get_SizeHigh;
				public function HRESULT(IFaxOutgoingArchive *self) Refresh;
				public function HRESULT(IFaxOutgoingArchive *self) Save;
				public function HRESULT(IFaxOutgoingArchive *self, int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) GetMessages;
				public function HRESULT(IFaxOutgoingArchive *self, BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxOutgoingQueue : IDispatch
		{
			public const new Guid IID = .(0x80b1df24, 0xd9ac, 0x4333, 0xb3, 0x73, 0x48, 0x7c, 0xed, 0xc8, 0x0c, 0xe5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingQueue *self, int16* pbBlocked) get_Blocked;
				public function HRESULT(IFaxOutgoingQueue *self, int16 bBlocked) put_Blocked;
				public function HRESULT(IFaxOutgoingQueue *self, int16* pbPaused) get_Paused;
				public function HRESULT(IFaxOutgoingQueue *self, int16 bPaused) put_Paused;
				public function HRESULT(IFaxOutgoingQueue *self, int16* pbAllowPersonalCoverPages) get_AllowPersonalCoverPages;
				public function HRESULT(IFaxOutgoingQueue *self, int16 bAllowPersonalCoverPages) put_AllowPersonalCoverPages;
				public function HRESULT(IFaxOutgoingQueue *self, int16* pbUseDeviceTSID) get_UseDeviceTSID;
				public function HRESULT(IFaxOutgoingQueue *self, int16 bUseDeviceTSID) put_UseDeviceTSID;
				public function HRESULT(IFaxOutgoingQueue *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxOutgoingQueue *self, int32 lRetries) put_Retries;
				public function HRESULT(IFaxOutgoingQueue *self, int32* plRetryDelay) get_RetryDelay;
				public function HRESULT(IFaxOutgoingQueue *self, int32 lRetryDelay) put_RetryDelay;
				public function HRESULT(IFaxOutgoingQueue *self, double* pdateDiscountRateStart) get_DiscountRateStart;
				public function HRESULT(IFaxOutgoingQueue *self, double dateDiscountRateStart) put_DiscountRateStart;
				public function HRESULT(IFaxOutgoingQueue *self, double* pdateDiscountRateEnd) get_DiscountRateEnd;
				public function HRESULT(IFaxOutgoingQueue *self, double dateDiscountRateEnd) put_DiscountRateEnd;
				public function HRESULT(IFaxOutgoingQueue *self, int32* plAgeLimit) get_AgeLimit;
				public function HRESULT(IFaxOutgoingQueue *self, int32 lAgeLimit) put_AgeLimit;
				public function HRESULT(IFaxOutgoingQueue *self, int16* pbBranding) get_Branding;
				public function HRESULT(IFaxOutgoingQueue *self, int16 bBranding) put_Branding;
				public function HRESULT(IFaxOutgoingQueue *self) Refresh;
				public function HRESULT(IFaxOutgoingQueue *self) Save;
				public function HRESULT(IFaxOutgoingQueue *self, IFaxOutgoingJobs** pFaxOutgoingJobs) GetJobs;
				public function HRESULT(IFaxOutgoingQueue *self, BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessageIterator : IDispatch
		{
			public const new Guid IID = .(0xfd73ecc4, 0x6f06, 0x4f52, 0x82, 0xa8, 0xf7, 0xba, 0x06, 0xae, 0x31, 0x08);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingMessageIterator *self, IFaxIncomingMessage** pFaxIncomingMessage) get_Message;
				public function HRESULT(IFaxIncomingMessageIterator *self, int32* plPrefetchSize) get_PrefetchSize;
				public function HRESULT(IFaxIncomingMessageIterator *self, int32 lPrefetchSize) put_PrefetchSize;
				public function HRESULT(IFaxIncomingMessageIterator *self, int16* pbEOF) get_AtEOF;
				public function HRESULT(IFaxIncomingMessageIterator *self) MoveFirst;
				public function HRESULT(IFaxIncomingMessageIterator *self) MoveNext;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessage : IDispatch
		{
			public const new Guid IID = .(0x7cab88fa, 0x2ef9, 0x4851, 0xb2, 0xf3, 0x1d, 0x14, 0x8f, 0xed, 0x84, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrId) get_Id;
				public function HRESULT(IFaxIncomingMessage *self, int32* plPages) get_Pages;
				public function HRESULT(IFaxIncomingMessage *self, int32* plSize) get_Size;
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrDeviceName) get_DeviceName;
				public function HRESULT(IFaxIncomingMessage *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxIncomingMessage *self, double* pdateTransmissionStart) get_TransmissionStart;
				public function HRESULT(IFaxIncomingMessage *self, double* pdateTransmissionEnd) get_TransmissionEnd;
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrCallerId) get_CallerId;
				public function HRESULT(IFaxIncomingMessage *self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
				public function HRESULT(IFaxIncomingMessage *self, BSTR bstrTiffPath) CopyTiff;
				public function HRESULT(IFaxIncomingMessage *self) Delete;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJobs : IDispatch
		{
			public const new Guid IID = .(0x2c56d8e6, 0x8c2f, 0x4573, 0x94, 0x4c, 0xe5, 0x05, 0xf8, 0xf5, 0xae, 0xed);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingJobs *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxOutgoingJobs *self, VARIANT vIndex, IFaxOutgoingJob** pFaxOutgoingJob) get_Item;
				public function HRESULT(IFaxOutgoingJobs *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJob : IDispatch
		{
			public const new Guid IID = .(0x6356daad, 0x6614, 0x4583, 0xbf, 0x7a, 0x3a, 0xd6, 0x7b, 0xbf, 0xc7, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrSubject) get_Subject;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrDocumentName) get_DocumentName;
				public function HRESULT(IFaxOutgoingJob *self, int32* plPages) get_Pages;
				public function HRESULT(IFaxOutgoingJob *self, int32* plSize) get_Size;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrId) get_Id;
				public function HRESULT(IFaxOutgoingJob *self, double* pdateOriginalScheduledTime) get_OriginalScheduledTime;
				public function HRESULT(IFaxOutgoingJob *self, double* pdateSubmissionTime) get_SubmissionTime;
				public function HRESULT(IFaxOutgoingJob *self, FAX_RECEIPT_TYPE_ENUM* pReceiptType) get_ReceiptType;
				public function HRESULT(IFaxOutgoingJob *self, FAX_PRIORITY_TYPE_ENUM* pPriority) get_Priority;
				public function HRESULT(IFaxOutgoingJob *self, IFaxSender** ppFaxSender) get_Sender;
				public function HRESULT(IFaxOutgoingJob *self, IFaxRecipient** ppFaxRecipient) get_Recipient;
				public function HRESULT(IFaxOutgoingJob *self, int32* plCurrentPage) get_CurrentPage;
				public function HRESULT(IFaxOutgoingJob *self, int32* plDeviceId) get_DeviceId;
				public function HRESULT(IFaxOutgoingJob *self, FAX_JOB_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxOutgoingJob *self, FAX_JOB_EXTENDED_STATUS_ENUM* pExtendedStatusCode) get_ExtendedStatusCode;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public function HRESULT(IFaxOutgoingJob *self, FAX_JOB_OPERATIONS_ENUM* pAvailableOperations) get_AvailableOperations;
				public function HRESULT(IFaxOutgoingJob *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxOutgoingJob *self, double* pdateScheduledTime) get_ScheduledTime;
				public function HRESULT(IFaxOutgoingJob *self, double* pdateTransmissionStart) get_TransmissionStart;
				public function HRESULT(IFaxOutgoingJob *self, double* pdateTransmissionEnd) get_TransmissionEnd;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxOutgoingJob *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxOutgoingJob *self, int16* pbGroupBroadcastReceipts) get_GroupBroadcastReceipts;
				public function HRESULT(IFaxOutgoingJob *self) Pause;
				public function HRESULT(IFaxOutgoingJob *self) Resume;
				public function HRESULT(IFaxOutgoingJob *self) Restart;
				public function HRESULT(IFaxOutgoingJob *self, BSTR bstrTiffPath) CopyTiff;
				public function HRESULT(IFaxOutgoingJob *self) Refresh;
				public function HRESULT(IFaxOutgoingJob *self) Cancel;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessageIterator : IDispatch
		{
			public const new Guid IID = .(0xf5ec5d4f, 0xb840, 0x432f, 0x99, 0x80, 0x11, 0x2f, 0xe4, 0x2a, 0x9b, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingMessageIterator *self, IFaxOutgoingMessage** pFaxOutgoingMessage) get_Message;
				public function HRESULT(IFaxOutgoingMessageIterator *self, int16* pbEOF) get_AtEOF;
				public function HRESULT(IFaxOutgoingMessageIterator *self, int32* plPrefetchSize) get_PrefetchSize;
				public function HRESULT(IFaxOutgoingMessageIterator *self, int32 lPrefetchSize) put_PrefetchSize;
				public function HRESULT(IFaxOutgoingMessageIterator *self) MoveFirst;
				public function HRESULT(IFaxOutgoingMessageIterator *self) MoveNext;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessage : IDispatch
		{
			public const new Guid IID = .(0xf0ea35de, 0xcaa5, 0x4a7c, 0x82, 0xc7, 0x2b, 0x60, 0xba, 0x5f, 0x2b, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrId) get_Id;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrSubject) get_Subject;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrDocumentName) get_DocumentName;
				public function HRESULT(IFaxOutgoingMessage *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxOutgoingMessage *self, int32* plPages) get_Pages;
				public function HRESULT(IFaxOutgoingMessage *self, int32* plSize) get_Size;
				public function HRESULT(IFaxOutgoingMessage *self, double* pdateOriginalScheduledTime) get_OriginalScheduledTime;
				public function HRESULT(IFaxOutgoingMessage *self, double* pdateSubmissionTime) get_SubmissionTime;
				public function HRESULT(IFaxOutgoingMessage *self, FAX_PRIORITY_TYPE_ENUM* pPriority) get_Priority;
				public function HRESULT(IFaxOutgoingMessage *self, IFaxSender** ppFaxSender) get_Sender;
				public function HRESULT(IFaxOutgoingMessage *self, IFaxRecipient** ppFaxRecipient) get_Recipient;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrDeviceName) get_DeviceName;
				public function HRESULT(IFaxOutgoingMessage *self, double* pdateTransmissionStart) get_TransmissionStart;
				public function HRESULT(IFaxOutgoingMessage *self, double* pdateTransmissionEnd) get_TransmissionEnd;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxOutgoingMessage *self, BSTR bstrTiffPath) CopyTiff;
				public function HRESULT(IFaxOutgoingMessage *self) Delete;
			}
		}
		[CRepr]
		public struct IFaxIncomingJobs : IDispatch
		{
			public const new Guid IID = .(0x011f04e9, 0x4fd6, 0x4c23, 0x95, 0x13, 0xb6, 0xb6, 0x6b, 0xb2, 0x6b, 0xe9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingJobs *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxIncomingJobs *self, VARIANT vIndex, IFaxIncomingJob** pFaxIncomingJob) get_Item;
				public function HRESULT(IFaxIncomingJobs *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxIncomingJob : IDispatch
		{
			public const new Guid IID = .(0x207529e6, 0x654a, 0x4916, 0x9f, 0x88, 0x4d, 0x23, 0x2e, 0xe8, 0xa1, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxIncomingJob *self, int32* plSize) get_Size;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrId) get_Id;
				public function HRESULT(IFaxIncomingJob *self, int32* plCurrentPage) get_CurrentPage;
				public function HRESULT(IFaxIncomingJob *self, int32* plDeviceId) get_DeviceId;
				public function HRESULT(IFaxIncomingJob *self, FAX_JOB_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxIncomingJob *self, FAX_JOB_EXTENDED_STATUS_ENUM* pExtendedStatusCode) get_ExtendedStatusCode;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrExtendedStatus) get_ExtendedStatus;
				public function HRESULT(IFaxIncomingJob *self, FAX_JOB_OPERATIONS_ENUM* pAvailableOperations) get_AvailableOperations;
				public function HRESULT(IFaxIncomingJob *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxIncomingJob *self, double* pdateTransmissionStart) get_TransmissionStart;
				public function HRESULT(IFaxIncomingJob *self, double* pdateTransmissionEnd) get_TransmissionEnd;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrCallerId) get_CallerId;
				public function HRESULT(IFaxIncomingJob *self, BSTR* pbstrRoutingInformation) get_RoutingInformation;
				public function HRESULT(IFaxIncomingJob *self, FAX_JOB_TYPE_ENUM* pJobType) get_JobType;
				public function HRESULT(IFaxIncomingJob *self) Cancel;
				public function HRESULT(IFaxIncomingJob *self) Refresh;
				public function HRESULT(IFaxIncomingJob *self, BSTR bstrTiffPath) CopyTiff;
			}
		}
		[CRepr]
		public struct IFaxDeviceProvider : IDispatch
		{
			public const new Guid IID = .(0x290eac63, 0x83ec, 0x449c, 0x84, 0x17, 0xf1, 0x48, 0xdf, 0x8c, 0x68, 0x2a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDeviceProvider *self, BSTR* pbstrFriendlyName) get_FriendlyName;
				public function HRESULT(IFaxDeviceProvider *self, BSTR* pbstrImageName) get_ImageName;
				public function HRESULT(IFaxDeviceProvider *self, BSTR* pbstrUniqueName) get_UniqueName;
				public function HRESULT(IFaxDeviceProvider *self, BSTR* pbstrTapiProviderName) get_TapiProviderName;
				public function HRESULT(IFaxDeviceProvider *self, int32* plMajorVersion) get_MajorVersion;
				public function HRESULT(IFaxDeviceProvider *self, int32* plMinorVersion) get_MinorVersion;
				public function HRESULT(IFaxDeviceProvider *self, int32* plMajorBuild) get_MajorBuild;
				public function HRESULT(IFaxDeviceProvider *self, int32* plMinorBuild) get_MinorBuild;
				public function HRESULT(IFaxDeviceProvider *self, int16* pbDebug) get_Debug;
				public function HRESULT(IFaxDeviceProvider *self, FAX_PROVIDER_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxDeviceProvider *self, int32* plInitErrorCode) get_InitErrorCode;
				public function HRESULT(IFaxDeviceProvider *self, VARIANT* pvDeviceIds) get_DeviceIds;
			}
		}
		[CRepr]
		public struct IFaxDevice : IDispatch
		{
			public const new Guid IID = .(0x49306c59, 0xb52e, 0x4867, 0x9d, 0xf4, 0xca, 0x58, 0x41, 0xc9, 0x56, 0xd0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDevice *self, int32* plId) get_Id;
				public function HRESULT(IFaxDevice *self, BSTR* pbstrDeviceName) get_DeviceName;
				public function HRESULT(IFaxDevice *self, BSTR* pbstrProviderUniqueName) get_ProviderUniqueName;
				public function HRESULT(IFaxDevice *self, int16* pbPoweredOff) get_PoweredOff;
				public function HRESULT(IFaxDevice *self, int16* pbReceivingNow) get_ReceivingNow;
				public function HRESULT(IFaxDevice *self, int16* pbSendingNow) get_SendingNow;
				public function HRESULT(IFaxDevice *self, VARIANT* pvUsedRoutingMethods) get_UsedRoutingMethods;
				public function HRESULT(IFaxDevice *self, BSTR* pbstrDescription) get_Description;
				public function HRESULT(IFaxDevice *self, BSTR bstrDescription) put_Description;
				public function HRESULT(IFaxDevice *self, int16* pbSendEnabled) get_SendEnabled;
				public function HRESULT(IFaxDevice *self, int16 bSendEnabled) put_SendEnabled;
				public function HRESULT(IFaxDevice *self, FAX_DEVICE_RECEIVE_MODE_ENUM* pReceiveMode) get_ReceiveMode;
				public function HRESULT(IFaxDevice *self, FAX_DEVICE_RECEIVE_MODE_ENUM ReceiveMode) put_ReceiveMode;
				public function HRESULT(IFaxDevice *self, int32* plRingsBeforeAnswer) get_RingsBeforeAnswer;
				public function HRESULT(IFaxDevice *self, int32 lRingsBeforeAnswer) put_RingsBeforeAnswer;
				public function HRESULT(IFaxDevice *self, BSTR* pbstrCSID) get_CSID;
				public function HRESULT(IFaxDevice *self, BSTR bstrCSID) put_CSID;
				public function HRESULT(IFaxDevice *self, BSTR* pbstrTSID) get_TSID;
				public function HRESULT(IFaxDevice *self, BSTR bstrTSID) put_TSID;
				public function HRESULT(IFaxDevice *self) Refresh;
				public function HRESULT(IFaxDevice *self) Save;
				public function HRESULT(IFaxDevice *self, BSTR bstrGUID, VARIANT* pvProperty) GetExtensionProperty;
				public function HRESULT(IFaxDevice *self, BSTR bstrGUID, VARIANT vProperty) SetExtensionProperty;
				public function HRESULT(IFaxDevice *self, BSTR bstrMethodGUID, int16 bUse) UseRoutingMethod;
				public function HRESULT(IFaxDevice *self, int16* pbRingingNow) get_RingingNow;
				public function HRESULT(IFaxDevice *self) AnswerCall;
			}
		}
		[CRepr]
		public struct IFaxActivityLogging : IDispatch
		{
			public const new Guid IID = .(0x1e29078b, 0x5a69, 0x497b, 0x95, 0x92, 0x49, 0xb7, 0xe7, 0xfa, 0xdd, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxActivityLogging *self, int16* pbLogIncoming) get_LogIncoming;
				public function HRESULT(IFaxActivityLogging *self, int16 bLogIncoming) put_LogIncoming;
				public function HRESULT(IFaxActivityLogging *self, int16* pbLogOutgoing) get_LogOutgoing;
				public function HRESULT(IFaxActivityLogging *self, int16 bLogOutgoing) put_LogOutgoing;
				public function HRESULT(IFaxActivityLogging *self, BSTR* pbstrDatabasePath) get_DatabasePath;
				public function HRESULT(IFaxActivityLogging *self, BSTR bstrDatabasePath) put_DatabasePath;
				public function HRESULT(IFaxActivityLogging *self) Refresh;
				public function HRESULT(IFaxActivityLogging *self) Save;
			}
		}
		[CRepr]
		public struct IFaxEventLogging : IDispatch
		{
			public const new Guid IID = .(0x0880d965, 0x20e8, 0x42e4, 0x8e, 0x17, 0x94, 0x4f, 0x19, 0x2c, 0xaa, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM* pInitEventLevel) get_InitEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM InitEventLevel) put_InitEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM* pInboundEventLevel) get_InboundEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM InboundEventLevel) put_InboundEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM* pOutboundEventLevel) get_OutboundEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM OutboundEventLevel) put_OutboundEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM* pGeneralEventLevel) get_GeneralEventsLevel;
				public function HRESULT(IFaxEventLogging *self, FAX_LOG_LEVEL_ENUM GeneralEventLevel) put_GeneralEventsLevel;
				public function HRESULT(IFaxEventLogging *self) Refresh;
				public function HRESULT(IFaxEventLogging *self) Save;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingGroups : IDispatch
		{
			public const new Guid IID = .(0x235cbef7, 0xc2de, 0x4bfd, 0xb8, 0xda, 0x75, 0x09, 0x7c, 0x82, 0xc8, 0x7f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutboundRoutingGroups *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxOutboundRoutingGroups *self, VARIANT vIndex, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) get_Item;
				public function HRESULT(IFaxOutboundRoutingGroups *self, int32* plCount) get_Count;
				public function HRESULT(IFaxOutboundRoutingGroups *self, BSTR bstrName, IFaxOutboundRoutingGroup** pFaxOutboundRoutingGroup) Add;
				public function HRESULT(IFaxOutboundRoutingGroups *self, VARIANT vIndex) Remove;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingGroup : IDispatch
		{
			public const new Guid IID = .(0xca6289a1, 0x7e25, 0x4f87, 0x9a, 0x0b, 0x93, 0x36, 0x57, 0x34, 0x96, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutboundRoutingGroup *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IFaxOutboundRoutingGroup *self, FAX_GROUP_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxOutboundRoutingGroup *self, IFaxDeviceIds** pFaxDeviceIds) get_DeviceIds;
			}
		}
		[CRepr]
		public struct IFaxDeviceIds : IDispatch
		{
			public const new Guid IID = .(0x2f0f813f, 0x4ce9, 0x443e, 0x8c, 0xa1, 0x73, 0x8c, 0xfa, 0xee, 0xe1, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxDeviceIds *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxDeviceIds *self, int32 lIndex, int32* plDeviceId) get_Item;
				public function HRESULT(IFaxDeviceIds *self, int32* plCount) get_Count;
				public function HRESULT(IFaxDeviceIds *self, int32 lDeviceId) Add;
				public function HRESULT(IFaxDeviceIds *self, int32 lIndex) Remove;
				public function HRESULT(IFaxDeviceIds *self, int32 lDeviceId, int32 lNewOrder) SetOrder;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingRules : IDispatch
		{
			public const new Guid IID = .(0xdcefa1e7, 0xae7d, 0x4ed6, 0x85, 0x21, 0x36, 0x9e, 0xdc, 0xca, 0x51, 0x20);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutboundRoutingRules *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32 lIndex, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) get_Item;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32* plCount) get_Count;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32 lCountryCode, int32 lAreaCode, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) ItemByCountryAndArea;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32 lCountryCode, int32 lAreaCode) RemoveByCountryAndArea;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32 lIndex) Remove;
				public function HRESULT(IFaxOutboundRoutingRules *self, int32 lCountryCode, int32 lAreaCode, int16 bUseDevice, BSTR bstrGroupName, int32 lDeviceId, IFaxOutboundRoutingRule** pFaxOutboundRoutingRule) Add;
			}
		}
		[CRepr]
		public struct IFaxOutboundRoutingRule : IDispatch
		{
			public const new Guid IID = .(0xe1f795d5, 0x07c2, 0x469f, 0xb0, 0x27, 0xac, 0xac, 0xc2, 0x32, 0x19, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxOutboundRoutingRule *self, int32* plCountryCode) get_CountryCode;
				public function HRESULT(IFaxOutboundRoutingRule *self, int32* plAreaCode) get_AreaCode;
				public function HRESULT(IFaxOutboundRoutingRule *self, FAX_RULE_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxOutboundRoutingRule *self, int16* pbUseDevice) get_UseDevice;
				public function HRESULT(IFaxOutboundRoutingRule *self, int16 bUseDevice) put_UseDevice;
				public function HRESULT(IFaxOutboundRoutingRule *self, int32* plDeviceId) get_DeviceId;
				public function HRESULT(IFaxOutboundRoutingRule *self, int32 DeviceId) put_DeviceId;
				public function HRESULT(IFaxOutboundRoutingRule *self, BSTR* pbstrGroupName) get_GroupName;
				public function HRESULT(IFaxOutboundRoutingRule *self, BSTR bstrGroupName) put_GroupName;
				public function HRESULT(IFaxOutboundRoutingRule *self) Refresh;
				public function HRESULT(IFaxOutboundRoutingRule *self) Save;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingExtensions : IDispatch
		{
			public const new Guid IID = .(0x2f6c9673, 0x7b26, 0x42de, 0x8e, 0xb0, 0x91, 0x5d, 0xcd, 0x2a, 0x4f, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxInboundRoutingExtensions *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxInboundRoutingExtensions *self, VARIANT vIndex, IFaxInboundRoutingExtension** pFaxInboundRoutingExtension) get_Item;
				public function HRESULT(IFaxInboundRoutingExtensions *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingExtension : IDispatch
		{
			public const new Guid IID = .(0x885b5e08, 0xc26c, 0x4ef9, 0xaf, 0x83, 0x51, 0x58, 0x0a, 0x75, 0x0b, 0xe1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxInboundRoutingExtension *self, BSTR* pbstrFriendlyName) get_FriendlyName;
				public function HRESULT(IFaxInboundRoutingExtension *self, BSTR* pbstrImageName) get_ImageName;
				public function HRESULT(IFaxInboundRoutingExtension *self, BSTR* pbstrUniqueName) get_UniqueName;
				public function HRESULT(IFaxInboundRoutingExtension *self, int32* plMajorVersion) get_MajorVersion;
				public function HRESULT(IFaxInboundRoutingExtension *self, int32* plMinorVersion) get_MinorVersion;
				public function HRESULT(IFaxInboundRoutingExtension *self, int32* plMajorBuild) get_MajorBuild;
				public function HRESULT(IFaxInboundRoutingExtension *self, int32* plMinorBuild) get_MinorBuild;
				public function HRESULT(IFaxInboundRoutingExtension *self, int16* pbDebug) get_Debug;
				public function HRESULT(IFaxInboundRoutingExtension *self, FAX_PROVIDER_STATUS_ENUM* pStatus) get_Status;
				public function HRESULT(IFaxInboundRoutingExtension *self, int32* plInitErrorCode) get_InitErrorCode;
				public function HRESULT(IFaxInboundRoutingExtension *self, VARIANT* pvMethods) get_Methods;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingMethods : IDispatch
		{
			public const new Guid IID = .(0x783fca10, 0x8908, 0x4473, 0x9d, 0x69, 0xf6, 0x7f, 0xbe, 0xa0, 0xc6, 0xb9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxInboundRoutingMethods *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxInboundRoutingMethods *self, VARIANT vIndex, IFaxInboundRoutingMethod** pFaxInboundRoutingMethod) get_Item;
				public function HRESULT(IFaxInboundRoutingMethods *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxInboundRoutingMethod : IDispatch
		{
			public const new Guid IID = .(0x45700061, 0xad9d, 0x4776, 0xa8, 0xc4, 0x64, 0x06, 0x54, 0x92, 0xcf, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxInboundRoutingMethod *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IFaxInboundRoutingMethod *self, BSTR* pbstrGUID) get_GUID;
				public function HRESULT(IFaxInboundRoutingMethod *self, BSTR* pbstrFunctionName) get_FunctionName;
				public function HRESULT(IFaxInboundRoutingMethod *self, BSTR* pbstrExtensionFriendlyName) get_ExtensionFriendlyName;
				public function HRESULT(IFaxInboundRoutingMethod *self, BSTR* pbstrExtensionImageName) get_ExtensionImageName;
				public function HRESULT(IFaxInboundRoutingMethod *self, int32* plPriority) get_Priority;
				public function HRESULT(IFaxInboundRoutingMethod *self, int32 lPriority) put_Priority;
				public function HRESULT(IFaxInboundRoutingMethod *self) Refresh;
				public function HRESULT(IFaxInboundRoutingMethod *self) Save;
			}
		}
		[CRepr]
		public struct IFaxDocument2 : IFaxDocument
		{
			public const new Guid IID = .(0xe1347661, 0xf9ef, 0x4d6d, 0xb4, 0xa5, 0xc0, 0xa0, 0x68, 0xb6, 0x5c, 0xff);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFaxDocument.VTable
			{
				public function HRESULT(IFaxDocument2 *self, BSTR* pbstrSubmissionId) get_SubmissionId;
				public function HRESULT(IFaxDocument2 *self, VARIANT* pvBodies) get_Bodies;
				public function HRESULT(IFaxDocument2 *self, VARIANT vBodies) put_Bodies;
				public function HRESULT(IFaxDocument2 *self, BSTR bstrFaxServerName, VARIANT* pvFaxOutgoingJobIDs, int32* plErrorBodyFile) Submit2;
				public function HRESULT(IFaxDocument2 *self, IFaxServer* pFaxServer, VARIANT* pvFaxOutgoingJobIDs, int32* plErrorBodyFile) ConnectedSubmit2;
			}
		}
		[CRepr]
		public struct IFaxConfiguration : IDispatch
		{
			public const new Guid IID = .(0x10f4d0f7, 0x0994, 0x4543, 0xab, 0x6e, 0x50, 0x69, 0x49, 0x12, 0x8c, 0x40);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxConfiguration *self, int16* pbUseArchive) get_UseArchive;
				public function HRESULT(IFaxConfiguration *self, int16 bUseArchive) put_UseArchive;
				public function HRESULT(IFaxConfiguration *self, BSTR* pbstrArchiveLocation) get_ArchiveLocation;
				public function HRESULT(IFaxConfiguration *self, BSTR bstrArchiveLocation) put_ArchiveLocation;
				public function HRESULT(IFaxConfiguration *self, int16* pbSizeQuotaWarning) get_SizeQuotaWarning;
				public function HRESULT(IFaxConfiguration *self, int16 bSizeQuotaWarning) put_SizeQuotaWarning;
				public function HRESULT(IFaxConfiguration *self, int32* plHighQuotaWaterMark) get_HighQuotaWaterMark;
				public function HRESULT(IFaxConfiguration *self, int32 lHighQuotaWaterMark) put_HighQuotaWaterMark;
				public function HRESULT(IFaxConfiguration *self, int32* plLowQuotaWaterMark) get_LowQuotaWaterMark;
				public function HRESULT(IFaxConfiguration *self, int32 lLowQuotaWaterMark) put_LowQuotaWaterMark;
				public function HRESULT(IFaxConfiguration *self, int32* plArchiveAgeLimit) get_ArchiveAgeLimit;
				public function HRESULT(IFaxConfiguration *self, int32 lArchiveAgeLimit) put_ArchiveAgeLimit;
				public function HRESULT(IFaxConfiguration *self, int32* plSizeLow) get_ArchiveSizeLow;
				public function HRESULT(IFaxConfiguration *self, int32* plSizeHigh) get_ArchiveSizeHigh;
				public function HRESULT(IFaxConfiguration *self, int16* pbOutgoingBlocked) get_OutgoingQueueBlocked;
				public function HRESULT(IFaxConfiguration *self, int16 bOutgoingBlocked) put_OutgoingQueueBlocked;
				public function HRESULT(IFaxConfiguration *self, int16* pbOutgoingPaused) get_OutgoingQueuePaused;
				public function HRESULT(IFaxConfiguration *self, int16 bOutgoingPaused) put_OutgoingQueuePaused;
				public function HRESULT(IFaxConfiguration *self, int16* pbAllowPersonalCoverPages) get_AllowPersonalCoverPages;
				public function HRESULT(IFaxConfiguration *self, int16 bAllowPersonalCoverPages) put_AllowPersonalCoverPages;
				public function HRESULT(IFaxConfiguration *self, int16* pbUseDeviceTSID) get_UseDeviceTSID;
				public function HRESULT(IFaxConfiguration *self, int16 bUseDeviceTSID) put_UseDeviceTSID;
				public function HRESULT(IFaxConfiguration *self, int32* plRetries) get_Retries;
				public function HRESULT(IFaxConfiguration *self, int32 lRetries) put_Retries;
				public function HRESULT(IFaxConfiguration *self, int32* plRetryDelay) get_RetryDelay;
				public function HRESULT(IFaxConfiguration *self, int32 lRetryDelay) put_RetryDelay;
				public function HRESULT(IFaxConfiguration *self, double* pdateDiscountRateStart) get_DiscountRateStart;
				public function HRESULT(IFaxConfiguration *self, double dateDiscountRateStart) put_DiscountRateStart;
				public function HRESULT(IFaxConfiguration *self, double* pdateDiscountRateEnd) get_DiscountRateEnd;
				public function HRESULT(IFaxConfiguration *self, double dateDiscountRateEnd) put_DiscountRateEnd;
				public function HRESULT(IFaxConfiguration *self, int32* plOutgoingQueueAgeLimit) get_OutgoingQueueAgeLimit;
				public function HRESULT(IFaxConfiguration *self, int32 lOutgoingQueueAgeLimit) put_OutgoingQueueAgeLimit;
				public function HRESULT(IFaxConfiguration *self, int16* pbBranding) get_Branding;
				public function HRESULT(IFaxConfiguration *self, int16 bBranding) put_Branding;
				public function HRESULT(IFaxConfiguration *self, int16* pbIncomingBlocked) get_IncomingQueueBlocked;
				public function HRESULT(IFaxConfiguration *self, int16 bIncomingBlocked) put_IncomingQueueBlocked;
				public function HRESULT(IFaxConfiguration *self, int16* pbAutoCreateAccountOnConnect) get_AutoCreateAccountOnConnect;
				public function HRESULT(IFaxConfiguration *self, int16 bAutoCreateAccountOnConnect) put_AutoCreateAccountOnConnect;
				public function HRESULT(IFaxConfiguration *self, int16* pbIncomingFaxesArePublic) get_IncomingFaxesArePublic;
				public function HRESULT(IFaxConfiguration *self, int16 bIncomingFaxesArePublic) put_IncomingFaxesArePublic;
				public function HRESULT(IFaxConfiguration *self) Refresh;
				public function HRESULT(IFaxConfiguration *self) Save;
			}
		}
		[CRepr]
		public struct IFaxServer2 : IFaxServer
		{
			public const new Guid IID = .(0x571ced0f, 0x5609, 0x4f40, 0x91, 0x76, 0x54, 0x7e, 0x3a, 0x72, 0xca, 0x7c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFaxServer.VTable
			{
				public function HRESULT(IFaxServer2 *self, IFaxConfiguration** ppFaxConfiguration) get_Configuration;
				public function HRESULT(IFaxServer2 *self, IFaxAccount** ppCurrentAccount) get_CurrentAccount;
				public function HRESULT(IFaxServer2 *self, IFaxAccountSet** ppFaxAccountSet) get_FaxAccountSet;
				public function HRESULT(IFaxServer2 *self, IFaxSecurity2** ppFaxSecurity2) get_Security2;
			}
		}
		[CRepr]
		public struct IFaxAccountSet : IDispatch
		{
			public const new Guid IID = .(0x7428fbae, 0x841e, 0x47b8, 0x86, 0xf4, 0x22, 0x88, 0x94, 0x6d, 0xca, 0x1b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountSet *self, IFaxAccounts** ppFaxAccounts) GetAccounts;
				public function HRESULT(IFaxAccountSet *self, BSTR bstrAccountName, IFaxAccount** pFaxAccount) GetAccount;
				public function HRESULT(IFaxAccountSet *self, BSTR bstrAccountName, IFaxAccount** pFaxAccount) AddAccount;
				public function HRESULT(IFaxAccountSet *self, BSTR bstrAccountName) RemoveAccount;
			}
		}
		[CRepr]
		public struct IFaxAccounts : IDispatch
		{
			public const new Guid IID = .(0x93ea8162, 0x8be7, 0x42d1, 0xae, 0x7b, 0xec, 0x74, 0xe2, 0xd9, 0x89, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccounts *self, IUnknown** ppUnk) get__NewEnum;
				public function HRESULT(IFaxAccounts *self, VARIANT vIndex, IFaxAccount** pFaxAccount) get_Item;
				public function HRESULT(IFaxAccounts *self, int32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IFaxAccount : IDispatch
		{
			public const new Guid IID = .(0x68535b33, 0x5dc4, 0x4086, 0xbe, 0x26, 0xb7, 0x6f, 0x9b, 0x71, 0x10, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccount *self, BSTR* pbstrAccountName) get_AccountName;
				public function HRESULT(IFaxAccount *self, IFaxAccountFolders** ppFolders) get_Folders;
				public function HRESULT(IFaxAccount *self, FAX_ACCOUNT_EVENTS_TYPE_ENUM EventTypes) ListenToAccountEvents;
				public function HRESULT(IFaxAccount *self, FAX_ACCOUNT_EVENTS_TYPE_ENUM* pRegisteredEvents) get_RegisteredEvents;
			}
		}
		[CRepr]
		public struct IFaxOutgoingJob2 : IFaxOutgoingJob
		{
			public const new Guid IID = .(0x418a8d96, 0x59a0, 0x4789, 0xb1, 0x76, 0xed, 0xf3, 0xdc, 0x8f, 0xa8, 0xf7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFaxOutgoingJob.VTable
			{
				public function HRESULT(IFaxOutgoingJob2 *self, int16* pbHasCoverPage) get_HasCoverPage;
				public function HRESULT(IFaxOutgoingJob2 *self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public function HRESULT(IFaxOutgoingJob2 *self, FAX_SCHEDULE_TYPE_ENUM* pScheduleType) get_ScheduleType;
			}
		}
		[CRepr]
		public struct IFaxAccountFolders : IDispatch
		{
			public const new Guid IID = .(0x6463f89d, 0x23d8, 0x46a9, 0x8f, 0x86, 0xc4, 0x7b, 0x77, 0xca, 0x79, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountFolders *self, IFaxAccountOutgoingQueue** pFaxOutgoingQueue) get_OutgoingQueue;
				public function HRESULT(IFaxAccountFolders *self, IFaxAccountIncomingQueue** pFaxIncomingQueue) get_IncomingQueue;
				public function HRESULT(IFaxAccountFolders *self, IFaxAccountIncomingArchive** pFaxIncomingArchive) get_IncomingArchive;
				public function HRESULT(IFaxAccountFolders *self, IFaxAccountOutgoingArchive** pFaxOutgoingArchive) get_OutgoingArchive;
			}
		}
		[CRepr]
		public struct IFaxAccountIncomingQueue : IDispatch
		{
			public const new Guid IID = .(0xdd142d92, 0x0186, 0x4a95, 0xa0, 0x90, 0xcb, 0xc3, 0xea, 0xdb, 0xa6, 0xb4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountIncomingQueue *self, IFaxIncomingJobs** pFaxIncomingJobs) GetJobs;
				public function HRESULT(IFaxAccountIncomingQueue *self, BSTR bstrJobId, IFaxIncomingJob** pFaxIncomingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxAccountOutgoingQueue : IDispatch
		{
			public const new Guid IID = .(0x0f1424e9, 0xf22d, 0x4553, 0xb7, 0xa5, 0x0d, 0x24, 0xbd, 0x0d, 0x7e, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountOutgoingQueue *self, IFaxOutgoingJobs** pFaxOutgoingJobs) GetJobs;
				public function HRESULT(IFaxAccountOutgoingQueue *self, BSTR bstrJobId, IFaxOutgoingJob** pFaxOutgoingJob) GetJob;
			}
		}
		[CRepr]
		public struct IFaxOutgoingMessage2 : IFaxOutgoingMessage
		{
			public const new Guid IID = .(0xb37df687, 0xbc88, 0x4b46, 0xb3, 0xbe, 0xb4, 0x58, 0xb3, 0xea, 0x9e, 0x7f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFaxOutgoingMessage.VTable
			{
				public function HRESULT(IFaxOutgoingMessage2 *self, int16* pbHasCoverPage) get_HasCoverPage;
				public function HRESULT(IFaxOutgoingMessage2 *self, FAX_RECEIPT_TYPE_ENUM* pReceiptType) get_ReceiptType;
				public function HRESULT(IFaxOutgoingMessage2 *self, BSTR* pbstrReceiptAddress) get_ReceiptAddress;
				public function HRESULT(IFaxOutgoingMessage2 *self, int16* pbRead) get_Read;
				public function HRESULT(IFaxOutgoingMessage2 *self, int16 bRead) put_Read;
				public function HRESULT(IFaxOutgoingMessage2 *self) Save;
				public function HRESULT(IFaxOutgoingMessage2 *self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxAccountIncomingArchive : IDispatch
		{
			public const new Guid IID = .(0xa8a5b6ef, 0xe0d6, 0x4aee, 0x95, 0x5c, 0x91, 0x62, 0x5b, 0xec, 0x9d, 0xb4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountIncomingArchive *self, int32* plSizeLow) get_SizeLow;
				public function HRESULT(IFaxAccountIncomingArchive *self, int32* plSizeHigh) get_SizeHigh;
				public function HRESULT(IFaxAccountIncomingArchive *self) Refresh;
				public function HRESULT(IFaxAccountIncomingArchive *self, int32 lPrefetchSize, IFaxIncomingMessageIterator** pFaxIncomingMessageIterator) GetMessages;
				public function HRESULT(IFaxAccountIncomingArchive *self, BSTR bstrMessageId, IFaxIncomingMessage** pFaxIncomingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxAccountOutgoingArchive : IDispatch
		{
			public const new Guid IID = .(0x5463076d, 0xec14, 0x491f, 0x92, 0x6e, 0xb3, 0xce, 0xda, 0x5e, 0x56, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxAccountOutgoingArchive *self, int32* plSizeLow) get_SizeLow;
				public function HRESULT(IFaxAccountOutgoingArchive *self, int32* plSizeHigh) get_SizeHigh;
				public function HRESULT(IFaxAccountOutgoingArchive *self) Refresh;
				public function HRESULT(IFaxAccountOutgoingArchive *self, int32 lPrefetchSize, IFaxOutgoingMessageIterator** pFaxOutgoingMessageIterator) GetMessages;
				public function HRESULT(IFaxAccountOutgoingArchive *self, BSTR bstrMessageId, IFaxOutgoingMessage** pFaxOutgoingMessage) GetMessage;
			}
		}
		[CRepr]
		public struct IFaxSecurity2 : IDispatch
		{
			public const new Guid IID = .(0x17d851f4, 0xd09b, 0x48fc, 0x99, 0xc9, 0x8f, 0x24, 0xc4, 0xdb, 0x9a, 0xb1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFaxSecurity2 *self, VARIANT* pvDescriptor) get_Descriptor;
				public function HRESULT(IFaxSecurity2 *self, VARIANT vDescriptor) put_Descriptor;
				public function HRESULT(IFaxSecurity2 *self, FAX_ACCESS_RIGHTS_ENUM_2* pGrantedRights) get_GrantedRights;
				public function HRESULT(IFaxSecurity2 *self) Refresh;
				public function HRESULT(IFaxSecurity2 *self) Save;
				public function HRESULT(IFaxSecurity2 *self, int32* plInformationType) get_InformationType;
				public function HRESULT(IFaxSecurity2 *self, int32 lInformationType) put_InformationType;
			}
		}
		[CRepr]
		public struct IFaxIncomingMessage2 : IFaxIncomingMessage
		{
			public const new Guid IID = .(0xf9208503, 0xe2bc, 0x48f3, 0x9e, 0xc0, 0xe6, 0x23, 0x6f, 0x9b, 0x50, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFaxIncomingMessage.VTable
			{
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR* pbstrSubject) get_Subject;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR bstrSubject) put_Subject;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR* pbstrSenderName) get_SenderName;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR bstrSenderName) put_SenderName;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR* pbstrSenderFaxNumber) get_SenderFaxNumber;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR bstrSenderFaxNumber) put_SenderFaxNumber;
				public function HRESULT(IFaxIncomingMessage2 *self, int16* pbHasCoverPage) get_HasCoverPage;
				public function HRESULT(IFaxIncomingMessage2 *self, int16 bHasCoverPage) put_HasCoverPage;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR* pbstrRecipients) get_Recipients;
				public function HRESULT(IFaxIncomingMessage2 *self, BSTR bstrRecipients) put_Recipients;
				public function HRESULT(IFaxIncomingMessage2 *self, int16* pbWasReAssigned) get_WasReAssigned;
				public function HRESULT(IFaxIncomingMessage2 *self, int16* pbRead) get_Read;
				public function HRESULT(IFaxIncomingMessage2 *self, int16 bRead) put_Read;
				public function HRESULT(IFaxIncomingMessage2 *self) ReAssign;
				public function HRESULT(IFaxIncomingMessage2 *self) Save;
				public function HRESULT(IFaxIncomingMessage2 *self) Refresh;
			}
		}
		[CRepr]
		public struct IFaxServerNotify : IDispatch
		{
			public const new Guid IID = .(0x2e037b27, 0xcf8a, 0x4abd, 0xb1, 0xe0, 0x57, 0x04, 0x94, 0x3b, 0xea, 0x6f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct _IFaxServerNotify2 : IDispatch
		{
			public const new Guid IID = .(0xec9c69b9, 0x5fe7, 0x4805, 0x94, 0x67, 0x82, 0xfc, 0xd9, 0x6a, 0xf9, 0x03);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnIncomingJobAdded;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnIncomingJobRemoved;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnIncomingJobChanged;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnOutgoingJobAdded;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId) OnOutgoingJobRemoved;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnOutgoingJobChanged;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnIncomingMessageAdded;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnIncomingMessageRemoved;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnOutgoingMessageAdded;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, BSTR bstrMessageId) OnOutgoingMessageRemoved;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnReceiptOptionsChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnActivityLoggingConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnSecurityConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnEventLoggingConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnOutgoingQueueConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnOutgoingArchiveConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnIncomingArchiveConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnDevicesConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnOutboundRoutingGroupsConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnOutboundRoutingRulesConfigChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, int32 lIncomingMessages, int32 lRoutingMessages, int32 lOutgoingMessages, int32 lQueuedMessages) OnServerActivityChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, int16 bOutgoingQueueBlocked, int16 bOutgoingQueuePaused, int16 bIncomingQueueBlocked) OnQueuesStatusChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, int32 lCallId, int32 lDeviceId, BSTR bstrCallerId) OnNewCall;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnServerShutDown;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer, int32 lDeviceId, int16 bPoweredOff, int16 bSending, int16 bReceiving, int16 bRinging) OnDeviceStatusChange;
				public function HRESULT(_IFaxServerNotify2 *self, IFaxServer2* pFaxServer) OnGeneralServerConfigChanged;
			}
		}
		[CRepr]
		public struct IFaxServerNotify2 : IDispatch
		{
			public const new Guid IID = .(0x616ca8d6, 0xa77a, 0x4062, 0xab, 0xfd, 0x0e, 0x47, 0x12, 0x41, 0xc7, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct _IFaxAccountNotify : IDispatch
		{
			public const new Guid IID = .(0xb9b3bc81, 0xac1b, 0x46f3, 0xb3, 0x9d, 0x0a, 0xdc, 0x30, 0xe1, 0xb7, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnIncomingJobAdded;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnIncomingJobRemoved;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnIncomingJobChanged;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnOutgoingJobAdded;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId) OnOutgoingJobRemoved;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrJobId, IFaxJobStatus* pJobStatus) OnOutgoingJobChanged;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fAddedToReceiveFolder) OnIncomingMessageAdded;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrMessageId, int16 fRemovedFromReceiveFolder) OnIncomingMessageRemoved;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrMessageId) OnOutgoingMessageAdded;
				public function HRESULT(_IFaxAccountNotify *self, IFaxAccount* pFaxAccount, BSTR bstrMessageId) OnOutgoingMessageRemoved;
				public function HRESULT(_IFaxAccountNotify *self, IFaxServer2* pFaxServer) OnServerShutDown;
			}
		}
		[CRepr]
		public struct IFaxAccountNotify : IDispatch
		{
			public const new Guid IID = .(0x0b5e5bd1, 0xb8a9, 0x47a0, 0xa3, 0x23, 0xef, 0x4a, 0x29, 0x3b, 0xa0, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IStillImageW : IUnknown
		{
			public const new Guid IID = .(0x641bd880, 0x2dc8, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStillImageW *self, HINSTANCE hinst, uint32 dwVersion) Initialize;
				public function HRESULT(IStillImageW *self, uint32 dwType, uint32 dwFlags, uint32* pdwItemsReturned, void** ppBuffer) GetDeviceList;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, void** ppBuffer) GetDeviceInfo;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, uint32 dwMode, IStiDevice** pDevice, IUnknown* punkOuter) CreateDevice;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, PWSTR pValueName, uint32* pType, uint8* pData, uint32* cbData) GetDeviceValue;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, PWSTR pValueName, uint32 Type, uint8* pData, uint32 cbData) SetDeviceValue;
				public function HRESULT(IStillImageW *self, char16* pwszDeviceName, uint32* pdwEventCode, char16* pwszEventName) GetSTILaunchInformation;
				public function HRESULT(IStillImageW *self, PWSTR pwszAppName, PWSTR pwszCommandLine) RegisterLaunchApplication;
				public function HRESULT(IStillImageW *self, PWSTR pwszAppName) UnregisterLaunchApplication;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, BOOL bNewState) EnableHwNotifications;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, BOOL* pbCurrentState) GetHwNotificationState;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName) RefreshDeviceBus;
				public function HRESULT(IStillImageW *self, PWSTR pwszDeviceName, PWSTR pwszAppName, STINOTIFY* pStiNotify) LaunchApplicationForDevice;
				public function HRESULT(IStillImageW *self, STI_DEVICE_INFORMATIONW* param0) SetupDeviceParameters;
				public function HRESULT(IStillImageW *self, uint32 dwMessageType, PWSTR pszMessage) WriteToErrorLog;
			}
		}
		[CRepr]
		public struct IStiDevice : IUnknown
		{
			public const new Guid IID = .(0x6cfa5a80, 0x2dc8, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStiDevice *self, HINSTANCE hinst, PWSTR pwszDeviceName, uint32 dwVersion, uint32 dwMode) Initialize;
				public function HRESULT(IStiDevice *self, STI_DEV_CAPS* pDevCaps) GetCapabilities;
				public function HRESULT(IStiDevice *self, STI_DEVICE_STATUS* pDevStatus) GetStatus;
				public function HRESULT(IStiDevice *self) DeviceReset;
				public function HRESULT(IStiDevice *self, STI_DIAG* pBuffer) Diagnostic;
				public function HRESULT(IStiDevice *self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, uint32* pdwActualData) Escape;
				public function HRESULT(IStiDevice *self, uint32* pdwLastDeviceError) GetLastError;
				public function HRESULT(IStiDevice *self, uint32 dwTimeOut) LockDevice;
				public function HRESULT(IStiDevice *self) UnLockDevice;
				public function HRESULT(IStiDevice *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadData;
				public function HRESULT(IStiDevice *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteData;
				public function HRESULT(IStiDevice *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadCommand;
				public function HRESULT(IStiDevice *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteCommand;
				public function HRESULT(IStiDevice *self, STISUBSCRIBE* lpSubsribe) Subscribe;
				public function HRESULT(IStiDevice *self, STINOTIFY* lpNotify) GetLastNotificationData;
				public function HRESULT(IStiDevice *self) UnSubscribe;
				public function HRESULT(IStiDevice *self, _ERROR_INFOW* pLastErrorInfo) GetLastErrorInfo;
			}
		}
		[CRepr]
		public struct IStiDeviceControl : IUnknown
		{
			public const new Guid IID = .(0x128a9860, 0x52dc, 0x11d0, 0x9e, 0xdf, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStiDeviceControl *self, uint32 dwDeviceType, uint32 dwMode, PWSTR pwszPortName, uint32 dwFlags) Initialize;
				public function HRESULT(IStiDeviceControl *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadData;
				public function HRESULT(IStiDeviceControl *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteData;
				public function HRESULT(IStiDeviceControl *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadCommand;
				public function HRESULT(IStiDeviceControl *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteCommand;
				public function HRESULT(IStiDeviceControl *self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 dwOutDataSize, uint32* pdwActualData) RawDeviceControl;
				public function HRESULT(IStiDeviceControl *self, uint32* lpdwLastError) GetLastError;
				public function HRESULT(IStiDeviceControl *self, char16* lpszDevicePath, uint32 cwDevicePathSize) GetMyDevicePortName;
				public function HRESULT(IStiDeviceControl *self, HANDLE* lph) GetMyDeviceHandle;
				public function HRESULT(IStiDeviceControl *self, uint32* pdwOpenMode) GetMyDeviceOpenMode;
				public function HRESULT(IStiDeviceControl *self, uint32 dwMessageType, PWSTR pszMessage, uint32 dwErrorCode) WriteToErrorLog;
			}
		}
		[CRepr]
		public struct IStiUSD : IUnknown
		{
			public const new Guid IID = .(0x0c9bb460, 0x51ac, 0x11d0, 0x90, 0xea, 0x00, 0xaa, 0x00, 0x60, 0xf8, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStiUSD *self, IStiDeviceControl* pHelDcb, uint32 dwStiVersion, HKEY hParametersKey) Initialize;
				public function HRESULT(IStiUSD *self, STI_USD_CAPS* pDevCaps) GetCapabilities;
				public function HRESULT(IStiUSD *self, STI_DEVICE_STATUS* pDevStatus) GetStatus;
				public function HRESULT(IStiUSD *self) DeviceReset;
				public function HRESULT(IStiUSD *self, STI_DIAG* pBuffer) Diagnostic;
				public function HRESULT(IStiUSD *self, uint32 EscapeFunction, void* lpInData, uint32 cbInDataSize, void* pOutData, uint32 cbOutDataSize, uint32* pdwActualData) Escape;
				public function HRESULT(IStiUSD *self, uint32* pdwLastDeviceError) GetLastError;
				public function HRESULT(IStiUSD *self) LockDevice;
				public function HRESULT(IStiUSD *self) UnLockDevice;
				public function HRESULT(IStiUSD *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadData;
				public function HRESULT(IStiUSD *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteData;
				public function HRESULT(IStiUSD *self, void* lpBuffer, uint32* lpdwNumberOfBytes, OVERLAPPED* lpOverlapped) RawReadCommand;
				public function HRESULT(IStiUSD *self, void* lpBuffer, uint32 nNumberOfBytes, OVERLAPPED* lpOverlapped) RawWriteCommand;
				public function HRESULT(IStiUSD *self, HANDLE hEvent) SetNotificationHandle;
				public function HRESULT(IStiUSD *self, STINOTIFY* lpNotify) GetNotificationData;
				public function HRESULT(IStiUSD *self, _ERROR_INFOW* pLastErrorInfo) GetLastErrorInfo;
			}
		}
		
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
		public static extern HRESULT StiCreateInstanceW(HINSTANCE hinst, uint32 dwVer, IStillImageW** ppSti, IUnknown* punkOuter);
		
	}
}
