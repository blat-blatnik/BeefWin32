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
			HIDDEN = 1,
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
			
			public HRESULT SetTrigger(in TASK_TRIGGER pTrigger) mut => VT.SetTrigger(ref this, pTrigger);
			public HRESULT GetTrigger(out TASK_TRIGGER pTrigger) mut => VT.GetTrigger(ref this, out pTrigger);
			public HRESULT GetTriggerString(out PWSTR ppwszTrigger) mut => VT.GetTriggerString(ref this, out ppwszTrigger);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskTrigger self, in TASK_TRIGGER pTrigger) SetTrigger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskTrigger self, out TASK_TRIGGER pTrigger) GetTrigger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskTrigger self, out PWSTR ppwszTrigger) GetTriggerString;
			}
		}
		[CRepr]
		public struct IScheduledWorkItem : IUnknown
		{
			public const new Guid IID = .(0xa6b952f0, 0xa4b1, 0x11d0, 0x99, 0x7d, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTrigger(out uint16 piNewTrigger, out ITaskTrigger* ppTrigger) mut => VT.CreateTrigger(ref this, out piNewTrigger, out ppTrigger);
			public HRESULT DeleteTrigger(uint16 iTrigger) mut => VT.DeleteTrigger(ref this, iTrigger);
			public HRESULT GetTriggerCount(out uint16 pwCount) mut => VT.GetTriggerCount(ref this, out pwCount);
			public HRESULT GetTrigger(uint16 iTrigger, out ITaskTrigger* ppTrigger) mut => VT.GetTrigger(ref this, iTrigger, out ppTrigger);
			public HRESULT GetTriggerString(uint16 iTrigger, out PWSTR ppwszTrigger) mut => VT.GetTriggerString(ref this, iTrigger, out ppwszTrigger);
			public HRESULT GetRunTimes(in SYSTEMTIME pstBegin, in SYSTEMTIME pstEnd, out uint16 pCount, out SYSTEMTIME* rgstTaskTimes) mut => VT.GetRunTimes(ref this, pstBegin, pstEnd, out pCount, out rgstTaskTimes);
			public HRESULT GetNextRunTime(out SYSTEMTIME pstNextRun) mut => VT.GetNextRunTime(ref this, out pstNextRun);
			public HRESULT SetIdleWait(uint16 wIdleMinutes, uint16 wDeadlineMinutes) mut => VT.SetIdleWait(ref this, wIdleMinutes, wDeadlineMinutes);
			public HRESULT GetIdleWait(out uint16 pwIdleMinutes, out uint16 pwDeadlineMinutes) mut => VT.GetIdleWait(ref this, out pwIdleMinutes, out pwDeadlineMinutes);
			public HRESULT Run() mut => VT.Run(ref this);
			public HRESULT Terminate() mut => VT.Terminate(ref this);
			public HRESULT EditWorkItem(HWND hParent, uint32 dwReserved) mut => VT.EditWorkItem(ref this, hParent, dwReserved);
			public HRESULT GetMostRecentRunTime(out SYSTEMTIME pstLastRun) mut => VT.GetMostRecentRunTime(ref this, out pstLastRun);
			public HRESULT GetStatus(out HRESULT phrStatus) mut => VT.GetStatus(ref this, out phrStatus);
			public HRESULT GetExitCode(out uint32 pdwExitCode) mut => VT.GetExitCode(ref this, out pdwExitCode);
			public HRESULT SetComment(PWSTR pwszComment) mut => VT.SetComment(ref this, pwszComment);
			public HRESULT GetComment(out PWSTR ppwszComment) mut => VT.GetComment(ref this, out ppwszComment);
			public HRESULT SetCreator(PWSTR pwszCreator) mut => VT.SetCreator(ref this, pwszCreator);
			public HRESULT GetCreator(out PWSTR ppwszCreator) mut => VT.GetCreator(ref this, out ppwszCreator);
			public HRESULT SetWorkItemData(uint16 cbData, ref uint8 rgbData) mut => VT.SetWorkItemData(ref this, cbData, ref rgbData);
			public HRESULT GetWorkItemData(out uint16 pcbData, out uint8* prgbData) mut => VT.GetWorkItemData(ref this, out pcbData, out prgbData);
			public HRESULT SetErrorRetryCount(uint16 wRetryCount) mut => VT.SetErrorRetryCount(ref this, wRetryCount);
			public HRESULT GetErrorRetryCount(out uint16 pwRetryCount) mut => VT.GetErrorRetryCount(ref this, out pwRetryCount);
			public HRESULT SetErrorRetryInterval(uint16 wRetryInterval) mut => VT.SetErrorRetryInterval(ref this, wRetryInterval);
			public HRESULT GetErrorRetryInterval(out uint16 pwRetryInterval) mut => VT.GetErrorRetryInterval(ref this, out pwRetryInterval);
			public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT SetAccountInformation(PWSTR pwszAccountName, PWSTR pwszPassword) mut => VT.SetAccountInformation(ref this, pwszAccountName, pwszPassword);
			public HRESULT GetAccountInformation(out PWSTR ppwszAccountName) mut => VT.GetAccountInformation(ref this, out ppwszAccountName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 piNewTrigger, out ITaskTrigger* ppTrigger) CreateTrigger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 iTrigger) DeleteTrigger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 pwCount) GetTriggerCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 iTrigger, out ITaskTrigger* ppTrigger) GetTrigger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 iTrigger, out PWSTR ppwszTrigger) GetTriggerString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, in SYSTEMTIME pstBegin, in SYSTEMTIME pstEnd, out uint16 pCount, out SYSTEMTIME* rgstTaskTimes) GetRunTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out SYSTEMTIME pstNextRun) GetNextRunTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 wIdleMinutes, uint16 wDeadlineMinutes) SetIdleWait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 pwIdleMinutes, out uint16 pwDeadlineMinutes) GetIdleWait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self) Run;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self) Terminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, HWND hParent, uint32 dwReserved) EditWorkItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out SYSTEMTIME pstLastRun) GetMostRecentRunTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out HRESULT phrStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint32 pdwExitCode) GetExitCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, PWSTR pwszComment) SetComment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out PWSTR ppwszComment) GetComment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, PWSTR pwszCreator) SetCreator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out PWSTR ppwszCreator) GetCreator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 cbData, ref uint8 rgbData) SetWorkItemData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 pcbData, out uint8* prgbData) GetWorkItemData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 wRetryCount) SetErrorRetryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 pwRetryCount) GetErrorRetryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint16 wRetryInterval) SetErrorRetryInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint16 pwRetryInterval) GetErrorRetryInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, uint32 dwFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, PWSTR pwszAccountName, PWSTR pwszPassword) SetAccountInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScheduledWorkItem self, out PWSTR ppwszAccountName) GetAccountInformation;
			}
		}
		[CRepr]
		public struct ITask : IScheduledWorkItem
		{
			public const new Guid IID = .(0x148bd524, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetApplicationName(PWSTR pwszApplicationName) mut => VT.SetApplicationName(ref this, pwszApplicationName);
			public HRESULT GetApplicationName(out PWSTR ppwszApplicationName) mut => VT.GetApplicationName(ref this, out ppwszApplicationName);
			public HRESULT SetParameters(PWSTR pwszParameters) mut => VT.SetParameters(ref this, pwszParameters);
			public HRESULT GetParameters(out PWSTR ppwszParameters) mut => VT.GetParameters(ref this, out ppwszParameters);
			public HRESULT SetWorkingDirectory(PWSTR pwszWorkingDirectory) mut => VT.SetWorkingDirectory(ref this, pwszWorkingDirectory);
			public HRESULT GetWorkingDirectory(out PWSTR ppwszWorkingDirectory) mut => VT.GetWorkingDirectory(ref this, out ppwszWorkingDirectory);
			public HRESULT SetPriority(uint32 dwPriority) mut => VT.SetPriority(ref this, dwPriority);
			public HRESULT GetPriority(out uint32 pdwPriority) mut => VT.GetPriority(ref this, out pdwPriority);
			public HRESULT SetTaskFlags(uint32 dwFlags) mut => VT.SetTaskFlags(ref this, dwFlags);
			public HRESULT GetTaskFlags(out uint32 pdwFlags) mut => VT.GetTaskFlags(ref this, out pdwFlags);
			public HRESULT SetMaxRunTime(uint32 dwMaxRunTimeMS) mut => VT.SetMaxRunTime(ref this, dwMaxRunTimeMS);
			public HRESULT GetMaxRunTime(out uint32 pdwMaxRunTimeMS) mut => VT.GetMaxRunTime(ref this, out pdwMaxRunTimeMS);

			[CRepr]
			public struct VTable : IScheduledWorkItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, PWSTR pwszApplicationName) SetApplicationName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out PWSTR ppwszApplicationName) GetApplicationName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, PWSTR pwszParameters) SetParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out PWSTR ppwszParameters) GetParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, PWSTR pwszWorkingDirectory) SetWorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out PWSTR ppwszWorkingDirectory) GetWorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, uint32 dwPriority) SetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out uint32 pdwPriority) GetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, uint32 dwFlags) SetTaskFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out uint32 pdwFlags) GetTaskFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, uint32 dwMaxRunTimeMS) SetMaxRunTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITask self, out uint32 pdwMaxRunTimeMS) GetMaxRunTime;
			}
		}
		[CRepr]
		public struct IEnumWorkItems : IUnknown
		{
			public const new Guid IID = .(0x148bd528, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out PWSTR* rgpwszNames, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgpwszNames, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumWorkItems* ppEnumWorkItems) mut => VT.Clone(ref this, out ppEnumWorkItems);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWorkItems self, uint32 celt, out PWSTR* rgpwszNames, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWorkItems self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWorkItems self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumWorkItems self, out IEnumWorkItems* ppEnumWorkItems) Clone;
			}
		}
		[CRepr]
		public struct ITaskScheduler : IUnknown
		{
			public const new Guid IID = .(0x148bd527, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTargetComputer(PWSTR pwszComputer) mut => VT.SetTargetComputer(ref this, pwszComputer);
			public HRESULT GetTargetComputer(out PWSTR ppwszComputer) mut => VT.GetTargetComputer(ref this, out ppwszComputer);
			public HRESULT Enum(out IEnumWorkItems* ppEnumWorkItems) mut => VT.Enum(ref this, out ppEnumWorkItems);
			public HRESULT Activate(PWSTR pwszName, in Guid riid, out IUnknown* ppUnk) mut => VT.Activate(ref this, pwszName, riid, out ppUnk);
			public HRESULT Delete(PWSTR pwszName) mut => VT.Delete(ref this, pwszName);
			public HRESULT NewWorkItem(PWSTR pwszTaskName, in Guid rclsid, in Guid riid, out IUnknown* ppUnk) mut => VT.NewWorkItem(ref this, pwszTaskName, rclsid, riid, out ppUnk);
			public HRESULT AddWorkItem(PWSTR pwszTaskName, ref IScheduledWorkItem pWorkItem) mut => VT.AddWorkItem(ref this, pwszTaskName, ref pWorkItem);
			public HRESULT IsOfType(PWSTR pwszName, in Guid riid) mut => VT.IsOfType(ref this, pwszName, riid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszComputer) SetTargetComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, out PWSTR ppwszComputer) GetTargetComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, out IEnumWorkItems* ppEnumWorkItems) Enum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszName, in Guid riid, out IUnknown* ppUnk) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszName) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszTaskName, in Guid rclsid, in Guid riid, out IUnknown* ppUnk) NewWorkItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszTaskName, ref IScheduledWorkItem pWorkItem) AddWorkItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskScheduler self, PWSTR pwszName, in Guid riid) IsOfType;
			}
		}
		[CRepr]
		public struct IProvideTaskPage : IUnknown
		{
			public const new Guid IID = .(0x4086658a, 0xcbbb, 0x11cf, 0xb6, 0x04, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPage(TASKPAGE tpType, BOOL fPersistChanges, out HPROPSHEETPAGE phPage) mut => VT.GetPage(ref this, tpType, fPersistChanges, out phPage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideTaskPage self, TASKPAGE tpType, BOOL fPersistChanges, out HPROPSHEETPAGE phPage) GetPage;
			}
		}
		[CRepr]
		public struct ITaskFolderCollection : IDispatch
		{
			public const new Guid IID = .(0x79184a66, 0x8664, 0x423f, 0x97, 0xf1, 0x63, 0x73, 0x56, 0xa5, 0xd8, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(VARIANT index, ITaskFolder** ppFolder) mut => VT.get_Item(ref this, index, ppFolder);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolderCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolderCollection self, VARIANT index, ITaskFolder** ppFolder) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolderCollection self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ITaskService : IDispatch
		{
			public const new Guid IID = .(0x2faba4c7, 0x4da9, 0x4013, 0x96, 0x97, 0x20, 0xcc, 0x3f, 0xd4, 0x0f, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFolder(BSTR path, ITaskFolder** ppFolder) mut => VT.GetFolder(ref this, path, ppFolder);
			public HRESULT GetRunningTasks(int32 flags, IRunningTaskCollection** ppRunningTasks) mut => VT.GetRunningTasks(ref this, flags, ppRunningTasks);
			public HRESULT NewTask(uint32 flags, ITaskDefinition** ppDefinition) mut => VT.NewTask(ref this, flags, ppDefinition);
			public HRESULT Connect(VARIANT serverName, VARIANT user, VARIANT domain, VARIANT password) mut => VT.Connect(ref this, serverName, user, domain, password);
			public HRESULT get_Connected(out int16 pConnected) mut => VT.get_Connected(ref this, out pConnected);
			public HRESULT get_TargetServer(BSTR* pServer) mut => VT.get_TargetServer(ref this, pServer);
			public HRESULT get_ConnectedUser(BSTR* pUser) mut => VT.get_ConnectedUser(ref this, pUser);
			public HRESULT get_ConnectedDomain(BSTR* pDomain) mut => VT.get_ConnectedDomain(ref this, pDomain);
			public HRESULT get_HighestVersion(out uint32 pVersion) mut => VT.get_HighestVersion(ref this, out pVersion);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, BSTR path, ITaskFolder** ppFolder) GetFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetRunningTasks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, uint32 flags, ITaskDefinition** ppDefinition) NewTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, VARIANT serverName, VARIANT user, VARIANT domain, VARIANT password) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, out int16 pConnected) get_Connected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, BSTR* pServer) get_TargetServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, BSTR* pUser) get_ConnectedUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, BSTR* pDomain) get_ConnectedDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskService self, out uint32 pVersion) get_HighestVersion;
			}
		}
		[CRepr]
		public struct ITaskHandler : IUnknown
		{
			public const new Guid IID = .(0x839d7762, 0x5121, 0x4009, 0x92, 0x34, 0x4f, 0x0d, 0x19, 0x39, 0x4f, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(IUnknown* pHandlerServices, BSTR data) mut => VT.Start(ref this, pHandlerServices, data);
			public HRESULT Stop(out HRESULT pRetCode) mut => VT.Stop(ref this, out pRetCode);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandler self, IUnknown* pHandlerServices, BSTR data) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandler self, out HRESULT pRetCode) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandler self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandler self) Resume;
			}
		}
		[CRepr]
		public struct ITaskHandlerStatus : IUnknown
		{
			public const new Guid IID = .(0xeaec7a8f, 0x27a0, 0x4ddc, 0x86, 0x75, 0x14, 0x72, 0x6a, 0x01, 0xa3, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateStatus(int16 percentComplete, BSTR statusMessage) mut => VT.UpdateStatus(ref this, percentComplete, statusMessage);
			public HRESULT TaskCompleted(HRESULT taskErrCode) mut => VT.TaskCompleted(ref this, taskErrCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandlerStatus self, int16 percentComplete, BSTR statusMessage) UpdateStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskHandlerStatus self, HRESULT taskErrCode) TaskCompleted;
			}
		}
		[CRepr]
		public struct ITaskVariables : IUnknown
		{
			public const new Guid IID = .(0x3e4c9351, 0xd966, 0x4b8b, 0xbb, 0x87, 0xce, 0xba, 0x68, 0xbb, 0x01, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInput(BSTR* pInput) mut => VT.GetInput(ref this, pInput);
			public HRESULT SetOutput(BSTR input) mut => VT.SetOutput(ref this, input);
			public HRESULT GetContext(BSTR* pContext) mut => VT.GetContext(ref this, pContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskVariables self, BSTR* pInput) GetInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskVariables self, BSTR input) SetOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskVariables self, BSTR* pContext) GetContext;
			}
		}
		[CRepr]
		public struct ITaskNamedValuePair : IDispatch
		{
			public const new Guid IID = .(0x39038068, 0x2b46, 0x4afd, 0x86, 0x62, 0x7b, 0xb6, 0xf8, 0x68, 0xd2, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pName) mut => VT.get_Name(ref this, out pName);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Value(out BSTR pValue) mut => VT.get_Value(ref this, out pValue);
			public HRESULT put_Value(BSTR value) mut => VT.put_Value(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValuePair self, out BSTR pName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValuePair self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValuePair self, out BSTR pValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValuePair self, BSTR value) put_Value;
			}
		}
		[CRepr]
		public struct ITaskNamedValueCollection : IDispatch
		{
			public const new Guid IID = .(0xb4ef826b, 0x63c3, 0x46e4, 0xa5, 0x04, 0xef, 0x69, 0xe4, 0xf7, 0xea, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(int32 index, out ITaskNamedValuePair* ppPair) mut => VT.get_Item(ref this, index, out ppPair);
			public HRESULT get__NewEnum(out IUnknown* ppEnum) mut => VT.get__NewEnum(ref this, out ppEnum);
			public HRESULT Create(BSTR name, BSTR value, out ITaskNamedValuePair* ppPair) mut => VT.Create(ref this, name, value, out ppPair);
			public HRESULT Remove(int32 index) mut => VT.Remove(ref this, index);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self, int32 index, out ITaskNamedValuePair* ppPair) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self, out IUnknown* ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self, BSTR name, BSTR value, out ITaskNamedValuePair* ppPair) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self, int32 index) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskNamedValueCollection self) Clear;
			}
		}
		[CRepr]
		public struct IRunningTask : IDispatch
		{
			public const new Guid IID = .(0x653758fb, 0x7b9a, 0x4f1e, 0xa4, 0x71, 0xbe, 0xeb, 0x8e, 0x9b, 0x83, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut => VT.get_Name(ref this, pName);
			public HRESULT get_InstanceGuid(BSTR* pGuid) mut => VT.get_InstanceGuid(ref this, pGuid);
			public HRESULT get_Path(BSTR* pPath) mut => VT.get_Path(ref this, pPath);
			public HRESULT get_State(out TASK_STATE pState) mut => VT.get_State(ref this, out pState);
			public HRESULT get_CurrentAction(BSTR* pName) mut => VT.get_CurrentAction(ref this, pName);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT get_EnginePID(out uint32 pPID) mut => VT.get_EnginePID(ref this, out pPID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, BSTR* pName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, BSTR* pGuid) get_InstanceGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, BSTR* pPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, out TASK_STATE pState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, BSTR* pName) get_CurrentAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTask self, out uint32 pPID) get_EnginePID;
			}
		}
		[CRepr]
		public struct IRunningTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x6a67614b, 0x6828, 0x4fec, 0xaa, 0x54, 0x6d, 0x52, 0xe8, 0xf1, 0xf2, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(VARIANT index, IRunningTask** ppRunningTask) mut => VT.get_Item(ref this, index, ppRunningTask);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTaskCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTaskCollection self, VARIANT index, IRunningTask** ppRunningTask) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningTaskCollection self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IRegisteredTask : IDispatch
		{
			public const new Guid IID = .(0x9c86f320, 0xdee3, 0x4dd1, 0xb9, 0x72, 0xa3, 0x03, 0xf2, 0x6b, 0x06, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut => VT.get_Name(ref this, pName);
			public HRESULT get_Path(BSTR* pPath) mut => VT.get_Path(ref this, pPath);
			public HRESULT get_State(out TASK_STATE pState) mut => VT.get_State(ref this, out pState);
			public HRESULT get_Enabled(out int16 pEnabled) mut => VT.get_Enabled(ref this, out pEnabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT Run(VARIANT @params, IRunningTask** ppRunningTask) mut => VT.Run(ref this, @params, ppRunningTask);
			public HRESULT RunEx(VARIANT @params, int32 flags, int32 sessionID, BSTR user, IRunningTask** ppRunningTask) mut => VT.RunEx(ref this, @params, flags, sessionID, user, ppRunningTask);
			public HRESULT GetInstances(int32 flags, IRunningTaskCollection** ppRunningTasks) mut => VT.GetInstances(ref this, flags, ppRunningTasks);
			public HRESULT get_LastRunTime(out double pLastRunTime) mut => VT.get_LastRunTime(ref this, out pLastRunTime);
			public HRESULT get_LastTaskResult(out int32 pLastTaskResult) mut => VT.get_LastTaskResult(ref this, out pLastTaskResult);
			public HRESULT get_NumberOfMissedRuns(out int32 pNumberOfMissedRuns) mut => VT.get_NumberOfMissedRuns(ref this, out pNumberOfMissedRuns);
			public HRESULT get_NextRunTime(out double pNextRunTime) mut => VT.get_NextRunTime(ref this, out pNextRunTime);
			public HRESULT get_Definition(ITaskDefinition** ppDefinition) mut => VT.get_Definition(ref this, ppDefinition);
			public HRESULT get_Xml(BSTR* pXml) mut => VT.get_Xml(ref this, pXml);
			public HRESULT GetSecurityDescriptor(int32 securityInformation, BSTR* pSddl) mut => VT.GetSecurityDescriptor(ref this, securityInformation, pSddl);
			public HRESULT SetSecurityDescriptor(BSTR sddl, int32 flags) mut => VT.SetSecurityDescriptor(ref this, sddl, flags);
			public HRESULT Stop(int32 flags) mut => VT.Stop(ref this, flags);
			public HRESULT GetRunTimes(in SYSTEMTIME pstStart, in SYSTEMTIME pstEnd, out uint32 pCount, SYSTEMTIME** pRunTimes) mut => VT.GetRunTimes(ref this, pstStart, pstEnd, out pCount, pRunTimes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, BSTR* pName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, BSTR* pPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out TASK_STATE pState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out int16 pEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, VARIANT @params, IRunningTask** ppRunningTask) Run;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, VARIANT @params, int32 flags, int32 sessionID, BSTR user, IRunningTask** ppRunningTask) RunEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out double pLastRunTime) get_LastRunTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out int32 pLastTaskResult) get_LastTaskResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out int32 pNumberOfMissedRuns) get_NumberOfMissedRuns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, out double pNextRunTime) get_NextRunTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, ITaskDefinition** ppDefinition) get_Definition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, BSTR* pXml) get_Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, BSTR sddl, int32 flags) SetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, int32 flags) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTask self, in SYSTEMTIME pstStart, in SYSTEMTIME pstEnd, out uint32 pCount, SYSTEMTIME** pRunTimes) GetRunTimes;
			}
		}
		[CRepr]
		public struct ITrigger : IDispatch
		{
			public const new Guid IID = .(0x09941815, 0xea89, 0x4b5b, 0x89, 0xe0, 0x2a, 0x77, 0x38, 0x01, 0xfa, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out TASK_TRIGGER_TYPE2 pType) mut => VT.get_Type(ref this, out pType);
			public HRESULT get_Id(out BSTR pId) mut => VT.get_Id(ref this, out pId);
			public HRESULT put_Id(BSTR id) mut => VT.put_Id(ref this, id);
			public HRESULT get_Repetition(out IRepetitionPattern* ppRepeat) mut => VT.get_Repetition(ref this, out ppRepeat);
			public HRESULT put_Repetition(ref IRepetitionPattern pRepeat) mut => VT.put_Repetition(ref this, ref pRepeat);
			public HRESULT get_ExecutionTimeLimit(out BSTR pTimeLimit) mut => VT.get_ExecutionTimeLimit(ref this, out pTimeLimit);
			public HRESULT put_ExecutionTimeLimit(BSTR timelimit) mut => VT.put_ExecutionTimeLimit(ref this, timelimit);
			public HRESULT get_StartBoundary(out BSTR pStart) mut => VT.get_StartBoundary(ref this, out pStart);
			public HRESULT put_StartBoundary(BSTR start) mut => VT.put_StartBoundary(ref this, start);
			public HRESULT get_EndBoundary(out BSTR pEnd) mut => VT.get_EndBoundary(ref this, out pEnd);
			public HRESULT put_EndBoundary(BSTR end) mut => VT.put_EndBoundary(ref this, end);
			public HRESULT get_Enabled(out int16 pEnabled) mut => VT.get_Enabled(ref this, out pEnabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out TASK_TRIGGER_TYPE2 pType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out BSTR pId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, BSTR id) put_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out IRepetitionPattern* ppRepeat) get_Repetition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, ref IRepetitionPattern pRepeat) put_Repetition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out BSTR pTimeLimit) get_ExecutionTimeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, BSTR timelimit) put_ExecutionTimeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out BSTR pStart) get_StartBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, BSTR start) put_StartBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out BSTR pEnd) get_EndBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, BSTR end) put_EndBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, out int16 pEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrigger self, int16 enabled) put_Enabled;
			}
		}
		[CRepr]
		public struct IIdleTrigger : ITrigger
		{
			public const new Guid IID = .(0xd537d2b0, 0x9fb3, 0x4d34, 0x97, 0x39, 0x1f, 0xf5, 0xce, 0x7b, 0x1e, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ITrigger.VTable {}
		}
		[CRepr]
		public struct ILogonTrigger : ITrigger
		{
			public const new Guid IID = .(0x72dade38, 0xfae4, 0x4b3e, 0xba, 0xf4, 0x5d, 0x00, 0x9a, 0xf0, 0x2b, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(out BSTR pDelay) mut => VT.get_Delay(ref this, out pDelay);
			public HRESULT put_Delay(BSTR delay) mut => VT.put_Delay(ref this, delay);
			public HRESULT get_UserId(out BSTR pUser) mut => VT.get_UserId(ref this, out pUser);
			public HRESULT put_UserId(BSTR user) mut => VT.put_UserId(ref this, user);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogonTrigger self, out BSTR pDelay) get_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogonTrigger self, BSTR delay) put_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogonTrigger self, out BSTR pUser) get_UserId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILogonTrigger self, BSTR user) put_UserId;
			}
		}
		[CRepr]
		public struct ISessionStateChangeTrigger : ITrigger
		{
			public const new Guid IID = .(0x754da71b, 0x4385, 0x4475, 0x9d, 0xd9, 0x59, 0x82, 0x94, 0xfa, 0x36, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(out BSTR pDelay) mut => VT.get_Delay(ref this, out pDelay);
			public HRESULT put_Delay(BSTR delay) mut => VT.put_Delay(ref this, delay);
			public HRESULT get_UserId(out BSTR pUser) mut => VT.get_UserId(ref this, out pUser);
			public HRESULT put_UserId(BSTR user) mut => VT.put_UserId(ref this, user);
			public HRESULT get_StateChange(out TASK_SESSION_STATE_CHANGE_TYPE pType) mut => VT.get_StateChange(ref this, out pType);
			public HRESULT put_StateChange(TASK_SESSION_STATE_CHANGE_TYPE type) mut => VT.put_StateChange(ref this, type);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, out BSTR pDelay) get_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, BSTR delay) put_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, out BSTR pUser) get_UserId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, BSTR user) put_UserId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, out TASK_SESSION_STATE_CHANGE_TYPE pType) get_StateChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISessionStateChangeTrigger self, TASK_SESSION_STATE_CHANGE_TYPE type) put_StateChange;
			}
		}
		[CRepr]
		public struct IEventTrigger : ITrigger
		{
			public const new Guid IID = .(0xd45b0167, 0x9653, 0x4eef, 0xb9, 0x4f, 0x07, 0x32, 0xca, 0x7a, 0xf2, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Subscription(out BSTR pQuery) mut => VT.get_Subscription(ref this, out pQuery);
			public HRESULT put_Subscription(BSTR query) mut => VT.put_Subscription(ref this, query);
			public HRESULT get_Delay(out BSTR pDelay) mut => VT.get_Delay(ref this, out pDelay);
			public HRESULT put_Delay(BSTR delay) mut => VT.put_Delay(ref this, delay);
			public HRESULT get_ValueQueries(out ITaskNamedValueCollection* ppNamedXPaths) mut => VT.get_ValueQueries(ref this, out ppNamedXPaths);
			public HRESULT put_ValueQueries(ref ITaskNamedValueCollection pNamedXPaths) mut => VT.put_ValueQueries(ref this, ref pNamedXPaths);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, out BSTR pQuery) get_Subscription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, BSTR query) put_Subscription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, out BSTR pDelay) get_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, BSTR delay) put_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, out ITaskNamedValueCollection* ppNamedXPaths) get_ValueQueries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventTrigger self, ref ITaskNamedValueCollection pNamedXPaths) put_ValueQueries;
			}
		}
		[CRepr]
		public struct ITimeTrigger : ITrigger
		{
			public const new Guid IID = .(0xb45747e0, 0xeba7, 0x4276, 0x9f, 0x29, 0x85, 0xc5, 0xbb, 0x30, 0x00, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RandomDelay(out BSTR pRandomDelay) mut => VT.get_RandomDelay(ref this, out pRandomDelay);
			public HRESULT put_RandomDelay(BSTR randomDelay) mut => VT.put_RandomDelay(ref this, randomDelay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITimeTrigger self, out BSTR pRandomDelay) get_RandomDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITimeTrigger self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IDailyTrigger : ITrigger
		{
			public const new Guid IID = .(0x126c5cd8, 0xb288, 0x41d5, 0x8d, 0xbf, 0xe4, 0x91, 0x44, 0x6a, 0xdc, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysInterval(out int16 pDays) mut => VT.get_DaysInterval(ref this, out pDays);
			public HRESULT put_DaysInterval(int16 days) mut => VT.put_DaysInterval(ref this, days);
			public HRESULT get_RandomDelay(out BSTR pRandomDelay) mut => VT.get_RandomDelay(ref this, out pRandomDelay);
			public HRESULT put_RandomDelay(BSTR randomDelay) mut => VT.put_RandomDelay(ref this, randomDelay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDailyTrigger self, out int16 pDays) get_DaysInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDailyTrigger self, int16 days) put_DaysInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDailyTrigger self, out BSTR pRandomDelay) get_RandomDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDailyTrigger self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IWeeklyTrigger : ITrigger
		{
			public const new Guid IID = .(0x5038fc98, 0x82ff, 0x436d, 0x87, 0x28, 0xa5, 0x12, 0xa5, 0x7c, 0x9d, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfWeek(out int16 pDays) mut => VT.get_DaysOfWeek(ref this, out pDays);
			public HRESULT put_DaysOfWeek(int16 days) mut => VT.put_DaysOfWeek(ref this, days);
			public HRESULT get_WeeksInterval(out int16 pWeeks) mut => VT.get_WeeksInterval(ref this, out pWeeks);
			public HRESULT put_WeeksInterval(int16 weeks) mut => VT.put_WeeksInterval(ref this, weeks);
			public HRESULT get_RandomDelay(out BSTR pRandomDelay) mut => VT.get_RandomDelay(ref this, out pRandomDelay);
			public HRESULT put_RandomDelay(BSTR randomDelay) mut => VT.put_RandomDelay(ref this, randomDelay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, out int16 pDays) get_DaysOfWeek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, int16 days) put_DaysOfWeek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, out int16 pWeeks) get_WeeksInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, int16 weeks) put_WeeksInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, out BSTR pRandomDelay) get_RandomDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWeeklyTrigger self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IMonthlyTrigger : ITrigger
		{
			public const new Guid IID = .(0x97c45ef1, 0x6b02, 0x4a1a, 0x9c, 0x0e, 0x1e, 0xbf, 0xba, 0x15, 0x00, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfMonth(out int32 pDays) mut => VT.get_DaysOfMonth(ref this, out pDays);
			public HRESULT put_DaysOfMonth(int32 days) mut => VT.put_DaysOfMonth(ref this, days);
			public HRESULT get_MonthsOfYear(out int16 pMonths) mut => VT.get_MonthsOfYear(ref this, out pMonths);
			public HRESULT put_MonthsOfYear(int16 months) mut => VT.put_MonthsOfYear(ref this, months);
			public HRESULT get_RunOnLastDayOfMonth(out int16 pLastDay) mut => VT.get_RunOnLastDayOfMonth(ref this, out pLastDay);
			public HRESULT put_RunOnLastDayOfMonth(int16 lastDay) mut => VT.put_RunOnLastDayOfMonth(ref this, lastDay);
			public HRESULT get_RandomDelay(out BSTR pRandomDelay) mut => VT.get_RandomDelay(ref this, out pRandomDelay);
			public HRESULT put_RandomDelay(BSTR randomDelay) mut => VT.put_RandomDelay(ref this, randomDelay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, out int32 pDays) get_DaysOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, int32 days) put_DaysOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, out int16 pMonths) get_MonthsOfYear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, int16 months) put_MonthsOfYear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, out int16 pLastDay) get_RunOnLastDayOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, int16 lastDay) put_RunOnLastDayOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, out BSTR pRandomDelay) get_RandomDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyTrigger self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IMonthlyDOWTrigger : ITrigger
		{
			public const new Guid IID = .(0x77d025a3, 0x90fa, 0x43aa, 0xb5, 0x2e, 0xcd, 0xa5, 0x49, 0x9b, 0x94, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DaysOfWeek(out int16 pDays) mut => VT.get_DaysOfWeek(ref this, out pDays);
			public HRESULT put_DaysOfWeek(int16 days) mut => VT.put_DaysOfWeek(ref this, days);
			public HRESULT get_WeeksOfMonth(out int16 pWeeks) mut => VT.get_WeeksOfMonth(ref this, out pWeeks);
			public HRESULT put_WeeksOfMonth(int16 weeks) mut => VT.put_WeeksOfMonth(ref this, weeks);
			public HRESULT get_MonthsOfYear(out int16 pMonths) mut => VT.get_MonthsOfYear(ref this, out pMonths);
			public HRESULT put_MonthsOfYear(int16 months) mut => VT.put_MonthsOfYear(ref this, months);
			public HRESULT get_RunOnLastWeekOfMonth(out int16 pLastWeek) mut => VT.get_RunOnLastWeekOfMonth(ref this, out pLastWeek);
			public HRESULT put_RunOnLastWeekOfMonth(int16 lastWeek) mut => VT.put_RunOnLastWeekOfMonth(ref this, lastWeek);
			public HRESULT get_RandomDelay(out BSTR pRandomDelay) mut => VT.get_RandomDelay(ref this, out pRandomDelay);
			public HRESULT put_RandomDelay(BSTR randomDelay) mut => VT.put_RandomDelay(ref this, randomDelay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, out int16 pDays) get_DaysOfWeek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, int16 days) put_DaysOfWeek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, out int16 pWeeks) get_WeeksOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, int16 weeks) put_WeeksOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, out int16 pMonths) get_MonthsOfYear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, int16 months) put_MonthsOfYear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, out int16 pLastWeek) get_RunOnLastWeekOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, int16 lastWeek) put_RunOnLastWeekOfMonth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, out BSTR pRandomDelay) get_RandomDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMonthlyDOWTrigger self, BSTR randomDelay) put_RandomDelay;
			}
		}
		[CRepr]
		public struct IBootTrigger : ITrigger
		{
			public const new Guid IID = .(0x2a9c35da, 0xd357, 0x41f4, 0xbb, 0xc1, 0x20, 0x7a, 0xc1, 0xb1, 0xf3, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(out BSTR pDelay) mut => VT.get_Delay(ref this, out pDelay);
			public HRESULT put_Delay(BSTR delay) mut => VT.put_Delay(ref this, delay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootTrigger self, out BSTR pDelay) get_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootTrigger self, BSTR delay) put_Delay;
			}
		}
		[CRepr]
		public struct IRegistrationTrigger : ITrigger
		{
			public const new Guid IID = .(0x4c8fec3a, 0xc218, 0x4e0c, 0xb2, 0x3d, 0x62, 0x90, 0x24, 0xdb, 0x91, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Delay(out BSTR pDelay) mut => VT.get_Delay(ref this, out pDelay);
			public HRESULT put_Delay(BSTR delay) mut => VT.put_Delay(ref this, delay);

			[CRepr]
			public struct VTable : ITrigger.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationTrigger self, out BSTR pDelay) get_Delay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationTrigger self, BSTR delay) put_Delay;
			}
		}
		[CRepr]
		public struct IAction : IDispatch
		{
			public const new Guid IID = .(0xbae54997, 0x48b1, 0x4cbe, 0x99, 0x65, 0xd6, 0xbe, 0x26, 0x3e, 0xbe, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(out BSTR pId) mut => VT.get_Id(ref this, out pId);
			public HRESULT put_Id(BSTR Id) mut => VT.put_Id(ref this, Id);
			public HRESULT get_Type(out TASK_ACTION_TYPE pType) mut => VT.get_Type(ref this, out pType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAction self, out BSTR pId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAction self, BSTR Id) put_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAction self, out TASK_ACTION_TYPE pType) get_Type;
			}
		}
		[CRepr]
		public struct IExecAction : IAction
		{
			public const new Guid IID = .(0x4c3d624d, 0xfd6b, 0x49a3, 0xb9, 0xb7, 0x09, 0xcb, 0x3c, 0xd3, 0xf0, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR pPath) mut => VT.get_Path(ref this, out pPath);
			public HRESULT put_Path(BSTR path) mut => VT.put_Path(ref this, path);
			public HRESULT get_Arguments(out BSTR pArgument) mut => VT.get_Arguments(ref this, out pArgument);
			public HRESULT put_Arguments(BSTR argument) mut => VT.put_Arguments(ref this, argument);
			public HRESULT get_WorkingDirectory(out BSTR pWorkingDirectory) mut => VT.get_WorkingDirectory(ref this, out pWorkingDirectory);
			public HRESULT put_WorkingDirectory(BSTR workingDirectory) mut => VT.put_WorkingDirectory(ref this, workingDirectory);

			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, out BSTR pPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, BSTR path) put_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, out BSTR pArgument) get_Arguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, BSTR argument) put_Arguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, out BSTR pWorkingDirectory) get_WorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction self, BSTR workingDirectory) put_WorkingDirectory;
			}
		}
		[CRepr]
		public struct IExecAction2 : IExecAction
		{
			public const new Guid IID = .(0xf2a82542, 0xbda5, 0x4e6b, 0x91, 0x43, 0xe2, 0xbf, 0x4f, 0x89, 0x87, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HideAppWindow(out int16 pHideAppWindow) mut => VT.get_HideAppWindow(ref this, out pHideAppWindow);
			public HRESULT put_HideAppWindow(int16 hideAppWindow) mut => VT.put_HideAppWindow(ref this, hideAppWindow);

			[CRepr]
			public struct VTable : IExecAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction2 self, out int16 pHideAppWindow) get_HideAppWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecAction2 self, int16 hideAppWindow) put_HideAppWindow;
			}
		}
		[CRepr]
		public struct IShowMessageAction : IAction
		{
			public const new Guid IID = .(0x505e9e68, 0xaf89, 0x46b8, 0xa3, 0x0f, 0x56, 0x16, 0x2a, 0x83, 0xd5, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Title(out BSTR pTitle) mut => VT.get_Title(ref this, out pTitle);
			public HRESULT put_Title(BSTR title) mut => VT.put_Title(ref this, title);
			public HRESULT get_MessageBody(out BSTR pMessageBody) mut => VT.get_MessageBody(ref this, out pMessageBody);
			public HRESULT put_MessageBody(BSTR messageBody) mut => VT.put_MessageBody(ref this, messageBody);

			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IShowMessageAction self, out BSTR pTitle) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IShowMessageAction self, BSTR title) put_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IShowMessageAction self, out BSTR pMessageBody) get_MessageBody;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IShowMessageAction self, BSTR messageBody) put_MessageBody;
			}
		}
		[CRepr]
		public struct IComHandlerAction : IAction
		{
			public const new Guid IID = .(0x6d2fd252, 0x75c5, 0x4f66, 0x90, 0xba, 0x2a, 0x7d, 0x8c, 0xc3, 0x03, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ClassId(out BSTR pClsid) mut => VT.get_ClassId(ref this, out pClsid);
			public HRESULT put_ClassId(BSTR clsid) mut => VT.put_ClassId(ref this, clsid);
			public HRESULT get_Data(out BSTR pData) mut => VT.get_Data(ref this, out pData);
			public HRESULT put_Data(BSTR data) mut => VT.put_Data(ref this, data);

			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComHandlerAction self, out BSTR pClsid) get_ClassId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComHandlerAction self, BSTR clsid) put_ClassId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComHandlerAction self, out BSTR pData) get_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComHandlerAction self, BSTR data) put_Data;
			}
		}
		[CRepr]
		public struct IEmailAction : IAction
		{
			public const new Guid IID = .(0x10f62c64, 0x7e16, 0x4314, 0xa0, 0xc2, 0x0c, 0x36, 0x83, 0xf9, 0x9d, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Server(out BSTR pServer) mut => VT.get_Server(ref this, out pServer);
			public HRESULT put_Server(BSTR server) mut => VT.put_Server(ref this, server);
			public HRESULT get_Subject(out BSTR pSubject) mut => VT.get_Subject(ref this, out pSubject);
			public HRESULT put_Subject(BSTR subject) mut => VT.put_Subject(ref this, subject);
			public HRESULT get_To(out BSTR pTo) mut => VT.get_To(ref this, out pTo);
			public HRESULT put_To(BSTR to) mut => VT.put_To(ref this, to);
			public HRESULT get_Cc(out BSTR pCc) mut => VT.get_Cc(ref this, out pCc);
			public HRESULT put_Cc(BSTR cc) mut => VT.put_Cc(ref this, cc);
			public HRESULT get_Bcc(out BSTR pBcc) mut => VT.get_Bcc(ref this, out pBcc);
			public HRESULT put_Bcc(BSTR bcc) mut => VT.put_Bcc(ref this, bcc);
			public HRESULT get_ReplyTo(out BSTR pReplyTo) mut => VT.get_ReplyTo(ref this, out pReplyTo);
			public HRESULT put_ReplyTo(BSTR replyTo) mut => VT.put_ReplyTo(ref this, replyTo);
			public HRESULT get_From(out BSTR pFrom) mut => VT.get_From(ref this, out pFrom);
			public HRESULT put_From(BSTR from) mut => VT.put_From(ref this, from);
			public HRESULT get_HeaderFields(out ITaskNamedValueCollection* ppHeaderFields) mut => VT.get_HeaderFields(ref this, out ppHeaderFields);
			public HRESULT put_HeaderFields(ref ITaskNamedValueCollection pHeaderFields) mut => VT.put_HeaderFields(ref this, ref pHeaderFields);
			public HRESULT get_Body(out BSTR pBody) mut => VT.get_Body(ref this, out pBody);
			public HRESULT put_Body(BSTR body) mut => VT.put_Body(ref this, body);
			public HRESULT get_Attachments(out SAFEARRAY* pAttachements) mut => VT.get_Attachments(ref this, out pAttachements);
			public HRESULT put_Attachments(out SAFEARRAY pAttachements) mut => VT.put_Attachments(ref this, out pAttachements);

			[CRepr]
			public struct VTable : IAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pServer) get_Server;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR server) put_Server;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pSubject) get_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR subject) put_Subject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pTo) get_To;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR to) put_To;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pCc) get_Cc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR cc) put_Cc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pBcc) get_Bcc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR bcc) put_Bcc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pReplyTo) get_ReplyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR replyTo) put_ReplyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pFrom) get_From;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR from) put_From;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out ITaskNamedValueCollection* ppHeaderFields) get_HeaderFields;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, ref ITaskNamedValueCollection pHeaderFields) put_HeaderFields;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out BSTR pBody) get_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, BSTR body) put_Body;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out SAFEARRAY* pAttachements) get_Attachments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEmailAction self, out SAFEARRAY pAttachements) put_Attachments;
			}
		}
		[CRepr]
		public struct ITriggerCollection : IDispatch
		{
			public const new Guid IID = .(0x85df5081, 0x1b24, 0x4f32, 0x87, 0x8a, 0xd9, 0xd1, 0x4d, 0xf4, 0xcb, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(int32 index, out ITrigger* ppTrigger) mut => VT.get_Item(ref this, index, out ppTrigger);
			public HRESULT get__NewEnum(out IUnknown* ppEnum) mut => VT.get__NewEnum(ref this, out ppEnum);
			public HRESULT Create(TASK_TRIGGER_TYPE2 type, out ITrigger* ppTrigger) mut => VT.Create(ref this, type, out ppTrigger);
			public HRESULT Remove(VARIANT index) mut => VT.Remove(ref this, index);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self, int32 index, out ITrigger* ppTrigger) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self, out IUnknown* ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self, TASK_TRIGGER_TYPE2 type, out ITrigger* ppTrigger) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self, VARIANT index) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITriggerCollection self) Clear;
			}
		}
		[CRepr]
		public struct IActionCollection : IDispatch
		{
			public const new Guid IID = .(0x02820e19, 0x7b98, 0x4ed2, 0xb2, 0xe8, 0xfd, 0xcc, 0xce, 0xff, 0x61, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(int32 index, out IAction* ppAction) mut => VT.get_Item(ref this, index, out ppAction);
			public HRESULT get__NewEnum(out IUnknown* ppEnum) mut => VT.get__NewEnum(ref this, out ppEnum);
			public HRESULT get_XmlText(out BSTR pText) mut => VT.get_XmlText(ref this, out pText);
			public HRESULT put_XmlText(BSTR text) mut => VT.put_XmlText(ref this, text);
			public HRESULT Create(TASK_ACTION_TYPE type, out IAction* ppAction) mut => VT.Create(ref this, type, out ppAction);
			public HRESULT Remove(VARIANT index) mut => VT.Remove(ref this, index);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT get_Context(out BSTR pContext) mut => VT.get_Context(ref this, out pContext);
			public HRESULT put_Context(BSTR context) mut => VT.put_Context(ref this, context);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, int32 index, out IAction* ppAction) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, out IUnknown* ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, out BSTR pText) get_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, BSTR text) put_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, TASK_ACTION_TYPE type, out IAction* ppAction) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, VARIANT index) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, out BSTR pContext) get_Context;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionCollection self, BSTR context) put_Context;
			}
		}
		[CRepr]
		public struct IPrincipal : IDispatch
		{
			public const new Guid IID = .(0xd98d51e5, 0xc9b4, 0x496a, 0xa9, 0xc1, 0x18, 0x98, 0x02, 0x61, 0xcf, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(out BSTR pId) mut => VT.get_Id(ref this, out pId);
			public HRESULT put_Id(BSTR Id) mut => VT.put_Id(ref this, Id);
			public HRESULT get_DisplayName(out BSTR pName) mut => VT.get_DisplayName(ref this, out pName);
			public HRESULT put_DisplayName(BSTR name) mut => VT.put_DisplayName(ref this, name);
			public HRESULT get_UserId(out BSTR pUser) mut => VT.get_UserId(ref this, out pUser);
			public HRESULT put_UserId(BSTR user) mut => VT.put_UserId(ref this, user);
			public HRESULT get_LogonType(out TASK_LOGON_TYPE pLogon) mut => VT.get_LogonType(ref this, out pLogon);
			public HRESULT put_LogonType(TASK_LOGON_TYPE logon) mut => VT.put_LogonType(ref this, logon);
			public HRESULT get_GroupId(out BSTR pGroup) mut => VT.get_GroupId(ref this, out pGroup);
			public HRESULT put_GroupId(BSTR group) mut => VT.put_GroupId(ref this, group);
			public HRESULT get_RunLevel(out TASK_RUNLEVEL_TYPE pRunLevel) mut => VT.get_RunLevel(ref this, out pRunLevel);
			public HRESULT put_RunLevel(TASK_RUNLEVEL_TYPE runLevel) mut => VT.put_RunLevel(ref this, runLevel);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out BSTR pId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, BSTR Id) put_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out BSTR pName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, BSTR name) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out BSTR pUser) get_UserId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, BSTR user) put_UserId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out TASK_LOGON_TYPE pLogon) get_LogonType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, TASK_LOGON_TYPE logon) put_LogonType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out BSTR pGroup) get_GroupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, BSTR group) put_GroupId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, out TASK_RUNLEVEL_TYPE pRunLevel) get_RunLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal self, TASK_RUNLEVEL_TYPE runLevel) put_RunLevel;
			}
		}
		[CRepr]
		public struct IPrincipal2 : IDispatch
		{
			public const new Guid IID = .(0x248919ae, 0xe345, 0x4a6d, 0x8a, 0xeb, 0xe0, 0xd3, 0x16, 0x5c, 0x90, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProcessTokenSidType(out TASK_PROCESSTOKENSID_TYPE pProcessTokenSidType) mut => VT.get_ProcessTokenSidType(ref this, out pProcessTokenSidType);
			public HRESULT put_ProcessTokenSidType(TASK_PROCESSTOKENSID_TYPE processTokenSidType) mut => VT.put_ProcessTokenSidType(ref this, processTokenSidType);
			public HRESULT get_RequiredPrivilegeCount(out int32 pCount) mut => VT.get_RequiredPrivilegeCount(ref this, out pCount);
			public HRESULT get_RequiredPrivilege(int32 index, out BSTR pPrivilege) mut => VT.get_RequiredPrivilege(ref this, index, out pPrivilege);
			public HRESULT AddRequiredPrivilege(BSTR privilege) mut => VT.AddRequiredPrivilege(ref this, privilege);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal2 self, out TASK_PROCESSTOKENSID_TYPE pProcessTokenSidType) get_ProcessTokenSidType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal2 self, TASK_PROCESSTOKENSID_TYPE processTokenSidType) put_ProcessTokenSidType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal2 self, out int32 pCount) get_RequiredPrivilegeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal2 self, int32 index, out BSTR pPrivilege) get_RequiredPrivilege;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrincipal2 self, BSTR privilege) AddRequiredPrivilege;
			}
		}
		[CRepr]
		public struct IRegistrationInfo : IDispatch
		{
			public const new Guid IID = .(0x416d8b73, 0xcb41, 0x4ea1, 0x80, 0x5c, 0x9b, 0xe9, 0xa5, 0xac, 0x4a, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(out BSTR pDescription) mut => VT.get_Description(ref this, out pDescription);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT get_Author(out BSTR pAuthor) mut => VT.get_Author(ref this, out pAuthor);
			public HRESULT put_Author(BSTR author) mut => VT.put_Author(ref this, author);
			public HRESULT get_Version(out BSTR pVersion) mut => VT.get_Version(ref this, out pVersion);
			public HRESULT put_Version(BSTR version) mut => VT.put_Version(ref this, version);
			public HRESULT get_Date(out BSTR pDate) mut => VT.get_Date(ref this, out pDate);
			public HRESULT put_Date(BSTR date) mut => VT.put_Date(ref this, date);
			public HRESULT get_Documentation(out BSTR pDocumentation) mut => VT.get_Documentation(ref this, out pDocumentation);
			public HRESULT put_Documentation(BSTR documentation) mut => VT.put_Documentation(ref this, documentation);
			public HRESULT get_XmlText(out BSTR pText) mut => VT.get_XmlText(ref this, out pText);
			public HRESULT put_XmlText(BSTR text) mut => VT.put_XmlText(ref this, text);
			public HRESULT get_URI(out BSTR pUri) mut => VT.get_URI(ref this, out pUri);
			public HRESULT put_URI(BSTR uri) mut => VT.put_URI(ref this, uri);
			public HRESULT get_SecurityDescriptor(out VARIANT pSddl) mut => VT.get_SecurityDescriptor(ref this, out pSddl);
			public HRESULT put_SecurityDescriptor(VARIANT sddl) mut => VT.put_SecurityDescriptor(ref this, sddl);
			public HRESULT get_Source(out BSTR pSource) mut => VT.get_Source(ref this, out pSource);
			public HRESULT put_Source(BSTR source) mut => VT.put_Source(ref this, source);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pAuthor) get_Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR author) put_Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pVersion) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR version) put_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pDate) get_Date;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR date) put_Date;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pDocumentation) get_Documentation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR documentation) put_Documentation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pText) get_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR text) put_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pUri) get_URI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR uri) put_URI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out VARIANT pSddl) get_SecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, VARIANT sddl) put_SecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, out BSTR pSource) get_Source;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegistrationInfo self, BSTR source) put_Source;
			}
		}
		[CRepr]
		public struct ITaskDefinition : IDispatch
		{
			public const new Guid IID = .(0xf5bc8fc5, 0x536d, 0x4f77, 0xb8, 0x52, 0xfb, 0xc1, 0x35, 0x6f, 0xde, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RegistrationInfo(out IRegistrationInfo* ppRegistrationInfo) mut => VT.get_RegistrationInfo(ref this, out ppRegistrationInfo);
			public HRESULT put_RegistrationInfo(ref IRegistrationInfo pRegistrationInfo) mut => VT.put_RegistrationInfo(ref this, ref pRegistrationInfo);
			public HRESULT get_Triggers(out ITriggerCollection* ppTriggers) mut => VT.get_Triggers(ref this, out ppTriggers);
			public HRESULT put_Triggers(ref ITriggerCollection pTriggers) mut => VT.put_Triggers(ref this, ref pTriggers);
			public HRESULT get_Settings(out ITaskSettings* ppSettings) mut => VT.get_Settings(ref this, out ppSettings);
			public HRESULT put_Settings(ref ITaskSettings pSettings) mut => VT.put_Settings(ref this, ref pSettings);
			public HRESULT get_Data(out BSTR pData) mut => VT.get_Data(ref this, out pData);
			public HRESULT put_Data(BSTR data) mut => VT.put_Data(ref this, data);
			public HRESULT get_Principal(out IPrincipal* ppPrincipal) mut => VT.get_Principal(ref this, out ppPrincipal);
			public HRESULT put_Principal(ref IPrincipal pPrincipal) mut => VT.put_Principal(ref this, ref pPrincipal);
			public HRESULT get_Actions(out IActionCollection* ppActions) mut => VT.get_Actions(ref this, out ppActions);
			public HRESULT put_Actions(ref IActionCollection pActions) mut => VT.put_Actions(ref this, ref pActions);
			public HRESULT get_XmlText(out BSTR pXml) mut => VT.get_XmlText(ref this, out pXml);
			public HRESULT put_XmlText(BSTR xml) mut => VT.put_XmlText(ref this, xml);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out IRegistrationInfo* ppRegistrationInfo) get_RegistrationInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, ref IRegistrationInfo pRegistrationInfo) put_RegistrationInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out ITriggerCollection* ppTriggers) get_Triggers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, ref ITriggerCollection pTriggers) put_Triggers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out ITaskSettings* ppSettings) get_Settings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, ref ITaskSettings pSettings) put_Settings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out BSTR pData) get_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, BSTR data) put_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out IPrincipal* ppPrincipal) get_Principal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, ref IPrincipal pPrincipal) put_Principal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out IActionCollection* ppActions) get_Actions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, ref IActionCollection pActions) put_Actions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, out BSTR pXml) get_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskDefinition self, BSTR xml) put_XmlText;
			}
		}
		[CRepr]
		public struct ITaskSettings : IDispatch
		{
			public const new Guid IID = .(0x8fd4711d, 0x2d02, 0x4c8c, 0x87, 0xe3, 0xef, 0xf6, 0x99, 0xde, 0x12, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllowDemandStart(out int16 pAllowDemandStart) mut => VT.get_AllowDemandStart(ref this, out pAllowDemandStart);
			public HRESULT put_AllowDemandStart(int16 allowDemandStart) mut => VT.put_AllowDemandStart(ref this, allowDemandStart);
			public HRESULT get_RestartInterval(out BSTR pRestartInterval) mut => VT.get_RestartInterval(ref this, out pRestartInterval);
			public HRESULT put_RestartInterval(BSTR restartInterval) mut => VT.put_RestartInterval(ref this, restartInterval);
			public HRESULT get_RestartCount(out int32 pRestartCount) mut => VT.get_RestartCount(ref this, out pRestartCount);
			public HRESULT put_RestartCount(int32 restartCount) mut => VT.put_RestartCount(ref this, restartCount);
			public HRESULT get_MultipleInstances(out TASK_INSTANCES_POLICY pPolicy) mut => VT.get_MultipleInstances(ref this, out pPolicy);
			public HRESULT put_MultipleInstances(TASK_INSTANCES_POLICY policy) mut => VT.put_MultipleInstances(ref this, policy);
			public HRESULT get_StopIfGoingOnBatteries(out int16 pStopIfOnBatteries) mut => VT.get_StopIfGoingOnBatteries(ref this, out pStopIfOnBatteries);
			public HRESULT put_StopIfGoingOnBatteries(int16 stopIfOnBatteries) mut => VT.put_StopIfGoingOnBatteries(ref this, stopIfOnBatteries);
			public HRESULT get_DisallowStartIfOnBatteries(out int16 pDisallowStart) mut => VT.get_DisallowStartIfOnBatteries(ref this, out pDisallowStart);
			public HRESULT put_DisallowStartIfOnBatteries(int16 disallowStart) mut => VT.put_DisallowStartIfOnBatteries(ref this, disallowStart);
			public HRESULT get_AllowHardTerminate(out int16 pAllowHardTerminate) mut => VT.get_AllowHardTerminate(ref this, out pAllowHardTerminate);
			public HRESULT put_AllowHardTerminate(int16 allowHardTerminate) mut => VT.put_AllowHardTerminate(ref this, allowHardTerminate);
			public HRESULT get_StartWhenAvailable(out int16 pStartWhenAvailable) mut => VT.get_StartWhenAvailable(ref this, out pStartWhenAvailable);
			public HRESULT put_StartWhenAvailable(int16 startWhenAvailable) mut => VT.put_StartWhenAvailable(ref this, startWhenAvailable);
			public HRESULT get_XmlText(out BSTR pText) mut => VT.get_XmlText(ref this, out pText);
			public HRESULT put_XmlText(BSTR text) mut => VT.put_XmlText(ref this, text);
			public HRESULT get_RunOnlyIfNetworkAvailable(out int16 pRunOnlyIfNetworkAvailable) mut => VT.get_RunOnlyIfNetworkAvailable(ref this, out pRunOnlyIfNetworkAvailable);
			public HRESULT put_RunOnlyIfNetworkAvailable(int16 runOnlyIfNetworkAvailable) mut => VT.put_RunOnlyIfNetworkAvailable(ref this, runOnlyIfNetworkAvailable);
			public HRESULT get_ExecutionTimeLimit(out BSTR pExecutionTimeLimit) mut => VT.get_ExecutionTimeLimit(ref this, out pExecutionTimeLimit);
			public HRESULT put_ExecutionTimeLimit(BSTR executionTimeLimit) mut => VT.put_ExecutionTimeLimit(ref this, executionTimeLimit);
			public HRESULT get_Enabled(out int16 pEnabled) mut => VT.get_Enabled(ref this, out pEnabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_DeleteExpiredTaskAfter(out BSTR pExpirationDelay) mut => VT.get_DeleteExpiredTaskAfter(ref this, out pExpirationDelay);
			public HRESULT put_DeleteExpiredTaskAfter(BSTR expirationDelay) mut => VT.put_DeleteExpiredTaskAfter(ref this, expirationDelay);
			public HRESULT get_Priority(out int32 pPriority) mut => VT.get_Priority(ref this, out pPriority);
			public HRESULT put_Priority(int32 priority) mut => VT.put_Priority(ref this, priority);
			public HRESULT get_Compatibility(out TASK_COMPATIBILITY pCompatLevel) mut => VT.get_Compatibility(ref this, out pCompatLevel);
			public HRESULT put_Compatibility(TASK_COMPATIBILITY compatLevel) mut => VT.put_Compatibility(ref this, compatLevel);
			public HRESULT get_Hidden(out int16 pHidden) mut => VT.get_Hidden(ref this, out pHidden);
			public HRESULT put_Hidden(int16 hidden) mut => VT.put_Hidden(ref this, hidden);
			public HRESULT get_IdleSettings(out IIdleSettings* ppIdleSettings) mut => VT.get_IdleSettings(ref this, out ppIdleSettings);
			public HRESULT put_IdleSettings(ref IIdleSettings pIdleSettings) mut => VT.put_IdleSettings(ref this, ref pIdleSettings);
			public HRESULT get_RunOnlyIfIdle(out int16 pRunOnlyIfIdle) mut => VT.get_RunOnlyIfIdle(ref this, out pRunOnlyIfIdle);
			public HRESULT put_RunOnlyIfIdle(int16 runOnlyIfIdle) mut => VT.put_RunOnlyIfIdle(ref this, runOnlyIfIdle);
			public HRESULT get_WakeToRun(out int16 pWake) mut => VT.get_WakeToRun(ref this, out pWake);
			public HRESULT put_WakeToRun(int16 wake) mut => VT.put_WakeToRun(ref this, wake);
			public HRESULT get_NetworkSettings(out INetworkSettings* ppNetworkSettings) mut => VT.get_NetworkSettings(ref this, out ppNetworkSettings);
			public HRESULT put_NetworkSettings(ref INetworkSettings pNetworkSettings) mut => VT.put_NetworkSettings(ref this, ref pNetworkSettings);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pAllowDemandStart) get_AllowDemandStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 allowDemandStart) put_AllowDemandStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out BSTR pRestartInterval) get_RestartInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, BSTR restartInterval) put_RestartInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int32 pRestartCount) get_RestartCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int32 restartCount) put_RestartCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out TASK_INSTANCES_POLICY pPolicy) get_MultipleInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, TASK_INSTANCES_POLICY policy) put_MultipleInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pStopIfOnBatteries) get_StopIfGoingOnBatteries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 stopIfOnBatteries) put_StopIfGoingOnBatteries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pDisallowStart) get_DisallowStartIfOnBatteries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 disallowStart) put_DisallowStartIfOnBatteries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pAllowHardTerminate) get_AllowHardTerminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 allowHardTerminate) put_AllowHardTerminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pStartWhenAvailable) get_StartWhenAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 startWhenAvailable) put_StartWhenAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out BSTR pText) get_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, BSTR text) put_XmlText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pRunOnlyIfNetworkAvailable) get_RunOnlyIfNetworkAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 runOnlyIfNetworkAvailable) put_RunOnlyIfNetworkAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out BSTR pExecutionTimeLimit) get_ExecutionTimeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, BSTR executionTimeLimit) put_ExecutionTimeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out BSTR pExpirationDelay) get_DeleteExpiredTaskAfter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, BSTR expirationDelay) put_DeleteExpiredTaskAfter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int32 pPriority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int32 priority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out TASK_COMPATIBILITY pCompatLevel) get_Compatibility;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, TASK_COMPATIBILITY compatLevel) put_Compatibility;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pHidden) get_Hidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 hidden) put_Hidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out IIdleSettings* ppIdleSettings) get_IdleSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, ref IIdleSettings pIdleSettings) put_IdleSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pRunOnlyIfIdle) get_RunOnlyIfIdle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 runOnlyIfIdle) put_RunOnlyIfIdle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out int16 pWake) get_WakeToRun;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, int16 wake) put_WakeToRun;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, out INetworkSettings* ppNetworkSettings) get_NetworkSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings self, ref INetworkSettings pNetworkSettings) put_NetworkSettings;
			}
		}
		[CRepr]
		public struct ITaskSettings2 : IDispatch
		{
			public const new Guid IID = .(0x2c05c3f0, 0x6eed, 0x4c05, 0xa1, 0x5f, 0xed, 0x7d, 0x7a, 0x98, 0xa3, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisallowStartOnRemoteAppSession(out int16 pDisallowStart) mut => VT.get_DisallowStartOnRemoteAppSession(ref this, out pDisallowStart);
			public HRESULT put_DisallowStartOnRemoteAppSession(int16 disallowStart) mut => VT.put_DisallowStartOnRemoteAppSession(ref this, disallowStart);
			public HRESULT get_UseUnifiedSchedulingEngine(out int16 pUseUnifiedEngine) mut => VT.get_UseUnifiedSchedulingEngine(ref this, out pUseUnifiedEngine);
			public HRESULT put_UseUnifiedSchedulingEngine(int16 useUnifiedEngine) mut => VT.put_UseUnifiedSchedulingEngine(ref this, useUnifiedEngine);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings2 self, out int16 pDisallowStart) get_DisallowStartOnRemoteAppSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings2 self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings2 self, out int16 pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings2 self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
			}
		}
		[CRepr]
		public struct ITaskSettings3 : ITaskSettings
		{
			public const new Guid IID = .(0x0ad9d0d7, 0x0c7f, 0x4ebb, 0x9a, 0x5f, 0xd1, 0xc6, 0x48, 0xdc, 0xa5, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisallowStartOnRemoteAppSession(out int16 pDisallowStart) mut => VT.get_DisallowStartOnRemoteAppSession(ref this, out pDisallowStart);
			public HRESULT put_DisallowStartOnRemoteAppSession(int16 disallowStart) mut => VT.put_DisallowStartOnRemoteAppSession(ref this, disallowStart);
			public HRESULT get_UseUnifiedSchedulingEngine(out int16 pUseUnifiedEngine) mut => VT.get_UseUnifiedSchedulingEngine(ref this, out pUseUnifiedEngine);
			public HRESULT put_UseUnifiedSchedulingEngine(int16 useUnifiedEngine) mut => VT.put_UseUnifiedSchedulingEngine(ref this, useUnifiedEngine);
			public HRESULT get_MaintenanceSettings(out IMaintenanceSettings* ppMaintenanceSettings) mut => VT.get_MaintenanceSettings(ref this, out ppMaintenanceSettings);
			public HRESULT put_MaintenanceSettings(ref IMaintenanceSettings pMaintenanceSettings) mut => VT.put_MaintenanceSettings(ref this, ref pMaintenanceSettings);
			public HRESULT CreateMaintenanceSettings(out IMaintenanceSettings* ppMaintenanceSettings) mut => VT.CreateMaintenanceSettings(ref this, out ppMaintenanceSettings);
			public HRESULT get_Volatile(out int16 pVolatile) mut => VT.get_Volatile(ref this, out pVolatile);
			public HRESULT put_Volatile(int16 Volatile) mut => VT.put_Volatile(ref this, Volatile);

			[CRepr]
			public struct VTable : ITaskSettings.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, out int16 pDisallowStart) get_DisallowStartOnRemoteAppSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, out int16 pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, out IMaintenanceSettings* ppMaintenanceSettings) get_MaintenanceSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, ref IMaintenanceSettings pMaintenanceSettings) put_MaintenanceSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, out IMaintenanceSettings* ppMaintenanceSettings) CreateMaintenanceSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, out int16 pVolatile) get_Volatile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskSettings3 self, int16 Volatile) put_Volatile;
			}
		}
		[CRepr]
		public struct IMaintenanceSettings : IDispatch
		{
			public const new Guid IID = .(0xa6024fa8, 0x9652, 0x4adb, 0xa6, 0xbf, 0x5c, 0xfc, 0xd8, 0x77, 0xa7, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Period(BSTR value) mut => VT.put_Period(ref this, value);
			public HRESULT get_Period(out BSTR target) mut => VT.get_Period(ref this, out target);
			public HRESULT put_Deadline(BSTR value) mut => VT.put_Deadline(ref this, value);
			public HRESULT get_Deadline(out BSTR target) mut => VT.get_Deadline(ref this, out target);
			public HRESULT put_Exclusive(int16 value) mut => VT.put_Exclusive(ref this, value);
			public HRESULT get_Exclusive(out int16 target) mut => VT.get_Exclusive(ref this, out target);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, BSTR value) put_Period;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, out BSTR target) get_Period;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, BSTR value) put_Deadline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, out BSTR target) get_Deadline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, int16 value) put_Exclusive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMaintenanceSettings self, out int16 target) get_Exclusive;
			}
		}
		[CRepr]
		public struct IRegisteredTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x86627eb4, 0x42a7, 0x41e4, 0xa4, 0xd9, 0xac, 0x33, 0xa7, 0x2f, 0x2d, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT get_Item(VARIANT index, IRegisteredTask** ppRegisteredTask) mut => VT.get_Item(ref this, index, ppRegisteredTask);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTaskCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTaskCollection self, VARIANT index, IRegisteredTask** ppRegisteredTask) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredTaskCollection self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ITaskFolder : IDispatch
		{
			public const new Guid IID = .(0x8cfac062, 0xa080, 0x4c15, 0x9a, 0x88, 0xaa, 0x7c, 0x2a, 0xf8, 0x0d, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut => VT.get_Name(ref this, pName);
			public HRESULT get_Path(BSTR* pPath) mut => VT.get_Path(ref this, pPath);
			public HRESULT GetFolder(BSTR path, ITaskFolder** ppFolder) mut => VT.GetFolder(ref this, path, ppFolder);
			public HRESULT GetFolders(int32 flags, ITaskFolderCollection** ppFolders) mut => VT.GetFolders(ref this, flags, ppFolders);
			public HRESULT CreateFolder(BSTR subFolderName, VARIANT sddl, ITaskFolder** ppFolder) mut => VT.CreateFolder(ref this, subFolderName, sddl, ppFolder);
			public HRESULT DeleteFolder(BSTR subFolderName, int32 flags) mut => VT.DeleteFolder(ref this, subFolderName, flags);
			public HRESULT GetTask(BSTR path, IRegisteredTask** ppTask) mut => VT.GetTask(ref this, path, ppTask);
			public HRESULT GetTasks(int32 flags, IRegisteredTaskCollection** ppTasks) mut => VT.GetTasks(ref this, flags, ppTasks);
			public HRESULT DeleteTask(BSTR name, int32 flags) mut => VT.DeleteTask(ref this, name, flags);
			public HRESULT RegisterTask(BSTR path, BSTR xmlText, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) mut => VT.RegisterTask(ref this, path, xmlText, flags, userId, password, logonType, sddl, ppTask);
			public HRESULT RegisterTaskDefinition(BSTR path, ITaskDefinition* pDefinition, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) mut => VT.RegisterTaskDefinition(ref this, path, pDefinition, flags, userId, password, logonType, sddl, ppTask);
			public HRESULT GetSecurityDescriptor(int32 securityInformation, BSTR* pSddl) mut => VT.GetSecurityDescriptor(ref this, securityInformation, pSddl);
			public HRESULT SetSecurityDescriptor(BSTR sddl, int32 flags) mut => VT.SetSecurityDescriptor(ref this, sddl, flags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR* pName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR* pPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR path, ITaskFolder** ppFolder) GetFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, int32 flags, ITaskFolderCollection** ppFolders) GetFolders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR subFolderName, VARIANT sddl, ITaskFolder** ppFolder) CreateFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR subFolderName, int32 flags) DeleteFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR path, IRegisteredTask** ppTask) GetTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, int32 flags, IRegisteredTaskCollection** ppTasks) GetTasks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR name, int32 flags) DeleteTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR path, BSTR xmlText, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR path, ITaskDefinition* pDefinition, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTaskDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskFolder self, BSTR sddl, int32 flags) SetSecurityDescriptor;
			}
		}
		[CRepr]
		public struct IIdleSettings : IDispatch
		{
			public const new Guid IID = .(0x84594461, 0x0053, 0x4342, 0xa8, 0xfd, 0x08, 0x8f, 0xab, 0xf1, 0x1f, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IdleDuration(out BSTR pDelay) mut => VT.get_IdleDuration(ref this, out pDelay);
			public HRESULT put_IdleDuration(BSTR delay) mut => VT.put_IdleDuration(ref this, delay);
			public HRESULT get_WaitTimeout(out BSTR pTimeout) mut => VT.get_WaitTimeout(ref this, out pTimeout);
			public HRESULT put_WaitTimeout(BSTR timeout) mut => VT.put_WaitTimeout(ref this, timeout);
			public HRESULT get_StopOnIdleEnd(out int16 pStop) mut => VT.get_StopOnIdleEnd(ref this, out pStop);
			public HRESULT put_StopOnIdleEnd(int16 stop) mut => VT.put_StopOnIdleEnd(ref this, stop);
			public HRESULT get_RestartOnIdle(out int16 pRestart) mut => VT.get_RestartOnIdle(ref this, out pRestart);
			public HRESULT put_RestartOnIdle(int16 restart) mut => VT.put_RestartOnIdle(ref this, restart);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, out BSTR pDelay) get_IdleDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, BSTR delay) put_IdleDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, out BSTR pTimeout) get_WaitTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, BSTR timeout) put_WaitTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, out int16 pStop) get_StopOnIdleEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, int16 stop) put_StopOnIdleEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, out int16 pRestart) get_RestartOnIdle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdleSettings self, int16 restart) put_RestartOnIdle;
			}
		}
		[CRepr]
		public struct INetworkSettings : IDispatch
		{
			public const new Guid IID = .(0x9f7dea84, 0xc30b, 0x4245, 0x80, 0xb6, 0x00, 0xe9, 0xf6, 0x46, 0xf1, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pName) mut => VT.get_Name(ref this, out pName);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Id(out BSTR pId) mut => VT.get_Id(ref this, out pId);
			public HRESULT put_Id(BSTR id) mut => VT.put_Id(ref this, id);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkSettings self, out BSTR pName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkSettings self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkSettings self, out BSTR pId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkSettings self, BSTR id) put_Id;
			}
		}
		[CRepr]
		public struct IRepetitionPattern : IDispatch
		{
			public const new Guid IID = .(0x7fb9acf1, 0x26be, 0x400e, 0x85, 0xb5, 0x29, 0x4b, 0x9c, 0x75, 0xdf, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Interval(out BSTR pInterval) mut => VT.get_Interval(ref this, out pInterval);
			public HRESULT put_Interval(BSTR interval) mut => VT.put_Interval(ref this, interval);
			public HRESULT get_Duration(out BSTR pDuration) mut => VT.get_Duration(ref this, out pDuration);
			public HRESULT put_Duration(BSTR duration) mut => VT.put_Duration(ref this, duration);
			public HRESULT get_StopAtDurationEnd(out int16 pStop) mut => VT.get_StopAtDurationEnd(ref this, out pStop);
			public HRESULT put_StopAtDurationEnd(int16 stop) mut => VT.put_StopAtDurationEnd(ref this, stop);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, out BSTR pInterval) get_Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, BSTR interval) put_Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, out BSTR pDuration) get_Duration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, BSTR duration) put_Duration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, out int16 pStop) get_StopAtDurationEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRepetitionPattern self, int16 stop) put_StopAtDurationEnd;
			}
		}
		
	}
}
