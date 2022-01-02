using System;

// namespace System.ParentalControls
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 ARRAY_SEP_CHAR = 9;
		public const uint32 WPCCHANNEL = 16;
		public const uint32 WPC_SETTINGS_LOCATE = 20;
		public const uint32 WPC_SETTINGS_MODIFY = 21;
		public const uint32 WPC_APP_LAUNCH = 22;
		public const uint32 WPC_SYSTEM = 23;
		public const uint32 WPC_WEB = 24;
		public const uint32 WPCPROV_TASK_SettingChange = 1;
		public const uint32 WPCPROV_TASK_GameStart = 2;
		public const uint32 WPCPROV_TASK_UrlVisit = 3;
		public const uint32 WPCPROV_TASK_EmailReceived = 4;
		public const uint32 WPCPROV_TASK_EmailSent = 5;
		public const uint32 WPCPROV_TASK_MediaPlayback = 6;
		public const uint32 WPCPROV_TASK_IMInvitation = 7;
		public const uint32 WPCPROV_TASK_IMJoin = 8;
		public const uint32 WPCPROV_TASK_IMLeave = 9;
		public const uint32 WPCPROV_TASK_FileDownload = 10;
		public const uint32 WPCPROV_TASK_IMFeature = 11;
		public const uint32 WPCPROV_TASK_Custom = 13;
		public const uint32 WPCPROV_TASK_EmailContact = 14;
		public const uint32 WPCPROV_TASK_IMContact = 15;
		public const uint32 WPCPROV_TASK_AppBlocked = 16;
		public const uint32 WPCPROV_TASK_AppOverride = 17;
		public const uint32 WPCPROV_TASK_WebOverride = 18;
		public const uint32 WPCPROV_TASK_WebsiteVisit = 19;
		public const uint32 WPCPROV_TASK_Application = 20;
		public const uint32 WPCPROV_TASK_ComputerUsage = 21;
		public const uint32 WPCPROV_TASK_ContentUsage = 22;
		public const uint32 WPCPROV_KEYWORD_WPC = 16;
		public const uint32 WPCPROV_KEYWORD_ThirdParty = 32;
		public const uint32 WPCEVENT_SYS_SETTINGCHANGE_value = 1;
		public const uint32 WPCEVENT_GAME_START_value = 2;
		public const uint32 WPCEVENT_WEB_URLVISIT_value = 3;
		public const uint32 WPCEVENT_EMAIL_RECEIVED_value = 4;
		public const uint32 WPCEVENT_EMAIL_SENT_value = 5;
		public const uint32 WPCEVENT_MEDIA_PLAYBACK_value = 6;
		public const uint32 WPCEVENT_IM_INVITATION_value = 7;
		public const uint32 WPCEVENT_IM_JOIN_value = 8;
		public const uint32 WPCEVENT_IM_LEAVE_value = 9;
		public const uint32 WPCEVENT_WEB_FILEDOWNLOAD_value = 10;
		public const uint32 WPCEVENT_IM_FEATURE_value = 11;
		public const uint32 WPCEVENT_CUSTOM_value = 13;
		public const uint32 WPCEVENT_EMAIL_CONTACT_value = 14;
		public const uint32 WPCEVENT_IM_CONTACT_value = 15;
		public const uint32 WPCEVENT_SYSTEM_APPBLOCKED_value = 16;
		public const uint32 WPCEVENT_APPOVERRIDE_value = 17;
		public const uint32 WPCEVENT_WEBOVERRIDE_value = 18;
		public const uint32 WPCEVENT_WEB_WEBSITEVISIT_value = 19;
		public const uint32 WPCEVENT_APPLICATION_value = 20;
		public const uint32 WPCEVENT_COMPUTERUSAGE_value = 21;
		public const uint32 WPCEVENT_CONTENTUSAGE_value = 22;
		public const int32 MSG_Keyword_WPC = 268435461;
		public const int32 MSG_Keyword_ThirdParty = 268435462;
		public const int32 MSG_Opcode_Locate = 805306388;
		public const int32 MSG_Opcode_Modify = 805306389;
		public const int32 MSG_Opcode_Launch = 805306390;
		public const int32 MSG_Opcode_System = 805306391;
		public const int32 MSG_Opcode_Web = 805306392;
		public const int32 MSG_Task_SettingChange = 1879048193;
		public const int32 MSG_Task_GameStart = 1879048194;
		public const int32 MSG_Task_UrlVisit = 1879048195;
		public const int32 MSG_Task_EmailReceived = 1879048196;
		public const int32 MSG_Task_EmailSent = 1879048197;
		public const int32 MSG_Task_MediaPlayback = 1879048198;
		public const int32 MSG_Task_IMInvitation = 1879048199;
		public const int32 MSG_Task_IMJoin = 1879048200;
		public const int32 MSG_Task_IMLeave = 1879048201;
		public const int32 MSG_Task_FileDownload = 1879048202;
		public const int32 MSG_Task_IMFeature = 1879048203;
		public const int32 MSG_Task_Custom = 1879048205;
		public const int32 MSG_Task_EmailContact = 1879048206;
		public const int32 MSG_Task_IMContact = 1879048207;
		public const int32 MSG_Task_AppBlocked = 1879048208;
		public const int32 MSG_Task_AppOverride = 1879048209;
		public const int32 MSG_Task_WebOverride = 1879048210;
		public const int32 MSG_Task_WebsiteVisit = 1879048211;
		public const int32 MSG_Task_Application = 1879048212;
		public const int32 MSG_Task_ComputerUsage = 1879048213;
		public const int32 MSG_Task_ContentUsage = 1879048214;
		public const int32 MSG_Publisher_Name = -1879048191;
		public const int32 MSG_Event_SettingChange = -1342177279;
		public const int32 MSG_Event_GameStart = -1342177278;
		public const int32 MSG_Event_UrlVisit = -1342177277;
		public const int32 MSG_Event_EmailReceived = -1342177276;
		public const int32 MSG_Event_EmailSent = -1342177275;
		public const int32 MSG_Event_MediaPlayback = -1342177274;
		public const int32 MSG_Event_IMInvitation = -1342177273;
		public const int32 MSG_Event_IMJoin = -1342177272;
		public const int32 MSG_Event_IMLeave = -1342177271;
		public const int32 MSG_Event_FileDownload = -1342177270;
		public const int32 MSG_Event_IMFeature = -1342177269;
		public const int32 MSG_Event_Custom = -1342177267;
		public const int32 MSG_Event_EmailContact = -1342177266;
		public const int32 MSG_Event_IMContact = -1342177265;
		public const int32 MSG_Event_AppBlocked = -1342177264;
		public const int32 MSG_Event_AppOverride = -1342177263;
		public const int32 MSG_Event_WebOverride = -1342177262;
		public const int32 MSG_Event_WebsiteVisit = -1342177261;
		public const int32 MSG_Event_Application = -1342177260;
		public const int32 MSG_Event_ComputerUsage = -1342177259;
		public const int32 MSG_Event_ContentUsage = -1342177258;
		public const uint32 FACILITY_WPC = 2457;
		public const Guid WPCPROV = .(0x01090065, 0xb467, 0x4503, 0x9b, 0x28, 0x53, 0x37, 0x66, 0x76, 0x10, 0x87);
		
		// --- Enums ---
		
		public enum WPCFLAG_OVERRIDE : int32
		{
			APPLICATION = 1,
		}
		public enum WPCFLAG_RESTRICTION : int32
		{
			NO_RESTRICTION = 0,
			LOGGING_REQUIRED = 1,
			WEB_FILTERED = 2,
			HOURS_RESTRICTED = 4,
			GAMES_BLOCKED = 8,
			APPS_RESTRICTED = 16,
			TIME_ALLOWANCE_RESTRICTED = 32,
			GAMES_RESTRICTED = 64,
		}
		public enum WPCFLAG_WEB_SETTING : int32
		{
			NOTBLOCKED = 0,
			DOWNLOADSBLOCKED = 1,
		}
		public enum WPCFLAG_VISIBILITY : int32
		{
			VISIBLE = 0,
			HIDDEN = 1,
		}
		public enum WPCFLAG_ISBLOCKED : int32
		{
			NOTBLOCKED = 0,
			IMBLOCKED = 1,
			EMAILBLOCKED = 2,
			MEDIAPLAYBACKBLOCKED = 4,
			WEBBLOCKED = 8,
			GAMESBLOCKED = 16,
			CONTACTBLOCKED = 32,
			FEATUREBLOCKED = 64,
			DOWNLOADBLOCKED = 128,
			RATINGBLOCKED = 256,
			DESCRIPTORBLOCKED = 512,
			EXPLICITBLOCK = 1024,
			BADPASS = 2048,
			MAXHOURS = 4096,
			SPECHOURS = 8192,
			SETTINGSCHANGEBLOCKED = 16384,
			ATTACHMENTBLOCKED = 32768,
			SENDERBLOCKED = 65536,
			RECEIVERBLOCKED = 131072,
			NOTEXPLICITLYALLOWED = 262144,
			NOTINLIST = 524288,
			CATEGORYBLOCKED = 1048576,
			CATEGORYNOTINLIST = 2097152,
			NOTKIDS = 4194304,
			UNRATED = 8388608,
			NOACCESS = 16777216,
			INTERNALERROR = -1,
		}
		public enum WPCFLAG_LOGOFF_TYPE : int32
		{
			LOGOUT = 0,
			RESTART = 1,
			SHUTDOWN = 2,
			FUS = 4,
			FORCEDFUS = 8,
		}
		public enum WPCFLAG_IM_LEAVE : int32
		{
			NORMAL = 0,
			FORCED = 1,
			CONVERSATION_END = 2,
		}
		public enum WPC_ARGS_SETTINGSCHANGEEVENT : int32
		{
			CLASS = 0,
			SETTING = 1,
			OWNER = 2,
			OLDVAL = 3,
			NEWVAL = 4,
			REASON = 5,
			OPTIONAL = 6,
			CARGS = 7,
		}
		public enum WPC_ARGS_SAFERAPPBLOCKED : int32
		{
			TIMESTAMP = 0,
			USERID = 1,
			PATH = 2,
			RULEID = 3,
			CARGS = 4,
		}
		public enum WPC_ARGS_EMAILRECEIEVEDEVENT : int32
		{
			SENDER = 0,
			APPNAME = 1,
			APPVERSION = 2,
			SUBJECT = 3,
			REASON = 4,
			RECIPCOUNT = 5,
			RECIPIENT = 6,
			ATTACHCOUNT = 7,
			ATTACHMENTNAME = 8,
			RECEIVEDTIME = 9,
			EMAILACCOUNT = 10,
			CARGS = 11,
		}
		public enum WPC_ARGS_EMAILSENTEVENT : int32
		{
			SENDER = 0,
			APPNAME = 1,
			APPVERSION = 2,
			SUBJECT = 3,
			REASON = 4,
			RECIPCOUNT = 5,
			RECIPIENT = 6,
			ATTACHCOUNT = 7,
			ATTACHMENTNAME = 8,
			EMAILACCOUNT = 9,
			CARGS = 10,
		}
		public enum WPC_ARGS_EMAILCONTACTEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			OLDNAME = 2,
			OLDID = 3,
			NEWNAME = 4,
			NEWID = 5,
			REASON = 6,
			EMAILACCOUNT = 7,
			CARGS = 8,
		}
		public enum WPC_MEDIA_TYPE : int32
		{
			OTHER = 0,
			DVD = 1,
			RECORDED_TV = 2,
			AUDIO_FILE = 3,
			CD_AUDIO = 4,
			VIDEO_FILE = 5,
			PICTURE_FILE = 6,
			MAX = 7,
		}
		public enum WPC_MEDIA_EXPLICIT : int32
		{
			FALSE = 0,
			TRUE = 1,
			UNKNOWN = 2,
		}
		public enum WPC_ARGS_MEDIAPLAYBACKEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			MEDIATYPE = 2,
			PATH = 3,
			TITLE = 4,
			PML = 5,
			ALBUM = 6,
			EXPLICIT = 7,
			REASON = 8,
			CARGS = 9,
		}
		public enum WPC_ARGS_MEDIADOWNLOADEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			MEDIATYPE = 2,
			PATH = 3,
			TITLE = 4,
			PML = 5,
			ALBUM = 6,
			EXPLICIT = 7,
			REASON = 8,
			CARGS = 9,
		}
		public enum WPC_ARGS_CONVERSATIONINITEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			ACCOUNTNAME = 2,
			CONVID = 3,
			REQUESTINGIP = 4,
			SENDER = 5,
			REASON = 6,
			RECIPCOUNT = 7,
			RECIPIENT = 8,
			CARGS = 9,
		}
		public enum WPC_ARGS_CONVERSATIONJOINEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			ACCOUNTNAME = 2,
			CONVID = 3,
			JOININGIP = 4,
			JOININGUSER = 5,
			REASON = 6,
			MEMBERCOUNT = 7,
			MEMBER = 8,
			SENDER = 9,
			CARGS = 10,
		}
		public enum WPC_ARGS_CONVERSATIONLEAVEEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			ACCOUNTNAME = 2,
			CONVID = 3,
			LEAVINGIP = 4,
			LEAVINGUSER = 5,
			REASON = 6,
			MEMBERCOUNT = 7,
			MEMBER = 8,
			FLAGS = 9,
			CARGS = 10,
		}
		public enum WPCFLAG_IM_FEATURE : int32
		{
			NONE = 0,
			VIDEO = 1,
			AUDIO = 2,
			GAME = 4,
			SMS = 8,
			FILESWAP = 16,
			URLSWAP = 32,
			SENDING = -2147483648,
			ALL = -1,
		}
		public enum WPC_ARGS_IMFEATUREEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			ACCOUNTNAME = 2,
			CONVID = 3,
			MEDIATYPE = 4,
			REASON = 5,
			RECIPCOUNT = 6,
			RECIPIENT = 7,
			SENDER = 8,
			SENDERIP = 9,
			DATA = 10,
			CARGS = 11,
		}
		public enum WPC_ARGS_IMCONTACTEVENT : int32
		{
			APPNAME = 0,
			APPVERSION = 1,
			ACCOUNTNAME = 2,
			OLDNAME = 3,
			OLDID = 4,
			NEWNAME = 5,
			NEWID = 6,
			REASON = 7,
			CARGS = 8,
		}
		public enum WPC_ARGS_GAMESTARTEVENT : int32
		{
			APPID = 0,
			INSTANCEID = 1,
			APPVERSION = 2,
			PATH = 3,
			RATING = 4,
			RATINGSYSTEM = 5,
			REASON = 6,
			DESCCOUNT = 7,
			DESCRIPTOR = 8,
			PID = 9,
			CARGS = 10,
		}
		public enum WPC_ARGS_FILEDOWNLOADEVENT : int32
		{
			URL = 0,
			APPNAME = 1,
			VERSION = 2,
			BLOCKED = 3,
			PATH = 4,
			CARGS = 5,
		}
		public enum WPC_ARGS_URLVISITEVENT : int32
		{
			URL = 0,
			APPNAME = 1,
			VERSION = 2,
			REASON = 3,
			RATINGSYSTEMID = 4,
			CATCOUNT = 5,
			CATEGORY = 6,
			CARGS = 7,
		}
		public enum WPC_ARGS_WEBSITEVISITEVENT : int32
		{
			URL = 0,
			DECISION = 1,
			CATEGORIES = 2,
			BLOCKEDCATEGORIES = 3,
			SERIALIZEDAPPLICATION = 4,
			TITLE = 5,
			CONTENTTYPE = 6,
			REFERRER = 7,
			TELEMETRY = 8,
			CARGS = 9,
		}
		public enum WPC_ARGS_APPLICATIONEVENT : int32
		{
			SERIALIZEDAPPLICATION = 0,
			DECISION = 1,
			PROCESSID = 2,
			CREATIONTIME = 3,
			TIMEUSED = 4,
			CARGS = 5,
		}
		public enum WPC_ARGS_COMPUTERUSAGEEVENT : int32
		{
			ID = 0,
			TIMEUSED = 1,
			CARGS = 2,
		}
		public enum WPC_ARGS_CONTENTUSAGEEVENT : int32
		{
			CONTENTPROVIDERID = 0,
			CONTENTPROVIDERTITLE = 1,
			ID = 2,
			TITLE = 3,
			CATEGORY = 4,
			RATINGS = 5,
			DECISION = 6,
			CARGS = 7,
		}
		public enum WPC_ARGS_CUSTOMEVENT : int32
		{
			PUBLISHER = 0,
			APPNAME = 1,
			APPVERSION = 2,
			EVENT = 3,
			VALUE1 = 4,
			VALUE2 = 5,
			VALUE3 = 6,
			BLOCKED = 7,
			REASON = 8,
			CARGS = 9,
		}
		public enum WPC_ARGS_WEBOVERRIDEEVENT : int32
		{
			USERID = 0,
			URL = 1,
			REASON = 2,
			CARGS = 3,
		}
		public enum WPC_ARGS_APPOVERRIDEEVENT : int32
		{
			USERID = 0,
			PATH = 1,
			REASON = 2,
			CARGS = 3,
		}
		public enum WPC_SETTINGS : int32
		{
			SETTINGS_WPC_EXTENSION_PATH = 0,
			SETTINGS_WPC_EXTENSION_SILO = 1,
			SETTINGS_WPC_EXTENSION_IMAGE_PATH = 2,
			SETTINGS_WPC_EXTENSION_DISABLEDIMAGE_PATH = 3,
			SETTINGS_WPC_EXTENSION_NAME = 4,
			SETTINGS_WPC_EXTENSION_SUB_TITLE = 5,
			SETTINGS_SYSTEM_CURRENT_RATING_SYSTEM = 6,
			SETTINGS_SYSTEM_LAST_LOG_VIEW = 7,
			SETTINGS_SYSTEM_LOG_VIEW_REMINDER_INTERVAL = 8,
			SETTINGS_SYSTEM_HTTP_EXEMPTION_LIST = 9,
			SETTINGS_SYSTEM_URL_EXEMPTION_LIST = 10,
			SETTINGS_SYSTEM_FILTER_ID = 11,
			SETTINGS_SYSTEM_FILTER_NAME = 12,
			SETTINGS_SYSTEM_LOCALE = 13,
			SETTINGS_ALLOW_BLOCK = 14,
			SETTINGS_GAME_BLOCKED = 15,
			SETTINGS_GAME_ALLOW_UNRATED = 16,
			SETTINGS_GAME_MAX_ALLOWED = 17,
			SETTINGS_GAME_DENIED_DESCRIPTORS = 18,
			SETTINGS_USER_WPC_ENABLED = 19,
			SETTINGS_USER_LOGGING_REQUIRED = 20,
			SETTINGS_USER_HOURLY_RESTRICTIONS = 21,
			SETTINGS_USER_OVERRRIDE_REQUESTS = 22,
			SETTINGS_USER_LOGON_HOURS = 23,
			SETTINGS_USER_APP_RESTRICTIONS = 24,
			SETTINGS_WEB_FILTER_ON = 25,
			SETTINGS_WEB_DOWNLOAD_BLOCKED = 26,
			SETTINGS_WEB_FILTER_LEVEL = 27,
			SETTINGS_WEB_BLOCKED_CATEGORY_LIST = 28,
			SETTINGS_WEB_BLOCK_UNRATED = 29,
			SETTINGS_WPC_ENABLED = 30,
			SETTINGS_WPC_LOGGING_REQUIRED = 31,
			SETTINGS_RATING_SYSTEM_PATH = 32,
			SETTINGS_WPC_PROVIDER_CURRENT = 33,
			SETTINGS_USER_TIME_ALLOWANCE = 34,
			SETTINGS_USER_TIME_ALLOWANCE_RESTRICTIONS = 35,
			SETTINGS_GAME_RESTRICTED = 36,
			SETTING_COUNT = 37,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WpcSettingsProvider = .(0x355dffaa, 0x3b9f, 0x435c, 0xb4, 0x28, 0x5d, 0x44, 0x29, 0x0b, 0xc5, 0xf2);
		public const Guid CLSID_WpcProviderSupport = .(0xbb18c7a0, 0x2186, 0x4be0, 0x97, 0xd8, 0x04, 0x84, 0x7b, 0x62, 0x8e, 0x02);
		public const Guid CLSID_WindowsParentalControls = .(0xe77cc89b, 0x7401, 0x4c04, 0x8c, 0xed, 0x14, 0x9d, 0xb3, 0x5a, 0xdd, 0x04);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWPCProviderState : IUnknown
		{
			public const new Guid IID = .(0x50b6a267, 0xc4bd, 0x450b, 0xad, 0xb5, 0x75, 0x90, 0x73, 0x83, 0x7c, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Enable() mut => VT.Enable(ref this);
			public HRESULT Disable() mut => VT.Disable(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderState self) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderState self) Disable;
			}
		}
		[CRepr]
		public struct IWPCProviderConfig : IUnknown
		{
			public const new Guid IID = .(0xbef54196, 0x2d02, 0x4a26, 0xb6, 0xe5, 0xd6, 0x5a, 0xf2, 0x95, 0xd0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserSummary(BSTR bstrSID, BSTR* pbstrUserSummary) mut => VT.GetUserSummary(ref this, bstrSID, pbstrUserSummary);
			public HRESULT Configure(HWND hWnd, BSTR bstrSID) mut => VT.Configure(ref this, hWnd, bstrSID);
			public HRESULT RequestOverride(HWND hWnd, BSTR bstrPath, WPCFLAG_RESTRICTION dwFlags) mut => VT.RequestOverride(ref this, hWnd, bstrPath, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderConfig self, BSTR bstrSID, BSTR* pbstrUserSummary) GetUserSummary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderConfig self, HWND hWnd, BSTR bstrSID) Configure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderConfig self, HWND hWnd, BSTR bstrPath, WPCFLAG_RESTRICTION dwFlags) RequestOverride;
			}
		}
		[CRepr]
		public struct IWPCSettings : IUnknown
		{
			public const new Guid IID = .(0x8fdf6ca1, 0x0189, 0x47e4, 0xb6, 0x70, 0x1a, 0x8a, 0x46, 0x36, 0xe3, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsLoggingRequired(out BOOL pfRequired) mut => VT.IsLoggingRequired(ref this, out pfRequired);
			public HRESULT GetLastSettingsChangeTime(out SYSTEMTIME pTime) mut => VT.GetLastSettingsChangeTime(ref this, out pTime);
			public HRESULT GetRestrictions(out WPCFLAG_RESTRICTION pdwRestrictions) mut => VT.GetRestrictions(ref this, out pdwRestrictions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCSettings self, out BOOL pfRequired) IsLoggingRequired;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCSettings self, out SYSTEMTIME pTime) GetLastSettingsChangeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCSettings self, out WPCFLAG_RESTRICTION pdwRestrictions) GetRestrictions;
			}
		}
		[CRepr]
		public struct IWPCGamesSettings : IWPCSettings
		{
			public const new Guid IID = .(0x95e87780, 0xe158, 0x489e, 0xb4, 0x52, 0xbb, 0xb8, 0x50, 0x79, 0x07, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsBlocked(Guid guidAppID, out uint32 pdwReasons) mut => VT.IsBlocked(ref this, guidAppID, out pdwReasons);

			[CRepr]
			public struct VTable : IWPCSettings.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCGamesSettings self, Guid guidAppID, out uint32 pdwReasons) IsBlocked;
			}
		}
		[CRepr]
		public struct IWPCWebSettings : IWPCSettings
		{
			public const new Guid IID = .(0xffccbdb8, 0x0992, 0x4c30, 0xb0, 0xf1, 0x1c, 0xbb, 0x09, 0xc2, 0x40, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(out WPCFLAG_WEB_SETTING pdwSettings) mut => VT.GetSettings(ref this, out pdwSettings);
			public HRESULT RequestURLOverride(HWND hWnd, PWSTR pcszURL, uint32 cURLs, PWSTR* ppcszSubURLs, out BOOL pfChanged) mut => VT.RequestURLOverride(ref this, hWnd, pcszURL, cURLs, ppcszSubURLs, out pfChanged);

			[CRepr]
			public struct VTable : IWPCSettings.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCWebSettings self, out WPCFLAG_WEB_SETTING pdwSettings) GetSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCWebSettings self, HWND hWnd, PWSTR pcszURL, uint32 cURLs, PWSTR* ppcszSubURLs, out BOOL pfChanged) RequestURLOverride;
			}
		}
		[CRepr]
		public struct IWindowsParentalControlsCore : IUnknown
		{
			public const new Guid IID = .(0x4ff40a0f, 0x3f3b, 0x4d7c, 0xa4, 0x1b, 0x4f, 0x39, 0xd7, 0xb4, 0x4d, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVisibility(out WPCFLAG_VISIBILITY peVisibility) mut => VT.GetVisibility(ref this, out peVisibility);
			public HRESULT GetUserSettings(PWSTR pcszSID, IWPCSettings** ppSettings) mut => VT.GetUserSettings(ref this, pcszSID, ppSettings);
			public HRESULT GetWebSettings(PWSTR pcszSID, IWPCWebSettings** ppSettings) mut => VT.GetWebSettings(ref this, pcszSID, ppSettings);
			public HRESULT GetWebFilterInfo(out Guid pguidID, PWSTR* ppszName) mut => VT.GetWebFilterInfo(ref this, out pguidID, ppszName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsParentalControlsCore self, out WPCFLAG_VISIBILITY peVisibility) GetVisibility;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsParentalControlsCore self, PWSTR pcszSID, IWPCSettings** ppSettings) GetUserSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsParentalControlsCore self, PWSTR pcszSID, IWPCWebSettings** ppSettings) GetWebSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsParentalControlsCore self, out Guid pguidID, PWSTR* ppszName) GetWebFilterInfo;
			}
		}
		[CRepr]
		public struct IWindowsParentalControls : IWindowsParentalControlsCore
		{
			public const new Guid IID = .(0x28b4d88b, 0xe072, 0x49e6, 0x80, 0x4d, 0x26, 0xed, 0xbe, 0x21, 0xa7, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGamesSettings(PWSTR pcszSID, IWPCGamesSettings** ppSettings) mut => VT.GetGamesSettings(ref this, pcszSID, ppSettings);

			[CRepr]
			public struct VTable : IWindowsParentalControlsCore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsParentalControls self, PWSTR pcszSID, IWPCGamesSettings** ppSettings) GetGamesSettings;
			}
		}
		[CRepr]
		public struct IWPCProviderSupport : IUnknown
		{
			public const new Guid IID = .(0x41eba572, 0x23ed, 0x4779, 0xbe, 0xc1, 0x8d, 0xf9, 0x62, 0x06, 0xc4, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out Guid pguidProvider) mut => VT.GetCurrent(ref this, out pguidProvider);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWPCProviderSupport self, out Guid pguidProvider) GetCurrent;
			}
		}
		
	}
}
