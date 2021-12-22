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
		
		[CRepr]
		public struct ITaskTrigger : IUnknown
		{
			public const new Guid IID = .(0x148bd52b, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public function HRESULT(ITaskTrigger *self, TASK_TRIGGER* pTrigger) SetTrigger;
			public function HRESULT(ITaskTrigger *self, TASK_TRIGGER* pTrigger) GetTrigger;
			public function HRESULT(ITaskTrigger *self, PWSTR* ppwszTrigger) GetTriggerString;
		}
		[CRepr]
		public struct IScheduledWorkItem : IUnknown
		{
			public const new Guid IID = .(0xa6b952f0, 0xa4b1, 0x11d0, 0x99, 0x7d, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xec);
			
			public function HRESULT(IScheduledWorkItem *self, uint16* piNewTrigger, ITaskTrigger** ppTrigger) CreateTrigger;
			public function HRESULT(IScheduledWorkItem *self, uint16 iTrigger) DeleteTrigger;
			public function HRESULT(IScheduledWorkItem *self, uint16* pwCount) GetTriggerCount;
			public function HRESULT(IScheduledWorkItem *self, uint16 iTrigger, ITaskTrigger** ppTrigger) GetTrigger;
			public function HRESULT(IScheduledWorkItem *self, uint16 iTrigger, PWSTR* ppwszTrigger) GetTriggerString;
			public function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstBegin, SYSTEMTIME* pstEnd, uint16* pCount, SYSTEMTIME** rgstTaskTimes) GetRunTimes;
			public function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstNextRun) GetNextRunTime;
			public function HRESULT(IScheduledWorkItem *self, uint16 wIdleMinutes, uint16 wDeadlineMinutes) SetIdleWait;
			public function HRESULT(IScheduledWorkItem *self, uint16* pwIdleMinutes, uint16* pwDeadlineMinutes) GetIdleWait;
			public function HRESULT(IScheduledWorkItem *self) Run;
			public function HRESULT(IScheduledWorkItem *self) Terminate;
			public function HRESULT(IScheduledWorkItem *self, HWND hParent, uint32 dwReserved) EditWorkItem;
			public function HRESULT(IScheduledWorkItem *self, SYSTEMTIME* pstLastRun) GetMostRecentRunTime;
			public function HRESULT(IScheduledWorkItem *self, HRESULT* phrStatus) GetStatus;
			public function HRESULT(IScheduledWorkItem *self, uint32* pdwExitCode) GetExitCode;
			public function HRESULT(IScheduledWorkItem *self, PWSTR pwszComment) SetComment;
			public function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszComment) GetComment;
			public function HRESULT(IScheduledWorkItem *self, PWSTR pwszCreator) SetCreator;
			public function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszCreator) GetCreator;
			public function HRESULT(IScheduledWorkItem *self, uint16 cbData, uint8* rgbData) SetWorkItemData;
			public function HRESULT(IScheduledWorkItem *self, uint16* pcbData, uint8** prgbData) GetWorkItemData;
			public function HRESULT(IScheduledWorkItem *self, uint16 wRetryCount) SetErrorRetryCount;
			public function HRESULT(IScheduledWorkItem *self, uint16* pwRetryCount) GetErrorRetryCount;
			public function HRESULT(IScheduledWorkItem *self, uint16 wRetryInterval) SetErrorRetryInterval;
			public function HRESULT(IScheduledWorkItem *self, uint16* pwRetryInterval) GetErrorRetryInterval;
			public function HRESULT(IScheduledWorkItem *self, uint32 dwFlags) SetFlags;
			public function HRESULT(IScheduledWorkItem *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(IScheduledWorkItem *self, PWSTR pwszAccountName, PWSTR pwszPassword) SetAccountInformation;
			public function HRESULT(IScheduledWorkItem *self, PWSTR* ppwszAccountName) GetAccountInformation;
		}
		[CRepr]
		public struct ITask : IScheduledWorkItem
		{
			public const new Guid IID = .(0x148bd524, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public function HRESULT(ITask *self, PWSTR pwszApplicationName) SetApplicationName;
			public function HRESULT(ITask *self, PWSTR* ppwszApplicationName) GetApplicationName;
			public function HRESULT(ITask *self, PWSTR pwszParameters) SetParameters;
			public function HRESULT(ITask *self, PWSTR* ppwszParameters) GetParameters;
			public function HRESULT(ITask *self, PWSTR pwszWorkingDirectory) SetWorkingDirectory;
			public function HRESULT(ITask *self, PWSTR* ppwszWorkingDirectory) GetWorkingDirectory;
			public function HRESULT(ITask *self, uint32 dwPriority) SetPriority;
			public function HRESULT(ITask *self, uint32* pdwPriority) GetPriority;
			public function HRESULT(ITask *self, uint32 dwFlags) SetTaskFlags;
			public function HRESULT(ITask *self, uint32* pdwFlags) GetTaskFlags;
			public function HRESULT(ITask *self, uint32 dwMaxRunTimeMS) SetMaxRunTime;
			public function HRESULT(ITask *self, uint32* pdwMaxRunTimeMS) GetMaxRunTime;
		}
		[CRepr]
		public struct IEnumWorkItems : IUnknown
		{
			public const new Guid IID = .(0x148bd528, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public function HRESULT(IEnumWorkItems *self, uint32 celt, PWSTR** rgpwszNames, uint32* pceltFetched) Next;
			public function HRESULT(IEnumWorkItems *self, uint32 celt) Skip;
			public function HRESULT(IEnumWorkItems *self) Reset;
			public function HRESULT(IEnumWorkItems *self, IEnumWorkItems** ppEnumWorkItems) Clone;
		}
		[CRepr]
		public struct ITaskScheduler : IUnknown
		{
			public const new Guid IID = .(0x148bd527, 0xa2ab, 0x11ce, 0xb1, 0x1f, 0x00, 0xaa, 0x00, 0x53, 0x05, 0x03);
			
			public function HRESULT(ITaskScheduler *self, PWSTR pwszComputer) SetTargetComputer;
			public function HRESULT(ITaskScheduler *self, PWSTR* ppwszComputer) GetTargetComputer;
			public function HRESULT(ITaskScheduler *self, IEnumWorkItems** ppEnumWorkItems) Enum;
			public function HRESULT(ITaskScheduler *self, PWSTR pwszName, Guid* riid, IUnknown** ppUnk) Activate;
			public function HRESULT(ITaskScheduler *self, PWSTR pwszName) Delete;
			public function HRESULT(ITaskScheduler *self, PWSTR pwszTaskName, Guid* rclsid, Guid* riid, IUnknown** ppUnk) NewWorkItem;
			public function HRESULT(ITaskScheduler *self, PWSTR pwszTaskName, IScheduledWorkItem* pWorkItem) AddWorkItem;
			public function HRESULT(ITaskScheduler *self, PWSTR pwszName, Guid* riid) IsOfType;
		}
		[CRepr]
		public struct IProvideTaskPage : IUnknown
		{
			public const new Guid IID = .(0x4086658a, 0xcbbb, 0x11cf, 0xb6, 0x04, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x65);
			
			public function HRESULT(IProvideTaskPage *self, TASKPAGE tpType, BOOL fPersistChanges, HPROPSHEETPAGE* phPage) GetPage;
		}
		[CRepr]
		public struct ITaskFolderCollection : IDispatch
		{
			public const new Guid IID = .(0x79184a66, 0x8664, 0x423f, 0x97, 0xf1, 0x63, 0x73, 0x56, 0xa5, 0xd8, 0x12);
			
			public function HRESULT(ITaskFolderCollection *self, int32* pCount) get_Count;
			public function HRESULT(ITaskFolderCollection *self, VARIANT index, ITaskFolder** ppFolder) get_Item;
			public function HRESULT(ITaskFolderCollection *self, IUnknown** ppEnum) get__NewEnum;
		}
		[CRepr]
		public struct ITaskService : IDispatch
		{
			public const new Guid IID = .(0x2faba4c7, 0x4da9, 0x4013, 0x96, 0x97, 0x20, 0xcc, 0x3f, 0xd4, 0x0f, 0x85);
			
			public function HRESULT(ITaskService *self, BSTR path, ITaskFolder** ppFolder) GetFolder;
			public function HRESULT(ITaskService *self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetRunningTasks;
			public function HRESULT(ITaskService *self, uint32 flags, ITaskDefinition** ppDefinition) NewTask;
			public function HRESULT(ITaskService *self, VARIANT serverName, VARIANT user, VARIANT domain, VARIANT password) Connect;
			public function HRESULT(ITaskService *self, int16* pConnected) get_Connected;
			public function HRESULT(ITaskService *self, BSTR* pServer) get_TargetServer;
			public function HRESULT(ITaskService *self, BSTR* pUser) get_ConnectedUser;
			public function HRESULT(ITaskService *self, BSTR* pDomain) get_ConnectedDomain;
			public function HRESULT(ITaskService *self, uint32* pVersion) get_HighestVersion;
		}
		[CRepr]
		public struct ITaskHandler : IUnknown
		{
			public const new Guid IID = .(0x839d7762, 0x5121, 0x4009, 0x92, 0x34, 0x4f, 0x0d, 0x19, 0x39, 0x4f, 0x04);
			
			public function HRESULT(ITaskHandler *self, IUnknown* pHandlerServices, BSTR data) Start;
			public function HRESULT(ITaskHandler *self, HRESULT* pRetCode) Stop;
			public function HRESULT(ITaskHandler *self) Pause;
			public function HRESULT(ITaskHandler *self) Resume;
		}
		[CRepr]
		public struct ITaskHandlerStatus : IUnknown
		{
			public const new Guid IID = .(0xeaec7a8f, 0x27a0, 0x4ddc, 0x86, 0x75, 0x14, 0x72, 0x6a, 0x01, 0xa3, 0x8a);
			
			public function HRESULT(ITaskHandlerStatus *self, int16 percentComplete, BSTR statusMessage) UpdateStatus;
			public function HRESULT(ITaskHandlerStatus *self, HRESULT taskErrCode) TaskCompleted;
		}
		[CRepr]
		public struct ITaskVariables : IUnknown
		{
			public const new Guid IID = .(0x3e4c9351, 0xd966, 0x4b8b, 0xbb, 0x87, 0xce, 0xba, 0x68, 0xbb, 0x01, 0x07);
			
			public function HRESULT(ITaskVariables *self, BSTR* pInput) GetInput;
			public function HRESULT(ITaskVariables *self, BSTR input) SetOutput;
			public function HRESULT(ITaskVariables *self, BSTR* pContext) GetContext;
		}
		[CRepr]
		public struct ITaskNamedValuePair : IDispatch
		{
			public const new Guid IID = .(0x39038068, 0x2b46, 0x4afd, 0x86, 0x62, 0x7b, 0xb6, 0xf8, 0x68, 0xd2, 0x21);
			
			public function HRESULT(ITaskNamedValuePair *self, BSTR* pName) get_Name;
			public function HRESULT(ITaskNamedValuePair *self, BSTR name) put_Name;
			public function HRESULT(ITaskNamedValuePair *self, BSTR* pValue) get_Value;
			public function HRESULT(ITaskNamedValuePair *self, BSTR value) put_Value;
		}
		[CRepr]
		public struct ITaskNamedValueCollection : IDispatch
		{
			public const new Guid IID = .(0xb4ef826b, 0x63c3, 0x46e4, 0xa5, 0x04, 0xef, 0x69, 0xe4, 0xf7, 0xea, 0x4d);
			
			public function HRESULT(ITaskNamedValueCollection *self, int32* pCount) get_Count;
			public function HRESULT(ITaskNamedValueCollection *self, int32 index, ITaskNamedValuePair** ppPair) get_Item;
			public function HRESULT(ITaskNamedValueCollection *self, IUnknown** ppEnum) get__NewEnum;
			public function HRESULT(ITaskNamedValueCollection *self, BSTR name, BSTR value, ITaskNamedValuePair** ppPair) Create;
			public function HRESULT(ITaskNamedValueCollection *self, int32 index) Remove;
			public function HRESULT(ITaskNamedValueCollection *self) Clear;
		}
		[CRepr]
		public struct IRunningTask : IDispatch
		{
			public const new Guid IID = .(0x653758fb, 0x7b9a, 0x4f1e, 0xa4, 0x71, 0xbe, 0xeb, 0x8e, 0x9b, 0x83, 0x4e);
			
			public function HRESULT(IRunningTask *self, BSTR* pName) get_Name;
			public function HRESULT(IRunningTask *self, BSTR* pGuid) get_InstanceGuid;
			public function HRESULT(IRunningTask *self, BSTR* pPath) get_Path;
			public function HRESULT(IRunningTask *self, TASK_STATE* pState) get_State;
			public function HRESULT(IRunningTask *self, BSTR* pName) get_CurrentAction;
			public function HRESULT(IRunningTask *self) Stop;
			public function HRESULT(IRunningTask *self) Refresh;
			public function HRESULT(IRunningTask *self, uint32* pPID) get_EnginePID;
		}
		[CRepr]
		public struct IRunningTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x6a67614b, 0x6828, 0x4fec, 0xaa, 0x54, 0x6d, 0x52, 0xe8, 0xf1, 0xf2, 0xdb);
			
			public function HRESULT(IRunningTaskCollection *self, int32* pCount) get_Count;
			public function HRESULT(IRunningTaskCollection *self, VARIANT index, IRunningTask** ppRunningTask) get_Item;
			public function HRESULT(IRunningTaskCollection *self, IUnknown** ppEnum) get__NewEnum;
		}
		[CRepr]
		public struct IRegisteredTask : IDispatch
		{
			public const new Guid IID = .(0x9c86f320, 0xdee3, 0x4dd1, 0xb9, 0x72, 0xa3, 0x03, 0xf2, 0x6b, 0x06, 0x1e);
			
			public function HRESULT(IRegisteredTask *self, BSTR* pName) get_Name;
			public function HRESULT(IRegisteredTask *self, BSTR* pPath) get_Path;
			public function HRESULT(IRegisteredTask *self, TASK_STATE* pState) get_State;
			public function HRESULT(IRegisteredTask *self, int16* pEnabled) get_Enabled;
			public function HRESULT(IRegisteredTask *self, int16 enabled) put_Enabled;
			public function HRESULT(IRegisteredTask *self, VARIANT @params, IRunningTask** ppRunningTask) Run;
			public function HRESULT(IRegisteredTask *self, VARIANT @params, int32 flags, int32 sessionID, BSTR user, IRunningTask** ppRunningTask) RunEx;
			public function HRESULT(IRegisteredTask *self, int32 flags, IRunningTaskCollection** ppRunningTasks) GetInstances;
			public function HRESULT(IRegisteredTask *self, double* pLastRunTime) get_LastRunTime;
			public function HRESULT(IRegisteredTask *self, int32* pLastTaskResult) get_LastTaskResult;
			public function HRESULT(IRegisteredTask *self, int32* pNumberOfMissedRuns) get_NumberOfMissedRuns;
			public function HRESULT(IRegisteredTask *self, double* pNextRunTime) get_NextRunTime;
			public function HRESULT(IRegisteredTask *self, ITaskDefinition** ppDefinition) get_Definition;
			public function HRESULT(IRegisteredTask *self, BSTR* pXml) get_Xml;
			public function HRESULT(IRegisteredTask *self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
			public function HRESULT(IRegisteredTask *self, BSTR sddl, int32 flags) SetSecurityDescriptor;
			public function HRESULT(IRegisteredTask *self, int32 flags) Stop;
			public function HRESULT(IRegisteredTask *self, SYSTEMTIME* pstStart, SYSTEMTIME* pstEnd, uint32* pCount, SYSTEMTIME** pRunTimes) GetRunTimes;
		}
		[CRepr]
		public struct ITrigger : IDispatch
		{
			public const new Guid IID = .(0x09941815, 0xea89, 0x4b5b, 0x89, 0xe0, 0x2a, 0x77, 0x38, 0x01, 0xfa, 0xc3);
			
			public function HRESULT(ITrigger *self, TASK_TRIGGER_TYPE2* pType) get_Type;
			public function HRESULT(ITrigger *self, BSTR* pId) get_Id;
			public function HRESULT(ITrigger *self, BSTR id) put_Id;
			public function HRESULT(ITrigger *self, IRepetitionPattern** ppRepeat) get_Repetition;
			public function HRESULT(ITrigger *self, IRepetitionPattern* pRepeat) put_Repetition;
			public function HRESULT(ITrigger *self, BSTR* pTimeLimit) get_ExecutionTimeLimit;
			public function HRESULT(ITrigger *self, BSTR timelimit) put_ExecutionTimeLimit;
			public function HRESULT(ITrigger *self, BSTR* pStart) get_StartBoundary;
			public function HRESULT(ITrigger *self, BSTR start) put_StartBoundary;
			public function HRESULT(ITrigger *self, BSTR* pEnd) get_EndBoundary;
			public function HRESULT(ITrigger *self, BSTR end) put_EndBoundary;
			public function HRESULT(ITrigger *self, int16* pEnabled) get_Enabled;
			public function HRESULT(ITrigger *self, int16 enabled) put_Enabled;
		}
		[CRepr]
		public struct IIdleTrigger : ITrigger
		{
			public const new Guid IID = .(0xd537d2b0, 0x9fb3, 0x4d34, 0x97, 0x39, 0x1f, 0xf5, 0xce, 0x7b, 0x1e, 0xf3);
			
		}
		[CRepr]
		public struct ILogonTrigger : ITrigger
		{
			public const new Guid IID = .(0x72dade38, 0xfae4, 0x4b3e, 0xba, 0xf4, 0x5d, 0x00, 0x9a, 0xf0, 0x2b, 0x1c);
			
			public function HRESULT(ILogonTrigger *self, BSTR* pDelay) get_Delay;
			public function HRESULT(ILogonTrigger *self, BSTR delay) put_Delay;
			public function HRESULT(ILogonTrigger *self, BSTR* pUser) get_UserId;
			public function HRESULT(ILogonTrigger *self, BSTR user) put_UserId;
		}
		[CRepr]
		public struct ISessionStateChangeTrigger : ITrigger
		{
			public const new Guid IID = .(0x754da71b, 0x4385, 0x4475, 0x9d, 0xd9, 0x59, 0x82, 0x94, 0xfa, 0x36, 0x41);
			
			public function HRESULT(ISessionStateChangeTrigger *self, BSTR* pDelay) get_Delay;
			public function HRESULT(ISessionStateChangeTrigger *self, BSTR delay) put_Delay;
			public function HRESULT(ISessionStateChangeTrigger *self, BSTR* pUser) get_UserId;
			public function HRESULT(ISessionStateChangeTrigger *self, BSTR user) put_UserId;
			public function HRESULT(ISessionStateChangeTrigger *self, TASK_SESSION_STATE_CHANGE_TYPE* pType) get_StateChange;
			public function HRESULT(ISessionStateChangeTrigger *self, TASK_SESSION_STATE_CHANGE_TYPE type) put_StateChange;
		}
		[CRepr]
		public struct IEventTrigger : ITrigger
		{
			public const new Guid IID = .(0xd45b0167, 0x9653, 0x4eef, 0xb9, 0x4f, 0x07, 0x32, 0xca, 0x7a, 0xf2, 0x51);
			
			public function HRESULT(IEventTrigger *self, BSTR* pQuery) get_Subscription;
			public function HRESULT(IEventTrigger *self, BSTR query) put_Subscription;
			public function HRESULT(IEventTrigger *self, BSTR* pDelay) get_Delay;
			public function HRESULT(IEventTrigger *self, BSTR delay) put_Delay;
			public function HRESULT(IEventTrigger *self, ITaskNamedValueCollection** ppNamedXPaths) get_ValueQueries;
			public function HRESULT(IEventTrigger *self, ITaskNamedValueCollection* pNamedXPaths) put_ValueQueries;
		}
		[CRepr]
		public struct ITimeTrigger : ITrigger
		{
			public const new Guid IID = .(0xb45747e0, 0xeba7, 0x4276, 0x9f, 0x29, 0x85, 0xc5, 0xbb, 0x30, 0x00, 0x06);
			
			public function HRESULT(ITimeTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
			public function HRESULT(ITimeTrigger *self, BSTR randomDelay) put_RandomDelay;
		}
		[CRepr]
		public struct IDailyTrigger : ITrigger
		{
			public const new Guid IID = .(0x126c5cd8, 0xb288, 0x41d5, 0x8d, 0xbf, 0xe4, 0x91, 0x44, 0x6a, 0xdc, 0x5c);
			
			public function HRESULT(IDailyTrigger *self, int16* pDays) get_DaysInterval;
			public function HRESULT(IDailyTrigger *self, int16 days) put_DaysInterval;
			public function HRESULT(IDailyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
			public function HRESULT(IDailyTrigger *self, BSTR randomDelay) put_RandomDelay;
		}
		[CRepr]
		public struct IWeeklyTrigger : ITrigger
		{
			public const new Guid IID = .(0x5038fc98, 0x82ff, 0x436d, 0x87, 0x28, 0xa5, 0x12, 0xa5, 0x7c, 0x9d, 0xc1);
			
			public function HRESULT(IWeeklyTrigger *self, int16* pDays) get_DaysOfWeek;
			public function HRESULT(IWeeklyTrigger *self, int16 days) put_DaysOfWeek;
			public function HRESULT(IWeeklyTrigger *self, int16* pWeeks) get_WeeksInterval;
			public function HRESULT(IWeeklyTrigger *self, int16 weeks) put_WeeksInterval;
			public function HRESULT(IWeeklyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
			public function HRESULT(IWeeklyTrigger *self, BSTR randomDelay) put_RandomDelay;
		}
		[CRepr]
		public struct IMonthlyTrigger : ITrigger
		{
			public const new Guid IID = .(0x97c45ef1, 0x6b02, 0x4a1a, 0x9c, 0x0e, 0x1e, 0xbf, 0xba, 0x15, 0x00, 0xac);
			
			public function HRESULT(IMonthlyTrigger *self, int32* pDays) get_DaysOfMonth;
			public function HRESULT(IMonthlyTrigger *self, int32 days) put_DaysOfMonth;
			public function HRESULT(IMonthlyTrigger *self, int16* pMonths) get_MonthsOfYear;
			public function HRESULT(IMonthlyTrigger *self, int16 months) put_MonthsOfYear;
			public function HRESULT(IMonthlyTrigger *self, int16* pLastDay) get_RunOnLastDayOfMonth;
			public function HRESULT(IMonthlyTrigger *self, int16 lastDay) put_RunOnLastDayOfMonth;
			public function HRESULT(IMonthlyTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
			public function HRESULT(IMonthlyTrigger *self, BSTR randomDelay) put_RandomDelay;
		}
		[CRepr]
		public struct IMonthlyDOWTrigger : ITrigger
		{
			public const new Guid IID = .(0x77d025a3, 0x90fa, 0x43aa, 0xb5, 0x2e, 0xcd, 0xa5, 0x49, 0x9b, 0x94, 0x6a);
			
			public function HRESULT(IMonthlyDOWTrigger *self, int16* pDays) get_DaysOfWeek;
			public function HRESULT(IMonthlyDOWTrigger *self, int16 days) put_DaysOfWeek;
			public function HRESULT(IMonthlyDOWTrigger *self, int16* pWeeks) get_WeeksOfMonth;
			public function HRESULT(IMonthlyDOWTrigger *self, int16 weeks) put_WeeksOfMonth;
			public function HRESULT(IMonthlyDOWTrigger *self, int16* pMonths) get_MonthsOfYear;
			public function HRESULT(IMonthlyDOWTrigger *self, int16 months) put_MonthsOfYear;
			public function HRESULT(IMonthlyDOWTrigger *self, int16* pLastWeek) get_RunOnLastWeekOfMonth;
			public function HRESULT(IMonthlyDOWTrigger *self, int16 lastWeek) put_RunOnLastWeekOfMonth;
			public function HRESULT(IMonthlyDOWTrigger *self, BSTR* pRandomDelay) get_RandomDelay;
			public function HRESULT(IMonthlyDOWTrigger *self, BSTR randomDelay) put_RandomDelay;
		}
		[CRepr]
		public struct IBootTrigger : ITrigger
		{
			public const new Guid IID = .(0x2a9c35da, 0xd357, 0x41f4, 0xbb, 0xc1, 0x20, 0x7a, 0xc1, 0xb1, 0xf3, 0xcb);
			
			public function HRESULT(IBootTrigger *self, BSTR* pDelay) get_Delay;
			public function HRESULT(IBootTrigger *self, BSTR delay) put_Delay;
		}
		[CRepr]
		public struct IRegistrationTrigger : ITrigger
		{
			public const new Guid IID = .(0x4c8fec3a, 0xc218, 0x4e0c, 0xb2, 0x3d, 0x62, 0x90, 0x24, 0xdb, 0x91, 0xa2);
			
			public function HRESULT(IRegistrationTrigger *self, BSTR* pDelay) get_Delay;
			public function HRESULT(IRegistrationTrigger *self, BSTR delay) put_Delay;
		}
		[CRepr]
		public struct IAction : IDispatch
		{
			public const new Guid IID = .(0xbae54997, 0x48b1, 0x4cbe, 0x99, 0x65, 0xd6, 0xbe, 0x26, 0x3e, 0xbe, 0xa4);
			
			public function HRESULT(IAction *self, BSTR* pId) get_Id;
			public function HRESULT(IAction *self, BSTR Id) put_Id;
			public function HRESULT(IAction *self, TASK_ACTION_TYPE* pType) get_Type;
		}
		[CRepr]
		public struct IExecAction : IAction
		{
			public const new Guid IID = .(0x4c3d624d, 0xfd6b, 0x49a3, 0xb9, 0xb7, 0x09, 0xcb, 0x3c, 0xd3, 0xf0, 0x47);
			
			public function HRESULT(IExecAction *self, BSTR* pPath) get_Path;
			public function HRESULT(IExecAction *self, BSTR path) put_Path;
			public function HRESULT(IExecAction *self, BSTR* pArgument) get_Arguments;
			public function HRESULT(IExecAction *self, BSTR argument) put_Arguments;
			public function HRESULT(IExecAction *self, BSTR* pWorkingDirectory) get_WorkingDirectory;
			public function HRESULT(IExecAction *self, BSTR workingDirectory) put_WorkingDirectory;
		}
		[CRepr]
		public struct IExecAction2 : IExecAction
		{
			public const new Guid IID = .(0xf2a82542, 0xbda5, 0x4e6b, 0x91, 0x43, 0xe2, 0xbf, 0x4f, 0x89, 0x87, 0xb6);
			
			public function HRESULT(IExecAction2 *self, int16* pHideAppWindow) get_HideAppWindow;
			public function HRESULT(IExecAction2 *self, int16 hideAppWindow) put_HideAppWindow;
		}
		[CRepr]
		public struct IShowMessageAction : IAction
		{
			public const new Guid IID = .(0x505e9e68, 0xaf89, 0x46b8, 0xa3, 0x0f, 0x56, 0x16, 0x2a, 0x83, 0xd5, 0x37);
			
			public function HRESULT(IShowMessageAction *self, BSTR* pTitle) get_Title;
			public function HRESULT(IShowMessageAction *self, BSTR title) put_Title;
			public function HRESULT(IShowMessageAction *self, BSTR* pMessageBody) get_MessageBody;
			public function HRESULT(IShowMessageAction *self, BSTR messageBody) put_MessageBody;
		}
		[CRepr]
		public struct IComHandlerAction : IAction
		{
			public const new Guid IID = .(0x6d2fd252, 0x75c5, 0x4f66, 0x90, 0xba, 0x2a, 0x7d, 0x8c, 0xc3, 0x03, 0x9f);
			
			public function HRESULT(IComHandlerAction *self, BSTR* pClsid) get_ClassId;
			public function HRESULT(IComHandlerAction *self, BSTR clsid) put_ClassId;
			public function HRESULT(IComHandlerAction *self, BSTR* pData) get_Data;
			public function HRESULT(IComHandlerAction *self, BSTR data) put_Data;
		}
		[CRepr]
		public struct IEmailAction : IAction
		{
			public const new Guid IID = .(0x10f62c64, 0x7e16, 0x4314, 0xa0, 0xc2, 0x0c, 0x36, 0x83, 0xf9, 0x9d, 0x40);
			
			public function HRESULT(IEmailAction *self, BSTR* pServer) get_Server;
			public function HRESULT(IEmailAction *self, BSTR server) put_Server;
			public function HRESULT(IEmailAction *self, BSTR* pSubject) get_Subject;
			public function HRESULT(IEmailAction *self, BSTR subject) put_Subject;
			public function HRESULT(IEmailAction *self, BSTR* pTo) get_To;
			public function HRESULT(IEmailAction *self, BSTR to) put_To;
			public function HRESULT(IEmailAction *self, BSTR* pCc) get_Cc;
			public function HRESULT(IEmailAction *self, BSTR cc) put_Cc;
			public function HRESULT(IEmailAction *self, BSTR* pBcc) get_Bcc;
			public function HRESULT(IEmailAction *self, BSTR bcc) put_Bcc;
			public function HRESULT(IEmailAction *self, BSTR* pReplyTo) get_ReplyTo;
			public function HRESULT(IEmailAction *self, BSTR replyTo) put_ReplyTo;
			public function HRESULT(IEmailAction *self, BSTR* pFrom) get_From;
			public function HRESULT(IEmailAction *self, BSTR from) put_From;
			public function HRESULT(IEmailAction *self, ITaskNamedValueCollection** ppHeaderFields) get_HeaderFields;
			public function HRESULT(IEmailAction *self, ITaskNamedValueCollection* pHeaderFields) put_HeaderFields;
			public function HRESULT(IEmailAction *self, BSTR* pBody) get_Body;
			public function HRESULT(IEmailAction *self, BSTR body) put_Body;
			public function HRESULT(IEmailAction *self, SAFEARRAY** pAttachements) get_Attachments;
			public function HRESULT(IEmailAction *self, SAFEARRAY* pAttachements) put_Attachments;
		}
		[CRepr]
		public struct ITriggerCollection : IDispatch
		{
			public const new Guid IID = .(0x85df5081, 0x1b24, 0x4f32, 0x87, 0x8a, 0xd9, 0xd1, 0x4d, 0xf4, 0xcb, 0x77);
			
			public function HRESULT(ITriggerCollection *self, int32* pCount) get_Count;
			public function HRESULT(ITriggerCollection *self, int32 index, ITrigger** ppTrigger) get_Item;
			public function HRESULT(ITriggerCollection *self, IUnknown** ppEnum) get__NewEnum;
			public function HRESULT(ITriggerCollection *self, TASK_TRIGGER_TYPE2 type, ITrigger** ppTrigger) Create;
			public function HRESULT(ITriggerCollection *self, VARIANT index) Remove;
			public function HRESULT(ITriggerCollection *self) Clear;
		}
		[CRepr]
		public struct IActionCollection : IDispatch
		{
			public const new Guid IID = .(0x02820e19, 0x7b98, 0x4ed2, 0xb2, 0xe8, 0xfd, 0xcc, 0xce, 0xff, 0x61, 0x9b);
			
			public function HRESULT(IActionCollection *self, int32* pCount) get_Count;
			public function HRESULT(IActionCollection *self, int32 index, IAction** ppAction) get_Item;
			public function HRESULT(IActionCollection *self, IUnknown** ppEnum) get__NewEnum;
			public function HRESULT(IActionCollection *self, BSTR* pText) get_XmlText;
			public function HRESULT(IActionCollection *self, BSTR text) put_XmlText;
			public function HRESULT(IActionCollection *self, TASK_ACTION_TYPE type, IAction** ppAction) Create;
			public function HRESULT(IActionCollection *self, VARIANT index) Remove;
			public function HRESULT(IActionCollection *self) Clear;
			public function HRESULT(IActionCollection *self, BSTR* pContext) get_Context;
			public function HRESULT(IActionCollection *self, BSTR context) put_Context;
		}
		[CRepr]
		public struct IPrincipal : IDispatch
		{
			public const new Guid IID = .(0xd98d51e5, 0xc9b4, 0x496a, 0xa9, 0xc1, 0x18, 0x98, 0x02, 0x61, 0xcf, 0x0f);
			
			public function HRESULT(IPrincipal *self, BSTR* pId) get_Id;
			public function HRESULT(IPrincipal *self, BSTR Id) put_Id;
			public function HRESULT(IPrincipal *self, BSTR* pName) get_DisplayName;
			public function HRESULT(IPrincipal *self, BSTR name) put_DisplayName;
			public function HRESULT(IPrincipal *self, BSTR* pUser) get_UserId;
			public function HRESULT(IPrincipal *self, BSTR user) put_UserId;
			public function HRESULT(IPrincipal *self, TASK_LOGON_TYPE* pLogon) get_LogonType;
			public function HRESULT(IPrincipal *self, TASK_LOGON_TYPE logon) put_LogonType;
			public function HRESULT(IPrincipal *self, BSTR* pGroup) get_GroupId;
			public function HRESULT(IPrincipal *self, BSTR group) put_GroupId;
			public function HRESULT(IPrincipal *self, TASK_RUNLEVEL_TYPE* pRunLevel) get_RunLevel;
			public function HRESULT(IPrincipal *self, TASK_RUNLEVEL_TYPE runLevel) put_RunLevel;
		}
		[CRepr]
		public struct IPrincipal2 : IDispatch
		{
			public const new Guid IID = .(0x248919ae, 0xe345, 0x4a6d, 0x8a, 0xeb, 0xe0, 0xd3, 0x16, 0x5c, 0x90, 0x4e);
			
			public function HRESULT(IPrincipal2 *self, TASK_PROCESSTOKENSID_TYPE* pProcessTokenSidType) get_ProcessTokenSidType;
			public function HRESULT(IPrincipal2 *self, TASK_PROCESSTOKENSID_TYPE processTokenSidType) put_ProcessTokenSidType;
			public function HRESULT(IPrincipal2 *self, int32* pCount) get_RequiredPrivilegeCount;
			public function HRESULT(IPrincipal2 *self, int32 index, BSTR* pPrivilege) get_RequiredPrivilege;
			public function HRESULT(IPrincipal2 *self, BSTR privilege) AddRequiredPrivilege;
		}
		[CRepr]
		public struct IRegistrationInfo : IDispatch
		{
			public const new Guid IID = .(0x416d8b73, 0xcb41, 0x4ea1, 0x80, 0x5c, 0x9b, 0xe9, 0xa5, 0xac, 0x4a, 0x74);
			
			public function HRESULT(IRegistrationInfo *self, BSTR* pDescription) get_Description;
			public function HRESULT(IRegistrationInfo *self, BSTR description) put_Description;
			public function HRESULT(IRegistrationInfo *self, BSTR* pAuthor) get_Author;
			public function HRESULT(IRegistrationInfo *self, BSTR author) put_Author;
			public function HRESULT(IRegistrationInfo *self, BSTR* pVersion) get_Version;
			public function HRESULT(IRegistrationInfo *self, BSTR version) put_Version;
			public function HRESULT(IRegistrationInfo *self, BSTR* pDate) get_Date;
			public function HRESULT(IRegistrationInfo *self, BSTR date) put_Date;
			public function HRESULT(IRegistrationInfo *self, BSTR* pDocumentation) get_Documentation;
			public function HRESULT(IRegistrationInfo *self, BSTR documentation) put_Documentation;
			public function HRESULT(IRegistrationInfo *self, BSTR* pText) get_XmlText;
			public function HRESULT(IRegistrationInfo *self, BSTR text) put_XmlText;
			public function HRESULT(IRegistrationInfo *self, BSTR* pUri) get_URI;
			public function HRESULT(IRegistrationInfo *self, BSTR uri) put_URI;
			public function HRESULT(IRegistrationInfo *self, VARIANT* pSddl) get_SecurityDescriptor;
			public function HRESULT(IRegistrationInfo *self, VARIANT sddl) put_SecurityDescriptor;
			public function HRESULT(IRegistrationInfo *self, BSTR* pSource) get_Source;
			public function HRESULT(IRegistrationInfo *self, BSTR source) put_Source;
		}
		[CRepr]
		public struct ITaskDefinition : IDispatch
		{
			public const new Guid IID = .(0xf5bc8fc5, 0x536d, 0x4f77, 0xb8, 0x52, 0xfb, 0xc1, 0x35, 0x6f, 0xde, 0xb6);
			
			public function HRESULT(ITaskDefinition *self, IRegistrationInfo** ppRegistrationInfo) get_RegistrationInfo;
			public function HRESULT(ITaskDefinition *self, IRegistrationInfo* pRegistrationInfo) put_RegistrationInfo;
			public function HRESULT(ITaskDefinition *self, ITriggerCollection** ppTriggers) get_Triggers;
			public function HRESULT(ITaskDefinition *self, ITriggerCollection* pTriggers) put_Triggers;
			public function HRESULT(ITaskDefinition *self, ITaskSettings** ppSettings) get_Settings;
			public function HRESULT(ITaskDefinition *self, ITaskSettings* pSettings) put_Settings;
			public function HRESULT(ITaskDefinition *self, BSTR* pData) get_Data;
			public function HRESULT(ITaskDefinition *self, BSTR data) put_Data;
			public function HRESULT(ITaskDefinition *self, IPrincipal** ppPrincipal) get_Principal;
			public function HRESULT(ITaskDefinition *self, IPrincipal* pPrincipal) put_Principal;
			public function HRESULT(ITaskDefinition *self, IActionCollection** ppActions) get_Actions;
			public function HRESULT(ITaskDefinition *self, IActionCollection* pActions) put_Actions;
			public function HRESULT(ITaskDefinition *self, BSTR* pXml) get_XmlText;
			public function HRESULT(ITaskDefinition *self, BSTR xml) put_XmlText;
		}
		[CRepr]
		public struct ITaskSettings : IDispatch
		{
			public const new Guid IID = .(0x8fd4711d, 0x2d02, 0x4c8c, 0x87, 0xe3, 0xef, 0xf6, 0x99, 0xde, 0x12, 0x7e);
			
			public function HRESULT(ITaskSettings *self, int16* pAllowDemandStart) get_AllowDemandStart;
			public function HRESULT(ITaskSettings *self, int16 allowDemandStart) put_AllowDemandStart;
			public function HRESULT(ITaskSettings *self, BSTR* pRestartInterval) get_RestartInterval;
			public function HRESULT(ITaskSettings *self, BSTR restartInterval) put_RestartInterval;
			public function HRESULT(ITaskSettings *self, int32* pRestartCount) get_RestartCount;
			public function HRESULT(ITaskSettings *self, int32 restartCount) put_RestartCount;
			public function HRESULT(ITaskSettings *self, TASK_INSTANCES_POLICY* pPolicy) get_MultipleInstances;
			public function HRESULT(ITaskSettings *self, TASK_INSTANCES_POLICY policy) put_MultipleInstances;
			public function HRESULT(ITaskSettings *self, int16* pStopIfOnBatteries) get_StopIfGoingOnBatteries;
			public function HRESULT(ITaskSettings *self, int16 stopIfOnBatteries) put_StopIfGoingOnBatteries;
			public function HRESULT(ITaskSettings *self, int16* pDisallowStart) get_DisallowStartIfOnBatteries;
			public function HRESULT(ITaskSettings *self, int16 disallowStart) put_DisallowStartIfOnBatteries;
			public function HRESULT(ITaskSettings *self, int16* pAllowHardTerminate) get_AllowHardTerminate;
			public function HRESULT(ITaskSettings *self, int16 allowHardTerminate) put_AllowHardTerminate;
			public function HRESULT(ITaskSettings *self, int16* pStartWhenAvailable) get_StartWhenAvailable;
			public function HRESULT(ITaskSettings *self, int16 startWhenAvailable) put_StartWhenAvailable;
			public function HRESULT(ITaskSettings *self, BSTR* pText) get_XmlText;
			public function HRESULT(ITaskSettings *self, BSTR text) put_XmlText;
			public function HRESULT(ITaskSettings *self, int16* pRunOnlyIfNetworkAvailable) get_RunOnlyIfNetworkAvailable;
			public function HRESULT(ITaskSettings *self, int16 runOnlyIfNetworkAvailable) put_RunOnlyIfNetworkAvailable;
			public function HRESULT(ITaskSettings *self, BSTR* pExecutionTimeLimit) get_ExecutionTimeLimit;
			public function HRESULT(ITaskSettings *self, BSTR executionTimeLimit) put_ExecutionTimeLimit;
			public function HRESULT(ITaskSettings *self, int16* pEnabled) get_Enabled;
			public function HRESULT(ITaskSettings *self, int16 enabled) put_Enabled;
			public function HRESULT(ITaskSettings *self, BSTR* pExpirationDelay) get_DeleteExpiredTaskAfter;
			public function HRESULT(ITaskSettings *self, BSTR expirationDelay) put_DeleteExpiredTaskAfter;
			public function HRESULT(ITaskSettings *self, int32* pPriority) get_Priority;
			public function HRESULT(ITaskSettings *self, int32 priority) put_Priority;
			public function HRESULT(ITaskSettings *self, TASK_COMPATIBILITY* pCompatLevel) get_Compatibility;
			public function HRESULT(ITaskSettings *self, TASK_COMPATIBILITY compatLevel) put_Compatibility;
			public function HRESULT(ITaskSettings *self, int16* pHidden) get_Hidden;
			public function HRESULT(ITaskSettings *self, int16 hidden) put_Hidden;
			public function HRESULT(ITaskSettings *self, IIdleSettings** ppIdleSettings) get_IdleSettings;
			public function HRESULT(ITaskSettings *self, IIdleSettings* pIdleSettings) put_IdleSettings;
			public function HRESULT(ITaskSettings *self, int16* pRunOnlyIfIdle) get_RunOnlyIfIdle;
			public function HRESULT(ITaskSettings *self, int16 runOnlyIfIdle) put_RunOnlyIfIdle;
			public function HRESULT(ITaskSettings *self, int16* pWake) get_WakeToRun;
			public function HRESULT(ITaskSettings *self, int16 wake) put_WakeToRun;
			public function HRESULT(ITaskSettings *self, INetworkSettings** ppNetworkSettings) get_NetworkSettings;
			public function HRESULT(ITaskSettings *self, INetworkSettings* pNetworkSettings) put_NetworkSettings;
		}
		[CRepr]
		public struct ITaskSettings2 : IDispatch
		{
			public const new Guid IID = .(0x2c05c3f0, 0x6eed, 0x4c05, 0xa1, 0x5f, 0xed, 0x7d, 0x7a, 0x98, 0xa3, 0x69);
			
			public function HRESULT(ITaskSettings2 *self, int16* pDisallowStart) get_DisallowStartOnRemoteAppSession;
			public function HRESULT(ITaskSettings2 *self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
			public function HRESULT(ITaskSettings2 *self, int16* pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
			public function HRESULT(ITaskSettings2 *self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
		}
		[CRepr]
		public struct ITaskSettings3 : ITaskSettings
		{
			public const new Guid IID = .(0x0ad9d0d7, 0x0c7f, 0x4ebb, 0x9a, 0x5f, 0xd1, 0xc6, 0x48, 0xdc, 0xa5, 0x28);
			
			public function HRESULT(ITaskSettings3 *self, int16* pDisallowStart) get_DisallowStartOnRemoteAppSession;
			public function HRESULT(ITaskSettings3 *self, int16 disallowStart) put_DisallowStartOnRemoteAppSession;
			public function HRESULT(ITaskSettings3 *self, int16* pUseUnifiedEngine) get_UseUnifiedSchedulingEngine;
			public function HRESULT(ITaskSettings3 *self, int16 useUnifiedEngine) put_UseUnifiedSchedulingEngine;
			public function HRESULT(ITaskSettings3 *self, IMaintenanceSettings** ppMaintenanceSettings) get_MaintenanceSettings;
			public function HRESULT(ITaskSettings3 *self, IMaintenanceSettings* pMaintenanceSettings) put_MaintenanceSettings;
			public function HRESULT(ITaskSettings3 *self, IMaintenanceSettings** ppMaintenanceSettings) CreateMaintenanceSettings;
			public function HRESULT(ITaskSettings3 *self, int16* pVolatile) get_Volatile;
			public function HRESULT(ITaskSettings3 *self, int16 Volatile) put_Volatile;
		}
		[CRepr]
		public struct IMaintenanceSettings : IDispatch
		{
			public const new Guid IID = .(0xa6024fa8, 0x9652, 0x4adb, 0xa6, 0xbf, 0x5c, 0xfc, 0xd8, 0x77, 0xa7, 0xba);
			
			public function HRESULT(IMaintenanceSettings *self, BSTR value) put_Period;
			public function HRESULT(IMaintenanceSettings *self, BSTR* target) get_Period;
			public function HRESULT(IMaintenanceSettings *self, BSTR value) put_Deadline;
			public function HRESULT(IMaintenanceSettings *self, BSTR* target) get_Deadline;
			public function HRESULT(IMaintenanceSettings *self, int16 value) put_Exclusive;
			public function HRESULT(IMaintenanceSettings *self, int16* target) get_Exclusive;
		}
		[CRepr]
		public struct IRegisteredTaskCollection : IDispatch
		{
			public const new Guid IID = .(0x86627eb4, 0x42a7, 0x41e4, 0xa4, 0xd9, 0xac, 0x33, 0xa7, 0x2f, 0x2d, 0x52);
			
			public function HRESULT(IRegisteredTaskCollection *self, int32* pCount) get_Count;
			public function HRESULT(IRegisteredTaskCollection *self, VARIANT index, IRegisteredTask** ppRegisteredTask) get_Item;
			public function HRESULT(IRegisteredTaskCollection *self, IUnknown** ppEnum) get__NewEnum;
		}
		[CRepr]
		public struct ITaskFolder : IDispatch
		{
			public const new Guid IID = .(0x8cfac062, 0xa080, 0x4c15, 0x9a, 0x88, 0xaa, 0x7c, 0x2a, 0xf8, 0x0d, 0xfc);
			
			public function HRESULT(ITaskFolder *self, BSTR* pName) get_Name;
			public function HRESULT(ITaskFolder *self, BSTR* pPath) get_Path;
			public function HRESULT(ITaskFolder *self, BSTR path, ITaskFolder** ppFolder) GetFolder;
			public function HRESULT(ITaskFolder *self, int32 flags, ITaskFolderCollection** ppFolders) GetFolders;
			public function HRESULT(ITaskFolder *self, BSTR subFolderName, VARIANT sddl, ITaskFolder** ppFolder) CreateFolder;
			public function HRESULT(ITaskFolder *self, BSTR subFolderName, int32 flags) DeleteFolder;
			public function HRESULT(ITaskFolder *self, BSTR path, IRegisteredTask** ppTask) GetTask;
			public function HRESULT(ITaskFolder *self, int32 flags, IRegisteredTaskCollection** ppTasks) GetTasks;
			public function HRESULT(ITaskFolder *self, BSTR name, int32 flags) DeleteTask;
			public function HRESULT(ITaskFolder *self, BSTR path, BSTR xmlText, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTask;
			public function HRESULT(ITaskFolder *self, BSTR path, ITaskDefinition* pDefinition, int32 flags, VARIANT userId, VARIANT password, TASK_LOGON_TYPE logonType, VARIANT sddl, IRegisteredTask** ppTask) RegisterTaskDefinition;
			public function HRESULT(ITaskFolder *self, int32 securityInformation, BSTR* pSddl) GetSecurityDescriptor;
			public function HRESULT(ITaskFolder *self, BSTR sddl, int32 flags) SetSecurityDescriptor;
		}
		[CRepr]
		public struct IIdleSettings : IDispatch
		{
			public const new Guid IID = .(0x84594461, 0x0053, 0x4342, 0xa8, 0xfd, 0x08, 0x8f, 0xab, 0xf1, 0x1f, 0x32);
			
			public function HRESULT(IIdleSettings *self, BSTR* pDelay) get_IdleDuration;
			public function HRESULT(IIdleSettings *self, BSTR delay) put_IdleDuration;
			public function HRESULT(IIdleSettings *self, BSTR* pTimeout) get_WaitTimeout;
			public function HRESULT(IIdleSettings *self, BSTR timeout) put_WaitTimeout;
			public function HRESULT(IIdleSettings *self, int16* pStop) get_StopOnIdleEnd;
			public function HRESULT(IIdleSettings *self, int16 stop) put_StopOnIdleEnd;
			public function HRESULT(IIdleSettings *self, int16* pRestart) get_RestartOnIdle;
			public function HRESULT(IIdleSettings *self, int16 restart) put_RestartOnIdle;
		}
		[CRepr]
		public struct INetworkSettings : IDispatch
		{
			public const new Guid IID = .(0x9f7dea84, 0xc30b, 0x4245, 0x80, 0xb6, 0x00, 0xe9, 0xf6, 0x46, 0xf1, 0xb4);
			
			public function HRESULT(INetworkSettings *self, BSTR* pName) get_Name;
			public function HRESULT(INetworkSettings *self, BSTR name) put_Name;
			public function HRESULT(INetworkSettings *self, BSTR* pId) get_Id;
			public function HRESULT(INetworkSettings *self, BSTR id) put_Id;
		}
		[CRepr]
		public struct IRepetitionPattern : IDispatch
		{
			public const new Guid IID = .(0x7fb9acf1, 0x26be, 0x400e, 0x85, 0xb5, 0x29, 0x4b, 0x9c, 0x75, 0xdf, 0xd6);
			
			public function HRESULT(IRepetitionPattern *self, BSTR* pInterval) get_Interval;
			public function HRESULT(IRepetitionPattern *self, BSTR interval) put_Interval;
			public function HRESULT(IRepetitionPattern *self, BSTR* pDuration) get_Duration;
			public function HRESULT(IRepetitionPattern *self, BSTR duration) put_Duration;
			public function HRESULT(IRepetitionPattern *self, int16* pStop) get_StopAtDurationEnd;
			public function HRESULT(IRepetitionPattern *self, int16 stop) put_StopAtDurationEnd;
		}
		
	}
}
