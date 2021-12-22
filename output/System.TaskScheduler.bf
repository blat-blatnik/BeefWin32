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
		
		public enum TASK_TRIGGER_TYPE : int32
		{
			TIME_TRIGGER_ONCE = 0,
			TIME_TRIGGER_DAILY = 1,
			TIME_TRIGGER_WEEKLY = 2,
			TIME_TRIGGER_MONTHLYDATE = 3,
			TIME_TRIGGER_MONTHLYDOW = 4,
			EVENT_TRIGGER_ON_IDLE = 5,
			EVENT_TRIGGER_AT_SYSTEMSTART = 6,
			EVENT_TRIGGER_AT_LOGON = 7,
		}
		public enum TASKPAGE : int32
		{
			TASK = 0,
			SCHEDULE = 1,
			SETTINGS = 2,
		}
		public enum TASK_RUN_FLAGS : int32
		{
			NO_FLAGS = 0,
			AS_SELF = 1,
			IGNORE_CONSTRAINTS = 2,
			USE_SESSION_ID = 4,
			USER_SID = 8,
		}
		public enum TASK_ENUM_FLAGS : int32
		{
			TASK_ENUM_HIDDEN = 1,
		}
		public enum TASK_LOGON_TYPE : int32
		{
			NONE = 0,
			PASSWORD = 1,
			S4U = 2,
			INTERACTIVE_TOKEN = 3,
			GROUP = 4,
			SERVICE_ACCOUNT = 5,
			INTERACTIVE_TOKEN_OR_PASSWORD = 6,
		}
		public enum TASK_RUNLEVEL_TYPE : int32
		{
			LUA = 0,
			HIGHEST = 1,
		}
		public enum TASK_PROCESSTOKENSID_TYPE : int32
		{
			NONE = 0,
			UNRESTRICTED = 1,
			DEFAULT = 2,
		}
		public enum TASK_STATE : int32
		{
			UNKNOWN = 0,
			DISABLED = 1,
			QUEUED = 2,
			READY = 3,
			RUNNING = 4,
		}
		public enum TASK_CREATION : int32
		{
			VALIDATE_ONLY = 1,
			CREATE = 2,
			UPDATE = 4,
			CREATE_OR_UPDATE = 6,
			DISABLE = 8,
			DONT_ADD_PRINCIPAL_ACE = 16,
			IGNORE_REGISTRATION_TRIGGERS = 32,
		}
		public enum TASK_TRIGGER_TYPE2 : int32
		{
			EVENT = 0,
			TIME = 1,
			DAILY = 2,
			WEEKLY = 3,
			MONTHLY = 4,
			MONTHLYDOW = 5,
			IDLE = 6,
			REGISTRATION = 7,
			BOOT = 8,
			LOGON = 9,
			SESSION_STATE_CHANGE = 11,
			CUSTOM_TRIGGER_01 = 12,
		}
		public enum TASK_SESSION_STATE_CHANGE_TYPE : int32
		{
			CONSOLE_CONNECT = 1,
			CONSOLE_DISCONNECT = 2,
			REMOTE_CONNECT = 3,
			REMOTE_DISCONNECT = 4,
			SESSION_LOCK = 7,
			SESSION_UNLOCK = 8,
		}
		public enum TASK_ACTION_TYPE : int32
		{
			EXEC = 0,
			COM_HANDLER = 5,
			SEND_EMAIL = 6,
			SHOW_MESSAGE = 7,
		}
		public enum TASK_INSTANCES_POLICY : int32
		{
			PARALLEL = 0,
			QUEUE = 1,
			IGNORE_NEW = 2,
			STOP_EXISTING = 3,
		}
		public enum TASK_COMPATIBILITY : int32
		{
			AT = 0,
			V1 = 1,
			V2 = 2,
			V2_1 = 3,
			V2_2 = 4,
			V2_3 = 5,
			V2_4 = 6,
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
		
		[CRepr]
		public struct ITaskTrigger : IUnknown
		{
			public const new Guid IID = .(0x148bd52b, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTrigger(TASK_TRIGGER* pTrigger) mut
			{
				return VT.SetTrigger(&this, pTrigger);
			}
			public HRESULT GetTrigger(TASK_TRIGGER* pTrigger) mut
			{
				return VT.GetTrigger(&this, pTrigger);
			}
			public HRESULT GetTriggerString(PWSTR* ppwszTrigger) mut
			{
				return VT.GetTriggerString(&this, ppwszTrigger);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskTrigger *self, TASK_TRIGGER* pTrigger) SetTrigger;
				public new function HRESULT(ITaskTrigger *self, TASK_TRIGGER* pTrigger) GetTrigger;
				public new function HRESULT(ITaskTrigger *self, PWSTR* ppwszTrigger) GetTriggerString;
			}
		}
		[CRepr]
		public struct IScheduledWorkItem : IUnknown
		{
			public const new Guid IID = .(0xa6b952f0, 0xa4b1, 0x11d0, 0x99, 0x7d, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTrigger(uint16* piNewTrigger, ITaskTrigger** ppTrigger) mut
			{
				return VT.CreateTrigger(&this, piNewTrigger, ppTrigger);
			}
			public HRESULT DeleteTrigger(uint16 iTrigger) mut
			{
				return VT.DeleteTrigger(&this, iTrigger);
			}
			public HRESULT GetTriggerCount(uint16* pwCount) mut
			{
				return VT.GetTriggerCount(&this, pwCount);
			}
			public HRESULT GetTrigger(uint16 iTrigger, ITaskTrigger** ppTrigger) mut
			{
				return VT.GetTrigger(&this, iTrigger, ppTrigger);
			}
			public HRESULT GetTriggerString(uint16 iTrigger, PWSTR* ppwszTrigger) mut
			{
				return VT.GetTriggerString(&this, iTrigger, ppwszTrigger);
			}
			public HRESULT GetRunTimes(SYSTEMTIME* pstBegin, SYSTEMTIME* pstEnd, uint16* pCount, SYSTEMTIME** rgstTaskTimes) mut
			{
				return VT.GetRunTimes(&this, pstBegin, pstEnd, pCount, rgstTaskTimes);
			}
			public HRESULT GetNextRunTime(SYSTEMTIME* pstNextRun) mut
			{
				return VT.GetNextRunTime(&this, pstNextRun);
			}
			public HRESULT SetIdleWait(uint16 wIdleMinutes, uint16 wDeadlineMinutes) mut
			{
				return VT.SetIdleWait(&this, wIdleMinutes, wDeadlineMinutes);
			}
			public HRESULT GetIdleWait(uint16* pwIdleMinutes, uint16* pwDeadlineMinutes) mut
			{
				return VT.GetIdleWait(&this, pwIdleMinutes, pwDeadlineMinutes);
			}
			public HRESULT Run() mut
			{
				return VT.Run(&this);
			}
			public HRESULT Terminate() mut
			{
				return VT.Terminate(&this);
			}
			public HRESULT EditWorkItem(HWND hParent, uint32 dwReserved) mut
			{
				return VT.EditWorkItem(&this, hParent, dwReserved);
			}
			public HRESULT GetMostRecentRunTime(SYSTEMTIME* pstLastRun) mut
			{
				return VT.GetMostRecentRunTime(&this, pstLastRun);
			}
			public HRESULT GetStatus(HRESULT* phrStatus) mut
			{
				return VT.GetStatus(&this, phrStatus);
			}
			public HRESULT GetExitCode(uint32* pdwExitCode) mut
			{
				return VT.GetExitCode(&this, pdwExitCode);
			}
			public HRESULT SetComment(PWSTR pwszComment) mut
			{
				return VT.SetComment(&this, pwszComment);
			}
			public HRESULT GetComment(PWSTR* ppwszComment) mut
			{
				return VT.GetComment(&this, ppwszComment);
			}
			public HRESULT SetCreator(PWSTR pwszCreator) mut
			{
				return VT.SetCreator(&this, pwszCreator);
			}
			public HRESULT GetCreator(PWSTR* ppwszCreator) mut
			{
				return VT.GetCreator(&this, ppwszCreator);
			}
			public HRESULT SetWorkItemData(uint16 cbData, uint8* rgbData) mut
			{
				return VT.SetWorkItemData(&this, cbData, rgbData);
			}
			public HRESULT GetWorkItemData(uint16* pcbData, uint8** prgbData) mut
			{
				return VT.GetWorkItemData(&this, pcbData, prgbData);
			}
			public HRESULT SetErrorRetryCount(uint16 wRetryCount) mut
			{
				return VT.SetErrorRetryCount(&this, wRetryCount);
			}
			public HRESULT GetErrorRetryCount(uint16* pwRetryCount) mut
			{
				return VT.GetErrorRetryCount(&this, pwRetryCount);
			}
			public HRESULT SetErrorRetryInterval(uint16 wRetryInterval) mut
			{
				return VT.SetErrorRetryInterval(&this, wRetryInterval);
			}
			public HRESULT GetErrorRetryInterval(uint16* pwRetryInterval) mut
			{
				return VT.GetErrorRetryInterval(&this, pwRetryInterval);
			}
			public HRESULT SetFlags(uint32 dwFlags) mut
			{
				return VT.SetFlags(&this, dwFlags);
			}
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			public HRESULT SetAccountInformation(PWSTR pwszAccountName, PWSTR pwszPassword) mut
			{
				return VT.SetAccountInformation(&this, pwszAccountName, pwszPassword);
			}
			public HRESULT GetAccountInformation(PWSTR* ppwszAccountName) mut
			{
				return VT.GetAccountInformation(&this, ppwszAccountName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IScheduledWorkItem *self, uint16* piNewTrigger, ITaskTrigger** ppTrigger) CreateTrigger;
				public new function HRESULT(IScheduledWorkItem *self, uint16 iTrigger) DeleteTrigger;
				public new function HRESULT(IScheduledWorkItem *self, uint16* pwCount) GetTriggerCount;
				public new function HRESULT(IScheduledWorkItem *self, uint16 iTrigger, ITaskTrigger** ppTrigger) GetTrigger;
				public new function HRESULT(IScheduledWorkItem *self, uint16 iTrigger, PWSTR* ppwszTrigger) GetTriggerString;
				public new function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstBegin, SYSTEMTIME* pstEnd, uint16* pCount, SYSTEMTIME** rgstTaskTimes) GetRunTimes;
				public new function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstNextRun) GetNextRunTime;
				public new function HRESULT(IScheduledWorkItem *self, uint16 wIdleMinutes, uint16 wDeadlineMinutes) SetIdleWait;
				public new function HRESULT(IScheduledWorkItem *self, uint16* pwIdleMinutes, uint16* pwDeadlineMinutes) GetIdleWait;
				public new function HRESULT(IScheduledWorkItem *self) Run;
				public new function HRESULT(IScheduledWorkItem *self) Terminate;
				public new function HRESULT(IScheduledWorkItem *self, HWND hParent, uint32 dwReserved) EditWorkItem;
				public new function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstLastRun) GetMostRecentRunTime;
				public new function HRESULT(IScheduledWorkItem *self, HRESULT* phrStatus) GetStatus;
				public new function HRESULT(IScheduledWorkItem *self, uint32* pdwExitCode) GetExitCode;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR pwszComment) SetComment;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszComment) GetComment;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR pwszCreator) SetCreator;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszCreator) GetCreator;
				public new function HRESULT(IScheduledWorkItem *self, uint16 cbData, uint8* rgbData) SetWorkItemData;
				public new function HRESULT(IScheduledWorkItem *self, uint16* pcbData, uint8** prgbData) GetWorkItemData;
				public new function HRESULT(IScheduledWorkItem *self, uint16 wRetryCount) SetErrorRetryCount;
				public new function HRESULT(IScheduledWorkItem *self, uint16* pwRetryCount) GetErrorRetryCount;
				public new function HRESULT(IScheduledWorkItem *self, uint16 wRetryInterval) SetErrorRetryInterval;
				public new function HRESULT(IScheduledWorkItem *self, uint16* pwRetryInterval) GetErrorRetryInterval;
				public new function HRESULT(IScheduledWorkItem *self, uint32 dwFlags) SetFlags;
				public new function HRESULT(IScheduledWorkItem *self, uint32* pdwFlags) ComGetFlags;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR pwszAccountName, PWSTR pwszPassword) SetAccountInformation;
				public new function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszAccountName) GetAccountInformation;
			}
		}
		[CRepr]
		public struct ITask : IScheduledWorkItem
		{
			public const new Guid IID = .(0x148bd524, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetApplicationName(PWSTR pwszApplicationName) mut
			{
				return VT.SetApplicationName(&this, pwszApplicationName);
			}
			public HRESULT GetApplicationName(PWSTR* ppwszApplicationName) mut
			{
				return VT.GetApplicationName(&this, ppwszApplicationName);
			}
			public HRESULT SetParameters(PWSTR pwszParameters) mut
			{
				return VT.SetParameters(&this, pwszParameters);
			}
			public HRESULT GetParameters(PWSTR* ppwszParameters) mut
			{
				return VT.GetParameters(&this, ppwszParameters);
			}
			public HRESULT SetWorkingDirectory(PWSTR pwszWorkingDirectory) mut
			{
				return VT.SetWorkingDirectory(&this, pwszWorkingDirectory);
			}
			public HRESULT GetWorkingDirectory(PWSTR* ppwszWorkingDirectory) mut
			{
				return VT.GetWorkingDirectory(&this, ppwszWorkingDirectory);
			}
			public HRESULT SetPriority(uint32 dwPriority) mut
			{
				return VT.SetPriority(&this, dwPriority);
			}
			public HRESULT GetPriority(uint32* pdwPriority) mut
			{
				return VT.GetPriority(&this, pdwPriority);
			}
			public HRESULT SetTaskFlags(uint32 dwFlags) mut
			{
				return VT.SetTaskFlags(&this, dwFlags);
			}
			public HRESULT GetTaskFlags(uint32* pdwFlags) mut
			{
				return VT.GetTaskFlags(&this, pdwFlags);
			}
			public HRESULT SetMaxRunTime(uint32 dwMaxRunTimeMS) mut
			{
				return VT.SetMaxRunTime(&this, dwMaxRunTimeMS);
			}
			public HRESULT GetMaxRunTime(uint32* pdwMaxRunTimeMS) mut
			{
				return VT.GetMaxRunTime(&this, pdwMaxRunTimeMS);
			}
			[CRepr]
			public struct VTable : IScheduledWorkItem.VTable
			{
				public new function HRESULT(ITask *self, PWSTR pwszApplicationName) SetApplicationName;
				public new function HRESULT(ITask *self, PWSTR* ppwszApplicationName) GetApplicationName;
				public new function HRESULT(ITask *self, PWSTR pwszParameters) SetParameters;
				public new function HRESULT(ITask *self, PWSTR* ppwszParameters) GetParameters;
				public new function HRESULT(ITask *self, PWSTR pwszWorkingDirectory) SetWorkingDirectory;
				public new function HRESULT(ITask *self, PWSTR* ppwszWorkingDirectory) GetWorkingDirectory;
				public new function HRESULT(ITask *self, uint32 dwPriority) SetPriority;
				public new function HRESULT(ITask *self, uint32* pdwPriority) GetPriority;
				public new function HRESULT(ITask *self, uint32 dwFlags) SetTaskFlags;
				public new function HRESULT(ITask *self, uint32* pdwFlags) GetTaskFlags;
				public new function HRESULT(ITask *self, uint32 dwMaxRunTimeMS) SetMaxRunTime;
				public new function HRESULT(ITask *self, uint32* pdwMaxRunTimeMS) GetMaxRunTime;
			}
		}
		[CRepr]
		public struct IEnumWorkItems : IUnknown
		{
			public const new Guid IID = .(0x148bd528, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, PWSTR** rgpwszNames, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgpwszNames, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumWorkItems** ppEnumWorkItems) mut
			{
				return VT.Clone(&this, ppEnumWorkItems);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumWorkItems *self, uint32 celt, PWSTR** rgpwszNames, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumWorkItems *self, uint32 celt) Skip;
				public new function HRESULT(IEnumWorkItems *self) Reset;
				public new function HRESULT(IEnumWorkItems *self, IEnumWorkItems** ppEnumWorkItems) Clone;
			}
		}
		[CRepr]
		public struct ITaskScheduler : IUnknown
		{
			public const new Guid IID = .(0x148bd527, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTargetComputer(PWSTR pwszComputer) mut
			{
				return VT.SetTargetComputer(&this, pwszComputer);
			}
			public HRESULT GetTargetComputer(PWSTR* ppwszComputer) mut
			{
				return VT.GetTargetComputer(&this, ppwszComputer);
			}
			public HRESULT Enum(IEnumWorkItems** ppEnumWorkItems) mut
			{
				return VT.Enum(&this, ppEnumWorkItems);
			}
			public HRESULT Activate(PWSTR pwszName, Guid* riid, IUnknown** ppUnk) mut
			{
				return VT.Activate(&this, pwszName, riid, ppUnk);
			}
			public HRESULT Delete(PWSTR pwszName) mut
			{
				return VT.Delete(&this, pwszName);
			}
			public HRESULT NewWorkItem(PWSTR pwszTaskName, Guid* rclsid, Guid* riid, IUnknown** ppUnk) mut
			{
				return VT.NewWorkItem(&this, pwszTaskName, rclsid, riid, ppUnk);
			}
			public HRESULT AddWorkItem(PWSTR pwszTaskName, IScheduledWorkItem* pWorkItem) mut
			{
				return VT.AddWorkItem(&this, pwszTaskName, pWorkItem);
			}
			public HRESULT IsOfType(PWSTR pwszName, Guid* riid) mut
			{
				return VT.IsOfType(&this, pwszName, riid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszComputer) SetTargetComputer;
				public new function HRESULT(ITaskScheduler *self, PWSTR* ppwszComputer) GetTargetComputer;
				public new function HRESULT(ITaskScheduler *self, IEnumWorkItems** ppEnumWorkItems) Enum;
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszName, Guid* riid, IUnknown** ppUnk) Activate;
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszName) Delete;
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszTaskName, Guid* rclsid, Guid* riid, IUnknown** ppUnk) NewWorkItem;
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszTaskName, IScheduledWorkItem* pWorkItem) AddWorkItem;
				public new function HRESULT(ITaskScheduler *self, PWSTR pwszName, Guid* riid) IsOfType;
			}
		}
		[CRepr]
		public struct IProvideTaskPage : IUnknown
		{
			public const new Guid IID = .(0x4086658a, 0xcbbb, 0x11cf, 0xb6, 0x04, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPage(TASKPAGE tpType, BOOL fPersistChanges, HPROPSHEETPAGE* phPage) mut
			{
				return VT.GetPage(&this, tpType, fPersistChanges, phPage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProvideTaskPage *self, TASKPAGE tpType, BOOL fPersistChanges, HPROPSHEETPAGE* phPage) GetPage;
			}
		}
		[CRepr]
		public struct ITaskFolderCollection : IDispatch
		{
			public const new Guid IID = .(0x79184a66, 0x8664, 0x423f, 0x97, 0xf1, 0x63, 0x73, 0x56, 0xa5, 0xd8, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(VARIANT index, ITaskFolder** ppFolder) mut
			{
				return VT.get_Item(&this, index, ppFolder);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskFolderCollection *self, int32* pCount) get_Count;
				public new function HRESULT(ITaskFolderCollection *self, VARIANT index, ITaskFolder** ppFolder) get_Item;
				public new function HRESULT(ITaskFolderCollection *self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ITaskService : IDispatch
		{
			public const new Guid IID = .(0x2faba4c7, 0x4da9, 0x4013, 0x96, 0x97, 0x20, 0xcc, 0x3f, 0xd4, 0x0f, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFolder(BSTR path, ITaskFolder** ppFolder) mut
			{
				return VT.GetFolder(&this, path, ppFolder);
			}
			public HRESULT GetRunningTasks(int32 flags, IRunningTaskCollection** ppRunningTasks) mut
			{
				return VT.GetRunningTasks(&this, flags, ppRunningTasks);
			}
			public HRESULT NewTask(uint32 flags, ITaskDefinition** ppDefinition) mut
			{
				return VT.NewTask(&this, flags, ppDefinition);
			}
			public HRESULT Connect(VARIANT serverName, VARIANT user, VARIANT domain, VARIANT password) mut
			{
				return VT.Connect(&this, serverName, user, domain, password);
			}
			public HRESULT get_Connected(int16* pConnected) mut
			{
				return VT.get_Connected(&this, pConnected);
			}
			public HRESULT get_TargetServer(BSTR* pServer) mut
			{
				return VT.get_TargetServer(&this, pServer);
			}
			public HRESULT get_ConnectedUser(BSTR* pUser) mut
			{
				return VT.get_ConnectedUser(&this, pUser);
			}
			public HRESULT get_ConnectedDomain(BSTR* pDomain) mut
			{
				return VT.get_ConnectedDomain(&this, pDomain);
			}
			public HRESULT get_HighestVersion(uint32* pVersion) mut
			{
				return VT.get_HighestVersion(&this, pVersion);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskService *self, BSTR path, ITaskFolder** ppFolder) GetFolder;
				public new function HRESULT(ITaskService *self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetRunningTasks;
				public new function HRESULT(ITaskService *self, uint32 flags, ITaskDefinition** ppDefinition) NewTask;
				public new function HRESULT(ITaskService *self, VARIANT serverName, VARIANT user, VARIANT domain, VARIANT password) Connect;
				public new function HRESULT(ITaskService *self, int16* pConnected) get_Connected;
				public new function HRESULT(ITaskService *self, BSTR* pServer) get_TargetServer;
				public new function HRESULT(ITaskService *self, BSTR* pUser) get_ConnectedUser;
				public new function HRESULT(ITaskService *self, BSTR* pDomain) get_ConnectedDomain;
				public new function HRESULT(ITaskService *self, uint32* pVersion) get_HighestVersion;
			}
		}
		[CRepr]
		public struct ITaskHandler : IUnknown
		{
			public const new Guid IID = .(0x839d7762, 0x5121, 0x4009, 0x92, 0x34, 0x4f, 0x0d, 0x19, 0x39, 0x4f, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(IUnknown* pHandlerServices, BSTR data) mut
			{
				return VT.Start(&this, pHandlerServices, data);
			}
			public HRESULT Stop(HRESULT* pRetCode) mut
			{
				return VT.Stop(&this, pRetCode);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskHandler *self, IUnknown* pHandlerServices, BSTR data) Start;
				public new function HRESULT(ITaskHandler *self, HRESULT* pRetCode) Stop;
				public new function HRESULT(ITaskHandler *self) Pause;
				public new function HRESULT(ITaskHandler *self) Resume;
			}
		}
		[CRepr]
		public struct ITaskHandlerStatus : IUnknown
		{
			public const new Guid IID = .(0xeaec7a8f, 0x27a0, 0x4ddc, 0x86, 0x75, 0x14, 0x72, 0x6a, 0x01, 0xa3, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateStatus(int16 percentComplete, BSTR statusMessage) mut
			{
				return VT.UpdateStatus(&this, percentComplete, statusMessage);
			}
			public HRESULT TaskCompleted(HRESULT taskErrCode) mut
			{
				return VT.TaskCompleted(&this, taskErrCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskHandlerStatus *self, int16 percentComplete, BSTR statusMessage) UpdateStatus;
				public new function HRESULT(ITaskHandlerStatus *self, HRESULT taskErrCode) TaskCompleted;
			}
		}
		[CRepr]
		public struct ITaskVariables : IUnknown
		{
			public const new Guid IID = .(0x3e4c9351, 0xd966, 0x4b8b, 0xbb, 0x87, 0xce, 0xba, 0x68, 0xbb, 0x01, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInput(BSTR* pInput) mut
			{
				return VT.GetInput(&this, pInput);
			}
			public HRESULT SetOutput(BSTR input) mut
			{
				return VT.SetOutput(&this, input);
			}
			public HRESULT GetContext(BSTR* pContext) mut
			{
				return VT.GetContext(&this, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskVariables *self, BSTR* pInput) GetInput;
				public new function HRESULT(ITaskVariables *self, BSTR input) SetOutput;
				public new function HRESULT(ITaskVariables *self, BSTR* pContext) GetContext;
			}
		}
		[CRepr]
		public struct ITaskNamedValuePair : IDispatch
		{
			public const new Guid IID = .(0x39038068, 0x2b46, 0x4afd, 0x86, 0x62, 0x7b, 0xb6, 0xf8, 0x68, 0xd2, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Value(BSTR* pValue) mut
			{
				return VT.get_Value(&this, pValue);
			}
			public HRESULT put_Value(BSTR value) mut
			{
				return VT.put_Value(&this, value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskNamedValuePair *self, BSTR* pName) get_Name;
				public new function HRESULT(ITaskNamedValuePair *self, BSTR name) put_Name;
				public new function HRESULT(ITaskNamedValuePair *self, BSTR* pValue) get_Value;
				public new function HRESULT(ITaskNamedValuePair *self, BSTR value) put_Value;
			}
		}
		[CRepr]
		public struct ITaskNamedValueCollection : IDispatch
		{
			public const new Guid IID = .(0xb4ef826b, 0x63c3, 0x46e4, 0xa5, 0x04, 0xef, 0x69, 0xe4, 0xf7, 0xea, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(int32 index, ITaskNamedValuePair** ppPair) mut
			{
				return VT.get_Item(&this, index, ppPair);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			public HRESULT Create(BSTR name, BSTR value, ITaskNamedValuePair** ppPair) mut
			{
				return VT.Create(&this, name, value, ppPair);
			}
			public HRESULT Remove(int32 index) mut
			{
				return VT.Remove(&this, index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskNamedValueCollection *self, int32* pCount) get_Count;
				public new function HRESULT(ITaskNamedValueCollection *self, int32 index, ITaskNamedValuePair** ppPair) get_Item;
				public new function HRESULT(ITaskNamedValueCollection *self, IUnknown** ppEnum) get__NewEnum;
				public new function HRESULT(ITaskNamedValueCollection *self, BSTR name, BSTR value, ITaskNamedValuePair** ppPair) Create;
				public new function HRESULT(ITaskNamedValueCollection *self, int32 index) Remove;
				public new function HRESULT(ITaskNamedValueCollection *self) Clear;
			}
		}
		[CRepr]
		public struct IRunningTask : IDispatch
		{
			public const new Guid IID = .(0x653758fb, 0x7b9a, 0x4f1e, 0xa4, 0x71, 0xbe, 0xeb, 0x8e, 0x9b, 0x83, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT get_InstanceGuid(BSTR* pGuid) mut
			{
				return VT.get_InstanceGuid(&this, pGuid);
			}
			public HRESULT get_Path(BSTR* pPath) mut
			{
				return VT.get_Path(&this, pPath);
			}
			public HRESULT get_State(TASK_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			public HRESULT get_CurrentAction(BSTR* pName) mut
			{
				return VT.get_CurrentAction(&this, pName);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT get_EnginePID(uint32* pPID) mut
			{
				return VT.get_EnginePID(&this, pPID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRunningTask *self, BSTR* pName) get_Name;
				public new function HRESULT(IRunningTask *self, BSTR* pGuid) get_InstanceGuid;
				public new function HRESULT(IRunningTask *self, BSTR* pPath) get_Path;
				public new function HRESULT(IRunningTask *self, TASK_STATE* pState) get_State;
				public new function HRESULT(IRunningTask *self, BSTR* pName) get_CurrentAction;
				public new function HRESULT(IRunningTask *self) Stop;
				public new function HRESULT(IRunningTask *self) Refresh;
				public new function HRESULT(IRunningTask *self, uint32* pPID) get_EnginePID;
			}
		}
		[CRepr]
		public struct IRunningTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x6a67614b, 0x6828, 0x4fec, 0xaa, 0x54, 0x6d, 0x52, 0xe8, 0xf1, 0xf2, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(VARIANT index, IRunningTask** ppRunningTask) mut
			{
				return VT.get_Item(&this, index, ppRunningTask);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRunningTaskCollection *self, int32* pCount) get_Count;
				public new function HRESULT(IRunningTaskCollection *self, VARIANT index, IRunningTask** ppRunningTask) get_Item;
				public new function HRESULT(IRunningTaskCollection *self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IRegisteredTask : IDispatch
		{
			public const new Guid IID = .(0x9c86f320, 0xdee3, 0x4dd1, 0xb9, 0x72, 0xa3, 0x03, 0xf2, 0x6b, 0x06, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT get_Path(BSTR* pPath) mut
			{
				return VT.get_Path(&this, pPath);
			}
			public HRESULT get_State(TASK_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			public HRESULT get_Enabled(int16* pEnabled) mut
			{
				return VT.get_Enabled(&this, pEnabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT Run(VARIANT @params, IRunningTask** ppRunningTask) mut
			{
				return VT.Run(&this, @params, ppRunningTask);
			}
			public HRESULT RunEx(VARIANT @params, int32 flags, int32 sessionID, BSTR user, IRunningTask** ppRunningTask) mut
			{
				return VT.RunEx(&this, @params, flags, sessionID, user, ppRunningTask);
			}
			public HRESULT GetInstances(int32 flags, IRunningTaskCollection** ppRunningTasks) mut
			{
				return VT.GetInstances(&this, flags, ppRunningTasks);
			}
			public HRESULT get_LastRunTime(double* pLastRunTime) mut
			{
				return VT.get_LastRunTime(&this, pLastRunTime);
			}
			public HRESULT get_LastTaskResult(int32* pLastTaskResult) mut
			{
				return VT.get_LastTaskResult(&this, pLastTaskResult);
			}
			public HRESULT get_NumberOfMissedRuns(int32* pNumberOfMissedRuns) mut
			{
				return VT.get_NumberOfMissedRuns(&this, pNumberOfMissedRuns);
			}
			public HRESULT get_NextRunTime(double* pNextRunTime) mut
			{
				return VT.get_NextRunTime(&this, pNextRunTime);
			}
			public HRESULT get_Definition(ITaskDefinition** ppDefinition) mut
			{
				return VT.get_Definition(&this, ppDefinition);
			}
			public HRESULT get_Xml(BSTR* pXml) mut
			{
				return VT.get_Xml(&this, pXml);
			}
			public HRESULT GetSecurityDescriptor(int32 securityInformation, BSTR* pSddl) mut
			{
				return VT.GetSecurityDescriptor(&this, securityInformation, pSddl);
			}
			public HRESULT SetSecurityDescriptor(BSTR sddl, int32 flags) mut
			{
				return VT.SetSecurityDescriptor(&this, sddl, flags);
			}
			public HRESULT Stop(int32 flags) mut
			{
				return VT.Stop(&this, flags);
			}
			public HRESULT GetRunTimes(SYSTEMTIME* pstStart, SYSTEMTIME* pstEnd, uint32* pCount, SYSTEMTIME** pRunTimes) mut
			{
				return VT.GetRunTimes(&this, pstStart, pstEnd, pCount, pRunTimes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRegisteredTask *self, BSTR* pName) get_Name;
				public new function HRESULT(IRegisteredTask *self, BSTR* pPath) get_Path;
				public new function HRESULT(IRegisteredTask *self, TASK_STATE* pState) get_State;
				public new function HRESULT(IRegisteredTask *self, int16* pEnabled) get_Enabled;
				public new function HRESULT(IRegisteredTask *self, int16 enabled) put_Enabled;
				public new function HRESULT(IRegisteredTask *self, VARIANT @params, IRunningTask** ppRunningTask) Run;
				public new function HRESULT(IRegisteredTask *self, VARIANT @params, int32 flags, int32 sessionID, BSTR user, IRunningTask** ppRunningTask) RunEx;
				public new function HRESULT(IRegisteredTask *self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetInstances;
				public new function HRESULT(IRegisteredTask *self, double* pLastRunTime) get_LastRunTime;
				public new function HRESULT(IRegisteredTask *self, int32* pLastTaskResult) get_LastTaskResult;
				public new function HRESULT(IRegisteredTask *self, int32* pNumberOfMissedRuns) get_NumberOfMissedRuns;
				public new function HRESULT(IRegisteredTask *self, double* pNextRunTime) get_NextRunTime;
				public new function HRESULT(IRegisteredTask *self, ITaskDefinition** ppDefinition) get_Definition;
				public new function HRESULT(IRegisteredTask *self, BSTR* pXml) get_Xml;
				public new function HRESULT(IRegisteredTask *self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
				public new function HRESULT(IRegisteredTask *self, BSTR sddl, int32 flags) SetSecurityDescriptor;
				public new function HRESULT(IRegisteredTask *self, int32 flags) Stop;
				public new function HRESULT(IRegisteredTask *self, SYSTEMTIME* pstStart, SYSTEMTIME* pstEnd, uint32* pCount, SYSTEMTIME** pRunTimes) GetRunTimes;
			}
		}
		[CRepr]
		public struct ITrigger : IDispatch
		{
			public const new Guid IID = .(0x09941815, 0xea89, 0x4b5b, 0x89, 0xe0, 0x2a, 0x77, 0x38, 0x01, 0xfa, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(TASK_TRIGGER_TYPE2* pType) mut
			{
				return VT.get_Type(&this, pType);
			}
			public HRESULT get_Id(BSTR* pId) mut
			{
				return VT.get_Id(&this, pId);
			}
			public HRESULT put_Id(BSTR id) mut
			{
				return VT.put_Id(&this, id);
			}
			public HRESULT get_Repetition(IRepetitionPattern** ppRepeat) mut
			{
				return VT.get_Repetition(&this, ppRepeat);
			}
			public HRESULT put_Repetition(IRepetitionPattern* pRepeat) mut
			{
				return VT.put_Repetition(&this, pRepeat);
			}
			public HRESULT get_ExecutionTimeLimit(BSTR* pTimeLimit) mut
			{
				return VT.get_ExecutionTimeLimit(&this, pTimeLimit);
			}
			public HRESULT put_ExecutionTimeLimit(BSTR timelimit) mut
			{
				return VT.put_ExecutionTimeLimit(&this, timelimit);
			}
			public HRESULT get_StartBoundary(BSTR* pStart) mut
			{
				return VT.get_StartBoundary(&this, pStart);
			}
			public HRESULT put_StartBoundary(BSTR start) mut
			{
				return VT.put_StartBoundary(&this, start);
			}
			public HRESULT get_EndBoundary(BSTR* pEnd) mut
			{
				return VT.get_EndBoundary(&this, pEnd);
			}
			public HRESULT put_EndBoundary(BSTR end) mut
			{
				return VT.put_EndBoundary(&this, end);
			}
			public HRESULT get_Enabled(int16* pEnabled) mut
			{
				return VT.get_Enabled(&this, pEnabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITrigger *self, TASK_TRIGGER_TYPE2* pType) get_Type;
				public new function HRESULT(ITrigger *self, BSTR* pId) get_Id;
				public new function HRESULT(ITrigger *self, BSTR id) put_Id;
				public new function HRESULT(ITrigger *self, IRepetitionPattern** ppRepeat) get_Repetition;
				public new function HRESULT(ITrigger *self, IRepetitionPattern* pRepeat) put_Repetition;
				public new function HRESULT(ITrigger *self, BSTR* pTimeLimit) get_ExecutionTimeLimit;
				public new function HRESULT(ITrigger *self, BSTR timelimit) put_ExecutionTimeLimit;
				public new function HRESULT(ITrigger *self, BSTR* pStart) get_StartBoundary;
				public new function HRESULT(ITrigger *self, BSTR start) put_StartBoundary;
				public new function HRESULT(ITrigger *self, BSTR* pEnd) get_EndBoundary;
				public new function HRESULT(ITrigger *self, BSTR end) put_EndBoundary;
				public new function HRESULT(ITrigger *self, int16* pEnabled) get_Enabled;
				public new function HRESULT(ITrigger *self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct IIdleTrigger : ITrigger
		{
			public const new Guid IID = .(0xd537d2b0, 0x9fb3, 0x4d34, 0x97, 0x39, 0x1f, 0xf5, 0xce, 0x7b, 0x1e, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
			}
		}
		[CRepr]
		public struct ILogonTrigger : ITrigger
		{
			public const new Guid IID = .(0x72dade38, 0xfae4, 0x4b3e, 0xba, 0xf4, 0x5d, 0x00, 0x9a, 0xf0, 0x2b, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(BSTR* pDelay) mut
			{
				return VT.get_Delay(&this, pDelay);
			}
			public HRESULT put_Delay(BSTR delay) mut
			{
				return VT.put_Delay(&this, delay);
			}
			public HRESULT get_UserId(BSTR* pUser) mut
			{
				return VT.get_UserId(&this, pUser);
			}
			public HRESULT put_UserId(BSTR user) mut
			{
				return VT.put_UserId(&this, user);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(ILogonTrigger *self, BSTR* pDelay) get_Delay;
				public new function HRESULT(ILogonTrigger *self, BSTR delay) put_Delay;
				public new function HRESULT(ILogonTrigger *self, BSTR* pUser) get_UserId;
				public new function HRESULT(ILogonTrigger *self, BSTR user) put_UserId;
			}
		}
		[CRepr]
		public struct ISessionStateChangeTrigger : ITrigger
		{
			public const new Guid IID = .(0x754da71b, 0x4385, 0x4475, 0x9d, 0xd9, 0x59, 0x82, 0x94, 0xfa, 0x36, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(BSTR* pDelay) mut
			{
				return VT.get_Delay(&this, pDelay);
			}
			public HRESULT put_Delay(BSTR delay) mut
			{
				return VT.put_Delay(&this, delay);
			}
			public HRESULT get_UserId(BSTR* pUser) mut
			{
				return VT.get_UserId(&this, pUser);
			}
			public HRESULT put_UserId(BSTR user) mut
			{
				return VT.put_UserId(&this, user);
			}
			public HRESULT get_StateChange(TASK_SESSION_STATE_CHANGE_TYPE* pType) mut
			{
				return VT.get_StateChange(&this, pType);
			}
			public HRESULT put_StateChange(TASK_SESSION_STATE_CHANGE_TYPE type) mut
			{
				return VT.put_StateChange(&this, type);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(ISessionStateChangeTrigger *self, BSTR* pDelay) get_Delay;
				public new function HRESULT(ISessionStateChangeTrigger *self, BSTR delay) put_Delay;
				public new function HRESULT(ISessionStateChangeTrigger *self, BSTR* pUser) get_UserId;
				public new function HRESULT(ISessionStateChangeTrigger *self, BSTR user) put_UserId;
				public new function HRESULT(ISessionStateChangeTrigger *self, TASK_SESSION_STATE_CHANGE_TYPE* pType) get_StateChange;
				public new function HRESULT(ISessionStateChangeTrigger *self, TASK_SESSION_STATE_CHANGE_TYPE type) put_StateChange;
			}
		}
		[CRepr]
		public struct IEventTrigger : ITrigger
		{
			public const new Guid IID = .(0xd45b0167, 0x9653, 0x4eef, 0xb9, 0x4f, 0x07, 0x32, 0xca, 0x7a, 0xf2, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Subscription(BSTR* pQuery) mut
			{
				return VT.get_Subscription(&this, pQuery);
			}
			public HRESULT put_Subscription(BSTR query) mut
			{
				return VT.put_Subscription(&this, query);
			}
			public HRESULT get_Delay(BSTR* pDelay) mut
			{
				return VT.get_Delay(&this, pDelay);
			}
			public HRESULT put_Delay(BSTR delay) mut
			{
				return VT.put_Delay(&this, delay);
			}
			public HRESULT get_ValueQueries(ITaskNamedValueCollection** ppNamedXPaths) mut
			{
				return VT.get_ValueQueries(&this, ppNamedXPaths);
			}
			public HRESULT put_ValueQueries(ITaskNamedValueCollection* pNamedXPaths) mut
			{
				return VT.put_ValueQueries(&this, pNamedXPaths);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IEventTrigger *self, BSTR* pQuery) get_Subscription;
				public new function HRESULT(IEventTrigger *self, BSTR query) put_Subscription;
				public new function HRESULT(IEventTrigger *self, BSTR* pDelay) get_Delay;
				public new function HRESULT(IEventTrigger *self, BSTR delay) put_Delay;
				public new function HRESULT(IEventTrigger *self, ITaskNamedValueCollection** ppNamedXPaths) get_ValueQueries;
				public new function HRESULT(IEventTrigger *self, ITaskNamedValueCollection* pNamedXPaths) put_ValueQueries;
			}
		}
		[CRepr]
		public struct ITimeTrigger : ITrigger
		{
			public const new Guid IID = .(0xb45747e0, 0xeba7, 0x4276, 0x9f, 0x29, 0x85, 0xc5, 0xbb, 0x30, 0x00, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RandomDelay(BSTR* pRandomDelay) mut
			{
				return VT.get_RandomDelay(&this, pRandomDelay);
			}
			public HRESULT put_RandomDelay(BSTR randomDelay) mut
			{
				return VT.put_RandomDelay(&this, randomDelay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(ITimeTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
				public new function HRESULT(ITimeTrigger *self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IDailyTrigger : ITrigger
		{
			public const new Guid IID = .(0x126c5cd8, 0xb288, 0x41d5, 0x8d, 0xbf, 0xe4, 0x91, 0x44, 0x6a, 0xdc, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysInterval(int16* pDays) mut
			{
				return VT.get_DaysInterval(&this, pDays);
			}
			public HRESULT put_DaysInterval(int16 days) mut
			{
				return VT.put_DaysInterval(&this, days);
			}
			public HRESULT get_RandomDelay(BSTR* pRandomDelay) mut
			{
				return VT.get_RandomDelay(&this, pRandomDelay);
			}
			public HRESULT put_RandomDelay(BSTR randomDelay) mut
			{
				return VT.put_RandomDelay(&this, randomDelay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IDailyTrigger *self, int16* pDays) get_DaysInterval;
				public new function HRESULT(IDailyTrigger *self, int16 days) put_DaysInterval;
				public new function HRESULT(IDailyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
				public new function HRESULT(IDailyTrigger *self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IWeeklyTrigger : ITrigger
		{
			public const new Guid IID = .(0x5038fc98, 0x82ff, 0x436d, 0x87, 0x28, 0xa5, 0x12, 0xa5, 0x7c, 0x9d, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfWeek(int16* pDays) mut
			{
				return VT.get_DaysOfWeek(&this, pDays);
			}
			public HRESULT put_DaysOfWeek(int16 days) mut
			{
				return VT.put_DaysOfWeek(&this, days);
			}
			public HRESULT get_WeeksInterval(int16* pWeeks) mut
			{
				return VT.get_WeeksInterval(&this, pWeeks);
			}
			public HRESULT put_WeeksInterval(int16 weeks) mut
			{
				return VT.put_WeeksInterval(&this, weeks);
			}
			public HRESULT get_RandomDelay(BSTR* pRandomDelay) mut
			{
				return VT.get_RandomDelay(&this, pRandomDelay);
			}
			public HRESULT put_RandomDelay(BSTR randomDelay) mut
			{
				return VT.put_RandomDelay(&this, randomDelay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IWeeklyTrigger *self, int16* pDays) get_DaysOfWeek;
				public new function HRESULT(IWeeklyTrigger *self, int16 days) put_DaysOfWeek;
				public new function HRESULT(IWeeklyTrigger *self, int16* pWeeks) get_WeeksInterval;
				public new function HRESULT(IWeeklyTrigger *self, int16 weeks) put_WeeksInterval;
				public new function HRESULT(IWeeklyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
				public new function HRESULT(IWeeklyTrigger *self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IMonthlyTrigger : ITrigger
		{
			public const new Guid IID = .(0x97c45ef1, 0x6b02, 0x4a1a, 0x9c, 0x0e, 0x1e, 0xbf, 0xba, 0x15, 0x00, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfMonth(int32* pDays) mut
			{
				return VT.get_DaysOfMonth(&this, pDays);
			}
			public HRESULT put_DaysOfMonth(int32 days) mut
			{
				return VT.put_DaysOfMonth(&this, days);
			}
			public HRESULT get_MonthsOfYear(int16* pMonths) mut
			{
				return VT.get_MonthsOfYear(&this, pMonths);
			}
			public HRESULT put_MonthsOfYear(int16 months) mut
			{
				return VT.put_MonthsOfYear(&this, months);
			}
			public HRESULT get_RunOnLastDayOfMonth(int16* pLastDay) mut
			{
				return VT.get_RunOnLastDayOfMonth(&this, pLastDay);
			}
			public HRESULT put_RunOnLastDayOfMonth(int16 lastDay) mut
			{
				return VT.put_RunOnLastDayOfMonth(&this, lastDay);
			}
			public HRESULT get_RandomDelay(BSTR* pRandomDelay) mut
			{
				return VT.get_RandomDelay(&this, pRandomDelay);
			}
			public HRESULT put_RandomDelay(BSTR randomDelay) mut
			{
				return VT.put_RandomDelay(&this, randomDelay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IMonthlyTrigger *self, int32* pDays) get_DaysOfMonth;
				public new function HRESULT(IMonthlyTrigger *self, int32 days) put_DaysOfMonth;
				public new function HRESULT(IMonthlyTrigger *self, int16* pMonths) get_MonthsOfYear;
				public new function HRESULT(IMonthlyTrigger *self, int16 months) put_MonthsOfYear;
				public new function HRESULT(IMonthlyTrigger *self, int16* pLastDay) get_RunOnLastDayOfMonth;
				public new function HRESULT(IMonthlyTrigger *self, int16 lastDay) put_RunOnLastDayOfMonth;
				public new function HRESULT(IMonthlyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
				public new function HRESULT(IMonthlyTrigger *self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IMonthlyDOWTrigger : ITrigger
		{
			public const new Guid IID = .(0x77d025a3, 0x90fa, 0x43aa, 0xb5, 0x2e, 0xcd, 0xa5, 0x49, 0x9b, 0x94, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfWeek(int16* pDays) mut
			{
				return VT.get_DaysOfWeek(&this, pDays);
			}
			public HRESULT put_DaysOfWeek(int16 days) mut
			{
				return VT.put_DaysOfWeek(&this, days);
			}
			public HRESULT get_WeeksOfMonth(int16* pWeeks) mut
			{
				return VT.get_WeeksOfMonth(&this, pWeeks);
			}
			public HRESULT put_WeeksOfMonth(int16 weeks) mut
			{
				return VT.put_WeeksOfMonth(&this, weeks);
			}
			public HRESULT get_MonthsOfYear(int16* pMonths) mut
			{
				return VT.get_MonthsOfYear(&this, pMonths);
			}
			public HRESULT put_MonthsOfYear(int16 months) mut
			{
				return VT.put_MonthsOfYear(&this, months);
			}
			public HRESULT get_RunOnLastWeekOfMonth(int16* pLastWeek) mut
			{
				return VT.get_RunOnLastWeekOfMonth(&this, pLastWeek);
			}
			public HRESULT put_RunOnLastWeekOfMonth(int16 lastWeek) mut
			{
				return VT.put_RunOnLastWeekOfMonth(&this, lastWeek);
			}
			public HRESULT get_RandomDelay(BSTR* pRandomDelay) mut
			{
				return VT.get_RandomDelay(&this, pRandomDelay);
			}
			public HRESULT put_RandomDelay(BSTR randomDelay) mut
			{
				return VT.put_RandomDelay(&this, randomDelay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IMonthlyDOWTrigger *self, int16* pDays) get_DaysOfWeek;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16 days) put_DaysOfWeek;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16* pWeeks) get_WeeksOfMonth;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16 weeks) put_WeeksOfMonth;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16* pMonths) get_MonthsOfYear;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16 months) put_MonthsOfYear;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16* pLastWeek) get_RunOnLastWeekOfMonth;
				public new function HRESULT(IMonthlyDOWTrigger *self, int16 lastWeek) put_RunOnLastWeekOfMonth;
				public new function HRESULT(IMonthlyDOWTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
				public new function HRESULT(IMonthlyDOWTrigger *self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IBootTrigger : ITrigger
		{
			public const new Guid IID = .(0x2a9c35da, 0xd357, 0x41f4, 0xbb, 0xc1, 0x20, 0x7a, 0xc1, 0xb1, 0xf3, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(BSTR* pDelay) mut
			{
				return VT.get_Delay(&this, pDelay);
			}
			public HRESULT put_Delay(BSTR delay) mut
			{
				return VT.put_Delay(&this, delay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IBootTrigger *self, BSTR* pDelay) get_Delay;
				public new function HRESULT(IBootTrigger *self, BSTR delay) put_Delay;
			}
		}
		[CRepr]
		public struct IRegistrationTrigger : ITrigger
		{
			public const new Guid IID = .(0x4c8fec3a, 0xc218, 0x4e0c, 0xb2, 0x3d, 0x62, 0x90, 0x24, 0xdb, 0x91, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(BSTR* pDelay) mut
			{
				return VT.get_Delay(&this, pDelay);
			}
			public HRESULT put_Delay(BSTR delay) mut
			{
				return VT.put_Delay(&this, delay);
			}
			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function HRESULT(IRegistrationTrigger *self, BSTR* pDelay) get_Delay;
				public new function HRESULT(IRegistrationTrigger *self, BSTR delay) put_Delay;
			}
		}
		[CRepr]
		public struct IAction : IDispatch
		{
			public const new Guid IID = .(0xbae54997, 0x48b1, 0x4cbe, 0x99, 0x65, 0xd6, 0xbe, 0x26, 0x3e, 0xbe, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* pId) mut
			{
				return VT.get_Id(&this, pId);
			}
			public HRESULT put_Id(BSTR Id) mut
			{
				return VT.put_Id(&this, Id);
			}
			public HRESULT get_Type(TASK_ACTION_TYPE* pType) mut
			{
				return VT.get_Type(&this, pType);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAction *self, BSTR* pId) get_Id;
				public new function HRESULT(IAction *self, BSTR Id) put_Id;
				public new function HRESULT(IAction *self, TASK_ACTION_TYPE* pType) get_Type;
			}
		}
		[CRepr]
		public struct IExecAction : IAction
		{
			public const new Guid IID = .(0x4c3d624d, 0xfd6b, 0x49a3, 0xb9, 0xb7, 0x09, 0xcb, 0x3c, 0xd3, 0xf0, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pPath) mut
			{
				return VT.get_Path(&this, pPath);
			}
			public HRESULT put_Path(BSTR path) mut
			{
				return VT.put_Path(&this, path);
			}
			public HRESULT get_Arguments(BSTR* pArgument) mut
			{
				return VT.get_Arguments(&this, pArgument);
			}
			public HRESULT put_Arguments(BSTR argument) mut
			{
				return VT.put_Arguments(&this, argument);
			}
			public HRESULT get_WorkingDirectory(BSTR* pWorkingDirectory) mut
			{
				return VT.get_WorkingDirectory(&this, pWorkingDirectory);
			}
			public HRESULT put_WorkingDirectory(BSTR workingDirectory) mut
			{
				return VT.put_WorkingDirectory(&this, workingDirectory);
			}
			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function HRESULT(IExecAction *self, BSTR* pPath) get_Path;
				public new function HRESULT(IExecAction *self, BSTR path) put_Path;
				public new function HRESULT(IExecAction *self, BSTR* pArgument) get_Arguments;
				public new function HRESULT(IExecAction *self, BSTR argument) put_Arguments;
				public new function HRESULT(IExecAction *self, BSTR* pWorkingDirectory) get_WorkingDirectory;
				public new function HRESULT(IExecAction *self, BSTR workingDirectory) put_WorkingDirectory;
			}
		}
		[CRepr]
		public struct IExecAction2 : IExecAction
		{
			public const new Guid IID = .(0xf2a82542, 0xbda5, 0x4e6b, 0x91, 0x43, 0xe2, 0xbf, 0x4f, 0x89, 0x87, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HideAppWindow(int16* pHideAppWindow) mut
			{
				return VT.get_HideAppWindow(&this, pHideAppWindow);
			}
			public HRESULT put_HideAppWindow(int16 hideAppWindow) mut
			{
				return VT.put_HideAppWindow(&this, hideAppWindow);
			}
			[CRepr]
			public struct VTable : IExecAction.VTable
			{
				public new function HRESULT(IExecAction2 *self, int16* pHideAppWindow) get_HideAppWindow;
				public new function HRESULT(IExecAction2 *self, int16 hideAppWindow) put_HideAppWindow;
			}
		}
		[CRepr]
		public struct IShowMessageAction : IAction
		{
			public const new Guid IID = .(0x505e9e68, 0xaf89, 0x46b8, 0xa3, 0x0f, 0x56, 0x16, 0x2a, 0x83, 0xd5, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Title(BSTR* pTitle) mut
			{
				return VT.get_Title(&this, pTitle);
			}
			public HRESULT put_Title(BSTR title) mut
			{
				return VT.put_Title(&this, title);
			}
			public HRESULT get_MessageBody(BSTR* pMessageBody) mut
			{
				return VT.get_MessageBody(&this, pMessageBody);
			}
			public HRESULT put_MessageBody(BSTR messageBody) mut
			{
				return VT.put_MessageBody(&this, messageBody);
			}
			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function HRESULT(IShowMessageAction *self, BSTR* pTitle) get_Title;
				public new function HRESULT(IShowMessageAction *self, BSTR title) put_Title;
				public new function HRESULT(IShowMessageAction *self, BSTR* pMessageBody) get_MessageBody;
				public new function HRESULT(IShowMessageAction *self, BSTR messageBody) put_MessageBody;
			}
		}
		[CRepr]
		public struct IComHandlerAction : IAction
		{
			public const new Guid IID = .(0x6d2fd252, 0x75c5, 0x4f66, 0x90, 0xba, 0x2a, 0x7d, 0x8c, 0xc3, 0x03, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ClassId(BSTR* pClsid) mut
			{
				return VT.get_ClassId(&this, pClsid);
			}
			public HRESULT put_ClassId(BSTR clsid) mut
			{
				return VT.put_ClassId(&this, clsid);
			}
			public HRESULT get_Data(BSTR* pData) mut
			{
				return VT.get_Data(&this, pData);
			}
			public HRESULT put_Data(BSTR data) mut
			{
				return VT.put_Data(&this, data);
			}
			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function HRESULT(IComHandlerAction *self, BSTR* pClsid) get_ClassId;
				public new function HRESULT(IComHandlerAction *self, BSTR clsid) put_ClassId;
				public new function HRESULT(IComHandlerAction *self, BSTR* pData) get_Data;
				public new function HRESULT(IComHandlerAction *self, BSTR data) put_Data;
			}
		}
		[CRepr]
		public struct IEmailAction : IAction
		{
			public const new Guid IID = .(0x10f62c64, 0x7e16, 0x4314, 0xa0, 0xc2, 0x0c, 0x36, 0x83, 0xf9, 0x9d, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Server(BSTR* pServer) mut
			{
				return VT.get_Server(&this, pServer);
			}
			public HRESULT put_Server(BSTR server) mut
			{
				return VT.put_Server(&this, server);
			}
			public HRESULT get_Subject(BSTR* pSubject) mut
			{
				return VT.get_Subject(&this, pSubject);
			}
			public HRESULT put_Subject(BSTR subject) mut
			{
				return VT.put_Subject(&this, subject);
			}
			public HRESULT get_To(BSTR* pTo) mut
			{
				return VT.get_To(&this, pTo);
			}
			public HRESULT put_To(BSTR to) mut
			{
				return VT.put_To(&this, to);
			}
			public HRESULT get_Cc(BSTR* pCc) mut
			{
				return VT.get_Cc(&this, pCc);
			}
			public HRESULT put_Cc(BSTR cc) mut
			{
				return VT.put_Cc(&this, cc);
			}
			public HRESULT get_Bcc(BSTR* pBcc) mut
			{
				return VT.get_Bcc(&this, pBcc);
			}
			public HRESULT put_Bcc(BSTR bcc) mut
			{
				return VT.put_Bcc(&this, bcc);
			}
			public HRESULT get_ReplyTo(BSTR* pReplyTo) mut
			{
				return VT.get_ReplyTo(&this, pReplyTo);
			}
			public HRESULT put_ReplyTo(BSTR replyTo) mut
			{
				return VT.put_ReplyTo(&this, replyTo);
			}
			public HRESULT get_From(BSTR* pFrom) mut
			{
				return VT.get_From(&this, pFrom);
			}
			public HRESULT put_From(BSTR from) mut
			{
				return VT.put_From(&this, from);
			}
			public HRESULT get_HeaderFields(ITaskNamedValueCollection** ppHeaderFields) mut
			{
				return VT.get_HeaderFields(&this, ppHeaderFields);
			}
			public HRESULT put_HeaderFields(ITaskNamedValueCollection* pHeaderFields) mut
			{
				return VT.put_HeaderFields(&this, pHeaderFields);
			}
			public HRESULT get_Body(BSTR* pBody) mut
			{
				return VT.get_Body(&this, pBody);
			}
			public HRESULT put_Body(BSTR body) mut
			{
				return VT.put_Body(&this, body);
			}
			public HRESULT get_Attachments(SAFEARRAY** pAttachements) mut
			{
				return VT.get_Attachments(&this, pAttachements);
			}
			public HRESULT put_Attachments(SAFEARRAY* pAttachements) mut
			{
				return VT.put_Attachments(&this, pAttachements);
			}
			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function HRESULT(IEmailAction *self, BSTR* pServer) get_Server;
				public new function HRESULT(IEmailAction *self, BSTR server) put_Server;
				public new function HRESULT(IEmailAction *self, BSTR* pSubject) get_Subject;
				public new function HRESULT(IEmailAction *self, BSTR subject) put_Subject;
				public new function HRESULT(IEmailAction *self, BSTR* pTo) get_To;
				public new function HRESULT(IEmailAction *self, BSTR to) put_To;
				public new function HRESULT(IEmailAction *self, BSTR* pCc) get_Cc;
				public new function HRESULT(IEmailAction *self, BSTR cc) put_Cc;
				public new function HRESULT(IEmailAction *self, BSTR* pBcc) get_Bcc;
				public new function HRESULT(IEmailAction *self, BSTR bcc) put_Bcc;
				public new function HRESULT(IEmailAction *self, BSTR* pReplyTo) get_ReplyTo;
				public new function HRESULT(IEmailAction *self, BSTR replyTo) put_ReplyTo;
				public new function HRESULT(IEmailAction *self, BSTR* pFrom) get_From;
				public new function HRESULT(IEmailAction *self, BSTR from) put_From;
				public new function HRESULT(IEmailAction *self, ITaskNamedValueCollection** ppHeaderFields) get_HeaderFields;
				public new function HRESULT(IEmailAction *self, ITaskNamedValueCollection* pHeaderFields) put_HeaderFields;
				public new function HRESULT(IEmailAction *self, BSTR* pBody) get_Body;
				public new function HRESULT(IEmailAction *self, BSTR body) put_Body;
				public new function HRESULT(IEmailAction *self, SAFEARRAY** pAttachements) get_Attachments;
				public new function HRESULT(IEmailAction *self, SAFEARRAY* pAttachements) put_Attachments;
			}
		}
		[CRepr]
		public struct ITriggerCollection : IDispatch
		{
			public const new Guid IID = .(0x85df5081, 0x1b24, 0x4f32, 0x87, 0x8a, 0xd9, 0xd1, 0x4d, 0xf4, 0xcb, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(int32 index, ITrigger** ppTrigger) mut
			{
				return VT.get_Item(&this, index, ppTrigger);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			public HRESULT Create(TASK_TRIGGER_TYPE2 type, ITrigger** ppTrigger) mut
			{
				return VT.Create(&this, type, ppTrigger);
			}
			public HRESULT Remove(VARIANT index) mut
			{
				return VT.Remove(&this, index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITriggerCollection *self, int32* pCount) get_Count;
				public new function HRESULT(ITriggerCollection *self, int32 index, ITrigger** ppTrigger) get_Item;
				public new function HRESULT(ITriggerCollection *self, IUnknown** ppEnum) get__NewEnum;
				public new function HRESULT(ITriggerCollection *self, TASK_TRIGGER_TYPE2 type, ITrigger** ppTrigger) Create;
				public new function HRESULT(ITriggerCollection *self, VARIANT index) Remove;
				public new function HRESULT(ITriggerCollection *self) Clear;
			}
		}
		[CRepr]
		public struct IActionCollection : IDispatch
		{
			public const new Guid IID = .(0x02820e19, 0x7b98, 0x4ed2, 0xb2, 0xe8, 0xfd, 0xcc, 0xce, 0xff, 0x61, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(int32 index, IAction** ppAction) mut
			{
				return VT.get_Item(&this, index, ppAction);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			public HRESULT get_XmlText(BSTR* pText) mut
			{
				return VT.get_XmlText(&this, pText);
			}
			public HRESULT put_XmlText(BSTR text) mut
			{
				return VT.put_XmlText(&this, text);
			}
			public HRESULT Create(TASK_ACTION_TYPE type, IAction** ppAction) mut
			{
				return VT.Create(&this, type, ppAction);
			}
			public HRESULT Remove(VARIANT index) mut
			{
				return VT.Remove(&this, index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_Context(BSTR* pContext) mut
			{
				return VT.get_Context(&this, pContext);
			}
			public HRESULT put_Context(BSTR context) mut
			{
				return VT.put_Context(&this, context);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IActionCollection *self, int32* pCount) get_Count;
				public new function HRESULT(IActionCollection *self, int32 index, IAction** ppAction) get_Item;
				public new function HRESULT(IActionCollection *self, IUnknown** ppEnum) get__NewEnum;
				public new function HRESULT(IActionCollection *self, BSTR* pText) get_XmlText;
				public new function HRESULT(IActionCollection *self, BSTR text) put_XmlText;
				public new function HRESULT(IActionCollection *self, TASK_ACTION_TYPE type, IAction** ppAction) Create;
				public new function HRESULT(IActionCollection *self, VARIANT index) Remove;
				public new function HRESULT(IActionCollection *self) Clear;
				public new function HRESULT(IActionCollection *self, BSTR* pContext) get_Context;
				public new function HRESULT(IActionCollection *self, BSTR context) put_Context;
			}
		}
		[CRepr]
		public struct IPrincipal : IDispatch
		{
			public const new Guid IID = .(0xd98d51e5, 0xc9b4, 0x496a, 0xa9, 0xc1, 0x18, 0x98, 0x02, 0x61, 0xcf, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* pId) mut
			{
				return VT.get_Id(&this, pId);
			}
			public HRESULT put_Id(BSTR Id) mut
			{
				return VT.put_Id(&this, Id);
			}
			public HRESULT get_DisplayName(BSTR* pName) mut
			{
				return VT.get_DisplayName(&this, pName);
			}
			public HRESULT put_DisplayName(BSTR name) mut
			{
				return VT.put_DisplayName(&this, name);
			}
			public HRESULT get_UserId(BSTR* pUser) mut
			{
				return VT.get_UserId(&this, pUser);
			}
			public HRESULT put_UserId(BSTR user) mut
			{
				return VT.put_UserId(&this, user);
			}
			public HRESULT get_LogonType(TASK_LOGON_TYPE* pLogon) mut
			{
				return VT.get_LogonType(&this, pLogon);
			}
			public HRESULT put_LogonType(TASK_LOGON_TYPE logon) mut
			{
				return VT.put_LogonType(&this, logon);
			}
			public HRESULT get_GroupId(BSTR* pGroup) mut
			{
				return VT.get_GroupId(&this, pGroup);
			}
			public HRESULT put_GroupId(BSTR group) mut
			{
				return VT.put_GroupId(&this, group);
			}
			public HRESULT get_RunLevel(TASK_RUNLEVEL_TYPE* pRunLevel) mut
			{
				return VT.get_RunLevel(&this, pRunLevel);
			}
			public HRESULT put_RunLevel(TASK_RUNLEVEL_TYPE runLevel) mut
			{
				return VT.put_RunLevel(&this, runLevel);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPrincipal *self, BSTR* pId) get_Id;
				public new function HRESULT(IPrincipal *self, BSTR Id) put_Id;
				public new function HRESULT(IPrincipal *self, BSTR* pName) get_DisplayName;
				public new function HRESULT(IPrincipal *self, BSTR name) put_DisplayName;
				public new function HRESULT(IPrincipal *self, BSTR* pUser) get_UserId;
				public new function HRESULT(IPrincipal *self, BSTR user) put_UserId;
				public new function HRESULT(IPrincipal *self, TASK_LOGON_TYPE* pLogon) get_LogonType;
				public new function HRESULT(IPrincipal *self, TASK_LOGON_TYPE logon) put_LogonType;
				public new function HRESULT(IPrincipal *self, BSTR* pGroup) get_GroupId;
				public new function HRESULT(IPrincipal *self, BSTR group) put_GroupId;
				public new function HRESULT(IPrincipal *self, TASK_RUNLEVEL_TYPE* pRunLevel) get_RunLevel;
				public new function HRESULT(IPrincipal *self, TASK_RUNLEVEL_TYPE runLevel) put_RunLevel;
			}
		}
		[CRepr]
		public struct IPrincipal2 : IDispatch
		{
			public const new Guid IID = .(0x248919ae, 0xe345, 0x4a6d, 0x8a, 0xeb, 0xe0, 0xd3, 0x16, 0x5c, 0x90, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProcessTokenSidType(TASK_PROCESSTOKENSID_TYPE* pProcessTokenSidType) mut
			{
				return VT.get_ProcessTokenSidType(&this, pProcessTokenSidType);
			}
			public HRESULT put_ProcessTokenSidType(TASK_PROCESSTOKENSID_TYPE processTokenSidType) mut
			{
				return VT.put_ProcessTokenSidType(&this, processTokenSidType);
			}
			public HRESULT get_RequiredPrivilegeCount(int32* pCount) mut
			{
				return VT.get_RequiredPrivilegeCount(&this, pCount);
			}
			public HRESULT get_RequiredPrivilege(int32 index, BSTR* pPrivilege) mut
			{
				return VT.get_RequiredPrivilege(&this, index, pPrivilege);
			}
			public HRESULT AddRequiredPrivilege(BSTR privilege) mut
			{
				return VT.AddRequiredPrivilege(&this, privilege);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPrincipal2 *self, TASK_PROCESSTOKENSID_TYPE* pProcessTokenSidType) get_ProcessTokenSidType;
				public new function HRESULT(IPrincipal2 *self, TASK_PROCESSTOKENSID_TYPE processTokenSidType) put_ProcessTokenSidType;
				public new function HRESULT(IPrincipal2 *self, int32* pCount) get_RequiredPrivilegeCount;
				public new function HRESULT(IPrincipal2 *self, int32 index, BSTR* pPrivilege) get_RequiredPrivilege;
				public new function HRESULT(IPrincipal2 *self, BSTR privilege) AddRequiredPrivilege;
			}
		}
		[CRepr]
		public struct IRegistrationInfo : IDispatch
		{
			public const new Guid IID = .(0x416d8b73, 0xcb41, 0x4ea1, 0x80, 0x5c, 0x9b, 0xe9, 0xa5, 0xac, 0x4a, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* pDescription) mut
			{
				return VT.get_Description(&this, pDescription);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT get_Author(BSTR* pAuthor) mut
			{
				return VT.get_Author(&this, pAuthor);
			}
			public HRESULT put_Author(BSTR author) mut
			{
				return VT.put_Author(&this, author);
			}
			public HRESULT get_Version(BSTR* pVersion) mut
			{
				return VT.get_Version(&this, pVersion);
			}
			public HRESULT put_Version(BSTR version) mut
			{
				return VT.put_Version(&this, version);
			}
			public HRESULT get_Date(BSTR* pDate) mut
			{
				return VT.get_Date(&this, pDate);
			}
			public HRESULT put_Date(BSTR date) mut
			{
				return VT.put_Date(&this, date);
			}
			public HRESULT get_Documentation(BSTR* pDocumentation) mut
			{
				return VT.get_Documentation(&this, pDocumentation);
			}
			public HRESULT put_Documentation(BSTR documentation) mut
			{
				return VT.put_Documentation(&this, documentation);
			}
			public HRESULT get_XmlText(BSTR* pText) mut
			{
				return VT.get_XmlText(&this, pText);
			}
			public HRESULT put_XmlText(BSTR text) mut
			{
				return VT.put_XmlText(&this, text);
			}
			public HRESULT get_URI(BSTR* pUri) mut
			{
				return VT.get_URI(&this, pUri);
			}
			public HRESULT put_URI(BSTR uri) mut
			{
				return VT.put_URI(&this, uri);
			}
			public HRESULT get_SecurityDescriptor(VARIANT* pSddl) mut
			{
				return VT.get_SecurityDescriptor(&this, pSddl);
			}
			public HRESULT put_SecurityDescriptor(VARIANT sddl) mut
			{
				return VT.put_SecurityDescriptor(&this, sddl);
			}
			public HRESULT get_Source(BSTR* pSource) mut
			{
				return VT.get_Source(&this, pSource);
			}
			public HRESULT put_Source(BSTR source) mut
			{
				return VT.put_Source(&this, source);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRegistrationInfo *self, BSTR* pDescription) get_Description;
				public new function HRESULT(IRegistrationInfo *self, BSTR description) put_Description;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pAuthor) get_Author;
				public new function HRESULT(IRegistrationInfo *self, BSTR author) put_Author;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pVersion) get_Version;
				public new function HRESULT(IRegistrationInfo *self, BSTR version) put_Version;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pDate) get_Date;
				public new function HRESULT(IRegistrationInfo *self, BSTR date) put_Date;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pDocumentation) get_Documentation;
				public new function HRESULT(IRegistrationInfo *self, BSTR documentation) put_Documentation;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pText) get_XmlText;
				public new function HRESULT(IRegistrationInfo *self, BSTR text) put_XmlText;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pUri) get_URI;
				public new function HRESULT(IRegistrationInfo *self, BSTR uri) put_URI;
				public new function HRESULT(IRegistrationInfo *self, VARIANT* pSddl) get_SecurityDescriptor;
				public new function HRESULT(IRegistrationInfo *self, VARIANT sddl) put_SecurityDescriptor;
				public new function HRESULT(IRegistrationInfo *self, BSTR* pSource) get_Source;
				public new function HRESULT(IRegistrationInfo *self, BSTR source) put_Source;
			}
		}
		[CRepr]
		public struct ITaskDefinition : IDispatch
		{
			public const new Guid IID = .(0xf5bc8fc5, 0x536d, 0x4f77, 0xb8, 0x52, 0xfb, 0xc1, 0x35, 0x6f, 0xde, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RegistrationInfo(IRegistrationInfo** ppRegistrationInfo) mut
			{
				return VT.get_RegistrationInfo(&this, ppRegistrationInfo);
			}
			public HRESULT put_RegistrationInfo(IRegistrationInfo* pRegistrationInfo) mut
			{
				return VT.put_RegistrationInfo(&this, pRegistrationInfo);
			}
			public HRESULT get_Triggers(ITriggerCollection** ppTriggers) mut
			{
				return VT.get_Triggers(&this, ppTriggers);
			}
			public HRESULT put_Triggers(ITriggerCollection* pTriggers) mut
			{
				return VT.put_Triggers(&this, pTriggers);
			}
			public HRESULT get_Settings(ITaskSettings** ppSettings) mut
			{
				return VT.get_Settings(&this, ppSettings);
			}
			public HRESULT put_Settings(ITaskSettings* pSettings) mut
			{
				return VT.put_Settings(&this, pSettings);
			}
			public HRESULT get_Data(BSTR* pData) mut
			{
				return VT.get_Data(&this, pData);
			}
			public HRESULT put_Data(BSTR data) mut
			{
				return VT.put_Data(&this, data);
			}
			public HRESULT get_Principal(IPrincipal** ppPrincipal) mut
			{
				return VT.get_Principal(&this, ppPrincipal);
			}
			public HRESULT put_Principal(IPrincipal* pPrincipal) mut
			{
				return VT.put_Principal(&this, pPrincipal);
			}
			public HRESULT get_Actions(IActionCollection** ppActions) mut
			{
				return VT.get_Actions(&this, ppActions);
			}
			public HRESULT put_Actions(IActionCollection* pActions) mut
			{
				return VT.put_Actions(&this, pActions);
			}
			public HRESULT get_XmlText(BSTR* pXml) mut
			{
				return VT.get_XmlText(&this, pXml);
			}
			public HRESULT put_XmlText(BSTR xml) mut
			{
				return VT.put_XmlText(&this, xml);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskDefinition *self, IRegistrationInfo** ppRegistrationInfo) get_RegistrationInfo;
				public new function HRESULT(ITaskDefinition *self, IRegistrationInfo* pRegistrationInfo) put_RegistrationInfo;
				public new function HRESULT(ITaskDefinition *self, ITriggerCollection** ppTriggers) get_Triggers;
				public new function HRESULT(ITaskDefinition *self, ITriggerCollection* pTriggers) put_Triggers;
				public new function HRESULT(ITaskDefinition *self, ITaskSettings** ppSettings) get_Settings;
				public new function HRESULT(ITaskDefinition *self, ITaskSettings* pSettings) put_Settings;
				public new function HRESULT(ITaskDefinition *self, BSTR* pData) get_Data;
				public new function HRESULT(ITaskDefinition *self, BSTR data) put_Data;
				public new function HRESULT(ITaskDefinition *self, IPrincipal** ppPrincipal) get_Principal;
				public new function HRESULT(ITaskDefinition *self, IPrincipal* pPrincipal) put_Principal;
				public new function HRESULT(ITaskDefinition *self, IActionCollection** ppActions) get_Actions;
				public new function HRESULT(ITaskDefinition *self, IActionCollection* pActions) put_Actions;
				public new function HRESULT(ITaskDefinition *self, BSTR* pXml) get_XmlText;
				public new function HRESULT(ITaskDefinition *self, BSTR xml) put_XmlText;
			}
		}
		[CRepr]
		public struct ITaskSettings : IDispatch
		{
			public const new Guid IID = .(0x8fd4711d, 0x2d02, 0x4c8c, 0x87, 0xe3, 0xef, 0xf6, 0x99, 0xde, 0x12, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllowDemandStart(int16* pAllowDemandStart) mut
			{
				return VT.get_AllowDemandStart(&this, pAllowDemandStart);
			}
			public HRESULT put_AllowDemandStart(int16 allowDemandStart) mut
			{
				return VT.put_AllowDemandStart(&this, allowDemandStart);
			}
			public HRESULT get_RestartInterval(BSTR* pRestartInterval) mut
			{
				return VT.get_RestartInterval(&this, pRestartInterval);
			}
			public HRESULT put_RestartInterval(BSTR restartInterval) mut
			{
				return VT.put_RestartInterval(&this, restartInterval);
			}
			public HRESULT get_RestartCount(int32* pRestartCount) mut
			{
				return VT.get_RestartCount(&this, pRestartCount);
			}
			public HRESULT put_RestartCount(int32 restartCount) mut
			{
				return VT.put_RestartCount(&this, restartCount);
			}
			public HRESULT get_MultipleInstances(TASK_INSTANCES_POLICY* pPolicy) mut
			{
				return VT.get_MultipleInstances(&this, pPolicy);
			}
			public HRESULT put_MultipleInstances(TASK_INSTANCES_POLICY policy) mut
			{
				return VT.put_MultipleInstances(&this, policy);
			}
			public HRESULT get_StopIfGoingOnBatteries(int16* pStopIfOnBatteries) mut
			{
				return VT.get_StopIfGoingOnBatteries(&this, pStopIfOnBatteries);
			}
			public HRESULT put_StopIfGoingOnBatteries(int16 stopIfOnBatteries) mut
			{
				return VT.put_StopIfGoingOnBatteries(&this, stopIfOnBatteries);
			}
			public HRESULT get_DisallowStartIfOnBatteries(int16* pDisallowStart) mut
			{
				return VT.get_DisallowStartIfOnBatteries(&this, pDisallowStart);
			}
			public HRESULT put_DisallowStartIfOnBatteries(int16 disallowStart) mut
			{
				return VT.put_DisallowStartIfOnBatteries(&this, disallowStart);
			}
			public HRESULT get_AllowHardTerminate(int16* pAllowHardTerminate) mut
			{
				return VT.get_AllowHardTerminate(&this, pAllowHardTerminate);
			}
			public HRESULT put_AllowHardTerminate(int16 allowHardTerminate) mut
			{
				return VT.put_AllowHardTerminate(&this, allowHardTerminate);
			}
			public HRESULT get_StartWhenAvailable(int16* pStartWhenAvailable) mut
			{
				return VT.get_StartWhenAvailable(&this, pStartWhenAvailable);
			}
			public HRESULT put_StartWhenAvailable(int16 startWhenAvailable) mut
			{
				return VT.put_StartWhenAvailable(&this, startWhenAvailable);
			}
			public HRESULT get_XmlText(BSTR* pText) mut
			{
				return VT.get_XmlText(&this, pText);
			}
			public HRESULT put_XmlText(BSTR text) mut
			{
				return VT.put_XmlText(&this, text);
			}
			public HRESULT get_RunOnlyIfNetworkAvailable(int16* pRunOnlyIfNetworkAvailable) mut
			{
				return VT.get_RunOnlyIfNetworkAvailable(&this, pRunOnlyIfNetworkAvailable);
			}
			public HRESULT put_RunOnlyIfNetworkAvailable(int16 runOnlyIfNetworkAvailable) mut
			{
				return VT.put_RunOnlyIfNetworkAvailable(&this, runOnlyIfNetworkAvailable);
			}
			public HRESULT get_ExecutionTimeLimit(BSTR* pExecutionTimeLimit) mut
			{
				return VT.get_ExecutionTimeLimit(&this, pExecutionTimeLimit);
			}
			public HRESULT put_ExecutionTimeLimit(BSTR executionTimeLimit) mut
			{
				return VT.put_ExecutionTimeLimit(&this, executionTimeLimit);
			}
			public HRESULT get_Enabled(int16* pEnabled) mut
			{
				return VT.get_Enabled(&this, pEnabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_DeleteExpiredTaskAfter(BSTR* pExpirationDelay) mut
			{
				return VT.get_DeleteExpiredTaskAfter(&this, pExpirationDelay);
			}
			public HRESULT put_DeleteExpiredTaskAfter(BSTR expirationDelay) mut
			{
				return VT.put_DeleteExpiredTaskAfter(&this, expirationDelay);
			}
			public HRESULT get_Priority(int32* pPriority) mut
			{
				return VT.get_Priority(&this, pPriority);
			}
			public HRESULT put_Priority(int32 priority) mut
			{
				return VT.put_Priority(&this, priority);
			}
			public HRESULT get_Compatibility(TASK_COMPATIBILITY* pCompatLevel) mut
			{
				return VT.get_Compatibility(&this, pCompatLevel);
			}
			public HRESULT put_Compatibility(TASK_COMPATIBILITY compatLevel) mut
			{
				return VT.put_Compatibility(&this, compatLevel);
			}
			public HRESULT get_Hidden(int16* pHidden) mut
			{
				return VT.get_Hidden(&this, pHidden);
			}
			public HRESULT put_Hidden(int16 hidden) mut
			{
				return VT.put_Hidden(&this, hidden);
			}
			public HRESULT get_IdleSettings(IIdleSettings** ppIdleSettings) mut
			{
				return VT.get_IdleSettings(&this, ppIdleSettings);
			}
			public HRESULT put_IdleSettings(IIdleSettings* pIdleSettings) mut
			{
				return VT.put_IdleSettings(&this, pIdleSettings);
			}
			public HRESULT get_RunOnlyIfIdle(int16* pRunOnlyIfIdle) mut
			{
				return VT.get_RunOnlyIfIdle(&this, pRunOnlyIfIdle);
			}
			public HRESULT put_RunOnlyIfIdle(int16 runOnlyIfIdle) mut
			{
				return VT.put_RunOnlyIfIdle(&this, runOnlyIfIdle);
			}
			public HRESULT get_WakeToRun(int16* pWake) mut
			{
				return VT.get_WakeToRun(&this, pWake);
			}
			public HRESULT put_WakeToRun(int16 wake) mut
			{
				return VT.put_WakeToRun(&this, wake);
			}
			public HRESULT get_NetworkSettings(INetworkSettings** ppNetworkSettings) mut
			{
				return VT.get_NetworkSettings(&this, ppNetworkSettings);
			}
			public HRESULT put_NetworkSettings(INetworkSettings* pNetworkSettings) mut
			{
				return VT.put_NetworkSettings(&this, pNetworkSettings);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskSettings *self, int16* pAllowDemandStart) get_AllowDemandStart;
				public new function HRESULT(ITaskSettings *self, int16 allowDemandStart) put_AllowDemandStart;
				public new function HRESULT(ITaskSettings *self, BSTR* pRestartInterval) get_RestartInterval;
				public new function HRESULT(ITaskSettings *self, BSTR restartInterval) put_RestartInterval;
				public new function HRESULT(ITaskSettings *self, int32* pRestartCount) get_RestartCount;
				public new function HRESULT(ITaskSettings *self, int32 restartCount) put_RestartCount;
				public new function HRESULT(ITaskSettings *self, TASK_INSTANCES_POLICY* pPolicy) get_MultipleInstances;
				public new function HRESULT(ITaskSettings *self, TASK_INSTANCES_POLICY policy) put_MultipleInstances;
				public new function HRESULT(ITaskSettings *self, int16* pStopIfOnBatteries) get_StopIfGoingOnBatteries;
				public new function HRESULT(ITaskSettings *self, int16 stopIfOnBatteries) put_StopIfGoingOnBatteries;
				public new function HRESULT(ITaskSettings *self, int16* pDisallowStart) get_DisallowStartIfOnBatteries;
				public new function HRESULT(ITaskSettings *self, int16 disallowStart) put_DisallowStartIfOnBatteries;
				public new function HRESULT(ITaskSettings *self, int16* pAllowHardTerminate) get_AllowHardTerminate;
				public new function HRESULT(ITaskSettings *self, int16 allowHardTerminate) put_AllowHardTerminate;
				public new function HRESULT(ITaskSettings *self, int16* pStartWhenAvailable) get_StartWhenAvailable;
				public new function HRESULT(ITaskSettings *self, int16 startWhenAvailable) put_StartWhenAvailable;
				public new function HRESULT(ITaskSettings *self, BSTR* pText) get_XmlText;
				public new function HRESULT(ITaskSettings *self, BSTR text) put_XmlText;
				public new function HRESULT(ITaskSettings *self, int16* pRunOnlyIfNetworkAvailable) get_RunOnlyIfNetworkAvailable;
				public new function HRESULT(ITaskSettings *self, int16 runOnlyIfNetworkAvailable) put_RunOnlyIfNetworkAvailable;
				public new function HRESULT(ITaskSettings *self, BSTR* pExecutionTimeLimit) get_ExecutionTimeLimit;
				public new function HRESULT(ITaskSettings *self, BSTR executionTimeLimit) put_ExecutionTimeLimit;
				public new function HRESULT(ITaskSettings *self, int16* pEnabled) get_Enabled;
				public new function HRESULT(ITaskSettings *self, int16 enabled) put_Enabled;
				public new function HRESULT(ITaskSettings *self, BSTR* pExpirationDelay) get_DeleteExpiredTaskAfter;
				public new function HRESULT(ITaskSettings *self, BSTR expirationDelay) put_DeleteExpiredTaskAfter;
				public new function HRESULT(ITaskSettings *self, int32* pPriority) get_Priority;
				public new function HRESULT(ITaskSettings *self, int32 priority) put_Priority;
				public new function HRESULT(ITaskSettings *self, TASK_COMPATIBILITY* pCompatLevel) get_Compatibility;
				public new function HRESULT(ITaskSettings *self, TASK_COMPATIBILITY compatLevel) put_Compatibility;
				public new function HRESULT(ITaskSettings *self, int16* pHidden) get_Hidden;
				public new function HRESULT(ITaskSettings *self, int16 hidden) put_Hidden;
				public new function HRESULT(ITaskSettings *self, IIdleSettings** ppIdleSettings) get_IdleSettings;
				public new function HRESULT(ITaskSettings *self, IIdleSettings* pIdleSettings) put_IdleSettings;
				public new function HRESULT(ITaskSettings *self, int16* pRunOnlyIfIdle) get_RunOnlyIfIdle;
				public new function HRESULT(ITaskSettings *self, int16 runOnlyIfIdle) put_RunOnlyIfIdle;
				public new function HRESULT(ITaskSettings *self, int16* pWake) get_WakeToRun;
				public new function HRESULT(ITaskSettings *self, int16 wake) put_WakeToRun;
				public new function HRESULT(ITaskSettings *self, INetworkSettings** ppNetworkSettings) get_NetworkSettings;
				public new function HRESULT(ITaskSettings *self, INetworkSettings* pNetworkSettings) put_NetworkSettings;
			}
		}
		[CRepr]
		public struct ITaskSettings2 : IDispatch
		{
			public const new Guid IID = .(0x2c05c3f0, 0x6eed, 0x4c05, 0xa1, 0x5f, 0xed, 0x7d, 0x7a, 0x98, 0xa3, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisallowStartOnRemoteAppSession(int16* pDisallowStart) mut
			{
				return VT.get_DisallowStartOnRemoteAppSession(&this, pDisallowStart);
			}
			public HRESULT put_DisallowStartOnRemoteAppSession(int16 disallowStart) mut
			{
				return VT.put_DisallowStartOnRemoteAppSession(&this, disallowStart);
			}
			public HRESULT get_UseUnifiedSchedulingEngine(int16* pUseUnifiedEngine) mut
			{
				return VT.get_UseUnifiedSchedulingEngine(&this, pUseUnifiedEngine);
			}
			public HRESULT put_UseUnifiedSchedulingEngine(int16 useUnifiedEngine) mut
			{
				return VT.put_UseUnifiedSchedulingEngine(&this, useUnifiedEngine);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskSettings2 *self, int16* pDisallowStart) get_DisallowStartOnRemoteAppSession;
				public new function HRESULT(ITaskSettings2 *self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
				public new function HRESULT(ITaskSettings2 *self, int16* pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
				public new function HRESULT(ITaskSettings2 *self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
			}
		}
		[CRepr]
		public struct ITaskSettings3 : ITaskSettings
		{
			public const new Guid IID = .(0x0ad9d0d7, 0x0c7f, 0x4ebb, 0x9a, 0x5f, 0xd1, 0xc6, 0x48, 0xdc, 0xa5, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisallowStartOnRemoteAppSession(int16* pDisallowStart) mut
			{
				return VT.get_DisallowStartOnRemoteAppSession(&this, pDisallowStart);
			}
			public HRESULT put_DisallowStartOnRemoteAppSession(int16 disallowStart) mut
			{
				return VT.put_DisallowStartOnRemoteAppSession(&this, disallowStart);
			}
			public HRESULT get_UseUnifiedSchedulingEngine(int16* pUseUnifiedEngine) mut
			{
				return VT.get_UseUnifiedSchedulingEngine(&this, pUseUnifiedEngine);
			}
			public HRESULT put_UseUnifiedSchedulingEngine(int16 useUnifiedEngine) mut
			{
				return VT.put_UseUnifiedSchedulingEngine(&this, useUnifiedEngine);
			}
			public HRESULT get_MaintenanceSettings(IMaintenanceSettings** ppMaintenanceSettings) mut
			{
				return VT.get_MaintenanceSettings(&this, ppMaintenanceSettings);
			}
			public HRESULT put_MaintenanceSettings(IMaintenanceSettings* pMaintenanceSettings) mut
			{
				return VT.put_MaintenanceSettings(&this, pMaintenanceSettings);
			}
			public HRESULT CreateMaintenanceSettings(IMaintenanceSettings** ppMaintenanceSettings) mut
			{
				return VT.CreateMaintenanceSettings(&this, ppMaintenanceSettings);
			}
			public HRESULT get_Volatile(int16* pVolatile) mut
			{
				return VT.get_Volatile(&this, pVolatile);
			}
			public HRESULT put_Volatile(int16 Volatile) mut
			{
				return VT.put_Volatile(&this, Volatile);
			}
			[CRepr]
			public struct VTable : ITaskSettings.VTable
			{
				public new function HRESULT(ITaskSettings3 *self, int16* pDisallowStart) get_DisallowStartOnRemoteAppSession;
				public new function HRESULT(ITaskSettings3 *self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
				public new function HRESULT(ITaskSettings3 *self, int16* pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
				public new function HRESULT(ITaskSettings3 *self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
				public new function HRESULT(ITaskSettings3 *self, IMaintenanceSettings** ppMaintenanceSettings) get_MaintenanceSettings;
				public new function HRESULT(ITaskSettings3 *self, IMaintenanceSettings* pMaintenanceSettings) put_MaintenanceSettings;
				public new function HRESULT(ITaskSettings3 *self, IMaintenanceSettings** ppMaintenanceSettings) CreateMaintenanceSettings;
				public new function HRESULT(ITaskSettings3 *self, int16* pVolatile) get_Volatile;
				public new function HRESULT(ITaskSettings3 *self, int16 Volatile) put_Volatile;
			}
		}
		[CRepr]
		public struct IMaintenanceSettings : IDispatch
		{
			public const new Guid IID = .(0xa6024fa8, 0x9652, 0x4adb, 0xa6, 0xbf, 0x5c, 0xfc, 0xd8, 0x77, 0xa7, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Period(BSTR value) mut
			{
				return VT.put_Period(&this, value);
			}
			public HRESULT get_Period(BSTR* target) mut
			{
				return VT.get_Period(&this, target);
			}
			public HRESULT put_Deadline(BSTR value) mut
			{
				return VT.put_Deadline(&this, value);
			}
			public HRESULT get_Deadline(BSTR* target) mut
			{
				return VT.get_Deadline(&this, target);
			}
			public HRESULT put_Exclusive(int16 value) mut
			{
				return VT.put_Exclusive(&this, value);
			}
			public HRESULT get_Exclusive(int16* target) mut
			{
				return VT.get_Exclusive(&this, target);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMaintenanceSettings *self, BSTR value) put_Period;
				public new function HRESULT(IMaintenanceSettings *self, BSTR* target) get_Period;
				public new function HRESULT(IMaintenanceSettings *self, BSTR value) put_Deadline;
				public new function HRESULT(IMaintenanceSettings *self, BSTR* target) get_Deadline;
				public new function HRESULT(IMaintenanceSettings *self, int16 value) put_Exclusive;
				public new function HRESULT(IMaintenanceSettings *self, int16* target) get_Exclusive;
			}
		}
		[CRepr]
		public struct IRegisteredTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x86627eb4, 0x42a7, 0x41e4, 0xa4, 0xd9, 0xac, 0x33, 0xa7, 0x2f, 0x2d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT get_Item(VARIANT index, IRegisteredTask** ppRegisteredTask) mut
			{
				return VT.get_Item(&this, index, ppRegisteredTask);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRegisteredTaskCollection *self, int32* pCount) get_Count;
				public new function HRESULT(IRegisteredTaskCollection *self, VARIANT index, IRegisteredTask** ppRegisteredTask) get_Item;
				public new function HRESULT(IRegisteredTaskCollection *self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ITaskFolder : IDispatch
		{
			public const new Guid IID = .(0x8cfac062, 0xa080, 0x4c15, 0x9a, 0x88, 0xaa, 0x7c, 0x2a, 0xf8, 0x0d, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT get_Path(BSTR* pPath) mut
			{
				return VT.get_Path(&this, pPath);
			}
			public HRESULT GetFolder(BSTR path, ITaskFolder** ppFolder) mut
			{
				return VT.GetFolder(&this, path, ppFolder);
			}
			public HRESULT GetFolders(int32 flags, ITaskFolderCollection** ppFolders) mut
			{
				return VT.GetFolders(&this, flags, ppFolders);
			}
			public HRESULT CreateFolder(BSTR subFolderName, VARIANT sddl, ITaskFolder** ppFolder) mut
			{
				return VT.CreateFolder(&this, subFolderName, sddl, ppFolder);
			}
			public HRESULT DeleteFolder(BSTR subFolderName, int32 flags) mut
			{
				return VT.DeleteFolder(&this, subFolderName, flags);
			}
			public HRESULT GetTask(BSTR path, IRegisteredTask** ppTask) mut
			{
				return VT.GetTask(&this, path, ppTask);
			}
			public HRESULT GetTasks(int32 flags, IRegisteredTaskCollection** ppTasks) mut
			{
				return VT.GetTasks(&this, flags, ppTasks);
			}
			public HRESULT DeleteTask(BSTR name, int32 flags) mut
			{
				return VT.DeleteTask(&this, name, flags);
			}
			public HRESULT RegisterTask(BSTR path, BSTR xmlText, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) mut
			{
				return VT.RegisterTask(&this, path, xmlText, flags, userId, password, logonType, sddl, ppTask);
			}
			public HRESULT RegisterTaskDefinition(BSTR path, ITaskDefinition* pDefinition, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) mut
			{
				return VT.RegisterTaskDefinition(&this, path, pDefinition, flags, userId, password, logonType, sddl, ppTask);
			}
			public HRESULT GetSecurityDescriptor(int32 securityInformation, BSTR* pSddl) mut
			{
				return VT.GetSecurityDescriptor(&this, securityInformation, pSddl);
			}
			public HRESULT SetSecurityDescriptor(BSTR sddl, int32 flags) mut
			{
				return VT.SetSecurityDescriptor(&this, sddl, flags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ITaskFolder *self, BSTR* pName) get_Name;
				public new function HRESULT(ITaskFolder *self, BSTR* pPath) get_Path;
				public new function HRESULT(ITaskFolder *self, BSTR path, ITaskFolder** ppFolder) GetFolder;
				public new function HRESULT(ITaskFolder *self, int32 flags, ITaskFolderCollection** ppFolders) GetFolders;
				public new function HRESULT(ITaskFolder *self, BSTR subFolderName, VARIANT sddl, ITaskFolder** ppFolder) CreateFolder;
				public new function HRESULT(ITaskFolder *self, BSTR subFolderName, int32 flags) DeleteFolder;
				public new function HRESULT(ITaskFolder *self, BSTR path, IRegisteredTask** ppTask) GetTask;
				public new function HRESULT(ITaskFolder *self, int32 flags, IRegisteredTaskCollection** ppTasks) GetTasks;
				public new function HRESULT(ITaskFolder *self, BSTR name, int32 flags) DeleteTask;
				public new function HRESULT(ITaskFolder *self, BSTR path, BSTR xmlText, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTask;
				public new function HRESULT(ITaskFolder *self, BSTR path, ITaskDefinition* pDefinition, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTaskDefinition;
				public new function HRESULT(ITaskFolder *self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
				public new function HRESULT(ITaskFolder *self, BSTR sddl, int32 flags) SetSecurityDescriptor;
			}
		}
		[CRepr]
		public struct IIdleSettings : IDispatch
		{
			public const new Guid IID = .(0x84594461, 0x0053, 0x4342, 0xa8, 0xfd, 0x08, 0x8f, 0xab, 0xf1, 0x1f, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IdleDuration(BSTR* pDelay) mut
			{
				return VT.get_IdleDuration(&this, pDelay);
			}
			public HRESULT put_IdleDuration(BSTR delay) mut
			{
				return VT.put_IdleDuration(&this, delay);
			}
			public HRESULT get_WaitTimeout(BSTR* pTimeout) mut
			{
				return VT.get_WaitTimeout(&this, pTimeout);
			}
			public HRESULT put_WaitTimeout(BSTR timeout) mut
			{
				return VT.put_WaitTimeout(&this, timeout);
			}
			public HRESULT get_StopOnIdleEnd(int16* pStop) mut
			{
				return VT.get_StopOnIdleEnd(&this, pStop);
			}
			public HRESULT put_StopOnIdleEnd(int16 stop) mut
			{
				return VT.put_StopOnIdleEnd(&this, stop);
			}
			public HRESULT get_RestartOnIdle(int16* pRestart) mut
			{
				return VT.get_RestartOnIdle(&this, pRestart);
			}
			public HRESULT put_RestartOnIdle(int16 restart) mut
			{
				return VT.put_RestartOnIdle(&this, restart);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IIdleSettings *self, BSTR* pDelay) get_IdleDuration;
				public new function HRESULT(IIdleSettings *self, BSTR delay) put_IdleDuration;
				public new function HRESULT(IIdleSettings *self, BSTR* pTimeout) get_WaitTimeout;
				public new function HRESULT(IIdleSettings *self, BSTR timeout) put_WaitTimeout;
				public new function HRESULT(IIdleSettings *self, int16* pStop) get_StopOnIdleEnd;
				public new function HRESULT(IIdleSettings *self, int16 stop) put_StopOnIdleEnd;
				public new function HRESULT(IIdleSettings *self, int16* pRestart) get_RestartOnIdle;
				public new function HRESULT(IIdleSettings *self, int16 restart) put_RestartOnIdle;
			}
		}
		[CRepr]
		public struct INetworkSettings : IDispatch
		{
			public const new Guid IID = .(0x9f7dea84, 0xc30b, 0x4245, 0x80, 0xb6, 0x00, 0xe9, 0xf6, 0x46, 0xf1, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Id(BSTR* pId) mut
			{
				return VT.get_Id(&this, pId);
			}
			public HRESULT put_Id(BSTR id) mut
			{
				return VT.put_Id(&this, id);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(INetworkSettings *self, BSTR* pName) get_Name;
				public new function HRESULT(INetworkSettings *self, BSTR name) put_Name;
				public new function HRESULT(INetworkSettings *self, BSTR* pId) get_Id;
				public new function HRESULT(INetworkSettings *self, BSTR id) put_Id;
			}
		}
		[CRepr]
		public struct IRepetitionPattern : IDispatch
		{
			public const new Guid IID = .(0x7fb9acf1, 0x26be, 0x400e, 0x85, 0xb5, 0x29, 0x4b, 0x9c, 0x75, 0xdf, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Interval(BSTR* pInterval) mut
			{
				return VT.get_Interval(&this, pInterval);
			}
			public HRESULT put_Interval(BSTR interval) mut
			{
				return VT.put_Interval(&this, interval);
			}
			public HRESULT get_Duration(BSTR* pDuration) mut
			{
				return VT.get_Duration(&this, pDuration);
			}
			public HRESULT put_Duration(BSTR duration) mut
			{
				return VT.put_Duration(&this, duration);
			}
			public HRESULT get_StopAtDurationEnd(int16* pStop) mut
			{
				return VT.get_StopAtDurationEnd(&this, pStop);
			}
			public HRESULT put_StopAtDurationEnd(int16 stop) mut
			{
				return VT.put_StopAtDurationEnd(&this, stop);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRepetitionPattern *self, BSTR* pInterval) get_Interval;
				public new function HRESULT(IRepetitionPattern *self, BSTR interval) put_Interval;
				public new function HRESULT(IRepetitionPattern *self, BSTR* pDuration) get_Duration;
				public new function HRESULT(IRepetitionPattern *self, BSTR duration) put_Duration;
				public new function HRESULT(IRepetitionPattern *self, int16* pStop) get_StopAtDurationEnd;
				public new function HRESULT(IRepetitionPattern *self, int16 stop) put_StopAtDurationEnd;
			}
		}
		
	}
}
