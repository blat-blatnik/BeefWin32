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
			RSSI_DEFAULT = -1,
			RSSI_DISABLE = 0,
			RSSI_UNKNOWN = 99,
			ERROR_RATE_UNKNOWN = 99,
		}
		[AllowDuplicates]
		public enum MBN_CELLULAR_CLASS : int32
		{
			NONE = 0,
			GSM = 1,
			CDMA = 2,
		}
		[AllowDuplicates]
		public enum MBN_VOICE_CLASS : int32
		{
			NONE = 0,
			NO_VOICE = 1,
			SEPARATE_VOICE_DATA = 2,
			SIMULTANEOUS_VOICE_DATA = 3,
		}
		[AllowDuplicates]
		public enum MBN_PROVIDER_STATE : int32
		{
			NONE = 0,
			HOME = 1,
			FORBIDDEN = 2,
			PREFERRED = 4,
			VISIBLE = 8,
			REGISTERED = 16,
			PREFERRED_MULTICARRIER = 32,
		}
		[AllowDuplicates]
		public enum MBN_PROVIDER_CONSTANTS : int32
		{
			NAME_LEN = 20,
			ID_LEN = 6,
		}
		[AllowDuplicates]
		public enum MBN_INTERFACE_CAPS_CONSTANTS : int32
		{
			DEVICEID_LEN = 18,
			MANUFACTURER_LEN = 32,
			MODEL_LEN = 32,
			FIRMWARE_LEN = 32,
		}
		[AllowDuplicates]
		public enum MBN_DATA_CLASS : int32
		{
			NONE = 0,
			GPRS = 1,
			EDGE = 2,
			UMTS = 4,
			HSDPA = 8,
			HSUPA = 16,
			LTE = 32,
			_5G_NSA = 64,
			_5G_SA = 128,
			_1XRTT = 65536,
			_1XEVDO = 131072,
			_1XEVDO_REVA = 262144,
			_1XEVDV = 524288,
			_3XRTT = 1048576,
			_1XEVDO_REVB = 2097152,
			UMB = 4194304,
			CUSTOM = -2147483648,
		}
		[AllowDuplicates]
		public enum MBN_CTRL_CAPS : int32
		{
			NONE = 0,
			REG_MANUAL = 1,
			HW_RADIO_SWITCH = 2,
			CDMA_MOBILE_IP = 4,
			CDMA_SIMPLE_IP = 8,
			PROTECT_UNIQUEID = 16,
			MODEL_MULTI_CARRIER = 32,
			USSD = 64,
			MULTI_MODE = 128,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CAPS : int32
		{
			NONE = 0,
			PDU_RECEIVE = 1,
			PDU_SEND = 2,
			TEXT_RECEIVE = 4,
			TEXT_SEND = 8,
		}
		[AllowDuplicates]
		public enum MBN_BAND_CLASS : int32
		{
			NONE = 0,
			_0 = 1,
			I = 2,
			II = 4,
			III = 8,
			IV = 16,
			V = 32,
			VI = 64,
			VII = 128,
			VIII = 256,
			IX = 512,
			X = 1024,
			XI = 2048,
			XII = 4096,
			XIII = 8192,
			XIV = 16384,
			XV = 32768,
			XVI = 65536,
			XVII = 131072,
			CUSTOM = -2147483648,
		}
		[AllowDuplicates]
		public enum MBN_READY_STATE : int32
		{
			OFF = 0,
			INITIALIZED = 1,
			SIM_NOT_INSERTED = 2,
			BAD_SIM = 3,
			FAILURE = 4,
			NOT_ACTIVATED = 5,
			DEVICE_LOCKED = 6,
			DEVICE_BLOCKED = 7,
			NO_ESIM_PROFILE = 8,
		}
		[AllowDuplicates]
		public enum MBN_ACTIVATION_STATE : int32
		{
			NONE = 0,
			ACTIVATED = 1,
			ACTIVATING = 2,
			DEACTIVATED = 3,
			DEACTIVATING = 4,
		}
		[AllowDuplicates]
		public enum MBN_CONNECTION_MODE : int32
		{
			PROFILE = 0,
			TMP_PROFILE = 1,
		}
		[AllowDuplicates]
		public enum MBN_VOICE_CALL_STATE : int32
		{
			NONE = 0,
			IN_PROGRESS = 1,
			HANGUP = 2,
		}
		[AllowDuplicates]
		public enum MBN_REGISTRATION_CONSTANTS : int32
		{
			ROAMTEXT_LEN = 64,
			CDMA_DEFAULT_PROVIDER_ID = 0,
		}
		[AllowDuplicates]
		public enum MBN_REGISTER_STATE : int32
		{
			NONE = 0,
			DEREGISTERED = 1,
			SEARCHING = 2,
			HOME = 3,
			ROAMING = 4,
			PARTNER = 5,
			DENIED = 6,
		}
		[AllowDuplicates]
		public enum MBN_REGISTER_MODE : int32
		{
			NONE = 0,
			AUTOMATIC = 1,
			MANUAL = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_CONSTANTS : int32
		{
			ATTEMPTS_REMAINING_UNKNOWN = -1,
			PIN_LENGTH_UNKNOWN = -1,
		}
		[AllowDuplicates]
		public enum MBN_PIN_STATE : int32
		{
			NONE = 0,
			ENTER = 1,
			UNBLOCK = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_TYPE : int32
		{
			NONE = 0,
			CUSTOM = 1,
			PIN1 = 2,
			PIN2 = 3,
			DEVICE_SIM_PIN = 4,
			DEVICE_FIRST_SIM_PIN = 5,
			NETWORK_PIN = 6,
			NETWORK_SUBSET_PIN = 7,
			SVC_PROVIDER_PIN = 8,
			CORPORATE_PIN = 9,
			SUBSIDY_LOCK = 10,
		}
		[AllowDuplicates]
		public enum MBN_PIN_MODE : int32
		{
			ENABLED = 1,
			DISABLED = 2,
		}
		[AllowDuplicates]
		public enum MBN_PIN_FORMAT : int32
		{
			NONE = 0,
			NUMERIC = 1,
			ALPHANUMERIC = 2,
		}
		[AllowDuplicates]
		public enum MBN_CONTEXT_CONSTANTS : int32
		{
			ACCESSSTRING_LEN = 100,
			USERNAME_LEN = 255,
			PASSWORD_LEN = 255,
			CONTEXT_ID_APPEND = -1,
		}
		[AllowDuplicates]
		public enum MBN_AUTH_PROTOCOL : int32
		{
			NONE = 0,
			PAP = 1,
			CHAP = 2,
			MSCHAPV2 = 3,
		}
		[AllowDuplicates]
		public enum MBN_COMPRESSION : int32
		{
			NONE = 0,
			ENABLE = 1,
		}
		[AllowDuplicates]
		public enum MBN_CONTEXT_TYPE : int32
		{
			NONE = 0,
			INTERNET = 1,
			VPN = 2,
			VOICE = 3,
			VIDEO_SHARE = 4,
			CUSTOM = 5,
			PURCHASE = 6,
		}
		[AllowDuplicates]
		public enum WWAEXT_SMS_CONSTANTS : int32
		{
			MESSAGE_INDEX_NONE = 0,
			CDMA_SHORT_MSG_SIZE_UNKNOWN = 0,
			CDMA_SHORT_MSG_SIZE_MAX = 160,
		}
		[AllowDuplicates]
		public enum MBN_MSG_STATUS : int32
		{
			NEW = 0,
			OLD = 1,
			DRAFT = 2,
			SENT = 3,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CDMA_LANG : int32
		{
			NONE = 0,
			ENGLISH = 1,
			FRENCH = 2,
			SPANISH = 3,
			JAPANESE = 4,
			KOREAN = 5,
			CHINESE = 6,
			HEBREW = 7,
		}
		[AllowDuplicates]
		public enum MBN_SMS_CDMA_ENCODING : int32
		{
			OCTET = 0,
			EPM = 1,
			_7BIT_ASCII = 2,
			IA5 = 3,
			UNICODE = 4,
			SHIFT_JIS = 5,
			KOREAN = 6,
			LATIN_HEBREW = 7,
			LATIN = 8,
			GSM_7BIT = 9,
		}
		[AllowDuplicates]
		public enum MBN_SMS_FLAG : int32
		{
			ALL = 0,
			INDEX = 1,
			NEW = 2,
			OLD = 3,
			SENT = 4,
			DRAFT = 5,
		}
		[AllowDuplicates]
		public enum MBN_SMS_STATUS_FLAG : int32
		{
			NONE = 0,
			MESSAGE_STORE_FULL = 1,
			NEW_MESSAGE = 2,
		}
		[AllowDuplicates]
		public enum MBN_SMS_FORMAT : int32
		{
			NONE = 0,
			PDU = 1,
			TEXT = 2,
		}
		[AllowDuplicates]
		public enum MBN_RADIO : int32
		{
			FF = 0,
			N = 1,
		}
		[AllowDuplicates]
		public enum MBN_DEVICE_SERVICE_SESSIONS_STATE : int32
		{
			MBN_DEVICE_SERVICE_SESSIONS_RESTORED = 0,
		}
		[AllowDuplicates]
		public enum MBN_DEVICE_SERVICES_INTERFACE_STATE : int32
		{
			ARRIVAL = 0,
			REMOVAL = 1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IMbnConnection : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ConnectionID(BSTR* ConnectionID) mut
			{
				return VT.get_ConnectionID(&this, ConnectionID);
			}
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(&this, InterfaceID);
			}
			public HRESULT Connect(MBN_CONNECTION_MODE connectionMode, PWSTR strProfile, uint32* requestID) mut
			{
				return VT.Connect(&this, connectionMode, strProfile, requestID);
			}
			public HRESULT Disconnect(uint32* requestID) mut
			{
				return VT.Disconnect(&this, requestID);
			}
			public HRESULT GetConnectionState(MBN_ACTIVATION_STATE* ConnectionState, BSTR* ProfileName) mut
			{
				return VT.GetConnectionState(&this, ConnectionState, ProfileName);
			}
			public HRESULT GetVoiceCallState(MBN_VOICE_CALL_STATE* voiceCallState) mut
			{
				return VT.GetVoiceCallState(&this, voiceCallState);
			}
			public HRESULT GetActivationNetworkError(uint32* networkError) mut
			{
				return VT.GetActivationNetworkError(&this, networkError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnection *self, BSTR* ConnectionID) get_ConnectionID;
				public new function HRESULT(IMbnConnection *self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(IMbnConnection *self, MBN_CONNECTION_MODE connectionMode, PWSTR strProfile, uint32* requestID) Connect;
				public new function HRESULT(IMbnConnection *self, uint32* requestID) Disconnect;
				public new function HRESULT(IMbnConnection *self, MBN_ACTIVATION_STATE* ConnectionState, BSTR* ProfileName) GetConnectionState;
				public new function HRESULT(IMbnConnection *self, MBN_VOICE_CALL_STATE* voiceCallState) GetVoiceCallState;
				public new function HRESULT(IMbnConnection *self, uint32* networkError) GetActivationNetworkError;
			}
		}
		[CRepr]
		public struct IMbnConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectComplete(IMbnConnection* newConnection, uint32 requestID, HRESULT status) mut
			{
				return VT.OnConnectComplete(&this, newConnection, requestID, status);
			}
			public HRESULT OnDisconnectComplete(IMbnConnection* newConnection, uint32 requestID, HRESULT status) mut
			{
				return VT.OnDisconnectComplete(&this, newConnection, requestID, status);
			}
			public HRESULT OnConnectStateChange(IMbnConnection* newConnection) mut
			{
				return VT.OnConnectStateChange(&this, newConnection);
			}
			public HRESULT OnVoiceCallStateChange(IMbnConnection* newConnection) mut
			{
				return VT.OnVoiceCallStateChange(&this, newConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection, uint32 requestID, HRESULT status) OnConnectComplete;
				public new function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection, uint32 requestID, HRESULT status) OnDisconnectComplete;
				public new function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection) OnConnectStateChange;
				public new function HRESULT(IMbnConnectionEvents *self, IMbnConnection* newConnection) OnVoiceCallStateChange;
			}
		}
		[CRepr]
		public struct IMbnInterface : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2001, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(&this, InterfaceID);
			}
			public HRESULT GetInterfaceCapability(MBN_INTERFACE_CAPS* interfaceCaps) mut
			{
				return VT.GetInterfaceCapability(&this, interfaceCaps);
			}
			public HRESULT GetSubscriberInformation(IMbnSubscriberInformation** subscriberInformation) mut
			{
				return VT.GetSubscriberInformation(&this, subscriberInformation);
			}
			public HRESULT GetReadyState(MBN_READY_STATE* readyState) mut
			{
				return VT.GetReadyState(&this, readyState);
			}
			public HRESULT InEmergencyMode(int16* emergencyMode) mut
			{
				return VT.InEmergencyMode(&this, emergencyMode);
			}
			public HRESULT GetHomeProvider(MBN_PROVIDER* homeProvider) mut
			{
				return VT.GetHomeProvider(&this, homeProvider);
			}
			public HRESULT GetPreferredProviders(SAFEARRAY** preferredProviders) mut
			{
				return VT.GetPreferredProviders(&this, preferredProviders);
			}
			public HRESULT SetPreferredProviders(SAFEARRAY* preferredProviders, uint32* requestID) mut
			{
				return VT.SetPreferredProviders(&this, preferredProviders, requestID);
			}
			public HRESULT GetVisibleProviders(uint32* age, SAFEARRAY** visibleProviders) mut
			{
				return VT.GetVisibleProviders(&this, age, visibleProviders);
			}
			public HRESULT ScanNetwork(uint32* requestID) mut
			{
				return VT.ScanNetwork(&this, requestID);
			}
			public HRESULT GetConnection(IMbnConnection** mbnConnection) mut
			{
				return VT.GetConnection(&this, mbnConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnInterface *self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(IMbnInterface *self, MBN_INTERFACE_CAPS* interfaceCaps) GetInterfaceCapability;
				public new function HRESULT(IMbnInterface *self, IMbnSubscriberInformation** subscriberInformation) GetSubscriberInformation;
				public new function HRESULT(IMbnInterface *self, MBN_READY_STATE* readyState) GetReadyState;
				public new function HRESULT(IMbnInterface *self, int16* emergencyMode) InEmergencyMode;
				public new function HRESULT(IMbnInterface *self, MBN_PROVIDER* homeProvider) GetHomeProvider;
				public new function HRESULT(IMbnInterface *self, SAFEARRAY** preferredProviders) GetPreferredProviders;
				public new function HRESULT(IMbnInterface *self, SAFEARRAY* preferredProviders, uint32* requestID) SetPreferredProviders;
				public new function HRESULT(IMbnInterface *self, uint32* age, SAFEARRAY** visibleProviders) GetVisibleProviders;
				public new function HRESULT(IMbnInterface *self, uint32* requestID) ScanNetwork;
				public new function HRESULT(IMbnInterface *self, IMbnConnection** mbnConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMbnInterfaceEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2002, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInterfaceCapabilityAvailable(IMbnInterface* newInterface) mut
			{
				return VT.OnInterfaceCapabilityAvailable(&this, newInterface);
			}
			public HRESULT OnSubscriberInformationChange(IMbnInterface* newInterface) mut
			{
				return VT.OnSubscriberInformationChange(&this, newInterface);
			}
			public HRESULT OnReadyStateChange(IMbnInterface* newInterface) mut
			{
				return VT.OnReadyStateChange(&this, newInterface);
			}
			public HRESULT OnEmergencyModeChange(IMbnInterface* newInterface) mut
			{
				return VT.OnEmergencyModeChange(&this, newInterface);
			}
			public HRESULT OnHomeProviderAvailable(IMbnInterface* newInterface) mut
			{
				return VT.OnHomeProviderAvailable(&this, newInterface);
			}
			public HRESULT OnPreferredProvidersChange(IMbnInterface* newInterface) mut
			{
				return VT.OnPreferredProvidersChange(&this, newInterface);
			}
			public HRESULT OnSetPreferredProvidersComplete(IMbnInterface* newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetPreferredProvidersComplete(&this, newInterface, requestID, status);
			}
			public HRESULT OnScanNetworkComplete(IMbnInterface* newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnScanNetworkComplete(&this, newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnInterfaceCapabilityAvailable;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnSubscriberInformationChange;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnReadyStateChange;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnEmergencyModeChange;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnHomeProviderAvailable;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface) OnPreferredProvidersChange;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface, uint32 requestID, HRESULT status) OnSetPreferredProvidersComplete;
				public new function HRESULT(IMbnInterfaceEvents *self, IMbnInterface* newInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInterface(PWSTR interfaceID, IMbnInterface** mbnInterface) mut
			{
				return VT.GetInterface(&this, interfaceID, mbnInterface);
			}
			public HRESULT GetInterfaces(SAFEARRAY** mbnInterfaces) mut
			{
				return VT.GetInterfaces(&this, mbnInterfaces);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnInterfaceManager *self, PWSTR interfaceID, IMbnInterface** mbnInterface) GetInterface;
				public new function HRESULT(IMbnInterfaceManager *self, SAFEARRAY** mbnInterfaces) GetInterfaces;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInterfaceArrival(IMbnInterface* newInterface) mut
			{
				return VT.OnInterfaceArrival(&this, newInterface);
			}
			public HRESULT OnInterfaceRemoval(IMbnInterface* oldInterface) mut
			{
				return VT.OnInterfaceRemoval(&this, oldInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnInterfaceManagerEvents *self, IMbnInterface* newInterface) OnInterfaceArrival;
				public new function HRESULT(IMbnInterfaceManagerEvents *self, IMbnInterface* oldInterface) OnInterfaceRemoval;
			}
		}
		[CRepr]
		public struct IMbnRegistration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2009, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRegisterState(MBN_REGISTER_STATE* registerState) mut
			{
				return VT.GetRegisterState(&this, registerState);
			}
			public HRESULT GetRegisterMode(MBN_REGISTER_MODE* registerMode) mut
			{
				return VT.GetRegisterMode(&this, registerMode);
			}
			public HRESULT GetProviderID(BSTR* providerID) mut
			{
				return VT.GetProviderID(&this, providerID);
			}
			public HRESULT GetProviderName(BSTR* providerName) mut
			{
				return VT.GetProviderName(&this, providerName);
			}
			public HRESULT GetRoamingText(BSTR* roamingText) mut
			{
				return VT.GetRoamingText(&this, roamingText);
			}
			public HRESULT GetAvailableDataClasses(uint32* availableDataClasses) mut
			{
				return VT.GetAvailableDataClasses(&this, availableDataClasses);
			}
			public HRESULT GetCurrentDataClass(uint32* currentDataClass) mut
			{
				return VT.GetCurrentDataClass(&this, currentDataClass);
			}
			public HRESULT GetRegistrationNetworkError(uint32* registrationNetworkError) mut
			{
				return VT.GetRegistrationNetworkError(&this, registrationNetworkError);
			}
			public HRESULT GetPacketAttachNetworkError(uint32* packetAttachNetworkError) mut
			{
				return VT.GetPacketAttachNetworkError(&this, packetAttachNetworkError);
			}
			public HRESULT SetRegisterMode(MBN_REGISTER_MODE registerMode, PWSTR providerID, uint32 dataClass, uint32* requestID) mut
			{
				return VT.SetRegisterMode(&this, registerMode, providerID, dataClass, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnRegistration *self, MBN_REGISTER_STATE* registerState) GetRegisterState;
				public new function HRESULT(IMbnRegistration *self, MBN_REGISTER_MODE* registerMode) GetRegisterMode;
				public new function HRESULT(IMbnRegistration *self, BSTR* providerID) GetProviderID;
				public new function HRESULT(IMbnRegistration *self, BSTR* providerName) GetProviderName;
				public new function HRESULT(IMbnRegistration *self, BSTR* roamingText) GetRoamingText;
				public new function HRESULT(IMbnRegistration *self, uint32* availableDataClasses) GetAvailableDataClasses;
				public new function HRESULT(IMbnRegistration *self, uint32* currentDataClass) GetCurrentDataClass;
				public new function HRESULT(IMbnRegistration *self, uint32* registrationNetworkError) GetRegistrationNetworkError;
				public new function HRESULT(IMbnRegistration *self, uint32* packetAttachNetworkError) GetPacketAttachNetworkError;
				public new function HRESULT(IMbnRegistration *self, MBN_REGISTER_MODE registerMode, PWSTR providerID, uint32 dataClass, uint32* requestID) SetRegisterMode;
			}
		}
		[CRepr]
		public struct IMbnRegistrationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRegisterModeAvailable(IMbnRegistration* newInterface) mut
			{
				return VT.OnRegisterModeAvailable(&this, newInterface);
			}
			public HRESULT OnRegisterStateChange(IMbnRegistration* newInterface) mut
			{
				return VT.OnRegisterStateChange(&this, newInterface);
			}
			public HRESULT OnPacketServiceStateChange(IMbnRegistration* newInterface) mut
			{
				return VT.OnPacketServiceStateChange(&this, newInterface);
			}
			public HRESULT OnSetRegisterModeComplete(IMbnRegistration* newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetRegisterModeComplete(&this, newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnRegisterModeAvailable;
				public new function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnRegisterStateChange;
				public new function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface) OnPacketServiceStateChange;
				public new function HRESULT(IMbnRegistrationEvents *self, IMbnRegistration* newInterface, uint32 requestID, HRESULT status) OnSetRegisterModeComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnection(PWSTR connectionID, IMbnConnection** mbnConnection) mut
			{
				return VT.GetConnection(&this, connectionID, mbnConnection);
			}
			public HRESULT GetConnections(SAFEARRAY** mbnConnections) mut
			{
				return VT.GetConnections(&this, mbnConnections);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionManager *self, PWSTR connectionID, IMbnConnection** mbnConnection) GetConnection;
				public new function HRESULT(IMbnConnectionManager *self, SAFEARRAY** mbnConnections) GetConnections;
			}
		}
		[CRepr]
		public struct IMbnConnectionManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionArrival(IMbnConnection* newConnection) mut
			{
				return VT.OnConnectionArrival(&this, newConnection);
			}
			public HRESULT OnConnectionRemoval(IMbnConnection* oldConnection) mut
			{
				return VT.OnConnectionRemoval(&this, oldConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionManagerEvents *self, IMbnConnection* newConnection) OnConnectionArrival;
				public new function HRESULT(IMbnConnectionManagerEvents *self, IMbnConnection* oldConnection) OnConnectionRemoval;
			}
		}
		[CRepr]
		public struct IMbnPinManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2005, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPinList(SAFEARRAY** pinList) mut
			{
				return VT.GetPinList(&this, pinList);
			}
			public HRESULT GetPin(MBN_PIN_TYPE pinType, IMbnPin** pin) mut
			{
				return VT.GetPin(&this, pinType, pin);
			}
			public HRESULT GetPinState(uint32* requestID) mut
			{
				return VT.GetPinState(&this, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnPinManager *self, SAFEARRAY** pinList) GetPinList;
				public new function HRESULT(IMbnPinManager *self, MBN_PIN_TYPE pinType, IMbnPin** pin) GetPin;
				public new function HRESULT(IMbnPinManager *self, uint32* requestID) GetPinState;
			}
		}
		[CRepr]
		public struct IMbnPinManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2006, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPinListAvailable(IMbnPinManager* pinManager) mut
			{
				return VT.OnPinListAvailable(&this, pinManager);
			}
			public HRESULT OnGetPinStateComplete(IMbnPinManager* pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnGetPinStateComplete(&this, pinManager, pinInfo, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnPinManagerEvents *self, IMbnPinManager* pinManager) OnPinListAvailable;
				public new function HRESULT(IMbnPinManagerEvents *self, IMbnPinManager* pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnGetPinStateComplete;
			}
		}
		[CRepr]
		public struct IMbnPinEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2008, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEnableComplete(IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnEnableComplete(&this, pin, pinInfo, requestID, status);
			}
			public HRESULT OnDisableComplete(IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnDisableComplete(&this, pin, pinInfo, requestID, status);
			}
			public HRESULT OnEnterComplete(IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnEnterComplete(&this, Pin, pinInfo, requestID, status);
			}
			public HRESULT OnChangeComplete(IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnChangeComplete(&this, Pin, pinInfo, requestID, status);
			}
			public HRESULT OnUnblockComplete(IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnUnblockComplete(&this, Pin, pinInfo, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnPinEvents *self, IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnEnableComplete;
				public new function HRESULT(IMbnPinEvents *self, IMbnPin* pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnDisableComplete;
				public new function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnEnterComplete;
				public new function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnChangeComplete;
				public new function HRESULT(IMbnPinEvents *self, IMbnPin* Pin, MBN_PIN_INFO* pinInfo, uint32 requestID, HRESULT status) OnUnblockComplete;
			}
		}
		[CRepr]
		public struct IMbnSubscriberInformation : IUnknown
		{
			public const new Guid IID = .(0x459ecc43, 0xbcf5, 0x11dc, 0xa8, 0xa8, 0x00, 0x13, 0x21, 0xf1, 0x40, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubscriberID(BSTR* SubscriberID) mut
			{
				return VT.get_SubscriberID(&this, SubscriberID);
			}
			public HRESULT get_SimIccID(BSTR* SimIccID) mut
			{
				return VT.get_SimIccID(&this, SimIccID);
			}
			public HRESULT get_TelephoneNumbers(SAFEARRAY** TelephoneNumbers) mut
			{
				return VT.get_TelephoneNumbers(&this, TelephoneNumbers);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSubscriberInformation *self, BSTR* SubscriberID) get_SubscriberID;
				public new function HRESULT(IMbnSubscriberInformation *self, BSTR* SimIccID) get_SimIccID;
				public new function HRESULT(IMbnSubscriberInformation *self, SAFEARRAY** TelephoneNumbers) get_TelephoneNumbers;
			}
		}
		[CRepr]
		public struct IMbnSignal : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2003, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignalStrength(uint32* signalStrength) mut
			{
				return VT.GetSignalStrength(&this, signalStrength);
			}
			public HRESULT GetSignalError(uint32* signalError) mut
			{
				return VT.GetSignalError(&this, signalError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSignal *self, uint32* signalStrength) GetSignalStrength;
				public new function HRESULT(IMbnSignal *self, uint32* signalError) GetSignalError;
			}
		}
		[CRepr]
		public struct IMbnSignalEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2004, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSignalStateChange(IMbnSignal* newInterface) mut
			{
				return VT.OnSignalStateChange(&this, newInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSignalEvents *self, IMbnSignal* newInterface) OnSignalStateChange;
			}
		}
		[CRepr]
		public struct IMbnConnectionContext : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProvisionedContexts(SAFEARRAY** provisionedContexts) mut
			{
				return VT.GetProvisionedContexts(&this, provisionedContexts);
			}
			public HRESULT SetProvisionedContext(MBN_CONTEXT provisionedContexts, PWSTR providerID, uint32* requestID) mut
			{
				return VT.SetProvisionedContext(&this, provisionedContexts, providerID, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionContext *self, SAFEARRAY** provisionedContexts) GetProvisionedContexts;
				public new function HRESULT(IMbnConnectionContext *self, MBN_CONTEXT provisionedContexts, PWSTR providerID, uint32* requestID) SetProvisionedContext;
			}
		}
		[CRepr]
		public struct IMbnConnectionContextEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProvisionedContextListChange(IMbnConnectionContext* newInterface) mut
			{
				return VT.OnProvisionedContextListChange(&this, newInterface);
			}
			public HRESULT OnSetProvisionedContextComplete(IMbnConnectionContext* newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetProvisionedContextComplete(&this, newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionContextEvents *self, IMbnConnectionContext* newInterface) OnProvisionedContextListChange;
				public new function HRESULT(IMbnConnectionContextEvents *self, IMbnConnectionContext* newInterface, uint32 requestID, HRESULT status) OnSetProvisionedContextComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionProfiles(IMbnInterface* mbnInterface, SAFEARRAY** connectionProfiles) mut
			{
				return VT.GetConnectionProfiles(&this, mbnInterface, connectionProfiles);
			}
			public HRESULT GetConnectionProfile(IMbnInterface* mbnInterface, PWSTR profileName, IMbnConnectionProfile** connectionProfile) mut
			{
				return VT.GetConnectionProfile(&this, mbnInterface, profileName, connectionProfile);
			}
			public HRESULT CreateConnectionProfile(PWSTR xmlProfile) mut
			{
				return VT.CreateConnectionProfile(&this, xmlProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionProfileManager *self, IMbnInterface* mbnInterface, SAFEARRAY** connectionProfiles) GetConnectionProfiles;
				public new function HRESULT(IMbnConnectionProfileManager *self, IMbnInterface* mbnInterface, PWSTR profileName, IMbnConnectionProfile** connectionProfile) GetConnectionProfile;
				public new function HRESULT(IMbnConnectionProfileManager *self, PWSTR xmlProfile) CreateConnectionProfile;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfile : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2010, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProfileXmlData(BSTR* profileData) mut
			{
				return VT.GetProfileXmlData(&this, profileData);
			}
			public HRESULT UpdateProfile(PWSTR strProfile) mut
			{
				return VT.UpdateProfile(&this, strProfile);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionProfile *self, BSTR* profileData) GetProfileXmlData;
				public new function HRESULT(IMbnConnectionProfile *self, PWSTR strProfile) UpdateProfile;
				public new function HRESULT(IMbnConnectionProfile *self) Delete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2011, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProfileUpdate(IMbnConnectionProfile* newProfile) mut
			{
				return VT.OnProfileUpdate(&this, newProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionProfileEvents *self, IMbnConnectionProfile* newProfile) OnProfileUpdate;
			}
		}
		[CRepr]
		public struct IMbnSmsConfiguration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2012, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ServiceCenterAddress(BSTR* scAddress) mut
			{
				return VT.get_ServiceCenterAddress(&this, scAddress);
			}
			public HRESULT put_ServiceCenterAddress(PWSTR scAddress) mut
			{
				return VT.put_ServiceCenterAddress(&this, scAddress);
			}
			public HRESULT get_MaxMessageIndex(uint32* index) mut
			{
				return VT.get_MaxMessageIndex(&this, index);
			}
			public HRESULT get_CdmaShortMsgSize(uint32* shortMsgSize) mut
			{
				return VT.get_CdmaShortMsgSize(&this, shortMsgSize);
			}
			public HRESULT get_SmsFormat(MBN_SMS_FORMAT* smsFormat) mut
			{
				return VT.get_SmsFormat(&this, smsFormat);
			}
			public HRESULT put_SmsFormat(MBN_SMS_FORMAT smsFormat) mut
			{
				return VT.put_SmsFormat(&this, smsFormat);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSmsConfiguration *self, BSTR* scAddress) get_ServiceCenterAddress;
				public new function HRESULT(IMbnSmsConfiguration *self, PWSTR scAddress) put_ServiceCenterAddress;
				public new function HRESULT(IMbnSmsConfiguration *self, uint32* index) get_MaxMessageIndex;
				public new function HRESULT(IMbnSmsConfiguration *self, uint32* shortMsgSize) get_CdmaShortMsgSize;
				public new function HRESULT(IMbnSmsConfiguration *self, MBN_SMS_FORMAT* smsFormat) get_SmsFormat;
				public new function HRESULT(IMbnSmsConfiguration *self, MBN_SMS_FORMAT smsFormat) put_SmsFormat;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgPdu : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2013, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(uint32* Index) mut
			{
				return VT.get_Index(&this, Index);
			}
			public HRESULT get_Status(MBN_MSG_STATUS* Status) mut
			{
				return VT.get_Status(&this, Status);
			}
			public HRESULT get_PduData(BSTR* PduData) mut
			{
				return VT.get_PduData(&this, PduData);
			}
			public HRESULT get_Message(SAFEARRAY** Message) mut
			{
				return VT.get_Message(&this, Message);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSmsReadMsgPdu *self, uint32* Index) get_Index;
				public new function HRESULT(IMbnSmsReadMsgPdu *self, MBN_MSG_STATUS* Status) get_Status;
				public new function HRESULT(IMbnSmsReadMsgPdu *self, BSTR* PduData) get_PduData;
				public new function HRESULT(IMbnSmsReadMsgPdu *self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgTextCdma : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2014, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(uint32* Index) mut
			{
				return VT.get_Index(&this, Index);
			}
			public HRESULT get_Status(MBN_MSG_STATUS* Status) mut
			{
				return VT.get_Status(&this, Status);
			}
			public HRESULT get_Address(BSTR* Address) mut
			{
				return VT.get_Address(&this, Address);
			}
			public HRESULT get_Timestamp(BSTR* Timestamp) mut
			{
				return VT.get_Timestamp(&this, Timestamp);
			}
			public HRESULT get_EncodingID(MBN_SMS_CDMA_ENCODING* EncodingID) mut
			{
				return VT.get_EncodingID(&this, EncodingID);
			}
			public HRESULT get_LanguageID(MBN_SMS_CDMA_LANG* LanguageID) mut
			{
				return VT.get_LanguageID(&this, LanguageID);
			}
			public HRESULT get_SizeInCharacters(uint32* SizeInCharacters) mut
			{
				return VT.get_SizeInCharacters(&this, SizeInCharacters);
			}
			public HRESULT get_Message(SAFEARRAY** Message) mut
			{
				return VT.get_Message(&this, Message);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, uint32* Index) get_Index;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_MSG_STATUS* Status) get_Status;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, BSTR* Address) get_Address;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, BSTR* Timestamp) get_Timestamp;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_SMS_CDMA_ENCODING* EncodingID) get_EncodingID;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, MBN_SMS_CDMA_LANG* LanguageID) get_LanguageID;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, uint32* SizeInCharacters) get_SizeInCharacters;
				public new function HRESULT(IMbnSmsReadMsgTextCdma *self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSms : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2015, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSmsConfiguration(IMbnSmsConfiguration** smsConfiguration) mut
			{
				return VT.GetSmsConfiguration(&this, smsConfiguration);
			}
			public HRESULT SetSmsConfiguration(IMbnSmsConfiguration* smsConfiguration, uint32* requestID) mut
			{
				return VT.SetSmsConfiguration(&this, smsConfiguration, requestID);
			}
			public HRESULT SmsSendPdu(PWSTR pduData, uint8 size, uint32* requestID) mut
			{
				return VT.SmsSendPdu(&this, pduData, size, requestID);
			}
			public HRESULT SmsSendCdma(PWSTR address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, SAFEARRAY* message, uint32* requestID) mut
			{
				return VT.SmsSendCdma(&this, address, encoding, language, sizeInCharacters, message, requestID);
			}
			public HRESULT SmsSendCdmaPdu(SAFEARRAY* message, uint32* requestID) mut
			{
				return VT.SmsSendCdmaPdu(&this, message, requestID);
			}
			public HRESULT SmsRead(MBN_SMS_FILTER* smsFilter, MBN_SMS_FORMAT smsFormat, uint32* requestID) mut
			{
				return VT.SmsRead(&this, smsFilter, smsFormat, requestID);
			}
			public HRESULT SmsDelete(MBN_SMS_FILTER* smsFilter, uint32* requestID) mut
			{
				return VT.SmsDelete(&this, smsFilter, requestID);
			}
			public HRESULT GetSmsStatus(MBN_SMS_STATUS_INFO* smsStatusInfo) mut
			{
				return VT.GetSmsStatus(&this, smsStatusInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSms *self, IMbnSmsConfiguration** smsConfiguration) GetSmsConfiguration;
				public new function HRESULT(IMbnSms *self, IMbnSmsConfiguration* smsConfiguration, uint32* requestID) SetSmsConfiguration;
				public new function HRESULT(IMbnSms *self, PWSTR pduData, uint8 size, uint32* requestID) SmsSendPdu;
				public new function HRESULT(IMbnSms *self, PWSTR address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, SAFEARRAY* message, uint32* requestID) SmsSendCdma;
				public new function HRESULT(IMbnSms *self, SAFEARRAY* message, uint32* requestID) SmsSendCdmaPdu;
				public new function HRESULT(IMbnSms *self, MBN_SMS_FILTER* smsFilter, MBN_SMS_FORMAT smsFormat, uint32* requestID) SmsRead;
				public new function HRESULT(IMbnSms *self, MBN_SMS_FILTER* smsFilter, uint32* requestID) SmsDelete;
				public new function HRESULT(IMbnSms *self, MBN_SMS_STATUS_INFO* smsStatusInfo) GetSmsStatus;
			}
		}
		[CRepr]
		public struct IMbnSmsEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2016, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSmsConfigurationChange(IMbnSms* sms) mut
			{
				return VT.OnSmsConfigurationChange(&this, sms);
			}
			public HRESULT OnSetSmsConfigurationComplete(IMbnSms* sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetSmsConfigurationComplete(&this, sms, requestID, status);
			}
			public HRESULT OnSmsSendComplete(IMbnSms* sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsSendComplete(&this, sms, requestID, status);
			}
			public HRESULT OnSmsReadComplete(IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs, int16 moreMsgs, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsReadComplete(&this, sms, smsFormat, readMsgs, moreMsgs, requestID, status);
			}
			public HRESULT OnSmsNewClass0Message(IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs) mut
			{
				return VT.OnSmsNewClass0Message(&this, sms, smsFormat, readMsgs);
			}
			public HRESULT OnSmsDeleteComplete(IMbnSms* sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsDeleteComplete(&this, sms, requestID, status);
			}
			public HRESULT OnSmsStatusChange(IMbnSms* sms) mut
			{
				return VT.OnSmsStatusChange(&this, sms);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms) OnSmsConfigurationChange;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSetSmsConfigurationComplete;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSmsSendComplete;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs, int16 moreMsgs, uint32 requestID, HRESULT status) OnSmsReadComplete;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, MBN_SMS_FORMAT smsFormat, SAFEARRAY* readMsgs) OnSmsNewClass0Message;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms, uint32 requestID, HRESULT status) OnSmsDeleteComplete;
				public new function HRESULT(IMbnSmsEvents *self, IMbnSms* sms) OnSmsStatusChange;
			}
		}
		[CRepr]
		public struct IMbnServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2017, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(SAFEARRAY* vendorSpecificData, uint32* requestID) mut
			{
				return VT.Activate(&this, vendorSpecificData, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnServiceActivation *self, SAFEARRAY* vendorSpecificData, uint32* requestID) Activate;
			}
		}
		[CRepr]
		public struct IMbnServiceActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2018, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivationComplete(IMbnServiceActivation* serviceActivation, SAFEARRAY* vendorSpecificData, uint32 requestID, HRESULT status, uint32 networkError) mut
			{
				return VT.OnActivationComplete(&this, serviceActivation, vendorSpecificData, requestID, status, networkError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnServiceActivationEvents *self, IMbnServiceActivation* serviceActivation, SAFEARRAY* vendorSpecificData, uint32 requestID, HRESULT status, uint32 networkError) OnActivationComplete;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificOperation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2019, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVendorSpecific(SAFEARRAY* vendorSpecificData, uint32* requestID) mut
			{
				return VT.SetVendorSpecific(&this, vendorSpecificData, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnVendorSpecificOperation *self, SAFEARRAY* vendorSpecificData, uint32* requestID) SetVendorSpecific;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEventNotification(IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData) mut
			{
				return VT.OnEventNotification(&this, vendorOperation, vendorSpecificData);
			}
			public HRESULT OnSetVendorSpecificComplete(IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData, uint32 requestID) mut
			{
				return VT.OnSetVendorSpecificComplete(&this, vendorOperation, vendorSpecificData, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnVendorSpecificEvents *self, IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData) OnEventNotification;
				public new function HRESULT(IMbnVendorSpecificEvents *self, IMbnVendorSpecificOperation* vendorOperation, SAFEARRAY* vendorSpecificData, uint32 requestID) OnSetVendorSpecificComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionProfileArrival(IMbnConnectionProfile* newConnectionProfile) mut
			{
				return VT.OnConnectionProfileArrival(&this, newConnectionProfile);
			}
			public HRESULT OnConnectionProfileRemoval(IMbnConnectionProfile* oldConnectionProfile) mut
			{
				return VT.OnConnectionProfileRemoval(&this, oldConnectionProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnConnectionProfileManagerEvents *self, IMbnConnectionProfile* newConnectionProfile) OnConnectionProfileArrival;
				public new function HRESULT(IMbnConnectionProfileManagerEvents *self, IMbnConnectionProfile* oldConnectionProfile) OnConnectionProfileRemoval;
			}
		}
		[CRepr]
		public struct IMbnRadio : IUnknown
		{
			public const new Guid IID = .(0xdccccab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SoftwareRadioState(MBN_RADIO* SoftwareRadioState) mut
			{
				return VT.get_SoftwareRadioState(&this, SoftwareRadioState);
			}
			public HRESULT get_HardwareRadioState(MBN_RADIO* HardwareRadioState) mut
			{
				return VT.get_HardwareRadioState(&this, HardwareRadioState);
			}
			public HRESULT SetSoftwareRadioState(MBN_RADIO radioState, uint32* requestID) mut
			{
				return VT.SetSoftwareRadioState(&this, radioState, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnRadio *self, MBN_RADIO* SoftwareRadioState) get_SoftwareRadioState;
				public new function HRESULT(IMbnRadio *self, MBN_RADIO* HardwareRadioState) get_HardwareRadioState;
				public new function HRESULT(IMbnRadio *self, MBN_RADIO radioState, uint32* requestID) SetSoftwareRadioState;
			}
		}
		[CRepr]
		public struct IMbnRadioEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRadioStateChange(IMbnRadio* newInterface) mut
			{
				return VT.OnRadioStateChange(&this, newInterface);
			}
			public HRESULT OnSetSoftwareRadioStateComplete(IMbnRadio* newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetSoftwareRadioStateComplete(&this, newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnRadioEvents *self, IMbnRadio* newInterface) OnRadioStateChange;
				public new function HRESULT(IMbnRadioEvents *self, IMbnRadio* newInterface, uint32 requestID, HRESULT status) OnSetSoftwareRadioStateComplete;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrier : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2020, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHomeProvider(MBN_PROVIDER2* homeProvider, uint32* requestID) mut
			{
				return VT.SetHomeProvider(&this, homeProvider, requestID);
			}
			public HRESULT GetPreferredProviders(SAFEARRAY** preferredMulticarrierProviders) mut
			{
				return VT.GetPreferredProviders(&this, preferredMulticarrierProviders);
			}
			public HRESULT GetVisibleProviders(uint32* age, SAFEARRAY** visibleProviders) mut
			{
				return VT.GetVisibleProviders(&this, age, visibleProviders);
			}
			public HRESULT GetSupportedCellularClasses(SAFEARRAY** cellularClasses) mut
			{
				return VT.GetSupportedCellularClasses(&this, cellularClasses);
			}
			public HRESULT GetCurrentCellularClass(MBN_CELLULAR_CLASS* currentCellularClass) mut
			{
				return VT.GetCurrentCellularClass(&this, currentCellularClass);
			}
			public HRESULT ScanNetwork(uint32* requestID) mut
			{
				return VT.ScanNetwork(&this, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnMultiCarrier *self, MBN_PROVIDER2* homeProvider, uint32* requestID) SetHomeProvider;
				public new function HRESULT(IMbnMultiCarrier *self, SAFEARRAY** preferredMulticarrierProviders) GetPreferredProviders;
				public new function HRESULT(IMbnMultiCarrier *self, uint32* age, SAFEARRAY** visibleProviders) GetVisibleProviders;
				public new function HRESULT(IMbnMultiCarrier *self, SAFEARRAY** cellularClasses) GetSupportedCellularClasses;
				public new function HRESULT(IMbnMultiCarrier *self, MBN_CELLULAR_CLASS* currentCellularClass) GetCurrentCellularClass;
				public new function HRESULT(IMbnMultiCarrier *self, uint32* requestID) ScanNetwork;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrierEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x2021, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetHomeProviderComplete(IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetHomeProviderComplete(&this, mbnInterface, requestID, status);
			}
			public HRESULT OnCurrentCellularClassChange(IMbnMultiCarrier* mbnInterface) mut
			{
				return VT.OnCurrentCellularClassChange(&this, mbnInterface);
			}
			public HRESULT OnPreferredProvidersChange(IMbnMultiCarrier* mbnInterface) mut
			{
				return VT.OnPreferredProvidersChange(&this, mbnInterface);
			}
			public HRESULT OnScanNetworkComplete(IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnScanNetworkComplete(&this, mbnInterface, requestID, status);
			}
			public HRESULT OnInterfaceCapabilityChange(IMbnMultiCarrier* mbnInterface) mut
			{
				return VT.OnInterfaceCapabilityChange(&this, mbnInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) OnSetHomeProviderComplete;
				public new function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnCurrentCellularClassChange;
				public new function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnPreferredProvidersChange;
				public new function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
				public new function HRESULT(IMbnMultiCarrierEvents *self, IMbnMultiCarrier* mbnInterface) OnInterfaceCapabilityChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServiceStateEvents : IUnknown
		{
			public const new Guid IID = .(0x5d3ff196, 0x89ee, 0x49d8, 0x8b, 0x60, 0x33, 0xff, 0xdd, 0xff, 0xc5, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSessionsStateChange(BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) mut
			{
				return VT.OnSessionsStateChange(&this, interfaceID, stateChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnDeviceServiceStateEvents *self, BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) OnSessionsStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesManager : IUnknown
		{
			public const new Guid IID = .(0x20a26258, 0x6811, 0x4478, 0xac, 0x1d, 0x13, 0x32, 0x4e, 0x45, 0xe4, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceServicesContext(BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) mut
			{
				return VT.GetDeviceServicesContext(&this, networkInterfaceID, mbnDevicesContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnDeviceServicesManager *self, BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) GetDeviceServicesContext;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesContext : IUnknown
		{
			public const new Guid IID = .(0xfc5ac347, 0x1592, 0x4068, 0x80, 0xbb, 0x6a, 0x57, 0x58, 0x01, 0x50, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumerateDeviceServices(SAFEARRAY** deviceServices) mut
			{
				return VT.EnumerateDeviceServices(&this, deviceServices);
			}
			public HRESULT GetDeviceService(BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) mut
			{
				return VT.GetDeviceService(&this, deviceServiceID, mbnDeviceService);
			}
			public HRESULT get_MaxCommandSize(uint32* maxCommandSize) mut
			{
				return VT.get_MaxCommandSize(&this, maxCommandSize);
			}
			public HRESULT get_MaxDataSize(uint32* maxDataSize) mut
			{
				return VT.get_MaxDataSize(&this, maxDataSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnDeviceServicesContext *self, SAFEARRAY** deviceServices) EnumerateDeviceServices;
				public new function HRESULT(IMbnDeviceServicesContext *self, BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) GetDeviceService;
				public new function HRESULT(IMbnDeviceServicesContext *self, uint32* maxCommandSize) get_MaxCommandSize;
				public new function HRESULT(IMbnDeviceServicesContext *self, uint32* maxDataSize) get_MaxDataSize;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesEvents : IUnknown
		{
			public const new Guid IID = .(0x0a900c19, 0x6824, 0x4e97, 0xb7, 0x6e, 0xcf, 0x23, 0x9d, 0x0c, 0xa6, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQuerySupportedCommandsComplete(IMbnDeviceService* deviceService, SAFEARRAY* commandIDList, HRESULT status, uint32 requestID) mut
			{
				return VT.OnQuerySupportedCommandsComplete(&this, deviceService, commandIDList, status, requestID);
			}
			public HRESULT OnOpenCommandSessionComplete(IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnOpenCommandSessionComplete(&this, deviceService, status, requestID);
			}
			public HRESULT OnCloseCommandSessionComplete(IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnCloseCommandSessionComplete(&this, deviceService, status, requestID);
			}
			public HRESULT OnSetCommandComplete(IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) mut
			{
				return VT.OnSetCommandComplete(&this, deviceService, responseID, deviceServiceData, status, requestID);
			}
			public HRESULT OnQueryCommandComplete(IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) mut
			{
				return VT.OnQueryCommandComplete(&this, deviceService, responseID, deviceServiceData, status, requestID);
			}
			public HRESULT OnEventNotification(IMbnDeviceService* deviceService, uint32 eventID, SAFEARRAY* deviceServiceData) mut
			{
				return VT.OnEventNotification(&this, deviceService, eventID, deviceServiceData);
			}
			public HRESULT OnOpenDataSessionComplete(IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnOpenDataSessionComplete(&this, deviceService, status, requestID);
			}
			public HRESULT OnCloseDataSessionComplete(IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnCloseDataSessionComplete(&this, deviceService, status, requestID);
			}
			public HRESULT OnWriteDataComplete(IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnWriteDataComplete(&this, deviceService, status, requestID);
			}
			public HRESULT OnReadData(IMbnDeviceService* deviceService, SAFEARRAY* deviceServiceData) mut
			{
				return VT.OnReadData(&this, deviceService, deviceServiceData);
			}
			public HRESULT OnInterfaceStateChange(BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) mut
			{
				return VT.OnInterfaceStateChange(&this, interfaceID, stateChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, SAFEARRAY* commandIDList, HRESULT status, uint32 requestID) OnQuerySupportedCommandsComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnOpenCommandSessionComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnCloseCommandSessionComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) OnSetCommandComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 responseID, SAFEARRAY* deviceServiceData, HRESULT status, uint32 requestID) OnQueryCommandComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, uint32 eventID, SAFEARRAY* deviceServiceData) OnEventNotification;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnOpenDataSessionComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnCloseDataSessionComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, HRESULT status, uint32 requestID) OnWriteDataComplete;
				public new function HRESULT(IMbnDeviceServicesEvents *self, IMbnDeviceService* deviceService, SAFEARRAY* deviceServiceData) OnReadData;
				public new function HRESULT(IMbnDeviceServicesEvents *self, BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) OnInterfaceStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceService : IUnknown
		{
			public const new Guid IID = .(0xb3bb9a71, 0xdc70, 0x4be9, 0xa4, 0xda, 0x78, 0x86, 0xae, 0x8b, 0x19, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QuerySupportedCommands(uint32* requestID) mut
			{
				return VT.QuerySupportedCommands(&this, requestID);
			}
			public HRESULT OpenCommandSession(uint32* requestID) mut
			{
				return VT.OpenCommandSession(&this, requestID);
			}
			public HRESULT CloseCommandSession(uint32* requestID) mut
			{
				return VT.CloseCommandSession(&this, requestID);
			}
			public HRESULT SetCommand(uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) mut
			{
				return VT.SetCommand(&this, commandID, deviceServiceData, requestID);
			}
			public HRESULT QueryCommand(uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) mut
			{
				return VT.QueryCommand(&this, commandID, deviceServiceData, requestID);
			}
			public HRESULT OpenDataSession(uint32* requestID) mut
			{
				return VT.OpenDataSession(&this, requestID);
			}
			public HRESULT CloseDataSession(uint32* requestID) mut
			{
				return VT.CloseDataSession(&this, requestID);
			}
			public HRESULT WriteData(SAFEARRAY* deviceServiceData, uint32* requestID) mut
			{
				return VT.WriteData(&this, deviceServiceData, requestID);
			}
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(&this, InterfaceID);
			}
			public HRESULT get_DeviceServiceID(BSTR* DeviceServiceID) mut
			{
				return VT.get_DeviceServiceID(&this, DeviceServiceID);
			}
			public HRESULT get_IsCommandSessionOpen(BOOL* value) mut
			{
				return VT.get_IsCommandSessionOpen(&this, value);
			}
			public HRESULT get_IsDataSessionOpen(BOOL* value) mut
			{
				return VT.get_IsDataSessionOpen(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnDeviceService *self, uint32* requestID) QuerySupportedCommands;
				public new function HRESULT(IMbnDeviceService *self, uint32* requestID) OpenCommandSession;
				public new function HRESULT(IMbnDeviceService *self, uint32* requestID) CloseCommandSession;
				public new function HRESULT(IMbnDeviceService *self, uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) SetCommand;
				public new function HRESULT(IMbnDeviceService *self, uint32 commandID, SAFEARRAY* deviceServiceData, uint32* requestID) QueryCommand;
				public new function HRESULT(IMbnDeviceService *self, uint32* requestID) OpenDataSession;
				public new function HRESULT(IMbnDeviceService *self, uint32* requestID) CloseDataSession;
				public new function HRESULT(IMbnDeviceService *self, SAFEARRAY* deviceServiceData, uint32* requestID) WriteData;
				public new function HRESULT(IMbnDeviceService *self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(IMbnDeviceService *self, BSTR* DeviceServiceID) get_DeviceServiceID;
				public new function HRESULT(IMbnDeviceService *self, BOOL* value) get_IsCommandSessionOpen;
				public new function HRESULT(IMbnDeviceService *self, BOOL* value) get_IsDataSessionOpen;
			}
		}
		[CRepr]
		public struct IMbnPin : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2007, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PinType(MBN_PIN_TYPE* PinType) mut
			{
				return VT.get_PinType(&this, PinType);
			}
			public HRESULT get_PinFormat(MBN_PIN_FORMAT* PinFormat) mut
			{
				return VT.get_PinFormat(&this, PinFormat);
			}
			public HRESULT get_PinLengthMin(uint32* PinLengthMin) mut
			{
				return VT.get_PinLengthMin(&this, PinLengthMin);
			}
			public HRESULT get_PinLengthMax(uint32* PinLengthMax) mut
			{
				return VT.get_PinLengthMax(&this, PinLengthMax);
			}
			public HRESULT get_PinMode(MBN_PIN_MODE* PinMode) mut
			{
				return VT.get_PinMode(&this, PinMode);
			}
			public HRESULT Enable(PWSTR pin, uint32* requestID) mut
			{
				return VT.Enable(&this, pin, requestID);
			}
			public HRESULT Disable(PWSTR pin, uint32* requestID) mut
			{
				return VT.Disable(&this, pin, requestID);
			}
			public HRESULT Enter(PWSTR pin, uint32* requestID) mut
			{
				return VT.Enter(&this, pin, requestID);
			}
			public HRESULT Change(PWSTR pin, PWSTR newPin, uint32* requestID) mut
			{
				return VT.Change(&this, pin, newPin, requestID);
			}
			public HRESULT Unblock(PWSTR puk, PWSTR newPin, uint32* requestID) mut
			{
				return VT.Unblock(&this, puk, newPin, requestID);
			}
			public HRESULT GetPinManager(IMbnPinManager** pinManager) mut
			{
				return VT.GetPinManager(&this, pinManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMbnPin *self, MBN_PIN_TYPE* PinType) get_PinType;
				public new function HRESULT(IMbnPin *self, MBN_PIN_FORMAT* PinFormat) get_PinFormat;
				public new function HRESULT(IMbnPin *self, uint32* PinLengthMin) get_PinLengthMin;
				public new function HRESULT(IMbnPin *self, uint32* PinLengthMax) get_PinLengthMax;
				public new function HRESULT(IMbnPin *self, MBN_PIN_MODE* PinMode) get_PinMode;
				public new function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Enable;
				public new function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Disable;
				public new function HRESULT(IMbnPin *self, PWSTR pin, uint32* requestID) Enter;
				public new function HRESULT(IMbnPin *self, PWSTR pin, PWSTR newPin, uint32* requestID) Change;
				public new function HRESULT(IMbnPin *self, PWSTR puk, PWSTR newPin, uint32* requestID) Unblock;
				public new function HRESULT(IMbnPin *self, IMbnPinManager** pinManager) GetPinManager;
			}
		}
		
	}
}
