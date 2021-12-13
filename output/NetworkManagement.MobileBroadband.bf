using System;

// namespace NetworkManagement.MobileBroadband
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MBN_SIGNAL_CONSTANTS : int32
		{
			MBN_RSSI_DEFAULT = -1,
			MBN_RSSI_DISABLE = 0,
			MBN_RSSI_UNKNOWN = 99,
			MBN_ERROR_RATE_UNKNOWN = 99,
		}
		[AllowDuplicates]
		public enum MBN_CELLULAR_CLASS : int32
		{
			MBN_CELLULAR_CLASS_NONE = 0,
			MBN_CELLULAR_CLASS_GSM = 1,
			MBN_CELLULAR_CLASS_CDMA = 2,
		}
		[AllowDuplicates]
		public enum MBN_VOICE_CLASS : int32
		{
			MBN_VOICE_CLASS_NONE = 0,
			MBN_VOICE_CLASS_NO_VOICE = 1,
			MBN_VOICE_CLASS_SEPARATE_VOICE_DATA = 2,
			MBN_VOICE_CLASS_SIMULTANEOUS_VOICE_DATA = 3,
		}
		[AllowDuplicates]
		public enum MBN_PROVIDER_STATE : int32
		{
			MBN_PROVIDER_STATE_NONE = 0,
			MBN_PROVIDER_STATE_HOME = 1,
			MBN_PROVIDER_STATE_FORBIDDEN = 2,
			MBN_PROVIDER_STATE_PREFERRED = 4,
			MBN_PROVIDER_STATE_VISIBLE = 8,
			MBN_PROVIDER_STATE_REGISTERED = 16,
			MBN_PROVIDER_STATE_PREFERRED_MULTICARRIER = 32,
		}
		[AllowDuplicates]
		public enum MBN_PROVIDER_CONSTANTS : int32
		{
			MBN_PROVIDERNAME_LEN = 20,
			MBN_PROVIDERID_LEN = 6,
		}
		[AllowDuplicates]
		public enum MBN_INTERFACE_CAPS_CONSTANTS : int32
		{
			MBN_DEVICEID_LEN = 18,
			MBN_MANUFACTURER_LEN = 32,
			MBN_MODEL_LEN = 32,
			MBN_FIRMWARE_LEN = 32,
		}
		[AllowDuplicates]
		public enum MBN_DATA_CLASS : int32
		{
			MBN_DATA_CLASS_NONE = 0,
			MBN_DATA_CLASS_GPRS = 1,
			MBN_DATA_CLASS_EDGE = 2,
			MBN_DATA_CLASS_UMTS = 4,
			MBN_DATA_CLASS_HSDPA = 8,
			MBN_DATA_CLASS_HSUPA = 16,
			MBN_DATA_CLASS_LTE = 32,
			MBN_DATA_CLASS_5G_NSA = 64,
			MBN_DATA_CLASS_5G_SA = 128,
			MBN_DATA_CLASS_1XRTT = 65536,
			MBN_DATA_CLASS_1XEVDO = 131072,
			MBN_DATA_CLASS_1XEVDO_REVA = 262144,
			MBN_DATA_CLASS_1XEVDV = 524288,
			MBN_DATA_CLASS_3XRTT = 1048576,
			MBN_DATA_CLASS_1XEVDO_REVB = 2097152,
			MBN_DATA_CLASS_UMB = 4194304,
			MBN_DATA_CLASS_CUSTOM = -2147483648,
		}
		[AllowDuplicates]
		public enum MBN_CTRL_CAPS : int32
		{
			MBN_CTRL_CAPS_NONE = 0,
			MBN_CTRL_CAPS_REG_MANUAL = 1,
			MBN_CTRL_CAPS_HW_RADIO_SWITCH = 2,
			MBN_CTRL_CAPS_CDMA_MOBILE_IP = 4,
			MBN_CTRL_CAPS_CDMA_SIMPLE_IP = 8,
			MBN_CTRL_CAPS_PROTECT_UNIQUEID = 16,
			MBN_CTRL_CAPS_MODEL_MULTI_CARRIER = 32,
			MBN_CTRL_CAPS_USSD = 64,
			MBN_CTRL_CAPS_MULTI_MODE = 128,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CAPS : int32
		{
			MBN_SMS_CAPS_NONE = 0,
			MBN_SMS_CAPS_PDU_RECEIVE = 1,
			MBN_SMS_CAPS_PDU_SEND = 2,
			MBN_SMS_CAPS_TEXT_RECEIVE = 4,
			MBN_SMS_CAPS_TEXT_SEND = 8,
		}
		[AllowDuplicates]
		public enum MBN_BAND_CLASS : int32
		{
			MBN_BAND_CLASS_NONE = 0,
			MBN_BAND_CLASS_0 = 1,
			MBN_BAND_CLASS_I = 2,
			MBN_BAND_CLASS_II = 4,
			MBN_BAND_CLASS_III = 8,
			MBN_BAND_CLASS_IV = 16,
			MBN_BAND_CLASS_V = 32,
			MBN_BAND_CLASS_VI = 64,
			MBN_BAND_CLASS_VII = 128,
			MBN_BAND_CLASS_VIII = 256,
			MBN_BAND_CLASS_IX = 512,
			MBN_BAND_CLASS_X = 1024,
			MBN_BAND_CLASS_XI = 2048,
			MBN_BAND_CLASS_XII = 4096,
			MBN_BAND_CLASS_XIII = 8192,
			MBN_BAND_CLASS_XIV = 16384,
			MBN_BAND_CLASS_XV = 32768,
			MBN_BAND_CLASS_XVI = 65536,
			MBN_BAND_CLASS_XVII = 131072,
			MBN_BAND_CLASS_CUSTOM = -2147483648,
		}
		[AllowDuplicates]
		public enum MBN_READY_STATE : int32
		{
			MBN_READY_STATE_OFF = 0,
			MBN_READY_STATE_INITIALIZED = 1,
			MBN_READY_STATE_SIM_NOT_INSERTED = 2,
			MBN_READY_STATE_BAD_SIM = 3,
			MBN_READY_STATE_FAILURE = 4,
			MBN_READY_STATE_NOT_ACTIVATED = 5,
			MBN_READY_STATE_DEVICE_LOCKED = 6,
			MBN_READY_STATE_DEVICE_BLOCKED = 7,
			MBN_READY_STATE_NO_ESIM_PROFILE = 8,
		}
		[AllowDuplicates]
		public enum MBN_ACTIVATION_STATE : int32
		{
			MBN_ACTIVATION_STATE_NONE = 0,
			MBN_ACTIVATION_STATE_ACTIVATED = 1,
			MBN_ACTIVATION_STATE_ACTIVATING = 2,
			MBN_ACTIVATION_STATE_DEACTIVATED = 3,
			MBN_ACTIVATION_STATE_DEACTIVATING = 4,
		}
		[AllowDuplicates]
		public enum MBN_CONNECTION_MODE : int32
		{
			MBN_CONNECTION_MODE_PROFILE = 0,
			MBN_CONNECTION_MODE_TMP_PROFILE = 1,
		}
		[AllowDuplicates]
		public enum MBN_VOICE_CALL_STATE : int32
		{
			MBN_VOICE_CALL_STATE_NONE = 0,
			MBN_VOICE_CALL_STATE_IN_PROGRESS = 1,
			MBN_VOICE_CALL_STATE_HANGUP = 2,
		}
		[AllowDuplicates]
		public enum MBN_REGISTRATION_CONSTANTS : int32
		{
			MBN_ROAMTEXT_LEN = 64,
			MBN_CDMA_DEFAULT_PROVIDER_ID = 0,
		}
		[AllowDuplicates]
		public enum MBN_REGISTER_STATE : int32
		{
			MBN_REGISTER_STATE_NONE = 0,
			MBN_REGISTER_STATE_DEREGISTERED = 1,
			MBN_REGISTER_STATE_SEARCHING = 2,
			MBN_REGISTER_STATE_HOME = 3,
			MBN_REGISTER_STATE_ROAMING = 4,
			MBN_REGISTER_STATE_PARTNER = 5,
			MBN_REGISTER_STATE_DENIED = 6,
		}
		[AllowDuplicates]
		public enum MBN_REGISTER_MODE : int32
		{
			MBN_REGISTER_MODE_NONE = 0,
			MBN_REGISTER_MODE_AUTOMATIC = 1,
			MBN_REGISTER_MODE_MANUAL = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_CONSTANTS : int32
		{
			MBN_ATTEMPTS_REMAINING_UNKNOWN = -1,
			MBN_PIN_LENGTH_UNKNOWN = -1,
		}
		[AllowDuplicates]
		public enum MBN_PIN_STATE : int32
		{
			MBN_PIN_STATE_NONE = 0,
			MBN_PIN_STATE_ENTER = 1,
			MBN_PIN_STATE_UNBLOCK = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_TYPE : int32
		{
			MBN_PIN_TYPE_NONE = 0,
			MBN_PIN_TYPE_CUSTOM = 1,
			MBN_PIN_TYPE_PIN1 = 2,
			MBN_PIN_TYPE_PIN2 = 3,
			MBN_PIN_TYPE_DEVICE_SIM_PIN = 4,
			MBN_PIN_TYPE_DEVICE_FIRST_SIM_PIN = 5,
			MBN_PIN_TYPE_NETWORK_PIN = 6,
			MBN_PIN_TYPE_NETWORK_SUBSET_PIN = 7,
			MBN_PIN_TYPE_SVC_PROVIDER_PIN = 8,
			MBN_PIN_TYPE_CORPORATE_PIN = 9,
			MBN_PIN_TYPE_SUBSIDY_LOCK = 10,
		}
		[AllowDuplicates]
		public enum MBN_PIN_MODE : int32
		{
			MBN_PIN_MODE_ENABLED = 1,
			MBN_PIN_MODE_DISABLED = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_FORMAT : int32
		{
			MBN_PIN_FORMAT_NONE = 0,
			MBN_PIN_FORMAT_NUMERIC = 1,
			MBN_PIN_FORMAT_ALPHANUMERIC = 2,
		}
		[AllowDuplicates]
		public enum MBN_CONTEXT_CONSTANTS : int32
		{
			MBN_ACCESSSTRING_LEN = 100,
			MBN_USERNAME_LEN = 255,
			MBN_PASSWORD_LEN = 255,
			MBN_CONTEXT_ID_APPEND = -1,
		}
		[AllowDuplicates]
		public enum MBN_AUTH_PROTOCOL : int32
		{
			MBN_AUTH_PROTOCOL_NONE = 0,
			MBN_AUTH_PROTOCOL_PAP = 1,
			MBN_AUTH_PROTOCOL_CHAP = 2,
			MBN_AUTH_PROTOCOL_MSCHAPV2 = 3,
		}
		[AllowDuplicates]
		public enum MBN_COMPRESSION : int32
		{
			MBN_COMPRESSION_NONE = 0,
			MBN_COMPRESSION_ENABLE = 1,
		}
		[AllowDuplicates]
		public enum MBN_CONTEXT_TYPE : int32
		{
			MBN_CONTEXT_TYPE_NONE = 0,
			MBN_CONTEXT_TYPE_INTERNET = 1,
			MBN_CONTEXT_TYPE_VPN = 2,
			MBN_CONTEXT_TYPE_VOICE = 3,
			MBN_CONTEXT_TYPE_VIDEO_SHARE = 4,
			MBN_CONTEXT_TYPE_CUSTOM = 5,
			MBN_CONTEXT_TYPE_PURCHASE = 6,
		}
		[AllowDuplicates]
		public enum WWAEXT_SMS_CONSTANTS : int32
		{
			MBN_MESSAGE_INDEX_NONE = 0,
			MBN_CDMA_SHORT_MSG_SIZE_UNKNOWN = 0,
			MBN_CDMA_SHORT_MSG_SIZE_MAX = 160,
		}
		[AllowDuplicates]
		public enum MBN_MSG_STATUS : int32
		{
			MBN_MSG_STATUS_NEW = 0,
			MBN_MSG_STATUS_OLD = 1,
			MBN_MSG_STATUS_DRAFT = 2,
			MBN_MSG_STATUS_SENT = 3,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CDMA_LANG : int32
		{
			MBN_SMS_CDMA_LANG_NONE = 0,
			MBN_SMS_CDMA_LANG_ENGLISH = 1,
			MBN_SMS_CDMA_LANG_FRENCH = 2,
			MBN_SMS_CDMA_LANG_SPANISH = 3,
			MBN_SMS_CDMA_LANG_JAPANESE = 4,
			MBN_SMS_CDMA_LANG_KOREAN = 5,
			MBN_SMS_CDMA_LANG_CHINESE = 6,
			MBN_SMS_CDMA_LANG_HEBREW = 7,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CDMA_ENCODING : int32
		{
			MBN_SMS_CDMA_ENCODING_OCTET = 0,
			MBN_SMS_CDMA_ENCODING_EPM = 1,
			MBN_SMS_CDMA_ENCODING_7BIT_ASCII = 2,
			MBN_SMS_CDMA_ENCODING_IA5 = 3,
			MBN_SMS_CDMA_ENCODING_UNICODE = 4,
			MBN_SMS_CDMA_ENCODING_SHIFT_JIS = 5,
			MBN_SMS_CDMA_ENCODING_KOREAN = 6,
			MBN_SMS_CDMA_ENCODING_LATIN_HEBREW = 7,
			MBN_SMS_CDMA_ENCODING_LATIN = 8,
			MBN_SMS_CDMA_ENCODING_GSM_7BIT = 9,
		}
		[AllowDuplicates]
		public enum MBN_SMS_FLAG : int32
		{
			MBN_SMS_FLAG_ALL = 0,
			MBN_SMS_FLAG_INDEX = 1,
			MBN_SMS_FLAG_NEW = 2,
			MBN_SMS_FLAG_OLD = 3,
			MBN_SMS_FLAG_SENT = 4,
			MBN_SMS_FLAG_DRAFT = 5,
		}
		[AllowDuplicates]
		public enum MBN_SMS_STATUS_FLAG : int32
		{
			MBN_SMS_FLAG_NONE = 0,
			MBN_SMS_FLAG_MESSAGE_STORE_FULL = 1,
			MBN_SMS_FLAG_NEW_MESSAGE = 2,
		}
		[AllowDuplicates]
		public enum MBN_SMS_FORMAT : int32
		{
			MBN_SMS_FORMAT_NONE = 0,
			MBN_SMS_FORMAT_PDU = 1,
			MBN_SMS_FORMAT_TEXT = 2,
		}
		[AllowDuplicates]
		public enum MBN_RADIO : int32
		{
			MBN_RADIO_OFF = 0,
			MBN_RADIO_ON = 1,
		}
		[AllowDuplicates]
		public enum MBN_DEVICE_SERVICE_SESSIONS_STATE : int32
		{
			MBN_DEVICE_SERVICE_SESSIONS_RESTORED = 0,
		}
		[AllowDuplicates]
		public enum MBN_DEVICE_SERVICES_INTERFACE_STATE : int32
		{
			MBN_DEVICE_SERVICES_CAPABLE_INTERFACE_ARRIVAL = 0,
			MBN_DEVICE_SERVICES_CAPABLE_INTERFACE_REMOVAL = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct MBN_INTERFACE_CAPS
		{
			public MBN_CELLULAR_CLASS cellularClass;
			public MBN_VOICE_CLASS voiceClass;
			public uint32 dataClass;
			public BSTR customDataClass;
			public uint32 gsmBandClass;
			public uint32 cdmaBandClass;
			public BSTR customBandClass;
			public uint32 smsCaps;
			public uint32 controlCaps;
			public BSTR deviceID;
			public BSTR manufacturer;
			public BSTR model;
			public BSTR firmwareInfo;
		}
		[CRepr]
		public struct MBN_PROVIDER
		{
			public BSTR providerID;
			public uint32 providerState;
			public BSTR providerName;
			public uint32 dataClass;
		}
		[CRepr]
		public struct MBN_PROVIDER2
		{
			public MBN_PROVIDER provider;
			public MBN_CELLULAR_CLASS cellularClass;
			public uint32 signalStrength;
			public uint32 signalError;
		}
		[CRepr]
		public struct MBN_PIN_INFO
		{
			public MBN_PIN_STATE pinState;
			public MBN_PIN_TYPE pinType;
			public uint32 attemptsRemaining;
		}
		[CRepr]
		public struct MBN_CONTEXT
		{
			public uint32 contextID;
			public MBN_CONTEXT_TYPE contextType;
			public BSTR accessString;
			public BSTR userName;
			public BSTR password;
			public MBN_COMPRESSION compression;
			public MBN_AUTH_PROTOCOL authType;
		}
		[CRepr]
		public struct MBN_SMS_FILTER
		{
			public MBN_SMS_FLAG flag;
			public uint32 messageIndex;
		}
		[CRepr]
		public struct MBN_SMS_STATUS_INFO
		{
			public uint32 flag;
			public uint32 messageIndex;
		}
		[CRepr]
		public struct MBN_DEVICE_SERVICE
		{
			public BSTR deviceServiceID;
			public int16 dataWriteSupported;
			public int16 dataReadSupported;
		}
		[CRepr]
		public struct __mbnapi_ReferenceRemainingTypes__
		{
			public MBN_BAND_CLASS bandClass;
			public MBN_CONTEXT_CONSTANTS contextConstants;
			public MBN_CTRL_CAPS ctrlCaps;
			public MBN_DATA_CLASS dataClass;
			public MBN_INTERFACE_CAPS_CONSTANTS interfaceCapsConstants;
			public MBN_PIN_CONSTANTS pinConstants;
			public MBN_PROVIDER_CONSTANTS providerConstants;
			public MBN_PROVIDER_STATE providerState;
			public MBN_REGISTRATION_CONSTANTS registrationConstants;
			public MBN_SIGNAL_CONSTANTS signalConstants;
			public MBN_SMS_CAPS smsCaps;
			public WWAEXT_SMS_CONSTANTS smsConstants;
			public WWAEXT_SMS_CONSTANTS wwaextSmsConstants;
			public MBN_SMS_STATUS_FLAG smsStatusFlag;
		}
		[CRepr]
		public struct __DummyPinType__
		{
			public uint32 pinType;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MbnConnectionProfileManager = .(0xbdfee05a, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnInterfaceManager = .(0xbdfee05b, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnConnectionManager = .(0xbdfee05c, 0x4418, 0x11dd, 0x90, 0xed, 0x00, 0x1c, 0x25, 0x7c, 0xcf, 0xf1);
		public const Guid CLSID_MbnDeviceServicesManager = .(0x2269daa3, 0x2a9f, 0x4165, 0xa5, 0x01, 0xce, 0x00, 0xa6, 0xf7, 0xa7, 0x5b);
		
		// --- COM Interfaces ---
		
		public struct IDummyMBNUCMExt {}
		public struct IMbnConnection {}
		public struct IMbnConnectionEvents {}
		public struct IMbnInterface {}
		public struct IMbnInterfaceEvents {}
		public struct IMbnInterfaceManager {}
		public struct IMbnInterfaceManagerEvents {}
		public struct IMbnRegistration {}
		public struct IMbnRegistrationEvents {}
		public struct IMbnConnectionManager {}
		public struct IMbnConnectionManagerEvents {}
		public struct IMbnPinManager {}
		public struct IMbnPinManagerEvents {}
		public struct IMbnPinEvents {}
		public struct IMbnSubscriberInformation {}
		public struct IMbnSignal {}
		public struct IMbnSignalEvents {}
		public struct IMbnConnectionContext {}
		public struct IMbnConnectionContextEvents {}
		public struct IMbnConnectionProfileManager {}
		public struct IMbnConnectionProfile {}
		public struct IMbnConnectionProfileEvents {}
		public struct IMbnSmsConfiguration {}
		public struct IMbnSmsReadMsgPdu {}
		public struct IMbnSmsReadMsgTextCdma {}
		public struct IMbnSms {}
		public struct IMbnSmsEvents {}
		public struct IMbnServiceActivation {}
		public struct IMbnServiceActivationEvents {}
		public struct IMbnVendorSpecificOperation {}
		public struct IMbnVendorSpecificEvents {}
		public struct IMbnConnectionProfileManagerEvents {}
		public struct IMbnRadio {}
		public struct IMbnRadioEvents {}
		public struct IMbnMultiCarrier {}
		public struct IMbnMultiCarrierEvents {}
		public struct IMbnDeviceServiceStateEvents {}
		public struct IMbnDeviceServicesManager {}
		public struct IMbnDeviceServicesContext {}
		public struct IMbnDeviceServicesEvents {}
		public struct IMbnDeviceService {}
		public struct IMbnPin {}
		
	}
}
