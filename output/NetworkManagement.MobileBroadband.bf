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
		
		[CRepr]
		public struct IDummyMBNUCMExt : IDispatch
		{
			public const new Guid IID = .(0xdcbbbab6, 0xffff, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
		}
		[CRepr]
		public struct IMbnConnection : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnection *self, BSTR* ConnectionID) get_ConnectionID;
			public function HRESULT(IMbnConnection *self, BSTR* InterfaceID) get_InterfaceID;
			public function HRESULT(IMbnConnection *self, MBN_CONNECTION_MODE connectionMode, PWSTR strProfile, uint32* requestID) Connect;
			public function HRESULT(IMbnConnection *self, uint32* requestID) Disconnect;
			public function HRESULT(IMbnConnection *self, MBN_ACTIVATION_STATE* ConnectionState, BSTR* ProfileName) GetConnectionState;
			public function HRESULT(IMbnConnection *self, MBN_VOICE_CALL_STATE* voiceCallState) GetVoiceCallState;
			public function HRESULT(IMbnConnection *self, uint32* networkError) GetActivationNetworkError;
		}
		[CRepr]
		public struct IMbnConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection, uint32 requestID, HRESULT status) OnConnectComplete;
			public function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection, uint32 requestID, HRESULT status) OnDisconnectComplete;
			public function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection) OnConnectStateChange;
			public function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection) OnVoiceCallStateChange;
		}
		[CRepr]
		public struct IMbnInterface : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2001, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnInterface *self, BSTR* InterfaceID) get_InterfaceID;
			public function HRESULT(IMbnInterface *self, MBN_INTERFACE_CAPS* interfaceCaps) GetInterfaceCapability;
			public function HRESULT(IMbnInterface *self, IMbnSubscriberInformation** subscriberInformation) GetSubscriberInformation;
			public function HRESULT(IMbnInterface *self, MBN_READY_STATE* readyState) GetReadyState;
			public function HRESULT(IMbnInterface *self, int16* emergencyMode) InEmergencyMode;
			public function HRESULT(IMbnInterface *self, MBN_PROVIDER* homeProvider) GetHomeProvider;
			public function HRESULT(IMbnInterface *self, SAFEARRAY** preferredProviders) GetPreferredProviders;
			public function HRESULT(IMbnInterface *self, SAFEARRAY* preferredProviders, uint32* requestID) SetPreferredProviders;
			public function HRESULT(IMbnInterface *self, uint32* age, SAFEARRAY** visibleProviders) GetVisibleProviders;
			public function HRESULT(IMbnInterface *self, uint32* requestID) ScanNetwork;
			public function HRESULT(IMbnInterface *self, IMbnConnection** mbnConnection) GetConnection;
		}
		[CRepr]
		public struct IMbnInterfaceEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2002, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnInterfaceCapabilityAvailable;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnSubscriberInformationChange;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnReadyStateChange;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnEmergencyModeChange;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnHomeProviderAvailable;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnPreferredProvidersChange;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface, uint32 requestID, HRESULT status) OnSetPreferredProvidersComplete;
			public function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
		}
		[CRepr]
		public struct IMbnInterfaceManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnInterfaceManager *self, PWSTR interfaceID, IMbnInterface** mbnInterface) GetInterface;
			public function HRESULT(IMbnInterfaceManager *self, SAFEARRAY** mbnInterfaces) GetInterfaces;
		}
		[CRepr]
		public struct IMbnInterfaceManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnInterfaceManagerEvents *self, IMbnInterface* newInterface) OnInterfaceArrival;
			public function HRESULT(IMbnInterfaceManagerEvents *self, IMbnInterface* oldInterface) OnInterfaceRemoval;
		}
		[CRepr]
		public struct IMbnRegistration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2009, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnRegistration *self, MBN_REGISTER_STATE* registerState) GetRegisterState;
			public function HRESULT(IMbnRegistration *self, MBN_REGISTER_MODE* registerMode) GetRegisterMode;
			public function HRESULT(IMbnRegistration *self, BSTR* providerID) GetProviderID;
			public function HRESULT(IMbnRegistration *self, BSTR* providerName) GetProviderName;
			public function HRESULT(IMbnRegistration *self, BSTR* roamingText) GetRoamingText;
			public function HRESULT(IMbnRegistration *self, uint32* availableDataClasses) GetAvailableDataClasses;
			public function HRESULT(IMbnRegistration *self, uint32* currentDataClass) GetCurrentDataClass;
			public function HRESULT(IMbnRegistration *self, uint32* registrationNetworkError) GetRegistrationNetworkError;
			public function HRESULT(IMbnRegistration *self, uint32* packetAttachNetworkError) GetPacketAttachNetworkError;
			public function HRESULT(IMbnRegistration *self, MBN_REGISTER_MODE registerMode, PWSTR providerID, uint32 dataClass, uint32* requestID) SetRegisterMode;
		}
		[CRepr]
		public struct IMbnRegistrationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnRegisterModeAvailable;
			public function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnRegisterStateChange;
			public function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnPacketServiceStateChange;
			public function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface, uint32 requestID, HRESULT status) OnSetRegisterModeComplete;
		}
		[CRepr]
		public struct IMbnConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionManager *self, PWSTR connectionID, IMbnConnection** mbnConnection) GetConnection;
			public function HRESULT(IMbnConnectionManager *self, SAFEARRAY** mbnConnections) GetConnections;
		}
		[CRepr]
		public struct IMbnConnectionManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionManagerEvents *self, IMbnConnection* newConnection) OnConnectionArrival;
			public function HRESULT(IMbnConnectionManagerEvents *self, IMbnConnection* oldConnection) OnConnectionRemoval;
		}
		[CRepr]
		public struct IMbnPinManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2005, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnPinManager *self, SAFEARRAY** pinList) GetPinList;
			public function HRESULT(IMbnPinManager *self, MBN_PIN_TYPE pinType, IMbnPin** pin) GetPin;
			public function HRESULT(IMbnPinManager *self, uint32* requestID) GetPinState;
		}
		[CRepr]
		public struct IMbnPinManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2006, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnPinManagerEvents *self, IMbnPinManager* pinManager) OnPinListAvailable;
			public function HRESULT(IMbnPinManagerEvents *self, IMbnPinManager* pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnGetPinStateComplete;
		}
		[CRepr]
		public struct IMbnPinEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2008, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnPinEvents *self, IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnEnableComplete;
			public function HRESULT(IMbnPinEvents *self, IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnDisableComplete;
			public function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnEnterComplete;
			public function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnChangeComplete;
			public function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnUnblockComplete;
		}
		[CRepr]
		public struct IMbnSubscriberInformation : IUnknown
		{
			public const new Guid IID = .(0x459ecc43, 0xbcf5, 0x11dc, 0xa8, 0xa8, 0x00, 0x13, 0x21, 0xf1, 0x40, 0x5f);
			
			public function HRESULT(IMbnSubscriberInformation *self, BSTR* SubscriberID) get_SubscriberID;
			public function HRESULT(IMbnSubscriberInformation *self, BSTR* SimIccID) get_SimIccID;
			public function HRESULT(IMbnSubscriberInformation *self, SAFEARRAY** TelephoneNumbers) get_TelephoneNumbers;
		}
		[CRepr]
		public struct IMbnSignal : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2003, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSignal *self, uint32* signalStrength) GetSignalStrength;
			public function HRESULT(IMbnSignal *self, uint32* signalError) GetSignalError;
		}
		[CRepr]
		public struct IMbnSignalEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2004, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSignalEvents *self, IMbnSignal* newInterface) OnSignalStateChange;
		}
		[CRepr]
		public struct IMbnConnectionContext : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionContext *self, SAFEARRAY** provisionedContexts) GetProvisionedContexts;
			public function HRESULT(IMbnConnectionContext *self, MBN_CONTEXT provisionedContexts, PWSTR providerID, uint32* requestID) SetProvisionedContext;
		}
		[CRepr]
		public struct IMbnConnectionContextEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionContextEvents *self, IMbnConnectionContext* newInterface) OnProvisionedContextListChange;
			public function HRESULT(IMbnConnectionContextEvents *self, IMbnConnectionContext* newInterface, uint32 requestID, HRESULT status) OnSetProvisionedContextComplete;
		}
		[CRepr]
		public struct IMbnConnectionProfileManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionProfileManager *self, IMbnInterface* mbnInterface, SAFEARRAY** connectionProfiles) GetConnectionProfiles;
			public function HRESULT(IMbnConnectionProfileManager *self, IMbnInterface* mbnInterface, PWSTR profileName, IMbnConnectionProfile** connectionProfile) GetConnectionProfile;
			public function HRESULT(IMbnConnectionProfileManager *self, PWSTR xmlProfile) CreateConnectionProfile;
		}
		[CRepr]
		public struct IMbnConnectionProfile : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2010, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionProfile *self, BSTR* profileData) GetProfileXmlData;
			public function HRESULT(IMbnConnectionProfile *self, PWSTR strProfile) UpdateProfile;
			public function HRESULT(IMbnConnectionProfile *self) Delete;
		}
		[CRepr]
		public struct IMbnConnectionProfileEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2011, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionProfileEvents *self, IMbnConnectionProfile* newProfile) OnProfileUpdate;
		}
		[CRepr]
		public struct IMbnSmsConfiguration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2012, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSmsConfiguration *self, BSTR* scAddress) get_ServiceCenterAddress;
			public function HRESULT(IMbnSmsConfiguration *self, PWSTR scAddress) put_ServiceCenterAddress;
			public function HRESULT(IMbnSmsConfiguration *self, uint32* index) get_MaxMessageIndex;
			public function HRESULT(IMbnSmsConfiguration *self, uint32* shortMsgSize) get_CdmaShortMsgSize;
			public function HRESULT(IMbnSmsConfiguration *self, MBN_SMS_FORMAT* smsFormat) get_SmsFormat;
			public function HRESULT(IMbnSmsConfiguration *self, MBN_SMS_FORMAT smsFormat) put_SmsFormat;
		}
		[CRepr]
		public struct IMbnSmsReadMsgPdu : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2013, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSmsReadMsgPdu *self, uint32* Index) get_Index;
			public function HRESULT(IMbnSmsReadMsgPdu *self, MBN_MSG_STATUS* Status) get_Status;
			public function HRESULT(IMbnSmsReadMsgPdu *self, BSTR* PduData) get_PduData;
			public function HRESULT(IMbnSmsReadMsgPdu *self, SAFEARRAY** Message) get_Message;
		}
		[CRepr]
		public struct IMbnSmsReadMsgTextCdma : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2014, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, uint32* Index) get_Index;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_MSG_STATUS* Status) get_Status;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, BSTR* Address) get_Address;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, BSTR* Timestamp) get_Timestamp;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_SMS_CDMA_ENCODING* EncodingID) get_EncodingID;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_SMS_CDMA_LANG* LanguageID) get_LanguageID;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, uint32* SizeInCharacters) get_SizeInCharacters;
			public function HRESULT(IMbnSmsReadMsgTextCdma *self, SAFEARRAY** Message) get_Message;
		}
		[CRepr]
		public struct IMbnSms : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2015, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSms *self, IMbnSmsConfiguration** smsConfiguration) GetSmsConfiguration;
			public function HRESULT(IMbnSms *self, IMbnSmsConfiguration* smsConfiguration, uint32* requestID) SetSmsConfiguration;
			public function HRESULT(IMbnSms *self, PWSTR pduData, uint8 size, uint32* requestID) SmsSendPdu;
			public function HRESULT(IMbnSms *self, PWSTR address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, SAFEARRAY* message, uint32* requestID) SmsSendCdma;
			public function HRESULT(IMbnSms *self, SAFEARRAY* message, uint32* requestID) SmsSendCdmaPdu;
			public function HRESULT(IMbnSms *self, MBN_SMS_FILTER* smsFilter, MBN_SMS_FORMAT smsFormat, uint32* requestID) SmsRead;
			public function HRESULT(IMbnSms *self, MBN_SMS_FILTER* smsFilter, uint32* requestID) SmsDelete;
			public function HRESULT(IMbnSms *self, MBN_SMS_STATUS_INFO* smsStatusInfo) GetSmsStatus;
		}
		[CRepr]
		public struct IMbnSmsEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2016, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms) OnSmsConfigurationChange;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSetSmsConfigurationComplete;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSmsSendComplete;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs, int16 moreMsgs, uint32 requestID, HRESULT status) OnSmsReadComplete;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs) OnSmsNewClass0Message;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSmsDeleteComplete;
			public function HRESULT(IMbnSmsEvents *self, IMbnSms* sms) OnSmsStatusChange;
		}
		[CRepr]
		public struct IMbnServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2017, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnServiceActivation *self, SAFEARRAY* vendorSpecificData, uint32* requestID) Activate;
		}
		[CRepr]
		public struct IMbnServiceActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2018, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnServiceActivationEvents *self, IMbnServiceActivation* serviceActivation, SAFEARRAY* vendorSpecificData, uint32 requestID, HRESULT status, uint32 networkError) OnActivationComplete;
		}
		[CRepr]
		public struct IMbnVendorSpecificOperation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2019, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnVendorSpecificOperation *self, SAFEARRAY* vendorSpecificData, uint32* requestID) SetVendorSpecific;
		}
		[CRepr]
		public struct IMbnVendorSpecificEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnVendorSpecificEvents *self, IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData) OnEventNotification;
			public function HRESULT(IMbnVendorSpecificEvents *self, IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData, uint32 requestID) OnSetVendorSpecificComplete;
		}
		[CRepr]
		public struct IMbnConnectionProfileManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnConnectionProfileManagerEvents *self, IMbnConnectionProfile* newConnectionProfile) OnConnectionProfileArrival;
			public function HRESULT(IMbnConnectionProfileManagerEvents *self, IMbnConnectionProfile* oldConnectionProfile) OnConnectionProfileRemoval;
		}
		[CRepr]
		public struct IMbnRadio : IUnknown
		{
			public const new Guid IID = .(0xdccccab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnRadio *self, MBN_RADIO* SoftwareRadioState) get_SoftwareRadioState;
			public function HRESULT(IMbnRadio *self, MBN_RADIO* HardwareRadioState) get_HardwareRadioState;
			public function HRESULT(IMbnRadio *self, MBN_RADIO radioState, uint32* requestID) SetSoftwareRadioState;
		}
		[CRepr]
		public struct IMbnRadioEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnRadioEvents *self, IMbnRadio* newInterface) OnRadioStateChange;
			public function HRESULT(IMbnRadioEvents *self, IMbnRadio* newInterface, uint32 requestID, HRESULT status) OnSetSoftwareRadioStateComplete;
		}
		[CRepr]
		public struct IMbnMultiCarrier : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2020, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnMultiCarrier *self, MBN_PROVIDER2* homeProvider, uint32* requestID) SetHomeProvider;
			public function HRESULT(IMbnMultiCarrier *self, SAFEARRAY** preferredMulticarrierProviders) GetPreferredProviders;
			public function HRESULT(IMbnMultiCarrier *self, uint32* age, SAFEARRAY** visibleProviders) GetVisibleProviders;
			public function HRESULT(IMbnMultiCarrier *self, SAFEARRAY** cellularClasses) GetSupportedCellularClasses;
			public function HRESULT(IMbnMultiCarrier *self, MBN_CELLULAR_CLASS* currentCellularClass) GetCurrentCellularClass;
			public function HRESULT(IMbnMultiCarrier *self, uint32* requestID) ScanNetwork;
		}
		[CRepr]
		public struct IMbnMultiCarrierEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x2021, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) OnSetHomeProviderComplete;
			public function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnCurrentCellularClassChange;
			public function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnPreferredProvidersChange;
			public function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
			public function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnInterfaceCapabilityChange;
		}
		[CRepr]
		public struct IMbnDeviceServiceStateEvents : IUnknown
		{
			public const new Guid IID = .(0x5d3ff196, 0x89ee, 0x49d8, 0x8b, 0x60, 0x33, 0xff, 0xdd, 0xff, 0xc5, 0x8d);
			
			public function HRESULT(IMbnDeviceServiceStateEvents *self, BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) OnSessionsStateChange;
		}
		[CRepr]
		public struct IMbnDeviceServicesManager : IUnknown
		{
			public const new Guid IID = .(0x20a26258, 0x6811, 0x4478, 0xac, 0x1d, 0x13, 0x32, 0x4e, 0x45, 0xe4, 0x1c);
			
			public function HRESULT(IMbnDeviceServicesManager *self, BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) GetDeviceServicesContext;
		}
		[CRepr]
		public struct IMbnDeviceServicesContext : IUnknown
		{
			public const new Guid IID = .(0xfc5ac347, 0x1592, 0x4068, 0x80, 0xbb, 0x6a, 0x57, 0x58, 0x01, 0x50, 0xd8);
			
			public function HRESULT(IMbnDeviceServicesContext *self, SAFEARRAY** deviceServices) EnumerateDeviceServices;
			public function HRESULT(IMbnDeviceServicesContext *self, BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) GetDeviceService;
			public function HRESULT(IMbnDeviceServicesContext *self, uint32* maxCommandSize) get_MaxCommandSize;
			public function HRESULT(IMbnDeviceServicesContext *self, uint32* maxDataSize) get_MaxDataSize;
		}
		[CRepr]
		public struct IMbnDeviceServicesEvents : IUnknown
		{
			public const new Guid IID = .(0x0a900c19, 0x6824, 0x4e97, 0xb7, 0x6e, 0xcf, 0x23, 0x9d, 0x0c, 0xa6, 0x42);
			
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, SAFEARRAY* commandIDList, HRESULT status, uint32 requestID) OnQuerySupportedCommandsComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnOpenCommandSessionComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnCloseCommandSessionComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) OnSetCommandComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) OnQueryCommandComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 eventID, SAFEARRAY* deviceServiceData) OnEventNotification;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnOpenDataSessionComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnCloseDataSessionComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnWriteDataComplete;
			public function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, SAFEARRAY* deviceServiceData) OnReadData;
			public function HRESULT(IMbnDeviceServicesEvents *self, BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) OnInterfaceStateChange;
		}
		[CRepr]
		public struct IMbnDeviceService : IUnknown
		{
			public const new Guid IID = .(0xb3bb9a71, 0xdc70, 0x4be9, 0xa4, 0xda, 0x78, 0x86, 0xae, 0x8b, 0x19, 0x1b);
			
			public function HRESULT(IMbnDeviceService *self, uint32* requestID) QuerySupportedCommands;
			public function HRESULT(IMbnDeviceService *self, uint32* requestID) OpenCommandSession;
			public function HRESULT(IMbnDeviceService *self, uint32* requestID) CloseCommandSession;
			public function HRESULT(IMbnDeviceService *self, uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) SetCommand;
			public function HRESULT(IMbnDeviceService *self, uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) QueryCommand;
			public function HRESULT(IMbnDeviceService *self, uint32* requestID) OpenDataSession;
			public function HRESULT(IMbnDeviceService *self, uint32* requestID) CloseDataSession;
			public function HRESULT(IMbnDeviceService *self, SAFEARRAY* deviceServiceData, uint32* requestID) WriteData;
			public function HRESULT(IMbnDeviceService *self, BSTR* InterfaceID) get_InterfaceID;
			public function HRESULT(IMbnDeviceService *self, BSTR* DeviceServiceID) get_DeviceServiceID;
			public function HRESULT(IMbnDeviceService *self, BOOL* value) get_IsCommandSessionOpen;
			public function HRESULT(IMbnDeviceService *self, BOOL* value) get_IsDataSessionOpen;
		}
		[CRepr]
		public struct IMbnPin : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2007, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public function HRESULT(IMbnPin *self, MBN_PIN_TYPE* PinType) get_PinType;
			public function HRESULT(IMbnPin *self, MBN_PIN_FORMAT* PinFormat) get_PinFormat;
			public function HRESULT(IMbnPin *self, uint32* PinLengthMin) get_PinLengthMin;
			public function HRESULT(IMbnPin *self, uint32* PinLengthMax) get_PinLengthMax;
			public function HRESULT(IMbnPin *self, MBN_PIN_MODE* PinMode) get_PinMode;
			public function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Enable;
			public function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Disable;
			public function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Enter;
			public function HRESULT(IMbnPin *self, PWSTR pin, PWSTR newPin, uint32* requestID) Change;
			public function HRESULT(IMbnPin *self, PWSTR puk, PWSTR newPin, uint32* requestID) Unblock;
			public function HRESULT(IMbnPin *self, IMbnPinManager** pinManager) GetPinManager;
		}
		
	}
}
