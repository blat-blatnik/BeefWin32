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
			WTSActive = 0,
			WTSConnected = 1,
			WTSConnectQuery = 2,
			WTSShadow = 3,
			WTSDisconnected = 4,
			WTSIdle = 5,
			WTSListen = 6,
			WTSReset = 7,
			WTSDown = 8,
			WTSInit = 9,
		}
		public enum WTS_INFO_CLASS : int32
		{
			WTSInitialProgram = 0,
			WTSApplicationName = 1,
			WTSWorkingDirectory = 2,
			WTSOEMId = 3,
			WTSSessionId = 4,
			WTSUserName = 5,
			WTSWinStationName = 6,
			WTSDomainName = 7,
			WTSConnectState = 8,
			WTSClientBuildNumber = 9,
			WTSClientName = 10,
			WTSClientDirectory = 11,
			WTSClientProductId = 12,
			WTSClientHardwareId = 13,
			WTSClientAddress = 14,
			WTSClientDisplay = 15,
			WTSClientProtocolType = 16,
			WTSIdleTime = 17,
			WTSLogonTime = 18,
			WTSIncomingBytes = 19,
			WTSOutgoingBytes = 20,
			WTSIncomingFrames = 21,
			WTSOutgoingFrames = 22,
			WTSClientInfo = 23,
			WTSSessionInfo = 24,
			WTSSessionInfoEx = 25,
			WTSConfigInfo = 26,
			WTSValidationInfo = 27,
			WTSSessionAddressV4 = 28,
			WTSIsRemoteSession = 29,
		}
		public enum WTS_CONFIG_CLASS : int32
		{
			ConfigInitialProgram = 0,
			ConfigWorkingDirectory = 1,
			ConfigfInheritInitialProgram = 2,
			ConfigfAllowLogonTerminalServer = 3,
			ConfigTimeoutSettingsConnections = 4,
			ConfigTimeoutSettingsDisconnections = 5,
			ConfigTimeoutSettingsIdle = 6,
			ConfigfDeviceClientDrives = 7,
			ConfigfDeviceClientPrinters = 8,
			ConfigfDeviceClientDefaultPrinter = 9,
			ConfigBrokenTimeoutSettings = 10,
			ConfigReconnectSettings = 11,
			ConfigModemCallbackSettings = 12,
			ConfigModemCallbackPhoneNumber = 13,
			ConfigShadowingSettings = 14,
			ConfigTerminalServerProfilePath = 15,
			ConfigTerminalServerHomeDir = 16,
			ConfigTerminalServerHomeDirDrive = 17,
			ConfigfTerminalServerRemoteHomeDir = 18,
			ConfigUser = 19,
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
			UTF8 = 0,
			UTF16LE = 1,
			UTF16BE = 2,
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
			DataUri = 0,
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
		public function uint32 PVIRTUALCHANNELINIT(void** ppInitHandle, out CHANNEL_DEF pChannel, int32 channelCount, uint32 versionRequested, PCHANNEL_INIT_EVENT_FN pChannelInitEventProc);
		public function uint32 PVIRTUALCHANNELOPEN(void* pInitHandle, out uint32 pOpenHandle, PSTR pChannelName, PCHANNEL_OPEN_EVENT_FN pChannelOpenEventProc);
		public function uint32 PVIRTUALCHANNELCLOSE(uint32 openHandle);
		public function uint32 PVIRTUALCHANNELWRITE(uint32 openHandle, void* pData, uint32 dataLength, void* pUserData);
		public function BOOL PVIRTUALCHANNELENTRY(out CHANNEL_ENTRY_POINTS pEntryPoints);
		
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
		[CRepr, Packed(1)]
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
		[CRepr, Packed(1)]
		public struct RFX_GFX_RECT
		{
			public int32 left;
			public int32 top;
			public int32 right;
			public int32 bottom;
		}
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_HEADER
		{
			public uint16 uMSGType;
			public uint16 cbSize;
		}
		[CRepr, Packed(1)]
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
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_CLIENT_DESKTOP_INFO_RESPONSE
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 reserved;
			public uint32 monitorCount;
			public RFX_GFX_MONITOR_INFO[16] MonitorData;
			public char16[32] clientUniqueId;
		}
		[CRepr, Packed(1)]
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
		[CRepr, Packed(1)]
		public struct RFX_GFX_MSG_DESKTOP_INPUT_RESET
		{
			public RFX_GFX_MSG_HEADER channelHdr;
			public uint32 ulWidth;
			public uint32 ulHeight;
		}
		[CRepr, Packed(1)]
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
			public uint8[0] rdpData;
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
			
			public HRESULT GetFrameFormat(out WAVEFORMATEX* ppFormat) mut => VT.GetFrameFormat(ref this, out ppFormat);
			public HRESULT GetFramesPerPacket(out uint32 pFramesPerPacket) mut => VT.GetFramesPerPacket(ref this, out pFramesPerPacket);
			public HRESULT GetLatency(out int64 pLatency) mut => VT.GetLatency(ref this, out pLatency);
			public HRESULT SetStreamFlags(uint32 streamFlags) mut => VT.SetStreamFlags(ref this, streamFlags);
			public HRESULT SetEventHandle(HANDLE eventHandle) mut => VT.SetEventHandle(ref this, eventHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpoint self, out WAVEFORMATEX* ppFormat) GetFrameFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpoint self, out uint32 pFramesPerPacket) GetFramesPerPacket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpoint self, out int64 pLatency) GetLatency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpoint self, uint32 streamFlags) SetStreamFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpoint self, HANDLE eventHandle) SetEventHandle;
			}
		}
		[CRepr]
		public struct IAudioEndpointRT : IUnknown
		{
			public const new Guid IID = .(0xdfd2005f, 0xa6e5, 0x4d39, 0xa2, 0x65, 0x93, 0x9a, 0xda, 0x9f, 0xbb, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetCurrentPadding(out int64 pPadding, out AE_CURRENT_POSITION pAeCurrentPosition) mut => VT.GetCurrentPadding(ref this, out pPadding, out pAeCurrentPosition);
			public void ProcessingComplete() mut => VT.ProcessingComplete(ref this);
			public HRESULT SetPinInactive() mut => VT.SetPinInactive(ref this);
			public HRESULT SetPinActive() mut => VT.SetPinActive(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAudioEndpointRT self, out int64 pPadding, out AE_CURRENT_POSITION pAeCurrentPosition) GetCurrentPadding;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioEndpointRT self) ProcessingComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointRT self) SetPinInactive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointRT self) SetPinActive;
			}
		}
		[CRepr]
		public struct IAudioInputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8026ab61, 0x92b2, 0x43c1, 0xa1, 0xdf, 0x5c, 0x37, 0xeb, 0xd0, 0x8d, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetInputDataPointer(out APO_CONNECTION_PROPERTY pConnectionProperty, out AE_CURRENT_POSITION pAeTimeStamp) mut => VT.GetInputDataPointer(ref this, out pConnectionProperty, out pAeTimeStamp);
			public void ReleaseInputDataPointer(uint32 u32FrameCount, uint pDataPointer) mut => VT.ReleaseInputDataPointer(ref this, u32FrameCount, pDataPointer);
			public void PulseEndpoint() mut => VT.PulseEndpoint(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self, out APO_CONNECTION_PROPERTY pConnectionProperty, out AE_CURRENT_POSITION pAeTimeStamp) GetInputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self, uint32 u32FrameCount, uint pDataPointer) ReleaseInputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioInputEndpointRT self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioOutputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8fa906e4, 0xc31c, 0x4e31, 0x93, 0x2e, 0x19, 0xa6, 0x63, 0x85, 0xe9, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint GetOutputDataPointer(uint32 u32FrameCount, ref AE_CURRENT_POSITION pAeTimeStamp) mut => VT.GetOutputDataPointer(ref this, u32FrameCount, ref pAeTimeStamp);
			public void ReleaseOutputDataPointer(in APO_CONNECTION_PROPERTY pConnectionProperty) mut => VT.ReleaseOutputDataPointer(ref this, pConnectionProperty);
			public void PulseEndpoint() mut => VT.PulseEndpoint(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint(ref IAudioOutputEndpointRT self, uint32 u32FrameCount, ref AE_CURRENT_POSITION pAeTimeStamp) GetOutputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioOutputEndpointRT self, in APO_CONNECTION_PROPERTY pConnectionProperty) ReleaseOutputDataPointer;
				public new function [CallingConvention(.Stdcall)] void(ref IAudioOutputEndpointRT self) PulseEndpoint;
			}
		}
		[CRepr]
		public struct IAudioDeviceEndpoint : IUnknown
		{
			public const new Guid IID = .(0xd4952f5a, 0xa0b2, 0x4cc4, 0x8b, 0x82, 0x93, 0x58, 0x48, 0x8d, 0xd8, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBuffer(int64 MaxPeriod, uint32 u32LatencyCoefficient) mut => VT.SetBuffer(ref this, MaxPeriod, u32LatencyCoefficient);
			public HRESULT GetRTCaps(out BOOL pbIsRTCapable) mut => VT.GetRTCaps(ref this, out pbIsRTCapable);
			public HRESULT GetEventDrivenCapable(out BOOL pbisEventCapable) mut => VT.GetEventDrivenCapable(ref this, out pbisEventCapable);
			public HRESULT WriteExclusiveModeParametersToSharedMemory(uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, out uint32 pu32SharedMemorySize, out uint phSharedMemory) mut => VT.WriteExclusiveModeParametersToSharedMemory(ref this, hTargetProcess, hnsPeriod, hnsBufferDuration, u32LatencyCoefficient, out pu32SharedMemorySize, out phSharedMemory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioDeviceEndpoint self, int64 MaxPeriod, uint32 u32LatencyCoefficient) SetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioDeviceEndpoint self, out BOOL pbIsRTCapable) GetRTCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioDeviceEndpoint self, out BOOL pbisEventCapable) GetEventDrivenCapable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioDeviceEndpoint self, uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, out uint32 pu32SharedMemorySize, out uint phSharedMemory) WriteExclusiveModeParametersToSharedMemory;
			}
		}
		[CRepr]
		public struct IAudioEndpointControl : IUnknown
		{
			public const new Guid IID = .(0xc684b72a, 0x6df4, 0x4774, 0xbd, 0xf9, 0x76, 0xb7, 0x75, 0x09, 0xb6, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut => VT.Start(ref this);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointControl self) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointControl self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointControl self) Stop;
			}
		}
		[CRepr]
		public struct IADsTSUserEx : IDispatch
		{
			public const new Guid IID = .(0xc4930e79, 0x2989, 0x4462, 0x8a, 0x60, 0x2f, 0xcf, 0x2f, 0x29, 0x55, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TerminalServicesProfilePath(BSTR* pVal) mut => VT.get_TerminalServicesProfilePath(ref this, pVal);
			public HRESULT put_TerminalServicesProfilePath(BSTR pNewVal) mut => VT.put_TerminalServicesProfilePath(ref this, pNewVal);
			public HRESULT get_TerminalServicesHomeDirectory(BSTR* pVal) mut => VT.get_TerminalServicesHomeDirectory(ref this, pVal);
			public HRESULT put_TerminalServicesHomeDirectory(BSTR pNewVal) mut => VT.put_TerminalServicesHomeDirectory(ref this, pNewVal);
			public HRESULT get_TerminalServicesHomeDrive(BSTR* pVal) mut => VT.get_TerminalServicesHomeDrive(ref this, pVal);
			public HRESULT put_TerminalServicesHomeDrive(BSTR pNewVal) mut => VT.put_TerminalServicesHomeDrive(ref this, pNewVal);
			public HRESULT get_AllowLogon(out int32 pVal) mut => VT.get_AllowLogon(ref this, out pVal);
			public HRESULT put_AllowLogon(int32 NewVal) mut => VT.put_AllowLogon(ref this, NewVal);
			public HRESULT get_EnableRemoteControl(out int32 pVal) mut => VT.get_EnableRemoteControl(ref this, out pVal);
			public HRESULT put_EnableRemoteControl(int32 NewVal) mut => VT.put_EnableRemoteControl(ref this, NewVal);
			public HRESULT get_MaxDisconnectionTime(out int32 pVal) mut => VT.get_MaxDisconnectionTime(ref this, out pVal);
			public HRESULT put_MaxDisconnectionTime(int32 NewVal) mut => VT.put_MaxDisconnectionTime(ref this, NewVal);
			public HRESULT get_MaxConnectionTime(out int32 pVal) mut => VT.get_MaxConnectionTime(ref this, out pVal);
			public HRESULT put_MaxConnectionTime(int32 NewVal) mut => VT.put_MaxConnectionTime(ref this, NewVal);
			public HRESULT get_MaxIdleTime(out int32 pVal) mut => VT.get_MaxIdleTime(ref this, out pVal);
			public HRESULT put_MaxIdleTime(int32 NewVal) mut => VT.put_MaxIdleTime(ref this, NewVal);
			public HRESULT get_ReconnectionAction(out int32 pNewVal) mut => VT.get_ReconnectionAction(ref this, out pNewVal);
			public HRESULT put_ReconnectionAction(int32 NewVal) mut => VT.put_ReconnectionAction(ref this, NewVal);
			public HRESULT get_BrokenConnectionAction(out int32 pNewVal) mut => VT.get_BrokenConnectionAction(ref this, out pNewVal);
			public HRESULT put_BrokenConnectionAction(int32 NewVal) mut => VT.put_BrokenConnectionAction(ref this, NewVal);
			public HRESULT get_ConnectClientDrivesAtLogon(out int32 pNewVal) mut => VT.get_ConnectClientDrivesAtLogon(ref this, out pNewVal);
			public HRESULT put_ConnectClientDrivesAtLogon(int32 NewVal) mut => VT.put_ConnectClientDrivesAtLogon(ref this, NewVal);
			public HRESULT get_ConnectClientPrintersAtLogon(out int32 pVal) mut => VT.get_ConnectClientPrintersAtLogon(ref this, out pVal);
			public HRESULT put_ConnectClientPrintersAtLogon(int32 NewVal) mut => VT.put_ConnectClientPrintersAtLogon(ref this, NewVal);
			public HRESULT get_DefaultToMainPrinter(out int32 pVal) mut => VT.get_DefaultToMainPrinter(ref this, out pVal);
			public HRESULT put_DefaultToMainPrinter(int32 NewVal) mut => VT.put_DefaultToMainPrinter(ref this, NewVal);
			public HRESULT get_TerminalServicesWorkDirectory(BSTR* pVal) mut => VT.get_TerminalServicesWorkDirectory(ref this, pVal);
			public HRESULT put_TerminalServicesWorkDirectory(BSTR pNewVal) mut => VT.put_TerminalServicesWorkDirectory(ref this, pNewVal);
			public HRESULT get_TerminalServicesInitialProgram(BSTR* pVal) mut => VT.get_TerminalServicesInitialProgram(ref this, pVal);
			public HRESULT put_TerminalServicesInitialProgram(BSTR pNewVal) mut => VT.put_TerminalServicesInitialProgram(ref this, pNewVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesProfilePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesProfilePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesHomeDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesHomeDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesHomeDrive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesHomeDrive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_AllowLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_AllowLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_EnableRemoteControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_EnableRemoteControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_MaxDisconnectionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_MaxDisconnectionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_MaxConnectionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_MaxConnectionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_MaxIdleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_MaxIdleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pNewVal) get_ReconnectionAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_ReconnectionAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pNewVal) get_BrokenConnectionAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_BrokenConnectionAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pNewVal) get_ConnectClientDrivesAtLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_ConnectClientDrivesAtLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_ConnectClientPrintersAtLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_ConnectClientPrintersAtLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, out int32 pVal) get_DefaultToMainPrinter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, int32 NewVal) put_DefaultToMainPrinter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesWorkDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesWorkDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR* pVal) get_TerminalServicesInitialProgram;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTSUserEx self, BSTR pNewVal) put_TerminalServicesInitialProgram;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeConnectionSink : IUnknown
		{
			public const new Guid IID = .(0xc27ece33, 0x7781, 0x4318, 0x98, 0xef, 0x1c, 0xf2, 0xda, 0x7b, 0x70, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnectionAuthorized(HRESULT hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, ref uint32 policyAttributes) mut => VT.OnConnectionAuthorized(ref this, hrIn, mainSessionId, cbSoHResponse, pbSoHResponse, idleTimeout, sessionTimeout, sessionTimeoutAction, trustClass, ref policyAttributes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthorizeConnectionSink self, HRESULT hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, ref uint32 policyAttributes) OnConnectionAuthorized;
			}
		}
		[CRepr]
		public struct ITSGAuthorizeResourceSink : IUnknown
		{
			public const new Guid IID = .(0xfeddfcd4, 0xfa12, 0x4435, 0xae, 0x55, 0x7a, 0xd1, 0xa9, 0x77, 0x9a, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChannelAuthorized(HRESULT hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) mut => VT.OnChannelAuthorized(ref this, hrIn, mainSessionId, subSessionId, allowedResourceNames, numAllowedResourceNames, failedResourceNames, numFailedResourceNames);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthorizeResourceSink self, HRESULT hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) OnChannelAuthorized;
			}
		}
		[CRepr]
		public struct ITSGPolicyEngine : IUnknown
		{
			public const new Guid IID = .(0x8bc24f08, 0x6223, 0x42f4, 0xa5, 0xb4, 0x8e, 0x37, 0xcd, 0x13, 0x5b, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthorizeConnection(Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ref ITSGAuthorizeConnectionSink pSink) mut => VT.AuthorizeConnection(ref this, mainSessionId, username, authType, clientMachineIP, clientMachineName, sohData, numSOHBytes, cookieData, numCookieBytes, userToken, ref pSink);
			public HRESULT AuthorizeResource(Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ref ITSGAuthorizeResourceSink pSink) mut => VT.AuthorizeResource(ref this, mainSessionId, subSessionId, username, resourceNames, numResources, alternateResourceNames, numAlternateResourceName, portNumber, operation, cookie, numBytesInCookie, ref pSink);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT IsQuarantineEnabled(out BOOL quarantineEnabled) mut => VT.IsQuarantineEnabled(ref this, out quarantineEnabled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGPolicyEngine self, Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ref ITSGAuthorizeConnectionSink pSink) AuthorizeConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGPolicyEngine self, Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ref ITSGAuthorizeResourceSink pSink) AuthorizeResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGPolicyEngine self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGPolicyEngine self, out BOOL quarantineEnabled) IsQuarantineEnabled;
			}
		}
		[CRepr]
		public struct ITSGAccountingEngine : IUnknown
		{
			public const new Guid IID = .(0x4ce2a0c9, 0xe874, 0x4f1a, 0x86, 0xf4, 0x06, 0xbb, 0xb9, 0x11, 0x53, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoAccounting(AAAccountingDataType accountingDataType, AAAccountingData accountingData) mut => VT.DoAccounting(ref this, accountingDataType, accountingData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAccountingEngine self, AAAccountingDataType accountingDataType, AAAccountingData accountingData) DoAccounting;
			}
		}
		[CRepr]
		public struct ITSGAuthenticateUserSink : IUnknown
		{
			public const new Guid IID = .(0x2c3e2e73, 0xa782, 0x47f9, 0x8d, 0xfb, 0x77, 0xee, 0x1e, 0xd2, 0x7a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUserAuthenticated(BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) mut => VT.OnUserAuthenticated(ref this, userName, userDomain, context, userToken);
			public HRESULT OnUserAuthenticationFailed(uint context, HRESULT genericErrorCode, HRESULT specificErrorCode) mut => VT.OnUserAuthenticationFailed(ref this, context, genericErrorCode, specificErrorCode);
			public HRESULT ReauthenticateUser(uint context) mut => VT.ReauthenticateUser(ref this, context);
			public HRESULT DisconnectUser(uint context) mut => VT.DisconnectUser(ref this, context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticateUserSink self, BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) OnUserAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticateUserSink self, uint context, HRESULT genericErrorCode, HRESULT specificErrorCode) OnUserAuthenticationFailed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticateUserSink self, uint context) ReauthenticateUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticateUserSink self, uint context) DisconnectUser;
			}
		}
		[CRepr]
		public struct ITSGAuthenticationEngine : IUnknown
		{
			public const new Guid IID = .(0x9ee3e5bf, 0x04ab, 0x4691, 0x99, 0x8c, 0xd7, 0xf6, 0x22, 0x32, 0x1a, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthenticateUser(Guid mainSessionId, ref uint8 cookieData, uint32 numCookieBytes, uint context, ref ITSGAuthenticateUserSink pSink) mut => VT.AuthenticateUser(ref this, mainSessionId, ref cookieData, numCookieBytes, context, ref pSink);
			public HRESULT CancelAuthentication(Guid mainSessionId, uint context) mut => VT.CancelAuthentication(ref this, mainSessionId, context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticationEngine self, Guid mainSessionId, ref uint8 cookieData, uint32 numCookieBytes, uint context, ref ITSGAuthenticateUserSink pSink) AuthenticateUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITSGAuthenticationEngine self, Guid mainSessionId, uint context) CancelAuthentication;
			}
		}
		[CRepr]
		public struct IWTSSBPlugin : IUnknown
		{
			public const new Guid IID = .(0xdc44be78, 0xb18d, 0x4399, 0xb2, 0x10, 0x64, 0x1b, 0xf6, 0x7a, 0x00, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(out uint32 PluginCapabilities) mut => VT.Initialize(ref this, out PluginCapabilities);
			public HRESULT WTSSBX_MachineChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, ref WTSSBX_MACHINE_INFO pMachineInfo) mut => VT.WTSSBX_MachineChangeNotification(ref this, NotificationType, MachineId, ref pMachineInfo);
			public HRESULT WTSSBX_SessionChangeNotification(WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) mut => VT.WTSSBX_SessionChangeNotification(ref this, NotificationType, MachineId, NumOfSessions, SessionInfo);
			public HRESULT WTSSBX_GetMostSuitableServer(PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, PWSTR FarmName, out int32 pMachineId) mut => VT.WTSSBX_GetMostSuitableServer(ref this, UserName, DomainName, ApplicationType, FarmName, out pMachineId);
			public HRESULT Terminated() mut => VT.Terminated(ref this);
			public HRESULT WTSSBX_GetUserExternalSession(PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, ref WTSSBX_IP_ADDRESS RedirectorInternalIP, out uint32 pSessionId, out WTSSBX_MACHINE_CONNECT_INFO pMachineConnectInfo) mut => VT.WTSSBX_GetUserExternalSession(ref this, UserName, DomainName, ApplicationType, ref RedirectorInternalIP, out pSessionId, out pMachineConnectInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self, out uint32 PluginCapabilities) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, ref WTSSBX_MACHINE_INFO pMachineInfo) WTSSBX_MachineChangeNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) WTSSBX_SessionChangeNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, PWSTR FarmName, out int32 pMachineId) WTSSBX_GetMostSuitableServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self) Terminated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSSBPlugin self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, ref WTSSBX_IP_ADDRESS RedirectorInternalIP, out uint32 pSessionId, out WTSSBX_MACHINE_CONNECT_INFO pMachineConnectInfo) WTSSBX_GetUserExternalSession;
			}
		}
		[CRepr]
		public struct IWorkspaceClientExt : IUnknown
		{
			public const new Guid IID = .(0x12b952f4, 0x41ca, 0x4f21, 0xa8, 0x29, 0xa6, 0xd0, 0x7d, 0x9a, 0x16, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResourceId(out BSTR bstrWorkspaceId) mut => VT.GetResourceId(ref this, out bstrWorkspaceId);
			public HRESULT GetResourceDisplayName(out BSTR bstrWorkspaceDisplayName) mut => VT.GetResourceDisplayName(ref this, out bstrWorkspaceDisplayName);
			public HRESULT IssueDisconnect() mut => VT.IssueDisconnect(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceClientExt self, out BSTR bstrWorkspaceId) GetResourceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceClientExt self, out BSTR bstrWorkspaceDisplayName) GetResourceDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceClientExt self) IssueDisconnect;
			}
		}
		[CRepr]
		public struct IWorkspace : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWorkspaceNames(out SAFEARRAY* psaWkspNames) mut => VT.GetWorkspaceNames(ref this, out psaWkspNames);
			public HRESULT StartRemoteApplication(BSTR bstrWorkspaceId, ref SAFEARRAY psaParams) mut => VT.StartRemoteApplication(ref this, bstrWorkspaceId, ref psaParams);
			public HRESULT GetProcessId(out uint32 pulProcessId) mut => VT.GetProcessId(ref this, out pulProcessId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace self, out SAFEARRAY* psaWkspNames) GetWorkspaceNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace self, BSTR bstrWorkspaceId, ref SAFEARRAY psaParams) StartRemoteApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace self, out uint32 pulProcessId) GetProcessId;
			}
		}
		[CRepr]
		public struct IWorkspace2 : IWorkspace
		{
			public const new Guid IID = .(0x96d8d7cf, 0x783e, 0x4286, 0x83, 0x4c, 0xeb, 0xc0, 0xe9, 0x5f, 0x78, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartRemoteApplicationEx(BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, ref SAFEARRAY psaParams) mut => VT.StartRemoteApplicationEx(ref this, bstrWorkspaceId, bstrRequestingAppId, bstrRequestingAppFamilyName, bLaunchIntoImmersiveClient, bstrImmersiveClientActivationContext, ref psaParams);

			[CRepr]
			public struct VTable : IWorkspace.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace2 self, BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, ref SAFEARRAY psaParams) StartRemoteApplicationEx;
			}
		}
		[CRepr]
		public struct IWorkspace3 : IWorkspace2
		{
			public const new Guid IID = .(0x1becbe4a, 0xd654, 0x423b, 0xaf, 0xeb, 0xbe, 0x8d, 0x53, 0x2c, 0x13, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClaimsToken2(BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RECT rectCredUiParent, out BSTR pbstrAccessToken) mut => VT.GetClaimsToken2(ref this, bstrClaimsHint, bstrUserHint, claimCookie, hwndCredUiParent, rectCredUiParent, out pbstrAccessToken);
			public HRESULT SetClaimsToken(BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) mut => VT.SetClaimsToken(ref this, bstrAccessToken, ullAccessTokenExpiration, bstrRefreshToken);

			[CRepr]
			public struct VTable : IWorkspace2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace3 self, BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RECT rectCredUiParent, out BSTR pbstrAccessToken) GetClaimsToken2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspace3 self, BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) SetClaimsToken;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResource(ref IWorkspaceClientExt pUnk, out uint32 pdwCookie) mut => VT.AddResource(ref this, ref pUnk, out pdwCookie);
			public HRESULT RemoveResource(uint32 dwCookieConnection) mut => VT.RemoveResource(ref this, dwCookieConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceRegistration self, ref IWorkspaceClientExt pUnk, out uint32 pdwCookie) AddResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceRegistration self, uint32 dwCookieConnection) RemoveResource;
			}
		}
		[CRepr]
		public struct IWorkspaceRegistration2 : IWorkspaceRegistration
		{
			public const new Guid IID = .(0xcf59f654, 0x39bb, 0x44d8, 0x94, 0xd0, 0x46, 0x35, 0x72, 0x89, 0x57, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResourceEx(ref IWorkspaceClientExt pUnk, BSTR bstrEventLogUploadAddress, out uint32 pdwCookie, Guid correlationId) mut => VT.AddResourceEx(ref this, ref pUnk, bstrEventLogUploadAddress, out pdwCookie, correlationId);
			public HRESULT RemoveResourceEx(uint32 dwCookieConnection, Guid correlationId) mut => VT.RemoveResourceEx(ref this, dwCookieConnection, correlationId);

			[CRepr]
			public struct VTable : IWorkspaceRegistration.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceRegistration2 self, ref IWorkspaceClientExt pUnk, BSTR bstrEventLogUploadAddress, out uint32 pdwCookie, Guid correlationId) AddResourceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceRegistration2 self, uint32 dwCookieConnection, Guid correlationId) RemoveResourceEx;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable : IDispatch
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb2, 0x3b, 0x92, 0xc4, 0xc3, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisconnectWorkspace(BSTR bstrWorkspaceId) mut => VT.DisconnectWorkspace(ref this, bstrWorkspaceId);
			public HRESULT StartWorkspace(BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut => VT.StartWorkspace(ref this, bstrWorkspaceId, bstrUserName, bstrPassword, bstrWorkspaceParams, lTimeout, lFlags);
			public HRESULT IsWorkspaceCredentialSpecified(BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, out int16 pbCredExist) mut => VT.IsWorkspaceCredentialSpecified(ref this, bstrWorkspaceId, bCountUnauthenticatedCredentials, out pbCredExist);
			public HRESULT IsWorkspaceSSOEnabled(out int16 pbSSOEnabled) mut => VT.IsWorkspaceSSOEnabled(ref this, out pbSSOEnabled);
			public HRESULT ClearWorkspaceCredential(BSTR bstrWorkspaceId) mut => VT.ClearWorkspaceCredential(ref this, bstrWorkspaceId);
			public HRESULT OnAuthenticated(BSTR bstrWorkspaceId, BSTR bstrUserName) mut => VT.OnAuthenticated(ref this, bstrWorkspaceId, bstrUserName);
			public HRESULT DisconnectWorkspaceByFriendlyName(BSTR bstrWorkspaceFriendlyName) mut => VT.DisconnectWorkspaceByFriendlyName(ref this, bstrWorkspaceFriendlyName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId) DisconnectWorkspace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, out int16 pbCredExist) IsWorkspaceCredentialSpecified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, out int16 pbSSOEnabled) IsWorkspaceSSOEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId) ClearWorkspaceCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceId, BSTR bstrUserName) OnAuthenticated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable self, BSTR bstrWorkspaceFriendlyName) DisconnectWorkspaceByFriendlyName;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable2 : IWorkspaceScriptable
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb3, 0x3b, 0xa2, 0xc4, 0xc3, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartWorkspaceEx(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) mut => VT.StartWorkspaceEx(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags);
			public HRESULT ResourceDismissed(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) mut => VT.ResourceDismissed(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName);

			[CRepr]
			public struct VTable : IWorkspaceScriptable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable2 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspaceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable2 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) ResourceDismissed;
			}
		}
		[CRepr]
		public struct IWorkspaceScriptable3 : IWorkspaceScriptable2
		{
			public const new Guid IID = .(0x531e6512, 0x2cbf, 0x4bd2, 0x80, 0xa5, 0xd9, 0x0a, 0x71, 0x63, 0x6a, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartWorkspaceEx2(BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) mut => VT.StartWorkspaceEx2(ref this, bstrWorkspaceId, bstrWorkspaceFriendlyName, bstrRedirectorName, bstrUserName, bstrPassword, bstrAppContainer, bstrWorkspaceParams, lTimeout, lFlags, bstrEventLogUploadAddress, correlationId);

			[CRepr]
			public struct VTable : IWorkspaceScriptable2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceScriptable3 self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) StartWorkspaceEx2;
			}
		}
		[CRepr]
		public struct IWorkspaceReportMessage : IUnknown
		{
			public const new Guid IID = .(0xa7c06739, 0x500f, 0x4e8c, 0x99, 0xa8, 0x2b, 0xd6, 0x95, 0x58, 0x99, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterErrorLogMessage(BSTR bstrMessage) mut => VT.RegisterErrorLogMessage(ref this, bstrMessage);
			public HRESULT IsErrorMessageRegistered(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, out int16 pfErrorExist) mut => VT.IsErrorMessageRegistered(ref this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode, out pfErrorExist);
			public HRESULT RegisterErrorEvent(BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) mut => VT.RegisterErrorEvent(ref this, bstrWkspId, dwErrorType, bstrErrorMessageType, dwErrorCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceReportMessage self, BSTR bstrMessage) RegisterErrorLogMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceReportMessage self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, out int16 pfErrorExist) IsErrorMessageRegistered;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceReportMessage self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) RegisterErrorEvent;
			}
		}
		[CRepr]
		public struct _ITSWkspEvents : IDispatch
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ITsSbPlugin : IUnknown
		{
			public const new Guid IID = .(0x48cd7406, 0xcaab, 0x465f, 0xa5, 0xd6, 0xba, 0xa8, 0x63, 0xb9, 0xea, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref ITsSbProvider pProvider, ref ITsSbPluginNotifySink pNotifySink, ref ITsSbPluginPropertySet pPropertySet) mut => VT.Initialize(ref this, ref pProvider, ref pNotifySink, ref pPropertySet);
			public HRESULT Terminate(HRESULT hr) mut => VT.Terminate(ref this, hr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPlugin self, ref ITsSbProvider pProvider, ref ITsSbPluginNotifySink pNotifySink, ref ITsSbPluginPropertySet pPropertySet) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPlugin self, HRESULT hr) Terminate;
			}
		}
		[CRepr]
		public struct ITsSbResourcePlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xea8db42c, 0x98ed, 0x4535, 0xa8, 0x8b, 0x2a, 0x16, 0x4f, 0x35, 0x49, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPlugin.VTable {}
		}
		[CRepr]
		public struct ITsSbServiceNotification : IUnknown
		{
			public const new Guid IID = .(0x86cb68ae, 0x86e0, 0x4f57, 0x8a, 0x64, 0xbb, 0x74, 0x06, 0xbc, 0x55, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyServiceFailure() mut => VT.NotifyServiceFailure(ref this);
			public HRESULT NotifyServiceSuccess() mut => VT.NotifyServiceSuccess(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbServiceNotification self) NotifyServiceFailure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbServiceNotification self) NotifyServiceSuccess;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancing : ITsSbPlugin
		{
			public const new Guid IID = .(0x24329274, 0x9eb7, 0x11dc, 0xae, 0x98, 0xf2, 0xb4, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMostSuitableTarget(ref ITsSbClientConnection pConnection, ref ITsSbLoadBalancingNotifySink pLBSink) mut => VT.GetMostSuitableTarget(ref this, ref pConnection, ref pLBSink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbLoadBalancing self, ref ITsSbClientConnection pConnection, ref ITsSbLoadBalancingNotifySink pLBSink) GetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacement : ITsSbPlugin
		{
			public const new Guid IID = .(0xdaadee5f, 0x6d32, 0x480e, 0x9e, 0x36, 0xdd, 0xab, 0x23, 0x29, 0xf0, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryEnvironmentForTarget(ref ITsSbClientConnection pConnection, ref ITsSbPlacementNotifySink pPlacementSink) mut => VT.QueryEnvironmentForTarget(ref this, ref pConnection, ref pPlacementSink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPlacement self, ref ITsSbClientConnection pConnection, ref ITsSbPlacementNotifySink pPlacementSink) QueryEnvironmentForTarget;
			}
		}
		[CRepr]
		public struct ITsSbOrchestration : ITsSbPlugin
		{
			public const new Guid IID = .(0x64fc1172, 0x9eb7, 0x11dc, 0x8b, 0x00, 0x3a, 0xba, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareTargetForConnect(ref ITsSbClientConnection pConnection, ref ITsSbOrchestrationNotifySink pOrchestrationNotifySink) mut => VT.PrepareTargetForConnect(ref this, ref pConnection, ref pOrchestrationNotifySink);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbOrchestration self, ref ITsSbClientConnection pConnection, ref ITsSbOrchestrationNotifySink pOrchestrationNotifySink) PrepareTargetForConnect;
			}
		}
		[CRepr]
		public struct ITsSbEnvironment : IUnknown
		{
			public const new Guid IID = .(0x8c87f7f7, 0xbf51, 0x4a5c, 0x87, 0xbf, 0x8e, 0x94, 0xfb, 0x6e, 0x22, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
			public HRESULT get_ServerWeight(out uint32 pVal) mut => VT.get_ServerWeight(ref this, out pVal);
			public HRESULT get_EnvironmentPropertySet(out ITsSbEnvironmentPropertySet* ppPropertySet) mut => VT.get_EnvironmentPropertySet(ref this, out ppPropertySet);
			public HRESULT put_EnvironmentPropertySet(ref ITsSbEnvironmentPropertySet pVal) mut => VT.put_EnvironmentPropertySet(ref this, ref pVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbEnvironment self, out BSTR pVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbEnvironment self, out uint32 pVal) get_ServerWeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbEnvironment self, out ITsSbEnvironmentPropertySet* ppPropertySet) get_EnvironmentPropertySet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbEnvironment self, ref ITsSbEnvironmentPropertySet pVal) put_EnvironmentPropertySet;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalanceResult : IUnknown
		{
			public const new Guid IID = .(0x24fdb7ac, 0xfea6, 0x11dc, 0x96, 0x72, 0x9a, 0x89, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetName(out BSTR pVal) mut => VT.get_TargetName(ref this, out pVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbLoadBalanceResult self, out BSTR pVal) get_TargetName;
			}
		}
		[CRepr]
		public struct ITsSbTarget : IUnknown
		{
			public const new Guid IID = .(0x16616ecc, 0x272d, 0x411d, 0xb3, 0x24, 0x12, 0x68, 0x93, 0x03, 0x38, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetName(out BSTR pVal) mut => VT.get_TargetName(ref this, out pVal);
			public HRESULT put_TargetName(BSTR Val) mut => VT.put_TargetName(ref this, Val);
			public HRESULT get_FarmName(out BSTR pVal) mut => VT.get_FarmName(ref this, out pVal);
			public HRESULT put_FarmName(BSTR Val) mut => VT.put_FarmName(ref this, Val);
			public HRESULT get_TargetFQDN(out BSTR TargetFqdnName) mut => VT.get_TargetFQDN(ref this, out TargetFqdnName);
			public HRESULT put_TargetFQDN(BSTR Val) mut => VT.put_TargetFQDN(ref this, Val);
			public HRESULT get_TargetNetbios(out BSTR TargetNetbiosName) mut => VT.get_TargetNetbios(ref this, out TargetNetbiosName);
			public HRESULT put_TargetNetbios(BSTR Val) mut => VT.put_TargetNetbios(ref this, Val);
			public HRESULT get_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, out uint32 numAddresses) mut => VT.get_IpAddresses(ref this, SOCKADDR, out numAddresses);
			public HRESULT put_IpAddresses(TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) mut => VT.put_IpAddresses(ref this, SOCKADDR, numAddresses);
			public HRESULT get_TargetState(out TARGET_STATE pState) mut => VT.get_TargetState(ref this, out pState);
			public HRESULT put_TargetState(TARGET_STATE State) mut => VT.put_TargetState(ref this, State);
			public HRESULT get_TargetPropertySet(out ITsSbTargetPropertySet* ppPropertySet) mut => VT.get_TargetPropertySet(ref this, out ppPropertySet);
			public HRESULT put_TargetPropertySet(ref ITsSbTargetPropertySet pVal) mut => VT.put_TargetPropertySet(ref this, ref pVal);
			public HRESULT get_EnvironmentName(out BSTR pVal) mut => VT.get_EnvironmentName(ref this, out pVal);
			public HRESULT put_EnvironmentName(BSTR Val) mut => VT.put_EnvironmentName(ref this, Val);
			public HRESULT get_NumSessions(out uint32 pNumSessions) mut => VT.get_NumSessions(ref this, out pNumSessions);
			public HRESULT get_NumPendingConnections(out uint32 pNumPendingConnections) mut => VT.get_NumPendingConnections(ref this, out pNumPendingConnections);
			public HRESULT get_TargetLoad(out uint32 pTargetLoad) mut => VT.get_TargetLoad(ref this, out pTargetLoad);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out BSTR pVal) get_TargetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, BSTR Val) put_TargetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out BSTR pVal) get_FarmName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, BSTR Val) put_FarmName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out BSTR TargetFqdnName) get_TargetFQDN;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, BSTR Val) put_TargetFQDN;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out BSTR TargetNetbiosName) get_TargetNetbios;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, BSTR Val) put_TargetNetbios;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, TSSD_ConnectionPoint* SOCKADDR, out uint32 numAddresses) get_IpAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) put_IpAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out TARGET_STATE pState) get_TargetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, TARGET_STATE State) put_TargetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out ITsSbTargetPropertySet* ppPropertySet) get_TargetPropertySet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, ref ITsSbTargetPropertySet pVal) put_TargetPropertySet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out BSTR pVal) get_EnvironmentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, BSTR Val) put_EnvironmentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out uint32 pNumSessions) get_NumSessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out uint32 pNumPendingConnections) get_NumPendingConnections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTarget self, out uint32 pTargetLoad) get_TargetLoad;
			}
		}
		[CRepr]
		public struct ITsSbSession : IUnknown
		{
			public const new Guid IID = .(0xd453aac7, 0xb1d8, 0x4c5e, 0xba, 0x34, 0x9a, 0xfb, 0x4c, 0x8c, 0x55, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SessionId(out uint32 pVal) mut => VT.get_SessionId(ref this, out pVal);
			public HRESULT get_TargetName(out BSTR targetName) mut => VT.get_TargetName(ref this, out targetName);
			public HRESULT put_TargetName(BSTR targetName) mut => VT.put_TargetName(ref this, targetName);
			public HRESULT get_Username(out BSTR userName) mut => VT.get_Username(ref this, out userName);
			public HRESULT get_Domain(out BSTR domain) mut => VT.get_Domain(ref this, out domain);
			public HRESULT get_State(out TSSESSION_STATE pState) mut => VT.get_State(ref this, out pState);
			public HRESULT put_State(TSSESSION_STATE State) mut => VT.put_State(ref this, State);
			public HRESULT get_CreateTime(out FILETIME pTime) mut => VT.get_CreateTime(ref this, out pTime);
			public HRESULT put_CreateTime(FILETIME Time) mut => VT.put_CreateTime(ref this, Time);
			public HRESULT get_DisconnectTime(out FILETIME pTime) mut => VT.get_DisconnectTime(ref this, out pTime);
			public HRESULT put_DisconnectTime(FILETIME Time) mut => VT.put_DisconnectTime(ref this, Time);
			public HRESULT get_InitialProgram(out BSTR app) mut => VT.get_InitialProgram(ref this, out app);
			public HRESULT put_InitialProgram(BSTR Application) mut => VT.put_InitialProgram(ref this, Application);
			public HRESULT get_ClientDisplay(out CLIENT_DISPLAY pClientDisplay) mut => VT.get_ClientDisplay(ref this, out pClientDisplay);
			public HRESULT put_ClientDisplay(CLIENT_DISPLAY pClientDisplay) mut => VT.put_ClientDisplay(ref this, pClientDisplay);
			public HRESULT get_ProtocolType(out uint32 pVal) mut => VT.get_ProtocolType(ref this, out pVal);
			public HRESULT put_ProtocolType(uint32 Val) mut => VT.put_ProtocolType(ref this, Val);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out uint32 pVal) get_SessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out BSTR targetName) get_TargetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, BSTR targetName) put_TargetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out BSTR userName) get_Username;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out BSTR domain) get_Domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out TSSESSION_STATE pState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, TSSESSION_STATE State) put_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out FILETIME pTime) get_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, FILETIME Time) put_CreateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out FILETIME pTime) get_DisconnectTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, FILETIME Time) put_DisconnectTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out BSTR app) get_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, BSTR Application) put_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out CLIENT_DISPLAY pClientDisplay) get_ClientDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, CLIENT_DISPLAY pClientDisplay) put_ClientDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, out uint32 pVal) get_ProtocolType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbSession self, uint32 Val) put_ProtocolType;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotification : IUnknown
		{
			public const new Guid IID = .(0x65d3e85a, 0xc39b, 0x11dc, 0xb9, 0x2d, 0x3c, 0xd2, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifySessionChange(TSSESSION_STATE changeType, ref ITsSbSession pSession) mut => VT.NotifySessionChange(ref this, changeType, ref pSession);
			public HRESULT NotifyTargetChange(uint32 TargetChangeType, ref ITsSbTarget pTarget) mut => VT.NotifyTargetChange(ref this, TargetChangeType, ref pTarget);
			public HRESULT NotifyClientConnectionStateChange(CONNECTION_CHANGE_NOTIFICATION ChangeType, ref ITsSbClientConnection pConnection) mut => VT.NotifyClientConnectionStateChange(ref this, ChangeType, ref pConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotification self, TSSESSION_STATE changeType, ref ITsSbSession pSession) NotifySessionChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotification self, uint32 TargetChangeType, ref ITsSbTarget pTarget) NotifyTargetChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotification self, CONNECTION_CHANGE_NOTIFICATION ChangeType, ref ITsSbClientConnection pConnection) NotifyClientConnectionStateChange;
			}
		}
		[CRepr]
		public struct ITsSbResourceNotificationEx : IUnknown
		{
			public const new Guid IID = .(0xa8a47fde, 0xca91, 0x44d2, 0xb8, 0x97, 0x3a, 0xa2, 0x8a, 0x43, 0xb2, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifySessionChangeEx(BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) mut => VT.NotifySessionChangeEx(ref this, targetName, userName, domain, sessionId, sessionState);
			public HRESULT NotifyTargetChangeEx(BSTR targetName, uint32 targetChangeType) mut => VT.NotifyTargetChangeEx(ref this, targetName, targetChangeType);
			public HRESULT NotifyClientConnectionStateChangeEx(BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) mut => VT.NotifyClientConnectionStateChangeEx(ref this, userName, domain, initialProgram, poolName, targetName, connectionChangeType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotificationEx self, BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) NotifySessionChangeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotificationEx self, BSTR targetName, uint32 targetChangeType) NotifyTargetChangeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourceNotificationEx self, BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) NotifyClientConnectionStateChangeEx;
			}
		}
		[CRepr]
		public struct ITsSbTaskInfo : IUnknown
		{
			public const new Guid IID = .(0x523d1083, 0x89be, 0x48dd, 0x99, 0xea, 0x04, 0xe8, 0x2f, 0xfa, 0x72, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TargetId(out BSTR pName) mut => VT.get_TargetId(ref this, out pName);
			public HRESULT get_StartTime(out FILETIME pStartTime) mut => VT.get_StartTime(ref this, out pStartTime);
			public HRESULT get_EndTime(out FILETIME pEndTime) mut => VT.get_EndTime(ref this, out pEndTime);
			public HRESULT get_Deadline(out FILETIME pDeadline) mut => VT.get_Deadline(ref this, out pDeadline);
			public HRESULT get_Identifier(out BSTR pIdentifier) mut => VT.get_Identifier(ref this, out pIdentifier);
			public HRESULT get_Label(out BSTR pLabel) mut => VT.get_Label(ref this, out pLabel);
			public HRESULT get_Context(out SAFEARRAY* pContext) mut => VT.get_Context(ref this, out pContext);
			public HRESULT get_Plugin(out BSTR pPlugin) mut => VT.get_Plugin(ref this, out pPlugin);
			public HRESULT get_Status(out RDV_TASK_STATUS pStatus) mut => VT.get_Status(ref this, out pStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out BSTR pName) get_TargetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out FILETIME pStartTime) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out FILETIME pEndTime) get_EndTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out FILETIME pDeadline) get_Deadline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out BSTR pIdentifier) get_Identifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out BSTR pLabel) get_Label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out SAFEARRAY* pContext) get_Context;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out BSTR pPlugin) get_Plugin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskInfo self, out RDV_TASK_STATUS pStatus) get_Status;
			}
		}
		[CRepr]
		public struct ITsSbTaskPlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xfa22ef0f, 0x8705, 0x41be, 0x93, 0xbc, 0x44, 0xbd, 0xbc, 0xf1, 0xc9, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeTaskPlugin(ref ITsSbTaskPluginNotifySink pITsSbTaskPluginNotifySink) mut => VT.InitializeTaskPlugin(ref this, ref pITsSbTaskPluginNotifySink);
			public HRESULT SetTaskQueue(BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) mut => VT.SetTaskQueue(ref this, pszHostName, SbTaskInfoSize, pITsSbTaskInfo);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPlugin self, ref ITsSbTaskPluginNotifySink pITsSbTaskPluginNotifySink) InitializeTaskPlugin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPlugin self, BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) SetTaskQueue;
			}
		}
		[CRepr]
		public struct ITsSbPropertySet : IPropertyBag
		{
			public const new Guid IID = .(0x5c025171, 0xbb1e, 0x4baf, 0xa2, 0x12, 0x6d, 0x5e, 0x97, 0x74, 0xb3, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPropertyBag.VTable {}
		}
		[CRepr]
		public struct ITsSbPluginPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0x95006e34, 0x7eff, 0x4b6c, 0xbb, 0x40, 0x49, 0xa4, 0xfd, 0xa7, 0xce, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbClientConnectionPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xe51995b0, 0x46d6, 0x11dd, 0xaa, 0x21, 0xce, 0xdc, 0x55, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbTargetPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xf7bda5d6, 0x994c, 0x4e11, 0xa0, 0x79, 0x27, 0x63, 0xb6, 0x18, 0x30, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbEnvironmentPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xd0d1bf7e, 0x7acf, 0x11dd, 0xa2, 0x43, 0xe5, 0x11, 0x56, 0xd8, 0x95, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITsSbPropertySet.VTable {}
		}
		[CRepr]
		public struct ITsSbBaseNotifySink : IUnknown
		{
			public const new Guid IID = .(0x808a6537, 0x1282, 0x4989, 0x9e, 0x09, 0xf4, 0x39, 0x38, 0xb7, 0x17, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnError(HRESULT hrError) mut => VT.OnError(ref this, hrError);
			public HRESULT OnReportStatus(CLIENT_MESSAGE_TYPE messageType, uint32 messageID) mut => VT.OnReportStatus(ref this, messageType, messageID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbBaseNotifySink self, HRESULT hrError) OnError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbBaseNotifySink self, CLIENT_MESSAGE_TYPE messageType, uint32 messageID) OnReportStatus;
			}
		}
		[CRepr]
		public struct ITsSbPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x44dfe30b, 0xc3be, 0x40f5, 0xbf, 0x82, 0x7a, 0x95, 0xbb, 0x79, 0x5a, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInitialized(HRESULT hr) mut => VT.OnInitialized(ref this, hr);
			public HRESULT OnTerminated() mut => VT.OnTerminated(ref this);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPluginNotifySink self, HRESULT hr) OnInitialized;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPluginNotifySink self) OnTerminated;
			}
		}
		[CRepr]
		public struct ITsSbLoadBalancingNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x5f8a8297, 0x3244, 0x4e6a, 0x95, 0x8a, 0x27, 0xc8, 0x22, 0xc1, 0xe1, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnGetMostSuitableTarget(ref ITsSbLoadBalanceResult pLBResult, BOOL fIsNewConnection) mut => VT.OnGetMostSuitableTarget(ref this, ref pLBResult, fIsNewConnection);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbLoadBalancingNotifySink self, ref ITsSbLoadBalanceResult pLBResult, BOOL fIsNewConnection) OnGetMostSuitableTarget;
			}
		}
		[CRepr]
		public struct ITsSbPlacementNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x68a0c487, 0x2b4f, 0x46c2, 0x94, 0xa1, 0x6c, 0xe6, 0x85, 0x18, 0x36, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQueryEnvironmentCompleted(ref ITsSbEnvironment pEnvironment) mut => VT.OnQueryEnvironmentCompleted(ref this, ref pEnvironment);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbPlacementNotifySink self, ref ITsSbEnvironment pEnvironment) OnQueryEnvironmentCompleted;
			}
		}
		[CRepr]
		public struct ITsSbOrchestrationNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x36c37d61, 0x926b, 0x442f, 0xbc, 0xa5, 0x11, 0x8c, 0x6d, 0x50, 0xdc, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReadyToConnect(ref ITsSbTarget pTarget) mut => VT.OnReadyToConnect(ref this, ref pTarget);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbOrchestrationNotifySink self, ref ITsSbTarget pTarget) OnReadyToConnect;
			}
		}
		[CRepr]
		public struct ITsSbTaskPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x6aaf899e, 0xc2ec, 0x45ee, 0xaa, 0x37, 0x45, 0xe6, 0x08, 0x95, 0x26, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetTaskTime(BSTR szTargetName, FILETIME TaskStartTime, FILETIME TaskEndTime, FILETIME TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, ref SAFEARRAY saContext) mut => VT.OnSetTaskTime(ref this, szTargetName, TaskStartTime, TaskEndTime, TaskDeadline, szTaskLabel, szTaskIdentifier, szTaskPlugin, dwTaskStatus, ref saContext);
			public HRESULT OnDeleteTaskTime(BSTR szTargetName, BSTR szTaskIdentifier) mut => VT.OnDeleteTaskTime(ref this, szTargetName, szTaskIdentifier);
			public HRESULT OnUpdateTaskStatus(BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) mut => VT.OnUpdateTaskStatus(ref this, szTargetName, TaskIdentifier, TaskStatus);
			public HRESULT OnReportTasks(BSTR szHostName) mut => VT.OnReportTasks(ref this, szHostName);

			[CRepr]
			public struct VTable : ITsSbBaseNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, FILETIME TaskStartTime, FILETIME TaskEndTime, FILETIME TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, ref SAFEARRAY saContext) OnSetTaskTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, BSTR szTaskIdentifier) OnDeleteTaskTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPluginNotifySink self, BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) OnUpdateTaskStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbTaskPluginNotifySink self, BSTR szHostName) OnReportTasks;
			}
		}
		[CRepr]
		public struct ITsSbClientConnection : IUnknown
		{
			public const new Guid IID = .(0x18857499, 0xad61, 0x4b1b, 0xb7, 0xdf, 0xcb, 0xcd, 0x41, 0xfb, 0x83, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(out BSTR pVal) mut => VT.get_UserName(ref this, out pVal);
			public HRESULT get_Domain(out BSTR pVal) mut => VT.get_Domain(ref this, out pVal);
			public HRESULT get_InitialProgram(out BSTR pVal) mut => VT.get_InitialProgram(ref this, out pVal);
			public HRESULT get_LoadBalanceResult(out ITsSbLoadBalanceResult* ppVal) mut => VT.get_LoadBalanceResult(ref this, out ppVal);
			public HRESULT get_FarmName(out BSTR pVal) mut => VT.get_FarmName(ref this, out pVal);
			public HRESULT PutContext(BSTR contextId, VARIANT context, VARIANT* existingContext) mut => VT.PutContext(ref this, contextId, context, existingContext);
			public HRESULT GetContext(BSTR contextId, out VARIANT context) mut => VT.GetContext(ref this, contextId, out context);
			public HRESULT get_Environment(out ITsSbEnvironment* ppEnvironment) mut => VT.get_Environment(ref this, out ppEnvironment);
			public HRESULT get_ConnectionError() mut => VT.get_ConnectionError(ref this);
			public HRESULT get_SamUserAccount(out BSTR pVal) mut => VT.get_SamUserAccount(ref this, out pVal);
			public HRESULT get_ClientConnectionPropertySet(out ITsSbClientConnectionPropertySet* ppPropertySet) mut => VT.get_ClientConnectionPropertySet(ref this, out ppPropertySet);
			public HRESULT get_IsFirstAssignment(out BOOL ppVal) mut => VT.get_IsFirstAssignment(ref this, out ppVal);
			public HRESULT get_RdFarmType(out RD_FARM_TYPE pRdFarmType) mut => VT.get_RdFarmType(ref this, out pRdFarmType);
			public HRESULT get_UserSidString(out int8* pszUserSidString) mut => VT.get_UserSidString(ref this, out pszUserSidString);
			public HRESULT GetDisconnectedSession(out ITsSbSession* ppSession) mut => VT.GetDisconnectedSession(ref this, out ppSession);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BSTR pVal) get_UserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BSTR pVal) get_Domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BSTR pVal) get_InitialProgram;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out ITsSbLoadBalanceResult* ppVal) get_LoadBalanceResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BSTR pVal) get_FarmName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, BSTR contextId, VARIANT context, VARIANT* existingContext) PutContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, BSTR contextId, out VARIANT context) GetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out ITsSbEnvironment* ppEnvironment) get_Environment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self) get_ConnectionError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BSTR pVal) get_SamUserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out ITsSbClientConnectionPropertySet* ppPropertySet) get_ClientConnectionPropertySet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out BOOL ppVal) get_IsFirstAssignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out RD_FARM_TYPE pRdFarmType) get_RdFarmType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out int8* pszUserSidString) get_UserSidString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbClientConnection self, out ITsSbSession* ppSession) GetDisconnectedSession;
			}
		}
		[CRepr]
		public struct ITsSbProvider : IUnknown
		{
			public const new Guid IID = .(0x87a4098f, 0x6d7b, 0x44dd, 0xbc, 0x17, 0x8c, 0xe4, 0x4e, 0x37, 0x0d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTargetObject(BSTR TargetName, BSTR EnvironmentName, out ITsSbTarget* ppTarget) mut => VT.CreateTargetObject(ref this, TargetName, EnvironmentName, out ppTarget);
			public HRESULT CreateLoadBalanceResultObject(BSTR TargetName, out ITsSbLoadBalanceResult* ppLBResult) mut => VT.CreateLoadBalanceResultObject(ref this, TargetName, out ppLBResult);
			public HRESULT CreateSessionObject(BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, out ITsSbSession* ppSession) mut => VT.CreateSessionObject(ref this, TargetName, UserName, Domain, SessionId, out ppSession);
			public HRESULT CreatePluginPropertySet(out ITsSbPluginPropertySet* ppPropertySet) mut => VT.CreatePluginPropertySet(ref this, out ppPropertySet);
			public HRESULT CreateTargetPropertySetObject(out ITsSbTargetPropertySet* ppPropertySet) mut => VT.CreateTargetPropertySetObject(ref this, out ppPropertySet);
			public HRESULT CreateEnvironmentObject(BSTR Name, uint32 ServerWeight, out ITsSbEnvironment* ppEnvironment) mut => VT.CreateEnvironmentObject(ref this, Name, ServerWeight, out ppEnvironment);
			public HRESULT GetResourcePluginStore(out ITsSbResourcePluginStore* ppStore) mut => VT.GetResourcePluginStore(ref this, out ppStore);
			public HRESULT GetFilterPluginStore(out ITsSbFilterPluginStore* ppStore) mut => VT.GetFilterPluginStore(ref this, out ppStore);
			public HRESULT RegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor, ref ITsSbResourceNotification pPluginNotification) mut => VT.RegisterForNotification(ref this, notificationType, ResourceToMonitor, ref pPluginNotification);
			public HRESULT UnRegisterForNotification(uint32 notificationType, BSTR ResourceToMonitor) mut => VT.UnRegisterForNotification(ref this, notificationType, ResourceToMonitor);
			public HRESULT GetInstanceOfGlobalStore(out ITsSbGlobalStore* ppGlobalStore) mut => VT.GetInstanceOfGlobalStore(ref this, out ppGlobalStore);
			public HRESULT CreateEnvironmentPropertySetObject(out ITsSbEnvironmentPropertySet* ppPropertySet) mut => VT.CreateEnvironmentPropertySetObject(ref this, out ppPropertySet);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, BSTR TargetName, BSTR EnvironmentName, out ITsSbTarget* ppTarget) CreateTargetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, BSTR TargetName, out ITsSbLoadBalanceResult* ppLBResult) CreateLoadBalanceResultObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, out ITsSbSession* ppSession) CreateSessionObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbPluginPropertySet* ppPropertySet) CreatePluginPropertySet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbTargetPropertySet* ppPropertySet) CreateTargetPropertySetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, BSTR Name, uint32 ServerWeight, out ITsSbEnvironment* ppEnvironment) CreateEnvironmentObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbResourcePluginStore* ppStore) GetResourcePluginStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbFilterPluginStore* ppStore) GetFilterPluginStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, uint32 notificationType, BSTR ResourceToMonitor, ref ITsSbResourceNotification pPluginNotification) RegisterForNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, uint32 notificationType, BSTR ResourceToMonitor) UnRegisterForNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbGlobalStore* ppGlobalStore) GetInstanceOfGlobalStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvider self, out ITsSbEnvironmentPropertySet* ppPropertySet) CreateEnvironmentPropertySetObject;
			}
		}
		[CRepr]
		public struct ITsSbResourcePluginStore : IUnknown
		{
			public const new Guid IID = .(0x5c38f65f, 0xbcf1, 0x4036, 0xa6, 0xbf, 0x9e, 0x3c, 0xcc, 0xae, 0x0b, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryTarget(BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) mut => VT.QueryTarget(ref this, TargetName, FarmName, out ppTarget);
			public HRESULT QuerySessionBySessionId(uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) mut => VT.QuerySessionBySessionId(ref this, dwSessionId, TargetName, out ppSession);
			public HRESULT AddTargetToStore(ref ITsSbTarget pTarget) mut => VT.AddTargetToStore(ref this, ref pTarget);
			public HRESULT AddSessionToStore(ref ITsSbSession pSession) mut => VT.AddSessionToStore(ref this, ref pSession);
			public HRESULT AddEnvironmentToStore(ref ITsSbEnvironment pEnvironment) mut => VT.AddEnvironmentToStore(ref this, ref pEnvironment);
			public HRESULT RemoveEnvironmentFromStore(BSTR EnvironmentName, BOOL bIgnoreOwner) mut => VT.RemoveEnvironmentFromStore(ref this, EnvironmentName, bIgnoreOwner);
			public HRESULT EnumerateFarms(out uint32 pdwCount, out SAFEARRAY* pVal) mut => VT.EnumerateFarms(ref this, out pdwCount, out pVal);
			public HRESULT QueryEnvironment(BSTR EnvironmentName, out ITsSbEnvironment* ppEnvironment) mut => VT.QueryEnvironment(ref this, EnvironmentName, out ppEnvironment);
			public HRESULT EnumerateEnvironments(out uint32 pdwCount, ITsSbEnvironment*** pVal) mut => VT.EnumerateEnvironments(ref this, out pdwCount, pVal);
			public HRESULT SaveTarget(ref ITsSbTarget pTarget, BOOL bForceWrite) mut => VT.SaveTarget(ref this, ref pTarget, bForceWrite);
			public HRESULT SaveEnvironment(ref ITsSbEnvironment pEnvironment, BOOL bForceWrite) mut => VT.SaveEnvironment(ref this, ref pEnvironment, bForceWrite);
			public HRESULT SaveSession(ref ITsSbSession pSession) mut => VT.SaveSession(ref this, ref pSession);
			public HRESULT SetTargetProperty(BSTR TargetName, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetTargetProperty(ref this, TargetName, PropertyName, ref pProperty);
			public HRESULT SetEnvironmentProperty(BSTR EnvironmentName, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetEnvironmentProperty(ref this, EnvironmentName, PropertyName, ref pProperty);
			public HRESULT SetTargetState(BSTR targetName, TARGET_STATE newState, out TARGET_STATE pOldState) mut => VT.SetTargetState(ref this, targetName, newState, out pOldState);
			public HRESULT SetSessionState(ref ITsSbSession sbSession) mut => VT.SetSessionState(ref this, ref sbSession);
			public HRESULT EnumerateTargets(BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, out uint32 pdwCount, ITsSbTarget*** pVal) mut => VT.EnumerateTargets(ref this, FarmName, EnvName, sortByFieldId, sortyByPropName, out pdwCount, pVal);
			public HRESULT EnumerateSessions(BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) mut => VT.EnumerateSessions(ref this, targetName, userName, userDomain, poolName, initialProgram, ref pSessionState, out pdwCount, ppVal);
			public HRESULT GetFarmProperty(BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) mut => VT.GetFarmProperty(ref this, farmName, propertyName, ref pVarValue);
			public HRESULT DeleteTarget(BSTR targetName, BSTR hostName) mut => VT.DeleteTarget(ref this, targetName, hostName);
			public HRESULT SetTargetPropertyWithVersionCheck(ref ITsSbTarget pTarget, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetTargetPropertyWithVersionCheck(ref this, ref pTarget, PropertyName, ref pProperty);
			public HRESULT SetEnvironmentPropertyWithVersionCheck(ref ITsSbEnvironment pEnvironment, BSTR PropertyName, ref VARIANT pProperty) mut => VT.SetEnvironmentPropertyWithVersionCheck(ref this, ref pEnvironment, PropertyName, ref pProperty);
			public HRESULT AcquireTargetLock(BSTR targetName, uint32 dwTimeout, out IUnknown* ppContext) mut => VT.AcquireTargetLock(ref this, targetName, dwTimeout, out ppContext);
			public HRESULT ReleaseTargetLock(ref IUnknown pContext) mut => VT.ReleaseTargetLock(ref this, ref pContext);
			public HRESULT TestAndSetServerState(BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, out TARGET_STATE pInitState) mut => VT.TestAndSetServerState(ref this, PoolName, ServerFQDN, NewState, TestState, out pInitState);
			public HRESULT SetServerWaitingToStart(BSTR PoolName, BSTR serverName) mut => VT.SetServerWaitingToStart(ref this, PoolName, serverName);
			public HRESULT GetServerState(BSTR PoolName, BSTR ServerFQDN, out TARGET_STATE pState) mut => VT.GetServerState(ref this, PoolName, ServerFQDN, out pState);
			public HRESULT SetServerDrainMode(BSTR ServerFQDN, uint32 DrainMode) mut => VT.SetServerDrainMode(ref this, ServerFQDN, DrainMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) QueryTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) QuerySessionBySessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget) AddTargetToStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbSession pSession) AddSessionToStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment) AddEnvironmentToStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, BOOL bIgnoreOwner) RemoveEnvironmentFromStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, out uint32 pdwCount, out SAFEARRAY* pVal) EnumerateFarms;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, out ITsSbEnvironment* ppEnvironment) QueryEnvironment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, out uint32 pdwCount, ITsSbEnvironment*** pVal) EnumerateEnvironments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget, BOOL bForceWrite) SaveTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment, BOOL bForceWrite) SaveEnvironment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbSession pSession) SaveSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR TargetName, BSTR PropertyName, ref VARIANT pProperty) SetTargetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR EnvironmentName, BSTR PropertyName, ref VARIANT pProperty) SetEnvironmentProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR targetName, TARGET_STATE newState, out TARGET_STATE pOldState) SetTargetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbSession sbSession) SetSessionState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, out uint32 pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) GetFarmProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR targetName, BSTR hostName) DeleteTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbTarget pTarget, BSTR PropertyName, ref VARIANT pProperty) SetTargetPropertyWithVersionCheck;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref ITsSbEnvironment pEnvironment, BSTR PropertyName, ref VARIANT pProperty) SetEnvironmentPropertyWithVersionCheck;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR targetName, uint32 dwTimeout, out IUnknown* ppContext) AcquireTargetLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, ref IUnknown pContext) ReleaseTargetLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, out TARGET_STATE pInitState) TestAndSetServerState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR serverName) SetServerWaitingToStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR PoolName, BSTR ServerFQDN, out TARGET_STATE pState) GetServerState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbResourcePluginStore self, BSTR ServerFQDN, uint32 DrainMode) SetServerDrainMode;
			}
		}
		[CRepr]
		public struct ITsSbFilterPluginStore : IUnknown
		{
			public const new Guid IID = .(0x85b44b0f, 0xed78, 0x413f, 0x97, 0x02, 0xfa, 0x6d, 0x3b, 0x5e, 0xe7, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SaveProperties(ref ITsSbPropertySet pPropertySet) mut => VT.SaveProperties(ref this, ref pPropertySet);
			public HRESULT EnumerateProperties(out ITsSbPropertySet* ppPropertySet) mut => VT.EnumerateProperties(ref this, out ppPropertySet);
			public HRESULT DeleteProperties(BSTR propertyName) mut => VT.DeleteProperties(ref this, propertyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbFilterPluginStore self, ref ITsSbPropertySet pPropertySet) SaveProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbFilterPluginStore self, out ITsSbPropertySet* ppPropertySet) EnumerateProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbFilterPluginStore self, BSTR propertyName) DeleteProperties;
			}
		}
		[CRepr]
		public struct ITsSbGlobalStore : IUnknown
		{
			public const new Guid IID = .(0x9ab60f7b, 0xbd72, 0x4d9f, 0x8a, 0x3a, 0xa0, 0xea, 0x55, 0x74, 0xe6, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryTarget(BSTR ProviderName, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) mut => VT.QueryTarget(ref this, ProviderName, TargetName, FarmName, out ppTarget);
			public HRESULT QuerySessionBySessionId(BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) mut => VT.QuerySessionBySessionId(ref this, ProviderName, dwSessionId, TargetName, out ppSession);
			public HRESULT EnumerateFarms(BSTR ProviderName, out uint32 pdwCount, out SAFEARRAY* pVal) mut => VT.EnumerateFarms(ref this, ProviderName, out pdwCount, out pVal);
			public HRESULT EnumerateTargets(BSTR ProviderName, BSTR FarmName, BSTR EnvName, out uint32 pdwCount, ITsSbTarget*** pVal) mut => VT.EnumerateTargets(ref this, ProviderName, FarmName, EnvName, out pdwCount, pVal);
			public HRESULT EnumerateEnvironmentsByProvider(BSTR ProviderName, out uint32 pdwCount, ITsSbEnvironment*** ppVal) mut => VT.EnumerateEnvironmentsByProvider(ref this, ProviderName, out pdwCount, ppVal);
			public HRESULT EnumerateSessions(BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) mut => VT.EnumerateSessions(ref this, ProviderName, targetName, userName, userDomain, poolName, initialProgram, ref pSessionState, out pdwCount, ppVal);
			public HRESULT GetFarmProperty(BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) mut => VT.GetFarmProperty(ref this, farmName, propertyName, ref pVarValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR TargetName, BSTR FarmName, out ITsSbTarget* ppTarget) QueryTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, out ITsSbSession* ppSession) QuerySessionBySessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, out uint32 pdwCount, out SAFEARRAY* pVal) EnumerateFarms;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR FarmName, BSTR EnvName, out uint32 pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, out uint32 pdwCount, ITsSbEnvironment*** ppVal) EnumerateEnvironmentsByProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, ref TSSESSION_STATE pSessionState, out uint32 pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGlobalStore self, BSTR farmName, BSTR propertyName, ref VARIANT pVarValue) GetFarmProperty;
			}
		}
		[CRepr]
		public struct ITsSbProvisioningPluginNotifySink : IUnknown
		{
			public const new Guid IID = .(0xaca87a8e, 0x818b, 0x4581, 0xa0, 0x32, 0x49, 0xc3, 0xdf, 0xb9, 0xc7, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnJobCreated(ref VM_NOTIFY_INFO pVmNotifyInfo) mut => VT.OnJobCreated(ref this, ref pVmNotifyInfo);
			public HRESULT OnVirtualMachineStatusChanged(ref VM_NOTIFY_ENTRY pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) mut => VT.OnVirtualMachineStatusChanged(ref this, ref pVmNotifyEntry, VmNotifyStatus, ErrorCode, ErrorDescr);
			public HRESULT OnJobCompleted(HRESULT ResultCode, BSTR ResultDescription) mut => VT.OnJobCompleted(ref this, ResultCode, ResultDescription);
			public HRESULT OnJobCancelled() mut => VT.OnJobCancelled(ref this);
			public HRESULT LockVirtualMachine(ref VM_NOTIFY_ENTRY pVmNotifyEntry) mut => VT.LockVirtualMachine(ref this, ref pVmNotifyEntry);
			public HRESULT OnVirtualMachineHostStatusChanged(BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) mut => VT.OnVirtualMachineHostStatusChanged(ref this, VmHost, VmHostNotifyStatus, ErrorCode, ErrorDescr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_INFO pVmNotifyInfo) OnJobCreated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_ENTRY pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineStatusChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self, HRESULT ResultCode, BSTR ResultDescription) OnJobCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self) OnJobCancelled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self, ref VM_NOTIFY_ENTRY pVmNotifyEntry) LockVirtualMachine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioningPluginNotifySink self, BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineHostStatusChanged;
			}
		}
		[CRepr]
		public struct ITsSbProvisioning : ITsSbPlugin
		{
			public const new Guid IID = .(0x2f6f0dbb, 0x9e4f, 0x462b, 0x9c, 0x3f, 0xfc, 0xcc, 0x3d, 0xcb, 0x62, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) mut => VT.CreateVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink);
			public HRESULT PatchVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink, ref VM_PATCH_INFO pVMPatchInfo) mut => VT.PatchVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink, ref pVMPatchInfo);
			public HRESULT DeleteVirtualMachines(BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) mut => VT.DeleteVirtualMachines(ref this, JobXmlString, JobGuid, ref pSink);
			public HRESULT CancelJob(BSTR JobGuid) mut => VT.CancelJob(ref this, JobGuid);

			[CRepr]
			public struct VTable : ITsSbPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) CreateVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink, ref VM_PATCH_INFO pVMPatchInfo) PatchVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioning self, BSTR JobXmlString, BSTR JobGuid, ref ITsSbProvisioningPluginNotifySink pSink) DeleteVirtualMachines;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbProvisioning self, BSTR JobGuid) CancelJob;
			}
		}
		[CRepr]
		public struct ITsSbGenericNotifySink : IUnknown
		{
			public const new Guid IID = .(0x4c4c8c4f, 0x300b, 0x46ad, 0x91, 0x64, 0x84, 0x68, 0xa7, 0xe7, 0x56, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCompleted(HRESULT Status) mut => VT.OnCompleted(ref this, Status);
			public HRESULT GetWaitTimeout(out FILETIME pftTimeout) mut => VT.GetWaitTimeout(ref this, out pftTimeout);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGenericNotifySink self, HRESULT Status) OnCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITsSbGenericNotifySink self, out FILETIME pftTimeout) GetWaitTimeout;
			}
		}
		[CRepr]
		public struct ItsPubPlugin : IUnknown
		{
			public const new Guid IID = .(0x70c04b05, 0xf347, 0x412b, 0x82, 0x2f, 0x36, 0xc9, 0x9c, 0x54, 0xca, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResourceList(PWSTR userID, out int32 pceAppListSize, out pluginResource* resourceList) mut => VT.GetResourceList(ref this, userID, out pceAppListSize, out resourceList);
			public HRESULT GetResource(PWSTR alias, int32 flags, out pluginResource resource) mut => VT.GetResource(ref this, alias, flags, out resource);
			public HRESULT GetCacheLastUpdateTime(out uint64 lastUpdateTime) mut => VT.GetCacheLastUpdateTime(ref this, out lastUpdateTime);
			public HRESULT get_pluginName(out BSTR pVal) mut => VT.get_pluginName(ref this, out pVal);
			public HRESULT get_pluginVersion(out BSTR pVal) mut => VT.get_pluginVersion(ref this, out pVal);
			public HRESULT ResolveResource(out uint32 resourceType, PWSTR resourceLocation, PWSTR endPointName, PWSTR userID, PWSTR alias) mut => VT.ResolveResource(ref this, out resourceType, resourceLocation, endPointName, userID, alias);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, PWSTR userID, out int32 pceAppListSize, out pluginResource* resourceList) GetResourceList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, PWSTR alias, int32 flags, out pluginResource resource) GetResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, out uint64 lastUpdateTime) GetCacheLastUpdateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, out BSTR pVal) get_pluginName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, out BSTR pVal) get_pluginVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin self, out uint32 resourceType, PWSTR resourceLocation, PWSTR endPointName, PWSTR userID, PWSTR alias) ResolveResource;
			}
		}
		[CRepr]
		public struct ItsPubPlugin2 : ItsPubPlugin
		{
			public const new Guid IID = .(0xfa4ce418, 0xaad7, 0x4ec6, 0xba, 0xd1, 0x0a, 0x32, 0x1b, 0xa4, 0x65, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResource2List(PWSTR userID, out int32 pceAppListSize, out pluginResource2* resourceList) mut => VT.GetResource2List(ref this, userID, out pceAppListSize, out resourceList);
			public HRESULT GetResource2(PWSTR alias, int32 flags, out pluginResource2 resource) mut => VT.GetResource2(ref this, alias, flags, out resource);
			public HRESULT ResolvePersonalDesktop(PWSTR userId, PWSTR poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, out TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE pPdAssignmentType, PWSTR endPointName) mut => VT.ResolvePersonalDesktop(ref this, userId, poolId, ePdResolutionType, out pPdAssignmentType, endPointName);
			public HRESULT DeletePersonalDesktopAssignment(PWSTR userId, PWSTR poolId, PWSTR endpointName) mut => VT.DeletePersonalDesktopAssignment(ref this, userId, poolId, endpointName);

			[CRepr]
			public struct VTable : ItsPubPlugin.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin2 self, PWSTR userID, out int32 pceAppListSize, out pluginResource2* resourceList) GetResource2List;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin2 self, PWSTR alias, int32 flags, out pluginResource2 resource) GetResource2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin2 self, PWSTR userId, PWSTR poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, out TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE pPdAssignmentType, PWSTR endPointName) ResolvePersonalDesktop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ItsPubPlugin2 self, PWSTR userId, PWSTR poolId, PWSTR endpointName) DeletePersonalDesktopAssignment;
			}
		}
		[CRepr]
		public struct IWorkspaceResTypeRegistry : IDispatch
		{
			public const new Guid IID = .(0x1d428c79, 0x6e2e, 0x4351, 0xa3, 0x61, 0xc0, 0x40, 0x1a, 0x03, 0xa0, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut => VT.AddResourceType(ref this, fMachineWide, bstrFileExtension, bstrLauncher);
			public HRESULT DeleteResourceType(int16 fMachineWide, BSTR bstrFileExtension) mut => VT.DeleteResourceType(ref this, fMachineWide, bstrFileExtension);
			public HRESULT GetRegisteredFileExtensions(int16 fMachineWide, SAFEARRAY** psaFileExtensions) mut => VT.GetRegisteredFileExtensions(ref this, fMachineWide, psaFileExtensions);
			public HRESULT GetResourceTypeInfo(int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) mut => VT.GetResourceTypeInfo(ref this, fMachineWide, bstrFileExtension, pbstrLauncher);
			public HRESULT ModifyResourceType(int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) mut => VT.ModifyResourceType(ref this, fMachineWide, bstrFileExtension, bstrLauncher);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) AddResourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension) DeleteResourceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, SAFEARRAY** psaFileExtensions) GetRegisteredFileExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) GetResourceTypeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWorkspaceResTypeRegistry self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) ModifyResourceType;
			}
		}
		[CRepr]
		public struct IWTSPlugin : IUnknown
		{
			public const new Guid IID = .(0xa1230201, 0x1439, 0x4e62, 0xa4, 0x14, 0x19, 0x0d, 0x0a, 0xc3, 0xd4, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IWTSVirtualChannelManager pChannelMgr) mut => VT.Initialize(ref this, ref pChannelMgr);
			public HRESULT Connected() mut => VT.Connected(ref this);
			public HRESULT Disconnected(uint32 dwDisconnectCode) mut => VT.Disconnected(ref this, dwDisconnectCode);
			public HRESULT Terminated() mut => VT.Terminated(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSPlugin self, ref IWTSVirtualChannelManager pChannelMgr) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSPlugin self) Connected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSPlugin self, uint32 dwDisconnectCode) Disconnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSPlugin self) Terminated;
			}
		}
		[CRepr]
		public struct IWTSListener : IUnknown
		{
			public const new Guid IID = .(0xa1230206, 0x9a39, 0x4d58, 0x86, 0x74, 0xcd, 0xb4, 0xdf, 0xf4, 0xe7, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConfiguration(out IPropertyBag* ppPropertyBag) mut => VT.GetConfiguration(ref this, out ppPropertyBag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSListener self, out IPropertyBag* ppPropertyBag) GetConfiguration;
			}
		}
		[CRepr]
		public struct IWTSListenerCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230203, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNewChannelConnection(ref IWTSVirtualChannel pChannel, BSTR data, out BOOL pbAccept, out IWTSVirtualChannelCallback* ppCallback) mut => VT.OnNewChannelConnection(ref this, ref pChannel, data, out pbAccept, out ppCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSListenerCallback self, ref IWTSVirtualChannel pChannel, BSTR data, out BOOL pbAccept, out IWTSVirtualChannelCallback* ppCallback) OnNewChannelConnection;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230204, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDataReceived(uint32 cbSize, uint8* pBuffer) mut => VT.OnDataReceived(ref this, cbSize, pBuffer);
			public HRESULT OnClose() mut => VT.OnClose(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSVirtualChannelCallback self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSVirtualChannelCallback self) OnClose;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannelManager : IUnknown
		{
			public const new Guid IID = .(0xa1230205, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateListener(in uint8 pszChannelName, uint32 uFlags, ref IWTSListenerCallback pListenerCallback, out IWTSListener* ppListener) mut => VT.CreateListener(ref this, pszChannelName, uFlags, ref pListenerCallback, out ppListener);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSVirtualChannelManager self, in uint8 pszChannelName, uint32 uFlags, ref IWTSListenerCallback pListenerCallback, out IWTSListener* ppListener) CreateListener;
			}
		}
		[CRepr]
		public struct IWTSVirtualChannel : IUnknown
		{
			public const new Guid IID = .(0xa1230207, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint32 cbSize, uint8* pBuffer, ref IUnknown pReserved) mut => VT.Write(ref this, cbSize, pBuffer, ref pReserved);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSVirtualChannel self, uint32 cbSize, uint8* pBuffer, ref IUnknown pReserved) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSVirtualChannel self) Close;
			}
		}
		[CRepr]
		public struct IWTSPluginServiceProvider : IUnknown
		{
			public const new Guid IID = .(0xd3e07363, 0x087c, 0x476c, 0x86, 0xa7, 0xdb, 0xb1, 0x5f, 0x46, 0xdd, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(Guid ServiceId, out IUnknown* ppunkObject) mut => VT.GetService(ref this, ServiceId, out ppunkObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSPluginServiceProvider self, Guid ServiceId, out IUnknown* ppunkObject) GetService;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderer : IUnknown
		{
			public const new Guid IID = .(0x5b7acc97, 0xf3c9, 0x46f7, 0x8c, 0x5b, 0xfa, 0x68, 0x5d, 0x34, 0x41, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Render(Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) mut => VT.Render(ref this, imageFormat, dwWidth, dwHeight, cbStride, cbImageBuffer, pImageBuffer);
			public HRESULT GetRendererStatistics(out BITMAP_RENDERER_STATISTICS pStatistics) mut => VT.GetRendererStatistics(ref this, out pStatistics);
			public HRESULT RemoveMapping() mut => VT.RemoveMapping(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSBitmapRenderer self, Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) Render;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSBitmapRenderer self, out BITMAP_RENDERER_STATISTICS pStatistics) GetRendererStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSBitmapRenderer self) RemoveMapping;
			}
		}
		[CRepr]
		public struct IWTSBitmapRendererCallback : IUnknown
		{
			public const new Guid IID = .(0xd782928e, 0xfe4e, 0x4e77, 0xae, 0x90, 0x9c, 0xd0, 0xb3, 0xe3, 0xb3, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTargetSizeChanged(RECT rcNewSize) mut => VT.OnTargetSizeChanged(ref this, rcNewSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSBitmapRendererCallback self, RECT rcNewSize) OnTargetSizeChanged;
			}
		}
		[CRepr]
		public struct IWTSBitmapRenderService : IUnknown
		{
			public const new Guid IID = .(0xea326091, 0x05fe, 0x40c1, 0xb4, 0x9c, 0x3d, 0x2e, 0xf4, 0x62, 0x6a, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMappedRenderer(uint64 mappingId, ref IWTSBitmapRendererCallback pMappedRendererCallback, out IWTSBitmapRenderer* ppMappedRenderer) mut => VT.GetMappedRenderer(ref this, mappingId, ref pMappedRendererCallback, out ppMappedRenderer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSBitmapRenderService self, uint64 mappingId, ref IWTSBitmapRendererCallback pMappedRendererCallback, out IWTSBitmapRenderer* ppMappedRenderer) GetMappedRenderer;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelEvents : IUnknown
		{
			public const new Guid IID = .(0x67f2368c, 0xd674, 0x4fae, 0x66, 0xa5, 0xd2, 0x06, 0x28, 0xa6, 0x40, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDataReceived(uint32 cbSize, ref uint8 pBuffer) mut => VT.OnDataReceived(ref this, cbSize, ref pBuffer);
			public HRESULT OnClose() mut => VT.OnClose(ref this);
			public HRESULT OnChannelOpened(HRESULT OpenResult, ref IUnknown pOpenContext) mut => VT.OnChannelOpened(ref this, OpenResult, ref pOpenContext);
			public HRESULT OnDataSent(ref IUnknown pWriteContext, BOOL bCancelled, ref uint8 pBuffer, uint32 cbBuffer) mut => VT.OnDataSent(ref this, ref pWriteContext, bCancelled, ref pBuffer, cbBuffer);
			public HRESULT OnMetricsUpdate(uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) mut => VT.OnMetricsUpdate(ref this, bandwidth, RTT, lastSentByteIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelEvents self, uint32 cbSize, ref uint8 pBuffer) OnDataReceived;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelEvents self) OnClose;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelEvents self, HRESULT OpenResult, ref IUnknown pOpenContext) OnChannelOpened;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelEvents self, ref IUnknown pWriteContext, BOOL bCancelled, ref uint8 pBuffer, uint32 cbBuffer) OnDataSent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelEvents self, uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) OnMetricsUpdate;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannel : IUnknown
		{
			public const new Guid IID = .(0x684b7a0b, 0xedff, 0x43ad, 0xd5, 0xa2, 0x4a, 0x8d, 0x53, 0x88, 0xf4, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint32 cbSize, ref uint8 pBuffer, ref IUnknown pContext) mut => VT.Write(ref this, cbSize, ref pBuffer, ref pContext);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Open(ref IWRdsGraphicsChannelEvents pChannelEvents, ref IUnknown pOpenContext) mut => VT.Open(ref this, ref pChannelEvents, ref pOpenContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannel self, uint32 cbSize, ref uint8 pBuffer, ref IUnknown pContext) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannel self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannel self, ref IWRdsGraphicsChannelEvents pChannelEvents, ref IUnknown pOpenContext) Open;
			}
		}
		[CRepr]
		public struct IWRdsGraphicsChannelManager : IUnknown
		{
			public const new Guid IID = .(0x0fd57159, 0xe83e, 0x476a, 0xa8, 0xb9, 0x4a, 0x79, 0x76, 0xe7, 0x1e, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateChannel(in uint8 pszChannelName, WRdsGraphicsChannelType channelType, out IWRdsGraphicsChannel* ppVirtualChannel) mut => VT.CreateChannel(ref this, pszChannelName, channelType, out ppVirtualChannel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsGraphicsChannelManager self, in uint8 pszChannelName, WRdsGraphicsChannelType channelType, out IWRdsGraphicsChannel* ppVirtualChannel) CreateChannel;
			}
		}
		[CRepr]
		public struct IWTSProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xf9eaf6cc, 0xed79, 0x4f01, 0x82, 0x1d, 0x1f, 0x88, 0x1b, 0x9f, 0x66, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateListener(PWSTR wszListenerName, out IWTSProtocolListener* pProtocolListener) mut => VT.CreateListener(ref this, wszListenerName, out pProtocolListener);
			public HRESULT NotifyServiceStateChange(ref WTS_SERVICE_STATE pTSServiceStateChange) mut => VT.NotifyServiceStateChange(ref this, ref pTSServiceStateChange);
			public HRESULT NotifySessionOfServiceStart(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStart(ref this, ref SessionId);
			public HRESULT NotifySessionOfServiceStop(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStop(ref this, ref SessionId);
			public HRESULT NotifySessionStateChange(ref WTS_SESSION_ID SessionId, uint32 EventId) mut => VT.NotifySessionStateChange(ref this, ref SessionId, EventId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolManager self, PWSTR wszListenerName, out IWTSProtocolListener* pProtocolListener) CreateListener;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolManager self, ref WTS_SERVICE_STATE pTSServiceStateChange) NotifyServiceStateChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolManager self, ref WTS_SESSION_ID SessionId, uint32 EventId) NotifySessionStateChange;
			}
		}
		[CRepr]
		public struct IWTSProtocolListener : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x45f0, 0x4394, 0x8f, 0x69, 0x32, 0xb2, 0xbc, 0x0e, 0xf4, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListen(ref IWTSProtocolListenerCallback pCallback) mut => VT.StartListen(ref this, ref pCallback);
			public HRESULT StopListen() mut => VT.StopListen(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolListener self, ref IWTSProtocolListenerCallback pCallback) StartListen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolListener self) StopListen;
			}
		}
		[CRepr]
		public struct IWTSProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x1a2d, 0x4de2, 0x97, 0xde, 0x4a, 0x35, 0xf2, 0x60, 0xf0, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnected(ref IWTSProtocolConnection pConnection, out IWTSProtocolConnectionCallback* pCallback) mut => VT.OnConnected(ref this, ref pConnection, out pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolListenerCallback self, ref IWTSProtocolConnection pConnection, out IWTSProtocolConnectionCallback* pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x9095, 0x4648, 0x98, 0xbf, 0xef, 0x81, 0xc9, 0x14, 0x03, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogonErrorRedirector(out IWTSProtocolLogonErrorRedirector* ppLogonErrorRedir) mut => VT.GetLogonErrorRedirector(ref this, out ppLogonErrorRedir);
			public HRESULT SendPolicyData(ref WTS_POLICY_DATA pPolicyData) mut => VT.SendPolicyData(ref this, ref pPolicyData);
			public HRESULT AcceptConnection() mut => VT.AcceptConnection(ref this);
			public HRESULT GetClientData(out WTS_CLIENT_DATA pClientData) mut => VT.GetClientData(ref this, out pClientData);
			public HRESULT GetUserCredentials(out WTS_USER_CREDENTIAL pUserCreds) mut => VT.GetUserCredentials(ref this, out pUserCreds);
			public HRESULT GetLicenseConnection(out IWTSProtocolLicenseConnection* ppLicenseConnection) mut => VT.GetLicenseConnection(ref this, out ppLicenseConnection);
			public HRESULT AuthenticateClientToSession(out WTS_SESSION_ID SessionId) mut => VT.AuthenticateClientToSession(ref this, out SessionId);
			public HRESULT NotifySessionId(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionId(ref this, ref SessionId);
			public HRESULT GetProtocolHandles(out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle, out HANDLE_PTR pVideoHandle) mut => VT.GetProtocolHandles(ref this, out pKeyboardHandle, out pMouseHandle, out pBeepHandle, out pVideoHandle);
			public HRESULT ConnectNotify(uint32 SessionId) mut => VT.ConnectNotify(ref this, SessionId);
			public HRESULT IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) mut => VT.IsUserAllowedToLogon(ref this, SessionId, UserToken, pDomainName, pUserName);
			public HRESULT SessionArbitrationEnumeration(HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) mut => VT.SessionArbitrationEnumeration(ref this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, out pdwSessionIdentifierCount);
			public HRESULT LogonNotify(HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, ref WTS_SESSION_ID SessionId) mut => VT.LogonNotify(ref this, hClientToken, wszUserName, wszDomainName, ref SessionId);
			public HRESULT GetUserData(ref WTS_POLICY_DATA pPolicyData, out WTS_USER_DATA pClientData) mut => VT.GetUserData(ref this, ref pPolicyData, out pClientData);
			public HRESULT DisconnectNotify() mut => VT.DisconnectNotify(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT GetProtocolStatus(out WTS_PROTOCOL_STATUS pProtocolStatus) mut => VT.GetProtocolStatus(ref this, out pProtocolStatus);
			public HRESULT GetLastInputTime(out uint64 pLastInputTime) mut => VT.GetLastInputTime(ref this, out pLastInputTime);
			public HRESULT SetErrorInfo(uint32 ulError) mut => VT.SetErrorInfo(ref this, ulError);
			public HRESULT SendBeep(uint32 Frequency, uint32 Duration) mut => VT.SendBeep(ref this, Frequency, Duration);
			public HRESULT CreateVirtualChannel(PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, out uint phChannel) mut => VT.CreateVirtualChannel(ref this, szEndpointName, bStatic, RequestedPriority, out phChannel);
			public HRESULT QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut => VT.QueryProperty(ref this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			public HRESULT GetShadowConnection(out IWTSProtocolShadowConnection* ppShadowConnection) mut => VT.GetShadowConnection(ref this, out ppShadowConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out IWTSProtocolLogonErrorRedirector* ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, ref WTS_POLICY_DATA pPolicyData) SendPolicyData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self) AcceptConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out WTS_CLIENT_DATA pClientData) GetClientData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out WTS_USER_CREDENTIAL pUserCreds) GetUserCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out IWTSProtocolLicenseConnection* ppLicenseConnection) GetLicenseConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out WTS_SESSION_ID SessionId) AuthenticateClientToSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, ref WTS_SESSION_ID SessionId) NotifySessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle, out HANDLE_PTR pVideoHandle) GetProtocolHandles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, uint32 SessionId) ConnectNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, ref WTS_SESSION_ID SessionId) LogonNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, ref WTS_POLICY_DATA pPolicyData, out WTS_USER_DATA pClientData) GetUserData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self) DisconnectNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out WTS_PROTOCOL_STATUS pProtocolStatus) GetProtocolStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out uint64 pLastInputTime) GetLastInputTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, uint32 ulError) SetErrorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, uint32 Frequency, uint32 Duration) SendBeep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, out uint phChannel) CreateVirtualChannel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnection self, out IWTSProtocolShadowConnection* ppShadowConnection) GetShadowConnection;
			}
		}
		[CRepr]
		public struct IWTSProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x75eb, 0x41fe, 0xb4, 0xfb, 0xe0, 0x86, 0x24, 0x2a, 0xfa, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReady() mut => VT.OnReady(ref this);
			public HRESULT BrokenConnection(uint32 Reason, uint32 Source) mut => VT.BrokenConnection(ref this, Reason, Source);
			public HRESULT StopScreenUpdates() mut => VT.StopScreenUpdates(ref this);
			public HRESULT RedrawWindow(ref WTS_SMALL_RECT rect) mut => VT.RedrawWindow(ref this, ref rect);
			public HRESULT DisplayIOCtl(ref WTS_DISPLAY_IOCTL DisplayIOCtl) mut => VT.DisplayIOCtl(ref this, ref DisplayIOCtl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnectionCallback self) OnReady;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnectionCallback self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnectionCallback self) StopScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnectionCallback self, ref WTS_SMALL_RECT rect) RedrawWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolConnectionCallback self, ref WTS_DISPLAY_IOCTL DisplayIOCtl) DisplayIOCtl;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0xee3b0c14, 0x37fb, 0x456b, 0xba, 0xb3, 0x6d, 0x6c, 0xd5, 0x1e, 0x13, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWTSProtocolShadowCallback pShadowCallback) mut => VT.Start(ref this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, ref pShadowCallback);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut => VT.DoTarget(ref this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolShadowConnection self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWTSProtocolShadowCallback pShadowCallback) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolShadowConnection self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolShadowConnection self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWTSProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0x503a2504, 0xaae5, 0x4ab1, 0x93, 0xe0, 0x6d, 0x1c, 0x4b, 0xc6, 0xf7, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopShadow() mut => VT.StopShadow(ref this);
			public HRESULT InvokeTargetShadow(PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut => VT.InvokeTargetShadow(ref this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolShadowCallback self) StopShadow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolShadowCallback self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWTSProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x178c, 0x4079, 0x8e, 0x4a, 0xfe, 0xa6, 0x49, 0x6a, 0x4d, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestLicensingCapabilities(out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) mut => VT.RequestLicensingCapabilities(ref this, out ppLicenseCapabilities, out pcbLicenseCapabilities);
			public HRESULT SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut => VT.SendClientLicense(ref this, pClientLicense, cbClientLicense);
			public HRESULT RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) mut => VT.RequestClientLicense(ref this, Reserve1, Reserve2, ppClientLicense, out pcbClientLicense);
			public HRESULT ProtocolComplete(uint32 ulComplete) mut => VT.ProtocolComplete(ref this, ulComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLicenseConnection self, out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLicenseConnection self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLicenseConnection self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) RequestClientLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLicenseConnection self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWTSProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0xfd9b61a7, 0x2916, 0x4627, 0x8d, 0xee, 0x43, 0x28, 0x71, 0x1a, 0xd6, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBeginPainting() mut => VT.OnBeginPainting(ref this);
			public HRESULT RedirectStatus(PWSTR pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectStatus(ref this, pszMessage, out pResponse);
			public HRESULT RedirectMessage(PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectMessage(ref this, pszCaption, pszMessage, uType, out pResponse);
			public HRESULT RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectLogonError(ref this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, out pResponse);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLogonErrorRedirector self) OnBeginPainting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLogonErrorRedirector self, PWSTR pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLogonErrorRedirector self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWTSProtocolLogonErrorRedirector self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsProtocolSettings : IUnknown
		{
			public const new Guid IID = .(0x654a5a6a, 0x2550, 0x47eb, 0xb6, 0xf7, 0xeb, 0xd6, 0x37, 0x47, 0x52, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, out WRDS_SETTINGS pWRdsSettings) mut => VT.GetSettings(ref this, WRdsSettingType, WRdsSettingLevel, out pWRdsSettings);
			public HRESULT MergeSettings(ref WRDS_SETTINGS pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) mut => VT.MergeSettings(ref this, ref pWRdsSettings, WRdsConnectionSettingLevel, out pWRdsConnectionSettings);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolSettings self, WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, out WRDS_SETTINGS pWRdsSettings) GetSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolSettings self, ref WRDS_SETTINGS pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) MergeSettings;
			}
		}
		[CRepr]
		public struct IWRdsProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xdc796967, 0x3abb, 0x40cd, 0xa4, 0x46, 0x10, 0x52, 0x76, 0xb5, 0x89, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IWRdsProtocolSettings pIWRdsSettings, ref WRDS_SETTINGS pWRdsSettings) mut => VT.Initialize(ref this, ref pIWRdsSettings, ref pWRdsSettings);
			public HRESULT CreateListener(PWSTR wszListenerName, out IWRdsProtocolListener* pProtocolListener) mut => VT.CreateListener(ref this, wszListenerName, out pProtocolListener);
			public HRESULT NotifyServiceStateChange(ref WTS_SERVICE_STATE pTSServiceStateChange) mut => VT.NotifyServiceStateChange(ref this, ref pTSServiceStateChange);
			public HRESULT NotifySessionOfServiceStart(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStart(ref this, ref SessionId);
			public HRESULT NotifySessionOfServiceStop(ref WTS_SESSION_ID SessionId) mut => VT.NotifySessionOfServiceStop(ref this, ref SessionId);
			public HRESULT NotifySessionStateChange(ref WTS_SESSION_ID SessionId, uint32 EventId) mut => VT.NotifySessionStateChange(ref this, ref SessionId, EventId);
			public HRESULT NotifySettingsChange(ref WRDS_SETTINGS pWRdsSettings) mut => VT.NotifySettingsChange(ref this, ref pWRdsSettings);
			public HRESULT Uninitialize() mut => VT.Uninitialize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref IWRdsProtocolSettings pIWRdsSettings, ref WRDS_SETTINGS pWRdsSettings) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, PWSTR wszListenerName, out IWRdsProtocolListener* pProtocolListener) CreateListener;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref WTS_SERVICE_STATE pTSServiceStateChange) NotifyServiceStateChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId) NotifySessionOfServiceStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref WTS_SESSION_ID SessionId, uint32 EventId) NotifySessionStateChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self, ref WRDS_SETTINGS pWRdsSettings) NotifySettingsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolManager self) Uninitialize;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListener : IUnknown
		{
			public const new Guid IID = .(0xfcbc131b, 0xc686, 0x451d, 0xa7, 0x73, 0xe2, 0x79, 0xe2, 0x30, 0xf5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, out WRDS_LISTENER_SETTINGS pWRdsListenerSettings) mut => VT.GetSettings(ref this, WRdsListenerSettingLevel, out pWRdsListenerSettings);
			public HRESULT StartListen(ref IWRdsProtocolListenerCallback pCallback) mut => VT.StartListen(ref this, ref pCallback);
			public HRESULT StopListen() mut => VT.StopListen(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolListener self, WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, out WRDS_LISTENER_SETTINGS pWRdsListenerSettings) GetSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolListener self, ref IWRdsProtocolListenerCallback pCallback) StartListen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolListener self) StopListen;
			}
		}
		[CRepr]
		public struct IWRdsProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x3ab27e5b, 0x4449, 0x4dc1, 0xb7, 0x4a, 0x91, 0x62, 0x1d, 0x4f, 0xe9, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConnected(ref IWRdsProtocolConnection pConnection, ref WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings, out IWRdsProtocolConnectionCallback* pCallback) mut => VT.OnConnected(ref this, ref pConnection, ref pWRdsConnectionSettings, out pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolListenerCallback self, ref IWRdsProtocolConnection pConnection, ref WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings, out IWRdsProtocolConnectionCallback* pCallback) OnConnected;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x324ed94f, 0xfdaf, 0x4ff6, 0x81, 0xa8, 0x42, 0xab, 0xe7, 0x55, 0x83, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogonErrorRedirector(out IWRdsProtocolLogonErrorRedirector* ppLogonErrorRedir) mut => VT.GetLogonErrorRedirector(ref this, out ppLogonErrorRedir);
			public HRESULT AcceptConnection() mut => VT.AcceptConnection(ref this);
			public HRESULT GetClientData(out WTS_CLIENT_DATA pClientData) mut => VT.GetClientData(ref this, out pClientData);
			public HRESULT GetClientMonitorData(out uint32 pNumMonitors, out uint32 pPrimaryMonitor) mut => VT.GetClientMonitorData(ref this, out pNumMonitors, out pPrimaryMonitor);
			public HRESULT GetUserCredentials(out WTS_USER_CREDENTIAL pUserCreds) mut => VT.GetUserCredentials(ref this, out pUserCreds);
			public HRESULT GetLicenseConnection(out IWRdsProtocolLicenseConnection* ppLicenseConnection) mut => VT.GetLicenseConnection(ref this, out ppLicenseConnection);
			public HRESULT AuthenticateClientToSession(out WTS_SESSION_ID SessionId) mut => VT.AuthenticateClientToSession(ref this, out SessionId);
			public HRESULT NotifySessionId(ref WTS_SESSION_ID SessionId, HANDLE_PTR SessionHandle) mut => VT.NotifySessionId(ref this, ref SessionId, SessionHandle);
			public HRESULT GetInputHandles(out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle) mut => VT.GetInputHandles(ref this, out pKeyboardHandle, out pMouseHandle, out pBeepHandle);
			public HRESULT GetVideoHandle(out HANDLE_PTR pVideoHandle) mut => VT.GetVideoHandle(ref this, out pVideoHandle);
			public HRESULT ConnectNotify(uint32 SessionId) mut => VT.ConnectNotify(ref this, SessionId);
			public HRESULT IsUserAllowedToLogon(uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) mut => VT.IsUserAllowedToLogon(ref this, SessionId, UserToken, pDomainName, pUserName);
			public HRESULT SessionArbitrationEnumeration(HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) mut => VT.SessionArbitrationEnumeration(ref this, hUserToken, bSingleSessionPerUserEnabled, pSessionIdArray, out pdwSessionIdentifierCount);
			public HRESULT LogonNotify(HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, ref WTS_SESSION_ID SessionId, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) mut => VT.LogonNotify(ref this, hClientToken, wszUserName, wszDomainName, ref SessionId, out pWRdsConnectionSettings);
			public HRESULT PreDisconnect(uint32 DisconnectReason) mut => VT.PreDisconnect(ref this, DisconnectReason);
			public HRESULT DisconnectNotify() mut => VT.DisconnectNotify(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT GetProtocolStatus(out WTS_PROTOCOL_STATUS pProtocolStatus) mut => VT.GetProtocolStatus(ref this, out pProtocolStatus);
			public HRESULT GetLastInputTime(out uint64 pLastInputTime) mut => VT.GetLastInputTime(ref this, out pLastInputTime);
			public HRESULT SetErrorInfo(uint32 ulError) mut => VT.SetErrorInfo(ref this, ulError);
			public HRESULT CreateVirtualChannel(PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, out uint phChannel) mut => VT.CreateVirtualChannel(ref this, szEndpointName, bStatic, RequestedPriority, out phChannel);
			public HRESULT QueryProperty(Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) mut => VT.QueryProperty(ref this, QueryType, ulNumEntriesIn, ulNumEntriesOut, pPropertyEntriesIn, pPropertyEntriesOut);
			public HRESULT GetShadowConnection(out IWRdsProtocolShadowConnection* ppShadowConnection) mut => VT.GetShadowConnection(ref this, out ppShadowConnection);
			public HRESULT NotifyCommandProcessCreated(uint32 SessionId) mut => VT.NotifyCommandProcessCreated(ref this, SessionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out IWRdsProtocolLogonErrorRedirector* ppLogonErrorRedir) GetLogonErrorRedirector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self) AcceptConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out WTS_CLIENT_DATA pClientData) GetClientData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out uint32 pNumMonitors, out uint32 pPrimaryMonitor) GetClientMonitorData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out WTS_USER_CREDENTIAL pUserCreds) GetUserCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out IWRdsProtocolLicenseConnection* ppLicenseConnection) GetLicenseConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out WTS_SESSION_ID SessionId) AuthenticateClientToSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, ref WTS_SESSION_ID SessionId, HANDLE_PTR SessionHandle) NotifySessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out HANDLE_PTR pKeyboardHandle, out HANDLE_PTR pMouseHandle, out HANDLE_PTR pBeepHandle) GetInputHandles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out HANDLE_PTR pVideoHandle) GetVideoHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, uint32 SessionId) ConnectNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, out uint32 pdwSessionIdentifierCount) SessionArbitrationEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, ref WTS_SESSION_ID SessionId, out WRDS_CONNECTION_SETTINGS pWRdsConnectionSettings) LogonNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, uint32 DisconnectReason) PreDisconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self) DisconnectNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out WTS_PROTOCOL_STATUS pProtocolStatus) GetProtocolStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out uint64 pLastInputTime) GetLastInputTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, uint32 ulError) SetErrorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, out uint phChannel) CreateVirtualChannel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, out IWRdsProtocolShadowConnection* ppShadowConnection) GetShadowConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnection self, uint32 SessionId) NotifyCommandProcessCreated;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0xf1d70332, 0xd070, 0x4ef1, 0xa0, 0x88, 0x78, 0x31, 0x35, 0x36, 0xc2, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReady() mut => VT.OnReady(ref this);
			public HRESULT BrokenConnection(uint32 Reason, uint32 Source) mut => VT.BrokenConnection(ref this, Reason, Source);
			public HRESULT StopScreenUpdates() mut => VT.StopScreenUpdates(ref this);
			public HRESULT RedrawWindow(ref WTS_SMALL_RECT rect) mut => VT.RedrawWindow(ref this, ref rect);
			public HRESULT GetConnectionId(out uint32 pConnectionId) mut => VT.GetConnectionId(ref this, out pConnectionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionCallback self) OnReady;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionCallback self, uint32 Reason, uint32 Source) BrokenConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionCallback self) StopScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionCallback self, ref WTS_SMALL_RECT rect) RedrawWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionCallback self, out uint32 pConnectionId) GetConnectionId;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0x9ae85ce6, 0xcade, 0x4548, 0x8f, 0xeb, 0x99, 0x01, 0x65, 0x97, 0xf6, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWRdsProtocolShadowCallback pShadowCallback) mut => VT.Start(ref this, pTargetServerName, TargetSessionId, HotKeyVk, HotkeyModifiers, ref pShadowCallback);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT DoTarget(uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut => VT.DoTarget(ref this, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolShadowConnection self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, ref IWRdsProtocolShadowCallback pShadowCallback) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolShadowConnection self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolShadowConnection self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
			}
		}
		[CRepr]
		public struct IWRdsProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0xe0667ce0, 0x0372, 0x40d6, 0xad, 0xb2, 0xa0, 0xf3, 0x32, 0x26, 0x74, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopShadow() mut => VT.StopShadow(ref this);
			public HRESULT InvokeTargetShadow(PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) mut => VT.InvokeTargetShadow(ref this, pTargetServerName, TargetSessionId, pParam1, Param1Size, pParam2, Param2Size, pParam3, Param3Size, pParam4, Param4Size, pClientName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolShadowCallback self) StopShadow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolShadowCallback self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x1d6a145f, 0xd095, 0x4424, 0x95, 0x7a, 0x40, 0x7f, 0xae, 0x82, 0x2d, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestLicensingCapabilities(out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) mut => VT.RequestLicensingCapabilities(ref this, out ppLicenseCapabilities, out pcbLicenseCapabilities);
			public HRESULT SendClientLicense(uint8* pClientLicense, uint32 cbClientLicense) mut => VT.SendClientLicense(ref this, pClientLicense, cbClientLicense);
			public HRESULT RequestClientLicense(uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) mut => VT.RequestClientLicense(ref this, Reserve1, Reserve2, ppClientLicense, out pcbClientLicense);
			public HRESULT ProtocolComplete(uint32 ulComplete) mut => VT.ProtocolComplete(ref this, ulComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLicenseConnection self, out WTS_LICENSE_CAPABILITIES ppLicenseCapabilities, out uint32 pcbLicenseCapabilities) RequestLicensingCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLicenseConnection self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLicenseConnection self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, out uint32 pcbClientLicense) RequestClientLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLicenseConnection self, uint32 ulComplete) ProtocolComplete;
			}
		}
		[CRepr]
		public struct IWRdsProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0x519fe83b, 0x142a, 0x4120, 0xa3, 0xd5, 0xa4, 0x05, 0xd3, 0x15, 0x28, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBeginPainting() mut => VT.OnBeginPainting(ref this);
			public HRESULT RedirectStatus(PWSTR pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectStatus(ref this, pszMessage, out pResponse);
			public HRESULT RedirectMessage(PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectMessage(ref this, pszCaption, pszMessage, uType, out pResponse);
			public HRESULT RedirectLogonError(int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) mut => VT.RedirectLogonError(ref this, ntsStatus, ntsSubstatus, pszCaption, pszMessage, uType, out pResponse);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLogonErrorRedirector self) OnBeginPainting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLogonErrorRedirector self, PWSTR pszMessage, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLogonErrorRedirector self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolLogonErrorRedirector self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, out WTS_LOGON_ERROR_REDIRECTOR_RESPONSE pResponse) RedirectLogonError;
			}
		}
		[CRepr]
		public struct IWRdsWddmIddProps : IUnknown
		{
			public const new Guid IID = .(0x1382df4d, 0xa289, 0x43d1, 0xa1, 0x84, 0x14, 0x47, 0x26, 0xf9, 0xaf, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHardwareId(char16* pDisplayDriverHardwareId, uint32 Count) mut => VT.GetHardwareId(ref this, pDisplayDriverHardwareId, Count);
			public HRESULT OnDriverLoad(uint32 SessionId, HANDLE_PTR DriverHandle) mut => VT.OnDriverLoad(ref this, SessionId, DriverHandle);
			public HRESULT OnDriverUnload(uint32 SessionId) mut => VT.OnDriverUnload(ref this, SessionId);
			public HRESULT EnableWddmIdd(BOOL Enabled) mut => VT.EnableWddmIdd(ref this, Enabled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsWddmIddProps self, char16* pDisplayDriverHardwareId, uint32 Count) GetHardwareId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsWddmIddProps self, uint32 SessionId, HANDLE_PTR DriverHandle) OnDriverLoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsWddmIddProps self, uint32 SessionId) OnDriverUnload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsWddmIddProps self, BOOL Enabled) EnableWddmIdd;
			}
		}
		[CRepr]
		public struct IWRdsProtocolConnectionSettings : IUnknown
		{
			public const new Guid IID = .(0x83fcf5d3, 0xf6f4, 0xea94, 0x9c, 0xd2, 0x32, 0xf2, 0x80, 0xe1, 0xe5, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConnectionSetting(Guid PropertyID, ref WTS_PROPERTY_VALUE pPropertyEntriesIn) mut => VT.SetConnectionSetting(ref this, PropertyID, ref pPropertyEntriesIn);
			public HRESULT GetConnectionSetting(Guid PropertyID, out WTS_PROPERTY_VALUE pPropertyEntriesOut) mut => VT.GetConnectionSetting(ref this, PropertyID, out pPropertyEntriesOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionSettings self, Guid PropertyID, ref WTS_PROPERTY_VALUE pPropertyEntriesIn) SetConnectionSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsProtocolConnectionSettings self, Guid PropertyID, out WTS_PROPERTY_VALUE pPropertyEntriesOut) GetConnectionSetting;
			}
		}
		[CRepr]
		public struct IWRdsEnhancedFastReconnectArbitrator : IUnknown
		{
			public const new Guid IID = .(0x5718ae9b, 0x47f2, 0x499f, 0xb6, 0x34, 0xd8, 0x17, 0x5b, 0xd5, 0x11, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSessionForEnhancedFastReconnect(ref int32 pSessionIdArray, uint32 dwSessionCount, out int32 pResultSessionId) mut => VT.GetSessionForEnhancedFastReconnect(ref this, ref pSessionIdArray, dwSessionCount, out pResultSessionId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWRdsEnhancedFastReconnectArbitrator self, ref int32 pSessionIdArray, uint32 dwSessionCount, out int32 pResultSessionId) GetSessionForEnhancedFastReconnect;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientSettings : IDispatch
		{
			public const new Guid IID = .(0x48a0f2a7, 0x2713, 0x431f, 0xbb, 0xac, 0x6f, 0x45, 0x58, 0xe7, 0xd6, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplySettings(BSTR rdpFileContents) mut => VT.ApplySettings(ref this, rdpFileContents);
			public HRESULT RetrieveSettings(BSTR* rdpFileContents) mut => VT.RetrieveSettings(ref this, rdpFileContents);
			public HRESULT GetRdpProperty(BSTR propertyName, out VARIANT value) mut => VT.GetRdpProperty(ref this, propertyName, out value);
			public HRESULT SetRdpProperty(BSTR propertyName, VARIANT value) mut => VT.SetRdpProperty(ref this, propertyName, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientSettings self, BSTR rdpFileContents) ApplySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientSettings self, BSTR* rdpFileContents) RetrieveSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientSettings self, BSTR propertyName, out VARIANT value) GetRdpProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientSettings self, BSTR propertyName, VARIANT value) SetRdpProperty;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientActions : IDispatch
		{
			public const new Guid IID = .(0x7d54bc4e, 0x1028, 0x45d4, 0x8b, 0x0a, 0xb9, 0xb6, 0xbf, 0xfb, 0xa1, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuspendScreenUpdates() mut => VT.SuspendScreenUpdates(ref this);
			public HRESULT ResumeScreenUpdates() mut => VT.ResumeScreenUpdates(ref this);
			public HRESULT ExecuteRemoteAction(RemoteActionType remoteAction) mut => VT.ExecuteRemoteAction(ref this, remoteAction);
			public HRESULT GetSnapshot(SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) mut => VT.GetSnapshot(ref this, snapshotEncoding, snapshotFormat, snapshotWidth, snapshotHeight, snapshotData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientActions self) SuspendScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientActions self) ResumeScreenUpdates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientActions self, RemoteActionType remoteAction) ExecuteRemoteAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientActions self, SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) GetSnapshot;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClientTouchPointer : IDispatch
		{
			public const new Guid IID = .(0x260ec22d, 0x8cbc, 0x44b5, 0x9e, 0x88, 0x2a, 0x37, 0xf6, 0xc9, 0x3a, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_EventsEnabled(int16 eventsEnabled) mut => VT.put_EventsEnabled(ref this, eventsEnabled);
			public HRESULT get_EventsEnabled(out int16 eventsEnabled) mut => VT.get_EventsEnabled(ref this, out eventsEnabled);
			public HRESULT put_PointerSpeed(uint32 pointerSpeed) mut => VT.put_PointerSpeed(ref this, pointerSpeed);
			public HRESULT get_PointerSpeed(out uint32 pointerSpeed) mut => VT.get_PointerSpeed(ref this, out pointerSpeed);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, int16 eventsEnabled) put_EventsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, out int16 eventsEnabled) get_EventsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, uint32 pointerSpeed) put_PointerSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClientTouchPointer self, out uint32 pointerSpeed) get_PointerSpeed;
			}
		}
		[CRepr]
		public struct IRemoteDesktopClient : IDispatch
		{
			public const new Guid IID = .(0x57d25668, 0x625a, 0x4905, 0xbe, 0x4e, 0x30, 0x4c, 0xaa, 0x13, 0xf8, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect() mut => VT.Connect(ref this);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT Reconnect(uint32 width, uint32 height) mut => VT.Reconnect(ref this, width, height);
			public HRESULT get_Settings(IRemoteDesktopClientSettings** settings) mut => VT.get_Settings(ref this, settings);
			public HRESULT get_Actions(IRemoteDesktopClientActions** actions) mut => VT.get_Actions(ref this, actions);
			public HRESULT get_TouchPointer(IRemoteDesktopClientTouchPointer** touchPointer) mut => VT.get_TouchPointer(ref this, touchPointer);
			public HRESULT DeleteSavedCredentials(BSTR serverName) mut => VT.DeleteSavedCredentials(ref this, serverName);
			public HRESULT UpdateSessionDisplaySettings(uint32 width, uint32 height) mut => VT.UpdateSessionDisplaySettings(ref this, width, height);
			public HRESULT attachEvent(BSTR eventName, IDispatch* callback) mut => VT.attachEvent(ref this, eventName, callback);
			public HRESULT detachEvent(BSTR eventName, IDispatch* callback) mut => VT.detachEvent(ref this, eventName, callback);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, uint32 width, uint32 height) Reconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, IRemoteDesktopClientSettings** settings) get_Settings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, IRemoteDesktopClientActions** actions) get_Actions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, IRemoteDesktopClientTouchPointer** touchPointer) get_TouchPointer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, BSTR serverName) DeleteSavedCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, uint32 width, uint32 height) UpdateSessionDisplaySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, BSTR eventName, IDispatch* callback) attachEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteDesktopClient self, BSTR eventName, IDispatch* callback) detachEvent;
			}
		}
		[CRepr]
		public struct IRemoteSystemAdditionalInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xeeaa3d5f, 0xec63, 0x4d27, 0xaf, 0x38, 0xe8, 0x6b, 0x1d, 0x72, 0x92, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdditionalInfo(out HSTRING deduplicationId, in Guid riid, void** mapView) mut => VT.GetAdditionalInfo(ref this, out deduplicationId, riid, mapView);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteSystemAdditionalInfoProvider self, out HSTRING deduplicationId, in Guid riid, void** mapView) GetAdditionalInfo;
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
		public static extern BOOL WTSEnumerateServersW(PWSTR pDomainName, uint32 Reserved, uint32 Version, out WTS_SERVER_INFOW* ppServerInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateServersA(PSTR pDomainName, uint32 Reserved, uint32 Version, out WTS_SERVER_INFOA* ppServerInfo, out uint32 pCount);
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
		public static extern BOOL WTSEnumerateSessionsW(HANDLE hServer, uint32 Reserved, uint32 Version, out WTS_SESSION_INFOW* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsA(HANDLE hServer, uint32 Reserved, uint32 Version, out WTS_SESSION_INFOA* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsExW(HANDLE hServer, out uint32 pLevel, uint32 Filter, out WTS_SESSION_INFO_1W* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateSessionsExA(HANDLE hServer, out uint32 pLevel, uint32 Filter, out WTS_SESSION_INFO_1A* ppSessionInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesW(HANDLE hServer, uint32 Reserved, uint32 Version, out WTS_PROCESS_INFOW* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesA(HANDLE hServer, uint32 Reserved, uint32 Version, out WTS_PROCESS_INFOA* ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSTerminateProcess(HANDLE hServer, uint32 ProcessId, uint32 ExitCode);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQuerySessionInformationW(HANDLE hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, out PWSTR ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQuerySessionInformationA(HANDLE hServer, uint32 SessionId, WTS_INFO_CLASS WTSInfoClass, out PSTR ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryUserConfigW(PWSTR pServerName, PWSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, out PWSTR ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryUserConfigA(PSTR pServerName, PSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, out PSTR ppBuffer, out uint32 pBytesReturned);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetUserConfigW(PWSTR pServerName, PWSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PWSTR pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetUserConfigA(PSTR pServerName, PSTR pUserName, WTS_CONFIG_CLASS WTSConfigClass, PSTR pBuffer, uint32 DataLength);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSendMessageW(HANDLE hServer, uint32 SessionId, PWSTR pTitle, uint32 TitleLength, PWSTR pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, out MESSAGEBOX_RESULT pResponse, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSendMessageA(HANDLE hServer, uint32 SessionId, PSTR pTitle, uint32 TitleLength, PSTR pMessage, uint32 MessageLength, MESSAGEBOX_STYLE Style, uint32 Timeout, out MESSAGEBOX_RESULT pResponse, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSDisconnectSession(HANDLE hServer, uint32 SessionId, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSLogoffSession(HANDLE hServer, uint32 SessionId, BOOL bWait);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSShutdownSystem(HANDLE hServer, uint32 ShutdownFlag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSWaitSystemEvent(HANDLE hServer, uint32 EventMask, out uint32 pEventFlags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpen(HANDLE hServer, uint32 SessionId, PSTR pVirtualName);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HwtsVirtualChannelHandle WTSVirtualChannelOpenEx(uint32 SessionId, PSTR pVirtualName, uint32 flags);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelClose(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelRead(HANDLE hChannelHandle, uint32 TimeOut, PSTR Buffer, uint32 BufferSize, out uint32 pBytesRead);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelWrite(HANDLE hChannelHandle, PSTR Buffer, uint32 Length, out uint32 pBytesWritten);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelPurgeInput(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelPurgeOutput(HANDLE hChannelHandle);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSVirtualChannelQuery(HANDLE hChannelHandle, WTS_VIRTUAL_CLASS param1, void** ppBuffer, out uint32 pBytesReturned);
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
		public static extern BOOL WTSQueryUserToken(uint32 SessionId, out HANDLE phToken);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSFreeMemoryExW(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSFreeMemoryExA(WTS_TYPE_CLASS WTSTypeClass, void* pMemory, uint32 NumberOfEntries);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesExW(HANDLE hServer, out uint32 pLevel, uint32 SessionId, out PWSTR ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateProcessesExA(HANDLE hServer, out uint32 pLevel, uint32 SessionId, out PSTR ppProcessInfo, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateListenersW(HANDLE hServer, void* pReserved, uint32 Reserved, uint16** pListeners, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnumerateListenersA(HANDLE hServer, void* pReserved, uint32 Reserved, int8** pListeners, out uint32 pCount);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryListenerConfigW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, out WTSLISTENERCONFIGW pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSQueryListenerConfigA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, out WTSLISTENERCONFIGA pBuffer);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSCreateListenerW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, ref WTSLISTENERCONFIGW pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSCreateListenerA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, ref WTSLISTENERCONFIGA pBuffer, uint32 flag);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetListenerSecurityW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSSetListenerSecurityA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, uint32 SecurityInformation, ref SECURITY_DESCRIPTOR pSecurityDescriptor);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetListenerSecurityW(HANDLE hServer, void* pReserved, uint32 Reserved, PWSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetListenerSecurityA(HANDLE hServer, void* pReserved, uint32 Reserved, PSTR pListenerName, uint32 SecurityInformation, SECURITY_DESCRIPTOR* pSecurityDescriptor, uint32 nLength, out uint32 lpnLengthNeeded);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSEnableChildSessions(BOOL bEnable);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSIsChildSessionsEnabled(out BOOL pbEnabled);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTSGetChildSessionId(out uint32 pSessionId);
		[Import("wtsapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WTSSetRenderHint(out uint64 pRenderHintID, HWND hwndOwner, uint32 renderHintType, uint32 cbHintDataLength, uint8* pHintData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ProcessIdToSessionId(uint32 dwProcessId, out uint32 pSessionId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WTSGetActiveConsoleSessionId();
	}
}
