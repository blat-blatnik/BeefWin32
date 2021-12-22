using System;

// namespace System.RemoteDesktop
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WTS_DOMAIN_LENGTH = 255;
		public const uint32 WTS_USERNAME_LENGTH = 255;
		public const uint32 WTS_PASSWORD_LENGTH = 255;
		public const uint32 WTS_DIRECTORY_LENGTH = 256;
		public const uint32 WTS_INITIALPROGRAM_LENGTH = 256;
		public const uint32 WTS_PROTOCOL_NAME_LENGTH = 8;
		public const uint32 WTS_DRIVER_NAME_LENGTH = 8;
		public const uint32 WTS_DEVICE_NAME_LENGTH = 19;
		public const uint32 WTS_IMEFILENAME_LENGTH = 32;
		public const uint32 WTS_CLIENTNAME_LENGTH = 20;
		public const uint32 WTS_CLIENTADDRESS_LENGTH = 30;
		public const uint32 WTS_CLIENT_PRODUCT_ID_LENGTH = 32;
		public const uint32 WTS_MAX_PROTOCOL_CACHE = 4;
		public const uint32 WTS_MAX_CACHE_RESERVED = 20;
		public const uint32 WTS_MAX_RESERVED = 100;
		public const uint32 WTS_MAX_COUNTERS = 100;
		public const uint32 WTS_MAX_DISPLAY_IOCTL_DATA = 256;
		public const uint32 WTS_PERF_DISABLE_NOTHING = 0;
		public const uint32 WTS_PERF_DISABLE_WALLPAPER = 1;
		public const uint32 WTS_PERF_DISABLE_FULLWINDOWDRAG = 2;
		public const uint32 WTS_PERF_DISABLE_MENUANIMATIONS = 4;
		public const uint32 WTS_PERF_DISABLE_THEMING = 8;
		public const uint32 WTS_PERF_ENABLE_ENHANCED_GRAPHICS = 16;
		public const uint32 WTS_PERF_DISABLE_CURSOR_SHADOW = 32;
		public const uint32 WTS_PERF_DISABLE_CURSORSETTINGS = 64;
		public const uint32 WTS_PERF_ENABLE_FONT_SMOOTHING = 128;
		public const uint32 WTS_PERF_ENABLE_DESKTOP_COMPOSITION = 256;
		public const uint32 WTS_VALUE_TYPE_ULONG = 1;
		public const uint32 WTS_VALUE_TYPE_STRING = 2;
		public const uint32 WTS_VALUE_TYPE_BINARY = 3;
		public const uint32 WTS_VALUE_TYPE_GUID = 4;
		public const uint32 WTS_KEY_EXCHANGE_ALG_RSA = 1;
		public const uint32 WTS_KEY_EXCHANGE_ALG_DH = 2;
		public const uint32 WTS_LICENSE_PROTOCOL_VERSION = 65536;
		public const uint32 WTS_LICENSE_PREAMBLE_VERSION = 3;
		public const uint32 WRDS_DOMAIN_LENGTH = 255;
		public const uint32 WRDS_USERNAME_LENGTH = 255;
		public const uint32 WRDS_PASSWORD_LENGTH = 255;
		public const uint32 WRDS_DIRECTORY_LENGTH = 256;
		public const uint32 WRDS_INITIALPROGRAM_LENGTH = 256;
		public const uint32 WRDS_PROTOCOL_NAME_LENGTH = 8;
		public const uint32 WRDS_DRIVER_NAME_LENGTH = 8;
		public const uint32 WRDS_DEVICE_NAME_LENGTH = 19;
		public const uint32 WRDS_IMEFILENAME_LENGTH = 32;
		public const uint32 WRDS_CLIENTNAME_LENGTH = 20;
		public const uint32 WRDS_CLIENTADDRESS_LENGTH = 30;
		public const uint32 WRDS_CLIENT_PRODUCT_ID_LENGTH = 32;
		public const uint32 WRDS_MAX_PROTOCOL_CACHE = 4;
		public const uint32 WRDS_MAX_CACHE_RESERVED = 20;
		public const uint32 WRDS_MAX_RESERVED = 100;
		public const uint32 WRDS_MAX_COUNTERS = 100;
		public const uint32 WRDS_MAX_DISPLAY_IOCTL_DATA = 256;
		public const uint32 WRDS_PERF_DISABLE_NOTHING = 0;
		public const uint32 WRDS_PERF_DISABLE_WALLPAPER = 1;
		public const uint32 WRDS_PERF_DISABLE_FULLWINDOWDRAG = 2;
		public const uint32 WRDS_PERF_DISABLE_MENUANIMATIONS = 4;
		public const uint32 WRDS_PERF_DISABLE_THEMING = 8;
		public const uint32 WRDS_PERF_ENABLE_ENHANCED_GRAPHICS = 16;
		public const uint32 WRDS_PERF_DISABLE_CURSOR_SHADOW = 32;
		public const uint32 WRDS_PERF_DISABLE_CURSORSETTINGS = 64;
		public const uint32 WRDS_PERF_ENABLE_FONT_SMOOTHING = 128;
		public const uint32 WRDS_PERF_ENABLE_DESKTOP_COMPOSITION = 256;
		public const uint32 WRDS_VALUE_TYPE_ULONG = 1;
		public const uint32 WRDS_VALUE_TYPE_STRING = 2;
		public const uint32 WRDS_VALUE_TYPE_BINARY = 3;
		public const uint32 WRDS_VALUE_TYPE_GUID = 4;
		public const uint32 WRDS_KEY_EXCHANGE_ALG_RSA = 1;
		public const uint32 WRDS_KEY_EXCHANGE_ALG_DH = 2;
		public const uint32 WRDS_LICENSE_PROTOCOL_VERSION = 65536;
		public const uint32 WRDS_LICENSE_PREAMBLE_VERSION = 3;
		public const uint32 SINGLE_SESSION = 1;
		public const uint32 FORCE_REJOIN = 2;
		public const uint32 FORCE_REJOIN_IN_CLUSTERMODE = 3;
		public const uint32 RESERVED_FOR_LEGACY = 4;
		public const uint32 KEEP_EXISTING_SESSIONS = 8;
		public const uint32 CHANNEL_EVENT_INITIALIZED = 0;
		public const uint32 CHANNEL_EVENT_CONNECTED = 1;
		public const uint32 CHANNEL_EVENT_V1_CONNECTED = 2;
		public const uint32 CHANNEL_EVENT_DISCONNECTED = 3;
		public const uint32 CHANNEL_EVENT_TERMINATED = 4;
		public const uint32 CHANNEL_EVENT_DATA_RECEIVED = 10;
		public const uint32 CHANNEL_EVENT_WRITE_COMPLETE = 11;
		public const uint32 CHANNEL_EVENT_WRITE_CANCELLED = 12;
		public const uint32 CHANNEL_RC_OK = 0;
		public const uint32 CHANNEL_RC_ALREADY_INITIALIZED = 1;
		public const uint32 CHANNEL_RC_NOT_INITIALIZED = 2;
		public const uint32 CHANNEL_RC_ALREADY_CONNECTED = 3;
		public const uint32 CHANNEL_RC_NOT_CONNECTED = 4;
		public const uint32 CHANNEL_RC_TOO_MANY_CHANNELS = 5;
		public const uint32 CHANNEL_RC_BAD_CHANNEL = 6;
		public const uint32 CHANNEL_RC_BAD_CHANNEL_HANDLE = 7;
		public const uint32 CHANNEL_RC_NO_BUFFER = 8;
		public const uint32 CHANNEL_RC_BAD_INIT_HANDLE = 9;
		public const uint32 CHANNEL_RC_NOT_OPEN = 10;
		public const uint32 CHANNEL_RC_BAD_PROC = 11;
		public const uint32 CHANNEL_RC_NO_MEMORY = 12;
		public const uint32 CHANNEL_RC_UNKNOWN_CHANNEL_NAME = 13;
		public const uint32 CHANNEL_RC_ALREADY_OPEN = 14;
		public const uint32 CHANNEL_RC_NOT_IN_VIRTUALCHANNELENTRY = 15;
		public const uint32 CHANNEL_RC_NULL_DATA = 16;
		public const uint32 CHANNEL_RC_ZERO_LENGTH = 17;
		public const uint32 CHANNEL_RC_INVALID_INSTANCE = 18;
		public const uint32 CHANNEL_RC_UNSUPPORTED_VERSION = 19;
		public const uint32 CHANNEL_RC_INITIALIZATION_ERROR = 20;
		public const uint32 VIRTUAL_CHANNEL_VERSION_WIN2000 = 1;
		public const uint32 CHANNEL_CHUNK_LENGTH = 1600;
		public const uint32 CHANNEL_BUFFER_SIZE = 65535;
		public const uint32 CHANNEL_FLAG_FIRST = 1;
		public const uint32 CHANNEL_FLAG_LAST = 2;
		public const uint32 CHANNEL_FLAG_MIDDLE = 0;
		public const uint32 CHANNEL_FLAG_FAIL = 256;
		public const uint32 CHANNEL_OPTION_INITIALIZED = 2147483648;
		public const uint32 CHANNEL_OPTION_ENCRYPT_RDP = 1073741824;
		public const uint32 CHANNEL_OPTION_ENCRYPT_SC = 536870912;
		public const uint32 CHANNEL_OPTION_ENCRYPT_CS = 268435456;
		public const uint32 CHANNEL_OPTION_PRI_HIGH = 134217728;
		public const uint32 CHANNEL_OPTION_PRI_MED = 67108864;
		public const uint32 CHANNEL_OPTION_PRI_LOW = 33554432;
		public const uint32 CHANNEL_OPTION_COMPRESS_RDP = 8388608;
		public const uint32 CHANNEL_OPTION_COMPRESS = 4194304;
		public const uint32 CHANNEL_OPTION_SHOW_PROTOCOL = 2097152;
		public const uint32 CHANNEL_OPTION_REMOTE_CONTROL_PERSISTENT = 1048576;
		public const uint32 CHANNEL_MAX_COUNT = 30;
		public const uint32 CHANNEL_NAME_LEN = 7;
		public const uint32 MAX_POLICY_ATTRIBUTES = 20;
		public const uint32 WTS_CURRENT_SESSION = 4294967295;
		public const uint32 USERNAME_LENGTH = 20;
		public const uint32 CLIENTNAME_LENGTH = 20;
		public const uint32 CLIENTADDRESS_LENGTH = 30;
		public const uint32 WTS_WSD_LOGOFF = 1;
		public const uint32 WTS_WSD_SHUTDOWN = 2;
		public const uint32 WTS_WSD_REBOOT = 4;
		public const uint32 WTS_WSD_POWEROFF = 8;
		public const uint32 WTS_WSD_FASTREBOOT = 16;
		public const uint32 MAX_ELAPSED_TIME_LENGTH = 15;
		public const uint32 MAX_DATE_TIME_LENGTH = 56;
		public const uint32 WINSTATIONNAME_LENGTH = 32;
		public const uint32 DOMAIN_LENGTH = 17;
		public const uint32 WTS_DRIVE_LENGTH = 3;
		public const uint32 WTS_LISTENER_NAME_LENGTH = 32;
		public const uint32 WTS_COMMENT_LENGTH = 60;
		public const uint32 WTS_LISTENER_CREATE = 1;
		public const uint32 WTS_LISTENER_UPDATE = 16;
		public const uint32 WTS_SECURITY_QUERY_INFORMATION = 1;
		public const uint32 WTS_SECURITY_SET_INFORMATION = 2;
		public const uint32 WTS_SECURITY_RESET = 4;
		public const uint32 WTS_SECURITY_VIRTUAL_CHANNELS = 8;
		public const uint32 WTS_SECURITY_REMOTE_CONTROL = 16;
		public const uint32 WTS_SECURITY_LOGON = 32;
		public const uint32 WTS_SECURITY_LOGOFF = 64;
		public const uint32 WTS_SECURITY_MESSAGE = 128;
		public const uint32 WTS_SECURITY_CONNECT = 256;
		public const uint32 WTS_SECURITY_DISCONNECT = 512;
		public const uint32 WTS_SECURITY_GUEST_ACCESS = 32;
		public const uint32 WTS_PROTOCOL_TYPE_CONSOLE = 0;
		public const uint32 WTS_PROTOCOL_TYPE_ICA = 1;
		public const uint32 WTS_PROTOCOL_TYPE_RDP = 2;
		public const uint32 WTS_SESSIONSTATE_UNKNOWN = 4294967295;
		public const uint32 WTS_SESSIONSTATE_LOCK = 0;
		public const uint32 WTS_SESSIONSTATE_UNLOCK = 1;
		public const uint32 PRODUCTINFO_COMPANYNAME_LENGTH = 256;
		public const uint32 PRODUCTINFO_PRODUCTID_LENGTH = 4;
		public const uint32 VALIDATIONINFORMATION_LICENSE_LENGTH = 16384;
		public const uint32 VALIDATIONINFORMATION_HARDWAREID_LENGTH = 20;
		public const uint32 WTS_EVENT_NONE = 0;
		public const uint32 WTS_EVENT_CREATE = 1;
		public const uint32 WTS_EVENT_DELETE = 2;
		public const uint32 WTS_EVENT_RENAME = 4;
		public const uint32 WTS_EVENT_CONNECT = 8;
		public const uint32 WTS_EVENT_DISCONNECT = 16;
		public const uint32 WTS_EVENT_LOGON = 32;
		public const uint32 WTS_EVENT_LOGOFF = 64;
		public const uint32 WTS_EVENT_STATECHANGE = 128;
		public const uint32 WTS_EVENT_LICENSE = 256;
		public const uint32 WTS_EVENT_ALL = 2147483647;
		public const uint32 WTS_EVENT_FLUSH = 2147483648;
		public const uint32 REMOTECONTROL_KBDSHIFT_HOTKEY = 1;
		public const uint32 REMOTECONTROL_KBDCTRL_HOTKEY = 2;
		public const uint32 REMOTECONTROL_KBDALT_HOTKEY = 4;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC = 1;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_LOW = 0;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_MED = 2;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_HIGH = 4;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_PRI_REAL = 6;
		public const uint32 WTS_CHANNEL_OPTION_DYNAMIC_NO_COMPRESS = 8;
		public const uint32 NOTIFY_FOR_ALL_SESSIONS = 1;
		public const uint32 NOTIFY_FOR_THIS_SESSION = 0;
		public const uint32 WTS_PROCESS_INFO_LEVEL_0 = 0;
		public const uint32 WTS_PROCESS_INFO_LEVEL_1 = 1;
		public const uint32 PLUGIN_CAPABILITY_EXTERNAL_REDIRECTION = 1;
		public const uint32 MaxFQDN_Len = 256;
		public const uint32 MaxNetBiosName_Len = 16;
		public const uint32 MaxNumOfExposed_IPs = 12;
		public const uint32 MaxUserName_Len = 104;
		public const uint32 MaxDomainName_Len = 256;
		public const uint32 MaxFarm_Len = 256;
		public const uint32 MaxAppName_Len = 256;
		public const uint32 WKS_FLAG_CLEAR_CREDS_ON_LAST_RESOURCE = 1;
		public const uint32 WKS_FLAG_PASSWORD_ENCRYPTED = 2;
		public const uint32 WKS_FLAG_CREDS_AUTHENTICATED = 4;
		public const uint32 SB_SYNCH_CONFLICT_MAX_WRITE_ATTEMPTS = 100;
		public const uint32 ACQUIRE_TARGET_LOCK_TIMEOUT = 300000;
		public const uint32 RENDER_HINT_CLEAR = 0;
		public const uint32 RENDER_HINT_VIDEO = 1;
		public const uint32 RENDER_HINT_MAPPEDWINDOW = 2;
		public const uint32 TS_VC_LISTENER_STATIC_CHANNEL = 1;
		public const uint32 WRdsGraphicsChannels_LossyChannelMaxMessageSize = 988;
		public const uint32 RFX_RDP_MSG_PREFIX = 0;
		public const uint32 RFX_GFX_MSG_PREFIX = 48;
		public const uint32 RFX_GFX_MSG_PREFIX_MASK = 48;
		public const uint32 RFX_GFX_MAX_SUPPORTED_MONITORS = 16;
		public const uint32 RFX_CLIENT_ID_LENGTH = 32;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_CONNECT = 701;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DISCONNECT = 702;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RECONNECT = 703;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DELETE_SAVED_CREDENTIALS = 704;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_UPDATE_SESSION_DISPLAYSETTINGS = 705;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_ATTACH_EVENT = 706;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_DETACH_EVENT = 707;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_SETTINGS = 710;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_ACTIONS = 711;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCH_POINTER = 712;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_SET_RDPPROPERTY = 720;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_GET_RDPPROPERTY = 721;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_APPLY_SETTINGS = 722;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RETRIEVE_SETTINGS = 723;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_SUSPEND_SCREEN_UPDATES = 730;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_RESUME_SCREEN_UPDATES = 731;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_EXECUTE_REMOTE_ACTION = 732;
		public const uint32 DISPID_METHOD_REMOTEDESKTOPCLIENT_GET_SNAPSHOT = 733;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_ENABLED = 740;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_EVENTSENABLED = 741;
		public const uint32 DISPID_PROP_REMOTEDESKTOPCLIENT_TOUCHPOINTER_POINTERSPEED = 742;
		public const uint32 DISPID_AX_CONNECTING = 750;
		public const uint32 DISPID_AX_CONNECTED = 751;
		public const uint32 DISPID_AX_LOGINCOMPLETED = 752;
		public const uint32 DISPID_AX_DISCONNECTED = 753;
		public const uint32 DISPID_AX_STATUSCHANGED = 754;
		public const uint32 DISPID_AX_AUTORECONNECTING = 755;
		public const uint32 DISPID_AX_AUTORECONNECTED = 756;
		public const uint32 DISPID_AX_DIALOGDISPLAYING = 757;
		public const uint32 DISPID_AX_DIALOGDISMISSED = 758;
		public const uint32 DISPID_AX_NETWORKSTATUSCHANGED = 759;
		public const uint32 DISPID_AX_ADMINMESSAGERECEIVED = 760;
		public const uint32 DISPID_AX_KEYCOMBINATIONPRESSED = 761;
		public const uint32 DISPID_AX_REMOTEDESKTOPSIZECHANGED = 762;
		public const uint32 DISPID_AX_TOUCHPOINTERCURSORMOVED = 800;
		public const Guid RDCLIENT_BITMAP_RENDER_SERVICE = .(0xe4cc08cb, 0x942e, 0x4b19, 0x85, 0x04, 0xbd, 0x5a, 0x89, 0xa7, 0x47, 0xf5);
		public const Guid WTS_QUERY_ALLOWED_INITIAL_APP = .(0xc77d1b30, 0x5be1, 0x4c6b, 0xa0, 0xe1, 0xbd, 0x6d, 0x2e, 0x5c, 0x9f, 0xcc);
		public const Guid WTS_QUERY_LOGON_SCREEN_SIZE = .(0x8b8e0fe7, 0x0804, 0x4a0e, 0xb2, 0x79, 0x86, 0x60, 0xb1, 0xdf, 0x00, 0x49);
		public const Guid WTS_QUERY_AUDIOENUM_DLL = .(0x9bf4fa97, 0xc883, 0x4c2a, 0x80, 0xab, 0x5a, 0x39, 0xc9, 0xaf, 0x00, 0xdb);
		public const Guid WTS_QUERY_MF_FORMAT_SUPPORT = .(0x41869ad0, 0x6332, 0x4dc8, 0x95, 0xd5, 0xdb, 0x74, 0x9e, 0x2f, 0x1d, 0x94);
		public const Guid WRDS_SERVICE_ID_GRAPHICS_GUID = .(0xd2993f4d, 0x02cf, 0x4280, 0x8c, 0x48, 0x16, 0x24, 0xb4, 0x4f, 0x87, 0x06);
		public const Guid PROPERTY_DYNAMIC_TIME_ZONE_INFORMATION = .(0x0cdfd28e, 0xd0b9, 0x4c1f, 0xa5, 0xeb, 0x6d, 0x1f, 0x6c, 0x65, 0x35, 0xb9);
		public const Guid PROPERTY_TYPE_GET_FAST_RECONNECT = .(0x6212d757, 0x0043, 0x4862, 0x99, 0xc3, 0x9f, 0x30, 0x59, 0xac, 0x2a, 0x3b);
		public const Guid PROPERTY_TYPE_GET_FAST_RECONNECT_USER_SID = .(0x197c427a, 0x0135, 0x4b6d, 0x9c, 0x5e, 0xe6, 0x57, 0x9a, 0x0a, 0xb6, 0x25);
		public const Guid PROPERTY_TYPE_ENABLE_UNIVERSAL_APPS_FOR_CUSTOM_SHELL = .(0xed2c3fda, 0x338d, 0x4d3f, 0x81, 0xa3, 0xe7, 0x67, 0x31, 0x0d, 0x90, 0x8e);
		public const Guid CONNECTION_PROPERTY_IDLE_TIME_WARNING = .(0x693f7ff5, 0x0c4e, 0x4d17, 0xb8, 0xe0, 0x1f, 0x70, 0x32, 0x5e, 0x5d, 0x58);
		public const Guid CONNECTION_PROPERTY_CURSOR_BLINK_DISABLED = .(0x4b150580, 0xfea4, 0x4d3c, 0x9d, 0xe4, 0x74, 0x33, 0xa6, 0x66, 0x18, 0xf7);
		
		// --- Typedefs ---
		
		public typealias HwtsVirtualChannelHandle = int;
		
		// --- Enums ---
		
		public enum AE_POSITION_FLAGS : int32
		{
			INVALID = 0,
			DISCONTINUOUS = 1,
			CONTINUOUS = 2,
			QPC_ERROR = 4,
		}
		public enum AAAuthSchemes : int32
		{
			MIN = 0,
			BASIC = 1,
			NTLM = 2,
			SC = 3,
			LOGGEDONCREDENTIALS = 4,
			NEGOTIATE = 5,
			ANY = 6,
			COOKIE = 7,
			DIGEST = 8,
			ORGID = 9,
			CONID = 10,
			SSPI_NTLM = 11,
			MAX = 12,
		}
		public enum AAAccountingDataType : int32
		{
			MAIN_SESSION_CREATION = 0,
			SUB_SESSION_CREATION = 1,
			SUB_SESSION_CLOSED = 2,
			MAIN_SESSION_CLOSED = 3,
		}
		public enum SESSION_TIMEOUT_ACTION_TYPE : int32
		{
			DISCONNECT = 0,
			SILENT_REAUTH = 1,
		}
		public enum PolicyAttributeType : int32
		{
			EnableAllRedirections = 0,
			DisableAllRedirections = 1,
			DriveRedirectionDisabled = 2,
			PrinterRedirectionDisabled = 3,
			PortRedirectionDisabled = 4,
			ClipboardRedirectionDisabled = 5,
			PnpRedirectionDisabled = 6,
			AllowOnlySDRServers = 7,
		}
		public enum AATrustClassID : int32
		{
			UNTRUSTED = 0,
			TRUSTEDUSER_UNTRUSTEDCLIENT = 1,
			TRUSTEDUSER_TRUSTEDCLIENT = 2,
		}
		public enum WTS_CONNECTSTATE_CLASS : int32
		{
			Active = 0,
			Connected = 1,
			ConnectQuery = 2,
			Shadow = 3,
			Disconnected = 4,
			Idle = 5,
			Listen = 6,
			Reset = 7,
			Down = 8,
			Init = 9,
		}
		public enum WTS_INFO_CLASS : int32
		{
			InitialProgram = 0,
			ApplicationName = 1,
			WorkingDirectory = 2,
			OEMId = 3,
			SessionId = 4,
			UserName = 5,
			WinStationName = 6,
			DomainName = 7,
			ConnectState = 8,
			ClientBuildNumber = 9,
			ClientName = 10,
			ClientDirectory = 11,
			ClientProductId = 12,
			ClientHardwareId = 13,
			ClientAddress = 14,
			ClientDisplay = 15,
			ClientProtocolType = 16,
			IdleTime = 17,
			LogonTime = 18,
			IncomingBytes = 19,
			OutgoingBytes = 20,
			IncomingFrames = 21,
			OutgoingFrames = 22,
			ClientInfo = 23,
			SessionInfo = 24,
			SessionInfoEx = 25,
			ConfigInfo = 26,
			ValidationInfo = 27,
			SessionAddressV4 = 28,
			IsRemoteSession = 29,
		}
		public enum WTS_CONFIG_CLASS : int32
		{
			InitialProgram = 0,
			WorkingDirectory = 1,
			fInheritInitialProgram = 2,
			fAllowLogonTerminalServer = 3,
			TimeoutSettingsConnections = 4,
			TimeoutSettingsDisconnections = 5,
			TimeoutSettingsIdle = 6,
			fDeviceClientDrives = 7,
			fDeviceClientPrinters = 8,
			fDeviceClientDefaultPrinter = 9,
			BrokenTimeoutSettings = 10,
			ReconnectSettings = 11,
			ModemCallbackSettings = 12,
			ModemCallbackPhoneNumber = 13,
			ShadowingSettings = 14,
			TerminalServerProfilePath = 15,
			TerminalServerHomeDir = 16,
			TerminalServerHomeDirDrive = 17,
			fTerminalServerRemoteHomeDir = 18,
			User = 19,
		}
		public enum WTS_CONFIG_SOURCE : int32
		{
			WTSUserConfigSourceSAM = 0,
		}
		public enum WTS_VIRTUAL_CLASS : int32
		{
			ClientData = 0,
			FileHandle = 1,
		}
		public enum WTS_TYPE_CLASS : int32
		{
			ProcessInfoLevel0 = 0,
			ProcessInfoLevel1 = 1,
			SessionInfoLevel1 = 2,
		}
		public enum WTSSBX_MACHINE_DRAIN : int32
		{
			UNSPEC = 0,
			OFF = 1,
			ON = 2,
		}
		public enum WTSSBX_MACHINE_SESSION_MODE : int32
		{
			UNSPEC = 0,
			SINGLE = 1,
			MULTIPLE = 2,
		}
		public enum WTSSBX_ADDRESS_FAMILY : int32
		{
			UNSPEC = 0,
			INET = 1,
			INET6 = 2,
			IPX = 3,
			NETBIOS = 4,
		}
		public enum WTSSBX_MACHINE_STATE : int32
		{
			UNSPEC = 0,
			READY = 1,
			SYNCHRONIZING = 2,
		}
		public enum WTSSBX_SESSION_STATE : int32
		{
			UNSPEC = 0,
			ACTIVE = 1,
			DISCONNECTED = 2,
		}
		public enum WTSSBX_NOTIFICATION_TYPE : int32
		{
			REMOVED = 1,
			CHANGED = 2,
			ADDED = 4,
			RESYNC = 8,
		}
		public enum TSSD_AddrV46Type : int32
		{
			UNDEFINED = 0,
			IPv4 = 4,
			IPv6 = 6,
		}
		public enum TSSB_NOTIFICATION_TYPE : int32
		{
			INVALID = 0,
			TARGET_CHANGE = 1,
			SESSION_CHANGE = 2,
			CONNECTION_REQUEST_CHANGE = 4,
		}
		public enum TARGET_STATE : int32
		{
			UNKNOWN = 1,
			INITIALIZING = 2,
			RUNNING = 3,
			DOWN = 4,
			HIBERNATED = 5,
			CHECKED_OUT = 6,
			STOPPED = 7,
			INVALID = 8,
			STARTING = 9,
			STOPPING = 10,
			MAXSTATE = 11,
		}
		public enum TARGET_CHANGE_TYPE : int32
		{
			CHANGE_UNSPEC = 1,
			EXTERNALIP_CHANGED = 2,
			INTERNALIP_CHANGED = 4,
			JOINED = 8,
			REMOVED = 16,
			STATE_CHANGED = 32,
			IDLE = 64,
			PENDING = 128,
			INUSE = 256,
			PATCH_STATE_CHANGED = 512,
			FARM_MEMBERSHIP_CHANGED = 1024,
		}
		public enum TARGET_TYPE : int32
		{
			UNKNOWN = 0,
			FARM = 1,
			NONFARM = 2,
		}
		public enum TARGET_PATCH_STATE : int32
		{
			UNKNOWN = 0,
			NOT_STARTED = 1,
			IN_PROGRESS = 2,
			COMPLETED = 3,
			FAILED = 4,
		}
		public enum CLIENT_MESSAGE_TYPE : int32
		{
			INVALID = 0,
			STATUS = 1,
			ERROR = 2,
		}
		public enum CONNECTION_CHANGE_NOTIFICATION : int32
		{
			INVALID = 0,
			PENDING = 1,
			FAILED = 2,
			TIMEDOUT = 3,
			SUCCEEDED = 4,
			CANCELLED = 5,
			LB_COMPLETED = 6,
			QUERY_PL_COMPLETED = 7,
			ORCH_COMPLETED = 8,
		}
		public enum RD_FARM_TYPE : int32
		{
			RDSH = 0,
			TEMP_VM = 1,
			MANUAL_PERSONAL_VM = 2,
			AUTO_PERSONAL_VM = 3,
			MANUAL_PERSONAL_RDSH = 4,
			AUTO_PERSONAL_RDSH = 5,
			TYPE_UNKNOWN = -1,
		}
		public enum PLUGIN_TYPE : int32
		{
			UNKNOWN_PLUGIN = 0,
			POLICY_PLUGIN = 1,
			RESOURCE_PLUGIN = 2,
			LOAD_BALANCING_PLUGIN = 4,
			PLACEMENT_PLUGIN = 8,
			ORCHESTRATION_PLUGIN = 16,
			PROVISIONING_PLUGIN = 32,
			TASK_PLUGIN = 64,
		}
		public enum TSSESSION_STATE : int32
		{
			INVALID = -1,
			ACTIVE = 0,
			CONNECTED = 1,
			CONNECTQUERY = 2,
			SHADOW = 3,
			DISCONNECTED = 4,
			IDLE = 5,
			LISTEN = 6,
			RESET = 7,
			DOWN = 8,
			INIT = 9,
			MAX = 10,
		}
		public enum TARGET_OWNER : int32
		{
			UNKNOWN = 0,
			MS_TS_PLUGIN = 1,
			MS_VM_PLUGIN = 2,
		}
		public enum VM_NOTIFY_STATUS : int32
		{
			PENDING = 0,
			IN_PROGRESS = 1,
			COMPLETE = 2,
			FAILED = 3,
			CANCELED = 4,
		}
		public enum VM_HOST_NOTIFY_STATUS : int32
		{
			PENDING = 0,
			IN_PROGRESS = 1,
			COMPLETE = 2,
			FAILED = 3,
		}
		public enum RDV_TASK_STATUS : int32
		{
			UNKNOWN = 0,
			SEARCHING = 1,
			DOWNLOADING = 2,
			APPLYING = 3,
			REBOOTING = 4,
			REBOOTED = 5,
			SUCCESS = 6,
			FAILED = 7,
			TIMEOUT = 8,
		}
		public enum TS_SB_SORT_BY : int32
		{
			NONE = 0,
			NAME = 1,
			PROP = 2,
		}
		public enum TSPUB_PLUGIN_PD_RESOLUTION_TYPE : int32
		{
			OR_CREATE = 0,
			EXISTING = 1,
		}
		public enum TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE : int32
		{
			NEW = 0,
			EXISTING = 1,
		}
		public enum WRdsGraphicsChannelType : int32
		{
			GuaranteedDelivery = 0,
			BestEffortDelivery = 1,
		}
		public enum WTS_RCM_SERVICE_STATE : int32
		{
			NONE = 0,
			START = 1,
			STOP = 2,
		}
		public enum WTS_RCM_DRAIN_STATE : int32
		{
			STATE_NONE = 0,
			IN_DRAIN = 1,
			NOT_IN_DRAIN = 2,
		}
		public enum WTS_LOGON_ERROR_REDIRECTOR_RESPONSE : int32
		{
			INVALID = 0,
			NOT_HANDLED = 1,
			HANDLED_SHOW = 2,
			HANDLED_DONT_SHOW = 3,
			HANDLED_DONT_SHOW_START_OVER = 4,
		}
		public enum WTS_CERT_TYPE : int32
		{
			INVALID = 0,
			PROPRIETORY = 1,
			X509 = 2,
		}
		public enum WRDS_CONNECTION_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum WRDS_LISTENER_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum WRDS_SETTING_TYPE : int32
		{
			INVALID = 0,
			MACHINE = 1,
			USER = 2,
			SAM = 3,
		}
		public enum WRDS_SETTING_STATUS : int32
		{
			NOTAPPLICABLE = -1,
			DISABLED = 0,
			ENABLED = 1,
			NOTCONFIGURED = 2,
		}
		public enum WRDS_SETTING_LEVEL : int32
		{
			INVALID = 0,
			_1 = 1,
		}
		public enum PasswordEncodingType : int32
		{
			_8 = 0,
			_16LE = 1,
			_16BE = 2,
		}
		public enum RemoteActionType : int32
		{
			Charms = 0,
			Appbar = 1,
			Snap = 2,
			StartScreen = 3,
			AppSwitch = 4,
		}
		public enum SnapshotEncodingType : int32
		{
			SnapshotEncodingDataUri = 0,
		}
		public enum SnapshotFormatType : int32
		{
			Png = 0,
			Jpeg = 1,
			Bmp = 2,
		}
		public enum KeyCombinationType : int32
		{
			Home = 0,
			Left = 1,
			Up = 2,
			Right = 3,
			Down = 4,
			Scroll = 5,
		}
		
		// --- Function Pointers ---
		
		public function void PCHANNEL_INIT_EVENT_FN(void* pInitHandle, uint32 event, void* pData, uint32 dataLength);
		public function void PCHANNEL_OPEN_EVENT_FN(uint32 openHandle, uint32 event, void* pData, uint32 dataLength, uint32 totalLength, uint32 dataFlags);
		public function uint32 PVIRTUALCHANNELINIT(void** ppInitHandle, CHANNEL_DEF* pChannel, int32 channelCount, uint32 versionRequested, PCHANNEL_INIT_EVENT_FN pChannelInitEventProc);
		public function uint32 PVIRTUALCHANNELOPEN(void* pInitHandle, uint32* pOpenHandle, PSTR pChannelName, PCHANNEL_OPEN_EVENT_FN pChannelOpenEventProc);
		public function uint32 PVIRTUALCHANNELCLOSE(uint32 openHandle);
		public function uint32 PVIRTUALCHANNELWRITE(uint32 openHandle, void* pData, uint32 dataLength, void* pUserData);
		public function BOOL PVIRTUALCHANNELENTRY(CHANNEL_ENTRY_POINTS* pEntryPoints);
		
		// --- Structs ---
		
		[CRepr]
		public struct AE_CURRENT_POSITION
		{
			public uint64 u64DevicePosition;
			public uint64 u64StreamPosition;
			public uint64 u64PaddingFrames;
			public int64 hnsQPCPosition;
			public float f32FramesPerSecond;
			public AE_POSITION_FLAGS Flag;
		}
		[CRepr]
		public struct AAAccountingData
		{
			public BSTR userName;
			public BSTR clientName;
			public AAAuthSchemes authType;
			public BSTR resourceName;
			public int32 portNumber;
			public BSTR protocolName;
			public int32 numberOfBytesReceived;
			public int32 numberOfBytesTransfered;
			public BSTR reasonForDisconnect;
			public Guid mainSessionId;
			public int32 subSessionId;
		}
		[CRepr]
		public struct WTS_SERVER_INFOW
		{
			public PWSTR pServerName;
		}
		[CRepr]
		public struct WTS_SERVER_INFOA
		{
			public PSTR pServerName;
		}
		[CRepr]
		public struct WTS_SESSION_INFOW
		{
			public uint32 SessionId;
			public PWSTR pWinStationName;
			public WTS_CONNECTSTATE_CLASS State;
		}
		[CRepr]
		public struct WTS_SESSION_INFOA
		{
			public uint32 SessionId;
			public PSTR pWinStationName;
			public WTS_CONNECTSTATE_CLASS State;
		}
		[CRepr]
		public struct WTS_SESSION_INFO_1W
		{
			public uint32 ExecEnvId;
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public PWSTR pSessionName;
			public PWSTR pHostName;
			public PWSTR pUserName;
			public PWSTR pDomainName;
			public PWSTR pFarmName;
		}
		[CRepr]
		public struct WTS_SESSION_INFO_1A
		{
			public uint32 ExecEnvId;
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public PSTR pSessionName;
			public PSTR pHostName;
			public PSTR pUserName;
			public PSTR pDomainName;
			public PSTR pFarmName;
		}
		[CRepr]
		public struct WTS_PROCESS_INFOW
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public PWSTR pProcessName;
			public PSID pUserSid;
		}
		[CRepr]
		public struct WTS_PROCESS_INFOA
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public PSTR pProcessName;
			public PSID pUserSid;
		}
		[CRepr]
		public struct WTSCONFIGINFOW
		{
			public uint32 version;
			public uint32 fConnectClientDrivesAtLogon;
			public uint32 fConnectPrinterAtLogon;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 ShadowSettings;
			public char16[21] LogonUserName;
			public char16[18] LogonDomain;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
			public char16[261] ApplicationName;
		}
		[CRepr]
		public struct WTSCONFIGINFOA
		{
			public uint32 version;
			public uint32 fConnectClientDrivesAtLogon;
			public uint32 fConnectPrinterAtLogon;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 ShadowSettings;
			public CHAR[21] LogonUserName;
			public CHAR[18] LogonDomain;
			public CHAR[261] WorkDirectory;
			public CHAR[261] InitialProgram;
			public CHAR[261] ApplicationName;
		}
		[CRepr]
		public struct WTSINFOW
		{
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
			public char16[32] WinStationName;
			public char16[17] Domain;
			public char16[21] UserName;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER CurrentTime;
		}
		[CRepr]
		public struct WTSINFOA
		{
			public WTS_CONNECTSTATE_CLASS State;
			public uint32 SessionId;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBy;
			public CHAR[32] WinStationName;
			public CHAR[17] Domain;
			public CHAR[21] UserName;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER CurrentTime;
		}
		[CRepr]
		public struct WTSINFOEX_LEVEL1_W
		{
			public uint32 SessionId;
			public WTS_CONNECTSTATE_CLASS SessionState;
			public int32 SessionFlags;
			public char16[33] WinStationName;
			public char16[21] UserName;
			public char16[18] DomainName;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER CurrentTime;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
		}
		[CRepr]
		public struct WTSINFOEX_LEVEL1_A
		{
			public uint32 SessionId;
			public WTS_CONNECTSTATE_CLASS SessionState;
			public int32 SessionFlags;
			public CHAR[33] WinStationName;
			public CHAR[21] UserName;
			public CHAR[18] DomainName;
			public LARGE_INTEGER LogonTime;
			public LARGE_INTEGER ConnectTime;
			public LARGE_INTEGER DisconnectTime;
			public LARGE_INTEGER LastInputTime;
			public LARGE_INTEGER CurrentTime;
			public uint32 IncomingBytes;
			public uint32 OutgoingBytes;
			public uint32 IncomingFrames;
			public uint32 OutgoingFrames;
			public uint32 IncomingCompressedBytes;
			public uint32 OutgoingCompressedBytes;
		}
		[CRepr, Union]
		public struct WTSINFOEX_LEVEL_W
		{
			public WTSINFOEX_LEVEL1_W WTSInfoExLevel1;
		}
		[CRepr, Union]
		public struct WTSINFOEX_LEVEL_A
		{
			public WTSINFOEX_LEVEL1_A WTSInfoExLevel1;
		}
		[CRepr]
		public struct WTSINFOEXW
		{
			public uint32 Level;
			public WTSINFOEX_LEVEL_W Data;
		}
		[CRepr]
		public struct WTSINFOEXA
		{
			public uint32 Level;
			public WTSINFOEX_LEVEL_A Data;
		}
		[CRepr]
		public struct WTSCLIENTW
		{
			public char16[21] ClientName;
			public char16[18] Domain;
			public char16[21] UserName;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
			public uint8 EncryptionLevel;
			public uint32 ClientAddressFamily;
			public uint16[31] ClientAddress;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public char16[261] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint32 ClientHardwareId;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public char16[261] DeviceId;
		}
		[CRepr]
		public struct WTSCLIENTA
		{
			public CHAR[21] ClientName;
			public CHAR[18] Domain;
			public CHAR[21] UserName;
			public CHAR[261] WorkDirectory;
			public CHAR[261] InitialProgram;
			public uint8 EncryptionLevel;
			public uint32 ClientAddressFamily;
			public uint16[31] ClientAddress;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public CHAR[261] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint32 ClientHardwareId;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public CHAR[261] DeviceId;
		}
		[CRepr]
		public struct _WTS_PRODUCT_INFOA
		{
			public CHAR[256] CompanyName;
			public CHAR[4] ProductID;
		}
		[CRepr]
		public struct _WTS_PRODUCT_INFOW
		{
			public char16[256] CompanyName;
			public char16[4] ProductID;
		}
		[CRepr]
		public struct WTS_VALIDATION_INFORMATIONA
		{
			public _WTS_PRODUCT_INFOA ProductInfo;
			public uint8[16384] License;
			public uint32 LicenseLength;
			public uint8[20] HardwareID;
			public uint32 HardwareIDLength;
		}
		[CRepr]
		public struct WTS_VALIDATION_INFORMATIONW
		{
			public _WTS_PRODUCT_INFOW ProductInfo;
			public uint8[16384] License;
			public uint32 LicenseLength;
			public uint8[20] HardwareID;
			public uint32 HardwareIDLength;
		}
		[CRepr]
		public struct WTS_CLIENT_ADDRESS
		{
			public uint32 AddressFamily;
			public uint8[20] Address;
		}
		[CRepr]
		public struct WTS_CLIENT_DISPLAY
		{
			public uint32 HorizontalResolution;
			public uint32 VerticalResolution;
			public uint32 ColorDepth;
		}
		[CRepr]
		public struct WTSUSERCONFIGA
		{
			public uint32 Source;
			public uint32 InheritInitialProgram;
			public uint32 AllowLogonTerminalServer;
			public uint32 TimeoutSettingsConnections;
			public uint32 TimeoutSettingsDisconnections;
			public uint32 TimeoutSettingsIdle;
			public uint32 DeviceClientDrives;
			public uint32 DeviceClientPrinters;
			public uint32 ClientDefaultPrinter;
			public uint32 BrokenTimeoutSettings;
			public uint32 ReconnectSettings;
			public uint32 ShadowingSettings;
			public uint32 TerminalServerRemoteHomeDir;
			public CHAR[261] InitialProgram;
			public CHAR[261] WorkDirectory;
			public CHAR[261] TerminalServerProfilePath;
			public CHAR[261] TerminalServerHomeDir;
			public CHAR[4] TerminalServerHomeDirDrive;
		}
		[CRepr]
		public struct WTSUSERCONFIGW
		{
			public uint32 Source;
			public uint32 InheritInitialProgram;
			public uint32 AllowLogonTerminalServer;
			public uint32 TimeoutSettingsConnections;
			public uint32 TimeoutSettingsDisconnections;
			public uint32 TimeoutSettingsIdle;
			public uint32 DeviceClientDrives;
			public uint32 DeviceClientPrinters;
			public uint32 ClientDefaultPrinter;
			public uint32 BrokenTimeoutSettings;
			public uint32 ReconnectSettings;
			public uint32 ShadowingSettings;
			public uint32 TerminalServerRemoteHomeDir;
			public char16[261] InitialProgram;
			public char16[261] WorkDirectory;
			public char16[261] TerminalServerProfilePath;
			public char16[261] TerminalServerHomeDir;
			public char16[4] TerminalServerHomeDirDrive;
		}
		[CRepr]
		public struct WTS_SESSION_ADDRESS
		{
			public uint32 AddressFamily;
			public uint8[20] Address;
		}
		[CRepr]
		public struct WTS_PROCESS_INFO_EXW
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public PWSTR pProcessName;
			public PSID pUserSid;
			public uint32 NumberOfThreads;
			public uint32 HandleCount;
			public uint32 PagefileUsage;
			public uint32 PeakPagefileUsage;
			public uint32 WorkingSetSize;
			public uint32 PeakWorkingSetSize;
			public LARGE_INTEGER UserTime;
			public LARGE_INTEGER KernelTime;
		}
		[CRepr]
		public struct WTS_PROCESS_INFO_EXA
		{
			public uint32 SessionId;
			public uint32 ProcessId;
			public PSTR pProcessName;
			public PSID pUserSid;
			public uint32 NumberOfThreads;
			public uint32 HandleCount;
			public uint32 PagefileUsage;
			public uint32 PeakPagefileUsage;
			public uint32 WorkingSetSize;
			public uint32 PeakWorkingSetSize;
			public LARGE_INTEGER UserTime;
			public LARGE_INTEGER KernelTime;
		}
		[CRepr]
		public struct WTSLISTENERCONFIGW
		{
			public uint32 version;
			public uint32 fEnableListener;
			public uint32 MaxConnectionCount;
			public uint32 fPromptForPassword;
			public uint32 fInheritColorDepth;
			public uint32 ColorDepth;
			public uint32 fInheritBrokenTimeoutSettings;
			public uint32 BrokenTimeoutSettings;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDriveRedirection;
			public uint32 fDisableComPortRedirection;
			public uint32 fDisableLPTPortRedirection;
			public uint32 fDisableClipboardRedirection;
			public uint32 fDisableAudioRedirection;
			public uint32 fDisablePNPRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 LanAdapter;
			public uint32 PortNumber;
			public uint32 fInheritShadowSettings;
			public uint32 ShadowSettings;
			public uint32 TimeoutSettingsConnection;
			public uint32 TimeoutSettingsDisconnection;
			public uint32 TimeoutSettingsIdle;
			public uint32 SecurityLayer;
			public uint32 MinEncryptionLevel;
			public uint32 UserAuthentication;
			public char16[61] Comment;
			public char16[21] LogonUserName;
			public char16[18] LogonDomain;
			public char16[261] WorkDirectory;
			public char16[261] InitialProgram;
		}
		[CRepr]
		public struct WTSLISTENERCONFIGA
		{
			public uint32 version;
			public uint32 fEnableListener;
			public uint32 MaxConnectionCount;
			public uint32 fPromptForPassword;
			public uint32 fInheritColorDepth;
			public uint32 ColorDepth;
			public uint32 fInheritBrokenTimeoutSettings;
			public uint32 BrokenTimeoutSettings;
			public uint32 fDisablePrinterRedirection;
			public uint32 fDisableDriveRedirection;
			public uint32 fDisableComPortRedirection;
			public uint32 fDisableLPTPortRedirection;
			public uint32 fDisableClipboardRedirection;
			public uint32 fDisableAudioRedirection;
			public uint32 fDisablePNPRedirection;
			public uint32 fDisableDefaultMainClientPrinter;
			public uint32 LanAdapter;
			public uint32 PortNumber;
			public uint32 fInheritShadowSettings;
			public uint32 ShadowSettings;
			public uint32 TimeoutSettingsConnection;
			public uint32 TimeoutSettingsDisconnection;
			public uint32 TimeoutSettingsIdle;
			public uint32 SecurityLayer;
			public uint32 MinEncryptionLevel;
			public uint32 UserAuthentication;
			public CHAR[61] Comment;
			public CHAR[21] LogonUserName;
			public CHAR[18] LogonDomain;
			public CHAR[261] WorkDirectory;
			public CHAR[261] InitialProgram;
		}
		[CRepr]
		public struct WTSSBX_IP_ADDRESS
		{
			public WTSSBX_ADDRESS_FAMILY AddressFamily;
			public uint8[16] Address;
			public uint16 PortNumber;
			public uint32 dwScope;
		}
		[CRepr]
		public struct WTSSBX_MACHINE_CONNECT_INFO
		{
			public char16[257] wczMachineFQDN;
			public char16[17] wczMachineNetBiosName;
			public uint32 dwNumOfIPAddr;
			public WTSSBX_IP_ADDRESS[12] IPaddr;
		}
		[CRepr]
		public struct WTSSBX_MACHINE_INFO
		{
			public WTSSBX_MACHINE_CONNECT_INFO ClientConnectInfo;
			public char16[257] wczFarmName;
			public WTSSBX_IP_ADDRESS InternalIPAddress;
			public uint32 dwMaxSessionsLimit;
			public uint32 ServerWeight;
			public WTSSBX_MACHINE_SESSION_MODE SingleSessionMode;
			public WTSSBX_MACHINE_DRAIN InDrain;
			public WTSSBX_MACHINE_STATE MachineState;
		}
		[CRepr]
		public struct WTSSBX_SESSION_INFO
		{
			public char16[105] wszUserName;
			public char16[257] wszDomainName;
			public char16[257] ApplicationType;
			public uint32 dwSessionId;
			public FILETIME CreateTime;
			public FILETIME DisconnectTime;
			public WTSSBX_SESSION_STATE SessionState;
		}
		[CRepr]
		public struct CHANNEL_DEF
		{
			public CHAR[8] name;
			public uint32 options;
		}
		[CRepr]
		public struct CHANNEL_PDU_HEADER
		{
			public uint32 length;
			public uint32 flags;
		}
		[CRepr]
		public struct CHANNEL_ENTRY_POINTS
		{
			public uint32 cbSize;
			public uint32 protocolVersion;
			public PVIRTUALCHANNELINIT pVirtualChannelInit;
			public PVIRTUALCHANNELOPEN pVirtualChannelOpen;
			public PVIRTUALCHANNELCLOSE pVirtualChannelClose;
			public PVIRTUALCHANNELWRITE pVirtualChannelWrite;
		}
		[CRepr]
		public struct CLIENT_DISPLAY
		{
			public uint32 HorizontalResolution;
			public uint32 VerticalResolution;
			public uint32 ColorDepth;
		}
		[CRepr]
		public struct TSSD_ConnectionPoint
		{
			public uint8[16] ServerAddressB;
			public TSSD_AddrV46Type AddressType;
			public uint16 PortNumber;
			public uint32 AddressScope;
		}
		[CRepr]
		public struct VM_NOTIFY_ENTRY
		{
			public char16[128] VmName;
			public char16[128] VmHost;
		}
		[CRepr]
		public struct VM_PATCH_INFO
		{
			public uint32 dwNumEntries;
			public PWSTR* pVmNames;
		}
		[CRepr]
		public struct VM_NOTIFY_INFO
		{
			public uint32 dwNumEntries;
			public VM_NOTIFY_ENTRY** ppVmEntries;
		}
		[CRepr]
		public struct pluginResource
		{
			public char16[256] alias;
			public char16[256] name;
			public PWSTR resourceFileContents;
			public char16[256] fileExtension;
			public char16[256] resourcePluginType;
			public uint8 isDiscoverable;
			public int32 resourceType;
			public uint32 pceIconSize;
			public uint8* iconContents;
			public uint32 pcePluginBlobSize;
			public uint8* blobContents;
		}
		[CRepr]
		public struct pluginResource2FileAssociation
		{
			public char16[256] extName;
			public uint8 primaryHandler;
			public uint32 pceIconSize;
			public uint8* iconContents;
		}
		[CRepr]
		public struct pluginResource2
		{
			public pluginResource resourceV1;
			public uint32 pceFileAssocListSize;
			public pluginResource2FileAssociation* fileAssocList;
			public PWSTR securityDescriptor;
			public uint32 pceFolderListSize;
			public uint16** folderList;
		}
		[CRepr]
		public struct BITMAP_RENDERER_STATISTICS
		{
			public uint32 dwFramesDelivered;
			public uint32 dwFramesDropped;
		}
		[CRepr]
		public struct RFX_GFX_RECT
		{
			public int32 left;
			public int32 top;
			public int32 right;
			public int32 bottom;
		}
		[CRepr]
		public struct RFX_GFX_MSG_HEADER
		{
			public uint16 uMSGType;
			public uint16 cbSize;
		}
		[CRepr]
		public struct RFX_GFX_MONITOR_INFO
		{
			public int32 left;
			public int32 top;
			public int32 right;
			public int32 bottom;
			public uint32 physicalWidth;
			public uint32 physicalHeight;
			public uint32 orientation;
			public BOOL primary;
		}
		[CRepr]
		public struct RFX_GFX_MSG_CLIENT_DESKTOP_INFO_REQUEST
		{
			public RFX_GFX_MSG_HEADER channelHdr;
		}
		[CRepr]
		public struct RFX_GFX_MSG_CLIENT_DESKTOP_INFO_RESPONSE
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 reserved;
			public uint32 monitorCount;
			public RFX_GFX_MONITOR_INFO[16] MonitorData;
			public char16[32] clientUniqueId;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_NOTIFY
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 ulWidth;
			public uint32 ulHeight;
			public uint32 ulBpp;
			public uint32 Reserved;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_CONFIRM
		{
			public RFX_GFX_MSG_HEADER channelHdr;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_INPUT_RESET
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 ulWidth;
			public uint32 ulHeight;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DISCONNECT_NOTIFY
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 DisconnectReason;
		}
		[CRepr]
		public struct RFX_GFX_MSG_DESKTOP_RESEND_REQUEST
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public RFX_GFX_RECT RedrawRect;
		}
		[CRepr]
		public struct RFX_GFX_MSG_RDP_DATA
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint8[] rdpData;
		}
		[CRepr]
		public struct WTS_SOCKADDR
		{
			public uint16 sin_family;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public _ipv4_e__Struct ipv4;
				public _ipv6_e__Struct ipv6;
				
				[CRepr]
				public struct _ipv6_e__Struct
				{
					public uint16 sin6_port;
					public uint32 sin6_flowinfo;
					public uint16[8] sin6_addr;
					public uint32 sin6_scope_id;
				}
				[CRepr]
				public struct _ipv4_e__Struct
				{
					public uint16 sin_port;
					public uint32 IN_ADDR;
					public uint8[8] sin_zero;
				}
			}
		}
		[CRepr]
		public struct WTS_SMALL_RECT
		{
			public int16 Left;
			public int16 Top;
			public int16 Right;
			public int16 Bottom;
		}
		[CRepr]
		public struct WTS_SERVICE_STATE
		{
			public WTS_RCM_SERVICE_STATE RcmServiceState;
			public WTS_RCM_DRAIN_STATE RcmDrainState;
		}
		[CRepr]
		public struct WTS_SESSION_ID
		{
			public Guid SessionUniqueGuid;
			public uint32 SessionId;
		}
		[CRepr]
		public struct WTS_USER_CREDENTIAL
		{
			public char16[256] UserName;
			public char16[256] Password;
			public char16[256] Domain;
		}
		[CRepr]
		public struct WTS_SYSTEMTIME
		{
			public uint16 wYear;
			public uint16 wMonth;
			public uint16 wDayOfWeek;
			public uint16 wDay;
			public uint16 wHour;
			public uint16 wMinute;
			public uint16 wSecond;
			public uint16 wMilliseconds;
		}
		[CRepr]
		public struct WTS_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public WTS_SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public WTS_SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
		}
		[CRepr]
		public struct WRDS_DYNAMIC_TIME_ZONE_INFORMATION
		{
			public int32 Bias;
			public char16[32] StandardName;
			public WTS_SYSTEMTIME StandardDate;
			public int32 StandardBias;
			public char16[32] DaylightName;
			public WTS_SYSTEMTIME DaylightDate;
			public int32 DaylightBias;
			public char16[128] TimeZoneKeyName;
			public uint16 DynamicDaylightTimeDisabled;
		}
		[CRepr]
		public struct WTS_CLIENT_DATA
		{
			public BOOLEAN fDisableCtrlAltDel;
			public BOOLEAN fDoubleClickDetect;
			public BOOLEAN fEnableWindowsKey;
			public BOOLEAN fHideTitleBar;
			public BOOL fInheritAutoLogon;
			public BOOLEAN fPromptForPassword;
			public BOOLEAN fUsingSavedCreds;
			public char16[256] Domain;
			public char16[256] UserName;
			public char16[256] Password;
			public BOOLEAN fPasswordIsScPin;
			public BOOL fInheritInitialProgram;
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public BOOLEAN fMaximizeShell;
			public uint8 EncryptionLevel;
			public uint32 PerformanceFlags;
			public char16[9] ProtocolName;
			public uint16 ProtocolType;
			public BOOL fInheritColorDepth;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ColorDepth;
			public char16[9] DisplayDriverName;
			public char16[20] DisplayDeviceName;
			public BOOLEAN fMouse;
			public uint32 KeyboardLayout;
			public uint32 KeyboardType;
			public uint32 KeyboardSubType;
			public uint32 KeyboardFunctionKey;
			public char16[33] imeFileName;
			public uint32 ActiveInputLocale;
			public BOOLEAN fNoAudioPlayback;
			public BOOLEAN fRemoteConsoleAudio;
			public char16[9] AudioDriverName;
			public WTS_TIME_ZONE_INFORMATION ClientTimeZone;
			public char16[21] ClientName;
			public uint32 SerialNumber;
			public uint32 ClientAddressFamily;
			public char16[31] ClientAddress;
			public WTS_SOCKADDR ClientSockAddress;
			public char16[257] ClientDirectory;
			public uint32 ClientBuildNumber;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public uint32 ClientSessionId;
			public char16[33] ClientDigProductId;
			public BOOLEAN fDisableCpm;
			public BOOLEAN fDisableCdm;
			public BOOLEAN fDisableCcm;
			public BOOLEAN fDisableLPT;
			public BOOLEAN fDisableClip;
			public BOOLEAN fDisablePNP;
		}
		[CRepr]
		public struct WTS_USER_DATA
		{
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public WTS_TIME_ZONE_INFORMATION UserTimeZone;
		}
		[CRepr]
		public struct WTS_POLICY_DATA
		{
			public BOOLEAN fDisableEncryption;
			public BOOLEAN fDisableAutoReconnect;
			public uint32 ColorDepth;
			public uint8 MinEncryptionLevel;
			public BOOLEAN fDisableCpm;
			public BOOLEAN fDisableCdm;
			public BOOLEAN fDisableCcm;
			public BOOLEAN fDisableLPT;
			public BOOLEAN fDisableClip;
			public BOOLEAN fDisablePNPRedir;
		}
		[CRepr]
		public struct WTS_PROTOCOL_CACHE
		{
			public uint32 CacheReads;
			public uint32 CacheHits;
		}
		[CRepr, Union]
		public struct WTS_CACHE_STATS_UN
		{
			public WTS_PROTOCOL_CACHE[4] ProtocolCache;
			public uint32 TShareCacheStats;
			public uint32[20] Reserved;
		}
		[CRepr]
		public struct WTS_CACHE_STATS
		{
			public uint32 Specific;
			public WTS_CACHE_STATS_UN Data;
			public uint16 ProtocolType;
			public uint16 Length;
		}
		[CRepr]
		public struct WTS_PROTOCOL_COUNTERS
		{
			public uint32 WdBytes;
			public uint32 WdFrames;
			public uint32 WaitForOutBuf;
			public uint32 Frames;
			public uint32 Bytes;
			public uint32 CompressedBytes;
			public uint32 CompressFlushes;
			public uint32 Errors;
			public uint32 Timeouts;
			public uint32 AsyncFramingError;
			public uint32 AsyncOverrunError;
			public uint32 AsyncOverflowError;
			public uint32 AsyncParityError;
			public uint32 TdErrors;
			public uint16 ProtocolType;
			public uint16 Length;
			public uint16 Specific;
			public uint32[100] Reserved;
		}
		[CRepr]
		public struct WTS_PROTOCOL_STATUS
		{
			public WTS_PROTOCOL_COUNTERS Output;
			public WTS_PROTOCOL_COUNTERS Input;
			public WTS_CACHE_STATS Cache;
			public uint32 AsyncSignal;
			public uint32 AsyncSignalMask;
			public LARGE_INTEGER[100] Counters;
		}
		[CRepr]
		public struct WTS_DISPLAY_IOCTL
		{
			public uint8[256] pDisplayIOCtlData;
			public uint32 cbDisplayIOCtlData;
		}
		[CRepr]
		public struct WTS_PROPERTY_VALUE
		{
			public uint16 Type;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public uint32 ulVal;
				public _strVal_e__Struct strVal;
				public _bVal_e__Struct bVal;
				public Guid guidVal;
				
				[CRepr]
				public struct _bVal_e__Struct
				{
					public uint32 size;
					public PSTR pbVal;
				}
				[CRepr]
				public struct _strVal_e__Struct
				{
					public uint32 size;
					public PWSTR pstrVal;
				}
			}
		}
		[CRepr]
		public struct WTS_LICENSE_CAPABILITIES
		{
			public uint32 KeyExchangeAlg;
			public uint32 ProtocolVer;
			public BOOL fAuthenticateServer;
			public WTS_CERT_TYPE CertType;
			public uint32 cbClientName;
			public uint8[42] rgbClientName;
		}
		[CRepr]
		public struct WRDS_LISTENER_SETTINGS_1
		{
			public uint32 MaxProtocolListenerConnectionCount;
			public uint32 SecurityDescriptorSize;
			public uint8* pSecurityDescriptor;
		}
		[CRepr, Union]
		public struct WRDS_LISTENER_SETTING
		{
			public WRDS_LISTENER_SETTINGS_1 WRdsListenerSettings1;
		}
		[CRepr]
		public struct WRDS_LISTENER_SETTINGS
		{
			public WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel;
			public WRDS_LISTENER_SETTING WRdsListenerSetting;
		}
		[CRepr]
		public struct WRDS_CONNECTION_SETTINGS_1
		{
			public BOOLEAN fInheritInitialProgram;
			public BOOLEAN fInheritColorDepth;
			public BOOLEAN fHideTitleBar;
			public BOOLEAN fInheritAutoLogon;
			public BOOLEAN fMaximizeShell;
			public BOOLEAN fDisablePNP;
			public BOOLEAN fPasswordIsScPin;
			public BOOLEAN fPromptForPassword;
			public BOOLEAN fDisableCpm;
			public BOOLEAN fDisableCdm;
			public BOOLEAN fDisableCcm;
			public BOOLEAN fDisableLPT;
			public BOOLEAN fDisableClip;
			public BOOLEAN fResetBroken;
			public BOOLEAN fDisableEncryption;
			public BOOLEAN fDisableAutoReconnect;
			public BOOLEAN fDisableCtrlAltDel;
			public BOOLEAN fDoubleClickDetect;
			public BOOLEAN fEnableWindowsKey;
			public BOOLEAN fUsingSavedCreds;
			public BOOLEAN fMouse;
			public BOOLEAN fNoAudioPlayback;
			public BOOLEAN fRemoteConsoleAudio;
			public uint8 EncryptionLevel;
			public uint16 ColorDepth;
			public uint16 ProtocolType;
			public uint16 HRes;
			public uint16 VRes;
			public uint16 ClientProductId;
			public uint16 OutBufCountHost;
			public uint16 OutBufCountClient;
			public uint16 OutBufLength;
			public uint32 KeyboardLayout;
			public uint32 MaxConnectionTime;
			public uint32 MaxDisconnectionTime;
			public uint32 MaxIdleTime;
			public uint32 PerformanceFlags;
			public uint32 KeyboardType;
			public uint32 KeyboardSubType;
			public uint32 KeyboardFunctionKey;
			public uint32 ActiveInputLocale;
			public uint32 SerialNumber;
			public uint32 ClientAddressFamily;
			public uint32 ClientBuildNumber;
			public uint32 ClientSessionId;
			public char16[257] WorkDirectory;
			public char16[257] InitialProgram;
			public char16[256] UserName;
			public char16[256] Domain;
			public char16[256] Password;
			public char16[9] ProtocolName;
			public char16[9] DisplayDriverName;
			public char16[20] DisplayDeviceName;
			public char16[33] imeFileName;
			public char16[9] AudioDriverName;
			public char16[21] ClientName;
			public char16[31] ClientAddress;
			public char16[257] ClientDirectory;
			public char16[33] ClientDigProductId;
			public WTS_SOCKADDR ClientSockAddress;
			public WTS_TIME_ZONE_INFORMATION ClientTimeZone;
			public WRDS_LISTENER_SETTINGS WRdsListenerSettings;
			public Guid EventLogActivityId;
			public uint32 ContextSize;
			public uint8* ContextData;
		}
		[CRepr]
		public struct WRDS_SETTINGS_1
		{
			public WRDS_SETTING_STATUS WRdsDisableClipStatus;
			public uint32 WRdsDisableClipValue;
			public WRDS_SETTING_STATUS WRdsDisableLPTStatus;
			public uint32 WRdsDisableLPTValue;
			public WRDS_SETTING_STATUS WRdsDisableCcmStatus;
			public uint32 WRdsDisableCcmValue;
			public WRDS_SETTING_STATUS WRdsDisableCdmStatus;
			public uint32 WRdsDisableCdmValue;
			public WRDS_SETTING_STATUS WRdsDisableCpmStatus;
			public uint32 WRdsDisableCpmValue;
			public WRDS_SETTING_STATUS WRdsDisablePnpStatus;
			public uint32 WRdsDisablePnpValue;
			public WRDS_SETTING_STATUS WRdsEncryptionLevelStatus;
			public uint32 WRdsEncryptionValue;
			public WRDS_SETTING_STATUS WRdsColorDepthStatus;
			public uint32 WRdsColorDepthValue;
			public WRDS_SETTING_STATUS WRdsDisableAutoReconnecetStatus;
			public uint32 WRdsDisableAutoReconnecetValue;
			public WRDS_SETTING_STATUS WRdsDisableEncryptionStatus;
			public uint32 WRdsDisableEncryptionValue;
			public WRDS_SETTING_STATUS WRdsResetBrokenStatus;
			public uint32 WRdsResetBrokenValue;
			public WRDS_SETTING_STATUS WRdsMaxIdleTimeStatus;
			public uint32 WRdsMaxIdleTimeValue;
			public WRDS_SETTING_STATUS WRdsMaxDisconnectTimeStatus;
			public uint32 WRdsMaxDisconnectTimeValue;
			public WRDS_SETTING_STATUS WRdsMaxConnectTimeStatus;
			public uint32 WRdsMaxConnectTimeValue;
			public WRDS_SETTING_STATUS WRdsKeepAliveStatus;
			public BOOLEAN WRdsKeepAliveStartValue;
			public uint32 WRdsKeepAliveIntervalValue;
		}
		[CRepr, Union]
		public struct WRDS_CONNECTION_SETTING
		{
			public WRDS_CONNECTION_SETTINGS_1 WRdsConnectionSettings1;
		}
		[CRepr]
		public struct WRDS_CONNECTION_SETTINGS
		{
			public WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel;
			public WRDS_CONNECTION_SETTING WRdsConnectionSetting;
		}
		[CRepr, Union]
		public struct WRDS_SETTING
		{
			public WRDS_SETTINGS_1 WRdsSettings1;
		}
		[CRepr]
		public struct WRDS_SETTINGS
		{
			public WRDS_SETTING_TYPE WRdsSettingType;
			public WRDS_SETTING_LEVEL WRdsSettingLevel;
			public WRDS_SETTING WRdsSetting;
		}
		[CRepr]
		public struct WTSSESSION_NOTIFICATION
		{
			public uint32 cbSize;
			public uint32 dwSessionId;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_TSUserExInterfaces = .(0x0910dd01, 0xdf8c, 0x11d1, 0xae, 0x27, 0x00, 0xc0, 0x4f, 0xa3, 0x58, 0x13);
		public const Guid CLSID_ADsTSUserEx = .(0xe2e9cae6, 0x1e7b, 0x4b8e, 0xba, 0xbd, 0xe9, 0xbf, 0x62, 0x92, 0xac, 0x29);
		public const Guid CLSID_Workspace = .(0x4f1dfca6, 0x3aad, 0x48e1, 0x84, 0x06, 0x4b, 0xc2, 0x1a, 0x50, 0x1d, 0x7c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAudioEndpoint : IUnknown
		{
			public const new Guid IID = .(0x30a99515, 0x1527, 0x4451, 0xaf, 0x9f, 0x00, 0xc5, 0xf0, 0x23, 0x4d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFrameFormat(WAVEFORMATEX** ppFormat) mut
			{
				return VT.GetFrameFormat(&this, ppFormat);
			}
			public HRESULT GetFramesPerPacket(uint32* pFramesPerPacket) mut
			{
				return VT.GetFramesPerPacket(&this, pFramesPerPacket);
			}
			public HRESULT GetLatency(int64* pLatency) mut
			{
				return VT.GetLatency(&this, pLatency);
			}
			public HRESULT SetStreamFlags(uint32 streamFlags) mut
			{
				return VT.SetStreamFlags(&this, streamFlags);
			}
			public HRESULT SetEventHandle(HANDLE eventHandle) mut
			{
				return VT.SetEventHandle(&this, eventHandle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpoint *self, WAVEFORMATEX** ppFormat) GetFrameFormat;
				public new function HRESULT(IAudioEndpoint *self, uint32* pFramesPerPacket) GetFramesPerPacket;
				public new function HRESULT(IAudioEndpoint *self, int64* pLatency) GetLatency;
				public new function HRESULT(IAudioEndpoint *self, uint32 streamFlags) SetStreamFlags;
				public new function HRESULT(IAudioEndpoint *self, HANDLE eventHandle) SetEventHandle;
			}
		}
		[CRepr]
		public struct IAudioEndpointRT : IUnknown
		{
			public const new Guid IID = .(0xdfd2005f, 0xa6e5, 0x4d39, 0xa2, 0x65, 0x93, 0x9a, 0xda, 0x9f, 0xbb, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetCurrentPadding(int64* pPadding, AE_CURRENT_POSITION* pAeCurrentPosition) mut
			{
				VT.GetCurrentPadding(&this, pPadding, pAeCurrentPosition);
			}
			public void ProcessingComplete() mut
			{
				VT.ProcessingComplete(&this);
			}
			public HRESULT SetPinInactive() mut
			{
				return VT.SetPinInactive(&this);
			}
			public HRESULT SetPinActive() mut
			{
				return VT.SetPinActive(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IAudioEndpointRT *self, int64* pPadding, AE_CURRENT_POSITION* pAeCurrentPosition) GetCurrentPadding;
				public new function void(IAudioEndpointRT *self) ProcessingComplete;
				public new function HRESULT(IAudioEndpointRT *self) SetPinInactive;
				public new function HRESULT(IAudioEndpointRT *self) SetPinActive;
			}
		}
		[CRepr]
		public struct IAudioInputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8026ab61, 0x92b2, 0x43c1, 0xa1, 0xdf, 0x5c, 0x37, 0xeb, 0xd0, 0x8d, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetInputDataPointer(APO_CONNECTION_PROPERTY* pConnectionProperty, AE_CURRENT_POSITION* pAeTimeStamp) mut
			{
				VT.GetInputDataPointer(&this, pConnectionProperty, pAeTimeStamp);
			}
			public void ReleaseInputDataPointer(uint32 u32FrameCount, uint pDataPointer) mut
			{
				VT.ReleaseInputDataPointer(&this, u32FrameCount, pDataPointer);
			}
			public void PulseEndpoint() mut
			{
				VT.PulseEndpoint(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IAudioInputEndpointRT *self, APO_CONNECTION_PROPERTY* pConnectionProperty, AE_CURRENT_POSITION* pAeTimeStamp) GetInputDataPointer;
				public new function void(IAudioInputEndpointRT *self, uint32 u32FrameCount, uint pDataPointer) ReleaseInputDataPointer;
				public new function void(IAudioInputEndpointRT *self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioOutputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8fa906e4, 0xc31c, 0x4e31, 0x93, 0x2e, 0x19, 0xa6, 0x63, 0x85, 0xe9, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint GetOutputDataPointer(uint32 u32FrameCount, AE_CURRENT_POSITION* pAeTimeStamp) mut
			{
				return VT.GetOutputDataPointer(&this, u32FrameCount, pAeTimeStamp);
			}
			public void ReleaseOutputDataPointer(APO_CONNECTION_PROPERTY* pConnectionProperty) mut
			{
				VT.ReleaseOutputDataPointer(&this, pConnectionProperty);
			}
			public void PulseEndpoint() mut
			{
				VT.PulseEndpoint(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint(IAudioOutputEndpointRT *self, uint32 u32FrameCount, AE_CURRENT_POSITION* pAeTimeStamp) GetOutputDataPointer;
				public new function void(IAudioOutputEndpointRT *self, APO_CONNECTION_PROPERTY* pConnectionProperty) ReleaseOutputDataPointer;
				public new function void(IAudioOutputEndpointRT *self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioDeviceEndpoint : IUnknown
		{
			public const new Guid IID = .(0xd4952f5a, 0xa0b2, 0x4cc4, 0x8b, 0x82, 0x93, 0x58, 0x48, 0x8d, 0xd8, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBuffer(int64 MaxPeriod, uint32 u32LatencyCoefficient) mut
			{
				return VT.SetBuffer(&this, MaxPeriod, u32LatencyCoefficient);
			}
			public HRESULT GetRTCaps(BOOL* pbIsRTCapable) mut
			{
				return VT.GetRTCaps(&this, pbIsRTCapable);
			}
			public HRESULT GetEventDrivenCapable(BOOL* pbisEventCapable) mut
			{
				return VT.GetEventDrivenCapable(&this, pbisEventCapable);
			}
			public HRESULT WriteExclusiveModeParametersToSharedMemory(uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, uint32* pu32SharedMemorySize, uint* phSharedMemory) mut
			{
				return VT.WriteExclusiveModeParametersToSharedMemory(&this, hTargetProcess, hnsPeriod, hnsBufferDuration, u32LatencyCoefficient, pu32SharedMemorySize, phSharedMemory);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioDeviceEndpoint *self, int64 MaxPeriod, uint32 u32LatencyCoefficient) SetBuffer;
				public new function HRESULT(IAudioDeviceEndpoint *self, BOOL* pbIsRTCapable) GetRTCaps;
				public new function HRESULT(IAudioDeviceEndpoint *self, BOOL* pbisEventCapable) GetEventDrivenCapable;
				public new function HRESULT(IAudioDeviceEndpoint *self, uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, uint32* pu32SharedMemorySize, uint* phSharedMemory) WriteExclusiveModeParametersToSharedMemory;
			}
		}
		[CRepr]
		public struct IAudioEndpointControl : IUnknown
		{
			public const new Guid IID = .(0xc684b72a, 0x6df4, 0x4774, 0xbd, 0xf9, 0x76, 0xb7, 0x75, 0x09, 0xb6, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointControl *self) Start;
				public new function HRESULT(IAudioEndpointControl *self) Reset;
				public new function HRESULT(IAudioEndpointControl *self) Stop;
			}
		}
		[CRepr]
		public struct IADsTSUserEx : IDispatch
		{
			public const new Guid IID = .(0xc4930e79, 0x2989, 0x4462, 0x8a, 0x60, 0x2f, 0xcf, 0x2f, 0x29, 0x55, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TerminalServicesProfilePath(BSTR* pVal) mut
			{
				return VT.get_TerminalServicesProfilePath(&this, pVal);
			}
			public HRESULT put_TerminalServicesProfilePath(BSTR pNewVal) mut
			{
				return VT.put_TerminalServicesProfilePath(&this, pNewVal);
			}
			public HRESULT get_TerminalServicesHomeDirectory(BSTR* pVal) mut
			{
				return VT.get_TerminalServicesHomeDirectory(&this, pVal);
			}
			public HRESULT put_TerminalServicesHomeDirectory(BSTR pNewVal) mut
			{
				return VT.put_TerminalServicesHomeDirectory(&this, pNewVal);
			}
			public HRESULT get_TerminalServicesHomeDrive(BSTR* pVal) mut
			{
				return VT.get_TerminalServicesHomeDrive(&this, pVal);
			}
			public HRESULT put_TerminalServicesHomeDrive(BSTR pNewVal) mut
			{
				return VT.put_TerminalServicesHomeDrive(&this, pNewVal);
			}
			public HRESULT get_AllowLogon(int32* pVal) mut
			{
				return VT.get_AllowLogon(&this, pVal);
			}
			public HRESULT put_AllowLogon(int32 NewVal) mut
			{
				return VT.put_AllowLogon(&this, NewVal);
			}
			public HRESULT get_EnableRemoteControl(int32* pVal) mut
			{
				return VT.get_EnableRemoteControl(&this, pVal);
			}
			public HRESULT put_EnableRemoteControl(int32 NewVal) mut
			{
				return VT.put_EnableRemoteControl(&this, NewVal);
			}
			public HRESULT get_MaxDisconnectionTime(int32* pVal) mut
			{
				return VT.get_MaxDisconnectionTime(&this, pVal);
			}
			public HRESULT put_MaxDisconnectionTime(int32 NewVal) mut
			{
				return VT.put_MaxDisconnectionTime(&this, NewVal);
			}
			public HRESULT get_MaxConnectionTime(int32* pVal) mut
			{
				return VT.get_MaxConnectionTime(&this, pVal);
			}
			public HRESULT put_MaxConnectionTime(int32 NewVal) mut
			{
				return VT.put_MaxConnectionTime(&this, NewVal);
			}
			public HRESULT get_MaxIdleTime(int32* pVal) mut
			{
				return VT.get_MaxIdleTime(&this, pVal);
			}
			public HRESULT put_MaxIdleTime(int32 NewVal) mut
			{
				return VT.put_MaxIdleTime(&this, NewVal);
			}
			public HRESULT get_ReconnectionAction(int32* pNewVal) mut
			{
				return VT.get_ReconnectionAction(&this, pNewVal);
			}
			public HRESULT put_ReconnectionAction(int32 NewVal) mut
			{
				return VT.put_ReconnectionAction(&this, NewVal);
			}
			public HRESULT get_BrokenConnectionAction(int32* pNewVal) mut
			{
				return VT.get_BrokenConnectionAction(&this, pNewVal);
			}
			public HRESULT put_BrokenConnectionAction(int32 NewVal) mut
			{
				return VT.put_BrokenConnectionAction(&this, NewVal);
			}
			public HRESULT get_ConnectClientDrivesAtLogon(int32* pNewVal) mut
			{
				return VT.get_ConnectClientDrivesAtLogon(&this, pNewVal);
			}
			public HRESULT put_ConnectClientDrivesAtLogon(int32 NewVal) mut
			{
				return VT.put_ConnectClientDrivesAtLogon(&this, NewVal);
			}
			public HRESULT get_ConnectClientPrintersAtLogon(int32* pVal) mut
			{
				return VT.get_ConnectClientPrintersAtLogon(&this, pVal);
			}
			public HRESULT put_ConnectClientPrintersAtLogon(int32 NewVal) mut
			{
				return VT.put_ConnectClientPrintersAtLogon(&this, NewVal);
			}
			public HRESULT get_DefaultToMainPrinter(int32* pVal) mut
			{
				return VT.get_DefaultToMainPrinter(&this, pVal);
			}
			public HRESULT put_DefaultToMainPrinter(int32 NewVal) mut
			{
				return VT.put_DefaultToMainPrinter(&this, NewVal);
			}
			public HRESULT get_TerminalServicesWorkDirectory(BSTR* pVal) mut
			{
				return VT.get_TerminalServicesWorkDirectory(&this, pVal);
			}
			public HRESULT put_TerminalServicesWorkDirectory(BSTR pNewVal) mut
			{
				return VT.put_TerminalServicesWorkDirectory(&this, pNewVal);
			}
			public HRESULT get_TerminalServicesInitialProgram(BSTR* pVal) mut
			{
				return VT.get_TerminalServicesInitialProgram(&this, pVal);
			}
			public HRESULT put_TerminalServicesInitialProgram(BSTR pNewVal) mut
			{
				return VT.put_TerminalServicesInitialProgram(&this, pNewVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesProfilePath;
				public new function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesProfilePath;
				public new function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesHomeDirectory;
				public new function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesHomeDirectory;
				public new function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesHomeDrive;
				public new function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesHomeDrive;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_AllowLogon;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_AllowLogon;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_EnableRemoteControl;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_EnableRemoteControl;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxDisconnectionTime;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxDisconnectionTime;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxConnectionTime;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxConnectionTime;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxIdleTime;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxIdleTime;
				public new function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_ReconnectionAction;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ReconnectionAction;
				public new function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_BrokenConnectionAction;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_BrokenConnectionAction;
				public new function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_ConnectClientDrivesAtLogon;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ConnectClientDrivesAtLogon;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_ConnectClientPrintersAtLogon;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ConnectClientPrintersAtLogon;
				public new function HRESULT(IADsTSUserEx *self, int32* pVal) get_DefaultToMainPrinter;
				public new function HRESULT(IADsTSUserEx *self, int32 NewVal) put_DefaultToMainPrinter;
				public new function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesWorkDirectory;
				public new function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesWorkDirectory;
				public new function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesInitialProgram;
				public new function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesInitialProgram;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeConnectionSink : IUnknown
		{
			public const new Guid IID = .(0xc27ece33, 0x7781, 0x4318, 0x98, 0xef, 0x1c, 0xf2, 0xda, 0x7b, 0x70, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionAuthorized(HRESULT hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, uint32* policyAttributes) mut
			{
				return VT.OnConnectionAuthorized(&this, hrIn, mainSessionId, cbSoHResponse, pbSoHResponse, idleTimeout, sessionTimeout, sessionTimeoutAction, trustClass, policyAttributes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGAuthorizeConnectionSink *self, HRESULT hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, uint32* policyAttributes) OnConnectionAuthorized;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeResourceSink : IUnknown
		{
			public const new Guid IID = .(0xfeddfcd4, 0xfa12, 0x4435, 0xae, 0x55, 0x7a, 0xd1, 0xa9, 0x77, 0x9a, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChannelAuthorized(HRESULT hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) mut
			{
				return VT.OnChannelAuthorized(&this, hrIn, mainSessionId, subSessionId, allowedResourceNames, numAllowedResourceNames, failedResourceNames, numFailedResourceNames);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGAuthorizeResourceSink *self, HRESULT hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) OnChannelAuthorized;
			}
		}
		[CRepr]
		public struct ITSGPolicyEngine : IUnknown
		{
			public const new Guid IID = .(0x8bc24f08, 0x6223, 0x42f4, 0xa5, 0xb4, 0x8e, 0x37, 0xcd, 0x13, 0x5b, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthorizeConnection(Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ITSGAuthorizeConnectionSink* pSink) mut
			{
				return VT.AuthorizeConnection(&this, mainSessionId, username, authType, clientMachineIP, clientMachineName, sohData, numSOHBytes, cookieData, numCookieBytes, userToken, pSink);
			}
			public HRESULT AuthorizeResource(Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ITSGAuthorizeResourceSink* pSink) mut
			{
				return VT.AuthorizeResource(&this, mainSessionId, subSessionId, username, resourceNames, numResources, alternateResourceNames, numAlternateResourceName, portNumber, operation, cookie, numBytesInCookie, pSink);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT IsQuarantineEnabled(BOOL* quarantineEnabled) mut
			{
				return VT.IsQuarantineEnabled(&this, quarantineEnabled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGPolicyEngine *self, Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ITSGAuthorizeConnectionSink* pSink) AuthorizeConnection;
				public new function HRESULT(ITSGPolicyEngine *self, Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ITSGAuthorizeResourceSink* pSink) AuthorizeResource;
				public new function HRESULT(ITSGPolicyEngine *self) Refresh;
				public new function HRESULT(ITSGPolicyEngine *self, BOOL* quarantineEnabled) IsQuarantineEnabled;
			}
		}
		[CRepr]
		public struct ITSGAccountingEngine : IUnknown
		{
			public const new Guid IID = .(0x4ce2a0c9, 0xe874, 0x4f1a, 0x86, 0xf4, 0x06, 0xbb, 0xb9, 0x11, 0x53, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoAccounting(AAAccountingDataType accountingDataType, AAAccountingData accountingData) mut
			{
				return VT.DoAccounting(&this, accountingDataType, accountingData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGAccountingEngine *self, AAAccountingDataType accountingDataType, AAAccountingData accountingData) DoAccounting;
			}
		}
		[CRepr]
		public struct ITSGAuthenticateUserSink : IUnknown
		{
			public const new Guid IID = .(0x2c3e2e73, 0xa782, 0x47f9, 0x8d, 0xfb, 0x77, 0xee, 0x1e, 0xd2, 0x7a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUserAuthenticated(BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) mut
			{
				return VT.OnUserAuthenticated(&this, userName, userDomain, context, userToken);
			}
			public HRESULT OnUserAuthenticationFailed(uint context, HRESULT genericErrorCode, HRESULT specificErrorCode) mut
			{
				return VT.OnUserAuthenticationFailed(&this, context, genericErrorCode, specificErrorCode);
			}
			public HRESULT ReauthenticateUser(uint context) mut
			{
				return VT.ReauthenticateUser(&this, context);
			}
			public HRESULT DisconnectUser(uint context) mut
			{
				return VT.DisconnectUser(&this, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGAuthenticateUserSink *self, BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) OnUserAuthenticated;
				public new function HRESULT(ITSGAuthenticateUserSink *self, uint context, HRESULT genericErrorCode, HRESULT specificErrorCode) OnUserAuthenticationFailed;
				public new function HRESULT(ITSGAuthenticateUserSink *self, uint context) ReauthenticateUser;
				public new function HRESULT(ITSGAuthenticateUserSink *self, uint context) DisconnectUser;
			}
		}
		[CRepr]
		public struct ITSGAuthenticationEngine : IUnknown
		{
			public const new Guid IID = .(0x9ee3e5bf, 0x04ab, 0x4691, 0x99, 0x8c, 0xd7, 0xf6, 0x22, 0x32, 0x1a, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthenticateUser(Guid mainSessionId, uint8* cookieData, uint32 numCookieBytes, uint context, ITSGAuthenticateUserSink* pSink) mut
			{
				return VT.AuthenticateUser(&this, mainSessionId, cookieData, numCookieBytes, context, pSink);
			}
			public HRESULT CancelAuthentication(Guid mainSessionId, uint context) mut
			{
				return VT.CancelAuthentication(&this, mainSessionId, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITSGAuthenticationEngine *self, Guid mainSessionId, uint8* cookieData, uint32 numCookieBytes, uint context, ITSGAuthenticateUserSink* pSink) AuthenticateUser;
				public new function HRESULT(ITSGAuthenticationEngine *self, Guid mainSessionId, uint context) CancelAuthentication;
			}
		}
		[CRepr]
		public struct IWTSSBPlugin : IUnknown
		{
			public const new Guid IID = .(0xdc44be78, 0xb18d, 0x4399, 0xb2, 0x10, 0x64, 0x1b, 0xf6, 0x7a, 0x00, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint32* PluginCapabilities) mut
			{
				return VT.Initialize(&this, PluginCapabilities);
			}
			public HRESULT WTSSBX_MachineChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, WTSSBX_MACHINE_INFO* pMachineInfo) mut
			{
				return VT.WTSSBX_MachineChangeNotification(&this, NotificationType, MachineId, pMachineInfo);
			}
			public HRESULT WTSSBX_SessionChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) mut
			{
				return VT.WTSSBX_SessionChangeNotification(&this, NotificationType, MachineId, NumOfSessions, SessionInfo);
			}
			public HRESULT WTSSBX_GetMostSuitableServer(PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, PWSTR FarmName, int32* pMachineId) mut
			{
				return VT.WTSSBX_GetMostSuitableServer(&this, UserName, DomainName, ApplicationType, FarmName, pMachineId);
			}
			public HRESULT Terminated() mut
			{
				return VT.Terminated(&this);
			}
			public HRESULT WTSSBX_GetUserExternalSession(PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, WTSSBX_IP_ADDRESS* RedirectorInternalIP, uint32* pSessionId, WTSSBX_MACHINE_CONNECT_INFO* pMachineConnectInfo) mut
			{
				return VT.WTSSBX_GetUserExternalSession(&this, UserName, DomainName, ApplicationType, RedirectorInternalIP, pSessionId, pMachineConnectInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSSBPlugin *self, uint32* PluginCapabilities) Initialize;
				public new function HRESULT(IWTSSBPlugin *self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, WTSSBX_MACHINE_INFO* pMachineInfo) WTSSBX_MachineChangeNotification;
				public new function HRESULT(IWTSSBPlugin *self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) WTSSBX_SessionChangeNotification;
				public new function HRESULT(IWTSSBPlugin *self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, PWSTR FarmName, int32* pMachineId) WTSSBX_GetMostSuitableServer;
				public new function HRESULT(IWTSSBPlugin *self) Terminated;
				public new function HRESULT(IWTSSBPlugin *self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, WTSSBX_IP_ADDRESS* RedirectorInternalIP, uint32* pSessionId, WTSSBX_MACHINE_CONNECT_INFO* pMachineConnectInfo) WTSSBX_GetUserExternalSession;
			}
		}
		[CRepr]
		public struct IWorkspaceClientExt : IUnknown
		{
			public const new Guid IID = .(0x12b952f4, 0x41ca, 0x4f21, 0xa8, 0x29, 0xa6, 0xd0, 0x7d, 0x9a, 0x16, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResourceId(BSTR* bstrWorkspaceId) mut
			{
				return VT.GetResourceId(&this, bstrWorkspaceId);
			}
			public HRESULT GetResourceDisplayName(BSTR* bstrWorkspaceDisplayName) mut
			{
				return VT.GetResourceDisplayName(&this, bstrWorkspaceDisplayName);
			}
			public HRESULT IssueDisconnect() mut
			{
				return VT.IssueDisconnect(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWorkspaceClientExt *self, BSTR* bstrWorkspaceId) GetResourceId;
				public new function HRESULT(IWorkspaceClientExt *self, BSTR* bstrWorkspaceDisplayName) GetResourceDisplayName;
				public new function HRESULT(IWorkspaceClientExt *self) IssueDisconnect;
			}
		}
		[CRepr]
		public struct IWorkspace : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWorkspaceNames(SAFEARRAY** psaWkspNames) mut
			{
				return VT.GetWorkspaceNames(&this, psaWkspNames);
			}
			public HRESULT StartRemoteApplication(BSTR bstrWorkspaceId, SAFEARRAY* psaParams) mut
			{
				return VT.StartRemoteApplication(&this, bstrWorkspaceId, psaParams);
			}
			public HRESULT GetProcessId(uint32* pulProcessId) mut
			{
				return VT.GetProcessId(&this, pulProcessId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWorkspace *self, SAFEARRAY** psaWkspNames) GetWorkspaceNames;
				public new function HRESULT(IWorkspace *self, BSTR bstrWorkspaceId, SAFEARRAY* psaParams) StartRemoteApplication;
				public new function HRESULT(IWorkspace *self, uint32* pulProcessId) GetProcessId;
			}
		}
		[CRepr]
		public struct IWorkspace2 : IWorkspace
		{
			public const new Guid IID = .(0x96d8d7cf, 0x783e, 0x4286, 0x83, 0x4c, 0xeb, 0xc0, 0xe9, 0x5f, 0x78, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartRemoteApplicationEx(BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, SAFEARRAY* psaParams) mut
			{
				return VT.StartRemoteApplicationEx(&this, bstrWorkspaceId, bstrRequestingAppId, bstrRequestingAppFamilyName, bLaunchIntoImmersiveClient, bstrImmersiveClientActivationContext, psaParams);
			}
			[CRepr]
			public struct VTable : IWorkspace.VTable
			{
				public new function HRESULT(IWorkspace2 *self, BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, SAFEARRAY* psaParams) StartRemoteApplicationEx;
			}
		}
		[CRepr]
		public struct IWorkspace3 : IWorkspace2
		{
			public const new Guid IID = .(0x1becbe4a, 0xd654, 0x423b, 0xaf, 0xeb, 0xbe, 0x8d, 0x53, 0x2c, 0x13, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClaimsToken2(BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RECT rectCredUiParent, BSTR* pbstrAccessToken) mut
			{
				return VT.GetClaimsToken2(&this, bstrClaimsHint, bstrUserHint, claimCookie, hwndCredUiParent, rectCredUiParent, pbstrAccessToken);
			}
			public HRESULT SetClaimsToken(BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) mut
			{
				return VT.SetClaimsToken(&this, bstrAccessToken, ullAccessTokenExpiration, bstrRefreshToken);
			}
			[CRepr]
			public struct VTable : IWorkspace2.VTable
			{
				public new function HRESULT(IWorkspace3 *self, BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RECT rectCredUiParent, BSTR* pbstrAccessToken) GetClaimsToken2;
				public new function HRESULT(IWorkspace3 *self, BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) SetClaimsToken;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResource(IWorkspaceClientExt* pUnk, uint32* pdwCookie) mut
			{
				return VT.AddResource(&this, pUnk, pdwCookie);
			}
			public HRESULT RemoveResource(uint32 dwCookieConnection) mut
			{
				return VT.RemoveResource(&this, dwCookieConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWorkspaceRegistration *self, IWorkspaceClientExt* pUnk, uint32* pdwCookie) AddResource;
				public new function HRESULT(IWorkspaceRegistration *self, uint32 dwCookieConnection) RemoveResource;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration2 : IWorkspaceRegistration
		{
			public const new Guid IID = .(0xcf59f654, 0x39bb, 0x44d8, 0x94, 0xd0, 0x46, 0x35, 0x72, 0x89, 0x57, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResourceEx(IWorkspaceClientExt* pUnk, BSTR bstrEventLogUploadAddress, uint32* pdwCookie, Guid correlationId) mut
			{
				return VT.AddResourceEx(&this, pUnk, bstrEventLogUploadAddress, pdwCookie, correlationId);
			}
			public HRESULT RemoveResourceEx(uint32 dwCookieConnection, Guid correlationId) mut
			{
				return VT.RemoveResourceEx(&this, dwCookieConnection, correlationId);
			}
			[CRepr]
			public struct VTable : IWorkspaceRegistration.VTable
			{
				public new function HRESULT(IWorkspaceRegistration2 *self, IWorkspaceClientExt* pUnk, BSTR bstrEventLogUploadAddress, uint32* pdwCookie, Guid correlationId) AddResourceEx;
				public new function HRESULT(IWorkspaceRegistration2 *self, uint32 dwCookieConnection, Guid correlationId) RemoveResourceEx;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable : IDispatch
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb2, 0x3b, 0x92, 0xc4, 0xc3, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisconnectWorkspace(BSTR bstrWorkspaceId) mut
			{
				return VT.DisconnectWorkspace(&this, bstrWorkspaceId);
			}
			public HRESULT StartWorkspace(BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut
			{
				return VT.StartWorkspace(&this, bstrWorkspaceId, bstrUserName, bstrPassword, bstrWorkspaceParams, lTimeout, lFlags);
			}
			public HRESULT IsWorkspaceCredentialSpecified(BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, int16* pbCredExist) mut
			{
				return VT.IsWorkspaceCredentialSpecified(&this, bstrWorkspaceId, bCountUnauthenticatedCredentials, pbCredExist);
			}
			public HRESULT IsWorkspaceSSOEnabled(int16* pbSSOEnabled) mut
			{
				return VT.IsWorkspaceSSOEnabled(&this, pbSSOEnabled);
			}
			public HRESULT ClearWorkspaceCredential(BSTR bstrWorkspaceId) mut
			{
				return VT.ClearWorkspaceCredential(&this, bstrWorkspaceId);
			}
			public HRESULT OnAuthenticated(BSTR bstrWorkspaceId, BSTR bstrUserName) mut
			{
				return VT.OnAuthenticated(&this, bstrWorkspaceId, bstrUserName);
			}
			public HRESULT DisconnectWorkspaceByFriendlyName(BSTR bstrWorkspaceFriendlyName) mut
			{
				return VT.DisconnectWorkspaceByFriendlyName(&this, bstrWorkspaceFriendlyName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId) DisconnectWorkspace;
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspace;
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, int16* pbCredExist) IsWorkspaceCredentialSpecified;
				public new function HRESULT(IWorkspaceScriptable *self, int16* pbSSOEnabled) IsWorkspaceSSOEnabled;
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId) ClearWorkspaceCredential;
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, BSTR bstrUserName) OnAuthenticated;
				public new function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceFriendlyName) DisconnectWorkspaceByFriendlyName;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable2 : IWorkspaceScriptable
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb3, 0x3b, 0xa2, 0xc4, 0xc3, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartWorkspaceEx(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut
			{
				return VT.StartWorkspaceEx(&this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags);
			}
			public HRESULT ResourceDismissed(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) mut
			{
				return VT.ResourceDismissed(&this, bstrWorkspaceId, bstrWorkspaceFriendlyName);
			}
			[CRepr]
			public struct VTable : IWorkspaceScriptable.VTable
			{
				public new function HRESULT(IWorkspaceScriptable2 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspaceEx;
				public new function HRESULT(IWorkspaceScriptable2 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) ResourceDismissed;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable3 : IWorkspaceScriptable2
		{
			public const new Guid IID = .(0x531e6512, 0x2cbf, 0x4bd2, 0x80, 0xa5, 0xd9, 0x0a, 0x71, 0x63, 0x6a, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartWorkspaceEx2(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) mut
			{
				return VT.StartWorkspaceEx2(&this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags, bstrEventLogUploadAddress, correlationId);
			}
			[CRepr]
			public struct VTable : IWorkspaceScriptable2.VTable
			{
				public new function HRESULT(IWorkspaceScriptable3 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) StartWorkspaceEx2;
			}
		}
		[CRepr]
		public struct IWorkspaceReportMessage : IUnknown
		{
			public const new Guid IID = .(0xa7c06739, 0x500f, 0x4e8c, 0x99, 0xa8, 0x2b, 0xd6, 0x95, 0x58, 0x99, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterErrorLogMessage(BSTR bstrMessage) mut
			{
				return VT.RegisterErrorLogMessage(&this, bstrMessage);
			}
			public HRESULT IsErrorMessageRegistered(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, int16* pfErrorExist) mut
			{
				return VT.IsErrorMessageRegistered(&this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode, pfErrorExist);
			}
			public HRESULT RegisterErrorEvent(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) mut
			{
				return VT.RegisterErrorEvent(&this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWorkspaceReportMessage *self, BSTR bstrMessage) RegisterErrorLogMessage;
				public new function HRESULT(IWorkspaceReportMessage *self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, int16* pfErrorExist) IsErrorMessageRegistered;
				public new function HRESULT(IWorkspaceReportMessage *self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) RegisterErrorEvent;
			}
		}
		[CRepr]
		public struct _ITSWkspEvents : IDispatch
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbPlugin : IUnknown
		{
			public const new Guid IID = .(0x48cd7406, 0xcaab, 0x465f, 0xa5, 0xd6, 0xba, 0xa8, 0x63, 0xb9, 0xea, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ITsSbProvider* pProvider, ITsSbPluginNotifySink* pNotifySink, ITsSbPluginPropertySet* pPropertySet) mut
			{
				return VT.Initialize(&this, pProvider, pNotifySink, pPropertySet);
			}
			public HRESULT Terminate(HRESULT hr) mut
			{
				return VT.Terminate(&this, hr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbPlugin *self, ITsSbProvider* pProvider, ITsSbPluginNotifySink* pNotifySink, ITsSbPluginPropertySet* pPropertySet) Initialize;
				public new function HRESULT(ITsSbPlugin *self, HRESULT hr) Terminate;
			}
		}
		[CRepr]
		public struct ITsSbResourcePlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xea8db42c, 0x98ed, 0x4535, 0xa8, 0x8b, 0x2a, 0x16, 0x4f, 0x35, 0x49, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbServiceNotification : IUnknown
		{
			public const new Guid IID = .(0x86cb68ae, 0x86e0, 0x4f57, 0x8a, 0x64, 0xbb, 0x74, 0x06, 0xbc, 0x55, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyServiceFailure() mut
			{
				return VT.NotifyServiceFailure(&this);
			}
			public HRESULT NotifyServiceSuccess() mut
			{
				return VT.NotifyServiceSuccess(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbServiceNotification *self) NotifyServiceFailure;
				public new function HRESULT(ITsSbServiceNotification *self) NotifyServiceSuccess;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancing : ITsSbPlugin
		{
			public const new Guid IID = .(0x24329274, 0x9eb7, 0x11dc, 0xae, 0x98, 0xf2, 0xb4, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMostSuitableTarget(ITsSbClientConnection* pConnection, ITsSbLoadBalancingNotifySink* pLBSink) mut
			{
				return VT.GetMostSuitableTarget(&this, pConnection, pLBSink);
			}
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function HRESULT(ITsSbLoadBalancing *self, ITsSbClientConnection* pConnection, ITsSbLoadBalancingNotifySink* pLBSink) GetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacement : ITsSbPlugin
		{
			public const new Guid IID = .(0xdaadee5f, 0x6d32, 0x480e, 0x9e, 0x36, 0xdd, 0xab, 0x23, 0x29, 0xf0, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryEnvironmentForTarget(ITsSbClientConnection* pConnection, ITsSbPlacementNotifySink* pPlacementSink) mut
			{
				return VT.QueryEnvironmentForTarget(&this, pConnection, pPlacementSink);
			}
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function HRESULT(ITsSbPlacement *self, ITsSbClientConnection* pConnection, ITsSbPlacementNotifySink* pPlacementSink) QueryEnvironmentForTarget;
			}
		}
		[CRepr]
		public struct ITsSbOrchestration : ITsSbPlugin
		{
			public const new Guid IID = .(0x64fc1172, 0x9eb7, 0x11dc, 0x8b, 0x00, 0x3a, 0xba, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareTargetForConnect(ITsSbClientConnection* pConnection, ITsSbOrchestrationNotifySink* pOrchestrationNotifySink) mut
			{
				return VT.PrepareTargetForConnect(&this, pConnection, pOrchestrationNotifySink);
			}
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function HRESULT(ITsSbOrchestration *self, ITsSbClientConnection* pConnection, ITsSbOrchestrationNotifySink* pOrchestrationNotifySink) PrepareTargetForConnect;
			}
		}
		[CRepr]
		public struct ITsSbEnvironment : IUnknown
		{
			public const new Guid IID = .(0x8c87f7f7, 0xbf51, 0x4a5c, 0x87, 0xbf, 0x8e, 0x94, 0xfb, 0x6e, 0x22, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pVal) mut
			{
				return VT.get_Name(&this, pVal);
			}
			public HRESULT get_ServerWeight(uint32* pVal) mut
			{
				return VT.get_ServerWeight(&this, pVal);
			}
			public HRESULT get_EnvironmentPropertySet(ITsSbEnvironmentPropertySet** ppPropertySet) mut
			{
				return VT.get_EnvironmentPropertySet(&this, ppPropertySet);
			}
			public HRESULT put_EnvironmentPropertySet(ITsSbEnvironmentPropertySet* pVal) mut
			{
				return VT.put_EnvironmentPropertySet(&this, pVal);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbEnvironment *self, BSTR* pVal) get_Name;
				public new function HRESULT(ITsSbEnvironment *self, uint32* pVal) get_ServerWeight;
				public new function HRESULT(ITsSbEnvironment *self, ITsSbEnvironmentPropertySet** ppPropertySet) get_EnvironmentPropertySet;
				public new function HRESULT(ITsSbEnvironment *self, ITsSbEnvironmentPropertySet* pVal) put_EnvironmentPropertySet;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalanceResult : IUnknown
		{
			public const new Guid IID = .(0x24fdb7ac, 0xfea6, 0x11dc, 0x96, 0x72, 0x9a, 0x89, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetName(BSTR* pVal) mut
			{
				return VT.get_TargetName(&this, pVal);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbLoadBalanceResult *self, BSTR* pVal) get_TargetName;
			}
		}
		[CRepr]
		public struct ITsSbTarget : IUnknown
		{
			public const new Guid IID = .(0x16616ecc, 0x272d, 0x411d, 0xb3, 0x24, 0x12, 0x68, 0x93, 0x03, 0x38, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetName(BSTR* pVal) mut
			{
				return VT.get_TargetName(&this, pVal);
			}
			public HRESULT put_TargetName(BSTR Val) mut
			{
				return VT.put_TargetName(&this, Val);
			}
			public HRESULT get_FarmName(BSTR* pVal) mut
			{
				return VT.get_FarmName(&this, pVal);
			}
			public HRESULT put_FarmName(BSTR Val) mut
			{
				return VT.put_FarmName(&this, Val);
			}
			public HRESULT get_TargetFQDN(BSTR* TargetFqdnName) mut
			{
				return VT.get_TargetFQDN(&this, TargetFqdnName);
			}
			public HRESULT put_TargetFQDN(BSTR Val) mut
			{
				return VT.put_TargetFQDN(&this, Val);
			}
			public HRESULT get_TargetNetbios(BSTR* TargetNetbiosName) mut
			{
				return VT.get_TargetNetbios(&this, TargetNetbiosName);
			}
			public HRESULT put_TargetNetbios(BSTR Val) mut
			{
				return VT.put_TargetNetbios(&this, Val);
			}
			public HRESULT get_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, uint32* numAddresses) mut
			{
				return VT.get_IpAddresses(&this, SOCKADDR, numAddresses);
			}
			public HRESULT put_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) mut
			{
				return VT.put_IpAddresses(&this, SOCKADDR, numAddresses);
			}
			public HRESULT get_TargetState(TARGET_STATE* pState) mut
			{
				return VT.get_TargetState(&this, pState);
			}
			public HRESULT put_TargetState(TARGET_STATE State) mut
			{
				return VT.put_TargetState(&this, State);
			}
			public HRESULT get_TargetPropertySet(ITsSbTargetPropertySet** ppPropertySet) mut
			{
				return VT.get_TargetPropertySet(&this, ppPropertySet);
			}
			public HRESULT put_TargetPropertySet(ITsSbTargetPropertySet* pVal) mut
			{
				return VT.put_TargetPropertySet(&this, pVal);
			}
			public HRESULT get_EnvironmentName(BSTR* pVal) mut
			{
				return VT.get_EnvironmentName(&this, pVal);
			}
			public HRESULT put_EnvironmentName(BSTR Val) mut
			{
				return VT.put_EnvironmentName(&this, Val);
			}
			public HRESULT get_NumSessions(uint32* pNumSessions) mut
			{
				return VT.get_NumSessions(&this, pNumSessions);
			}
			public HRESULT get_NumPendingConnections(uint32* pNumPendingConnections) mut
			{
				return VT.get_NumPendingConnections(&this, pNumPendingConnections);
			}
			public HRESULT get_TargetLoad(uint32* pTargetLoad) mut
			{
				return VT.get_TargetLoad(&this, pTargetLoad);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbTarget *self, BSTR* pVal) get_TargetName;
				public new function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetName;
				public new function HRESULT(ITsSbTarget *self, BSTR* pVal) get_FarmName;
				public new function HRESULT(ITsSbTarget *self, BSTR Val) put_FarmName;
				public new function HRESULT(ITsSbTarget *self, BSTR* TargetFqdnName) get_TargetFQDN;
				public new function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetFQDN;
				public new function HRESULT(ITsSbTarget *self, BSTR* TargetNetbiosName) get_TargetNetbios;
				public new function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetNetbios;
				public new function HRESULT(ITsSbTarget *self, TSSD_ConnectionPoint* SOCKADDR, uint32* numAddresses) get_IpAddresses;
				public new function HRESULT(ITsSbTarget *self, TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) put_IpAddresses;
				public new function HRESULT(ITsSbTarget *self, TARGET_STATE* pState) get_TargetState;
				public new function HRESULT(ITsSbTarget *self, TARGET_STATE State) put_TargetState;
				public new function HRESULT(ITsSbTarget *self, ITsSbTargetPropertySet** ppPropertySet) get_TargetPropertySet;
				public new function HRESULT(ITsSbTarget *self, ITsSbTargetPropertySet* pVal) put_TargetPropertySet;
				public new function HRESULT(ITsSbTarget *self, BSTR* pVal) get_EnvironmentName;
				public new function HRESULT(ITsSbTarget *self, BSTR Val) put_EnvironmentName;
				public new function HRESULT(ITsSbTarget *self, uint32* pNumSessions) get_NumSessions;
				public new function HRESULT(ITsSbTarget *self, uint32* pNumPendingConnections) get_NumPendingConnections;
				public new function HRESULT(ITsSbTarget *self, uint32* pTargetLoad) get_TargetLoad;
			}
		}
		[CRepr]
		public struct ITsSbSession : IUnknown
		{
			public const new Guid IID = .(0xd453aac7, 0xb1d8, 0x4c5e, 0xba, 0x34, 0x9a, 0xfb, 0x4c, 0x8c, 0x55, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SessionId(uint32* pVal) mut
			{
				return VT.get_SessionId(&this, pVal);
			}
			public HRESULT get_TargetName(BSTR* targetName) mut
			{
				return VT.get_TargetName(&this, targetName);
			}
			public HRESULT put_TargetName(BSTR targetName) mut
			{
				return VT.put_TargetName(&this, targetName);
			}
			public HRESULT get_Username(BSTR* userName) mut
			{
				return VT.get_Username(&this, userName);
			}
			public HRESULT get_Domain(BSTR* domain) mut
			{
				return VT.get_Domain(&this, domain);
			}
			public HRESULT get_State(TSSESSION_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			public HRESULT put_State(TSSESSION_STATE State) mut
			{
				return VT.put_State(&this, State);
			}
			public HRESULT get_CreateTime(FILETIME* pTime) mut
			{
				return VT.get_CreateTime(&this, pTime);
			}
			public HRESULT put_CreateTime(FILETIME Time) mut
			{
				return VT.put_CreateTime(&this, Time);
			}
			public HRESULT get_DisconnectTime(FILETIME* pTime) mut
			{
				return VT.get_DisconnectTime(&this, pTime);
			}
			public HRESULT put_DisconnectTime(FILETIME Time) mut
			{
				return VT.put_DisconnectTime(&this, Time);
			}
			public HRESULT get_InitialProgram(BSTR* app) mut
			{
				return VT.get_InitialProgram(&this, app);
			}
			public HRESULT put_InitialProgram(BSTR Application) mut
			{
				return VT.put_InitialProgram(&this, Application);
			}
			public HRESULT get_ClientDisplay(CLIENT_DISPLAY* pClientDisplay) mut
			{
				return VT.get_ClientDisplay(&this, pClientDisplay);
			}
			public HRESULT put_ClientDisplay(CLIENT_DISPLAY pClientDisplay) mut
			{
				return VT.put_ClientDisplay(&this, pClientDisplay);
			}
			public HRESULT get_ProtocolType(uint32* pVal) mut
			{
				return VT.get_ProtocolType(&this, pVal);
			}
			public HRESULT put_ProtocolType(uint32 Val) mut
			{
				return VT.put_ProtocolType(&this, Val);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbSession *self, uint32* pVal) get_SessionId;
				public new function HRESULT(ITsSbSession *self, BSTR* targetName) get_TargetName;
				public new function HRESULT(ITsSbSession *self, BSTR targetName) put_TargetName;
				public new function HRESULT(ITsSbSession *self, BSTR* userName) get_Username;
				public new function HRESULT(ITsSbSession *self, BSTR* domain) get_Domain;
				public new function HRESULT(ITsSbSession *self, TSSESSION_STATE* pState) get_State;
				public new function HRESULT(ITsSbSession *self, TSSESSION_STATE State) put_State;
				public new function HRESULT(ITsSbSession *self, FILETIME* pTime) get_CreateTime;
				public new function HRESULT(ITsSbSession *self, FILETIME Time) put_CreateTime;
				public new function HRESULT(ITsSbSession *self, FILETIME* pTime) get_DisconnectTime;
				public new function HRESULT(ITsSbSession *self, FILETIME Time) put_DisconnectTime;
				public new function HRESULT(ITsSbSession *self, BSTR* app) get_InitialProgram;
				public new function HRESULT(ITsSbSession *self, BSTR Application) put_InitialProgram;
				public new function HRESULT(ITsSbSession *self, CLIENT_DISPLAY* pClientDisplay) get_ClientDisplay;
				public new function HRESULT(ITsSbSession *self, CLIENT_DISPLAY pClientDisplay) put_ClientDisplay;
				public new function HRESULT(ITsSbSession *self, uint32* pVal) get_ProtocolType;
				public new function HRESULT(ITsSbSession *self, uint32 Val) put_ProtocolType;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotification : IUnknown
		{
			public const new Guid IID = .(0x65d3e85a, 0xc39b, 0x11dc, 0xb9, 0x2d, 0x3c, 0xd2, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifySessionChange(TSSESSION_STATE changeType, ITsSbSession* pSession) mut
			{
				return VT.NotifySessionChange(&this, changeType, pSession);
			}
			public HRESULT NotifyTargetChange(uint32 TargetChangeType, ITsSbTarget* pTarget) mut
			{
				return VT.NotifyTargetChange(&this, TargetChangeType, pTarget);
			}
			public HRESULT NotifyClientConnectionStateChange(CONNECTION_CHANGE_NOTIFICATION ChangeType, ITsSbClientConnection* pConnection) mut
			{
				return VT.NotifyClientConnectionStateChange(&this, ChangeType, pConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbResourceNotification *self, TSSESSION_STATE changeType, ITsSbSession* pSession) NotifySessionChange;
				public new function HRESULT(ITsSbResourceNotification *self, uint32 TargetChangeType, ITsSbTarget* pTarget) NotifyTargetChange;
				public new function HRESULT(ITsSbResourceNotification *self, CONNECTION_CHANGE_NOTIFICATION ChangeType, ITsSbClientConnection* pConnection) NotifyClientConnectionStateChange;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotificationEx : IUnknown
		{
			public const new Guid IID = .(0xa8a47fde, 0xca91, 0x44d2, 0xb8, 0x97, 0x3a, 0xa2, 0x8a, 0x43, 0xb2, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifySessionChangeEx(BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) mut
			{
				return VT.NotifySessionChangeEx(&this, targetName, userName, domain, sessionId, sessionState);
			}
			public HRESULT NotifyTargetChangeEx(BSTR targetName, uint32 targetChangeType) mut
			{
				return VT.NotifyTargetChangeEx(&this, targetName, targetChangeType);
			}
			public HRESULT NotifyClientConnectionStateChangeEx(BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) mut
			{
				return VT.NotifyClientConnectionStateChangeEx(&this, userName, domain, initialProgram, poolName, targetName, connectionChangeType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbResourceNotificationEx *self, BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) NotifySessionChangeEx;
				public new function HRESULT(ITsSbResourceNotificationEx *self, BSTR targetName, uint32 targetChangeType) NotifyTargetChangeEx;
				public new function HRESULT(ITsSbResourceNotificationEx *self, BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) NotifyClientConnectionStateChangeEx;
			}
		}
		[CRepr]
		public struct ITsSbTaskInfo : IUnknown
		{
			public const new Guid IID = .(0x523d1083, 0x89be, 0x48dd, 0x99, 0xea, 0x04, 0xe8, 0x2f, 0xfa, 0x72, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetId(BSTR* pName) mut
			{
				return VT.get_TargetId(&this, pName);
			}
			public HRESULT get_StartTime(FILETIME* pStartTime) mut
			{
				return VT.get_StartTime(&this, pStartTime);
			}
			public HRESULT get_EndTime(FILETIME* pEndTime) mut
			{
				return VT.get_EndTime(&this, pEndTime);
			}
			public HRESULT get_Deadline(FILETIME* pDeadline) mut
			{
				return VT.get_Deadline(&this, pDeadline);
			}
			public HRESULT get_Identifier(BSTR* pIdentifier) mut
			{
				return VT.get_Identifier(&this, pIdentifier);
			}
			public HRESULT get_Label(BSTR* pLabel) mut
			{
				return VT.get_Label(&this, pLabel);
			}
			public HRESULT get_Context(SAFEARRAY** pContext) mut
			{
				return VT.get_Context(&this, pContext);
			}
			public HRESULT get_Plugin(BSTR* pPlugin) mut
			{
				return VT.get_Plugin(&this, pPlugin);
			}
			public HRESULT get_Status(RDV_TASK_STATUS* pStatus) mut
			{
				return VT.get_Status(&this, pStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbTaskInfo *self, BSTR* pName) get_TargetId;
				public new function HRESULT(ITsSbTaskInfo *self, FILETIME* pStartTime) get_StartTime;
				public new function HRESULT(ITsSbTaskInfo *self, FILETIME* pEndTime) get_EndTime;
				public new function HRESULT(ITsSbTaskInfo *self, FILETIME* pDeadline) get_Deadline;
				public new function HRESULT(ITsSbTaskInfo *self, BSTR* pIdentifier) get_Identifier;
				public new function HRESULT(ITsSbTaskInfo *self, BSTR* pLabel) get_Label;
				public new function HRESULT(ITsSbTaskInfo *self, SAFEARRAY** pContext) get_Context;
				public new function HRESULT(ITsSbTaskInfo *self, BSTR* pPlugin) get_Plugin;
				public new function HRESULT(ITsSbTaskInfo *self, RDV_TASK_STATUS* pStatus) get_Status;
			}
		}
		[CRepr]
		public struct ITsSbTaskPlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xfa22ef0f, 0x8705, 0x41be, 0x93, 0xbc, 0x44, 0xbd, 0xbc, 0xf1, 0xc9, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeTaskPlugin(ITsSbTaskPluginNotifySink* pITsSbTaskPluginNotifySink) mut
			{
				return VT.InitializeTaskPlugin(&this, pITsSbTaskPluginNotifySink);
			}
			public HRESULT SetTaskQueue(BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) mut
			{
				return VT.SetTaskQueue(&this, pszHostName, SbTaskInfoSize, pITsSbTaskInfo);
			}
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function HRESULT(ITsSbTaskPlugin *self, ITsSbTaskPluginNotifySink* pITsSbTaskPluginNotifySink) InitializeTaskPlugin;
				public new function HRESULT(ITsSbTaskPlugin *self, BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) SetTaskQueue;
			}
		}
		[CRepr]
		public struct ITsSbPropertySet : IPropertyBag
		{
			public const new Guid IID = .(0x5c025171, 0xbb1e, 0x4baf, 0xa2, 0x12, 0x6d, 0x5e, 0x97, 0x74, 0xb3, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPropertyBag.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbPluginPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0x95006e34, 0x7eff, 0x4b6c, 0xbb, 0x40, 0x49, 0xa4, 0xfd, 0xa7, 0xce, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbClientConnectionPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xe51995b0, 0x46d6, 0x11dd, 0xaa, 0x21, 0xce, 0xdc, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbTargetPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xf7bda5d6, 0x994c, 0x4e11, 0xa0, 0x79, 0x27, 0x63, 0xb6, 0x18, 0x30, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbEnvironmentPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xd0d1bf7e, 0x7acf, 0x11dd, 0xa2, 0x43, 0xe5, 0x11, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable
			{
			}
		}
		[CRepr]
		public struct ITsSbBaseNotifySink : IUnknown
		{
			public const new Guid IID = .(0x808a6537, 0x1282, 0x4989, 0x9e, 0x09, 0xf4, 0x39, 0x38, 0xb7, 0x17, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnError(HRESULT hrError) mut
			{
				return VT.OnError(&this, hrError);
			}
			public HRESULT OnReportStatus(CLIENT_MESSAGE_TYPE messageType, uint32 messageID) mut
			{
				return VT.OnReportStatus(&this, messageType, messageID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbBaseNotifySink *self, HRESULT hrError) OnError;
				public new function HRESULT(ITsSbBaseNotifySink *self, CLIENT_MESSAGE_TYPE messageType, uint32 messageID) OnReportStatus;
			}
		}
		[CRepr]
		public struct ITsSbPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x44dfe30b, 0xc3be, 0x40f5, 0xbf, 0x82, 0x7a, 0x95, 0xbb, 0x79, 0x5a, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInitialized(HRESULT hr) mut
			{
				return VT.OnInitialized(&this, hr);
			}
			public HRESULT OnTerminated() mut
			{
				return VT.OnTerminated(&this);
			}
			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function HRESULT(ITsSbPluginNotifySink *self, HRESULT hr) OnInitialized;
				public new function HRESULT(ITsSbPluginNotifySink *self) OnTerminated;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancingNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x5f8a8297, 0x3244, 0x4e6a, 0x95, 0x8a, 0x27, 0xc8, 0x22, 0xc1, 0xe1, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnGetMostSuitableTarget(ITsSbLoadBalanceResult* pLBResult, BOOL fIsNewConnection) mut
			{
				return VT.OnGetMostSuitableTarget(&this, pLBResult, fIsNewConnection);
			}
			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function HRESULT(ITsSbLoadBalancingNotifySink *self, ITsSbLoadBalanceResult* pLBResult, BOOL fIsNewConnection) OnGetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacementNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x68a0c487, 0x2b4f, 0x46c2, 0x94, 0xa1, 0x6c, 0xe6, 0x85, 0x18, 0x36, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQueryEnvironmentCompleted(ITsSbEnvironment* pEnvironment) mut
			{
				return VT.OnQueryEnvironmentCompleted(&this, pEnvironment);
			}
			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function HRESULT(ITsSbPlacementNotifySink *self, ITsSbEnvironment* pEnvironment) OnQueryEnvironmentCompleted;
			}
		}
		[CRepr]
		public struct ITsSbOrchestrationNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x36c37d61, 0x926b, 0x442f, 0xbc, 0xa5, 0x11, 0x8c, 0x6d, 0x50, 0xdc, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReadyToConnect(ITsSbTarget* pTarget) mut
			{
				return VT.OnReadyToConnect(&this, pTarget);
			}
			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function HRESULT(ITsSbOrchestrationNotifySink *self, ITsSbTarget* pTarget) OnReadyToConnect;
			}
		}
		[CRepr]
		public struct ITsSbTaskPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x6aaf899e, 0xc2ec, 0x45ee, 0xaa, 0x37, 0x45, 0xe6, 0x08, 0x95, 0x26, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetTaskTime(BSTR szTargetName, FILETIME TaskStartTime, FILETIME TaskEndTime, FILETIME TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, SAFEARRAY* saContext) mut
			{
				return VT.OnSetTaskTime(&this, szTargetName, TaskStartTime, TaskEndTime, TaskDeadline, szTaskLabel, szTaskIdentifier, szTaskPlugin, dwTaskStatus, saContext);
			}
			public HRESULT OnDeleteTaskTime(BSTR szTargetName, BSTR szTaskIdentifier) mut
			{
				return VT.OnDeleteTaskTime(&this, szTargetName, szTaskIdentifier);
			}
			public HRESULT OnUpdateTaskStatus(BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) mut
			{
				return VT.OnUpdateTaskStatus(&this, szTargetName, TaskIdentifier, TaskStatus);
			}
			public HRESULT OnReportTasks(BSTR szHostName) mut
			{
				return VT.OnReportTasks(&this, szHostName);
			}
			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, FILETIME TaskStartTime, FILETIME TaskEndTime, FILETIME TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, SAFEARRAY* saContext) OnSetTaskTime;
				public new function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, BSTR szTaskIdentifier) OnDeleteTaskTime;
				public new function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) OnUpdateTaskStatus;
				public new function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szHostName) OnReportTasks;
			}
		}
		[CRepr]
		public struct ITsSbClientConnection : IUnknown
		{
			public const new Guid IID = .(0x18857499, 0xad61, 0x4b1b, 0xb7, 0xdf, 0xcb, 0xcd, 0x41, 0xfb, 0x83, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(BSTR* pVal) mut
			{
				return VT.get_UserName(&this, pVal);
			}
			public HRESULT get_Domain(BSTR* pVal) mut
			{
				return VT.get_Domain(&this, pVal);
			}
			public HRESULT get_InitialProgram(BSTR* pVal) mut
			{
				return VT.get_InitialProgram(&this, pVal);
			}
			public HRESULT get_LoadBalanceResult(ITsSbLoadBalanceResult** ppVal) mut
			{
				return VT.get_LoadBalanceResult(&this, ppVal);
			}
			public HRESULT get_FarmName(BSTR* pVal) mut
			{
				return VT.get_FarmName(&this, pVal);
			}
			public HRESULT PutContext(BSTR contextId, VARIANT context, VARIANT* existingContext) mut
			{
				return VT.PutContext(&this, contextId, context, existingContext);
			}
			public HRESULT GetContext(BSTR contextId, VARIANT* context) mut
			{
				return VT.GetContext(&this, contextId, context);
			}
			public HRESULT get_Environment(ITsSbEnvironment** ppEnvironment) mut
			{
				return VT.get_Environment(&this, ppEnvironment);
			}
			public HRESULT get_ConnectionError() mut
			{
				return VT.get_ConnectionError(&this);
			}
			public HRESULT get_SamUserAccount(BSTR* pVal) mut
			{
				return VT.get_SamUserAccount(&this, pVal);
			}
			public HRESULT get_ClientConnectionPropertySet(ITsSbClientConnectionPropertySet** ppPropertySet) mut
			{
				return VT.get_ClientConnectionPropertySet(&this, ppPropertySet);
			}
			public HRESULT get_IsFirstAssignment(BOOL* ppVal) mut
			{
				return VT.get_IsFirstAssignment(&this, ppVal);
			}
			public HRESULT get_RdFarmType(RD_FARM_TYPE* pRdFarmType) mut
			{
				return VT.get_RdFarmType(&this, pRdFarmType);
			}
			public HRESULT get_UserSidString(int8** pszUserSidString) mut
			{
				return VT.get_UserSidString(&this, pszUserSidString);
			}
			public HRESULT GetDisconnectedSession(ITsSbSession** ppSession) mut
			{
				return VT.GetDisconnectedSession(&this, ppSession);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_UserName;
				public new function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_Domain;
				public new function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_InitialProgram;
				public new function HRESULT(ITsSbClientConnection *self, ITsSbLoadBalanceResult** ppVal) get_LoadBalanceResult;
				public new function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_FarmName;
				public new function HRESULT(ITsSbClientConnection *self, BSTR contextId, VARIANT context, VARIANT* existingContext) PutContext;
				public new function HRESULT(ITsSbClientConnection *self, BSTR contextId, VARIANT* context) GetContext;
				public new function HRESULT(ITsSbClientConnection *self, ITsSbEnvironment** ppEnvironment) get_Environment;
				public new function HRESULT(ITsSbClientConnection *self) get_ConnectionError;
				public new function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_SamUserAccount;
				public new function HRESULT(ITsSbClientConnection *self, ITsSbClientConnectionPropertySet** ppPropertySet) get_ClientConnectionPropertySet;
				public new function HRESULT(ITsSbClientConnection *self, BOOL* ppVal) get_IsFirstAssignment;
				public new function HRESULT(ITsSbClientConnection *self, RD_FARM_TYPE* pRdFarmType) get_RdFarmType;
				public new function HRESULT(ITsSbClientConnection *self, int8** pszUserSidString) get_UserSidString;
				public new function HRESULT(ITsSbClientConnection *self, ITsSbSession** ppSession) GetDisconnectedSession;
			}
		}
		[CRepr]
		public struct ITsSbProvider : IUnknown
		{
			public const new Guid IID = .(0x87a4098f, 0x6d7b, 0x44dd, 0xbc, 0x17, 0x8c, 0xe4, 0x4e, 0x37, 0x0d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTargetObject(BSTR TargetName, BSTR EnvironmentName, ITsSbTarget** ppTarget) mut
			{
				return VT.CreateTargetObject(&this, TargetName, EnvironmentName, ppTarget);
			}
			public HRESULT CreateLoadBalanceResultObject(BSTR TargetName, ITsSbLoadBalanceResult** ppLBResult) mut
			{
				return VT.CreateLoadBalanceResultObject(&this, TargetName, ppLBResult);
			}
			public HRESULT CreateSessionObject(BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, ITsSbSession** ppSession) mut
			{
				return VT.CreateSessionObject(&this, TargetName, UserName, Domain, SessionId, ppSession);
			}
			public HRESULT CreatePluginPropertySet(ITsSbPluginPropertySet** ppPropertySet) mut
			{
				return VT.CreatePluginPropertySet(&this, ppPropertySet);
			}
			public HRESULT CreateTargetPropertySetObject(ITsSbTargetPropertySet** ppPropertySet) mut
			{
				return VT.CreateTargetPropertySetObject(&this, ppPropertySet);
			}
			public HRESULT CreateEnvironmentObject(BSTR Name, uint32 ServerWeight, ITsSbEnvironment** ppEnvironment) mut
			{
				return VT.CreateEnvironmentObject(&this, Name, ServerWeight, ppEnvironment);
			}
			public HRESULT GetResourcePluginStore(ITsSbResourcePluginStore** ppStore) mut
			{
				return VT.GetResourcePluginStore(&this, ppStore);
			}
			public HRESULT GetFilterPluginStore(ITsSbFilterPluginStore** ppStore) mut
			{
				return VT.GetFilterPluginStore(&this, ppStore);
			}
			public HRESULT RegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor, ITsSbResourceNotification* pPluginNotification) mut
			{
				return VT.RegisterForNotification(&this, notificationType, ResourceToMonitor, pPluginNotification);
			}
			public HRESULT UnRegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor) mut
			{
				return VT.UnRegisterForNotification(&this, notificationType, ResourceToMonitor);
			}
			public HRESULT GetInstanceOfGlobalStore(ITsSbGlobalStore** ppGlobalStore) mut
			{
				return VT.GetInstanceOfGlobalStore(&this, ppGlobalStore);
			}
			public HRESULT CreateEnvironmentPropertySetObject(ITsSbEnvironmentPropertySet** ppPropertySet) mut
			{
				return VT.CreateEnvironmentPropertySetObject(&this, ppPropertySet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbProvider *self, BSTR TargetName, BSTR EnvironmentName, ITsSbTarget** ppTarget) CreateTargetObject;
				public new function HRESULT(ITsSbProvider *self, BSTR TargetName, ITsSbLoadBalanceResult** ppLBResult) CreateLoadBalanceResultObject;
				public new function HRESULT(ITsSbProvider *self, BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, ITsSbSession** ppSession) CreateSessionObject;
				public new function HRESULT(ITsSbProvider *self, ITsSbPluginPropertySet** ppPropertySet) CreatePluginPropertySet;
				public new function HRESULT(ITsSbProvider *self, ITsSbTargetPropertySet** ppPropertySet) CreateTargetPropertySetObject;
				public new function HRESULT(ITsSbProvider *self, BSTR Name, uint32 ServerWeight, ITsSbEnvironment** ppEnvironment) CreateEnvironmentObject;
				public new function HRESULT(ITsSbProvider *self, ITsSbResourcePluginStore** ppStore) GetResourcePluginStore;
				public new function HRESULT(ITsSbProvider *self, ITsSbFilterPluginStore** ppStore) GetFilterPluginStore;
				public new function HRESULT(ITsSbProvider *self, uint32 notificationType, BSTR ResourceToMonitor, ITsSbResourceNotification* pPluginNotification) RegisterForNotification;
				public new function HRESULT(ITsSbProvider *self, uint32 notificationType, BSTR ResourceToMonitor) UnRegisterForNotification;
				public new function HRESULT(ITsSbProvider *self, ITsSbGlobalStore** ppGlobalStore) GetInstanceOfGlobalStore;
				public new function HRESULT(ITsSbProvider *self, ITsSbEnvironmentPropertySet** ppPropertySet) CreateEnvironmentPropertySetObject;
			}
		}
		[CRepr]
		public struct ITsSbResourcePluginStore : IUnknown
		{
			public const new Guid IID = .(0x5c38f65f, 0xbcf1, 0x4036, 0xa6, 0xbf, 0x9e, 0x3c, 0xcc, 0xae, 0x0b, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryTarget(BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) mut
			{
				return VT.QueryTarget(&this, TargetName, FarmName, ppTarget);
			}
			public HRESULT QuerySessionBySessionId(uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) mut
			{
				return VT.QuerySessionBySessionId(&this, dwSessionId, TargetName, ppSession);
			}
			public HRESULT AddTargetToStore(ITsSbTarget* pTarget) mut
			{
				return VT.AddTargetToStore(&this, pTarget);
			}
			public HRESULT AddSessionToStore(ITsSbSession* pSession) mut
			{
				return VT.AddSessionToStore(&this, pSession);
			}
			public HRESULT AddEnvironmentToStore(ITsSbEnvironment* pEnvironment) mut
			{
				return VT.AddEnvironmentToStore(&this, pEnvironment);
			}
			public HRESULT RemoveEnvironmentFromStore(BSTR EnvironmentName, BOOL bIgnoreOwner) mut
			{
				return VT.RemoveEnvironmentFromStore(&this, EnvironmentName, bIgnoreOwner);
			}
			public HRESULT EnumerateFarms(uint32* pdwCount, SAFEARRAY** pVal) mut
			{
				return VT.EnumerateFarms(&this, pdwCount, pVal);
			}
			public HRESULT QueryEnvironment(BSTR EnvironmentName, ITsSbEnvironment** ppEnvironment) mut
			{
				return VT.QueryEnvironment(&this, EnvironmentName, ppEnvironment);
			}
			public HRESULT EnumerateEnvironments(uint32* pdwCount, ITsSbEnvironment*** pVal) mut
			{
				return VT.EnumerateEnvironments(&this, pdwCount, pVal);
			}
			public HRESULT SaveTarget(ITsSbTarget* pTarget, BOOL bForceWrite) mut
			{
				return VT.SaveTarget(&this, pTarget, bForceWrite);
			}
			public HRESULT SaveEnvironment(ITsSbEnvironment* pEnvironment, BOOL bForceWrite) mut
			{
				return VT.SaveEnvironment(&this, pEnvironment, bForceWrite);
			}
			public HRESULT SaveSession(ITsSbSession* pSession) mut
			{
				return VT.SaveSession(&this, pSession);
			}
			public HRESULT SetTargetProperty(BSTR TargetName, BSTR PropertyName, VARIANT* pProperty) mut
			{
				return VT.SetTargetProperty(&this, TargetName, PropertyName, pProperty);
			}
			public HRESULT SetEnvironmentProperty(BSTR EnvironmentName, BSTR PropertyName, VARIANT* pProperty) mut
			{
				return VT.SetEnvironmentProperty(&this, EnvironmentName, PropertyName, pProperty);
			}
			public HRESULT SetTargetState(BSTR targetName, TARGET_STATE newState, TARGET_STATE* pOldState) mut
			{
				return VT.SetTargetState(&this, targetName, newState, pOldState);
			}
			public HRESULT SetSessionState(ITsSbSession* sbSession) mut
			{
				return VT.SetSessionState(&this, sbSession);
			}
			public HRESULT EnumerateTargets(BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, uint32* pdwCount, ITsSbTarget*** pVal) mut
			{
				return VT.EnumerateTargets(&this, FarmName, EnvName, sortByFieldId, sortyByPropName, pdwCount, pVal);
			}
			public HRESULT EnumerateSessions(BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) mut
			{
				return VT.EnumerateSessions(&this, targetName, userName, userDomain, poolName, initialProgram, pSessionState, pdwCount, ppVal);
			}
			public HRESULT GetFarmProperty(BSTR farmName, BSTR propertyName, VARIANT* pVarValue) mut
			{
				return VT.GetFarmProperty(&this, farmName, propertyName, pVarValue);
			}
			public HRESULT DeleteTarget(BSTR targetName, BSTR hostName) mut
			{
				return VT.DeleteTarget(&this, targetName, hostName);
			}
			public HRESULT SetTargetPropertyWithVersionCheck(ITsSbTarget* pTarget, BSTR PropertyName, VARIANT* pProperty) mut
			{
				return VT.SetTargetPropertyWithVersionCheck(&this, pTarget, PropertyName, pProperty);
			}
			public HRESULT SetEnvironmentPropertyWithVersionCheck(ITsSbEnvironment* pEnvironment, BSTR PropertyName, VARIANT* pProperty) mut
			{
				return VT.SetEnvironmentPropertyWithVersionCheck(&this, pEnvironment, PropertyName, pProperty);
			}
			public HRESULT AcquireTargetLock(BSTR targetName, uint32 dwTimeout, IUnknown** ppContext) mut
			{
				return VT.AcquireTargetLock(&this, targetName, dwTimeout, ppContext);
			}
			public HRESULT ReleaseTargetLock(IUnknown* pContext) mut
			{
				return VT.ReleaseTargetLock(&this, pContext);
			}
			public HRESULT TestAndSetServerState(BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, TARGET_STATE* pInitState) mut
			{
				return VT.TestAndSetServerState(&this, PoolName, ServerFQDN, NewState, TestState, pInitState);
			}
			public HRESULT SetServerWaitingToStart(BSTR PoolName, BSTR serverName) mut
			{
				return VT.SetServerWaitingToStart(&this, PoolName, serverName);
			}
			public HRESULT GetServerState(BSTR PoolName, BSTR ServerFQDN, TARGET_STATE* pState) mut
			{
				return VT.GetServerState(&this, PoolName, ServerFQDN, pState);
			}
			public HRESULT SetServerDrainMode(BSTR ServerFQDN, uint32 DrainMode) mut
			{
				return VT.SetServerDrainMode(&this, ServerFQDN, DrainMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) QueryTarget;
				public new function HRESULT(ITsSbResourcePluginStore *self, uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) QuerySessionBySessionId;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget) AddTargetToStore;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* pSession) AddSessionToStore;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment) AddEnvironmentToStore;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, BOOL bIgnoreOwner) RemoveEnvironmentFromStore;
				public new function HRESULT(ITsSbResourcePluginStore *self, uint32* pdwCount, SAFEARRAY** pVal) EnumerateFarms;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, ITsSbEnvironment** ppEnvironment) QueryEnvironment;
				public new function HRESULT(ITsSbResourcePluginStore *self, uint32* pdwCount, ITsSbEnvironment*** pVal) EnumerateEnvironments;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget, BOOL bForceWrite) SaveTarget;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment, BOOL bForceWrite) SaveEnvironment;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* pSession) SaveSession;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR TargetName, BSTR PropertyName, VARIANT* pProperty) SetTargetProperty;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, BSTR PropertyName, VARIANT* pProperty) SetEnvironmentProperty;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, TARGET_STATE newState, TARGET_STATE* pOldState) SetTargetState;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* sbSession) SetSessionState;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, uint32* pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR farmName, BSTR propertyName, VARIANT* pVarValue) GetFarmProperty;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, BSTR hostName) DeleteTarget;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget, BSTR PropertyName, VARIANT* pProperty) SetTargetPropertyWithVersionCheck;
				public new function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment, BSTR PropertyName, VARIANT* pProperty) SetEnvironmentPropertyWithVersionCheck;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, uint32 dwTimeout, IUnknown** ppContext) AcquireTargetLock;
				public new function HRESULT(ITsSbResourcePluginStore *self, IUnknown* pContext) ReleaseTargetLock;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, TARGET_STATE* pInitState) TestAndSetServerState;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR serverName) SetServerWaitingToStart;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE* pState) GetServerState;
				public new function HRESULT(ITsSbResourcePluginStore *self, BSTR ServerFQDN, uint32 DrainMode) SetServerDrainMode;
			}
		}
		[CRepr]
		public struct ITsSbFilterPluginStore : IUnknown
		{
			public const new Guid IID = .(0x85b44b0f, 0xed78, 0x413f, 0x97, 0x02, 0xfa, 0x6d, 0x3b, 0x5e, 0xe7, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SaveProperties(ITsSbPropertySet* pPropertySet) mut
			{
				return VT.SaveProperties(&this, pPropertySet);
			}
			public HRESULT EnumerateProperties(ITsSbPropertySet** ppPropertySet) mut
			{
				return VT.EnumerateProperties(&this, ppPropertySet);
			}
			public HRESULT DeleteProperties(BSTR propertyName) mut
			{
				return VT.DeleteProperties(&this, propertyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbFilterPluginStore *self, ITsSbPropertySet* pPropertySet) SaveProperties;
				public new function HRESULT(ITsSbFilterPluginStore *self, ITsSbPropertySet** ppPropertySet) EnumerateProperties;
				public new function HRESULT(ITsSbFilterPluginStore *self, BSTR propertyName) DeleteProperties;
			}
		}
		[CRepr]
		public struct ITsSbGlobalStore : IUnknown
		{
			public const new Guid IID = .(0x9ab60f7b, 0xbd72, 0x4d9f, 0x8a, 0x3a, 0xa0, 0xea, 0x55, 0x74, 0xe6, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryTarget(BSTR ProviderName, BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) mut
			{
				return VT.QueryTarget(&this, ProviderName, TargetName, FarmName, ppTarget);
			}
			public HRESULT QuerySessionBySessionId(BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) mut
			{
				return VT.QuerySessionBySessionId(&this, ProviderName, dwSessionId, TargetName, ppSession);
			}
			public HRESULT EnumerateFarms(BSTR ProviderName, uint32* pdwCount, SAFEARRAY** pVal) mut
			{
				return VT.EnumerateFarms(&this, ProviderName, pdwCount, pVal);
			}
			public HRESULT EnumerateTargets(BSTR ProviderName, BSTR FarmName, BSTR EnvName, uint32* pdwCount, ITsSbTarget*** pVal) mut
			{
				return VT.EnumerateTargets(&this, ProviderName, FarmName, EnvName, pdwCount, pVal);
			}
			public HRESULT EnumerateEnvironmentsByProvider(BSTR ProviderName, uint32* pdwCount, ITsSbEnvironment*** ppVal) mut
			{
				return VT.EnumerateEnvironmentsByProvider(&this, ProviderName, pdwCount, ppVal);
			}
			public HRESULT EnumerateSessions(BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) mut
			{
				return VT.EnumerateSessions(&this, ProviderName, targetName, userName, userDomain, poolName, initialProgram, pSessionState, pdwCount, ppVal);
			}
			public HRESULT GetFarmProperty(BSTR farmName, BSTR propertyName, VARIANT* pVarValue) mut
			{
				return VT.GetFarmProperty(&this, farmName, propertyName, pVarValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) QueryTarget;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) QuerySessionBySessionId;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32* pdwCount, SAFEARRAY** pVal) EnumerateFarms;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR FarmName, BSTR EnvName, uint32* pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32* pdwCount, ITsSbEnvironment*** ppVal) EnumerateEnvironmentsByProvider;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function HRESULT(ITsSbGlobalStore *self, BSTR farmName, BSTR propertyName, VARIANT* pVarValue) GetFarmProperty;
			}
		}
		[CRepr]
		public struct ITsSbProvisioningPluginNotifySink : IUnknown
		{
			public const new Guid IID = .(0xaca87a8e, 0x818b, 0x4581, 0xa0, 0x32, 0x49, 0xc3, 0xdf, 0xb9, 0xc7, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnJobCreated(VM_NOTIFY_INFO* pVmNotifyInfo) mut
			{
				return VT.OnJobCreated(&this, pVmNotifyInfo);
			}
			public HRESULT OnVirtualMachineStatusChanged(VM_NOTIFY_ENTRY* pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) mut
			{
				return VT.OnVirtualMachineStatusChanged(&this, pVmNotifyEntry, VmNotifyStatus, ErrorCode, ErrorDescr);
			}
			public HRESULT OnJobCompleted(HRESULT ResultCode, BSTR ResultDescription) mut
			{
				return VT.OnJobCompleted(&this, ResultCode, ResultDescription);
			}
			public HRESULT OnJobCancelled() mut
			{
				return VT.OnJobCancelled(&this);
			}
			public HRESULT LockVirtualMachine(VM_NOTIFY_ENTRY* pVmNotifyEntry) mut
			{
				return VT.LockVirtualMachine(&this, pVmNotifyEntry);
			}
			public HRESULT OnVirtualMachineHostStatusChanged(BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) mut
			{
				return VT.OnVirtualMachineHostStatusChanged(&this, VmHost, VmHostNotifyStatus, ErrorCode, ErrorDescr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_INFO* pVmNotifyInfo) OnJobCreated;
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_ENTRY* pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineStatusChanged;
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self, HRESULT ResultCode, BSTR ResultDescription) OnJobCompleted;
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self) OnJobCancelled;
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_ENTRY* pVmNotifyEntry) LockVirtualMachine;
				public new function HRESULT(ITsSbProvisioningPluginNotifySink *self, BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineHostStatusChanged;
			}
		}
		[CRepr]
		public struct ITsSbProvisioning : ITsSbPlugin
		{
			public const new Guid IID = .(0x2f6f0dbb, 0x9e4f, 0x462b, 0x9c, 0x3f, 0xfc, 0xcc, 0x3d, 0xcb, 0x62, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) mut
			{
				return VT.CreateVirtualMachines(&this, JobXmlString, JobGuid, pSink);
			}
			public HRESULT PatchVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink, VM_PATCH_INFO* pVMPatchInfo) mut
			{
				return VT.PatchVirtualMachines(&this, JobXmlString, JobGuid, pSink, pVMPatchInfo);
			}
			public HRESULT DeleteVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) mut
			{
				return VT.DeleteVirtualMachines(&this, JobXmlString, JobGuid, pSink);
			}
			public HRESULT CancelJob(BSTR JobGuid) mut
			{
				return VT.CancelJob(&this, JobGuid);
			}
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) CreateVirtualMachines;
				public new function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink, VM_PATCH_INFO* pVMPatchInfo) PatchVirtualMachines;
				public new function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) DeleteVirtualMachines;
				public new function HRESULT(ITsSbProvisioning *self, BSTR JobGuid) CancelJob;
			}
		}
		[CRepr]
		public struct ITsSbGenericNotifySink : IUnknown
		{
			public const new Guid IID = .(0x4c4c8c4f, 0x300b, 0x46ad, 0x91, 0x64, 0x84, 0x68, 0xa7, 0xe7, 0x56, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCompleted(HRESULT Status) mut
			{
				return VT.OnCompleted(&this, Status);
			}
			public HRESULT GetWaitTimeout(FILETIME* pftTimeout) mut
			{
				return VT.GetWaitTimeout(&this, pftTimeout);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITsSbGenericNotifySink *self, HRESULT Status) OnCompleted;
				public new function HRESULT(ITsSbGenericNotifySink *self, FILETIME* pftTimeout) GetWaitTimeout;
			}
		}
		[CRepr]
		public struct ItsPubPlugin : IUnknown
		{
			public const new Guid IID = .(0x70c04b05, 0xf347, 0x412b, 0x82, 0x2f, 0x36, 0xc9, 0x9c, 0x54, 0xca, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResourceList(PWSTR userID, int32* pceAppListSize, pluginResource** resourceList) mut
			{
				return VT.GetResourceList(&this, userID, pceAppListSize, resourceList);
			}
			public HRESULT GetResource(PWSTR alias, int32 flags, pluginResource* resource) mut
			{
				return VT.GetResource(&this, alias, flags, resource);
			}
			public HRESULT GetCacheLastUpdateTime(uint64* lastUpdateTime) mut
			{
				return VT.GetCacheLastUpdateTime(&this, lastUpdateTime);
			}
			public HRESULT get_pluginName(BSTR* pVal) mut
			{
				return VT.get_pluginName(&this, pVal);
			}
			public HRESULT get_pluginVersion(BSTR* pVal) mut
			{
				return VT.get_pluginVersion(&this, pVal);
			}
			public HRESULT ResolveResource(uint32* resourceType, PWSTR resourceLocation, PWSTR endPointName, PWSTR userID, PWSTR alias) mut
			{
				return VT.ResolveResource(&this, resourceType, resourceLocation, endPointName, userID, alias);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ItsPubPlugin *self, PWSTR userID, int32* pceAppListSize, pluginResource** resourceList) GetResourceList;
				public new function HRESULT(ItsPubPlugin *self, PWSTR alias, int32 flags, pluginResource* resource) GetResource;
				public new function HRESULT(ItsPubPlugin *self, uint64* lastUpdateTime) GetCacheLastUpdateTime;
				public new function HRESULT(ItsPubPlugin *self, BSTR* pVal) get_pluginName;
				public new function HRESULT(ItsPubPlugin *self, BSTR* pVal) get_pluginVersion;
				public new function HRESULT(ItsPubPlugin *self, uint32* resourceType, PWSTR resourceLocation, PWSTR endPointName, PWSTR userID, PWSTR alias) ResolveResource;
			}
		}
		[CRepr]
		public struct ItsPubPlugin2 : ItsPubPlugin
		{
			public const new Guid IID = .(0xfa4ce418, 0xaad7, 0x4ec6, 0xba, 0xd1, 0x0a, 0x32, 0x1b, 0xa4, 0x65, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResource2List(PWSTR userID, int32* pceAppListSize, pluginResource2** resourceList) mut
			{
				return VT.GetResource2List(&this, userID, pceAppListSize, resourceList);
			}
			public HRESULT GetResource2(PWSTR alias, int32 flags, pluginResource2* resource) mut
			{
				return VT.GetResource2(&this, alias, flags, resource);
			}
			public HRESULT ResolvePersonalDesktop(PWSTR userId, PWSTR poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE* pPdAssignmentType, PWSTR endPointName) mut
			{
				return VT.ResolvePersonalDesktop(&this, userId, poolId, ePdResolutionType, pPdAssignmentType, endPointName);
			}
			public HRESULT DeletePersonalDesktopAssignment(PWSTR userId, PWSTR poolId, PWSTR endpointName) mut
			{
				return VT.DeletePersonalDesktopAssignment(&this, userId, poolId, endpointName);
			}
			[CRepr]
			public struct VTable : ItsPubPlugin.VTable
			{
				public new function HRESULT(ItsPubPlugin2 *self, PWSTR userID, int32* pceAppListSize, pluginResource2** resourceList) GetResource2List;
				public new function HRESULT(ItsPubPlugin2 *self, PWSTR alias, int32 flags, pluginResource2* resource) GetResource2;
				public new function HRESULT(ItsPubPlugin2 *self, PWSTR userId, PWSTR poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE* pPdAssignmentType, PWSTR endPointName) ResolvePersonalDesktop;
				public new function HRESULT(ItsPubPlugin2 *self, PWSTR userId, PWSTR poolId, PWSTR endpointName) DeletePersonalDesktopAssignment;
			}
		}
		[CRepr]
		public struct IWorkspaceResTypeRegistry : IDispatch
		{
			public const new Guid IID = .(0x1d428c79, 0x6e2e, 0x4351, 0xa3, 0x61, 0xc0, 0x40, 0x1a, 0x03, 0xa0, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut
			{
				return VT.AddResourceType(&this, fMachineWide, bstrFileExtension, bstrLauncher);
			}
			public HRESULT DeleteResourceType(int16 fMachineWide, BSTR bstrFileExtension) mut
			{
				return VT.DeleteResourceType(&this, fMachineWide, bstrFileExtension);
			}
			public HRESULT GetRegisteredFileExtensions(int16 fMachineWide, SAFEARRAY** psaFileExtensions) mut
			{
				return VT.GetRegisteredFileExtensions(&this, fMachineWide, psaFileExtensions);
			}
			public HRESULT GetResourceTypeInfo(int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) mut
			{
				return VT.GetResourceTypeInfo(&this, fMachineWide, bstrFileExtension, pbstrLauncher);
			}
			public HRESULT ModifyResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut
			{
				return VT.ModifyResourceType(&this, fMachineWide, bstrFileExtension, bstrLauncher);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) AddResourceType;
				public new function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension) DeleteResourceType;
				public new function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, SAFEARRAY** psaFileExtensions) GetRegisteredFileExtensions;
				public new function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) GetResourceTypeInfo;
				public new function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) ModifyResourceType;
			}
		}
		[CRepr]
		public struct IWTSPlugin : IUnknown
		{
			public const new Guid IID = .(0xa1230201, 0x1439, 0x4e62, 0xa4, 0x14, 0x19, 0x0d, 0x0a, 0xc3, 0xd4, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IWTSVirtualChannelManager* pChannelMgr) mut
			{
				return VT.Initialize(&this, pChannelMgr);
			}
			public HRESULT Connected() mut
			{
				return VT.Connected(&this);
			}
			public HRESULT Disconnected(uint32 dwDisconnectCode) mut
			{
				return VT.Disconnected(&this, dwDisconnectCode);
			}
			public HRESULT Terminated() mut
			{
				return VT.Terminated(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSPlugin *self, IWTSVirtualChannelManager* pChannelMgr) Initialize;
				public new function HRESULT(IWTSPlugin *self) Connected;
				public new function HRESULT(IWTSPlugin *self, uint32 dwDisconnectCode) Disconnected;
				public new function HRESULT(IWTSPlugin *self) Terminated;
			}
		}
		[CRepr]
		public struct IWTSListener : IUnknown
		{
			public const new Guid IID = .(0xa1230206, 0x9a39, 0x4d58, 0x86, 0x74, 0xcd, 0xb4, 0xdf, 0xf4, 0xe7, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConfiguration(IPropertyBag** ppPropertyBag) mut
			{
				return VT.GetConfiguration(&this, ppPropertyBag);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSListener *self, IPropertyBag** ppPropertyBag) GetConfiguration;
			}
		}
		[CRepr]
		public struct IWTSListenerCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230203, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNewChannelConnection(IWTSVirtualChannel* pChannel, BSTR data, BOOL* pbAccept, IWTSVirtualChannelCallback** ppCallback) mut
			{
				return VT.OnNewChannelConnection(&this, pChannel, data, pbAccept, ppCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSListenerCallback *self, IWTSVirtualChannel* pChannel, BSTR data, BOOL* pbAccept, IWTSVirtualChannelCallback** ppCallback) OnNewChannelConnection;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230204, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDataReceived(uint32 cbSize, uint8* pBuffer) mut
			{
				return VT.OnDataReceived(&this, cbSize, pBuffer);
			}
			public HRESULT OnClose() mut
			{
				return VT.OnClose(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSVirtualChannelCallback *self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
				public new function HRESULT(IWTSVirtualChannelCallback *self) OnClose;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelManager : IUnknown
		{
			public const new Guid IID = .(0xa1230205, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateListener(uint8* pszChannelName, uint32 uFlags, IWTSListenerCallback* pListenerCallback, IWTSListener** ppListener) mut
			{
				return VT.CreateListener(&this, pszChannelName, uFlags, pListenerCallback, ppListener);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSVirtualChannelManager *self, uint8* pszChannelName, uint32 uFlags, IWTSListenerCallback* pListenerCallback, IWTSListener** ppListener) CreateListener;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannel : IUnknown
		{
			public const new Guid IID = .(0xa1230207, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint32 cbSize, uint8* pBuffer, IUnknown* pReserved) mut
			{
				return VT.Write(&this, cbSize, pBuffer, pReserved);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSVirtualChannel *self, uint32 cbSize, uint8* pBuffer, IUnknown* pReserved) Write;
				public new function HRESULT(IWTSVirtualChannel *self) Close;
			}
		}
		[CRepr]
		public struct IWTSPluginServiceProvider : IUnknown
		{
			public const new Guid IID = .(0xd3e07363, 0x087c, 0x476c, 0x86, 0xa7, 0xdb, 0xb1, 0x5f, 0x46, 0xdd, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(Guid ServiceId, IUnknown** ppunkObject) mut
			{
				return VT.GetService(&this, ServiceId, ppunkObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSPluginServiceProvider *self, Guid ServiceId, IUnknown** ppunkObject) GetService;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderer : IUnknown
		{
			public const new Guid IID = .(0x5b7acc97, 0xf3c9, 0x46f7, 0x8c, 0x5b, 0xfa, 0x68, 0x5d, 0x34, 0x41, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Render(Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) mut
			{
				return VT.Render(&this, imageFormat, dwWidth, dwHeight, cbStride, cbImageBuffer, pImageBuffer);
			}
			public HRESULT GetRendererStatistics(BITMAP_RENDERER_STATISTICS* pStatistics) mut
			{
				return VT.GetRendererStatistics(&this, pStatistics);
			}
			public HRESULT RemoveMapping() mut
			{
				return VT.RemoveMapping(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSBitmapRenderer *self, Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) Render;
				public new function HRESULT(IWTSBitmapRenderer *self, BITMAP_RENDERER_STATISTICS* pStatistics) GetRendererStatistics;
				public new function HRESULT(IWTSBitmapRenderer *self) RemoveMapping;
			}
		}
		[CRepr]
		public struct IWTSBitmapRendererCallback : IUnknown
		{
			public const new Guid IID = .(0xd782928e, 0xfe4e, 0x4e77, 0xae, 0x90, 0x9c, 0xd0, 0xb3, 0xe3, 0xb3, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTargetSizeChanged(RECT rcNewSize) mut
			{
				return VT.OnTargetSizeChanged(&this, rcNewSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSBitmapRendererCallback *self, RECT rcNewSize) OnTargetSizeChanged;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderService : IUnknown
		{
			public const new Guid IID = .(0xea326091, 0x05fe, 0x40c1, 0xb4, 0x9c, 0x3d, 0x2e, 0xf4, 0x62, 0x6a, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMappedRenderer(uint64 mappingId, IWTSBitmapRendererCallback* pMappedRendererCallback, IWTSBitmapRenderer** ppMappedRenderer) mut
			{
				return VT.GetMappedRenderer(&this, mappingId, pMappedRendererCallback, ppMappedRenderer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSBitmapRenderService *self, uint64 mappingId, IWTSBitmapRendererCallback* pMappedRendererCallback, IWTSBitmapRenderer** ppMappedRenderer) GetMappedRenderer;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelEvents : IUnknown
		{
			public const new Guid IID = .(0x67f2368c, 0xd674, 0x4fae, 0x66, 0xa5, 0xd2, 0x06, 0x28, 0xa6, 0x40, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDataReceived(uint32 cbSize, uint8* pBuffer) mut
			{
				return VT.OnDataReceived(&this, cbSize, pBuffer);
			}
			public HRESULT OnClose() mut
			{
				return VT.OnClose(&this);
			}
			public HRESULT OnChannelOpened(HRESULT OpenResult, IUnknown* pOpenContext) mut
			{
				return VT.OnChannelOpened(&this, OpenResult, pOpenContext);
			}
			public HRESULT OnDataSent(IUnknown* pWriteContext, BOOL bCancelled, uint8* pBuffer, uint32 cbBuffer) mut
			{
				return VT.OnDataSent(&this, pWriteContext, bCancelled, pBuffer, cbBuffer);
			}
			public HRESULT OnMetricsUpdate(uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) mut
			{
				return VT.OnMetricsUpdate(&this, bandwidth, RTT, lastSentByteIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsGraphicsChannelEvents *self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
				public new function HRESULT(IWRdsGraphicsChannelEvents *self) OnClose;
				public new function HRESULT(IWRdsGraphicsChannelEvents *self, HRESULT OpenResult, IUnknown* pOpenContext) OnChannelOpened;
				public new function HRESULT(IWRdsGraphicsChannelEvents *self, IUnknown* pWriteContext, BOOL bCancelled, uint8* pBuffer, uint32 cbBuffer) OnDataSent;
				public new function HRESULT(IWRdsGraphicsChannelEvents *self, uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) OnMetricsUpdate;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannel : IUnknown
		{
			public const new Guid IID = .(0x684b7a0b, 0xedff, 0x43ad, 0xd5, 0xa2, 0x4a, 0x8d, 0x53, 0x88, 0xf4, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint32 cbSize, uint8* pBuffer, IUnknown* pContext) mut
			{
				return VT.Write(&this, cbSize, pBuffer, pContext);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT Open(IWRdsGraphicsChannelEvents* pChannelEvents, IUnknown* pOpenContext) mut
			{
				return VT.Open(&this, pChannelEvents, pOpenContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsGraphicsChannel *self, uint32 cbSize, uint8* pBuffer, IUnknown* pContext) Write;
				public new function HRESULT(IWRdsGraphicsChannel *self) Close;
				public new function HRESULT(IWRdsGraphicsChannel *self, IWRdsGraphicsChannelEvents* pChannelEvents, IUnknown* pOpenContext) Open;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelManager : IUnknown
		{
			public const new Guid IID = .(0x0fd57159, 0xe83e, 0x476a, 0xa8, 0xb9, 0x4a, 0x79, 0x76, 0xe7, 0x1e, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateChannel(uint8* pszChannelName, WRdsGraphicsChannelType channelType, IWRdsGraphicsChannel** ppVirtualChannel) mut
			{
				return VT.CreateChannel(&this, pszChannelName, channelType, ppVirtualChannel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsGraphicsChannelManager *self, uint8* pszChannelName, WRdsGraphicsChannelType channelType, IWRdsGraphicsChannel** ppVirtualChannel) CreateChannel;
			}
		}
		[CRepr]
		public struct IWTSProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xf9eaf6cc, 0xed79, 0x4f01, 0x82, 0x1d, 0x1f, 0x88, 0x1b, 0x9f, 0x66, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateListener(PWSTR wszListenerName, IWTSProtocolListener** pProtocolListener) mut
			{
				return VT.CreateListener(&this, wszListenerName, pProtocolListener);
			}
			public HRESULT NotifyServiceStateChange(WTS_SERVICE_STATE* pTSServiceStateChange) mut
			{
				return VT.NotifyServiceStateChange(&this, pTSServiceStateChange);
			}
			public HRESULT NotifySessionOfServiceStart(WTS_SESSION_ID* SessionId) mut
			{
				return VT.NotifySessionOfServiceStart(&this, SessionId);
			}
			public HRESULT NotifySessionOfServiceStop(WTS_SESSION_ID* SessionId) mut
			{
				return VT.NotifySessionOfServiceStop(&this, SessionId);
			}
			public HRESULT NotifySessionStateChange(WTS_SESSION_ID* SessionId, uint32 EventId) mut
			{
				return VT.NotifySessionStateChange(&this, SessionId, EventId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolManager *self, PWSTR wszListenerName, IWTSProtocolListener** pProtocolListener) CreateListener;
				public new function HRESULT(IWTSProtocolManager *self, WTS_SERVICE_STATE* pTSServiceStateChange) NotifyServiceStateChange;
				public new function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStart;
				public new function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStop;
				public new function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId, uint32 EventId) NotifySessionStateChange;
			}
		}
		[CRepr]
		public struct IWTSProtocolListener : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x45f0, 0x4394, 0x8f, 0x69, 0x32, 0xb2, 0xbc, 0x0e, 0xf4, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListen(IWTSProtocolListenerCallback* pCallback) mut
			{
				return VT.StartListen(&this, pCallback);
			}
			public HRESULT StopListen() mut
			{
				return VT.StopListen(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolListener *self, IWTSProtocolListenerCallback* pCallback) StartListen;
				public new function HRESULT(IWTSProtocolListener *self) StopListen;
			}
		}
		[CRepr]
		public struct IWTSProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x1a2d, 0x4de2, 0x97, 0xde, 0x4a, 0x35, 0xf2, 0x60, 0xf0, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnected(IWTSProtocolConnection* pConnection, IWTSProtocolConnectionCallback** pCallback) mut
			{
				return VT.OnConnected(&this, pConnection, pCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolListenerCallback *self, IWTSProtocolConnection* pConnection, IWTSProtocolConnectionCallback** pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x9095, 0x4648, 0x98, 0xbf, 0xef, 0x81, 0xc9, 0x14, 0x03, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogonErrorRedirector(IWTSProtocolLogonErrorRedirector** ppLogonErrorRedir) mut
			{
				return VT.GetLogonErrorRedirector(&this, ppLogonErrorRedir);
			}
			public HRESULT SendPolicyData(WTS_POLICY_DATA* pPolicyData) mut
			{
				return VT.SendPolicyData(&this, pPolicyData);
			}
			public HRESULT AcceptConnection() mut
			{
				return VT.AcceptConnection(&this);
			}
			public HRESULT GetClientData(WTS_CLIENT_DATA* pClientData) mut
			{
				return VT.GetClientData(&this, pClientData);
			}
			public HRESULT GetUserCredentials(WTS_USER_CREDENTIAL* pUserCreds) mut
			{
				return VT.GetUserCredentials(&this, pUserCreds);
			}
			public HRESULT GetLicenseConnection(IWTSProtocolLicenseConnection** ppLicenseConnection) mut
			{
				return VT.GetLicenseConnection(&this, ppLicenseConnection);
			}
			public HRESULT AuthenticateClientToSession(WTS_SESSION_ID* SessionId) mut
			{
				return VT.AuthenticateClientToSession(&this, SessionId);
			}
			public HRESULT NotifySessionId(WTS_SESSION_ID* SessionId) mut
			{
				return VT.NotifySessionId(&this, SessionId);
			}
			public HRESULT GetProtocolHandles(HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle, HANDLE_PTR* pVideoHandle) mut
			{
				return VT.GetProtocolHandles(&this, pKeyboardHandle, pMouseHandle, pBeepHandle, pVideoHandle);
			}
			public HRESULT ConnectNotify(uint32 SessionId) mut
			{
				return VT.ConnectNotify(&this, SessionId);
			}
			public HRESULT IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) mut
			{
				return VT.IsUserAllowedToLogon(&this, SessionId, UserToken, pDomainName, pUserName);
			}
			public HRESULT SessionArbitrationEnumeration(HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) mut
			{
				return VT.SessionArbitrationEnumeration(&this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, pdwSessionIdentifierCount);
			}
			public HRESULT LogonNotify(HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId) mut
			{
				return VT.LogonNotify(&this, hClientToken, wszUserName, wszDomainName, SessionId);
			}
			public HRESULT GetUserData(WTS_POLICY_DATA* pPolicyData, WTS_USER_DATA* pClientData) mut
			{
				return VT.GetUserData(&this, pPolicyData, pClientData);
			}
			public HRESULT DisconnectNotify() mut
			{
				return VT.DisconnectNotify(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetProtocolStatus(WTS_PROTOCOL_STATUS* pProtocolStatus) mut
			{
				return VT.GetProtocolStatus(&this, pProtocolStatus);
			}
			public HRESULT GetLastInputTime(uint64* pLastInputTime) mut
			{
				return VT.GetLastInputTime(&this, pLastInputTime);
			}
			public HRESULT SetErrorInfo(uint32 ulError) mut
			{
				return VT.SetErrorInfo(&this, ulError);
			}
			public HRESULT SendBeep(uint32 Frequency, uint32 Duration) mut
			{
				return VT.SendBeep(&this, Frequency, Duration);
			}
			public HRESULT CreateVirtualChannel(PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) mut
			{
				return VT.CreateVirtualChannel(&this, szEndpointName, bStatic, RequestedPriority, phChannel);
			}
			public HRESULT QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut
			{
				return VT.QueryProperty(&this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			}
			public HRESULT GetShadowConnection(IWTSProtocolShadowConnection** ppShadowConnection) mut
			{
				return VT.GetShadowConnection(&this, ppShadowConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolConnection *self, IWTSProtocolLogonErrorRedirector** ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_POLICY_DATA* pPolicyData) SendPolicyData;
				public new function HRESULT(IWTSProtocolConnection *self) AcceptConnection;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_CLIENT_DATA* pClientData) GetClientData;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_USER_CREDENTIAL* pUserCreds) GetUserCredentials;
				public new function HRESULT(IWTSProtocolConnection *self, IWTSProtocolLicenseConnection** ppLicenseConnection) GetLicenseConnection;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_SESSION_ID* SessionId) AuthenticateClientToSession;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_SESSION_ID* SessionId) NotifySessionId;
				public new function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle, HANDLE_PTR* pVideoHandle) GetProtocolHandles;
				public new function HRESULT(IWTSProtocolConnection *self, uint32 SessionId) ConnectNotify;
				public new function HRESULT(IWTSProtocolConnection *self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
				public new function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId) LogonNotify;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_POLICY_DATA* pPolicyData, WTS_USER_DATA* pClientData) GetUserData;
				public new function HRESULT(IWTSProtocolConnection *self) DisconnectNotify;
				public new function HRESULT(IWTSProtocolConnection *self) Close;
				public new function HRESULT(IWTSProtocolConnection *self, WTS_PROTOCOL_STATUS* pProtocolStatus) GetProtocolStatus;
				public new function HRESULT(IWTSProtocolConnection *self, uint64* pLastInputTime) GetLastInputTime;
				public new function HRESULT(IWTSProtocolConnection *self, uint32 ulError) SetErrorInfo;
				public new function HRESULT(IWTSProtocolConnection *self, uint32 Frequency, uint32 Duration) SendBeep;
				public new function HRESULT(IWTSProtocolConnection *self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) CreateVirtualChannel;
				public new function HRESULT(IWTSProtocolConnection *self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function HRESULT(IWTSProtocolConnection *self, IWTSProtocolShadowConnection** ppShadowConnection) GetShadowConnection;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x75eb, 0x41fe, 0xb4, 0xfb, 0xe0, 0x86, 0x24, 0x2a, 0xfa, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReady() mut
			{
				return VT.OnReady(&this);
			}
			public HRESULT BrokenConnection(uint32 Reason, uint32 Source) mut
			{
				return VT.BrokenConnection(&this, Reason, Source);
			}
			public HRESULT StopScreenUpdates() mut
			{
				return VT.StopScreenUpdates(&this);
			}
			public HRESULT RedrawWindow(WTS_SMALL_RECT* rect) mut
			{
				return VT.RedrawWindow(&this, rect);
			}
			public HRESULT DisplayIOCtl(WTS_DISPLAY_IOCTL* DisplayIOCtl) mut
			{
				return VT.DisplayIOCtl(&this, DisplayIOCtl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolConnectionCallback *self) OnReady;
				public new function HRESULT(IWTSProtocolConnectionCallback *self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function HRESULT(IWTSProtocolConnectionCallback *self) StopScreenUpdates;
				public new function HRESULT(IWTSProtocolConnectionCallback *self, WTS_SMALL_RECT* rect) RedrawWindow;
				public new function HRESULT(IWTSProtocolConnectionCallback *self, WTS_DISPLAY_IOCTL* DisplayIOCtl) DisplayIOCtl;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0xee3b0c14, 0x37fb, 0x456b, 0xba, 0xb3, 0x6d, 0x6c, 0xd5, 0x1e, 0x13, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWTSProtocolShadowCallback* pShadowCallback) mut
			{
				return VT.Start(&this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, pShadowCallback);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut
			{
				return VT.DoTarget(&this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolShadowConnection *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWTSProtocolShadowCallback* pShadowCallback) Start;
				public new function HRESULT(IWTSProtocolShadowConnection *self) Stop;
				public new function HRESULT(IWTSProtocolShadowConnection *self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0x503a2504, 0xaae5, 0x4ab1, 0x93, 0xe0, 0x6d, 0x1c, 0x4b, 0xc6, 0xf7, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopShadow() mut
			{
				return VT.StopShadow(&this);
			}
			public HRESULT InvokeTargetShadow(PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut
			{
				return VT.InvokeTargetShadow(&this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolShadowCallback *self) StopShadow;
				public new function HRESULT(IWTSProtocolShadowCallback *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWTSProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x178c, 0x4079, 0x8e, 0x4a, 0xfe, 0xa6, 0x49, 0x6a, 0x4d, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestLicensingCapabilities(WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) mut
			{
				return VT.RequestLicensingCapabilities(&this, ppLicenseCapabilities, pcbLicenseCapabilities);
			}
			public HRESULT SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut
			{
				return VT.SendClientLicense(&this, pClientLicense, cbClientLicense);
			}
			public HRESULT RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) mut
			{
				return VT.RequestClientLicense(&this, Reserve1, Reserve2, ppClientLicense, pcbClientLicense);
			}
			public HRESULT ProtocolComplete(uint32 ulComplete) mut
			{
				return VT.ProtocolComplete(&this, ulComplete);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolLicenseConnection *self, WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function HRESULT(IWTSProtocolLicenseConnection *self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function HRESULT(IWTSProtocolLicenseConnection *self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) RequestClientLicense;
				public new function HRESULT(IWTSProtocolLicenseConnection *self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWTSProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0xfd9b61a7, 0x2916, 0x4627, 0x8d, 0xee, 0x43, 0x28, 0x71, 0x1a, 0xd6, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBeginPainting() mut
			{
				return VT.OnBeginPainting(&this);
			}
			public HRESULT RedirectStatus(PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectStatus(&this, pszMessage, pResponse);
			}
			public HRESULT RedirectMessage(PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectMessage(&this, pszCaption, pszMessage, uType, pResponse);
			}
			public HRESULT RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectLogonError(&this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, pResponse);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWTSProtocolLogonErrorRedirector *self) OnBeginPainting;
				public new function HRESULT(IWTSProtocolLogonErrorRedirector *self, PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectStatus;
				public new function HRESULT(IWTSProtocolLogonErrorRedirector *self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectMessage;
				public new function HRESULT(IWTSProtocolLogonErrorRedirector *self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsProtocolSettings : IUnknown
		{
			public const new Guid IID = .(0x654a5a6a, 0x2550, 0x47eb, 0xb6, 0xf7, 0xeb, 0xd6, 0x37, 0x47, 0x52, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, WRDS_SETTINGS* pWRdsSettings) mut
			{
				return VT.GetSettings(&this, WRdsSettingType, WRdsSettingLevel, pWRdsSettings);
			}
			public HRESULT MergeSettings(WRDS_SETTINGS* pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) mut
			{
				return VT.MergeSettings(&this, pWRdsSettings, WRdsConnectionSettingLevel, pWRdsConnectionSettings);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolSettings *self, WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, WRDS_SETTINGS* pWRdsSettings) GetSettings;
				public new function HRESULT(IWRdsProtocolSettings *self, WRDS_SETTINGS* pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) MergeSettings;
			}
		}
		[CRepr]
		public struct IWRdsProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xdc796967, 0x3abb, 0x40cd, 0xa4, 0x46, 0x10, 0x52, 0x76, 0xb5, 0x89, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IWRdsProtocolSettings* pIWRdsSettings, WRDS_SETTINGS* pWRdsSettings) mut
			{
				return VT.Initialize(&this, pIWRdsSettings, pWRdsSettings);
			}
			public HRESULT CreateListener(PWSTR wszListenerName, IWRdsProtocolListener** pProtocolListener) mut
			{
				return VT.CreateListener(&this, wszListenerName, pProtocolListener);
			}
			public HRESULT NotifyServiceStateChange(WTS_SERVICE_STATE* pTSServiceStateChange) mut
			{
				return VT.NotifyServiceStateChange(&this, pTSServiceStateChange);
			}
			public HRESULT NotifySessionOfServiceStart(WTS_SESSION_ID* SessionId) mut
			{
				return VT.NotifySessionOfServiceStart(&this, SessionId);
			}
			public HRESULT NotifySessionOfServiceStop(WTS_SESSION_ID* SessionId) mut
			{
				return VT.NotifySessionOfServiceStop(&this, SessionId);
			}
			public HRESULT NotifySessionStateChange(WTS_SESSION_ID* SessionId, uint32 EventId) mut
			{
				return VT.NotifySessionStateChange(&this, SessionId, EventId);
			}
			public HRESULT NotifySettingsChange(WRDS_SETTINGS* pWRdsSettings) mut
			{
				return VT.NotifySettingsChange(&this, pWRdsSettings);
			}
			public HRESULT Uninitialize() mut
			{
				return VT.Uninitialize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolManager *self, IWRdsProtocolSettings* pIWRdsSettings, WRDS_SETTINGS* pWRdsSettings) Initialize;
				public new function HRESULT(IWRdsProtocolManager *self, PWSTR wszListenerName, IWRdsProtocolListener** pProtocolListener) CreateListener;
				public new function HRESULT(IWRdsProtocolManager *self, WTS_SERVICE_STATE* pTSServiceStateChange) NotifyServiceStateChange;
				public new function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStart;
				public new function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStop;
				public new function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId, uint32 EventId) NotifySessionStateChange;
				public new function HRESULT(IWRdsProtocolManager *self, WRDS_SETTINGS* pWRdsSettings) NotifySettingsChange;
				public new function HRESULT(IWRdsProtocolManager *self) Uninitialize;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListener : IUnknown
		{
			public const new Guid IID = .(0xfcbc131b, 0xc686, 0x451d, 0xa7, 0x73, 0xe2, 0x79, 0xe2, 0x30, 0xf5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, WRDS_LISTENER_SETTINGS* pWRdsListenerSettings) mut
			{
				return VT.GetSettings(&this, WRdsListenerSettingLevel, pWRdsListenerSettings);
			}
			public HRESULT StartListen(IWRdsProtocolListenerCallback* pCallback) mut
			{
				return VT.StartListen(&this, pCallback);
			}
			public HRESULT StopListen() mut
			{
				return VT.StopListen(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolListener *self, WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, WRDS_LISTENER_SETTINGS* pWRdsListenerSettings) GetSettings;
				public new function HRESULT(IWRdsProtocolListener *self, IWRdsProtocolListenerCallback* pCallback) StartListen;
				public new function HRESULT(IWRdsProtocolListener *self) StopListen;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x3ab27e5b, 0x4449, 0x4dc1, 0xb7, 0x4a, 0x91, 0x62, 0x1d, 0x4f, 0xe9, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnected(IWRdsProtocolConnection* pConnection, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings, IWRdsProtocolConnectionCallback** pCallback) mut
			{
				return VT.OnConnected(&this, pConnection, pWRdsConnectionSettings, pCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolListenerCallback *self, IWRdsProtocolConnection* pConnection, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings, IWRdsProtocolConnectionCallback** pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x324ed94f, 0xfdaf, 0x4ff6, 0x81, 0xa8, 0x42, 0xab, 0xe7, 0x55, 0x83, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogonErrorRedirector(IWRdsProtocolLogonErrorRedirector** ppLogonErrorRedir) mut
			{
				return VT.GetLogonErrorRedirector(&this, ppLogonErrorRedir);
			}
			public HRESULT AcceptConnection() mut
			{
				return VT.AcceptConnection(&this);
			}
			public HRESULT GetClientData(WTS_CLIENT_DATA* pClientData) mut
			{
				return VT.GetClientData(&this, pClientData);
			}
			public HRESULT GetClientMonitorData(uint32* pNumMonitors, uint32* pPrimaryMonitor) mut
			{
				return VT.GetClientMonitorData(&this, pNumMonitors, pPrimaryMonitor);
			}
			public HRESULT GetUserCredentials(WTS_USER_CREDENTIAL* pUserCreds) mut
			{
				return VT.GetUserCredentials(&this, pUserCreds);
			}
			public HRESULT GetLicenseConnection(IWRdsProtocolLicenseConnection** ppLicenseConnection) mut
			{
				return VT.GetLicenseConnection(&this, ppLicenseConnection);
			}
			public HRESULT AuthenticateClientToSession(WTS_SESSION_ID* SessionId) mut
			{
				return VT.AuthenticateClientToSession(&this, SessionId);
			}
			public HRESULT NotifySessionId(WTS_SESSION_ID* SessionId, HANDLE_PTR SessionHandle) mut
			{
				return VT.NotifySessionId(&this, SessionId, SessionHandle);
			}
			public HRESULT GetInputHandles(HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle) mut
			{
				return VT.GetInputHandles(&this, pKeyboardHandle, pMouseHandle, pBeepHandle);
			}
			public HRESULT GetVideoHandle(HANDLE_PTR* pVideoHandle) mut
			{
				return VT.GetVideoHandle(&this, pVideoHandle);
			}
			public HRESULT ConnectNotify(uint32 SessionId) mut
			{
				return VT.ConnectNotify(&this, SessionId);
			}
			public HRESULT IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) mut
			{
				return VT.IsUserAllowedToLogon(&this, SessionId, UserToken, pDomainName, pUserName);
			}
			public HRESULT SessionArbitrationEnumeration(HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) mut
			{
				return VT.SessionArbitrationEnumeration(&this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, pdwSessionIdentifierCount);
			}
			public HRESULT LogonNotify(HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) mut
			{
				return VT.LogonNotify(&this, hClientToken, wszUserName, wszDomainName, SessionId, pWRdsConnectionSettings);
			}
			public HRESULT PreDisconnect(uint32 DisconnectReason) mut
			{
				return VT.PreDisconnect(&this, DisconnectReason);
			}
			public HRESULT DisconnectNotify() mut
			{
				return VT.DisconnectNotify(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetProtocolStatus(WTS_PROTOCOL_STATUS* pProtocolStatus) mut
			{
				return VT.GetProtocolStatus(&this, pProtocolStatus);
			}
			public HRESULT GetLastInputTime(uint64* pLastInputTime) mut
			{
				return VT.GetLastInputTime(&this, pLastInputTime);
			}
			public HRESULT SetErrorInfo(uint32 ulError) mut
			{
				return VT.SetErrorInfo(&this, ulError);
			}
			public HRESULT CreateVirtualChannel(PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) mut
			{
				return VT.CreateVirtualChannel(&this, szEndpointName, bStatic, RequestedPriority, phChannel);
			}
			public HRESULT QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut
			{
				return VT.QueryProperty(&this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			}
			public HRESULT GetShadowConnection(IWRdsProtocolShadowConnection** ppShadowConnection) mut
			{
				return VT.GetShadowConnection(&this, ppShadowConnection);
			}
			public HRESULT NotifyCommandProcessCreated(uint32 SessionId) mut
			{
				return VT.NotifyCommandProcessCreated(&this, SessionId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolLogonErrorRedirector** ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function HRESULT(IWRdsProtocolConnection *self) AcceptConnection;
				public new function HRESULT(IWRdsProtocolConnection *self, WTS_CLIENT_DATA* pClientData) GetClientData;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32* pNumMonitors, uint32* pPrimaryMonitor) GetClientMonitorData;
				public new function HRESULT(IWRdsProtocolConnection *self, WTS_USER_CREDENTIAL* pUserCreds) GetUserCredentials;
				public new function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolLicenseConnection** ppLicenseConnection) GetLicenseConnection;
				public new function HRESULT(IWRdsProtocolConnection *self, WTS_SESSION_ID* SessionId) AuthenticateClientToSession;
				public new function HRESULT(IWRdsProtocolConnection *self, WTS_SESSION_ID* SessionId, HANDLE_PTR SessionHandle) NotifySessionId;
				public new function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle) GetInputHandles;
				public new function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR* pVideoHandle) GetVideoHandle;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId) ConnectNotify;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
				public new function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) LogonNotify;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32 DisconnectReason) PreDisconnect;
				public new function HRESULT(IWRdsProtocolConnection *self) DisconnectNotify;
				public new function HRESULT(IWRdsProtocolConnection *self) Close;
				public new function HRESULT(IWRdsProtocolConnection *self, WTS_PROTOCOL_STATUS* pProtocolStatus) GetProtocolStatus;
				public new function HRESULT(IWRdsProtocolConnection *self, uint64* pLastInputTime) GetLastInputTime;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32 ulError) SetErrorInfo;
				public new function HRESULT(IWRdsProtocolConnection *self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) CreateVirtualChannel;
				public new function HRESULT(IWRdsProtocolConnection *self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolShadowConnection** ppShadowConnection) GetShadowConnection;
				public new function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId) NotifyCommandProcessCreated;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0xf1d70332, 0xd070, 0x4ef1, 0xa0, 0x88, 0x78, 0x31, 0x35, 0x36, 0xc2, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReady() mut
			{
				return VT.OnReady(&this);
			}
			public HRESULT BrokenConnection(uint32 Reason, uint32 Source) mut
			{
				return VT.BrokenConnection(&this, Reason, Source);
			}
			public HRESULT StopScreenUpdates() mut
			{
				return VT.StopScreenUpdates(&this);
			}
			public HRESULT RedrawWindow(WTS_SMALL_RECT* rect) mut
			{
				return VT.RedrawWindow(&this, rect);
			}
			public HRESULT GetConnectionId(uint32* pConnectionId) mut
			{
				return VT.GetConnectionId(&this, pConnectionId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolConnectionCallback *self) OnReady;
				public new function HRESULT(IWRdsProtocolConnectionCallback *self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function HRESULT(IWRdsProtocolConnectionCallback *self) StopScreenUpdates;
				public new function HRESULT(IWRdsProtocolConnectionCallback *self, WTS_SMALL_RECT* rect) RedrawWindow;
				public new function HRESULT(IWRdsProtocolConnectionCallback *self, uint32* pConnectionId) GetConnectionId;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0x9ae85ce6, 0xcade, 0x4548, 0x8f, 0xeb, 0x99, 0x01, 0x65, 0x97, 0xf6, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWRdsProtocolShadowCallback* pShadowCallback) mut
			{
				return VT.Start(&this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, pShadowCallback);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut
			{
				return VT.DoTarget(&this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolShadowConnection *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWRdsProtocolShadowCallback* pShadowCallback) Start;
				public new function HRESULT(IWRdsProtocolShadowConnection *self) Stop;
				public new function HRESULT(IWRdsProtocolShadowConnection *self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0xe0667ce0, 0x0372, 0x40d6, 0xad, 0xb2, 0xa0, 0xf3, 0x32, 0x26, 0x74, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopShadow() mut
			{
				return VT.StopShadow(&this);
			}
			public HRESULT InvokeTargetShadow(PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut
			{
				return VT.InvokeTargetShadow(&this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolShadowCallback *self) StopShadow;
				public new function HRESULT(IWRdsProtocolShadowCallback *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x1d6a145f, 0xd095, 0x4424, 0x95, 0x7a, 0x40, 0x7f, 0xae, 0x82, 0x2d, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestLicensingCapabilities(WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) mut
			{
				return VT.RequestLicensingCapabilities(&this, ppLicenseCapabilities, pcbLicenseCapabilities);
			}
			public HRESULT SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut
			{
				return VT.SendClientLicense(&this, pClientLicense, cbClientLicense);
			}
			public HRESULT RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) mut
			{
				return VT.RequestClientLicense(&this, Reserve1, Reserve2, ppClientLicense, pcbClientLicense);
			}
			public HRESULT ProtocolComplete(uint32 ulComplete) mut
			{
				return VT.ProtocolComplete(&this, ulComplete);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolLicenseConnection *self, WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function HRESULT(IWRdsProtocolLicenseConnection *self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function HRESULT(IWRdsProtocolLicenseConnection *self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) RequestClientLicense;
				public new function HRESULT(IWRdsProtocolLicenseConnection *self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0x519fe83b, 0x142a, 0x4120, 0xa3, 0xd5, 0xa4, 0x05, 0xd3, 0x15, 0x28, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBeginPainting() mut
			{
				return VT.OnBeginPainting(&this);
			}
			public HRESULT RedirectStatus(PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectStatus(&this, pszMessage, pResponse);
			}
			public HRESULT RedirectMessage(PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectMessage(&this, pszCaption, pszMessage, uType, pResponse);
			}
			public HRESULT RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) mut
			{
				return VT.RedirectLogonError(&this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, pResponse);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolLogonErrorRedirector *self) OnBeginPainting;
				public new function HRESULT(IWRdsProtocolLogonErrorRedirector *self, PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectStatus;
				public new function HRESULT(IWRdsProtocolLogonErrorRedirector *self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectMessage;
				public new function HRESULT(IWRdsProtocolLogonErrorRedirector *self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsWddmIddProps : IUnknown
		{
			public const new Guid IID = .(0x1382df4d, 0xa289, 0x43d1, 0xa1, 0x84, 0x14, 0x47, 0x26, 0xf9, 0xaf, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHardwareId(char16* pDisplayDriverHardwareId, uint32 Count) mut
			{
				return VT.GetHardwareId(&this, pDisplayDriverHardwareId, Count);
			}
			public HRESULT OnDriverLoad(uint32 SessionId, HANDLE_PTR DriverHandle) mut
			{
				return VT.OnDriverLoad(&this, SessionId, DriverHandle);
			}
			public HRESULT OnDriverUnload(uint32 SessionId) mut
			{
				return VT.OnDriverUnload(&this, SessionId);
			}
			public HRESULT EnableWddmIdd(BOOL Enabled) mut
			{
				return VT.EnableWddmIdd(&this, Enabled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsWddmIddProps *self, char16* pDisplayDriverHardwareId, uint32 Count) GetHardwareId;
				public new function HRESULT(IWRdsWddmIddProps *self, uint32 SessionId, HANDLE_PTR DriverHandle) OnDriverLoad;
				public new function HRESULT(IWRdsWddmIddProps *self, uint32 SessionId) OnDriverUnload;
				public new function HRESULT(IWRdsWddmIddProps *self, BOOL Enabled) EnableWddmIdd;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionSettings : IUnknown
		{
			public const new Guid IID = .(0x83fcf5d3, 0xf6f4, 0xea94, 0x9c, 0xd2, 0x32, 0xf2, 0x80, 0xe1, 0xe5, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConnectionSetting(Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesIn) mut
			{
				return VT.SetConnectionSetting(&this, PropertyID, pPropertyEntriesIn);
			}
			public HRESULT GetConnectionSetting(Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut
			{
				return VT.GetConnectionSetting(&this, PropertyID, pPropertyEntriesOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsProtocolConnectionSettings *self, Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesIn) SetConnectionSetting;
				public new function HRESULT(IWRdsProtocolConnectionSettings *self, Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesOut) GetConnectionSetting;
			}
		}
		[CRepr]
		public struct IWRdsEnhancedFastReconnectArbitrator : IUnknown
		{
			public const new Guid IID = .(0x5718ae9b, 0x47f2, 0x499f, 0xb6, 0x34, 0xd8, 0x17, 0x5b, 0xd5, 0x11, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSessionForEnhancedFastReconnect(int32* pSessionIdArray, uint32 dwSessionCount, int32* pResultSessionId) mut
			{
				return VT.GetSessionForEnhancedFastReconnect(&this, pSessionIdArray, dwSessionCount, pResultSessionId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWRdsEnhancedFastReconnectArbitrator *self, int32* pSessionIdArray, uint32 dwSessionCount, int32* pResultSessionId) GetSessionForEnhancedFastReconnect;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientSettings : IDispatch
		{
			public const new Guid IID = .(0x48a0f2a7, 0x2713, 0x431f, 0xbb, 0xac, 0x6f, 0x45, 0x58, 0xe7, 0xd6, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySettings(BSTR rdpFileContents) mut
			{
				return VT.ApplySettings(&this, rdpFileContents);
			}
			public HRESULT RetrieveSettings(BSTR* rdpFileContents) mut
			{
				return VT.RetrieveSettings(&this, rdpFileContents);
			}
			public HRESULT GetRdpProperty(BSTR propertyName, VARIANT* value) mut
			{
				return VT.GetRdpProperty(&this, propertyName, value);
			}
			public HRESULT SetRdpProperty(BSTR propertyName, VARIANT value) mut
			{
				return VT.SetRdpProperty(&this, propertyName, value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRemoteDesktopClientSettings *self, BSTR rdpFileContents) ApplySettings;
				public new function HRESULT(IRemoteDesktopClientSettings *self, BSTR* rdpFileContents) RetrieveSettings;
				public new function HRESULT(IRemoteDesktopClientSettings *self, BSTR propertyName, VARIANT* value) GetRdpProperty;
				public new function HRESULT(IRemoteDesktopClientSettings *self, BSTR propertyName, VARIANT value) SetRdpProperty;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientActions : IDispatch
		{
			public const new Guid IID = .(0x7d54bc4e, 0x1028, 0x45d4, 0x8b, 0x0a, 0xb9, 0xb6, 0xbf, 0xfb, 0xa1, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuspendScreenUpdates() mut
			{
				return VT.SuspendScreenUpdates(&this);
			}
			public HRESULT ResumeScreenUpdates() mut
			{
				return VT.ResumeScreenUpdates(&this);
			}
			public HRESULT ExecuteRemoteAction(RemoteActionType remoteAction) mut
			{
				return VT.ExecuteRemoteAction(&this, remoteAction);
			}
			public HRESULT GetSnapshot(SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) mut
			{
				return VT.GetSnapshot(&this, snapshotEncoding, snapshotFormat, snapshotWidth, snapshotHeight, snapshotData);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRemoteDesktopClientActions *self) SuspendScreenUpdates;
				public new function HRESULT(IRemoteDesktopClientActions *self) ResumeScreenUpdates;
				public new function HRESULT(IRemoteDesktopClientActions *self, RemoteActionType remoteAction) ExecuteRemoteAction;
				public new function HRESULT(IRemoteDesktopClientActions *self, SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) GetSnapshot;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientTouchPointer : IDispatch
		{
			public const new Guid IID = .(0x260ec22d, 0x8cbc, 0x44b5, 0x9e, 0x88, 0x2a, 0x37, 0xf6, 0xc9, 0x3a, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_EventsEnabled(int16 eventsEnabled) mut
			{
				return VT.put_EventsEnabled(&this, eventsEnabled);
			}
			public HRESULT get_EventsEnabled(int16* eventsEnabled) mut
			{
				return VT.get_EventsEnabled(&this, eventsEnabled);
			}
			public HRESULT put_PointerSpeed(uint32 pointerSpeed) mut
			{
				return VT.put_PointerSpeed(&this, pointerSpeed);
			}
			public HRESULT get_PointerSpeed(uint32* pointerSpeed) mut
			{
				return VT.get_PointerSpeed(&this, pointerSpeed);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, int16 enabled) put_Enabled;
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, int16* enabled) get_Enabled;
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, int16 eventsEnabled) put_EventsEnabled;
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, int16* eventsEnabled) get_EventsEnabled;
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, uint32 pointerSpeed) put_PointerSpeed;
				public new function HRESULT(IRemoteDesktopClientTouchPointer *self, uint32* pointerSpeed) get_PointerSpeed;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClient : IDispatch
		{
			public const new Guid IID = .(0x57d25668, 0x625a, 0x4905, 0xbe, 0x4e, 0x30, 0x4c, 0xaa, 0x13, 0xf8, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect() mut
			{
				return VT.Connect(&this);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT Reconnect(uint32 width, uint32 height) mut
			{
				return VT.Reconnect(&this, width, height);
			}
			public HRESULT get_Settings(IRemoteDesktopClientSettings** settings) mut
			{
				return VT.get_Settings(&this, settings);
			}
			public HRESULT get_Actions(IRemoteDesktopClientActions** actions) mut
			{
				return VT.get_Actions(&this, actions);
			}
			public HRESULT get_TouchPointer(IRemoteDesktopClientTouchPointer** touchPointer) mut
			{
				return VT.get_TouchPointer(&this, touchPointer);
			}
			public HRESULT DeleteSavedCredentials(BSTR serverName) mut
			{
				return VT.DeleteSavedCredentials(&this, serverName);
			}
			public HRESULT UpdateSessionDisplaySettings(uint32 width, uint32 height) mut
			{
				return VT.UpdateSessionDisplaySettings(&this, width, height);
			}
			public HRESULT attachEvent(BSTR eventName, IDispatch* callback) mut
			{
				return VT.attachEvent(&this, eventName, callback);
			}
			public HRESULT detachEvent(BSTR eventName, IDispatch* callback) mut
			{
				return VT.detachEvent(&this, eventName, callback);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRemoteDesktopClient *self) Connect;
				public new function HRESULT(IRemoteDesktopClient *self) Disconnect;
				public new function HRESULT(IRemoteDesktopClient *self, uint32 width, uint32 height) Reconnect;
				public new function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientSettings** settings) get_Settings;
				public new function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientActions** actions) get_Actions;
				public new function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientTouchPointer** touchPointer) get_TouchPointer;
				public new function HRESULT(IRemoteDesktopClient *self, BSTR serverName) DeleteSavedCredentials;
				public new function HRESULT(IRemoteDesktopClient *self, uint32 width, uint32 height) UpdateSessionDisplaySettings;
				public new function HRESULT(IRemoteDesktopClient *self, BSTR eventName, IDispatch* callback) attachEvent;
				public new function HRESULT(IRemoteDesktopClient *self, BSTR eventName, IDispatch* callback) detachEvent;
			}
		}
		[CRepr]
		public struct IRemoteSystemAdditionalInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xeeaa3d5f, 0xec63, 0x4d27, 0xaf, 0x38, 0xe8, 0x6b, 0x1d, 0x72, 0x92, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdditionalInfo(HSTRING* deduplicationId, Guid* riid, void** mapView) mut
			{
				return VT.GetAdditionalInfo(&this, deduplicationId, riid, mapView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRemoteSystemAdditionalInfoProvider *self, HSTRING* deduplicationId, Guid* riid, void** mapView) GetAdditionalInfo;
			}
		}
		
		// --- Functions ---
		
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSStopRemoteControlSession(uint32 LogonId);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSStartRemoteControlSessionW(PWSTR pTargetServerName, uint32 TargetLogonId, uint8 HotkeyVk, uint16 HotkeyModifiers);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSStartRemoteControlSessionA(PSTR pTargetServerName, uint32 TargetLogonId, uint8 HotkeyVk, uint16 HotkeyModifiers);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSConnectSessionA(uint32 LogonId, uint32 TargetLogonId, PSTR pPassword, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSConnectSessionW(uint32 LogonId, uint32 TargetLogonId, PWSTR pPassword, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateServersW(PWSTR pDomainName, uint32 Reserved, uint32 Version, WTS_SERVER_INFOW** ppServerInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateServersA(PSTR pDomainName, uint32 Reserved, uint32 Version, WTS_SERVER_INFOA** ppServerInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WTSOpenServerW(PWSTR pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WTSOpenServerA(PSTR pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WTSOpenServerExW(PWSTR pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WTSOpenServerExA(PSTR pServerName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WTSCloseServer(HANDLE hServer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsW(HANDLE hServer, uint32 Reserved, uint32 Version, WTS_SESSION_INFOW** ppSessionInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsA(HANDLE hServer, uint32 Reserved, uint32 Version, WTS_SESSION_INFOA** ppSessionInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsExW(HANDLE hServer, uint32* pLevel, uint32 Filter, WTS_SESSION_INFO_1W** ppSessionInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsExA(HANDLE hServer, uint32* pLevel, uint32 Filter, WTS_SESSION_INFO_1A** ppSessionInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesW(HANDLE hServer, uint32 Reserved, uint32 Version, WTS_PROCESS_INFOW** ppProcessInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesA(HANDLE hServer, uint32 Reserved, uint32 Version, WTS_PROCESS_INFOA** ppProcessInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSTerminateProcess(HANDLE hServer, uint32 ProcessId, uint32 ExitCode);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQuerySessionInformationW(HANDLE hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, PWSTR* ppBuffer, uint32* pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQuerySessionInformationA(HANDLE hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, PSTR* ppBuffer, uint32* pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryUserConfigW(PWSTR pServerName, PWSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PWSTR* ppBuffer, uint32* pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryUserConfigA(PSTR pServerName, PSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PSTR* ppBuffer, uint32* pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetUserConfigW(PWSTR pServerName, PWSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PWSTR pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetUserConfigA(PSTR pServerName, PSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PSTR pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSendMessageW(HANDLE hServer, uint32 SessionId, PWSTR pTitle, uint32 TitleLength, PWSTR pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, MESSAGEBOX_RESULT* pResponse, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSendMessageA(HANDLE hServer, uint32 SessionId, PSTR pTitle, uint32 TitleLength, PSTR pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, MESSAGEBOX_RESULT* pResponse, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSDisconnectSession(HANDLE hServer, uint32 SessionId, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSLogoffSession(HANDLE hServer, uint32 SessionId, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSShutdownSystem(HANDLE hServer, uint32 ShutdownFlag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSWaitSystemEvent(HANDLE hServer, uint32 EventMask, uint32* pEventFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpen(HANDLE hServer, uint32 SessionId, PSTR pVirtualName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpenEx(uint32 SessionId, PSTR pVirtualName, uint32 flags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelClose(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelRead(HANDLE hChannelHandle, uint32 TimeOut, PSTR Buffer, uint32 BufferSize, uint32* pBytesRead);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelWrite(HANDLE hChannelHandle, PSTR Buffer, uint32 Length, uint32* pBytesWritten);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelPurgeInput(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelPurgeOutput(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelQuery(HANDLE hChannelHandle, WTS_VIRTUAL_CLASS param1, void** ppBuffer, uint32* pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WTSFreeMemory(void* pMemory);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSRegisterSessionNotification(HWND hWnd, uint32 dwFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSUnRegisterSessionNotification(HWND hWnd);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSRegisterSessionNotificationEx(HANDLE hServer, HWND hWnd, uint32 dwFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSUnRegisterSessionNotificationEx(HANDLE hServer, HWND hWnd);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryUserToken(uint32 SessionId, HANDLE* phToken);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSFreeMemoryExW(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSFreeMemoryExA(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesExW(HANDLE hServer, uint32* pLevel, uint32 SessionId, PWSTR* ppProcessInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesExA(HANDLE hServer, uint32* pLevel, uint32 SessionId, PSTR* ppProcessInfo, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateListenersW(HANDLE hServer, void* pReserved, uint32 Reserved, uint16** pListeners, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateListenersA(HANDLE hServer, void* pReserved, uint32 Reserved, int8** pListeners, uint32* pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryListenerConfigW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, WTSLISTENERCONFIGW* pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryListenerConfigA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, WTSLISTENERCONFIGA* pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSCreateListenerW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, WTSLISTENERCONFIGW* pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSCreateListenerA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, WTSLISTENERCONFIGA* pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetListenerSecurityW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetListenerSecurityA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetListenerSecurityW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, uint32* lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetListenerSecurityA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, uint32* lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnableChildSessions(BOOL bEnable);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSIsChildSessionsEnabled(BOOL* pbEnabled);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetChildSessionId(uint32* pSessionId);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WTSSetRenderHint(uint64* pRenderHintID, HWND hwndOwner, uint32 renderHintType, uint32 cbHintDataLength, uint8* pHintData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ProcessIdToSessionId(uint32 dwProcessId, uint32* pSessionId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WTSGetActiveConsoleSessionId();
		
	}
}
