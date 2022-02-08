using System;

// namespace NetworkManagement.WindowsConnectNow
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT WCN_E_PEER_NOT_FOUND = -2147206143;
		public const HRESULT WCN_E_AUTHENTICATION_FAILED = -2147206142;
		public const HRESULT WCN_E_CONNECTION_REJECTED = -2147206141;
		public const HRESULT WCN_E_SESSION_TIMEDOUT = -2147206140;
		public const HRESULT WCN_E_PROTOCOL_ERROR = -2147206139;
		public const uint32 WCN_VALUE_DT_CATEGORY_COMPUTER = 1;
		public const uint32 WCN_VALUE_DT_CATEGORY_INPUT_DEVICE = 2;
		public const uint32 WCN_VALUE_DT_CATEGORY_PRINTER = 3;
		public const uint32 WCN_VALUE_DT_CATEGORY_CAMERA = 4;
		public const uint32 WCN_VALUE_DT_CATEGORY_STORAGE = 5;
		public const uint32 WCN_VALUE_DT_CATEGORY_NETWORK_INFRASTRUCTURE = 6;
		public const uint32 WCN_VALUE_DT_CATEGORY_DISPLAY = 7;
		public const uint32 WCN_VALUE_DT_CATEGORY_MULTIMEDIA_DEVICE = 8;
		public const uint32 WCN_VALUE_DT_CATEGORY_GAMING_DEVICE = 9;
		public const uint32 WCN_VALUE_DT_CATEGORY_TELEPHONE = 10;
		public const uint32 WCN_VALUE_DT_CATEGORY_AUDIO_DEVICE = 11;
		public const uint32 WCN_VALUE_DT_CATEGORY_OTHER = 255;
		public const uint32 WCN_VALUE_DT_SUBTYPE_WIFI_OUI = 5304836;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__PC = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__SERVER = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__MEDIACENTER = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__ULTRAMOBILEPC = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__NOTEBOOK = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__DESKTOP = 6;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__MID = 7;
		public const uint32 WCN_VALUE_DT_SUBTYPE_COMPUTER__NETBOOK = 8;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__KEYBOARD = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__MOUSE = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__JOYSTICK = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__TRACKBALL = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__GAMECONTROLLER = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__REMOTE = 6;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__TOUCHSCREEN = 7;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__BIOMETRICREADER = 8;
		public const uint32 WCN_VALUE_DT_SUBTYPE_INPUT_DEVICE__BARCODEREADER = 9;
		public const uint32 WCN_VALUE_DT_SUBTYPE_PRINTER__PRINTER = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_PRINTER__SCANNER = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_PRINTER__FAX = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_PRINTER__COPIER = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_PRINTER__ALLINONE = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_CAMERA__STILL_CAMERA = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_CAMERA__VIDEO_CAMERA = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_CAMERA__WEB_CAMERA = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_CAMERA__SECURITY_CAMERA = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_STORAGE__NAS = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__AP = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__ROUTER = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__SWITCH = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__GATEWAY = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_NETWORK_INFRASTRUCUTURE__BRIDGE = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_DISPLAY__TELEVISION = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_DISPLAY__PICTURE_FRAME = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_DISPLAY__PROJECTOR = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_DISPLAY__MONITOR = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__DAR = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__PVR = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__MCX = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__SETTOPBOX = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__MEDIA_SERVER_ADAPT_EXT = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_MULTIMEDIA_DEVICE__PVP = 6;
		public const uint32 WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__XBOX = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__XBOX360 = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__PLAYSTATION = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__CONSOLE_ADAPT = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_GAMING_DEVICE__PORTABLE = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_TELEPHONE__WINDOWS_MOBILE = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_TELEPHONE__PHONE_SINGLEMODE = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_TELEPHONE__PHONE_DUALMODE = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_TELEPHONE__SMARTPHONE_SINGLEMODE = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_TELEPHONE__SMARTPHONE_DUALMODE = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__TUNER_RECEIVER = 1;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__SPEAKERS = 2;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__PMP = 3;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HEADSET = 4;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HEADPHONES = 5;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__MICROPHONE = 6;
		public const uint32 WCN_VALUE_DT_SUBTYPE_AUDIO_DEVICE__HOMETHEATER = 7;
		public const uint32 WCN_API_MAX_BUFFER_SIZE = 2096;
		public const uint32 WCN_MICROSOFT_VENDOR_ID = 311;
		public const uint32 WCN_NO_SUBTYPE = 4294967294;
		public const uint32 WCN_FLAG_DISCOVERY_VE = 1;
		public const uint32 WCN_FLAG_AUTHENTICATED_VE = 2;
		public const uint32 WCN_FLAG_ENCRYPTED_VE = 4;
		public const Guid SID_WcnProvider = .(0xc100beca, 0xd33a, 0x4a4b, 0xbf, 0x23, 0xbb, 0xef, 0x46, 0x63, 0xd0, 0x17);
		
		// --- Enums ---
		
		public enum WCN_ATTRIBUTE_TYPE : int32
		{
			TYPE_AP_CHANNEL = 0,
			TYPE_ASSOCIATION_STATE = 1,
			TYPE_AUTHENTICATION_TYPE = 2,
			TYPE_AUTHENTICATION_TYPE_FLAGS = 3,
			TYPE_AUTHENTICATOR = 4,
			TYPE_CONFIG_METHODS = 5,
			TYPE_CONFIGURATION_ERROR = 6,
			TYPE_CONFIRMATION_URL4 = 7,
			TYPE_CONFIRMATION_URL6 = 8,
			TYPE_CONNECTION_TYPE = 9,
			TYPE_CONNECTION_TYPE_FLAGS = 10,
			TYPE_CREDENTIAL = 11,
			TYPE_DEVICE_NAME = 12,
			TYPE_DEVICE_PASSWORD_ID = 13,
			TYPE_E_HASH1 = 14,
			TYPE_E_HASH2 = 15,
			TYPE_E_SNONCE1 = 16,
			TYPE_E_SNONCE2 = 17,
			TYPE_ENCRYPTED_SETTINGS = 18,
			TYPE_ENCRYPTION_TYPE = 19,
			TYPE_ENCRYPTION_TYPE_FLAGS = 20,
			TYPE_ENROLLEE_NONCE = 21,
			TYPE_FEATURE_ID = 22,
			TYPE_IDENTITY = 23,
			TYPE_IDENTITY_PROOF = 24,
			TYPE_KEY_WRAP_AUTHENTICATOR = 25,
			TYPE_KEY_IDENTIFIER = 26,
			TYPE_MAC_ADDRESS = 27,
			TYPE_MANUFACTURER = 28,
			TYPE_MESSAGE_TYPE = 29,
			TYPE_MODEL_NAME = 30,
			TYPE_MODEL_NUMBER = 31,
			TYPE_NETWORK_INDEX = 32,
			TYPE_NETWORK_KEY = 33,
			TYPE_NETWORK_KEY_INDEX = 34,
			TYPE_NEW_DEVICE_NAME = 35,
			TYPE_NEW_PASSWORD = 36,
			TYPE_OOB_DEVICE_PASSWORD = 37,
			TYPE_OS_VERSION = 38,
			TYPE_POWER_LEVEL = 39,
			TYPE_PSK_CURRENT = 40,
			TYPE_PSK_MAX = 41,
			TYPE_PUBLIC_KEY = 42,
			TYPE_RADIO_ENABLED = 43,
			TYPE_REBOOT = 44,
			TYPE_REGISTRAR_CURRENT = 45,
			TYPE_REGISTRAR_ESTABLISHED = 46,
			TYPE_REGISTRAR_LIST = 47,
			TYPE_REGISTRAR_MAX = 48,
			TYPE_REGISTRAR_NONCE = 49,
			TYPE_REQUEST_TYPE = 50,
			TYPE_RESPONSE_TYPE = 51,
			TYPE_RF_BANDS = 52,
			TYPE_R_HASH1 = 53,
			TYPE_R_HASH2 = 54,
			TYPE_R_SNONCE1 = 55,
			TYPE_R_SNONCE2 = 56,
			TYPE_SELECTED_REGISTRAR = 57,
			TYPE_SERIAL_NUMBER = 58,
			TYPE_WI_FI_PROTECTED_SETUP_STATE = 59,
			TYPE_SSID = 60,
			TYPE_TOTAL_NETWORKS = 61,
			TYPE_UUID_E = 62,
			TYPE_UUID_R = 63,
			TYPE_VENDOR_EXTENSION = 64,
			TYPE_VERSION = 65,
			TYPE_X_509_CERTIFICATE_REQUEST = 66,
			TYPE_X_509_CERTIFICATE = 67,
			TYPE_EAP_IDENTITY = 68,
			TYPE_MESSAGE_COUNTER = 69,
			TYPE_PUBLIC_KEY_HASH = 70,
			TYPE_REKEY_KEY = 71,
			TYPE_KEY_LIFETIME = 72,
			TYPE_PERMITTED_CONFIG_METHODS = 73,
			TYPE_SELECTED_REGISTRAR_CONFIG_METHODS = 74,
			TYPE_PRIMARY_DEVICE_TYPE = 75,
			TYPE_SECONDARY_DEVICE_TYPE_LIST = 76,
			TYPE_PORTABLE_DEVICE = 77,
			TYPE_AP_SETUP_LOCKED = 78,
			TYPE_APPLICATION_EXTENSION = 79,
			TYPE_EAP_TYPE = 80,
			TYPE_INITIALIZATION_VECTOR = 81,
			TYPE_KEY_PROVIDED_AUTOMATICALLY = 82,
			TYPE_802_1X_ENABLED = 83,
			TYPE_APPSESSIONKEY = 84,
			TYPE_WEPTRANSMITKEY = 85,
			TYPE_UUID = 86,
			TYPE_PRIMARY_DEVICE_TYPE_CATEGORY = 87,
			TYPE_PRIMARY_DEVICE_TYPE_SUBCATEGORY_OUI = 88,
			TYPE_PRIMARY_DEVICE_TYPE_SUBCATEGORY = 89,
			TYPE_CURRENT_SSID = 90,
			TYPE_BSSID = 91,
			TYPE_DOT11_MAC_ADDRESS = 92,
			TYPE_AUTHORIZED_MACS = 93,
			TYPE_NETWORK_KEY_SHAREABLE = 94,
			TYPE_REQUEST_TO_ENROLL = 95,
			TYPE_REQUESTED_DEVICE_TYPE = 96,
			TYPE_SETTINGS_DELAY_TIME = 97,
			TYPE_VERSION2 = 98,
			TYPE_VENDOR_EXTENSION_WFA = 99,
			NUM_ATTRIBUTE_TYPES = 100,
		}
		public enum WCN_VALUE_TYPE_VERSION : int32
		{
			_1_0 = 16,
			_2_0 = 32,
		}
		public enum WCN_VALUE_TYPE_BOOLEAN : int32
		{
			FALSE = 0,
			TRUE = 1,
		}
		public enum WCN_VALUE_TYPE_ASSOCIATION_STATE : int32
		{
			NOT_ASSOCIATED = 0,
			CONNECTION_SUCCESS = 1,
			CONFIGURATION_FAILURE = 2,
			ASSOCIATION_FAILURE = 3,
			IP_FAILURE = 4,
		}
		public enum WCN_VALUE_TYPE_AUTHENTICATION_TYPE : int32
		{
			OPEN = 1,
			WPAPSK = 2,
			SHARED = 4,
			WPA = 8,
			WPA2 = 16,
			WPA2PSK = 32,
			WPAWPA2PSK_MIXED = 34,
		}
		public enum WCN_VALUE_TYPE_CONFIG_METHODS : int32
		{
			USBA = 1,
			ETHERNET = 2,
			LABEL = 4,
			DISPLAY = 8,
			EXTERNAL_NFC = 16,
			INTEGRATED_NFC = 32,
			NFC_INTERFACE = 64,
			PUSHBUTTON = 128,
			KEYPAD = 256,
			VIRT_PUSHBUTTON = 640,
			PHYS_PUSHBUTTON = 1152,
			VIRT_DISPLAY = 8200,
			PHYS_DISPLAY = 16392,
		}
		public enum WCN_VALUE_TYPE_CONFIGURATION_ERROR : int32
		{
			NO_ERROR = 0,
			OOB_INTERFACE_READ_ERROR = 1,
			DECRYPTION_CRC_FAILURE = 2,
			_2_4_CHANNEL_NOT_SUPPORTED = 3,
			_5_0_CHANNEL_NOT_SUPPORTED = 4,
			SIGNAL_TOO_WEAK = 5,
			NETWORK_AUTHENTICATION_FAILURE = 6,
			NETWORK_ASSOCIATION_FAILURE = 7,
			NO_DHCP_RESPONSE = 8,
			FAILED_DHCP_CONFIG = 9,
			IP_ADDRESS_CONFLICT = 10,
			COULD_NOT_CONNECT_TO_REGISTRAR = 11,
			MULTIPLE_PBC_SESSIONS_DETECTED = 12,
			ROGUE_ACTIVITY_SUSPECTED = 13,
			DEVICE_BUSY = 14,
			SETUP_LOCKED = 15,
			MESSAGE_TIMEOUT = 16,
			REGISTRATION_SESSION_TIMEOUT = 17,
			DEVICE_PASSWORD_AUTH_FAILURE = 18,
		}
		public enum WCN_VALUE_TYPE_CONNECTION_TYPE : int32
		{
			ESS = 1,
			IBSS = 2,
		}
		public enum WCN_VALUE_TYPE_DEVICE_PASSWORD_ID : int32
		{
			DEFAULT = 0,
			USER_SPECIFIED = 1,
			MACHINE_SPECIFIED = 2,
			REKEY = 3,
			PUSHBUTTON = 4,
			REGISTRAR_SPECIFIED = 5,
			NFC_CONNECTION_HANDOVER = 7,
			WFD_SERVICES = 8,
			OUTOFBAND_MIN = 16,
			OUTOFBAND_MAX = 65535,
		}
		public enum WCN_VALUE_TYPE_ENCRYPTION_TYPE : int32
		{
			NONE = 1,
			WEP = 2,
			TKIP = 4,
			AES = 8,
			TKIP_AES_MIXED = 12,
		}
		public enum WCN_VALUE_TYPE_MESSAGE_TYPE : int32
		{
			BEACON = 1,
			PROBE_REQUEST = 2,
			PROBE_RESPONSE = 3,
			M1 = 4,
			M2 = 5,
			M2D = 6,
			M3 = 7,
			M4 = 8,
			M5 = 9,
			M6 = 10,
			M7 = 11,
			M8 = 12,
			ACK = 13,
			NACK = 14,
			DONE = 15,
		}
		public enum WCN_VALUE_TYPE_REQUEST_TYPE : int32
		{
			ENROLLEE_INFO = 0,
			ENROLLEE_OPEN_1X = 1,
			REGISTRAR = 2,
			MANAGER_REGISTRAR = 3,
		}
		public enum WCN_VALUE_TYPE_RESPONSE_TYPE : int32
		{
			ENROLLEE_INFO = 0,
			ENROLLEE_OPEN_1X = 1,
			REGISTRAR = 2,
			AP = 3,
		}
		public enum WCN_VALUE_TYPE_RF_BANDS : int32
		{
			_24GHZ = 1,
			_50GHZ = 2,
		}
		public enum WCN_VALUE_TYPE_WI_FI_PROTECTED_SETUP_STATE : int32
		{
			RESERVED00 = 0,
			NOT_CONFIGURED = 1,
			CONFIGURED = 2,
		}
		public enum WCN_PASSWORD_TYPE : int32
		{
			PUSH_BUTTON = 0,
			PIN = 1,
			PIN_REGISTRAR_SPECIFIED = 2,
			OOB_SPECIFIED = 3,
			WFDS = 4,
		}
		public enum WCN_SESSION_STATUS : int32
		{
			SUCCESS = 0,
			FAILURE_GENERIC = 1,
			FAILURE_TIMEOUT = 2,
		}
		
		// --- Structs ---
		
		[CRepr, Packed(1)]
		public struct WCN_VALUE_TYPE_PRIMARY_DEVICE_TYPE
		{
			public uint16 Category;
			public uint32 SubCategoryOUI;
			public uint16 SubCategory;
		}
		[CRepr]
		public struct WCN_VENDOR_EXTENSION_SPEC
		{
			public uint32 VendorId;
			public uint32 SubType;
			public uint32 Index;
			public uint32 Flags;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WCNDeviceObject = .(0xc100bea7, 0xd33a, 0x4a4b, 0xbf, 0x23, 0xbb, 0xef, 0x46, 0x63, 0xd0, 0x17);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWCNDevice : IUnknown
		{
			public const new Guid IID = .(0xc100be9c, 0xd33a, 0x4a4b, 0xbf, 0x23, 0xbb, 0xef, 0x46, 0x63, 0xd0, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPassword(WCN_PASSWORD_TYPE Type, uint32 dwPasswordLength, uint8* pbPassword) mut => VT.SetPassword(ref this, Type, dwPasswordLength, pbPassword);
			public HRESULT Connect(IWCNConnectNotify* pNotify) mut => VT.Connect(ref this, pNotify);
			public HRESULT GetAttribute(WCN_ATTRIBUTE_TYPE AttributeType, uint32 dwMaxBufferSize, uint8* pbBuffer, out uint32 pdwBufferUsed) mut => VT.GetAttribute(ref this, AttributeType, dwMaxBufferSize, pbBuffer, out pdwBufferUsed);
			public HRESULT GetIntegerAttribute(WCN_ATTRIBUTE_TYPE AttributeType, out uint32 puInteger) mut => VT.GetIntegerAttribute(ref this, AttributeType, out puInteger);
			public HRESULT GetStringAttribute(WCN_ATTRIBUTE_TYPE AttributeType, uint32 cchMaxString, char16* wszString) mut => VT.GetStringAttribute(ref this, AttributeType, cchMaxString, wszString);
			public HRESULT GetNetworkProfile(uint32 cchMaxStringLength, char16* wszProfile) mut => VT.GetNetworkProfile(ref this, cchMaxStringLength, wszProfile);
			public HRESULT SetNetworkProfile(PWSTR pszProfileXml) mut => VT.SetNetworkProfile(ref this, pszProfileXml);
			public HRESULT GetVendorExtension(in WCN_VENDOR_EXTENSION_SPEC pVendorExtSpec, uint32 dwMaxBufferSize, uint8* pbBuffer, out uint32 pdwBufferUsed) mut => VT.GetVendorExtension(ref this, pVendorExtSpec, dwMaxBufferSize, pbBuffer, out pdwBufferUsed);
			public HRESULT SetVendorExtension(in WCN_VENDOR_EXTENSION_SPEC pVendorExtSpec, uint32 cbBuffer, uint8* pbBuffer) mut => VT.SetVendorExtension(ref this, pVendorExtSpec, cbBuffer, pbBuffer);
			public HRESULT Unadvise() mut => VT.Unadvise(ref this);
			public HRESULT SetNFCPasswordParams(WCN_PASSWORD_TYPE Type, uint32 dwOOBPasswordID, uint32 dwPasswordLength, uint8* pbPassword, uint32 dwRemotePublicKeyHashLength, uint8* pbRemotePublicKeyHash, uint32 dwDHKeyBlobLength, uint8* pbDHKeyBlob) mut => VT.SetNFCPasswordParams(ref this, Type, dwOOBPasswordID, dwPasswordLength, pbPassword, dwRemotePublicKeyHashLength, pbRemotePublicKeyHash, dwDHKeyBlobLength, pbDHKeyBlob);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, WCN_PASSWORD_TYPE Type, uint32 dwPasswordLength, uint8* pbPassword) SetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, IWCNConnectNotify* pNotify) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, WCN_ATTRIBUTE_TYPE AttributeType, uint32 dwMaxBufferSize, uint8* pbBuffer, out uint32 pdwBufferUsed) GetAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, WCN_ATTRIBUTE_TYPE AttributeType, out uint32 puInteger) GetIntegerAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, WCN_ATTRIBUTE_TYPE AttributeType, uint32 cchMaxString, char16* wszString) GetStringAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, uint32 cchMaxStringLength, char16* wszProfile) GetNetworkProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, PWSTR pszProfileXml) SetNetworkProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, in WCN_VENDOR_EXTENSION_SPEC pVendorExtSpec, uint32 dwMaxBufferSize, uint8* pbBuffer, out uint32 pdwBufferUsed) GetVendorExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, in WCN_VENDOR_EXTENSION_SPEC pVendorExtSpec, uint32 cbBuffer, uint8* pbBuffer) SetVendorExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self) Unadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNDevice self, WCN_PASSWORD_TYPE Type, uint32 dwOOBPasswordID, uint32 dwPasswordLength, uint8* pbPassword, uint32 dwRemotePublicKeyHashLength, uint8* pbRemotePublicKeyHash, uint32 dwDHKeyBlobLength, uint8* pbDHKeyBlob) SetNFCPasswordParams;
			}
		}
		[CRepr]
		public struct IWCNConnectNotify : IUnknown
		{
			public const new Guid IID = .(0xc100be9f, 0xd33a, 0x4a4b, 0xbf, 0x23, 0xbb, 0xef, 0x46, 0x63, 0xd0, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectSucceeded() mut => VT.ConnectSucceeded(ref this);
			public HRESULT ConnectFailed(HRESULT hrFailure) mut => VT.ConnectFailed(ref this, hrFailure);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNConnectNotify self) ConnectSucceeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCNConnectNotify self, HRESULT hrFailure) ConnectFailed;
			}
		}
		
	}
}
