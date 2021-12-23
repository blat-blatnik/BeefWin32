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
		public enum MBN_CELLULAR_CLASS : int32
		{
			NONE = 0,
			GSM = 1,
			CDMA = 2,
		}
		public enum MBN_VOICE_CLASS : int32
		{
			NONE = 0,
			NO_VOICE = 1,
			SEPARATE_VOICE_DATA = 2,
			SIMULTANEOUS_VOICE_DATA = 3,
		}
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
		public enum MBN_PROVIDER_CONSTANTS : int32
		{
			PROVIDERNAME_LEN = 20,
			PROVIDERID_LEN = 6,
		}
		[AllowDuplicates]
		public enum MBN_INTERFACE_CAPS_CONSTANTS : int32
		{
			DEVICEID_LEN = 18,
			MANUFACTURER_LEN = 32,
			MODEL_LEN = 32,
			FIRMWARE_LEN = 32,
		}
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
		public enum MBN_SMS_CAPS : int32
		{
			NONE = 0,
			PDU_RECEIVE = 1,
			PDU_SEND = 2,
			TEXT_RECEIVE = 4,
			TEXT_SEND = 8,
		}
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
		public enum MBN_ACTIVATION_STATE : int32
		{
			NONE = 0,
			ACTIVATED = 1,
			ACTIVATING = 2,
			DEACTIVATED = 3,
			DEACTIVATING = 4,
		}
		public enum MBN_CONNECTION_MODE : int32
		{
			PROFILE = 0,
			TMP_PROFILE = 1,
		}
		public enum MBN_VOICE_CALL_STATE : int32
		{
			NONE = 0,
			IN_PROGRESS = 1,
			HANGUP = 2,
		}
		public enum MBN_REGISTRATION_CONSTANTS : int32
		{
			ROAMTEXT_LEN = 64,
			CDMA_DEFAULT_PROVIDER_ID = 0,
		}
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
		public enum MBN_PIN_STATE : int32
		{
			NONE = 0,
			ENTER = 1,
			UNBLOCK = 2,
		}
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
		public enum MBN_PIN_MODE : int32
		{
			ENABLED = 1,
			DISABLED = 2,
		}
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
		public enum MBN_AUTH_PROTOCOL : int32
		{
			NONE = 0,
			PAP = 1,
			CHAP = 2,
			MSCHAPV2 = 3,
		}
		public enum MBN_COMPRESSION : int32
		{
			NONE = 0,
			ENABLE = 1,
		}
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
		public enum MBN_MSG_STATUS : int32
		{
			NEW = 0,
			OLD = 1,
			DRAFT = 2,
			SENT = 3,
		}
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
		public enum MBN_SMS_FLAG : int32
		{
			ALL = 0,
			INDEX = 1,
			NEW = 2,
			OLD = 3,
			SENT = 4,
			DRAFT = 5,
		}
		public enum MBN_SMS_STATUS_FLAG : int32
		{
			NONE = 0,
			MESSAGE_STORE_FULL = 1,
			NEW_MESSAGE = 2,
		}
		public enum MBN_SMS_FORMAT : int32
		{
			NONE = 0,
			PDU = 1,
			TEXT = 2,
		}
		public enum MBN_RADIO : int32
		{
			OFF = 0,
			ON = 1,
		}
		public enum MBN_DEVICE_SERVICE_SESSIONS_STATE : int32
		{
			RESTORED = 0,
		}
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
				return VT.get_ConnectionID(ref this, ConnectionID);
			}
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(ref this, InterfaceID);
			}
			public HRESULT Connect(MBN_CONNECTION_MODE connectionMode, PWSTR strProfile, out uint32 requestID) mut
			{
				return VT.Connect(ref this, connectionMode, strProfile, out requestID);
			}
			public HRESULT Disconnect(out uint32 requestID) mut
			{
				return VT.Disconnect(ref this, out requestID);
			}
			public HRESULT GetConnectionState(out MBN_ACTIVATION_STATE ConnectionState, BSTR* ProfileName) mut
			{
				return VT.GetConnectionState(ref this, out ConnectionState, ProfileName);
			}
			public HRESULT GetVoiceCallState(out MBN_VOICE_CALL_STATE voiceCallState) mut
			{
				return VT.GetVoiceCallState(ref this, out voiceCallState);
			}
			public HRESULT GetActivationNetworkError(out uint32 networkError) mut
			{
				return VT.GetActivationNetworkError(ref this, out networkError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnection self, BSTR* ConnectionID) get_ConnectionID;
				public new function HRESULT(ref IMbnConnection self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(ref IMbnConnection self, MBN_CONNECTION_MODE connectionMode, PWSTR strProfile, out uint32 requestID) Connect;
				public new function HRESULT(ref IMbnConnection self, out uint32 requestID) Disconnect;
				public new function HRESULT(ref IMbnConnection self, out MBN_ACTIVATION_STATE ConnectionState, BSTR* ProfileName) GetConnectionState;
				public new function HRESULT(ref IMbnConnection self, out MBN_VOICE_CALL_STATE voiceCallState) GetVoiceCallState;
				public new function HRESULT(ref IMbnConnection self, out uint32 networkError) GetActivationNetworkError;
			}
		}
		[CRepr]
		public struct IMbnConnectionEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectComplete(ref IMbnConnection newConnection, uint32 requestID, HRESULT status) mut
			{
				return VT.OnConnectComplete(ref this, ref newConnection, requestID, status);
			}
			public HRESULT OnDisconnectComplete(ref IMbnConnection newConnection, uint32 requestID, HRESULT status) mut
			{
				return VT.OnDisconnectComplete(ref this, ref newConnection, requestID, status);
			}
			public HRESULT OnConnectStateChange(ref IMbnConnection newConnection) mut
			{
				return VT.OnConnectStateChange(ref this, ref newConnection);
			}
			public HRESULT OnVoiceCallStateChange(ref IMbnConnection newConnection) mut
			{
				return VT.OnVoiceCallStateChange(ref this, ref newConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionEvents self, ref IMbnConnection newConnection, uint32 requestID, HRESULT status) OnConnectComplete;
				public new function HRESULT(ref IMbnConnectionEvents self, ref IMbnConnection newConnection, uint32 requestID, HRESULT status) OnDisconnectComplete;
				public new function HRESULT(ref IMbnConnectionEvents self, ref IMbnConnection newConnection) OnConnectStateChange;
				public new function HRESULT(ref IMbnConnectionEvents self, ref IMbnConnection newConnection) OnVoiceCallStateChange;
			}
		}
		[CRepr]
		public struct IMbnInterface : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2001, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(ref this, InterfaceID);
			}
			public HRESULT GetInterfaceCapability(out MBN_INTERFACE_CAPS interfaceCaps) mut
			{
				return VT.GetInterfaceCapability(ref this, out interfaceCaps);
			}
			public HRESULT GetSubscriberInformation(out IMbnSubscriberInformation* subscriberInformation) mut
			{
				return VT.GetSubscriberInformation(ref this, out subscriberInformation);
			}
			public HRESULT GetReadyState(out MBN_READY_STATE readyState) mut
			{
				return VT.GetReadyState(ref this, out readyState);
			}
			public HRESULT InEmergencyMode(out int16 emergencyMode) mut
			{
				return VT.InEmergencyMode(ref this, out emergencyMode);
			}
			public HRESULT GetHomeProvider(out MBN_PROVIDER homeProvider) mut
			{
				return VT.GetHomeProvider(ref this, out homeProvider);
			}
			public HRESULT GetPreferredProviders(SAFEARRAY** preferredProviders) mut
			{
				return VT.GetPreferredProviders(ref this, preferredProviders);
			}
			public HRESULT SetPreferredProviders(ref SAFEARRAY preferredProviders, out uint32 requestID) mut
			{
				return VT.SetPreferredProviders(ref this, ref preferredProviders, out requestID);
			}
			public HRESULT GetVisibleProviders(out uint32 age, out SAFEARRAY* visibleProviders) mut
			{
				return VT.GetVisibleProviders(ref this, out age, out visibleProviders);
			}
			public HRESULT ScanNetwork(out uint32 requestID) mut
			{
				return VT.ScanNetwork(ref this, out requestID);
			}
			public HRESULT GetConnection(out IMbnConnection* mbnConnection) mut
			{
				return VT.GetConnection(ref this, out mbnConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnInterface self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(ref IMbnInterface self, out MBN_INTERFACE_CAPS interfaceCaps) GetInterfaceCapability;
				public new function HRESULT(ref IMbnInterface self, out IMbnSubscriberInformation* subscriberInformation) GetSubscriberInformation;
				public new function HRESULT(ref IMbnInterface self, out MBN_READY_STATE readyState) GetReadyState;
				public new function HRESULT(ref IMbnInterface self, out int16 emergencyMode) InEmergencyMode;
				public new function HRESULT(ref IMbnInterface self, out MBN_PROVIDER homeProvider) GetHomeProvider;
				public new function HRESULT(ref IMbnInterface self, SAFEARRAY** preferredProviders) GetPreferredProviders;
				public new function HRESULT(ref IMbnInterface self, ref SAFEARRAY preferredProviders, out uint32 requestID) SetPreferredProviders;
				public new function HRESULT(ref IMbnInterface self, out uint32 age, out SAFEARRAY* visibleProviders) GetVisibleProviders;
				public new function HRESULT(ref IMbnInterface self, out uint32 requestID) ScanNetwork;
				public new function HRESULT(ref IMbnInterface self, out IMbnConnection* mbnConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMbnInterfaceEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2002, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInterfaceCapabilityAvailable(ref IMbnInterface newInterface) mut
			{
				return VT.OnInterfaceCapabilityAvailable(ref this, ref newInterface);
			}
			public HRESULT OnSubscriberInformationChange(ref IMbnInterface newInterface) mut
			{
				return VT.OnSubscriberInformationChange(ref this, ref newInterface);
			}
			public HRESULT OnReadyStateChange(ref IMbnInterface newInterface) mut
			{
				return VT.OnReadyStateChange(ref this, ref newInterface);
			}
			public HRESULT OnEmergencyModeChange(ref IMbnInterface newInterface) mut
			{
				return VT.OnEmergencyModeChange(ref this, ref newInterface);
			}
			public HRESULT OnHomeProviderAvailable(ref IMbnInterface newInterface) mut
			{
				return VT.OnHomeProviderAvailable(ref this, ref newInterface);
			}
			public HRESULT OnPreferredProvidersChange(ref IMbnInterface newInterface) mut
			{
				return VT.OnPreferredProvidersChange(ref this, ref newInterface);
			}
			public HRESULT OnSetPreferredProvidersComplete(ref IMbnInterface newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetPreferredProvidersComplete(ref this, ref newInterface, requestID, status);
			}
			public HRESULT OnScanNetworkComplete(ref IMbnInterface newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnScanNetworkComplete(ref this, ref newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnInterfaceCapabilityAvailable;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnSubscriberInformationChange;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnReadyStateChange;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnEmergencyModeChange;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnHomeProviderAvailable;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface) OnPreferredProvidersChange;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface, uint32 requestID, HRESULT status) OnSetPreferredProvidersComplete;
				public new function HRESULT(ref IMbnInterfaceEvents self, ref IMbnInterface newInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInterface(PWSTR interfaceID, IMbnInterface** mbnInterface) mut
			{
				return VT.GetInterface(ref this, interfaceID, mbnInterface);
			}
			public HRESULT GetInterfaces(SAFEARRAY** mbnInterfaces) mut
			{
				return VT.GetInterfaces(ref this, mbnInterfaces);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnInterfaceManager self, PWSTR interfaceID, IMbnInterface** mbnInterface) GetInterface;
				public new function HRESULT(ref IMbnInterfaceManager self, SAFEARRAY** mbnInterfaces) GetInterfaces;
			}
		}
		[CRepr]
		public struct IMbnInterfaceManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInterfaceArrival(ref IMbnInterface newInterface) mut
			{
				return VT.OnInterfaceArrival(ref this, ref newInterface);
			}
			public HRESULT OnInterfaceRemoval(ref IMbnInterface oldInterface) mut
			{
				return VT.OnInterfaceRemoval(ref this, ref oldInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnInterfaceManagerEvents self, ref IMbnInterface newInterface) OnInterfaceArrival;
				public new function HRESULT(ref IMbnInterfaceManagerEvents self, ref IMbnInterface oldInterface) OnInterfaceRemoval;
			}
		}
		[CRepr]
		public struct IMbnRegistration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2009, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRegisterState(out MBN_REGISTER_STATE registerState) mut
			{
				return VT.GetRegisterState(ref this, out registerState);
			}
			public HRESULT GetRegisterMode(out MBN_REGISTER_MODE registerMode) mut
			{
				return VT.GetRegisterMode(ref this, out registerMode);
			}
			public HRESULT GetProviderID(BSTR* providerID) mut
			{
				return VT.GetProviderID(ref this, providerID);
			}
			public HRESULT GetProviderName(BSTR* providerName) mut
			{
				return VT.GetProviderName(ref this, providerName);
			}
			public HRESULT GetRoamingText(BSTR* roamingText) mut
			{
				return VT.GetRoamingText(ref this, roamingText);
			}
			public HRESULT GetAvailableDataClasses(out uint32 availableDataClasses) mut
			{
				return VT.GetAvailableDataClasses(ref this, out availableDataClasses);
			}
			public HRESULT GetCurrentDataClass(out uint32 currentDataClass) mut
			{
				return VT.GetCurrentDataClass(ref this, out currentDataClass);
			}
			public HRESULT GetRegistrationNetworkError(out uint32 registrationNetworkError) mut
			{
				return VT.GetRegistrationNetworkError(ref this, out registrationNetworkError);
			}
			public HRESULT GetPacketAttachNetworkError(out uint32 packetAttachNetworkError) mut
			{
				return VT.GetPacketAttachNetworkError(ref this, out packetAttachNetworkError);
			}
			public HRESULT SetRegisterMode(MBN_REGISTER_MODE registerMode, PWSTR providerID, uint32 dataClass, out uint32 requestID) mut
			{
				return VT.SetRegisterMode(ref this, registerMode, providerID, dataClass, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnRegistration self, out MBN_REGISTER_STATE registerState) GetRegisterState;
				public new function HRESULT(ref IMbnRegistration self, out MBN_REGISTER_MODE registerMode) GetRegisterMode;
				public new function HRESULT(ref IMbnRegistration self, BSTR* providerID) GetProviderID;
				public new function HRESULT(ref IMbnRegistration self, BSTR* providerName) GetProviderName;
				public new function HRESULT(ref IMbnRegistration self, BSTR* roamingText) GetRoamingText;
				public new function HRESULT(ref IMbnRegistration self, out uint32 availableDataClasses) GetAvailableDataClasses;
				public new function HRESULT(ref IMbnRegistration self, out uint32 currentDataClass) GetCurrentDataClass;
				public new function HRESULT(ref IMbnRegistration self, out uint32 registrationNetworkError) GetRegistrationNetworkError;
				public new function HRESULT(ref IMbnRegistration self, out uint32 packetAttachNetworkError) GetPacketAttachNetworkError;
				public new function HRESULT(ref IMbnRegistration self, MBN_REGISTER_MODE registerMode, PWSTR providerID, uint32 dataClass, out uint32 requestID) SetRegisterMode;
			}
		}
		[CRepr]
		public struct IMbnRegistrationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRegisterModeAvailable(ref IMbnRegistration newInterface) mut
			{
				return VT.OnRegisterModeAvailable(ref this, ref newInterface);
			}
			public HRESULT OnRegisterStateChange(ref IMbnRegistration newInterface) mut
			{
				return VT.OnRegisterStateChange(ref this, ref newInterface);
			}
			public HRESULT OnPacketServiceStateChange(ref IMbnRegistration newInterface) mut
			{
				return VT.OnPacketServiceStateChange(ref this, ref newInterface);
			}
			public HRESULT OnSetRegisterModeComplete(ref IMbnRegistration newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetRegisterModeComplete(ref this, ref newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnRegisterModeAvailable;
				public new function HRESULT(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnRegisterStateChange;
				public new function HRESULT(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface) OnPacketServiceStateChange;
				public new function HRESULT(ref IMbnRegistrationEvents self, ref IMbnRegistration newInterface, uint32 requestID, HRESULT status) OnSetRegisterModeComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201d, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnection(PWSTR connectionID, IMbnConnection** mbnConnection) mut
			{
				return VT.GetConnection(ref this, connectionID, mbnConnection);
			}
			public HRESULT GetConnections(SAFEARRAY** mbnConnections) mut
			{
				return VT.GetConnections(ref this, mbnConnections);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionManager self, PWSTR connectionID, IMbnConnection** mbnConnection) GetConnection;
				public new function HRESULT(ref IMbnConnectionManager self, SAFEARRAY** mbnConnections) GetConnections;
			}
		}
		[CRepr]
		public struct IMbnConnectionManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201e, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionArrival(ref IMbnConnection newConnection) mut
			{
				return VT.OnConnectionArrival(ref this, ref newConnection);
			}
			public HRESULT OnConnectionRemoval(ref IMbnConnection oldConnection) mut
			{
				return VT.OnConnectionRemoval(ref this, ref oldConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionManagerEvents self, ref IMbnConnection newConnection) OnConnectionArrival;
				public new function HRESULT(ref IMbnConnectionManagerEvents self, ref IMbnConnection oldConnection) OnConnectionRemoval;
			}
		}
		[CRepr]
		public struct IMbnPinManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2005, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPinList(SAFEARRAY** pinList) mut
			{
				return VT.GetPinList(ref this, pinList);
			}
			public HRESULT GetPin(MBN_PIN_TYPE pinType, IMbnPin** pin) mut
			{
				return VT.GetPin(ref this, pinType, pin);
			}
			public HRESULT GetPinState(out uint32 requestID) mut
			{
				return VT.GetPinState(ref this, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnPinManager self, SAFEARRAY** pinList) GetPinList;
				public new function HRESULT(ref IMbnPinManager self, MBN_PIN_TYPE pinType, IMbnPin** pin) GetPin;
				public new function HRESULT(ref IMbnPinManager self, out uint32 requestID) GetPinState;
			}
		}
		[CRepr]
		public struct IMbnPinManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2006, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPinListAvailable(ref IMbnPinManager pinManager) mut
			{
				return VT.OnPinListAvailable(ref this, ref pinManager);
			}
			public HRESULT OnGetPinStateComplete(ref IMbnPinManager pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnGetPinStateComplete(ref this, ref pinManager, pinInfo, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnPinManagerEvents self, ref IMbnPinManager pinManager) OnPinListAvailable;
				public new function HRESULT(ref IMbnPinManagerEvents self, ref IMbnPinManager pinManager, MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnGetPinStateComplete;
			}
		}
		[CRepr]
		public struct IMbnPinEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2008, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEnableComplete(ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnEnableComplete(ref this, ref pin, ref pinInfo, requestID, status);
			}
			public HRESULT OnDisableComplete(ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnDisableComplete(ref this, ref pin, ref pinInfo, requestID, status);
			}
			public HRESULT OnEnterComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnEnterComplete(ref this, ref Pin, ref pinInfo, requestID, status);
			}
			public HRESULT OnChangeComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnChangeComplete(ref this, ref Pin, ref pinInfo, requestID, status);
			}
			public HRESULT OnUnblockComplete(ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) mut
			{
				return VT.OnUnblockComplete(ref this, ref Pin, ref pinInfo, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnPinEvents self, ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnEnableComplete;
				public new function HRESULT(ref IMbnPinEvents self, ref IMbnPin pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnDisableComplete;
				public new function HRESULT(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnEnterComplete;
				public new function HRESULT(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnChangeComplete;
				public new function HRESULT(ref IMbnPinEvents self, ref IMbnPin Pin, ref MBN_PIN_INFO pinInfo, uint32 requestID, HRESULT status) OnUnblockComplete;
			}
		}
		[CRepr]
		public struct IMbnSubscriberInformation : IUnknown
		{
			public const new Guid IID = .(0x459ecc43, 0xbcf5, 0x11dc, 0xa8, 0xa8, 0x00, 0x13, 0x21, 0xf1, 0x40, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubscriberID(BSTR* SubscriberID) mut
			{
				return VT.get_SubscriberID(ref this, SubscriberID);
			}
			public HRESULT get_SimIccID(BSTR* SimIccID) mut
			{
				return VT.get_SimIccID(ref this, SimIccID);
			}
			public HRESULT get_TelephoneNumbers(SAFEARRAY** TelephoneNumbers) mut
			{
				return VT.get_TelephoneNumbers(ref this, TelephoneNumbers);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSubscriberInformation self, BSTR* SubscriberID) get_SubscriberID;
				public new function HRESULT(ref IMbnSubscriberInformation self, BSTR* SimIccID) get_SimIccID;
				public new function HRESULT(ref IMbnSubscriberInformation self, SAFEARRAY** TelephoneNumbers) get_TelephoneNumbers;
			}
		}
		[CRepr]
		public struct IMbnSignal : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2003, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignalStrength(out uint32 signalStrength) mut
			{
				return VT.GetSignalStrength(ref this, out signalStrength);
			}
			public HRESULT GetSignalError(out uint32 signalError) mut
			{
				return VT.GetSignalError(ref this, out signalError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSignal self, out uint32 signalStrength) GetSignalStrength;
				public new function HRESULT(ref IMbnSignal self, out uint32 signalError) GetSignalError;
			}
		}
		[CRepr]
		public struct IMbnSignalEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2004, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSignalStateChange(ref IMbnSignal newInterface) mut
			{
				return VT.OnSignalStateChange(ref this, ref newInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSignalEvents self, ref IMbnSignal newInterface) OnSignalStateChange;
			}
		}
		[CRepr]
		public struct IMbnConnectionContext : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200b, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProvisionedContexts(SAFEARRAY** provisionedContexts) mut
			{
				return VT.GetProvisionedContexts(ref this, provisionedContexts);
			}
			public HRESULT SetProvisionedContext(MBN_CONTEXT provisionedContexts, PWSTR providerID, out uint32 requestID) mut
			{
				return VT.SetProvisionedContext(ref this, provisionedContexts, providerID, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionContext self, SAFEARRAY** provisionedContexts) GetProvisionedContexts;
				public new function HRESULT(ref IMbnConnectionContext self, MBN_CONTEXT provisionedContexts, PWSTR providerID, out uint32 requestID) SetProvisionedContext;
			}
		}
		[CRepr]
		public struct IMbnConnectionContextEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200c, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProvisionedContextListChange(ref IMbnConnectionContext newInterface) mut
			{
				return VT.OnProvisionedContextListChange(ref this, ref newInterface);
			}
			public HRESULT OnSetProvisionedContextComplete(ref IMbnConnectionContext newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetProvisionedContextComplete(ref this, ref newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionContextEvents self, ref IMbnConnectionContext newInterface) OnProvisionedContextListChange;
				public new function HRESULT(ref IMbnConnectionContextEvents self, ref IMbnConnectionContext newInterface, uint32 requestID, HRESULT status) OnSetProvisionedContextComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManager : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x200f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionProfiles(ref IMbnInterface mbnInterface, SAFEARRAY** connectionProfiles) mut
			{
				return VT.GetConnectionProfiles(ref this, ref mbnInterface, connectionProfiles);
			}
			public HRESULT GetConnectionProfile(ref IMbnInterface mbnInterface, PWSTR profileName, IMbnConnectionProfile** connectionProfile) mut
			{
				return VT.GetConnectionProfile(ref this, ref mbnInterface, profileName, connectionProfile);
			}
			public HRESULT CreateConnectionProfile(PWSTR xmlProfile) mut
			{
				return VT.CreateConnectionProfile(ref this, xmlProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionProfileManager self, ref IMbnInterface mbnInterface, SAFEARRAY** connectionProfiles) GetConnectionProfiles;
				public new function HRESULT(ref IMbnConnectionProfileManager self, ref IMbnInterface mbnInterface, PWSTR profileName, IMbnConnectionProfile** connectionProfile) GetConnectionProfile;
				public new function HRESULT(ref IMbnConnectionProfileManager self, PWSTR xmlProfile) CreateConnectionProfile;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfile : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2010, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProfileXmlData(BSTR* profileData) mut
			{
				return VT.GetProfileXmlData(ref this, profileData);
			}
			public HRESULT UpdateProfile(PWSTR strProfile) mut
			{
				return VT.UpdateProfile(ref this, strProfile);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(ref this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionProfile self, BSTR* profileData) GetProfileXmlData;
				public new function HRESULT(ref IMbnConnectionProfile self, PWSTR strProfile) UpdateProfile;
				public new function HRESULT(ref IMbnConnectionProfile self) Delete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2011, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProfileUpdate(ref IMbnConnectionProfile newProfile) mut
			{
				return VT.OnProfileUpdate(ref this, ref newProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionProfileEvents self, ref IMbnConnectionProfile newProfile) OnProfileUpdate;
			}
		}
		[CRepr]
		public struct IMbnSmsConfiguration : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2012, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ServiceCenterAddress(BSTR* scAddress) mut
			{
				return VT.get_ServiceCenterAddress(ref this, scAddress);
			}
			public HRESULT put_ServiceCenterAddress(PWSTR scAddress) mut
			{
				return VT.put_ServiceCenterAddress(ref this, scAddress);
			}
			public HRESULT get_MaxMessageIndex(out uint32 index) mut
			{
				return VT.get_MaxMessageIndex(ref this, out index);
			}
			public HRESULT get_CdmaShortMsgSize(out uint32 shortMsgSize) mut
			{
				return VT.get_CdmaShortMsgSize(ref this, out shortMsgSize);
			}
			public HRESULT get_SmsFormat(out MBN_SMS_FORMAT smsFormat) mut
			{
				return VT.get_SmsFormat(ref this, out smsFormat);
			}
			public HRESULT put_SmsFormat(MBN_SMS_FORMAT smsFormat) mut
			{
				return VT.put_SmsFormat(ref this, smsFormat);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSmsConfiguration self, BSTR* scAddress) get_ServiceCenterAddress;
				public new function HRESULT(ref IMbnSmsConfiguration self, PWSTR scAddress) put_ServiceCenterAddress;
				public new function HRESULT(ref IMbnSmsConfiguration self, out uint32 index) get_MaxMessageIndex;
				public new function HRESULT(ref IMbnSmsConfiguration self, out uint32 shortMsgSize) get_CdmaShortMsgSize;
				public new function HRESULT(ref IMbnSmsConfiguration self, out MBN_SMS_FORMAT smsFormat) get_SmsFormat;
				public new function HRESULT(ref IMbnSmsConfiguration self, MBN_SMS_FORMAT smsFormat) put_SmsFormat;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgPdu : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2013, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(out uint32 Index) mut
			{
				return VT.get_Index(ref this, out Index);
			}
			public HRESULT get_Status(out MBN_MSG_STATUS Status) mut
			{
				return VT.get_Status(ref this, out Status);
			}
			public HRESULT get_PduData(BSTR* PduData) mut
			{
				return VT.get_PduData(ref this, PduData);
			}
			public HRESULT get_Message(SAFEARRAY** Message) mut
			{
				return VT.get_Message(ref this, Message);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSmsReadMsgPdu self, out uint32 Index) get_Index;
				public new function HRESULT(ref IMbnSmsReadMsgPdu self, out MBN_MSG_STATUS Status) get_Status;
				public new function HRESULT(ref IMbnSmsReadMsgPdu self, BSTR* PduData) get_PduData;
				public new function HRESULT(ref IMbnSmsReadMsgPdu self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSmsReadMsgTextCdma : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2014, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Index(out uint32 Index) mut
			{
				return VT.get_Index(ref this, out Index);
			}
			public HRESULT get_Status(out MBN_MSG_STATUS Status) mut
			{
				return VT.get_Status(ref this, out Status);
			}
			public HRESULT get_Address(BSTR* Address) mut
			{
				return VT.get_Address(ref this, Address);
			}
			public HRESULT get_Timestamp(BSTR* Timestamp) mut
			{
				return VT.get_Timestamp(ref this, Timestamp);
			}
			public HRESULT get_EncodingID(out MBN_SMS_CDMA_ENCODING EncodingID) mut
			{
				return VT.get_EncodingID(ref this, out EncodingID);
			}
			public HRESULT get_LanguageID(out MBN_SMS_CDMA_LANG LanguageID) mut
			{
				return VT.get_LanguageID(ref this, out LanguageID);
			}
			public HRESULT get_SizeInCharacters(out uint32 SizeInCharacters) mut
			{
				return VT.get_SizeInCharacters(ref this, out SizeInCharacters);
			}
			public HRESULT get_Message(SAFEARRAY** Message) mut
			{
				return VT.get_Message(ref this, Message);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, out uint32 Index) get_Index;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, out MBN_MSG_STATUS Status) get_Status;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, BSTR* Address) get_Address;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, BSTR* Timestamp) get_Timestamp;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, out MBN_SMS_CDMA_ENCODING EncodingID) get_EncodingID;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, out MBN_SMS_CDMA_LANG LanguageID) get_LanguageID;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, out uint32 SizeInCharacters) get_SizeInCharacters;
				public new function HRESULT(ref IMbnSmsReadMsgTextCdma self, SAFEARRAY** Message) get_Message;
			}
		}
		[CRepr]
		public struct IMbnSms : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2015, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSmsConfiguration(IMbnSmsConfiguration** smsConfiguration) mut
			{
				return VT.GetSmsConfiguration(ref this, smsConfiguration);
			}
			public HRESULT SetSmsConfiguration(ref IMbnSmsConfiguration smsConfiguration, out uint32 requestID) mut
			{
				return VT.SetSmsConfiguration(ref this, ref smsConfiguration, out requestID);
			}
			public HRESULT SmsSendPdu(PWSTR pduData, uint8 size, out uint32 requestID) mut
			{
				return VT.SmsSendPdu(ref this, pduData, size, out requestID);
			}
			public HRESULT SmsSendCdma(PWSTR address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, ref SAFEARRAY message, out uint32 requestID) mut
			{
				return VT.SmsSendCdma(ref this, address, encoding, language, sizeInCharacters, ref message, out requestID);
			}
			public HRESULT SmsSendCdmaPdu(ref SAFEARRAY message, out uint32 requestID) mut
			{
				return VT.SmsSendCdmaPdu(ref this, ref message, out requestID);
			}
			public HRESULT SmsRead(ref MBN_SMS_FILTER smsFilter, MBN_SMS_FORMAT smsFormat, out uint32 requestID) mut
			{
				return VT.SmsRead(ref this, ref smsFilter, smsFormat, out requestID);
			}
			public HRESULT SmsDelete(ref MBN_SMS_FILTER smsFilter, out uint32 requestID) mut
			{
				return VT.SmsDelete(ref this, ref smsFilter, out requestID);
			}
			public HRESULT GetSmsStatus(out MBN_SMS_STATUS_INFO smsStatusInfo) mut
			{
				return VT.GetSmsStatus(ref this, out smsStatusInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSms self, IMbnSmsConfiguration** smsConfiguration) GetSmsConfiguration;
				public new function HRESULT(ref IMbnSms self, ref IMbnSmsConfiguration smsConfiguration, out uint32 requestID) SetSmsConfiguration;
				public new function HRESULT(ref IMbnSms self, PWSTR pduData, uint8 size, out uint32 requestID) SmsSendPdu;
				public new function HRESULT(ref IMbnSms self, PWSTR address, MBN_SMS_CDMA_ENCODING encoding, MBN_SMS_CDMA_LANG language, uint32 sizeInCharacters, ref SAFEARRAY message, out uint32 requestID) SmsSendCdma;
				public new function HRESULT(ref IMbnSms self, ref SAFEARRAY message, out uint32 requestID) SmsSendCdmaPdu;
				public new function HRESULT(ref IMbnSms self, ref MBN_SMS_FILTER smsFilter, MBN_SMS_FORMAT smsFormat, out uint32 requestID) SmsRead;
				public new function HRESULT(ref IMbnSms self, ref MBN_SMS_FILTER smsFilter, out uint32 requestID) SmsDelete;
				public new function HRESULT(ref IMbnSms self, out MBN_SMS_STATUS_INFO smsStatusInfo) GetSmsStatus;
			}
		}
		[CRepr]
		public struct IMbnSmsEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2016, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSmsConfigurationChange(ref IMbnSms sms) mut
			{
				return VT.OnSmsConfigurationChange(ref this, ref sms);
			}
			public HRESULT OnSetSmsConfigurationComplete(ref IMbnSms sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetSmsConfigurationComplete(ref this, ref sms, requestID, status);
			}
			public HRESULT OnSmsSendComplete(ref IMbnSms sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsSendComplete(ref this, ref sms, requestID, status);
			}
			public HRESULT OnSmsReadComplete(ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs, int16 moreMsgs, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsReadComplete(ref this, ref sms, smsFormat, ref readMsgs, moreMsgs, requestID, status);
			}
			public HRESULT OnSmsNewClass0Message(ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs) mut
			{
				return VT.OnSmsNewClass0Message(ref this, ref sms, smsFormat, ref readMsgs);
			}
			public HRESULT OnSmsDeleteComplete(ref IMbnSms sms, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSmsDeleteComplete(ref this, ref sms, requestID, status);
			}
			public HRESULT OnSmsStatusChange(ref IMbnSms sms) mut
			{
				return VT.OnSmsStatusChange(ref this, ref sms);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms) OnSmsConfigurationChange;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HRESULT status) OnSetSmsConfigurationComplete;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HRESULT status) OnSmsSendComplete;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs, int16 moreMsgs, uint32 requestID, HRESULT status) OnSmsReadComplete;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms, MBN_SMS_FORMAT smsFormat, ref SAFEARRAY readMsgs) OnSmsNewClass0Message;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms, uint32 requestID, HRESULT status) OnSmsDeleteComplete;
				public new function HRESULT(ref IMbnSmsEvents self, ref IMbnSms sms) OnSmsStatusChange;
			}
		}
		[CRepr]
		public struct IMbnServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2017, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(ref SAFEARRAY vendorSpecificData, out uint32 requestID) mut
			{
				return VT.Activate(ref this, ref vendorSpecificData, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnServiceActivation self, ref SAFEARRAY vendorSpecificData, out uint32 requestID) Activate;
			}
		}
		[CRepr]
		public struct IMbnServiceActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2018, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivationComplete(ref IMbnServiceActivation serviceActivation, ref SAFEARRAY vendorSpecificData, uint32 requestID, HRESULT status, uint32 networkError) mut
			{
				return VT.OnActivationComplete(ref this, ref serviceActivation, ref vendorSpecificData, requestID, status, networkError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnServiceActivationEvents self, ref IMbnServiceActivation serviceActivation, ref SAFEARRAY vendorSpecificData, uint32 requestID, HRESULT status, uint32 networkError) OnActivationComplete;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificOperation : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2019, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVendorSpecific(ref SAFEARRAY vendorSpecificData, out uint32 requestID) mut
			{
				return VT.SetVendorSpecific(ref this, ref vendorSpecificData, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnVendorSpecificOperation self, ref SAFEARRAY vendorSpecificData, out uint32 requestID) SetVendorSpecific;
			}
		}
		[CRepr]
		public struct IMbnVendorSpecificEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201a, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEventNotification(ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData) mut
			{
				return VT.OnEventNotification(ref this, ref vendorOperation, ref vendorSpecificData);
			}
			public HRESULT OnSetVendorSpecificComplete(ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData, uint32 requestID) mut
			{
				return VT.OnSetVendorSpecificComplete(ref this, ref vendorOperation, ref vendorSpecificData, requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnVendorSpecificEvents self, ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData) OnEventNotification;
				public new function HRESULT(ref IMbnVendorSpecificEvents self, ref IMbnVendorSpecificOperation vendorOperation, ref SAFEARRAY vendorSpecificData, uint32 requestID) OnSetVendorSpecificComplete;
			}
		}
		[CRepr]
		public struct IMbnConnectionProfileManagerEvents : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionProfileArrival(ref IMbnConnectionProfile newConnectionProfile) mut
			{
				return VT.OnConnectionProfileArrival(ref this, ref newConnectionProfile);
			}
			public HRESULT OnConnectionProfileRemoval(ref IMbnConnectionProfile oldConnectionProfile) mut
			{
				return VT.OnConnectionProfileRemoval(ref this, ref oldConnectionProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnConnectionProfileManagerEvents self, ref IMbnConnectionProfile newConnectionProfile) OnConnectionProfileArrival;
				public new function HRESULT(ref IMbnConnectionProfileManagerEvents self, ref IMbnConnectionProfile oldConnectionProfile) OnConnectionProfileRemoval;
			}
		}
		[CRepr]
		public struct IMbnRadio : IUnknown
		{
			public const new Guid IID = .(0xdccccab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SoftwareRadioState(out MBN_RADIO SoftwareRadioState) mut
			{
				return VT.get_SoftwareRadioState(ref this, out SoftwareRadioState);
			}
			public HRESULT get_HardwareRadioState(out MBN_RADIO HardwareRadioState) mut
			{
				return VT.get_HardwareRadioState(ref this, out HardwareRadioState);
			}
			public HRESULT SetSoftwareRadioState(MBN_RADIO radioState, out uint32 requestID) mut
			{
				return VT.SetSoftwareRadioState(ref this, radioState, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnRadio self, out MBN_RADIO SoftwareRadioState) get_SoftwareRadioState;
				public new function HRESULT(ref IMbnRadio self, out MBN_RADIO HardwareRadioState) get_HardwareRadioState;
				public new function HRESULT(ref IMbnRadio self, MBN_RADIO radioState, out uint32 requestID) SetSoftwareRadioState;
			}
		}
		[CRepr]
		public struct IMbnRadioEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x201f, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRadioStateChange(ref IMbnRadio newInterface) mut
			{
				return VT.OnRadioStateChange(ref this, ref newInterface);
			}
			public HRESULT OnSetSoftwareRadioStateComplete(ref IMbnRadio newInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetSoftwareRadioStateComplete(ref this, ref newInterface, requestID, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnRadioEvents self, ref IMbnRadio newInterface) OnRadioStateChange;
				public new function HRESULT(ref IMbnRadioEvents self, ref IMbnRadio newInterface, uint32 requestID, HRESULT status) OnSetSoftwareRadioStateComplete;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrier : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2020, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHomeProvider(ref MBN_PROVIDER2 homeProvider, out uint32 requestID) mut
			{
				return VT.SetHomeProvider(ref this, ref homeProvider, out requestID);
			}
			public HRESULT GetPreferredProviders(SAFEARRAY** preferredMulticarrierProviders) mut
			{
				return VT.GetPreferredProviders(ref this, preferredMulticarrierProviders);
			}
			public HRESULT GetVisibleProviders(out uint32 age, out SAFEARRAY* visibleProviders) mut
			{
				return VT.GetVisibleProviders(ref this, out age, out visibleProviders);
			}
			public HRESULT GetSupportedCellularClasses(SAFEARRAY** cellularClasses) mut
			{
				return VT.GetSupportedCellularClasses(ref this, cellularClasses);
			}
			public HRESULT GetCurrentCellularClass(out MBN_CELLULAR_CLASS currentCellularClass) mut
			{
				return VT.GetCurrentCellularClass(ref this, out currentCellularClass);
			}
			public HRESULT ScanNetwork(out uint32 requestID) mut
			{
				return VT.ScanNetwork(ref this, out requestID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnMultiCarrier self, ref MBN_PROVIDER2 homeProvider, out uint32 requestID) SetHomeProvider;
				public new function HRESULT(ref IMbnMultiCarrier self, SAFEARRAY** preferredMulticarrierProviders) GetPreferredProviders;
				public new function HRESULT(ref IMbnMultiCarrier self, out uint32 age, out SAFEARRAY* visibleProviders) GetVisibleProviders;
				public new function HRESULT(ref IMbnMultiCarrier self, SAFEARRAY** cellularClasses) GetSupportedCellularClasses;
				public new function HRESULT(ref IMbnMultiCarrier self, out MBN_CELLULAR_CLASS currentCellularClass) GetCurrentCellularClass;
				public new function HRESULT(ref IMbnMultiCarrier self, out uint32 requestID) ScanNetwork;
			}
		}
		[CRepr]
		public struct IMbnMultiCarrierEvents : IUnknown
		{
			public const new Guid IID = .(0xdcdddab6, 0x2021, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetHomeProviderComplete(ref IMbnMultiCarrier mbnInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnSetHomeProviderComplete(ref this, ref mbnInterface, requestID, status);
			}
			public HRESULT OnCurrentCellularClassChange(ref IMbnMultiCarrier mbnInterface) mut
			{
				return VT.OnCurrentCellularClassChange(ref this, ref mbnInterface);
			}
			public HRESULT OnPreferredProvidersChange(ref IMbnMultiCarrier mbnInterface) mut
			{
				return VT.OnPreferredProvidersChange(ref this, ref mbnInterface);
			}
			public HRESULT OnScanNetworkComplete(ref IMbnMultiCarrier mbnInterface, uint32 requestID, HRESULT status) mut
			{
				return VT.OnScanNetworkComplete(ref this, ref mbnInterface, requestID, status);
			}
			public HRESULT OnInterfaceCapabilityChange(ref IMbnMultiCarrier mbnInterface) mut
			{
				return VT.OnInterfaceCapabilityChange(ref this, ref mbnInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface, uint32 requestID, HRESULT status) OnSetHomeProviderComplete;
				public new function HRESULT(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnCurrentCellularClassChange;
				public new function HRESULT(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnPreferredProvidersChange;
				public new function HRESULT(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface, uint32 requestID, HRESULT status) OnScanNetworkComplete;
				public new function HRESULT(ref IMbnMultiCarrierEvents self, ref IMbnMultiCarrier mbnInterface) OnInterfaceCapabilityChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServiceStateEvents : IUnknown
		{
			public const new Guid IID = .(0x5d3ff196, 0x89ee, 0x49d8, 0x8b, 0x60, 0x33, 0xff, 0xdd, 0xff, 0xc5, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSessionsStateChange(BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) mut
			{
				return VT.OnSessionsStateChange(ref this, interfaceID, stateChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnDeviceServiceStateEvents self, BSTR interfaceID, MBN_DEVICE_SERVICE_SESSIONS_STATE stateChange) OnSessionsStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesManager : IUnknown
		{
			public const new Guid IID = .(0x20a26258, 0x6811, 0x4478, 0xac, 0x1d, 0x13, 0x32, 0x4e, 0x45, 0xe4, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceServicesContext(BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) mut
			{
				return VT.GetDeviceServicesContext(ref this, networkInterfaceID, mbnDevicesContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnDeviceServicesManager self, BSTR networkInterfaceID, IMbnDeviceServicesContext** mbnDevicesContext) GetDeviceServicesContext;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesContext : IUnknown
		{
			public const new Guid IID = .(0xfc5ac347, 0x1592, 0x4068, 0x80, 0xbb, 0x6a, 0x57, 0x58, 0x01, 0x50, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumerateDeviceServices(out SAFEARRAY* deviceServices) mut
			{
				return VT.EnumerateDeviceServices(ref this, out deviceServices);
			}
			public HRESULT GetDeviceService(BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) mut
			{
				return VT.GetDeviceService(ref this, deviceServiceID, mbnDeviceService);
			}
			public HRESULT get_MaxCommandSize(out uint32 maxCommandSize) mut
			{
				return VT.get_MaxCommandSize(ref this, out maxCommandSize);
			}
			public HRESULT get_MaxDataSize(out uint32 maxDataSize) mut
			{
				return VT.get_MaxDataSize(ref this, out maxDataSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnDeviceServicesContext self, out SAFEARRAY* deviceServices) EnumerateDeviceServices;
				public new function HRESULT(ref IMbnDeviceServicesContext self, BSTR deviceServiceID, IMbnDeviceService** mbnDeviceService) GetDeviceService;
				public new function HRESULT(ref IMbnDeviceServicesContext self, out uint32 maxCommandSize) get_MaxCommandSize;
				public new function HRESULT(ref IMbnDeviceServicesContext self, out uint32 maxDataSize) get_MaxDataSize;
			}
		}
		[CRepr]
		public struct IMbnDeviceServicesEvents : IUnknown
		{
			public const new Guid IID = .(0x0a900c19, 0x6824, 0x4e97, 0xb7, 0x6e, 0xcf, 0x23, 0x9d, 0x0c, 0xa6, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQuerySupportedCommandsComplete(ref IMbnDeviceService deviceService, ref SAFEARRAY commandIDList, HRESULT status, uint32 requestID) mut
			{
				return VT.OnQuerySupportedCommandsComplete(ref this, ref deviceService, ref commandIDList, status, requestID);
			}
			public HRESULT OnOpenCommandSessionComplete(ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnOpenCommandSessionComplete(ref this, ref deviceService, status, requestID);
			}
			public HRESULT OnCloseCommandSessionComplete(ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnCloseCommandSessionComplete(ref this, ref deviceService, status, requestID);
			}
			public HRESULT OnSetCommandComplete(ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HRESULT status, uint32 requestID) mut
			{
				return VT.OnSetCommandComplete(ref this, ref deviceService, responseID, ref deviceServiceData, status, requestID);
			}
			public HRESULT OnQueryCommandComplete(ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HRESULT status, uint32 requestID) mut
			{
				return VT.OnQueryCommandComplete(ref this, ref deviceService, responseID, ref deviceServiceData, status, requestID);
			}
			public HRESULT OnEventNotification(ref IMbnDeviceService deviceService, uint32 eventID, ref SAFEARRAY deviceServiceData) mut
			{
				return VT.OnEventNotification(ref this, ref deviceService, eventID, ref deviceServiceData);
			}
			public HRESULT OnOpenDataSessionComplete(ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnOpenDataSessionComplete(ref this, ref deviceService, status, requestID);
			}
			public HRESULT OnCloseDataSessionComplete(ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnCloseDataSessionComplete(ref this, ref deviceService, status, requestID);
			}
			public HRESULT OnWriteDataComplete(ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) mut
			{
				return VT.OnWriteDataComplete(ref this, ref deviceService, status, requestID);
			}
			public HRESULT OnReadData(ref IMbnDeviceService deviceService, ref SAFEARRAY deviceServiceData) mut
			{
				return VT.OnReadData(ref this, ref deviceService, ref deviceServiceData);
			}
			public HRESULT OnInterfaceStateChange(BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) mut
			{
				return VT.OnInterfaceStateChange(ref this, interfaceID, stateChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, ref SAFEARRAY commandIDList, HRESULT status, uint32 requestID) OnQuerySupportedCommandsComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) OnOpenCommandSessionComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) OnCloseCommandSessionComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HRESULT status, uint32 requestID) OnSetCommandComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 responseID, ref SAFEARRAY deviceServiceData, HRESULT status, uint32 requestID) OnQueryCommandComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, uint32 eventID, ref SAFEARRAY deviceServiceData) OnEventNotification;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) OnOpenDataSessionComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) OnCloseDataSessionComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, HRESULT status, uint32 requestID) OnWriteDataComplete;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, ref IMbnDeviceService deviceService, ref SAFEARRAY deviceServiceData) OnReadData;
				public new function HRESULT(ref IMbnDeviceServicesEvents self, BSTR interfaceID, MBN_DEVICE_SERVICES_INTERFACE_STATE stateChange) OnInterfaceStateChange;
			}
		}
		[CRepr]
		public struct IMbnDeviceService : IUnknown
		{
			public const new Guid IID = .(0xb3bb9a71, 0xdc70, 0x4be9, 0xa4, 0xda, 0x78, 0x86, 0xae, 0x8b, 0x19, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QuerySupportedCommands(out uint32 requestID) mut
			{
				return VT.QuerySupportedCommands(ref this, out requestID);
			}
			public HRESULT OpenCommandSession(out uint32 requestID) mut
			{
				return VT.OpenCommandSession(ref this, out requestID);
			}
			public HRESULT CloseCommandSession(out uint32 requestID) mut
			{
				return VT.CloseCommandSession(ref this, out requestID);
			}
			public HRESULT SetCommand(uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) mut
			{
				return VT.SetCommand(ref this, commandID, ref deviceServiceData, out requestID);
			}
			public HRESULT QueryCommand(uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) mut
			{
				return VT.QueryCommand(ref this, commandID, ref deviceServiceData, out requestID);
			}
			public HRESULT OpenDataSession(out uint32 requestID) mut
			{
				return VT.OpenDataSession(ref this, out requestID);
			}
			public HRESULT CloseDataSession(out uint32 requestID) mut
			{
				return VT.CloseDataSession(ref this, out requestID);
			}
			public HRESULT WriteData(ref SAFEARRAY deviceServiceData, out uint32 requestID) mut
			{
				return VT.WriteData(ref this, ref deviceServiceData, out requestID);
			}
			public HRESULT get_InterfaceID(BSTR* InterfaceID) mut
			{
				return VT.get_InterfaceID(ref this, InterfaceID);
			}
			public HRESULT get_DeviceServiceID(BSTR* DeviceServiceID) mut
			{
				return VT.get_DeviceServiceID(ref this, DeviceServiceID);
			}
			public HRESULT get_IsCommandSessionOpen(out BOOL value) mut
			{
				return VT.get_IsCommandSessionOpen(ref this, out value);
			}
			public HRESULT get_IsDataSessionOpen(out BOOL value) mut
			{
				return VT.get_IsDataSessionOpen(ref this, out value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnDeviceService self, out uint32 requestID) QuerySupportedCommands;
				public new function HRESULT(ref IMbnDeviceService self, out uint32 requestID) OpenCommandSession;
				public new function HRESULT(ref IMbnDeviceService self, out uint32 requestID) CloseCommandSession;
				public new function HRESULT(ref IMbnDeviceService self, uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) SetCommand;
				public new function HRESULT(ref IMbnDeviceService self, uint32 commandID, ref SAFEARRAY deviceServiceData, out uint32 requestID) QueryCommand;
				public new function HRESULT(ref IMbnDeviceService self, out uint32 requestID) OpenDataSession;
				public new function HRESULT(ref IMbnDeviceService self, out uint32 requestID) CloseDataSession;
				public new function HRESULT(ref IMbnDeviceService self, ref SAFEARRAY deviceServiceData, out uint32 requestID) WriteData;
				public new function HRESULT(ref IMbnDeviceService self, BSTR* InterfaceID) get_InterfaceID;
				public new function HRESULT(ref IMbnDeviceService self, BSTR* DeviceServiceID) get_DeviceServiceID;
				public new function HRESULT(ref IMbnDeviceService self, out BOOL value) get_IsCommandSessionOpen;
				public new function HRESULT(ref IMbnDeviceService self, out BOOL value) get_IsDataSessionOpen;
			}
		}
		[CRepr]
		public struct IMbnPin : IUnknown
		{
			public const new Guid IID = .(0xdcbbbab6, 0x2007, 0x4bbb, 0xaa, 0xee, 0x33, 0x8e, 0x36, 0x8a, 0xf6, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PinType(out MBN_PIN_TYPE PinType) mut
			{
				return VT.get_PinType(ref this, out PinType);
			}
			public HRESULT get_PinFormat(out MBN_PIN_FORMAT PinFormat) mut
			{
				return VT.get_PinFormat(ref this, out PinFormat);
			}
			public HRESULT get_PinLengthMin(out uint32 PinLengthMin) mut
			{
				return VT.get_PinLengthMin(ref this, out PinLengthMin);
			}
			public HRESULT get_PinLengthMax(out uint32 PinLengthMax) mut
			{
				return VT.get_PinLengthMax(ref this, out PinLengthMax);
			}
			public HRESULT get_PinMode(out MBN_PIN_MODE PinMode) mut
			{
				return VT.get_PinMode(ref this, out PinMode);
			}
			public HRESULT Enable(PWSTR pin, out uint32 requestID) mut
			{
				return VT.Enable(ref this, pin, out requestID);
			}
			public HRESULT Disable(PWSTR pin, out uint32 requestID) mut
			{
				return VT.Disable(ref this, pin, out requestID);
			}
			public HRESULT Enter(PWSTR pin, out uint32 requestID) mut
			{
				return VT.Enter(ref this, pin, out requestID);
			}
			public HRESULT Change(PWSTR pin, PWSTR newPin, out uint32 requestID) mut
			{
				return VT.Change(ref this, pin, newPin, out requestID);
			}
			public HRESULT Unblock(PWSTR puk, PWSTR newPin, out uint32 requestID) mut
			{
				return VT.Unblock(ref this, puk, newPin, out requestID);
			}
			public HRESULT GetPinManager(IMbnPinManager** pinManager) mut
			{
				return VT.GetPinManager(ref this, pinManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IMbnPin self, out MBN_PIN_TYPE PinType) get_PinType;
				public new function HRESULT(ref IMbnPin self, out MBN_PIN_FORMAT PinFormat) get_PinFormat;
				public new function HRESULT(ref IMbnPin self, out uint32 PinLengthMin) get_PinLengthMin;
				public new function HRESULT(ref IMbnPin self, out uint32 PinLengthMax) get_PinLengthMax;
				public new function HRESULT(ref IMbnPin self, out MBN_PIN_MODE PinMode) get_PinMode;
				public new function HRESULT(ref IMbnPin self, PWSTR pin, out uint32 requestID) Enable;
				public new function HRESULT(ref IMbnPin self, PWSTR pin, out uint32 requestID) Disable;
				public new function HRESULT(ref IMbnPin self, PWSTR pin, out uint32 requestID) Enter;
				public new function HRESULT(ref IMbnPin self, PWSTR pin, PWSTR newPin, out uint32 requestID) Change;
				public new function HRESULT(ref IMbnPin self, PWSTR puk, PWSTR newPin, out uint32 requestID) Unblock;
				public new function HRESULT(ref IMbnPin self, IMbnPinManager** pinManager) GetPinManager;
			}
		}
		
	}
}
