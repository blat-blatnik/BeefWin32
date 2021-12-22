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
		
		[AllowDuplicates]
		public enum WPCFLAG_OVERRIDE : int32
		{
			WPCFLAG_APPLICATION = 1,
		}
		[AllowDuplicates]
		public enum WPCFLAG_RESTRICTION : int32
		{
			WPCFLAG_NO_RESTRICTION = 0,
			WPCFLAG_LOGGING_REQUIRED = 1,
			WPCFLAG_WEB_FILTERED = 2,
			WPCFLAG_HOURS_RESTRICTED = 4,
			WPCFLAG_GAMES_BLOCKED = 8,
			WPCFLAG_APPS_RESTRICTED = 16,
			WPCFLAG_TIME_ALLOWANCE_RESTRICTED = 32,
			WPCFLAG_GAMES_RESTRICTED = 64,
		}
		[AllowDuplicates]
		public enum WPCFLAG_WEB_SETTING : int32
		{
			WPCFLAG_WEB_SETTING_NOTBLOCKED = 0,
			WPCFLAG_WEB_SETTING_DOWNLOADSBLOCKED = 1,
		}
		[AllowDuplicates]
		public enum WPCFLAG_VISIBILITY : int32
		{
			WPCFLAG_WPC_VISIBLE = 0,
			WPCFLAG_WPC_HIDDEN = 1,
		}
		[AllowDuplicates]
		public enum WPCFLAG_ISBLOCKED : int32
		{
			WPCFLAG_ISBLOCKED_NOTBLOCKED = 0,
			WPCFLAG_ISBLOCKED_IMBLOCKED = 1,
			WPCFLAG_ISBLOCKED_EMAILBLOCKED = 2,
			WPCFLAG_ISBLOCKED_MEDIAPLAYBACKBLOCKED = 4,
			WPCFLAG_ISBLOCKED_WEBBLOCKED = 8,
			WPCFLAG_ISBLOCKED_GAMESBLOCKED = 16,
			WPCFLAG_ISBLOCKED_CONTACTBLOCKED = 32,
			WPCFLAG_ISBLOCKED_FEATUREBLOCKED = 64,
			WPCFLAG_ISBLOCKED_DOWNLOADBLOCKED = 128,
			WPCFLAG_ISBLOCKED_RATINGBLOCKED = 256,
			WPCFLAG_ISBLOCKED_DESCRIPTORBLOCKED = 512,
			WPCFLAG_ISBLOCKED_EXPLICITBLOCK = 1024,
			WPCFLAG_ISBLOCKED_BADPASS = 2048,
			WPCFLAG_ISBLOCKED_MAXHOURS = 4096,
			WPCFLAG_ISBLOCKED_SPECHOURS = 8192,
			WPCFLAG_ISBLOCKED_SETTINGSCHANGEBLOCKED = 16384,
			WPCFLAG_ISBLOCKED_ATTACHMENTBLOCKED = 32768,
			WPCFLAG_ISBLOCKED_SENDERBLOCKED = 65536,
			WPCFLAG_ISBLOCKED_RECEIVERBLOCKED = 131072,
			WPCFLAG_ISBLOCKED_NOTEXPLICITLYALLOWED = 262144,
			WPCFLAG_ISBLOCKED_NOTINLIST = 524288,
			WPCFLAG_ISBLOCKED_CATEGORYBLOCKED = 1048576,
			WPCFLAG_ISBLOCKED_CATEGORYNOTINLIST = 2097152,
			WPCFLAG_ISBLOCKED_NOTKIDS = 4194304,
			WPCFLAG_ISBLOCKED_UNRATED = 8388608,
			WPCFLAG_ISBLOCKED_NOACCESS = 16777216,
			WPCFLAG_ISBLOCKED_INTERNALERROR = -1,
		}
		[AllowDuplicates]
		public enum WPCFLAG_LOGOFF_TYPE : int32
		{
			WPCFLAG_LOGOFF_TYPE_LOGOUT = 0,
			WPCFLAG_LOGOFF_TYPE_RESTART = 1,
			WPCFLAG_LOGOFF_TYPE_SHUTDOWN = 2,
			WPCFLAG_LOGOFF_TYPE_FUS = 4,
			WPCFLAG_LOGOFF_TYPE_FORCEDFUS = 8,
		}
		[AllowDuplicates]
		public enum WPCFLAG_IM_LEAVE : int32
		{
			WPCFLAG_IM_LEAVE_NORMAL = 0,
			WPCFLAG_IM_LEAVE_FORCED = 1,
			WPCFLAG_IM_LEAVE_CONVERSATION_END = 2,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_SETTINGSCHANGEEVENT : int32
		{
			WPC_ARGS_SETTINGSCHANGEEVENT_CLASS = 0,
			WPC_ARGS_SETTINGSCHANGEEVENT_SETTING = 1,
			WPC_ARGS_SETTINGSCHANGEEVENT_OWNER = 2,
			WPC_ARGS_SETTINGSCHANGEEVENT_OLDVAL = 3,
			WPC_ARGS_SETTINGSCHANGEEVENT_NEWVAL = 4,
			WPC_ARGS_SETTINGSCHANGEEVENT_REASON = 5,
			WPC_ARGS_SETTINGSCHANGEEVENT_OPTIONAL = 6,
			WPC_ARGS_SETTINGSCHANGEEVENT_CARGS = 7,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_SAFERAPPBLOCKED : int32
		{
			WPC_ARGS_SAFERAPPBLOCKED_TIMESTAMP = 0,
			WPC_ARGS_SAFERAPPBLOCKED_USERID = 1,
			WPC_ARGS_SAFERAPPBLOCKED_PATH = 2,
			WPC_ARGS_SAFERAPPBLOCKED_RULEID = 3,
			WPC_ARGS_SAFERAPPBLOCKED_CARGS = 4,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_EMAILRECEIEVEDEVENT : int32
		{
			WPC_ARGS_EMAILRECEIEVEDEVENT_SENDER = 0,
			WPC_ARGS_EMAILRECEIEVEDEVENT_APPNAME = 1,
			WPC_ARGS_EMAILRECEIEVEDEVENT_APPVERSION = 2,
			WPC_ARGS_EMAILRECEIEVEDEVENT_SUBJECT = 3,
			WPC_ARGS_EMAILRECEIEVEDEVENT_REASON = 4,
			WPC_ARGS_EMAILRECEIEVEDEVENT_RECIPCOUNT = 5,
			WPC_ARGS_EMAILRECEIEVEDEVENT_RECIPIENT = 6,
			WPC_ARGS_EMAILRECEIEVEDEVENT_ATTACHCOUNT = 7,
			WPC_ARGS_EMAILRECEIEVEDEVENT_ATTACHMENTNAME = 8,
			WPC_ARGS_EMAILRECEIEVEDEVENT_RECEIVEDTIME = 9,
			WPC_ARGS_EMAILRECEIEVEDEVENT_EMAILACCOUNT = 10,
			WPC_ARGS_EMAILRECEIEVEDEVENT_CARGS = 11,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_EMAILSENTEVENT : int32
		{
			WPC_ARGS_EMAILSENTEVENT_SENDER = 0,
			WPC_ARGS_EMAILSENTEVENT_APPNAME = 1,
			WPC_ARGS_EMAILSENTEVENT_APPVERSION = 2,
			WPC_ARGS_EMAILSENTEVENT_SUBJECT = 3,
			WPC_ARGS_EMAILSENTEVENT_REASON = 4,
			WPC_ARGS_EMAILSENTEVENT_RECIPCOUNT = 5,
			WPC_ARGS_EMAILSENTEVENT_RECIPIENT = 6,
			WPC_ARGS_EMAILSENTEVENT_ATTACHCOUNT = 7,
			WPC_ARGS_EMAILSENTEVENT_ATTACHMENTNAME = 8,
			WPC_ARGS_EMAILSENTEVENT_EMAILACCOUNT = 9,
			WPC_ARGS_EMAILSENTEVENT_CARGS = 10,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_EMAILCONTACTEVENT : int32
		{
			WPC_ARGS_EMAILCONTACTEVENT_APPNAME = 0,
			WPC_ARGS_EMAILCONTACTEVENT_APPVERSION = 1,
			WPC_ARGS_EMAILCONTACTEVENT_OLDNAME = 2,
			WPC_ARGS_EMAILCONTACTEVENT_OLDID = 3,
			WPC_ARGS_EMAILCONTACTEVENT_NEWNAME = 4,
			WPC_ARGS_EMAILCONTACTEVENT_NEWID = 5,
			WPC_ARGS_EMAILCONTACTEVENT_REASON = 6,
			WPC_ARGS_EMAILCONTACTEVENT_EMAILACCOUNT = 7,
			WPC_ARGS_EMAILCONTACTEVENT_CARGS = 8,
		}
		[AllowDuplicates]
		public enum WPC_MEDIA_TYPE : int32
		{
			WPC_MEDIA_TYPE_OTHER = 0,
			WPC_MEDIA_TYPE_DVD = 1,
			WPC_MEDIA_TYPE_RECORDED_TV = 2,
			WPC_MEDIA_TYPE_AUDIO_FILE = 3,
			WPC_MEDIA_TYPE_CD_AUDIO = 4,
			WPC_MEDIA_TYPE_VIDEO_FILE = 5,
			WPC_MEDIA_TYPE_PICTURE_FILE = 6,
			WPC_MEDIA_TYPE_MAX = 7,
		}
		[AllowDuplicates]
		public enum WPC_MEDIA_EXPLICIT : int32
		{
			WPC_MEDIA_EXPLICIT_FALSE = 0,
			WPC_MEDIA_EXPLICIT_TRUE = 1,
			WPC_MEDIA_EXPLICIT_UNKNOWN = 2,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_MEDIAPLAYBACKEVENT : int32
		{
			WPC_ARGS_MEDIAPLAYBACKEVENT_APPNAME = 0,
			WPC_ARGS_MEDIAPLAYBACKEVENT_APPVERSION = 1,
			WPC_ARGS_MEDIAPLAYBACKEVENT_MEDIATYPE = 2,
			WPC_ARGS_MEDIAPLAYBACKEVENT_PATH = 3,
			WPC_ARGS_MEDIAPLAYBACKEVENT_TITLE = 4,
			WPC_ARGS_MEDIAPLAYBACKEVENT_PML = 5,
			WPC_ARGS_MEDIAPLAYBACKEVENT_ALBUM = 6,
			WPC_ARGS_MEDIAPLAYBACKEVENT_EXPLICIT = 7,
			WPC_ARGS_MEDIAPLAYBACKEVENT_REASON = 8,
			WPC_ARGS_MEDIAPLAYBACKEVENT_CARGS = 9,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_MEDIADOWNLOADEVENT : int32
		{
			WPC_ARGS_MEDIADOWNLOADEVENT_APPNAME = 0,
			WPC_ARGS_MEDIADOWNLOADEVENT_APPVERSION = 1,
			WPC_ARGS_MEDIADOWNLOADEVENT_MEDIATYPE = 2,
			WPC_ARGS_MEDIADOWNLOADEVENT_PATH = 3,
			WPC_ARGS_MEDIADOWNLOADEVENT_TITLE = 4,
			WPC_ARGS_MEDIADOWNLOADEVENT_PML = 5,
			WPC_ARGS_MEDIADOWNLOADEVENT_ALBUM = 6,
			WPC_ARGS_MEDIADOWNLOADEVENT_EXPLICIT = 7,
			WPC_ARGS_MEDIADOWNLOADEVENT_REASON = 8,
			WPC_ARGS_MEDIADOWNLOADEVENT_CARGS = 9,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_CONVERSATIONINITEVENT : int32
		{
			WPC_ARGS_CONVERSATIONINITEVENT_APPNAME = 0,
			WPC_ARGS_CONVERSATIONINITEVENT_APPVERSION = 1,
			WPC_ARGS_CONVERSATIONINITEVENT_ACCOUNTNAME = 2,
			WPC_ARGS_CONVERSATIONINITEVENT_CONVID = 3,
			WPC_ARGS_CONVERSATIONINITEVENT_REQUESTINGIP = 4,
			WPC_ARGS_CONVERSATIONINITEVENT_SENDER = 5,
			WPC_ARGS_CONVERSATIONINITEVENT_REASON = 6,
			WPC_ARGS_CONVERSATIONINITEVENT_RECIPCOUNT = 7,
			WPC_ARGS_CONVERSATIONINITEVENT_RECIPIENT = 8,
			WPC_ARGS_CONVERSATIONINITEVENT_CARGS = 9,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_CONVERSATIONJOINEVENT : int32
		{
			WPC_ARGS_CONVERSATIONJOINEVENT_APPNAME = 0,
			WPC_ARGS_CONVERSATIONJOINEVENT_APPVERSION = 1,
			WPC_ARGS_CONVERSATIONJOINEVENT_ACCOUNTNAME = 2,
			WPC_ARGS_CONVERSATIONJOINEVENT_CONVID = 3,
			WPC_ARGS_CONVERSATIONJOINEVENT_JOININGIP = 4,
			WPC_ARGS_CONVERSATIONJOINEVENT_JOININGUSER = 5,
			WPC_ARGS_CONVERSATIONJOINEVENT_REASON = 6,
			WPC_ARGS_CONVERSATIONJOINEVENT_MEMBERCOUNT = 7,
			WPC_ARGS_CONVERSATIONJOINEVENT_MEMBER = 8,
			WPC_ARGS_CONVERSATIONJOINEVENT_SENDER = 9,
			WPC_ARGS_CONVERSATIONJOINEVENT_CARGS = 10,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_CONVERSATIONLEAVEEVENT : int32
		{
			WPC_ARGS_CONVERSATIONLEAVEEVENT_APPNAME = 0,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_APPVERSION = 1,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_ACCOUNTNAME = 2,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_CONVID = 3,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_LEAVINGIP = 4,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_LEAVINGUSER = 5,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_REASON = 6,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_MEMBERCOUNT = 7,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_MEMBER = 8,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_FLAGS = 9,
			WPC_ARGS_CONVERSATIONLEAVEEVENT_CARGS = 10,
		}
		[AllowDuplicates]
		public enum WPCFLAG_IM_FEATURE : int32
		{
			WPCFLAG_IM_FEATURE_NONE = 0,
			WPCFLAG_IM_FEATURE_VIDEO = 1,
			WPCFLAG_IM_FEATURE_AUDIO = 2,
			WPCFLAG_IM_FEATURE_GAME = 4,
			WPCFLAG_IM_FEATURE_SMS = 8,
			WPCFLAG_IM_FEATURE_FILESWAP = 16,
			WPCFLAG_IM_FEATURE_URLSWAP = 32,
			WPCFLAG_IM_FEATURE_SENDING = -2147483648,
			WPCFLAG_IM_FEATURE_ALL = -1,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_IMFEATUREEVENT : int32
		{
			WPC_ARGS_IMFEATUREEVENT_APPNAME = 0,
			WPC_ARGS_IMFEATUREEVENT_APPVERSION = 1,
			WPC_ARGS_IMFEATUREEVENT_ACCOUNTNAME = 2,
			WPC_ARGS_IMFEATUREEVENT_CONVID = 3,
			WPC_ARGS_IMFEATUREEVENT_MEDIATYPE = 4,
			WPC_ARGS_IMFEATUREEVENT_REASON = 5,
			WPC_ARGS_IMFEATUREEVENT_RECIPCOUNT = 6,
			WPC_ARGS_IMFEATUREEVENT_RECIPIENT = 7,
			WPC_ARGS_IMFEATUREEVENT_SENDER = 8,
			WPC_ARGS_IMFEATUREEVENT_SENDERIP = 9,
			WPC_ARGS_IMFEATUREEVENT_DATA = 10,
			WPC_ARGS_IMFEATUREEVENT_CARGS = 11,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_IMCONTACTEVENT : int32
		{
			WPC_ARGS_IMCONTACTEVENT_APPNAME = 0,
			WPC_ARGS_IMCONTACTEVENT_APPVERSION = 1,
			WPC_ARGS_IMCONTACTEVENT_ACCOUNTNAME = 2,
			WPC_ARGS_IMCONTACTEVENT_OLDNAME = 3,
			WPC_ARGS_IMCONTACTEVENT_OLDID = 4,
			WPC_ARGS_IMCONTACTEVENT_NEWNAME = 5,
			WPC_ARGS_IMCONTACTEVENT_NEWID = 6,
			WPC_ARGS_IMCONTACTEVENT_REASON = 7,
			WPC_ARGS_IMCONTACTEVENT_CARGS = 8,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_GAMESTARTEVENT : int32
		{
			WPC_ARGS_GAMESTARTEVENT_APPID = 0,
			WPC_ARGS_GAMESTARTEVENT_INSTANCEID = 1,
			WPC_ARGS_GAMESTARTEVENT_APPVERSION = 2,
			WPC_ARGS_GAMESTARTEVENT_PATH = 3,
			WPC_ARGS_GAMESTARTEVENT_RATING = 4,
			WPC_ARGS_GAMESTARTEVENT_RATINGSYSTEM = 5,
			WPC_ARGS_GAMESTARTEVENT_REASON = 6,
			WPC_ARGS_GAMESTARTEVENT_DESCCOUNT = 7,
			WPC_ARGS_GAMESTARTEVENT_DESCRIPTOR = 8,
			WPC_ARGS_GAMESTARTEVENT_PID = 9,
			WPC_ARGS_GAMESTARTEVENT_CARGS = 10,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_FILEDOWNLOADEVENT : int32
		{
			WPC_ARGS_FILEDOWNLOADEVENT_URL = 0,
			WPC_ARGS_FILEDOWNLOADEVENT_APPNAME = 1,
			WPC_ARGS_FILEDOWNLOADEVENT_VERSION = 2,
			WPC_ARGS_FILEDOWNLOADEVENT_BLOCKED = 3,
			WPC_ARGS_FILEDOWNLOADEVENT_PATH = 4,
			WPC_ARGS_FILEDOWNLOADEVENT_CARGS = 5,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_URLVISITEVENT : int32
		{
			WPC_ARGS_URLVISITEVENT_URL = 0,
			WPC_ARGS_URLVISITEVENT_APPNAME = 1,
			WPC_ARGS_URLVISITEVENT_VERSION = 2,
			WPC_ARGS_URLVISITEVENT_REASON = 3,
			WPC_ARGS_URLVISITEVENT_RATINGSYSTEMID = 4,
			WPC_ARGS_URLVISITEVENT_CATCOUNT = 5,
			WPC_ARGS_URLVISITEVENT_CATEGORY = 6,
			WPC_ARGS_URLVISITEVENT_CARGS = 7,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_WEBSITEVISITEVENT : int32
		{
			WPC_ARGS_WEBSITEVISITEVENT_URL = 0,
			WPC_ARGS_WEBSITEVISITEVENT_DECISION = 1,
			WPC_ARGS_WEBSITEVISITEVENT_CATEGORIES = 2,
			WPC_ARGS_WEBSITEVISITEVENT_BLOCKEDCATEGORIES = 3,
			WPC_ARGS_WEBSITEVISITEVENT_SERIALIZEDAPPLICATION = 4,
			WPC_ARGS_WEBSITEVISITEVENT_TITLE = 5,
			WPC_ARGS_WEBSITEVISITEVENT_CONTENTTYPE = 6,
			WPC_ARGS_WEBSITEVISITEVENT_REFERRER = 7,
			WPC_ARGS_WEBSITEVISITEVENT_TELEMETRY = 8,
			WPC_ARGS_WEBSITEVISITEVENT_CARGS = 9,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_APPLICATIONEVENT : int32
		{
			WPC_ARGS_APPLICATIONEVENT_SERIALIZEDAPPLICATION = 0,
			WPC_ARGS_APPLICATIONEVENT_DECISION = 1,
			WPC_ARGS_APPLICATIONEVENT_PROCESSID = 2,
			WPC_ARGS_APPLICATIONEVENT_CREATIONTIME = 3,
			WPC_ARGS_APPLICATIONEVENT_TIMEUSED = 4,
			WPC_ARGS_APPLICATIONEVENT_CARGS = 5,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_COMPUTERUSAGEEVENT : int32
		{
			WPC_ARGS_COMPUTERUSAGEEVENT_ID = 0,
			WPC_ARGS_COMPUTERUSAGEEVENT_TIMEUSED = 1,
			WPC_ARGS_COMPUTERUSAGEEVENT_CARGS = 2,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_CONTENTUSAGEEVENT : int32
		{
			WPC_ARGS_CONTENTUSAGEEVENT_CONTENTPROVIDERID = 0,
			WPC_ARGS_CONTENTUSAGEEVENT_CONTENTPROVIDERTITLE = 1,
			WPC_ARGS_CONTENTUSAGEEVENT_ID = 2,
			WPC_ARGS_CONTENTUSAGEEVENT_TITLE = 3,
			WPC_ARGS_CONTENTUSAGEEVENT_CATEGORY = 4,
			WPC_ARGS_CONTENTUSAGEEVENT_RATINGS = 5,
			WPC_ARGS_CONTENTUSAGEEVENT_DECISION = 6,
			WPC_ARGS_CONTENTUSAGEEVENT_CARGS = 7,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_CUSTOMEVENT : int32
		{
			WPC_ARGS_CUSTOMEVENT_PUBLISHER = 0,
			WPC_ARGS_CUSTOMEVENT_APPNAME = 1,
			WPC_ARGS_CUSTOMEVENT_APPVERSION = 2,
			WPC_ARGS_CUSTOMEVENT_EVENT = 3,
			WPC_ARGS_CUSTOMEVENT_VALUE1 = 4,
			WPC_ARGS_CUSTOMEVENT_VALUE2 = 5,
			WPC_ARGS_CUSTOMEVENT_VALUE3 = 6,
			WPC_ARGS_CUSTOMEVENT_BLOCKED = 7,
			WPC_ARGS_CUSTOMEVENT_REASON = 8,
			WPC_ARGS_CUSTOMEVENT_CARGS = 9,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_WEBOVERRIDEEVENT : int32
		{
			WPC_ARGS_WEBOVERRIDEEVENT_USERID = 0,
			WPC_ARGS_WEBOVERRIDEEVENT_URL = 1,
			WPC_ARGS_WEBOVERRIDEEVENT_REASON = 2,
			WPC_ARGS_WEBOVERRIDEEVENT_CARGS = 3,
		}
		[AllowDuplicates]
		public enum WPC_ARGS_APPOVERRIDEEVENT : int32
		{
			WPC_ARGS_APPOVERRIDEEVENT_USERID = 0,
			WPC_ARGS_APPOVERRIDEEVENT_PATH = 1,
			WPC_ARGS_APPOVERRIDEEVENT_REASON = 2,
			WPC_ARGS_APPOVERRIDEEVENT_CARGS = 3,
		}
		[AllowDuplicates]
		public enum WPC_SETTINGS : int32
		{
			WPC_SETTINGS_WPC_EXTENSION_PATH = 0,
			WPC_SETTINGS_WPC_EXTENSION_SILO = 1,
			WPC_SETTINGS_WPC_EXTENSION_IMAGE_PATH = 2,
			WPC_SETTINGS_WPC_EXTENSION_DISABLEDIMAGE_PATH = 3,
			WPC_SETTINGS_WPC_EXTENSION_NAME = 4,
			WPC_SETTINGS_WPC_EXTENSION_SUB_TITLE = 5,
			WPC_SETTINGS_SYSTEM_CURRENT_RATING_SYSTEM = 6,
			WPC_SETTINGS_SYSTEM_LAST_LOG_VIEW = 7,
			WPC_SETTINGS_SYSTEM_LOG_VIEW_REMINDER_INTERVAL = 8,
			WPC_SETTINGS_SYSTEM_HTTP_EXEMPTION_LIST = 9,
			WPC_SETTINGS_SYSTEM_URL_EXEMPTION_LIST = 10,
			WPC_SETTINGS_SYSTEM_FILTER_ID = 11,
			WPC_SETTINGS_SYSTEM_FILTER_NAME = 12,
			WPC_SETTINGS_SYSTEM_LOCALE = 13,
			WPC_SETTINGS_ALLOW_BLOCK = 14,
			WPC_SETTINGS_GAME_BLOCKED = 15,
			WPC_SETTINGS_GAME_ALLOW_UNRATED = 16,
			WPC_SETTINGS_GAME_MAX_ALLOWED = 17,
			WPC_SETTINGS_GAME_DENIED_DESCRIPTORS = 18,
			WPC_SETTINGS_USER_WPC_ENABLED = 19,
			WPC_SETTINGS_USER_LOGGING_REQUIRED = 20,
			WPC_SETTINGS_USER_HOURLY_RESTRICTIONS = 21,
			WPC_SETTINGS_USER_OVERRRIDE_REQUESTS = 22,
			WPC_SETTINGS_USER_LOGON_HOURS = 23,
			WPC_SETTINGS_USER_APP_RESTRICTIONS = 24,
			WPC_SETTINGS_WEB_FILTER_ON = 25,
			WPC_SETTINGS_WEB_DOWNLOAD_BLOCKED = 26,
			WPC_SETTINGS_WEB_FILTER_LEVEL = 27,
			WPC_SETTINGS_WEB_BLOCKED_CATEGORY_LIST = 28,
			WPC_SETTINGS_WEB_BLOCK_UNRATED = 29,
			WPC_SETTINGS_WPC_ENABLED = 30,
			WPC_SETTINGS_WPC_LOGGING_REQUIRED = 31,
			WPC_SETTINGS_RATING_SYSTEM_PATH = 32,
			WPC_SETTINGS_WPC_PROVIDER_CURRENT = 33,
			WPC_SETTINGS_USER_TIME_ALLOWANCE = 34,
			WPC_SETTINGS_USER_TIME_ALLOWANCE_RESTRICTIONS = 35,
			WPC_SETTINGS_GAME_RESTRICTED = 36,
			WPC_SETTING_COUNT = 37,
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
			
			public HRESULT Enable() mut
			{
				return VT.Enable(&this);
			}
			public HRESULT Disable() mut
			{
				return VT.Disable(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWPCProviderState *self) Enable;
				public new function HRESULT(IWPCProviderState *self) Disable;
			}
		}
		[CRepr]
		public struct IWPCProviderConfig : IUnknown
		{
			public const new Guid IID = .(0xbef54196, 0x2d02, 0x4a26, 0xb6, 0xe5, 0xd6, 0x5a, 0xf2, 0x95, 0xd0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserSummary(BSTR bstrSID, BSTR* pbstrUserSummary) mut
			{
				return VT.GetUserSummary(&this, bstrSID, pbstrUserSummary);
			}
			public HRESULT Configure(HWND hWnd, BSTR bstrSID) mut
			{
				return VT.Configure(&this, hWnd, bstrSID);
			}
			public HRESULT RequestOverride(HWND hWnd, BSTR bstrPath, WPCFLAG_RESTRICTION dwFlags) mut
			{
				return VT.RequestOverride(&this, hWnd, bstrPath, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWPCProviderConfig *self, BSTR bstrSID, BSTR* pbstrUserSummary) GetUserSummary;
				public new function HRESULT(IWPCProviderConfig *self, HWND hWnd, BSTR bstrSID) Configure;
				public new function HRESULT(IWPCProviderConfig *self, HWND hWnd, BSTR bstrPath, WPCFLAG_RESTRICTION dwFlags) RequestOverride;
			}
		}
		[CRepr]
		public struct IWPCSettings : IUnknown
		{
			public const new Guid IID = .(0x8fdf6ca1, 0x0189, 0x47e4, 0xb6, 0x70, 0x1a, 0x8a, 0x46, 0x36, 0xe3, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsLoggingRequired(BOOL* pfRequired) mut
			{
				return VT.IsLoggingRequired(&this, pfRequired);
			}
			public HRESULT GetLastSettingsChangeTime(SYSTEMTIME* pTime) mut
			{
				return VT.GetLastSettingsChangeTime(&this, pTime);
			}
			public HRESULT GetRestrictions(WPCFLAG_RESTRICTION* pdwRestrictions) mut
			{
				return VT.GetRestrictions(&this, pdwRestrictions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWPCSettings *self, BOOL* pfRequired) IsLoggingRequired;
				public new function HRESULT(IWPCSettings *self, SYSTEMTIME* pTime) GetLastSettingsChangeTime;
				public new function HRESULT(IWPCSettings *self, WPCFLAG_RESTRICTION* pdwRestrictions) GetRestrictions;
			}
		}
		[CRepr]
		public struct IWPCGamesSettings : IWPCSettings
		{
			public const new Guid IID = .(0x95e87780, 0xe158, 0x489e, 0xb4, 0x52, 0xbb, 0xb8, 0x50, 0x79, 0x07, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsBlocked(Guid guidAppID, uint32* pdwReasons) mut
			{
				return VT.IsBlocked(&this, guidAppID, pdwReasons);
			}
			[CRepr]
			public struct VTable : IWPCSettings.VTable
			{
				public new function HRESULT(IWPCGamesSettings *self, Guid guidAppID, uint32* pdwReasons) IsBlocked;
			}
		}
		[CRepr]
		public struct IWPCWebSettings : IWPCSettings
		{
			public const new Guid IID = .(0xffccbdb8, 0x0992, 0x4c30, 0xb0, 0xf1, 0x1c, 0xbb, 0x09, 0xc2, 0x40, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSettings(WPCFLAG_WEB_SETTING* pdwSettings) mut
			{
				return VT.GetSettings(&this, pdwSettings);
			}
			public HRESULT RequestURLOverride(HWND hWnd, PWSTR pcszURL, uint32 cURLs, PWSTR* ppcszSubURLs, BOOL* pfChanged) mut
			{
				return VT.RequestURLOverride(&this, hWnd, pcszURL, cURLs, ppcszSubURLs, pfChanged);
			}
			[CRepr]
			public struct VTable : IWPCSettings.VTable
			{
				public new function HRESULT(IWPCWebSettings *self, WPCFLAG_WEB_SETTING* pdwSettings) GetSettings;
				public new function HRESULT(IWPCWebSettings *self, HWND hWnd, PWSTR pcszURL, uint32 cURLs, PWSTR* ppcszSubURLs, BOOL* pfChanged) RequestURLOverride;
			}
		}
		[CRepr]
		public struct IWindowsParentalControlsCore : IUnknown
		{
			public const new Guid IID = .(0x4ff40a0f, 0x3f3b, 0x4d7c, 0xa4, 0x1b, 0x4f, 0x39, 0xd7, 0xb4, 0x4d, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVisibility(WPCFLAG_VISIBILITY* peVisibility) mut
			{
				return VT.GetVisibility(&this, peVisibility);
			}
			public HRESULT GetUserSettings(PWSTR pcszSID, IWPCSettings** ppSettings) mut
			{
				return VT.GetUserSettings(&this, pcszSID, ppSettings);
			}
			public HRESULT GetWebSettings(PWSTR pcszSID, IWPCWebSettings** ppSettings) mut
			{
				return VT.GetWebSettings(&this, pcszSID, ppSettings);
			}
			public HRESULT GetWebFilterInfo(Guid* pguidID, PWSTR* ppszName) mut
			{
				return VT.GetWebFilterInfo(&this, pguidID, ppszName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWindowsParentalControlsCore *self, WPCFLAG_VISIBILITY* peVisibility) GetVisibility;
				public new function HRESULT(IWindowsParentalControlsCore *self, PWSTR pcszSID, IWPCSettings** ppSettings) GetUserSettings;
				public new function HRESULT(IWindowsParentalControlsCore *self, PWSTR pcszSID, IWPCWebSettings** ppSettings) GetWebSettings;
				public new function HRESULT(IWindowsParentalControlsCore *self, Guid* pguidID, PWSTR* ppszName) GetWebFilterInfo;
			}
		}
		[CRepr]
		public struct IWindowsParentalControls : IWindowsParentalControlsCore
		{
			public const new Guid IID = .(0x28b4d88b, 0xe072, 0x49e6, 0x80, 0x4d, 0x26, 0xed, 0xbe, 0x21, 0xa7, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGamesSettings(PWSTR pcszSID, IWPCGamesSettings** ppSettings) mut
			{
				return VT.GetGamesSettings(&this, pcszSID, ppSettings);
			}
			[CRepr]
			public struct VTable : IWindowsParentalControlsCore.VTable
			{
				public new function HRESULT(IWindowsParentalControls *self, PWSTR pcszSID, IWPCGamesSettings** ppSettings) GetGamesSettings;
			}
		}
		[CRepr]
		public struct IWPCProviderSupport : IUnknown
		{
			public const new Guid IID = .(0x41eba572, 0x23ed, 0x4779, 0xbe, 0xc1, 0x8d, 0xf9, 0x62, 0x06, 0xc4, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(Guid* pguidProvider) mut
			{
				return VT.GetCurrent(&this, pguidProvider);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWPCProviderSupport *self, Guid* pguidProvider) GetCurrent;
			}
		}
		
	}
}
