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
		
		[AllowDuplicates]
		public enum AE_POSITION_FLAGS : int32
		{
			POSITION_INVALID = 0,
			POSITION_DISCONTINUOUS = 1,
			POSITION_CONTINUOUS = 2,
			POSITION_QPC_ERROR = 4,
		}
		[AllowDuplicates]
		public enum AAAuthSchemes : int32
		{
			AA_AUTH_MIN = 0,
			AA_AUTH_BASIC = 1,
			AA_AUTH_NTLM = 2,
			AA_AUTH_SC = 3,
			AA_AUTH_LOGGEDONCREDENTIALS = 4,
			AA_AUTH_NEGOTIATE = 5,
			AA_AUTH_ANY = 6,
			AA_AUTH_COOKIE = 7,
			AA_AUTH_DIGEST = 8,
			AA_AUTH_ORGID = 9,
			AA_AUTH_CONID = 10,
			AA_AUTH_SSPI_NTLM = 11,
			AA_AUTH_MAX = 12,
		}
		[AllowDuplicates]
		public enum AAAccountingDataType : int32
		{
			AA_MAIN_SESSION_CREATION = 0,
			AA_SUB_SESSION_CREATION = 1,
			AA_SUB_SESSION_CLOSED = 2,
			AA_MAIN_SESSION_CLOSED = 3,
		}
		[AllowDuplicates]
		public enum SESSION_TIMEOUT_ACTION_TYPE : int32
		{
			SESSION_TIMEOUT_ACTION_DISCONNECT = 0,
			SESSION_TIMEOUT_ACTION_SILENT_REAUTH = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum AATrustClassID : int32
		{
			AA_UNTRUSTED = 0,
			AA_TRUSTEDUSER_UNTRUSTEDCLIENT = 1,
			AA_TRUSTEDUSER_TRUSTEDCLIENT = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WTS_CONFIG_CLASS : int32
		{
			WTSUserConfigInitialProgram = 0,
			WTSUserConfigWorkingDirectory = 1,
			WTSUserConfigfInheritInitialProgram = 2,
			WTSUserConfigfAllowLogonTerminalServer = 3,
			WTSUserConfigTimeoutSettingsConnections = 4,
			WTSUserConfigTimeoutSettingsDisconnections = 5,
			WTSUserConfigTimeoutSettingsIdle = 6,
			WTSUserConfigfDeviceClientDrives = 7,
			WTSUserConfigfDeviceClientPrinters = 8,
			WTSUserConfigfDeviceClientDefaultPrinter = 9,
			WTSUserConfigBrokenTimeoutSettings = 10,
			WTSUserConfigReconnectSettings = 11,
			WTSUserConfigModemCallbackSettings = 12,
			WTSUserConfigModemCallbackPhoneNumber = 13,
			WTSUserConfigShadowingSettings = 14,
			WTSUserConfigTerminalServerProfilePath = 15,
			WTSUserConfigTerminalServerHomeDir = 16,
			WTSUserConfigTerminalServerHomeDirDrive = 17,
			WTSUserConfigfTerminalServerRemoteHomeDir = 18,
			WTSUserConfigUser = 19,
		}
		[AllowDuplicates]
		public enum WTS_CONFIG_SOURCE : int32
		{
			WTSUserConfigSourceSAM = 0,
		}
		[AllowDuplicates]
		public enum WTS_VIRTUAL_CLASS : int32
		{
			WTSVirtualClientData = 0,
			WTSVirtualFileHandle = 1,
		}
		[AllowDuplicates]
		public enum WTS_TYPE_CLASS : int32
		{
			WTSTypeProcessInfoLevel0 = 0,
			WTSTypeProcessInfoLevel1 = 1,
			WTSTypeSessionInfoLevel1 = 2,
		}
		[AllowDuplicates]
		public enum WTSSBX_MACHINE_DRAIN : int32
		{
			WTSSBX_MACHINE_DRAIN_UNSPEC = 0,
			WTSSBX_MACHINE_DRAIN_OFF = 1,
			WTSSBX_MACHINE_DRAIN_ON = 2,
		}
		[AllowDuplicates]
		public enum WTSSBX_MACHINE_SESSION_MODE : int32
		{
			WTSSBX_MACHINE_SESSION_MODE_UNSPEC = 0,
			WTSSBX_MACHINE_SESSION_MODE_SINGLE = 1,
			WTSSBX_MACHINE_SESSION_MODE_MULTIPLE = 2,
		}
		[AllowDuplicates]
		public enum WTSSBX_ADDRESS_FAMILY : int32
		{
			WTSSBX_ADDRESS_FAMILY_AF_UNSPEC = 0,
			WTSSBX_ADDRESS_FAMILY_AF_INET = 1,
			WTSSBX_ADDRESS_FAMILY_AF_INET6 = 2,
			WTSSBX_ADDRESS_FAMILY_AF_IPX = 3,
			WTSSBX_ADDRESS_FAMILY_AF_NETBIOS = 4,
		}
		[AllowDuplicates]
		public enum WTSSBX_MACHINE_STATE : int32
		{
			WTSSBX_MACHINE_STATE_UNSPEC = 0,
			WTSSBX_MACHINE_STATE_READY = 1,
			WTSSBX_MACHINE_STATE_SYNCHRONIZING = 2,
		}
		[AllowDuplicates]
		public enum WTSSBX_SESSION_STATE : int32
		{
			WTSSBX_SESSION_STATE_UNSPEC = 0,
			WTSSBX_SESSION_STATE_ACTIVE = 1,
			WTSSBX_SESSION_STATE_DISCONNECTED = 2,
		}
		[AllowDuplicates]
		public enum WTSSBX_NOTIFICATION_TYPE : int32
		{
			WTSSBX_NOTIFICATION_REMOVED = 1,
			WTSSBX_NOTIFICATION_CHANGED = 2,
			WTSSBX_NOTIFICATION_ADDED = 4,
			WTSSBX_NOTIFICATION_RESYNC = 8,
		}
		[AllowDuplicates]
		public enum TSSD_AddrV46Type : int32
		{
			TSSD_ADDR_UNDEFINED = 0,
			TSSD_ADDR_IPv4 = 4,
			TSSD_ADDR_IPv6 = 6,
		}
		[AllowDuplicates]
		public enum TSSB_NOTIFICATION_TYPE : int32
		{
			TSSB_NOTIFY_INVALID = 0,
			TSSB_NOTIFY_TARGET_CHANGE = 1,
			TSSB_NOTIFY_SESSION_CHANGE = 2,
			TSSB_NOTIFY_CONNECTION_REQUEST_CHANGE = 4,
		}
		[AllowDuplicates]
		public enum TARGET_STATE : int32
		{
			TARGET_UNKNOWN = 1,
			TARGET_INITIALIZING = 2,
			TARGET_RUNNING = 3,
			TARGET_DOWN = 4,
			TARGET_HIBERNATED = 5,
			TARGET_CHECKED_OUT = 6,
			TARGET_STOPPED = 7,
			TARGET_INVALID = 8,
			TARGET_STARTING = 9,
			TARGET_STOPPING = 10,
			TARGET_MAXSTATE = 11,
		}
		[AllowDuplicates]
		public enum TARGET_CHANGE_TYPE : int32
		{
			TARGET_CHANGE_UNSPEC = 1,
			TARGET_EXTERNALIP_CHANGED = 2,
			TARGET_INTERNALIP_CHANGED = 4,
			TARGET_JOINED = 8,
			TARGET_REMOVED = 16,
			TARGET_STATE_CHANGED = 32,
			TARGET_IDLE = 64,
			TARGET_PENDING = 128,
			TARGET_INUSE = 256,
			TARGET_PATCH_STATE_CHANGED = 512,
			TARGET_FARM_MEMBERSHIP_CHANGED = 1024,
		}
		[AllowDuplicates]
		public enum TARGET_TYPE : int32
		{
			UNKNOWN = 0,
			FARM = 1,
			NONFARM = 2,
		}
		[AllowDuplicates]
		public enum TARGET_PATCH_STATE : int32
		{
			TARGET_PATCH_UNKNOWN = 0,
			TARGET_PATCH_NOT_STARTED = 1,
			TARGET_PATCH_IN_PROGRESS = 2,
			TARGET_PATCH_COMPLETED = 3,
			TARGET_PATCH_FAILED = 4,
		}
		[AllowDuplicates]
		public enum CLIENT_MESSAGE_TYPE : int32
		{
			CLIENT_MESSAGE_CONNECTION_INVALID = 0,
			CLIENT_MESSAGE_CONNECTION_STATUS = 1,
			CLIENT_MESSAGE_CONNECTION_ERROR = 2,
		}
		[AllowDuplicates]
		public enum CONNECTION_CHANGE_NOTIFICATION : int32
		{
			CONNECTION_REQUEST_INVALID = 0,
			CONNECTION_REQUEST_PENDING = 1,
			CONNECTION_REQUEST_FAILED = 2,
			CONNECTION_REQUEST_TIMEDOUT = 3,
			CONNECTION_REQUEST_SUCCEEDED = 4,
			CONNECTION_REQUEST_CANCELLED = 5,
			CONNECTION_REQUEST_LB_COMPLETED = 6,
			CONNECTION_REQUEST_QUERY_PL_COMPLETED = 7,
			CONNECTION_REQUEST_ORCH_COMPLETED = 8,
		}
		[AllowDuplicates]
		public enum RD_FARM_TYPE : int32
		{
			RD_FARM_RDSH = 0,
			RD_FARM_TEMP_VM = 1,
			RD_FARM_MANUAL_PERSONAL_VM = 2,
			RD_FARM_AUTO_PERSONAL_VM = 3,
			RD_FARM_MANUAL_PERSONAL_RDSH = 4,
			RD_FARM_AUTO_PERSONAL_RDSH = 5,
			RD_FARM_TYPE_UNKNOWN = -1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum TSSESSION_STATE : int32
		{
			STATE_INVALID = -1,
			STATE_ACTIVE = 0,
			STATE_CONNECTED = 1,
			STATE_CONNECTQUERY = 2,
			STATE_SHADOW = 3,
			STATE_DISCONNECTED = 4,
			STATE_IDLE = 5,
			STATE_LISTEN = 6,
			STATE_RESET = 7,
			STATE_DOWN = 8,
			STATE_INIT = 9,
			STATE_MAX = 10,
		}
		[AllowDuplicates]
		public enum TARGET_OWNER : int32
		{
			OWNER_UNKNOWN = 0,
			OWNER_MS_TS_PLUGIN = 1,
			OWNER_MS_VM_PLUGIN = 2,
		}
		[AllowDuplicates]
		public enum VM_NOTIFY_STATUS : int32
		{
			VM_NOTIFY_STATUS_PENDING = 0,
			VM_NOTIFY_STATUS_IN_PROGRESS = 1,
			VM_NOTIFY_STATUS_COMPLETE = 2,
			VM_NOTIFY_STATUS_FAILED = 3,
			VM_NOTIFY_STATUS_CANCELED = 4,
		}
		[AllowDuplicates]
		public enum VM_HOST_NOTIFY_STATUS : int32
		{
			VM_HOST_STATUS_INIT_PENDING = 0,
			VM_HOST_STATUS_INIT_IN_PROGRESS = 1,
			VM_HOST_STATUS_INIT_COMPLETE = 2,
			VM_HOST_STATUS_INIT_FAILED = 3,
		}
		[AllowDuplicates]
		public enum RDV_TASK_STATUS : int32
		{
			RDV_TASK_STATUS_UNKNOWN = 0,
			RDV_TASK_STATUS_SEARCHING = 1,
			RDV_TASK_STATUS_DOWNLOADING = 2,
			RDV_TASK_STATUS_APPLYING = 3,
			RDV_TASK_STATUS_REBOOTING = 4,
			RDV_TASK_STATUS_REBOOTED = 5,
			RDV_TASK_STATUS_SUCCESS = 6,
			RDV_TASK_STATUS_FAILED = 7,
			RDV_TASK_STATUS_TIMEOUT = 8,
		}
		[AllowDuplicates]
		public enum TS_SB_SORT_BY : int32
		{
			TS_SB_SORT_BY_NONE = 0,
			TS_SB_SORT_BY_NAME = 1,
			TS_SB_SORT_BY_PROP = 2,
		}
		[AllowDuplicates]
		public enum TSPUB_PLUGIN_PD_RESOLUTION_TYPE : int32
		{
			TSPUB_PLUGIN_PD_QUERY_OR_CREATE = 0,
			TSPUB_PLUGIN_PD_QUERY_EXISTING = 1,
		}
		[AllowDuplicates]
		public enum TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE : int32
		{
			TSPUB_PLUGIN_PD_ASSIGNMENT_NEW = 0,
			TSPUB_PLUGIN_PD_ASSIGNMENT_EXISTING = 1,
		}
		[AllowDuplicates]
		public enum WRdsGraphicsChannelType : int32
		{
			WRdsGraphicsChannelType_GuaranteedDelivery = 0,
			WRdsGraphicsChannelType_BestEffortDelivery = 1,
		}
		[AllowDuplicates]
		public enum WTS_RCM_SERVICE_STATE : int32
		{
			WTS_SERVICE_NONE = 0,
			WTS_SERVICE_START = 1,
			WTS_SERVICE_STOP = 2,
		}
		[AllowDuplicates]
		public enum WTS_RCM_DRAIN_STATE : int32
		{
			WTS_DRAIN_STATE_NONE = 0,
			WTS_DRAIN_IN_DRAIN = 1,
			WTS_DRAIN_NOT_IN_DRAIN = 2,
		}
		[AllowDuplicates]
		public enum WTS_LOGON_ERROR_REDIRECTOR_RESPONSE : int32
		{
			WTS_LOGON_ERR_INVALID = 0,
			WTS_LOGON_ERR_NOT_HANDLED = 1,
			WTS_LOGON_ERR_HANDLED_SHOW = 2,
			WTS_LOGON_ERR_HANDLED_DONT_SHOW = 3,
			WTS_LOGON_ERR_HANDLED_DONT_SHOW_START_OVER = 4,
		}
		[AllowDuplicates]
		public enum WTS_CERT_TYPE : int32
		{
			WTS_CERT_TYPE_INVALID = 0,
			WTS_CERT_TYPE_PROPRIETORY = 1,
			WTS_CERT_TYPE_X509 = 2,
		}
		[AllowDuplicates]
		public enum WRDS_CONNECTION_SETTING_LEVEL : int32
		{
			WRDS_CONNECTION_SETTING_LEVEL_INVALID = 0,
			WRDS_CONNECTION_SETTING_LEVEL_1 = 1,
		}
		[AllowDuplicates]
		public enum WRDS_LISTENER_SETTING_LEVEL : int32
		{
			WRDS_LISTENER_SETTING_LEVEL_INVALID = 0,
			WRDS_LISTENER_SETTING_LEVEL_1 = 1,
		}
		[AllowDuplicates]
		public enum WRDS_SETTING_TYPE : int32
		{
			WRDS_SETTING_TYPE_INVALID = 0,
			WRDS_SETTING_TYPE_MACHINE = 1,
			WRDS_SETTING_TYPE_USER = 2,
			WRDS_SETTING_TYPE_SAM = 3,
		}
		[AllowDuplicates]
		public enum WRDS_SETTING_STATUS : int32
		{
			WRDS_SETTING_STATUS_NOTAPPLICABLE = -1,
			WRDS_SETTING_STATUS_DISABLED = 0,
			WRDS_SETTING_STATUS_ENABLED = 1,
			WRDS_SETTING_STATUS_NOTCONFIGURED = 2,
		}
		[AllowDuplicates]
		public enum WRDS_SETTING_LEVEL : int32
		{
			WRDS_SETTING_LEVEL_INVALID = 0,
			WRDS_SETTING_LEVEL_1 = 1,
		}
		[AllowDuplicates]
		public enum PasswordEncodingType : int32
		{
			PasswordEncodingUTF8 = 0,
			PasswordEncodingUTF16LE = 1,
			PasswordEncodingUTF16BE = 2,
		}
		[AllowDuplicates]
		public enum RemoteActionType : int32
		{
			RemoteActionCharms = 0,
			RemoteActionAppbar = 1,
			RemoteActionSnap = 2,
			RemoteActionStartScreen = 3,
			RemoteActionAppSwitch = 4,
		}
		[AllowDuplicates]
		public enum SnapshotEncodingType : int32
		{
			SnapshotEncodingDataUri = 0,
		}
		[AllowDuplicates]
		public enum SnapshotFormatType : int32
		{
			SnapshotFormatPng = 0,
			SnapshotFormatJpeg = 1,
			SnapshotFormatBmp = 2,
		}
		[AllowDuplicates]
		public enum KeyCombinationType : int32
		{
			KeyCombinationHome = 0,
			KeyCombinationLeft = 1,
			KeyCombinationUp = 2,
			KeyCombinationRight = 3,
			KeyCombinationDown = 4,
			KeyCombinationScroll = 5,
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
			
			public function HRESULT(IAudioEndpoint *self, WAVEFORMATEX** ppFormat) GetFrameFormat;
			public function HRESULT(IAudioEndpoint *self, uint32* pFramesPerPacket) GetFramesPerPacket;
			public function HRESULT(IAudioEndpoint *self, int64* pLatency) GetLatency;
			public function HRESULT(IAudioEndpoint *self, uint32 streamFlags) SetStreamFlags;
			public function HRESULT(IAudioEndpoint *self, HANDLE eventHandle) SetEventHandle;
		}
		[CRepr]
		public struct IAudioEndpointRT : IUnknown
		{
			public const new Guid IID = .(0xdfd2005f, 0xa6e5, 0x4d39, 0xa2, 0x65, 0x93, 0x9a, 0xda, 0x9f, 0xbb, 0x4d);
			
			public function void(IAudioEndpointRT *self, int64* pPadding, AE_CURRENT_POSITION* pAeCurrentPosition) GetCurrentPadding;
			public function void(IAudioEndpointRT *self) ProcessingComplete;
			public function HRESULT(IAudioEndpointRT *self) SetPinInactive;
			public function HRESULT(IAudioEndpointRT *self) SetPinActive;
		}
		[CRepr]
		public struct IAudioInputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8026ab61, 0x92b2, 0x43c1, 0xa1, 0xdf, 0x5c, 0x37, 0xeb, 0xd0, 0x8d, 0x82);
			
			public function void(IAudioInputEndpointRT *self, APO_CONNECTION_PROPERTY* pConnectionProperty, AE_CURRENT_POSITION* pAeTimeStamp) GetInputDataPointer;
			public function void(IAudioInputEndpointRT *self, uint32 u32FrameCount, uint pDataPointer) ReleaseInputDataPointer;
			public function void(IAudioInputEndpointRT *self) PulseEndpoint;
		}
		[CRepr]
		public struct IAudioOutputEndpointRT : IUnknown
		{
			public const new Guid IID = .(0x8fa906e4, 0xc31c, 0x4e31, 0x93, 0x2e, 0x19, 0xa6, 0x63, 0x85, 0xe9, 0xaa);
			
			public function uint(IAudioOutputEndpointRT *self, uint32 u32FrameCount, AE_CURRENT_POSITION* pAeTimeStamp) GetOutputDataPointer;
			public function void(IAudioOutputEndpointRT *self, APO_CONNECTION_PROPERTY* pConnectionProperty) ReleaseOutputDataPointer;
			public function void(IAudioOutputEndpointRT *self) PulseEndpoint;
		}
		[CRepr]
		public struct IAudioDeviceEndpoint : IUnknown
		{
			public const new Guid IID = .(0xd4952f5a, 0xa0b2, 0x4cc4, 0x8b, 0x82, 0x93, 0x58, 0x48, 0x8d, 0xd8, 0xac);
			
			public function HRESULT(IAudioDeviceEndpoint *self, int64 MaxPeriod, uint32 u32LatencyCoefficient) SetBuffer;
			public function HRESULT(IAudioDeviceEndpoint *self, BOOL* pbIsRTCapable) GetRTCaps;
			public function HRESULT(IAudioDeviceEndpoint *self, BOOL* pbisEventCapable) GetEventDrivenCapable;
			public function HRESULT(IAudioDeviceEndpoint *self, uint hTargetProcess, int64 hnsPeriod, int64 hnsBufferDuration, uint32 u32LatencyCoefficient, uint32* pu32SharedMemorySize, uint* phSharedMemory) WriteExclusiveModeParametersToSharedMemory;
		}
		[CRepr]
		public struct IAudioEndpointControl : IUnknown
		{
			public const new Guid IID = .(0xc684b72a, 0x6df4, 0x4774, 0xbd, 0xf9, 0x76, 0xb7, 0x75, 0x09, 0xb6, 0x53);
			
			public function HRESULT(IAudioEndpointControl *self) Start;
			public function HRESULT(IAudioEndpointControl *self) Reset;
			public function HRESULT(IAudioEndpointControl *self) Stop;
		}
		[CRepr]
		public struct IADsTSUserEx : IDispatch
		{
			public const new Guid IID = .(0xc4930e79, 0x2989, 0x4462, 0x8a, 0x60, 0x2f, 0xcf, 0x2f, 0x29, 0x55, 0xef);
			
			public function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesProfilePath;
			public function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesProfilePath;
			public function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesHomeDirectory;
			public function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesHomeDirectory;
			public function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesHomeDrive;
			public function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesHomeDrive;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_AllowLogon;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_AllowLogon;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_EnableRemoteControl;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_EnableRemoteControl;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxDisconnectionTime;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxDisconnectionTime;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxConnectionTime;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxConnectionTime;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_MaxIdleTime;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_MaxIdleTime;
			public function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_ReconnectionAction;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ReconnectionAction;
			public function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_BrokenConnectionAction;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_BrokenConnectionAction;
			public function HRESULT(IADsTSUserEx *self, int32* pNewVal) get_ConnectClientDrivesAtLogon;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ConnectClientDrivesAtLogon;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_ConnectClientPrintersAtLogon;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_ConnectClientPrintersAtLogon;
			public function HRESULT(IADsTSUserEx *self, int32* pVal) get_DefaultToMainPrinter;
			public function HRESULT(IADsTSUserEx *self, int32 NewVal) put_DefaultToMainPrinter;
			public function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesWorkDirectory;
			public function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesWorkDirectory;
			public function HRESULT(IADsTSUserEx *self, BSTR* pVal) get_TerminalServicesInitialProgram;
			public function HRESULT(IADsTSUserEx *self, BSTR pNewVal) put_TerminalServicesInitialProgram;
		}
		[CRepr]
		public struct ITSGAuthorizeConnectionSink : IUnknown
		{
			public const new Guid IID = .(0xc27ece33, 0x7781, 0x4318, 0x98, 0xef, 0x1c, 0xf2, 0xda, 0x7b, 0x70, 0x05);
			
			public function HRESULT(ITSGAuthorizeConnectionSink *self, HRESULT hrIn, Guid mainSessionId, uint32 cbSoHResponse, uint8* pbSoHResponse, uint32 idleTimeout, uint32 sessionTimeout, SESSION_TIMEOUT_ACTION_TYPE sessionTimeoutAction, AATrustClassID trustClass, uint32* policyAttributes) OnConnectionAuthorized;
		}
		[CRepr]
		public struct ITSGAuthorizeResourceSink : IUnknown
		{
			public const new Guid IID = .(0xfeddfcd4, 0xfa12, 0x4435, 0xae, 0x55, 0x7a, 0xd1, 0xa9, 0x77, 0x9a, 0xf7);
			
			public function HRESULT(ITSGAuthorizeResourceSink *self, HRESULT hrIn, Guid mainSessionId, int32 subSessionId, BSTR* allowedResourceNames, uint32 numAllowedResourceNames, BSTR* failedResourceNames, uint32 numFailedResourceNames) OnChannelAuthorized;
		}
		[CRepr]
		public struct ITSGPolicyEngine : IUnknown
		{
			public const new Guid IID = .(0x8bc24f08, 0x6223, 0x42f4, 0xa5, 0xb4, 0x8e, 0x37, 0xcd, 0x13, 0x5b, 0xbd);
			
			public function HRESULT(ITSGPolicyEngine *self, Guid mainSessionId, BSTR username, AAAuthSchemes authType, BSTR clientMachineIP, BSTR clientMachineName, uint8* sohData, uint32 numSOHBytes, uint8* cookieData, uint32 numCookieBytes, HANDLE_PTR userToken, ITSGAuthorizeConnectionSink* pSink) AuthorizeConnection;
			public function HRESULT(ITSGPolicyEngine *self, Guid mainSessionId, int32 subSessionId, BSTR username, BSTR* resourceNames, uint32 numResources, BSTR* alternateResourceNames, uint32 numAlternateResourceName, uint32 portNumber, BSTR operation, uint8* cookie, uint32 numBytesInCookie, ITSGAuthorizeResourceSink* pSink) AuthorizeResource;
			public function HRESULT(ITSGPolicyEngine *self) Refresh;
			public function HRESULT(ITSGPolicyEngine *self, BOOL* quarantineEnabled) IsQuarantineEnabled;
		}
		[CRepr]
		public struct ITSGAccountingEngine : IUnknown
		{
			public const new Guid IID = .(0x4ce2a0c9, 0xe874, 0x4f1a, 0x86, 0xf4, 0x06, 0xbb, 0xb9, 0x11, 0x53, 0x38);
			
			public function HRESULT(ITSGAccountingEngine *self, AAAccountingDataType accountingDataType, AAAccountingData accountingData) DoAccounting;
		}
		[CRepr]
		public struct ITSGAuthenticateUserSink : IUnknown
		{
			public const new Guid IID = .(0x2c3e2e73, 0xa782, 0x47f9, 0x8d, 0xfb, 0x77, 0xee, 0x1e, 0xd2, 0x7a, 0x03);
			
			public function HRESULT(ITSGAuthenticateUserSink *self, BSTR userName, BSTR userDomain, uint context, HANDLE_PTR userToken) OnUserAuthenticated;
			public function HRESULT(ITSGAuthenticateUserSink *self, uint context, HRESULT genericErrorCode, HRESULT specificErrorCode) OnUserAuthenticationFailed;
			public function HRESULT(ITSGAuthenticateUserSink *self, uint context) ReauthenticateUser;
			public function HRESULT(ITSGAuthenticateUserSink *self, uint context) DisconnectUser;
		}
		[CRepr]
		public struct ITSGAuthenticationEngine : IUnknown
		{
			public const new Guid IID = .(0x9ee3e5bf, 0x04ab, 0x4691, 0x99, 0x8c, 0xd7, 0xf6, 0x22, 0x32, 0x1a, 0x56);
			
			public function HRESULT(ITSGAuthenticationEngine *self, Guid mainSessionId, uint8* cookieData, uint32 numCookieBytes, uint context, ITSGAuthenticateUserSink* pSink) AuthenticateUser;
			public function HRESULT(ITSGAuthenticationEngine *self, Guid mainSessionId, uint context) CancelAuthentication;
		}
		[CRepr]
		public struct IWTSSBPlugin : IUnknown
		{
			public const new Guid IID = .(0xdc44be78, 0xb18d, 0x4399, 0xb2, 0x10, 0x64, 0x1b, 0xf6, 0x7a, 0x00, 0x2c);
			
			public function HRESULT(IWTSSBPlugin *self, uint32* PluginCapabilities) Initialize;
			public function HRESULT(IWTSSBPlugin *self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, WTSSBX_MACHINE_INFO* pMachineInfo) WTSSBX_MachineChangeNotification;
			public function HRESULT(IWTSSBPlugin *self, WTSSBX_NOTIFICATION_TYPE NotificationType, int32 MachineId, uint32 NumOfSessions, WTSSBX_SESSION_INFO* SessionInfo) WTSSBX_SessionChangeNotification;
			public function HRESULT(IWTSSBPlugin *self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, PWSTR FarmName, int32* pMachineId) WTSSBX_GetMostSuitableServer;
			public function HRESULT(IWTSSBPlugin *self) Terminated;
			public function HRESULT(IWTSSBPlugin *self, PWSTR UserName, PWSTR DomainName, PWSTR ApplicationType, WTSSBX_IP_ADDRESS* RedirectorInternalIP, uint32* pSessionId, WTSSBX_MACHINE_CONNECT_INFO* pMachineConnectInfo) WTSSBX_GetUserExternalSession;
		}
		[CRepr]
		public struct IWorkspaceClientExt : IUnknown
		{
			public const new Guid IID = .(0x12b952f4, 0x41ca, 0x4f21, 0xa8, 0x29, 0xa6, 0xd0, 0x7d, 0x9a, 0x16, 0xe5);
			
			public function HRESULT(IWorkspaceClientExt *self, BSTR* bstrWorkspaceId) GetResourceId;
			public function HRESULT(IWorkspaceClientExt *self, BSTR* bstrWorkspaceDisplayName) GetResourceDisplayName;
			public function HRESULT(IWorkspaceClientExt *self) IssueDisconnect;
		}
		[CRepr]
		public struct IWorkspace : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe5);
			
			public function HRESULT(IWorkspace *self, SAFEARRAY** psaWkspNames) GetWorkspaceNames;
			public function HRESULT(IWorkspace *self, BSTR bstrWorkspaceId, SAFEARRAY* psaParams) StartRemoteApplication;
			public function HRESULT(IWorkspace *self, uint32* pulProcessId) GetProcessId;
		}
		[CRepr]
		public struct IWorkspace2 : IWorkspace
		{
			public const new Guid IID = .(0x96d8d7cf, 0x783e, 0x4286, 0x83, 0x4c, 0xeb, 0xc0, 0xe9, 0x5f, 0x78, 0x3c);
			
			public function HRESULT(IWorkspace2 *self, BSTR bstrWorkspaceId, BSTR bstrRequestingAppId, BSTR bstrRequestingAppFamilyName, int16 bLaunchIntoImmersiveClient, BSTR bstrImmersiveClientActivationContext, SAFEARRAY* psaParams) StartRemoteApplicationEx;
		}
		[CRepr]
		public struct IWorkspace3 : IWorkspace2
		{
			public const new Guid IID = .(0x1becbe4a, 0xd654, 0x423b, 0xaf, 0xeb, 0xbe, 0x8d, 0x53, 0x2c, 0x13, 0xc6);
			
			public function HRESULT(IWorkspace3 *self, BSTR bstrClaimsHint, BSTR bstrUserHint, uint32 claimCookie, uint32 hwndCredUiParent, RECT rectCredUiParent, BSTR* pbstrAccessToken) GetClaimsToken2;
			public function HRESULT(IWorkspace3 *self, BSTR bstrAccessToken, uint64 ullAccessTokenExpiration, BSTR bstrRefreshToken) SetClaimsToken;
		}
		[CRepr]
		public struct IWorkspaceRegistration : IUnknown
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe6);
			
			public function HRESULT(IWorkspaceRegistration *self, IWorkspaceClientExt* pUnk, uint32* pdwCookie) AddResource;
			public function HRESULT(IWorkspaceRegistration *self, uint32 dwCookieConnection) RemoveResource;
		}
		[CRepr]
		public struct IWorkspaceRegistration2 : IWorkspaceRegistration
		{
			public const new Guid IID = .(0xcf59f654, 0x39bb, 0x44d8, 0x94, 0xd0, 0x46, 0x35, 0x72, 0x89, 0x57, 0xe9);
			
			public function HRESULT(IWorkspaceRegistration2 *self, IWorkspaceClientExt* pUnk, BSTR bstrEventLogUploadAddress, uint32* pdwCookie, Guid correlationId) AddResourceEx;
			public function HRESULT(IWorkspaceRegistration2 *self, uint32 dwCookieConnection, Guid correlationId) RemoveResourceEx;
		}
		[CRepr]
		public struct IWorkspaceScriptable : IDispatch
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb2, 0x3b, 0x92, 0xc4, 0xc3, 0x47);
			
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId) DisconnectWorkspace;
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspace;
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, int16 bCountUnauthenticatedCredentials, int16* pbCredExist) IsWorkspaceCredentialSpecified;
			public function HRESULT(IWorkspaceScriptable *self, int16* pbSSOEnabled) IsWorkspaceSSOEnabled;
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId) ClearWorkspaceCredential;
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceId, BSTR bstrUserName) OnAuthenticated;
			public function HRESULT(IWorkspaceScriptable *self, BSTR bstrWorkspaceFriendlyName) DisconnectWorkspaceByFriendlyName;
		}
		[CRepr]
		public struct IWorkspaceScriptable2 : IWorkspaceScriptable
		{
			public const new Guid IID = .(0xefea49a2, 0xdda5, 0x429d, 0x8f, 0x42, 0xb3, 0x3b, 0xa2, 0xc4, 0xc3, 0x48);
			
			public function HRESULT(IWorkspaceScriptable2 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags) StartWorkspaceEx;
			public function HRESULT(IWorkspaceScriptable2 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName) ResourceDismissed;
		}
		[CRepr]
		public struct IWorkspaceScriptable3 : IWorkspaceScriptable2
		{
			public const new Guid IID = .(0x531e6512, 0x2cbf, 0x4bd2, 0x80, 0xa5, 0xd9, 0x0a, 0x71, 0x63, 0x6a, 0x9a);
			
			public function HRESULT(IWorkspaceScriptable3 *self, BSTR bstrWorkspaceId, BSTR bstrWorkspaceFriendlyName, BSTR bstrRedirectorName, BSTR bstrUserName, BSTR bstrPassword, BSTR bstrAppContainer, BSTR bstrWorkspaceParams, int32 lTimeout, int32 lFlags, BSTR bstrEventLogUploadAddress, Guid correlationId) StartWorkspaceEx2;
		}
		[CRepr]
		public struct IWorkspaceReportMessage : IUnknown
		{
			public const new Guid IID = .(0xa7c06739, 0x500f, 0x4e8c, 0x99, 0xa8, 0x2b, 0xd6, 0x95, 0x58, 0x99, 0xeb);
			
			public function HRESULT(IWorkspaceReportMessage *self, BSTR bstrMessage) RegisterErrorLogMessage;
			public function HRESULT(IWorkspaceReportMessage *self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode, int16* pfErrorExist) IsErrorMessageRegistered;
			public function HRESULT(IWorkspaceReportMessage *self, BSTR bstrWkspId, uint32 dwErrorType, BSTR bstrErrorMessageType, uint32 dwErrorCode) RegisterErrorEvent;
		}
		[CRepr]
		public struct _ITSWkspEvents : IDispatch
		{
			public const new Guid IID = .(0xb922bbb8, 0x4c55, 0x4fea, 0x84, 0x96, 0xbe, 0xb0, 0xb4, 0x42, 0x85, 0xe9);
			
		}
		[CRepr]
		public struct ITsSbPlugin : IUnknown
		{
			public const new Guid IID = .(0x48cd7406, 0xcaab, 0x465f, 0xa5, 0xd6, 0xba, 0xa8, 0x63, 0xb9, 0xea, 0x4f);
			
			public function HRESULT(ITsSbPlugin *self, ITsSbProvider* pProvider, ITsSbPluginNotifySink* pNotifySink, ITsSbPluginPropertySet* pPropertySet) Initialize;
			public function HRESULT(ITsSbPlugin *self, HRESULT hr) Terminate;
		}
		[CRepr]
		public struct ITsSbResourcePlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xea8db42c, 0x98ed, 0x4535, 0xa8, 0x8b, 0x2a, 0x16, 0x4f, 0x35, 0x49, 0x0f);
			
		}
		[CRepr]
		public struct ITsSbServiceNotification : IUnknown
		{
			public const new Guid IID = .(0x86cb68ae, 0x86e0, 0x4f57, 0x8a, 0x64, 0xbb, 0x74, 0x06, 0xbc, 0x55, 0x50);
			
			public function HRESULT(ITsSbServiceNotification *self) NotifyServiceFailure;
			public function HRESULT(ITsSbServiceNotification *self) NotifyServiceSuccess;
		}
		[CRepr]
		public struct ITsSbLoadBalancing : ITsSbPlugin
		{
			public const new Guid IID = .(0x24329274, 0x9eb7, 0x11dc, 0xae, 0x98, 0xf2, 0xb4, 0x56, 0xd8, 0x95, 0x93);
			
			public function HRESULT(ITsSbLoadBalancing *self, ITsSbClientConnection* pConnection, ITsSbLoadBalancingNotifySink* pLBSink) GetMostSuitableTarget;
		}
		[CRepr]
		public struct ITsSbPlacement : ITsSbPlugin
		{
			public const new Guid IID = .(0xdaadee5f, 0x6d32, 0x480e, 0x9e, 0x36, 0xdd, 0xab, 0x23, 0x29, 0xf0, 0x6d);
			
			public function HRESULT(ITsSbPlacement *self, ITsSbClientConnection* pConnection, ITsSbPlacementNotifySink* pPlacementSink) QueryEnvironmentForTarget;
		}
		[CRepr]
		public struct ITsSbOrchestration : ITsSbPlugin
		{
			public const new Guid IID = .(0x64fc1172, 0x9eb7, 0x11dc, 0x8b, 0x00, 0x3a, 0xba, 0x56, 0xd8, 0x95, 0x93);
			
			public function HRESULT(ITsSbOrchestration *self, ITsSbClientConnection* pConnection, ITsSbOrchestrationNotifySink* pOrchestrationNotifySink) PrepareTargetForConnect;
		}
		[CRepr]
		public struct ITsSbEnvironment : IUnknown
		{
			public const new Guid IID = .(0x8c87f7f7, 0xbf51, 0x4a5c, 0x87, 0xbf, 0x8e, 0x94, 0xfb, 0x6e, 0x22, 0x56);
			
			public function HRESULT(ITsSbEnvironment *self, BSTR* pVal) get_Name;
			public function HRESULT(ITsSbEnvironment *self, uint32* pVal) get_ServerWeight;
			public function HRESULT(ITsSbEnvironment *self, ITsSbEnvironmentPropertySet** ppPropertySet) get_EnvironmentPropertySet;
			public function HRESULT(ITsSbEnvironment *self, ITsSbEnvironmentPropertySet* pVal) put_EnvironmentPropertySet;
		}
		[CRepr]
		public struct ITsSbLoadBalanceResult : IUnknown
		{
			public const new Guid IID = .(0x24fdb7ac, 0xfea6, 0x11dc, 0x96, 0x72, 0x9a, 0x89, 0x56, 0xd8, 0x95, 0x93);
			
			public function HRESULT(ITsSbLoadBalanceResult *self, BSTR* pVal) get_TargetName;
		}
		[CRepr]
		public struct ITsSbTarget : IUnknown
		{
			public const new Guid IID = .(0x16616ecc, 0x272d, 0x411d, 0xb3, 0x24, 0x12, 0x68, 0x93, 0x03, 0x38, 0x56);
			
			public function HRESULT(ITsSbTarget *self, BSTR* pVal) get_TargetName;
			public function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetName;
			public function HRESULT(ITsSbTarget *self, BSTR* pVal) get_FarmName;
			public function HRESULT(ITsSbTarget *self, BSTR Val) put_FarmName;
			public function HRESULT(ITsSbTarget *self, BSTR* TargetFqdnName) get_TargetFQDN;
			public function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetFQDN;
			public function HRESULT(ITsSbTarget *self, BSTR* TargetNetbiosName) get_TargetNetbios;
			public function HRESULT(ITsSbTarget *self, BSTR Val) put_TargetNetbios;
			public function HRESULT(ITsSbTarget *self, TSSD_ConnectionPoint* SOCKADDR, uint32* numAddresses) get_IpAddresses;
			public function HRESULT(ITsSbTarget *self, TSSD_ConnectionPoint* SOCKADDR, uint32 numAddresses) put_IpAddresses;
			public function HRESULT(ITsSbTarget *self, TARGET_STATE* pState) get_TargetState;
			public function HRESULT(ITsSbTarget *self, TARGET_STATE State) put_TargetState;
			public function HRESULT(ITsSbTarget *self, ITsSbTargetPropertySet** ppPropertySet) get_TargetPropertySet;
			public function HRESULT(ITsSbTarget *self, ITsSbTargetPropertySet* pVal) put_TargetPropertySet;
			public function HRESULT(ITsSbTarget *self, BSTR* pVal) get_EnvironmentName;
			public function HRESULT(ITsSbTarget *self, BSTR Val) put_EnvironmentName;
			public function HRESULT(ITsSbTarget *self, uint32* pNumSessions) get_NumSessions;
			public function HRESULT(ITsSbTarget *self, uint32* pNumPendingConnections) get_NumPendingConnections;
			public function HRESULT(ITsSbTarget *self, uint32* pTargetLoad) get_TargetLoad;
		}
		[CRepr]
		public struct ITsSbSession : IUnknown
		{
			public const new Guid IID = .(0xd453aac7, 0xb1d8, 0x4c5e, 0xba, 0x34, 0x9a, 0xfb, 0x4c, 0x8c, 0x55, 0x10);
			
			public function HRESULT(ITsSbSession *self, uint32* pVal) get_SessionId;
			public function HRESULT(ITsSbSession *self, BSTR* targetName) get_TargetName;
			public function HRESULT(ITsSbSession *self, BSTR targetName) put_TargetName;
			public function HRESULT(ITsSbSession *self, BSTR* userName) get_Username;
			public function HRESULT(ITsSbSession *self, BSTR* domain) get_Domain;
			public function HRESULT(ITsSbSession *self, TSSESSION_STATE* pState) get_State;
			public function HRESULT(ITsSbSession *self, TSSESSION_STATE State) put_State;
			public function HRESULT(ITsSbSession *self, FILETIME* pTime) get_CreateTime;
			public function HRESULT(ITsSbSession *self, FILETIME Time) put_CreateTime;
			public function HRESULT(ITsSbSession *self, FILETIME* pTime) get_DisconnectTime;
			public function HRESULT(ITsSbSession *self, FILETIME Time) put_DisconnectTime;
			public function HRESULT(ITsSbSession *self, BSTR* app) get_InitialProgram;
			public function HRESULT(ITsSbSession *self, BSTR Application) put_InitialProgram;
			public function HRESULT(ITsSbSession *self, CLIENT_DISPLAY* pClientDisplay) get_ClientDisplay;
			public function HRESULT(ITsSbSession *self, CLIENT_DISPLAY pClientDisplay) put_ClientDisplay;
			public function HRESULT(ITsSbSession *self, uint32* pVal) get_ProtocolType;
			public function HRESULT(ITsSbSession *self, uint32 Val) put_ProtocolType;
		}
		[CRepr]
		public struct ITsSbResourceNotification : IUnknown
		{
			public const new Guid IID = .(0x65d3e85a, 0xc39b, 0x11dc, 0xb9, 0x2d, 0x3c, 0xd2, 0x55, 0xd8, 0x95, 0x93);
			
			public function HRESULT(ITsSbResourceNotification *self, TSSESSION_STATE changeType, ITsSbSession* pSession) NotifySessionChange;
			public function HRESULT(ITsSbResourceNotification *self, uint32 TargetChangeType, ITsSbTarget* pTarget) NotifyTargetChange;
			public function HRESULT(ITsSbResourceNotification *self, CONNECTION_CHANGE_NOTIFICATION ChangeType, ITsSbClientConnection* pConnection) NotifyClientConnectionStateChange;
		}
		[CRepr]
		public struct ITsSbResourceNotificationEx : IUnknown
		{
			public const new Guid IID = .(0xa8a47fde, 0xca91, 0x44d2, 0xb8, 0x97, 0x3a, 0xa2, 0x8a, 0x43, 0xb2, 0xb7);
			
			public function HRESULT(ITsSbResourceNotificationEx *self, BSTR targetName, BSTR userName, BSTR domain, uint32 sessionId, TSSESSION_STATE sessionState) NotifySessionChangeEx;
			public function HRESULT(ITsSbResourceNotificationEx *self, BSTR targetName, uint32 targetChangeType) NotifyTargetChangeEx;
			public function HRESULT(ITsSbResourceNotificationEx *self, BSTR userName, BSTR domain, BSTR initialProgram, BSTR poolName, BSTR targetName, CONNECTION_CHANGE_NOTIFICATION connectionChangeType) NotifyClientConnectionStateChangeEx;
		}
		[CRepr]
		public struct ITsSbTaskInfo : IUnknown
		{
			public const new Guid IID = .(0x523d1083, 0x89be, 0x48dd, 0x99, 0xea, 0x04, 0xe8, 0x2f, 0xfa, 0x72, 0x65);
			
			public function HRESULT(ITsSbTaskInfo *self, BSTR* pName) get_TargetId;
			public function HRESULT(ITsSbTaskInfo *self, FILETIME* pStartTime) get_StartTime;
			public function HRESULT(ITsSbTaskInfo *self, FILETIME* pEndTime) get_EndTime;
			public function HRESULT(ITsSbTaskInfo *self, FILETIME* pDeadline) get_Deadline;
			public function HRESULT(ITsSbTaskInfo *self, BSTR* pIdentifier) get_Identifier;
			public function HRESULT(ITsSbTaskInfo *self, BSTR* pLabel) get_Label;
			public function HRESULT(ITsSbTaskInfo *self, SAFEARRAY** pContext) get_Context;
			public function HRESULT(ITsSbTaskInfo *self, BSTR* pPlugin) get_Plugin;
			public function HRESULT(ITsSbTaskInfo *self, RDV_TASK_STATUS* pStatus) get_Status;
		}
		[CRepr]
		public struct ITsSbTaskPlugin : ITsSbPlugin
		{
			public const new Guid IID = .(0xfa22ef0f, 0x8705, 0x41be, 0x93, 0xbc, 0x44, 0xbd, 0xbc, 0xf1, 0xc9, 0xc4);
			
			public function HRESULT(ITsSbTaskPlugin *self, ITsSbTaskPluginNotifySink* pITsSbTaskPluginNotifySink) InitializeTaskPlugin;
			public function HRESULT(ITsSbTaskPlugin *self, BSTR pszHostName, uint32 SbTaskInfoSize, ITsSbTaskInfo** pITsSbTaskInfo) SetTaskQueue;
		}
		[CRepr]
		public struct ITsSbPropertySet : IPropertyBag
		{
			public const new Guid IID = .(0x5c025171, 0xbb1e, 0x4baf, 0xa2, 0x12, 0x6d, 0x5e, 0x97, 0x74, 0xb3, 0x3b);
			
		}
		[CRepr]
		public struct ITsSbPluginPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0x95006e34, 0x7eff, 0x4b6c, 0xbb, 0x40, 0x49, 0xa4, 0xfd, 0xa7, 0xce, 0xa6);
			
		}
		[CRepr]
		public struct ITsSbClientConnectionPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xe51995b0, 0x46d6, 0x11dd, 0xaa, 0x21, 0xce, 0xdc, 0x55, 0xd8, 0x95, 0x93);
			
		}
		[CRepr]
		public struct ITsSbTargetPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xf7bda5d6, 0x994c, 0x4e11, 0xa0, 0x79, 0x27, 0x63, 0xb6, 0x18, 0x30, 0xac);
			
		}
		[CRepr]
		public struct ITsSbEnvironmentPropertySet : ITsSbPropertySet
		{
			public const new Guid IID = .(0xd0d1bf7e, 0x7acf, 0x11dd, 0xa2, 0x43, 0xe5, 0x11, 0x56, 0xd8, 0x95, 0x93);
			
		}
		[CRepr]
		public struct ITsSbBaseNotifySink : IUnknown
		{
			public const new Guid IID = .(0x808a6537, 0x1282, 0x4989, 0x9e, 0x09, 0xf4, 0x39, 0x38, 0xb7, 0x17, 0x22);
			
			public function HRESULT(ITsSbBaseNotifySink *self, HRESULT hrError) OnError;
			public function HRESULT(ITsSbBaseNotifySink *self, CLIENT_MESSAGE_TYPE messageType, uint32 messageID) OnReportStatus;
		}
		[CRepr]
		public struct ITsSbPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x44dfe30b, 0xc3be, 0x40f5, 0xbf, 0x82, 0x7a, 0x95, 0xbb, 0x79, 0x5a, 0xdf);
			
			public function HRESULT(ITsSbPluginNotifySink *self, HRESULT hr) OnInitialized;
			public function HRESULT(ITsSbPluginNotifySink *self) OnTerminated;
		}
		[CRepr]
		public struct ITsSbLoadBalancingNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x5f8a8297, 0x3244, 0x4e6a, 0x95, 0x8a, 0x27, 0xc8, 0x22, 0xc1, 0xe1, 0x41);
			
			public function HRESULT(ITsSbLoadBalancingNotifySink *self, ITsSbLoadBalanceResult* pLBResult, BOOL fIsNewConnection) OnGetMostSuitableTarget;
		}
		[CRepr]
		public struct ITsSbPlacementNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x68a0c487, 0x2b4f, 0x46c2, 0x94, 0xa1, 0x6c, 0xe6, 0x85, 0x18, 0x36, 0x34);
			
			public function HRESULT(ITsSbPlacementNotifySink *self, ITsSbEnvironment* pEnvironment) OnQueryEnvironmentCompleted;
		}
		[CRepr]
		public struct ITsSbOrchestrationNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x36c37d61, 0x926b, 0x442f, 0xbc, 0xa5, 0x11, 0x8c, 0x6d, 0x50, 0xdc, 0xf2);
			
			public function HRESULT(ITsSbOrchestrationNotifySink *self, ITsSbTarget* pTarget) OnReadyToConnect;
		}
		[CRepr]
		public struct ITsSbTaskPluginNotifySink : ITsSbBaseNotifySink
		{
			public const new Guid IID = .(0x6aaf899e, 0xc2ec, 0x45ee, 0xaa, 0x37, 0x45, 0xe6, 0x08, 0x95, 0x26, 0x1a);
			
			public function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, FILETIME TaskStartTime, FILETIME TaskEndTime, FILETIME TaskDeadline, BSTR szTaskLabel, BSTR szTaskIdentifier, BSTR szTaskPlugin, uint32 dwTaskStatus, SAFEARRAY* saContext) OnSetTaskTime;
			public function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, BSTR szTaskIdentifier) OnDeleteTaskTime;
			public function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szTargetName, BSTR TaskIdentifier, RDV_TASK_STATUS TaskStatus) OnUpdateTaskStatus;
			public function HRESULT(ITsSbTaskPluginNotifySink *self, BSTR szHostName) OnReportTasks;
		}
		[CRepr]
		public struct ITsSbClientConnection : IUnknown
		{
			public const new Guid IID = .(0x18857499, 0xad61, 0x4b1b, 0xb7, 0xdf, 0xcb, 0xcd, 0x41, 0xfb, 0x83, 0x38);
			
			public function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_UserName;
			public function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_Domain;
			public function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_InitialProgram;
			public function HRESULT(ITsSbClientConnection *self, ITsSbLoadBalanceResult** ppVal) get_LoadBalanceResult;
			public function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_FarmName;
			public function HRESULT(ITsSbClientConnection *self, BSTR contextId, VARIANT context, VARIANT* existingContext) PutContext;
			public function HRESULT(ITsSbClientConnection *self, BSTR contextId, VARIANT* context) GetContext;
			public function HRESULT(ITsSbClientConnection *self, ITsSbEnvironment** ppEnvironment) get_Environment;
			public function HRESULT(ITsSbClientConnection *self) get_ConnectionError;
			public function HRESULT(ITsSbClientConnection *self, BSTR* pVal) get_SamUserAccount;
			public function HRESULT(ITsSbClientConnection *self, ITsSbClientConnectionPropertySet** ppPropertySet) get_ClientConnectionPropertySet;
			public function HRESULT(ITsSbClientConnection *self, BOOL* ppVal) get_IsFirstAssignment;
			public function HRESULT(ITsSbClientConnection *self, RD_FARM_TYPE* pRdFarmType) get_RdFarmType;
			public function HRESULT(ITsSbClientConnection *self, int8** pszUserSidString) get_UserSidString;
			public function HRESULT(ITsSbClientConnection *self, ITsSbSession** ppSession) GetDisconnectedSession;
		}
		[CRepr]
		public struct ITsSbProvider : IUnknown
		{
			public const new Guid IID = .(0x87a4098f, 0x6d7b, 0x44dd, 0xbc, 0x17, 0x8c, 0xe4, 0x4e, 0x37, 0x0d, 0x52);
			
			public function HRESULT(ITsSbProvider *self, BSTR TargetName, BSTR EnvironmentName, ITsSbTarget** ppTarget) CreateTargetObject;
			public function HRESULT(ITsSbProvider *self, BSTR TargetName, ITsSbLoadBalanceResult** ppLBResult) CreateLoadBalanceResultObject;
			public function HRESULT(ITsSbProvider *self, BSTR TargetName, BSTR UserName, BSTR Domain, uint32 SessionId, ITsSbSession** ppSession) CreateSessionObject;
			public function HRESULT(ITsSbProvider *self, ITsSbPluginPropertySet** ppPropertySet) CreatePluginPropertySet;
			public function HRESULT(ITsSbProvider *self, ITsSbTargetPropertySet** ppPropertySet) CreateTargetPropertySetObject;
			public function HRESULT(ITsSbProvider *self, BSTR Name, uint32 ServerWeight, ITsSbEnvironment** ppEnvironment) CreateEnvironmentObject;
			public function HRESULT(ITsSbProvider *self, ITsSbResourcePluginStore** ppStore) GetResourcePluginStore;
			public function HRESULT(ITsSbProvider *self, ITsSbFilterPluginStore** ppStore) GetFilterPluginStore;
			public function HRESULT(ITsSbProvider *self, uint32 notificationType, BSTR ResourceToMonitor, ITsSbResourceNotification* pPluginNotification) RegisterForNotification;
			public function HRESULT(ITsSbProvider *self, uint32 notificationType, BSTR ResourceToMonitor) UnRegisterForNotification;
			public function HRESULT(ITsSbProvider *self, ITsSbGlobalStore** ppGlobalStore) GetInstanceOfGlobalStore;
			public function HRESULT(ITsSbProvider *self, ITsSbEnvironmentPropertySet** ppPropertySet) CreateEnvironmentPropertySetObject;
		}
		[CRepr]
		public struct ITsSbResourcePluginStore : IUnknown
		{
			public const new Guid IID = .(0x5c38f65f, 0xbcf1, 0x4036, 0xa6, 0xbf, 0x9e, 0x3c, 0xcc, 0xae, 0x0b, 0x63);
			
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) QueryTarget;
			public function HRESULT(ITsSbResourcePluginStore *self, uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) QuerySessionBySessionId;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget) AddTargetToStore;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* pSession) AddSessionToStore;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment) AddEnvironmentToStore;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, BOOL bIgnoreOwner) RemoveEnvironmentFromStore;
			public function HRESULT(ITsSbResourcePluginStore *self, uint32* pdwCount, SAFEARRAY** pVal) EnumerateFarms;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, ITsSbEnvironment** ppEnvironment) QueryEnvironment;
			public function HRESULT(ITsSbResourcePluginStore *self, uint32* pdwCount, ITsSbEnvironment*** pVal) EnumerateEnvironments;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget, BOOL bForceWrite) SaveTarget;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment, BOOL bForceWrite) SaveEnvironment;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* pSession) SaveSession;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR TargetName, BSTR PropertyName, VARIANT* pProperty) SetTargetProperty;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR EnvironmentName, BSTR PropertyName, VARIANT* pProperty) SetEnvironmentProperty;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, TARGET_STATE newState, TARGET_STATE* pOldState) SetTargetState;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbSession* sbSession) SetSessionState;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR FarmName, BSTR EnvName, TS_SB_SORT_BY sortByFieldId, BSTR sortyByPropName, uint32* pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR farmName, BSTR propertyName, VARIANT* pVarValue) GetFarmProperty;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, BSTR hostName) DeleteTarget;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbTarget* pTarget, BSTR PropertyName, VARIANT* pProperty) SetTargetPropertyWithVersionCheck;
			public function HRESULT(ITsSbResourcePluginStore *self, ITsSbEnvironment* pEnvironment, BSTR PropertyName, VARIANT* pProperty) SetEnvironmentPropertyWithVersionCheck;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR targetName, uint32 dwTimeout, IUnknown** ppContext) AcquireTargetLock;
			public function HRESULT(ITsSbResourcePluginStore *self, IUnknown* pContext) ReleaseTargetLock;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE NewState, TARGET_STATE TestState, TARGET_STATE* pInitState) TestAndSetServerState;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR serverName) SetServerWaitingToStart;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR PoolName, BSTR ServerFQDN, TARGET_STATE* pState) GetServerState;
			public function HRESULT(ITsSbResourcePluginStore *self, BSTR ServerFQDN, uint32 DrainMode) SetServerDrainMode;
		}
		[CRepr]
		public struct ITsSbFilterPluginStore : IUnknown
		{
			public const new Guid IID = .(0x85b44b0f, 0xed78, 0x413f, 0x97, 0x02, 0xfa, 0x6d, 0x3b, 0x5e, 0xe7, 0x55);
			
			public function HRESULT(ITsSbFilterPluginStore *self, ITsSbPropertySet* pPropertySet) SaveProperties;
			public function HRESULT(ITsSbFilterPluginStore *self, ITsSbPropertySet** ppPropertySet) EnumerateProperties;
			public function HRESULT(ITsSbFilterPluginStore *self, BSTR propertyName) DeleteProperties;
		}
		[CRepr]
		public struct ITsSbGlobalStore : IUnknown
		{
			public const new Guid IID = .(0x9ab60f7b, 0xbd72, 0x4d9f, 0x8a, 0x3a, 0xa0, 0xea, 0x55, 0x74, 0xe6, 0x35);
			
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR TargetName, BSTR FarmName, ITsSbTarget** ppTarget) QueryTarget;
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32 dwSessionId, BSTR TargetName, ITsSbSession** ppSession) QuerySessionBySessionId;
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32* pdwCount, SAFEARRAY** pVal) EnumerateFarms;
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR FarmName, BSTR EnvName, uint32* pdwCount, ITsSbTarget*** pVal) EnumerateTargets;
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, uint32* pdwCount, ITsSbEnvironment*** ppVal) EnumerateEnvironmentsByProvider;
			public function HRESULT(ITsSbGlobalStore *self, BSTR ProviderName, BSTR targetName, BSTR userName, BSTR userDomain, BSTR poolName, BSTR initialProgram, TSSESSION_STATE* pSessionState, uint32* pdwCount, ITsSbSession*** ppVal) EnumerateSessions;
			public function HRESULT(ITsSbGlobalStore *self, BSTR farmName, BSTR propertyName, VARIANT* pVarValue) GetFarmProperty;
		}
		[CRepr]
		public struct ITsSbProvisioningPluginNotifySink : IUnknown
		{
			public const new Guid IID = .(0xaca87a8e, 0x818b, 0x4581, 0xa0, 0x32, 0x49, 0xc3, 0xdf, 0xb9, 0xc7, 0x01);
			
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_INFO* pVmNotifyInfo) OnJobCreated;
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_ENTRY* pVmNotifyEntry, VM_NOTIFY_STATUS VmNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineStatusChanged;
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self, HRESULT ResultCode, BSTR ResultDescription) OnJobCompleted;
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self) OnJobCancelled;
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self, VM_NOTIFY_ENTRY* pVmNotifyEntry) LockVirtualMachine;
			public function HRESULT(ITsSbProvisioningPluginNotifySink *self, BSTR VmHost, VM_HOST_NOTIFY_STATUS VmHostNotifyStatus, HRESULT ErrorCode, BSTR ErrorDescr) OnVirtualMachineHostStatusChanged;
		}
		[CRepr]
		public struct ITsSbProvisioning : ITsSbPlugin
		{
			public const new Guid IID = .(0x2f6f0dbb, 0x9e4f, 0x462b, 0x9c, 0x3f, 0xfc, 0xcc, 0x3d, 0xcb, 0x62, 0x32);
			
			public function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) CreateVirtualMachines;
			public function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink, VM_PATCH_INFO* pVMPatchInfo) PatchVirtualMachines;
			public function HRESULT(ITsSbProvisioning *self, BSTR JobXmlString, BSTR JobGuid, ITsSbProvisioningPluginNotifySink* pSink) DeleteVirtualMachines;
			public function HRESULT(ITsSbProvisioning *self, BSTR JobGuid) CancelJob;
		}
		[CRepr]
		public struct ITsSbGenericNotifySink : IUnknown
		{
			public const new Guid IID = .(0x4c4c8c4f, 0x300b, 0x46ad, 0x91, 0x64, 0x84, 0x68, 0xa7, 0xe7, 0x56, 0x8c);
			
			public function HRESULT(ITsSbGenericNotifySink *self, HRESULT Status) OnCompleted;
			public function HRESULT(ITsSbGenericNotifySink *self, FILETIME* pftTimeout) GetWaitTimeout;
		}
		[CRepr]
		public struct ItsPubPlugin : IUnknown
		{
			public const new Guid IID = .(0x70c04b05, 0xf347, 0x412b, 0x82, 0x2f, 0x36, 0xc9, 0x9c, 0x54, 0xca, 0x45);
			
			public function HRESULT(ItsPubPlugin *self, PWSTR userID, int32* pceAppListSize, pluginResource** resourceList) GetResourceList;
			public function HRESULT(ItsPubPlugin *self, PWSTR alias, int32 flags, pluginResource* resource) GetResource;
			public function HRESULT(ItsPubPlugin *self, uint64* lastUpdateTime) GetCacheLastUpdateTime;
			public function HRESULT(ItsPubPlugin *self, BSTR* pVal) get_pluginName;
			public function HRESULT(ItsPubPlugin *self, BSTR* pVal) get_pluginVersion;
			public function HRESULT(ItsPubPlugin *self, uint32* resourceType, PWSTR resourceLocation, PWSTR endPointName, PWSTR userID, PWSTR alias) ResolveResource;
		}
		[CRepr]
		public struct ItsPubPlugin2 : ItsPubPlugin
		{
			public const new Guid IID = .(0xfa4ce418, 0xaad7, 0x4ec6, 0xba, 0xd1, 0x0a, 0x32, 0x1b, 0xa4, 0x65, 0xd5);
			
			public function HRESULT(ItsPubPlugin2 *self, PWSTR userID, int32* pceAppListSize, pluginResource2** resourceList) GetResource2List;
			public function HRESULT(ItsPubPlugin2 *self, PWSTR alias, int32 flags, pluginResource2* resource) GetResource2;
			public function HRESULT(ItsPubPlugin2 *self, PWSTR userId, PWSTR poolId, TSPUB_PLUGIN_PD_RESOLUTION_TYPE ePdResolutionType, TSPUB_PLUGIN_PD_ASSIGNMENT_TYPE* pPdAssignmentType, PWSTR endPointName) ResolvePersonalDesktop;
			public function HRESULT(ItsPubPlugin2 *self, PWSTR userId, PWSTR poolId, PWSTR endpointName) DeletePersonalDesktopAssignment;
		}
		[CRepr]
		public struct IWorkspaceResTypeRegistry : IDispatch
		{
			public const new Guid IID = .(0x1d428c79, 0x6e2e, 0x4351, 0xa3, 0x61, 0xc0, 0x40, 0x1a, 0x03, 0xa0, 0xba);
			
			public function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) AddResourceType;
			public function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension) DeleteResourceType;
			public function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, SAFEARRAY** psaFileExtensions) GetRegisteredFileExtensions;
			public function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR* pbstrLauncher) GetResourceTypeInfo;
			public function HRESULT(IWorkspaceResTypeRegistry *self, int16 fMachineWide, BSTR bstrFileExtension, BSTR bstrLauncher) ModifyResourceType;
		}
		[CRepr]
		public struct IWTSPlugin : IUnknown
		{
			public const new Guid IID = .(0xa1230201, 0x1439, 0x4e62, 0xa4, 0x14, 0x19, 0x0d, 0x0a, 0xc3, 0xd4, 0x0e);
			
			public function HRESULT(IWTSPlugin *self, IWTSVirtualChannelManager* pChannelMgr) Initialize;
			public function HRESULT(IWTSPlugin *self) Connected;
			public function HRESULT(IWTSPlugin *self, uint32 dwDisconnectCode) Disconnected;
			public function HRESULT(IWTSPlugin *self) Terminated;
		}
		[CRepr]
		public struct IWTSListener : IUnknown
		{
			public const new Guid IID = .(0xa1230206, 0x9a39, 0x4d58, 0x86, 0x74, 0xcd, 0xb4, 0xdf, 0xf4, 0xe7, 0x3b);
			
			public function HRESULT(IWTSListener *self, IPropertyBag** ppPropertyBag) GetConfiguration;
		}
		[CRepr]
		public struct IWTSListenerCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230203, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public function HRESULT(IWTSListenerCallback *self, IWTSVirtualChannel* pChannel, BSTR data, BOOL* pbAccept, IWTSVirtualChannelCallback** ppCallback) OnNewChannelConnection;
		}
		[CRepr]
		public struct IWTSVirtualChannelCallback : IUnknown
		{
			public const new Guid IID = .(0xa1230204, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public function HRESULT(IWTSVirtualChannelCallback *self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
			public function HRESULT(IWTSVirtualChannelCallback *self) OnClose;
		}
		[CRepr]
		public struct IWTSVirtualChannelManager : IUnknown
		{
			public const new Guid IID = .(0xa1230205, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public function HRESULT(IWTSVirtualChannelManager *self, uint8* pszChannelName, uint32 uFlags, IWTSListenerCallback* pListenerCallback, IWTSListener** ppListener) CreateListener;
		}
		[CRepr]
		public struct IWTSVirtualChannel : IUnknown
		{
			public const new Guid IID = .(0xa1230207, 0xd6a7, 0x11d8, 0xb9, 0xfd, 0x00, 0x0b, 0xdb, 0xd1, 0xf1, 0x98);
			
			public function HRESULT(IWTSVirtualChannel *self, uint32 cbSize, uint8* pBuffer, IUnknown* pReserved) Write;
			public function HRESULT(IWTSVirtualChannel *self) Close;
		}
		[CRepr]
		public struct IWTSPluginServiceProvider : IUnknown
		{
			public const new Guid IID = .(0xd3e07363, 0x087c, 0x476c, 0x86, 0xa7, 0xdb, 0xb1, 0x5f, 0x46, 0xdd, 0xb4);
			
			public function HRESULT(IWTSPluginServiceProvider *self, Guid ServiceId, IUnknown** ppunkObject) GetService;
		}
		[CRepr]
		public struct IWTSBitmapRenderer : IUnknown
		{
			public const new Guid IID = .(0x5b7acc97, 0xf3c9, 0x46f7, 0x8c, 0x5b, 0xfa, 0x68, 0x5d, 0x34, 0x41, 0xb1);
			
			public function HRESULT(IWTSBitmapRenderer *self, Guid imageFormat, uint32 dwWidth, uint32 dwHeight, int32 cbStride, uint32 cbImageBuffer, uint8* pImageBuffer) Render;
			public function HRESULT(IWTSBitmapRenderer *self, BITMAP_RENDERER_STATISTICS* pStatistics) GetRendererStatistics;
			public function HRESULT(IWTSBitmapRenderer *self) RemoveMapping;
		}
		[CRepr]
		public struct IWTSBitmapRendererCallback : IUnknown
		{
			public const new Guid IID = .(0xd782928e, 0xfe4e, 0x4e77, 0xae, 0x90, 0x9c, 0xd0, 0xb3, 0xe3, 0xb3, 0x53);
			
			public function HRESULT(IWTSBitmapRendererCallback *self, RECT rcNewSize) OnTargetSizeChanged;
		}
		[CRepr]
		public struct IWTSBitmapRenderService : IUnknown
		{
			public const new Guid IID = .(0xea326091, 0x05fe, 0x40c1, 0xb4, 0x9c, 0x3d, 0x2e, 0xf4, 0x62, 0x6a, 0x0e);
			
			public function HRESULT(IWTSBitmapRenderService *self, uint64 mappingId, IWTSBitmapRendererCallback* pMappedRendererCallback, IWTSBitmapRenderer** ppMappedRenderer) GetMappedRenderer;
		}
		[CRepr]
		public struct IWRdsGraphicsChannelEvents : IUnknown
		{
			public const new Guid IID = .(0x67f2368c, 0xd674, 0x4fae, 0x66, 0xa5, 0xd2, 0x06, 0x28, 0xa6, 0x40, 0xd2);
			
			public function HRESULT(IWRdsGraphicsChannelEvents *self, uint32 cbSize, uint8* pBuffer) OnDataReceived;
			public function HRESULT(IWRdsGraphicsChannelEvents *self) OnClose;
			public function HRESULT(IWRdsGraphicsChannelEvents *self, HRESULT OpenResult, IUnknown* pOpenContext) OnChannelOpened;
			public function HRESULT(IWRdsGraphicsChannelEvents *self, IUnknown* pWriteContext, BOOL bCancelled, uint8* pBuffer, uint32 cbBuffer) OnDataSent;
			public function HRESULT(IWRdsGraphicsChannelEvents *self, uint32 bandwidth, uint32 RTT, uint64 lastSentByteIndex) OnMetricsUpdate;
		}
		[CRepr]
		public struct IWRdsGraphicsChannel : IUnknown
		{
			public const new Guid IID = .(0x684b7a0b, 0xedff, 0x43ad, 0xd5, 0xa2, 0x4a, 0x8d, 0x53, 0x88, 0xf4, 0x01);
			
			public function HRESULT(IWRdsGraphicsChannel *self, uint32 cbSize, uint8* pBuffer, IUnknown* pContext) Write;
			public function HRESULT(IWRdsGraphicsChannel *self) Close;
			public function HRESULT(IWRdsGraphicsChannel *self, IWRdsGraphicsChannelEvents* pChannelEvents, IUnknown* pOpenContext) Open;
		}
		[CRepr]
		public struct IWRdsGraphicsChannelManager : IUnknown
		{
			public const new Guid IID = .(0x0fd57159, 0xe83e, 0x476a, 0xa8, 0xb9, 0x4a, 0x79, 0x76, 0xe7, 0x1e, 0x18);
			
			public function HRESULT(IWRdsGraphicsChannelManager *self, uint8* pszChannelName, WRdsGraphicsChannelType channelType, IWRdsGraphicsChannel** ppVirtualChannel) CreateChannel;
		}
		[CRepr]
		public struct IWTSProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xf9eaf6cc, 0xed79, 0x4f01, 0x82, 0x1d, 0x1f, 0x88, 0x1b, 0x9f, 0x66, 0xcc);
			
			public function HRESULT(IWTSProtocolManager *self, PWSTR wszListenerName, IWTSProtocolListener** pProtocolListener) CreateListener;
			public function HRESULT(IWTSProtocolManager *self, WTS_SERVICE_STATE* pTSServiceStateChange) NotifyServiceStateChange;
			public function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStart;
			public function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStop;
			public function HRESULT(IWTSProtocolManager *self, WTS_SESSION_ID* SessionId, uint32 EventId) NotifySessionStateChange;
		}
		[CRepr]
		public struct IWTSProtocolListener : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x45f0, 0x4394, 0x8f, 0x69, 0x32, 0xb2, 0xbc, 0x0e, 0xf4, 0xca);
			
			public function HRESULT(IWTSProtocolListener *self, IWTSProtocolListenerCallback* pCallback) StartListen;
			public function HRESULT(IWTSProtocolListener *self) StopListen;
		}
		[CRepr]
		public struct IWTSProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x1a2d, 0x4de2, 0x97, 0xde, 0x4a, 0x35, 0xf2, 0x60, 0xf0, 0xb3);
			
			public function HRESULT(IWTSProtocolListenerCallback *self, IWTSProtocolConnection* pConnection, IWTSProtocolConnectionCallback** pCallback) OnConnected;
		}
		[CRepr]
		public struct IWTSProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x9095, 0x4648, 0x98, 0xbf, 0xef, 0x81, 0xc9, 0x14, 0x03, 0x2d);
			
			public function HRESULT(IWTSProtocolConnection *self, IWTSProtocolLogonErrorRedirector** ppLogonErrorRedir) GetLogonErrorRedirector;
			public function HRESULT(IWTSProtocolConnection *self, WTS_POLICY_DATA* pPolicyData) SendPolicyData;
			public function HRESULT(IWTSProtocolConnection *self) AcceptConnection;
			public function HRESULT(IWTSProtocolConnection *self, WTS_CLIENT_DATA* pClientData) GetClientData;
			public function HRESULT(IWTSProtocolConnection *self, WTS_USER_CREDENTIAL* pUserCreds) GetUserCredentials;
			public function HRESULT(IWTSProtocolConnection *self, IWTSProtocolLicenseConnection** ppLicenseConnection) GetLicenseConnection;
			public function HRESULT(IWTSProtocolConnection *self, WTS_SESSION_ID* SessionId) AuthenticateClientToSession;
			public function HRESULT(IWTSProtocolConnection *self, WTS_SESSION_ID* SessionId) NotifySessionId;
			public function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle, HANDLE_PTR* pVideoHandle) GetProtocolHandles;
			public function HRESULT(IWTSProtocolConnection *self, uint32 SessionId) ConnectNotify;
			public function HRESULT(IWTSProtocolConnection *self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
			public function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) SessionArbitrationEnumeration;
			public function HRESULT(IWTSProtocolConnection *self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId) LogonNotify;
			public function HRESULT(IWTSProtocolConnection *self, WTS_POLICY_DATA* pPolicyData, WTS_USER_DATA* pClientData) GetUserData;
			public function HRESULT(IWTSProtocolConnection *self) DisconnectNotify;
			public function HRESULT(IWTSProtocolConnection *self) Close;
			public function HRESULT(IWTSProtocolConnection *self, WTS_PROTOCOL_STATUS* pProtocolStatus) GetProtocolStatus;
			public function HRESULT(IWTSProtocolConnection *self, uint64* pLastInputTime) GetLastInputTime;
			public function HRESULT(IWTSProtocolConnection *self, uint32 ulError) SetErrorInfo;
			public function HRESULT(IWTSProtocolConnection *self, uint32 Frequency, uint32 Duration) SendBeep;
			public function HRESULT(IWTSProtocolConnection *self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) CreateVirtualChannel;
			public function HRESULT(IWTSProtocolConnection *self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
			public function HRESULT(IWTSProtocolConnection *self, IWTSProtocolShadowConnection** ppShadowConnection) GetShadowConnection;
		}
		[CRepr]
		public struct IWTSProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x75eb, 0x41fe, 0xb4, 0xfb, 0xe0, 0x86, 0x24, 0x2a, 0xfa, 0x0f);
			
			public function HRESULT(IWTSProtocolConnectionCallback *self) OnReady;
			public function HRESULT(IWTSProtocolConnectionCallback *self, uint32 Reason, uint32 Source) BrokenConnection;
			public function HRESULT(IWTSProtocolConnectionCallback *self) StopScreenUpdates;
			public function HRESULT(IWTSProtocolConnectionCallback *self, WTS_SMALL_RECT* rect) RedrawWindow;
			public function HRESULT(IWTSProtocolConnectionCallback *self, WTS_DISPLAY_IOCTL* DisplayIOCtl) DisplayIOCtl;
		}
		[CRepr]
		public struct IWTSProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0xee3b0c14, 0x37fb, 0x456b, 0xba, 0xb3, 0x6d, 0x6c, 0xd5, 0x1e, 0x13, 0xbf);
			
			public function HRESULT(IWTSProtocolShadowConnection *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWTSProtocolShadowCallback* pShadowCallback) Start;
			public function HRESULT(IWTSProtocolShadowConnection *self) Stop;
			public function HRESULT(IWTSProtocolShadowConnection *self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
		}
		[CRepr]
		public struct IWTSProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0x503a2504, 0xaae5, 0x4ab1, 0x93, 0xe0, 0x6d, 0x1c, 0x4b, 0xc6, 0xf7, 0x1a);
			
			public function HRESULT(IWTSProtocolShadowCallback *self) StopShadow;
			public function HRESULT(IWTSProtocolShadowCallback *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
		}
		[CRepr]
		public struct IWTSProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x23083765, 0x178c, 0x4079, 0x8e, 0x4a, 0xfe, 0xa6, 0x49, 0x6a, 0x4d, 0x70);
			
			public function HRESULT(IWTSProtocolLicenseConnection *self, WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) RequestLicensingCapabilities;
			public function HRESULT(IWTSProtocolLicenseConnection *self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
			public function HRESULT(IWTSProtocolLicenseConnection *self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) RequestClientLicense;
			public function HRESULT(IWTSProtocolLicenseConnection *self, uint32 ulComplete) ProtocolComplete;
		}
		[CRepr]
		public struct IWTSProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0xfd9b61a7, 0x2916, 0x4627, 0x8d, 0xee, 0x43, 0x28, 0x71, 0x1a, 0xd6, 0xcb);
			
			public function HRESULT(IWTSProtocolLogonErrorRedirector *self) OnBeginPainting;
			public function HRESULT(IWTSProtocolLogonErrorRedirector *self, PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectStatus;
			public function HRESULT(IWTSProtocolLogonErrorRedirector *self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectMessage;
			public function HRESULT(IWTSProtocolLogonErrorRedirector *self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectLogonError;
		}
		[CRepr]
		public struct IWRdsProtocolSettings : IUnknown
		{
			public const new Guid IID = .(0x654a5a6a, 0x2550, 0x47eb, 0xb6, 0xf7, 0xeb, 0xd6, 0x37, 0x47, 0x52, 0x65);
			
			public function HRESULT(IWRdsProtocolSettings *self, WRDS_SETTING_TYPE WRdsSettingType, WRDS_SETTING_LEVEL WRdsSettingLevel, WRDS_SETTINGS* pWRdsSettings) GetSettings;
			public function HRESULT(IWRdsProtocolSettings *self, WRDS_SETTINGS* pWRdsSettings, WRDS_CONNECTION_SETTING_LEVEL WRdsConnectionSettingLevel, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) MergeSettings;
		}
		[CRepr]
		public struct IWRdsProtocolManager : IUnknown
		{
			public const new Guid IID = .(0xdc796967, 0x3abb, 0x40cd, 0xa4, 0x46, 0x10, 0x52, 0x76, 0xb5, 0x89, 0x50);
			
			public function HRESULT(IWRdsProtocolManager *self, IWRdsProtocolSettings* pIWRdsSettings, WRDS_SETTINGS* pWRdsSettings) Initialize;
			public function HRESULT(IWRdsProtocolManager *self, PWSTR wszListenerName, IWRdsProtocolListener** pProtocolListener) CreateListener;
			public function HRESULT(IWRdsProtocolManager *self, WTS_SERVICE_STATE* pTSServiceStateChange) NotifyServiceStateChange;
			public function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStart;
			public function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId) NotifySessionOfServiceStop;
			public function HRESULT(IWRdsProtocolManager *self, WTS_SESSION_ID* SessionId, uint32 EventId) NotifySessionStateChange;
			public function HRESULT(IWRdsProtocolManager *self, WRDS_SETTINGS* pWRdsSettings) NotifySettingsChange;
			public function HRESULT(IWRdsProtocolManager *self) Uninitialize;
		}
		[CRepr]
		public struct IWRdsProtocolListener : IUnknown
		{
			public const new Guid IID = .(0xfcbc131b, 0xc686, 0x451d, 0xa7, 0x73, 0xe2, 0x79, 0xe2, 0x30, 0xf5, 0x40);
			
			public function HRESULT(IWRdsProtocolListener *self, WRDS_LISTENER_SETTING_LEVEL WRdsListenerSettingLevel, WRDS_LISTENER_SETTINGS* pWRdsListenerSettings) GetSettings;
			public function HRESULT(IWRdsProtocolListener *self, IWRdsProtocolListenerCallback* pCallback) StartListen;
			public function HRESULT(IWRdsProtocolListener *self) StopListen;
		}
		[CRepr]
		public struct IWRdsProtocolListenerCallback : IUnknown
		{
			public const new Guid IID = .(0x3ab27e5b, 0x4449, 0x4dc1, 0xb7, 0x4a, 0x91, 0x62, 0x1d, 0x4f, 0xe9, 0x84);
			
			public function HRESULT(IWRdsProtocolListenerCallback *self, IWRdsProtocolConnection* pConnection, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings, IWRdsProtocolConnectionCallback** pCallback) OnConnected;
		}
		[CRepr]
		public struct IWRdsProtocolConnection : IUnknown
		{
			public const new Guid IID = .(0x324ed94f, 0xfdaf, 0x4ff6, 0x81, 0xa8, 0x42, 0xab, 0xe7, 0x55, 0x83, 0x0b);
			
			public function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolLogonErrorRedirector** ppLogonErrorRedir) GetLogonErrorRedirector;
			public function HRESULT(IWRdsProtocolConnection *self) AcceptConnection;
			public function HRESULT(IWRdsProtocolConnection *self, WTS_CLIENT_DATA* pClientData) GetClientData;
			public function HRESULT(IWRdsProtocolConnection *self, uint32* pNumMonitors, uint32* pPrimaryMonitor) GetClientMonitorData;
			public function HRESULT(IWRdsProtocolConnection *self, WTS_USER_CREDENTIAL* pUserCreds) GetUserCredentials;
			public function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolLicenseConnection** ppLicenseConnection) GetLicenseConnection;
			public function HRESULT(IWRdsProtocolConnection *self, WTS_SESSION_ID* SessionId) AuthenticateClientToSession;
			public function HRESULT(IWRdsProtocolConnection *self, WTS_SESSION_ID* SessionId, HANDLE_PTR SessionHandle) NotifySessionId;
			public function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR* pKeyboardHandle, HANDLE_PTR* pMouseHandle, HANDLE_PTR* pBeepHandle) GetInputHandles;
			public function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR* pVideoHandle) GetVideoHandle;
			public function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId) ConnectNotify;
			public function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId, HANDLE_PTR UserToken, PWSTR pDomainName, PWSTR pUserName) IsUserAllowedToLogon;
			public function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR hUserToken, BOOL bSingleSessionPerUserEnabled, uint32* pSessionIdArray, uint32* pdwSessionIdentifierCount) SessionArbitrationEnumeration;
			public function HRESULT(IWRdsProtocolConnection *self, HANDLE_PTR hClientToken, PWSTR wszUserName, PWSTR wszDomainName, WTS_SESSION_ID* SessionId, WRDS_CONNECTION_SETTINGS* pWRdsConnectionSettings) LogonNotify;
			public function HRESULT(IWRdsProtocolConnection *self, uint32 DisconnectReason) PreDisconnect;
			public function HRESULT(IWRdsProtocolConnection *self) DisconnectNotify;
			public function HRESULT(IWRdsProtocolConnection *self) Close;
			public function HRESULT(IWRdsProtocolConnection *self, WTS_PROTOCOL_STATUS* pProtocolStatus) GetProtocolStatus;
			public function HRESULT(IWRdsProtocolConnection *self, uint64* pLastInputTime) GetLastInputTime;
			public function HRESULT(IWRdsProtocolConnection *self, uint32 ulError) SetErrorInfo;
			public function HRESULT(IWRdsProtocolConnection *self, PSTR szEndpointName, BOOL bStatic, uint32 RequestedPriority, uint* phChannel) CreateVirtualChannel;
			public function HRESULT(IWRdsProtocolConnection *self, Guid QueryType, uint32 ulNumEntriesIn, uint32 ulNumEntriesOut, WTS_PROPERTY_VALUE* pPropertyEntriesIn, WTS_PROPERTY_VALUE* pPropertyEntriesOut) QueryProperty;
			public function HRESULT(IWRdsProtocolConnection *self, IWRdsProtocolShadowConnection** ppShadowConnection) GetShadowConnection;
			public function HRESULT(IWRdsProtocolConnection *self, uint32 SessionId) NotifyCommandProcessCreated;
		}
		[CRepr]
		public struct IWRdsProtocolConnectionCallback : IUnknown
		{
			public const new Guid IID = .(0xf1d70332, 0xd070, 0x4ef1, 0xa0, 0x88, 0x78, 0x31, 0x35, 0x36, 0xc2, 0xd6);
			
			public function HRESULT(IWRdsProtocolConnectionCallback *self) OnReady;
			public function HRESULT(IWRdsProtocolConnectionCallback *self, uint32 Reason, uint32 Source) BrokenConnection;
			public function HRESULT(IWRdsProtocolConnectionCallback *self) StopScreenUpdates;
			public function HRESULT(IWRdsProtocolConnectionCallback *self, WTS_SMALL_RECT* rect) RedrawWindow;
			public function HRESULT(IWRdsProtocolConnectionCallback *self, uint32* pConnectionId) GetConnectionId;
		}
		[CRepr]
		public struct IWRdsProtocolShadowConnection : IUnknown
		{
			public const new Guid IID = .(0x9ae85ce6, 0xcade, 0x4548, 0x8f, 0xeb, 0x99, 0x01, 0x65, 0x97, 0xf6, 0x0a);
			
			public function HRESULT(IWRdsProtocolShadowConnection *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8 HotKeyVk, uint16 HotkeyModifiers, IWRdsProtocolShadowCallback* pShadowCallback) Start;
			public function HRESULT(IWRdsProtocolShadowConnection *self) Stop;
			public function HRESULT(IWRdsProtocolShadowConnection *self, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) DoTarget;
		}
		[CRepr]
		public struct IWRdsProtocolShadowCallback : IUnknown
		{
			public const new Guid IID = .(0xe0667ce0, 0x0372, 0x40d6, 0xad, 0xb2, 0xa0, 0xf3, 0x32, 0x26, 0x74, 0xd6);
			
			public function HRESULT(IWRdsProtocolShadowCallback *self) StopShadow;
			public function HRESULT(IWRdsProtocolShadowCallback *self, PWSTR pTargetServerName, uint32 TargetSessionId, uint8* pParam1, uint32 Param1Size, uint8* pParam2, uint32 Param2Size, uint8* pParam3, uint32 Param3Size, uint8* pParam4, uint32 Param4Size, PWSTR pClientName) InvokeTargetShadow;
		}
		[CRepr]
		public struct IWRdsProtocolLicenseConnection : IUnknown
		{
			public const new Guid IID = .(0x1d6a145f, 0xd095, 0x4424, 0x95, 0x7a, 0x40, 0x7f, 0xae, 0x82, 0x2d, 0x84);
			
			public function HRESULT(IWRdsProtocolLicenseConnection *self, WTS_LICENSE_CAPABILITIES* ppLicenseCapabilities, uint32* pcbLicenseCapabilities) RequestLicensingCapabilities;
			public function HRESULT(IWRdsProtocolLicenseConnection *self, uint8* pClientLicense, uint32 cbClientLicense) SendClientLicense;
			public function HRESULT(IWRdsProtocolLicenseConnection *self, uint8* Reserve1, uint32 Reserve2, uint8* ppClientLicense, uint32* pcbClientLicense) RequestClientLicense;
			public function HRESULT(IWRdsProtocolLicenseConnection *self, uint32 ulComplete) ProtocolComplete;
		}
		[CRepr]
		public struct IWRdsProtocolLogonErrorRedirector : IUnknown
		{
			public const new Guid IID = .(0x519fe83b, 0x142a, 0x4120, 0xa3, 0xd5, 0xa4, 0x05, 0xd3, 0x15, 0x28, 0x1a);
			
			public function HRESULT(IWRdsProtocolLogonErrorRedirector *self) OnBeginPainting;
			public function HRESULT(IWRdsProtocolLogonErrorRedirector *self, PWSTR pszMessage, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectStatus;
			public function HRESULT(IWRdsProtocolLogonErrorRedirector *self, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectMessage;
			public function HRESULT(IWRdsProtocolLogonErrorRedirector *self, int32 ntsStatus, int32 ntsSubstatus, PWSTR pszCaption, PWSTR pszMessage, uint32 uType, WTS_LOGON_ERROR_REDIRECTOR_RESPONSE* pResponse) RedirectLogonError;
		}
		[CRepr]
		public struct IWRdsWddmIddProps : IUnknown
		{
			public const new Guid IID = .(0x1382df4d, 0xa289, 0x43d1, 0xa1, 0x84, 0x14, 0x47, 0x26, 0xf9, 0xaf, 0x90);
			
			public function HRESULT(IWRdsWddmIddProps *self, char16* pDisplayDriverHardwareId, uint32 Count) GetHardwareId;
			public function HRESULT(IWRdsWddmIddProps *self, uint32 SessionId, HANDLE_PTR DriverHandle) OnDriverLoad;
			public function HRESULT(IWRdsWddmIddProps *self, uint32 SessionId) OnDriverUnload;
			public function HRESULT(IWRdsWddmIddProps *self, BOOL Enabled) EnableWddmIdd;
		}
		[CRepr]
		public struct IWRdsProtocolConnectionSettings : IUnknown
		{
			public const new Guid IID = .(0x83fcf5d3, 0xf6f4, 0xea94, 0x9c, 0xd2, 0x32, 0xf2, 0x80, 0xe1, 0xe5, 0x10);
			
			public function HRESULT(IWRdsProtocolConnectionSettings *self, Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesIn) SetConnectionSetting;
			public function HRESULT(IWRdsProtocolConnectionSettings *self, Guid PropertyID, WTS_PROPERTY_VALUE* pPropertyEntriesOut) GetConnectionSetting;
		}
		[CRepr]
		public struct IWRdsEnhancedFastReconnectArbitrator : IUnknown
		{
			public const new Guid IID = .(0x5718ae9b, 0x47f2, 0x499f, 0xb6, 0x34, 0xd8, 0x17, 0x5b, 0xd5, 0x11, 0x31);
			
			public function HRESULT(IWRdsEnhancedFastReconnectArbitrator *self, int32* pSessionIdArray, uint32 dwSessionCount, int32* pResultSessionId) GetSessionForEnhancedFastReconnect;
		}
		[CRepr]
		public struct IRemoteDesktopClientSettings : IDispatch
		{
			public const new Guid IID = .(0x48a0f2a7, 0x2713, 0x431f, 0xbb, 0xac, 0x6f, 0x45, 0x58, 0xe7, 0xd6, 0x4d);
			
			public function HRESULT(IRemoteDesktopClientSettings *self, BSTR rdpFileContents) ApplySettings;
			public function HRESULT(IRemoteDesktopClientSettings *self, BSTR* rdpFileContents) RetrieveSettings;
			public function HRESULT(IRemoteDesktopClientSettings *self, BSTR propertyName, VARIANT* value) GetRdpProperty;
			public function HRESULT(IRemoteDesktopClientSettings *self, BSTR propertyName, VARIANT value) SetRdpProperty;
		}
		[CRepr]
		public struct IRemoteDesktopClientActions : IDispatch
		{
			public const new Guid IID = .(0x7d54bc4e, 0x1028, 0x45d4, 0x8b, 0x0a, 0xb9, 0xb6, 0xbf, 0xfb, 0xa1, 0x76);
			
			public function HRESULT(IRemoteDesktopClientActions *self) SuspendScreenUpdates;
			public function HRESULT(IRemoteDesktopClientActions *self) ResumeScreenUpdates;
			public function HRESULT(IRemoteDesktopClientActions *self, RemoteActionType remoteAction) ExecuteRemoteAction;
			public function HRESULT(IRemoteDesktopClientActions *self, SnapshotEncodingType snapshotEncoding, SnapshotFormatType snapshotFormat, uint32 snapshotWidth, uint32 snapshotHeight, BSTR* snapshotData) GetSnapshot;
		}
		[CRepr]
		public struct IRemoteDesktopClientTouchPointer : IDispatch
		{
			public const new Guid IID = .(0x260ec22d, 0x8cbc, 0x44b5, 0x9e, 0x88, 0x2a, 0x37, 0xf6, 0xc9, 0x3a, 0xe9);
			
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, int16 enabled) put_Enabled;
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, int16* enabled) get_Enabled;
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, int16 eventsEnabled) put_EventsEnabled;
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, int16* eventsEnabled) get_EventsEnabled;
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, uint32 pointerSpeed) put_PointerSpeed;
			public function HRESULT(IRemoteDesktopClientTouchPointer *self, uint32* pointerSpeed) get_PointerSpeed;
		}
		[CRepr]
		public struct IRemoteDesktopClient : IDispatch
		{
			public const new Guid IID = .(0x57d25668, 0x625a, 0x4905, 0xbe, 0x4e, 0x30, 0x4c, 0xaa, 0x13, 0xf8, 0x9c);
			
			public function HRESULT(IRemoteDesktopClient *self) Connect;
			public function HRESULT(IRemoteDesktopClient *self) Disconnect;
			public function HRESULT(IRemoteDesktopClient *self, uint32 width, uint32 height) Reconnect;
			public function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientSettings** settings) get_Settings;
			public function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientActions** actions) get_Actions;
			public function HRESULT(IRemoteDesktopClient *self, IRemoteDesktopClientTouchPointer** touchPointer) get_TouchPointer;
			public function HRESULT(IRemoteDesktopClient *self, BSTR serverName) DeleteSavedCredentials;
			public function HRESULT(IRemoteDesktopClient *self, uint32 width, uint32 height) UpdateSessionDisplaySettings;
			public function HRESULT(IRemoteDesktopClient *self, BSTR eventName, IDispatch* callback) attachEvent;
			public function HRESULT(IRemoteDesktopClient *self, BSTR eventName, IDispatch* callback) detachEvent;
		}
		[CRepr]
		public struct IRemoteSystemAdditionalInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xeeaa3d5f, 0xec63, 0x4d27, 0xaf, 0x38, 0xe8, 0x6b, 0x1d, 0x72, 0x92, 0xcb);
			
			public function HRESULT(IRemoteSystemAdditionalInfoProvider *self, HSTRING* deduplicationId, Guid* riid, void** mapView) GetAdditionalInfo;
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
