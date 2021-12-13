using System;

// namespace System.TaskScheduler
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 TASK_SUNDAY = 1;
		public const uint32 TASK_MONDAY = 2;
		public const uint32 TASK_TUESDAY = 4;
		public const uint32 TASK_WEDNESDAY = 8;
		public const uint32 TASK_THURSDAY = 16;
		public const uint32 TASK_FRIDAY = 32;
		public const uint32 TASK_SATURDAY = 64;
		public const uint32 TASK_FIRST_WEEK = 1;
		public const uint32 TASK_SECOND_WEEK = 2;
		public const uint32 TASK_THIRD_WEEK = 3;
		public const uint32 TASK_FOURTH_WEEK = 4;
		public const uint32 TASK_LAST_WEEK = 5;
		public const uint32 TASK_JANUARY = 1;
		public const uint32 TASK_FEBRUARY = 2;
		public const uint32 TASK_MARCH = 4;
		public const uint32 TASK_APRIL = 8;
		public const uint32 TASK_MAY = 16;
		public const uint32 TASK_JUNE = 32;
		public const uint32 TASK_JULY = 64;
		public const uint32 TASK_AUGUST = 128;
		public const uint32 TASK_SEPTEMBER = 256;
		public const uint32 TASK_OCTOBER = 512;
		public const uint32 TASK_NOVEMBER = 1024;
		public const uint32 TASK_DECEMBER = 2048;
		public const uint32 TASK_FLAG_INTERACTIVE = 1;
		public const uint32 TASK_FLAG_DELETE_WHEN_DONE = 2;
		public const uint32 TASK_FLAG_DISABLED = 4;
		public const uint32 TASK_FLAG_START_ONLY_IF_IDLE = 16;
		public const uint32 TASK_FLAG_KILL_ON_IDLE_END = 32;
		public const uint32 TASK_FLAG_DONT_START_IF_ON_BATTERIES = 64;
		public const uint32 TASK_FLAG_KILL_IF_GOING_ON_BATTERIES = 128;
		public const uint32 TASK_FLAG_RUN_ONLY_IF_DOCKED = 256;
		public const uint32 TASK_FLAG_HIDDEN = 512;
		public const uint32 TASK_FLAG_RUN_IF_CONNECTED_TO_INTERNET = 1024;
		public const uint32 TASK_FLAG_RESTART_ON_IDLE_RESUME = 2048;
		public const uint32 TASK_FLAG_SYSTEM_REQUIRED = 4096;
		public const uint32 TASK_FLAG_RUN_ONLY_IF_LOGGED_ON = 8192;
		public const uint32 TASK_TRIGGER_FLAG_HAS_END_DATE = 1;
		public const uint32 TASK_TRIGGER_FLAG_KILL_AT_DURATION_END = 2;
		public const uint32 TASK_TRIGGER_FLAG_DISABLED = 4;
		public const uint32 TASK_MAX_RUN_TIMES = 1440;
		public const Guid CLSID_CTask = .(0x148bd520, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
		public const Guid CLSID_CTaskScheduler = .(0x148bd52a, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum TASK_TRIGGER_TYPE : int32
		{
			TASK_TIME_TRIGGER_ONCE = 0,
			TASK_TIME_TRIGGER_DAILY = 1,
			TASK_TIME_TRIGGER_WEEKLY = 2,
			TASK_TIME_TRIGGER_MONTHLYDATE = 3,
			TASK_TIME_TRIGGER_MONTHLYDOW = 4,
			TASK_EVENT_TRIGGER_ON_IDLE = 5,
			TASK_EVENT_TRIGGER_AT_SYSTEMSTART = 6,
			TASK_EVENT_TRIGGER_AT_LOGON = 7,
		}
		[AllowDuplicates]
		public enum TASKPAGE : int32
		{
			TASKPAGE_TASK = 0,
			TASKPAGE_SCHEDULE = 1,
			TASKPAGE_SETTINGS = 2,
		}
		[AllowDuplicates]
		public enum TASK_RUN_FLAGS : int32
		{
			TASK_RUN_NO_FLAGS = 0,
			TASK_RUN_AS_SELF = 1,
			TASK_RUN_IGNORE_CONSTRAINTS = 2,
			TASK_RUN_USE_SESSION_ID = 4,
			TASK_RUN_USER_SID = 8,
		}
		[AllowDuplicates]
		public enum TASK_ENUM_FLAGS : int32
		{
			TASK_ENUM_HIDDEN = 1,
		}
		[AllowDuplicates]
		public enum TASK_LOGON_TYPE : int32
		{
			TASK_LOGON_NONE = 0,
			TASK_LOGON_PASSWORD = 1,
			TASK_LOGON_S4U = 2,
			TASK_LOGON_INTERACTIVE_TOKEN = 3,
			TASK_LOGON_GROUP = 4,
			TASK_LOGON_SERVICE_ACCOUNT = 5,
			TASK_LOGON_INTERACTIVE_TOKEN_OR_PASSWORD = 6,
		}
		[AllowDuplicates]
		public enum TASK_RUNLEVEL_TYPE : int32
		{
			TASK_RUNLEVEL_LUA = 0,
			TASK_RUNLEVEL_HIGHEST = 1,
		}
		[AllowDuplicates]
		public enum TASK_PROCESSTOKENSID_TYPE : int32
		{
			TASK_PROCESSTOKENSID_NONE = 0,
			TASK_PROCESSTOKENSID_UNRESTRICTED = 1,
			TASK_PROCESSTOKENSID_DEFAULT = 2,
		}
		[AllowDuplicates]
		public enum TASK_STATE : int32
		{
			TASK_STATE_UNKNOWN = 0,
			TASK_STATE_DISABLED = 1,
			TASK_STATE_QUEUED = 2,
			TASK_STATE_READY = 3,
			TASK_STATE_RUNNING = 4,
		}
		[AllowDuplicates]
		public enum TASK_CREATION : int32
		{
			TASK_VALIDATE_ONLY = 1,
			TASK_CREATE = 2,
			TASK_UPDATE = 4,
			TASK_CREATE_OR_UPDATE = 6,
			TASK_DISABLE = 8,
			TASK_DONT_ADD_PRINCIPAL_ACE = 16,
			TASK_IGNORE_REGISTRATION_TRIGGERS = 32,
		}
		[AllowDuplicates]
		public enum TASK_TRIGGER_TYPE2 : int32
		{
			TASK_TRIGGER_EVENT = 0,
			TASK_TRIGGER_TIME = 1,
			TASK_TRIGGER_DAILY = 2,
			TASK_TRIGGER_WEEKLY = 3,
			TASK_TRIGGER_MONTHLY = 4,
			TASK_TRIGGER_MONTHLYDOW = 5,
			TASK_TRIGGER_IDLE = 6,
			TASK_TRIGGER_REGISTRATION = 7,
			TASK_TRIGGER_BOOT = 8,
			TASK_TRIGGER_LOGON = 9,
			TASK_TRIGGER_SESSION_STATE_CHANGE = 11,
			TASK_TRIGGER_CUSTOM_TRIGGER_01 = 12,
		}
		[AllowDuplicates]
		public enum TASK_SESSION_STATE_CHANGE_TYPE : int32
		{
			TASK_CONSOLE_CONNECT = 1,
			TASK_CONSOLE_DISCONNECT = 2,
			TASK_REMOTE_CONNECT = 3,
			TASK_REMOTE_DISCONNECT = 4,
			TASK_SESSION_LOCK = 7,
			TASK_SESSION_UNLOCK = 8,
		}
		[AllowDuplicates]
		public enum TASK_ACTION_TYPE : int32
		{
			TASK_ACTION_EXEC = 0,
			TASK_ACTION_COM_HANDLER = 5,
			TASK_ACTION_SEND_EMAIL = 6,
			TASK_ACTION_SHOW_MESSAGE = 7,
		}
		[AllowDuplicates]
		public enum TASK_INSTANCES_POLICY : int32
		{
			TASK_INSTANCES_PARALLEL = 0,
			TASK_INSTANCES_QUEUE = 1,
			TASK_INSTANCES_IGNORE_NEW = 2,
			TASK_INSTANCES_STOP_EXISTING = 3,
		}
		[AllowDuplicates]
		public enum TASK_COMPATIBILITY : int32
		{
			TASK_COMPATIBILITY_AT = 0,
			TASK_COMPATIBILITY_V1 = 1,
			TASK_COMPATIBILITY_V2 = 2,
			TASK_COMPATIBILITY_V2_1 = 3,
			TASK_COMPATIBILITY_V2_2 = 4,
			TASK_COMPATIBILITY_V2_3 = 5,
			TASK_COMPATIBILITY_V2_4 = 6,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DAILY
		{
			public uint16 DaysInterval;
		}
		[CRepr]
		public struct WEEKLY
		{
			public uint16 WeeksInterval;
			public uint16 rgfDaysOfTheWeek;
		}
		[CRepr]
		public struct MONTHLYDATE
		{
			public uint32 rgfDays;
			public uint16 rgfMonths;
		}
		[CRepr]
		public struct MONTHLYDOW
		{
			public uint16 wWhichWeek;
			public uint16 rgfDaysOfTheWeek;
			public uint16 rgfMonths;
		}
		[CRepr, Union]
		public struct TRIGGER_TYPE_UNION
		{
			public DAILY Daily;
			public WEEKLY Weekly;
			public MONTHLYDATE MonthlyDate;
			public MONTHLYDOW MonthlyDOW;
		}
		[CRepr]
		public struct TASK_TRIGGER
		{
			public uint16 cbTriggerSize;
			public uint16 Reserved1;
			public uint16 wBeginYear;
			public uint16 wBeginMonth;
			public uint16 wBeginDay;
			public uint16 wEndYear;
			public uint16 wEndMonth;
			public uint16 wEndDay;
			public uint16 wStartHour;
			public uint16 wStartMinute;
			public uint32 MinutesDuration;
			public uint32 MinutesInterval;
			public uint32 rgFlags;
			public TASK_TRIGGER_TYPE TriggerType;
			public TRIGGER_TYPE_UNION Type;
			public uint16 Reserved2;
			public uint16 wRandomMinutesInterval;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_TaskScheduler = .(0x0f87369f, 0xa4e5, 0x4cfc, 0xbd, 0x3e, 0x73, 0xe6, 0x15, 0x45, 0x72, 0xdd);
		public const Guid CLSID_TaskHandlerPS = .(0xf2a69db7, 0xda2c, 0x4352, 0x90, 0x66, 0x86, 0xfe, 0xe6, 0xda, 0xca, 0xc9);
		public const Guid CLSID_TaskHandlerStatusPS = .(0x9f15266d, 0xd7ba, 0x48f0, 0x93, 0xc1, 0xe6, 0x89, 0x5f, 0x6f, 0xe5, 0xac);
		
		// --- COM Interfaces ---
		
		public struct ITaskTrigger {}
		public struct IScheduledWorkItem {}
		public struct ITask {}
		public struct IEnumWorkItems {}
		public struct ITaskScheduler {}
		public struct IProvideTaskPage {}
		public struct ITaskFolderCollection {}
		public struct ITaskService {}
		public struct ITaskHandler {}
		public struct ITaskHandlerStatus {}
		public struct ITaskVariables {}
		public struct ITaskNamedValuePair {}
		public struct ITaskNamedValueCollection {}
		public struct IRunningTask {}
		public struct IRunningTaskCollection {}
		public struct IRegisteredTask {}
		public struct ITrigger {}
		public struct IIdleTrigger {}
		public struct ILogonTrigger {}
		public struct ISessionStateChangeTrigger {}
		public struct IEventTrigger {}
		public struct ITimeTrigger {}
		public struct IDailyTrigger {}
		public struct IWeeklyTrigger {}
		public struct IMonthlyTrigger {}
		public struct IMonthlyDOWTrigger {}
		public struct IBootTrigger {}
		public struct IRegistrationTrigger {}
		public struct IAction {}
		public struct IExecAction {}
		public struct IExecAction2 {}
		public struct IShowMessageAction {}
		public struct IComHandlerAction {}
		public struct IEmailAction {}
		public struct ITriggerCollection {}
		public struct IActionCollection {}
		public struct IPrincipal {}
		public struct IPrincipal2 {}
		public struct IRegistrationInfo {}
		public struct ITaskDefinition {}
		public struct ITaskSettings {}
		public struct ITaskSettings2 {}
		public struct ITaskSettings3 {}
		public struct IMaintenanceSettings {}
		public struct IRegisteredTaskCollection {}
		public struct ITaskFolder {}
		public struct IIdleSettings {}
		public struct INetworkSettings {}
		public struct IRepetitionPattern {}
		
	}
}
